-- Hizashi LITE book SQL — Phong Y2 — Ô tô năm 2 (車検 + chẩn đoán)
-- curriculum_id = 800000044  (book_seq=44)
-- nguồn: books/44_oto_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000044, 'N4', 'markdown_book', 'Ô tô', 'Phong Y2 — Ô tô năm 2 (車検 + chẩn đoán)', 'Bộ sách Hizashi — Phong Y2 — Ô tô năm 2 (車検 + chẩn đoán)', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000001, 800000044, NULL, 'markdown_book', 'T1. Bước vào năm hai — Phong thành sempai (二年目スタート・先輩になる日)', '# Sách thực tập sinh ô tô · T1. Bước vào năm hai — Phong thành sempai (二年目スタート・先輩になる日)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng) bước sang năm 2 tại garage 自動車整備 Anjo (Aichi), trình độ JP N4→N3. Học các mẫu hội thoại tiếng Nhật của sempai năm 2 ngành ô tô: chào năm tài khoá mới với 工場長・整備士長 (新年度のご挨拶), nhận chỉ thị thành リーダー trong ピット (リーダーをお願いします → 承知しました), xác nhận lại quy trình trước khi làm (〜という手順でよろしいでしょうか), hỏi lễ phép trong họp朝礼 (質問してもよろしいでしょうか), giải thích lại cho đồng nghiệp người Brazil bằng JP đơn giản (つまり〜ということです), và cảm ơn lời chỉ bảo của 先輩 (ご指導ありがとうございます).

---

## Bối cảnh

Ngày 1 tháng 4 năm 2026. Năm tài khoá mới (新年度) bắt đầu ở Nhật. Phong đã tròn 1 năm tại garage 自動車整備工場 ở thành phố Anjo (Aichi) — xưởng Toyota系 chuyên 車検・点検・整備. Phong đậu 自動車整備技能検定 3級 cuối năm 1, JP nâng từ N4 lên cận N3. Ngày 5 tháng 5 sẽ có kohai mới Tuấn từ Việt Nam sang. Chương này tập trung các mẫu câu năm 2 ngành ô tô: chào năm mới với cấp trên, nhận vai リーダー nhóm 軽点検, xác nhận quy trình bằng kính ngữ, và chuẩn bị tâm thế làm 指導員.

---

## Tình huống 1 — Ký túc xá garage · 6:30, chào năm tài khoá với đồng nghiệp Carlos (Brazil)

| Vai | Lời thoại |
|---|---|
| Carlos | フォンさん、おはよう!<ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<br>*(Phong-san, chào buổi sáng! Chúc mừng năm tài khoá mới.)* |
| Phong | おはよう、カルロスさん。<ruby>新年度<rt>しんねんど</rt></ruby>おめでとう。<ruby>早<rt>はや</rt></ruby>いね。<br>*(Chào buổi sáng, anh Carlos. Chúc mừng năm tài khoá mới. Sớm nhỉ.)* |
| Carlos | <ruby>今日<rt>きょう</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>だね。<ruby>緊張<rt>きんちょう</rt></ruby>する?<br>*(Hôm nay là năm thứ 2 nhỉ. Có căng thẳng không?)* |
| Phong | はい、<ruby>少<rt>すこ</rt></ruby>し。<ruby>今日<rt>きょう</rt></ruby>から<ruby>軽点検<rt>けいてんけん</rt></ruby>ラインのリーダーになります。<br>*(Vâng, hơi. Hôm nay tôi thành trưởng line kiểm tra nhẹ.)* |
| Carlos | おお、すごい!<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>のおかげですね。<br>*(Ồ, tuyệt! Nhờ đậu 3 cấp rồi đó nhỉ.)* |
| Phong | カルロスさんに<ruby>教<rt>おし</rt></ruby>えてもらったからです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Là nhờ anh Carlos dạy đấy. Em thực sự cảm ơn.)* |
| Carlos | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>後輩<rt>こうはい</rt></ruby>、ベトナム<ruby>人<rt>じん</rt></ruby>が<ruby>来<rt>く</rt></ruby>ると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Nghe nói tháng 5 có kohai mới người Việt sang.)* |
| Phong | はい、トゥアンくん、<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。<ruby>指導員<rt>しどういん</rt></ruby>に<ruby>選<rt>えら</rt></ruby>ばれました。<br>*(Vâng, Tuấn-kun, 21 tuổi. Em được chọn làm chỉ đạo viên.)* |
| Carlos | フォンさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Phong-san thì không sao. Cùng cố lên nhé.)* |

---

## Tình huống 2 — Cổng garage Anjo · 7:40, chào sempai Hiroshi và 整備士長 Yamada

| Vai | Lời thoại |
|---|---|
| Phong | おはようございます、<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>。<ruby>新年度<rt>しんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng, anh trưởng kỹ thuật Yamada. Năm tài khoá mới mong anh chỉ bảo ạ.)* |
| Yamada | おはよう、フォンさん。こちらこそよろしく。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、おめでとう。<br>*(Chào Phong-san. Anh cũng vậy. Chúc mừng năm thứ 2.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Hiroshi | フォン、おはよう。<ruby>今日<rt>きょう</rt></ruby>から<ruby>制服<rt>せいふく</rt></ruby>の<ruby>名札<rt>なふだ</rt></ruby>に「リーダー」って<ruby>付<rt>つ</rt></ruby>くんだぜ。<br>*(Phong, chào. Từ hôm nay đồng phục cậu có gắn chữ "リーダー" đó.)* |
| Phong | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>恥<rt>は</rt></ruby>ずかしいです。<br>*(Ơ, thật ạ? Em ngại quá.)* |
| Yamada | <ruby>恥<rt>は</rt></ruby>ずかしがらなくていい。<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>真面目<rt>まじめ</rt></ruby>にやった<ruby>結果<rt>けっか</rt></ruby>だ。<br>*(Không cần ngại. Là kết quả 1 năm cậu nghiêm túc.)* |
| Hiroshi | <ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>工場長<rt>こうじょうちょう</rt></ruby>が<ruby>正式<rt>せいしき</rt></ruby>に<ruby>発表<rt>はっぴょう</rt></ruby>するからな。<br>*(Sáng nay trưởng xưởng sẽ thông báo chính thức.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ cố gắng.)* |

---

## Tình huống 3 — Sảnh garage · 8:00, 朝礼 năm tài khoá mới với 工場長 Sato

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>新年度<rt>しんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người chào buổi sáng. Năm tài khoá mới mong mọi người chỉ giáo.)* |
| Cả xưởng | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng. Mong được chỉ giáo.)* |
| Sato | <ruby>本年度<rt>ほんねんど</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>無事故<rt>むじこ</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>車検<rt>しゃけん</rt></ruby><ruby>件数<rt>けんすう</rt></ruby><ruby>前年<rt>ぜんねん</rt></ruby><ruby>比<rt>ひ</rt></ruby>110%。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>外国人<rt>がいこくじん</rt></ruby>スタッフの<ruby>育成<rt>いくせい</rt></ruby>です。<br>*(Mục tiêu năm nay 3 điều. Một, không tai nạn. Hai, số 車検 đạt 110% so năm ngoái. Ba, đào tạo nhân viên nước ngoài.)* |
| Sato | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>体制<rt>たいせい</rt></ruby>です。<ruby>軽点検<rt>けいてんけん</rt></ruby>ラインのリーダー、グエン・フォンさん。<br>*(Hôm nay bắt đầu cơ cấu mới. Trưởng line kiểm tra nhẹ là Nguyễn Phong.)* |
| Phong | はい!グエン・フォンです。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng! Em là Nguyễn Phong. Em sẽ cố gắng hết sức. Mong mọi người chỉ giáo.)* |
| Cả xưởng | (vỗ tay) よろしく!<br>*(Chúc mừng!)* |
| Sato | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby>のトゥアンくんが<ruby>来<rt>き</rt></ruby>ます。フォンさんが<ruby>指導員<rt>しどういん</rt></ruby>です。<br>*(Tháng 5 có nhân viên mới Tuấn-kun đến. Phong-san làm 指導員.)* |

---

## Tình huống 4 — 朝礼 sau phần thông báo · 8:15, Phong đặt câu hỏi lễ phép

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか?<br>*(Trưởng xưởng, em xin hỏi được không ạ?)* |
| Sato | どうぞ、フォンさん。<br>*(Mời, Phong-san.)* |
| Phong | <ruby>軽点検<rt>けいてんけん</rt></ruby>リーダーの<ruby>仕事内容<rt>しごとないよう</rt></ruby>を、もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただけますか?<br>*(Cho em xác nhận lại nội dung công việc của trưởng line kiểm tra nhẹ một lần nữa được không ạ?)* |
| Sato | いい<ruby>質問<rt>しつもん</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>朝<rt>あさ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby><ruby>割<rt>わ</rt></ruby>り<ruby>振<rt>ふ</rt></ruby>り。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>異常<rt>いじょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、メンバーの<ruby>体調<rt>たいちょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Câu hỏi hay. Có 3. Một, phân công việc buổi sáng. Hai, có bất thường báo trưởng kỹ thuật. Ba, kiểm tra thể trạng thành viên.)* |
| Phong | つまり、<ruby>割<rt>わ</rt></ruby>り<ruby>振<rt>ふ</rt></ruby>り・<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>体調<rt>たいちょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ということですね。<br>*(Tức là, phân công, báo cáo, kiểm tra thể trạng, đúng không ạ?)* |
| Sato | そのとおりです。よく<ruby>整理<rt>せいり</rt></ruby>できましたね。<br>*(Đúng vậy. Em tóm tắt tốt đấy.)* |
| Phong | すみません、もう<ruby>一<rt>ひと</rt></ruby>つ。「<ruby>作業<rt>さぎょう</rt></ruby><ruby>割<rt>わ</rt></ruby>り<ruby>振<rt>ふ</rt></ruby>り」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, một câu nữa. "Phân công việc" cụ thể là gì ạ?)* |
| Sato | <ruby>誰<rt>だれ</rt></ruby>がどの<ruby>車<rt>くるま</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>するかを<ruby>決<rt>き</rt></ruby>めることです。<ruby>朝<rt>あさ</rt></ruby>、<ruby>整備士長<rt>せいびしちょう</rt></ruby>から<ruby>当日<rt>とうじつ</rt></ruby>の<ruby>入庫<rt>にゅうこ</rt></ruby><ruby>表<rt>ひょう</rt></ruby>をもらって、ホワイトボードに<ruby>書<rt>か</rt></ruby>きます。<br>*(Là quyết định ai phụ trách xe nào. Buổi sáng nhận bảng nhập xưởng từ trưởng kỹ thuật, viết lên bảng trắng.)* |
| Phong | <ruby>入庫<rt>にゅうこ</rt></ruby><ruby>表<rt>ひょう</rt></ruby>とホワイトボード、ということですね。ご<ruby>説明<rt>せつめい</rt></ruby>ありがとうございます。<br>*(Bảng nhập xưởng và bảng trắng ạ. Cảm ơn anh đã giải thích.)* |

---

## Tình huống 5 — ピット軽点検 · 8:40, lần đầu phân công kíp sáng

*Phong cầm bảng nhập xưởng tới ピット, đứng trước bảng trắng.*

| Vai | Lời thoại |
|---|---|
| Phong | おはようございます、<ruby>皆<rt>みな</rt></ruby>さん。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>軽点検<rt>けいてんけん</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>台<rt>だい</rt></ruby>です。<br>*(Chào buổi sáng mọi người. Hôm nay kiểm tra nhẹ 5 xe.)* |
| Carlos | おはよう、リーダー。<br>*(Chào sếp.)* |
| Phong | カルロスさん、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>リフトにアクアの<ruby>定期点検<rt>ていきてんけん</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Carlos, lift số 1 kiểm tra định kỳ xe Aqua, nhờ anh.)* |
| Carlos | <ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Rõ.)* |
| Phong | ヒロシ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>リフト、プリウスのオイル<ruby>交換<rt>こうかん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Sempai Hiroshi, lift số 2, thay dầu Prius, nhờ anh.)* |
| Hiroshi | はいよ。リーダー<ruby>口調<rt>くちょう</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>だな。<br>*(Ờ. Cách nói trưởng nhóm khá lắm.)* |
| Phong | <ruby>私<rt>わたし</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>リフトでヴィッツのタイヤ<ruby>交換<rt>こうかん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<ruby>何<rt>なに</rt></ruby>かあれば<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Em phụ trách lift số 3 thay lốp Vitz. Có gì xin lên tiếng nhé.)* |
| Carlos | <ruby>体調<rt>たいちょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>もある?<br>*(Có kiểm tra thể trạng nữa hả?)* |
| Phong | はい。<ruby>皆<rt>みな</rt></ruby>さん、<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>具合<rt>ぐあい</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い<ruby>方<rt>かた</rt></ruby>はいませんか?<br>*(Vâng. Mọi người thể trạng có ổn không? Có ai không khoẻ không?)* |
| Hiroshi | <ruby>俺<rt>おれ</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Tôi ổn.)* |
| Carlos | <ruby>私<rt>わたし</rt></ruby>も<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Tôi cũng ổn.)* |
| Phong | では、<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>安全第一<rt>あんぜんだいいち</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy ta bắt đầu. An toàn là số một, mong mọi người.)* |

---

## Tình huống 6 — ピット · 9:30, xác nhận quy trình trước khi cho xe lên cầu

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、ちょっとよろしいでしょうか?<br>*(Anh Yamada, em xin một chút được không ạ?)* |
| Yamada | どうした、フォン。<br>*(Sao thế, Phong.)* |
| Phong | ヴィッツのタイヤ<ruby>交換<rt>こうかん</rt></ruby>ですが、<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただけますか?<br>*(Vụ thay lốp Vitz, anh cho em xác nhận quy trình được không ạ?)* |
| Yamada | どうぞ。<br>*(Mời.)* |
| Phong | まず、リフトに<ruby>載<rt>の</rt></ruby>せる<ruby>前<rt>まえ</rt></ruby>に、ホイールナットを<ruby>緩<rt>ゆる</rt></ruby>めます。<ruby>次<rt>つぎ</rt></ruby>に<ruby>車<rt>くるま</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げて、ナットを<ruby>外<rt>はず</rt></ruby>して、タイヤを<ruby>交換<rt>こうかん</rt></ruby>します。<ruby>最後<rt>さいご</rt></ruby>に<ruby>車<rt>くるま</rt></ruby>を<ruby>下<rt>お</rt></ruby>ろしてから、トルクレンチで<ruby>規定値<rt>きていち</rt></ruby>に<ruby>締<rt>し</rt></ruby>めます。<ruby>規定値<rt>きていち</rt></ruby>は103ニュートンメートルです。という<ruby>手順<rt>てじゅん</rt></ruby>でよろしいでしょうか?<br>*(Trước tiên, trước khi lên lift, nới ốc bánh. Tiếp theo nâng xe, tháo ốc, thay lốp. Cuối cùng hạ xe rồi siết bằng cờ lê lực theo trị số quy định. Trị số 103 Nm. Quy trình như vậy có đúng không ạ?)* |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>だ。<ruby>規定<rt>きてい</rt></ruby><ruby>値<rt>ち</rt></ruby>もちゃんと<ruby>覚<rt>おぼ</rt></ruby>えてるな。<br>*(Hoàn hảo. Nhớ cả trị số quy định nhỉ.)* |
| Phong | はい。<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng. Em nhớ từ lúc học 3 cấp.)* |
| Yamada | <ruby>一<rt>ひと</rt></ruby>つだけ。<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めの<ruby>順番<rt>じゅんばん</rt></ruby>は?<br>*(Một điểm nữa. Thứ tự siết bù thì sao?)* |
| Phong | はい、<ruby>対角線<rt>たいかくせん</rt></ruby><ruby>順<rt>じゅん</rt></ruby>です。<br>*(Vâng, theo đường chéo ạ.)* |
| Yamada | よし。<ruby>進<rt>すす</rt></ruby>めてくれ。<br>*(Tốt. Tiến hành đi.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 7 — ピット · 10:30, giải thích lại cho Carlos bằng JP đơn giản

*Carlos quen JP nhưng đôi khi cần Phong giải thích lại từ chuyên ngành.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォンさん、ちょっといい?この<ruby>紙<rt>かみ</rt></ruby>に「<ruby>残量<rt>ざんりょう</rt></ruby>」って<ruby>書<rt>か</rt></ruby>いてあるけど、<ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>くの?<br>*(Phong-san, được không? Trên giấy này viết "残量", phải viết cái gì?)* |
| Phong | あ、「<ruby>残量<rt>ざんりょう</rt></ruby>」は「<ruby>残<rt>のこ</rt></ruby>っている<ruby>量<rt>りょう</rt></ruby>」のことです。<br>*(À, "残量" là "lượng còn lại" đấy.)* |
| Carlos | <ruby>残<rt>のこ</rt></ruby>っている<ruby>量<rt>りょう</rt></ruby>?<br>*(Lượng còn lại?)* |
| Phong | はい。たとえば、ブレーキパッドの<ruby>厚<rt>あつ</rt></ruby>さ。<ruby>新品<rt>しんぴん</rt></ruby>は10ミリ、<ruby>今<rt>いま</rt></ruby>5ミリなら、<ruby>残量<rt>ざんりょう</rt></ruby>5ミリです。<br>*(Vâng. Ví dụ, độ dày má phanh. Mới là 10mm, giờ 5mm thì 残量 5mm.)* |
| Carlos | あー、わかった!タイヤの<ruby>溝<rt>みぞ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ?<br>*(À, hiểu rồi! Rãnh lốp cũng vậy?)* |
| Phong | そうです。タイヤの<ruby>溝<rt>みぞ</rt></ruby>の<ruby>深<rt>ふか</rt></ruby>さも<ruby>残量<rt>ざんりょう</rt></ruby>と<ruby>言<rt>い</rt></ruby>います。つまり、まだ<ruby>使<rt>つか</rt></ruby>える<ruby>量<rt>りょう</rt></ruby>ということです。<br>*(Đúng. Độ sâu rãnh lốp cũng gọi là 残量. Tức là lượng còn dùng được.)* |
| Carlos | わかりやすい!フォンさん、<ruby>説明<rt>せつめい</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Dễ hiểu! Phong-san giải thích giỏi hơn rồi nhỉ.)* |
| Phong | カルロスさんに<ruby>褒<rt>ほ</rt></ruby>めてもらえて、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Được anh Carlos khen, em vui lắm.)* |

---

## Tình huống 8 — Văn phòng 工場長 · 13:30, nhận chính thức nhiệm vụ 指導員 cho Tuấn

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、お<ruby>呼<rt>よ</rt></ruby>びしました。<ruby>失礼<rt>しつれい</rt></ruby>します。お<ruby>掛<rt>か</rt></ruby>けください。<br>*(Phong-san, tôi gọi em. Em vào đi. Mời ngồi.)* |
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |
| Sato | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>、ベトナム・ハイフォンからトゥアンくんが<ruby>到着<rt>とうちゃく</rt></ruby>します。<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>N5レベル、<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby><ruby>専攻<rt>せんこう</rt></ruby>の<ruby>専門学校<rt>せんもんがっこう</rt></ruby><ruby>卒業<rt>そつぎょう</rt></ruby>です。<br>*(Ngày 5/5, Tuấn-kun từ Hải Phòng Việt Nam đến. 21 tuổi, tiếng Nhật N5, tốt nghiệp trường nghề chuyên ngành ô tô.)* |
| Phong | <ruby>同郷<rt>どうきょう</rt></ruby>のハイフォンですか。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cùng quê Hải Phòng ạ. Em vui lắm.)* |
| Sato | はい。<ruby>同<rt>おな</rt></ruby>じ<ruby>出身<rt>しゅっしん</rt></ruby>だからこそ、フォンさんにお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>指導員<rt>しどういん</rt></ruby>として、トゥアンくんの<ruby>仕事<rt>しごと</rt></ruby>と<ruby>生活<rt>せいかつ</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>をサポートしてください。<br>*(Vâng. Vì cùng quê nên tôi nhờ Phong-san. Là 指導員, hỗ trợ cả công việc lẫn cuộc sống cho Tuấn-kun.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em rõ ạ. Em sẽ cố gắng hết sức.)* |
| Sato | <ruby>具体的<rt>ぐたいてき</rt></ruby>には、<ruby>初<rt>はじ</rt></ruby>めの<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>、トゥアンくんと<ruby>同<rt>おな</rt></ruby>じピットで<ruby>作業<rt>さぎょう</rt></ruby>してください。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>に<ruby>面談<rt>めんだん</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cụ thể là 3 tháng đầu, làm cùng ピット với Tuấn-kun. Mỗi thứ 6 cũng nhờ em phỏng vấn 1 lần.)* |
| Phong | はい、ピットで<ruby>一緒<rt>いっしょ</rt></ruby>に、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>、ということですね。<br>*(Vâng, cùng ピット, mỗi thứ 6 面談, đúng không ạ?)* |
| Sato | そのとおり。ご<ruby>協力<rt>きょうりょく</rt></ruby>ありがとうございます。<br>*(Đúng. Cảm ơn em hợp tác.)* |
| Phong | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em mới phải cảm ơn ạ.)* |

---

## Tình huống 9 — 食堂 garage · 12:00, ăn trưa với Hiroshi — xin coaching tips

| Vai | Lời thoại |
|---|---|
| Hiroshi | フォン、お<ruby>疲<rt>つか</rt></ruby>れ。<ruby>朝<rt>あさ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>した?<br>*(Phong, vất vả. Sáng chào cờ căng thẳng không?)* |
| Phong | はい、<ruby>足<rt>あし</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました。<br>*(Vâng, chân em run.)* |
| Hiroshi | <ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>そうだった。<ruby>慣<rt>な</rt></ruby>れるよ。<br>*(Tôi lúc đầu cũng vậy. Sẽ quen thôi.)* |
| Phong | ヒロシ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えるコツを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Sempai Hiroshi, anh chỉ em bí quyết dạy kohai với.)* |
| Hiroshi | コツは<ruby>三<rt>みっ</rt></ruby>つ。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>自分<rt>じぶん</rt></ruby>でまずやって<ruby>見<rt>み</rt></ruby>せる。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>一緒<rt>いっしょ</rt></ruby>にやる。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>一人<rt>ひとり</rt></ruby>でやらせて<ruby>見守<rt>みまも</rt></ruby>る。<br>*(Bí quyết 3 điều. Một, mình làm cho xem trước. Hai, cùng làm. Ba, để tự làm rồi quan sát.)* |
| Phong | 「<ruby>見<rt>み</rt></ruby>せる→<ruby>一緒<rt>いっしょ</rt></ruby>に→<ruby>一人<rt>ひとり</rt></ruby>で」、ということですね。<br>*(Là "cho xem → cùng làm → một mình" ạ?)* |
| Hiroshi | そう。あと、ボルトの<ruby>規定値<rt>きていち</rt></ruby>とか<ruby>数字<rt>すうじ</rt></ruby>は、<ruby>口<rt>くち</rt></ruby>で<ruby>言<rt>い</rt></ruby>って、<ruby>書<rt>か</rt></ruby>かせて、<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>させる。<ruby>三<rt>みっ</rt></ruby>つの<ruby>方法<rt>ほうほう</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えさせるんだ。<br>*(Còn nữa, trị số ốc và số liệu thì nói miệng, để viết, để nói thành tiếng. Học bằng 3 cách.)* |
| Phong | なるほど、<ruby>言<rt>い</rt></ruby>って・<ruby>書<rt>か</rt></ruby>いて・<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す、ですね。メモします。<br>*(Ra vậy, nói/viết/đọc thành tiếng ạ. Em ghi lại.)* |
| Hiroshi | あと、<ruby>怒<rt>おこ</rt></ruby>るな。<ruby>俺<rt>おれ</rt></ruby>がフォンに<ruby>怒鳴<rt>どな</rt></ruby>ったことあったか?<br>*(Còn nữa, đừng nổi nóng. Tôi đã từng quát Phong chưa?)* |
| Phong | いいえ、<ruby>一度<rt>いちど</rt></ruby>もありません。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Không, một lần cũng chưa. Em thực sự biết ơn.)* |
| Hiroshi | <ruby>怒<rt>おこ</rt></ruby>っても<ruby>覚<rt>おぼ</rt></ruby>えないんだ。<ruby>褒<rt>ほ</rt></ruby>める<ruby>方<rt>ほう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>い。<br>*(Nổi nóng cũng không nhớ. Khen thì nhanh hơn.)* |
| Phong | ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Cảm ơn anh đã chỉ bảo.)* |

---

## Tình huống 10 — Văn phòng 整備士長 Yamada · 15:00, hỏi thêm về chuẩn bị cho Tuấn

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、ちょっとよろしいでしょうか?<br>*(Anh Yamada, em xin một chút được không ạ?)* |
| Yamada | どうぞ。<br>*(Mời.)* |
| Phong | トゥアンくんの<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れですが、ピットで<ruby>準備<rt>じゅんび</rt></ruby>することを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Vụ đón Tuấn-kun, anh cho em biết những gì cần chuẩn bị tại ピット được không ạ?)* |
| Yamada | <ruby>四<rt>よっ</rt></ruby>つある。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>専用<rt>せんよう</rt></ruby>のロッカー。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>作業着<rt>さぎょうぎ</rt></ruby>・<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>・<ruby>軍手<rt>ぐんて</rt></ruby>のサイズ<ruby>確認<rt>かくにん</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>個人<rt>こじん</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>セットの<ruby>用意<rt>ようい</rt></ruby>。<ruby>四<rt>よっ</rt></ruby>つ、<ruby>初日<rt>しょにち</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>マニュアル。<br>*(Có 4. Một, tủ riêng. Hai, xác nhận size đồng phục/giày bảo hộ/găng tay. Ba, chuẩn bị bộ dụng cụ cá nhân. Bốn, manual giải thích ngày đầu.)* |
| Phong | <ruby>個人<rt>こじん</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby>セットというのは、<ruby>何<rt>なに</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っていますか?<br>*(Bộ dụng cụ cá nhân thì gồm những gì ạ?)* |
| Yamada | スパナ・メガネレンチ・プラスドライバー・マイナスドライバー・ペンチ・トルクレンチ。<ruby>基本<rt>きほん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>点<rt>てん</rt></ruby>セットだ。<br>*(Mỏ lết / cờ lê vòng / tô vít bake / tô vít dẹt / kìm / cờ lê lực. Bộ cơ bản 6 món.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。サイズは<ruby>事前<rt>じぜん</rt></ruby>に<ruby>監理団体<rt>かんりだんたい</rt></ruby>から<ruby>聞<rt>き</rt></ruby>けますか?<br>*(Em rõ ạ. Size thì có thể hỏi trước đoàn thể giám sát không ạ?)* |
| Yamada | はい、フォンさんから<ruby>監理員<rt>かんりいん</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>してください。それも<ruby>指導員<rt>しどういん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Có, Phong-san liên hệ với giám sát viên đi. Đó cũng là việc của 指導員.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今週中<rt>こんしゅうちゅう</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Em rõ ạ. Trong tuần em sẽ liên lạc. Cảm ơn anh đã chỉ bảo.)* |

---

## Tình huống 11 — Ngoài cổng garage · 17:40, tan ca với Carlos

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>初日<rt>しょにち</rt></ruby>のリーダー、どうだった?<br>*(Phong, vất vả. Ngày đầu trưởng nhóm thế nào?)* |
| Phong | <ruby>長<rt>なが</rt></ruby>かったです。<ruby>朝<rt>あさ</rt></ruby>から<ruby>夕方<rt>ゆうがた</rt></ruby>まで、<ruby>頭<rt>あたま</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きっぱなしでした。<br>*(Dài lắm. Từ sáng tới chiều, đầu chạy không nghỉ.)* |
| Carlos | <ruby>分<rt>わ</rt></ruby>かるよ。<ruby>私<rt>わたし</rt></ruby>もブラジルで<ruby>整備士<rt>せいびし</rt></ruby>リーダーやった<ruby>時<rt>とき</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じだった。<br>*(Hiểu. Tôi hồi làm trưởng kỹ thuật ở Brazil cũng vậy.)* |
| Phong | カルロスさん、ブラジルでもリーダーだったんですか?<br>*(Anh Carlos ở Brazil cũng từng làm trưởng nhóm sao?)* |
| Carlos | はい、<ruby>5<rt>ご</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>。でも<ruby>日本<rt>にほん</rt></ruby>では、<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくて、<ruby>一<rt>いち</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めました。<br>*(Vâng, 5 năm. Nhưng ở Nhật, tiếng Nhật khó nên tôi bắt đầu lại từ đầu.)* |
| Phong | <ruby>知<rt>し</rt></ruby>らなかった。すごい<ruby>経験<rt>けいけん</rt></ruby>ですね。<br>*(Em không biết. Kinh nghiệm tuyệt thật.)* |
| Carlos | フォンさん、<ruby>後輩<rt>こうはい</rt></ruby>のトゥアンに<ruby>言<rt>い</rt></ruby>っておいて。<ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>諦<rt>あきら</rt></ruby>めないこと。<br>*(Phong-san, nói trước cho kohai Tuấn. Có thất bại cũng không sao. Quan trọng là đừng bỏ cuộc.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>えます。ありがとうございます。<br>*(Vâng, nhất định em sẽ truyền lại. Cảm ơn anh.)* |

---

## Tình huống 12 — Bếp ký túc · 19:00, ăn tối với Hiroshi và Carlos kể chuyện một ngày

| Vai | Lời thoại |
|---|---|
| Hiroshi | フォン、<ruby>今日<rt>きょう</rt></ruby>の<ruby>晩<rt>ばん</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>?<br>*(Phong, tối nay ăn gì?)* |
| Phong | ベトナム<ruby>料理<rt>りょうり</rt></ruby>の<ruby>豚肉<rt>ぶたにく</rt></ruby>と<ruby>魚醤<rt>ぎょしょう</rt></ruby>の<ruby>炒<rt>いた</rt></ruby>めです。<ruby>食<rt>た</rt></ruby>べますか?<br>*(Món Việt — thịt heo xào nước mắm. Anh ăn không?)* |
| Hiroshi | <ruby>魚醤<rt>ぎょしょう</rt></ruby>、にんにくの<ruby>匂<rt>にお</rt></ruby>いか?もらおう。<br>*(Nước mắm, mùi tỏi à? Cho tôi với.)* |
| Carlos | <ruby>私<rt>わたし</rt></ruby>もブラジル<ruby>料理<rt>りょうり</rt></ruby>のフェイジョアーダ<ruby>作<rt>つく</rt></ruby>った、シェアします。<br>*(Tôi cũng nấu feijoada Brazil, chia sẻ nhé.)* |
| Phong | <ruby>3<rt>さん</rt></ruby>カ<ruby>国<rt>こく</rt></ruby>の<ruby>夕食<rt>ゆうしょく</rt></ruby>ですね。<br>*(Bữa tối 3 quốc gia rồi nhỉ.)* |
| Hiroshi | <ruby>来月<rt>らいげつ</rt></ruby>からトゥアンも<ruby>加<rt>くわ</rt></ruby>わるな。<br>*(Tháng sau Tuấn cũng tham gia nhỉ.)* |
| Phong | はい。トゥアンくんはハイフォン<ruby>出身<rt>しゅっしん</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じです。<br>*(Vâng. Tuấn-kun người Hải Phòng, cùng quê em.)* |
| Carlos | <ruby>嬉<rt>うれ</rt></ruby>しいでしょう、<ruby>同郷<rt>どうきょう</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>。<br>*(Mừng nhỉ, kohai cùng quê.)* |
| Phong | はい、でも<ruby>不安<rt>ふあん</rt></ruby>もあります。<ruby>厳<rt>きび</rt></ruby>しくしすぎないか、<ruby>優<rt>やさ</rt></ruby>しくしすぎないか、バランスが<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Vâng, nhưng cũng có lo. Có nghiêm khắc quá hay dịu dàng quá không, cân bằng khó.)* |
| Hiroshi | バランスは<ruby>失敗<rt>しっぱい</rt></ruby>しながら<ruby>覚<rt>おぼ</rt></ruby>えるんだ。<ruby>俺<rt>おれ</rt></ruby>もそうだったから。<br>*(Cân bằng học qua thất bại. Tôi cũng vậy.)* |
| Carlos | フォンさん、<ruby>自分<rt>じぶん</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じて。<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>った<ruby>結果<rt>けっか</rt></ruby>がリーダーだよ。<br>*(Phong-san, tin chính mình. Trưởng nhóm là kết quả 1 năm cố gắng đó.)* |
| Phong | ありがとうございます。お<ruby>二人<rt>ふたり</rt></ruby>のおかげで、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Cảm ơn hai anh. Nhờ hai anh, em thực sự biết ơn.)* |

---

## Tình huống 13 — Phòng Phong · 21:00, gọi điện về Hải Phòng cho bố (Cảnh tiếng Việt)

> Cảnh tiếng Việt — gọi Zalo về VN, kể chuyện ngày đầu năm 2 và ôn từ JP đã học.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, nghe rõ không? |
| Bố Phong | (tiếng Việt) Nghe rõ. Khoẻ chứ con? |
| Phong | (tiếng Việt) Con khoẻ bố. Hôm nay là ngày đầu của năm tài khoá mới bên Nhật — bên này gọi là *shinnendo* — 新年度. Cũng là ngày đầu năm 2 của con. |
| Bố Phong | (tiếng Việt) Nhanh nhỉ, mới đó đã một năm. Có gì mới ở xưởng không? |
| Phong | (tiếng Việt) Bố ơi, hôm nay trưởng xưởng *koujouchou* Sato thông báo con là *riidaa* — リーダー của line kiểm tra nhẹ. Trên đồng phục con có gắn chữ リーダー rồi bố ạ. |
| Bố Phong | (tiếng Việt) Trời ơi, con của bố là trưởng nhóm rồi! Mấy năm trước bố làm cơ khí ở cảng cũng từng làm tổ trưởng, biết áp lực thế nào. |
| Phong | (tiếng Việt) Đúng bố. Hôm nay cả ngày đầu chạy không nghỉ. Sáng phải đứng trước cả xưởng tự giới thiệu, chân con run luôn. |
| Bố Phong | (tiếng Việt) Bình thường con ạ. Lần đầu ai cũng run. Rồi sao nữa? |
| Phong | (tiếng Việt) Còn nữa bố. Tháng 5 có em kohai mới từ Hải Phòng sang, tên Tuấn, 21 tuổi. Con được làm *shidouin* — 指導員, người hướng dẫn. Em đó cùng quê mình bố ạ. |
| Bố Phong | (tiếng Việt) Cùng Hải Phòng à? Hỏi xem nhà ở quận nào, biết đâu quen người nhà. |
| Phong | (tiếng Việt) Vâng, con sẽ hỏi. Bố ơi, dạy người mới khó không bố? Con lo lắm. |
| Bố Phong | (tiếng Việt) Khó. Nhưng có 3 điều — đừng nổi nóng, nói chậm, làm cho nó xem trước. Bố dạy thợ phụ ở cảng cũng vậy thôi. |
| Phong | (tiếng Việt) Bố ơi hay quá. Anh sempai Hiroshi cũng nói y vậy: "見せる→一緒に→一人で" — cho xem trước, cùng làm, để tự làm. |
| Bố Phong | (tiếng Việt) Vậy là kinh nghiệm thợ Nhật với thợ Việt giống nhau con ạ. Cứ thế mà làm. Khen nhiều, đừng quát. |
| Phong | (tiếng Việt) Vâng bố. À, hôm nay con cũng xác nhận quy trình thay lốp với anh trưởng kỹ thuật Yamada bằng tiếng Nhật, anh ấy khen con hoàn hảo. Trị số siết bù lốp Vitz là 103 *nyuuton meetoru*. |
| Bố Phong | (tiếng Việt) Bố nghe mà tự hào. Con cứ giữ sức khoẻ. Mẹ gửi lời hỏi thăm. |
| Phong | (tiếng Việt) Vâng. Con gửi lời chúc mẹ. Con đi nghỉ đây bố. |

---

## Tình huống 14 — Bàn học phòng Phong · 22:00, viết nhật ký lưu mẫu câu chương

| Vai | Lời thoại |
|---|---|
| Phong | (đọc nhẩm khi viết) <ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>つい</rt></ruby><ruby>日<rt>たち</rt></ruby>。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>。<ruby>軽点検<rt>けいてんけん</rt></ruby>リーダー<ruby>就任<rt>しゅうにん</rt></ruby>。<br>*(1/4. Ngày đầu năm 2. Nhậm chức trưởng kiểm tra nhẹ.)* |
| Phong | <ruby>今日<rt>きょう</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>: <ruby>新年度<rt>しんねんど</rt></ruby>・<ruby>体制<rt>たいせい</rt></ruby>・<ruby>割<rt>わ</rt></ruby>り<ruby>振<rt>ふ</rt></ruby>り・<ruby>入庫<rt>にゅうこ</rt></ruby><ruby>表<rt>ひょう</rt></ruby>・<ruby>残量<rt>ざんりょう</rt></ruby>・<ruby>規定値<rt>きていち</rt></ruby>・<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>め・<ruby>対角線<rt>たいかくせん</rt></ruby><ruby>順<rt>じゅん</rt></ruby>・<ruby>指導員<rt>しどういん</rt></ruby>・<ruby>面談<rt>めんだん</rt></ruby>。<br>*(Từ học hôm nay: năm tài khoá, cơ cấu, phân công, bảng nhập xưởng, lượng còn lại, trị số quy định, siết bù, theo đường chéo, chỉ đạo viên, phỏng vấn.)* |
| Phong | <ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>表現<rt>ひょうげん</rt></ruby>: <ruby>新年度<rt>しんねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします・<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか・〜という<ruby>手順<rt>てじゅん</rt></ruby>でよろしいでしょうか・〜ということですね・<ruby>承知<rt>しょうち</rt></ruby>しました・ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Mẫu câu dùng hôm nay: chào năm mới tài khoá, em xin hỏi được không, quy trình như vậy có đúng không, tức là ~ phải không, em rõ ạ, cảm ơn anh chỉ bảo.)* |
| Phong | ヒロシ<ruby>先輩<rt>せんぱい</rt></ruby>のコツ:<ruby>見<rt>み</rt></ruby>せる→<ruby>一緒<rt>いっしょ</rt></ruby>に→<ruby>一人<rt>ひとり</rt></ruby>で。<ruby>怒<rt>おこ</rt></ruby>るな、<ruby>褒<rt>ほ</rt></ruby>めろ。<ruby>父<rt>ちち</rt></ruby>:<ruby>優<rt>やさ</rt></ruby>しく、ゆっくり、<ruby>何度<rt>なんど</rt></ruby>も。<br>*(Bí quyết Hiroshi: cho xem → cùng → một mình. Đừng giận, hãy khen. Bố: dịu dàng, chậm, nhiều lần.)* |
| Phong | <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>5<ruby>日<rt>か</rt></ruby>、トゥアンくん<ruby>到着<rt>とうちゃく</rt></ruby>。<ruby>準備<rt>じゅんび</rt></ruby>:ロッカー・<ruby>作業着<rt>さぎょうぎ</rt></ruby>サイズ・<ruby>工具<rt>こうぐ</rt></ruby>セット・マニュアル。<br>*(5/5 Tuấn-kun đến. Chuẩn bị: tủ, size đồng phục, bộ dụng cụ, manual.)* |

---

## Đọng lại chương 1

Ngày đầu năm tài khoá năm 2, Phong học bộ mẫu câu sempai năm 2 ngành ô tô: **chào năm mới tài khoá với cấp trên** (新年度もよろしくお願いいたします), **đặt câu hỏi lễ phép trong 朝礼** (質問してもよろしいでしょうか), **xác nhận lại quy trình kỹ thuật** (〜という手順でよろしいでしょうか), **tóm tắt lại lời chỉ thị** (つまり〜ということですね), **nhận chính thức nhiệm vụ リーダー và 指導員** (承知しました・精一杯頑張ります), và **cảm ơn lời chỉ bảo của 先輩** (ご指導ありがとうございます). Phong tiếp nhận coaching từ Hiroshi (「**見せる→一緒に→一人で**」+ 「**怒るな、褒めろ**」), từ Yamada về 4 việc chuẩn bị đón kohai (ロッカー・作業着サイズ・個人工具セット・マニュアル), và từ bố ở Hải Phòng (「優しく、ゆっくり、何度も」). Đồng thời nắm các từ chuyên ngành garage năm 2: 残量, 規定値, 増し締め, 対角線順, トルクレンチ 103 ニュートンメートル.

> Từ vựng & mẫu câu chương này: 新年度・体制・軽点検・リーダー・割り振り・入庫表・残量・規定値・増し締め・対角線順・トルクレンチ・指導員・面談・新年度もよろしくお願いいたします・質問してもよろしいでしょうか・〜という手順でよろしいでしょうか・〜ということですね・承知しました・精一杯頑張ります・ご指導ありがとうございます・見せる→一緒に→一人で・怒るな褒めろ

## Bí quyết chương

- Năm tài khoá Nhật bắt đầu 1/4 — `新年度のご挨拶` là mẫu chào BẮT BUỘC với cấp trên ngày đầu tiên.
- Khi nhận chức 「リーダー」 trong 朝礼, luôn đứng dậy nói rõ: tên + 「精一杯頑張ります」+「よろしくお願いいたします」.
- Trước khi thao tác kỹ thuật quan trọng (đặc biệt liên quan an toàn), confirm lại với 整備士長 bằng mẫu `〜という手順でよろしいでしょうか` — sempai Nhật rất quý thái độ này.
- Lốp xe Vitz/Aqua thường thấy: trị số siết quy định 103 N·m, siết theo `対角線順`, có bước `増し締め` sau khi hạ xe.
- Coaching kohai theo 3 nguồn kết hợp: 「見せる→一緒に→一人で」(Hiroshi) + 「怒るな、褒めろ」(Hiroshi) + 「優しく、ゆっくり、何度も」(bố ở VN).
- Khi giải thích từ chuyên ngành cho đồng nghiệp nước ngoài (Carlos), tách thành 「〜は〜のことです」+ ví dụ cụ thể đo bằng số liệu (ブレーキパッド 10ミリ→5ミリ).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新年度 | しんねんど | TÂN NIÊN ĐỘ | Năm tài khoá mới (bắt đầu 1/4) |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Căng thẳng, hồi hộp |
| 軽点検 | けいてんけん | KHINH ĐIỂM KIỂM | Kiểm tra nhẹ (định kỳ ngắn) |
| 級 | きゅう | CẤP | Cấp (3級, 2級...) |
| 合格 | ごうかく | HỢP CÁCH | Đậu, đạt |
| 指導員 | しどういん | CHỈ ĐẠO VIÊN | Người hướng dẫn (cho TTS/kohai) |
| 整備士長 | せいびしちょう | CHỈNH BỊ SỸ TRƯỞNG | Trưởng kỹ thuật |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | Trưởng xưởng |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp đầu ngày |
| 制服 | せいふく | CHẾ PHỤC | Đồng phục |
| 名札 | なふだ | DANH TRÁT | Bảng tên đeo |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 本年度 | ほんねんど | BẢN NIÊN ĐỘ | Năm tài khoá này |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |
| 無事故 | むじこ | VÔ SỰ CỐ | Không tai nạn |
| 車検 | しゃけん | XA KIỂM | Đăng kiểm xe |
| 件数 | けんすう | KIỆN SỐ | Số lượng vụ việc |
| 体制 | たいせい | THỂ CHẾ | Cơ cấu tổ chức |
| 育成 | いくせい | DỤC THÀNH | Đào tạo |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức mình |
| 質問 | しつもん | CHẤT VẤN | Câu hỏi |
| 確認 | かくにん | XÁC NHẬN | Xác nhận, kiểm tra |
| 作業 | さぎょう | TÁC NGHIỆP | Công việc, thao tác |
| 割り振り | わりふり | CÁT CHẤN | Phân công |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 体調 | たいちょう | THỂ ĐIỀU | Thể trạng |
| 異常 | いじょう | DỊ THƯỜNG | Bất thường |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 入庫 | にゅうこ | NHẬP KHỐ | Xe nhập xưởng |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | An toàn là số một |
| 手順 | てじゅん | THỦ THUẬN | Quy trình, trình tự |
| 緩める | ゆるめる | HOÃN | Nới lỏng (ốc) |
| 規定値 | きていち | QUY ĐỊNH TRỊ | Trị số quy định |
| 締める | しめる | THẮT | Siết, vặn chặt |
| 増し締め | ましじめ | TĂNG TIẾT | Siết bù (sau khi hạ xe) |
| 対角線 | たいかくせん | ĐỐI GIÁC TUYẾN | Đường chéo |
| トルクレンチ | — | — | Cờ lê lực (torque wrench) |
| 残量 | ざんりょう | TÀN LƯỢNG | Lượng còn lại |
| 新品 | しんぴん | TÂN PHẨM | Hàng mới |
| 厚さ | あつさ | HẬU | Độ dày |
| 溝 | みぞ | CÂU | Rãnh (lốp) |
| 深さ | ふかさ | THÂM | Độ sâu |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| 専門学校 | せんもんがっこう | CHUYÊN MÔN HỌC HIỆU | Trường nghề |
| 同郷 | どうきょう | ĐỒNG HƯƠNG | Cùng quê |
| 面談 | めんだん | DIỆN ĐÀM | Phỏng vấn 1-1 |
| 協力 | きょうりょく | HIỆP LỰC | Hợp tác |
| 個人工具 | こじんこうぐ | CÁ NHÂN CÔNG CỤ | Dụng cụ cá nhân |
| 軍手 | ぐんて | QUÂN THỦ | Găng tay công việc |
| 安全靴 | あんぜんぐつ | AN TOÀN HÀI | Giày bảo hộ |
| スパナ | — | — | Mỏ lết (spanner) |
| メガネレンチ | — | — | Cờ lê vòng |
| ペンチ | — | — | Kìm (pliers) |
| 監理員 | かんりいん | GIÁM LÝ VIÊN | Giám sát viên (đoàn thể) |
| 諦める | あきらめる | ĐẾ | Bỏ cuộc |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000002, 800000044, NULL, 'markdown_book', 'T2. Kohai Tuấn từ Hải Phòng sang — Phong dạy lại (後輩到着・教える日)', '# Sách thực tập sinh ô tô · T2. Kohai Tuấn từ Hải Phòng sang — Phong dạy lại (後輩到着・教える日)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng, năm 2, N4→N3) lần đầu làm 指導員 đón và dạy kohai Tuấn (21 tuổi, cùng quê). Học các mẫu hội thoại tiếng Nhật của sempai-of-sempai ngành ô tô: giới thiệu kohai với cấp trên (こちら、新人の〜です), đưa hướng dẫn an toàn lao động bằng câu mệnh lệnh mềm (〜てください・〜ないでください), dạy thao tác cơ bản theo 「見せる→一緒に→一人で」, khen kohai khi làm đúng (よくできました・上手ですね), sửa nhẹ khi sai (〜の方がいいですよ), và báo cáo tiến độ với 整備士長 (報告いたします).

---

## Bối cảnh

Ngày 5 tháng 5 năm 2026. Sau 1 tháng chuẩn bị, Phong ra sân bay Chubu Centrair (Nagoya) đón kohai Tuấn. Tuấn 21 tuổi, cùng quê Hải Phòng, học chuyên ngành cơ khí ô tô 3 năm tại trường nghề Việt Nam, tiếng Nhật N5. Carlos lái xe đưa Phong đi đón. Chương này tập trung các mẫu câu sempai-of-sempai năm 2 ngành ô tô: đón tại sân bay, giới thiệu với 工場長・整備士長, hướng dẫn an toàn ピット, dạy 6 món dụng cụ cơ bản theo phương pháp「見せる→一緒に→一人で」, và báo cáo tiến độ kohai cuối tuần.

---

## Tình huống 1 — Sân bay Chubu Centrair · 14:00, đón Tuấn ở cổng đến quốc tế

| Vai | Lời thoại |
|---|---|
| Phong | (vẫy tay) トゥアン!こっち、こっち!<br>*(Tuấn! Chỗ này, chỗ này!)* |
| Tuấn | (tiếng Việt) Anh Phong! Chào anh ạ! |
| Phong | (tiếng Việt) Mệt không em? Bay 6 tiếng nhỉ. |
| Tuấn | (tiếng Việt) Em hơi mệt, nhưng háo hức lắm anh. |
| Phong | はい、トゥアン、<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。こちら、カルロスさん、ブラジル<ruby>人<rt>じん</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>です。<br>*(Được rồi Tuấn, mình luyện tiếng Nhật nhé. Đây là anh Carlos, sempai người Brazil.)* |
| Tuấn | はじめまして、グエン・トゥアンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp, tôi là Nguyễn Tuấn. Mong được chỉ giáo.)* |
| Carlos | はじめまして、カルロスです。よろしくね。<ruby>疲<rt>つか</rt></ruby>れた?<br>*(Lần đầu gặp, tôi là Carlos. Chào em nhé. Mệt không?)* |
| Tuấn | <ruby>少<rt>すこ</rt></ruby>し<ruby>疲<rt>つか</rt></ruby>れました。でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Hơi mệt. Nhưng không sao.)* |
| Phong | では、<ruby>車<rt>くるま</rt></ruby>で<ruby>寮<rt>りょう</rt></ruby>へ<ruby>行<rt>い</rt></ruby>きましょう。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>くらいかかります。<br>*(Vậy mình lên xe về ký túc. Mất khoảng 1 tiếng.)* |
| Tuấn | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |

---

## Tình huống 2 — Xe trên cao tốc về Anjo · 14:30, Phong giới thiệu cuộc sống ký túc

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、<ruby>寮<rt>りょう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>歩<rt>ある</rt></ruby>いて<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>です。<br>*(Tuấn, ký túc cách công ty đi bộ 5 phút.)* |
| Tuấn | <ruby>近<rt>ちか</rt></ruby>くて、いいですね。<br>*(Gần thật, tốt quá.)* |
| Phong | <ruby>部屋<rt>へや</rt></ruby>は<ruby>個室<rt>こしつ</rt></ruby>です。シャワーとキッチンは<ruby>共用<rt>きょうよう</rt></ruby>です。<br>*(Phòng riêng. Buồng tắm và bếp là dùng chung.)* |
| Tuấn | <ruby>共用<rt>きょうよう</rt></ruby>、というのは?<br>*(共用 là gì ạ?)* |
| Phong | みんなで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うことです。<br>*(Tức là dùng chung với mọi người.)* |
| Tuấn | わかりました。<br>*(Em hiểu rồi.)* |
| Carlos | フォンさんと<ruby>私<rt>わたし</rt></ruby>とヒロシさんが<ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>です。<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Phong-san, tôi và Hiroshi-san cùng ký túc. Có gì khó cứ hỏi bất cứ lúc nào nhé.)* |
| Tuấn | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Phong | <ruby>明日<rt>あした</rt></ruby>は<ruby>休<rt>やす</rt></ruby>みです。<ruby>明後日<rt>あさって</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時半<rt>じはん</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>へ<ruby>行<rt>い</rt></ruby>きます。<ruby>初日<rt>しょにち</rt></ruby>です。<br>*(Mai nghỉ. Ngày kia 7:30 sáng đi công ty. Là ngày đầu.)* |
| Tuấn | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |
| Phong | あと、<ruby>大事<rt>だいじ</rt></ruby>なこと。<ruby>在留<rt>ざいりゅう</rt></ruby>カードは<ruby>必<rt>かなら</rt></ruby>ず<ruby>持<rt>も</rt></ruby>っていてください。<ruby>失<rt>な</rt></ruby>くさないでください。<br>*(Và một điều quan trọng. Thẻ cư trú phải luôn mang theo. Đừng đánh mất.)* |
| Tuấn | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>持<rt>も</rt></ruby>ちます。<br>*(Vâng, em sẽ luôn mang theo.)* |

---

## Tình huống 3 — Văn phòng 工場長 Sato · ngày kia 8:00, Phong giới thiệu Tuấn

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、おはようございます。<ruby>新人<rt>しんじん</rt></ruby>のトゥアンくんを<ruby>連<rt>つ</rt></ruby>れてまいりました。<br>*(Trưởng xưởng, chào buổi sáng. Em đưa nhân viên mới Tuấn-kun đến.)* |
| Sato | おはようございます。トゥアンくん、ようこそ。<br>*(Chào buổi sáng. Tuấn-kun, hoan nghênh.)* |
| Phong | こちら、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>入社<rt>にゅうしゃ</rt></ruby>のグエン・トゥアンさん、<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>、ベトナム・ハイフォン<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Đây là Nguyễn Tuấn, nhập công ty từ tháng 5, 21 tuổi, người Hải Phòng Việt Nam.)* |
| Tuấn | はじめまして、グエン・トゥアンと<ruby>申<rt>もう</rt></ruby>します。<ruby>21<rt>にじゅういっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>です。ハイフォンから<ruby>来<rt>き</rt></ruby>ました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp, tôi là Nguyễn Tuấn. 21 tuổi. Đến từ Hải Phòng. Mong được chỉ giáo.)* |
| Sato | しっかりした<ruby>挨拶<rt>あいさつ</rt></ruby>ですね。<ruby>専攻<rt>せんこう</rt></ruby>は<ruby>自動車<rt>じどうしゃ</rt></ruby><ruby>整備<rt>せいび</rt></ruby>ですね?<br>*(Chào hỏi vững vàng đấy. Chuyên ngành là ô tô nhỉ?)* |
| Tuấn | はい、<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しました。でも<ruby>日本<rt>にほん</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Vâng, em đã học 3 năm. Nhưng xe Nhật là lần đầu.)* |
| Sato | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、フォンさんが<ruby>指導員<rt>しどういん</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じハイフォン<ruby>出身<rt>しゅっしん</rt></ruby>ですから、<ruby>安心<rt>あんしん</rt></ruby>してください。<br>*(Không sao, Phong-san là chỉ đạo viên. Cùng quê Hải Phòng, em yên tâm.)* |
| Tuấn | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Sato | フォンさん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>と<ruby>工具<rt>こうぐ</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phong-san, hôm nay nhờ giáo dục an toàn và giải thích dụng cụ.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 4 — ピット入口 · 8:30, Phong giới thiệu Tuấn với 整備士長 và Hiroshi

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、ヒロシ<ruby>先輩<rt>せんぱい</rt></ruby>、おはようございます。こちら、<ruby>新人<rt>しんじん</rt></ruby>のグエン・トゥアンさんです。<br>*(Anh Yamada, sempai Hiroshi, chào buổi sáng. Đây là Nguyễn Tuấn nhân viên mới.)* |
| Tuấn | はじめまして、グエン・トゥアンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp, em là Nguyễn Tuấn. Mong được chỉ giáo.)* |
| Yamada | おう、よろしく。<ruby>整備<rt>せいび</rt></ruby>は<ruby>勉強<rt>べんきょう</rt></ruby>したそうだな?<br>*(Ờ, chào em. Nghe nói em học sửa chữa rồi nhỉ?)* |
| Tuấn | はい、<ruby>学校<rt>がっこう</rt></ruby>で<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Vâng, em học ở trường 3 năm.)* |
| Hiroshi | <ruby>俺<rt>おれ</rt></ruby>はヒロシ。<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>リフトのオイル<ruby>交換<rt>こうかん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<ruby>困<rt>こま</rt></ruby>ったら<ruby>呼<rt>よ</rt></ruby>んでくれ。<br>*(Tôi là Hiroshi. Phụ trách thay dầu lift số 3. Có gì khó cứ gọi.)* |
| Tuấn | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh.)* |
| Yamada | フォンさん、<ruby>本日<rt>ほんじつ</rt></ruby>と<ruby>明日<rt>あした</rt></ruby>は<ruby>軽点検<rt>けいてんけん</rt></ruby>ラインで<ruby>一緒<rt>いっしょ</rt></ruby>に。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>実作業<rt>じつさぎょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってください。<br>*(Phong-san, hôm nay và mai cùng làm tại line kiểm tra nhẹ. Tuần sau dần vào việc thực tế.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。トゥアン、まず<ruby>更衣室<rt>こういしつ</rt></ruby>へ<ruby>行<rt>い</rt></ruby>こう。<ruby>作業着<rt>さぎょうぎ</rt></ruby>に<ruby>着替<rt>きが</rt></ruby>えます。<br>*(Em rõ. Tuấn, trước tiên mình đến phòng thay đồ. Thay đồng phục.)* |
| Tuấn | はい。<br>*(Vâng.)* |

---

## Tình huống 5 — Phòng thay đồ · 8:45, hướng dẫn 5 món bảo hộ và quy tắc 5S

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、ロッカーは22<ruby>番<rt>ばん</rt></ruby>。<ruby>名札<rt>なふだ</rt></ruby>がついています。<br>*(Tuấn, tủ số 22. Có gắn bảng tên.)* |
| Tuấn | はい、ありました。<br>*(Vâng, có rồi ạ.)* |
| Phong | <ruby>作業<rt>さぎょう</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>セット<rt>せっと</rt></ruby>です。<ruby>作業着<rt>さぎょうぎ</rt></ruby>・<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>・<ruby>軍手<rt>ぐんて</rt></ruby>・<ruby>保護<rt>ほご</rt></ruby>メガネ・<ruby>耳栓<rt>みみせん</rt></ruby>。<ruby>5<rt>いつ</rt></ruby>つ、<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Bộ 5 món. Đồng phục, giày bảo hộ, găng tay, kính bảo hộ, nút tai. Năm món, nhớ nhé.)* |
| Tuấn | <ruby>作業着<rt>さぎょうぎ</rt></ruby>・<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>・<ruby>軍手<rt>ぐんて</rt></ruby>・<ruby>保護<rt>ほご</rt></ruby>メガネ・<ruby>耳栓<rt>みみせん</rt></ruby>。<br>*(Đồng phục, giày bảo hộ, găng tay, kính bảo hộ, nút tai.)* |
| Phong | <ruby>上手<rt>じょうず</rt></ruby>ですね。それから、ピットに<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>です。<ruby>一<rt>ひと</rt></ruby>つでも<ruby>忘<rt>わす</rt></ruby>れたらピットに<ruby>入<rt>はい</rt></ruby>らないでください。<br>*(Giỏi. Và trước khi vào ピット phải kiểm tra 5 món. Quên 1 món cũng không được vào ピット.)* |
| Tuấn | はい、わかりました。<br>*(Vâng, em hiểu rồi.)* |
| Phong | <ruby>大事<rt>だいじ</rt></ruby>な4S(よんエス)を<ruby>教<rt>おし</rt></ruby>えます。<ruby>整理<rt>せいり</rt></ruby>・<ruby>整頓<rt>せいとん</rt></ruby>・<ruby>清掃<rt>せいそう</rt></ruby>・<ruby>清潔<rt>せいけつ</rt></ruby>。<br>*(Dạy em 4S quan trọng. Sắp xếp, ngăn nắp, lau sạch, sạch sẽ.)* |
| Tuấn | あ、<ruby>学校<rt>がっこう</rt></ruby>でも<ruby>習<rt>なら</rt></ruby>いました。<br>*(À, em học ở trường rồi.)* |
| Phong | よかった!<ruby>使<rt>つか</rt></ruby>った<ruby>工具<rt>こうぐ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>元<rt>もと</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>してください。<br>*(Tốt! Dụng cụ dùng xong phải trả về chỗ cũ.)* |
| Tuấn | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 6 — ピット · 9:00, hướng dẫn an toàn — câu cấm 〜ないでください

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、ピットでの<ruby>安全<rt>あんぜん</rt></ruby>ルールを<ruby>5<rt>いつ</rt></ruby>つ<ruby>教<rt>おし</rt></ruby>えます。<br>*(Tuấn, dạy em 5 quy tắc an toàn ピット.)* |
| Tuấn | はい、メモを<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng, em sẽ ghi chú.)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つ、リフトの<ruby>下<rt>した</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ<ruby>時<rt>とき</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>安全<rt>あんぜん</rt></ruby>ロックを<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Một, khi đứng dưới cầu nâng, phải kiểm tra khoá an toàn.)* |
| Phong | <ruby>二<rt>ふた</rt></ruby>つ、<ruby>走<rt>はし</rt></ruby>らないでください。ピットの<ruby>中<rt>なか</rt></ruby>では<ruby>転<rt>ころ</rt></ruby>びやすいです。<br>*(Hai, đừng chạy. Trong ピット dễ trượt.)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つ、<ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>は<ruby>使<rt>つか</rt></ruby>わないでください。<ruby>休憩室<rt>きゅうけいしつ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ba, đừng dùng điện thoại. Vào phòng nghỉ.)* |
| Phong | <ruby>四<rt>よっ</rt></ruby>つ、<ruby>火気<rt>かき</rt></ruby><ruby>厳禁<rt>げんきん</rt></ruby>。タバコは<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>吸<rt>す</rt></ruby>わないでください。<br>*(Bốn, cấm lửa. Tuyệt đối không hút thuốc.)* |
| Phong | <ruby>五<rt>いつ</rt></ruby>つ、<ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>自分<rt>じぶん</rt></ruby><ruby>判断<rt>はんだん</rt></ruby>しないでください。<ruby>必<rt>かなら</rt></ruby>ず<ruby>私<rt>わたし</rt></ruby>か<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Năm, khi không hiểu tuyệt đối đừng tự quyết. Phải hỏi anh hoặc trưởng kỹ thuật.)* |
| Tuấn | はい、<ruby>5<rt>いつ</rt></ruby>つ、メモしました。<br>*(Vâng, 5 điều, em ghi rồi.)* |
| Phong | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>5<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>です。「わからない」は<ruby>恥<rt>はず</rt></ruby>かしくないです。<ruby>勝手<rt>かって</rt></ruby>にやるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Quan trọng nhất là điều 5. "Không hiểu" không xấu hổ. Tự ý làm mới nguy hiểm nhất.)* |
| Tuấn | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, em sẽ hỏi.)* |

---

## Tình huống 7 — Bàn dụng cụ · 10:00, dạy 6 món工具 cơ bản theo「見せる→一緒に→一人で」

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、これがトゥアン<ruby>専用<rt>せんよう</rt></ruby>の<ruby>工具<rt>こうぐ</rt></ruby>セット。<ruby>6<rt>ろく</rt></ruby><ruby>点<rt>てん</rt></ruby>あります。<br>*(Tuấn, đây là bộ dụng cụ riêng của em. Có 6 món.)* |
| Tuấn | わあ、ありがとうございます!<br>*(Wow, em cảm ơn anh!)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>します。これはスパナ。<br>*(Mình xác nhận từng cái. Đây là mỏ lết.)* |
| Tuấn | スパナ。<br>*(Mỏ lết.)* |
| Phong | これはメガネレンチ。<br>*(Đây là cờ lê vòng.)* |
| Tuấn | メガネレンチ。<br>*(Cờ lê vòng.)* |
| Phong | プラスドライバーとマイナスドライバー。プラスは<ruby>十字<rt>じゅうじ</rt></ruby>、マイナスは<ruby>一文字<rt>いちもんじ</rt></ruby>です。<br>*(Tô vít bake và tô vít dẹt. Bake là chữ thập, dẹt là một vạch.)* |
| Tuấn | プラス・マイナス、わかりやすいです。<br>*(Bake, dẹt, dễ hiểu.)* |
| Phong | これはペンチ、これがトルクレンチ。<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>道具<rt>どうぐ</rt></ruby>です。<br>*(Đây là kìm, đây là cờ lê lực. Dụng cụ quan trọng nhất.)* |
| Tuấn | トルクレンチ。<ruby>規定値<rt>きていち</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る<ruby>道具<rt>どうぐ</rt></ruby>ですよね?<br>*(Cờ lê lực. Là dụng cụ đo trị số quy định phải không ạ?)* |
| Phong | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>学校<rt>がっこう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>った?<br>*(Tuyệt vời! Học ở trường rồi à?)* |
| Tuấn | はい、ベトナムでも<ruby>同<rt>おな</rt></ruby>じです。<br>*(Vâng, ở VN cũng vậy.)* |
| Phong | では、まず<ruby>私<rt>わたし</rt></ruby>がやって<ruby>見<rt>み</rt></ruby>せます。このボルトを<ruby>緩<rt>ゆる</rt></ruby>める<ruby>練習<rt>れんしゅう</rt></ruby>です。<br>*(Vậy trước tiên anh làm cho em xem. Bài tập nới ốc này.)* |
| Phong | (cầm cờ lê, thao tác chậm) こうやって、メガネレンチを<ruby>掛<rt>か</rt></ruby>けて、<ruby>反時計<rt>はんとけい</rt></ruby><ruby>回<rt>まわ</rt></ruby>りに<ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。<br>*(Như thế này, tròng cờ lê vòng, đẩy ngược chiều kim đồng hồ.)* |
| Tuấn | (nhìn) はい。<br>*(Vâng.)* |
| Phong | <ruby>次<rt>つぎ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にやってみましょう。<ruby>手<rt>て</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えますよ。<br>*(Tiếp theo, mình cùng làm. Anh giữ tay em.)* |
| Phong & Tuấn | (cùng nới ốc) ...<br>*( )* |
| Phong | はい、<ruby>次<rt>つぎ</rt></ruby>はトゥアン<ruby>一人<rt>ひとり</rt></ruby>でやってみてください。<br>*(Được rồi, tiếp theo Tuấn tự làm thử.)* |
| Tuấn | はい!(thử) ...<ruby>外<rt>はず</rt></ruby>れました。<br>*(Vâng! Tháo ra rồi.)* |
| Phong | <ruby>上手<rt>じょうず</rt></ruby>です!よくできました。<br>*(Giỏi! Làm tốt lắm.)* |

---

## Tình huống 8 — ピット · 11:30, Tuấn nhầm dụng cụ — Phong sửa nhẹ

| Vai | Lời thoại |
|---|---|
| Tuấn | <ruby>先輩<rt>せんぱい</rt></ruby>、このボルト<ruby>外<rt>はず</rt></ruby>します。スパナでいいですか?<br>*(Sempai, em tháo ốc này. Dùng mỏ lết được không ạ?)* |
| Phong | (xem ốc) うーん、このボルトは<ruby>固<rt>かた</rt></ruby>そうですね。スパナより、メガネレンチの<ruby>方<rt>ほう</rt></ruby>がいいですよ。<br>*(Ừm, ốc này có vẻ cứng. Hơn mỏ lết, dùng cờ lê vòng thì hơn đó.)* |
| Tuấn | え、どうしてですか?<br>*(Ơ, vì sao ạ?)* |
| Phong | スパナは2<ruby>点<rt>てん</rt></ruby>で<ruby>力<rt>ちから</rt></ruby>がかかります。<ruby>固<rt>かた</rt></ruby>いボルトは<ruby>角<rt>かど</rt></ruby>が<ruby>潰<rt>つぶ</rt></ruby>れやすいです。メガネレンチは6<ruby>点<rt>てん</rt></ruby>で<ruby>力<rt>ちから</rt></ruby>がかかるので、<ruby>安全<rt>あんぜん</rt></ruby>です。<br>*(Mỏ lết tác lực 2 điểm. Ốc cứng dễ bị toè cạnh. Cờ lê vòng tác lực 6 điểm nên an toàn hơn.)* |
| Tuấn | なるほど!<ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Ra vậy! Em không biết.)* |
| Phong | <ruby>固<rt>かた</rt></ruby>そうなボルト=メガネレンチ、<ruby>緩<rt>ゆる</rt></ruby>いボルト=スパナ、と<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Ốc có vẻ cứng = cờ lê vòng, ốc lỏng = mỏ lết, nhớ thế.)* |
| Tuấn | <ruby>固<rt>かた</rt></ruby>い=メガネ、<ruby>緩<rt>ゆる</rt></ruby>い=スパナ。メモします。<br>*(Cứng = cờ lê vòng, lỏng = mỏ lết. Em ghi.)* |
| Phong | あとね、ボルトの<ruby>頭<rt>あたま</rt></ruby>のサイズも<ruby>確<rt>たし</rt></ruby>かめてください。10ミリと12ミリは<ruby>違<rt>ちが</rt></ruby>います。<ruby>合<rt>あ</rt></ruby>わないレンチを<ruby>使<rt>つか</rt></ruby>うと、ボルトが<ruby>壊<rt>こわ</rt></ruby>れます。<br>*(Còn nữa, kiểm tra cả size đầu ốc. 10 và 12 ly khác nhau. Dùng cờ lê không khớp sẽ làm hỏng ốc.)* |
| Tuấn | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>必<rt>かなら</rt></ruby>ずサイズを<ruby>確認<rt>かくにん</rt></ruby>します。ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございます。<br>*(Em rõ. Sẽ luôn xác nhận size. Cảm ơn anh chỉ bảo.)* |

---

## Tình huống 9 — 食堂 · 12:00, ăn trưa, Tuấn hỏi Phong về N5→N4

| Vai | Lời thoại |
|---|---|
| Tuấn | <ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>聞<rt>き</rt></ruby>きしてもいいですか?<br>*(Sempai, em hỏi được không ạ?)* |
| Phong | どうぞ、なんでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Cứ hỏi, gì cũng được.)* |
| Tuấn | <ruby>先輩<rt>せんぱい</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>がとても<ruby>上手<rt>じょうず</rt></ruby>です。どうやって<ruby>勉強<rt>べんきょう</rt></ruby>しましたか?<br>*(Sempai tiếng Nhật giỏi quá. Anh học thế nào ạ?)* |
| Phong | ありがとう。<ruby>方法<rt>ほうほう</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つあります。<br>*(Cảm ơn em. Có 3 cách.)* |
| Phong | <ruby>一<rt>ひと</rt></ruby>つ、<ruby>毎日<rt>まいにち</rt></ruby>のメモ。<ruby>新<rt>あたら</rt></ruby>しい<ruby>単語<rt>たんご</rt></ruby>はその<ruby>日<rt>ひ</rt></ruby>に<ruby>書<rt>か</rt></ruby>く。<ruby>二<rt>ふた</rt></ruby>つ、<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>真似<rt>まね</rt></ruby>。カルロスさんとヒロシさんの<ruby>話<rt>はな</rt></ruby>し<ruby>方<rt>かた</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>する。<ruby>三<rt>みっ</rt></ruby>つ、<ruby>夜<rt>よる</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>JLPT N3の<ruby>勉強<rt>べんきょう</rt></ruby>。<br>*(Một, ghi chú hàng ngày. Từ mới viết ngay hôm đó. Hai, bắt chước sempai. Bắt chước cách nói của Carlos và Hiroshi. Ba, tối học JLPT N3 1 tiếng.)* |
| Tuấn | <ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>?すごいです。<br>*(Mỗi ngày 1 tiếng? Tuyệt thật.)* |
| Phong | <ruby>最初<rt>さいしょ</rt></ruby>は30<ruby>分<rt>ぷん</rt></ruby>でいいです。<ruby>続<rt>つづ</rt></ruby>けることが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Lúc đầu 30 phút cũng được. Quan trọng là duy trì.)* |
| Tuấn | はい。<ruby>私<rt>わたし</rt></ruby>はN5なので、まずN4<ruby>合格<rt>ごうかく</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Vâng. Em N5 nên trước hết nhắm đậu N4.)* |
| Phong | いい<ruby>目標<rt>もくひょう</rt></ruby>です。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>のN4試<ruby>験<rt>けん</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みましょう。<br>*(Mục tiêu hay. Đăng ký thi N4 tháng 12 nhé.)* |
| Tuấn | はい!<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng! Em cố gắng.)* |

---

## Tình huống 10 — ピット · 14:00, dạy đếm số bằng tiếng Nhật khi đọc 整備票

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、これが<ruby>整備票<rt>せいびひょう</rt></ruby>。<ruby>車<rt>くるま</rt></ruby>の<ruby>整備<rt>せいび</rt></ruby><ruby>記録<rt>きろく</rt></ruby>です。<br>*(Tuấn, đây là phiếu bảo dưỡng. Ghi chép bảo dưỡng xe.)* |
| Tuấn | はい。<br>*(Vâng.)* |
| Phong | <ruby>数字<rt>すうじ</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>読<rt>よ</rt></ruby>みましょう。<ruby>車検<rt>しゃけん</rt></ruby><ruby>満了日<rt>まんりょうび</rt></ruby>、<ruby>令和<rt>れいわ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>。<br>*(Đọc số thành tiếng nhé. Ngày hết hạn 車検, Reiwa năm 8 tháng 10 ngày 15.)* |
| Tuấn | れいわ<ruby>8<rt>はち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>。<br>*(Reiwa năm 8 tháng 10 ngày 15.)* |
| Phong | <ruby>走行<rt>そうこう</rt></ruby><ruby>距離<rt>きょり</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>百<rt>びゃく</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby>キロ。<br>*(Số km đi, 52.345 km.)* |
| Tuấn | <ruby>5<rt>ご</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>千<rt>せん</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>百<rt>びゃく</rt></ruby><ruby>45<rt>よんじゅうご</rt></ruby>キロ。<br>*(52.345 km.)* |
| Phong | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>百<rt>びゃく</rt></ruby>と<ruby>千<rt>せん</rt></ruby>と<ruby>万<rt>まん</rt></ruby>、<ruby>注意<rt>ちゅうい</rt></ruby>してください。<ruby>10<rt>じゅう</rt></ruby><ruby>万<rt>まん</rt></ruby>キロは「じゅうまん」です。<br>*(Tuyệt vời. Trăm, ngàn, vạn — chú ý. 100.000km là "juuman".)* |
| Tuấn | はい、<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby>は10,000、<ruby>10<rt>じゅう</rt></ruby><ruby>万<rt>まん</rt></ruby>は100,000ですよね。<br>*(Vâng, 万 là 10.000, 10万 là 100.000 nhỉ.)* |
| Phong | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>夜<rt>よる</rt></ruby>、<ruby>数字<rt>すうじ</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しましょうね。<br>*(Hoàn hảo. Tối luyện số nhé.)* |

---

## Tình huống 11 — ピット · 16:30, Tuấn lần đầu hoàn thành 1 phần thao tác — Phong khen

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、<ruby>初日<rt>しょにち</rt></ruby>の<ruby>仕上<rt>しあ</rt></ruby>げです。アクアのオイル<ruby>残量<rt>ざんりょう</rt></ruby>を<ruby>点検<rt>てんけん</rt></ruby>してみましょう。<ruby>一人<rt>ひとり</rt></ruby>でやってみてください。<br>*(Tuấn, công đoạn cuối ngày đầu. Kiểm tra lượng dầu xe Aqua. Em thử tự làm.)* |
| Tuấn | え、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>一人<rt>ひとり</rt></ruby>で?<br>*(Ơ, thật sự một mình ạ?)* |
| Phong | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>近<rt>ちか</rt></ruby>くで<ruby>見<rt>み</rt></ruby>ています。<ruby>失敗<rt>しっぱい</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Yên tâm, anh đứng gần xem. Sai cũng không sao.)* |
| Tuấn | はい。(thực hiện) エンジン<ruby>停止<rt>ていし</rt></ruby>。ボンネット<ruby>開<rt>あ</rt></ruby>けます。レベルゲージを<ruby>抜<rt>ぬ</rt></ruby>いて、<ruby>布<rt>ぬの</rt></ruby>で<ruby>拭<rt>ふ</rt></ruby>いて、もう<ruby>一度<rt>いちど</rt></ruby><ruby>挿<rt>さ</rt></ruby>して、<ruby>抜<rt>ぬ</rt></ruby>いて<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Tắt máy. Mở capo. Rút que thăm, lau khăn, cắm lại, rút ra kiểm tra.)* |
| Phong | (gật đầu) ...<br>*( )* |
| Tuấn | レベルは<ruby>上限<rt>じょうげん</rt></ruby>マークと<ruby>下限<rt>かげん</rt></ruby>マークの<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>です。<ruby>正常<rt>せいじょう</rt></ruby>です。<br>*(Mức giữa vạch trên và vạch dưới. Bình thường.)* |
| Phong | <ruby>素晴<rt>すば</rt></ruby>らしい!よくできました。<ruby>手順<rt>てじゅん</rt></ruby>も<ruby>判断<rt>はんだん</rt></ruby>も<ruby>完璧<rt>かんぺき</rt></ruby>です。<br>*(Tuyệt! Làm rất tốt. Quy trình và phán đoán đều hoàn hảo.)* |
| Tuấn | (sáng mặt) ありがとうございます!<br>*(Em cảm ơn ạ!)* |
| Phong | <ruby>整備票<rt>せいびひょう</rt></ruby>に<ruby>結果<rt>けっか</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。「オイル<ruby>残量<rt>ざんりょう</rt></ruby>:<ruby>正常<rt>せいじょう</rt></ruby>」。サインも。<br>*(Ghi kết quả vào phiếu. "Lượng dầu: bình thường". Ký luôn.)* |
| Tuấn | はい!<br>*(Vâng!)* |

---

## Tình huống 12 — Văn phòng 整備士長 · 17:00, Phong báo cáo tiến độ ngày đầu của Tuấn

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>のトゥアンくんの<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Anh Yamada, em xin phép. Em xin báo cáo tiến độ Tuấn-kun hôm nay.)* |
| Yamada | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby>ルール<ruby>5<rt>いつ</rt></ruby>つ、<ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>セット<rt>せっと</rt></ruby>、4S、<ruby>個人<rt>こじん</rt></ruby><ruby>工具<rt>こうぐ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>点<rt>てん</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>を<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<br>*(Hôm nay, đã hoàn tất giải thích 5 quy tắc an toàn, bộ 5 món, 4S, 6 món dụng cụ cá nhân.)* |
| Yamada | はい。<br>*(Vâng.)* |
| Phong | <ruby>午後<rt>ごご</rt></ruby>、ボルトを<ruby>緩<rt>ゆる</rt></ruby>める<ruby>練習<rt>れんしゅう</rt></ruby>と、アクアのオイル<ruby>残量<rt>ざんりょう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を<ruby>一人<rt>ひとり</rt></ruby>でできました。<ruby>判断<rt>はんだん</rt></ruby>も<ruby>正<rt>ただ</rt></ruby>しかったです。<br>*(Chiều, luyện nới ốc và kiểm tra dầu Aqua tự làm được. Phán đoán cũng đúng.)* |
| Yamada | <ruby>初日<rt>しょにち</rt></ruby>で?<ruby>速<rt>はや</rt></ruby>いな。<br>*(Ngày đầu á? Nhanh nhỉ.)* |
| Phong | はい。<ruby>学校<rt>がっこう</rt></ruby>で<ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>した<ruby>基礎<rt>きそ</rt></ruby>がしっかりしています。<br>*(Vâng. Nền 3 năm học ở trường vững.)* |
| Yamada | 一<ruby>点<rt>てん</rt></ruby>、<ruby>気<rt>き</rt></ruby>になることは?<br>*(Một điểm nào lo không?)* |
| Phong | スパナとメガネレンチの<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けが<ruby>少<rt>すこ</rt></ruby>し<ruby>混乱<rt>こんらん</rt></ruby>していました。<ruby>明日<rt>あした</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>します。<br>*(Phân biệt mỏ lết và cờ lê vòng hơi rối. Mai em ôn lại.)* |
| Yamada | わかった。フォン、よくやった。<ruby>明日<rt>あした</rt></ruby>もよろしく。<br>*(Hiểu rồi. Phong, làm tốt. Mai nhờ tiếp.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Vâng, em rõ. Em xin phép.)* |

---

## Tình huống 13 — Bếp ký túc · 19:00, Phong và Tuấn ăn tối — phục hồi tinh thần kohai

*Cảnh hai người Việt nói tiếng Nhật để Tuấn luyện, đôi khi xen tiếng Việt.*

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、<ruby>初日<rt>しょにち</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Tuấn, ngày đầu vất vả rồi.)* |
| Tuấn | <ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Sempai, anh vất vả rồi.)* |
| Phong | (tiếng Việt) Mệt không em? Nói thật đi. |
| Tuấn | (tiếng Việt) Em mệt anh ơi. Đầu căng vì cố nghe tiếng Nhật cả ngày. |
| Phong | (tiếng Việt) Anh hiểu. Hồi sang anh cũng vậy, tối về đầu nóng ran. Cứ từ từ, 1-2 tuần là quen. |
| Tuấn | (tiếng Việt) Em sợ làm sai khiến anh bị mất uy tín với sếp. |
| Phong | (tiếng Việt) Đừng lo. Em là kohai của anh, anh là 指導員 của em, sai gì anh chịu một phần. Quan trọng là hỏi khi không hiểu — như điều 5 đó. |
| Tuấn | (tiếng Việt) Vâng. À anh ơi, ở Hải Phòng anh ở quận nào ạ? |
| Phong | (tiếng Việt) Anh quận Lê Chân. Em ở đâu? |
| Tuấn | (tiếng Việt) Em ở quận Ngô Quyền. Gần nhau ghê anh! |
| Phong | (tiếng Việt) Trời, đúng đồng hương rồi. Yên tâm, có gì cứ nói. À, mỗi tối mình họp 15 phút nhé, ôn lại từ mới với mẫu câu — tiếng Nhật thôi. |
| Tuấn | はい!<ruby>毎晩<rt>まいばん</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>、<ruby>復習<rt>ふくしゅう</rt></ruby>。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng! Mỗi tối 15 phút ôn tập. Mong anh chỉ giáo.)* |
| Phong | <ruby>今日<rt>きょう</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>、<ruby>言<rt>い</rt></ruby>ってみてください。<br>*(Từ học hôm nay, em đọc thử xem.)* |
| Tuấn | スパナ・メガネレンチ・プラスドライバー・マイナスドライバー・ペンチ・トルクレンチ・<ruby>残量<rt>ざんりょう</rt></ruby>・<ruby>規定値<rt>きていち</rt></ruby>・レベルゲージ・<ruby>上限<rt>じょうげん</rt></ruby>・<ruby>下限<rt>かげん</rt></ruby>。<br>*(Mỏ lết, cờ lê vòng, tô vít bake, tô vít dẹt, kìm, cờ lê lực, lượng còn, trị quy định, que thăm, vạch trên, vạch dưới.)* |
| Phong | <ruby>完璧<rt>かんぺき</rt></ruby>です!よく<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Hoàn hảo! Nhớ tốt lắm.)* |

---

## Tình huống 14 — Phòng Phong · 21:30, gọi điện báo bố Tuấn (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong gọi cho bố Tuấn ở Hải Phòng để báo Tuấn đã đến nơi an toàn.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) A lô bác ơi, cháu Phong đây ạ. Cháu là sempai dạy em Tuấn bên Nhật. |
| Bố Tuấn | (tiếng Việt) Ôi anh Phong, bác cảm ơn nhiều. Thằng Tuấn nó đến nơi an toàn chưa? |
| Phong | (tiếng Việt) Dạ, em Tuấn đã đến nơi an toàn ạ. Hôm nay là ngày đầu đi xưởng, em làm tốt lắm bác. |
| Bố Tuấn | (tiếng Việt) Bác mừng quá. Nó được khen không cháu? |
| Phong | (tiếng Việt) Có ạ. Em ấy kiểm tra dầu xe Aqua một mình thành công, được anh trưởng kỹ thuật khen "nhanh nhỉ". Anh trưởng xưởng tên Sato cũng khen em ấy chào hỏi vững vàng. |
| Bố Tuấn | (tiếng Việt) Hay quá. Anh chăm em giúp bác nhé. |
| Phong | (tiếng Việt) Dạ bác yên tâm. Cháu cũng người Hải Phòng, quận Lê Chân, gần nhà bác. Mỗi tối hai anh em ôn từ tiếng Nhật 15 phút. Em ấy chăm lắm. |
| Bố Tuấn | (tiếng Việt) Cảm ơn cháu nhiều. Bác sẽ điện cho bố cháu cảm ơn. Cố giữ sức khoẻ hai đứa nhé. |
| Phong | (tiếng Việt) Dạ vâng bác. Cháu xin phép. |

---

## Tình huống 15 — Bàn học phòng Phong · 22:00, viết nhật ký lưu mẫu câu chương

| Vai | Lời thoại |
|---|---|
| Phong | (đọc nhẩm khi viết) <ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>(<ruby>到着<rt>とうちゃく</rt></ruby>)〜<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>7<rt>なの</rt></ruby><ruby>日<rt>か</rt></ruby>(<ruby>初日<rt>しょにち</rt></ruby>)。トゥアンくん<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れ<ruby>完了<rt>かんりょう</rt></ruby>。<br>*(5/5 đến nơi → 7/5 ngày đầu. Đã hoàn tất tiếp nhận Tuấn-kun.)* |
| Phong | <ruby>今日<rt>きょう</rt></ruby><ruby>使<rt>つか</rt></ruby>った<ruby>指導<rt>しどう</rt></ruby><ruby>表現<rt>ひょうげん</rt></ruby>:こちら、<ruby>新人<rt>しんじん</rt></ruby>の〜です・〜てください・〜ないでください・<ruby>上手<rt>じょうず</rt></ruby>です・よくできました・〜の<ruby>方<rt>ほう</rt></ruby>がいいですよ・<ruby>素晴<rt>すば</rt></ruby>らしい・<ruby>完璧<rt>かんぺき</rt></ruby>です・<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Mẫu câu chỉ đạo hôm nay: đây là nhân viên mới ~, hãy ~, đừng ~, giỏi đấy, làm tốt, dùng ~ thì hơn, tuyệt vời, hoàn hảo, em xin báo cáo.)* |
| Phong | トゥアンくんが<ruby>覚<rt>おぼ</rt></ruby>えた<ruby>道具<rt>どうぐ</rt></ruby>:スパナ・メガネレンチ・プラスドライバー・マイナスドライバー・ペンチ・トルクレンチ。<ruby>初日<rt>しょにち</rt></ruby>で<ruby>6<rt>むっ</rt></ruby>つ<ruby>完璧<rt>かんぺき</rt></ruby>。<br>*(Dụng cụ Tuấn-kun đã nhớ: 6 món hoàn hảo trong ngày đầu.)* |
| Phong | <ruby>反省点<rt>はんせいてん</rt></ruby>:スパナとメガネレンチの<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けがまだ<ruby>曖昧<rt>あいまい</rt></ruby>。<ruby>明日<rt>あした</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>する。<br>*(Điểm cần rút: phân biệt mỏ lết và cờ lê vòng còn lờ mờ. Mai ôn.)* |

---

## Đọng lại chương 2

Phong lần đầu vận hành toàn bộ vòng đời 指導員 trong 2 ngày đón Tuấn: **đón sân bay** (こっち、こっち!), **giới thiệu kohai với cấp trên** (こちら、新人の〜です), **dùng câu mệnh lệnh mềm để dạy an toàn** (〜てください・〜ないでください), **dạy thao tác theo phương pháp 「見せる→一緒に→一人で」**, **khen kohai khi làm đúng** (上手ですね・よくできました・素晴らしい・完璧です), **sửa nhẹ khi sai bằng so sánh** (〜より、〜の方がいいですよ), và **báo cáo tiến độ kohai cho 整備士長** (報告いたします). Đã dạy Tuấn 5 quy tắc an toàn ピット, bộ 5 món bảo hộ, 4S, 6 món dụng cụ cơ bản, phân biệt スパナ vs メガネレンチ, cách đọc 整備票 với số có 万・千・百. Kết thúc: thoả thuận họp 15 phút mỗi tối để Tuấn ôn từ — luôn bằng tiếng Nhật.

> Từ vựng & mẫu câu chương này: 新人・到着・更衣室・作業着・安全靴・軍手・保護メガネ・耳栓・5点セット・4S・整理整頓清掃清潔・スパナ・メガネレンチ・プラスドライバー・マイナスドライバー・ペンチ・トルクレンチ・レベルゲージ・上限・下限・正常・残量・規定値・整備票・走行距離・令和・進捗・反省点・こちら新人の〜です・〜てください・〜ないでください・〜の方がいいですよ・上手ですね・よくできました・素晴らしい・完璧です・報告いたします・見せる→一緒に→一人で

## Bí quyết chương

- Đón kohai tại sân bay: vẫy tay + gọi tên + JP đơn giản (こっち) thay vì tiếng Việt — tạo không khí "đây là môi trường tiếng Nhật".
- Giới thiệu kohai chuẩn: `こちら、〜から入社の<họ tên>さん、<tuổi>歳、<quê>出身です` — đủ 4 yếu tố trong 1 câu.
- Câu mệnh lệnh phân tầng: `〜てください` (đề nghị làm) / `〜ないでください` (đề nghị không làm) — KHÔNG dùng `〜しろ`/`〜するな` với kohai.
- Phương pháp coaching 3 bước: 「見せる→一緒に→一人で」— ngày đầu phải hoàn thành cả 3 bước với 1 thao tác đơn giản (ví dụ kiểm tra dầu) để kohai có cảm giác "thành công".
- Khen kohai theo 4 cấp: `上手ですね` (cơ bản) → `よくできました` (đạt) → `素晴らしい` (vượt mong đợi) → `完璧です` (hoàn hảo). Luôn khen NGAY khi làm đúng, không để qua bữa.
- Sửa lỗi mềm: `〜より、〜の方がいいですよ` + giải thích lý do kỹ thuật (スパナ 2 điểm vs メガネレンチ 6 điểm) — KHÔNG nói `間違いです`.
- Báo cáo tiến độ kohai cuối ngày với 整備士長 theo cấu trúc: hoàn thành gì + làm được gì độc lập + một điểm cần cải thiện.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 寮 | りょう | LIÊU | Ký túc xá |
| 個室 | こしつ | CÁ THẤT | Phòng riêng |
| 共用 | きょうよう | CỘNG DỤNG | Dùng chung |
| 在留 | ざいりゅう | TẠI LƯU | Cư trú (在留カード) |
| 入社 | にゅうしゃ | NHẬP XÃ | Nhập công ty |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán |
| 専攻 | せんこう | CHUYÊN CÔNG | Chuyên ngành |
| 整備 | せいび | CHỈNH BỊ | Sửa chữa, bảo dưỡng |
| 安全教育 | あんぜんきょういく | AN TOÀN GIÁO DỤC | Giáo dục an toàn |
| 工具 | こうぐ | CÔNG CỤ | Dụng cụ |
| 更衣室 | こういしつ | CANH Y THẤT | Phòng thay đồ |
| 作業着 | さぎょうぎ | TÁC NGHIỆP Y | Đồng phục lao động |
| 安全靴 | あんぜんぐつ | AN TOÀN HÀI | Giày bảo hộ |
| 軍手 | ぐんて | QUÂN THỦ | Găng vải bảo hộ |
| 保護 | ほご | BẢO HỘ | Bảo hộ |
| 耳栓 | みみせん | NHĨ THUYÊN | Nút bịt tai |
| 整理 | せいり | CHỈNH LÝ | Sắp xếp |
| 整頓 | せいとん | CHỈNH ĐỐN | Ngăn nắp |
| 清掃 | せいそう | THANH TẢO | Lau dọn |
| 清潔 | せいけつ | THANH KHIẾT | Sạch sẽ |
| 火気厳禁 | かきげんきん | HOẢ KHÍ NGHIÊM CẤM | Cấm lửa |
| 判断 | はんだん | PHÁN ĐOÁN | Phán đoán, quyết định |
| 反時計回り | はんとけいまわり | PHẢN THỜI KẾ HỒI | Ngược chiều kim đồng hồ |
| 力 | ちから | LỰC | Lực |
| 添える | そえる | THIÊM | Đặt thêm, kèm theo |
| 角 | かど | GIÁC | Cạnh, góc |
| 潰れる | つぶれる | HOÁI | Bị bẹp, bị toè |
| 整備票 | せいびひょう | CHỈNH BỊ PHIẾU | Phiếu bảo dưỡng |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 満了日 | まんりょうび | MÃN LIỄU NHẬT | Ngày hết hạn |
| 走行距離 | そうこうきょり | TẨU HÀNH CỰ LY | Số km đi được |
| 令和 | れいわ | LỆNH HOÀ | Niên hiệu Reiwa |
| 停止 | ていし | ĐÌNH CHỈ | Dừng (động cơ) |
| ボンネット | — | — | Ca pô |
| レベルゲージ | — | — | Que thăm dầu |
| 拭く | ふく | THỨC | Lau |
| 挿す | さす | TÁP | Cắm |
| 上限 | じょうげん | THƯỢNG HẠN | Vạch trên |
| 下限 | かげん | HẠ HẠN | Vạch dưới |
| 正常 | せいじょう | CHÍNH THƯỜNG | Bình thường, ổn định |
| 進捗 | しんちょく | TIẾN BỘ | Tiến độ |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 基礎 | きそ | CƠ SỞ | Nền tảng |
| 混乱 | こんらん | HỖN LOẠN | Lúng túng, rối |
| 復習 | ふくしゅう | PHỤC TẬP | Ôn tập |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | Điểm rút kinh nghiệm |
| 曖昧 | あいまい | ÁI MUỘI | Mơ hồ |
| 申し込む | もうしこむ | THÂN VỊ TRỬ | Đăng ký |
| 目指す | めざす | MỤC CHỈ | Nhắm tới |
| 真似 | まね | CHÂN TỰ | Bắt chước |
| 続ける | つづける | TỤC | Tiếp tục, duy trì |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000003, 800000044, NULL, 'markdown_book', 'T3. Học 車検 — quy trình 9 bước đăng kiểm (車検9工程をマスターする)', '# Sách thực tập sinh ô tô · T3. Học 車検 — quy trình 9 bước đăng kiểm (車検9工程をマスターする)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng, năm 2, N3 cận) học toàn bộ quy trình 車検 9 bước tại garage Anjo, đồng thời truyền lại cho kohai Tuấn. Học các mẫu hội thoại tiếng Nhật ngành ô tô chuyên sâu: hỏi quy trình kỹ thuật (〜の流れを教えていただけますか), đề nghị 整備士長 xác nhận chi tiết (〜について確認させてください), giải thích quy trình lại cho kohai bằng JP đơn giản (まず〜、次に〜、最後に〜), tiếp khách hàng tại quầy nhận xe (本日はありがとうございます・お預かりいたします), báo cáo phát hiện bất thường (異常がございました), và đề xuất sửa thêm với 整備士長 (〜を追加してもよろしいでしょうか).

---

## Bối cảnh

Tháng 6 năm 2026. Sau 1 tháng nhận Tuấn, Phong được 工場長 Sato phân vào dây chuyền 車検 — quy trình đăng kiểm xe 2 năm/lần bắt buộc theo luật Nhật. Garage Anjo có tuần "強化週間" (tuần tăng cường) làm 20 xe 車検 trong 5 ngày. Phong vừa học, vừa dạy lại cho Tuấn theo dõi cùng. 整備士長 Yamada là người chỉ đạo trực tiếp. Chương này tập trung 9 bước 車検: ① 受付 ② 外観点検 ③ 下回り点検 ④ エンジンルーム ⑤ 室内点検 ⑥ ブレーキテスター ⑦ サイドスリップ ⑧ 排気ガス測定 ⑨ 完成検査 — kèm các mẫu câu hỏi/trả lời tại từng bước.

---

## Tình huống 1 — 朝礼後 文房具コーナー · 8:15, 工場長 Sato giao nhiệm vụ tuần 車検

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、ちょっといいですか。<br>*(Phong-san, một chút được không?)* |
| Phong | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép.)* |
| Sato | <ruby>来週<rt>らいしゅう</rt></ruby>から「<ruby>車検<rt>しゃけん</rt></ruby><ruby>強化<rt>きょうか</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>」です。<ruby>5<rt>いつ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>で<ruby>20<rt>にじゅう</rt></ruby><ruby>台<rt>だい</rt></ruby>の<ruby>車検<rt>しゃけん</rt></ruby>をやります。フォンさんも<ruby>参加<rt>さんか</rt></ruby>してください。<br>*(Từ tuần sau là tuần tăng cường 車検. 5 ngày làm 20 xe. Phong-san cũng tham gia nhé.)* |
| Phong | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>全<rt>すべ</rt></ruby>ての<ruby>工程<rt>こうてい</rt></ruby>を<ruby>学<rt>まな</rt></ruby>びたいと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Vâng, em rất mong. Em đã muốn học toàn bộ công đoạn 車検.)* |
| Sato | いいですね。<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>が<ruby>指導<rt>しどう</rt></ruby>します。トゥアンくんも<ruby>見学<rt>けんがく</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>させてください。<br>*(Tốt. Anh Yamada sẽ chỉ đạo. Cho Tuấn-kun cùng tham quan đi.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。トゥアンくんにも<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em rõ. Tuấn-kun cũng sẽ học được.)* |
| Sato | <ruby>車検<rt>しゃけん</rt></ruby>は<ruby>9<rt>きゅう</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>あります。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ってください。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばすと<ruby>不合格<rt>ふごうかく</rt></ruby>になります。<br>*(車検 có 9 công đoạn. Phải tuân thủ trình tự. Bỏ qua sẽ rớt.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 2 — Bảng quy trình ピット · 8:30, Yamada giải thích tổng quan 9 bước

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Anh Yamada, anh có thể chỉ em quy trình 車検 được không ạ?)* |
| Yamada | おう、いい<ruby>姿勢<rt>しせい</rt></ruby>だ。ここに9<ruby>工程<rt>こうてい</rt></ruby><ruby>表<rt>ひょう</rt></ruby>がある。<br>*(Ồ, thái độ tốt đấy. Đây có bảng 9 công đoạn.)* |
| Tuấn | (ghi chép) ...<br>*( )* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、<ruby>受付<rt>うけつけ</rt></ruby>。お<ruby>客<rt>きゃく</rt></ruby>さまから<ruby>車<rt>くるま</rt></ruby>と<ruby>書類<rt>しょるい</rt></ruby>をお<ruby>預<rt>あず</rt></ruby>かりする。<br>*(Bước 1, tiếp nhận. Nhận xe và giấy tờ từ khách.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、<ruby>外観点検<rt>がいかんてんけん</rt></ruby>。<ruby>車体<rt>しゃたい</rt></ruby>の<ruby>傷<rt>きず</rt></ruby>・ライト・<ruby>方向<rt>ほうこう</rt></ruby>指示器・タイヤを<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Bước 2, kiểm tra ngoại quan. Kiểm tra vết xước thân xe, đèn, xi nhan, lốp.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、<ruby>下回<rt>したまわ</rt></ruby>り<ruby>点検<rt>てんけん</rt></ruby>。リフトに<ruby>上<rt>あ</rt></ruby>げて、マフラー・ブレーキパッド・サスペンション・<ruby>燃料<rt>ねんりょう</rt></ruby>パイプを<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Bước 3, kiểm tra gầm. Nâng lift, kiểm tra ống xả, má phanh, giảm xóc, ống nhiên liệu.)* |
| Phong | <ruby>下回<rt>したまわ</rt></ruby>りが<ruby>一番<rt>いちばん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>がかかりますか?<br>*(Phần gầm tốn thời gian nhất ạ?)* |
| Yamada | そう。<ruby>第<rt>だい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、エンジンルーム<ruby>点検<rt>てんけん</rt></ruby>。バッテリー・ベルト・オイル・<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水<rt>すい</rt></ruby>・ブレーキ<ruby>液<rt>えき</rt></ruby>。<br>*(Đúng. Bước 4, kiểm tra khoang máy. Ắc quy, dây đai, dầu, nước làm mát, dầu phanh.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、<ruby>室内点検<rt>しつないてんけん</rt></ruby>。シートベルト・ハンドル・<ruby>計器<rt>けいき</rt></ruby><ruby>類<rt>るい</rt></ruby>・<ruby>警告<rt>けいこく</rt></ruby>灯・ホーン。<br>*(Bước 5, kiểm tra nội thất. Dây an toàn, vô lăng, đồng hồ, đèn cảnh báo, còi.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>6<rt>ろっ</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、ブレーキテスター。<ruby>機械<rt>きかい</rt></ruby>で<ruby>制動力<rt>せいどうりょく</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ります。<br>*(Bước 6, kiểm tra phanh. Đo lực phanh bằng máy.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>7<rt>なな</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、サイドスリップ<ruby>検査<rt>けんさ</rt></ruby>。<ruby>横滑<rt>よこすべ</rt></ruby>り、つまり<ruby>前輪<rt>ぜんりん</rt></ruby>の<ruby>角度<rt>かくど</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べます。<br>*(Bước 7, kiểm tra trượt ngang. Tức là kiểm tra góc bánh trước.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、<ruby>排気<rt>はいき</rt></ruby>ガス<ruby>測定<rt>そくてい</rt></ruby>。CO・HCの<ruby>濃度<rt>のうど</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る。<br>*(Bước 8, đo khí thải. Đo nồng độ CO, HC.)* |
| Yamada | <ruby>第<rt>だい</rt></ruby><ruby>9<rt>きゅう</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、<ruby>完成検査<rt>かんせいけんさ</rt></ruby>。<ruby>整備士長<rt>せいびしちょう</rt></ruby>が<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>してサイン。<br>*(Bước 9, kiểm tra hoàn thành. Trưởng kỹ thuật xác nhận cuối, ký.)* |
| Phong | <ruby>9<rt>きゅう</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>、メモしました。ありがとうございます。<br>*(9 công đoạn, em ghi rồi. Cảm ơn anh.)* |

---

## Tình huống 3 — 受付カウンター · 来週月曜 9:00, Phong quan sát tiếp khách (Bước 1)

*Khách hàng bà Inoue, lái xe Toyota Aqua đến 車検.*

| Vai | Lời thoại |
|---|---|
| Inoue | おはようございます。<ruby>車検<rt>しゃけん</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>で<ruby>来<rt>き</rt></ruby>ました、<ruby>井上<rt>いのうえ</rt></ruby>です。<br>*(Chào buổi sáng. Tôi là Inoue, đến theo lịch hẹn 車検.)* |
| Yamada | <ruby>井上<rt>いのうえ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございます。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Bà Inoue, hôm nay cảm ơn bà. Tôi đã đợi.)* |
| Yamada | <ruby>車検証<rt>しゃけんしょう</rt></ruby>と<ruby>自賠責<rt>じばいせき</rt></ruby><ruby>保険<rt>ほけん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cho tôi xin giấy đăng kiểm, giấy chứng nhận bảo hiểm bắt buộc, giấy chứng nhận nộp thuế.)* |
| Inoue | はい、こちらです。<br>*(Vâng, đây ạ.)* |
| Yamada | お<ruby>預<rt>あず</rt></ruby>かりいたします。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby>いたします。<br>*(Tôi xin nhận. Hôm nay sẽ xong.)* |
| Yamada | <ruby>追加<rt>ついか</rt></ruby><ruby>整備<rt>せいび</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>場合<rt>ばあい</rt></ruby>、お<ruby>電話<rt>でんわ</rt></ruby>でご<ruby>連絡<rt>れんらく</rt></ruby>します。よろしいですか?<br>*(Nếu cần sửa thêm, tôi sẽ gọi điện thông báo. Được không ạ?)* |
| Inoue | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |
| Yamada | では、<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>頃にお<ruby>引<rt>ひ</rt></ruby>き<ruby>渡<rt>わた</rt></ruby>しでよろしいでしょうか?<br>*(Vậy khoảng 17 giờ giao xe có được không ạ?)* |
| Inoue | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, được.)* |
| Phong | (ngoài lề, Tuấn) <ruby>受付<rt>うけつけ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>点<rt>てん</rt></ruby>セット、<ruby>覚<rt>おぼ</rt></ruby>えてね。<ruby>車検証<rt>しゃけんしょう</rt></ruby>・<ruby>自賠責<rt>じばいせき</rt></ruby>・<ruby>納税<rt>のうぜい</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>。<br>*(Bộ 3 món tiếp nhận, nhớ nhé. Giấy đăng kiểm, bảo hiểm bắt buộc, chứng nhận nộp thuế.)* |
| Tuấn | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 4 — Ngoài garage · 9:20, Bước 2 外観点検 cùng Yamada và Tuấn

| Vai | Lời thoại |
|---|---|
| Yamada | フォン、<ruby>外観<rt>がいかん</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってみろ。<br>*(Phong, nói thứ tự kiểm tra ngoại quan thử.)* |
| Phong | はい。<ruby>前<rt>まえ</rt></ruby>→<ruby>右<rt>みぎ</rt></ruby>→<ruby>後<rt>うし</rt></ruby>ろ→<ruby>左<rt>ひだり</rt></ruby>、<ruby>時計回<rt>とけいまわ</rt></ruby>りで<ruby>一周<rt>いっしゅう</rt></ruby>します。<br>*(Vâng. Trước → phải → sau → trái, theo chiều kim đồng hồ một vòng.)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>確認<rt>かくにん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>は?<br>*(Đúng. Mục cần xem là gì?)* |
| Phong | <ruby>車体<rt>しゃたい</rt></ruby>の<ruby>傷<rt>きず</rt></ruby>・<ruby>凹<rt>へこ</rt></ruby>み・ヘッドライト・テールランプ・<ruby>方向<rt>ほうこう</rt></ruby><ruby>指示器<rt>しじき</rt></ruby>・<ruby>車<rt>くるま</rt></ruby><ruby>幅<rt>はば</rt></ruby>灯・タイヤ4<ruby>本<rt>ほん</rt></ruby>です。<br>*(Vết xước, móp, đèn pha, đèn hậu, xi nhan, đèn định vị, 4 lốp ạ.)* |
| Yamada | (ngạc nhiên) ちゃんと<ruby>勉強<rt>べんきょう</rt></ruby>したな。タイヤは<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>る?<br>*(Học chu đáo nhỉ. Lốp xem cái gì?)* |
| Phong | <ruby>溝<rt>みぞ</rt></ruby>の<ruby>残量<rt>ざんりょう</rt></ruby>と、<ruby>偏摩耗<rt>へんまもう</rt></ruby>がないかです。<ruby>残量<rt>ざんりょう</rt></ruby>は1.6ミリ<ruby>以上<rt>いじょう</rt></ruby>が<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>です。<br>*(Độ sâu rãnh còn lại và xem có mòn lệch không. Độ sâu trên 1.6mm là tiêu chuẩn đậu.)* |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>。トゥアンくんに<ruby>説明<rt>せつめい</rt></ruby>してあげて。<br>*(Hoàn hảo. Em giải thích cho Tuấn-kun đi.)* |
| Phong | (quay sang Tuấn) トゥアン、まず<ruby>前<rt>まえ</rt></ruby>のヘッドライトから<ruby>見<rt>み</rt></ruby>ます。<ruby>次<rt>つぎ</rt></ruby>に<ruby>右側<rt>みぎがわ</rt></ruby>の<ruby>車体<rt>しゃたい</rt></ruby>、<ruby>傷<rt>きず</rt></ruby>と<ruby>凹<rt>へこ</rt></ruby>みをチェック。<ruby>最後<rt>さいご</rt></ruby>にタイヤ。<br>*(Tuấn, trước tiên từ đèn pha trước. Tiếp theo thân phải, kiểm vết xước và móp. Cuối cùng là lốp.)* |
| Tuấn | はい!タイヤの<ruby>溝<rt>みぞ</rt></ruby>の<ruby>残量<rt>ざんりょう</rt></ruby>は1.6ミリ<ruby>以上<rt>いじょう</rt></ruby>、<ruby>偏摩耗<rt>へんまもう</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>。<br>*(Vâng! Độ sâu lốp ≥ 1.6mm, chú ý mòn lệch.)* |
| Yamada | おー、<ruby>後輩<rt>こうはい</rt></ruby>もちゃんとしてるな。<br>*(Ồ, kohai cũng chỉn chu nhỉ.)* |

---

## Tình huống 5 — リフト上 · 10:00, Bước 3 下回り点検 — phát hiện bất thường

*Xe đã được nâng lên 1.5m. Phong dùng đèn pin kiểm tra gầm.*

| Vai | Lời thoại |
|---|---|
| Phong | (chiếu đèn) ...マフラー、<ruby>異常<rt>いじょう</rt></ruby>なし。ブレーキパッド、<ruby>右前<rt>みぎまえ</rt></ruby>4ミリ、<ruby>左前<rt>ひだりまえ</rt></ruby>4ミリ。<ruby>右後<rt>みぎうし</rt></ruby>ろ3ミリ、<ruby>左後<rt>ひだりうし</rt></ruby>ろ3ミリ。<br>*(Ống xả, không bất thường. Má phanh trước phải 4mm, trước trái 4mm. Sau phải 3mm, sau trái 3mm.)* |
| Yamada | <ruby>後<rt>うし</rt></ruby>ろのパッド3ミリか。<ruby>限界<rt>げんかい</rt></ruby><ruby>値<rt>ち</rt></ruby>はいくらだ?<br>*(Má phanh sau 3mm hả. Trị số giới hạn bao nhiêu?)* |
| Phong | <ruby>使用<rt>しよう</rt></ruby><ruby>限界<rt>げんかい</rt></ruby>は2ミリです。3ミリはギリギリ<ruby>合格<rt>ごうかく</rt></ruby>ですが、<ruby>次<rt>つぎ</rt></ruby>の<ruby>車検<rt>しゃけん</rt></ruby>まで<ruby>持<rt>も</rt></ruby>たないと<ruby>思<rt>おも</rt></ruby>います。<br>*(Giới hạn sử dụng là 2mm. 3mm vừa đậu nhưng em nghĩ không trụ tới 車検 sau.)* |
| Yamada | <ruby>判断<rt>はんだん</rt></ruby>がいい。<ruby>交換<rt>こうかん</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>を<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>にしよう。<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Phán đoán tốt. Đề xuất thay với khách. Tiếp tục đi.)* |
| Phong | はい。サスペンション、<ruby>右前<rt>みぎまえ</rt></ruby>...あれ、オイルが<ruby>滲<rt>にじ</rt></ruby>んでいます。<br>*(Vâng. Giảm xóc trước phải... ơ, rỉ dầu.)* |
| Yamada | <ruby>見<rt>み</rt></ruby>せろ。(xem) ああ、ショックアブソーバーの<ruby>軽<rt>かる</rt></ruby>い<ruby>漏<rt>も</rt></ruby>れだな。<ruby>車検<rt>しゃけん</rt></ruby>は<ruby>通<rt>とお</rt></ruby>るが、<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby><ruby>推奨<rt>すいしょう</rt></ruby>。<br>*(Đưa xem. À, rò nhẹ giảm chấn. 車検 đậu được nhưng đề nghị thay trong 3 tháng.)* |
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、ブレーキパッド<ruby>後<rt>うし</rt></ruby>ろ<ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>してもよろしいでしょうか?<br>*(Anh Yamada, em xin được thêm thay 2 má phanh sau được không ạ?)* |
| Yamada | <ruby>追加<rt>ついか</rt></ruby>OK。<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>するから、<ruby>金額<rt>きんがく</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>してメモを<ruby>持<rt>も</rt></ruby>ってきて。<br>*(Thêm OK. Tôi gọi khách, em tính tiền và mang ghi chú đến.)* |
| Phong | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 6 — エンジンルーム · 10:30, Bước 4 — Phong dạy lại Tuấn

*Capo mở, Phong và Tuấn đứng bên cạnh. Yamada quan sát.*

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、エンジンルーム<ruby>点検<rt>てんけん</rt></ruby>の<ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby>セット。<ruby>言<rt>い</rt></ruby>ってみて。<br>*(Tuấn, bộ 5 điểm khoang máy. Em nói thử.)* |
| Tuấn | はい。<ruby>一<rt>ひと</rt></ruby>つ、バッテリー。<ruby>二<rt>ふた</rt></ruby>つ、ベルト。<ruby>三<rt>みっ</rt></ruby>つ、エンジンオイル。<ruby>四<rt>よっ</rt></ruby>つ、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水<rt>すい</rt></ruby>。<ruby>五<rt>いつ</rt></ruby>つ、ブレーキ<ruby>液<rt>えき</rt></ruby>。<br>*(Vâng. Một ắc quy, hai dây đai, ba dầu máy, bốn nước làm mát, năm dầu phanh.)* |
| Phong | <ruby>完璧<rt>かんぺき</rt></ruby>!じゃあバッテリーから。テスターで<ruby>電圧<rt>でんあつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ります。<br>*(Hoàn hảo! Vậy từ ắc quy. Đo điện áp bằng tester.)* |
| Tuấn | はい、テスター。<br>*(Vâng, tester.)* |
| Phong | <ruby>12<rt>じゅうに</rt></ruby>ボルト<ruby>以上<rt>いじょう</rt></ruby>なら<ruby>正常<rt>せいじょう</rt></ruby>。<ruby>12<rt>じゅうに</rt></ruby>ボルト<ruby>未満<rt>みまん</rt></ruby>なら<ruby>充電<rt>じゅうでん</rt></ruby>か<ruby>交換<rt>こうかん</rt></ruby>です。<br>*(Trên 12V là bình thường. Dưới 12V thì sạc hoặc thay.)* |
| Phong | (đo) 12.6ボルト。<ruby>正常<rt>せいじょう</rt></ruby>です。<br>*(12.6V. Bình thường.)* |
| Tuấn | (ghi)。<ruby>次<rt>つぎ</rt></ruby>はベルト?<br>*(Tiếp theo dây đai?)* |
| Phong | そう。ベルトは<ruby>3<rt>みっ</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>亀裂<rt>きれつ</rt></ruby>・<ruby>摩耗<rt>まもう</rt></ruby>・<ruby>張<rt>は</rt></ruby>り<ruby>具合<rt>ぐあい</rt></ruby>。<ruby>親指<rt>おやゆび</rt></ruby>で<ruby>押<rt>お</rt></ruby>して、<ruby>10<rt>じゅう</rt></ruby>ミリくらい<ruby>沈<rt>しず</rt></ruby>むのが<ruby>正常<rt>せいじょう</rt></ruby>です。<br>*(Đúng. Dây đai kiểm 3 điểm: nứt, mòn, độ căng. Lấy ngón cái ấn, lõm 10mm là bình thường.)* |
| Tuấn | (làm thử) <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Ổn ạ.)* |
| Yamada | フォン、<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がうまくなったな。<br>*(Phong, dạy giỏi rồi đấy.)* |
| Phong | ありがとうございます。<br>*(Cảm ơn anh.)* |

---

## Tình huống 7 — Ghế lái · 11:30, Bước 5 室内点検 — kiểm tra警告灯

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>室内点検<rt>しつないてんけん</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>:シートベルト、ハンドル、ペダル、<ruby>計器類<rt>けいきるい</rt></ruby>、<ruby>警告<rt>けいこく</rt></ruby>灯、ホーン、ワイパー。<br>*(Thứ tự kiểm nội thất: dây an toàn, vô lăng, bàn đạp, đồng hồ, đèn cảnh báo, còi, gạt mưa.)* |
| Yamada | <ruby>警告<rt>けいこく</rt></ruby>灯で<ruby>大事<rt>だいじ</rt></ruby>なのは?<br>*(Đèn cảnh báo điều gì quan trọng?)* |
| Phong | キーをONにした<ruby>時<rt>とき</rt></ruby>、<ruby>全<rt>すべ</rt></ruby>ての<ruby>警告<rt>けいこく</rt></ruby>灯が<ruby>一度<rt>いちど</rt></ruby><ruby>点灯<rt>てんとう</rt></ruby>し、エンジンを<ruby>始動<rt>しどう</rt></ruby>したら<ruby>消<rt>き</rt></ruby>えることです。<ruby>消<rt>き</rt></ruby>えない<ruby>警告<rt>けいこく</rt></ruby>灯は<ruby>異常<rt>いじょう</rt></ruby>です。<br>*(Khi vặn ON tất cả đèn cảnh báo sáng một lần, khởi động xong phải tắt. Đèn không tắt là bất thường.)* |
| Yamada | やってみろ。<br>*(Thử đi.)* |
| Phong | (vặn ON) ...<ruby>全<rt>すべ</rt></ruby>て<ruby>点灯<rt>てんとう</rt></ruby>。エンジン<ruby>始動<rt>しどう</rt></ruby>...あ、<ruby>整備士長<rt>せいびしちょう</rt></ruby>。エアバッグの<ruby>警告<rt>けいこく</rt></ruby>灯が<ruby>消<rt>き</rt></ruby>えません。<br>*(Bật ON... đều sáng. Khởi động máy... à, anh Yamada. Đèn cảnh báo túi khí không tắt.)* |
| Yamada | おっと、エアバッグ<ruby>警告<rt>けいこく</rt></ruby>灯か。これは<ruby>車検<rt>しゃけん</rt></ruby>では<ruby>絶対<rt>ぜったい</rt></ruby><ruby>NG<rt>エヌジー</rt></ruby>だ。<br>*(Oh, đèn cảnh báo túi khí à. Cái này 車検 chắc chắn NG.)* |
| Phong | え、<ruby>追加<rt>ついか</rt></ruby><ruby>整備<rt>せいび</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Ơ, cần sửa thêm ạ?)* |
| Yamada | はい。エアバッグの<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>にもう<ruby>一度<rt>いちど</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>しよう。<br>*(Vâng. Cần chẩn đoán lỗi túi khí. Gọi khách lần nữa.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>診断<rt>しんだん</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>5500<rt>ごせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>でよろしいでしょうか?<br>*(Em rõ. Phí chẩn đoán 5.500 yên có được không ạ?)* |
| Yamada | そうだ。<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>同意<rt>どうい</rt></ruby>もらってから<ruby>進<rt>すす</rt></ruby>めよう。<br>*(Đúng. Có đồng ý khách rồi tiến hành.)* |

---

## Tình huống 8 — Phòng điện thoại · 11:50, Phong tập gọi điện cho khách

*Yamada để Phong tự gọi điện, đứng bên hỗ trợ.*

| Vai | Lời thoại |
|---|---|
| Phong | (bấm số) ...もしもし、<ruby>井上<rt>いのうえ</rt></ruby><ruby>様<rt>さま</rt></ruby>でしょうか。Anjoモータースのフォンと<ruby>申<rt>もう</rt></ruby>します。<br>*(Alô, có phải bà Inoue không? Tôi là Phong, Anjo Motors.)* |
| Inoue | (qua loa) はい、<ruby>井上<rt>いのうえ</rt></ruby>です。<br>*(Vâng, Inoue đây.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>車<rt>くるま</rt></ruby>をお<ruby>預<rt>あず</rt></ruby>かりしております。<ruby>追加<rt>ついか</rt></ruby><ruby>整備<rt>せいび</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>でお<ruby>電話<rt>でんわ</rt></ruby>しました。<br>*(Hôm nay chúng tôi đang giữ xe của bà. Tôi gọi để trao đổi về sửa chữa thêm.)* |
| Inoue | はい、どうぞ。<br>*(Vâng, mời.)* |
| Phong | <ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>ございます。<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>後<rt>うし</rt></ruby>ろのブレーキパッドの<ruby>残量<rt>ざんりょう</rt></ruby>が3ミリで、<ruby>次<rt>つぎ</rt></ruby>の<ruby>車検<rt>しゃけん</rt></ruby>まで<ruby>持<rt>も</rt></ruby>たない<ruby>可能性<rt>かのうせい</rt></ruby>がございます。<ruby>交換<rt>こうかん</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2000<rt>にせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Có 2 điểm. Điểm 1, má phanh sau còn 3mm, có khả năng không trụ tới 車検 sau. Em đề nghị thay. Phí 12.000 yên.)* |
| Inoue | ああ、それは<ruby>交換<rt>こうかん</rt></ruby>してください。<br>*(À, thay đi.)* |
| Phong | ありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>目<rt>め</rt></ruby>、エアバッグの<ruby>警告<rt>けいこく</rt></ruby>灯が<ruby>点<rt>つ</rt></ruby>いております。これは<ruby>車検<rt>しゃけん</rt></ruby>に<ruby>通<rt>とお</rt></ruby>らない<ruby>項目<rt>こうもく</rt></ruby>ですので、<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めさせていただきたいです。<ruby>診断<rt>しんだん</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>5500<rt>ごせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Cảm ơn bà. Điểm 2, đèn cảnh báo túi khí đang sáng. Đây là hạng mục không qua được 車検, em xin tiến hành chẩn đoán. Phí chẩn đoán 5.500 yên.)* |
| Inoue | <ruby>合計<rt>ごうけい</rt></ruby>は?<br>*(Tổng cộng?)* |
| Phong | <ruby>追加<rt>ついか</rt></ruby>2<ruby>点<rt>てん</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>7500<rt>ななせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>車検<rt>しゃけん</rt></ruby><ruby>基本<rt>きほん</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせまして、<ruby>合計<rt>ごうけい</rt></ruby><ruby>9<rt>きゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2500<rt>にせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<br>*(Thêm 2 điểm là 17.500 yên. Cộng với phí 車検 cơ bản, tổng cộng 92.500 yên.)* |
| Inoue | わかりました。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hiểu rồi. Nhờ anh.)* |
| Phong | <ruby>承<rt>うけたまわ</rt></ruby>りました。お<ruby>引<rt>ひ</rt></ruby>き<ruby>渡<rt>わた</rt></ruby>しは<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>頃に<ruby>変更<rt>へんこう</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Em xin nhận. Cho phép đổi giờ giao thành 17:30 được không ạ?)* |
| Inoue | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Được.)* |
| Phong | ありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Cảm ơn bà. Em xin phép.)* |
| Yamada | (sau khi cúp máy) フォン、<ruby>初<rt>はじ</rt></ruby>めての<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えない。<ruby>立派<rt>りっぱ</rt></ruby>だった。<br>*(Phong, không nghĩ là lần đầu gọi khách. Xuất sắc đấy.)* |
| Phong | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えました。<br>*(Cảm ơn anh. Em căng thẳng run cả tay.)* |

---

## Tình huống 9 — ブレーキテスター室 · 13:30, Bước 6 — Phong vận hành máy đo phanh

*Phòng kiểm định cuối có máy đo phanh chuyên dụng. Phong lái xe lên bệ.*

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>前輪<rt>ぜんりん</rt></ruby>からだ。ローラーに<ruby>載<rt>の</rt></ruby>せて、<ruby>合図<rt>あいず</rt></ruby>を<ruby>待<rt>ま</rt></ruby>て。<br>*(Bánh trước trước. Đặt lên trục lăn, đợi tín hiệu.)* |
| Phong | はい。(lái xe lên)<br>*(Vâng.)* |
| Yamada | (vận hành máy) ローラー<ruby>回転<rt>かいてん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<ruby>合図<rt>あいず</rt></ruby>でブレーキを<ruby>踏<rt>ふ</rt></ruby>め。<br>*(Trục lăn quay. Khi có tín hiệu thì đạp phanh.)* |
| Yamada | <ruby>3<rt>さん</rt></ruby>、<ruby>2<rt>に</rt></ruby>、<ruby>1<rt>いち</rt></ruby>、ブレーキ!<br>*(3, 2, 1, phanh!)* |
| Phong | (đạp phanh) ...<br>*( )* |
| Yamada | <ruby>右前<rt>みぎまえ</rt></ruby>1800ニュートン、<ruby>左前<rt>ひだりまえ</rt></ruby>1850ニュートン。<ruby>差<rt>さ</rt></ruby>50ニュートン、<ruby>合格<rt>ごうかく</rt></ruby>。<br>*(Trước phải 1800N, trước trái 1850N. Chênh 50N, đậu.)* |
| Phong | <ruby>左右差<rt>さゆうさ</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は?<br>*(Tiêu chuẩn chênh lệch trái phải?)* |
| Yamada | <ruby>制動力<rt>せいどうりょく</rt></ruby>の<ruby>8<rt>はち</rt></ruby>パーセント<ruby>以内<rt>いない</rt></ruby>。これは<ruby>2.7<rt>にてんなな</rt></ruby>パーセントだから、<ruby>余裕<rt>よゆう</rt></ruby>合格。<br>*(Trong 8% lực phanh. Cái này 2.7%, dư đậu.)* |
| Phong | (ghi sổ) ...<ruby>2.7<rt>にてんなな</rt></ruby>パーセント、<ruby>余裕<rt>よゆう</rt></ruby>合格。<ruby>後輪<rt>こうりん</rt></ruby>もやります。<br>*(2.7%, dư đậu. Em làm bánh sau luôn.)* |
| Yamada | <ruby>後輪<rt>こうりん</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しいパッドだから<ruby>制動力<rt>せいどうりょく</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がってるはずだ。<br>*(Bánh sau má mới rồi nên lực phanh phải tăng.)* |
| Phong | はい。(thực hiện lại) <ruby>右後<rt>みぎうし</rt></ruby>ろ1500ニュートン、<ruby>左後<rt>ひだりうし</rt></ruby>ろ1480ニュートン。<br>*(Vâng. Sau phải 1500N, sau trái 1480N.)* |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>はサイドスリップ。<br>*(Hoàn hảo. Đậu. Tiếp theo trượt ngang.)* |

---

## Tình huống 10 — サイドスリップ台 · 14:00, Bước 7 — đo và giải thích

| Vai | Lời thoại |
|---|---|
| Yamada | サイドスリップは<ruby>何<rt>なん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>るか<ruby>知<rt>し</rt></ruby>ってるか?<br>*(Trượt ngang đo cái gì biết chưa?)* |
| Phong | はい、<ruby>前輪<rt>ぜんりん</rt></ruby>の<ruby>横方向<rt>よこほうこう</rt></ruby>のずれです。<ruby>直進<rt>ちょくしん</rt></ruby><ruby>性<rt>せい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Vâng, độ lệch ngang bánh trước. Kiểm tra tính đi thẳng.)* |
| Yamada | そう。<ruby>1<rt>いっ</rt></ruby>キロメートル<ruby>走<rt>はし</rt></ruby>って<ruby>左右<rt>さゆう</rt></ruby>に<ruby>5<rt>ご</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>ずれたら<ruby>不合格<rt>ふごうかく</rt></ruby>。<br>*(Đúng. Đi 1km lệch trái/phải hơn 5m là rớt.)* |
| Phong | (lái qua bệ) ...<br>*( )* |
| Yamada | OUT 3ミリ。<ruby>合格<rt>ごうかく</rt></ruby><ruby>範囲<rt>はんい</rt></ruby><ruby>内<rt>ない</rt></ruby>。<br>*(OUT 3mm. Trong khoảng đậu.)* |
| Phong | (Tuấn) トゥアン、<ruby>説明<rt>せつめい</rt></ruby>するね。サイドスリップは、<ruby>車<rt>くるま</rt></ruby>が<ruby>直<rt>ちょく</rt></ruby><ruby>線<rt>せん</rt></ruby>に<ruby>走<rt>はし</rt></ruby>る<ruby>力<rt>ちから</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る<ruby>機械<rt>きかい</rt></ruby>。<ruby>前<rt>まえ</rt></ruby>のタイヤが<ruby>外<rt>そと</rt></ruby>に<ruby>3<rt>さん</rt></ruby>ミリずれた、ということ。<br>*(Tuấn, anh giải thích. Trượt ngang là máy đo lực xe đi thẳng. Bánh trước lệch ra ngoài 3mm.)* |
| Tuấn | OUTは<ruby>外側<rt>そとがわ</rt></ruby>、INは<ruby>内側<rt>うちがわ</rt></ruby>ですよね?<br>*(OUT là phía ngoài, IN là phía trong nhỉ?)* |
| Phong | そのとおり!よく<ruby>覚<rt>おぼ</rt></ruby>えてる。<br>*(Đúng! Nhớ tốt.)* |
| Yamada | じゃあ<ruby>次<rt>つぎ</rt></ruby>、<ruby>排気<rt>はいき</rt></ruby>ガス<ruby>測定<rt>そくてい</rt></ruby>。<br>*(Vậy tiếp theo, đo khí thải.)* |

---

## Tình huống 11 — 排気ガス測定室 · 14:30, Bước 8 — Phong vận hành アナライザー

| Vai | Lời thoại |
|---|---|
| Yamada | フォン、プローブをマフラーに<ruby>挿<rt>さ</rt></ruby>す。エンジン<ruby>暖機<rt>だんき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Phong, cắm que đo vào ống xả. Xác nhận máy đã ấm.)* |
| Phong | はい。<ruby>暖機<rt>だんき</rt></ruby>OK。プローブ、<ruby>挿入<rt>そうにゅう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Vâng. Đã ấm OK. Đã cắm que đo xong.)* |
| Yamada | <ruby>測定<rt>そくてい</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<br>*(Bắt đầu đo.)* |
| Phong | (đọc màn hình) CO 0.5パーセント、HC 120ピーピーエム。<br>*(CO 0.5%, HC 120ppm.)* |
| Yamada | <ruby>基準<rt>きじゅん</rt></ruby><ruby>値<rt>ち</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってみろ。<br>*(Đọc trị số chuẩn xem.)* |
| Phong | はい。COは1.0パーセント<ruby>以下<rt>いか</rt></ruby>、HCは300ピーピーエム<ruby>以下<rt>いか</rt></ruby>です。<br>*(Vâng. CO dưới 1%, HC dưới 300ppm.)* |
| Yamada | <ruby>結果<rt>けっか</rt></ruby>は?<br>*(Kết quả?)* |
| Phong | <ruby>両方<rt>りょうほう</rt></ruby><ruby>基準内<rt>きじゅんない</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Cả hai trong chuẩn. Đậu.)* |
| Yamada | <ruby>記録<rt>きろく</rt></ruby>を<ruby>整備票<rt>せいびひょう</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>。プリントアウトも<ruby>添付<rt>てんぷ</rt></ruby>。<br>*(Ghi kết quả vào phiếu bảo dưỡng. Đính kèm bản in.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ.)* |

---

## Tình huống 12 — Bàn kiểm tra cuối · 16:00, Bước 9 完成検査 — Yamada ký nhận

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby><ruby>様<rt>さま</rt></ruby>のアクア、<ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>から<ruby>第<rt>だい</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>工程<rt>こうてい</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<ruby>完成<rt>かんせい</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Yamada, xe Aqua của bà Inoue đã hoàn tất công đoạn 1 đến 8. Xin anh kiểm tra hoàn thành.)* |
| Yamada | (đọc phiếu) ...<ruby>外観<rt>がいかん</rt></ruby>OK。<ruby>下回<rt>したまわ</rt></ruby>り、ブレーキパッド<ruby>後<rt>うし</rt></ruby>ろ<ruby>交換<rt>こうかん</rt></ruby>済<ruby>確認<rt>かくにん</rt></ruby>。エンジンルームOK。<ruby>室内<rt>しつない</rt></ruby>、エアバッグ<ruby>診断<rt>しんだん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>、<ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>?<br>*(Ngoại quan OK. Gầm, đã thay má phanh sau xong. Khoang máy OK. Nội thất, kết quả chẩn đoán túi khí, đã sửa xong?)* |
| Phong | はい、コネクタの<ruby>接触<rt>せっしょく</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>でした。<ruby>清掃<rt>せいそう</rt></ruby>と<ruby>再<rt>さい</rt></ruby><ruby>接続<rt>せつぞく</rt></ruby>で<ruby>警告<rt>けいこく</rt></ruby>灯<ruby>消灯<rt>しょうとう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, là tiếp xúc kém connector. Vệ sinh và đấu lại, đã xác nhận đèn cảnh báo tắt.)* |
| Yamada | ブレーキテスター・サイドスリップ・<ruby>排気<rt>はいき</rt></ruby>ガスも<ruby>全<rt>すべ</rt></ruby>て<ruby>合格<rt>ごうかく</rt></ruby>。よし、<ruby>完成<rt>かんせい</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>OK。サイン<ruby>入<rt>い</rt></ruby>れる。<br>*(Phanh, trượt ngang, khí thải đều đậu. Được, kiểm tra hoàn thành OK. Tôi ký.)* |
| Phong | ありがとうございます。<br>*(Cảm ơn anh.)* |
| Yamada | フォン、お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>渡<rt>わた</rt></ruby>しもフォンがやれ。<ruby>練習<rt>れんしゅう</rt></ruby>だ。<br>*(Phong, giao xe cho khách cậu cũng làm. Luyện đi.)* |
| Phong | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Ơ, thật ạ? Em sẽ cố gắng.)* |

---

## Tình huống 13 — 受付カウンター · 17:30, Phong giao xe cho bà Inoue

| Vai | Lời thoại |
|---|---|
| Inoue | こんばんは。<ruby>井上<rt>いのうえ</rt></ruby>です。<br>*(Chào tối. Tôi là Inoue.)* |
| Phong | <ruby>井上<rt>いのうえ</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>本日<rt>ほんじつ</rt></ruby>はAnjoモータースをご<ruby>利用<rt>りよう</rt></ruby>いただきありがとうございます。<br>*(Bà Inoue, để bà chờ. Hôm nay cảm ơn bà đã sử dụng Anjo Motors.)* |
| Inoue | お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Phiền anh nhé.)* |
| Phong | <ruby>車検<rt>しゃけん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>9<rt>きゅう</rt></ruby>つの<ruby>工程<rt>こうてい</rt></ruby><ruby>全<rt>すべ</rt></ruby>て<ruby>合格<rt>ごうかく</rt></ruby>いたしました。<br>*(Em xin báo cáo hoàn tất 車検. 9 công đoạn đều đậu.)* |
| Inoue | よかった。<br>*(Tốt quá.)* |
| Phong | <ruby>追加<rt>ついか</rt></ruby><ruby>整備<rt>せいび</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>後<rt>うし</rt></ruby>ろのブレーキパッド<ruby>交換<rt>こうかん</rt></ruby>と、エアバッグ<ruby>警告<rt>けいこく</rt></ruby>灯の<ruby>修理<rt>しゅうり</rt></ruby>も<ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Sửa thêm 2 điểm — thay má phanh sau và sửa đèn cảnh báo túi khí cũng đã xong.)* |
| Inoue | <ruby>料金<rt>りょうきん</rt></ruby>は<ruby>9<rt>きゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2500<rt>にせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>ですね?<br>*(Phí 92.500 yên đúng không?)* |
| Phong | はい、<ruby>合計<rt>ごうけい</rt></ruby><ruby>9<rt>きゅう</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>2500<rt>にせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>明細<rt>めいさい</rt></ruby>はこちらです。<br>*(Vâng, tổng cộng 92.500 yên. Đây là bảng kê chi tiết.)* |
| Phong | <ruby>次回<rt>じかい</rt></ruby><ruby>車検<rt>しゃけん</rt></ruby>は<ruby>令和<rt>れいわ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>までです。サスペンションの<ruby>軽<rt>かる</rt></ruby>い<ruby>漏<rt>も</rt></ruby>れがございましたので、<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>以内<rt>いない</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>をお<ruby>勧<rt>すす</rt></ruby>めいたします。<br>*(Lần 車検 tới đến 15/6 Reiwa 10. Có rỉ nhẹ giảm xóc, em đề nghị kiểm tra trong 3 tháng.)* |
| Inoue | わかりました。また<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Hiểu rồi. Tôi sẽ liên lạc lại.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください。<br>*(Hôm nay cảm ơn bà. Bà đi đường cẩn thận.)* |
| Inoue | はい、ありがとう、<ruby>若<rt>わか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>。<ruby>頑張<rt>がんば</rt></ruby>ってね。<br>*(Vâng, cảm ơn cậu trẻ. Cố lên nhé.)* |
| Phong | はい!ありがとうございます。<br>*(Vâng! Cảm ơn bà.)* |

---

## Tình huống 14 — Phòng Phong · 21:30, gọi điện về VN cho bố (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong gọi bố tại Hải Phòng kể chuyện hoàn thành xe 車検 đầu tiên.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con vui lắm! |
| Bố Phong | (tiếng Việt) Sao con? |
| Phong | (tiếng Việt) Con vừa hoàn thành xe đăng kiểm đầu tiên với tư cách chính thức bố ạ. Bên Nhật gọi là *shaken* — 車検, đăng kiểm 2 năm 1 lần. |
| Bố Phong | (tiếng Việt) Bên mình cũng có đăng kiểm. Bên Nhật phức tạp không con? |
| Phong | (tiếng Việt) Phức tạp hơn nhiều bố. Có 9 công đoạn: tiếp nhận, kiểm tra ngoại quan, gầm, khoang máy, nội thất, kiểm tra phanh bằng máy, đo trượt ngang bánh trước, đo khí thải, và cuối cùng là kiểm tra hoàn thành để anh trưởng kỹ thuật ký. |
| Bố Phong | (tiếng Việt) Trời, chi tiết quá. Con nhớ hết 9 bước à? |
| Phong | (tiếng Việt) Vâng, con học thuộc rồi. Hôm nay con phát hiện má phanh sau xe của bà Inoue còn 3mm, đề nghị thay luôn. Còn đèn cảnh báo túi khí — *eabaggu keikoku tou* — bật, con đề nghị chẩn đoán thêm. Khách đồng ý hết. |
| Bố Phong | (tiếng Việt) Con đề xuất thêm việc làm là tăng doanh thu cho công ty đấy. Sếp khen không? |
| Phong | (tiếng Việt) Có bố. Anh trưởng kỹ thuật Yamada bảo "không nghĩ là lần đầu gọi khách, xuất sắc đấy". Bà khách lúc về còn nói "cố lên cậu trẻ". Con cảm động bố ạ. |
| Bố Phong | (tiếng Việt) Bố cũng cảm động. Hôm nào con cứ ghi sổ lại mấy số liệu: má phanh 3mm, lực phanh 1800N, khí thải CO bao nhiêu. Sau này về Việt Nam mở garage có vốn rồi đấy con. |
| Phong | (tiếng Việt) Vâng bố, con đã ghi hết vào sổ. Mỗi tối con dạy em Tuấn 15 phút, em ấy cũng đã thuộc 9 bước rồi. |
| Bố Phong | (tiếng Việt) Tốt. Hai anh em cùng cố. Giữ sức khoẻ. |
| Phong | (tiếng Việt) Vâng bố. Con đi nghỉ đây. |

---

## Tình huống 15 — Bàn học · 22:00, viết nhật ký lưu 9 công đoạn

| Vai | Lời thoại |
|---|---|
| Phong | (đọc nhẩm khi viết) <ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>車検<rt>しゃけん</rt></ruby><ruby>強化<rt>きょうか</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>。<ruby>初<rt>はじ</rt></ruby>めての1<ruby>台<rt>だい</rt></ruby>完了。<br>*(Tháng 6, tuần tăng cường 車検. Hoàn thành xe đầu tiên.)* |
| Phong | <ruby>車検<rt>しゃけん</rt></ruby>9<ruby>工程<rt>こうてい</rt></ruby>:①<ruby>受付<rt>うけつけ</rt></ruby> ②<ruby>外観<rt>がいかん</rt></ruby> ③<ruby>下回<rt>したまわ</rt></ruby>り ④エンジンルーム ⑤<ruby>室内<rt>しつない</rt></ruby> ⑥ブレーキテスター ⑦サイドスリップ ⑧<ruby>排気<rt>はいき</rt></ruby>ガス ⑨<ruby>完成<rt>かんせい</rt></ruby><ruby>検査<rt>けんさ</rt></ruby>。<br>*(9 công đoạn 車検: 1 tiếp nhận 2 ngoại quan 3 gầm 4 khoang máy 5 nội thất 6 phanh 7 trượt ngang 8 khí thải 9 hoàn thành.)* |
| Phong | <ruby>基準値<rt>きじゅんち</rt></ruby>:タイヤ<ruby>溝<rt>みぞ</rt></ruby>≥1.6ミリ・ブレーキパッド<ruby>限界<rt>げんかい</rt></ruby>2ミリ・バッテリー≥12V・ベルト<ruby>沈<rt>しず</rt></ruby>み<ruby>10<rt>じゅう</rt></ruby>ミリ・ブレーキ<ruby>左右差<rt>さゆうさ</rt></ruby>8%<ruby>以内<rt>いない</rt></ruby>・CO≤1.0%・HC≤300ppm。<br>*(Trị chuẩn: rãnh lốp ≥1.6mm, má phanh giới hạn 2mm, ắc quy ≥12V, dây đai lõm 10mm, chênh phanh trong 8%, CO ≤1%, HC ≤300ppm.)* |
| Phong | <ruby>今日<rt>きょう</rt></ruby>の<ruby>表現<rt>ひょうげん</rt></ruby>:〜の<ruby>流<rt>なが</rt></ruby>れを<ruby>教<rt>おし</rt></ruby>えていただけますか・〜について<ruby>確認<rt>かくにん</rt></ruby>させてください・〜を<ruby>追加<rt>ついか</rt></ruby>してもよろしいでしょうか・お<ruby>預<rt>あず</rt></ruby>かりいたします・<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました・<ruby>承<rt>うけたまわ</rt></ruby>りました・<ruby>異常<rt>いじょう</rt></ruby>がございました。<br>*(Mẫu câu hôm nay: cho em biết quy trình, cho em xác nhận, em xin thêm, em xin nhận, hôm nay cảm ơn, em xin nhận lời, có bất thường.)* |

---

## Đọng lại chương 3

Phong làm chủ toàn bộ quy trình 車検 9 công đoạn trong tuần tăng cường, học các mẫu câu năm 2 ngành ô tô: **hỏi quy trình kỹ thuật với 整備士長** (〜の流れを教えていただけますか), **xin xác nhận chi tiết kỹ thuật** (〜について確認させてください), **đề xuất sửa thêm với cấp trên** (〜を追加してもよろしいでしょうか), **tiếp khách lễ phép** (本日はありがとうございます・お預かりいたします・お引き渡しでよろしいでしょうか), **gọi điện đề xuất sửa thêm với khách** (〜の可能性がございます・〜を提案します・診断料は〜円です), **báo cáo phát hiện bất thường** (異常がございました・〜の点が気になります), và **giao xe** (お待たせいたしました・お気をつけてお帰りください). Nắm các trị số chuẩn 車検: タイヤ溝≥1.6ミリ, ブレーキパッド限界2ミリ, バッテリー≥12V, ブレーキ左右差8%, CO≤1.0%, HC≤300ppm. Dạy lại cho Tuấn 9 bước theo phương pháp 「見せる→一緒に→一人で」.

> Từ vựng & mẫu câu chương này: 車検・強化週間・受付・外観点検・下回り点検・エンジンルーム点検・室内点検・ブレーキテスター・サイドスリップ・排気ガス測定・完成検査・車検証・自賠責保険・納税証明書・お預かりいたします・追加整備・ブレーキパッド・サスペンション・冷却水・警告灯・エアバッグ・故障診断・制動力・左右差・基準値・本日はありがとうございました・〜の流れを教えていただけますか・〜について確認させてください・〜を追加してもよろしいでしょうか・〜の可能性がございます・異常がございました・承りました

## Bí quyết chương

- 車検 = đăng kiểm bắt buộc 2 năm/lần ở Nhật (xe mới đầu tiên là 3 năm). 9 bước cố định, KHÔNG được bỏ qua bất kỳ bước nào.
- Bộ giấy tờ 車検 BẮT BUỘC: `車検証` + `自賠責保険証明書` + `納税証明書` — 3 món, nhớ thuộc lòng.
- Trị số chuẩn cần nhớ: タイヤ溝≥1.6mm, ブレーキパッド限界2mm, バッテリー≥12V, ブレーキ左右差≤8% lực phanh, CO≤1.0%, HC≤300ppm.
- Khi phát hiện hạng mục biên (vd: má phanh 3mm), luôn đề xuất 「追加整備」 với khách bằng mẫu câu giải thích lý do kỹ thuật + chi phí cụ thể → tạo doanh thu cho garage + bảo vệ khách.
- エアバッグ警告灯 sáng = 100% NG車検 → phải 故障診断 trước, KHÔNG được tự sửa.
- Gọi điện khách: mở bằng `Anjoモータースの〜と申します` → trình bày `〜点ございます` → kết bằng `承りました` + thay đổi thời gian `お引き渡し時間を〜に変更させていただいてもよろしいでしょうか`.
- Khi giao xe luôn nói 3 thông tin: ngày 車検 tới + hạng mục cần theo dõi sau 車検 + lời cảm ơn `本日はありがとうございました・お気をつけて`.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 車検 | しゃけん | XA KIỂM | Đăng kiểm xe |
| 強化週間 | きょうかしゅうかん | CƯỜNG HOÁ CHU GIAN | Tuần tăng cường |
| 工程 | こうてい | CÔNG TRÌNH | Công đoạn |
| 順番 | じゅんばん | THUẬN PHIÊN | Trình tự, thứ tự |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | Rớt, không đậu |
| 受付 | うけつけ | THỌ PHÓ | Tiếp nhận, lễ tân |
| 外観点検 | がいかんてんけん | NGOẠI QUAN ĐIỂM KIỂM | Kiểm tra ngoại quan |
| 下回り | したまわり | HẠ HỒI | Phần gầm xe |
| 室内点検 | しつないてんけん | THẤT NỘI ĐIỂM KIỂM | Kiểm tra nội thất |
| 完成検査 | かんせいけんさ | HOÀN THÀNH KIỂM TRA | Kiểm tra hoàn thành |
| 車検証 | しゃけんしょう | XA KIỂM CHỨNG | Giấy đăng kiểm |
| 自賠責保険 | じばいせきほけん | TỰ BỒI TRÁCH BẢO HIỂM | Bảo hiểm trách nhiệm bắt buộc |
| 納税証明書 | のうぜいしょうめいしょ | NỘP THUẾ CHỨNG MINH THƯ | Giấy chứng nhận nộp thuế |
| 預かる | あずかる | THUY | Nhận giữ |
| 追加整備 | ついかせいび | TRUY GIA CHỈNH BỊ | Sửa chữa thêm |
| 引き渡し | ひきわたし | DẪN ĐỘ | Giao xe |
| 車体 | しゃたい | XA THỂ | Thân xe |
| 傷 | きず | THƯƠNG | Vết xước |
| 凹み | へこみ | AO | Vết móp |
| 方向指示器 | ほうこうしじき | PHƯƠNG HƯỚNG CHỈ THỊ KHÍ | Đèn xi nhan |
| 偏摩耗 | へんまもう | THIÊN MA HAO | Mòn lệch |
| 残量 | ざんりょう | TÀN LƯỢNG | Lượng còn |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | Tiêu chuẩn đậu |
| ブレーキパッド | — | — | Má phanh |
| サスペンション | — | — | Hệ thống giảm xóc |
| 燃料パイプ | ねんりょうパイプ | NHIÊN LIỆU — | Ống nhiên liệu |
| 限界値 | げんかいち | GIỚI HẠN TRỊ | Trị số giới hạn |
| 推奨 | すいしょう | THÔI KHUYẾN | Đề nghị, khuyến cáo |
| 滲む | にじむ | THẨM | Rỉ ra (dầu) |
| 漏れ | もれ | LẬU | Rò rỉ |
| 冷却水 | れいきゃくすい | LÃNH KHƯỚC THUỶ | Nước làm mát |
| ブレーキ液 | ブレーキえき | — DỊCH | Dầu phanh |
| バッテリー | — | — | Ắc quy |
| ベルト | — | — | Dây đai |
| 亀裂 | きれつ | QUY LIỆT | Nứt |
| 摩耗 | まもう | MA HAO | Mòn |
| 張り具合 | はりぐあい | TRƯƠNG CỤ HỢP | Độ căng |
| 警告灯 | けいこくとう | CẢNH CÁO ĐĂNG | Đèn cảnh báo |
| 計器類 | けいきるい | KẾ KHÍ LOẠI | Đồng hồ các loại |
| エアバッグ | — | — | Túi khí |
| 故障診断 | こしょうしんだん | CỐ CHƯỚNG CHẨN ĐOÁN | Chẩn đoán lỗi |
| コネクタ | — | — | Connector, đầu cắm |
| 接触不良 | せっしょくふりょう | TIẾP XÚC BẤT LƯƠNG | Tiếp xúc kém |
| ブレーキテスター | — | — | Máy kiểm tra phanh |
| ローラー | — | — | Trục lăn |
| 制動力 | せいどうりょく | CHẾ ĐỘNG LỰC | Lực phanh |
| 左右差 | さゆうさ | TẢ HỮU SAI | Chênh lệch trái-phải |
| ニュートン | — | — | Newton (đơn vị lực) |
| サイドスリップ | — | — | Trượt ngang (bánh trước) |
| 横滑り | よこすべり | HOÀNH HOẠT | Trượt ngang |
| 直進性 | ちょくしんせい | TRỰC TIẾN TÍNH | Tính đi thẳng |
| 排気ガス | はいきガス | BÀI KHÍ — | Khí thải |
| 測定 | そくてい | TRẮC ĐỊNH | Đo lường |
| プローブ | — | — | Que đo |
| 暖機 | だんき | ÔN CƠ | Hâm nóng máy |
| 濃度 | のうど | NỒNG ĐỘ | Nồng độ |
| ピーピーエム | — | — | ppm (parts per million) |
| 添付 | てんぷ | THIÊM PHÓ | Đính kèm |
| 修理完了 | しゅうりかんりょう | TU LÝ HOÀN LIỄU | Sửa xong |
| 消灯 | しょうとう | TIÊU ĐĂNG | Tắt đèn |
| 合計 | ごうけい | HỢP KẾ | Tổng cộng |
| 明細 | めいさい | MINH TẾ | Bảng kê chi tiết |
| 承る | うけたまわる | THỪA | Nhận, tuân |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000004, 800000044, NULL, 'markdown_book', 'T4. Máy chẩn đoán OBD2 — đọc mã lỗi (OBD2スキャナーで故障コードを読む)', '# Sách thực tập sinh ô tô · T4. Máy chẩn đoán OBD2 — đọc mã lỗi (OBD2スキャナーで故障コードを読む)

> **Mục tiêu nhân vật:** Phong (22 tuổi, Hải Phòng, năm 2, N3 cận) học sử dụng máy chẩn đoán OBD2 (スキャンツール) đọc mã lỗi DTC, cùng Tuấn xử lý 1 xe khách Honda Fit lỗi đèn engine. Học các mẫu hội thoại tiếng Nhật chuyên sâu ngành ô tô: nghe khách kể triệu chứng (症状をお聞かせください), hỏi lễ phép về tiền sử (〜のような症状はございましたか), giải thích cách kết nối máy cho kohai (DLCコネクタに繋ぎます), đọc mã DTC và giải thích (P0301は〜という意味です), trao đổi giả thuyết với 整備士長 (〜が原因の可能性があります), và thông báo kết quả cho khách (原因が判明しました).

---

## Bối cảnh

Tháng 7 năm 2026. Sau chiến dịch 車検, garage Anjo nhận xe Honda Fit của anh Suzuki (35 tuổi) — đèn check engine bật, công suất xe yếu. Yamada giao Phong dùng máy OBD2 chẩn đoán dưới sự giám sát của mình, đồng thời cho Tuấn quan sát. Garage có 2 máy chẩn đoán: máy hãng Toyota chuyên cho Toyota系, và máy đa hãng Snap-on Solus dùng cho xe ngoại. Chương này tập trung quy trình OBD2: nhận xe + phỏng vấn → kết nối DLC → đọc DTC → freeze frame → 動作データ → 仮説 → 検証修理 → 消去 + tái test. Mã lỗi điển hình: P0301 (xy lanh 1 misfire) và P0420 (catalyst hiệu suất kém).

---

## Tình huống 1 — 受付カウンター · 9:00, anh Suzuki khách hàng mang xe đến

| Vai | Lời thoại |
|---|---|
| Suzuki | おはようございます。<ruby>予約<rt>よやく</rt></ruby>なしですみません。<ruby>車<rt>くるま</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くて...<br>*(Chào buổi sáng. Xin lỗi không đặt hẹn trước. Xe tôi đang có vấn đề...)* |
| Phong | おはようございます、<ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>。Anjoモータースのフォンと<ruby>申<rt>もう</rt></ruby>します。<ruby>症状<rt>しょうじょう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Chào buổi sáng, anh Suzuki. Tôi là Phong, Anjo Motors. Anh kể triệu chứng giúp em.)* |
| Suzuki | <ruby>昨日<rt>きのう</rt></ruby>からエンジン<ruby>警告<rt>けいこく</rt></ruby>灯が<ruby>点灯<rt>てんとう</rt></ruby>しっぱなしです。<ruby>加速<rt>かそく</rt></ruby>も<ruby>弱<rt>よわ</rt></ruby>くなった<ruby>感<rt>かん</rt></ruby>じがします。<br>*(Từ hôm qua đèn cảnh báo engine sáng liên tục. Cảm giác tăng tốc cũng yếu đi.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>少<rt>すこ</rt></ruby>しお<ruby>聞<rt>き</rt></ruby>かせください。<ruby>振動<rt>しんどう</rt></ruby>のような<ruby>症状<rt>しょうじょう</rt></ruby>はございましたか?<br>*(Em rõ. Xin hỏi thêm. Có triệu chứng như rung động không ạ?)* |
| Suzuki | あ、そういえばアイドリングの<ruby>時<rt>とき</rt></ruby>、エンジンがガタガタします。<br>*(À nhắc mới nhớ, lúc nổ máy tại chỗ, máy hơi giật giật.)* |
| Phong | エンジン<ruby>警告<rt>けいこく</rt></ruby>灯は<ruby>点滅<rt>てんめつ</rt></ruby>していますか、<ruby>点灯<rt>てんとう</rt></ruby>のままですか?<br>*(Đèn cảnh báo engine nhấp nháy hay sáng liên tục ạ?)* |
| Suzuki | <ruby>点灯<rt>てんとう</rt></ruby>のままです。<br>*(Sáng liên tục.)* |
| Phong | わかりました。<ruby>走行<rt>そうこう</rt></ruby><ruby>距離<rt>きょり</rt></ruby>と<ruby>前回<rt>ぜんかい</rt></ruby>のオイル<ruby>交換<rt>こうかん</rt></ruby><ruby>時期<rt>じき</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Hiểu rồi. Anh cho em biết số km và lần thay dầu gần nhất được không ạ?)* |
| Suzuki | <ruby>走行<rt>そうこう</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5000<rt>ごせん</rt></ruby>キロ、オイル<ruby>交換<rt>こうかん</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>です。<br>*(85.000km, thay dầu 3 tháng trước.)* |
| Phong | スパークプラグの<ruby>交換<rt>こうかん</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>はございますか?<br>*(Lịch sử thay bugi có không ạ?)* |
| Suzuki | プラグ?<ruby>覚<rt>おぼ</rt></ruby>えていないです。<ruby>新車<rt>しんしゃ</rt></ruby>から<ruby>交換<rt>こうかん</rt></ruby>していないかもしれません。<br>*(Bugi? Tôi không nhớ. Có thể từ lúc mua chưa thay.)* |
| Phong | <ruby>承知<rt>しょうち</rt></ruby>しました。スキャナーで<ruby>故障<rt>こしょう</rt></ruby>コードを<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>って、<ruby>原因<rt>げんいん</rt></ruby>を<ruby>特定<rt>とくてい</rt></ruby>させていただきます。<br>*(Em rõ. Em sẽ đọc mã lỗi bằng máy scanner để xác định nguyên nhân.)* |
| Suzuki | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>料金<rt>りょうきん</rt></ruby>は?<br>*(Nhờ anh. Phí thế nào?)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>5500<rt>ごせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>しましたら、ご<ruby>連絡<rt>れんらく</rt></ruby>してから<ruby>修理<rt>しゅうり</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Phí chẩn đoán 5.500 yên. Sau khi xác định được nguyên nhân, em sẽ liên lạc rồi mới sửa.)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |

---

## Tình huống 2 — Bàn工具 · 9:30, Phong giải thích máy OBD2 cho Tuấn trước khi dùng

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、<ruby>今日<rt>きょう</rt></ruby>はスキャンツールを<ruby>使<rt>つか</rt></ruby>います。OBD2スキャナーとも<ruby>言<rt>い</rt></ruby>います。<br>*(Tuấn, hôm nay dùng scan tool. Còn gọi là máy chẩn đoán OBD2.)* |
| Tuấn | OBD2?<br>*(OBD2?)* |
| Phong | On-Board Diagnostics の<ruby>2<rt>に</rt></ruby><ruby>世代<rt>せだい</rt></ruby><ruby>目<rt>め</rt></ruby>。<ruby>車<rt>くるま</rt></ruby>の<ruby>故障<rt>こしょう</rt></ruby>を<ruby>診断<rt>しんだん</rt></ruby>する<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>規格<rt>きかく</rt></ruby>です。<ruby>1996<rt>せんきゅうひゃくきゅうじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>以降<rt>いこう</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>はみんなOBD2<ruby>対応<rt>たいおう</rt></ruby>です。<br>*(On-Board Diagnostics đời 2. Là chuẩn chung để chẩn đoán xe. Xe từ 1996 trở đi đều hỗ trợ OBD2.)* |
| Tuấn | <ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>規格<rt>きかく</rt></ruby>、いいですね。<br>*(Chuẩn chung, hay nhỉ.)* |
| Phong | この<ruby>機械<rt>きかい</rt></ruby>はSnap-on Solus、<ruby>多<rt>た</rt></ruby><ruby>機種<rt>きしゅ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>です。トヨタ・ホンダ・<ruby>日産<rt>にっさん</rt></ruby>・スズキ、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>めます。<br>*(Máy này Snap-on Solus, hỗ trợ nhiều hãng. Toyota, Honda, Nissan, Suzuki đọc được hết.)* |
| Tuấn | <ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Cách dùng có khó không?)* |
| Phong | <ruby>基本<rt>きほん</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>機能<rt>きのう</rt></ruby>。<ruby>一<rt>ひと</rt></ruby>つ、<ruby>故障<rt>こしょう</rt></ruby>コード<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>り。<ruby>二<rt>ふた</rt></ruby>つ、フリーズフレームデータ。<ruby>三<rt>みっ</rt></ruby>つ、ライブデータ(<ruby>動作<rt>どうさ</rt></ruby>データ)。<ruby>四<rt>よっ</rt></ruby>つ、<ruby>故障<rt>こしょう</rt></ruby>コード<ruby>消去<rt>しょうきょ</rt></ruby>。<br>*(4 chức năng cơ bản. Một, đọc mã lỗi. Hai, dữ liệu freeze frame. Ba, dữ liệu live (động). Bốn, xoá mã lỗi.)* |
| Tuấn | <ruby>4<rt>よん</rt></ruby><ruby>機能<rt>きのう</rt></ruby>、メモします。<br>*(4 chức năng, em ghi.)* |
| Phong | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>原則<rt>げんそく</rt></ruby>:<ruby>故障<rt>こしょう</rt></ruby>コードを<ruby>読<rt>よ</rt></ruby>む<ruby>前<rt>まえ</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>消去<rt>しょうきょ</rt></ruby>しないでください。<ruby>消<rt>き</rt></ruby>えたら<ruby>証拠<rt>しょうこ</rt></ruby>がなくなります。<br>*(Nguyên tắc quan trọng nhất: trước khi đọc mã lỗi tuyệt đối đừng xoá. Xoá là mất bằng chứng.)* |
| Tuấn | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>読<rt>よ</rt></ruby>む→<ruby>記録<rt>きろく</rt></ruby>→<ruby>消去<rt>しょうきょ</rt></ruby>、の<ruby>順番<rt>じゅんばん</rt></ruby>ですね。<br>*(Em rõ. Thứ tự: đọc → ghi → xoá ạ.)* |
| Phong | <ruby>完璧<rt>かんぺき</rt></ruby>!<br>*(Hoàn hảo!)* |

---

## Tình huống 3 — ピット運転席 · 9:50, Phong kết nối DLC và quét lần đầu

*Phong mở cửa lái xe Honda Fit, tìm cổng OBD2.*

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、まずDLCコネクタを<ruby>探<rt>さが</rt></ruby>します。<br>*(Tuấn, trước hết tìm cổng DLC.)* |
| Tuấn | DLC?<br>*(DLC?)* |
| Phong | Data Link Connector。<ruby>診断<rt>しんだん</rt></ruby><ruby>機<rt>き</rt></ruby>を<ruby>繋<rt>つな</rt></ruby>ぐコネクタです。<ruby>運転席<rt>うんてんせき</rt></ruby>の<ruby>足元<rt>あしもと</rt></ruby>、ハンドルの<ruby>下<rt>した</rt></ruby>にあります。<br>*(Data Link Connector. Đầu cắm để nối máy chẩn đoán. Ở chỗ chân ghế lái, dưới vô lăng.)* |
| Phong | (chỉ tay) ここ、<ruby>16<rt>じゅうろく</rt></ruby>ピンのコネクタ。<br>*(Đây, đầu cắm 16 chân.)* |
| Tuấn | あ、ありました。<br>*(À, có rồi.)* |
| Phong | キーをONにします。エンジンは<ruby>始動<rt>しどう</rt></ruby>しません。これを「IGNオン」と<ruby>言<rt>い</rt></ruby>います。<br>*(Bật chìa ON. Không khởi động máy. Cái này gọi là "IGN On".)* |
| Phong | (cắm máy) ...スキャナー<ruby>接続<rt>せつぞく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<br>*(Đã nối scanner xong.)* |
| Tuấn | <ruby>画面<rt>がめん</rt></ruby>に<ruby>何<rt>なに</rt></ruby>か<ruby>出<rt>で</rt></ruby>ましたね。<br>*(Có gì hiện lên màn hình rồi.)* |
| Phong | はい。<ruby>車両<rt>しゃりょう</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby><ruby>自動<rt>じどう</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>:Honda Fit、<ruby>2018<rt>にせんじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby>モデル、<ruby>1500<rt>せんごひゃく</rt></ruby>cc。<ruby>正解<rt>せいかい</rt></ruby>です。<br>*(Vâng. Tự lấy thông tin xe: Honda Fit, 2018, 1500cc. Đúng.)* |
| Phong | では「Diagnostic Trouble Code」を<ruby>選<rt>えら</rt></ruby>びます。<br>*(Giờ chọn "Diagnostic Trouble Code".)* |

---

## Tình huống 4 — Vẫn ở ghế lái · 10:00, đọc mã lỗi và ghi chép

| Vai | Lời thoại |
|---|---|
| Phong | (đọc màn hình) コード<ruby>3<rt>みっ</rt></ruby>つあります。<br>*(Có 3 mã.)* |
| Phong | P0301:Cylinder 1 Misfire Detected。<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>。<br>*(P0301: Cylinder 1 Misfire Detected. Xy lanh số 1 phát hiện đánh lửa hụt.)* |
| Tuấn | <ruby>失火<rt>しっか</rt></ruby>?<br>*(失火?)* |
| Phong | エンジンの<ruby>燃焼<rt>ねんしょう</rt></ruby>が<ruby>失敗<rt>しっぱい</rt></ruby>することです。プラグの<ruby>故障<rt>こしょう</rt></ruby>とか、イグニッションコイルとか、<ruby>原因<rt>げんいん</rt></ruby>はいろいろです。<br>*(Là việc đốt cháy của máy bị hụt. Bugi hỏng, mobin đánh lửa... nguyên nhân nhiều thứ.)* |
| Phong | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、P0300:Random Misfire Detected。<ruby>複数<rt>ふくすう</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>のランダム<ruby>失火<rt>しっか</rt></ruby>。<br>*(Thứ hai, P0300: Random Misfire Detected. Nhiều xy lanh đánh lửa hụt ngẫu nhiên.)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、P0420:Catalyst System Efficiency Below Threshold (Bank 1)。<ruby>触媒<rt>しょくばい</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby><ruby>低下<rt>ていか</rt></ruby>。<br>*(Thứ ba, P0420: Catalyst System Efficiency Below Threshold. Hiệu suất chất xúc tác giảm.)* |
| Tuấn | <ruby>3<rt>みっ</rt></ruby>つも?<br>*(Có 3 mã liền?)* |
| Phong | はい。でも<ruby>関連<rt>かんれん</rt></ruby>している<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>失火<rt>しっか</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>くと、<ruby>燃<rt>も</rt></ruby>えていないガソリンが<ruby>触媒<rt>しょくばい</rt></ruby>に<ruby>流<rt>なが</rt></ruby>れて、<ruby>触媒<rt>しょくばい</rt></ruby>を<ruby>傷<rt>いた</rt></ruby>めます。<br>*(Vâng. Nhưng có thể liên quan. Misfire kéo dài, xăng chưa đốt chảy vào catalyst, làm hỏng catalyst.)* |
| Tuấn | なるほど!P0301とP0420は<ruby>原因<rt>げんいん</rt></ruby>と<ruby>結果<rt>けっか</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>ですね。<br>*(Ra vậy! P0301 và P0420 là quan hệ nhân quả.)* |
| Phong | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>整備士<rt>せいびし</rt></ruby>の<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>を<ruby>取<rt>と</rt></ruby>ります。<br>*(Tuyệt! Tư duy của kỹ thuật viên. Phải ghi lại.)* |

---

## Tình huống 5 — ピット · 10:15, đọc Freeze Frame Data

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>次<rt>つぎ</rt></ruby>、フリーズフレームデータを<ruby>読<rt>よ</rt></ruby>みます。<br>*(Tiếp theo, đọc freeze frame data.)* |
| Tuấn | フリーズフレーム?<br>*(Freeze frame?)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby>が<ruby>起<rt>お</rt></ruby>きた<ruby>瞬間<rt>しゅんかん</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>です。<ruby>写真<rt>しゃしん</rt></ruby>みたいなものです。<br>*(Là ghi chép trạng thái xe ngay khoảnh khắc lỗi xảy ra. Như chụp ảnh.)* |
| Phong | (đọc) P0301の<ruby>瞬間<rt>しゅんかん</rt></ruby>:エンジン<ruby>回転数<rt>かいてんすう</rt></ruby>800rpm、<ruby>車速<rt>しゃそく</rt></ruby>0キロ、<ruby>水温<rt>すいおん</rt></ruby>85<ruby>度<rt>ど</rt></ruby>、スロットル<ruby>開度<rt>かいど</rt></ruby>3%。<br>*(Khoảnh khắc P0301: vòng tua 800rpm, tốc độ 0km, nhiệt độ nước 85 độ, độ mở bướm ga 3%.)* |
| Tuấn | これは<ruby>何<rt>なに</rt></ruby>を<ruby>意味<rt>いみ</rt></ruby>しますか?<br>*(Cái này nghĩa gì ạ?)* |
| Phong | <ruby>回転数<rt>かいてんすう</rt></ruby>800rpm、<ruby>速度<rt>そくど</rt></ruby>0キロ、スロットル3%。これは<ruby>典型<rt>てんけい</rt></ruby><ruby>的<rt>てき</rt></ruby>なアイドリング<ruby>状態<rt>じょうたい</rt></ruby>です。つまり、<ruby>停車中<rt>ていしゃちゅう</rt></ruby>に<ruby>失火<rt>しっか</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しています。<br>*(800rpm, tốc 0km, ga 3%. Đây là trạng thái nổ máy tại chỗ điển hình. Tức là misfire xảy ra khi dừng xe.)* |
| Phong | <ruby>水温<rt>すいおん</rt></ruby>85<ruby>度<rt>ど</rt></ruby>=エンジンは<ruby>暖<rt>あたた</rt></ruby>かい。つまり<ruby>暖機後<rt>だんきご</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby>です。<br>*(Nhiệt 85 độ = máy đã ấm. Tức là misfire sau khi máy ấm.)* |
| Tuấn | お<ruby>客様<rt>きゃくさま</rt></ruby>が「アイドリング<ruby>時<rt>じ</rt></ruby>にガタガタ」と<ruby>言<rt>い</rt></ruby>ったのと<ruby>一致<rt>いっち</rt></ruby>します!<br>*(Khớp với lời khách "rung khi nổ máy tại chỗ"!)* |
| Phong | そのとおり!<ruby>症状<rt>しょうじょう</rt></ruby>とフリーズフレーム、<ruby>一致<rt>いっち</rt></ruby>です。<br>*(Đúng! Triệu chứng và freeze frame khớp.)* |

---

## Tình huống 6 — ピット · 10:30, Live Data — quan sát thông số động cơ thực thời

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>最後<rt>さいご</rt></ruby>、ライブデータです。エンジンを<ruby>始動<rt>しどう</rt></ruby>します。<br>*(Cuối, live data. Khởi động máy.)* |
| Tuấn | (đứng quan sát) ...<br>*( )* |
| Phong | (đọc màn hình) <ruby>回転数<rt>かいてんすう</rt></ruby>780rpm。<ruby>各<rt>かく</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby><ruby>回数<rt>かいすう</rt></ruby>:1<ruby>番<rt>ばん</rt></ruby>15<ruby>回<rt>かい</rt></ruby>、2<ruby>番<rt>ばん</rt></ruby>2<ruby>回<rt>かい</rt></ruby>、3<ruby>番<rt>ばん</rt></ruby>0<ruby>回<rt>かい</rt></ruby>、4<ruby>番<rt>ばん</rt></ruby>1<ruby>回<rt>かい</rt></ruby>。<br>*(Tua 780rpm. Số lần misfire mỗi xy lanh: số 1 15 lần, số 2 2 lần, số 3 0 lần, số 4 1 lần.)* |
| Tuấn | <ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>が<ruby>圧倒<rt>あっとう</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>多<rt>おお</rt></ruby>いです!<br>*(Xy lanh số 1 nhiều áp đảo!)* |
| Phong | はい。1<ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>確定<rt>かくてい</rt></ruby>です。<br>*(Vâng. Xác định vấn đề ở xy lanh số 1.)* |
| Phong | <ruby>酸素<rt>さんそ</rt></ruby>センサーも<ruby>見<rt>み</rt></ruby>てみよう。O2<ruby>上流<rt>じょうりゅう</rt></ruby>0.1〜0.9Vで<ruby>変動<rt>へんどう</rt></ruby>、<ruby>正常<rt>せいじょう</rt></ruby>。O2<ruby>下流<rt>かりゅう</rt></ruby>0.7Vでほぼ<ruby>固定<rt>こてい</rt></ruby>。<br>*(Xem cảm biến oxy. O2 thượng nguồn dao động 0.1~0.9V, bình thường. O2 hạ nguồn cố định 0.7V.)* |
| Tuấn | <ruby>固定<rt>こてい</rt></ruby>って?<br>*(Cố định là?)* |
| Phong | <ruby>触媒<rt>しょくばい</rt></ruby>が<ruby>正常<rt>せいじょう</rt></ruby>なら、<ruby>下流<rt>かりゅう</rt></ruby>センサーは<ruby>変動<rt>へんどう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないはずだけど、ほぼ<ruby>上流<rt>じょうりゅう</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>動<rt>うご</rt></ruby>きなら、<ruby>触媒<rt>しょくばい</rt></ruby>が<ruby>劣化<rt>れっか</rt></ruby>しているサインです。P0420の<ruby>裏付<rt>うらづ</rt></ruby>けです。<br>*(Nếu catalyst bình thường, cảm biến hạ nguồn dao động ít. Nhưng nếu chuyển động gần giống thượng nguồn thì là dấu hiệu catalyst suy giảm. Bằng chứng cho P0420.)* |
| Tuấn | ライブデータでP0420の<ruby>裏付<rt>うらづ</rt></ruby>けまで<ruby>取<rt>と</rt></ruby>れるんですね。<br>*(Live data lấy được cả bằng chứng P0420 nhỉ.)* |
| Phong | <ruby>正<rt>まさ</rt></ruby>に<ruby>整備士<rt>せいびし</rt></ruby>の<ruby>武器<rt>ぶき</rt></ruby>です。<br>*(Đúng là vũ khí của kỹ thuật viên.)* |

---

## Tình huống 7 — ピット · 11:00, thảo luận giả thuyết với Yamada

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>診断<rt>しんだん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>をさせてください。<br>*(Anh Yamada, em xin trao đổi kết quả chẩn đoán.)* |
| Yamada | どうぞ。<br>*(Mời.)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby>コードは<ruby>3<rt>みっ</rt></ruby>つ:P0301・P0300・P0420。フリーズフレームはアイドリング<ruby>時<rt>じ</rt></ruby>の<ruby>失火<rt>しっか</rt></ruby>。ライブデータでは<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby><ruby>失火<rt>しっか</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>2回。<br>*(3 mã: P0301, P0300, P0420. Freeze frame là misfire khi nổ tại chỗ. Live data, xy lanh 1 misfire 15 lần, xy lanh 2 misfire 2 lần.)* |
| Yamada | <ruby>仮説<rt>かせつ</rt></ruby>は?<br>*(Giả thuyết là gì?)* |
| Phong | <ruby>3<rt>みっ</rt></ruby>つの<ruby>仮説<rt>かせつ</rt></ruby>があります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>のスパークプラグの<ruby>劣化<rt>れっか</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>走行<rt>そうこう</rt></ruby>8<ruby>万<rt>まん</rt></ruby>5000キロでプラグ<ruby>未交換<rt>みこうかん</rt></ruby>です。<br>*(Có 3 giả thuyết. Một, có khả năng bugi xy lanh 1 hỏng. Đã đi 85.000km mà chưa thay bugi.)* |
| Phong | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>イグニッションコイルの<ruby>故障<rt>こしょう</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>もあります。<br>*(Hai, có khả năng mobin đánh lửa xy lanh 1 hỏng.)* |
| Phong | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、インジェクターの<ruby>詰<rt>つ</rt></ruby>まりの<ruby>可能性<rt>かのうせい</rt></ruby>も<ruby>否定<rt>ひてい</rt></ruby>できません。<br>*(Ba, không thể loại trừ khả năng kim phun bị tắc.)* |
| Yamada | いいな。<ruby>確<rt>たし</rt></ruby>かめ<ruby>方<rt>かた</rt></ruby>は?<br>*(Tốt. Cách kiểm tra?)* |
| Phong | コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストを<ruby>提案<rt>ていあん</rt></ruby>します。1<ruby>番<rt>ばん</rt></ruby>と3<ruby>番<rt>ばん</rt></ruby>のコイルを<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えて、もう<ruby>一度<rt>いちど</rt></ruby><ruby>失火<rt>しっか</rt></ruby>を<ruby>測定<rt>そくてい</rt></ruby>します。<ruby>失火<rt>しっか</rt></ruby>が3<ruby>番<rt>ばん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ったら、コイル<ruby>故障<rt>こしょう</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>。<ruby>移<rt>うつ</rt></ruby>らなかったら、プラグかインジェクター。<br>*(Em đề nghị đổi mobin. Đổi mobin xy lanh 1 và 3, đo misfire lại. Nếu misfire chuyển sang số 3, xác định mobin hỏng. Không chuyển thì là bugi hoặc kim phun.)* |
| Yamada | <ruby>論理的<rt>ろんりてき</rt></ruby>でいい。<ruby>進<rt>すす</rt></ruby>めろ。<br>*(Logic, tốt. Tiến hành đi.)* |
| Phong | あと、<ruby>触媒<rt>しょくばい</rt></ruby>P0420は、まず<ruby>失火<rt>しっか</rt></ruby><ruby>修理後<rt>しゅうりご</rt></ruby>に<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>たいと<ruby>思<rt>おも</rt></ruby>います。<ruby>触媒<rt>しょくばい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>は<ruby>高額<rt>こうがく</rt></ruby>ですので。<br>*(Còn P0420 catalyst, em muốn xem tình hình sau khi sửa misfire đã. Thay catalyst tốn nhiều tiền.)* |
| Yamada | いい<ruby>判断<rt>はんだん</rt></ruby>。<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>目線<rt>めせん</rt></ruby>だな。<br>*(Phán đoán tốt. Đứng góc nhìn khách hàng.)* |

---

## Tình huống 8 — ピット · 11:30, kiểm tra giả thuyết — đổi coil 1 ↔ 3

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストです。<ruby>手順<rt>てじゅん</rt></ruby>:キーOFF→コネクタ<ruby>抜<rt>ぬ</rt></ruby>く→コイルボルト<ruby>外<rt>はず</rt></ruby>す→1<ruby>番<rt>ばん</rt></ruby>と3<ruby>番<rt>ばん</rt></ruby><ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>え→<ruby>戻<rt>もど</rt></ruby>す→キーON→<ruby>再測定<rt>さいそくてい</rt></ruby>。<br>*(Tuấn, kiểm tra đổi mobin. Quy trình: tắt chìa → rút đầu cắm → tháo bu lông mobin → đổi 1 và 3 → lắp lại → bật chìa → đo lại.)* |
| Tuấn | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ.)* |
| Phong | (thao tác) ...<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>え<ruby>完了<rt>かんりょう</rt></ruby>。コードを<ruby>消去<rt>しょうきょ</rt></ruby>して、<ruby>10<rt>じゅっ</rt></ruby><ruby>分間<rt>ぷんかん</rt></ruby>アイドリング。<br>*(Đã đổi xong. Xoá mã rồi nổ máy tại chỗ 10 phút.)* |
| (10 phút sau) | |
| Phong | <ruby>結果<rt>けっか</rt></ruby>:P0303 Cylinder 3 Misfire Detected。3<ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りました!<br>*(Kết quả: P0303 Cylinder 3 Misfire Detected. Chuyển sang xy lanh 3 rồi!)* |
| Tuấn | おー!<ruby>確定<rt>かくてい</rt></ruby>ですね。<br>*(Ồ! Xác định rồi nhỉ.)* |
| Phong | はい。<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けた<ruby>旧<rt>きゅう</rt></ruby>3<ruby>番<rt>ばん</rt></ruby>コイル=<ruby>正常<rt>せいじょう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けた<ruby>旧<rt>きゅう</rt></ruby>1<ruby>番<rt>ばん</rt></ruby>コイル=<ruby>故障<rt>こしょう</rt></ruby>。<ruby>論理<rt>ろんり</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>原因<rt>げんいん</rt></ruby>はイグニッションコイル<ruby>故障<rt>こしょう</rt></ruby>です。<br>*(Vâng. Mobin 3 cũ giờ ở số 1 = bình thường, mobin 1 cũ giờ ở số 3 = hỏng. Logic là nguyên nhân do mobin đánh lửa hỏng.)* |
| Phong | プラグも8<ruby>万<rt>まん</rt></ruby>5000キロで<ruby>未交換<rt>みこうかん</rt></ruby>なので、<ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>します。<br>*(Bugi cũng 85.000km chưa thay nên em đề nghị thay cùng.)* |

---

## Tình huống 9 — Phòng điện thoại · 12:00, gọi điện báo khách

| Vai | Lời thoại |
|---|---|
| Phong | もしもし、<ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>でしょうか。Anjoモータースのフォンでございます。<br>*(Alô, có phải anh Suzuki. Tôi là Phong, Anjo Motors.)* |
| Suzuki | はい、フォンさん。<br>*(Vâng, Phong-san.)* |
| Phong | お<ruby>車<rt>くるま</rt></ruby>の<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>いたしました。<br>*(Chẩn đoán xe đã hoàn tất. Em xác định được nguyên nhân.)* |
| Suzuki | はい、どうぞ。<br>*(Vâng, anh nói.)* |
| Phong | <ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby>のイグニッションコイルが<ruby>故障<rt>こしょう</rt></ruby>しております。コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストで<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みでございます。<br>*(Mobin đánh lửa xy lanh 1 bị hỏng. Đã xác nhận bằng kiểm tra đổi mobin.)* |
| Suzuki | コイル<ruby>交換<rt>こうかん</rt></ruby>ですね。<br>*(Thay mobin nhỉ.)* |
| Phong | はい。<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>いたします。<ruby>残<rt>のこ</rt></ruby>りの<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>時期<rt>じき</rt></ruby>に<ruby>故障<rt>こしょう</rt></ruby>する<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Vâng. Em đề nghị thay đồng loạt 4 cái. 3 cái còn lại có khả năng cao hỏng cùng thời điểm.)* |
| Suzuki | <ruby>金額<rt>きんがく</rt></ruby>は?<br>*(Giá?)* |
| Phong | <ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>セットで<ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby>8000<ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby><ruby>6000<rt>ろくせん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>4000<rt>よんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(4 cái 28.000 yên, công thợ 6.000 yên. Tổng cộng 34.000 yên.)* |
| Phong | あと、スパークプラグも<ruby>8<rt>はち</rt></ruby><ruby>万<rt>まん</rt></ruby>5000キロ<ruby>未交換<rt>みこうかん</rt></ruby>ですので、<ruby>同時<rt>どうじ</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby>を<ruby>推奨<rt>すいしょう</rt></ruby>いたします。プラグ<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>8000<ruby>円<rt>えん</rt></ruby>、<ruby>工賃<rt>こうちん</rt></ruby>は<ruby>同時<rt>どうじ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>のため<ruby>追加<rt>ついか</rt></ruby>なしです。<br>*(Còn bugi 85.000km chưa thay nên em đề nghị thay cùng. 4 bugi 8.000 yên, công thợ không phụ thu vì làm cùng.)* |
| Suzuki | <ruby>同時<rt>どうじ</rt></ruby><ruby>工賃<rt>こうちん</rt></ruby>0は<ruby>嬉<rt>うれ</rt></ruby>しいね。<ruby>合計<rt>ごうけい</rt></ruby>?<br>*(Công không tính thêm sướng nhỉ. Tổng?)* |
| Phong | <ruby>診断<rt>しんだん</rt></ruby><ruby>料<rt>りょう</rt></ruby>5500<ruby>円<rt>えん</rt></ruby>+コイル<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>34000<rt>さんまんよんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>+プラグ<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>8000<ruby>円<rt>えん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>7500<rt>ななせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Phí chẩn đoán 5.500 + 4 mobin 34.000 + 4 bugi 8.000. Tổng 47.500 yên.)* |
| Suzuki | お<ruby>願<rt>ねが</rt></ruby>いします。エンジン<ruby>警告<rt>けいこく</rt></ruby>灯のP0420は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Nhờ anh. Còn P0420 đèn engine có ổn không?)* |
| Phong | P0420は<ruby>触媒<rt>しょくばい</rt></ruby>の<ruby>劣化<rt>れっか</rt></ruby><ruby>警告<rt>けいこく</rt></ruby>です。<ruby>失火<rt>しっか</rt></ruby>の<ruby>修理後<rt>しゅうりご</rt></ruby>に<ruby>消<rt>き</rt></ruby>える<ruby>場合<rt>ばあい</rt></ruby>もございます。まずコイル・プラグ<ruby>交換<rt>こうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>てから、ご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<ruby>触媒<rt>しょくばい</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>は<ruby>高額<rt>こうがく</rt></ruby>ですので。<br>*(P0420 là cảnh báo suy giảm catalyst. Có trường hợp sau khi sửa misfire thì tắt. Trước hết thay coil, plug rồi quan sát, em sẽ liên lạc lại. Thay catalyst tốn tiền.)* |
| Suzuki | フォンさん、<ruby>説明<rt>せつめい</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいですね。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Phong-san, giải thích dễ hiểu nhỉ. Tôi yên tâm.)* |
| Phong | ありがとうございます。<ruby>修理後<rt>しゅうりご</rt></ruby>、<ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>頃にご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Cảm ơn anh. Sau khi sửa, khoảng 17 giờ em sẽ liên lạc.)* |

---

## Tình huống 10 — ピット · 14:00, thay coil + plug, Tuấn hỗ trợ

| Vai | Lời thoại |
|---|---|
| Phong | トゥアン、コイル<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>とプラグ<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>します。トゥアンは<ruby>新品<rt>しんぴん</rt></ruby>のプラグの<ruby>準備<rt>じゅんび</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tuấn, thay 4 mobin và 4 bugi. Em chuẩn bị bugi mới giúp.)* |
| Tuấn | はい。プラグの<ruby>型番<rt>かたばん</rt></ruby>は?<br>*(Vâng. Số hiệu bugi?)* |
| Phong | NGK SILZKR7B11、4<ruby>本<rt>ほん</rt></ruby>。コイルはホンダ<ruby>純正<rt>じゅんせい</rt></ruby>30520-RB0-S01、4<ruby>本<rt>ほん</rt></ruby>です。<br>*(NGK SILZKR7B11, 4 cái. Mobin chính hãng Honda 30520-RB0-S01, 4 cái.)* |
| Tuấn | (lấy ra) ...ありました。<br>*(Có rồi.)* |
| Phong | プラグの<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けトルクは<ruby>規定値<rt>きていち</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby>ニュートンメートルです。トルクレンチを<ruby>使<rt>つか</rt></ruby>います。<br>*(Trị siết bugi quy định 22 Nm. Dùng cờ lê lực.)* |
| Tuấn | <ruby>22<rt>にじゅうに</rt></ruby>ニュートンメートル。メモ。<br>*(22 Nm. Ghi.)* |
| Phong | プラグの<ruby>新品<rt>しんぴん</rt></ruby>と<ruby>古<rt>ふる</rt></ruby>いの、<ruby>並<rt>なら</rt></ruby>べて<ruby>比<rt>くら</rt></ruby>べて。<br>*(Bugi mới và cũ, xếp ra so xem.)* |
| Tuấn | あ!1<ruby>番<rt>ばん</rt></ruby>のプラグ、<ruby>電極<rt>でんきょく</rt></ruby>がすごく<ruby>摩耗<rt>まもう</rt></ruby>しています。<br>*(A! Bugi số 1 cực mòn ghê.)* |
| Phong | はい。<ruby>燃焼<rt>ねんしょう</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>できます。1<ruby>番<rt>ばん</rt></ruby>は<ruby>黒<rt>くろ</rt></ruby>くて、<ruby>燃焼<rt>ねんしょう</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>のサイン。<ruby>他<rt>た</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>、<ruby>正常<rt>せいじょう</rt></ruby>な<ruby>燃焼<rt>ねんしょう</rt></ruby>。<br>*(Vâng. Có thể đoán được trạng thái cháy. Số 1 đen, dấu hiệu cháy kém. 3 cái khác nâu, cháy bình thường.)* |
| Tuấn | プラグも<ruby>診断<rt>しんだん</rt></ruby><ruby>道具<rt>どうぐ</rt></ruby>になるんですね。<br>*(Bugi cũng là dụng cụ chẩn đoán nhỉ.)* |
| Phong | <ruby>整備士<rt>せいびし</rt></ruby>はすべてが<ruby>情報<rt>じょうほう</rt></ruby><ruby>源<rt>げん</rt></ruby>です。<br>*(Kỹ thuật viên thì cái gì cũng là nguồn thông tin.)* |

---

## Tình huống 11 — ピット · 16:00, kiểm tra sau sửa — xoá mã, test lại

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>交換<rt>こうかん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。スキャナーで<ruby>故障<rt>こしょう</rt></ruby>コードを<ruby>消去<rt>しょうきょ</rt></ruby>します。<br>*(Đã thay xong. Xoá mã lỗi bằng scanner.)* |
| Tuấn | <ruby>消去<rt>しょうきょ</rt></ruby>OK?<br>*(Xoá OK?)* |
| Phong | <ruby>消去<rt>しょうきょ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。エンジン<ruby>始動<rt>しどう</rt></ruby>、20<ruby>分間<rt>ぷんかん</rt></ruby>アイドリングと<ruby>軽<rt>かる</rt></ruby>い<ruby>走行<rt>そうこう</rt></ruby>テスト。<br>*(Đã xoá. Khởi động máy, 20 phút nổ tại chỗ và test đi nhẹ.)* |
| (20 phút sau Phong lái xe quanh khu) | |
| Phong | (về garage) ライブデータ:<ruby>失火<rt>しっか</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby><ruby>全<rt>すべ</rt></ruby>て0<ruby>回<rt>かい</rt></ruby>。<ruby>故障<rt>こしょう</rt></ruby>コード:なし。<ruby>修理<rt>しゅうり</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>です。<br>*(Live data: misfire 4 xy lanh đều 0. Mã lỗi: không có. Sửa thành công.)* |
| Tuấn | やった!<br>*(Tuyệt!)* |
| Phong | O2<ruby>下流<rt>かりゅう</rt></ruby>センサーも0.6〜0.8Vで<ruby>軽<rt>かる</rt></ruby>く<ruby>変動<rt>へんどう</rt></ruby>しています。<ruby>触媒<rt>しょくばい</rt></ruby>はまだ<ruby>機能<rt>きのう</rt></ruby>している<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>1<rt>いっ</rt></ruby><ruby>週間後<rt>しゅうかんご</rt></ruby>に<ruby>再点検<rt>さいてんけん</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Cảm biến O2 hạ nguồn cũng dao động nhẹ 0.6~0.8V. Có khả năng catalyst vẫn hoạt động. Em đề nghị tái kiểm tra sau 1 tuần.)* |
| Yamada | (đến) フォン、<ruby>結果<rt>けっか</rt></ruby>は?<br>*(Phong, kết quả?)* |
| Phong | <ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>失火<rt>しっか</rt></ruby><ruby>消失<rt>しょうしつ</rt></ruby>、<ruby>故障<rt>こしょう</rt></ruby>コードなし。P0420は1<ruby>週間<rt>しゅうかん</rt></ruby><ruby>様子<rt>ようす</rt></ruby><ruby>見<rt>み</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Đã sửa xong, misfire mất, không còn mã lỗi. P0420 đề nghị quan sát 1 tuần.)* |
| Yamada | <ruby>完璧<rt>かんぺき</rt></ruby>。トゥアンも<ruby>勉強<rt>べんきょう</rt></ruby>になったな?<br>*(Hoàn hảo. Tuấn cũng học được nhỉ?)* |
| Tuấn | はい!OBD2の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>と<ruby>仮説<rt>かせつ</rt></ruby><ruby>検証<rt>けんしょう</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng! Cách dùng OBD2 và phương pháp kiểm chứng giả thuyết, em hiểu rõ.)* |

---

## Tình huống 12 — 受付カウンター · 17:30, giao xe và giải thích cho khách

| Vai | Lời thoại |
|---|---|
| Suzuki | お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Phiền anh.)* |
| Phong | <ruby>鈴木<rt>すずき</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Anh Suzuki, để anh chờ. Báo cáo sửa xong.)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời.)* |
| Phong | こちらが<ruby>診断<rt>しんだん</rt></ruby>レポートです。<ruby>故障<rt>こしょう</rt></ruby>コードP0301・P0300・P0420が<ruby>検出<rt>けんしゅつ</rt></ruby>されました。<br>*(Đây là báo cáo chẩn đoán. Đã phát hiện mã lỗi P0301, P0300, P0420.)* |
| Phong | コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストで<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>イグニッションコイル<ruby>故障<rt>こしょう</rt></ruby>と<ruby>確定<rt>かくてい</rt></ruby>しました。<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>、スパークプラグも<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>いたしました。<br>*(Bằng test đổi mobin, đã xác định mobin xy lanh 1 hỏng. Thay đồng loạt 4 mobin, 4 bugi.)* |
| Phong | <ruby>修理後<rt>しゅうりご</rt></ruby>、<ruby>20<rt>にじゅっ</rt></ruby><ruby>分間<rt>ぷんかん</rt></ruby>の<ruby>走行<rt>そうこう</rt></ruby>テストで<ruby>失火<rt>しっか</rt></ruby>ゼロ、<ruby>故障<rt>こしょう</rt></ruby>コードなしを<ruby>確認<rt>かくにん</rt></ruby>済<ruby>済<rt>ず</rt></ruby>みです。<br>*(Sau sửa, 20 phút test đường, misfire bằng 0, không còn mã lỗi.)* |
| Suzuki | エンジン<ruby>警告<rt>けいこく</rt></ruby>灯は?<br>*(Đèn cảnh báo engine?)* |
| Phong | <ruby>消灯<rt>しょうとう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>済<ruby>済<rt>ず</rt></ruby>みです。<br>*(Đã xác nhận tắt.)* |
| Phong | P0420<ruby>触媒<rt>しょくばい</rt></ruby>は、<ruby>修理後<rt>しゅうりご</rt></ruby>のO2センサーデータが<ruby>軽<rt>かる</rt></ruby>く<ruby>変動<rt>へんどう</rt></ruby>しておりますので、<ruby>触媒<rt>しょくばい</rt></ruby>はまだ<ruby>機能<rt>きのう</rt></ruby>している<ruby>可能性<rt>かのうせい</rt></ruby>がございます。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>使用<rt>しよう</rt></ruby>していただいてから、もう<ruby>一度<rt>いちど</rt></ruby><ruby>再点検<rt>さいてんけん</rt></ruby>させていただきたいです。<ruby>再点検<rt>さいてんけん</rt></ruby><ruby>料<rt>りょう</rt></ruby>は<ruby>無料<rt>むりょう</rt></ruby>です。<br>*(P0420 catalyst, sau sửa cảm biến O2 đã dao động nhẹ nên catalyst có thể vẫn hoạt động. Em xin được tái kiểm tra sau 1 tuần dùng. Phí tái kiểm tra miễn phí.)* |
| Suzuki | <ruby>無料<rt>むりょう</rt></ruby>?ありがとうございます。<br>*(Miễn phí? Cảm ơn anh.)* |
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>合計<rt>ごうけい</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>7500<rt>ななせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>明細<rt>めいさい</rt></ruby>はこちらです。<br>*(Tổng cộng hôm nay 47.500 yên. Bảng kê đây ạ.)* |
| Suzuki | フォンさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。ありがとう。<br>*(Phong-san, em giúp tôi quá. Cảm ơn.)* |
| Phong | こちらこそ、<ruby>本日<rt>ほんじつ</rt></ruby>はAnjoモータースをご<ruby>利用<rt>りよう</rt></ruby>いただきありがとうございました。お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください。<br>*(Em mới phải cảm ơn. Hôm nay cảm ơn anh đã sử dụng Anjo Motors. Anh đi đường cẩn thận.)* |

---

## Tình huống 13 — Văn phòng 工場長 · 18:00, Sato khen Phong

| Vai | Lời thoại |
|---|---|
| Sato | フォンさん、<ruby>山田<rt>やまだ</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。<ruby>本日<rt>ほんじつ</rt></ruby>のホンダフィットの<ruby>診断<rt>しんだん</rt></ruby>、よくやりましたね。<br>*(Phong-san, tôi nghe anh Yamada kể. Chẩn đoán Honda Fit hôm nay, làm tốt nhỉ.)* |
| Phong | ありがとうございます。<ruby>山田<rt>やまだ</rt></ruby><ruby>整備士長<rt>せいびしちょう</rt></ruby>のご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Cảm ơn anh. Là nhờ anh Yamada chỉ bảo.)* |
| Sato | コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストの<ruby>提案<rt>ていあん</rt></ruby>、<ruby>触媒<rt>しょくばい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>様子<rt>ようす</rt></ruby><ruby>見<rt>み</rt></ruby>提案、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>目線<rt>めせん</rt></ruby>ですごく<ruby>良<rt>よ</rt></ruby>かったです。<br>*(Đề xuất test đổi mobin, đề xuất xem catalyst 1 tuần, đứng góc nhìn khách rất tốt.)* |
| Phong | ありがとうございます。<br>*(Cảm ơn anh.)* |
| Sato | <ruby>来月<rt>らいげつ</rt></ruby>から、フォンさんに<ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やします。<ruby>承知<rt>しょうち</rt></ruby>してもらえますか?<br>*(Từ tháng sau tăng phụ trách chẩn đoán cho Phong. Em đồng ý không?)* |
| Phong | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>にもなります。<br>*(Vâng, em rất mong. Cũng là học cho 2級 検定.)* |
| Sato | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>も<ruby>受<rt>う</rt></ruby>けるんですか?<br>*(Em định thi cả 2 cấp?)* |
| Phong | はい、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng, em muốn thi năm 3.)* |
| Sato | <ruby>応援<rt>おうえん</rt></ruby>します。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Tôi ủng hộ. Cố lên nhé.)* |
| Phong | ありがとうございます。<br>*(Cảm ơn anh.)* |

---

## Tình huống 14 — Ký túc xá bếp · 21:00, gọi điện Hải Phòng cho bố (Cảnh tiếng Việt)

> Cảnh tiếng Việt — Phong kể bố chuyện chẩn đoán xe Honda Fit thành công.

| Vai | Lời thoại |
|---|---|
| Phong | (tiếng Việt) Bố ơi, hôm nay con xử lý 1 ca khó nè bố. |
| Bố Phong | (tiếng Việt) Sao con? Kể bố nghe. |
| Phong | (tiếng Việt) Có anh khách Suzuki mang xe Honda Fit đến, đèn engine bật, máy rung khi nổ tại chỗ. Con dùng máy chẩn đoán *OBD2* — On-Board Diagnostics, đọc ra 3 mã lỗi. |
| Bố Phong | (tiếng Việt) 3 mã liền hả? |
| Phong | (tiếng Việt) Vâng. P0301 là xy lanh số 1 đánh lửa hụt. P0300 là nhiều xy lanh hụt. P0420 là catalyst — bộ xúc tác khí thải — bị giảm hiệu suất. |
| Bố Phong | (tiếng Việt) Bố mới biết. Bên đó có máy đọc mã lỗi à? |
| Phong | (tiếng Việt) Có bố. Máy *Snap-on Solus*, đa hãng, đọc Toyota Honda Nissan tất. Con nhìn freeze frame data — như chụp ảnh khoảnh khắc lỗi — biết được xe rung khi nổ tại chỗ. Rồi xem live data — số lần misfire theo từng xy lanh, xy lanh 1 nhiều áp đảo. |
| Bố Phong | (tiếng Việt) Đỉnh thật con. Sau đó? |
| Phong | (tiếng Việt) Con với anh Yamada thảo luận 3 giả thuyết: bugi cũ, mobin hỏng, kim phun tắc. Sau đó con đề xuất *coil swap test* — đổi mobin xy lanh 1 và 3. Sau khi đổi, lỗi misfire chuyển sang xy lanh 3. Vậy là khẳng định mobin xy lanh 1 hỏng. |
| Bố Phong | (tiếng Việt) Logic ghê. Phương pháp loại trừ giả thuyết — đúng phong cách kỹ thuật cơ. |
| Phong | (tiếng Việt) Vâng. Con đề nghị thay luôn 4 mobin và 4 bugi cùng lúc. Riêng P0420 catalyst, con đề nghị khách dùng 1 tuần rồi tái kiểm tra miễn phí — vì thay catalyst tốn 80.000-100.000 yên, không muốn khách tốn vô ích. |
| Bố Phong | (tiếng Việt) Đứng góc nhìn khách hàng đó con. Bố làm ở cảng bao năm cũng vậy thôi — sửa cái gì cần sửa, đừng sửa cái không cần. |
| Phong | (tiếng Việt) Chiều trưởng xưởng Sato gọi con vào khen, bảo từ tháng sau con phụ trách chẩn đoán nhiều hơn. Còn nói ủng hộ con thi *2級整備士* năm sau nữa. |
| Bố Phong | (tiếng Việt) Trời, con bố thành chuyên gia chẩn đoán rồi đấy. 2級 là cao đấy con, cố lên. |
| Phong | (tiếng Việt) Vâng bố. Em Tuấn cũng học được nhiều hôm nay. Em ấy nhớ nguyên tắc đọc-ghi-xoá rồi. |
| Bố Phong | (tiếng Việt) Tốt. Hai anh em cùng tiến. Bố mẹ tự hào. |
| Phong | (tiếng Việt) Vâng bố. Con đi nghỉ đây. |

---

## Tình huống 15 — Bàn học · 22:00, ghi nhật ký lưu mã lỗi và mẫu câu

| Vai | Lời thoại |
|---|---|
| Phong | (đọc nhẩm khi viết) <ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>。<ruby>初<rt>はじ</rt></ruby>めての<ruby>本格<rt>ほんかく</rt></ruby><ruby>故障<rt>こしょう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。<ruby>修理<rt>しゅうり</rt></ruby><ruby>成功<rt>せいこう</rt></ruby>。<br>*(Tháng 7. Lần đầu phụ trách chẩn đoán nghiêm túc. Sửa thành công.)* |
| Phong | <ruby>故障<rt>こしょう</rt></ruby>コード<ruby>例<rt>れい</rt></ruby>:P0301=1<ruby>番<rt>ばん</rt></ruby><ruby>気筒<rt>きとう</rt></ruby><ruby>失火<rt>しっか</rt></ruby>、P0302=2<ruby>番<rt>ばん</rt></ruby>失火、P0300=ランダム失火、P0420=<ruby>触媒<rt>しょくばい</rt></ruby><ruby>劣化<rt>れっか</rt></ruby>、P0171=<ruby>燃料<rt>ねんりょう</rt></ruby>リーン、P0172=<ruby>燃料<rt>ねんりょう</rt></ruby>リッチ。<br>*(Ví dụ mã lỗi: P0301 xy lanh 1 misfire, P0302 xy lanh 2, P0300 random, P0420 catalyst suy giảm, P0171 nhiên liệu nghèo, P0172 nhiên liệu giàu.)* |
| Phong | OBD2の<ruby>4<rt>よん</rt></ruby><ruby>機能<rt>きのう</rt></ruby>:①DTC<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>り ②フリーズフレーム ③ライブデータ ④<ruby>消去<rt>しょうきょ</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>に「<ruby>読<rt>よ</rt></ruby>む→<ruby>記録<rt>きろく</rt></ruby>→<ruby>修理<rt>しゅうり</rt></ruby>→<ruby>消去<rt>しょうきょ</rt></ruby>→<ruby>再<rt>さい</rt></ruby>テスト」の<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(4 chức năng OBD2: 1 đọc DTC 2 freeze frame 3 live data 4 xoá. Tuyệt đối tuân thủ thứ tự "đọc → ghi → sửa → xoá → tái test".)* |
| Phong | <ruby>診断<rt>しんだん</rt></ruby><ruby>思考<rt>しこう</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>:<ruby>症状<rt>しょうじょう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>→コード<ruby>読<rt>よ</rt></ruby>み<ruby>取<rt>と</rt></ruby>り→<ruby>仮説<rt>かせつ</rt></ruby><ruby>3<rt>みっ</rt></ruby>つ→<ruby>検証<rt>けんしょう</rt></ruby>テスト。コイル<ruby>入<rt>い</rt></ruby>れ<ruby>替<rt>か</rt></ruby>えテストが<ruby>有効<rt>ゆうこう</rt></ruby>。<br>*(4 bước tư duy chẩn đoán: xác nhận triệu chứng → đọc mã → 3 giả thuyết → kiểm chứng. Test đổi mobin hiệu quả.)* |
| Phong | <ruby>表現<rt>ひょうげん</rt></ruby>:<ruby>症状<rt>しょうじょう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください・〜のような<ruby>症状<rt>しょうじょう</rt></ruby>はございましたか・<ruby>原因<rt>げんいん</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>いたしました・〜の<ruby>可能性<rt>かのうせい</rt></ruby>があります・〜を<ruby>推奨<rt>すいしょう</rt></ruby>いたします・<ruby>様子<rt>ようす</rt></ruby><ruby>見<rt>み</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Mẫu câu: xin kể triệu chứng, có triệu chứng ~ không, đã xác định nguyên nhân, có khả năng ~, em đề nghị ~, em đề nghị quan sát.)* |

---

## Đọng lại chương 4

Phong làm chủ máy chẩn đoán OBD2 và quy trình chẩn đoán lỗi 4 bước (症状確認 → コード読み取り → 仮説3つ → 検証テスト), học các mẫu câu năm 2 ngành ô tô đặc biệt chuyên sâu: **phỏng vấn khách về triệu chứng** (症状をお聞かせください・〜のような症状はございましたか・走行距離と前回の〜時期を教えていただけますか), **giải thích cách kết nối DLC cho kohai** (DLCコネクタはハンドルの下にあります・キーをONにします), **đọc mã DTC theo cấu trúc "Pxxxx: nghĩa+tác động"** (P0301は1番気筒の失火検出という意味です), **thảo luận giả thuyết với 整備士長** (〜が原因の可能性があります・コイル入れ替えテストを提案します・確かめ方は〜), **thông báo kết quả cho khách** (原因が判明いたしました・〜と確定しました・〜の可能性がございます・様子見を提案します), và **đứng góc nhìn khách hàng** (触媒交換は高額ですので・再点検料は無料です). Nắm 6 mã lỗi P0xxx điển hình (P0301, P0302, P0300, P0420, P0171, P0172), 4 chức năng OBD2, nguyên tắc tuyệt đối "đọc → ghi → sửa → xoá → tái test". Được 工場長 Sato khen và tăng phụ trách chẩn đoán từ tháng sau.

> Từ vựng & mẫu câu chương này: OBD2・スキャンツール・DLCコネクタ・故障コード・DTC・フリーズフレーム・ライブデータ・消去・P0301・P0300・P0420・失火・misfire・気筒・触媒・劣化・酸素センサー・O2上流・O2下流・スパークプラグ・イグニッションコイル・インジェクター・コイル入れ替えテスト・症状・判明・推奨・症状をお聞かせください・〜のような症状はございましたか・原因が判明いたしました・〜の可能性がございます・〜を推奨いたします・様子見を提案します・〜が原因の可能性があります

## Bí quyết chương

- OBD2 = chuẩn quốc tế đọc lỗi cho mọi xe từ 1996. Cổng DLC 16 chân nằm dưới vô lăng, chân ghế lái.
- 4 chức năng máy chẩn đoán BẮT BUỘC dùng theo thứ tự: ①DTC読み取り → ②フリーズフレーム → ③ライブデータ → ④消去. KHÔNG được xoá trước khi đọc + ghi.
- Cấu trúc mã DTC: chữ cái + 4 số. P=Powertrain, B=Body, C=Chassis, U=Network. Mã P03xx = misfire. P04xx = emission.
- Tư duy chẩn đoán 4 bước: ① 症状 (qua phỏng vấn khách) → ② DTC + freeze frame + live data → ③ ≥3 giả thuyết → ④ kiểm chứng bằng test (coil swap, plug swap, etc.).
- Khi phỏng vấn khách dùng câu mở `症状をお聞かせください` rồi đóng bằng câu cụ thể `〜のような症状はございましたか`. Đừng hỏi `わかりません?` kiểu thẩm vấn.
- Khi giải thích cho khách: cấu trúc 3 lớp: ① nguyên nhân kỹ thuật bằng câu đơn giản → ② hạng mục sửa + giá → ③ option/follow-up (vd: 様子見・再点検無料).
- Khi gặp lỗi P0420 catalyst đi kèm misfire, BAO GIỜ cũng sửa misfire trước → quan sát 1-2 tuần → mới quyết định thay catalyst. Tránh ép khách chi tiền không cần thiết.
- Sửa mobin/bugi nên thay theo BỘ (4 cái cùng lúc) chứ KHÔNG thay riêng cái hỏng — vì 3 cái còn lại có cùng tuổi thọ, sắp hỏng theo.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 症状 | しょうじょう | TRIỆU TRẠNG | Triệu chứng |
| 加速 | かそく | GIA TỐC | Tăng tốc |
| 振動 | しんどう | CHẤN ĐỘNG | Rung động |
| 点滅 | てんめつ | ĐIỂM MIỆT | Nhấp nháy |
| 点灯 | てんとう | ĐIỂM ĐĂNG | Sáng (đèn) |
| 走行距離 | そうこうきょり | TẨU HÀNH CỰ LY | Số km đi được |
| 履歴 | りれき | LÝ LỊCH | Lịch sử |
| 故障診断 | こしょうしんだん | CỐ CHƯỚNG CHẨN ĐOÁN | Chẩn đoán lỗi |
| 特定 | とくてい | ĐẶC ĐỊNH | Xác định, định danh |
| 判明 | はんめい | PHÁN MINH | Làm rõ, xác định |
| スキャンツール | — | — | Scan tool |
| OBD2 | — | — | OBD-II chuẩn chẩn đoán |
| 標準規格 | ひょうじゅんきかく | TIÊU CHUẨN QUY CÁCH | Tiêu chuẩn chung |
| DLCコネクタ | — | — | Đầu cắm DLC |
| 故障コード | こしょうコード | CỐ CHƯỚNG — | Mã lỗi DTC |
| フリーズフレーム | — | — | Freeze frame (ảnh chụp lỗi) |
| ライブデータ | — | — | Live data (dữ liệu động) |
| 消去 | しょうきょ | TIÊU KHỬ | Xoá |
| 記録 | きろく | KÝ LỤC | Ghi chép |
| 失火 | しっか | THẤT HỎA | Misfire (đánh lửa hụt) |
| 気筒 | きとう | KHÍ ỐNG | Xy lanh |
| 燃焼 | ねんしょう | NHIÊN THIÊU | Đốt cháy |
| 触媒 | しょくばい | XÚC MẠI | Chất xúc tác (catalyst) |
| 劣化 | れっか | LIỆT HOÁ | Suy giảm |
| 効率 | こうりつ | HIỆU SUẤT | Hiệu suất |
| 関連 | かんれん | QUAN LIÊN | Liên quan |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 関係 | かんけい | QUAN HỆ | Quan hệ |
| 瞬間 | しゅんかん | THUẤN GIAN | Khoảnh khắc |
| 状態 | じょうたい | TRẠNG THÁI | Trạng thái |
| 回転数 | かいてんすう | HỒI CHUYỂN SỐ | Vòng tua |
| 車速 | しゃそく | XA TỐC | Tốc độ xe |
| 水温 | すいおん | THUỶ ÔN | Nhiệt độ nước |
| スロットル | — | — | Bướm ga |
| 開度 | かいど | KHAI ĐỘ | Độ mở |
| 典型的 | てんけいてき | ĐIỂN HÌNH | Điển hình |
| 一致 | いっち | NHẤT TRÍ | Khớp nhau |
| 酸素センサー | さんそセンサー | TOAN TỐ — | Cảm biến oxy (O2 sensor) |
| 上流 | じょうりゅう | THƯỢNG LƯU | Thượng nguồn |
| 下流 | かりゅう | HẠ LƯU | Hạ nguồn |
| 変動 | へんどう | BIẾN ĐỘNG | Dao động |
| 固定 | こてい | CỐ ĐỊNH | Cố định |
| 裏付け | うらづけ | LÝ PHÓ | Bằng chứng phụ |
| 仮説 | かせつ | GIẢ THUYẾT | Giả thuyết |
| スパークプラグ | — | — | Bugi |
| イグニッションコイル | — | — | Mobin đánh lửa |
| インジェクター | — | — | Kim phun nhiên liệu |
| 詰まり | つまり | TRÁP | Tắc nghẽn |
| 否定 | ひてい | PHỦ ĐỊNH | Phủ định |
| 入れ替え | いれかえ | NHẬP THẾ | Đổi chỗ, hoán đổi |
| 論理的 | ろんりてき | LUẬN LÝ ĐÍCH | Logic, có lý lẽ |
| 確定 | かくてい | XÁC ĐỊNH | Xác định chắc chắn |
| 検証 | けんしょう | KIỂM CHỨNG | Kiểm chứng |
| 純正 | じゅんせい | THUẦN CHÍNH | Chính hãng |
| 型番 | かたばん | HÌNH PHIÊN | Số hiệu |
| トルクレンチ | — | — | Cờ lê lực |
| 電極 | でんきょく | ĐIỆN CỰC | Cực điện |
| 摩耗 | まもう | MA HAO | Mòn |
| 不良 | ふりょう | BẤT LƯƠNG | Kém, lỗi |
| 情報源 | じょうほうげん | THÔNG TIN NGUYÊN | Nguồn thông tin |
| 様子見 | ようすみ | DẠNG TỬ KIẾN | Quan sát thêm |
| 再点検 | さいてんけん | TÁI ĐIỂM KIỂM | Tái kiểm tra |
| 高額 | こうがく | CAO NGẠCH | Số tiền lớn |
| 工賃 | こうちん | CÔNG TRƯỚC | Tiền công thợ |
| 目線 | めせん | MỤC TUYẾN | Góc nhìn, ánh nhìn |
| 機能 | きのう | CƠ NĂNG | Chức năng |
| 検出 | けんしゅつ | KIỂM XUẤT | Phát hiện |
| 推奨 | すいしょう | THÔI KHUYẾN | Đề nghị, khuyến cáo |
| 応援 | おうえん | ỨNG VIỆN | Ủng hộ, cổ vũ |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000005, 800000044, NULL, 'markdown_book', 'T5. Lần đầu làm mentor cho kohai (後輩メンター初体験)', '# Sách thực tập sinh ô tô năm 2 · T5. Lần đầu làm mentor cho kohai (後輩メンター初体験)

> **Mục tiêu nhân vật:** Phong (22 tuổi, năm 2 thực tập sinh ô tô tại garage Toyota Anjo Aichi, N4→N3). Học các mẫu hội thoại tiếng Nhật của vai trò sempai-mentor: giới thiệu bản thân với kohai, hướng dẫn dụng cụ cơ bản, sửa lỗi nhẹ nhàng, báo cáo tiến độ kohai cho 整備士長, động viên đồng hương VN, ôn lại 報連相.

---

## Bối cảnh

Tháng 5 năm 2026. Phong bước vào tháng đầu tiên năm 2 thực tập ở garage Toyota系 ở Anjo (Aichi). Kohai mới — Quân (22t, Nghệ An) — vừa sang từ trung tâm. 整備士長 Yamada giao Phong vai trò OJT mentor trong 2 tuần đầu. Phong tiếng Nhật mới N4, nhưng đã quen thao tác cơ bản: thay dầu, kiểm tra áp suất lốp, dùng リフト. Chương này tập trung dạy mẫu câu tiếng Nhật cho vai sempai "lần đầu".

---

## Tình huống 1 — Văn phòng garage · 7:50, 整備士長 Yamada giao nhiệm vụ mentor

| Vai | Lời thoại |
|---|---|
| Yamada | フォンくん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>のトゥアンくんが<ruby>来<rt>く</rt></ruby>るよ。<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>人<rt>じん</rt></ruby>だから、<ruby>君<rt>きみ</rt></ruby>に<ruby>指導<rt>しどう</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みたい。<br>*(Phong này, từ hôm nay có thực tập sinh mới Quân đến. Cùng người Việt nên tôi muốn nhờ em hướng dẫn.)* |
| Phong | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。でも、<ruby>私<rt>わたし</rt></ruby>でいいですか?まだ<ruby>一年<rt>いちねん</rt></ruby>しか<ruby>経<rt>た</rt></ruby>っていません。<br>*(Vâng, em xin nhận. Nhưng em làm được không ạ? Em mới có một năm thôi.)* |
| Yamada | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>基本的<rt>きほんてき</rt></ruby>な<ruby>工具<rt>こうぐ</rt></ruby>と<ruby>安全<rt>あんぜん</rt></ruby>ルールを<ruby>教<rt>おし</rt></ruby>えてくれればいい。<ruby>難<rt>むずか</rt></ruby>しい<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がやるから。<br>*(Không sao. Em chỉ cần dạy dụng cụ cơ bản và quy tắc an toàn. Công việc khó tôi sẽ làm.)* |
| Phong | わかりました。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rồi. Em sẽ cố gắng hết sức ạ.)* |
| Yamada | <ruby>毎日<rt>まいにち</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>、トゥアンくんの<ruby>様子<rt>ようす</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>してね。<br>*(Mỗi chiều, hãy báo cáo tình hình của Quân nhé.)* |
| Phong | はい、<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずにします。<br>*(Vâng, em sẽ không quên hourensou ạ.)* |

---

## Tình huống 2 — Cửa garage · 8:30, đón kohai Tuấn

| Vai | Lời thoại |
|---|---|
| Quân | あの…フォンさんですか?<ruby>新<rt>あたら</rt></ruby>しく<ruby>来<rt>き</rt></ruby>ましたグエン・ヴァン・クアンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin lỗi… Anh là anh Phong ạ? Em mới đến, em tên Nguyễn Văn Tuấn. Mong anh chỉ bảo ạ.)* |
| Phong | トゥアンくん、はじめまして。<ruby>同<rt>おな</rt></ruby>じベトナムからだね。<ruby>緊張<rt>きんちょう</rt></ruby>してる?<br>*(Quân, hân hạnh. Cùng từ Việt Nam nhỉ. Em hồi hộp không?)* |
| Quân | はい、ちょっと…<ruby>日本語<rt>にほんご</rt></ruby>がまだ<ruby>下手<rt>へた</rt></ruby>で、<ruby>不安<rt>ふあん</rt></ruby>です。<br>*(Vâng, hơi… tiếng Nhật em còn yếu, em lo lắm.)* |
| Phong | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>去年<rt>きょねん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだった。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いていいよ。<br>*(Không sao. Anh năm ngoái cũng vậy. Có gì không hiểu cứ hỏi anh.)* |
| Quân | ありがとうございます。<br>*(Em cảm ơn anh.)* |
| Phong | まず<ruby>更衣室<rt>こういしつ</rt></ruby>で<ruby>作業服<rt>さぎょうふく</rt></ruby>に<ruby>着替<rt>きが</rt></ruby>えよう。<ruby>安全靴<rt>あんぜんぐつ</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れずにね。<br>*(Trước tiên thay đồ bảo hộ ở phòng thay đồ. Đừng quên giày an toàn nhé.)* |

---

## Tình huống 3 — Phòng dụng cụ · 9:00, giới thiệu hộp đồ nghề

*Phong dẫn Quân vào kho dụng cụ. Trên kệ thép xếp đầy tủ đồ Toyota chính hãng.*

| Vai | Lời thoại |
|---|---|
| Phong | これが<ruby>工具箱<rt>こうぐばこ</rt></ruby>。<ruby>整備士<rt>せいびし</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>の<ruby>道具<rt>どうぐ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にするのが<ruby>基本<rt>きほん</rt></ruby>だよ。<br>*(Đây là hộp đồ nghề. Thợ ô tô coi trọng dụng cụ là điều cơ bản đấy.)* |
| Quân | はい。これは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Vâng. Cái này là gì ạ?)* |
| Phong | これは<ruby>10<rt>じゅう</rt></ruby>ミリのスパナ。これは<ruby>14<rt>じゅうよん</rt></ruby>ミリ。<ruby>大<rt>おお</rt></ruby>きさが<ruby>違<rt>ちが</rt></ruby>うから<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Đây là cờ lê 10 mm. Đây là 14 mm. Kích cỡ khác nhau nên chú ý nhé.)* |
| Quân | スパナとレンチの<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Khác nhau giữa spanner và lench là gì ạ?)* |
| Phong | いい<ruby>質問<rt>しつもん</rt></ruby>。スパナは<ruby>口<rt>くち</rt></ruby>が<ruby>開<rt>あ</rt></ruby>いていて、レンチは<ruby>閉<rt>と</rt></ruby>じている。レンチのほうが<ruby>力<rt>ちから</rt></ruby>が<ruby>入<rt>はい</rt></ruby>るよ。<br>*(Câu hỏi hay. Spanner đầu hở, lench đầu kín. Lench thì lực mạnh hơn.)* |
| Quân | <ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em sẽ nhớ.)* |
| Phong | <ruby>使<rt>つか</rt></ruby>ったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>元<rt>もと</rt></ruby>の<ruby>場所<rt>ばしょ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>すこと。これは<ruby>絶対<rt>ぜったい</rt></ruby>のルールね。<br>*(Sau khi dùng, nhất định trả về chỗ cũ. Đây là quy tắc tuyệt đối.)* |

---

## Tình huống 4 — Khu lift · 9:45, dạy quy tắc an toàn リフト

| Vai | Lời thoại |
|---|---|
| Phong | トゥアンくん、リフトを<ruby>使<rt>つか</rt></ruby>う<ruby>前<rt>まえ</rt></ruby>に、<ruby>必<rt>かなら</rt></ruby>ず<ruby>安全<rt>あんぜん</rt></ruby>チェックをするよ。<br>*(Quân, trước khi dùng cầu nâng, nhất thiết phải kiểm tra an toàn.)* |
| Quân | どうやってチェックしますか?<br>*(Kiểm tra thế nào ạ?)* |
| Phong | まず、<ruby>車<rt>くるま</rt></ruby>の<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>がいないか<ruby>確認<rt>かくにん</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>に、リフトの<ruby>支点<rt>してん</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しいかチェック。<br>*(Trước, kiểm tra dưới gầm xe không có người. Tiếp, kiểm tra điểm tựa cầu nâng đúng vị trí.)* |
| Quân | <ruby>支点<rt>してん</rt></ruby>はどこですか?<br>*(Điểm tựa ở đâu ạ?)* |
| Phong | <ruby>車種<rt>しゃしゅ</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うけど、ほとんどの<ruby>車<rt>くるま</rt></ruby>は<ruby>下回<rt>したまわ</rt></ruby>りに<ruby>四<rt>よっ</rt></ruby>つマークがある。これね。<br>*(Tuỳ loại xe, nhưng hầu hết có 4 điểm đánh dấu dưới gầm. Đây này.)* |
| Quân | あ、<ruby>見<rt>み</rt></ruby>えました。<br>*(À, em thấy rồi.)* |
| Phong | <ruby>間違<rt>まちが</rt></ruby>った<ruby>位置<rt>いち</rt></ruby>で<ruby>上<rt>あ</rt></ruby>げると<ruby>車<rt>くるま</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる。<ruby>大事故<rt>だいじこ</rt></ruby>になるから<ruby>絶対<rt>ぜったい</rt></ruby><ruby>気<rt>き</rt></ruby>をつけて。<br>*(Nâng sai vị trí xe sẽ rớt. Tai nạn lớn nên tuyệt đối phải cẩn thận.)* |
| Quân | はい、わかりました。<br>*(Vâng, em hiểu rồi.)* |

---

## Tình huống 5 — Khu lift 2 · 10:30, lần đầu Quân thay dầu, Phong giám sát

*Phong đứng cạnh, để Quân tự thao tác オイル交換 đầu tiên trong đời.*

| Vai | Lời thoại |
|---|---|
| Phong | じゃあ、オイル<ruby>交換<rt>こうかん</rt></ruby>をやってみよう。まず<ruby>何<rt>なに</rt></ruby>からする?<br>*(Bây giờ thử thay dầu nhé. Bắt đầu từ đâu?)* |
| Quân | えーと、ドレンボルトを<ruby>外<rt>はず</rt></ruby>します?<br>*(Ờ… tháo bu lông xả ạ?)* |
| Phong | その<ruby>前<rt>まえ</rt></ruby>に、オイルパンを<ruby>下<rt>した</rt></ruby>に<ruby>置<rt>お</rt></ruby>くよね?<ruby>古<rt>ふる</rt></ruby>いオイルが<ruby>床<rt>ゆか</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちたら<ruby>大変<rt>たいへん</rt></ruby>だから。<br>*(Trước đó, đặt khay hứng dầu xuống dưới chứ? Dầu cũ rơi sàn thì khổ.)* |
| Quân | あ、そうですね。<ruby>忘<rt>わす</rt></ruby>れました。<br>*(À, đúng nhỉ. Em quên.)* |
| Phong | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でも<ruby>忘<rt>わす</rt></ruby>れる。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>言<rt>い</rt></ruby>うといいよ。<br>*(Không sao. Lúc đầu ai cũng quên. Nói thứ tự thành tiếng là được.)* |
| Quân | はい。オイルパンを<ruby>置<rt>お</rt></ruby>く、ドレンボルトを<ruby>緩<rt>ゆる</rt></ruby>める、<ruby>古<rt>ふる</rt></ruby>いオイルを<ruby>抜<rt>ぬ</rt></ruby>く、<ruby>新<rt>あたら</rt></ruby>しいオイルを<ruby>入<rt>い</rt></ruby>れる…<br>*(Vâng. Đặt khay, nới bu lông xả, xả dầu cũ, đổ dầu mới…)* |
| Phong | いいね。ボルトの<ruby>締<rt>し</rt></ruby>めすぎに<ruby>気<rt>き</rt></ruby>をつけて。トルクレンチで<ruby>30<rt>さんじゅう</rt></ruby>Nmだよ。<br>*(Tốt. Cẩn thận đừng siết bu lông quá tay. Cờ lê lực 30 Nm nhé.)* |

---

## Tình huống 6 — Khu lift 2 · 11:10, Quân làm rơi bu lông, Phong sửa nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Quân | あっ!ボルトを<ruby>落<rt>お</rt></ruby>としました…すみません。<br>*(A! Em làm rơi bu lông… em xin lỗi.)* |
| Phong | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<ruby>怪我<rt>けが</rt></ruby>はない?<br>*(Có sao không? Có bị thương không?)* |
| Quân | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Em không sao.)* |
| Phong | よかった。<ruby>怒<rt>おこ</rt></ruby>らないから<ruby>安心<rt>あんしん</rt></ruby>して。<ruby>落<rt>お</rt></ruby>とすことは<ruby>誰<rt>だれ</rt></ruby>でもある。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけることね。<br>*(May quá. Đừng lo, anh không mắng đâu. Ai cũng có lúc rơi. Quan trọng là lần sau cẩn thận.)* |
| Quân | はい…ありがとうございます。<br>*(Vâng… em cảm ơn anh.)* |
| Phong | コツは、ボルトを<ruby>外<rt>はず</rt></ruby>すとき<ruby>手<rt>て</rt></ruby>で<ruby>受<rt>う</rt></ruby>けながら<ruby>回<rt>まわ</rt></ruby>すこと。こうやってね。<br>*(Bí kíp là tháo bu lông vừa đỡ bằng tay vừa xoay. Như thế này này.)* |
| Quân | わかりました。やってみます。<br>*(Em hiểu rồi. Em thử.)* |

---

## Tình huống 7 — Phòng nghỉ · 12:15, cơm trưa, hỏi chuyện cuộc sống

*Bento konbini bày trên bàn. Đồng nghiệp Brazil Carlos cũng ngồi cùng.*

| Vai | Lời thoại |
|---|---|
| Phong | トゥアンくん、お<ruby>昼<rt>ひる</rt></ruby>は<ruby>何<rt>なに</rt></ruby><ruby>食<rt>た</rt></ruby>べる?<ruby>近<rt>ちか</rt></ruby>くにコンビニがあるよ。<br>*(Quân, trưa ăn gì? Có konbini gần đây.)* |
| Quân | おにぎりとお<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>買<rt>か</rt></ruby>いました。<br>*(Em mua cơm nắm với trà rồi.)* |
| Carlos | クアン、はじめまして。カルロスです。ブラジル<ruby>人<rt>じん</rt></ruby>。<br>*(Quân, hân hạnh. Anh là Carlos. Người Brazil.)* |
| Quân | はじめまして!<ruby>日本語<rt>にほんご</rt></ruby>、お<ruby>上手<rt>じょうず</rt></ruby>ですね。<br>*(Hân hạnh ạ! Anh giỏi tiếng Nhật quá.)* |
| Carlos | ありがとう。<ruby>五年<rt>ごねん</rt></ruby><ruby>日本<rt>にほん</rt></ruby>にいるよ。<br>*(Cảm ơn. Anh ở Nhật 5 năm rồi.)* |
| Phong | <ruby>寮<rt>りょう</rt></ruby>は<ruby>慣<rt>な</rt></ruby>れた?<br>*(Quen ký túc chưa?)* |
| Quân | まだですけど、ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>同僚<rt>どうりょう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Chưa quen, nhưng đồng hương Việt nhiều nên em vui.)* |

---

## Tình huống 8 — Khu tire · 13:30, dạy kiểm tra áp suất lốp

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>午後<rt>ごご</rt></ruby>はタイヤの<ruby>点検<rt>てんけん</rt></ruby>。<ruby>空気圧<rt>くうきあつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>るよ。<br>*(Chiều kiểm tra lốp. Đo áp suất khí.)* |
| Quân | この<ruby>機械<rt>きかい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(Dùng máy này phải không ạ?)* |
| Phong | そう、エアゲージ。<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>値<rt>ち</rt></ruby>は<ruby>運転席<rt>うんてんせき</rt></ruby>のドアに<ruby>書<rt>か</rt></ruby>いてある。<ruby>見<rt>み</rt></ruby>てみて。<br>*(Đúng, máy đo khí. Giá trị tiêu chuẩn ghi trên cửa ghế lái. Em xem thử.)* |
| Quân | <ruby>前輪<rt>ぜんりん</rt></ruby><ruby>2.4<rt>にいてんよん</rt></ruby>、<ruby>後輪<rt>こうりん</rt></ruby><ruby>2.2<rt>にいてんに</rt></ruby>と<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Lốp trước 2.4, lốp sau 2.2 ạ.)* |
| Phong | OK。<ruby>低<rt>ひく</rt></ruby>かったら<ruby>足<rt>た</rt></ruby>す、<ruby>高<rt>たか</rt></ruby>かったら<ruby>抜<rt>ぬ</rt></ruby>く。<ruby>四本<rt>よんほん</rt></ruby>とも<ruby>確認<rt>かくにん</rt></ruby>してね。<br>*(OK. Thấp thì bơm thêm, cao thì xả. Kiểm tra cả 4 lốp nhé.)* |
| Quân | はい。<ruby>右<rt>みぎ</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>は<ruby>2.2<rt>にいてんに</rt></ruby>でした。<ruby>低<rt>ひく</rt></ruby>いです。<br>*(Vâng. Trước phải 2.2. Thấp.)* |
| Phong | じゃあ<ruby>0.2<rt>れいてんに</rt></ruby><ruby>足<rt>た</rt></ruby>そう。ゆっくり<ruby>入<rt>い</rt></ruby>れて、もう<ruby>一度<rt>いちど</rt></ruby><ruby>測<rt>はか</rt></ruby>る。<br>*(Vậy bơm thêm 0.2. Bơm từ từ, đo lại lần nữa.)* |

---

## Tình huống 9 — Khu lift 3 · 14:30, Quân không hiểu từ kỹ thuật, hỏi lại

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>次<rt>つぎ</rt></ruby>はブレーキパッドの<ruby>残量<rt>ざんりょう</rt></ruby>チェックね。<br>*(Tiếp theo kiểm tra lượng còn lại của má phanh nhé.)* |
| Quân | あの…「<ruby>残量<rt>ざんりょう</rt></ruby>」って<ruby>何<rt>なん</rt></ruby>ですか?すみません、まだ<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Cho em hỏi… 「zanryou」là gì ạ? Xin lỗi, em chưa biết.)* |
| Phong | あ、ごめん。<ruby>残<rt>のこ</rt></ruby>っている<ruby>量<rt>りょう</rt></ruby>って<ruby>意味<rt>いみ</rt></ruby>。ブレーキパッドはだんだん<ruby>減<rt>へ</rt></ruby>るから、どのくらい<ruby>残<rt>のこ</rt></ruby>っているかを<ruby>測<rt>はか</rt></ruby>るんだ。<br>*(À xin lỗi. Nghĩa là lượng còn lại. Má phanh mòn dần nên đo xem còn lại bao nhiêu.)* |
| Quân | <ruby>新品<rt>しんぴん</rt></ruby>はどのくらいですか?<br>*(Hàng mới thì bao nhiêu ạ?)* |
| Phong | <ruby>新品<rt>しんぴん</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby>ミリ。<ruby>3<rt>さん</rt></ruby>ミリ<ruby>以下<rt>いか</rt></ruby>になったら<ruby>交換<rt>こうかん</rt></ruby>。<br>*(Mới là 10 mm. Dưới 3 mm thì thay.)* |
| Quân | わかりました。<ruby>分<rt>わ</rt></ruby>からないとき<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Em hiểu rồi. Em hỏi khi không biết được không ạ?)* |
| Phong | もちろん。<ruby>知<rt>し</rt></ruby>ったかぶりが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Tất nhiên. Giả vờ biết là nguy hiểm nhất. Nhất định phải hỏi nhé.)* |

---

## Tình huống 10 — Văn phòng · 16:30, Phong báo cáo Yamada về Quân

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>のトゥアンくんの<ruby>報告<rt>ほうこく</rt></ruby>をいいですか?<br>*(Trưởng phòng, em báo cáo về Quân hôm nay được không ạ?)* |
| Yamada | どうぞ。<br>*(Mời em.)* |
| Phong | <ruby>午前中<rt>ごぜんちゅう</rt></ruby>、<ruby>工具<rt>こうぐ</rt></ruby>とリフトの<ruby>安全<rt>あんぜん</rt></ruby>ルールを<ruby>教<rt>おし</rt></ruby>えました。オイル<ruby>交換<rt>こうかん</rt></ruby>を<ruby>一回<rt>いっかい</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>させました。<br>*(Buổi sáng em đã dạy dụng cụ và quy tắc an toàn cầu nâng. Cho em ấy trải nghiệm thay dầu 1 lần.)* |
| Yamada | うまくいった?<br>*(Có thuận lợi không?)* |
| Phong | だいたい<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしたが、ボルトを<ruby>一回<rt>いっかい</rt></ruby><ruby>落<rt>お</rt></ruby>としました。<ruby>怪我<rt>けが</rt></ruby>はありません。<br>*(Cơ bản ổn, nhưng có rơi bu lông một lần. Không bị thương ạ.)* |
| Yamada | わかった。<ruby>明日<rt>あした</rt></ruby>はブレーキ<ruby>関係<rt>かんけい</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けて。<ruby>君<rt>きみ</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりやすいと<ruby>言<rt>い</rt></ruby>っていたよ。<br>*(Hiểu rồi. Mai tiếp tục về phanh. Cậu ấy nói em giải thích dễ hiểu đấy.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 11 — Phòng nghỉ · 17:00, Phong tự suy ngẫm rồi nhắc Quân về 報連相

| Vai | Lời thoại |
|---|---|
| Phong | トゥアンくん、<ruby>今日<rt>きょう</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>一<rt>ひと</rt></ruby>つ<ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>言<rt>い</rt></ruby>うね。<br>*(Quân, hôm nay vất vả. Anh nói một điều quan trọng nhé.)* |
| Quân | はい。<br>*(Vâng.)* |
| Phong | <ruby>日本<rt>にほん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>報連相<rt>ほうれんそう</rt></ruby>。<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>のことだよ。<br>*(Việc quan trọng nhất khi đi làm ở Nhật là hourensou. Là báo cáo - liên lạc - bàn bạc.)* |
| Quân | <ruby>例<rt>たと</rt></ruby>えば?<br>*(Ví dụ ạ?)* |
| Phong | ボルトを<ruby>落<rt>お</rt></ruby>としたら、すぐ「<ruby>落<rt>お</rt></ruby>としました」と<ruby>言<rt>い</rt></ruby>う。これが<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>困<rt>こま</rt></ruby>ったら「<ruby>相談<rt>そうだん</rt></ruby>していいですか」と<ruby>聞<rt>き</rt></ruby>く。<br>*(Rơi bu lông là nói ngay "em làm rơi". Đó là báo cáo. Khó khăn thì hỏi "em xin tham vấn được không".)* |
| Quân | わかりました。<ruby>隠<rt>かく</rt></ruby>さないことが<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Em hiểu rồi. Quan trọng là không che giấu nhỉ.)* |
| Phong | そう。<ruby>隠<rt>かく</rt></ruby>すと<ruby>後<rt>あと</rt></ruby>で<ruby>大変<rt>たいへん</rt></ruby>なことになる。<br>*(Đúng. Che giấu thì sau sẽ rắc rối to.)* |

---

## Tình huống 12 — Konbini gần garage · 18:30, mua đồ ăn về ký túc cùng Quân

| Vai | Lời thoại |
|---|---|
| Quân | フォンさん、<ruby>晩<rt>ばん</rt></ruby>ごはんはここで<ruby>買<rt>か</rt></ruby>うんですか?<br>*(Anh Phong, anh mua cơm tối ở đây ạ?)* |
| Phong | たまにね。<ruby>寮<rt>りょう</rt></ruby>に<ruby>炊飯器<rt>すいはんき</rt></ruby>があるから、<ruby>米<rt>こめ</rt></ruby>を<ruby>炊<rt>た</rt></ruby>いておかずだけ<ruby>買<rt>か</rt></ruby>うことが<ruby>多<rt>おお</rt></ruby>いよ。<br>*(Thỉnh thoảng. Ký túc có nồi cơm điện nên anh hay nấu cơm rồi mua đồ ăn thôi.)* |
| Quân | <ruby>節約<rt>せつやく</rt></ruby>になりますね。<br>*(Tiết kiệm nhỉ.)* |
| Phong | そう。<ruby>毎月<rt>まいつき</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>に<ruby>送金<rt>そうきん</rt></ruby>するから、<ruby>食費<rt>しょくひ</rt></ruby>は<ruby>抑<rt>おさ</rt></ruby>えるんだ。<br>*(Đúng. Hằng tháng còn gửi tiền về gia đình nên phải tiết kiệm tiền ăn.)* |
| Quân | ぼくも<ruby>同<rt>おな</rt></ruby>じです。<ruby>母<rt>はは</rt></ruby>が<ruby>病気<rt>びょうき</rt></ruby>で。<br>*(Em cũng vậy. Mẹ em bị bệnh.)* |
| Phong | <ruby>大変<rt>たいへん</rt></ruby>だね。でも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>に<ruby>言<rt>い</rt></ruby>って。<br>*(Vất vả nhỉ. Nhưng cùng cố gắng nhé. Khó khăn cứ nói với anh.)* |

---

## Tình huống 13 — Ký túc xá, phòng Phong · 21:00 — Gọi điện về mẹ ở Hải Phòng

> Cảnh tiếng Việt — Phong gọi video call cho mẹ.

| Vai | Lời thoại |
|---|---|
| Mẹ Phong | Phong à, dạo này khoẻ không con? Trưởng phòng còn dễ chịu chứ? |
| Phong | Dạ con khoẻ. Hôm nay có chuyện mới mẹ ạ — garage có thêm thực tập sinh mới, em Quân quê Nghệ An. Trưởng phòng giao con làm sempai, dạy em ấy. |
| Mẹ Phong | Trời, mới qua một năm mà đã dạy đàn em rồi á? Có lo không con? |
| Phong | Lo lắm mẹ ạ, tiếng Nhật con cũng chưa giỏi. Nhưng em ấy mới sang, gặp đồng hương cũng đỡ. Sáng nay em ấy làm rơi bu lông, run lắm, con bảo "không sao đâu, ai cũng có lúc". |
| Mẹ Phong | Đúng rồi con. Nhớ hồi xưa con mới sang, anh sempai cũng động viên con vậy mà. |
| Phong | Vâng. Hôm nay con mới hiểu — làm sempai là phải nhớ lại cảm giác của chính mình lúc mới sang. Quân nói tiếng Nhật chuyên ngành như 「<ruby>残量<rt>ざんりょう</rt></ruby>」là chưa hiểu, con lại nhớ một năm trước con cũng vậy. |
| Mẹ Phong | Mẹ tự hào về con. Báo trưởng phòng — 報連相 — nhớ đầy đủ chưa con? |
| Phong | Dạ rồi mẹ. Chiều con vừa báo cáo xong, anh Yamada khen con giải thích dễ hiểu. |
| Mẹ Phong | Mẹ vui quá. Ngủ sớm đi con, mai còn dậy sớm. |
| Phong | Vâng. Con yêu mẹ. Chúc bố khoẻ ạ. |

---

## Đọng lại chương

Tiếng Nhật vai sempai-mentor lần đầu xoay quanh các mẫu câu:

- **「〜してもらってもいいですか」** — nhờ kohai làm việc gì
- **「分からないことは何でも聞いてね」** — mở cửa cho kohai hỏi
- **「最初は誰でもそうだった」** — an ủi khi kohai mắc lỗi
- **「コツは〜こと」** — chia sẻ bí kíp
- **「報連相を忘れずに」** — nhắc nhở văn hoá công ty
- **「〜の報告をいいですか」** — sempai báo cáo cho 整備士長

Từ vựng nghề: 工具・スパナ・レンチ・リフト・支点・ドレンボルト・オイルパン・トルクレンチ・空気圧・エアゲージ・ブレーキパッド・残量・整備士・指導・報連相.

> Từ vựng & mẫu câu chương này: 指導・後輩・先輩・工具・スパナ・レンチ・リフト・支点・ドレンボルト・オイル交換・トルクレンチ・空気圧・エアゲージ・ブレーキパッド・残量・点検・報連相・相談・送金・節約・寮.

---

## Bí quyết chương

- Sempai mới (1 năm) **chỉ dạy cái mình thạo**, đừng cố dạy cái chưa nắm chắc — phần khó để 整備士長.
- "Lần đầu rơi bu lông" của kohai là phép thử **văn hoá tiệm**: phản ứng nhẹ nhàng → kohai dám báo cáo lần sau; mắng → kohai sẽ giấu, nguy hiểm hơn.
- Khi kohai không hiểu từ chuyên môn, **nói lại bằng từ thường ngày** (残量 → 残っている量) thay vì lặp lại từ Hán.
- **報連相** là từ khoá Nhật Bản — sempai mới phải truyền sớm cho kohai, đừng đợi 整備士長 nói.
- Trong garage Toyota có nhiều người Brazil/Nhật, **giới thiệu kohai cho cả đội** trong giờ trưa giúp em hoà nhập nhanh.
- Phong nhắc Quân về 報連相 cũng là cách **tự ôn lại** — dạy người khác = học lần nữa.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 実習生 | じっしゅうせい | THỰC TẬP SINH | thực tập sinh |
| 指導 | しどう | CHỈ ĐẠO | hướng dẫn, chỉ đạo |
| 後輩 | こうはい | HẬU BỐI | đàn em, kohai |
| 先輩 | せんぱい | TIÊN BỐI | đàn anh, sempai |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | trưởng phòng kỹ thuật |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | trưởng xưởng |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | hết sức, cố hết sức |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | hourensou (báo cáo-liên lạc-bàn bạc) |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | tham vấn, bàn bạc |
| 更衣室 | こういしつ | CANH Y THẤT | phòng thay đồ |
| 作業服 | さぎょうふく | TÁC NGHIỆP PHỤC | đồ bảo hộ |
| 安全靴 | あんぜんぐつ | AN TOÀN | giày an toàn |
| 工具 | こうぐ | CÔNG CỤ | dụng cụ |
| 工具箱 | こうぐばこ | CÔNG CỤ HỘP | hộp đồ nghề |
| 道具 | どうぐ | ĐẠO CỤ | đồ nghề |
| スパナ | — | — | cờ lê (spanner) |
| レンチ | — | — | lench (đầu kín) |
| トルクレンチ | — | — | cờ lê lực |
| リフト | — | — | cầu nâng |
| 支点 | してん | CHI ĐIỂM | điểm tựa |
| 下回り | したまわり | HẠ HỒI | gầm xe |
| オイル交換 | オイルこうかん | — / GIAO HOÁN | thay dầu nhớt |
| オイルパン | — | — | khay hứng dầu |
| ドレンボルト | — | — | bu lông xả dầu |
| 締める | しめる | — | siết chặt |
| 緩める | ゆるめる | — | nới lỏng |
| 落とす | おとす | — | làm rơi |
| 怪我 | けが | — | bị thương |
| タイヤ | — | — | lốp xe |
| 空気圧 | くうきあつ | KHÔNG KHÍ ÁP | áp suất khí |
| エアゲージ | — | — | đồng hồ đo khí |
| 前輪 | ぜんりん | TIỀN LUÂN | bánh trước |
| 後輪 | こうりん | HẬU LUÂN | bánh sau |
| 標準値 | ひょうじゅんち | TIÊU CHUẨN TRỊ | giá trị tiêu chuẩn |
| ブレーキパッド | — | — | má phanh |
| 残量 | ざんりょう | TÀN LƯỢNG | lượng còn lại |
| 新品 | しんぴん | TÂN PHẨM | hàng mới |
| 交換 | こうかん | GIAO HOÁN | thay thế |
| 点検 | てんけん | ĐIỂM KIỂM | kiểm tra |
| 安全 | あんぜん | AN TOÀN | an toàn |
| 大事故 | だいじこ | ĐẠI SỰ CỐ | tai nạn lớn |
| 寮 | りょう | LIÊU | ký túc xá |
| 炊飯器 | すいはんき | XUY PHẠN KHÍ | nồi cơm điện |
| 節約 | せつやく | TIẾT ƯỚC | tiết kiệm |
| 食費 | しょくひ | THỰC PHÍ | tiền ăn |
| 送金 | そうきん | TỐNG KIM | gửi tiền |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 同郷 | どうきょう | ĐỒNG HƯƠNG | đồng hương |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000006, 800000044, NULL, 'markdown_book', 'T6. Thi kiểm định kỹ năng 3 cấp (自動車整備士3級検定)', '# Sách thực tập sinh ô tô năm 2 · T6. Thi kiểm định kỹ năng 3 cấp (自動車整備士3級検定)

> **Mục tiêu nhân vật:** Phong (22 tuổi, năm 2 thực tập sinh ô tô tại garage Toyota Anjo Aichi, N4→N3). Học các mẫu hội thoại tiếng Nhật của thí sinh thi 自動車整備士3級: xin học giáo trình từ sempai, hỏi sensei trung tâm, đăng ký 受験, hỏi đề thi thực hành, báo cáo kết quả, ăn mừng cùng đồng hương.

---

## Bối cảnh

Tháng 6 năm 2026. Sau khi giúp đỡ kohai Tuấn, Phong tiếp tục hướng tới mục tiêu lớn năm 2: thi 自動車整備士3級 (kentei kỹ năng quốc gia, kỳ tháng 7). Kỳ thi gồm 学科 (lý thuyết) và 実技 (thực hành). 工場長 Sato hứa hỗ trợ ôn cuối tuần. Phong đăng ký qua 監理団体, làm đề mẫu, tập 実技 với sempai Sato. Chương này dạy mẫu câu xoay quanh "ôn thi - đăng ký - thi - kết quả".

---

## Tình huống 1 — Văn phòng garage · 8:00, xin lịch ôn với 工場長

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか?<br>*(Trưởng xưởng, em xin chút thời gian được không ạ?)* |
| Tanaka | どうぞ。<br>*(Mời em.)* |
| Phong | <ruby>七月<rt>しちがつ</rt></ruby>の<ruby>三級<rt>さんきゅう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>っています。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みのことを<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Em muốn thi cấp 3 tháng 7. Em xin tham vấn về việc đăng ký ạ.)* |
| Tanaka | おお、いいね。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みは<ruby>監理団体<rt>かんりだんたい</rt></ruby><ruby>経由<rt>けいゆ</rt></ruby>でやるよ。<ruby>受験料<rt>じゅけんりょう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>する。<br>*(Ồ, tốt. Đăng ký qua đoàn quản lý. Lệ phí thi công ty chịu một nửa.)* |
| Phong | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>取<rt>と</rt></ruby>りたいのですが、<ruby>土曜日<rt>どようび</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>って<ruby>実技<rt>じつぎ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしてもいいですか?<br>*(Em cảm ơn. Em muốn lấy thời gian ôn, thứ Bảy em ở lại luyện thực hành được không ạ?)* |
| Tanaka | いいよ。<ruby>佐藤<rt>さとう</rt></ruby>くんに<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>ってもらおう。<br>*(Được. Nhờ Sato kèm em.)* |
| Phong | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ ạ.)* |

---

## Tình huống 2 — Phòng nghỉ · 12:15, xin sempai Sato giáo trình

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、ちょっといいですか?<br>*(Anh Sato, em hỏi một chút được không?)* |
| Sato | うん、なに?<br>*(Ờ, gì vậy?)* |
| Phong | <ruby>三級<rt>さんきゅう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>のテキストを<ruby>貸<rt>か</rt></ruby>していただけませんか?<br>*(Anh cho em mượn sách giáo trình cấp 3 được không ạ?)* |
| Sato | あー、まだ<ruby>持<rt>も</rt></ruby>ってるよ。<ruby>明日<rt>あした</rt></ruby><ruby>持<rt>も</rt></ruby>ってくる。<ruby>過去問<rt>かこもん</rt></ruby>もコピーしてあげるよ。<br>*(À, anh vẫn còn. Mai anh mang đến. Anh photo cả đề cũ cho.)* |
| Phong | ありがとうございます。<ruby>苦手<rt>にがて</rt></ruby>な<ruby>分野<rt>ぶんや</rt></ruby>はどこでしたか?<br>*(Em cảm ơn. Phần nào anh thấy khó nhất ạ?)* |
| Sato | <ruby>電気装置<rt>でんきそうち</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しかったな。バッテリーとオルタネーター<ruby>関係<rt>かんけい</rt></ruby>。<br>*(Phần thiết bị điện khó nhất. Liên quan ắc quy với máy phát.)* |
| Phong | <ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Em sẽ nhớ.)* |
| Sato | ベトナム<ruby>人<rt>じん</rt></ruby>には<ruby>漢字<rt>かんじ</rt></ruby>の<ruby>用語<rt>ようご</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>だろうから、<ruby>用語集<rt>ようごしゅう</rt></ruby>も<ruby>作<rt>つく</rt></ruby>ってあげるよ。<br>*(Người Việt chắc khó vì từ Hán, anh làm cho em bảng từ vựng luôn.)* |

---

## Tình huống 3 — Văn phòng 監理団体 · cuối ngày, đăng ký 受験申込

*Phong đến gặp 担当者 Nakamura của đoàn quản lý để nộp hồ sơ.*

| Vai | Lời thoại |
|---|---|
| Phong | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>三級<rt>さんきゅう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みに<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em xin cảm ơn vì luôn chiếu cố. Em đến đăng ký kỳ thi cấp 3 ạ.)* |
| Nakamura | はい、フォンさん。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>はそろっていますか?<br>*(Vâng, em Phong. Giấy tờ cần thiết có đủ chưa?)* |
| Phong | はい、<ruby>申込書<rt>もうしこみしょ</rt></ruby>と<ruby>写真<rt>しゃしん</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードのコピーです。<br>*(Vâng, đơn đăng ký, ảnh, bản sao thẻ ngoại kiều ạ.)* |
| Nakamura | はい、<ruby>確認<rt>かくにん</rt></ruby>します…<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。<ruby>受験料<rt>じゅけんりょう</rt></ruby>は<ruby>七千円<rt>ななせんえん</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>するから、<ruby>三千五百円<rt>さんぜんごひゃくえん</rt></ruby>ですね。<br>*(Em đợi tôi xác nhận… ổn rồi. Lệ phí 7000 yên. Công ty chịu một nửa nên còn 3500 yên.)* |
| Phong | これでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>試験会場<rt>しけんかいじょう</rt></ruby>はどこですか?<br>*(Em gửi ạ. Địa điểm thi ở đâu vậy ạ?)* |
| Nakamura | <ruby>名古屋市<rt>なごやし</rt></ruby>の<ruby>整備振興会<rt>せいびしんこうかい</rt></ruby>です。<ruby>受験票<rt>じゅけんひょう</rt></ruby>は<ruby>後<rt>あと</rt></ruby>で<ruby>郵送<rt>ゆうそう</rt></ruby>します。<br>*(Hội khuyến khích kỹ thuật ô tô Nagoya. Phiếu dự thi sẽ gửi bưu điện sau.)* |
| Phong | わかりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em hiểu rồi. Mong anh giúp đỡ.)* |

---

## Tình huống 4 — Phòng ký túc · 22:00, học từ vựng Hán với từ điển

*Phong ngồi bàn học, mở textbook và app Anki trên điện thoại.*

| Vai | Lời thoại |
|---|---|
| Phong (gọi Carlos) | カルロスさん、ちょっと<ruby>教<rt>おし</rt></ruby>えてください。「<ruby>制動装置<rt>せいどうそうち</rt></ruby>」って<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Carlos, dạy em chút. 「seidousouchi」là gì ạ?)* |
| Carlos | あ、それはブレーキシステムのこと。<ruby>制動<rt>せいどう</rt></ruby>=<ruby>止<rt>と</rt></ruby>めること、<ruby>装置<rt>そうち</rt></ruby>=システム。<br>*(À đó là hệ thống phanh. seidou = dừng lại, souchi = hệ thống.)* |
| Phong | なるほど。じゃ「<ruby>動力伝達装置<rt>どうりょくでんたつそうち</rt></ruby>」は?<br>*(À ra vậy. Vậy 「douryoku-dentatsu-souchi」?)* |
| Carlos | それはトランスミッション。<ruby>動力<rt>どうりょく</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>える<ruby>装置<rt>そうち</rt></ruby>ね。<br>*(Đó là hộp số. Cơ cấu truyền động lực.)* |
| Phong | <ruby>漢字<rt>かんじ</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>がわかれば<ruby>言葉<rt>ことば</rt></ruby>もわかるね。<br>*(Hiểu nghĩa Hán là hiểu từ luôn nhỉ.)* |
| Carlos | そう。ベトナム<ruby>人<rt>じん</rt></ruby>は<ruby>漢越語<rt>かんえつご</rt></ruby>があるから<ruby>有利<rt>ゆうり</rt></ruby>だよ。「<ruby>制動<rt>せいどう</rt></ruby>」はベトナム<ruby>語<rt>ご</rt></ruby>で?<br>*(Đúng. Người Việt có Hán Việt nên có lợi. 「seidou」tiếng Việt là?)* |
| Phong | 「<ruby>制動<rt>せいどう</rt></ruby>」は「chế động」だよ。「<ruby>装置<rt>そうち</rt></ruby>」は「trang trí」じゃなくて「trang bị」。<br>*(「seidou」là "chế động". 「souchi」không phải "trang trí" mà là "trang bị".)* |
| Carlos | おもしろい!<br>*(Hay đấy!)* |

---

## Tình huống 5 — Khu lift garage · thứ Bảy 9:00, luyện 実技 với Sato

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>実技<rt>じつぎ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>はこの<ruby>四<rt>よっ</rt></ruby>つだ。エンジン<ruby>分解<rt>ぶんかい</rt></ruby>、ブレーキ<ruby>点検<rt>てんけん</rt></ruby>、<ruby>電装<rt>でんそう</rt></ruby><ruby>計測<rt>けいそく</rt></ruby>、<ruby>車輪<rt>しゃりん</rt></ruby><ruby>取付<rt>とりつ</rt></ruby>け。<br>*(4 mục thực hành: tháo lắp động cơ, kiểm tra phanh, đo điện, lắp bánh xe.)* |
| Phong | はい、<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Vâng, em chuẩn bị.)* |
| Sato | <ruby>制限時間<rt>せいげんじかん</rt></ruby>は<ruby>各<rt>かく</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>十五分<rt>じゅうごふん</rt></ruby>。<ruby>速<rt>はや</rt></ruby>すぎても<ruby>遅<rt>おそ</rt></ruby>すぎてもダメ。<ruby>正確<rt>せいかく</rt></ruby>さが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Mỗi mục 15 phút. Nhanh quá hay chậm quá đều không được. Chính xác là quan trọng.)* |
| Phong | <ruby>採点<rt>さいてん</rt></ruby>のポイントは?<br>*(Điểm chấm là gì ạ?)* |
| Sato | <ruby>手順<rt>てじゅん</rt></ruby>、<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、<ruby>後片付<rt>あとかたづ</rt></ruby>け。<ruby>挨拶<rt>あいさつ</rt></ruby>も<ruby>採点<rt>さいてん</rt></ruby>に<ruby>含<rt>ふく</rt></ruby>まれるよ。<br>*(Quy trình, cách dùng đồ nghề, kiểm tra an toàn, dọn dẹp. Cả chào hỏi cũng được tính điểm.)* |
| Phong | <ruby>挨拶<rt>あいさつ</rt></ruby>もですか?<br>*(Cả chào hỏi nữa ạ?)* |
| Sato | そう。「<ruby>失礼<rt>しつれい</rt></ruby>します」「<ruby>始<rt>はじ</rt></ruby>めます」「<ruby>終<rt>お</rt></ruby>わりました」「ありがとうございました」を<ruby>必<rt>かなら</rt></ruby>ず<ruby>言<rt>い</rt></ruby>うんだ。<ruby>日本<rt>にほん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>はそういうもの。<br>*(Đúng. "Xin phép", "bắt đầu", "đã xong", "cảm ơn" — phải nói đủ. Thi Nhật là vậy.)* |

---

## Tình huống 6 — Khu lift · thứ Bảy 10:30, Phong tập đề ブレーキ点検 lần đầu

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>します。ブレーキ<ruby>点検<rt>てんけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em xin phép. Em bắt đầu kiểm tra phanh.)* |
| Sato | はい、どうぞ。<br>*(Vâng, mời.)* |
| Phong | まず<ruby>安全<rt>あんぜん</rt></ruby>チェックします。リフトの<ruby>支点<rt>してん</rt></ruby>、よし。<ruby>車両<rt>しゃりょう</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>、よし。<br>*(Trước em kiểm tra an toàn. Điểm tựa cầu nâng, OK. Cố định xe, OK.)* |
| Sato | (ストップウォッチ)…<br>*(Bấm giờ…)* |
| Phong | <ruby>車輪<rt>しゃりん</rt></ruby>を<ruby>外<rt>はず</rt></ruby>します。ブレーキパッドの<ruby>残量<rt>ざんりょう</rt></ruby>を<ruby>測定<rt>そくてい</rt></ruby>します…<ruby>七<rt>なな</rt></ruby>ミリです。<br>*(Tháo bánh xe. Đo lượng còn lại má phanh… 7 mm.)* |
| Sato | <ruby>判定<rt>はんてい</rt></ruby>は?<br>*(Đánh giá?)* |
| Phong | <ruby>基準値<rt>きじゅんち</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>なので<ruby>使用可能<rt>しようかのう</rt></ruby>です。<br>*(Trên giá trị tiêu chuẩn nên có thể dùng tiếp.)* |
| Sato | OK。<ruby>記録<rt>きろく</rt></ruby>シートに<ruby>書<rt>か</rt></ruby>くのを<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(OK. Đừng quên ghi vào phiếu ghi chép.)* |
| Phong | <ruby>記入<rt>きにゅう</rt></ruby>します。…<ruby>終<rt>お</rt></ruby>わりました。ありがとうございました。<br>*(Em điền. … Đã xong. Em cảm ơn ạ.)* |
| Sato | <ruby>八<rt>はち</rt></ruby><ruby>分<rt>ふん</rt></ruby>。<ruby>時間<rt>じかん</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。でも<ruby>声<rt>こえ</rt></ruby>がもう<ruby>少<rt>すこ</rt></ruby>し<ruby>大<rt>おお</rt></ruby>きいといいね。<br>*(8 phút. Thời gian OK. Nhưng giọng to thêm chút thì tốt hơn.)* |

---

## Tình huống 7 — Phòng nghỉ · 12:30, Phong stress, sempai động viên

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>正直<rt>しょうじき</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>です。<ruby>過去問<rt>かこもん</rt></ruby>をやっても<ruby>六割<rt>ろくわり</rt></ruby>くらいしか<ruby>取<rt>と</rt></ruby>れません。<br>*(Anh Sato, thật ra em lo. Em làm đề cũ chỉ được 60%.)* |
| Sato | <ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>七割<rt>ななわり</rt></ruby>。あと<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>あるよ。<ruby>今<rt>いま</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>二十問<rt>にじゅうもん</rt></ruby>やればいける。<br>*(Đậu là 70%. Còn 1 tháng. Giờ mỗi ngày 20 câu là được.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか?<br>*(Thật ạ?)* |
| Sato | おれも<ruby>初<rt>はじ</rt></ruby>めて<ruby>受<rt>う</rt></ruby>けたとき、<ruby>一<rt>いっ</rt></ruby>か<ruby>月前<rt>げつまえ</rt></ruby>は<ruby>五割<rt>ごわり</rt></ruby>だった。コツがあるんだ。<br>*(Anh lần đầu thi cũng 50% trước 1 tháng. Có bí quyết.)* |
| Phong | <ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh dạy em với.)* |
| Sato | <ruby>間違<rt>まちが</rt></ruby>えた<ruby>問題<rt>もんだい</rt></ruby>だけノートに<ruby>書<rt>か</rt></ruby>く。<ruby>次<rt>つぎ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>もう<ruby>一度<rt>いちど</rt></ruby>やる。これを<ruby>続<rt>つづ</rt></ruby>けると、<ruby>苦手<rt>にがて</rt></ruby>がなくなる。<br>*(Câu sai chép vào sổ. Hôm sau làm lại. Cứ vậy là không còn điểm yếu.)* |
| Phong | やってみます。<ruby>感謝<rt>かんしゃ</rt></ruby>です。<br>*(Em sẽ thử. Em cảm ơn anh.)* |

---

## Tình huống 8 — Văn phòng · thứ Hai 8:30, hỏi 工場長 về cách viết câu trả lời 学科

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>のことで<ruby>質問<rt>しつもん</rt></ruby>があります。<br>*(Trưởng xưởng, em có câu hỏi về phần thi lý thuyết.)* |
| Tanaka | どうぞ。<br>*(Mời.)* |
| Phong | <ruby>選択<rt>せんたく</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>で<ruby>迷<rt>まよ</rt></ruby>ったとき、どうすればいいですか?<br>*(Câu trắc nghiệm khi phân vân thì làm sao ạ?)* |
| Tanaka | まず<ruby>明<rt>あき</rt></ruby>らかに<ruby>違<rt>ちが</rt></ruby>うものを<ruby>消<rt>け</rt></ruby>す。<ruby>残<rt>のこ</rt></ruby>った<ruby>選択肢<rt>せんたくし</rt></ruby>から<ruby>選<rt>えら</rt></ruby>ぶ。それでも<ruby>分<rt>わ</rt></ruby>からなければ、<ruby>常識的<rt>じょうしきてき</rt></ruby>な<ruby>答<rt>こた</rt></ruby>えを<ruby>選<rt>えら</rt></ruby>べ。<br>*(Loại các lựa chọn rõ ràng sai trước. Chọn từ phần còn lại. Vẫn không biết thì chọn đáp án theo thông lệ.)* |
| Phong | <ruby>計算<rt>けいさん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>もありますよね?<br>*(Có câu tính toán nữa phải không ạ?)* |
| Tanaka | あるよ。トルク、<ruby>排気量<rt>はいきりょう</rt></ruby>、<ruby>圧縮比<rt>あっしゅくひ</rt></ruby>あたりが<ruby>出<rt>で</rt></ruby>る。<ruby>公式<rt>こうしき</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Có. Mô-men xoắn, dung tích, tỷ số nén thường ra. Nhớ công thức.)* |
| Phong | はい、<ruby>公式集<rt>こうしきしゅう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<br>*(Vâng, em sẽ làm sổ công thức.)* |

---

## Tình huống 9 — Phòng ký túc · 22:30, Phong gọi sensei trung tâm hỏi từ khó

*Phong gọi LINE video với sensei Suzuki ở trung tâm tiếng Nhật năm ngoái.*

| Vai | Lời thoại |
|---|---|
| Suzuki | フォンくん、<ruby>久<rt>ひさ</rt></ruby>しぶり。<ruby>元気<rt>げんき</rt></ruby>?<br>*(Phong, lâu rồi không gặp. Khoẻ không?)* |
| Phong | はい、<ruby>元気<rt>げんき</rt></ruby>です。<ruby>先生<rt>せんせい</rt></ruby>、<ruby>三級<rt>さんきゅう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>で<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>があります。<br>*(Vâng, em khoẻ. Cô ơi, em ôn cấp 3 có từ không hiểu.)* |
| Suzuki | どれ?<br>*(Từ nào?)* |
| Phong | 「<ruby>始動<rt>しどう</rt></ruby><ruby>不能<rt>ふのう</rt></ruby>」と「<ruby>異常<rt>いじょう</rt></ruby><ruby>振動<rt>しんどう</rt></ruby>」です。<br>*(「shidou-funou」và 「ijou-shindou」ạ.)* |
| Suzuki | 「<ruby>始動<rt>しどう</rt></ruby><ruby>不能<rt>ふのう</rt></ruby>」=エンジンがかからない<ruby>状態<rt>じょうたい</rt></ruby>。「<ruby>異常<rt>いじょう</rt></ruby><ruby>振動<rt>しんどう</rt></ruby>」=おかしい<ruby>揺<rt>ゆ</rt></ruby>れ。<ruby>整備士<rt>せいびし</rt></ruby>の<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>はみんな<ruby>漢語<rt>かんご</rt></ruby>だから<ruby>難<rt>むずか</rt></ruby>しいよね。<br>*("Shidou-funou" = trạng thái động cơ không nổ. "Ijou-shindou" = rung bất thường. Từ chuyên môn thợ ô tô đều là Hán ngữ nên khó.)* |
| Phong | <ruby>漢越<rt>かんえつ</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えるとわかります。「<ruby>始動<rt>しどう</rt></ruby>」=「khởi động」、「<ruby>不能<rt>ふのう</rt></ruby>」=「bất năng」。<br>*(Nghĩ qua Hán Việt là hiểu. "Shidou" = "khởi động", "funou" = "bất năng".)* |
| Suzuki | そう、それが<ruby>君<rt>きみ</rt></ruby>たちの<ruby>強<rt>つよ</rt></ruby>みだよ。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Đúng, đó là thế mạnh của các em. Cố lên.)* |

---

## Tình huống 10 — Ga Nagoya · sáng ngày thi 7/2026, gặp Sato đi cùng

| Vai | Lời thoại |
|---|---|
| Sato | おはよう、フォン。<ruby>朝食<rt>ちょうしょく</rt></ruby><ruby>食<rt>た</rt></ruby>べた?<br>*(Chào, Phong. Đã ăn sáng chưa?)* |
| Phong | はい、おにぎりを<ruby>食<rt>た</rt></ruby>べました。<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>少<rt>すこ</rt></ruby>ししか<ruby>食<rt>た</rt></ruby>べられませんでした。<br>*(Vâng, em ăn cơm nắm. Hồi hộp nên ăn được ít thôi.)* |
| Sato | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>持<rt>も</rt></ruby>ち<ruby>物<rt>もの</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>した?<ruby>受験票<rt>じゅけんひょう</rt></ruby>、<ruby>身分証<rt>みぶんしょう</rt></ruby>、<ruby>筆記用具<rt>ひっきようぐ</rt></ruby>。<br>*(Không sao. Kiểm tra đồ chưa? Phiếu dự thi, giấy tờ tuỳ thân, đồ viết.)* |
| Phong | はい、<ruby>三<rt>みっ</rt></ruby>つとも<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, em kiểm tra cả 3.)* |
| Sato | <ruby>会場<rt>かいじょう</rt></ruby>まで<ruby>地下鉄<rt>ちかてつ</rt></ruby>で<ruby>三十分<rt>さんじゅっぷん</rt></ruby>。<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>行<rt>い</rt></ruby>こう。<br>*(Đến chỗ thi mất 30 phút tàu điện ngầm. Đi sớm cho dư dả.)* |
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>結果<rt>けっか</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Sato, em thật sự cảm ơn anh. Có kết quả em sẽ báo cáo ngay.)* |
| Sato | あまり<ruby>気負<rt>きお</rt></ruby>わずに、いつものとおりやればいい。<br>*(Đừng căng quá, làm như mọi ngày là được.)* |

---

## Tình huống 11 — Phòng thi 整備振興会 · 10:00, trước giờ thi 実技

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>四十二番<rt>よんじゅうにばん</rt></ruby>、グエン・ヴァン・フォン<ruby>様<rt>さま</rt></ruby>、<ruby>入室<rt>にゅうしつ</rt></ruby>してください。<br>*(Thí sinh số 42, Phan Văn Phong, mời vào phòng.)* |
| Phong | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>四十二番<rt>よんじゅうにばん</rt></ruby>、グエン・ヴァン・フォンです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin phép. Số báo danh 42, Phan Văn Phong. Kính mong giám khảo.)* |
| Giám thị | はい。<ruby>課題<rt>かだい</rt></ruby>は「タイヤの<ruby>脱着<rt>だっちゃく</rt></ruby>とトルクチェック」です。<ruby>制限時間<rt>せいげんじかん</rt></ruby>は<ruby>十五分<rt>じゅうごふん</rt></ruby>。<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vâng. Đề là "tháo lắp lốp và kiểm tra mô-men". Thời gian 15 phút. Bắt đầu.)* |
| Phong | <ruby>始<rt>はじ</rt></ruby>めます。まず<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。リフトの<ruby>支点<rt>してん</rt></ruby>、よし。<br>*(Em bắt đầu. Trước kiểm tra an toàn. Điểm tựa cầu nâng, OK.)* |
| Giám thị | (うなずく)…<br>*(gật đầu)* |
| Phong | …<ruby>規定<rt>きてい</rt></ruby>トルク<ruby>百三<rt>ひゃくさん</rt></ruby>Nmで<ruby>締<rt>し</rt></ruby>めます。<ruby>確認<rt>かくにん</rt></ruby>します。…<ruby>終<rt>お</rt></ruby>わりました。ありがとうございました。<br>*(… Siết theo mô-men quy định 103 Nm. Em xác nhận. … Đã xong. Em cảm ơn ạ.)* |
| Giám thị | はい、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>退室<rt>たいしつ</rt></ruby>してください。<br>*(Vâng, vất vả rồi. Mời ra ngoài.)* |

---

## Tình huống 12 — Sảnh hội trường · 12:00, gặp thí sinh đồng hương VN

*Phong vừa thi xong, gặp anh Hùng — thực tập sinh ô tô Aichi khác cũng dự thi.*

| Vai | Lời thoại |
|---|---|
| Hùng | おい、フォンじゃない?<br>*(Ô, Phong à?)* |
| Phong | あ、ハンさん!お<ruby>久<rt>ひさ</rt></ruby>しぶりです。<br>*(A, anh Hùng! Lâu rồi không gặp.)* |
| Hùng | <ruby>実技<rt>じつぎ</rt></ruby>はどうだった?<br>*(Thực hành thế nào?)* |
| Phong | タイヤの<ruby>脱着<rt>だっちゃく</rt></ruby>でした。<ruby>大体<rt>だいたい</rt></ruby>できたと<ruby>思<rt>おも</rt></ruby>います。<ruby>挨拶<rt>あいさつ</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れませんでした。<br>*(Tháo lắp lốp. Em nghĩ làm được. Chào hỏi không quên.)* |
| Hùng | おれもタイヤだった。<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えた。<br>*(Anh cũng đề lốp. Hồi hộp đến run tay.)* |
| Phong | <ruby>結果<rt>けっか</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby>でしたよね?<br>*(Kết quả tháng sau phải không anh?)* |
| Hùng | うん、<ruby>八月<rt>はちがつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう。<br>*(Ờ, cuối tháng 8. Đậu cùng nhau đi nhậu.)* |
| Phong | はい!ぜひ!<br>*(Vâng! Nhất định!)* |

---

## Tình huống 13 — Văn phòng garage · 8/2026, nhận kết quả 合格

| Vai | Lời thoại |
|---|---|
| Tanaka | フォンくん、ちょっとこっち。<br>*(Phong, lại đây chút.)* |
| Phong | はい。<br>*(Vâng.)* |
| Tanaka | <ruby>合格通知<rt>ごうかくつうち</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたよ。おめでとう!<br>*(Thông báo đậu đến rồi. Chúc mừng!)* |
| Phong | え?ほ、<ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます!<br>*(Hả? Th… thật ạ? Em cảm ơn!)* |
| Tanaka | <ruby>学科<rt>がっか</rt></ruby><ruby>八十二点<rt>はちじゅうにてん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>七十八点<rt>ななじゅうはちてん</rt></ruby>。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Lý thuyết 82, thực hành 78. Cố gắng tốt lắm.)* |
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>工場長<rt>こうじょうちょう</rt></ruby>のおかげです。<br>*(Nhờ anh Sato và trưởng xưởng ạ.)* |
| Tanaka | これからは<ruby>三級整備士<rt>さんきゅうせいびし</rt></ruby>として<ruby>仕事<rt>しごと</rt></ruby>ができる。<ruby>次<rt>つぎ</rt></ruby>は<ruby>二級<rt>にきゅう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>そう。<br>*(Từ giờ làm việc với tư cách thợ cấp 3. Tiếp theo nhắm cấp 2.)* |
| Phong | はい!<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng! Em sẽ cố.)* |

---

## Tình huống 14 — Quán izakaya gần ga Toyota · 19:30, ăn mừng cùng Sato và Hùng

> Cảnh tiếng Việt — chuyển sang tiếng Việt khi 3 người Việt-Brazil-Nhật cụng ly. Phần đầu vẫn JP với Sato, phần sau Phong gọi mẹ.

| Vai | Lời thoại |
|---|---|
| Sato | かんぱい!<ruby>合格<rt>ごうかく</rt></ruby>おめでとう!<br>*(Cạn ly! Chúc mừng đậu!)* |
| Phong | ありがとうございます!ハンさんも!<br>*(Em cảm ơn anh! Anh Hùng cũng vậy!)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>も<ruby>受<rt>う</rt></ruby>かった。やったぜ!<br>*(Anh cũng đậu. Tuyệt!)* |

> Cảnh tiếng Việt — Phong rời bàn ra hành lang, gọi video call về mẹ ở Hải Phòng.

| Vai | Lời thoại |
|---|---|
| Phong | Mẹ ơi, con đậu rồi mẹ ạ! 三級整備士! |
| Mẹ Phong | Trời ơi, thật á con? Mẹ mừng quá! Bố ơi, Phong đậu rồi! |
| Bố Phong | Giỏi quá con! Bố nghe nói cái 検定 này khó lắm, người Nhật cũng rớt. |
| Phong | Lý thuyết 82, thực hành 78 bố ạ. Nhờ anh sempai người Nhật tên Sato giúp con suốt một tháng. Anh ấy còn photo đề cũ, làm bảng từ vựng cho con. |
| Mẹ Phong | Trời, có người Nhật tốt như vậy hả con. Mai mẹ làm mâm cơm cúng tổ tiên, báo ông bà. |
| Phong | Vâng. À mẹ ơi, trưởng xưởng bảo từ giờ con được làm 整備士 chính thức cấp 3, tiếp theo nhắm cấp 2 năm sau. Lương cũng tăng thêm chút. |
| Bố Phong | Tốt quá. Nhớ tiết kiệm gửi về cho mẹ, mẹ con dạo này còn đau lưng. |
| Phong | Dạ con biết. Tháng này con gửi thêm 5 vạn yên ạ. |
| Mẹ Phong | Đừng cố quá con, giữ sức khoẻ. Tự thưởng cho mình đi, có dám ăn sashimi không? |
| Phong | Hôm nay có ạ! Đang ngồi izakaya với anh Sato và anh Hùng đây. Mai con gọi lại mẹ nhé. |
| Bố Phong | Ừ, vui đi con. Cảm ơn ông bà. |

---

## Đọng lại chương

Mẫu câu xoay quanh kỳ thi 検定 quốc gia:

- **「〜を受けたいと思っています」** — bày tỏ nguyện vọng dự thi
- **「申し込みのことを相談させてください」** — xin tham vấn thủ tục
- **「テキストを貸していただけませんか」** — mượn giáo trình
- **「失礼します・始めます・終わりました・ありがとうございました」** — 4 câu chào hỏi bắt buộc khi thi 実技
- **「規定トルク〜Nmで締めます」** — báo cáo thao tác chuẩn
- **「合格通知が届いた」** — câu nhận thông báo đậu

Từ vựng nghề: 検定・受験・申込書・受験票・整備振興会・学科・実技・採点・合格・制動装置・動力伝達装置・始動不能・異常振動・規定トルク・脱着.

> Từ vựng & mẫu câu chương này: 検定・受験・受験料・申込書・受験票・監理団体・整備振興会・学科・実技・採点・合格・不合格・制動装置・動力伝達装置・電気装置・始動・異常・振動・規定・トルク・脱着・基準値・公式.

---

## Bí quyết chương

- **学科 70%, 実技 70%** mới đậu — không thể bù chéo, phải ôn cả hai.
- Người Việt có lợi thế **漢越語**: 制動 = chế động, 装置 = trang bị, 動力 = động lực. Đoán nghĩa qua âm Hán Việt rất nhanh.
- **実技** chấm cả **挨拶**: "失礼します - 始めます - 終わりました - ありがとうございました" không thiếu câu nào.
- Lệ phí thi 7000 yên, **会社 chịu một nửa** nếu có đăng ký qua 監理団体 — đừng quên hỏi.
- Sempai Nhật giúp **photo đề cũ** + **bảng từ vựng Hán** là điều quý nhất, thể hiện tri ân bằng việc báo cáo kết quả.
- Đậu cấp 3 chỉ là **bước đầu** — cấp 2 cần 2 năm kinh nghiệm + cấp 3, là mục tiêu tự nhiên năm 3.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 検定 | けんてい | KIỂM ĐỊNH | kỳ kiểm định kỹ năng |
| 自動車整備士 | じどうしゃせいびし | TỰ ĐỘNG XA CHỈNH BỊ SĨ | thợ ô tô (có chứng chỉ) |
| 三級 | さんきゅう | TAM CẤP | cấp 3 |
| 二級 | にきゅう | NHỊ CẤP | cấp 2 |
| 受験 | じゅけん | THỤ NGHIỆM | dự thi |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | lệ phí thi |
| 申し込み | もうしこみ | — | đăng ký |
| 申込書 | もうしこみしょ | — / THƯ | đơn đăng ký |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | đoàn quản lý |
| 整備振興会 | せいびしんこうかい | CHỈNH BỊ CHẤN HƯNG HỘI | hội khuyến khích kỹ thuật ô tô |
| 試験会場 | しけんかいじょう | THÍ NGHIỆM HỘI TRƯỜNG | địa điểm thi |
| 学科 | がっか | HỌC KHOA | thi lý thuyết |
| 実技 | じつぎ | THỰC KỸ | thi thực hành |
| 採点 | さいてん | THÁI ĐIỂM | chấm điểm |
| 合格 | ごうかく | HỢP CÁCH | đậu |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | rớt |
| 合格通知 | ごうかくつうち | HỢP CÁCH THÔNG TRI | giấy báo đậu |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề thi cũ |
| 用語集 | ようごしゅう | DỤNG NGỮ TẬP | bảng từ vựng chuyên ngành |
| 制動装置 | せいどうそうち | CHẾ ĐỘNG TRANG BỊ | hệ thống phanh |
| 動力伝達装置 | どうりょくでんたつそうち | ĐỘNG LỰC TRUYỀN ĐẠT TRANG BỊ | hộp số/truyền động |
| 電気装置 | でんきそうち | ĐIỆN KHÍ TRANG BỊ | hệ thống điện |
| 始動 | しどう | KHỞI ĐỘNG | khởi động |
| 始動不能 | しどうふのう | KHỞI ĐỘNG BẤT NĂNG | không khởi động được |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 振動 | しんどう | CHẤN ĐỘNG | rung động |
| 規定 | きてい | QUY ĐỊNH | quy định |
| 規定トルク | きていトルク | QUY ĐỊNH / — | mô-men quy định |
| 脱着 | だっちゃく | THOÁT TRƯỚC | tháo lắp |
| 基準値 | きじゅんち | CƠ CHUẨN TRỊ | giá trị chuẩn |
| 公式 | こうしき | CÔNG THỨC | công thức |
| 排気量 | はいきりょう | BÀI KHÍ LƯỢNG | dung tích xi-lanh |
| 圧縮比 | あっしゅくひ | ÁP SÚC TỈ | tỷ số nén |
| 選択問題 | せんたくもんだい | TUYỂN TRẠCH VẤN ĐỀ | câu trắc nghiệm |
| 計算問題 | けいさんもんだい | KẾ TOÁN VẤN ĐỀ | câu tính toán |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | thời gian giới hạn |
| 手順 | てじゅん | THỦ TUẦN | quy trình thao tác |
| 後片付け | あとかたづけ | HẬU PHIẾN PHÓ | dọn dẹp sau |
| 持ち物 | もちもの | TRÌ VẬT | đồ mang theo |
| 身分証 | みぶんしょう | THÂN PHẬN CHỨNG | giấy tờ tuỳ thân |
| 筆記用具 | ひっきようぐ | BÚT KÝ DỤNG CỤ | đồ viết |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM BAN HIỆU | số báo danh |
| 入室 | にゅうしつ | NHẬP THẤT | vào phòng |
| 退室 | たいしつ | THOÁI THẤT | ra khỏi phòng |
| 苦手 | にがて | KHỔ THỦ | điểm yếu, kém |
| 余裕 | よゆう | DƯ DỤ | dư dả, thư thả |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000007, 800000044, NULL, 'markdown_book', 'T7. Mùa hè và sửa điều hoà xe (夏のエアコン整備)', '# Sách thực tập sinh ô tô năm 2 · T7. Mùa hè và sửa điều hoà xe (夏のエアコン整備)

> **Mục tiêu nhân vật:** Phong (23 tuổi vừa sinh nhật 7/2026, năm 2 thực tập sinh ô tô tại garage Toyota Anjo Aichi, N4→N3). Học các mẫu hội thoại tiếng Nhật khi sửa hệ thống エアコン xe: tiếp khách hàng phàn nàn "không lạnh", chẩn đoán áp suất gas R134a, nạp gas, giải thích chi phí, phòng tránh sốc nhiệt cho bản thân, báo cáo công việc.

---

## Bối cảnh

Tháng 8 năm 2026. Aichi đang vào đỉnh điểm mùa hè, ngày nào cũng 35°C+, có ngày 38°C. Garage Toyota nhận liên tục khách vào sửa エアコン xe — không lạnh, gió yếu, mùi mốc. Phong vừa đậu 三級 nên được giao tham gia chẩn đoán エアコン (vẫn dưới giám sát). 工場長 cảnh báo về 熱中症 cho thợ. Chương này tập trung mẫu câu giải thích cho khách + thuật ngữ điều hoà + chăm sóc bản thân mùa hè.

---

## Tình huống 1 — Quầy lễ tân garage · 9:00, khách Nhật than xe không lạnh

| Vai | Lời thoại |
|---|---|
| Khách (ông Itou) | すみません、<ruby>予約<rt>よやく</rt></ruby>なしで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?エアコンが<ruby>効<rt>き</rt></ruby>かないんですよ。<br>*(Xin lỗi, không đặt trước có được không? Điều hoà không lạnh.)* |
| Phong | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Vâng, được ạ. Anh chờ một chút. Em xin hỏi tình trạng.)* |
| Itou | <ruby>三日前<rt>みっかまえ</rt></ruby>から<ruby>急<rt>きゅう</rt></ruby>に<ruby>冷風<rt>れいふう</rt></ruby>が<ruby>出<rt>で</rt></ruby>なくなって。<ruby>生<rt>なま</rt></ruby>ぬるい<ruby>風<rt>かぜ</rt></ruby>しか<ruby>出<rt>で</rt></ruby>ない。<br>*(Từ 3 hôm trước tự nhiên không ra gió lạnh nữa. Chỉ ra gió ấm thôi.)* |
| Phong | <ruby>異音<rt>いおん</rt></ruby>や<ruby>異<rt>い</rt></ruby>なにおいはありますか?<br>*(Có tiếng động lạ hay mùi lạ không ạ?)* |
| Itou | においは<ruby>少<rt>すこ</rt></ruby>しカビっぽいかな。<br>*(Mùi thì hơi mốc.)* |
| Phong | わかりました。まず<ruby>点検<rt>てんけん</rt></ruby>させていただきます。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>点検<rt>てんけん</rt></ruby>のみなら<ruby>無料<rt>むりょう</rt></ruby>です。<ruby>修理<rt>しゅうり</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>場合<rt>ばあい</rt></ruby>は<ruby>見積<rt>みつ</rt></ruby>もりをお<ruby>出<rt>だ</rt></ruby>しします。<br>*(Em hiểu rồi. Em sẽ kiểm tra trước. Riêng kiểm tra là miễn phí. Nếu cần sửa em sẽ báo giá ạ.)* |
| Itou | お<ruby>願<rt>ねが</rt></ruby>いします。どれくらいかかりますか?<br>*(Nhờ em. Mất bao lâu?)* |
| Phong | <ruby>三十分<rt>さんじゅっぷん</rt></ruby>ほどです。あちらの<ruby>待合室<rt>まちあいしつ</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちください。<ruby>冷<rt>つめ</rt></ruby>たいお<ruby>茶<rt>ちゃ</rt></ruby>もございます。<br>*(Khoảng 30 phút ạ. Anh đợi ở phòng chờ. Có cả trà mát ạ.)* |

---

## Tình huống 2 — Khu lift · 9:15, Phong báo cáo 工場長 nhận xe

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>伊藤<rt>いとう</rt></ruby><ruby>様<rt>さま</rt></ruby>のお<ruby>車<rt>くるま</rt></ruby>、エアコン<ruby>不良<rt>ふりょう</rt></ruby>です。<ruby>三日前<rt>みっかまえ</rt></ruby>から<ruby>冷風<rt>れいふう</rt></ruby>なし、カビ<ruby>臭<rt>くさ</rt></ruby>あり。<br>*(Trưởng xưởng, xe ông Itou bị lỗi điều hoà. 3 hôm trước không ra gió lạnh, có mùi mốc.)* |
| Tanaka | <ruby>車種<rt>しゃしゅ</rt></ruby>は?<br>*(Loại xe gì?)* |
| Phong | トヨタ・ヴォクシー、<ruby>平成<rt>へいせい</rt></ruby>二十八年式です。<br>*(Toyota Voxy đời Heisei 28 (2016).)* |
| Tanaka | じゃあ<ruby>圧力<rt>あつりょく</rt></ruby>から<ruby>測<rt>はか</rt></ruby>ってみよう。マニホールドゲージを<ruby>準備<rt>じゅんび</rt></ruby>して。<br>*(Vậy đo áp suất trước. Chuẩn bị đồng hồ mani đi.)* |
| Phong | はい。R134aですよね?<br>*(Vâng. Gas R134a phải không ạ?)* |
| Tanaka | この<ruby>年式<rt>ねんしき</rt></ruby>はR134a。<ruby>新<rt>あたら</rt></ruby>しいクルマはR1234yfもあるから、<ruby>必<rt>かなら</rt></ruby>ず<ruby>銘板<rt>めいばん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>すること。<br>*(Đời này là R134a. Xe mới có cả R1234yf, phải luôn xem nhãn máy.)* |
| Phong | わかりました。<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em hiểu rồi. Em xác nhận.)* |

---

## Tình huống 3 — Khu lift · 9:30, Phong đo áp suất gas dưới giám sát Tanaka

*Phong gắn manifold gauge vào cổng cao áp và thấp áp. Tanaka đứng cạnh quan sát.*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>低圧側<rt>ていあつそく</rt></ruby><ruby>0.1<rt>れいてんいち</rt></ruby>MPa、<ruby>高圧側<rt>こうあつそく</rt></ruby><ruby>0.8<rt>れいてんはち</rt></ruby>MPaです。<br>*(Áp thấp 0.1 MPa, áp cao 0.8 MPa.)* |
| Tanaka | <ruby>低<rt>ひく</rt></ruby>すぎるな。<ruby>正常値<rt>せいじょうち</rt></ruby>は?<br>*(Thấp quá. Giá trị bình thường?)* |
| Phong | <ruby>低圧側<rt>ていあつそく</rt></ruby>が<ruby>0.15<rt>れいてんいちご</rt></ruby>から<ruby>0.25<rt>れいてんにご</rt></ruby>MPa、<ruby>高圧側<rt>こうあつそく</rt></ruby>が<ruby>1.4<rt>いってんよん</rt></ruby>から<ruby>1.6<rt>いってんろく</rt></ruby>MPaです。<br>*(Áp thấp 0.15-0.25 MPa, áp cao 1.4-1.6 MPa.)* |
| Tanaka | そう。<ruby>両方<rt>りょうほう</rt></ruby><ruby>低<rt>ひく</rt></ruby>いから、<ruby>冷媒<rt>れいばい</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。<br>*(Đúng. Cả hai đều thấp nên có khả năng cao là thiếu gas.)* |
| Phong | <ruby>漏<rt>も</rt></ruby>れがあるかもしれませんね?<br>*(Có thể bị rò phải không ạ?)* |
| Tanaka | そう。<ruby>蛍光剤<rt>けいこうざい</rt></ruby>を<ruby>入<rt>い</rt></ruby>れて<ruby>漏<rt>も</rt></ruby>れ<ruby>箇所<rt>かしょ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>そう。<br>*(Đúng. Cho chất huỳnh quang vào tìm điểm rò.)* |
| Phong | カビ<ruby>臭<rt>くさ</rt></ruby>はエバポレーターのほうですか?<br>*(Mùi mốc là phía giàn lạnh phải không ạ?)* |
| Tanaka | そう。<ruby>抗菌<rt>こうきん</rt></ruby><ruby>消臭<rt>しょうしゅう</rt></ruby><ruby>処理<rt>しょり</rt></ruby>も<ruby>同時<rt>どうじ</rt></ruby>に<ruby>提案<rt>ていあん</rt></ruby>しよう。<br>*(Đúng. Đề xuất thêm xử lý kháng khuẩn-khử mùi luôn.)* |

---

## Tình huống 4 — Quầy lễ tân · 10:00, Phong giải thích chẩn đoán và báo giá cho khách

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>伊藤<rt>いとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>結果<rt>けっか</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Ông Itou, em xin trình bày kết quả ạ.)* |
| Itou | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em.)* |
| Phong | エアコンの<ruby>冷媒<rt>れいばい</rt></ruby>、つまりガスが<ruby>足<rt>た</rt></ruby>りていません。どこかから<ruby>漏<rt>も</rt></ruby>れている<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いです。<br>*(Gas điều hoà thiếu. Khả năng cao có chỗ rò.)* |
| Itou | どれくらいかかりますか?<br>*(Mất bao nhiêu tiền?)* |
| Phong | <ruby>修理<rt>しゅうり</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>います。<ruby>蛍光剤<rt>けいこうざい</rt></ruby>で<ruby>漏<rt>も</rt></ruby>れ<ruby>箇所<rt>かしょ</rt></ruby>を<ruby>探<rt>さが</rt></ruby>して、ガス<ruby>補充<rt>ほじゅう</rt></ruby>のみなら<ruby>八千円<rt>はっせんえん</rt></ruby>ほど。<ruby>部品<rt>ぶひん</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なら<ruby>追加<rt>ついか</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>します。<br>*(Tuỳ nội dung sửa. Nếu chỉ tìm chỗ rò bằng huỳnh quang + nạp gas, khoảng 8000 yên. Cần thay phụ tùng thì có phụ phí.)* |
| Itou | カビの<ruby>臭<rt>にお</rt></ruby>いも<ruby>取<rt>と</rt></ruby>れますか?<br>*(Có khử được mùi mốc không?)* |
| Phong | はい、<ruby>抗菌<rt>こうきん</rt></ruby><ruby>消臭<rt>しょうしゅう</rt></ruby><ruby>処理<rt>しょり</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>することをおすすめします。<ruby>三千円<rt>さんぜんえん</rt></ruby>です。<br>*(Vâng, em khuyên thêm xử lý kháng khuẩn-khử mùi. 3000 yên ạ.)* |
| Itou | じゃ、<ruby>両方<rt>りょうほう</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy cả hai luôn.)* |
| Phong | かしこまりました。<ruby>合計<rt>ごうけい</rt></ruby><ruby>税込<rt>ぜいこ</rt></ruby>みで<ruby>一万二千百円<rt>いちまんにせんひゃくえん</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<ruby>所要時間<rt>しょようじかん</rt></ruby>は<ruby>約<rt>やく</rt></ruby><ruby>一時間半<rt>いちじかんはん</rt></ruby>。<br>*(Em xin nhận. Tổng có thuế dự kiến 12100 yên. Thời gian khoảng 1 tiếng rưỡi.)* |

---

## Tình huống 5 — Khu lift · 10:30, Phong tìm điểm rò bằng đèn UV

*Tanaka đứng quan sát, Phong cầm đèn UV soi quanh máy lạnh.*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>蛍光剤<rt>けいこうざい</rt></ruby>を<ruby>注入<rt>ちゅうにゅう</rt></ruby>して、エンジンを<ruby>十分<rt>じゅっぷん</rt></ruby><ruby>回<rt>まわ</rt></ruby>しました。<ruby>今<rt>いま</rt></ruby>からUVライトで<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Đã bơm chất huỳnh quang và cho máy chạy 10 phút. Giờ em soi đèn UV.)* |
| Tanaka | コンデンサーまわり、コンプレッサーまわり、ホースの<ruby>接続部<rt>せつぞくぶ</rt></ruby>を<ruby>順番<rt>じゅんばん</rt></ruby>に。<br>*(Quanh condenser, compressor, các điểm nối ống — theo thứ tự.)* |
| Phong | …あ、ここ!コンプレッサーの<ruby>下<rt>した</rt></ruby>のホース<ruby>接続部<rt>せつぞくぶ</rt></ruby>が<ruby>光<rt>ひか</rt></ruby>っています。<br>*(… A, đây! Chỗ nối ống dưới máy nén đang sáng.)* |
| Tanaka | よく<ruby>見<rt>み</rt></ruby>つけた。Oリングの<ruby>劣化<rt>れっか</rt></ruby>だな。<br>*(Tìm tốt đấy. O-ring xuống cấp rồi.)* |
| Phong | Oリングを<ruby>交換<rt>こうかん</rt></ruby>すれば<ruby>直<rt>なお</rt></ruby>りますか?<br>*(Thay O-ring là sửa được không ạ?)* |
| Tanaka | うん。<ruby>部品<rt>ぶひん</rt></ruby><ruby>代<rt>だい</rt></ruby>は<ruby>五百円<rt>ごひゃくえん</rt></ruby>くらい。<ruby>工賃<rt>こうちん</rt></ruby><ruby>含<rt>ふく</rt></ruby>めて<ruby>追加<rt>ついか</rt></ruby><ruby>三千円<rt>さんぜんえん</rt></ruby>でいけるよ。<ruby>伊藤<rt>いとう</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>して<ruby>了承<rt>りょうしょう</rt></ruby>もらおう。<br>*(Ờ. Phụ tùng khoảng 500 yên. Tính công thêm 3000 yên là xong. Liên lạc ông Itou xin đồng ý nhé.)* |

---

## Tình huống 6 — Khu lift · 11:00, Phong gọi điện thông báo phát sinh chi phí

| Vai | Lời thoại |
|---|---|
| Phong | お<ruby>世話<rt>せわ</rt></ruby>になっております。トヨタ<ruby>安城<rt>あんじょう</rt></ruby><ruby>店<rt>てん</rt></ruby>のフォンです。<ruby>伊藤様<rt>いとうさま</rt></ruby>でしょうか?<br>*(Em là Phong từ Toyota Anjō-ten. Anh Itou không ạ?)* |
| Itou | はい、<ruby>伊藤<rt>いとう</rt></ruby>です。<br>*(Vâng, Itou đây.)* |
| Phong | <ruby>漏<rt>も</rt></ruby>れ<ruby>箇所<rt>かしょ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりました。コンプレッサーの<ruby>下<rt>した</rt></ruby>のOリングが<ruby>劣化<rt>れっか</rt></ruby>しています。<ruby>交換<rt>こうかん</rt></ruby>すれば<ruby>修理<rt>しゅうり</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Em tìm ra chỗ rò rồi. O-ring dưới máy nén xuống cấp. Thay là sửa được.)* |
| Itou | <ruby>追加<rt>ついか</rt></ruby>でいくらかかりますか?<br>*(Phụ thêm bao nhiêu?)* |
| Phong | <ruby>追加<rt>ついか</rt></ruby><ruby>三千円<rt>さんぜんえん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby>で<ruby>一万五千百円<rt>いちまんごせんひゃくえん</rt></ruby>になります。<br>*(Thêm 3000 yên, tổng 15100 yên ạ.)* |
| Itou | わかりました。<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Tôi hiểu rồi. Cứ làm đi.)* |
| Phong | ありがとうございます。<ruby>完了<rt>かんりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>は<ruby>十二時半<rt>じゅうにじはん</rt></ruby>ごろです。<br>*(Em cảm ơn. Dự kiến xong tầm 12 giờ rưỡi ạ.)* |
| Itou | はい、よろしく。<br>*(Ờ, nhờ em.)* |

---

## Tình huống 7 — Phòng nghỉ · 11:50, 工場長 nhắc 熱中症 đối phó sốc nhiệt

*Trên tường có poster 熱中症予防. Carlos đang uống chai 経口補水液.*

| Vai | Lời thoại |
|---|---|
| Tanaka | みんな、<ruby>今日<rt>きょう</rt></ruby>の<ruby>気温<rt>きおん</rt></ruby>は<ruby>三十七度<rt>さんじゅうななど</rt></ruby>。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Mọi người, hôm nay 37°C. Cẩn thận sốc nhiệt.)* |
| Carlos | フォン、<ruby>水<rt>みず</rt></ruby>だけじゃダメだよ。<ruby>塩分<rt>えんぶん</rt></ruby>も<ruby>取<rt>と</rt></ruby>って。これ、<ruby>経口補水液<rt>けいこうほすいえき</rt></ruby>。<br>*(Phong, uống nước không là không đủ. Bổ sung muối nữa. Đây, dung dịch điện giải.)* |
| Phong | ありがとうございます。<ruby>頭<rt>あたま</rt></ruby>がちょっとふらふらしてきました。<br>*(Em cảm ơn. Em hơi choáng đầu.)* |
| Tanaka | それは<ruby>危<rt>あぶ</rt></ruby>ない<ruby>兆候<rt>ちょうこう</rt></ruby>だ。<ruby>十分間<rt>じゅっぷんかん</rt></ruby><ruby>休憩<rt>きゅうけい</rt></ruby>しなさい。エアコンの<ruby>効<rt>き</rt></ruby>いた<ruby>事務所<rt>じむしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>って。<br>*(Đó là dấu hiệu nguy hiểm. Nghỉ 10 phút đi. Vào văn phòng có điều hoà.)* |
| Phong | はい、すみません。<br>*(Vâng, em xin lỗi.)* |
| Tanaka | <ruby>謝<rt>あやま</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>はないよ。<ruby>無理<rt>むり</rt></ruby>して<ruby>倒<rt>たお</rt></ruby>れるほうがみんなに<ruby>迷惑<rt>めいわく</rt></ruby>。<ruby>体調<rt>たいちょう</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>すること。<br>*(Không cần xin lỗi. Cố quá rồi ngã thì phiền mọi người hơn. Mệt là phải báo cáo.)* |
| Carlos | <ruby>夏<rt>なつ</rt></ruby>のブラジルもこんなだよ。<ruby>慣<rt>な</rt></ruby>れるまで<ruby>大変<rt>たいへん</rt></ruby>だけど、<ruby>水分<rt>すいぶん</rt></ruby>と<ruby>塩分<rt>えんぶん</rt></ruby><ruby>意識<rt>いしき</rt></ruby>して。<br>*(Brazil mùa hè cũng vậy. Quen thì OK, nhưng để ý nước với muối.)* |

---

## Tình huống 8 — Khu lift · 13:00, Phong thay O-ring và nạp gas

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、Oリングの<ruby>交換<rt>こうかん</rt></ruby><ruby>終<rt>お</rt></ruby>わりました。<ruby>真空引<rt>しんくうび</rt></ruby>きを<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Anh Sato, em thay xong O-ring. Em bắt đầu hút chân không.)* |
| Sato | <ruby>何<rt>なん</rt></ruby><ruby>分<rt>ぷん</rt></ruby>?<br>*(Bao nhiêu phút?)* |
| Phong | <ruby>十五分<rt>じゅうごふん</rt></ruby>です。マイナス<ruby>0.1<rt>れいてんいち</rt></ruby>MPaまで<ruby>引<rt>ひ</rt></ruby>きます。<br>*(15 phút. Em hút đến âm 0.1 MPa ạ.)* |
| Sato | OK。<ruby>真空引<rt>しんくうび</rt></ruby>き<ruby>後<rt>ご</rt></ruby>、<ruby>圧力<rt>あつりょく</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がらないか<ruby>五分<rt>ごふん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(OK. Sau khi hút, kiểm tra 5 phút xem áp suất có lên không.)* |
| Phong | はい。<ruby>圧力<rt>あつりょく</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がらなければ、<ruby>漏<rt>も</rt></ruby>れがないということですね?<br>*(Vâng. Áp suất không lên nghĩa là không còn rò ạ?)* |
| Sato | そう。それを<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>規定量<rt>きていりょう</rt></ruby>の<ruby>冷媒<rt>れいばい</rt></ruby>を<ruby>充填<rt>じゅうてん</rt></ruby>する。<ruby>銘板<rt>めいばん</rt></ruby>に<ruby>四百五十<rt>よんひゃくごじゅう</rt></ruby>グラムと<ruby>書<rt>か</rt></ruby>いてあるね。<br>*(Đúng. Xác nhận xong mới nạp lượng gas quy định. Trên nhãn ghi 450 g nhỉ.)* |
| Phong | はい、<ruby>四百五十<rt>よんひゃくごじゅう</rt></ruby>グラムです。<br>*(Vâng, 450 g.)* |

---

## Tình huống 9 — Khu lift · 13:30, Phong kiểm tra hoạt động sau sửa

| Vai | Lời thoại |
|---|---|
| Phong | エンジンをかけて、エアコン<ruby>最強<rt>さいきょう</rt></ruby>で<ruby>温度<rt>おんど</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ります。<br>*(Em nổ máy, bật điều hoà mạnh nhất, đo nhiệt độ.)* |
| Sato | <ruby>吹<rt>ふ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>し<ruby>口<rt>ぐち</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>度<rt>ど</rt></ruby>?<br>*(Nhiệt độ cửa gió bao nhiêu?)* |
| Phong | …<ruby>六度<rt>ろくど</rt></ruby>です。<br>*(… 6 độ.)* |
| Sato | <ruby>外気温<rt>がいきおん</rt></ruby>マイナス<ruby>三十<rt>さんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>くらいなら<ruby>正常<rt>せいじょう</rt></ruby>。<ruby>外気<rt>がいき</rt></ruby><ruby>三十七度<rt>さんじゅうななど</rt></ruby>、<ruby>吹<rt>ふ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>し<ruby>六度<rt>ろくど</rt></ruby>。<ruby>三十一<rt>さんじゅういち</rt></ruby><ruby>度差<rt>どさ</rt></ruby>。OKだ。<br>*(Nhiệt độ ngoài trừ khoảng 30°C là bình thường. Ngoài 37, ra 6 = chênh 31°C. OK rồi.)* |
| Phong | <ruby>抗菌<rt>こうきん</rt></ruby><ruby>消臭<rt>しょうしゅう</rt></ruby>スプレーをエバポレーターに<ruby>噴霧<rt>ふんむ</rt></ruby>します。<br>*(Em xịt kháng khuẩn khử mùi vào giàn lạnh.)* |
| Sato | エアコンフィルターも<ruby>確認<rt>かくにん</rt></ruby>した?<br>*(Lọc gió điều hoà kiểm tra chưa?)* |
| Phong | <ruby>確認<rt>かくにん</rt></ruby>しました。まだきれいなので、<ruby>今回<rt>こんかい</rt></ruby>は<ruby>交換<rt>こうかん</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>です。<br>*(Em kiểm rồi. Còn sạch nên lần này không cần thay.)* |
| Sato | じゃあ<ruby>納車<rt>のうしゃ</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>OK。<ruby>洗車<rt>せんしゃ</rt></ruby>もしようか。<ruby>暑<rt>あつ</rt></ruby>い<ruby>日<rt>ひ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てくれたから。<br>*(Vậy chuẩn bị giao xe OK. Rửa luôn xe đi. Khách đến vào ngày nóng mà.)* |

---

## Tình huống 10 — Quầy lễ tân · 12:45, Phong giao xe và giải thích bảo dưỡng

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>伊藤<rt>いとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>修理<rt>しゅうり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Anh Itou, em đã hoàn thành sửa chữa.)* |
| Itou | おお、<ruby>早<rt>はや</rt></ruby>かったね。<br>*(Ồ, nhanh nhỉ.)* |
| Phong | <ruby>原因<rt>げんいん</rt></ruby>はコンプレッサー<ruby>下部<rt>かぶ</rt></ruby>のOリング<ruby>劣化<rt>れっか</rt></ruby>でした。<ruby>交換<rt>こうかん</rt></ruby>と<ruby>冷媒<rt>れいばい</rt></ruby><ruby>補充<rt>ほじゅう</rt></ruby>、<ruby>抗菌<rt>こうきん</rt></ruby><ruby>消臭<rt>しょうしゅう</rt></ruby><ruby>処理<rt>しょり</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>いました。<br>*(Nguyên nhân là O-ring dưới máy nén xuống cấp. Em đã thay, nạp gas và xử lý kháng khuẩn khử mùi.)* |
| Itou | <ruby>効<rt>き</rt></ruby>くようになった?<br>*(Lạnh lại chưa?)* |
| Phong | はい、<ruby>吹<rt>ふ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>し<ruby>温度<rt>おんど</rt></ruby><ruby>六度<rt>ろくど</rt></ruby>です。<ruby>正常<rt>せいじょう</rt></ruby><ruby>値<rt>ち</rt></ruby>です。<br>*(Vâng, gió ra 6°C. Đạt chuẩn ạ.)* |
| Itou | ありがとう。<ruby>請求<rt>せいきゅう</rt></ruby>は?<br>*(Cảm ơn. Hoá đơn?)* |
| Phong | <ruby>合計<rt>ごうけい</rt></ruby><ruby>一万五千百円<rt>いちまんごせんひゃくえん</rt></ruby>です。<ruby>領収書<rt>りょうしゅうしょ</rt></ruby>もお<ruby>渡<rt>わた</rt></ruby>しします。<ruby>次回<rt>じかい</rt></ruby>の<ruby>車検<rt>しゃけん</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>三月<rt>さんがつ</rt></ruby>ですね。<br>*(Tổng 15100 yên. Em đưa hoá đơn ạ. Lần kiểm định xe tiếp theo là tháng 3 năm sau.)* |
| Itou | わかった。また<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Hiểu rồi. Lần sau lại nhờ nhé.)* |
| Phong | ありがとうございました。お<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Em cảm ơn. Anh đi cẩn thận.)* |

---

## Tình huống 11 — Phòng nghỉ · 17:00, Phong báo cáo 工場長 cuối ngày + xin nghỉ phép

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。エアコン<ruby>修理<rt>しゅうり</rt></ruby><ruby>二件<rt>にけん</rt></ruby>、<ruby>点検<rt>てんけん</rt></ruby>のみ<ruby>三件<rt>さんけん</rt></ruby>でした。<br>*(Trưởng xưởng, em báo cáo hôm nay. Sửa điều hoà 2 ca, chỉ kiểm tra 3 ca.)* |
| Tanaka | お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Vất vả rồi. Sức khoẻ ổn không?)* |
| Phong | はい、<ruby>休憩<rt>きゅうけい</rt></ruby>させていただいて<ruby>回復<rt>かいふく</rt></ruby>しました。あの…<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>、<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせていただけませんか?<br>*(Vâng, em được nghỉ nên hồi rồi. Dạ… thứ Sáu tuần sau, em xin nghỉ phép có lương được không ạ?)* |
| Tanaka | <ruby>理由<rt>りゆう</rt></ruby>は?<br>*(Lý do?)* |
| Phong | お<ruby>盆<rt>ぼん</rt></ruby><ruby>休<rt>やす</rt></ruby>みに<ruby>合<rt>あ</rt></ruby>わせて、ベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>同僚<rt>どうりょう</rt></ruby>と<ruby>京都<rt>きょうと</rt></ruby>に<ruby>旅行<rt>りょこう</rt></ruby>したいです。<br>*(Em muốn đi du lịch Kyoto với đồng hương VN cùng dịp obon.)* |
| Tanaka | いいよ。<ruby>申請<rt>しんせい</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>明日<rt>あした</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>して。<br>*(Được. Mai nộp đơn xin nghỉ.)* |
| Phong | ありがとうございます。<br>*(Em cảm ơn ạ.)* |

---

## Tình huống 12 — Konbini gần garage · 18:00, gặp Quân, kể chuyện làm エアコン

| Vai | Lời thoại |
|---|---|
| Quân | フォンさん、<ruby>今日<rt>きょう</rt></ruby>もエアコンですか?<br>*(Anh Phong, hôm nay cũng điều hoà ạ?)* |
| Phong | うん、<ruby>暑<rt>あつ</rt></ruby>い<ruby>季節<rt>きせつ</rt></ruby>はエアコン<ruby>修理<rt>しゅうり</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いんだ。<ruby>大変<rt>たいへん</rt></ruby>だけど<ruby>勉強<rt>べんきょう</rt></ruby>になるよ。<br>*(Ờ. Mùa nóng nhiều ca sửa điều hoà. Vất vả nhưng học được nhiều.)* |
| Quân | <ruby>冷媒<rt>れいばい</rt></ruby>って<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Reibai là gì ạ?)* |
| Phong | エアコンの<ruby>中<rt>なか</rt></ruby>のガスのこと。R134aっていう<ruby>種類<rt>しゅるい</rt></ruby>が<ruby>普通<rt>ふつう</rt></ruby>。<ruby>新<rt>あたら</rt></ruby>しいクルマはR1234yfもあるよ。<br>*(Gas trong điều hoà. Loại R134a là thường. Xe mới có cả R1234yf.)* |
| Quân | <ruby>難<rt>むずか</rt></ruby>しいですね。<br>*(Khó nhỉ.)* |
| Phong | だんだん<ruby>覚<rt>おぼ</rt></ruby>えるよ。それより、<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<ruby>水<rt>みず</rt></ruby>と<ruby>塩<rt>しお</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>取<rt>と</rt></ruby>って。<br>*(Dần dần quen. Mà cẩn thận sốc nhiệt. Nước với muối, uống cả hai.)* |
| Quân | はい。<ruby>経口補水液<rt>けいこうほすいえき</rt></ruby>を<ruby>買<rt>か</rt></ruby>っておきます。<br>*(Vâng. Em mua dung dịch điện giải để sẵn.)* |

---

## Tình huống 13 — Ký túc xá, ban công · 21:30 — Gọi điện về bạn cũ ở Hải Phòng

> Cảnh tiếng Việt — Phong gọi điện cho Đạt (bạn thân học chung cấp 3, đang sửa xe ở Hải Phòng).

| Vai | Lời thoại |
|---|---|
| Đạt | Phong à, mày bên Nhật khoẻ không? Nghe nói bên đó nóng lắm hả? |
| Phong | Trời ơi Đạt, nóng 37 độ mày ạ. Hôm nay tao đã suýt sốc nhiệt. May trưởng xưởng bảo vào văn phòng nghỉ 10 phút. |
| Đạt | Hải Phòng cũng 36 độ. Garage tao quạt máy thôi, không có điều hoà. |
| Phong | Bên này thợ đứng ngoài lift mà có vòi phun sương mát, có nước điện giải free. À tao mới làm xong ca sửa エアコン xe Voxy đó, mày biết không, nó dùng gas R134a. |
| Đạt | Bên này tao toàn sửa R134a, nhưng làm bằng mắt thôi, không có UV light. Mà mày nói cụ thể tao học với. |
| Phong | Tao gắn manifold gauge đo áp cao áp thấp. Áp thấp 0.1 là biết thiếu gas. Rồi bơm chất huỳnh quang vào, soi UV light tìm chỗ rò. Tao tìm ra cái O-ring dưới máy nén hỏng. |
| Đạt | Bài bản quá. Bên này thường cứ bơm gas đại, tuần sau lại rò tiếp. |
| Phong | Đúng đấy, bên này khách trả tiền cao nên mình làm đúng quy trình. Tao báo giá trước, có thuế tính rõ ràng, in hoá đơn 領収書. |
| Đạt | Phục mày luôn. À, tao chuẩn bị mở garage riêng, mày về tao hợp tác chứ? |
| Phong | Còn 1 năm rưỡi nữa tao về. Nếu thi được cấp 2 thì kiến thức đủ rồi. Đợi tao nhé. |
| Đạt | OK. Cố lên. Đừng để sốc nhiệt nữa nha, uống nước nhiều vào. |
| Phong | Yên tâm. Mai tao đi Kyoto chơi obon, sẽ chụp ảnh đền chùa gửi mày. |
| Đạt | Vui đi. Tao ngủ đây. |

---

## Đọng lại chương

Mẫu câu mùa hè + エアコン:

- **「エアコンが効かない」「冷風が出ない」** — câu khách dùng mô tả lỗi
- **「圧力を測ります」「冷媒不足の可能性が高い」** — báo cáo chẩn đoán
- **「料金は点検のみなら無料です」** — giải thích phí
- **「見積もりをお出しします」「合計税込み〜円」** — báo giá
- **「真空引きを始めます」「規定量の冷媒を充填する」** — thao tác chuẩn
- **「体調不良は必ず報告すること」** — văn hoá an toàn lao động
- **「有給を取らせていただけませんか」** — xin nghỉ phép keigo

Từ vựng: 冷媒・R134a・マニホールドゲージ・低圧側・高圧側・コンプレッサー・コンデンサー・エバポレーター・O リング・蛍光剤・UV ライト・真空引き・充填・抗菌消臭・吹き出し口・熱中症・経口補水液.

> Từ vựng & mẫu câu chương này: エアコン・冷媒・R134a・R1234yf・マニホールドゲージ・圧力・低圧側・高圧側・コンプレッサー・コンデンサー・エバポレーター・O リング・蛍光剤・漏れ・劣化・真空引き・充填・規定量・抗菌・消臭・吹き出し口・温度差・熱中症・経口補水液・塩分・水分・有給.

---

## Bí quyết chương

- **R134a** và **R1234yf** không thể trộn — luôn xem **銘板** (nhãn máy) trên cốp xe trước khi nạp.
- Áp thấp + áp cao **đều giảm** = thiếu gas. Áp thấp giảm + áp cao tăng = nghẽn cánh tản nhiệt. Đo cả hai mới chẩn đoán đúng.
- **真空引き 15 phút** rồi giữ 5 phút xem áp lên không — là cách "test rò" miễn phí, không tốn gas.
- Mùa hè 35°C+, **熱中症** là rủi ro nghề: nước thường KHÔNG đủ, phải có **塩分** (経口補水液 OS-1 là chuẩn).
- Báo cáo **体調不良** ngay khi choáng — đừng chịu đựng. Cố sức rồi ngã là phiền cả đội.
- Khi báo giá khách Nhật, luôn **税込み** (đã gồm thuế 10%) — đừng để khách "shock" lúc thanh toán.
- お盆 (giữa tháng 8) là kỳ nghỉ truyền thống — **xin 有給 sớm**, đừng chen chân lúc cuối.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| エアコン | — | — | điều hoà |
| 効く | きく | HIỆU | có tác dụng |
| 冷風 | れいふう | LÃNH PHONG | gió lạnh |
| 生ぬるい | なまぬるい | — | ấm âm ấm |
| 異音 | いおん | DỊ ÂM | tiếng động lạ |
| 異臭 | いしゅう | DỊ XÚ | mùi lạ |
| 冷媒 | れいばい | LÃNH MÔI | chất làm lạnh, gas điều hoà |
| 圧力 | あつりょく | ÁP LỰC | áp suất |
| 低圧側 | ていあつそく | ĐÊ ÁP TRẮC | bên áp thấp |
| 高圧側 | こうあつそく | CAO ÁP TRẮC | bên áp cao |
| マニホールドゲージ | — | — | đồng hồ mani |
| コンプレッサー | — | — | máy nén |
| コンデンサー | — | — | giàn nóng |
| エバポレーター | — | — | giàn lạnh |
| O リング | — | — | gioăng O-ring |
| ホース | — | — | ống mềm |
| 接続部 | せつぞくぶ | TIẾP TỤC BỘ | điểm nối |
| 蛍光剤 | けいこうざい | HUỲNH QUANG TỄ | chất huỳnh quang |
| UV ライト | — | — | đèn UV |
| 漏れ | もれ | LẬU | rò rỉ |
| 漏れ箇所 | もれかしょ | LẬU CÁ SỞ | điểm rò |
| 劣化 | れっか | LIỆT HOÁ | xuống cấp |
| 真空引き | しんくうびき | CHÂN KHÔNG | hút chân không |
| 充填 | じゅうてん | SUNG ĐIỀN | nạp đầy |
| 規定量 | きていりょう | QUY ĐỊNH LƯỢNG | lượng quy định |
| 銘板 | めいばん | DANH BẢNG | nhãn máy |
| 補充 | ほじゅう | BỔ SUNG | bổ sung |
| 抗菌 | こうきん | KHÁNG KHUẨN | kháng khuẩn |
| 消臭 | しょうしゅう | TIÊU XÚ | khử mùi |
| 処理 | しょり | XỬ LÝ | xử lý |
| 吹き出し口 | ふきだしぐち | XUÝ XUẤT KHẨU | cửa thoát gió |
| 温度差 | おんどさ | ÔN ĐỘ SAI | chênh lệch nhiệt độ |
| 外気温 | がいきおん | NGOẠI KHÍ ÔN | nhiệt độ ngoài trời |
| 見積もり | みつもり | KIẾN TÍCH | báo giá |
| 料金 | りょうきん | LIỆU KIM | phí |
| 部品代 | ぶひんだい | BỘ PHẨM ĐẠI | tiền phụ tùng |
| 工賃 | こうちん | CÔNG NHẬM | tiền công |
| 税込み | ぜいこみ | THUẾ — | đã bao gồm thuế |
| 領収書 | りょうしゅうしょ | LĨNH THU THƯ | hoá đơn |
| 納車 | のうしゃ | NẠP XA | giao xe |
| 洗車 | せんしゃ | TẨY XA | rửa xe |
| 熱中症 | ねっちゅうしょう | NHIỆT TRUNG CHỨNG | sốc nhiệt |
| 経口補水液 | けいこうほすいえき | KINH KHẨU BỔ THUỶ DỊCH | dung dịch điện giải |
| 塩分 | えんぶん | DIÊM PHẦN | muối/khoáng natri |
| 水分 | すいぶん | THUỶ PHẦN | nước, chất lỏng |
| 体調不良 | たいちょうふりょう | THỂ ĐIỀU BẤT LƯƠNG | mệt, không khoẻ |
| 兆候 | ちょうこう | TRIỆU HẬU | dấu hiệu |
| 休憩 | きゅうけい | HƯU KHẾ | nghỉ giải lao |
| 有給 | ゆうきゅう | HỮU CẤP | nghỉ phép có lương |
| お盆 | おぼん | — / BỒN | lễ obon |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | đơn đăng ký |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000008, 800000044, NULL, 'markdown_book', 'T8. Nước rút ôn N3 (N3対策ラストスパート)', '# Sách thực tập sinh ô tô năm 2 · T8. Nước rút ôn N3 (N3対策ラストスパート)

> **Mục tiêu nhân vật:** Phong (23 tuổi, năm 2 thực tập sinh ô tô tại garage Toyota Anjo Aichi, đang từ N4 lên N3). Học các mẫu hội thoại tiếng Nhật khi ôn N3 nước rút: xin sempai sửa văn 漢字, hỏi sensei online về 文法, luyện 聴解 với đồng nghiệp, đăng ký thi tháng 12, ăn mừng/an ủi sau thi, tự đánh giá điểm yếu.

---

## Bối cảnh

Tháng 10 - 12 năm 2026. Sau khi qua 三級検定 và mùa hè vất vả, Phong dồn 3 tháng cuối năm cho mục tiêu thứ hai: thi N3 ngày 6/12/2026. Đã đăng ký từ tháng 9 qua JLPT website. Phong tự học buổi tối, mượn 文法 textbook của sempai Sato, dùng app Mazii, gọi LINE sensei Suzuki. Đồng nghiệp Carlos (Brazil) đã đậu N3 — chia sẻ kinh nghiệm 聴解. Chương này tập trung mẫu câu xoay quanh "học - hỏi - thi - kết quả N3".

---

## Tình huống 1 — Phòng nghỉ · 12:30, Phong xin Sato kiểm tra bài viết 作文

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>昼休<rt>ひるやす</rt></ruby>みに<ruby>失礼<rt>しつれい</rt></ruby>します。N3の<ruby>作文<rt>さくぶん</rt></ruby>を<ruby>書<rt>か</rt></ruby>いたので、<ruby>見<rt>み</rt></ruby>ていただけませんか?<br>*(Anh Sato, em xin lỗi giờ nghỉ trưa. Em viết bài luận N3, anh xem giúp em được không?)* |
| Sato | いいよ。テーマは?<br>*(Được. Đề là gì?)* |
| Phong | 「<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>てびっくりしたこと」です。<br>*(「Điều ngạc nhiên khi đến Nhật」.)* |
| Sato | (<ruby>読<rt>よ</rt></ruby>む)…<ruby>内容<rt>ないよう</rt></ruby>はいいね。でもここ、「<ruby>電車<rt>でんしゃ</rt></ruby>が<ruby>時間<rt>じかん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る」より「<ruby>時間<rt>じかん</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>来<rt>く</rt></ruby>る」のほうが<ruby>自然<rt>しぜん</rt></ruby>だよ。<br>*(Đọc… nội dung tốt. Nhưng đây, "tàu giữ thời gian" thì "đến đúng giờ" tự nhiên hơn.)* |
| Phong | あ、そうですね。<ruby>直訳<rt>ちょくやく</rt></ruby>になっていました。<br>*(À đúng nhỉ. Em dịch sát quá.)* |
| Sato | それから「<ruby>とても<rt>とても</rt></ruby><ruby>びっくり<rt>びっくり</rt></ruby>した」より、<ruby>動詞<rt>どうし</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>を「<ruby>驚<rt>おどろ</rt></ruby>いた」と<ruby>漢語<rt>かんご</rt></ruby>にするとN3っぽい。<br>*(Và thay "tottemo bikkuri shita" bằng "odoroita" với Hán ngữ thì giống N3 hơn.)* |
| Phong | なるほど。<ruby>漢語<rt>かんご</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うとレベル<ruby>感<rt>かん</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がるんですね。<br>*(À ra vậy. Dùng Hán ngữ thì cảm giác trình độ lên nhỉ.)* |
| Sato | そう。N3以<ruby>上<rt>じょう</rt></ruby>はそういうのが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Đúng. Từ N3 trở lên, điều đó quan trọng.)* |

---

## Tình huống 2 — Khu lift · 14:00, Phong hỏi Carlos chiến lược 聴解

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、N3に<ruby>合格<rt>ごうかく</rt></ruby>したとき、<ruby>聴解<rt>ちょうかい</rt></ruby>はどう<ruby>勉強<rt>べんきょう</rt></ruby>しましたか?<br>*(Anh Carlos, khi anh đậu N3, anh học nghe thế nào?)* |
| Carlos | おれは<ruby>毎晩<rt>まいばん</rt></ruby>YouTubeで<ruby>三十分<rt>さんじゅっぷん</rt></ruby><ruby>日本<rt>にほん</rt></ruby>のニュースを<ruby>聞<rt>き</rt></ruby>いた。<ruby>字幕<rt>じまく</rt></ruby>なし。<br>*(Anh mỗi tối nghe YouTube tin tức Nhật 30 phút. Không phụ đề.)* |
| Phong | <ruby>分<rt>わ</rt></ruby>からないところはどうしましたか?<br>*(Chỗ không hiểu thì làm sao?)* |
| Carlos | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>三割<rt>さんわり</rt></ruby>しか<ruby>分<rt>わ</rt></ruby>からなかった。でも<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>くと<ruby>耳<rt>みみ</rt></ruby>が<ruby>慣<rt>な</rt></ruby>れる。<ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>で<ruby>七割<rt>ななわり</rt></ruby>になった。<br>*(Đầu hiểu 30% thôi. Nhưng nghe mỗi ngày, tai quen. 3 tháng lên 70%.)* |
| Phong | <ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>慣<rt>な</rt></ruby>れが<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(Nghe quan trọng là quen nhỉ.)* |
| Carlos | そう。それと、<ruby>整備<rt>せいび</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>でみんなの<ruby>会話<rt>かいわ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>くだけでも<ruby>練習<rt>れんしゅう</rt></ruby>になる。<br>*(Đúng. Và chỉ cần nghe mọi người nói chuyện trong xưởng cũng là luyện tập.)* |
| Phong | <ruby>確<rt>たし</rt></ruby>かに、<ruby>普段<rt>ふだん</rt></ruby>の<ruby>会話<rt>かいわ</rt></ruby>のスピードに<ruby>慣<rt>な</rt></ruby>れます。<br>*(Đúng thật, quen với tốc độ nói thường ngày.)* |

---

## Tình huống 3 — Phòng ký túc · 22:00, gọi LINE sensei Suzuki hỏi 文法 ~ように

*Suzuki bật webcam ở Hà Nội (đang dạy tiếng Nhật cho TTS chuẩn bị sang).*

| Vai | Lời thoại |
|---|---|
| Suzuki | フォンくん、こんばんは。<ruby>今日<rt>きょう</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きたい?<br>*(Phong, chào buổi tối. Hôm nay em muốn hỏi gì?)* |
| Phong | 「~ように」と「~ために」の<ruby>違<rt>ちが</rt></ruby>いがまだよくわかりません。<br>*(Em vẫn chưa hiểu khác nhau "~you ni" và "~tame ni".)* |
| Suzuki | じゃあ<ruby>例文<rt>れいぶん</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>するね。「N3に<ruby>合格<rt>ごうかく</rt></ruby>するために<ruby>勉強<rt>べんきょう</rt></ruby>する」「N3に<ruby>合格<rt>ごうかく</rt></ruby>できるように<ruby>勉強<rt>べんきょう</rt></ruby>する」。<br>*(Cô giải thích qua ví dụ. "Để đậu N3 nên học" / "Học sao cho có thể đậu N3".)* |
| Phong | <ruby>違<rt>ちが</rt></ruby>いがちょっと<ruby>分<rt>わ</rt></ruby>かりにくいです。<br>*(Khác nhau hơi khó hiểu.)* |
| Suzuki | 「<ruby>ために<rt>ために</rt></ruby>」は<ruby>意志<rt>いし</rt></ruby><ruby>動詞<rt>どうし</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>でできる<ruby>動作<rt>どうさ</rt></ruby>と<ruby>使<rt>つか</rt></ruby>う。「<ruby>ように<rt>ように</rt></ruby>」は<ruby>可能<rt>かのう</rt></ruby><ruby>動詞<rt>どうし</rt></ruby>や<ruby>無意志<rt>むいし</rt></ruby><ruby>動詞<rt>どうし</rt></ruby>と<ruby>使<rt>つか</rt></ruby>うんだ。<br>*("Tame ni" dùng với động từ có ý chí, tự mình làm được. "You ni" dùng với động từ khả năng hoặc không ý chí.)* |
| Phong | あ、「<ruby>合格<rt>ごうかく</rt></ruby>する」は<ruby>結果<rt>けっか</rt></ruby>だから<ruby>意志<rt>いし</rt></ruby>じゃないですね。だから「<ruby>合格<rt>ごうかく</rt></ruby>できるように」が<ruby>正<rt>ただ</rt></ruby>しい。<br>*(À, "đậu" là kết quả, không phải ý chí. Vậy "goukaku dekiru you ni" mới đúng.)* |
| Suzuki | <ruby>正解<rt>せいかい</rt></ruby>!でも「<ruby>合格<rt>ごうかく</rt></ruby>するために<ruby>勉強<rt>べんきょう</rt></ruby>する」もOKだよ。<ruby>合格<rt>ごうかく</rt></ruby>は<ruby>結果<rt>けっか</rt></ruby>でも、<ruby>勉強<rt>べんきょう</rt></ruby>は<ruby>意志<rt>いし</rt></ruby>だから。<br>*(Đúng rồi! Nhưng "goukaku suru tame ni benkyou suru" cũng OK. Đậu là kết quả nhưng học là ý chí.)* |
| Phong | <ruby>難<rt>むずか</rt></ruby>しい…でも<ruby>例文<rt>れいぶん</rt></ruby>を<ruby>暗記<rt>あんき</rt></ruby>します。<br>*(Khó… nhưng em sẽ học thuộc câu mẫu.)* |

---

## Tình huống 4 — Quầy lễ tân · 9:30, Phong tận dụng giao khách để luyện keigo

*Khách bà Mori đến đón xe đã sửa xong.*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>森<rt>もり</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。お<ruby>車<rt>くるま</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>ができております。<br>*(Bà Mori, em xin lỗi đã để bà đợi. Xe đã sẵn sàng rồi ạ.)* |
| Bà Mori | ありがとう。<ruby>請求書<rt>せいきゅうしょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてもらえる?<br>*(Cảm ơn. Cho tôi xem hoá đơn nhé?)* |
| Phong | こちらでございます。ご<ruby>確認<rt>かくにん</rt></ruby>くださいませ。<br>*(Đây ạ. Mời bà kiểm tra.)* |
| Bà Mori | 「ございます」って、<ruby>若<rt>わか</rt></ruby>いのに<ruby>丁寧<rt>ていねい</rt></ruby>ね。どこから?<br>*(Trẻ mà lễ phép "gozaimasu" nhỉ. Em quê đâu?)* |
| Phong | ベトナムです。<ruby>実習生<rt>じっしゅうせい</rt></ruby>として<ruby>来年<rt>らいねん</rt></ruby>で<ruby>二年<rt>にねん</rt></ruby>になります。<br>*(Việt Nam ạ. Em là thực tập sinh, sang năm là 2 năm.)* |
| Bà Mori | あら、<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>ね。<br>*(Ồ, tiếng Nhật giỏi nhỉ.)* |
| Phong | ありがとうございます。まだまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。<ruby>来月<rt>らいげつ</rt></ruby>N3を<ruby>受<rt>う</rt></ruby>ける<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em cảm ơn ạ. Em vẫn đang học. Tháng sau em dự định thi N3 ạ.)* |
| Bà Mori | <ruby>頑張<rt>がんば</rt></ruby>って!<ruby>応援<rt>おうえん</rt></ruby>しているよ。<br>*(Cố lên! Tôi ủng hộ em.)* |
| Phong | ありがとうございます。<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Em cảm ơn. Lời bà là động lực ạ.)* |

---

## Tình huống 5 — Phòng nghỉ · 17:00, Phong bị stress kết quả mô phỏng

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>がよくないんです。<ruby>文法<rt>ぶんぽう</rt></ruby>は<ruby>七割<rt>ななわり</rt></ruby>ですが、<ruby>読解<rt>どっかい</rt></ruby>は<ruby>五割<rt>ごわり</rt></ruby>しか<ruby>取<rt>と</rt></ruby>れません。<br>*(Anh Sato, kết quả thi thử không tốt. Ngữ pháp 70% nhưng đọc hiểu chỉ 50%.)* |
| Sato | <ruby>読解<rt>どっかい</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby><ruby>切<rt>ぎ</rt></ruby>れ?それとも<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からない?<br>*(Đọc hiểu là hết giờ? Hay không hiểu nghĩa?)* |
| Phong | <ruby>両方<rt>りょうほう</rt></ruby>です。<ruby>長文<rt>ちょうぶん</rt></ruby>になると<ruby>集中力<rt>しゅうちゅうりょく</rt></ruby>が<ruby>切<rt>き</rt></ruby>れて…<br>*(Cả hai. Văn dài thì mất tập trung…)* |
| Sato | コツがあるよ。<ruby>本文<rt>ほんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>前<rt>まえ</rt></ruby>に<ruby>質問<rt>しつもん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>読<rt>よ</rt></ruby>む。<ruby>何<rt>なに</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれているか<ruby>分<rt>わ</rt></ruby>かれば、<ruby>本文<rt>ほんぶん</rt></ruby>から<ruby>答<rt>こた</rt></ruby>えを<ruby>探<rt>さが</rt></ruby>すだけ。<br>*(Có bí kíp. Đọc câu hỏi trước khi đọc bài. Biết hỏi gì rồi thì chỉ tìm đáp án trong bài.)* |
| Phong | あ、それいいですね。<br>*(À, hay đấy!)* |
| Sato | それから、<ruby>段落<rt>だんらく</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>と<ruby>最後<rt>さいご</rt></ruby>に<ruby>大事<rt>だいじ</rt></ruby>なことが<ruby>書<rt>か</rt></ruby>いてある。<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>は<ruby>例<rt>れい</rt></ruby>。<br>*(Và đầu/cuối đoạn thường có ý chính. Giữa là ví dụ.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか?やってみます。ありがとうございます。<br>*(Thật ạ? Em sẽ thử. Em cảm ơn anh.)* |

---

## Tình huống 6 — Văn phòng · 8:30, Phong xin 工場長 đổi ca thi N3

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Trưởng xưởng, em có việc xin nhờ ạ.)* |
| Tanaka | どうした?<br>*(Sao vậy?)* |
| Phong | <ruby>十二月<rt>じゅうにがつ</rt></ruby><ruby>六日<rt>むいか</rt></ruby>、<ruby>日曜日<rt>にちようび</rt></ruby>にN3<ruby>試験<rt>しけん</rt></ruby>があります。<ruby>前日<rt>ぜんじつ</rt></ruby>の<ruby>土曜日<rt>どようび</rt></ruby>、<ruby>休<rt>やす</rt></ruby>ませていただけませんか?<br>*(6/12, chủ nhật là thi N3. Hôm trước thứ Bảy, em xin nghỉ được không ạ?)* |
| Tanaka | もちろんいいよ。<ruby>受験<rt>じゅけん</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>はどこ?<br>*(Tất nhiên được. Hội đồng thi ở đâu?)* |
| Phong | <ruby>名古屋大学<rt>なごやだいがく</rt></ruby>です。<br>*(Đại học Nagoya ạ.)* |
| Tanaka | <ruby>遠<rt>とお</rt></ruby>いね。<ruby>前日<rt>ぜんじつ</rt></ruby>は<ruby>下見<rt>したみ</rt></ruby>に<ruby>行<rt>い</rt></ruby>くといい。<ruby>当日<rt>とうじつ</rt></ruby><ruby>迷<rt>まよ</rt></ruby>うと<ruby>困<rt>こま</rt></ruby>るからね。<br>*(Xa nhỉ. Hôm trước nên đi xem trước. Hôm thi lạc đường thì khổ.)* |
| Phong | はい、そうします。あの…<ruby>受験<rt>じゅけん</rt></ruby>のあと、<ruby>結果<rt>けっか</rt></ruby>が<ruby>二月<rt>にがつ</rt></ruby>に<ruby>出<rt>で</rt></ruby>るんですが…<br>*(Vâng, em sẽ làm vậy. Dạ… sau khi thi, kết quả ra tháng 2 ạ…)* |
| Tanaka | <ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう。おれが<ruby>奢<rt>おご</rt></ruby>る。<br>*(Đậu là đi nhậu. Anh khao.)* |
| Phong | ありがとうございます!<br>*(Em cảm ơn ạ!)* |

---

## Tình huống 7 — Ga Nagoya · ngày 5/12 buổi chiều, Phong đi 下見 trước thi

| Vai | Lời thoại |
|---|---|
| Phong (hỏi đường) | すみません、<ruby>名古屋大学<rt>なごやだいがく</rt></ruby><ruby>本部<rt>ほんぶ</rt></ruby>キャンパスへの<ruby>行<rt>い</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか?<br>*(Em xin lỗi, đường đến khuôn viên chính ĐH Nagoya ạ?)* |
| Nhân viên ga | <ruby>地下鉄<rt>ちかてつ</rt></ruby><ruby>名城線<rt>めいじょうせん</rt></ruby>に<ruby>乗<rt>の</rt></ruby>って、「<ruby>名古屋大学<rt>なごやだいがく</rt></ruby>」<ruby>駅<rt>えき</rt></ruby>で<ruby>降<rt>お</rt></ruby>りればいいですよ。<br>*(Đi tàu điện ngầm tuyến Meijou, xuống ga "Nagoya Daigaku" là được.)* |
| Phong | <ruby>何分<rt>なんぷん</rt></ruby>くらいかかりますか?<br>*(Mất bao nhiêu phút?)* |
| Nhân viên ga | <ruby>名古屋駅<rt>なごやえき</rt></ruby>からだと<ruby>約<rt>やく</rt></ruby><ruby>二十分<rt>にじゅっぷん</rt></ruby>です。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>二百七十円<rt>にひゃくななじゅうえん</rt></ruby>。<br>*(Từ ga Nagoya khoảng 20 phút. Phí 270 yên.)* |
| Phong | ありがとうございます。<ruby>明日<rt>あした</rt></ruby><ruby>試験<rt>しけん</rt></ruby>なので<ruby>下見<rt>したみ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きます。<br>*(Em cảm ơn. Mai có thi nên hôm nay em đi xem trước.)* |
| Nhân viên ga | あ、JLPTですか?<ruby>頑張<rt>がんば</rt></ruby>って!<br>*(À, JLPT à? Cố lên!)* |
| Phong | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em sẽ cố!)* |

---

## Tình huống 8 — Trước cổng phòng thi · 9:30 ngày 6/12, gặp các thí sinh khác

| Vai | Lời thoại |
|---|---|
| Thí sinh khác (Trung Quốc) | あの、すみません。N3の<ruby>会場<rt>かいじょう</rt></ruby>はここですよね?<br>*(Em xin lỗi. Hội đồng N3 ở đây phải không?)* |
| Phong | はい、ここです。<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>は?<br>*(Vâng, ở đây. Số báo danh là gì?)* |
| Thí sinh khác | A301<ruby>番<rt>ばん</rt></ruby>です。<br>*(A301.)* |
| Phong | おれはA305。<ruby>同<rt>おな</rt></ruby>じ<ruby>教室<rt>きょうしつ</rt></ruby>ですね。<br>*(Anh A305. Cùng phòng nhỉ.)* |
| Thí sinh khác | よかった。<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(May quá. Em hồi hộp.)* |
| Phong | おれもです。でも、<ruby>準備<rt>じゅんび</rt></ruby>はしました。あとは<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>解<rt>と</rt></ruby>くだけ。<br>*(Anh cũng vậy. Nhưng chuẩn bị rồi. Còn lại bình tĩnh làm bài thôi.)* |
| Thí sinh khác | そうですね。<ruby>頑張<rt>がんば</rt></ruby>りましょう!<br>*(Đúng ạ. Cùng cố gắng!)* |
| Phong | はい、<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Vâng, cùng cố gắng.)* |

---

## Tình huống 9 — Phòng thi · 10:30, giám thị hướng dẫn 言語知識

| Vai | Lời thoại |
|---|---|
| Giám thị | これから「<ruby>言語知識<rt>げんごちしき</rt></ruby>(<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby>)」の<ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>時間<rt>じかん</rt></ruby>は<ruby>三十分<rt>さんじゅっぷん</rt></ruby>です。<br>*(Bắt đầu thi "kiến thức ngôn ngữ" (chữ - từ vựng). Thời gian 30 phút.)* |
| Phong | (うなずく)<br>*(gật đầu)* |
| Giám thị | <ruby>解答用紙<rt>かいとうようし</rt></ruby>と<ruby>問題用紙<rt>もんだいようし</rt></ruby>の<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>と<ruby>名前<rt>なまえ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Kiểm tra số báo danh, tên trên phiếu trả lời và đề thi.)* |
| Phong (tự kiểm tra) | A305、グエン・ヴァン・フォン…<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(A305, Phan Văn Phong… ổn.)* |
| Giám thị | <ruby>携帯電話<rt>けいたいでんわ</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>ってください。<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>には<ruby>鉛筆<rt>えんぴつ</rt></ruby>と<ruby>消<rt>け</rt></ruby>しゴムと<ruby>受験票<rt>じゅけんひょう</rt></ruby>だけ。<br>*(Tắt điện thoại. Trên bàn chỉ để bút chì, gôm, phiếu dự thi.)* |
| Phong (tự kiểm tra) | OK、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(OK, ổn.)* |
| Giám thị | では、<ruby>始<rt>はじ</rt></ruby>め!<br>*(Vậy, bắt đầu!)* |

---

## Tình huống 10 — Sảnh hội trường · 15:30, hết giờ thi, gặp lại thí sinh kia

| Vai | Lời thoại |
|---|---|
| Thí sinh khác | お<ruby>疲<rt>つか</rt></ruby>れさまでした!どうでしたか?<br>*(Vất vả rồi! Thế nào?)* |
| Phong | <ruby>文法<rt>ぶんぽう</rt></ruby>と<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>大体<rt>だいたい</rt></ruby>できたと<ruby>思<rt>おも</rt></ruby>います。<ruby>読解<rt>どっかい</rt></ruby>はちょっと<ruby>不安<rt>ふあん</rt></ruby>。<br>*(Ngữ pháp với nghe đại khái làm được. Đọc hiểu hơi lo.)* |
| Thí sinh khác | おれも<ruby>読解<rt>どっかい</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しかった。<ruby>最後<rt>さいご</rt></ruby>の<ruby>長文<rt>ちょうぶん</rt></ruby>、<ruby>時間<rt>じかん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りなかった。<br>*(Anh cũng thấy đọc khó. Bài dài cuối, không đủ thời gian.)* |
| Phong | <ruby>同<rt>おな</rt></ruby>じです!<ruby>結果<rt>けっか</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>二月<rt>にがつ</rt></ruby>ですよね?<br>*(Cùng cảnh ngộ! Kết quả tháng 2 năm sau phải không?)* |
| Thí sinh khác | はい、<ruby>二月<rt>にがつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めくらい。<ruby>長<rt>なが</rt></ruby>く<ruby>待<rt>ま</rt></ruby>ちますね。<br>*(Vâng, đầu tháng 2. Đợi lâu nhỉ.)* |
| Phong | LINE<ruby>交換<rt>こうかん</rt></ruby>しませんか?<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら<ruby>報告<rt>ほうこく</rt></ruby>し<ruby>合<rt>あ</rt></ruby>いましょう。<br>*(Đổi LINE nhé? Có kết quả thì báo cho nhau.)* |
| Thí sinh khác | いいですね。QRを<ruby>読<rt>よ</rt></ruby>みます。<br>*(Hay đó. Em quét QR.)* |

---

## Tình huống 11 — Phòng nghỉ garage · 12:00 ngày 5/2/2027, Phong nhận kết quả N3

*Phong vừa xem kết quả online. Sato và Tanaka đứng quanh.*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>工場長<rt>こうじょうちょう</rt></ruby>、ご<ruby>報告<rt>ほうこく</rt></ruby>します。N3、<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Anh Sato, trưởng xưởng, em xin báo cáo. N3, em đậu rồi!)* |
| Sato | おお、やったな!<br>*(Ô, được rồi!)* |
| Tanaka | おめでとう!<ruby>点数<rt>てんすう</rt></ruby>は?<br>*(Chúc mừng! Điểm số?)* |
| Phong | <ruby>言語知識<rt>げんごちしき</rt></ruby><ruby>四十点<rt>よんじゅってん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby><ruby>三十二点<rt>さんじゅうにてん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>四十五点<rt>よんじゅうごてん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>百十七点<rt>ひゃくじゅうななてん</rt></ruby>です。<br>*(Kiến thức ngôn ngữ 40, đọc 32, nghe 45. Tổng 117.)* |
| Sato | <ruby>合格点<rt>ごうかくてん</rt></ruby>は<ruby>九十五点<rt>きゅうじゅうごてん</rt></ruby>。<ruby>余裕<rt>よゆう</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>だ。<br>*(Điểm đậu là 95. Đậu dư dả.)* |
| Tanaka | <ruby>約束<rt>やくそく</rt></ruby><ruby>通<rt>どお</rt></ruby>り、<ruby>金曜日<rt>きんようび</rt></ruby><ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>こう。トゥアンくんも<ruby>連<rt>つ</rt></ruby>れてきていいぞ。<br>*(Theo lời hứa, thứ Sáu đi nhậu. Đưa cả Quân theo cũng được.)* |
| Phong | ありがとうございます!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Em cảm ơn ạ! Em vui thật sự.)* |
| Sato | <ruby>次<rt>つぎ</rt></ruby>はN2か?<br>*(Tiếp theo N2 hả?)* |
| Phong | はい、<ruby>三年目<rt>さんねんめ</rt></ruby>はN2を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Vâng, năm 3 em sẽ nhắm N2.)* |

---

## Tình huống 12 — Phòng ký túc · 18:30 cùng ngày, kohai Tuấn chúc mừng

| Vai | Lời thoại |
|---|---|
| Quân | フォンさん!<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます!<br>*(Anh Phong! Chúc mừng anh đậu!)* |
| Phong | ありがとう。トゥアンくんもN4を<ruby>目指<rt>めざ</rt></ruby>そうな。<br>*(Cảm ơn em. Quân cũng nhắm N4 nhé.)* |
| Quân | はい、<ruby>来年<rt>らいねん</rt></ruby><ruby>七月<rt>しちがつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けたいです。<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Vâng, em muốn thi tháng 7 năm sau. Anh dạy em được không?)* |
| Phong | もちろん。<ruby>俺<rt>おれ</rt></ruby>のN4<ruby>教科書<rt>きょうかしょ</rt></ruby>、<ruby>貸<rt>か</rt></ruby>すよ。あとノートも<ruby>見<rt>み</rt></ruby>せる。<br>*(Tất nhiên. Anh cho mượn giáo trình N4 của anh. Cả sổ ghi chú.)* |
| Quân | ありがとうございます!<br>*(Em cảm ơn anh!)* |
| Phong | <ruby>勉強<rt>べんきょう</rt></ruby>のコツは<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ。<ruby>一気<rt>いっき</rt></ruby>にやるより、<ruby>三十分<rt>さんじゅっぷん</rt></ruby>でも<ruby>毎日<rt>まいにち</rt></ruby>。<br>*(Bí kíp là mỗi ngày một chút. Hơn là cày cuốc một lần, mỗi ngày 30 phút thôi.)* |
| Quân | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>明日<rt>あした</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em hiểu rồi. Mai em bắt đầu.)* |

---

## Tình huống 13 — Phòng ký túc, ban công · 21:00 — Gọi video về mẹ ở Hải Phòng

> Cảnh tiếng Việt — Phong gọi video mẹ và bố Phong cùng anh trai Tuấn.

| Vai | Lời thoại |
|---|---|
| Mẹ Phong | Phong à! Anh Tuấn cũng đây, vừa qua nhà chơi. Có kết quả N3 chưa con? |
| Phong | Đậu rồi mẹ! Điểm 117/180, đậu thoải mái. Mọi người ơi, con đậu rồi! |
| Bố Phong | Hoan hô! Vừa qua 三級整備士 mùa hè, giờ thêm N3. Năm thứ 2 đầy thành tích nhỉ. |
| Anh Tuấn | Em giỏi quá. Anh hồi xưa đi xuất khẩu Hàn Quốc 3 năm cũng có học tiếng nhưng không có bằng. |
| Phong | Anh ơi, ở Nhật bằng N3 là quan trọng lắm. Có N3 mới được xét chuyển 特定技能 (SSW). Năm 3 con sẽ thi N2, rồi xét chuyển lên visa kỹ năng đặc định để ở thêm 5 năm. |
| Mẹ Phong | Trời, ở thêm 5 năm lận? Mẹ nhớ con quá rồi. |
| Phong | Mẹ ơi, lương 特定技能 cao hơn nhiều. Con tính kiếm thêm để về mở garage với Đạt. Anh Tuấn còn nhớ Đạt bạn cấp 3 con không? |
| Anh Tuấn | Nhớ. Thằng đó học cơ khí. Hai đứa mà mở chung garage thì hay đấy. |
| Bố Phong | Bố ủng hộ con. Học hành tới đâu, lo công việc tới đó. |
| Phong | Vâng. À mẹ, hôm thứ Sáu trưởng xưởng khao con nhậu. Anh Sato sempai cũng đi. Con mời cả em Quân kohai. |
| Mẹ Phong | Trưởng xưởng tốt quá. Khi nào về Tết con nhớ mua quà cho ông ấy. |
| Phong | Vâng, con sẽ mua trà sen Hà Nội với rượu cần. |
| Anh Tuấn | Em ơi, làm sao mà em vừa đi làm vừa học mà không kiệt sức được vậy? |
| Phong | Khó lắm anh ạ. Có hôm về 6h tối, ăn cơm rồi 7h-10h học. Nhưng có mục tiêu rõ thì cố được. Mà trong xưởng cũng nghe tiếng Nhật suốt, một dạng luyện 聴解 luôn. |
| Bố Phong | Đáng tự hào. Thôi ngủ sớm đi con. |
| Phong | Vâng. Yêu cả nhà ạ. |

---

## Đọng lại chương

Mẫu câu ôn N3 nước rút:

- **「~を見ていただけませんか」** — nhờ sempai sửa bài
- **「~ように」/「~ために」** — phân biệt quan trọng N3
- **「漢語を使うとレベル感が上がる」** — chiến lược nâng trình
- **「読解は質問を先に読む」** — kỹ thuật làm 読解
- **「段落の最初と最後に大事なことが書いてある」** — đọc nhanh
- **「休ませていただけませんか」** — xin nghỉ keigo
- **「合格しました!」** — báo cáo kết quả đậu

Từ vựng: 文法・読解・聴解・語彙・文字・作文・模試・受験・合格点・段落・長文・字幕・暗記・例文・JLPT・受験票・解答用紙・問題用紙・電源.

> Từ vựng & mẫu câu chương này: N3・JLPT・受験・合格・合格点・点数・文法・読解・聴解・語彙・文字・作文・模試・段落・長文・例文・暗記・字幕・直訳・漢語・意志動詞・可能動詞・無意志動詞・受験番号・解答用紙・問題用紙・電源・特定技能・下見.

---

## Bí quyết chương

- **N3 = vé thông hành**: có N3 mới đủ điều kiện xét chuyển SSW (特定技能) — kohai phải biết sớm.
- Người Việt mạnh **語彙・文字** (nhờ Hán Việt), yếu **聴解・読解** — đầu tư thời gian không đều.
- **読解** dùng kỹ thuật "đọc câu hỏi trước" — tiết kiệm 30% thời gian.
- **聴解** không tăng nhanh bằng học công thức — phải nghe **mỗi ngày** từ 3 tháng trước.
- **文法 ~ように / ~ために**: ý chí ↔ vô ý chí — câu mẫu N3 hay test, nhớ qua ví dụ.
- Đi **下見** trước ngày thi — đến hội đồng xa khỏi lo lạc đường, giảm 緊張.
- Đậu rồi nhớ **báo cáo 工場長** + Sato giúp đỡ → văn hoá tri ân Nhật.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 作文 | さくぶん | TÁC VĂN | bài luận, văn viết |
| 内容 | ないよう | NỘI DUNG | nội dung |
| 直訳 | ちょくやく | TRỰC DỊCH | dịch sát từng chữ |
| 漢語 | かんご | HÁN NGỮ | từ Hán |
| 動詞 | どうし | ĐỘNG TỪ | động từ |
| 意志動詞 | いしどうし | Ý CHÍ ĐỘNG TỪ | động từ có ý chí |
| 可能動詞 | かのうどうし | KHẢ NĂNG ĐỘNG TỪ | động từ khả năng |
| 無意志動詞 | むいしどうし | VÔ Ý CHÍ ĐỘNG TỪ | động từ không ý chí |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 文字 | もじ | VĂN TỰ | chữ viết |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | kiến thức ngôn ngữ |
| 模試 | もし | MÔ THÍ | thi thử |
| 段落 | だんらく | ĐOẠN LẠC | đoạn văn |
| 長文 | ちょうぶん | TRƯỜNG VĂN | văn dài |
| 本文 | ほんぶん | BẢN VĂN | bài đọc |
| 例文 | れいぶん | LỆ VĂN | câu ví dụ |
| 暗記 | あんき | ÁM KÝ | học thuộc lòng |
| 字幕 | じまく | TỰ MẠC | phụ đề |
| 集中力 | しゅうちゅうりょく | TẬP TRUNG LỰC | sức tập trung |
| 時間切れ | じかんぎれ | THỜI GIAN — | hết giờ |
| 励み | はげみ | LỆ | động lực |
| 応援 | おうえん | ỨNG VIỆN | cổ vũ |
| 下見 | したみ | HẠ KIẾN | xem trước (địa điểm) |
| 試験 | しけん | THÍ NGHIỆM | kỳ thi |
| 試験会場 | しけんかいじょう | THÍ NGHIỆM HỘI TRƯỜNG | hội đồng thi |
| 受験 | じゅけん | THỤ NGHIỆM | dự thi |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | số báo danh |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | phiếu dự thi |
| 解答用紙 | かいとうようし | GIẢI ĐÁP DỤNG CHỈ | phiếu trả lời |
| 問題用紙 | もんだいようし | VẤN ĐỀ DỤNG CHỈ | giấy đề thi |
| 鉛筆 | えんぴつ | DIÊN BÚT | bút chì |
| 消しゴム | けしゴム | — | gôm tẩy |
| 携帯電話 | けいたいでんわ | HUỀ ĐỚI ĐIỆN THOẠI | điện thoại di động |
| 電源 | でんげん | ĐIỆN NGUYÊN | nguồn điện |
| 合格 | ごうかく | HỢP CÁCH | đậu |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | điểm đậu |
| 点数 | てんすう | ĐIỂM SỐ | số điểm |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 余裕 | よゆう | DƯ DỤ | dư dả |
| 緊張 | きんちょう | KHẨN TRƯƠNG | hồi hộp |
| 落ち着く | おちつく | LẠC TRƯỚC | bình tĩnh |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | visa kỹ năng đặc định (SSW) |
| 奢る | おごる | XA | khao, đãi |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000009, 800000044, NULL, 'markdown_book', 'T09. Chiến dịch Recall (リコール対応)', '# Sách thực tập sinh ô tô năm 2 · T09. Chiến dịch Recall (リコール対応)

> **Mục tiêu nhân vật:** Phong (23 tuổi, Hải Phòng, đầu năm 2027, ngành ô tô, N3). Học các mẫu hội thoại tiếng Nhật của thợ máy garage Toyota khi xử lý chiến dịch リコール: (1) hiểu thông báo メーカー gửi xuống, (2) gọi điện hẹn lịch khách, (3) giải thích lý do triệu hồi + miễn phí, (4) ghi nhận hành trình hồ sơ クレーム工事, (5) trấn an khách lo lắng, (6) báo cáo số lượng xe đã xử lý cho 工場長.

## Bối cảnh

Tháng 1 năm 2027, Aichi đang lạnh -2°C buổi sáng. Toyota mẹ vừa phát hành thông báo リコール cho dòng アクア năm 2019-2021 — lỗi cảm biến áp suất nhiên liệu (燃料圧力センサー) có thể gây chết máy đột ngột. Garage Phong nhận danh sách 87 xe phải triệu hồi trong vòng 2 tháng. Phong, sau gần 1 năm rưỡi ở Nhật, được 整備士長 Sato giao nhiệm vụ gọi điện khách hẹn lịch và phụ chính 部品交換 dưới sự giám sát của sempai Kobayashi. Đây là lần đầu Phong nói chuyện qua điện thoại nhiều như vậy bằng keigo. Chương này tập trung mẫu câu giải thích リコール bình tĩnh, lịch sự, và xử lý khi khách bực bội.

---

## Tình huống 1 — Phòng họp garage · 8:30, 工場長 phổ biến nội dung リコール

*(Buổi giao ban đầu giờ, ngoài cửa sổ tuyết mỏng. 工場長 cầm tờ thông báo メーカー dày 12 trang.)*

| Vai | Lời thoại |
|---|---|
| 工場長 | おはようございます。<ruby>今日<rt>きょう</rt></ruby>から「アクア」の<ruby>リコール<rt>りこーる</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。<ruby>対象<rt>たいしょう</rt></ruby><ruby>車<rt>しゃ</rt></ruby>は87<ruby>台<rt>だい</rt></ruby>。<br>*(Chào buổi sáng. Hôm nay bắt đầu công việc xử lý リコール dòng Aqua. Tổng cộng 87 xe.)* |
| Sato 整備士長 | <ruby>不具合<rt>ふぐあい</rt></ruby>は<ruby>燃料圧力<rt>ねんりょうあつりょく</rt></ruby>センサーです。<ruby>稀<rt>まれ</rt></ruby>に<ruby>誤作動<rt>ごさどう</rt></ruby>で<ruby>エンスト<rt>えんすと</rt></ruby>する<ruby>可能性<rt>かのうせい</rt></ruby>がある。<br>*(Lỗi nằm ở cảm biến áp suất nhiên liệu. Hiếm gặp nhưng có khả năng chết máy do hoạt động sai.)* |
| 工場長 | <ruby>部品<rt>ぶひん</rt></ruby>は<ruby>メーカー<rt>めーかー</rt></ruby>から<ruby>無償<rt>むしょう</rt></ruby><ruby>支給<rt>しきゅう</rt></ruby>。<ruby>作業時間<rt>さぎょうじかん</rt></ruby>は1<ruby>台<rt>だい</rt></ruby><ruby>約<rt>やく</rt></ruby>40<ruby>分<rt>ぷん</rt></ruby>。<br>*(Linh kiện do hãng cấp miễn phí. Thời gian làm khoảng 40 phút mỗi xe.)* |
| 工場長 | フォンくん、<ruby>電話<rt>でんわ</rt></ruby>での<ruby>予約<rt>よやく</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby>を<ruby>手伝<rt>てつだ</rt></ruby>ってもらえますか?<br>*(Phong, em phụ giúp nhận đặt lịch qua điện thoại được không?)* |
| Phong | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。けれども<ruby>敬語<rt>けいご</rt></ruby>がまだ<ruby>不安<rt>ふあん</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>で<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vâng, cháu sẽ cố. Nhưng keigo cháu vẫn chưa tự tin. Lúc đầu xin cho cháu nghe bên cạnh ạ.)* |
| Sato 整備士長 | わかった。<ruby>小林<rt>こばやし</rt></ruby>さんの<ruby>電話<rt>でんわ</rt></ruby>を3<ruby>本<rt>ぼん</rt></ruby><ruby>聞<rt>き</rt></ruby>いてから、<ruby>自分<rt>じぶん</rt></ruby>でやってみよう。<br>*(Hiểu rồi. Nghe Kobayashi gọi 3 cuộc, rồi tự làm thử nhé.)* |

---

## Tình huống 2 — Bàn điện thoại · 9:15, Phong nghe sempai Kobayashi gọi mẫu

*(Phong ngồi cạnh, cầm sổ ghi chép mẫu câu.)*

| Vai | Lời thoại |
|---|---|
| Kobayashi | (vào điện thoại) お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>豊田<rt>とよた</rt></ruby><ruby>自動車<rt>じどうしゃ</rt></ruby>サービス<ruby>愛知店<rt>あいちてん</rt></ruby>の<ruby>小林<rt>こばやし</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Cảm ơn quý khách đã chiếu cố. Tôi là Kobayashi từ trung tâm dịch vụ Toyota chi nhánh Aichi.)* |
| Kobayashi | お<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>「アクア」につきまして、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>ご<rt>ご</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>がございます。<br>*(Về xe Aqua của quý khách, hôm nay chúng tôi có thông báo quan trọng ạ.)* |
| Kobayashi | <ruby>燃料系統<rt>ねんりょうけいとう</rt></ruby>の<ruby>部品<rt>ぶひん</rt></ruby>に<ruby>不具合<rt>ふぐあい</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があり、<ruby>無償<rt>むしょう</rt></ruby>で<ruby>交換<rt>こうかん</rt></ruby>させていただきます。<br>*(Có khả năng linh kiện hệ thống nhiên liệu bị lỗi, chúng tôi xin được thay thế miễn phí.)* |
| Kobayashi | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>火曜日<rt>かようび</rt></ruby><ruby>午前中<rt>ごぜんちゅう</rt></ruby>はいかがでしょうか?<br>*(Sáng thứ Ba tuần sau có thuận tiện không ạ?)* |
| Kobayashi | かしこまりました。1<ruby>月<rt>がつ</rt></ruby>20<ruby>日<rt>にち</rt></ruby>、10<ruby>時<rt>じ</rt></ruby>に<ruby>承<rt>うけたまわ</rt></ruby>りました。<br>*(Tôi đã ghi nhận: 10 giờ ngày 20 tháng 1 ạ.)* |
| Phong | (thì thầm) 「<ruby>承<rt>うけたまわ</rt></ruby>りました」...メモします。<br>*(... "Đã ghi nhận"... cháu ghi lại.)* |

---

## Tình huống 3 — Bàn điện thoại · 10:00, Phong gọi điện đầu tiên, khách dễ tính

| Vai | Lời thoại |
|---|---|
| Phong | (hít thở) もしもし、<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>のお<ruby>電話<rt>でんわ</rt></ruby>でしょうか?<br>*(A lô, có phải số máy của ông Matsumoto không ạ?)* |
| Khách Matsumoto | はい、<ruby>松本<rt>まつもと</rt></ruby>です。<br>*(Vâng, Matsumoto đây.)* |
| Phong | お<ruby>世話<rt>せわ</rt></ruby>になっております。トヨタ<ruby>愛知<rt>あいち</rt></ruby><ruby>店<rt>てん</rt></ruby>の<ruby>整備士<rt>せいびし</rt></ruby>、<ruby>グエン<rt>ぐえん</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Cảm ơn quý khách đã chiếu cố. Tôi là Nguyễn, thợ máy tại Toyota chi nhánh Aichi.)* |
| Phong | <ruby>松本様<rt>まつもとさま</rt></ruby>のアクアにつきまして、<ruby>メーカー<rt>めーかー</rt></ruby>から<ruby>リコール<rt>りこーる</rt></ruby>の<ruby>通知<rt>つうち</rt></ruby>がございました。<br>*(Về xe Aqua của ngài, hãng đã có thông báo triệu hồi ạ.)* |
| Khách Matsumoto | あ、<ruby>葉書<rt>はがき</rt></ruby>が<ruby>来<rt>き</rt></ruby>てたね。<ruby>燃料<rt>ねんりょう</rt></ruby>のところでしょ?<br>*(À, bưu thiếp có gửi đến rồi. Là chỗ nhiên liệu phải không?)* |
| Phong | はい、おっしゃる<ruby>通<rt>とお</rt></ruby>りです。<ruby>無料<rt>むりょう</rt></ruby>で<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>交換<rt>こうかん</rt></ruby>させていただきます。<ruby>来週<rt>らいしゅう</rt></ruby>のご<ruby>都合<rt>つごう</rt></ruby>はいかがでしょうか?<br>*(Vâng, đúng như ngài nói. Chúng tôi sẽ thay miễn phí. Tuần sau ngài có lịch trống thế nào ạ?)* |
| Khách Matsumoto | <ruby>水曜日<rt>すいようび</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>でいい?<br>*(Chiều thứ Tư được không?)* |
| Phong | <ruby>水曜日<rt>すいようび</rt></ruby>...1<ruby>月<rt>がつ</rt></ruby>21<ruby>日<rt>にち</rt></ruby><ruby>午後<rt>ごご</rt></ruby>2<ruby>時<rt>じ</rt></ruby>、いかがですか?<br>*(Thứ Tư... 2 giờ chiều ngày 21 tháng 1 thế nào ạ?)* |
| Khách Matsumoto | OK、それで。<br>*(OK, giờ đó.)* |
| Phong | かしこまりました。1<ruby>月<rt>がつ</rt></ruby>21<ruby>日<rt>にち</rt></ruby><ruby>午後<rt>ごご</rt></ruby>2<ruby>時<rt>じ</rt></ruby>、<ruby>承<rt>うけたまわ</rt></ruby>りました。お<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Tôi đã ghi nhận: 2 giờ chiều 21/1. Chúng tôi xin đón ngài.)* |

---

## Tình huống 4 — Bàn điện thoại · 10:30, Phong gặp khách lo lắng

| Vai | Lời thoại |
|---|---|
| Khách Yoshida | え?<ruby>燃料<rt>ねんりょう</rt></ruby>の<ruby>不具合<rt>ふぐあい</rt></ruby>?<ruby>火<rt>ひ</rt></ruby>が<ruby>出<rt>で</rt></ruby>るの?<br>*(Hả? Lỗi nhiên liệu? Có cháy không?)* |
| Phong | (bình tĩnh) ご<ruby>心配<rt>しんぱい</rt></ruby>をおかけして<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>火災<rt>かさい</rt></ruby>の<ruby>恐<rt>おそ</rt></ruby>れはございません。<br>*(Xin lỗi đã làm ngài lo lắng. Không có nguy cơ cháy đâu ạ.)* |
| Phong | <ruby>稀<rt>まれ</rt></ruby>に<ruby>走行中<rt>そうこうちゅう</rt></ruby>に<ruby>エンジン<rt>えんじん</rt></ruby>が<ruby>止<rt>と</rt></ruby>まる<ruby>可能性<rt>かのうせい</rt></ruby>があるため、<ruby>予防<rt>よぼう</rt></ruby>のため<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>交換<rt>こうかん</rt></ruby>いたします。<br>*(Hiếm gặp nhưng có khả năng động cơ ngừng giữa đường, nên để phòng ngừa chúng tôi thay linh kiện ạ.)* |
| Khách Yoshida | <ruby>子供<rt>こども</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby><ruby>送迎<rt>そうげい</rt></ruby>してるんだよ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<br>*(Tôi đưa đón con mỗi ngày đấy. Có sao không?)* |
| Phong | <ruby>今<rt>いま</rt></ruby>すぐ<ruby>危険<rt>きけん</rt></ruby>というわけではございませんが、できるだけ<ruby>早<rt>はや</rt></ruby>めに<ruby>交換<rt>こうかん</rt></ruby>をおすすめいたします。<br>*(Không phải nguy hiểm ngay lập tức, nhưng chúng tôi khuyên thay càng sớm càng tốt ạ.)* |
| Phong | <ruby>明日<rt>あした</rt></ruby>の<ruby>午前中<rt>ごぜんちゅう</rt></ruby>でもご<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。いかがでしょうか?<br>*(Sáng mai chúng tôi cũng có thể xử lý được. Ngài thấy thế nào ạ?)* |
| Khách Yoshida | じゃあ<ruby>明日<rt>あした</rt></ruby>9<ruby>時<rt>じ</rt></ruby>に<ruby>行<rt>い</rt></ruby>くわ。<br>*(Vậy mai 9 giờ tôi đến.)* |
| Phong | ありがとうございます。<ruby>代車<rt>だいしゃ</rt></ruby>もご<ruby>用意<rt>ようい</rt></ruby>できますので、<ruby>安心<rt>あんしん</rt></ruby>してお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Cảm ơn ngài. Chúng tôi có chuẩn bị xe thay thế, ngài cứ yên tâm đến ạ.)* |

---

## Tình huống 5 — Bàn điện thoại · 11:00, Phong gặp khách bực bội

| Vai | Lời thoại |
|---|---|
| Khách Hayashi | リコール?また?<ruby>仕事<rt>しごと</rt></ruby><ruby>休<rt>やす</rt></ruby>まないとダメ?<br>*(Triệu hồi à? Lại nữa? Có phải nghỉ làm không?)* |
| Phong | ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけして、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Thật xin lỗi đã làm phiền ngài.)* |
| Phong | <ruby>土曜日<rt>どようび</rt></ruby>も<ruby>営業<rt>えいぎょう</rt></ruby>しております。お<ruby>仕事<rt>しごと</rt></ruby>のお<ruby>休<rt>やす</rt></ruby>みに<ruby>合<rt>あ</rt></ruby>わせていただけます。<br>*(Chúng tôi cũng làm việc thứ Bảy ạ. Có thể sắp lịch theo ngày nghỉ của ngài.)* |
| Khách Hayashi | (giọng dịu lại) <ruby>土曜<rt>どよう</rt></ruby>ね...じゃあ<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>土曜日<rt>どようび</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>。<br>*(Thứ Bảy à... vậy sáng thứ Bảy tuần sau.)* |
| Phong | かしこまりました。<ruby>朝<rt>あさ</rt></ruby>9<ruby>時<rt>じ</rt></ruby>でよろしいですか? <ruby>作業時間<rt>さぎょうじかん</rt></ruby>は<ruby>約<rt>やく</rt></ruby>40<ruby>分<rt>ぷん</rt></ruby>です。<br>*(Vâng. 9 giờ sáng được không ạ? Thời gian làm khoảng 40 phút ạ.)* |
| Khách Hayashi | <ruby>40分<rt>よんじゅっぷん</rt></ruby>か。<ruby>早<rt>はや</rt></ruby>いね。OK。<br>*(40 phút à. Nhanh nhỉ. OK.)* |
| Phong | お<ruby>待<rt>ま</rt></ruby>たせいたしません<ruby>よう<rt>よう</rt></ruby><ruby>努<rt>つと</rt></ruby>めます。ありがとうございます。<br>*(Chúng tôi sẽ cố không để ngài chờ lâu. Cảm ơn ngài ạ.)* |

---

## Tình huống 6 — Bàn điện thoại · 11:45, Phong hỏi lại sempai khi không hiểu

*(Một khách dùng phương ngữ Aichi nói nhanh, Phong cúp máy rồi hỏi.)*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>小林<rt>こばやし</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>、「<ruby>そんなん<rt>そんなん</rt></ruby><ruby>知<rt>し</rt></ruby>らんがね」って...どういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Anh Kobayashi, khách vừa nãy nói "そんなん知らんがね"... nghĩa là gì ạ?)* |
| Kobayashi | (cười) <ruby>名古屋弁<rt>なごやべん</rt></ruby>だね。「<ruby>そんなこと知<rt>そんなことし</rt></ruby>らないよ」という<ruby>意味<rt>いみ</rt></ruby>。<br>*(Tiếng địa phương Nagoya đấy. Nghĩa là "tôi không biết chuyện đó".)* |
| Phong | じゃあ、お<ruby>客様<rt>きゃくさま</rt></ruby>は<ruby>葉書<rt>はがき</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていないんですね。<br>*(Vậy tức là khách chưa xem bưu thiếp đúng không ạ.)* |
| Kobayashi | そうそう。<ruby>方言<rt>ほうげん</rt></ruby>でも<ruby>慌<rt>あわ</rt></ruby>てず、<ruby>標準語<rt>ひょうじゅんご</rt></ruby>でゆっくり<ruby>説明<rt>せつめい</rt></ruby>すればいい。<br>*(Đúng vậy. Dù khách dùng phương ngữ thì đừng cuống, mình cứ dùng tiếng chuẩn giải thích chậm là được.)* |
| Phong | わかりました。もう<ruby>一度<rt>いちど</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>してみます。<br>*(Cháu hiểu rồi. Cháu thử gọi lại lần nữa.)* |

---

## Tình huống 7 — Lift số 3 · 13:30, Phong phụ Kobayashi thay cảm biến xe đầu tiên

*(Aqua màu trắng đã lên lift, capo mở.)*

| Vai | Lời thoại |
|---|---|
| Kobayashi | フォン、<ruby>燃料圧力<rt>ねんりょうあつりょく</rt></ruby>センサーはここ。<ruby>場所<rt>ばしょ</rt></ruby>わかる?<br>*(Phong, cảm biến áp suất nhiên liệu ở đây. Biết vị trí không?)* |
| Phong | <ruby>燃料<rt>ねんりょう</rt></ruby>レールの<ruby>横<rt>よこ</rt></ruby>ですね。<ruby>10ミリ<rt>じゅうみり</rt></ruby>の<ruby>ボルト<rt>ぼると</rt></ruby>で<ruby>固定<rt>こてい</rt></ruby>されています。<br>*(Bên cạnh ống nhiên liệu rail. Cố định bằng bu lông 10 mm ạ.)* |
| Kobayashi | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>外<rt>はず</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>燃圧<rt>ねんあつ</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くこと。じゃないと<ruby>ガソリン<rt>がそりん</rt></ruby>が<ruby>噴<rt>ふ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>す。<br>*(Đúng. Trước khi tháo phải xả áp nhiên liệu. Nếu không xăng sẽ phun ra.)* |
| Phong | <ruby>燃圧<rt>ねんあつ</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>く<ruby>手順<rt>てじゅん</rt></ruby>...<ruby>燃料<rt>ねんりょう</rt></ruby>ポンプの<ruby>ヒューズ<rt>ひゅーず</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>いてエンジンを<ruby>掛<rt>か</rt></ruby>けて<ruby>止<rt>と</rt></ruby>まるまで<ruby>待<rt>ま</rt></ruby>つ、ですよね?<br>*(Quy trình xả áp... rút cầu chì bơm xăng, nổ máy, đợi máy tắt đúng không ạ?)* |
| Kobayashi | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>教科書<rt>きょうかしょ</rt></ruby>どおりだ。じゃあやってみて。<br>*(Hoàn hảo. Đúng sách giáo khoa. Vậy thử làm xem.)* |
| Phong | はい、やります。<br>*(Vâng, cháu làm ạ.)* |

---

## Tình huống 8 — Lift số 3 · 14:10, phát hiện ốc bị gỉ

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>小林<rt>こばやし</rt></ruby>さん、<ruby>ボルト<rt>ぼると</rt></ruby>が<ruby>固<rt>かた</rt></ruby>くて<ruby>外<rt>はず</rt></ruby>れません。<ruby>錆<rt>さび</rt></ruby>ていますね。<br>*(Anh Kobayashi, bu lông cứng quá tháo không ra. Bị gỉ ạ.)* |
| Kobayashi | <ruby>見<rt>み</rt></ruby>せて...あー、<ruby>潮風<rt>しおかぜ</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>かな。<ruby>浸透潤滑剤<rt>しんとうじゅんかつざい</rt></ruby>を<ruby>吹<rt>ふ</rt></ruby>いて5<ruby>分<rt>ふん</rt></ruby><ruby>待<rt>ま</rt></ruby>とう。<br>*(Cho xem... à, do gió biển chăng. Xịt dầu thẩm thấu rồi đợi 5 phút.)* |
| Phong | わかりました。<ruby>無理<rt>むり</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>すと<ruby>ナメ<rt>なめ</rt></ruby>ますもんね。<br>*(Cháu hiểu. Vặn ép quá sẽ làm chờn ren nhỉ.)* |
| Kobayashi | そう。<ruby>急<rt>いそ</rt></ruby>がば<ruby>回<rt>まわ</rt></ruby>れ。<ruby>リコール<rt>りこーる</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>でナメたら<ruby>大変<rt>たいへん</rt></ruby>だぞ。<br>*(Đúng. "Vội thì đi vòng". Trong việc リコール mà chờn ren thì gay đấy.)* |
| Phong | はい、<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>作業<rt>さぎょう</rt></ruby>します。<br>*(Vâng, cháu sẽ làm cẩn thận.)* |

---

## Tình huống 9 — Quầy lễ tân · 15:00, Phong giao xe ông Matsumoto sau khi hoàn thành

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>松本様<rt>まつもとさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<br>*(Ông Matsumoto, xin lỗi đã làm ngài chờ. Công việc đã hoàn thành ạ.)* |
| Khách Matsumoto | <ruby>早<rt>はや</rt></ruby>かったね。<ruby>何<rt>なに</rt></ruby>か<ruby>変<rt>か</rt></ruby>わるの?<br>*(Nhanh nhỉ. Có gì thay đổi không?)* |
| Phong | <ruby>運転<rt>うんてん</rt></ruby><ruby>感覚<rt>かんかく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わりません。<ruby>不具合<rt>ふぐあい</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>となる<ruby>古<rt>ふる</rt></ruby>い<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>新<rt>あたら</rt></ruby>しいものに<ruby>交換<rt>こうかん</rt></ruby>しただけです。<br>*(Cảm giác lái không đổi. Chỉ thay linh kiện cũ — nguyên nhân gây lỗi — bằng linh kiện mới ạ.)* |
| Phong | こちらが<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>です。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>してください。<br>*(Đây là hồ sơ công việc. Xin ngài bảo quản cẩn thận ạ.)* |
| Khách Matsumoto | ありがとう。あなた、<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>?<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>だね。<br>*(Cảm ơn. Em là người nước ngoài à? Tiếng Nhật giỏi đấy.)* |
| Phong | (mỉm cười) ありがとうございます。ベトナムから<ruby>来<rt>き</rt></ruby>ました。まだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>です。<br>*(Cảm ơn ngài. Cháu từ Việt Nam đến. Vẫn đang học ạ.)* |
| Khách Matsumoto | <ruby>頑張<rt>がんば</rt></ruby>ってね。また<ruby>来<rt>く</rt></ruby>るよ。<br>*(Cố lên nhé. Tôi sẽ quay lại.)* |

---

## Tình huống 10 — Lift số 3 · 16:00, lỗi nhỏ — đặt cảm biến ngược

| Vai | Lời thoại |
|---|---|
| Phong | あ...<ruby>小林<rt>こばやし</rt></ruby>さん、センサーの<ruby>向<rt>む</rt></ruby>き、<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(A... anh Kobayashi, hướng cảm biến có đúng không ạ?)* |
| Kobayashi | (nhìn) <ruby>逆<rt>ぎゃく</rt></ruby>だな。<ruby>矢印<rt>やじるし</rt></ruby>が<ruby>燃料<rt>ねんりょう</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れの<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>指<rt>さ</rt></ruby>すんだよ。<br>*(Ngược rồi. Mũi tên phải chỉ theo chiều dòng chảy nhiên liệu.)* |
| Phong | すみません。<ruby>気<rt>き</rt></ruby>づいてよかったです。やり<ruby>直<rt>なお</rt></ruby>します。<br>*(Xin lỗi. May là cháu phát hiện. Cháu làm lại ạ.)* |
| Kobayashi | <ruby>気<rt>き</rt></ruby>づくのが<ruby>大事<rt>だいじ</rt></ruby>。<ruby>本締<rt>ほんじ</rt></ruby>めする<ruby>前<rt>まえ</rt></ruby>でよかった。<ruby>仮締<rt>かりじ</rt></ruby>めで<ruby>確認<rt>かくにん</rt></ruby>する<ruby>習慣<rt>しゅうかん</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>だな。<br>*(Phát hiện là quan trọng. May là chưa siết chặt. Thói quen siết tạm rồi kiểm tra là quan trọng đấy.)* |
| Phong | はい、これからも<ruby>仮締<rt>かりじ</rt></ruby>めで<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, từ nay cháu cũng sẽ siết tạm để kiểm tra.)* |

---

## Tình huống 11 — Phòng họp · 17:30, báo cáo cuối ngày với 工場長

| Vai | Lời thoại |
|---|---|
| 工場長 | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>は?<br>*(Tiến độ hôm nay thế nào?)* |
| Sato 整備士長 | <ruby>本日<rt>ほんじつ</rt></ruby>は4<ruby>台<rt>だい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>予約<rt>よやく</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby>まで22<ruby>台<rt>だい</rt></ruby><ruby>埋<rt>う</rt></ruby>まっています。<br>*(Hôm nay xong 4 xe. Đến tuần sau đã đặt 22 xe.)* |
| 工場長 | フォンくん、<ruby>電話<rt>でんわ</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>はどうだった?<br>*(Phong, công việc nghe gọi điện thoại thế nào?)* |
| Phong | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>しました。<ruby>方言<rt>ほうげん</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>もいて<ruby>難<rt>むずか</rt></ruby>しかったです。<br>*(Lúc đầu cháu căng thẳng. Có khách dùng phương ngữ, khó ạ.)* |
| Phong | でも、<ruby>同<rt>おな</rt></ruby>じフレーズを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>すうちに<ruby>慣<rt>な</rt></ruby>れてきました。<ruby>今日<rt>きょう</rt></ruby>は12<ruby>件<rt>けん</rt></ruby><ruby>予約<rt>よやく</rt></ruby>を<ruby>取<rt>と</rt></ruby>れました。<br>*(Nhưng cứ lặp lại cùng cụm câu, cháu dần quen. Hôm nay cháu đặt được 12 lịch ạ.)* |
| 工場長 | よくやった。<ruby>電話<rt>でんわ</rt></ruby>の<ruby>敬語<rt>けいご</rt></ruby>は<ruby>整備士<rt>せいびし</rt></ruby>にも<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>力<rt>ちから</rt></ruby>だ。<br>*(Tốt lắm. Keigo qua điện thoại cũng là kỹ năng quan trọng với thợ máy.)* |
| Phong | ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn chú. Tuần sau cháu cũng cố ạ.)* |

---

## Tình huống 12 — Phòng nghỉ · 18:15, Phong và sempai Brazil — Carlos

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>電話<rt>でんわ</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ったね。<ruby>俺<rt>おれ</rt></ruby>は2<ruby>年目<rt>ねんめ</rt></ruby>でもまだ<ruby>怖<rt>こわ</rt></ruby>いよ。<br>*(Phong, điện thoại làm tốt đấy. Anh năm thứ 2 mà vẫn sợ.)* |
| Phong | カルロスさんも? でもカルロスさんの<ruby>日本語<rt>にほんご</rt></ruby>、ペラペラじゃないですか。<br>*(Anh Carlos cũng vậy à? Mà tiếng Nhật anh nói trôi chảy lắm mà.)* |
| Carlos | <ruby>会話<rt>かいわ</rt></ruby>はいい。<ruby>電話<rt>でんわ</rt></ruby>は<ruby>顔<rt>かお</rt></ruby>が<ruby>見<rt>み</rt></ruby>えないから<ruby>難<rt>むずか</rt></ruby>しい。<ruby>声<rt>こえ</rt></ruby>だけで<ruby>判断<rt>はんだん</rt></ruby>しないといけない。<br>*(Đối thoại thì ổn. Điện thoại không thấy mặt nên khó. Phải đoán qua giọng nói.)* |
| Phong | わかります。<ruby>怒<rt>おこ</rt></ruby>っているのか<ruby>困<rt>こま</rt></ruby>っているのか、<ruby>難<rt>むずか</rt></ruby>しいですね。<br>*(Cháu hiểu. Tức giận hay đang bối rối, khó phân biệt nhỉ.)* |
| Carlos | コツはね、<ruby>相手<rt>あいて</rt></ruby>のペースに<ruby>合<rt>あ</rt></ruby>わせること。<ruby>急<rt>いそ</rt></ruby>がしそうなら<ruby>早<rt>はや</rt></ruby>く、ゆっくりなら<ruby>こちらもゆっくり<rt>こちらもゆっくり</rt></ruby>。<br>*(Bí quyết là điều chỉnh theo nhịp đối phương. Họ vội thì mình nhanh, họ chậm thì mình cũng chậm.)* |
| Phong | なるほど。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Vậy à. Cháu học được rồi.)* |

---

## Tình huống 13 — Ký túc · 21:00, gọi điện về Hải Phòng

> Cảnh tiếng Việt — Phong gọi điện cho mẹ.

| Vai | Lời thoại |
|---|---|
| Phong | Mẹ ơi, hôm nay con làm thợ máy nhưng phải gọi điện cho 12 khách hàng đấy. |
| Mẹ | Sao thế con? Mày là thợ máy mà? |
| Phong | Toyota có chiến dịch リコール — gọi là "triệu hồi" — phải thay miễn phí một cái cảm biến. Có 87 xe phải gọi điện hẹn lịch nên ai cũng phụ. |
| Mẹ | Thế khách họ có chửi không? Nhà mình hồi sửa xe ở Hải Phòng có lần khách chửi mãi. |
| Phong | Có 1 chị bực bội nhưng con xin lỗi đúng kiểu Nhật — "誠に申し訳ございません" — rồi đề nghị làm thứ Bảy, chị ấy dịu lại liền mẹ ạ. |
| Mẹ | Ờ, người Nhật khác mình. Nó coi xin lỗi là chuyện thường. |
| Phong | Con học được mẫu "承りました" rồi mẹ ạ — nghĩa là "Tôi đã ghi nhận". Nghe sang lắm. |
| Mẹ | Sang gì, miễn là kiếm được lương thôi con. Tháng này gửi về được bao nhiêu? |
| Phong | Vẫn 15 man như tháng trước mẹ ạ. Tháng 3 thi 整備士 3級 xong nếu đỗ thì lương tăng đấy. |
| Mẹ | Ờ, học cho khá vào. Đừng cãi nhau với sempai. |
| Phong | Sempai Carlos người Brazil tốt lắm mẹ. Anh ấy dạy con cách nói điện thoại. |
| Mẹ | Người Brazil mà nói tiếng Nhật à? |
| Phong | Anh ấy ở Nhật 8 năm rồi mẹ. Nhật có nhiều người Brazil làm ở Toyota lắm. |
| Mẹ | Lạ nhỉ. Thôi ngủ sớm đi con, giữ sức khoẻ. |
| Phong | Vâng mẹ. Con yêu mẹ. |

---

## Đọng lại chương

**Mẫu câu keigo qua điện thoại** (phải thuộc lòng):
- **「お世話になっております」** — Mở đầu cuộc gọi
- **「〜と申します」** — Tự giới thiệu khiêm nhường
- **「〜につきまして」** — "Về vấn đề..."
- **「いかがでしょうか?」** — Đề nghị lịch sự
- **「かしこまりました」** — "Tôi hiểu rồi" (cao nhất)
- **「承りました」** — "Tôi đã ghi nhận"
- **「お待たせいたしました」** — "Xin lỗi đã để ngài chờ"
- **「ご迷惑をおかけして申し訳ございません」** — Xin lỗi formal
- **「〜させていただきます」** — "Xin được phép..."

> Từ vựng & mẫu câu chương này: リコール・燃料圧力センサー・無償交換・部品・予約・承る・かしこまる・代車・潮風・浸透潤滑剤・仮締め・本締め・矢印・進捗・方言・名古屋弁

## Bí quyết chương

- Khi khách bực bội, **xin lỗi trước, giải thích sau, đề xuất giải pháp** — đừng cãi.
- リコール = miễn phí 100%, đừng để khách hiểu lầm là phải trả tiền.
- Cảm biến có **mũi tên dòng chảy** — luôn kiểm tra hướng trước khi siết.
- **「仮締め」** (siết tạm) → kiểm tra → **「本締め」** (siết chặt) là quy tắc bất di bất dịch.
- **「急がば回れ」** (vội thì đi vòng) — câu thành ngữ Nhật, áp dụng cho ốc gỉ.
- Phương ngữ Nagoya (~弁) khác tiếng chuẩn — không hiểu thì hỏi sempai, đừng đoán.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| リコール | りこーる | — | Triệu hồi xe |
| 対象車 | たいしょうしゃ | ĐỐI TƯỢNG XA | Xe thuộc diện |
| 不具合 | ふぐあい | BẤT CỤ HỢP | Lỗi, sự cố |
| 燃料圧力センサー | ねんりょうあつりょくせんさー | NHIÊN LIỆU ÁP LỰC — | Cảm biến áp suất nhiên liệu |
| 誤作動 | ごさどう | NGỘ TÁC ĐỘNG | Hoạt động sai |
| エンスト | えんすと | — | Chết máy |
| 無償 | むしょう | VÔ THƯỜNG | Miễn phí |
| 支給 | しきゅう | CHI CẤP | Cấp phát |
| 部品 | ぶひん | BỘ PHẨM | Linh kiện |
| 交換 | こうかん | GIAO HOÁN | Thay thế |
| 予約 | よやく | DỰ ƯỚC | Đặt lịch |
| 受付 | うけつけ | THỤ PHÓ | Tiếp nhận |
| 敬語 | けいご | KÍNH NGỮ | Kính ngữ |
| 承る | うけたまわる | THỪA | Ghi nhận, tiếp nhận (khiêm) |
| かしこまりました | かしこまりました | — | Vâng đã hiểu (kính) |
| 通知 | つうち | THÔNG TRI | Thông báo |
| 葉書 | はがき | DIỆP THƯ | Bưu thiếp |
| 火災 | かさい | HOẢ TAI | Hoả hoạn |
| 走行中 | そうこうちゅう | TẨU HÀNH TRUNG | Đang chạy |
| 予防 | よぼう | DỰ PHÒNG | Phòng ngừa |
| 送迎 | そうげい | TỐNG NGHÊNH | Đưa đón |
| 代車 | だいしゃ | ĐẠI XA | Xe thay thế |
| 迷惑 | めいわく | MÊ HOẶC | Phiền hà |
| 営業 | えいぎょう | DOANH NGHIỆP | Hoạt động (cửa hàng) |
| 方言 | ほうげん | PHƯƠNG NGÔN | Phương ngữ |
| 名古屋弁 | なごやべん | DANH CỔ ỐC BIỆN | Giọng Nagoya |
| 標準語 | ひょうじゅんご | TIÊU CHUẨN NGỮ | Tiếng chuẩn |
| 燃料レール | ねんりょうれーる | NHIÊN LIỆU — | Đường ống rail nhiên liệu |
| 燃圧 | ねんあつ | NHIÊN ÁP | Áp suất nhiên liệu |
| ヒューズ | ひゅーず | — | Cầu chì |
| 潮風 | しおかぜ | TRIỀU PHONG | Gió biển |
| 浸透潤滑剤 | しんとうじゅんかつざい | THẨM THẤU NHUẬN HOẠT TỀ | Dầu thẩm thấu chống gỉ |
| ナメる | なめる | — | Bị chờn ren |
| 慎重 | しんちょう | THẬN TRỌNG | Cẩn thận |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 記録 | きろく | KÝ LỤC | Hồ sơ, ghi chép |
| 保管 | ほかん | BẢO QUẢN | Bảo quản |
| 矢印 | やじるし | THỈ ẤN | Mũi tên |
| 仮締め | かりじめ | GIẢ — | Siết tạm |
| 本締め | ほんじめ | BẢN — | Siết chặt |
| 進捗 | しんちょく | TIẾN BỘ | Tiến độ |
| 応対 | おうたい | ỨNG ĐỐI | Tiếp đối, ứng xử |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Căng thẳng |
| 繰り返す | くりかえす | — | Lặp lại |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000010, 800000044, NULL, 'markdown_book', 'T10. Lần đầu tiếp khách quen — báo giá xe Tanaka-san', '# Sách thực tập sinh ô tô năm 2 · T10. Lần đầu tiếp khách quen — báo giá xe Tanaka-san

> **Mục tiêu nhân vật:** Phong (23 tuổi, tháng 2/2027, ngành ô tô, N3). Học các mẫu hội thoại tiếng Nhật để: (1) chào đón khách hàng quen đến quầy, (2) lắng nghe yêu cầu sửa chữa, (3) giải thích từng mục trong 見積書 báo giá, (4) đề xuất tuỳ chọn rẻ/đắt, (5) thuyết phục bảo dưỡng phòng ngừa, (6) chốt lịch và tiễn khách lịch sự.

## Bối cảnh

Giữa tháng 2 năm 2027. Aichi vẫn rét -1°C nhưng nắng đẹp. Tanaka-san — khách quen của garage 5 năm, chủ tiệm sushi nhỏ tại Toyota City — vào kiểm tra định kỳ chiếc Toyota Voxy 2018. Hôm nay Sato 整備士長 đang bận xử lý リコール còn dở, giao cho Phong tự mình tiếp khách và giải thích báo giá lần đầu. Trước đây Phong chỉ phụ và đứng nghe. Lần này 工場長 dặn: "Cứ tự nhiên, nói không hiểu thì gọi anh". Chương tập trung mẫu câu báo giá, giải thích từ chuyên ngành cho người không phải dân kỹ thuật, và keigo đối khách quen.

---

## Tình huống 1 — Quầy lễ tân · 9:00, Tanaka-san bước vào

| Vai | Lời thoại |
|---|---|
| Phong | (đứng dậy, cúi đầu) いらっしゃいませ、<ruby>田中様<rt>たなかさま</rt></ruby>。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Kính chào ngài Tanaka. Cảm ơn ngài hôm nay đã đến ạ.)* |
| Tanaka | あ、フォンくんか。<ruby>佐藤<rt>さとう</rt></ruby>さんは?<br>*(À, Phong à. Anh Sato đâu?)* |
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>のリコール<ruby>作業中<rt>さぎょうちゅう</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>させていただきます。<br>*(Anh Sato đang làm công việc リコール khác ạ. Hôm nay cháu xin được phụ trách ạ.)* |
| Tanaka | おお、フォンくんがか。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>?<ruby>日本語<rt>にほんご</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいだろ?<br>*(Ồ, Phong à. Có ổn không? Tiếng Nhật khó nhỉ?)* |
| Phong | <ruby>難<rt>むずか</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>があったら<ruby>遠慮<rt>えんりょ</rt></ruby>なくお<ruby>聞<rt>き</rt></ruby>きください。<ruby>私<rt>わたし</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からないことは<ruby>佐藤<rt>さとう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Có từ khó xin ngài cứ hỏi ạ. Cháu cũng sẽ hỏi anh Sato nếu không hiểu.)* |
| Tanaka | (cười) <ruby>正直<rt>しょうじき</rt></ruby>で<ruby>偉<rt>えら</rt></ruby>い。じゃあ<ruby>始<rt>はじ</rt></ruby>めようか。<br>*(Thật thà giỏi đấy. Vậy bắt đầu nhé.)* |

---

## Tình huống 2 — Quầy lễ tân · 9:05, lắng nghe yêu cầu khách

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>定期点検<rt>ていきてんけん</rt></ruby>でよろしいでしょうか?<br>*(Hôm nay là bảo dưỡng định kỳ phải không ạ?)* |
| Tanaka | うん。それと<ruby>最近<rt>さいきん</rt></ruby>、ブレーキを<ruby>踏<rt>ふ</rt></ruby>むと「キーキー」って<ruby>音<rt>おと</rt></ruby>がするんだよね。<br>*(Ừ. Với cả gần đây đạp phanh có tiếng "ki-ki" ấy.)* |
| Phong | キーキー<ruby>音<rt>おと</rt></ruby>...<ruby>金属<rt>きんぞく</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>音<rt>おと</rt></ruby>ですか?<br>*(Tiếng ki-ki... tiếng kim loại à ạ?)* |
| Tanaka | そうそう。<ruby>朝<rt>あさ</rt></ruby><ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>くて、<ruby>走<rt>はし</rt></ruby>っていくと<ruby>消<rt>き</rt></ruby>える。<br>*(Đúng vậy. Sáng sớm mạnh nhất, chạy một lúc thì hết.)* |
| Phong | (ghi sổ) <ruby>承知<rt>しょうち</rt></ruby>しました。ブレーキパッドの<ruby>摩耗<rt>まもう</rt></ruby>かもしれません。<ruby>点検<rt>てんけん</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>いたします。<br>*(Tôi hiểu rồi ạ. Có thể má phanh đã mòn. Cháu sẽ kiểm tra ạ.)* |
| Tanaka | あと<ruby>来月<rt>らいげつ</rt></ruby><ruby>長野<rt>ながの</rt></ruby>に<ruby>行<rt>い</rt></ruby>くんだ。<ruby>雪道<rt>ゆきみち</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か<ruby>見<rt>み</rt></ruby>てほしい。<br>*(Còn tháng sau tôi đi Nagano. Xem giùm có chạy đường tuyết được không.)* |
| Phong | かしこまりました。タイヤの<ruby>溝<rt>みぞ</rt></ruby>と<ruby>空気圧<rt>くうきあつ</rt></ruby>、<ruby>不凍液<rt>ふとうえき</rt></ruby>、バッテリーも<ruby>合<rt>あ</rt></ruby>わせて<ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Vâng ạ. Cháu sẽ kiểm tra cả gai lốp, áp suất, dung dịch chống đông, ắc quy ạ.)* |

---

## Tình huống 3 — Xưởng · 9:30, Phong hỏi lại Sato khi không chắc

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>田中様<rt>たなかさま</rt></ruby>の<ruby>車<rt>くるま</rt></ruby>、フロントブレーキパッド、<ruby>残<rt>のこ</rt></ruby>り3mmです。<br>*(Anh Sato, xe ông Tanaka, má phanh trước còn 3 mm.)* |
| Sato | 3mmか。<ruby>交換<rt>こうかん</rt></ruby><ruby>目安<rt>めやす</rt></ruby>は2mmだけど、<ruby>長野<rt>ながの</rt></ruby><ruby>行<rt>い</rt></ruby>くなら<ruby>今<rt>いま</rt></ruby><ruby>替<rt>か</rt></ruby>えた<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(3 mm hả. Tiêu chuẩn thay là 2 mm, nhưng nếu đi Nagano nên thay ngay.)* |
| Phong | ローターは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>そうです。<ruby>溝<rt>みぞ</rt></ruby>もあります。<br>*(Đĩa phanh trông ổn. Còn rãnh ạ.)* |
| Sato | じゃあパッドだけでいい。<ruby>左右<rt>さゆう</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>に<ruby>交換<rt>こうかん</rt></ruby>な。<ruby>片側<rt>かたがわ</rt></ruby>だけはダメ。<br>*(Vậy chỉ thay má thôi. Hai bên thay đồng thời nhé. Một bên là không được.)* |
| Phong | はい。タイヤの<ruby>溝<rt>みぞ</rt></ruby>は5mm、<ruby>夏<rt>なつ</rt></ruby>タイヤです。<ruby>雪道<rt>ゆきみち</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいですよね?<br>*(Vâng. Gai lốp 5 mm, là lốp hè. Đường tuyết khó nhỉ?)* |
| Sato | スタッドレスタイヤを<ruby>勧<rt>すす</rt></ruby>めて。<ruby>長野<rt>ながの</rt></ruby>の<ruby>峠<rt>とうげ</rt></ruby>は<ruby>夏<rt>なつ</rt></ruby>タイヤ<ruby>禁止<rt>きんし</rt></ruby>の<ruby>区間<rt>くかん</rt></ruby>もある。<br>*(Khuyên lắp lốp tuyết. Có đoạn đèo ở Nagano cấm lốp hè đấy.)* |
| Phong | <ruby>禁止<rt>きんし</rt></ruby>!?<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>情報<rt>じょうほう</rt></ruby>です。<ruby>見積書<rt>みつもりしょ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れます。<br>*(Cấm ạ!? Thông tin quan trọng. Cháu sẽ ghi vào báo giá.)* |

---

## Tình huống 4 — Quầy lễ tân · 10:30, Phong giải thích báo giá tổng

*(Phong cầm tờ 見積書 in từ máy, đặt trước mặt Tanaka.)*

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>田中様<rt>たなかさま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>たせいたしました。こちらが<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby><ruby>結果<rt>けっか</rt></ruby>と<ruby>見積<rt>みつ</rt></ruby>もりでございます。<br>*(Ngài Tanaka, đã làm ngài đợi. Đây là kết quả kiểm tra và báo giá hôm nay ạ.)* |
| Tanaka | (cầm) どれどれ。<ruby>合計<rt>ごうけい</rt></ruby>...<ruby>結構<rt>けっこう</rt></ruby><ruby>高<rt>たか</rt></ruby>いね。<br>*(Đâu xem. Tổng cộng... cao đấy.)* |
| Phong | はい、<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>させていただきます。<ruby>大<rt>おお</rt></ruby>きく4つに<ruby>分<rt>わ</rt></ruby>かれます。<br>*(Vâng, cháu xin giải thích theo thứ tự. Chia thành 4 phần lớn ạ.)* |
| Phong | (chỉ tay) ①<ruby>定期点検<rt>ていきてんけん</rt></ruby><ruby>料<rt>りょう</rt></ruby> 8,800<ruby>円<rt>えん</rt></ruby>。これは<ruby>基本<rt>きほん</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>です。<br>*(Phần ① phí kiểm tra định kỳ 8.800 yên. Đây là phí cơ bản ạ.)* |
| Phong | ②ブレーキパッド<ruby>交換<rt>こうかん</rt></ruby> <ruby>部品<rt>ぶひん</rt></ruby>12,000<ruby>円<rt>えん</rt></ruby>+<ruby>工賃<rt>こうちん</rt></ruby>6,000<ruby>円<rt>えん</rt></ruby>=18,000<ruby>円<rt>えん</rt></ruby>。<br>*(Phần ② thay má phanh: linh kiện 12.000 yên + công 6.000 yên = 18.000 yên.)* |
| Phong | ③<ruby>不凍液<rt>ふとうえき</rt></ruby><ruby>補充<rt>ほじゅう</rt></ruby> 1,500<ruby>円<rt>えん</rt></ruby>。④<ruby>スタッドレス<rt>すたっどれす</rt></ruby>タイヤ4<ruby>本<rt>ほん</rt></ruby><ruby>組<rt>く</rt></ruby>み<ruby>替<rt>か</rt></ruby>え 56,000<ruby>円<rt>えん</rt></ruby>。<br>*(Phần ③ thêm dung dịch chống đông 1.500 yên. Phần ④ thay 4 lốp tuyết 56.000 yên.)* |
| Phong | <ruby>合計<rt>ごうけい</rt></ruby>84,300<ruby>円<rt>えん</rt></ruby>、<ruby>消費税<rt>しょうひぜい</rt></ruby><ruby>込<rt>こ</rt></ruby>みで92,730<ruby>円<rt>えん</rt></ruby>でございます。<br>*(Tổng 84.300 yên, gồm thuế tiêu thụ là 92.730 yên ạ.)* |

---

## Tình huống 5 — Quầy lễ tân · 10:40, khách phản ứng giá lốp

| Vai | Lời thoại |
|---|---|
| Tanaka | スタッドレスタイヤ4<ruby>本<rt>ほん</rt></ruby>で5<ruby>万<rt>まん</rt></ruby>6?<ruby>高<rt>たか</rt></ruby>くない?<br>*(4 lốp tuyết 56.000? Đắt thế?)* |
| Phong | はい、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>しますと、<ruby>安<rt>やす</rt></ruby>くはありません。ですが3つ<ruby>選択肢<rt>せんたくし</rt></ruby>がございます。<br>*(Vâng, thật lòng mà nói thì không rẻ ạ. Nhưng có 3 lựa chọn.)* |
| Phong | <ruby>松<rt>まつ</rt></ruby>:ブリヂストン BLIZZAK 72,000<ruby>円<rt>えん</rt></ruby>、<ruby>性能<rt>せいのう</rt></ruby><ruby>最高<rt>さいこう</rt></ruby>。<br>*(Loại sang: Bridgestone BLIZZAK 72.000 yên, hiệu năng tốt nhất.)* |
| Phong | <ruby>竹<rt>たけ</rt></ruby>:ヨコハマ ice GUARD 56,000<ruby>円<rt>えん</rt></ruby>、バランスが<ruby>良<rt>よ</rt></ruby>い。<br>*(Loại tầm trung: Yokohama ice GUARD 56.000 yên, cân bằng tốt.)* |
| Phong | <ruby>梅<rt>うめ</rt></ruby>:ダンロップ WINTER MAXX 02 42,000<ruby>円<rt>えん</rt></ruby>、<ruby>必要<rt>ひつよう</rt></ruby><ruby>最低限<rt>さいていげん</rt></ruby>です。<br>*(Loại tiết kiệm: Dunlop WINTER MAXX 02 42.000 yên, đạt mức tối thiểu cần thiết.)* |
| Tanaka | 1<ruby>年<rt>ねん</rt></ruby>に1<ruby>回<rt>かい</rt></ruby><ruby>長野<rt>ながの</rt></ruby><ruby>行<rt>い</rt></ruby>くだけだしな...<ruby>梅<rt>うめ</rt></ruby>でいい?<br>*(Mỗi năm đi Nagano 1 lần thôi... loại tiết kiệm được không?)* |
| Phong | <ruby>使用頻度<rt>しようひんど</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えますと、<ruby>梅<rt>うめ</rt></ruby>で<ruby>十分<rt>じゅうぶん</rt></ruby>です。3<ruby>年<rt>ねん</rt></ruby>はお<ruby>使<rt>つか</rt></ruby>いいただけます。<br>*(Tính theo tần suất dùng thì loại tiết kiệm là đủ ạ. Dùng được 3 năm.)* |
| Tanaka | じゃあそれで。<br>*(Vậy chọn loại đó.)* |

---

## Tình huống 6 — Quầy lễ tân · 10:55, đề xuất bảo dưỡng phòng ngừa

| Vai | Lời thoại |
|---|---|
| Phong | あの、<ruby>田中様<rt>たなかさま</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つご<ruby>提案<rt>ていあん</rt></ruby>がございます。<br>*(Thưa ngài Tanaka, cháu có một đề xuất ạ.)* |
| Tanaka | なに?<br>*(Cái gì?)* |
| Phong | バッテリーが4<ruby>年目<rt>ねんめ</rt></ruby>でして、<ruby>寒冷地<rt>かんれいち</rt></ruby>では<ruby>突然<rt>とつぜん</rt></ruby><ruby>動<rt>うご</rt></ruby>かなくなる<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Ắc quy đã 4 năm, ở vùng lạnh có thể đột nhiên không khởi động được ạ.)* |
| Tanaka | え、まだ<ruby>動<rt>うご</rt></ruby>いてるよ?<br>*(Hả, vẫn chạy mà?)* |
| Phong | <ruby>今<rt>いま</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ですが<ruby>長野<rt>ながの</rt></ruby>の<ruby>峠<rt>とうげ</rt></ruby>で<ruby>止<rt>と</rt></ruby>まったら、ロードサービスを<ruby>呼<rt>よ</rt></ruby>ぶ<ruby>時間<rt>じかん</rt></ruby>が<ruby>長<rt>なが</rt></ruby>くなります。<br>*(Bây giờ thì ổn. Nhưng nếu chết ở đèo Nagano, gọi cứu hộ sẽ rất lâu ạ.)* |
| Phong | バッテリーは18,000<ruby>円<rt>えん</rt></ruby>、<ruby>交換時間<rt>こうかんじかん</rt></ruby>15<ruby>分<rt>ぷん</rt></ruby>です。<ruby>無理<rt>むり</rt></ruby>には<ruby>勧<rt>すす</rt></ruby>めません。ご<ruby>判断<rt>はんだん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ắc quy 18.000 yên, thay 15 phút. Cháu không ép đâu, xin ngài quyết định ạ.)* |
| Tanaka | (suy nghĩ) ...そうだな、<ruby>峠<rt>とうげ</rt></ruby>で<ruby>止<rt>と</rt></ruby>まったら<ruby>嫁<rt>よめ</rt></ruby>に<ruby>怒<rt>おこ</rt></ruby>られる。<ruby>替<rt>か</rt></ruby>えとくか。<br>*(... Đúng nhỉ. Chết máy ở đèo thì vợ chửi. Thay đi nhỉ.)* |
| Phong | ありがとうございます。<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>していただき、<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<br>*(Cảm ơn ngài. Cảm ơn vì ngài đã ưu tiên an toàn ạ.)* |

---

## Tình huống 7 — Quầy lễ tân · 11:00, khách thử hỏi giảm giá

| Vai | Lời thoại |
|---|---|
| Tanaka | フォンくん、5<ruby>年<rt>ねん</rt></ruby><ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いがあるんだから、<ruby>少<rt>すこ</rt></ruby>し<ruby>割引<rt>わりびき</rt></ruby>できない?<br>*(Phong, quan hệ 5 năm rồi, giảm chút được không?)* |
| Phong | (lúng túng) えっと...<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>私<rt>わたし</rt></ruby>の<ruby>権限<rt>けんげん</rt></ruby>では<ruby>決<rt>き</rt></ruby>められないので、<ruby>佐藤<rt>さとう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してまいります。<br>*(Dạ... xin lỗi ạ. Cháu không có thẩm quyền quyết định nên cháu sẽ hỏi anh Sato ạ.)* |
| Tanaka | おっ、しっかりしてる。<br>*(Ờ, đúng nguyên tắc nhỉ.)* |
| Phong | (quay sang xưởng) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>田中様<rt>たなかさま</rt></ruby>から<ruby>割引<rt>わりびき</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>です。<br>*(Anh Sato, ngài Tanaka hỏi về việc giảm giá ạ.)* |
| Sato | (đến) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>長年<rt>ながねん</rt></ruby>のお<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>いということで、<ruby>工賃<rt>こうちん</rt></ruby>を10%引かせていただきます。<br>*(Ông Tanaka, vì quan hệ lâu năm, chúng tôi xin giảm 10% phí công.)* |
| Tanaka | ありがとう、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(Cảm ơn anh Sato.)* |
| Phong | (quay lại bàn) <ruby>工賃<rt>こうちん</rt></ruby>10%<ruby>引<rt>び</rt></ruby>きで、<ruby>合計<rt>ごうけい</rt></ruby>91,580<ruby>円<rt>えん</rt></ruby>になります。<br>*(Giảm 10% phí công, tổng còn 91.580 yên ạ.)* |

---

## Tình huống 8 — Quầy lễ tân · 11:10, chốt lịch và xe thay thế

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>作業時間<rt>さぎょうじかん</rt></ruby>は<ruby>合計<rt>ごうけい</rt></ruby>3<ruby>時間<rt>じかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりで<ruby>夕方<rt>ゆうがた</rt></ruby>5<ruby>時<rt>じ</rt></ruby>のお<ruby>渡<rt>わた</rt></ruby>しでよろしいでしょうか?<br>*(Thời gian làm khoảng 3 tiếng. Hôm nay nhận xe và trả 5 giờ chiều được không ạ?)* |
| Tanaka | <ruby>店<rt>みせ</rt></ruby><ruby>開<rt>あ</rt></ruby>けないとならない。<ruby>代車<rt>だいしゃ</rt></ruby>ある?<br>*(Tôi phải mở tiệm. Có xe thay không?)* |
| Phong | はい、<ruby>軽自動車<rt>けいじどうしゃ</rt></ruby>でしたらすぐご<ruby>用意<rt>ようい</rt></ruby>できます。<ruby>無料<rt>むりょう</rt></ruby>でございます。<br>*(Vâng, xe nhỏ chúng tôi chuẩn bị ngay được. Miễn phí ạ.)* |
| Tanaka | <ruby>助<rt>たす</rt></ruby>かる。じゃあそれで。<br>*(Giúp tôi quá. Vậy nhé.)* |
| Phong | (đưa giấy) こちらに<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>作業<rt>さぎょう</rt></ruby><ruby>同意書<rt>どういしょ</rt></ruby>と<ruby>代車<rt>だいしゃ</rt></ruby><ruby>貸出書<rt>かしだししょ</rt></ruby>です。<br>*(Xin ngài ký vào đây. Đơn đồng ý sửa chữa và phiếu mượn xe thay ạ.)* |
| Tanaka | (ký) はい。<br>*(Đây.)* |
| Phong | <ruby>鍵<rt>かぎ</rt></ruby>をお<ruby>預<rt>あず</rt></ruby>かりいたします。<ruby>代車<rt>だいしゃ</rt></ruby>の<ruby>鍵<rt>かぎ</rt></ruby>はこちらです。<ruby>燃料<rt>ねんりょう</rt></ruby>は<ruby>満<rt>まん</rt></ruby>タンでお<ruby>渡<rt>わた</rt></ruby>しいたします。<ruby>返却時<rt>へんきゃくじ</rt></ruby>は<ruby>満<rt>まん</rt></ruby>タンでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cháu xin nhận chìa khoá. Chìa xe thay đây ạ. Cháu giao đầy bình. Khi trả xin ngài cũng đầy bình ạ.)* |

---

## Tình huống 9 — Bãi đậu xe · 11:20, hướng dẫn xe thay thế

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>田中様<rt>たなかさま</rt></ruby>、こちらが<ruby>代車<rt>だいしゃ</rt></ruby>のダイハツ「ミラ」です。<br>*(Ngài Tanaka, đây là xe thay thế Daihatsu Mira ạ.)* |
| Tanaka | <ruby>軽<rt>けい</rt></ruby>ね。<ruby>久<rt>ひさ</rt></ruby>しぶり。<br>*(Xe nhỏ nhỉ. Lâu rồi tôi không lái.)* |
| Phong | アイドリングストップが<ruby>付<rt>つ</rt></ruby>いておりますので、<ruby>信号<rt>しんごう</rt></ruby><ruby>待<rt>ま</rt></ruby>ちで<ruby>自動的<rt>じどうてき</rt></ruby>に<ruby>止<rt>と</rt></ruby>まります。<ruby>驚<rt>おどろ</rt></ruby>かないでください。<br>*(Có tính năng idling stop nên khi đèn đỏ sẽ tự tắt máy. Xin ngài đừng giật mình ạ.)* |
| Tanaka | おお、<ruby>最近<rt>さいきん</rt></ruby>の<ruby>軽<rt>けい</rt></ruby>はすごいな。<br>*(Ồ, xe nhỏ giờ tiên tiến nhỉ.)* |
| Phong | ETCカードはあちらに<ruby>挿<rt>さ</rt></ruby>します。お<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて<ruby>運転<rt>うんてん</rt></ruby>してください。<br>*(Thẻ ETC cắm vào kia. Xin ngài lái xe cẩn thận ạ.)* |
| Tanaka | サンキュー。じゃあ5<ruby>時<rt>じ</rt></ruby>に。<br>*(Cảm ơn. Vậy 5 giờ nhé.)* |
| Phong | (cúi đầu) お<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて、いってらっしゃいませ。<br>*(Xin ngài cẩn thận, kính chúc ngài đi an lành ạ.)* |

---

## Tình huống 10 — Xưởng · 13:00, Sato khen Phong

| Vai | Lời thoại |
|---|---|
| Sato | フォン、<ruby>朝<rt>あさ</rt></ruby>の<ruby>応対<rt>おうたい</rt></ruby>、<ruby>見<rt>み</rt></ruby>てたぞ。<br>*(Phong, anh có xem cách em tiếp ban sáng đấy.)* |
| Phong | え、<ruby>緊張<rt>きんちょう</rt></ruby>しました。どうでしたか?<br>*(Hả, cháu hồi hộp lắm. Thế nào ạ?)* |
| Sato | <ruby>松竹梅<rt>まつたけうめ</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>は<ruby>上手<rt>じょうず</rt></ruby>だった。お<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>選<rt>えら</rt></ruby>びやすい。<br>*(Đề xuất kiểu "tùng-trúc-mai" (3 mức giá) tốt đấy. Khách dễ chọn.)* |
| Phong | <ruby>本<rt>ほん</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>しました。<ruby>真<rt>ま</rt></ruby>ん<ruby>中<rt>なか</rt></ruby>を<ruby>選<rt>えら</rt></ruby>びやすいですよね。<br>*(Cháu học từ sách. Khách dễ chọn ở giữa nhỉ.)* |
| Sato | そう。でも<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>梅<rt>うめ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んだ。<ruby>使用頻度<rt>しようひんど</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えて<ruby>正<rt>ただ</rt></ruby>しいアドバイスをしたな。<br>*(Đúng. Nhưng ông Tanaka chọn rẻ. Em đã cho lời khuyên đúng dựa trên tần suất dùng.)* |
| Phong | バッテリーも<ruby>勧<rt>すす</rt></ruby>めましたが、<ruby>強<rt>つよ</rt></ruby>く<ruby>言<rt>い</rt></ruby>いすぎなかったでしょうか?<br>*(Cháu cũng khuyên thay ắc quy, nhưng có ép quá không ạ?)* |
| Sato | <ruby>無理<rt>むり</rt></ruby>には<ruby>勧<rt>すす</rt></ruby>めません、と<ruby>言<rt>い</rt></ruby>ったのが<ruby>良<rt>よ</rt></ruby>かった。<ruby>判断<rt>はんだん</rt></ruby>を<ruby>客<rt>きゃく</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>すと<ruby>信頼<rt>しんらい</rt></ruby>される。<br>*(Câu "không ép" là hay đấy. Để khách tự quyết thì sẽ được tin tưởng.)* |

---

## Tình huống 11 — Quầy lễ tân · 17:00, Tanaka quay lại nhận xe

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>田中様<rt>たなかさま</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>作業<rt>さぎょう</rt></ruby>はすべて<ruby>完了<rt>かんりょう</rt></ruby>いたしました。<br>*(Ngài Tanaka, cảm ơn ngài đã quay lại. Công việc đã hoàn thành toàn bộ ạ.)* |
| Tanaka | ブレーキの<ruby>音<rt>おと</rt></ruby>、<ruby>消<rt>き</rt></ruby>えた?<br>*(Tiếng phanh hết chưa?)* |
| Phong | はい、パッドを<ruby>新<rt>あたら</rt></ruby>しくしましたので<ruby>消<rt>き</rt></ruby>えるはずです。<ruby>最初<rt>さいしょ</rt></ruby>の100km<ruby>程<rt>ほど</rt></ruby>は「<ruby>当<rt>あ</rt></ruby>たり<ruby>付<rt>つ</rt></ruby>け<ruby>運転<rt>うんてん</rt></ruby>」をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đã thay má mới nên sẽ hết. 100 km đầu xin ngài lái nhẹ để rốt-đa ạ.)* |
| Tanaka | <ruby>当<rt>あ</rt></ruby>たり<ruby>付<rt>つ</rt></ruby>けって?<br>*(Rốt-đa là gì?)* |
| Phong | <ruby>強<rt>つよ</rt></ruby>いブレーキを<ruby>避<rt>さ</rt></ruby>けて、ゆっくり<ruby>馴染<rt>なじ</rt></ruby>ませる<ruby>運転<rt>うんてん</rt></ruby>です。100km<ruby>後<rt>ご</rt></ruby>に<ruby>本来<rt>ほんらい</rt></ruby>の<ruby>性能<rt>せいのう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Tránh phanh gấp, lái nhẹ cho má phanh ăn vào. Sau 100 km mới đạt hiệu năng tối đa ạ.)* |
| Tanaka | なるほど。<ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Hiểu rồi. OK.)* |
| Phong | こちらが<ruby>領収書<rt>りょうしゅうしょ</rt></ruby>と<ruby>整備記録簿<rt>せいびきろくぼ</rt></ruby>でございます。<ruby>次回<rt>じかい</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>は8<ruby>月<rt>がつ</rt></ruby>頃<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Đây là hóa đơn và sổ bảo dưỡng. Lần kiểm tra tới dự kiến khoảng tháng 8 ạ.)* |

---

## Tình huống 12 — Quầy lễ tân · 17:15, Tanaka tặng quà

| Vai | Lời thoại |
|---|---|
| Tanaka | (đưa hộp giấy) これ、うちの<ruby>店<rt>みせ</rt></ruby>の<ruby>稲荷寿司<rt>いなりずし</rt></ruby>。<ruby>晩<rt>ばん</rt></ruby>ご<ruby>飯<rt>はん</rt></ruby>に。<br>*(Cái này, sushi inari của tiệm tôi. Cho bữa tối.)* |
| Phong | え、いただいてもよろしいのですか? <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Ơ, cháu nhận được ạ? Cháu ngại quá ạ.)* |
| Tanaka | <ruby>初<rt>はじ</rt></ruby>めて<ruby>担当<rt>たんとう</rt></ruby>してくれた<ruby>記念<rt>きねん</rt></ruby>に。<ruby>君<rt>きみ</rt></ruby>、<ruby>真面目<rt>まじめ</rt></ruby>でいいよ。<br>*(Kỷ niệm lần đầu em phụ trách. Em nghiêm túc đấy.)* |
| Phong | (cúi đầu sâu) ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>にいただきます。<br>*(Cảm ơn ngài. Cháu xin nhận trân trọng ạ.)* |
| Tanaka | また<ruby>次回<rt>じかい</rt></ruby>もよろしく<ruby>頼<rt>たの</rt></ruby>むよ。<br>*(Lần sau cũng nhờ em nhé.)* |
| Phong | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努<rt>つと</rt></ruby>めさせていただきます。お<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けてお<ruby>帰<rt>かえ</rt></ruby>りください。<br>*(Vâng, cháu sẽ cố hết sức ạ. Xin ngài về cẩn thận ạ.)* |

---

## Tình huống 13 — Ký túc · 21:00, gọi điện về cho cha

> Cảnh tiếng Việt — Phong gọi cho bố ở Hải Phòng.

| Vai | Lời thoại |
|---|---|
| Phong | Bố ơi, hôm nay con tự mình tiếp một khách hàng quen, làm 見積書 báo giá luôn đấy. |
| Bố | Ờ, thế con nói tiếng Nhật ổn không? |
| Phong | Đầu tiên cũng run lắm, nhưng con nói thẳng là "có gì khó cháu sẽ hỏi anh Sato". Khách thấy thật thà nên còn khen "正直で偉い". |
| Bố | Cách đấy đúng đó con. Bố ngày xưa làm gò ô tô cũng vậy — không biết thì hỏi, đừng đoán bậy. |
| Phong | Con bán báo giá xong khách còn tặng sushi của tiệm ông ấy nữa bố. |
| Bố | Hay đấy. Nhật họ coi trọng quan hệ lâu dài lắm. Mày làm tốt thì 5-10 năm khách vẫn quay lại. |
| Phong | Vâng. Con học được kiểu báo giá "松竹梅" — 3 mức sang-trung-rẻ — khách dễ chọn lắm bố. |
| Bố | Ờ, kiểu Nhật. Bên mình toàn ép giá đắt. |
| Phong | Con còn học mẫu "無理には勧めません" — "cháu không ép đâu" — nói câu đó là khách tự tin và còn mua thêm bố ạ. |
| Bố | Lạ nhỉ. Tâm lý ngược. |
| Phong | Tháng sau con thi 整備士 3級, đỗ thì 工場長 cho con tiếp khách quen luôn đấy bố. |
| Bố | Cố lên con. Bố tin mày. |
| Phong | Vâng bố. Mẹ khoẻ không bố? |
| Bố | Khoẻ. Tối qua mẹ mày khóc vì mày gửi tiền nhiều quá. Bảo mày giữ lại tiêu. |
| Phong | Con đủ rồi bố. Con không tiêu gì hết. |

---

## Đọng lại chương

**Mẫu câu báo giá** (phải thuộc lòng):
- **「順番に説明させていただきます」** — "Xin cháu giải thích lần lượt"
- **「大きく〜つに分かれます」** — Chia nhỏ tổng tiền cho khách dễ hiểu
- **「正直に申しますと、〜」** — "Thật lòng mà nói..."
- **「3つ選択肢がございます」** — Gợi ý 3 mức "松竹梅"
- **「無理には勧めません」** — "Cháu không ép"
- **「ご判断をお願いします」** — Để khách tự quyết
- **「私の権限では決められないので、〜に確認してまいります」** — Khi không có thẩm quyền
- **「精一杯努めさせていただきます」** — Cam kết hết sức

> Từ vựng & mẫu câu chương này: 見積書・定期点検・点検料・工賃・部品代・摩耗・松竹梅・選択肢・割引・代車・貸出書・領収書・整備記録簿・当たり付け・恐縮

## Bí quyết chương

- **「松竹梅」** (sang-trung-rẻ) — cách báo giá kinh điển ở Nhật, khách dễ chọn loại giữa hơn cực đoan.
- Khi khách phản ứng giá đắt, **đừng giảm ngay** — hãy chia nhỏ tổng tiền + giải thích từng mục.
- **Không có thẩm quyền** thì nói thẳng "xin phép hỏi sempai" — khách quý sự trung thực hơn là sự khoe.
- "**無理には勧めません, ご判断を**" — câu thần chú: chuyển quyền quyết định cho khách, khách lại tự nguyện mua.
- Khách quen có thể tặng quà (đồ ăn) — nhận với câu "**恐縮です**" + cúi đầu sâu là đúng văn hóa.
- "**当たり付け運転**" (rốt-đa má phanh) — luôn dặn khách 100 km đầu lái nhẹ sau khi thay pad.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 定期点検 | ていきてんけん | ĐỊNH KỲ ĐIỂM KIỂM | Kiểm tra định kỳ |
| ブレーキパッド | ぶれーきぱっど | — | Má phanh |
| 摩耗 | まもう | MA HÀO | Mòn, hao mòn |
| 金属的 | きんぞくてき | KIM THUỘC ĐÍCH | Kiểu kim loại |
| 雪道 | ゆきみち | TUYẾT ĐẠO | Đường tuyết |
| 溝 | みぞ | CÂU | Rãnh (gai lốp) |
| 空気圧 | くうきあつ | KHÔNG KHÍ ÁP | Áp suất khí |
| 不凍液 | ふとうえき | BẤT ĐỘNG DỊCH | Dung dịch chống đông |
| バッテリー | ばってりー | — | Ắc quy |
| ローター | ろーたー | — | Đĩa phanh |
| 目安 | めやす | MỤC AN | Tiêu chuẩn ước lượng |
| 片側 | かたがわ | PHIẾN TRẮC | Một bên |
| スタッドレスタイヤ | すたっどれすたいや | — | Lốp tuyết |
| 峠 | とうげ | THƯỢNG | Đèo |
| 区間 | くかん | KHU GIAN | Đoạn (đường) |
| 見積書 | みつもりしょ | KIẾN TÍCH THƯ | Báo giá |
| 合計 | ごうけい | HỢP KẾ | Tổng cộng |
| 工賃 | こうちん | CÔNG TRỪ | Phí công |
| 部品代 | ぶひんだい | BỘ PHẨM ĐẠI | Phí linh kiện |
| 消費税 | しょうひぜい | TIÊU PHÍ THUẾ | Thuế tiêu thụ |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | Lựa chọn |
| 松竹梅 | まつたけうめ | TÙNG TRÚC MAI | (3 mức giá) |
| 性能 | せいのう | TÍNH NĂNG | Hiệu năng |
| 使用頻度 | しようひんど | SỬ DỤNG TẦN ĐỘ | Tần suất dùng |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 寒冷地 | かんれいち | HÀN LÃNH ĐỊA | Vùng lạnh |
| 突然 | とつぜん | ĐỘT NHIÊN | Đột nhiên |
| 判断 | はんだん | PHÁN ĐOÁN | Quyết định, phán đoán |
| 権限 | けんげん | QUYỀN HẠN | Thẩm quyền |
| 割引 | わりびき | CÁT DẪN | Giảm giá |
| 長年 | ながねん | TRƯỜNG NIÊN | Lâu năm |
| 軽自動車 | けいじどうしゃ | KHINH TỰ ĐỘNG XA | Xe nhỏ (kei car) |
| 代車 | だいしゃ | ĐẠI XA | Xe thay thế |
| 署名 | しょめい | THỰ DANH | Ký tên |
| 同意書 | どういしょ | ĐỒNG Ý THƯ | Đơn đồng ý |
| 貸出書 | かしだししょ | THẢI XUẤT THƯ | Phiếu mượn |
| 満タン | まんたん | MÃN — | Đầy bình |
| アイドリングストップ | あいどりんぐすとっぷ | — | Tự tắt máy khi dừng |
| 領収書 | りょうしゅうしょ | LÃNH THU THƯ | Hóa đơn |
| 整備記録簿 | せいびきろくぼ | CHỈNH BỊ KÝ LỤC BẠ | Sổ ghi bảo dưỡng |
| 当たり付け | あたりつけ | ĐƯƠNG PHÓ | Rốt-đa (chạy mòn) |
| 馴染ませる | なじませる | TUẦN NHIỄM | Cho ăn rốt, làm quen |
| 稲荷寿司 | いなりずし | ĐẠO HÀ THỌ TƯ | Sushi inari (đậu phụ) |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Ngại quá, không dám nhận |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000011, 800000044, NULL, 'markdown_book', 'T11. Mùa đông tuyết — lắp lốp tuyết スタッドレスタイヤ', '# Sách thực tập sinh ô tô năm 2 · T11. Mùa đông tuyết — lắp lốp tuyết スタッドレスタイヤ

> **Mục tiêu nhân vật:** Phong (23 tuổi, đầu tháng 3/2027, ngành ô tô, N3). Học các mẫu hội thoại tiếng Nhật để: (1) tư vấn loại lốp tuyết phù hợp, (2) nhận diện 製造年週 (DOT date) lốp cũ, (3) cân bằng (バランス取り), (4) trao đổi với khách về xích tuyết (タイヤチェーン), (5) xử lý xe khách bị nổ lốp giữa đêm khi gọi cứu hộ, (6) báo cáo công việc giữa cơn bão tuyết.

## Bối cảnh

Đầu tháng 3 năm 2027, Aichi có đợt rét đậm muộn, dự báo tuyết rơi cuối tuần — chuyện hiếm gặp ở vùng đồng bằng Toyota. Khách đổ về garage liên tục đặt lắp lốp tuyết, nhiều người chưa kịp chuẩn bị. Phong đã có kinh nghiệm 1 mùa đông (T10 năm 1 — battery), giờ thông thuộc quy trình lắp tháo lốp. Cuối tuần, một khách gọi điện báo nổ lốp giữa đêm trên cao tốc Tomei. Đây là lần đầu Phong tham gia ロードサービス (cứu hộ) cùng sempai Kobayashi. Chương tập trung kỹ năng tư vấn lốp + ứng phó tình huống khẩn cấp ban đêm.

---

## Tình huống 1 — Quầy lễ tân · 8:00 thứ Hai, khách đầu tiên đặt lốp tuyết

| Vai | Lời thoại |
|---|---|
| Khách Suzuki | おはよう。<ruby>週末<rt>しゅうまつ</rt></ruby><ruby>雪<rt>ゆき</rt></ruby><ruby>降<rt>ふ</rt></ruby>るって<ruby>聞<rt>き</rt></ruby>いて。スタッドレス<ruby>付<rt>つ</rt></ruby>けたいんだ。<br>*(Chào. Nghe nói cuối tuần có tuyết. Tôi muốn lắp lốp tuyết.)* |
| Phong | おはようございます。かしこまりました。<ruby>車種<rt>しゃしゅ</rt></ruby>とサイズを<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Chào ngài. Vâng ạ. Cho cháu kiểm tra dòng xe và kích thước ạ.)* |
| Khách Suzuki | <ruby>日産<rt>にっさん</rt></ruby>ノート。タイヤサイズは185/65R15だったかな。<br>*(Nissan Note. Cỡ lốp 185/65R15 thì phải.)* |
| Phong | (gõ máy) はい、<ruby>確認<rt>かくにん</rt></ruby>できました。<ruby>在庫<rt>ざいこ</rt></ruby>はございます。<br>*(Vâng, cháu đã xác nhận. Có hàng tồn ạ.)* |
| Phong | <ruby>新品<rt>しんぴん</rt></ruby>4<ruby>本<rt>ほん</rt></ruby><ruby>組<rt>く</rt></ruby>み<ruby>替<rt>か</rt></ruby>えで<ruby>合計<rt>ごうけい</rt></ruby>52,000<ruby>円<rt>えん</rt></ruby>(<ruby>税込<rt>ぜいこみ</rt></ruby>)です。<br>*(4 lốp mới thay đồng bộ, tổng 52.000 yên đã bao gồm thuế.)* |
| Khách Suzuki | <ruby>今日中<rt>きょうじゅう</rt></ruby>にできる?<br>*(Trong hôm nay xong không?)* |
| Phong | <ruby>午後<rt>ごご</rt></ruby>2<ruby>時<rt>じ</rt></ruby>でしたら<ruby>枠<rt>わく</rt></ruby>がございます。<ruby>作業時間<rt>さぎょうじかん</rt></ruby>は<ruby>約<rt>やく</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>です。<br>*(2 giờ chiều có lịch trống ạ. Thời gian làm khoảng 1 tiếng.)* |

---

## Tình huống 2 — Quầy lễ tân · 9:30, khách mang lốp cũ năm ngoái

*(Khách kéo 4 lốp tuyết cũ từ cốp xe vào.)*

| Vai | Lời thoại |
|---|---|
| Khách Watanabe | <ruby>去年<rt>きょねん</rt></ruby>のスタッドレス、<ruby>今年<rt>ことし</rt></ruby>もまだ<ruby>使<rt>つか</rt></ruby>えるかな?<br>*(Lốp tuyết năm ngoái, năm nay còn dùng được không?)* |
| Phong | <ruby>確認<rt>かくにん</rt></ruby>させていただきます。タイヤの<ruby>製造年週<rt>せいぞうねんしゅう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみますね。<br>*(Để cháu kiểm tra ạ. Cháu xem năm sản xuất của lốp.)* |
| Phong | (cúi xuống, xem sườn lốp) これは「2422」と<ruby>書<rt>か</rt></ruby>いてあります。2024<ruby>年<rt>ねん</rt></ruby>22<ruby>週目<rt>しゅうめ</rt></ruby>、つまり2024<ruby>年<rt>ねん</rt></ruby>5<ruby>月<rt>がつ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>の<ruby>製造<rt>せいぞう</rt></ruby>です。<br>*(Cái này ghi "2422". Tức là tuần 22 năm 2024, khoảng tháng 5/2024 ạ.)* |
| Khách Watanabe | 3<ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>か。まだいけそう?<br>*(3 năm trước à. Còn được không?)* |
| Phong | スタッドレスの<ruby>寿命<rt>じゅみょう</rt></ruby>は<ruby>一般的<rt>いっぱんてき</rt></ruby>に3〜4<ruby>年<rt>ねん</rt></ruby>です。<ruby>溝<rt>みぞ</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみますと...<br>*(Tuổi thọ lốp tuyết thường 3-4 năm. Cháu nhìn rãnh thấy...)* |
| Phong | <ruby>残<rt>のこ</rt></ruby>り<ruby>溝<rt>みぞ</rt></ruby>が<ruby>新品時<rt>しんぴんじ</rt></ruby>の50%以下です。スタッドレスは50%を<ruby>切<rt>き</rt></ruby>ると<ruby>雪上性能<rt>せつじょうせいのう</rt></ruby>が<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちます。<br>*(Rãnh còn dưới 50% so với mới. Lốp tuyết dưới 50% thì hiệu năng trên tuyết giảm mạnh ạ.)* |
| Khách Watanabe | <ruby>夏<rt>なつ</rt></ruby>タイヤは6<ruby>年<rt>ねん</rt></ruby><ruby>使<rt>つか</rt></ruby>えるって<ruby>聞<rt>き</rt></ruby>いたけど?<br>*(Lốp hè nghe nói dùng được 6 năm mà?)* |
| Phong | はい、<ruby>夏<rt>なつ</rt></ruby>タイヤとスタッドレスは<ruby>素材<rt>そざい</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います。スタッドレスは<ruby>柔<rt>やわ</rt></ruby>らかいゴムで、<ruby>経年<rt>けいねん</rt></ruby>で<ruby>硬<rt>かた</rt></ruby>くなりやすいんです。<br>*(Vâng, cao su lốp hè và lốp tuyết khác nhau. Lốp tuyết mềm hơn, qua năm tháng dễ cứng lại ạ.)* |
| Khách Watanabe | なるほど。じゃあ<ruby>新<rt>あたら</rt></ruby>しいの<ruby>買<rt>か</rt></ruby>うか。<br>*(Hiểu rồi. Vậy mua lốp mới.)* |

---

## Tình huống 3 — Xưởng · 10:30, Phong tự lắp lốp dưới sự giám sát

| Vai | Lời thoại |
|---|---|
| Sato | フォン、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>でやってみるか。<br>*(Phong, hôm nay tự làm thử nhé.)* |
| Phong | はい!<ruby>手順<rt>てじゅん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<ruby>ジャッキアップ<rt>じゃっきあっぷ</rt></ruby>→<ruby>ホイール<rt>ほいーる</rt></ruby><ruby>外<rt>はず</rt></ruby>し→<ruby>タイヤ<rt>たいや</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>→バランス取り→<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>け→<ruby>規定<rt>きてい</rt></ruby>トルクで<ruby>締<rt>し</rt></ruby>める。<br>*(Vâng! Cháu xác nhận quy trình: kích lên → tháo mâm → thay lốp → cân bằng → lắp lại → siết đúng mô-men quy định.)* |
| Sato | <ruby>規定<rt>きてい</rt></ruby>トルクはいくつ?<br>*(Mô-men quy định bao nhiêu?)* |
| Phong | ノートは103Nm(<ruby>ニュートンメートル<rt>にゅーとんめーとる</rt></ruby>)です。<br>*(Note là 103 Nm ạ.)* |
| Sato | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>体重<rt>たいじゅう</rt></ruby>で<ruby>締<rt>し</rt></ruby>めるな。トルクレンチを<ruby>使<rt>つか</rt></ruby>うこと。<br>*(Đúng. Tuyệt đối không siết bằng sức người. Phải dùng cờ-lê mô-men.)* |
| Phong | はい。<ruby>締<rt>し</rt></ruby>め<ruby>過<rt>す</rt></ruby>ぎるとボルトが<ruby>折<rt>お</rt></ruby>れる<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Vâng. Siết quá có thể gãy bu lông ạ.)* |
| Sato | そう。<ruby>緩<rt>ゆる</rt></ruby>すぎるとホイールが<ruby>外<rt>はず</rt></ruby>れて<ruby>事故<rt>じこ</rt></ruby>になる。<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<br>*(Đúng. Lỏng quá thì mâm văng ra gây tai nạn. Liên quan đến tính mạng.)* |
| Phong | <ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>作業<rt>さぎょう</rt></ruby>します。<br>*(Cháu sẽ làm cẩn thận.)* |

---

## Tình huống 4 — Xưởng · 11:15, bàn về tăng vít (鋲) bị cấm

| Vai | Lời thoại |
|---|---|
| Khách Yamada | スタッドレスって<ruby>昔<rt>むかし</rt></ruby>はトゲがついてたよね?<br>*(Lốp tuyết ngày xưa có gắn vít nhỉ?)* |
| Phong | はい、「スパイクタイヤ」ですね。<ruby>金属<rt>きんぞく</rt></ruby>の<ruby>鋲<rt>びょう</rt></ruby>がついていました。<br>*(Vâng, gọi là "lốp đinh". Có gắn đinh kim loại ạ.)* |
| Khách Yamada | なんで<ruby>今<rt>いま</rt></ruby>はないの?<br>*(Sao bây giờ không có nữa?)* |
| Phong | 1990<ruby>年<rt>ねん</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>に<ruby>禁止<rt>きんし</rt></ruby>されました。アスファルトを<ruby>削<rt>けず</rt></ruby>って<ruby>粉塵<rt>ふんじん</rt></ruby><ruby>公害<rt>こうがい</rt></ruby>になったからです。<br>*(Bị cấm khoảng năm 1990 ạ. Vì cào mặt đường gây ô nhiễm bụi.)* |
| Khách Yamada | へえ、<ruby>環境<rt>かんきょう</rt></ruby>のためか。<br>*(Ồ, vì môi trường à.)* |
| Phong | はい。<ruby>現代<rt>げんだい</rt></ruby>のスタッドレスはゴムの<ruby>柔<rt>やわ</rt></ruby>らかさと<ruby>溝<rt>みぞ</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>で<ruby>雪<rt>ゆき</rt></ruby>と<ruby>氷<rt>こおり</rt></ruby>を<ruby>掴<rt>つか</rt></ruby>みます。<br>*(Vâng. Lốp tuyết hiện đại bám tuyết và băng nhờ độ mềm cao su và hình rãnh ạ.)* |

---

## Tình huống 5 — Quầy lễ tân · 14:00, khách hỏi về xích tuyết

| Vai | Lời thoại |
|---|---|
| Khách Ito | スタッドレスより<ruby>安<rt>やす</rt></ruby>くなんとかしたいんだけど、チェーンってどう?<br>*(Tôi muốn rẻ hơn lốp tuyết, lắp xích thì sao?)* |
| Phong | タイヤチェーンですね。<ruby>確<rt>たし</rt></ruby>かに<ruby>価格<rt>かかく</rt></ruby>は<ruby>安<rt>やす</rt></ruby>くて、5,000<ruby>円<rt>えん</rt></ruby>〜15,000<ruby>円<rt>えん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。<br>*(Xích tuyết hả ạ. Đúng là rẻ hơn, khoảng 5.000-15.000 yên ạ.)* |
| Phong | ただ、<ruby>欠点<rt>けってん</rt></ruby>が3つあります。①<ruby>装着<rt>そうちゃく</rt></ruby>に10〜20<ruby>分<rt>ぷん</rt></ruby>かかる、②<ruby>雪<rt>ゆき</rt></ruby>のない<ruby>道<rt>みち</rt></ruby>では<ruby>外<rt>はず</rt></ruby>す<ruby>必要<rt>ひつよう</rt></ruby>がある、③<ruby>速度<rt>そくど</rt></ruby>は30〜50キロまで。<br>*(Tuy nhiên có 3 nhược điểm: ① lắp mất 10-20 phút, ② đường không tuyết phải tháo, ③ tốc độ tối đa 30-50 km/h ạ.)* |
| Khách Ito | <ruby>面倒<rt>めんどう</rt></ruby>だね。<br>*(Phiền nhỉ.)* |
| Phong | お<ruby>使<rt>つか</rt></ruby>いの<ruby>頻度<rt>ひんど</rt></ruby>によります。<ruby>年<rt>ねん</rt></ruby>に1〜2<ruby>回<rt>かい</rt></ruby><ruby>雪国<rt>ゆきぐに</rt></ruby>に<ruby>行<rt>い</rt></ruby>くだけでしたらチェーン、<ruby>頻繁<rt>ひんぱん</rt></ruby>でしたらスタッドレスです。<br>*(Tùy tần suất dùng ạ. Mỗi năm 1-2 lần đi vùng tuyết thì xích, thường xuyên thì lốp tuyết.)* |
| Khách Ito | <ruby>年<rt>ねん</rt></ruby>に2<ruby>回<rt>かい</rt></ruby>くらい<ruby>長野<rt>ながの</rt></ruby><ruby>行<rt>い</rt></ruby>く。じゃあチェーンでいいか。<br>*(Tôi đi Nagano khoảng 2 lần/năm. Vậy xích là được nhỉ.)* |
| Phong | かしこまりました。<ruby>非金属<rt>ひきんぞく</rt></ruby>チェーンが<ruby>装着<rt>そうちゃく</rt></ruby><ruby>簡単<rt>かんたん</rt></ruby>でおすすめです。8,800<ruby>円<rt>えん</rt></ruby>から<ruby>取<rt>と</rt></ruby>り<ruby>扱<rt>あつか</rt></ruby>っております。<br>*(Vâng ạ. Cháu khuyên xích phi kim loại, lắp dễ. Có từ 8.800 yên ạ.)* |

---

## Tình huống 6 — Xưởng · 15:30, lỗi nhỏ — lắp lốp ngược chiều xoay

| Vai | Lời thoại |
|---|---|
| Kobayashi | フォン、ちょっと。このタイヤ、<ruby>向<rt>む</rt></ruby>き、<ruby>合<rt>あ</rt></ruby>ってる?<br>*(Phong, lại đây tí. Lốp này hướng có đúng không?)* |
| Phong | (cúi nhìn) ...あ、<ruby>矢印<rt>やじるし</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>です!<br>*(... A, mũi tên ngược!)* |
| Kobayashi | <ruby>非対称<rt>ひたいしょう</rt></ruby>パターンのタイヤだから、<ruby>回転方向<rt>かいてんほうこう</rt></ruby>が<ruby>決<rt>き</rt></ruby>まってる。「ROTATION」と<ruby>矢印<rt>やじるし</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>な。<br>*(Lốp gai bất đối xứng, hướng xoay đã xác định. Kiểm tra "ROTATION" và mũi tên nhé.)* |
| Phong | すみません。<ruby>気<rt>き</rt></ruby>づかずに<ruby>装着<rt>そうちゃく</rt></ruby>してしまいました。<ruby>外<rt>はず</rt></ruby>して<ruby>付<rt>つ</rt></ruby>け<ruby>直<rt>なお</rt></ruby>します。<br>*(Xin lỗi. Cháu lắp mà không để ý. Cháu tháo ra lắp lại ạ.)* |
| Kobayashi | <ruby>納車前<rt>のうしゃまえ</rt></ruby>で<ruby>気<rt>き</rt></ruby>づいてよかった。<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けたら<ruby>排水性<rt>はいすいせい</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちて、<ruby>雪道<rt>ゆきみち</rt></ruby>で<ruby>滑<rt>すべ</rt></ruby>るぞ。<br>*(May là phát hiện trước khi giao xe. Lắp ngược thì khả năng thoát nước kém, trượt trên tuyết đấy.)* |
| Phong | <ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる<ruby>大事<rt>だいじ</rt></ruby>なポイントですね。<ruby>次<rt>つぎ</rt></ruby>から<ruby>装着<rt>そうちゃく</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Liên quan tính mạng quan trọng nhỉ. Từ nay cháu sẽ kiểm tra trước khi lắp.)* |

---

## Tình huống 7 — Phòng nghỉ · 18:00, dự báo bão tuyết cuối tuần

*(Phong và Carlos ngồi uống trà nóng nhìn TV dự báo thời tiết.)*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>週末<rt>しゅうまつ</rt></ruby>すごい<ruby>雪<rt>ゆき</rt></ruby>になるってよ。20cmの<ruby>予報<rt>よほう</rt></ruby>。<br>*(Phong, cuối tuần có tuyết to lắm. Dự báo 20 cm.)* |
| Phong | 20センチ!<ruby>愛知<rt>あいち</rt></ruby>でそんなに?<br>*(20 cm! Aichi mà nhiều thế?)* |
| Carlos | 20<ruby>年<rt>ねん</rt></ruby>に1<ruby>回<rt>かい</rt></ruby>の<ruby>大雪<rt>おおゆき</rt></ruby>らしい。<ruby>週末<rt>しゅうまつ</rt></ruby>はロードサービスの<ruby>電話<rt>でんわ</rt></ruby>が<ruby>鳴<rt>な</rt></ruby>りっぱなしになるよ。<br>*(20 năm 1 lần đấy. Cuối tuần điện thoại cứu hộ chắc reo liên tục.)* |
| Phong | ロードサービス?<br>*(Cứu hộ?)* |
| Carlos | <ruby>事故<rt>じこ</rt></ruby>、スタック、バッテリー<ruby>上<rt>あ</rt></ruby>がり...いろいろ。<ruby>夜<rt>よる</rt></ruby><ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>されることもある。<br>*(Tai nạn, xe sa lầy, hết bình... đủ kiểu. Có khi bị gọi đêm.)* |
| Phong | <ruby>大変<rt>たいへん</rt></ruby>ですね。<ruby>覚悟<rt>かくご</rt></ruby>しておきます。<br>*(Vất vả nhỉ. Cháu chuẩn bị tinh thần.)* |
| Carlos | <ruby>小林<rt>こばやし</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>出<rt>で</rt></ruby>るらしいよ。<ruby>勉強<rt>べんきょう</rt></ruby>になる。<br>*(Em hình như đi với Kobayashi. Học được nhiều đấy.)* |

---

## Tình huống 8 — Ký túc · 23:45 tối thứ Bảy, điện thoại khẩn cấp

*(Tuyết rơi dày 15 cm bên ngoài. Phong vừa ngủ thì điện thoại reo.)*

| Vai | Lời thoại |
|---|---|
| Kobayashi | (qua điện thoại) フォン、<ruby>起<rt>お</rt></ruby>きてる?<ruby>緊急<rt>きんきゅう</rt></ruby>の<ruby>出動<rt>しゅつどう</rt></ruby>だ。<br>*(Phong, em dậy không? Có ca cứu hộ khẩn cấp.)* |
| Phong | はい!<ruby>起<rt>お</rt></ruby>きました。どんな<ruby>状況<rt>じょうきょう</rt></ruby>ですか?<br>*(Vâng! Cháu dậy rồi. Tình hình thế nào ạ?)* |
| Kobayashi | <ruby>東名<rt>とうめい</rt></ruby><ruby>高速<rt>こうそく</rt></ruby><ruby>豊田<rt>とよた</rt></ruby>JCT<ruby>付近<rt>ふきん</rt></ruby>でお<ruby>客様<rt>きゃくさま</rt></ruby>がスタック。<ruby>夏<rt>なつ</rt></ruby>タイヤのまま<ruby>走<rt>はし</rt></ruby>って<ruby>動<rt>うご</rt></ruby>けなくなった。<br>*(Khách bị sa lầy gần JCT Toyota trên cao tốc Tomei. Đi lốp hè bị kẹt.)* |
| Phong | はい、すぐ<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Vâng, cháu chuẩn bị ngay.)* |
| Kobayashi | <ruby>防寒着<rt>ぼうかんぎ</rt></ruby>、<ruby>長靴<rt>ながぐつ</rt></ruby>、<ruby>軍手<rt>ぐんて</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず。15<ruby>分<rt>ふん</rt></ruby><ruby>後<rt>ご</rt></ruby>にガレージで。<br>*(Bắt buộc: áo chống lạnh, ủng, găng tay. 15 phút nữa ở garage.)* |
| Phong | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました!<br>*(Vâng, rõ ạ!)* |

---

## Tình huống 9 — Cao tốc Tomei · 0:30 sáng, hiện trường cứu hộ

*(Tuyết rơi nghiêng. Xe khách nằm nghiêng trên làn khẩn cấp, đèn cảnh báo nhấp nháy. Khách đứng run.)*

| Vai | Lời thoại |
|---|---|
| Kobayashi | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?お<ruby>怪我<rt>けが</rt></ruby>はございませんか?<br>*(Quý khách có sao không ạ? Có bị thương không?)* |
| Khách Tamura | <ruby>怪我<rt>けが</rt></ruby>はない。でも<ruby>2時間<rt>にじかん</rt></ruby><ruby>動<rt>うご</rt></ruby>けなくて...<br>*(Không bị thương. Nhưng đã kẹt 2 tiếng...)* |
| Phong | お<ruby>寒<rt>さむ</rt></ruby>かったでしょう。まず<ruby>暖<rt>あたた</rt></ruby>かい<ruby>車<rt>くるま</rt></ruby>にお<ruby>移<rt>うつ</rt></ruby>りください。<br>*(Lạnh lắm phải không ạ. Trước hết mời ngài qua xe ấm ạ.)* |
| Kobayashi | フォン、<ruby>三角表示板<rt>さんかくひょうじばん</rt></ruby>はもう<ruby>置<rt>お</rt></ruby>かれている。<ruby>発煙筒<rt>はつえんとう</rt></ruby>を50m<ruby>後方<rt>こうほう</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>で<ruby>置<rt>お</rt></ruby>いて。<br>*(Phong, biển tam giác đã đặt. Đặt thêm pháo khói cách 50 m phía sau.)* |
| Phong | はい!<br>*(Vâng!)* |
| Kobayashi | (với khách) お<ruby>車<rt>くるま</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。タイヤチェーンはございますか?<br>*(Tôi kiểm tra xe. Ngài có xích tuyết không ạ?)* |
| Khách Tamura | ない...<ruby>愛知<rt>あいち</rt></ruby>でこんなに<ruby>降<rt>ふ</rt></ruby>るとは<ruby>思<rt>おも</rt></ruby>わなくて。<br>*(Không... Không nghĩ Aichi tuyết nhiều thế này.)* |

---

## Tình huống 10 — Hiện trường · 0:45 sáng, quyết định kéo xe

| Vai | Lời thoại |
|---|---|
| Kobayashi | この<ruby>状況<rt>じょうきょう</rt></ruby>では<ruby>現場<rt>げんば</rt></ruby>で<ruby>脱出<rt>だっしゅつ</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>です。<ruby>牽引<rt>けんいん</rt></ruby>させていただきます。<br>*(Tình huống này không thể tự thoát tại chỗ. Chúng tôi xin được kéo xe ạ.)* |
| Khách Tamura | <ruby>料金<rt>りょうきん</rt></ruby>は?<br>*(Phí bao nhiêu?)* |
| Kobayashi | <ruby>夜間<rt>やかん</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>と<ruby>高速<rt>こうそく</rt></ruby><ruby>料金<rt>りょうきん</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>めて、<ruby>当社<rt>とうしゃ</rt></ruby>のガレージまで22,000<ruby>円<rt>えん</rt></ruby>です。<ruby>JAF<rt>じゃふ</rt></ruby><ruby>会員<rt>かいいん</rt></ruby>でしたら<ruby>無料<rt>むりょう</rt></ruby>です。<br>*(Bao gồm phí ban đêm và phí cao tốc, đến garage chúng tôi là 22.000 yên. Hội viên JAF thì miễn phí.)* |
| Khách Tamura | <ruby>会員<rt>かいいん</rt></ruby>じゃない...22,000か...<ruby>仕方<rt>しかた</rt></ruby>ないな。<ruby>頼<rt>たの</rt></ruby>む。<br>*(Tôi không phải hội viên... 22.000 à... Đành chịu. Nhờ anh.)* |
| Kobayashi | こちらに<ruby>署名<rt>しょめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>牽引<rt>けんいん</rt></ruby><ruby>同意書<rt>どういしょ</rt></ruby>です。<br>*(Xin ngài ký vào đây. Đơn đồng ý kéo xe ạ.)* |
| Phong | (lắp xong pháo khói) <ruby>後方<rt>こうほう</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby><ruby>設置<rt>せっち</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です!<br>*(Đã hoàn tất đặt cảnh báo phía sau!)* |
| Kobayashi | <ruby>良<rt>よ</rt></ruby>し。<ruby>牽引<rt>けんいん</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>するぞ。フォン、<ruby>後輪<rt>こうりん</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Tốt. Chuẩn bị kéo. Phong, kiểm tra tình trạng bánh sau.)* |

---

## Tình huống 11 — Garage · 2:15 sáng, về đến nơi

| Vai | Lời thoại |
|---|---|
| Kobayashi | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby>いたしました。お<ruby>疲<rt>つか</rt></ruby>れさまでございました。<br>*(Quý khách, đã đến nơi an toàn. Xin lỗi vì ngài đã vất vả.)* |
| Khách Tamura | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かった。ありがとう。<br>*(Tôi thật sự được cứu. Cảm ơn.)* |
| Phong | お<ruby>客様<rt>きゃくさま</rt></ruby>、<ruby>今夜<rt>こんや</rt></ruby>はどうされますか? タクシーをお<ruby>呼<rt>よ</rt></ruby>びしましょうか?<br>*(Quý khách tối nay sẽ làm gì ạ? Cháu gọi taxi nhé ạ?)* |
| Khách Tamura | <ruby>朝<rt>あさ</rt></ruby>までここで<ruby>待<rt>ま</rt></ruby>てる?<br>*(Đợi đến sáng ở đây được không?)* |
| Phong | (nhìn Kobayashi) <ruby>小林<rt>こばやし</rt></ruby>さん?<br>*(Anh Kobayashi?)* |
| Kobayashi | <ruby>事務所<rt>じむしょ</rt></ruby>にソファがございます。<ruby>暖房<rt>だんぼう</rt></ruby>もありますので、お<ruby>休<rt>やす</rt></ruby>みください。<ruby>朝<rt>あさ</rt></ruby>8<ruby>時<rt>じ</rt></ruby>から<ruby>営業<rt>えいぎょう</rt></ruby>します。<br>*(Văn phòng có sô-pha. Có sưởi nữa, mời ngài nghỉ ngơi. 8 giờ sáng mở cửa ạ.)* |
| Khách Tamura | (cúi đầu) ありがとうございます。<br>*(Cảm ơn nhiều ạ.)* |
| Phong | <ruby>毛布<rt>もうふ</rt></ruby>とお<ruby>湯<rt>ゆ</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>いたします。<br>*(Cháu chuẩn bị chăn và nước nóng ạ.)* |

---

## Tình huống 12 — Garage · 8:30 sáng Chủ nhật, báo cáo 工場長

| Vai | Lời thoại |
|---|---|
| 工場長 | <ruby>昨夜<rt>さくや</rt></ruby>のロードサービス、<ruby>報告<rt>ほうこく</rt></ruby>を。<br>*(Cứu hộ đêm qua, báo cáo đi.)* |
| Kobayashi | はい。<ruby>東名<rt>とうめい</rt></ruby>でスタック1<ruby>件<rt>けん</rt></ruby>。<ruby>夏<rt>なつ</rt></ruby>タイヤのままの<ruby>客様<rt>きゃくさま</rt></ruby>を<ruby>牽引<rt>けんいん</rt></ruby>して<ruby>当店<rt>とうてん</rt></ruby>へ。<ruby>怪我人<rt>けがにん</rt></ruby>なし。<br>*(Vâng. 1 ca sa lầy trên Tomei. Khách dùng lốp hè, đã kéo về cửa hàng. Không có người bị thương.)* |
| 工場長 | フォン、<ruby>初<rt>はじ</rt></ruby>めての<ruby>夜間<rt>やかん</rt></ruby><ruby>出動<rt>しゅつどう</rt></ruby>はどうだった?<br>*(Phong, ca cứu hộ đêm đầu tiên thế nào?)* |
| Phong | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>しました。<ruby>高速<rt>こうそく</rt></ruby><ruby>道路<rt>どうろ</rt></ruby>の<ruby>路肩<rt>ろかた</rt></ruby>はとても<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Thật lòng cháu rất căng. Lề cao tốc đáng sợ lắm ạ.)* |
| Phong | でも<ruby>小林<rt>こばやし</rt></ruby>さんが<ruby>三角表示板<rt>さんかくひょうじばん</rt></ruby>や<ruby>発煙筒<rt>はつえんとう</rt></ruby>の<ruby>置<rt>お</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくれて、<ruby>安全<rt>あんぜん</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さが<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Nhưng anh Kobayashi dạy cháu cách đặt biển tam giác, pháo khói — cháu hiểu tầm quan trọng của đảm bảo an toàn.)* |
| 工場長 | <ruby>整備士<rt>せいびし</rt></ruby>はガレージだけの<ruby>仕事<rt>しごと</rt></ruby>じゃない。<ruby>現場対応<rt>げんばたいおう</rt></ruby>もできて<ruby>一人前<rt>いちにんまえ</rt></ruby>だ。<br>*(Thợ máy không chỉ làm trong garage. Ứng phó hiện trường được mới là một người thành nghề.)* |
| Phong | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございました。<br>*(Vâng, cháu học được nhiều. Cảm ơn chú ạ.)* |

---

## Tình huống 13 — Phòng nghỉ · 11:00, Phong gọi điện về Hải Phòng

> Cảnh tiếng Việt — Phong nói chuyện với em trai Hoàng (18 tuổi).

| Vai | Lời thoại |
|---|---|
| Phong | Hoàng ơi, đêm qua anh đi cứu hộ trên cao tốc đầu tiên đấy. |
| Hoàng | Eo, anh đi cao tốc ban đêm có tuyết á? Nguy hiểm không? |
| Phong | Có. Tuyết rơi 15cm, gió mạnh. Khách đi lốp hè bị sa lầy trên cao tốc Tomei. Anh phụ sempai Kobayashi đặt biển tam giác và pháo khói. |
| Hoàng | Pháo khói á? Như pháo bóng đá á? |
| Phong | Không, là pháo cảnh báo đỏ — gọi là 発煙筒. Đặt cách xe 50 mét phía sau để xe khác thấy. |
| Hoàng | Hay đấy. Lương có thêm không anh? |
| Phong | Có. Ca đêm gấp 1.5 lần. Hôm qua kiếm thêm khoảng 8.000 yên cho 3 tiếng. |
| Hoàng | Khoảng 1.3 triệu VND à? Ngon đấy. Hôm nào em sang Nhật làm với anh được không? |
| Phong | Em phải học hết cấp 3 đã. Sau đó học ô tô như anh. Tiếng Nhật N4 trở lên mới được. |
| Hoàng | Em đang học rồi mà. Tuần này được 80 điểm tiếng Anh đấy. |
| Phong | Giỏi. Nhưng em chuyển qua tiếng Nhật thì hơn. Cơ hội nhiều hơn. |
| Hoàng | Vâng anh. Anh giữ ấm nha, đừng để cảm nhé. |
| Phong | Anh có áo chống lạnh ヒートテック đầy đủ. Em yên tâm. |

---

## Đọng lại chương

**Mẫu câu lốp tuyết & cứu hộ** (phải thuộc lòng):
- **「製造年週は〜です」** — Đọc DOT (năm sản xuất)
- **「残り溝が新品時の50%以下です」** — Chuẩn đánh giá lốp tuyết
- **「規定トルクで締めます」** — Siết đúng mô-men quy định
- **「絶対に体重で締めるな」** — Không siết bằng sức người
- **「命に関わる」** — "Liên quan tính mạng" — câu nhấn mạnh an toàn
- **「お怪我はございませんか?」** — Câu cứu hộ đầu tiên
- **「まず暖かい車にお移りください」** — Bảo vệ khách trước
- **「現場で脱出は無理です」** — Quyết định kéo xe

> Từ vựng & mẫu câu chương này: スタッドレスタイヤ・製造年週・タイヤチェーン・ジャッキアップ・規定トルク・トルクレンチ・スパイクタイヤ・鋲・粉塵公害・非対称パターン・回転方向・排水性・ロードサービス・スタック・牽引・三角表示板・発煙筒・路肩

## Bí quyết chương

- DOT đọc trên sườn lốp: 4 chữ số = **tuần + năm** (vd "2422" = tuần 22 năm 2024).
- Lốp tuyết **dưới 50% rãnh** thì coi như hỏng — khác lốp hè.
- **トルクレンチ** là dụng cụ sinh mạng — đừng bao giờ siết "bằng cảm giác".
- Lốp gai bất đối xứng: kiểm tra **"ROTATION + mũi tên"** trước khi siết.
- Tại hiện trường tai nạn: 3 việc đầu — **kiểm tra thương tích → đưa khách qua xe ấm → đặt cảnh báo phía sau**.
- **JAF** (Hiệp hội ô tô Nhật) — hội viên cứu hộ miễn phí; khách không phải hội viên phải trả phí.
- Khách không có chỗ ngủ → mời nghỉ tại văn phòng + chăn + nước nóng = quan tâm vượt mong đợi.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| スタッドレスタイヤ | すたっどれすたいや | — | Lốp tuyết (không đinh) |
| 車種 | しゃしゅ | XA CHỦNG | Dòng xe |
| 在庫 | ざいこ | TẠI KHỐ | Hàng tồn |
| 組み替え | くみかえ | TỔ THẾ | Thay lốp lên mâm |
| 新品 | しんぴん | TÂN PHẨM | Hàng mới |
| 税込 | ぜいこみ | THUẾ — | Đã gồm thuế |
| 製造年週 | せいぞうねんしゅう | CHẾ TẠO NIÊN CHU | Năm/tuần sản xuất |
| 寿命 | じゅみょう | THỌ MỆNH | Tuổi thọ |
| 雪上性能 | せつじょうせいのう | TUYẾT THƯỢNG TÍNH NĂNG | Hiệu năng trên tuyết |
| 素材 | そざい | TỐ TÀI | Vật liệu |
| 経年 | けいねん | KINH NIÊN | Theo năm tháng |
| ジャッキアップ | じゃっきあっぷ | — | Kích xe lên |
| ホイール | ほいーる | — | Mâm |
| バランス取り | ばらんすとり | — | Cân bằng (lốp) |
| 規定トルク | きていとるく | QUY ĐỊNH — | Mô-men quy định |
| トルクレンチ | とるくれんち | — | Cờ-lê mô-men |
| 体重 | たいじゅう | THỂ TRỌNG | Sức nặng cơ thể |
| 緩い | ゆるい | HOÃN | Lỏng |
| スパイクタイヤ | すぱいくたいや | — | Lốp đinh |
| 鋲 | びょう | ĐINH | Đinh, vít kim loại |
| 粉塵公害 | ふんじんこうがい | PHẤN TRẦN CÔNG HẠI | Ô nhiễm bụi |
| 環境 | かんきょう | HOÀN CẢNH | Môi trường |
| タイヤチェーン | たいやちぇーん | — | Xích tuyết |
| 装着 | そうちゃく | TRANG TRƯỚC | Lắp đặt |
| 速度 | そくど | TỐC ĐỘ | Tốc độ |
| 頻度 | ひんど | TẦN ĐỘ | Tần suất |
| 雪国 | ゆきぐに | TUYẾT QUỐC | Vùng tuyết |
| 非金属 | ひきんぞく | PHI KIM THUỘC | Phi kim loại |
| 非対称パターン | ひたいしょうぱたーん | PHI ĐỐI XỨNG — | Gai lốp bất đối xứng |
| 回転方向 | かいてんほうこう | HỒI CHUYỂN PHƯƠNG HƯỚNG | Chiều xoay |
| 排水性 | はいすいせい | BÀI THUỶ TÍNH | Khả năng thoát nước |
| 滑る | すべる | HOẠT | Trượt |
| ロードサービス | ろーどさーびす | — | Dịch vụ cứu hộ |
| スタック | すたっく | — | Sa lầy, kẹt |
| 牽引 | けんいん | KHIÊN DẪN | Kéo xe |
| 防寒着 | ぼうかんぎ | PHÒNG HÀN TRỨC | Áo chống lạnh |
| 長靴 | ながぐつ | TRƯỜNG ỦNG | Ủng |
| 軍手 | ぐんて | QUÂN THỦ | Găng tay vải |
| 三角表示板 | さんかくひょうじばん | TAM GIÁC BIỂU THỊ BẢN | Biển cảnh báo tam giác |
| 発煙筒 | はつえんとう | PHÁT YÊN ĐỒNG | Pháo khói cảnh báo |
| 路肩 | ろかた | LỘ KIÊN | Lề đường |
| JAF | じゃふ | — | Hiệp hội ô tô Nhật |
| 夜間 | やかん | DẠ GIAN | Ban đêm |
| 毛布 | もうふ | MAO BỐ | Chăn |
| 現場対応 | げんばたいおう | HIỆN TRƯỜNG ỨNG ĐỐI | Ứng phó hiện trường |
| 一人前 | いちにんまえ | NHẤT NHÂN TIỀN | Thành nghề, đủ tự lập |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (844000012, 800000044, NULL, 'markdown_book', 'T12. Tổng kết năm 2 — đậu N3, đậu 整備士 3級', '# Sách thực tập sinh ô tô năm 2 · T12. Tổng kết năm 2 — đậu N3, đậu 整備士 3級

> **Mục tiêu nhân vật:** Phong (23 tuổi, cuối tháng 3/2027, ngành ô tô, N3). CHƯƠNG KẾT NĂM 2. Học các mẫu hội thoại tiếng Nhật để: (1) nhận tin đỗ N3 và 整備士 3級, (2) thông báo cấp trên + đồng nghiệp, (3) bàn về lương sau khi lên 整備士, (4) chuẩn bị tinh thần cho năm 3 và đường SSW (特定技能), (5) tiễn 1 sempai về nước, (6) tự nhìn lại 24 tháng đã qua.

## Bối cảnh

Cuối tháng 3 năm 2027 — tròn 2 năm Phong đặt chân đến Nhật. Hai tin vui dồn dập trong 10 ngày: đầu tháng 3 có kết quả N3 (đỗ 132/180), giữa tháng có kết quả 自動車整備士 3級 シャシ (đỗ với 78/100). Đây là 2 chứng chỉ Phong đặt mục tiêu từ đầu năm 2. Đồng thời, sempai người Brazil Carlos vừa hoàn thành 3 năm TTS và chuyển sang SSW1 (特定技能1号) tại chính garage này — mở ra con đường cho Phong khi sang năm 3. Chương tổng kết kết quả + định hướng năm 3 + tâm trạng nhìn lại.

---

## Tình huống 1 — Phòng nghỉ · 7:30 sáng, Phong mở mail kết quả N3

*(Phong nâng điện thoại run run, mở mail từ JEES.)*

| Vai | Lời thoại |
|---|---|
| Phong | (thì thầm) <ruby>合格<rt>ごうかく</rt></ruby>...<ruby>合格<rt>ごうかく</rt></ruby>って<ruby>書<rt>か</rt></ruby>いてある!<br>*(Đỗ... có ghi là đỗ!)* |
| Carlos | (vào phòng) フォン、<ruby>顔<rt>かお</rt></ruby><ruby>赤<rt>あか</rt></ruby>いぞ。<ruby>熱<rt>ねつ</rt></ruby>でも?<br>*(Phong, mặt đỏ kìa. Sốt à?)* |
| Phong | カルロスさん!N3<ruby>受<rt>う</rt></ruby>かった!132<ruby>点<rt>てん</rt></ruby>!<br>*(Anh Carlos! Đỗ N3 rồi! 132 điểm!)* |
| Carlos | (giơ tay đập tay) おめでとう!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ったな。<br>*(Chúc mừng! Em đã cố gắng thật sự!)* |
| Phong | カルロスさんのおかげです。<ruby>夜<rt>よる</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>してた<ruby>時<rt>とき</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からない<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Nhờ anh Carlos. Lúc cháu học tối, anh đã dạy ngữ pháp khó.)* |
| Carlos | <ruby>俺<rt>おれ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>ししか<ruby>教<rt>おし</rt></ruby>えてない。<ruby>続<rt>つづ</rt></ruby>けたのはお<ruby>前<rt>まえ</rt></ruby>だよ。<br>*(Anh chỉ dạy chút thôi. Người duy trì là em.)* |
| Phong | <ruby>次<rt>つぎ</rt></ruby>は<ruby>整備士<rt>せいびし</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>...<ruby>来週<rt>らいしゅう</rt></ruby>です。<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Tiếp theo là kết quả 整備士 3 cấp... tuần sau. Hồi hộp lắm.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>実技<rt>じつぎ</rt></ruby>も<ruby>筆記<rt>ひっき</rt></ruby>も<ruby>手<rt>て</rt></ruby>ごたえあっただろ?<br>*(Yên tâm. Cả thực hành lẫn lý thuyết em đã có cảm giác làm được mà?)* |

---

## Tình huống 2 — Quầy lễ tân · 8:30, báo cáo 工場長 việc đỗ N3

| Vai | Lời thoại |
|---|---|
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>のお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>時間<rt>じかん</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Chú quản lý, xin lỗi đã làm phiền lúc bận buổi sáng. Cháu có báo cáo ạ.)* |
| 工場長 | なんだ?<br>*(Chuyện gì?)* |
| Phong | <ruby>日本語<rt>にほんご</rt></ruby><ruby>能力試験<rt>のうりょくしけん</rt></ruby>N3に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Cháu đã đỗ kỳ thi Năng lực Tiếng Nhật N3 ạ.)* |
| 工場長 | おお!<ruby>素晴<rt>すば</rt></ruby>らしい!N4から1<ruby>年<rt>ねん</rt></ruby>でN3か。<br>*(Ồ! Tuyệt vời! Từ N4 lên N3 trong 1 năm à.)* |
| Phong | はい。<ruby>整備士<rt>せいびし</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>も<ruby>来週<rt>らいしゅう</rt></ruby><ruby>出<rt>で</rt></ruby>ます。<br>*(Vâng. Kết quả 整備士 3 cấp tuần sau cũng có ạ.)* |
| 工場長 | お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>が<ruby>急<rt>きゅう</rt></ruby>に<ruby>上手<rt>うま</rt></ruby>くなったのは<ruby>納得<rt>なっとく</rt></ruby>だ。<ruby>田中<rt>たなか</rt></ruby>さんも<ruby>褒<rt>ほ</rt></ruby>めていたよ。<br>*(Hèn gì gần đây em ứng xử với khách đột nhiên giỏi hẳn. Ông Tanaka cũng khen đấy.)* |
| Phong | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。これからも<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Cháu ngại quá ạ. Từ nay cháu cũng tiếp tục học.)* |
| 工場長 | <ruby>朝礼<rt>ちょうれい</rt></ruby>でみんなに<ruby>発表<rt>はっぴょう</rt></ruby>しよう。みんな<ruby>励<rt>はげ</rt></ruby>みになるからな。<br>*(Trong họp giao ban thông báo cho mọi người. Sẽ là động lực cho mọi người.)* |

---

## Tình huống 3 — Phòng họp · 8:45, thông báo trong họp giao ban

| Vai | Lời thoại |
|---|---|
| 工場長 | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>、まずフォンくんから<ruby>嬉<rt>うれ</rt></ruby>しい<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Họp giao ban hôm nay, đầu tiên có tin vui từ Phong.)* |
| Phong | (đứng dậy, cúi đầu) おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>皆<rt>みな</rt></ruby>さんにご<ruby>報告<rt>ほうこく</rt></ruby>がございます。<br>*(Chào buổi sáng. Hôm nay cháu xin báo cáo mọi người.)* |
| Phong | <ruby>先日<rt>せんじつ</rt></ruby><ruby>受<rt>う</rt></ruby>けました<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力試験<rt>のうりょくしけん</rt></ruby>N3に<ruby>合格<rt>ごうかく</rt></ruby>することができました。<br>*(Kỳ thi Năng lực Tiếng Nhật N3 cháu thi vừa rồi, cháu đã đỗ ạ.)* |
| Phong | これは<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>小林<rt>こばやし</rt></ruby>さん、カルロスさん、そして<ruby>皆<rt>みな</rt></ruby>さんの<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>会話<rt>かいわ</rt></ruby>のおかげです。<br>*(Đây là nhờ anh Sato, anh Kobayashi, anh Carlos và mọi người trò chuyện hàng ngày với cháu ạ.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。(cúi đầu sâu)<br>*(Cháu thật sự cảm ơn ạ. Từ nay cũng mong mọi người chiếu cố. — cúi đầu sâu —)* |
| Sato | (vỗ tay) おめでとう、フォン!<br>*(Chúc mừng, Phong!)* |
| Carlos | <ruby>次<rt>つぎ</rt></ruby>はN2だな!<br>*(Tiếp là N2 nhỉ!)* |
| Kobayashi | <ruby>整備士<rt>せいびし</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>もたぶん<ruby>受<rt>う</rt></ruby>かってるよ。<ruby>練習<rt>れんしゅう</rt></ruby>たくさんしたから。<br>*(整備士 3 cấp chắc cũng đỗ rồi. Em luyện nhiều lắm mà.)* |

---

## Tình huống 4 — Xưởng · 14:00 một tuần sau, mở thư kết quả 整備士

*(Phong cầm phong bì màu trắng từ 一般社団法人 日本自動車整備振興会, tay run.)*

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>開<rt>あ</rt></ruby>けてみろ。<ruby>俺<rt>おれ</rt></ruby>たち<ruby>全員<rt>ぜんいん</rt></ruby><ruby>見<rt>み</rt></ruby>てるぞ。<br>*(Mở đi. Bọn anh đều xem đấy.)* |
| Phong | (mở phong bì, lấy ra giấy)...「<ruby>合格<rt>ごうかく</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります!<ruby>得点<rt>とくてん</rt></ruby>は78<ruby>点<rt>てん</rt></ruby>!<br>*(... có ghi "Đỗ"! Điểm là 78!)* |
| Kobayashi | やった!<ruby>祝<rt>いわ</rt></ruby>いだ<ruby>祝<rt>いわ</rt></ruby>いだ!<br>*(Hay quá! Chúc mừng chúc mừng!)* |
| Carlos | フォン、これで<ruby>正式<rt>せいしき</rt></ruby>に<ruby>自動車整備士<rt>じどうしゃせいびし</rt></ruby>3<ruby>級<rt>きゅう</rt></ruby>だ。<br>*(Phong, thế là chính thức 自動車整備士 3 cấp rồi.)* |
| Phong | (giọng nghẹn) <ruby>実技試験<rt>じつぎしけん</rt></ruby>で<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えて、<ruby>落<rt>お</rt></ruby>ちたかと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Lúc thi thực hành tay cháu run, cháu tưởng trượt rồi ạ.)* |
| Sato | <ruby>緊張<rt>きんちょう</rt></ruby>するのが<ruby>普通<rt>ふつう</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>してただろ。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えてる。<br>*(Hồi hộp là bình thường. Mày luyện mỗi ngày mà. Cơ thể nhớ rồi.)* |
| Phong | はい。ありがとうございます、<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(Vâng. Cảm ơn anh Sato.)* |

---

## Tình huống 5 — Phòng 工場長 · 15:30, bàn về lương sau khi lên 整備士

| Vai | Lời thoại |
|---|---|
| 工場長 | フォンくん、<ruby>座<rt>すわ</rt></ruby>って。<ruby>給与<rt>きゅうよ</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>がある。<br>*(Phong, ngồi đi. Có chuyện về lương.)* |
| Phong | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, xin phép ạ.)* |
| 工場長 | 3<ruby>級<rt>きゅう</rt></ruby><ruby>整備士<rt>せいびし</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>により、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>として<ruby>月<rt>つき</rt></ruby>15,000<ruby>円<rt>えん</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Theo việc đạt chứng chỉ 整備士 3 cấp, từ tháng sau anh sẽ thêm 15.000 yên/tháng phụ cấp chứng chỉ.)* |
| Phong | え!ありがとうございます!<br>*(Ơ! Cảm ơn chú ạ!)* |
| 工場長 | それに、<ruby>来年度<rt>らいねんど</rt></ruby>の<ruby>昇給<rt>しょうきゅう</rt></ruby>で<ruby>基本給<rt>きほんきゅう</rt></ruby>も10,000<ruby>円<rt>えん</rt></ruby><ruby>上<rt>あ</rt></ruby>がる。<ruby>合計<rt>ごうけい</rt></ruby>で<ruby>月<rt>つき</rt></ruby>25,000<ruby>円<rt>えん</rt></ruby><ruby>増<rt>ふ</rt></ruby>えることになる。<br>*(Còn nữa, năm tài chính mới, lương cơ bản cũng tăng 10.000. Tổng cộng tăng 25.000 yên/tháng.)* |
| Phong | <ruby>本当<rt>ほんとう</rt></ruby>ですか!<ruby>家族<rt>かぞく</rt></ruby>にもっと<ruby>送<rt>おく</rt></ruby>れます。<br>*(Thật ạ! Cháu gửi về cho gia đình nhiều hơn được rồi.)* |
| 工場長 | それともう<ruby>一<rt>ひと</rt></ruby>つ。<ruby>来年<rt>らいねん</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>でTTS3<ruby>年目<rt>ねんめ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わる。<ruby>特定技能<rt>とくていぎのう</rt></ruby>に<ruby>移行<rt>いこう</rt></ruby>するか、<ruby>考<rt>かんが</rt></ruby>えておいて。<br>*(Còn một việc nữa. Tháng 3 năm sau là hết năm 3 TTS. Hãy suy nghĩ về việc chuyển sang 特定技能 (SSW1).)* |
| Phong | <ruby>特定技能<rt>とくていぎのう</rt></ruby>...カルロスさんと<ruby>同<rt>おな</rt></ruby>じですね。<br>*(SSW... giống anh Carlos nhỉ.)* |
| 工場長 | そう。3<ruby>級<rt>きゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>とN3があれば<ruby>条件<rt>じょうけん</rt></ruby><ruby>満<rt>み</rt></ruby>たす。うちで5<ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>けるぞ。<br>*(Đúng. Có 3 cấp và N3 là đủ điều kiện. Em có thể làm 5 năm nữa ở đây.)* |
| Phong | <ruby>家族<rt>かぞく</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>答<rt>こた</rt></ruby>えを<ruby>持<rt>も</rt></ruby>って<ruby>来<rt>き</rt></ruby>ます。<br>*(Cháu sẽ bàn với gia đình rồi mang câu trả lời đến ạ.)* |

---

## Tình huống 6 — Phòng nghỉ · 18:00, Carlos chia sẻ kinh nghiệm SSW1

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>になって<ruby>何<rt>なに</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりましたか?<br>*(Anh Carlos, sau khi lên SSW1 thì gì thay đổi ạ?)* |
| Carlos | まず<ruby>給料<rt>きゅうりょう</rt></ruby>。TTSの<ruby>時<rt>とき</rt></ruby>より<ruby>月<rt>つき</rt></ruby>5<ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>増<rt>ふ</rt></ruby>えた。<br>*(Trước hết là lương. Tăng 50.000 yên/tháng so với hồi TTS.)* |
| Phong | 5<ruby>万<rt>まん</rt></ruby>!<br>*(50.000!)* |
| Carlos | <ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>給与<rt>きゅうよ</rt></ruby>テーブルになるからな。それと、<ruby>転職<rt>てんしょく</rt></ruby><ruby>自由<rt>じゆう</rt></ruby>。TTSは<ruby>会社<rt>かいしゃ</rt></ruby><ruby>変<rt>か</rt></ruby>えられないけど、SSWは<ruby>同<rt>おな</rt></ruby>じ<ruby>業種<rt>ぎょうしゅ</rt></ruby>なら<ruby>変<rt>か</rt></ruby>えられる。<br>*(Theo bảng lương người Nhật. Còn nữa, được tự do chuyển việc. TTS không đổi được công ty, SSW thì cùng ngành thì đổi được.)* |
| Phong | <ruby>家族<rt>かぞく</rt></ruby>は<ruby>呼<rt>よ</rt></ruby>べないですよね?<br>*(Không gọi gia đình sang được nhỉ?)* |
| Carlos | SSW1は<ruby>呼<rt>よ</rt></ruby>べない。SSW2に<ruby>上<rt>あ</rt></ruby>がれば<ruby>呼<rt>よ</rt></ruby>べる。SSW2は<ruby>無期限<rt>むきげん</rt></ruby>で、<ruby>永住権<rt>えいじゅうけん</rt></ruby>も<ruby>狙<rt>ねら</rt></ruby>える。<br>*(SSW1 không gọi được. Lên SSW2 thì gọi được. SSW2 vô thời hạn, có thể nhắm đến vĩnh trú.)* |
| Phong | SSW2の<ruby>試験<rt>しけん</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Thi SSW2 khó không ạ?)* |
| Carlos | <ruby>整備士<rt>せいびし</rt></ruby>2<ruby>級<rt>きゅう</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>。<ruby>大変<rt>たいへん</rt></ruby>だけど、<ruby>不可能<rt>ふかのう</rt></ruby>ではない。<ruby>俺<rt>おれ</rt></ruby>も<ruby>今<rt>いま</rt></ruby><ruby>勉強中<rt>べんきょうちゅう</rt></ruby>。<br>*(Tương đương 整備士 2 cấp. Vất vả nhưng không phải không thể. Anh cũng đang học.)* |
| Phong | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りたいです。<br>*(Cháu muốn cùng cố gắng với anh.)* |

---

## Tình huống 7 — Quầy lễ tân · 11:00 vài hôm sau, khách Tanaka quay lại

| Vai | Lời thoại |
|---|---|
| Tanaka | フォンくん、<ruby>合格<rt>ごうかく</rt></ruby><ruby>聞<rt>き</rt></ruby>いたよ。おめでとう。<br>*(Phong, tôi nghe tin đỗ rồi. Chúc mừng.)* |
| Phong | <ruby>田中様<rt>たなかさま</rt></ruby>、ありがとうございます。どうしてご<ruby>存知<rt>ぞんじ</rt></ruby>でしょうか?<br>*(Ngài Tanaka, cảm ơn ngài. Sao ngài biết ạ?)* |
| Tanaka | <ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>店<rt>みせ</rt></ruby>に<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、<ruby>自慢<rt>じまん</rt></ruby>してたぞ。「うちのフォンが2つも<ruby>受<rt>う</rt></ruby>かった」って。<br>*(Lúc anh Sato đến tiệm, đã khoe đấy. "Phong của tôi đỗ cả 2 cái.")* |
| Phong | (đỏ mặt) <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Cháu ngại quá ạ.)* |
| Tanaka | これ、お<ruby>祝<rt>いわ</rt></ruby>い。<ruby>家族<rt>かぞく</rt></ruby>と<ruby>食<rt>た</rt></ruby>べな。(đưa hộp lớn)<br>*(Đây, quà mừng. Ăn với gia đình. — đưa hộp lớn —)* |
| Phong | こんなに...いただいてもよろしいのですか?<br>*(Nhiều quá... cháu nhận được không ạ?)* |
| Tanaka | <ruby>遠慮<rt>えんりょ</rt></ruby>するな。お<ruby>前<rt>まえ</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>の<ruby>大事<rt>だいじ</rt></ruby>な<ruby>担当<rt>たんとう</rt></ruby>だ。<br>*(Đừng ngại. Em là người phụ trách quan trọng của tôi.)* |
| Phong | (cúi đầu sâu) <ruby>大切<rt>たいせつ</rt></ruby>にいただきます。これからも<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>させていただきます。<br>*(Cháu xin trân trọng nhận. Từ nay cháu cũng sẽ phụ trách hết sức ạ.)* |

---

## Tình huống 8 — Bãi đậu xe · 17:00, tiễn sempai Nhật rời garage

*(Một sempai Nhật — Tanaka Yuji, 28t — sau 5 năm làm ở garage chuyển sang một đại lý Toyota lớn hơn ở Nagoya.)*

| Vai | Lời thoại |
|---|---|
| Tanaka Yuji | フォン、<ruby>世話<rt>せわ</rt></ruby>になったな。1<ruby>年<rt>ねん</rt></ruby><ruby>半<rt>はん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>けて<ruby>良<rt>よ</rt></ruby>かった。<br>*(Phong, cảm ơn em đã đồng hành. May là làm cùng em 1 năm rưỡi.)* |
| Phong | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、ボルトサイズ<ruby>覚<rt>おぼ</rt></ruby>えるのを<ruby>手伝<rt>てつだ</rt></ruby>っていただきました。<br>*(Anh Tanaka, hồi đầu anh đã giúp cháu nhớ kích thước bu lông.)* |
| Tanaka Yuji | <ruby>覚<rt>おぼ</rt></ruby>えてるんだ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>外国<rt>がいこく</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるの<ruby>初<rt>はじ</rt></ruby>めてで、お<ruby>互<rt>たが</rt></ruby>い<ruby>勉強<rt>べんきょう</rt></ruby>になった。<br>*(Em nhớ à. Anh cũng lần đầu dạy đàn em nước ngoài. Cả 2 cùng học.)* |
| Phong | <ruby>名古屋<rt>なごや</rt></ruby>の<ruby>新<rt>あたら</rt></ruby>しい<ruby>職場<rt>しょくば</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Chỗ làm mới ở Nagoya, anh cố gắng nhé.)* |
| Tanaka Yuji | お<ruby>前<rt>まえ</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>れ。<ruby>特定技能<rt>とくていぎのう</rt></ruby>になったら<ruby>俺<rt>おれ</rt></ruby>のディーラーに<ruby>来<rt>こ</rt></ruby>いよ。<ruby>給料<rt>きゅうりょう</rt></ruby><ruby>高<rt>たか</rt></ruby>いぞ。<br>*(Em cố lên. Khi lên SSW thì sang đại lý anh đi. Lương cao đấy.)* |
| Phong | え、いいんですか?<br>*(Ơ, được ạ?)* |
| Tanaka Yuji | <ruby>本気<rt>ほんき</rt></ruby>だ。<ruby>連絡先<rt>れんらくさき</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>しよう。<br>*(Anh nghiêm túc. Trao đổi liên lạc đi.)* |
| Phong | (chìa điện thoại) LINEでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin anh kết bạn LINE ạ.)* |

---

## Tình huống 9 — Garage · 19:00, dọn dẹp cuối ngày Sato dặn dò

| Vai | Lời thoại |
|---|---|
| Sato | フォン、<ruby>来年<rt>らいねん</rt></ruby>は<ruby>3年目<rt>さんねんめ</rt></ruby>だな。<br>*(Phong, sang năm là năm thứ 3 nhỉ.)* |
| Phong | はい。<ruby>早<rt>はや</rt></ruby>かったです。<br>*(Vâng. Nhanh quá ạ.)* |
| Sato | <ruby>3年目<rt>さんねんめ</rt></ruby>からは<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>える<ruby>立場<rt>たちば</rt></ruby>になる。<ruby>新<rt>あたら</rt></ruby>しいベトナム<ruby>人<rt>じん</rt></ruby>2<ruby>人<rt>にん</rt></ruby>が<ruby>来年<rt>らいねん</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>に<ruby>来<rt>く</rt></ruby>る。<br>*(Từ năm thứ 3 sẽ ở vị thế dạy đàn em. 2 người Việt mới sẽ đến tháng 4 năm sau.)* |
| Phong | <ruby>後輩<rt>こうはい</rt></ruby>...<ruby>不安<rt>ふあん</rt></ruby>です。<ruby>教<rt>おし</rt></ruby>えられるでしょうか。<br>*(Đàn em... cháu lo. Cháu dạy được không.)* |
| Sato | お<ruby>前<rt>まえ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からなかった<ruby>頃<rt>ころ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちを<ruby>覚<rt>おぼ</rt></ruby>えてるだろ?<ruby>それが一番<rt>それがいちばん</rt></ruby>の<ruby>武器<rt>ぶき</rt></ruby>だ。<br>*(Mày nhớ tâm trạng hồi không hiểu chứ? Đó là vũ khí số 1.)* |
| Phong | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>戸惑<rt>とまど</rt></ruby>った<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えます。<br>*(Cháu hiểu rồi. Cháu sẽ dạy trước những chỗ cháu từng lúng túng.)* |
| Sato | そう。あと、<ruby>厳<rt>きび</rt></ruby>しすぎないこと。<ruby>俺<rt>おれ</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しかったから、お<ruby>前<rt>まえ</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけろ。<br>*(Đúng. Còn nữa, đừng khắt khe quá. Anh khắt khe nên mày tự tìm cách riêng.)* |
| Phong | <ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>厳<rt>きび</rt></ruby>しかったから、<ruby>私<rt>わたし</rt></ruby>は<ruby>育<rt>そだ</rt></ruby>ったと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Nhờ anh Sato khắt khe nên cháu mới trưởng thành ạ.)* |
| Sato | (nhìn đi chỗ khác) ...<ruby>余計<rt>よけい</rt></ruby>なこと<ruby>言<rt>い</rt></ruby>うな。<ruby>早<rt>はや</rt></ruby>く<ruby>片付<rt>かたづ</rt></ruby>けろ。<br>*(... Đừng nói thừa. Dọn nhanh đi.)* |
| Phong | (mỉm cười) はい!<br>*(Vâng!)* |

---

## Tình huống 10 — Ký túc · 21:00, Phong gọi 監理団体 báo SSW

| Vai | Lời thoại |
|---|---|
| Cán bộ | はい、<ruby>監理団体<rt>かんりだんたい</rt></ruby><ruby>愛知<rt>あいち</rt></ruby>です。<br>*(Vâng, đoàn quản lý Aichi đây.)* |
| Phong | お<ruby>世話<rt>せわ</rt></ruby>になっております。フォン・グエンと<ruby>申<rt>もう</rt></ruby>します。ご<ruby>相談<rt>そうだん</rt></ruby>がございます。<br>*(Cảm ơn anh đã chiếu cố. Tôi là Nguyễn Phong. Tôi có việc cần tư vấn ạ.)* |
| Cán bộ | はい、どうぞ。<br>*(Vâng, mời nói.)* |
| Phong | <ruby>来年<rt>らいねん</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>でTTS<ruby>満了<rt>まんりょう</rt></ruby>になります。<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>への<ruby>移行<rt>いこう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Tháng 3 năm sau tôi hoàn thành TTS. Tôi đang nghĩ đến việc chuyển sang SSW1.)* |
| Cán bộ | かしこまりました。<ruby>整備士<rt>せいびし</rt></ruby><ruby>資格<rt>しかく</rt></ruby>はお<ruby>持<rt>も</rt></ruby>ちですか?<br>*(Vâng. Anh có chứng chỉ 整備士 không ạ?)* |
| Phong | はい、3<ruby>級<rt>きゅう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>しました。N3も<ruby>合格<rt>ごうかく</rt></ruby>しています。<br>*(Vâng, tôi có 3 cấp. N3 cũng đỗ rồi.)* |
| Cán bộ | <ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>技能評価試験<rt>ぎのうひょうかしけん</rt></ruby>は<ruby>免除<rt>めんじょ</rt></ruby>されます。<ruby>書類<rt>しょるい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Tuyệt. Kỳ thi đánh giá kỹ năng được miễn. Mình tiến hành chuẩn bị hồ sơ nhé.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。いつから<ruby>始<rt>はじ</rt></ruby>めればよろしいですか?<br>*(Vâng, nhờ anh. Bắt đầu khi nào được ạ?)* |
| Cán bộ | <ruby>来月<rt>らいげつ</rt></ruby>から<ruby>順次<rt>じゅんじ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めましょう。6<ruby>か月<rt>かげつ</rt></ruby><ruby>前<rt>まえ</rt></ruby>からの<ruby>申請<rt>しんせい</rt></ruby>が<ruby>確実<rt>かくじつ</rt></ruby>です。<br>*(Tháng sau bắt đầu thu thập hồ sơ tuần tự. Nộp đơn trước 6 tháng là chắc.)* |
| Phong | わかりました。ありがとうございます。<br>*(Tôi hiểu rồi. Cảm ơn anh.)* |

---

## Tình huống 11 — Phòng nghỉ · 22:00, Phong nhìn lại 2 năm với sổ tay

*(Phong mở cuốn sổ tay đã ghi từ ngày đầu sang Nhật.)*

| Vai | Lời thoại |
|---|---|
| Carlos | (vào) フォン、<ruby>何<rt>なに</rt></ruby><ruby>見<rt>み</rt></ruby>てるの?<br>*(Phong, em xem gì đấy?)* |
| Phong | (mỉm cười) <ruby>2年前<rt>にねんまえ</rt></ruby>のメモです。<ruby>初日<rt>しょにち</rt></ruby>、ガレージで<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>書<rt>か</rt></ruby>き<ruby>留<rt>と</rt></ruby>めました。<br>*(Sổ ghi 2 năm trước. Ngày đầu tiên ở garage, cháu ghi tên dụng cụ.)* |
| Carlos | <ruby>見<rt>み</rt></ruby>せて。<br>*(Cho xem.)* |
| Phong | (đưa) ここに「スパナ = chìa khoá」「ボルト = bù lon」って...<ruby>幼稚<rt>ようち</rt></ruby>ですね。<br>*(Đây cháu ghi "spanner = chìa khoá", "bolt = bù lon"... trẻ con nhỉ.)* |
| Carlos | <ruby>幼稚<rt>ようち</rt></ruby>じゃない。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>記録<rt>きろく</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>もブラジルから<ruby>来<rt>き</rt></ruby>た<ruby>時<rt>とき</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じだった。<br>*(Không trẻ con. Là ghi chép quan trọng. Anh hồi mới từ Brazil đến cũng vậy.)* |
| Phong | <ruby>2年前<rt>にねんまえ</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>、N4も<ruby>受<rt>う</rt></ruby>かるか<ruby>不安<rt>ふあん</rt></ruby>だった。<ruby>今<rt>いま</rt></ruby>はN3、3<ruby>級<rt>きゅう</rt></ruby>、お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>もできる。<br>*(Bản thân 2 năm trước, không tự tin đỗ N4. Giờ có N3, 3 cấp, phụ trách khách được.)* |
| Carlos | <ruby>続<rt>つづ</rt></ruby>けたからな。1<ruby>日<rt>にち</rt></ruby>10<ruby>分<rt>ぷん</rt></ruby>でも、<ruby>毎日<rt>まいにち</rt></ruby><ruby>続<rt>つづ</rt></ruby>けたら<ruby>2年<rt>にねん</rt></ruby>で<ruby>120時間<rt>ひゃくにじゅうじかん</rt></ruby>。<ruby>違<rt>ちが</rt></ruby>うよな。<br>*(Vì em duy trì mà. 10 phút/ngày, 2 năm là 120 giờ. Khác nhỉ.)* |
| Phong | <ruby>来年<rt>らいねん</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>えるようになりたいです。<br>*(Sang năm cháu muốn nói được điều tương tự với đàn em.)* |

---

## Tình huống 12 — Quán nhậu · cuối tuần, party mừng cả garage

*(工場長 chiêu đãi cả garage tại izakaya gần ga Toyota.)*

| Vai | Lời thoại |
|---|---|
| 工場長 | (cầm cốc bia) <ruby>本日<rt>ほんじつ</rt></ruby>はフォンくんのW<ruby>合格<rt>ごうかく</rt></ruby>と、カルロスくんのSSW<ruby>移行<rt>いこう</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Hôm nay chúc mừng Phong đỗ kép và Carlos chuyển SSW, can-pai!)* |
| Mọi người | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Can-pai!)* |
| Phong | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Chú quản lý, hôm nay cháu thật sự cảm ơn ạ.)* |
| Kobayashi | フォン、<ruby>歌<rt>うた</rt></ruby>うか?ベトナム<ruby>語<rt>ご</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>!<br>*(Phong, hát không? Tiếng Việt cũng được!)* |
| Phong | (cười, đỏ mặt) い、いえ、<ruby>歌<rt>うた</rt></ruby>は<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(K, không, cháu không giỏi hát ạ.)* |
| Sato | <ruby>苦手<rt>にがて</rt></ruby>って<ruby>言<rt>い</rt></ruby>っても<ruby>来年<rt>らいねん</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>歌<rt>うた</rt></ruby><ruby>頼<rt>たの</rt></ruby>むだろ?<br>*(Bảo không giỏi nhưng sang năm sẽ ép đàn em hát chứ?)* |
| Phong | え!?...<ruby>確<rt>たし</rt></ruby>かに<ruby>新人<rt>しんじん</rt></ruby>はそういう<ruby>役<rt>やく</rt></ruby>ですもんね。<br>*(Hả!?... đúng là người mới có vai đó nhỉ.)* |
| Carlos | フォン、お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>新人<rt>しんじん</rt></ruby>じゃない。<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>3年生<rt>さんねんせい</rt></ruby>だ。<br>*(Phong, em không còn là người mới. Là năm 3 chính thức rồi.)* |
| Phong | (im lặng một lúc, rồi cúi đầu) <ruby>3年目<rt>さんねんめ</rt></ruby>も、<ruby>皆<rt>みな</rt></ruby>さんにご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしないよう<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Năm thứ 3 cháu cũng sẽ cố không làm phiền mọi người.)* |
| 工場長 | (vỗ vai) <ruby>迷惑<rt>めいわく</rt></ruby>かけてもいい。<ruby>仲間<rt>なかま</rt></ruby>だからな。<br>*(Phiền cũng được. Là đồng đội mà.)* |

---

## Tình huống 13 — Ký túc · 1:00 sáng, video call về Hải Phòng

> Cảnh tiếng Việt — Phong video call với cả nhà.

| Vai | Lời thoại |
|---|---|
| Mẹ | Phong ơi, mặt mày đỏ kìa! Uống bia à? |
| Phong | Vâng mẹ, hôm nay 工場長 mời cả garage đi nhậu mừng con đỗ N3 và 整備士 3級 đấy. |
| Bố | Giỏi lắm con. Bố tự hào về con. |
| Phong | Bố ơi, 工場長 muốn con ở lại thêm 5 năm nữa làm SSW. Bố thấy thế nào? |
| Bố | Lương có cao hơn không? |
| Phong | Có ạ. Tăng thêm khoảng 5 vạn yên/tháng so với bây giờ. Tính cả phụ cấp chứng chỉ thì gần 30 vạn yên. |
| Mẹ | Khoảng 50 triệu VND à? |
| Phong | Trừ tiền ăn ở thì gửi về được khoảng 25 triệu/tháng mẹ ạ. |
| Mẹ | Nhưng 5 năm nữa con 28 tuổi rồi. Có lập gia đình không con? |
| Phong | Sempai Carlos bảo nếu lên được SSW2 thì gọi vợ con sang Nhật được. Anh ấy người Brazil mà sống ở Nhật 8 năm rồi mẹ. |
| Hoàng | Anh giỏi quá. Em cũng muốn sang Nhật như anh. |
| Phong | Em học chăm vào. Anh sẽ giúp em chọn trung tâm tiếng Nhật uy tín. |
| Bố | Con quyết định đi. Bố mẹ ủng hộ. |
| Phong | Vâng bố. Con quyết định ở lại làm SSW. Năm sau con sẽ về thăm nhà 2 tuần lúc TTS hết hợp đồng. |
| Mẹ | Ờ, về nhé. Mẹ nấu bún cá cho. |
| Phong | (lặng đi) Mẹ ơi... con nhớ bún cá Hải Phòng lắm... |
| Mẹ | (chấm khoé mắt) Thôi ngủ đi con. Mai còn đi làm. |
| Phong | Vâng. Con yêu cả nhà. |

---

## Đọng lại chương

**Mẫu câu năm 2 kết thúc** (phải thuộc lòng):
- **「合格することができました」** — Báo cáo việc đỗ kỳ thi
- **「皆さんのおかげです」** — Quy công cho người khác (văn hóa Nhật)
- **「ご報告がございます」** — Mở đầu báo cáo trang trọng
- **「考えておいて」** — "Hãy suy nghĩ" (cấp trên giao việc)
- **「ご相談がございます」** — Mở đầu khi tư vấn 監理団体
- **「ご迷惑をおかけしないよう頑張ります」** — Cam kết khiêm tốn
- **「立派な〜です」** — Khen "rất xứng đáng" (sempai khen)

> Từ vựng & mẫu câu chương này: 合格・能力試験・整備士3級・資格手当・基本給・昇給・特定技能1号・移行・転職・無期限・永住権・監理団体・技能評価試験・免除・申請・後輩・育つ・W合格・乾杯

## Bí quyết chương

- Đỗ chứng chỉ → **báo cáo cấp trên trước, ăn mừng sau** (báo cáo trong giờ làm việc).
- Nhật rất quý câu **「皆さんのおかげです」** — đừng tự khoe, hãy quy công cho người khác.
- **資格手当** (phụ cấp chứng chỉ) là khoản tăng lương cố định khi có chứng chỉ — phải hỏi rõ cấp trên.
- TTS sang SSW1: cần **3級 整備士 + N3** (hoặc thi 技能評価試験) → được miễn nếu có chứng chỉ.
- SSW1 không gọi vợ con; **SSW2 vô thời hạn + gọi gia đình + nhắm vĩnh trú** — đích đến dài hạn.
- Khi tiễn sempai về nước/chuyển việc, **trao đổi LINE** — mạng lưới ngành ô tô rất rộng.
- "Khắt khe ở chỗ phải khắt khe" — kohai sẽ nhớ ơn sau này, đừng quá thân thiện.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 合格 | ごうかく | HỢP CÁCH | Đỗ, đậu |
| 能力試験 | のうりょくしけん | NĂNG LỰC THÍ NGHIỆM | Kỳ thi năng lực (JLPT) |
| 得点 | とくてん | ĐẮC ĐIỂM | Điểm số |
| 整備士 | せいびし | CHỈNH BỊ SĨ | Thợ máy có chứng chỉ |
| 3級 | さんきゅう | TAM CẤP | Cấp 3 |
| 実技試験 | じつぎしけん | THỰC KỸ THÍ NGHIỆM | Thi thực hành |
| 筆記 | ひっき | BÚT KÝ | Thi viết, lý thuyết |
| 手ごたえ | てごたえ | THỦ ĐÁP | Cảm giác làm được |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp giao ban sáng |
| 発表 | はっぴょう | PHÁT BIỂU | Phát biểu, công bố |
| 励み | はげみ | LỆ | Động lực |
| 資格 | しかく | TƯ CÁCH | Chứng chỉ |
| 取得 | しゅとく | THỦ ĐẮC | Đạt được, lấy |
| 資格手当 | しかくてあて | TƯ CÁCH THỦ ĐƯƠNG | Phụ cấp chứng chỉ |
| 基本給 | きほんきゅう | CƠ BẢN CẤP | Lương cơ bản |
| 昇給 | しょうきゅう | THĂNG CẤP | Tăng lương |
| 来年度 | らいねんど | LAI NIÊN ĐỘ | Năm tài khóa tới |
| 給与 | きゅうよ | CẤP DỮ | Lương |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | SSW (Tokutei Ginou) |
| 1号 | いちごう | NHẤT HIỆU | Loại 1 |
| 移行 | いこう | DI HÀNH | Chuyển sang |
| 条件 | じょうけん | ĐIỀU KIỆN | Điều kiện |
| 満たす | みたす | MÃN | Đáp ứng đủ |
| 給与テーブル | きゅうよてーぶる | CẤP DỮ — | Bảng lương |
| 転職 | てんしょく | CHUYỂN CHỨC | Chuyển việc |
| 業種 | ぎょうしゅ | NGHIỆP CHỦNG | Ngành nghề |
| 無期限 | むきげん | VÔ KỲ HẠN | Vô thời hạn |
| 永住権 | えいじゅうけん | VĨNH TRỤ QUYỀN | Quyền vĩnh trú |
| 2級相当 | にきゅうそうとう | NHỊ CẤP TƯƠNG ĐƯƠNG | Tương đương cấp 2 |
| 監理団体 | かんりだんたい | GIÁM LÝ ĐOÀN THỂ | Đoàn quản lý TTS |
| 技能評価試験 | ぎのうひょうかしけん | KỸ NĂNG BÌNH GIÁ THÍ NGHIỆM | Kỳ thi đánh giá kỹ năng |
| 免除 | めんじょ | MIỄN TRỪ | Miễn |
| 申請 | しんせい | THÂN THỈNH | Đơn xin, nộp đơn |
| 後輩 | こうはい | HẬU BỐI | Đàn em |
| 立場 | たちば | LẬP TRƯỜNG | Vị thế, lập trường |
| 戸惑う | とまどう | HỘ HOẶC | Bối rối, lúng túng |
| 武器 | ぶき | VŨ KHÍ | Vũ khí |
| 厳しい | きびしい | NGHIÊM | Khắt khe, nghiêm khắc |
| 育つ | そだつ | DỤC | Trưởng thành |
| 自慢 | じまん | TỰ MẠN | Khoe, tự hào |
| 余計 | よけい | DƯ KẾ | Thừa, không cần |
| 仲間 | なかま | TRỌNG GIAN | Đồng đội |
| 乾杯 | かんぱい | CAN BÔI | Can-pai, cụng ly |
| 苦手 | にがて | KHỔ THỦ | Không giỏi, không hợp |
| 連絡先 | れんらくさき | LIÊN LẠC TIÊN | Đầu mối liên lạc |
| ディーラー | でぃーらー | — | Đại lý xe |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
