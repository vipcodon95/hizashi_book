-- Hizashi LITE book SQL — Đại học Y4
-- curriculum_id = 800000024  (book_seq=24)
-- nguồn: books/24_dai_daigaku_year4/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000024, 'N3', 'markdown_book', 'Du học', 'Đại học Y4', 'Bộ sách Hizashi — Đại học Y4', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000001, 800000024, NULL, 'markdown_book', 'T1. Khởi động năm 4 — kế hoạch khoá luận & Hizashi v0.5', '# Sách sinh viên Đại học Osaka · T1. Khởi động năm 4 — kế hoạch khoá luận & Hizashi v0.5

> **Mục tiêu nhân vật:** Đại 24 tuổi, năm 4 ĐH Osaka, vợ Mai + con Hana 8 tháng. Học các mẫu hội thoại tiếng Nhật của sinh viên năm cuối CS: (1) phát biểu kế hoạch 卒論 trước sensei, (2) xin phép trình bày roadmap dự án, (3) nhờ senpai làm 共著 luận văn, (4) hỏi lại khi chưa rõ yêu cầu của sensei, (5) báo cáo tiến độ tuần với mentor, (6) keigo cảm ơn — 「ご指導のほどよろしくお願いいたします」.

---

## Bối cảnh

Tháng 4/2029. Đại bước vào năm 4 ĐH Osaka, ngành CS, lab Inoue. Khoá luận tốt nghiệp (卒論) đề tài "Adaptive learning cho người Việt học JLPT" — gắn với startup Hizashi (5 user → mục tiêu 50 user beta). Yamada-senpai lên M2 phụ trách review. Mai vừa tốt nghiệp Yamato School (N2), bắt đầu làm tour guide JP-VN qua Magical Trip ¥1500/h. Hana 8 tháng, biết đứng vịn ghế. Chương này tập trung các mẫu câu **trình bày kế hoạch nghiên cứu với sensei** và **xin senpai cộng tác**.

---

## Tình huống 1 — Inoue Lab · 10:00, lễ kickoff 4年生

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>4年生<rt>よねんせい</rt></ruby><ruby>4名<rt>よんめい</rt></ruby>を<ruby>歓迎<rt>かんげい</rt></ruby>します。<ruby>卒論<rt>そつろん</rt></ruby>が<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>始<rt>はじ</rt></ruby>まりますね。<br>*(Hôm nay chào mừng 4 bạn năm 4. Khoá luận chính thức khởi động.)* |
| Inoue | <ruby>提出<rt>ていしゅつ</rt></ruby>は<ruby>12月末<rt>じゅうにがつまつ</rt></ruby>、<ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>2月<rt>にがつ</rt></ruby>です。<ruby>3万字<rt>さんまんじ</rt></ruby>が<ruby>目安<rt>めやす</rt></ruby>です。<br>*(Nộp cuối tháng 12, bảo vệ tháng 2. Khoảng 3 vạn chữ.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>1年間<rt>いちねんかん</rt></ruby>ご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Thưa thầy, một năm tới mong thầy chỉ bảo tận tình ạ.)* |
| Inoue | こちらこそ。<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tôi cũng vậy. Cố gắng nhé.)* |

---

## Tình huống 2 — Inoue Lab · 10:15, xin phép trình bày roadmap Hizashi

| Vai | Lời thoại |
|---|---|
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、Hizashi v0.5へのスケール<ruby>計画<rt>けいかく</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Thưa thầy, em xin được trình bày kế hoạch mở rộng Hizashi lên v0.5 ạ?)* |
| Inoue | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>10分<rt>じゅっぷん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Vâng, mời em. Em trình bày trong 10 phút được không?)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng, em đã hiểu ạ.)* |

---

## Tình huống 3 — Inoue Lab · 10:20, presentation roadmap

*Đại trình chiếu slide trước Inoue và 8 thành viên lab.*

| Vai | Lời thoại |
|---|---|
| Đại | (slide 1) <ruby>本日<rt>ほんじつ</rt></ruby>は2029<ruby>年<rt>ねん</rt></ruby>のHizashiロードマップについて<ruby>発表<rt>はっぴょう</rt></ruby>します。<br>*(Hôm nay em trình bày roadmap Hizashi năm 2029.)* |
| Đại | (slide 2) <ruby>第2四半期<rt>だいにしはんき</rt></ruby>はv0.5、N5・N4コース、ベータユーザー<ruby>50名<rt>ごじゅうめい</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>とします。<br>*(Quý 2 v0.5, course N5 N4, mục tiêu 50 beta users.)* |
| Đại | (slide 3) <ruby>第3四半期<rt>だいさんしはんき</rt></ruby>はv0.7、N3コースを<ruby>追加<rt>ついか</rt></ruby>し、ユーザー<ruby>200名<rt>にひゃくめい</rt></ruby>+IPSJ-NL<ruby>論文投稿<rt>ろんぶんとうこう</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しています。<br>*(Quý 3 v0.7, thêm course N3, 200 users và nộp paper IPSJ-NL.)* |
| Đại | (slide 4) <ruby>第4四半期<rt>だいよんしはんき</rt></ruby>はv0.9、<ruby>500名<rt>ごひゃくめい</rt></ruby>、フリーミアム<ruby>導入<rt>どうにゅう</rt></ruby>。<ruby>2030年第1四半期<rt>にせんさんじゅうねんだいいちしはんき</rt></ruby>でv1.0ローンチを<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Quý 4 v0.9, 500 users, freemium. Q1 2030 ra mắt v1.0.)* |
| Inoue | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>論文<rt>ろんぶん</rt></ruby>のパートをこう<ruby>整理<rt>せいり</rt></ruby>しましょう。<br>*(Tuyệt vời. Phần luận văn ta cấu trúc thế này nhé.)* |
| Inoue | <ruby>1<rt>いち</rt></ruby>、Adaptive learning algorithm の<ruby>理論的貢献<rt>りろんてきこうけん</rt></ruby>。<ruby>2<rt>に</rt></ruby>、VN-JP error pattern analysis のデータ<ruby>貢献<rt>こうけん</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>50名<rt>ごじゅうめい</rt></ruby>ユーザーでの<ruby>有効性検証<rt>ゆうこうせいけんしょう</rt></ruby>。<br>*(1, đóng góp lý thuyết. 2, đóng góp dữ liệu. 3, kiểm chứng hiệu quả trên 50 user.)* |
| Đại | はい、<ruby>三<rt>みっ</rt></ruby>つの<ruby>柱<rt>はしら</rt></ruby>として<ruby>整理<rt>せいり</rt></ruby>します。<br>*(Vâng, em sẽ cấu trúc theo 3 trụ chính.)* |

---

## Tình huống 4 — Inoue Lab · 10:40, hỏi lại khi chưa hiểu yêu cầu

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>論文<rt>ろんぶん</rt></ruby>の<ruby>構成<rt>こうせい</rt></ruby>はIMRADを<ruby>守<rt>まも</rt></ruby>ってください。<br>*(Luận văn theo cấu trúc IMRAD nhé.)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、IMRAD というのは、もう<ruby>一度<rt>いちど</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>していただけますか。<br>*(Em xin lỗi, IMRAD nghĩa là gì ạ, thầy giải thích lại giúp em được không?)* |
| Inoue | Introduction、Methods、Results、And、Discussionの<ruby>頭文字<rt>かしらもじ</rt></ruby>です。<ruby>国際標準<rt>こくさいひょうじゅん</rt></ruby>の<ruby>論文構成<rt>ろんぶんこうせい</rt></ruby>ですよ。<br>*(Là viết tắt của Introduction-Methods-Results-And-Discussion. Cấu trúc chuẩn quốc tế.)* |
| Đại | ありがとうございます。<ruby>理解<rt>りかい</rt></ruby>しました。abstractとconclusionも<ruby>含<rt>ふく</rt></ruby>めて<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Em cảm ơn, em hiểu rồi. Em sẽ chuẩn bị thêm abstract và conclusion.)* |
| Inoue | はい、それで<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Vâng, vậy là được.)* |

---

## Tình huống 5 — Lab kitchen · 12:30, nhờ Yamada-senpai làm 共著

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>大<rt>だい</rt></ruby>くん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>俺<rt>おれ</rt></ruby>もM2になったから、<ruby>君<rt>きみ</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>レビュー<ruby>担当<rt>たんとう</rt></ruby>するよ。<br>*(Đại à, vất vả rồi. Tớ lên M2 rồi nên sẽ phụ trách review luận văn của cậu.)* |
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>実<rt>じつ</rt></ruby>はお<ruby>願<rt>ねが</rt></ruby>がございまして。<br>*(Anh, em thực sự cảm ơn anh. Thật ra em có một lời nhờ ạ.)* |
| Yamada | なに？<br>*(Gì thế?)* |
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>のVN-JP error detectionモジュールをHizashiに<ruby>統合<rt>とうごう</rt></ruby>させていただきたいです。それで、IPSJ-NL<ruby>研究会<rt>けんきゅうかい</rt></ruby>に<ruby>共著<rt>きょうちょ</rt></ruby>で<ruby>投稿<rt>とうこう</rt></ruby>するというのはいかがでしょうか。<br>*(Em muốn tích hợp mô-đun error detection VN-JP của anh vào Hizashi. Mình cùng đứng tên đồng tác giả nộp IPSJ-NL có được không ạ?)* |
| Yamada | もちろん！<ruby>俺<rt>おれ</rt></ruby>のモジュールも<ruby>完成<rt>かんせい</rt></ruby>したばかりだし、<ruby>実証<rt>じっしょう</rt></ruby>データが<ruby>欲<rt>ほ</rt></ruby>しかったところだよ。<ruby>8月<rt>はちがつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>を<ruby>狙<rt>ねら</rt></ruby>おう。<br>*(Đương nhiên! Module tớ vừa xong, đang muốn có data thực chứng. Nhắm deadline tháng 8.)* |
| Đại | はい、<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>統合<rt>とうごう</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby>を<ruby>送<rt>おく</rt></ruby>ります。<br>*(Vâng, em cảm ơn anh. Tuần sau em gửi anh kế hoạch tích hợp.)* |

---

## Tình huống 6 — Lab · 13:00, báo cáo tuần với Yamada

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>大<rt>だい</rt></ruby>くん、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby>に<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>のミーティングしよう。<ruby>30分<rt>さんじゅっぷん</rt></ruby>でいい？<br>*(Thứ 6 hằng tuần 14h họp báo cáo tiến độ nhé. 30 phút được không?)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。フォーマットは<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>えばよろしいですか。<br>*(Vâng ạ. Em dùng template nào ạ?)* |
| Yamada | Notion でいいよ。<ruby>今週<rt>こんしゅう</rt></ruby>やったこと、<ruby>来週<rt>らいしゅう</rt></ruby>やること、<ruby>困<rt>こま</rt></ruby>っていること、の3<ruby>項目<rt>こうもく</rt></ruby>でOK。<br>*(Dùng Notion là được. 3 mục: tuần này, tuần sau, vướng mắc.)* |
| Đại | はい、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>木曜<rt>もくよう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>までに<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Vâng, mỗi tối thứ 5 em sẽ chia sẻ trước.)* |

---

## Tình huống 7 — Quán cafe gần lab · 15:00, đồng môn hỏi về startup

| Vai | Lời thoại |
|---|---|
| Tanaka (đồng môn 4年) | <ruby>大<rt>だい</rt></ruby>くん、<ruby>就活<rt>しゅうかつ</rt></ruby>どう？Hizashiも<ruby>続<rt>つづ</rt></ruby>けるの？<br>*(Đại ơi, xin việc thế nào? Vẫn làm Hizashi tiếp à?)* |
| Đại | はい、<ruby>就活<rt>しゅうかつ</rt></ruby>と<ruby>並行<rt>へいこう</rt></ruby>しています。<ruby>来月<rt>らいげつ</rt></ruby>、メルカリと サイバーエージェントの<ruby>面接<rt>めんせつ</rt></ruby>があります。<br>*(Có, em làm song song. Tháng sau có phỏng vấn Mercari và CyberAgent.)* |
| Tanaka | すごいな。<ruby>俺<rt>おれ</rt></ruby>はまだ<ruby>3社<rt>さんしゃ</rt></ruby>しかエントリーしてない。<br>*(Giỏi nhỉ. Tớ mới nộp 3 công ty thôi.)* |
| Đại | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>情報<rt>じょうほう</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>しようよ。<br>*(Cùng cố gắng nhé. Mình trao đổi thông tin với nhau.)* |

---

## Tình huống 8 — Senri-chuo apt · 19:00, Mai khoe tour đầu tiên

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Em vừa nhận tour đầu tiên qua app Magical Trip rồi này! |
| Đại | (VN) Tour đầu tiên! Mai ơi, kể anh nghe đi! Bao nhiêu khách? |
| Mai | (VN) Gia đình Mỹ 4 người, 4 tiếng, ¥6000 — ra ¥1500/giờ. Em dẫn đi Dotonbori với Osaka Castle. |
| Đại | (VN) Tuyệt vời em ạ! Tiếng Nhật trôi chảy, tiếng Anh ĐH Sư phạm — em làm tour guide là chuẩn rồi. |
| Mai | (VN) Em dùng lại note dẫn tour của anh hồi làm thêm sách 20 đấy. Anh ghi cẩn thận quá. |
| Đại | (VN) Ờ, mai dậy sớm anh đi cùng tập với em. Lúc tiếng Nhật bí thì anh đỡ. |

---

## Tình huống 9 — Senri-chuo · 19:30, Hana cột mốc 8 tháng

*Mai bế Hana vịn ghế cho con đứng. Đại ngồi bệt xuống sàn ngang tầm con.*

| Vai | Lời thoại |
|---|---|
| Hana | (bập bẹ) ba... ba... mẹ... |
| Đại | (VN, ôm con) Hana ơi! Ba đây! Ba đây! |
| Mai | (VN) Hôm nay con đứng vịn ghế gần 30 giây đấy. Anh xem này. |
| Hana | (đứng vịn ghế, lảo đảo) ma... ma... |
| Đại | (VN) Trời ơi, mới 8 tháng mà đã đứng được, sớm hơn trung bình đấy. |
| Mai | (VN) Sang năm là sinh nhật 1 tuổi rồi. Mình tổ chức tiệc nhỏ nhé. |
| Đại | (VN) Ừ. Đám sinh nhật 1 tuổi của con là phải có thôi. |

---

## Tình huống 10 — Lab Inoue · thứ 6, báo cáo tuần đầu tiên

*Đại mở Notion trên màn hình to. Yamada ngồi bên cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>第1週目<rt>だいいっしゅうめ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Anh, báo cáo tuần 1 ạ.)* |
| Đại | <ruby>今週<rt>こんしゅう</rt></ruby>やったこと：Hizashi v0.5の<ruby>仕様書<rt>しようしょ</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>、<ruby>論文<rt>ろんぶん</rt></ruby>のrelated work<ruby>調査<rt>ちょうさ</rt></ruby><ruby>10本<rt>じゅっぽん</rt></ruby>。<br>*(Tuần này em đã làm: spec v0.5, khảo sát 10 bài related work.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>やること：N4コースのコンテンツ<ruby>整理<rt>せいり</rt></ruby>、<ruby>先輩<rt>せんぱい</rt></ruby>のモジュールとの API <ruby>設計<rt>せっけい</rt></ruby>。<br>*(Tuần sau: chuẩn hoá content N4, thiết kế API với module của anh.)* |
| Đại | <ruby>困<rt>こま</rt></ruby>っていること：50<ruby>名<rt>めい</rt></ruby>のベータユーザーをどう<ruby>集<rt>あつ</rt></ruby>めるか<ruby>悩<rt>なや</rt></ruby>んでいます。<br>*(Vướng mắc: chưa biết tuyển 50 beta user thế nào.)* |
| Yamada | フェイスブックの<ruby>留学生<rt>りゅうがくせい</rt></ruby>グループはどう？<ruby>俺<rt>おれ</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>友達<rt>ともだち</rt></ruby>に<ruby>紹介<rt>しょうかい</rt></ruby>してもらおうか？<br>*(Group Facebook du học sinh thì sao? Hay tớ giới thiệu bạn người Việt cho?)* |
| Đại | あ、それはいいアイデアですね！<ruby>是非<rt>ぜひ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(À ý hay quá! Vâng nhờ anh giúp em ạ.)* |

---

## Tình huống 11 — Lab · 17:00, Inoue dặn cân bằng 就活 và 卒論

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>大<rt>だい</rt></ruby>くん、ちょっといいですか。<br>*(Đại em, gặp tôi chút được không?)* |
| Đại | はい、<ruby>先生<rt>せんせい</rt></ruby>、<ruby>何<rt>なに</rt></ruby>かございましたでしょうか。<br>*(Vâng thầy, có chuyện gì ạ?)* |
| Inoue | <ruby>就職活動<rt>しゅうしょくかつどう</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>ですが、<ruby>卒論<rt>そつろん</rt></ruby>とのバランスを<ruby>気<rt>き</rt></ruby>をつけてくださいね。<ruby>面接<rt>めんせつ</rt></ruby>で<ruby>週<rt>しゅう</rt></ruby>3<ruby>回<rt>かい</rt></ruby><ruby>休<rt>やす</rt></ruby>むのは<ruby>避<rt>さ</rt></ruby>けてください。<br>*(Xin việc cũng quan trọng nhưng phải cân bằng với khoá luận. Tránh nghỉ 3 buổi/tuần để đi phỏng vấn.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>面接<rt>めんせつ</rt></ruby>はなるべく<ruby>金曜<rt>きんよう</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>させ、<ruby>月<rt>げつ</rt></ruby>から<ruby>木<rt>もく</rt></ruby>はラボに<ruby>来<rt>き</rt></ruby>ます。<br>*(Em đã rõ. Em sẽ dồn phỏng vấn vào thứ 6, thứ 2-5 em đến lab.)* |
| Inoue | はい、それでお<ruby>願<rt>ねが</rt></ruby>いします。Hizashiも<ruby>卒論<rt>そつろん</rt></ruby>の<ruby>一部<rt>いちぶ</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えれば<ruby>無駄<rt>むだ</rt></ruby>になりませんからね。<br>*(Ừ, làm vậy đi. Coi Hizashi như một phần của khoá luận thì không lãng phí đâu.)* |
| Đại | はい、ありがとうございます。<br>*(Vâng em cảm ơn thầy.)* |

---

## Tình huống 12 — LINE với Mai · 22:00, cập nhật buổi đầu năm 4

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) Em ơi, hôm nay buổi kickoff năm 4 ổn. Inoue-sensei OK plan Hizashi v0.5. Yamada-senpai đồng ý 共著 paper IPSJ-NL. |
| Mai | (LINE) Tuyệt quá anh! Em mừng cho anh. Mai anh có ăn cơm nhà không? Em nấu canh chua cá lóc. |
| Đại | (LINE) Có chứ! 19h anh về. À, sensei nhắc anh cân bằng 就活 với 卒論, tránh nghỉ lab 3 buổi/tuần. |
| Mai | (LINE) Vâng anh, em cũng thấy thế. Phỏng vấn dồn cuối tuần là hợp lý. |
| Đại | (LINE) Ừ. Hana ngủ chưa em? |
| Mai | (LINE) Con vừa ngủ. Hôm nay đứng vịn ghế nhiều, mệt. Yêu anh ❤️ |

---

## Tình huống 13 — Cảnh tiếng Việt — gọi điện về VN cho bố mẹ chủ nhật

*Đại bật FaceTime lên TV phòng khách. Mai bế Hana ngồi bên cạnh.*

| Vai | Lời thoại |
|---|---|
| Bố Đại | (VN) Alô con! Tuần này thế nào? |
| Đại | (VN) Dạ con vừa khởi động năm 4 ạ. 卒論 — khoá luận tốt nghiệp — chính thức bắt đầu rồi. Hạn nộp cuối tháng 12. |
| Mẹ Đại | (VN) Trời, mới đó mà đã năm cuối rồi. Đề tài là gì hả con? |
| Đại | (VN) Dạ là Hizashi đó mẹ — cái app học JLPT con đang xây ấy. Sensei cho phép lấy luôn làm đề tài. |
| Bố Đại | (VN) Khéo ghê, vừa làm startup vừa làm khoá luận. Bên em Linh-Anh nghe nói cũng sắp cưới đúng không? |
| Đại | (VN) Vâng ạ, Linh-Anh tháng 7 cưới Sato bên Nagoya. Bố mẹ sang dự được chứ ạ? |
| Mẹ Đại | (VN) Sang chứ! Bố con xin nghỉ phép rồi. Hana đâu rồi cho bà xem nào. |
| Mai | (VN, bế Hana lại gần) Hana ơi, chào bà ngoại đi con. |
| Hana | (bập bẹ) ba... ba... |
| Bà | (VN) Trời ơi cục cưng! Mới 8 tháng đã đứng được. Sớm thế con! |
| Đại | (VN) Vâng, cuối tuần sau con với Mai cho Hana đi công viên Senri chơi. Con gửi clip cho bố mẹ. |
| Bố Đại | (VN) Ừ. Hai vợ chồng cố gắng nhé. Bố mẹ tự hào về các con. |

---

## Đọng lại chương 1

Đại bước vào năm 4 với buổi kickoff lab Inoue. Học cách **xin phép trình bày** bằng「発表させていただいてもよろしいでしょうか」, **trình kế hoạch** theo cấu trúc quý (第2四半期…), **hỏi lại khi chưa hiểu** bằng「〜というのは、もう一度説明していただけますか」, **nhờ senpai** làm 共著 với「共著で投稿するというのはいかがでしょうか」, **báo cáo tuần** theo 3 mục Notion (今週やったこと・来週やること・困っていること), và **keigo cảm ơn** sensei bằng「ご指導のほどよろしくお願いいたします」「承知いたしました」. Tối về nhà, Mai khoe tour đầu tiên ¥1500/h, Hana 8 tháng đứng vịn ghế bập bẹ "ba mẹ". Chủ nhật gọi FaceTime bố mẹ — gia đình 3 thế hệ Việt-Nhật đồng thuận.

> Từ vựng & mẫu câu chương này: 卒論・本格的に始まる・3万字・ご指導のほどよろしくお願いいたします・発表させていただいてもよろしいでしょうか・承知いたしました・第2四半期・有効性検証・IMRADというのは・もう一度説明していただけますか・共著で投稿する・進捗報告・今週やったこと・来週やること・困っていること・面接・卒論とのバランス・なるべく金曜に集中させる

## Bí quyết chương

- **「〜させていただいてもよろしいでしょうか」**: Cấu trúc keigo xin phép cao cấp — đặc trưng năm 4 trước sensei và đối tác doanh nghiệp.
- **「〜というのは？」**: Câu hỏi lại lịch sự khi gặp thuật ngữ chưa biết (IMRAD, JTC, RSU...) — phải dùng thường xuyên.
- **Cấu trúc báo cáo Notion 3 mục**: 今週やったこと・来週やること・困っていること — chuẩn lab + công ty Nhật.
- **Cân bằng 就活 và 卒論**: Sensei sẽ chủ động nhắc — dồn phỏng vấn vào thứ 6 là cách xử lý chuẩn.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 歓迎 | かんげい | HOAN NGHÊNH | chào đón |
| 卒論 | そつろん | TỐT LUẬN | luận văn tốt nghiệp |
| 本格的 | ほんかくてき | BẢN CÁCH ĐÍCH | chính thức, chính quy |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 発表 | はっぴょう | PHÁT BIỂU | trình bày, công bố |
| 目安 | めやす | MỤC AN | mức ước lượng |
| 指導 | しどう | CHỈ ĐẠO | chỉ dẫn, hướng dẫn |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 承知 | しょうち | THỪA TRI | rõ, đã hiểu |
| 第二四半期 | だいにしはんき | ĐỆ NHỊ TỨ BÁN KỲ | quý hai |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 追加 | ついか | TRUY GIA | thêm vào |
| 論文投稿 | ろんぶんとうこう | LUẬN VĂN ĐẦU CẢO | nộp luận văn |
| 導入 | どうにゅう | ĐẠO NHẬP | đưa vào, giới thiệu |
| 整理 | せいり | CHỈNH LÝ | sắp xếp |
| 理論的貢献 | りろんてきこうけん | LÝ LUẬN ĐÍCH CỐNG HIẾN | đóng góp lý thuyết |
| 有効性検証 | ゆうこうせいけんしょう | HỮU HIỆU TÍNH KIỂM CHỨNG | kiểm chứng hiệu quả |
| 構成 | こうせい | CẤU THÀNH | cấu trúc |
| 頭文字 | かしらもじ | ĐẦU VĂN TỰ | chữ cái đầu |
| 国際標準 | こくさいひょうじゅん | QUỐC TẾ TIÊU CHUẨN | chuẩn quốc tế |
| 理解 | りかい | LÝ GIẢI | hiểu |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 統合 | とうごう | THỐNG HỢP | tích hợp |
| 共著 | きょうちょ | CỘNG TRƯỚC | đồng tác giả |
| 研究会 | けんきゅうかい | NGHIÊN CỨU HỘI | hội nghiên cứu |
| 完成 | かんせい | HOÀN THÀNH | hoàn thành |
| 実証 | じっしょう | THỰC CHỨNG | thực chứng |
| 締切 | しめきり | ĐẾ THIẾT | hạn chót |
| 感謝 | かんしゃ | CẢM TẠ | cảm ơn |
| 計画書 | けいかくしょ | KẾ HOẠCH THƯ | bản kế hoạch |
| 進捗報告 | しんちょくほうこく | TIẾN CHẮP BÁO CÁO | báo cáo tiến độ |
| 項目 | こうもく | HẠNG MỤC | mục |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 就活 | しゅうかつ | TỰU HOẠT | xin việc |
| 並行 | へいこう | TỊNH HÀNH | song song |
| 面接 | めんせつ | DIỆN TIẾP | phỏng vấn |
| 情報交換 | じょうほうこうかん | THÔNG TIN GIAO HOÁN | trao đổi thông tin |
| 仕様書 | しようしょ | SĨ DẠNG THƯ | tài liệu spec |
| 調査 | ちょうさ | ĐIỀU TRA | khảo sát |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | du học sinh |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 就職活動 | しゅうしょくかつどう | TỰU CHỨC HOẠT ĐỘNG | hoạt động xin việc |
| 集中 | しゅうちゅう | TẬP TRUNG | tập trung |
| 一部 | いちぶ | NHẤT BỘ | một phần |
| 無駄 | むだ | VÔ ĐÀ | lãng phí |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000002, 800000024, NULL, 'markdown_book', 'T2. Mùa 内定 — Mercari, Cybozu, LY Corporation', '# Sách sinh viên Đại học Osaka · T2. Mùa 内定 — Mercari, Cybozu, LY Corporation

> **Mục tiêu nhân vật:** Đại 24 tuổi, năm 4 ĐH, tháng 5/2029. Học các mẫu hội thoại tiếng Nhật của giai đoạn 就活 cuối: (1) chào hỏi onsite tại HQ công ty (受付・ご案内), (2) trả lời câu hỏi văn hoá doanh nghiệp keigo cao, (3) nhận tin 内定 qua điện thoại — phép tắc trả lời HR, (4) từ chối khéo offer (お断り), (5) thương lượng địa điểm làm việc bằng「正直に申しますと」, (6) xin gia hạn thời hạn trả lời「ご回答の期限を延長していただけますでしょうか」.

---

## Bối cảnh

Tháng 5/2029. Đại kết thúc đợt onsite cuối với 4 công ty top: Mercari, Cybozu, LY Corporation (Fukuoka & Osaka), CyberAgent. Kết quả 5/2029: 3 公司 ra 内定 — Mercari ¥7M+RSU Tokyo, Cybozu ¥6.7M Osaka, LY Corp Fukuoka ¥6.5M. CyberAgent loại vòng cuối (culture fit). LY Corp Osaka còn chờ. Mai 24t đang đi tour guide ¥1500/h. Hana 9 tháng. Chương này tập trung các mẫu câu **keigo HR điện thoại** và **trả lời/từ chối offer chuyên nghiệp**.

---

## Tình huống 1 — Roppongi Hills tầng 21 Mercari · 9:00, lễ tân onsite

| Vai | Lời thoại |
|---|---|
| Đại | (cúi 30 độ trước quầy lễ tân) おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>9時<rt>くじ</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>の<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエンダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Chào buổi sáng. Em là Nguyễn Đại, ĐH Osaka, có phỏng vấn 9h hôm nay.)* |
| Lễ tân | グエン<ruby>様<rt>さま</rt></ruby>ですね。<ruby>承<rt>うけたまわ</rt></ruby>っております。こちらの<ruby>入館証<rt>にゅうかんしょう</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちください。エレベーターで21<ruby>階<rt>かい</rt></ruby>へお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Nguyễn ạ, chúng tôi đã nhận lịch. Mời anh nhận thẻ ra vào, lên thang máy tầng 21.)* |
| Đại | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em cảm ơn ạ. Em xin phép.)* |

---

## Tình huống 2 — Mercari phòng phỏng vấn · 9:15, chào CTO + intro 30 giây

| Vai | Lời thoại |
|---|---|
| CTO Mercari | グエンさん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。まず<ruby>自己紹介<rt>じこしょうかい</rt></ruby>を<ruby>1分<rt>いっぷん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cậu Nguyễn, xin chào. Đầu tiên giới thiệu bản thân trong 1 phút.)* |
| Đại | はい。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>4年<rt>よねん</rt></ruby>のグエンダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>井上研究室<rt>いのうえけんきゅうしつ</rt></ruby>でNLPと<ruby>教育工学<rt>きょういくこうがく</rt></ruby>を<ruby>研究<rt>けんきゅう</rt></ruby>しております。<br>*(Vâng. Em là Nguyễn Đại, ĐH Osaka, khoa CNTT năm 4, lab Inoue nghiên cứu NLP và công nghệ giáo dục.)* |
| Đại | <ruby>3年生<rt>さんねんせい</rt></ruby>の<ruby>夏<rt>なつ</rt></ruby>からサイボウズで<ruby>1年<rt>いちねん</rt></ruby>インターンを<ruby>経験<rt>けいけん</rt></ruby>し、<ruby>並行<rt>へいこう</rt></ruby>してJLPT<ruby>学習<rt>がくしゅう</rt></ruby>アプリ Hizashi を<ruby>開発<rt>かいはつ</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ hè năm 3 em intern Cybozu 1 năm, song song phát triển app học JLPT Hizashi. Hôm nay rất mong nhận chỉ giáo ạ.)* |
| CTO | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>3回<rt>さんかい</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>です。<ruby>技術<rt>ぎじゅつ</rt></ruby>、システムデザイン、カルチャーフィットの<ruby>順<rt>じゅん</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<br>*(Hôm nay 3 vòng: kỹ thuật, system design, culture fit.)* |
| Đại | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng, em đã rõ ạ.)* |

---

## Tình huống 3 — Mercari · 10:30, vòng culture fit — câu Hizashi

| Vai | Lời thoại |
|---|---|
| CTO | <ruby>素晴<rt>すば</rt></ruby>らしいテクニカル<ruby>面接<rt>めんせつ</rt></ruby>でした。<ruby>最後<rt>さいご</rt></ruby>に<ruby>1つ<rt>ひとつ</rt></ruby>。Hizashiの<ruby>開発<rt>かいはつ</rt></ruby>は<ruby>本気<rt>ほんき</rt></ruby>でやっているんですか。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vòng kỹ thuật tốt. Câu cuối: cậu làm Hizashi nghiêm túc thật à? Trả lời thành thật.)* |
| Đại | はい。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>しますと、<ruby>卒研<rt>そつけん</rt></ruby>のテーマでもあり、<ruby>2030年以降<rt>にせんさんじゅうねんいこう</rt></ruby>に<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng. Nói thật, đây cũng là đề tài khoá luận, sau 2030 em sẽ quyết định nghiêm túc.)* |
| Đại | <ruby>現時点<rt>げんじてん</rt></ruby>では、メルカリで<ruby>働<rt>はたら</rt></ruby>きながらも<ruby>個人開発<rt>こじんかいはつ</rt></ruby>として<ruby>続<rt>つづ</rt></ruby>けたいと<ruby>考<rt>かんが</rt></ruby>えております。<ruby>副業<rt>ふくぎょう</rt></ruby><ruby>規定<rt>きてい</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか。<br>*(Hiện tại em muốn vừa làm Mercari vừa tiếp tục Hizashi như cá nhân. Em được hỏi về quy định 副業 không ạ?)* |
| CTO | もちろんです。メルカリは<ruby>副業<rt>ふくぎょう</rt></ruby>OKです。<ruby>事前申請<rt>じぜんしんせい</rt></ruby>と<ruby>競合<rt>きょうごう</rt></ruby><ruby>避止<rt>ひし</rt></ruby><ruby>条項<rt>じょうこう</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけていただければ<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Đương nhiên. Mercari cho phép 副業. Chỉ cần đăng ký trước và tránh xung đột với mảng kinh doanh của Mercari là OK.)* |
| Đại | ありがとうございます。<ruby>誠実<rt>せいじつ</rt></ruby>なご<ruby>回答<rt>かいとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Em cảm ơn về câu trả lời thẳng thắn của anh ạ.)* |

---

## Tình huống 4 — Senri-chuo apt · 12/4 14:00, điện thoại HR Mercari báo 内定

*Đại đang ở nhà, điện thoại reo. Số lạ Tokyo.*

| Vai | Lời thoại |
|---|---|
| Đại | はい、グエンです。<br>*(Vâng, Nguyễn nghe ạ.)* |
| HR Mercari | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。メルカリ<ruby>採用<rt>さいよう</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Anh Nguyễn xin chào, em là Tanaka phụ trách tuyển dụng Mercari.)* |
| HR | このたびは<ruby>内定<rt>ないてい</rt></ruby>のご<ruby>連絡<rt>れんらく</rt></ruby>です。おめでとうございます！<br>*(Em xin thông báo anh đã trúng tuyển 内定. Xin chúc mừng anh!)* |
| Đại | ありがとうございます！<ruby>大変<rt>たいへん</rt></ruby><ruby>光栄<rt>こうえい</rt></ruby>に<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em xin cảm ơn ạ! Em vô cùng vinh dự.)* |
| HR | <ruby>初任給<rt>しょにんきゅう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>45万円<rt>よんじゅうごまんえん</rt></ruby>、<ruby>賞与<rt>しょうよ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby><ruby>5ヶ月分<rt>ごかげつぶん</rt></ruby>、<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>700万円<rt>ななひゃくまんえん</rt></ruby>に RSU $20,000 を<ruby>加<rt>くわ</rt></ruby>えます。<br>*(Lương khởi điểm ¥450k/tháng, thưởng 5 tháng, năm ¥7M kèm RSU $20k.)* |
| HR | <ruby>勤務地<rt>きんむち</rt></ruby>は<ruby>東京<rt>とうきょう</rt></ruby>オフィス、<ruby>出社<rt>しゅっしゃ</rt></ruby><ruby>3日<rt>みっか</rt></ruby>+リモート<ruby>2日<rt>ふつか</rt></ruby>のハイブリッドです。ご<ruby>回答<rt>かいとう</rt></ruby>は<ruby>3ヶ月以内<rt>さんかげついない</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Văn phòng Tokyo, hybrid 3 lên 2 remote. Mong anh trả lời trong 3 tháng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>書面<rt>しょめん</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>した<ruby>上<rt>うえ</rt></ruby>で、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させていただければと<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em đã rõ. Em xin được xem văn bản chính thức và bàn với gia đình ạ.)* |
| HR | はい、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にメールでお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Vâng, trong hôm nay em sẽ email cho anh.)* |
| Đại | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em cảm ơn ạ. Em xin phép.)* |

---

## Tình huống 5 — LY Corp Fukuoka onsite · 18/4, vòng culture fit

| Vai | Lời thoại |
|---|---|
| TLP LY Corp | グエンさん、<ruby>福岡<rt>ふくおか</rt></ruby>オフィスは<ruby>開発者<rt>かいはつしゃ</rt></ruby><ruby>30名以上<rt>さんじゅうめいいじょう</rt></ruby>、<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>650万円<rt>ろっぴゃくごじゅうまんえん</rt></ruby>+<ruby>引越支援<rt>ひっこししえん</rt></ruby><ruby>50万円<rt>ごじゅうまんえん</rt></ruby>です。<ruby>福岡<rt>ふくおか</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>でよろしいでしょうか。<br>*(Văn phòng Fukuoka 30+ kỹ sư, ¥6.5M + hỗ trợ chuyển nhà ¥500k. Anh đồng ý làm Fukuoka chứ?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>しますと、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>で<ruby>大阪<rt>おおさか</rt></ruby>を<ruby>第一<rt>だいいち</rt></ruby><ruby>希望<rt>きぼう</rt></ruby>としております。<br>*(Em xin nói thật, vì gia đình em đặt Osaka là nguyện vọng số 1.)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>がツアーガイドの<ruby>仕事<rt>しごと</rt></ruby>を<ruby>大阪<rt>おおさか</rt></ruby>で<ruby>始<rt>はじ</rt></ruby>めたばかりで、<ruby>娘<rt>むすめ</rt></ruby>は<ruby>9ヶ月<rt>きゅうかげつ</rt></ruby>です。<ruby>福岡<rt>ふくおか</rt></ruby>へは<ruby>新幹線<rt>しんかんせん</rt></ruby>で<ruby>3時間<rt>さんじかん</rt></ruby>かかりますので。<br>*(Vợ em vừa bắt đầu tour guide ở Osaka, con gái 9 tháng. Fukuoka đi shinkansen mất 3 tiếng.)* |
| TLP | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>福岡<rt>ふくおか</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けていただければ<ruby>内定<rt>ないてい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<ruby>大阪<rt>おおさか</rt></ruby>オフィスは<ruby>別<rt>べつ</rt></ruby>の<ruby>選考<rt>せんこう</rt></ruby><ruby>枠<rt>わく</rt></ruby>になりますが、ご<ruby>希望<rt>きぼう</rt></ruby>でしたら<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>選考<rt>せんこう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Hiểu rồi. Nếu anh nhận Fukuoka, chúng tôi ra 内定. Osaka thì xét tuyển khung riêng, nếu anh muốn vẫn tiếp tục được.)* |
| Đại | <ruby>大阪<rt>おおさか</rt></ruby>オフィスの<ruby>選考<rt>せんこう</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin được tiếp tục xét tuyển văn phòng Osaka ạ.)* |

---

## Tình huống 6 — Email box · 20/4, đọc thư từ chối CyberAgent

*Đại mở email trên laptop. Mai đứng sau lưng.*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc to email) 「グエン<ruby>様<rt>さま</rt></ruby>、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、カルチャーフィットの<ruby>観点<rt>かんてん</rt></ruby>から<ruby>今回<rt>こんかい</rt></ruby>はご<ruby>縁<rt>えん</rt></ruby>がございませんでした。」<br>*(Anh Nguyễn, rất tiếc xét về culture fit lần này chưa có duyên.)* |
| Mai | (VN) Anh ơi, cái này là trượt phải không? |
| Đại | (VN) Ừ. CyberAgent loại. "Culture fit không phù hợp" — văn hoá ad-tech aggressive không hợp anh. Anh đoán trước rồi. |
| Mai | (VN) Không sao anh ạ. 3 cái còn lại còn ngon. |
| Đại | (VN) Ừ, anh cũng nghĩ vậy. Trả lời lịch sự cho HR là xong. |
| Đại | (gõ trả lời, đọc) ご<ruby>連絡<rt>れんらく</rt></ruby>ありがとうございました。<ruby>残念<rt>ざんねん</rt></ruby>ですが、また<ruby>機会<rt>きかい</rt></ruby>がございましたらよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn quý công ty đã liên lạc. Rất tiếc, hẹn dịp khác mong tiếp tục được hợp tác.)* |

---

## Tình huống 7 — Cybozu Osaka · 25/4, gặp Tanaka-san xác nhận 内定

| Vai | Lời thoại |
|---|---|
| Tanaka (mentor cũ) | <ruby>大<rt>だい</rt></ruby>くん、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>内定通知<rt>ないていつうち</rt></ruby>を<ruby>出<rt>だ</rt></ruby>しました。<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>670万円<rt>ろっぴゃくななじゅうまんえん</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby><ruby>本社<rt>ほんしゃ</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>です。<br>*(Đại à, bên anh đã ra thông báo 内定 chính thức. ¥6.7M, làm trụ sở Osaka.)* |
| Đại | ありがとうございます！<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっており、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Em cảm ơn anh! Lâu nay được anh quan tâm, em thực sự biết ơn.)* |
| Tanaka | <ruby>大<rt>だい</rt></ruby>くんはメルカリの<ruby>内定<rt>ないてい</rt></ruby>も<ruby>取<rt>と</rt></ruby>ったって<ruby>聞<rt>き</rt></ruby>いたよ。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くけど、メルカリと<ruby>迷<rt>まよ</rt></ruby>っている？<br>*(Nghe nói cậu đã có 内定 Mercari. Hỏi thẳng — cậu đang phân vân Mercari à?)* |
| Đại | はい、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>しますと、<ruby>迷<rt>まよ</rt></ruby>っております。Hizashiの<ruby>件<rt>けん</rt></ruby>もあり、<ruby>12月<rt>じゅうにがつ</rt></ruby>まで<ruby>判断<rt>はんだん</rt></ruby>をお<ruby>待<rt>ま</rt></ruby>たせいただけますでしょうか。<br>*(Vâng, nói thật là em đang phân vân. Còn vấn đề Hizashi nữa, anh cho em đợi quyết định đến tháng 12 được không ạ?)* |
| Tanaka | もちろん。サイボウズは<ruby>急<rt>いそ</rt></ruby>がない。<ruby>君<rt>きみ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>を<ruby>尊重<rt>そんちょう</rt></ruby>するよ。<br>*(Đương nhiên. Cybozu không vội. Bên anh tôn trọng quyết định của cậu.)* |
| Đại | ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh. Em được giúp đỡ rất nhiều.)* |

---

## Tình huống 8 — Điện thoại HR Mercari · 28/4, xin gia hạn deadline

| Vai | Lời thoại |
|---|---|
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエンでございます。<br>*(Em là Nguyễn Đại ĐH Osaka ạ.)* |
| HR Mercari | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Anh Nguyễn xin chào.)* |
| Đại | ご<ruby>回答<rt>かいとう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でご<ruby>相談<rt>そうだん</rt></ruby>がございます。<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、ご<ruby>回答<rt>かいとう</rt></ruby>の<ruby>期限<rt>きげん</rt></ruby>を<ruby>12月末<rt>じゅうにがつまつ</rt></ruby>まで<ruby>延長<rt>えんちょう</rt></ruby>していただけますでしょうか。<br>*(Em có việc muốn xin ý kiến về hạn trả lời. Em xin lỗi, anh có thể gia hạn thời hạn trả lời đến cuối tháng 12 không ạ?)* |
| HR | <ruby>理由<rt>りゆう</rt></ruby>をお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいですか。<br>*(Anh cho em hỏi lý do được không?)* |
| Đại | はい。<ruby>個人開発<rt>こじんかいはつ</rt></ruby>のHizashiが<ruby>50名<rt>ごじゅうめい</rt></ruby>ベータユーザーの<ruby>検証<rt>けんしょう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めており、<ruby>12月<rt>じゅうにがつ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえて<ruby>判断<rt>はんだん</rt></ruby>させていただきたいです。<br>*(Vâng. Dự án Hizashi đang kiểm chứng với 50 beta user, em muốn dựa vào kết quả tháng 12 để quyết định.)* |
| HR | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>社内<rt>しゃない</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby>までにご<ruby>返事<rt>へんじ</rt></ruby>いたします。<br>*(Em hiểu rồi. Em xác nhận nội bộ và phản hồi anh tuần sau.)* |
| Đại | お<ruby>手数<rt>てすう</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Phiền anh giúp em, em xin cảm ơn.)* |

---

## Tình huống 9 — Senri-chuo apt · 29/4, bảng matrix decision với Mai

*Đại mở Google Sheet trên TV phòng khách. Mai pha trà, ngồi xuống bên cạnh. Hana đang ngủ.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, mình bàn nghiêm túc tối nay. Anh làm bảng matrix 5 phương án. |
| Mai | (VN) Vâng. Anh nói đi. |
| Đại | (VN) Phương án 1: Mercari Tokyo ¥7M + RSU $20k. Ưu — top brand, RSU tiềm năng. Nhược — chuyển lên Tokyo, em và Hana phải thích nghi lại. |
| Đại | (VN) Phương án 2: Cybozu Osaka ¥6.7M. Ưu — ở Osaka, team đã quen, gần lab. Nhược — brand nhỏ hơn. |
| Đại | (VN) Phương án 3: LY Corp Fukuoka ¥6.5M + hỗ trợ ¥500k. Ưu — brand LINE. Nhược — Fukuoka shinkansen 3 tiếng, xa em với Hana. |
| Đại | (VN) Phương án 4: LY Corp Osaka — đang chờ. |
| Đại | (VN) Phương án 5: **Hizashi startup** lương ¥0, cổ phần 100%. Ưu — tầm nhìn. Nhược — rủi ro cao, em phải gánh kinh tế. |
| Mai | (VN) Anh nói thật đi — anh muốn cái nào? |
| Đại | (VN) Anh chưa quyết. Nhưng anh nghiêng về Cybozu hoặc Hizashi. |
| Mai | (VN) Em ủng hộ anh ở mọi phương án. Mercari Tokyo cũng OK — bên Tokyo nhiều cộng đồng Việt. LY Fukuoka thì xa quá, em không thích lắm. Cybozu thoải mái nhất. Còn Hizashi... em sẽ rất tự hào nếu anh tự xây. |
| Đại | (VN) Em thấy Hizashi đáng mạo hiểm không? |
| Mai | (VN) Đáng chứ! Anh có tầm nhìn mà. Em tour guide đang ổn — em đẩy lên ¥150k/tháng để gánh phần thiếu hụt. |
| Đại | (VN, ôm Mai) Cảm ơn em. Có em đứng sau anh không sợ. |

---

## Tình huống 10 — Lab Inoue · 30/4, báo cáo sensei tình hình 就活

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>大<rt>だい</rt></ruby>くん、<ruby>就活<rt>しゅうかつ</rt></ruby>の<ruby>状況<rt>じょうきょう</rt></ruby>はいかがですか。<br>*(Đại, tình hình xin việc thế nào rồi?)* |
| Đại | はい、ご<ruby>報告<rt>ほうこく</rt></ruby>いたします。メルカリ、サイボウズ、LY<ruby>福岡<rt>ふくおか</rt></ruby>から<ruby>内定<rt>ないてい</rt></ruby>をいただきました。サイバーエージェントはカルチャーフィットで<ruby>不合格<rt>ふごうかく</rt></ruby>でした。<br>*(Vâng, em xin báo cáo. Em đã có 内定 Mercari, Cybozu, LY Fukuoka. CyberAgent loại culture fit.)* |
| Inoue | <ruby>3社<rt>さんしゃ</rt></ruby>とは<ruby>素晴<rt>すば</rt></ruby>らしいですね。おめでとうございます。<br>*(Có 3 công ty là tuyệt vời. Chúc mừng em.)* |
| Đại | ありがとうございます。ただ、<ruby>判断<rt>はんだん</rt></ruby>はHizashiの<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえて<ruby>12月<rt>じゅうにがつ</rt></ruby>に<ruby>下<rt>くだ</rt></ruby>す<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em cảm ơn thầy. Tuy nhiên quyết định em sẽ dựa vào tiến độ Hizashi và chốt vào tháng 12.)* |
| Inoue | はい、それで<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>卒論<rt>そつろん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>できるよう、<ruby>就活<rt>しゅうかつ</rt></ruby>の<ruby>主<rt>おも</rt></ruby>な<ruby>面接<rt>めんせつ</rt></ruby>は<ruby>5月<rt>ごがつ</rt></ruby>で<ruby>終<rt>お</rt></ruby>わると<ruby>考<rt>かんが</rt></ruby>えてよいですか。<br>*(Vâng, vậy là tốt rồi. Phỏng vấn chính kết thúc trong tháng 5 nhé, để em tập trung khoá luận.)* |
| Đại | はい、LY<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>って、<ruby>5月末<rt>ごがつまつ</rt></ruby>には<ruby>区切<rt>くぎ</rt></ruby>りをつけます。<br>*(Vâng, đợi kết quả LY Osaka, cuối tháng 5 em sẽ chốt phỏng vấn.)* |

---

## Tình huống 11 — Quán nhậu izakaya gần lab · 30/4, Yamada-senpai cho lời khuyên

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>3社<rt>さんしゃ</rt></ruby><ruby>内定<rt>ないてい</rt></ruby>すごいな。<ruby>俺<rt>おれ</rt></ruby>のときは<ruby>1社<rt>いっしゃ</rt></ruby>しか<ruby>取<rt>と</rt></ruby>れなかったぞ。<br>*(3 công ty 内定 ngầu thật. Tớ ngày xưa chỉ được 1 thôi.)* |
| Đại | ありがとうございます。<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてもいいですか。<br>*(Em cảm ơn. Anh ơi, cho em hỏi thẳng được không?)* |
| Yamada | おう、なに？<br>*(Ờ, gì?)* |
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>がもし<ruby>僕<rt>ぼく</rt></ruby>だったら、サイボウズと Hizashi、どっちを<ruby>選<rt>えら</rt></ruby>びますか。<br>*(Nếu là em, anh chọn Cybozu hay Hizashi?)* |
| Yamada | う〜ん、<ruby>難<rt>むずか</rt></ruby>しいな。<ruby>家族<rt>かぞく</rt></ruby>がいると<ruby>慎重<rt>しんちょう</rt></ruby>になる。でも<ruby>俺<rt>おれ</rt></ruby>なら、サイボウズで<ruby>2年<rt>にねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いて<ruby>資金<rt>しきん</rt></ruby><ruby>貯<rt>た</rt></ruby>めてから Hizashi に<ruby>専念<rt>せんねん</rt></ruby>するルートも<ruby>有<rt>あ</rt></ruby>りだと<ruby>思<rt>おも</rt></ruby>う。<br>*(Hmm, khó nhỉ. Có gia đình thì phải thận trọng. Nhưng nếu là tớ, Cybozu 2 năm tích vốn rồi mới chuyển hẳn sang Hizashi cũng là lựa chọn tốt.)* |
| Đại | なるほど。「ハイブリッド<ruby>戦略<rt>せんりゃく</rt></ruby>」ですね。<br>*(À, "chiến lược lai" đúng không ạ.)* |
| Yamada | そう。<ruby>急<rt>いそ</rt></ruby>がなくていいよ。<ruby>君<rt>きみ</rt></ruby>はまだ<ruby>24歳<rt>にじゅうよんさい</rt></ruby>だ。<br>*(Ừ. Không cần vội. Cậu mới 24 tuổi.)* |

---

## Tình huống 12 — Cảnh tiếng Việt — gọi Linh-Anh (em gái) chia sẻ về Mai

*Tối thứ 7. Đại gọi FaceTime Linh-Anh ở Nagoya — em gái sắp cưới Sato tháng 7.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (VN) Anh ơi! Em vừa nghe Mai chị nói anh có 3 内定. Mừng anh quá! |
| Đại | (VN) Cảm ơn em. Anh cũng đang đau đầu — chọn Cybozu Osaka, Mercari Tokyo, hay all-in Hizashi. |
| Linh-Anh | (VN) Em thấy Mai chị đứng đằng sau anh là sướng rồi. Lúc em quyết định ở Nhật cưới Sato, anh cũng support em hết mình mà. |
| Đại | (VN) Ờ. Mai tour guide ¥1500/h, em sắp cưới Sato, Hana 9 tháng đứng vịn ghế. Family expanding em ạ. |
| Linh-Anh | (VN) Hihi. Anh cứ chọn theo trái tim đi. Tiền thì ¥6.5M hay ¥7M chênh nhau không quá nhiều — văn hoá team mới quan trọng. |
| Đại | (VN) Đúng đấy. Sensei Inoue cũng nhắc tương tự — chọn nơi tâm hợp. À, đám cưới em 25/7 bố mẹ đã book vé sang. |
| Linh-Anh | (VN) Vâng em biết rồi. Hana làm flower girl nhé! |
| Đại | (VN) Ok deal. Mai bế Hana đi rải hoa. Tuyệt cú mèo. |
| Linh-Anh | (VN) Anh quyết được rồi báo em nhé. Chúc anh ngủ ngon! |

---

## Đọng lại chương 2

Đại đi qua đợt 就活 cuối với 3 内定: **Mercari ¥7M Tokyo + RSU**, **Cybozu ¥6.7M Osaka**, **LY Corp Fukuoka ¥6.5M**. CyberAgent loại culture fit. Học các mẫu keigo cao cấp: **chào lễ tân onsite**「本日9時面接の〜と申します」, **trả lời HR điện thoại** với「大変光栄に存じます」「家族と相談させていただければと存じます」, **thương lượng địa điểm** bằng「正直に申しますと、家族の関係で大阪を第一希望としております」, **xin gia hạn deadline**「ご回答の期限を延長していただけますでしょうか」, **báo cáo sensei** tình hình 就活. Mai ủng hộ con đường rủi ro Hizashi và cam kết đẩy tour guide ¥150k/tháng. Yamada-senpai gợi ý "chiến lược lai" — Cybozu 2 năm tích vốn rồi all-in Hizashi. Quyết định cuối vào tháng 12.

> Từ vựng & mẫu câu chương này: 内定・賞与・RSU・初任給・年収・勤務地・ハイブリッド・ご回答・3ヶ月以内・大変光栄に存じます・家族と相談させていただければと存じます・正直に申しますと・第一希望・引越支援・ご回答の期限を延長していただけますでしょうか・カルチャーフィットの観点から・ご縁がございませんでした・ご報告いたします・ハイブリッド戦略

## Bí quyết chương

- **「大変光栄に存じます」**: Phản xạ chuẩn khi HR thông báo 内定 qua điện thoại — không được nói「ありがとうございます」 trống không.
- **「正直に申しますと」**: Cấu trúc mở khi cần thương lượng/trình bày vấn đề cá nhân (gia đình, địa điểm, lương) — giữ thẳng thắn nhưng vẫn kính.
- **Gia hạn deadline trả lời**: 内定 thường có hạn 1-3 tháng, có thể xin gia hạn nếu có lý do chính đáng (project, gia đình, sức khoẻ).
- **Email từ chối**: Luôn dùng「また機会がございましたら」 để mở cửa cho tương lai — Nhật rất xem trọng quan hệ dài hạn.
- **Văn hoá company > lương**: Sensei và senpai đều nhắc — chênh ¥0.5M không quan trọng bằng team và culture phù hợp.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入館証 | にゅうかんしょう | NHẬP QUÁN CHỨNG | thẻ ra vào |
| 失礼 | しつれい | THẤT LỄ | xin phép, xin lỗi |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | giới thiệu bản thân |
| 情報科学科 | じょうほうかがくか | THÔNG TIN KHOA HỌC KHOA | khoa Khoa học Thông tin (基礎工学部 ĐH Osaka) |
| 研究室 | けんきゅうしつ | NGHIÊN CỨU THẤT | phòng nghiên cứu |
| 教育工学 | きょういくこうがく | GIÁO DỤC CÔNG HỌC | công nghệ giáo dục |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 学習 | がくしゅう | HỌC TẬP | học |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 技術 | ぎじゅつ | KỸ THUẬT | kỹ thuật |
| 本気 | ほんき | BẢN KHÍ | nghiêm túc |
| 正直 | しょうじき | CHÁNH TRỰC | thật lòng |
| 卒研 | そつけん | TỐT NGHIÊN | đề tài tốt nghiệp |
| 判断 | はんだん | PHÁN ĐOÁN | quyết định |
| 現時点 | げんじてん | HIỆN THỜI ĐIỂM | hiện tại |
| 個人開発 | こじんかいはつ | CÁ NHÂN KHAI PHÁT | phát triển cá nhân |
| 副業 | ふくぎょう | PHÓ NGHIỆP | nghề phụ |
| 規定 | きてい | QUY ĐỊNH | quy định |
| 事前申請 | じぜんしんせい | SỰ TIỀN THÂN THỈNH | đăng ký trước |
| 競合避止 | きょうごうひし | CẠNH HỢP TỴ CHỈ | tránh xung đột cạnh tranh |
| 条項 | じょうこう | ĐIỀU HẠNG | điều khoản |
| 誠実 | せいじつ | THÀNH THỰC | thành thực |
| 回答 | かいとう | HỒI ĐÁP | câu trả lời |
| 採用 | さいよう | THÁI DỤNG | tuyển dụng |
| 内定 | ないてい | NỘI ĐỊNH | nhận trúng tuyển |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 光栄 | こうえい | QUANG VINH | vinh dự |
| 初任給 | しょにんきゅう | SƠ NHIỆM CẤP | lương khởi điểm |
| 賞与 | しょうよ | THƯỞNG DỮ | thưởng |
| 年収 | ねんしゅう | NIÊN THU | thu nhập năm |
| 勤務地 | きんむち | CẦN VỤ ĐỊA | nơi làm việc |
| 出社 | しゅっしゃ | XUẤT XÃ | đi làm |
| 正式 | せいしき | CHÁNH THỨC | chính thức |
| 書面 | しょめん | THƯ DIỆN | văn bản |
| 拝見 | はいけん | BÁI KIẾN | xem (kính ngữ) |
| 相談 | そうだん | TƯƠNG ĐÀM | bàn bạc |
| 引越支援 | ひっこししえん | DẪN VIỆT CHI VIỆN | hỗ trợ chuyển nhà |
| 第一希望 | だいいちきぼう | ĐỆ NHẤT HY VỌNG | nguyện vọng số 1 |
| 関係 | かんけい | QUAN HỆ | quan hệ |
| 選考 | せんこう | TUYỂN KHẢO | tuyển chọn |
| 観点 | かんてん | QUAN ĐIỂM | quan điểm |
| 機会 | きかい | CƠ HỘI | cơ hội |
| 内定通知 | ないていつうち | NỘI ĐỊNH THÔNG TRI | thông báo trúng tuyển |
| 本社 | ほんしゃ | BẢN XÃ | trụ sở chính |
| 尊重 | そんちょう | TÔN TRỌNG | tôn trọng |
| 恐縮 | きょうしゅく | KHỦNG SÚC | áy náy |
| 期限 | きげん | KỲ HẠN | hạn |
| 延長 | えんちょう | DIÊN TRƯỜNG | gia hạn |
| 検証 | けんしょう | KIỂM CHỨNG | kiểm chứng |
| 状況 | じょうきょう | TRẠNG HUỐNG | tình hình |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | không đỗ |
| 慎重 | しんちょう | THẬN TRỌNG | thận trọng |
| 資金 | しきん | TƯ KIM | vốn |
| 専念 | せんねん | CHUYÊN NIỆM | chuyên tâm |
| 戦略 | せんりゃく | CHIẾN LƯỢC | chiến lược |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000003, 800000024, NULL, 'markdown_book', 'T3. Hana 10 tháng + đám cưới em gái — gia đình mở rộng', '# Sách sinh viên Đại học Osaka · T3. Hana 10 tháng + đám cưới em gái — gia đình mở rộng

> **Mục tiêu nhân vật:** Đại 24 tuổi, tháng 6-7/2029. Học các mẫu hội thoại tiếng Nhật của đời sống gia đình ở Osaka: (1) đăng ký khám sức khoẻ con tại 保健センター, (2) trao đổi với cô giáo nhà trẻ về 慣らし保育, (3) nói chuyện hàng xóm Nhật khi Hana làm ồn, (4) bài phát biểu anh trai (兄スピーチ) trong đám cưới, (5) cảm ơn cha mẹ Sato bằng keigo gia đình thông gia, (6) hỏi cách điền 結婚ビザ ở thị uỷ.

---

## Bối cảnh

Tháng 6-7/2029. Hana 10 tháng — bắt đầu đi chập chững. Mai cân nhắc gửi nhà trẻ 認可保育園 từ tháng 9 để tăng giờ tour guide. Em gái Đại — Linh-Anh — cưới Sato (kỹ sư Toyota Boshoku) ngày 25/7 tại Nagoya. Bố mẹ Đại sang Nhật lần 2 dự cưới. Mai sẽ nói lời cảm ơn bố mẹ Sato bằng keigo. Chương này tập trung các mẫu câu **đời sống gia đình Osaka** và **lễ nghi gia đình thông gia**.

---

## Tình huống 1 — Senri-chuo apt · 5/6 sáng, Hana đi chập chững

| Vai | Lời thoại |
|---|---|
| Mai | (VN, gọi to) Anh ơi! Anh ra đây nhanh lên! Hana đi được rồi! |
| Đại | (VN, từ bàn học chạy ra) Hả? Thật á? |
| Hana | (vịn bàn cà phê, buông tay, đi 5 bước rồi ngã) ba... ba... |
| Đại | (VN, ôm con) Trời ơi Hana! Mới 10 tháng mà đã đi được! |
| Mai | (VN, quay video) Em đang quay đây. Gửi bà ngoại liền. |
| Hana | (bập bẹ) ba... mẹ... bà... |
| Đại | (VN) Con biết 3 từ rồi. "Ba" gọi anh, "mẹ" gọi em, "bà" gọi cô Yumi. |
| Mai | (VN) Con đang lớn lên với 2 thứ tiếng — Việt và Nhật. |

---

## Tình huống 2 — Suita 保健センター · 10:00, khám sức khoẻ 10 tháng

*Mai bế Hana đến quầy lễ tân trung tâm y tế.*

| Vai | Lời thoại |
|---|---|
| Mai | おはようございます。<ruby>10ヶ月健診<rt>じゅっかげつけんしん</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>を<ruby>取<rt>と</rt></ruby>っております、グエン ハナです。<br>*(Chào buổi sáng. Tôi đặt lịch khám 10 tháng cho cháu, Nguyễn Hana.)* |
| Y tá | はい、グエンハナちゃんですね。<ruby>母子手帳<rt>ぼしてちょう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, bé Nguyễn Hana. Xin cho tôi sổ mẹ con.)* |
| Mai | はい、こちらです。<br>*(Vâng, đây ạ.)* |
| Y tá | <ruby>体重<rt>たいじゅう</rt></ruby>と<ruby>身長<rt>しんちょう</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ります。<ruby>洋服<rt>ようふく</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>がせてください。<br>*(Chúng tôi sẽ cân và đo chiều cao. Mời chị cởi quần áo cho bé.)* |
| Bác sĩ | (sau khi đo) <ruby>体重<rt>たいじゅう</rt></ruby>9.2キロ、<ruby>身長<rt>しんちょう</rt></ruby>74センチ、<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>しています。<ruby>歩<rt>ある</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めはいつ<ruby>頃<rt>ごろ</rt></ruby>ですか。<br>*(9.2kg, 74cm, tăng trưởng tốt. Bé bắt đầu đi khi nào?)* |
| Mai | <ruby>昨日<rt>きのう</rt></ruby>からです。<ruby>5歩<rt>ごほ</rt></ruby>ほど<ruby>歩<rt>ある</rt></ruby>けました。<br>*(Từ hôm qua. Cháu đi được khoảng 5 bước.)* |
| Bác sĩ | <ruby>早<rt>はや</rt></ruby>いですね。<ruby>平均<rt>へいきん</rt></ruby>は12〜15ヶ月です。<ruby>特<rt>とく</rt></ruby>に<ruby>気<rt>き</rt></ruby>になることはありますか。<br>*(Sớm đấy. Trung bình 12-15 tháng. Có điều gì lo lắng không?)* |
| Mai | <ruby>夜<rt>よる</rt></ruby><ruby>2回<rt>にかい</rt></ruby>くらい<ruby>起<rt>お</rt></ruby>きてしまうのですが、<ruby>普通<rt>ふつう</rt></ruby>ですか。<br>*(Đêm cháu hay tỉnh khoảng 2 lần, có bình thường không ạ?)* |
| Bác sĩ | <ruby>10ヶ月<rt>じゅっかげつ</rt></ruby>では<ruby>普通<rt>ふつう</rt></ruby>ですよ。<ruby>1歳<rt>いっさい</rt></ruby><ruby>過<rt>す</rt></ruby>ぎたら<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてくることが<ruby>多<rt>おお</rt></ruby>いです。<br>*(10 tháng thì bình thường. Qua 1 tuổi thường ổn định lại.)* |
| Mai | ありがとうございます。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Cảm ơn bác sĩ. Tôi yên tâm rồi.)* |

---

## Tình huống 3 — 認可保育園 Senri-Sakura · 14:00, tham quan trường

| Vai | Lời thoại |
|---|---|
| Cô hiệu trưởng | はじめまして、<ruby>園長<rt>えんちょう</rt></ruby>の<ruby>松本<rt>まつもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>ありがとうございます。<br>*(Xin chào, tôi là Matsumoto, hiệu trưởng. Hôm nay cảm ơn anh chị đến tham quan.)* |
| Mai | グエン マイと<ruby>申<rt>もう</rt></ruby>します。<ruby>娘<rt>むすめ</rt></ruby>のハナです。<ruby>9月入園<rt>くがつにゅうえん</rt></ruby>を<ruby>希望<rt>きぼう</rt></ruby>しております。<br>*(Tôi là Nguyễn Mai, con gái là Hana. Tôi muốn cho cháu vào trường từ tháng 9.)* |
| Hiệu trưởng | <ruby>慣<rt>な</rt></ruby>らし<ruby>保育<rt>ほいく</rt></ruby>について<ruby>説明<rt>せつめい</rt></ruby>させていただきますね。<br>*(Tôi sẽ giải thích về giai đoạn làm quen nhé.)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>慣<rt>な</rt></ruby>らし<ruby>保育<rt>ほいく</rt></ruby>というのは<ruby>何<rt>なん</rt></ruby>ですか。<br>*(Em xin lỗi, giai đoạn 慣らし保育 là gì ạ?)* |
| Hiệu trưởng | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1〜2週間<rt>いちにしゅうかん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>時間<rt>じかん</rt></ruby>を<ruby>延<rt>の</rt></ruby>ばして<ruby>園<rt>えん</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れてもらう<ruby>期間<rt>きかん</rt></ruby>です。<ruby>1日目<rt>いちにちめ</rt></ruby>は<ruby>2時間<rt>にじかん</rt></ruby>、<ruby>3日目<rt>みっかめ</rt></ruby>は<ruby>4時間<rt>よじかん</rt></ruby>、というふうに。<br>*(1-2 tuần đầu, kéo dài thời gian dần để bé quen trường. Ngày 1 là 2 tiếng, ngày 3 là 4 tiếng, cứ tăng dần.)* |
| Mai | なるほど。<ruby>母親<rt>ははおや</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>居<rt>い</rt></ruby>るんですか。<br>*(Vậy ạ. Mẹ có cùng ở lại không ạ?)* |
| Hiệu trưởng | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>2日<rt>ふつか</rt></ruby>はお<ruby>母<rt>かあ</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>、<ruby>3日目<rt>みっかめ</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>離<rt>はな</rt></ruby>れていただきます。<br>*(2 ngày đầu cùng mẹ, ngày thứ 3 trở đi tách dần.)* |
| Đại | <ruby>給食<rt>きゅうしょく</rt></ruby>のアレルギー<ruby>対応<rt>たいおう</rt></ruby>はいかがでしょうか。<ruby>娘<rt>むすめ</rt></ruby>は<ruby>卵<rt>たまご</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>反応<rt>はんのう</rt></ruby>します。<br>*(Bữa cơm trường có hỗ trợ dị ứng không ạ? Con tôi hơi dị ứng trứng.)* |
| Hiệu trưởng | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>医師<rt>いし</rt></ruby>の<ruby>診断書<rt>しんだんしょ</rt></ruby>をご<ruby>提出<rt>ていしゅつ</rt></ruby>いただければ、<ruby>除去食<rt>じょきょしょく</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>いたします。<br>*(Không sao. Anh chị nộp giấy chẩn đoán của bác sĩ, chúng tôi sẽ chuẩn bị suất ăn riêng.)* |

---

## Tình huống 4 — Hành lang apt · 19:00, xin lỗi hàng xóm khi Hana khóc đêm

*Đại gặp ông Yamashita — hàng xóm phòng 305 — ngoài hành lang.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山下<rt>やました</rt></ruby>さん、こんばんは。<ruby>少<rt>すこ</rt></ruby>しよろしいでしょうか。<br>*(Bác Yamashita, chào tối ạ. Cháu xin phép một chút được không ạ?)* |
| Ông Yamashita | はい、なんですか。<br>*(Ừ, gì thế?)* |
| Đại | <ruby>最近<rt>さいきん</rt></ruby>、<ruby>娘<rt>むすめ</rt></ruby>が<ruby>夜中<rt>よなか</rt></ruby>に<ruby>泣<rt>な</rt></ruby>いてしまい、ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしているかと<ruby>思<rt>おも</rt></ruby>います。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Gần đây con cháu khóc đêm, chắc đã làm phiền bác. Cháu thành thật xin lỗi ạ.)* |
| Ông Yamashita | あ、いえいえ、<ruby>気<rt>き</rt></ruby>にしないでください。<ruby>赤<rt>あか</rt></ruby>ちゃんは<ruby>泣<rt>な</rt></ruby>くものです。<ruby>私<rt>わたし</rt></ruby>の<ruby>孫<rt>まご</rt></ruby>もそうでしたよ。<br>*(À, không không, đừng để tâm. Em bé thì phải khóc thôi. Cháu tôi ngày xưa cũng vậy.)* |
| Đại | お<ruby>気遣<rt>きづか</rt></ruby>いいただきありがとうございます。これは<ruby>妻<rt>つま</rt></ruby>が<ruby>作<rt>つく</rt></ruby>ったベトナムのお<ruby>菓子<rt>かし</rt></ruby>です。よろしければどうぞ。<br>*(Bác thương cháu cảm ơn ạ. Đây là bánh Việt Nam vợ cháu làm. Bác nhận giúp cháu ạ.)* |
| Ông Yamashita | わ〜、いいんですか。<ruby>遠慮<rt>えんりょ</rt></ruby>なくいただきます。<ruby>奥<rt>おく</rt></ruby>さんにもよろしくお<ruby>伝<rt>つた</rt></ruby>えください。<br>*(Ô, được không nhỉ. Tôi xin nhận. Cho tôi gửi lời chào vợ cháu nhé.)* |
| Đại | はい、ありがとうございます。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, cháu cảm ơn ạ. Cháu mong bác tiếp tục giúp đỡ.)* |

---

## Tình huống 5 — Senri-chuo apt · 10/6 tối, Mai bàn future plan

*Hana ngủ. Đại và Mai ngồi bàn ăn, trà nóng.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, anh muốn bàn nghiêm túc chuyện tương lai. |
| Mai | (VN) Vâng anh. |
| Đại | (VN) Em muốn ở Nhật lâu dài hay về Việt Nam sau khi anh tốt nghiệp? |
| Mai | (VN) Em nghĩ kỹ rồi. Em muốn ở Nhật ít nhất 5 năm nữa. |
| Đại | (VN) 5 năm? Em chắc chưa? |
| Mai | (VN) Có 3 lý do. Một, Hana được học giáo dục Nhật chất lượng cao — đặc biệt mẫu giáo và tiểu học. Hai, thu nhập của anh cao lại có bảo hiểm xã hội (社会保険). Ba, em tour guide ¥120-150k/tháng đang ổn định. |
| Đại | (VN) Thế sau 5 năm thì sao? |
| Mai | (VN) Tuỳ vào Hizashi. Nếu Hizashi đã ra mắt thị trường Việt thì cả nhà mình về quản lý văn phòng VN. |
| Đại | (VN, ôm vợ) Em thông minh quá. Kế hoạch khớp với tầm nhìn Hizashi luôn. |
| Mai | (VN) Em đã theo dõi roadmap của anh từ năm 2. Em biết hết. |

---

## Tình huống 6 — LINE gia đình · 15/6, Linh-Anh báo cưới Sato

*Group LINE "Gia đình Đại-Mai-Linh-Anh + bố mẹ".*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (LINE, VN) Anh chị + bố mẹ ơi! Em với Sato sẽ cưới ngày 25/7/2029! Lễ tổ chức tại chapel Nagoya. Em mời cả nhà ạ! 💍 |
| Đại | (LINE, VN) Trời ơi! Mừng cho em! Yêu nhau 2 năm là cưới luôn — quyết đoán ghê. |
| Mẹ | (LINE, VN) Con gái mẹ! Mẹ với bố sẽ sang dự. Bố vừa xin nghỉ phép xong. |
| Linh-Anh | (LINE, VN) Sato 25 tuổi, kỹ sư Toyota Boshoku cùng bộ phận. Bố mẹ em quý Sato lắm rồi. |
| Mai | (LINE, VN) Visa kết hôn em đã xin chưa? Bên em còn ở 留学 phải không? |
| Linh-Anh | (LINE, VN) Vâng chị. Sato xin visa 結婚 (kết hôn) cho em — nhanh hơn 家族滞在. Tháng 8 sẽ chuyển. |
| Bố | (LINE, VN) Yêu cầu Hana làm flower girl. Bà nội sẽ chuẩn bị áo dài bé. |
| Mai | (LINE, VN) Ok bố! Em sẽ may áo dài đỏ cho Hana. |

---

## Tình huống 7 — Nagoya thị uỷ Higashi-ku · 22/7, hỏi điền 婚姻届 cho Linh-Anh

*Đại dẫn Linh-Anh đến thị uỷ Higashi-ku Nagoya nộp giấy đăng ký kết hôn (婚姻届).*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、<ruby>婚姻届<rt>こんいんとどけ</rt></ruby>の<ruby>提出<rt>ていしゅつ</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>いたいです。<br>*(Xin lỗi, tôi muốn hỏi về việc nộp giấy đăng ký kết hôn ạ.)* |
| Nhân viên thị uỷ | はい、ご<ruby>夫婦<rt>ふうふ</rt></ruby>のおふたりですか。<br>*(Vâng, hai vợ chồng phải không ạ?)* |
| Đại | いえ、<ruby>妹<rt>いもうと</rt></ruby>です。<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Không, em gái tôi. Trường hợp người nước ngoài cần giấy tờ gì ạ?)* |
| Nhân viên | お<ruby>妹<rt>いもうと</rt></ruby>さんの<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>本国<rt>ほんごく</rt></ruby>の<ruby>婚姻要件具備証明書<rt>こんいんようけんぐびしょうめいしょ</rt></ruby>とその<ruby>日本語訳<rt>にほんごやく</rt></ruby>、それからパスポート、<ruby>在留<rt>ざいりゅう</rt></ruby>カードが<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Em gái anh cần giấy chứng nhận đủ điều kiện kết hôn của Việt Nam kèm bản dịch tiếng Nhật, hộ chiếu và thẻ cư trú.)* |
| Linh-Anh | <ruby>婚姻要件具備証明書<rt>こんいんようけんぐびしょうめいしょ</rt></ruby>はベトナム<ruby>大使館<rt>たいしかん</rt></ruby>で<ruby>取<rt>と</rt></ruby>っております。<ruby>日本語訳<rt>にほんごやく</rt></ruby>もあります。<br>*(Giấy chứng nhận đủ điều kiện kết hôn em đã lấy ở ĐSQ Việt Nam. Bản dịch tiếng Nhật cũng có ạ.)* |
| Nhân viên | <ruby>結構<rt>けっこう</rt></ruby>です。<ruby>記入<rt>きにゅう</rt></ruby><ruby>例<rt>れい</rt></ruby>を<ruby>参考<rt>さんこう</rt></ruby>にこちらで<ruby>書<rt>か</rt></ruby>いてください。<ruby>証人<rt>しょうにん</rt></ruby><ruby>2名<rt>にめい</rt></ruby>の<ruby>署名<rt>しょめい</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Tốt rồi. Mời chị viết theo mẫu này. Cần 2 người làm chứng ký tên nữa.)* |
| Đại | <ruby>兄<rt>あに</rt></ruby>として<ruby>証人<rt>しょうにん</rt></ruby>になれますか。<br>*(Tôi là anh trai làm chứng được không ạ?)* |
| Nhân viên | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, được ạ.)* |

---

## Tình huống 8 — Chapel Nagoya · 25/7 11:00, đón bố mẹ Sato

*Đại bế Hana, Mai mặc áo dài đỏ. Bố mẹ Sato bước vào sảnh.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>のお<ruby>父<rt>とう</rt></ruby>様、お<ruby>母<rt>かあ</rt></ruby>様、はじめまして。リンアンの<ruby>兄<rt>あに</rt></ruby>のグエンダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はおめでとうございます。<br>*(Thưa cha mẹ Sato, lần đầu gặp ạ. Cháu là Nguyễn Đại, anh trai Linh-Anh. Hôm nay xin chúc mừng ạ.)* |
| Bố Sato | こちらこそ、おめでとうございます。<ruby>息子<rt>むすこ</rt></ruby>がリンアンさんと<ruby>結婚<rt>けっこん</rt></ruby>できて<ruby>大変<rt>たいへん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Chúng tôi cũng xin chúc mừng. Con trai chúng tôi được kết hôn với cô Linh-Anh, chúng tôi rất vui.)* |
| Mai | <ruby>義理<rt>ぎり</rt></ruby>の<ruby>妹<rt>いもうと</rt></ruby>の<ruby>妻<rt>つま</rt></ruby>のマイと<ruby>申<rt>もう</rt></ruby>します。<ruby>娘<rt>むすめ</rt></ruby>のハナです、<ruby>本日<rt>ほんじつ</rt></ruby>フラワーガールを<ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(Tôi là Mai vợ anh trai cô dâu. Đây là con gái Hana, hôm nay sẽ làm flower girl ạ.)* |
| Mẹ Sato | わ〜、なんて<ruby>可愛<rt>かわい</rt></ruby>いお<ruby>嬢<rt>じょう</rt></ruby>さん！<ruby>何歳<rt>なんさい</rt></ruby>ですか。<br>*(Ôi bé xinh quá! Bé mấy tuổi rồi?)* |
| Mai | <ruby>10ヶ月<rt>じゅっかげつ</rt></ruby>です。<br>*(Cháu 10 tháng ạ.)* |
| Mẹ Sato | あら、ベトナムの<ruby>民族衣装<rt>みんぞくいしょう</rt></ruby>ですね。アオザイ。<br>*(Ô, áo dài Việt Nam à. Áo dài.)* |
| Mai | はい、ベトナムの<ruby>伝統<rt>でんとう</rt></ruby>です。<ruby>義理<rt>ぎり</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>になる<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>日<rt>ひ</rt></ruby>ですので、ハナにも<ruby>着<rt>き</rt></ruby>せました。<br>*(Vâng, truyền thống Việt Nam. Hôm nay là ngày quan trọng trở thành gia đình thông gia, tôi cho Hana mặc.)* |
| Bố Sato | <ruby>素晴<rt>すば</rt></ruby>らしいですね。これから<ruby>家族<rt>かぞく</rt></ruby>として<ruby>長<rt>なが</rt></ruby>くお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いさせていただきます。<br>*(Tuyệt vời. Từ đây trở đi, chúng ta là gia đình lâu dài rồi.)* |
| Đại | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chúng tôi cũng xin gửi lời mong được giúp đỡ ạ.)* |

---

## Tình huống 9 — Chapel · 13:00, Đại đọc 兄スピーチ (bài phát biểu anh trai)

*Đại đứng lên bục cầm micro. Linh-Anh váy cô dâu trắng. Sato com-lê đen. Bố mẹ Đại + bố mẹ Sato ngồi bàn đầu.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>ご<ruby>夫婦<rt>ふうふ</rt></ruby>、リンアン、<ruby>本日<rt>ほんじつ</rt></ruby>はおめでとうございます。<ruby>新郎<rt>しんろう</rt></ruby><ruby>新婦<rt>しんぷ</rt></ruby>の<ruby>兄<rt>あに</rt></ruby>のグエンダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Thưa hai vợ chồng nhà Sato, Linh-Anh, hôm nay xin chúc mừng. Cháu là Nguyễn Đại, anh trai cô dâu.)* |
| Đại | <ruby>妹<rt>いもうと</rt></ruby>は<ruby>16歳<rt>じゅうろくさい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>にベトナムから<ruby>日本<rt>にほん</rt></ruby>へ<ruby>留学<rt>りゅうがく</rt></ruby>し、<ruby>南山大学<rt>なんざんだいがく</rt></ruby>の<ruby>情報学部<rt>じょうほうがくぶ</rt></ruby>を<ruby>卒業<rt>そつぎょう</rt></ruby>しました。<ruby>今<rt>いま</rt></ruby><ruby>25歳<rt>にじゅうごさい</rt></ruby>で<ruby>家族<rt>かぞく</rt></ruby>を<ruby>築<rt>きず</rt></ruby>く<ruby>姿<rt>すがた</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、<ruby>兄<rt>あに</rt></ruby>として<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感慨深<rt>かんがいぶか</rt></ruby>く<ruby>思<rt>おも</rt></ruby>います。<br>*(Em gái tôi từ năm 16 tuổi đã sang Nhật du học, tốt nghiệp khoa CNTT ĐH Nanzan. Giờ 25 tuổi xây dựng gia đình, là anh trai tôi vô cùng xúc động.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、リンアンをよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>頑固<rt>がんこ</rt></ruby>なところもありますが、<ruby>家族<rt>かぞく</rt></ruby><ruby>思<rt>おも</rt></ruby>いの<ruby>優<rt>やさ</rt></ruby>しい<ruby>妹<rt>いもうと</rt></ruby>です。<br>*(Sato à, nhờ cậu chăm sóc Linh-Anh. Em tôi cũng có lúc bướng bỉnh, nhưng là cô em hiền và yêu gia đình.)* |
| Đại | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>妹<rt>いもうと</rt></ruby>に<ruby>一言<rt>ひとこと</rt></ruby>。リンアン、<ruby>幸<rt>しあわ</rt></ruby>せにね。<br>*(Cuối cùng, một lời cho em gái: Linh-Anh, hạnh phúc nhé.)* |
| Linh-Anh | (khóc) Anh ơi! Em cảm ơn anh! Anh là thần tượng của em từ nhỏ. |
| Sato | <ruby>義兄<rt>ぎけい</rt></ruby>さん、<ruby>大切<rt>たいせつ</rt></ruby>にします。<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Anh, em sẽ quý cô ấy. Em hứa.)* |

---

## Tình huống 10 — Tiệc cưới sảnh banquet · 15:00, Tony+Yumi gửi lời chúc

*Vợ chồng Tony+Yumi homestay xưa của Đại sang dự (giọng Osaka).*

| Vai | Lời thoại |
|---|---|
| Tony | <ruby>大<rt>だい</rt></ruby>くん、リンアンちゃん、おめでとう！<br>*(Đại, Linh-Anh, chúc mừng!)* |
| Yumi | (giọng Osaka) ほんま、おめでとうやで〜！リンアンちゃん<ruby>綺麗<rt>きれい</rt></ruby>すぎやん！<br>*(Chúc mừng thật đấy! Linh-Anh xinh quá!)* |
| Linh-Anh | (cúi đầu) トニーさん、ユミさん、わざわざ<ruby>名古屋<rt>なごや</rt></ruby>まで<ruby>来<rt>き</rt></ruby>てくださってありがとうございます。<br>*(Anh Tony, chị Yumi, cảm ơn anh chị đã không quản đường xa đến Nagoya ạ.)* |
| Tony | <ruby>大<rt>だい</rt></ruby>くんが<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>来<rt>き</rt></ruby>てから<ruby>5年<rt>ごねん</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby>みたいなもんやで。<ruby>当然<rt>とうぜん</rt></ruby><ruby>来<rt>き</rt></ruby>るやろ。<br>*(Đại đến Osaka 5 năm rồi, như người nhà rồi. Đương nhiên phải đến.)* |
| Yumi | ハナちゃんもめっちゃ<ruby>可愛<rt>かわい</rt></ruby>くなったなぁ〜<br>*(Hana cũng dễ thương ghê.)* |
| Mai | (bế Hana lại) ハナ、おばあちゃんに<ruby>挨拶<rt>あいさつ</rt></ruby>しようね。<br>*(Hana, chào bà đi nào.)* |
| Hana | (bập bẹ) ba... ba... |
| Yumi | (cười) おばあちゃんやで〜！「ばあ」って<ruby>言<rt>い</rt></ruby>ってみ！<br>*(Bà cơ! Nói "bà" đi nào!)* |

---

## Tình huống 11 — Khách sạn Nagoya phòng nghỉ · 21:00, bố mẹ Đại nói chuyện riêng

*Tiệc cưới kết thúc. Đại, Mai, Hana cùng bố mẹ ngồi phòng khách sạn.*

| Vai | Lời thoại |
|---|---|
| Bố Đại | (VN) Hôm nay bài phát biểu của con xúc động lắm. Bố mẹ tự hào. |
| Đại | (VN) Dạ con cảm ơn bố. Linh-Anh giờ thành người Nhật rồi. |
| Mẹ Đại | (VN) Linh-Anh xa nhà từ 16 tuổi, mẹ thương lắm. Nhưng có Sato rồi, mẹ yên tâm. |
| Mai | (VN, rót trà) Bố mẹ uống trà ạ. Hana ngủ rồi. |
| Bố Đại | (VN) Mai à, cảm ơn con. Con là chỗ dựa của thằng Đại. |
| Mai | (VN) Dạ bố. Con với anh Đại đã bàn — sau khi anh tốt nghiệp, cả nhà sẽ ở Nhật ít nhất 5 năm nữa. Khi nào Hizashi mở thị trường Việt Nam thì về. |
| Mẹ Đại | (VN) Ờ. Bố mẹ ủng hộ các con. Cứ làm cái gì các con thấy đúng. Bố mẹ ở Việt Nam, sức khoẻ vẫn ổn, không phải lo. |
| Đại | (VN) Dạ. Tháng 12 con quyết Cybozu hay Hizashi startup. Lúc đó con gọi bố mẹ báo chi tiết. |
| Bố Đại | (VN) Ờ. Cứ chọn nơi tâm hợp con à. Tiền tài nay có mai mất, làm việc mình tin mới bền. |

---

## Tình huống 12 — Cảnh tiếng Việt — gọi Hương (bạn thân Mai) khoe đám cưới

*Sau khi về Osaka. Mai gọi Hương — bạn thân từ Yamato School, giờ ở Yokohama.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Hương ơi! Cuối tuần rồi tao đi đám cưới em gái anh Đại tại Nagoya. Thằng Sato kỹ sư Toyota Boshoku ấy. |
| Hương | (VN) Trời ơi vui ghê! Đẹp không? |
| Mai | (VN) Đẹp lắm. Chapel kiểu Tây, váy cô dâu trắng. Linh-Anh khóc cả buổi. Hana nhà tao làm flower girl, mặc áo dài đỏ. Cute xỉu. |
| Hương | (VN) Mày kể về 婚姻届 đi. Tao với Kentaro cũng sắp tính. |
| Mai | (VN) À, ở thị uỷ Higashi-ku Nagoya. Linh-Anh là người Việt thì cần 婚姻要件具備証明書 lấy từ ĐSQ Việt Nam, kèm bản dịch tiếng Nhật, hộ chiếu và 在留カード. Có 2 người làm chứng — anh Đại làm chứng cho em. |
| Hương | (VN) À ghi rồi. Còn visa 結婚? |
| Mai | (VN) Sato xin visa 結婚 (kết hôn) cho Linh-Anh — nhanh hơn 家族滞在. Tháng 8 mới đổi xong. |
| Hương | (VN) Tao hiểu rồi, cảm ơn mày. À chuyện công việc anh Đại sao rồi? |
| Mai | (VN) Anh có 3 内定 rồi — Mercari Tokyo, Cybozu Osaka, LY Fukuoka. Đang phân vân giữa Cybozu với all-in Hizashi. Tháng 12 quyết. |
| Hương | (VN) Trời ơi, kinh khủng. Mày ủng hộ cái nào? |
| Mai | (VN) Tao nói thật rồi — em ủng hộ anh ở mọi phương án. Nhưng nếu chọn Hizashi tao sẵn sàng đẩy tour guide lên ¥150k/tháng để gánh phần thiếu. |
| Hương | (VN) Mày tuyệt vời ghê. Vợ thế ai chả mê. |
| Mai | (VN) Hihi cảm ơn. Mày ngủ ngon nhé. |

---

## Đọng lại chương 3

Đại và Mai trải qua tháng 6-7/2029 đầy cột mốc gia đình: **Hana 10 tháng đi chập chững** + nói được "ba mẹ bà". Khám 10 tháng ở 保健センター với cấu trúc**「10ヶ月健診の予約を取っております」**và hỏi về thói quen ngủ. Tham quan 認可保育園, học khái niệm **慣らし保育** (1-2 tuần làm quen trường tăng giờ dần) và **除去食** (suất ăn dị ứng). Xin lỗi hàng xóm khi Hana khóc đêm bằng「ご迷惑をおかけしているかと思います、申し訳ございません」. Em gái Linh-Anh cưới Sato tại Nagoya 25/7 — Đại nộp **婚姻届** ở thị uỷ làm chứng, đọc **兄スピーチ** trang trọng, gặp **義理の家族** (cha mẹ Sato) với keigo gia đình thông gia「これから家族として長くお付き合いさせていただきます」. Tối khách sạn bố mẹ nói "chọn nơi tâm hợp" — Đại bớt áp lực decision tháng 12.

> Từ vựng & mẫu câu chương này: 10ヶ月健診・母子手帳・順調に成長しています・認可保育園・慣らし保育・除去食・アレルギー対応・ご迷惑をおかけしているかと思います・申し訳ございません・お気遣いいただきありがとうございます・婚姻届・婚姻要件具備証明書・証人・結婚ビザ・家族滞在・義理の家族・兄スピーチ・感慨深く思います・大切にします・約束します

## Bí quyết chương

- **「ご迷惑をおかけしているかと思います」**: Mẫu xin lỗi chủ động với hàng xóm — Nhật rất xem trọng việc tự nhận trách nhiệm trước khi bị phàn nàn.
- **慣らし保育**: Hệ thống nhà trẻ Nhật bắt buộc 1-2 tuần làm quen, mẹ phải xin nghỉ làm — quan trọng cho gia đình Việt ở Nhật biết để chuẩn bị.
- **兄スピーチ**: Cấu trúc 3 phần — kể quá khứ em gái, gửi gắm chú rể, lời chúc cuối — chuẩn đám cưới Nhật.
- **Gia đình thông gia**: Gọi cha mẹ vợ/chồng「お父様、お母様」, em rể/dâu「義理の弟・妹」 — phải thuộc.
- **「大切にします」「約束します」**: Câu chú rể nói với anh trai cô dâu — cấu trúc cố định trong đám cưới Nhật.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 健診 | けんしん | KIỆN CHẨN | khám sức khoẻ |
| 予約 | よやく | DỰ ƯỚC | đặt lịch |
| 母子手帳 | ぼしてちょう | MẪU TỬ THỦ TRƯỚNG | sổ mẹ con |
| 体重 | たいじゅう | THỂ TRỌNG | cân nặng |
| 身長 | しんちょう | THÂN TRƯỜNG | chiều cao |
| 順調 | じゅんちょう | THUẬN ĐIỀU | thuận lợi |
| 成長 | せいちょう | THÀNH TRƯỞNG | tăng trưởng |
| 平均 | へいきん | BÌNH QUÂN | trung bình |
| 安心 | あんしん | AN TÂM | yên tâm |
| 園長 | えんちょう | VIÊN TRƯỞNG | hiệu trưởng |
| 見学 | けんがく | KIẾN HỌC | tham quan |
| 入園 | にゅうえん | NHẬP VIÊN | nhập trường mẫu giáo |
| 希望 | きぼう | HY VỌNG | mong muốn |
| 保育 | ほいく | BẢO DỤC | giữ trẻ |
| 認可保育園 | にんかほいくえん | NHẬN KHẢ BẢO DỤC VIÊN | nhà trẻ được công nhận |
| 母親 | ははおや | MẪU THÂN | mẹ |
| 給食 | きゅうしょく | CẤP THỰC | bữa ăn trường |
| 対応 | たいおう | ĐỐI ỨNG | xử lý |
| 反応 | はんのう | PHẢN ỨNG | phản ứng |
| 診断書 | しんだんしょ | CHẨN ĐOÁN THƯ | giấy chẩn đoán |
| 除去食 | じょきょしょく | TRỪ KHỨ THỰC | suất ăn loại trừ dị ứng |
| 迷惑 | めいわく | MÊ HOẶC | làm phiền |
| 気遣い | きづかい | KHÍ KHIỂN | quan tâm |
| 遠慮 | えんりょ | VIỄN LỰ | khách sáo |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | bảo hiểm xã hội |
| 婚姻届 | こんいんとどけ | HÔN NHÂN ĐỆ | giấy đăng ký kết hôn |
| 夫婦 | ふうふ | PHU PHỤ | vợ chồng |
| 婚姻要件具備証明書 | こんいんようけんぐびしょうめいしょ | HÔN NHÂN YẾU KIỆN CỤ BỊ CHỨNG MINH THƯ | giấy chứng nhận đủ điều kiện kết hôn |
| 大使館 | たいしかん | ĐẠI SỨ QUÁN | đại sứ quán |
| 在留 | ざいりゅう | TẠI LƯU | lưu trú |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 証人 | しょうにん | CHỨNG NHÂN | người làm chứng |
| 署名 | しょめい | THỰ DANH | chữ ký |
| 結婚 | けっこん | KẾT HÔN | kết hôn |
| 義理 | ぎり | NGHĨA LÝ | nghĩa tình thông gia |
| 民族衣装 | みんぞくいしょう | DÂN TỘC Y TRANG | trang phục dân tộc |
| 伝統 | でんとう | TRUYỀN THỐNG | truyền thống |
| 新郎 | しんろう | TÂN LANG | chú rể |
| 新婦 | しんぷ | TÂN PHỤ | cô dâu |
| 留学 | りゅうがく | LƯU HỌC | du học |
| 卒業 | そつぎょう | TỐT NGHIỆP | tốt nghiệp |
| 築く | きずく | TRÚC | xây dựng |
| 感慨深い | かんがいぶかい | CẢM KHÁI THÂM | xúc động sâu sắc |
| 頑固 | がんこ | NGOAN CỐ | bướng bỉnh |
| 義兄 | ぎけい | NGHĨA HUYNH | anh rể |
| 大切 | たいせつ | ĐẠI THIẾT | quý trọng |
| 約束 | やくそく | ƯỚC THÚC | hứa |
| 挨拶 | あいさつ | AI TẠT | chào |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000004, 800000024, NULL, 'markdown_book', 'T4. Hizashi beta 50 user — phỏng vấn người dùng + iterate', '# Sách sinh viên Đại học Osaka · T4. Hizashi beta 50 user — phỏng vấn người dùng + iterate

> **Mục tiêu nhân vật:** Đại 24 tuổi, tháng 7-8/2029. Học các mẫu hội thoại tiếng Nhật của founder startup giai đoạn beta: (1) phỏng vấn user (ユーザーインタビュー) hỏi pain point, (2) xin user phản hồi「率直なご意見をお聞かせください」, (3) trao đổi với senpai về analytics retention, (4) trình bày số liệu beta với sensei, (5) thương lượng với người dùng nâng cấp tính năng, (6) cảm ơn beta user khi tặng quà — keigo nhẹ với người trẻ.

---

## Bối cảnh

Tháng 7-8/2029. Hizashi từ v0.5 → v0.7 với 50 beta user thật. Hồ sơ: 25 du học sinh tại Nhật (luyện N3-N2), 15 TTS/SSW (luyện N4-N3), 10 ở Việt Nam (luyện N5-N4 chuẩn bị du học 2030). Đại phỏng vấn 1-1 với 10 user qua Google Meet để hiểu pain point thật. Yamada-senpai phân tích retention. Em gái Linh-Anh đề xuất thêm course business JP. Chương này tập trung các mẫu câu **founder phỏng vấn user** và **tiếng Nhật ngành startup/SaaS**.

---

## Tình huống 1 — Senri-chuo phòng làm việc · 1/7 14:00, post bài Facebook group du học sinh Việt

| Vai | Lời thoại |
|---|---|
| Đại | (VN, gõ post Facebook group "Du học sinh Việt tại Nhật" 5000 thành viên) "Chào mọi người, mình là Đại — sinh viên năm 4 ĐH Osaka. Mình đang xây Hizashi — app học JLPT cho người Việt. AI tutor giải thích ngữ pháp bằng tiếng Việt, dạy theo bối cảnh người Việt hay sai. Beta miễn phí 50 suất, ưu tiên các bạn đang luyện N3-N1. Đăng ký Google Form bên dưới ạ! 🎌" |
| Đại | (VN, độc thoại 1 ngày sau) 30 đơn rồi! Nhanh hơn dự kiến. |
| Đại | (VN, 1 tuần sau) Đầy 50 suất. Đã tạo group LINE riêng cho beta user. |

---

## Tình huống 2 — Google Meet với user 1 (Trang, N3) · 5/7 20:00

| Vai | Lời thoại |
|---|---|
| Đại | こんばんは、トランさん。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<br>*(Chào tối Trang. Hôm nay cảm ơn em đã dành thời gian.)* |
| Trang | こんばんは、ダイ<ruby>先輩<rt>せんぱい</rt></ruby>！(VN) Em xưng anh em bằng tiếng Việt cho thoải mái nhé! |
| Đại | (VN) OK luôn. Anh ghi âm để phân tích sau nhé, không lan ra ngoài. |
| Trang | (VN) Dạ vâng anh. |
| Đại | (VN) Em dùng Hizashi 2 tuần rồi. Trải nghiệm chung sao em? |
| Trang | (VN) AI tutor xịn quá anh ơi! Em hay sai cấu trúc 〜てしまう với 〜ちゃう — em hỏi AI nó giải thích bằng tiếng Việt rõ ràng, kèm ví dụ người Việt hay nhầm. Cái này Duolingo không có. |
| Đại | (VN) Còn cái nào khó dùng không? Anh muốn nghe thẳng. |
| Trang | (VN) SRS từ vựng hơi cứng. Mỗi ngày 20 từ mới là quá nhiều — em hay drop. Anh có thể cho user chọn 10/15/20 không? |
| Đại | (VN) Ghi nhận. Còn gì nữa? |
| Trang | (VN) Em đi tàu Hankyu 30 phút mỗi sáng, không có wifi. Mong có chế độ offline để học từ vựng trên tàu. |
| Đại | (VN) Hay quá! Offline mode đã có trong roadmap v0.8 rồi. Anh sẽ ưu tiên. |
| Trang | (VN) Cảm ơn anh! |

---

## Tình huống 3 — Google Meet với user 2 (Tuấn, TTS N4) · 8/7 21:00

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Tuấn ơi, em là TTS ngành cơ khí đúng không? Em đang luyện N4 cho thi tháng 12? |
| Tuấn | (VN) Vâng anh. Em sang Nhật 1.5 năm rồi, làm ở nhà máy Aichi. |
| Đại | (VN) Em cần Hizashi cho việc gì cụ thể nhất? |
| Tuấn | (VN) Em cần học từ vựng nhà máy — như 安全靴 (giày bảo hộ), 朝礼 (họp sáng), 段取り (chuẩn bị công đoạn). Mấy từ này từ điển có nhưng không có ngữ cảnh. |
| Đại | (VN) Ghi nhận. Anh có ý tưởng course riêng cho TTS — "Tiếng Nhật nhà máy 100 tình huống". Em có hứng thú không? |
| Tuấn | (VN) Quá hứng thú anh ơi! Em sẵn sàng trả phí cho cái này. |
| Đại | (VN) Hay thật. Em đề xuất giá thế nào? |
| Tuấn | (VN) Em nghĩ ¥500/tháng là OK. ¥1000 thì em phải cân nhắc. |
| Đại | (VN) Ghi nhận. Anh cảm ơn em rất nhiều. Em là TTS đầu tiên nói rõ chuyện này cho anh. |
| Tuấn | (VN) Dạ. Em mong app sớm có course nhà máy! |

---

## Tình huống 4 — Lab Inoue · 12/7 14:00, báo cáo phân tích user persona với Yamada

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>、ベータユーザー<ruby>50名<rt>ごじゅうめい</rt></ruby>のペルソナ<ruby>分析<rt>ぶんせき</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Anh ơi, em chia sẻ phân tích persona 50 beta user.)* |
| Yamada | おう、<ruby>見<rt>み</rt></ruby>せて。<br>*(Ờ, xem đi.)* |
| Đại | (mở Notion) <ruby>第一<rt>だいいち</rt></ruby>セグメントは<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>25名<rt>にじゅうごめい</rt></ruby>、N3-N2<ruby>受験者<rt>じゅけんしゃ</rt></ruby>。<ruby>第二<rt>だいに</rt></ruby>セグメントは<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby><ruby>15名<rt>じゅうごめい</rt></ruby>、<ruby>工場勤務<rt>こうじょうきんむ</rt></ruby>でN4-N3。<ruby>第三<rt>だいさん</rt></ruby>はベトナム<ruby>在住<rt>ざいじゅう</rt></ruby><ruby>10名<rt>じゅうめい</rt></ruby>、<ruby>留学<rt>りゅうがく</rt></ruby><ruby>準備中<rt>じゅんびちゅう</rt></ruby>のN5-N4。<br>*(Phân khúc 1: 25 du học sinh, thi N3-N2. Phân khúc 2: 15 TTS làm nhà máy, N4-N3. Phân khúc 3: 10 người ở Việt Nam, chuẩn bị du học, N5-N4.)* |
| Yamada | このセグメンテーションいいね。<ruby>論文<rt>ろんぶん</rt></ruby>のexperiments<ruby>章<rt>しょう</rt></ruby>でそのまま<ruby>使<rt>つか</rt></ruby>えるよ。<br>*(Phân khúc tốt. Có thể dùng trực tiếp ở chương experiments của paper.)* |
| Đại | はい。<ruby>新<rt>あたら</rt></ruby>しい<ruby>発見<rt>はっけん</rt></ruby>がありました。<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>セグメントが<ruby>工場用語<rt>こうじょうようご</rt></ruby>コースを<ruby>強<rt>つよ</rt></ruby>く<ruby>求<rt>もと</rt></ruby>めています。<br>*(Có phát hiện mới: phân khúc TTS đòi rất mạnh course từ vựng nhà máy.)* |
| Yamada | おお、それは<ruby>競合<rt>きょうごう</rt></ruby>が<ruby>埋<rt>う</rt></ruby>めていないニッチだな。<ruby>差別化<rt>さべつか</rt></ruby>ポイントになりそう。<br>*(Ồ, đây là ngách đối thủ chưa lấp. Có thể thành điểm khác biệt.)* |

---

## Tình huống 5 — Lab Inoue · 12/7 14:30, retention analysis 4 tuần

| Vai | Lời thoại |
|---|---|
| Đại | リテンション<ruby>分析<rt>ぶんせき</rt></ruby>です。<ruby>第1週<rt>だいいっしゅう</rt></ruby>は50/50で100%、<ruby>第2週<rt>だいにしゅう</rt></ruby>45/50で90%、<ruby>第3週<rt>だいさんしゅう</rt></ruby>40/50で80%、<ruby>第4週<rt>だいよんしゅう</rt></ruby>38/50で76%です。<br>*(Phân tích retention: tuần 1 100%, tuần 2 90%, tuần 3 80%, tuần 4 76%.)* |
| Yamada | <ruby>4週目<rt>よんしゅうめ</rt></ruby>で76%は<ruby>異常<rt>いじょう</rt></ruby>に<ruby>高<rt>たか</rt></ruby>いぞ。SaaS<ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>平均<rt>へいきん</rt></ruby>は30-40%だよ。<br>*(Tuần 4 mà 76% là cao bất thường. Trung bình SaaS chỉ 30-40% thôi.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか？<ruby>計算<rt>けいさん</rt></ruby><ruby>間違<rt>まちが</rt></ruby>っていませんよね？<br>*(Thật ạ? Em không tính nhầm chứ?)* |
| Yamada | <ruby>計算<rt>けいさん</rt></ruby>は<ruby>合<rt>あ</rt></ruby>ってる。でも<ruby>気<rt>き</rt></ruby>をつけて。ベータユーザーは<ruby>知<rt>し</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いや<ruby>応援<rt>おうえん</rt></ruby>してくれる<ruby>人<rt>ひと</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いから、<ruby>数値<rt>すうち</rt></ruby>がインフレしがち。<ruby>本物<rt>ほんもの</rt></ruby>のリテンションは<ruby>200名<rt>にひゃくめい</rt></ruby>くらいの<ruby>段階<rt>だんかい</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かる。<br>*(Số đúng. Nhưng cẩn thận. Beta user thường là người quen hoặc fan ủng hộ, số dễ bị inflate. Retention thật phải đợi đến giai đoạn 200 user.)* |
| Đại | なるほど、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>過信<rt>かしん</rt></ruby>しないようにします。<br>*(Vâng, em hiểu. Em sẽ không quá tự tin.)* |
| Yamada | でも<ruby>方向<rt>ほうこう</rt></ruby><ruby>性<rt>せい</rt></ruby>は<ruby>正<rt>ただ</rt></ruby>しいよ。AI Tutor がキラーフィーチャーになっている<ruby>証拠<rt>しょうこ</rt></ruby>だ。<br>*(Nhưng hướng đi đúng. Chứng cứ AI Tutor đang là killer feature.)* |

---

## Tình huống 6 — Quán cafe Senri-chuo · 15/7, gặp 3 beta user offline

*Đại tổ chức buổi gặp offline với 3 du học sinh dùng Hizashi gần khu Senri-chuo.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Cảm ơn 3 em đã dành cả chiều thứ 7. Anh mời nước nhé. |
| User Hoa | (VN) Dạ anh. Em uống matcha latte ạ. |
| User Minh | (VN) Em iced coffee ạ. |
| User Phương | (VN) Em hojicha ạ. |
| Đại | (VN) OK. Buổi nay không có agenda cứng. Anh muốn nghe các em chia sẻ thẳng — Hizashi tốt chỗ nào, dở chỗ nào, các em sẵn sàng trả tiền không. |
| Hoa | (VN) Em yêu phần AI Tutor. Hôm trước em hỏi cấu trúc 〜ばかりに và 〜ばかりで, AI giải thích chuẩn không lệch nghĩa. Sách giáo khoa Nhật giải thích bằng tiếng Nhật khó hiểu, AI tiếng Việt mới ngấm. |
| Minh | (VN) Em đồng ý. Nhưng UI hơi rối. Nhiều nút quá. Em mất 3 ngày mới biết hết tính năng. Onboarding ngắn hơn được không anh? |
| Đại | (VN, ghi vào Notion) Onboarding rút gọn. Ghi nhận. |
| Phương | (VN) Anh ơi, em hỏi thật — beta xong anh tính bao nhiêu? Em ¥500/tháng còn OK, ¥1000 khó. |
| Đại | (VN) Anh đang nghĩ freemium. Course N5 N4 miễn phí, N3+ premium ¥500/tháng. Em thấy sao? |
| Hoa | (VN) Hợp lý anh. Em sẵn sàng trả. |
| Minh | (VN) Em cũng OK. Du học sinh ¥500 không vấn đề. |
| Phương | (VN) Anh có sinh viên discount không? Em sinh viên ngành kinh tế ĐH Kobe, tiền hạn chế. |
| Đại | (VN) Anh ghi nhận. Sinh viên có thẻ học sinh — giảm 30% = ¥350/tháng. |
| 3 user | (VN) Quá rẻ anh ơi! Deal! |
| Đại | (VN) Cảm ơn các em. Đây là quà nhỏ — phiếu Starbucks ¥1000 cảm ơn các em làm beta user. |
| Hoa | (VN) Trời ơi anh chu đáo quá. Em sẽ giới thiệu bạn em vào beta. |

---

## Tình huống 7 — Senri-chuo apt · 20/7, Linh-Anh đề xuất Business JP

*LINE call với Linh-Anh — em gái Đại sắp cưới Sato, kỹ sư Toyota Boshoku.*

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (VN) Anh ơi, em dùng Hizashi 3 tuần rồi. AI tutor xịn. Nhưng em có 1 đề xuất quan trọng. |
| Đại | (VN) Nói anh nghe. |
| Linh-Anh | (VN) Em làm Toyota Boshoku — văn phòng gặp khách hàng nhiều. Em cần học **tiếng Nhật thương mại (ビジネス日本語)** keigo cao cấp như 「ご足労いただき」「ご査収ください」「お忙しい中恐縮ですが」. Course này thị trường VN chưa có ai làm tử tế. |
| Đại | (VN) Hay đấy. Anh thấy 15 user khác cũng đề xuất tương tự rồi. |
| Linh-Anh | (VN) Anh ơi, em hứa làm content advisor cho course Business JP. Em làm 2 năm ở Toyota rồi, biết bộ keigo thực dùng văn phòng Nhật. Em không lấy phí. |
| Đại | (VN) Trời ơi, em giúp anh thật à? Anh cảm ơn em! |
| Linh-Anh | (VN) Em em ruột mà anh, ngại gì. Hơn nữa, Sato cũng có thể tư vấn keigo gọi điện khách hàng. |
| Đại | (VN) OK deal. Anh add em vào team Notion. Course Business JP launch v0.8 — tháng 9. |

---

## Tình huống 8 — Lab Inoue · 25/7, trình sensei số liệu beta

*Báo cáo định kỳ với Inoue-sensei. Đại mở dashboard analytics.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はHizashiベータ<ruby>50名<rt>ごじゅうめい</rt></ruby>の<ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をさせていただきます。<br>*(Thưa thầy, hôm nay em xin báo cáo giữa kỳ của 50 beta user Hizashi.)* |
| Inoue | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em trình bày đi.)* |
| Đại | <ruby>第一<rt>だいいち</rt></ruby>に、<ruby>4週目<rt>よんしゅうめ</rt></ruby>リテンションが76%です。SaaS<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>平均<rt>へいきん</rt></ruby>の30-40%を<ruby>大<rt>おお</rt></ruby>きく<ruby>上回<rt>うわまわ</rt></ruby>っています。<br>*(Thứ nhất, retention tuần 4 đạt 76%, vượt xa trung bình SaaS 30-40%.)* |
| Đại | <ruby>第二<rt>だいに</rt></ruby>に、ユーザー<ruby>1人<rt>ひとり</rt></ruby><ruby>当<rt>あ</rt></ruby>たり<ruby>平均<rt>へいきん</rt></ruby><ruby>週<rt>しゅう</rt></ruby>5<ruby>回<rt>かい</rt></ruby> AI Tutor とチャットしています。これがキラーフィーチャーであることを<ruby>示唆<rt>しさ</rt></ruby>します。<br>*(Thứ hai, mỗi user trung bình chat AI Tutor 5 lần/tuần, gợi ý đây là killer feature.)* |
| Đại | <ruby>第三<rt>だいさん</rt></ruby>に、<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>セグメントから<ruby>工場用語<rt>こうじょうようご</rt></ruby>コースの<ruby>強<rt>つよ</rt></ruby>い<ruby>需要<rt>じゅよう</rt></ruby>が<ruby>発見<rt>はっけん</rt></ruby>されました。<ruby>競合<rt>きょうごう</rt></ruby><ruby>未充足<rt>みじゅうそく</rt></ruby>のニッチです。<br>*(Thứ ba, phát hiện nhu cầu mạnh từ phân khúc TTS về course từ vựng nhà máy — ngách đối thủ chưa có.)* |
| Inoue | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>論文<rt>ろんぶん</rt></ruby>の results <ruby>章<rt>しょう</rt></ruby>に<ruby>使<rt>つか</rt></ruby>えそうです。ただし、<ruby>注意点<rt>ちゅういてん</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つ。<br>*(Tuyệt vời. Có thể dùng cho chương results. Tuy nhiên có một lưu ý.)* |
| Đại | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nghe.)* |
| Inoue | <ruby>50名<rt>ごじゅうめい</rt></ruby>のサンプルサイズは<ruby>統計的<rt>とうけいてき</rt></ruby>には<ruby>小<rt>ちい</rt></ruby>さいです。<ruby>論文<rt>ろんぶん</rt></ruby>では「<ruby>探索的研究<rt>たんさくてきけんきゅう</rt></ruby>」と<ruby>位置<rt>いち</rt></ruby>づけてください。<ruby>200名<rt>にひゃくめい</rt></ruby>になったら<ruby>検定<rt>けんてい</rt></ruby>が<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Cỡ mẫu 50 user là nhỏ về mặt thống kê. Trong paper hãy định vị là "nghiên cứu thăm dò". Khi có 200 user mới làm kiểm định được.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。Exploratory study として<ruby>記述<rt>きじゅつ</rt></ruby>します。<br>*(Em đã rõ. Em sẽ mô tả là exploratory study.)* |

---

## Tình huống 9 — Senri-chuo apt · 28/7, prioritize roadmap v0.8

*Đại mở Notion roadmap, Mai pha trà.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, gõ) Top 5 phản hồi từ 50 beta user:<br>1. "Course Business JP" — 15 user (Linh-Anh + người Việt văn phòng)<br>2. "Offline mode" — 12 user (đi tàu)<br>3. "Voice feedback" — 8 user (luyện phát âm)<br>4. "Dark mode" — 6 user<br>5. "Study group rooms" — 5 user |
| Đại | (VN) Anh ưu tiên thế này:<br>**v0.8 (8-9/2029)**: Business JP + Offline + Dark mode<br>**v0.9 (10-11/2029)**: Course từ vựng nhà máy cho TTS<br>**v1.0 (1/2030)**: Voice phản hồi + Study group + freemium pricing |
| Mai | (VN) Course nhà máy hay thật. Tour guide của em cũng có khách là kỹ sư Việt sang Nhật, lúc đó em gửi anh số liệu nhu cầu. |
| Đại | (VN) Tuyệt. Có thật em làm content advisor cho course tour guide tiếng Nhật được không? Em thuộc nội dung. |
| Mai | (VN) Được chứ. Em làm thêm advisor không lấy phí. Sau này Hizashi grow, em hưởng cổ phần là OK. |
| Đại | (VN, ôm Mai) Em là cofounder của anh thật rồi. Yêu em. |

---

## Tình huống 10 — Google Meet với Cybozu Tanaka-san · 1/8, share update Hizashi

*Đại update Cybozu Tanaka-san về tiến độ — vì 内定 còn treo.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>世話<rt>せわ</rt></ruby>になっております。Hizashiの<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>させていただきたいです。<br>*(Anh Tanaka, em chia sẻ tiến độ Hizashi ạ.)* |
| Tanaka | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em trình bày đi.)* |
| Đại | ベータユーザー<ruby>50名<rt>ごじゅうめい</rt></ruby>、<ruby>4週目<rt>よんしゅうめ</rt></ruby>リテンション76%、ビジネスJPの<ruby>強<rt>つよ</rt></ruby>い<ruby>需要<rt>じゅよう</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>しました。<br>*(50 beta user, retention tuần 4 đạt 76%, phát hiện nhu cầu mạnh business JP.)* |
| Tanaka | <ruby>数値<rt>すうち</rt></ruby>がいいですね。<ruby>大<rt>だい</rt></ruby>くん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くけど、もうサイボウズより Hizashi に<ruby>傾<rt>かたむ</rt></ruby>いている？<br>*(Số đẹp đấy. Đại à, hỏi thẳng — cậu đã nghiêng về Hizashi hơn Cybozu chưa?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>しますと、<ruby>判断<rt>はんだん</rt></ruby>は<ruby>12月<rt>じゅうにがつ</rt></ruby>のユーザー<ruby>200名<rt>にひゃくめい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>見<rt>み</rt></ruby>てからにしたいです。<br>*(Em xin nói thật, em muốn quyết sau khi xem kết quả 200 user tháng 12.)* |
| Tanaka | <ruby>賢明<rt>けんめい</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>だ。サイボウズも<ruby>君<rt>きみ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>を<ruby>応援<rt>おうえん</rt></ruby>するよ。<ruby>1<rt>ひと</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>がある。サイボウズに<ruby>入社<rt>にゅうしゃ</rt></ruby>するなら<ruby>副業<rt>ふくぎょう</rt></ruby>として Hizashi を<ruby>続<rt>つづ</rt></ruby>けてもいい。<ruby>2年<rt>にねん</rt></ruby><ruby>経<rt>た</rt></ruby>って<ruby>勝<rt>か</rt></ruby>てそうなら<ruby>独立<rt>どくりつ</rt></ruby>する、というハイブリッドルートだ。<br>*(Quyết định khôn ngoan. Cybozu cũng ủng hộ. Một đề xuất: nếu cậu vào Cybozu thì làm Hizashi như 副業 cũng được. 2 năm sau thấy khả năng thắng thì độc lập — chiến lược lai đấy.)* |
| Đại | ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>魅力的<rt>みりょくてき</rt></ruby>なご<ruby>提案<rt>ていあん</rt></ruby>です。<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>させていただきます。<br>*(Em cảm ơn anh. Đề xuất rất hấp dẫn. Em sẽ cân nhắc nghiêm túc.)* |

---

## Tình huống 11 — Senri-chuo apt · 5/8 tối, Đại reflect với Mai

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, Tanaka-san đưa ra option "Cybozu + Hizashi 副業" — 2 năm sau quyết. |
| Mai | (VN) Anh thấy sao? |
| Đại | (VN) Hấp dẫn em à. Có thu nhập ¥6.7M, bảo hiểm, vẫn làm Hizashi tối + cuối tuần. 2 năm tích vốn rồi all-in. |
| Mai | (VN) Nhưng làm 2 job có cháy không anh? Hana còn nhỏ. |
| Đại | (VN) Đúng. Anh sợ cháy. Mà nếu chọn all-in Hizashi, em phải gánh kinh tế chính. Tour guide ¥150k/tháng chưa đủ cho cả nhà. |
| Mai | (VN) Em hiểu. Mình còn 4 tháng để suy nghĩ. Quan trọng là Hana 1 tuổi tháng 8 năm sau — sinh nhật phải có ba. |
| Đại | (VN) Đúng. Cybozu 副業 thì giờ giấc ổn, anh vẫn về kịp ăn cơm với Hana. All-in startup thì 18h/ngày 7 ngày/tuần — Hana sẽ thấy ba ít. |
| Mai | (VN) Anh suy nghĩ kỹ nhé. Quyết kiểu nào em cũng theo. |
| Đại | (VN, ôm vợ) Cảm ơn em. |

---

## Tình huống 12 — Cảnh tiếng Việt — call Tuấn (em cohort sách 19-20, đang học ở Kobe)

*Đại gọi Tuấn — em cohort sách 19-20, hiện học ngành kinh tế/IT ở Kobe, beta tester thân thiết và là người Đại đang nhắm làm cofounder mảng biz sau này.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Alô Đại! Sao mày? |
| Đại | (VN) Tao update 1 vài chuyện. Beta 50 user đã đầy, retention tuần 4 đạt 76%. AI Tutor là killer feature. |
| Tuấn | (VN) Trời 76% là đỉnh đấy. Mày ăn may hay hệ thống tốt thật? |
| Đại | (VN) Cả 2. Yamada-senpai nhắc beta dễ bị inflate vì là người quen. Phải đợi 200 user mới biết thật. |
| Tuấn | (VN) OK. Còn course Business JP với từ vựng nhà máy — content ai làm? |
| Đại | (VN) Linh-Anh em gái tao làm content Business JP (cô ấy ở Toyota Boshoku). Course nhà máy tao đang tìm 1 TTS thâm niên. |
| Tuấn | (VN) Mày add tao vào Notion. Tao lo được mảng cộng đồng người Việt — viết nội dung review, chạy nhóm Facebook, kéo beta user từ hội du học sinh. 3 tuần tao gom thêm 30-40 user cho mày. |
| Đại | (VN) Quá ngon. Add tao tao mời ¥30k/tháng giai đoạn này — sau Series A lên ¥80k. |
| Tuấn | (VN) Đừng trả tiền. Mày để tao cổ phần 5% là OK. Tao tin Hizashi sẽ thành. |
| Đại | (VN) Trời mày tuyệt vời. Anh em ký SAFE note tuần sau nhé. |
| Tuấn | (VN) Ok deal. À, mày quyết Cybozu hay all-in chưa? |
| Đại | (VN) Chưa. Tanaka-san offer "Cybozu + 副業 Hizashi 2 năm rồi all-in". Tao đang nghiêng kèo đó. |
| Tuấn | (VN) Hợp lý. Có vợ con thì phải an toàn 1 phần. Tao support mày kèo nào cũng được. |
| Đại | (VN) Cảm ơn mày. Khuya rồi, ngủ ngon. |
| Tuấn | (VN) Mày cũng vậy. Cho Hana cái ôm hộ tao. |

---

## Đọng lại chương 4

Tháng 7-8/2029, Hizashi đạt cột mốc **50 beta user đầy nhanh hơn dự kiến**, **retention tuần 4 đạt 76%** (vượt xa trung bình SaaS 30-40%). Học các mẫu founder Nhật: **xin user phản hồi** qua Google Meet,**「率直なご意見をお聞かせください」**, **trình kết quả với sensei** theo cấu trúc 「第一に・第二に・第三に」, **báo cáo Tanaka-san** bằng「正直に申しますと」, **share roadmap** với cofounder. Yamada-senpai cảnh báo "beta dễ bị inflate, đợi 200 user mới biết retention thật" — bài học khiêm tốn với số liệu. Sensei Inoue chỉ "Cỡ mẫu 50 là nhỏ về thống kê, định vị là **探索的研究 (exploratory study)**". Em gái Linh-Anh tình nguyện làm advisor course **Business JP** (keigo văn phòng Toyota), Mai tình nguyện làm advisor course **tour guide JP**. Tanaka-san Cybozu đưa option "Cybozu + 副業 Hizashi 2 năm rồi all-in" — Đại nghiêng kèo này. Quyết định tháng 12.

> Từ vựng & mẫu câu chương này: ベータユーザー・リテンション・SaaS業界・キラーフィーチャー・ユーザーインタビュー・ペルソナ分析・セグメンテーション・差別化ポイント・競合未充足のニッチ・率直なご意見をお聞かせください・第一に・第二に・第三に・サンプルサイズ・探索的研究・exploratory study・freemium・サイボウズ + 副業・ハイブリッドルート・SAFE note・content advisor

## Bí quyết chương

- **「率直なご意見をお聞かせください」**: Câu mở đầu user interview tiếng Nhật — quan trọng hơn câu hỏi cụ thể, vì làm user mở lòng.
- **Cấu trúc 「第一に・第二に・第三に」**: Trình kết quả với sensei/cấp trên — chuẩn doanh nghiệp Nhật, tránh nói lan man.
- **Số liệu beta dễ inflate**: Senpai nhắc — đợi 200 user thực mới là retention "thật". Khiêm tốn với số liệu là phẩm chất founder Nhật trọng vọng.
- **「探索的研究 (exploratory study)」**: Cụm thuật ngữ học thuật bảo vệ paper khi sample size nhỏ — phải nhớ.
- **Hybrid route Cybozu + 副業 + all-in 2 năm sau**: Lựa chọn pragmatic cho founder có gia đình, 24t — không phải nghỉ học all-in kiểu Mỹ.
- **SAFE note với cofounder**: Cách trao cổ phần cho dev partner sớm khi chưa có funding — chuẩn startup Nhật-Việt 2029.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 分析 | ぶんせき | PHÂN TÍCH | phân tích |
| 受験者 | じゅけんしゃ | THỤ NGHIỆM GIẢ | người dự thi |
| 技能実習生 | ぎのうじっしゅうせい | KỸ NĂNG THỰC TẬP SINH | thực tập sinh kỹ năng |
| 工場勤務 | こうじょうきんむ | CÔNG TRƯỜNG CẦN VỤ | làm việc nhà máy |
| 在住 | ざいじゅう | TẠI TRỤ | cư trú |
| 準備中 | じゅんびちゅう | CHUẨN BỊ TRUNG | đang chuẩn bị |
| 発見 | はっけん | PHÁT KIẾN | phát hiện |
| 工場用語 | こうじょうようご | CÔNG TRƯỜNG DỤNG NGỮ | từ vựng nhà máy |
| 強く | つよく | CƯỜNG | mạnh mẽ |
| 求める | もとめる | CẦU | yêu cầu, đòi |
| 競合 | きょうごう | CẠNH HỢP | đối thủ cạnh tranh |
| 差別化 | さべつか | SAI BIỆT HOÁ | điểm khác biệt |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 業界 | ぎょうかい | NGHIỆP GIỚI | ngành |
| 計算 | けいさん | KẾ TOÁN | tính toán |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ |
| 数値 | すうち | SỐ TRỊ | số liệu |
| 段階 | だんかい | ĐOẠN GIAI | giai đoạn |
| 過信 | かしん | QUÁ TIN | quá tự tin |
| 方向性 | ほうこうせい | PHƯƠNG HƯỚNG TÍNH | hướng đi |
| 証拠 | しょうこ | CHỨNG CỨ | bằng chứng |
| 率直 | そっちょく | SUẤT TRỰC | thẳng thắn |
| 意見 | いけん | Ý KIẾN | ý kiến |
| 中間報告 | ちゅうかんほうこく | TRUNG GIAN BÁO CÁO | báo cáo giữa kỳ |
| 上回る | うわまわる | THƯỢNG HỒI | vượt qua |
| 示唆 | しさ | THỊ TOÁ | gợi ý |
| 需要 | じゅよう | NHU YẾU | nhu cầu |
| 未充足 | みじゅうそく | VỊ SUNG TÚC | chưa đủ |
| 注意点 | ちゅういてん | CHÚ Ý ĐIỂM | điểm cần lưu ý |
| 統計的 | とうけいてき | THỐNG KẾ ĐÍCH | mang tính thống kê |
| 探索的研究 | たんさくてきけんきゅう | THÁM SÁCH ĐÍCH NGHIÊN CỨU | nghiên cứu thăm dò |
| 検定 | けんてい | KIỂM ĐỊNH | kiểm định |
| 記述 | きじゅつ | KÝ THUẬT | mô tả |
| 賢明 | けんめい | HIỀN MINH | khôn ngoan |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 入社 | にゅうしゃ | NHẬP XÃ | vào công ty |
| 独立 | どくりつ | ĐỘC LẬP | độc lập |
| 魅力的 | みりょくてき | MỴ LỰC ĐÍCH | hấp dẫn |
| 真剣 | しんけん | CHÂN KIẾM | nghiêm túc |
| 検討 | けんとう | KIỂM THẢO | xem xét |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000005, 800000024, NULL, 'markdown_book', 'T5. Hội thảo IPSJ-NL và bài paper Hizashi (学会・論文発表)', '# Sách sinh viên Đại học Osaka · T5. Hội thảo IPSJ-NL và bài paper Hizashi (学会・論文発表)

> **Mục tiêu nhân vật:** Đại, 24 tuổi, lab Inoue Đại học Osaka, tháng 8/2029. Học các mẫu hội thoại tiếng Nhật của tác giả paper hội thảo: (1) bàn outline paper với senpai, (2) xin sensei đọc soát bản thảo, (3) phản hồi review của reviewer, (4) chào hỏi và đăng ký tại quầy lễ tân conference, (5) trình bày 20 phút trước hội trường NLP, (6) trả lời Q&A khi chưa hiểu rõ câu hỏi.

---

## Bối cảnh

Tháng 6-8 năm 2029. IPSJ-NL (情報処理学会自然言語処理研究会) — hội thảo NLP thường niên — tổ chức tại Đại học Kyoto cuối tháng 8. Đại đồng tác giả paper "Hizashi" với Yamada-senpai (M2 lab Inoue) và Inoue-sensei. Bài đã chạy thật trên 50 beta user 4 tuần, retention 76%. Chương này tập trung các mẫu câu **bàn outline với senpai**, **xin sensei review**, **submit + accept**, **present 20 phút**, **Q&A khi nghe chưa rõ**, và **báo tin vui qua LINE**.

---

## Tình huống 1 — Phòng lab Inoue · 10:00, bàn outline paper với Yamada-senpai

*Đại mở Notion outline trên màn hình lớn của lab. Yamada-senpai kéo ghế ngồi xuống bên cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、Hizashiの<ruby>論文<rt>ろんぶん</rt></ruby>のoutlineを<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Anh Yamada, anh xem hộ em outline paper Hizashi được không ạ?)* |
| Yamada | おう、<ruby>見<rt>み</rt></ruby>せて。IPSJ-NL は<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby><ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りやな。<br>*(Ờ, cho anh xem. IPSJ-NL hạn cuối tháng 8 đúng không.)* |
| Đại | はい。<ruby>構成<rt>こうせい</rt></ruby>は<ruby>8<rt>はっ</rt></ruby>つの<ruby>章<rt>しょう</rt></ruby>です。abstract、introduction、related work、method、experiments、results、discussion、conclusion。<br>*(Vâng. Cấu trúc 8 chương: abstract, introduction, related work, method, experiments, results, discussion, conclusion.)* |
| Yamada | method <ruby>章<rt>しょう</rt></ruby>を<ruby>三<rt>みっ</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けたほうがええ。architecture、adaptive algorithm、LLM tutor。<br>*(Chương method nên chia ba: architecture, adaptive algorithm, LLM tutor.)* |
| Đại | なるほど、<ruby>分<rt>わ</rt></ruby>かりやすいですね。<ruby>実験<rt>じっけん</rt></ruby>は<ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>のβユーザーで<ruby>4<rt>よん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、retention <ruby>76<rt>ななじゅうろく</rt></ruby>%が<ruby>主<rt>おも</rt></ruby>な<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Ra vậy, dễ hiểu hơn. Phần thí nghiệm là 50 beta user trong 4 tuần, retention 76% là kết quả chính.)* |
| Yamada | <ruby>強<rt>つよ</rt></ruby>いな。citation は<ruby>何<rt>なん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>?<br>*(Mạnh đấy. Bao nhiêu citation?)* |
| Đại | <ruby>今<rt>いま</rt></ruby>のところ<ruby>30<rt>さんじゅう</rt></ruby><ruby>本<rt>ぼん</rt></ruby>です。<ruby>40<rt>よんじゅう</rt></ruby><ruby>本<rt>ぼん</rt></ruby>まで<ruby>増<rt>ふ</rt></ruby>やしたほうがいいですか?<br>*(Hiện 30. Em tăng lên 40 thì hơn không ạ?)* |
| Yamada | うん、related work は<ruby>厚<rt>あつ</rt></ruby>めにな。Anki、Duolingo、BunPro <ruby>必<rt>かなら</rt></ruby>ず<ruby>入<rt>い</rt></ruby>れろ。<br>*(Ừ, related work phải dày. Bắt buộc có Anki, Duolingo, BunPro.)* |

---

## Tình huống 2 — Lab Inoue · 14:00, xin Inoue-sensei review bản thảo v2

*Đại in bản thảo 12 trang, dập ghim, mang sang bàn Inoue-sensei.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>論文<rt>ろんぶん</rt></ruby>の v2 を<ruby>査読<rt>さどく</rt></ruby>していただけませんか?<br>*(Thầy Inoue, em xin lỗi đã làm phiền thầy lúc bận. Thầy review hộ em bản v2 paper được không ạ?)* |
| Inoue | はい、<ruby>置<rt>お</rt></ruby>いてください。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>月曜<rt>げつよう</rt></ruby>までに<ruby>読<rt>よ</rt></ruby>みます。<br>*(Được, em để lại đó. Tôi sẽ đọc xong trước thứ hai tuần sau.)* |
| Đại | ありがとうございます。<ruby>特<rt>とく</rt></ruby>に discussion <ruby>章<rt>しょう</rt></ruby>の limitation <ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>気<rt>き</rt></ruby>になっています。<br>*(Cảm ơn thầy. Em đặc biệt lo phần limitation trong chương discussion.)* |
| Inoue | limitation はちゃんと<ruby>書<rt>か</rt></ruby>かないと reviewer に<ruby>突<rt>つ</rt></ruby>かれますよ。threats to validity も<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Limitation không viết kỹ là reviewer soi đó. Đừng quên cả threats to validity.)* |
| Đại | はい、<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Vâng, em sẽ bổ sung.)* |

---

## Tình huống 3 — Lab Inoue · 25/7 sáng, Inoue trả review

*Inoue đưa lại bản in có chú thích đỏ tay. Đại mở sổ ghi từng comment.*

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>論文<rt>ろんぶん</rt></ruby><ruby>査読<rt>さどく</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>全体<rt>ぜんたい</rt></ruby>として<ruby>良<rt>よ</rt></ruby>くできていますよ。<br>*(Đọc soát xong rồi. Nhìn chung viết tốt.)* |
| Đại | ありがとうございます。<ruby>強<rt>つよ</rt></ruby>みと<ruby>弱<rt>よわ</rt></ruby>みを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cảm ơn thầy. Thầy chỉ giúp em mặt mạnh và mặt yếu được không ạ?)* |
| Inoue | <ruby>強<rt>つよ</rt></ruby>みは motivation と method がはっきりしていること。<ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>の<ruby>実<rt>じっ</rt></ruby><ruby>データ<rt>でーた</rt></ruby>もしっかりしています。<br>*(Mạnh là motivation và method rõ. Dữ liệu thực 50 người cũng vững.)* |
| Đại | <ruby>弱<rt>よわ</rt></ruby>みは?<br>*(Mặt yếu ạ?)* |
| Inoue | related work が<ruby>薄<rt>うす</rt></ruby>い。<ruby>少<rt>すく</rt></ruby>なくとも<ruby>5<rt>ご</rt></ruby><ruby>本<rt>ほん</rt></ruby> citation を<ruby>追加<rt>ついか</rt></ruby>してください。それから discussion の threats to validity も<ruby>足<rt>た</rt></ruby>りません。<br>*(Related work mỏng. Tối thiểu bổ sung 5 citation. Threats to validity trong discussion cũng thiếu.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>三<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>以内<rt>いない</rt></ruby>に v3 をお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Em rõ ạ. Trong ba ngày em sẽ nộp v3.)* |
| Inoue | <ruby>頑張<rt>がんば</rt></ruby>って。これは Best Student Paper を<ruby>狙<rt>ねら</rt></ruby>えますよ。<br>*(Cố lên. Bài này có thể nhắm Best Student Paper được đấy.)* |

---

## Tình huống 4 — Phòng lab · 30/7 tối, submit qua portal IPSJ

*Đại ngồi trước MacBook, Yamada-senpai đứng sau ghế. Nút Submit hiện trên màn hình.*

| Vai | Lời thoại |
|---|---|
| Yamada | submit <ruby>前<rt>まえ</rt></ruby>の<ruby>最終<rt>さいしゅう</rt></ruby>チェック、author <ruby>順番<rt>じゅんばん</rt></ruby> OK?<br>*(Check cuối trước khi submit, thứ tự tác giả OK chứ?)* |
| Đại | はい。<ruby>第一<rt>だいいち</rt></ruby><ruby>著者<rt>ちょしゃ</rt></ruby>はグエン・ダイ、co-author <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>です。<br>*(Vâng. First author là Đại, co-author là anh Yamada và thầy Inoue.)* |
| Yamada | abstract <ruby>200<rt>にひゃく</rt></ruby><ruby>語<rt>ご</rt></ruby><ruby>以内<rt>いない</rt></ruby>?<br>*(Abstract dưới 200 từ chứ?)* |
| Đại | <ruby>198<rt>ひゃくきゅうじゅうはち</rt></ruby><ruby>語<rt>ご</rt></ruby>です。ぎりぎりです。<br>*(198 từ. Sát nút.)* |
| Yamada | では submit してええで。<br>*(Vậy thì bấm submit đi.)* |
| Đại | (click) submit <ruby>完了<rt>かんりょう</rt></ruby>!<br>*(Submit xong!)* |
| Yamada | おめでとう。<ruby>採択<rt>さいたく</rt></ruby><ruby>通知<rt>つうち</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>やな。<br>*(Chúc mừng. Thông báo accept khoảng 1 tuần sau.)* |

---

## Tình huống 5 — Căn hộ Senri-chuo · 6/8 tối, email accept + Best Student nominee

*Mai đang cho Hana ăn dặm trong bếp. Đại đột nhiên đứng bật dậy khỏi bàn.*

| Vai | Lời thoại |
|---|---|
| Đại | (mở email) えっ、<ruby>採択<rt>さいたく</rt></ruby>!しかも Best Student Paper nominee!<br>*(Hả, được accept! Mà còn được nominee Best Student Paper!)* |
| Mai | (VN) Gì thế anh?<br>*(Gì thế?)* |
| Đại | (VN) Paper Hizashi được nhận! Còn được đề cử giải sinh viên xuất sắc nữa!<br>*(Đề cử!)* |
| Mai | (VN, ôm Hana) Hana ơi, bố giỏi quá! Chúc mừng anh nhé!<br>*(Chúc mừng!)* |
| Đại | (gõ LINE Inoue) <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>採択<rt>さいたく</rt></ruby><ruby>通知<rt>つうち</rt></ruby><ruby>来<rt>き</rt></ruby>ました!Best Student Paper nominee です!<br>*(Thầy Inoue, có thông báo accept rồi! Còn được Best Student Paper nominee!)* |
| Inoue | (LINE) <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>本番<rt>ほんばん</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Tuyệt vời! Bắt đầu luyện present cho hội thảo nào.)* |

---

## Tình huống 6 — Lab Inoue · 10/8, luyện present 20 phút trước Yamada

*Đại đứng trước màn chiếu, slide đầu tiên là title. Yamada bấm đồng hồ.*

| Vai | Lời thoại |
|---|---|
| Yamada | じゃあ<ruby>本番<rt>ほんばん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>計<rt>はか</rt></ruby>るで。スタート。<br>*(OK, đo 20 phút như thật. Bắt đầu.)* |
| Đại | <ruby>皆様<rt>みなさま</rt></ruby>、こんにちは。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>井上<rt>いのうえ</rt></ruby>ラボのグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はHizashiという、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムについて<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Kính chào quý vị. Tôi là Nguyễn Đại, lab Inoue Đại học Osaka. Hôm nay xin trình bày về Hizashi — hệ thống học tiếng Nhật dành cho người Việt.)* |
| Yamada | (15 phút sau, vỗ tay) ストップ。<ruby>21<rt>にじゅういっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>や。<ruby>1<rt>いっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>オーバー<rt>おーばー</rt></ruby>。<br>*(Stop. 21 phút 10 giây. Quá 1 phút 10 giây.)* |
| Đại | どこを<ruby>削<rt>けず</rt></ruby>ればいいですか?<br>*(Cắt chỗ nào ạ?)* |
| Yamada | related work が<ruby>長<rt>なが</rt></ruby>い。<ruby>1<rt>いっ</rt></ruby>スライドにまとめろ。それから demo は<ruby>動画<rt>どうが</rt></ruby>じゃなくて<ruby>静止<rt>せいし</rt></ruby><ruby>画<rt>が</rt></ruby>でええ。<br>*(Related work dài. Gộp về 1 slide. Demo dùng ảnh tĩnh thay vì video cũng được.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。もう<ruby>一度<rt>いちど</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>させてください。<br>*(Em rõ. Cho em luyện lại lần nữa nhé.)* |

---

## Tình huống 7 — Quầy lễ tân Đại học Kyoto · 25/8 9:00, đăng ký tham dự

*Tòa Yoshida campus Kyoto, biển "IPSJ-NL 2029". Quầy lễ tân có 3 staff áo polo xanh.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>発表者<rt>はっぴょうしゃ</rt></ruby>の<ruby>受付<rt>うけつけ</rt></ruby>はこちらでよろしいですか?<br>*(Chào buổi sáng. Quầy đăng ký người trình bày ở đây phải không ạ?)* |
| Staff | はい、こちらです。お<ruby>名前<rt>なまえ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đúng ạ. Mời cho biết tên.)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエン・ダイです。<ruby>発表<rt>はっぴょう</rt></ruby>セッションは<ruby>明日<rt>あした</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時<rt>じ</rt></ruby>です。<br>*(Em là Nguyễn Đại, Đại học Osaka. Session trình bày của em là chiều mai 2 giờ ạ.)* |
| Staff | はい、<ruby>確認<rt>かくにん</rt></ruby>いたしました。こちらが<ruby>名札<rt>なふだ</rt></ruby>と<ruby>予稿集<rt>よこうしゅう</rt></ruby>です。<ruby>発表会場<rt>はっぴょうかいじょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>のA<ruby>室<rt>しつ</rt></ruby>になります。<br>*(Vâng đã xác nhận. Đây là thẻ tên và tập kỷ yếu. Phòng trình bày là phòng A tầng 3 ạ.)* |
| Đại | ありがとうございます。リハーサルの<ruby>時間<rt>じかん</rt></ruby>はありますか?<br>*(Cảm ơn ạ. Có thời gian rehearsal không ạ?)* |
| Staff | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>会場<rt>かいじょう</rt></ruby>で<ruby>機材<rt>きざい</rt></ruby>チェックができます。<br>*(Từ 17h hôm nay có 30 phút check thiết bị tại phòng.)* |

---

## Tình huống 8 — Hành lang tầng 3 · 25/8 12:00, gặp researcher khác kết nối chuyên ngành

*Buffet trưa, các poster session bên cạnh. Đại đứng cầm đĩa nem cuốn.*

| Vai | Lời thoại |
|---|---|
| Tanaka-sensei (NAIST) | あの、グエンさんですか?<ruby>明日<rt>あした</rt></ruby>のHizashiの<ruby>発表者<rt>はっぴょうしゃ</rt></ruby>の。<br>*(Xin lỗi, anh là Đại phải không? Người trình bày Hizashi ngày mai ấy.)* |
| Đại | はい、そうです。<br>*(Vâng, đúng ạ.)* |
| Tanaka | NAISTの<ruby>田中<rt>たなか</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>予稿<rt>よこう</rt></ruby>を<ruby>読<rt>よ</rt></ruby>ませていただきました。<ruby>面白<rt>おもしろ</rt></ruby>そうな<ruby>研究<rt>けんきゅう</rt></ruby>ですね。<br>*(Tôi là Tanaka, NAIST. Tôi đã đọc abstract của em. Nghiên cứu có vẻ thú vị.)* |
| Đại | ありがとうございます。<ruby>田中<rt>たなか</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のご<ruby>研究<rt>けんきゅう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>は?<br>*(Cảm ơn thầy ạ. Lĩnh vực nghiên cứu của thầy là gì ạ?)* |
| Tanaka | <ruby>第二<rt>だいに</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>習得<rt>しゅうとく</rt></ruby>のNLP<ruby>応用<rt>おうよう</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>させてもらうかもしれません。<br>*(NLP ứng dụng cho second language acquisition. Mai có thể tôi sẽ đặt câu hỏi.)* |
| Đại | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mong thầy hỏi nhiều ạ.)* |
| Tanaka | <ruby>名刺<rt>めいし</rt></ruby>を<ruby>交換<rt>こうかん</rt></ruby>させてください。<br>*(Trao đổi danh thiếp nhé.)* |
| Đại | あ、まだ<ruby>学生<rt>がくせい</rt></ruby>なので<ruby>名刺<rt>めいし</rt></ruby>がなくて...LINEでもよろしいですか?<br>*(À em vẫn là sinh viên nên chưa có danh thiếp... Trao đổi qua LINE được không ạ?)* |

---

## Tình huống 9 — Phòng A tầng 3 · 26/8 14:00, present 20 phút

*200 researcher NLP ngồi kín hội trường. Slide đầu hiện title bài. Đại deep breath.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>次<rt>つぎ</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>グエン<rt>ぐえん</rt></ruby>・<ruby>ダイ<rt>だい</rt></ruby>さん、「Hizashi」<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。どうぞ。<br>*(Bài tiếp theo là Nguyễn Đại, Đại học Osaka, "Hizashi", 20 phút. Mời.)* |
| Đại | <ruby>皆様<rt>みなさま</rt></ruby>、こんにちは。グエン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システム「Hizashi」について<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Kính chào quý vị. Tôi là Nguyễn Đại. Hôm nay xin trình bày về Hizashi — hệ thống học tiếng Nhật cho người Việt.)* |
| Đại | (slide 5) <ruby>当<rt>とう</rt></ruby>システムの<ruby>特徴<rt>とくちょう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。<ruby>適応<rt>てきおう</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アルゴリズム、ベトナム<ruby>語<rt>ご</rt></ruby>コンテキスト<ruby>付<rt>つ</rt></ruby>きLLM tutor、そしてSRSとの<ruby>統合<rt>とうごう</rt></ruby>です。<br>*(Hệ thống có 3 đặc trưng: adaptive learning algorithm, LLM tutor có VN context, và tích hợp SRS.)* |
| Đại | (slide 9) <ruby>4<rt>よん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>実験<rt>じっけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>、retention <ruby>76<rt>ななじゅうろく</rt></ruby>%、AI tutor <ruby>満足度<rt>まんぞくど</rt></ruby><ruby>90<rt>きゅうじゅっ</rt></ruby>%でした。<br>*(Kết quả thí nghiệm 4 tuần: retention 76%, độ hài lòng AI tutor 90%.)* |
| Đại | (slide cuối) ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。ご<ruby>質問<rt>しつもん</rt></ruby>をお<ruby>受<rt>う</rt></ruby>けします。<br>*(Cảm ơn quý vị đã lắng nghe. Xin mời câu hỏi.)* |

---

## Tình huống 10 — Phòng A tầng 3 · 14:20, Q&A — hỏi lại khi chưa hiểu

*3 cánh tay giơ lên. MC chỉ vào người đầu tiên.*

| Vai | Lời thoại |
|---|---|
| Questioner 1 | <ruby>京都大学<rt>きょうとだいがく</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby>です。ベトナム<ruby>語<rt>ご</rt></ruby>の<ruby>方言<rt>ほうげん</rt></ruby>、<ruby>北部<rt>ほくぶ</rt></ruby>・<ruby>中部<rt>ちゅうぶ</rt></ruby>・<ruby>南部<rt>なんぶ</rt></ruby>でどう<ruby>対応<rt>たいおう</rt></ruby>していますか?<br>*(Kimura, Đại học Kyoto. Phương ngữ Việt Nam — Bắc, Trung, Nam — anh xử lý thế nào?)* |
| Đại | ありがとうございます。<ruby>現<rt>げん</rt></ruby>システムは<ruby>北部<rt>ほくぶ</rt></ruby>(ハノイ)<ruby>標準語<rt>ひょうじゅんご</rt></ruby>のみ<ruby>対応<rt>たいおう</rt></ruby>しています。<ruby>方言<rt>ほうげん</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>は<ruby>今後<rt>こんご</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>です。<br>*(Cảm ơn. Hệ thống hiện chỉ hỗ trợ chuẩn Bắc Hà Nội. Phát hiện phương ngữ là việc tương lai.)* |
| Questioner 2 | (giọng nhỏ, micro xa) Duolingoのpersonalization... cost scaling...<br>*(Personalization của Duolingo... cost scaling...)* |
| Đại | すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。マイクが<ruby>遠<rt>とお</rt></ruby>くて<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れませんでした。<br>*(Em xin lỗi, anh nói lại được không ạ. Micro xa nên em nghe chưa rõ.)* |
| Questioner 2 | (rõ hơn) Duolingo との<ruby>違<rt>ちが</rt></ruby>いは?それから cost scaling は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Khác Duolingo ở đâu? Cost scaling có ổn không?)* |
| Đại | はい、ありがとうございます。Duolingo はSRSのみですが、Hizashiはコンテキスト<ruby>対応<rt>たいおう</rt></ruby>のLLM tutor を<ruby>加<rt>くわ</rt></ruby>えています。cost は<ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>当<rt>あ</rt></ruby>たり<ruby>月<rt>つき</rt></ruby><ruby>1<rt>いち</rt></ruby>ドル、<ruby>1000<rt>せん</rt></ruby><ruby>人<rt>にん</rt></ruby>規模で<ruby>0.5<rt>てんご</rt></ruby>ドルまで<ruby>下<rt>さ</rt></ruby>がります。Claude のprompt cache のおかげです。<br>*(Vâng cảm ơn. Duolingo chỉ có SRS, Hizashi thêm LLM tutor có context. Cost 1$/user/tháng, quy mô 1000 user giảm còn 0.5$/tháng nhờ prompt cache của Claude.)* |
| Questioner 3 | <ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>というのは<ruby>少<rt>すく</rt></ruby>ないのでは?<br>*(50 người liệu có ít quá không?)* |
| Đại | おっしゃる<ruby>通<rt>とお</rt></ruby>りです。<ruby>現在<rt>げんざい</rt></ruby><ruby>1000<rt>せん</rt></ruby><ruby>人<rt>にん</rt></ruby>スケールでの<ruby>実験<rt>じっけん</rt></ruby>を<ruby>計画<rt>けいかく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。これも<ruby>論文<rt>ろんぶん</rt></ruby>の limitation <ruby>節<rt>せつ</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>しております。<br>*(Anh nói đúng. Hiện em đang lên kế hoạch thí nghiệm quy mô 1000 người. Điều này em có ghi ở mục limitation trong paper.)* |

---

## Tình huống 11 — Hành lang ngoài phòng A · 14:35, Tanaka-sensei góp ý

*Sau khi xuống bục, Tanaka-sensei tiến đến bắt tay.*

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>発表<rt>はっぴょう</rt></ruby>でした。<br>*(Đại, em vất vả rồi. Bài present xuất sắc.)* |
| Đại | ありがとうございます。Q&Aで<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Cảm ơn thầy ạ. Phần Q&A em hồi hộp lắm.)* |
| Tanaka | <ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>す<ruby>勇気<rt>ゆうき</rt></ruby>がありましたね。「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」が<ruby>言<rt>い</rt></ruby>えるのは<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Em đã đủ can đảm hỏi lại. Nói được "mou ichido onegai shimasu" là rất quan trọng.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Em xin nhận lời ạ.)* |
| Tanaka | second language acquisition の<ruby>分野<rt>ぶんや</rt></ruby>で<ruby>共同<rt>きょうどう</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>もありえます。<ruby>後日<rt>ごじつ</rt></ruby>ご<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Có thể sẽ có chuyện hợp tác nghiên cứu trong mảng SLA. Mai mốt tôi liên lạc.)* |
| Đại | ぜひよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong thầy giúp đỡ ạ.)* |

---

## Tình huống 12 — Hội trường lớn Kyoto · 27/8 18:00, lễ trao Best Student Paper

*MC đứng trên sân khấu, danh sách đề cử hiện trên màn hình. Đại+Yamada ngồi hàng 3.*

| Vai | Lời thoại |
|---|---|
| MC | Best Student Paper <ruby>賞<rt>しょう</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>いたします。<ruby>受賞者<rt>じゅしょうしゃ</rt></ruby>は…「Hizashi」<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>井上<rt>いのうえ</rt></ruby>ラボのグエン・ダイさん、<ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>です!<br>*(Xin công bố giải Best Student Paper. Người nhận là... "Hizashi" của Đại, Yamada, Inoue lab Đại học Osaka!)* |
| Đại+Yamada | (lên sân khấu, nhận bằng) <ruby>誠<rt>まこと</rt></ruby>にありがとうございます!<br>*(Chân thành cảm ơn ạ!)* |
| MC | <ruby>受賞<rt>じゅしょう</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời lời nhận giải.)* |
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>のベータユーザー、そして<ruby>家族<rt>かぞく</rt></ruby>の<ruby>支<rt>ささ</rt></ruby>えなしには<ruby>不可能<rt>ふかのう</rt></ruby>でした。これからもベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のために<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn thầy Inoue, anh Yamada. Nếu không có 50 beta user và sự ủng hộ của gia đình thì không thể có ngày hôm nay. Em sẽ tiếp tục nỗ lực vì người Việt học tiếng Nhật.)* |

---

## Tình huống 13 — Khách sạn Kyoto · 27/8 22:00, gọi video về cho Mai

*Đại ngồi mép giường, MacBook mở Zalo video. Mai bế Hana 12 tháng, có Tony+Yumi đứng sau.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi! Anh được giải Best Student Paper rồi!<br>*(Giải rồi!)* |
| Mai | (VN) Em biết rồi! Bác Tony xem livestream qua đường link của lab, vừa hét lên loạn cả nhà. Hana giật mình suýt khóc.<br>*(Hét loạn!)* |
| Tony | (cười to, ghé vào màn hình) ダイ!すごいで!<br>*(Đại! Giỏi quá đi!)* |
| Yumi | (VN, học tiếng Việt) Chúc mừng cháu nhé!<br>*(Chúc mừng!)* |
| Đại | (VN) Em ơi, hồi present có một bác giáo sư NAIST hỏi mà micro xa, anh không nghe rõ. Anh phải dùng câu "mou ichido onegai shimasu" — hỏi lại lần nữa.<br>*(Hỏi lại.)* |
| Mai | (VN) Hay đấy, biết hỏi lại còn hơn đoán bừa. Mà mai mấy giờ anh về?<br>*(Mai mấy giờ?)* |
| Đại | (VN) Sáng mai tàu Hankyu, 11h về tới Senri-chuo. Anh nhớ Hana lắm. Cho anh thấy con đi.<br>*(Cho thấy con.)* |
| Mai | (chỉa máy vào Hana đang ngủ) Hana ngủ rồi này. Con biết bố đoạt giải đấy, hôm nay cười nhiều lắm.<br>*(Cười nhiều.)* |
| Đại | (VN, mắt rưng rưng) Cảm ơn em. Tất cả là vì em với Hana.<br>*(Vì em với Hana.)* |

---

## Tình huống 14 — Đoạn cuối tiếng Việt — Mai chat lại với mẹ Đại

*Sau khi cúp máy với Đại, Mai mở Zalo group gia đình Việt Nam, video call với mẹ Đại ở Hà Nội.*

| Vai | Lời thoại |
|---|---|
| Mẹ Đại | (VN) Mai à, con vừa thấy Tony đăng Facebook. Đại đoạt giải gì vậy con? |
| Mai | (VN) Dạ giải Best Student Paper ở hội thảo NLP — gọi là 学会 đó mẹ. Anh ấy với senpai Yamada và thầy Inoue là đồng tác giả — co-author. |
| Mẹ Đại | (VN) Mẹ chả hiểu mấy chữ tiếng Nhật. Tóm lại là giải nhất sinh viên ở hội thảo nghiên cứu phải không? |
| Mai | (VN) Vâng, đúng vậy mẹ. Là giải dành cho paper sinh viên xuất sắc nhất hội thảo, có 200 nhà nghiên cứu tham dự. |
| Mẹ Đại | (VN) Trời ơi, con trai mẹ giỏi quá. Mai về Việt Nam ăn Tết, mẹ làm bún chả khao cả hai vợ chồng. |
| Mai | (VN) Vâng mẹ. Anh Đại còn được một thầy ở NAIST mời hợp tác nghiên cứu nữa. Anh kể là phải dùng câu "mou ichido onegai shimasu" để hỏi lại khi không nghe rõ — em nhớ luôn mẹ ạ. |
| Mẹ Đại | (VN) Ừ, không nghe rõ thì cứ hỏi lại, đừng ngại. Mẹ hồi đi chợ Đồng Xuân cũng phải hỏi lại bà bán cá ba lần mới hiểu giá đấy. |
| Mai | (VN, cười) Mẹ nói buồn cười quá. Thôi con cho Hana ngủ tiếp đây. Mai con gửi clip lễ trao giải mẹ xem nhé. |

---

## Đọng lại chương 5

Đại trải qua 2 tháng cuối hè 2029 với cường độ cao: bàn outline với Yamada-senpai, **〜を見ていただけますか?** xin senpai review; **〜を査読していただけませんか?** xin sensei đọc soát; **承知しました** khi nhận phản hồi; phản hồi review của Inoue với 5 citation bổ sung và threats to validity. Submit IPSJ-NL ngày 30/7, được accept + Best Student Paper nominee. Tại hội trường Kyoto đăng ký lễ tân với **発表者の受付はこちらでよろしいですか?**, kết nối chuyên ngành gặp Tanaka-sensei (NAIST) bằng câu **名刺を交換させてください**, present 20 phút mở đầu **発表させていただきます** và đóng bằng **ご清聴ありがとうございました**. Q&A có 3 câu, trong đó câu 2 mic xa, Đại dùng **すみません、もう一度お願いします** để hỏi lại — câu mà sau đó Tanaka-sensei khen là quan trọng. Tối 27/8 đoạt giải Best Student Paper, gọi video cho Mai+Hana+Tony+Yumi, rồi Mai chat với mẹ Đại ở Hà Nội — cả gia đình cùng vui.

> Từ vựng & mẫu câu chương này: 学会・論文・査読・採択・発表・co-author・citation・related work・threats to validity・abstract・第一著者・予稿集・名札・名刺を交換させてください・もう一度お願いします・〜していただけませんか・承知しました・ご清聴ありがとうございました・発表させていただきます・Best Student Paper賞・prompt cache

## Bí quyết chương

- **〜していただけませんか** là dạng nhờ vả lịch sự nhất với sensei — luôn dùng khi xin review/góp ý học thuật.
- **聞き返す勇気** (dũng cảm hỏi lại): trong Q&A nếu không nghe rõ, đừng đoán bừa. Câu **すみません、もう一度お願いします** lịch sự, đúng chuẩn, không mất mặt.
- Kết nối chuyên ngành học thuật: sinh viên chưa có 名刺 (danh thiếp) cũng OK — đổi LINE thẳng thắn, không cần cố làm như nhân viên công ty.
- Mở đầu bài present: **発表させていただきます** (kính ngữ khiêm nhường) > **発表します** (trung tính).
- Khi reviewer chỉ ra điểm yếu, đáp **承知しました** + cam kết deadline cụ thể (**三日以内に v3 をお渡しします**) — chuyên nghiệp, không cãi.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 論文 | ろんぶん | LUẬN VĂN | luận văn, paper |
| 章 | しょう | CHƯƠNG | chương |
| 実験 | じっけん | THỰC NGHIỆM | thí nghiệm |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 査読 | さどく | SÁT ĐỘC | review, phản biện |
| 全体 | ぜんたい | TOÀN THỂ | toàn thể |
| 著者 | ちょしゃ | TRƯỚC GIẢ | tác giả |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 完了 | かんりょう | HOÀN LIỄU | hoàn tất |
| 採択 | さいたく | THÁI TRẠCH | được chọn, accept |
| 通知 | つうち | THÔNG TRI | thông báo |
| 本番 | ほんばん | BẢN PHIÊN | thật, chính thức |
| 練習 | れんしゅう | LUYỆN TẬP | luyện tập |
| 削る | けずる | TƯỚC | cắt giảm |
| 静止画 | せいしが | TĨNH CHỈ HOẠ | ảnh tĩnh |
| 受付 | うけつけ | THỤ PHÓ | lễ tân |
| 名札 | なふだ | DANH TRÁT | thẻ tên |
| 予稿集 | よこうしゅう | DỰ CẢO TẬP | tập kỷ yếu |
| 会場 | かいじょう | HỘI TRƯỜNG | hội trường |
| 機材 | きざい | CƠ TÀI | thiết bị |
| 名刺 | めいし | DANH THÍCH | danh thiếp |
| 交換 | こうかん | GIAO HOÁN | trao đổi |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 第二言語習得 | だいにげんごしゅうとく | ĐỆ NHỊ NGÔN NGỮ TẬP ĐẮC | tiếp thụ ngôn ngữ thứ hai |
| 応用 | おうよう | ỨNG DỤNG | ứng dụng |
| 特徴 | とくちょう | ĐẶC TRƯNG | đặc trưng |
| 適応 | てきおう | THÍCH ỨNG | thích ứng |
| 満足度 | まんぞくど | MÃN TÚC ĐỘ | độ hài lòng |
| 清聴 | せいちょう | THANH THÍNH | lắng nghe |
| 方言 | ほうげん | PHƯƠNG NGÔN | phương ngữ |
| 北部 | ほくぶ | BẮC BỘ | miền bắc |
| 標準語 | ひょうじゅんご | TIÊU CHUẨN NGỮ | tiếng chuẩn |
| 検出 | けんしゅつ | KIỂM XUẤT | phát hiện |
| 課題 | かだい | KHOÁ ĐỀ | vấn đề |
| 違い | ちがい | VI | sự khác biệt |
| 規模 | きぼ | QUY MÔ | quy mô |
| 記載 | きさい | KÝ TÁI | ghi chép |
| 緊張 | きんちょう | KHẨN TRƯƠNG | hồi hộp |
| 勇気 | ゆうき | DŨNG KHÍ | dũng cảm |
| 共同研究 | きょうどうけんきゅう | CỘNG ĐỒNG NGHIÊN CỨU | nghiên cứu chung |
| 受賞 | じゅしょう | THỤ THƯỞNG | nhận giải |
| 不可能 | ふかのう | BẤT KHẢ NĂNG | không thể |
| 学習者 | がくしゅうしゃ | HỌC TẬP GIẢ | người học |
| 学会 | がっかい | HỌC HỘI | hội học thuật |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000006, 800000024, NULL, 'markdown_book', 'T6. Viết luận văn tốt nghiệp 30.000 chữ (卒論執筆)', '# Sách sinh viên Đại học Osaka · T6. Viết luận văn tốt nghiệp 30.000 chữ (卒論執筆)

> **Mục tiêu nhân vật:** Đại, 24 tuổi, lab Inoue, tháng 9-10/2029. Học các mẫu hội thoại tiếng Nhật khi viết sotsuron: (1) báo cáo kế hoạch viết với sensei, (2) xin Yamada-senpai hỗ trợ khi bí chapter, (3) nhờ Yumi giữ Hana 1 ngày sinh nhật, (4) phản hồi pull request review, (5) bàn về citation style với senpai, (6) cảm ơn senpai một cách trang trọng.

---

## Bối cảnh

Tháng 9-10 năm 2029. Sau khi đoạt Best Student Paper IPSJ-NL, Đại bước vào giai đoạn viết luận văn tốt nghiệp (卒論・そつろん) — 8 chương, 30.000 chữ, hạn nộp cuối tháng 12 (bảo vệ 2/2030). Yamada-senpai hỗ trợ review. Inoue-sensei duyệt cuối. Lịch trình 60 ngày × 500 chữ/ngày. Cùng lúc Hana tròn 1 tuổi ngày 5/10. Chương này tập trung các mẫu câu **báo cáo kế hoạch với sensei**, **xin senpai cứu khi bí**, **PR review feedback**, **cảm ơn senpai trang trọng** và **đàm phán thời gian gia đình - luận văn**.

---

## Tình huống 1 — Phòng lab Inoue · 1/9 10:00, Đại báo cáo kế hoạch viết sotsuron

*Đại in lịch trình ra A4, mang sang bàn Inoue-sensei.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>卒論<rt>そつろん</rt></ruby>の<ruby>執筆<rt>しっぴつ</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Thầy Inoue, em xin báo cáo kế hoạch viết luận văn ạ.)* |
| Inoue | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em trình bày đi.)* |
| Đại | <ruby>全体<rt>ぜんたい</rt></ruby><ruby>30000<rt>さんまん</rt></ruby><ruby>字<rt>じ</rt></ruby>、<ruby>8<rt>はっ</rt></ruby>つの<ruby>章<rt>しょう</rt></ruby>です。<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>と<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>で<ruby>1<rt>いっ</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>字<rt>じ</rt></ruby>のペースで<ruby>書<rt>か</rt></ruby>きます。<br>*(Tổng 30.000 chữ, 8 chương. Tháng 9-10 viết với tốc độ 500 chữ/ngày.)* |
| Inoue | いいペースですね。chapter <ruby>6<rt>ろく</rt></ruby> evaluation は<ruby>何<rt>なん</rt></ruby><ruby>人<rt>にん</rt></ruby>のデータですか?<br>*(Tốc độ ổn đấy. Chapter 6 evaluation dữ liệu bao nhiêu người?)* |
| Đại | <ruby>100<rt>ひゃく</rt></ruby><ruby>人<rt>にん</rt></ruby>です。<ruby>8<rt>はち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>追跡<rt>ついせき</rt></ruby>データを<ruby>使<rt>つか</rt></ruby>います。<br>*(100 người. Em dùng dữ liệu theo dõi 8 tuần.)* |
| Inoue | IPSJ-NLの<ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>から<ruby>倍<rt>ばい</rt></ruby>になりますね。<ruby>強<rt>つよ</rt></ruby>い<ruby>章<rt>しょう</rt></ruby>になりそうです。<br>*(Gấp đôi 50 người ở IPSJ-NL. Sẽ là chương mạnh.)* |
| Đại | はい。<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>章<rt>しょう</rt></ruby>ごとにレビューをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>最終<rt>さいしゅう</rt></ruby><ruby>稿<rt>こう</rt></ruby>は<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>先生<rt>せんせい</rt></ruby>にお<ruby>渡<rt>わた</rt></ruby>しできればと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em sẽ nhờ anh Yamada review từng chương. Bản cuối em mong giữa tháng 11 sẽ nộp được cho thầy.)* |
| Inoue | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>困<rt>こま</rt></ruby>ったときはいつでも<ruby>相談<rt>そうだん</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Rõ. Khi nào bí cứ qua tôi bàn.)* |

---

## Tình huống 2 — Căn hộ Senri-chuo · 5/9 22:00, lịch sinh hoạt với Mai

*Đại đóng MacBook sau 1 tiếng Pomodoro buổi tối. Mai đang gấp quần áo Hana.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, anh muốn bàn lịch sinh hoạt 2 tháng tới. Anh phải viết 500 chữ/ngày để xong sotsuron đúng hạn.<br>*(Lịch sinh hoạt.)* |
| Mai | (VN) Anh cần em hỗ trợ gì?<br>*(Hỗ trợ gì?)* |
| Đại | (VN) Anh chia 3 ca viết: sáng 7-8h, chiều 15-16h ở lab, tối 21-22h ở nhà. Em giúp anh giữ Hana từ 21-22h được không?<br>*(3 ca.)* |
| Mai | (VN) Được. Hana giờ đó hay quấy, em sẽ cho con đi dạo balcony hoặc xem tranh. Mà cuối tuần anh nghỉ chứ?<br>*(Cuối tuần?)* |
| Đại | (VN) Chủ nhật anh nghỉ hoàn toàn — chỉ Hana với em. Thứ bảy anh viết nửa ngày sáng thôi.<br>*(Chủ nhật nghỉ.)* |
| Mai | (VN) OK. Còn ngày 5/10 sinh nhật Hana 1 tuổi, anh nghỉ cả ngày nhé.<br>*(5/10 nghỉ.)* |
| Đại | (VN) Đương nhiên rồi. Sinh nhật Hana lần đầu tiên — không có gì quan trọng hơn.<br>*(Đương nhiên.)* |

---

## Tình huống 3 — Phòng lab · 10/9 14:00, hỏi Yamada citation format APA hay IEEE

*Đại loay hoay với BibTeX file trong Overleaf. Yamada-senpai đi ngang qua.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、citation format について<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Anh Yamada, em hỏi về citation format được không ạ?)* |
| Yamada | おう、どないした。<br>*(Ờ, sao thế.)* |
| Đại | <ruby>卒論<rt>そつろん</rt></ruby>はAPA<ruby>形式<rt>けいしき</rt></ruby>とIEEE<ruby>形式<rt>けいしき</rt></ruby>、どちらがいいですか?<br>*(Luận văn dùng APA hay IEEE thì hơn ạ?)* |
| Yamada | <ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>情報科学研究科<rt>じょうほうかがくけんきゅうか</rt></ruby>はIEEE<ruby>推奨<rt>すいしょう</rt></ruby>や。でも<ruby>井上<rt>いのうえ</rt></ruby>ラボ<ruby>慣例<rt>かんれい</rt></ruby>はAPAやな。<br>*(Khoa Tin Đại học Osaka khuyến nghị IEEE. Nhưng quy tắc của lab Inoue là APA.)* |
| Đại | え、<ruby>研究科<rt>けんきゅうか</rt></ruby>とラボで<ruby>違<rt>ちが</rt></ruby>うんですか?どちらに<ruby>従<rt>したが</rt></ruby>えば...<br>*(Hả, khoa với lab khác nhau ạ? Em theo cái nào...)* |
| Yamada | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>聞<rt>き</rt></ruby>いたほうがええ。<ruby>俺<rt>おれ</rt></ruby>のM<ruby>2<rt>に</rt></ruby><ruby>論文<rt>ろんぶん</rt></ruby>はAPAで<ruby>通<rt>とお</rt></ruby>したけどな。<br>*(Hỏi thẳng thầy Inoue đi. Bài M2 của anh dùng APA vẫn được duyệt.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>後<rt>あと</rt></ruby>で<ruby>先生<rt>せんせい</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em hiểu. Lát em hỏi thầy.)* |

---

## Tình huống 4 — Phòng lab · 10/9 16:00, Đại confirm với Inoue

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>卒論<rt>そつろん</rt></ruby>の citation format についてお<ruby>聞<rt>き</rt></ruby>きしてもよろしいでしょうか。<br>*(Thầy Inoue, em xin phép. Em hỏi về citation format của luận văn được không ạ?)* |
| Inoue | はい、どうぞ。<br>*(Vâng, em hỏi đi.)* |
| Đại | <ruby>研究科<rt>けんきゅうか</rt></ruby><ruby>規定<rt>きてい</rt></ruby>ではIEEE<ruby>形式<rt>けいしき</rt></ruby>ですが、ラボの<ruby>慣例<rt>かんれい</rt></ruby>はAPA<ruby>形式<rt>けいしき</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きました。どちらがよろしいでしょうか?<br>*(Quy định của khoa là IEEE, nhưng quy tắc lab là APA. Em nên theo cái nào ạ?)* |
| Inoue | APA<ruby>形式<rt>けいしき</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>言語<rt>げんご</rt></ruby><ruby>処理<rt>しょり</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>はAPAが<ruby>主流<rt>しゅりゅう</rt></ruby>です。<br>*(Em dùng APA. Lĩnh vực NLP chủ yếu dùng APA.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ. Cảm ơn thầy ạ.)* |

---

## Tình huống 5 — Phòng lab · 25/9 19:00, bí chapter 4 — LINE Yamada

*Đại ngồi lab muộn, Overleaf chapter 4 chỉ có 800 chữ sau 3 ngày. Mở LINE.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くすみません。chapter <ruby>4<rt>よん</rt></ruby> architecture で<ruby>詰<rt>つ</rt></ruby>まっています。<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>で<ruby>800<rt>はっぴゃく</rt></ruby><ruby>字<rt>じ</rt></ruby>しか<ruby>書<rt>か</rt></ruby>けません。<br>*(Anh Yamada xin lỗi vì làm phiền tối khuya. Em đang bí chapter 4 architecture. 3 ngày mới được 800 chữ.)* |
| Yamada | (LINE) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>のM<ruby>2<rt>に</rt></ruby>のときも chapter <ruby>4<rt>よん</rt></ruby>で<ruby>苦戦<rt>くせん</rt></ruby>したわ。<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい?<br>*(Không sao. Hồi M2 anh cũng vật vã chapter 4. Cụ thể vướng cái gì?)* |
| Đại | (LINE) system architecture を<ruby>文章<rt>ぶんしょう</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>すると<ruby>冗長<rt>じょうちょう</rt></ruby>になります。<ruby>読<rt>よ</rt></ruby>みづらい。<br>*(Diễn giải system architecture bằng văn xuôi thấy lằng nhằng. Khó đọc.)* |
| Yamada | (LINE) <ruby>図<rt>ず</rt></ruby>を<ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>入<rt>い</rt></ruby>れろ。Excalidraw で<ruby>描<rt>か</rt></ruby>いて、<ruby>文章<rt>ぶんしょう</rt></ruby>は<ruby>図<rt>ず</rt></ruby>の<ruby>補足<rt>ほそく</rt></ruby><ruby>程度<rt>ていど</rt></ruby>でOK。<br>*(Cho 5 hình vẽ. Vẽ bằng Excalidraw, chữ chỉ bổ sung cho hình thôi.)* |
| Đại | (LINE) なるほど!<ruby>文章<rt>ぶんしょう</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>ではなく、<ruby>図<rt>ず</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<br>*(Ra vậy! Em chuyển sang lấy hình làm trung tâm thay vì chữ.)* |
| Yamada | (LINE) ええ<ruby>感<rt>かん</rt></ruby>じ。<ruby>明日<rt>あした</rt></ruby><ruby>図<rt>ず</rt></ruby><ruby>見<rt>み</rt></ruby>せてや。<br>*(Tốt đấy. Mai cho anh xem hình nhé.)* |
| Đại | (LINE) はい!<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます!<br>*(Vâng! Cảm ơn anh thật nhiều!)* |

---

## Tình huống 6 — Phòng lab · 26/9 11:00, show 5 architecture diagrams

*Đại mở 5 file PNG Excalidraw trên màn hình. Yamada-senpai ghé sang.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>昨日<rt>きのう</rt></ruby>のアドバイスで<ruby>図<rt>ず</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>描<rt>か</rt></ruby>きました。<ruby>見<rt>み</rt></ruby>ていただけますか?<br>*(Anh Yamada, theo lời khuyên hôm qua em đã vẽ 5 hình. Anh xem hộ em được không?)* |
| Yamada | おお、はやいな。<br>*(Ô nhanh thật.)* |
| Yamada | (xem từng hình) <ruby>1<rt>いち</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby> system overview、ええな。<ruby>2<rt>に</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby> data flow も<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Hình 1 system overview, ổn. Hình 2 data flow cũng dễ hiểu.)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby>はLLM tutor のpromptの<ruby>流<rt>なが</rt></ruby>れです。<br>*(Hình 3 là luồng prompt của LLM tutor.)* |
| Yamada | <ruby>矢印<rt>やじるし</rt></ruby>がちょっと<ruby>多<rt>おお</rt></ruby>いな。<ruby>主要<rt>しゅよう</rt></ruby>な<ruby>流<rt>なが</rt></ruby>れだけ<ruby>太<rt>ふと</rt></ruby>くしたほうがええ。<br>*(Mũi tên hơi nhiều. Luồng chính nên tô đậm thôi.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>修正<rt>しゅうせい</rt></ruby>します。<ruby>文章<rt>ぶんしょう</rt></ruby>は<ruby>2000<rt>にせん</rt></ruby><ruby>字<rt>じ</rt></ruby>に<ruby>削<rt>けず</rt></ruby>れました。<br>*(Em hiểu. Em sửa. Phần văn xuôi giảm còn 2000 chữ.)* |
| Yamada | ええペースや。このまま chapter <ruby>5<rt>ご</rt></ruby> implementation も<ruby>同<rt>おな</rt></ruby>じパターンで<ruby>行<rt>い</rt></ruby>けるで。<br>*(Tốc độ ổn. Cứ thế chapter 5 implementation cũng làm cùng pattern được.)* |

---

## Tình huống 7 — Căn hộ Senri-chuo · 4/10 21:00, bàn sinh nhật Hana với Tony+Yumi qua LINE

*Đại ngồi sofa, mở LINE group "Senri-chuo Family".*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) トニーさん、ユミさん、<ruby>明日<rt>あした</rt></ruby>はハナの<ruby>1<rt>いっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>誕生日<rt>たんじょうび</rt></ruby>です。<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>からうちでお<ruby>祝<rt>いわ</rt></ruby>いをします。お<ruby>越<rt>こ</rt></ruby>しいただけますか?<br>*(Bác Tony, bác Yumi, mai là sinh nhật 1 tuổi của Hana. 5h chiều mở tiệc tại nhà cháu. Hai bác qua được không ạ?)* |
| Tony | (LINE, Osaka-ben) <ruby>当然<rt>とうぜん</rt></ruby>や!ケーキは<ruby>俺<rt>おれ</rt></ruby>が<ruby>切<rt>き</rt></ruby>るで!<br>*(Đương nhiên rồi! Bánh kem để tớ cắt!)* |
| Yumi | (LINE) ケーキの<ruby>予約<rt>よやく</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がしました。Daimaru の<ruby>苺<rt>いちご</rt></ruby>ケーキです。<br>*(Bánh tớ đặt rồi. Bánh dâu Daimaru.)* |
| Đại | (LINE) ありがとうございます!ユミさん、いつもお<ruby>気遣<rt>きづか</rt></ruby>いいただいて<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Cảm ơn hai bác! Bác Yumi luôn chu đáo, cháu thật áy náy.)* |
| Yumi | (LINE) <ruby>気<rt>き</rt></ruby>にしないでね。<ruby>私<rt>わたし</rt></ruby>たちもハナのおばあちゃんおじいちゃんやから。<br>*(Đừng bận tâm. Bọn tớ cũng là ông bà của Hana mà.)* |
| Đại | (đặt điện thoại xuống, nói với Mai) (VN) Em ơi, bác Yumi vừa nói "Bọn tớ cũng là ông bà của Hana". Anh nghe mà cay mắt.<br>*(Cay mắt.)* |
| Mai | (VN, cười) Hai bác thương Hana hơn cả mình tưởng. Mai anh nhớ nghỉ viết sotsuron một ngày nhé.<br>*(Nghỉ một ngày.)* |

---

## Tình huống 8 — Căn hộ Senri-chuo · 5/10 17:30, sinh nhật Hana 1 tuổi

*Tony+Yumi đến cùng cohort tour công ty của Yumi (3 chị). Phòng khách trải thảm picnic.*

| Tony | ハナちゃん!<ruby>1<rt>いっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>誕生日<rt>たんじょうび</rt></ruby>おめでとう!わしも<ruby>祖父<rt>じい</rt></ruby>さん<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>やで!<br>*(Hana ơi! Sinh nhật 1 tuổi vui vẻ! Tớ làm ông được 1 năm rồi đó!)* |
|---|---|
| Hana | (đứng vịn ghế, cười) バーバー!<br>*(Bà ơi!)* |
| Yumi | あら、ハナちゃんが<ruby>歩<rt>ある</rt></ruby>こうとしてるよ!<br>*(Ơ kìa, Hana đang định đi đó!)* |
| Đại | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>前<rt>まえ</rt></ruby>から<ruby>立<rt>た</rt></ruby>てるようになりました。まだ<ruby>2<rt>に</rt></ruby><ruby>歩<rt>ほ</rt></ruby>しか<ruby>歩<rt>ある</rt></ruby>けません。<br>*(Một tuần nay con đứng được. Đi mới được 2 bước thôi ạ.)* |
| Mai | (VN) Bác Tony, mời bác cắt bánh ạ!<br>*(Cắt bánh!)* |
| Tony | (cầm dao) いきまっせ!ハナちゃん、<ruby>願<rt>ねが</rt></ruby>い<ruby>事<rt>ごと</rt></ruby>は<ruby>何<rt>なん</rt></ruby>や?<br>*(Đi nào! Hana điều ước là gì?)* |
| Đại | (đỡ Hana, thổi nến) ふー!<br>*(Phù!)* |
| Mọi người | (vỗ tay)<ruby>1<rt>いっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>おめでとう!<br>*(Chúc mừng 1 tuổi!)* |

---

## Tình huống 9 — Sofa Senri-chuo · 5/10 21:00, Tony hỏi tiến độ sotsuron

*Khách đã về. Hana ngủ. Tony còn lại uống trà với Đại.*

| Vai | Lời thoại |
|---|---|
| Tony | ダイ、<ruby>卒論<rt>そつろん</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>か?<br>*(Đại, sotsuron có suôn sẻ không?)* |
| Đại | はい、トニーさん。chapter <ruby>1<rt>いち</rt></ruby>から<ruby>4<rt>よん</rt></ruby>まで<ruby>書<rt>か</rt></ruby>き<ruby>終<rt>お</rt></ruby>えました。<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>50<rt>ごじゅっ</rt></ruby>%です。<br>*(Vâng bác. Em viết xong chapter 1-4. Được 50% tổng.)* |
| Tony | <ruby>毎日<rt>まいにち</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>字<rt>じ</rt></ruby>のペースか?<br>*(Mỗi ngày 500 chữ đấy à?)* |
| Đại | はい。Pomodoro <ruby>1<rt>いっ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>行<rt>おこな</rt></ruby>っています。<ruby>朝<rt>あさ</rt></ruby>、ラボ、<ruby>夜<rt>よる</rt></ruby>です。<br>*(Vâng. Em Pomodoro 1 tiếng × 3 ca/ngày. Sáng, lab, tối.)* |
| Tony | <ruby>無理<rt>むり</rt></ruby>するなよ。<ruby>体<rt>からだ</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Đừng cố quá. Sức khỏe quan trọng.)* |
| Đại | はい、ありがとうございます。<ruby>残<rt>のこ</rt></ruby>り chapter <ruby>5<rt>ご</rt></ruby>から<ruby>8<rt>はち</rt></ruby><ruby>章<rt>しょう</rt></ruby>です。chapter <ruby>6<rt>ろく</rt></ruby> evaluation が<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>長<rt>なが</rt></ruby>いです。<br>*(Vâng cảm ơn bác. Còn chapter 5-8. Chapter 6 evaluation dài nhất.)* |
| Tony | わしは<ruby>大学<rt>だいがく</rt></ruby><ruby>行<rt>い</rt></ruby>っとらんからよう<ruby>分<rt>わ</rt></ruby>からんけど、<ruby>頑張<rt>がんば</rt></ruby>れよ。マイとハナはわしらが<ruby>見<rt>み</rt></ruby>とるから。<br>*(Tớ không học đại học nên không rành, nhưng cố lên. Mai với Hana có bọn tớ trông.)* |
| Đại | (cảm động) トニーさん、<ruby>本当<rt>ほんとう</rt></ruby>にいつもありがとうございます。<br>*(Bác Tony, em cảm ơn bác thật nhiều.)* |

---

## Tình huống 10 — Phòng lab · 15/10 14:00, Yamada PR review chapter 1-4

*Đại push lên GitHub private repo. Yamada-senpai mở Pull Request comments.*

| Vai | Lời thoại |
|---|---|
| Yamada | chapter <ruby>1<rt>いち</rt></ruby>から<ruby>4<rt>よん</rt></ruby>のPR、コメント<ruby>15<rt>じゅうご</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>入<rt>い</rt></ruby>れたで。<br>*(PR chapter 1-4, anh comment 15 chỗ rồi nhé.)* |
| Đại | ありがとうございます!<ruby>主<rt>おも</rt></ruby>な<ruby>指摘<rt>してき</rt></ruby>は?<br>*(Cảm ơn anh! Comment chính là gì ạ?)* |
| Yamada | <ruby>3<rt>みっ</rt></ruby>つや。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、section <ruby>2.3<rt>にーてんさん</rt></ruby> related work でAnki / Duolingo の<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>弱<rt>よわ</rt></ruby>みを<ruby>足<rt>た</rt></ruby>せ。ベトナム<ruby>語<rt>ご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby><ruby>視点<rt>してん</rt></ruby>で。<br>*(Ba điểm. Một, section 2.3 related work phải thêm điểm yếu cụ thể của Anki/Duolingo. Từ góc độ người học VN.)* |
| Đại | はい、<ruby>具体例<rt>ぐたいれい</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Vâng, em bổ sung 3 ví dụ cụ thể.)* |
| Yamada | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、chapter <ruby>4<rt>よん</rt></ruby> architecture <ruby>図<rt>ず</rt></ruby>に data flow の<ruby>矢印<rt>やじるし</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>しろ。<br>*(Hai, hình architecture chapter 4 phải thêm mũi tên data flow.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。Excalidraw で<ruby>修正<rt>しゅうせい</rt></ruby>します。<br>*(Em rõ. Em sửa bằng Excalidraw.)* |
| Yamada | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、citation はAPAで<ruby>統一<rt>とういつ</rt></ruby>。<ruby>4<rt>よん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>IEEEになっとる。<br>*(Ba, citation thống nhất APA. Có 4 chỗ đang IEEE.)* |
| Đại | <ruby>確認<rt>かくにん</rt></ruby>します。<ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>してPRを<ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Em check. Em sẽ sửa và update PR trong 2 ngày.)* |
| Yamada | ええ。<ruby>来週<rt>らいしゅう</rt></ruby> chapter <ruby>5<rt>ご</rt></ruby>と<ruby>6<rt>ろく</rt></ruby><ruby>見<rt>み</rt></ruby>せて。<br>*(OK. Tuần sau cho xem chapter 5 với 6.)* |

---

## Tình huống 11 — Phòng lab · 18/10 16:00, hỏi Yamada "writer''s block" như thế nào

*Đại pha cà phê cho 2 người. Yamada-senpai ngồi ghế bên.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、ちょっと<ruby>相談<rt>そうだん</rt></ruby>してもいいですか?<br>*(Anh Yamada, em xin tư vấn được không ạ?)* |
| Yamada | ええで。<br>*(Được.)* |
| Đại | <ruby>書<rt>か</rt></ruby>けない<ruby>日<rt>ひ</rt></ruby>があります。<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になります。<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>いますか?<br>*(Có ngày em không viết được. Đầu trống rỗng. Tiếng Nhật gọi là gì ạ?)* |
| Yamada | 「<ruby>筆<rt>ふで</rt></ruby>が<ruby>進<rt>すす</rt></ruby>まない」やな。または「<ruby>書<rt>か</rt></ruby>くのが<ruby>止<rt>と</rt></ruby>まる」。<br>*("Fude ga susumanai" — bút không tiến. Hoặc "kaku no ga tomaru" — viết bị dừng.)* |
| Đại | なるほど。<ruby>筆<rt>ふで</rt></ruby>が<ruby>進<rt>すす</rt></ruby>まないときはどうしますか?<br>*(Ra vậy. Khi bút không tiến thì làm sao ạ?)* |
| Yamada | <ruby>3<rt>みっ</rt></ruby>つの<ruby>方法<rt>ほうほう</rt></ruby>や。<ruby>1<rt>ひと</rt></ruby>つ、<ruby>散歩<rt>さんぽ</rt></ruby>する。<ruby>2<rt>ふた</rt></ruby>つ、<ruby>他<rt>ほか</rt></ruby>の<ruby>章<rt>しょう</rt></ruby>を<ruby>書<rt>か</rt></ruby>く。<ruby>3<rt>みっ</rt></ruby>つ、<ruby>諦<rt>あきら</rt></ruby>めて<ruby>寝<rt>ね</rt></ruby>る。<ruby>無理<rt>むり</rt></ruby>に<ruby>書<rt>か</rt></ruby>くと<ruby>質<rt>しつ</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がる。<br>*(Ba cách. Một, đi dạo. Hai, viết chương khác. Ba, bỏ cuộc rồi ngủ. Cố viết thì chất lượng giảm.)* |
| Đại | <ruby>諦<rt>あきら</rt></ruby>めて<ruby>寝<rt>ね</rt></ruby>る、ですか?<ruby>意外<rt>いがい</rt></ruby>ですね。<br>*(Bỏ cuộc rồi ngủ ạ? Bất ngờ thật.)* |
| Yamada | <ruby>翌朝<rt>よくあさ</rt></ruby><ruby>意外<rt>いがい</rt></ruby>と<ruby>書<rt>か</rt></ruby>けることがあるで。<br>*(Sáng hôm sau hay viết được lắm.)* |

---

## Tình huống 12 — Căn hộ Senri-chuo · 28/10 20:00, Mai phát hiện Đại stress

*Đại ngồi bàn ăn, không động đũa. Mai đặt bát canh xuống.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh sao thế? Ăn đi chứ.<br>*(Sao thế?)* |
| Đại | (VN) Anh viết được 18000 chữ rồi, còn 12000 chữ. Chapter 6 evaluation phải xử lý 100 user data — quá nhiều bảng.<br>*(Quá nhiều.)* |
| Mai | (VN) Anh nhớ anh Yamada dạy "fude ga susumanai" — bút không tiến — không?<br>*(Bút không tiến.)* |
| Đại | (VN, cười) Em nghe anh kể câu đó à?<br>*(Em nhớ?)* |
| Mai | (VN) Ừ. Anh ấy bảo 3 cách: đi dạo, viết chương khác, hoặc bỏ ngủ. Tối nay anh chọn cách 3 nhé. Hana với em đi ngủ sớm cùng anh.<br>*(Cách 3.)* |
| Đại | (VN) Cảm ơn em. Em hiểu anh hơn cả anh hiểu chính anh.<br>*(Cảm ơn.)* |

---

## Tình huống 13 — Phòng lab · 30/10 17:00, Đại cảm ơn Yamada trang trọng

*Buổi review chapter 5 xong. Đại đứng lên trước khi Yamada-senpai về.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、ちょっといいですか?<br>*(Anh Yamada, anh có chút thời gian không?)* |
| Yamada | おう、<ruby>何<rt>なに</rt></ruby>や。<br>*(Ờ, gì thế.)* |
| Đại | <ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>2<rt>に</rt></ruby>ヶ<ruby>月間<rt>げつかん</rt></ruby>、<ruby>毎週<rt>まいしゅう</rt></ruby>レビューしていただいて<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>山田<rt>やまだ</rt></ruby>さんのおかげで<ruby>60<rt>ろくじゅっ</rt></ruby>%まで<ruby>書<rt>か</rt></ruby>き<ruby>進<rt>すす</rt></ruby>めることができました。<br>*(Hai tháng qua từ tháng 9, anh review hàng tuần cho em, em thật sự cảm ơn anh. Nhờ anh em mới viết được đến 60%.)* |
| Yamada | <ruby>水<rt>みず</rt></ruby>くさいこと<ruby>言<rt>い</rt></ruby>うな。<ruby>後輩<rt>こうはい</rt></ruby>のレビューはsenpaiの<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Đừng có khách sáo. Review hậu bối là việc của senpai.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby> chapter <ruby>6<rt>ろく</rt></ruby> evaluation を<ruby>提出<rt>ていしゅつ</rt></ruby>します。<ruby>100<rt>ひゃく</rt></ruby><ruby>人<rt>にん</rt></ruby>データの<ruby>分析<rt>ぶんせき</rt></ruby><ruby>章<rt>しょう</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tuần sau em sẽ nộp chapter 6 evaluation. Chương phân tích dữ liệu 100 người. Nhờ anh.)* |
| Yamada | <ruby>了解<rt>りょうかい</rt></ruby>。あと<ruby>4<rt>よん</rt></ruby><ruby>章<rt>しょう</rt></ruby>やな。<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>せそうか?<br>*(Rõ. Còn 4 chương đúng không. Trong tháng 11 nộp được cho thầy Inoue không?)* |
| Đại | はい、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>20<rt>はつ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にします。<br>*(Vâng, em đặt mục tiêu khoảng 20/11.)* |
| Yamada | ええペースや。<ruby>無理<rt>むり</rt></ruby>するなよ。<br>*(Tốc độ ổn. Đừng cố quá nhé.)* |

---

## Tình huống 14 — Đoạn cuối tiếng Việt — Đại gọi điện cho bố ở Hà Nội

*Sau khi Hana ngủ. Đại ra balcony, mở Zalo gọi cho bố.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Bố ơi, con đây. Bố ăn cơm chưa? |
| Bố Đại | (VN) Bố vừa xong. Sao hôm nay gọi sớm vậy con, có chuyện gì à? |
| Đại | (VN) Không có gì đặc biệt đâu bố. Con muốn báo cáo tiến độ luận văn thôi. Con viết được 18000 chữ trên 30000, hết 60%. |
| Bố Đại | (VN) Giỏi đấy con. Bố ngày xưa làm khoá luận chỉ 8000 chữ là tan tành. Con nộp khi nào? |
| Đại | (VN) Cuối tháng 11 con nộp anh Yamada — gọi là senpai bố ạ — review hết. Đầu tháng 12 con đưa thầy Inoue duyệt cuối cùng. |
| Bố Đại | (VN) Anh Yamada là người Nhật à? Anh ấy review luận văn cho con miễn phí? |
| Đại | (VN) Vâng. Anh ấy bảo "review hậu bối là việc của senpai" — văn hoá lab Nhật đó bố. Hôm nay con cảm ơn anh ấy trang trọng, anh ấy cười bảo "đừng khách sáo". |
| Bố Đại | (VN) Cái câu "fude ga susumanai" mày kể hôm trước hay đấy. Bố nhớ luôn. Bút không chạy thì đi ngủ — đúng triết lý sống. |
| Đại | (VN, cười) Vâng bố. Hôm sinh nhật Hana hai bác Tony với Yumi qua chơi vui lắm. Bác Yumi đặt bánh dâu Daimaru. |
| Bố Đại | (VN) Tốt quá. Mày ráng giữ sức khỏe. 30000 chữ không phải chuyện đùa, ngủ đủ giấc nghe con. |
| Đại | (VN) Vâng bố. Con cảm ơn bố. Mai con gọi lại sau khi viết xong chapter 5. |

---

## Đọng lại chương 6

Đại bước vào 2 tháng viết sotsuron 30.000 chữ. Báo cáo kế hoạch với Inoue-sensei bằng **執筆計画を報告させていただきます**. Xác nhận citation APA (không phải IEEE) qua câu **どちらがよろしいでしょうか?**. Khi bí chapter 4 architecture, LINE Yamada-senpai dùng **〜で詰まっています** (đang tắc ở...) và nhận lời khuyên đổi sang vẽ 5 hình Excalidraw. Học cụm **筆が進まない** (bút không tiến) — và 3 cách xử lý của senpai: đi dạo, viết chương khác, hoặc ngủ. Sinh nhật Hana 1 tuổi 5/10 mời Tony+Yumi bằng **お越しいただけますか?**, nghe Yumi nói "私たちもハナのおばあちゃんおじいちゃんやから" — Đại cay mắt. Yamada-senpai PR review 15 comment trên chapter 1-4, Đại đáp **承知しました + 2日以内に修正** chuyên nghiệp. Cuối tháng 10 cảm ơn senpai trang trọng bằng **〜のおかげで〜まで書き進めることができました**, senpai gạt đi với **水くさいこと言うな**. Mai phát hiện Đại stress, ép đi ngủ sớm theo "cách 3" của Yamada. Cuối cùng gọi bố ở Hà Nội báo cáo tiến độ 60%.

> Từ vựng & mẫu câu chương này: 卒論・執筆・APA形式・IEEE形式・query・PR review・Excalidraw・data flow・citation・evaluation・Pomodoro・筆が進まない・詰まっています・お越しいただけますか・〜のおかげで〜・水くさいこと言うな・承知しました・〜を報告させていただきます・どちらがよろしいでしょうか・無理するな

## Bí quyết chương

- **〜で詰まっています**: cách nói "đang bí ở..." rất tự nhiên với senpai. Dùng LINE muộn cũng phải mở đầu **夜遅くすみません**.
- **筆が進まない** vs **書けない**: cụm trang trọng có hình ảnh, dùng nói chuyện với sensei/senpai. **書けない** là khẩu ngữ thuần.
- Khi cảm ơn senpai trang trọng, senpai Nhật thường gạt đi với **水くさいこと言うな** (đừng khách sáo, "nước lạnh nhạt") — đừng diễn giải là họ ghét; đó là cách nói "chúng ta gần nhau, không cần khách sáo".
- **〜のおかげで〜することができました**: cấu trúc cảm ơn nhờ ai mà làm được gì — chuẩn trang trọng cho lời tri ân.
- Khi reviewer (senpai/sensei) chỉ ra điểm sai, đáp **承知しました + deadline cụ thể** (vd 2 ngày) thay vì xin lỗi lan man.
- Văn hoá lab Nhật: senpai review luận văn cho hậu bối là việc đương nhiên, không tính phí — nhưng vẫn phải cảm ơn trang trọng ít nhất 1 lần.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 執筆 | しっぴつ | CHẤP BÚT | viết, biên soạn |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 追跡 | ついせき | TRUY TÍCH | theo dõi |
| 倍 | ばい | BỘI | gấp đôi |
| 最終稿 | さいしゅうこう | TỐI CHUNG CẢO | bản cuối |
| 中旬 | ちゅうじゅん | TRUNG TUẦN | giữa tháng |
| 了解 | りょうかい | LIỄU GIẢI | rõ |
| 形式 | けいしき | HÌNH THỨC | định dạng |
| 推奨 | すいしょう | THÔI TƯỞNG | khuyến nghị |
| 慣例 | かんれい | QUÁN LỆ | thông lệ |
| 直接 | ちょくせつ | TRỰC TIẾP | trực tiếp |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 主流 | しゅりゅう | CHỦ LƯU | chủ đạo |
| 詰まる | つまる | CẬT | bí, tắc |
| 苦戦 | くせん | KHỔ CHIẾN | vật lộn |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 文章 | ぶんしょう | VĂN CHƯƠNG | văn xuôi |
| 冗長 | じょうちょう | DÀNG TRƯỜNG | dài dòng |
| 図 | ず | ĐỒ | hình |
| 補足 | ほそく | BỔ TÚC | bổ sung |
| 中心 | ちゅうしん | TRUNG TÂM | trọng tâm |
| 切り替える | きりかえる | THIẾT THỂ | chuyển đổi |
| 矢印 | やじるし | THỈ ẤN | mũi tên |
| 主要 | しゅよう | CHỦ YẾU | chính |
| 太い | ふとい | THÁI | đậm, dày |
| 修正 | しゅうせい | TU CHÍNH | sửa |
| 越す | こす | VIỆT | đến, ghé |
| 誕生日 | たんじょうび | ĐẢN SINH NHẬT | sinh nhật |
| 祝う | いわう | CHÚC | chúc, mừng |
| 願い事 | ねがいごと | NGUYỆN SỰ | điều ước |
| 体 | からだ | THỂ | cơ thể |
| 指摘 | してき | CHỈ TRÍCH | chỉ ra |
| 具体例 | ぐたいれい | CỤ THỂ LỆ | ví dụ cụ thể |
| 統一 | とういつ | THỐNG NHẤT | thống nhất |
| 箇所 | かしょ | CÁ SỞ | điểm, chỗ |
| 更新 | こうしん | CẬP TÂN | cập nhật |
| 筆 | ふで | BÚT | bút |
| 進む | すすむ | TIẾN | tiến triển |
| 散歩 | さんぽ | TÁN BỘ | đi dạo |
| 諦める | あきらめる | ĐẾ | bỏ cuộc |
| 質 | しつ | CHẤT | chất lượng |
| 翌朝 | よくあさ | DỰC TRIỀU | sáng hôm sau |
| 意外 | いがい | Ý NGOẠI | bất ngờ |
| 水くさい | みずくさい | THUỶ XÚ | khách sáo |
| 役立つ | やくだつ | DỊCH LẬP | có ích |
| 恥 | はじ | SỈ | xấu hổ |
| 姿勢 | しせい | TƯ THẾ | thái độ |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000007, 800000024, NULL, 'markdown_book', 'T7. Hackathon Kansai và lời mời của Anri VC (関西ハッカソン・VC)', '# Sách sinh viên Đại học Osaka · T7. Hackathon Kansai và lời mời của Anri VC (関西ハッカソン・VC)

> **Mục tiêu nhân vật:** Đại, 24 tuổi, tháng 11/2029. Học các mẫu hội thoại tiếng Nhật của founder solo tại hackathon: (1) rủ Mai đi xem làm mẫu, (2) đăng ký tham gia + xin ổ điện, (3) pitch demo 5 phút, (4) trả lời phỏng vấn judge, (5) nhận giải nhì + cảm ơn, (6) đàm phán với VC partner sau event, (7) hẹn meeting follow-up bằng keigo.

---

## Bối cảnh

Tháng 11 năm 2029. Kansai Hackathon — sự kiện thường niên tại Osaka Innovation Hub, Umeda. 200 đội startup. Đại tham gia solo với Hizashi (đã chạy 6 tháng, 50 user, từng đoạt Best Student Paper IPSJ-NL). Polish demo 32 tiếng, thêm tính năng voice TTS. Cuối event đoạt giải nhì ¥250.000. Sato-san — partner Anri VC từ Tokyo — chủ động tiếp cận, đề xuất pre-seed ¥30M. Chương này tập trung **đăng ký tham dự event**, **pitch demo 5 phút bằng JP**, **Q&A judge khi nghe tiếng Nhật chuyên ngành**, **shoutout giải thưởng**, và **đàm phán với VC partner khi mới gặp lần đầu**.

---

## Tình huống 1 — Phòng lab Inoue · 5/11 11:00, Yamada rủ tham gia hackathon

*Đại đang code Hizashi voice TTS feature. Yamada-senpai ghé qua bàn.*

| Vai | Lời thoại |
|---|---|
| Yamada | グエン、Kansai Hackathon <ruby>18<rt>じゅうはち</rt></ruby>-<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>大阪<rt>おおさか</rt></ruby>であるで。<ruby>出<rt>で</rt></ruby>る?<br>*(Đại, Kansai Hackathon 18-19 ở Osaka. Tham gia không?)* |
| Đại | え、<ruby>来週<rt>らいしゅう</rt></ruby>ですか?<ruby>卒論<rt>そつろん</rt></ruby><ruby>執筆中<rt>しっぴつちゅう</rt></ruby>ですが…<br>*(Hả tuần sau ạ? Em đang viết sotsuron…)* |
| Yamada | <ruby>32<rt>さんじゅうに</rt></ruby><ruby>時間<rt>じかん</rt></ruby>だけや。Hizashi はもう<ruby>動<rt>うご</rt></ruby>いとるからゼロから<ruby>作<rt>つく</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>ない。デモ<ruby>磨<rt>みが</rt></ruby>くだけ。<br>*(Chỉ 32 tiếng thôi. Hizashi đã chạy rồi, không cần xây từ đầu. Chỉ polish demo.)* |
| Đại | なるほど。<ruby>賞金<rt>しょうきん</rt></ruby>はありますか?<br>*(Ra vậy. Có giải thưởng không ạ?)* |
| Yamada | <ruby>最優秀<rt>さいゆうしゅう</rt></ruby><ruby>賞<rt>しょう</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby><ruby>万<rt>まん</rt></ruby>、<ruby>優秀<rt>ゆうしゅう</rt></ruby><ruby>賞<rt>しょう</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby>。それより VC が<ruby>来<rt>く</rt></ruby>るで。Anri、JAFCO、グロービス<ruby>常連<rt>じょうれん</rt></ruby>や。<br>*(Giải nhất 500k, giải nhì 250k. Quan trọng hơn là VC sẽ đến. Anri, JAFCO, Globis quen mặt.)* |
| Đại | VC<ruby>露出<rt>ろしゅつ</rt></ruby>ですか…<ruby>考<rt>かんが</rt></ruby>えてみます。<ruby>妻<rt>つま</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(VC exposure ạ… Em sẽ cân nhắc. Cho em bàn với vợ.)* |
| Yamada | <ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りは<ruby>明後日<rt>あさって</rt></ruby>や。<br>*(Hạn đăng ký ngày kia.)* |

---

## Tình huống 2 — Căn hộ Senri-chuo · 5/11 21:00, bàn với Mai

*Đại ngồi sofa, Mai đang ru Hana. Đại mở laptop hiển thị trang event.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, có Kansai Hackathon 18-19/11. Anh muốn mang Hizashi đi.<br>*(Hackathon.)* |
| Mai | (VN) 32 tiếng liền à? Lúc đó anh đang viết sotsuron nước rút mà.<br>*(Nước rút.)* |
| Đại | (VN) Anh biết. Nhưng VC Anri, JAFCO, Globis sẽ tới. Nếu họ để ý Hizashi thì cơ hội pre-seed tự mở ra.<br>*(Mở ra.)* |
| Mai | (VN) Anh muốn khởi nghiệp Hizashi serious thật à?<br>*(Serious?)* |
| Đại | (VN) Anh chưa quyết. Nhưng phải thử test thị trường trước khi tốt nghiệp. Cybozu, Mercari, LINE — 3 offer đó vẫn còn.<br>*(Test thị trường.)* |
| Mai | (VN) Vậy em hỗ trợ. Anh đi đi. Em với Hana ở nhà với bác Yumi cuối tuần đó.<br>*(Hỗ trợ.)* |
| Đại | (VN) Cảm ơn em. Em đi cùng demo ngày Chủ Nhật được không? Anh muốn em ngồi ghế khán giả để test voice TTS bằng tiếng Việt thật.<br>*(Demo thật.)* |
| Mai | (VN) Được. Bác Yumi trông Hana 2 tiếng.<br>*(2 tiếng.)* |

---

## Tình huống 3 — Osaka Innovation Hub · 18/11 9:00, đăng ký + xin ổ điện

*Tầng 27 Grand Front Osaka. Sảnh trang trí cờ event. Đại đeo balo MacBook + bộ sạc.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>参加者<rt>さんかしゃ</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby>はこちらでよろしいですか?<br>*(Chào buổi sáng. Quầy đăng ký người tham gia ở đây phải không ạ?)* |
| Staff | はい。チーム<ruby>名<rt>めい</rt></ruby>とお<ruby>名前<rt>なまえ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Mời cho biết tên đội và họ tên.)* |
| Đại | チーム「Hizashi」、<ruby>個人<rt>こじん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>のグエン・ダイです。<br>*(Đội "Hizashi", tham gia cá nhân, Nguyễn Đại.)* |
| Staff | <ruby>確認<rt>かくにん</rt></ruby>できました。こちらが<ruby>名札<rt>なふだ</rt></ruby>と<ruby>席<rt>せき</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>カードです。<ruby>席<rt>せき</rt></ruby>はA-<ruby>15<rt>じゅうご</rt></ruby><ruby>番<rt>ばん</rt></ruby>です。<br>*(Đã xác nhận. Đây là thẻ tên và số ghế. Ghế là A-15.)* |
| Đại | ありがとうございます。<ruby>電源<rt>でんげん</rt></ruby>は<ruby>各<rt>かく</rt></ruby><ruby>席<rt>せき</rt></ruby>にありますか?<br>*(Cảm ơn ạ. Ổ điện có ở từng ghế không?)* |
| Staff | はい、<ruby>各<rt>かく</rt></ruby><ruby>席<rt>せき</rt></ruby>に<ruby>2<rt>ふた</rt></ruby>つあります。Wi-Fi のSSIDとパスワードは<ruby>名札<rt>なふだ</rt></ruby><ruby>裏<rt>うら</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>されています。<br>*(Vâng, mỗi ghế có 2 ổ. SSID Wi-Fi và mật khẩu ghi sau thẻ tên.)* |
| Đại | <ruby>食事<rt>しょくじ</rt></ruby>はどうなっていますか?<br>*(Bữa ăn thế nào ạ?)* |
| Staff | <ruby>昼<rt>ひる</rt></ruby>と<ruby>夜<rt>よる</rt></ruby>、お<ruby>弁当<rt>べんとう</rt></ruby>が<ruby>無料<rt>むりょう</rt></ruby><ruby>提供<rt>ていきょう</rt></ruby>されます。アレルギーは?<br>*(Trưa và tối có bento miễn phí. Có dị ứng không ạ?)* |
| Đại | ありません。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Không có. Mong được giúp đỡ ạ.)* |

---

## Tình huống 4 — Ghế A-15 · 18/11 14:00, gặp đối thủ ghế bên cạnh

*Đại đang code voice TTS. Sinh viên Kyodai ghế A-16 ghé sang.*

| Vai | Lời thoại |
|---|---|
| Sv Kyodai | あの、すみません、<ruby>充電器<rt>じゅうでんき</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>口<rt>くち</rt></ruby><ruby>貸<rt>か</rt></ruby>していただけませんか?<ruby>1<rt>ひと</rt></ruby>つしか<ruby>持<rt>も</rt></ruby>ってきていなくて…<br>*(Xin lỗi, cho em mượn 1 ổ sạc được không? Em chỉ mang 1 cục…)* |
| Đại | はい、どうぞ。<ruby>2<rt>に</rt></ruby><ruby>口<rt>くち</rt></ruby><ruby>持<rt>も</rt></ruby>ってきました。<br>*(Vâng, mời. Em mang 2 ổ rồi.)* |
| Sv Kyodai | ありがとうございます!<ruby>京都大学<rt>きょうとだいがく</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。チームは?<br>*(Cảm ơn ạ! Em là Sato, Đại học Kyoto. Đội anh là gì?)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエン・ダイです。チームHizashi、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリです。<br>*(Em là Nguyễn Đại, Đại học Osaka. Đội Hizashi, app học tiếng Nhật cho người Việt.)* |
| Sv Kyodai | グエンさん!IPSJ-NLの Best Student Paper の<ruby>方<rt>かた</rt></ruby>ですよね?ニュースで<ruby>見<rt>み</rt></ruby>ました!<br>*(Anh Đại! Anh là người đoạt Best Student Paper IPSJ-NL phải không? Em xem trên tin tức!)* |
| Đại | はい、そうです。<ruby>恥<rt>は</rt></ruby>ずかしいです。<br>*(Vâng, đúng ạ. Ngại quá.)* |
| Sv Kyodai | チームLiveStream AI です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>明日<rt>あした</rt></ruby>の<ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>りましょう!<br>*(Đội em là LiveStream AI. Rất vui được làm quen. Ngày mai cùng cố gắng nhé!)* |

---

## Tình huống 5 — Sảnh lớn · 19/11 16:50, chuẩn bị pitch — hỏi thứ tự

*Đại mặc áo lab xanh, cầm MacBook. Tới gặp staff điều phối.*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、チームHizashiの<ruby>発表<rt>はっぴょう</rt></ruby><ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Xin lỗi, cho em xác nhận thứ tự pitch của đội Hizashi.)* |
| Staff | はい、お<ruby>待<rt>ま</rt></ruby>ちください。Hizashi さんは<ruby>12<rt>じゅうに</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>です。あと<ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>でお<ruby>呼<rt>よ</rt></ruby>びします。<br>*(Vâng đợi em chút. Đội Hizashi là thứ 12. Khoảng 20 phút nữa em sẽ gọi.)* |
| Đại | <ruby>持<rt>も</rt></ruby>ち<ruby>時間<rt>じかん</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でよろしいですか?<br>*(Thời gian 5 phút đúng không ạ?)* |
| Staff | はい、ピッチ<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ぷん</rt></ruby> + Q&A <ruby>2<rt>に</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>4<rt>よん</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>で<ruby>黄色<rt>きいろ</rt></ruby>のサイン、<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>赤<rt>あか</rt></ruby>です。<br>*(Vâng, pitch 5 phút + Q&A 2 phút. 4 phút 30 giây hiện đèn vàng, 5 phút là đèn đỏ.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。デモは<ruby>観客<rt>かんきゃく</rt></ruby><ruby>参加型<rt>さんかがた</rt></ruby>でもよろしいですか?<ruby>妻<rt>つま</rt></ruby>が<ruby>客席<rt>きゃくせき</rt></ruby>で<ruby>使<rt>つか</rt></ruby>って<ruby>見<rt>み</rt></ruby>せます。<br>*(Em rõ. Demo có khán giả tham gia được không ạ? Vợ em ngồi ghế khán giả sẽ dùng và demo.)* |
| Staff | <ruby>面白<rt>おもしろ</rt></ruby>いですね、もちろん OK です。<ruby>奥<rt>おく</rt></ruby>さまに<ruby>前<rt>まえ</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>っていただいてください。<br>*(Thú vị đấy, đương nhiên OK. Mời chị ngồi hàng trên ạ.)* |

---

## Tình huống 6 — Sân khấu chính · 19/11 17:15, pitch 5 phút

*Đèn sân khấu sáng. 200 khán giả + 5 judge bàn trước. Mai ngồi hàng 2 với Hana trên đùi (bác Yumi tạm thời giữ ngoài sảnh, Hana xin theo).*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>次<rt>つぎ</rt></ruby>はチームHizashi、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>のグエン・ダイさんです!<br>*(Tiếp theo là đội Hizashi, Nguyễn Đại Đại học Osaka!)* |
| Đại | <ruby>皆様<rt>みなさま</rt></ruby>、こんにちは!Hizashi の<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>、グエン・ダイです。<br>*(Kính chào quý vị! Tôi là founder Hizashi, Nguyễn Đại.)* |
| Đại | <ruby>1<rt>いち</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby>:ベトナム<ruby>人<rt>じん</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>は<ruby>日本<rt>にほん</rt></ruby><ruby>国内<rt>こくない</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万人<rt>まんにん</rt></ruby>、ベトナム<ruby>国内<rt>こくない</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万人<rt>まんにん</rt></ruby>、<ruby>計<rt>けい</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>万人<rt>まんにん</rt></ruby>のマーケットがあります。<br>*(Slide 1: Người Việt học tiếng Nhật ở Nhật 30 ngàn, ở Việt Nam 50 ngàn, tổng 80 ngàn TAM.)* |
| Đại | <ruby>2<rt>に</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby>:Hizashi はadaptive learning + LLM tutor +ベトナム<ruby>語<rt>ご</rt></ruby>コンテキストの<ruby>3<rt>みっ</rt></ruby>つを<ruby>統合<rt>とうごう</rt></ruby>したシステムです。<br>*(Slide 2: Hizashi là hệ tích hợp 3 yếu tố — adaptive learning + LLM tutor + VN context.)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby> traction:<ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>ベータユーザー、<ruby>4<rt>よん</rt></ruby><ruby>週<rt>しゅう</rt></ruby><ruby>後<rt>ご</rt></ruby> retention <ruby>76<rt>ななじゅうろく</rt></ruby>%、IPSJ-NL Best Student Paper <ruby>受賞<rt>じゅしょう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Slide 3 traction: 50 beta user, retention 76% sau 4 tuần, đã đoạt Best Student Paper IPSJ-NL.)* |
| Đại | <ruby>4<rt>よん</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby>:<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>新機能<rt>しんきのう</rt></ruby> voice TTS を<ruby>追加<rt>ついか</rt></ruby>しました。<ruby>客席<rt>きゃくせき</rt></ruby>の<ruby>妻<rt>つま</rt></ruby>マイが<ruby>実演<rt>じつえん</rt></ruby>します。<br>*(Slide 4: Hôm nay vừa thêm tính năng voice TTS. Vợ tôi Mai ở khán giả sẽ làm mẫu trực tiếp.)* |
| Mai | (đứng lên, mở app, đọc câu) 「<ruby>先生<rt>せんせい</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>のテストの<ruby>範囲<rt>はんい</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?」<br>*("Sensei, phạm vi bài test ngày mai là gì ạ?")* |
| Hizashi app | (voice) 「テストの<ruby>範囲<rt>はんい</rt></ruby>」は phạm vi bài kiểm tra。「<ruby>範囲<rt>はんい</rt></ruby>」の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つの<ruby>例文<rt>れいぶん</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>します…<br>*(App phát tiếng Việt giải thích phạm vi + 3 câu ví dụ.)* |
| Đại | (slide 5 cuối) <ruby>以上<rt>いじょう</rt></ruby>です!ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました!<br>*(Hết ạ! Cảm ơn quý vị đã lắng nghe!)* |
| (vỗ tay)<br> |

---

## Tình huống 7 — Sân khấu chính · 19/11 17:21, Q&A judge

*5 judge cầm bảng số. Judge 1 đứng dậy.*

| Vai | Lời thoại |
|---|---|
| Judge 1 | <ruby>素晴<rt>すば</rt></ruby>らしいデモでした。もう<ruby>本番<rt>ほんばん</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>レベルですね。<ruby>1<rt>いっ</rt></ruby><ruby>つ<rt>つ</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>、unit economics は?<br>*(Demo tuyệt vời. Đã ở mức production rồi. Một câu hỏi, unit economics thế nào?)* |
| Đại | <ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>当<rt>あ</rt></ruby>たり<ruby>月<rt>つき</rt></ruby>$<ruby>1<rt>いち</rt></ruby>のClaude APIコスト、ARPU $<ruby>5<rt>ご</rt></ruby> freemium → $<ruby>10<rt>じゅう</rt></ruby> premium です。<ruby>1000<rt>せん</rt></ruby><ruby>人<rt>にん</rt></ruby>規模で prompt cache により$<ruby>0.5<rt>てんご</rt></ruby>まで<ruby>下<rt>さ</rt></ruby>がります。<br>*(Cost 1$/user/tháng cho Claude API, ARPU 5$ freemium đến 10$ premium. Quy mô 1000 user nhờ prompt cache giảm còn 0.5$.)* |
| Judge 2 | reviewer market といいますか、<ruby>競合<rt>きょうごう</rt></ruby>のBunPro、Wanikani との<ruby>差別化<rt>さべつか</rt></ruby>は?<br>*(Còn về thị trường reviewer, khác biệt với BunPro, Wanikani là gì?)* |
| Đại | すみません、reviewer market というのは…?<br>*(Em xin lỗi, "reviewer market" nghĩa là gì ạ…?)* |
| Judge 2 | あ、すみません、「<ruby>復習<rt>ふくしゅう</rt></ruby><ruby>系<rt>けい</rt></ruby>アプリ<ruby>市場<rt>しじょう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>えばいいですね。<br>*(À xin lỗi, "thị trường app ôn tập" là đúng hơn.)* |
| Đại | はい、ありがとうございます。BunPro と Wanikani は<ruby>英語<rt>えいご</rt></ruby><ruby>話者<rt>わしゃ</rt></ruby>向けです。Hizashi はベトナム<ruby>語<rt>ご</rt></ruby><ruby>母語<rt>ぼご</rt></ruby><ruby>話者<rt>わしゃ</rt></ruby>の<ruby>文法<rt>ぶんぽう</rt></ruby><ruby>癖<rt>くせ</rt></ruby>を<ruby>専門<rt>せんもん</rt></ruby>にしています。<ruby>例<rt>たと</rt></ruby>えば、<ruby>助詞<rt>じょし</rt></ruby>「は」「が」の<ruby>誤用<rt>ごよう</rt></ruby><ruby>傾向<rt>けいこう</rt></ruby>がベトナム<ruby>人<rt>じん</rt></ruby>独特です。<br>*(Vâng cảm ơn. BunPro và Wanikani hướng người nói tiếng Anh. Hizashi chuyên về thói quen ngữ pháp của người Việt bản ngữ. Ví dụ xu hướng nhầm "wa"/"ga" rất riêng của người Việt.)* |
| Judge 3 | <ruby>具体的<rt>ぐたいてき</rt></ruby>!ありがとうございました。<br>*(Cụ thể! Cảm ơn anh.)* |

---

## Tình huống 8 — Sảnh sau sân khấu · 19/11 17:25, Mai khen demo

*Đại bước xuống sân khấu, Mai đón ở cánh gà, Hana ngủ trên vai Mai.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, ôm Đại) Anh giỏi quá! Em hồi hộp đến mức quên cả lời thoại lúc đứng dậy.<br>*(Hồi hộp!)* |
| Đại | (VN) Em demo hoàn hảo. Cái câu "phạm vi bài kiểm tra" là tiếng Việt rõ ràng — judge nghe được luôn.<br>*(Hoàn hảo.)* |
| Mai | (VN) Lúc judge hỏi "reviewer market" em không hiểu — tưởng đâu chấm điểm reviewer Anki.<br>*(Tưởng đâu.)* |
| Đại | (VN) Anh cũng vậy! Anh phải hỏi lại "reviewer market というのは?" — judge cười xòa giải thích lại.<br>*(Hỏi lại.)* |
| Mai | (VN) Hay đấy, biết hỏi lại không sợ mất mặt.<br>*(Không sợ.)* |

---

## Tình huống 9 — Sân khấu chính · 19/11 17:45, công bố giải

*Toàn bộ đội đứng phía sân khấu. MC mở phong bì.*

| Vai | Lời thoại |
|---|---|
| MC | では<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>です!<ruby>最優秀<rt>さいゆうしゅう</rt></ruby><ruby>賞<rt>しょう</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>:チーム「LiveStream AI」、<ruby>京都大学<rt>きょうとだいがく</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby>さんチーム!<br>*(Công bố kết quả! Giải nhất 500.000 yên: đội "LiveStream AI", đội Sato Đại học Kyoto!)* |
| (vỗ tay)<br> |
| MC | <ruby>優秀<rt>ゆうしゅう</rt></ruby><ruby>賞<rt>しょう</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>:チーム「Hizashi」、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>グエン・ダイさん!<br>*(Giải nhì 250.000 yên: đội "Hizashi", Nguyễn Đại Đại học Osaka!)* |
| Đại | (lên sân khấu nhận bằng + check) <ruby>誠<rt>まこと</rt></ruby>にありがとうございます!<br>*(Chân thành cảm ơn ạ!)* |
| MC | <ruby>受賞<rt>じゅしょう</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>を<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời một lời nhận giải.)* |
| Đại | <ruby>客席<rt>きゃくせき</rt></ruby>の<ruby>妻<rt>つま</rt></ruby>と<ruby>娘<rt>むすめ</rt></ruby>、そしていつも<ruby>支<rt>ささ</rt></ruby>えてくれる<ruby>井上<rt>いのうえ</rt></ruby>ラボの<ruby>皆様<rt>みなさま</rt></ruby>、ベータユーザーの<ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>します。Hizashi は<ruby>本気<rt>ほんき</rt></ruby>で<ruby>事業<rt>じぎょう</rt></ruby>として<ruby>進<rt>すす</rt></ruby>めていきます!<br>*(Cảm ơn vợ và con gái ở khán giả, toàn thể mọi người lab Inoue luôn ủng hộ, và 50 beta user. Hizashi sẽ tiến lên như một business thực sự!)* |
| (vỗ tay lớn)<br> |

---

## Tình huống 10 — Sảnh sau sân khấu · 19/11 18:30, Sato-san Anri VC tiếp cận

*Đại đang chụp ảnh với Mai+Hana. Một người đàn ông 35 tuổi vest navy, danh thiếp trong tay tiến đến.*

| Vai | Lời thoại |
|---|---|
| Sato-san | <ruby>失礼<rt>しつれい</rt></ruby>します、グエンさんでしょうか?<br>*(Xin lỗi, anh là Đại phải không ạ?)* |
| Đại | はい、グエン・ダイです。<br>*(Vâng, tôi là Nguyễn Đại.)* |
| Sato-san | <ruby>初<rt>はじ</rt></ruby>めまして。ANRI の<ruby>佐藤<rt>さとう</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>名刺<rt>めいし</rt></ruby>です。<br>*(Lần đầu gặp. Tôi là Sato, Anri. Danh thiếp ạ.)* |
| Đại | (nhận danh thiếp hai tay, đọc) <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、Anri<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby> パートナー…<ruby>頂戴<rt>ちょうだい</rt></ruby>します。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、まだ<ruby>学生<rt>がくせい</rt></ruby>で<ruby>名刺<rt>めいし</rt></ruby>がございません。<br>*(Anh Sato, Partner Anri… Em xin nhận. Em xin lỗi, em vẫn là sinh viên nên chưa có danh thiếp.)* |
| Sato-san | <ruby>構<rt>かま</rt></ruby>いません。<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby>いただけますか?<br>*(Không sao. Cho tôi xin 5 phút được không ạ?)* |
| Đại | はい、もちろんです。<br>*(Vâng, tất nhiên ạ.)* |
| Sato-san | ANRI は<ruby>東京<rt>とうきょう</rt></ruby><ruby>拠点<rt>きょてん</rt></ruby>の<ruby>初期<rt>しょき</rt></ruby><ruby>段階<rt>だんかい</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>のVCで、メルカリやUUUMの<ruby>初期<rt>しょき</rt></ruby><ruby>投資<rt>とうし</rt></ruby><ruby>家<rt>か</rt></ruby>でもあります。Hizashi、<ruby>本気<rt>ほんき</rt></ruby>で<ruby>事業<rt>じぎょう</rt></ruby><ruby>化<rt>か</rt></ruby>される<ruby>予定<rt>よてい</rt></ruby>ですか?<br>*(ANRI là VC trụ sở Tokyo chuyên early-stage, từng angel cho Mercari và UUUM. Hizashi anh có định làm business thực sự không?)* |

---

## Tình huống 11 — Cùng địa điểm · 19/11 18:35, Đại đáp về tình hình + offer

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。Cybozu、メルカリ、LINEの<ruby>内定<rt>ないてい</rt></ruby>がございます。<ruby>卒論<rt>そつろん</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>します。<br>*(Em xin nói thẳng. Em có 内定 từ Cybozu, Mercari, LINE. Sau khi xong sotsuron tháng 12 em sẽ quyết định.)* |
| Sato-san | <ruby>分<rt>わ</rt></ruby>かりました。プリシードラウンドのご<ruby>提案<rt>ていあん</rt></ruby>をさせていただきます。¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万<rt>まん</rt></ruby>円規模で<ruby>株式<rt>かぶしき</rt></ruby><ruby>15<rt>じゅうご</rt></ruby>%。<ruby>18<rt>じゅうはち</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>のランウェイです。<br>*(Em rõ. Tôi xin đề xuất pre-seed round. Quy mô 30 triệu yên đổi 15% cổ phần. 18 tháng runway.)* |
| Đại | (giữ bình tĩnh) ¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>15<rt>じゅうご</rt></ruby>% equity、ですね。<ruby>大変<rt>たいへん</rt></ruby><ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(¥30 triệu, 15% equity. Em rất vinh dự.)* |
| Sato-san | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>弊社<rt>へいしゃ</rt></ruby>オフィスにてpitch deckの<ruby>面談<rt>めんだん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか?<br>*(Đầu tháng 12, mời anh đến văn phòng chúng tôi tại Tokyo pitch deck được không?)* |
| Đại | はい、<ruby>喜<rt>よろこ</rt></ruby>んで。<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>日程<rt>にってい</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby>メールでご<ruby>連絡<rt>れんらく</rt></ruby>いただけますか?<br>*(Vâng, em rất hân hạnh. Ngày giờ cụ thể em xin nhận email sau được không ạ?)* |
| Sato-san | もちろんです。<ruby>奥<rt>おく</rt></ruby>さまもぜひご<ruby>同伴<rt>どうはん</rt></ruby>ください。<ruby>家庭<rt>かてい</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>でもありますから。<br>*(Tất nhiên. Mời cả vợ anh cùng đi. Vì đây cũng là quyết định gia đình.)* |
| Đại | お<ruby>気遣<rt>きづか</rt></ruby>いありがとうございます。<br>*(Cảm ơn anh đã quan tâm.)* |

---

## Tình huống 12 — Sảnh sau sân khấu · 19/11 18:50, Yamada chúc mừng

*Yamada-senpai chạy từ sảnh khác đến, vẫn cầm bento.*

| Vai | Lời thoại |
|---|---|
| Yamada | グエン!<ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>おめでとう!Anri の<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>話<rt>はな</rt></ruby>しとったやろ?<br>*(Đại! Chúc mừng giải nhì! Cậu vừa nói chuyện với Sato-san Anri đúng không?)* |
| Đại | はい、プリシード ¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万<rt>まん</rt></ruby>のオファーをいただきました。<br>*(Vâng, em được offer pre-seed 30 triệu.)* |
| Yamada | (mở mắt to) <ruby>本当<rt>ほんとう</rt></ruby>か!<ruby>佐藤<rt>さとう</rt></ruby>さんはAnri の<ruby>看板<rt>かんばん</rt></ruby>パートナーや。<ruby>軽<rt>かる</rt></ruby>く<ruby>声<rt>こえ</rt></ruby>かけたんやない、<ruby>本気<rt>ほんき</rt></ruby>のオファーやな。<br>*(Thật à! Sato-san là partner mặt tiền của Anri. Không phải kiểu chào hỏi xã giao đâu, là offer nghiêm túc.)* |
| Đại | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby><ruby>東京<rt>とうきょう</rt></ruby>で pitch deck の<ruby>面談<rt>めんだん</rt></ruby>です。<br>*(Đầu tháng 12 em sẽ pitch deck tại Tokyo.)* |
| Yamada | <ruby>俺<rt>おれ</rt></ruby>の M2 の<ruby>論文<rt>ろんぶん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>と<ruby>近<rt>ちか</rt></ruby>いけど、pitch deck レビューしてやるで。<br>*(Sát hạn nộp M2 của anh nhưng anh review pitch deck cho.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます!<br>*(Em cảm ơn anh thật nhiều!)* |

---

## Tình huống 13 — Đoạn cuối tiếng Việt — về căn hộ, Mai+Đại bàn ¥30M

*22:00. Hana đã ngủ. Mai pha trà gừng. Đại cầm tờ check giải nhì ¥250.000.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, cái offer ¥30M của Anri là thật chứ?<br> |
| Đại | (VN) Thật. Sato-san đưa danh thiếp partner Anri tận tay. Anh Yamada xác nhận Sato-san là "看板パートナー" — partner mặt tiền — không phải nói cho có.<br> |
| Mai | (VN) ¥30M tức là khoảng 5 tỷ VND, ¥30M ÷ 1 USD 150 = $200k. Mình thậm chí còn chưa từng nắm trong tay $1k.<br> |
| Đại | (VN) Đúng vậy. Nhưng đổi 15% cổ phần. Nếu Hizashi định giá $1M post-money tức là Anri sở hữu $150k giá trị.<br> |
| Mai | (VN) Em không hiểu mấy con số đó. Em chỉ hỏi 1 câu: anh có muốn không?<br> |
| Đại | (VN) Anh muốn. Nhưng đồng thời sợ. Nếu nhận, anh phải từ chối Cybozu, Mercari, LINE. Lương 0 yên 6 tháng đầu. Em+Hana sống bằng baito của em + dạy thêm của anh.<br> |
| Mai | (VN) Em đã tính. Em baito tour ¥120k/tháng, anh dạy thêm ¥40k = ¥160k. Tiền nhà ¥85k. Còn ¥75k cho ăn uống + Hana. Đủ sống.<br> |
| Đại | (VN, ôm Mai) Em ơi… Tháng 12 anh đi pitch deck Tokyo. Sato-san còn nói "奥さまもぜひご同伴ください" — mời cả em cùng đi. Là quyết định gia đình.<br> |
| Mai | (VN) Em sẽ đi cùng. Hana gửi bác Yumi 1 ngày được. Anh quyết, em theo.<br> |
| Đại | (VN, mắt rưng rưng) Cảm ơn em. Hôm nay anh đoạt giải nhì hackathon. Tháng 12 sẽ là quyết định lớn nhất đời anh.<br> |

---

## Đọng lại chương 7

Đại tham gia Kansai Hackathon 18-19/11 solo với Hizashi, demo voice TTS có Mai+Hana ngồi khán giả. Đăng ký bằng **参加者受付はこちらでよろしいですか?** + **電源は各席にありますか?**, gặp đối thủ ghế bên đổi danh thiếp với **充電器を1口貸していただけませんか?**. Pitch 5 phút mở đầu **Hizashi の創業者、グエン・ダイです** + dùng demo có khán giả tham gia. Q&A judge — câu **reviewer market というのは…?** để hỏi lại khi không hiểu thuật ngữ. Đoạt giải nhì ¥250k, phát biểu **客席の妻と娘、そしていつも支えてくれる井上ラボの皆様、ベータユーザーの50人に感謝します**. Sato-san partner Anri VC chủ động tiếp cận với **5分ほどお時間いただけますか?**, trao danh thiếp 2 tay (Đại nhận với **頂戴します + まだ学生で名刺がございません**), offer pre-seed ¥30M / 15% equity / 18 tháng runway. Hẹn pitch deck Tokyo đầu 12. Yamada-senpai xác nhận Sato-san là "看板パートナー" — offer nghiêm túc. Đêm về Mai chấp nhận theo Đại lên Tokyo pitch deck.

> Từ vựng & mẫu câu chương này: ハッカソン・最優秀賞・優秀賞・創業者・founder・demo・voice TTS・traction・retention・unit economics・ARPU・freemium・prompt cache・プリシード・equity・runway・看板パートナー・名刺・頂戴します・お時間いただけますか・〜というのは?・誠にありがとうございます・お気遣いありがとうございます・ご同伴ください

## Bí quyết chương

- **名刺を頂戴します** (nhận bằng 2 tay, đọc tên + chức vụ to ra) — cử chỉ chuẩn khi nhận danh thiếp VC/sensei lần đầu.
- Khi không có danh thiếp, đáp **まだ学生で名刺がございません** ngắn gọn, không xin lỗi quá nhiều. Người Nhật chuyên nghiệp hiểu sinh viên không có danh thiếp.
- **〜というのは…?** (vd: **reviewer market というのは?**) — câu hỏi lại lịch sự nhất khi không rõ thuật ngữ. Còn lịch sự hơn cả "もう一度お願いします" vì hỏi chính xác từ gì.
- VC offer = **正直に申し上げます** + tình hình thực + deadline (xong sotsuron 12 月) — không cam kết vội nhưng cũng không thoái thác.
- **看板パートナー** (partner mặt tiền): senpai trong giới VC dùng để chỉ partner có quyết định thực sự, không phải junior associate đi gom deal.
- Sato-san nói **奥さまもぜひご同伴ください** — chi tiết quan trọng: VC Nhật biết startup founder có gia đình → quyết định gia đình → mời đi cùng pitch deck.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 締め切り | しめきり | ĐẾ THIẾT | hạn chót |
| 賞金 | しょうきん | THƯỞNG KIM | tiền thưởng |
| 最優秀賞 | さいゆうしゅうしょう | TỐI ƯU TÚ THƯỞNG | giải nhất |
| 優秀賞 | ゆうしゅうしょう | ƯU TÚ THƯỞNG | giải nhì |
| 常連 | じょうれん | THƯỜNG LIÊN | quen mặt |
| 露出 | ろしゅつ | LỘ XUẤT | xuất hiện |
| 参加者 | さんかしゃ | THAM GIA GIẢ | người tham gia |
| 電源 | でんげん | ĐIỆN NGUYÊN | ổ điện |
| 食事 | しょくじ | THỰC SỰ | bữa ăn |
| 弁当 | べんとう | BIỆN ĐƯƠNG | cơm hộp |
| 無料 | むりょう | VÔ LIỆU | miễn phí |
| 提供 | ていきょう | ĐỀ CUNG | cung cấp |
| 充電器 | じゅうでんき | SUNG ĐIỆN KHÍ | sạc |
| 貸す | かす | THẢI | cho mượn |
| 持ち時間 | もちじかん | TRÌ THỜI GIAN | thời gian được dùng |
| 黄色 | きいろ | HOÀNG SẮC | màu vàng |
| 観客 | かんきゃく | QUAN KHÁCH | khán giả |
| 参加型 | さんかがた | THAM GIA HÌNH | dạng có tham gia |
| 実演 | じつえん | THỰC DIỄN | trình diễn thực |
| 客席 | きゃくせき | KHÁCH TỊCH | ghế khán giả |
| 創業者 | そうぎょうしゃ | SÁNG NGHIỆP GIẢ | sáng lập viên |
| 範囲 | はんい | PHẠM VI | phạm vi |
| 例文 | れいぶん | LỆ VĂN | câu ví dụ |
| 説明 | せつめい | THUYẾT MINH | giải thích |
| 運用 | うんよう | VẬN DỤNG | vận hành |
| 復習 | ふくしゅう | PHỤC TẬP | ôn tập |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 話者 | わしゃ | THOẠI GIẢ | người nói |
| 母語 | ぼご | MẪU NGỮ | tiếng mẹ đẻ |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 癖 | くせ | TÍCH | thói quen |
| 助詞 | じょし | TRỢ TỪ | trợ từ |
| 誤用 | ごよう | NGỘ DỤNG | dùng sai |
| 傾向 | けいこう | KHUYNH HƯỚNG | xu hướng |
| 独特 | どくとく | ĐỘC ĐẶC | riêng có |
| 頂戴 | ちょうだい | ĐẢNH ĐÁI | xin nhận (kính ngữ) |
| 構わない | かまわない | CẤU | không sao |
| 拠点 | きょてん | CỨ ĐIỂM | trụ sở |
| 初期段階 | しょきだんかい | SƠ KỲ ĐOẠN GIAI | giai đoạn đầu |
| 投資家 | とうしか | ĐẦU TƯ GIA | nhà đầu tư |
| 事業化 | じぎょうか | SỰ NGHIỆP HOÁ | thương mại hoá |
| 株式 | かぶしき | CHU THỨC | cổ phần |
| 後日 | ごじつ | HẬU NHẬT | hôm sau |
| 同伴 | どうはん | ĐỒNG BẠN | đi cùng |
| 看板 | かんばん | KHÁN BẢN | mặt tiền, biển hiệu |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000008, 800000024, NULL, 'markdown_book', 'T8. Quyết định lớn — từ chối Mercari, chọn khởi nghiệp Hizashi (大決断)', '# Sách sinh viên Đại học Osaka · T8. Quyết định lớn — từ chối Mercari, chọn khởi nghiệp Hizashi (大決断)

> **Mục tiêu nhân vật:** Đại, 24 tuổi, tháng 12/2029. Học các mẫu hội thoại tiếng Nhật của founder pre-seed: (1) pitch deck 30 phút tại VC office Tokyo, (2) đàm phán equity/runway/board, (3) xin sensei lời khuyên cuối, (4) thông báo từ chối 内定 với HR trang trọng, (5) nhận pre-seed bằng câu cam kết, (6) trao đổi với cofounder ban đầu, (7) cảm ơn gia đình homestay.

---

## Bối cảnh

Tháng 12 năm 2029. Anri Tokyo xác nhận pre-seed ¥30M / 15% equity / 18 tháng runway. Cùng lúc deadline Mercari để xác nhận 内定 fulltime ¥7M+RSU rơi vào cuối tháng. Đại 5 ngày cân nhắc giữa 4 offer fulltime + lựa chọn startup. Trao đổi với Mai (vợ), Tony+Yumi (homestay), Inoue-sensei (giáo viên hướng dẫn), Yamada-senpai. Lựa chọn cuối: nhận Anri pre-seed → Hizashi Inc thành lập tháng 1/2030. Chương này tập trung **pitch deck VC trang trọng**, **đàm phán điều khoản với GP**, **xin lời khuyên sensei**, **từ chối 内定 lịch sự với HR**, **báo tin với gia đình Nhật + Việt**.

---

## Tình huống 1 — Tàu shinkansen Osaka-Tokyo · 5/12 7:30, Mai+Đại trên đường lên pitch

*Hai vợ chồng ngồi ghế hàng 5, hành lý cabin trên đầu. Hana gửi bác Yumi 1 ngày.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, em mặc áo trắng + váy đen này có ổn không? Em chưa bao giờ đến VC office Tokyo.<br> |
| Đại | (VN) Em mặc thế đẹp lắm. Sato-san dặn "smart casual" — không cần vest cứng nhắc.<br> |
| Mai | (VN) Em nên nói gì khi vào? Em sợ lỡ làm xấu mặt anh.<br> |
| Đại | (VN) Em chỉ cần cúi chào, nói "<ruby>初<rt>はじ</rt></ruby>めまして、グエン・マイです。<ruby>夫<rt>おっと</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になっております" — "Lần đầu gặp, em là Mai vợ Đại, cảm ơn anh chị đã chăm sóc chồng em".<br>*(Câu chào của vợ.)* |
| Mai | (VN, nhẩm) <ruby>夫<rt>おっと</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になっております… OK nhớ rồi. Còn lúc bàn về tiền thì sao?<br> |
| Đại | (VN) Em yên tâm, phần đàm phán anh xử lý. Em chỉ cần ngồi cạnh anh. Sato-san mời em vì muốn xác nhận gia đình ủng hộ thật — không phải để em phát biểu.<br> |
| Mai | (VN) OK. Em ủng hộ anh hết mình.<br>*(Hết mình.)* |

---

## Tình huống 2 — Anri office Roppongi · 5/12 10:30, lễ tân tiếp đón

*Tầng 18 Roppongi Hills tower. Sảnh lễ tân logo Anri. Mai+Đại bước ra thang máy.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>から<ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>とお<ruby>約束<rt>やくそく</rt></ruby>のグエンと<ruby>申<rt>もう</rt></ruby>します。<ruby>妻<rt>つま</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>です。<br>*(Chào buổi sáng. Tôi là Nguyễn, có hẹn với anh Sato lúc 10h30. Vợ tôi cùng đi.)* |
| Lễ tân | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。こちらにお<ruby>名前<rt>なまえ</rt></ruby>のご<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh chị Nguyễn, chúng tôi đã chờ. Mời ký tên vào đây.)* |
| Đại | (ký tên cho cả 2)<br> |
| Lễ tân | <ruby>会議室<rt>かいぎしつ</rt></ruby>「Sakura」へご<ruby>案内<rt>あんない</rt></ruby>いたします。お<ruby>飲<rt>の</rt></ruby><ruby>物<rt>もの</rt></ruby>は<ruby>何<rt>なに</rt></ruby>がよろしいですか?<br>*(Tôi sẽ dẫn anh chị đến phòng họp "Sakura". Anh chị uống gì ạ?)* |
| Đại | <ruby>私<rt>わたし</rt></ruby>はコーヒーをブラックでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin cà phê đen.)* |
| Mai | (nhỏ giọng) <ruby>私<rt>わたし</rt></ruby>は…お<ruby>水<rt>みず</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>けますか?<br>*(Em xin nước lọc được không ạ?)* |
| Lễ tân | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng ạ.)* |

---

## Tình huống 3 — Phòng họp Sakura · 5/12 10:35, Sato-san giới thiệu GP

*Phòng họp lớn view Tokyo Tower. Sato-san + 1 người đàn ông 50t (GP) đứng đón.*

| Vai | Lời thoại |
|---|---|
| Sato-san | グエンさん、<ruby>奥様<rt>おくさま</rt></ruby>、ようこそANRI へ。こちらは<ruby>当社<rt>とうしゃ</rt></ruby>のGeneral Partner、<ruby>佐々木<rt>ささき</rt></ruby>です。<br>*(Anh Đại, chị nhà, chào mừng đến Anri. Đây là General Partner công ty chúng tôi, anh Sasaki.)* |
| Sasaki-GP | <ruby>佐々木<rt>ささき</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>名刺<rt>めいし</rt></ruby>です。<br>*(Tôi là Sasaki. Danh thiếp ạ.)* |
| Đại | (nhận 2 tay, đọc) <ruby>佐々木<rt>ささき</rt></ruby><ruby>様<rt>さま</rt></ruby>、ANRI General Partner…<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。グエン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Anh Sasaki, GP Anri. Em xin nhận. Em là Nguyễn Đại. Cảm ơn anh đã dành thời gian.)* |
| Mai | (cúi chào) <ruby>初<rt>はじ</rt></ruby>めまして、グエン・マイです。<ruby>夫<rt>おっと</rt></ruby>がいつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Lần đầu gặp, em là Nguyễn Mai. Cảm ơn anh chị luôn chăm sóc chồng em.)* |
| Sasaki-GP | こちらこそ。<ruby>奥様<rt>おくさま</rt></ruby>もお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>家族<rt>かぞく</rt></ruby>のサポートはスタートアップの<ruby>命綱<rt>いのちづな</rt></ruby>ですから。<br>*(Tôi cũng rất hân hạnh. Cảm ơn chị nhà cũng đến. Sự ủng hộ gia đình là sợi dây sống của startup mà.)* |

---

## Tình huống 4 — Phòng họp Sakura · 5/12 10:45, pitch deck 30 phút

*Đại mở MacBook, kết nối màn hình 65 inch. Slide 1 hiện title Hizashi.*

| Vai | Lời thoại |
|---|---|
| Đại | では<ruby>始<rt>はじ</rt></ruby>めさせていただきます。Hizashi はベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>適応型<rt>てきおうがた</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムです。<ruby>15<rt>じゅうご</rt></ruby>スライド、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>します。<br>*(Em xin phép bắt đầu. Hizashi là hệ học tiếng Nhật adaptive cho người Việt. 15 slide, xin 30 phút.)* |
| Đại | (slide 2 Vision) <ruby>2032<rt>にせんさんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>までにベトナム<ruby>人<rt>じん</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>万人<rt>まんにん</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Đến 2032 sẽ hỗ trợ 100 ngàn người Việt học tiếng Nhật.)* |
| Đại | (slide 5 Traction) <ruby>現在<rt>げんざい</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>ベータ<rt>べーた</rt></ruby>、<ruby>4<rt>よん</rt></ruby><ruby>週<rt>しゅう</rt></ruby> retention <ruby>76<rt>ななじゅうろく</rt></ruby>%。IPSJ-NL Best Student Paper +関西 Hackathon <ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby><ruby>受賞<rt>じゅしょう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(50 beta hiện tại, retention 76% sau 4 tuần. Đã đoạt Best Student Paper IPSJ-NL + giải nhì hackathon Kansai.)* |
| Đại | (slide 9 Use of funds) ¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby> = <ruby>18<rt>じゅうはち</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>ランウェイ。<ruby>内訳<rt>うちわけ</rt></ruby>:<ruby>フルタイム<rt>ふるたいむ</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>人件費<rt>じんけんひ</rt></ruby> ¥<ruby>2200<rt>にせんにひゃく</rt></ruby><ruby>万<rt>まん</rt></ruby>、AWS+API ¥<ruby>500<rt>ごひゃく</rt></ruby><ruby>万<rt>まん</rt></ruby>、マーケティング ¥<ruby>300<rt>さんびゃく</rt></ruby><ruby>万<rt>まん</rt></ruby>です。<br>*(¥30M = 18 tháng runway. Phân bổ: 3 nhân viên fulltime ¥22M, AWS+API ¥5M, marketing ¥3M.)* |
| Đại | (slide 15 Closing) ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。ご<ruby>質問<rt>しつもん</rt></ruby>をお<ruby>受<rt>う</rt></ruby>けします。<br>*(Cảm ơn quý vị đã lắng nghe. Xin mời câu hỏi.)* |

---

## Tình huống 5 — Phòng họp Sakura · 5/12 11:18, Sasaki-GP Q&A

| Vai | Lời thoại |
|---|---|
| Sasaki-GP | <ruby>素晴<rt>すば</rt></ruby>らしいピッチでした。<ruby>3<rt>みっ</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>させてください。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、co-founder の<ruby>採用<rt>さいよう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>は?<br>*(Pitch tuyệt vời. Xin hỏi 3 câu. Một, kế hoạch tuyển co-founder?)* |
| Đại | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>でCTOとCOOを<ruby>探<rt>さが</rt></ruby>します。<ruby>候補<rt>こうほ</rt></ruby>は<ruby>井上<rt>いのうえ</rt></ruby>ラボの<ruby>山田<rt>やまだ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>(M2)とCybozu<ruby>同期<rt>どうき</rt></ruby>の<ruby>愛子<rt>あいこ</rt></ruby>さんです。<br>*(Tháng 1-3 em tìm CTO và COO. Ứng viên là anh Yamada senpai lab Inoue (M2) và chị Aiko đồng kỳ Cybozu.)* |
| Sasaki-GP | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ベトナム<ruby>市場<rt>しじょう</rt></ruby><ruby>進出<rt>しんしゅつ</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>は?<br>*(Hai, kế hoạch tiến vào thị trường Việt Nam?)* |
| Đại | <ruby>2031<rt>にせんさんじゅういち</rt></ruby><ruby>年<rt>ねん</rt></ruby>を<ruby>目処<rt>めど</rt></ruby>にハノイに<ruby>支社<rt>ししゃ</rt></ruby>を<ruby>設立<rt>せつりつ</rt></ruby>します。<ruby>妻<rt>つま</rt></ruby>の<ruby>実家<rt>じっか</rt></ruby>がハノイなので、<ruby>現地<rt>げんち</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>のネットワークがあります。<br>*(Mục tiêu 2031 mở chi nhánh Hà Nội. Nhà vợ em ở Hà Nội nên có network tuyển dụng địa phương.)* |
| Sasaki-GP | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、メルカリの<ruby>内定<rt>ないてい</rt></ruby>を<ruby>持<rt>も</rt></ruby>っているそうですが、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>辞退<rt>じたい</rt></ruby>できますか?<br>*(Ba, nghe nói anh có 内定 Mercari, có thực sự từ chối được không?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。まだ<ruby>判断<rt>はんだん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>回答<rt>かいとう</rt></ruby>させていただきます。<br>*(Em xin nói thật. Em vẫn đang cân nhắc. Trong 1 tuần em sẽ trả lời ạ.)* |
| Sasaki-GP | <ruby>誠実<rt>せいじつ</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>ですね。<ruby>嘘<rt>うそ</rt></ruby>をつかれるよりずっといい。<br>*(Câu trả lời chân thành đấy. Tốt hơn nhiều so với nói dối.)* |

---

## Tình huống 6 — Phòng họp Sakura · 5/12 11:30, đàm phán equity

| Vai | Lời thoại |
|---|---|
| Sasaki-GP | <ruby>条件<rt>じょうけん</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby>にご<ruby>提示<rt>ていじ</rt></ruby>します。¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>15<rt>じゅうご</rt></ruby>% equity、<ruby>18<rt>じゅうはち</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>ランウェイ、<ruby>四半期<rt>しはんき</rt></ruby><ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Tôi xin nêu chính thức điều khoản. ¥30M, 15% equity, 18 tháng runway, báo cáo board quý.)* |
| Đại | <ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>15<rt>じゅうご</rt></ruby>% equity は post-money <ruby>評価額<rt>ひょうかがく</rt></ruby> ¥<ruby>2<rt>に</rt></ruby><ruby>億<rt>おく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>換算<rt>かんさん</rt></ruby>ですね?<br>*(Xin xác nhận một điều. 15% equity tính theo post-money valuation ¥200 triệu đúng không?)* |
| Sasaki-GP | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Vâng, đúng vậy.)* |
| Đại | board <ruby>議席<rt>ぎせき</rt></ruby>は?<br>*(Ghế board?)* |
| Sasaki-GP | ANRI から<ruby>1<rt>いち</rt></ruby><ruby>議席<rt>ぎせき</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>します。<ruby>佐藤<rt>さとう</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>です。<br>*(Anri xin 1 ghế. Sato-san phụ trách.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。option pool は<ruby>創業<rt>そうぎょう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>10<rt>じゅっ</rt></ruby>%<ruby>設定<rt>せってい</rt></ruby>でよろしいですか?<br>*(Em rõ. Option pool đặt 10% lúc thành lập có được không?)* |
| Sasaki-GP | <ruby>標準<rt>ひょうじゅん</rt></ruby>です。OK。<br>*(Chuẩn rồi. OK.)* |
| Đại | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>にご<ruby>回答<rt>かいとう</rt></ruby>させていただきます。<br>*(Em sẽ trả lời trong 1 tuần.)* |
| Sasaki-GP | お<ruby>待<rt>ま</rt></ruby>ちしております。term sheet は<ruby>後日<rt>ごじつ</rt></ruby>メールでお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Tôi xin chờ. Term sheet sẽ gửi email sau.)* |

---

## Tình huống 7 — Quán cà phê Senri-chuo · 8/12 19:00, bàn với Mai

*Sau khi đặt Hana ngủ. Hai vợ chồng ngồi Doutor góc gần ga.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, có 5 lựa chọn. Anh viết ra giấy này:<br>1. Mercari Tokyo ¥7M + RSU $20k/năm<br>2. Cybozu Osaka ¥6.7M (ở lại)<br>3. LINE Fukuoka ¥6.5M<br>4. Yahoo Osaka ¥6M<br>5. **Khởi nghiệp Hizashi với Anri pre-seed ¥30M** — lương ¥0 trong 6 tháng đầu, sau đó ¥4M/năm.<br> |
| Mai | (VN) Anh muốn nhất là cái nào?<br> |
| Đại | (VN) Hizashi. Nhưng anh sợ rủi ro. Nếu thất bại, mình mất 18 tháng + Mai phải nuôi Đại + Hana 6 tháng đầu.<br> |
| Mai | (VN) Em đã tính. Em baito tour ¥120k + anh dạy thêm ¥40k = ¥160k/tháng. Tiền nhà ¥85k. Còn ¥75k cho ăn + Hana. Đủ sống. Sau 6 tháng có stipend ¥333k/tháng từ Anri.<br> |
| Đại | (VN) Em sẵn sàng chấp nhận rủi ro chứ?<br> |
| Mai | (VN, không do dự) Em chọn anh năm 2027. Bây giờ em vẫn chọn anh. Anh quyết, em theo.<br> |
| Đại | (VN, ôm Mai) Cảm ơn em. Mai anh đi gặp bác Tony với bác Yumi hỏi ý kiến.<br>*(Hỏi bác.)* |

---

## Tình huống 8 — Nhà Tony-Yumi Tennoji · 10/12 19:00, hỏi ý hai bác homestay

*Đại+Mai ngồi tatami nhà Tony. Yumi mang trà yuzu. Tony lấy bia.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<ruby>進路<rt>しんろ</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>です。<br>*(Bác Tony, bác Yumi, hôm nay xin cảm ơn 2 bác dành thời gian. Cháu xin tư vấn về hướng đi sau khi tốt nghiệp.)* |
| Tony | おう、ダイ、<ruby>遠慮<rt>えんりょ</rt></ruby>せんと<ruby>言<rt>い</rt></ruby>うてみい。<br>*(Ờ Đại, đừng khách sáo, cứ nói đi.)* |
| Đại | ANRIから<ruby>3000<rt>さんぜん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>のプリシードを<ruby>頂<rt>いただ</rt></ruby>く<ruby>話<rt>はなし</rt></ruby>になりました。<ruby>同時<rt>どうじ</rt></ruby>にメルカリ、サイボウズ、LINEの<ruby>内定<rt>ないてい</rt></ruby>もあります。<br>*(Em được Anri offer pre-seed ¥30M. Đồng thời cũng có 内定 Mercari, Cybozu, LINE.)* |
| Yumi | (mắt mở to) ¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>!?<br>*(¥30 triệu!?)* |
| Tony | (Osaka-ben) ダイ!<ruby>当然<rt>とうぜん</rt></ruby><ruby>起業<rt>きぎょう</rt></ruby>やろ!<ruby>俺<rt>おれ</rt></ruby>のangel ¥<ruby>100<rt>ひゃく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>もまだ<ruby>残<rt>のこ</rt></ruby>っとるで!<br>*(Đại! Khởi nghiệp là đương nhiên! ¥1 triệu angel của tớ vẫn còn!)* |
| Đại | トニーさん…<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頂<rt>いただ</rt></ruby>いてもよろしいですか?<br>*(Bác Tony… cháu thực sự có thể nhận được không ạ?)* |
| Tony | <ruby>当然<rt>とうぜん</rt></ruby>や!<ruby>俺<rt>おれ</rt></ruby>は<ruby>20<rt>にじゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby>のときに<ruby>大阪<rt>おおさか</rt></ruby>でとんかつ<ruby>屋<rt>や</rt></ruby><ruby>始<rt>はじ</rt></ruby>めたで。<ruby>誰<rt>だれ</rt></ruby>も<ruby>金<rt>かね</rt></ruby><ruby>貸<rt>か</rt></ruby>してくれんかった。お<ruby>前<rt>まえ</rt></ruby>には<ruby>俺<rt>おれ</rt></ruby>がおる。<br>*(Đương nhiên! Tớ 20 tuổi mở quán tonkatsu ở Osaka. Không ai cho vay tiền. Cậu thì có tớ.)* |
| Yumi | マイさんとハナちゃんのことは<ruby>心配<rt>しんぱい</rt></ruby>しないでね。<ruby>私<rt>わたし</rt></ruby>たちがおるから。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>夕<rt>ゆう</rt></ruby><ruby>飯<rt>はん</rt></ruby><ruby>食<rt>た</rt></ruby>べに<ruby>来<rt>き</rt></ruby>てね。<br>*(Đừng lo về Mai và Hana. Có bọn tớ ở đây. Hàng tuần ghé ăn tối nhé.)* |
| Mai | (VN, mắt rưng rưng nhìn Đại) Anh nghe chưa?<br> |
| Đại | (cúi đầu sâu) トニーさん、ユミさん、<ruby>言葉<rt>ことば</rt></ruby>になりません。<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Bác Tony, bác Yumi, cháu không nói nên lời. Cháu thật lòng cảm ơn.)* |

---

## Tình huống 9 — Phòng lab Inoue · 11/12 14:00, xin lời khuyên cuối Inoue-sensei

*Đại tới văn phòng Inoue, mang theo bảng so sánh in ra.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。<ruby>進路<rt>しんろ</rt></ruby>について<ruby>最後<rt>さいご</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<br>*(Thầy Inoue, em xin lỗi đã làm phiền lúc bận. Em đến xin tư vấn cuối về hướng đi.)* |
| Inoue | はい、どうぞ。<ruby>座<rt>すわ</rt></ruby>って。<br>*(Vâng, em ngồi đi.)* |
| Đại | <ruby>4<rt>よっ</rt></ruby>つのfulltime <ruby>内定<rt>ないてい</rt></ruby>とANRIのプリシード ¥<ruby>3000<rt>さんぜん</rt></ruby><ruby>万<rt>まん</rt></ruby>です。<ruby>先生<rt>せんせい</rt></ruby>のご<ruby>意見<rt>いけん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>できますか。<br>*(4 offer fulltime và Anri pre-seed ¥30M. Em xin ý kiến của thầy được không ạ?)* |
| Inoue | <ruby>偏見<rt>へんけん</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>きで<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。メルカリは<ruby>安全<rt>あんぜん</rt></ruby>でブランドがあります。サイボウズは<ruby>大阪<rt>おおさか</rt></ruby><ruby>残留<rt>ざんりゅう</rt></ruby>で<ruby>家族<rt>かぞく</rt></ruby>にも<ruby>優<rt>やさ</rt></ruby>しい。<ruby>起業<rt>きぎょう</rt></ruby>は<ruby>情熱<rt>じょうねつ</rt></ruby>とインパクト、そしてリスクです。<br>*(Tôi nêu không thiên vị. Mercari an toàn có thương hiệu. Cybozu ở lại Osaka cũng tốt cho gia đình. Khởi nghiệp là đam mê, impact, và rủi ro.)* |
| Inoue | <ruby>私<rt>わたし</rt></ruby><ruby>事<rt>ごと</rt></ruby>を<ruby>言<rt>い</rt></ruby>わせてください。<ruby>20<rt>にじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby><ruby>私<rt>わたし</rt></ruby>はNECを<ruby>選<rt>えら</rt></ruby>びました。<ruby>当時<rt>とうじ</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>から<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業<rt>そうぎょう</rt></ruby>の<ruby>誘<rt>さそ</rt></ruby>いがありましたが、<ruby>断<rt>ことわ</rt></ruby>りました。<ruby>後悔<rt>こうかい</rt></ruby>しています。<br>*(Cho phép tôi nói chuyện cá nhân. 20 năm trước tôi chọn NEC. Khi đó có senpai mời đồng sáng lập, tôi từ chối. Tôi vẫn hối hận.)* |
| Đại | (im lặng nghe)<br> |
| Inoue | <ruby>君<rt>きみ</rt></ruby>は<ruby>24<rt>にじゅうよん</rt></ruby><ruby>歳<rt>さい</rt></ruby>、<ruby>奥<rt>おく</rt></ruby>さんと<ruby>子供<rt>こども</rt></ruby>がいて、しかもVCも<ruby>付<rt>つ</rt></ruby>いている。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>応援<rt>おうえん</rt></ruby>もある。これは<ruby>絶好<rt>ぜっこう</rt></ruby>の<ruby>機会<rt>きかい</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>はHizashi をお<ruby>勧<rt>すす</rt></ruby>めします。<br>*(Em 24 tuổi, có vợ con, lại có VC. Có cả ủng hộ gia đình. Đây là cơ hội tuyệt vời. Tôi khuyên em chọn Hizashi.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>、<ruby>心<rt>こころ</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。ありがとうございます。<br>*(Lời thầy em khắc cốt ghi tâm. Cảm ơn thầy.)* |
| Inoue | ラボのドアはいつでも<ruby>開<rt>あ</rt></ruby>いています。<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>来<rt>き</rt></ruby>てください。<br>*(Cửa lab lúc nào cũng mở. Khi nào bí cứ qua.)* |

---

## Tình huống 10 — Phòng đọc căn hộ · 12/12 23:00, quyết định cuối cùng

*Đại ngồi 1 mình. Bàn có 5 tờ giấy. Bút đỏ.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, độc thoại có ý nghĩa giao tiếp — tự nói thành tiếng) Mình 24 tuổi. Hana 16 tháng. Mai 24 tuổi. Nếu thất bại bây giờ, mình vẫn có thể làm lại từ đầu. Đợi 5 năm ở Mercari, có thêm vợ + con thứ 2 + gánh nặng senior engineer, lúc đó khởi nghiệp sẽ khó hơn nhiều.<br>*(Tự nói với mình.)* |
| Đại | (tự nhủ) "Bây giờ hoặc không bao giờ." Inoue-sensei hối hận 20 năm. Mình không muốn 20 năm sau hối hận như thế.<br>*(Bây giờ hoặc không bao giờ.)* |
| Đại | (gạch chéo 4 tờ giấy đầu) QUYẾT ĐỊNH: Khởi nghiệp Hizashi.<br>*(QUYẾT ĐỊNH!)* |

---

## Tình huống 11 — Bàn làm việc căn hộ · 12/12 23:15, gửi LINE Sato-san chấp nhận

*Đại mở LINE Sato-san, gõ từng chữ.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Sato-san) <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>夜<rt>よる</rt></ruby><ruby>遅<rt>おそ</rt></ruby>くに<ruby>失礼<rt>しつれい</rt></ruby>いたします。プリシードのお<ruby>申<rt>もう</rt></ruby>し<ruby>出<rt>で</rt></ruby>、<ruby>正式<rt>せいしき</rt></ruby>にお<ruby>受<rt>う</rt></ruby>けいたします。<br>*(Anh Sato, xin lỗi vì làm phiền tối khuya. Em chính thức nhận lời mời pre-seed.)* |
| Đại | (LINE) <ruby>家族<rt>かぞく</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、homestay の<ruby>方<rt>かた</rt></ruby>々、<ruby>全員<rt>ぜんいん</rt></ruby>のサポートをいただきました。Hizashi を<ruby>命<rt>いのち</rt></ruby>がけで<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Em đã nhận được sự ủng hộ từ gia đình, thầy Inoue, gia đình homestay. Em sẽ nuôi Hizashi bằng cả tính mạng.)* |
| Sato-san | (LINE, 2 phút sau) グエンさん、お<ruby>受<rt>う</rt></ruby>けいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます!<ruby>明日<rt>あした</rt></ruby> term sheet を<ruby>送<rt>おく</rt></ruby>ります。<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>日<rt>か</rt></ruby> Hizashi Inc <ruby>設立<rt>せつりつ</rt></ruby>を<ruby>目標<rt>もくひょう</rt></ruby>にしましょう!<br>*(Anh Đại, cảm ơn anh đã nhận lời! Mai tôi gửi term sheet. Cùng nhắm 1/1 thành lập Hizashi Inc nhé!)* |

---

## Tình huống 12 — Bàn làm việc · 12/12 23:30, từ chối 内定 Mercari + Cybozu + LINE + Yahoo

*Đại mở LINE từng HR. Soạn câu từ chối lịch sự.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mercari HR Tanaka-san) <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>夜分<rt>やぶん</rt></ruby><ruby>遅<rt>おそ</rt></ruby>く<ruby>失礼<rt>しつれい</rt></ruby>いたします。グエン・ダイです。<br>*(Anh Tanaka, xin lỗi vì khuya. Em là Nguyễn Đại.)* |
| Đại | (LINE) <ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>家庭<rt>かてい</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>と<ruby>起業<rt>きぎょう</rt></ruby>の<ruby>道<rt>みち</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ばせていただくことになりました。<ruby>内定<rt>ないてい</rt></ruby>を<ruby>辞退<rt>じたい</rt></ruby>させていただきます。<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Em rất xin lỗi, vì hoàn cảnh gia đình và con đường khởi nghiệp, em xin từ chối 内定. Chân thành cảm ơn anh.)* |
| Tanaka HR | (LINE, 5 phút sau) グエンさん、ご<ruby>連絡<rt>れんらく</rt></ruby>ありがとうございます。<ruby>残念<rt>ざんねん</rt></ruby>ですが、ご<ruby>判断<rt>はんだん</rt></ruby>を<ruby>尊重<rt>そんちょう</rt></ruby>いたします。<ruby>起業<rt>きぎょう</rt></ruby>のご<ruby>成功<rt>せいこう</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>よりお<ruby>祈<rt>いの</rt></ruby>りいたします。<br>*(Anh Đại, cảm ơn đã liên lạc. Tiếc thật nhưng tôn trọng quyết định. Chân thành chúc anh khởi nghiệp thành công.)* |
| Đại | (gửi LINE tương tự cho Cybozu HR + LINE Fukuoka HR + Yahoo HR)<br> |
| Cybozu HR | (LINE) <ruby>残念<rt>ざんねん</rt></ruby>です。<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>には<ruby>当社<rt>とうしゃ</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>いたします。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Tiếc thật. Bên công ty sẽ liên lạc thầy Inoue. Cố lên nhé.)* |

---

## Tình huống 13 — Phòng ngủ · 12/12 24:00, báo Mai

*Đại bước vào phòng ngủ. Mai vẫn thức đọc sách, Hana ngủ giữa giường.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, anh quyết định rồi.<br> |
| Mai | (VN, ngồi dậy) Sao anh?<br> |
| Đại | (VN) Anh nhận Anri ¥30M. Từ chối Mercari, Cybozu, LINE, Yahoo. Hizashi Inc thành lập 1/1/2030.<br> |
| Mai | (VN, ôm Đại) Em tự hào về anh. Anh đúng là người em đã chọn.<br> |
| Đại | (VN, khóc nhẹ) Em ơi… Anh sẽ làm việc cật lực vì em, vì Hana, vì cộng đồng người Việt.<br> |
| Mai | (VN) Em biết. Mà 1/1 thành lập công ty thì Tết Tây mình nghỉ được không?<br> |
| Đại | (VN, cười) Được. Tết Tây mình về VN thăm bố mẹ 1 tuần. Sau đó về Osaka làm cofounder hunting.<br> |

---

## Tình huống 14 — Đoạn cuối tiếng Việt — gọi cho bố mẹ Việt Nam

*1:00 sáng giờ Nhật = 23:00 giờ Việt Nam. Đại+Mai cùng gọi Zalo group.*

| Vai | Lời thoại |
|---|---|
| Bố Đại | (VN) Đại à, có chuyện gì gọi muộn thế con? |
| Đại | (VN) Bố mẹ, con với Mai có tin báo. Con đã quyết định khởi nghiệp. Nhận pre-seed ¥30M từ một quỹ VC ở Tokyo tên là Anri. |
| Mẹ Đại | (VN) ¥30 triệu yên là bao nhiêu tiền Việt hả con? |
| Mai | (VN) Mẹ ơi, khoảng 5 tỷ. Nhưng không phải tiền của tụi con tiêu đâu, là tiền nuôi công ty trong 18 tháng. |
| Bố Đại | (VN) Con từ chối Mercari thật à? Bố nhớ con nói Mercari lương ¥7M cơ mà. |
| Đại | (VN) Vâng bố, con từ chối 4 offer luôn. Anh Yamada senpai, thầy Inoue, bác Tony bác Yumi đều ủng hộ. Bác Tony còn bảo "khởi nghiệp là đương nhiên" — bác cho ¥1 triệu angel nữa. |
| Mẹ Đại | (VN) Bác Tony tốt với mình quá. Tết Tây con có về không? |
| Đại | (VN) Có mẹ. Tụi con về 1 tuần. Hana đi máy bay lần đầu đấy mẹ. |
| Bố Đại | (VN) Bố mẹ ủng hộ con. Có thầy Inoue khuyên thì còn gì bằng. Mỗi việc lo cho sức khỏe nhé — startup vất vả lắm. |
| Mai | (VN) Bố yên tâm, có con với bác Yumi giữ anh ấy không cho làm 24/24. Bác Yumi còn dặn hàng tuần qua nhà bác ăn tối. |
| Mẹ Đại | (VN) Trời ơi, mẹ thương bác Yumi quá. Tết Tây mẹ làm bánh chưng gửi sang biếu hai bác. |
| Đại | (VN) Vâng mẹ. À, mai con ký term sheet. Bố mẹ cầu nguyện cho con nhé. |
| Bố Đại | (VN) Bố mẹ cầu nguyện đây. Cố lên con. Mai gọi báo tin nhé. |
| Đại | (VN, mắt rưng rưng) Vâng bố mẹ. Con yêu bố mẹ. |

---

## Đọng lại chương 8

Đại trải qua 7 ngày quyết định lớn nhất đời. Pitch deck tại Anri office Roppongi 30 phút với Sato-san + Sasaki-GP — mở đầu **始めさせていただきます**, dùng cấu trúc 15 slide, đáp Q&A bằng **正直に申し上げます + 1週間以内に回答** khi Sasaki-GP hỏi có thực sự từ chối Mercari được không. Đàm phán điều khoản: ¥30M / 15% equity / 18 tháng runway / 1 ghế board cho Anri / option pool 10%. Mai luyện câu **夫がお世話になっております** trên shinkansen, cúi chào GP đúng chuẩn. Tony+Yumi nghe ¥30M thì Tony hét **当然起業やろ!** và xác nhận angel ¥1M còn nguyên. Inoue-sensei kể chuyện 20 năm trước từ chối đồng sáng lập, hối hận đến giờ — câu chốt "**私はHizashi をお勧めします**". Đêm 12/12 Đại quyết định "**今やらないと一生やらない**", LINE Sato-san **正式にお受けいたします**, sau đó từ chối 4 HR bằng cấu trúc **大変申し訳ございませんが、家庭の事情と起業の道を選ばせていただく**. Cuối cùng gọi Zalo về Hà Nội báo bố mẹ — Tết Tây cả nhà về Việt Nam 1 tuần, Hana đi máy bay lần đầu.

> Từ vựng & mẫu câu chương này: プリシード・equity・runway・post-money valuation・board議席・option pool・term sheet・GP・co-founder・内定辞退・正式にお受けいたします・大変申し訳ございませんが・家庭の事情・起業の道を選ばせていただく・偏見抜きで申し上げます・私はHizashiをお勧めします・夫がお世話になっております・頂戴いたします・命がけで育てます・お祈りいたします

## Bí quyết chương

- **始めさせていただきます** (mở đầu pitch keigo trang trọng) > **始めます** (trung tính). VC office Tokyo cấp GP đòi keigo level cao nhất.
- **正直に申し上げます** + tình hình thực + deadline cụ thể — khi VC hỏi câu nhạy cảm (có đối thủ offer không?), trả lời thẳng tốt hơn nói tránh. Sasaki-GP khen "**誠実な回答ですね**".
- Vợ founder pitch lần đầu: chỉ cần câu chào **夫がお世話になっております** (cảm ơn anh chị đã chăm sóc chồng em) — không cần phát biểu nhiều, GP Nhật hiểu đây là quyết định gia đình.
- **頂戴いたします** (cách nhận danh thiếp keigo cao nhất) > **頂戴します** (trang trọng) > **ありがとう** (thường).
- Từ chối 内定: KHÔNG được im lặng. Soạn **大変申し訳ございませんが + lý do (家庭の事情) + 起業の道を選ばせていただく + 誠にありがとうございました** — HR Nhật sẽ tôn trọng và **ご成功を心よりお祈りいたします** lại.
- **命がけで育てます** (nuôi bằng cả tính mạng) — câu cam kết với VC sau khi nhận tiền. Đừng dùng **頑張ります** vì quá nhẹ với deal ¥30M.
- Sensei kể chuyện cá nhân (Inoue 20 năm hối hận từ chối startup) — đây là dấu hiệu sensei thực sự quan tâm. Đáp **心に刻みます** (em khắc cốt ghi tâm).
- Khi Tony homestay nói "**俺がおる**" (có tớ đây) bằng Osaka-ben — đó là cam kết gia đình kiểu Kansai, mạnh hơn cả từ "support" tiếng Anh.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 案内 | あんない | ÁN NỘI | hướng dẫn |
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | phòng họp |
| 命綱 | いのちづな | MỆNH CƯƠNG | sợi dây sinh tử |
| 評価額 | ひょうかがく | BÌNH GIÁ NGẠCH | giá trị định giá |
| 換算 | かんさん | HOÁN TOÁN | quy đổi |
| 議席 | ぎせき | NGHỊ TỊCH | ghế nghị viên |
| 標準 | ひょうじゅん | TIÊU CHUẨN | chuẩn |
| 採用計画 | さいようけいかく | THÁI DỤNG KẾ HOẠCH | kế hoạch tuyển dụng |
| 候補 | こうほ | HẬU BỔ | ứng viên |
| 同期 | どうき | ĐỒNG KỲ | đồng kỳ |
| 進出 | しんしゅつ | TIẾN XUẤT | tiến vào |
| 目処 | めど | MỤC XỬ | mục tiêu thời gian |
| 設立 | せつりつ | THIẾT LẬP | thành lập |
| 支社 | ししゃ | CHI XÃ | chi nhánh |
| 実家 | じっか | THỰC GIA | nhà gốc |
| 現地採用 | げんちさいよう | HIỆN ĐỊA THÁI DỤNG | tuyển dụng địa phương |
| 辞退 | じたい | TỪ THOÁI | từ chối |
| 偏見 | へんけん | THIÊN KIẾN | thành kiến |
| 安全 | あんぜん | AN TOÀN | an toàn |
| 残留 | ざんりゅう | TÀN LƯU | ở lại |
| 情熱 | じょうねつ | TÌNH NHIỆT | đam mê |
| 当時 | とうじ | ĐƯƠNG THỜI | hồi đó |
| 後悔 | こうかい | HẬU HỐI | hối hận |
| 絶好 | ぜっこう | TUYỆT HẢO | tuyệt vời |
| 勧める | すすめる | KHUYẾN | khuyến nghị |
| 心に刻む | こころにきざむ | TÂM KHẮC | khắc cốt ghi tâm |
| 進路 | しんろ | TIẾN LỘ | con đường tiến |
| 起業 | きぎょう | KHỞI NGHIỆP | khởi nghiệp |
| 言葉になりません | ことばになりません | NGÔN DIỆP | không thể nói nên lời |
| 事情 | じじょう | SỰ TÌNH | hoàn cảnh |
| 選ぶ | えらぶ | TUYỂN | chọn |
| 残念 | ざんねん | TÀN NIỆM | tiếc |
| 成功 | せいこう | THÀNH CÔNG | thành công |
| 祈る | いのる | KỲ | cầu nguyện |
| 命がけ | いのちがけ | MỆNH | bằng tính mạng |
| 育てる | そだてる | DỤC | nuôi dưỡng |
| 取締役 | とりしまりやく | THỦ THÚC DỊCH | giám đốc |
| 法人 | ほうじん | PHÁP NHÂN | pháp nhân |
| 始める | はじめる | THUỶ | bắt đầu |
| 申し上げる | もうしあげる | THÂN THƯỢNG | trình bày (kính ngữ) |
| 受ける | うける | THỤ | nhận |
| 一生 | いっしょう | NHẤT SINH | cả đời |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000009, 800000024, NULL, 'markdown_book', 'T9. Recruit cofounder Tuấn + Aiko (共同創業者リクルート)', '# Sách sinh viên Đại học Osaka · T9. Recruit cofounder Tuấn + Aiko (共同創業者リクルート)

> **Mục tiêu nhân vật:** Đại 25 tuổi, 12/2029. Học các mẫu hội thoại tiếng Nhật/Việt khi recruit cofounder: (1) Pitch tầm nhìn startup ngắn gọn, (2) Đàm phán cổ phần + lương + vai trò, (3) Mời ăn pitch không trang trọng, (4) Trả lời câu hỏi về rủi ro, (5) Keigo cảm ơn investor angel, (6) Cảnh tiếng Việt báo tin gia đình.

---

## Bối cảnh

Tháng 12/2029. Đại vừa nhận term sheet pre-seed ¥30M từ Anri (sách trước), cần gấp 2 cofounder: 1 lo marketing/biz (Tuấn — em cohort sách 19-20, vừa graduate Kobe U Kinh tế) và 1 lo UI/UX + brand (Aiko Sato — cohort lab Watanabe, vừa graduate). Cả Tuấn lẫn Aiko đều đã có offer công ty lớn (Lawson HQ và Yahoo Osaka), nên Đại phải pitch tốt. Chương này tập trung mẫu câu pitch startup, đàm phán cổ phần/lương, và mời gọi join cofounder.

---

## Tình huống 1 — LINE 14/12 · 21:00, Đại pitch Tuấn qua chat tiếng Việt

*Đại ngồi ở bàn làm việc Senri-chuo, vừa xong cuộc gọi với Anri. Mở LINE Tuấn.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Tuấn em ơi! Anh có tin lớn. Anri vừa ký term sheet ¥30M cho Hizashi rồi. |
| Tuấn | (VN) Hả? Anh nói thật á? ¥30M Anri lead? Em sốc luôn. |
| Đại | (VN) Thật. Anh muốn em làm cofounder mảng marketing với biz. CMO. |
| Tuấn | (VN) Anh ơi... em vừa pass vòng final Lawson HQ junior PM tuần trước. Họ chờ em trả lời thứ 6. |
| Đại | (VN) Anh biết. Nên anh mới phải nói sớm. Mai 8 giờ tối anh xuống Sannomiya, ăn cùng em một bữa rồi nói chi tiết được không? |
| Tuấn | (VN) Được anh. Quán Yakiniku Tora chỗ cũ nhé. |

---

## Tình huống 2 — Yakiniku Tora Sannomiya · 15/12 20:00, Đại pitch tầm nhìn Hizashi

*Đại và Tuấn ngồi bàn góc. Đại mở laptop slide pitch deck 12 trang.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em xem slide này. Hizashi 6 tháng đã có 100 user beta, retention tuần 4 là 78%. Anri định giá pre-money ¥170M. |
| Tuấn | (VN) Số đẹp đấy anh. Mà em hỏi thẳng: em đứng đâu trong cap table? |
| Đại | (VN) Cap table sau vòng này: anh 51%, em CMO 21%, Aiko CDO 12.5%, Anri 13%, DG 2.5%. |
| Tuấn | (VN) 21% là số nghiêm túc. Còn lương? |
| Đại | (VN) Lương 0 trong 6 tháng đầu. Sau đó ¥3M/năm. So với Lawson PM ¥5M thì giảm 40%. |
| Tuấn | (VN) Em nói thật, em sắp cưới Yuna tháng 6. Em không thể nhận 0 yen 6 tháng. |
| Đại | (VN) Anh hiểu. Anh đề xuất phương án: em nhận ¥1.5M/năm trong 6 tháng đầu (bằng nửa lương thị trường), sau đó lên ¥3M. Đổi lại em vẫn 21%. |
| Tuấn | (VN) Như thế hợp lý hơn. Cho em 3 ngày nói chuyện với Yuna nhé. |

---

## Tình huống 3 — LINE Aiko · 16/12 10:30, Đại đặt hẹn gặp

| Vai | Lời thoại |
|---|---|
| Đại | アイコ、おはよう。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>があるんだけど、<ruby>明日<rt>あした</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby><ruby>取<rt>と</rt></ruby>れない?<br>*(Aiko, chào buổi sáng. Anh có chuyện quan trọng, mai dành chút thời gian được không?)* |
| Aiko | おはよう!<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。<ruby>場所<rt>ばしょ</rt></ruby>は?<br>*(Chào! Được nha. Ở đâu?)* |
| Đại | <ruby>梅田<rt>うめだ</rt></ruby>のブルーボトルコーヒー、15<ruby>時<rt>じ</rt></ruby>でどう?<br>*(Blue Bottle Umeda, 3 giờ chiều thế nào?)* |
| Aiko | OK!<ruby>気<rt>き</rt></ruby>になる…<ruby>何<rt>なん</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>?<br>*(OK! Tò mò ghê... chuyện gì vậy?)* |
| Đại | <ruby>会<rt>あ</rt></ruby>ってから<ruby>話<rt>はな</rt></ruby>すね。<ruby>人生<rt>じんせい</rt></ruby><ruby>変<rt>か</rt></ruby>わるかもしれないやつ。<br>*(Gặp rồi anh kể. Chuyện có thể thay đổi cuộc đời em đấy.)* |
| Aiko | <ruby>大袈裟<rt>おおげさ</rt></ruby>!でも<ruby>楽<rt>たの</rt></ruby>しみ。<br>*(Hơi cường điệu nha! Mà háo hức ghê.)* |

---

## Tình huống 4 — Blue Bottle Umeda · 17/12 15:00, pitch Aiko mảng UI/UX

*Bàn quầy nhìn ra phố Umeda. Đại đặt laptop xuống, mở deck Hizashi.*

| Vai | Lời thoại |
|---|---|
| Đại | アイコ、<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>う。Hizashi が Anri から¥30M の pre-seed をもらった。<ruby>君<rt>きみ</rt></ruby>に<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>として、CDO で<ruby>来<rt>き</rt></ruby>てほしい。<br>*(Aiko, nói thẳng. Hizashi vừa nhận ¥30M pre-seed từ Anri. Anh muốn em làm cofounder, vị trí CDO.)* |
| Aiko | (đặt cốc xuống) <ruby>嘘<rt>うそ</rt></ruby>でしょ…<ruby>本当<rt>ほんとう</rt></ruby>に?<br>*(Đùa hả... thật á?)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>。Anri ¥25M lead、DG ¥5M co-investor、Tony ¥1M convertible note。<ruby>合計<rt>ごうけい</rt></ruby>¥31M。<br>*(Thật. Anri ¥25M lead, DG ¥5M co-investor, Tony ¥1M convertible note. Tổng ¥31M.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>は?<br>*(Vai trò của em là gì?)* |
| Đại | UI/UX <ruby>全般<rt>ぜんぱん</rt></ruby>、ブランドアイデンティティ、デザイナー<ruby>採用<rt>さいよう</rt></ruby>の<ruby>主導<rt>しゅどう</rt></ruby>。equity は 12.5%、<ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>の 6 ヶ<ruby>月<rt>げつ</rt></ruby>¥1.5M、その<ruby>後<rt>ご</rt></ruby>¥3.5M/<ruby>年<rt>ねん</rt></ruby>。<br>*(UI/UX tổng thể, brand identity, dẫn dắt tuyển designer. Equity 12.5%, lương 6 tháng đầu ¥1.5M, sau đó ¥3.5M/năm.)* |
| Aiko | Yahoo Osaka が¥6M で<ruby>誘<rt>さそ</rt></ruby>ってる。<br>*(Yahoo Osaka đang mời với ¥6M.)* |
| Đại | <ruby>知<rt>し</rt></ruby>ってる。でも Yahoo では<ruby>君<rt>きみ</rt></ruby>のデザインで<ruby>世界<rt>せかい</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらない。Hizashi なら、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>10<ruby>万人<rt>まんにん</rt></ruby>の UI を<ruby>君<rt>きみ</rt></ruby>が<ruby>設計<rt>せっけい</rt></ruby>することになる。<br>*(Anh biết. Nhưng ở Yahoo design của em không đổi thế giới. Còn Hizashi, em sẽ thiết kế UI cho 100 ngàn người học Việt.)* |
| Aiko | …<ruby>5日<rt>いつか</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>返事<rt>へんじ</rt></ruby>するね。<br>*(... Trong 5 ngày em trả lời.)* |

---

## Tình huống 5 — Aiko hỏi lại chi tiết kỹ thuật · 17/12 17:00, LINE

*Aiko đã rời cafe, nhưng vẫn nhắn lại để chốt nốt chi tiết.*

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>1つ<rt>ひとつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。「<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>」というのは、<ruby>正社員<rt>せいしゃいん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>?それとも<ruby>役員<rt>やくいん</rt></ruby><ruby>扱<rt>あつか</rt></ruby>い?<br>*(Hỏi lại 1 điều. "Cofounder" ở đây là hợp đồng nhân viên chính thức, hay đối xử như board member?)* |
| Đại | <ruby>役員<rt>やくいん</rt></ruby>(<ruby>取締役<rt>とりしまりやく</rt></ruby>)<ruby>扱<rt>あつか</rt></ruby>い。Hizashi Inc<ruby>取締役<rt>とりしまりやく</rt></ruby>3<ruby>名<rt>めい</rt></ruby>:<ruby>俺<rt>おれ</rt></ruby>(CEO)+<ruby>君<rt>きみ</rt></ruby>(CDO)+トゥアン(CMO)。<br>*(Đối xử như giám đốc — board member. Hizashi Inc có 3 giám đốc: anh CEO + em CDO + Tuấn CMO.)* |
| Aiko | <ruby>株式<rt>かぶしき</rt></ruby>の vesting は?<br>*(Vesting cổ phần thế nào?)* |
| Đại | 4<ruby>年<rt>ねん</rt></ruby> vesting、1<ruby>年<rt>ねん</rt></ruby> cliff。<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>。<br>*(4 năm vesting, 1 năm cliff. Điều khoản chuẩn.)* |
| Aiko | OK、<ruby>分<rt>わ</rt></ruby>かった。<ruby>父<rt>ちち</rt></ruby>とも<ruby>相談<rt>そうだん</rt></ruby>するね。<br>*(OK em hiểu rồi. Em bàn với bố em nữa nhé.)* |

---

## Tình huống 6 — LINE Tuấn YES · 18/12 22:00

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Anh! Em bàn với Yuna xong. Yuna ủng hộ 100%. Em ĐỒNG Ý làm CMO Hizashi! |
| Đại | (VN) Tuấn em! Cảm ơn em đã tin anh. |
| Tuấn | (VN) Em từ chối Lawson sáng nay rồi. Bà manager bên đó tiếc lắm. |
| Đại | (VN) Em đã có quyết định nào lớn hơn quyết định này chưa? |
| Tuấn | (VN) Lớn thứ hai. Lớn nhất là cầu hôn Yuna. |
| Đại | (VN) Haha ổn. Welcome onboard cofounder! Mai 9 giờ sáng họp Zoom 3 người được không? |
| Tuấn | (VN) OK anh. |

---

## Tình huống 7 — Aiko YES · 19/12 11:00, gọi điện thoại

*Đại đang đi từ ga Senri-chuo về căn hộ. Aiko gọi.*

| Vai | Lời thoại |
|---|---|
| Aiko | ダイ!<ruby>決<rt>き</rt></ruby>めた!YES!<br>*(Đại! Em quyết rồi! YES!)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に?Yahoo は?<br>*(Thật á? Còn Yahoo?)* |
| Aiko | <ruby>今朝<rt>けさ</rt></ruby><ruby>辞退<rt>じたい</rt></ruby>の<ruby>連絡<rt>れんらく</rt></ruby>した。<ruby>父<rt>ちち</rt></ruby>は「やってみなさい」って。<br>*(Sáng nay đã báo từ chối. Bố em bảo "thử đi con".)* |
| Đại | アイコ…ありがとう。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Aiko... cảm ơn em. Anh mừng thật sự.)* |
| Aiko | <ruby>明日<rt>あした</rt></ruby>のミーティング、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby> Zoom だよね?<br>*(Họp mai 9 giờ Zoom đúng không?)* |
| Đại | そう。トゥアンも<ruby>参加<rt>さんか</rt></ruby>。<br>*(Đúng. Tuấn cũng tham gia.)* |
| Aiko | じゃ、また<ruby>明日<rt>あした</rt></ruby>!<br>*(Vậy mai gặp nhé!)* |

---

## Tình huống 8 — Zoom 3 cofounder · 20/12 09:00, kick-off meeting

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は Hizashi <ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>3<ruby>名<rt>めい</rt></ruby><ruby>最初<rt>さいしょ</rt></ruby>のミーティングです。<br>*(Chào buổi sáng. Hôm nay là cuộc họp đầu tiên của 3 cofounder Hizashi.)* |
| Tuấn | おはよう!よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào! Rất mong được hợp tác.)* |
| Aiko | よろしく!<br>*(Chào nhé!)* |
| Đại | <ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>俺<rt>おれ</rt></ruby> CEO+CTO、トゥアン CMO、アイコ CDO。<ruby>異論<rt>いろん</rt></ruby>ある?<br>*(Xác nhận phân chia vai trò. Anh CEO+CTO, Tuấn CMO, Aiko CDO. Có ý kiến khác không?)* |
| Tuấn | <ruby>無<rt>な</rt></ruby>し。<br>*(Không.)* |
| Aiko | <ruby>無<rt>な</rt></ruby>し。<br>*(Không.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>までに、<ruby>3人<rt>さんにん</rt></ruby>の OKR を<ruby>共有<rt>きょうゆう</rt></ruby>ドキュメントに<ruby>書<rt>か</rt></ruby>こう。Q1 2030 までの<ruby>目標<rt>もくひょう</rt></ruby>。<br>*(Trong tuần sau, hãy ghi OKR của 3 người vào doc chung. Mục tiêu đến Q1 2030.)* |
| Aiko | <ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Rõ.)* |

---

## Tình huống 9 — Hỏi lại khi chưa hiểu · 20/12 09:20, Tuấn hỏi term "OKR"

| Vai | Lời thoại |
|---|---|
| Tuấn | ダイさん、<ruby>1<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いていい?「OKR」って<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>?<ruby>聞<rt>き</rt></ruby>いたことあるけど、<ruby>使<rt>つか</rt></ruby>ったことない。<br>*(Anh ơi, em hỏi 1 cái. "OKR" cụ thể là gì? Em nghe rồi mà chưa dùng bao giờ.)* |
| Đại | いい<ruby>質問<rt>しつもん</rt></ruby>。Objectives and Key Results の<ruby>略<rt>りゃく</rt></ruby>。<ruby>目標<rt>もくひょう</rt></ruby>(O)<ruby>1<rt>ひと</rt></ruby>つに<ruby>対<rt>たい</rt></ruby>して、<ruby>計測可能<rt>けいそくかのう</rt></ruby>な KR を 3〜5 つ<ruby>付<rt>つ</rt></ruby>ける。<br>*(Câu hỏi hay. Viết tắt của Objectives and Key Results. Mỗi 1 mục tiêu (O) gắn 3-5 KR đo được.)* |
| Tuấn | <ruby>例<rt>れい</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いできる?<br>*(Cho em xin 1 ví dụ được không?)* |
| Đại | O:「3<ruby>月末<rt>がつまつ</rt></ruby>までに Hizashi v1.0 を<ruby>公開<rt>こうかい</rt></ruby>する」。KR1:<ruby>登録<rt>とうろく</rt></ruby>ユーザー 1000<ruby>名<rt>めい</rt></ruby>。KR2:retention 4<ruby>週<rt>しゅう</rt></ruby> 70%。KR3:NPS 50<ruby>以上<rt>いじょう</rt></ruby>。<br>*(O: "Đến cuối tháng 3 ra mắt Hizashi v1.0". KR1: 1000 user đăng ký. KR2: retention 4 tuần 70%. KR3: NPS từ 50 trở lên.)* |
| Tuấn | あ、<ruby>分<rt>わ</rt></ruby>かった!<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>で<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>測<rt>はか</rt></ruby>るのね。<br>*(À hiểu rồi! Đo tiến độ bằng số cụ thể nhỉ.)* |
| Aiko | デザイン<ruby>系<rt>けい</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ?<br>*(Bên design có giống không?)* |
| Đại | <ruby>同<rt>おな</rt></ruby>じ。KR は usability score とか、ユーザビリティテスト<ruby>通過率<rt>つうかりつ</rt></ruby>とか。<br>*(Giống. KR là usability score, tỉ lệ qua usability test...)* |

---

## Tình huống 10 — Cảm ơn Anri-san qua điện thoại · 20/12 11:00

*Đại bước ra ban công, gọi Sato-san bên Anri để báo tin.*

| Vai | Lời thoại |
|---|---|
| Đại | サトウさん、グエンです。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Sato-san, em là Đại. Xin lỗi vì làm phiền lúc bận.)* |
| Sato-san | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Đại-san, em vất vả rồi.)* |
| Đại | ご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>2<ruby>名<rt>めい</rt></ruby>、トゥアンとサトウ・アイコが<ruby>正式<rt>せいしき</rt></ruby>に<ruby>承諾<rt>しょうだく</rt></ruby>いたしました。<br>*(Em xin báo cáo. 2 cofounder Tuấn và Sato Aiko đã chính thức đồng ý.)* |
| Sato-san | おめでとうございます!それは<ruby>良<rt>よ</rt></ruby> いニュースですね。<br>*(Chúc mừng! Tin tốt đấy.)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>法人<rt>ほうじん</rt></ruby><ruby>設立<rt>せつりつ</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きご<ruby>指導<rt>しどう</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Dự kiến giữa tháng sau sẽ thành lập pháp nhân. Mong tiếp tục được anh chỉ dẫn.)* |
| Sato-san | こちらこそ。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Tôi cũng vậy. Cố lên nhé.)* |

---

## Tình huống 11 — Founders dinner Senri-chuo izakaya · 22/12 19:00

*Quán izakaya gần ga Senri-chuo. Đại + Mai + Hana (19 tháng) + Tuấn + Yuna + Aiko. 6 người + 1 baby.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>乾杯<rt>かんぱい</rt></ruby>!Hizashi 3 <ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>に!<br>*(Cảm ơn mọi người đã đến. Cạn ly! Vì 3 cofounder Hizashi!)* |
| Tất cả | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Tuấn | (VN, quay sang Mai) Chị Mai! Em là cofounder người Việt đầu tiên của anh Đại. Vinh dự lắm chị ạ. |
| Mai | (VN) Tuấn em, chị tin em. Anh Đại quý em từ hồi sách 19. |
| Aiko | (sang Mai, JP chậm) マイさん、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Mai, mong chị giúp đỡ từ giờ trở đi.)* |
| Mai | (JP chậm) こちらこそ、よろしく。<br>*(Tôi cũng vậy, rất mong.)* |
| Yuna | (Yuna người Nhật, sang Hana) ハナちゃん、かわいい!<br>*(Hana đáng yêu quá!)* |
| Hana | Bááá!(chỉ Tuấn) <br>*(Bố!)* |
| Đại | <ruby>違<rt>ちが</rt></ruby>うよハナ、これはトゥアンお<ruby>兄<rt>にい</rt></ruby>さん。<br>*(Không phải đâu Hana, đây là anh Tuấn.)* |

---

## Tình huống 12 — Cap table walk-through · 22/12 20:30, sau bữa ăn

*Đại mở iPad, show cap table cho cả nhóm.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>最終<rt>さいしゅう</rt></ruby>の cap table<ruby>確認<rt>かくにん</rt></ruby>:Đại 51% + Tuấn 21% + Aiko 12.5% + Anri 13% + DG 2.5%。Tony の convertible note は<ruby>次<rt>つぎ</rt></ruby>のラウンドで<ruby>転換<rt>てんかん</rt></ruby>。<br>*(Xác nhận cap table cuối: Đại 51% + Tuấn 21% + Aiko 12.5% + Anri 13% + DG 2.5%. Convertible note của Tony convert ở vòng sau.)* |
| Tuấn | <ruby>次<rt>つぎ</rt></ruby>の Series A で dilution はどのぐらい?<br>*(Series A tới dilution khoảng bao nhiêu?)* |
| Đại | <ruby>標準的<rt>ひょうじゅんてき</rt></ruby>には 20%。<ruby>例<rt>たと</rt></ruby>えば<ruby>俺<rt>おれ</rt></ruby>は 51%→約 40%、<ruby>君<rt>きみ</rt></ruby>は 21%→約 17%。<br>*(Chuẩn ngành 20%. Ví dụ anh 51% → khoảng 40%, em 21% → khoảng 17%.)* |
| Aiko | valuation の<ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(Mục tiêu valuation?)* |
| Đại | Series A、post-money¥1B(<ruby>10<rt>じゅう</rt></ruby><ruby>億<rt>おく</rt></ruby><ruby>円<rt>えん</rt></ruby>)を<ruby>狙<rt>ねら</rt></ruby>う。<ruby>来年<rt>らいねん</rt></ruby><ruby>末<rt>まつ</rt></ruby>。<br>*(Series A, post-money ¥1B (1 tỷ yên). Cuối năm tới.)* |
| Tuấn | (VN, nhỏ với Đại) Anh, dilution mà mất kiểm soát majority thì sao? |
| Đại | (VN) Anh tính trước rồi. 40% vẫn là largest shareholder + dual-class share để giữ voting. Hôm sau anh giải thích chi tiết. |

---

## Tình huống 13 — LINE nhóm · 22/12 23:30, ấn định ngày họp tuần tới

| Vai | Lời thoại |
|---|---|
| Đại | 3<ruby>人<rt>にん</rt></ruby>のグループチャットを<ruby>作<rt>つく</rt></ruby>った。「Hizashi Founders」。これからここで<ruby>全部<rt>ぜんぶ</rt></ruby>。<br>*(Anh tạo nhóm chat 3 người "Hizashi Founders". Từ giờ tất cả ở đây.)* |
| Aiko | <ruby>了解<rt>りょうかい</rt></ruby>!<br>*(Rõ!)* |
| Tuấn | <ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Rõ.)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>:<ruby>月曜<rt>げつよう</rt></ruby> 10<ruby>時<rt>じ</rt></ruby> Zoom standup。<ruby>水曜<rt>すいよう</rt></ruby> WeWork <ruby>下見<rt>したみ</rt></ruby>。<ruby>金曜<rt>きんよう</rt></ruby><ruby>司法書士<rt>しほうしょし</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>。<br>*(Tuần sau: Thứ 2 10 giờ Zoom standup. Thứ 4 đi xem WeWork. Thứ 6 gặp luật sư.)* |
| Aiko | <ruby>金曜<rt>きんよう</rt></ruby>の<ruby>司法書士<rt>しほうしょし</rt></ruby>って、<ruby>場所<rt>ばしょ</rt></ruby>どこ?<br>*(Luật sư thứ 6 ở đâu?)* |
| Đại | <ruby>梅田<rt>うめだ</rt></ruby>の<ruby>事務所<rt>じむしょ</rt></ruby>。<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>。<ruby>住所<rt>じゅうしょ</rt></ruby>あとで<ruby>送<rt>おく</rt></ruby>る。<br>*(Văn phòng ở Umeda. 14h. Địa chỉ anh gửi sau.)* |

---

## Tình huống 14 — Cảnh tiếng Việt cuối chương · 22/12 24:00, Đại gọi Mai sau khi tiễn khách

*Mai đã về căn hộ với Hana. Đại đứng ngoài quán izakaya, gọi điện cho Mai để báo về.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi! Anh tiễn Tuấn với Aiko xong rồi. Hana ngủ chưa? |
| Mai | (VN) Ngủ rồi anh. Sáng nay anh nói "OKR" cho Tuấn nghe, em ngồi nghe ké cũng học được. |
| Đại | (VN) Em hiểu OKR à? Anh tưởng em chỉ lo Hana. |
| Mai | (VN) Vợ founder mà anh, phải biết tý chứ. Mà em hỏi nha — "kyoudou sougyousha" là cofounder đúng không? Em nghe Aiko gọi anh thế cả tối. |
| Đại | (VN) Đúng rồi. 共同創業者 — kyoudou (cùng) + sougyou (khởi nghiệp) + sha (người). Cofounder. |
| Mai | (VN) Còn "dilution" nghĩa là gì? Anh với Tuấn nhắc trong bữa ăn. |
| Đại | (VN) Dilution là cổ phần bị pha loãng. Khi gọi vốn thêm, nhà đầu tư mới vào nên % của founders giảm xuống. Như anh 51% sau Series A còn 40%. |
| Mai | (VN) Vậy là 11% mình mất đi à? |
| Đại | (VN) Không phải mất. Pie to ra thì miếng nhỏ hơn nhưng tổng giá trị lớn hơn. 40% của ¥1B vẫn lớn hơn 51% của ¥200M. |
| Mai | (VN) À, hiểu rồi. Toán học mẹ vợ founder. |
| Đại | (VN) Mai mình đi xem WeWork đó. Em với Hana đi cùng nhé? |
| Mai | (VN) Có chứ. Em muốn nhìn nơi anh sẽ ngồi cả ngày. Về nhanh nhé, ngoài trời 2 độ đó. |
| Đại | (VN) Vâng, anh về liền. |

---

## Đọng lại chương 9

Đại đã recruit thành công 2 cofounder trong 8 ngày. Với Tuấn (cohort sách 19-20, vừa graduate Kobe Kinh tế), pitch bằng tiếng Việt trong quán yakiniku Sannomiya, đàm phán **lương tăng từ 0 lên ¥1.5M/năm 6 tháng đầu** để giữ 21% equity. Với Aiko (cohort lab Watanabe, đã có offer Yahoo ¥6M), pitch bằng JP tại Blue Bottle Umeda, dùng mẫu **「<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>う」** để vào thẳng vấn đề, chốt CDO 12.5%. Khi Tuấn hỏi lại **「〜というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>?」** về OKR, Đại giải thích bằng ví dụ cụ thể. Báo cáo investor Anri bằng keigo trang trọng **「ご<ruby>報告<rt>ほうこく</rt></ruby>です」**. Founders dinner Senri-chuo izakaya 6 người, walk-through cap table 51/21/12.5/13/2.5 + convertible note Tony. Cảnh cuối: Mai hỏi nghĩa "dilution" qua điện thoại, Đại giải thích bằng metaphor "pie to ra miếng nhỏ hơn nhưng tổng giá trị lớn hơn".

> Từ vựng & mẫu câu chương này: 共同創業者・取締役・vesting・cliff・cap table・dilution・equity・OKR・KR・Objectives・convertible note・lead investor・co-investor・pre-money・post-money・valuation・brand identity・結論から言う・〜というのは具体的に何・ご報告です・引き続きよろしくお願い申し上げます・お忙しいところ恐れ入ります

## Bí quyết chương

- **Đàm phán lương cofounder**: 0 yen 6 tháng là không thực tế cho người sắp cưới. Mức ¥1.5M chuyển tiếp giữ được equity mà vẫn nhân văn.
- **Pitch khác nhau cho người khác nhau**: Tuấn → tiếng Việt + yakiniku + bàn tài chính gia đình (Yuna). Aiko → JP + cafe + bàn tầm nhìn design ("10万人の UI").
- **Mẫu「<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>う」**: Vào thẳng kết luận trước khi giải thích — phong cách executive Nhật startup.
- **Hỏi lại khi chưa hiểu**: Tuấn không sĩ diện, hỏi thẳng "OKR là gì". Tốt hơn giả vờ hiểu rồi làm sai.
- **Vợ founder là cộng sự tinh thần**: Mai học từ "cofounder", "dilution" qua hội thoại hàng ngày.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 大事 | だいじ | ĐẠI SỰ | quan trọng |
| 場所 | ばしょ | TRƯỜNG SỞ | địa điểm |
| 大袈裟 | おおげさ | ĐẠI GIÁ SA | cường điệu |
| 結論 | けつろん | KẾT LUẬN | kết luận |
| 共同創業者 | きょうどうそうぎょうしゃ | CỘNG ĐỒNG SÁNG NGHIỆP GIẢ | đồng sáng lập |
| 嘘 | うそ | HƯ | nói dối, đùa |
| 合計 | ごうけい | HỢP KẾ | tổng cộng |
| 役割 | やくわり | DỊCH CÁT | vai trò |
| 全般 | ぜんぱん | TOÀN BAN | tổng thể |
| 主導 | しゅどう | CHỦ ĐẠO | dẫn dắt |
| 給料 | きゅうりょう | CẤP LIỆU | lương |
| 誘う | さそう | DỤ | mời, rủ |
| 雇用契約 | こようけいやく | CỐ DỤNG KHẾ ƯỚC | hợp đồng lao động |
| 役員 | やくいん | DỊCH VIÊN | thành viên ban quản trị |
| 扱い | あつかい | TRẢO | đối xử |
| 標準条件 | ひょうじゅんじょうけん | TIÊU CHUẨN ĐIỀU KIỆN | điều khoản chuẩn |
| 承諾 | しょうだく | THỪA NẶC | đồng ý |
| 決める | きめる | QUYẾT | quyết |
| 異論 | いろん | DỊ LUẬN | ý kiến khác |
| 略 | りゃく | LƯỢC | viết tắt |
| 計測可能 | けいそくかのう | KẾ TRẮC KHẢ NĂNG | có thể đo |
| 公開 | こうかい | CÔNG KHAI | công khai |
| 登録 | とうろく | ĐĂNG LỤC | đăng ký |
| 通過率 | つうかりつ | THÔNG QUÁ SUẤT | tỷ lệ qua |
| 引き続き | ひきつづき | DẪN TỤC | tiếp tục |
| 乾杯 | かんぱい | CÀN BÔI | cạn ly |
| 司法書士 | しほうしょし | TƯ PHÁP THƯ SĨ | luật sư công chứng |
| 面談 | めんだん | DIỆN ĐÀM | gặp gỡ trao đổi |
| 下見 | したみ | HẠ KIẾN | đi xem trước |
| 事務所 | じむしょ | SỰ VỤ SỞ | văn phòng |
| 住所 | じゅうしょ | TRỤ SỞ | địa chỉ |
| 転換 | てんかん | CHUYỂN HOÁN | chuyển đổi |
| 標準的 | ひょうじゅんてき | TIÊU CHUẨN ĐÍCH | chuẩn |
| 狙う | ねらう | THƯ | nhắm |
| 控除 | こうじょ | KHỐNG TRỪ | khấu trừ |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000010, 800000024, NULL, 'markdown_book', 'T10. Pre-seed ¥30M Anri + DG. Incorporate Hizashi Inc. (法人設立)', '# Sách sinh viên Đại học Osaka · T10. Pre-seed ¥30M Anri + DG. Incorporate Hizashi Inc. (法人設立)

> **Mục tiêu nhân vật:** Đại 25 tuổi, 1/2030. Học các mẫu hội thoại tiếng Nhật khi gọi vốn VC: (1) Keigo cao cấp với investor + lawyer, (2) Thuật ngữ VC giữ EN (term sheet, valuation, seed, equity, dilution), (3) Xin term sheet sign tại Anri Tokyo, (4) Ngân hàng mở tài khoản doanh nghiệp Mizuho, (5) Hỏi lại điều khoản chưa rõ với 司法書士, (6) Cảnh tiếng Việt cuối — báo tin gia đình ngày incorporate.

---

## Bối cảnh

Tháng 1/2030. Hizashi đã có cofounder team (Đại CEO+CTO, Tuấn CMO, Aiko CDO). Tháng này phải thực hiện 4 việc lớn: (1) ký term sheet với Anri ¥25M + DG Daiichi ¥5M + Tony convertible note ¥1M, (2) thành lập 株式会社 Hizashi Inc tại Osaka, (3) thuê WeWork Senri-chuo + đặt 3 bàn, (4) mở tài khoản Mizuho + setup payroll. Đây là chương dày keigo nhất series 24 — Đại phải làm việc với Anri partner Sato-san, DG GP Yamashita-san, và 司法書士 Inoue-san. Chương này tập trung mẫu câu xin xác nhận điều khoản, keigo investor, mẫu khai báo ngân hàng.

---

## Tình huống 1 — Văn phòng Anri Tokyo · 8/1 10:00, ký term sheet final

*Đại bay Shinkansen từ Osaka lên Tokyo từ sáng. Mặc vest đen + cà vạt navy. Phòng họp tầng 18 Roppongi Hills, có Sato-san (Anri partner), Yamashita-san (DG GP), và lawyer của Anri.*

| Vai | Lời thoại |
|---|---|
| Sato-san | グエンさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Đại-san, cảm ơn anh đã đến hôm nay.)* |
| Đại | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Tôi cũng vậy, mong được hợp tác.)* |
| Yamashita-san | DG <ruby>第一<rt>だいいち</rt></ruby>キャピタルの<ruby>山下<rt>やました</rt></ruby>です。<ruby>愛知<rt>あいち</rt></ruby>から<ruby>参<rt>まい</rt></ruby>りました。<br>*(Tôi là Yamashita từ DG Daiichi Capital. Đến từ Aichi.)* |
| Đại | <ruby>山下<rt>やました</rt></ruby>さん、<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・ダイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Yamashita-san, rất hân hạnh. Em là Nguyễn Văn Đại. Mong được hợp tác.)* |
| Sato-san | では、<ruby>最終<rt>さいしゅう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Vậy chúng tôi xin xác nhận điều khoản cuối cùng.)* |

---

## Tình huống 2 — Phòng họp Anri · 10:10, Sato-san đọc điều khoản

*Lawyer Anri phát term sheet 12 trang. Sato-san đọc từng dòng.*

| Vai | Lời thoại |
|---|---|
| Sato-san | <ruby>投資<rt>とうし</rt></ruby><ruby>総額<rt>そうがく</rt></ruby>:¥31M。<ruby>内訳<rt>うちわけ</rt></ruby>:Anri が¥25M、DG <ruby>第一<rt>だいいち</rt></ruby>が¥5M、トニーさんの convertible note が¥1M。<br>*(Tổng đầu tư: ¥31M. Cơ cấu: Anri ¥25M, DG Daiichi ¥5M, convertible note của Tony ¥1M.)* |
| Sato-san | post-money valuation は¥200M。Anri 13%、DG 2.5%、Tony 0.5%(<ruby>転換時<rt>てんかんじ</rt></ruby>)。<br>*(Post-money valuation ¥200M. Anri 13%, DG 2.5%, Tony 0.5% (khi convert).)* |
| Đại | <ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。Tony さんの convertible note、discount<ruby>率<rt>りつ</rt></ruby>は 20%で<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Cho em xác nhận 1 điều. Convertible note của Tony, discount rate là 20% đúng không ạ?)* |
| Sato-san | はい、20% discount に valuation cap ¥150M を<ruby>加<rt>くわ</rt></ruby>えています。<br>*(Vâng, 20% discount kèm valuation cap ¥150M.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em đã hiểu.)* |
| Yamashita-san | DG <ruby>側<rt>がわ</rt></ruby>として、board observer<ruby>権利<rt>けんり</rt></ruby>を<ruby>求<rt>もと</rt></ruby>めます。board seat はなしです。<br>*(Phía DG, chúng tôi xin quyền board observer. Không lấy board seat.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>いたしました。<br>*(Vâng em rõ.)* |

---

## Tình huống 3 — Hỏi lại điều khoản preferred share · 10:25

*Đại đọc đến mục Series Seed Preferred Shares, không chắc 1 điều khoản.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。「1x non-participating liquidation preference」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか?<br>*(Sato-san, cho em hỏi lại. "1x non-participating liquidation preference" cụ thể nghĩa là gì ạ?)* |
| Sato-san | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>売却<rt>ばいきゃく</rt></ruby>されたとき、Anri は<ruby>投資<rt>とうし</rt></ruby><ruby>額<rt>がく</rt></ruby> ¥25M を<ruby>先<rt>さき</rt></ruby>に<ruby>回収<rt>かいしゅう</rt></ruby>するか、<ruby>普通株<rt>ふつうかぶ</rt></ruby>に<ruby>転換<rt>てんかん</rt></ruby>して 13%<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>るか、どちらかを<ruby>選<rt>えら</rt></ruby>べます。<ruby>両方<rt>りょうほう</rt></ruby>はもらえません。<br>*(Câu hỏi tốt. Khi công ty được bán, Anri có thể chọn: hoặc thu lại ¥25M trước, hoặc convert sang cổ phần phổ thông nhận 13%. Không được cả hai.)* |
| Đại | なるほど。<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>にとって<ruby>有利<rt>ゆうり</rt></ruby>な<ruby>条件<rt>じょうけん</rt></ruby>ですね。<br>*(À, là điều khoản có lợi cho founder.)* |
| Sato-san | そうです。participating だと VC が<ruby>両方<rt>りょうほう</rt></ruby><ruby>取<rt>と</rt></ruby>るので、founder には<ruby>不利<rt>ふり</rt></ruby>です。<br>*(Đúng. Participating thì VC ăn cả hai, bất lợi cho founder.)* |
| Đại | ご<ruby>説明<rt>せつめい</rt></ruby>ありがとうございます。<br>*(Cảm ơn anh đã giải thích.)* |

---

## Tình huống 4 — Ký term sheet · 10:45

*Cả 3 bên ký. Đại ký bằng inkan (con dấu) Hizashi tạm thời + chữ ký romaji.*

| Vai | Lời thoại |
|---|---|
| Sato-san | では、ご<ruby>署名<rt>しょめい</rt></ruby>とご<ruby>捺印<rt>なついん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy xin anh ký tên và đóng dấu.)* |
| Đại | (ký + đóng dấu) <ruby>署名<rt>しょめい</rt></ruby>いたしました。<br>*(Em đã ký.)* |
| Sato-san | ありがとうございます。これで Anri は<ruby>正式<rt>せいしき</rt></ruby>に Hizashi の lead investor となりました。<br>*(Cảm ơn anh. Vậy Anri chính thức là lead investor của Hizashi.)* |
| Yamashita-san | DG も co-investor として<ruby>参加<rt>さんか</rt></ruby>させていただきます。<ruby>愛知<rt>あいち</rt></ruby>のネットワークでお<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てれば<ruby>幸<rt>さいわ</rt></ruby>いです。<br>*(DG cũng tham gia với tư cách co-investor. Mong giúp được anh qua network ở Aichi.)* |
| Đại | <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Em xin chân thành cảm ơn. Từ nay rất mong được giúp đỡ.)* |
| Đại | (cúi 45 độ) <br>*(Cúi sâu chào.)* |

---

## Tình huống 5 — Shinkansen về Osaka · 8/1 14:00, gọi Mai báo tin

*Đại ngồi toa Nozomi, ăn ekiben, gọi LINE video Mai.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi! Anh ký xong rồi. Term sheet ¥31M, post-money ¥200M. |
| Mai | (VN) Trời ơi! Anh giỏi quá! Hana ơi, bố ký xong rồi này! |
| Hana | Bááá! Báá! |
| Đại | (VN) Anh đang trên Shinkansen, 16:30 về Shin-Osaka. Em có muốn ra đón không? |
| Mai | (VN) Em ra. Hana đang nhăn nhó nhưng em dỗ được. À, anh ơi, "term sheet" là cái gì cụ thể? |
| Đại | (VN) Tờ giấy điều khoản đầu tư. Như hợp đồng vay nhưng cho equity. 12 trang. Trong đó ghi số tiền, % cổ phần, quyền lợi của nhà đầu tư... |
| Mai | (VN) À. Rồi anh ăn gì chưa? |
| Đại | (VN) Ăn ekiben gyutan. Em chờ anh nhé. |

---

## Tình huống 6 — Văn phòng 司法書士 Umeda · 10/1 14:00, gặp Inoue-san

*Inoue-san (司法書士 — judicial scrivener) là người làm thủ tục lập công ty. Đại + Tuấn + Aiko cùng đến.*

| Vai | Lời thoại |
|---|---|
| Inoue (司法書士) | <ruby>井上<rt>いのうえ</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>は Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>設立<rt>せつりつ</rt></ruby>のお<ruby>手続<rt>てつづ</rt></ruby>きですね。<br>*(Tôi là Inoue. Hôm nay là thủ tục thành lập Hizashi KK đúng không ạ.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong anh giúp.)* |
| Inoue | まず、<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>定款<rt>ていかん</rt></ruby>、<ruby>発起人<rt>ほっきにん</rt></ruby><ruby>同意書<rt>どういしょ</rt></ruby>、<ruby>資本金<rt>しほんきん</rt></ruby><ruby>払込<rt>はらいこ</rt></ruby>みの<ruby>証明<rt>しょうめい</rt></ruby>、<ruby>印鑑証明書<rt>いんかんしょうめいしょ</rt></ruby>。<br>*(Trước tiên xác nhận giấy tờ cần. Điều lệ, biên bản đồng thuận thành viên sáng lập, chứng nhận nộp vốn, giấy chứng nhận dấu.)* |
| Đại | <ruby>定款<rt>ていかん</rt></ruby>はこちらです。<ruby>本店<rt>ほんてん</rt></ruby><ruby>所在地<rt>しょざいち</rt></ruby>は<ruby>大阪府<rt>おおさかふ</rt></ruby><ruby>豊中市<rt>とよなかし</rt></ruby><ruby>新千里<rt>しんせんり</rt></ruby><ruby>東町<rt>ひがしまち</rt></ruby>(WeWork)です。<br>*(Điều lệ đây. Trụ sở chính tại Toyonaka, Shinsenri-Higashi-machi — WeWork.)* |
| Inoue | WeWork でも<ruby>登記<rt>とうき</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<ruby>住所<rt>じゅうしょ</rt></ruby><ruby>利用<rt>りよう</rt></ruby>プランに<ruby>加入<rt>かにゅう</rt></ruby>されていますね?<br>*(WeWork cũng đăng ký được. Anh đã đăng ký gói dùng địa chỉ chưa?)* |
| Đại | はい、<ruby>加入済<rt>かにゅうず</rt></ruby>みです。<br>*(Vâng, đã đăng ký.)* |
| Aiko | <ruby>1<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか?<ruby>資本金<rt>しほんきん</rt></ruby>はいくらに<ruby>設定<rt>せってい</rt></ruby>すべきでしょうか?<br>*(Em hỏi 1 câu được không? Vốn điều lệ nên đặt bao nhiêu ạ?)* |
| Inoue | <ruby>最低<rt>さいてい</rt></ruby>¥1<ruby>円<rt>えん</rt></ruby>から<ruby>可能<rt>かのう</rt></ruby>ですが、<ruby>取引先<rt>とりひきさき</rt></ruby>の<ruby>信用<rt>しんよう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えると¥1M〜¥5M が<ruby>一般的<rt>いっぱんてき</rt></ruby>です。<ruby>消費税<rt>しょうひぜい</rt></ruby><ruby>免税<rt>めんぜい</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えるなら¥10M<ruby>未満<rt>みまん</rt></ruby>が<ruby>有利<rt>ゆうり</rt></ruby>です。<br>*(Tối thiểu từ ¥1, nhưng để giữ uy tín với đối tác thường ¥1M-¥5M. Nếu tính miễn thuế tiêu dùng thì dưới ¥10M có lợi.)* |
| Đại | では¥5M に<ruby>設定<rt>せってい</rt></ruby>します。<br>*(Vậy đặt ¥5M.)* |

---

## Tình huống 7 — Hỏi lại về 法人税 · 14:30

*Tuấn chưa rõ về cơ chế thuế.*

| Vai | Lời thoại |
|---|---|
| Tuấn | <ruby>井上<rt>いのうえ</rt></ruby>さん、<ruby>初<rt>はじ</rt></ruby>めての<ruby>起業<rt>きぎょう</rt></ruby>なので<ruby>基本的<rt>きほんてき</rt></ruby>な<ruby>質問<rt>しつもん</rt></ruby>ですが、<ruby>法人税<rt>ほうじんぜい</rt></ruby>はどう<ruby>計算<rt>けいさん</rt></ruby>されますか?<br>*(Inoue-san, em mới khởi nghiệp nên hỏi câu cơ bản. 法人税 tính thế nào ạ?)* |
| Inoue | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>中小企業<rt>ちゅうしょうきぎょう</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>実効税率<rt>じっこうぜいりつ</rt></ruby>は<ruby>約<rt>やく</rt></ruby> 30%です。<ruby>初年度<rt>しょねんど</rt></ruby>は<ruby>赤字<rt>あかじ</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いので<ruby>払<rt>はら</rt></ruby>わないかもしれません。<br>*(Không sao, câu hỏi hay. Doanh nghiệp nhỏ Osaka thì thuế suất hiệu lực khoảng 30%. Năm đầu nhiều khả năng lỗ nên có thể không phải nộp.)* |
| Tuấn | <ruby>赤字<rt>あかじ</rt></ruby>でも<ruby>払<rt>はら</rt></ruby>うものはありますか?<br>*(Lỗ thì có phải nộp gì không?)* |
| Inoue | はい、<ruby>法人住民税<rt>ほうじんじゅうみんぜい</rt></ruby><ruby>均等割<rt>きんとうわり</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>¥70,000 は<ruby>赤字<rt>あかじ</rt></ruby>でも<ruby>必<rt>かなら</rt></ruby>ず<ruby>払<rt>はら</rt></ruby>います。<br>*(Có, thuế cư trú pháp nhân phần định mức ¥70,000/năm, lỗ vẫn phải nộp.)* |
| Tuấn | <ruby>分<rt>わ</rt></ruby>かりました、ありがとうございます。<br>*(Em hiểu rồi, cảm ơn anh.)* |

---

## Tình huống 8 — Đặt cọc WeWork Senri-chuo · 13/1 11:00

*Đại + Aiko đến WeWork tầng 8 toà Senri-chuo. Gặp community manager Tanaka-san.*

| Vai | Lời thoại |
|---|---|
| Tanaka (WeWork) | <ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>契約<rt>けいやく</rt></ruby>ですね。3<ruby>席<rt>せき</rt></ruby>の dedicated desk プラン、<ruby>月額<rt>げつがく</rt></ruby>¥120,000 で<ruby>間違<rt>まちが</rt></ruby>いないでしょうか?<br>*(Hôm nay là ký hợp đồng đúng không ạ. Gói dedicated desk 3 chỗ, ¥120,000/tháng, đúng không?)* |
| Đại | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>住所<rt>じゅうしょ</rt></ruby><ruby>利用<rt>りよう</rt></ruby>と<ruby>郵便<rt>ゆうびん</rt></ruby><ruby>受取<rt>うけとり</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>みでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đúng vậy. Xin gồm cả dùng địa chỉ và nhận thư.)* |
| Tanaka | <ruby>会議室<rt>かいぎしつ</rt></ruby>のクレジットは<ruby>月<rt>つき</rt></ruby> 12 <ruby>時間<rt>じかん</rt></ruby><ruby>付<rt>つ</rt></ruby>きます。<ruby>足<rt>た</rt></ruby>りなければ<ruby>追加<rt>ついか</rt></ruby><ruby>購入<rt>こうにゅう</rt></ruby>可能です。<br>*(Credit phòng họp đi kèm 12 tiếng/tháng. Thiếu thì mua thêm được.)* |
| Aiko | <ruby>内装<rt>ないそう</rt></ruby>はカスタマイズできますか?ブランドカラーで<ruby>少<rt>すこ</rt></ruby>し<ruby>装飾<rt>そうしょく</rt></ruby>したいんですが。<br>*(Có customize nội thất được không? Em muốn trang trí chút theo màu thương hiệu.)* |
| Tanaka | <ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>とパーティションは OK ですが、<ruby>壁<rt>かべ</rt></ruby>への<ruby>釘打<rt>くぎう</rt></ruby>ちは<ruby>禁止<rt>きんし</rt></ruby>です。<br>*(Trên bàn và partition thì OK, nhưng cấm đóng đinh lên tường.)* |
| Aiko | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Rõ ạ.)* |
| Đại | では<ruby>本日<rt>ほんじつ</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>初期<rt>しょき</rt></ruby><ruby>費用<rt>ひよう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby><ruby>口座<rt>こうざ</rt></ruby><ruby>開設<rt>かいせつ</rt></ruby><ruby>後<rt>ご</rt></ruby>にお<ruby>振込<rt>ふりこみ</rt></ruby>でよろしいですか?<br>*(Vậy hôm nay xin ký hợp đồng. Phí khởi tạo em chuyển khoản sau khi mở tài khoản công ty được không?)* |
| Tanaka | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ.)* |

---

## Tình huống 9 — Nhận giấy chứng nhận 法務局 · 15/1 10:00

*Đại đến 法務局 Osaka (Bộ Tư pháp khu vực) nhận giấy chứng nhận thành lập. Inoue-san đi cùng.*

| Vai | Lời thoại |
|---|---|
| Nhân viên 法務局 | グエン・ヴァン・ダイ<ruby>様<rt>さま</rt></ruby>、Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>の<ruby>登記<rt>とうき</rt></ruby><ruby>事項<rt>じこう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>でございます。<br>*(Anh Nguyễn Văn Đại, đây là giấy chứng nhận đăng ký Hizashi KK.)* |
| Đại | (cầm 2 tay) ありがとうございます。<br>*(Cảm ơn anh.)* |
| Nhân viên | <ruby>登記<rt>とうき</rt></ruby><ruby>日<rt>び</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby> 2030年1月15日。これで<ruby>正式<rt>せいしき</rt></ruby>な<ruby>法人<rt>ほうじん</rt></ruby>です。<br>*(Ngày đăng ký là hôm nay 15/1/2030. Vậy chính thức là pháp nhân.)* |
| Inoue | おめでとうございます、グエンさん。<br>*(Chúc mừng anh, Đại-san.)* |
| Đại | <ruby>井上<rt>いのうえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Inoue-san, em đã được anh giúp rất nhiều.)* |
| Đại | (LINE Founders group) <ruby>本日<rt>ほんじつ</rt></ruby>2030/1/15、Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>正式<rt>せいしき</rt></ruby><ruby>誕生<rt>たんじょう</rt></ruby>!<br>*(Hôm nay 15/1/2030, Hizashi KK chính thức ra đời!)* |

---

## Tình huống 10 — Mizuho Senri-chuo · 20/1 11:00, mở tài khoản doanh nghiệp

*Quầy giao dịch ngân hàng Mizuho chi nhánh Senri-chuo. Nhân viên tên Watanabe-san phụ trách doanh nghiệp.*

| Vai | Lời thoại |
|---|---|
| Watanabe (Mizuho) | <ruby>法人<rt>ほうじん</rt></ruby><ruby>口座<rt>こうざ</rt></ruby><ruby>開設<rt>かいせつ</rt></ruby>のお<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みですね。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>はお<ruby>持<rt>も</rt></ruby>ちでしょうか?<br>*(Đăng ký mở tài khoản pháp nhân đúng không ạ. Anh đã mang giấy tờ chưa?)* |
| Đại | はい、<ruby>登記<rt>とうき</rt></ruby><ruby>事項<rt>じこう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>定款<rt>ていかん</rt></ruby>、<ruby>印鑑証明書<rt>いんかんしょうめいしょ</rt></ruby>、<ruby>代表者<rt>だいひょうしゃ</rt></ruby><ruby>身分証<rt>みぶんしょう</rt></ruby>、<ruby>事業<rt>じぎょう</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>いたしました。<br>*(Có ạ, em đã chuẩn bị giấy chứng nhận đăng ký, điều lệ, chứng nhận con dấu, ID người đại diện, kế hoạch kinh doanh.)* |
| Watanabe | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>事業<rt>じぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>を<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Hoàn hảo. Em giải thích ngắn nội dung kinh doanh được không?)* |
| Đại | はい。ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリの<ruby>開発<rt>かいはつ</rt></ruby>と<ruby>運営<rt>うんえい</rt></ruby>です。AI を<ruby>使<rt>つか</rt></ruby>った<ruby>個別<rt>こべつ</rt></ruby><ruby>適応型<rt>てきおうがた</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>サービスです。<br>*(Vâng. Phát triển và vận hành app học tiếng Nhật cho người Việt. Dịch vụ học thích ứng cá nhân hoá dùng AI.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしいですね。VC からの<ruby>出資<rt>しゅっし</rt></ruby>もあるとのことで、<ruby>初期<rt>しょき</rt></ruby><ruby>入金<rt>にゅうきん</rt></ruby><ruby>予定<rt>よてい</rt></ruby><ruby>額<rt>がく</rt></ruby>はいくらでしょうか?<br>*(Tuyệt vời. Có VC đầu tư, vậy số tiền dự kiến nộp ban đầu là bao nhiêu ạ?)* |
| Đại | ¥31M です。Anri、DG <ruby>第一<rt>だいいち</rt></ruby>、トニーさんからの<ruby>合計<rt>ごうけい</rt></ruby>です。<br>*(¥31M. Tổng từ Anri, DG Daiichi, và Tony.)* |
| Watanabe | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>審査<rt>しんさ</rt></ruby>は 2 <ruby>週間<rt>しゅうかん</rt></ruby>ほどかかります。<br>*(Em rõ. Thẩm định khoảng 2 tuần.)* |
| Đại | よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mong anh giúp.)* |

---

## Tình huống 11 — Setup payroll SmartHR · 25/1 14:00, WeWork

*3 cofounder ngồi ở 3 bàn liền nhau. Đại share màn hình SmartHR.*

| Vai | Lời thoại |
|---|---|
| Đại | SmartHR で<ruby>給与<rt>きゅうよ</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>と<ruby>社会保険<rt>しゃかいほけん</rt></ruby>を<ruby>一括管理<rt>いっかつかんり</rt></ruby>します。3<ruby>人<rt>にん</rt></ruby>の<ruby>給与<rt>きゅうよ</rt></ruby><ruby>設定<rt>せってい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Dùng SmartHR để quản lý lương + bảo hiểm xã hội thống nhất. Xác nhận setup lương 3 người.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby> CEO ¥3M、トゥアン CMO ¥1.5M、アイコ CDO ¥1.5M、6 ヶ<ruby>月後<rt>げつご</rt></ruby> CEO ¥4M / CMO ¥3M / CDO ¥3.5M。<br>*(Anh CEO ¥3M, Tuấn CMO ¥1.5M, Aiko CDO ¥1.5M, sau 6 tháng CEO ¥4M / CMO ¥3M / CDO ¥3.5M.)* |
| Tuấn | <ruby>厚生年金<rt>こうせいねんきん</rt></ruby>と<ruby>健康保険<rt>けんこうほけん</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby><ruby>側<rt>がわ</rt></ruby>でどれくらい<ruby>負担<rt>ふたん</rt></ruby>?<br>*(Phía công ty trả lương hưu + bảo hiểm sức khoẻ khoảng bao nhiêu?)* |
| Đại | <ruby>会社<rt>かいしゃ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>は<ruby>給与<rt>きゅうよ</rt></ruby>の<ruby>約<rt>やく</rt></ruby> 15%。3<ruby>人<rt>にん</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>合計<rt>ごうけい</rt></ruby>で<ruby>月<rt>つき</rt></ruby>¥75,000<ruby>追加<rt>ついか</rt></ruby>コスト。<br>*(Phần công ty trả khoảng 15% lương. Tổng 3 người thêm ¥75,000/tháng.)* |
| Aiko | burn rate <ruby>計算<rt>けいさん</rt></ruby>に<ruby>含<rt>ふく</rt></ruby>まれてる?<br>*(Đã tính vào burn rate chưa?)* |
| Đại | <ruby>含<rt>ふく</rt></ruby>まれてる。<ruby>月<rt>つき</rt></ruby>¥1.4M burn(<ruby>初期<rt>しょき</rt></ruby> 6 ヶ<ruby>月<rt>げつ</rt></ruby>)、その<ruby>後<rt>ご</rt></ruby>¥1.7M。runway は¥31M ÷ <ruby>平均<rt>へいきん</rt></ruby>¥1.55M ≒ 20 ヶ<ruby>月<rt>げつ</rt></ruby>。<br>*(Đã. Burn ¥1.4M/tháng 6 tháng đầu, sau đó ¥1.7M. Runway = ¥31M ÷ trung bình ¥1.55M ≒ 20 tháng.)* |
| Tuấn | 20 ヶ<ruby>月<rt>げつ</rt></ruby><ruby>以内<rt>いない</rt></ruby>に Series A、または<ruby>黒字化<rt>くろじか</rt></ruby>。<br>*(Trong 20 tháng phải Series A hoặc có lãi.)* |
| Đại | その<ruby>通<rt>とお</rt></ruby>り。<br>*(Đúng vậy.)* |

---

## Tình huống 12 — Tony gọi điện chúc mừng · 28/1 20:00

*Tony (homestay sách 19-20, angel investor) gọi từ Anjō Aichi.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben) ダイ!<ruby>法人<rt>ほうじん</rt></ruby><ruby>設立<rt>せつりつ</rt></ruby>おめでとうさん!<br>*(Đại! Chúc mừng thành lập pháp nhân!)* |
| Đại | トニーさん、ありがとうございます!convertible noteのおかげで<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Tony-san, em cảm ơn nhiều! Convertible note của anh đã giúp em rất nhiều.)* |
| Tony | (Osaka-ben) ¥1M なんて<ruby>少<rt>すく</rt></ruby>ない<ruby>額<rt>がく</rt></ruby>やけど、<ruby>気持<rt>きも</rt></ruby>ちの<ruby>問題<rt>もんだい</rt></ruby>や。<ruby>愛知<rt>あいち</rt></ruby>のおっさんからや。<br>*(¥1M nhỏ thôi, nhưng là tấm lòng. Từ ông già Aichi.)* |
| Đại | いえ、<ruby>金額<rt>きんがく</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>じゃないです。トニーさんが Hizashi を<ruby>信<rt>しん</rt></ruby>じてくれることが<ruby>嬉<rt>うれ</rt></ruby>しいんです。<br>*(Không, không phải vấn đề tiền. Em vui vì Tony tin Hizashi.)* |
| Tony | (Osaka-ben) <ruby>頑張<rt>がんば</rt></ruby>りや!ユミも「ダイ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か」って<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>くわ。<br>*(Cố gắng nhé! Yumi cũng hỏi "Đại có ổn không" mỗi ngày.)* |
| Đại | ユミさんにもよろしくお<ruby>伝<rt>つた</rt></ruby>えください。<ruby>近<rt>ちか</rt></ruby>いうちに WeWork に<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>てくださいね。<br>*(Cho em gửi lời chào Yumi-san. Hôm nào lên WeWork chơi nhé.)* |
| Tony | (Osaka-ben) <ruby>春<rt>はる</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>くわ!<br>*(Mùa xuân chắc chắn đi!)* |

---

## Tình huống 13 — Cảnh tiếng Việt cuối chương · 30/1 22:00, gọi bố mẹ Hà Nội

*Đại ngồi ở WeWork muộn, gọi LINE video về Hà Nội. Bố mẹ đang ăn tối ở nhà.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Bố mẹ ơi! Con báo tin lớn. Hizashi Inc thành lập rồi! |
| Mẹ | (VN) Trời ơi con! Lập công ty thật á? Nghe ghê quá. |
| Bố | (VN) Công ty cổ phần đúng không con? Tiếng Nhật gọi là gì? |
| Đại | (VN) 株式会社 — Kabushiki Kaisha, viết tắt KK. Tương đương "joint-stock company". |
| Bố | (VN) Vốn điều lệ bao nhiêu? |
| Đại | (VN) ¥5M, tức khoảng 800 triệu đồng. Nhưng vốn thực có ¥31M, vì có nhà đầu tư bơm vào. |
| Mẹ | (VN) ¥31M là... |
| Đại | (VN) Khoảng 5 tỷ đồng. Anri ¥25M, DG ¥5M, Tony ¥1M. |
| Mẹ | (VN) Trời ơi 5 tỷ! Mẹ nuôi con 25 năm cũng không thấy số tiền lớn thế. |
| Đại | (VN) Mẹ đừng vui sớm. Tiền đó là của công ty, không phải của con. Con vẫn lương ¥3M/năm thôi, bằng nửa lương thị trường. |
| Bố | (VN) Bố hiểu. Tiền VC là tiền đi mượn dài hạn, đổi bằng cổ phần. Bố đọc Nikkei rồi. |
| Đại | (VN) Bố đọc Nikkei á? Bố biết tiếng Nhật à? |
| Bố | (VN) Đọc bản dịch chứ. Con tưởng bố quê mùa lắm hả. |
| Mẹ | (VN) Thôi, hôm nào con với Mai về Hà Nội nhé. Mẹ muốn ôm Hana. |
| Đại | (VN) Tháng 3 con tốt nghiệp xong, tháng 4 cả nhà về 1 tuần. Bố mẹ có thể sang Nhật dự lễ tốt nghiệp con không? |
| Bố | (VN) Bố mẹ tính rồi. Visa ngắn hạn, sang 2 tuần. Đã xin nghỉ phép. |
| Đại | (VN) Tuyệt vời! Con mong gặp bố mẹ. |
| Mẹ | (VN) Con ngủ sớm nha. Mẹ thấy con gầy đi. |
| Đại | (VN) Vâng mẹ. Chào bố mẹ. |

---

## Đọng lại chương 10

Tháng 1/2030 là tháng Hizashi Inc chính thức ra đời. Đại đã: (1) ký term sheet ¥31M tại Anri Tokyo với keigo cao cấp **「ご<ruby>署名<rt>しょめい</rt></ruby>とご<ruby>捺印<rt>なついん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします」**, hỏi lại điều khoản phức tạp bằng **「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。〜というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか」** với 1x non-participating liquidation preference; (2) gặp 司法書士 Inoue-san làm thủ tục lập 株式会社, vốn điều lệ ¥5M, trụ sở WeWork Toyonaka; (3) nhận 登記事項証明書 tại 法務局 ngày 15/1; (4) đặt 3 bàn dedicated desk WeWork Senri-chuo ¥120k/tháng; (5) mở tài khoản Mizuho doanh nghiệp với mẫu **「<ruby>事業<rt>じぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>を<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただけますか」**; (6) setup payroll SmartHR + tính burn rate ¥1.55M/tháng → runway 20 tháng. Cảnh cuối Đại gọi bố mẹ Hà Nội, giải thích "VC là tiền đi mượn đổi bằng cổ phần". Bố mẹ sẽ sang Nhật dự lễ tốt nghiệp tháng 3.

> Từ vựng & mẫu câu chương này: 株式会社・法人税・法人住民税・登記事項証明書・法務局・司法書士・定款・発起人・印鑑証明書・資本金・取締役・term sheet・lead investor・co-investor・convertible note・discount rate・valuation cap・1x non-participating liquidation preference・preferred share・post-money・board observer・burn rate・runway・厚生年金・健康保険・ご署名・ご捺印・〜というのは具体的にどういう意味でしょうか・承知いたしました・誠にありがとうございます

## Bí quyết chương

- **Keigo investor 3 tầng**: 「<ruby>誠<rt>まこと</rt></ruby>にありがとうございます」 + 「<ruby>承知<rt>しょうち</rt></ruby>いたしました」 + cúi 45 độ. Học từ Sato-san Anri.
- **Hỏi lại không sĩ diện**: Liquidation preference rất khó. Đại hỏi thẳng, Sato-san giải thích vui vẻ. Im lặng sai term = founder mất quyền.
- **Thuật ngữ VC giữ EN**: term sheet, valuation, equity, dilution, convertible note, runway, burn rate. Nhưng vẫn bọc JP đầy đủ xung quanh.
- **資本金 ¥5M chuẩn**: Dưới ¥10M để miễn thuế tiêu dùng 2 năm đầu, trên ¥1M để giữ uy tín với đối tác.
- **法人住民税 均等割 ¥70,000/năm**: Lỗ vẫn nộp. Founder mới cần biết để không bị bất ngờ năm đầu.
- **Tony Osaka-ben gọi điện**: Angel investor không phải chỉ tiền, là tấm lòng. ¥1M là "気持ち".

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 投資 | とうし | ĐẦU TƯ | đầu tư |
| 総額 | そうがく | TỔNG NGẠCH | tổng số |
| 内訳 | うちわけ | NỘI DỊCH | chi tiết phân bổ |
| 売却 | ばいきゃく | MẠI KHƯỚC | bán đi |
| 回収 | かいしゅう | HỒI THU | thu lại |
| 普通株 | ふつうかぶ | PHỔ THÔNG CHU | cổ phần thường |
| 受け取る | うけとる | THỤ THỦ | nhận |
| 有利 | ゆうり | HỮU LỢI | có lợi |
| 不利 | ふり | BẤT LỢI | bất lợi |
| 捺印 | なついん | NẠI ẤN | đóng dấu |
| 株式会社 | かぶしきがいしゃ | CHU THỨC HỘI XÃ | công ty cổ phần |
| 手続き | てつづき | THỦ TỤC TỤC | thủ tục |
| 定款 | ていかん | ĐỊNH KHOẢN | điều lệ |
| 発起人 | ほっきにん | PHÁT KHỞI NHÂN | sáng lập viên |
| 同意書 | どういしょ | ĐỒNG Ý THƯ | giấy đồng thuận |
| 資本金 | しほんきん | TƯ BẢN KIM | vốn điều lệ |
| 払込み | はらいこみ | PHẤT VÀO | nộp tiền |
| 証明 | しょうめい | CHỨNG MINH | chứng minh |
| 印鑑証明書 | いんかんしょうめいしょ | ẤN GIÁM CHỨNG MINH THƯ | giấy chứng nhận dấu |
| 本店 | ほんてん | BẢN ĐIỂM | trụ sở chính |
| 所在地 | しょざいち | SỞ TẠI ĐỊA | địa điểm |
| 登記 | とうき | ĐĂNG KÝ | đăng ký pháp nhân |
| 加入 | かにゅう | GIA NHẬP | tham gia |
| 取引先 | とりひきさき | THỦ DẪN TIÊN | đối tác |
| 信用 | しんよう | TÍN DỤNG | uy tín |
| 一般的 | いっぱんてき | NHẤT BAN ĐÍCH | thông thường |
| 消費税 | しょうひぜい | TIÊU PHÍ THUẾ | thuế tiêu dùng |
| 免税 | めんぜい | MIỄN THUẾ | miễn thuế |
| 未満 | みまん | VỊ MÃN | dưới |
| 法人税 | ほうじんぜい | PHÁP NHÂN THUẾ | thuế pháp nhân |
| 中小企業 | ちゅうしょうきぎょう | TRUNG TIỂU XÍ NGHIỆP | doanh nghiệp vừa nhỏ |
| 実効税率 | じっこうぜいりつ | THỰC HIỆU THUẾ SUẤT | thuế suất hiệu lực |
| 初年度 | しょねんど | SƠ NIÊN ĐỘ | năm đầu |
| 赤字 | あかじ | XÍCH TỰ | lỗ |
| 法人住民税 | ほうじんじゅうみんぜい | PHÁP NHÂN TRỤ DÂN THUẾ | thuế cư trú pháp nhân |
| 均等割 | きんとうわり | QUÂN ĐẲNG CÁT | phần định mức |
| 月額 | げつがく | NGUYỆT NGẠCH | số tiền hàng tháng |
| 郵便 | ゆうびん | BƯU TIỆN | bưu điện |
| 受取 | うけとり | THỤ THỦ | nhận |
| 内装 | ないそう | NỘI TRANG | nội thất |
| 装飾 | そうしょく | TRANG SỨC | trang trí |
| 釘打ち | くぎうち | ĐINH ĐẢ | đóng đinh |
| 禁止 | きんし | CẤM CHỈ | cấm |
| 振込 | ふりこみ | CHẤN VÀO | chuyển khoản |
| 登記事項証明書 | とうきじこうしょうめいしょ | ĐĂNG KÝ SỰ HẠNG CHỨNG MINH THƯ | giấy chứng nhận đăng ký |
| 法務局 | ほうむきょく | PHÁP VỤ CỤC | cục pháp vụ |
| 誕生 | たんじょう | ĐẢN SINH | ra đời |
| 開設 | かいせつ | KHAI THIẾT | mở (tài khoản) |
| 書類 | しょるい | THƯ LOẠI | giấy tờ |
| 代表者 | だいひょうしゃ | ĐẠI BIỂU GIẢ | người đại diện |
| 身分証 | みぶんしょう | THÂN PHẬN CHỨNG | giấy tờ tuỳ thân |
| 事業計画書 | じぎょうけいかくしょ | SỰ NGHIỆP KẾ HOẠCH THƯ | kế hoạch kinh doanh |
| 内容 | ないよう | NỘI DUNG | nội dung |
| 個別 | こべつ | CÁ BIỆT | riêng |
| 運営 | うんえい | VẬN DOANH | vận hành |
| 出資 | しゅっし | XUẤT TƯ | góp vốn |
| 入金 | にゅうきん | NHẬP KIM | nộp tiền vào |
| 審査 | しんさ | THẨM SÁT | thẩm định |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 一括管理 | いっかつかんり | NHẤT QUÁT QUẢN LÝ | quản lý thống nhất |
| 厚生年金 | こうせいねんきん | HẬU SINH NIÊN KIM | lương hưu |
| 健康保険 | けんこうほけん | KIỆN KHANG BẢO HIỂM | bảo hiểm sức khoẻ |
| 負担 | ふたん | PHỤ ĐẢM | gánh, chịu |
| 黒字化 | くろじか | HẮC TỰ HOÁ | chuyển thành lãi |
| 気持ち | きもち | KHÍ TRÌ | tấm lòng |
| 金額 | きんがく | KIM NGẠCH | số tiền |
| 信じる | しんじる | TÍN | tin |
| 伝える | つたえる | TRUYỀN | truyền đạt |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000011, 800000024, NULL, 'markdown_book', 'T11. 卒論 defense S grade. Mai+Hana support (卒論発表)', '# Sách sinh viên Đại học Osaka · T11. 卒論 defense S grade. Mai+Hana support (卒論発表)

> **Mục tiêu nhân vật:** Đại 25 tuổi, 14/2/2030 (Valentine). Học các mẫu hội thoại tiếng Nhật trong buổi bảo vệ luận văn: (1) Mở bài presentation học thuật, (2) Trả lời câu hỏi giám khảo (Q&A) bằng keigo chuẩn, (3) Hỏi lại khi câu hỏi chưa rõ **「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」**, (4) Phân biệt 学術 vs 起業 trong câu trả lời, (5) Cảm ơn thầy/giám khảo sau khi nhận điểm, (6) Cảnh tiếng Việt cuối — chia sẻ với Mai và bố mẹ về điểm S.

---

## Bối cảnh

14/2/2030 (Valentine!). Đại bảo vệ 卒論 (graduation thesis) tại Inoue Lab — ĐH Osaka, 基礎工学部 情報科学科. Luận văn: "Hizashi: An Adaptive Japanese Language Learning System for Vietnamese Speakers Using LLM-based Tutoring" — 32.000 từ, 65 trang, 8 chương. Hội đồng 3 giám khảo: Inoue-sensei (chủ tọa, lab supervisor), GS Kyoto U Tanaka, GS Tokyo Tech Suzuki. Phiên công khai 30 phút present + 30 phút Q&A. Mai (vợ) + Hana (19 tháng) + cohort đến cổ vũ. Chương này tập trung mẫu Q&A học thuật + keigo nhận điểm.

---

## Tình huống 1 — Văn phòng Inoue Lab · 13/2 17:00, dry run cuối với supervisor

*Đại trình bày thử 30 phút cho Inoue-sensei. Inoue chỉ slide quan trọng.*

| Vai | Lời thoại |
|---|---|
| Inoue | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさま。スライド 30 <ruby>枚<rt>まい</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて、<ruby>3<rt>みっ</rt></ruby>つアドバイスがあります。<br>*(Đại-san, em vất vả rồi. Đã xem hết 30 slide. Hướng tới ngày mai, tôi có 3 lời khuyên.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong thầy chỉ dẫn.)* |
| Inoue | <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>導入<rt>どうにゅう</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>はもう<ruby>少<rt>すこ</rt></ruby>し<ruby>短<rt>みじか</rt></ruby>く。3 <ruby>分<rt>ぷん</rt></ruby><ruby>以内<rt>いない</rt></ruby>で<ruby>研究<rt>けんきゅう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ること。<br>*(Thứ nhất: Phần mở đầu rút ngắn hơn. Trong 3 phút phải vào động cơ nghiên cứu.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ.)* |
| Inoue | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:Q&A で<ruby>分<rt>わ</rt></ruby>からない<ruby>質問<rt>しつもん</rt></ruby>が<ruby>来<rt>き</rt></ruby>たら、<ruby>必<rt>かなら</rt></ruby>ず「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」と<ruby>聞<rt>き</rt></ruby>き<ruby>直<rt>なお</rt></ruby>すこと。<ruby>適当<rt>てきとう</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危険<rt>きけん</rt></ruby>です。<br>*(Thứ hai: Q&A khi không hiểu, phải hỏi lại bằng "Xin lỗi, cho em nghe lại được không". Trả lời bừa là nguy hiểm nhất.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Em hiểu. Thứ ba là gì ạ?)* |
| Inoue | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:Hizashi Inc の<ruby>話<rt>はなし</rt></ruby>は<ruby>聞<rt>き</rt></ruby>かれたら<ruby>答<rt>こた</rt></ruby>える、<ruby>聞<rt>き</rt></ruby>かれなければ<ruby>触<rt>ふ</rt></ruby>れない。<ruby>学術<rt>がくじゅつ</rt></ruby>の<ruby>場<rt>ば</rt></ruby>です。<br>*(Thứ ba: Chuyện Hizashi Inc, hỏi mới đáp, không hỏi đừng nhắc. Đây là buổi học thuật.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Em rõ. Cảm ơn thầy hôm nay.)* |

---

## Tình huống 2 — Phòng họp lab · 14/2 08:50, trước khi vào phòng defense

*Đại đeo cà vạt navy, mặc vest. Mai đang cầm Hana ở ghế chờ. Cohort Yamato + Aiko + Lin Wei + Rajesh đến cổ vũ.*

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ!ファイト!<br>*(Đại! Cố lên!)* |
| Aiko | <ruby>緊張<rt>きんちょう</rt></ruby>してる?<br>*(Anh có run không?)* |
| Đại | <ruby>少<rt>すこ</rt></ruby>しね。でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。30<ruby>回<rt>かい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>した。<br>*(Hơi hơi. Nhưng không sao. Anh đã luyện hơn 30 lần.)* |
| Lin Wei | (English) Dai, you got this!<br>*(Đại, em làm được!)* |
| Mai | (VN, hôn má Đại) Anh ơi! Em ngồi hàng 2 nhé. Hana ngủ rồi. |
| Đại | (VN) Em yên tâm. Anh nhìn em sẽ vững. |
| Inoue | (mở cửa) グエンさん、<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Đại-san, sẵn sàng chưa?)* |
| Đại | はい、<ruby>準備<rt>じゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Vâng, em đã sẵn sàng.)* |

---

## Tình huống 3 — Phòng defense · 09:00, Inoue mở phiên + Đại mở bài

*Phòng 50 chỗ, đầy. 3 giám khảo bàn đầu. Hàng 2 có Mai+Hana+cohort. Sau đó là 30 sinh viên lab tới quan sát.*

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>本日<rt>ほんじつ</rt></ruby>はグエン・ヴァン・ダイ<ruby>君<rt>くん</rt></ruby>の<ruby>卒業<rt>そつぎょう</rt></ruby><ruby>論文<rt>ろんぶん</rt></ruby><ruby>公聴会<rt>こうちょうかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>主査<rt>しゅさ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby><ruby>井上<rt>いのうえ</rt></ruby>、<ruby>副査<rt>ふくさ</rt></ruby>は<ruby>京都大学<rt>きょうとだいがく</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby><ruby>教授<rt>きょうじゅ</rt></ruby>と<ruby>東京工業大学<rt>とうきょうこうぎょうだいがく</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby><ruby>教授<rt>きょうじゅ</rt></ruby>です。<br>*(Hôm nay bắt đầu buổi bảo vệ luận văn của Đại. Chủ tịch là tôi - Inoue, phó là GS Tanaka ĐH Kyoto và GS Suzuki Tokyo Tech.)* |
| Đại | (đứng cúi chào 30 độ) おはようございます。グエン・ヴァン・ダイです。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Chào buổi sáng. Em là Nguyễn Văn Đại. Mong các thầy hôm nay.)* |
| Đại | <ruby>本研究<rt>ほんけんきゅう</rt></ruby>のタイトルは「Hizashi:ベトナム<ruby>語話者<rt>ごわしゃ</rt></ruby>のための LLM<ruby>型<rt>がた</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby><ruby>適応<rt>てきおう</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システム」です。<br>*(Đề tài nghiên cứu là "Hizashi: Hệ thống học tiếng Nhật thích ứng dùng LLM cho người Việt".)* |
| Đại | <ruby>研究<rt>けんきゅう</rt></ruby><ruby>動機<rt>どうき</rt></ruby>:<ruby>在日<rt>ざいにち</rt></ruby>ベトナム<ruby>人<rt>じん</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby> 50 <ruby>万人<rt>まんにん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。N5-N3 までの<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>に<ruby>適応<rt>てきおう</rt></ruby>した<ruby>教材<rt>きょうざい</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>しています。<br>*(Động cơ: Hơn 500.000 người Việt ở Nhật. Thiếu giáo trình thích ứng cho học viên N5-N3.)* |

---

## Tình huống 4 — Q1 từ Inoue · 09:35, mở rộng đối tượng

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>質問<rt>しつもん</rt></ruby> 1:<ruby>本<rt>ほん</rt></ruby>システムはベトナム<ruby>語話者<rt>ごわしゃ</rt></ruby><ruby>限定<rt>げんてい</rt></ruby>ですが、<ruby>非<rt>ひ</rt></ruby>ベトナム<ruby>語話者<rt>ごわしゃ</rt></ruby>への<ruby>展開<rt>てんかい</rt></ruby><ruby>可能性<rt>かのうせい</rt></ruby>はどうお<ruby>考<rt>かんが</rt></ruby>えですか?<br>*(Câu hỏi 1: Hệ thống hiện giới hạn người Việt. Anh nghĩ thế nào về khả năng mở rộng cho người không nói tiếng Việt?)* |
| Đại | ご<ruby>質問<rt>しつもん</rt></ruby>ありがとうございます。プロンプトテンプレートは<ruby>母語<rt>ぼご</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>と<ruby>言語<rt>げんご</rt></ruby><ruby>非依存<rt>ひいぞん</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>分離<rt>ぶんり</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>しています。<br>*(Cảm ơn câu hỏi. Prompt template được thiết kế tách phần phụ thuộc tiếng mẹ đẻ và phần không phụ thuộc ngôn ngữ.)* |
| Đại | <ruby>具体的<rt>ぐたいてき</rt></ruby>には、インドネシア<ruby>語<rt>ご</rt></ruby>、フィリピン<ruby>語<rt>ご</rt></ruby>、タイ<ruby>語話者<rt>ごわしゃ</rt></ruby>への<ruby>展開<rt>てんかい</rt></ruby>を 2031 <ruby>年<rt>ねん</rt></ruby>に<ruby>予定<rt>よてい</rt></ruby>しております。<br>*(Cụ thể, dự kiến mở rộng cho người Indo, Phil, Thái vào 2031.)* |
| Đại | <ruby>言語<rt>げんご</rt></ruby><ruby>非依存<rt>ひいぞん</rt></ruby>の<ruby>核<rt>かく</rt></ruby><ruby>機能<rt>きのう</rt></ruby>:SRS スケジューラ、CEFR <ruby>難易度<rt>なんいど</rt></ruby><ruby>推定<rt>すいてい</rt></ruby>、<ruby>誤答<rt>ごとう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>。<ruby>母語<rt>ぼご</rt></ruby><ruby>依存<rt>いぞん</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>:<ruby>対比<rt>たいひ</rt></ruby><ruby>文法<rt>ぶんぽう</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>と<ruby>文化<rt>ぶんか</rt></ruby><ruby>背景<rt>はいけい</rt></ruby><ruby>例<rt>れい</rt></ruby>。<br>*(Lõi không phụ thuộc ngôn ngữ: SRS scheduler, ước lượng độ khó CEFR, phân tích lỗi. Phần phụ thuộc: ngữ pháp đối chiếu + ví dụ văn hoá.)* |
| Inoue | <ruby>明確<rt>めいかく</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>でした。ありがとうございます。<br>*(Câu trả lời rõ ràng. Cảm ơn.)* |

---

## Tình huống 5 — Q2 từ GS Tanaka · 09:42, hỏi lại không hiểu

*GS Tanaka nói rất nhanh, accent Kansai pha học thuật.*

| Vai | Lời thoại |
|---|---|
| GS Tanaka | <ruby>質問<rt>しつもん</rt></ruby> 2:n=100 のユーザー<ruby>調査<rt>ちょうさ</rt></ruby>で、<ruby>統計<rt>とうけい</rt></ruby><ruby>的<rt>てき</rt></ruby><ruby>有意性<rt>ゆういせい</rt></ruby>は<ruby>確保<rt>かくほ</rt></ruby>できていますか?<ruby>特<rt>とく</rt></ruby>に retention<ruby>差<rt>さ</rt></ruby> 10%の<ruby>効果量<rt>こうかりょう</rt></ruby>に<ruby>対<rt>たい</rt></ruby>する<ruby>検定力<rt>けんていりょく</rt></ruby>はどう<ruby>設計<rt>せっけい</rt></ruby>しましたか?<br>*(Câu 2: Khảo sát n=100, có đảm bảo ý nghĩa thống kê không? Đặc biệt power đối với effect size 10% retention diff được thiết kế thế nào?)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>質問<rt>しつもん</rt></ruby>の<ruby>後半<rt>こうはん</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできますでしょうか?<br>*(Xin lỗi thầy, phần sau câu hỏi cho em nghe lại được không ạ?)* |
| GS Tanaka | はい。10%の retention<ruby>差<rt>さ</rt></ruby>を<ruby>検出<rt>けんしゅつ</rt></ruby>するための<ruby>標本数<rt>ひょうほんすう</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>(power analysis)について<ruby>聞<rt>き</rt></ruby>いています。<br>*(Vâng. Tôi hỏi về tính toán cỡ mẫu (power analysis) để phát hiện chênh lệch retention 10%.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>事前<rt>じぜん</rt></ruby>の power analysis では、α=0.05、<ruby>検定力<rt>けんていりょく</rt></ruby> 1-β=0.80、<ruby>効果量<rt>こうかりょう</rt></ruby> Cohen''s h=0.2 を<ruby>想定<rt>そうてい</rt></ruby>し、<ruby>必要<rt>ひつよう</rt></ruby><ruby>標本数<rt>ひょうほんすう</rt></ruby>は 1 <ruby>群<rt>ぐん</rt></ruby> 196 <ruby>名<rt>めい</rt></ruby>と<ruby>算出<rt>さんしゅつ</rt></ruby>されました。<br>*(Em rõ. Power analysis trước nghiên cứu với α=0.05, power 1-β=0.80, effect size Cohen''s h=0.2, tính ra cần 196 người/nhóm.)* |
| Đại | <ruby>本研究<rt>ほんけんきゅう</rt></ruby>では within-subject <ruby>設計<rt>せっけい</rt></ruby>を<ruby>採用<rt>さいよう</rt></ruby>し、<ruby>同一<rt>どういつ</rt></ruby>ユーザーの 2 <ruby>群<rt>ぐん</rt></ruby><ruby>期間<rt>きかん</rt></ruby><ruby>比較<rt>ひかく</rt></ruby>(<ruby>従来<rt>じゅうらい</rt></ruby><ruby>教材<rt>きょうざい</rt></ruby> 4 <ruby>週<rt>しゅう</rt></ruby> vs Hizashi 4 <ruby>週<rt>しゅう</rt></ruby>)としました。これにより、n=100 でも<ruby>同等<rt>どうとう</rt></ruby>の<ruby>検定力<rt>けんていりょく</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>しています。<br>*(Nghiên cứu này dùng within-subject design, so sánh 2 giai đoạn cùng user (giáo trình cũ 4 tuần vs Hizashi 4 tuần). Nhờ vậy n=100 vẫn đảm bảo power tương đương.)* |
| GS Tanaka | <ruby>納得<rt>なっとく</rt></ruby>しました。<br>*(Tôi hiểu rồi.)* |

---

## Tình huống 6 — Q3 từ GS Suzuki · 09:50, điểm mới so với research trước

| Vai | Lời thoại |
|---|---|
| GS Suzuki | <ruby>質問<rt>しつもん</rt></ruby> 3:LLM <ruby>型<rt>がた</rt></ruby><ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムは Duolingo Max や ChatGPT Plus <ruby>等<rt>とう</rt></ruby>、<ruby>既存<rt>きそん</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>・<ruby>商用<rt>しょうよう</rt></ruby>サービスが<ruby>存在<rt>そんざい</rt></ruby>します。<ruby>本研究<rt>ほんけんきゅう</rt></ruby>の<ruby>新規性<rt>しんきせい</rt></ruby>はどこにあるのでしょうか?<br>*(Câu 3: LLM-based language learning đã có Duolingo Max, ChatGPT Plus... Điểm mới của nghiên cứu này ở đâu?)* |
| Đại | <ruby>新規性<rt>しんきせい</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあります。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:ベトナム<ruby>語<rt>ご</rt></ruby><ruby>母語話者<rt>ぼごわしゃ</rt></ruby>の<ruby>誤答<rt>ごとう</rt></ruby>パターン(<ruby>助詞<rt>じょし</rt></ruby>「は/が」、<ruby>動詞活用<rt>どうしかつよう</rt></ruby>、<ruby>長音<rt>ちょうおん</rt></ruby>)を<ruby>体系的<rt>たいけいてき</rt></ruby>に<ruby>抽出<rt>ちゅうしゅつ</rt></ruby>し、データセット<ruby>化<rt>か</rt></ruby>した<ruby>点<rt>てん</rt></ruby>です。<br>*(3 điểm mới. Thứ nhất: Trích xuất có hệ thống các pattern lỗi của người Việt (trợ từ wa/ga, chia động từ, trường âm) và xây dataset.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:プロンプトに<ruby>母語<rt>ぼご</rt></ruby><ruby>対比<rt>たいひ</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>(<ruby>例<rt>たと</rt></ruby>えば「ベトナム<ruby>語<rt>ご</rt></ruby>の『đã』は<ruby>日本語<rt>にほんご</rt></ruby>の『〜た』」)を<ruby>組<rt>く</rt></ruby>み<ruby>込<rt>こ</rt></ruby>むことで、<ruby>説明<rt>せつめい</rt></ruby><ruby>理解度<rt>りかいど</rt></ruby>を<ruby>22<rt>にじゅうに</rt></ruby>%<ruby>向上<rt>こうじょう</rt></ruby>させた<ruby>点<rt>てん</rt></ruby>。<br>*(Thứ hai: Nhúng giải thích đối chiếu tiếng mẹ đẻ vào prompt (vd "đã" tiếng Việt = "〜た" tiếng Nhật), tăng 22% độ hiểu.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:LLM tutor、SRS、<ruby>読解<rt>どっかい</rt></ruby>、<ruby>模擬<rt>もぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>統合<rt>とうごう</rt></ruby>した<ruby>完全<rt>かんぜん</rt></ruby>パイプラインとして<ruby>提示<rt>ていじ</rt></ruby>した<ruby>点<rt>てん</rt></ruby>です。<ruby>既存<rt>きそん</rt></ruby><ruby>研究<rt>けんきゅう</rt></ruby>は<ruby>個別<rt>こべつ</rt></ruby>コンポーネントの<ruby>研究<rt>けんきゅう</rt></ruby>が<ruby>大半<rt>たいはん</rt></ruby>です。<br>*(Thứ ba: Trình bày như pipeline trọn vẹn tích hợp LLM tutor + SRS + reading + mock exam. Nghiên cứu trước chủ yếu là từng component riêng lẻ.)* |
| GS Suzuki | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>統合<rt>とうごう</rt></ruby>パイプラインの<ruby>評価<rt>ひょうか</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>は?<ruby>個別<rt>こべつ</rt></ruby>コンポーネントの<ruby>寄与<rt>きよ</rt></ruby>はどう<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けましたか?<br>*(Phương pháp đánh giá pipeline tích hợp ở điểm 3? Đóng góp từng component được tách thế nào?)* |
| Đại | ablation study を<ruby>実施<rt>じっし</rt></ruby>し、4 つのコンポーネントを 1 つずつ<ruby>除<rt>のぞ</rt></ruby>いた<ruby>条件<rt>じょうけん</rt></ruby>で retention を<ruby>測定<rt>そくてい</rt></ruby>しました。<ruby>表<rt>ひょう</rt></ruby> 3.4 に<ruby>結果<rt>けっか</rt></ruby>が<ruby>掲載<rt>けいさい</rt></ruby>されています。LLM tutor が<ruby>最大<rt>さいだい</rt></ruby><ruby>寄与<rt>きよ</rt></ruby>(<ruby>14<rt>じゅうし</rt></ruby>%)、SRS が<ruby>次<rt>つぎ</rt></ruby>(<ruby>9<rt>く</rt></ruby>%)です。<br>*(Đã làm ablation study, đo retention khi bỏ từng cái trong 4 component. Kết quả ở bảng 3.4. LLM tutor đóng góp lớn nhất (14%), SRS thứ hai (9%).)* |
| GS Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>分析<rt>ぶんせき</rt></ruby>です。<br>*(Phân tích xuất sắc.)* |

---

## Tình huống 7 — Q4 từ Inoue · 10:00, học thuật vs khởi nghiệp

| Vai | Lời thoại |
|---|---|
| Inoue | <ruby>質問<rt>しつもん</rt></ruby> 4:グエンさんは Hizashi Inc を<ruby>設立<rt>せつりつ</rt></ruby>されました。<ruby>学術<rt>がくじゅつ</rt></ruby>の<ruby>道<rt>みち</rt></ruby>と<ruby>起業<rt>きぎょう</rt></ruby>の<ruby>道<rt>みち</rt></ruby>、どちらに<ruby>軸足<rt>じくあし</rt></ruby>を<ruby>置<rt>お</rt></ruby>くお<ruby>考<rt>かんが</rt></ruby>えですか?<br>*(Câu 4: Anh đã thành lập Hizashi Inc. Học thuật hay khởi nghiệp - đặt trọng tâm vào đâu?)* |
| Đại | <ruby>現<rt>げん</rt></ruby><ruby>時点<rt>じてん</rt></ruby>では<ruby>起業<rt>きぎょう</rt></ruby>に<ruby>軸足<rt>じくあし</rt></ruby>を<ruby>置<rt>お</rt></ruby>きます。Anri Capital から¥31M の pre-seed をいただき、 1/15 に<ruby>法人<rt>ほうじん</rt></ruby><ruby>設立<rt>せつりつ</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Hiện tại em đặt trọng tâm vào khởi nghiệp. Đã nhận ¥31M pre-seed từ Anri Capital, lập pháp nhân ngày 15/1.)* |
| Đại | ただし、<ruby>学術<rt>がくじゅつ</rt></ruby>から<ruby>離<rt>はな</rt></ruby>れるわけではありません。<ruby>本研究<rt>ほんけんきゅう</rt></ruby>の<ruby>知見<rt>ちけん</rt></ruby>を IPSJ Journal に<ruby>投稿<rt>とうこう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuy nhiên không rời học thuật. Em dự định gửi paper từ nghiên cứu này lên IPSJ Journal.)* |
| Đại | <ruby>将来<rt>しょうらい</rt></ruby>、30 <ruby>歳<rt>さい</rt></ruby>を<ruby>過<rt>す</rt></ruby>ぎてから<ruby>社会人<rt>しゃかいじん</rt></ruby><ruby>博士課程<rt>はかせかてい</rt></ruby>に<ruby>進<rt>すす</rt></ruby>むことも<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れています。<br>*(Sau 30 tuổi, em cũng cân nhắc học tiến sĩ tại chức.)* |
| Inoue | <ruby>現実的<rt>げんじつてき</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi nghĩ là quyết định thực tế.)* |

---

## Tình huống 8 — Q5 từ GS Tanaka · 10:08, AI cost

| Vai | Lời thoại |
|---|---|
| GS Tanaka | <ruby>質問<rt>しつもん</rt></ruby> 5:LLM API <ruby>料金<rt>りょうきん</rt></ruby>が<ruby>今後<rt>こんご</rt></ruby><ruby>上昇<rt>じょうしょう</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>、<ruby>事業<rt>じぎょう</rt></ruby><ruby>持続<rt>じぞく</rt></ruby><ruby>可能性<rt>かのうせい</rt></ruby>はどう<ruby>確保<rt>かくほ</rt></ruby>しますか?<br>*(Câu 5: Nếu phí LLM API tăng, làm sao đảm bảo bền vững?)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つの<ruby>対策<rt>たいさく</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>しております。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>: Anthropic Claude の prompt caching を<ruby>活用<rt>かつよう</rt></ruby>し、<ruby>反復<rt>はんぷく</rt></ruby><ruby>呼出<rt>よびだし</rt></ruby>のコストを 90%<ruby>削減<rt>さくげん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Có 3 biện pháp. Thứ nhất: dùng prompt caching của Claude, giảm 90% chi phí gọi lặp.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:オープンソース LLM (LLaMA-3 70B) を fine-tune した<ruby>代替<rt>だいたい</rt></ruby>モデルを<ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>自社<rt>じしゃ</rt></ruby> AWS で<ruby>推論<rt>すいろん</rt></ruby><ruby>運用<rt>うんよう</rt></ruby>可能。<br>*(Thứ hai: Có sẵn model thay thế LLaMA-3 70B fine-tuned. Inference trên AWS riêng.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:<ruby>料金<rt>りょうきん</rt></ruby>モデルを freemium から hybrid (<ruby>月額<rt>げつがく</rt></ruby>$5 + API <ruby>従量<rt>じゅうりょう</rt></ruby><ruby>課金<rt>かきん</rt></ruby><ruby>転嫁<rt>てんか</rt></ruby>)に<ruby>移行<rt>いこう</rt></ruby>可能。<br>*(Thứ ba: Chuyển mô hình giá từ freemium sang hybrid ($5/tháng + chuyển phí API theo dung lượng).)* |
| GS Tanaka | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>事業<rt>じぎょう</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>ですが、<ruby>1<rt>いち</rt></ruby>と<ruby>2<rt>に</rt></ruby>は<ruby>技術的<rt>ぎじゅつてき</rt></ruby>に<ruby>納得<rt>なっとく</rt></ruby>しました。<br>*(Cái thứ 3 là chuyện kinh doanh, nhưng 1 và 2 thì kỹ thuật ổn.)* |

---

## Tình huống 9 — Q6 từ GS Suzuki · 10:15, data privacy

| Vai | Lời thoại |
|---|---|
| GS Suzuki | <ruby>質問<rt>しつもん</rt></ruby> 6:ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のデータ、<ruby>特<rt>とく</rt></ruby>に<ruby>誤答<rt>ごとう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>は<ruby>個人<rt>こじん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>に<ruby>該当<rt>がいとう</rt></ruby>します。GDPR と<ruby>個人情報保護法<rt>こじんじょうほうほごほう</rt></ruby>(APPI)への<ruby>対応<rt>たいおう</rt></ruby>は?<br>*(Câu 6: Dữ liệu người Việt, đặc biệt lịch sử lỗi, là thông tin cá nhân. Xử lý GDPR và APPI thế nào?)* |
| Đại | データは AWS Tokyo リージョンに<ruby>保存<rt>ほぞん</rt></ruby>。<ruby>個人<rt>こじん</rt></ruby><ruby>識別<rt>しきべつ</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>(PII) と<ruby>学習<rt>がくしゅう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>は<ruby>別<rt>べつ</rt></ruby> DB で<ruby>管理<rt>かんり</rt></ruby>し、<ruby>学習<rt>がくしゅう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>は<ruby>仮名化<rt>かめいか</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Data lưu AWS Tokyo region. PII và lịch sử học quản lý DB riêng, lịch sử học đã pseudonymize.)* |
| Đại | APPI<ruby>対応<rt>たいおう</rt></ruby>として、<ruby>利用<rt>りよう</rt></ruby><ruby>目的<rt>もくてき</rt></ruby><ruby>明示<rt>めいじ</rt></ruby>、<ruby>同意<rt>どうい</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>、<ruby>削除<rt>さくじょ</rt></ruby><ruby>請求<rt>せいきゅう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>フローを<ruby>実装<rt>じっそう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Theo APPI, em đã implement luồng nêu mục đích sử dụng, lấy consent, xử lý yêu cầu xoá.)* |
| Đại | GDPR <ruby>対応<rt>たいおう</rt></ruby>はベトナム<ruby>国内<rt>こくない</rt></ruby>ユーザーには<ruby>適用外<rt>てきようがい</rt></ruby>ですが、EU <ruby>居住<rt>きょじゅう</rt></ruby>ベトナム<ruby>人<rt>じん</rt></ruby><ruby>向<rt>む</rt></ruby>けに<ruby>同等<rt>どうとう</rt></ruby>の data portability + right to be forgotten を<ruby>実装<rt>じっそう</rt></ruby>しております。<br>*(GDPR không áp dụng cho user trong Việt Nam, nhưng cho người Việt sống EU đã implement data portability + right to be forgotten tương đương.)* |
| GS Suzuki | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>準備<rt>じゅんび</rt></ruby>ぶりです。<br>*(Tôi hiểu rồi. Chuẩn bị tuyệt vời.)* |

---

## Tình huống 10 — Closing · 10:30, Inoue tuyên bố thảo luận

| Vai | Lời thoại |
|---|---|
| Inoue | Q&A は<ruby>以上<rt>いじょう</rt></ruby>です。グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Q&A đến đây thôi. Đại-san, em đã vất vả.)* |
| Inoue | <ruby>審査<rt>しんさ</rt></ruby><ruby>委員会<rt>いいんかい</rt></ruby>は 15 <ruby>分間<rt>ふんかん</rt></ruby><ruby>別室<rt>べっしつ</rt></ruby>で<ruby>協議<rt>きょうぎ</rt></ruby>いたします。<ruby>傍聴<rt>ぼうちょう</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さまも<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Hội đồng họp riêng 15 phút. Người dự thính cũng xin đợi một chút.)* |
| Đại | (cúi chào) ありがとうございました。<br>*(Cảm ơn các thầy.)* |
| Mai | (VN, ôm Đại khi 3 giám khảo rời phòng) Anh ơi! Anh trả lời hay quá! |
| Đại | (VN, thở phào) Em! Cái câu power analysis suýt tịt. May mà anh xin hỏi lại. |
| Yamato | <ruby>完璧<rt>かんぺき</rt></ruby>!Q5 で「3 つの<ruby>対策<rt>たいさく</rt></ruby>」って<ruby>言<rt>い</rt></ruby>った<ruby>瞬間<rt>しゅんかん</rt></ruby>、スズキ<ruby>先生<rt>せんせい</rt></ruby>がうなずいてた!<br>*(Hoàn hảo! Lúc anh nói "3 biện pháp" Q5, thầy Suzuki gật đầu liền!)* |

---

## Tình huống 11 — Công bố điểm · 10:50, Inoue thông báo S

*3 giám khảo quay lại. Phòng im phăng phắc.*

| Vai | Lời thoại |
|---|---|
| Inoue | グエン・ヴァン・ダイ<ruby>君<rt>くん</rt></ruby>。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>公聴会<rt>こうちょうかい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>します。<br>*(Đại-kun. Tôi công bố kết quả buổi bảo vệ hôm nay.)* |
| Inoue | <ruby>審査<rt>しんさ</rt></ruby><ruby>委員会<rt>いいんかい</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>一致<rt>いっち</rt></ruby>で、**S <ruby>評価<rt>ひょうか</rt></ruby>** (<ruby>上位<rt>じょうい</rt></ruby> 10%) を<ruby>授<rt>さず</rt></ruby>けます。<br>*(Hội đồng nhất trí trao đánh giá S (top 10%).)* |
| Đại | (đứng cúi sâu 45 độ) <ruby>誠<rt>まこと</rt></ruby>にありがとうございます!<br>*(Em xin chân thành cảm ơn!)* |
| GS Tanaka | <ruby>私<rt>わたし</rt></ruby>が<ruby>京都<rt>きょうと</rt></ruby> U で 5 <ruby>年間<rt>ねんかん</rt></ruby><ruby>外部審査員<rt>がいぶしんさいん</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めた<ruby>中<rt>なか</rt></ruby>で、<ruby>最高<rt>さいこう</rt></ruby><ruby>水準<rt>すいじゅん</rt></ruby>の<ruby>卒論<rt>そつろん</rt></ruby>でした。<br>*(Trong 5 năm tôi làm giám khảo ngoài cho Kyoto U, đây là luận văn cử nhân chất lượng cao nhất.)* |
| GS Suzuki | IPSJ Journal への<ruby>投稿<rt>とうこう</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>く<ruby>推薦<rt>すいせん</rt></ruby>します。<ruby>必要<rt>ひつよう</rt></ruby>であれば<ruby>査読<rt>さどく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>協力<rt>きょうりょく</rt></ruby>します。<br>*(Tôi mạnh mẽ khuyến nghị submit IPSJ Journal. Cần thì tôi hỗ trợ giai đoạn peer review.)* |
| Đại | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。ぜひお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Thầy Suzuki, em cảm ơn thật sự. Em rất mong được nhờ.)* |
| Mai | (VN, đứng dậy, nước mắt) S GRADE!!! Anh ơi! |
| Hana | (vừa thức dậy) Báá! Báá! |

---

## Tình huống 12 — Hành lang lab · 11:15, ăn mừng cohort

*Đại đặt laptop xuống ghế, cohort vây quanh. Cake mochi Yamato mua sẵn.*

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ!S だ!<ruby>俺<rt>おれ</rt></ruby>たちのコホートで<ruby>初<rt>はじ</rt></ruby>めての S!<br>*(Đại! S đó! Cohort tụi mình lần đầu có S!)* |
| Aiko | おめでとう、cofounder!<br>*(Chúc mừng cofounder!)* |
| Lin Wei | (English) Daiii! IPSJ Journal next!<br>*(Đại! Tiếp theo IPSJ Journal!)* |
| Rajesh | (English) Best founder defense ever!<br>*(Bảo vệ founder hay nhất từ trước tới giờ!)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>、ありがとう。コホート 4 <ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>してる。<br>*(Mọi người ơi, cảm ơn. 4 năm cohort, anh biết ơn thật sự.)* |
| Đại | Q&A で<ruby>1<rt>ひと</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、もう<ruby>一度<rt>いちど</rt></ruby>」って<ruby>聞<rt>き</rt></ruby>き<ruby>直<rt>なお</rt></ruby>したよね。<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の dry run アドバイスが<ruby>命<rt>いのち</rt></ruby><ruby>救<rt>すく</rt></ruby>った。<br>*(Q&A có 1 chỗ anh đã hỏi lại "Xin lỗi cho em nghe lại". Dry run advice của Inoue-sensei cứu mạng.)* |
| Aiko | アシスタント<ruby>教授<rt>きょうじゅ</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いた:Inoue ラボの S は 3 <ruby>年<rt>ねん</rt></ruby>ぶりらしいよ。<br>*(Em nghe trợ lý giáo sư bảo: Inoue Lab 3 năm mới có 1 S.)* |
| Đại | (xúc động) <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>挨拶<rt>あいさつ</rt></ruby>しに<ruby>行<rt>い</rt></ruby>かないと。<br>*(Anh phải đi chào Inoue-sensei.)* |

---

## Tình huống 13 — Văn phòng Inoue · 11:30, cảm ơn supervisor

*Đại gõ cửa văn phòng Inoue. Mai và Hana đứng ngoài.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Inoue-sensei, hôm nay em xin chân thành cảm ơn.)* |
| Inoue | グエンさん、おめでとう。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Đại-san, chúc mừng. Em đã rất cố gắng.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>の dry run でのアドバイス 3 つ、<ruby>全<rt>すべ</rt></ruby>て<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<ruby>特<rt>とく</rt></ruby>に「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、もう<ruby>一度<rt>いちど</rt></ruby>」、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(3 lời khuyên dry run của thầy đều hữu ích. Đặc biệt "Xin lỗi cho em nghe lại", thật sự cứu em.)* |
| Inoue | <ruby>聞<rt>き</rt></ruby>き<ruby>直<rt>なお</rt></ruby>すことは<ruby>恥<rt>はじ</rt></ruby>ではありません。<ruby>研究者<rt>けんきゅうしゃ</rt></ruby>として<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>の<ruby>姿勢<rt>しせい</rt></ruby>です。<br>*(Hỏi lại không phải xấu hổ. Là thái độ chuẩn của nhà nghiên cứu.)* |
| Đại | <ruby>4年間<rt>よねんかん</rt></ruby>、ご<ruby>指導<rt>しどう</rt></ruby>いただき<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>として<ruby>世<rt>よ</rt></ruby>に<ruby>出<rt>で</rt></ruby>るまで<ruby>導<rt>みちび</rt></ruby>いてくださり、<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>もございません。<br>*(4 năm được thầy chỉ dẫn, em xin chân thành cảm ơn. Thầy đã dẫn dắt đến lúc Hizashi KK ra mắt thế giới, không lời nào tả hết.)* |
| Inoue | グエンさん、これからは「<ruby>先生<rt>せんせい</rt></ruby>」ではなく「<ruby>井上<rt>いのうえ</rt></ruby>さん」と<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>同<rt>おな</rt></ruby>じ<ruby>研究者<rt>けんきゅうしゃ</rt></ruby>として。<br>*(Đại-san, từ giờ đừng gọi tôi là "thầy" nữa, gọi "Inoue-san" thôi. Như đồng nghiệp nghiên cứu.)* |
| Đại | (cúi sâu) <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>い申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Em không dám. Mong thầy giúp đỡ từ nay.)* |

---

## Tình huống 14 — Cảnh tiếng Việt cuối chương · 14/2 23:00, gọi bố mẹ Hà Nội + Mai

*Căn hộ Senri-chuo. Mai đã ru Hana ngủ. Đại gọi LINE video về Hà Nội.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Bố mẹ ơi! Con đỗ S grade rồi! Top 10%! |
| Mẹ | (VN) Trời ơi con! S là cao nhất hả? |
| Đại | (VN) Cao nhất là S, sau đó A, B, C, D. S chỉ top 10%. Inoue Lab 3 năm mới có 1 S. |
| Bố | (VN) Con trai bố! Cử nhân hạng ưu! Còn paper IPSJ Journal nữa? |
| Đại | (VN) Vâng. Giám khảo Tokyo Tech khuyên submit IPSJ Journal. Bố nhớ tên IPSJ chưa? |
| Bố | (VN) Information Processing Society of Japan. Bố đọc rồi. |
| Mẹ | (VN) Bố mày đọc nhiều hơn cả mẹ. À, Mai đâu? Cho mẹ nói chuyện. |
| Mai | (VN, ghé màn hình) Mẹ ơi! Con đây. |
| Mẹ | (VN) Mai ơi, hôm nay con vất vả chăm Hana không? Để thằng Đại nó tập trung. |
| Mai | (VN) Không sao mẹ. Hana ngoan lắm. Anh Đại giỏi quá, con tự hào. |
| Bố | (VN) Tháng 3 bố mẹ sang. Vé đã đặt. Hãng JAL. |
| Đại | (VN) Bố mẹ đặt được visa chưa? |
| Mẹ | (VN) Tuần sau phỏng vấn đại sứ quán. Mẹ lo. Mẹ tiếng Nhật không biết. |
| Đại | (VN) Mẹ không cần biết tiếng Nhật đâu. Visa ngắn hạn phỏng vấn tiếng Việt. Con sẽ gọi cho ông Đăng — chú quen ở đại sứ quán — nhờ tư vấn cho mẹ. |
| Mẹ | (VN) Ừ. Mẹ tự hào về con. Mai bố mẹ kể hàng xóm. |
| Đại | (VN) Kể vừa thôi mẹ ơi. |
| Mẹ | (VN) Kể chứ! Con trai mẹ S grade ĐH Osaka, founder, paper journal! Kể cả phường! |
| Đại | (VN cười) Vâng mẹ. Bố mẹ ngủ đi nha. Hà Nội đã 9 giờ tối rồi. |
| Bố mẹ | (VN) Chúc con ngủ ngon. Hôn Hana giúp ông bà. |
| Mai | (VN, sau khi cúp máy) Anh ơi. Hôm nay là Valentine đó. |
| Đại | (VN) À đúng! Em ơi, anh xin lỗi, sáng nay đầu óc anh chỉ có defense. Mai anh đặt nhà hàng nhé. |
| Mai | (VN) Không cần. Hôm nay anh đỗ S là Valentine đẹp nhất rồi. |
| Đại | (VN) Em... |
| Mai | (VN) Đi ngủ đi anh. Mai còn 1 chương cuối — graduation day. |

---

## Đọng lại chương 11

Ngày Valentine 14/2/2030, Đại bảo vệ 卒論 thành công với điểm **S** (top 10%) tại Inoue Lab. Hội đồng 3 giám khảo nhất trí. Sáu câu Q&A: (1) mở rộng đa ngôn ngữ - tách prompt template thành language-dependent/independent; (2) power analysis Cohen''s h=0.2 + within-subject design giải thích tại sao n=100 đủ - Đại đã dùng mẫu **「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできますでしょうか」** khi không nghe rõ; (3) điểm mới 3 cái + ablation study LLM tutor 14%; (4) cân bằng học thuật/khởi nghiệp, có thể PhD tại chức sau 30 tuổi; (5) 3 đối sách AI cost (prompt caching 90%, LLaMA-3 alternative, hybrid pricing); (6) GDPR + APPI compliance đầy đủ. GS Suzuki Tokyo Tech tự đề nghị hỗ trợ submit IPSJ Journal. Inoue-sensei sau buổi defense mời Đại đổi cách xưng hô từ **「<ruby>先生<rt>せんせい</rt></ruby>」** sang **「<ruby>井上<rt>いのうえ</rt></ruby>さん」** — đồng nghiệp nghiên cứu. Cảnh cuối Đại gọi bố mẹ Hà Nội — bố biết IPSJ là gì, mẹ định kể hàng xóm. Valentine của Mai: "Hôm nay anh đỗ S là Valentine đẹp nhất rồi."

> Từ vựng & mẫu câu chương này: 卒論・公聴会・主査・副査・外部審査員・S評価・新規性・統計的有意性・power analysis・効果量・検定力・within-subject 設計・ablation study・prompt caching・APPI・個人情報保護法・仮名化・data portability・恐れ入りますが、もう一度お願いできますでしょうか・承知しました・ご質問ありがとうございます・誠にありがとうございます・ご指導いただき本当にありがとうございました・感謝の言葉もございません

## Bí quyết chương

- **Hỏi lại trong Q&A học thuật không phải xấu hổ**: Inoue-sensei dạy thẳng "聞き直すことは恥ではありません". Câu power analysis dài 2 vế, Đại không nghe rõ vế sau, hỏi lại được trả lời đầy đủ.
- **Mẫu「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いできますでしょうか」**: Lịch sự nhất khi xin nhắc lại với giáo sư.
- **Phân biệt 学術 vs 起業**: Câu trả lời Q4 cân bằng — trọng tâm khởi nghiệp nhưng không rời học thuật, mở cửa PhD tại chức 30 tuổi.
- **3-point structure**: "3 つの<ruby>対策<rt>たいさく</rt></ruby>", "<ruby>3<rt>みっ</rt></ruby>つあります" - structure trả lời học thuật chuẩn.
- **Đổi xưng hô sensei → san**: Khoảnh khắc supervisor công nhận học trò là đồng nghiệp.
- **Valentine của vợ founder**: "Hôm nay anh đỗ S là Valentine đẹp nhất rồi" - không cần hoa hồng.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 導入部分 | どうにゅうぶぶん | ĐẠO NHẬP BỘ PHẬN | phần mở đầu |
| 研究動機 | けんきゅうどうき | NGHIÊN CỨU ĐỘNG CƠ | động cơ nghiên cứu |
| 適当 | てきとう | THÍCH ĐƯƠNG | qua loa, bừa |
| 危険 | きけん | NGUY HIỂM | nguy hiểm |
| 触れる | ふれる | XÚC | chạm, nhắc |
| 学術 | がくじゅつ | HỌC THUẬT | học thuật |
| 公聴会 | こうちょうかい | CÔNG THÍNH HỘI | buổi bảo vệ công khai |
| 主査 | しゅさ | CHỦ SÁT | chủ tịch hội đồng |
| 副査 | ふくさ | PHÓ SÁT | thành viên phụ |
| 教授 | きょうじゅ | GIÁO THỤ | giáo sư |
| 在日 | ざいにち | TẠI NHẬT | tại Nhật |
| 教材 | きょうざい | GIÁO TÀI | giáo trình |
| 不足 | ふそく | BẤT TÚC | thiếu |
| 展開 | てんかい | TRIỂN KHAI | mở rộng |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 依存 | いぞん | Y TỒN | phụ thuộc |
| 非依存 | ひいぞん | PHI Y TỒN | không phụ thuộc |
| 分離 | ぶんり | PHÂN LY | tách |
| 核機能 | かくきのう | HẠCH CƠ NĂNG | tính năng lõi |
| 難易度 | なんいど | NAN DỊ ĐỘ | độ khó |
| 推定 | すいてい | THÔI ĐỊNH | ước lượng |
| 誤答 | ごとう | NGỘ ĐÁP | trả lời sai |
| 対比 | たいひ | ĐỐI TỶ | đối chiếu |
| 背景 | はいけい | BỐI CẢNH | bối cảnh |
| 明確 | めいかく | MINH XÁC | rõ ràng |
| 有意性 | ゆういせい | HỮU Ý TÍNH | ý nghĩa thống kê |
| 確保 | かくほ | XÁC BẢO | đảm bảo |
| 効果量 | こうかりょう | HIỆU QUẢ LƯỢNG | effect size |
| 検定力 | けんていりょく | KIỂM ĐỊNH LỰC | power |
| 標本数 | ひょうほんすう | TIÊU BẢN SỐ | cỡ mẫu |
| 算出 | さんしゅつ | TOÁN XUẤT | tính ra |
| 期間 | きかん | KỲ GIAN | giai đoạn |
| 比較 | ひかく | TỶ GIÁO | so sánh |
| 従来 | じゅうらい | TÒNG LAI | truyền thống |
| 同等 | どうとう | ĐỒNG ĐẲNG | tương đương |
| 納得 | なっとく | NẠP ĐẮC | hiểu thông |
| 商用 | しょうよう | THƯƠNG DỤNG | thương mại |
| 新規性 | しんきせい | TÂN QUY TÍNH | tính mới |
| 体系的 | けいとうてき | THỂ HỆ ĐÍCH | có hệ thống |
| 抽出 | ちゅうしゅつ | TRỪU XUẤT | trích xuất |
| 組み込む | くみこむ | TỔ VÀO | nhúng vào |
| 理解度 | りかいど | LÝ GIẢI ĐỘ | độ hiểu |
| 向上 | こうじょう | HƯỚNG THƯỢNG | tăng lên |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 模擬試験 | もぎしけん | MÔ NGHĨ THỬ NGHIỆM | thi thử |
| パイプライン | ぱいぷらいん | — | pipeline |
| 提示 | ていじ | ĐỀ THỊ | trình bày |
| 大半 | たいはん | ĐẠI BÁN | phần lớn |
| 寄与 | きよ | KÝ DỮ | đóng góp |
| 切り分ける | きりわける | THIẾT PHÂN | tách |
| 実施 | じっし | THỰC THI | thực hiện |
| 除く | のぞく | TRỪ | bỏ ra |
| 測定 | そくてい | TRẮC ĐỊNH | đo |
| 掲載 | けいさい | YẾT TÁI | đăng |
| 軸足 | じくあし | TRỤC TÚC | trọng tâm |
| 知見 | ちけん | TRI KIẾN | hiểu biết |
| 社会人 | しゃかいじん | XÃ HỘI NHÂN | người đi làm |
| 博士課程 | はかせかてい | BÁC SĨ KHOÁ TRÌNH | chương trình tiến sĩ |
| 視野 | しや | THỊ DÃ | tầm nhìn |
| 現実的 | げんじつてき | HIỆN THỰC ĐÍCH | thực tế |
| 料金 | りょうきん | LIỆU KIM | phí |
| 上昇 | じょうしょう | THƯỢNG THĂNG | tăng |
| 持続可能性 | じぞくかのうせい | TRÌ TỤC KHẢ NĂNG TÍNH | bền vững |
| 対策 | たいさく | ĐỐI SÁCH | biện pháp |
| 活用 | かつよう | HOẠT DỤNG | tận dụng |
| 反復 | はんぷく | PHẢN PHỤC | lặp lại |
| 呼出 | よびだし | HÔ XUẤT | gọi |
| 削減 | さくげん | TƯỚC GIẢM | giảm bớt |
| 代替 | だいたい | ĐẠI THAY | thay thế |
| 推論 | すいろん | THÔI LUẬN | suy luận, inference |
| 移行 | いこう | DI HÀNH | chuyển sang |
| 該当 | がいとう | CAI ĐƯƠNG | thuộc về |
| 個人情報保護法 | こじんじょうほうほごほう | CÁ NHÂN THÔNG TIN BẢO HỘ PHÁP | luật bảo vệ thông tin cá nhân |
| 仮名化 | かめいか | GIẢ DANH HOÁ | pseudonymize |
| 利用目的 | りようもくてき | LỢI DỤNG MỤC ĐÍCH | mục đích sử dụng |
| 明示 | めいじ | MINH THỊ | nêu rõ |
| 同意取得 | どういしゅとく | ĐỒNG Ý THỦ ĐẮC | lấy chấp thuận |
| 削除請求 | さくじょせいきゅう | TƯỚC TRỪ THỈNH CẦU | yêu cầu xoá |
| 実装 | じっそう | THỰC TRANG | triển khai |
| 適用外 | てきようがい | THÍCH DỤNG NGOẠI | ngoài phạm vi áp dụng |
| 居住 | きょじゅう | CƯ TRÚ | cư trú |
| 別室 | べっしつ | BIỆT THẤT | phòng riêng |
| 協議 | きょうぎ | HIỆP NGHỊ | thảo luận |
| 傍聴 | ぼうちょう | BÀNG THÍNH | dự thính |
| 上位 | じょうい | THƯỢNG VỊ | hạng trên |
| 授ける | さずける | THỤ | trao |
| 水準 | すいじゅん | THUỶ CHUẨN | mức |
| 推薦 | すいせん | THÔI TIẾN | khuyến nghị |
| 協力 | きょうりょく | HIỆP LỰC | hợp tác |
| 預ける | あずける | DỰ | gửi gắm |
| 子息 | しそく | TỬ TỨC | con trai (kính ngữ) |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (824000012, 800000024, NULL, 'markdown_book', 'T12. Tốt nghiệp + ngày 1 founder Hizashi (CLOSURE FULL SERIES) (卒業・Hizashi始動)', '# Sách sinh viên Đại học Osaka · T12. Tốt nghiệp + ngày 1 founder Hizashi (CLOSURE FULL SERIES) (卒業・Hizashi始動)

> **Mục tiêu nhân vật:** Đại 25 tuổi, 25-26/3/2030. Học các mẫu hội thoại tiếng Nhật trong sự kiện lớn cuối hành trình: (1) Đón gia đình từ VN tại sân bay Kansai, (2) Phát biểu valedictorian song ngữ trên sân khấu, (3) Chào hỏi 4 ông bà Hana (bố mẹ Đại + bố mẹ Mai cùng có mặt), (4) Standup ngày 1 founder + chia OKR, (5) Mời gia đình thăm văn phòng WeWork, (6) Cảnh tiếng Việt cuối — đêm Day 1 reflect kết thúc 6 năm.

---

## Bối cảnh

25/3/2030 lễ tốt nghiệp ĐH Osaka. 26/3 ngày 1 làm founder Hizashi Inc. Đại sắp 25 tuổi (sinh nhật 4/2030). Mai 25 tuổi. Hana 19 tháng. Bố mẹ Đại từ Hà Nội + bố mẹ Mai từ Hà Nội cùng sang Nhật 2 tuần (visa 短期). Tony+Yumi (homestay family Osaka) + cohort ĐH (Yamato + Aiko + Lin Wei + Rajesh) + Inoue-sensei + Tuấn + Yuna đều có mặt. Đây là chương đóng series 14-24 với motif "cài badge — chương mới". Chương này tập trung mẫu chào hỏi đa thế hệ, speech song ngữ, family dinner đa văn hoá, standup founder ngày 1.

---

## Tình huống 1 — Sân bay Kansai cổng đón · 24/3 09:30, đón 4 ông bà từ VN

*Đại + Mai + Hana (xe đẩy) đứng ở cổng quốc tế. Tuấn lái xe Honda Odyssey 7 chỗ đến đón.*

| Vai | Lời thoại |
|---|---|
| Bố Đại | (VN, đẩy xe đẩy ra) Đại ơi! Mai! Hana cháu của ông! |
| Mẹ Đại | (VN, ôm Đại) Con! Mẹ nhớ con quá! Gầy hơn 6 năm trước. |
| Bố Mai | (VN, người Hà Nội tóc bạc) Đại con rể! Bố sang lần đầu! |
| Mẹ Mai | (VN, ôm Mai khóc) Mai ơi! Hana ơi cháu của bà! |
| Đại | (VN) Bố mẹ ơi! Đi đường có mệt không? Tuấn em này, em Đại nhắc nhiều lần đó. |
| Tuấn | (VN, cúi chào lễ phép) Cháu chào hai bác Hà Nội. Cháu chào hai bác Hà Nội. Cháu là Tuấn, cofounder của anh Đại. |
| Bố Đại | (VN) Tuấn à! Đại nhắc về cháu nhiều lắm. Cháu lái xe đưa cả nhà về Senri-chuo đúng không? |
| Tuấn | (VN) Vâng bác. Xe 7 chỗ, đủ chỗ cho 4 bác + Đại + Mai + Hana. Cháu xếp vali ra cốp. |
| Mai | (VN) Bố mẹ về nhà con với, có cháo gà nóng. |

---

## Tình huống 2 — Trên xe về Senri-chuo · 11:00, bố Đại hỏi về Osaka

| Vai | Lời thoại |
|---|---|
| Bố Đại | (VN) Tuấn ơi, từ sân bay về căn hộ Đại mất bao lâu? |
| Tuấn | (VN) Khoảng 1 tiếng bác. Đi cao tốc Hanshin. |
| Bố Mai | (VN, nhìn ra cửa sổ) Nhà cửa Nhật khác Hà Nội thật. Đường sạch quá. |
| Mẹ Đại | (VN) Đại ơi, lễ tốt nghiệp mai mấy giờ? |
| Đại | (VN) 10 giờ sáng. Cả nhà mình đi sớm 8 rưỡi. Tony+Yumi chú dì homestay cũng đi cùng. |
| Mẹ Mai | (VN) À hai vợ chồng homestay! Mai kể về chú dì nhiều lắm. Bố mẹ mong gặp lắm. |
| Đại | (VN) Mai gặp ở căn hộ. Chú Tony nói tiếng Việt bồi đáng yêu lắm. |
| Bố Đại | (VN) Đại, anh nói chuyện 1 chút khi rảnh. Bố tò mò về vốn ¥31M con nhận. |
| Đại | (VN) Vâng bố, tối nay con kể chi tiết. |

---

## Tình huống 3 — Căn hộ Senri-chuo · 12:30, 4 ông bà gặp Tony+Yumi

*Tony+Yumi đến căn hộ Đại+Mai cho bữa trưa. Lần đầu 4 ông bà Hana + Tony+Yumi gặp nhau.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben, cúi chào) ようこそ<ruby>大阪<rt>おおさか</rt></ruby>へ!ダイの<ruby>父<rt>ちち</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>のトニーや!<br>*(Chào mừng đến Osaka! Tôi là Tony, như cha của Đại!)* |
| Yumi | (cúi chào) <ruby>初<rt>はじ</rt></ruby>めまして、ユミです。マイさんと<ruby>仲良<rt>なかよ</rt></ruby>くしてもらってます。<br>*(Lần đầu gặp, tôi là Yumi. Mai-san đối tốt với tôi.)* |
| Đại | (VN→JP, làm thông dịch) Bố mẹ ơi, đây là chú Tony và dì Yumi. Chú dì đã chăm sóc con 6 năm như con đẻ. |
| Bố Đại | (VN→cúi 30 độ, vài câu JP đã học sẵn) トニーさん、ユミさん、6 <ruby>年間<rt>ねんかん</rt></ruby><ruby>息子<rt>むすこ</rt></ruby>を<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Tony-san, Yumi-san, 6 năm chăm con trai tôi, xin chân thành cảm ơn.)* |
| Tony | (Osaka-ben + VN bồi) <ruby>何<rt>なに</rt></ruby><ruby>言<rt>い</rt></ruby>うてはるんですか!ダイ chính cảm ơn chúng tôi!<br>*(Bác nói gì vậy! Đại mới phải cảm ơn chúng tôi!)* |
| Mẹ Mai | (VN, lấy túi quà) Dì Yumi, mẹ Mai có chút quà từ Hà Nội. Chè sen, bánh đậu xanh. |
| Yumi | わぁ、ありがとうございます!ハナちゃんのおばあちゃんですよね?ハナちゃんはユミの<ruby>孫<rt>まご</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>です!<br>*(Ôi cảm ơn! Bác là bà ngoại Hana đúng không? Hana với tôi như cháu vậy!)* |
| Mẹ Đại | (VN) Vậy là Hana có 4 ông bà ở 2 nước, cộng thêm chú dì Osaka nữa. May mắn ghê. |
| Hana | Báá! Mááá! Bààà! Bààà! (chỉ lung tung 4 ông bà rồi Tony) |
| Tất cả | (cười) |

---

## Tình huống 4 — Buổi tối 24/3 21:00, Đại giải thích cap table cho bố

*Đại + bố Đại ngồi ở ban công Senri-chuo. Mẹ + Mai + Hana + bố mẹ Mai đã ngủ.*

| Vai | Lời thoại |
|---|---|
| Bố Đại | (VN) Đại, con giải thích cho bố về ¥31M đi. Bố đọc Nikkei nhưng vẫn muốn nghe trực tiếp. |
| Đại | (VN) Vâng bố. ¥31M = ¥25M từ Anri lead + ¥5M từ DG co-investor + ¥1M Tony angel. Tiền vào tài khoản Hizashi Inc, không phải tiền cá nhân con. |
| Bố Đại | (VN) Con không lấy được đồng nào à? |
| Đại | (VN) Lương 6 tháng đầu ¥1.5M (khoảng 240 triệu/năm). Sau đó ¥4M (khoảng 640 triệu/năm). Thấp hơn nhân viên Cybozu con đã từ chối. |
| Bố Đại | (VN) Vậy con sống bằng gì? |
| Đại | (VN) Tiền tiết kiệm 4 năm intern Cybozu (¥4M) + lương ¥1.5M năm đầu + Mai tính chuyển sang làm part-time cho Hizashi (UI tester) thêm ¥1M nữa. Đủ. |
| Bố Đại | (VN) Cổ phần con bao nhiêu? |
| Đại | (VN) 51%. Tức nếu Hizashi bán được ¥1B (160 tỷ đồng), con được khoảng ¥510M (80 tỷ). Nhưng đó là "nếu". Phần lớn startup thất bại, founder mất tất cả. |
| Bố Đại | (VN, gật) Bố hiểu. Con đã suy nghĩ kỹ. Đó là quyết định người trưởng thành. |
| Đại | (VN) Cảm ơn bố tin con. |
| Bố Đại | (VN) Mai con phát biểu trên sân khấu nhé. Bố muốn nghe con nói tiếng Nhật. |

---

## Tình huống 5 — Cổng campus Toyonaka · 25/3 09:00, gặp cohort + Inoue-sensei

*Đại mặc vest navy + áo cử nhân (gown) + mũ vuông. Mai mặc áo dài đỏ. Hana mặc váy hồng. 4 ông bà mặc lịch sự. Cohort 4 đứa + Linh-Anh (em gái Đại) + Sato (chồng Linh-Anh) đến từ Aichi.*

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ!<ruby>本日<rt>ほんじつ</rt></ruby>はいよいよ!<br>*(Đại! Hôm nay là ngày rồi!)* |
| Aiko | お<ruby>父<rt>とう</rt></ruby>さんお<ruby>母<rt>かあ</rt></ruby>さん、<ruby>初<rt>はじ</rt></ruby>めまして。<ruby>大阪<rt>おおさか</rt></ruby>へようこそ。<br>*(Chào hai bác, lần đầu gặp. Chào mừng đến Osaka.)* |
| Bố Đại | (cúi 30 độ, JP đã học) はじめまして。<ruby>息子<rt>むすこ</rt></ruby>と<ruby>仲良<rt>なかよ</rt></ruby>くしてくれてありがとうございます。<br>*(Lần đầu gặp. Cảm ơn cháu đã thân với con tôi.)* |
| Inoue | (đến từ phía sau) グエンさん、おめでとう!ご<ruby>家族<rt>かぞく</rt></ruby><ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はおめでとうございます。<br>*(Đại-san, chúc mừng! Cả gia đình, chúc mừng hôm nay.)* |
| Đại | (VN→JP intro) Bố mẹ ơi đây là Inoue-sensei, supervisor của con 4 năm lab CS. Inoue-sensei, đây là bố mẹ con từ Hà Nội. |
| Bố Đại | (VN, qua Đại dịch) Cảm ơn thầy đã dạy dỗ con tôi. |
| Đại | (JP) <ruby>父<rt>ちち</rt></ruby>が「<ruby>息子<rt>むすこ</rt></ruby>のご<ruby>指導<rt>しどう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>します」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Bố em nói "Cảm ơn thầy đã dạy con tôi".)* |
| Inoue | こちらこそ、<ruby>素晴<rt>すば</rt></ruby>らしいご<ruby>子息<rt>しそく</rt></ruby>を<ruby>預<rt>あず</rt></ruby>けていただきました。<br>*(Tôi mới phải cảm ơn — bác đã gửi gắm người con xuất sắc.)* |
| Linh-Anh | (VN, đến từ phía sau) Anh ơi! Em với anh Sato từ Nagoya sang đêm qua. |
| Đại | (VN) Linh ơi! Sato anh nữa! Em không phải đi xa thế. |
| Sato | (JP, chồng Linh-Anh) ダイさん、おめでとうございます!<ruby>義兄<rt>ぎけい</rt></ruby>として<ruby>誇<rt>ほこ</rt></ruby>らしいです。<br>*(Đại-san, chúc mừng! Là anh rể, em tự hào.)* |

---

## Tình huống 6 — Hội trường 体育館 · 10:00, lễ chính

| Vai | Lời thoại |
|---|---|
| MC | <ruby>令和<rt>れいわ</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>年度<rt>ねんど</rt></ruby><ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>卒業<rt>そつぎょう</rt></ruby><ruby>式<rt>しき</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>卒業生<rt>そつぎょうせい</rt></ruby>は<ruby>2800<rt>にせんはっぴゃく</rt></ruby><ruby>名<rt>めい</rt></ruby>です。<br>*(Bắt đầu lễ tốt nghiệp ĐH Osaka năm Reiwa 12. Cử nhân hôm nay 2800 người.)* |
| Hiệu trưởng | <ruby>卒業<rt>そつぎょう</rt></ruby>される<ruby>皆<rt>みな</rt></ruby>さん、おめでとうございます。<ruby>本学<rt>ほんがく</rt></ruby>から<ruby>世界<rt>せかい</rt></ruby>へ<ruby>羽<rt>はばた</rt></ruby>いてください。<br>*(Chúc mừng các bạn tốt nghiệp. Từ trường ta, hãy bay ra thế giới.)* |
| MC | <ruby>基礎工学部<rt>きそこうがくぶ</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>卒業生<rt>そつぎょうせい</rt></ruby><ruby>78<rt>ななじゅうはち</rt></ruby><ruby>名<rt>めい</rt></ruby>!<br>*(78 cử nhân CS Faculty of Engineering Science!)* |
| MC | <ruby>S<rt>エス</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>取得者<rt>しゅとくしゃ</rt></ruby>、グエン・ヴァン・ダイ<ruby>君<rt>くん</rt></ruby>!<br>*(Người đạt điểm S — Nguyễn Văn Đại!)* |
| Đại | (lên sân khấu, nhận bằng) <br>*(Cúi chào, nhận bằng + giấy chứng nhận S.)* |
| Hiệu trưởng | (bắt tay) おめでとう。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Chúc mừng. Cố gắng nhé.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn.)* |

---

## Tình huống 7 — Phát biểu valedictorian · 11:45, Đại đại diện sinh viên quốc tế

*MC mời Đại lên phát biểu 5 phút.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>代表<rt>だいひょう</rt></ruby>として、グエン・ヴァン・ダイさんよりご<ruby>挨拶<rt>あいさつ</rt></ruby>をいただきます。<br>*(Đại diện sinh viên quốc tế, em Nguyễn Văn Đại phát biểu.)* |
| Đại | (lên sân khấu, cúi 30 độ) <br>*(Bắt đầu phát biểu.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>2030<rt>にせんさんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>。<ruby>6<rt>ろく</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>少年<rt>しょうねん</rt></ruby>が<ruby>関西<rt>かんさい</rt></ruby><ruby>国際<rt>こくさい</rt></ruby><ruby>空港<rt>くうこう</rt></ruby>に<ruby>降<rt>お</rt></ruby>り<ruby>立<rt>た</rt></ruby>ちました。<ruby>日本語<rt>にほんご</rt></ruby>は N5 レベル、<ruby>所持金<rt>しょじきん</rt></ruby>は<ruby>40<rt>よんじゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>でした。<br>*(Hôm nay 25/3/2030. 6 năm trước, một thiếu niên Việt 19 tuổi đặt chân xuống sân bay quốc tế Kansai. N5 tiếng Nhật, ¥400.000 trong túi.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>24<rt>にじゅうよん</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>父親<rt>ちちおや</rt></ruby>として、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>S <ruby>評価<rt>ひょうか</rt></ruby><ruby>卒業生<rt>そつぎょうせい</rt></ruby>として、そして Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>として、ここに<ruby>立<rt>た</rt></ruby>っております。<br>*(Hôm nay em đứng đây với tư cách người cha 24 tuổi, cử nhân Osaka U điểm S, và sáng lập viên Hizashi KK.)* |
| Đại | (chuyển sang VN) Con xin phép chuyển sang tiếng Việt một đoạn ngắn cho gia đình bên dưới. |
| Đại | (VN) Con cảm ơn bố mẹ ở Hà Nội đã ủng hộ con đi du học khi gia đình không khá giả. Cảm ơn vợ Mai đã chịu yêu xa 3 năm rồi sang Nhật cùng anh. Cảm ơn bố mẹ vợ đã tin con và gả con gái. Cảm ơn Hana đã cho bố động lực mỗi sáng. Cảm ơn chú Tony và dì Yumi đã là gia đình thứ hai. Cảm ơn cohort 4 đứa Yamato + Aiko + Lin Wei + Rajesh đã là anh em suốt 4 năm CS. Cảm ơn Inoue-sensei đã dạy dỗ con thành nhà nghiên cứu. |
| Đại | (chuyển lại JP) <ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>6<rt>ろく</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>ご支援<rt>ごしえん</rt></ruby>に<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。Hizashi で<ruby>日本<rt>にほん</rt></ruby>とベトナムの<ruby>架<rt>か</rt></ruby>け<ruby>橋<rt>はし</rt></ruby>になります。<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Xin chân thành cảm ơn ĐH Osaka 6 năm. Em sẽ là cầu nối Việt-Nhật qua Hizashi. Xin chân thành cảm ơn.)* |
| Khán phòng | (vỗ tay đứng lên — standing ovation 30 giây) |
| Mẹ Đại + Mai + Mẹ Mai + Linh-Anh | (khóc tự hào) |

---

## Tình huống 8 — Dưới hoa anh đào campus · 13:00, photo cohort cuối cùng

*Hoa anh đào đang nở. Đại + Yamato + Aiko + Lin Wei + Rajesh đứng dưới cây sakura cổng Toyonaka.*

| Vai | Lời thoại |
|---|---|
| Yamato | みんな、これからの<ruby>進路<rt>しんろ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>!<ruby>俺<rt>おれ</rt></ruby>はスズキ・ラボで<ruby>修士<rt>しゅうし</rt></ruby><ruby>進学<rt>しんがく</rt></ruby>!<br>*(Mọi người, confirm path tiếp! Mình học Master Suzuki Lab!)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>は Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby> CDO!<br>*(Mình là CDO Hizashi KK!)* |
| Lin Wei | (English) Google Tokyo SRE! Starting April 1!<br>*(Google Tokyo SRE! Bắt đầu 1/4!)* |
| Rajesh | (English) Cybozu Osaka, joining the team Dai trained!<br>*(Cybozu Osaka, vào team mà Đại đã đào tạo!)* |
| Đại | Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby> CEO+CTO!<ruby>明日<rt>あした</rt></ruby>がDay 1!<br>*(CEO+CTO Hizashi KK! Mai là Day 1!)* |
| 5 đứa | (chụp ảnh selfie + bố Đại cầm máy chụp 1 ảnh chuyên nghiệp) |
| Yamato | (sau khi chụp xong) <ruby>毎年<rt>まいとし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>25<rt>にじゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>、ここで<ruby>集<rt>あつ</rt></ruby>まろうな!<br>*(Mỗi năm 25/3 mình tụ lại đây nhé!)* |
| Lin Wei | (English) Deal! Even if from Tokyo!<br>*(Deal! Kể cả từ Tokyo!)* |
| Đại | <ruby>友達<rt>ともだち</rt></ruby><ruby>永遠<rt>えいえん</rt></ruby>に!<br>*(Bạn bè mãi mãi!)* |

---

## Tình huống 9 — Family dinner Tony+Yumi · 19:00 căn hộ Tanaka

*Căn hộ Tanaka tại Tennoji. 11 người: Tony+Yumi + Đại+Mai+Hana + bố mẹ Đại + bố mẹ Mai + Linh-Anh+Sato. Yumi nấu nabe + Mai nấu phở.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben, cầm ly bia) <ruby>11<rt>じゅういち</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>!<ruby>4<rt>よ</rt></ruby><ruby>人<rt>にん</rt></ruby>のおじいちゃんおばあちゃんがいるハナは<ruby>幸<rt>しあわ</rt></ruby>せやな!<br>*(Gia đình 11 người! Hana có 4 ông bà thật hạnh phúc!)* |
| Yumi | (sang bố mẹ Mai) お<ruby>義父<rt>とう</rt></ruby>さんお<ruby>義母<rt>かあ</rt></ruby>さん、<ruby>姉妹<rt>しまい</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bác trai bác gái, mong được kết thân như chị em.)* |
| Mẹ Mai | (VN→qua Mai dịch) Cảm ơn dì Yumi đã chăm Mai và Hana suốt 1 năm Mai sang đây. |
| Bố Mai | (VN) Tony! Yumi! Cảm ơn anh chị! |
| Tony | (Osaka-ben + VN) ボー、メー、トニー gọi anh chị, anh chị nói "em" với Tony nhé! |
| Bố Đại | (VN cười) Tony, cháu ít hơn anh 5 tuổi mà! |
| Tony | (Osaka-ben) <ruby>関係<rt>かんけい</rt></ruby>ない! トニー lúc nào cũng trẻ! |
| Linh-Anh | (VN, sang bố mẹ) Bố mẹ ơi, anh Đại sắp 25 tuổi sinh nhật 4 tới rồi. Đại tiến lên CEO mà bụng vẫn như sinh viên. |
| Sato | (JP, với bố Mai) お<ruby>父<rt>とう</rt></ruby>さん、リンとサトの<ruby>結婚式<rt>けっこんしき</rt></ruby>、<ruby>2032<rt>にせんさんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>名古屋<rt>なごや</rt></ruby>でやります。お<ruby>越<rt>こ</rt></ruby>しください。<br>*(Bác trai, đám cưới Linh và em năm 2032 tại Nagoya. Mong bác đến.)* |
| Bố Mai | (VN→Mai dịch sau) Tất nhiên anh đi! |
| Hana | (chỉ Tony) Bààà! (chỉ bố Đại) Bààà! (chỉ Tony) Bààà! |
| Tất cả | (cười) |
| Mẹ Đại | (VN) Hana ơi, không phải ai cũng "Bà" đâu cháu. Mai bà dạy. |

---

## Tình huống 10 — Sáng 26/3 căn hộ Senri-chuo · 7:00, Mai cài badge cho Đại

*Đại mặc vest đen, áo sơ mi trắng, cà vạt navy. Mai cầm badge "Hizashi Founder" - khắc tên + năm 2030.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Hôm nay Day 1 founder! Em cài badge cho anh nhé. |
| Đại | (VN) Em cài đi. |
| Mai | (VN, cài) Anh có nhớ không? Tony hồi sách 19 đã cài cúc đồng phục Lawson cho anh. Hôm nay em cài badge founder. |
| Đại | (VN, xúc động) Anh nhớ. Cũng tháng 4/2024 — 6 năm chẵn rồi. |
| Mai | (VN) Anh đi nhé. WeWork 10 giờ standup mấy người? |
| Đại | (VN) 3 cofounder + designer Saori-san em mới tuyển + intern Hibiki. 5 người. |
| Hana | (vẫy tay) Báá! Báá baibai! |
| Đại | (VN) Hana baibai bố! Tối bố về sớm. |
| Mai | (VN) Trưa em với Hana mang phở lên WeWork nhé. Bố mẹ + bố mẹ Mai cũng muốn xem văn phòng. |
| Đại | (VN) Tuyệt! Bảo Tuấn dọn chỗ. |

---

## Tình huống 11 — WeWork Senri-chuo standup ngày 1 · 10:00

*Phòng họp WeWork tầng 8. Đại + Tuấn + Aiko + Saori (designer mới, 26 tuổi, từ Yahoo) + Hibiki (intern năm 3 ĐH Osaka).*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby> Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby> Day 1。<ruby>新<rt>あたら</rt></ruby>しい<ruby>仲間<rt>なかま</rt></ruby>のサオリさんとヒビキさんを<ruby>歓迎<rt>かんげい</rt></ruby>します。<br>*(Chào buổi sáng. Hôm nay Day 1 Hizashi KK. Chào đón thành viên mới Saori-san và Hibiki-san.)* |
| Saori | <ruby>佐織<rt>さおり</rt></ruby>です。<ruby>4<rt>し</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby> Yahoo でデザインしておりました。Hizashi の<ruby>使命<rt>しめい</rt></ruby>に<ruby>感動<rt>かんどう</rt></ruby>して<ruby>転職<rt>てんしょく</rt></ruby>を<ruby>決<rt>き</rt></ruby>めました。<br>*(Em là Saori. Em đã design 4 năm ở Yahoo. Cảm động với sứ mệnh Hizashi nên quyết định chuyển việc.)* |
| Hibiki | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>のヒビキです。インターンとして<ruby>働<rt>はたら</rt></ruby>かせていただきます。<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のご<ruby>紹介<rt>しょうかい</rt></ruby>です。<br>*(Em là Hibiki, năm 3 CS ĐH Osaka. Em làm intern. Inoue-sensei giới thiệu.)* |
| Đại | では、Q1 2030 の OKR を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Vậy share OKR Q1 2030.)* |
| Đại | O1: Hizashi v1.0 を<ruby>4<rt>し</rt></ruby><ruby>月末<rt>がつまつ</rt></ruby>までに<ruby>一般公開<rt>いっぱんこうかい</rt></ruby>。KR1:<ruby>登録<rt>とうろく</rt></ruby>ユーザー<ruby>1000<rt>せん</rt></ruby><ruby>名<rt>めい</rt></ruby>。KR2: retention 4 <ruby>週<rt>しゅう</rt></ruby> 70%。KR3: NPS 50<ruby>以上<rt>いじょう</rt></ruby>。<br>*(O1: Ra mắt Hizashi v1.0 trước cuối tháng 4. KR1: 1000 user. KR2: retention 4 tuần 70%. KR3: NPS từ 50.)* |
| Tuấn | (JP) <ruby>俺<rt>おれ</rt></ruby>のサブ OKR:ベトナム<ruby>人<rt>じん</rt></ruby>コミュニティ<ruby>向<rt>む</rt></ruby>けの Facebook <ruby>広告<rt>こうこく</rt></ruby> 3 パターンを<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby>。<br>*(OKR phụ của mình: Publish 3 mẫu Facebook ads cho cộng đồng VN trong 1 tuần.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>のサブ OKR:ブランドガイドライン<ruby>確定<rt>かくてい</rt></ruby>+ランディングページリデザインを<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>。サオリさんと<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(OKR phụ của mình: Brand guideline + redesign landing page trong 2 tuần. Với Saori-san.)* |
| Saori | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ.)* |
| Đại | ヒビキ<ruby>君<rt>くん</rt></ruby>、サブ OKR は<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>考<rt>かんが</rt></ruby>えてきてください。まずはバックエンドのコードベース<ruby>把握<rt>はあく</rt></ruby>から。<br>*(Hibiki-kun, OKR phụ em suy nghĩ đến tuần sau. Trước tiên nắm codebase backend.)* |
| Hibiki | はい!<br>*(Vâng!)* |
| Đại | では、<ruby>頑張<rt>がんば</rt></ruby>りましょう!<br>*(Vậy chúng ta cố gắng nhé!)* |

---

## Tình huống 12 — Mai+Hana+4 ông bà thăm WeWork · 12:00 lunch

*Mai bưng phở. 4 ông bà + Linh-Anh + Sato + Tony + Yumi đến WeWork. 8 khách + 5 nhân viên = 13 người ăn phở trong phòng họp.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, đến cửa) Anh ơi! Phở đến rồi! Em mang 3 nồi to. |
| Bố Đại | (VN, vào WeWork lần đầu) Wow! Văn phòng đẹp đấy! Đại con ngồi đâu? |
| Đại | (VN, dẫn bố tới bàn) Bàn này. 3 màn hình. Bên trái Tuấn, bên phải Aiko. |
| Saori | (JP, cúi chào 4 ông bà) <ruby>初<rt>はじ</rt></ruby>めまして。サオリです。<br>*(Lần đầu gặp, em là Saori.)* |
| Hibiki | (JP, cúi chào) ヒビキです。インターンです。<br>*(Em là Hibiki. Intern ạ.)* |
| Bố Mai | (VN→qua Mai dịch) Đại con, bố thấy con có team rồi. Không còn 1 mình. |
| Đại | (VN) Vâng bố. 5 người đầu tiên. Cuối năm sẽ 10 người. |
| Tony | (Osaka-ben + VN) WeWork <ruby>家賃<rt>やちん</rt></ruby> bao nhiêu tháng? |
| Đại | ¥120,000 tháng cho 3 bàn dedicated + phòng họp. Tháng 6 mở rộng thêm 3 bàn nữa. |
| Yumi | <ruby>窓<rt>まど</rt></ruby>からの<ruby>景色<rt>けしき</rt></ruby>、Senri <ruby>中央<rt>ちゅうおう</rt></ruby><ruby>公園<rt>こうえん</rt></ruby>が<ruby>見<rt>み</rt></ruby>えるね!<br>*(Cảnh ngoài cửa sổ thấy công viên trung tâm Senri kìa!)* |
| Mẹ Đại | (VN, ôm Đại) Con! Mẹ nhìn con ngồi văn phòng riêng, mẹ tự hào không tả được. |
| Hana | Bááá!(chỉ Đại) |
| Đại | (VN) Hana ơi, đây là chỗ bố làm. Sau này con lớn, đến đây chơi với bố nhé. |

---

## Tình huống 13 — Cảnh tiếng Việt cuối chương · 26/3 23:00, đêm Day 1

*Căn hộ Senri-chuo. Mai ru Hana ngủ. Đại ngồi bàn làm việc, viết nhật ký Word. Bố mẹ + bố mẹ Mai đã ngủ ở phòng khách.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, tự thoại — bật điện thoại gọi Mai từ phòng bếp sang phòng làm việc) Em ơi! Em rảnh ra đây chút không? |
| Mai | (VN, vào phòng làm việc) Hana ngủ rồi. Sao anh? |
| Đại | (VN) Anh ngồi viết nhật ký Day 1. Muốn em ngồi cùng. |
| Mai | (VN, kéo ghế) Em nghe. |
| Đại | (VN) 6 năm trên đất Nhật. 4/2024 anh đặt chân Kansai N5, ¥400k trong túi. 26/3/2030 — cử nhân Osaka U điểm S + bố Hana 19 tháng + founder Hizashi Inc ¥31M pre-seed. |
| Mai | (VN) Anh viết gọn ghê. |
| Đại | (VN) Đề từ chương 12 nhật ký: "Ngày 1 chỉ là ngày 1". |
| Mai | (VN) Hay đấy. |
| Đại | (VN) Mai anh sắp 25 tuổi. Anh nhớ hồi 19 tuổi, anh ngồi ở căn hộ Tony+Yumi viết nhật ký lần đầu — "Tôi sẽ tốt nghiệp ĐH Osaka, cưới Mai, mở công ty". Hồi đó anh viết như mơ. |
| Mai | (VN) Bây giờ thành sự thật. |
| Đại | (VN) Còn 1 việc chưa làm — bằng Tiến sĩ. Anh tính 30 tuổi xin học tại chức. |
| Mai | (VN) Anh tham quá. |
| Đại | (VN cười) Anh là người Việt mà. Phải tham. |
| Mai | (VN) Còn Hana sau này sao? Bố founder, mẹ phở. Hana lớn lên thành... |
| Đại | (VN) Thành người Hana muốn thành. Anh không ép. |
| Mai | (VN) Anh hay. Bố mẹ anh thì khác. Hồi xưa bắt anh học CNTT. |
| Đại | (VN) May bố mẹ bắt. Không thì giờ anh đang làm gì? |
| Mai | (VN) Không biết. Có lẽ vẫn ở Hà Nội, không có Hana. |
| Đại | (VN, ôm Mai) Em ơi, cảm ơn em đã yêu xa 3 năm rồi sang Nhật. Cảm ơn em đã sinh Hana. Cảm ơn em đã làm Day 1 này có ý nghĩa. |
| Mai | (VN) Anh ơi. Đi ngủ thôi. Mai còn Day 2. |
| Đại | (VN) Day 2, Day 3, Day 100, Day 1000. Hizashi mới chỉ bắt đầu thôi. |
| Mai | (VN) Bắt đầu thôi à? |
| Đại | (VN) Như ánh nắng ban mai — Hizashi. Như anh 19 tuổi đặt chân Nhật 4/2024. Như Hana 19 tháng. Như tất cả mọi người. |
| (Đại tắt đèn phòng làm việc. Cài badge "Hizashi Founder" cẩn thận trên bàn — đặt cạnh bằng cử nhân ĐH Osaka. Mai cầm tay Đại, cả hai đi về phòng ngủ.) |

---

## Đọng lại chương 12 — KẾT THÚC TOÀN SERIES

26/3/2030 - Day 1 founder Hizashi Inc. Đại 25 tuổi sắp tròn, đóng lại 6 năm trên đất Nhật từ N5 trắng tay đến cử nhân Osaka U điểm S + bố Hana 19 tháng + sáng lập viên Hizashi KK ¥31M pre-seed. Lễ tốt nghiệp 25/3 với 4 ông bà Hana (bố mẹ Đại + bố mẹ Mai cùng từ Hà Nội sang lần đầu) + Tony+Yumi + cohort 4 đứa + Inoue-sensei + Linh-Anh+Sato. Đại đại diện sinh viên quốc tế phát biểu song ngữ Việt-Nhật mẫu **「<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>24<rt>にじゅうよん</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>父親<rt>ちちおや</rt></ruby>として、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>S <ruby>評価<rt>ひょうか</rt></ruby><ruby>卒業生<rt>そつぎょうせい</rt></ruby>として、そして Hizashi <ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>として、ここに<ruby>立<rt>た</rt></ruby>っております」**, được standing ovation. Family dinner 11 người Tony+Yumi đêm 25, Hana có **4 ông bà 2 nước**. Sáng 26 Mai cài badge Hizashi Founder — gương với cảnh Tony cài cúc đồng phục sách 19 T1. Standup ngày 1 WeWork với 3 cofounder + 2 nhân viên mới (Saori designer ex-Yahoo + Hibiki intern Inoue Lab). Mai+Hana+4 ông bà+Tony+Yumi mang phở thăm WeWork lúc 12h. Đêm cuối: Đại nói "Hizashi mới chỉ bắt đầu thôi — như ánh nắng ban mai".

> Từ vựng & mẫu câu chương này: 卒業式・卒業生・外国人留学生代表・S評価・大阪大学・基礎工学部・情報科学科・架け橋・創業者・株式会社・Day 1・標準的・OKR・KR・retention・NPS・スタンドアップ・ブランドガイドライン・羽ばたく・心より感謝申し上げます・誠にありがとうございました・素晴らしいご子息・姉妹同様で・親同様で・お越しください・お義父さん・お義母さん

## Bí quyết chương — KẾT THÚC TOÀN SERIES

- **Motif gương cài cúc/badge**: Sách 14 T1 Thái cài cúc đồng phục Toyota Boshoku → Sách 18 T12 Thái cài cúc kỷ niệm 5 năm SSW → Sách 19 T1 Tony cài cúc đồng phục Lawson cho Đại → Sách 24 T12 Mai cài badge Hizashi Founder cho Đại. Series 14-24 khép lại với cùng motif "cài cúc/badge — chương mới của đời".
- **Speech song ngữ valedictorian**: Đoạn JP keigo trang trọng cho ĐH + đoạn VN trữ tình cho gia đình. Học cách chuyển ngôn ngữ giữa bài phát biểu.
- **4 ông bà 2 nước**: Bố mẹ Đại Hà Nội + bố mẹ Mai Hà Nội + Tony+Yumi Osaka như ông bà thứ 3. Hana 19 tháng, có 6 người lớn yêu thương.
- **Mẫu「<ruby>息子<rt>むすこ</rt></ruby>が『〜』と<ruby>申<rt>もう</rt></ruby>しております」**: Khi dịch lại lời gia đình cho người Nhật. Đại làm thông dịch giữa bố và Inoue-sensei.
- **Hizashi = Ánh nắng = ý Mai đặt**: Tên công ty mang ý nghĩa lãng mạn vợ founder đặt từ trước.
- **"Day 1 chỉ là ngày 1"**: Ending mở. Không phải climax. Hizashi mới bắt đầu.

> *"Day 1 Hizashi Inc 26/3/2030. 6 năm trên đất Nhật khép lại. Cử nhân + người cha + sáng lập viên. Sứ mệnh 100k người Việt học tiếng Nhật trước 2032. Hizashi mới chỉ bắt đầu."*

---

## END OF FULL SERIES (Sách 14-24, 11 sách, 132 chương)

**Sách 14-18**: Series Thái (kỹ sư khuôn đúc Aichi, 60 tháng 5/2022 → 4/2027)
**Sách 19-20**: Series Đại trường tiếng Osaka (24 tháng 4/2024 → 3/2026)
**Sách 21-24**: Series Đại CNTT ĐH Osaka (48 tháng 4/2026 → 3/2030)

**Motif kết**: Cài cúc đồng phục/badge — biểu tượng chương mới.
**Hizashi Inc ra đời**: Meta-narrative — Đại trong sách xây app Hizashi, giống tác giả ngoài đời thật.

> *"Hizashi mới bắt đầu. Như Đại 19 tuổi đặt chân lên đất Nhật. Như Hana 19 tháng. Như hành trình của tất cả mọi người."*

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 同様 | どうよう | ĐỒNG DẠNG | tương tự, như |
| 仲良く | なかよく | TRỌNG LƯƠNG | thân thiện |
| 義父 | ぎふ | NGHĨA PHỤ | cha vợ/chồng |
| 義母 | ぎぼ | NGHĨA MẪU | mẹ vợ/chồng |
| 姉妹 | しまい | TỶ MUỘI | chị em |
| 関係ない | かんけいない | QUAN HỆ | không liên quan |
| 結婚式 | けっこんしき | KẾT HÔN THỨC | đám cưới |
| 卒業式 | そつぎょうしき | TỐT NGHIỆP THỨC | lễ tốt nghiệp |
| 卒業生 | そつぎょうせい | TỐT NGHIỆP SINH | người tốt nghiệp |
| 羽ばたく | はばたく | VŨ | sải cánh |
| 基礎工学部 | きそこうがくぶ | CƠ SỞ CÔNG HỌC BỘ | khoa kỹ thuật cơ sở |
| 情報科学科 | じょうほうかがくか | THÔNG TIN KHOA HỌC KHOA | ngành CNTT |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 取得者 | しゅとくしゃ | THỦ ĐẮC GIẢ | người đạt được |
| 外国人留学生代表 | がいこくじんりゅうがくせいだいひょう | NGOẠI QUỐC NHÂN LƯU HỌC SINH ĐẠI BIỂU | đại diện sinh viên quốc tế |
| 降り立つ | おりたつ | GIÁNG LẬP | đặt chân xuống |
| 所持金 | しょじきん | SỞ TRÌ KIM | tiền mang theo |
| 父親 | ちちおや | PHỤ THÂN | người cha |
| 架け橋 | かけはし | GIÁ KIỀU | cầu nối |
| 支援 | しえん | CHI VIỆN | hỗ trợ |
| 進学 | しんがく | TIẾN HỌC | học lên |
| 修士 | しゅうし | TU SĨ | thạc sĩ |
| 友達 | ともだち | HỮU ĐẠT | bạn bè |
| 永遠 | えいえん | VĨNH VIỄN | mãi mãi |
| 景色 | けしき | CẢNH SẮC | cảnh |
| 公園 | こうえん | CÔNG VIÊN | công viên |
| 仲間 | なかま | TRỌNG GIAN | đồng đội |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 使命 | しめい | SỨ MỆNH | sứ mệnh |
| 感動 | かんどう | CẢM ĐỘNG | cảm động |
| 把握 | はあく | BẢ ÁC | nắm bắt |
| ブランドガイドライン | ぶらんどがいどらいん | — | brand guideline |
| 確定 | かくてい | XÁC ĐỊNH | xác định |
| 家賃 | やちん | GIA LIM | tiền thuê nhà |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | mở rộng |
| 誇らしい | ほこらしい | KHOA | tự hào |
| 短期 | たんき | ĐOẢN KỲ | ngắn hạn |
| 申す | もうす | THÂN | nói (khiêm nhường) |
| 一般公開 | いっぱんこうかい | NHẤT BAN CÔNG KHAI | mở cửa công chúng |
| 広告 | こうこく | QUẢNG CÁO | quảng cáo |
| パターン | ぱたーん | — | mẫu |
| 一致 | いっち | NHẤT TRÍ | nhất trí |
| 預かる | あずかる | DỰ | nhận giữ |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
