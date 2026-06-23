-- Hizashi LITE book SQL — Một Năm của Hoa Y2
-- curriculum_id = 800000012  (book_seq=12)
-- nguồn: books/12_hoa_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000012, 'N4', 'markdown_book', 'Thực phẩm', 'Một Năm của Hoa Y2', 'Bộ sách Hizashi — Một Năm của Hoa Y2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000001, 800000012, NULL, 'markdown_book', 'T1. Năm thứ hai dưới chế độ mới (新制度の朝・育成就労開始)', '# Sách thực tập sinh thực phẩm · T1. Năm thứ hai dưới chế độ mới (新制度の朝・育成就労開始)

> **Mục tiêu nhân vật:** Hoa (22 tuổi, Hà Nội) bước vào năm 2 tại nhà máy cơm hộp Aichi đúng ngày 育成就労 thi hành. Học các mẫu hội thoại tiếng Nhật của sempai năm 2: chào hỏi đầu năm tài khoá (新年度のご挨拶), nghe thông báo chính sách trong phòng họp và xác nhận lại (〜ということですね), đặt câu hỏi lễ phép trong Q&A (質問してもよろしいでしょうか), nhận chỉ thị từ 部長 và đáp 承知しました, hỏi lại khi chưa hiểu từ chuyên ngành (〜というのは？), cảm ơn 先輩 chỉ bảo (ご指導ありがとうございます).

---

## Bối cảnh

Ngày 1 tháng 4 năm 2027. Năm tài khoá mới bắt đầu, cũng là ngày chế độ **育成就労 (いくせいしゅうろう)** chính thức thay **技能実習 (ぎのうじっしゅう)**. Hoa đã ở Nhật tròn 1 năm, làm dây chuyền topping cơm hộp tại nhà máy thực phẩm Aichi, trình độ tiếng Nhật N5+. Hoa vẫn thuộc TTS cũ vì nhập cảnh 4/2026, còn kohai Mai sắp sang sẽ thuộc chế độ mới. Chương này tập trung các mẫu câu giao tiếp năm 2: chào năm mới tài khoá, nghe và xác nhận thông báo chính sách trong họp toàn xưởng, nhận lệnh chỉ đạo kohai từ 部長, và xin lời khuyên từ 先輩.

---

## Tình huống 1 — Bếp ký túc · 6:00, chào năm tài khoá mới với đồng nghiệp Indonesia

| Vai | Lời thoại |
|---|---|
| Putri | ホアちゃん、おはよう! <ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<br>*(Hoa-chan, chào buổi sáng! Chúc mừng năm tài khoá mới.)* |
| Hoa | おはよう、プトゥリ。<ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<ruby>早<rt>はや</rt></ruby>いね。<br>*(Chào buổi sáng, Putri. Chúc mừng năm tài khoá mới. Sớm nhỉ.)* |
| Putri | <ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まるでしょう?ドキドキ。<br>*(Hôm nay chế độ mới bắt đầu phải không? Hồi hộp ghê.)* |
| Hoa | プトゥリも<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>になるの?<br>*(Putri cũng sẽ thành Ikusei Shuurou à?)* |
| Putri | ううん、<ruby>私<rt>わたし</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby>のままです。<ruby>去年<rt>きょねん</rt></ruby>から<ruby>変<rt>か</rt></ruby>わっていません。<br>*(Không, tôi vẫn là Tokutei Ginou. Từ năm ngoái không đổi.)* |
| Hoa | あ、そうだったね。<ruby>私<rt>わたし</rt></ruby>は<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>のまま、<ruby>契約<rt>けいやく</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>までです。<br>*(À, đúng rồi. Tôi vẫn là TTS, đến hết hợp đồng.)* |
| Putri | ホアちゃん、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>おめでとう!<br>*(Hoa-chan, chúc mừng năm thứ 2!)* |
| Hoa | ありがとう。プトゥリは<ruby>仕事<rt>しごと</rt></ruby>にもう<ruby>慣<rt>な</rt></ruby>れた?<br>*(Cảm ơn. Putri quen việc chưa?)* |
| Putri | うん、もう<ruby>1<rt>いち</rt></ruby><ruby>年半<rt>ねんはん</rt></ruby>。でも、まだ<ruby>失敗<rt>しっぱい</rt></ruby>することがあります。<br>*(Ừ, đã 1 năm rưỡi rồi. Nhưng vẫn có lúc sai.)* |
| Hoa | <ruby>同<rt>おな</rt></ruby>じだね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Giống nhau nhỉ. Cùng cố gắng nhé.)* |

---

## Tình huống 2 — Trạm xe buýt · 6:30, chào sempai và hỏi đáp về kohai mới

| Vai | Lời thoại |
|---|---|
| Hoa | おはようございます、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<ruby>新年度<rt>しんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng anh Satou. Năm tài khoá mới mong anh chỉ bảo ạ.)* |
| Satou | おはよう、ホアさん。こちらこそよろしく。<ruby>今日<rt>きょう</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>だね、おめでとう。<br>*(Chào Hoa-san. Anh cũng vậy. Từ hôm nay là năm thứ 2 rồi nhỉ, chúc mừng.)* |
| Hoa | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Cảm ơn anh. Em hơi căng thẳng.)* |
| Satou | <ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>のことが<ruby>気<rt>き</rt></ruby>になりますか?<br>*(Em đang lo về chế độ mới à?)* |
| Hoa | はい。それと、<ruby>後輩<rt>こうはい</rt></ruby>のことも<ruby>聞<rt>き</rt></ruby>きました。<br>*(Vâng. Và chuyện kohai em cũng nghe rồi.)* |
| Satou | あ、マイさんのことね。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>もサポートするからね。<br>*(À, chuyện Mai-san nhỉ. Không sao, anh cũng sẽ hỗ trợ.)* |
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>がいてくださって、<ruby>安心<rt>あんしん</rt></ruby>します。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Có anh Satou, em yên tâm. Em thực sự cảm ơn ạ.)* |
| Satou | <ruby>困<rt>こま</rt></ruby>ったら、いつでも<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Có gì khó cứ hỏi anh bất cứ lúc nào nhé.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Phòng họp nhà máy · 9:00, nghe 部長 và 監理員 giải thích chế độ mới

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>新年度<rt>しんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người, chào buổi sáng. Năm tài khoá mới mong mọi người chỉ giáo.)* |
| Cả phòng | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng. Mong được chỉ giáo.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>から、<ruby>新<rt>あたら</rt></ruby>しい<ruby>制度<rt>せいど</rt></ruby>「<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>」が<ruby>施行<rt>しこう</rt></ruby>されます。<ruby>鈴木<rt>すずき</rt></ruby>さん、ご<ruby>説明<rt>せつめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ hôm nay 1/4, chế độ mới "Ikusei Shuurou" được thi hành. Anh Suzuki, mời anh giải thích.)* |
| Suzuki | はい。<ruby>今<rt>いま</rt></ruby>までの「<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>」が「<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>」に<ruby>変<rt>か</rt></ruby>わります。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>点<rt>てん</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つあります。<br>*(Vâng. "TTS" trước đây sẽ đổi thành "Ikusei Shuurou". Có 3 điểm quan trọng.)* |
| Suzuki | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>期間<rt>きかん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>です。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>から<ruby>転籍<rt>てんせき</rt></ruby>、つまり<ruby>会社<rt>かいしゃ</rt></ruby><ruby>変<rt>か</rt></ruby>えが<ruby>可能<rt>かのう</rt></ruby>になります。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>監理団体<rt>かんりだんたい</rt></ruby>」は「<ruby>監理支援機関<rt>かんりしえんきかん</rt></ruby>」に<ruby>名前<rt>なまえ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。<br>*(Thứ nhất, thời hạn 3 năm. Thứ hai, sau 1 năm có thể 転籍, tức là chuyển công ty. Thứ ba, "Đoàn thể giám sát" đổi tên thành "Cơ quan hỗ trợ giám sát".)* |
| Hoa | (ghi vào sổ tay, mấp máy nhẩm) <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>・<ruby>転籍<rt>てんせき</rt></ruby>・<ruby>監理支援機関<rt>かんりしえんきかん</rt></ruby>...<br>*(3 năm, chuyển công ty, cơ quan hỗ trợ giám sát...)* |

---

## Tình huống 4 — Phòng họp · 9:30, Q&A — Hoa và đồng nghiệp đặt câu hỏi lễ phép

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?ホアさんは<ruby>今<rt>いま</rt></ruby>どちらの<ruby>制度<rt>せいど</rt></ruby>になりますか?<br>*(Anh Suzuki, em xin hỏi được không? Hoa-san hiện thuộc chế độ nào ạ?)* |
| Suzuki | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。ホアさんは<ruby>去年<rt>きょねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>入国<rt>にゅうこく</rt></ruby>ですので、<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>のままです。<ruby>3<rt>さん</rt></ruby><ruby>年契約<rt>ねんけいやく</rt></ruby>の<ruby>最後<rt>さいご</rt></ruby>までそのままです。<br>*(Câu hỏi hay. Hoa-san vào tháng 4 năm ngoái nên vẫn là TTS. Đến hết hợp đồng 3 năm vẫn vậy.)* |
| Hoa | あの、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?<ruby>新<rt>あたら</rt></ruby>しく<ruby>来<rt>く</rt></ruby>る<ruby>後輩<rt>こうはい</rt></ruby>は、どちらになりますか?<br>*(Em xin hỏi được không ạ? Kohai mới sang sẽ thuộc chế độ nào ạ?)* |
| Suzuki | <ruby>今日<rt>きょう</rt></ruby>から<ruby>来日<rt>らいにち</rt></ruby>する<ruby>方<rt>かた</rt></ruby>は<ruby>全員<rt>ぜんいん</rt></ruby>「<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>」になります。<br>*(Từ hôm nay người mới sang đều là "Ikusei Shuurou".)* |
| Hoa | つまり、<ruby>同<rt>おな</rt></ruby>じ<ruby>工場<rt>こうじょう</rt></ruby>に<ruby>二<rt>ふた</rt></ruby>つの<ruby>制度<rt>せいど</rt></ruby>が<ruby>並<rt>なら</rt></ruby>ぶ、ということですね。<br>*(Tức là, hai chế độ cùng tồn tại trong một nhà máy, đúng không ạ?)* |
| Suzuki | そのとおりです。よく<ruby>整理<rt>せいり</rt></ruby>できましたね。<br>*(Đúng vậy. Em tóm tắt tốt đấy.)* |
| Takahashi | <ruby>転籍<rt>てんせき</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh có thể cho biết điều kiện 転籍 được không ạ?)* |
| Suzuki | <ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年以上<rt>ねんいじょう</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>レベルA2<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Cùng ngành, làm trên 1 năm, tiếng Nhật A2 trở lên.)* |
| Hoa | すみません、「<ruby>業種<rt>ぎょうしゅ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "業種" nghĩa là gì ạ?)* |
| Suzuki | いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>業種<rt>ぎょうしゅ</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>の<ruby>種類<rt>しゅるい</rt></ruby>です。<ruby>食品<rt>しょくひん</rt></ruby><ruby>製造<rt>せいぞう</rt></ruby>なら<ruby>食品<rt>しょくひん</rt></ruby><ruby>製造<rt>せいぞう</rt></ruby>のままです。<br>*(Câu hỏi hay. 業種 là loại công việc. Chế biến thực phẩm thì vẫn phải chế biến thực phẩm.)* |
| Hoa | なるほど。<ruby>食品<rt>しょくひん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>から<ruby>食品<rt>しょくひん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>へ、ということですね。ありがとうございます。<br>*(Ra vậy. Tức là từ việc thực phẩm sang việc thực phẩm. Cảm ơn anh ạ.)* |

---

## Tình huống 5 — Hành lang sau họp · 10:00, xác nhận lại với 先輩 khi chưa rõ

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりましたか?<br>*(Anh Yamada, buổi giải thích sáng anh hiểu chứ ạ?)* |
| Yamada | だいたいね。ホアさんは?<br>*(Đại khái thôi. Còn Hoa-san?)* |
| Hoa | <ruby>転籍<rt>てんせき</rt></ruby>って、<ruby>本当<rt>ほんとう</rt></ruby>にできるんですか?<br>*(Chuyển công ty, thật sự có thể làm được không ạ?)* |
| Yamada | <ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たせばできますよ。でも<ruby>実際<rt>じっさい</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Nếu đáp ứng điều kiện thì có. Nhưng thực tế khó đấy.)* |
| Hoa | どうして<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Tại sao lại khó ạ?)* |
| Yamada | <ruby>新<rt>あたら</rt></ruby>しい<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>すのも、<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>すのも、<ruby>大変<rt>たいへん</rt></ruby>ですから。<br>*(Vì tìm công ty mới rồi chuyển nhà đều vất vả lắm.)* |
| Hoa | なるほど、<ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>しと<ruby>会社<rt>かいしゃ</rt></ruby><ruby>探<rt>さが</rt></ruby>しが<ruby>大変<rt>たいへん</rt></ruby>、ということですね。<br>*(Ra vậy, chuyển nhà và tìm công ty mới đều vất vả ạ.)* |
| Yamada | そう。でもね、<ruby>悪<rt>わる</rt></ruby>い<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>逃<rt>に</rt></ruby>げられるのは、<ruby>本当<rt>ほんとう</rt></ruby>にいい<ruby>制度<rt>せいど</rt></ruby>ですよ。<br>*(Đúng. Nhưng thoát được khỏi công ty xấu thì đây là chế độ tốt thật.)* |
| Hoa | わかりました。ご<ruby>説明<rt>せつめい</rt></ruby>ありがとうございました。<br>*(Em hiểu rồi. Em cảm ơn anh đã giải thích.)* |

---

## Tình huống 6 — Dây chuyền cơm hộp · 10:30, nhận chỉ thị làm trưởng dây chuyền topping

| Vai | Lời thoại |
|---|---|
| Satou | ホアさん、<ruby>今日<rt>きょう</rt></ruby>からトッピング・ラインのリーダーをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hoa-san, từ hôm nay nhờ em làm trưởng line topping nhé.)* |
| Hoa | え、<ruby>私<rt>わたし</rt></ruby>がリーダーですか?<br>*(Ơ, em làm trưởng nhóm ạ?)* |
| Satou | はい。マイさんが<ruby>来<rt>く</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に、<ruby>慣<rt>な</rt></ruby>れておきましょう。<br>*(Vâng. Trước khi Mai-san đến, làm quen trước đi.)* |
| Hoa | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em rõ ạ. Em sẽ cố gắng.)* |
| Satou | リーダーの<ruby>仕事<rt>しごと</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>材料<rt>ざいりょう</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>りを<ruby>確認<rt>かくにん</rt></ruby>する。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>異常<rt>いじょう</rt></ruby>があれば<ruby>速<rt>はや</rt></ruby>く<ruby>呼<rt>よ</rt></ruby>ぶ。<ruby>三<rt>みっ</rt></ruby>つ、メンバーに<ruby>声<rt>こえ</rt></ruby>をかける。<br>*(Việc của trưởng line có 3. Một, kiểm tra nguyên liệu còn lại. Hai, có bất thường gọi nhanh. Ba, lên tiếng với thành viên.)* |
| Hoa | すみません、「<ruby>異常<rt>いじょう</rt></ruby>」というのは、どんなことですか?<br>*(Xin lỗi anh, "異常" cụ thể là những gì ạ?)* |
| Satou | <ruby>例<rt>たと</rt></ruby>えば、<ruby>機械<rt>きかい</rt></ruby>の<ruby>音<rt>おと</rt></ruby>が<ruby>変<rt>か</rt></ruby>わったとか、<ruby>材料<rt>ざいりょう</rt></ruby>に<ruby>異物<rt>いぶつ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>ったとか、<ruby>普段<rt>ふだん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>うことです。<br>*(Ví dụ tiếng máy đổi, nguyên liệu có dị vật, những gì khác bình thường.)* |
| Hoa | <ruby>機械<rt>きかい</rt></ruby>の<ruby>音<rt>おと</rt></ruby>と<ruby>異物<rt>いぶつ</rt></ruby>、ということですね。メモします。<br>*(Tiếng máy và dị vật ạ. Em ghi lại.)* |
| Satou | <ruby>困<rt>こま</rt></ruby>ったら<ruby>隣<rt>となり</rt></ruby>のラインの<ruby>私<rt>わたし</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>速<rt>はや</rt></ruby>く<ruby>気<rt>き</rt></ruby>づいて、<ruby>速<rt>はや</rt></ruby>く<ruby>呼<rt>よ</rt></ruby>ぶ、それだけです。<br>*(Có gì khó cứ gọi anh ở line bên cạnh. Phát hiện nhanh, gọi nhanh, chỉ vậy thôi.)* |
| Hoa | はい、ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Vâng, cảm ơn anh đã chỉ bảo.)* |

---

## Tình huống 7 — Phòng 部長 · 13:30, Hoa nhận nhiệm vụ làm 指導員 cho Mai

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、ちょっとよろしいですか。<br>*(Hoa-san, có một chút thời gian không?)* |
| Hoa | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép.)* |
| Tanaka | <ruby>来月<rt>らいげつ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>、ベトナムから<ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>き</rt></ruby>ます。<ruby>名前<rt>なまえ</rt></ruby>はマイさん、<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<br>*(Tháng 5 tới có kohai mới từ Việt Nam đến. Tên là Mai-san, 21 tuổi.)* |
| Hoa | はい、<ruby>鈴木<rt>すずき</rt></ruby>さんから<ruby>少<rt>すこ</rt></ruby>し<ruby>聞<rt>き</rt></ruby>きました。<br>*(Vâng, em đã nghe sơ từ anh Suzuki.)* |
| Tanaka | マイさんの<ruby>指導<rt>しどう</rt></ruby>を、ホアさんにお<ruby>願<rt>ねが</rt></ruby>いしたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Việc hướng dẫn Mai-san, tôi muốn nhờ Hoa-san.)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>が<ruby>指導員<rt>しどういん</rt></ruby>として<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Em làm 指導員 có ổn không ạ?)* |
| Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ホアさんは<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってきました。<ruby>失敗<rt>しっぱい</rt></ruby>もありましたが、<ruby>毎回<rt>まいかい</rt></ruby><ruby>学<rt>まな</rt></ruby>びました。<br>*(Không sao. Hoa-san đã cố gắng cả năm. Có thất bại nhưng mỗi lần đều học.)* |
| Tanaka | マイさんに、<ruby>同<rt>おな</rt></ruby>じことを<ruby>教<rt>おし</rt></ruby>えてあげてください。<br>*(Hãy dạy Mai-san những điều đó.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ cố gắng hết sức.)* |
| Tanaka | あと、ホアさんは<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby>、マイさんは<ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>です。<ruby>制度<rt>せいど</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>いますが、<ruby>仕事<rt>しごと</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。<ruby>気<rt>き</rt></ruby>にしないでください。<br>*(À, Hoa-san là TTS, Mai-san là Ikusei. Chế độ khác nhưng công việc giống. Đừng bận tâm.)* |
| Hoa | はい、わかりました。ありがとうございます。<br>*(Vâng, em hiểu rồi. Em cảm ơn ạ.)* |

---

## Tình huống 8 — Văn phòng 鈴木 · 14:00, hỏi thông tin chi tiết về kohai

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby>さん、ちょっとよろしいでしょうか?<br>*(Anh Suzuki, em xin một chút thời gian được không ạ?)* |
| Suzuki | どうぞ、お<ruby>入<rt>はい</rt></ruby>りください。<ruby>何<rt>なに</rt></ruby>かありましたか?<br>*(Mời, vào đi. Có gì không?)* |
| Hoa | マイさんのことを、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Về Mai-san, anh có thể chỉ thêm cho em được không ạ?)* |
| Suzuki | はい。マイさんは<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>、ベトナムのカントー<ruby>出身<rt>しゅっしん</rt></ruby>です。<ruby>日本語<rt>にほんご</rt></ruby>はN5レベルです。<br>*(Vâng. Mai-san 21 tuổi, người Cần Thơ Việt Nam. Tiếng Nhật trình độ N5.)* |
| Hoa | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じレベルですね。<ruby>専攻<rt>せんこう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Cùng trình độ với em 1 năm trước. Chuyên ngành là gì ạ?)* |
| Suzuki | <ruby>食品加工<rt>しょくひんかこう</rt></ruby>です。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>してきました。<br>*(Chế biến thực phẩm. Học 3 năm rồi.)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですね。<br>*(Giống em ạ.)* |
| Suzuki | そう。だからホアさんに<ruby>指導<rt>しどう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしました。<br>*(Đúng. Vì vậy tôi mới nhờ Hoa-san hướng dẫn.)* |
| Hoa | マイさんの<ruby>性格<rt>せいかく</rt></ruby>はどんな<ruby>感<rt>かん</rt></ruby>じですか?<br>*(Tính cách Mai-san thế nào ạ?)* |
| Suzuki | <ruby>静<rt>しず</rt></ruby>かで、<ruby>真面目<rt>まじめ</rt></ruby>です。<ruby>少<rt>すこ</rt></ruby>し<ruby>恥<rt>は</rt></ruby>ずかしがり<ruby>屋<rt>や</rt></ruby>ですね。<br>*(Trầm tính, nghiêm túc. Hơi rụt rè.)* |
| Hoa | わかりました。<ruby>優<rt>やさ</rt></ruby>しく<ruby>接<rt>せっ</rt></ruby>するように<ruby>気<rt>き</rt></ruby>をつけます。ありがとうございました。<br>*(Em hiểu rồi. Em sẽ chú ý đối xử ân cần. Em cảm ơn ạ.)* |

---

## Tình huống 9 — 食堂 · 12:00, ăn trưa với 先輩 — quan sát cách 先輩 dạy

| Vai | Lời thoại |
|---|---|
| Satou | お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>朝<rt>あさ</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しかった?<br>*(Vất vả rồi. Buổi giải thích sáng có khó hiểu không?)* |
| Hoa | <ruby>少<rt>すこ</rt></ruby>し<ruby>難<rt>むずか</rt></ruby>しかったですが、<ruby>大体<rt>だいたい</rt></ruby><ruby>分<rt>わ</rt></ruby>かりました。<br>*(Hơi khó nhưng em hiểu đại khái.)* |
| Satou | <ruby>今日<rt>きょう</rt></ruby>からホアさんも<ruby>先輩<rt>せんぱい</rt></ruby>ですね。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、おめでとう。<br>*(Từ hôm nay Hoa-san cũng là sempai rồi nhỉ. Chúc mừng năm thứ 2.)* |
| Hoa | ありがとうございます。でも、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えるのが、ちょっと<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Cảm ơn anh. Nhưng dạy lại kohai, em hơi lo.)* |
| Satou | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>はそうですよ。<br>*(Không sao. Ai cũng vậy lúc đầu.)* |
| Hoa | <ruby>先輩<rt>せんぱい</rt></ruby>はどうやって<ruby>教<rt>おし</rt></ruby>えていますか?コツを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh dạy như thế nào ạ? Anh chỉ em bí quyết với.)* |
| Satou | <ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ、ゆっくり<ruby>話<rt>はな</rt></ruby>す。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>同<rt>おな</rt></ruby>じことを<ruby>何度<rt>なんど</rt></ruby>も<ruby>言<rt>い</rt></ruby>う。<ruby>三<rt>みっ</rt></ruby>つ、まず<ruby>自分<rt>じぶん</rt></ruby>でやって<ruby>見<rt>み</rt></ruby>せる。<br>*(Có 3 điểm. Một, nói chậm. Hai, cùng một điều nói nhiều lần. Ba, mình tự làm cho xem trước.)* |
| Hoa | 「まず<ruby>見<rt>み</rt></ruby>せる」ですね。それから?<br>*(Là "cho xem trước" ạ. Sau đó?)* |
| Satou | <ruby>次<rt>つぎ</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>にやる。<ruby>最後<rt>さいご</rt></ruby>に<ruby>後輩<rt>こうはい</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でやらせる。「<ruby>見<rt>み</rt></ruby>せる→<ruby>一緒<rt>いっしょ</rt></ruby>に→<ruby>一人<rt>ひとり</rt></ruby>で」の<ruby>順番<rt>じゅんばん</rt></ruby>です。<br>*(Tiếp theo cùng làm. Cuối cùng để kohai tự làm một mình. Thứ tự "cho xem → cùng làm → một mình".)* |
| Hoa | なるほど、「<ruby>見<rt>み</rt></ruby>せる→<ruby>一緒<rt>いっしょ</rt></ruby>に→<ruby>一人<rt>ひとり</rt></ruby>で」ということですね。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Ra vậy, "cho xem → cùng làm → một mình" ạ. Em học được nhiều thật.)* |
| Satou | <ruby>私<rt>わたし</rt></ruby>もホアさんの<ruby>時<rt>とき</rt></ruby>、<ruby>家<rt>うち</rt></ruby>で<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しましたよ。<br>*(Lúc dạy Hoa-san, anh cũng luyện cách dạy ở nhà đấy.)* |
| Hoa | えっ、<ruby>知<rt>し</rt></ruby>りませんでした。ありがとうございます。<br>*(Ơ, em không biết. Em cảm ơn anh.)* |

---

## Tình huống 10 — Cửa nhà máy · 17:30, 木村先輩 dặn dò khi tan ca

| Vai | Lời thoại |
|---|---|
| Kimura | ホアさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Hoa-san, vất vả rồi.)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Chị Kimura, chị vất vả rồi.)* |
| Kimura | <ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>のこと、<ruby>聞<rt>き</rt></ruby>きました。<ruby>頑張<rt>がんば</rt></ruby>ってくださいね。<br>*(Chuyện hướng dẫn kohai, chị nghe rồi. Cố lên nhé.)* |
| Hoa | はい。<ruby>不安<rt>ふあん</rt></ruby>もありますが...<br>*(Vâng. Em cũng có lo lắng...)* |
| Kimura | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ホアさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>去年<rt>きょねん</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>立派<rt>りっぱ</rt></ruby>でしたよ。<br>*(Không sao. Hoa-san sẽ làm được. Lúc thanh tra năm ngoái, em rất xuất sắc đấy.)* |
| Hoa | ありがとうございます。<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>指導<rt>しどう</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cảm ơn chị. Chị Kimura, chị có thể chỉ em bí quyết hướng dẫn không ạ?)* |
| Kimura | <ruby>厳<rt>きび</rt></ruby>しくしすぎないこと。それから、できたら<ruby>必<rt>かなら</rt></ruby>ず<ruby>褒<rt>ほ</rt></ruby>めること。それだけです。<br>*(Đừng nghiêm khắc quá. Và khi làm được phải khen ngay. Chỉ vậy thôi.)* |
| Hoa | 「<ruby>厳<rt>きび</rt></ruby>しくしすぎない」と「<ruby>褒<rt>ほ</rt></ruby>める」、ということですね。<br>*(Là "đừng nghiêm khắc quá" và "khen", đúng không ạ?)* |
| Kimura | そう。<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>はいつでも<ruby>聞<rt>き</rt></ruby>いてください。<ruby>私<rt>わたし</rt></ruby>も<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えた<ruby>経験<rt>けいけん</rt></ruby>がありますから。<br>*(Đúng. Có gì khó cứ hỏi chị bất cứ lúc nào. Chị cũng có kinh nghiệm dạy kohai rồi.)* |
| Hoa | はい、<ruby>覚<rt>おぼ</rt></ruby>えておきます。ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Vâng, em sẽ nhớ. Cảm ơn chị đã chỉ bảo.)* |

---

## Tình huống 11 — Bếp ký túc · 19:00, kể chuyện một ngày với Putri (mix JP-EN-VN)

| Vai | Lời thoại |
|---|---|
| Putri | ホアちゃん、<ruby>今日<rt>きょう</rt></ruby>はどうだった?<br>*(Hoa-chan, hôm nay thế nào?)* |
| Hoa | <ruby>長<rt>なが</rt></ruby>い<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>でした。リーダーになって、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導員<rt>しどういん</rt></ruby>にもなります。<br>*(Một ngày dài. Tôi thành trưởng nhóm, và từ tháng sau làm 指導員 cho kohai.)* |
| Putri | わー、すごい!<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>は?<br>*(Wow, tuyệt! Tên kohai là gì?)* |
| Hoa | マイさん。ベトナム、カントーから。<br>*(Mai-san. Từ Cần Thơ Việt Nam.)* |
| Putri | <ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>に<ruby>来<rt>く</rt></ruby>るのかな?<br>*(Sẽ đến cùng ký túc không nhỉ?)* |
| Hoa | たぶん。リン<ruby>姉<rt>ねえ</rt></ruby>さんの<ruby>部屋<rt>へや</rt></ruby>が<ruby>空<rt>あ</rt></ruby>いているから。<br>*(Chắc vậy. Phòng chị Linh đang trống mà.)* |
| Putri | <ruby>嬉<rt>うれ</rt></ruby>しい!<ruby>友達<rt>ともだち</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えます。プトゥリも<ruby>守<rt>まも</rt></ruby>ってあげる!<br>*(Vui ghê! Có thêm bạn. Tôi cũng sẽ bảo vệ Mai-san!)* |
| Hoa | プトゥリ、<ruby>初<rt>はじ</rt></ruby>めて<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しかったことは<ruby>何<rt>なに</rt></ruby>?<br>*(Putri lúc đầu mới sang Nhật, điều khó nhất là gì?)* |
| Putri | <ruby>言葉<rt>ことば</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からないこと。<ruby>怖<rt>こわ</rt></ruby>かった、<ruby>友達<rt>ともだち</rt></ruby>もいなかった。<br>*(Không hiểu tiếng. Sợ, lại không có bạn.)* |
| Hoa | <ruby>同<rt>おな</rt></ruby>じだった。だからマイさんには<ruby>優<rt>やさ</rt></ruby>しくしようね。<br>*(Giống nhau. Vì vậy với Mai-san phải dịu dàng nhé.)* |
| Putri | うん、<ruby>絶対<rt>ぜったい</rt></ruby>!<br>*(Ừ, nhất định!)* |

---

## Tình huống 12 — Phòng Hoa · 21:00, gọi điện về cho mẹ (Cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — gọi Zalo về VN, ôn lại từ vựng JP qua hội thoại.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, nghe được không? |
| Mẹ Hoa | (tiếng Việt) Nghe được, nghe được. Khoẻ không con? |
| Hoa | (tiếng Việt) Con khoẻ. Hôm nay đầu năm tài khoá, từ hôm nay là năm thứ hai rồi mẹ. |
| Mẹ Hoa | (tiếng Việt) Nhanh nhỉ, mới đó mà đã một năm. Ở chỗ con có chế độ gì mới không? |
| Hoa | (tiếng Việt) Có mẹ. Chế độ mới gọi là *Ikusei Shuurou* — 育成就労. Thay cho TTS cũ — *Gino Jisshu*. Em mới sang sau này sẽ thuộc chế độ mới, được phép chuyển công ty sau 1 năm, gọi là 転籍 (tenseki). Con vẫn thuộc TTS cũ, hết hợp đồng 3 năm như cũ. |
| Mẹ Hoa | (tiếng Việt) Có khác lương không con? |
| Hoa | (tiếng Việt) Lương thì giống. Khác là chế độ giám sát: trước gọi là 監理団体 *kanri dantai*, giờ gọi là 監理支援機関 *kanri shien kikan* — có thêm 外部監査人 là kiểm toán viên bên ngoài. |
| Mẹ Hoa | (tiếng Việt) Mẹ nghe lằng nhằng quá. Mà còn gì nữa không con? |
| Hoa | (tiếng Việt) Có mẹ ơi. Tháng sau có em kohai mới từ Cần Thơ sang, tên Mai, 21 tuổi. Bác trưởng phòng Tanaka giao con làm *shidouin* — 指導員, người hướng dẫn. Con lo lắm mẹ. |
| Mẹ Hoa | (tiếng Việt) Mẹ cũng vậy, lúc thành cô giáo của con, mẹ cũng lo. Giống nhau thôi. |
| Hoa | (tiếng Việt) Mẹ ơi, bí quyết dạy người ta là gì hả mẹ? |
| Mẹ Hoa | (tiếng Việt) Dịu dàng, chậm rãi, cùng một điều nói nhiều lần. Có khi nó không hiểu lần một thì lần hai, lần ba. Đừng quát. Làm được thì khen ngay. |
| Hoa | (tiếng Việt) Hay quá mẹ ạ. Anh Satou sempai cũng nói y vậy: "cho xem trước → cùng làm → để tự làm một mình". Chị Kimura sempai thì nói "đừng nghiêm khắc quá, làm được phải khen". |
| Mẹ Hoa | (tiếng Việt) Vậy là ai làm cô làm thầy đều giống nhau. Cố lên con. Giữ sức khoẻ. |
| Hoa | (tiếng Việt) Vâng. Con cảm ơn mẹ. Mai con phải đi sớm, con đi nghỉ đây. |

---

## Tình huống 13 — Bàn học phòng Hoa · 22:00, viết nhật ký lưu mẫu câu chương

| Vai | Lời thoại |
|---|---|
| Hoa | (ghi sổ, đọc nhẩm thành tiếng) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>。<br>*(1/4. Ngày đầu năm thứ 2.)* |
| Hoa | <ruby>今日<rt>きょう</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>: <ruby>育成就労<rt>いくせいしゅうろう</rt></ruby>・<ruby>施行<rt>しこう</rt></ruby>・<ruby>転籍<rt>てんせき</rt></ruby>・<ruby>業種<rt>ぎょうしゅ</rt></ruby>・<ruby>監理支援機関<rt>かんりしえんきかん</rt></ruby>・<ruby>異常<rt>いじょう</rt></ruby>・<ruby>異物<rt>いぶつ</rt></ruby>・<ruby>指導員<rt>しどういん</rt></ruby>。<br>*(Từ học hôm nay: Ikusei, thi hành, chuyển công ty, ngành nghề, cơ quan hỗ trợ giám sát, bất thường, dị vật, chỉ đạo viên.)* |
| Hoa | <ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>表現<rt>ひょうげん</rt></ruby>: <ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか・<ruby>承知<rt>しょうち</rt></ruby>しました・〜というのは<ruby>何<rt>なん</rt></ruby>ですか・〜ということですね・ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Mẫu câu đã dùng: em xin hỏi được không, em rõ ạ, ~ là gì, tức là ~ phải không, cảm ơn anh/chị đã chỉ bảo.)* |
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のコツ:<ruby>見<rt>み</rt></ruby>せる→<ruby>一緒<rt>いっしょ</rt></ruby>に→<ruby>一人<rt>ひとり</rt></ruby>で。<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のコツ:<ruby>厳<rt>きび</rt></ruby>しすぎない、<ruby>褒<rt>ほ</rt></ruby>める。お<ruby>母<rt>かあ</rt></ruby>さん:<ruby>優<rt>やさ</rt></ruby>しく、ゆっくり、<ruby>何度<rt>なんど</rt></ruby>も。<br>*(Bí quyết anh Satou: cho xem → cùng → một mình. Bí quyết chị Kimura: đừng nghiêm khắc quá, khen. Mẹ: dịu dàng, chậm, nhiều lần.)* |
| Hoa | <ruby>来月<rt>らいげつ</rt></ruby>、マイさんが<ruby>来<rt>く</rt></ruby>る。<ruby>私<rt>わたし</rt></ruby>も<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Tháng sau Mai-san đến. Mình cũng phải luyện.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá, Hoa học được bộ mẫu câu mới của sempai năm 2 trong môi trường công sở Nhật: **chào năm mới tài khoá** (新年度もよろしくお願いいたします), **đặt câu hỏi lễ phép trong họp** (質問してもよろしいでしょうか), **xác nhận lại thông tin chính sách** (〜ということですね・つまり〜), **hỏi lại từ chuyên ngành chưa biết** (〜というのは何ですか), **nhận chỉ thị từ 部長** (承知しました・精一杯頑張ります), và **cảm ơn lời chỉ bảo của 先輩** (ご指導ありがとうございます). Đồng thời nghe và phân biệt được hai chế độ visa **技能実習 (Gino Jisshu)** cũ và **育成就労 (Ikusei Shuurou)** mới — biết khái niệm **転籍**, **監理支援機関**, **外部監査人** — những từ chuyên ngành về luật visa Nhật phải nắm để trao đổi với 監理員 và 部長. Bí quyết kèm cặp đàn em gom từ ba người: anh Satou dạy "**見せる→一緒に→一人で**", chị Kimura dạy "**厳しすぎない・褒める**", mẹ dạy "**優しく、ゆっくり、何度も**".

> Từ vựng & mẫu câu chương này: 新年度・育成就労・技能実習・施行・転籍・業種・監理団体・監理支援機関・外部監査人・指導員・後輩・異常・異物・トッピング・新年度もよろしくお願いいたします・質問してもよろしいでしょうか・承知しました・〜というのは何ですか・〜ということですね・ご指導ありがとうございます・精一杯頑張ります・見せる→一緒に→一人で・優しくゆっくり何度も

## Bí quyết chương

- 育成就労 (Ikusei Shuurou) = chế độ MỚI từ 4/2027 thay 技能実習. TTS cũ vẫn hoàn tất hợp đồng 3 năm theo chế độ cũ.
- TTS không thể chuyển sang Ikusei giữa chừng hợp đồng — phải hoàn tất trước.
- Ikusei cho phép 転籍 sau 1 năm + tiếng Nhật A2; TTS thì không.
- Mẫu câu Q&A lễ phép trong họp: `質問してもよろしいでしょうか` → `〜というのは何ですか` → `つまり〜ということですね` (xác nhận lại).
- Bí quyết kèm cặp đàn em kết hợp 3 nguồn: 「見せる→一緒に→一人で」+ 「厳しすぎない・褒める」+ 「優しく、ゆっくり、何度も」.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新年度 | しんねんど | TÂN NIÊN ĐỘ | Năm tài khoá mới (bắt đầu 1/4) |
| 制度 | せいど | CHẾ ĐỘ | Chế độ, thể chế |
| 育成就労 | いくせいしゅうろう | DỤC THÀNH TỰU LAO | Ikusei Shuurou — chế độ lao động đào tạo mới |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | Tokutei Ginou — visa kỹ năng đặc định |
| 技能実習 | ぎのうじっしゅう | KỸ NĂNG THỰC TẬP | Thực tập kỹ năng (TTS) |
| 契約 | けいやく | KHẾ ƯỚC | Hợp đồng |
| 失敗 | しっぱい | THẤT BẠI | Thất bại, sai sót |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Căng thẳng, hồi hộp |
| 後輩 | こうはい | HẬU BỐI | Kohai, đàn em |
| 先輩 | せんぱい | TIÊN BỐI | Sempai, đàn anh |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, vâng rõ (kính ngữ) |
| 施行 | しこう | THI HÀNH | Thi hành (chính sách) |
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 期間 | きかん | KỲ GIAN | Thời hạn |
| 転籍 | てんせき | CHUYỂN TỊCH | Chuyển công ty (theo chế độ Ikusei) |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | Đoàn thể giám sát (TTS cũ) |
| 監理支援機関 | かんりしえんきかん | GIÁM LÝ CHI VIỆN CƠ QUAN | Cơ quan hỗ trợ giám sát (chế độ mới) |
| 質問 | しつもん | CHẤT VẤN | Câu hỏi |
| 入国 | にゅうこく | NHẬP QUỐC | Nhập cảnh |
| 来日 | らいにち | LAI NHẬT | Đến Nhật |
| 工場 | こうじょう | CÔNG TRƯỜNG | Nhà máy |
| 業種 | ぎょうしゅ | NGHIỆP CHỦNG | Ngành nghề |
| 条件 | じょうけん | ĐIỀU KIỆN | Điều kiện |
| 勤務 | きんむ | CẦN VỤ | Làm việc, công tác |
| 食品製造 | しょくひんせいぞう | THỰC PHẨM CHẾ TẠO | Chế biến thực phẩm |
| 種類 | しゅるい | CHỦNG LOẠI | Loại |
| 整理 | せいり | CHỈNH LÝ | Sắp xếp, tóm tắt |
| 実際 | じっさい | THỰC TẾ | Thực tế |
| 材料 | ざいりょう | TÀI LIỆU | Nguyên liệu |
| 確認 | かくにん | XÁC NHẬN | Xác nhận, kiểm tra |
| 異常 | いじょう | DỊ THƯỜNG | Bất thường |
| 異物 | いぶつ | DỊ VẬT | Dị vật |
| 機械 | きかい | CƠ GIỚI | Máy móc |
| 普段 | ふだん | PHỔ ĐOẠN | Bình thường, thường lệ |
| 指導 | しどう | CHỈ ĐẠO | Chỉ bảo, hướng dẫn |
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | Người hướng dẫn (cho TTS/Ikusei) |
| 失礼 | しつれい | THẤT LỄ | Xin phép, thất lễ |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức mình |
| 食品加工 | しょくひんかこう | THỰC PHẨM GIA CÔNG | Chế biến thực phẩm |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán, nơi sinh ra |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| 性格 | せいかく | TÍNH CÁCH | Tính cách |
| 真面目 | まじめ | CHÂN DIỆN MỤC | Nghiêm túc |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 練習 | れんしゅう | LUYỆN TẬP | Luyện tập |
| 監査 | かんさ | GIÁM TRA | Thanh tra (thanh tra) |
| 立派 | りっぱ | LẬP PHÁI | Xuất sắc, đáng nể |
| 経験 | けいけん | KINH NGHIỆM | Kinh nghiệm |
| 不安 | ふあん | BẤT AN | Lo lắng |
| 絶対 | ぜったい | TUYỆT ĐỐI | Tuyệt đối, nhất định |
| 外部監査人 | がいぶかんさにん | NGOẠI BỘ GIÁM TRA NHÂN | Kiểm toán viên bên ngoài |
| 初日 | しょにち | SƠ NHẬT | Ngày đầu tiên |
| 表現 | ひょうげん | BIỂU HIỆN | Cách diễn đạt |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000002, 800000012, NULL, 'markdown_book', 'T2. Đón đàn em Mai về ký túc (マイさんを迎える日)', '# Sách thực tập sinh thực phẩm · T2. Đón đàn em Mai về ký túc (マイさんを迎える日)

> **Mục tiêu nhân vật:** Hoa (năm 2 TTS thực phẩm, Saitama) lần đầu đứng vị trí sempai đón kohai Mai (TTS mới từ Cần Thơ, N5). Học các mẫu hội thoại tiếng Nhật của một sempai năm 2: chào hỏi & tự giới thiệu giúp kohai bớt lo (はじめまして・長旅お疲れさま), nói chuyện theo nguyên tắc **やさしい日本語** (câu ngắn, 1 câu 1 ý), hỏi lại lễ phép khi kohai dùng từ chưa rõ (〜というのは?), quan sát cách 鈴木 sempai làm mẫu rồi bắt chước, hướng dẫn kohai quy tắc sinh hoạt ký túc (寮費・天引き・ゴミ出し・洗濯機), và 声かけ động viên kohai khi lo lắng (泣いてもいいですよ・困ったら呼んでね).

---

## Bối cảnh

Sáng 15 tháng 5 năm 2027. Chuyến bay VN203 hạ cánh Narita 6:30 — đúng chuyến Hoa đi 1 năm trước. Hoa cùng 鈴木 sempai ra đón Mai (TTS mới, N5, người Cần Thơ) về ký túc ở Saitama, phòng cũ của chị Linh. Trình độ tiếng Nhật của Hoa giờ N4, đủ để dìu dắt kohai N5. Chương này tập trung dạy các mẫu câu giao tiếp của **sempai năm 2**: tự giới thiệu với kohai, dùng やさしい日本語, hỏi lại khi chưa rõ, hướng dẫn sinh hoạt ký túc (寮費・ゴミの日・洗濯機), và 声かけ động viên đúng lúc.

---

## Tình huống 1 — Trên tàu Narita Express · 5:00, quan sát 先輩 dặn dò trước khi đón kohai

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>緊張<rt>きんちょう</rt></ruby>してる?<br>*(Hoa-san, có hồi hộp không?)* |
| Hoa | <ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<ruby>初<rt>はじ</rt></ruby>めての<ruby>後輩<rt>こうはい</rt></ruby>ですから。<br>*(Em hơi hồi hộp ạ. Vì là kohai đầu tiên.)* |
| Suzuki | <ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じでした。<ruby>初対面<rt>しょたいめん</rt></ruby>は、いつも<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Năm ngoái tôi cũng vậy. Lần đầu gặp ai, lúc nào cũng hồi hộp.)* |
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby>さん、コツはありますか?<br>*(Anh Suzuki, có bí quyết gì không ạ?)* |
| Suzuki | <ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>いち</rt></ruby>、<ruby>笑顔<rt>えがお</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる。<ruby>二<rt>に</rt></ruby>、<ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>で<ruby>話<rt>はな</rt></ruby>す。<ruby>三<rt>さん</rt></ruby>、ゆっくり<ruby>話<rt>はな</rt></ruby>す。これを「やさしい<ruby>日本語<rt>にほんご</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Có ba điều. Một, mỉm cười. Hai, nói câu ngắn. Ba, nói chậm. Đó gọi là "yasashii nihongo".)* |
| Hoa | やさしい<ruby>日本語<rt>にほんご</rt></ruby>...というのは、<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>日本語<rt>にほんご</rt></ruby>ということですか?<br>*(Yasashii nihongo... tức là tiếng Nhật đơn giản ạ?)* |
| Suzuki | そうです。<ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>わない。<ruby>一<rt>いち</rt></ruby><ruby>文<rt>ぶん</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つの<ruby>意味<rt>いみ</rt></ruby>だけ。マイさんはN5ですから、これが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Không dùng từ khó. Một câu chỉ một ý. Mai-san trình độ N5 nên điều này quan trọng.)* |
| Hoa | はい、<ruby>意識<rt>いしき</rt></ruby>します。<br>*(Vâng, em sẽ ý thức.)* |

---

## Tình huống 2 — Cửa ra Narita · 6:45, đứng cầm bảng đón kohai

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>看板<rt>かんばん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>立<rt>た</rt></ruby>ってください。「マイさん」と<ruby>書<rt>か</rt></ruby>いてありますね。<br>*(Hoa-san, em cầm bảng đứng đi. Có viết "Mai-san" rồi nhỉ.)* |
| Hoa | はい。(cầm bảng đứng thẳng) <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>鈴木<rt>すずき</rt></ruby>さんが「ホアさん」と<ruby>書<rt>か</rt></ruby>いた<ruby>看板<rt>かんばん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていましたね。<br>*(Vâng. Một năm trước, anh Suzuki đã cầm bảng viết "Hoa-san" nhỉ.)* |
| Suzuki | <ruby>覚<rt>おぼ</rt></ruby>えていますか。<ruby>同<rt>おな</rt></ruby>じことを、<ruby>今度<rt>こんど</rt></ruby>はホアさんがやるんですよ。<br>*(Em vẫn nhớ à. Việc đó lần này Hoa-san làm đấy.)* |
| Hoa | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。マイさんが<ruby>来<rt>き</rt></ruby>たら、<ruby>何<rt>なに</rt></ruby>から<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Vâng, em sẽ cố. Mai-san đến rồi thì em nên nói gì trước ạ?)* |
| Suzuki | まず<ruby>名前<rt>なまえ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>に「はじめまして」と<ruby>自己紹介<rt>じこしょうかい</rt></ruby>。<ruby>最後<rt>さいご</rt></ruby>に「<ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま」。この<ruby>順番<rt>じゅんばん</rt></ruby>です。<br>*(Đầu tiên xác nhận tên. Tiếp theo "rất hân hạnh" và tự giới thiệu. Cuối cùng "đường xa vất vả rồi". Theo thứ tự này.)* |
| Hoa | <ruby>確認<rt>かくにん</rt></ruby>→<ruby>自己紹介<rt>じこしょうかい</rt></ruby>→ねぎらいですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Xác nhận → tự giới thiệu → an ủi nhỉ. Em hiểu rồi.)* |

---

## Tình huống 3 — Cửa ra Narita · 6:50, lần đầu gặp Mai

Một cô gái nhỏ nhắn, tóc buộc đuôi ngựa, mắt đỏ vì khóc trên máy bay, kéo vali to.

| Vai | Lời thoại |
|---|---|
| Mai | (rụt rè tiến lại) あの... ホアさんですか?<br>*(Ờ... có phải chị Hoa không ạ?)* |
| Hoa | (cười, đặt bảng xuống) はい、ホアです。マイさんですね?<br>*(Vâng, chị là Hoa. Em là Mai phải không?)* |
| Mai | はい、マイです。はじめまして。<br>*(Vâng, em là Mai. Rất hân hạnh.)* |
| Hoa | はじめまして、ホアです。<ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Rất hân hạnh, chị là Hoa. Đường xa vất vả rồi nhé.)* |
| Mai | ありがとう...ございます。<br>*(Em cảm ơn... ạ.)* |
| Suzuki | はじめまして、<ruby>鈴木<rt>すずき</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>会社<rt>かいしゃ</rt></ruby>のスタッフです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh, tôi là Suzuki. Nhân viên công ty. Mong em chỉ giáo.)* |
| Mai | (cúi đầu) <ruby>鈴木<rt>すずき</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Suzuki, mong anh chỉ giáo.)* |
| Suzuki | <ruby>荷物<rt>にもつ</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちしましょうか?<br>*(Để tôi xách hành lý giúp nhé?)* |
| Mai | いえ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>運<rt>はこ</rt></ruby>べます。<br>*(Dạ không, em ổn ạ. Em tự xách được.)* |

---

## Tình huống 4 — Trên xe về Saitama · 7:30, hỏi đáp đơn giản theo やさしい日本語

Hoa ngồi cạnh Mai ở ghế sau. Suzuki lái.

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>飛行機<rt>ひこうき</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか?<br>*(Mai-san, đi máy bay có ổn không?)* |
| Mai | はい... でも<ruby>少<rt>すこ</rt></ruby>し<ruby>怖<rt>こわ</rt></ruby>かったです。<ruby>初<rt>はじ</rt></ruby>めてですから。<br>*(Vâng... nhưng hơi sợ. Vì lần đầu ạ.)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じでした。マイさんは、どこから<ruby>来<rt>き</rt></ruby>ましたか?<br>*(Năm ngoái chị cũng vậy. Mai-san đến từ đâu?)* |
| Mai | カントー(Cần Thơ)から<ruby>来<rt>き</rt></ruby>ました。<ruby>南<rt>みなみ</rt></ruby>です。<br>*(Em từ Cần Thơ đến. Miền Nam ạ.)* |
| Hoa | あ、カントー!<ruby>私<rt>わたし</rt></ruby>はハノイ(Hà Nội)です。<ruby>北<rt>きた</rt></ruby>と<ruby>南<rt>みなみ</rt></ruby>ですね。<br>*(À, Cần Thơ! Chị từ Hà Nội. Bắc và Nam nhỉ.)* |
| Mai | でも、<ruby>今<rt>いま</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>場所<rt>ばしょ</rt></ruby>ですね。<br>*(Nhưng bây giờ thì cùng một chỗ nhỉ.)* |
| Hoa | はい、<ruby>埼玉<rt>さいたま</rt></ruby>です。<ruby>東京<rt>とうきょう</rt></ruby>の<ruby>隣<rt>となり</rt></ruby>です。<ruby>静<rt>しず</rt></ruby>かで、<ruby>住<rt>す</rt></ruby>みやすいですよ。<br>*(Vâng, Saitama. Bên cạnh Tokyo. Yên tĩnh, dễ sống lắm.)* |
| Mai | <ruby>埼玉<rt>さいたま</rt></ruby>...<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Saitama... em sẽ nhớ.)* |
| Hoa | <ruby>会社<rt>かいしゃ</rt></ruby>までは<ruby>車<rt>くるま</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ぐらいかかります。<ruby>眠<rt>ねむ</rt></ruby>かったら、<ruby>寝<rt>ね</rt></ruby>てもいいですよ。<br>*(Đến công ty đi xe mất khoảng 2 tiếng. Buồn ngủ thì cứ ngủ nhé.)* |
| Mai | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị.)* |

---

## Tình huống 5 — Trên xe · 8:30, Suzuki phản hồi cho Hoa khi Mai ngủ gật

Mai ngủ. Suzuki nói nhỏ với Hoa.

| Vai | Lời thoại |
|---|---|
| Suzuki | (giọng nhỏ) ホアさん、さっきの<ruby>話<rt>はな</rt></ruby>し<ruby>方<rt>かた</rt></ruby>、<ruby>上手<rt>じょうず</rt></ruby>でしたね。<br>*(Hoa-san, cách em nói chuyện vừa rồi, giỏi lắm.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>緊張<rt>きんちょう</rt></ruby>していました。<br>*(Thật ạ? Em đang căng thẳng lắm.)* |
| Suzuki | <ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>、ゆっくり、<ruby>笑顔<rt>えがお</rt></ruby>。やさしい<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>三<rt>みっ</rt></ruby>つのポイントが<ruby>全部<rt>ぜんぶ</rt></ruby>できていました。<br>*(Câu ngắn, chậm rãi, mỉm cười. Ba điểm của yasashii nihongo em đều làm được.)* |
| Hoa | <ruby>意識<rt>いしき</rt></ruby>していました。「<ruby>南<rt>みなみ</rt></ruby>から<ruby>来<rt>き</rt></ruby>ました」のように、<ruby>主語<rt>しゅご</rt></ruby>と<ruby>動詞<rt>どうし</rt></ruby>だけにしました。<br>*(Em có ý thức ạ. Như "đến từ miền Nam", em chỉ dùng chủ ngữ và động từ.)* |
| Suzuki | <ruby>正解<rt>せいかい</rt></ruby>です。あと<ruby>一<rt>ひと</rt></ruby>つコツがあります。マイさんが<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>った<ruby>時<rt>とき</rt></ruby>、<ruby>怒<rt>おこ</rt></ruby>らないで、<ruby>言<rt>い</rt></ruby>い<ruby>換<rt>か</rt></ruby>えてあげてください。<br>*(Đúng. Còn một mẹo nữa. Khi em dùng từ Mai không hiểu, đừng cau có, hãy nói lại bằng từ khác.)* |
| Hoa | <ruby>言<rt>い</rt></ruby>い<ruby>換<rt>か</rt></ruby>えるというのは?<br>*(Nói lại bằng từ khác... nghĩa là sao ạ?)* |
| Suzuki | <ruby>例<rt>たと</rt></ruby>えば「<ruby>住<rt>す</rt></ruby>みやすい」が<ruby>難<rt>むずか</rt></ruby>しかったら、「<ruby>住<rt>す</rt></ruby>むのが<ruby>楽<rt>らく</rt></ruby>」と<ruby>言<rt>い</rt></ruby>い<ruby>直<rt>なお</rt></ruby>す。<ruby>同<rt>おな</rt></ruby>じ<ruby>意味<rt>いみ</rt></ruby>を、もっと<ruby>簡単<rt>かんたん</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>で<ruby>言<rt>い</rt></ruby>うことです。<br>*(Ví dụ "dễ sống" mà khó hiểu thì nói lại "sống thoải mái". Cùng một ý, nhưng dùng từ đơn giản hơn.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。メモしておきます。<br>*(Em hiểu rồi. Em ghi lại.)* |

---

## Tình huống 6 — Đến ký túc · 10:30, Putri chào đón kohai mới

Putri đứng đợi ở cửa với một hộp bánh.

| Vai | Lời thoại |
|---|---|
| Putri | おかえりなさい!マイちゃん、はじめまして!プトゥリです!<br>*(Mừng về! Mai-chan, rất hân hạnh! Chị là Putri!)* |
| Mai | (hơi giật mình) あ... はじめまして。マイです。<br>*(À... rất hân hạnh. Em là Mai.)* |
| Putri | インドネシアから<ruby>来<rt>き</rt></ruby>ました!よろしくね!<br>*(Chị đến từ Indonesia! Mong em chỉ giáo nhé!)* |
| Mai | インドネシア!<ruby>遠<rt>とお</rt></ruby>いですね。<br>*(Indonesia! Xa nhỉ.)* |
| Putri | これ、お<ruby>菓子<rt>かし</rt></ruby>です。<ruby>食<rt>た</rt></ruby>べてくださいね。<br>*(Đây, bánh. Em ăn nhé.)* |
| Mai | ありがとうございます。<br>*(Em cảm ơn chị ạ.)* |
| Hoa | プトゥリ、いつ<ruby>準備<rt>じゅんび</rt></ruby>したの?<br>*(Putri, chuẩn bị từ khi nào vậy?)* |
| Putri | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>!マイちゃんが<ruby>来<rt>く</rt></ruby>るから。マイちゃん、<ruby>嬉<rt>うれ</rt></ruby>しい?<br>*(Tối hôm qua! Vì Mai-chan đến mà. Mai-chan, có vui không?)* |
| Mai | はい... <ruby>嬉<rt>うれ</rt></ruby>しいです。みなさん、<ruby>優<rt>やさ</rt></ruby>しいです。<br>*(Vâng... em vui. Mọi người dịu dàng quá.)* |

---

## Tình huống 7 — Phòng Mai · 11:00, Hoa hướng dẫn quy tắc 寮費 và phòng

Hoa giúp Mai dỡ vali. Phòng cũ của chị Linh.

| Vai | Lời thoại |
|---|---|
| Hoa | ここがマイさんの<ruby>部屋<rt>へや</rt></ruby>です。<ruby>6<rt>ろく</rt></ruby><ruby>畳<rt>じょう</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>人部屋<rt>にんべや</rt></ruby>です。<br>*(Đây là phòng của Mai-san. 6 chiếu, phòng một người.)* |
| Mai | <ruby>広<rt>ひろ</rt></ruby>いです。お<ruby>金<rt>かね</rt></ruby>は<ruby>高<rt>たか</rt></ruby>くないですか?<br>*(Rộng quá. Tiền không đắt sao ạ?)* |
| Hoa | <ruby>寮費<rt>りょうひ</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>天引<rt>てんび</rt></ruby>きされます。<br>*(Tiền ký túc 30.000 yên một tháng. Trừ thẳng vào lương.)* |
| Mai | <ruby>天引<rt>てんび</rt></ruby>き...というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Tenbiki... nghĩa là gì ạ?)* |
| Hoa | <ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>自動的<rt>じどうてき</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>かれることです。<ruby>自分<rt>じぶん</rt></ruby>で<ruby>払<rt>はら</rt></ruby>わなくてもいいです。<br>*(Là tự động bị trừ khỏi tiền lương. Em không cần tự đóng.)* |
| Mai | あ、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>便利<rt>べんり</rt></ruby>ですね。<br>*(À, em hiểu rồi. Tiện nhỉ.)* |
| Hoa | <ruby>洗濯機<rt>せんたくき</rt></ruby>と<ruby>共用<rt>きょうよう</rt></ruby>キッチンは<ruby>1<rt>いっ</rt></ruby><ruby>階<rt>かい</rt></ruby>です。<ruby>後<rt>あと</rt></ruby>で<ruby>案内<rt>あんない</rt></ruby>します。<br>*(Máy giặt và bếp dùng chung ở tầng 1. Lát nữa chị dẫn xuống.)* |
| Mai | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em nhờ chị.)* |
| Hoa | これは<ruby>寮<rt>りょう</rt></ruby>のルール<ruby>表<rt>ひょう</rt></ruby>です。<ruby>夜<rt>よる</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>静<rt>しず</rt></ruby>かにしてください。<br>*(Đây là bảng nội quy ký túc. Sau 10 giờ tối phải giữ yên lặng.)* |
| Mai | <ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>静<rt>しず</rt></ruby>か、ですね。メモします。<br>*(Sau 10 giờ giữ yên lặng nhỉ. Em ghi lại.)* |

---

## Tình huống 8 — Bếp ký túc · 12:00, ba người ăn trưa cùng nhau

Putri làm bún Indonesia.

| Vai | Lời thoại |
|---|---|
| Putri | これ、インドネシアの<ruby>麺<rt>めん</rt></ruby>です。マイちゃん、<ruby>辛<rt>から</rt></ruby>いの<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Đây, bún Indonesia. Mai-chan, cay có ổn không?)* |
| Mai | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ベトナム<ruby>料理<rt>りょうり</rt></ruby>も<ruby>辛<rt>から</rt></ruby>いです。<br>*(Vâng, ổn ạ. Đồ Việt Nam cũng cay mà.)* |
| Putri | じゃあ、<ruby>食<rt>た</rt></ruby>べて<ruby>食<rt>た</rt></ruby>べて!<br>*(Vậy ăn đi ăn đi!)* |
| Mai | (ăn một miếng) おいしい!<br>*(Ngon quá!)* |
| Hoa | プトゥリは<ruby>料理<rt>りょうり</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>だね。<br>*(Putri nấu ăn giỏi nhỉ.)* |
| Putri | <ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>してるから!マイちゃんは<ruby>料理<rt>りょうり</rt></ruby>できる?<br>*(Vì chị luyện mỗi ngày! Mai-chan biết nấu ăn không?)* |
| Mai | <ruby>少<rt>すこ</rt></ruby>しできます。<ruby>料理<rt>りょうり</rt></ruby>、<ruby>好<rt>す</rt></ruby>きです。<br>*(Em biết một chút. Em thích nấu ăn.)* |
| Hoa | じゃあ、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りましょう。マイさんはベトナム<ruby>料理<rt>りょうり</rt></ruby>、プトゥリはインドネシア<ruby>料理<rt>りょうり</rt></ruby>。<br>*(Vậy tuần sau ba đứa cùng nấu nhé. Mai-san làm món Việt, Putri làm món Indo.)* |
| Mai & Putri | はい!<br>*(Vâng!)* |

---

## Tình huống 9 — Phòng giặt tầng 1 · 14:00, Hoa hướng dẫn máy giặt + làm mẫu

| Vai | Lời thoại |
|---|---|
| Hoa | これが<ruby>洗濯機<rt>せんたくき</rt></ruby>です。<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えます。<br>*(Đây là máy giặt. Chị dạy cách dùng.)* |
| Mai | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em nhờ chị.)* |
| Hoa | (vừa thao tác, vừa nói) <ruby>一<rt>いち</rt></ruby>、<ruby>服<rt>ふく</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<ruby>二<rt>に</rt></ruby>、<ruby>洗剤<rt>せんざい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<ruby>三<rt>さん</rt></ruby>、ボタンを<ruby>押<rt>お</rt></ruby>します。<br>*(Một, cho quần áo vào. Hai, cho bột giặt vào. Ba, bấm nút.)* |
| Mai | すみません、<ruby>洗剤<rt>せんざい</rt></ruby>...というのは?<br>*(Xin lỗi, senzai... nghĩa là gì ạ?)* |
| Hoa | <ruby>洗剤<rt>せんざい</rt></ruby>は<ruby>服<rt>ふく</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>うときに<ruby>使<rt>つか</rt></ruby>う<ruby>液体<rt>えきたい</rt></ruby>です。ここにあります。<ruby>赤<rt>あか</rt></ruby>いラベルです。<br>*(Sentai là chất lỏng dùng khi giặt quần áo. Ở đây này. Nhãn màu đỏ.)* |
| Mai | あ、<ruby>分<rt>わ</rt></ruby>かりました。「<ruby>服<rt>ふく</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>う<ruby>液体<rt>えきたい</rt></ruby>」ですね。<br>*(À, em hiểu rồi. "Chất lỏng giặt quần áo" nhỉ.)* |
| Hoa | <ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>が<ruby>二<rt>ふた</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>夜<rt>よる</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>使<rt>つか</rt></ruby>えません。<ruby>音<rt>おと</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいですから。<br>*(Có hai điểm cần lưu ý. Thứ nhất, sau 10 giờ tối không dùng được. Vì tiếng to.)* |
| Mai | はい、<ruby>夜<rt>よる</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>まで、ですね。<br>*(Vâng, trước 10 giờ tối nhỉ.)* |
| Hoa | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>白<rt>しろ</rt></ruby>い<ruby>服<rt>ふく</rt></ruby>と<ruby>色<rt>いろ</rt></ruby>つきの<ruby>服<rt>ふく</rt></ruby>は<ruby>分<rt>わ</rt></ruby>けて<ruby>洗<rt>あら</rt></ruby>ってください。<br>*(Thứ hai, đồ trắng và đồ màu phải giặt riêng.)* |
| Mai | <ruby>分<rt>わ</rt></ruby>けて...というのは、<ruby>別々<rt>べつべつ</rt></ruby>に<ruby>洗<rt>あら</rt></ruby>うということですか?<br>*(Wakete... tức là giặt riêng từng cái phải không ạ?)* |
| Hoa | そうです、<ruby>別々<rt>べつべつ</rt></ruby>です。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>洗<rt>あら</rt></ruby>うと、<ruby>白<rt>しろ</rt></ruby>い<ruby>服<rt>ふく</rt></ruby>に<ruby>色<rt>いろ</rt></ruby>がつきます。<br>*(Đúng, riêng từng cái. Giặt chung thì đồ trắng sẽ bị nhuộm màu.)* |
| Mai | あ、<ruby>分<rt>わ</rt></ruby>かりました!<br>*(À, em hiểu rồi!)* |

---

## Tình huống 10 — Trước cửa phòng Mai · 14:30, dạy lịch đổ rác

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なのは「ゴミの<ruby>日<rt>ひ</rt></ruby>」です。<ruby>間違<rt>まちが</rt></ruby>えると<ruby>大家<rt>おおや</rt></ruby>さんに<ruby>怒<rt>おこ</rt></ruby>られます。<br>*(Mai-san, quan trọng nhất là "ngày đổ rác". Sai là chủ nhà mắng đấy.)* |
| Mai | <ruby>怖<rt>こわ</rt></ruby>い... <ruby>教<rt>おし</rt></ruby>えてください。<br>*(Sợ quá... chị dạy em với.)* |
| Hoa | <ruby>月<rt>げつ</rt></ruby><ruby>曜日<rt>ようび</rt></ruby>、<ruby>水<rt>すい</rt></ruby><ruby>曜日<rt>ようび</rt></ruby>、<ruby>金<rt>きん</rt></ruby><ruby>曜日<rt>ようび</rt></ruby>は<ruby>燃<rt>も</rt></ruby>えるゴミです。<br>*(Thứ Hai, Tư, Sáu là rác cháy được.)* |
| Mai | <ruby>燃<rt>も</rt></ruby>えるゴミ...というのは?<br>*(Moeru gomi... nghĩa là gì ạ?)* |
| Hoa | <ruby>火<rt>ひ</rt></ruby>で<ruby>燃<rt>も</rt></ruby>やせるゴミです。<ruby>紙<rt>かみ</rt></ruby>、<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>のゴミ、ティッシュなど。<br>*(Rác cháy được bằng lửa. Giấy, rác thức ăn, giấy ăn...)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi.)* |
| Hoa | <ruby>火<rt>か</rt></ruby><ruby>曜日<rt>ようび</rt></ruby>は<ruby>資源<rt>しげん</rt></ruby>ゴミ。ペットボトルと<ruby>缶<rt>かん</rt></ruby>です。<ruby>木<rt>もく</rt></ruby><ruby>曜日<rt>ようび</rt></ruby>は<ruby>燃<rt>も</rt></ruby>えないゴミです。<br>*(Thứ Ba là rác tài nguyên. Chai nhựa và lon. Thứ Năm là rác không cháy.)* |
| Mai | <ruby>多<rt>おお</rt></ruby>くて、<ruby>覚<rt>おぼ</rt></ruby>えられるかな...<br>*(Nhiều quá, có nhớ nổi không nhỉ...)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。これ、<ruby>表<rt>ひょう</rt></ruby>です。ドアに<ruby>貼<rt>は</rt></ruby>ってください。<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>見<rt>み</rt></ruby>れば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Không sao. Đây, bảng đây. Dán lên cửa nhé. Sáng nào nhìn cũng được.)* |
| Mai | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị.)* |
| Hoa | <ruby>間違<rt>まちが</rt></ruby>えても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えました。<br>*(Sai cũng không sao. Lúc đầu chị cũng sai 3 lần.)* |
| Mai | (cười nhẹ) <ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Thật ạ?)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>です。だから<ruby>心配<rt>しんぱい</rt></ruby>しないでね。<br>*(Thật mà. Nên đừng lo nhé.)* |

---

## Tình huống 11 — Phòng Mai · 18:00, Mai gọi điện về VN (cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — Mai gọi điện về cho mẹ, ôn lại từ vựng JP đã học qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Mẹ ơi, con đến nơi rồi. Nghe được không? |
| Mẹ Mai | (tiếng Việt) Nghe rõ con ạ. Có khoẻ không? Sao trông mắt đỏ thế? |
| Mai | (tiếng Việt) Con khoẻ. Trên máy bay con khóc một tí. Nhưng chị Hoa người Hà Nội ra đón, dễ thương lắm mẹ. |
| Mẹ Mai | (tiếng Việt) Thế công ty cho ở đâu? Ăn uống thế nào? |
| Mai | (tiếng Việt) Ký túc xá phòng riêng 6 chiếu, sạch sẽ. Tiền nhà 30.000 yên, gọi là 寮費, bị 天引き — tức là trừ thẳng vào lương, con không phải tự đóng. Tiện lắm mẹ. |
| Mẹ Mai | (tiếng Việt) Ờ, ờ. Còn gì khó nhớ không con? |
| Mai | (tiếng Việt) Cái lịch đổ rác — ゴミの日 — phức tạp lắm. Thứ Hai-Tư-Sáu rác cháy, Thứ Ba rác tài nguyên (chai lon), Thứ Năm rác không cháy. Chị Hoa cho con tờ bảng dán lên cửa rồi. |
| Mẹ Mai | (tiếng Việt) Ừ, sai là chủ nhà mắng đấy. Cẩn thận con nhé. |
| Mai | (tiếng Việt) Vâng. Chị Hoa bảo chị cũng sai 3 lần lúc đầu nên con đỡ sợ rồi. Mẹ bảo bố là con ổn nhé. |
| Mẹ Mai | (tiếng Việt) Ừ. Bố lo lắm, nhưng yên tâm rồi. Ngủ sớm con, mai có khoá học 講習会 phải không? |
| Mai | (tiếng Việt) Vâng, 3 ngày khoá OTIT. Con ngủ đây ạ. |

---

## Tình huống 12 — Bếp ký túc · 19:00, Hoa 声かけ động viên kohai lúc lo lắng

Putri đi học tiếng Nhật buổi tối. Hai cô gái Việt Nam ăn cơm nhỏ.

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>明日<rt>あした</rt></ruby>から<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>、<ruby>講習会<rt>こうしゅうかい</rt></ruby>があります。<br>*(Mai-san, từ mai có 3 ngày koushuukai.)* |
| Mai | <ruby>講習会<rt>こうしゅうかい</rt></ruby>...というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Koushuukai... là gì ạ?)* |
| Hoa | OTITが<ruby>説明<rt>せつめい</rt></ruby>する<ruby>勉強<rt>べんきょう</rt></ruby>です。<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>仕事<rt>しごと</rt></ruby>のルール、<ruby>日本<rt>にほん</rt></ruby>の<ruby>生活<rt>せいかつ</rt></ruby>のルールを<ruby>教<rt>おし</rt></ruby>えてくれます。<br>*(Là khoá học do OTIT giảng. Quan trọng. Họ dạy quy tắc làm việc và quy tắc sinh hoạt ở Nhật.)* |
| Mai | <ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>後<rt>ご</rt></ruby>から<ruby>工場<rt>こうじょう</rt></ruby>ですね?<br>*(Sau 3 ngày là đến nhà máy nhỉ?)* |
| Hoa | はい。マイさん、<ruby>不安<rt>ふあん</rt></ruby>ですか?<br>*(Vâng. Mai-san, có lo không?)* |
| Mai | <ruby>少<rt>すこ</rt></ruby>し...<ruby>仕事<rt>しごと</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Một chút... công việc khó không ạ?)* |
| Hoa | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいです。でも、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>慣<rt>な</rt></ruby>れますよ。<br>*(Lúc đầu khó. Nhưng từ từ sẽ quen.)* |
| Mai | ホアさんも、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しかったですか?<br>*(Chị Hoa lúc đầu cũng thấy khó ạ?)* |
| Hoa | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>泣<rt>な</rt></ruby>いていました。<ruby>本当<rt>ほんとう</rt></ruby>です。<br>*(1 năm trước, ngày nào chị cũng khóc. Thật đấy.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Thật ạ?)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>です。だから、マイさんも<ruby>泣<rt>な</rt></ruby>いてもいいですよ。<ruby>困<rt>こま</rt></ruby>ったら、いつでも<ruby>呼<rt>よ</rt></ruby>んでください。<ruby>私<rt>わたし</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>は<ruby>隣<rt>となり</rt></ruby>です。<br>*(Thật. Nên Mai-san khóc cũng được nhé. Có gì khó cứ gọi chị. Phòng chị bên cạnh.)* |
| Mai | (mắt rưng rưng) ありがとうございます、ホア<ruby>姉<rt>ねえ</rt></ruby>さん。<br>*(Em cảm ơn chị... chị Hoa.)* |
| Hoa | (giật mình, mỉm cười) あ、<ruby>姉<rt>ねえ</rt></ruby>さん!<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(À, "chị"! Vui quá.)* |

---

## Tình huống 13 — Trước cửa phòng Mai · 21:00, おやすみ trước khi ngủ

| Vai | Lời thoại |
|---|---|
| Hoa | (gõ cửa nhẹ) マイさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Mai-san, có ổn không?)* |
| Mai | はい...ありがとうございます。<br>*(Vâng... cảm ơn chị.)* |
| Hoa | <ruby>明日<rt>あした</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>起<rt>お</rt></ruby>きます。<ruby>朝<rt>あさ</rt></ruby>ごはんは<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べましょう。<br>*(Mai 6 giờ dậy nhé. Bữa sáng mình cùng ăn.)* |
| Mai | <ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(6 giờ, em hiểu rồi.)* |
| Hoa | <ruby>困<rt>こま</rt></ruby>ったら、ドアをノックしてください。<br>*(Có gì khó thì gõ cửa nhé.)* |
| Mai | はい。おやすみなさい、ホア<ruby>姉<rt>ねえ</rt></ruby>さん。<br>*(Vâng. Ngủ ngon, chị Hoa.)* |
| Hoa | おやすみなさい、マイさん。<br>*(Ngủ ngon, Mai-san.)* |

---

## Tình huống 14 — Phòng Hoa · 21:30, nhắn LINE cho chị Linh (cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt qua LINE — Hoa báo cáo chị Linh sempai cũ, ôn lại từ vựng JP.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Chị Linh ơi, Mai-san đến rồi. |
| Linh | (tiếng Việt) Ô tốt quá! Em nó thế nào? |
| Hoa | (tiếng Việt) Trầm tính, hơi rụt rè, nhưng ngoan lắm chị. Trên máy bay nó khóc, mắt còn đỏ. |
| Linh | (tiếng Việt) Năm ngoái mày cũng vậy đấy. Đón đúng pattern Suzuki-san dạy không? |
| Hoa | (tiếng Việt) Có. Em cầm bảng "マイさん" như anh Suzuki năm ngoái. Anh ấy dạy em やさしい日本語 — câu ngắn, chậm, cười. Trên xe em áp dụng thật, Suzuki-san khen em xong. |
| Linh | (tiếng Việt) Giỏi rồi. Còn nó gọi mày là gì? |
| Hoa | (tiếng Việt) Lúc đầu "ホアさん", đến tối thì gọi "ホア姉さん" rồi. Em vui muốn khóc luôn. |
| Linh | (tiếng Việt) Chúc mừng, sempai! Nhớ dạy nó 寮費・天引き với ゴミの日 cẩn thận, sai ゴミの日 là ăn mắng đấy. |
| Hoa | (tiếng Việt) Em làm rồi chị, in cả bảng dán cửa luôn. Mai bắt đầu 講習会 OTIT 3 ngày, xong là vào xưởng. |
| Linh | (tiếng Việt) Ừ, có gì cứ nhắn chị. Tháng 3 sang năm chị tính sang chơi, gặp Mai-san luôn. |
| Hoa | (tiếng Việt) Vâng, em chờ chị. |

---

## Đọng lại chương 2

Ngày đầu Mai đến Saitama, Hoa lần đầu đứng vị trí sempai và học được các mẫu câu chuẩn của một đàn chị năm 2. Trước hết là **やさしい日本語** — câu ngắn, một câu một ý, nói chậm, kèm nụ cười — kỹ thuật giao tiếp bắt buộc với kohai N5. Tiếp đến là quy trình tự giới thiệu chuẩn **確認 → 自己紹介 → ねぎらい** (xác nhận tên → はじめまして → 長旅お疲れさま). Khi kohai dùng từ chưa hiểu, Hoa quan sát 鈴木 sempai và học cách **言い換える** — nói lại bằng từ đơn giản hơn (vd "住みやすい" → "住むのが楽"); chính Mai cũng dùng `〜というのは?` để hỏi lại các từ **天引き・洗剤・分ける・燃えるゴミ・講習会**. Hoa hướng dẫn kohai bộ quy tắc sinh hoạt cốt lõi: **寮費 3 万円・天引き・洗濯機の使い方・ゴミの日 (月水金 燃えるゴミ・火 資源ゴミ・木 燃えないゴミ)**. Và quan trọng nhất là **声かけ động viên**: "**泣いてもいいですよ**", "**困ったら呼んでください**" — cho phép kohai có cảm xúc. Phần thưởng: tối hôm đó Mai gọi Hoa là "ホア**姉**さん" — dấu hiệu lòng tin đã được xây.

> Từ vựng & mẫu câu chương này: 看板・長旅・初対面・自己紹介・はじめまして・お疲れさまでした・やさしい日本語・言い換える・〜というのは・短い文・ゆっくり話す・笑顔・寮費・天引き・共用キッチン・洗濯機・洗剤・分ける・燃えるゴミ・資源ゴミ・燃えないゴミ・ゴミの日・講習会・OTIT・姉さん・困ったら呼んでください・泣いてもいいですよ・一文に一つの意味

---

## Bí quyết chương

- Lặp lại hình mẫu đàn anh cũ: cách 鈴木 đón Hoa năm ngoái → cách Hoa đón Mai năm nay.
- "やさしい日本語" = 3 ポイント: câu ngắn + ngôn từ đơn giản + nói chậm + cười.
- Khi kohai gọi "姉さん/chị" lần đầu = dấu hiệu đã xây được lòng tin.
- Sempai tốt là sempai cho phép kohai "泣いてもいい" — có không gian để có cảm xúc.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 初対面 | しょたいめん | SƠ ĐỐI DIỆN | Lần đầu gặp mặt |
| 笑顔 | えがお | TIẾU NHAN | Nụ cười |
| 短い文 | みじかいぶん | ĐOẢN VĂN | Câu ngắn |
| 意味 | いみ | Ý VỊ | Ý nghĩa |
| 意識 | いしき | Ý THỨC | Ý thức, để tâm |
| 看板 | かんばん | KHÁN BẢN | Biển/bảng (cầm đón khách) |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | Tự giới thiệu |
| 長旅 | ながたび | TRƯỜNG LỮ | Hành trình dài |
| 申す | もうす | THÂN | Nói (khiêm nhường) |
| 荷物 | にもつ | HÀ VẬT | Hành lý |
| 飛行機 | ひこうき | PHI HÀNH CƠ | Máy bay |
| 場所 | ばしょ | TRƯỜNG SỞ | Nơi chốn |
| 隣 | となり | LÂN | Bên cạnh |
| 主語 | しゅご | CHỦ NGỮ | Chủ ngữ |
| 動詞 | どうし | ĐỘNG TỪ | Động từ |
| 正解 | せいかい | CHÍNH GIẢI | Đáp án đúng |
| 言い換える | いいかえる | NGÔN HOÁN | Nói lại bằng từ khác |
| 言い直す | いいなおす | NGÔN TRỰC | Nói lại |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 菓子 | かし | QUẢ TỬ | Bánh kẹo |
| 部屋 | へや | BỘ ỐC | Phòng |
| 寮費 | りょうひ | LIÊU PHÍ | Tiền ký túc |
| 給料 | きゅうりょう | CẤP LIỆU | Lương |
| 天引き | てんびき | THIÊN DẪN | Trừ thẳng (vào lương) |
| 自動的 | じどうてき | TỰ ĐỘNG ĐÍCH | Tự động |
| 便利 | べんり | TIỆN LỢI | Tiện lợi |
| 洗濯機 | せんたくき | TẨY TRẠCH CƠ | Máy giặt |
| 共用 | きょうよう | CỘNG DỤNG | Dùng chung |
| 以降 | いこう | DĨ GIÁNG | Sau (mốc thời gian) |
| 料理 | りょうり | LIỆU LÝ | Món ăn, nấu ăn |
| 洗剤 | せんざい | TẨY TỄ | Bột giặt, nước giặt |
| 液体 | えきたい | DỊCH THỂ | Chất lỏng |
| 注意点 | ちゅういてん | CHÚ Ý ĐIỂM | Điểm cần lưu ý |
| 別々 | べつべつ | BIỆT BIỆT | Riêng từng cái |
| 大家 | おおや | ĐẠI GIA | Chủ nhà |
| 燃えるゴミ | もえるゴミ | NHIÊN | Rác cháy được |
| 資源ゴミ | しげんゴミ | TƯ NGUYÊN | Rác tài nguyên |
| 燃えないゴミ | もえないゴミ | NHIÊN | Rác không cháy |
| 表 | ひょう | BIỂU | Bảng |
| 心配 | しんぱい | TÂM PHỐI | Lo lắng |
| 講習会 | こうしゅうかい | GIẢNG TẬP HỘI | Khoá học tập huấn (OTIT) |
| 生活 | せいかつ | SINH HOẠT | Sinh hoạt |
| 最初 | さいしょ | TỐI SƠ | Lúc đầu |
| 姉さん | ねえさん | TỶ | Chị |
| 玄関 | げんかん | HUYỀN QUAN | Sảnh, cửa ra vào |
| 別人 | べつじん | BIỆT NHÂN | Người khác hẳn |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000003, 800000012, NULL, 'markdown_book', 'T3. Hoa dạy Mai vệ sinh nhà máy (マイさんに衛生を教える)', '# Sách thực tập sinh thực phẩm · T3. Hoa dạy Mai vệ sinh nhà máy (マイさんに衛生を教える)

> **Mục tiêu nhân vật:** Hoa (sempai năm 2, nhà máy thực phẩm Aichi) lần đầu được giao kèm Mai — đàn em mới sang. Học các mẫu câu **dạy lại đàn em bằng やさしい日本語**: chào hỏi đàn em mới (おはよう・朝ご飯食べた?), giảng giải 10 bước thay đồng phục食品工場 (順番・ステップ), hướng dẫn quy trình **二度洗い** + mẹo hát ABC, sửa sai lễ độ khi đàn em làm sai bước **手袋** (ちょっと待って・誰でも最初は間違える), giải thích **9 allergen** và **検便** chuyên ngành, hỏi thăm đàn em mệt cuối ca (疲れた? · 当然です), và báo cáo lại sempai khi được khen (褒められて嬉しかったです).

---

## Bối cảnh

Đầu tháng 6 năm 2027. Mai (em họ Hoa, vừa qua khoá講習会 OTIT 3 ngày, có 在留カード) chính thức vào nhà máy thực phẩm ở Aichi cùng Hoa. Trình độ tiếng Nhật Hoa N3, Mai N5. Hoa được tổ trưởng Satou giao kèm Mai tuần đầu — phải truyền lại quy trình **vệ sinh thực phẩm** Hoa từng được dạy năm ngoái. Chương này tập trung các mẫu câu **dạy đàn em bằng やさしい日本語** + xác nhận đàn em đã hiểu + nhận phản hồi từ cấp trên.

---

## Tình huống 1 — Phòng Hoa · 5:00 sáng, tự nhủ trước giờ dạy đàn em

| Vai | Lời thoại |
|---|---|
| Hoa | (mở sổ tay 指導員 chị Takahashi tặng) <ruby>今日<rt>きょう</rt></ruby>はマイさんに<ruby>衛生<rt>えいせい</rt></ruby>のルールを<ruby>教<rt>おし</rt></ruby>える<ruby>日<rt>ひ</rt></ruby>です。<br>*(Hôm nay là ngày mình dạy Mai-san các quy tắc vệ sinh.)* |
| Hoa | やさしい<ruby>日本語<rt>にほんご</rt></ruby>で、ゆっくり、<ruby>何度<rt>なんど</rt></ruby>も<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Mình sẽ giải thích bằng yasashii Japanese, chậm rãi, lặp lại nhiều lần.)* |
| Hoa | <ruby>厳<rt>きび</rt></ruby>しくしすぎないで、マイさんが<ruby>安心<rt>あんしん</rt></ruby>できるように<ruby>声<rt>こえ</rt></ruby>をかけます。<br>*(Không nghiêm khắc quá, mình sẽ lên tiếng để Mai-san yên tâm.)* |
| Hoa | <ruby>去年<rt>きょねん</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれたように、<ruby>今日<rt>きょう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がマイさんに<ruby>恩返<rt>おんがえ</rt></ruby>しします。<br>*(Như anh Satou đã dạy mình năm ngoái, hôm nay mình sẽ đáp ơn lại với Mai-san.)* |

---

## Tình huống 2 — Bếp ký túc · 5:30, chào hỏi đàn em mới và mời ăn sáng

| Vai | Lời thoại |
|---|---|
| Mai | おはようございます、ホア<ruby>姉<rt>ねえ</rt></ruby>さん。<br>*(Chào buổi sáng, chị Hoa.)* |
| Hoa | おはよう、マイさん。<ruby>朝<rt>あさ</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>、もう<ruby>食<rt>た</rt></ruby>べた?<br>*(Chào buổi sáng, Mai. Ăn sáng chưa?)* |
| Mai | まだです。<br>*(Chưa ạ.)* |
| Hoa | パンがあるから、<ruby>食<rt>た</rt></ruby>べてね。<ruby>今日<rt>きょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>長<rt>なが</rt></ruby>いから、お<ruby>腹<rt>なか</rt></ruby>がすくよ。<br>*(Có bánh mì, ăn đi nhé. Công việc hôm nay dài, sẽ đói đấy.)* |
| Mai | はい。ホア<ruby>姉<rt>ねえ</rt></ruby>さんは?<br>*(Vâng. Còn chị Hoa?)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>もパンとコーヒー。<ruby>簡単<rt>かんたん</rt></ruby>でいいの。<br>*(Chị cũng bánh mì với cà phê. Đơn giản là được rồi.)* |
| Mai | <ruby>毎日<rt>まいにち</rt></ruby>パンですか? ベトナムのお<ruby>米<rt>こめ</rt></ruby>、<ruby>恋<rt>こい</rt></ruby>しいです。<br>*(Ngày nào cũng bánh mì ạ? Em nhớ cơm Việt Nam.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かるよ。<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>炊飯器<rt>すいはんき</rt></ruby>でご<ruby>飯<rt>はん</rt></ruby>を<ruby>炊<rt>た</rt></ruby>こう。<br>*(Chị hiểu mà. Cuối tuần cùng nấu cơm bằng nồi cơm điện nhé.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>ですか? <ruby>嬉<rt>うれ</rt></ruby>しい!<br>*(Thật ạ? Em vui quá!)* |
| Hoa | じゃあ、<ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>に<ruby>玄関<rt>げんかん</rt></ruby>に<ruby>集合<rt>しゅうごう</rt></ruby>ね。<ruby>遅<rt>おく</rt></ruby>れないようにね。<br>*(Vậy 6h15 tập trung ở sảnh nhé. Đừng đến muộn nhé.)* |

---

## Tình huống 3 — Nhà máy phòng thay đồ · 6:30, giới thiệu đồng phục trắng và lý do

| Vai | Lời thoại |
|---|---|
| Hoa | これがマイさんの<ruby>制服<rt>せいふく</rt></ruby>です。サイズはMで<ruby>合<rt>あ</rt></ruby>っているはずです。<br>*(Đây là đồng phục của Mai. Cỡ M chắc vừa rồi.)* |
| Mai | <ruby>真<rt>ま</rt></ruby><ruby>っ白<rt>しろ</rt></ruby>ですね。<br>*(Trắng tinh ạ.)* |
| Hoa | はい、<ruby>食品工場<rt>しょくひんこうじょう</rt></ruby>はみんな<ruby>白<rt>しろ</rt></ruby>です。<br>*(Vâng, ở nhà máy thực phẩm ai cũng mặc trắng.)* |
| Mai | なぜ<ruby>白<rt>しろ</rt></ruby>ですか?<br>*(Vì sao lại trắng ạ?)* |
| Hoa | <ruby>汚<rt>よご</rt></ruby>れがついたら、すぐに<ruby>分<rt>わ</rt></ruby>かるからです。<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>場所<rt>ばしょ</rt></ruby>だから、<ruby>清潔<rt>せいけつ</rt></ruby>がいちばん<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Vì nếu bám bẩn thì sẽ thấy ngay. Vì là nơi làm thực phẩm, sạch sẽ là quan trọng nhất.)* |
| Mai | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi ạ.)* |
| Hoa | <ruby>着替<rt>きが</rt></ruby>える<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>10<rt>じゅっ</rt></ruby>ステップあります。<ruby>今<rt>いま</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えていきましょう。<br>*(Trình tự thay đồ có 10 bước. Bây giờ cùng nhớ từng bước nhé.)* |
| Mai | <ruby>10<rt>じゅっ</rt></ruby>ステップ... <ruby>多<rt>おお</rt></ruby>いですね。<ruby>覚<rt>おぼ</rt></ruby>えられるかな。<br>*(10 bước... nhiều quá. Không biết em có nhớ nổi không.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>もゆっくりやるから、<ruby>分<rt>わ</rt></ruby>からないところは<ruby>何度<rt>なんど</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Không sao. Chị làm chậm thôi, chỗ nào không hiểu cứ hỏi lại nhiều lần nhé.)* |

---

## Tình huống 4 — Phòng thay đồ · 6:40, Hoa làm mẫu 5 bước đầu

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>一<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>外<rt>そと</rt></ruby>の<ruby>靴<rt>くつ</rt></ruby>を<ruby>脱<rt>ぬ</rt></ruby>いで、<ruby>工場<rt>こうじょう</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>靴<rt>くつ</rt></ruby>に<ruby>履<rt>は</rt></ruby>き<ruby>替<rt>か</rt></ruby>えます。<br>*(Bước 1, cởi giày ngoài, đổi sang giày dùng riêng trong xưởng.)* |
| Mai | <ruby>靴<rt>くつ</rt></ruby>が<ruby>2<rt>ふた</rt></ruby>つあるんですか?<br>*(Có 2 đôi giày ạ?)* |
| Hoa | はい、<ruby>外<rt>そと</rt></ruby>の<ruby>汚<rt>よご</rt></ruby>れを<ruby>中<rt>なか</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>まないためです。<ruby>二<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>はマットの<ruby>上<rt>うえ</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>いて、<ruby>足<rt>あし</rt></ruby>のホコリを<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng, để không mang bẩn từ ngoài vào trong. Bước 2 là đi qua thảm để lấy bụi ở chân.)* |
| Mai | <ruby>足<rt>あし</rt></ruby>の<ruby>下<rt>した</rt></ruby>のホコリも<ruby>気<rt>き</rt></ruby>をつけるんですね。<br>*(Cả bụi dưới chân cũng phải chú ý nhỉ.)* |
| Hoa | そうです。<ruby>三<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>は<ruby>制服<rt>せいふく</rt></ruby>に<ruby>着替<rt>きが</rt></ruby>えます。<ruby>四<rt>よん</rt></ruby><ruby>番<rt>ばん</rt></ruby>は<ruby>帽子<rt>ぼうし</rt></ruby>。<ruby>髪<rt>かみ</rt></ruby>の<ruby>毛<rt>け</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(Đúng. Bước 3 là thay đồng phục. Bước 4 là mũ. Cho toàn bộ tóc vào trong mũ.)* |
| Mai | <ruby>髪<rt>かみ</rt></ruby>の<ruby>毛<rt>け</rt></ruby>が<ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>でも<ruby>出<rt>で</rt></ruby>たらダメですか?<br>*(Tóc thò ra 1 sợi cũng không được ạ?)* |
| Hoa | ダメです。<ruby>髪<rt>かみ</rt></ruby>の<ruby>毛<rt>け</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>で<ruby>商品<rt>しょうひん</rt></ruby>がリコールになることもあります。<br>*(Không được. 1 sợi tóc thôi cũng có thể khiến sản phẩm phải thu hồi.)* |
| Mai | <ruby>怖<rt>こわ</rt></ruby>いですね...<br>*(Sợ nhỉ...)* |
| Hoa | <ruby>慣<rt>な</rt></ruby>れるよ。<ruby>五<rt>ご</rt></ruby><ruby>番<rt>ばん</rt></ruby>はマスクです。<ruby>鼻<rt>はな</rt></ruby>と<ruby>口<rt>くち</rt></ruby>を<ruby>両方<rt>りょうほう</rt></ruby><ruby>覆<rt>おお</rt></ruby>ってください。<br>*(Sẽ quen thôi. Bước 5 là khẩu trang. Phải che cả mũi lẫn miệng nhé.)* |

---

## Tình huống 5 — Phòng thay đồ · 6:50, Hoa làm mẫu 5 bước sau và mẹo ローラー

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>六<rt>ろく</rt></ruby><ruby>番<rt>ばん</rt></ruby>はエプロン、<ruby>七<rt>なな</rt></ruby><ruby>番<rt>ばん</rt></ruby>は<ruby>長靴<rt>ながぐつ</rt></ruby>です。<br>*(Bước 6 là tạp dề, bước 7 là ủng dài.)* |
| Mai | (đeo theo từng bước) ここまで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Đến đây em ổn.)* |
| Hoa | <ruby>八<rt>はち</rt></ruby><ruby>番<rt>ばん</rt></ruby>は<ruby>粘着<rt>ねんちゃく</rt></ruby>ローラーで<ruby>体<rt>からだ</rt></ruby>を<ruby>転<rt>ころ</rt></ruby>がします。こうやって、<ruby>上<rt>うえ</rt></ruby>から<ruby>下<rt>した</rt></ruby>まで、ゆっくり。<br>*(Bước 8 là dùng con lăn dính lăn lên người. Làm như này, từ trên xuống dưới, chậm thôi.)* |
| Mai | これも<ruby>毎日<rt>まいにち</rt></ruby>やるんですか?<br>*(Cái này cũng làm hằng ngày ạ?)* |
| Hoa | はい、<ruby>毎日<rt>まいにち</rt></ruby>です。<ruby>髪<rt>かみ</rt></ruby>の<ruby>毛<rt>け</rt></ruby>と<ruby>糸<rt>いと</rt></ruby>くずを<ruby>取<rt>と</rt></ruby>るためで、すごく<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Vâng, hằng ngày. Để lấy tóc và sợi vải, rất quan trọng.)* |
| Hoa | <ruby>九<rt>きゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>は<ruby>手<rt>て</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>って、<ruby>消毒<rt>しょうどく</rt></ruby>して、<ruby>手袋<rt>てぶくろ</rt></ruby>をつけます。<ruby>十<rt>じゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>はエアシャワーに<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>入<rt>はい</rt></ruby>ります。<br>*(Bước 9 là rửa tay, khử trùng, đeo găng. Bước 10 là vào buồng thổi khí 30 giây.)* |
| Mai | はぁー、<ruby>全部<rt>ぜんぶ</rt></ruby>で<ruby>何<rt>なん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>かかりますか?<br>*(Hà, tất cả mất bao nhiêu phút ạ?)* |
| Hoa | <ruby>6<rt>ろっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ぐらいです。<ruby>毎日<rt>まいにち</rt></ruby>やれば<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Khoảng 6 phút. Làm hằng ngày thì cơ thể sẽ tự nhớ.)* |

---

## Tình huống 6 — Phòng thay đồ · 7:00, Mai sai thứ tự 手袋 — Hoa sửa lễ độ

| Vai | Lời thoại |
|---|---|
| Mai | (vừa đeo tạp dề xong, cầm găng tay định đeo luôn)<br> |
| Hoa | あ、マイさん、ちょっと<ruby>待<rt>ま</rt></ruby>って!<br>*(À, Mai, chờ chị một chút!)* |
| Mai | え? <ruby>何<rt>なに</rt></ruby>か<ruby>間違<rt>まちが</rt></ruby>えましたか?<br>*(Ơ? Em làm sai gì ạ?)* |
| Hoa | <ruby>手袋<rt>てぶくろ</rt></ruby>はいちばん<ruby>最後<rt>さいご</rt></ruby>です。<ruby>手<rt>て</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>った<ruby>後<rt>あと</rt></ruby>につけますよ。<br>*(Găng tay là sau cùng. Đeo sau khi rửa tay nhé.)* |
| Mai | あっ、すみません! <ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れました。<br>*(Ôi, em xin lỗi! Em quên mất thứ tự ạ.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>間違<rt>まちが</rt></ruby>えるよ。<ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby><ruby>同<rt>おな</rt></ruby>じところで<ruby>間違<rt>まちが</rt></ruby>えました。<br>*(Không sao, ai lúc đầu cũng sai thôi. Năm ngoái chị cũng sai đúng chỗ này.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Thật ạ?)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>です。じゃあ、なぜ<ruby>手袋<rt>てぶくろ</rt></ruby>が<ruby>最後<rt>さいご</rt></ruby>か<ruby>考<rt>かんが</rt></ruby>えてみて。<br>*(Thật mà. Vậy thử nghĩ xem, vì sao găng tay lại để cuối nhé.)* |
| Mai | えっと... <ruby>手<rt>て</rt></ruby>がまだ<ruby>汚<rt>きたな</rt></ruby>いから?<br>*(Ừm... vì tay vẫn còn bẩn ạ?)* |
| Hoa | <ruby>正解<rt>せいかい</rt></ruby>! <ruby>先<rt>さき</rt></ruby>に<ruby>手<rt>て</rt></ruby>をきれいに<ruby>洗<rt>あら</rt></ruby>って、それから<ruby>清潔<rt>せいけつ</rt></ruby>な<ruby>手袋<rt>てぶくろ</rt></ruby>をつけます。<br>*(Đúng rồi! Rửa tay sạch trước, rồi mới đeo găng sạch.)* |
| Mai | わかりました。もう<ruby>一度<rt>いちど</rt></ruby><ruby>最初<rt>さいしょ</rt></ruby>からやってみます。<br>*(Em hiểu rồi. Em sẽ thử lại từ đầu.)* |

---

## Tình huống 7 — Bồn rửa tay · 7:15, Hoa làm mẫu 二度洗い với mẹo ABC

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>次<rt>つぎ</rt></ruby>は<ruby>手<rt>て</rt></ruby>の<ruby>洗<rt>あら</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。これがいちばん<ruby>大事<rt>だいじ</rt></ruby>かもしれません。<br>*(Tiếp theo là cách rửa tay. Có lẽ đây là phần quan trọng nhất.)* |
| Mai | はい、よく<ruby>見<rt>み</rt></ruby>ています。<br>*(Vâng, em đang nhìn kỹ ạ.)* |
| Hoa | これを「<ruby>二度洗<rt>にどあら</rt></ruby>い」と<ruby>言<rt>い</rt></ruby>います。<ruby>三<rt>みっ</rt></ruby>つのステップです。<br>*(Cái này gọi là "二度洗い". Có ba bước.)* |
| Mai | すみません、「<ruby>二度洗<rt>にどあら</rt></ruby>い」というのは?<br>*(Xin lỗi, "二度洗い" nghĩa là gì ạ?)* |
| Hoa | <ruby>手<rt>て</rt></ruby>を<ruby>二<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>洗<rt>あら</rt></ruby>うという<ruby>意味<rt>いみ</rt></ruby>です。<ruby>一<rt>いっ</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>はせっけんで<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>二<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>もせっけんで<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>にアルコール<ruby>消毒<rt>しょうどく</rt></ruby>です。<br>*(Nghĩa là rửa tay 2 lần. Lần 1 dùng xà phòng 30 giây, lần 2 cũng xà phòng 30 giây, cuối cùng khử trùng bằng cồn.)* |
| Mai | <ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>はどうやって<ruby>計<rt>はか</rt></ruby>りますか?<br>*(30 giây thì đếm thế nào ạ?)* |
| Hoa | コツがあるよ。<ruby>心<rt>こころ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で「ABCの<ruby>歌<rt>うた</rt></ruby>」を<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>歌<rt>うた</rt></ruby>うと、ちょうど<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>になります。<br>*(Có mẹo nhé. Trong đầu hát bài "ABC" 2 lần, vừa đúng 30 giây.)* |
| Mai | ABCの<ruby>歌<rt>うた</rt></ruby>! <ruby>子<rt>こ</rt></ruby>どもの<ruby>時<rt>とき</rt></ruby><ruby>習<rt>なら</rt></ruby>いました。<br>*(Bài hát ABC! Hồi nhỏ em đã học.)* |
| Hoa | じゃあ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。<ruby>私<rt>わたし</rt></ruby>もずっとこの<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っています。<br>*(Vậy là ổn rồi. Chị cũng dùng cách này từ trước đến nay.)* |

---

## Tình huống 8 — Bồn rửa tay · 7:20, Mai thử lần 1 chưa đủ — Hoa khuyến khích

| Vai | Lời thoại |
|---|---|
| Mai | (rửa nhanh, hát ABC trong đầu, xong sớm) <ruby>終<rt>お</rt></ruby>わりました!<br>*(Em xong rồi!)* |
| Hoa | <ruby>何<rt>なん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>ぐらいだったと<ruby>思<rt>おも</rt></ruby>う?<br>*(Em nghĩ là khoảng bao nhiêu giây?)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりません... <ruby>速<rt>はや</rt></ruby>すぎましたか?<br>*(Em không biết... có nhanh quá không ạ?)* |
| Hoa | だいたい<ruby>15<rt>じゅうご</rt></ruby><ruby>秒<rt>びょう</rt></ruby>ぐらいだったよ。もうちょっと<ruby>長<rt>なが</rt></ruby>く<ruby>洗<rt>あら</rt></ruby>おう。<br>*(Khoảng 15 giây thôi. Mình rửa lâu hơn chút nhé.)* |
| Mai | すみません、もう<ruby>一度<rt>いちど</rt></ruby>やります。<br>*(Em xin lỗi, em làm lại lần nữa.)* |
| Hoa | <ruby>今度<rt>こんど</rt></ruby>はABCを<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>歌<rt>うた</rt></ruby>ってみて。<ruby>速<rt>はや</rt></ruby>さが<ruby>分<rt>わ</rt></ruby>かるよ。<br>*(Lần này hát ABC thành tiếng đi. Sẽ biết được tốc độ.)* |
| Mai | <ruby>恥<rt>は</rt></ruby>ずかしいです...<br>*(Ngại quá ạ...)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>今<rt>いま</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>もいないから。<ruby>私<rt>わたし</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歌<rt>うた</rt></ruby>うよ。<br>*(Không sao đâu, giờ không có ai. Chị hát cùng cho.)* |
| Mai | はい、やってみます。<br>*(Vâng, em thử.)* |

---

## Tình huống 9 — Bồn rửa tay · 7:25, Kimura quan sát rồi khen (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Kimura | (đứng xa quan sát một lúc, rồi tiến lại) ホアさん、お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Hoa-san, vất vả rồi.)* |
| Hoa | あ、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです!<br>*(À, chị Kimura, em xin chào!)* |
| Mai | (cúi đầu) お<ruby>疲<rt>つか</rt></ruby>れさまです。マイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em chào chị. Em tên là Mai. Mong chị chỉ bảo ạ.)* |
| Kimura | はじめまして、<ruby>木村<rt>きむら</rt></ruby>です。ホア<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、どうですか?<br>*(Lần đầu gặp, tôi là Kimura. Cách dạy của chị Hoa thế nào?)* |
| Mai | やさしくて、ゆっくり<ruby>説明<rt>せつめい</rt></ruby>してくれるので、<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Chị dịu dàng, giải thích chậm rãi nên dễ hiểu lắm ạ.)* |
| Kimura | そうですか。ホアさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>になりましたね。<ruby>去年<rt>きょねん</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>のホアさんとは<ruby>別人<rt>べつじん</rt></ruby>みたい。<br>*(Vậy à. Hoa-san, em dạy giỏi lên thật rồi đấy. Khác hẳn cô bé mới năm ngoái.)* |
| Hoa | (đỏ mặt) ありがとうございます...<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれたのと<ruby>同<rt>おな</rt></ruby>じやり<ruby>方<rt>かた</rt></ruby>でやっているだけです。<br>*(Em cảm ơn ạ... Em chỉ làm theo đúng cách anh Satou đã dạy em.)* |
| Kimura | それが<ruby>大事<rt>だいじ</rt></ruby>。マイさん、ホア<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>言<rt>い</rt></ruby>うことをよく<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Đó mới là điều quan trọng. Mai-san, hãy lắng nghe kỹ lời chị Hoa nhé.)* |
| Mai | はい、しっかり<ruby>勉強<rt>べんきょう</rt></ruby>します!<br>*(Vâng, em sẽ học chăm chỉ ạ!)* |

---

## Tình huống 10 — Bồn rửa tay · 7:35, Mai rửa đủ 30 giây — thành công

| Vai | Lời thoại |
|---|---|
| Mai | (rửa, thầm hát ABC 2 lần đầy đủ) <ruby>終<rt>お</rt></ruby>わりました!<br>*(Em xong rồi!)* |
| Hoa | (xem đồng hồ bấm giờ) ちょうど<ruby>30<rt>さんじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>! <ruby>完璧<rt>かんぺき</rt></ruby>です!<br>*(Đúng 30 giây! Hoàn hảo!)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>ですか? <ruby>嬉<rt>うれ</rt></ruby>しいです!<br>*(Thật ạ? Em vui quá!)* |
| Hoa | <ruby>次<rt>つぎ</rt></ruby>はもう<ruby>一度<rt>いちど</rt></ruby>、<ruby>二<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じようにやってください。<br>*(Tiếp theo lần 2. Làm giống như vậy nhé.)* |
| Mai | (rửa lần 2) はい、<ruby>終<rt>お</rt></ruby>わりました!<br>*(Vâng, em xong rồi!)* |
| Hoa | <ruby>上手<rt>じょうず</rt></ruby>! <ruby>最後<rt>さいご</rt></ruby>にアルコールを<ruby>吹<rt>ふ</rt></ruby>きかけて、よく<ruby>乾<rt>かわ</rt></ruby>かしてから<ruby>手袋<rt>てぶくろ</rt></ruby>をつけます。<br>*(Giỏi! Cuối cùng xịt cồn, để khô rồi mới đeo găng tay nhé.)* |
| Mai | (xịt cồn, đeo găng) できました!<br>*(Em làm được rồi!)* |
| Hoa | <ruby>完璧<rt>かんぺき</rt></ruby>です! <ruby>初日<rt>しょにち</rt></ruby>でこれだけできたら<ruby>立派<rt>りっぱ</rt></ruby>ですよ。<br>*(Hoàn hảo! Ngày đầu mà làm được đến vậy là quá giỏi rồi.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さんのおかげです。ありがとうございます!<br>*(Nhờ chị Hoa cả ạ. Em cảm ơn chị!)* |

---

## Tình huống 11 — Phòng QC · 13:00, Hoa giảng 9 allergen bắt buộc ghi label

| Vai | Lời thoại |
|---|---|
| Hoa | (dẫn Mai đến bảng dán allergen) これも<ruby>絶対<rt>ぜったい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてほしいです。<ruby>9<rt>きゅう</rt></ruby>つの<ruby>食材<rt>しょくざい</rt></ruby>のリストです。<br>*(Cái này cũng phải nhớ tuyệt đối. Là danh sách 9 nguyên liệu.)* |
| Mai | アレルギーですか?<br>*(Là dị ứng ạ?)* |
| Hoa | はい。この<ruby>9<rt>きゅう</rt></ruby>つの<ruby>食材<rt>しょくざい</rt></ruby>は、<ruby>商品<rt>しょうひん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っていたら<ruby>必<rt>かなら</rt></ruby>ずラベルに<ruby>書<rt>か</rt></ruby>かなければなりません。「<ruby>表示<rt>ひょうじ</rt></ruby><ruby>義務<rt>ぎむ</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng. 9 nguyên liệu này, nếu có trong sản phẩm thì bắt buộc phải ghi trên nhãn. Gọi là "表示義務".)* |
| Mai | <ruby>表示<rt>ひょうじ</rt></ruby><ruby>義務<rt>ぎむ</rt></ruby>... どんな<ruby>食材<rt>しょくざい</rt></ruby>ですか?<br>*(Hyouji gimu... là những nguyên liệu gì ạ?)* |
| Hoa | <ruby>卵<rt>たまご</rt></ruby>、<ruby>乳<rt>にゅう</rt></ruby>、<ruby>小麦<rt>こむぎ</rt></ruby>、そば、<ruby>落花生<rt>らっかせい</rt></ruby>、えび、かに、くるみ、それからカシューナッツです。<br>*(Trứng, sữa, lúa mì, kiều mạch, đậu phộng, tôm, cua, óc chó, và hạt điều.)* |
| Mai | カシューナッツも<ruby>入<rt>はい</rt></ruby>っているんですね。<br>*(Cả hạt điều cũng có ạ.)* |
| Hoa | <ruby>去年<rt>きょねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>追加<rt>ついか</rt></ruby>されました。ベトナムのお<ruby>菓子<rt>かし</rt></ruby>にはよく<ruby>入<rt>はい</rt></ruby>っていますよね。<br>*(Được thêm vào từ tháng 4 năm ngoái. Bánh kẹo Việt Nam hay có cái này nhỉ.)* |
| Mai | はい、たくさん<ruby>入<rt>はい</rt></ruby>っています。<br>*(Vâng, có nhiều lắm.)* |
| Hoa | だから<ruby>家<rt>いえ</rt></ruby>のお<ruby>菓子<rt>かし</rt></ruby>を<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>工場<rt>こうじょう</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>まないでください。アレルギーのある<ruby>人<rt>ひと</rt></ruby>に<ruby>混入<rt>こんにゅう</rt></ruby>したら<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わります。<br>*(Vì vậy tuyệt đối không mang bánh kẹo nhà vào nhà máy. Nếu lẫn vào sản phẩm và đến tay người dị ứng có thể nguy hiểm tính mạng.)* |
| Mai | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>みません。<br>*(Em hiểu rồi. Em sẽ tuyệt đối không mang vào.)* |

---

## Tình huống 12 — Phòng QC · 13:20, giải thích 検便 và xử lý 陽性

| Vai | Lời thoại |
|---|---|
| Hoa | もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>大事<rt>だいじ</rt></ruby>なことがあります。「<ruby>検便<rt>けんべん</rt></ruby>」です。<br>*(Còn một điều quan trọng nữa. Là "検便".)* |
| Mai | すみません、「<ruby>検便<rt>けんべん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "検便" là gì ạ?)* |
| Hoa | <ruby>毎月<rt>まいつき</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>便<rt>べん</rt></ruby>のサンプルを<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します。<ruby>悪<rt>わる</rt></ruby>い<ruby>菌<rt>きん</rt></ruby>がないか<ruby>調<rt>しら</rt></ruby>べるためです。<br>*(Mỗi tháng 1 lần, nộp mẫu phân cho công ty. Để kiểm tra xem có vi khuẩn xấu không.)* |
| Mai | え!? <ruby>恥<rt>は</rt></ruby>ずかしいです...<br>*(Ơ!? Ngại quá ạ...)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かるよ、<ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>びっくりしました。でも<ruby>食品工場<rt>しょくひんこうじょう</rt></ruby>では<ruby>必須<rt>ひっす</rt></ruby>です。<br>*(Chị hiểu mà, lúc đầu chị cũng bất ngờ. Nhưng ở nhà máy thực phẩm là bắt buộc.)* |
| Mai | どんな<ruby>菌<rt>きん</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べますか?<br>*(Kiểm tra loại vi khuẩn nào ạ?)* |
| Hoa | サルモネラ、O-<ruby>157<rt>いちごなな</rt></ruby>、<ruby>赤痢菌<rt>せきりきん</rt></ruby>です。<ruby>3<rt>みっ</rt></ruby>つとも<ruby>食中毒<rt>しょくちゅうどく</rt></ruby>を<ruby>起<rt>お</rt></ruby>こす<ruby>悪<rt>わる</rt></ruby>い<ruby>菌<rt>きん</rt></ruby>です。<br>*(Salmonella, O-157, và Shigella. Cả 3 đều là vi khuẩn gây ngộ độc thực phẩm.)* |
| Mai | もし<ruby>陽性<rt>ようせい</rt></ruby>だったらどうしますか?<br>*(Nếu dương tính thì sao ạ?)* |
| Hoa | すぐに<ruby>仕事<rt>しごと</rt></ruby>を<ruby>休<rt>やす</rt></ruby>んで<ruby>病院<rt>びょういん</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。<ruby>陰性<rt>いんせい</rt></ruby>になるまで<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>工場<rt>こうじょう</rt></ruby>に<ruby>来<rt>こ</rt></ruby>られません。<br>*(Lập tức nghỉ làm và đến bệnh viện. Đến khi âm tính mới được vào nhà máy lại.)* |
| Mai | <ruby>厳<rt>きび</rt></ruby>しいですね。でも<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>理由<rt>りゆう</rt></ruby>がよく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Nghiêm khắc thật ạ. Nhưng em hiểu lý do quan trọng rồi.)* |
| Hoa | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜日<rt>かようび</rt></ruby>に<ruby>容器<rt>ようき</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>すから、<ruby>家<rt>いえ</rt></ruby>で<ruby>採取<rt>さいしゅ</rt></ruby>して<ruby>水曜<rt>すいよう</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>に<ruby>持<rt>も</rt></ruby>ってきてね。<br>*(Thứ 3 tuần sau chị đưa ống, em lấy mẫu ở nhà rồi sáng thứ 4 mang đến nhé.)* |
| Mai | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |

---

## Tình huống 13 — Phòng giải lao · 15:00, Hoa hỏi đàn em có mệt không

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、ちょっと<ruby>座<rt>すわ</rt></ruby>って<ruby>休<rt>やす</rt></ruby>みましょう。<ruby>疲<rt>つか</rt></ruby>れたでしょう?<br>*(Mai, ngồi nghỉ một chút đi. Mệt rồi nhỉ?)* |
| Mai | はい... <ruby>少<rt>すこ</rt></ruby>し<ruby>頭<rt>あたま</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>くなってきました。<br>*(Vâng... em hơi đau đầu rồi ạ.)* |
| Hoa | <ruby>日本語<rt>にほんご</rt></ruby>を<ruby>長<rt>なが</rt></ruby>い<ruby>時間<rt>じかん</rt></ruby><ruby>聞<rt>き</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けたから、<ruby>当然<rt>とうぜん</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>、<ruby>頭<rt>あたま</rt></ruby>がパンクしそうでした。<br>*(Nghe tiếng Nhật liên tục lâu vậy nên đương nhiên thôi. Năm ngoái ngày đầu chị cũng thấy đầu sắp nổ tung.)* |
| Mai | <ruby>明日<rt>あした</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じくらい<ruby>大変<rt>たいへん</rt></ruby>ですか?<br>*(Ngày mai cũng vất vả như vậy ạ?)* |
| Hoa | <ruby>少<rt>すこ</rt></ruby>しずつ<ruby>楽<rt>らく</rt></ruby>になるよ。<ruby>体<rt>からだ</rt></ruby>が<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えれば、<ruby>考<rt>かんが</rt></ruby>えなくてもできるようになります。<br>*(Sẽ đỡ dần thôi. Khi cơ thể nhớ thứ tự rồi, không cần nghĩ cũng làm được.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えられるかな...<br>*(Không biết em có nhớ nổi không...)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>私<rt>わたし</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてね。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。<br>*(Không sao đâu. Có gì không hiểu cứ hỏi chị nhé. Đừng ngại.)* |
| Mai | はい、ありがとうございます。<br>*(Vâng, em cảm ơn chị ạ.)* |
| Hoa | お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んで、<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby><ruby>休<rt>やす</rt></ruby>もう。<br>*(Uống trà, nghỉ 10 phút nào.)* |

---

## Tình huống 14 — Phòng tổ trưởng · 17:00, Hoa báo cáo Satou theo 報連相

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>をしてもよろしいでしょうか?<br>*(Anh Satou, em báo cáo về hôm nay được không ạ?)* |
| Satou | はい、お<ruby>願<rt>ねが</rt></ruby>いします。マイさん、<ruby>初日<rt>しょにち</rt></ruby>どうでしたか?<br>*(Vâng, em báo cáo đi. Mai-san ngày đầu thế nào?)* |
| Hoa | <ruby>10<rt>じゅっ</rt></ruby>ステップの<ruby>着替<rt>きが</rt></ruby>えと<ruby>二度洗<rt>にどあら</rt></ruby>いはマスターできました。<ruby>9<rt>きゅう</rt></ruby>つのアレルゲンと<ruby>検便<rt>けんべん</rt></ruby>も<ruby>説明<rt>せつめい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Em đã dạy xong 10 bước thay đồ và 二度洗い. Cũng đã giải thích 9 allergen và 検便 ạ.)* |
| Satou | <ruby>早<rt>はや</rt></ruby>いですね。<ruby>手袋<rt>てぶくろ</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたか?<br>*(Nhanh đấy. Thứ tự găng tay có ổn không?)* |
| Hoa | <ruby>一度<rt>いちど</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えましたが、なぜ<ruby>最後<rt>さいご</rt></ruby>かを<ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えてもらったら、すぐに<ruby>理解<rt>りかい</rt></ruby>しました。<br>*(Em ấy sai một lần, nhưng khi để tự suy nghĩ vì sao găng tay là cuối thì hiểu ngay ạ.)* |
| Satou | いい<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですね。<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>からも<ruby>褒<rt>ほ</rt></ruby>められたと<ruby>聞<rt>き</rt></ruby>きましたよ。<br>*(Cách dạy hay đấy. Anh nghe nói cũng được chị Kimura khen?)* |
| Hoa | はい... とても<ruby>嬉<rt>うれ</rt></ruby>しかったです。<ruby>去年<rt>きょねん</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれたとおりに<ruby>説明<rt>せつめい</rt></ruby>しただけです。<br>*(Vâng... em vui lắm ạ. Em chỉ giải thích đúng như cách anh đã dạy em năm ngoái thôi.)* |
| Satou | それが<ruby>大切<rt>たいせつ</rt></ruby>なんです。<ruby>連絡<rt>れんらく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>は?<br>*(Đó mới là điều quan trọng. Liên lạc và bàn bạc thì sao?)* |
| Hoa | マイさんが<ruby>少<rt>すこ</rt></ruby>し<ruby>頭痛<rt>ずつう</rt></ruby>を<ruby>訴<rt>うった</rt></ruby>えていました。<ruby>明日<rt>あした</rt></ruby>はもう<ruby>少<rt>すこ</rt></ruby>し<ruby>休憩<rt>きゅうけい</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やしてもよろしいでしょうか?<br>*(Mai-san có nói hơi đau đầu. Mai em có thể tăng thêm thời gian nghỉ giải lao cho em ấy không ạ?)* |
| Satou | もちろん。<ruby>初日<rt>しょにち</rt></ruby>と<ruby>二日目<rt>ふつかめ</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>させないでください。<ruby>判断<rt>はんだん</rt></ruby>はホアさんに<ruby>任<rt>まか</rt></ruby>せます。<br>*(Đương nhiên. Ngày đầu và ngày 2 đừng để em ấy quá sức. Anh giao em quyền quyết định.)* |
| Hoa | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |

---

## Tình huống 15 — Phòng ký túc · 21:00, Hoa gọi điện về cho mẹ (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng chuyên ngành qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, hôm nay là ngày đầu Mai vào nhà máy. Con kèm em nó cả ngày. |
| Mẹ Hoa | (tiếng Việt) Mai có làm được không con? Mẹ lo nó lạ chỗ. |
| Hoa | (tiếng Việt) Được mẹ ạ. Em nó nhanh, một lần chỉ là hiểu liền. Có sai chỗ 手袋 — găng tay thôi, con bảo phải đeo cuối cùng sau khi rửa tay, em nó tự suy ra được lý do. |
| Mẹ Hoa | (tiếng Việt) Rửa tay phức tạp lắm hả con? |
| Hoa | (tiếng Việt) Vâng, 二度洗い — rửa hai lần, mỗi lần xà phòng 30 giây, rồi cồn. Con dạy em mẹo hát ABC hai lần để đếm đúng thời gian. Em nó cười, đỡ ngại. |
| Mẹ Hoa | (tiếng Việt) Con khéo đấy. |
| Hoa | (tiếng Việt) Chị Kimura — sempai khó tính nhất tổ — hôm nay khen con. Mẹ tưởng tượng đi, một năm trước con cũng từng quên thứ tự, suýt khóc. Giờ đứng được vị trí của anh Satou năm ngoái. |
| Mẹ Hoa | (tiếng Việt) Con cố giữ sức khỏe. Em Mai nó có than mệt gì không? |
| Hoa | (tiếng Việt) Có, em kêu đau đầu vì nghe tiếng Nhật cả ngày. Con đã 報連相 với anh Satou, mai sẽ tăng giờ nghỉ cho em. |
| Mẹ Hoa | (tiếng Việt) Còn mấy thứ phức tạp như xét nghiệm gì con bảo nữa? |
| Hoa | (tiếng Việt) 検便 — mỗi tháng nộp mẫu phân một lần để kiểm tra ba loại vi khuẩn: Salmonella, O-157, Shigella. Em Mai ngại lắm, con phải kể là con cũng từng ngại y như em. |
| Mẹ Hoa | (tiếng Việt) Ừ, dạy em bằng cách mình từng được dạy là tốt nhất. Ngủ sớm con. |
| Hoa | (tiếng Việt) Vâng mẹ. Con tắt máy đây. |

---

## Tình huống 16 — Phòng Hoa · 22:00, viết nhật ký tổng kết bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | (viết vào sổ) <ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>。マイさんの<ruby>初出勤<rt>はつしゅっきん</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>。<br>*(Ngày 5 tháng 6. Ngày Mai-san đi làm đầu tiên.)* |
| Hoa | (đọc thầm) やさしい<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby>ステップと<ruby>二度洗<rt>にどあら</rt></ruby>いを<ruby>教<rt>おし</rt></ruby>えることができました。<br>*(Mình đã dạy được 10 bước và 二度洗い bằng yasashii Japanese.)* |
| Hoa | <ruby>9<rt>きゅう</rt></ruby>つのアレルゲンと<ruby>検便<rt>けんべん</rt></ruby>もちゃんと<ruby>説明<rt>せつめい</rt></ruby>できました。<br>*(Cũng đã giải thích đầy đủ 9 allergen và 検便.)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に「<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>になった」と<ruby>褒<rt>ほ</rt></ruby>められました。<br>*(Được chị Kimura khen "cách dạy đã giỏi lên".)* |
| Hoa | マイさんに「ホア<ruby>先輩<rt>せんぱい</rt></ruby>」と<ruby>呼<rt>よ</rt></ruby>ばれて、<ruby>胸<rt>むね</rt></ruby>がいっぱいになりました。<br>*(Được Mai-san gọi là "chị Hoa", trong ngực tràn đầy cảm xúc.)* |
| Hoa | <ruby>去年<rt>きょねん</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>恩<rt>おん</rt></ruby>を、<ruby>今日<rt>きょう</rt></ruby><ruby>少<rt>すこ</rt></ruby>しだけ<ruby>返<rt>かえ</rt></ruby>せた<ruby>気<rt>き</rt></ruby>がします。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm thấy hôm nay đã đáp lại được một chút ơn anh Satou đã dạy mình năm ngoái. Từ giờ mình sẽ tiếp tục cố gắng.)* |

---

## Đọng lại chương 3

Hôm nay Hoa lần đầu đứng ở vị trí sempai dạy đàn em — và nhận ra dạy bằng **やさしい日本語** không phải là nói câu ngắn, mà là **chậm rãi + lặp lại + để đàn em tự suy nghĩ**. Hoa truyền lại trọn vẹn cho Mai: **10 ステップ着替え** (順番 đổi giày → mat lấy bụi → 制服 → 帽子 với髪 đều phải vào trong → mask → tạp dề → 長靴 → **粘着ローラー** → rửa tay → エアシャワー), quy trình **二度洗い** (30 giây × 2 lần xà phòng + cồn, mẹo hát ABC 2 lần), **9 allergen có 表示義務** (卵・乳・小麦・そば・落花生・えび・かに・くるみ・カシューナッツ), và **検便** mỗi tháng để loại trừ サルモネラ・O-157・赤痢菌. Quan trọng nhất, Hoa học các mẫu câu **sửa sai lễ độ** (ちょっと待って・誰でも最初は間違える), **hỏi thăm đàn em** (疲れた? · 当然です), và **報連相** đầy đủ với cấp trên Satou để xin tăng giờ nghỉ cho Mai. Sempai Kimura khen "教え方が上手になった" — câu khen đầu tiên Hoa nhận được trên đất Nhật cho vai trò người dạy lại, đúng nghĩa **恩返し** từ tay anh Satou năm trước.

> Từ vựng & mẫu câu chương này: やさしい日本語・食品工場・制服・10ステップ・粘着ローラー・エアシャワー・二度洗い・消毒・手袋・順番・表示義務・アレルゲン・卵・乳・小麦・そば・落花生・えび・かに・くるみ・カシューナッツ・検便・サルモネラ・O-157・赤痢菌・陽性・陰性・報連相・恩返し・ちょっと待って・誰でも最初は間違える・疲れた?・当然です・〜というのは・〜と申します

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 衛生 | えいせい | VỆ SINH | Vệ sinh |
| 厳しい | きびしい | NGHIÊM | Nghiêm khắc |
| 安心 | あんしん | AN TÂM | Yên tâm |
| 恩返し | おんがえし | ÂN PHẢN | Đáp ơn, báo đáp |
| 朝ご飯 | あさごはん | TRIÊU PHẠN | Bữa sáng |
| 炊飯器 | すいはんき | XUY PHẠN KHÍ | Nồi cơm điện |
| 集合 | しゅうごう | TẬP HỢP | Tập trung |
| 制服 | せいふく | CHẾ PHỤC | Đồng phục |
| 食品工場 | しょくひんこうじょう | THỰC PHẨM CÔNG TRƯỜNG | Nhà máy thực phẩm |
| 汚れ | よごれ | Ô | Vết bẩn |
| 清潔 | せいけつ | THANH KHIẾT | Sạch sẽ |
| 着替える | きがえる | TRỨ THẾ | Thay đồ |
| 帽子 | ぼうし | MẠO TỬ | Mũ |
| 髪の毛 | かみのけ | PHÁT MAO | Tóc |
| 商品 | しょうひん | THƯƠNG PHẨM | Sản phẩm |
| 両方 | りょうほう | LƯỠNG PHƯƠNG | Cả hai bên |
| 覆う | おおう | PHÚ | Che, phủ |
| 長靴 | ながぐつ | TRƯỜNG ỦNG | Ủng dài |
| 粘着 | ねんちゃく | NIÊM TRƯỚC | Dính (con lăn) |
| 糸くず | いとくず | TI | Sợi vải vụn |
| 消毒 | しょうどく | TIÊU ĐỘC | Khử trùng |
| 手袋 | てぶくろ | THỦ ĐẠI | Găng tay |
| 二度洗い | にどあらい | NHỊ ĐỘ TẨY | Rửa hai lần (quy trình rửa tay) |
| 方法 | ほうほう | PHƯƠNG PHÁP | Cách thức |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 食材 | しょくざい | THỰC TÀI | Nguyên liệu thực phẩm |
| 表示義務 | ひょうじぎむ | BIỂU THỊ NGHĨA VỤ | Nghĩa vụ ghi nhãn (allergen) |
| 卵 | たまご | NOÃN | Trứng |
| 乳 | にゅう | NHŨ | Sữa |
| 小麦 | こむぎ | TIỂU MẠCH | Lúa mì |
| 落花生 | らっかせい | LẠC HOA SINH | Đậu phộng |
| 追加 | ついか | TRUY GIA | Thêm vào |
| 持ち込む | もちこむ | TRÌ NHẬP | Mang vào |
| 混入 | こんにゅう | HỖN NHẬP | Lẫn vào |
| 命 | いのち | MỆNH | Tính mạng |
| 検便 | けんべん | KIỂM TIỆN | Xét nghiệm mẫu phân |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |
| 菌 | きん | KHUẨN | Vi khuẩn |
| 赤痢菌 | せきりきん | XÍCH LỴ KHUẨN | Vi khuẩn lỵ (Shigella) |
| 食中毒 | しょくちゅうどく | THỰC TRÚNG ĐỘC | Ngộ độc thực phẩm |
| 陽性 | ようせい | DƯƠNG TÍNH | Dương tính |
| 陰性 | いんせい | ÂM TÍNH | Âm tính |
| 病院 | びょういん | BỆNH VIỆN | Bệnh viện |
| 容器 | ようき | DUNG KHÍ | Hộp đựng |
| 採取 | さいしゅ | THÁI THỦ | Lấy mẫu |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | Đương nhiên |
| 遠慮 | えんりょ | VIỄN LỰ | Khách sáo, ngại ngần |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 報連相 | ほうれんそう | BÁO LIÊN TƯỚNG | Hou-ren-sou (báo cáo - liên lạc - bàn bạc) |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc |
| 頭痛 | ずつう | ĐẦU THỐNG | Đau đầu |
| 訴える | うったえる | TỐ | Than, phàn nàn |
| 休憩 | きゅうけい | HƯU KHẾ | Nghỉ giải lao |
| 判断 | はんだん | PHÁN ĐOÁN | Quyết định, phán đoán |
| 任せる | まかせる | NHIỆM | Giao phó |
| 初出勤 | はつしゅっきん | SƠ XUẤT CẦN | Ngày đi làm đầu tiên |
| 胸 | むね | HUNG | Ngực, lồng ngực |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000004, 800000012, NULL, 'markdown_book', 'T4. Mai mắc lỗi đầu tiên (マイさん、初めての失敗)', '# Sách thực tập sinh thực phẩm · T4. Mai mắc lỗi đầu tiên (マイさん、初めての失敗)

> **Mục tiêu nhân vật:** Hoa (năm 2, nhà máy bento Aichi) lần đầu đứng vai sempai khi kohai Mai phạm lỗi nhiễm dị vật ở dây chuyền. Học các mẫu hội thoại tiếng Nhật khi xử lý sự cố sản xuất: hô báo bất thường (異常です), báo cáo tình huống bằng kính ngữ (〜の疑いがございました), nhận một phần trách nhiệm chia với kohai (私の指導不足でもあります), hỏi lại lễ phép khi chưa rõ thuật ngữ (〜というのは?), điều phối 5 Why với cấp trên, và bảo vệ kohai trước 部長.

---

## Bối cảnh

Tháng 7 năm 2027, nhà máy bento ở Aichi. Hoa đã sang năm thứ 2 SSW, được Satou 先輩 giao kèm kohai mới là Mai (mới chính thức đứng dây chuyền topping 3 tuần). Mai quên kiểm tra một thùng nguyên liệu, một mảnh nhựa 2mm trôi vào khoảng 100 hộp cơm. Trình độ tiếng Nhật của Hoa N3, của Mai N4. Chương này tập trung mẫu câu phản ứng sự cố và mẫu câu sempai bảo vệ kohai trước cấp trên.

---

## Tình huống 1 — Dây chuyền topping A2 · 14:30, hô báo bất thường khi phát hiện dị vật

| Vai | Lời thoại |
|---|---|
| Mai | (dừng tay, hốt hoảng quay sang) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、ちょっと<ruby>来<rt>き</rt></ruby>てください!<br>*(Chị Hoa, chị qua đây một chút với em!)* |
| Hoa | どうした? <ruby>手<rt>て</rt></ruby>を<ruby>止<rt>と</rt></ruby>めていいよ。<br>*(Sao thế? Dừng tay được rồi.)* |
| Mai | <ruby>異物<rt>いぶつ</rt></ruby>です。<ruby>白<rt>しろ</rt></ruby>くて<ruby>小<rt>ちい</rt></ruby>さい<ruby>破片<rt>はへん</rt></ruby>が<ruby>原料<rt>げんりょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っていました。<br>*(Có dị vật ạ. Một mảnh nhỏ màu trắng lẫn trong nguyên liệu.)* |
| Hoa | <ruby>見<rt>み</rt></ruby>せて。…これはプラスチックだね。2ミリくらい。<br>*(Cho chị xem. … Cái này là nhựa nhỉ. Khoảng 2 mm.)* |
| Mai | ごめんなさい、<ruby>確認<rt>かくにん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れました!<br>*(Em xin lỗi, em đã quên kiểm tra!)* |
| Hoa | <ruby>謝<rt>あやま</rt></ruby>るのは<ruby>後<rt>あと</rt></ruby>。まずラインを<ruby>止<rt>と</rt></ruby>めて、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びましょう。<br>*(Xin lỗi để sau. Trước hết dừng dây chuyền, gọi anh Satou đã.)* |
| Mai | はい!<br>*(Vâng!)* |
| Hoa | (bấm nút dừng dây chuyền, hô to) <ruby>異常<rt>いじょう</rt></ruby>です! ラインA2、<ruby>停止<rt>ていし</rt></ruby>します!<br>*(Có bất thường! Dây chuyền A2, dừng máy!)* |

---

## Tình huống 2 — Đầu dây chuyền · 14:33, báo cáo sempai bằng cấu trúc 5W1H

| Vai | Lời thoại |
|---|---|
| Satou | (chạy đến) どうした、ホアさん。<br>*(Sao thế, Hoa-san.)* |
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いがあります。<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Satou, có nghi nhiễm dị vật. Em xin báo cáo.)* |
| Satou | はい、どうぞ。<br>*(Ừ, em nói đi.)* |
| Hoa | <ruby>本日<rt>ほんじつ</rt></ruby>14<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ふん</rt></ruby>、ラインA2でマイさんが<ruby>原料<rt>げんりょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>にプラスチック<ruby>片<rt>へん</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>しました。<ruby>大<rt>おお</rt></ruby>きさは<ruby>約<rt>やく</rt></ruby>2ミリです。<br>*(Lúc 14:30 hôm nay, ở dây chuyền A2, Mai-san phát hiện một mảnh nhựa trong nguyên liệu. Kích thước khoảng 2 mm.)* |
| Satou | <ruby>影響<rt>えいきょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby>?<br>*(Ảnh hưởng bao nhiêu sản phẩm?)* |
| Hoa | <ruby>通過<rt>つうか</rt></ruby>した<ruby>弁当<rt>べんとう</rt></ruby>は<ruby>約<rt>やく</rt></ruby>100<ruby>個<rt>こ</rt></ruby>です。すでにラインを<ruby>止<rt>と</rt></ruby>めました。<br>*(Số hộp cơm đã đi qua khoảng 100 hộp. Em đã dừng dây chuyền rồi.)* |
| Mai | (cúi đầu) <ruby>原料<rt>げんりょう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Em đã quên kiểm tra nguyên liệu. Em rất xin lỗi.)* |
| Satou | <ruby>分<rt>わ</rt></ruby>かった。100<ruby>個<rt>こ</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>隔離<rt>かくり</rt></ruby>。<ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。ホアさん、マイさんを<ruby>連<rt>つ</rt></ruby>れて<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Hiểu rồi. 100 hộp đó cách ly hết. Anh báo Tanaka-buchou. Hoa-san dẫn Mai-san đi cùng anh.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ.)* |

---

## Tình huống 3 — Hành lang trước phòng 部長 · 15:25, Hoa trấn an kohai sắp khóc

| Vai | Lời thoại |
|---|---|
| Mai | (mắt đỏ, run) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Chị Hoa ơi, em sợ quá.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>息<rt>いき</rt></ruby>を<ruby>吸<rt>す</rt></ruby>って。<br>*(Không sao. Hít thở đi.)* |
| Mai | <ruby>初<rt>はじ</rt></ruby>めての<ruby>失敗<rt>しっぱい</rt></ruby>です。<ruby>解雇<rt>かいこ</rt></ruby>されますか?<br>*(Lỗi đầu tiên của em. Em có bị đuổi không?)* |
| Hoa | されないよ。<ruby>去年<rt>きょねん</rt></ruby>の8<ruby>月<rt>がつ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>失敗<rt>しっぱい</rt></ruby>をした。200<ruby>個<rt>こ</rt></ruby>。<br>*(Không đâu. Tháng 8 năm ngoái chị cũng làm sai y vậy. 200 hộp cơ.)* |
| Mai | え、ホア<ruby>姉<rt>ねえ</rt></ruby>さんも?<br>*(Ơ, chị Hoa cũng à?)* |
| Hoa | うん。<ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>は<ruby>怒<rt>おこ</rt></ruby>らない。<ruby>大事<rt>だいじ</rt></ruby>なのは「<ruby>気<rt>き</rt></ruby>づいたらすぐ<ruby>報告<rt>ほうこく</rt></ruby>」。マイさんはそれをやった。<br>*(Ừ. Tanaka-buchou không mắng đâu. Quan trọng là "phát hiện thì báo ngay". Mai-san đã làm đúng việc đó.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>に?<br>*(Thật ạ?)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>にいます。<ruby>顔<rt>かお</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げて<ruby>立<rt>た</rt></ruby>ちましょう。<br>*(Thật. Có chị bên cạnh. Ngẩng mặt, đứng thẳng nào.)* |
| Mai | はい...<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng... em sẽ cố.)* |

---

## Tình huống 4 — Phòng 部長 · 15:30, Hoa báo cáo + nhận chia trách nhiệm với kohai

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>佐藤<rt>さとう</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してください。<br>*(Tôi đã nghe anh Satou nói. Mời em giải thích tình huống.)* |
| Hoa | はい。<ruby>本日<rt>ほんじつ</rt></ruby>14<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ふん</rt></ruby>、ラインA2にて、<ruby>弁当<rt>べんとう</rt></ruby><ruby>約<rt>やく</rt></ruby>100<ruby>個<rt>こ</rt></ruby>に<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いがございました。<ruby>大<rt>おお</rt></ruby>きさ2ミリのプラスチック<ruby>片<rt>へん</rt></ruby>です。<br>*(Vâng. Hôm nay 14:30, tại dây chuyền A2, có khoảng 100 hộp cơm bị nghi nhiễm dị vật. Là mảnh nhựa 2 mm.)* |
| Tanaka | <ruby>原因<rt>げんいん</rt></ruby>は?<br>*(Nguyên nhân?)* |
| Hoa | <ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>はマイさんの<ruby>原料容器<rt>げんりょうようき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>漏<rt>も</rt></ruby>れですが、マイさんに<ruby>容器<rt>ようき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えきれていなかった<ruby>私<rt>わたし</rt></ruby>の<ruby>指導不足<rt>しどうぶそく</rt></ruby>でもあります。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Nguyên nhân trực tiếp là Mai-san đã bỏ sót kiểm tra hộp nguyên liệu, nhưng cũng do em chưa dạy đầy đủ quy trình kiểm tra hộp cho Mai-san, là phần em chỉ dẫn chưa đủ. Em xin lỗi.)* |
| Mai | (cúi đầu sâu) <ruby>確認<rt>かくにん</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>りました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Em đã sao nhãng việc kiểm tra. Em xin lỗi.)* |
| Tanaka | <ruby>顔<rt>かお</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げてください、マイさん。<ruby>異物<rt>いぶつ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づいたのは<ruby>誰<rt>だれ</rt></ruby>ですか?<br>*(Ngẩng mặt lên, Mai-san. Người phát hiện dị vật là ai?)* |
| Mai | …<ruby>私<rt>わたし</rt></ruby>です。<br>*(… Là em ạ.)* |
| Tanaka | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>気<rt>き</rt></ruby>づいて、すぐに<ruby>報告<rt>ほうこく</rt></ruby>した。それは<ruby>正<rt>ただ</rt></ruby>しいことです。<ruby>偉<rt>えら</rt></ruby>いですよ。<br>*(Tự phát hiện rồi báo ngay. Đó là việc đúng đắn. Em làm tốt đấy.)* |
| Tanaka | ホアさん、<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>姿勢<rt>しせい</rt></ruby>もよかった。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>9<ruby>時<rt>じ</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby>さんと3<ruby>人<rt>にん</rt></ruby>で5 Why <ruby>分析<rt>ぶんせき</rt></ruby>をやってください。<br>*(Hoa-san, thái độ bảo vệ kohai cũng tốt. 9h sáng mai, ba người với anh Satou làm phân tích 5 Why nhé.)* |
| Hoa & Mai | かしこまりました。<br>*(Vâng ạ.)* |

---

## Tình huống 5 — Hành lang sau phòng 部長 · 16:00, Mai hỏi lại sempai vì sao chia lỗi

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Chị Hoa, em hỏi một câu được không?)* |
| Hoa | どうぞ。<br>*(Em hỏi đi.)* |
| Mai | どうしてホア<ruby>姉<rt>ねえ</rt></ruby>さんも<ruby>謝<rt>あやま</rt></ruby>ったんですか? <ruby>失敗<rt>しっぱい</rt></ruby>したのは<ruby>私<rt>わたし</rt></ruby>です。<br>*(Sao chị Hoa cũng xin lỗi ạ? Người sai là em mà.)* |
| Hoa | <ruby>指導<rt>しどう</rt></ruby>する<ruby>側<rt>がわ</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>もあるから。マイさんが<ruby>正<rt>ただ</rt></ruby>しく<ruby>確認<rt>かくにん</rt></ruby>できるように<ruby>教<rt>おし</rt></ruby>えるのは、<ruby>私<rt>わたし</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Vì người dạy cũng có trách nhiệm. Dạy để Mai-san biết kiểm tra cho đúng, là việc của chị.)* |
| Mai | 「<ruby>指導不足<rt>しどうぶそく</rt></ruby>」というのは、どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Cụm "chỉ dẫn chưa đủ" là có nghĩa thế nào ạ?)* |
| Hoa | <ruby>先輩<rt>せんぱい</rt></ruby>として<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>十分<rt>じゅうぶん</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていなかった、という<ruby>意味<rt>いみ</rt></ruby>。<ruby>去年<rt>きょねん</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>私<rt>わたし</rt></ruby>のために<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(Nghĩa là người sempai chưa dạy đủ cho kohai. Năm ngoái anh Satou cũng nói câu đó vì chị.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん…<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Chị Hoa… em thực sự cảm ơn chị.)* |
| Hoa | お<ruby>礼<rt>れい</rt></ruby>はいいです。<ruby>明日<rt>あした</rt></ruby>の5 Why、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Khỏi cảm ơn. Mai 5 Why, mình cùng cố nhé.)* |

---

## Tình huống 6 — Phòng họp nhỏ · sáng hôm sau 9:00, quan sát Satou dẫn 5 Why

| Vai | Lời thoại |
|---|---|
| Satou | じゃあ、5 Why<ruby>分析<rt>ぶんせき</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>人<rt>ひと</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めるのではなく、<ruby>仕組<rt>しく</rt></ruby>みを<ruby>直<rt>なお</rt></ruby>すための<ruby>分析<rt>ぶんせき</rt></ruby>です。<br>*(Vậy, mình bắt đầu phân tích 5 Why. Đây là phân tích để sửa cơ chế, không phải để trách người.)* |
| Mai | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Satou | <ruby>第<rt>だい</rt></ruby>1の「なぜ」: なぜ<ruby>異物<rt>いぶつ</rt></ruby>が<ruby>製品<rt>せいひん</rt></ruby>に<ruby>混入<rt>こんにゅう</rt></ruby>しましたか?<br>*(Tại sao 1: tại sao dị vật lẫn vào sản phẩm?)* |
| Mai | <ruby>原料<rt>げんりょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>にすでに<ruby>入<rt>はい</rt></ruby>っていたからです。<br>*(Vì nó đã có sẵn trong nguyên liệu.)* |
| Satou | <ruby>第<rt>だい</rt></ruby>2の「なぜ」: なぜ<ruby>原料<rt>げんりょう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っていたんですか?<br>*(Tại sao 2: tại sao trong nguyên liệu lại có?)* |
| Mai | <ruby>原料<rt>げんりょう</rt></ruby>の<ruby>容器<rt>ようき</rt></ruby>のふたが<ruby>欠<rt>か</rt></ruby>けていて、その<ruby>破片<rt>はへん</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちたと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ là nắp hộp nguyên liệu bị mẻ, mảnh đó rơi xuống.)* |
| Satou | <ruby>第<rt>だい</rt></ruby>3の「なぜ」: なぜ<ruby>容器<rt>ようき</rt></ruby>の<ruby>欠<rt>か</rt></ruby>けに<ruby>気<rt>き</rt></ruby>づきませんでしたか?<br>*(Tại sao 3: tại sao em không thấy nắp mẻ?)* |
| Mai | <ruby>使<rt>つか</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に<ruby>容器<rt>ようき</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しなかったからです。<br>*(Vì trước khi dùng em đã không kiểm tra hộp.)* |
| Satou | <ruby>第<rt>だい</rt></ruby>4の「なぜ」: なぜ<ruby>確認<rt>かくにん</rt></ruby>しなかったんですか?<br>*(Tại sao 4: tại sao em không kiểm tra?)* |
| Mai | <ruby>容器<rt>ようき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わっていませんでした。<br>*(Em chưa được dạy quy trình kiểm tra hộp.)* |
| Hoa | はい、<ruby>私<rt>わたし</rt></ruby>がマイさんに<ruby>容器<rt>ようき</rt></ruby>のチェック<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>していませんでした。<br>*(Vâng, em đã chưa giải thích cách kiểm tra hộp cho Mai-san.)* |
| Satou | <ruby>第<rt>だい</rt></ruby>5の「なぜ」: なぜ<ruby>説明<rt>せつめい</rt></ruby>できなかったんですか?<br>*(Tại sao 5: tại sao em không giải thích được?)* |
| Hoa | <ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>容器<rt>ようき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>のチェックリストがなかったからです。<ruby>私<rt>わたし</rt></ruby>は<ruby>記憶<rt>きおく</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えていました。<br>*(Vì công ty chưa có bảng kiểm kiểm tra hộp. Em chỉ dạy bằng trí nhớ.)* |
| Satou | <ruby>結論<rt>けつろん</rt></ruby>: <ruby>真<rt>しん</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>は<ruby>個人<rt>こじん</rt></ruby>のミスではなく、<ruby>標準<rt>ひょうじゅん</rt></ruby>チェックリストの<ruby>不在<rt>ふざい</rt></ruby>です。<ruby>対策<rt>たいさく</rt></ruby>: チェックリストを<ruby>作成<rt>さくせい</rt></ruby>します。<br>*(Kết luận: nguyên nhân thật không phải lỗi cá nhân mà là không có bảng kiểm tiêu chuẩn. Đối sách: làm bảng kiểm.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 10:00, Satou dạy Hoa khái niệm 真因 và 標準化

| Vai | Lời thoại |
|---|---|
| Satou | ホアさん、5 Whyで<ruby>大事<rt>だいじ</rt></ruby>なのは「<ruby>真因<rt>しんいん</rt></ruby>」です。<br>*(Hoa-san, trong 5 Why điều quan trọng là "nguyên nhân thật".)* |
| Hoa | すみません、「<ruby>真因<rt>しんいん</rt></ruby>」というのは?<br>*(Xin lỗi anh, "shin''in" là gì ạ?)* |
| Satou | <ruby>本当<rt>ほんとう</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>、<ruby>根本<rt>こんぽん</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>という<ruby>意味<rt>いみ</rt></ruby>です。<ruby>表面<rt>ひょうめん</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>ではなくて、<ruby>仕組<rt>しく</rt></ruby>みの<ruby>原因<rt>げんいん</rt></ruby>。<br>*(Là nguyên nhân thật, nguyên nhân gốc rễ. Không phải nguyên nhân bề mặt mà là nguyên nhân của cơ chế.)* |
| Hoa | <ruby>今回<rt>こんかい</rt></ruby>の<ruby>真因<rt>しんいん</rt></ruby>はチェックリストがなかったこと、ということですね。<br>*(Tức là nguyên nhân thật lần này là việc chưa có bảng kiểm, đúng không ạ?)* |
| Satou | そうです。だから、<ruby>解決<rt>かいけつ</rt></ruby><ruby>策<rt>さく</rt></ruby>は「マイさんが<ruby>気<rt>き</rt></ruby>をつける」ではなく「<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>標準<rt>ひょうじゅん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る」になります。これを「<ruby>標準化<rt>ひょうじゅんか</rt></ruby>」と<ruby>言<rt>い</rt></ruby>います。<br>*(Đúng. Vì thế giải pháp không phải "Mai-san cẩn thận hơn" mà là "công ty làm tiêu chuẩn". Cái này gọi là 標準化.)* |
| Hoa | <ruby>標準化<rt>ひょうじゅんか</rt></ruby>…メモします。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>私<rt>わたし</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(標準化 … em ghi lại. Một năm trước, anh Satou cũng đã nói y câu đó với em.)* |
| Satou | (cười) <ruby>覚<rt>おぼ</rt></ruby>えていますね。じゃあ、ホアさんが<ruby>今回<rt>こんかい</rt></ruby>はチェックリストを<ruby>作<rt>つく</rt></ruby>る<ruby>担当<rt>たんとう</rt></ruby>です。<br>*(Em nhớ nhỉ. Vậy lần này Hoa-san phụ trách làm bảng kiểm nhé.)* |
| Hoa | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố.)* |

---

## Tình huống 8 — Hành lang xưởng · 11:30, Hoa hỏi lại sempai trước khi gửi bảng kiểm

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、すみません、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>してもよろしいですか?<br>*(Anh Satou, em xin phép xác nhận thêm một điều được không?)* |
| Satou | はい、どうぞ。<br>*(Ừ, em hỏi đi.)* |
| Hoa | チェックリストの<ruby>項目<rt>こうもく</rt></ruby>は5つでいいですか? <ruby>容器<rt>ようき</rt></ruby>・<ruby>原料<rt>げんりょう</rt></ruby>・ライン<ruby>上<rt>じょう</rt></ruby>・<ruby>金属探知機<rt>きんぞくたんちき</rt></ruby>・<ruby>目視<rt>もくし</rt></ruby>。<br>*(Mục trong bảng kiểm là 5 mục được không ạ? Hộp, nguyên liệu, trên line, máy dò kim loại, mắt thường.)* |
| Satou | いいですね。<ruby>頻度<rt>ひんど</rt></ruby>は?<br>*(Được đấy. Tần suất?)* |
| Hoa | <ruby>朝<rt>あさ</rt></ruby>・<ruby>昼<rt>ひる</rt></ruby>・<ruby>夕方<rt>ゆうがた</rt></ruby>の3<ruby>回<rt>かい</rt></ruby>です。<br>*(Sáng - trưa - chiều, ngày 3 lần.)* |
| Satou | OK、<ruby>各回<rt>かくかい</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す<ruby>欄<rt>らん</rt></ruby>も<ruby>追加<rt>ついか</rt></ruby>してください。「<ruby>誰<rt>だれ</rt></ruby>がいつ<ruby>確認<rt>かくにん</rt></ruby>したか」が<ruby>分<rt>わ</rt></ruby>かるように。<br>*(OK, mỗi lần nhớ thêm cột ghi lại. Để biết "ai kiểm tra lúc nào".)* |
| Hoa | <ruby>承知<rt>しょうち</rt></ruby>しました。「<ruby>誰<rt>だれ</rt></ruby>がいつ」の<ruby>記録<rt>きろく</rt></ruby><ruby>欄<rt>らん</rt></ruby>ですね。<br>*(Em rõ. Là cột ghi "ai - khi nào" ạ.)* |
| Satou | そう。<ruby>記録<rt>きろく</rt></ruby>がないと<ruby>意味<rt>いみ</rt></ruby>がないからね。<br>*(Đúng. Không có ghi lại thì không có ý nghĩa đâu.)* |

---

## Tình huống 9 — Hành lang căng-tin · 12:00, Kimura sempai khác trấn an Mai

| Vai | Lời thoại |
|---|---|
| Kimura | マイさん、お<ruby>昼<rt>ひる</rt></ruby>もう<ruby>食<rt>た</rt></ruby>べた? <ruby>顔色<rt>かおいろ</rt></ruby>がよくないね。<br>*(Mai-san, ăn trưa chưa? Sắc mặt không tốt nhỉ.)* |
| Mai | はい…<ruby>昨日<rt>きのう</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>のことで<ruby>食欲<rt>しょくよく</rt></ruby>がなくて。<br>*(Vâng… vì chuyện lỗi hôm qua nên em không thấy đói.)* |
| Kimura | <ruby>気<rt>き</rt></ruby>にしすぎないで。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>失敗<rt>しっぱい</rt></ruby>するよ。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>次<rt>つぎ</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことをしないこと。<br>*(Đừng để bụng quá. Ai cũng sai mà. Quan trọng là lần sau không lặp lại.)* |
| Mai | はい。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が「<ruby>真因<rt>しんいん</rt></ruby>を<ruby>探<rt>さが</rt></ruby>す」と<ruby>言<rt>い</rt></ruby>っていました。<br>*(Vâng. Anh Satou đã nói "đi tìm 真因".)* |
| Kimura | 「<ruby>真因<rt>しんいん</rt></ruby>」、もう<ruby>覚<rt>おぼ</rt></ruby>えたんだ。<ruby>偉<rt>えら</rt></ruby>いね。<ruby>個人<rt>こじん</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めない<ruby>文化<rt>ぶんか</rt></ruby>、これがこの<ruby>会社<rt>かいしゃ</rt></ruby>のいいところです。<br>*(Em đã nhớ từ 真因 rồi. Giỏi đấy. Văn hoá không trách cá nhân — đó là điểm hay của công ty mình.)* |
| Mai | はい。ホア<ruby>姉<rt>ねえ</rt></ruby>さんが<ruby>守<rt>まも</rt></ruby>ってくれて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Vâng. Chị Hoa đã bảo vệ em, em thực sự biết ơn.)* |
| Kimura | いい<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>恵<rt>めぐ</rt></ruby>まれたね。さあ、お<ruby>昼<rt>ひる</rt></ruby><ruby>食<rt>た</rt></ruby>べて<ruby>午後<rt>ごご</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>って。<br>*(May được sempai tốt nhỉ. Nào, ăn trưa đi rồi chiều cố lên.)* |
| Mai | はい!ありがとうございます。<br>*(Vâng! Em cảm ơn chị.)* |

---

## Tình huống 10 — Dây chuyền topping · sáng hôm sau 8:00, Hoa giao bảng kiểm mới cho kohai

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、おはようございます。<br>*(Mai-san, chào buổi sáng.)* |
| Mai | おはようございます、ホア<ruby>姉<rt>ねえ</rt></ruby>さん。<br>*(Em chào chị Hoa.)* |
| Hoa | <ruby>新<rt>あたら</rt></ruby>しいチェックリストを<ruby>作<rt>つく</rt></ruby>りました。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>の<ruby>承認<rt>しょうにん</rt></ruby>ももらいました。<br>*(Chị đã làm bảng kiểm mới. Đã được anh Satou và Tanaka-buchou duyệt.)* |
| Mai | わあ、ありがとうございます!<br>*(Wow, em cảm ơn chị!)* |
| Hoa | <ruby>項目<rt>こうもく</rt></ruby>は5つ: <ruby>1<rt>いち</rt></ruby>、<ruby>容器<rt>ようき</rt></ruby>の<ruby>欠<rt>か</rt></ruby>けを<ruby>見<rt>み</rt></ruby>る。<ruby>2<rt>に</rt></ruby>、<ruby>原料<rt>げんりょう</rt></ruby>の<ruby>色<rt>いろ</rt></ruby>と<ruby>匂<rt>にお</rt></ruby>いを<ruby>見<rt>み</rt></ruby>る。<ruby>3<rt>さん</rt></ruby>、ライン<ruby>上<rt>じょう</rt></ruby>の<ruby>異物<rt>いぶつ</rt></ruby>を<ruby>見<rt>み</rt></ruby>る。<ruby>4<rt>よん</rt></ruby>、<ruby>金属探知機<rt>きんぞくたんちき</rt></ruby>の<ruby>動作<rt>どうさ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>5<rt>ご</rt></ruby>、<ruby>目視<rt>もくし</rt></ruby><ruby>最終<rt>さいしゅう</rt></ruby><ruby>チェック<rt>ちぇっく</rt></ruby>。<br>*(Có 5 mục: 1. Xem nắp hộp có mẻ không. 2. Xem màu và mùi nguyên liệu. 3. Nhìn dị vật trên line. 4. Kiểm tra máy dò kim loại có chạy. 5. Quét mắt lần cuối.)* |
| Mai | <ruby>毎回<rt>まいかい</rt></ruby><ruby>記録<rt>きろく</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>と<ruby>時間<rt>じかん</rt></ruby>を<ruby>書<rt>か</rt></ruby>くんですね。<br>*(Mỗi lần ghi tên và giờ vào nhật ký nhỉ.)* |
| Hoa | そう。「<ruby>誰<rt>だれ</rt></ruby>がいつ<ruby>確認<rt>かくにん</rt></ruby>したか」が<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>・<ruby>昼<rt>ひる</rt></ruby>・<ruby>夕方<rt>ゆうがた</rt></ruby>の3<ruby>回<rt>かい</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đúng. "Ai kiểm tra lúc nào" là quan trọng. Nhờ em sáng - trưa - chiều, 3 lần.)* |
| Mai | はい!<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng! Em nhất định sẽ làm.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>からないところがあったら、すぐ<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Có gì không hiểu thì hỏi chị ngay nhé.)* |

---

## Tình huống 11 — Ký túc · 21:00, Hoa và Putri trấn an Mai (mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật. Hoa, Mai (cùng VN) và Putri (Indonesia) ăn cơm chung.

| Vai | Lời thoại |
|---|---|
| Putri | (tiếng Việt lơ lớ) Mai-chan, hôm nay đỡ chưa? Mặt vẫn còn xanh kìa. |
| Mai | (tiếng Việt) Đỡ hơn rồi chị. Trưa nay chị Kimura còn ra trấn an em. |
| Hoa | (tiếng Việt) Ờ. Mai nhớ nhé, hôm nay mày làm đúng một việc to đùng — tự phát hiện, tự bấm nút, tự báo cáo. Cái 異物混入 mà giấu là đi cả công ty đấy. |
| Mai | (tiếng Việt) Em vẫn áy náy chị Hoa ơi. Chị bị mắng cùng vì em. |
| Hoa | (tiếng Việt) Không phải mắng, là chia trách nhiệm. Câu 「私の指導不足でもあります」 — "cũng do em chỉ dẫn chưa đủ" — chị học từ anh Satou đúng một năm trước, lúc chị sai 200 hộp cơ. |
| Putri | (tiếng Việt) Bên xưởng tao năm 1 cũng sai hoài. Mỗi lần sai là làm 5 Why với 真因 mới được kết bài. |
| Mai | (tiếng Việt) Em mới học chữ 真因 hôm nay. Anh Satou bảo phải tìm nguyên nhân gốc của cơ chế, không trách cá nhân. |
| Hoa | (tiếng Việt) Chuẩn. Mai gọi là 標準化 — đặt cái bảng kiểm lên làm chuẩn để lần sau ai vào cũng làm được. Cải tiến là KAIZEN, mày sẽ học sâu hơn ở chương sau. |
| Mai | (tiếng Việt) KAIZEN em nghe rồi. Em ghi vào sổ hết. |
| Putri | (tiếng Việt) Mai-chan, ngủ ngon đi. Mai dậy sớm thử bảng kiểm 5 mục của chị Hoa nhé! |
| Mai | (tiếng Việt) Vâng, em cảm ơn hai chị nhiều lắm. |

---

## Tình huống 12 — Phòng Hoa · 22:30, gọi điện về cho mẹ Mai (cảnh tiếng Việt)

> Mai gọi điện về VN, có Hoa ngồi cùng làm chứng để mẹ Mai yên tâm.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Mẹ ơi, hôm qua con sai ở công ty. Có vụ lẫn nhựa 2mm vào hộp cơm. |
| Mẹ Mai | (tiếng Việt) Trời ơi. Con có sao không? Có bị phạt không? |
| Mai | (tiếng Việt) Không sao mẹ. Sếp Tanaka còn khen con vì tự báo cáo. Chị Hoa cùng phòng đứng ra chia trách nhiệm với con. |
| Hoa | (tiếng Việt, ghé màn hình) Cô ơi, cô đừng lo, cháu là Hoa. Mai nhà mình làm đúng quy trình rồi cô. |
| Mẹ Mai | (tiếng Việt) Ôi Hoa ơi, cảm ơn cháu. Cô tin các cháu. |
| Mai | (tiếng Việt) Sáng mai con bắt đầu dùng bảng kiểm mới chị Hoa làm. 5 bước: kiểm tra hộp, nguyên liệu, trên dây chuyền, máy dò kim loại, rồi quét mắt lần cuối. |
| Mẹ Mai | (tiếng Việt) Mẹ không hiểu hết nhưng nghe mẹ thấy chắc chắn lắm. Mẹ tự hào về con. |
| Mai | (tiếng Việt) Mẹ đừng buồn nhé. Con sẽ không sai cái này nữa. |
| Mẹ Mai | (tiếng Việt) Mẹ không buồn. Cảm ơn Hoa nữa. Hai chị em ngủ sớm đi. |

---

## Đọng lại chương 4

Lần đầu đứng vai sempai, Hoa học cách xử sự cố sản xuất bằng tiếng Nhật chuẩn công xưởng: bấm dừng dây chuyền rồi hô **「異常です」**, báo cáo có cấu trúc 5W1H với **「異物混入の疑いがございました」**, và quan trọng nhất là **chia một phần trách nhiệm với kohai bằng câu 「私の指導不足でもあります」**. Khi Tanaka-buchou hỏi ai phát hiện, Hoa đẩy điểm tốt về phía Mai để 部長 khen kohai vì đã làm điều đúng: **「気づいたらすぐ報告」**. Sang ngày hôm sau, Hoa quan sát Satou-senpai dẫn **5 Why** và học hai khái niệm mới: **真因** (nguyên nhân gốc của cơ chế) và **標準化** (đặt bảng kiểm lên thành chuẩn để không lặp lại). Hoa kết bằng cách tự tay làm bảng kiểm 5 mục, có cột ghi 「<ruby>誰<rt>だれ</rt></ruby>がいつ」, rồi giao lại cho Mai. Triết lý đọng lại: sempai không phải người không sai, mà là người đứng cạnh kohai khi kohai sai và chuyển lỗi cá nhân thành cải tiến hệ thống.

> Từ vựng & mẫu câu chương này: 異物混入・異常です・ライン停止・原料容器・確認漏れ・指導不足・申し訳ございません・〜の疑いがございました・気づいたらすぐ報告・後輩を守る・5 Why・真因・根本原因・標準化・チェックリスト・金属探知機・目視・記録欄・〜というのは?・〜ということですね・恵まれる・KAIZEN・改善

---

## Bí quyết chương

- Lặp lại hình mẫu T5 sách 11 (Hoa sai lần đầu): năm nay Hoa đứng vai Satou năm ngoái — câu **「私の指導不足でもあります」** lặp lại đúng nguyên văn để cho thấy văn hoá truyền tay.
- Sempai tốt = (1) bình tĩnh xử lý trước, xin lỗi sau; (2) đẩy điểm tốt về kohai trước 部長; (3) chuyển lỗi cá nhân thành đề xuất 標準化.
- Hai khái niệm mới Hoa nhận từ Satou: **真因** và **標準化** — sẽ thấy kết quả khi Hoa lên trưởng dây chuyền ở các chương sau.
- Cảnh tiếng Việt được tách 2 lớp: với Putri (đồng nghiệp Indonesia) để ôn KAIZEN, và gọi mẹ Mai để chốt cảm xúc gia đình.

> *"Khi mình đứng cùng Mai trước Tanaka-buchou, mình mới hiểu vì sao một năm trước Satou-senpai đứng cùng mình. Trách nhiệm của sempai không phải là không sai — mà là biến cái sai của kohai thành tiêu chuẩn mới của cả công ty."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 破片 | はへん | PHÁ PHIẾN | Mảnh vỡ |
| 原料 | げんりょう | NGUYÊN LIỆU | Nguyên liệu |
| 謝る | あやまる | TẠ | Xin lỗi |
| 停止 | ていし | ĐÌNH CHỈ | Dừng lại |
| 異物混入 | いぶつこんにゅう | DỊ VẬT HỖN NHẬP | Nhiễm dị vật vào sản phẩm |
| 疑い | うたがい | NGHI | Nghi ngờ, nghi vấn |
| 本日 | ほんじつ | BẢN NHẬT | Hôm nay (kính ngữ) |
| 発見 | はっけん | PHÁT KIẾN | Phát hiện |
| 約 | やく | ƯỚC | Khoảng (số lượng) |
| 影響 | えいきょう | ẢNH HƯỞNG | Ảnh hưởng |
| 通過 | つうか | THÔNG QUÁ | Đi qua, vượt qua |
| 弁当 | べんとう | BIỆN ĐƯƠNG | Hộp cơm bento |
| 隔離 | かくり | CÁCH LY | Cách ly |
| 部長 | ぶちょう | BỘ TRƯỞNG | Trưởng phòng |
| 申し訳 | もうしわけ | THÂN DỊCH | Lời xin lỗi (kính ngữ) |
| 解雇 | かいこ | GIẢI CỐ | Sa thải |
| 状況 | じょうきょう | TRẠNG HUỐNG | Tình huống |
| 原因 | げんいん | NGUYÊN NHÂN | Nguyên nhân |
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 漏れ | もれ | LẬU | Bỏ sót, rò rỉ |
| 手順 | てじゅん | THỦ THUẬN | Quy trình, trình tự thao tác |
| 指導不足 | しどうぶそく | CHỈ ĐẠO BẤT TÚC | Chỉ dẫn chưa đủ (kính ngữ nhận lỗi) |
| 怠る | おこたる | ĐÃI | Sao nhãng, lơ là |
| 姿勢 | しせい | TƯ THẾ | Tư thế, thái độ |
| 分析 | ぶんせき | PHÂN TÍCH | Phân tích |
| 責任 | せきにん | TRÁCH NHIỆM | Trách nhiệm |
| 仕事 | しごと | SỰ | Công việc |
| 十分 | じゅうぶん | THẬP PHÂN | Đầy đủ |
| 仕組み | しくみ | SỰ TỔ | Cơ chế, hệ thống |
| 責める | せめる | TRÁCH | Trách móc |
| 製品 | せいひん | CHẾ PHẨM | Sản phẩm |
| 欠ける | かける | KHIẾM | Bị mẻ, thiếu |
| 教わる | おそわる | GIÁO | Được dạy |
| 記憶 | きおく | KÝ ỨC | Trí nhớ |
| 結論 | けつろん | KẾT LUẬN | Kết luận |
| 真因 | しんいん | CHÂN NHÂN | Nguyên nhân thật, gốc rễ |
| 個人 | こじん | CÁ NHÂN | Cá nhân |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Tiêu chuẩn |
| 不在 | ふざい | BẤT TẠI | Không tồn tại, vắng mặt |
| 対策 | たいさく | ĐỐI SÁCH | Đối sách, biện pháp |
| 作成 | さくせい | TÁC THÀNH | Soạn thảo, lập |
| 根本 | こんぽん | CĂN BẢN | Gốc rễ, căn bản |
| 表面 | ひょうめん | BIỂU DIỆN | Bề mặt |
| 解決策 | かいけつさく | GIẢI QUYẾT SÁCH | Giải pháp |
| 標準化 | ひょうじゅんか | TIÊU CHUẨN HOÁ | Chuẩn hoá (đặt thành tiêu chuẩn) |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 項目 | こうもく | HẠNG MỤC | Mục, hạng mục |
| 金属探知機 | きんぞくたんちき | KIM THUỘC THÁM TRI CƠ | Máy dò kim loại |
| 目視 | もくし | MỤC THỊ | Quan sát bằng mắt |
| 頻度 | ひんど | TẦN ĐỘ | Tần suất |
| 各回 | かくかい | CÁC HỒI | Mỗi lần |
| 記録 | きろく | KÝ LỤC | Ghi lại, hồ sơ |
| 欄 | らん | LAN | Cột (trong biểu mẫu) |
| 承認 | しょうにん | THỪA NHẬN | Phê duyệt |
| 動作 | どうさ | ĐỘNG TÁC | Vận hành, hoạt động |
| 食欲 | しょくよく | THỰC DỤC | Cảm giác thèm ăn |
| 文化 | ぶんか | VĂN HOÁ | Văn hoá |
| 感謝 | かんしゃ | CẢM TẠ | Biết ơn |
| 恵まれる | めぐまれる | HUỆ | Được ban cho, may mắn có |
| 改善 | かいぜん | CẢI THIỆN | Kaizen, cải tiến liên tục |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000005, 800000012, NULL, 'markdown_book', 'T5. Đăng ký khoá chứng chỉ vệ sinh thực phẩm (食品衛生責任者の申込み)', '# Sách thực tập sinh thực phẩm · T5. Đăng ký khoá chứng chỉ vệ sinh thực phẩm (食品衛生責任者の申込み)

> **Mục tiêu nhân vật:** Hoa (TTS thực phẩm năm 2, Saitama) đăng ký khoá eラーニング lấy chứng chỉ 食品衛生責任者. Học các mẫu hội thoại tiếng Nhật khi xin tư vấn nghề nghiệp: xin phép cấp trên 1 phút trao đổi (ちょっとよろしいでしょうか), trình bày nguyện vọng học chứng chỉ chuyên môn, hỏi lại lễ phép khi gặp từ chuyên ngành (〜というのは?), quan sát cách 先輩 gọi điện nhờ vả 先生 ngoài tổ chức (お世話になっております), tự giới thiệu + nêu mục tiêu trong cuộc 面談 Zoom với giảng viên, hỏi 5 câu chuẩn bị sẵn (テキスト・勉強時間・過去問・コツ・申込み方法), và đặt câu hỏi xác nhận thông tin khoá học (受講料・受講日・合格率).

---

## Bối cảnh

Tháng 8 năm 2027. Hoa đã sang Nhật năm thứ hai, làm tại xưởng thực phẩm ở Saitama, trình độ tiếng Nhật N4. Sau sự cố nhỏ của đàn em Mai ở chương trước, Hoa quyết tâm chuyên nghiệp hoá bằng cách lấy chứng chỉ 食品衛生責任者. Chương này tập trung các mẫu câu giao tiếp khi nhân viên nước ngoài chủ động xin tư vấn cấp trên về khoá học, quan sát cách cấp trên giới thiệu mình với giảng viên bên ngoài, và lần đầu 面談 Zoom với 先生 để hỏi thông tin khoá học chuyên môn.

---

## Tình huống 1 — Văn phòng anh Suzuki · 13:00, xin phép cấp trên 1 phút và trình bày nguyện vọng

| Vai | Lời thoại |
|---|---|
| Hoa | (gõ cửa nhẹ) <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>ちょっとよろしいでしょうか?<br>*(Anh Suzuki, bây giờ em xin một chút thời gian được không ạ?)* |
| Suzuki | はい、どうぞ。<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Vâng, mời. Em ngồi đi.)* |
| Hoa | (ngồi xuống, hơi căng thẳng) <ruby>実<rt>じつ</rt></ruby>は、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>りたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Thật ra, em muốn lấy chứng chỉ Người chịu trách nhiệm vệ sinh thực phẩm ạ.)* |
| Suzuki | おお、<ruby>素晴<rt>すば</rt></ruby>らしいですね。きっかけは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Ô, tuyệt vời. Lý do là gì vậy?)* |
| Hoa | <ruby>先月<rt>せんげつ</rt></ruby>のマイさんの<ruby>失敗<rt>しっぱい</rt></ruby>から、もっと<ruby>専門<rt>せんもん</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>がほしいと<ruby>思<rt>おも</rt></ruby>いました。<ruby>長<rt>なが</rt></ruby>く<ruby>食品<rt>しょくひん</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Từ vụ sai của em Mai tháng trước, em nghĩ cần thêm kiến thức chuyên môn. Em muốn làm lâu trong ngành thực phẩm ạ.)* |
| Suzuki | いい<ruby>動機<rt>どうき</rt></ruby>ですね。それなら、<ruby>埼玉県食品衛生協会<rt>さいたまけんしょくひんえいせいきょうかい</rt></ruby>のeラーニングをおすすめします。<br>*(Động lực tốt đấy. Vậy anh khuyên khoá eラーニング của Hiệp hội Vệ sinh Thực phẩm tỉnh Saitama.)* |
| Hoa | すみません、「eラーニング」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "eラーニング" nghĩa là gì ạ?)* |
| Suzuki | オンラインの<ruby>講習<rt>こうしゅう</rt></ruby>です。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>家<rt>いえ</rt></ruby>で<ruby>受<rt>う</rt></ruby>けられますよ。<br>*(Khoá học trực tuyến. 1 ngày 6 tiếng, có thể học ở nhà.)* |
| Hoa | <ruby>家<rt>いえ</rt></ruby>でできるんですね。それはありがたいです。<br>*(Có thể làm ở nhà ạ. Vậy thì em mừng quá.)* |

---

## Tình huống 2 — Văn phòng anh Suzuki · 13:10, hỏi xác nhận chi tiết khoá học

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>内容<rt>ないよう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>科目<rt>かもく</rt></ruby>あります。<ruby>公衆衛生学<rt>こうしゅうえいせいがく</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>食品衛生学<rt>しょくひんえいせいがく</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>食品衛生法<rt>しょくひんえいせいほう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>です。<br>*(Nội dung có 3 môn. Vệ sinh công cộng 1 tiếng, Vệ sinh thực phẩm 3 tiếng, Luật vệ sinh thực phẩm 2 tiếng.)* |
| Hoa | すみません、「<ruby>公衆衛生学<rt>こうしゅうえいせいがく</rt></ruby>」というのは、どんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Xin lỗi, "Vệ sinh công cộng học" nghĩa là gì ạ?)* |
| Suzuki | <ruby>社会全体<rt>しゃかいぜんたい</rt></ruby>の<ruby>健康<rt>けんこう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るための<ruby>学問<rt>がくもん</rt></ruby>です。<ruby>感染症<rt>かんせんしょう</rt></ruby>とか<ruby>食中毒<rt>しょくちゅうどく</rt></ruby>の<ruby>予防<rt>よぼう</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Là môn học bảo vệ sức khoẻ toàn xã hội. Học về phòng tránh bệnh truyền nhiễm và ngộ độc thực phẩm.)* |
| Hoa | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>最後<rt>さいご</rt></ruby>に<ruby>試験<rt>しけん</rt></ruby>がありますか?<br>*(Em hiểu rồi. Cuối khoá có thi không ạ?)* |
| Suzuki | はい、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>の<ruby>選択<rt>せんたく</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>です。<ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>80<rt>はちじゅっ</rt></ruby>パーセントです。<br>*(Vâng, 30 phút trắc nghiệm. Tỷ lệ đậu 80 phần trăm.)* |
| Hoa | <ruby>受講料<rt>じゅこうりょう</rt></ruby>はおいくらでしょうか?<br>*(Học phí khoảng bao nhiêu ạ?)* |
| Suzuki | <ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>ぐらいです。<br>*(Khoảng 10.000 yên.)* |
| Hoa | <ruby>外国人<rt>がいこくじん</rt></ruby>でも<ruby>受<rt>う</rt></ruby>けられますか?<br>*(Người nước ngoài có thể học được không ạ?)* |
| Suzuki | はい、<ruby>在留<rt>ざいりゅう</rt></ruby>カードがあれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ただし<ruby>講習<rt>こうしゅう</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>のみで、N3レベルあれば<ruby>分<rt>わ</rt></ruby>かります。<br>*(Vâng, có thẻ cư trú là được. Tuy nhiên khoá học chỉ tiếng Nhật, có trình độ N3 là hiểu được.)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>はN4ですけど、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em mới N4 nhưng em sẽ cố gắng ạ.)* |
| Suzuki | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>紹介<rt>しょうかい</rt></ruby>します。<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>受講者<rt>じゅこうしゃ</rt></ruby>にも<ruby>慣<rt>な</rt></ruby>れている<ruby>方<rt>かた</rt></ruby>ですから。<br>*(Không sao đâu. Anh sẽ giới thiệu Kondo-sensei. Thầy đã quen với học viên người nước ngoài rồi.)* |
| Hoa | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn anh. Anh giúp em quá ạ.)* |

---

## Tình huống 3 — Văn phòng anh Suzuki · 13:25, quan sát đàn anh gọi điện nhờ vả 先生

> Hoa ngồi bên cạnh, quan sát cách Suzuki dùng kính ngữ qua điện thoại — kỹ năng quan trọng để bắt chước sau này.

| Vai | Lời thoại |
|---|---|
| Suzuki | (bấm số, cúi đầu nhẹ trước khi nói) お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>埼玉<rt>さいたま</rt></ruby><ruby>食品<rt>しょくひん</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby>です。<br>*(Cảm ơn thầy đã luôn quan tâm. Tôi là Suzuki của công ty Thực phẩm Saitama ạ.)* |
| Suzuki | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか?<br>*(Kondo-sensei, bây giờ thầy có rảnh không ạ?)* |
| Suzuki | <ruby>実<rt>じつ</rt></ruby>は、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>のホアさんが、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>を<ruby>受講<rt>じゅこう</rt></ruby>したいと<ruby>言<rt>い</rt></ruby>っております。<br>*(Thật ra, em Hoa thực tập sinh của công ty em muốn theo học khoá Sekininsha ạ.)* |
| Suzuki | はい、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>で、<ruby>来日<rt>らいにち</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。<br>*(Vâng, người Việt Nam, đã sang Nhật năm thứ hai.)* |
| Suzuki | <ruby>日本語<rt>にほんご</rt></ruby>はN4ですが、とても<ruby>真面目<rt>まじめ</rt></ruby>な<ruby>子<rt>こ</rt></ruby>です。<br>*(Tiếng Nhật N4 ạ, nhưng em ấy rất nghiêm túc.)* |
| Suzuki | はい... はい... ありがとうございます。<br>*(Vâng... Vâng... Cảm ơn thầy ạ.)* |
| Suzuki | では、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜日<rt>かようび</rt></ruby>の<ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby>、Zoomでお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vậy thứ Ba tuần sau lúc 15 giờ, qua Zoom xin nhờ thầy. Em xin phép ạ.)* |
| Suzuki | (gác máy, quay sang Hoa) <ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜日<rt>かようび</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>とZoom<ruby>面談<rt>めんだん</rt></ruby>です。<br>*(Thứ Ba tuần sau 15 giờ, gặp Kondo-sensei qua Zoom nhé.)* |
| Hoa | はい!ありがとうございます。「お<ruby>世話<rt>せわ</rt></ruby>になっております」というフレーズ、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Vâng! Em cảm ơn anh. Cụm "お世話になっております", em mới nghe lần đầu ạ.)* |
| Suzuki | <ruby>取引先<rt>とりひきさき</rt></ruby>や<ruby>外部<rt>がいぶ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>する<ruby>時<rt>とき</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>です。<ruby>覚<rt>おぼ</rt></ruby>えておくと<ruby>便利<rt>べんり</rt></ruby>ですよ。<br>*(Là câu chào đầu tiên khi gọi điện cho đối tác hay người ngoài. Nhớ thì sẽ tiện sau này.)* |
| Hoa | はい、メモします。<br>*(Vâng, em ghi lại ạ.)* |

---

## Tình huống 4 — Phòng Hoa · 21:00, chuẩn bị 5 câu hỏi cho buổi 面談

| Vai | Lời thoại |
|---|---|
| Hoa | (mở sổ, vừa viết vừa lẩm bẩm) <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くこと、リストアップしよう。<br>*(Liệt kê những điều cần hỏi Kondo-sensei nào.)* |
| Hoa | <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、テキストはありますか?<br>*(Câu một, có giáo trình không?)* |
| Hoa | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>勉強時間<rt>べんきょうじかん</rt></ruby>はどのくらい<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Câu hai, cần học bao nhiêu thời gian?)* |
| Hoa | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>過去問<rt>かこもん</rt></ruby>はありますか?<br>*(Câu ba, có đề năm trước không?)* |
| Hoa | <ruby>4<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>が<ruby>勉強<rt>べんきょう</rt></ruby>するコツは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Câu bốn, bí quyết học cho người nước ngoài là gì?)* |
| Hoa | <ruby>5<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みの<ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Câu năm, cách đăng ký?)* |
| Hoa | (gấp sổ) よし、<ruby>準備<rt>じゅんび</rt></ruby>できた。<ruby>明日<rt>あした</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Được rồi, chuẩn bị xong. Mai luyện nói thử.)* |

---

## Tình huống 5 — Tuần sau, phòng Hoa · 15:00, tự giới thiệu trong buổi Zoom

| Vai | Lời thoại |
|---|---|
| Kondo | こんにちは、ホアさん。<ruby>近藤<rt>こんどう</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin chào, Hoa-san. Tôi là Kondo. Mong em chỉ giáo.)* |
| Hoa | (cúi đầu trước màn hình) こんにちは、<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>。<ruby>初<rt>はじ</rt></ruby>めまして、グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<br>*(Xin chào Kondo-sensei. Rất hân hạnh, em tên là Nguyễn Thị Hoa. Hôm nay cảm ơn thầy đã dành thời gian cho em.)* |
| Kondo | こちらこそ。<ruby>鈴木<rt>すずき</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すんですね。<br>*(Mới phải. Tôi nghe từ Suzuki-san rồi. Em nhắm tới Sekininsha nhỉ.)* |
| Hoa | はい。<ruby>食品<rt>しょくひん</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>で<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>きたいので、<ruby>専門<rt>せんもん</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>をしっかり<ruby>身<rt>み</rt></ruby>につけたいです。<br>*(Vâng. Vì em muốn làm lâu trong ngành thực phẩm, em muốn trang bị kiến thức chuyên môn chắc chắn ạ.)* |
| Kondo | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>志<rt>こころざし</rt></ruby>ですね。<ruby>質問<rt>しつもん</rt></ruby>があれば、どうぞ。<br>*(Chí khí tuyệt vời. Có câu hỏi gì cứ hỏi đi.)* |
| Hoa | はい、<ruby>5<rt>いつ</rt></ruby>つ<ruby>準備<rt>じゅんび</rt></ruby>してきました。<br>*(Vâng, em đã chuẩn bị 5 câu ạ.)* |

---

## Tình huống 6 — Phòng Hoa · 15:10, Q&A với 先生 và kỹ năng hỏi lại

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>です。テキストはありますか?<br>*(Câu thứ nhất ạ. Có giáo trình không?)* |
| Kondo | はい、あります。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>み<ruby>後<rt>ご</rt></ruby>にPDFと<ruby>動画<rt>どうが</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Có. Sau khi đăng ký sẽ gửi PDF và video.)* |
| Hoa | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>勉強時間<rt>べんきょうじかん</rt></ruby>はどのくらい<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Câu thứ hai, cần học bao nhiêu thời gian?)* |
| Kondo | テキストを<ruby>読<rt>よ</rt></ruby>むのに<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ぐらいですね。<br>*(Đọc giáo trình hết 2 tuần, mỗi ngày khoảng 1 tiếng.)* |
| Hoa | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>過去問<rt>かこもん</rt></ruby>はありますか?<br>*(Câu thứ ba, có đề năm trước không ạ?)* |
| Kondo | あります。<ruby>3<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>お<ruby>渡<rt>わた</rt></ruby>しできます。<br>*(Có. Tôi đưa được 3 năm.)* |
| Hoa | <ruby>4<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>外国人<rt>がいこくじん</rt></ruby>が<ruby>勉強<rt>べんきょう</rt></ruby>するコツは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Câu thứ tư, bí quyết học cho người nước ngoài là gì ạ?)* |
| Kondo | <ruby>専門用語<rt>せんもんようご</rt></ruby>は<ruby>覚<rt>おぼ</rt></ruby>えるしかありません。<ruby>単語<rt>たんご</rt></ruby>リストを<ruby>作<rt>つく</rt></ruby>って、<ruby>毎日<rt>まいにち</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>することです。<br>*(Từ chuyên môn chỉ có cách nhớ thôi. Làm danh sách từ vựng và ôn lại mỗi ngày.)* |
| Hoa | すみません、「<ruby>復習<rt>ふくしゅう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "fukushuu" nghĩa là gì ạ?)* |
| Kondo | <ruby>一度<rt>いちど</rt></ruby><ruby>習<rt>なら</rt></ruby>ったことを、もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>することです。「<ruby>復<rt>ふく</rt></ruby>」は<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す、「<ruby>習<rt>しゅう</rt></ruby>」は<ruby>習<rt>なら</rt></ruby>うです。<br>*(Là xác nhận lại điều đã học một lần. "復" là lặp lại, "習" là học.)* |
| Hoa | なるほど、<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し<ruby>習<rt>なら</rt></ruby>うということですね。ありがとうございます。<br>*(À ra vậy, là học đi học lại đúng không ạ. Em cảm ơn thầy.)* |
| Hoa | <ruby>最後<rt>さいご</rt></ruby>、<ruby>5<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>です。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みの<ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Cuối cùng, câu thứ năm ạ. Cách đăng ký?)* |
| Kondo | <ruby>埼玉県食品衛生協会<rt>さいたまけんしょくひんえいせいきょうかい</rt></ruby>のサイトからオンラインで<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>めます。リンクをメールでお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Đăng ký trực tuyến từ trang web Hiệp hội Vệ sinh Thực phẩm Saitama. Tôi sẽ gửi link qua email.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>頭<rt>あたま</rt></ruby>の<ruby>中<rt>なか</rt></ruby>がすっきりしました。<br>*(Em thực sự cảm ơn thầy. Đầu em sáng ra rồi ạ.)* |

---

## Tình huống 7 — Phòng Hoa · 15:30, Kondo dạy tâm thế cuối buổi

| Vai | Lời thoại |
|---|---|
| Kondo | ホアさん、<ruby>最後<rt>さいご</rt></ruby>にもう<ruby>一<rt>ひと</rt></ruby>つお<ruby>伝<rt>つた</rt></ruby>えしたいことがあります。<br>*(Hoa-san, cuối cùng tôi có một điều muốn nhắn nhủ.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời thầy ạ.)* |
| Kondo | <ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>全体<rt>ぜんたい</rt></ruby>で<ruby>80<rt>はちじゅっ</rt></ruby>パーセントですが、<ruby>外国人<rt>がいこくじん</rt></ruby>は<ruby>60<rt>ろくじゅっ</rt></ruby>パーセントぐらいです。<br>*(Tỷ lệ đậu chung là 80 phần trăm, nhưng người nước ngoài khoảng 60 phần trăm.)* |
| Hoa | え... <ruby>難<rt>むずか</rt></ruby>しいんですね。<ruby>不安<rt>ふあん</rt></ruby>になります。<br>*(Ơ... khó nhỉ. Em thấy lo ạ.)* |
| Kondo | <ruby>言葉<rt>ことば</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>があるからです。でも、ホアさんは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Vì có rào cản ngôn ngữ. Nhưng Hoa-san sẽ ổn thôi.)* |
| Hoa | なぜそう<ruby>思<rt>おも</rt></ruby>われますか?<br>*(Tại sao thầy nghĩ vậy ạ?)* |
| Kondo | <ruby>5<rt>いつ</rt></ruby>つも<ruby>質問<rt>しつもん</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>してきたからです。「<ruby>準備<rt>じゅんび</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>する」、これが<ruby>私<rt>わたし</rt></ruby>の<ruby>長年<rt>ながねん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>です。<br>*(Vì em đã chuẩn bị tới 5 câu hỏi. "Người chuẩn bị thì đậu" — đó là kinh nghiệm nhiều năm của tôi.)* |
| Hoa | (mắt sáng lên) ありがとうございます。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn thầy. Em nhất định sẽ cố gắng.)* |
| Kondo | <ruby>分<rt>わ</rt></ruby>からないことがあれば、いつでもメールしてくださいね。<br>*(Có gì không hiểu cứ email cho tôi bất cứ lúc nào nhé.)* |
| Hoa | はい!<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng! Hôm nay em thực sự cảm ơn thầy ạ. Em xin phép.)* |

---

## Tình huống 8 — Phòng Hoa · 16:00, đăng ký trực tuyến + đọc form bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | (mở laptop, đăng nhập website) <ruby>埼玉県食品衛生協会<rt>さいたまけんしょくひんえいせいきょうかい</rt></ruby>... <ruby>申込<rt>もうしこ</rt></ruby>みフォームを<ruby>開<rt>ひら</rt></ruby>こう。<br>*(Hiệp hội Vệ sinh Thực phẩm Saitama... mở form đăng ký nào.)* |
| Hoa | <ruby>氏名<rt>しめい</rt></ruby>:グエン・ティ・ホア。<ruby>住所<rt>じゅうしょ</rt></ruby>:<ruby>埼玉県<rt>さいたまけん</rt></ruby>...<ruby>在留<rt>ざいりゅう</rt></ruby>カード<ruby>番号<rt>ばんごう</rt></ruby>...<br>*(Họ tên: Nguyễn Thị Hoa. Địa chỉ: Saitama... Số thẻ cư trú...)* |
| Hoa | (dừng lại) あれ?「<ruby>連絡先<rt>れんらくさき</rt></ruby>」って<ruby>何<rt>なん</rt></ruby>だっけ。<br>*(Ơ? "Renrakusaki" là gì nhỉ.)* |
| Hoa | (mở từ điển) <ruby>連絡先<rt>れんらくさき</rt></ruby> = <ruby>電話<rt>でんわ</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>とメール。なるほど。<br>*(Renrakusaki = số điện thoại và email. Ra vậy.)* |
| Hoa | <ruby>受講日<rt>じゅこうび</rt></ruby>:<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>。<ruby>受講料<rt>じゅこうりょう</rt></ruby>:<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。クレジットカードでお<ruby>支払<rt>しはら</rt></ruby>い。<br>*(Ngày học: 15/10 thứ Bảy. Học phí: 10.000 yên. Thanh toán bằng thẻ tín dụng.)* |
| Hoa | (bấm nút cuối) よし、<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>み<ruby>完了<rt>かんりょう</rt></ruby>!<br>*(Xong, hoàn tất đăng ký!)* |
| Hoa | (đứng dậy, vươn vai) <ruby>第一歩<rt>だいいっぽ</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>み<ruby>出<rt>だ</rt></ruby>した。<br>*(Đã bước được bước đầu tiên.)* |

---

## Tình huống 9 — Phòng Hoa · 21:00, lập kế hoạch học 30 ngày

| Vai | Lời thoại |
|---|---|
| Hoa | (mở file PDF textbook vừa nhận) わー、<ruby>200<rt>にひゃく</rt></ruby>ページもある...<br>*(Trời, tận 200 trang...)* |
| Hoa | <ruby>専門用語<rt>せんもんようご</rt></ruby>リスト... <ruby>300<rt>さんびゃく</rt></ruby><ruby>語<rt>ご</rt></ruby>。<br>*(Danh sách từ chuyên môn... 300 từ.)* |
| Hoa | (lấy giấy ra, tính toán) <ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>語<rt>ご</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えれば、<ruby>30<rt>さんじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>で<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>終<rt>お</rt></ruby>わる。<br>*(Mỗi ngày nhớ 10 từ thì 30 ngày là xong hết.)* |
| Hoa | <ruby>毎晩<rt>まいばん</rt></ruby><ruby>21<rt>にじゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>22<rt>にじゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>まで、<ruby>勉強時間<rt>べんきょうじかん</rt></ruby>にしよう。<br>*(Mỗi tối từ 21h đến 22h, làm giờ học.)* |
| Hoa | <ruby>週末<rt>しゅうまつ</rt></ruby>は<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>ずつ。<br>*(Cuối tuần làm đề năm trước mỗi tuần 1 năm.)* |
| Hoa | (viết lên giấy A4 to, dán lên tường) 「<ruby>準備<rt>じゅんび</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>する」。<br>*("Người chuẩn bị thì đậu".)* |
| Hoa | (đứng lùi nhìn) <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>見<rt>み</rt></ruby>る。<br>*(Lời Kondo-sensei, mỗi ngày sẽ nhìn.)* |

---

## Tình huống 10 — Phòng Hoa · 22:30, gọi điện cho chị Linh ở Việt Nam (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — chị Linh (sempai đã hết hạn TTS, về Việt Nam nghỉ) gọi video qua LINE. Hoa ôn lại từ chương qua câu chuyện kể.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Hoa ơi, mày bảo có tin gì vui đúng không? |
| Hoa | (tiếng Việt) Chị Linh, em đăng ký khoá 食品衛生責任者 rồi! 15/10 học trực tuyến cả ngày, sau đó thi luôn. |
| Linh | (tiếng Việt) Trời, oách! Mày xin anh Suzuki à? |
| Hoa | (tiếng Việt) Vâng. Em vào văn phòng anh ấy, đầu tiên em nói "ちょっとよろしいでしょうか" — kiểu xin một phút thôi. Em đã sợ run nhưng anh ấy vui lắm. |
| Linh | (tiếng Việt) Hồi chị mới sang chị cũng không dám hỏi vụ này. Mày giỏi hơn chị hồi đó. |
| Hoa | (tiếng Việt) Anh Suzuki gọi điện cho thầy Kondo trước mặt em. Em nghe được câu "お世話になっております" — chào đối tác ngoài công ty. Em ghi vào sổ luôn. |
| Linh | (tiếng Việt) Câu đó quan trọng cực kỳ. Sau này mày làm chính thức, ngày nào cũng phải dùng. |
| Hoa | (tiếng Việt) Tuần sau em Zoom với thầy Kondo. Thầy bảo người nước ngoài đậu có 60% thôi, nhưng "準備する人は合格する" — người chuẩn bị thì đậu. |
| Linh | (tiếng Việt) Câu đó hay đấy. Mày dán lên tường đi. |
| Hoa | (tiếng Việt) Em dán rồi chị ạ! Cạnh bàn học luôn. |
| Linh | (tiếng Việt) Mày học cẩn thận từ chuyên môn nhé — 公衆衛生・食品衛生・食品衛生法. Chị hồi đó vướng nhất ở 法律. |
| Hoa | (tiếng Việt) Vâng em ghi. Em đã có 300 từ chuyên môn, chia 30 ngày mỗi ngày 10 từ. Mỗi tối từ 9h đến 10h. |
| Linh | (tiếng Việt) Kỷ luật ghê. Tháng 3 chị qua chơi, mày có chứng chỉ rồi, hai chị em đi ăn yakiniku ăn mừng. |
| Hoa | (tiếng Việt) Em chờ chị! Chị cố lấy được visa quay lại nhé. |
| Linh | (tiếng Việt) Ừ. Ngủ sớm đi em, mai còn đi làm. |
| Hoa | (tiếng Việt) Vâng, chúc chị ngủ ngon. |

---

## Đọng lại chương 5

Hoa trải qua một bước ngoặt nghề nghiệp: chủ động xin tư vấn cấp trên về khoá chứng chỉ chuyên môn, lần đầu thực hiện trọn vẹn quy trình **xin phép — trình bày nguyện vọng — hỏi xác nhận — đăng ký**. Em học **mẫu xin một phút thời gian** (ちょっとよろしいでしょうか), **trình bày động cơ học chứng chỉ** (〜と思っています + きっかけ), **hỏi lại lễ phép khi gặp từ chuyên ngành** (〜というのは何ですか / どんな意味ですか), và quan sát anh Suzuki dùng cụm **お世話になっております** khi gọi 先生 ngoài công ty. Trong buổi Zoom với Kondo-sensei, Hoa thực hành **tự giới thiệu trang trọng** (〜と申します・本日はお時間をいただきありがとうございます), hỏi đủ **5 câu chuẩn bị sẵn** (テキスト・勉強時間・過去問・コツ・申込み方法), và xác nhận thông tin khoá học (受講料・受講日・合格率・在留カード). Kondo-sensei dạy em triết lý nghề **「準備する人は合格する」** — người chuẩn bị thì đậu. Hoa đăng ký xong khoá eラーニング, lập kế hoạch học 30 ngày × 10 từ chuyên môn, và gọi điện kể với chị Linh ở Việt Nam — bước đầu tiên trên con đường từ "TTS làm việc" sang "người chuyên môn".

> Từ vựng & mẫu câu chương này: 食品衛生責任者・受講・受講料・受講日・eラーニング・公衆衛生学・食品衛生学・食品衛生法・申込み・在留カード・合格率・過去問・専門用語・復習・動機・面談・連絡先・取引先・ちょっとよろしいでしょうか・〜というのは何ですか・〜と申します・お世話になっております・本日はお時間をいただきありがとうございます・準備する人は合格する

---

## Bí quyết chương

- **Mẫu chủ động xin tư vấn**: xin 1 phút (ちょっとよろしいでしょうか) → nêu nguyện vọng + động cơ (きっかけ) → hỏi xác nhận chi tiết (料金・期間・レベル) → cảm ơn.
- **Quan sát đàn anh gọi 先生 ngoài tổ chức**: お世話になっております / 今お時間よろしいでしょうか / 失礼いたします — bộ ba câu thoại điện thoại công sở.
- **Chuẩn bị 5 câu trước khi gặp 先生**: kỹ năng "面談 chuyên nghiệp" — sẽ thấy kết quả khi Hoa làm 正社員 sau này.
- **Bí quyết nghề**: 「準備する人は合格する」 — dán tường, mantra cả năm 2.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 食品衛生責任者 | しょくひんえいせいせきにんしゃ | THỰC PHẨM VỆ SINH TRÁCH NHIỆM GIẢ | Người chịu trách nhiệm vệ sinh thực phẩm |
| 資格 | しかく | TƯ CÁCH | Chứng chỉ, tư cách |
| 実は | じつは | THỰC | Thật ra |
| 専門知識 | せんもんちしき | CHUYÊN MÔN TRI THỨC | Kiến thức chuyên môn |
| 食品業界 | しょくひんぎょうかい | THỰC PHẨM NGHIỆP GIỚI | Ngành thực phẩm |
| 動機 | どうき | ĐỘNG CƠ | Động cơ, lý do |
| 埼玉県食品衛生協会 | さいたまけんしょくひんえいせいきょうかい | KỲ NGỌC HUYỆN THỰC PHẨM VỆ SINH HIỆP HỘI | Hiệp hội Vệ sinh Thực phẩm tỉnh Saitama |
| 講習 | こうしゅう | GIẢNG TẬP | Khoá học, buổi tập huấn |
| 内容 | ないよう | NỘI DUNG | Nội dung |
| 科目 | かもく | KHOA MỤC | Môn học |
| 公衆衛生学 | こうしゅうえいせいがく | CÔNG CHÚNG VỆ SINH HỌC | Vệ sinh công cộng (học) |
| 食品衛生学 | しょくひんえいせいがく | THỰC PHẨM VỆ SINH HỌC | Vệ sinh thực phẩm (học) |
| 食品衛生法 | しょくひんえいせいほう | THỰC PHẨM VỆ SINH PHÁP | Luật vệ sinh thực phẩm |
| 感染症 | かんせんしょう | CẢM NHIỄM CHỨNG | Bệnh truyền nhiễm |
| 予防 | よぼう | DỰ PHÒNG | Phòng tránh |
| 試験 | しけん | THÍ NGHIỆM | Bài thi, kỳ thi |
| 選択問題 | せんたくもんだい | TUYỂN TRẠCH VẤN ĐỀ | Câu hỏi trắc nghiệm |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | Tỷ lệ đậu |
| 受講料 | じゅこうりょう | THỤ GIẢNG LIỆU | Học phí |
| 在留カード | ざいりゅうカード | TẠI LƯU — | Thẻ cư trú |
| 受講者 | じゅこうしゃ | THỤ GIẢNG GIẢ | Học viên |
| 取引先 | とりひきさき | THỦ DẪN TIÊN | Đối tác kinh doanh |
| 外部 | がいぶ | NGOẠI BỘ | Bên ngoài |
| 技能実習生 | ぎのうじっしゅうせい | KỸ NĂNG THỰC TẬP SINH | Thực tập sinh kỹ năng |
| 受講 | じゅこう | THỤ GIẢNG | Tham gia khoá học |
| 面談 | めんだん | DIỆN ĐÀM | Buổi gặp trao đổi |
| 過去問 | かこもん | QUÁ KHỨ VẤN | Đề thi các năm trước |
| 申し込み | もうしこみ | THÂN | Đăng ký |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | Thuật ngữ chuyên môn |
| 復習 | ふくしゅう | PHỤC TẬP | Ôn lại |
| 連絡先 | れんらくさき | LIÊN LẠC TIÊN | Thông tin liên lạc |
| 受講日 | じゅこうび | THỤ GIẢNG NHẬT | Ngày học |
| 第一歩 | だいいっぽ | ĐỆ NHẤT BỘ | Bước đầu tiên |
| 言葉の壁 | ことばのかべ | NGÔN DIỆP — BÍCH | Rào cản ngôn ngữ |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000006, 800000012, NULL, 'markdown_book', 'T6. Mensetsu giữa kỳ năm 2 (中間面接)', '# Sách thực tập sinh thực phẩm · T6. Mensetsu giữa kỳ năm 2 (中間面接)

> **Mục tiêu nhân vật:** Hoa (23 tuổi, Hà Nội) bước vào năm 2 thực tập sinh chế biến thực phẩm, lần đầu mensetsu với vai trò sempai. Học các mẫu hội thoại tiếng Nhật trong buổi phỏng vấn giữa kỳ: trình bày 自己反省 (mạnh/yếu/học được/mục tiêu) với cấp trên, dùng kính ngữ trang trọng (〜と考えております・〜を視野に入れております), báo cáo lộ trình chứng chỉ (食品衛生責任者・HACCP) và N3, hỏi lại lễ phép khi nghe thông tin mới (〜というのは?), quan sát cách sempai cấp trên đưa lời khuyên giới hạn (無理しないで), và hướng dẫn kohai luyện câu trước phỏng vấn bằng やさしい日本語.

---

## Bối cảnh

Tháng 9 năm 2027. Hoa đã làm việc tại xưởng chế biến thực phẩm ở Aichi được 17 tháng, vừa qua mốc 6 tháng năm 2 (kể từ 1/4/2027). Trình độ tiếng Nhật N4, đang ôn N3. Suzuki — trưởng nhóm — tổ chức 中間面接 cho TTS năm 2 và Ikusei năm 1. Chương này tập trung các mẫu câu giao tiếp dùng trong buổi phỏng vấn nội bộ: trình bày phản tỉnh bốn mục, báo cáo kế hoạch chứng chỉ, xác nhận thông tin về diện visa, và hướng dẫn kohai chuẩn bị mensetsu.

---

## Tình huống 1 — Phòng ký túc của Hoa · 19:00 buổi tối hôm trước, hướng dẫn kohai khái niệm 反省

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>明日<rt>あした</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>で「<ruby>反省<rt>はんせい</rt></ruby>」って<ruby>言<rt>い</rt></ruby>われたんですけど、<ruby>何<rt>なに</rt></ruby>のことですか?<br>*(Chị Hoa, mai phỏng vấn người ta bảo viết "phản tỉnh" mà em không hiểu là gì.)* |
| Hoa | <ruby>反省<rt>はんせい</rt></ruby>は<ruby>4<rt>よっ</rt></ruby>つの<ruby>項目<rt>こうもく</rt></ruby>を<ruby>書<rt>か</rt></ruby>くんだよ。<ruby>一<rt>いち</rt></ruby>、<ruby>強<rt>つよ</rt></ruby>み。<ruby>二<rt>に</rt></ruby>、<ruby>弱<rt>よわ</rt></ruby>み。<ruby>三<rt>さん</rt></ruby>、<ruby>学<rt>まな</rt></ruby>んだこと。<ruby>四<rt>し</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>。<br>*(Phản tỉnh là viết 4 mục. Một: điểm mạnh. Hai: điểm yếu. Ba: điều học được. Bốn: mục tiêu tiếp theo.)* |
| Mai | <ruby>難<rt>むずか</rt></ruby>しいです...<ruby>自分<rt>じぶん</rt></ruby>のことが<ruby>言<rt>い</rt></ruby>えません。<br>*(Khó quá... em không biết nói về mình thế nào.)* |
| Hoa | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>書<rt>か</rt></ruby>こうね。マイさんの<ruby>強<rt>つよ</rt></ruby>みは<ruby>何<rt>なん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う?<br>*(Cùng viết với chị. Theo Mai, điểm mạnh của em là gì?)* |
| Mai | え?<ruby>分<rt>わ</rt></ruby>かりません...<ruby>強<rt>つよ</rt></ruby>みなんて、<ruby>何<rt>なに</rt></ruby>もないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Ơ? Em không biết... Em nghĩ em chẳng có điểm mạnh nào.)* |
| Hoa | あるよ。<ruby>挨拶<rt>あいさつ</rt></ruby>がしっかりしている、<ruby>真面目<rt>まじめ</rt></ruby>、<ruby>掃除<rt>そうじ</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>。<ruby>木村<rt>きむら</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>もそう<ruby>言<rt>い</rt></ruby>っていたよ。<br>*(Có chứ. Chào hỏi đàng hoàng, nghiêm túc, dọn dẹp cẩn thận. Chủ nhiệm Kimura cũng đã nói vậy.)* |
| Mai | <ruby>本当<rt>ほんとう</rt></ruby>ですか? <ruby>気<rt>き</rt></ruby>づいてくれていたんですね。<br>*(Thật ạ? Mọi người vẫn để ý đến em ạ.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>だよ。<ruby>自分<rt>じぶん</rt></ruby>では<ruby>気<rt>き</rt></ruby>づかなくても、<ruby>周<rt>まわ</rt></ruby>りはちゃんと<ruby>見<rt>み</rt></ruby>てくれている。<br>*(Thật mà. Mình không nhận ra nhưng người xung quanh vẫn nhìn thấy.)* |

---

## Tình huống 2 — Phòng ký túc của Hoa · 19:30, dạy kohai mẫu câu trang trọng 〜と考えております

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>面接<rt>めんせつ</rt></ruby>で<ruby>大事<rt>だいじ</rt></ruby>な<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>が<ruby>一<rt>ひと</rt></ruby>つあるよ。「〜と<ruby>考<rt>かんが</rt></ruby>えております」。<br>*(Mai này, trong phỏng vấn có một cách nói quan trọng: "〜to kangaete orimasu".)* |
| Mai | <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>ですね。<ruby>普通<rt>ふつう</rt></ruby>の「<ruby>思<rt>おも</rt></ruby>います」とどう<ruby>違<rt>ちが</rt></ruby>うんですか?<br>*(Từ khó quá. Khác gì so với "omoimasu" bình thường?)* |
| Hoa | <ruby>意味<rt>いみ</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだけど、もっと<ruby>丁寧<rt>ていねい</rt></ruby>。<ruby>上司<rt>じょうし</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うんだよ。<ruby>練習<rt>れんしゅう</rt></ruby>してみよう。「<ruby>強<rt>つよ</rt></ruby>みは<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えております。」<br>*(Nghĩa giống nhau nhưng lễ phép hơn. Dùng với cấp trên. Cùng luyện nhé: "Điểm mạnh của em là chào hỏi, em nghĩ vậy".)* |
| Mai | <ruby>強<rt>つよ</rt></ruby>みは...<ruby>挨拶<rt>あいさつ</rt></ruby>と...<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Điểm mạnh là... chào hỏi... em nghĩ vậy.)* |
| Hoa | いいね。もう<ruby>一<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>息<rt>いき</rt></ruby>を<ruby>止<rt>と</rt></ruby>めずに。<br>*(Tốt. Một lần nữa, đừng ngắt giữa câu.)* |
| Mai | <ruby>強<rt>つよ</rt></ruby>みは<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>真面目<rt>まじめ</rt></ruby>さと<ruby>考<rt>かんが</rt></ruby>えております!<br>*(Điểm mạnh của em là chào hỏi và sự nghiêm túc, em nghĩ vậy!)* |
| Hoa | <ruby>完璧<rt>かんぺき</rt></ruby>! あと「<ruby>挑戦<rt>ちょうせん</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております」も<ruby>使<rt>つか</rt></ruby>えると<ruby>強<rt>つよ</rt></ruby>いよ。<br>*(Hoàn hảo! Còn câu "chousen shitai to kangaete orimasu" nữa cũng rất mạnh.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>もこうやって<ruby>練習<rt>れんしゅう</rt></ruby>したんですか?<br>*(Chị Hoa, 1 năm trước chị cũng luyện thế này ạ?)* |
| Hoa | うん、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>練習<rt>れんしゅう</rt></ruby>したよ。だから<ruby>今<rt>いま</rt></ruby>、マイさんに<ruby>教<rt>おし</rt></ruby>えてる。<br>*(Ừ, chị luyện với anh Satou. Nên giờ chị truyền lại cho em.)* |

---

## Tình huống 3 — Hành lang trước phòng họp · 9:00 sáng hôm sau, Mai mensetsu trước

| Vai | Lời thoại |
|---|---|
| Suzuki | マイさん、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>5<rt>ご</rt></ruby>か<ruby>月間<rt>げつかん</rt></ruby>、どうでしたか?<br>*(Mai-san, 5 tháng từ tháng 4 đến giờ thế nào?)* |
| Mai | はい、<ruby>強<rt>つよ</rt></ruby>みは<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>真面目<rt>まじめ</rt></ruby>さと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Vâng, điểm mạnh của em là chào hỏi và sự nghiêm túc, em nghĩ vậy.)* |
| Suzuki | おお、よく<ruby>言<rt>い</rt></ruby>えましたね。<ruby>弱<rt>よわ</rt></ruby>みは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Ô, nói tốt đấy. Điểm yếu là gì?)* |
| Mai | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>原料確認<rt>げんりょうかくにん</rt></ruby>を<ruby>漏<rt>も</rt></ruby>らしてしまった<ruby>失敗<rt>しっぱい</rt></ruby>です。<br>*(Là vụ tháng 5 em đã bỏ sót kiểm tra nguyên liệu ạ.)* |
| Suzuki | あの<ruby>件<rt>けん</rt></ruby>ね。きちんと<ruby>反省<rt>はんせい</rt></ruby>できていますね。<ruby>今<rt>いま</rt></ruby>はどう<ruby>対策<rt>たいさく</rt></ruby>していますか?<br>*(Vụ đó nhỉ. Em phản tỉnh đàng hoàng đấy. Giờ em đối ứng thế nào?)* |
| Mai | <ruby>毎朝<rt>まいあさ</rt></ruby>チェックリストを<ruby>使<rt>つか</rt></ruby>っております。<ruby>項目<rt>こうもく</rt></ruby>ごとに<ruby>指差<rt>ゆびさ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Mỗi sáng em dùng bảng kiểm. Từng mục em chỉ tay xác nhận.)* |
| Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(Tuyệt vời. Mục tiêu tiếp theo?)* |
| Mai | <ruby>来年<rt>らいねん</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に N4 <ruby>合格<rt>ごうかく</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Tháng 7 năm sau em sẽ đậu N4, em nghĩ vậy.)* |
| Suzuki | できますよ。<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Được mà. Anh cổ vũ em.)* |

---

## Tình huống 4 — Phòng họp nhỏ · 10:00, Hoa trình bày 3 điểm chính với cấp trên

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、どうぞ<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Hoa-san, mời em ngồi.)* |
| Hoa | (cúi đầu) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin phép. Hôm nay nhờ anh giúp đỡ ạ.)* |
| Suzuki | <ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>5<rt>ご</rt></ruby>か<ruby>月間<rt>げつかん</rt></ruby>、どうでしたか?<br>*(5 tháng đầu năm 2 thế nào?)* |
| Hoa | はい、<ruby>3<rt>みっ</rt></ruby>つご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Vâng, em xin được báo cáo 3 điểm ạ.)* |
| Hoa | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からマイさんの<ruby>後輩指導<rt>こうはいしどう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しております。<br>*(Thứ nhất, từ tháng 4 em đảm nhận chỉ dẫn kohai cho Mai.)* |
| Hoa | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>受講<rt>じゅこう</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みました。<ruby>来月<rt>らいげつ</rt></ruby><ruby>受講<rt>じゅこう</rt></ruby>です。<br>*(Thứ hai, em đã đăng ký khoá Người chịu trách nhiệm vệ sinh thực phẩm. Tháng sau em học.)* |
| Hoa | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、N3 <ruby>合格<rt>ごうかく</rt></ruby>を<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れて<ruby>勉強<rt>べんきょう</rt></ruby>しております。<br>*(Thứ ba, em đang học nhắm tới đậu N3.)* |
| Suzuki | <ruby>3<rt>みっ</rt></ruby>つも! <ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えていて<ruby>素晴<rt>すば</rt></ruby>らしいですね。<br>*(Cả 3 thứ! Nói cụ thể được thế là tuyệt vời đấy.)* |

---

## Tình huống 5 — Phòng họp nhỏ · 10:10, Suzuki hỏi sâu về 後輩指導 — quan sát phản hồi của sempai cấp trên

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>後輩指導<rt>こうはいしどう</rt></ruby>はどうですか? <ruby>難<rt>むずか</rt></ruby>しいところはありますか?<br>*(Hoa-san, chỉ dẫn kohai thế nào? Có chỗ nào khó không?)* |
| Hoa | マイさんは<ruby>真面目<rt>まじめ</rt></ruby>でいい<ruby>子<rt>こ</rt></ruby>です。<ruby>失敗<rt>しっぱい</rt></ruby>もありましたが、<ruby>毎回<rt>まいかい</rt></ruby>きちんと<ruby>学<rt>まな</rt></ruby>んでくれます。<br>*(Mai nghiêm túc và ngoan. Có sai sót nhưng mỗi lần đều biết rút kinh nghiệm.)* |
| Suzuki | <ruby>木村<rt>きむら</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>から<ruby>聞<rt>き</rt></ruby>きましたよ。ホアさんはやさしい<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えてくれるって。<br>*(Anh có nghe chủ nhiệm Kimura nói rồi. Hoa-san dạy bằng tiếng Nhật đơn giản.)* |
| Hoa | はい、<ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けて、<ruby>短<rt>みじか</rt></ruby>い<ruby>文<rt>ぶん</rt></ruby>で<ruby>話<rt>はな</rt></ruby>すように<ruby>意識<rt>いしき</rt></ruby>しております。<br>*(Vâng, em ý thức tránh từ khó, nói câu ngắn ạ.)* |
| Suzuki | それでいいですよ。<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>後<rt>あと</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えていますか?<br>*(Vậy là tốt rồi. Sau khoá Sekininsha em tính gì?)* |
| Hoa | HACCP コーディネーターに<ruby>挑戦<rt>ちょうせん</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>からもお<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em muốn thử HACCP Coordinator. Em cũng đã nghe cô Kondo giảng về việc đó ạ.)* |
| Suzuki | おお、HACCP も。<ruby>食品<rt>しょくひん</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>では<ruby>強<rt>つよ</rt></ruby>い<ruby>武器<rt>ぶき</rt></ruby>になりますよ。<br>*(Ồ, cả HACCP. Trong ngành thực phẩm sẽ là vũ khí mạnh đấy.)* |

---

## Tình huống 6 — Phòng họp nhỏ · 10:20, hỏi lại lễ phép về lộ trình SSW1

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>長期目標<rt>ちょうきもくひょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Hoa-san, mục tiêu dài hạn là gì?)* |
| Hoa | <ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>技能実習<rt>ぎのうじっしゅう</rt></ruby><ruby>終了後<rt>しゅうりょうご</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れております。<br>*(Tháng 4/2029, sau khi xong TTS, em nhắm tới visa Kỹ năng đặc định 1.)* |
| Suzuki | <ruby>飲食料品製造業<rt>いんしょくりょうひんせいぞうぎょう</rt></ruby>の<ruby>分野<rt>ぶんや</rt></ruby>ですね。<br>*(Lĩnh vực chế biến đồ ăn thức uống nhỉ.)* |
| Hoa | はい、<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>分野<rt>ぶんや</rt></ruby>です。<br>*(Vâng, cùng lĩnh vực với công việc hiện tại ạ.)* |
| Suzuki | あ、ホアさん、N3 があれば、<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>になりますよ。<br>*(À, Hoa-san này, nếu có N3 thì được miễn thi kỹ năng đấy.)* |
| Hoa | え!? すみません、「<ruby>免除<rt>めんじょ</rt></ruby>」というのは?<br>*(Ơ!? Xin lỗi anh, "menjo" nghĩa là gì ạ?)* |
| Suzuki | <ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けなくてもいい、ということです。<br>*(Là không cần phải thi, đấy.)* |
| Hoa | <ruby>受<rt>う</rt></ruby>けなくてもいい、ということですね。<ruby>知<rt>し</rt></ruby>りませんでした!<br>*(Tức là không cần thi đúng không ạ. Em không biết chuyện đó!)* |
| Suzuki | はい。だから N3 を<ruby>目指<rt>めざ</rt></ruby>すと、SSW1 への<ruby>移行<rt>いこう</rt></ruby>もスムーズになります。<br>*(Đúng. Nên nhắm N3 thì chuyển sang SSW1 cũng thuận lợi.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>計画<rt>けいかく</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>します。<br>*(Em thực sự cảm ơn anh. Em sẽ xem lại kế hoạch.)* |

---

## Tình huống 7 — Phòng họp nhỏ · 10:30, Suzuki khuyên 無理しないで — quan sát cách sempai đặt giới hạn

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きく<ruby>成長<rt>せいちょう</rt></ruby>しましたね。<br>*(Hoa-san, em đã trưởng thành rất nhiều trong 1 năm.)* |
| Hoa | <ruby>皆様<rt>みなさま</rt></ruby>のおかげです。ありがとうございます。<br>*(Nhờ mọi người ạ. Em cảm ơn.)* |
| Suzuki | <ruby>一<rt>ひと</rt></ruby>つだけアドバイスがあります。<ruby>無理<rt>むり</rt></ruby>しないでくださいね。<br>*(Anh có một lời khuyên thôi. Em đừng quá sức nhé.)* |
| Hoa | はい? <ruby>無理<rt>むり</rt></ruby>しない...というのは?<br>*(Vâng? "Không quá sức"... nghĩa là gì ạ?)* |
| Suzuki | <ruby>後輩指導<rt>こうはいしどう</rt></ruby>、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>、HACCP、N3、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>。<ruby>少<rt>すこ</rt></ruby>し<ruby>多<rt>おお</rt></ruby>すぎませんか?<br>*(Chỉ dẫn kohai, Sekininsha, HACCP, N3, công việc hàng ngày. Có phải hơi nhiều quá không?)* |
| Hoa | あ...そうかもしれません。<br>*(À... có lẽ vậy ạ.)* |
| Suzuki | <ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>をつけてください。<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Hãy ưu tiên hoá. Giữ sức khoẻ.)* |
| Hoa | はい、<ruby>分<rt>わ</rt></ruby>かりました。N3 を<ruby>最優先<rt>さいゆうせん</rt></ruby>にいたします。<br>*(Vâng, em hiểu rồi. Em sẽ ưu tiên N3 nhất.)* |
| Suzuki | <ruby>困<rt>こま</rt></ruby>ったら、いつでも<ruby>相談<rt>そうだん</rt></ruby>してください。<br>*(Có khó khăn cứ tâm sự với anh bất cứ lúc nào.)* |
| Hoa | (cúi đầu sâu) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Cúi đầu sâu. Em thực sự cảm ơn anh.)* |

---

## Tình huống 8 — Hành lang trước phòng họp · 11:00, Mai chia sẻ kết quả phỏng vấn

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまでした! どうでしたか?<br>*(Chị Hoa, chị vất vả rồi! Thế nào ạ?)* |
| Hoa | よかった! <ruby>大<rt>だい</rt></ruby>ニュースもあったよ。N3 に<ruby>合格<rt>ごうかく</rt></ruby>すれば、SSW1 の<ruby>試験<rt>しけん</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>になるんだって。<br>*(Tốt lắm! Có tin lớn nữa. Đậu N3 là được miễn thi SSW1 đấy.)* |
| Mai | わー、すごい! <ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Wow, tuyệt! Em không biết luôn ạ.)* |
| Hoa | マイさんは? <ruby>緊張<rt>きんちょう</rt></ruby>した?<br>*(Còn Mai? Có hồi hộp không?)* |
| Mai | <ruby>最初<rt>さいしょ</rt></ruby>はとても<ruby>緊張<rt>きんちょう</rt></ruby>しましたが、<ruby>練習<rt>れんしゅう</rt></ruby>した<ruby>文<rt>ぶん</rt></ruby>がそのまま<ruby>出<rt>で</rt></ruby>てきました。<ruby>褒<rt>ほ</rt></ruby>められました!<br>*(Lúc đầu rất hồi hộp, nhưng câu đã luyện bật ra y nguyên. Em được khen ạ!)* |
| Hoa | おめでとう!<br>*(Chúc mừng em!)* |
| Mai | <ruby>昨日<rt>きのう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>のおかげです。ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Nhờ buổi luyện hôm qua ạ. Chị Hoa, em thực sự cảm ơn chị.)* |
| Hoa | <ruby>恩返<rt>おんがえ</rt></ruby>し、また<ruby>一<rt>ひと</rt></ruby>つだね。<br>*(Đáp ơn, lại thêm một việc nữa nhỉ.)* |

---

## Tình huống 9 — Nhà ăn 食堂 · 12:00, đồng nghiệp Indo Putri hỏi mẹo

| Vai | Lời thoại |
|---|---|
| Putri | ホアさん、<ruby>面接<rt>めんせつ</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさま! どうでしたか?<br>*(Hoa-san, phỏng vấn vất vả rồi! Thế nào?)* |
| Hoa | プトゥリさん、ありがとう。<ruby>褒<rt>ほ</rt></ruby>めていただけました。<br>*(Putri, cảm ơn cậu. Tớ được khen rồi.)* |
| Putri | よかったね! <ruby>私<rt>わたし</rt></ruby>も<ruby>来週<rt>らいしゅう</rt></ruby>Tokutei の<ruby>面接<rt>めんせつ</rt></ruby>があります。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のコツ、<ruby>教<rt>おし</rt></ruby>えてくれませんか?<br>*(Mừng cậu! Tớ tuần sau có phỏng vấn Tokutei. Mẹo năm thứ 2 chỉ tớ với?)* |
| Hoa | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>を<ruby>言<rt>い</rt></ruby>うことだよ。「<ruby>頑張<rt>がんば</rt></ruby>ります」だけじゃ<ruby>弱<rt>よわ</rt></ruby>い。<br>*(Là phải nói số liệu cụ thể. Chỉ "em sẽ cố" thì yếu lắm.)* |
| Putri | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>...<ruby>例<rt>たと</rt></ruby>えば?<br>*(Số cụ thể... ví dụ?)* |
| Hoa | 「N3 を<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します」とか、「<ruby>失敗<rt>しっぱい</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します」とか。<br>*(Như "tháng 12 đậu N3" hay "nhắm 0 sai sót".)* |
| Putri | なるほど! あと「〜と<ruby>考<rt>かんが</rt></ruby>えております」は<ruby>使<rt>つか</rt></ruby>った?<br>*(Ra vậy! Câu "to kangaete orimasu" cậu có dùng không?)* |
| Hoa | <ruby>使<rt>つか</rt></ruby>ったよ。<ruby>上司<rt>じょうし</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うと<ruby>印象<rt>いんしょう</rt></ruby>がぐっと<ruby>良<rt>よ</rt></ruby>くなる。<br>*(Có. Dùng với cấp trên thì ấn tượng tốt lên hẳn.)* |
| Putri | メモしておきます。ありがとう、ホアさん!<br>*(Tớ ghi lại đây. Cảm ơn Hoa-san!)* |

---

## Tình huống 10 — Đường về ký túc · 18:30, gọi LINE với 先輩 Linh khoá trước

| Vai | Lời thoại |
|---|---|
| Hoa | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>中間面接<rt>ちゅうかんめんせつ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<br>*(Chị Linh, mensetsu giữa kỳ xong rồi ạ.)* |
| Linh | お<ruby>疲<rt>つか</rt></ruby>れさま! どうだった?<br>*(Vất vả em! Thế nào?)* |
| Hoa | <ruby>褒<rt>ほ</rt></ruby>めていただきました。それから<ruby>大<rt>だい</rt></ruby>ニュース:N3 で SSW1 <ruby>免除<rt>めんじょ</rt></ruby>になるんですって。<br>*(Em được khen ạ. Còn tin lớn: có N3 thì miễn thi SSW1 đấy.)* |
| Linh | あ、<ruby>知<rt>し</rt></ruby>らなかった? <ruby>私<rt>わたし</rt></ruby>もそれで<ruby>免除<rt>めんじょ</rt></ruby>になったよ。<br>*(Á, em không biết à? Chị cũng được miễn thi nhờ N3 đấy.)* |
| Hoa | リン<ruby>姉<rt>ねえ</rt></ruby>さんも? もっと<ruby>早<rt>はや</rt></ruby>く<ruby>教<rt>おし</rt></ruby>えてくれればよかったのに!<br>*(Chị cũng vậy ạ? Chị nói sớm hơn với em thì tốt biết mấy!)* |
| Linh | ごめんごめん。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>面接<rt>めんせつ</rt></ruby>のコツ、もう<ruby>一<rt>ひと</rt></ruby>つあるよ。「<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>」。「<ruby>頑張<rt>がんば</rt></ruby>る」じゃなくて「N3 を <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に」。<br>*(Xin lỗi xin lỗi. Còn một mẹo nữa cho năm 2: "số cụ thể". Không phải "em sẽ cố" mà "N3 vào tháng 12".)* |
| Hoa | やった、それは<ruby>今日<rt>きょう</rt></ruby>やりました!<br>*(Hay quá, hôm nay em làm rồi đấy chị!)* |
| Linh | <ruby>偉<rt>えら</rt></ruby>いね、ホア!<br>*(Giỏi lắm Hoa!)* |

---

## Tình huống 11 — Phòng ký túc · 21:00, gọi điện về Việt Nam cho mẹ (cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật và gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mẹ ơi, hôm nay con phỏng vấn giữa kỳ. Sếp Suzuki khen con đấy. |
| Mẹ | (tiếng Việt) Mẹ mừng quá. Con khoẻ không? |
| Hoa | (tiếng Việt) Con khoẻ. Mà có chuyện hay: cái N3 mà con đang ôn — nếu đậu thì con được miễn thi 特定技能 (Tokutei). Đỡ một kỳ thi luôn. |
| Mẹ | (tiếng Việt) Tokutei là cái visa sau thực tập sinh à con? |
| Hoa | (tiếng Việt) Vâng. Tháng 4/2029 con xong 技能実習 (thực tập sinh) ba năm. Sau đó con xin Tokutei 1号, làm tiếp 5 năm. Lên được 2号 thì ở vô thời hạn, được mang gia đình theo. |
| Mẹ | (tiếng Việt) Ở Nhật lâu thế cơ à... Mẹ có sang thăm con được không? |
| Hoa | (tiếng Việt) Được mẹ ạ. Năm sau mẹ thu xếp sang đi, con dẫn mẹ đi xưởng, gặp anh Suzuki, gặp em Mai con đang dạy. |
| Mẹ | (tiếng Việt) Em Mai là đứa con dạy 反省 (phản tỉnh) hả? |
| Hoa | (tiếng Việt) Vâng. Hôm qua con luyện cho nó câu 〜と考えております (kangaete orimasu) — kiểu trang trọng để nói với sếp. Sáng nay nó dùng thật, được khen ngay. Con vui hơn cả con được khen. |
| Mẹ | (tiếng Việt) Con dạy được người khác là con lớn rồi đấy. Mẹ không lo nữa. |
| Hoa | (tiếng Việt) Mà mẹ ơi, sếp dặn con "đừng quá sức" — 無理しないで. Con ôm nhiều quá: kohai, chứng chỉ, N3, công việc. Sếp bảo ưu tiên N3 trước. |
| Mẹ | (tiếng Việt) Sếp con tử tế. Nghe lời sếp đi con. Sức khoẻ là quan trọng nhất. |
| Hoa | (tiếng Việt) Vâng mẹ. Con ngủ sớm đây. Mẹ cũng đi nghỉ đi. |

---

## Đọng lại chương 6

Buổi 中間面接 lần đầu trong vai trò sempai, Hoa học được nguyên một bộ mẫu câu phỏng vấn trang trọng dùng với cấp trên: trình bày 反省 bốn mục (**強み・弱み・学んだこと・次の目標**), dùng cụm **〜と考えております** thay cho 〜と思います, báo cáo lộ trình bằng số liệu cụ thể (**〜を視野に入れております・〜に挑戦したいと考えております**), và hỏi lại lễ phép khi nghe từ mới bằng **〜というのは?** + xác nhận **〜ということですね**. Khám phá lớn nhất là cơ chế **N3 → 特定技能試験免除** trong ngành **飲食料品製造業** — đổi toàn bộ thứ tự ưu tiên. Đồng thời quan sát được cách sempai cấp trên đặt giới hạn cho kohai mình bằng câu **無理しないで・体を大事に**, và áp dụng ngay vai trò sempai với Mai: luyện trước câu phỏng vấn bằng やさしい日本語, khen điểm mạnh, biến 失敗 thành 反省 có 対策 (チェックリスト・指差し確認). Nghề thực phẩm trọng **精度** ở từng nguyên liệu, nhưng nghề làm sempai trọng **精度** ở từng câu nói với kohai.

> Từ vựng & mẫu câu chương này: 中間面接・反省・強み・弱み・学んだこと・次の目標・後輩指導・食品衛生責任者・HACCP コーディネーター・視野に入れる・挑戦する・免除・特定技能1号・飲食料品製造業・技能実習・移行・優先順位・無理しないで・体を大事に・指差し確認・チェックリスト・やさしい日本語・〜と考えております・〜というのは?・〜ということですね・ご報告させていただきます

---

## Bí quyết chương

- Mensetsu năm 2 = vai sempai. Trình bày: 後輩指導 + chứng chỉ + N3 + tương lai dài hạn.
- Cụm **〜に挑戦したいと考えております** = trang trọng thể hiện nguyện vọng, chuẩn cho phỏng vấn nội bộ.
- N3 = miễn thi SSW1 飲食料品製造業 → ưu tiên cao nhất từ chương này trở đi.
- Hướng dẫn kohai trước mensetsu = chỉ mẫu câu, luyện vài lần, khen điểm mạnh trước.
- **無理しないで** — sempai cấp trên dạy mình giới hạn, mình dạy lại kohai bằng やさしい日本語.

> *"Năm 1 mensetsu, mình hỏi ''làm sao để học?''. Năm 2 mensetsu, mình hỏi ''làm sao để dạy + làm sao để xa hơn?''. Câu hỏi thay đổi = mình thay đổi."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 中間面接 | ちゅうかんめんせつ | TRUNG GIAN DIỆN TIẾP | Phỏng vấn giữa kỳ |
| 反省 | はんせい | PHẢN TỈNH | Tự phản tỉnh, kiểm điểm |
| 強み | つよみ | CƯỜNG | Điểm mạnh |
| 弱み | よわみ | NHƯỢC | Điểm yếu |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |
| 挨拶 | あいさつ | ÁI TÁT | Chào hỏi |
| 掃除 | そうじ | TẢO TRỪ | Dọn dẹp |
| 主任 | しゅにん | CHỦ NHIỆM | Chủ nhiệm |
| 上司 | じょうし | THƯỢNG TƯ | Cấp trên |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | Thử thách |
| 原料確認 | げんりょうかくにん | NGUYÊN LIỆU XÁC NHẬN | Kiểm tra nguyên liệu |
| 指差し確認 | ゆびさしかくにん | CHỈ SAI XÁC NHẬN | Chỉ tay xác nhận |
| 合格 | ごうかく | HỢP CÁCH | Đậu, đỗ |
| 応援 | おうえん | ỨNG VIỆN | Cổ vũ, hỗ trợ |
| 後輩指導 | こうはいしどう | HẬU BỐI CHỈ ĐẠO | Hướng dẫn kohai |
| 視野に入れる | しやにいれる | THỊ DÃ — | Đưa vào tầm ngắm, nhắm tới |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | Cụ thể |
| 武器 | ぶき | VŨ KHÍ | Vũ khí |
| 長期目標 | ちょうきもくひょう | TRƯỜNG KỲ MỤC TIÊU | Mục tiêu dài hạn |
| 終了後 | しゅうりょうご | CHUNG LIỄU HẬU | Sau khi kết thúc |
| 飲食料品製造業 | いんしょくりょうひんせいぞうぎょう | ẨM THỰC LIỆU PHẨM CHẾ TẠO NGHIỆP | Ngành chế biến đồ ăn thức uống |
| 分野 | ぶんや | PHÂN DÃ | Lĩnh vực |
| 免除 | めんじょ | MIỄN TRỪ | Miễn (thi) |
| 移行 | いこう | DI HÀNH | Chuyển đổi |
| 計画 | けいかく | KẾ HOẠCH | Kế hoạch |
| 成長 | せいちょう | THÀNH TRƯỞNG | Trưởng thành |
| 無理 | むり | VÔ LÝ | Quá sức, gắng quá |
| 優先順位 | ゆうせんじゅんい | ƯU TIÊN THUẬN VỊ | Thứ tự ưu tiên |
| 最優先 | さいゆうせん | TỐI ƯU TIÊN | Ưu tiên cao nhất |
| 印象 | いんしょう | ẤN TƯỢNG | Ấn tượng |
| 数字 | すうじ | SỐ TỰ | Con số |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000007, 800000012, NULL, 'markdown_book', 'T7. Ngày thi Sekininsha và bữa ăn mừng (食品衛生責任者・合格)', '# Sách thực tập sinh thực phẩm · T7. Ngày thi Sekininsha và bữa ăn mừng (食品衛生責任者・合格)

> **Mục tiêu nhân vật:** Hoa (23 tuổi, Hà Nội) thi 食品衛生責任者 sau 50 ngày tự học. Học các mẫu hội thoại tiếng Nhật quanh ngày thi chứng chỉ chuyên ngành thực phẩm: nhận lời cảm ơn cấp trên cho mượn phòng thi (お借りします・ありがとうございます), tự khích lệ bản thân bằng nội tâm tiếng Nhật trước giờ thi, hỏi lại từ chuyên ngành khi ôn (HACCP・アレルゲン・第〜条というのは?), báo tin đậu với 工場長・先輩 (合格しました・おかげさまで), nhận lời chúc mừng và đáp lễ khiêm tốn (恐れ入ります・これからもよろしく), quan sát đàn chị 木村先輩 truyền kinh nghiệm 後輩.

---

## Bối cảnh

Ngày 15 tháng 10 năm 2027. Hoa làm việc tại nhà máy thực phẩm ở Aichi, chuẩn bị thi e-learning 食品衛生責任者 trong phòng họp nhỏ do 鈴木 trưởng ca cho mượn. Bạn cùng phòng Mai (kohai năm 1, Cần Thơ) nấu cơm hộp cổ vũ. Trình độ tiếng Nhật N4 hướng N3. Chương này tập trung mẫu câu giao tiếp ngày thi chứng chỉ chuyên ngành: cảm ơn cấp trên cho mượn phòng, báo tin đậu, đáp lễ khi được chúc mừng, và trao đổi với đàn chị 先輩 cùng chuyên môn.

---

## Tình huống 1 — Phòng Hoa ký túc · 5:00, tự khích lệ trước giờ thi bằng nội tâm tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | (ngồi trước bàn, nhìn cuốn sổ ôn) <ruby>今日<rt>きょう</rt></ruby>は<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>試験日<rt>しけんび</rt></ruby>だ。<br>*(Hôm nay là ngày thi 食品衛生責任者.)* |
| Hoa | 50<ruby>日間<rt>にちかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>して、300<ruby>語<rt>ご</rt></ruby>の<ruby>専門用語<rt>せんもんようご</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Đã học mỗi ngày 1 tiếng suốt 50 ngày, nhớ được 300 từ chuyên ngành.)* |
| Hoa | <ruby>過去問<rt>かこもん</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>やりました。<ruby>準備<rt>じゅんび</rt></ruby>はできています。<br>*(Đề các năm cũng đã làm 3 năm. Chuẩn bị xong rồi.)* |
| Hoa | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>:「<ruby>準備<rt>じゅんび</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>します」。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、できる。<br>*(Lời của Kondo-sensei: "Người chuẩn bị thì sẽ đậu". Không sao đâu, làm được.)* |

---

## Tình huống 2 — Bếp ký túc · 6:00, nhận cơm hộp cổ vũ từ kohai, hội thoại cảm ơn

| Vai | Lời thoại |
|---|---|
| Mai | (đang gói cơm hộp, ngẩng lên) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、おはようございます!<br>*(Chị Hoa, chào buổi sáng!)* |
| Hoa | おはよう、マイさん。<ruby>今日<rt>きょう</rt></ruby>は<ruby>早<rt>はや</rt></ruby>いね。<br>*(Chào em Mai. Hôm nay dậy sớm nhỉ.)* |
| Mai | はい。<ruby>姉<rt>ねえ</rt></ruby>さんのためにお<ruby>弁当<rt>べんとう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りました。「<ruby>応援弁当<rt>おうえんべんとう</rt></ruby>」です。<br>*(Vâng. Em làm cơm hộp cho chị. "Cơm hộp cổ vũ" ạ.)* |
| Hoa | え、<ruby>私<rt>わたし</rt></ruby>のために? ありがとう、すごく<ruby>嬉<rt>うれ</rt></ruby>しい。<ruby>中身<rt>なかみ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>?<br>*(Ơ, cho chị à? Cảm ơn em, chị vui lắm. Bên trong là gì vậy?)* |
| Mai | カントー<ruby>風<rt>ふう</rt></ruby>の<ruby>春巻<rt>はるま</rt></ruby>きと<ruby>炒飯<rt>チャーハン</rt></ruby>です。<ruby>母<rt>はは</rt></ruby>のレシピで<ruby>作<rt>つく</rt></ruby>りました。<br>*(Nem rán và cơm rang kiểu Cần Thơ. Em làm theo công thức của mẹ.)* |
| Hoa | <ruby>故郷<rt>ふるさと</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>だ。マイさん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>するからね。<br>*(Vị quê hương đây. Mai, cảm ơn em thật nhiều. Chị nhất định sẽ đậu.)* |
| Mai | <ruby>頑張<rt>がんば</rt></ruby>ってください。<ruby>応援<rt>おうえん</rt></ruby>しています。<ruby>昼<rt>ひる</rt></ruby>にもう<ruby>一<rt>ひと</rt></ruby>つ<ruby>持<rt>も</rt></ruby>っていきますね。<br>*(Chị cố lên nhé. Em cổ vũ chị. Trưa em sẽ mang thêm một hộp nữa lên.)* |
| Hoa | ありがとう。マイさんがいて<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かる。<br>*(Cảm ơn em. Có em ở bên chị thấy yên tâm thật sự.)* |

---

## Tình huống 3 — Phòng họp nhỏ nhà máy · 9:00, cảm ơn 鈴木 cho mượn phòng thi

| Vai | Lời thoại |
|---|---|
| Hoa | (cúi đầu khi bước vào) <ruby>鈴木<rt>すずき</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>部屋<rt>へや</rt></ruby>をお<ruby>借<rt>か</rt></ruby>りします。<br>*(Anh Suzuki, chào buổi sáng. Hôm nay cho em mượn phòng ạ.)* |
| Suzuki | ホアさん、おはよう。<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Hoa-san, chào em. Chuẩn bị xong chưa?)* |
| Hoa | はい、ばっちりです。<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>提供<rt>ていきょう</rt></ruby>していただいて、ありがとうございます。<br>*(Vâng, em sẵn sàng rồi. Em cảm ơn anh đã cho mượn chỗ ạ.)* |
| Suzuki | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>からも<ruby>連絡<rt>れんらく</rt></ruby>がありましたよ。「ホアさんに<ruby>頑張<rt>がんば</rt></ruby>ってと<ruby>伝<rt>つた</rt></ruby>えてください」と。<br>*(Kondo-sensei cũng đã liên lạc. Cô ấy nhắn: "Bảo Hoa-san cố lên giúp tôi".)* |
| Hoa | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>にもありがとうございますとお<ruby>伝<rt>つた</rt></ruby>えください。<br>*(Anh chuyển lời cảm ơn của em đến Kondo-sensei giúp em với.)* |
| Suzuki | はい、<ruby>了解<rt>りょうかい</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>科目目<rt>かもくめ</rt></ruby>は<ruby>公衆衛生学<rt>こうしゅうえいせいがく</rt></ruby>、1<ruby>時間<rt>じかん</rt></ruby>です。<ruby>終<rt>お</rt></ruby>わったら<ruby>休憩<rt>きゅうけい</rt></ruby>してね。<br>*(Ừ, rõ. Môn 1 là vệ sinh công cộng, 1 tiếng. Xong thì nghỉ giải lao nhé.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép ạ.)* |

---

## Tình huống 4 — Phòng họp · 9:30, nội tâm trong khi làm bài môn 公衆衛生学

| Vai | Lời thoại |
|---|---|
| Hoa | (nhìn màn hình) <ruby>第<rt>だい</rt></ruby>1<ruby>問<rt>もん</rt></ruby>、<ruby>感染症<rt>かんせんしょう</rt></ruby>の<ruby>分類<rt>ぶんるい</rt></ruby>。これは<ruby>覚<rt>おぼ</rt></ruby>えている。<br>*(Câu 1, phân loại bệnh truyền nhiễm. Cái này nhớ rồi.)* |
| Hoa | <ruby>食中毒<rt>しょくちゅうどく</rt></ruby>の<ruby>原因菌<rt>げんいんきん</rt></ruby>... サルモネラ、O-157、カンピロバクター。<br>*(Vi khuẩn gây ngộ độc thực phẩm... Salmonella, O-157, Campylobacter.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ノートに<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>書<rt>か</rt></ruby>いた。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>答<rt>こた</rt></ruby>える。<br>*(Không sao, đã viết vào vở 3 lần. Bình tĩnh trả lời.)* |
| Hoa | (45 phút sau) <ruby>1<rt>いち</rt></ruby><ruby>科目目<rt>かもくめ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>。<ruby>結構<rt>けっこう</rt></ruby>できた<ruby>気<rt>き</rt></ruby>がする。<br>*(Hết môn 1. Cảm giác làm được khá ổn.)* |

---

## Tình huống 5 — Phòng họp · 12:00, Mai mang cơm trưa lên, hỏi lại từ chuyên ngành chưa rõ

| Vai | Lời thoại |
|---|---|
| Mai | (gõ cửa nhẹ, bưng cơm hộp vào) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、お<ruby>弁当<rt>べんとう</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Chị Hoa, em mang cơm hộp lên ạ.)* |
| Hoa | わー、ありがとう、マイさん。ちょうどお<ruby>腹<rt>なか</rt></ruby>がすいた。<br>*(Wow, cảm ơn Mai. Đúng lúc chị đang đói.)* |
| Mai | <ruby>1<rt>いち</rt></ruby><ruby>科目目<rt>かもくめ</rt></ruby>はどうでしたか?<br>*(Môn đầu thế nào ạ?)* |
| Hoa | <ruby>結構<rt>けっこう</rt></ruby>できたと<ruby>思<rt>おも</rt></ruby>う。<ruby>午後<rt>ごご</rt></ruby>は<ruby>食品衛生学<rt>しょくひんえいせいがく</rt></ruby>と<ruby>食品衛生法<rt>しょくひんえいせいほう</rt></ruby>です。<br>*(Chị nghĩ làm được kha khá. Buổi chiều là Vệ sinh thực phẩm và Luật vệ sinh thực phẩm.)* |
| Mai | <ruby>姉<rt>ねえ</rt></ruby>さん、すみません。「HACCP」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか? <ruby>昨日<rt>きのう</rt></ruby><ruby>姉<rt>ねえ</rt></ruby>さんが<ruby>勉強<rt>べんきょう</rt></ruby>していて<ruby>聞<rt>き</rt></ruby>こえました。<br>*(Chị ơi, em hỏi. "HACCP" là gì vậy chị? Hôm qua em nghe chị học mà tò mò.)* |
| Hoa | HACCPは「<ruby>危害<rt>きがい</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby><ruby>重要<rt>じゅうよう</rt></ruby><ruby>管理<rt>かんり</rt></ruby><ruby>点<rt>てん</rt></ruby>」の<ruby>略<rt>りゃく</rt></ruby>です。<ruby>食品<rt>しょくひん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るときの<ruby>安全管理<rt>あんぜんかんり</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>だよ。<br>*(HACCP là viết tắt của "Phân tích mối nguy và điểm kiểm soát trọng yếu". Là phương pháp quản lý an toàn khi sản xuất thực phẩm đấy.)* |
| Mai | なるほど。じゃあ「アレルゲン」というのは?<br>*(Ra vậy. Vậy "allergen" là gì ạ?)* |
| Hoa | <ruby>食物<rt>しょくもつ</rt></ruby>アレルギーを<ruby>起<rt>お</rt></ruby>こす<ruby>原因物質<rt>げんいんぶっしつ</rt></ruby>のこと。<ruby>日本<rt>にほん</rt></ruby>では<ruby>義務<rt>ぎむ</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>9<rt>きゅう</rt></ruby><ruby>品目<rt>ひんもく</rt></ruby>あります。<br>*(Là chất gây dị ứng thực phẩm. Ở Nhật có 9 chất bắt buộc phải ghi nhãn.)* |
| Mai | <ruby>姉<rt>ねえ</rt></ruby>さん、もう<ruby>先生<rt>せんせい</rt></ruby>みたい。<br>*(Chị giống cô giáo rồi đấy.)* |
| Hoa | (cười) まだまだ。<ruby>食<rt>た</rt></ruby>べながら<ruby>復習<rt>ふくしゅう</rt></ruby>するね。<br>*(Còn xa lắm. Chị vừa ăn vừa ôn lại nhé.)* |

---

## Tình huống 6 — Phòng họp · 13:00-16:00, nội tâm 2 môn chiều và mẫu câu ôn luật

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>食品衛生学<rt>しょくひんえいせいがく</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>のセクション。HACCPの<ruby>7<rt>なな</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>は<ruby>暗記済<rt>あんきず</rt></ruby>み。<br>*(Vệ sinh thực phẩm, phần 3 tiếng. 7 nguyên tắc HACCP đã thuộc lòng.)* |
| Hoa | アレルゲン<ruby>9<rt>きゅう</rt></ruby><ruby>品目<rt>ひんもく</rt></ruby>:えび・かに・<ruby>小麦<rt>こむぎ</rt></ruby>・そば・<ruby>卵<rt>たまご</rt></ruby>・<ruby>乳<rt>にゅう</rt></ruby>・<ruby>落花生<rt>らっかせい</rt></ruby>・くるみ・カシューナッツ... <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>言<rt>い</rt></ruby>えた。<br>*(9 allergen: tôm, cua, lúa mì, soba, trứng, sữa, lạc, óc chó, hạt điều... ổn, đọc được hết.)* |
| Hoa | <ruby>次<rt>つぎ</rt></ruby>は<ruby>食品衛生法<rt>しょくひんえいせいほう</rt></ruby>。<ruby>条文<rt>じょうぶん</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいけど、<ruby>去年<rt>きょねん</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>事件<rt>じけん</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけると<ruby>覚<rt>おぼ</rt></ruby>えやすい。<br>*(Tiếp theo là Luật vệ sinh thực phẩm. Điều luật khó nhưng nối với vụ năm ngoái của công ty thì dễ nhớ.)* |
| Hoa | <ruby>第<rt>だい</rt></ruby>58<ruby>条<rt>じょう</rt></ruby>:<ruby>自主回収<rt>じしゅかいしゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>制度<rt>せいど</rt></ruby>。<ruby>事業者<rt>じぎょうしゃ</rt></ruby>は<ruby>自主回収<rt>じしゅかいしゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めたとき、<ruby>都道府県知事<rt>とどうふけんちじ</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する。<br>*(Điều 58: chế độ báo cáo thu hồi tự nguyện. Khi doanh nghiệp bắt đầu thu hồi tự nguyện thì phải báo cáo lên Tỉnh trưởng.)* |
| Hoa | これだ、<ruby>去年<rt>きょねん</rt></ruby><ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>がやっていた<ruby>作業<rt>さぎょう</rt></ruby>。<br>*(Đây rồi, công việc năm ngoái chị Kimura đã làm.)* |

---

## Tình huống 7 — Phòng họp · 16:30, bài kiểm tra cuối, nội tâm trong lúc làm 20 câu

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>最終<rt>さいしゅう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>20<rt>にじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>の<ruby>選択<rt>せんたく</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>。<ruby>合格点<rt>ごうかくてん</rt></ruby>は<ruby>60<rt>ろくじゅっ</rt></ruby>%。<br>*(Thi cuối, 30 phút 20 câu trắc nghiệm. Điểm đậu là 60%.)* |
| Hoa | Q1: アレルゲンの<ruby>義務<rt>ぎむ</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>品目<rt>ひんもく</rt></ruby>ですか? <ruby>答<rt>こた</rt></ruby>えは<ruby>9<rt>きゅう</rt></ruby><ruby>品目<rt>ひんもく</rt></ruby>。<br>*(Q1: Allergen bắt buộc nhãn là bao nhiêu chất? Đáp án 9 chất.)* |
| Hoa | Q2: HACCPの<ruby>原則<rt>げんそく</rt></ruby>はいくつですか? <ruby>7<rt>なな</rt></ruby>つです。<br>*(Q2: HACCP có bao nhiêu nguyên tắc? 7 nguyên tắc.)* |
| Hoa | Q3: <ruby>食品衛生法<rt>しょくひんえいせいほう</rt></ruby><ruby>第<rt>だい</rt></ruby>58<ruby>条<rt>じょう</rt></ruby>に<ruby>定<rt>さだ</rt></ruby>める<ruby>制度<rt>せいど</rt></ruby>は? <ruby>自主回収<rt>じしゅかいしゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>制度<rt>せいど</rt></ruby>。<br>*(Q3: Điều 58 Luật vệ sinh thực phẩm quy định chế độ gì? Báo cáo thu hồi tự nguyện.)* |
| Hoa | (20 phút sau, kiểm tra lại lần cuối) <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>した。<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Đã kiểm lại tất cả. Em nộp.)* |

---

## Tình huống 8 — Phòng họp → hành lang · 17:00, báo tin đậu với 鈴木 trưởng ca

| Vai | Lời thoại |
|---|---|
| Hoa | (nhìn màn hình đang tải rồi reo lên) <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>た!18/20!<ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Có kết quả rồi! 18/20! Đậu!)* |
| Hoa | (mở cửa, gặp Suzuki đi qua) <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>合格<rt>ごうかく</rt></ruby>しました! 18<ruby>点<rt>てん</rt></ruby>でした!<br>*(Anh Suzuki, em đậu rồi ạ! Được 18 điểm!)* |
| Suzuki | <ruby>本当<rt>ほんとう</rt></ruby>に? <ruby>素晴<rt>すば</rt></ruby>らしい! おめでとう、ホアさん!<br>*(Thật à? Tuyệt vời! Chúc mừng Hoa-san!)* |
| Hoa | おかげさまで<ruby>合格<rt>ごうかく</rt></ruby>できました。<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>貸<rt>か</rt></ruby>していただいて<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Nhờ anh em mới đậu được. Cảm ơn anh đã cho mượn chỗ ạ.)* |
| Suzuki | いやいや、ホアさんが<ruby>頑張<rt>がんば</rt></ruby>ったからですよ。<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>にも<ruby>報告<rt>ほうこく</rt></ruby>しましょう。<br>*(Không không, là Hoa-san tự cố gắng đấy. Cùng báo cáo Kondo-sensei nhé.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Suzuki | <ruby>製造課<rt>せいぞうか</rt></ruby>のみんなにも<ruby>伝<rt>つた</rt></ruby>えますね。<ruby>今晩<rt>こんばん</rt></ruby><ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>小<rt>ちい</rt></ruby>さくお<ruby>祝<rt>いわ</rt></ruby>いをしましょう。<br>*(Tôi sẽ báo cả phòng sản xuất nữa. Tối nay mình ăn mừng nhỏ ở 食堂 nhé.)* |
| Hoa | わー、ありがとうございます!<br>*(Wow, em cảm ơn ạ!)* |

---

## Tình huống 9 — Khu sản xuất · 17:30, nhận lời chúc mừng tập thể, đáp lễ khiêm tốn

| Vai | Lời thoại |
|---|---|
| Suzuki | みなさん、お<ruby>知<rt>し</rt></ruby>らせです。ホアさんが<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Mọi người, có tin báo. Hoa-san đã đậu kỳ thi 食品衛生責任者!)* |
| <ruby>田中<rt>たなか</rt></ruby> | おお、おめでとう、ホアさん!<br>*(Ô, chúc mừng Hoa-san!)* |
| <ruby>佐藤<rt>さとう</rt></ruby> | やったね! <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ったね。<br>*(Tuyệt! Em đã thực sự cố gắng.)* |
| <ruby>山田<rt>やまだ</rt></ruby> | すごい! <ruby>外国人<rt>がいこくじん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>するのは<ruby>大変<rt>たいへん</rt></ruby>だよ。<br>*(Giỏi quá! Người nước ngoài đậu được là không dễ đâu.)* |
| Hoa | (cúi đầu sâu) みなさん、ありがとうございます。<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>、みなさんに<ruby>色々<rt>いろいろ</rt></ruby><ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Cảm ơn mọi người ạ. Em ngại quá. Suốt thời gian học, mọi người đã chỉ bảo em rất nhiều.)* |
| <ruby>木村<rt>きむら</rt></ruby> | おめでとう、ホアさん。これで<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>になったね。<br>*(Chúc mừng Hoa-san. Vậy là công ty mình có 2 người 食品衛生責任者 rồi nhé.)* |
| Hoa | え、<ruby>1<rt>いち</rt></ruby><ruby>人目<rt>にんめ</rt></ruby>は<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>ですか?<br>*(Ơ, người thứ nhất là chị Kimura ạ?)* |
| <ruby>田中<rt>たなか</rt></ruby> | そうですよ。<ruby>5<rt>ご</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>に<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>取<rt>と</rt></ruby>って、<ruby>今<rt>いま</rt></ruby>までずっと<ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>でした。<br>*(Đúng vậy. 5 năm trước Kimura-san lấy, tới giờ vẫn chỉ có một mình.)* |
| Hoa | これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Sau này em cũng mong mọi người giúp đỡ ạ.)* |

---

## Tình huống 10 — Hành lang nhà máy · 17:45, quan sát đàn chị 木村先輩 truyền kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Kimura | (vẫy Hoa lại gần) ホアさん、ちょっといい? <ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>話<rt>はな</rt></ruby>したいことがあるの。<br>*(Hoa-san, có rảnh không? Chị muốn nói chuyện hai chị em với em.)* |
| Hoa | はい、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Vâng, chị Kimura.)* |
| Kimura | <ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>だった。<ruby>同<rt>おな</rt></ruby>じ<ruby>立場<rt>たちば</rt></ruby>の<ruby>仲間<rt>なかま</rt></ruby>ができて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Suốt 5 năm, ở công ty 食品衛生責任者 chỉ có mình chị. Có đồng nghiệp cùng vị trí, chị mừng thật sự.)* |
| Hoa | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。これからも<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Em không dám ạ. Mong chị tiếp tục chỉ bảo em.)* |
| Kimura | こちらこそ。<ruby>1<rt>ひと</rt></ruby>つアドバイス。<ruby>合格<rt>ごうかく</rt></ruby>した<ruby>後<rt>あと</rt></ruby>がもっと<ruby>大事<rt>だいじ</rt></ruby>。<ruby>毎日<rt>まいにち</rt></ruby><ruby>現場<rt>げんば</rt></ruby>で<ruby>使<rt>つか</rt></ruby>わないと<ruby>知識<rt>ちしき</rt></ruby>は<ruby>消<rt>き</rt></ruby>えるよ。<br>*(Chị cũng mong em. Cho em một lời khuyên: sau khi đậu mới là quan trọng. Không dùng kiến thức tại hiện trường mỗi ngày thì nó sẽ biến mất đấy.)* |
| Hoa | はい、<ruby>覚<rt>おぼ</rt></ruby>えておきます。<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしたらいいですか?<br>*(Vâng, em ghi nhớ. Cụ thể em nên làm gì ạ?)* |
| Kimura | <ruby>毎朝<rt>まいあさ</rt></ruby>の<ruby>衛生<rt>えいせい</rt></ruby>チェックを<ruby>私<rt>わたし</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>にやろう。HACCPの<ruby>記録表<rt>きろくひょう</rt></ruby>も<ruby>教<rt>おし</rt></ruby>えてあげる。<br>*(Sáng nào em cùng chị làm kiểm tra vệ sinh. Bảng ghi HACCP chị cũng sẽ chỉ cho.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Vâng, em xin nhờ chị ạ!)* |
| Kimura | <ruby>謙虚<rt>けんきょ</rt></ruby>でいい。でも<ruby>専門家<rt>せんもんか</rt></ruby>としての<ruby>自信<rt>じしん</rt></ruby>も<ruby>持<rt>も</rt></ruby>って。これからは<ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るんだから。<br>*(Khiêm tốn là tốt. Nhưng cũng phải có sự tự tin của chuyên gia. Từ giờ hai chị em mình cùng bảo vệ công ty.)* |
| Hoa | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 11 — 食堂 · 19:00, tiệc nhỏ ăn mừng, Mai dự, hội thoại 乾杯

| Vai | Lời thoại |
|---|---|
| Tanaka | (giơ cốc) みんな<ruby>揃<rt>そろ</rt></ruby>いましたね。ホアさんの<ruby>合格<rt>ごうかく</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Mọi người đủ rồi nhỉ. Chúc mừng Hoa đậu, cạn ly!)* |
| Mọi người | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、おめでとうございます!<br>*(Chị Hoa, chúc mừng chị!)* |
| Hoa | ありがとう、マイさん。<ruby>朝<rt>あさ</rt></ruby>の<ruby>応援弁当<rt>おうえんべんとう</rt></ruby>のおかげだよ。<br>*(Cảm ơn em Mai. Nhờ cơm hộp cổ vũ buổi sáng của em đấy.)* |
| Satou | ホアさん、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>人目<rt>にんめ</rt></ruby>として<ruby>頑張<rt>がんば</rt></ruby>ってね。<br>*(Hoa-san, em là 食品衛生責任者 thứ 2 của công ty, cố gắng nhé.)* |
| Hoa | はい、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em sẽ cùng chị Kimura bảo vệ công ty.)* |
| Tanaka | <ruby>頼<rt>たの</rt></ruby>もしいね。マイさんも<ruby>来年<rt>らいねん</rt></ruby><ruby>受<rt>う</rt></ruby>けるの?<br>*(Đáng tin cậy đấy. Mai-san năm sau cũng thi không?)* |
| Mai | はい、<ruby>姉<rt>ねえ</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらいながら<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng, nhờ chị Hoa chỉ bảo ạ.)* |
| Kimura | いい<ruby>流<rt>なが</rt></ruby>れができたね。<ruby>先輩<rt>せんぱい</rt></ruby>から<ruby>後輩<rt>こうはい</rt></ruby>へ、<ruby>知識<rt>ちしき</rt></ruby>がつながっていく。<br>*(Mạch chảy tốt rồi đấy. Từ tiền bối sang hậu bối, kiến thức được nối tiếp.)* |

---

## Tình huống 12 — Ký túc · 21:30, cảnh tiếng Việt — gọi điện về Hà Nội cho mẹ

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng chương qua hội thoại với mẹ.

| Vai | Lời thoại |
|---|---|
| Mẹ Hoa | (qua video call) Alo Hoa hả con? Sao tối nay gọi sớm vậy? |
| Hoa | (mắt đỏ vì xúc động) Mẹ ơi, con đậu chứng chỉ rồi mẹ. Sekininsha — chứng chỉ người chịu trách nhiệm vệ sinh thực phẩm ấy. |
| Mẹ Hoa | Trời ơi! Cái mà con học suốt mấy tháng nay đó hả? Mẹ mừng quá Hoa ơi. Được mấy điểm con? |
| Hoa | 18 trên 20 mẹ. Cao hơn cả mấy bạn người Nhật cùng đợt. Bên công ty trước giờ chỉ có chị Kimura có chứng chỉ này, giờ thêm con là hai. |
| Mẹ Hoa | Vậy là con thành "chuyên gia" ở công ty rồi đó. Mai có ăn mừng với con không? |
| Hoa | Có mẹ. Sáng Mai dậy sớm gói nem rán với cơm rang kiểu Cần Thơ cho con mang đi thi. Mẹ truyền công thức cho nó đúng không? |
| Mẹ Hoa | Ừ, hồi nó sang Nhật mẹ có ghi cho. Hai chị em đùm bọc nhau như vậy mẹ yên tâm. |
| Hoa | Chị Kimura — đàn chị bên này — bảo con là đậu xong mới là khởi đầu, không dùng kiến thức HACCP với điều 58 mỗi ngày thì sẽ quên. Mai chị ấy dạy con làm bảng ghi vệ sinh. |
| Mẹ Hoa | Ừ, học là cả đời. Mẹ tự hào về con. Nhớ giữ sức, đừng thức khuya quá. |
| Hoa | Dạ. Bước tiếp theo của con là HACCP Coordinator, rồi N3, rồi SSW1. Con thấy đường đi rõ rồi mẹ. |
| Mẹ Hoa | Ừ, con cứ đi từng bước. Mẹ ngủ đây, mai con gọi nữa nhé. |
| Hoa | Dạ, con chào mẹ. Con thương mẹ. |

---

## Đọng lại chương 7

Ngày thi 食品衛生責任者, Hoa học được trọn bộ mẫu câu giao tiếp quanh một sự kiện chứng chỉ ở công ty Nhật: **お部屋をお借りします・ありがとうございます** khi mượn không gian cấp trên, **おかげさまで合格できました** khi báo tin đậu, **恐れ入ります・これからもよろしくお願いいたします** khi đáp lễ trước lời chúc tập thể. Trong lúc ôn và làm bài, Hoa nội tâm hoá các thuật ngữ chuyên ngành thực phẩm — **HACCP・アレルゲン9品目・食中毒・食品衛生法第58条・自主回収報告制度** — và dùng mẫu **〜というのはどういう意味ですか?** để dạy lại cho kohai Mai. Quan sát đàn chị **木村先輩** truyền kinh nghiệm cho thấy nguyên tắc nghề: đậu chứng chỉ chỉ là điểm khởi đầu, dùng kiến thức tại hiện trường mỗi ngày mới giữ được nó. Cảnh tiếng Việt cuối với mẹ giúp ôn lại toàn bộ từ vựng JP qua cách Hoa kể lại bằng tiếng mẹ đẻ.

> Từ vựng & mẫu câu chương này: 食品衛生責任者・合格・試験日・公衆衛生学・食品衛生学・食品衛生法・HACCP・アレルゲン・9品目・食中毒・感染症・自主回収報告制度・第58条・自主回収・最終試験・選択問題・応援弁当・乾杯・後輩・先輩・お借りします・おかげさまで・恐れ入ります・〜というのはどういう意味ですか・これからもよろしくお願いいたします

---

## Bí quyết chương

- 食品衛生責任者 thi cấu trúc: 6h học e-learning (3 môn — 公衆衛生学 1h, 食品衛生学 3h, 食品衛生法 2h) + 30 phút thi 20 câu trắc nghiệm.
- Đỗ: 60% (12/20). Hoa được 90% — thừa.
- Văn hoá Nhật: cảm ơn người cho mượn chỗ thi (お借りします・場所を提供していただいて), đáp lễ khiêm tốn khi được khen (恐れ入ります), cam kết tiếp tục (これからもよろしく).
- Sempai đỗ chứng chỉ trước → kohai có gương theo, công ty có 2 người cùng mảng → kiến thức được duy trì bằng thực hành hàng ngày, không chết theo chứng chỉ.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 試験日 | しけんび | THÍ NGHIỆM NHẬT | Ngày thi |
| 応援弁当 | おうえんべんとう | ỨNG VIỆN BIỆN ĐƯƠNG | Cơm hộp cổ vũ |
| 中身 | なかみ | TRUNG THÂN | Nội dung bên trong |
| 春巻き | はるまき | XUÂN QUYỂN | Nem rán, gỏi cuốn chiên |
| 故郷 | ふるさと | CỐ HƯƠNG | Quê hương |
| 提供 | ていきょう | ĐỀ CUNG | Cung cấp, đưa ra |
| 分類 | ぶんるい | PHÂN LOẠI | Phân loại |
| 原因菌 | げんいんきん | NGUYÊN NHÂN KHUẨN | Vi khuẩn gây bệnh |
| HACCP | — | — | Phân tích mối nguy & điểm kiểm soát trọng yếu |
| 危害分析重要管理点 | きがいぶんせきじゅうようかんりてん | NGUY HẠI PHÂN TÍCH TRỌNG YẾU QUẢN LÝ ĐIỂM | HACCP (cụm Nhật) |
| 安全管理 | あんぜんかんり | AN TOÀN QUẢN LÝ | Quản lý an toàn |
| アレルゲン | — | — | Chất gây dị ứng (allergen) |
| 義務表示 | ぎむひょうじ | NGHĨA VỤ BIỂU THỊ | Ghi nhãn bắt buộc |
| 品目 | ひんもく | PHẨM MỤC | Hạng mục, loại |
| 原則 | げんそく | NGUYÊN TẮC | Nguyên tắc |
| 条文 | じょうぶん | ĐIỀU VĂN | Điều luật, văn bản điều |
| 第58条 | だいごじゅうはちじょう | ĐỆ — ĐIỀU | Điều 58 |
| 自主回収 | じしゅかいしゅう | TỰ CHỦ HỒI THU | Thu hồi tự nguyện |
| 報告制度 | ほうこくせいど | BÁO CÁO CHẾ ĐỘ | Chế độ báo cáo |
| 都道府県知事 | とどうふけんちじ | ĐÔ ĐẠO PHỦ HUYỆN TRI SỰ | Tỉnh trưởng |
| 事業者 | じぎょうしゃ | SỰ NGHIỆP GIẢ | Doanh nghiệp |
| 最終試験 | さいしゅうしけん | TỐI CHUNG THÍ NGHIỆM | Bài thi cuối |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | Điểm đậu |
| 製造課 | せいぞうか | CHẾ TẠO KHOA | Phòng sản xuất |
| 恐れ入ります | おそれいります | KHỦNG NHẬP | Em ngại quá, em không dám |
| 当社 | とうしゃ | ĐƯƠNG XÃ | Công ty chúng tôi |
| 立場 | たちば | LẬP TRƯỜNG | Vị trí, lập trường |
| 仲間 | なかま | TRỌNG GIAN | Đồng nghiệp, đồng đội |
| 現場 | げんば | HIỆN TRƯỜNG | Hiện trường, nơi làm việc |
| 衛生チェック | えいせい— | VỆ SINH — | Kiểm tra vệ sinh |
| 記録表 | きろくひょう | KÝ LỤC BIỂU | Bảng ghi chép |
| 謙虚 | けんきょ | KHIÊM HƯ | Khiêm tốn |
| 専門家 | せんもんか | CHUYÊN MÔN GIA | Chuyên gia |
| 自信 | じしん | TỰ TÍN | Sự tự tin |
| 乾杯 | かんぱい | CAN BÔI | Cạn ly |
| 知識 | ちしき | TRI THỨC | Kiến thức |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000008, 800000012, NULL, 'markdown_book', 'T8. Thanh tra năm 2 — Mai dẫn 1 phần (監査でマイさんがデビュー)', '# Sách thực tập sinh thực phẩm · T8. Thanh tra năm 2 — Mai dẫn 1 phần (監査でマイさんがデビュー)

> **Mục tiêu nhân vật:** Hoa (năm 2 tại nhà máy thực phẩm Aichi) lần đầu vào vai sempai hướng dẫn kohai chuẩn bị thanh tra khách hàng. Học các mẫu hội thoại tiếng Nhật khi đối ứng thanh tra ISO 22000 và huấn luyện kohai: **dạy 5 câu cốt lõi keigo dẫn khách** (ご案内致します・〜でございます), **dạy câu cứu sinh khi không biết** (申し訳ございません、確認させていただきます), **giải thích quy trình 金属探知 và 校正頻度**, **bổ sung sau lưng kohai trong thanh tra** (補足させていただきます), **trả lời câu hỏi kiểm tra viên về hệ thống AI 画像認識 mới**, và **chốt mạch nhân vật qua cảnh tiếng Việt cuối ngày** với đồng hương Putri và mẹ.

---

## Bối cảnh

Tháng 11 năm 2027. Hoa đang ở năm thứ 2 thực tập sinh tại nhà máy thực phẩm liên kết Aeon (イオン) ở Aichi. Trình độ tiếng Nhật N3, đang luyện N2. Thanh tra thường niên năm nay đặc biệt: Aeon mang hệ thống **AI 画像認識** mới — yêu cầu nhà máy tích hợp trong 6 tháng. Trưởng phòng Tanaka quyết định cho Mai (kohai 6 tháng) dẫn kiểm tra viên khu đóng gói, Hoa đứng sau hỗ trợ. Chương này tập trung các mẫu câu keigo dẫn khách, câu cứu sinh khi bí, và mẫu câu sempai huấn luyện kohai trước thanh tra.

---

## Tình huống 1 — Phòng họp sản xuất · 9:00, nghe phân công vai trò trong thanh tra

| Vai | Lời thoại |
|---|---|
| Tanaka | みんな、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>はイオンさんの<ruby>年次監査<rt>ねんじかんさ</rt></ruby>です。<ruby>準備<rt>じゅんび</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, thứ 6 tuần sau là thanh tra thường niên của Aeon. Mọi người chuẩn bị nhé.)* |
| Tanaka | <ruby>今年<rt>ことし</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しい<ruby>項目<rt>こうもく</rt></ruby>があります。AI <ruby>画像認識<rt>がぞうにんしき</rt></ruby>システムの<ruby>導入<rt>どうにゅう</rt></ruby>です。<br>*(Năm nay có hạng mục mới. Đó là việc đưa vào hệ thống AI nhận diện hình ảnh.)* |
| Yamada | AIですか? <ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(AI ạ? Tôi mới nghe lần đầu.)* |
| Tanaka | <ruby>異物検査<rt>いぶつけんさ</rt></ruby>の<ruby>新<rt>あたら</rt></ruby>しい<ruby>方法<rt>ほうほう</rt></ruby>です。イオンさんは6か<ruby>月以内<rt>げついない</rt></ruby>の<ruby>導入<rt>どうにゅう</rt></ruby>を<ruby>要求<rt>ようきゅう</rt></ruby>しています。<br>*(Là phương pháp mới kiểm tra dị vật. Aeon yêu cầu áp dụng trong 6 tháng.)* |
| Satou | <ruby>説明<rt>せつめい</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>になりますか?<br>*(Người phụ trách giải thích là ai ạ?)* |
| Tanaka | <ruby>高橋<rt>たかはし</rt></ruby>QCマネージャーと<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>本体<rt>ほんたい</rt></ruby>です。<ruby>包装<rt>ほうそう</rt></ruby><ruby>区域<rt>くいき</rt></ruby>はマイさんに<ruby>案内<rt>あんない</rt></ruby>してもらいます。ホアさんは<ruby>後<rt>うし</rt></ruby>ろでサポートしてください。<br>*(Trụ chính là quản lý QC Takahashi và đàn anh Satou. Khu đóng gói nhờ Mai dẫn, Hoa hỗ trợ phía sau.)* |
| Mai | え! <ruby>私<rt>わたし</rt></ruby>がですか!? <ruby>無理<rt>むり</rt></ruby>です…<br>*(Ơ! Em ạ!? Em không làm được…)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しましょう。<br>*(Không sao, mình cùng chuẩn bị.)* |

---

## Tình huống 2 — Hành lang sau họp · 9:30, Hoa trấn an Mai (vai sempai)

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>無理<rt>むり</rt></ruby>です。<ruby>外国人<rt>がいこくじん</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>なんて…<br>*(Chị Hoa ơi, em thật sự không làm được. Giải thích cho khách nước ngoài cơ mà…)* |
| Hoa | お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>日本人<rt>にほんじん</rt></ruby>のイオンの<ruby>方<rt>かた</rt></ruby>ですよ。<ruby>外国人<rt>がいこくじん</rt></ruby>じゃないです。<br>*(Khách là người Nhật của Aeon đấy. Không phải khách nước ngoài.)* |
| Mai | あ、そうですか…でも<ruby>私<rt>わたし</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby>、まだ<ruby>変<rt>へん</rt></ruby>です。<br>*(À, vậy ạ… nhưng tiếng Nhật của em vẫn còn lạ lắm.)* |
| Hoa | <ruby>変<rt>へん</rt></ruby>じゃないです。<ruby>真面目<rt>まじめ</rt></ruby>な<ruby>日本語<rt>にほんご</rt></ruby>です。<ruby>準備<rt>じゅんび</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Không lạ đâu. Là tiếng Nhật nghiêm túc. Chuẩn bị thì sẽ ổn.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、どうやって<ruby>準備<rt>じゅんび</rt></ruby>しますか?<br>*(Chị Hoa, chuẩn bị thế nào ạ?)* |
| Hoa | これから<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>、<ruby>毎晩<rt>まいばん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>します。<ruby>覚<rt>おぼ</rt></ruby>えるのは<ruby>5<rt>いつ</rt></ruby>つの<ruby>文<rt>ぶん</rt></ruby>だけです。<br>*(Từ giờ ba ngày, mỗi tối hai chị em luyện. Chỉ cần nhớ 5 câu thôi.)* |
| Mai | <ruby>5<rt>いつ</rt></ruby>つだけ? <ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Năm câu thôi ạ? Thật ạ?)* |
| Hoa | はい。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Vâng. Là cách đàn anh Satou đã dạy chị một năm trước.)* |

---

## Tình huống 3 — Phòng nghỉ · 19:00, Hoa dạy Mai 4 câu keigo dẫn khách đầu tiên

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、ノートを<ruby>用意<rt>ようい</rt></ruby>してください。<ruby>5<rt>いつ</rt></ruby>つの<ruby>文<rt>ぶん</rt></ruby>を<ruby>書<rt>か</rt></ruby>きますね。<br>*(Mai, em chuẩn bị sổ nhé. Chị viết ra 5 câu.)* |
| Mai | はい、<ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Vâng, em chuẩn bị xong rồi.)* |
| Hoa | <ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:「ご<ruby>案内<rt>あんない</rt></ruby><ruby>致<rt>いた</rt></ruby>します」。お<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>案内<rt>あんない</rt></ruby>する<ruby>時<rt>とき</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Câu 1: "Em xin được dẫn quý vị". Là câu đầu tiên khi dẫn khách.)* |
| Mai | ご<ruby>案内<rt>あんない</rt></ruby><ruby>致<rt>いた</rt></ruby>します。<ruby>普通<rt>ふつう</rt></ruby>の「<ruby>案内<rt>あんない</rt></ruby>します」よりも<ruby>丁寧<rt>ていねい</rt></ruby>ですね。<br>*(Em xin được dẫn quý vị. Lễ phép hơn câu thường "annai shimasu" nhỉ.)* |
| Hoa | そうです。<ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:「こちらが<ruby>包装<rt>ほうそう</rt></ruby><ruby>区域<rt>くいき</rt></ruby>でございます」。「です」ではなく「でございます」を<ruby>使<rt>つか</rt></ruby>います。<br>*(Đúng vậy. Câu 2: "Đây là khu đóng gói". Dùng "degozaimasu" thay cho "desu".)* |
| Mai | こちらが<ruby>包装<rt>ほうそう</rt></ruby><ruby>区域<rt>くいき</rt></ruby>でございます。<br>*(Đây là khu đóng gói ạ.)* |
| Hoa | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:「お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけ<ruby>下<rt>くだ</rt></ruby>さい」。<ruby>床<rt>ゆか</rt></ruby>が<ruby>濡<rt>ぬ</rt></ruby>れているところで<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>います。<br>*(Câu 3: "Xin quý vị cẩn thận chỗ chân ạ". Chỗ sàn ướt nhất định phải nói.)* |
| Mai | お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけ<ruby>下<rt>くだ</rt></ruby>さい。<br>*(Xin quý vị cẩn thận chỗ chân ạ.)* |
| Hoa | <ruby>4<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>:「ご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>はございませんか」。<ruby>説明<rt>せつめい</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く<ruby>文<rt>ぶん</rt></ruby>です。<br>*(Câu 4: "Quý vị có điểm nào chưa rõ không ạ?". Câu phải hỏi sau khi giải thích.)* |
| Mai | ご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>はございませんか。ゆっくり<ruby>言<rt>い</rt></ruby>えば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Quý vị có điểm nào chưa rõ không ạ. Nói chậm thì có ổn không ạ?)* |
| Hoa | はい、ゆっくりでいいです。<ruby>急<rt>いそ</rt></ruby>がなくて<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, chậm cũng được. Không cần vội đâu.)* |

---

## Tình huống 4 — Phòng nghỉ · 19:30, Hoa dạy câu cứu sinh số 5

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>5<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な「<ruby>救命<rt>きゅうめい</rt></ruby>ボート」です:「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>確認<rt>かくにん</rt></ruby>させていただきます」。<br>*(Câu 5 là "thuyền cứu sinh" quan trọng nhất: "Em xin lỗi, để em xác nhận".)* |
| Mai | <ruby>長<rt>なが</rt></ruby>いです! むずかしい!<br>*(Dài quá! Khó quá!)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>けて<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。まず「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」だけ。<br>*(Chia ra luyện đi. Đầu tiên chỉ "moushiwake gozaimasen" thôi.)* |
| Mai | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Em xin lỗi.)* |
| Hoa | <ruby>次<rt>つぎ</rt></ruby>に「<ruby>確認<rt>かくにん</rt></ruby>させていただきます」。<br>*(Tiếp theo "kakunin sasete itadakimasu".)* |
| Mai | <ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Để em xác nhận.)* |
| Hoa | では<ruby>続<rt>つづ</rt></ruby>けて<ruby>言<rt>い</rt></ruby>ってみてください。<br>*(Vậy thử nối lại đi.)* |
| Mai | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Em xin lỗi, để em xác nhận.)* |
| Hoa | <ruby>完璧<rt>かんぺき</rt></ruby>です! <ruby>分<rt>わ</rt></ruby>からないことを<ruby>聞<rt>き</rt></ruby>かれたら、<ruby>絶対<rt>ぜったい</rt></ruby>にこの<ruby>文<rt>ぶん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってください。<ruby>嘘<rt>うそ</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってはいけません。<br>*(Hoàn hảo! Khi bị hỏi cái không biết, nhất định dùng câu này. Không được nói dối.)* |
| Mai | はい! <ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>は「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>確認<rt>かくにん</rt></ruby>させていただきます」ですね。<br>*(Vâng! Khi không biết thì "Em xin lỗi, để em xác nhận".)* |

---

## Tình huống 5 — Phòng nghỉ · 20:00, Hoa dạy cách đi cùng khách (quan sát phép tắc)

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>言葉<rt>ことば</rt></ruby>だけじゃなくて、<ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>ですよ。<br>*(Mai, không chỉ lời nói, cách đi cũng quan trọng đấy.)* |
| Mai | <ruby>歩<rt>ある</rt></ruby>き<ruby>方<rt>かた</rt></ruby>にも<ruby>決<rt>き</rt></ruby>まりがありますか?<br>*(Cách đi cũng có quy tắc ạ?)* |
| Hoa | はい。お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>半歩<rt>はんぽ</rt></ruby><ruby>前<rt>まえ</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>きます。<ruby>並<rt>なら</rt></ruby>んで<ruby>歩<rt>ある</rt></ruby>くと<ruby>失礼<rt>しつれい</rt></ruby>になります。<br>*(Vâng. Đi trước khách nửa bước. Đi cạnh nhau là bất lịch sự.)* |
| Mai | <ruby>後<rt>うし</rt></ruby>ろを<ruby>歩<rt>ある</rt></ruby>くのも<ruby>失礼<rt>しつれい</rt></ruby>ですか?<br>*(Đi phía sau cũng bất lịch sự ạ?)* |
| Hoa | はい、<ruby>案内<rt>あんない</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>は<ruby>前<rt>まえ</rt></ruby>に<ruby>立<rt>た</rt></ruby>たないと、お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>知<rt>し</rt></ruby>りませんから。<br>*(Vâng, người dẫn không đứng trước thì khách không biết đường đi.)* |
| Mai | なるほど。<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>す<ruby>時<rt>とき</rt></ruby>は、<ruby>指<rt>ゆび</rt></ruby>で<ruby>指<rt>さ</rt></ruby>してもいいですか?<br>*(Ra vậy. Khi chỉ hướng, dùng ngón tay được không ạ?)* |
| Hoa | <ruby>指<rt>ゆび</rt></ruby>はダメです。<ruby>手<rt>て</rt></ruby>のひらを<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>開<rt>ひら</rt></ruby>いて<ruby>示<rt>しめ</rt></ruby>します。<ruby>指<rt>ゆび</rt></ruby>は<ruby>失礼<rt>しつれい</rt></ruby>な<ruby>動作<rt>どうさ</rt></ruby>です。<br>*(Ngón thì không được. Mở cả lòng bàn tay ra để chỉ. Dùng ngón là động tác bất lịch sự.)* |
| Mai | (thử mở lòng bàn tay) こうですか?<br>*(Như này ạ?)* |
| Hoa | いいですね。<ruby>明日<rt>あした</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<br>*(Tốt rồi. Mai luyện thêm lần nữa nhé.)* |

---

## Tình huống 6 — Trước cổng nhà máy · 8:30 ngày thanh tra, Mai hoảng — Hoa trấn tĩnh

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん…<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>緊張<rt>きんちょう</rt></ruby>しています。<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えています。<br>*(Chị Hoa… em thật sự rất căng thẳng. Tay em run.)* |
| Hoa | <ruby>深呼吸<rt>しんこきゅう</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>しましょう。<ruby>一緒<rt>いっしょ</rt></ruby>に。<br>*(Hít thở sâu ba lần đi. Cùng chị nào.)* |
| Mai | (hít thở sâu) はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きました。<br>*(Vâng, em đỡ hơn một chút rồi.)* |
| Hoa | <ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>がすぐ<ruby>後<rt>うし</rt></ruby>ろにいますから。<br>*(Sai cũng không sao. Chị ngay sau lưng em mà.)* |
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さんも<ruby>初<rt>はじ</rt></ruby>めての<ruby>時<rt>とき</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>しましたか?<br>*(Chị Hoa lần đầu cũng căng thẳng không ạ?)* |
| Hoa | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じでした。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>と<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>がそばにいてくれました。<br>*(Một năm trước chị cũng vậy. Anh Satou và chị Kimura ở bên chị.)* |
| Mai | じゃあ、<ruby>私<rt>わたし</rt></ruby>もきっとできますね!<br>*(Vậy chắc em cũng làm được!)* |
| Hoa | できます。<ruby>5<rt>いつ</rt></ruby>つの<ruby>文<rt>ぶん</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>してください。<br>*(Làm được. Em nhớ lại 5 câu nhé.)* |

---

## Tình huống 7 — Sảnh tiếp đón · 9:00, kiểm tra viên đến, Mai tự giới thiệu

| Vai | Lời thoại |
|---|---|
| Tanaka | イオン<ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Aeon-sama, cảm ơn quý vị đã đến hôm nay.)* |
| Kiểm tra viên | こちらこそ、<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chúng tôi cũng vậy, hôm nay xin nhờ quý công ty.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>のスケジュールでございますが、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>から<ruby>工場<rt>こうじょう</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>です。<ruby>包装<rt>ほうそう</rt></ruby><ruby>区域<rt>くいき</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のホアと<ruby>新入<rt>しんにゅう</rt></ruby>のマイがご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Lịch hôm nay ạ, từ 9h30 tham quan nhà máy. Khu đóng gói sẽ do Hoa năm 2 và Mai mới vào dẫn.)* |
| Kiểm tra viên | <ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi rõ rồi. Mong nhờ các bạn.)* |
| Mai | (cúi đầu) はじめまして、マイと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>参<rt>まい</rt></ruby>りました。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Lần đầu gặp, em là Mai. Em từ Việt Nam đến. Hôm nay mong anh chỉ giáo.)* |
| Hoa | (cúi đầu) ホアと<ruby>申<rt>もう</rt></ruby>します。マイのサポートを<ruby>担当<rt>たんとう</rt></ruby>させていただきます。<br>*(Cúi đầu. Em là Hoa. Em xin được phụ trách hỗ trợ Mai.)* |
| Kiểm tra viên | はじめまして。マイさん、<ruby>頑張<rt>がんば</rt></ruby>ってくださいね。<br>*(Lần đầu gặp. Mai-san, cố lên nhé.)* |

---

## Tình huống 8 — Khu đóng gói · 10:30, Mai dẫn kiểm tra viên, Hoa thì thầm hỗ trợ

| Vai | Lời thoại |
|---|---|
| Mai | (mở lòng bàn tay chỉ hướng) ご<ruby>案内<rt>あんない</rt></ruby><ruby>致<rt>いた</rt></ruby>します。こちらが<ruby>包装<rt>ほうそう</rt></ruby><ruby>区域<rt>くいき</rt></ruby>でございます。お<ruby>足元<rt>あしもと</rt></ruby>にお<ruby>気<rt>き</rt></ruby>をつけ<ruby>下<rt>くだ</rt></ruby>さい。<br>*(Em xin được dẫn quý vị. Đây là khu đóng gói ạ. Xin quý vị cẩn thận chỗ chân ạ.)* |
| Kiểm tra viên | ありがとうございます。<ruby>金属<rt>きんぞく</rt></ruby><ruby>探知機<rt>たんちき</rt></ruby>はどちらですか?<br>*(Cảm ơn. Máy dò kim loại ở đâu vậy?)* |
| Mai | こちらでございます。<ruby>包装後<rt>ほうそうご</rt></ruby>に<ruby>全<rt>すべ</rt></ruby>ての<ruby>製品<rt>せいひん</rt></ruby>を<ruby>通<rt>とお</rt></ruby>します。<br>*(Đây ạ. Toàn bộ sản phẩm sau khi đóng gói đều cho đi qua.)* |
| Kiểm tra viên | <ruby>校正<rt>こうせい</rt></ruby>の<ruby>頻度<rt>ひんど</rt></ruby>は?<br>*(Tần suất hiệu chuẩn là?)* |
| Mai | え…<ruby>校正<rt>こうせい</rt></ruby>…<br>*(Ơ… hiệu chuẩn…)* |
| Hoa | (thì thầm sát tai) <ruby>毎時<rt>まいじ</rt></ruby>ですよ。<br>*(Mỗi giờ đó.)* |
| Mai | <ruby>毎時<rt>まいじ</rt></ruby>でございます。1<ruby>時間<rt>じかん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>、テストピースを<ruby>通<rt>とお</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Mỗi giờ ạ. Một giờ một lần, cho mảnh thử đi qua để xác nhận.)* |
| Kiểm tra viên | <ruby>記録<rt>きろく</rt></ruby>はございますか?<br>*(Có hồ sơ ghi lại không?)* |
| Mai | <ruby>記録<rt>きろく</rt></ruby>は…(quay sang Hoa) <br>*(Hồ sơ thì…)* |
| Hoa | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、ホアが<ruby>補足<rt>ほそく</rt></ruby>させていただきます。<ruby>記録<rt>きろく</rt></ruby>はこちらのバインダーにございます。お<ruby>確<rt>たし</rt></ruby>かめいただけますでしょうか。<br>*(Em xin lỗi, em Hoa xin bổ sung. Hồ sơ ở bìa hồ sơ này ạ. Quý vị có thể xác nhận không ạ?)* |
| Kiểm tra viên | (lật xem) よく<ruby>記録<rt>きろく</rt></ruby>されていますね。<ruby>毎時<rt>まいじ</rt></ruby>の<ruby>担当者<rt>たんとうしゃ</rt></ruby>のサインも<ruby>入<rt>はい</rt></ruby>っています。<br>*(Hồ sơ ghi tốt nhỉ. Có cả chữ ký người phụ trách từng giờ.)* |

---

## Tình huống 9 — Khu QC mới · 11:00, Mai hỏi lại về AI 画像認識 (kỹ năng hỏi lại)

| Vai | Lời thoại |
|---|---|
| Kiểm tra viên | この<ruby>新<rt>あたら</rt></ruby>しいAI <ruby>画像認識<rt>がぞうにんしき</rt></ruby>システムについて、ご<ruby>存<rt>ぞん</rt></ruby>じですか?<br>*(Về hệ thống AI nhận diện hình ảnh mới này, các bạn đã biết chưa?)* |
| Mai | え、AI…(nhìn Hoa)<br>*(Ơ, AI… )* |
| Hoa | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。すみません、「AI <ruby>画像認識<rt>がぞうにんしき</rt></ruby>」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどのようなシステムでしょうか?<br>*(Em xin lỗi, hôm nay em mới nghe lần đầu. Xin lỗi, "AI nhận diện hình ảnh" cụ thể là hệ thống thế nào ạ?)* |
| Kiểm tra viên | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。カメラで<ruby>製品<rt>せいひん</rt></ruby>を<ruby>撮影<rt>さつえい</rt></ruby>して、AIが<ruby>異物<rt>いぶつ</rt></ruby>を<ruby>自動<rt>じどう</rt></ruby>で<ruby>検出<rt>けんしゅつ</rt></ruby>します。<ruby>検出率<rt>けんしゅつりつ</rt></ruby>は<ruby>99.9<rt>きゅうじゅうきゅうてんきゅう</rt></ruby>パーセントです。<br>*(Câu hỏi hay. Camera chụp sản phẩm, AI tự phát hiện dị vật. Tỷ lệ phát hiện 99.9%.)* |
| Mai | すごいですね! <ruby>金属<rt>きんぞく</rt></ruby><ruby>探知機<rt>たんちき</rt></ruby>とどう<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Tuyệt quá ạ! Khác máy dò kim loại thế nào ạ?)* |
| Kiểm tra viên | <ruby>金属<rt>きんぞく</rt></ruby><ruby>探知機<rt>たんちき</rt></ruby>は<ruby>金属<rt>きんぞく</rt></ruby>だけですが、AIはプラスチック、ガラス、<ruby>毛髪<rt>もうはつ</rt></ruby>も<ruby>検出<rt>けんしゅつ</rt></ruby>できます。<br>*(Máy dò kim loại chỉ nhận kim loại, còn AI nhận được cả nhựa, thuỷ tinh, tóc.)* |
| Hoa | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>導入<rt>どうにゅう</rt></ruby>の<ruby>詳<rt>くわ</rt></ruby>しい<ruby>説明<rt>せつめい</rt></ruby>は<ruby>高橋<rt>たかはし</rt></ruby>QCマネージャーよりさせていただきます。<br>*(Em rõ rồi ạ. Giải thích chi tiết việc áp dụng sẽ do quản lý QC Takahashi trình bày ạ.)* |
| Kiểm tra viên | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。マイさん、<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>に「<ruby>確認<rt>かくにん</rt></ruby>させていただきます」と<ruby>言<rt>い</rt></ruby>えるのは<ruby>立派<rt>りっぱ</rt></ruby>ですよ。<br>*(Mong nhờ. Mai-san, khi không biết mà nói được "để em xác nhận" là xuất sắc đấy.)* |

---

## Tình huống 10 — Phòng họp · 16:00, họp kết thúc và phản hồi thanh tra

| Vai | Lời thoại |
|---|---|
| Kiểm tra viên | <ruby>本日<rt>ほんじつ</rt></ruby>は、<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>監査<rt>かんさ</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Hôm nay rất cảm ơn quý công ty. Tôi xin báo cáo kết quả thanh tra.)* |
| Tanaka | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin mời ạ.)* |
| Kiểm tra viên | <ruby>大<rt>おお</rt></ruby>きな<ruby>不適合<rt>ふてきごう</rt></ruby>はございません。<ruby>軽微<rt>けいび</rt></ruby>な<ruby>指摘<rt>してき</rt></ruby>が<ruby>2<rt>に</rt></ruby><ruby>件<rt>けん</rt></ruby>のみです。<br>*(Không có lỗi không phù hợp lớn. Chỉ có 2 điểm nhắc nhẹ.)* |
| Tanaka | ありがとうございます。<br>*(Cảm ơn anh ạ.)* |
| Kiểm tra viên | <ruby>特<rt>とく</rt></ruby>に<ruby>後輩指導<rt>こうはいしどう</rt></ruby>が<ruby>素晴<rt>すば</rt></ruby>らしいです。マイさんは<ruby>来日<rt>らいにち</rt></ruby>して<ruby>何<rt>なん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>ですか?<br>*(Đặc biệt chỉ dẫn đàn em xuất sắc. Mai-san đến Nhật mấy tháng rồi?)* |
| Mai | 6か<ruby>月<rt>げつ</rt></ruby>でございます。<br>*(6 tháng ạ.)* |
| Kiểm tra viên | え! 6か<ruby>月<rt>げつ</rt></ruby>でこの<ruby>説明<rt>せつめい</rt></ruby>ですか! ホアさんの<ruby>指導<rt>しどう</rt></ruby>のおかげですね。<br>*(Ơ! Mới 6 tháng mà giải thích được vậy! Nhờ chỉ dẫn của Hoa-san đó.)* |
| Hoa | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。マイさんが<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>してくれたからです。<br>*(Em ngại quá ạ. Là vì Mai luyện nghiêm túc.)* |
| Kiểm tra viên | AI <ruby>導入<rt>どうにゅう</rt></ruby>は6か<ruby>月以内<rt>げついない</rt></ruby>でよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Áp dụng AI trong 6 tháng, mong nhờ quý công ty.)* |
| Tanaka | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng ạ. Hôm nay anh vất vả rồi.)* |

---

## Tình huống 11 — Hành lang sau thanh tra · 16:30, Hoa và Mai ăn mừng

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん! <ruby>終<rt>お</rt></ruby>わりました!<br>*(Chị Hoa! Xong rồi!)* |
| Hoa | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましたね。<br>*(Vất vả rồi. Em đã thật sự cố gắng.)* |
| Mai | お<ruby>客様<rt>きゃくさま</rt></ruby>に<ruby>褒<rt>ほ</rt></ruby>められました! ホア<ruby>姉<rt>ねえ</rt></ruby>さんのおかげです!<br>*(Em được khách khen! Nhờ chị Hoa!)* |
| Hoa | <ruby>5<rt>いつ</rt></ruby>つの<ruby>文<rt>ぶん</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えたマイさんの<ruby>力<rt>ちから</rt></ruby>です。<ruby>特<rt>とく</rt></ruby>に「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、<ruby>確認<rt>かくにん</rt></ruby>させていただきます」がよく<ruby>言<rt>い</rt></ruby>えました。<br>*(Là sức của em đã nhớ được 5 câu. Đặc biệt em nói được "Em xin lỗi, để em xác nhận" rất tốt.)* |
| Mai | <ruby>泣<rt>な</rt></ruby>きそうです…<br>*(Em sắp khóc rồi…)* |
| Hoa | <ruby>泣<rt>な</rt></ruby>いてもいいですよ。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>も<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>後<rt>うし</rt></ruby>ろで<ruby>同<rt>おな</rt></ruby>じように<ruby>泣<rt>な</rt></ruby>きました。<br>*(Khóc cũng được. Một năm trước, chị cũng khóc sau lưng đàn anh Satou y như vậy.)* |
| Mai | <ruby>来年<rt>らいねん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>も<ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>助<rt>たす</rt></ruby>けたいです。<br>*(Năm sau em cũng muốn giúp đàn em mới.)* |
| Hoa | きっとできますよ。<ruby>順番<rt>じゅんばん</rt></ruby>ですから。<br>*(Chắc chắn em làm được. Vì đến lượt rồi mà.)* |

---

## Tình huống 12 — Phòng ký túc · 21:00, gọi điện cho mẹ và Putri (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng chương qua hội thoại với mẹ ở quê và đồng hương Putri (Indonesia).

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt, gọi video về VN) Mẹ ơi, hôm nay con đi thanh tra rồi. |
| Mẹ Hoa | (tiếng Việt) Thanh tra là cái gì hả con? |
| Hoa | (tiếng Việt) Là khách lớn — siêu thị Aeon — về kiểm tra nhà máy mỗi năm một lần. Năm nay con là sempai, dạy đàn em tên Mai dẫn khách phần khu đóng gói. |
| Mẹ Hoa | (tiếng Việt) Trời, mới năm hai mà đã đi dạy người khác à? |
| Hoa | (tiếng Việt) Vâng. Con dạy nó 5 câu keigo thôi mẹ ạ — kiểu "ご案内致します" với "申し訳ございません、確認させていただきます". Câu cuối là "thuyền cứu sinh", khi không biết thì cứ nói câu đó. |
| Mẹ Hoa | (tiếng Việt) Mẹ chả hiểu gì nhưng mà giỏi. Khách có khen không? |
| Hoa | (tiếng Việt) Khen mẹ ạ. Nói con dạy đàn em tốt. Còn yêu cầu nhà máy lắp hệ thống AI mới — gọi là 画像認識, dùng camera với AI để phát hiện dị vật trong đồ ăn. Sáu tháng nữa phải xong. |
| Mẹ Hoa | (tiếng Việt) Ừ, giữ sức khoẻ con. Ngủ sớm. |
| Putri | (tiếng Việt-Indo lẫn lộn, LINE call) Chị Hoa! Thanh tra xong chưa? |
| Hoa | (tiếng Việt) Xong rồi Putri. Mai được khen, mình cũng được khen luôn. |
| Putri | Wah, 師匠 (shishou)! |
| Hoa | (tiếng Việt) Không phải sư phụ, chỉ là đàn chị thôi. Năm sau tháng 3 gặp ở Nagoya nhé, chị Linh cũng đến. |
| Putri | OK! Mình cũng đang luyện 補足 với 確認 cho thanh tra tháng 12 bên nhà máy mình. Chia mình mấy câu đi! |
| Hoa | (tiếng Việt) Mai chị gửi note 5 câu cho. Ngủ ngon nhé. |

---

## Đọng lại chương 8

Hôm nay Hoa lần đầu vào vai sempai chuẩn bị thanh tra ISO 22000 cho Mai, kohai 6 tháng. Cô học và truyền lại bộ **5 câu keigo cốt lõi dẫn kiểm tra viên**: **ご案内致します**, **こちらが〜でございます**, **お足元にお気をつけ下さい**, **ご不明な点はございませんか**, và "thuyền cứu sinh" **申し訳ございません、確認させていただきます** — câu dùng khi bị hỏi điều không biết, tuyệt đối không bịa. Hoa cũng dạy Mai **phép tắc đi cùng khách** (半歩前 / không 並んで歩く / chỉ hướng bằng 手のひら không 指), và đứng sau lưng kohai để **thì thầm hỗ trợ** + **補足させていただきます** khi cần. Trong thanh tra, cả hai trả lời được câu hỏi về **金属探知機・校正頻度・記録**, và biết **hỏi lại lễ phép** (〜というのは具体的にどのようなシステムでしょうか) khi kiểm tra viên giới thiệu hệ thống **AI 画像認識** mới mà nhà máy phải áp dụng trong 6 tháng. Hoa nhận ra: năm 1 mình là kohai được Satou đỡ, năm 2 mình đỡ Mai — đó là cách chuỗi sempai-kohai dài mãi.

> Từ vựng & mẫu câu chương này: 監査・年次監査・監査対応・ISO 22000・包装区域・案内致します・〜でございます・お足元にお気をつけ下さい・ご不明な点はございませんか・申し訳ございません・確認させていただきます・補足させていただきます・金属探知機・校正・頻度・記録・テストピース・AI 画像認識・異物検出・導入・不適合・軽微な指摘・後輩指導・先輩・後輩・半歩前・手のひらで示す・恐れ入ります・承知いたしました

---

## Bí quyết chương

- Huấn luyện kohai trước thanh tra: chỉ 5 câu cốt lõi + "thuyền cứu sinh" `申し訳ございません、確認させていただきます`.
- Tác phong đi cùng khách: nửa bước trước khách, chỉ hướng bằng lòng bàn tay mở (không dùng ngón).
- Sempai đứng phía sau = thì thầm hỗ trợ, KHÔNG cướp lời; chỉ chen vào khi `補足させていただきます`.
- AI kiểm tra hình ảnh — xu hướng QC 2027: phát hiện cả nhựa / thuỷ tinh / tóc, không chỉ kim loại; tỷ lệ 99.9%.
- Kiểm tra viên khen kohai → Tanaka khen sempai → chuỗi ghi nhận công bằng cho cả 3 cấp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 年次監査 | ねんじかんさ | NIÊN THỨ GIÁM TRA | Thanh tra thường niên |
| 画像認識 | がぞうにんしき | HỌA TƯỢNG NHẬN THỨC | Nhận diện hình ảnh |
| 導入 | どうにゅう | ĐẠO NHẬP | Đưa vào áp dụng |
| 異物検査 | いぶつけんさ | DỊ VẬT KIỂM TRA | Kiểm tra dị vật |
| 要求 | ようきゅう | YÊU CẦU | Yêu cầu |
| 説明担当 | せつめいたんとう | THUYẾT MINH ĐẢM ĐƯƠNG | Người phụ trách giải thích |
| 包装区域 | ほうそうくいき | BAO TRANG KHU VỰC | Khu đóng gói |
| 案内 | あんない | ÁN NỘI | Dẫn đường, hướng dẫn |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 足元 | あしもと | TÚC NGUYÊN | Chỗ chân, dưới chân |
| 不明な点 | ふめいなてん | BẤT MINH — ĐIỂM | Điểm chưa rõ |
| 申し訳ございません | もうしわけございません | THÂN DỊCH | Em xin lỗi (lễ độ) |
| 半歩 | はんぽ | BÁN BỘ | Nửa bước |
| 方向 | ほうこう | PHƯƠNG HƯỚNG | Phương hướng |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | Hít thở sâu |
| 工場見学 | こうじょうけんがく | CÔNG TRƯỜNG KIẾN HỌC | Tham quan nhà máy |
| 新入 | しんにゅう | TÂN NHẬP | Người mới vào |
| 包装後 | ほうそうご | BAO TRANG HẬU | Sau khi đóng gói |
| 校正 | こうせい | HIỆU CHÍNH | Hiệu chuẩn |
| 毎時 | まいじ | MỖI THỜI | Mỗi giờ |
| テストピース | — | — | Mảnh thử |
| 補足 | ほそく | BỔ TÚC | Bổ sung |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 撮影 | さつえい | NHIẾP ẢNH | Chụp, quay |
| 検出 | けんしゅつ | KIỂM XUẤT | Phát hiện |
| 検出率 | けんしゅつりつ | KIỂM XUẤT SUẤT | Tỷ lệ phát hiện |
| 毛髪 | もうはつ | MAO PHÁT | Tóc |
| 不適合 | ふてきごう | BẤT THÍCH HỢP | Không phù hợp (lỗi thanh tra) |
| 軽微な指摘 | けいびなしてき | KHINH VI — CHỈ TRÍCH | Điểm nhắc nhẹ |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000009, 800000012, NULL, 'markdown_book', 'T9. Đăng ký khoá HACCP coordinator (HACCPコーディネーター講座)', '# Sách thực tập sinh thực phẩm · T9. Đăng ký khoá HACCP coordinator (HACCPコーディネーター講座)

> **Mục tiêu nhân vật:** Hoa (23 tuổi, Hà Nội) đăng ký khoá HACCP coordinator 3 ngày tại JHTC Tokyo. Học các mẫu hội thoại tiếng Nhật trong môi trường đào tạo chuyên môn: xin phép cấp trên đi học (ちょっとよろしいでしょうか), hỏi về trợ cấp công ty (会社が出していただけますか), tự giới thiệu trong nhóm học viên Nhật (〜と申します・〜から参りました), hỏi lại lễ phép khi gặp thuật ngữ mới (〜というのは何ですか), trao đổi LINE thay vì 名刺, chia sẻ ケーススタディ thực tế của công ty mình.

---

## Bối cảnh

Tháng 12 năm 2027. Hoa đã đậu **食品衛生責任者** tháng 10, làm tại nhà máy cơm hộp ở Saitama. Trình độ tiếng Nhật N3+. Chương này tập trung các mẫu câu giao tiếp khi học viên người Việt bước vào khoá đào tạo chuyên môn 3 ngày tại JHTC Tokyo cùng 5 học viên Nhật: xin phép sếp đi học, hỏi trợ cấp công ty, tự giới thiệu nhóm, hỏi lại thuật ngữ HACCP chuyên sâu, làm quen 同期 và chia sẻ tình huống thực tế của ngành.

---

## Tình huống 1 — Phòng anh Tanaka · 14:00, học cách xin phép cấp trên đi học khoá ngoài

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>田中部長<rt>たなかぶちょう</rt></ruby>、ちょっとよろしいでしょうか?<br>*(Anh Tanaka, em xin một chút thời gian được không ạ?)* |
| Tanaka | はい、どうぞ。お<ruby>掛<rt>か</rt></ruby>けください。<br>*(Vâng, mời. Em ngồi đi.)* |
| Hoa | <ruby>実<rt>じつ</rt></ruby>は、HACCP コーディネーターの<ruby>講座<rt>こうざ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Thực ra, em đang muốn học khoá HACCP coordinator.)* |
| Tanaka | おお、<ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>次<rt>つぎ</rt></ruby>のステップですね。<br>*(Ô, tuyệt vời! Bước tiếp theo của Sekininsha nhỉ.)* |
| Hoa | はい。ただ、<ruby>料金<rt>りょうきん</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>くて<ruby>悩<rt>なや</rt></ruby>んでいます。<br>*(Vâng. Chỉ có điều, lệ phí hơi cao nên em đang phân vân.)* |
| Tanaka | いくらですか?<br>*(Bao nhiêu vậy?)* |
| Hoa | <ruby>6<rt>ろく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>700<rt>ななひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>連続<rt>れんぞく</rt></ruby>の<ruby>講座<rt>こうざ</rt></ruby>です。<br>*(60.700 yên ạ. Là khoá 3 ngày liên tiếp.)* |
| Tanaka | <ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby><ruby>出<rt>だ</rt></ruby>しますよ。<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby><ruby>合格者<rt>ごうかくしゃ</rt></ruby>には<ruby>研修費<rt>けんしゅうひ</rt></ruby>を<ruby>支援<rt>しえん</rt></ruby>する<ruby>制度<rt>せいど</rt></ruby>があります。<br>*(Công ty trả nửa nhé. Có chế độ hỗ trợ học phí cho người đã đậu Sekininsha.)* |
| Hoa | え!<ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます!<br>*(Ơ! Thật ạ? Em cảm ơn anh!)* |
| Tanaka | <ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>鈴木<rt>すずき</rt></ruby>さんに<ruby>出<rt>だ</rt></ruby>してください。<ruby>研修扱<rt>けんしゅうあつか</rt></ruby>いにします。<br>*(Em nộp đơn xin cho chị Suzuki nhé. Sẽ tính là 研修.)* |
| Hoa | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em rõ ạ. Mong anh giúp đỡ.)* |

---

## Tình huống 2 — Bàn làm việc anh Suzuki · 14:30, hỏi đáp về thủ tục đăng ký + nghỉ phép

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>田中部長<rt>たなかぶちょう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>きました。HACCP の<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みですね。JHTC のサイトを<ruby>開<rt>ひら</rt></ruby>いてみましょう。<br>*(Hoa-san, tôi nghe anh Tanaka nói rồi. Đăng ký HACCP nhỉ. Mở trang JHTC xem nào.)* |
| Hoa | はい、これですね。<ruby>来月<rt>らいげつ</rt></ruby><ruby>20<rt>はつか</rt></ruby><ruby>日<rt>か</rt></ruby>から<ruby>22<rt>にじゅうに</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>があります。<br>*(Vâng, đây ạ. Có khoá ngày 20 đến 22 tháng sau, hội trường Tokyo.)* |
| Suzuki | <ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby><ruby>連続<rt>れんぞく</rt></ruby>、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>までです。<br>*(3 ngày liên tiếp, từ 9 giờ đến 17 giờ.)* |
| Hoa | <ruby>仕事<rt>しごと</rt></ruby>はどうなりますか?<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですか?<br>*(Công việc thì sao ạ? Em phải dùng phép có lương ạ?)* |
| Suzuki | いいえ、<ruby>違<rt>ちが</rt></ruby>います。これは<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby><ruby>扱<rt>あつか</rt></ruby>いです。<ruby>有休<rt>ゆうきゅう</rt></ruby>は<ruby>使<rt>つか</rt></ruby>いません。<br>*(Không, khác đấy. Cái này là 研修 có lương. Không dùng phép.)* |
| Hoa | すみません、「<ruby>有給<rt>ゆうきゅう</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "有給研修" nghĩa là gì ạ?)* |
| Suzuki | <ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>として<ruby>研修<rt>けんしゅう</rt></ruby>に<ruby>行<rt>い</rt></ruby>く、<ruby>給料<rt>きゅうりょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>るという<ruby>意味<rt>いみ</rt></ruby>です。<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>です。<br>*(Là đi đào tạo với tư cách công việc, vẫn được trả lương. Khác với phép có lương thông thường.)* |
| Hoa | なるほど、<ruby>業務<rt>ぎょうむ</rt></ruby>として<ruby>行<rt>い</rt></ruby>くということですね。わー、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Ra vậy, là đi với tư cách công việc ạ. Wow, em vui quá.)* |
| Suzuki | ホテルも<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>手配<rt>てはい</rt></ruby>します。<ruby>東京駅<rt>とうきょうえき</rt></ruby><ruby>近<rt>ちか</rt></ruby>くです。<br>*(Khách sạn cũng công ty đặt giúp. Gần ga Tokyo.)* |
| Hoa | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn ạ. Mong chị giúp đỡ.)* |

---

## Tình huống 3 — Phòng nghỉ ký túc · 19:00, kể chuyện cho đàn em Mai

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん、HACCP コーディネーターを<ruby>受<rt>う</rt></ruby>けるんですか?<br>*(Chị Hoa, chị sẽ học HACCP coordinator ạ?)* |
| Hoa | はい、<ruby>来月<rt>らいげつ</rt></ruby><ruby>20<rt>はつか</rt></ruby><ruby>日<rt>か</rt></ruby>から。<ruby>東京<rt>とうきょう</rt></ruby>で<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>です。<br>*(Vâng, từ ngày 20 tháng sau. 3 ngày ở Tokyo.)* |
| Mai | すごい!<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>とまた<ruby>会<rt>あ</rt></ruby>えるんですか?<br>*(Tuyệt! Chị lại được gặp Kondo-sensei à?)* |
| Hoa | はい、<ruby>今度<rt>こんど</rt></ruby>は<ruby>対面<rt>たいめん</rt></ruby>で<ruby>会<rt>あ</rt></ruby>えます。<ruby>楽<rt>たの</rt></ruby>しみです。<br>*(Vâng, lần này được gặp trực tiếp. Em mong lắm.)* |
| Mai | <ruby>1<rt>いち</rt></ruby><ruby>人<rt>り</rt></ruby>で<ruby>東京<rt>とうきょう</rt></ruby>、<ruby>怖<rt>こわ</rt></ruby>くないですか?<br>*(Một mình ở Tokyo, chị không sợ ạ?)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>日本<rt>にほん</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>住<rt>す</rt></ruby>んだから<ruby>慣<rt>な</rt></ruby>れたよ。マイさんも<ruby>来年<rt>らいねん</rt></ruby><ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>してね。<br>*(Không sao. Chị đã sống ở Nhật 1 năm rồi quen rồi. Em năm sau cũng thử Sekininsha nhé.)* |
| Mai | はい!<ruby>姉<rt>ねえ</rt></ruby>さんが<ruby>道<rt>みち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってくれたから。<br>*(Vâng! Vì chị đã mở đường rồi.)* |

---

## Tình huống 4 — Sảnh JHTC tầng 7 · 8:50 ngày 1, học cách chào sensei khi gặp trực tiếp lần đầu

| Vai | Lời thoại |
|---|---|
| Hoa | (đứng trước cửa phòng học, hồi hộp hít một hơi rồi bước vào)<br> |
| Kondo | あ、ホアさん!<ruby>初<rt>はじ</rt></ruby>めまして、<ruby>対面<rt>たいめん</rt></ruby>では<ruby>初<rt>はじ</rt></ruby>めてですね。<br>*(À, Hoa-san! Trực tiếp thì lần đầu gặp nhỉ.)* |
| Hoa | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Kondo-sensei, đã lâu không liên lạc ạ. Hôm nay xin nhờ thầy.)* |
| Kondo | こちらこそ。オンラインより<ruby>背<rt>せ</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いですね。(cười)<br>*(Tôi cũng vậy. Trông thấp hơn so với online nhỉ. (cười))* |
| Hoa | (cười) はい、<ruby>画面<rt>がめん</rt></ruby>では<ruby>分<rt>わ</rt></ruby>からないですよね。<br>*(Vâng, qua màn hình thì không thấy được.)* |
| Kondo | <ruby>今回<rt>こんかい</rt></ruby>の<ruby>受講者<rt>じゅこうしゃ</rt></ruby>は<ruby>6<rt>ろく</rt></ruby><ruby>名<rt>めい</rt></ruby>です。ホアさんが<ruby>唯一<rt>ゆいいつ</rt></ruby>の<ruby>外国<rt>がいこく</rt></ruby><ruby>出身者<rt>しゅっしんしゃ</rt></ruby>です。<br>*(Lần này học viên có 6 người. Hoa-san là người duy nhất gốc nước ngoài.)* |
| Hoa | え、そうですか。<ruby>緊張<rt>きんちょう</rt></ruby>しますが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Ơ, vậy ạ. Em hồi hộp nhưng sẽ cố gắng.)* |
| Kondo | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。みなさん<ruby>優<rt>やさ</rt></ruby>しいですよ。<ruby>分<rt>わ</rt></ruby>からないことがあったら、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>質問<rt>しつもん</rt></ruby>してください。<br>*(Không sao đâu. Mọi người tốt bụng. Có gì không hiểu cứ hỏi thoải mái.)* |
| Hoa | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 5 — Phòng học JHTC · 9:00 ngày 1, học mẫu câu tự giới thiệu trong nhóm chuyên môn

| Vai | Lời thoại |
|---|---|
| Kondo | では、<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>所属<rt>しょぞく</rt></ruby>と<ruby>業種<rt>ぎょうしゅ</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, lần lượt tự giới thiệu nhé. Cho biết cả nơi làm và ngành nghề.)* |
| Yamamoto | <ruby>東京<rt>とうきょう</rt></ruby>のパン<ruby>工場<rt>こうじょう</rt></ruby>から<ruby>来<rt>き</rt></ruby>ました、<ruby>山本<rt>やまもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi đến từ nhà máy bánh mì ở Tokyo, tên Yamamoto. Mong mọi người giúp đỡ.)* |
| Sasaki | <ruby>千葉<rt>ちば</rt></ruby>の<ruby>水産加工<rt>すいさんかこう</rt></ruby><ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>佐々木<rt>ささき</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi là Sasaki ở công ty chế biến hải sản Chiba. Mong mọi người giúp đỡ.)* |
| Hoa | <ruby>埼玉県<rt>さいたまけん</rt></ruby>のお<ruby>弁当工場<rt>べんとうこうじょう</rt></ruby>から<ruby>参<rt>まい</rt></ruby>りました、グエン・ティ・ホアと<ruby>申<rt>もう</rt></ruby>します。ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em đến từ nhà máy cơm hộp ở tỉnh Saitama, em tên là Nguyễn Thị Hoa. Người Việt Nam. Mong mọi người giúp đỡ ạ.)* |
| Sasaki | おー、ベトナムから!<ruby>日本語<rt>にほんご</rt></ruby>がお<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Ô, từ Việt Nam à! Tiếng Nhật giỏi quá.)* |
| Hoa | いえいえ、まだまだです。<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。<br>*(Không không, em còn kém lắm. Vẫn đang học ạ.)* |
| Yamamoto | <ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>はもうお<ruby>持<rt>も</rt></ruby>ちですか?<br>*(Đã có Sekininsha chưa?)* |
| Hoa | はい、<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Vâng, em đậu tháng 10 rồi ạ.)* |
| Sasaki | すごい!<ruby>外国<rt>がいこく</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>するのは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>でしょう。<br>*(Tuyệt! Người gốc nước ngoài mà đậu chắc vất vả lắm.)* |
| Hoa | はい、<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しかったです。<br>*(Vâng, kanji khó quá ạ.)* |

---

## Tình huống 6 — Phòng học JHTC · 10:30 ngày 1, hỏi lại thuật ngữ chuyên môn HACCP

| Vai | Lời thoại |
|---|---|
| Kondo | まず HACCP の<ruby>7<rt>なな</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>を<ruby>復習<rt>ふくしゅう</rt></ruby>しましょう。<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>危害分析<rt>きがいぶんせき</rt></ruby>、<ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は CCP の<ruby>決定<rt>けってい</rt></ruby>です。<br>*(Đầu tiên ôn 7 nguyên tắc HACCP. Thứ nhất là phân tích nguy hại, thứ hai là xác định CCP.)* |
| Kondo | <ruby>3<rt>さん</rt></ruby>:<ruby>管理基準<rt>かんりきじゅん</rt></ruby>、<ruby>4<rt>よん</rt></ruby>:モニタリング、<ruby>5<rt>ご</rt></ruby>:<ruby>是正<rt>ぜせい</rt></ruby><ruby>措置<rt>そち</rt></ruby>、<ruby>6<rt>ろく</rt></ruby>:<ruby>検証<rt>けんしょう</rt></ruby>、<ruby>7<rt>なな</rt></ruby>:<ruby>記録<rt>きろく</rt></ruby>です。<br>*(3: Tiêu chuẩn quản lý, 4: monitoring, 5: biện pháp khắc phục, 6: kiểm chứng, 7: hồ sơ.)* |
| Hoa | <ruby>先生<rt>せんせい</rt></ruby>、すみません、CCP の<ruby>決定<rt>けってい</rt></ruby>に「デシジョンツリー」を<ruby>使<rt>つか</rt></ruby>うとありますが、「デシジョンツリー」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Thầy ơi, xin lỗi, em thấy ghi dùng "decision tree" để xác định CCP, "decision tree" là gì ạ?)* |
| Kondo | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>4<rt>よん</rt></ruby>つの<ruby>質問<rt>しつもん</rt></ruby>を<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えて、その<ruby>工程<rt>こうてい</rt></ruby>が CCP かどうかを<ruby>判断<rt>はんだん</rt></ruby>する<ruby>図<rt>ず</rt></ruby>のことです。<br>*(Câu hỏi hay đấy. Là sơ đồ trả lời 4 câu hỏi theo thứ tự để phán đoán xem công đoạn đó có phải CCP không.)* |
| Hoa | <ruby>4<rt>よん</rt></ruby>つの<ruby>質問<rt>しつもん</rt></ruby>に<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>答<rt>こた</rt></ruby>える、ということですね。<br>*(Trả lời 4 câu hỏi theo thứ tự, đúng không ạ?)* |
| Kondo | そうです。<ruby>後<rt>あと</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>します。<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>では<ruby>概要<rt>がいよう</rt></ruby>でしたが、HACCP コーディネーターは<ruby>詳細<rt>しょうさい</rt></ruby>に<ruby>学<rt>まな</rt></ruby>びます。<br>*(Đúng. Lát nữa luyện tập. Sekininsha chỉ học tổng quan, HACCP coordinator học chi tiết hơn.)* |
| Hoa | はい、メモしておきます。<br>*(Vâng, em ghi lại ạ.)* |

---

## Tình huống 7 — Sảnh ăn JHTC · 12:00 ngày 1, kết nối và đề nghị trao LINE thay 名刺

| Vai | Lời thoại |
|---|---|
| Sasaki | ホアさん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べませんか?<ruby>下<rt>した</rt></ruby>に<ruby>食堂<rt>しょくどう</rt></ruby>がありますよ。<br>*(Hoa-san, ăn cùng không? Dưới có nhà ăn đấy.)* |
| Hoa | あ、はい、よろこんで!<br>*(À, vâng, em xin sẵn lòng!)* |
| Sasaki | お<ruby>弁当工場<rt>べんとうこうじょう</rt></ruby>って、<ruby>大変<rt>たいへん</rt></ruby>そうですね。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby>くらい<ruby>作<rt>つく</rt></ruby>るんですか?<br>*(Nhà máy cơm hộp chắc vất vả nhỉ. Mỗi ngày làm khoảng bao nhiêu hộp?)* |
| Hoa | <ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>に<ruby>5,000<rt>ごせん</rt></ruby><ruby>個<rt>こ</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まります。<br>*(Một ngày 5.000 hộp ạ. Bắt đầu từ 4 giờ sáng.)* |
| Sasaki | わー、<ruby>大量<rt>たいりょう</rt></ruby>ですね!<ruby>水産加工<rt>すいさんかこう</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby>キロです。<br>*(Wow, lượng lớn nhỉ! Chế biến hải sản 1 ngày 500 kg.)* |
| Hoa | <ruby>業界<rt>ぎょうかい</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うと、<ruby>規模<rt>きぼ</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>いますね。<ruby>面白<rt>おもしろ</rt></ruby>いです。<br>*(Ngành khác nhau thì quy mô cũng khác. Thú vị quá.)* |
| Sasaki | ホアさん、よかったら<ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>しませんか?<br>*(Hoa-san, nếu được mình đổi card không?)* |
| Hoa | あ、すみません、<ruby>名刺<rt>めいし</rt></ruby>はまだ<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>支給<rt>しきゅう</rt></ruby>されていなくて...LINE の QR コードでもいいですか?<br>*(À, xin lỗi, em chưa được công ty cấp danh thiếp ạ... QR LINE có được không?)* |
| Sasaki | もちろんです!<ruby>最近<rt>さいきん</rt></ruby>は LINE のほうが<ruby>便利<rt>べんり</rt></ruby>ですよ。<br>*(Tất nhiên! Dạo này LINE còn tiện hơn.)* |
| Hoa | ありがとうございます。スキャンしてください。<br>*(Em cảm ơn ạ. Anh quét giúp em.)* |

---

## Tình huống 8 — Phòng học JHTC · 14:00 ngày 1, học mẫu câu chia sẻ ケーススタディ thực tế

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>本日<rt>ほんじつ</rt></ruby>のケーススタディはお<ruby>弁当工場<rt>べんとうこうじょう</rt></ruby>の<ruby>異物混入<rt>いぶつこんにゅう</rt></ruby>です。ホアさん、<ruby>当事者<rt>とうじしゃ</rt></ruby>として<ruby>何<rt>なに</rt></ruby>かご<ruby>意見<rt>いけん</rt></ruby>はありますか?<br>*(Tình huống thực tế hôm nay là nhiễm dị vật ở nhà máy cơm hộp. Hoa-san, với tư cách người trong cuộc, em có ý kiến gì không?)* |
| Hoa | はい。<ruby>実<rt>じつ</rt></ruby>は<ruby>去年<rt>きょねん</rt></ruby>の<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>に、<ruby>当社<rt>とうしゃ</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じような<ruby>事件<rt>じけん</rt></ruby>が<ruby>起<rt>お</rt></ruby>こりました。<br>*(Vâng. Thực ra tháng 10 năm ngoái công ty em cũng có sự cố tương tự.)* |
| Yamamoto | おお、リアルケースですね。<br>*(Ô, tình huống thật.)* |
| Hoa | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>原料容器<rt>げんりょうようき</rt></ruby>の<ruby>破損<rt>はそん</rt></ruby>でした。プラスチックの<ruby>破片<rt>はへん</rt></ruby>が<ruby>製品<rt>せいひん</rt></ruby>に<ruby>混入<rt>こんにゅう</rt></ruby>してしまいました。<br>*(Nguyên nhân là hộp đựng nguyên liệu bị nứt. Mảnh nhựa bị lẫn vào sản phẩm.)* |
| Kondo | <ruby>解決策<rt>かいけつさく</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でしたか?<br>*(Giải pháp là gì?)* |
| Hoa | <ruby>容器<rt>ようき</rt></ruby>チェックリストを<ruby>作<rt>つく</rt></ruby>りました。<ruby>使用<rt>しよう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>破損<rt>はそん</rt></ruby>がないか<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em làm bảng kiểm hộp. Trước khi dùng nhất định kiểm tra xem có nứt không.)* |
| Kondo | <ruby>素晴<rt>すば</rt></ruby>らしい!これが<ruby>実際<rt>じっさい</rt></ruby>の<ruby>是正<rt>ぜせい</rt></ruby><ruby>措置<rt>そち</rt></ruby>の<ruby>例<rt>れい</rt></ruby>ですね。<br>*(Tuyệt vời! Đây chính là ví dụ biện pháp khắc phục thực tế.)* |
| Yamamoto | ホアさん、そのチェックリスト、<ruby>共有<rt>きょうゆう</rt></ruby>していただけますか?<br>*(Hoa-san, bảng kiểm đó có thể chia sẻ cho mình không?)* |
| Hoa | はい、もちろんです。<ruby>後<rt>あと</rt></ruby>で LINE で<ruby>送<rt>おく</rt></ruby>ります。<br>*(Vâng, tất nhiên ạ. Lát em gửi qua LINE.)* |

---

## Tình huống 9 — Phòng khách sạn · 20:00 ngày 1, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mai ơi, nghe rõ chị không? Chị ở khách sạn Tokyo, view đẹp lắm. |
| Mai | (tiếng Việt) Em nghe rõ chị. Hôm nay sao rồi chị? |
| Hoa | (tiếng Việt) Vui lắm em. Lớp 6 người, chị là người Việt duy nhất. Mọi người tử tế lắm. |
| Mai | (tiếng Việt) Có gặp Kondo-sensei thật không chị? |
| Hoa | (tiếng Việt) Có! Sensei người thật nhỏ con hơn trên Zoom. Chị tự giới thiệu kiểu "〜と申します・〜から参りました" — học từ hồi sách năm ngoái nay mới dùng được. |
| Mai | (tiếng Việt) Có thuật ngữ gì mới không chị? |
| Hoa | (tiếng Việt) Có. "デシジョンツリー" — cây quyết định để xác định CCP. Còn "有給研修" — tức là đi đào tạo mà vẫn được lương, khác với phép có lương 有給休暇. Chị mới biết hôm nay. |
| Mai | (tiếng Việt) Hay quá. Em ghi sổ luôn đây. |
| Hoa | (tiếng Việt) Em làm Sekininsha năm sau nhé. Có anh Tanaka trợ cấp 50% học phí, đỡ áp lực lắm. |
| Mai | (tiếng Việt) Vâng, em quyết rồi. Chị ngủ sớm, mai 9 giờ vào học sớm. |
| Hoa | (tiếng Việt) Ừ, em cũng ngủ sớm. Chúc em ngủ ngon! |

---

## Tình huống 10 — Phòng học JHTC · 10:00 ngày 2, quan sát đàn anh chia sẻ chuyên ngành 水産

| Vai | Lời thoại |
|---|---|
| Kondo | HACCP は<ruby>記録<rt>きろく</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>です。<ruby>記録<rt>きろく</rt></ruby>がなければ HACCP は<ruby>存在<rt>そんざい</rt></ruby>しないのと<ruby>同<rt>おな</rt></ruby>じです。<br>*(HACCP sống nhờ hồ sơ. Không có hồ sơ thì coi như không có HACCP.)* |
| Kondo | <ruby>監査<rt>かんさ</rt></ruby>では「エビデンス」がいちばん<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>記録<rt>きろく</rt></ruby>=エビデンス、です。<br>*(Khi thanh tra thì "evidence" quan trọng nhất. Hồ sơ chính là evidence.)* |
| Hoa | すみません、「エビデンス」というのは<ruby>証拠<rt>しょうこ</rt></ruby>のことですか?<br>*(Xin lỗi, "evidence" là bằng chứng đúng không ạ?)* |
| Kondo | そうです。<ruby>英語<rt>えいご</rt></ruby>の evidence、<ruby>証拠<rt>しょうこ</rt></ruby>です。<br>*(Đúng. Evidence tiếng Anh, là bằng chứng.)* |
| Sasaki | <ruby>水産<rt>すいさん</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>では<ruby>温度記録<rt>おんどきろく</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>重要<rt>じゅうよう</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ごとにチェックします。<br>*(Ngành hải sản thì hồ sơ nhiệt độ đặc biệt quan trọng. Cứ 2 tiếng kiểm tra một lần.)* |
| Hoa | お<ruby>弁当<rt>べんとう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じです。コールドチェーンが<ruby>切<rt>き</rt></ruby>れたら<ruby>食中毒<rt>しょくちゅうどく</rt></ruby>のリスクがあります。<br>*(Cơm hộp cũng vậy ạ. Chuỗi lạnh mà đứt thì có nguy cơ ngộ độc.)* |
| Kondo | そのとおり。<ruby>業種<rt>ぎょうしゅ</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>っても<ruby>原則<rt>げんそく</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。<br>*(Đúng vậy. Ngành khác nhau nhưng nguyên tắc giống nhau.)* |
| Hoa | <ruby>佐々木<rt>ささき</rt></ruby>さんの<ruby>温度記録<rt>おんどきろく</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>、<ruby>後<rt>あと</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cách ghi nhiệt độ của anh Sasaki, lát anh chỉ giúp em được không?)* |
| Sasaki | もちろん!お<ruby>互<rt>たが</rt></ruby>いに<ruby>学<rt>まな</rt></ruby>びましょう。<br>*(Tất nhiên! Cùng học nhau nhé.)* |

---

## Tình huống 11 — Phòng học JHTC · 16:00 ngày 3, bài thi cuối + công bố kết quả

| Vai | Lời thoại |
|---|---|
| Kondo | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>最終<rt>さいしゅう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です。<ruby>全<rt>ぜん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>、<ruby>70<rt>ななじゅう</rt></ruby>パーセント<ruby>以上<rt>いじょう</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Hôm nay là thi cuối. Tổng 30 câu, đạt 70% trở lên là đậu.)* |
| Hoa | (làm bài thi 60 phút, nộp bài)<br> |
| Kondo | <ruby>採点<rt>さいてん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。ホアさん、<ruby>25<rt>にじゅうご</rt></ruby>/<ruby>30<rt>さんじゅう</rt></ruby>、<ruby>83<rt>はちじゅうさん</rt></ruby>パーセントです。<ruby>合格<rt>ごうかく</rt></ruby>です!<br>*(Chấm xong rồi. Hoa-san, 25/30, 83%. Đậu rồi!)* |
| Hoa | やった!ありがとうございます!<br>*(Tuyệt! Em cảm ơn ạ!)* |
| Sasaki | みんな<ruby>合格<rt>ごうかく</rt></ruby>しましたね!おめでとう!<br>*(Mọi người đều đậu nhỉ! Chúc mừng!)* |
| Kondo | ホアさん、JHTC <ruby>始<rt>はじ</rt></ruby>まって<ruby>以来<rt>いらい</rt></ruby>、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>の HACCP コーディネーターは<ruby>初<rt>はじ</rt></ruby>めてかもしれません。<br>*(Hoa-san, từ khi JHTC mở khoá đến giờ, có lẽ em là HACCP coordinator gốc Việt Nam đầu tiên.)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Ơ, thật ạ?)* |
| Kondo | <ruby>少<rt>すく</rt></ruby>なくとも<ruby>私<rt>わたし</rt></ruby>の<ruby>記憶<rt>きおく</rt></ruby>では。これからもベトナムの<ruby>後輩<rt>こうはい</rt></ruby>たちの<ruby>道<rt>みち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってください。<br>*(Ít nhất trong trí nhớ của tôi là vậy. Từ giờ em hãy mở đường cho các đàn em Việt Nam nhé.)* |
| Hoa | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 12 — Sảnh JHTC · 17:30 ngày 3, trao LINE chốt 同期 và mẫu câu chia tay

| Vai | Lời thoại |
|---|---|
| Sasaki | ホアさん、<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hoa-san, 3 ngày vất vả rồi. Sau này cũng nhờ em nhé.)* |
| Hoa | こちらこそ、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>は LINE してください。<br>*(Em cũng vậy, anh vất vả rồi. Có gì khó cứ LINE em nhé.)* |
| Yamamoto | お<ruby>弁当工場<rt>べんとうこうじょう</rt></ruby>のケーススタディ、<ruby>大変<rt>たいへん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Tình huống thực tế nhà máy cơm hộp, học được rất nhiều.)* |
| Hoa | こちらこそ、パン<ruby>工場<rt>こうじょう</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>、<ruby>面白<rt>おもしろ</rt></ruby>かったです。<br>*(Em cũng vậy, chuyện nhà máy bánh thú vị lắm ạ.)* |
| Kondo | みなさん、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>同期<rt>どうき</rt></ruby>として、これからも<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>ってください。<br>*(Mọi người vất vả rồi. Là 同期 thì sau này giữ liên lạc với nhau nhé.)* |
| Hoa | はい、<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Vâng, Kondo-sensei, em cảm ơn thầy nhiều ạ.)* |

---

## Tình huống 13 — Ký túc Saitama · 21:00 hôm sau, Hoa kể Mai (cảnh tiếng Việt — chốt mạch)

> Cảnh tiếng Việt — đồng hương cùng ký túc, ôn lại thuật ngữ JP đã học.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Chị về rồi! Đậu HACCP coordinator chưa chị? |
| Hoa | (tiếng Việt) Đậu rồi! 25/30, 83%. Cao nhất nhóm đấy. |
| Mai | (tiếng Việt) Wow! Chị giỏi quá. |
| Hoa | (tiếng Việt) Kondo-sensei còn nói chị có thể là người Việt đầu tiên có HACCP coordinator ở JHTC. |
| Mai | (tiếng Việt) Trời, chị thành huyền thoại rồi. Em hãnh diện quá. |
| Hoa | (tiếng Việt) Em à, chị học được nhiều thứ ngoài kiến thức. Một là phải biết chia sẻ "ケーススタディ" thật của công ty mình — anh Yamamoto còn xin chị bảng kiểm hộp đựng. Hai là cách dùng "〜というのは" để hỏi lại sensei khi không hiểu mà không bị mất mặt. |
| Mai | (tiếng Việt) Em ghi đây. Còn gì nữa không chị? |
| Hoa | (tiếng Việt) Còn "エビデンス" — bằng chứng, "デシジョンツリー" — cây quyết định CCP, "有給研修" — đào tạo có lương. Mai chị copy notebook cho em. |
| Mai | (tiếng Việt) Vâng. Chị nghỉ đi, mai 4 giờ sáng dậy đi làm rồi. |
| Hoa | (tiếng Việt) Ừ, em cũng ngủ sớm. Chúc em ngủ ngon! |

---

## Đọng lại chương 9

Ba ngày ở Tokyo, Hoa không chỉ học chuyên môn HACCP mà còn tích luỹ được một bộ mẫu câu giao tiếp ngành đào tạo chuyên môn: **xin phép cấp trên đi học** (ちょっとよろしいでしょうか・〜を受けたいと思っています), **hỏi về trợ cấp công ty** (会社が半分出していただけますか), **phân biệt 有給休暇 và 有給研修** (cùng có lương nhưng tính chất khác), **tự giới thiệu trong nhóm chuyên môn** (〜から参りました・〜と申します), **hỏi lại lễ phép khi gặp thuật ngữ mới** (〜というのは何ですか・〜ということですね), **chia sẻ ケーススタディ thực tế** (実は当社でも〜・原因は〜・解決策は〜), và **đề nghị trao LINE thay 名刺** khi chưa có danh thiếp công ty. Cùng đó là 7 nguyên tắc HACCP chuyên sâu: **危害分析・CCP決定 (デシジョンツリー)・管理基準・モニタリング・是正措置・検証・記録**. Hoa nhận ra một nguyên tắc nghề lớn — **記録=エビデンス**, và trong cộng đồng ngành thực phẩm Nhật, một học viên nước ngoài có thể trở thành **đồng kỳ** (同期) bình đẳng nếu chịu chia sẻ kinh nghiệm thật của mình.

> Từ vựng & mẫu câu chương này: HACCPコーディネーター・食品衛生責任者・有給研修・有給休暇・申請書・研修扱い・自己紹介・〜と申します・〜から参りました・〜というのは何ですか・〜ということですね・危害分析・CCP・デシジョンツリー・管理基準・モニタリング・是正措置・検証・記録・エビデンス・ケーススタディ・異物混入・原料容器・破損・コールドチェーン・温度記録・食中毒・名刺交換・同期・当事者・お疲れさまでした

---

## Bí quyết chương

- HACCP coordinator = 3 ngày × 8h + bài thi cuối 30 câu (đậu 70%), lệ phí ¥60.000-70.000, công ty thường trợ cấp 50% nếu đã có Sekininsha.
- Mẫu xin trợ cấp: nói rõ "đã đậu Sekininsha" → sếp dễ duyệt vì có tiền lệ.
- Khi chưa có 名刺 công ty cấp → đề nghị LINE QR là cách lịch sự, được chấp nhận rộng rãi sau 2020.
- Chia sẻ ケーススタディ thật của công ty mình → giảng viên + 同期 ấn tượng, mở mạng lưới ngành.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 講座 | こうざ | GIẢNG TOẠ | Khoá học, giảng khoá |
| 受ける | うける | THỤ | Tham gia, dự (khoá học) |
| 料金 | りょうきん | LIỆU KIM | Lệ phí |
| 連続 | れんぞく | LIÊN TỤC | Liên tiếp |
| 半分 | はんぶん | BÁN PHÂN | Một nửa |
| 合格者 | ごうかくしゃ | HỢP CÁCH GIẢ | Người đậu |
| 研修費 | けんしゅうひ | NGHIÊN TU PHÍ | Học phí đào tạo |
| 支援 | しえん | CHI VIỆN | Hỗ trợ |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | Đơn xin |
| 研修扱い | けんしゅうあつかい | NGHIÊN TU — | Tính như đi đào tạo |
| 会場 | かいじょう | HỘI TRƯỜNG | Hội trường |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | Phép có lương |
| 有給研修 | ゆうきゅうけんしゅう | HỮU CẤP NGHIÊN TU | Đào tạo có lương |
| 業務 | ぎょうむ | NGHIỆP VỤ | Công việc, nghiệp vụ |
| 手配 | てはい | THỦ PHỐI | Bố trí, đặt giúp |
| 対面 | たいめん | ĐỐI DIỆN | Trực tiếp (gặp mặt) |
| 無沙汰 | ぶさた | VÔ SA THẢI | Lâu không liên lạc |
| 唯一 | ゆいいつ | DUY NHẤT | Duy nhất |
| 外国 | がいこく | NGOẠI QUỐC | Nước ngoài |
| 出身者 | しゅっしんしゃ | XUẤT THÂN GIẢ | Người gốc (xuất thân) |
| 所属 | しょぞく | SỞ THUỘC | Nơi trực thuộc |
| 水産加工 | すいさんかこう | THUỶ SẢN GIA CÔNG | Chế biến hải sản |
| 弁当工場 | べんとうこうじょう | BIỆN ĐƯƠNG CÔNG TRƯỜNG | Nhà máy cơm hộp |
| 参る | まいる | THAM | (khiêm) đến |
| 漢字 | かんじ | HÁN TỰ | Chữ Hán |
| 危害分析 | きがいぶんせき | NGUY HẠI PHÂN TÍCH | Phân tích nguy hại |
| 決定 | けってい | QUYẾT ĐỊNH | Xác định, quyết định |
| 管理基準 | かんりきじゅん | QUẢN LÝ CƠ CHUẨN | Tiêu chuẩn quản lý |
| 是正措置 | ぜせいそち | THỊ CHÍNH THỐ TRÍ | Biện pháp khắc phục |
| 検証 | けんしょう | KIỂM CHỨNG | Kiểm chứng |
| 工程 | こうてい | CÔNG TRÌNH | Công đoạn |
| 概要 | がいよう | KHÁI YẾU | Tổng quan |
| 詳細 | しょうさい | TƯỜNG TẾ | Chi tiết |
| 食堂 | しょくどう | THỰC ĐƯỜNG | Nhà ăn |
| 大量 | たいりょう | ĐẠI LƯỢNG | Lượng lớn |
| 業界 | ぎょうかい | NGHIỆP GIỚI | Ngành (nghề) |
| 規模 | きぼ | QUY MÔ | Quy mô |
| 名刺交換 | めいしこうかん | DANH THÍCH GIAO HOÁN | Trao đổi danh thiếp |
| 支給 | しきゅう | CHI CẤP | Cấp phát |
| 当事者 | とうじしゃ | ĐƯƠNG SỰ GIẢ | Người trong cuộc |
| 意見 | いけん | Ý KIẾN | Ý kiến |
| 事件 | じけん | SỰ KIỆN | Sự cố, sự việc |
| 原料容器 | げんりょうようき | NGUYÊN LIỆU DUNG KHÍ | Hộp đựng nguyên liệu |
| 破損 | はそん | PHÁ TỔN | Hư hỏng, nứt |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |
| 存在 | そんざい | TỒN TẠI | Tồn tại |
| 大事 | だいじ | ĐẠI SỰ | Quan trọng |
| 証拠 | しょうこ | CHỨNG CỨ | Bằng chứng |
| 温度記録 | おんどきろく | ÔN ĐỘ KÝ LỤC | Hồ sơ nhiệt độ |
| 重要 | じゅうよう | TRỌNG YẾU | Quan trọng |
| 採点 | さいてん | THÁI ĐIỂM | Chấm điểm |
| 以来 | いらい | DĨ LAI | Kể từ |
| 同期 | どうき | ĐỒNG KỲ | Đồng kỳ, cùng khoá |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000010, 800000012, NULL, 'markdown_book', 'T10. Khủng hoảng nhiệt độ kho đông sau Tết (お正月明けのトラブル)', '# Sách thực tập sinh thực phẩm · T10. Khủng hoảng nhiệt độ kho đông sau Tết (お正月明けのトラブル)

> **Mục tiêu nhân vật:** Hoa (năm 2, Việt Nam) cùng Mai và Putri (Indonesia) xử lý sự cố nhiệt độ kho đông sau Tết. Học các mẫu hội thoại tiếng Nhật trong nhà máy thực phẩm: **báo cáo sự cố theo 5W1H** (本日10時30分・冷凍庫の温度が…), **mẫu xin lỗi trang trọng** (申し訳ございません・本当に申し訳ございません), **hỏi lại từ chuyên ngành chế biến** (〜というのは?), **phân tích nguyên nhân 5 Why** (なぜ〜?), **đề xuất cải tiến quy trình** (〜を提案します・〜に変更します), và **chúc Tết / chia sẻ văn hoá đa quốc gia** (あけましておめでとう・反省・社内消費).

---

## Bối cảnh

Tháng 1 năm 2028. Hoa đã bước sang năm thứ 2 tại nhà máy thực phẩm đông lạnh ở Aichi, trình độ tiếng Nhật N3. Sau kỳ nghỉ 正月, Putri (Indonesia, cùng ký túc) quên kiểm tra nhiệt độ 冷凍庫 — tụt xuống -25°C trong 1 tiếng. Không tới mức thu hồi, chỉ xử lý nội bộ. Chương này tập trung mẫu câu báo cáo lỗi 報告, mẫu xin lỗi trang trọng trong nhà máy, hỏi lại từ chuyên ngành thực phẩm, và phân tích 5 Why để đề xuất KAIZEN.

---

## Tình huống 1 — Bếp ký túc · 7:30, chào năm mới đa quốc gia

| Vai | Lời thoại |
|---|---|
| Hoa | プトゥリ、あけましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Putri, chúc mừng năm mới. Năm nay cũng mong cậu giúp đỡ.)* |
| Putri | おめでとう、ホアちゃん！<ruby>今年<rt>ことし</rt></ruby>もよろしくね。<br>*(Chúc mừng, Hoa-chan! Năm nay cũng nhờ nhé.)* |
| Mai | <ruby>2<rt>に</rt></ruby><ruby>人<rt>り</rt></ruby>とも、あけましておめでとうございます！<br>*(Hai chị, chúc mừng năm mới!)* |
| Putri | ベトナムの<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>はいつですか？<br>*(Tết âm lịch Việt Nam khi nào?)* |
| Mai | <ruby>来週<rt>らいしゅう</rt></ruby>です。<ruby>旧暦<rt>きゅうれき</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>。<br>*(Tuần sau ạ. Mùng 1 âm lịch.)* |
| Putri | だからホアちゃんもお<ruby>花<rt>はな</rt></ruby>を<ruby>飾<rt>かざ</rt></ruby>っているんですね。これは<ruby>何<rt>なに</rt></ruby>の<ruby>花<rt>はな</rt></ruby>ですか？<br>*(Hèn gì Hoa-chan cũng đang trang trí hoa. Đây là hoa gì vậy?)* |
| Hoa | これは<ruby>桃<rt>もも</rt></ruby>の<ruby>花<rt>はな</rt></ruby>です。ベトナムの<ruby>北<rt>きた</rt></ruby>では<ruby>桃<rt>もも</rt></ruby>が<ruby>正月<rt>しょうがつ</rt></ruby>の<ruby>象徴<rt>しょうちょう</rt></ruby>です。<br>*(Là hoa đào ạ. Ở miền Bắc Việt Nam, đào là biểu tượng của Tết.)* |
| Putri | きれい！<ruby>今日<rt>きょう</rt></ruby>も<ruby>仕事<rt>しごと</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Đẹp quá! Hôm nay cũng cố gắng làm việc nhé.)* |

---

## Tình huống 2 — Nhà máy · 9:00, vào ca dây chuyền đông lạnh, quan sát đồng nghiệp uể oải

| Vai | Lời thoại |
|---|---|
| Putri | （ngáp nhẹ）ふー、まだ<ruby>正月<rt>しょうがつ</rt></ruby><ruby>気分<rt>きぶん</rt></ruby>が<ruby>抜<rt>ぬ</rt></ruby>けないですね。<br>*(Hà, vẫn chưa thoát khỏi không khí Tết.)* |
| Hoa | （đi qua）プトゥリ、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<ruby>顔色<rt>かおいろ</rt></ruby>がよくないですよ。<br>*(Putri, ổn không? Sắc mặt không tốt đâu.)* |
| Putri | ちょっと<ruby>眠<rt>ねむ</rt></ruby>いです。<ruby>昨日<rt>きのう</rt></ruby><ruby>夜更<rt>よふ</rt></ruby>かしして、<ruby>家族<rt>かぞく</rt></ruby>とビデオ<ruby>通話<rt>つうわ</rt></ruby>していました。<br>*(Hơi buồn ngủ. Tối qua thức khuya, video call với gia đình.)* |
| Hoa | <ruby>休憩<rt>きゅうけい</rt></ruby>は<ruby>取<rt>と</rt></ruby>りましたか？<br>*(Đã nghỉ giải lao chưa?)* |
| Putri | まだです。<ruby>10<rt>じゅう</rt></ruby><ruby>分後<rt>ぷんご</rt></ruby>に<ruby>取<rt>と</rt></ruby>ります。<br>*(Chưa. 10 phút nữa em nghỉ.)* |
| Hoa | <ruby>早<rt>はや</rt></ruby>めに<ruby>取<rt>と</rt></ruby>った<ruby>方<rt>ほう</rt></ruby>がいいですよ。<ruby>眠<rt>ねむ</rt></ruby>いまま<ruby>冷凍庫<rt>れいとうこ</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby>を<ruby>触<rt>さわ</rt></ruby>るのは<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Nên nghỉ sớm. Buồn ngủ mà chạm thiết lập kho đông thì nguy hiểm.)* |
| Putri | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em hiểu rồi. Em sẽ cẩn thận.)* |

---

## Tình huống 3 — Bên 冷凍庫 · 10:30, Putri phát hiện nhiệt độ bất thường

| Vai | Lời thoại |
|---|---|
| Putri | （nhìn đồng hồ đo）あ！<ruby>温度<rt>おんど</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がりすぎています！<br>*(Á! Nhiệt độ đang xuống quá!)* |
| Putri | （đọc lại）マイナス<ruby>25<rt>にじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>...<ruby>規定<rt>きてい</rt></ruby>はマイナス<ruby>18<rt>じゅうはち</rt></ruby>からマイナス<ruby>22<rt>にじゅうに</rt></ruby><ruby>度<rt>ど</rt></ruby>のはずです。<br>*(Âm 25 độ... Quy định phải là âm 18 đến âm 22 độ.)* |
| Putri | （check log）<ruby>1<rt>いち</rt></ruby><ruby>時間前<rt>じかんまえ</rt></ruby>からこの<ruby>温度<rt>おんど</rt></ruby>...<ruby>製品<rt>せいひん</rt></ruby>の<ruby>品質<rt>ひんしつ</rt></ruby>はどうなるんでしょう。<br>*(Nhiệt độ này từ 1 tiếng trước... Chất lượng sản phẩm sẽ ra sao đây.)* |
| Putri | （hoảng, gọi Mai）マイちゃん、ちょっと<ruby>来<rt>き</rt></ruby>てくれますか？<ruby>緊急<rt>きんきゅう</rt></ruby>です。<br>*(Mai-chan, đến đây một chút được không? Khẩn cấp.)* |
| Mai | （chạy lại）プトゥリ、どうしたんですか？<br>*(Putri, sao thế?)* |
| Putri | <ruby>冷凍庫<rt>れいとうこ</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>がマイナス<ruby>25<rt>にじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>になっています。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>気<rt>き</rt></ruby>づきませんでした。<br>*(Nhiệt độ kho đông xuống -25 độ. Em không nhận ra trong 1 tiếng.)* |
| Mai | え！？ホア<ruby>姉<rt>ねえ</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>びましょう。<br>*(Hả!? Gọi chị Hoa đi.)* |

---

## Tình huống 4 — Bên 冷凍庫 · 10:35, Hoa hướng dẫn xử lý ban đầu (quan sát đàn chị)

| Vai | Lời thoại |
|---|---|
| Mai | ホア<ruby>姉<rt>ねえ</rt></ruby>さん！プトゥリが<ruby>冷凍庫<rt>れいとうこ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>緊急<rt>きんきゅう</rt></ruby>です。<br>*(Chị Hoa! Putri có chuyện khẩn về kho đông.)* |
| Hoa | （chạy lại, nhìn màn hình）<ruby>温度<rt>おんど</rt></ruby>はマイナス<ruby>25<rt>にじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ですね。まず<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてください、プトゥリ。<br>*(Nhiệt độ -25 độ, 1 tiếng đúng không. Trước hết bình tĩnh đã, Putri.)* |
| Putri | はい...<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Vâng... Em xin lỗi.)* |
| Hoa | <ruby>謝<rt>あやま</rt></ruby>るのは<ruby>後<rt>あと</rt></ruby>で。<ruby>今<rt>いま</rt></ruby>はまず<ruby>製品<rt>せいひん</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けます。<ruby>1<rt>いち</rt></ruby><ruby>時間以内<rt>じかんいない</rt></ruby>に<ruby>入<rt>はい</rt></ruby>った<ruby>商品<rt>しょうひん</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>のラックに<ruby>移<rt>うつ</rt></ruby>してください。<br>*(Xin lỗi tính sau. Giờ tách sản phẩm trước. Hàng vào trong 1 tiếng vừa rồi chuyển sang giá khác.)* |
| Putri | <ruby>分<rt>わ</rt></ruby>かりました。マイナス<ruby>25<rt>にじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>でも<ruby>品質<rt>ひんしつ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Em rõ. Ở -25 độ thì chất lượng vẫn ổn ạ?)* |
| Hoa | <ruby>大<rt>おお</rt></ruby>きく<ruby>変<rt>か</rt></ruby>わることはありません。でも<ruby>規定<rt>きてい</rt></ruby><ruby>外<rt>がい</rt></ruby>なので、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>報連相<rt>ほうれんそう</rt></ruby>ですね。<br>*(Sẽ không đổi nhiều. Nhưng ngoài quy định nên phải báo cáo. Là 報連相 đấy.)* |
| Putri | はい。<ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>すればいいですか？<br>*(Vâng. Em báo cáo trưởng phòng Tanaka phải không ạ?)* |
| Hoa | そうです。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Đúng. Cùng đi nào.)* |

---

## Tình huống 5 — Phòng nghỉ · 10:50, luyện mẫu câu xin lỗi trang trọng (hỏi lại đàn chị)

| Vai | Lời thoại |
|---|---|
| Putri | ホアちゃん、すみません、<ruby>正<rt>ただ</rt></ruby>しい<ruby>謝<rt>あやま</rt></ruby>り<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<ruby>緊張<rt>きんちょう</rt></ruby>すると<ruby>忘<rt>わす</rt></ruby>れます。<br>*(Hoa-chan, em xin lỗi, chỉ em cách xin lỗi đúng với. Cứ căng thẳng là em quên.)* |
| Hoa | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。フォーマルな<ruby>謝<rt>あやま</rt></ruby>り<ruby>方<rt>かた</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>軽<rt>かる</rt></ruby>い<ruby>順<rt>じゅん</rt></ruby>に「すみません」「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません」「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」です。<br>*(Không sao. Cách xin lỗi trang trọng có ba mẫu. Từ nhẹ đến nặng: sumimasen, moushiwake arimasen, moushiwake gozaimasen.)* |
| Putri | <ruby>今日<rt>きょう</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>はどれですか？<br>*(Trường hợp hôm nay là cái nào?)* |
| Hoa | <ruby>業務上<rt>ぎょうむじょう</rt></ruby>のミスなので「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」が<ruby>正<rt>ただ</rt></ruby>しいです。<ruby>強調<rt>きょうちょう</rt></ruby>するときは「<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」。<br>*(Lỗi nghiệp vụ nên dùng "moushiwake gozaimasen" là đúng. Khi nhấn mạnh thì "hontou ni moushiwake gozaimasen".)* |
| Putri | むずかしい...インドネシアでは「Mohon maaf yang sebesar-besarnya」と<ruby>言<rt>い</rt></ruby>います。<ruby>長<rt>なが</rt></ruby>いですよね。<br>*(Khó quá... Ở Indonesia nói "Mohon maaf yang sebesar-besarnya". Dài lắm.)* |
| Mai | ベトナム<ruby>語<rt>ご</rt></ruby>でも「<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません」と<ruby>同<rt>おな</rt></ruby>じくらい<ruby>長<rt>なが</rt></ruby>いです。<br>*(Tiếng Việt cũng dài tương đương "thực sự xin lỗi" ạ.)* |
| Hoa | <ruby>報告<rt>ほうこく</rt></ruby>するときの<ruby>順番<rt>じゅんばん</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>5W1H<rt>ごダブリューいちエイチ</rt></ruby>—いつ、どこで、<ruby>何<rt>なに</rt></ruby>が、なぜ、どうしたか。<br>*(Thứ tự khi báo cáo cũng quan trọng. 5W1H — khi nào, ở đâu, cái gì, tại sao, đã làm gì.)* |
| Putri | はい、<ruby>練習<rt>れんしゅう</rt></ruby>します。「<ruby>本日<rt>ほんじつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>冷凍庫<rt>れいとうこ</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>がマイナス<ruby>25<rt>にじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>になっていることに<ruby>気<rt>き</rt></ruby>づきました」。<br>*(Vâng, em luyện. "Hôm nay 10h30, em nhận ra nhiệt độ kho đông xuống -25 độ".)* |
| Hoa | いい<ruby>感<rt>かん</rt></ruby>じ。その<ruby>後<rt>あと</rt></ruby>に「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」を<ruby>付<rt>つ</rt></ruby>けてください。<br>*(Cảm giác tốt. Sau đó gắn thêm "moushiwake gozaimasen" nhé.)* |

---

## Tình huống 6 — Phòng 田中部長 · 11:00, báo cáo sự cố

| Vai | Lời thoại |
|---|---|
| Putri | （gõ cửa）<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |
| Tanaka | プトゥリさん、ホアさん、どうしましたか？<br>*(Putri-san, Hoa-san, có chuyện gì?)* |
| Putri | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>第二<rt>だいに</rt></ruby><ruby>冷凍庫<rt>れいとうこ</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>がマイナス<ruby>25<rt>にじゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>になっていることに<ruby>気<rt>き</rt></ruby>づきました。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>気<rt>き</rt></ruby>づかず、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Hôm nay 10h30, em nhận ra nhiệt độ kho đông số 2 xuống -25 độ. 1 tiếng không nhận ra, em thực sự xin lỗi.)* |
| Tanaka | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Nguyên nhân là gì?)* |
| Putri | <ruby>朝<rt>あさ</rt></ruby><ruby>設定<rt>せってい</rt></ruby>を<ruby>変<rt>か</rt></ruby>えたときに、ボタンを<ruby>押<rt>お</rt></ruby>し<ruby>間違<rt>まちが</rt></ruby>えたと<ruby>思<rt>おも</rt></ruby>います。<br>*(Sáng khi đổi thiết lập, em nghĩ em đã bấm nhầm nút.)* |
| Tanaka | <ruby>影響<rt>えいきょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けた<ruby>製品<rt>せいひん</rt></ruby>は？<br>*(Sản phẩm bị ảnh hưởng?)* |
| Hoa | <ruby>500<rt>ごひゃっ</rt></ruby><ruby>個<rt>こ</rt></ruby>です。<ruby>別<rt>べつ</rt></ruby>のラックに<ruby>分<rt>わ</rt></ruby>けて<ruby>保管<rt>ほかん</rt></ruby>しております。<br>*(500 cái ạ. Đã tách giữ ở giá riêng.)* |
| Tanaka | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>高橋<rt>たかはし</rt></ruby>QCを<ruby>呼<rt>よ</rt></ruby>んで<ruby>影響<rt>えいきょう</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>をします。プトゥリさん、<ruby>気<rt>き</rt></ruby>づいてすぐ<ruby>報告<rt>ほうこく</rt></ruby>したのは<ruby>正<rt>ただ</rt></ruby>しい<ruby>行動<rt>こうどう</rt></ruby>です。<br>*(Rõ. Gọi Takahashi QC điều tra ảnh hưởng. Putri-san, phát hiện và báo ngay là hành động đúng.)* |
| Putri | ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<br>*(Em cảm ơn ạ. Em thực sự xin lỗi.)* |

---

## Tình huống 7 — Bên ラック cách ly · 11:20, Takahashi QC kiểm tra

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>500<rt>ごひゃっ</rt></ruby><ruby>個<rt>こ</rt></ruby>の<ruby>製品<rt>せいひん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Đã kiểm 500 cái sản phẩm.)* |
| Tanaka | <ruby>結果<rt>けっか</rt></ruby>はどうですか？<br>*(Kết quả thế nào?)* |
| Takahashi | <ruby>外観<rt>がいかん</rt></ruby>は<ruby>変化<rt>へんか</rt></ruby>なし、<ruby>食感<rt>しょっかん</rt></ruby>も<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Bề ngoài không đổi, kết cấu cũng không vấn đề.)* |
| Putri | すみません、「<ruby>食感<rt>しょっかん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Em xin lỗi, "shokkan" nghĩa là gì ạ?)* |
| Takahashi | <ruby>食<rt>た</rt></ruby>べたときの<ruby>口<rt>くち</rt></ruby>の<ruby>中<rt>なか</rt></ruby>の<ruby>感<rt>かん</rt></ruby>じです。<ruby>柔<rt>やわ</rt></ruby>らかさ、<ruby>歯<rt>は</rt></ruby><ruby>触<rt>ざわ</rt></ruby>りなど。<br>*(Cảm giác trong miệng khi ăn. Độ mềm, độ giòn các thứ.)* |
| Putri | なるほど、テクスチャーということですね。<br>*(Ra vậy, là kết cấu ạ.)* |
| Tanaka | <ruby>出荷<rt>しゅっか</rt></ruby>できますか？<br>*(Xuất hàng được không?)* |
| Takahashi | <ruby>技術的<rt>ぎじゅつてき</rt></ruby>には<ruby>可能<rt>かのう</rt></ruby>ですが、<ruby>念<rt>ねん</rt></ruby>のため<ruby>社内消費<rt>しゃないしょうひ</rt></ruby>への<ruby>変更<rt>へんこう</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Về kỹ thuật thì được, nhưng để chắc em đề xuất chuyển sang tiêu thụ nội bộ.)* |
| Tanaka | OKです。<ruby>500<rt>ごひゃっ</rt></ruby><ruby>個<rt>こ</rt></ruby>すべて<ruby>社内<rt>しゃない</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>します。<br>*(OK. 500 cái chuyển hết sang nhà ăn nội bộ.)* |
| Putri | <ruby>廃棄<rt>はいき</rt></ruby>にはならないんですか？<br>*(Không phải tiêu hủy ạ?)* |
| Tanaka | <ruby>食<rt>た</rt></ruby>べられるものを<ruby>捨<rt>す</rt></ruby>てるのはもったいないです。これも<ruby>食品<rt>しょくひん</rt></ruby>ロス<ruby>削減<rt>さくげん</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つです。<br>*(Vứt cái còn ăn được thì phí. Đây cũng là một cách giảm thất thoát thực phẩm.)* |
| Putri | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>ですね。<br>*(Cách nghĩ tuyệt vời quá.)* |

---

## Tình huống 8 — Phòng họp QC · 11:40, 5 Why phân tích nguyên nhân

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>原因<rt>げんいん</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>のために<ruby>5<rt>ご</rt></ruby>Whyをやります。Q1：なぜ<ruby>温度<rt>おんど</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がりすぎましたか？<br>*(Để phân tích nguyên nhân, ta làm 5 Why. Q1: Tại sao nhiệt độ xuống quá?)* |
| Putri | <ruby>設定値<rt>せっていち</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えました。<br>*(Em đã set sai giá trị.)* |
| Takahashi | Q2：なぜ<ruby>間違<rt>まちが</rt></ruby>えましたか？<br>*(Q2: Tại sao set sai?)* |
| Putri | <ruby>朝<rt>あさ</rt></ruby>、<ruby>眠<rt>ねむ</rt></ruby>くて<ruby>集中<rt>しゅうちゅう</rt></ruby>できませんでした。<br>*(Sáng, buồn ngủ không tập trung được.)* |
| Takahashi | Q3：なぜ<ruby>眠<rt>ねむ</rt></ruby>かったんですか？<br>*(Q3: Tại sao buồn ngủ?)* |
| Putri | <ruby>正月<rt>しょうがつ</rt></ruby><ruby>明<rt>あ</rt></ruby>けで<ruby>体<rt>からだ</rt></ruby>がまだ<ruby>休<rt>やす</rt></ruby>みモードでした。<br>*(Sau Tết, cơ thể vẫn ở chế độ nghỉ.)* |
| Takahashi | Q4：なぜ<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>気<rt>き</rt></ruby>づきませんでしたか？<br>*(Q4: Tại sao 1 tiếng không phát hiện?)* |
| Putri | <ruby>確認<rt>かくにん</rt></ruby>の<ruby>頻度<rt>ひんど</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>かったです。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>でした。<br>*(Tần suất kiểm tra thấp. 1 tiếng 1 lần.)* |
| Takahashi | Q5：なぜ<ruby>頻度<rt>ひんど</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いんですか？<br>*(Q5: Tại sao tần suất thấp?)* |
| Putri | <ruby>規定<rt>きてい</rt></ruby>でそう<ruby>決<rt>き</rt></ruby>まっています。<ruby>正月<rt>しょうがつ</rt></ruby><ruby>明<rt>あ</rt></ruby>けの<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>規定<rt>きてい</rt></ruby>はありません。<br>*(Quy định quy vậy. Không có quy định đặc biệt cho sau Tết.)* |
| Takahashi | <ruby>結論<rt>けつろん</rt></ruby>：<ruby>規定<rt>きてい</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>と<ruby>自動<rt>じどう</rt></ruby>アラームの<ruby>導入<rt>どうにゅう</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Kết luận: đề xuất đổi quy định và đưa vào alarm tự động.)* |
| Hoa | <ruby>正月<rt>しょうがつ</rt></ruby><ruby>明<rt>あ</rt></ruby>けの<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げるのはどうですか？<br>*(Sau Tết 2 tuần tăng tần suất kiểm tra thì sao?)* |
| Takahashi | いいアイデアですね。チェックリストに<ruby>反映<rt>はんえい</rt></ruby>しましょう。<br>*(Ý hay đấy. Đưa vào bảng kiểm nhé.)* |

---

## Tình huống 9 — 食堂 · 12:30, ba cô gái ăn cơm, so sánh văn hoá xin lỗi

| Vai | Lời thoại |
|---|---|
| Putri | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>とも、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Hai chị em, thực sự cảm ơn.)* |
| Hoa | こちらこそ。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em cũng vậy. Học được nhiều.)* |
| Putri | インドネシアの<ruby>工場<rt>こうじょう</rt></ruby>だったら、もっと<ruby>厳<rt>きび</rt></ruby>しく<ruby>怒<rt>おこ</rt></ruby>られていたと<ruby>思<rt>おも</rt></ruby>います。<br>*(Nếu ở nhà máy Indonesia, em nghĩ sẽ bị mắng nặng hơn nhiều.)* |
| Mai | ベトナムも<ruby>同<rt>おな</rt></ruby>じです。<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>かれることもあります。<br>*(Việt Nam cũng vậy. Có khi còn trừ lương.)* |
| Putri | <ruby>日本<rt>にほん</rt></ruby>の「<ruby>反省<rt>はんせい</rt></ruby>」<ruby>文化<rt>ぶんか</rt></ruby>はすごいと<ruby>思<rt>おも</rt></ruby>います。<ruby>失敗<rt>しっぱい</rt></ruby>もKAIZENに<ruby>変<rt>か</rt></ruby>えますね。<br>*(Văn hoá "phản tỉnh" của Nhật tuyệt vời. Cả thất bại cũng biến thành KAIZEN.)* |
| Hoa | すみません、「<ruby>反省<rt>はんせい</rt></ruby>」というのは<ruby>恥<rt>は</rt></ruby>ずかしくない<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Em hỏi lại, "hansei" có nghĩa là không xấu hổ ạ?)* |
| Putri | <ruby>恥<rt>は</rt></ruby>ずかしいけれど、<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>過程<rt>かてい</rt></ruby>です。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>して、みんなで<ruby>学<rt>まな</rt></ruby>ぶことです。<br>*(Xấu hổ nhưng là quá trình quan trọng. Chia sẻ thất bại để mọi người cùng học.)* |
| Mai | <ruby>3<rt>さん</rt></ruby><ruby>か国<rt>かこく</rt></ruby>、<ruby>3<rt>みっ</rt></ruby>つの<ruby>謝<rt>あやま</rt></ruby>り<ruby>方<rt>かた</rt></ruby>。<ruby>同<rt>おな</rt></ruby>じ<ruby>気持<rt>きも</rt></ruby>ち、<ruby>違<rt>ちが</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>ですね。<br>*(3 nước, 3 cách xin lỗi. Cùng tâm trạng, khác lời.)* |

---

## Tình huống 10 — Bàn làm việc · 15:00, Hoa + Putri làm bảng kiểm KAIZEN

| Vai | Lời thoại |
|---|---|
| Hoa | プトゥリ、<ruby>新<rt>あたら</rt></ruby>しいチェックリストを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りませんか？<br>*(Putri, làm bảng kiểm mới cùng nhé?)* |
| Putri | はい、ぜひ。<br>*(Vâng, em rất muốn.)* |
| Hoa | まず<ruby>正月<rt>しょうがつ</rt></ruby><ruby>明<rt>あ</rt></ruby>けの<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は、<ruby>温度<rt>おんど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>します。<br>*(Trước hết, 2 tuần sau Tết, đổi check nhiệt độ thành 30 phút/lần.)* |
| Putri | <ruby>通常時<rt>つうじょうじ</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>のままですね。<br>*(Bình thường giữ 1 tiếng/lần đúng không?)* |
| Hoa | そうです。それから、<ruby>設定<rt>せってい</rt></ruby><ruby>変更時<rt>へんこうじ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>二<rt>ふた</rt></ruby>り<ruby>確認<rt>かくにん</rt></ruby>—ダブルチェックを<ruby>入<rt>い</rt></ruby>れましょう。<br>*(Đúng. Còn nữa, khi đổi thiết lập bắt buộc 2 người xác nhận — đưa kiểm tra kép vào.)* |
| Putri | <ruby>記録表<rt>きろくひょう</rt></ruby>のフォーマットも<ruby>変<rt>か</rt></ruby>えますか？<br>*(Đổi cả định dạng bảng ghi luôn ạ?)* |
| Hoa | はい。<ruby>確認者<rt>かくにんしゃ</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つに<ruby>増<rt>ふ</rt></ruby>やします。<br>*(Vâng. Tăng ô người xác nhận lên 2 ô.)* |
| Putri | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>明日<rt>あした</rt></ruby><ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>に<ruby>提案<rt>ていあん</rt></ruby>しましょう。<br>*(Hoàn hảo. Mai đề xuất trưởng phòng Tanaka nhé.)* |
| Hoa | <ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>で<ruby>提案<rt>ていあん</rt></ruby>しますね。<br>*(Đề xuất dưới tên của hai chị em nhé.)* |

---

## Tình huống 11 — Ký túc · 21:00, gọi điện về cho chị Linh (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật. Hoa video call với chị Linh ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Chị Linh ơi, hôm nay em gặp chuyện căng. Putri — bạn Indonesia cùng ký túc — quên kiểm tra nhiệt độ kho đông, tụt xuống -25 độ suốt 1 tiếng. |
| Linh | (tiếng Việt) Trời, có sao không? Hỏng lô hàng à? |
| Hoa | (tiếng Việt) Không hỏng. Anh Takahashi QC kiểm tra, 食感 với 外観 vẫn ổn. Cuối cùng trưởng phòng Tanaka chuyển 500 cái sang 食堂 nội bộ, không tiêu hủy. |
| Linh | (tiếng Việt) Hay ghê. Bên Việt mình chắc trừ lương Putri rồi. |
| Hoa | (tiếng Việt) Putri cũng nói y như chị. Em phải dạy cô ấy mẫu "本当に申し訳ございません" và cách báo cáo 5W1H — hôm nay tiếng Nhật N3 của em mới có chỗ dùng. |
| Linh | (tiếng Việt) Em giờ đàn chị rồi đấy. Còn vụ phân tích nguyên nhân thế nào? |
| Hoa | (tiếng Việt) Bọn em làm 5 Why với anh Takahashi. Hỏi "なぜ?" 5 lần liên tục, càng hỏi càng ra gốc — té ra là quy định không có riêng cho sau Tết. Em với Putri tự làm bảng kiểm mới: 30 phút/lần trong 2 tuần đầu năm, thêm kiểm tra kép khi đổi thiết lập. |
| Linh | (tiếng Việt) Giỏi! Mai đề xuất sếp nhé. Tháng 3 chị qua thăm, chị đãi 3 đứa bún bò. |
| Hoa | (tiếng Việt) Dạ chị! Em chuyển lời cho Putri với Mai. |

---

## Tình huống 12 — Bếp ký túc · 22:00, 3 cô gái nấu nasi goreng

| Vai | Lời thoại |
|---|---|
| Putri | <ruby>今夜<rt>こんや</rt></ruby>はナシゴレンを<ruby>作<rt>つく</rt></ruby>ります。インドネシア<ruby>風<rt>ふう</rt></ruby>の<ruby>炒飯<rt>チャーハン</rt></ruby>です。<br>*(Tối nay em làm nasi goreng. Cơm rang phong cách Indonesia.)* |
| Mai | わー、おいしそう！<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちですね。<br>*(Wow, ngon quá! Tâm tình cảm ơn nhỉ.)* |
| Putri | はい。<ruby>今日<rt>きょう</rt></ruby>、<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>がいなかったら<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>でした。<br>*(Vâng. Hôm nay nếu không có hai chị em thì thật sự nguy.)* |
| Hoa | <ruby>来週<rt>らいしゅう</rt></ruby>はベトナムの<ruby>旧正月<rt>きゅうしょうがつ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>と<ruby>妹<rt>いもうと</rt></ruby>で<ruby>春巻<rt>はるま</rt></ruby>きを<ruby>作<rt>つく</rt></ruby>りますね。<br>*(Tuần sau là Tết Việt. Chị em mình làm nem rán nhé.)* |
| Putri | <ruby>楽<rt>たの</rt></ruby>しみ！<ruby>3<rt>さん</rt></ruby><ruby>か国<rt>かこく</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>、<ruby>幸<rt>しあわ</rt></ruby>せです。<br>*(Mong chờ quá! 3 nước, cùng ký túc, hạnh phúc.)* |
| Mai | <ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>、ホア<ruby>姉<rt>ねえ</rt></ruby>さんのリン<ruby>姉<rt>ねえ</rt></ruby>さんがベトナムから<ruby>来<rt>き</rt></ruby>ます！<br>*(Tháng 3, chị Linh của chị Hoa sẽ qua từ Việt Nam!)* |
| Putri | <ruby>本当<rt>ほんとう</rt></ruby>？<ruby>会<rt>あ</rt></ruby>えるの<ruby>楽<rt>たの</rt></ruby>しみ！<br>*(Thật ạ? Mong gặp lắm!)* |
| Hoa | <ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まった<ruby>日<rt>ひ</rt></ruby>でしたが、<ruby>最後<rt>さいご</rt></ruby>はいい<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>になりました。<br>*(Ngày bắt đầu từ thất bại, nhưng kết thúc là một ngày đẹp.)* |

---

## Đọng lại chương 10

Hoa và Putri trải qua một ngày khủng hoảng nhẹ đầu năm mới: nhiệt độ **冷凍庫** tụt xuống -25°C trong 1 tiếng, 500 cái sản phẩm bị ảnh hưởng. Hoa làm đàn chị dẫn Putri qua chuỗi kỹ năng nghề: **báo cáo 5W1H** (本日10時30分・冷凍庫の温度が…・申し訳ございません), **bậc thang xin lỗi trang trọng** (すみません → 申し訳ありません → 申し訳ございません → 本当に申し訳ございません), **hỏi lại từ chuyên ngành** (「食感」というのは?), **5 Why** (なぜ→なぜ→なぜ) để truy nguyên nhân gốc, rồi **đề xuất KAIZEN** (確認頻度を上げる・ダブルチェック・自動アラーム). Cùng đó là khái niệm **社内消費** — chuyển hàng không đạt sang **食堂** nội bộ thay vì **廃棄**, giảm **食品ロス**. Một sự cố nhỏ đã hé ra triết lý nghề thực phẩm Nhật: lỗi không phải để mắng, mà để **共有** và **反省** — biến thành tiêu chuẩn mới cho cả nhóm đa quốc gia.

> Từ vựng & mẫu câu chương này: 正月明け・冷凍庫・温度・規定・設定・申し訳ございません・本当に申し訳ございません・報連相・報告・5W1H・食感・外観・社内消費・廃棄・食品ロス・反省・共有・5Why・なぜ〜?・〜というのは?・〜を提案します・〜に変更します・ダブルチェック・自動アラーム・確認頻度・KAIZEN

## Bí quyết chương

- **正月明け** = thời điểm dễ mắc lỗi vì cơ thể vẫn ở chế độ nghỉ — cần KAIZEN tần suất kiểm tra.
- **Chuỗi lạnh đứt 1h** ở -25°C: chưa chắc phải tiêu hủy, có thể chuyển 社内消費.
- **Bậc thang xin lỗi trang trọng**: sumimasen → moushiwake arimasen → moushiwake gozaimasen → hontou ni moushiwake gozaimasen.
- **5 Why**: hỏi "なぜ?" liên tục 5 lần để chạm gốc nguyên nhân, không dừng ở triệu chứng.
- **3 quốc tịch trong ký túc** = 3 cách xin lỗi (VN dài, Indo dài, Nhật ngắn nhưng trang trọng hơn) — gắn kết qua nấu ăn.

> *"5/1/2028. Nhiệt độ -25, Putri suýt khóc. Em làm đàn chị, dạy lại 報連相 và 5W1H mà sempai Linh từng dạy em. Vòng tròn đàn chị → đàn em khép lại."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 今年 | ことし | KIM NIÊN | Năm nay |
| 旧正月 | きゅうしょうがつ | CỰU CHÍNH NGUYỆT | Tết âm lịch |
| 旧暦 | きゅうれき | CỰU LỊCH | Lịch âm |
| 花 | はな | HOA | Hoa |
| 飾る | かざる | SỨC | Trang trí |
| 桃 | もも | ĐÀO | Đào |
| 正月 | しょうがつ | CHÍNH NGUYỆT | Tết |
| 象徴 | しょうちょう | TƯỢNG TRƯNG | Biểu tượng |
| 気分 | きぶん | KHÍ PHÂN | Tâm trạng, không khí |
| 抜ける | ぬける | BẠT | Thoát ra |
| 顔色 | かおいろ | NHAN SẮC | Sắc mặt |
| 眠い | ねむい | MIÊN | Buồn ngủ |
| 夜更かし | よふかし | DẠ CANH | Thức khuya |
| 通話 | つうわ | THÔNG THOẠI | Cuộc gọi |
| 冷凍庫 | れいとうこ | LÃNH ĐÔNG KHỐ | Kho đông |
| 設定 | せってい | THIẾT ĐỊNH | Thiết lập |
| 触る | さわる | XÚC | Chạm |
| 危ない | あぶない | NGUY | Nguy hiểm |
| 温度 | おんど | ÔN ĐỘ | Nhiệt độ |
| 規定 | きてい | QUY ĐỊNH | Quy định |
| 時間前 | じかんまえ | THỜI GIAN TIỀN | (trước ... tiếng) |
| 品質 | ひんしつ | PHẨM CHẤT | Chất lượng |
| 緊急 | きんきゅう | KHẨN CẤP | Khẩn cấp |
| 件 | けん | KIỆN | Việc, vụ |
| 落ち着く | おちつく | LẠC TRƯỚC | Bình tĩnh |
| 移す | うつす | DI | Chuyển |
| 規定外 | きていがい | QUY ĐỊNH NGOẠI | Ngoài quy định |
| 一緒 | いっしょ | NHẤT TỰ | Cùng nhau |
| 謝り方 | あやまりかた | TẠ PHƯƠNG | Cách xin lỗi |
| 申し訳ありません | もうしわけありません | THÂN DỊCH | Xin lỗi (trang trọng) |
| 場合 | ばあい | TRƯỜNG HỢP | Trường hợp |
| 業務上 | ぎょうむじょう | NGHIỆP VỤ THƯỢNG | Trên (về) nghiệp vụ |
| 強調 | きょうちょう | CƯỜNG ĐIỆU | Nhấn mạnh |
| 第二 | だいに | ĐỆ NHỊ | Số hai |
| 押し間違える | おしまちがえる | ÁP GIAN VI | Bấm nhầm |
| 保管 | ほかん | BẢO QUẢN | Bảo quản |
| 調査 | ちょうさ | ĐIỀU TRA | Điều tra |
| 行動 | こうどう | HÀNH ĐỘNG | Hành động |
| 外観 | がいかん | NGOẠI QUAN | Bề ngoài |
| 変化 | へんか | BIẾN HOÁ | Thay đổi |
| 食感 | しょっかん | THỰC CẢM | Kết cấu (khi ăn) |
| 歯触り | はざわり | XỈ XÚC | Độ giòn |
| 出荷 | しゅっか | XUẤT HÀ | Xuất hàng |
| 技術的 | ぎじゅつてき | KỸ THUẬT ĐÍCH | Về mặt kỹ thuật |
| 可能 | かのう | KHẢ NĂNG | Có thể |
| 念のため | ねんのため | NIỆM | Để chắc |
| 社内消費 | しゃないしょうひ | XÃ NỘI TIÊU PHÍ | Tiêu thụ nội bộ |
| 変更 | へんこう | BIẾN CANH | Thay đổi |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 廃棄 | はいき | PHẾ KHÍ | Tiêu hủy |
| 食品ロス | しょくひんロス | THỰC PHẨM | Thất thoát thực phẩm |
| 削減 | さくげん | TƯỚC GIẢM | Giảm bớt |
| 設定値 | せっていち | THIẾT ĐỊNH TRỊ | Giá trị thiết lập |
| 集中 | しゅうちゅう | TẬP TRUNG | Tập trung |
| 体 | からだ | THỂ | Cơ thể |
| 自動 | じどう | TỰ ĐỘNG | Tự động |
| 反映 | はんえい | PHẢN ÁNH | Phản ánh, đưa vào |
| 怒る | おこる | NỘ | Nổi giận, mắng |
| 引く | ひく | DẪN | Trừ |
| 恥ずかしい | はずかしい | SỈ | Xấu hổ |
| 過程 | かてい | QUÁ TRÌNH | Quá trình |
| 言葉 | ことば | NGÔN DIỆP | Lời, ngôn ngữ |
| 通常時 | つうじょうじ | THÔNG THƯỜNG THỜI | Lúc bình thường |
| 変更時 | へんこうじ | BIẾN CANH THỜI | Khi thay đổi |
| 確認者 | かくにんしゃ | XÁC NHẬN GIẢ | Người xác nhận |
| 寮 | りょう | LIÊU | Ký túc |
| 幸せ | しあわせ | HẠNH | Hạnh phúc |
| 最後 | さいご | TỐI HẬU | Cuối cùng |
| 妹 | いもうと | MUỘI | Em gái |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000011, 800000012, NULL, 'markdown_book', 'T11. Đỗ HACCP và bàn lộ trình Tokutei (HACCP合格・特定技能への道)', '# Sách thực tập sinh thực phẩm · T11. Đỗ HACCP và bàn lộ trình Tokutei (HACCP合格・特定技能への道)

> **Mục tiêu nhân vật:** Hoa (23 tuổi, quê Hà Nội, đang TTS năm 2 tại nhà máy thực phẩm Aichi) nhận chứng chỉ **HACCPコーディネーター** và lên phòng anh Suzuki bàn lộ trình chuyển 特定技能. Học các mẫu hội thoại tiếng Nhật chuyên ngành về visa và sự nghiệp dài hạn: báo tin vui khoe đồng nghiệp (**届きました・合格しました**), hỏi lại lễ phép khi chưa hiểu thuật ngữ visa (**〜というのは何ですか**), xác nhận lộ trình bằng câu chốt (**〜ということですね**), nghe cấp trên giải thích quy trình **特定技能1号・2号・育成就労**, đặt câu hỏi về **試験免除・永住権・家族帯同**, và quan sát đàn anh chia sẻ kinh nghiệm SSW qua tin nhắn.

---

## Bối cảnh

Tháng 2 năm 2028. Hoa đang TTS năm 2 tại nhà máy chế biến thực phẩm ở Aichi, trình độ tiếng Nhật N4 vững. Chứng chỉ **HACCPコーディネーター** Hoa thi đầu năm vừa gửi về ký túc. Anh Suzuki (主任 — chủ nhiệm thực tập) gọi Hoa lên văn phòng để bàn lộ trình sau khi hết hợp đồng TTS (4/2029). Chương này tập trung các mẫu câu **báo tin vui, hỏi đáp về tư cách lưu trú và visa dài hạn** — từ vựng nặng nhưng cấu trúc câu hội thoại rõ ràng, lặp lại để học sinh nắm chắc.

---

## Tình huống 1 — Sảnh ký túc · 8:30, học cách báo tin vui khi nhận thư

| Vai | Lời thoại |
|---|---|
| Hoa | (mở phong bì bưu điện, reo nhỏ) わー、<ruby>届<rt>とど</rt></ruby>きました!<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>認定証<rt>にんていしょう</rt></ruby>です。<br>*(Wow, đến rồi! Chứng nhận thật đây này.)* |
| Hoa | (đọc to) 「HACCPコーディネーター<ruby>認定証<rt>にんていしょう</rt></ruby>。<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>2031<rt>にせんさんじゅういち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>まで」。<br>*(Chứng nhận HACCP Coordinator. Hiệu lực 3 năm, đến tháng 2 năm 2031.)* |
| Hoa | (lẩm bẩm tự xác nhận) <ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>更新<rt>こうしん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ということですね。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Tức là 3 năm sau phải gia hạn nhỉ. Mình ghi nhớ.)* |
| Hoa | マイさんに<ruby>見<rt>み</rt></ruby>せに<ruby>行<rt>い</rt></ruby>こう。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>した<ruby>仲間<rt>なかま</rt></ruby>だから。<br>*(Mình đi khoe Mai nào. Bạn đã học cùng mà.)* |

---

## Tình huống 2 — Phòng bếp chung ký túc · 9:00, khoe đồng hương + ôn từ vựng chứng chỉ

| Vai | Lời thoại |
|---|---|
| Hoa | マイさん、<ruby>見<rt>み</rt></ruby>て<ruby>見<rt>み</rt></ruby>て!HACCPの<ruby>認定証<rt>にんていしょう</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きました。<br>*(Mai-san, xem này xem này! Chứng nhận HACCP đến rồi.)* |
| Mai | わー、ホア<ruby>姉<rt>ねえ</rt></ruby>さん、おめでとうございます!きれいな<ruby>認定証<rt>にんていしょう</rt></ruby>ですね。<br>*(Wow, chị Hoa, chúc mừng! Chứng nhận đẹp ghê.)* |
| Hoa | ありがとう。<ruby>食品<rt>しょくひん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>の<ruby>証書<rt>しょうしょ</rt></ruby>と<ruby>並<rt>なら</rt></ruby>べて<ruby>飾<rt>かざ</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>います。<br>*(Cảm ơn. Mình định treo cạnh chứng chỉ Người chịu trách nhiệm vệ sinh thực phẩm luôn.)* |
| Mai | <ruby>2<rt>ふた</rt></ruby>つ<ruby>並<rt>なら</rt></ruby>べたらかっこいいですね!<ruby>来年<rt>らいねん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>取<rt>と</rt></ruby>りますか?<br>*(Treo hai cái cạnh nhau ngầu nhỉ! Năm sau chị định lấy thêm gì?)* |
| Hoa | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>にN3を<ruby>受<rt>う</rt></ruby>けます。それから<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Tháng 12 mình thi N3. Sau đó đang tính cả nộp đơn Tokutei 1号 nữa.)* |
| Mai | わー、<ruby>4<rt>よっ</rt></ruby>つに<ruby>増<rt>ふ</rt></ruby>えますね。<br>*(Ơ, vậy thành 4 cái rồi!)* |
| Hoa | <ruby>計画<rt>けいかく</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>進<rt>すす</rt></ruby>めばですね。<ruby>午後<rt>ごご</rt></ruby>、<ruby>鈴木<rt>すずき</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>と<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をします。<br>*(Nếu theo đúng kế hoạch thôi. Chiều nay mình lên gặp chủ nhiệm Suzuki bàn về tương lai.)* |

---

## Tình huống 3 — Văn phòng anh Suzuki · 14:00, chúc mừng và mở đầu bàn lộ trình

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、HACCPの<ruby>合格<rt>ごうかく</rt></ruby>、おめでとうございます。<br>*(Hoa-san, chúc mừng đã đỗ HACCP.)* |
| Hoa | (cúi đầu) ありがとうございます。<ruby>鈴木<rt>すずき</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>応援<rt>おうえん</rt></ruby>のおかげです。<br>*(Em cảm ơn anh. Nhờ chủ nhiệm Suzuki động viên em mới được vậy ạ.)* |
| Suzuki | いえいえ、ホアさんの<ruby>努力<rt>どりょく</rt></ruby>です。さて、<ruby>今日<rt>きょう</rt></ruby>はそろそろ<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしましょう。<br>*(Không không, là nỗ lực của em. Nào, hôm nay chúng ta bàn về tương lai nhé.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin nhờ anh.)* |
| Suzuki | ホアさんの<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>は<ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>終了<rt>しゅうりょう</rt></ruby>します。あと<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>2<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>ですね。<br>*(Hợp đồng TTS của em sẽ kết thúc tháng 4 năm 2029. Còn 1 năm 2 tháng nữa.)* |
| Hoa | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Vâng, đúng như vậy ạ.)* |
| Suzuki | その<ruby>次<rt>つぎ</rt></ruby>に<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れていますか?<br>*(Em có nhắm tới Tokutei 1号 tiếp theo không?)* |
| Hoa | (lúng túng) すみません、「<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる」というのはどんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Xin lỗi anh, "shiya ni ireru" nghĩa là gì ạ?)* |
| Suzuki | あ、「<ruby>考<rt>かんが</rt></ruby>えている・<ruby>計画<rt>けいかく</rt></ruby>に<ruby>入<rt>い</rt></ruby>れている」という<ruby>意味<rt>いみ</rt></ruby>です。<br>*(À, nghĩa là "đang cân nhắc, đang đưa vào kế hoạch" đó.)* |
| Hoa | なるほど。はい、<ruby>飲食<rt>いんしょく</rt></ruby><ruby>料品<rt>りょうひん</rt></ruby><ruby>製造業<rt>せいぞうぎょう</rt></ruby>のSSW1を<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れています。<br>*(Ra vậy. Vâng, em đang nhắm Tokutei 1号 ngành chế biến thực phẩm.)* |
| Suzuki | いい<ruby>選択<rt>せんたく</rt></ruby>です。<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>ですから、<ruby>有利<rt>ゆうり</rt></ruby>ですよ。<br>*(Lựa chọn tốt. Cùng ngành nghề với công việc hiện tại nên em có lợi thế đấy.)* |

---

## Tình huống 4 — Văn phòng anh Suzuki · 14:15, nghe giải thích 2 cách chuyển sang SSW1

| Vai | Lời thoại |
|---|---|
| Suzuki | SSW1への<ruby>移行<rt>いこう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つあります。<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Có 2 cách chuyển sang SSW1. Anh giải thích nhé.)* |
| Hoa | はい、お<ruby>願<rt>ねが</rt></ruby>いします。メモしてもいいですか?<br>*(Vâng, mời anh. Em ghi chú được không ạ?)* |
| Suzuki | もちろん。Aは<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>号<rt>ごう</rt></ruby>を<ruby>良好<rt>りょうこう</rt></ruby>に<ruby>修了<rt>しゅうりょう</rt></ruby>して、<ruby>同<rt>おな</rt></ruby>じ<ruby>関連<rt>かんれん</rt></ruby><ruby>職種<rt>しょくしゅ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>む<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(A: hoàn tất tốt TTS 2号 rồi tiếp tục ngành nghề liên quan.)* |
| Suzuki | この<ruby>場合<rt>ばあい</rt></ruby>、<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>が<ruby>免除<rt>めんじょ</rt></ruby>されます。<br>*(Trường hợp này được miễn cả thi kỹ năng lẫn thi tiếng Nhật.)* |
| Hoa | <ruby>両方<rt>りょうほう</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>...いいですね!Bは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Miễn cả hai... hay quá! Còn B là gì ạ?)* |
| Suzuki | Bは<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける<ruby>方法<rt>ほうほう</rt></ruby>です。<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>(OTAFF)と<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>(JFT-BasicまたはN4)を<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(B là cách thi. Phải đỗ thi kỹ năng OTAFF và thi tiếng Nhật JFT-Basic hoặc N4.)* |
| Hoa | <ruby>私<rt>わたし</rt></ruby>はAの<ruby>方<rt>ほう</rt></ruby>がいいということですね?<br>*(Vậy em thì cách A tốt hơn đúng không ạ?)* |
| Suzuki | その<ruby>通<rt>とお</rt></ruby>り。ホアさんは<ruby>食品<rt>しょくひん</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>で<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けるから、<ruby>自動的<rt>じどうてき</rt></ruby>に<ruby>免除<rt>めんじょ</rt></ruby>になります。<br>*(Đúng vậy. Em làm tiếp ở nhà máy thực phẩm cùng ngành nên được miễn tự động.)* |
| Hoa | すみません、「<ruby>関連<rt>かんれん</rt></ruby><ruby>職種<rt>しょくしゅ</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi anh, "ngành nghề liên quan" cụ thể là gì ạ?)* |
| Suzuki | <ruby>飲食<rt>いんしょく</rt></ruby><ruby>料品<rt>りょうひん</rt></ruby><ruby>製造業<rt>せいぞうぎょう</rt></ruby>のことです。<ruby>例<rt>たと</rt></ruby>えば、<ruby>惣菜<rt>そうざい</rt></ruby>、パン、お<ruby>菓子<rt>かし</rt></ruby>、<ruby>飲料<rt>いんりょう</rt></ruby>などの<ruby>製造<rt>せいぞう</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>です。<br>*(Là ngành chế biến thực phẩm và đồ uống. Ví dụ nhà máy đồ ăn sẵn, bánh mì, bánh kẹo, đồ uống.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。N3はSSW1に<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Em hiểu rồi. N3 có cần cho SSW1 không ạ?)* |
| Suzuki | SSW1には<ruby>不要<rt>ふよう</rt></ruby>です。でもSSW2や<ruby>転職<rt>てんしょく</rt></ruby>には<ruby>有利<rt>ゆうり</rt></ruby>ですよ。<br>*(SSW1 thì không cần. Nhưng có lợi cho SSW2 và chuyển việc đó.)* |
| Hoa | じゃあ<ruby>今年<rt>ことし</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のN3、<ruby>必<rt>かなら</rt></ruby>ず<ruby>受<rt>う</rt></ruby>けます!<br>*(Vậy thì N3 tháng 12 năm nay em nhất định thi!)* |

---

## Tình huống 5 — Văn phòng anh Suzuki · 14:30, cùng vẽ lộ trình 2 năm gần

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てましょう。<ruby>紙<rt>かみ</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Mình lên kế hoạch cụ thể nào. Anh viết lên giấy.)* |
| Suzuki | <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>:<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>です。<br>*(Tháng 3 năm 2028: xong năm 2. Tháng 4 bắt đầu năm 3.)* |
| Hoa | はい。<br>*(Vâng.)* |
| Suzuki | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>にN3<ruby>受験<rt>じゅけん</rt></ruby>。<ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby> + <ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>です。<br>*(Tháng 12 thi N3. Tháng 3 năm 2029 xong năm 3 + thi đánh giá TTS.)* |
| Hoa | <ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>...これは<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Thi đánh giá thực tập kỹ năng... em nghe lần đầu. Khó không ạ?)* |
| Suzuki | <ruby>実技<rt>じつぎ</rt></ruby>と<ruby>学科<rt>がっか</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>現場<rt>げんば</rt></ruby>でやっていることなので、<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>いていれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Có phần thực hành và lý thuyết. Đều là việc làm hàng ngày nên cứ làm việc nghiêm túc là ổn.)* |
| Hoa | <ruby>安心<rt>あんしん</rt></ruby>しました。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からはどうなりますか?<br>*(Em yên tâm rồi. Từ tháng 4 thì thế nào ạ?)* |
| Suzuki | <ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>:SSW1の<ruby>申請<rt>しんせい</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>だから<ruby>自動<rt>じどう</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>。<ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>だけです。<br>*(Tháng 4 năm 2029: nộp đơn SSW1. Cùng ngành thì tự động miễn thi. Chỉ cần chuẩn bị hồ sơ.)* |
| Hoa | (gật đầu, ghi tay) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>にSSW1を<ruby>申請<rt>しんせい</rt></ruby>するということですね。<br>*(Tức là tháng 4 nộp đơn SSW1 đúng không ạ.)* |
| Suzuki | はい。<ruby>明確<rt>めいかく</rt></ruby>な<ruby>計画<rt>けいかく</rt></ruby>は<ruby>成功<rt>せいこう</rt></ruby>の<ruby>第一歩<rt>だいいっぽ</rt></ruby>ですよ。<br>*(Đúng. Kế hoạch rõ ràng là bước đầu của thành công đó.)* |

---

## Tình huống 6 — Văn phòng anh Suzuki · 14:50, hỏi lại về visa dài hạn và vĩnh trú

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>主任<rt>しゅにん</rt></ruby>、SSW1の<ruby>後<rt>あと</rt></ruby>はどうなりますか?<br>*(Chủ nhiệm, sau SSW1 thì thế nào ạ?)* |
| Suzuki | SSW1は<ruby>最長<rt>さいちょう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>。その<ruby>後<rt>あと</rt></ruby>はSSW2に<ruby>移行<rt>いこう</rt></ruby>できます。<br>*(SSW1 tối đa 5 năm. Sau đó có thể chuyển sang SSW2.)* |
| Hoa | SSW2は<ruby>期間<rt>きかん</rt></ruby><ruby>無制限<rt>むせいげん</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きましたが、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Em nghe nói SSW2 là không giới hạn thời gian, có đúng vậy không ạ?)* |
| Suzuki | はい、<ruby>更新<rt>こうしん</rt></ruby>できれば<ruby>無制限<rt>むせいげん</rt></ruby>です。<ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>もOK、<ruby>永住権<rt>えいじゅうけん</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>ります。<br>*(Đúng, nếu cứ gia hạn được thì vô hạn. Cho mang theo gia đình, và có thể nhắm tới vĩnh trú.)* |
| Hoa | すみません、「<ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>」というのは?<br>*(Xin lỗi anh, "kazoku taidou" là gì ạ?)* |
| Suzuki | <ruby>奥<rt>おく</rt></ruby>さんや<ruby>子<rt>こ</rt></ruby>どもを<ruby>日本<rt>にほん</rt></ruby>に<ruby>呼<rt>よ</rt></ruby>んで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>住<rt>す</rt></ruby>めることです。<br>*(Là việc gọi vợ con sang Nhật cùng chung sống.)* |
| Hoa | わー、<ruby>素敵<rt>すてき</rt></ruby>です。でも<ruby>永住権<rt>えいじゅうけん</rt></ruby>は<ruby>遠<rt>とお</rt></ruby>そうですね。<br>*(Wow, tuyệt quá. Nhưng vĩnh trú có vẻ xa nhỉ.)* |
| Suzuki | <ruby>注意<rt>ちゅうい</rt></ruby>してほしいことがあります。TTSとSSW1の<ruby>期間<rt>きかん</rt></ruby>は<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>就労<rt>しゅうろう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>に<ruby>含<rt>ふく</rt></ruby>まれません。<br>*(Có điều cần lưu ý. Thời gian TTS và SSW1 KHÔNG được tính vào số năm tư cách lao động để xét vĩnh trú.)* |
| Hoa | え!?<ruby>含<rt>ふく</rt></ruby>まれないということですか?<br>*(Ơ!? Không được tính ạ?)* |
| Suzuki | はい。<ruby>永住権<rt>えいじゅうけん</rt></ruby>には、SSW2で<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>就労<rt>しゅうろう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đúng vậy. Vĩnh trú yêu cầu 5 năm làm việc theo SSW2.)* |
| Hoa | (lẩm nhẩm) <ruby>2034<rt>にせんさんじゅうし</rt></ruby><ruby>年<rt>ねん</rt></ruby>にSSW2、<ruby>2039<rt>にせんさんじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>に<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>達成<rt>たっせい</rt></ruby>、<ruby>申請<rt>しんせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>は<ruby>早<rt>はや</rt></ruby>くて<ruby>2044<rt>にせんよんじゅうし</rt></ruby><ruby>年<rt>ねん</rt></ruby>ということですね。<br>*(2034 SSW2, 2039 đủ 5 năm, sớm nhất là 2044 mới đăng ký được vĩnh trú nhỉ.)* |
| Suzuki | その<ruby>通<rt>とお</rt></ruby>り。ホアさんは<ruby>40<rt>よんじゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby>ぐらいですね。<ruby>長<rt>なが</rt></ruby>い<ruby>道<rt>みち</rt></ruby>ですが、<ruby>確実<rt>かくじつ</rt></ruby>な<ruby>道<rt>みち</rt></ruby>です。<br>*(Đúng vậy. Em sẽ khoảng 40 tuổi. Đường dài, nhưng là con đường chắc chắn.)* |

---

## Tình huống 7 — Văn phòng anh Suzuki · 15:10, hỏi giúp Mai về diện 育成就労

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>最後<rt>さいご</rt></ruby>に<ruby>1<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか?マイさんのことです。<br>*(Cuối cùng em hỏi thêm một việc được không ạ? Là về Mai-san.)* |
| Suzuki | もちろん。マイさんは<ruby>新<rt>あたら</rt></ruby>しい<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby><ruby>制度<rt>せいど</rt></ruby>ですね。<br>*(Được chứ. Mai-san đang theo diện Ikusei Shuurou mới đó.)* |
| Hoa | はい。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きました。<ruby>2030<rt>にせんさんじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, em nghe nói 3 năm. Dự kiến kết thúc tháng 5 năm 2030.)* |
| Suzuki | その<ruby>後<rt>あと</rt></ruby>、SSW1に<ruby>移行<rt>いこう</rt></ruby>できます。ただし<ruby>条件<rt>じょうけん</rt></ruby>があります。<br>*(Sau đó có thể chuyển sang SSW1. Nhưng có điều kiện.)* |
| Hoa | <ruby>自動<rt>じどう</rt></ruby><ruby>免除<rt>めんじょ</rt></ruby>ではないということですか?<br>*(Tức là không tự động miễn ạ?)* |
| Suzuki | はい。<ruby>技能<rt>ぎのう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby> + JFT-BasicまたはN4が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đúng. Cần Kiểm định kỹ năng cấp 3 + JFT-Basic hoặc N4.)* |
| Hoa | <ruby>分<rt>わ</rt></ruby>かりました。マイさんに<ruby>教<rt>おし</rt></ruby>えます。<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>できますね。<br>*(Em hiểu rồi. Em sẽ nói với Mai. Hai chị em học cùng nhau được.)* |
| Suzuki | いいですね。<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>導<rt>みちび</rt></ruby>くのは<ruby>会社<rt>かいしゃ</rt></ruby>にとって<ruby>一番<rt>いちばん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいことです。<br>*(Hay đấy. Đàn chị dìu dắt đàn em là điều công ty mừng nhất.)* |

---

## Tình huống 8 — Văn phòng anh Suzuki · 15:25, Hoa xúc động cảm ơn cấp trên

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>目<rt>め</rt></ruby>が<ruby>赤<rt>あか</rt></ruby>いですよ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Hoa-san, mắt em đỏ kìa. Không sao chứ?)* |
| Hoa | (cười, lau mắt) すみません、<ruby>感動<rt>かんどう</rt></ruby>しました。<br>*(Em xin lỗi, em xúc động ạ.)* |
| Suzuki | どうしてですか?<br>*(Vì sao thế?)* |
| Hoa | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby>しか<ruby>見<rt>み</rt></ruby>えませんでした。<ruby>今日<rt>きょう</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>20<rt>にじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<br>*(Một năm trước em chỉ nhìn thấy hợp đồng 3 năm. Hôm nay em thấy được con đường 10 năm, 20 năm.)* |
| Suzuki | それは<ruby>大事<rt>だいじ</rt></ruby>なことです。<ruby>計画<rt>けいかく</rt></ruby>があれば<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>に<ruby>意味<rt>いみ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Đó là điều quan trọng. Có kế hoạch thì công việc hàng ngày mới có ý nghĩa.)* |
| Hoa | はい。<ruby>毎日<rt>まいにち</rt></ruby>のHACCPの<ruby>仕事<rt>しごと</rt></ruby>も、<ruby>未来<rt>みらい</rt></ruby>につながっていると<ruby>感<rt>かん</rt></ruby>じます。<br>*(Vâng. Em cảm thấy công việc HACCP hàng ngày cũng nối liền với tương lai.)* |
| Suzuki | その<ruby>気持<rt>きも</rt></ruby>ちを<ruby>大切<rt>たいせつ</rt></ruby>に。では、<ruby>計画書<rt>けいかくしょ</rt></ruby>を<ruby>清書<rt>せいしょ</rt></ruby>してきてください。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Hãy trân trọng tâm thế đó. Vậy em viết sạch bản kế hoạch ra nhé. Tuần sau cùng kiểm tra lại.)* |
| Hoa | はい、ありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em cảm ơn anh ạ. Em xin phép.)* |

---

## Tình huống 9 — Hành lang nhà máy · 15:40, quan sát đàn anh: tin nhắn Andi từ Nagoya

| Vai | Lời thoại |
|---|---|
| Hoa | (mở LINE, gửi tin) アンディさん、<ruby>今日<rt>きょう</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>とSSW1の<ruby>話<rt>はなし</rt></ruby>をしました。<br>*(Andi, hôm nay em vừa bàn với chủ nhiệm về SSW1.)* |
| Andi | おお!ホアさんも<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れていますね。<ruby>私<rt>わたし</rt></ruby>は<ruby>去年<rt>きょねん</rt></ruby>から<ruby>名古屋<rt>なごや</rt></ruby>でSSW1です。<br>*(Ô! Hoa cũng đang nhắm tới à. Tôi đã SSW1 ở Nagoya từ năm ngoái rồi.)* |
| Hoa | <ruby>申請<rt>しんせい</rt></ruby>のとき<ruby>大変<rt>たいへん</rt></ruby>でしたか?<br>*(Lúc làm hồ sơ có vất vả không ạ?)* |
| Andi | <ruby>試験<rt>しけん</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたが、<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて<ruby>大変<rt>たいへん</rt></ruby>でした。<br>*(Thi thì OK nhưng hồ sơ đăng ký nhiều lắm vất vả.)* |
| Hoa | アドバイスはありますか?<br>*(Có lời khuyên nào không ạ?)* |
| Andi | <ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めること。<ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポート、<ruby>住民票<rt>じゅうみんひょう</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>年金<rt>ねんきん</rt></ruby><ruby>納付<rt>のうふ</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Bắt đầu chuẩn bị từ 1 năm trước. Thẻ cư trú, hộ chiếu, giấy cư trú, giấy chứng nhận nộp thuế, giấy chứng nhận nộp lương hưu — tất cả đều cần.)* |
| Hoa | わ、<ruby>多<rt>おお</rt></ruby>いですね。ノートに<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Wow, nhiều thật. Em ghi vào sổ luôn.)* |
| Andi | <ruby>頑張<rt>がんば</rt></ruby>ってください。<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>なら<ruby>有利<rt>ゆうり</rt></ruby>ですよ。<br>*(Cố lên nhé. Cùng ngành là có lợi đó.)* |
| Hoa | はい、ありがとうございます!<br>*(Vâng, em cảm ơn anh!)* |

---

## Tình huống 10 — Phòng Hoa · 19:00, ăn cơm cùng Mai (cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — đồng hương Việt, ôn lại từ vựng JP chương qua hội thoại tiếng Việt.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Mai ơi, hôm nay chị bàn với anh Suzuki cả một kế hoạch 10 năm luôn. |
| Mai | (tiếng Việt) Wow, chị kể đi! Em thấy chiều chị đi lên văn phòng lâu thật. |
| Hoa | (tiếng Việt) Đầu tiên hết hợp đồng TTS tháng 4/2029, chị chuyển sang **特定技能1号** — cùng ngành thực phẩm nên được miễn thi luôn, gọi là **試験免除**. |
| Mai | (tiếng Việt) Sướng nhỉ. Còn em diện **育成就労** thì sao chị? |
| Hoa | (tiếng Việt) Anh Suzuki bảo em không tự động miễn được đâu. Phải có **技能検定3級** với JFT-Basic hoặc N4 thì mới chuyển SSW1 được. Hai chị em mình cùng học N4 đi. |
| Mai | (tiếng Việt) Vâng ạ! Thế còn vĩnh trú? Em nghe nói mơ xa lắm. |
| Hoa | (tiếng Việt) Mơ xa thật. Anh Suzuki bảo TTS với SSW1 không tính vào năm để xét **永住権**. Phải lên SSW2 đủ 5 năm. Tính ra sớm nhất chị 40 tuổi mới đăng ký được. |
| Mai | (tiếng Việt) Trời, dài thế. Nhưng mà chị có thấy con đường rồi đúng không? |
| Hoa | (tiếng Việt) Ừ, hôm nay chị thấy. Mà chị tính cả em vào kế hoạch nữa — nếu em SSW1 5 năm, hai chị em làm cùng đến tận 2035. |
| Mai | (tiếng Việt) Chị Hoa, em cũng muốn theo lộ trình giống chị. Mai chị cho em xem bản kế hoạch nhé. |
| Hoa | (tiếng Việt) Ừ, tối nay chị viết sạch ra. Ăn cơm đi đã, để nguội mất. |

---

## Tình huống 11 — Bàn học phòng Hoa · 21:30, viết bản kế hoạch sạch bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Hoa | (mở vở, viết lẩm bẩm) <ruby>計画書<rt>けいかくしょ</rt></ruby>。<ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby>:N3<ruby>勉強<rt>べんきょう</rt></ruby>と<ruby>後輩<rt>こうはい</rt></ruby><ruby>指導<rt>しどう</rt></ruby>。<br>*(Bản kế hoạch. 2028: học N3 và hướng dẫn đàn em.)* |
| Hoa | <ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>:N3<ruby>合格<rt>ごうかく</rt></ruby> + <ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby> + SSW1<ruby>申請<rt>しんせい</rt></ruby>。<br>*(2029: đỗ N3 + thi đánh giá TTS + đăng ký SSW1.)* |
| Hoa | <ruby>2030<rt>にせんさんじゅう</rt></ruby>～<ruby>2033<rt>にせんさんじゅうさん</rt></ruby><ruby>年<rt>ねん</rt></ruby>:SSW1<ruby>勤務<rt>きんむ</rt></ruby> + <ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<br>*(2030-2033: làm SSW1 + chuẩn bị mang gia đình.)* |
| Hoa | <ruby>2034<rt>にせんさんじゅうし</rt></ruby><ruby>年<rt>ねん</rt></ruby>:SSW2<ruby>受験<rt>じゅけん</rt></ruby>。<ruby>2034<rt>にせんさんじゅうし</rt></ruby>～<ruby>2039<rt>にせんさんじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>:SSW2<ruby>勤務<rt>きんむ</rt></ruby>で<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>達成<rt>たっせい</rt></ruby>。<br>*(2034: thi SSW2. 2034-2039: làm SSW2 đủ 5 năm.)* |
| Hoa | <ruby>2044<rt>にせんよんじゅうし</rt></ruby><ruby>年<rt>ねん</rt></ruby>:<ruby>永住権<rt>えいじゅうけん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>。<br>*(2044: có thể đăng ký vĩnh trú.)* |
| Hoa | (đặt bút, mỉm cười) <ruby>道<rt>みち</rt></ruby>が<ruby>見<rt>み</rt></ruby>えました。<ruby>長<rt>なが</rt></ruby>いですが、<ruby>確実<rt>かくじつ</rt></ruby>な<ruby>道<rt>みち</rt></ruby>です。<br>*(Đã thấy được con đường. Dài nhưng chắc chắn.)* |
| Hoa | (viết thêm dòng cuối) <ruby>明日<rt>あした</rt></ruby>もHACCPの<ruby>仕事<rt>しごと</rt></ruby>を<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Mai cũng cố gắng với công việc HACCP nào.)* |

---

## Đọng lại chương 11

Hoa nhận chứng chỉ **HACCPコーディネーター認定証** và lần đầu được anh Suzuki dạy bài bản các mẫu câu giao tiếp xoay quanh tư cách lưu trú dài hạn: **báo tin vui** (届きました・合格しました), **xác nhận thông tin bằng câu chốt** (〜ということですね), và đặc biệt là **mẫu hỏi lại lễ phép khi gặp thuật ngữ visa lạ** (〜というのは何ですか・どんな意味ですか) — Hoa dùng đúng pattern này với "視野に入れる", "関連職種", "家族帯同". Cô hiểu rõ hai cách chuyển **特定技能1号** (cách A: TTS 2号 良好修了 + 同業種 → **試験免除**; cách B: thi OTAFF + JFT-Basic), nắm được lộ trình 10 năm SSW1 → SSW2 → **永住権**, và quan trọng là biết **TTSとSSW1の期間は永住権の就労資格年数に含まれない** — bài học visa Hoa sẽ không bao giờ quên. Tin nhắn từ đàn anh Andi ở Nagoya bổ sung kinh nghiệm thực tế: bắt đầu chuẩn bị hồ sơ trước **1年前**, gom đủ **在留カード・住民票・納税証明書・年金納付証明**.

> Từ vựng & mẫu câu chương này: 認定証・有効期間・更新・視野に入れる・特定技能1号・特定技能2号・育成就労・飲食料品製造業・関連職種・試験免除・技能実習評価試験・技能検定3級・JFT-Basic・申請・書類準備・家族帯同・永住権・就労資格年数・住民票・納税証明書・年金納付証明・〜というのは何ですか・〜ということですね・視野に入れていますか・おめでとうございます・失礼します

## Bí quyết chương

- **Chuỗi chuẩn bị 10 năm**: TTS → SSW1 → SSW2 → 永住権 — kết quả thấy ở sách 13 (Hoa year 3).
- **Đàn anh nước ngoài**: Andi (Indo, đã SSW1 ở Nagoya) — sempai visa cho Hoa.
- **Sempai-kohai trong tuyến nhân vật**: Hoa hướng dẫn Mai (kohai 育成就労) — chuyển vai từ kohai sang sempai.
- **Cảnh báo nghiệp vụ**: TTS + SSW1 KHÔNG tính vào năm xét vĩnh trú — lỗ hổng kiến thức thường gặp ngoài đời thực.

> *"2/2028. Hôm qua thấy 3 năm. Hôm nay thấy 16 năm. Đường dài nhưng đã hiện ra rõ."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 届く | とどく | GIỚI | Đến (thư, hàng) |
| 本物 | ほんもの | BẢN VẬT | Hàng thật |
| 認定証 | にんていしょう | NHẬN ĐỊNH CHỨNG | Giấy chứng nhận |
| 有効期間 | ゆうこうきかん | HỮU HIỆU KỲ GIAN | Thời gian hiệu lực |
| 更新 | こうしん | CANH TÂN | Gia hạn |
| 必要 | ひつよう | TẤT YẾU | Cần thiết |
| 覚える | おぼえる | GIÁC | Nhớ |
| 証書 | しょうしょ | CHỨNG THƯ | Chứng chỉ |
| 並べる | ならべる | TỊNH | Xếp song song |
| 取る | とる | THỦ | Lấy, đạt được |
| 申請 | しんせい | THÂN THỈNH | Đăng ký |
| 将来 | しょうらい | TƯƠNG LAI | Tương lai |
| 努力 | どりょく | NỖ LỰC | Nỗ lực |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| 視野 | しや | THỊ DÃ | Tầm nhìn |
| 有利 | ゆうり | HỮU LỢI | Có lợi |
| 選択 | せんたく | TUYỂN TRẠCH | Lựa chọn |
| 良好 | りょうこう | LƯƠNG HẢO | Tốt |
| 修了 | しゅうりょう | TU LIỄU | Hoàn tất |
| 関連職種 | かんれんしょくしゅ | QUAN LIÊN CHỨC CHỦNG | Ngành nghề liên quan |
| 進む | すすむ | TIẾN | Tiến tới |
| 惣菜 | そうざい | TỔNG THÁI | Đồ ăn sẵn |
| 飲料 | いんりょう | ẨM LIỆU | Đồ uống |
| 製造 | せいぞう | CHẾ TẠO | Chế tạo |
| 不要 | ふよう | BẤT YẾU | Không cần |
| 転職 | てんしょく | CHUYỂN CHỨC | Chuyển việc |
| 紙 | かみ | CHỈ | Giấy |
| 年目 | ねんめ | NIÊN MỤC | Năm thứ |
| 開始 | かいし | KHAI THUỶ | Bắt đầu |
| 受験 | じゅけん | THỤ NGHIỆM | Dự thi |
| 評価 | ひょうか | BÌNH GIÁ | Đánh giá |
| 実技 | じつぎ | THỰC KỸ | Thực hành |
| 学科 | がっか | HỌC KHOA | Lý thuyết |
| 書類 | しょるい | THƯ LOẠI | Hồ sơ, giấy tờ |
| 明確 | めいかく | MINH XÁC | Rõ ràng |
| 成功 | せいこう | THÀNH CÔNG | Thành công |
| 最長 | さいちょう | TỐI TRƯỜNG | Tối đa |
| 無制限 | むせいげん | VÔ CHẾ HẠN | Không giới hạn |
| 家族帯同 | かぞくたいどう | GIA TỘC ĐỚI ĐỒNG | Mang theo gia đình |
| 永住権 | えいじゅうけん | VĨNH TRỤ QUYỀN | Quyền vĩnh trú |
| 奥さん | おくさん | ÁO | Vợ |
| 注意 | ちゅうい | CHÚ Ý | Lưu ý |
| 就労資格 | しゅうろうしかく | TỰU LAO TƯ CÁCH | Tư cách lao động |
| 年数 | ねんすう | NIÊN SỐ | Số năm |
| 含む | ふくむ | HÀM | Bao gồm |
| 達成 | たっせい | ĐẠT THÀNH | Đạt được |
| 確実 | かくじつ | XÁC THỰC | Chắc chắn |
| 技能検定 | ぎのうけんてい | KỸ NĂNG KIỂM ĐỊNH | Kiểm định kỹ năng |
| 級 | きゅう | CẤP | Cấp |
| 導く | みちびく | ĐẠO | Dẫn dắt |
| 嬉しい | うれしい | HỶ | Vui mừng |
| 感動 | かんどう | CẢM ĐỘNG | Xúc động |
| 道 | みち | ĐẠO | Con đường |
| 未来 | みらい | VỊ LAI | Tương lai |
| 計画書 | けいかくしょ | KẾ HOẠCH THƯ | Bản kế hoạch |
| 清書 | せいしょ | THANH THƯ | Viết sạch |
| 住民票 | じゅうみんひょう | TRỤ DÂN PHIẾU | Giấy cư trú |
| 納税証明書 | のうぜいしょうめいしょ | NẠP THUẾ CHỨNG MINH THƯ | Giấy chứng nhận nộp thuế |
| 年金納付証明 | ねんきんのうふしょうめい | NIÊN KIM NẠP PHÓ CHỨNG MINH | Giấy chứng nhận nộp lương hưu |
| 順調 | じゅんちょう | THUẬN ĐIỀU | Thuận lợi |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (812000012, 800000012, NULL, 'markdown_book', 'T12. Bonenkai năm 2 — Sempai cũ quay lại (リン姉さん帰国・忘年会)', '# Sách thực tập sinh thực phẩm · T12. Bonenkai năm 2 — Sempai cũ quay lại (リン姉さん帰国・忘年会)

> **Mục tiêu nhân vật:** Hoa (23 tuổi, Hà Nội) khép lại năm 2 ở nhà máy thực phẩm Saitama bằng tiệc bonenkai cùng cả đoàn đầy đủ và sempai cũ Linh từ Việt Nam quay lại. Học các mẫu hội thoại tiếng Nhật trang trọng cuối năm: đón khách ở sân bay (お久しぶりです・大人になった), giới thiệu nội bộ kohai-sempai 3 thế hệ, hỏi thăm cuộc sống sau khi về nước (結婚・出産・活かしています), phát biểu bonenkai 3 phần (感謝・反省・来年の目標), nhận kỷ vật cấp trên (大切に使わせていただきます) và nghi thức kết tiệc 一本締め (お手を拝借・いよーお・パン).

---

## Bối cảnh

Cuối tháng 3 năm 2028. Hoa đã đi qua năm 2 tại nhà máy thực phẩm ở Saitama, vừa lấy 食品衛生責任者 và HACCP コーディネーター, vừa dạy kohai năm 1 Mai. Tuần này Linh — sempai khoá đầu đã về nước — bay sang Nhật chơi 5 ngày, và Andi từ Nagoya lên dự bonenkai. Trình độ tiếng Nhật của Hoa N3 yếu. Chương này tập trung các mẫu câu cuối năm tài khoá: đón sempai cũ, giới thiệu 3 thế hệ kohai-sempai, phát biểu bonenkai tổng kết, và nghi thức 一本締め kết tiệc.

---

## Tình huống 1 — Sân bay Narita Cổng đến · 14:00, đón sempai cũ về thăm

| Vai | Lời thoại |
|---|---|
| Hoa | (cầm bảng "リンさん", đứng ngóng cửa đến) <ruby>到着<rt>とうちゃく</rt></ruby>ロビーで<ruby>待<rt>ま</rt></ruby>っています。<br>*(Em đợi ở sảnh đến.)* |
| Linh | (kéo vali ra) ホア!こっち、こっち!<br>*(Hoa! Bên này, bên này!)* |
| Hoa | リン<ruby>姉<rt>ねえ</rt></ruby>さん、お<ruby>久<rt>ひさ</rt></ruby>しぶりです!<ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Chị Linh, lâu rồi không gặp! Đường dài chị vất vả rồi.)* |
| Linh | ありがとう。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>ぶりだね。<br>*(Cảm ơn em. 1 năm 3 tháng rồi đấy.)* |
| Hoa | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>長<rt>なが</rt></ruby>かったです。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Lâu thật ạ. Sức khoẻ chị ổn không?)* |
| Linh | (nhìn Hoa từ trên xuống) ホア、<ruby>顔<rt>かお</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<ruby>大人<rt>おとな</rt></ruby>になった!<ruby>自信<rt>じしん</rt></ruby>がある<ruby>顔<rt>かお</rt></ruby>。<br>*(Hoa, khuôn mặt khác rồi. Trưởng thành lên! Khuôn mặt có tự tin.)* |
| Hoa | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>恥<rt>は</rt></ruby>ずかしいです。<br>*(Ơ, thật ạ? Em ngại quá.)* |
| Linh | <ruby>本当<rt>ほんとう</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>だよ。<br>*(Thật mà. Khuôn mặt năm 2 đấy.)* |
| Hoa | では、<ruby>電車<rt>でんしゃ</rt></ruby>で<ruby>埼玉<rt>さいたま</rt></ruby>の<ruby>寮<rt>りょう</rt></ruby>まで<ruby>戻<rt>もど</rt></ruby>りましょう。<ruby>荷物<rt>にもつ</rt></ruby>、お<ruby>持<rt>も</rt></ruby>ちします。<br>*(Vậy mình bắt tàu về ký túc Saitama nhé. Hành lý để em cầm.)* |

---

## Tình huống 2 — Trên tàu về Saitama · 15:00, cập nhật chuyện đồng nghiệp cho sempai cũ

| Vai | Lời thoại |
|---|---|
| Linh | マイさんって、どんな<ruby>子<rt>こ</rt></ruby>?<ruby>毎月<rt>まいつき</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いてたけど、<ruby>会<rt>あ</rt></ruby>うのは<ruby>初<rt>はじ</rt></ruby>めて。<br>*(Mai-san là kiểu người thế nào? Tháng nào cũng nghe em kể qua điện thoại nhưng gặp lần đầu mới.)* |
| Hoa | <ruby>真面目<rt>まじめ</rt></ruby>で<ruby>静<rt>しず</rt></ruby>かな<ruby>子<rt>こ</rt></ruby>です。でも<ruby>意外<rt>いがい</rt></ruby>と<ruby>強<rt>つよ</rt></ruby>くて、<ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>自分<rt>じぶん</rt></ruby>で<ruby>立<rt>た</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>れます。<br>*(Là em gái nghiêm túc và trầm. Nhưng bất ngờ mạnh mẽ, vấp ngã cũng tự đứng dậy được.)* |
| Linh | リン<ruby>姉<rt>ねえ</rt></ruby>さんのことは<ruby>知<rt>し</rt></ruby>ってる?<br>*(Có biết chị Linh không?)* |
| Hoa | はい。<ruby>毎月<rt>まいつき</rt></ruby>、リン<ruby>姉<rt>ねえ</rt></ruby>さんの<ruby>話<rt>はなし</rt></ruby>をしてました。<ruby>会<rt>あ</rt></ruby>うのを<ruby>楽<rt>たの</rt></ruby>しみにしていますよ。<br>*(Có ạ. Tháng nào em cũng kể chuyện chị. Cả Mai đang mong gặp chị lắm.)* |
| Linh | プトゥリちゃんは<ruby>元気<rt>げんき</rt></ruby>?<br>*(Putri-chan khoẻ chứ?)* |
| Hoa | <ruby>元気<rt>げんき</rt></ruby>です。お<ruby>正月<rt>しょうがつ</rt></ruby>明けに<ruby>大<rt>おお</rt></ruby>きな<ruby>失敗<rt>しっぱい</rt></ruby>をしましたが、<ruby>今<rt>いま</rt></ruby>は<ruby>立<rt>た</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>って<ruby>頑張<rt>がんば</rt></ruby>っています。<br>*(Khoẻ ạ. Sau Tết bạn ấy có vấp một lỗi lớn, nhưng giờ đã đứng dậy và cố gắng tiếp.)* |
| Linh | じゃあ<ruby>寮<rt>りょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby>か<ruby>国<rt>こく</rt></ruby>の<ruby>女子<rt>じょし</rt></ruby><ruby>寮<rt>りょう</rt></ruby>だね。<br>*(Vậy ký túc là ký túc nữ 3 quốc gia nhỉ.)* |
| Hoa | はい。ベトナム<ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>、インドネシア<ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>。<ruby>毎晩<rt>まいばん</rt></ruby>にぎやかです。<br>*(Vâng. Việt Nam 2, Indonesia 1. Mỗi tối náo nhiệt lắm.)* |

---

## Tình huống 3 — Ký túc Saitama · 16:00, giới thiệu kohai và đồng phòng với sempai cũ

| Vai | Lời thoại |
|---|---|
| Hoa | (mở cửa) マイさん、プトゥリさん、リン<ruby>姉<rt>ねえ</rt></ruby>さんを<ruby>連<rt>つ</rt></ruby>れてきました。<br>*(Mai, Putri, mình đưa chị Linh về rồi.)* |
| Mai | (đứng dậy cúi đầu) リン<ruby>姉<rt>ねえ</rt></ruby>さん、はじめまして。マイと<ruby>申<rt>もう</rt></ruby>します。<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Linh, em chào chị. Em tên là Mai. Em năm 1. Mong chị giúp đỡ ạ.)* |
| Putri | リンちゃん、ようこそ!プトゥリです。インドネシアから<ruby>来<rt>き</rt></ruby>ました。<br>*(Linh-chan, chào mừng! Em là Putri. Em đến từ Indonesia.)* |
| Linh | <ruby>2<rt>に</rt></ruby><ruby>人<rt>り</rt></ruby>とも、よろしくね。これ、ベトナムから<ruby>持<rt>も</rt></ruby>ってきたお<ruby>菓子<rt>かし</rt></ruby>。ホアの<ruby>大好<rt>だいす</rt></ruby>きなバインダウサンです。<br>*(Hai em, mong nhau cùng quý. Đây, bánh chị mang từ Việt Nam qua. Bánh đậu xanh Hoa rất thích.)* |
| Hoa | わー、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>久<rt>ひさ</rt></ruby>しぶりです!ありがとうございます。<br>*(Wow, đúng là lâu lắm em mới thấy! Em cảm ơn chị.)* |
| Putri | <ruby>夜<rt>よる</rt></ruby>、<ruby>3<rt>さん</rt></ruby>か<ruby>国<rt>こく</rt></ruby>のお<ruby>菓子<rt>かし</rt></ruby>を<ruby>食<rt>た</rt></ruby>べ<ruby>比<rt>くら</rt></ruby>べしませんか?<br>*(Tối nay mình so sánh bánh 3 nước nhé?)* |
| Mai | <ruby>賛成<rt>さんせい</rt></ruby>です!<ruby>私<rt>わたし</rt></ruby>もベトナム<ruby>南部<rt>なんぶ</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>のお<ruby>菓子<rt>かし</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Em đồng ý ạ! Em cũng chuẩn bị bánh kiểu Nam Bộ Việt Nam.)* |
| Linh | <ruby>女子<rt>じょし</rt></ruby><ruby>寮<rt>りょう</rt></ruby>って、こういう<ruby>雰囲気<rt>ふんいき</rt></ruby>なんだね。<br>*(Ký túc nữ kiểu này nhỉ.)* |

---

## Tình huống 4 — Nhà máy Saitama · Hôm sau 10:00, Linh chào lại cấp trên cũ

| Vai | Lời thoại |
|---|---|
| Linh | (vào văn phòng, cúi đầu sâu) <ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>、ご<ruby>無沙汰<rt>ぶさた</rt></ruby>しております。<br>*(Anh Tanaka, lâu rồi em không liên lạc ạ.)* |
| Tanaka | リンさん!お<ruby>久<rt>ひさ</rt></ruby>しぶり。<ruby>元気<rt>げんき</rt></ruby>そうで<ruby>何<rt>なに</rt></ruby>よりです。<br>*(Linh-san! Lâu rồi. Trông em khoẻ là mừng nhất.)* |
| Linh | おかげさまで<ruby>元気<rt>げんき</rt></ruby>です。<ruby>実<rt>じつ</rt></ruby>は、ご<ruby>報告<rt>ほうこく</rt></ruby>があります。ベトナムで<ruby>結婚<rt>けっこん</rt></ruby>しました。<br>*(Nhờ ơn anh em vẫn khoẻ. Thực ra em có việc xin báo cáo. Em đã kết hôn ở Việt Nam ạ.)* |
| Tanaka | え!?おめでとうございます!いつ?<br>*(Ơ!? Chúc mừng em! Bao giờ vậy?)* |
| Linh | <ruby>3<rt>さん</rt></ruby>か<ruby>月前<rt>げつまえ</rt></ruby>です。<ruby>主人<rt>しゅじん</rt></ruby>はベトナム<ruby>人<rt>じん</rt></ruby>で、<ruby>同<rt>おな</rt></ruby>じ<ruby>食品工場<rt>しょくひんこうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<br>*(3 tháng trước ạ. Chồng em là người Việt, cũng làm cùng nhà máy thực phẩm.)* |
| Hoa | (đứng cạnh, ngạc nhiên) えー!リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>結婚<rt>けっこん</rt></ruby>!?なんで<ruby>電話<rt>でんわ</rt></ruby>で<ruby>言<rt>い</rt></ruby>わなかったんですか!<br>*(Ơ! Chị Linh, kết hôn?! Sao điện thoại không nói gì hết vậy chị!)* |
| Linh | <ruby>会<rt>あ</rt></ruby>った<ruby>時<rt>とき</rt></ruby>に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>言<rt>い</rt></ruby>いたかったの。サプライズね。<br>*(Chị muốn nói trực tiếp khi gặp. Bất ngờ mà.)* |
| Tanaka | リンさん、<ruby>日本<rt>にほん</rt></ruby>で<ruby>習<rt>なら</rt></ruby>った<ruby>食品衛生<rt>しょくひんえいせい</rt></ruby>は<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>っていますか?<br>*(Linh-san, kiến thức vệ sinh thực phẩm học ở Nhật có dùng được không?)* |
| Linh | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>活<rt>い</rt></ruby>かしています。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Vâng, em vận dụng mỗi ngày. Em thực sự biết ơn ạ.)* |

---

## Tình huống 5 — Phòng nghỉ nhà máy · 11:00, Kimura xin lỗi quá khứ (quan sát sempai)

| Vai | Lời thoại |
|---|---|
| Kimura | リンさん、<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>してもいい?<br>*(Linh-san, chị nói chuyện chút được không?)* |
| Linh | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>!もちろんです。<br>*(Chị Kimura! Tất nhiên ạ.)* |
| Kimura | リンさんが<ruby>新人<rt>しんじん</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>はずいぶん<ruby>厳<rt>きび</rt></ruby>しかった。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>なかったと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Lúc Linh-san còn mới, chị khá nghiêm khắc. Chị thấy mình thiếu sót, xin lỗi em.)* |
| Linh | (lắc đầu) いいえ、<ruby>謝<rt>あやま</rt></ruby>らないでください。<ruby>今<rt>いま</rt></ruby>はよくわかります。<ruby>食品衛生<rt>しょくひんえいせい</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さは、<ruby>厳<rt>きび</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えないと<ruby>伝<rt>つた</rt></ruby>わりません。<br>*(Chị đừng xin lỗi. Bây giờ em hiểu rõ ạ. Tầm quan trọng của vệ sinh thực phẩm — không nghiêm khắc thì không truyền được.)* |
| Kimura | ホアさんも<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>っていました。<br>*(Hoa-san cũng nói y vậy.)* |
| Linh | (cười, nhìn Hoa) いい<ruby>後輩<rt>こうはい</rt></ruby>でしょ?<br>*(Kohai tốt đấy nhỉ?)* |
| Kimura | はい、<ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>仲間<rt>なかま</rt></ruby>にもなれて、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng, thực sự. Còn thành đồng nghiệp Người chịu trách nhiệm vệ sinh thực phẩm với em nữa, chị mừng.)* |
| Hoa | (cúi đầu) <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chị Kimura, sau này cũng mong chị chỉ bảo ạ.)* |

---

## Tình huống 6 — Sảnh đến Haneda · Ngày sau 13:00, Andi bay từ Nagoya lên

| Vai | Lời thoại |
|---|---|
| Andi | (vẫy tay) ホアちゃーん!<br>*(Hoa-chan!)* |
| Hoa | アンディ!<ruby>名古屋<rt>なごや</rt></ruby>から<ruby>長旅<rt>ながたび</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Andi! Đường xa từ Nagoya em vất vả rồi.)* |
| Andi | わざわざ<ruby>来<rt>き</rt></ruby>てくれてありがとう。リンちゃんに<ruby>会<rt>あ</rt></ruby>えるのが<ruby>楽<rt>たの</rt></ruby>しみ!<br>*(Cảm ơn chị đến đón nhé. Háo hức gặp Linh-chan ghê!)* |
| Hoa | <ruby>1<rt>いち</rt></ruby><ruby>年半<rt>ねんはん</rt></ruby>ぶりだね。マイとプトゥリも<ruby>寮<rt>りょう</rt></ruby>で<ruby>待<rt>ま</rt></ruby>っています。<br>*(1 năm rưỡi rồi nhỉ. Mai với Putri cũng đang đợi ở ký túc.)* |
| Andi | <ruby>名古屋<rt>なごや</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>はどう?って<ruby>聞<rt>き</rt></ruby>かれるかな。<br>*(Chắc sẽ bị hỏi "công việc ở Nagoya thế nào?" nhỉ.)* |
| Hoa | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>聞<rt>き</rt></ruby>かれるよ。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>はどう?<br>*(Chắc chắn sẽ bị hỏi. Việc chuẩn bị kỹ năng đặc định 1 thế nào?)* |
| Andi | <ruby>順調<rt>じゅんちょう</rt></ruby>。<ruby>来月<rt>らいげつ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>。<br>*(Thuận lợi. Tháng sau thi.)* |
| Hoa | <ruby>頑張<rt>がんば</rt></ruby>ろうね。<br>*(Cùng cố lên nhé.)* |

---

## Tình huống 7 — Ký túc · 17:00, ảnh kỷ niệm 3 thế hệ kohai-sempai

| Vai | Lời thoại |
|---|---|
| Linh | アンディ!<ruby>大<rt>おお</rt></ruby>きくなった?<br>*(Andi! Trông lớn hơn rồi à?)* |
| Andi | リンちゃん、<ruby>結婚<rt>けっこん</rt></ruby>おめでとう!<br>*(Linh-chan, chúc mừng kết hôn!)* |
| Mai | (nhìn xung quanh) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、リン<ruby>姉<rt>ねえ</rt></ruby>さん、アンディさん…<ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>がそろっています!<br>*(Chị Hoa, chị Linh, chị Andi… 3 thế hệ sempai đủ rồi!)* |
| Putri | <ruby>3<rt>さん</rt></ruby><ruby>世代<rt>せだい</rt></ruby>+インドネシア<ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>!<ruby>記念写真<rt>きねんしゃしん</rt></ruby><ruby>撮<rt>と</rt></ruby>りましょう。<br>*(3 thế hệ + 2 Indonesia! Chụp ảnh kỷ niệm nào.)* |
| Linh | これ、すごい<ruby>光景<rt>こうけい</rt></ruby>ね。<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>送<rt>おく</rt></ruby>っていい?<br>*(Cảnh ấn tượng đấy. Gửi cho công ty được không?)* |
| Hoa | もちろんです。みなさん、<ruby>笑顔<rt>えがお</rt></ruby>!<ruby>3<rt>さん</rt></ruby>、<ruby>2<rt>に</rt></ruby>、<ruby>1<rt>いち</rt></ruby>!<br>*(Tất nhiên ạ. Mọi người cười nào! 3, 2, 1!)* |
| Andi | (cười rộng) チーズ!<br>*(Cheese!)* |
| Mai | (vừa kịp khép vai vào khung hình) <ruby>撮<rt>と</rt></ruby>れた?<br>*(Chụp được không ạ?)* |
| Hoa | (xem màn hình) バッチリです。<br>*(Hoàn hảo.)* |

---

## Tình huống 8 — Izakaya gần ga · 19:00, mở tiệc bonenkai cả đoàn đầy đủ

> Dàn nhân vật: Tanaka, Satou, Suzuki, Yamada, Takahashi, Kimura, Hoa, Mai, Putri, Linh, Andi.

| Vai | Lời thoại |
|---|---|
| Tanaka | (đứng dậy, nâng ly) みなさん、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。リンさん、アンディさんも<ruby>遠<rt>とお</rt></ruby>くから<ruby>来<rt>き</rt></ruby>てくれてありがとうございます。<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Mọi người, năm 2 thực sự vất vả rồi. Linh-san, Andi-san cũng cảm ơn vì đã đến từ xa. Cạn ly!)* |
| Cả bàn | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Linh | (cúi đầu) <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>邪魔<rt>じゃま</rt></ruby>させていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Hôm nay xin phép được tham dự ạ. Mong mọi người chỉ bảo.)* |
| Andi | <ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Hôm nay xin nhờ mọi người ạ.)* |
| Tanaka | リンさん、アンディさん、<ruby>遠<rt>とお</rt></ruby>くから<ruby>来<rt>き</rt></ruby>てくれて<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<ruby>今夜<rt>こんや</rt></ruby>はゆっくりしてください。<br>*(Linh-san, Andi-san, cảm ơn vì đến từ xa. Tối nay cứ thoải mái nhé.)* |
| Linh | こちらこそ。お<ruby>招<rt>まね</rt></ruby>きいただきまして、ありがとうございます。<br>*(Em mới phải cảm ơn. Cảm ơn mọi người đã mời.)* |

---

## Tình huống 9 — Trong tiệc · 19:30, cả đoàn hỏi sempai cũ về cuộc sống

| Vai | Lời thoại |
|---|---|
| Yamada | リンさん、ベトナムで<ruby>何<rt>なん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をしているんですか?<br>*(Linh-san, ở Việt Nam làm công việc gì thế?)* |
| Linh | <ruby>食品工場<rt>しょくひんこうじょう</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>いています。<ruby>日本<rt>にほん</rt></ruby>で<ruby>習<rt>なら</rt></ruby>った HACCP の<ruby>知識<rt>ちしき</rt></ruby>を<ruby>活<rt>い</rt></ruby>かしています。<br>*(Em làm ở nhà máy thực phẩm. Đang vận dụng kiến thức HACCP đã học ở Nhật.)* |
| Satou | それは<ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいですね。<br>*(Tuyệt quá! Mừng thật sự.)* |
| Linh | <ruby>実<rt>じつ</rt></ruby>は、<ruby>3<rt>さん</rt></ruby>か<ruby>月前<rt>げつまえ</rt></ruby>に<ruby>結婚<rt>けっこん</rt></ruby>もしました。<ruby>主人<rt>しゅじん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じ<ruby>工場<rt>こうじょう</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby>です。<br>*(Thật ra, 3 tháng trước em cũng kết hôn. Chồng em là người Việt cùng nhà máy.)* |
| Cả bàn | おお〜!おめでとう!<br>*(Ô~! Chúc mừng!)* |
| Linh | ありがとうございます。それから、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>春<rt>はる</rt></ruby>、<ruby>子供<rt>こども</rt></ruby>が<ruby>生<rt>う</rt></ruby>まれます。<br>*(Em cảm ơn ạ. Và mùa xuân năm sau, em sẽ sinh con.)* |
| Suzuki | わー、ダブルでおめでとうございます!<br>*(Wow, chúc mừng đôi!)* |
| Hoa | リン<ruby>姉<rt>ねえ</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さんになるんですね…!<br>*(Chị Linh, sắp làm mẹ rồi…!)* |
| Linh | はい…<ruby>正直<rt>しょうじき</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>もあります。<br>*(Vâng… thật ra cũng có lo.)* |
| Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。リンさんは<ruby>強<rt>つよ</rt></ruby>い<ruby>人<rt>ひと</rt></ruby>です。きっと<ruby>良<rt>い</rt></ruby>いお<ruby>母<rt>かあ</rt></ruby>さんになりますよ。<br>*(Không sao. Linh-san là người mạnh mẽ. Chắc chắn sẽ thành người mẹ tốt.)* |

---

## Tình huống 10 — Trong tiệc · 20:30, hỏi lại từ chuyên ngành (kỹ năng hỏi lại)

| Vai | Lời thoại |
|---|---|
| Suzuki | ホアさん、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>監査<rt>かんさ</rt></ruby>では「<ruby>是正処置<rt>ぜせいしょち</rt></ruby>」もチェックされるよ。<ruby>覚<rt>おぼ</rt></ruby>えておいてね。<br>*(Hoa-san, kỳ kiểm tra năm sau cũng sẽ rà soát "biện pháp khắc phục" nhé. Nhớ đấy.)* |
| Hoa | すみません、<ruby>鈴木<rt>すずき</rt></ruby>さん。「<ruby>是正処置<rt>ぜせいしょち</rt></ruby>」というのは、どんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Xin lỗi anh Suzuki. "Biện pháp khắc phục" nghĩa là gì ạ?)* |
| Suzuki | <ruby>問題<rt>もんだい</rt></ruby>が<ruby>起<rt>お</rt></ruby>きた<ruby>時<rt>とき</rt></ruby>に、<ruby>原因<rt>げんいん</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べて、もう<ruby>二度<rt>にど</rt></ruby>と<ruby>起<rt>お</rt></ruby>こさないように<ruby>手<rt>て</rt></ruby>を<ruby>打<rt>う</rt></ruby>つことです。<br>*(Khi vấn đề xảy ra, điều tra nguyên nhân và đưa ra biện pháp để không lặp lại lần nữa.)* |
| Hoa | <ruby>原因<rt>げんいん</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べて<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>する、ということですね。<br>*(Tức là điều tra nguyên nhân và phòng tránh tái phát, đúng không ạ?)* |
| Suzuki | そうそう、その<ruby>通<rt>とお</rt></ruby>り。HACCP の<ruby>大事<rt>だいじ</rt></ruby>な<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<br>*(Đúng, đúng vậy. Là tư duy quan trọng của HACCP.)* |
| Mai | (ghé tai Hoa) ホア<ruby>姉<rt>ねえ</rt></ruby>さん、わからない<ruby>言葉<rt>ことば</rt></ruby>はすぐ<ruby>聞<rt>き</rt></ruby>くんですね。<br>*(Chị Hoa, từ không hiểu là chị hỏi liền nhỉ.)* |
| Hoa | わからないままだと、もっと<ruby>困<rt>こま</rt></ruby>るからね。マイさんも<ruby>遠慮<rt>えんりょ</rt></ruby>しないで<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Cứ để không hiểu thì sau khó xử hơn. Mai cũng đừng ngại hỏi nhé.)* |
| Mai | はい!<br>*(Vâng ạ!)* |

---

## Tình huống 11 — Tiệc bonenkai · 21:00, Hoa phát biểu 3 phần (感謝・反省・目標)

| Vai | Lời thoại |
|---|---|
| Tanaka | では、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>代表<rt>だいひょう</rt></ruby>として、ホアさんのスピーチを<ruby>聞<rt>き</rt></ruby>きましょう。<br>*(Vậy, đại diện năm 2, mọi người nghe phát biểu Hoa-san nhé.)* |
| Hoa | (đứng dậy, cúi đầu) みなさん、お<ruby>疲<rt>つか</rt></ruby>れさまでございます。ホアです。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>って、<ruby>3<rt>さん</rt></ruby>つのことを<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Mọi người vất vả rồi. Em là Hoa. Nhìn lại năm 2, em xin nói 3 điều ạ.)* |
| Hoa | <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>感謝<rt>かんしゃ</rt></ruby>です。<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>後輩指導<rt>こうはいしどう</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えていただきまして、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Thứ nhất là cảm ơn. Anh Satou, cảm ơn anh đã hỗ trợ em chỉ dẫn kohai.)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>仲間<rt>なかま</rt></ruby>になれて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Chị Kimura, em vui vì thành đồng nghiệp Người chịu trách nhiệm vệ sinh thực phẩm với chị.)* |
| Hoa | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>近藤<rt>こんどう</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>を<ruby>紹介<rt>しょうかい</rt></ruby>してくださいまして、ありがとうございました。<br>*(Anh Suzuki, cảm ơn anh đã giới thiệu Kondo-sensei.)* |
| Hoa | <ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>、<ruby>後輩指導<rt>こうはいしどう</rt></ruby>と<ruby>資格取得<rt>しかくしゅとく</rt></ruby>の<ruby>機会<rt>きかい</rt></ruby>を<ruby>与<rt>あた</rt></ruby>えてくださいまして、ありがとうございました。<br>*(Anh Tanaka, cảm ơn anh đã cho em cơ hội dạy kohai và lấy chứng chỉ.)* |
| Hoa | マイさん、<ruby>後輩<rt>こうはい</rt></ruby>になってくれてありがとう。<ruby>教<rt>おし</rt></ruby>えることで、<ruby>私<rt>わたし</rt></ruby>も<ruby>多<rt>おお</rt></ruby>くを<ruby>学<rt>まな</rt></ruby>びました。<br>*(Mai, cảm ơn em đã làm kohai. Qua việc dạy em, chị cũng học được nhiều.)* |

---

## Tình huống 12 — Tiệc bonenkai · 21:15, Hoa phát biểu tiếp (反省 và 目標)

| Vai | Lời thoại |
|---|---|
| Hoa | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>反省<rt>はんせい</rt></ruby>です。<ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>と HACCP コーディネーターは<ruby>取得<rt>しゅとく</rt></ruby>できました。でも、N3 はまだ<ruby>合格<rt>ごうかく</rt></ruby>できていません。<br>*(Thứ hai là phản tỉnh. Em đã lấy được Người chịu trách nhiệm vệ sinh thực phẩm và HACCP coordinator. Nhưng N3 thì chưa đậu.)* |
| Hoa | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Tháng 12 năm sau, em nhất định sẽ đậu.)* |
| Hoa | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>です。N3 <ruby>合格<rt>ごうかく</rt></ruby>と、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>。<br>*(Thứ ba là mục tiêu năm sau. Đậu N3 và chuẩn bị kỹ năng đặc định 1.)* |
| Hoa | <ruby>2029<rt>にせんにじゅうきゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えて、その<ruby>後<rt>あと</rt></ruby>も<ruby>長<rt>なが</rt></ruby>く<ruby>日本<rt>にほん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Tháng 4/2029 em sẽ chuyển sang kỹ năng đặc định 1, sau đó em muốn làm việc ở Nhật lâu dài.)* |
| Cả bàn | おお〜!<br>*(Ô~!)* |
| Hoa | みなさん、これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Mọi người, sau này cũng xin được chỉ bảo. Em thực sự cảm ơn ạ.)* |
| Cả bàn | (vỗ tay vang) <ruby>素晴<rt>すば</rt></ruby>らしいスピーチでした!<br>*(Phát biểu tuyệt vời!)* |

---

## Tình huống 13 — Bên bàn nhỏ · 21:30, Tanaka tặng sổ tay 指導員 (quan sát cấp trên)

| Vai | Lời thoại |
|---|---|
| Tanaka | ホアさん、ちょっとこちらに<ruby>来<rt>き</rt></ruby>てください。<br>*(Hoa-san, qua đây chút.)* |
| Hoa | はい、<ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>。<br>*(Vâng, anh Tanaka.)* |
| Tanaka | (đưa cuốn sổ) これ、<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>指導員手帳<rt>しどういんてちょう</rt></ruby>です。<br>*(Đây, sổ tay người chỉ dẫn năm 2.)* |
| Hoa | え!?<ruby>新<rt>あたら</rt></ruby>しい<ruby>手帳<rt>てちょう</rt></ruby>ですか?<br>*(Ơ!? Sổ tay mới ạ?)* |
| Tanaka | はい。<ruby>後輩指導<rt>こうはいしどう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby><ruby>用<rt>よう</rt></ruby>です。<ruby>来年<rt>らいねん</rt></ruby>、マイさんが<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>になりますから。<br>*(Vâng. Để ghi chép việc chỉ dẫn kohai. Năm sau, Mai-san sẽ là năm 2.)* |
| Hoa | マイさんも<ruby>誰<rt>だれ</rt></ruby>かに<ruby>教<rt>おし</rt></ruby>えるんですか?<br>*(Mai-san cũng sẽ dạy ai đó ạ?)* |
| Tanaka | はい。<ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来<rt>き</rt></ruby>ます。ホアさんも<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>として、<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>立場<rt>たちば</rt></ruby>になります。<br>*(Vâng. Sẽ có kohai mới đến. Hoa-san năm 3 sẽ vào vị trí nhìn toàn cục.)* |
| Hoa | <ruby>連鎖<rt>れんさ</rt></ruby>ですね。リン<ruby>姉<rt>ねえ</rt></ruby>さん→<ruby>私<rt>わたし</rt></ruby>→マイさん→<ruby>次<rt>つぎ</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>。<br>*(Là chuỗi liên tiếp ạ. Chị Linh → em → Mai → kohai tiếp theo.)* |
| Tanaka | そう、<ruby>連鎖<rt>れんさ</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>はこうやって<ruby>続<rt>つづ</rt></ruby>いていきます。<br>*(Đúng, là chuỗi. Công ty kéo dài bằng cách đó.)* |
| Hoa | (nhận sổ bằng hai tay, cúi đầu) <ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>わせていただきます。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Em xin được dùng cẩn thận ạ. Em thực sự cảm ơn anh.)* |

---

## Tình huống 14 — Bên bàn nhỏ · 21:45, Kimura tặng cơm hộp sáng tự làm

| Vai | Lời thoại |
|---|---|
| Kimura | ホアさん、これも<ruby>持<rt>も</rt></ruby>って<ruby>帰<rt>かえ</rt></ruby>って。<br>*(Hoa-san, cầm cái này về.)* |
| Hoa | え、<ruby>弁当<rt>べんとう</rt></ruby>ですか?<br>*(Ơ, cơm hộp ạ?)* |
| Kimura | はい、<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>が<ruby>作<rt>つく</rt></ruby>りました。<br>*(Vâng, bữa sáng mai. Chị tự làm.)* |
| Hoa | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>作<rt>つく</rt></ruby>ってくださったんですか?<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Chị Kimura tự làm cho em ạ? Em vui quá.)* |
| Kimura | <ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby>の<ruby>仲間<rt>なかま</rt></ruby>だから。<ruby>衛生<rt>えいせい</rt></ruby>はバッチリだよ。<br>*(Vì mình là đồng nghiệp Sekininsha mà. Vệ sinh hoàn hảo đấy.)* |
| Hoa | (cười) はい、<ruby>信用<rt>しんよう</rt></ruby>しています!<br>*(Vâng, em tin tưởng ạ!)* |
| Kimura | これからも、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろうね。<br>*(Sau này, cùng cố gắng nhé.)* |
| Hoa | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, xin chỉ bảo ạ.)* |

---

## Tình huống 15 — Góc bàn · 22:00, Linh và Hoa nói riêng (kohai-sempai 2 thế hệ)

| Vai | Lời thoại |
|---|---|
| Linh | ホア、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大人<rt>おとな</rt></ruby>になったね。スピーチ、よかった。<br>*(Hoa, thực sự trưởng thành rồi. Phát biểu tốt lắm.)* |
| Hoa | リン<ruby>姉<rt>ねえ</rt></ruby>さんのおかげです。<ruby>毎月<rt>まいつき</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>で<ruby>励<rt>はげ</rt></ruby>ましてくれて、ありがとうございました。<br>*(Nhờ chị Linh. Tháng nào chị cũng gọi điện động viên em, em cảm ơn chị.)* |
| Linh | リン<ruby>姉<rt>ねえ</rt></ruby>さんは<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>で<ruby>結婚<rt>けっこん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めた。ホアは<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>で<ruby>未来<rt>みらい</rt></ruby>を<ruby>決<rt>き</rt></ruby>めた。<br>*(Chị năm 2 quyết kết hôn. Hoa năm 2 quyết tương lai.)* |
| Hoa | <ruby>違<rt>ちが</rt></ruby>う<ruby>道<rt>みち</rt></ruby>ですね。<br>*(Đường khác nhau nhỉ.)* |
| Linh | でも、<ruby>同<rt>おな</rt></ruby>じ<ruby>勇気<rt>ゆうき</rt></ruby>。<ruby>決<rt>き</rt></ruby>めることが<ruby>一番<rt>いちばん</rt></ruby><ruby>大変<rt>たいへん</rt></ruby>だった。<br>*(Nhưng cùng dũng khí. Việc quyết định là vất vả nhất.)* |
| Hoa | リン<ruby>姉<rt>ねえ</rt></ruby>さん、<ruby>赤<rt>あか</rt></ruby>ちゃん、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Chị Linh, em bé, chị cố lên ạ.)* |
| Linh | ホアは N3 と SSW、<ruby>頑張<rt>がんば</rt></ruby>ってね。<br>*(Hoa cố lên với N3 và SSW nhé.)* |
| 2 chị em | (ôm nhẹ)<br>*(im lặng một khoảnh khắc)* |

---

## Tình huống 16 — Trước izakaya · 22:30, nghi thức 一本締め kết tiệc

| Vai | Lời thoại |
|---|---|
| Tanaka | みなさん、では<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>締<rt>し</rt></ruby>めに、<ruby>一本締<rt>いっぽんじ</rt></ruby>めをしましょう。<br>*(Mọi người, để kết năm 2, mình làm 一本締め nhé.)* |
| Cả bàn | (đứng dậy, xếp vòng, giơ tay phải)<br>*(không khí trang nghiêm)* |
| Tanaka | お<ruby>手<rt>て</rt></ruby>を<ruby>拝借<rt>はいしゃく</rt></ruby>!<br>*(Mượn tay mọi người nào!)* |
| Tanaka | いよーお!<br>*(Iyo~!)* |
| Cả bàn | (vỗ một nhịp đồng loạt) パン!<br>*(Pán!)* |
| Tanaka | ありがとうございました!<br>*(Cảm ơn mọi người!)* |
| Cả bàn | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Mọi người vất vả rồi ạ!)* |
| Hoa | (cúi đầu sâu) <ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Hôm nay em cảm ơn mọi người ạ.)* |

---

## Tình huống 17 — Sân bay Narita · Hôm sau 10:00, tiễn Linh về VN (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật & 3 thế hệ kohai-sempai chia tay.

| Vai | Lời thoại |
|---|---|
| Hoa | (tiếng Việt) Chị ơi, máy bay 11h45 đúng không? Còn 1 tiếng nữa. |
| Linh | (tiếng Việt) Ừ, vẫn còn thời gian. Hoa nè, hôm qua chị nghe em phát biểu mà rưng rưng. Mới hôm nào em còn rúm ró không dám gọi điện cho 部長. |
| Hoa | (tiếng Việt) Chị nhớ không, năm 1 em khóc vì chị Kimura mắng dùng găng tay không đúng quy trình HACCP. Giờ em thi đậu 食品衛生責任者 rồi. |
| Linh | (tiếng Việt) Chị tự hào lắm. Mai nó dễ thương đó, em chăm như chị từng chăm em là được rồi. |
| Mai | (tiếng Việt, đứng kế bên) Chị Linh ơi, bao giờ sinh em bé chị nhắn em. Em sẽ qua Cần Thơ thăm. |
| Linh | (tiếng Việt) Ừ, Cần Thơ không xa lắm đâu. Mai có 報連相 với chị Hoa đầy đủ là chị yên tâm. |
| Andi | (tiếng Việt lơ lớ) Chị Linh, cố gắng nhe! Mẹ tròn con vuông. |
| Putri | (tiếng Việt cứng) Chị! Indonesia cũng đón chị! |
| Linh | (tiếng Việt) Cảm ơn cả nhà. 2029 nếu Hoa đậu 特定技能 1, chị tổ chức tiệc ở Cần Thơ mời cả đoàn. |
| Hoa | (tiếng Việt) Dạ. Em sẽ đậu. N3 tháng 12 này, SSW tháng 4 năm sau. Em hứa. |
| Linh | (tiếng Việt) Đi đi, chị vào cửa kiểm tra đây. Giữ sức khoẻ nha mấy đứa. |

---

## Tình huống 18 — Ký túc đêm khuya · 23:00, Hoa viết nhật ký cuối năm 2

| Vai | Lời thoại |
|---|---|
| Hoa | (mở sổ tay 指導員 mới, viết) <ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>16<rt>じゅうろく</rt></ruby><ruby>日<rt>にち</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、<ruby>終了<rt>しゅうりょう</rt></ruby>。<br>*(Ngày 16 tháng 3. Năm 2, kết thúc.)* |
| Hoa | (viết tiếp) <ruby>食品衛生責任者<rt>しょくひんえいせいせきにんしゃ</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>。HACCP コーディネーター<ruby>取得<rt>しゅとく</rt></ruby>。マイさんの<ruby>指導<rt>しどう</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Lấy được Sekininsha. Lấy được HACCP. Chỉ dẫn Mai-san một năm trọn vẹn.)* |
| Hoa | (viết tiếp) リン<ruby>姉<rt>ねえ</rt></ruby>さんがベトナムで<ruby>結婚<rt>けっこん</rt></ruby>。<ruby>来年<rt>らいねん</rt></ruby>、お<ruby>母<rt>かあ</rt></ruby>さんになる。アンディは<ruby>名古屋<rt>なごや</rt></ruby>で<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>の<ruby>準備中<rt>じゅんびちゅう</rt></ruby>。<br>*(Chị Linh kết hôn ở Việt Nam. Năm sau làm mẹ. Andi đang chuẩn bị SSW1 ở Nagoya.)* |
| Hoa | (gấp sổ, nói thì thầm) みんなが<ruby>違<rt>ちが</rt></ruby>う<ruby>道<rt>みち</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>いているけど、つながっている。<br>*(Mọi người đi đường khác nhau, nhưng vẫn kết nối với nhau.)* |
| Hoa | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>:N3 <ruby>合格<rt>ごうかく</rt></ruby>と<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>移行<rt>いこう</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Mục tiêu năm 3: đậu N3 và chuyển sang kỹ năng đặc định 1. Cố lên.)* |

---

## Đọng lại chương 12

Cuối năm 2, Hoa khép lại một năm tài khoá đầy biến động bằng những mẫu câu trang trọng của người Nhật cuối năm. Đón sempai cũ ở sân bay đã học **お久しぶりです・長旅お疲れさまでした・大人になった**. Khi sempai báo tin kết hôn và mang thai, học cách hỏi-đáp lịch sự **ご報告があります・おめでとうございます・素晴らしい**. Tại izakaya, học mở đầu bonenkai bằng **本日はお邪魔させていただきます** và **乾杯**. Khi không hiểu từ chuyên ngành **是正処置**, vẫn dùng kỹ năng năm 1 đã thành phản xạ — **〜というのは、どんな意味ですか?** rồi xác nhận lại bằng **〜ということですね**. Đỉnh điểm là phát biểu 3 phần chuẩn mẫu sempai năm 2: **感謝 → 反省 → 来年の目標**, với câu chốt **これからもどうぞよろしくお願いいたします**. Khi 部長 trao **指導員手帳**, Hoa học mẫu nhận kỷ vật cấp trên: **大切に使わせていただきます**. Và cuối cùng, nghi thức kết tiệc Nhật **一本締め** — **お手を拝借・いよーお・パン!・ありがとうございました** — đóng lại năm 2 và mở ra năm 3 với mục tiêu **N3 合格・特定技能1号 移行**.

> Từ vựng & mẫu câu chương này: 忘年会・乾杯・お久しぶりです・長旅・大人になった・ご無沙汰しております・ご報告・結婚・主人・出産・活かしています・後輩指導・食品衛生責任者・HACCPコーディネーター・是正処置・再発防止・〜というのは、どんな意味ですか・〜ということですね・感謝・反省・来年の目標・特定技能1号・指導員手帳・連鎖・大切に使わせていただきます・一本締め・お手を拝借・いよーお・本日はお邪魔させていただきます・これからもよろしくお願いいたします

## Bí quyết chương

- **一本締め** = vỗ tay đồng loạt 1 nhịp kết tiệc. Chuỗi chuẩn: お手を拝借 → いよーお → パン!
- Bài phát biểu bonenkai 3 phần: 感謝 → 反省 → 目標 (giống năm 1, năm 2 thêm cảm ơn kohai).
- Sempai cũ trở về thăm = tính liên tục của dàn nhân vật. Linh năm 2 quyết kết hôn vs Hoa năm 2 quyết SSW — cùng dũng khí, khác đường.
- Chuỗi sempai-kohai: Linh → Hoa → Mai → kohai năm sau. 指導員手帳 là hiện vật biểu trưng.
- Khởi đầu năm 3: N3 12/2028 + SSW1 4/2029 — kết quả thấy ở sách 13.

> *"Năm 1 mình đến với cuốn sổ tay 指導員 trắng. Năm 2 mình kết bằng cuốn thứ 2. Mỗi cuốn không phải là kết thúc — là dấu hiệu chuỗi sempai-kohai sẽ tiếp tục."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 久しぶり | ひさしぶり | CỬU | Lâu rồi không gặp |
| 体調 | たいちょう | THỂ ĐIỀU | Sức khoẻ |
| 大人 | おとな | ĐẠI NHÂN | Người lớn, trưởng thành |
| 顔 | かお | NHAN | Khuôn mặt |
| 電車 | でんしゃ | ĐIỆN XA | Tàu điện |
| 戻る | もどる | LỆ | Trở về |
| 静か | しずか | TĨNH | Trầm, yên tĩnh |
| 意外 | いがい | Ý NGOẠI | Bất ngờ |
| 強い | つよい | CƯỜNG | Mạnh mẽ |
| 立ち直る | たちなおる | LẬP TRỰC | Đứng dậy lại |
| 元気 | げんき | NGUYÊN KHÍ | Khoẻ mạnh |
| 連れる | つれる | LIÊN | Dẫn theo |
| 大好き | だいすき | ĐẠI HẢO | Rất thích |
| 比べる | くらべる | TỶ | So sánh |
| 賛成 | さんせい | TÁN THÀNH | Đồng ý |
| 南部 | なんぶ | NAM BỘ | Miền Nam |
| 雰囲気 | ふんいき | PHÂN VI KHÍ | Không khí |
| 結婚 | けっこん | KẾT HÔN | Kết hôn |
| 主人 | しゅじん | CHỦ NHÂN | Chồng |
| 食品衛生 | しょくひんえいせい | THỰC PHẨM VỆ SINH | Vệ sinh thực phẩm |
| 役に立つ | やくにたつ | DỊCH LẬP | Có ích |
| 活かす | いかす | HOẠT | Vận dụng |
| 申し訳ない | もうしわけない | THÂN DỊCH | Áy náy |
| 大切さ | たいせつさ | ĐẠI THIẾT | Tầm quan trọng |
| 伝わる | つたわる | TRUYỀN | Truyền đạt |
| 楽しみ | たのしみ | LẠC | Mong chờ |
| 一年半 | いちねんはん | NHẤT NIÊN BÁN | Một năm rưỡi |
| 世代 | せだい | THẾ ĐẠI | Thế hệ |
| 記念写真 | きねんしゃしん | KỶ NIỆM TẢ CHÂN | Ảnh kỷ niệm |
| 撮る | とる | TRÁC | Chụp ảnh |
| 光景 | こうけい | QUANG CẢNH | Quang cảnh |
| 邪魔 | じゃま | TÀ MA | Quấy quả, làm phiền |
| 招き | まねき | CHIÊU | Mời |
| 素晴らしい | すばらしい | TỐ TÌNH | Tuyệt vời |
| 出産 | しゅっさん | XUẤT SẢN | Sinh con |
| 春 | はる | XUÂN | Mùa xuân |
| 子供 | こども | TỬ CUNG | Trẻ con |
| 生まれる | うまれる | SINH | Sinh ra |
| 母 | かあ | MẪU | Mẹ |
| 正直 | しょうじき | CHÍNH TRỰC | Thành thực |
| 是正処置 | ぜせいしょち | THỊ CHÍNH XỬ TRÍ | Biện pháp khắc phục |
| 問題 | もんだい | VẤN ĐỀ | Vấn đề |
| 調べる | しらべる | ĐIỀU | Điều tra |
| 二度と | にどと | NHỊ ĐỘ | Lần nữa |
| 手を打つ | てをうつ | THỦ ĐẢ | Đưa biện pháp |
| 再発防止 | さいはつぼうし | TÁI PHÁT PHÒNG CHỈ | Phòng tránh tái phát |
| 考え方 | かんがえかた | KHẢO PHƯƠNG | Tư duy, cách nghĩ |
| 代表 | だいひょう | ĐẠI BIỂU | Đại diện |
| 振り返る | ふりかえる | CHẤN PHẢN | Nhìn lại |
| 申し上げる | もうしあげる | THÂN THƯỢNG | (khiêm) thưa lên |
| 支える | ささえる | CHI | Hỗ trợ |
| 紹介 | しょうかい | THIỆU GIỚI | Giới thiệu |
| 資格取得 | しかくしゅとく | TƯ CÁCH THỦ ĐẮC | Lấy chứng chỉ |
| 機会 | きかい | CƠ HỘI | Cơ hội |
| 与える | あたえる | DỮ | Cho, ban |
| 取得 | しゅとく | THỦ ĐẮC | Đạt được |
| 切り替える | きりかえる | THIẾT THẾ | Chuyển sang |
| 指導員手帳 | しどういんてちょう | CHỈ ĐẠO VIÊN THỦ TRƯƠNG | Sổ tay người chỉ dẫn |
| 手帳 | てちょう | THỦ TRƯƠNG | Sổ tay |
| 全体 | ぜんたい | TOÀN THỂ | Toàn cục |
| 連鎖 | れんさ | LIÊN TOẢ | Chuỗi liên tiếp |
| 続く | つづく | TỤC | Tiếp tục |
| 大切 | たいせつ | ĐẠI THIẾT | Quan trọng |
| 信用 | しんよう | TÍN DỤNG | Tin tưởng |
| 励ます | はげます | LỆ | Động viên |
| 決める | きめる | QUYẾT | Quyết định |
| 勇気 | ゆうき | DŨNG KHÍ | Dũng khí |
| 違う | ちがう | VI | Khác |
| 赤ちゃん | あかちゃん | XÍCH | Em bé |
| 締め | しめ | THIẾT | Kết, đóng lại |
| 一本締め | いっぽんじめ | NHẤT BẢN THIẾT | Nghi thức vỗ tay 1 nhịp |
| 拝借 | はいしゃく | BÁI TÁ | Xin mượn |
| 無事 | ぶじ | VÔ SỰ | An toàn, trọn vẹn |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn tất |
| 歩く | あるく | BỘ | Bước đi |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
