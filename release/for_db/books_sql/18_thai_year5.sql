-- Hizashi LITE book SQL — Thái Y5
-- curriculum_id = 800000018  (book_seq=18)
-- nguồn: books/18_thai_year5/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000018, 'N3', 'markdown_book', 'Cơ khí', 'Thái Y5', 'Bộ sách Hizashi — Thái Y5', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000001, 800000018, NULL, 'markdown_book', 'T1. Khởi động dự án vỏ pin xe điện (EV案件キックオフ)', '# Sách kỹ sư khuôn đúc · T1. Khởi động dự án vỏ pin xe điện (EV案件キックオフ)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Hà Nội) chính thức làm 設計係長 (trưởng nhóm thiết kế) dẫn dự án vỏ pin EV cho Toyota. Học các mẫu hội thoại tiếng Nhật của một 係長 ngày nhận dự án lớn: nghe brief dự án từ 部長 và xác nhận thông số (〜ということですね), tự giới thiệu vai trò 係長 với đàn em người Nhật mới (新卒), điều phối họp đa quốc tịch (Việt・Nhật・Indonesia), chốt mốc tiến độ マイルストーン bằng cấu trúc liệt kê thứ tự, hỏi lại lễ phép khi chưa rõ ký hiệu vật liệu chuyên ngành (PA66-GF30 V-0).

---

## Bối cảnh

Tháng 5 năm 2026. Thái (27 tuổi) bước vào năm thứ 5 tại **株式会社みなみ精密金型** ở Anjo, Aichi và vừa được bổ nhiệm **設計係長** (trưởng nhóm thiết kế). Toyota công bố dòng xe điện đại trà mới, nhà máy Minami nhận đơn 1 trong 4 khuôn vỏ pin (1500×1000mm — lớn nhất lịch sử công ty, thời hạn 6 tháng). Đội 5 người gồm 2 thực tập sinh Việt (Long, Hùng), 1 SSW Indonesia (Adi), 1 tân binh Nhật (Yamamoto, 25 tuổi, Đại học Nagoya) và đàn anh Sakurai hỗ trợ. Chương này tập trung các mẫu câu giao tiếp của một trưởng nhóm ngày kick-off dự án: nghe brief, xác nhận thông số, giới thiệu vai trò, điều phối họp đa quốc tịch và trình bày kế hoạch theo mốc.

---

## Tình huống 1 — Phòng 部長 · 9:00, nghe brief dự án và xác nhận thông số

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>今日<rt>きょう</rt></ruby>から<ruby>君<rt>きみ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せたい<ruby>大<rt>おお</rt></ruby>きな<ruby>案件<rt>あんけん</rt></ruby>がある。<br>*(Thái này, chào buổi sáng. Có một dự án lớn tôi muốn giao cho em từ hôm nay.)* |
| Thái | おはようございます。はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào ông ạ. Vâng, em xin nghe ạ.)* |
| Kawakami | トヨタEV<ruby>新型<rt>しんがた</rt></ruby>の<ruby>電池<rt>でんち</rt></ruby>ケースの<ruby>金型<rt>かながた</rt></ruby>だ。<ruby>当社<rt>とうしゃ</rt></ruby>はその<ruby>中<rt>なか</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>型<rt>がた</rt></ruby>を<ruby>受注<rt>じゅちゅう</rt></ruby>した。<br>*(Là khuôn cho vỏ pin xe điện đời mới của Toyota. Công ty mình nhận một trong các khuôn đó.)* |
| Thái | EVの<ruby>電池<rt>でんち</rt></ruby>ケース、ですか。<ruby>大<rt>おお</rt></ruby>きい<ruby>仕事<rt>しごと</rt></ruby>ですね。<br>*(Vỏ pin xe điện ạ. Việc lớn quá ạ.)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby>サイズは<ruby>1500<rt>せんごひゃく</rt></ruby>×<ruby>1000<rt>せん</rt></ruby>ミリ。<ruby>当社<rt>とうしゃ</rt></ruby><ruby>過去<rt>かこ</rt></ruby><ruby>最大<rt>さいだい</rt></ruby>だ。<ruby>納期<rt>のうき</rt></ruby>は<ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>。<br>*(Kích thước khuôn 1500×1000mm. Lớn nhất từ trước đến nay của công ty. Thời hạn 6 tháng.)* |
| Thái | <ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>1500<rt>せんごひゃく</rt></ruby>×<ruby>1000<rt>せん</rt></ruby>ミリ、<ruby>納期<rt>のうき</rt></ruby><ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、ということですね。<br>*(Em xin xác nhận. 1500×1000mm, thời hạn 6 tháng, đúng không ạ?)* |
| Kawakami | そうだ。<ruby>来月<rt>らいげつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めに<ruby>設計<rt>せっけい</rt></ruby>レビューを<ruby>入<rt>い</rt></ruby>れる。タイ<ruby>君<rt>くん</rt></ruby>、リーダーをやってくれるか。<br>*(Đúng vậy. Đầu tháng sau sẽ có buổi review thiết kế. Thái này, em làm trưởng nhóm được không?)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けします。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Vâng, em xin trân trọng nhận. Mong ông chỉ bảo ạ.)* |

---

## Tình huống 2 — Phòng 部長 · 10:00, nghe cơ cấu đội và hỏi lại về tân binh Nhật

| Vai | Lời thoại |
|---|---|
| Kawakami | チームは<ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>だ。タイ<ruby>君<rt>くん</rt></ruby>がリーダー、サクライ<ruby>先輩<rt>せんぱい</rt></ruby>がサポート。<br>*(Đội 5 người. Em làm trưởng nhóm, Sakurai-senpai hỗ trợ.)* |
| Thái | はい。メンバーは<ruby>誰<rt>だれ</rt></ruby>でしょうか。<br>*(Vâng. Thành viên gồm những ai ạ?)* |
| Kawakami | <ruby>実習生<rt>じっしゅうせい</rt></ruby>のロンさんとフンさん、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>のアディさん、そして<ruby>新人<rt>しんじん</rt></ruby>の<ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>だ。<br>*(Thực tập sinh Long và Hùng, kỹ năng đặc định Adi, và tân binh Yamamoto.)* |
| Thái | すみません、<ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>というのは、どんな<ruby>方<rt>かた</rt></ruby>ですか。<br>*(Xin lỗi, Yamamoto-kun là người thế nào ạ?)* |
| Kawakami | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>新卒<rt>しんそつ</rt></ruby><ruby>入社<rt>にゅうしゃ</rt></ruby>したばかりだ。<ruby>名古屋<rt>なごや</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>機械<rt>きかい</rt></ruby><ruby>工学科<rt>こうがっか</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>、<ruby>25<rt>にじゅうご</rt></ruby><ruby>歳<rt>さい</rt></ruby>だ。<br>*(Tháng 4 vừa vào công ty diện sinh viên mới ra trường. Tốt nghiệp Khoa Cơ khí Đại học Nagoya, 25 tuổi.)* |
| Thái | え、<ruby>新卒<rt>しんそつ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>を<ruby>私<rt>わたし</rt></ruby>が<ruby>指導<rt>しどう</rt></ruby>するのですか。<ruby>務<rt>つと</rt></ruby>まるでしょうか。<br>*(Ơ, em mà dẫn dắt bạn mới ra trường ạ. Em có làm nổi không ạ?)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>外国人<rt>がいこくじん</rt></ruby>メンバーも<ruby>日本人<rt>にほんじん</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>も、<ruby>両方<rt>りょうほう</rt></ruby><ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>られる<ruby>係長<rt>かかりちょう</rt></ruby>はそう<ruby>多<rt>おお</rt></ruby>くない。<br>*(Em làm được. Trưởng nhóm vừa kèm được người nước ngoài, vừa kèm được tân binh Nhật, không có nhiều đâu.)* |
| Thái | はい、ありがとうございます。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn ạ. Em sẽ cố gắng hết sức.)* |

---

## Tình huống 3 — Hành lang trước phòng thiết kế · 10:30, quan sát Sakurai dặn cách dẫn dắt tân binh

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、リーダー<ruby>就任<rt>しゅうにん</rt></ruby>おめでとう。<br>*(Thái, chúc mừng em nhậm chức trưởng nhóm.)* |
| Thái | サクライ<ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございます。でも<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>不安<rt>ふあん</rt></ruby>もあります。<br>*(Anh Sakurai, cảm ơn anh ạ. Nhưng thật lòng em cũng lo.)* |
| Sakurai | <ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>のことか。<br>*(Chuyện Yamamoto-kun phải không?)* |
| Thái | はい。<ruby>日本人<rt>にほんじん</rt></ruby><ruby>新卒<rt>しんそつ</rt></ruby>を<ruby>指導<rt>しどう</rt></ruby>するのは<ruby>初<rt>はじ</rt></ruby>めてですから、どう<ruby>声<rt>こえ</rt></ruby>をかければいいか<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Vâng. Em lần đầu dẫn dắt tân binh Nhật, không biết nên bắt chuyện thế nào.)* |
| Sakurai | <ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>三<rt>みっ</rt></ruby>つだけだよ。<ruby>一<rt>いち</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>自分<rt>じぶん</rt></ruby>の<ruby>立場<rt>たちば</rt></ruby>をはっきり<ruby>言<rt>い</rt></ruby>う。<ruby>二<rt>に</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>いてと<ruby>伝<rt>つた</rt></ruby>える。<ruby>三<rt>さん</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>新人<rt>しんじん</rt></ruby>だった<ruby>頃<rt>ころ</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をする。<br>*(Quan trọng có ba điều thôi. Một, nói rõ vai trò mình ngay từ đầu. Hai, dặn không hiểu thì hỏi. Ba, kể về thời mình cũng từng là tân binh.)* |
| Thái | なるほど。<ruby>立場<rt>たちば</rt></ruby>・<ruby>質問<rt>しつもん</rt></ruby><ruby>歓迎<rt>かんげい</rt></ruby>・<ruby>自分<rt>じぶん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>、ということですね。<br>*(Ra vậy. Vai trò, hoan nghênh câu hỏi, kinh nghiệm bản thân — đúng không anh?)* |
| Sakurai | そう。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>だからって<ruby>気<rt>き</rt></ruby><ruby>負<rt>お</rt></ruby>うな。<ruby>実力<rt>じつりょく</rt></ruby>で<ruby>選<rt>えら</rt></ruby>ばれたんだから。<br>*(Đúng vậy. Đừng nặng nề chuyện trưởng nhóm là người nước ngoài. Em được chọn vì thực lực mà.)* |
| Thái | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em xin khắc cốt ghi tâm.)* |

---

## Tình huống 4 — Phòng thiết kế · 11:00, tự giới thiệu vai trò 係長 với Yamamoto

| Vai | Lời thoại |
|---|---|
| Yamamoto | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がって<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして！<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>設計課<rt>せっけいか</rt></ruby>に<ruby>配属<rt>はいぞく</rt></ruby>になりました、<ruby>山本<rt>やまもと</rt></ruby><ruby>健太<rt>けんた</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đứng dậy cúi đầu. Rất hân hạnh! Em là Yamamoto Kenta, được phân về phòng thiết kế từ tháng 4. Mong anh chỉ bảo ạ.)* |
| Thái | はじめまして、グエン・タイです。<ruby>今月<rt>こんげつ</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>を<ruby>務<rt>つと</rt></ruby>めます。<ruby>今度<rt>こんど</rt></ruby>のEV<ruby>案件<rt>あんけん</rt></ruby>では<ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>のメンターも<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Rất hân hạnh, anh là Nguyễn Thái. Từ tháng này anh giữ chức trưởng nhóm thiết kế. Trong dự án EV lần này anh kiêm luôn người dẫn dắt em.)* |
| Yamamoto | あの、<ruby>失礼<rt>しつれい</rt></ruby>ですが、ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>係長<rt>かかりちょう</rt></ruby>さんって<ruby>初<rt>はじ</rt></ruby>めてお<ruby>会<rt>あ</rt></ruby>いします。<br>*(Dạ, em xin lỗi, em lần đầu gặp trưởng nhóm là người Việt ạ.)* |
| Thái | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>も<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はN4でこの<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>った。<ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>とほとんど<ruby>同<rt>おな</rt></ruby>じスタートだったよ。<br>*(Cười. Yên tâm, 4 năm trước anh vào công ty với N4. Xuất phát gần như giống em thôi.)* |
| Yamamoto | えっ！？N4からですか。<br>*(Ơ!? Từ N4 ạ?)* |
| Thái | そう。<ruby>金型<rt>かながた</rt></ruby>のことも<ruby>何<rt>なに</rt></ruby>も<ruby>知<rt>し</rt></ruby>らなかった。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてほしい。<ruby>日本語<rt>にほんご</rt></ruby>でもベトナム<ruby>語<rt>ご</rt></ruby><ruby>訛<rt>なま</rt></ruby>りの<ruby>日本語<rt>にほんご</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だから。<br>*(Đúng vậy. Khuôn anh cũng chẳng biết gì. Không hiểu gì cứ thoải mái hỏi. Tiếng Nhật hay tiếng Nhật giọng Việt cũng được.)* |
| Yamamoto | はい！よろしくお<ruby>願<rt>ねが</rt></ruby>いします、タイ<ruby>係長<rt>かかりちょう</rt></ruby>。<br>*(Vâng! Mong anh chỉ bảo, trưởng nhóm Thái.)* |
| Thái | 「タイさん」でいいよ。<ruby>呼<rt>よ</rt></ruby>びやすい<ruby>方<rt>ほう</rt></ruby>で。<br>*(Cứ gọi "anh Thái" là được. Gọi sao em thấy dễ thì gọi.)* |

---

## Tình huống 5 — Phòng họp · 14:00, điều phối họp đa quốc tịch và đọc bản vẽ kỹ thuật

| Vai | Lời thoại |
|---|---|
| Thái | みなさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>本日<rt>ほんじつ</rt></ruby>はEV<ruby>電池<rt>でんち</rt></ruby>ケース<ruby>案件<rt>あんけん</rt></ruby>のキックオフです。<ruby>仕様書<rt>しようしょ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>していきましょう。<br>*(Mọi người vất vả rồi. Hôm nay là buổi kick-off dự án vỏ pin EV. Chúng ta cùng kiểm tra bản vẽ kỹ thuật nhé.)* |
| Adi | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>て）うわ、<ruby>大<rt>おお</rt></ruby>きいですね！<ruby>今<rt>いま</rt></ruby>までで<ruby>一番<rt>いちばん</rt></ruby><ruby>大<rt>おお</rt></ruby>きいです。<br>*(Nhìn bản vẽ. Ôi, to thật ạ! Lớn nhất từ trước đến giờ.)* |
| Long | （<ruby>小<rt>ちい</rt></ruby>さい<ruby>声<rt>こえ</rt></ruby>で、ベトナム<ruby>語<rt>ご</rt></ruby>でThái に）Anh ơi, vỏ pin xe điện thực ra là gì hả anh? Em chưa làm bao giờ.<br>*(Bằng tiếng Việt nói nhỏ.)* |
| Thái | （ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>答<rt>こた</rt></ruby>えてから<ruby>日本語<rt>にほんご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>す）Là cái vỏ nhựa bọc các cell pin trong xe điện. Pin to nên vỏ to. — みなさん、ロンさんに<ruby>説明<rt>せつめい</rt></ruby>したので、<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>電池<rt>でんち</rt></ruby>ケースとは、EV<ruby>車<rt>しゃ</rt></ruby>の<ruby>電池<rt>でんち</rt></ruby>セルを<ruby>覆<rt>おお</rt></ruby>う<ruby>樹脂<rt>じゅし</rt></ruby><ruby>製<rt>せい</rt></ruby>の<ruby>外<rt>そと</rt></ruby><ruby>箱<rt>ばこ</rt></ruby>のことです。<br>*(Trả lời tiếng Việt rồi quay sang tiếng Nhật. — Em vừa giải thích cho Long, anh chia sẻ chung. Vỏ pin là hộp ngoài bằng nhựa bọc các cell pin của xe điện.)* |
| Sakurai | <ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つ。<ruby>絶縁性<rt>ぜつえんせい</rt></ruby>と<ruby>防水性<rt>ぼうすいせい</rt></ruby>だ。<br>*(Có hai điểm cần lưu ý. Tính cách điện và tính chống nước.)* |
| Yamamoto | （<ruby>図面<rt>ずめん</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby><ruby>欄<rt>らん</rt></ruby>を<ruby>指<rt>さ</rt></ruby>す）<ruby>樹脂<rt>じゅし</rt></ruby>はPA66-GF30 V-0ですね。<br>*(Chỉ vào ô vật liệu trên bản vẽ. Nhựa là PA66-GF30 V-0 nhỉ.)* |
| Thái | そう。<ruby>剛性<rt>ごうせい</rt></ruby>と<ruby>難燃性<rt>なんねんせい</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>するためだ。<br>*(Đúng. Để đảm bảo độ cứng và khả năng chống cháy.)* |
| Adi | すみません、PA66-GF30 V-0というのは、どんな<ruby>意味<rt>いみ</rt></ruby>ですか。<br>*(Xin lỗi, PA66-GF30 V-0 có nghĩa là gì ạ?)* |
| Thái | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。PA66はナイロン<ruby>66<rt>ろくろく</rt></ruby>、GF30は<ruby>30<rt>さんじゅう</rt></ruby>パーセントのガラス<ruby>繊維<rt>せんい</rt></ruby><ruby>強化<rt>きょうか</rt></ruby>、V-0はUL94<ruby>規格<rt>きかく</rt></ruby>の<ruby>最高<rt>さいこう</rt></ruby><ruby>難燃<rt>なんねん</rt></ruby>クラスです。<br>*(Câu hỏi hay. PA66 là nylon-66, GF30 là gia cường 30% sợi thuỷ tinh, V-0 là cấp chống cháy cao nhất theo tiêu chuẩn UL94.)* |
| Adi | なるほど、<ruby>燃<rt>も</rt></ruby>えにくい<ruby>強<rt>つよ</rt></ruby>いナイロン、ということですね。<br>*(Ra vậy, nylon cứng khó cháy đúng không ạ.)* |
| Thái | そういうことです。<br>*(Đúng vậy.)* |

---

## Tình huống 6 — Phòng họp · 15:00, trình bày kế hoạch theo mốc マイルストーン

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>の<ruby>大<rt>おお</rt></ruby>まかなマイルストーンを<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>五<rt>いつ</rt></ruby>つあります。<br>*(Em xin chia sẻ cột mốc tổng thể trong 6 tháng. Có năm mốc.)* |
| Thái | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>5<rt>ご</rt></ruby>～<ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>は<ruby>設計<rt>せっけい</rt></ruby>と<ruby>流動<rt>りゅうどう</rt></ruby>シミュレーション。<br>*(Mốc một, tháng 5-6 là thiết kế và mô phỏng dòng chảy nhựa.)* |
| Thái | <ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>7<rt>しち</rt></ruby>～<ruby>8<rt>はち</rt></ruby><ruby>月<rt>がつ</rt></ruby>は<ruby>機械<rt>きかい</rt></ruby><ruby>加工<rt>かこう</rt></ruby>です。<br>*(Mốc hai, tháng 7-8 là gia công cơ khí.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>月<rt>がつ</rt></ruby>は<ruby>仕上<rt>しあ</rt></ruby>げと<ruby>組立<rt>くみたて</rt></ruby>。<br>*(Mốc ba, tháng 9 là hoàn thiện và lắp ráp.)* |
| Thái | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>はファーストトライアル、つまり<ruby>初回<rt>しょかい</rt></ruby><ruby>成形<rt>せいけい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です。<br>*(Mốc bốn, tháng 10 là first trial, tức là thử ép lần đầu.)* |
| Thái | <ruby>五<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>は<ruby>修正<rt>しゅうせい</rt></ruby>と<ruby>客先<rt>きゃくさき</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>です。<br>*(Mốc năm, tháng 11 là chỉnh sửa và khách hàng duyệt.)* |
| Sakurai | スケジュールは<ruby>厳<rt>きび</rt></ruby>しいな。<ruby>余裕<rt>よゆう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ない。<br>*(Lịch trình gắt đấy. Ít dự phòng.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しています。だからこそ<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>進捗<rt>しんちょく</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>きます。<ruby>遅<rt>おく</rt></ruby>れがあったらその<ruby>場<rt>ば</rt></ruby>で<ruby>報連相<rt>ほうれんそう</rt></ruby>してください。<br>*(Vâng, em rõ ạ. Chính vì vậy em mở họp tiến độ vào 15h thứ Sáu hàng tuần. Có chậm chỗ nào thì 報連相 ngay trên buổi đó.)* |
| Yamamoto | はい！<br>*(Vâng ạ!)* |
| Adi | <ruby>分<rt>わ</rt></ruby>かりました、リーダー。<br>*(Em rõ, trưởng nhóm.)* |
| Hùng | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |
| Thái | では、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, cùng cố gắng nhé. Mong cả nhà giúp đỡ.)* |

---

## Tình huống 7 — Bàn làm việc Sakurai · 17:00, quan sát đàn anh feedback cách điều phối

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>の<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>、なかなか<ruby>良<rt>よ</rt></ruby>かったよ。<br>*(Thái này, cách em dẫn dắt ngày đầu cũng khá ổn đấy.)* |
| Thái | ありがとうございます。<ruby>気<rt>き</rt></ruby>になった<ruby>点<rt>てん</rt></ruby>はありませんでしたか。<br>*(Em cảm ơn anh. Có điểm nào anh thấy lăn tăn không ạ?)* |
| Sakurai | <ruby>一<rt>ひと</rt></ruby>つだけ。マイルストーンを<ruby>説明<rt>せつめい</rt></ruby>するとき、<ruby>専門用語<rt>せんもんようご</rt></ruby>をそのまま<ruby>使<rt>つか</rt></ruby>っていたね。「ファーストトライアル」とか。<br>*(Một điểm thôi. Lúc em trình mốc, em dùng nguyên thuật ngữ chuyên môn, ví dụ "first trial".)* |
| Thái | あ、ロンさんとフンさんはまだ<ruby>聞<rt>き</rt></ruby>いたことがないかもしれません。<br>*(À, Long và Hùng có thể chưa từng nghe.)* |
| Sakurai | そう。<ruby>用語<rt>ようご</rt></ruby>を<ruby>言<rt>い</rt></ruby>った<ruby>直後<rt>ちょくご</rt></ruby>に「つまり〜」と<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>言<rt>い</rt></ruby>い<ruby>換<rt>か</rt></ruby>えると、<ruby>外国人<rt>がいこくじん</rt></ruby>メンバーも<ruby>新人<rt>しんじん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じスピードで<ruby>付<rt>つ</rt></ruby>いてこられる。<br>*(Đúng. Vừa nói thuật ngữ là thêm "つまり〜" (tức là) giải thích bằng tiếng Nhật đơn giản — vậy người nước ngoài lẫn tân binh cùng theo kịp.)* |
| Thái | なるほど、「つまり<ruby>初回<rt>しょかい</rt></ruby><ruby>成形<rt>せいけい</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です」と<ruby>言<rt>い</rt></ruby>えばよかったということですね。<br>*(Ra vậy, ý anh là em nên nói "つまり初回成形試験です" đúng không?)* |
| Sakurai | そうそう。タイ<ruby>君<rt>くん</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>が<ruby>苦労<rt>くろう</rt></ruby>した<ruby>経験<rt>けいけん</rt></ruby>があるから、それを<ruby>活<rt>い</rt></ruby>かせばいい。<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>係長<rt>かかりちょう</rt></ruby>になれるよ。<br>*(Đúng vậy. Em có kinh nghiệm từng vất vả thì tận dụng cái đó. Em sẽ thành một trưởng nhóm ra trò.)* |
| Thái | はい、ありがとうございます。<ruby>明日<rt>あした</rt></ruby>からそうします。<br>*(Vâng, em cảm ơn anh. Từ mai em sẽ làm vậy.)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, gọi video về cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh, mặt anh hôm nay khác hẳn. Có chuyện gì hả? |
| Thái | (tiếng Việt) Em đoán xem. Hôm nay sếp Kawakami giao cho anh dẫn dự án vỏ pin xe điện cho Toyota. Khuôn lớn nhất nhà máy từ trước tới giờ, 1500×1000 milimet. |
| Mai | (tiếng Việt) Trời ơi, dự án to thế! Anh làm trưởng nhóm hả? |
| Thái | (tiếng Việt) Ừ, chính thức 設計係長 — trưởng nhóm thiết kế. Đội năm người, có cả bạn người Nhật mới ra trường, Yamamoto, học Đại học Nagoya. Anh phải kèm cả bạn ấy luôn. |
| Mai | (tiếng Việt) Anh kèm người Nhật à? Vui đấy. Bốn năm trước anh còn ngơ ngác hỏi 二次サプライヤー nghĩa là gì kia mà. |
| Thái | (tiếng Việt) Đúng rồi. Hôm nay anh cũng phải giải thích PA66-GF30 V-0 cho Adi — nhựa nylon gia cường sợi thuỷ tinh ba mươi phần trăm, chống cháy V-0. Nhớ lại ngày đầu mình nghe キャビコア cũng há hốc mồm. |
| Mai | (tiếng Việt) Vậy là anh đã thành senpai của senpai rồi. Có áp lực không? |
| Thái | (tiếng Việt) Áp lực chứ. Sáu tháng năm cột mốc, không có dự phòng. Mà anh Sakurai góp ý hay lắm: nói thuật ngữ xong phải thêm "つまり〜" giải thích đơn giản, để cả người nước ngoài lẫn người Nhật mới cùng theo kịp. Anh sẽ áp dụng từ mai. |
| Mai | (tiếng Việt) Em ghi nhớ rồi. À, đám cưới cuối năm mình vẫn giữ chứ? |
| Thái | (tiếng Việt) Giữ chứ. Anh sẽ tính lịch sao cho mốc thử khuôn tháng 10 xong xuôi thì xin nghỉ về cưới. Hai việc song song, anh làm được. |
| Mai | (tiếng Việt) Em tin anh. Ngủ sớm đi, mai 報連相 cho cả đội nữa. |
| Thái | (tiếng Việt) Ừ. Chúc em ngủ ngon. |

---

## Đọng lại chương 1

Ngày kick-off dự án EV, Thái lần đầu khoác vai trò **設計係長** và học các mẫu câu một trưởng nhóm Nhật-ngữ phải dùng ngay: **nghe brief và xác nhận thông số** (〜ということですね・確認させてください), **nhận lệnh trang trọng** (謹んでお受けします), **hỏi lại lễ phép về thành viên mới** (〜というのは、どんな方ですか), **tự giới thiệu vai trò 係長 với tân binh người Nhật** (〜を務めます・メンターも担当します), **điều phối họp đa quốc tịch** (đan xen JP-VN, rồi tóm tắt lại bằng JP cho cả nhóm), **giải thích ký hiệu vật liệu chuyên ngành** (PA66-GF30 V-0 → ナイロン66・ガラス繊維30%・難燃クラスV-0), **trình bày kế hoạch theo mốc** (一つ目・二つ目・三つ目…), và **mở chu kỳ 報連相 hàng tuần** (毎週金曜15時に進捗会議). Đồng thời nhận bài học từ Sakurai: thuật ngữ chuyên môn phải gắn liền với "つまり〜" để đội đa quốc tịch theo kịp — đó là phẩm chất của một 係長 vừa hiểu người nước ngoài vừa hiểu người Nhật.

> Từ vựng & mẫu câu chương này: 案件・キックオフ・EV電池ケース・金型・過去最大・納期・設計係長・新卒入社・メンター・指導・配属・仕様書・図面・絶縁性・防水性・剛性・難燃性・樹脂・PA66-GF30 V-0・ナイロン66・ガラス繊維・UL94・マイルストーン・流動シミュレーション・機械加工・仕上げ・組立・ファーストトライアル・初回成形試験・客先承認・進捗会議・報連相・つまり〜・〜ということですね・確認させてください・謹んでお受けします・〜を務めます

## Bí quyết chương

- **Setup arc năm 5**: Thái chính thức 係長, vừa kèm 外国人 vừa kèm 新卒 — payoff cuối sách 18.
- **Yamamoto Kenta**: tân binh Nhật, 25 tuổi, Đại học Nagoya Khoa Cơ khí — sẽ là 後輩 lặp xuyên năm cuối.
- **Adi (SSW Indonesia)** + **Long, Hùng (TTS Việt)**: đội đa quốc tịch để Thái áp dụng kỹ năng điều phối học từ Putra hồi sách 14.
- **Đám cưới Mai cuối năm**: song song mốc tháng 10 first trial — gài cho chương cuối sách.

> *"5/2026. Ngày kick-off. Năm năm trước anh hỏi 二次サプライヤー nghĩa là gì. Hôm nay anh dạy Adi PA66-GF30 V-0."*', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000002, 800000018, NULL, 'markdown_book', 'T2. Dẫn dắt đội 5 người (チーム5名リード)', '# Sách kỹ sư khuôn đúc · T2. Dẫn dắt đội 5 người (チーム5名リード)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Hà Nội — đã 4 năm tại Anjo) lần đầu làm trưởng nhóm 5 người (1 tân binh Nhật Yamamoto mới ra trường, đồng nghiệp lâu năm Sakurai, 2 đàn em Việt Long-Hùng, 1 cao thủ mài Indo Adi). Học các mẫu hội thoại tiếng Nhật của vai trò リーダー (trưởng nhóm) trong nhà máy khuôn đúc: điều hành **週次ミーティング**, hỏi tiến độ **進捗** từng người, làm **1on1** kiểu coach với đàn em yếu kỹ năng, khen ngợi đúng cách (褒める), nhận **フィードバック** từ tiền bối, hỏi lại lễ phép khi chưa rõ chuyên ngành (〜というのは?), và xen kẽ scene tiếng Việt với đàn em đồng hương để mài giũa văn hoá quản lý song ngữ.

---

## Bối cảnh

Tháng 6 năm 2026. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo, Aichi được 4 năm, vừa được bổ nhiệm trưởng nhóm 5 người trong xưởng khuôn nhựa. Trình độ tiếng Nhật N2, dùng được kính ngữ và 普通形 với đàn em. Chương này tập trung các mẫu câu giao tiếp của vai trò リーダー: chủ trì họp tuần, hỏi tiến độ, coach 1-on-1, khen-feedback, và nhận feedback ngược từ 先輩 Sakurai.

---

## Tình huống 1 — Phòng họp xưởng · Thứ Hai 8:30, chủ trì 週次ミーティング và hỏi 進捗 từng người

| Vai | Lời thoại |
|---|---|
| Thái | みんな、おはよう。<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>週次<rt>しゅうじ</rt></ruby>ミーティングを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>各自<rt>かくじ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ずつ、<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>と<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cả nhóm, chào buổi sáng. Bắt đầu họp tuần. Mỗi người 5 phút, báo tiến độ tuần trước và kế hoạch tuần này.)* |
| Sakurai | じゃあ<ruby>俺<rt>おれ</rt></ruby>から。<ruby>先週<rt>せんしゅう</rt></ruby>はキャビ<ruby>側<rt>がわ</rt></ruby>の3Dモデルを<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>今週<rt>こんしゅう</rt></ruby>はトヨタ<ruby>車体<rt>しゃたい</rt></ruby>への<ruby>図面<rt>ずめん</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>です。<br>*(Để tôi báo trước. Tuần rồi tôi hoàn thành mô hình 3D phía khuôn cái. Tuần này nộp bản vẽ cho Toyota Shatai.)* |
| Thái | はい、ありがとうございます。<ruby>提出<rt>ていしゅつ</rt></ruby>は<ruby>金曜<rt>きんよう</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>締<rt>し</rt></ruby>めですよね。<ruby>木曜<rt>もくよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Vâng, cảm ơn anh. Hạn nộp là thứ Sáu 15h đúng không ạ. Chiều thứ Năm cho em cùng kiểm tra một lần ạ.)* |
| Sakurai | <ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Rõ.)* |
| Yamamoto | じゃ<ruby>次<rt>つぎ</rt></ruby>は<ruby>僕<rt>ぼく</rt></ruby>です。コア<ruby>側<rt>がわ</rt></ruby>の3Dモデルが<ruby>50<rt>ごじゅっ</rt></ruby>パーセントです。<ruby>今週<rt>こんしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>80<rt>はちじゅっ</rt></ruby>パーセントまで<ruby>持<rt>も</rt></ruby>っていきたいです。<br>*(Tiếp đến em ạ. Mô hình 3D phía khuôn đực được 50%. Tuần này em muốn đẩy lên 80%.)* |
| Thái | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>50<rt>ごじゅっ</rt></ruby>パーセントというのは、<ruby>外形<rt>がいけい</rt></ruby>まで?それとも<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水<rt>すい</rt></ruby><ruby>管<rt>かん</rt></ruby>も<ruby>入<rt>はい</rt></ruby>っていますか?<br>*(Anh Yamamoto, 50% là tới đâu nhỉ — tới ngoại hình thôi hay đã có cả đường nước làm mát rồi?)* |
| Yamamoto | <ruby>外形<rt>がいけい</rt></ruby>までです。<ruby>水<rt>すい</rt></ruby><ruby>管<rt>かん</rt></ruby>はまだです。<br>*(Mới tới ngoại hình. Đường nước thì chưa.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>水管<rt>すいかん</rt></ruby>のレイアウトは<ruby>後<rt>あと</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ましょう。Long、Hùng、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hiểu rồi. Bố cục đường nước lát mình xem chung. — Long, Hùng, mời em.)* |
| Long | はい。<ruby>先週<rt>せんしゅう</rt></ruby>は<ruby>800<rt>はっぴゃく</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>きで<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げました。<ruby>今週<rt>こんしゅう</rt></ruby>は<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>番<rt>ばん</rt></ruby>に<ruby>進<rt>すす</rt></ruby>みます。<br>*(Vâng. Tuần rồi em mài #800 xong 5 chi tiết. Tuần này tiến lên #1200.)* |
| Hùng | <ruby>僕<rt>ぼく</rt></ruby>は<ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby>のバリ<ruby>取<rt>と</rt></ruby>りと<ruby>寸法<rt>すんぽう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<ruby>不良<rt>ふりょう</rt></ruby>はゼロです。<br>*(Em gỡ ba via và đo kích thước xong 10 chi tiết. Không có hàng lỗi.)* |
| Thái | おお、<ruby>不良<rt>ふりょう</rt></ruby>ゼロ?すごいね、Hùng。<br>*(Ồ, không lỗi nào hả? Giỏi đấy, Hùng.)* |
| Adi | <ruby>俺<rt>おれ</rt></ruby>は<ruby>鏡面<rt>きょうめん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げを<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>終<rt>お</rt></ruby>えました。<ruby>今週<rt>こんしゅう</rt></ruby>はあと<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>やります。<br>*(Em đánh bóng gương xong 2 chỗ. Tuần này làm thêm 2 chỗ nữa.)* |
| Thái | みんな<ruby>順調<rt>じゅんちょう</rt></ruby>だね。<ruby>困<rt>こま</rt></ruby>っていることや<ruby>相談<rt>そうだん</rt></ruby>したいことがあれば<ruby>今<rt>いま</rt></ruby><ruby>言<rt>い</rt></ruby>ってください。<br>*(Mọi người đều thuận lợi. Có gì khó khăn hay muốn bàn bạc thì nói ngay bây giờ.)* |
| Yamamoto | あとで<ruby>個別<rt>こべつ</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Lát em xin được nói riêng ạ.)* |
| Thái | はい、<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>に1on1で。じゃあ<ruby>今週<rt>こんしゅう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, 14h gặp 1-1. Vậy tuần này cùng cố gắng.)* |

---

## Tình huống 2 — Sàn xưởng · 9:00, quan sát đàn anh Sakurai chỉ điểm kiểm tra bản vẽ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いいですか?トヨタ<ruby>車体<rt>しゃたい</rt></ruby>への<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>のチェックの<ruby>仕方<rt>かた</rt></ruby>、<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<br>*(Anh Sakurai, anh rảnh chút không? Cho em học cách kiểm tra bản vẽ trước khi nộp cho Toyota Shatai với ạ.)* |
| Sakurai | いいよ。リーダーになったから<ruby>覚<rt>おぼ</rt></ruby>えておいたほうがいい。<ruby>俺<rt>おれ</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つの<ruby>視点<rt>してん</rt></ruby>で<ruby>見<rt>み</rt></ruby>る。<br>*(Được chứ. Thành trưởng nhóm rồi thì nên nhớ. Tôi nhìn theo ba góc nhìn.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つですか。<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Ba góc nhỉ. Anh chỉ em với.)* |
| Sakurai | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>寸法<rt>すんぽう</rt></ruby>と<ruby>公差<rt>こうさ</rt></ruby>。<ruby>図面<rt>ずめん</rt></ruby><ruby>全<rt>ぜん</rt></ruby><ruby>体<rt>たい</rt></ruby>で<ruby>公差<rt>こうさ</rt></ruby>の<ruby>記載<rt>きさい</rt></ruby><ruby>漏<rt>も</rt></ruby>れがないか。<br>*(Thứ nhất là kích thước và dung sai. Toàn bản vẽ có sót ghi dung sai chỗ nào không.)* |
| Thái | <ruby>公差<rt>こうさ</rt></ruby>...というのは<ruby>許容<rt>きょよう</rt></ruby><ruby>誤差<rt>ごさ</rt></ruby>のことですよね?<br>*(Kousa... là sai số cho phép phải không ạ?)* |
| Sakurai | そう。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>材質<rt>ざいしつ</rt></ruby>と<ruby>熱処理<rt>ねつしょり</rt></ruby>の<ruby>指示<rt>しじ</rt></ruby>。SKD11なのかNAK80なのか<ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>く。<br>*(Đúng. Thứ hai là chỉ định vật liệu và xử lý nhiệt. SKD11 hay NAK80 phải ghi rõ.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Còn thứ ba?)* |
| Sakurai | <ruby>金型<rt>かながた</rt></ruby>の<ruby>抜<rt>ぬ</rt></ruby>き<ruby>勾配<rt>こうばい</rt></ruby>。<ruby>樹脂<rt>じゅし</rt></ruby>がちゃんと<ruby>抜<rt>ぬ</rt></ruby>けるかどうか。これを<ruby>忘<rt>わす</rt></ruby>れると<ruby>現場<rt>げんば</rt></ruby>で<ruby>泣<rt>な</rt></ruby>く。<br>*(Độ vát của khuôn. Nhựa có thoát ra được không. Quên cái này là khóc tại hiện trường.)* |
| Thái | なるほど。<ruby>寸法<rt>すんぽう</rt></ruby>・<ruby>公差<rt>こうさ</rt></ruby>、<ruby>材質<rt>ざいしつ</rt></ruby>・<ruby>熱処理<rt>ねつしょり</rt></ruby>、<ruby>抜<rt>ぬ</rt></ruby>き<ruby>勾配<rt>こうばい</rt></ruby>ですね。メモします。<br>*(Hiểu rồi. Kích thước-dung sai, vật liệu-xử lý nhiệt, độ vát. Em ghi lại.)* |
| Sakurai | チームの<ruby>図面<rt>ずめん</rt></ruby>もこの<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>見<rt>み</rt></ruby>てやれば、メンバーが<ruby>育<rt>そだ</rt></ruby>つよ。<br>*(Bản vẽ của thành viên cũng xem theo thứ tự này thì người ta sẽ trưởng thành lên.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |

---

## Tình huống 3 — Phòng họp nhỏ · 14:00, 1on1 coach Yamamoto về tốc độ CAD

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>山本<rt>やまもと</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>朝<rt>あさ</rt></ruby><ruby>言<rt>い</rt></ruby>っていた<ruby>相談<rt>そうだん</rt></ruby>って、CADの<ruby>速度<rt>そくど</rt></ruby>のこと?<br>*(Anh Yamamoto, vất vả rồi. Chuyện muốn bàn sáng giờ là về tốc độ CAD à?)* |
| Yamamoto | はい…<ruby>大学<rt>だいがく</rt></ruby>でCADはやったんですが、<ruby>仕事<rt>しごと</rt></ruby>のレベルになると<ruby>難<rt>むずか</rt></ruby>しくて。<ruby>同期<rt>どうき</rt></ruby>に<ruby>負<rt>ま</rt></ruby>けている<ruby>気<rt>き</rt></ruby>がして。<br>*(Vâng… Hồi đại học em có học CAD nhưng tới mức công việc thì khó quá. Cảm giác em đang thua bạn cùng đợt.)* |
| Thái | <ruby>普通<rt>ふつう</rt></ruby>のことだよ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>かかったから。<br>*(Bình thường mà. Anh cũng mất 3 tháng.)* |
| Yamamoto | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>も…でもタイさんは<ruby>外国人<rt>がいこくじん</rt></ruby>で、<ruby>言葉<rt>ことば</rt></ruby>のハンディもあったのに。<br>*(Tận 3 tháng cơ ạ… Nhưng anh là người nước ngoài, lại có rào cản ngôn ngữ nữa mà.)* |
| Thái | <ruby>言葉<rt>ことば</rt></ruby>のハンディがあったから、<ruby>余計<rt>よけい</rt></ruby>に<ruby>手<rt>て</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かして<ruby>覚<rt>おぼ</rt></ruby>えた。<ruby>山本<rt>やまもと</rt></ruby>さんは<ruby>言葉<rt>ことば</rt></ruby>がある<ruby>分<rt>ぶん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>より<ruby>早<rt>はや</rt></ruby>くなれると<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Vì có rào cản ngôn ngữ, anh càng phải động tay nhiều mà nhớ. Em có lợi thế ngôn ngữ, anh nghĩ em sẽ nhanh hơn anh đó.)* |
| Yamamoto | そう<ruby>言<rt>い</rt></ruby>ってもらえると<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になります。<br>*(Anh nói vậy em đỡ áp lực hơn.)* |
| Thái | <ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>提案<rt>ていあん</rt></ruby>します。<ruby>毎日<rt>まいにち</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えるよ。ショートカットキーから<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Anh đề xuất cụ thể. Mỗi chiều 1 tiếng, anh sẽ ngồi cạnh chỉ. Bắt đầu từ phím tắt nhé.)* |
| Yamamoto | ありがとうございます!<br>*(Em cảm ơn anh ạ!)* |
| Thái | それから、<ruby>無理<rt>むり</rt></ruby>な<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>立<rt>た</rt></ruby>てない。<ruby>今<rt>こん</rt></ruby><ruby>週<rt>しゅう</rt></ruby>の<ruby>80<rt>はちじゅっ</rt></ruby>パーセントも、<ruby>難<rt>むずか</rt></ruby>しければ<ruby>70<rt>ななじゅっ</rt></ruby>パーセントに<ruby>下<rt>さ</rt></ruby>げてもいい。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれたほうが<ruby>助<rt>たす</rt></ruby>かる。<br>*(Và đừng đặt mục tiêu quá sức. 80% tuần này nếu khó cứ hạ xuống 70%. Em nói thật thì anh dễ hỗ trợ hơn.)* |
| Yamamoto | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 4 — Góc nghỉ xưởng · 15:00, hỏi lại Adi về thuật ngữ mài chuyên ngành

| Vai | Lời thoại |
|---|---|
| Thái | アディ、ちょっと<ruby>教<rt>おし</rt></ruby>えてほしいことがあるんだけど。<ruby>磨<rt>みが</rt></ruby>きの<ruby>用語<rt>ようご</rt></ruby>で「<ruby>共擦<rt>ともず</rt></ruby>り」って<ruby>聞<rt>き</rt></ruby>いたことある?<br>*(Adi, có chuyện anh muốn em chỉ. Trong từ vựng mài, có nghe từ "tomozuri" bao giờ chưa?)* |
| Adi | はい、ありますよ。キャビとコアを<ruby>合<rt>あ</rt></ruby>わせて<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>磨<rt>みが</rt></ruby>くことです。<ruby>面<rt>めん</rt></ruby>がきれいに<ruby>合<rt>あ</rt></ruby>うんです。<br>*(Vâng, có ạ. Là ghép khuôn cái và khuôn đực lại để mài cùng nhau. Mặt sẽ khít đẹp.)* |
| Thái | なるほど、「<ruby>共<rt>とも</rt></ruby>に<ruby>擦<rt>す</rt></ruby>る」ということだね。<ruby>何<rt>なん</rt></ruby><ruby>番<rt>ばん</rt></ruby>ぐらいの<ruby>砥石<rt>といし</rt></ruby>でやるの?<br>*(Ra là "cùng nhau mài". Dùng đá mài cỡ số mấy thế em?)* |
| Adi | <ruby>仕上<rt>しあ</rt></ruby>げの<ruby>段階<rt>だんかい</rt></ruby>なので<ruby>1500<rt>せんごひゃく</rt></ruby><ruby>番<rt>ばん</rt></ruby>から<ruby>3000<rt>さんぜん</rt></ruby><ruby>番<rt>ばん</rt></ruby>です。<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れすぎないのがコツです。<br>*(Giai đoạn hoàn thiện nên từ #1500 đến #3000. Bí quyết là đừng nhấn quá mạnh.)* |
| Thái | <ruby>俺<rt>おれ</rt></ruby>は<ruby>設計<rt>せっけい</rt></ruby><ruby>畑<rt>ばたけ</rt></ruby>だから<ruby>磨<rt>みが</rt></ruby>きの<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>素人<rt>しろうと</rt></ruby>でね。アディに<ruby>聞<rt>き</rt></ruby>けてよかった。<br>*(Anh xuất thân thiết kế nên thực hành mài thì gà mờ. May mà hỏi được em.)* |
| Adi | リーダーが<ruby>聞<rt>き</rt></ruby>いてくれると<ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>俺<rt>おれ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にしてくれている<ruby>感<rt>かん</rt></ruby>じがします。<br>*(Trưởng nhóm hỏi thì em vui ạ. Cảm giác công việc của em được trân trọng.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く ─ <ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>教<rt>おし</rt></ruby>わったことだよ。<br>*(Có gì không hiểu phải hỏi — đó là điều trưởng nhà máy dạy anh 4 năm trước.)* |

---

## Tình huống 5 — Phòng họp nhỏ · 17:00, 1on1 với Long và Hùng (kỹ năng coach bằng tiếng Nhật khi cần)

| Vai | Lời thoại |
|---|---|
| Thái | Long、Hùng、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>始<rt>はじ</rt></ruby>めようか、ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>始<rt>はじ</rt></ruby>めようか?<br>*(Long, Hùng, vất vả rồi. Bắt đầu bằng tiếng Nhật hay tiếng Việt?)* |
| Long | <ruby>練習<rt>れんしゅう</rt></ruby>のために<ruby>日本語<rt>にほんご</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Để luyện thì cho em bằng tiếng Nhật ạ.)* |
| Thái | じゃあ<ruby>日本語<rt>にほんご</rt></ruby>で。<ruby>分<rt>わ</rt></ruby>からないところはベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いてね。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>技能検定<rt>ぎのうけんてい</rt></ruby><ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>はどう?<br>*(Vậy bằng tiếng Nhật. Chỗ nào không hiểu thì hỏi tiếng Việt nhé. Chuẩn bị thi 技能検定 cơ khí cấp 3 năm sau thế nào?)* |
| Hùng | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めるつもりです。<br>*(Tuần sau bọn em sẽ bắt đầu làm đề cũ.)* |
| Thái | いいね。<ruby>過去問<rt>かこもん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby><ruby>最低<rt>さいてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>ずつ<ruby>解<rt>と</rt></ruby>くこと。<ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じやり<ruby>方<rt>かた</rt></ruby>で<ruby>受<rt>う</rt></ruby>かった。<br>*(Tốt. Đề cũ 3 năm, mỗi đề giải ít nhất 3 lần. Anh cũng đỗ bằng cách đó.)* |
| Long | (qua VN) Anh ơi, có chỗ em không hiểu. Cho em hỏi tiếng Việt được không?<br>*(...)* |
| Thái | (VN) Ừ, em hỏi đi. |
| Long | (VN) "技能検定" là thi tay nghề quốc gia phải không anh? Bao nhiêu phần lý thuyết, bao nhiêu phần thực hành ạ? |
| Thái | (VN) Đúng rồi. Cấp 3 thì lý thuyết 60 phút trắc nghiệm với câu hỏi ngắn, thực hành 2 tiếng tại xưởng. Anh có bộ tài liệu cũ, tối nay gửi vào nhóm LINE. |
| Hùng | (VN) Anh ơi, em hơi sợ phần thực hành đo kích thước bằng panme. |
| Thái | (VN) Cái đó dễ luyện, mỗi tối nửa tiếng tại xưởng. Anh xin phép trưởng nhà máy cho hai đứa ở lại đo. |
| Thái | じゃあ、<ruby>日本語<rt>にほんご</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>すね。<ruby>勉強<rt>べんきょう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>残業<rt>ざんぎょう</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>だから、<ruby>無理<rt>むり</rt></ruby>しないで。<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Quay lại tiếng Nhật. Giờ học khác với giờ tăng ca, đừng ép. Sức khoẻ quan trọng nhất.)* |
| Long・Hùng | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |

---

## Tình huống 6 — Sàn xưởng góc khuôn mẫu · 18:00, khen Adi đúng cách kèm kế hoạch nghề

| Vai | Lời thoại |
|---|---|
| Thái | アディ、<ruby>今日<rt>きょう</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>き<ruby>速<rt>はや</rt></ruby>かったね。<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>を<ruby>半日<rt>はんにち</rt></ruby>で<ruby>仕上<rt>しあ</rt></ruby>げるのはチームでアディだけだよ。<br>*(Adi, hôm nay em mài nhanh ghê. Trong nhóm chỉ mình em làm xong 2 chỗ trong nửa ngày.)* |
| Adi | ありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、インドネシアでも<ruby>磨<rt>みが</rt></ruby>きの<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いていました。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>近<rt>ちか</rt></ruby>く<ruby>経験<rt>けいけん</rt></ruby>があります。<br>*(Em cảm ơn anh. 2 năm trước em cũng làm ở công ty mài bên Indo. Có gần 5 năm kinh nghiệm.)* |
| Thái | おお、すごいな!じゃあアディは<ruby>研磨<rt>けんま</rt></ruby>のリーダー<ruby>候補<rt>こうほ</rt></ruby>だね。<ruby>来年<rt>らいねん</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby>に<ruby>磨<rt>みが</rt></ruby>きを<ruby>教<rt>おし</rt></ruby>えてもらえる?<br>*(Ồ, giỏi quá! Vậy em là ứng viên trưởng tổ mài rồi. Năm sau nhờ em dạy mài cho tân binh được không?)* |
| Adi | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Thật ạ? Em mừng quá.)* |
| Thái | アディの<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(Mục tiêu 5 năm nữa của em là gì?)* |
| Adi | プトラさんの<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>合流<rt>ごうりゅう</rt></ruby>したいんです。プトラさんはインドネシア<ruby>人<rt>じん</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っていて。<br>*(Em muốn về cùng công ty với anh Putra. Anh ấy đang lập công ty khuôn đúc cho người Indo.)* |
| Thái | プトラさんは<ruby>俺<rt>おれ</rt></ruby>の<ruby>同期<rt>どうき</rt></ruby>だよ!<ruby>来年<rt>らいねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう。ネットワークが<ruby>広<rt>ひろ</rt></ruby>がるね。<br>*(Anh Putra là bạn cùng đợt anh đó! Năm sau ba người mình đi nhậu. Mạng lưới đang mở rộng nhỉ.)* |
| Adi | ぜひお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Rất mong anh ạ!)* |

---

## Tình huống 7 — Phòng họp xưởng · 20:00, nhận フィードバック ngược từ tiền bối Sakurai

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しいい?リーダーになって<ruby>一<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>、フィードバックを<ruby>言<rt>い</rt></ruby>わせて。<br>*(Tai, có chút thời gian không? Em làm trưởng nhóm 1 tháng rồi, để tôi feedback chút.)* |
| Thái | (<ruby>不安<rt>ふあん</rt></ruby>そうに) はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lo lắng. Vâng, mời anh ạ.)* |
| Sakurai | まず<ruby>良<rt>よ</rt></ruby>かった<ruby>点<rt>てん</rt></ruby>。<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>と<ruby>日本人<rt>にほんじん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby>のバランスを<ruby>取<rt>と</rt></ruby>るのが<ruby>上手<rt>うま</rt></ruby>い。<ruby>言葉<rt>ことば</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えるのが<ruby>自然<rt>しぜん</rt></ruby>だね。<br>*(Trước hết là điểm tốt. Em cân bằng 3 người nước ngoài và 1 người Nhật rất khéo. Chuyển đổi ngôn ngữ tự nhiên đấy.)* |
| Thái | ありがとうございます。<ruby>俺<rt>おれ</rt></ruby>も<ruby>4<rt>よ</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>は<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>でした。みんなの<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かるんです。<br>*(Em cảm ơn anh. 4 năm trước em cũng là tân binh nước ngoài. Em hiểu cảm giác của mọi người.)* |
| Sakurai | それが<ruby>君<rt>きみ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みだ。でも<ruby>改善<rt>かいぜん</rt></ruby><ruby>点<rt>てん</rt></ruby>もある。<br>*(Đó chính là điểm mạnh của em. Nhưng cũng có điểm cần cải thiện.)* |
| Thái | はい、ぜひ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng, anh chỉ cho em với.)* |
| Sakurai | <ruby>君<rt>きみ</rt></ruby>は<ruby>優<rt>やさ</rt></ruby>しすぎる。<ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>に「<ruby>70<rt>ななじゅっ</rt></ruby>パーセントでもいい」と<ruby>言<rt>い</rt></ruby>ったでしょ?<br>*(Em hiền quá. Em nói với Yamamoto "70% cũng được" đúng không?)* |
| Thái | はい…<ruby>聞<rt>き</rt></ruby>こえていましたか。<br>*(Vâng… anh nghe được sao ạ.)* |
| Sakurai | やる<ruby>気<rt>き</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げないのは<ruby>大事<rt>だいじ</rt></ruby>だけど、<ruby>納期<rt>のうき</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るのはもっと<ruby>大事<rt>だいじ</rt></ruby>。<ruby>下<rt>さ</rt></ruby>げる<ruby>前<rt>まえ</rt></ruby>に「どうすれば<ruby>80<rt>はちじゅっ</rt></ruby>パーセントできるか」を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えてあげて。<br>*(Giữ động lực là quan trọng, nhưng giữ deadline còn quan trọng hơn. Trước khi hạ mục tiêu, hãy cùng nghĩ "làm sao đạt 80%".)* |
| Thái | <ruby>確<rt>たし</rt></ruby>かに…<ruby>逃<rt>に</rt></ruby>げ<ruby>道<rt>みち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>解決<rt>かいけつ</rt></ruby><ruby>策<rt>さく</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えるべきでした。<br>*(Đúng vậy… Trước khi tạo lối thoát, lẽ ra em nên cùng nghĩ giải pháp.)* |
| Sakurai | そう。<ruby>優<rt>やさ</rt></ruby>しさと<ruby>厳<rt>きび</rt></ruby>しさは<ruby>両立<rt>りょうりつ</rt></ruby>できる。<ruby>君<rt>きみ</rt></ruby>ならできるよ。<br>*(Đúng. Dịu dàng và nghiêm khắc có thể song hành. Em làm được mà.)* |
| Thái | ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em cảm ơn anh. Từ tuần sau em sẽ chú ý.)* |

---

## Tình huống 8 — Ký túc cũ Anjo Shinmei-cho · 22:00, gọi video về Việt Nam cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt với người yêu sắp cưới ở Hà Nội.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay làm trưởng nhóm tròn 1 tháng đúng không? |
| Thái | (tiếng Việt) Ừ em. 1 tháng. Vừa được anh Sakurai feedback xong. |
| Mai | (tiếng Việt) Khen hay chê? |
| Thái | (tiếng Việt) Cả hai. Khen anh cân bằng 3 đứa nước ngoài (Long, Hùng, Adi) với 1 cậu Nhật Yamamoto. Chê anh hiền quá, dễ cho team hạ mục tiêu (目標) trước khi nghĩ giải pháp. |
| Mai | (tiếng Việt) Hồi xưa anh cũng hay nhường người khác mà. |
| Thái | (tiếng Việt) Ừ. Mà ở Nhật, 納期 (nouki — deadline) quan trọng hơn cảm xúc. Anh phải học cách vừa dịu vừa giữ kỷ luật. |
| Mai | (tiếng Việt) Còn cậu Yamamoto kia, người Nhật mà anh phải dạy CAD á? Em nghe lạ ghê. |
| Thái | (tiếng Việt) Lạ thật. 4 năm trước anh ngồi đó học, giờ ngồi cạnh chỉ cho người Nhật. Anh dùng đúng cụm 工場長 dạy anh: "分からないことは必ず聞く" — có gì không hiểu thì phải hỏi. |
| Mai | (tiếng Việt) Trưởng nhóm là phải vậy đó. Mà anh nói chữ 報連相 hồi xưa, bây giờ anh là người nhận 報連相 rồi nhỉ. |
| Thái | (tiếng Việt) Đúng. Tuần sau anh dạy Long với Hùng ôn 技能検定 cấp 3. Hai đứa nó năm đầu, anh đỡ được tới đâu hay tới đó. |
| Mai | (tiếng Việt) Mai năm sau em sang đám cưới, anh đừng quên. Đi ngủ sớm đi, mai 8h30 lại họp tuần đấy. |
| Thái | (tiếng Việt) Ừ, anh đi nghỉ. Em ngủ ngon nhé. |

---

## Tình huống 9 — Bàn làm việc phòng 201 · 23:00, ghi nhật ký công việc trước khi ngủ (độc thoại tiếng Nhật)

| Vai | Lời thoại |
|---|---|
| Thái | (mở sổ tay, viết bằng tiếng Nhật, đọc nhỏ) <ruby>2026<rt>にせんにじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>。リーダー<ruby>就任<rt>しゅうにん</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>。<br>*(Tháng 6 năm 2026. Nhậm chức trưởng nhóm 1 tháng.)* |
| Thái | <ruby>学<rt>まな</rt></ruby>んだこと<ruby>一<rt>ひと</rt></ruby>つ: <ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>は<ruby>具体的<rt>ぐたいてき</rt></ruby>に。「<ruby>50<rt>ごじゅっ</rt></ruby>パーセント」だけでは<ruby>分<rt>わ</rt></ruby>からない。「どこまで?」と<ruby>聞<rt>き</rt></ruby>く。<br>*(Bài học 1: kiểm tra tiến độ phải cụ thể. Chỉ nói "50%" thì không hiểu. Phải hỏi "tới đâu?".)* |
| Thái | <ruby>学<rt>まな</rt></ruby>んだこと<ruby>二<rt>ふた</rt></ruby>つ: <ruby>褒<rt>ほ</rt></ruby>めるときは<ruby>事実<rt>じじつ</rt></ruby>+<ruby>未来<rt>みらい</rt></ruby>。「<ruby>速<rt>はや</rt></ruby>かった」+「<ruby>研磨<rt>けんま</rt></ruby>リーダー<ruby>候補<rt>こうほ</rt></ruby>」。<br>*(Bài học 2: khen thì kèm sự thật + tương lai. "Nhanh đấy" + "ứng viên trưởng tổ mài".)* |
| Thái | <ruby>学<rt>まな</rt></ruby>んだこと<ruby>三<rt>みっ</rt></ruby>つ: <ruby>優<rt>やさ</rt></ruby>しさだけでは<ruby>納期<rt>のうき</rt></ruby>は<ruby>守<rt>まも</rt></ruby>れない。<ruby>逃<rt>に</rt></ruby>げ<ruby>道<rt>みち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>解決<rt>かいけつ</rt></ruby><ruby>策<rt>さく</rt></ruby>。<br>*(Bài học 3: chỉ hiền không giữ được deadline. Tạo lối thoát thì trước hết phải nghĩ giải pháp.)* |
| Thái | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>: <ruby>山本<rt>やまもと</rt></ruby>さんの<ruby>80<rt>はちじゅっ</rt></ruby>パーセントを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>達成<rt>たっせい</rt></ruby>する。お<ruby>休<rt>やす</rt></ruby>みなさい。<br>*(Mục tiêu tuần sau: cùng Yamamoto đạt 80%. Chúc ngủ ngon.)* |

---

## Đọng lại chương 2

Tháng thứ nhất với vai trò リーダー, Thái học được các mẫu câu của một trưởng nhóm trong nhà máy khuôn đúc Nhật: chủ trì **週次ミーティング** (各自5分ずつ・進捗と予定), hỏi tiến độ cụ thể bằng câu **〜というのは、どこまでですか?**, **quan sát tiền bối Sakurai** chỉ cách kiểm tra bản vẽ theo ba góc nhìn (寸法・公差, 材質・熱処理, 抜き勾配), **coach 1on1** với Yamamoto bằng giọng đồng cảm (普通のことだよ・無理な目標は立てない), **hỏi lại lễ phép** Adi về thuật ngữ chuyên ngành 共擦り (〜って聞いたことある?), **khen Adi** bằng cấu trúc "sự thật + tương lai nghề" (研磨リーダー候補), và đặc biệt là biết **nhận フィードバック ngược** từ Sakurai (改善点もある・優しすぎる・逃げ道を作る前に解決策). Văn hoá リーダー Nhật: 優しさ và 厳しさ song hành, **納期** không được hy sinh vì cảm xúc, **報連相** vẫn là nguyên tắc cốt lõi nhưng giờ Thái là người nhận thay vì gửi.

> Từ vựng & mẫu câu chương này: 週次ミーティング・進捗・予定・1on1・フィードバック・改善点・納期・公差・寸法・材質・熱処理・抜き勾配・鏡面仕上げ・共擦り・砥石・研磨・技能検定・機械加工・過去問・残業・目標・解決策・逃げ道・順調・不安・強み・気持ちが分かる・〜というのは?・〜って聞いたことある?・無理な目標は立てない・優しさと厳しさは両立できる

---

## Bí quyết chương

- **Arc 5 năm payoff**: Thái từ tân binh ngồi cạnh Putra (T1 sách 14) → trưởng nhóm dẫn dắt cả người Nhật (T2 sách 18). Cùng câu "分からないことは必ず聞く" — lúc nhận, lúc cho.
- **Mạng lưới quốc tế**: Adi muốn về cùng công ty Putra → 3 người Indo-Việt khoá nhau xuyên 2 thập kỷ.
- **Mai sang Nhật**: setup đám cưới sách 19 (year 5+).

> *"6/2026. リーダー 1 tháng. 優しさ + 厳しさ. 納期は感情より重い."*', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000003, 800000018, NULL, 'markdown_book', 'T3. Khủng hoảng lỗi đầu tiên (初不良危機)', '# Sách kỹ sư khuôn đúc · T3. Khủng hoảng lỗi đầu tiên (初不良危機)

> **Mục tiêu nhân vật:** Thái (27 tuổi, 設計係長 — trưởng nhóm thiết kế) đối mặt lần đầu khủng hoảng lỗi sản phẩm khi thử khuôn vỏ pin xe điện cho khách. Học các mẫu hội thoại tiếng Nhật bậc quản lý trẻ trong sự cố chất lượng: **báo cáo khẩn cho cấp trên** (報告), **xin lỗi formal với khách hàng qua điện thoại** (大変申し訳ございません), **dẫn dắt họp khẩn 4M分析** (Man/Machine/Material/Method), **hỏi lại + xác nhận ý kiến đàn anh** (〜というのは?・〜ということですね), **quan sát cách 課長 phản ứng trước sự cố**, và **giao nhiệm vụ cho team** (〜をお願いします・〜してもらえますか).

---

## Bối cảnh

Tháng 10 năm 2026. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo, Aichi được 4 năm rưỡi, vừa được bổ nhiệm 設計係長 (trưởng nhóm thiết kế). Trình độ tiếng Nhật N2. Hôm nay thử khuôn lần đầu cho dự án vỏ pin xe điện của khách Hamada (一次サプライヤー) — phát hiện vết lõm **ヒケ** sâu và cong vênh **反り** 1.5mm (vượt dung sai 0.5mm). Chương này tập trung các mẫu câu giao tiếp tiếng Nhật trong tình huống sự cố chất lượng: báo cáo khẩn, xin lỗi formal qua điện thoại với khách, dẫn dắt họp 4M, và cách quản lý trẻ xưng hô với cả cấp trên (課長) lẫn cấp dưới (係員).

---

## Tình huống 1 — Trước máy ép · 10:00, giao việc trước khi thử khuôn

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>皆<rt>みな</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>からEV<ruby>電池<rt>でんち</rt></ruby>カバーのトライアルを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>整<rt>ととの</rt></ruby>いましたか?<br>*(Anh Sakurai và cả nhóm, bây giờ chúng ta bắt đầu thử khuôn vỏ pin xe điện. Đã chuẩn bị xong chưa ạ?)* |
| Sakurai | はい、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>もセットしました。<ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby>は<ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>です。<br>*(Vâng, điều kiện ép cũng đã cài. Nhiệt độ khuôn 80 độ, nhiệt độ nhựa 240 độ.)* |
| Thái | ありがとうございます。<ruby>材料<rt>ざいりょう</rt></ruby>はPP-GF40、<ruby>客先<rt>きゃくさき</rt></ruby><ruby>指定<rt>してい</rt></ruby>のロットですね。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn. Vật liệu PP-GF40, đúng lô khách yêu cầu nhé. Phiền các bạn kiểm tra giúp.)* |
| Adi | <ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです、<ruby>係長<rt>かかりちょう</rt></ruby>。ロット<ruby>番号<rt>ばんごう</rt></ruby>も<ruby>合<rt>あ</rt></ruby>っています。<br>*(Đã kiểm tra xong rồi, anh trưởng nhóm. Số lô cũng khớp.)* |
| Thái | では、<ruby>第一<rt>だいいち</rt></ruby>ショットを<ruby>打<rt>う</rt></ruby>ちます。(ボタンを<ruby>押<rt>お</rt></ruby>す)<br>*(Vậy bắn shot đầu tiên. (Bấm nút))* |
| Sakurai | (<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>音<rt>おん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きながら) <ruby>音<rt>おと</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>ですね。<br>*(Vừa nghe tiếng phun. Âm thanh bình thường nhỉ.)* |
| Thái | はい、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>待<rt>ま</rt></ruby>ちましょう。<br>*(Vâng, đợi thời gian làm mát 30 giây nhé.)* |

---

## Tình huống 2 — Trước máy ép · 10:15, phát hiện lỗi — báo cáo cấp trên

| Vai | Lời thoại |
|---|---|
| Thái | (<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>する) えっ...!?<br>*(Lấy sản phẩm ra kiểm tra. Ơ...!?)* |
| Sakurai | (<ruby>駆<rt>か</rt></ruby>け<ruby>寄<rt>よ</rt></ruby>る) どうしましたか、<ruby>係長<rt>かかりちょう</rt></ruby>?<br>*(Chạy lại. Có chuyện gì vậy anh?)* |
| Thái | <ruby>表面<rt>ひょうめん</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きなヒケがあります。<ruby>見<rt>み</rt></ruby>てください。<br>*(Trên bề mặt có vết lõm to. Anh xem giùm.)* |
| Sakurai | これは<ruby>深<rt>ふか</rt></ruby>いですね。<ruby>厚肉<rt>あつにく</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しています。<br>*(Sâu đấy. Tập trung ở phần dày của thành sản phẩm.)* |
| Thái | (<ruby>定盤<rt>じょうばん</rt></ruby>に<ruby>置<rt>お</rt></ruby>いて<ruby>反<rt>そ</rt></ruby>りを<ruby>測<rt>はか</rt></ruby>る) <ruby>反<rt>そ</rt></ruby>りも<ruby>1.5<rt>いってんご</rt></ruby>mmあります。<ruby>客先<rt>きゃくさき</rt></ruby><ruby>許容<rt>きょよう</rt></ruby>は<ruby>0.5<rt>れいてんご</rt></ruby>mmです。<br>*(Đặt lên bàn phẳng đo độ cong. Cong vênh cũng tới 1.5mm. Khách cho phép có 0.5mm.)* |
| Sakurai | <ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby><ruby>越<rt>こ</rt></ruby>えですね。<ruby>大失敗<rt>だいしっぱい</rt></ruby>だな。<br>*(Vượt gấp 3 lần. Hỏng nặng rồi.)* |
| Thái | (<ruby>顔<rt>かお</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>青<rt>さお</rt></ruby>になる) <ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Tái mặt. Em sẽ báo cáo cho trưởng phòng Kawakami.)* |
| Sakurai | はい、<ruby>早<rt>はや</rt></ruby>めに<ruby>報告<rt>ほうこく</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいです。<ruby>報連相<rt>ほうれんそう</rt></ruby>ですよ。<br>*(Vâng, nên báo sớm. 報連相 đấy.)* |

---

## Tình huống 3 — Văn phòng kỹ thuật · 10:45, báo cáo khẩn lên 課長

| Vai | Lời thoại |
|---|---|
| Thái | (<ruby>軽<rt>かる</rt></ruby>くノックする) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>緊急<rt>きんきゅう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Gõ cửa nhẹ. Em xin phép, anh Kawakami, em có việc khẩn cần báo cáo.)* |
| Kawakami | グエンさん、どうしました? <ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Nguyễn-san, có chuyện gì? Ngồi đi.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>のEV<ruby>電池<rt>でんち</rt></ruby>カバーのトライアルで<ruby>不良<rt>ふりょう</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しました。<ruby>表面<rt>ひょうめん</rt></ruby>に<ruby>深<rt>ふか</rt></ruby>いヒケと、<ruby>1.5<rt>いってんご</rt></ruby>mmの<ruby>反<rt>そ</rt></ruby>りです。<br>*(Trong đợt thử khuôn vỏ pin xe điện 10 giờ sáng nay đã xảy ra lỗi ạ. Bề mặt có vết lõm sâu và độ cong 1.5mm.)* |
| Kawakami | (<ruby>表情<rt>ひょうじょう</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる) <ruby>客先<rt>きゃくさき</rt></ruby><ruby>許容値<rt>きょようち</rt></ruby>は?<br>*(Mặt nghiêm lại. Dung sai khách cho phép là bao nhiêu?)* |
| Thái | <ruby>0.5<rt>れいてんご</rt></ruby>mmです。<ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>オーバーしております。<br>*(0.5mm ạ. Đã vượt gấp 3 lần ạ.)* |
| Kawakami | なるほど。<ruby>原因<rt>げんいん</rt></ruby>の<ruby>仮説<rt>かせつ</rt></ruby>はありますか?<br>*(Ra vậy. Đã có giả thuyết về nguyên nhân chưa?)* |
| Thái | <ruby>現時点<rt>げんじてん</rt></ruby>では<ruby>不明<rt>ふめい</rt></ruby>です。<ruby>4<rt>よん</rt></ruby>M<ruby>分析<rt>ぶんせき</rt></ruby>で<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Hiện tại chưa rõ ạ. Em đang nghĩ phân loại bằng phân tích 4M.)* |
| Kawakami | <ruby>4<rt>よん</rt></ruby>Mで<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>ける、<ruby>賢明<rt>けんめい</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>客先<rt>きゃくさき</rt></ruby>の<ruby>濱田<rt>はまだ</rt></ruby>さんへの<ruby>連絡<rt>れんらく</rt></ruby>はどうしますか?<br>*(Phân loại bằng 4M là quyết định khôn ngoan. Liên lạc với anh Hamada bên khách thì sao?)* |
| Thái | すみません、<ruby>濱田<rt>はまだ</rt></ruby>さんへの<ruby>第一報<rt>だいいっぽう</rt></ruby>はどのように<ruby>伝<rt>つた</rt></ruby>えればよろしいでしょうか?<br>*(Xin lỗi, báo cáo đầu tiên cho anh Hamada nên truyền đạt như thế nào ạ?)* |
| Kawakami | まず<ruby>事実<rt>じじつ</rt></ruby>のみを<ruby>伝<rt>つた</rt></ruby>えて、<ruby>原因<rt>げんいん</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby><ruby>改<rt>あらた</rt></ruby>めて<ruby>報告<rt>ほうこく</rt></ruby>する、と。<ruby>憶測<rt>おくそく</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>言<rt>い</rt></ruby>わないでください。<br>*(Đầu tiên chỉ báo sự thật, còn nguyên nhân và đối sách sẽ báo cáo lại sau. Tuyệt đối không nói suy đoán.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>事実<rt>じじつ</rt></ruby>のみ、<ruby>憶測<rt>おくそく</rt></ruby>はなし、ですね。<br>*(Em đã rõ ạ. Chỉ sự thật, không suy đoán, đúng không ạ.)* |
| Kawakami | そうです。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>の<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>4<rt>よん</rt></ruby>Mの<ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đúng. Mai 9 giờ sáng nhờ em báo cáo tạm thời kết quả 4M.)* |
| Thái | はい、かしこまりました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 4 — Hành lang · 11:30, hỏi lại Sakurai về thuật ngữ kỹ thuật

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しよろしいですか? <ruby>課長<rt>かちょう</rt></ruby>が「<ruby>憶測<rt>おくそく</rt></ruby>を<ruby>言<rt>い</rt></ruby>うな」と<ruby>言<rt>い</rt></ruby>っていました。<br>*(Anh Sakurai, em hỏi một chút được không? Anh trưởng phòng vừa nói "đừng nói suy đoán".)* |
| Sakurai | はい、お<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>説明<rt>せつめい</rt></ruby>するときの<ruby>基本<rt>きほん</rt></ruby>ですよ。<br>*(Ừ, đó là cơ bản khi nói chuyện với khách hàng đó.)* |
| Thái | すみません、「<ruby>憶測<rt>おくそく</rt></ruby>」というのは「たぶん〜だろう」という<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Xin lỗi, "okusoku" có phải nghĩa là "có lẽ là..." không ạ?)* |
| Sakurai | そうです。<ruby>証拠<rt>しょうこ</rt></ruby>がないまま「<ruby>材料<rt>ざいりょう</rt></ruby>のせいかもしれません」と<ruby>言<rt>い</rt></ruby>うと、<ruby>後<rt>あと</rt></ruby>で<ruby>違<rt>ちが</rt></ruby>った<ruby>場合<rt>ばあい</rt></ruby>、<ruby>信用<rt>しんよう</rt></ruby>を<ruby>失<rt>うしな</rt></ruby>います。<br>*(Đúng. Chưa có bằng chứng mà nói "có lẽ tại vật liệu" thì sau này khác đi sẽ mất uy tín.)* |
| Thái | なるほど、<ruby>事実<rt>じじつ</rt></ruby>と<ruby>推測<rt>すいそく</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けて<ruby>話<rt>はな</rt></ruby>すということですね。<br>*(Ra vậy, là chia rạch ròi giữa sự thật và suy đoán khi nói đúng không ạ?)* |
| Sakurai | その<ruby>通<rt>とお</rt></ruby>りです。「<ruby>現在<rt>げんざい</rt></ruby><ruby>調査中<rt>ちょうさちゅう</rt></ruby>です」が<ruby>無難<rt>ぶなん</rt></ruby>な<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。<br>*(Đúng vậy. "Hiện tại đang điều tra" là cách nói an toàn.)* |
| Thái | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học được rồi. Cảm ơn anh.)* |

---

## Tình huống 5 — Phòng họp nhỏ · 14:00, gọi điện xin lỗi khách Hamada

| Vai | Lời thoại |
|---|---|
| Thái | (<ruby>受話器<rt>じゅわき</rt></ruby>を<ruby>取<rt>と</rt></ruby>る・<ruby>深呼吸<rt>しんこきゅう</rt></ruby>) お<ruby>世話<rt>せわ</rt></ruby>になっております。みなみ<ruby>精密<rt>せいみつ</rt></ruby><ruby>金型<rt>かながた</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>、グエンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Cầm điện thoại, hít sâu. Cảm ơn anh đã chiếu cố. Tôi là Nguyễn, trưởng nhóm thiết kế Minami Seimitsu Kanagata.)* |
| Hamada | あ、グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>本日<rt>ほんじつ</rt></ruby>のトライアルはいかがでしたか?<br>*(À, Nguyễn-san, vất vả rồi. Trial hôm nay thế nào?)* |
| Thái | <ruby>大変<rt>たいへん</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>本日<rt>ほんじつ</rt></ruby>のトライアルで<ruby>不良<rt>ふりょう</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>いたしました。<br>*(Em vô cùng xin lỗi ạ. Trong đợt thử khuôn hôm nay đã xảy ra lỗi.)* |
| Hamada | (<ruby>声<rt>こえ</rt></ruby>が<ruby>真剣<rt>しんけん</rt></ruby>になる) ...<ruby>具体的<rt>ぐたいてき</rt></ruby>には?<br>*(Giọng nghiêm lại. ... Cụ thể là sao?)* |
| Thái | <ruby>表面<rt>ひょうめん</rt></ruby>のヒケと、<ruby>反<rt>そ</rt></ruby>りが<ruby>1.5<rt>いってんご</rt></ruby>mmです。<ruby>許容値<rt>きょようち</rt></ruby><ruby>0.5<rt>れいてんご</rt></ruby>mmを<ruby>超<rt>こ</rt></ruby>えております。<ruby>原因<rt>げんいん</rt></ruby>については<ruby>現在<rt>げんざい</rt></ruby><ruby>調査中<rt>ちょうさちゅう</rt></ruby>です。<br>*(Vết lõm trên bề mặt và độ cong 1.5mm. Vượt quá dung sai 0.5mm. Về nguyên nhân hiện tại đang điều tra.)* |
| Hamada | そうですか。<ruby>残念<rt>ざんねん</rt></ruby>ですね。<ruby>量産<rt>りょうさん</rt></ruby>スケジュールに<ruby>影響<rt>えいきょう</rt></ruby>しますので、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>3<rt>みっ</rt></ruby><ruby>日後<rt>かご</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(Vậy à. Đáng tiếc nhỉ. Sẽ ảnh hưởng đến lịch sản xuất hàng loạt, nên nhờ nộp phương án chỉnh sửa trong 3 ngày.)* |
| Thái | <ruby>3<rt>みっ</rt></ruby><ruby>日後<rt>かご</rt></ruby>までに、ということでよろしいでしょうか?<br>*(Trong 3 ngày, em hiểu vậy có đúng không ạ?)* |
| Hamada | はい、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>までにメールでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, trước 17 giờ ngày 15 tháng 10, gửi qua mail giúp tôi.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>までにメールにて<ruby>修正案<rt>しゅうせいあん</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りいたします。<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Em đã rõ ạ. Trước 17 giờ ngày 15 tháng 10, em sẽ gửi phương án qua mail. Hôm nay đã làm phiền anh, em thành thật xin lỗi.)* |
| Hamada | いえいえ、<ruby>原因<rt>げんいん</rt></ruby>がはっきりすれば<ruby>対策<rt>たいさく</rt></ruby>できます。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Không không, làm rõ được nguyên nhân thì xử lý được. Cố gắng nhé.)* |
| Thái | はい、ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, cảm ơn anh. Em xin phép.)* |

---

## Tình huống 6 — Phòng họp lớn · 16:00, dẫn dắt họp khẩn 4M

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>急<rt>きゅう</rt></ruby>に<ruby>集<rt>あつ</rt></ruby>まっていただきありがとうございます。<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Cả nhóm, cảm ơn các anh chị đã tập trung gấp. Tôi xin bắt đầu họp khẩn.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>のトライアルで<ruby>大<rt>おお</rt></ruby>きなヒケと<ruby>反<rt>そ</rt></ruby>りが<ruby>出<rt>で</rt></ruby>ました。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>4<rt>よん</rt></ruby>Mで<ruby>切<rt>き</rt></ruby>り<ruby>分<rt>わ</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Trial hôm nay xuất hiện vết lõm và cong vênh lớn. Tôi muốn chia nguyên nhân theo 4M.)* |
| Thái | <ruby>4<rt>よん</rt></ruby>Mとは、Man(<ruby>人<rt>ひと</rt></ruby>)、Machine(<ruby>機械<rt>きかい</rt></ruby>)、Material(<ruby>材料<rt>ざいりょう</rt></ruby>)、Method(<ruby>方法<rt>ほうほう</rt></ruby>)です。<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>意見<rt>いけん</rt></ruby>をください。<br>*(4M là Man (người), Machine (máy), Material (vật liệu), Method (phương pháp). Mọi người cho ý kiến lần lượt nhé.)* |
| Sakurai | Materialから<ruby>言<rt>い</rt></ruby>います。PP-GF40は<ruby>客先<rt>きゃくさき</rt></ruby><ruby>指定<rt>してい</rt></ruby>のロットで、<ruby>受入<rt>うけいれ</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby>しています。<ruby>問題<rt>もんだい</rt></ruby>ないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi nói trước về Material. PP-GF40 là lô khách chỉ định, kiểm tra nhập kho cũng đạt. Tôi nghĩ không vấn đề.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>受入<rt>うけいれ</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>後<rt>あと</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>していただけますか?<br>*(Anh Sakurai, anh có thể chia sẻ ghi chép kiểm tra nhập kho sau giúp em được không?)* |
| Sakurai | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, được.)* |
| Yamamoto | Methodですが、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>圧力<rt>あつりょく</rt></ruby>と<ruby>保圧<rt>ほあつ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。ヒケは<ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ぶそく</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Về Method, tôi nghĩ cần kiểm tra áp lực ép và thời gian giữ áp. Lõm có khả năng do thiếu áp lực giữ.)* |
| Thái | <ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ぶそく</rt></ruby>...というのは、<ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>固<rt>かた</rt></ruby>まる<ruby>前<rt>まえ</rt></ruby>に<ruby>圧力<rt>あつりょく</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>いてしまうということですか?<br>*(Thiếu áp lực giữ... có phải nghĩa là rút áp lực trước khi nhựa đông đặc không ạ?)* |
| Yamamoto | そうです。<ruby>厚肉<rt>あつにく</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>補充<rt>ほじゅう</rt></ruby>されないと、<ruby>収縮<rt>しゅうしゅく</rt></ruby>でヒケが<ruby>出<rt>で</rt></ruby>ます。<br>*(Đúng. Phần dày nếu nhựa không được bù đủ, sẽ co rút tạo vết lõm.)* |
| Adi | Machineの<ruby>方<rt>ほう</rt></ruby>、<ruby>気<rt>き</rt></ruby>になる<ruby>点<rt>てん</rt></ruby>があります。<ruby>金型<rt>かながた</rt></ruby>の<ruby>水路<rt>すいろ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>が<ruby>不均一<rt>ふきんいつ</rt></ruby>かもしれません。<ruby>冷却<rt>れいきゃく</rt></ruby>のムラが<ruby>反<rt>そ</rt></ruby>りの<ruby>原因<rt>げんいん</rt></ruby>になります。<br>*(Về phía Machine, tôi có một điểm bận tâm. Thiết kế rãnh nước của khuôn có thể không đều. Việc làm nguội không đều sẽ gây cong vênh.)* |
| Thái | アディさん、ありがとうございます。Moldex3Dで<ruby>冷却<rt>れいきゃく</rt></ruby>シミュレーションをお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Anh Adi, cảm ơn. Anh có thể chạy mô phỏng làm nguội bằng Moldex3D được không ạ?)* |
| Adi | はい、<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>までに<ruby>結果<rt>けっか</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, sáng mai sẽ có kết quả.)* |
| Thái | Manについては、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業者<rt>さぎょうしゃ</rt></ruby>は<ruby>経験<rt>けいけん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>桜井<rt>さくらい</rt></ruby>さん。<ruby>手順<rt>てじゅん</rt></ruby><ruby>通<rt>どお</rt></ruby>りでしたから、<ruby>除外<rt>じょがい</rt></ruby>していいと<ruby>思<rt>おも</rt></ruby>います。<ruby>皆<rt>みな</rt></ruby>さん、いかがでしょうか?<br>*(Về Man, người vận hành hôm nay là anh Sakurai 10 năm kinh nghiệm. Đã làm đúng quy trình, tôi nghĩ có thể loại trừ. Mọi người thấy sao ạ?)* |
| Sakurai | <ruby>異存<rt>いぞん</rt></ruby>ありません。<br>*(Không phản đối.)* |
| Thái | では、<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>再集合<rt>さいしゅうごう</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>課長<rt>かちょう</rt></ruby>へ<ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy mai 8 giờ sáng tập trung lại, 9 giờ báo cáo tạm thời cho trưởng phòng. Nhờ mọi người ạ.)* |

---

## Tình huống 7 — Trước máy ép · 18:30, quan sát 課長 xử lý sự cố tại hiện trường

| Vai | Lời thoại |
|---|---|
| Kawakami | グエンさん、<ruby>現物<rt>げんぶつ</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ましょう。<br>*(Nguyễn-san, mình cùng xem hiện vật nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Kawakami | (<ruby>製品<rt>せいひん</rt></ruby>を<ruby>光<rt>ひかり</rt></ruby>にかざす) ヒケはこの<ruby>厚肉<rt>あつにく</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>していますね。<ruby>肉厚<rt>にくあつ</rt></ruby><ruby>差<rt>さ</rt></ruby>はどのくらいですか?<br>*(Soi sản phẩm dưới ánh sáng. Vết lõm tập trung ở phần dày này nhỉ. Chênh lệch độ dày là bao nhiêu?)* |
| Thái | <ruby>2.0<rt>にいてんれい</rt></ruby>mmから<ruby>5.0<rt>ごてんれい</rt></ruby>mmまであります。<br>*(Từ 2.0mm đến 5.0mm ạ.)* |
| Kawakami | <ruby>2.5<rt>にてんご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>の<ruby>差<rt>さ</rt></ruby>ですか。<ruby>厚肉<rt>あつにく</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>収縮<rt>しゅうしゅく</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きくなるのは<ruby>当然<rt>とうぜん</rt></ruby>ですね。<br>*(Chênh 2.5 lần. Phần dày co rút lớn là điều đương nhiên.)* |
| Thái | (メモを<ruby>取<rt>と</rt></ruby>る) なるほど、<ruby>肉厚<rt>にくあつ</rt></ruby><ruby>差<rt>さ</rt></ruby>そのものが<ruby>設計<rt>せっけい</rt></ruby><ruby>上<rt>じょう</rt></ruby>の<ruby>弱点<rt>じゃくてん</rt></ruby>ということですね。<br>*(Ghi chú. Ra vậy, chênh lệch độ dày bản thân là điểm yếu về thiết kế đúng không ạ.)* |
| Kawakami | そう<ruby>考<rt>かんが</rt></ruby>えます。<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げても<ruby>限界<rt>げんかい</rt></ruby>があります。<ruby>厚肉<rt>あつにく</rt></ruby><ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>肉盗<rt>にくぬす</rt></ruby>みを<ruby>入<rt>い</rt></ruby>れることも<ruby>検討<rt>けんとう</rt></ruby>してください。<br>*(Tôi nghĩ vậy. Tăng áp lực giữ cũng có giới hạn. Hãy xem xét cả việc khoét rỗng (nikunusumi) ở phần dày nữa.)* |
| Thái | <ruby>肉盗<rt>にくぬす</rt></ruby>み...というのは、<ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>裏側<rt>うらがわ</rt></ruby>からくり<ruby>抜<rt>ぬ</rt></ruby>くという<ruby>意味<rt>いみ</rt></ruby>でしょうか?<br>*(Nikunusumi... có phải nghĩa là khoét rỗng phần dày từ mặt sau không ạ?)* |
| Kawakami | その<ruby>通<rt>とお</rt></ruby>りです。<ruby>強度<rt>きょうど</rt></ruby>を<ruby>保<rt>たも</rt></ruby>ちながら<ruby>肉厚<rt>にくあつ</rt></ruby>を<ruby>均一<rt>きんいつ</rt></ruby>にする<ruby>定石<rt>じょうせき</rt></ruby>です。<ruby>客先<rt>きゃくさき</rt></ruby>の<ruby>強度<rt>きょうど</rt></ruby><ruby>要求<rt>ようきゅう</rt></ruby><ruby>仕様<rt>しよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>提案<rt>ていあん</rt></ruby>しましょう。<br>*(Đúng vậy. Là cách kinh điển vừa giữ độ bền vừa đồng đều độ dày. Hãy kiểm tra yêu cầu độ bền của khách rồi mới đề xuất.)* |
| Thái | <ruby>非常<rt>ひじょう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Em học được rất nhiều. Cảm ơn anh ạ.)* |
| Kawakami | グエンさん、<ruby>1<rt>いっ</rt></ruby><ruby>件<rt>けん</rt></ruby>、<ruby>大事<rt>だいじ</rt></ruby>なことを<ruby>言<rt>い</rt></ruby>っておきます。<ruby>不良<rt>ふりょう</rt></ruby>は<ruby>悪<rt>わる</rt></ruby>いことではありません。<ruby>隠<rt>かく</rt></ruby>すことが<ruby>悪<rt>わる</rt></ruby>いのです。<br>*(Nguyễn-san, có một điều quan trọng tôi muốn nói. Lỗi không phải điều xấu. Giấu nó mới là xấu.)* |
| Thái | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em xin khắc cốt ghi tâm.)* |

---

## Tình huống 8 — Bàn làm việc · 21:00, giao nhiệm vụ đêm cho team

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、アディさん、<ruby>遅<rt>おそ</rt></ruby>くまですみません。<ruby>明朝<rt>みょうちょう</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて<ruby>役割<rt>やくわり</rt></ruby><ruby>分担<rt>ぶんたん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Anh Sakurai, anh Adi, xin lỗi vì giữ mọi người muộn. Xin phép xác nhận lại phân công trước báo cáo sáng mai.)* |
| Sakurai | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh.)* |
| Thái | アディさんはMoldex3Dの<ruby>冷却<rt>れいきゃく</rt></ruby>シミュレーション、<ruby>朝<rt>あさ</rt></ruby>の<ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>までに<ruby>結果<rt>けっか</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>無理<rt>むり</rt></ruby>でしたら<ruby>連絡<rt>れんらく</rt></ruby>してください。<br>*(Anh Adi phụ trách mô phỏng làm nguội Moldex3D, nhờ anh ra kết quả trước 7 giờ sáng. Nếu không kịp xin liên lạc ngay.)* |
| Adi | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>条件<rt>じょうけん</rt></ruby><ruby>設定<rt>せってい</rt></ruby>はもう<ruby>終<rt>お</rt></ruby>わっています。<br>*(Được ạ. Thiết lập điều kiện đã xong rồi.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さんは<ruby>受入<rt>うけいれ</rt></ruby><ruby>検査<rt>けんさ</rt></ruby><ruby>記録<rt>きろく</rt></ruby>と、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>ログをまとめていただけますか?<br>*(Anh Sakurai tổng hợp giúp em ghi chép kiểm tra nhập kho và log điều kiện ép hôm nay được không ạ?)* |
| Sakurai | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時半<rt>じはん</rt></ruby>までにメールします。<br>*(Em rõ. Trước 7h30 sáng tôi sẽ mail.)* |
| Thái | <ruby>私<rt>わたし</rt></ruby>は<ruby>客先<rt>きゃくさき</rt></ruby>の<ruby>強度<rt>きょうど</rt></ruby><ruby>要求<rt>ようきゅう</rt></ruby><ruby>仕様<rt>しよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>して、<ruby>肉盗<rt>にくぬす</rt></ruby>みの<ruby>可能性<rt>かのうせい</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>します。<br>*(Em sẽ kiểm tra yêu cầu độ bền của khách và xem xét khả năng dùng nikunusumi.)* |
| Adi | <ruby>係長<rt>かかりちょう</rt></ruby>、ご<ruby>無理<rt>むり</rt></ruby>なさらず。<br>*(Anh trưởng nhóm, anh đừng quá sức.)* |
| Thái | ありがとうございます。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>会議室<rt>かいぎしつ</rt></ruby>で。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Cảm ơn các anh. Sáng mai 8 giờ tại phòng họp. Mọi người vất vả rồi.)* |

---

## Tình huống 9 — Phòng 201 ký túc · 23:00, gọi điện về cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & gia đình ở quê, ôn lại từ vựng JP qua hội thoại Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (LINE video) Anh ơi, sao mặt phờ phạc thế? Mới ăn cơm chưa? |
| Thái | (tiếng Việt) Anh ăn rồi, ăn cơm hộp Famima thôi. Hôm nay căng quá em ạ. |
| Mai | (tiếng Việt) Có chuyện gì hả anh? |
| Thái | (tiếng Việt) Thử khuôn lần đầu cho dự án vỏ pin xe điện. Lỗi to. Vết lõm — bên này gọi là **ヒケ** — sâu, với cong vênh **反り** 1.5 mm, gấp 3 lần dung sai khách cho. |
| Mai | (tiếng Việt) Trời. Có bị mắng không anh? |
| Thái | (tiếng Việt) Không. Anh Kawakami **課長** không hề mắng. Ổng còn bảo "lỗi không phải điều xấu, giấu lỗi mới là xấu". Anh nhớ câu đó cả đời. |
| Mai | (tiếng Việt) Hay thế. Văn hoá công ty Nhật mình tưởng nghiêm khắc lắm chứ. |
| Thái | (tiếng Việt) Nghiêm khắc với *sự kiện*, nhưng tử tế với *con người*. Anh học được cái đó hôm nay. Mai 9 giờ anh báo cáo **4M分析** — Man, Machine, Material, Method — cho ổng. 3 ngày nữa phải gửi **修正案** cho khách Hamada. |
| Mai | (tiếng Việt) Anh nhớ uống nước, ngủ đủ. Anh là **設計係長** rồi, không thể gục được. |
| Thái | (tiếng Việt) Ừ. Mà em ơi, hôm nay anh học từ mới: **肉盗み** — kiểu khoét rỗng phần dày từ mặt sau khuôn để tránh co rút. Anh Kawakami dạy anh đấy. |
| Mai | (tiếng Việt) Em không hiểu lắm nhưng nghe oai phết. Cưới tháng 1, anh đừng gầy đi nữa nhé. |
| Thái | (tiếng Việt) Anh hứa. Ngủ ngon em. |

---

## Tình huống 10 — Bàn làm việc · 23:50, chuẩn bị xong, thì thầm với mình

| Vai | Lời thoại |
|---|---|
| Thái | (<ruby>独<rt>ひと</rt></ruby>り<ruby>言<rt>ごと</rt></ruby>) <ruby>明日<rt>あした</rt></ruby>の<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>事実<rt>じじつ</rt></ruby>のみ、<ruby>憶測<rt>おくそく</rt></ruby>なし。<ruby>原因<rt>げんいん</rt></ruby><ruby>仮説<rt>かせつ</rt></ruby><ruby>3<rt>みっ</rt></ruby>つ、<ruby>対策<rt>たいさく</rt></ruby><ruby>方向性<rt>ほうこうせい</rt></ruby><ruby>2<rt>ふた</rt></ruby>つ。<br>*(Lẩm bẩm. Mai 9 giờ, chỉ sự thật, không suy đoán. Ba giả thuyết nguyên nhân, hai hướng đối sách.)* |
| Thái | (<ruby>大<rt>おお</rt></ruby>きく<ruby>息<rt>いき</rt></ruby>を<ruby>吐<rt>は</rt></ruby>く) よし。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Thở mạnh ra một hơi. Được. Ổn rồi.)* |

---

## Đọng lại chương 3

Lần đầu đối mặt sự cố chất lượng nghiêm trọng với khách hàng, Thái học các mẫu câu giao tiếp tiếng Nhật quan trọng nhất ở vai trò **設計係長**: **báo cáo khẩn cho 課長** (緊急のご報告です・現時点では不明です), **xin lỗi formal với khách qua điện thoại** (大変申し訳ございません・現在調査中です・承知いたしました), **dẫn dắt họp 4M分析** chia rạch ròi Man/Machine/Material/Method với câu mở đầu chuẩn (急にお集まりいただきありがとうございます), **hỏi lại đàn anh để xác nhận thuật ngữ** (〜というのは?・〜という意味でしょうか?), và **giao việc cho cấp dưới với kính ngữ giảm áp** (〜していただけますか?・お願いできますか?). Đặc biệt học được nguyên tắc giao tiếp formal với khách: **chỉ nói 事実 — không nói 憶測**. Và bài học sâu nhất từ anh Kawakami: 不良は悪いことではない、隠すことが悪い — lỗi không phải điều xấu, giấu lỗi mới là xấu. Đó là văn hoá chất lượng và 報連相 thực sự của ngành chế tạo Nhật.

> Từ vựng & mẫu câu chương này: 不良・ヒケ・反り・許容値・大失敗・緊急会議・4M分析・射出条件・保圧・収縮・厚肉・肉厚差・水路・冷却シミュレーション・肉盗み・修正案・受入検査・憶測・事実・調査中・現時点では不明です・大変申し訳ございません・承知いたしました・〜というのは・〜ということですね・〜していただけますか・お願いできますか・肝に銘じます・報連相

## Bí quyết chương

- **First defect arc**: lần đầu Thái lead crisis với tư cách 係長 — payoff cho promotion từ T2, setup mindset "lỗi là cơ hội học" cho T4-T5.
- **Kawakami như mentor mới**: thay vai trò 工場長 Tanaka của T1 — dạy Thái cấp quản lý.
- **Cưới 1/2027**: motif lặp với Mai để giữ mạch gia đình.
- **Hamada khách**: nhân vật khách hàng formal đầu tiên — sẽ tái xuất ở T4 khi giải quyết xong.

> *"10/2026. Defect đầu tiên. 3 ngày để fix. Học cách báo cáo, học cách xin lỗi, học cách dẫn họp."*', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000004, 800000018, NULL, 'markdown_book', 'T4. Dẫn dắt phân tích 4M (4M分析)', '# Sách kỹ sư khuôn đúc · T4. Dẫn dắt phân tích 4M (4M分析)

> **Mục tiêu nhân vật:** Thái (27 tuổi, kỹ sư thiết kế khuôn đúc Anjo, Aichi) dẫn nhóm 5 người (Sakurai, Yamamoto, Adi, Long, Hùng) phân tích 4M sự cố ヒケ・反り trên khuôn ốp cửa Toyota. Học các mẫu hội thoại tiếng Nhật quản lý dự án: **phân công vai trò 4M (担当を決める)**, **báo cáo kết quả phân tích cho cấp dưới và cấp trên (〜の原因は〜です)**, **hỏi lại lễ phép khi chưa rõ từ chuyên ngành (〜というのは?)**, **quan sát đàn anh Sakurai dạy cách đọc 射出条件**, **chốt phương án khắc phục theo cấu trúc ①②③**, và **liên lạc khách hàng (濱田様) bằng kính ngữ qua điện thoại**.

---

## Bối cảnh

Tháng 10 năm 2026. Thái — kỹ sư thiết kế N2 năm thứ 5 tại **株式会社みなみ精密金型** — được giao chủ trì phân tích 4M một sự cố lớn: khuôn ốp cửa Toyota bị **ヒケ** (vết lõm bề mặt) và **反り** (cong vênh 1.5mm) sau lần thử khuôn đầu. Nhóm gồm Sakurai (đàn anh Method), Yamamoto (đồng nghiệp Machine), Adi (Indonesia, Material), Long + Hùng (đàn em VN, Man). Khách hàng Hamada-san của Toyota Shatai đang chờ phản hồi trong 3 ngày. Chương này tập trung các mẫu câu **dẫn dắt cuộc họp 4M analysis**, **báo cáo nguyên nhân gốc** và **trình bày phương án khắc phục** bằng tiếng Nhật doanh nghiệp.

---

## Tình huống 1 — Phòng họp nhỏ tầng 2 · 8:00 sáng Ngày 1, phân công vai trò 4M

| Vai | Lời thoại |
|---|---|
| Thái | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>、トヨタ<ruby>車体<rt>しゃたい</rt></ruby>さんの<ruby>内装<rt>ないそう</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby><ruby>金型<rt>かながた</rt></ruby>の<ruby>4M<rt>よんエム</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào mọi người buổi sáng. Từ hôm nay 3 ngày, chúng ta bắt đầu phân tích 4M cho khuôn linh kiện nội thất của Toyota Shatai.)* |
| Thái | <ruby>不良<rt>ふりょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つです。<ruby>表面<rt>ひょうめん</rt></ruby>のヒケと、<ruby>1.5<rt>いってんご</rt></ruby>ミリの<ruby>反<rt>そ</rt></ruby>りです。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>特定<rt>とくてい</rt></ruby>して、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Nội dung lỗi có 2: vết lõm bề mặt và cong vênh 1.5mm. Mình sẽ xác định nguyên nhân và đề xuất phương án cho ngài Hamada.)* |
| Sakurai | タイさん、<ruby>担当<rt>たんとう</rt></ruby>はどう<ruby>分<rt>わ</rt></ruby>けますか？<br>*(Anh Thái, phân công thế nào ạ?)* |
| Thái | <ruby>4M<rt>よんエム</rt></ruby>ごとに<ruby>担当<rt>たんとう</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。<ruby>桜井<rt>さくらい</rt></ruby>さんはMethod、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phân công theo từng M. Anh Sakurai phụ trách Method, kiểm tra điều kiện ép.)* |
| Sakurai | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>保圧<rt>ほあつ</rt></ruby>と<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>を<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>見<rt>み</rt></ruby>ます。<br>*(Rõ. Tôi tập trung vào áp giữ và tốc độ ép.)* |
| Thái | <ruby>山本<rt>やまもと</rt></ruby>さんはMachine、Moldex3Dで<ruby>水路<rt>すいろ</rt></ruby>の<ruby>再<rt>さい</rt></ruby>シミュレーションをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Yamamoto phụ trách Machine, chạy lại mô phỏng rãnh nước bằng Moldex3D.)* |
| Yamamoto | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>午後<rt>ごご</rt></ruby>には<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Vâng, em rõ. Chiều sẽ có kết quả.)* |
| Thái | アディさんはMaterial、PA66-GF30の<ruby>水分量<rt>すいぶんりょう</rt></ruby>と<ruby>ロット<rt>ろっと</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Anh Adi phụ trách Material, kiểm tra độ ẩm và số lô của PA66-GF30.)* |
| Adi | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>倉庫<rt>そうこ</rt></ruby>でサンプルを<ruby>取<rt>と</rt></ruby>ってきます。<br>*(Tôi hiểu. Tôi ra kho lấy mẫu.)* |
| Thái | ロンとフン、<ruby>二人<rt>ふたり</rt></ruby>はMan、<ruby>現場<rt>げんば</rt></ruby>のオペレーターさんに<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>調査<rt>ちょうさ</rt></ruby>をしてください。<br>*(Long và Hùng, hai em phụ trách Man, phỏng vấn người vận hành tại hiện trường.)* |
| Long | はい、タイ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Vâng, anh Thái, em rõ.)* |
| Thái | <ruby>夕方<rt>ゆうがた</rt></ruby><ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>にここで<ruby>結果<rt>けっか</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>しましょう。<ruby>分<rt>わ</rt></ruby>からないことがあれば、すぐ<ruby>連絡<rt>れんらく</rt></ruby>してください。<br>*(Chiều 17h tập trung tại đây chia sẻ kết quả. Có gì không hiểu thì báo ngay.)* |

---

## Tình huống 2 — Bàn làm việc của Sakurai · 11:00 Ngày 1, quan sát đàn anh đọc 射出条件

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>邪魔<rt>じゃま</rt></ruby>してもいいですか？Methodの<ruby>見方<rt>みかた</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<br>*(Anh Sakurai, em làm phiền một chút được không ạ? Cho em học cách đọc Method.)* |
| Sakurai | いいよ。タイさん、まずこのグラフを<ruby>見<rt>み</rt></ruby>てください。<ruby>射出<rt>しゃしゅつ</rt></ruby>から<ruby>保圧<rt>ほあつ</rt></ruby><ruby>切替<rt>きりかえ</rt></ruby>までの<ruby>圧力<rt>あつりょく</rt></ruby><ruby>波形<rt>はけい</rt></ruby>です。<br>*(Được. Anh Thái, đầu tiên nhìn biểu đồ này. Đây là dạng sóng áp lực từ giai đoạn ép đến chuyển sang giữ áp.)* |
| Thái | すみません、「<ruby>切替<rt>きりかえ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "kirikae" nghĩa là gì ạ?)* |
| Sakurai | <ruby>射出<rt>しゃしゅつ</rt></ruby>の<ruby>速度<rt>そくど</rt></ruby><ruby>制御<rt>せいぎょ</rt></ruby>から<ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>圧力<rt>あつりょく</rt></ruby><ruby>制御<rt>せいぎょ</rt></ruby>に<ruby>変<rt>か</rt></ruby>わる<ruby>瞬間<rt>しゅんかん</rt></ruby>のことです。V/Pとも<ruby>言<rt>い</rt></ruby>います。<br>*(Là khoảnh khắc chuyển từ điều khiển tốc độ ép sang điều khiển áp lực giữ. Còn gọi là V/P.)* |
| Thái | なるほど、V/P<ruby>切替<rt>きりかえ</rt></ruby>ですね。それでこのグラフを<ruby>見<rt>み</rt></ruby>て、<ruby>何<rt>なに</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Ra là V/P switching ạ. Vậy nhìn biểu đồ này thấy được gì ạ?)* |
| Sakurai | <ruby>保圧<rt>ほあつ</rt></ruby>が<ruby>50<rt>ごじゅう</rt></ruby>MPaに<ruby>設定<rt>せってい</rt></ruby>されていますが、これは<ruby>大型<rt>おおがた</rt></ruby><ruby>金型<rt>かながた</rt></ruby>には<ruby>低<rt>ひく</rt></ruby>すぎます。<ruby>普通<rt>ふつう</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby>MPa<ruby>前後<rt>ぜんご</rt></ruby>が<ruby>標準<rt>ひょうじゅん</rt></ruby>です。<br>*(Áp giữ được set 50MPa, nhưng cái này quá thấp cho khuôn lớn. Bình thường khoảng 80MPa mới là chuẩn.)* |
| Thái | <ruby>保圧<rt>ほあつ</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いと、なぜヒケが<ruby>出<rt>で</rt></ruby>るんですか？<br>*(Áp giữ thấp thì tại sao lại bị lõm ạ?)* |
| Sakurai | <ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>冷<rt>ひ</rt></ruby>えて<ruby>収縮<rt>しゅうしゅく</rt></ruby>するときに、<ruby>追加<rt>ついか</rt></ruby>の<ruby>樹脂<rt>じゅし</rt></ruby>を<ruby>押<rt>お</rt></ruby>し<ruby>込<rt>こ</rt></ruby>めません。だから<ruby>表面<rt>ひょうめん</rt></ruby>がへこむんです。<br>*(Khi nhựa nguội và co lại, không đẩy được nhựa bù thêm vào. Vì thế bề mặt bị lõm.)* |
| Thái | よく<ruby>分<rt>わ</rt></ruby>かりました。メモしておきます。<br>*(Em hiểu rất rõ rồi. Em ghi lại.)* |
| Sakurai | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>確定<rt>かくてい</rt></ruby>です。<ruby>午後<rt>ごご</rt></ruby>に<ruby>詳<rt>くわ</rt></ruby>しい<ruby>資料<rt>しりょう</rt></ruby>をまとめます。<br>*(Nguyên nhân đã chắc. Chiều tôi tổng hợp tài liệu chi tiết.)* |

---

## Tình huống 3 — Phòng họp · 14:00 Ngày 1, Sakurai báo cáo Method

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Tôi đã kiểm điều kiện ép. Xin nói kết luận trước.)* |
| Sakurai | <ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby><ruby>値<rt>ち</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby>MPaが<ruby>低<rt>ひく</rt></ruby>すぎます。<ruby>大型<rt>おおがた</rt></ruby><ruby>金型<rt>かながた</rt></ruby>なら<ruby>80<rt>はちじゅう</rt></ruby>MPaが<ruby>標準<rt>ひょうじゅん</rt></ruby>です。<br>*(Áp giữ set 50MPa quá thấp. Khuôn lớn thì 80MPa mới chuẩn.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>がヒケの<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>、ということですね？<br>*(Anh Sakurai, cho em xác nhận. Nghĩa là thiếu áp giữ là nguyên nhân trực tiếp gây vết lõm, đúng không ạ?)* |
| Sakurai | そうです。<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>収縮<rt>しゅうしゅく</rt></ruby>を<ruby>補<rt>おぎな</rt></ruby>えていないので、<ruby>表面<rt>ひょうめん</rt></ruby>にへこみが<ruby>出<rt>で</rt></ruby>ます。<br>*(Đúng. Không bù được co rút khi làm nguội nên bề mặt xuất hiện vết lõm.)* |
| Thái | <ruby>了解<rt>りょうかい</rt></ruby>です。これがヒケの<ruby>原因<rt>げんいん</rt></ruby>の<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>ですね。<br>*(Rõ. Đây là nguyên nhân thứ nhất của vết lõm.)* |
| Sakurai | はい。<ruby>修正案<rt>しゅうせいあん</rt></ruby>としては、<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>上<rt>あ</rt></ruby>げて、<ruby>保圧<rt>ほあつ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>延長することを<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Vâng. Phương án sửa: tôi đề xuất nâng áp giữ lên 80MPa và kéo dài thời gian giữ thêm 3 giây.)* |

---

## Tình huống 4 — Phòng họp · 16:00 Ngày 1, Yamamoto báo cáo Machine

| Vai | Lời thoại |
|---|---|
| Yamamoto | Moldex3Dの<ruby>再<rt>さい</rt></ruby>シミュレーション<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em xin báo cáo kết quả mô phỏng lại bằng Moldex3D.)* |
| Yamamoto | スクリーンを<ruby>見<rt>み</rt></ruby>てください。<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>で<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>が<ruby>足<rt>た</rt></ruby>りません。<ruby>赤<rt>あか</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>です。<br>*(Mời nhìn màn hình. Góc trái dưới rãnh nước làm nguội bị thiếu. Phần đỏ là chênh lệch nhiệt độ.)* |
| Thái | <ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>はどのぐらいですか？<br>*(Chênh lệch nhiệt độ khoảng bao nhiêu?)* |
| Yamamoto | <ruby>左上<rt>ひだりうえ</rt></ruby>と<ruby>左下<rt>ひだりした</rt></ruby>で<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>の<ruby>差<rt>さ</rt></ruby>があります。<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<br>*(Giữa góc trái trên và trái dưới chênh 15 độ. Phạm vi cho phép là trong 5 độ.)* |
| Thái | すみません、「<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>」というのは、<ruby>設計<rt>せっけい</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>のことですね？<br>*(Xin lỗi, "phạm vi cho phép" nghĩa là phạm vi tiêu chuẩn thiết kế, đúng không ạ?)* |
| Yamamoto | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>のせいで<ruby>左下<rt>ひだりした</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>く<ruby>冷<rt>ひ</rt></ruby>えて、<ruby>反<rt>そ</rt></ruby>りが<ruby>発生<rt>はっせい</rt></ruby>します。<br>*(Vâng, đúng vậy. Vì chênh 15 độ, góc trái dưới làm nguội chậm, gây cong vênh.)* |
| Thái | これが<ruby>反<rt>そ</rt></ruby>り<ruby>1.5<rt>いってんご</rt></ruby>ミリの<ruby>原因<rt>げんいん</rt></ruby>ということですね。<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>が<ruby>確定<rt>かくてい</rt></ruby>しました。<br>*(Nghĩa là đây là nguyên nhân gây cong 1.5mm. Nguyên nhân thứ hai đã chắc.)* |
| Yamamoto | <ruby>修正案<rt>しゅうせいあん</rt></ruby>として、<ruby>左下<rt>ひだりした</rt></ruby>に<ruby>水路<rt>すいろ</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>すれば、<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まるはずです。<br>*(Phương án sửa: nếu thêm 2 rãnh nước ở góc trái dưới, chênh lệch sẽ vào trong 3 độ.)* |

---

## Tình huống 5 — Phòng họp · 17:00 Ngày 1, Adi và đàn em VN báo cáo Material + Man

| Vai | Lời thoại |
|---|---|
| Adi | アディです。Materialの<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em Adi đây. Xin báo cáo kết quả Material.)* |
| Adi | <ruby>材料<rt>ざいりょう</rt></ruby>はPA66-GF30 V-0、ロット<ruby>番号<rt>ばんごう</rt></ruby>は<ruby>2026<rt>にせんにじゅうろく</rt></ruby>-<ruby>09<rt>ぜろきゅう</rt></ruby>-<ruby>A<rt>エー</rt></ruby><ruby>123<rt>いちにさん</rt></ruby>です。<ruby>水分量<rt>すいぶんりょう</rt></ruby>は<ruby>0.05<rt>れいてんれいご</rt></ruby>パーセントで、<ruby>規格<rt>きかく</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<br>*(Vật liệu PA66-GF30 V-0, số lô 2026-09-A123. Độ ẩm 0.05%, trong tiêu chuẩn.)* |
| Thái | <ruby>規格<rt>きかく</rt></ruby><ruby>内<rt>ない</rt></ruby>ということは、<ruby>材料<rt>ざいりょう</rt></ruby>には<ruby>問題<rt>もんだい</rt></ruby>がないということですね。<br>*(Nằm trong tiêu chuẩn, nghĩa là Vật liệu không có vấn đề, đúng không.)* |
| Adi | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>材料<rt>ざいりょう</rt></ruby>は<ruby>除外<rt>じょがい</rt></ruby>できます。<br>*(Vâng, đúng vậy. Có thể loại Material khỏi nguyên nhân.)* |
| Long | (tiếng Việt với Hùng nhỏ giọng) Mày báo trước hay tao báo? |
| Hùng | (tiếng Việt) Mày báo, tao bổ sung. |
| Long | タイ<ruby>先輩<rt>せんぱい</rt></ruby>、Manの<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>調査<rt>ちょうさ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Thái, em xin báo cáo kết quả phỏng vấn phần Man.)* |
| Long | オペレーターの<ruby>松本<rt>まつもと</rt></ruby>さんに<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>のショットを<ruby>確認<rt>かくにん</rt></ruby>してもらいました。<ruby>段取<rt>だんど</rt></ruby>り<ruby>時間<rt>じかん</rt></ruby>も<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>通<rt>どお</rt></ruby>りで、<ruby>異常<rt>いじょう</rt></ruby>はありませんでした。<br>*(Em đã nhờ chú Matsumoto vận hành kiểm tra 3 lần shot. Thời gian set-up đúng chuẩn, không có bất thường.)* |
| Hùng | <ruby>補足<rt>ほそく</rt></ruby>します。<ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>と<ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby>も<ruby>記録<rt>きろく</rt></ruby><ruby>表<rt>ひょう</rt></ruby><ruby>通<rt>どお</rt></ruby>りでした。<br>*(Em bổ sung. Nhiệt khuôn và nhiệt nhựa cũng đúng theo bảng ghi.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまです。Manも<ruby>除外<rt>じょがい</rt></ruby>ですね。<ruby>残<rt>のこ</rt></ruby>るはMethodとMachineです。<br>*(Cảm ơn các em. Vậy Man cũng loại. Chỉ còn Method và Machine.)* |
| Thái | <ruby>原因<rt>げんいん</rt></ruby>が<ruby>絞<rt>しぼ</rt></ruby>られました。Method（<ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>）とMachine（<ruby>水路<rt>すいろ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>）、これが<ruby>根本<rt>こんぽん</rt></ruby><ruby>原因<rt>げんいん</rt></ruby>です。<br>*(Nguyên nhân đã thu hẹp. Method (thiếu áp giữ) và Machine (thiếu rãnh nước), đây là nguyên nhân gốc rễ.)* |

---

## Tình huống 6 — Phòng họp · 9:00 sáng Ngày 2, hỏi lại đàn anh về 修正案 trước khi tổng hợp

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>お<ruby>聞<rt>き</rt></ruby>きしてもよろしいですか？<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>急<rt>きゅう</rt></ruby>に<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>上<rt>あ</rt></ruby>げると、バリは<ruby>出<rt>で</rt></ruby>ませんか？<br>*(Anh Sakurai, em hỏi anh một điểm được không ạ? Nếu đột ngột nâng áp giữ lên 80MPa, có ra ba via không?)* |
| Sakurai | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>普通<rt>ふつう</rt></ruby>はバリの<ruby>心配<rt>しんぱい</rt></ruby>があります。だから、<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げます。<ruby>60<rt>ろくじゅう</rt></ruby>→<ruby>70<rt>ななじゅう</rt></ruby>→<ruby>80<rt>はちじゅう</rt></ruby>MPaのように<ruby>3<rt>さん</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>階<rt>かい</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けて、<ruby>各<rt>かく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby>ショット<ruby>取<rt>と</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Câu hỏi hay. Bình thường có lo ngại ba via. Vì thế nâng theo từng bước: 60→70→80MPa, chia 3 cấp, mỗi cấp lấy 10 shot để kiểm.)* |
| Thái | なるほど、<ruby>段階的<rt>だんかいてき</rt></ruby>に、ということですね。<ruby>修正案<rt>しゅうせいあん</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>します。<br>*(Ra vậy, theo từng cấp ạ. Em phản ánh vào phương án.)* |
| Sakurai | それから、<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えたほうがいいです。<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>が<ruby>先<rt>さき</rt></ruby>、<ruby>保圧<rt>ほあつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>後<rt>あと</rt></ruby>です。<br>*(Còn nữa, thứ tự thêm rãnh nước cũng cần cân nhắc. Thêm rãnh nước trước, điều chỉnh áp giữ sau.)* |
| Thái | なぜその<ruby>順番<rt>じゅんばん</rt></ruby>ですか？<br>*(Vì sao thứ tự đó ạ?)* |
| Sakurai | <ruby>水路<rt>すいろ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えると、<ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>の<ruby>分布<rt>ぶんぷ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。それから<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせないと、<ruby>意味<rt>いみ</rt></ruby>がありません。<br>*(Đổi rãnh nước thì phân bố nhiệt khuôn sẽ đổi. Sau đó mới khớp áp giữ, không thì không ý nghĩa.)* |
| Thái | よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>桜井<rt>さくらい</rt></ruby>さん、ありがとうございます。<br>*(Em hiểu rất rõ rồi. Anh Sakurai, em cảm ơn ạ.)* |

---

## Tình huống 7 — Phòng họp · 14:00 Ngày 2, Thái trình bày phương án ①②③ cho cả nhóm

| Vai | Lời thoại |
|---|---|
| Thái | みなさん、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つにまとめました。ホワイトボードを<ruby>見<rt>み</rt></ruby>てください。<br>*(Mọi người, em đã tổng hợp phương án thành 3 mục. Mời nhìn bảng.)* |
| Thái | ①<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>。<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>します。<ruby>溶接<rt>ようせつ</rt></ruby>と<ruby>再加工<rt>さいかこう</rt></ruby>で<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>かかります。<br>*(1. Thêm rãnh nước. Thêm 2 cái ở góc trái dưới. Hàn và gia công lại mất 3 ngày.)* |
| Thái | ②<ruby>保圧<rt>ほあつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>。<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>の<ruby>後<rt>あと</rt></ruby>、<ruby>60<rt>ろくじゅう</rt></ruby>→<ruby>70<rt>ななじゅう</rt></ruby>→<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げます。バリ<ruby>監視<rt>かんし</rt></ruby>もします。<br>*(2. Điều chỉnh áp giữ. Sau khi thêm rãnh nước, nâng từng cấp 60→70→80MPa. Theo dõi cả ba via.)* |
| Thái | ③<ruby>再<rt>さい</rt></ruby>トライアル。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>実施<rt>じっし</rt></ruby>し、<ruby>30<rt>さんじゅっ</rt></ruby>ショットの<ruby>寸法<rt>すんぽう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>を<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(3. Thử khuôn lại. Thực hiện trong vòng 1 tuần, nộp đo kích thước của 30 shot cho ngài Hamada.)* |
| Yamamoto | <ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>までに<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Em sẽ hoàn thành bản vẽ thêm rãnh nước trước ngày mai.)* |
| Sakurai | <ruby>保圧<rt>ほあつ</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>テーブルは<ruby>俺<rt>おれ</rt></ruby>が<ruby>作<rt>つく</rt></ruby>る。<br>*(Bảng cấp áp giữ tôi làm.)* |
| Adi | <ruby>材料<rt>ざいりょう</rt></ruby><ruby>同<rt>おな</rt></ruby>じロットを<ruby>確保<rt>かくほ</rt></ruby>しておきます。<br>*(Em sẽ giữ sẵn cùng lô vật liệu.)* |
| Long | <ruby>松本<rt>まつもと</rt></ruby>さんに<ruby>再<rt>さい</rt></ruby>トライアルの<ruby>日程<rt>にってい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin chú Matsumoto sắp lịch thử khuôn lại.)* |
| Thái | みんな、ありがとう。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>、<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Cảm ơn cả nhóm. Sáng mai em sẽ gọi cho ngài Hamada.)* |

---

## Tình huống 8 — Bàn Thái · 9:00 sáng Ngày 3, gọi điện báo cáo khách hàng 濱田様

| Vai | Lời thoại |
|---|---|
| Thái | お<ruby>世話<rt>せわ</rt></ruby>になっております。みなみ<ruby>精密<rt>せいみつ</rt></ruby><ruby>金型<rt>かながた</rt></ruby>のグエンでございます。<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>少々<rt>しょうしょう</rt></ruby>よろしいでしょうか。<br>*(Em luôn được anh quan tâm. Tôi là Nguyễn của Minami Tinh mật Khuôn đúc. Ngài Hamada, hiện anh có chút thời gian không ạ?)* |
| Hamada | はい、グエンさん。<ruby>4M<rt>よんエム</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>の<ruby>件<rt>けん</rt></ruby>ですね。<br>*(Vâng, anh Nguyễn. Vụ phân tích 4M phải không.)* |
| Thái | はい。<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<ruby>根本<rt>こんぽん</rt></ruby><ruby>原因<rt>げんいん</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つでございます。<br>*(Vâng. Em xin báo cáo kết quả phân tích 3 ngày. Nguyên nhân gốc có 2 ạ.)* |
| Thái | <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はMethod、<ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>。<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はMachine、<ruby>左下<rt>ひだりした</rt></ruby><ruby>角<rt>かど</rt></ruby>の<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>でございます。<br>*(Một là Method, thiếu áp giữ. Hai là Machine, thiếu rãnh nước làm nguội ở góc trái dưới.)* |
| Hamada | <ruby>材料<rt>ざいりょう</rt></ruby>と<ruby>人<rt>ひと</rt></ruby>のほうは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Phần Vật liệu và Người ổn chứ?)* |
| Thái | はい、MaterialとManは<ruby>規格<rt>きかく</rt></ruby><ruby>内<rt>ない</rt></ruby>で、<ruby>除外<rt>じょがい</rt></ruby>できております。<br>*(Vâng, Material và Man đều trong tiêu chuẩn, đã loại được.)* |
| Hamada | <ruby>修正案<rt>しゅうせいあん</rt></ruby>と<ruby>日程<rt>にってい</rt></ruby>は？<br>*(Phương án và lịch?)* |
| Thái | <ruby>修正案<rt>しゅうせいあん</rt></ruby>は<ruby>3<rt>みっ</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>でございます。<ruby>水路<rt>すいろ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>、<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>80<rt>はちじゅう</rt></ruby>MPaへ、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>再<rt>さい</rt></ruby>トライアル<ruby>実施<rt>じっし</rt></ruby>でございます。<br>*(Phương án 3 mục: thêm 2 rãnh nước, nâng áp giữ lên 80MPa theo từng cấp, thử khuôn lại trong vòng 1 tuần.)* |
| Hamada | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>詳<rt>くわ</rt></ruby>しい<ruby>資料<rt>しりょう</rt></ruby>を<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>にメールで<ruby>送<rt>おく</rt></ruby>っていただけますか。<br>*(Đã rõ. Anh gửi tài liệu chi tiết qua mail trong hôm nay được không?)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>夕方<rt>ゆうがた</rt></ruby>までにお<ruby>送<rt>おく</rt></ruby>りいたします。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございました。<br>*(Em đã rõ ạ. Em gửi trước chiều. Hôm nay xin cảm ơn anh đã dành thời gian.)* |
| Hamada | こちらこそ。<ruby>再<rt>さい</rt></ruby>トライアル、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi mới cảm ơn. Lần thử lại nhờ anh.)* |

---

## Tình huống 9 — Hành lang · 10:30 Ngày 3, Yamamoto hỏi thêm về cách nói chuyện với khách hàng

| Vai | Lời thoại |
|---|---|
| Yamamoto | タイさん、<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>との<ruby>電話<rt>でんわ</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いていました。すごく<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていましたね。<br>*(Anh Thái, em nghe cuộc điện với ngài Hamada. Anh rất bình tĩnh.)* |
| Thái | ありがとう。<ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>結論<rt>けつろん</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>言<rt>い</rt></ruby>うことです。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つ、<ruby>修正案<rt>しゅうせいあん</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ、というふうに<ruby>数字<rt>すうじ</rt></ruby>で<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Cảm ơn. Quan trọng là nói kết luận trước. Nguyên nhân 2, phương án 3 — truyền đạt bằng con số.)* |
| Yamamoto | なるほど。「<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」というのは、そのためですか？<br>*(Ra là vậy. "Em xin nói kết luận trước" là vì lý do đó ạ?)* |
| Thái | そうです。<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>忙<rt>いそが</rt></ruby>しいから、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>で<ruby>要点<rt>ようてん</rt></ruby>が<ruby>伝<rt>つた</rt></ruby>わらないとダメです。<br>*(Đúng. Ngài Hamada bận, nên 3 giây đầu mà không truyền được trọng điểm là không được.)* |
| Yamamoto | <ruby>勉強<rt>べんきょう</rt></ruby>になります。あと、「<ruby>除外<rt>じょがい</rt></ruby>できております」の<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、すごく<ruby>丁寧<rt>ていねい</rt></ruby>でした。<br>*(Em học được. Còn cách nói "đã loại được" cũng rất lịch sự.)* |
| Thái | お<ruby>客様<rt>きゃくさま</rt></ruby>には「〜ております」「〜でございます」を<ruby>使<rt>つか</rt></ruby>います。<ruby>桜井<rt>さくらい</rt></ruby>さんが<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のときに<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。<br>*(Với khách hàng dùng "〜ております", "〜でございます". Anh Sakurai dạy em hồi năm 1.)* |
| Yamamoto | <ruby>俺<rt>おれ</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えます。ありがとうございます。<br>*(Em cũng sẽ nhớ. Cảm ơn anh.)* |

---

## Tình huống 10 — Ký túc · 21:00 Ngày 3, gọi LINE về Việt Nam với Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng JP qua câu chuyện trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, xong vụ phân tích chưa? Mấy hôm nay em thấy anh hốc hác. |
| Thái | (tiếng Việt) Xong rồi em. Sáng nay anh gọi ngài Hamada báo cáo, ổng duyệt phương án luôn. |
| Mai | (tiếng Việt) Mừng quá. Anh kể em nghe được không, 4M là gì? |
| Thái | (tiếng Việt) Là phân tích sự cố theo 4 yếu tố: Man — người, Machine — máy, Material — vật liệu, Method — phương pháp. Mỗi người trong nhóm phụ trách một M. Anh dẫn dắt. |
| Mai | (tiếng Việt) Vậy nguyên nhân do đâu? |
| Thái | (tiếng Việt) Hai cái: 保圧 (áp giữ) set thấp quá, với 水路 (rãnh nước làm nguội) thiếu ở góc trái dưới khuôn. Em Adi với Long-Hùng loại sạch phần vật liệu và người. |
| Mai | (tiếng Việt) Em nghe lùng bùng. Mà cảm giác anh không còn là cậu kỹ sư mới sang Nhật ngày nào nữa rồi. |
| Thái | (tiếng Việt) Năm thứ 5 rồi em. Lần đầu anh chủ trì 4M analysis xong cuộc họp 5 người, viết phương án ①②③, gọi điện kính ngữ với khách hàng. Anh Sakurai ngày xưa dạy anh từng câu "結論から申し上げます", giờ anh dạy lại Yamamoto. |
| Mai | (tiếng Việt) Tự hào về anh. Tháng 12 anh về nhé, mẹ với em đợi. |
| Thái | (tiếng Việt) Ừ. Tuần sau anh phải đứng tái thử khuôn nữa. Xong cái đó là chốt được nửa năm cuối visa rồi. |
| Mai | (tiếng Việt) Đi ngủ sớm đi. Ngủ ngon anh. |
| Thái | (tiếng Việt) Ngủ ngon em. |

---

## Đọng lại chương 4

Ba ngày phân tích 4M, Thái lần đầu chủ trì một dự án có 5 người dưới quyền. Mẫu câu nền tảng học được: **phân công vai trò theo 4M** (〜さんは〜を担当してください), **báo cáo kết quả theo cấu trúc kết luận trước** (結論から申し上げます・原因は2つです), **hỏi lại lễ phép khi chưa rõ** (〜というのは?・〜ということですね), **trình bày phương án theo ①②③ với deadline cụ thể** (1週間以内に再トライアル), và đặc biệt là **gọi điện báo cáo khách hàng bằng kính ngữ** (お世話になっております・〜でございます・〜ております・承知いたしました). Cùng với đó là kỹ năng quản lý: **loại trừ nguyên nhân** (除外できる) để khoanh vùng gốc rễ, và phương pháp **段階的に上げる** (nâng từng cấp) để tránh tạo lỗi mới khi sửa. Sau 5 năm tại Anjo, Thái đã trở thành người dẫn dắt — không còn là người chỉ học hỏi.

> Từ vựng & mẫu câu chương này: 4M分析・担当・共有・射出条件・保圧・V/P切替・水路・反り・ヒケ・段階的・許容範囲・規格内・除外・根本原因・修正案・再トライアル・溶接・再加工・寸法測定・結論から申し上げます・〜というのは・〜ということですね・お世話になっております・〜でございます・〜ております・承知いたしました・〜させていただきます

## Bí quyết chương

- **Mạch arc 5 năm payoff**: Sách 14 (T1) Thái còn hỏi "〜というのは?" với Tanaka. Sách 18 (T4) Yamamoto hỏi lại Thái câu y hệt → Thái thành 先輩.
- **Câu mở khách hàng**: "お世話になっております。〜でございます。今お時間少々よろしいでしょうか" — template cố định, học thuộc.
- **Cấu trúc báo cáo**: kết luận → con số (2 nguyên nhân, 3 phương án) → chi tiết. KHÔNG kể quá trình trước.
- **Scene Mai cuối**: chốt arc cá nhân — Mai vẫn đợi, visa 5 năm sắp xong.', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000005, 800000018, NULL, 'markdown_book', 'T5. Khôi phục và thiết kế lại khuôn EV (修復・再設計)', '# Sách kỹ sư khuôn đúc · T5. Khôi phục và thiết kế lại khuôn EV (修復・再設計)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Hà Nội, năm thứ 5 tại みなみ精密金型) chỉ huy team khôi phục khuôn EV sau khi phát hiện khuyết tật. Học các mẫu hội thoại tiếng Nhật của kỹ sư trưởng ở cấp độ chỉ đạo hiện trường: chỉ thị **TIG溶接** cho thợ hàn lão luyện, xác nhận **段取り** máy MC + sửa **NCプログラム**, điều phối **再トライアル** với thông số ép phun (**保圧・射出**), hỏi lại lễ phép khi chưa rõ chỉ số đo **CMM**, quan sát đàn anh Matsumoto thao tác hàn để học bí quyết hiện trường, và báo cáo **報連相** kết quả với khách hàng Hamada qua LINE bằng kính ngữ.

---

## Bối cảnh

Tháng 11 năm 2026. Thái đã đi qua bốn năm rưỡi tại nhà máy, hiện là **設計係長** (trưởng nhóm thiết kế) của dự án khuôn EV cho Toyota Shatai. Tuần trước phát hiện khuyết tật cong vênh 0.8mm vượt dung sai, hôm nay bắt đầu một tuần khôi phục: hàn đắp đường nước làm mát, gia công lại bằng máy MC, thử khuôn lại và đo CMM toàn bộ. Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu giao tiếp của kỹ sư chỉ huy hiện trường: ra chỉ thị cho thợ lành nghề, xác nhận tiến độ từng công đoạn, hỏi lại số liệu kỹ thuật, và báo cáo kết quả lên khách hàng bằng kính ngữ chuẩn doanh nghiệp.

---

## Tình huống 1 — Xưởng hàn · 9:00 Ngày 1, ra chỉ thị TIG溶接 cho Matsumoto

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>松本<rt>まつもと</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>金型<rt>かながた</rt></ruby>の<ruby>修復<rt>しゅうふく</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bác Matsumoto, chào buổi sáng. Hôm nay mình bắt đầu công việc khôi phục khuôn ạ. Mong bác giúp đỡ.)* |
| Matsumoto | おはよう、タイさん。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてもらえる？<br>*(Chào buổi sáng, Thái. Cho tôi xem bản vẽ nhé?)* |
| Thái | はい、こちらです。<ruby>水路<rt>すいろ</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>します。<ruby>既存<rt>きそん</rt></ruby>の<ruby>水路<rt>すいろ</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>に、<ruby>赤<rt>あか</rt></ruby>でマークした<ruby>位置<rt>いち</rt></ruby>です。<br>*(Vâng, đây ạ. Mình bổ sung 2 đường nước. Vị trí đánh dấu đỏ, ở giữa các đường nước cũ.)* |
| Matsumoto | なるほど。TIG<ruby>溶接<rt>ようせつ</rt></ruby>で<ruby>埋<rt>う</rt></ruby>めて、それから<ruby>新<rt>あたら</rt></ruby>しい<ruby>穴<rt>あな</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けるということですね。<br>*(Hiểu rồi. Hàn TIG đắp lại, rồi khoan lỗ mới — đúng không?)* |
| Thái | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>母材<rt>ぼざい</rt></ruby>はSKD61です。<ruby>溶接棒<rt>ようせつぼう</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>材質<rt>ざいしつ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đúng vậy ạ. Vật liệu nền là SKD61. Que hàn xin bác dùng cùng vật liệu ạ.)* |
| Matsumoto | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>予熱<rt>よねつ</rt></ruby><ruby>400<rt>よんひゃく</rt></ruby><ruby>度<rt>ど</rt></ruby>でいくよ。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>させる。<br>*(Rõ. Tôi sẽ nung trước 400 độ. Một ngày làm xong 2 đường.)* |
| Thái | ありがとうございます。<ruby>私<rt>わたし</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<br>*(Em cảm ơn bác. Cho em đứng bên cạnh học hỏi với ạ.)* |

---

## Tình huống 2 — Xưởng hàn · 14:00 Ngày 1, quan sát đàn anh thao tác hàn

| Vai | Lời thoại |
|---|---|
| Matsumoto | （TIG<ruby>溶接<rt>ようせつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>、トーチを<ruby>動<rt>うご</rt></ruby>かしながら）タイさん、<ruby>見<rt>み</rt></ruby>てて。トーチの<ruby>角度<rt>かくど</rt></ruby>は<ruby>70<rt>ななじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>ぐらい。<br>*(Đang hàn TIG, di chuyển mỏ hàn. Thái, nhìn này. Góc mỏ hàn khoảng 70 độ.)* |
| Thái | はい、<ruby>70<rt>ななじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>ですね。なぜ<ruby>90<rt>きゅうじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>ではないんですか？<br>*(Vâng, 70 độ ạ. Tại sao không phải 90 độ ạ?)* |
| Matsumoto | <ruby>90<rt>きゅうじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>だと<ruby>溶<rt>と</rt></ruby>けた<ruby>金属<rt>きんぞく</rt></ruby>が<ruby>流<rt>なが</rt></ruby>れない。<ruby>少<rt>すこ</rt></ruby>し<ruby>傾<rt>かたむ</rt></ruby>けると<ruby>母材<rt>ぼざい</rt></ruby>と<ruby>溶接棒<rt>ようせつぼう</rt></ruby>が<ruby>均一<rt>きんいつ</rt></ruby>に<ruby>溶<rt>と</rt></ruby>け<ruby>合<rt>あ</rt></ruby>う。<br>*(90 độ thì kim loại chảy không đều. Nghiêng chút thì nền và que hàn nóng chảy hoà đều với nhau.)* |
| Thái | すみません、「<ruby>溶<rt>と</rt></ruby>け<ruby>合<rt>あ</rt></ruby>う」というのは？<br>*(Xin lỗi, "tokeau" nghĩa là gì ạ?)* |
| Matsumoto | <ruby>二<rt>ふた</rt></ruby>つの<ruby>金属<rt>きんぞく</rt></ruby>が<ruby>溶<rt>と</rt></ruby>けて、<ruby>一<rt>ひと</rt></ruby>つになることだよ。<ruby>融合<rt>ゆうごう</rt></ruby>とも<ruby>言<rt>い</rt></ruby>う。<br>*(Là hai loại kim loại nóng chảy hoà làm một. Còn gọi là 融合.)* |
| Thái | なるほど、<ruby>融合<rt>ゆうごう</rt></ruby>ですね。メモします。<br>*(Ra vậy, 融合 ạ. Em ghi lại.)* |
| Matsumoto | <ruby>速度<rt>そくど</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>。<ruby>速<rt>はや</rt></ruby>すぎると<ruby>溶<rt>と</rt></ruby>け<ruby>込<rt>こ</rt></ruby>みが<ruby>浅<rt>あさ</rt></ruby>くなる。<ruby>遅<rt>おそ</rt></ruby>すぎると<ruby>母材<rt>ぼざい</rt></ruby>が<ruby>歪<rt>ゆが</rt></ruby>む。<br>*(Tốc độ cũng quan trọng. Nhanh quá thì ngấu nông. Chậm quá thì nền bị méo.)* |
| Thái | <ruby>歪<rt>ゆが</rt></ruby>むと<ruby>金型<rt>かながた</rt></ruby>の<ruby>精度<rt>せいど</rt></ruby>が<ruby>狂<rt>くる</rt></ruby>うということですね。<br>*(Méo thì độ chính xác của khuôn bị lệch, đúng không ạ?)* |
| Matsumoto | その<ruby>通<rt>とお</rt></ruby>り。<ruby>30<rt>さんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>溶接<rt>ようせつ</rt></ruby>やってきて、<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>焦<rt>あせ</rt></ruby>らないこと。<br>*(Đúng. Tôi làm hàn 30 năm rồi, điều quan trọng nhất là đừng vội.)* |
| Thái | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được nhiều điều ạ. Em cảm ơn bác.)* |

---

## Tình huống 3 — Xưởng hàn · 17:00 Ngày 1, Matsumoto báo cáo tiến độ

| Vai | Lời thoại |
|---|---|
| Matsumoto | タイさん、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>水路<rt>すいろ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>、<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>り<ruby>溶接<rt>ようせつ</rt></ruby><ruby>終<rt>お</rt></ruby>わった。<br>*(Thái, hôm nay xong rồi. 2 đường nước, hàn đúng kế hoạch.)* |
| Thái | <ruby>速<rt>はや</rt></ruby>いですね！ありがとうございます。<ruby>仕上<rt>しあ</rt></ruby>がりはいかがですか？<br>*(Nhanh thật ạ! Em cảm ơn bác. Bề mặt thành phẩm thế nào ạ?)* |
| Matsumoto | <ruby>気泡<rt>きほう</rt></ruby>なし、<ruby>割<rt>わ</rt></ruby>れもなし。<ruby>明日<rt>あした</rt></ruby><ruby>浸透<rt>しんとう</rt></ruby><ruby>探傷<rt>たんしょう</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Không có bọt khí, không có nứt. Mai làm kiểm tra thẩm thấu xác nhận lại.)* |
| Thái | <ruby>浸透<rt>しんとう</rt></ruby><ruby>探傷<rt>たんしょう</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>...というのは<ruby>表面<rt>ひょうめん</rt></ruby>の<ruby>欠陥<rt>けっかん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>検査<rt>けんさ</rt></ruby>ですか？<br>*(Kiểm tra thẩm thấu... là kiểm tra để phát hiện khuyết tật bề mặt phải không ạ?)* |
| Matsumoto | そう。<ruby>赤<rt>あか</rt></ruby>い<ruby>液<rt>えき</rt></ruby>を<ruby>塗<rt>ぬ</rt></ruby>って、<ruby>細<rt>こま</rt></ruby>かいひびがあれば<ruby>染<rt>し</rt></ruby>み<ruby>込<rt>こ</rt></ruby>む。<ruby>目<rt>め</rt></ruby>で<ruby>見<rt>み</rt></ruby>えない<ruby>欠陥<rt>けっかん</rt></ruby>を<ruby>探<rt>さが</rt></ruby>す<ruby>方法<rt>ほうほう</rt></ruby>だ。<br>*(Đúng. Bôi dung dịch đỏ, nếu có vết nứt nhỏ sẽ ngấm vào. Là cách tìm khuyết tật mắt thường không thấy.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。では、<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>検査<rt>けんさ</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Em rõ rồi ạ. Vậy 9 giờ sáng mai mình bắt đầu kiểm tra. Bác vất vả rồi ạ.)* |

---

## Tình huống 4 — Khu MC · 8:30 Ngày 2, chỉ thị 段取り cho Sakurai

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はMC<ruby>段取<rt>だんど</rt></ruby>りをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Sakurai, chào buổi sáng. Hôm nay nhờ anh cài đặt máy MC ạ.)* |
| Sakurai | おはよう、タイさん。<ruby>溶接<rt>ようせつ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>の<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>加工<rt>かこう</rt></ruby>ですね。<ruby>図面<rt>ずめん</rt></ruby>と<ruby>加工<rt>かこう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Chào, Thái. Là gia công hoàn thiện chỗ hàn nhỉ. Cho tôi xem bản vẽ và điều kiện gia công.)* |
| Thái | はい、こちらです。<ruby>新<rt>あたら</rt></ruby>しい<ruby>水路<rt>すいろ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>、<ruby>直径<rt>ちょっけい</rt></ruby><ruby>8<rt>はち</rt></ruby>ミリ、<ruby>深<rt>ふか</rt></ruby>さ<ruby>200<rt>にひゃく</rt></ruby>ミリです。<br>*(Vâng, đây ạ. Hai đường nước mới, đường kính 8mm, sâu 200mm.)* |
| Sakurai | <ruby>深穴<rt>ふかあな</rt></ruby><ruby>加工<rt>かこう</rt></ruby>ですね。<ruby>段取<rt>だんど</rt></ruby>り<ruby>替<rt>か</rt></ruby>えに<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>加工<rt>かこう</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>くらいかかります。<br>*(Là gia công lỗ sâu nhỉ. Chuyển đổi setup mất 1 tiếng, gia công mất khoảng 3 tiếng.)* |
| Thái | <ruby>段取<rt>だんど</rt></ruby>り<ruby>替<rt>か</rt></ruby>えで<ruby>注意<rt>ちゅうい</rt></ruby>することは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Khi chuyển setup cần chú ý điều gì ạ?)* |
| Sakurai | <ruby>基準<rt>きじゅん</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>方<rt>かた</rt></ruby>です。<ruby>溶接<rt>ようせつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>基準<rt>きじゅん</rt></ruby>で<ruby>固定<rt>こてい</rt></ruby>しないと、<ruby>位置<rt>いち</rt></ruby>がずれます。<br>*(Là cách lấy mặt chuẩn. Không kẹp theo cùng chuẩn như trước khi hàn thì vị trí sẽ lệch.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>山本<rt>やまもと</rt></ruby>さんにNCプログラムの<ruby>編集<rt>へんしゅう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いしてあります。<br>*(Em hiểu rồi ạ. Em đã nhờ anh Yamamoto chỉnh sửa chương trình NC rồi.)* |
| Sakurai | <ruby>了解<rt>りょうかい</rt></ruby>。プログラムができたら、まず<ruby>空運転<rt>からうんてん</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Rõ. Chương trình xong thì chạy không tải kiểm tra trước nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>空運転<rt>からうんてん</rt></ruby>してから<ruby>本<rt>ほん</rt></ruby><ruby>加工<rt>かこう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhất định chạy không tải xong mới gia công thật. Mong anh giúp đỡ.)* |

---

## Tình huống 5 — Phòng CAM · 10:00 Ngày 2, hỏi lại Yamamoto về NCプログラム

| Vai | Lời thoại |
|---|---|
| Yamamoto | タイさん、NCプログラム<ruby>編集<rt>へんしゅう</rt></ruby>できました。<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Thái, đã chỉnh sửa xong chương trình NC. Cậu xem giúp.)* |
| Thái | ありがとうございます。<ruby>切削<rt>せっさく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>は<ruby>前回<rt>ぜんかい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか？<br>*(Em cảm ơn ạ. Điều kiện cắt giống lần trước không ạ?)* |
| Yamamoto | <ruby>少<rt>すこ</rt></ruby>し<ruby>変<rt>か</rt></ruby>えました。<ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>を<ruby>10<rt>じゅう</rt></ruby>%<ruby>下<rt>さ</rt></ruby>げて、<ruby>主軸<rt>しゅじく</rt></ruby><ruby>回転<rt>かいてん</rt></ruby><ruby>数<rt>すう</rt></ruby>を<ruby>15<rt>じゅうご</rt></ruby>%<ruby>上<rt>あ</rt></ruby>げます。<br>*(Tôi đổi chút. Giảm tốc độ tiến dao 10%, tăng số vòng quay trục chính 15%.)* |
| Thái | すみません、なぜそうしたのですか？<br>*(Xin lỗi, vì sao lại đổi như vậy ạ?)* |
| Yamamoto | <ruby>溶接<rt>ようせつ</rt></ruby><ruby>部<rt>ぶ</rt></ruby>は<ruby>母材<rt>ぼざい</rt></ruby>より<ruby>硬度<rt>こうど</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いことがあります。<ruby>無理<rt>むり</rt></ruby>な<ruby>切削<rt>せっさく</rt></ruby>で<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>欠<rt>か</rt></ruby>けたら<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(Vùng hàn đôi khi cứng hơn nền. Cắt cố quá thì mẻ dao là rắc rối lớn.)* |
| Thái | <ruby>工具<rt>こうぐ</rt></ruby>が<ruby>欠<rt>か</rt></ruby>けるということですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>加工<rt>かこう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>伸<rt>の</rt></ruby>びますか？<br>*(Mẻ dao đúng không ạ. Em hiểu rồi. Thời gian gia công có dài thêm không ạ?)* |
| Yamamoto | <ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>くらい<ruby>長<rt>なが</rt></ruby>くなりますが、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>です。<br>*(Dài thêm khoảng 30 phút, nhưng an toàn là trên hết.)* |
| Thái | はい、<ruby>同<rt>おな</rt></ruby><ruby>感<rt>かん</rt></ruby>です。この<ruby>条件<rt>じょうけん</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Vâng, em cũng nghĩ vậy. Mình tiến hành theo điều kiện này.)* |

---

## Tình huống 6 — Khu thử khuôn · 9:00 Ngày 5, chỉ huy 再トライアル

| Vai | Lời thoại |
|---|---|
| Thái | チームのみなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>再<rt>さい</rt></ruby>トライアルを<ruby>始<rt>はじ</rt></ruby>めます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cả team, chào buổi sáng. Hôm nay bắt đầu thử khuôn lại. Mong mọi người giúp đỡ.)* |
| Sakurai | <ruby>金型<rt>かながた</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>け<ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>水路<rt>すいろ</rt></ruby>の<ruby>接続<rt>せつぞく</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Đã lắp khuôn xong. Đường nước cũng đã kiểm tra kết nối.)* |
| Thái | ありがとうございます。<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>保圧<rt>ほあつ</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>設定<rt>せってい</rt></ruby>します。<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>は<ruby>前回<rt>ぜんかい</rt></ruby>より<ruby>10<rt>じゅう</rt></ruby>%<ruby>下<rt>さ</rt></ruby>げます。<br>*(Em cảm ơn. Em xác nhận điều kiện ép phun. Áp giữ cài 80MPa. Tốc độ phun giảm 10% so với lần trước.)* |
| Yamamoto | <ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>は<ruby>60<rt>ろくじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>安定<rt>あんてい</rt></ruby>しています。<ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby>も<ruby>規定<rt>きてい</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<br>*(Nhiệt khuôn ổn định 60 độ. Nhiệt nhựa cũng trong tiêu chuẩn.)* |
| Thái | では、<ruby>1<rt>いっ</rt></ruby><ruby>発目<rt>ぱつめ</rt></ruby><ruby>射出<rt>しゃしゅつ</rt></ruby>します。みなさん、<ruby>異常<rt>いじょう</rt></ruby>があれば<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Vậy em bắn phát đầu tiên. Mọi người có bất thường thì lên tiếng ngay nhé.)* |
| Thái | （ボタンを<ruby>押<rt>お</rt></ruby>す）<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>します。<br>*(Bấm nút. Bắt đầu phun.)* |
| Sakurai | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>定盤<rt>じょうばん</rt></ruby>に<ruby>置<rt>お</rt></ruby>く）<ruby>反<rt>そ</rt></ruby>り<ruby>計測<rt>けいそく</rt></ruby>します...<ruby>0.4<rt>れいてんよん</rt></ruby>ミリ！<ruby>許容<rt>きょよう</rt></ruby><ruby>内<rt>ない</rt></ruby>です！<br>*(Lấy sản phẩm ra đặt lên bàn chuẩn. Đo độ cong... 0.4mm! Trong dung sai!)* |
| Thái | やった！みなさんのおかげです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Tuyệt vời! Nhờ mọi người đấy ạ. Em cảm ơn rất nhiều.)* |
| Matsumoto | （<ruby>隅<rt>すみ</rt></ruby>から）よかったな、タイさん。<br>*(Từ góc xưởng. Mừng cho cậu, Thái.)* |
| Thái | <ruby>松本<rt>まつもと</rt></ruby>さんの<ruby>溶接<rt>ようせつ</rt></ruby>のおかげです。<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>がうまくいきました。<br>*(Là nhờ bác Matsumoto hàn đấy ạ. Bổ sung đường nước thành công rồi.)* |

---

## Tình huống 7 — Phòng đo · 10:00 Ngày 6, hỏi lại Yamamoto về kết quả CMM

| Vai | Lời thoại |
|---|---|
| Yamamoto | タイさん、CMM<ruby>測定<rt>そくてい</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>全<rt>すべ</rt></ruby>ての<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Thái, kết quả đo CMM ra rồi. Đã kiểm tra hết các kích thước.)* |
| Thái | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>結果<rt>けっか</rt></ruby>はどうでしたか？<br>*(Vâng ạ. Kết quả thế nào ạ?)* |
| Yamamoto | <ruby>50<rt>ごじゅう</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>すべて<ruby>仕様<rt>しよう</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<ruby>一番<rt>いちばん</rt></ruby><ruby>厳<rt>きび</rt></ruby>しい<ruby>箇所<rt>かしょ</rt></ruby>でも<ruby>公差<rt>こうさ</rt></ruby>の<ruby>60<rt>ろくじゅっ</rt></ruby>%<ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まっています。<br>*(Cả 50 vị trí đều trong tiêu chuẩn. Vị trí khắt khe nhất cũng nằm trong 60% dung sai.)* |
| Thái | すみません、「<ruby>公差<rt>こうさ</rt></ruby>の<ruby>60<rt>ろくじゅっ</rt></ruby>%<ruby>以内<rt>いない</rt></ruby>」というのは、まだ<ruby>40<rt>よんじゅっ</rt></ruby>%の<ruby>余裕<rt>よゆう</rt></ruby>があるという<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "trong 60% dung sai" nghĩa là vẫn còn 40% dư địa phải không ạ?)* |
| Yamamoto | その<ruby>通<rt>とお</rt></ruby>り。<ruby>量産<rt>りょうさん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってもバラつきに<ruby>耐<rt>た</rt></ruby>えられる<ruby>余裕<rt>よゆう</rt></ruby>です。<br>*(Đúng vậy. Vào sản xuất hàng loạt vẫn chịu được dao động.)* |
| Thái | <ruby>合格<rt>ごうかく</rt></ruby>ですね！データを<ruby>頂<rt>いただ</rt></ruby>けますか？<ruby>浜田<rt>はまだ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Đạt rồi! Anh cho em xin dữ liệu được không ạ? Em sẽ báo cáo cho anh Hamada.)* |
| Yamamoto | はい、PDFにまとめておきました。LINEで<ruby>送<rt>おく</rt></ruby>ります。<br>*(Rồi, tôi gộp thành PDF sẵn. Gửi qua LINE nhé.)* |
| Thái | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Em cảm ơn anh. Anh giúp em quá ạ.)* |

---

## Tình huống 8 — Bàn làm việc · 15:00 Ngày 7, báo cáo Hamada qua LINE (kính ngữ)

| Vai | Lời thoại |
|---|---|
| Thái | （LINE<ruby>入力<rt>にゅうりょく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>）<ruby>浜田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。みなみ<ruby>精密<rt>せいみつ</rt></ruby><ruby>金型<rt>かながた</rt></ruby>のグエンでございます。<br>*(Đang gõ LINE. Kính gửi anh Hamada, em luôn được anh giúp đỡ. Em là Nguyễn của Minami Seimitsu.)* |
| Thái | <ruby>先週<rt>せんしゅう</rt></ruby>ご<ruby>報告<rt>ほうこく</rt></ruby>した<ruby>金型<rt>かながた</rt></ruby>の<ruby>修正<rt>しゅうせい</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>が<ruby>本日<rt>ほんじつ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>いたしました。<br>*(Công việc sửa khuôn em báo cáo tuần trước hôm nay đã hoàn tất.)* |
| Thái | <ruby>反<rt>そ</rt></ruby>りは<ruby>0.4<rt>れいてんよん</rt></ruby>ミリで、<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まっております。CMM<ruby>測定<rt>そくてい</rt></ruby>でも<ruby>全<rt>すべ</rt></ruby>ての<ruby>寸法<rt>すんぽう</rt></ruby>が<ruby>仕様<rt>しよう</rt></ruby><ruby>内<rt>ない</rt></ruby>であることを<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みでございます。<br>*(Độ cong là 0.4mm, nằm trong dung sai cho phép. Qua đo CMM cũng đã xác nhận toàn bộ kích thước đều trong tiêu chuẩn.)* |
| Thái | <ruby>測定<rt>そくてい</rt></ruby>データを<ruby>添付<rt>てんぷ</rt></ruby>いたします。ご<ruby>確認<rt>かくにん</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Em đính kèm dữ liệu đo. Kính mong anh kiểm tra giúp ạ.)* |
| Hamada | （<ruby>既読<rt>きどく</rt></ruby>）グエンさん、<ruby>素早<rt>すばや</rt></ruby>い<ruby>対応<rt>たいおう</rt></ruby>ありがとうございます。データ<ruby>拝見<rt>はいけん</rt></ruby>しました。<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>結果<rt>けっか</rt></ruby>ですね。<br>*(Đã đọc. Anh Nguyên, cảm ơn em xử lý nhanh. Tôi đã xem dữ liệu. Kết quả tuyệt vời.)* |
| Hamada | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby>にサンプル<ruby>確認<rt>かくにん</rt></ruby>に<ruby>訪問<rt>ほうもん</rt></ruby>させていただきます。よろしいでしょうか？<br>*(Thứ tư tuần sau tôi xin sang kiểm tra mẫu. Có được không em?)* |
| Thái | はい、<ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>水曜日<rt>すいようび</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>でいかがでしょうか？<br>*(Vâng, em xin nhận. 10 giờ thứ tư có được không ạ?)* |
| Hamada | <ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>で<ruby>結構<rt>けっこう</rt></ruby>です。それでは<ruby>来週<rt>らいしゅう</rt></ruby>お<ruby>会<rt>あ</rt></ruby>いしましょう。<br>*(10 giờ là được. Tuần sau gặp lại em nhé.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Hôm nay em cảm ơn anh. Mong anh tiếp tục giúp đỡ ạ.)* |

---

## Tình huống 9 — Xưởng · 17:00 Ngày 7, Thái cảm ơn team bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Thái | みなさん、ちょっとよろしいですか？<ruby>本日<rt>ほんじつ</rt></ruby>で<ruby>修復<rt>しゅうふく</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>が<ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>いたしました。<br>*(Mọi người, em xin phép một chút. Hôm nay công việc sửa chữa đã hoàn tất an toàn.)* |
| Thái | <ruby>松本<rt>まつもと</rt></ruby>さんのTIG<ruby>溶接<rt>ようせつ</rt></ruby>、<ruby>桜井<rt>さくらい</rt></ruby>さんのMC<ruby>段取<rt>だんど</rt></ruby>り、<ruby>山本<rt>やまもと</rt></ruby>さんのNCプログラムとCMM<ruby>測定<rt>そくてい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Hàn TIG của bác Matsumoto, cài đặt MC của anh Sakurai, chương trình NC và đo CMM của anh Yamamoto, em chân thành cảm ơn.)* |
| Matsumoto | タイさんも<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>でリーダーらしくなったな。<br>*(Thái sang năm thứ 5 cũng ra dáng trưởng nhóm rồi nhỉ.)* |
| Sakurai | <ruby>指示<rt>しじ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>で<ruby>動<rt>うご</rt></ruby>きやすかったよ。<br>*(Chỉ thị rõ ràng, tôi dễ làm việc.)* |
| Yamamoto | <ruby>分<rt>わ</rt></ruby>からないことを<ruby>素直<rt>すなお</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くのもタイさんのいいところだね。<br>*(Hỏi thẳng thắn khi không hiểu cũng là điểm tốt của cậu.)* |
| Thái | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。まだまだ<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>浜田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>がサンプル<ruby>確認<rt>かくにん</rt></ruby>に<ruby>来<rt>こ</rt></ruby>られますので、<ruby>準備<rt>じゅんび</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em không dám ạ. Em vẫn đang học. Thứ tư 10 giờ tuần sau anh Hamada sang kiểm tra mẫu, mong mọi người giúp em chuẩn bị.)* |
| Sakurai | <ruby>了解<rt>りょうかい</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Rõ. Vất vả rồi nhé.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người vất vả rồi ạ.)* |

---

## Tình huống 10 — Phòng 201 ký túc · 22:00 Ngày 7, gọi điện về cho Mai (scene tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật. Putra đã về Indonesia từ năm thứ 3 nên Thái gọi video về Việt Nam.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, xong rồi em. Khuôn EV cứu được. |
| Mai | (tiếng Việt) Trời, may quá anh. Em lo cả tuần. Một tuần mà sửa xong khuôn cả tỉ yên thật á? |
| Thái | (tiếng Việt) Ừ. Bác Matsumoto hàn TIG, anh Sakurai cài máy, anh Yamamoto sửa chương trình NC. Anh chỉ đứng điều phối thôi. Mà phải nói tiếng Nhật trang trọng để báo cáo khách hàng, mệt hơn cả làm việc tay chân. |
| Mai | (tiếng Việt) Anh báo cáo bằng kính ngữ á? "お世話になっております" với "よろしくお願い申し上げます" đúng không? |
| Thái | (tiếng Việt) Đúng rồi. Em giỏi ghê. Anh còn dùng "拝見しました" với "承りました" nữa. Năm năm rồi mới quen miệng kính ngữ. |
| Mai | (tiếng Việt) Hôm nay anh học được câu nào hay? |
| Thái | (tiếng Việt) Hôm nay học từ bác Matsumoto: "焦らないこと" — đừng vội. Bác làm hàn 30 năm rồi, bảo bí quyết chỉ có vậy. Anh thấy mình ngộ ra nhiều. |
| Mai | (tiếng Việt) Anh ghi vào sổ đi. Còn 2 tháng nữa là đám cưới. Em đặt thiệp rồi anh ạ. |
| Thái | (tiếng Việt) Ừ, anh nhớ. Visa vĩnh trú tháng sau cũng có kết quả. Mình sắp xong rồi em. |
| Mai | (tiếng Việt) Anh đi ngủ sớm đi. Mai còn đi làm. |
| Thái | (tiếng Việt) Ừ, ngủ ngon em. |

---

## Đọng lại chương 5

Sau khủng hoảng phát hiện khuyết tật khuôn EV, Thái — nay đã là **設計係長** năm thứ 5 — chỉ huy một tuần khôi phục bằng các mẫu câu của kỹ sư cấp trung: **ra chỉ thị TIG溶接** cho thợ lành nghề Matsumoto (<ruby>溶接棒<rt>ようせつぼう</rt></ruby>・<ruby>予熱<rt>よねつ</rt></ruby>・<ruby>母材<rt>ぼざい</rt></ruby>), **chỉ thị 段取り và NC編集** cho Sakurai - Yamamoto (<ruby>切削<rt>せっさく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>・<ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>・<ruby>空運転<rt>からうんてん</rt></ruby>), **điều phối 再トライアル** với thông số ép phun (<ruby>保圧<rt>ほあつ</rt></ruby><ruby>80<rt>はちじゅう</rt></ruby>MPa・<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>), **xác nhận kết quả CMM** (<ruby>仕様<rt>しよう</rt></ruby><ruby>内<rt>ない</rt></ruby>・<ruby>公差<rt>こうさ</rt></ruby>), và **báo cáo Hamada bằng kính ngữ doanh nghiệp** (お世話になっております・拝見しました・承りました・よろしくお願い申し上げます). Đồng thời học được bí quyết hiện trường từ Matsumoto: **「焦らないこと」** — đừng vội — chính là phẩm chất sau 30 năm nghề. Ở năm thứ 5, Thái đã chuyển từ vai trò **聞く側** (người hỏi) sang **指示する側** (người ra chỉ thị), nhưng vẫn giữ thói quen hỏi lại lễ phép khi chưa rõ chỉ số — đó là điểm tốt mà cả ba đàn anh đều công nhận.

> Từ vựng & mẫu câu chương này: 修復・TIG溶接・溶接棒・予熱・母材・融合・浸透探傷検査・段取り・空運転・NCプログラム・切削条件・送り速度・主軸回転数・再トライアル・射出・保圧・反り・許容内・CMM測定・仕様内・公差・お世話になっております・拝見しました・承りました・よろしくお願い申し上げます・焦らないこと・〜というのは・〜ということですね・恐縮でございます

## Bí quyết chương

- **Năm 5 — vai trò đảo chiều**: Thái từ người hỏi chuyển thành người ra chỉ thị, nhưng vẫn hỏi lại khi cần — đó là sự trưởng thành.
- **Matsumoto 30 năm hàn**: nhân vật đàn anh hiện trường, dạy bí quyết "đừng vội" — payoff cho mạch quan sát đàn anh từ T1.
- **Kính ngữ với khách hàng**: お世話になっております / 拝見しました / 承りました / よろしくお願い申し上げます — bộ kính ngữ doanh nghiệp Thái sẽ dùng suốt đời.
- **Mai + đám cưới 2 tháng + 永住**: chốt mạch truyện 5 năm, gọi điện về thay cho Putra đã rời ký túc.

> *"11/2026. Năm 5. Cứu được khuôn EV. Từ người hỏi thành người chỉ huy. 2 tháng nữa cưới Mai."*', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000006, 800000018, NULL, 'markdown_book', 'T6. Thư cảm ơn của Toyota (トヨタ感謝状)', '# Sách kỹ sư khuôn đúc · T6. Thư cảm ơn của Toyota (トヨタ感謝状)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Trưởng nhóm khuôn vỏ pin EV tại Anjo) đón đoàn Toyota Shatai đến trao 感謝状. Học các mẫu hội thoại tiếng Nhật cấp cao trong buổi tiếp khách trang trọng: tiếp 客先 và xác nhận thông tin dự án (量産・採用), nhận 感謝状 cá nhân và đáp lễ khiêm tốn, hỏi lại lễ phép từ chuyên ngành (異例の措置・会社宛・明記), báo cáo thành tích chia sẻ công với 部下 trong 朝礼, cảm ơn 嘱託 đàn anh đã hướng dẫn, đáp lễ qua điện thoại với gia đình tại Việt Nam.

---

## Bối cảnh

Cuối tháng 11 năm 2026. Vỏ pin EV của 株式会社みなみ精密金型 vừa được Toyota duyệt 量産 — sự kiện đầu tiên trong 30 năm lịch sử công ty được khách hàng gửi 感謝状 cá nhân. Thái giữ vị trí 係長, dẫn nhóm 5 người. Trình độ tiếng Nhật N2. Chương này tập trung mẫu câu giao tiếp trang trọng trong vai trò 係長: tiếp 客先 nhận thư cảm ơn, đáp lễ khiêm tốn theo けんじょうご, hỏi lại từ chuyên ngành nội bộ, và chia sẻ công với cấp dưới ở 朝礼.

---

## Tình huống 1 — Phòng tiếp khách công ty · 13:00, tiếp 客先 và xác nhận thông tin dự án

| Vai | Lời thoại |
|---|---|
| Hamada | みなみ<ruby>精密<rt>せいみつ</rt></ruby><ruby>金型<rt>かながた</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>き、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Quý công ty Minami Seimitsu Kanagata, hôm nay xin chân thành cảm ơn quý vị đã dành thời gian.)* |
| Kawakami | いえいえ、こちらこそ<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>遠<rt>とお</rt></ruby>いところ、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Không có gì, chúng tôi mới phải cảm ơn ạ. Cảm ơn ông đã đến tận đây từ xa.)* |
| Hamada | <ruby>先日<rt>せんじつ</rt></ruby>ご<ruby>連絡<rt>れんらく</rt></ruby>した<ruby>通<rt>とお</rt></ruby>り、EV<ruby>電池<rt>でんち</rt></ruby>ケースの<ruby>金型<rt>かながた</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby><ruby>量産<rt>りょうさん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>となりました。<br>*(Như đã liên lạc hôm trước, khuôn vỏ pin EV đã được phê duyệt sản xuất hàng loạt suôn sẻ.)* |
| Thái | <ruby>量産<rt>りょうさん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>...ということは、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>採用<rt>さいよう</rt></ruby>が<ruby>決<rt>き</rt></ruby>まったということですね。<br>*(Phê duyệt sản xuất hàng loạt... tức là chính thức được chọn dùng rồi đúng không ạ.)* |
| Hamada | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>当社<rt>とうしゃ</rt></ruby>のEV<ruby>新車<rt>しんしゃ</rt></ruby>は2028<ruby>年<rt>ねん</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>いたします。<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>を<ruby>採用<rt>さいよう</rt></ruby>させていただきます。<br>*(Đúng vậy. Xe EV mới của bên tôi sẽ ra mắt chính thức năm 2028. Khuôn của quý công ty được chọn dùng.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>く<ruby>下<rt>さ</rt></ruby>げる）<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Cúi đầu sâu. Em xin chân thành cảm ơn. Đây là vinh dự quá lớn đối với em.)* |
| Hamada | そして<ruby>本日<rt>ほんじつ</rt></ruby>は、グエンさんに<ruby>個人<rt>こじん</rt></ruby><ruby>感謝状<rt>かんしゃじょう</rt></ruby>をお<ruby>渡<rt>わた</rt></ruby>しに<ruby>参<rt>まい</rt></ruby>りました。<br>*(Và hôm nay tôi đến để trao thư cảm ơn cá nhân cho anh Nguyễn.)* |

---

## Tình huống 2 — Phòng tiếp khách · 13:30, nhận 感謝状 và đáp lễ khiêm tốn

| Vai | Lời thoại |
|---|---|
| Hamada | （<ruby>封筒<rt>ふうとう</rt></ruby>を<ruby>両手<rt>りょうて</rt></ruby>で<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）グエン<ruby>係長<rt>かかりちょう</rt></ruby>、こちらが<ruby>当社<rt>とうしゃ</rt></ruby>からの<ruby>感謝状<rt>かんしゃじょう</rt></ruby>でございます。<br>*(Trao phong bì bằng hai tay. Trưởng nhóm Nguyễn, đây là thư cảm ơn từ phía công ty chúng tôi ạ.)* |
| Thái | （<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）<ruby>有<rt>あ</rt></ruby>り<ruby>難<rt>がた</rt></ruby>く<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。<br>*(Nhận bằng hai tay. Em xin trân trọng nhận ạ.)* |
| Thái | （<ruby>封筒<rt>ふうとう</rt></ruby>を<ruby>静<rt>しず</rt></ruby>かに<ruby>開<rt>あ</rt></ruby>け、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>して<ruby>読<rt>よ</rt></ruby>む）「トヨタ<ruby>車体<rt>しゃたい</rt></ruby><ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>より<ruby>感謝状<rt>かんしゃじょう</rt></ruby> — グエン・ヴァン・タイ<ruby>様<rt>さま</rt></ruby> — EV<ruby>電池<rt>でんち</rt></ruby>ケース<ruby>金型<rt>かながた</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>における<ruby>優<rt>すぐ</rt></ruby>れたリーダーシップと<ruby>技術力<rt>ぎじゅつりょく</rt></ruby>に<ruby>対<rt>たい</rt></ruby>し、<ruby>深<rt>ふか</rt></ruby>く<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>意<rt>い</rt></ruby>を<ruby>表<rt>あらわ</rt></ruby>します」<br>*(Mở phong bì nhẹ nhàng, đọc thành tiếng. "Thư cảm ơn từ Toyota Shatai — gửi anh Nguyễn Văn Thái — Xin chân thành tỏ lòng biết ơn về tinh thần lãnh đạo xuất sắc và năng lực kỹ thuật trong phát triển khuôn vỏ pin EV".)* |
| Thái | （<ruby>涙<rt>なみだ</rt></ruby>をこらえる）こんなに<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>感謝状<rt>かんしゃじょう</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>き、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Cố nén nước mắt. Được nhận thư cảm ơn trang trọng thế này, em thật sự rất ngại ạ.)* |
| Hamada | いえ、<ruby>当然<rt>とうぜん</rt></ruby>のことです。グエンさんのリーダーシップなしでは、この<ruby>金型<rt>かながた</rt></ruby>は<ruby>完成<rt>かんせい</rt></ruby>しませんでした。<br>*(Không, đây là điều đương nhiên. Không có tinh thần lãnh đạo của anh Nguyễn, khuôn này đã không thể hoàn thành.)* |
| Thái | <ruby>過分<rt>かぶん</rt></ruby>なお<ruby>言葉<rt>ことば</rt></ruby>でございます。<ruby>私<rt>わたくし</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>ではなく、チーム<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>でございます。<br>*(Ông quá lời rồi ạ. Đây không phải sức của riêng em, mà là kết quả nỗ lực của toàn bộ thành viên trong nhóm.)* |
| Kawakami | グエン<ruby>係長<rt>かかりちょう</rt></ruby>らしい<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(Đúng là lời của Trưởng nhóm Nguyễn nhỉ.)* |

---

## Tình huống 3 — Hành lang sau buổi tiếp · 15:30, hỏi lại 嘱託 Tanaka về từ chuyên ngành "異例の措置"

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、トヨタの<ruby>感謝状<rt>かんしゃじょう</rt></ruby>、すごいな！<br>*(Thái ơi, thư cảm ơn của Toyota, oách quá!)* |
| Thái | はい、<ruby>田中<rt>たなか</rt></ruby>さん。ありがとうございます。まだ<ruby>信<rt>しん</rt></ruby>じられない<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Vâng, anh Tanaka. Cảm ơn anh ạ. Em vẫn chưa tin nổi.)* |
| Tanaka | <ruby>異例<rt>いれい</rt></ruby>の<ruby>措置<rt>そち</rt></ruby>だぞ、これは。<br>*(Đây là biện pháp đặc biệt đấy.)* |
| Thái | すみません、「<ruby>異例<rt>いれい</rt></ruby>の<ruby>措置<rt>そち</rt></ruby>」というのは、どういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi anh, "iretsu no sochi" nghĩa là gì ạ?)* |
| Tanaka | <ruby>普通<rt>ふつう</rt></ruby>ではない<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>という<ruby>意味<rt>いみ</rt></ruby>だ。<ruby>会社宛<rt>かいしゃあて</rt></ruby><ruby>感謝状<rt>かんしゃじょう</rt></ruby>に<ruby>個人<rt>こじん</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>が<ruby>明記<rt>めいき</rt></ruby>されるのは、<ruby>近年<rt>きんねん</rt></ruby>では<ruby>初<rt>はじ</rt></ruby>めてだぞ。<br>*(Là cách ứng xử đặc biệt khác thường. Thư cảm ơn gửi cho công ty mà ghi rõ tên cá nhân — chuyện hiếm gặp trong những năm gần đây đấy.)* |
| Thái | 「<ruby>明記<rt>めいき</rt></ruby>」というのは、<ruby>名前<rt>なまえ</rt></ruby>がはっきり<ruby>書<rt>か</rt></ruby>かれるということですね。<br>*(Còn "meiki" tức là tên được ghi rõ ra đúng không ạ.)* |
| Tanaka | そうだ。よく<ruby>分<rt>わ</rt></ruby>かったな。<ruby>俺<rt>おれ</rt></ruby>、<ruby>嘱託<rt>しょくたく</rt></ruby><ruby>続<rt>つづ</rt></ruby>けてて<ruby>本当<rt>ほんとう</rt></ruby>によかったよ。タイ<ruby>君<rt>くん</rt></ruby>の<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>られて。<br>*(Đúng. Em hiểu nhanh đấy. Tôi tiếp tục làm hợp đồng đặc biệt là đúng thật. Được nhìn em trưởng thành.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>来日<rt>らいにち</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えてくださったおかげです。<br>*(Cúi đầu. Là nhờ anh đã chỉ dạy em từ ngày đầu tiên đặt chân tới Nhật ạ.)* |

---

## Tình huống 4 — Sảnh nhà máy · 8:30 sáng hôm sau, 朝礼 chia sẻ công với 部下

| Vai | Lời thoại |
|---|---|
| Kawakami | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>大変<rt>たいへん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しい<ruby>報告<rt>ほうこく</rt></ruby>があります。トヨタ<ruby>車体<rt>しゃたい</rt></ruby><ruby>様<rt>さま</rt></ruby>から<ruby>感謝状<rt>かんしゃじょう</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>しました！<br>*(Mọi người, chào buổi sáng. Hôm nay có một báo cáo rất vui. Chúng ta vừa nhận được thư cảm ơn từ Toyota Shatai!)* |
| Nhân viên toàn xưởng | （<ruby>大<rt>おお</rt></ruby>きく<ruby>拍手<rt>はくしゅ</rt></ruby>する）おお〜！<br>*(Vỗ tay to. Oh!)* |
| Kawakami | しかも、グエン<ruby>係長<rt>かかりちょう</rt></ruby>に<ruby>個人<rt>こじん</rt></ruby><ruby>感謝状<rt>かんしゃじょう</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby><ruby>創業<rt>そうぎょう</rt></ruby><ruby>以来<rt>いらい</rt></ruby><ruby>初<rt>はじ</rt></ruby>めての<ruby>快挙<rt>かいきょ</rt></ruby>です。<br>*(Hơn nữa, là thư cảm ơn cá nhân gửi tới Trưởng nhóm Nguyễn. Là kỳ tích đầu tiên kể từ khi thành lập công ty.)* |
| Nhân viên toàn xưởng | （<ruby>歓声<rt>かんせい</rt></ruby>）おめでとうございます！<br>*(Hoan hô. Xin chúc mừng!)* |
| Kawakami | グエン<ruby>係長<rt>かかりちょう</rt></ruby>、<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trưởng nhóm Nguyễn, mời anh nói vài lời.)* |
| Thái | （<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>て、<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）おはようございます。<ruby>個人<rt>こじん</rt></ruby><ruby>感謝状<rt>かんしゃじょう</rt></ruby>と<ruby>申<rt>もう</rt></ruby>しましても、これはチームの<ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby>のおかげです。<br>*(Tiến lên trước, cúi đầu sâu. Chào buổi sáng. Dù gọi là thư cảm ơn cá nhân, đây là nhờ 5 thành viên trong nhóm em.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>、ロン<ruby>君<rt>くん</rt></ruby>とフン<ruby>君<rt>くん</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>、アディ<ruby>君<rt>くん</rt></ruby>の<ruby>解析<rt>かいせき</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>、<ruby>山本<rt>やまもと</rt></ruby>さんの<ruby>品質<rt>ひんしつ</rt></ruby><ruby>管理<rt>かんり</rt></ruby> — どれが<ruby>欠<rt>か</rt></ruby>けてもこの<ruby>感謝状<rt>かんしゃじょう</rt></ruby>はありませんでした。<br>*(Sự chỉ đạo thiết kế của Chủ nhiệm Sakurai, sự điều phối hiện trường của Long và Hùng, tính toán phân tích của Adi, quản lý chất lượng của anh Yamamoto — thiếu phần nào cũng không có thư cảm ơn này.)* |
| Sakurai | （<ruby>頷<rt>うなず</rt></ruby>く）<br>*(Gật đầu.)* |
| Long, Hùng, Adi, Yamamoto | （<ruby>嬉<rt>うれ</rt></ruby>しそうに<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<br>*(Vui ra mặt, cúi đầu.)* |
| Thái | <ruby>感謝状<rt>かんしゃじょう</rt></ruby>はチーム<ruby>全員<rt>ぜんいん</rt></ruby>のものとして、<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>飾<rt>かざ</rt></ruby>らせていただきます。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin phép treo thư cảm ơn ở văn phòng coi như là của cả nhóm. Mong mọi người tiếp tục giúp đỡ.)* |

---

## Tình huống 5 — Khu nghỉ giải lao · 10:00, quan sát đàn anh Sakurai dạy cách giữ khiêm tốn sau thành tích

| Vai | Lời thoại |
|---|---|
| Sakurai | グエン<ruby>係長<rt>かかりちょう</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。さっきの<ruby>挨拶<rt>あいさつ</rt></ruby>、よかったよ。<br>*(Trưởng nhóm Nguyễn, vất vả rồi. Lời chào ban nãy của em hay đấy.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>、ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>しました。<br>*(Chủ nhiệm Sakurai, em cảm ơn. Em hồi hộp lắm.)* |
| Sakurai | <ruby>感謝状<rt>かんしゃじょう</rt></ruby>をもらった<ruby>後<rt>あと</rt></ruby>こそ、<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>だ。<ruby>覚<rt>おぼ</rt></ruby>えておくと<ruby>良<rt>い</rt></ruby>い。<br>*(Sau khi nhận được thư cảm ơn mới là lúc tư thế quan trọng. Em nhớ kỹ thì tốt.)* |
| Thái | はい、<ruby>是非<rt>ぜひ</rt></ruby><ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng, mong anh chỉ giáo ạ.)* |
| Sakurai | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>慢心<rt>まんしん</rt></ruby>しないこと。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ずチームの<ruby>名前<rt>なまえ</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すこと。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>にすぐ<ruby>取<rt>と</rt></ruby>りかかること。<br>*(Một, tuyệt đối không tự mãn. Hai, nhất thiết phải nêu tên cả nhóm trước. Ba, bắt tay ngay vào công việc tiếp theo.)* |
| Thái | 「<ruby>慢心<rt>まんしん</rt></ruby>しない」というのは、<ruby>調子<rt>ちょうし</rt></ruby>に<ruby>乗<rt>の</rt></ruby>らないということですね。<br>*(Còn "manshin shinai" tức là không để bản thân lên mặt đúng không ạ.)* |
| Sakurai | その<ruby>通<rt>とお</rt></ruby>り。<ruby>感謝状<rt>かんしゃじょう</rt></ruby>は<ruby>過去<rt>かこ</rt></ruby>のもの。<ruby>次<rt>つぎ</rt></ruby>のプロジェクトでは<ruby>君<rt>きみ</rt></ruby>はまた<ruby>新人<rt>しんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだ。<br>*(Đúng vậy. Thư cảm ơn là chuyện quá khứ. Ở dự án tiếp theo em lại là người mới như bao người.)* |
| Thái | <ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。ありがとうございます、<ruby>主任<rt>しゅにん</rt></ruby>。<br>*(Em xin khắc cốt ghi tâm. Em cảm ơn anh, Chủ nhiệm.)* |

---

## Tình huống 6 — Phòng họp nhỏ · 16:00, báo cáo Tanaka 工場長 và xác nhận hướng đi tiếp theo

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby><ruby>頂<rt>いただ</rt></ruby>きありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>感謝状<rt>かんしゃじょう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<br>*(Trưởng nhà máy Tanaka, cảm ơn ông đã dành thời gian. Em đến để báo cáo về việc thư cảm ơn hôm nay.)* |
| Tanaka 工場長 | お<ruby>疲<rt>つか</rt></ruby>れさま、グエン<ruby>係長<rt>かかりちょう</rt></ruby>。<ruby>本当<rt>ほんとう</rt></ruby>におめでとう。<br>*(Vất vả rồi, Trưởng nhóm Nguyễn. Thật sự xin chúc mừng.)* |
| Thái | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>量産<rt>りょうさん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>き、2028<ruby>年<rt>ねん</rt></ruby>の<ruby>新車<rt>しんしゃ</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>に<ruby>採用<rt>さいよう</rt></ruby>される<ruby>運<rt>はこ</rt></ruby>びとなりました。<br>*(Em rất ngại ạ. Bên Hamada đã chính thức phê duyệt sản xuất hàng loạt, và khuôn sẽ được chọn dùng cho xe mới ra mắt năm 2028.)* |
| Tanaka 工場長 | <ruby>来月<rt>らいげつ</rt></ruby>からの<ruby>体制<rt>たいせい</rt></ruby>はどう<ruby>進<rt>すす</rt></ruby>めますか？<br>*(Cơ cấu từ tháng sau sẽ tiến hành thế nào?)* |
| Thái | <ruby>量産<rt>りょうさん</rt></ruby><ruby>金型<rt>かながた</rt></ruby>の<ruby>納入<rt>のうにゅう</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>です。<ruby>桜井<rt>さくらい</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>に<ruby>詳<rt>くわ</rt></ruby>しい<ruby>計画<rt>けいかく</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。<br>*(Giao khuôn sản xuất hàng loạt vào tháng 3 sang năm. Sau khi bàn bạc với Chủ nhiệm Sakurai, em sẽ nộp kế hoạch chi tiết vào thứ Hai tuần sau.)* |
| Tanaka 工場長 | よろしい。<ruby>報連相<rt>ほうれんそう</rt></ruby>がきちんとできていますね。<br>*(Tốt. Báo cáo - liên lạc - bàn bạc của em làm chỉn chu nhỉ.)* |
| Thái | <ruby>来日<rt>らいにち</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>に<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったことを、<ruby>今<rt>いま</rt></ruby>も<ruby>守<rt>まも</rt></ruby>っております。<br>*(Em vẫn đang giữ những điều ông đã dạy em ngày đầu tiên đến Nhật ạ.)* |
| Tanaka 工場長 | （<ruby>微笑<rt>ほほえ</rt></ruby>む）<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>でここまで<ruby>来<rt>き</rt></ruby>たな。<br>*(Mỉm cười. 5 năm em đã đến được tận đây nhỉ.)* |

---

## Tình huống 7 — Ký túc · 22:00, gọi điện báo Mai và mẹ (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & gia đình ở quê. Mai sắp sang Nhật cưới Thái.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, video call) Mai ơi, mẹ ơi! Anh có chuyện lớn báo. |
| Mai | (tiếng Việt) Anh! Mặt anh đỏ hết rồi. Có chuyện gì vậy? |
| Mẹ Thái | (tiếng Việt) Thái, con có sao không? |
| Thái | (tiếng Việt) Mẹ ơi, con không sao. Hôm nay Toyota gửi thư cảm ơn cá nhân cho con — 個人感謝状. Trong 30 năm lịch sử công ty, con là người đầu tiên được nhận. |
| Mai | (tiếng Việt) Ôi! Anh nổi tiếng rồi! |
| Thái | (tiếng Việt) Không phải nổi tiếng đâu em. Chú Sakurai chủ nhiệm dặn anh là sau khi nhận thư cảm ơn càng phải khiêm tốn — 慢心しない, không được lên mặt. Anh sáng nay 朝礼 đã nói rõ là công của cả nhóm 5 người. |
| Mẹ Thái | (tiếng Việt) Con dạy thế là phải. Lúa chín thì cúi đầu. |
| Thái | (tiếng Việt) Vâng mẹ. À, hôm nay con cũng được hỏi chú Tanaka — chú嘱託 dạy con từ ngày đầu — một từ mới: 異例の措置, tức là biện pháp đặc biệt khác thường. Chú bảo thư cảm ơn ghi tên cá nhân là chuyện hiếm có. |
| Mai | (tiếng Việt) Em sẽ kể lại cho bố mẹ ở nhà nghe. Còn 1 tháng nữa em sang là cưới rồi, anh giữ sức khoẻ. |
| Thái | (tiếng Việt) Ừ. Anh mang thư cảm ơn về Việt Nam khoe bố mẹ rồi treo ở nhà mình. |
| Mẹ Thái | (tiếng Việt) Tốt con. Đi ngủ sớm, mai còn đi làm. |

---

## Tình huống 8 — Phòng riêng · 23:00, viết nhật ký tổng kết (scene tiếng Việt — nội tâm)

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, viết nhật ký) 28/11/2026. Ngày nhận thư cảm ơn của Toyota Shatai. |
| Thái | (tiếng Việt) Học hôm nay: cách nói 身に余る光栄・有り難く頂戴いたします khi nhận thư trang trọng; cách dùng 過分なお言葉 để đáp lễ khiêm tốn; biết thêm 異例の措置・明記・慢心しない. |
| Thái | (tiếng Việt) Anh Sakurai dặn 3 điều sau khi nhận khen: không tự mãn, nêu tên cả nhóm trước, bắt tay vào việc tiếp. |
| Thái | (tiếng Việt) 5 năm trước ngày đầu xuống sân bay Centrair, mình không biết "二次サプライヤー" là gì. Hôm nay nhận thư cảm ơn cá nhân của Toyota. Lúa chín thì cúi đầu — câu mẹ nói lúc nãy đúng nhất. |
| Thái | (tiếng Việt) Còn 1 tháng nữa Mai sang. Sang năm 3/2027 giao khuôn 量産. Không được dừng ở đây. |

---

## Đọng lại chương 6

Ngày nhận 感謝状 cá nhân từ Toyota Shatai, Thái học loạt mẫu câu giao tiếp trang trọng của một 係長: **tiếp 客先 và xác nhận thông tin dự án** (量産承認・採用させていただきます・〜ということですね), **nhận thư cảm ơn và đáp lễ khiêm tốn** (有り難く頂戴いたします・身に余る光栄・過分なお言葉でございます), **hỏi lại lễ phép từ chuyên ngành nội bộ** (〜というのは、どういう意味ですか — 異例の措置・明記・慢心しない), **báo cáo 朝礼 chia sẻ công với 部下** (チーム全員のおかげです・どれが欠けても〜ありませんでした), và **báo cáo cấp trên cùng xác nhận hướng đi tiếp** (来月からの体制・〜上、〜させていただきます). Quan sát đàn anh 桜井 主任 dạy 3 nguyên tắc sau khi nhận khen: 慢心しない・チームの名前を先に出す・次の仕事にすぐ取りかかる. Triết lý lớn: thành tích càng lớn thì 姿勢 càng phải thấp — đúng như câu "lúa chín thì cúi đầu" mẹ Thái nhắc trong cuộc gọi tối.

> Từ vựng & mẫu câu chương này: 感謝状・個人感謝状・量産・量産承認・採用・優れた・リーダーシップ・技術力・表す・異例の措置・会社宛・明記・慢心しない・身に余る光栄・有り難く頂戴いたします・過分なお言葉でございます・恐縮です・身に刻みます・〜運びとなりました・〜上、〜させていただきます・係長・嘱託・朝礼・快挙・報連相

## Bí quyết chương

- **Payoff arc 5 năm**: 5/2022 xuống sân bay không biết 二次サプライヤー → 11/2026 nhận 感謝状 cá nhân. Đối xứng với T1.
- **Đàn anh xuyên 5 sách**: Tanaka 工場長 (đón sân bay T1) + Tanaka 嘱託 (dạy lúc trẻ, giờ làm hợp đồng đặc biệt) + Sakurai 主任 (dạy giữ khiêm tốn sau khen).
- **VN nhà**: Mai (1 tháng nữa sang cưới) + mẹ ("lúa chín thì cúi đầu") — chốt mạch hôn nhân.
- **Bridge sang T7**: 量産納入 3/2027 + cưới Mai 12/2026.

> *"11/2026. 感謝状 cá nhân Toyota. 30 năm đầu tiên. Lúa chín thì cúi đầu."*', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000007, 800000018, NULL, 'markdown_book', 'T7. Mẹ qua thăm hai tuần (母来日)', '# Sách kỹ sư khuôn đúc · T7. Mẹ qua thăm hai tuần (母来日)

> **Mục tiêu nhân vật:** Thái (27 tuổi, Anjo) đón mẹ và em gái Linh-Anh sang Nhật lần đầu. Học các mẫu hội thoại tiếng Nhật khi tiếp gia đình ở Nhật: giới thiệu người thân với cấp trên bằng kính ngữ (母を紹介させていただきます), phiên dịch hai chiều VN ↔ JP, đáp lễ khi được tiếp đãi (お心遣いに感謝いたします), hỏi lại lễ phép từ chuyên ngành khi khách Toyota nhắc đến dự án (〜というのは?), trao đổi với 先輩 về thủ tục visa ngắn hạn (短期滞在), và xin phép nghỉ phép có lý do gia đình (有給休暇をいただきたい).

---

## Bối cảnh

Tháng 12 năm 2026. Thái đã 5 năm ở Anjo, hiện là leader dự án khuôn EV của Toyota. Mẹ (53 tuổi, ở Hà Nội) sang Nhật lần đầu bằng visa 短期滞在 90 ngày, dự kiến ở 2 tuần; em gái Linh-Anh (du học sinh năm 3 tại Nagoya) đón cùng. Trình độ tiếng Nhật của Thái: N2. Chương này tập trung mẫu câu giao tiếp khi tiếp gia đình ở môi trường công sở Nhật: giới thiệu mẹ với 工場長 và khách Toyota bằng kính ngữ, phiên dịch song song, đáp lễ chủ nhà Nhật, và xử lý thủ tục nghỉ phép.

---

## Tình huống 1 — Bàn làm việc Anjo · 9:00, xin nghỉ phép có lý do gia đình

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<br>*(Anh Tanaka, em xin một chút thời gian được không ạ?)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, mời.)* |
| Thái | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>母<rt>はは</rt></ruby>がベトナムから<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ます。<ruby>短期滞在<rt>たんきたいざい</rt></ruby>ビザで<ruby>初<rt>はじ</rt></ruby>めての<ruby>来日<rt>らいにち</rt></ruby>です。<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>を<ruby>5<rt>いつ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>いただきたいのですが。<br>*(Từ tuần sau hai tuần, mẹ em từ Việt Nam sang Nhật. Mẹ em lần đầu sang Nhật bằng visa ngắn hạn. Em xin phép nghỉ có lương 5 ngày được không ạ?)* |
| Tanaka | お<ruby>母様<rt>かあさま</rt></ruby>が<ruby>来<rt>こ</rt></ruby>られるんですね。<ruby>5<rt>いつ</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぶりですか?<br>*(Mẹ cậu sang à? Sau 5 năm phải không?)* |
| Thái | はい、<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>ぶりです。<ruby>申<rt>もう</rt></ruby><ruby>込<rt>こ</rt></ruby><ruby>書<rt>しょ</rt></ruby>は<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Vâng, sau 5 năm rồi ạ. Em sẽ nộp đơn xin nghỉ trong ngày hôm nay.)* |
| Tanaka | もちろん<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。EVプロジェクトの<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎはどうしますか?<br>*(Tất nhiên là được. Bàn giao dự án EV thì sao?)* |
| Thái | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>資料<rt>しりょう</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>してお<ruby>渡<rt>わた</rt></ruby>しします。<ruby>緊急<rt>きんきゅう</rt></ruby>のときはLINEで<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Em sẽ lập tài liệu bàn giao đưa anh Sato. Trường hợp khẩn thì em xử lý qua LINE.)* |
| Tanaka | ありがとう。それから、<ruby>是非<rt>ぜひ</rt></ruby>お<ruby>母様<rt>かあさま</rt></ruby>を<ruby>工場<rt>こうじょう</rt></ruby>にお<ruby>連<rt>つ</rt></ruby>れください。<ruby>家内<rt>かない</rt></ruby>がフォーを<ruby>作<rt>つく</rt></ruby>って<ruby>待<rt>ま</rt></ruby>っていますよ。<br>*(Cảm ơn. Mà nhớ đưa mẹ sang xưởng nhé. Vợ tôi làm phở đợi rồi đấy.)* |
| Thái | お<ruby>心遣<rt>こころづか</rt></ruby>いに<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<ruby>母<rt>はは</rt></ruby>もきっと<ruby>喜<rt>よろこ</rt></ruby>びます。<br>*(Em xin cảm ơn sự quan tâm của anh. Mẹ em chắc chắn sẽ vui ạ.)* |

---

## Tình huống 2 — Sân bay Centrair sảnh đến · 10:30, đón mẹ và phiên dịch lần đầu

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (tiếng Việt, vẫy tay) Anh ơi! Mẹ qua cửa hải quan rồi này! |
| Mẹ Thái | (tiếng Việt, kéo vali) Thái ơi! Mẹ đến nơi rồi con! |
| Thái | (tiếng Việt, ôm mẹ) Mẹ ơi! Năm năm rồi mẹ! Đường bay có mệt không mẹ? |
| Mẹ Thái | (tiếng Việt) Không mệt con. Sao con gầy thế này! |
| Nhân viên sân bay | （<ruby>声<rt>こえ</rt></ruby>をかける）あのう、<ruby>到着<rt>とうちゃく</rt></ruby>カードのお<ruby>控<rt>ひか</rt></ruby>えはお<ruby>持<rt>も</rt></ruby>ちですか?<br>*(Xin lỗi, bác có giữ bản sao tờ khai nhập cảnh không ạ?)* |
| Thái | はい、<ruby>母<rt>はは</rt></ruby>のものですね。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。(quay sang mẹ, tiếng Việt) Mẹ ơi, cho con xin tờ giấy màu vàng vừa kẹp trong hộ chiếu nhé.<br>*(Vâng, là của mẹ tôi ạ. Xin chờ một chút.)* |
| Mẹ Thái | (tiếng Việt, lục túi) Đây con. |
| Thái | （<ruby>渡<rt>わた</rt></ruby>す）これでよろしいでしょうか。<br>*(Đưa giấy. Cái này được không ạ?)* |
| Nhân viên sân bay | はい、<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>滞在<rt>たいざい</rt></ruby>を<ruby>楽<rt>たの</rt></ruby>しんでくださいね。<br>*(Vâng, được rồi. Chúc bác có thời gian thoải mái.)* |
| Thái | ありがとうございます。(tiếng Việt, dịch cho mẹ) Cô ấy chúc mẹ ở Nhật vui vẻ ạ. |
| Mẹ Thái | (tiếng Việt) Ơ, cảm ơn cô ấy giúp mẹ. Tiếng Nhật con nói nhanh quá, mẹ chẳng kịp nghe. |

---

## Tình huống 3 — Trên tàu Meitetsu về Anjo · 12:00, hỏi lại từ ga + xác nhận lộ trình

| Vai | Lời thoại |
|---|---|
| Linh-Anh | (tiếng Việt) Mẹ ơi, mình đi tàu từ Centrair về Anjo phải đổi tàu một lần ở Kanayama mẹ nhé. |
| Mẹ Thái | (tiếng Việt) Kanayama là gì hả con? |
| Thái | (tiếng Việt) Là tên ga, mẹ ạ. Tý nữa con hỏi nhân viên cho chắc. |
| Thái | （<ruby>駅員<rt>えきいん</rt></ruby>に）すみません、<ruby>金山<rt>かなやま</rt></ruby><ruby>駅<rt>えき</rt></ruby>で<ruby>安城<rt>あんじょう</rt></ruby><ruby>方面<rt>ほうめん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えるんですよね?<br>*(Xin lỗi, mình đổi sang hướng Anjo ở ga Kanayama đúng không ạ?)* |
| Nhân viên ga | はい、<ruby>金山<rt>かなやま</rt></ruby>で<ruby>名鉄<rt>めいてつ</rt></ruby><ruby>名古屋<rt>なごや</rt></ruby><ruby>本線<rt>ほんせん</rt></ruby>の<ruby>豊橋<rt>とよはし</rt></ruby><ruby>行<rt>ゆ</rt></ruby>きにお<ruby>乗<rt>の</rt></ruby>り<ruby>換<rt>か</rt></ruby>えください。<br>*(Vâng, ở Kanayama đổi sang tuyến Meitetsu Nagoya, chuyến đi Toyohashi.)* |
| Thái | すみません、「<ruby>本線<rt>ほんせん</rt></ruby>」というのは<ruby>急行<rt>きゅうこう</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Xin lỗi, "tuyến chính" có giống tàu nhanh không ạ?)* |
| Nhân viên ga | いいえ、<ruby>本線<rt>ほんせん</rt></ruby>は<ruby>路線<rt>ろせん</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>です。その<ruby>中<rt>なか</rt></ruby>に<ruby>急行<rt>きゅうこう</rt></ruby>と<ruby>特急<rt>とっきゅう</rt></ruby>があります。<ruby>新安城<rt>しんあんじょう</rt></ruby>に<ruby>停<rt>と</rt></ruby>まる<ruby>急行<rt>きゅうこう</rt></ruby>にお<ruby>乗<rt>の</rt></ruby>りください。<br>*(Không, "tuyến chính" là tên tuyến. Trong đó có tàu nhanh và tàu đặc cấp. Bác đi tàu nhanh dừng ở Shin-Anjo nhé.)* |
| Thái | <ruby>新安城<rt>しんあんじょう</rt></ruby>に<ruby>停<rt>と</rt></ruby>まる<ruby>急行<rt>きゅうこう</rt></ruby>ということですね。ありがとうございました。<br>*(Là tàu nhanh dừng ở Shin-Anjo đúng không ạ. Em cảm ơn.)* |
| Mẹ Thái | (tiếng Việt) Con nói tiếng Nhật trôi chảy quá! Mẹ chỉ biết há mồm nghe thôi. |
| Thái | (tiếng Việt) Mẹ chưa từng nghe con nói mà. Bây giờ con sửa cả tài liệu kỹ thuật Toyota bằng tiếng Nhật đấy mẹ. |

---

## Tình huống 4 — Sảnh xưởng みなみ精密金型 · ngày 2 sáng 9:30, giới thiệu mẹ với 工場長 bằng kính ngữ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>母<rt>はは</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。こちらが<ruby>母<rt>はは</rt></ruby>のグエン・ティ・ランです。<br>*(Anh Tanaka, em xin giới thiệu mẹ em. Đây là mẹ em — Nguyễn Thị Lan.)* |
| Tanaka | （<ruby>深<rt>ふか</rt></ruby>くお<ruby>辞儀<rt>じぎ</rt></ruby>する）グエン<ruby>様<rt>さま</rt></ruby>、ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>工場長<rt>こうじょうちょう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>でございます。<br>*(Cúi đầu thấp. Hoan nghênh bác Nguyễn đã đến. Tôi là Tanaka, trưởng nhà máy.)* |
| Mẹ Thái | (tiếng Việt) Chào anh Tanaka. Cảm ơn anh đã chăm sóc cháu nhà tôi suốt 5 năm trời. |
| Thái | （<ruby>通訳<rt>つうやく</rt></ruby>する）<ruby>母<rt>はは</rt></ruby>が「この<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>息子<rt>むすこ</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になり<ruby>誠<rt>まこと</rt></ruby>にありがとうございました」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Phiên dịch. Mẹ em nói "Cảm ơn anh thật lòng vì đã chăm sóc cháu nhà tôi suốt 5 năm qua".)* |
| Tanaka | いえいえ、こちらこそ。タイさんは<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>宝<rt>たから</rt></ruby>です。<ruby>真面目<rt>まじめ</rt></ruby>で<ruby>勉強熱心<rt>べんきょうねっしん</rt></ruby>で、<ruby>今<rt>いま</rt></ruby>ではEVプロジェクトの<ruby>中心<rt>ちゅうしん</rt></ruby>です。<br>*(Không có gì, tôi mới phải cảm ơn. Thái là kho báu của công ty. Cậu ấy nghiêm túc và ham học, bây giờ là trung tâm của dự án EV.)* |
| Thái | (tiếng Việt, dịch cho mẹ) Anh ấy nói con là "kho báu" của công ty, là trung tâm dự án EV mẹ ạ. |
| Mẹ Thái | (tiếng Việt, rưng rưng) Trời ơi, anh ấy khen con quá lời. |
| Thái | <ruby>母<rt>はは</rt></ruby>は「<ruby>過分<rt>かぶん</rt></ruby>な<ruby>褒<rt>ほ</rt></ruby>め<ruby>言葉<rt>ことば</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>き<ruby>恐縮<rt>きょうしゅく</rt></ruby>です」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Cảm ơn anh quá lời, tôi xấu hổ quá".)* |
| Tanaka | こちらへどうぞ。<ruby>工場<rt>こうじょう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しご<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Mời bác. Tôi dẫn bác đi tham quan xưởng một chút.)* |

---

## Tình huống 5 — Khu máy ép · 10:00, Thái phiên dịch lúc Tanaka giải thích nghề con trai

| Vai | Lời thoại |
|---|---|
| Tanaka | （<ruby>金型<rt>かながた</rt></ruby>を<ruby>指<rt>さ</rt></ruby>す）グエン<ruby>様<rt>さま</rt></ruby>、これがタイさんが<ruby>設計<rt>せっけい</rt></ruby>した<ruby>金型<rt>かながた</rt></ruby>です。<ruby>電気<rt>でんき</rt></ruby><ruby>自動車<rt>じどうしゃ</rt></ruby>の<ruby>内装部品<rt>ないそうぶひん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<br>*(Chỉ vào khuôn. Bác Nguyễn, đây là khuôn do Thái thiết kế. Để làm linh kiện nội thất ô tô điện.)* |
| Thái | (tiếng Việt) Mẹ ơi, anh ấy bảo cái khuôn này con thiết kế, để làm đồ nội thất xe điện. |
| Mẹ Thái | (tiếng Việt) Trời, cái cục sắt to đùng này con vẽ ra à? |
| Thái | <ruby>母<rt>はは</rt></ruby>が「<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>息子<rt>むすこ</rt></ruby>が<ruby>設計<rt>せっけい</rt></ruby>したのか」と<ruby>驚<rt>おどろ</rt></ruby>いております。<br>*(Mẹ em ngạc nhiên hỏi "có thật con tôi thiết kế cái đó không".)* |
| Tanaka | はい、<ruby>本当<rt>ほんとう</rt></ruby>ですよ。タイさんは<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しています。<ruby>精度<rt>せいど</rt></ruby>は<ruby>0.005<rt>れいてんれいれいご</rt></ruby>ミリまで<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Vâng, thật đấy. Thái phụ trách thiết kế từ năm thứ ba. Độ chính xác canh đến 0,005mm.)* |
| Thái | <ruby>0.005<rt>れいてんれいれいご</rt></ruby>ミリ、<ruby>髪<rt>かみ</rt></ruby>の<ruby>毛<rt>け</rt></ruby>の<ruby>太<rt>ふと</rt></ruby>さの<ruby>10<rt>じゅう</rt></ruby><ruby>分<rt>ぶん</rt></ruby>の<ruby>1<rt>いち</rt></ruby>です。(tiếng Việt) Tức là một phần mười sợi tóc mẹ ạ. |
| Mẹ Thái | (tiếng Việt) Thế à, ghê thật. Mẹ tự hào quá con ơi. |
| Tanaka | お<ruby>母様<rt>かあさま</rt></ruby>、タイさんを<ruby>立派<rt>りっぱ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てていただき、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Bác ơi, cảm ơn bác đã nuôi dạy Thái nên người thật giỏi giang.)* |
| Thái | <ruby>母<rt>はは</rt></ruby>が「<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。こちらこそありがとうございます」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Xấu hổ quá. Tôi mới phải cảm ơn anh ạ".)* |

---

## Tình huống 6 — Phòng khách nhà 工場長 · 12:30, đáp lễ khi được mời phở

| Vai | Lời thoại |
|---|---|
| Vợ Tanaka | （フォーを<ruby>運<rt>はこ</rt></ruby>ぶ）グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>口<rt>くち</rt></ruby>に<ruby>合<rt>あ</rt></ruby>うかどうか<ruby>分<rt>わ</rt></ruby>かりませんが、<ruby>是非<rt>ぜひ</rt></ruby>どうぞ。<br>*(Bưng phở ra. Bác Nguyễn, không biết có hợp khẩu vị bác không nhưng mời bác.)* |
| Thái | （<ruby>母<rt>はは</rt></ruby>に）Phở mẹ ạ. Cô ấy tự nấu đấy. |
| Mẹ Thái | (tiếng Việt, ngạc nhiên) Ơ, phở Việt Nam! Sao chị ấy biết nấu thế? |
| Thái | <ruby>奥<rt>おく</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>心遣<rt>こころづか</rt></ruby>いに<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<ruby>母<rt>はは</rt></ruby>がとても<ruby>驚<rt>おどろ</rt></ruby>いております。どこで<ruby>覚<rt>おぼ</rt></ruby>えられたのですか?<br>*(Thưa cô, em xin cảm ơn sự quan tâm. Mẹ em rất ngạc nhiên. Cô học nấu ở đâu vậy ạ?)* |
| Vợ Tanaka | YouTubeの<ruby>料理<rt>りょうり</rt></ruby><ruby>動画<rt>どうが</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら<ruby>練習<rt>れんしゅう</rt></ruby>しました。タイさんを<ruby>娘<rt>むすめ</rt></ruby>のように<ruby>感<rt>かん</rt></ruby>じておりますから。<br>*(Tôi vừa xem video nấu ăn trên YouTube vừa tập. Vì tôi coi cậu Thái như con gái mình vậy.)* |
| Mẹ Thái | (tiếng Việt, sau khi nếm) Đúng vị nhà mình đấy con! Cay vừa, nước trong, có cả quế và hồi. |
| Thái | <ruby>母<rt>はは</rt></ruby>が「<ruby>故郷<rt>こきょう</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>そのものです」と<ruby>絶賛<rt>ぜっさん</rt></ruby>しております。<ruby>本当<rt>ほんとう</rt></ruby>においしいです。<br>*(Mẹ em khen ngợi rằng "đúng hương vị quê hương". Phở thật sự rất ngon.)* |
| Vợ Tanaka | （<ruby>嬉<rt>うれ</rt></ruby>しそうに）よかったです。たくさん<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってくださいね。<br>*(Vui ra mặt. May quá. Bác ăn nhiều vào nhé.)* |
| Thái | いただきます。(tiếng Việt) Mẹ ăn thoải mái nhé, đừng ngại. |

---

## Tình huống 7 — Sảnh công ty · ngày 7, 14:00, Thái phiên dịch lúc khách Toyota gặp mẹ

| Vai | Lời thoại |
|---|---|
| Hamada | あ、タイさん。こちらがお<ruby>母様<rt>かあさま</rt></ruby>ですか?<br>*(À, anh Thái. Đây là mẹ anh phải không?)* |
| Thái | はい、<ruby>浜田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、ご<ruby>紹介<rt>しょうかい</rt></ruby>させていただきます。<ruby>母<rt>はは</rt></ruby>のグエン・ティ・ランです。お<ruby>母<rt>かあ</rt></ruby>さん、こちらはトヨタ<ruby>車体<rt>しゃたい</rt></ruby>の<ruby>浜田<rt>はまだ</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>です。<br>*(Vâng, anh Hamada, em xin giới thiệu. Đây là mẹ em — Nguyễn Thị Lan. Mẹ ơi, đây là trưởng phòng Hamada của Toyota Shatai.)* |
| Hamada | <ruby>浜田<rt>はまだ</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。タイさんは<ruby>当<rt>とう</rt></ruby>プロジェクトのリーダーで、<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Tôi là Hamada. Anh Thái là leader dự án bên tôi, đã giúp đỡ chúng tôi rất nhiều.)* |
| Mẹ Thái | (tiếng Việt) Cậu này... ở Toyota à con? |
| Thái | (tiếng Việt) Vâng, là khách hàng lớn nhất của bọn con — Toyota Shatai. <ruby>母<rt>はは</rt></ruby>が「<ruby>息子<rt>むすこ</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になっております」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Cảm ơn anh đã quan tâm đến cháu nhà tôi".)* |
| Hamada | <ruby>先月<rt>せんげつ</rt></ruby>、タイさんに<ruby>個人<rt>こじん</rt></ruby><ruby>感謝状<rt>かんしゃじょう</rt></ruby>を<ruby>授与<rt>じゅよ</rt></ruby>いたしました。<ruby>EV<rt>イーブイ</rt></ruby><ruby>金型<rt>かながた</rt></ruby>の<ruby>軽量化<rt>けいりょうか</rt></ruby>で<ruby>15<rt>じゅうご</rt></ruby>パーセントのコスト<ruby>削減<rt>さくげん</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>されたのです。<br>*(Tháng trước, chúng tôi đã trao thư cảm ơn cá nhân cho anh Thái. Cậu ấy đã góp phần giảm 15% chi phí nhờ làm khuôn EV nhẹ hơn.)* |
| Thái | すみません、<ruby>母<rt>はは</rt></ruby>のために<ruby>少<rt>すこ</rt></ruby>し<ruby>通訳<rt>つうやく</rt></ruby>いたします。(tiếng Việt) Anh ấy nói tháng trước Toyota trao "thư cảm ơn cá nhân" cho con, vì khuôn EV con làm nhẹ hơn giúp giảm 15% chi phí mẹ ạ. |
| Mẹ Thái | (tiếng Việt, mắt đỏ hoe) Cảm ơn anh nhiều lắm, anh quá tốt với con tôi. |
| Thái | <ruby>母<rt>はは</rt></ruby>が「<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>もございません」と<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ em nói "Không biết nói lời cảm ơn nào cho đủ".)* |
| Hamada | こちらこそ、<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>息子<rt>むすこ</rt></ruby>さんをお<ruby>持<rt>も</rt></ruby>ちで<ruby>羨<rt>うらや</rt></ruby>ましいです。<br>*(Tôi mới phải cảm ơn, ngưỡng mộ bác có người con tuyệt vời như vậy.)* |

---

## Tình huống 8 — Bàn ăn xưởng · 15:00, hỏi lại từ chuyên ngành khi Hamada nhắc dự án

| Vai | Lời thoại |
|---|---|
| Hamada | タイさん、<ruby>来期<rt>らいき</rt></ruby>の<ruby>水素<rt>すいそ</rt></ruby>エンジン<ruby>関連<rt>かんれん</rt></ruby>プロジェクトの<ruby>件<rt>けん</rt></ruby>、お<ruby>母様<rt>かあさま</rt></ruby>の<ruby>滞在中<rt>たいざいちゅう</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>一<rt>ひと</rt></ruby>つだけ<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Anh Thái, về dự án liên quan động cơ hydro kỳ tới, xin lỗi vì hỏi lúc mẹ anh đang ở Nhật, nhưng cho tôi xác nhận một điểm.)* |
| Thái | はい、もちろんです。どうぞ。<br>*(Vâng, tất nhiên. Mời anh.)* |
| Hamada | <ruby>水素<rt>すいそ</rt></ruby>タンクの<ruby>樹脂<rt>じゅし</rt></ruby>ライナー<ruby>用<rt>よう</rt></ruby><ruby>金型<rt>かながた</rt></ruby>、<ruby>御社<rt>おんしゃ</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Khuôn cho lớp lót nhựa của bình hydro, công ty anh có làm được không?)* |
| Thái | すみません、「<ruby>樹脂<rt>じゅし</rt></ruby>ライナー」というのは、タンクの<ruby>内側<rt>うちがわ</rt></ruby>に<ruby>水素<rt>すいそ</rt></ruby>が<ruby>漏<rt>も</rt></ruby>れないようにする<ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>層<rt>そう</rt></ruby>のことでしょうか?<br>*(Xin lỗi, "lớp lót nhựa" là lớp nhựa bên trong bình để hydro không rò ra, đúng không ạ?)* |
| Hamada | そうです。<ruby>高密度<rt>こうみつど</rt></ruby>ポリエチレンを<ruby>使<rt>つか</rt></ruby>って、<ruby>3<rt>さん</rt></ruby><ruby>層<rt>そう</rt></ruby><ruby>構造<rt>こうぞう</rt></ruby>の<ruby>一<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>内側<rt>うちがわ</rt></ruby>です。<br>*(Đúng. Dùng polyethylene mật độ cao, là lớp trong cùng của cấu trúc 3 lớp.)* |
| Thái | なるほど、<ruby>3<rt>さん</rt></ruby><ruby>層<rt>そう</rt></ruby><ruby>構造<rt>こうぞう</rt></ruby>の<ruby>最内層<rt>さいないそう</rt></ruby>ということですね。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>成形<rt>せいけい</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>休<rt>やす</rt></ruby>み<ruby>明<rt>あ</rt></ruby>けに<ruby>正式<rt>せいしき</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(À, lớp trong cùng của cấu trúc 3 lớp đúng không ạ. Công nghệ ép phun bên em làm được. Tuần sau khi nghỉ xong em sẽ gửi câu trả lời chính thức.)* |
| Hamada | ありがとうございます。お<ruby>母様<rt>かあさま</rt></ruby>との<ruby>時間<rt>じかん</rt></ruby>を<ruby>邪魔<rt>じゃま</rt></ruby>してしまい<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Cảm ơn anh. Xin lỗi vì làm phiền thời gian của anh với mẹ.)* |
| Thái | とんでもないです。お<ruby>気<rt>き</rt></ruby>をお<ruby>使<rt>つか</rt></ruby>いいただきありがとうございます。<br>*(Đâu có ạ. Cảm ơn anh đã quan tâm.)* |

---

## Tình huống 9 — Nhà ga Nagoya · ngày 5, 11:00, Linh chào hỏi mẹ Thái

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Cháu chào cô ạ! Cháu là Linh, bạn của hai anh em Thái và Linh-Anh đây ạ. |
| Mẹ Thái | (tiếng Việt) À Linh đây à! Cô nghe Thái kể nhiều rồi. Cháu chăm hai đứa nhà cô bao lâu nay, cô cảm ơn cháu. |
| Linh | (tiếng Việt) Dạ không có gì cô ơi. Hôm nay cháu đưa cô đi phố Ōsu, lâu đài Nagoya rồi ăn miso katsu cô nhé. |
| Linh-Anh | (tiếng Việt) Mẹ ơi! Miso katsu là đặc sản Nagoya đấy, ngon lắm. |
| Mẹ Thái | (tiếng Việt) Ừ, cô ăn cái gì cũng được. Cứ đi đâu mà bọn nó hay đi ấy. |
| Thái | (tiếng Việt) Mẹ với em với Linh đi chơi đi, con phải ghé văn phòng nửa buổi. Tối con đón mẹ về Anjo. |
| Linh | (tiếng Việt) Anh yên tâm, em lo cô chu đáo. |

---

## Tình huống 10 — Khu hàng lưu niệm Ōsu · 13:30, mua quà bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Mẹ Thái | (tiếng Việt) Linh-Anh ơi, mẹ muốn mua mấy cái khăn này về làm quà cho mấy bác hàng xóm. Hỏi giá hộ mẹ. |
| Linh-Anh | すみません、この<ruby>手<rt>て</rt></ruby>ぬぐいは<ruby>一<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>いくらですか?<br>*(Xin lỗi, cái khăn tay này một cái bao nhiêu ạ?)* |
| Nhân viên | <ruby>一<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>880<rt>はっぴゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby>で<ruby>4,000<rt>よんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>のセットもございます。<br>*(Một cái 880 yên ạ. Có bộ 5 cái 4.000 yên.)* |
| Linh-Anh | (tiếng Việt) 5 cái 4.000 yên, rẻ hơn mẹ ạ. Khoảng 700.000 đồng. Mẹ lấy bao nhiêu? |
| Mẹ Thái | (tiếng Việt) Lấy 2 bộ 10 cái đi cháu. |
| Linh-Anh | では、<ruby>5<rt>ご</rt></ruby><ruby>枚<rt>まい</rt></ruby>セットを<ruby>2<rt>ふた</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>包装<rt>ほうそう</rt></ruby>していただけますか?<br>*(Vậy cho em hai bộ 5 cái ạ. Có thể gói lại giúp em không?)* |
| Nhân viên | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>無料<rt>むりょう</rt></ruby>で<ruby>包装<rt>ほうそう</rt></ruby>させていただきます。<br>*(Vâng, em rõ. Em gói miễn phí cho ạ.)* |
| Linh-Anh | ありがとうございます。<br>*(Em cảm ơn.)* |
| Mẹ Thái | (tiếng Việt) Mẹ thấy em mày nói tiếng Nhật cũng cứng cáp rồi. Đi học du học có khác. |

---

## Tình huống 11 — Sảnh check-in Centrair · 2 tuần sau, 10:00, tiễn mẹ và xin lỗi trợ giúp

| Vai | Lời thoại |
|---|---|
| Nhân viên check-in | おはようございます。パスポートをお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng. Cho xin hộ chiếu ạ.)* |
| Thái | はい、<ruby>母<rt>はは</rt></ruby>のものです。ホーチミン<ruby>経由<rt>けいゆ</rt></ruby>でハノイ<ruby>行<rt>ゆ</rt></ruby>きです。<br>*(Vâng, của mẹ tôi. Đi Hà Nội qua Hồ Chí Minh ạ.)* |
| Nhân viên check-in | お<ruby>預<rt>あず</rt></ruby>けの<ruby>荷物<rt>にもつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby>ですか?<br>*(Hành lý ký gửi mấy kiện ạ?)* |
| Thái | <ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby>です。<ruby>重<rt>おも</rt></ruby>さは<ruby>2<rt>ふた</rt></ruby>つとも<ruby>23<rt>にじゅうさん</rt></ruby>キロ<ruby>以内<rt>いない</rt></ruby>のはずです。<br>*(Hai kiện. Cả hai dưới 23kg ạ.)* |
| Nhân viên check-in | （<ruby>計量<rt>けいりょう</rt></ruby>）<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>搭乗券<rt>とうじょうけん</rt></ruby>をお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Cân hành lý. Được rồi. Tôi đưa thẻ lên máy bay.)* |
| Thái | ありがとうございました。(tiếng Việt) Mẹ ơi, vé đây, vali check rồi, mẹ đi luôn được rồi. |
| Mẹ Thái | (tiếng Việt) Thái ơi, mẹ về đây. |
| Thái | (tiếng Việt, mắt đỏ) Mẹ giữ sức khoẻ nhé. Tháng sau con về cưới Mai. |
| Mẹ Thái | (tiếng Việt) Ừ, về lo đám cưới to nhất làng. Mẹ thấy con sống tốt là mẹ yên tâm rồi. |
| Linh-Anh | (tiếng Việt) Mẹ ơi, em viết LINE cho mẹ mỗi ngày nhé. |
| Mẹ Thái | (tiếng Việt, vẫy tay đi vào cửa an ninh) Hẹn Tết gặp lại các con! |

---

## Tình huống 12 — Phòng 201 ký túc Anjo · 22:00, gọi điện cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, LINE video) Anh ơi, mẹ về đến nhà rồi. Mẹ vừa gọi em xong. |
| Thái | (tiếng Việt) Mẹ kể gì em? |
| Mai | (tiếng Việt) Mẹ khen anh lên trời luôn! Bảo "工場長" Tanaka coi anh như con, vợ ông ấy còn nấu phở nữa. Mẹ với khoe khắp xóm anh là "宝" của công ty. |
| Thái | (tiếng Việt) Trời, mẹ nhớ cả tiếng Nhật à? |
| Mai | (tiếng Việt) Mẹ còn nhớ cái "感謝状" của Toyota nữa. Mẹ bảo anh "Hamada" gì đó ở Toyota khen anh giảm 15% chi phí cho xe điện. |
| Thái | (tiếng Việt) Đúng rồi, hôm đó anh phải dịch song song mà run lắm. Phải dùng kính ngữ "母を紹介させていただきます" với "感謝の言葉もございません" cho mẹ đỡ ngại. |
| Mai | (tiếng Việt) Anh giỏi quá. Mà mẹ bảo em mày nói tiếng Nhật cũng cứng cáp rồi — chắc nhờ anh kèm cặp. |
| Thái | (tiếng Việt) Linh-Anh giờ N2 rồi mà. Hôm đi mua khăn tay ở Ōsu nó tự "包装していただけますか?" luôn. |
| Mai | (tiếng Việt) Anh nói tiếng Việt mà còn xen tiếng Nhật. Tháng sau về cưới, lúc đứng trước họ hàng đừng bật "はい、承知しました" ra đấy nhé! |
| Thái | (tiếng Việt, cười) Hứa với em, ngày cưới chỉ nói tiếng Việt. Mà em ơi, hôm nay tiễn mẹ ở Centrair, anh xúc động quá. Năm năm... |
| Mai | (tiếng Việt) Em biết. Cố thêm tháng nữa thôi anh. Em đợi anh ở Hà Nội. |

---

## Đọng lại chương 7

Tuần đón mẹ qua Nhật, Thái phải vận dụng toàn bộ kỹ năng tiếng Nhật 5 năm tích luỹ ở mức cao nhất: **xin nghỉ phép có lý do gia đình** (有給休暇をいただきたい・短期滞在ビザで母が来日します), **giới thiệu mẹ với cấp trên bằng kính ngữ** (母を紹介させていただきます・こちらが母の〜です), **phiên dịch song song hai chiều** với mẫu báo cáo gián tiếp (母が「〜」と申しております), **đáp lễ chủ nhà Nhật** khi vợ 工場長 nấu phở (お心遣いに感謝いたします・故郷の味そのもの), **hỏi lại lễ phép từ chuyên ngành mới** khi khách Toyota nhắc dự án hydro (「樹脂ライナー」というのは〜でしょうか?・〜ということですね), và **xác nhận hành lý + thông tin chuyến bay** ở quầy check-in sân bay tiễn mẹ. Đồng thời nhận ra: kính ngữ không phải lễ nghi rỗng — nó là **cách thay mẹ nói lời cảm ơn xứng tầm** với những người đã chăm sóc con suốt 5 năm. Em gái Linh-Anh giờ cũng N2, hai anh em cùng đỡ mẹ qua hai tuần ở đất khách — đó là phần thưởng lớn nhất của hành trình.

> Từ vựng & mẫu câu chương này: 短期滞在・来日・有給休暇・引き継ぎ・母を紹介させていただきます・こちらが母の〜です・母が「〜」と申しております・お心遣いに感謝いたします・故郷の味・恐縮です・過分な褒め言葉・宝・感謝状・個人授与・軽量化・コスト削減・樹脂ライナー・射出成形・〜というのは・〜ということですね・包装していただけますか・搭乗券・お預けの荷物・乗り換え・本線・急行・ようこそお越しくださいました・召し上がってください

## Bí quyết chương

- **Cao trào 5 năm**: Mẹ tận mắt thấy con là leader dự án Toyota EV, được "宝" và "感謝状" — payoff cho arc 5 năm.
- **Phiên dịch là kỹ năng nghề**: chương này dạy mẫu "母が〜と申しております" (báo cáo gián tiếp lịch sự) — pattern dùng nhiều ở môi trường công sở khi truyền lời người khác.
- **Vợ Tanaka nấu phở**: gia đình thứ hai ở Nhật. Lặp motif "tiếp đón nhau bằng món quê" từ T1 (cơm hộp Famima) đến T7 (phở YouTube).
- **Linh-Anh N2**: setup payoff cho sách 19 (em gái sang Nhật làm việc).

> *"12/2026. Mẹ qua 2 tuần. 5 năm dịch lại trong 14 ngày. Tự hào."*', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000008, 800000018, NULL, 'markdown_book', 'T8. Quyết định: ở lại hay về Việt Nam (決断)', '# Sách kỹ sư khuôn đúc · T8. Quyết định: ở lại hay về Việt Nam (決断)

> **Mục tiêu nhân vật:** Thái (28 tuổi, Anjo, Aichi) cân nhắc 3 hướng đi cho 5 năm tới và đi xin lời khuyên. Học các mẫu hội thoại tiếng Nhật trong tình huống quyết định nghề nghiệp: trình bày 3 phương án với cấp trên (〜という選択肢があります), hỏi ý kiến đàn anh (〜について相談したいのですが), xác nhận lại con số khi so sánh lương (差し引くと〜になりますね), hỏi lại từ chuyên ngành nhân sự (永住・転職・家族滞在), trình bày lý do quyết định (〜に決めました・理由は〜です), và báo cáo kết quả lên cấp trên (ご報告があります).

---

## Bối cảnh

Tháng 12 năm 2026. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo gần 5 năm, trình độ tiếng Nhật N2. Mẹ vừa về Việt Nam sau chuyến thăm con. Có 3 lựa chọn: (a) ở lại Anjo và xin **永住** năm 2032, (b) về Việt Nam làm tư vấn cho doanh nghiệp FDI Nhật ở Bắc Ninh, (c) chuyển việc lên một công ty Tokyo lương cao hơn. Chương này tập trung các mẫu câu **bàn bạc (相談)** với cấp trên / đàn anh / người thân, **so sánh điều kiện** và **trình bày quyết định** bằng tiếng Nhật trang trọng.

---

## Tình huống 1 — Phòng 201 ký túc · 6:30, Thái viết nhật ký 3 lựa chọn (độc thoại tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật, mở chương.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, viết nhật ký) 5 năm tới của mình. Có 3 hướng đi rõ ràng — phải hỏi ý kiến mọi người trước khi quyết. |
| Thái | (tiếng Việt) (a) Ở lại Anjo, gắn với công ty hiện tại, xin 永住 (eijuu — vĩnh trú) năm 2032, sau đó đón Mai sang theo diện 家族滞在. |
| Thái | (tiếng Việt) (b) Về Việt Nam, làm tư vấn (コンサルタント) cho doanh nghiệp FDI Nhật ở Bắc Ninh — gần mẹ, gần Mai. |
| Thái | (tiếng Việt) (c) 転職 — chuyển sang công ty Nhật khác ở Tokyo, lương tăng 20%. |
| Thái | (tiếng Việt) Mình sẽ hỏi: bác Tanaka (đã nghỉ hưu thành 嘱託), anh Kawakami (工場長), em Linh và Linh-Anh, cuối cùng là Mai. Sau đó mới quyết. |

---

## Tình huống 2 — Bàn của Tanaka (嘱託) · 9:00, trình bày 3 phương án với người dìu dắt mình 5 năm

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>はどうする？<br>*(Thái này, chào buổi sáng. Kế hoạch 5 năm tới của cậu thế nào?)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。じつは、その<ruby>件<rt>けん</rt></ruby>でご<ruby>相談<rt>そうだん</rt></ruby>したいのですが、お<ruby>時間<rt>じかん</rt></ruby><ruby>少<rt>すこ</rt></ruby>しよろしいですか？<br>*(Bác Tanaka, chào bác. Thật ra cháu muốn xin bác lời khuyên về việc đó, bác có chút thời gian không ạ?)* |
| Tanaka | もちろんだよ。<ruby>座<rt>すわ</rt></ruby>って。<br>*(Tất nhiên rồi. Ngồi xuống đi.)* |
| Thái | <ruby>選択肢<rt>せんたくし</rt></ruby>が<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、ここに<ruby>残<rt>のこ</rt></ruby>って2032<ruby>年<rt>ねん</rt></ruby>に<ruby>永住権<rt>えいじゅうけん</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>することです。<br>*(Có ba lựa chọn ạ. Lựa chọn thứ nhất là ở lại đây và xin vĩnh trú năm 2032.)* |
| Tanaka | うんうん。<br>*(Ừ ừ.)* |
| Thái | <ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、ベトナムに<ruby>帰<rt>かえ</rt></ruby>って、<ruby>北<rt>ほく</rt></ruby><ruby>部<rt>ぶ</rt></ruby>バクニン<ruby>省<rt>しょう</rt></ruby>の<ruby>日系<rt>にっけい</rt></ruby><ruby>企業<rt>きぎょう</rt></ruby>でコンサルタントとして<ruby>働<rt>はたら</rt></ruby>くことです。<br>*(Lựa chọn thứ hai là về Việt Nam làm tư vấn cho doanh nghiệp Nhật ở tỉnh Bắc Ninh.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>他社<rt>たしゃ</rt></ruby>に<ruby>転職<rt>てんしょく</rt></ruby>することです。<ruby>給与<rt>きゅうよ</rt></ruby>が20%アップとのお<ruby>誘<rt>さそ</rt></ruby>いがありました。<br>*(Lựa chọn thứ ba là chuyển sang công ty khác ở Tokyo. Có lời mời với mức lương cao hơn 20% ạ.)* |
| Tanaka | なるほどね。<ruby>個人的<rt>こじんてき</rt></ruby>には、ここに<ruby>残<rt>のこ</rt></ruby>ってほしい。この<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>で、<ruby>君<rt>きみ</rt></ruby>はもう<ruby>家族<rt>かぞく</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>だからな。<br>*(Ra vậy. Riêng cá nhân tôi mong cậu ở lại. 5 năm qua, cậu đã như người nhà rồi.)* |
| Thái | ありがとうございます。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cháu cảm ơn bác. Cháu vui lắm ạ.)* |
| Tanaka | まあ、<ruby>無理<rt>むり</rt></ruby><ruby>強<rt>じ</rt></ruby>いはしないよ。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>君<rt>きみ</rt></ruby>とマイさんの<ruby>人生<rt>じんせい</rt></ruby>だ。よく<ruby>考<rt>かんが</rt></ruby>えなさい。<br>*(Tất nhiên tôi không ép. Quan trọng là cuộc đời của cậu và Mai. Suy nghĩ kỹ nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。じっくり<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Vâng, cháu rõ ạ. Cháu sẽ suy nghĩ kỹ.)* |

---

## Tình huống 3 — Bàn 工場長 Kawakami · 14:00, xác nhận lại con số khi so sánh lương (quan sát đàn anh tính toán)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しご<ruby>相談<rt>そうだん</rt></ruby>してもよろしいでしょうか。<br>*(Trưởng nhà máy Kawakami, em có thể xin anh lời khuyên một chút được không ạ?)* |
| Kawakami | おう、どうした？<br>*(Ơ, gì thế?)* |
| Thái | <ruby>東京<rt>とうきょう</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>転職<rt>てんしょく</rt></ruby>のお<ruby>誘<rt>さそ</rt></ruby>いをいただきました。<ruby>給与<rt>きゅうよ</rt></ruby>が20%アップとのことです。<br>*(Em được công ty Tokyo mời chuyển việc ạ. Họ nói lương sẽ tăng 20%.)* |
| Kawakami | ふむ、20%か。<ruby>金額<rt>きんがく</rt></ruby>でいうと<ruby>月<rt>つき</rt></ruby>いくらぐらいになる？<br>*(Hmm, 20% à. Quy ra tiền thì khoảng bao nhiêu một tháng?)* |
| Thái | <ruby>現在<rt>げんざい</rt></ruby>の<ruby>手取<rt>てど</rt></ruby>りが<ruby>月<rt>つき</rt></ruby>30<ruby>万円<rt>まんえん</rt></ruby>なので、6<ruby>万円<rt>まんえん</rt></ruby>アップで36<ruby>万円<rt>まんえん</rt></ruby>になります。<br>*(Lương thực lĩnh hiện tại của em là 300.000 yên/tháng, nên sẽ tăng 60.000 thành 360.000 yên ạ.)* |
| Kawakami | なるほど。でも<ruby>東京<rt>とうきょう</rt></ruby>は<ruby>家賃<rt>やちん</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いぞ。<ruby>1<rt>いち</rt></ruby>LDKでいくらだ？<br>*(Ra vậy. Nhưng Tokyo tiền nhà đắt lắm đấy. Một phòng ngủ + phòng khách bao nhiêu?)* |
| Thái | <ruby>調<rt>しら</rt></ruby>べたところ、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>くだと<ruby>月<rt>つき</rt></ruby>12<ruby>万円<rt>まんえん</rt></ruby>ぐらいでした。<br>*(Em tra rồi, gần công ty đó khoảng 120.000 yên/tháng ạ.)* |
| Kawakami | こっち<ruby>寮<rt>りょう</rt></ruby>はいくらだった？<br>*(Bên này ký túc bao nhiêu nhỉ?)* |
| Thái | <ruby>寮<rt>りょう</rt></ruby>は<ruby>月<rt>つき</rt></ruby>2<ruby>万円<rt>まんえん</rt></ruby>です。<br>*(Ký túc 20.000 yên/tháng ạ.)* |
| Kawakami | じゃあ<ruby>家賃<rt>やちん</rt></ruby>の<ruby>差<rt>さ</rt></ruby>が10<ruby>万円<rt>まんえん</rt></ruby>。<ruby>給与<rt>きゅうよ</rt></ruby>アップが6<ruby>万円<rt>まんえん</rt></ruby>。<ruby>差<rt>さ</rt></ruby><ruby>引<rt>ひ</rt></ruby>くと<ruby>月<rt>つき</rt></ruby>マイナス4<ruby>万円<rt>まんえん</rt></ruby>だな。<br>*(Vậy chênh lệch tiền nhà là 100.000 yên. Lương tăng 60.000 yên. Trừ đi thì âm 40.000 yên/tháng đấy.)* |
| Thái | え、<ruby>差<rt>さ</rt></ruby><ruby>引<rt>ひ</rt></ruby>くとマイナスになる、ということですか？<br>*(Ơ, trừ đi thì thành âm, anh nói thế phải không ạ?)* |
| Kawakami | そういうことだ。<ruby>食費<rt>しょくひ</rt></ruby>や<ruby>交通費<rt>こうつうひ</rt></ruby>も<ruby>都心<rt>としん</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いから、<ruby>実際<rt>じっさい</rt></ruby>はもっと<ruby>差<rt>さ</rt></ruby>がつく。<br>*(Đúng vậy. Tiền ăn, tiền đi lại trung tâm cũng đắt hơn, nên thực tế chênh còn nhiều hơn nữa.)* |
| Thái | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>給与<rt>きゅうよ</rt></ruby>アップの<ruby>数字<rt>すうじ</rt></ruby>だけ<ruby>見<rt>み</rt></ruby>てはいけないんですね。<br>*(Em học được rồi ạ. Không thể chỉ nhìn con số lương tăng được.)* |
| Kawakami | そうだ。<ruby>俺<rt>おれ</rt></ruby>は<ruby>20<rt>にじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>会社<rt>かいしゃ</rt></ruby>にいる。<ruby>後悔<rt>こうかい</rt></ruby>はないよ。<br>*(Đúng. Tôi 20 năm gắn với một công ty. Chẳng hối hận gì.)* |

---

## Tình huống 4 — Phòng nhân sự · 15:30, hỏi lại từ chuyên ngành về 永住 và 家族滞在

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>人事<rt>じんじ</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>聞<rt>き</rt></ruby>きしたいことがあるのですが、よろしいですか？<br>*(Chị Sato bên nhân sự, em có chút việc muốn hỏi, có được không ạ?)* |
| Sato | はい、どうぞ。<br>*(Vâng, mời em.)* |
| Thái | <ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>したいのですが、<ruby>就労<rt>しゅうろう</rt></ruby>10<ruby>年<rt>ねん</rt></ruby>が<ruby>基本<rt>きほん</rt></ruby>でしょうか？<br>*(Em muốn xác nhận về điều kiện xin vĩnh trú — có phải làm việc 10 năm là điều kiện cơ bản không ạ?)* |
| Sato | はい、<ruby>原則<rt>げんそく</rt></ruby>10<ruby>年<rt>ねん</rt></ruby>です。タイさんは2022<ruby>年<rt>ねん</rt></ruby><ruby>入社<rt>にゅうしゃ</rt></ruby>ですから、2032<ruby>年<rt>ねん</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>ですね。<br>*(Vâng, nguyên tắc là 10 năm. Anh Thái vào công ty năm 2022 nên năm 2032 có thể nộp đơn.)* |
| Thái | すみません、「<ruby>原則<rt>げんそく</rt></ruby>」というのは、<ruby>例外<rt>れいがい</rt></ruby>もある、ということですか？<br>*(Xin lỗi, "nguyên tắc" có nghĩa là cũng có ngoại lệ phải không ạ?)* |
| Sato | そうです。<ruby>高度<rt>こうど</rt></ruby><ruby>人材<rt>じんざい</rt></ruby>ポイント<ruby>制<rt>せい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>えば<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>や<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>申請<rt>しんせい</rt></ruby>できる<ruby>場合<rt>ばあい</rt></ruby>もあります。<br>*(Đúng vậy. Nếu dùng chế độ chấm điểm nhân tài trình độ cao thì có khi 3 năm hoặc 1 năm cũng xin được.)* |
| Thái | <ruby>高度<rt>こうど</rt></ruby><ruby>人材<rt>じんざい</rt></ruby>ポイント<ruby>制<rt>せい</rt></ruby>...<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Chế độ chấm điểm nhân tài trình độ cao... Em mới nghe lần đầu. Chị giải thích giúp em được không ạ?)* |
| Sato | <ruby>学歴<rt>がくれき</rt></ruby>、<ruby>職歴<rt>しょくれき</rt></ruby>、<ruby>年収<rt>ねんしゅう</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>などで<ruby>点数<rt>てんすう</rt></ruby>をつける<ruby>制度<rt>せいど</rt></ruby>です。70<ruby>点<rt>てん</rt></ruby>以上だと<ruby>優遇<rt>ゆうぐう</rt></ruby>されます。<br>*(Là chế độ chấm điểm dựa trên học vấn, kinh nghiệm, thu nhập, năng lực tiếng Nhật, v.v. Trên 70 điểm sẽ được ưu đãi.)* |
| Thái | なるほど、つまり<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たせば<ruby>早<rt>はや</rt></ruby>く<ruby>申請<rt>しんせい</rt></ruby>できる、ということですね。<br>*(Ra vậy, tức là đáp ứng đủ điều kiện thì có thể nộp sớm hơn, đúng không ạ?)* |
| Sato | そうです。それから「<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>」のビザですが、<ruby>結婚<rt>けっこん</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>奥<rt>おく</rt></ruby>さまを<ruby>呼<rt>よ</rt></ruby>べます。<br>*(Đúng vậy. Còn về visa "家族滞在", sau khi kết hôn anh có thể đón vợ sang.)* |
| Thái | <ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>のビザだと、<ruby>奥<rt>おく</rt></ruby>さんも<ruby>働<rt>はたら</rt></ruby>けますか？<br>*(Visa 家族滞在 thì vợ em có làm việc được không ạ?)* |
| Sato | <ruby>資格外<rt>しかくがい</rt></ruby><ruby>活動<rt>かつどう</rt></ruby><ruby>許可<rt>きょか</rt></ruby>を<ruby>取<rt>と</rt></ruby>れば<ruby>週<rt>しゅう</rt></ruby>28<ruby>時間<rt>じかん</rt></ruby>まで<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Nếu xin giấy phép hoạt động ngoài tư cách thì được làm tối đa 28 giờ/tuần.)* |
| Thái | <ruby>資格外<rt>しかくがい</rt></ruby><ruby>活動<rt>かつどう</rt></ruby><ruby>許可<rt>きょか</rt></ruby>ですね。メモしておきます。ありがとうございました。<br>*(Giấy phép hoạt động ngoài tư cách ạ. Em ghi lại. Em cảm ơn chị.)* |

---

## Tình huống 5 — Quán cơm gần ga · 19:00, hỏi ý kiến Linh-chị và em Linh-Anh

> Scene tiếng Việt — đồng hương cùng cảnh ngộ.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Anh Thái, hôm nay bác Tanaka, anh Kawakami, chị Sato — đi gặp đủ cả rồi à? |
| Thái | (tiếng Việt) Đủ rồi. Bác Tanaka bảo muốn anh ở lại. Anh Kawakami giúp anh tính chi tiết: chuyển lên Tokyo lương tăng 20% nhưng trừ tiền nhà rồi còn âm 40.000 yên một tháng. |
| Linh-Anh | (tiếng Việt) Đúng rồi anh. Em tốt nghiệp xong cũng quyết ở lại Nhật. Sang năm em vào công ty IT ở Nagoya. Ba anh em mình cùng một vùng. |
| Linh | (tiếng Việt) Anh ở lại đi. 2032 xin 永住, em với Linh-Anh 5 năm sau cũng đủ điều kiện nộp cùng. |
| Thái | (tiếng Việt) Còn phương án về Bắc Ninh thì sao? Mẹ thích anh về. |
| Linh-Anh | (tiếng Việt) Mẹ thì lúc nào cũng muốn con về. Nhưng mẹ cũng nói: "miễn các con hạnh phúc". Lương tư vấn FDI ở Bắc Ninh ổn, nhưng cơ hội học chuyên môn sâu vẫn ở Nhật cao hơn. |
| Linh | (tiếng Việt) Quan trọng nhất là chị Mai. Anh hỏi chị chưa? |
| Thái | (tiếng Việt) Tối nay anh gọi. Em yêu, em quyết theo anh, nhưng anh phải nghe em nói rõ đã. |
| Linh-Anh | (tiếng Việt) Anh nhớ hỏi chị: chị có sẵn sàng học tiếng Nhật từ con số 0 không. Sang đây không có tiếng thì cô đơn lắm. |
| Thái | (tiếng Việt) Ừ. Anh sẽ hỏi đúng câu đó. |

---

## Tình huống 6 — Phòng 201 · 22:00, gọi video Mai (scene tiếng Việt)

> Scene tiếng Việt — chốt người quyết định cuối.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, video) Anh quyết định chưa? Mẹ với gia đình em hôm nay cũng hỏi. |
| Thái | (tiếng Việt) Anh vẫn đang phân vân em ạ. Hôm nay anh hỏi đủ mọi người rồi, giờ đến lượt em. |
| Mai | (tiếng Việt) Em đã nói từ trước: em theo anh. Nhật hay Việt Nam đều được. |
| Thái | (tiếng Việt) Anh muốn hỏi cụ thể hơn. Nếu sang Nhật, em phải học tiếng Nhật từ con số 0. Visa của em là 家族滞在 — gia đình phụ thuộc — muốn đi làm thì xin giấy phép hoạt động ngoài tư cách, được tối đa 28 giờ/tuần. Em chịu được không? |
| Mai | (tiếng Việt) Em chịu. Em sẽ vào lớp tiếng Nhật ngay. Có chị Linh, Linh-Anh giúp em mà. |
| Thái | (tiếng Việt) Còn nếu anh về Bắc Ninh thì sao? |
| Mai | (tiếng Việt) Em cũng vui. Em ở gần mẹ anh, gần mẹ em. Nhưng em biết anh đã đầu tư 5 năm vào nghề khuôn ở Nhật. Bỏ thì tiếc. |
| Thái | (tiếng Việt) Ừ. Anh thấy mình hợp với việc thiết kế khuôn nhựa hơn là tư vấn. Tư vấn nói nhiều, anh không quen. |
| Mai | (tiếng Việt) Vậy anh quyết theo cái tim của anh đi. Em đợi anh trong tuần này. |
| Thái | (tiếng Việt) Anh yêu em. Mai anh sẽ chốt. |

---

## Tình huống 7 — Bàn làm việc · sáng chủ nhật, Thái tự viết nhật ký quyết định (độc thoại tiếng Việt + 1 câu Nhật chốt)

> Scene tiếng Việt — chuyển sang JP ở câu chốt.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhật ký) Quyết định: Ở LẠI Anjo. |
| Thái | (tiếng Việt) Lý do: |
| Thái | (tiếng Việt) 1. Bác Tanaka, anh Kawakami, anh Sakurai — gia đình thứ hai 5 năm qua. |
| Thái | (tiếng Việt) 2. Thư cảm ơn của Toyota tháng trước — sự công nhận chuyên môn 金型 thiết kế. |
| Thái | (tiếng Việt) 3. Em Linh-Anh cũng ở lại Nagoya → 3 anh em cùng vùng Tokai. |
| Thái | (tiếng Việt) 4. Lựa chọn Tokyo thực ra là lỗ — anh Kawakami đã tính giúp. |
| Thái | (tiếng Việt) 5. 永住 năm 2032 → ổn định lâu dài, đón Mai theo diện 家族滞在. |
| Thái | (tiếng Việt) 6. Mai đã đồng ý sang Nhật, học tiếng Nhật từ đầu. |
| Thái | <ruby>決<rt>き</rt></ruby>めました。ここに<ruby>残<rt>のこ</rt></ruby>ります。<br>*(Mình đã quyết. Sẽ ở lại đây.)* |

---

## Tình huống 8 — Phòng họp 工場長 · sáng thứ Hai 9:00, báo cáo quyết định lên cấp trên

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>川上<rt>かわかみ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、おはようございます。ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Bác Tanaka, trưởng nhà máy Kawakami, chào buổi sáng. Em có việc cần báo cáo ạ.)* |
| Tanaka | おう、<ruby>決<rt>き</rt></ruby>めたか？<br>*(Ơ, cậu quyết rồi à?)* |
| Thái | はい、<ruby>週末<rt>しゅうまつ</rt></ruby>じっくり<ruby>考<rt>かんが</rt></ruby>えました。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。これからもこの<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>らせていただきます。<br>*(Vâng, cuối tuần em đã suy nghĩ kỹ. Em xin nói kết luận trước. Em xin được tiếp tục ở lại công ty này ạ.)* |
| Tanaka | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいよ。<br>*(Cười. Tôi thật sự rất vui.)* |
| Kawakami | <ruby>理由<rt>りゆう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてもらえる？<br>*(Cho tôi nghe lý do được không?)* |
| Thái | <ruby>理由<rt>りゆう</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、この<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>で<ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>の<ruby>専門性<rt>せんもんせい</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけられたこと。<ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>川上<rt>かわかみ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>東京<rt>とうきょう</rt></ruby><ruby>転職<rt>てんしょく</rt></ruby>の<ruby>実質<rt>じっしつ</rt></ruby><ruby>収支<rt>しゅうし</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただき、<ruby>納得<rt>なっとく</rt></ruby>したこと。<br>*(Có ba lý do ạ. Thứ nhất, 5 năm qua em đã trau dồi được chuyên môn thiết kế khuôn. Thứ hai, em được trưởng nhà máy Kawakami chỉ rõ thu chi thực tế khi chuyển việc lên Tokyo, em đã hiểu ra.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、2032<ruby>年<rt>ねん</rt></ruby>に<ruby>永住権<rt>えいじゅうけん</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>し、<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>ビザで<ruby>婚約者<rt>こんやくしゃ</rt></ruby>のマイを<ruby>呼<rt>よ</rt></ruby>びたいからです。<br>*(Thứ ba, em muốn xin vĩnh trú năm 2032 và đón hôn thê Mai sang theo visa 家族滞在 ạ.)* |
| Kawakami | しっかり<ruby>考<rt>かんが</rt></ruby>えたな。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>役職<rt>やくしょく</rt></ruby><ruby>昇格<rt>しょうかく</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れているからな。<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Cậu đã suy nghĩ rất kỹ. Sang năm chúng tôi đang xét thăng chức cho cậu đấy. Trông cậy vào cậu.)* |
| Thái | はい、ありがとうございます！<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn anh ạ! Em sẽ cố gắng hết sức.)* |
| Tanaka | これでマイさんも<ruby>安心<rt>あんしん</rt></ruby>するな。<ruby>結婚式<rt>けっこんしき</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>呼<rt>よ</rt></ruby>んでくれよ。<br>*(Thế là Mai cũng yên tâm rồi. Đám cưới nhất định phải mời tôi nhé.)* |
| Thái | もちろんです。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>第二<rt>だいに</rt></ruby>の<ruby>父<rt>ちち</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>ですから。<br>*(Tất nhiên rồi ạ. Bác Tanaka như người cha thứ hai của em mà.)* |

---

## Đọng lại chương 8

Khi đứng trước quyết định nghề nghiệp lớn, Thái dùng đúng pattern **報連相** đã học từ ngày đầu sang Nhật: **報告・連絡・相談** — không quyết một mình, mà đi hỏi từng người liên quan. Chương này tổng hợp các mẫu câu quan trọng để **bàn bạc và quyết định** bằng tiếng Nhật trang trọng: **ご相談したいのですが** (xin lời khuyên), **〜という選択肢があります** (có lựa chọn là...), **〜について確認したいのですが** (muốn xác nhận về...), **〜というのは、〜ということですか？** (hỏi lại nghĩa), **差し引くと〜になりますね** (xác nhận con số sau khi trừ), **結論から申し上げます** (nói kết luận trước — chuẩn 報連相 Nhật), và **理由は三つあります** (trình bày lý do có cấu trúc). Đồng thời học bộ từ vựng nhân sự quan trọng cho người nước ngoài sống lâu ở Nhật: **永住権・高度人材ポイント制・家族滞在・資格外活動許可・転職・手取り・差引**. Quan trọng nhất: Thái nhận ra giá trị thật của một công ty không nằm ở con số lương, mà ở **gia đình thứ hai** và sự **công nhận chuyên môn 金型** mà 5 năm gắn bó mới có.

> Từ vựng & mẫu câu chương này: 決断・選択肢・計画・永住権・高度人材ポイント制・家族滞在・資格外活動許可・転職・手取り・差引・家賃・後悔・役職昇格・嘱託・工場長・人事・婚約者・結論・理由・ご相談したいのですが・〜という選択肢があります・〜について確認したいのですが・〜というのは〜ということですか・差し引くと〜になりますね・結論から申し上げます・理由は三つあります・ご報告があります・残らせていただきます

## Bí quyết chương

- **Payoff arc 5 năm**: Quyết định cuối — "残る" — chốt nghề khuôn + 永住 2032 + đón Mai sang. Đây là kết của trục arc setup từ T1.
- **報連相 dùng để quyết định lớn**: Không quyết một mình → hỏi 嘱託 (Tanaka) → hỏi 工場長 (Kawakami) → hỏi 人事 (Sato) → hỏi gia đình → hỏi vợ → mới quyết. Lặp lại đúng văn hoá công sở Nhật.
- **Anti-cliché "lương cao = tốt"**: Kawakami tính cho Thái thấy chuyển Tokyo thực ra LỖ — dạy người đọc kỹ năng tính 手取り thực tế thay vì nhìn con số lương gross.

> *"12/2026. Quyết rồi. Ở lại Anjo. 永住 2032. Đón Mai. Gia đình thứ hai."*', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000009, 800000018, NULL, 'markdown_book', 'T9. Marco hết SSW1 về Phil (マルコ帰国)', '# Sách kỹ sư khuôn đúc · T9. Marco hết SSW1 về Phil (マルコ帰国)

> **Mục tiêu nhân vật:** Thái (28 tuổi, kakarichō tại みなみ精密金型) tiễn Marco — sempai người Philippines hết 5 năm SSW1 về Manila lập chi nhánh. Học các mẫu hội thoại tiếng Nhật trong nghi thức tiễn người nước ngoài về nước: thông báo 契約満了, phát biểu tại 送別会 (tiệc chia tay), trao kỉ vật nghề (道具を渡す), hỏi lại lễ phép về thuật ngữ kinh doanh chuyên ngành (支店・立ち上げ・販路), chào tạm biệt tại 出国ゲート, và độc thoại tổng kết bằng tiếng Việt.

---

## Bối cảnh

Tháng 12 năm 2026, cuối năm. Marco — sempai người Philippines mà Thái gặp từ T1 sách 14 — hết 5 năm visa 特定技能1号 và sẽ về Manila để cùng Putra (đồng hương cũ của Thái) lập chi nhánh sửa khuôn cho thị trường Đông Nam Á. Thái giờ đã là 係長 (kakarichō), là sempai người nước ngoài cao cấp nhất trong xưởng. Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu giao tiếp trong nghi thức chia tay người nước ngoài tại công ty Nhật: thông báo hết hợp đồng, phát biểu 送別会, hỏi lại về kế hoạch kinh doanh xuyên biên giới, trao và nhận kỉ vật nghề, lời cuối tại sân bay.

---

## Tình huống 1 — Phòng nghỉ giữa ca · 10:30, Marco thông báo hết SSW1

| Vai | Lời thoại |
|---|---|
| Marco | タイ、ちょっといいか？<ruby>大事<rt>だいじ</rt></ruby>な<ruby>話<rt>はなし</rt></ruby>がある。<br>*(Thái, rảnh chút không? Có chuyện quan trọng.)* |
| Thái | はい、もちろんです。なんですか、マルコさん。<br>*(Vâng, tất nhiên rồi. Có chuyện gì vậy anh Marco?)* |
| Marco | <ruby>俺<rt>おれ</rt></ruby>のSSW1、<ruby>残<rt>のこ</rt></ruby>り<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>だ。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby>が<ruby>満了<rt>まんりょう</rt></ruby>する。<br>*(Visa SSW1 của tôi chỉ còn 2 tuần nữa. Hợp đồng 5 năm hết hạn rồi.)* |
| Thái | （<ruby>沈黙<rt>ちんもく</rt></ruby>）...そうですか。もう<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>経<rt>た</rt></ruby>つんですね。<br>*(Im lặng... Vậy ạ. Đã 5 năm rồi nhỉ.)* |
| Marco | マニラに<ruby>帰<rt>かえ</rt></ruby>る。<ruby>家族<rt>かぞく</rt></ruby>もずっと<ruby>待<rt>ま</rt></ruby>っているし、<ruby>新<rt>あたら</rt></ruby>しい<ruby>仕事<rt>しごと</rt></ruby>も<ruby>決<rt>き</rt></ruby>まった。<br>*(Tôi về Manila. Gia đình đợi mãi rồi, và công việc mới cũng đã chốt xong.)* |
| Thái | プトラさんと<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>ですね。<ruby>新<rt>あたら</rt></ruby>しい<ruby>仕事<rt>しごと</rt></ruby>って、<ruby>何<rt>なに</rt></ruby>をされるんですか？<br>*(Cùng con đường như anh Putra nhỉ. Công việc mới là gì vậy ạ?)* |
| Marco | プトラの<ruby>会社<rt>かいしゃ</rt></ruby>と<ruby>協力<rt>きょうりょく</rt></ruby>して、フィリピンに<ruby>支店<rt>してん</rt></ruby>を<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる。<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>サービスの<ruby>会社<rt>かいしゃ</rt></ruby>だ。<br>*(Hợp tác với công ty Putra, lập chi nhánh ở Philippines. Là công ty dịch vụ sửa khuôn.)* |
| Thái | すみません、「<ruby>支店<rt>してん</rt></ruby>を<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる」というのは、ゼロから<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るということですか？<br>*(Xin lỗi, "lập chi nhánh" là tạo công ty từ con số 0 phải không ạ?)* |
| Marco | そうだ。<ruby>事務所<rt>じむしょ</rt></ruby><ruby>探<rt>さが</rt></ruby>し、<ruby>人材<rt>じんざい</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>、<ruby>機械<rt>きかい</rt></ruby>の<ruby>導入<rt>どうにゅう</rt></ruby>、<ruby>販路<rt>はんろ</rt></ruby><ruby>開拓<rt>かいたく</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>俺<rt>おれ</rt></ruby>たちでやる。<br>*(Đúng. Tìm văn phòng, tuyển nhân sự, đưa máy vào, mở rộng kênh bán hàng, bọn tôi tự làm hết.)* |
| Thái | おお！<ruby>東南<rt>とうなん</rt></ruby>アジアの<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>ネットワークができますね。<br>*(Ô, sẽ có cả một mạng lưới sửa khuôn cho Đông Nam Á luôn nhỉ.)* |
| Marco | お<ruby>前<rt>まえ</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>とも<ruby>取引<rt>とりひき</rt></ruby>したい。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>には<ruby>明日<rt>あした</rt></ruby><ruby>正式<rt>せいしき</rt></ruby>に<ruby>挨拶<rt>あいさつ</rt></ruby>する。<br>*(Tôi muốn làm ăn cả với công ty cậu nữa. Mai sẽ chào chính thức trưởng nhà máy Tanaka.)* |

---

## Tình huống 2 — Bàn 工場長 · 11/12, Marco chào 工場長 (quan sát đàn anh chào chính thức)

| Vai | Lời thoại |
|---|---|
| Marco | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<ruby>大事<rt>だいじ</rt></ruby>なご<ruby>報告<rt>ほうこく</rt></ruby>がございます。<br>*(Trưởng nhà máy Tanaka, ông có thời gian không ạ? Em có báo cáo quan trọng.)* |
| Tanaka | おお、マルコ<ruby>君<rt>くん</rt></ruby>。どうした、かしこまって。<br>*(Ô, cậu Marco. Sao trang trọng vậy?)* |
| Marco | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>初<rt>はじ</rt></ruby>めに、<ruby>契約<rt>けいやく</rt></ruby><ruby>満了<rt>まんりょう</rt></ruby>でマニラに<ruby>帰<rt>かえ</rt></ruby>らせていただきます。<br>*(Cúi đầu. 5 năm qua em đã được ông chiếu cố rất nhiều. Đầu tháng sau, em xin phép về Manila do hết hạn hợp đồng.)* |
| Tanaka | （<ruby>頷<rt>うなず</rt></ruby>く）そうか。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>か...<ruby>早<rt>はや</rt></ruby>いものだな。<br>*(Gật đầu. Vậy à. 5 năm... nhanh thật.)* |
| Marco | <ruby>向<rt>む</rt></ruby>こうではプトラと<ruby>一緒<rt>いっしょ</rt></ruby>に、<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>の<ruby>支店<rt>してん</rt></ruby>を<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる<ruby>予定<rt>よてい</rt></ruby>です。<ruby>勝手<rt>かって</rt></ruby>なお<ruby>願<rt>ねが</rt></ruby>いですが、いつかこちらの<ruby>御社<rt>おんしゃ</rt></ruby>とも<ruby>取引<rt>とりひき</rt></ruby>させていただければと<ruby>思<rt>おも</rt></ruby>っております。<br>*(Bên đó em định lập chi nhánh sửa khuôn cùng Putra. Hơi thất lễ nhưng mong sau này có thể làm ăn với quý công ty.)* |
| Tanaka | もちろんだ。マルコ<ruby>君<rt>くん</rt></ruby>が<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる<ruby>会社<rt>かいしゃ</rt></ruby>なら<ruby>信頼<rt>しんらい</rt></ruby>できる。タイ<ruby>係長<rt>かかりちょう</rt></ruby>を<ruby>窓口<rt>まどぐち</rt></ruby>にしてもいい。<br>*(Tất nhiên rồi. Công ty cậu lập thì tin tưởng được. Có thể đặt anh Thái kakarichō làm đầu mối.)* |
| Marco | ありがとうございます。<ruby>送別会<rt>そうべつかい</rt></ruby>のことですが、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>でよろしいでしょうか。<br>*(Em cảm ơn ông. Về tiệc tiễn đưa, thứ Sáu tuần sau được không ạ?)* |
| Tanaka | <ruby>結構<rt>けっこう</rt></ruby>だ。<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>でいいな。<ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>もう。<br>*(Được. Địa điểm tại nhà ăn công ty được chứ. Tôi nhờ cậu Sakurai chuẩn bị.)* |
| Thái | （<ruby>横<rt>よこ</rt></ruby>で<ruby>観察<rt>かんさつ</rt></ruby>している）<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>進行<rt>しんこう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(Quan sát bên cạnh. Em rõ ạ. Em xin đảm nhận phần điều phối.)* |

---

## Tình huống 3 — Phòng họp · 14:00, Thái hỏi lại Sakurai về thủ tục 送別会

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>送別会<rt>そうべつかい</rt></ruby>の<ruby>進行<rt>しんこう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてなんですが、<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか？<br>*(Anh Sakurai, em chưa điều phối tiệc tiễn lần nào, anh chỉ cho em thứ tự được không ạ?)* |
| Sakurai | いいよ。<ruby>基本<rt>きほん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れは、<ruby>開会<rt>かいかい</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>、<ruby>工場長<rt>こうじょうちょう</rt></ruby>のスピーチ、<ruby>乾杯<rt>かんぱい</rt></ruby>、<ruby>歓談<rt>かんだん</rt></ruby>、<ruby>記念品<rt>きねんひん</rt></ruby><ruby>贈呈<rt>ぞうてい</rt></ruby>、<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>、<ruby>閉会<rt>へいかい</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>、この<ruby>順<rt>じゅん</rt></ruby>だ。<br>*(Được. Thứ tự cơ bản: lời khai mạc, phát biểu của trưởng nhà máy, nâng ly, hàn huyên, trao kỉ vật, phát biểu của người được tiễn, lời bế mạc — theo thứ tự này.)* |
| Thái | すみません、「<ruby>記念品<rt>きねんひん</rt></ruby><ruby>贈呈<rt>ぞうてい</rt></ruby>」というのは、<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>渡<rt>わた</rt></ruby>すお<ruby>土産<rt>みやげ</rt></ruby>のことですか？<br>*(Xin lỗi, "trao kỉ vật kỉ niệm" là quà công ty tặng đúng không ạ?)* |
| Sakurai | そう。<ruby>会社<rt>かいしゃ</rt></ruby>のロゴ<ruby>入<rt>い</rt></ruby>りの<ruby>盾<rt>たて</rt></ruby>と、<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>勤続<rt>きんぞく</rt></ruby><ruby>感謝状<rt>かんしゃじょう</rt></ruby>だ。<ruby>総務<rt>そうむ</rt></ruby>がもう<ruby>準備<rt>じゅんび</rt></ruby>している。<br>*(Ừ. Tấm khiên có logo công ty và bằng cảm ơn 5 năm thâm niên. Phòng hành chính đã chuẩn bị rồi.)* |
| Thái | <ruby>進行<rt>しんこう</rt></ruby><ruby>役<rt>やく</rt></ruby>の<ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>はありますか？<br>*(Người điều phối có điểm gì cần chú ý không ạ?)* |
| Sakurai | スピーチの<ruby>呼<rt>よ</rt></ruby>び<ruby>込<rt>こ</rt></ruby>みのときは、<ruby>必<rt>かなら</rt></ruby>ず<ruby>役職<rt>やくしょく</rt></ruby>と<ruby>氏名<rt>しめい</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>言<rt>い</rt></ruby>うこと。それから、マルコ<ruby>君<rt>くん</rt></ruby>のスピーチが<ruby>長<rt>なが</rt></ruby>くなりそうなら<ruby>止<rt>と</rt></ruby>めなくていい。<ruby>主役<rt>しゅやく</rt></ruby>だから。<br>*(Khi mời lên phát biểu phải xưng đúng chức vụ và họ tên. Còn nếu Marco nói dài thì cứ để, đừng cắt ngang. Hôm đó cậu ấy là nhân vật chính.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。メモしておきます。<br>*(Vâng, em rõ ạ. Em ghi lại.)* |

---

## Tình huống 4 — Nhà ăn công ty · 19:00 thứ Sáu, 送別会 Thái điều phối

| Vai | Lời thoại |
|---|---|
| Thái | （マイクを<ruby>持<rt>も</rt></ruby>つ）<ruby>皆<rt>みな</rt></ruby>さま、お<ruby>疲<rt>つか</rt></ruby>れさまです。ただ<ruby>今<rt>いま</rt></ruby>より、マルコ<ruby>君<rt>くん</rt></ruby>の<ruby>送別会<rt>そうべつかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めさせていただきます。<ruby>進行<rt>しんこう</rt></ruby>は<ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>のグエン・ヴァン・タイが<ruby>務<rt>つと</rt></ruby>めます。<br>*(Cầm mic. Mọi người vất vả rồi. Bắt đầu từ bây giờ, xin phép khai mạc tiệc tiễn cậu Marco. Người điều phối là em — Nguyễn Văn Thái, kakarichō phòng thiết kế khuôn đúc.)* |
| Thái | まず、<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>よりご<ruby>挨拶<rt>あいさつ</rt></ruby>をいただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Trước tiên, kính mời trưởng nhà máy Tanaka phát biểu. Xin mời ông.)* |
| Tanaka | マルコ<ruby>君<rt>くん</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>君<rt>きみ</rt></ruby>は<ruby>金型<rt>かながた</rt></ruby><ruby>修理<rt>しゅうり</rt></ruby>のプロとして、<ruby>後輩<rt>こうはい</rt></ruby>たちにたくさんの<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>してくれた。<br>*(Cậu Marco, 5 năm qua thực sự cảm ơn. Cậu là một chuyên gia sửa khuôn, đã để lại nhiều kỹ thuật cho các đàn em.)* |
| Marco | こちらこそ、<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Em mới phải cảm ơn ạ.)* |
| Tanaka | これからマニラで<ruby>支店<rt>してん</rt></ruby>を<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げると<ruby>聞<rt>き</rt></ruby>いた。<ruby>我<rt>われ</rt></ruby>が<ruby>社<rt>しゃ</rt></ruby>もぜひ<ruby>協力<rt>きょうりょく</rt></ruby>させてもらいたい。マルコ<ruby>君<rt>くん</rt></ruby>のフィリピンでの<ruby>成功<rt>せいこう</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>から<ruby>祈<rt>いの</rt></ruby>ります。<br>*(Tôi nghe cậu sắp lập chi nhánh ở Manila. Công ty ta nhất định sẽ hợp tác. Tôi thật lòng chúc cậu thành công ở Philippines.)* |
| Thái | ありがとうございました。<ruby>続<rt>つづ</rt></ruby>きまして、<ruby>桜井<rt>さくらい</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>で<ruby>乾杯<rt>かんぱい</rt></ruby>をしたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em cảm ơn ông. Tiếp theo, xin mời chủ nhiệm Sakurai hô lời nâng ly.)* |
| Sakurai | では、マルコ<ruby>君<rt>くん</rt></ruby>のマニラでの<ruby>成功<rt>せいこう</rt></ruby>と、<ruby>皆<rt>みな</rt></ruby>さまのご<ruby>健康<rt>けんこう</rt></ruby>を<ruby>祈<rt>いの</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Vậy, chúc Marco thành công ở Manila và mọi người sức khoẻ — cạn ly!)* |
| Tất cả | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |

---

## Tình huống 5 — Nhà ăn công ty · 20:00, trao kỉ vật nghề

| Vai | Lời thoại |
|---|---|
| Thái | では、<ruby>記念品<rt>きねんひん</rt></ruby><ruby>贈呈<rt>ぞうてい</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>らせていただきます。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>より、マルコ<ruby>君<rt>くん</rt></ruby>へ<ruby>勤続<rt>きんぞく</rt></ruby><ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>盾<rt>たて</rt></ruby>を<ruby>贈<rt>おく</rt></ruby>ります。<br>*(Tiếp theo, xin chuyển sang phần trao kỉ vật. Trưởng nhà máy Tanaka sẽ trao tấm khiên cảm ơn 5 năm thâm niên cho cậu Marco.)* |
| Tanaka | （<ruby>盾<rt>たて</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>のご<ruby>勤務<rt>きんむ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Trao tấm khiên. Cậu vất vả 5 năm làm việc, cảm ơn cậu rất nhiều.)* |
| Marco | （<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り、<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>ります。<br>*(Hai tay đón, cúi đầu thật sâu. Em cảm ơn ông. Em sẽ trân trọng mang về.)* |
| Thái | <ruby>続<rt>つづ</rt></ruby>きまして、マルコ<ruby>君<rt>くん</rt></ruby>よりご<ruby>挨拶<rt>あいさつ</rt></ruby>をいただきます。<br>*(Tiếp theo, xin mời Marco phát biểu.)* |
| Marco | <ruby>皆<rt>みな</rt></ruby>さま、<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>来日<rt>らいにち</rt></ruby>した<ruby>時<rt>とき</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>もまだ<ruby>下手<rt>へた</rt></ruby>で、<ruby>金型<rt>かながた</rt></ruby>のこともよく<ruby>分<rt>わ</rt></ruby>かりませんでした。<br>*(Thưa mọi người, 5 năm qua em đã được chiếu cố rất nhiều. Khi mới sang Nhật, tiếng Nhật em còn kém, khuôn đúc cũng chưa hiểu gì.)* |
| Marco | <ruby>初日<rt>しょにち</rt></ruby>、タイ<ruby>係長<rt>かかりちょう</rt></ruby>が<ruby>新人<rt>しんじん</rt></ruby>でした。「マルコさん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします」と<ruby>言<rt>い</rt></ruby>ってくれたあの<ruby>日<rt>ひ</rt></ruby>を、<ruby>今<rt>いま</rt></ruby>でも<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Ngày đầu tiên, anh Thái kakarichō còn là người mới. Câu "Anh Marco, mong anh giúp đỡ" hôm ấy, đến giờ em vẫn nhớ.)* |
| Marco | <ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>彼<rt>かれ</rt></ruby>は<ruby>係長<rt>かかりちょう</rt></ruby>になりました。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>誇<rt>ほこ</rt></ruby>らしいです。<br>*(5 năm sau, anh ấy đã thành kakarichō. Em thật sự tự hào.)* |
| Marco | マニラに<ruby>帰<rt>かえ</rt></ruby>っても、ここで<ruby>学<rt>まな</rt></ruby>んだ<ruby>精度<rt>せいど</rt></ruby>と<ruby>報連相<rt>ほうれんそう</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>忘<rt>わす</rt></ruby>れません。ありがとうございました！（<ruby>深礼<rt>しんれい</rt></ruby>）<br>*(Về Manila rồi, em tuyệt đối không quên độ chính xác và 報連相 mà em đã học ở đây. Em xin cảm ơn! (cúi gập người).)* |
| Tất cả | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |

---

## Tình huống 6 — Phòng riêng Marco · 22:00 cùng đêm, trao kỉ vật cá nhân (Mitutoyo)

| Vai | Lời thoại |
|---|---|
| Marco | タイ、ちょっとこっち<ruby>来<rt>こ</rt></ruby>い。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>盾<rt>たて</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>に、お<ruby>前<rt>まえ</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>したいものがある。<br>*(Thái, lại đây chút. Ngoài tấm khiên công ty, anh có cái muốn trao riêng cho cậu.)* |
| Thái | なんですか、わざわざ。<br>*(Có gì mà anh trang trọng vậy?)* |
| Marco | （<ruby>木<rt>き</rt></ruby>の<ruby>箱<rt>はこ</rt></ruby>を<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）<ruby>開<rt>あ</rt></ruby>けてみろ。<br>*(Đưa hộp gỗ. Mở ra xem.)* |
| Thái | （<ruby>箱<rt>はこ</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り、<ruby>開<rt>あ</rt></ruby>ける）...これは、<ruby>俺<rt>おれ</rt></ruby>のミツトヨのマイクロメーター！<br>*(Nhận hộp, mở ra... Đây là cây thước panme Mitutoyo của em!)* |
| Marco | スズキ<ruby>先輩<rt>せんぱい</rt></ruby>から<ruby>君<rt>きみ</rt></ruby>が<ruby>新人<rt>しんじん</rt></ruby>の<ruby>時<rt>とき</rt></ruby>にもらったやつだ。<ruby>君<rt>きみ</rt></ruby>のミツトヨを、<ruby>俺<rt>おれ</rt></ruby>が<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>借<rt>か</rt></ruby>りて<ruby>使<rt>つか</rt></ruby>っていた。<ruby>今日<rt>きょう</rt></ruby><ruby>返<rt>かえ</rt></ruby>す。<br>*(Là cây thước anh Suzuki tặng cậu khi cậu mới vào nghề. Anh đã mượn 5 năm. Hôm nay trả lại.)* |
| Thái | え、<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>らないんですか？マニラでも<ruby>使<rt>つか</rt></ruby>えるじゃないですか。<br>*(Ơ, anh không mang về sao? Manila cũng dùng được mà.)* |
| Marco | これは「<ruby>道具<rt>どうぐ</rt></ruby>」じゃない。「<ruby>絆<rt>きずな</rt></ruby>」だ。スズキさんから<ruby>君<rt>きみ</rt></ruby>へ、<ruby>君<rt>きみ</rt></ruby>から<ruby>俺<rt>おれ</rt></ruby>へ、<ruby>俺<rt>おれ</rt></ruby>から<ruby>君<rt>きみ</rt></ruby>へ。<ruby>次<rt>つぎ</rt></ruby>は<ruby>君<rt>きみ</rt></ruby>が<ruby>次<rt>つぎ</rt></ruby>の<ruby>世代<rt>せだい</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>すんだ。<br>*(Đây không phải "đồ nghề". Là "sợi dây gắn bó". Từ anh Suzuki đến cậu, từ cậu đến tôi, giờ từ tôi về cậu. Tiếp theo cậu sẽ trao cho lứa kōhai sau.)* |
| Thái | すみません、「<ruby>絆<rt>きずな</rt></ruby>」っていう<ruby>言葉<rt>ことば</rt></ruby>、ちゃんと<ruby>意味<rt>いみ</rt></ruby>を<ruby>確<rt>たし</rt></ruby>かめたいんですが、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>愛情<rt>あいじょう</rt></ruby>とはまた<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Xin lỗi, từ "kizuna" này, em muốn xác nhận lại nghĩa — nó khác với tình thân gia đình phải không ạ?)* |
| Marco | <ruby>違<rt>ちが</rt></ruby>う。<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>いた<ruby>仲間<rt>なかま</rt></ruby>と<ruby>結<rt>むす</rt></ruby>ばれる<ruby>強<rt>つよ</rt></ruby>い<ruby>糸<rt>いと</rt></ruby>のことだ。<ruby>血<rt>ち</rt></ruby>のつながりじゃないが、<ruby>切<rt>き</rt></ruby>れない。<br>*(Khác. Là sợi dây mạnh nối với người đồng hành cùng đường. Không có máu mủ nhưng không thể cắt đứt.)* |
| Thái | （<ruby>涙<rt>なみだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>く）<ruby>分<rt>わ</rt></ruby>かりました。<ruby>必<rt>かなら</rt></ruby>ず、<ruby>次<rt>つぎ</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>します。<br>*(Lau nước mắt. Em hiểu rồi. Nhất định em sẽ trao cho lứa kōhai sau.)* |

---

## Tình huống 7 — Sảnh đến セントレア · 1/2027 đầu, lời cuối tại ゲート

| Vai | Lời thoại |
|---|---|
| Marco | （スーツケースを<ruby>引<rt>ひ</rt></ruby>く）タイ、ここまででいい。<br>*(Kéo vali. Thái, đến đây thôi nhé.)* |
| Thái | ゲートの<ruby>前<rt>まえ</rt></ruby>まで<ruby>送<rt>おく</rt></ruby>らせてください。<br>*(Cho em tiễn đến trước cửa lên máy bay đi anh.)* |
| Marco | <ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、ここでお<ruby>前<rt>まえ</rt></ruby>がプトラを<ruby>見送<rt>みおく</rt></ruby>った。<ruby>今<rt>いま</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>が<ruby>俺<rt>おれ</rt></ruby>を<ruby>見送<rt>みおく</rt></ruby>っている。<ruby>順番<rt>じゅんばん</rt></ruby>だな。<br>*(5 năm trước, cậu cũng đã tiễn Putra ở đây. Giờ cậu tiễn tôi. Đến lượt thôi.)* |
| Thái | はい。<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、マニラかジャカルタで<ruby>会<rt>あ</rt></ruby>いましょう。<ruby>俺<rt>おれ</rt></ruby>も<ruby>東南<rt>とうなん</rt></ruby>アジアに<ruby>出張<rt>しゅっちょう</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>行<rt>い</rt></ruby>きます。<br>*(Vâng. 5 năm nữa mình gặp nhau ở Manila hoặc Jakarta nhé. Em chắc chắn sẽ đi công tác Đông Nam Á.)* |
| Marco | <ruby>約束<rt>やくそく</rt></ruby>だ。<ruby>奥<rt>おく</rt></ruby>さんと<ruby>子<rt>こ</rt></ruby>どもを<ruby>連<rt>つ</rt></ruby>れてこい。<br>*(Hứa nhé. Dẫn cả vợ con qua.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず。マイにも<ruby>会<rt>あ</rt></ruby>ってもらいたいです。<br>*(Vâng, chắc chắn. Em cũng muốn anh gặp Mai nữa.)* |
| Marco | （<ruby>抱<rt>だ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>う）<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けてな。<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Ôm nhau. Cẩn thận nhé. Giữ sức khoẻ.)* |
| Thái | マルコさんも。マニラで<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Anh Marco cũng vậy. Cố lên ở Manila nhé.)* |
| Marco | じゃあな、タイ<ruby>係長<rt>かかりちょう</rt></ruby>。<br>*(Tạm biệt nhé, anh Thái kakarichō.)* |
| Thái | お<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて、いってらっしゃい。<br>*(Anh đi cẩn thận, lên đường bình an.)* |

---

## Tình huống 8 — Quán cà phê sân bay · 12:00, Thái gọi điện về cho Mai (Scene tiếng Việt — giữ mạch nhân vật)

> Scene tiếng Việt — gọi điện về Việt Nam, ôn lại từ vựng JP đã học trong chương.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) A lô anh ơi, tiễn anh Marco xong rồi à? |
| Thái | (tiếng Việt) Ừ, vừa lên máy bay xong. Anh đang ngồi cà phê sân bay. Cảm giác lạ lắm em ạ. |
| Mai | (tiếng Việt) Hôm 送別会 thế nào, anh điều phối có run không? |
| Thái | (tiếng Việt) Run chứ. Lần đầu anh đứng cầm mic xưng chức 係長 trước cả xưởng. Anh Sakurai dạy anh thứ tự — 開会・スピーチ・乾杯・歓談・記念品贈呈・本人挨拶・閉会, anh ghi sổ học thuộc cả tuần. |
| Mai | (tiếng Việt) Anh Marco có khóc không? |
| Thái | (tiếng Việt) Có. Anh ấy trao lại cây thước Mitutoyo cho anh — cây thước hồi anh Suzuki tặng anh năm đầu. Anh ấy gọi đó là 絆 — sợi dây gắn bó giữa người cùng nghề. Không phải máu mủ nhưng không cắt đứt được. |
| Mai | (tiếng Việt) Hay quá. Bên anh có nhiều khái niệm như vậy lắm hả? |
| Thái | (tiếng Việt) Ừ. 報連相, 精度, giờ thêm 絆. Mỗi từ là một bài học. Tuần sau anh về Việt Nam mình cưới, anh kể em nghe kỹ. |
| Mai | (tiếng Việt) Em chờ. Anh đi đường cẩn thận, về thẳng ký túc nghỉ ngơi nhé. |
| Thái | (tiếng Việt) Ừ. Cảm ơn em đã đợi anh 5 năm. |

---

## Tình huống 9 — Ký túc · 23:00, Thái viết nhật ký (độc thoại tiếng Việt)

> Scene tiếng Việt — độc thoại nội tâm tổng kết.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, viết nhật ký) Ngày 8 tháng 1 năm 2027. Marco đã về Manila. |
| Thái | (tiếng Việt) Putra rồi Marco. Lứa người nước ngoài cùng đợt với mình đã lần lượt rời đi để lập nghiệp ở quê họ. |
| Thái | (tiếng Việt) Cây thước Mitutoyo: anh Suzuki → mình → Marco → mình → kōhai tiếp theo. Đó là 絆 mà anh Marco gọi tên. |
| Thái | (tiếng Việt) Mình giờ là senpai người nước ngoài cao cấp nhất ở xưởng. Long, Hùng người Việt, Adi người Indonesia — lứa kōhai mới. Mình sẽ truyền cây thước cho ai trong số họ, mình chưa biết. |
| Thái | (tiếng Việt) Tuần sau về Hà Nội cưới Mai. Vòng cung 5 năm sự nghiệp gần khép lại. Một vòng mới sẽ mở. |

---

## Đọng lại chương 9

Chương cuối của cung 5 năm tại みなみ精密金型, Thái học được những mẫu câu giao tiếp khó nhất với người làm thuê nước ngoài tại Nhật: **thông báo 契約満了 với cấp trên** (お<ruby>世話<rt>せわ</rt></ruby>になりました・<ruby>帰<rt>かえ</rt></ruby>らせていただきます), **xin phép tiếp tục quan hệ làm ăn sau khi về nước** (いつかご<ruby>取引<rt>とりひき</rt></ruby>させていただければ), **điều phối 送別会** theo trình tự chuẩn (<ruby>開会<rt>かいかい</rt></ruby>→スピーチ→<ruby>乾杯<rt>かんぱい</rt></ruby>→<ruby>歓談<rt>かんだん</rt></ruby>→<ruby>記念品<rt>きねんひん</rt></ruby><ruby>贈呈<rt>ぞうてい</rt></ruby>→<ruby>本人<rt>ほんにん</rt></ruby><ruby>挨拶<rt>あいさつ</rt></ruby>→<ruby>閉会<rt>へいかい</rt></ruby>), **xưng chức vụ khi cầm mic** (<ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby><ruby>係長<rt>かかりちょう</rt></ruby>のグエン・ヴァン・タイが<ruby>務<rt>つと</rt></ruby>めます), **hỏi lại lễ phép từ trừu tượng** (「<ruby>絆<rt>きずな</rt></ruby>」ってどういう<ruby>意味<rt>いみ</rt></ruby>ですか), và **lời tạm biệt tại ゲート** (お<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて・いってらっしゃい). Đồng thời cảm nhận **絆** — sợi dây nghề nghiệp xuyên quốc tịch — qua nghi thức trao cây thước Mitutoyo từ thế hệ này sang thế hệ kia: tài sản thật sự của 5 năm SSW1 không phải tiền lương mà là tình anh em trong nghề.

> Từ vựng & mẫu câu chương này: 契約満了・送別会・支店・立ち上げる・販路・人材採用・取引・係長・記念品贈呈・勤続感謝状・盾・乾杯・歓談・開会の挨拶・閉会の挨拶・本人挨拶・絆・次世代・後輩・東南アジア・お世話になりました・帰らせていただきます・〜させていただければと思います・お気を付けて・いってらっしゃい', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000010, 800000018, NULL, 'markdown_book', 'T10. Xin nghỉ về cưới và hồ sơ visa gia đình (帰国準備・家族滞在申請)', '# Sách kỹ sư khuôn đúc · T10. Xin nghỉ về cưới và hồ sơ visa gia đình (帰国準備・家族滞在申請)

> **Mục tiêu nhân vật:** Thái (28 tuổi, Hà Nội — năm thứ 5 tại みなみ精密金型 Anjo) xin nghỉ 2 tuần về Việt Nam cưới Mai và chuẩn bị hồ sơ xin visa **家族滞在** đưa vợ sang Nhật. Học các mẫu hội thoại tiếng Nhật liên quan thủ tục cá nhân nơi công sở: **xin nghỉ phép dài (有給申請) với cấp trên**, **hỏi danh mục hồ sơ tại 入管 (在留資格認定証明書・所得証明・住居証明)**, **hỏi lại lễ phép khi chưa hiểu thuật ngữ thủ tục** (〜というのは?), **quan sát đàn anh tư vấn quy trình visa**, **báo cáo lịch trình cho đồng nghiệp trước khi nghỉ** (報連相), và chốt mạch nhân vật qua scene tiếng Việt gọi điện về nhà.

---

## Bối cảnh

Tháng 1 năm 2027. Thái đã làm việc gần 5 năm tại **株式会社みなみ精密金型** ở Anjo, Aichi với vai trò 設計補助, trình độ tiếng Nhật N2. Mai — bạn gái ở Hà Nội — sắp thành vợ. Thái cần xin nghỉ phép dài, đồng thời chuẩn bị hồ sơ **家族滞在** (visa diện gia đình) để Mai sang Nhật sống cùng. Chương này tập trung các mẫu câu giao tiếp công sở khi xử lý việc riêng: xin nghỉ phép, hỏi thủ tục tại Cục xuất nhập cảnh, xác nhận thuật ngữ pháp lý, báo cáo bàn giao trước khi nghỉ.

---

## Tình huống 1 — Phòng 工場長 · 9:00, xin phép nghỉ dài hạn với cấp trên (有給申請)

| Vai | Lời thoại |
|---|---|
| Thái | （ドアをノックする）<ruby>失礼<rt>しつれい</rt></ruby>します。カワカミ<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<br>*(Gõ cửa. Em xin phép. Trưởng nhà máy Kawakami, em xin một chút thời gian được không ạ?)* |
| Kawakami | はい、どうぞ。<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Vâng, mời vào. Có chuyện gì vậy?)* |
| Thái | <ruby>私事<rt>しじ</rt></ruby>で<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、<ruby>来月<rt>らいげつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>させていただきたいのですが。<br>*(Em xin lỗi vì chuyện cá nhân, nhưng cuối tháng sau em muốn xin nghỉ phép có lương 2 tuần ạ.)* |
| Kawakami | <ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ですか。<ruby>理由<rt>りゆう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いてもいいですか。<br>*(Hai tuần à. Tôi hỏi lý do được không?)* |
| Thái | はい、<ruby>実<rt>じつ</rt></ruby>はベトナムで<ruby>結婚式<rt>けっこんしき</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる<ruby>予定<rt>よてい</rt></ruby>です。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>準備<rt>じゅんび</rt></ruby>がありますので、<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>いただけたらと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, thực ra em định tổ chức lễ cưới ở Việt Nam. Em có việc chuẩn bị cùng gia đình nên mong được nghỉ 2 tuần ạ.)* |
| Kawakami | おお、<ruby>結婚<rt>けっこん</rt></ruby>ですか！おめでとうございます。<br>*(Ồ, cưới à! Chúc mừng anh.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Kawakami | <ruby>業務<rt>ぎょうむ</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎはどうしますか。<br>*(Việc bàn giao công việc thế nào?)* |
| Thái | サクライ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>事前<rt>じぜん</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>進行中<rt>しんこうちゅう</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby><ruby>図面<rt>ずめん</rt></ruby>はすべて<ruby>共有<rt>きょうゆう</rt></ruby>フォルダにまとめます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>書<rt>しょ</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>します。<br>*(Em sẽ bàn trước với đàn anh Sakurai, tổng hợp toàn bộ bản vẽ khuôn đang chạy vào thư mục chung. Trong tuần sau em sẽ làm xong văn bản bàn giao ạ.)* |
| Kawakami | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。<ruby>許可<rt>きょか</rt></ruby>します。<br>*(Tôi rõ rồi. Hãy nộp đơn xin phép. Tôi duyệt.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Em cảm ơn ông. Mong ông giúp đỡ ạ.)* |

---

## Tình huống 2 — Bàn làm việc · 10:30, báo cáo lịch nghỉ với đàn anh Sakurai (報連相)

| Vai | Lời thoại |
|---|---|
| Thái | サクライ<ruby>先輩<rt>せんぱい</rt></ruby>、ちょっといいですか。<br>*(Anh Sakurai, em xin phép một chút được không ạ?)* |
| Sakurai | おう、どうした？<br>*(Ờ, gì thế?)* |
| Thái | <ruby>来月<rt>らいげつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby>をいただくことになりました。<ruby>結婚<rt>けっこん</rt></ruby>のためにベトナムに<ruby>帰<rt>かえ</rt></ruby>ります。<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Cuối tháng sau em sẽ nghỉ phép 2 tuần. Em về Việt Nam để cưới. Em xin báo cáo ạ.)* |
| Sakurai | え、<ruby>結婚<rt>けっこん</rt></ruby>か！おめでとう！<br>*(Hả, cưới à! Chúc mừng nhé!)* |
| Thái | ありがとうございます。<ruby>担当<rt>たんとう</rt></ruby>している<ruby>3<rt>みっ</rt></ruby>つの<ruby>案件<rt>あんけん</rt></ruby>について、<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎのご<ruby>相談<rt>そうだん</rt></ruby>をさせていただきたいです。<br>*(Em cảm ơn ạ. Em muốn bàn với anh về việc bàn giao 3 dự án em đang phụ trách.)* |
| Sakurai | わかった。<ruby>案件<rt>あんけん</rt></ruby>ごとに<ruby>進捗<rt>しんちょく</rt></ruby>と<ruby>残<rt>のこ</rt></ruby>りタスクをまとめてくれ。<ruby>俺<rt>おれ</rt></ruby>が<ruby>見<rt>み</rt></ruby>るよ。<br>*(Hiểu rồi. Cậu tổng hợp tiến độ và việc còn lại theo từng dự án nhé. Để tôi xem cho.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>までに<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ<ruby>書<rt>しょ</rt></ruby>のドラフトをお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Vâng, em rõ ạ. Ngày mai em sẽ gửi bản nháp văn bản bàn giao cho anh.)* |
| Sakurai | あと、<ruby>休<rt>やす</rt></ruby>みの<ruby>間<rt>あいだ</rt></ruby>、<ruby>緊急<rt>きんきゅう</rt></ruby>のとき<ruby>連絡<rt>れんらく</rt></ruby><ruby>取<rt>と</rt></ruby>れる？<br>*(À, lúc nghỉ có liên lạc được khi khẩn cấp không?)* |
| Thái | LINEは<ruby>使<rt>つか</rt></ruby>えますが、<ruby>時差<rt>じさ</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>あります。<ruby>緊急<rt>きんきゅう</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>はメッセージを<ruby>残<rt>のこ</rt></ruby>していただければ、<ruby>朝<rt>あさ</rt></ruby>と<ruby>夜<rt>よる</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(LINE thì dùng được, nhưng lệch giờ 2 tiếng. Khi khẩn cấp anh để lại tin nhắn, em kiểm tra sáng và tối ạ.)* |
| Sakurai | OK、それで<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(OK, vậy đủ rồi.)* |

---

## Tình huống 3 — Bàn làm việc · 12:15, hỏi lại đồng nghiệp về thuật ngữ visa (hỏi lại)

| Vai | Lời thoại |
|---|---|
| Thái | アディさん、ちょっと<ruby>聞<rt>き</rt></ruby>いてもいいですか。<br>*(Anh Adi, cho em hỏi chút được không ạ?)* |
| Adi | はい、どうぞ。<br>*(Vâng, mời cứ hỏi.)* |
| Thái | <ruby>奥<rt>おく</rt></ruby>さんを<ruby>日本<rt>にほん</rt></ruby>に<ruby>呼<rt>よ</rt></ruby>ぶときの<ruby>手続<rt>てつづ</rt></ruby>きについて<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*(Anh chỉ giúp em thủ tục đưa vợ sang Nhật được không ạ?)* |
| Adi | <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザだね。<ruby>俺<rt>おれ</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>した。<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>認定<rt>にんてい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>を<ruby>取<rt>と</rt></ruby>る。<br>*(Visa diện gia đình hả. Tôi cũng xin năm ngoái. Đầu tiên phải lấy giấy chứng nhận tư cách lưu trú.)* |
| Thái | すみません、「<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>認定<rt>にんてい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか。<br>*(Xin lỗi, "giấy chứng nhận tư cách lưu trú" nghĩa là gì ạ?)* |
| Adi | <ruby>略<rt>りゃく</rt></ruby>して「<ruby>COE<rt>シーオーイー</rt></ruby>」とも<ruby>言<rt>い</rt></ruby>うよ。<ruby>日本<rt>にほん</rt></ruby>に<ruby>住<rt>す</rt></ruby>む<ruby>資格<rt>しかく</rt></ruby>がありますという<ruby>証明書<rt>しょうめいしょ</rt></ruby>。<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby>して、それを<ruby>奥<rt>おく</rt></ruby>さんに<ruby>送<rt>おく</rt></ruby>って、<ruby>奥<rt>おく</rt></ruby>さんが<ruby>現地<rt>げんち</rt></ruby>の<ruby>大使館<rt>たいしかん</rt></ruby>でビザを<ruby>取<rt>と</rt></ruby>る<ruby>流<rt>なが</rt></ruby>れ。<br>*(Tắt là "COE". Là giấy xác nhận có tư cách ở Nhật. Mình xin ở Cục xuất nhập cảnh rồi gửi cho vợ, vợ đem ra đại sứ quán ở nước sở tại lấy visa. Quy trình là vậy.)* |
| Thái | なるほど、まず<ruby>日本<rt>にほん</rt></ruby>で<ruby>申請<rt>しんせい</rt></ruby>して、それから<ruby>奥<rt>おく</rt></ruby>さんが<ruby>大使館<rt>たいしかん</rt></ruby>で<ruby>取<rt>と</rt></ruby>る、ということですね。<br>*(Ra là vậy, tức là trước tiên xin ở Nhật, rồi vợ ra đại sứ quán lấy, đúng không ạ?)* |
| Adi | そういうこと。<ruby>時間<rt>じかん</rt></ruby>は<ruby>2<rt>に</rt></ruby>～<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>かかるから、<ruby>早<rt>はや</rt></ruby>めに<ruby>動<rt>うご</rt></ruby>いた<ruby>方<rt>ほう</rt></ruby>がいいよ。<br>*(Đúng vậy. Mất 2-3 tháng nên cậu làm sớm đi.)* |
| Thái | はい、ありがとうございます。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>のリストはどこで<ruby>確認<rt>かくにん</rt></ruby>できますか。<br>*(Vâng, em cảm ơn anh. Danh sách hồ sơ cần thiết em xem ở đâu ạ?)* |
| Adi | <ruby>入管<rt>にゅうかん</rt></ruby>のホームページに<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>書<rt>か</rt></ruby>いてある。<ruby>後<rt>あと</rt></ruby>でリンク<ruby>送<rt>おく</rt></ruby>るよ。<br>*(Trên trang web Cục xuất nhập cảnh ghi hết. Lát tôi gửi link cho.)* |

---

## Tình huống 4 — Cục xuất nhập cảnh Anjo · 10:00, hỏi danh mục hồ sơ tại 入管

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>受付<rt>うけつけ</rt></ruby>で）すみません、<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザの<ruby>申請<rt>しんせい</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>いたいのですが。<br>*(Tại quầy lễ tân. Xin lỗi, em muốn hỏi về việc xin visa diện gia đình ạ.)* |
| Nhân viên 入管 | はい、<ruby>5<rt>ご</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>へお<ruby>進<rt>すす</rt></ruby>みください。<br>*(Vâng, mời anh sang quầy số 5.)* |
| Officer | （<ruby>窓口<rt>まどぐち</rt></ruby>で）どんなご<ruby>用件<rt>ようけん</rt></ruby>ですか。<br>*(Tại quầy. Anh có việc gì ạ?)* |
| Thái | <ruby>奥<rt>おく</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>ぶため、<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>認定<rt>にんてい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えています。<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*(Em đang định xin giấy chứng nhận tư cách lưu trú để đưa vợ sang. Anh chỉ giúp em hồ sơ cần thiết được không ạ?)* |
| Officer | <ruby>申請者<rt>しんせいしゃ</rt></ruby>はご<ruby>本人<rt>ほんにん</rt></ruby>ですね。<ruby>5<rt>ご</rt></ruby>つあります。<ruby>結婚証明書<rt>けっこんしょうめいしょ</rt></ruby>、<ruby>戸籍<rt>こせき</rt></ruby><ruby>謄本<rt>とうほん</rt></ruby>、<ruby>在職証明書<rt>ざいしょくしょうめいしょ</rt></ruby>、<ruby>所得証明書<rt>しょとくしょうめいしょ</rt></ruby>、そして<ruby>住居<rt>じゅうきょ</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>す<ruby>書類<rt>しょるい</rt></ruby>です。<br>*(Người nộp đơn là anh nhỉ. Có 5 loại: giấy đăng ký kết hôn, sổ hộ khẩu, giấy xác nhận công tác, giấy chứng nhận thu nhập và giấy chứng minh nơi ở.)* |
| Thái | すみません、「<ruby>所得証明書<rt>しょとくしょうめいしょ</rt></ruby>」というのは、どの<ruby>書類<rt>しょるい</rt></ruby>のことですか。<br>*(Xin lỗi, "giấy chứng nhận thu nhập" là loại giấy nào ạ?)* |
| Officer | <ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>発行<rt>はっこう</rt></ruby>します。<ruby>去年<rt>きょねん</rt></ruby>の<ruby>年収<rt>ねんしゅう</rt></ruby>が<ruby>記載<rt>きさい</rt></ruby>されています。<br>*(Cấp ở tòa thị chính. Ghi thu nhập năm vừa rồi của anh.)* |
| Thái | なるほど、<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>取<rt>と</rt></ruby>るんですね。<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>住居<rt>じゅうきょ</rt></ruby>については、<ruby>現在<rt>げんざい</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでいますが、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Vâng, em hiểu rồi, lấy ở tòa thị chính. Em xác nhận lại. Về nơi ở, hiện em đang sống ở ký túc công ty, có ổn không ạ?)* |
| Officer | <ruby>独身<rt>どくしん</rt></ruby><ruby>寮<rt>りょう</rt></ruby>ですとご<ruby>夫婦<rt>ふうふ</rt></ruby>では<ruby>住<rt>す</rt></ruby>めません。<ruby>新<rt>あたら</rt></ruby>しい<ruby>住居<rt>じゅうきょ</rt></ruby>の<ruby>契約書<rt>けいやくしょ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Ký túc độc thân thì vợ chồng không ở chung được. Cần hợp đồng thuê nhà mới.)* |
| Thái | はい、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>す<ruby>予定<rt>よてい</rt></ruby>です。<ruby>1<rt>いち</rt></ruby>LDK、<ruby>家賃<rt>やちん</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>のアパートを<ruby>探<rt>さが</rt></ruby>しています。<ruby>契約書<rt>けいやくしょ</rt></ruby>ができたら、<ruby>追加<rt>ついか</rt></ruby>で<ruby>提出<rt>ていしゅつ</rt></ruby>してもよろしいですか。<br>*(Vâng, em định chuyển nhà tháng 3 ạ. Em đang tìm căn 1LDK, 70 nghìn yên một tháng. Khi nào có hợp đồng em nộp bổ sung được không ạ?)* |
| Officer | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>追加<rt>ついか</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>は<ruby>受<rt>う</rt></ruby>け<ruby>付<rt>つ</rt></ruby>けます。<ruby>審査<rt>しんさ</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>2<rt>に</rt></ruby>～<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>です。<br>*(Rõ rồi ạ. Hồ sơ bổ sung tôi sẽ nhận. Thời gian xét duyệt là 2-3 tháng.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ ạ. Em cảm ơn anh.)* |

---

## Tình huống 5 — Phòng 201 ký túc · 19:00, quan sát đàn anh Putra góp ý cách viết đơn

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてみたんですが、<ruby>見<rt>み</rt></ruby>ていただけますか。<br>*(Anh Putra, em viết thử đơn rồi, anh xem giúp em được không ạ?)* |
| Putra | おう、いいよ。（<ruby>書類<rt>しょるい</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>申請<rt>しんせい</rt></ruby><ruby>理由<rt>りゆう</rt></ruby>のところ、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>いた<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(Ờ, được. Xem giấy. Chỗ lý do xin visa, nên viết cụ thể hơn chút.)* |
| Thái | <ruby>具体的<rt>ぐたいてき</rt></ruby>に、というのは？<br>*(Cụ thể, là sao ạ?)* |
| Putra | 「<ruby>結婚<rt>けっこん</rt></ruby>したから<ruby>呼<rt>よ</rt></ruby>びたい」だけじゃ<ruby>弱<rt>よわ</rt></ruby>い。「<ruby>長期<rt>ちょうき</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>で<ruby>生活<rt>せいかつ</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>、<ruby>夫婦<rt>ふうふ</rt></ruby>で<ruby>同居<rt>どうきょ</rt></ruby>するため」と<ruby>書<rt>か</rt></ruby>く。<br>*(Chỉ viết "vì cưới nên muốn đưa sang" thì yếu. Phải viết "định sống lâu dài ở Nhật, để vợ chồng sống chung".)* |
| Thái | なるほど、<ruby>長期的<rt>ちょうきてき</rt></ruby>な<ruby>生活基盤<rt>せいかつきばん</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>す、ということですね。<br>*(Ra vậy, tức là phải cho thấy nền tảng sinh hoạt dài hạn, đúng không ạ?)* |
| Putra | そうそう。<ruby>俺<rt>おれ</rt></ruby>のときもそれで<ruby>通<rt>とお</rt></ruby>った。あと、<ruby>所得<rt>しょとく</rt></ruby>のところ、<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>380<rt>さんびゃくはちじゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>あれば<ruby>夫婦<rt>ふうふ</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Đúng đúng. Hồi tôi cũng nhờ vậy mà qua. Còn chỗ thu nhập, năm cậu kiếm 3,8 triệu yên là đủ cho hai vợ chồng rồi.)* |
| Thái | はい、<ruby>所得証明<rt>しょとくしょうめい</rt></ruby>は<ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>来週<rt>らいしゅう</rt></ruby><ruby>取<rt>と</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, em định tuần sau ra tòa thị chính lấy giấy chứng nhận thu nhập ạ.)* |
| Putra | <ruby>市役所<rt>しやくしょ</rt></ruby>は<ruby>平日<rt>へいじつ</rt></ruby>しか<ruby>開<rt>あ</rt></ruby>いてないから、<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>半日<rt>はんにち</rt></ruby><ruby>取<rt>と</rt></ruby>って<ruby>行<rt>い</rt></ruby>った<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(Tòa thị chính chỉ mở ngày thường, cậu nên xin nửa ngày phép đi cho yên tâm.)* |
| Thái | ありがとうございます。アドバイスとても<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh. Lời khuyên của anh giúp em nhiều lắm.)* |

---

## Tình huống 6 — Văn phòng nhân sự · 11:00, xin giấy xác nhận công tác (在職証明書)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>人事<rt>じんじ</rt></ruby>のヤマモトさん、<ruby>在職証明書<rt>ざいしょくしょうめいしょ</rt></ruby>を<ruby>発行<rt>はっこう</rt></ruby>していただきたいのですが。<br>*(Em xin phép. Chị Yamamoto phòng nhân sự, em xin chị cấp giúp em giấy xác nhận công tác được không ạ?)* |
| Yamamoto | はい、どんな<ruby>用途<rt>ようと</rt></ruby>ですか。<br>*(Vâng, anh dùng vào việc gì?)* |
| Thái | <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザの<ruby>申請<rt>しんせい</rt></ruby>のためです。<br>*(Để xin visa diện gia đình ạ.)* |
| Yamamoto | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>記載<rt>きさい</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>は、<ruby>会社名<rt>かいしゃめい</rt></ruby>、<ruby>入社<rt>にゅうしゃ</rt></ruby><ruby>年月日<rt>ねんがっぴ</rt></ruby>、<ruby>役職<rt>やくしょく</rt></ruby>、<ruby>年収<rt>ねんしゅう</rt></ruby>、<ruby>雇用<rt>こよう</rt></ruby><ruby>形態<rt>けいたい</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Rõ ạ. Nội dung ghi gồm tên công ty, ngày vào làm, chức vụ, thu nhập năm, hình thức tuyển dụng — vậy được không?)* |
| Thái | はい、<ruby>入管<rt>にゅうかん</rt></ruby>の<ruby>指定<rt>してい</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じです。<br>*(Vâng, đúng các mục mà Cục xuất nhập cảnh yêu cầu ạ.)* |
| Yamamoto | いつまでに<ruby>必要<rt>ひつよう</rt></ruby>ですか。<br>*(Khi nào anh cần?)* |
| Thái | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>申請<rt>しんせい</rt></ruby>したいので、できれば<ruby>水曜日<rt>すいようび</rt></ruby>までに<ruby>頂<rt>いただ</rt></ruby>けると<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em muốn nộp đơn trước thứ sáu tuần sau, nên nếu có trước thứ tư thì em rất biết ơn ạ.)* |
| Yamamoto | わかりました。<ruby>火曜日<rt>かようび</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しておきます。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>りのときに<ruby>印鑑<rt>いんかん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきてください。<br>*(Hiểu rồi. Tôi chuẩn bị xong vào thứ ba. Khi đến nhận anh mang con dấu cá nhân nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。お<ruby>手数<rt>てすう</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng em rõ ạ. Làm phiền chị, mong chị giúp đỡ ạ.)* |

---

## Tình huống 7 — Quầy nộp đơn 入管 · cuối tháng 1, nộp hồ sơ và xác nhận lịch nhận kết quả

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>家族滞在<rt>かぞくたいざい</rt></ruby><ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>認定<rt>にんてい</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<ruby>書類<rt>しょるい</rt></ruby>はこちらです。<br>*(Em đến nộp đơn xin chứng nhận tư cách lưu trú diện gia đình ạ. Hồ sơ đây ạ.)* |
| Officer | （<ruby>書類<rt>しょるい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>）<ruby>結婚<rt>けっこん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>のベトナム<ruby>語<rt>ご</rt></ruby><ruby>原本<rt>げんぽん</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby><ruby>訳<rt>やく</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>揃<rt>そろ</rt></ruby>っていますね。<br>*(Kiểm hồ sơ. Có cả bản gốc tiếng Việt và bản dịch tiếng Nhật của giấy đăng ký kết hôn nhỉ.)* |
| Thái | はい、<ruby>翻訳<rt>ほんやく</rt></ruby>は<ruby>翻訳<rt>ほんやく</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>依頼<rt>いらい</rt></ruby>しました。<br>*(Vâng, bản dịch em nhờ công ty dịch thuật làm ạ.)* |
| Officer | <ruby>所得<rt>しょとく</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>換算<rt>かんさん</rt></ruby><ruby>384<rt>さんびゃくはちじゅうよん</rt></ruby><ruby>万<rt>まん</rt></ruby>。<ruby>住居<rt>じゅうきょ</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby><ruby>寮<rt>りょう</rt></ruby>ですね。<br>*(Thu nhập 32 vạn yên một tháng, quy năm 384 vạn. Nơi ở hiện tại là ký túc công ty nhỉ.)* |
| Thái | はい。<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めに<ruby>1<rt>いち</rt></ruby>LDKのアパートに<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>す<ruby>予定<rt>よてい</rt></ruby>です。<ruby>契約書<rt>けいやくしょ</rt></ruby>ができ<ruby>次第<rt>しだい</rt></ruby>、<ruby>追加<rt>ついか</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>いたします。<br>*(Vâng. Đầu tháng 3 em sẽ chuyển sang căn 1LDK ạ. Khi nào có hợp đồng em sẽ nộp bổ sung ngay.)* |
| Officer | <ruby>結構<rt>けっこう</rt></ruby>です。<ruby>受付<rt>うけつけ</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>は<ruby>2027<rt>にせんにじゅうなな</rt></ruby>-<ruby>0184<rt>ぜろいちはちよん</rt></ruby>。<ruby>結果<rt>けっか</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>後<rt>ご</rt></ruby>、ハガキで<ruby>通知<rt>つうち</rt></ruby>します。<br>*(Được rồi. Số tiếp nhận 2027-0184. Kết quả 3 tháng nữa thông báo qua bưu thiếp.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りた<ruby>後<rt>あと</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>証明書<rt>しょうめいしょ</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って、ベトナムの<ruby>奥<rt>おく</rt></ruby>さんに<ruby>送<rt>おく</rt></ruby>る、ということでよろしいですか。<br>*(Em rõ ạ. Cho em xác nhận quy trình sau khi được duyệt. Em nhận giấy chứng nhận rồi gửi cho vợ ở Việt Nam, đúng không ạ?)* |
| Officer | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>奥<rt>おく</rt></ruby>さんが<ruby>在<rt>あ</rt></ruby>ハノイ<ruby>日本<rt>にほん</rt></ruby><ruby>大使館<rt>たいしかん</rt></ruby>でビザ<ruby>申請<rt>しんせい</rt></ruby>します。<ruby>証明書<rt>しょうめいしょ</rt></ruby>の<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>です。<br>*(Vâng, đúng vậy. Vợ anh đem ra đại sứ quán Nhật tại Hà Nội để xin visa. Giấy chứng nhận có hiệu lực 3 tháng.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 8 — Văn phòng thiết kế · 16:00, sếp Tanaka chúc mừng và nhắc về 報連相 mùa cưới

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>結婚<rt>けっこん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いたよ。おめでとう！<br>*(Thái-kun, chuyện cưới của cậu tôi nghe rồi. Chúc mừng nhé!)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>、ありがとうございます。<br>*(Trưởng phòng Tanaka, em cảm ơn ạ.)* |
| Tanaka | <ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、サンテラからセントレアまで<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>ったのが<ruby>昨日<rt>きのう</rt></ruby>のようだ。<ruby>立派<rt>りっぱ</rt></ruby>になったな。<br>*(Năm năm trước tôi ra Centrair đón cậu, cứ như mới hôm qua. Cậu trưởng thành hẳn ra.)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>のおかげです。<br>*(Cũng nhờ trưởng phòng ạ.)* |
| Tanaka | <ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶのも<ruby>大変<rt>たいへん</rt></ruby>だが、<ruby>会社<rt>かいしゃ</rt></ruby>もできる<ruby>限<rt>かぎ</rt></ruby>り<ruby>支援<rt>しえん</rt></ruby>するよ。<ruby>住居<rt>じゅうきょ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby><ruby>寮<rt>りょう</rt></ruby><ruby>制度<rt>せいど</rt></ruby>もあるから<ruby>人事<rt>じんじ</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>してみるといい。<br>*(Đưa gia đình sang vất vả lắm đấy, nhưng công ty sẽ hỗ trợ trong khả năng. Chuyện nhà cửa, công ty cũng có chế độ ký túc gia đình, cậu thử hỏi phòng nhân sự xem.)* |
| Thái | え、そんな<ruby>制度<rt>せいど</rt></ruby>があるんですか。<ruby>知<rt>し</rt></ruby>りませんでした。<ruby>家族<rt>かぞく</rt></ruby><ruby>寮<rt>りょう</rt></ruby><ruby>制度<rt>せいど</rt></ruby>というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にはどんな<ruby>内容<rt>ないよう</rt></ruby>ですか。<br>*(Ơ, có cả chế độ đó ạ. Em không biết. Chế độ ký túc gia đình cụ thể nội dung như thế nào ạ?)* |
| Tanaka | <ruby>家賃<rt>やちん</rt></ruby><ruby>補助<rt>ほじょ</rt></ruby>が<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>出<rt>で</rt></ruby>る。<ruby>勤続<rt>きんぞく</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>正社員<rt>せいしゃいん</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>。<ruby>君<rt>きみ</rt></ruby>はちょうど<ruby>該当<rt>がいとう</rt></ruby>するよ。<br>*(Hỗ trợ tiền nhà 30 nghìn yên/tháng. Áp dụng cho nhân viên chính thức làm trên 5 năm. Cậu vừa đủ điều kiện.)* |
| Thái | ありがとうございます！<ruby>早速<rt>さっそく</rt></ruby><ruby>人事<rt>じんじ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただき、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn ạ! Em sẽ hỏi phòng nhân sự ngay. Cảm ơn anh đã chỉ thông tin quan trọng này, em mừng quá ạ.)* |
| Tanaka | あと<ruby>一<rt>ひと</rt></ruby>つ。ベトナムに<ruby>帰<rt>かえ</rt></ruby>っている<ruby>間<rt>あいだ</rt></ruby>、<ruby>体調<rt>たいちょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>と<ruby>連絡<rt>れんらく</rt></ruby>だけはしっかり<ruby>頼<rt>たの</rt></ruby>む。<ruby>報連相<rt>ほうれんそう</rt></ruby>は<ruby>休暇中<rt>きゅうかちゅう</rt></ruby>も<ruby>変<rt>か</rt></ruby>わらないからな。<br>*(Còn một điều nữa. Lúc về Việt Nam, cậu giữ sức khoẻ và liên lạc cho cẩn thận. 報連相 lúc nghỉ vẫn không đổi nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng em rõ ạ.)* |

---

## Tình huống 9 — Sân bay Centrair · 14:00, đồng nghiệp tiễn ra sân bay

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>気<rt>き</rt></ruby>をつけてな。<ruby>結婚式<rt>けっこんしき</rt></ruby><ruby>楽<rt>たの</rt></ruby>しんでこい。<br>*(Thái-kun, giữ gìn sức khoẻ nhé. Tận hưởng lễ cưới đi.)* |
| Adi | <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby><ruby>出<rt>で</rt></ruby>るね。LINEで<ruby>教<rt>おし</rt></ruby>えて。<br>*(Kết quả visa diện gia đình chắc khoảng tháng 4. LINE báo tôi nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, em chắc chắn sẽ báo.)* |
| Tanaka | <ruby>結婚式<rt>けっこんしき</rt></ruby>のビデオ、<ruby>俺<rt>おれ</rt></ruby>たちにも<ruby>送<rt>おく</rt></ruby>って<ruby>欲<rt>ほ</rt></ruby>しい。<ruby>会社<rt>かいしゃ</rt></ruby>のみんなで<ruby>見<rt>み</rt></ruby>るぞ。<br>*(Video lễ cưới gửi cho bọn tôi với nhé. Cả công ty sẽ xem.)* |
| Thái | （<ruby>感激<rt>かんげき</rt></ruby>して<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>送<rt>おく</rt></ruby>ります。<ruby>皆<rt>みな</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>、また<ruby>元気<rt>げんき</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ってきます。<br>*(Xúc động cúi đầu. Vâng, em chắc chắn gửi ạ. Em cảm ơn các anh rất nhiều. Hai tuần nữa em sẽ khoẻ mạnh quay lại ạ.)* |
| Putra | おめでとう、タイ。<ruby>奥<rt>おく</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>ってこい！<br>*(Chúc mừng cậu Thái. Đưa vợ cùng quay lại nhé!)* |
| Thái | はい、お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin phép đi trước ạ. Hai tuần tới mong các anh giúp đỡ công việc giúp em ạ.)* |

---

## Tình huống 10 — Hà Nội, nhà Thái · 22:00 đêm trước cưới, gọi LINE cho Putra (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — Thái gọi cho Putra bằng tiếng Việt (Putra đã biết một số từ qua 5 năm chung phòng), thực ra phần lớn nói với mẹ và Mai. Giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh, hồ sơ 家族滞在 nộp xong chưa anh? |
| Thái | (tiếng Việt) Anh nộp rồi em. Số tiếp nhận 2027-0184. Khoảng tháng 4 là có giấy 在留資格認定証明書. Anh gửi cho em rồi em đem ra đại sứ quán Nhật ở Hà Nội. |
| Mẹ Thái | (tiếng Việt) Mẹ nghe mãi mà không nhớ nổi mấy cái tên Nhật. Tóm lại bao giờ con Mai sang được? |
| Thái | (tiếng Việt) Tầm tháng 5 mẹ ạ. Hồ sơ xét 3 tháng, xong còn visa đại sứ quán mất một tháng nữa. |
| Mai | (tiếng Việt) Anh tìm được nhà mới chưa? |
| Thái | (tiếng Việt) Anh đang xem một căn 1LDK gần ga Anjo. 70 nghìn yên một tháng. Mà hôm qua bác Tanaka trưởng phòng vừa nói công ty có chế độ ký túc gia đình, hỗ trợ tiền nhà 30 nghìn yên. Anh đang hỏi nhân sự. |
| Mẹ Thái | (tiếng Việt) Người ta tốt với con thật. Năm năm rồi mà vẫn lo cho con. |
| Thái | (tiếng Việt) Vâng mẹ. Cả công ty nói sẽ xem video lễ cưới. Bác Tanaka, anh Sakurai, anh Adi, anh Putra, chị Yamamoto đều dặn. |
| Bố Thái | (tiếng Việt) Mai cưới rồi. Đêm nay ngủ sớm con. |
| Thái | (tiếng Việt) Vâng bố. Em Mai, mai gặp em ở nhà thờ. |
| Mai | (tiếng Việt) Vâng anh. Em đợi anh năm năm rồi. |

---

## Đọng lại chương 10

Trước ngày cưới, Thái phải xử lý đồng thời ba việc lớn ở công sở Nhật: **xin nghỉ phép dài** với 工場長 (有給休暇を申請させていただきたいのですが・引き継ぎ書を作成します), **báo cáo bàn giao** với đàn anh (報連相 lúc nghỉ vẫn không đổi), và **thủ tục visa 家族滞在** ở 入管. Tại Cục xuất nhập cảnh, Thái học cụm **在留資格認定証明書** (COE — bước đầu tiên trước khi vợ ra đại sứ quán xin visa), danh mục **5 loại hồ sơ** (結婚証明書・戸籍謄本・在職証明書・所得証明書・住居証明), và mẫu xác nhận **〜ということですか / 〜ということでよろしいですか**. Đàn anh Adi và Putra dạy cách viết lý do "**長期的に日本で生活する予定・夫婦で同居するため**" thay vì lý do mơ hồ. Bất ngờ nhất: 部長 Tanaka nhắc về **家族寮制度** (chế độ ký túc gia đình, hỗ trợ 3 vạn yên/tháng cho nhân viên chính thức trên 5 năm) — minh chứng văn hoá Nhật trọng 報連相 hai chiều: chỉ khi mình mở miệng báo cáo, cấp trên mới chia sẻ được những chế độ mình chưa biết.

> Từ vựng & mẫu câu chương này: 有給休暇・申請・私事で恐れ入りますが・引き継ぎ書・報連相・家族滞在・在留資格認定証明書・COE・結婚証明書・戸籍謄本・在職証明書・所得証明書・住居証明・1LDK・家賃補助・家族寮制度・勤続・正社員・印鑑・翻訳・原本・有効期限・受付番号・〜というのは・〜ということでよろしいですか・お手数をおかけしますが', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000011, 800000018, NULL, 'markdown_book', 'T11. Cưới và đón vợ sang Nhật (結婚・家族来日)', '# Sách kỹ sư khuôn đúc · T11. Cưới và đón vợ sang Nhật (結婚・家族来日)

> **Mục tiêu nhân vật:** Thái (28 tuổi, Anjo) tổ chức lễ cưới ở Hà Nội rồi đón Mai sang Nhật theo diện 家族滞在. Học các mẫu hội thoại tiếng Nhật quanh sự kiện kết hôn quốc tế: gửi lời chúc mừng và đáp lễ qua video call với 上司, làm thủ tục xin 認定証明書 ở 入管, thuê căn hộ 1LDK qua 不動産屋, hỏi lại lễ phép khi chưa hiểu thuật ngữ hợp đồng (敷金・礼金・保証会社), giới thiệu vợ với cấp trên người Nhật, và đặt câu chào hỏi cơ bản cho người mới đến Nhật.

---

## Bối cảnh

Từ tháng 2 đến tháng 5 năm 2027. Thái về Hà Nội cưới Mai, sau đó quay lại Anjo lo thủ tục đón vợ sang theo visa 家族滞在 (kazoku-taizai). Trình độ tiếng Nhật N2, đã 5 năm sống tại Nhật. Chương này tập trung các mẫu câu giao tiếp quanh sự kiện kết hôn quốc tế và thủ tục đoàn tụ gia đình tại Nhật: đáp lời chúc của cấp trên, làm thủ tục ở 入管, ký hợp đồng thuê nhà, giới thiệu vợ với người Nhật.

---

## Tình huống 1 — Tiệc cưới Hà Nội · 2/2027, đáp lời chúc của cấp trên qua LINE video

| Vai | Lời thoại |
|---|---|
| MC | (tiếng Việt) Xin trân trọng giới thiệu chú rể Nguyễn Văn Thái và cô dâu Phạm Thị Mai! |
| Thái | (tiếng Việt, áo dài đỏ) Mai, mình lên sân khấu thôi em. |
| Mai | (tiếng Việt, áo dài hồng) Vâng anh. |
| Tanaka | (LINE video từ Nhật) タイさん、マイさん、ご<ruby>結婚<rt>けっこん</rt></ruby>おめでとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>日<rt>ひ</rt></ruby>ですね。<br>*(Anh Thái, chị Mai, chúc mừng hai cháu kết hôn. Thật là một ngày tuyệt vời.)* |
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、ありがとうございます。<ruby>遠<rt>とお</rt></ruby>く<ruby>日本<rt>にほん</rt></ruby>から<ruby>祝福<rt>しゅくふく</rt></ruby>していただいて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Bác Tanaka, cảm ơn ông. Được ông chúc phúc từ tận Nhật, em thực sự rất vui.)* |
| Sakurai | (video) ご<ruby>結婚<rt>けっこん</rt></ruby>お<ruby>祝<rt>いわ</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>末永<rt>すえなが</rt></ruby>くお<ruby>幸<rt>しあわ</rt></ruby>せに。<br>*(Xin chúc mừng đám cưới hai bạn. Chúc trăm năm hạnh phúc.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、ありがとうございます。<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>にマイを<ruby>連<rt>つ</rt></ruby>れて<ruby>安城<rt>あんじょう</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ります。その<ruby>時<rt>とき</rt></ruby>は<ruby>改<rt>あらた</rt></ruby>めてご<ruby>挨拶<rt>あいさつ</rt></ruby>させてください。<br>*(Trưởng phòng Sakurai, em cảm ơn anh. Tháng 5 em sẽ đưa Mai về Anjo. Khi đó cho phép em chào ra mắt chính thức ạ.)* |
| Sakurai | はい、<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Vâng, tôi rất mong.)* |
| Mai | (tiếng Việt, ghé vào màn hình) Cháu cảm ơn các bác. |
| Thái | （マイに<ruby>代<rt>か</rt></ruby>わって）<ruby>家内<rt>かない</rt></ruby>も<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<ruby>日本<rt>にほん</rt></ruby>に<ruby>行<rt>い</rt></ruby>くのを<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Dịch thay Mai. Nhà em cũng xin cảm ơn các bác. Cô ấy rất mong chờ được sang Nhật.)* |

---

## Tình huống 2 — Đêm tân hôn Hà Nội · 22:00, hai vợ chồng bàn kế hoạch sang Nhật

> Scene tiếng Việt — giữ mạch nhân vật.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Em ơi, mình cưới nhau thật rồi. Sáu năm yêu xa khép lại. |
| Mai | (tiếng Việt) Vâng anh. Em vẫn chưa tin được. |
| Thái | (tiếng Việt) Mai về Nhật anh nộp ngay hồ sơ 認定証明書 — gọi là kazoku-taizai. Khoảng ba tháng có visa. |
| Mai | (tiếng Việt) Em phải chuẩn bị giấy tờ gì hả anh? |
| Thái | (tiếng Việt) Giấy đăng ký kết hôn dịch công chứng sang tiếng Nhật, hộ chiếu, ảnh, sổ hộ khẩu. Mai anh gửi list chi tiết qua Zalo. |
| Mai | (tiếng Việt) Còn nhà ở bên đó? |
| Thái | (tiếng Việt) Anh đang đi xem căn 1LDK ở Anjo, khoảng bảy chục nghìn yên một tháng. Tuần sau anh bay về sẽ ký hợp đồng. |
| Mai | (tiếng Việt) Em sang là có nhà ngay luôn nhỉ. |
| Thái | (tiếng Việt) Ừ. Anh muốn em sang là vào tổ ấm, không phải ở ký túc nữa. |

---

## Tình huống 3 — 名古屋入管 Nagoya · 3/2027 10:00, nộp đơn xin 認定証明書 cho vợ

| Vai | Lời thoại |
|---|---|
| Officer | <ruby>本日<rt>ほんじつ</rt></ruby>はどのようなご<ruby>用件<rt>ようけん</rt></ruby>ですか？<br>*(Hôm nay anh đến vì việc gì?)* |
| Thái | <ruby>家族滞在<rt>かぞくたいざい</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>認定<rt>にんてい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>の<ruby>交付<rt>こうふ</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em đến nộp đơn xin cấp giấy chứng nhận tư cách lưu trú diện gia đình.)* |
| Officer | <ruby>申請人<rt>しんせいにん</rt></ruby>は<ruby>奥様<rt>おくさま</rt></ruby>ですね？<ruby>書類<rt>しょるい</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>します。<br>*(Người được xin là vợ anh nhỉ? Cho tôi xem giấy tờ.)* |
| Thái | （<ruby>書類<rt>しょるい</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）はい、こちらが<ruby>申請書<rt>しんせいしょ</rt></ruby>、<ruby>結婚<rt>けっこん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>の<ruby>翻訳<rt>ほんやく</rt></ruby><ruby>付<rt>つ</rt></ruby>き、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>在職<rt>ざいしょく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>源泉徴収票<rt>げんせんちょうしゅうひょう</rt></ruby>です。<br>*(Đưa giấy tờ. Vâng, đây là đơn xin, giấy đăng ký kết hôn kèm bản dịch, giấy cư trú, giấy xác nhận công tác, và chứng từ khấu trừ thuế tại nguồn.)* |
| Officer | <ruby>扶養<rt>ふよう</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>年収<rt>ねんしゅう</rt></ruby>はおいくらですか？<br>*(Tôi xác nhận khả năng bảo trợ. Thu nhập năm của anh bao nhiêu?)* |
| Thái | <ruby>500<rt>ごひゃく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です。<br>*(5 triệu yên ạ.)* |
| Officer | すみません、「<ruby>扶養<rt>ふよう</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>」というのは、<ruby>奥様<rt>おくさま</rt></ruby>を<ruby>養<rt>やしな</rt></ruby>えるかどうかを<ruby>判断<rt>はんだん</rt></ruby>する<ruby>基準<rt>きじゅん</rt></ruby>です。<br>*(Xin nói thêm, "khả năng bảo trợ" là tiêu chí xét xem anh có nuôi được vợ hay không.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>住居<rt>じゅうきょ</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby>に<ruby>1LDK<rt>いちエルディーケー</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby>を<ruby>結<rt>むす</rt></ruby>ぶ<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em rõ ạ. Nhà ở thì tháng sau em sẽ ký hợp đồng căn 1LDK.)* |
| Officer | <ruby>結構<rt>けっこう</rt></ruby>です。<ruby>審査<rt>しんさ</rt></ruby>に<ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>ほどかかります。<ruby>結果<rt>けっか</rt></ruby>は<ruby>郵送<rt>ゆうそう</rt></ruby>でお<ruby>知<rt>し</rt></ruby>らせします。<br>*(Được rồi. Việc thẩm tra mất khoảng 2 tháng. Kết quả sẽ gửi bưu điện.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong anh xem xét ạ.)* |

---

## Tình huống 4 — Văn phòng 不動産屋 Anjo · 3/2027 14:00, hỏi thuê căn hộ 1LDK

| Vai | Lời thoại |
|---|---|
| 不動産屋 | いらっしゃいませ。どのようなお<ruby>部屋<rt>へや</rt></ruby>をお<ruby>探<rt>さが</rt></ruby>しですか？<br>*(Xin mời. Anh đang tìm phòng kiểu nào?)* |
| Thái | <ruby>夫婦<rt>ふうふ</rt></ruby><ruby>二人<rt>ふたり</rt></ruby>で<ruby>住<rt>す</rt></ruby>む<ruby>1LDK<rt>いちエルディーケー</rt></ruby>を<ruby>探<rt>さが</rt></ruby>しています。<ruby>会社<rt>かいしゃ</rt></ruby>は<ruby>安城市<rt>あんじょうし</rt></ruby><ruby>新明町<rt>しんめいちょう</rt></ruby>です。<br>*(Em đang tìm căn 1LDK cho hai vợ chồng. Công ty em ở phường Shinmei thành phố Anjo.)* |
| 不動産屋 | ご<ruby>予算<rt>よさん</rt></ruby>はおいくらですか？<br>*(Ngân sách bao nhiêu ạ?)* |
| Thái | <ruby>家賃<rt>やちん</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>以内<rt>いない</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiền nhà trong vòng 70.000 yên ạ.)* |
| 不動産屋 | こちらの<ruby>物件<rt>ぶっけん</rt></ruby>はいかがですか？<ruby>築<rt>ちく</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>50<rt>ごじゅう</rt></ruby><ruby>平米<rt>へいべい</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>まで<ruby>自転車<rt>じてんしゃ</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>家賃<rt>やちん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>8<rt>はっ</rt></ruby><ruby>千円<rt>せんえん</rt></ruby>、<ruby>敷金<rt>しききん</rt></ruby><ruby>1<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、<ruby>礼金<rt>れいきん</rt></ruby>なしです。<br>*(Căn này thế nào ạ? Xây 5 năm, 50m², đến công ty đạp xe 10 phút. Tiền nhà 68.000 yên, đặt cọc 1 tháng, không tiền lễ.)* |
| Thái | すみません、「<ruby>敷金<rt>しききん</rt></ruby>」と「<ruby>礼金<rt>れいきん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "shikikin" và "reikin" nghĩa là gì ạ?)* |
| 不動産屋 | <ruby>敷金<rt>しききん</rt></ruby>は<ruby>退去<rt>たいきょ</rt></ruby>の<ruby>時<rt>とき</rt></ruby>の<ruby>修繕<rt>しゅうぜん</rt></ruby><ruby>費<rt>ひ</rt></ruby>です。<ruby>戻<rt>もど</rt></ruby>ってくる<ruby>場合<rt>ばあい</rt></ruby>もあります。<ruby>礼金<rt>れいきん</rt></ruby>は<ruby>大家<rt>おおや</rt></ruby>さんへのお<ruby>礼<rt>れい</rt></ruby>で、<ruby>戻<rt>もど</rt></ruby>ってきません。<br>*(Shikikin là phí sửa chữa khi trả nhà. Có khi được hoàn lại. Reikin là tiền cảm ơn chủ nhà, không hoàn lại.)* |
| Thái | <ruby>戻<rt>もど</rt></ruby>ってこない<ruby>方<rt>ほう</rt></ruby>が<ruby>礼金<rt>れいきん</rt></ruby>ということですね。<br>*(Tức là cái không hoàn lại là reikin nhỉ.)* |
| 不動産屋 | そうです。それから「<ruby>保証<rt>ほしょう</rt></ruby><ruby>会社<rt>がいしゃ</rt></ruby>」を<ruby>利用<rt>りよう</rt></ruby>していただきます。<ruby>家賃<rt>やちん</rt></ruby>の<ruby>50<rt>ごじゅう</rt></ruby>パーセントが<ruby>初回<rt>しょかい</rt></ruby><ruby>保証<rt>ほしょう</rt></ruby><ruby>料<rt>りょう</rt></ruby>です。<br>*(Đúng vậy. Và anh phải dùng "công ty bảo lãnh". 50% tiền nhà là phí bảo lãnh lần đầu.)* |
| Thái | 「<ruby>保証<rt>ほしょう</rt></ruby><ruby>会社<rt>がいしゃ</rt></ruby>」というのは、<ruby>連帯<rt>れんたい</rt></ruby><ruby>保証人<rt>ほしょうにん</rt></ruby>の<ruby>代<rt>か</rt></ruby>わりということですか？<br>*(Công ty bảo lãnh tức là thay cho người bảo lãnh liên đới phải không ạ?)* |
| 不動産屋 | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>はほとんどこちらをご<ruby>利用<rt>りよう</rt></ruby>になります。<br>*(Vâng, đúng vậy. Người nước ngoài hầu hết đều dùng cách này.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。この<ruby>物件<rt>ぶっけん</rt></ruby>で<ruby>契約<rt>けいやく</rt></ruby>させてください。<br>*(Em rõ rồi. Cho em ký căn này ạ.)* |

---

## Tình huống 5 — Công ty xưởng · 3/2027 17:00, báo cáo cấp trên về kế hoạch đón vợ (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<ruby>報告<rt>ほうこく</rt></ruby>したいことがあります。<br>*(Trưởng phòng Sakurai, em xin một chút thời gian được không ạ. Em có việc muốn báo cáo.)* |
| Sakurai | はい、どうぞ。<br>*(Vâng, mời.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>名古屋入管<rt>なごやにゅうかん</rt></ruby>に<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>しました。<ruby>2<rt>に</rt></ruby>か<ruby>月後<rt>げつご</rt></ruby>に<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Hôm nay em đã nộp đơn xin visa diện gia đình tại 入管 Nagoya. Dự kiến 2 tháng sau có kết quả.)* |
| Sakurai | <ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいますね。<ruby>住<rt>す</rt></ruby>むところは<ruby>決<rt>き</rt></ruby>まりましたか？<br>*(Tiến triển thuận lợi nhỉ. Chỗ ở đã quyết chưa?)* |
| Thái | はい、<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>自転車<rt>じてんしゃ</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>の<ruby>1LDK<rt>いちエルディーケー</rt></ruby>を<ruby>契約<rt>けいやく</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>します。<br>*(Vâng, em đã ký căn 1LDK đạp xe 10 phút từ công ty. Tuần sau em chuyển nhà.)* |
| Sakurai | <ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>しの<ruby>日<rt>ひ</rt></ruby>は<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>ってください。<ruby>申請<rt>しんせい</rt></ruby>はメールで<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Ngày chuyển nhà em hãy lấy nghỉ phép. Đăng ký qua mail là được.)* |
| Thái | ありがとうございます。それから、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>に<ruby>妻<rt>つま</rt></ruby>がベトナムから<ruby>来<rt>き</rt></ruby>ます。セントレアまで<ruby>迎<rt>むか</rt></ruby>えに<ruby>行<rt>い</rt></ruby>くため、<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>休<rt>やす</rt></ruby>みをいただきたいです。<br>*(Em cảm ơn anh. Còn nữa, giữa tháng 5 vợ em từ Việt Nam sang. Để đi đón ở Centrair, em xin nghỉ một ngày ạ.)* |
| Sakurai | もちろんです。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>日付<rt>ひづけ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かったら<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Tất nhiên rồi. Có ngày cụ thể thì báo trước cho tôi.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>奥様<rt>おくさま</rt></ruby>が<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いたら、<ruby>改<rt>あらた</rt></ruby>めて<ruby>課<rt>か</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さんにご<ruby>挨拶<rt>あいさつ</rt></ruby>させていただきます。<br>*(Em rõ. Khi nhà em ổn định, em sẽ chính thức chào ra mắt cả phòng ạ.)* |
| Sakurai | はい、お<ruby>祝<rt>いわ</rt></ruby>いの<ruby>食事会<rt>しょくじかい</rt></ruby>を<ruby>企画<rt>きかく</rt></ruby>しましょう。<br>*(Vâng, mình sẽ lên kế hoạch tiệc chúc mừng.)* |

---

## Tình huống 6 — Visa duyệt qua thư · 4/2027, hỏi lại cấp trên về thủ tục đón

| Vai | Lời thoại |
|---|---|
| Thái | (cầm thư) やった、<ruby>認定<rt>にんてい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いた！<br>*(Tuyệt, giấy chứng nhận đã đến!)* |
| Thái | （Sakurai に<ruby>声<rt>こえ</rt></ruby>をかける）<ruby>桜井<rt>さくらい</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>の<ruby>認定<rt>にんてい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>が<ruby>承認<rt>しょうにん</rt></ruby>されました。<br>*(Trưởng phòng Sakurai, giấy chứng nhận diện gia đình của em đã được duyệt rồi ạ.)* |
| Sakurai | おめでとうございます！これからの<ruby>手順<rt>てじゅん</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Chúc mừng anh! Anh đã biết các bước tiếp theo chưa?)* |
| Thái | すみません、「<ruby>手順<rt>てじゅん</rt></ruby>」というのは、これからやるべきことの<ruby>順番<rt>じゅんばん</rt></ruby>ということですか？<br>*(Xin lỗi anh, "tejun" tức là thứ tự các việc phải làm tiếp theo phải không ạ?)* |
| Sakurai | そうです。まず<ruby>原本<rt>げんぽん</rt></ruby>を<ruby>奥様<rt>おくさま</rt></ruby>に<ruby>送<rt>おく</rt></ruby>って、<ruby>奥様<rt>おくさま</rt></ruby>が<ruby>日本<rt>にほん</rt></ruby><ruby>大使館<rt>たいしかん</rt></ruby>でビザを<ruby>申請<rt>しんせい</rt></ruby>します。それからチケットを<ruby>取<rt>と</rt></ruby>って、<ruby>来日<rt>らいにち</rt></ruby>です。<br>*(Đúng. Trước tiên gửi bản gốc về cho vợ, vợ sẽ xin visa tại Đại sứ quán Nhật. Sau đó đặt vé, rồi sang Nhật.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>原本<rt>げんぽん</rt></ruby>は<ruby>国際<rt>こくさい</rt></ruby><ruby>郵便<rt>ゆうびん</rt></ruby>のEMSで<ruby>送<rt>おく</rt></ruby>れば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Em hiểu rồi. Bản gốc gửi qua bưu điện quốc tế EMS là được phải không ạ?)* |
| Sakurai | はい、<ruby>追跡<rt>ついせき</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>があるので<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(Vâng, có mã theo dõi nên yên tâm.)* |
| Thái | ありがとうございます。<ruby>今日<rt>きょう</rt></ruby><ruby>仕事<rt>しごと</rt></ruby><ruby>終<rt>お</rt></ruby>わったら<ruby>郵便局<rt>ゆうびんきょく</rt></ruby>へ<ruby>行<rt>い</rt></ruby>きます。<br>*(Em cảm ơn anh. Hết ca em sẽ ra bưu điện.)* |

---

## Tình huống 7 — Centrair · 5/2027 15:00, đón Mai ở sân bay

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, vẫy tay từ cửa ra) Anh ơi! |
| Thái | (tiếng Việt) Mai! Em đặt chân đến Nhật rồi! |
| Mai | (tiếng Việt) Vâng anh. Em hồi hộp ghê. |
| Linh-Anh | (tiếng Việt, đi cùng đón) Chị Mai ơi, em chào chị! |
| Mai | (tiếng Việt) Linh-Anh ơi! Cảm ơn em đi đón chị. |
| Thái | (tiếng Việt) Mình ra bến xe buýt sân bay. Khoảng một tiếng rưỡi về đến Anjo em ạ. |
| Mai | (tiếng Việt) Vâng. À, gặp người Nhật em chào sao hả anh? |
| Thái | (tiếng Việt) Đơn giản thôi: はじめまして、マイです。よろしくお願いします. Em đọc theo anh đi. |
| Mai | <ruby>初<rt>はじ</rt></ruby>めまして、マイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh, em là Mai. Mong được giúp đỡ.)* |
| Thái | (tiếng Việt) Giỏi quá! Phát âm chuẩn đấy. |
| Mai | (tiếng Việt) Em luyện ba tháng nay rồi anh. |

---

## Tình huống 8 — Căn hộ 1LDK Anjo · 17:00, Thái dạy Mai chào người Nhật cơ bản

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, mở cửa) Ôi! Nhà đẹp quá anh! Sạch tinh tươm! |
| Thái | (tiếng Việt) Năm chục mét vuông. Có bếp riêng, phòng ngủ, phòng khách. |
| Mai | (tiếng Việt) Tổ ấm của hai vợ chồng mình. |
| Thái | (tiếng Việt) Em ngồi xuống đây. Anh dạy em mấy câu chào hỏi cơ bản nhé. Ngày mai gặp hàng xóm là dùng được liền. |
| Mai | (tiếng Việt) Vâng anh. |
| Thái | Sáng gặp người Nhật mình nói: おはようございます。<br>*(Chào buổi sáng.)* |
| Mai | おはようございます。<br>*(Chào buổi sáng.)* |
| Thái | Trưa và chiều: こんにちは。<br>*(Xin chào.)* |
| Mai | こんにちは。<br>*(Xin chào.)* |
| Thái | Khi nhận đồ hay được giúp: すみません、ありがとうございます。<br>*(Xin lỗi đã phiền, cảm ơn anh/chị.)* |
| Mai | すみません、ありがとうございます。<br>*(Xin lỗi đã phiền, cảm ơn anh/chị.)* |
| Thái | Quan trọng nhất khi gặp hàng xóm lần đầu: <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>隣<rt>となり</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>してきましたグエンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Rất hân hạnh, em là Nguyễn, mới chuyển đến bên cạnh. Mong được giúp đỡ.)* |
| Mai | (tiếng Việt) Câu này dài quá anh. |
| Thái | (tiếng Việt) Mai mình tập từ từ. Anh viết ra giấy cho em đọc. |

---

## Tình huống 9 — Nhà Tanaka · 3 ngày sau Mai sang, giới thiệu vợ với cấp trên

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>奥様<rt>おくさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>招<rt>まね</rt></ruby>きいただきありがとうございます。<br>*(Bác Tanaka, chị nhà, hôm nay được mời đến, em xin cảm ơn ạ.)* |
| Tanaka | いえいえ、こちらこそ。マイさん、ようこそ<ruby>安城<rt>あんじょう</rt></ruby>へ！<br>*(Không có gì, tôi mới phải cảm ơn. Chị Mai, hoan nghênh đến Anjo!)* |
| Mai | <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>家内<rt>かない</rt></ruby>のマイと<ruby>申<rt>もう</rt></ruby>します。<ruby>主人<rt>しゅじん</rt></ruby>がいつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Rất hân hạnh, em là Mai, vợ của anh ấy. Chồng em lúc nào cũng được anh chị giúp đỡ.)* |
| Thái | （マイの<ruby>横<rt>よこ</rt></ruby>で、<ruby>小声<rt>こごえ</rt></ruby>で）<ruby>上手<rt>じょうず</rt></ruby>に<ruby>言<rt>い</rt></ruby>えたね。<br>*(Bên cạnh Mai, nói nhỏ. Em nói giỏi đấy.)* |
| Vợ Tanaka | マイさん、<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>ですね！フォーを<ruby>用意<rt>ようい</rt></ruby>しましたよ。<br>*(Mai-san, tiếng Nhật giỏi quá! Tôi nấu phở rồi đấy.)* |
| Mai | わあ、ありがとうございます。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Ôi, cảm ơn chị ạ. Em vui quá.)* |
| Tanaka | タイさんが<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>にセントレアに<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>のことを<ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>真面目<rt>まじめ</rt></ruby>な<ruby>青年<rt>せいねん</rt></ruby>でしたよ。<br>*(Tôi vẫn nhớ hồi 5 năm trước anh Thái đến Centrair. Là một thanh niên rất chăm chỉ.)* |
| Mai | (tiếng Việt nhỏ với Thái) Bác nói gì thế anh? |
| Thái | (tiếng Việt nhỏ) Bác bảo lúc anh sang Nhật lần đầu, anh là thanh niên nghiêm túc. |
| Mai | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>主人<rt>しゅじん</rt></ruby>をこれからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Em cảm ơn anh chị. Từ nay xin anh chị tiếp tục giúp đỡ chồng em ạ.)* |
| Tanaka | こちらこそ、<ruby>末永<rt>すえなが</rt></ruby>くお<ruby>幸<rt>しあわ</rt></ruby>せに。<br>*(Tôi mới phải nhờ. Chúc hai cháu trăm năm hạnh phúc.)* |

---

## Tình huống 10 — Căn hộ Anjo · 23:00, hai vợ chồng gọi điện về VN

> Scene tiếng Việt — gọi điện đồng hương / gia đình ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, video call) Mẹ ơi, con đến Nhật rồi. |
| Mẹ Mai | (tiếng Việt) Mai! Mẹ với bố lo cả mấy hôm nay. Đi đường có mệt không con? |
| Mai | (tiếng Việt) Con không sao mẹ. Anh Thái ra sân bay đón. Hôm nay con vừa sang nhà bác Tanaka ăn cơm. Bác gái nấu phở Việt. |
| Mẹ Mai | (tiếng Việt) Bên đó có ai biết tiếng Việt không con? |
| Mai | (tiếng Việt) Không mẹ ạ. Hôm nay con phải nói tiếng Nhật cả buổi. Anh Thái dạy con câu はじめまして với よろしくお願いします. Con nói được. |
| Thái | (tiếng Việt, ghé vào) Mẹ ơi, Mai con nói chuẩn lắm. Con tự hào lắm mẹ ạ. |
| Mẹ Mai | (tiếng Việt) Hai đứa giúp đỡ nhau nhé. Mai phải đi học tiếng Nhật ngay đi con. |
| Mai | (tiếng Việt) Vâng mẹ. Tuần sau con đăng ký lớp ở trung tâm hỗ trợ người nước ngoài thành phố Anjo. Anh Thái nói chỗ đó dạy miễn phí. |
| Thái | (tiếng Việt) Còn căn hộ thì 1LDK năm chục mét vuông, đặt cọc 敷金 một tháng, tiền lễ 礼金 không phải nộp, may được chủ nhà tốt. |
| Mẹ Mai | (tiếng Việt) Ừ. Hai đứa cố gắng. Mẹ đi ngủ đây. |
| Mai | (tiếng Việt) Vâng mẹ, mẹ ngủ ngon. |

---

## Tình huống 11 — Phòng ngủ căn hộ · 23:30, Thái ghi nhật ký bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>日記<rt>にっき</rt></ruby>に<ruby>書<rt>か</rt></ruby>く）<ruby>2027<rt>にせんにじゅうなな</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>。マイが<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>た。<ruby>6<rt>ろく</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>遠距離<rt>えんきょり</rt></ruby><ruby>恋愛<rt>れんあい</rt></ruby>がやっと<ruby>終<rt>お</rt></ruby>わった。<br>*(Viết vào nhật ký. Tháng 5/2027. Mai đã sang Nhật. 6 năm yêu xa cuối cùng đã khép lại.)* |
| Mai | (tiếng Việt, ngó vào) Anh viết gì đấy? |
| Thái | (tiếng Việt) Anh ghi nhật ký bằng tiếng Nhật. Thói quen từ ngày đầu sang đây. |
| Mai | (tiếng Việt) Mai mốt anh dạy em viết với nhé. |
| Thái | (tiếng Việt) Ừ. Em ngủ đi. Mai dậy sớm mình đi đăng ký 住民票 với 国民健康保険 ở 市役所. |
| Mai | (tiếng Việt) Vâng anh. Chúc anh ngủ ngon. おやすみなさい。<br>*(Vâng anh. Chúc anh ngủ ngon.)* |
| Thái | おやすみなさい、マイ。<br>*(Ngủ ngon, Mai.)* |

---

## Đọng lại chương 11

Chương này Thái không còn là người học tiếng Nhật một mình — anh trở thành **cầu nối ngôn ngữ** cho Mai. Học được các mẫu hội thoại cốt lõi quanh sự kiện kết hôn quốc tế: **đáp lời chúc cấp trên** (ご結婚お祝い申し上げます → ありがとうございます・改めてご挨拶させてください), **nộp hồ sơ 認定証明書 ở 入管** (家族滞在の在留資格認定証明書の交付申請・扶養能力), **thuê căn hộ 1LDK qua 不動産屋** (敷金・礼金・保証会社・連帯保証人), **hỏi lại lễ phép thuật ngữ hợp đồng** (〜というのは何ですか・〜ということですね), **báo cáo và xin nghỉ phép đón vợ với cấp trên** (報告・有給を取る), và **giới thiệu vợ với người Nhật** (家内のマイと申します・主人がいつもお世話になっております). Đồng thời dạy Mai bộ chào hỏi cơ bản (おはようございます・こんにちは・はじめまして・よろしくお願いします). Sáu năm yêu xa khép lại — căn 1LDK ở Anjo là tổ ấm đầu tiên, và **報連相** vẫn là nguyên tắc Thái truyền lại cho vợ trong ngày đầu hoà nhập.

> Từ vựng & mẫu câu chương này: 結婚・家族滞在・在留資格認定証明書・入管・申請・扶養能力・年収・住民票・在職証明書・源泉徴収票・1LDK・不動産屋・家賃・敷金・礼金・保証会社・連帯保証人・物件・築5年・引っ越し・有給・大使館・EMS・原本・末永くお幸せに・家内・主人・〜と申します・〜というのは・改めてご挨拶させてください・お世話になっております

## Bí quyết chương

- **Cao trào sách 18**: Mai sang Nhật, khép vòng yêu xa 6 năm.
- **Pattern mới**: Thái không chỉ học, mà còn **dạy lại** — vai sempai ngôn ngữ.
- **Bonenkai cuối loạt sách**: sắp tới ở các chương sau.', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (818000012, 800000018, NULL, 'markdown_book', 'T12. Bonenkai khép 5 năm và chuẩn bị thăng chức (5年閉幕・課長候補)', '# Sách kỹ sư khuôn đúc · T12. Bonenkai khép 5 năm và chuẩn bị thăng chức (5年閉幕・課長候補)

> **Mục tiêu nhân vật:** Thái (28 tuổi, 設計係長 năm thứ 5) tổng kết hành trình 60 tháng tại Anjo qua tiệc bonenkai cuối hợp đồng. Học các mẫu hội thoại tiếng Nhật chốt chặng nghề nghiệp: phát biểu cảm ơn cấp trên - đồng nghiệp - đàn em (5つの感謝・〜のような存在), chào hỏi qua video call người đã chuyển công ty (LINE・5周年おめでとう), nói về lộ trình thăng chức và kế hoạch vĩnh trú (課長候補・永住2032), hỏi lại lễ phép khi cấp trên trao lời quan trọng (〜というのは?), nhận quà có ý nghĩa nghi thức (設計手帳5冊目), và quan sát cách bác 嘱託 chuyển giao thế hệ.

---

## Bối cảnh

Cuối tháng 3 năm 2027. Tròn 60 tháng kể từ khi Thái đặt chân tới Centrair tháng 5/2022. Thái 28 tuổi, đã là **設計係長** một năm, mới cưới Mai và sống tại căn 1LDK ở Anjo, sắp được đưa vào diện ứng viên 課長. Hôm nay là tiệc 忘年会 cuối hợp đồng TTS gốc tại izakaya quen — đông đủ Tanaka (giờ chỉ còn vai 嘱託), 工場長 Kawakami, Sakurai, các kōhai Long-Hùng-Adi-Yamamoto, chị Linh + Linh-Anh, Mai dự lần đầu, và Putra-Marco-Suzuki qua LINE. Chương này tập trung các mẫu câu chốt chặng nghề: phát biểu tổng kết 5 năm, cảm ơn từng người theo vai trò, hỏi đáp về sổ thiết kế truyền lại, và độc thoại sáng đầu năm thứ 6 khi cài cúc đồng phục mới có 課長候補 badge vàng.

---

## Tình huống 1 — Căn hộ 1LDK Anjo · 6:30, độc thoại sáng cuối hợp đồng (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — Thái và Mai mở ngày, ôn lại quãng đường.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhìn lịch điện thoại) Ngày 30 tháng 3 năm 2027. Đúng sáu mươi tháng kể từ khi anh đặt chân xuống Centrair. |
| Mai | (tiếng Việt, vừa ngủ dậy, kéo rèm cửa) Hôm nay anh dậy sớm thế. Mới hơn sáu giờ thôi mà. |
| Thái | (tiếng Việt) Hôm nay là bonenkai khép lại năm thứ năm. Đúng dấu mốc kết thúc hợp đồng kỹ thuật nhân văn quốc tế đầu tiên anh ký năm 2022. |
| Mai | (tiếng Việt) Em đi cùng anh nhé? Anh kể về bác Tanaka, anh Kawakami, anh Sakurai nhiều, nhưng em chưa gặp ngoài đời lần nào. |
| Thái | (tiếng Việt) Ừ, em đi với anh. Mọi người ai cũng muốn gặp em. Bác Tanaka còn nhắn riêng cho anh hôm qua, dặn nhất định phải đưa em đến. |
| Mai | (tiếng Việt) Vậy em mặc áo dài. Lần đầu ra mắt cả nhà thứ hai của anh ở Nhật, em muốn chỉn chu. |
| Thái | (tiếng Việt) Đẹp lắm. Anh cũng sẽ mặc đồng phục mới — bộ vừa nhận tuần trước. |

---

## Tình huống 2 — Phòng ngủ căn hộ · 7:00, chọn đồng phục mới có 課長候補 badge (scene tiếng Việt)

> Scene tiếng Việt — Mai hỏi Thái về ý nghĩa huy hiệu vàng.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhìn hai bộ đồng phục treo trên móc) Đây là đồng phục 係長 năm thứ nhất — huy hiệu bạc. Còn đây là đồng phục năm thứ hai, anh mới nhận — huy hiệu vàng. |
| Mai | (tiếng Việt) Hai cái khác nhau ở mỗi cái huy hiệu thôi à anh? |
| Thái | (tiếng Việt) Đúng rồi. Tháng 4/2027 anh được đưa vào diện cân nhắc thăng chức — gọi là **課長候補** (kachō-kouho), tức ứng viên trưởng phòng. Huy hiệu vàng là dấu hiệu cho người trong diện đó. |
| Mai | (tiếng Việt) Anh giỏi quá. Năm năm từ N4 lên đến đây. |
| Thái | (tiếng Việt) Còn phải cố tiếp em. Năm thứ sáu anh chuẩn bị hồ sơ thăng chức, năm thứ bảy nếu được lên 課長 thì lương tăng đủ để mình tính chuyện sinh con. Anh không cần xin visa SSW2 nữa — visa kỹ sư - tri thức nhân văn - quốc tế của anh đã gia hạn 5 năm rồi. Kế hoạch nộp vĩnh trú là năm 2032. |
| Mai | (tiếng Việt) Em hiểu rồi. Em sẽ cố học tiếng Nhật để đỡ anh. |

---

## Tình huống 3 — Đến izakaya quen ở Anjo · 18:00, chào hỏi cả bàn bonenkai

| Vai | Lời thoại |
|---|---|
| Tanaka | みんな、お<ruby>疲<rt>つか</rt></ruby>れさま！<ruby>今日<rt>きょう</rt></ruby>は<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>忘年会<rt>ぼうねんかい</rt></ruby>です。<br>*(Mọi người vất vả rồi! Hôm nay là tiệc bonenkai đặc biệt.)* |
| Mọi người | お<ruby>疲<rt>つか</rt></ruby>れさまです！<br>*(Vất vả rồi ạ!)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つの<ruby>祝<rt>いわ</rt></ruby>い<ruby>事<rt>ごと</rt></ruby>があります。タイ<ruby>係長<rt>かかりちょう</rt></ruby>の<ruby>来日<rt>らいにち</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>周年<rt>しゅうねん</rt></ruby>と、<ruby>奥様<rt>おくさま</rt></ruby>のマイさんの<ruby>来日<rt>らいにち</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>いましょう。<br>*(Hôm nay có hai sự kiện vui. Mừng tròn 5 năm Thái-kakarichō tới Nhật, và mừng chị Mai vợ Thái lần đầu tới Nhật.)* |
| Mọi người | （<ruby>拍手<rt>はくしゅ</rt></ruby><ruby>大<rt>おお</rt></ruby>きく）おめでとうございます！<br>*(Vỗ tay rần rần. Chúc mừng ạ!)* |
| Mai | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はじめまして。<ruby>妻<rt>つま</rt></ruby>のマイと<ruby>申<rt>もう</rt></ruby>します。<ruby>夫<rt>おっと</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Cúi đầu thật sâu. Rất hân hạnh. Em là Mai, vợ của Thái. Cảm ơn mọi người đã chăm sóc nhà em.)* |
| Sakurai | マイさん、ようこそ<ruby>日本<rt>にほん</rt></ruby>へ！タイ<ruby>係長<rt>かかりちょう</rt></ruby>がいつも<ruby>奥様<rt>おくさま</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしていましたよ。<br>*(Chị Mai, hoan nghênh đến Nhật! Thái-kakarichō lúc nào cũng kể chuyện về vợ đấy.)* |
| Kawakami | <ruby>奥様<rt>おくさま</rt></ruby>に<ruby>会<rt>あ</rt></ruby>えて<ruby>嬉<rt>うれ</rt></ruby>しいです。タイさんは<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>戦力<rt>せんりょく</rt></ruby>です。<br>*(Rất vui được gặp chị. Thái là lực lượng quan trọng của công ty.)* |
| Thái | <ruby>皆<rt>みな</rt></ruby>さん、ありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn cả nhà. Hôm nay mong mọi người chiếu cố.)* |

---

## Tình huống 4 — Bàn izakaya · 18:30, bộ ba Linh-chị + Linh-Anh + Mai gặp nhau (scene tiếng Việt)

> Scene tiếng Việt — bốn anh chị em Việt ở Anjo/Nagoya hợp đủ mặt.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Mai em! Cuối cùng cả nhà Việt mình cũng đông đủ. Chị đợi ngày này lâu lắm rồi. |
| Mai | (tiếng Việt) Em chào chị Linh. Em cảm ơn chị suốt thời gian qua đã kèm anh Thái với em Linh-Anh ôn N3, N2. Anh nhà em hay nhắc chị lắm. |
| Linh-Anh | (tiếng Việt) Chị Mai sang là bộ tứ anh chị em Việt Nam ở Nagoya và Anjo đầy đủ rồi. Em là Linh-Anh, em họ chị Linh, đang học cao học ở ĐH Nagoya. |
| Linh | (tiếng Việt) Mai biết không, kế hoạch của bốn chị em là năm 2032 cùng nhau nộp hồ sơ **永住** — visa vĩnh trú. Anh Thái với chị đủ điều kiện trước, em Linh-Anh với Mai nộp sau hai năm. |
| Mai | (tiếng Việt) Vâng chị, anh Thái có kể. Em cũng đặt mục tiêu N2 trong hai năm để đủ điều kiện. |
| Linh | (tiếng Việt) Cứ từ từ. Năm năm anh Thái đi từ N4 lên N2 + 設計係長, em cũng làm được. |

---

## Tình huống 5 — Bàn izakaya · 19:00, video LINE với Putra-Marco-Suzuki (đồng môn nước ngoài)

| Vai | Lời thoại |
|---|---|
| Putra | （LINEビデオ、ジャカルタから）タイ！<ruby>5<rt>ご</rt></ruby><ruby>周年<rt>しゅうねん</rt></ruby>おめでとう！マイさん、はじめまして！<br>*(Video LINE từ Jakarta. Thái! Chúc mừng 5 năm! Chị Mai, rất hân hạnh!)* |
| Marco | （LINE、マニラから）タイ<ruby>係長<rt>かかりちょう</rt></ruby>、お<ruby>祝<rt>いわ</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます！<br>*(LINE từ Manila. Thái-kakarichō, xin chúc mừng!)* |
| Suzuki | （LINE、トヨタ<ruby>系列<rt>けいれつ</rt></ruby>から）<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>か。<ruby>早<rt>はや</rt></ruby>いな！<ruby>俺<rt>おれ</rt></ruby>も<ruby>嬉<rt>うれ</rt></ruby>しい！<br>*(LINE từ Toyota tier-1. Năm năm rồi à. Nhanh thật! Tôi cũng mừng!)* |
| Thái | （<ruby>涙<rt>なみだ</rt></ruby>ぐむ）みんな、わざわざありがとう。<br>*(Rưng rưng. Mọi người cảm ơn nhé.)* |
| Putra | ジャカルタの<ruby>会社<rt>かいしゃ</rt></ruby>、もう<ruby>30<rt>さんじゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>になったよ！<ruby>来年<rt>らいねん</rt></ruby>タイの<ruby>会社<rt>かいしゃ</rt></ruby>と<ruby>取引<rt>とりひき</rt></ruby>したい。<br>*(Công ty ở Jakarta đã 30 người rồi! Sang năm muốn ký giao dịch với công ty Thái.)* |
| Thái | <ruby>取引<rt>とりひき</rt></ruby>...というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんな<ruby>仕事<rt>しごと</rt></ruby>ですか？<br>*(Giao dịch... nghĩa là cụ thể loại công việc gì ạ?)* |
| Putra | こちらの<ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>を<ruby>御社<rt>おんしゃ</rt></ruby>に<ruby>外注<rt>がいちゅう</rt></ruby>したい。<ruby>東南<rt>とうなん</rt></ruby>アジアの<ruby>窓口<rt>まどぐち</rt></ruby>になってくれない？<br>*(Tôi muốn đặt thiết kế khuôn cho phía công ty Thái. Cậu làm đầu mối Đông Nam Á giúp tôi nhé?)* |
| Marco | マニラ<ruby>支店<rt>してん</rt></ruby>も<ruby>10<rt>じゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>になった。タイ、<ruby>俺<rt>おれ</rt></ruby>たちは<ruby>同<rt>おな</rt></ruby>じネットワークで<ruby>動<rt>うご</rt></ruby>こう。<br>*(Chi nhánh Manila cũng được 10 người. Thái, mình cùng làm trên một mạng lưới nhé.)* |
| Suzuki | <ruby>俺<rt>おれ</rt></ruby>もそろそろ<ruby>独立<rt>どくりつ</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>計画<rt>けいかく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。タイ、<ruby>3<rt>さん</rt></ruby><ruby>年後<rt>ねんご</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>何<rt>なに</rt></ruby>かやろう。<br>*(Tôi cũng đang lên kế hoạch ra mở công ty riêng. Thái, ba năm nữa làm gì cùng nhau nhé.)* |
| Thái | みんな<ruby>道<rt>みち</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>うけど、ちゃんと<ruby>繋<rt>つな</rt></ruby>がっていますね。<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Mọi người tuy đường ai nấy đi, nhưng vẫn nối liền. Cảm ơn cả nhà thật lòng.)* |

---

## Tình huống 6 — Đứng giữa bàn izakaya · 20:00, Thái phát biểu tổng kết 5 năm

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>一言<rt>ひとこと</rt></ruby><ruby>挨拶<rt>あいさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thái-kun, xin một lời phát biểu nhé.)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる、<ruby>深呼吸<rt>しんこきゅう</rt></ruby>）<ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>23<rt>にじゅうさん</rt></ruby><ruby>歳<rt>さい</rt></ruby>でN4でした。<ruby>磨<rt>みが</rt></ruby>きとヤスリから<ruby>始<rt>はじ</rt></ruby>めました。<br>*(Đứng lên, hít sâu. Năm năm trước, tôi 23 tuổi, mới N4. Tôi bắt đầu từ việc mài và dũa.)* |
| Thái | <ruby>今<rt>いま</rt></ruby>は<ruby>28<rt>にじゅうはち</rt></ruby><ruby>歳<rt>さい</rt></ruby>、N2、3D CAD <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>設計係長<rt>せっけいかかりちょう</rt></ruby>になりました。<br>*(Bây giờ tôi 28 tuổi, N2, CAD 3D bậc 1, chế tạo khuôn bậc 2, gia công cơ khí bậc 2, đã là kakarichō thiết kế.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>5<rt>いつ</rt></ruby>つの<ruby>感謝<rt>かんしゃ</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げたいです。<br>*(Hôm nay tôi xin gửi năm lời cảm ơn.)* |
| Thái | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さん — <ruby>父<rt>ちち</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>です。<ruby>空港<rt>くうこう</rt></ruby>で<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>会<rt>あ</rt></ruby>った<ruby>日<rt>ひ</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、ずっと<ruby>見守<rt>みまも</rt></ruby>ってくださいました。<br>*(Thứ nhất, bác Tanaka — như người cha. Từ ngày đầu gặp ở sân bay suốt 5 năm, bác luôn dõi theo tôi.)* |
| Thái | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>川上<rt>かわかみ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> — <ruby>師匠<rt>ししょう</rt></ruby>です。<ruby>設計<rt>せっけい</rt></ruby>の<ruby>厳<rt>きび</rt></ruby>しさを<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Thứ hai, trưởng nhà máy Kawakami — bậc thầy. Anh đã dạy tôi sự nghiêm khắc của nghề thiết kế.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> — <ruby>兄<rt>あに</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>えてくれました。<br>*(Thứ ba, đàn anh Sakurai — như anh ruột. Đã đỡ tôi ở hiện trường mỗi ngày.)* |
| Thái | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、プトラとマルコ、<ruby>鈴木<rt>すずき</rt></ruby>さん、リン<ruby>姉<rt>ねえ</rt></ruby>さん、リン-アン — <ruby>同期<rt>どうき</rt></ruby>であり<ruby>家族<rt>かぞく</rt></ruby>です。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>支<rt>ささ</rt></ruby>え<ruby>合<rt>あ</rt></ruby>ってきました。<br>*(Thứ tư, Putra và Marco, anh Suzuki, chị Linh, em Linh-Anh — đồng lứa, cũng là người nhà. Năm năm tựa vai nhau.)* |
| Thái | <ruby>五<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ロン、フン、アディ、<ruby>山本<rt>やまもと</rt></ruby> — <ruby>大切<rt>たいせつ</rt></ruby>な<ruby>後輩<rt>こうはい</rt></ruby>たちです。<ruby>次<rt>つぎ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がしっかり<ruby>育<rt>そだ</rt></ruby>てる<ruby>番<rt>ばん</rt></ruby>です。<br>*(Thứ năm, Long, Hùng, Adi, Yamamoto — những kōhai quý giá. Đến lượt tôi tận tâm dìu dắt.)* |
| Thái | <ruby>最後<rt>さいご</rt></ruby>に、<ruby>妻<rt>つま</rt></ruby>のマイ。<ruby>6<rt>ろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>待<rt>ま</rt></ruby>っていてくれました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Cuối cùng, vợ tôi — Mai. Đã chờ tôi suốt sáu năm. Cảm ơn em thật lòng.)* |
| Thái | <ruby>今後<rt>こんご</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます: <ruby>来年<rt>らいねん</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、その<ruby>先<rt>さき</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、そして<ruby>2032<rt>にせんさんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>永住<rt>えいじゅう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>です。<br>*(Xin trình bày mục tiêu sắp tới: sang năm lên kachō, sau đó là trưởng nhà máy, và năm 2032 nộp đơn vĩnh trú.)* |
| Thái | （<ruby>深<rt>ふか</rt></ruby>く<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました！<br>*(Cúi đầu thật sâu. Năm năm qua, tôi xin chân thành cảm ơn!)* |
| Mọi người | （<ruby>拍手<rt>はくしゅ</rt></ruby>が<ruby>長<rt>なが</rt></ruby>く<ruby>大<rt>おお</rt></ruby>きく<ruby>続<rt>つづ</rt></ruby>く）<br>*(Tràng vỗ tay dài và lớn.)* |

---

## Tình huống 7 — Bàn izakaya · 21:00, bác Tanaka trao cuốn sổ thiết kế thứ 5 (quan sát đàn anh trao thế hệ)

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、これは<ruby>5<rt>ご</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>の<ruby>設計手帳<rt>せっけいてちょう</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>からの<ruby>最後<rt>さいご</rt></ruby>の<ruby>贈<rt>おく</rt></ruby>り<ruby>物<rt>もの</rt></ruby>です。<br>*(Thái-kun, đây là cuốn sổ thiết kế thứ năm. Là món quà cuối cùng của tôi.)* |
| Thái | え！？<ruby>5<rt>ご</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>...というのは、<ruby>過去<rt>かこ</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>冊<rt>さつ</rt></ruby>もあったということですか？<br>*(Ơ!? Cuốn thứ năm... nghĩa là trước đây đã có bốn cuốn rồi ạ?)* |
| Tanaka | そうだ。<ruby>1<rt>いっ</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>はTTS<ruby>研修期間<rt>けんしゅうきかん</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まり、<ruby>君<rt>きみ</rt></ruby>が<ruby>磨<rt>みが</rt></ruby>きとヤスリをしていた<ruby>頃<rt>ころ</rt></ruby>。<br>*(Đúng vậy. Cuốn một là khi bắt đầu thời kỳ tập huấn TTS, lúc cậu còn mài dũa.)* |
| Tanaka | <ruby>2<rt>に</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>はマシニングセンタ<ruby>担当<rt>たんとう</rt></ruby>の<ruby>年<rt>とし</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>は<ruby>設計<rt>せっけい</rt></ruby>アシスタントの<ruby>年<rt>とし</rt></ruby>。<br>*(Cuốn hai là năm cậu phụ trách MC. Cuốn ba là năm phụ thiết kế.)* |
| Tanaka | <ruby>4<rt>よん</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>は<ruby>設計者<rt>せっけいしゃ</rt></ruby>として<ruby>初<rt>はじ</rt></ruby>めて<ruby>主担当<rt>しゅたんとう</rt></ruby>になった<ruby>年<rt>とし</rt></ruby>。そして<ruby>5<rt>ご</rt></ruby><ruby>冊目<rt>さつめ</rt></ruby>は<ruby>係長<rt>かかりちょう</rt></ruby>、EV<ruby>案件<rt>あんけん</rt></ruby>、<ruby>結婚<rt>けっこん</rt></ruby>の<ruby>年<rt>とし</rt></ruby>です。<br>*(Cuốn bốn là năm lần đầu cậu chủ trì thiết kế. Còn cuốn năm này là năm cậu lên kakarichō, làm dự án EV, và lập gia đình.)* |
| Thái | <ruby>毎年<rt>まいとし</rt></ruby><ruby>用意<rt>ようい</rt></ruby>してくださっていたんですね...<ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Mỗi năm bác đều chuẩn bị một cuốn... cháu không biết.)* |
| Tanaka | <ruby>俺<rt>おれ</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby>、<ruby>嘱託<rt>しょくたく</rt></ruby>も<ruby>引退<rt>いんたい</rt></ruby>する。これが<ruby>最後<rt>さいご</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>冊<rt>さつ</rt></ruby>になる。<br>*(Sang năm tôi cũng nghỉ hẳn vai trò shokutaku. Đây là cuốn cuối cùng.)* |
| Thái | （<ruby>涙<rt>なみだ</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>く）<ruby>田中<rt>たなか</rt></ruby>さん...<br>*(Lau nước mắt. Bác Tanaka...)* |
| Tanaka | <ruby>次<rt>つぎ</rt></ruby>は<ruby>君<rt>きみ</rt></ruby>が<ruby>後輩<rt>こうはい</rt></ruby>にこの<ruby>習慣<rt>しゅうかん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けてくれ。ロン<ruby>君<rt>くん</rt></ruby>、フン<ruby>君<rt>くん</rt></ruby>、アディ<ruby>君<rt>くん</rt></ruby>、<ruby>山本<rt>やまもと</rt></ruby><ruby>君<rt>くん</rt></ruby>に。<br>*(Tới lượt cậu nối tiếp truyền thống này cho kōhai. Cho Long, Hùng, Adi, Yamamoto.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>続<rt>つづ</rt></ruby>けます。<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Vâng, nhất định cháu sẽ tiếp tục. Cháu xin hứa.)* |

---

## Tình huống 8 — Bàn izakaya · 22:00, hỏi lại Kawakami về lộ trình thăng chức (hỏi lại + quan sát cấp trên)

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>係長<rt>かかりちょう</rt></ruby>、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からの<ruby>課長<rt>かちょう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>だぞ。<ruby>覚悟<rt>かくご</rt></ruby>はいいか？<br>*(Thái-kakarichō, khoá đào tạo ứng viên kachō từ tháng 4 sẽ vất vả lắm đấy. Em đã chuẩn bị tinh thần chưa?)* |
| Thái | はい、<ruby>覚悟<rt>かくご</rt></ruby>しています。ただ、<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>内容<rt>ないよう</rt></ruby>がまだ<ruby>分<rt>わ</rt></ruby>かりません。<ruby>研修内容<rt>けんしゅうないよう</rt></ruby>...というのは<ruby>主<rt>おも</rt></ruby>にどんなことですか？<br>*(Vâng, em đã chuẩn bị. Nhưng nội dung cụ thể em chưa rõ. Nội dung đào tạo... chủ yếu là những gì ạ?)* |
| Kawakami | <ruby>三<rt>みっ</rt></ruby>つの<ruby>柱<rt>はしら</rt></ruby>がある。<ruby>一<rt>いち</rt></ruby>、<ruby>原価<rt>げんか</rt></ruby><ruby>計算<rt>けいさん</rt></ruby>と<ruby>見積<rt>みつもり</rt></ruby><ruby>作成<rt>さくせい</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>部下<rt>ぶか</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>と<ruby>1on1<rt>ワン　オン　ワン</rt></ruby>の<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、<ruby>顧客<rt>こきゃく</rt></ruby><ruby>折衝<rt>せっしょう</rt></ruby>です。<br>*(Có ba trụ cột. Một, tính giá thành và lập báo giá. Hai, đánh giá cấp dưới và cách triển khai 1on1. Ba, đàm phán khách hàng.)* |
| Thái | <ruby>顧客<rt>こきゃく</rt></ruby><ruby>折衝<rt>せっしょう</rt></ruby>...というのは、<ruby>営業<rt>えいぎょう</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Đàm phán khách hàng... khác với bộ phận kinh doanh ạ?)* |
| Kawakami | <ruby>違<rt>ちが</rt></ruby>います。<ruby>営業<rt>えいぎょう</rt></ruby>は<ruby>受注<rt>じゅちゅう</rt></ruby>まで。<ruby>折衝<rt>せっしょう</rt></ruby>は<ruby>受注後<rt>じゅちゅうご</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby> — <ruby>納期<rt>のうき</rt></ruby>、<ruby>仕様変更<rt>しようへんこう</rt></ruby>、トラブル<ruby>対応<rt>たいおう</rt></ruby>です。<ruby>課長<rt>かちょう</rt></ruby>はここを<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Khác. Kinh doanh lo đến lúc nhận đơn. Đàm phán là điều chỉnh kỹ thuật sau khi nhận đơn — thời hạn giao, đổi thông số, xử lý sự cố. Kachō phụ trách phần này.)* |
| Thái | なるほど、<ruby>受注後<rt>じゅちゅうご</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>ということですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi, là điều chỉnh kỹ thuật sau khi nhận đơn ạ. Em đã rõ.)* |
| Kawakami | プトラ<ruby>君<rt>くん</rt></ruby>のジャカルタ<ruby>会社<rt>かいしゃ</rt></ruby>との<ruby>取引<rt>とりひき</rt></ruby>、<ruby>窓口<rt>まどぐち</rt></ruby>をタイ<ruby>係長<rt>かかりちょう</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いしたい。<ruby>研修<rt>けんしゅう</rt></ruby>の<ruby>実践<rt>じっせん</rt></ruby><ruby>案件<rt>あんけん</rt></ruby>になる。<br>*(Vụ giao dịch với công ty Putra ở Jakarta, tôi muốn nhờ Thái-kakarichō làm đầu mối. Sẽ thành dự án thực hành cho khoá đào tạo.)* |
| Thái | はい、<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けします。<br>*(Vâng, em xin trân trọng nhận.)* |

---

## Tình huống 9 — Bàn izakaya · 22:30, kōhai Long-Hùng-Adi-Yamamoto chúc mừng (quan sát đàn em nhận đèn)

| Vai | Lời thoại |
|---|---|
| Long | タイ<ruby>係長<rt>かかりちょう</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>周年<rt>しゅうねん</rt></ruby>おめでとうございます！<br>*(Anh Thái-kakarichō, chúc mừng 5 năm!)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>たちも<ruby>係長<rt>かかりちょう</rt></ruby>の<ruby>背中<rt>せなか</rt></ruby>を<ruby>追<rt>お</rt></ruby>って<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Bọn em cũng sẽ noi gương anh mà cố gắng.)* |
| Adi | <ruby>係長<rt>かかりちょう</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>から「<ruby>設計手帳<rt>せっけいてちょう</rt></ruby>」の<ruby>習慣<rt>しゅうかん</rt></ruby>を<ruby>俺<rt>おれ</rt></ruby>たちにも<ruby>続<rt>つづ</rt></ruby>けてくれますか？<br>*(Anh kakarichō, sang năm anh tiếp tục truyền thống "sổ thiết kế" cho bọn em chứ ạ?)* |
| Thái | もちろんです。<ruby>田中<rt>たなか</rt></ruby>さんと<ruby>同<rt>おな</rt></ruby>じやり<ruby>方<rt>かた</rt></ruby>で、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>冊<rt>さつ</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>たちに<ruby>渡<rt>わた</rt></ruby>します。ただし<ruby>条件<rt>じょうけん</rt></ruby>があります。<br>*(Tất nhiên rồi. Tôi sẽ làm y như bác Tanaka, mỗi năm một cuốn trao các em. Nhưng có một điều kiện.)* |
| Yamamoto | <ruby>条件<rt>じょうけん</rt></ruby>...というのは？<br>*(Điều kiện... là gì ạ?)* |
| Thái | <ruby>毎日<rt>まいにち</rt></ruby><ruby>手帳<rt>てちょう</rt></ruby>に<ruby>3<rt>みっ</rt></ruby>つ<ruby>書<rt>か</rt></ruby>くこと: <ruby>今日<rt>きょう</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>学<rt>まな</rt></ruby>び、<ruby>明日<rt>あした</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>。これは<ruby>田中<rt>たなか</rt></ruby>さんから<ruby>私<rt>わたし</rt></ruby>が<ruby>教<rt>おそ</rt></ruby>わったやり<ruby>方<rt>かた</rt></ruby>です。<br>*(Mỗi ngày phải ghi ba điều vào sổ: thất bại hôm nay, bài học hôm nay, mục tiêu ngày mai. Đây là cách bác Tanaka đã dạy tôi.)* |
| Long | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, bọn em nhất định giữ.)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>たちが<ruby>係長<rt>かかりちょう</rt></ruby>になった<ruby>時<rt>とき</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じことを<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えてください。<ruby>習慣<rt>しゅうかん</rt></ruby>は<ruby>世代<rt>せだい</rt></ruby>を<ruby>越<rt>こ</rt></ruby>えるものです。<br>*(Năm năm sau, khi các em lên kakarichō, hãy truyền lại y như vậy cho kōhai của mình. Truyền thống là thứ vượt qua các thế hệ.)* |

---

## Tình huống 10 — Trên xe taxi về nhà · 23:30, Mai và Thái nhìn lại buổi tiệc (scene tiếng Việt)

> Scene tiếng Việt — vợ chồng ôn lại trên đường về.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh, mọi người ai cũng tốt với mình ghê. Bác Tanaka cứ nắm tay em mãi không thả. |
| Thái | (tiếng Việt) Bác coi anh như con trai. Cuốn sổ bác tặng — bác chuẩn bị từ ngày đầu anh sang, suốt năm năm. Anh không hề biết. |
| Mai | (tiếng Việt) Cái câu **5つの感謝** anh nói trên bàn, em nghe mà rưng rưng. Nhất là khúc nói về em — chờ sáu năm. |
| Thái | (tiếng Việt) Sáu năm. Đúng là sáu năm em ơi. Từ 2021 anh ngỏ lời, đến 2027 mình mới về chung một nhà. |
| Mai | (tiếng Việt) Còn cái khoá đào tạo **課長候補** anh Kawakami nói tới — ba trụ cột giá thành, đánh giá cấp dưới, đàm phán khách hàng — nghe đáng sợ ghê. |
| Thái | (tiếng Việt) Đáng sợ thật. Nhưng anh có Putra với Marco làm đầu mối Đông Nam Á thật rồi. Vụ Jakarta sẽ là dự án thực hành đầu tiên. Mai năm 2027 này anh bắt đầu năm thứ sáu — tròn 60 tháng. Saitama mở đầu sách 11 của Hoa, Anjo khép lại sách 18 của anh. Hai hành trình song hành. |
| Mai | (tiếng Việt) Em với anh đi đến năm 2032 — vĩnh trú. |
| Thái | (tiếng Việt) Ừ. Cuộc đời mới bắt đầu. |

---

## Tình huống 11 — Căn hộ 1LDK Anjo · 6:30 sáng 1/4/2027, cài cúc đồng phục mới — đầu năm thứ 6

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>、<ruby>6<rt>ろく</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>です。<br>*(Mồng một tháng tư, ngày đầu của năm thứ sáu.)* |
| Mai | (tiếng Việt, pha cà phê trong bếp) Anh ơi, áo đồng phục mới em là phẳng treo trong tủ rồi đó. |
| Thái | (tiếng Việt) Cảm ơn em. |
| Thái | （<ruby>新<rt>あたら</rt></ruby>しい<ruby>制服<rt>せいふく</rt></ruby>を<ruby>着<rt>き</rt></ruby>ながら）<ruby>胸<rt>むね</rt></ruby>のバッジは<ruby>金色<rt>きんいろ</rt></ruby>。<ruby>課長<rt>かちょう</rt></ruby><ruby>候補<rt>こうほ</rt></ruby>のしるしです。<br>*(Vừa mặc đồng phục mới. Huy hiệu trên ngực là vàng kim. Là dấu hiệu ứng viên kachō.)* |
| Thái | （ボタンを<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>留<rt>と</rt></ruby>める）<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby> — <ruby>田中<rt>たなか</rt></ruby>さんへの<ruby>約束<rt>やくそく</rt></ruby>。<br>*(Cài từng cúc. Cúc thứ nhất — lời hứa với bác Tanaka.)* |
| Thái | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby> — <ruby>後輩<rt>こうはい</rt></ruby>たちへの<ruby>責任<rt>せきにん</rt></ruby>。<br>*(Cúc thứ hai — trách nhiệm với các kōhai.)* |
| Thái | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby> — マイと、<ruby>2032<rt>にせんさんじゅうに</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>永住<rt>えいじゅう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>への<ruby>誓<rt>ちか</rt></ruby>い。<br>*(Cúc thứ ba — lời thề với Mai và kế hoạch nộp vĩnh trú năm 2032.)* |
| Thái | （<ruby>鏡<rt>かがみ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>立<rt>た</rt></ruby>ち、<ruby>胸<rt>むね</rt></ruby>のバッジに<ruby>触<rt>ふ</rt></ruby>れる）<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Đứng trước gương, chạm tay vào huy hiệu trên ngực. Tôi sẽ cố gắng.)* |
| Mai | (tiếng Việt, đứng sau lưng) Anh đẹp lắm. Đi cẩn thận nhé. |
| Thái | (tiếng Việt) Cảm ơn em. Anh đi đây. |
| Thái | （ドアを<ruby>開<rt>あ</rt></ruby>けると<ruby>朝日<rt>あさひ</rt></ruby>が<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む）<ruby>行<rt>い</rt></ruby>ってまいります。<br>*(Mở cửa, nắng sớm chan vào. Tôi xin phép đi.)* |

---

## Đọng lại chương 12

Chương kết khép tròn 60 tháng tại Anjo bằng buổi tiệc 忘年会 cuối hợp đồng TTS gốc. Thái học được các mẫu câu chốt chặng nghề: **phát biểu tổng kết nhiều năm** theo cấu trúc "X年前 → 今 → 今後の目標" và **5つの感謝** với từng vai trò (父のような存在・師匠・兄のような存在・同期であり家族・大切な後輩たち), **chào hỏi qua LINE video** với đồng môn nước ngoài đã rời công ty (5周年おめでとう・取引したい), **hỏi lại lễ phép về lộ trình thăng chức** (〜というのは?・〜ということですね) với 工場長 về **課長候補研修** ba trụ cột (原価計算・部下評価・顧客折衝), **nhận quà có nghi thức** với cuốn **設計手帳 5冊目** từ bác Tanaka — vòng quay mentor khép lại khi bác chuẩn bị **嘱託引退**, và **truyền tiếp truyền thống** cho lứa kōhai Long-Hùng-Adi-Yamamoto. Sáng 1/4 đầu năm thứ 6, ba cúc đồng phục mới có 課長候補 badge vàng đóng vai trò nghi thức cá nhân — mỗi cúc một lời thề: với bác Tanaka, với kōhai, với Mai và kế hoạch **永住 2032**.

> Từ vựng & mẫu câu chương này: 5周年・忘年会・係長・課長候補・金色バッジ・嘱託引退・設計手帳・5冊目・5つの感謝・父のような存在・師匠・兄のような存在・同期であり家族・後輩を育てる・顧客折衝・原価計算・部下評価・取引・窓口・永住申請・〜というのは・〜ということですね・お疲れさまでした・申し上げます・謹んでお受けします・行ってまいります

## Bí quyết chương

- **Ba lớp khép cùng lúc**: 5 năm sự nghiệp + 6 năm yêu xa + chu kỳ mentor của bác Tanaka.
- **Putra, Marco, Suzuki gọi video LINE**: Mạng lưới đồng môn nước ngoài trải Đông Nam Á — quan hệ kinh doanh 5 năm sau (Jakarta 30 người, Manila 10 người, Suzuki sắp mở công ty riêng).
- **Năm cuốn sổ thiết kế**: Biểu trưng các chặng nghề — 1=tập huấn TTS, 2=máy MC, 3=phụ thiết kế, 4=chủ trì, 5=kakarichō+EV+cưới.
- **Bác Tanaka shokutaku sang năm nghỉ hẳn**: Kết mở — sang năm bác rút hoàn toàn. Vòng quay mentor khép.
- **Mai có mặt + bộ ba Linh-chị + Linh-Anh + Mai**: Bốn anh chị em Việt ở Anjo/Nagoya — cùng nộp vĩnh trú năm 2032.
- **Cài ba cúc đồng phục mới**: Soi gương sách 14 chương 1 (lần đầu mặc đồng phục TTS). Khép tròn 5 năm.
- **Câu cuối "行ってまいります"**: Lời chào ra cửa buổi sáng — mở chương đời sống thật sau loạt sách.

> *"Vòng cung 5 năm sự nghiệp khép lại. 28 tuổi, có vợ, có hai bên gia đình, có cuốn sổ thứ năm, có badge vàng 課長候補. Cuộc đời mới bắt đầu."*', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
