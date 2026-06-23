-- Hizashi LITE book SQL — Kaigo Senior 1
-- curriculum_id = 800000030  (book_seq=30)
-- nguồn: books/30_kaigo_senior1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000030, 'N3', 'markdown_book', 'Điều dưỡng', 'Kaigo Senior 1', 'Bộ sách Hizashi — Kaigo Senior 1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000001, 800000030, NULL, 'markdown_book', 'T1. Đỗ Điều dưỡng viên quốc gia (介護福祉士合格)', '# Sách điều dưỡng viên quốc gia · T1. Đỗ Điều dưỡng viên quốc gia (介護福祉士合格)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, đã làm 介護 4 năm tại Hidamari-en) vừa nhận kết quả thi lại môn 医療的ケア — đỗ chính thức kỳ thi 介護福祉士. Chương tập trung các mẫu giao tiếp: thông báo kết quả, chúc mừng đồng nghiệp, báo cáo cấp trên, và nghe gợi mở về visa「介護」cùng vai trò リーダー tương lai.

---

## Bối cảnh

Tháng 4 năm 2031. Ngọc đã thi lại môn 医療的ケア sau lần trượt hồi mùa đông. Sáng nay, kết quả chính thức đăng trên website của Hội đồng phúc lợi xã hội Nhật Bản. Đức và Hương đã đỗ từ đợt trước; lần này Ngọc hoàn thành nốt. Không khí Hidamari-en sáng hôm đó vui hơn bình thường.

---

## Tình huống 1 — Phòng nghỉ nhân viên · 7:30, xem kết quả trên điện thoại

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn điện thoại, giọng run nhẹ) えっ...。<ruby>合格<rt>ごうかく</rt></ruby>...。<ruby>合格<rt>ごうかく</rt></ruby>した...！<br>*(Ê... Đỗ rồi... Mình đỗ rồi...!)* |
| Hương | (ngồi kế) ゴック、どうした？<br>*(Ngọc, sao vậy?)* |
| Ngọc | ヒューン、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>したよ！<ruby>医療的<rt>いりょうてき</rt></ruby>ケアも<ruby>通<rt>とお</rt></ruby>った！<br>*(Hương, mình đỗ 介護福祉士 rồi! Môn 医療的ケア cũng qua rồi!)* |
| Hương | ほんと？！よかったー！おめでとう、ゴック！<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>ったね。<br>*(Thật không?! Mừng quá! Chúc mừng Ngọc! Mày đã cố gắng thật sự rồi.)* |
| Ngọc | (thở phào) やっと...<ruby>去年<rt>きょねん</rt></ruby>の<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>悔<rt>くや</rt></ruby>しくて、ずっと<ruby>勉強<rt>べんきょう</rt></ruby>してた。<br>*(Cuối cùng rồi... Mùa đông năm ngoái tủi lắm, học mãi không nghỉ.)* |
| Hương | でも、あきらめなかったでしょ。それが<ruby>一番<rt>いちばん</rt></ruby>すごいよ。<br>*(Nhưng mày không bỏ cuộc mà. Đó mới là điều giỏi nhất.)* |
| Ngọc | ありがとう。まず<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>しなきゃ。<br>*(Cảm ơn. Mình phải báo chị Yamamoto trước đã.)* |

---

## Tình huống 2 — Hành lang · 7:45, gặp ông Tanaka trên đường vào ca

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | (ngồi xe lăn ở hành lang) グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>顔色<rt>かおいろ</rt></ruby>がいいね。いいことあった？<br>*(Cô Nguyễn, hôm nay trông tươi tắn nhỉ. Có chuyện vui à?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しました！<br>*(Ông Tanaka, cháu đỗ kỳ thi 介護福祉士 rồi ạ!)* |
| Ông Tanaka | ほう！<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>か。それはたいしたもんだ。ベトナムの<ruby>人<rt>ひと</rt></ruby>がここまで...えらいね、本当に。<br>*(Ồ! 介護福祉士 à. Ghê thật. Người Việt Nam mà được đến vậy... Giỏi lắm, thật đấy.)* |
| Ngọc | ありがとうございます。<ruby>田中<rt>たなか</rt></ruby>さんたちのおかげです。<ruby>田中<rt>たなか</rt></ruby>さんがいつも<ruby>声<rt>こえ</rt></ruby>をかけてくださったから、<ruby>続<rt>つづ</rt></ruby>けられました。<br>*(Cháu cảm ơn ông ạ. Nhờ có ông và mọi người mà cháu tiếp tục được.)* |
| Ông Tanaka | わしは何もしとらん。でもな、グエンさんはこれからもっとよくなるよ。<ruby>頑張<rt>がんば</rt></ruby>りなさい。<br>*(Tôi có làm gì đâu. Nhưng này, cô Nguyễn sẽ còn tiến xa hơn đấy. Cố lên nhé.)* |
| Ngọc | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。ありがとうございます。<br>*(Vâng, cháu sẽ cố ạ. Cảm ơn ông.)* |

---

## Tình huống 3 — Phòng 介護長 · 8:00, báo cáo kết quả với Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、おはようございます。<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>試験結果<rt>しけんけっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>まして、<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Chị Yamamoto, chào buổi sáng. Em có việc muốn báo cáo. Kết quả thi 介護福祉士 vừa có, em đỗ rồi ạ.)* |
| Yamamoto | (đứng dậy, bắt tay) おめでとう、グエンさん！<ruby>本当<rt>ほんとう</rt></ruby>によかった！<ruby>去年<rt>きょねん</rt></ruby>の<ruby>悔<rt>くや</rt></ruby>しさをちゃんとバネにしたんだね。<br>*(Chúc mừng Nguyễn! Thật tốt quá! Em đã biến thất bại năm ngoái thành sức bật rồi đấy.)* |
| Ngọc | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんにご<ruby>指導<rt>しどう</rt></ruby>いただいたおかげです。<ruby>医療的<rt>いりょうてき</rt></ruby>ケアの<ruby>勉強<rt>べんきょう</rt></ruby>もご<ruby>支援<rt>しえん</rt></ruby>いただいて。<br>*(Em cảm ơn chị. Nhờ được chị chỉ bảo. Cả phần ôn 医療的ケア cũng được chị hỗ trợ.)* |
| Yamamoto | いや、<ruby>合格<rt>ごうかく</rt></ruby>したのはグエンさん<ruby>自身<rt>じしん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>だよ。<ruby>施設長<rt>しせつちょう</rt></ruby>にも<ruby>報告<rt>ほうこく</rt></ruby>しておくね。<br>*(Không, đỗ được là nhờ nỗ lực của chính em. Chị sẽ báo cả với ông Kobayashi nhé.)* |
| Ngọc | はい、ありがとうございます。<ruby>証明書<rt>しょうめいしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたら、コピーをお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Vâng, em cảm ơn. Khi nhận được bằng chứng nhận, em sẽ đưa bản sao cho chị.)* |
| Yamamoto | うん。それとグエンさん、<ruby>合格<rt>ごうかく</rt></ruby>したこと、これからのことを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>話<rt>はな</rt></ruby>したいんだけど、<ruby>昼休<rt>ひるやす</rt></ruby>みに<ruby>時間<rt>じかん</rt></ruby>はある？<br>*(Ừ. Và Nguyễn à, chị muốn nói chuyện về việc đỗ rồi, về tương lai, em có rảnh giờ nghỉ trưa không?)* |
| Ngọc | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rảnh ạ. Mong chị chỉ bảo.)* |

---

## Tình huống 4 — Phòng sinh hoạt · 9:00, ca sáng thường nhật — hỗ trợ 口腔ケア

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、おはようございます。<ruby>口腔<rt>こうくう</rt></ruby>ケアのお<ruby>時間<rt>じかん</rt></ruby>です。<ruby>歯磨<rt>はみが</rt></ruby>きをしましょうか。<br>*(Ông Kimura, chào buổi sáng. Đến giờ vệ sinh răng miệng rồi. Mình đánh răng nhé ạ.)* |
| Ông Kimura | ああ、グエンさんか。<ruby>今日<rt>きょう</rt></ruby>も<ruby>元気<rt>げんき</rt></ruby>そうだね。<br>*(À, cô Nguyễn đấy. Hôm nay trông tươi vui nhỉ.)* |
| Ngọc | はい、いいことがありまして。でも、まず<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>口<rt>くち</rt></ruby>のお<ruby>手入<rt>てい</rt></ruby>れからですね。<ruby>口<rt>くち</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けていただけますか。<br>*(Vâng, có chuyện vui đấy ạ. Nhưng trước hết là chăm sóc răng miệng cho ông đã. Ông mở miệng ra được không ạ?)* |
| Ông Kimura | うん。(miệng mở) しかし、グエンさん、ここに<ruby>来<rt>き</rt></ruby>て<ruby>何年<rt>なんねん</rt></ruby>になるかね。<br>*(Ừ. Nhưng mà, cô Nguyễn, cô đến đây bao năm rồi nhỉ.)* |
| Ngọc | (nhẹ nhàng chải răng) もう4<ruby>年<rt>ねん</rt></ruby>になります。<ruby>木村<rt>きむら</rt></ruby>さんにいろいろ<ruby>教<rt>おし</rt></ruby>えていただきましたよ。<ruby>力<rt>ちから</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>いてください。<br>*(Đã 4 năm rồi ạ. Ông đã dạy cháu nhiều lắm. Ông thư giãn một chút đi ạ.)* |
| Ông Kimura | そうか、4<ruby>年<rt>ねん</rt></ruby>か。はやいね。グエンさん、<ruby>上手<rt>じょうず</rt></ruby>になったね。<br>*(Vậy à, 4 năm rồi. Nhanh thật. Cô Nguyễn giỏi hơn nhiều rồi nhỉ.)* |
| Nakamura | (y tá đi qua) グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>服薬<rt>ふくやく</rt></ruby>は<ruby>食後<rt>しょくご</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしますね。<br>*(Nguyễn, nhờ cô xác nhận ông Kimura uống thuốc sau bữa ăn nhé.)* |
| Ngọc | はい、<ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>食後<rt>しょくご</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, chị Nakamura, em rõ rồi. Em sẽ xác nhận sau bữa ăn ạ.)* |

---

## Tình huống 5 — Phòng ăn · 12:00, hỗ trợ bữa trưa và nhắc thuốc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>昼食<rt>ちゅうしょく</rt></ruby>は<ruby>鮭<rt>さけ</rt></ruby>のほぐし<ruby>煮<rt>に</rt></ruby>とご<ruby>飯<rt>はん</rt></ruby>です。<ruby>温<rt>あたた</rt></ruby>かいうちに<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってください。<br>*(Ông Kimura, trưa nay có cơm và cá hồi hầm nhừ ạ. Ông ăn khi còn nóng nhé.)* |
| Ông Kimura | (chậm rãi ăn) うん、<ruby>美味<rt>おい</rt></ruby>しい。グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>そうだね、<ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Ừm, ngon. Cô Nguyễn, hôm nay trông vui thật sự nhỉ.)* |
| Ngọc | はい。(しばらく様子を見て) <ruby>木村<rt>きむら</rt></ruby>さん、むせていませんか？<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Vâng ạ. (quan sát một lúc) Ông Kimura, ông không bị sặc chứ? Ông ổn không ạ?)* |
| Ông Kimura | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だよ。ゆっくり<ruby>食<rt>た</rt></ruby>べてるから。<br>*(Không sao. Tôi đang ăn từ từ mà.)* |
| Ngọc | よかったです。<ruby>食事<rt>しょくじ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら、お<ruby>薬<rt>くすり</rt></ruby>がありますので、お<ruby>伝<rt>つた</rt></ruby>えしますね。<br>*(Tốt ạ. Ăn xong có thuốc uống, cháu sẽ nhắc ông nhé.)* |
| Ông Kimura | ああ、ありがとう。<ruby>薬<rt>くすり</rt></ruby>は<ruby>忘<rt>わす</rt></ruby>れがちでね。<br>*(Ừ, cảm ơn. Tôi hay quên thuốc lắm.)* |
| Ngọc | (sau khi ông ăn xong) <ruby>木村<rt>きむら</rt></ruby>さん、お<ruby>薬<rt>くすり</rt></ruby>です。<ruby>水<rt>みず</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>にどうぞ。<br>*(Ông Kimura, thuốc của ông đây ạ. Ông uống cùng nước nhé.)* |

---

## Tình huống 6 — Sảnh · 13:30, hỗ trợ リハビリ đi bộ với bệnh nhân

| Vai | Lời thoại |
|---|---|
| Sato | (介護主任, đi cùng) グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>歩行<rt>ほこう</rt></ruby>リハビリ、<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょうか。<ruby>今日<rt>きょう</rt></ruby>は<ruby>廊下<rt>ろうか</rt></ruby>を2<ruby>往復<rt>おうふく</rt></ruby>が<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Nguyễn, mình cùng làm phục hồi đi bộ cho ông Tanaka nhé. Hôm nay mục tiêu là đi lại hành lang 2 lần.)* |
| Ngọc | はい、<ruby>佐藤<rt>さとう</rt></ruby>さん。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>歩<rt>ある</rt></ruby>きましょう。<ruby>右手<rt>みぎて</rt></ruby>は<ruby>手<rt>て</rt></ruby>すりをつかんでください。<br>*(Vâng, chị Sato. Ông Tanaka, mình cùng đi bộ nhé. Tay phải ông bám vào thanh vịn ạ.)* |
| Ông Tanaka | わかった。でも<ruby>足<rt>あし</rt></ruby>が<ruby>重<rt>おも</rt></ruby>いな。<br>*(Hiểu rồi. Nhưng chân nặng quá.)* |
| Ngọc | (dìu nhẹ) <ruby>急<rt>いそ</rt></ruby>がなくていいですよ。ゆっくりで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>田中<rt>たなか</rt></ruby>さんのペースで<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Ông không cần vội ạ. Từ từ được ạ. Mình đi theo tốc độ của ông nhé.)* |
| Sato | (nhỏ giọng với Ngọc) グエンさん、ちゃんと<ruby>声<rt>こえ</rt></ruby>かけできてるね。4<ruby>年<rt>ねん</rt></ruby>で<ruby>随分<rt>ずいぶん</rt></ruby><ruby>成長<rt>せいちょう</rt></ruby>したよ。<br>*(Nguyễn, cô lên tiếng báo trước chuẩn lắm đấy. 4 năm mà tiến bộ nhiều thật.)* |
| Ngọc | ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんや<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えていただいたおかげです。<br>*(Em cảm ơn chị. Nhờ được chị Sato và chị Yamamoto dạy bảo ạ.)* |

---

## Tình huống 7 — Phòng nghỉ nhân viên · 14:00, y tá chúc mừng và hỏi về 医療的ケア

| Vai | Lời thoại |
|---|---|
| Nakamura | グエンさん、<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>、おめでとうございます！<br>*(Nguyễn, tôi nghe chị Yamamoto nói rồi. Chúc mừng về thi đỗ 介護福祉士!)* |
| Ngọc | ありがとうございます、<ruby>中村<rt>なかむら</rt></ruby>さん。<ruby>医療的<rt>いりょうてき</rt></ruby>ケアの<ruby>科目<rt>かもく</rt></ruby>で<ruby>去年<rt>きょねん</rt></ruby><ruby>落<rt>お</rt></ruby>ちてしまって、<ruby>今年<rt>ことし</rt></ruby>やっと<ruby>合格<rt>ごうかく</rt></ruby>できました。<br>*(Em cảm ơn chị Nakamura. Năm ngoái em trượt môn 医療的ケア, năm nay mới đỗ được.)* |
| Nakamura | <ruby>医療的<rt>いりょうてき</rt></ruby>ケアは<ruby>難<rt>むずか</rt></ruby>しいですよね。<ruby>吸引<rt>きゅういん</rt></ruby>や<ruby>経管栄養<rt>けいかんえいよう</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>もあるし。<br>*(Môn 医療的ケア khó thật. Có cả phần thực hành hút đờm và nuôi dưỡng qua ống.)* |
| Ngọc | はい。でも<ruby>合格<rt>ごうかく</rt></ruby>してから、<ruby>実際<rt>じっさい</rt></ruby>の<ruby>業務<rt>ぎょうむ</rt></ruby>でもっと<ruby>丁寧<rt>ていねい</rt></ruby>にできると<ruby>思<rt>おも</rt></ruby>います。<ruby>中村<rt>なかむら</rt></ruby>さんにも<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Vâng. Nhưng sau khi đỗ, em nghĩ mình có thể làm cẩn thận hơn trong thực tế. Mong được chị Nakamura tư vấn thêm.)* |
| Nakamura | もちろん。<ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。<ruby>介護<rt>かいご</rt></ruby>と<ruby>看護<rt>かんご</rt></ruby>は<ruby>チーム<rt>チーム</rt></ruby>ですから。<br>*(Tất nhiên rồi. Cứ hỏi bất cứ điều gì. Điều dưỡng và y tá là một đội mà.)* |
| Ngọc | ありがとうございます。これからもどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn chị. Mong chị tiếp tục chỉ bảo em ạ.)* |

---

## Tình huống 8 — Phòng 介護長 · 12:30, giờ nghỉ trưa — Yamamoto gợi mở visa「介護」

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>座<rt>すわ</rt></ruby>って。<ruby>今日<rt>きょう</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>おめでとう、という<ruby>話<rt>はなし</rt></ruby>だけじゃなくて、これからのことを<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>したい。<br>*(Nguyễn, ngồi xuống đi. Hôm nay không chỉ là chúc mừng thôi, chị muốn nói một chút về tương lai của em.)* |
| Ngọc | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị chỉ dẫn ạ.)* |
| Yamamoto | グエンさんは<ruby>今<rt>いま</rt></ruby>、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>は<ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>だよね？<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったから、「<ruby>介護<rt>かいご</rt></ruby>」という<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>できるんだよ。<br>*(Nguyễn hiện đang có tư cách lưu trú 特定技能1号 đúng không? Vì em đã lấy được 介護福祉士, em có thể đổi sang tư cách lưu trú「介護」rồi đấy.)* |
| Ngọc | 「<ruby>介護<rt>かいご</rt></ruby>」ですか？<ruby>特定技能<rt>とくていぎのう</rt></ruby>とどう<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(「介護」ạ? Khác 特定技能 như thế nào ạ?)* |
| Yamamoto | <ruby>大<rt>おお</rt></ruby>きく<ruby>違<rt>ちが</rt></ruby>う。「<ruby>介護<rt>かいご</rt></ruby>」は<ruby>更新回数<rt>こうしんかいすう</rt></ruby>に<ruby>制限<rt>せいげん</rt></ruby>がない。<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>もできる。そして<ruby>将来<rt>しょうらい</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶことも<ruby>可能<rt>かのう</rt></ruby>になる。<br>*(Khác nhiều đấy. 「介護」không giới hạn số lần gia hạn. Được làm cả 訪問介護. Và tương lai có thể bảo lãnh gia đình sang đây nữa.)* |
| Ngọc | (mắt sáng lên) <ruby>家族<rt>かぞく</rt></ruby>を...。<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>も<ruby>開<rt>ひら</rt></ruby>けますか？<br>*(Gia đình... Rồi cả con đường 永住権 nữa ạ?)* |
| Yamamoto | そう。<ruby>更新回数<rt>こうしんかいすう</rt></ruby>の<ruby>制限<rt>せいげん</rt></ruby>がなくなって、<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>もできる。そして<ruby>将来<rt>しょうらい</rt></ruby>、<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>も<ruby>開<rt>ひら</rt></ruby>ける。まず<ruby>手続<rt>てつづ</rt></ruby>きの<ruby>流<rt>なが</rt></ruby>れを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>していこうか。<br>*(Đúng. Không giới hạn số lần gia hạn nữa, và được làm cả 訪問介護. Rồi tương lai còn mở ra con đường 永住権 nữa. Để chị cùng em xem qua quy trình thủ tục nhé.)* |
| Ngọc | はい、ぜひ。<ruby>急<rt>いそ</rt></ruby>いで<ruby>調<rt>しら</rt></ruby>べます。<br>*(Vâng, dạ vâng. Em sẽ tìm hiểu ngay ạ.)* |

---

## Tình huống 9 — Phòng 介護長 · 12:50, Yamamoto gợi mở về vai trò リーダー

| Vai | Lời thoại |
|---|---|
| Yamamoto | もう一つ<ruby>話<rt>はな</rt></ruby>したいことがある。グエンさん、<ruby>今<rt>いま</rt></ruby>うちの<ruby>施設<rt>しせつ</rt></ruby>は<ruby>ユニットリーダー<rt>ユニットリーダー</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>しているんだ。<br>*(Còn một điều nữa chị muốn nói. Nguyễn à, hiện tại cơ sở mình đang thiếu trưởng nhóm ユニット đấy.)* |
| Ngọc | そうなんですか。<br>*(Vậy ạ?)* |
| Yamamoto | グエンさんは<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>取<rt>と</rt></ruby>って、<ruby>実務<rt>じつむ</rt></ruby>も4<ruby>年以上<rt>ねんいじょう</rt></ruby>ある。<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>対応<rt>たいおう</rt></ruby>もしっかりしている。リーダーに<ruby>向<rt>む</rt></ruby>いていると<ruby>思<rt>おも</rt></ruby>う。<br>*(Em đã có 介護福祉士, kinh nghiệm thực tế trên 4 năm. Cách chăm sóc 利用者 cũng chắc chắn. Chị nghĩ em phù hợp làm リーダー đấy.)* |
| Ngọc | (ngạc nhiên) え...わたしが、リーダーに？<ruby>外国人<rt>がいこくじん</rt></ruby>でも、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Ồ... Em mà, làm リーダー? Người nước ngoài thì... có ổn không ạ?)* |
| Yamamoto | うちの<ruby>施設<rt>しせつ</rt></ruby>はそういうことで<ruby>差別<rt>さべつ</rt></ruby>はしない。<ruby>実力<rt>じつりょく</rt></ruby>があって、<ruby>利用者<rt>りようしゃ</rt></ruby>さんのことを<ruby>考<rt>かんが</rt></ruby>えられる<ruby>人<rt>ひと</rt></ruby>なら<ruby>国籍<rt>こくせき</rt></ruby>は<ruby>関係<rt>かんけい</rt></ruby>ない。<br>*(Cơ sở mình không phân biệt chuyện đó. Có năng lực, biết nghĩ cho 利用者 thì quốc tịch không quan trọng.)* |
| Ngọc | ...ありがとうございます。ちゃんと<ruby>考<rt>かんが</rt></ruby>えます。<br>*(... Em cảm ơn chị. Em sẽ suy nghĩ kỹ ạ.)* |

---

## Tình huống 10 — Khu ユニット 2 · 15:00, ca chiều tiếp tục — hỗ trợ thay đồ

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>着替<rt>きが</rt></ruby>えをお<ruby>手伝<rt>てつだ</rt></ruby>いします。<ruby>上着<rt>うわぎ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えましょうか。<br>*(Ông Tanaka, cháu hỗ trợ ông thay đồ nhé. Mình thay áo khoác nhé ạ.)* |
| Ông Tanaka | ああ、<ruby>頼<rt>たの</rt></ruby>むよ。<ruby>右肩<rt>みぎかた</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>痛<rt>いた</rt></ruby>い。<br>*(Ừ, nhờ cô. Vai phải hơi đau.)* |
| Ngọc | <ruby>右肩<rt>みぎかた</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>いんですね。<ruby>脱健着患<rt>だっけんちゃっかん</rt></ruby>でいきます。<ruby>健側<rt>けんそく</rt></ruby>の<ruby>左側<rt>ひだりがわ</rt></ruby>から<ruby>脱<rt>ぬ</rt></ruby>がせますね。<br>*(Vai phải đau à. Mình sẽ theo nguyên tắc "cởi bên lành trước, mặc bên đau trước" nhé. Mình cởi từ bên trái — bên lành — trước nhé.)* |
| Ông Tanaka | うん。<ruby>気<rt>き</rt></ruby>をつけてくれ。<br>*(Ừ. Cẩn thận hộ tôi nhé.)* |
| Ngọc | (nhẹ nhàng) <ruby>痛<rt>いた</rt></ruby>くないですか？<br>*(Ông có đau không ạ?)* |
| Ông Tanaka | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>グエンさんは丁寧<rt>ていねい</rt></ruby>だね。<br>*(Không sao. Cô Nguyễn cẩn thận nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>終<rt>お</rt></ruby>わりました。<ruby>楽<rt>らく</rt></ruby>になりましたか。<br>*(Cháu cảm ơn ông. Xong rồi ạ. Ông thấy thoải mái hơn chưa?)* |
| Ông Tanaka | ああ、ありがとう。グエンさん、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>したって、<ruby>本当<rt>ほんとう</rt></ruby>によかったよ。<br>*(Ừ, cảm ơn. Cô Nguyễn, nghe nói đỗ 介護福祉士, thật mừng cho cô.)* |

---

## Tình huống 11 — Buổi 申し送り · 16:30, Ngọc báo cáo ca chiều lần đầu dùng danh hiệu mới

| Vai | Lời thoại |
|---|---|
| Sato | では<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りをはじめます。グエンさんから<ruby>報告<rt>ほうこく</rt></ruby>どうぞ。<br>*(Vậy bắt đầu bàn giao ca thôi. Nguyễn, em báo cáo đi.)* |
| Ngọc | はい。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>のグエンです。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>をします。<ruby>木村<rt>きむら</rt></ruby>さんは<ruby>午前<rt>ごぜん</rt></ruby>、<ruby>口腔<rt>こうくう</rt></ruby>ケアと<ruby>服薬<rt>ふくやく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>食事<rt>しょくじ</rt></ruby>は<ruby>全量摂取<rt>ぜんりょうせっしゅ</rt></ruby>、むせなし。<br>*(Vâng. Em là Nguyễn, điều dưỡng viên 介護福祉士. Em báo cáo hôm nay. Ông Kimura buổi sáng đã vệ sinh răng miệng và xác nhận uống thuốc. Bữa ăn ăn hết phần, không bị sặc.)* |
| Sato | <ruby>田中<rt>たなか</rt></ruby>さんは？<br>*(Ông Tanaka thì sao?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>午後<rt>ごご</rt></ruby>の<ruby>歩行<rt>ほこう</rt></ruby>リハビリを<ruby>実施<rt>じっし</rt></ruby>。<ruby>廊下<rt>ろうか</rt></ruby>を1<ruby>往復<rt>おうふく</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>疲労<rt>ひろう</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>。<ruby>右肩<rt>みぎかた</rt></ruby>の<ruby>痛<rt>いた</rt></ruby>みを<ruby>訴<rt>うった</rt></ruby>えたため、<ruby>着替<rt>きが</rt></ruby>え<ruby>時<rt>じ</rt></ruby>に<ruby>脱健着患<rt>だっけんちゃっかん</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>しました。<br>*(Ông Tanaka chiều thực hiện phục hồi đi bộ. Đi lại hành lang 1 lần, có vẻ hơi mệt. Ông phàn nàn đau vai phải nên khi thay đồ em xử lý theo nguyên tắc cởi bên lành trước.)* |
| Sato | <ruby>記録<rt>きろく</rt></ruby>に<ruby>書<rt>か</rt></ruby>いておいてください。ありがとうございました。<br>*(Nhớ ghi vào hồ sơ nhé. Cảm ơn em.)* |
| Ngọc | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 12 — Phòng ngủ · 21:30, gọi điện về Việt Nam cho mẹ

> Scene tiếng Việt — mạch nhớ nhà & khoảnh khắc vỡ òa sau kết quả

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi video call) Mẹ ơi, em có tin vui! |
| Mẹ | (tiếng Việt) Gì vậy con? Nhìn mặt con cười tươi quá rồi. |
| Ngọc | (tiếng Việt) Con đỗ 介護福祉士 rồi mẹ! Chính thức rồi! Kỳ này con qua môn 医療的ケア. Làm được rồi! |
| Mẹ | (tiếng Việt) Thật không?! Trời ơi, con giỏi quá! Mẹ biết mà, con học giỏi. Mẹ tự hào lắm. |
| Ngọc | (tiếng Việt) Mẹ ơi, chị Yamamoto còn nói con có thể đổi visa sang「介護」nữa. Visa đó không giới hạn gia hạn, được làm nhiều loại việc hơn, và tương lai có thể hướng tới vĩnh trú nữa mẹ ạ. |
| Mẹ | (tiếng Việt, giọng nhẹ) Vậy à con. Con ở Nhật lâu hơn rồi à. Mẹ nhớ con lắm. |
| Ngọc | (tiếng Việt) Con cũng nhớ mẹ. Nhưng con đang đi đúng đường rồi mẹ ơi. Con sẽ cố thêm. |
| Mẹ | (tiếng Việt) Ừ. Con cứ nghỉ ngơi đi. Mẹ tự hào con lắm. |

---

## Đọng lại chương 1

Sau lần trượt mùa đông, Ngọc vượt qua môn 医療的ケア và chính thức trở thành **介護福祉士**. Chương phản ánh hành trình trưởng thành: từ mẫu báo cáo cấp trên (**〜しました・〜のおかげです**), kỹ thuật chăm sóc chuyên nghiệp (**脱健着患・口腔ケア・服薬確認**), đến bản 申し送り đầu tiên với tư cách mới. Quan trọng hơn, Yamamoto mở ra hai cánh cửa lớn: visa「介護」và vị trí リーダー — bước ngoặt định hướng cả sách 30.

> Từ vựng & mẫu câu chương này: 介護福祉士合格・医療的ケア・吸引・経管栄養・在留資格「介護」・特定技能1号・家族滞在・ユニットリーダー・口腔ケア・服薬確認・脱健着患・全量摂取・むせ・歩行リハビリ・申し送り・〜のおかげです・〜バネにする・ご指導いただく・〜に向いている', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000002, 800000030, NULL, 'markdown_book', 'T2. Đổi sang tư cách lưu trú「介護」(在留資格「介護」へ)', '# Sách điều dưỡng viên quốc gia · T2. Đổi sang tư cách lưu trú「介護」(在留資格「介護」へ)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, vừa đỗ 介護福祉士) làm thủ tục đổi visa 特定技能1号 → 「介護」tại cơ quan quản lý xuất nhập cảnh, đồng thời được phân công lần đầu tham gia 訪問介護 — nghiệp vụ mà 特定技能 không được làm. Chương tập trung các mẫu hội thoại: hỏi thủ tục tại cơ quan, so sánh tư cách lưu trú, giao tiếp khi chăm sóc tại nhà.

---

## Bối cảnh

Tháng 5 năm 2031. Ngọc đang chuẩn bị hồ sơ đổi tư cách lưu trú sang「介護」. Yamamoto hỗ trợ về giấy tờ, còn Sato — 介護主任 — giải thích sự khác biệt giữa 訪問介護 và 施設介護. Lần đầu đi thực địa chăm sóc tại nhà ông cụ ngoài 80 tuổi ở khu dân cư gần Hidamari-en.

---

## Tình huống 1 — Phòng Yamamoto · 9:00, hỏi về hồ sơ đổi visa

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>「<ruby>介護<rt>かいご</rt></ruby>」への<ruby>変更申請<rt>へんこうしんせい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>必要書類<rt>ひつようしょるい</rt></ruby>をまとめてきました。<br>*(Nguyễn, mình bắt đầu chuẩn bị hồ sơ xin đổi tư cách lưu trú 「介護」nhé. Anh đã tổng hợp các giấy tờ cần thiết rồi.)* |
| Ngọc | ありがとうございます。どんな<ruby>書類<rt>しょるい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか。<br>*(Em cảm ơn anh. Cần những giấy tờ gì ạ?)* |
| Yamamoto | まず、<ruby>在留資格変更許可申請書<rt>ざいりゅうしかくへんこうきょかしんせいしょ</rt></ruby>。それから<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>登録証<rt>とうろくしょう</rt></ruby>のコピー、<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>のコピー、<ruby>施設<rt>しせつ</rt></ruby>の<ruby>概要書<rt>がいようしょ</rt></ruby>。<br>*(Trước tiên là đơn xin phép thay đổi tư cách lưu trú. Rồi bản sao chứng chỉ đăng ký 介護福祉士, bản sao hợp đồng lao động, và bản mô tả cơ sở.)* |
| Ngọc | <ruby>登録証<rt>とうろくしょう</rt></ruby>はまだ<ruby>手元<rt>てもと</rt></ruby>にないですが、<ruby>合格証書<rt>ごうかくしょうしょ</rt></ruby>では<ruby>代替<rt>だいたい</rt></ruby>できますか。<br>*(Chứng chỉ đăng ký em chưa có, nhưng dùng giấy chứng nhận đỗ thi thay thế được không ạ?)* |
| Yamamoto | <ruby>申請<rt>しんせい</rt></ruby>のタイミングによるけど、<ruby>登録証<rt>とうろくしょう</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いてから<ruby>申請<rt>しんせい</rt></ruby>するほうが<ruby>安全<rt>あんぜん</rt></ruby>だよ。<ruby>通常<rt>つうじょう</rt></ruby>2か<ruby>月<rt>げつ</rt></ruby>ほどで<ruby>届<rt>とど</rt></ruby>く。<br>*(Tùy thời điểm nộp, nhưng đợi chứng chỉ đăng ký về rồi nộp thì an toàn hơn. Thường khoảng 2 tháng là về.)* |
| Ngọc | わかりました。<ruby>届<rt>とど</rt></ruby>いたらすぐ<ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>申請<rt>しんせい</rt></ruby>は<ruby>出入国<rt>でにゅうこく</rt></ruby>在留<ruby>管理局<rt>かんりきょく</rt></ruby>でいいですか。<br>*(Em rõ rồi. Về là em báo anh ngay. Nộp ở cục quản lý xuất nhập cảnh đúng không ạ?)* |
| Yamamoto | そう。<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>出入国<rt>でにゅうこく</rt></ruby>在留<ruby>管理局<rt>かんりきょく</rt></ruby>だよ。<ruby>施設<rt>しせつ</rt></ruby>が<ruby>一部<rt>いちぶ</rt></ruby>サポートするから、<ruby>分<rt>わ</rt></ruby>からないことは<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Đúng. Cục quản lý xuất nhập cảnh Osaka. Cơ sở sẽ hỗ trợ một phần, những gì không hiểu mình cùng xác nhận nhé.)* |

---

## Tình huống 2 — Sảnh Hidamari-en · 10:00, Sato giải thích sự khác biệt 訪問介護 vs 施設介護

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、「<ruby>介護<rt>かいご</rt></ruby>」の<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>になると<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>ができるようになるけど、どういうものか<ruby>知<rt>し</rt></ruby>ってる？<br>*(Nguyễn, khi có tư cách lưu trú 「介護」thì được làm 訪問介護 rồi, em biết 訪問介護 là thế nào không?)* |
| Ngọc | <ruby>利用者<rt>りようしゃ</rt></ruby>さんのお<ruby>宅<rt>たく</rt></ruby>に<ruby>行<rt>い</rt></ruby>って<ruby>介護<rt>かいご</rt></ruby>する、ということですよね。<ruby>施設<rt>しせつ</rt></ruby>とは<ruby>大<rt>おお</rt></ruby>きく<ruby>違<rt>ちが</rt></ruby>いますか。<br>*(Là đến nhà 利用者 để chăm sóc đúng không ạ? Khác 施設介護 nhiều không ạ?)* |
| Sato | かなり<ruby>違<rt>ちが</rt></ruby>う。<ruby>一番<rt>いちばん</rt></ruby><ruby>大<rt>おお</rt></ruby>きい<ruby>違<rt>ちが</rt></ruby>いは、あなたが<ruby>一人<rt>ひとり</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>しないといけない<ruby>場面<rt>ばめん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えること。<ruby>施設<rt>しせつ</rt></ruby>はすぐ<ruby>相談<rt>そうだん</rt></ruby>できる<ruby>人<rt>ひと</rt></ruby>がいるけど、<ruby>訪問<rt>ほうもん</rt></ruby>は<ruby>基本的<rt>きほんてき</rt></ruby>に<ruby>一人<rt>ひとり</rt></ruby>で<ruby>行<rt>い</rt></ruby>くから。<br>*(Khác khá nhiều. Điểm khác lớn nhất là em phải tự phán đoán trong nhiều tình huống hơn. Ở 施設 có người để hỏi ngay, nhưng 訪問 thì về cơ bản đi một mình.)* |
| Ngọc | なるほど。<ruby>急<rt>きゅう</rt></ruby>な<ruby>変化<rt>へんか</rt></ruby>があったときはどうするんですか。<br>*(À hiểu rồi. Khi có thay đổi đột ngột thì làm sao ạ?)* |
| Sato | まず<ruby>施設<rt>しせつ</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>する。<ruby>緊急<rt>きんきゅう</rt></ruby>なら<ruby>救急<rt>きゅうきゅう</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>。<ruby>利用者<rt>りようしゃ</rt></ruby>さんを<ruby>一人<rt>ひとり</rt></ruby>にしないのが<ruby>基本<rt>きほん</rt></ruby>ね。<br>*(Trước hết gọi điện về cơ sở. Nếu khẩn cấp thì liên hệ cấp cứu. Nguyên tắc là không để 利用者 một mình.)* |
| Ngọc | はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>同行<rt>どうこう</rt></ruby>できますか。<br>*(Vâng, em ghi nhớ ạ. Hôm nay em có thể đi cùng chị Sato được không?)* |
| Sato | もちろん。<ruby>今日<rt>きょう</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>同行<ruby>日<rt>び</rt></ruby>にするから、<ruby>横<rt>よこ</rt></ruby>でよく<ruby>見<rt>み</rt></ruby>ていてね。<br>*(Tất nhiên. Hôm nay mình làm ngày đi cùng quan sát, em đứng bên cạnh quan sát kỹ nhé.)* |

---

## Tình huống 3 — Trước nhà ông Matsuda · 10:30, lần đầu đến nhà 利用者

| Vai | Lời thoại |
|---|---|
| Sato | (nhấn chuông) <ruby>松田<rt>まつだ</rt></ruby>さん、ひだまり苑の<ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>に<ruby>参<rt>まい</rt></ruby>りました。<br>*(Ông Matsuda, tôi là Sato từ Hidamari-en. Chúng tôi đến chăm sóc tại nhà ạ.)* |
| Ông Matsuda | (giọng từ trong) ああ、どうぞどうぞ。<br>*(À, mời vào vào.)* |
| Sato | (vào nhà, cởi giày) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>今日<rt>きょう</rt></ruby>は<ruby>研修生<rt>けんしゅうせい</rt></ruby>のグエンを<ruby>連<rt>つ</rt></ruby>れてきました。よろしいですか。<br>*(Xin phép vào ạ. Hôm nay tôi có đem theo Nguyễn, nhân viên đang học nghề. Có phiền không ạ?)* |
| Ông Matsuda | ああ、<ruby>構<rt>かま</rt></ruby>わんよ。ベトナムの<ruby>人<rt>ひと</rt></ruby>かね？<br>*(À, không sao đâu. Người Việt Nam à?)* |
| Ngọc | はじめまして。グエン・ゴックと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh ạ. Cháu tên Nguyễn Ngọc. Mong được chỉ bảo.)* |
| Ông Matsuda | うん、よろしく。それにしても<ruby>遠<rt>とお</rt></ruby>いところから<ruby>来<rt>き</rt></ruby>たね。<br>*(Ừ, chào em. Mà sao từ xa vậy mà sang đây hả.)* |
| Ngọc | はい、<ruby>日本<rt>にほん</rt></ruby>が<ruby>大好<rt>だいす</rt></ruby>きで<ruby>参<rt>まい</rt></ruby>りました。<ruby>松田<rt>まつだ</rt></ruby>さんのお<ruby>世話<rt>せわ</rt></ruby>を<ruby>精一杯<rt>せいいっぱい</rt></ruby>させていただきます。<br>*(Vâng, cháu sang vì yêu Nhật Bản lắm ạ. Cháu sẽ hết sức chăm sóc ông.)* |

---

## Tình huống 4 — Nhà ông Matsuda · 10:45, quan sát Sato làm 身体介護

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>松田<rt>まつだ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>入浴<rt>にゅうよく</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>血圧<rt>けつあつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>りますね。<br>*(Ông Matsuda, hôm nay trước khi tắm, mình đo huyết áp trước nhé.)* |
| Ông Matsuda | ああ、<ruby>頼<rt>たの</rt></ruby>むよ。<ruby>最近<rt>さいきん</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>頭<rt>あたま</rt></ruby>がふらっとすることがある。<br>*(Ừ, nhờ đấy. Dạo này thỉnh thoảng tôi hay chóng mặt.)* |
| Sato | (<ruby>注意<rt>ちゅうい</rt></ruby>しながら測定) 130の78ですね。<ruby>問題<rt>もんだい</rt></ruby>ありませんが、<ruby>入浴中<rt>にゅうよくちゅう</rt></ruby>はゆっくりにしましょう。<br>*(Cẩn thận đo) 130/78 ạ. Không có vấn đề gì, nhưng khi tắm mình làm từ từ nhé.)* |
| Ngọc | (ghi chú vào sổ theo dõi) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>記録<rt>きろく</rt></ruby>は<ruby>訪問記録票<rt>ほうもんきろくひょう</rt></ruby>に<ruby>書<rt>か</rt></ruby>けばいいですか。<br>*(Chị Sato, ghi vào phiếu ghi nhớ 訪問 đúng không ạ?)* |
| Sato | そう。<ruby>血圧<rt>けつあつ</rt></ruby>、<ruby>体温<rt>たいおん</rt></ruby>、<ruby>実施<rt>じっし</rt></ruby>した<ruby>サービス内容<rt>サービスないよう</rt></ruby>、<ruby>特記事項<rt>とっきじこう</rt></ruby>をね。<ruby>後<rt>あと</rt></ruby>でサービス<ruby>提供<rt>ていきょう</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する<ruby>元<rt>もと</rt></ruby>になる。<br>*(Đúng. Huyết áp, thân nhiệt, nội dung dịch vụ đã thực hiện, và ghi chú đặc biệt. Đây là cơ sở để báo cáo với サービス提供責任者 sau.)* |
| Ngọc | サービス<ruby>提供<rt>ていきょう</rt></ruby><ruby>責任者<rt>せきにんしゃ</rt></ruby>というのは？<br>*(サービス提供責任者 là gì ạ?)* |
| Sato | 訪問<ruby>介護<rt>かいご</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てたり、スタッフを<ruby>管理<rt>かんり</rt></ruby>したりする<ruby>責任者<rt>せきにんしゃ</rt></ruby>。サ責って<ruby>呼<rt>よ</rt></ruby>ぶよ。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>か<ruby>実務者研修<rt>じつむしゃけんしゅう</rt></ruby>修了者がなれる。<br>*(Người chịu trách nhiệm lập kế hoạch 訪問介護 và quản lý nhân viên. Gọi tắt là サ責. 介護福祉士 hoặc người đã hoàn thành 実務者研修 thì được làm.)* |
| Ngọc | なるほど。<ruby>将来<rt>しょうらい</rt></ruby>、そういう<ruby>役割<rt>やくわり</rt></ruby>もあるんですね。<br>*(À hiểu rồi. Tương lai còn có vai trò đó nữa nhỉ.)* |

---

## Tình huống 5 — Nhà ông Matsuda · 11:00, hỗ trợ tắm

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>松田<rt>まつだ</rt></ruby>さん、<ruby>浴槽<rt>よくそう</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby>は40<ruby>度<rt>ど</rt></ruby>にしました。<ruby>熱<rt>あつ</rt></ruby>くないですか。<br>*(Ông Matsuda, nhiệt độ bồn tắm để 40 độ rồi ạ. Có nóng quá không?)* |
| Ông Matsuda | ちょうどいい。<br>*(Vừa đúng rồi.)* |
| Sato | (thấp giọng với Ngọc) <ruby>訪問介護<rt>ほうもんかいご</rt></ruby>の<ruby>入浴<rt>にゅうよく</rt></ruby>は、<ruby>施設<rt>しせつ</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>って<ruby>家庭<rt>かてい</rt></ruby>の<ruby>浴槽<rt>よくそう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。<ruby>移乗<rt>いじょう</rt></ruby>のリスクが<ruby>高<rt>たか</rt></ruby>い。<ruby>転倒<rt>てんとう</rt></ruby>に<ruby>特<rt>とく</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>して。<br>*(Nhỏ giọng với Ngọc) 訪問介護 tắm dùng bồn tắm gia đình, khác 施設. Rủi ro khi chuyển tư thế cao hơn. Chú ý đặc biệt té ngã nhé.)* |
| Ngọc | はい、わかりました。<ruby>松田<rt>まつだ</rt></ruby>さん、<ruby>手<rt>て</rt></ruby>すりをつかんでください。ゆっくり<ruby>入<rt>はい</rt></ruby>りますね。<br>*(Vâng, em hiểu. Ông Matsuda, ông cầm vào thanh tay vịn nhé. Mình từ từ vào bồn nhé.)* |
| Ông Matsuda | ありがとう、グエンさん。<ruby>上手<rt>じょうず</rt></ruby>だね。<br>*(Cảm ơn, cô Nguyễn. Khéo tay nhỉ.)* |
| Ngọc | ありがとうございます。<ruby>腰<rt>こし</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Cháu cảm ơn ông. Lưng ông ổn không ạ?)* |
| Ông Matsuda | うん、<ruby>楽<rt>らく</rt></ruby>だよ。お<ruby>湯<rt>ゆ</rt></ruby>が<ruby>気持<rt>きも</rt></ruby>ちいい。<br>*(Ừ, dễ chịu. Nước ấm thoải mái quá.)* |

---

## Tình huống 6 — Nhà ông Matsuda · 11:45, ông kể chuyện và Ngọc lắng nghe

| Vai | Lời thoại |
|---|---|
| Ông Matsuda | (ngồi uống trà sau tắm) グエンさんは<ruby>結婚<rt>けっこん</rt></ruby>してるの？<br>*(Cô Nguyễn kết hôn chưa?)* |
| Ngọc | はい、<ruby>家族<rt>かぞく</rt></ruby>はベトナムにいます。<ruby>母<rt>はは</rt></ruby>と<ruby>弟<rt>おとうと</rt></ruby>が<ruby>カントー<rt>カントー</rt></ruby>にいます。まだ<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>暮<rt>く</rt></ruby>らせていないんです。<br>*(Vâng, gia đình cháu ở Việt Nam. Mẹ và em trai ở Cần Thơ. Chúng cháu vẫn chưa được sống cùng ạ.)* |
| Ông Matsuda | そうか、それは<ruby>大変<rt>たいへん</rt></ruby>だね。<ruby>早<rt>はや</rt></ruby>く<ruby>会<rt>あ</rt></ruby>えるといいね。<br>*(Vậy à, vất vả nhỉ. Mong sớm được gặp nhau nhé.)* |
| Ngọc | ありがとうございます。<ruby>今度<rt>こんど</rt></ruby><ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>が<ruby>変<rt>か</rt></ruby>わって、いつか<ruby>一時帰国<rt>いちじきこく</rt></ruby>もしやすくなりますから。<br>*(Cảm ơn ông. Lần này đổi tư cách lưu trú xong, tương lai sẽ dễ về thăm nhà hơn ạ.)* |
| Ông Matsuda | そうか！それはいいことだ。<ruby>頑張<rt>がんば</rt></ruby>りなさい。わしは<ruby>子<rt>こ</rt></ruby>どもたちが<ruby>遠<rt>とお</rt></ruby>くに<ruby>行<rt>い</rt></ruby>ってしまって、<ruby>今<rt>いま</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>だよ。<ruby>寂<rt>さび</rt></ruby>しいね。<br>*(Vậy à! Tốt đấy. Cố lên nhé. Tôi thì con cái đi xa hết rồi, giờ sống một mình. Cô đơn lắm.)* |
| Ngọc | <ruby>松田<rt>まつだ</rt></ruby>さん、わたしたちがいますよ。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>来<rt>き</rt></ruby>ますから。<br>*(Ông Matsuda, chúng cháu luôn ở đây mà ạ. Tuần nào cháu cũng đến.)* |
| Ông Matsuda | ありがとう。<ruby>来<rt>く</rt></ruby>てくれると<ruby>助<rt>たす</rt></ruby>かるよ。<br>*(Cảm ơn. Có em đến thì tôi được nhờ lắm.)* |

---

## Tình huống 7 — Trên đường về Hidamari-en · 12:30, Sato nhận xét

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>訪問<rt>ほうもん</rt></ruby>どうだった？<ruby>率直<rt>そっちょく</rt></ruby>な<ruby>感想<rt>かんそう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせて。<br>*(Nguyễn, chuyến 訪問 hôm nay thế nào? Nói thật cảm nhận của em đi.)* |
| Ngọc | <ruby>施設<rt>しせつ</rt></ruby>とかなり<ruby>違<rt>ちが</rt></ruby>うと<ruby>感<rt>かん</rt></ruby>じました。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>しなければいけない<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い...緊張<ruby>感<rt>かん</rt></ruby>がありました。<br>*(Cháu thấy khác 施設 khá nhiều. Có nhiều phần phải tự phán đoán... Có cảm giác căng thẳng ạ.)* |
| Sato | それが<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>感想<rt>かんそう</rt></ruby>でいいよ。<ruby>訪問<rt>ほうもん</rt></ruby>は<ruby>場数<rt>ばかず</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>んで<ruby>慣<rt>な</rt></ruby>れていくもの。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>。<br>*(Cảm nhận thật thà như vậy là tốt. 訪問 là cứ đi nhiều mà quen dần. Ban đầu căng thẳng là chuyện bình thường.)* |
| Ngọc | <ruby>松田<rt>まつだ</rt></ruby>さんが<ruby>一人暮<rt>ひとりぐ</rt></ruby>らしなのが...なんか<ruby>気<rt>き</rt></ruby>になりました。<br>*(Ông Matsuda sống một mình... Sao cháu cứ bận lòng.)* |
| Sato | それが<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>の<ruby>大事<rt>だいじ</rt></ruby>なところ。<ruby>施設<rt>しせつ</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>って、<ruby>日常生活<rt>にちじょうせいかつ</rt></ruby>全体を<ruby>支<rt>ささ</rt></ruby>える<ruby>仕事<rt>しごと</rt></ruby>だから。グエンさんはちゃんと<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>気持<rt>きも</rt></ruby>ちを<ruby>感<rt>かん</rt></ruby>じてるね。<br>*(Đó chính là điều quan trọng của 訪問介護. Khác 施設, đây là công việc nâng đỡ toàn bộ cuộc sống hàng ngày. Nguyễn biết cảm nhận cảm xúc của 利用者 rồi đấy.)* |

---

## Tình huống 8 — Hidamari-en · 14:00, Ngọc hỏi thủ tục tại 出入国在留管理局 qua điện thoại

| Vai | Lời thoại |
|---|---|
| Ngọc | (gọi điện) もしもし、<ruby>大阪<rt>おおさか</rt></ruby><ruby>出入国<rt>でにゅうこく</rt></ruby>在留<ruby>管理局<rt>かんりきょく</rt></ruby>でしょうか。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>したいのですが。<br>*(A lô, đây có phải cục quản lý xuất nhập cảnh Osaka không ạ? Tôi muốn xác nhận về việc thay đổi tư cách lưu trú.)* |
| Nhân viên | はい、<ruby>大阪<rt>おおさか</rt></ruby>出入国<ruby>在留管理局<rt>ざいりゅうかんりきょく</rt></ruby>です。どのような<ruby>内容<rt>ないよう</rt></ruby>でしょうか。<br>*(Vâng, đây là cục quản lý xuất nhập cảnh Osaka. Quý khách muốn hỏi về vấn đề gì ạ?)* |
| Ngọc | <ruby>特定技能<rt>とくていぎのう</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>から「<ruby>介護<rt>かいご</rt></ruby>」へ<ruby>変更申請<rt>へんこうしんせい</rt></ruby>したいです。<ruby>申請<rt>しんせい</rt></ruby>の<ruby>際<rt>さい</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*(Tôi muốn xin đổi từ 特定技能1号 sang 「介護」. Xin cho biết các giấy tờ cần thiết khi nộp đơn.)* |
| Nhân viên | <ruby>在留資格変更許可申請書<rt>ざいりゅうしかくへんこうきょかしんせいしょ</rt></ruby>、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby><ruby>登録証<rt>とうろくしょう</rt></ruby>のコピー、<ruby>雇用<rt>こよう</rt></ruby>が<ruby>証明<rt>しょうめい</rt></ruby>できる<ruby>書類<rt>しょるい</rt></ruby>、<ruby>在留カード<rt>ざいりゅうカード</rt></ruby>などが<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Cần đơn xin thay đổi tư cách lưu trú, bản sao chứng chỉ đăng ký 介護福祉士, giấy tờ chứng minh hợp đồng lao động, và thẻ lưu trú ạ.)* |
| Ngọc | ありがとうございます。<ruby>申請<rt>しんせい</rt></ruby>から<ruby>許可<rt>きょか</rt></ruby>まで<ruby>通常<rt>つうじょう</rt></ruby>どのくらいかかりますか。<br>*(Cảm ơn ạ. Từ khi nộp đơn đến khi được phê duyệt thường mất bao lâu ạ?)* |
| Nhân viên | <ruby>通常<rt>つうじょう</rt></ruby>2か<ruby>月<rt>げつ</rt></ruby>から3か<ruby>月<rt>げつ</rt></ruby>ほどです。<ruby>窓口<rt>まどぐち</rt></ruby>に<ruby>来<rt>こ</rt></ruby>られる<ruby>場合<rt>ばあい</rt></ruby>は<ruby>予約<rt>よやく</rt></ruby>をお<ruby>取<rt>と</rt></ruby>りください。<br>*(Thường khoảng 2 đến 3 tháng ạ. Nếu đến cửa sổ trực tiếp, quý khách vui lòng đặt hẹn trước ạ.)* |

---

## Tình huống 9 — Phòng nghỉ nhân viên · 15:30, Đức hỏi về visa

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Nhật — đã quen nhau dùng Nhật cả ở cơ sở) ゴックさん、「<ruby>介護<rt>かいご</rt></ruby>」の<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>が<ruby>呼<rt>よ</rt></ruby>べるの？<br>*(Ngọc, tư cách lưu trú 「介護」thật sự bảo lãnh gia đình được không?)* |
| Ngọc | うん。<ruby>更新回数<rt>こうしんかいすう</rt></ruby>の<ruby>制限<rt>せいげん</rt></ruby>もないし、<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>もできる。そして<ruby>将来<rt>しょうらい</rt></ruby>、<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>も<ruby>開<rt>ひら</rt></ruby>ける。<br>*(Ừ. Không giới hạn số lần gia hạn, còn làm được cả 訪問介護 nữa. Và tương lai mở ra cả con đường 永住権.)* |
| Đức | そっか。<ruby>自分<rt>じぶん</rt></ruby>も<ruby>来年<rt>らいねん</rt></ruby>、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるから...ゴックさんに<ruby>続<rt>つづ</rt></ruby>いていくよ。<br>*(Vậy à. Năm sau mình cũng thi 介護福祉士... Mình đi theo đường của Ngọc thôi.)* |
| Ngọc | <ruby>頑張<rt>がんば</rt></ruby>れ、ドゥックさん！<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Cố lên Đức! Mình cùng nhau cố đấy.)* |

---

## Tình huống 10 — Phòng 介護長 · 16:00, nhận bàn giao phân công 訪問介護 chính thức

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>が<ruby>変更<rt>へんこう</rt></ruby>されたら、<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>に<ruby>加<rt>くわ</rt></ruby>えたいと<ruby>思<rt>おも</rt></ruby>っている。<ruby>今月<rt>こんげつ</rt></ruby>から<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>同行<rt>どうこう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けて、<ruby>慣<rt>な</rt></ruby>れていってほしい。<br>*(Nguyễn, khi tư cách lưu trú đã đổi xong, anh muốn chính thức đưa em vào đội 訪問介護. Từ tháng này cứ tiếp tục đi cùng chị Sato, làm quen dần nhé.)* |
| Ngọc | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>今日<rt>きょう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて<ruby>訪問<rt>ほうもん</rt></ruby>に<ruby>同行<rt>どうこう</rt></ruby>して、とても<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>施設<rt>しせつ</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>う<ruby>緊張感<rt>きんちょうかん</rt></ruby>がありました。<br>*(Vâng, mong anh tiếp tục chỉ đạo. Hôm nay lần đầu đi cùng 訪問, học được rất nhiều. Có cảm giác căng thẳng khác 施設 ạ.)* |
| Yamamoto | その<ruby>緊張感<rt>きんちょうかん</rt></ruby>はいいことだよ。なくなったら<ruby>怖<rt>こわ</rt></ruby>い。<ruby>現場<rt>げんば</rt></ruby>への<ruby>敬意<rt>けいい</rt></ruby>だから。<br>*(Cảm giác căng thẳng đó là tốt. Mất đi mới đáng sợ. Đó là sự kính trọng với công việc thực tế.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、「<ruby>介護<rt>かいご</rt></ruby>」の<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>と<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>一番<rt>いちばん</rt></ruby><ruby>大<rt>おお</rt></ruby>きな<ruby>違<rt>ちが</rt></ruby>いは、やはり<ruby>家族<rt>かぞく</rt></ruby>のことですか。<br>*(Chị Yamamoto, điểm khác biệt lớn nhất giữa tư cách 「介護」và 特定技能 vẫn là về gia đình đúng không ạ?)* |
| Yamamoto | <ruby>実務<rt>じつむ</rt></ruby>の<ruby>面<rt>めん</rt></ruby>では<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>ができること。<ruby>生活<rt>せいかつ</rt></ruby>の<ruby>面<rt>めん</rt></ruby>では<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べること。そして<ruby>将来<rt>しょうらい</rt></ruby>、<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>道<rt>みち</rt></ruby>も<ruby>開<rt>ひら</rt></ruby>ける。グエンさんにとって<ruby>大<rt>おお</rt></ruby>きなステップだよ。<br>*(Về mặt nghiệp vụ là được làm 訪問介護. Về cuộc sống là bảo lãnh gia đình được. Và tương lai còn mở ra con đường 永住権 nữa. Đây là bước tiến lớn với Nguyễn đấy.)* |

---

## Tình huống 11 — Hidamari-en sảnh · 17:00, chào ra về với ông Tanaka

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>外<rt>そと</rt></ruby>に<ruby>出<rt>で</rt></ruby>てたの？<ruby>訪問<rt>ほうもん</rt></ruby>ですか。<br>*(Cô Nguyễn, hôm nay ra ngoài à? 訪問 hả?)* |
| Ngọc | はい、<ruby>田中<rt>たなか</rt></ruby>さん。<ruby>松田<rt>まつだ</rt></ruby>さんのお<ruby>宅<rt>たく</rt></ruby>に<ruby>同行<rt>どうこう</rt></ruby>しました。<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>と<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Vâng, ông Tanaka. Cháu đi cùng đến nhà ông Matsuda ạ. 訪問介護 khác 施設 hoàn toàn ạ.)* |
| Ông Tanaka | そうだろう。<ruby>家<rt>いえ</rt></ruby>でやってもらうのはまた<ruby>別<rt>べつ</rt></ruby>のよさがある。わしもむかし<ruby>家<rt>いえ</rt></ruby>でリハビリしてもらったことがあるんだ。<br>*(Đương nhiên rồi. Được chăm sóc tại nhà có cái hay riêng của nó. Ngày xưa tôi cũng từng được làm phục hồi tại nhà đấy.)* |
| Ngọc | そうなんですか。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>もありがとうございました。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vậy ạ. Ông Tanaka, hôm nay cháu cảm ơn ông. Cháu xin phép về trước ạ.)* |
| Ông Tanaka | ああ、<ruby>気<rt>き</rt></ruby>をつけてな。グエンさん、どんどんよくなってるよ。<br>*(Ừ, về cẩn thận nhé. Cô Nguyễn, cô ngày càng giỏi hơn đấy.)* |

---

## Tình huống 12 — Nhà trọ · 22:00, gọi điện về thăm mẹ ở Cần Thơ

> Scene tiếng Việt — mạch nhớ nhà, cảm xúc người xa quê

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi điện) Mẹ ơi! Con gọi được rồi. Mẹ khỏe không? |
| Mẹ | (tiếng Việt) Mẹ khỏe con ơi. Dạo này con có mệt không? |
| Ngọc | (tiếng Việt, cười nhẹ) Con ổn. Hôm nay con đi chăm sóc tại nhà lần đầu tiên. Khác hẳn ở trung tâm mẹ ạ. |
| Mẹ | (tiếng Việt) Khác sao con? |
| Ngọc | (tiếng Việt) Phải tự quyết định nhiều hơn. Hơi hồi hộp. Nhưng được gặp ông cụ sống một mình, mẹ ơi, con nghĩ đến mẹ liền. |
| Mẹ | (tiếng Việt, giọng nhẹ) Con nhớ nhà nhiều không? |
| Ngọc | (tiếng Việt, giọng xúc động nhẹ) Nhớ chứ mẹ. Nhưng con đang đi đúng đường rồi. Mẹ giữ sức khỏe nhé. Con yêu mẹ. |
| Mẹ | (tiếng Việt) Mẹ yêu con. Cố lên nhé! |

---

## Đọng lại chương 2

Tháng 5 là tháng của những cánh cửa mới: Ngọc hiểu rõ ưu thế của visa「介護」so với 特定技能 (**訪問介護・更新無制限・永住権の道**), nắm được quy trình thủ tục đổi visa (**在留資格変更許可申請書・登録証・2〜3か月**), và lần đầu trải nghiệm chăm sóc tại nhà (**血圧測定・訪問記録票・脱健着患・入浴介助・サービス提供責任者**). Sự khác biệt lớn nhất: ở 訪問 phải **自分で判断** nhiều hơn, nhưng sự kết nối với 利用者 cũng sâu hơn — ông Matsuda sống một mình dạy Ngọc điều đó.

> Từ vựng & mẫu câu chương này: 在留資格「介護」・変更申請・在留資格変更許可申請書・登録証・訪問介護・サービス提供責任者(サ責)・訪問記録票・血圧測定・入浴介助・特記事項・全量摂取・自分で判断・場数を踏む・〜のもとになる・〜に加える・〜の道が開ける', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000003, 800000030, NULL, 'markdown_book', 'T3. Ứng viên trưởng nhóm (リーダー候補)', '# Sách điều dưỡng viên quốc gia · T3. Ứng viên trưởng nhóm (リーダー候補)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, 介護福祉士 mới đổi visa「介護」) được chính thức đề cử làm ユニットリーダー候補. Nội tâm xáo trộn: "người nước ngoài chỉ huy nhân viên Nhật?" Lo ngại từ đồng nghiệp, động viên từ Yamamoto. Chương tập trung các mẫu hội thoại: thông báo đề cử, bày tỏ lo lắng, phản ứng đồng nghiệp, xây dựng tin tưởng, nhận quyết định.

---

## Bối cảnh

Tháng 6 năm 2031. Yamamoto và 施設長 Kobayashi chính thức đề cử Ngọc làm ユニットリーダー候補 cho ユニット2 của Hidamari-en. Đây là lần đầu tiên cơ sở có ứng viên リーダー người nước ngoài. Không phải ai cũng hài lòng — Sato, dù đã công nhận năng lực Ngọc, vẫn có những lo ngại. Đức và Hương ủng hộ nhưng cũng thấy áp lực thay.

---

## Tình huống 1 — Phòng 施設長 · 10:00, Kobayashi thông báo chính thức

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>座<rt>すわ</rt></ruby>ってください。<ruby>今日<rt>きょう</rt></ruby>はユニット2のユニットリーダー<ruby>候補<rt>こうほ</rt></ruby>として、グエンさんを<ruby>推薦<rt>すいせん</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Nguyễn, ngồi xuống đi. Hôm nay tôi muốn đề cử em làm ứng viên ユニットリーダー cho ユニット2.)* |
| Ngọc | (ngạc nhiên) <ruby>施設長<rt>しせつちょう</rt></ruby>、ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>驚<rt>おどろ</rt></ruby>いています。<ruby>自分<rt>じぶん</rt></ruby>でいいのでしょうか。<br>*(Ông Kobayashi, cháu cảm ơn. Cháu hơi bất ngờ. Liệu cháu có phù hợp không ạ?)* |
| Kobayashi | <ruby>山本<rt>やまもと</rt></ruby>さんからの<ruby>強<rt>つよ</rt></ruby>い<ruby>推薦<rt>すいせん</rt></ruby>です。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>、4<ruby>年以上<rt>ねんいじょう</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby>、<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>誠実<rt>せいじつ</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>十分<rt>じゅうぶん</rt></ruby>そろっています。<br>*(Đây là đề cử mạnh mẽ từ chị Yamamoto. Bằng 介護福祉士, hơn 4 năm kinh nghiệm thực tế, thái độ chăm sóc chân thành với 利用者. Điều kiện đủ đầy đủ rồi.)* |
| Ngọc | <ruby>外国人<rt>がいこくじん</rt></ruby>が...<ruby>日本人<rt>にほんじん</rt></ruby>スタッフをまとめることになるのが、<ruby>問題<rt>もんだい</rt></ruby>にならないか<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Cháu lo là người nước ngoài... dẫn nhân viên người Nhật thì có thành vấn đề không ạ.)* |
| Kobayashi | うちの<ruby>施設<rt>しせつ</rt></ruby>は<ruby>能力<rt>のうりょく</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>します。<ruby>国籍<rt>こくせき</rt></ruby>は<ruby>関係<rt>かんけい</rt></ruby>ありません。ただ、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、すべてのスタッフがすぐに<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れるとは<ruby>限<rt>かぎ</rt></ruby>りません。それを<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えるのも、リーダーの<ruby>仕事<rt>しごと</rt></ruby>のひとつです。<br>*(Cơ sở này đánh giá bằng năng lực. Quốc tịch không liên quan. Nhưng nói thật, không phải tất cả nhân viên sẽ chấp nhận ngay. Vượt qua được điều đó cũng là một phần công việc của リーダー.)* |
| Ngọc | ...はい。やらせていただきます。<br>*(... Vâng. Cháu xin nhận ạ.)* |

---

## Tình huống 2 — Hành lang · 10:30, Yamamoto nói chuyện riêng sau cuộc họp

| Vai | Lời thoại |
|---|---|
| Yamamoto | (thấp giọng) グエンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>？<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>緊張<rt>きんちょう</rt></ruby>してるよ。<br>*(Nguyễn, ổn không? Trông mặt căng thẳng quá đấy.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと...すごく<ruby>不安<rt>ふあん</rt></ruby>です。スタッフの<ruby>方<rt>かた</rt></ruby>たちが<ruby>納得<rt>なっとく</rt></ruby>してくれるか。<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>仕切<rt>しき</rt></ruby>れるか。<br>*(Chị Yamamoto, nói thật... Em lo lắm. Liệu các nhân viên có chấp nhận không. Liệu em có điều phối được toàn bộ bằng tiếng Nhật không ạ.)* |
| Yamamoto | その<ruby>不安<rt>ふあん</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>気持<rt>きも</rt></ruby>ちだよ。でもグエンさん、アンさんはどうだった？<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>じゃなかった<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、それでも<ruby>田中<rt>たなか</rt></ruby>さんと<ruby>仲良<rt>なかよ</rt></ruby>くなれた。なぜだと<ruby>思<rt>おも</rt></ruby>う？<br>*(Lo lắng đó là cảm xúc thật. Nhưng Nguyễn, An thì thế nào? Hồi đầu tiếng Nhật chưa giỏi, vậy mà vẫn thân được với ông Tanaka. Em nghĩ tại sao vậy?)* |
| Ngọc | ...<ruby>誠実<rt>せいじつ</rt></ruby>に<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>ったから、ですか。<br>*(... Vì đã đối diện chân thành, phải không ạ?)* |
| Yamamoto | そう。リーダーも<ruby>同<rt>おな</rt></ruby>じだよ。<ruby>言語<rt>げんご</rt></ruby>じゃなくて、<ruby>向<rt>む</rt></ruby>き<ruby>合<rt>あ</rt></ruby>い<ruby>方<rt>かた</rt></ruby>でスタッフは<ruby>信頼<rt>しんらい</rt></ruby>するかどうか<ruby>決<rt>き</rt></ruby>める。<br>*(Đúng vậy. リーダー cũng giống nhau. Nhân viên quyết định có tin tưởng hay không dựa vào cách đối diện, không phải ngôn ngữ.)* |
| Ngọc | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し、<ruby>気持<rt>きも</rt></ruby>ちが<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Cảm ơn chị. Em thấy nhẹ lòng hơn một chút rồi.)* |

---

## Tình huống 3 — Phòng ăn nhân viên · 12:00, Sato bày tỏ lo ngại thẳng thắn

| Vai | Lời thoại |
|---|---|
| Sato | (ngồi cùng, bắt đầu thẳng thắn) グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>、<ruby>聞<rt>き</rt></ruby>きました。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>っていいですか。<br>*(Nguyễn, tôi nghe chuyện hôm nay rồi. Tôi nói thẳng được không?)* |
| Ngọc | はい、<ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, chị Sato, mong chị cứ nói.)* |
| Sato | グエンさんの<ruby>介護<rt>かいご</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>は<ruby>認<rt>みと</rt></ruby>めています。でも、リーダーは<ruby>技術<rt>ぎじゅつ</rt></ruby>だけじゃない。<ruby>シフト管理<rt>シフトかんり</rt></ruby>、スタッフへの<ruby>指示<rt>しじ</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby>...日本語でのやりとりが<ruby>複雑<rt>ふくざつ</rt></ruby>になる。<br>*(Tôi công nhận kỹ thuật điều dưỡng của Nguyễn. Nhưng リーダー không chỉ là kỹ thuật. Quản lý ca, chỉ đạo nhân viên, đối ứng gia đình, quản lý hồ sơ... Giao tiếp bằng tiếng Nhật sẽ phức tạp hơn nhiều.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんのご<ruby>心配<rt>しんぱい</rt></ruby>は<ruby>理解<rt>りかい</rt></ruby>できます。<ruby>正直<rt>しょうじき</rt></ruby>、わたしも<ruby>同<rt>おな</rt></ruby>じことを<ruby>心配<rt>しんぱい</rt></ruby>しています。でも、<ruby>諦<rt>あきら</rt></ruby>めずに<ruby>一つ一つ<rt>ひとつひとつ</rt></ruby><ruby>学<rt>まな</rt></ruby>んでいきたいと<ruby>思<rt>おも</rt></ruby>います。<ruby>佐藤<rt>さとう</rt></ruby>さんにも<ruby>教<rt>おし</rt></ruby>えていただければありがたいです。<br>*(Em hiểu lo lắng của chị. Thật ra em cũng lo cùng những điều đó. Nhưng em muốn học từng chút một mà không bỏ cuộc. Em rất mong được chị Sato chỉ dạy thêm.)* |
| Sato | (ngừng lại một chút) ...グエンさんが<ruby>諦<rt>あきら</rt></ruby>めなければ、わたしも<ruby>協力<rt>きょうりょく</rt></ruby>します。でも、<ruby>分<rt>わ</rt></ruby>からないことがあったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くこと。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>まないで。<br>*(... Nếu Nguyễn không bỏ cuộc, tôi cũng sẽ hợp tác. Nhưng khi không hiểu thì phải hỏi. Đừng một mình gánh hết.)* |
| Ngọc | はい、ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さん。<br>*(Vâng, em cảm ơn chị Sato.)* |

---

## Tình huống 4 — Khu ユニット2 · 14:00, thảo luận cách chăm sóc ông Kimura với đội nhóm

| Vai | Lời thoại |
|---|---|
| Nhân viên A | グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>夜間<rt>やかん</rt></ruby>の<ruby>睡眠<rt>すいみん</rt></ruby>が<ruby>最近<rt>さいきん</rt></ruby><ruby>良<rt>よ</rt></ruby>くないんですよ。<br>*(Nguyễn, dạo này ban đêm ông Kimura ngủ không tốt đấy.)* |
| Ngọc | そうですか。<ruby>日中<rt>にっちゅう</rt></ruby>の<ruby>活動量<rt>かつどうりょう</rt></ruby>はどうですか？<ruby>昼寝<rt>ひるね</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>は？<br>*(Vậy ạ. Ban ngày lượng hoạt động thế nào? Thời gian ngủ trưa ra sao?)* |
| Nhân viên A | <ruby>昼食<rt>ちゅうしょく</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に2<ruby>時間<rt>じかん</rt></ruby>ぐらい<ruby>寝<rt>ね</rt></ruby>ています。<br>*(Sau bữa trưa ngủ khoảng 2 tiếng đấy.)* |
| Ngọc | それが<ruby>夜間<rt>やかん</rt></ruby>の<ruby>不眠<rt>ふみん</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>しているかもしれませんね。<ruby>昼寝<rt>ひるね</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>短<rt>みじか</rt></ruby>くして、<ruby>日中<rt>にっちゅう</rt></ruby>の<ruby>活動<rt>かつどう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やすことを<ruby>試<rt>こころ</rt></ruby>してみましょうか。<ruby>中村<rt>なかむら</rt></ruby>さんにも<ruby>相談<rt>そうだん</rt></ruby>してみます。<br>*(Điều đó có thể ảnh hưởng đến mất ngủ ban đêm nhỉ. Mình thử rút ngắn giấc ngủ trưa một chút, tăng hoạt động ban ngày xem sao. Em sẽ hỏi thêm chị Nakamura nhé.)* |
| Nhân viên A | そうですね。グエンさん、<ruby>中村<rt>なかむら</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>していただけますか。<br>*(Đúng rồi. Nguyễn, em liên hệ với chị Nakamura được không?)* |
| Ngọc | はい、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>記録<rt>きろく</rt></ruby>にも<ruby>経過<rt>けいか</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>しておきますね。<br>*(Vâng, chiều hôm nay em sẽ xác nhận. Em cũng ghi lại tiến triển vào hồ sơ nhé.)* |

---

## Tình huống 5 — Phòng điều dưỡng · 14:30, hỏi y tá Nakamura về ông Kimura

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>夜間<rt>やかん</rt></ruby>の<ruby>睡眠<rt>すいみん</rt></ruby>について<ruby>相談<rt>そうだん</rt></ruby>したいのですが、<ruby>今<rt>いま</rt></ruby>よろしいですか。<br>*(Chị Nakamura, em muốn hỏi về giấc ngủ ban đêm của ông Kimura, chị có rảnh không ạ?)* |
| Nakamura | いいですよ。どういう<ruby>状況<rt>じょうきょう</rt></ruby>ですか。<br>*(Được đấy. Tình trạng thế nào vậy?)* |
| Ngọc | <ruby>最近<rt>さいきん</rt></ruby>、<ruby>夜間<rt>やかん</rt></ruby>に<ruby>覚醒<rt>かくせい</rt></ruby>することが<ruby>増<rt>ふ</rt></ruby>えています。<ruby>昼寝<rt>ひるね</rt></ruby>が2<ruby>時間<rt>じかん</rt></ruby>ほどあるので、それとの<ruby>関係<rt>かんけい</rt></ruby>を<ruby>疑<rt>うたが</rt></ruby>っています。<br>*(Dạo này ban đêm ông hay tỉnh giấc hơn. Ngủ trưa khoảng 2 tiếng nên em nghi có liên quan.)* |
| Nakamura | <ruby>考<rt>かんが</rt></ruby>えられますね。<ruby>薬<rt>くすり</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>もあるかもしれないから、<ruby>主治医<rt>しゅじい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してみます。<ruby>昼寝<rt>ひるね</rt></ruby>は30<ruby>分<rt>ぷん</rt></ruby>くらいに<ruby>調整<rt>ちょうせい</rt></ruby>してみましょうか。<br>*(Có thể vậy nhỉ. Thuốc cũng có thể ảnh hưởng, nên tôi báo bác sĩ chủ trị thử. Thử điều chỉnh ngủ trưa xuống khoảng 30 phút nhé.)* |
| Ngọc | ありがとうございます。<ruby>介護<rt>かいご</rt></ruby>サイドでできることを<ruby>記録<rt>きろく</rt></ruby>して、<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Cảm ơn chị. Em ghi lại những gì bên điều dưỡng có thể làm và chia sẻ với mọi người nhé.)* |
| Nakamura | そういう<ruby>連携<rt>れんけい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。グエンさん、リーダー<ruby>候補<rt>こうほ</rt></ruby>になったって<ruby>聞<rt>き</rt></ruby>きました。<ruby>応援<rt>おうえん</rt></ruby>していますよ。<br>*(Sự phối hợp như vậy rất quan trọng. Tôi nghe nói Nguyễn trở thành ứng viên リーダー rồi. Tôi ủng hộ em đấy.)* |

---

## Tình huống 6 — ユニット2 · 15:30, lần đầu thử phân công ca cho nhân viên

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>練習<rt>れんしゅう</rt></ruby>として、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>シフト案<rt>シフトあん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってみてください。<ruby>実際<rt>じっさい</rt></ruby>には<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>確認<rt>かくにん</rt></ruby>しますが、まず<ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えてみて。<br>*(Nguyễn, thử thực hành đi, em lập dự thảo ca tuần sau xem sao. Thực tế sẽ xác nhận với chị Sato, nhưng trước tiên em tự nghĩ thử đi.)* |
| Ngọc | はい。えっと...ユニット2は<ruby>利用者<rt>りようしゃ</rt></ruby>さんが10<ruby>名<rt>めい</rt></ruby>で、<ruby>早番<rt>はやばん</rt></ruby>・<ruby>日勤<rt>にっきん</rt></ruby>・<ruby>遅番<rt>おそばん</rt></ruby>・<ruby>夜勤<rt>やきん</rt></ruby>の4<ruby>種類<rt>しゅるい</rt></ruby>のシフトがありますね。<br>*(Vâng. Ừm... ユニット2 có 10 利用者, có 4 loại ca: sớm, ngày, muộn, đêm đúng không ạ.)* |
| Yamamoto | そう。<ruby>夜勤<rt>やきん</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>経験者<rt>けいけんしゃ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れること。<ruby>早番<rt>はやばん</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby>の<ruby>身体<rt>しんたい</rt></ruby>ケアが<ruby>多<rt>おお</rt></ruby>いから、<ruby>手<rt>て</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いスタッフを<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせること。<br>*(Đúng. Ca đêm nhất định phải có người có kinh nghiệm. Ca sớm nhiều chăm sóc thân thể buổi sáng nên kết hợp nhân viên làm nhanh vào.)* |
| Ngọc | (ghi nhanh) わかりました。あと、Aさんが<ruby>来週<rt>らいしゅう</rt></ruby><ruby>木曜<rt>もくよう</rt></ruby>に<ruby>有給<rt>ゆうきゅう</rt></ruby>をとると<ruby>聞<rt>き</rt></ruby>いています。それも<ruby>考慮<rt>こうりょ</rt></ruby>しますね。<br>*(Ghi nhanh) Em rõ. À, em nghe nói nhân viên A tuần sau thứ Năm nghỉ phép có lương. Em cũng tính vào nhé.)* |
| Yamamoto | いいね。ちゃんと<ruby>把握<rt>はあく</rt></ruby>してる。<ruby>明日<rt>あした</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby>までに<ruby>案<rt>あん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。<br>*(Tốt đấy. Em nắm chắc rồi. Em đưa dự thảo trước buổi sáng ngày mai nhé.)* |

---

## Tình huống 7 — Phòng nghỉ nhân viên · 16:00, Hương và An ủng hộ

| Vai | Lời thoại |
|---|---|
| Hương | ゴック、リーダー<ruby>候補<rt>こうほ</rt></ruby>になったって<ruby>本当<rt>ほんとう</rt></ruby>？すごいじゃん！<br>*(Ngọc, nghe nói mày thành ứng viên リーダー là thật à? Giỏi ghê!)* |
| Ngọc | うん、でも<ruby>自信<rt>じしん</rt></ruby>はないよ...。<ruby>日本語<rt>にほんご</rt></ruby>でスタッフに<ruby>指示<rt>しじ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>したり、<ruby>記録<rt>きろく</rt></ruby>を<ruby>管理<rt>かんり</rt></ruby>したりが<ruby>不安<rt>ふあん</rt></ruby>で。<br>*(Ừ, nhưng tao không tự tin... Lo chỉ đạo nhân viên bằng tiếng Nhật, rồi quản lý hồ sơ ấy.)* |
| An | グエンさん、でも<ruby>今<rt>いま</rt></ruby>まで<ruby>一番<rt>いちばん</rt></ruby><ruby>真面目<rt>まじめ</rt></ruby>に<ruby>仕事<rt>しごと</rt></ruby>してきたのは<ruby>見<rt>み</rt></ruby>てました。<ruby>田中<rt>たなか</rt></ruby>さんも<ruby>木村<rt>きむら</rt></ruby>さんも、グエンさんのことが<ruby>好<rt>す</rt></ruby>きでしょ。<br>*(Chị Ngọc, nhưng em đã thấy chị là người chăm chỉ nhất từ trước đến nay. Ông Tanaka và ông Kimura đều quý chị mà.)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>は<ruby>応援<rt>おうえん</rt></ruby>してるよ。<ruby>困<rt>こま</rt></ruby>ったら<ruby>相談<rt>そうだん</rt></ruby>してね。カンファレンスの<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>とか、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しようか。<br>*(Tao ủng hộ mày. Có gì khó thì nói với tao nhé. Cách viết biên bản カンファレンス hay gì đó, mình cùng luyện tập thử nhé.)* |
| Ngọc | ヒューン、ありがとう。アンも。<ruby>一人<rt>ひとり</rt></ruby>じゃないって<ruby>思<rt>おも</rt></ruby>ったら、<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になった。<br>*(Hương, cảm ơn. Cả An nữa. Nghĩ là không một mình thì thấy nhẹ hơn nhiều rồi.)* |

---

## Tình huống 8 — Bên giường ông Tanaka · 17:00, chia sẻ với người thân thiết

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>していいですか。<br>*(Ông Tanaka, hôm nay cháu nói chuyện một chút được không ạ?)* |
| Ông Tanaka | ああ、<ruby>座<rt>すわ</rt></ruby>りなさい。どうした、<ruby>浮<rt>う</rt></ruby>かない<ruby>顔<rt>かお</rt></ruby>してるな。<br>*(Ừ, ngồi xuống đi. Sao vậy, trông không vui nhỉ.)* |
| Ngọc | <ruby>実<rt>じつ</rt></ruby>は、ユニットリーダー<ruby>候補<rt>こうほ</rt></ruby>に<ruby>選<rt>えら</rt></ruby>ばれたんです。でも、<ruby>外国人<rt>がいこくじん</rt></ruby>がリーダーになって、みんなに<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れてもらえるか...<ruby>自信<rt>じしん</rt></ruby>がなくて。<br>*(Thật ra, cháu được chọn làm ứng viên ユニットリーダー ạ. Nhưng người nước ngoài làm リーダー, liệu mọi người có chấp nhận không... Cháu không tự tin.)* |
| Ông Tanaka | (nhìn Ngọc nghiêm túc) グエンさん、わしはここに<ruby>来<rt>き</rt></ruby>て5<ruby>年<rt>ねん</rt></ruby>になる。<ruby>担当<rt>たんとう</rt></ruby>の<ruby>職員<rt>しょくいん</rt></ruby>はいろいろあったが、グエンさんみたいに<ruby>丁寧<rt>ていねい</rt></ruby>で<ruby>一生懸命<rt>いっしょうけんめい</rt></ruby>な<ruby>人<rt>ひと</rt></ruby>はなかなかおらんよ。<br>*(Nhìn Ngọc nghiêm túc) Cô Nguyễn, tôi vào đây 5 năm rồi. Nhân viên phụ trách có nhiều người, nhưng người cẩn thận và cố gắng như cô Nguyễn thì không nhiều đâu.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん...<br>*(Ông Tanaka...)* |
| Ông Tanaka | <ruby>国籍<rt>こくせき</rt></ruby>なんか<ruby>関係<rt>かんけい</rt></ruby>ない。<ruby>利用者<rt>りようしゃ</rt></ruby>のことを<ruby>考<rt>かんが</rt></ruby>えてくれるかどうかが<ruby>大事<rt>だいじ</rt></ruby>なんだよ。グエンさんはそれができてる。リーダーになりなさい。<br>*(Quốc tịch không quan trọng. Điều quan trọng là có nghĩ đến 利用者 hay không. Cô Nguyễn làm được điều đó. Hãy làm リーダー đi.)* |
| Ngọc | ありがとうございます、<ruby>田中<rt>たなか</rt></ruby>さん。<ruby>勇気<rt>ゆうき</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<br>*(Cảm ơn ông Tanaka. Cháu thấy mình có can đảm hơn rồi ạ.)* |

---

## Tình huống 9 — Phòng của Ngọc · 21:00, ôn luyện cách viết 申し送り và báo cáo リーダー

| Vai | Lời thoại |
|---|---|
| Ngọc | (tự học, đọc to) <ruby>業務<rt>ぎょうむ</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎ...「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りを<ruby>始<rt>はじ</rt></ruby>めます」から<ruby>始<rt>はじ</rt></ruby>めるんだな。<br>*(Tự học, đọc to) Bàn giao công việc... Bắt đầu bằng "Xin bắt đầu bàn giao ca ngày hôm nay" đúng rồi.)* |
| Hương | (video call) ゴック、まだ<ruby>勉強<rt>べんきょう</rt></ruby>してるの？<ruby>遅<rt>おそ</rt></ruby>いよ。<br>*(Ngọc, mày vẫn đang học à? Muộn rồi đấy.)* |
| Ngọc | うん。カンファレンスの<ruby>司会<rt>しかい</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>してる。「ではカンファレンスを<ruby>始<rt>はじ</rt></ruby>めます」から、えっと...「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>議題<rt>ぎだい</rt></ruby>は」ってどう<ruby>続<rt>つづ</rt></ruby>けるんだっけ。<br>*(Ừ. Tao đang luyện cách điều phối カンファレンス. "Vậy xin bắt đầu カンファレンス", rồi... "Chủ đề hôm nay là" thì nói tiếp như thế nào nhỉ.)* |
| Hương | 「<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>議題<rt>ぎだい</rt></ruby>は〇〇についてです」で<ruby>続<rt>つづ</rt></ruby>ければいいよ。そこまで<ruby>難<rt>むずか</rt></ruby>しくない。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Tiếp theo "Chủ đề hôm nay là về XX" là được. Không khó đến vậy đâu. Mình cùng đọc to luyện tập nhé.)* |
| Ngọc | ヒューン、ほんとにありがとう。<br>*(Hương, thật sự cảm ơn mày nhiều.)* |

---

## Tình huống 10 — ユニット2 · 翌朝 8:30, thực hành bàn giao ca sáng đầu tiên với tư cách リーダー候補

| Vai | Lời thoại |
|---|---|
| Ngọc | (thận trọng, giọng rõ) では、<ruby>申<rt>もう</rt></ruby>し<ruby>送<rt>おく</rt></ruby>りをはじめます。<ruby>昨夜<rt>さくや</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>からの<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎです。<ruby>木村<rt>きむら</rt></ruby>さん、<ruby>夜間<rt>やかん</rt></ruby>1<ruby>時<rt>じ</rt></ruby>ごろに<ruby>覚醒<rt>かくせい</rt></ruby>あり。<ruby>トイレ誘導<rt>トイレゆうどう</rt></ruby>した<ruby>後<rt>あと</rt></ruby>、<ruby>再入眠<rt>さいにゅうみん</rt></ruby>。<ruby>特変<rt>とくへん</rt></ruby>なし。<br>*(Thận trọng, giọng rõ) Vậy xin bắt đầu bàn giao ca. Đây là bàn giao từ ca đêm qua. Ông Kimura khoảng 1 giờ đêm có tỉnh giấc. Sau khi đưa đi vệ sinh, đã ngủ lại. Không có gì bất thường.)* |
| Nhân viên B | (ca sáng) グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>体温<rt>たいおん</rt></ruby>は？<br>*(Nguyễn, thân nhiệt ông Tanaka thế nào?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>6<ruby>時<rt>じ</rt></ruby>の<ruby>測定<rt>そくてい</rt></ruby>で36.5<ruby>度<rt>ど</rt></ruby>、<ruby>平熱<rt>へいねつ</rt></ruby>です。<ruby>食欲<rt>しょくよく</rt></ruby>あり、<ruby>朝食<rt>ちょうしょく</rt></ruby>は<ruby>全量摂取<rt>ぜんりょうせっしゅ</rt></ruby>でした。<br>*(Ông Tanaka, đo lúc 6 giờ sáng 36.5 độ, nhiệt độ bình thường. Ngon miệng, bữa sáng ăn hết phần.)* |
| Sato | (quan sát, gật đầu nhẹ) グエンさん、<ruby>情報<rt>じょうほう</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>ができてますね。<br>*(Nguyễn, em tổng hợp thông tin gọn gàng đấy.)* |
| Ngọc | (nhẹ nhõm) ありがとうございます。<br>*(Cảm ơn chị.)* |

---

## Tình huống 11 — Phòng Kobayashi · 17:30, nhận thư đề cử chính thức

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、ユニットリーダー<ruby>候補<rt>こうほ</rt></ruby>の<ruby>内示<rt>ないじ</rt></ruby>書です。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>辞令<rt>じれい</rt></ruby>は<ruby>来月<rt>らいげつ</rt></ruby>になります。<br>*(Nguyễn, đây là thông báo nội bộ về đề cử làm ứng viên ユニットリーダー. Quyết định chính thức sẽ vào tháng sau.)* |
| Ngọc | (nhận tờ giấy, đọc) ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Nhận tờ giấy, đọc) Em cảm ơn. Em sẽ cố gắng ạ.)* |
| Kobayashi | グエンさん、リーダーは<ruby>完璧<rt>かんぺき</rt></ruby>じゃなくていい。チームを<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>ろうとする<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>失敗<rt>しっぱい</rt></ruby>したら<ruby>報告<rt>ほうこく</rt></ruby>する。<ruby>分<rt>わ</rt></ruby>からなければ<ruby>聞<rt>き</rt></ruby>く。それがリーダーの<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Nguyễn, リーダー không cần hoàn hảo. Thái độ cố gắng kéo cả đội đi mới là quan trọng. Khi thất bại thì báo cáo. Khi không hiểu thì hỏi. Đó là cơ bản của リーダー.)* |
| Ngọc | はい。「<ruby>失敗<rt>しっぱい</rt></ruby>したら<ruby>報告<rt>ほうこく</rt></ruby>する」、<ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Vâng. "Khi thất bại thì báo cáo", cháu sẽ khắc vào lòng ạ.)* |

---

## Tình huống 12 — Điện thoại đêm · 22:00, gọi về kể chuyện cho mẹ nghe

> Scene tiếng Việt — mạch nhớ nhà, chia sẻ cảm xúc thật

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, mẹ nghe tin này không — con được đề cử làm trưởng nhóm rồi. |
| Mẹ | (tiếng Việt) Thật không?! Trưởng nhóm! Con làm được không? Có phải chỉ huy người Nhật không? |
| Ngọc | (tiếng Việt) Có mẹ ơi. Con sợ lắm. Buổi sáng họp xong con run hết chân. Nhưng ông Tanaka nói với con là... quốc tịch không quan trọng, điều quan trọng là có nghĩ đến người ta hay không. |
| Mẹ | (tiếng Việt) Ông cụ nói hay quá. Mẹ cũng nghĩ vậy. Con làm được mà. |
| Ngọc | (tiếng Việt) Mẹ ơi, con nhớ nhà lắm. Mỗi lần gặp chuyện khó, con muốn mẹ ở bên cạnh ghê. |
| Mẹ | (tiếng Việt) Mẹ cũng nhớ con. Nhưng con đang làm đúng rồi. Cứ vậy đi. Mẹ và em ủng hộ con. |

---

## Đọng lại chương 3

Chương 3 là chương của nỗi sợ và can đảm. Ngọc đối mặt với thực tế: không phải ai cũng đón nhận ngay một ứng viên リーダー người nước ngoài — Sato nói thẳng, Kobayashi cũng thành thật. Nhưng qua ông Tanaka, qua Hương và An, Ngọc hiểu rằng リーダー không phải là người hoàn hảo, mà là người **誠実に向き合う** — chân thành đối diện. Kỹ năng mới bắt đầu hình thành: lập **シフト案**, bàn giao **申し送り** chuẩn mực, hội ý với **看護師** về phác đồ chăm sóc.

> Từ vựng & mẫu câu chương này: ユニットリーダー候補・推薦・内示書・辞令・シフト管理・早番・日勤・遅番・夜勤・有給・申し送り・覚醒・トイレ誘導・再入眠・特変なし・全量摂取・カンファレンス・議題・司会・〜を乗り越える・誠実に向き合う・一人で抱え込まない・失敗したら報告する', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000004, 800000030, NULL, 'markdown_book', 'T4. Chủ trì hội thảo ca (カンファレンスを主催)', '# Sách điều dưỡng viên quốc gia · T4. Chủ trì hội thảo ca (カンファレンスを主催)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, ユニットリーダー候補) lần đầu chủ trì カンファレンス/申し送り cho ユニット2. Vấp phải kanji trong 議事録 và thuật ngữ chuyên môn quản lý, học cách điều hành họp, nhận phản hồi từ đồng nghiệp. Chương tập trung: kỹ năng mở/dẫn/kết thúc họp, xử lý khi không biết từ, ghi 議事録, phối hợp với y tá trong カンファレンス đa chuyên ngành.

---

## Bối cảnh

Tháng 7 năm 2031. Ngọc được Yamamoto giao chủ trì カンファレンス月例 (họp case tháng) của ユニット2. Tham dự gồm: Ngọc (chủ trì), Yamamoto (quan sát), Sato, 3 nhân viên điều dưỡng, Nakamura (y tá). Chủ đề: xem xét lại kế hoạch chăm sóc ông Kimura (認知症 nhẹ, mất ngủ), và bàn về ông Tanaka (phục hồi chức năng). Ngọc chuẩn bị kỹ nhưng vẫn vấp kanji khi đọc hồ sơ.

---

## Tình huống 1 — Phòng họp · 9:45, Ngọc chuẩn bị trước カンファレンス

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn tài liệu, lẩm bẩm) えっと...「<ruby>褥瘡<rt>じょくそう</rt></ruby>リスク<ruby>評価<rt>ひょうか</rt></ruby>」、「<ruby>摂食<rt>せっしょく</rt></ruby><ruby>嚥下<rt>えんげ</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>」...よし、<ruby>読<rt>よ</rt></ruby>める。「<ruby>認知機能<rt>にんちきのう</rt></ruby><ruby>低下<rt>ていか</rt></ruby>」...これは...<br>*(Nhìn tài liệu, lẩm bẩm) Ừm... "Đánh giá nguy cơ loét tì đè", "Tình trạng nuốt thức ăn"... Được, đọc được. "Suy giảm chức năng nhận thức"... Cái này thì...)* |
| Hương | (đi qua) ゴック、どうした？<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>青<rt>あお</rt></ruby>い。<br>*(Ngọc, sao vậy? Mặt tái quá.)* |
| Ngọc | カンファレンスの<ruby>議事録<rt>ぎじろく</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくて...「<ruby>廃用<rt>はいよう</rt></ruby><ruby>症候群<rt>しょうこうぐん</rt></ruby>」とか「<ruby>経過観察<rt>けいかかんさつ</rt></ruby>」とか。<br>*(Kanji trong biên bản カンファレンス khó quá... "Hội chứng không dùng" hay "Theo dõi diễn tiến" gì đó...)* |
| Hương | ふりがなを<ruby>書<rt>か</rt></ruby>いてある？<ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>読<rt>よ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げるだけじゃなくて、<ruby>説明<rt>せつめい</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>だよ。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>単語<rt>たんご</rt></ruby>にルビを<ruby>振<rt>ふ</rt></ruby>っておいて。<br>*(Mày có ghi furigana chưa? Biên bản không chỉ đọc thôi, cần giải thích nữa. Những từ quan trọng thì ghi furigana vào đi.)* |
| Ngọc | そうだね。<ruby>今<rt>いま</rt></ruby>からやる。ありがとう。<br>*(Đúng rồi. Tao làm ngay bây giờ. Cảm ơn mày.)* |

---

## Tình huống 2 — Phòng họp · 10:00, khai mạc カンファレンス

| Vai | Lời thoại |
|---|---|
| Ngọc | (giọng rõ, hơi căng thẳng) では、<ruby>時間<rt>じかん</rt></ruby>になりましたので、ユニット2の<ruby>月例<rt>げつれい</rt></ruby>カンファレンスを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>司会<rt>しかい</rt></ruby>はわたし、グエンが<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Giọng rõ, hơi căng thẳng) Vậy đã đến giờ rồi, xin bắt đầu カンファレンス tháng của ユニット2. Người điều phối hôm nay là tôi, Nguyễn.)* |
| Ngọc | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>議題<rt>ぎだい</rt></ruby>は2<ruby>件<rt>けん</rt></ruby>です。<ruby>一件目<rt>いっけんめ</rt></ruby>は<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>ケア計画<rt>ケアけいかく</rt></ruby>の<ruby>見直<rt>みなお</rt></ruby>し、<ruby>二件目<rt>にけんめ</rt></ruby>は<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>リハビリ<rt>リハビリ</rt></ruby><ruby>進捗<rt>しんちょく</rt></ruby>です。では、<ruby>一件目<rt>いっけんめ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Hôm nay có 2 chủ đề. Thứ nhất là xem lại kế hoạch chăm sóc ông Kimura, thứ hai là tiến độ phục hồi của ông Tanaka. Vậy xin bắt đầu từ chủ đề thứ nhất.)* |
| Yamamoto | (gật đầu nhẹ, quan sát) <br>*(gật đầu nhẹ, quan sát)* |
| Sato | (thái độ tập trung, chú ý) <br>*(thái độ tập trung, chú ý)* |

---

## Tình huống 3 — Phòng họp · 10:05, trình bày tình trạng ông Kimura

| Vai | Lời thoại |
|---|---|
| Ngọc | まず<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>現状<rt>げんじょう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>先月<rt>せんげつ</rt></ruby>から<ruby>夜間<rt>やかん</rt></ruby>の<ruby>覚醒<rt>かくせい</rt></ruby>が<ruby>増加<rt>ぞうか</rt></ruby>しており、<ruby>昼間<rt>ひるま</rt></ruby>の<ruby>傾眠<rt>けいみん</rt></ruby>も<ruby>見<rt>み</rt></ruby>られます。<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>摂取量<rt>せっしゅりょう</rt></ruby>はここ2<ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>8割<rt>はちわり</rt></ruby>程度です。<br>*(Trước tiên báo cáo tình trạng hiện tại của ông Kimura. Từ tháng trước số lần thức giấc ban đêm tăng lên, ban ngày cũng thấy hay ngủ gật. Lượng ăn 2 tuần qua khoảng 80%.)* |
| Nakamura | <ruby>薬<rt>くすり</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>について<ruby>主治医<rt>しゅじい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>しました。<ruby>睡眠薬<rt>すいみんやく</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>減<rt>へ</rt></ruby>らす<ruby>方向<rt>ほうこう</rt></ruby>で<ruby>検討中<rt>けんとうちゅう</rt></ruby>です。<br>*(Tôi đã hỏi bác sĩ chủ trị về điều chỉnh thuốc. Đang xem xét giảm nhẹ liều thuốc ngủ.)* |
| Ngọc | ありがとうございます、<ruby>中村<rt>なかむら</rt></ruby>さん。<ruby>介護<rt>かいご</rt></ruby>サイドからは、<ruby>昼寝<rt>ひるね</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を30<ruby>分<rt>ぷん</rt></ruby>に<ruby>制限<rt>せいげん</rt></ruby>し、<ruby>午前<rt>ごぜん</rt></ruby>の<ruby>活動<rt>かつどう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やすという<ruby>案<rt>あん</rt></ruby>があります。みなさん、いかがでしょうか。<br>*(Cảm ơn chị Nakamura. Từ phía điều dưỡng, chúng tôi có đề xuất hạn chế ngủ trưa 30 phút và tăng hoạt động buổi sáng. Mọi người thấy thế nào ạ?)* |
| Nhân viên A | <ruby>賛成<rt>さんせい</rt></ruby>です。<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>体操<rt>たいそう</rt></ruby>か<ruby>散歩<rt>さんぽ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れましょうか。<br>*(Tôi đồng ý. Buổi sáng mình lồng ghép thể dục hoặc đi bộ nhẹ nhé.)* |
| Ngọc | いいですね。では、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>ケア計画<rt>ケアけいかく</rt></ruby>を<ruby>修正<rt>しゅうせい</rt></ruby>する<ruby>方向<rt>ほうこう</rt></ruby>で<ruby>合意<rt>ごうい</rt></ruby>ということでよろしいですか。<br>*(Hay đấy. Vậy mình đồng ý theo hướng điều chỉnh kế hoạch chăm sóc ông Kimura đúng không ạ?)* |
| Mọi người | はい。<br>*(Vâng.)* |

---

## Tình huống 4 — Phòng họp · 10:20, vấp kanji trong hồ sơ

| Vai | Lời thoại |
|---|---|
| Ngọc | では<ruby>次<rt>つぎ</rt></ruby>に、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>リハビリ<rt>リハビリ</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>です。<ruby>記録<rt>きろく</rt></ruby>によると...えっと、「<ruby>廃用<rt>はいよう</rt></ruby>...<ruby>症<rt>しょう</rt></ruby>...」<br>*(Tiếp theo là tiến độ phục hồi của ông Tanaka. Theo hồ sơ... ừm, "Hội chứng... không dùng...")* |
| Ngọc | (dừng lại, thành thật) すみません。この<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。「<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>」でよろしいですか。<br>*(Xin lỗi mọi người. Cho tôi xác nhận kanji này một chút. Có phải là 廃用症候群 không ạ?)* |
| Sato | そうです、「<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>」。<ruby>筋力<rt>きんりょく</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちてしまうことです。<br>*(Đúng, 廃用症候群. Là tình trạng cơ lực bị giảm sút.)* |
| Ngọc | ありがとうございます。(続けて) <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>の<ruby>リスク<rt>リスク</rt></ruby>があるため、<ruby>歩行<rt>ほこう</rt></ruby>リハビリを<ruby>週<rt>しゅう</rt></ruby>3<ruby>回<rt>かい</rt></ruby>から<ruby>週<rt>しゅう</rt></ruby>5<ruby>回<rt>かい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やすことを<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Cảm ơn. (tiếp tục) Do ông Tanaka có nguy cơ 廃用症候群, tôi đề nghị tăng phục hồi đi bộ từ 3 lần/tuần lên 5 lần/tuần.)* |
| Nakamura | <ruby>賛成<rt>さんせい</rt></ruby>です。ただ<ruby>右肩<rt>みぎかた</rt></ruby>の<ruby>痛<rt>いた</rt></ruby>みが<ruby>残<rt>のこ</rt></ruby>っているので、<ruby>上肢<rt>じょうし</rt></ruby>への<ruby>負担<rt>ふたん</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けてください。<br>*(Tôi đồng ý. Nhưng đau vai phải vẫn còn nên tránh gây áp lực lên chi trên nhé.)* |
| Ngọc | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>下肢<rt>かし</rt></ruby>中心のリハビリにします。<br>*(Vâng, em rõ. Tập trung phục hồi chi dưới nhé.)* |

---

## Tình huống 5 — Phòng họp · 10:35, nhân viên nêu ý kiến và Ngọc điều phối

| Vai | Lời thoại |
|---|---|
| Nhân viên B | グエンさん、<ruby>一点<rt>いってん</rt></ruby>いいですか。<ruby>最近<rt>さいきん</rt></ruby><ruby>田中<rt>たなか</rt></ruby>さん、「<ruby>足<rt>あし</rt></ruby>が<ruby>重<rt>おも</rt></ruby>い」とよく<ruby>言<rt>い</rt></ruby>うんです。<ruby>浮腫<rt>むくみ</rt></ruby>があるかもしれないと<ruby>思<rt>おも</rt></ruby>って。<br>*(Nguyễn, tôi nêu thêm một điểm được không. Dạo này ông Tanaka hay nói "chân nặng". Tôi nghi có thể bị phù nề.)* |
| Ngọc | ありがとうございます。<ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>浮腫<rt>むくみ</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Cảm ơn. Chị Nakamura, phiền chị xác nhận về phù nề cho ông được không ạ?)* |
| Nakamura | わかりました。<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>必要<rt>ひつよう</rt></ruby>であれば<ruby>主治医<rt>しゅじい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Được. Chiều nay tôi xác nhận. Nếu cần tôi báo cáo bác sĩ chủ trị.)* |
| Ngọc | ありがとうございます。では、この<ruby>件<rt>けん</rt></ruby>は<ruby>中村<rt>なかむら</rt></ruby>さんから<ruby>確認<rt>かくにん</rt></ruby>後、<ruby>結果<rt>けっか</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>していただく<ruby>形<rt>かたち</rt></ruby>でよろしいでしょうか。<br>*(Cảm ơn chị. Vậy vụ này sau khi chị Nakamura xác nhận xong, nhờ chị chia sẻ kết quả với mọi người nhé.)* |
| Nhân viên B | (nhỏ giọng với nhân viên A) グエン、ちゃんと<ruby>仕切<rt>しき</rt></ruby>れてるな。<br>*(Nhỏ giọng với nhân viên A) Nguyễn điều phối được đấy nhỉ.)* |

---

## Tình huống 6 — Phòng họp · 10:50, kết thúc họp và phân công

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>事項をまとめます。<ruby>一<rt>いち</rt></ruby>、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>昼寝<rt>ひるね</rt></ruby>を30<ruby>分<rt>ぷん</rt></ruby>に<ruby>短縮<rt>たんしゅく</rt></ruby>し、<ruby>午前<rt>ごぜん</rt></ruby>の<ruby>活動<rt>かつどう</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>する。<ruby>二<rt>に</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>歩行<rt>ほこう</rt></ruby>リハビリを<ruby>週<rt>しゅう</rt></ruby>5<ruby>回<rt>かい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やす。<ruby>三<rt>さん</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>浮腫<rt>むくみ</rt></ruby>を<ruby>中村<rt>なかむら</rt></ruby>さんが<ruby>確認<rt>かくにん</rt></ruby>する。以上3<ruby>点<rt>てん</rt></ruby>ですが、よろしいですか。<br>*(Vậy tôi tóm tắt các điểm xác nhận hôm nay. Một, rút ngắn giấc ngủ trưa của ông Kimura xuống 30 phút và tăng cường hoạt động buổi sáng. Hai, tăng phục hồi đi bộ ông Tanaka lên 5 lần/tuần. Ba, chị Nakamura xác nhận phù nề của ông Tanaka. Tổng 3 điểm, mọi người đồng ý không?)* |
| Mọi người | はい、<ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Vâng, rõ rồi ạ.)* |
| Ngọc | では、<ruby>本日<rt>ほんじつ</rt></ruby>のカンファレンスを<ruby>終<rt>お</rt></ruby>わりにします。ご<ruby>参加<rt>さんか</rt></ruby>ありがとうございました。<ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>今日<rt>きょう</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>までに<ruby>回覧<rt>かいらん</rt></ruby>します。<br>*(Vậy xin kết thúc カンファレンス hôm nay. Cảm ơn mọi người đã tham dự. Biên bản họp tôi sẽ lưu hành trước chiều tối hôm nay.)* |

---

## Tình huống 7 — Hành lang sau họp · 11:00, Yamamoto nhận xét riêng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいですか。<br>*(Nguyễn, có một chút thời gian không?)* |
| Ngọc | はい。(内心ドキドキ) <br>*(Vâng. (tim đập thình thịch bên trong))* |
| Yamamoto | <ruby>今日<rt>きょう</rt></ruby>は<ruby>全体的<rt>ぜんたいてき</rt></ruby>によかったよ。<ruby>議題<rt>ぎだい</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つに<ruby>絞<rt>しぼ</rt></ruby>ったのは<ruby>正解<rt>せいかい</rt></ruby>だし、<ruby>各<rt>かく</rt></ruby>スタッフから<ruby>意見<rt>いけん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>せていた。<br>*(Hôm nay nhìn chung tốt đấy. Thu gọn vào 2 chủ đề là đúng rồi, và đã kéo được ý kiến từ từng nhân viên.)* |
| Ngọc | ありがとうございます。でも、<ruby>漢字<rt>かんじ</rt></ruby>で<ruby>詰<rt>つ</rt></ruby>まってしまって...。<br>*(Cảm ơn chị. Nhưng em bị vấp kanji...)* |
| Yamamoto | あそこは<ruby>正直<rt>しょうじき</rt></ruby>に「<ruby>確認<rt>かくにん</rt></ruby>させてください」と<ruby>言<rt>い</rt></ruby>えたのがよかった。<ruby>分<rt>わ</rt></ruby>からないふりをするより<ruby>誠実<rt>せいじつ</rt></ruby>だ。スタッフも<ruby>信頼<rt>しんらい</rt></ruby>する。<br>*(Chỗ đó em đã thành thật nói "cho tôi xác nhận" là tốt. Thành thật hơn là giả vờ biết. Nhân viên sẽ tin hơn đấy.)* |
| Ngọc | そうでしょうか...。<ruby>自分<rt>じぶん</rt></ruby>では<ruby>情けない<rt>なさけない</rt></ruby>と<ruby>思<rt>おも</rt></ruby>ったのですが。<br>*(Vậy ạ... Em tự thấy mình thật đáng thương.)* |
| Yamamoto | リーダーの<ruby>役割<rt>やくわり</rt></ruby>は「<ruby>何<rt>なに</rt></ruby>でも<ruby>知<rt>し</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>」じゃない。「チームをまとめ、<ruby>決<rt>き</rt></ruby>めて、<ruby>動<rt>うご</rt></ruby>かす<ruby>人<rt>ひと</rt></ruby>」です。<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>読<rt>よ</rt></ruby>めなくても、それはできる。<br>*(Vai trò của リーダー không phải là "người biết tất cả". Mà là "người tổng hợp đội, ra quyết định, và khiến đội vận hành". Không đọc được kanji vẫn làm được điều đó.)* |
| Ngọc | ありがとうございます、<ruby>山本<rt>やまもと</rt></ruby>さん。もっと<ruby>漢字<rt>かんじ</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>もします。<br>*(Cảm ơn chị Yamamoto. Em sẽ cố học kanji thêm nữa.)* |

---

## Tình huống 8 — Bàn làm việc · 13:00, Ngọc viết 議事録

| Vai | Lời thoại |
|---|---|
| Ngọc | (tự nói) えっと、「<ruby>決定事項<rt>けっていじこう</rt></ruby>」...「<ruby>担当者<rt>たんとうしゃ</rt></ruby>」...「<ruby>実施<rt>じっし</rt></ruby>スケジュール」...これで<ruby>合<rt>あ</rt></ruby>ってるかな。<br>*(Tự nói) Ừm, "Sự việc đã quyết định"... "Người phụ trách"... "Lịch thực hiện"... Vậy là đúng chưa nhỉ.)* |
| Sato | (đi qua, nhìn qua) グエンさん、<ruby>議事録<rt>ぎじろく</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>、<ruby>見<rt>み</rt></ruby>せましょうか。うちは<ruby>決定事項<rt>けっていじこう</rt></ruby>・<ruby>担当者<rt>たんとうしゃ</rt></ruby>・<ruby>期限<rt>きげん</rt></ruby>の3<ruby>列<rt>れつ</rt></ruby>で<ruby>書<rt>か</rt></ruby>くことになってる。<br>*(Đi qua, nhìn qua) Nguyễn, để tôi chỉ cách viết 議事録 nhé. Ở chỗ mình viết theo 3 cột: sự việc quyết định, người phụ trách, thời hạn.)* |
| Ngọc | ありがとうございます、<ruby>佐藤<rt>さとう</rt></ruby>さん。フォーマットがあるんですね。<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*(Cảm ơn chị Sato. Có mẫu định sẵn à. Chị chỉ cho em được không?)* |
| Sato | (ngồi xuống, chỉ vào màn hình) この<ruby>列<rt>れつ</rt></ruby>に「<ruby>決定事項<rt>けっていじこう</rt></ruby>」、この<ruby>列<rt>れつ</rt></ruby>に「<ruby>担当者名<rt>たんとうしゃめい</rt></ruby>」、この<ruby>列<rt>れつ</rt></ruby>に「<ruby>実施期限<rt>じっしきげん</rt></ruby>」。<ruby>分<rt>わ</rt></ruby>かりやすくね。<br>*(Ngồi xuống, chỉ vào màn hình) Cột này "Sự việc đã quyết định", cột này "Tên người phụ trách", cột này "Thời hạn thực hiện". Cho dễ hiểu nhé.)* |
| Ngọc | なるほど。やってみます。<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>実<rt>じつ</rt></ruby>はリーダー<ruby>候補<rt>こうほ</rt></ruby>になってから、<ruby>佐藤<rt>さとう</rt></ruby>さんがいろいろ<ruby>教<rt>おし</rt></ruby>えてくださって、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(À hiểu rồi. Em thử làm. Chị Sato, thật ra từ khi được đề cử làm ứng viên リーダー, chị đã chỉ dạy em rất nhiều, em cảm ơn chị thật lòng.)* |
| Sato | ...<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>心配<rt>しんぱい</rt></ruby>だったけど、グエンさんはちゃんとやってるよ。これからも<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>いて。<br>*(... Ban đầu tôi lo, nhưng Nguyễn đang làm đúng đấy. Từ nay có gì không hiểu cứ hỏi nhé.)* |

---

## Tình huống 9 — Phòng sinh hoạt · 15:00, ông Kimura hỏi về cuộc họp

| Vai | Lời thoại |
|---|---|
| Ông Kimura | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby>から<ruby>会議<rt>かいぎ</rt></ruby>があったね。わしのことも<ruby>話<rt>はな</rt></ruby>したの？<br>*(Cô Nguyễn, hôm nay sáng có họp nhỉ. Có bàn về tôi không?)* |
| Ngọc | はい、<ruby>木村<rt>きむら</rt></ruby>さんのことを<ruby>みんなで<rt>みんなで</rt></ruby><ruby>考<rt>かんが</rt></ruby>えました。<ruby>夜<rt>よる</rt></ruby>よく<ruby>眠<rt>ねむ</rt></ruby>れるように、<ruby>昼間<rt>ひるま</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>体<rt>からだ</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かそうと<ruby>思<rt>おも</rt></ruby>って。<br>*(Vâng, mọi người đã cùng nhau suy nghĩ về ông ạ. Để ông ngủ ngon hơn ban đêm, chúng cháu nghĩ sẽ cho ông vận động nhẹ hơn một chút ban ngày.)* |
| Ông Kimura | そうか。<ruby>最近<rt>さいきん</rt></ruby><ruby>夜<rt>よる</rt></ruby>に<ruby>目<rt>め</rt></ruby>が<ruby>覚<rt>さ</rt></ruby>めることが<ruby>多<rt>おお</rt></ruby>いんだよ。<ruby>困<rt>こま</rt></ruby>ってた。<br>*(Vậy à. Dạo này ban đêm hay thức giấc lắm. Khó chịu ghê.)* |
| Ngọc | みんなで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えていますから、<ruby>木村<rt>きむら</rt></ruby>さんも<ruby>何<rt>なに</rt></ruby>かあったらいつでも<ruby>言<rt>い</rt></ruby>ってください。<br>*(Mọi người đang cùng nhau suy nghĩ mà, nên ông có gì cứ nói bất cứ lúc nào nhé.)* |
| Ông Kimura | ありがとう、グエンさん。<ruby>今<rt>いま</rt></ruby>は<ruby>責任者<rt>せきにんしゃ</rt></ruby>みたいだね。<br>*(Cảm ơn, cô Nguyễn. Bây giờ trông như người có trách nhiệm nhỉ.)* |
| Ngọc | (cười nhẹ) まだまだですが、がんばります。<br>*(Cười nhẹ) Cháu vẫn còn cần học nhiều lắm, nhưng cháu cố gắng ạ.)* |

---

## Tình huống 10 — Phòng hành chính · 16:30, Sato kiểm tra 議事録 đã viết xong

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>議事録<rt>ぎじろく</rt></ruby>できた？<ruby>確認<rt>かくにん</rt></ruby>していい？<br>*(Nguyễn, xong 議事録 chưa? Tôi xem được không?)* |
| Ngọc | はい、どうぞ。(渡す) <ruby>佐藤<rt>さとう</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えていただいたフォーマットで<ruby>書<rt>か</rt></ruby>きました。<br>*(Vâng, đây ạ. (đưa ra) Em viết theo mẫu chị Sato chỉ rồi ạ.)* |
| Sato | (đọc qua) うん、<ruby>決定事項<rt>けっていじこう</rt></ruby>と<ruby>担当者<rt>たんとうしゃ</rt></ruby>と<ruby>期限<rt>きげん</rt></ruby>、ちゃんと<ruby>書<rt>か</rt></ruby>けてる。ここ一か所、「<ruby>実施<rt>じっし</rt></ruby>」の<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うけど、それだけ。<br>*(Đọc qua) Ừ, sự việc quyết định, người phụ trách, và thời hạn, viết đúng rồi. Chỗ này một nơi kanji 実施 bị sai, nhưng chỉ thế thôi.)* |
| Ngọc | ありがとうございます。すぐ<ruby>直<rt>なお</rt></ruby>します。<ruby>実施<rt>じっし</rt></ruby>は...「<ruby>実<rt>じつ</rt></ruby>」に「<ruby>施<rt>し</rt></ruby>」ですね。<br>*(Cảm ơn chị. Em sửa ngay. 実施 là... chữ 実 và chữ 施 đúng không ạ.)* |
| Sato | そう。<ruby>施設<rt>しせつ</rt></ruby>の「<ruby>施<rt>し</rt></ruby>」と<ruby>同<rt>おな</rt></ruby>じ。<ruby>覚<rt>おぼ</rt></ruby>えた？<br>*(Đúng. Chữ 施 giống trong 施設 đó. Nhớ chưa?)* |
| Ngọc | はい、<ruby>施設<rt>しせつ</rt></ruby>の「<ruby>施<rt>し</rt></ruby>」！<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, chữ 施 trong 施設! Em nhớ rồi ạ.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · 17:30, Đức và An hỏi thăm sau カンファレンス

| Vai | Lời thoại |
|---|---|
| Đức | ゴックさん、カンファレンスどうだった？うまくいった？<br>*(Ngọc, カンファレンス thế nào? Suôn sẻ không?)* |
| Ngọc | まあまあかな。<ruby>漢字<rt>かんじ</rt></ruby>で<ruby>詰<rt>つ</rt></ruby>まったけど、なんとかなったよ。<ruby>山本<rt>やまもと</rt></ruby>さんが「<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えたのがよかった」って。<br>*(Tạm ổn thôi. Bị vấp kanji nhưng cũng xong được. Chị Yamamoto nói "nói thật ra là tốt" đấy.)* |
| An | <ruby>正直<rt>しょうじき</rt></ruby>に「<ruby>確認<rt>かくにん</rt></ruby>させてください」って<ruby>言<rt>い</rt></ruby>えるのって、すごいですよ。わたしだったら<ruby>恥<rt>は</rt></ruby>ずかしくて<ruby>言<rt>い</rt></ruby>えないかも。<br>*(Thành thật nói được "cho tôi xác nhận" là ghê lắm đó. Em mà thì có khi xấu hổ không nói được đâu.)* |
| Ngọc | <ruby>言<rt>い</rt></ruby>えないと<ruby>困<rt>こま</rt></ruby>るのは<ruby>利用者<rt>りようしゃ</rt></ruby>さんだから。<ruby>恥<rt>は</rt></ruby>ずかしさより、<ruby>利用者<rt>りようしゃ</rt></ruby>さんが<ruby>大事<rt>だいじ</rt></ruby>だよ。<br>*(Nếu không nói được thì người thiệt thòi là 利用者 mà. Sĩ diện không thể quan trọng hơn 利用者 được.)* |
| Đức | ゴックさん、<ruby>本当<rt>ほんとう</rt></ruby>にリーダーっぽくなってきたよ。<br>*(Ngọc, mày trông giống リーダー hơn rồi đấy thật.)* |
| Ngọc | (cười) まだまだだよ。でも、ありがとう。<br>*(Cười) Chưa đâu. Nhưng cảm ơn nhé.)* |

---

## Tình huống 12 — Phòng ngủ · 22:00, gọi điện cho mẹ ở Việt Nam

> Scene tiếng Việt — mạch gia đình, tuyến mẹ và nỗi nhớ

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Ngọc ơi, dạo này có khỏe không con? Mặt trông mệt quá. |
| Ngọc | (tiếng Việt) Con khỏe mẹ, chỉ hơi căng thẳng thôi. Hôm nay con chủ trì cuộc họp lần đầu tiên, bị vấp chỗ đọc chữ Hán. |
| Mẹ | (tiếng Việt) Ôi trời, mà rồi ra sao? |
| Ngọc | (tiếng Việt) Thì con thành thật nói "cho con xác nhận lại" rồi tiếp tục. Sếp nói vậy là tốt. |
| Mẹ | (tiếng Việt) Thành thật là đúng rồi con. Mẹ dạy con vậy từ nhỏ mà. |
| Ngọc | (tiếng Việt, cười) Mẹ cũng dạy con nhiều lắm. Mẹ ơi, con đổi visa xong rồi, giờ có thể hướng tới vĩnh trú lâu dài ở đây. |
| Mẹ | (tiếng Việt) Tốt quá. Nhưng mẹ thì không sang được đâu. Mẹ già rồi. |
| Ngọc | (tiếng Việt, giọng se lại) Con biết. Mẹ giữ sức khỏe nhé. Con nhớ mẹ lắm. |

---

## Đọng lại chương 4

Chương 4 là thử thách đầu tiên của Ngọc ở cương vị リーダー候補: chủ trì họp 多職種連携 (điều dưỡng + y tá). Vấp kanji **廃用症候群** không phải thất bại — Yamamoto dạy: リーダー là người **チームをまとめ・決めて・動かす**, không phải người biết tất cả. Kỹ năng học được: mở/dẫn/kết thúc カンファレンス (**〜を始めます・議題は〜件・では〜についてです・以上でよろしいですか**), viết **議事録** 3 cột, kéo ý kiến từng thành viên, tổng hợp và giao nhiệm vụ. Sato chuyển từ người hoài nghi thành người hỗ trợ thực sự.

> Từ vựng & mẫu câu chương này: カンファレンス・議事録・議題・司会・決定事項・担当者・実施期限・廃用症候群・浮腫・覚醒・傾眠・摂取量・多職種連携・〜を始めます・〜件・以上です・確認させてください・担当者名・期限・回覧・〜に絞る・意見を引き出す・チームをまとめる', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000005, 800000030, NULL, 'markdown_book', 'T5. Mâu thuẫn với đồng nghiệp (同僚との対立)', '# Sách điều dưỡng viên quốc gia · T5. Mâu thuẫn với đồng nghiệp (同僚との対立)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, 介護福祉士, リーダー候補) đối mặt với sự hoài nghi và chống đối từ 介護主任 Sato — nhân viên Nhật đàn chị lâu năm không phục người nước ngoài làm リーダー候補. Qua hướng dẫn của Yamamoto và nỗ lực tự thân, Ngọc từng bước hoà giải và giành được sự công nhận.

---

## Bối cảnh

Tháng 8. Sau khi được Kobayashi đề cử làm リーダー候補, Ngọc nhận ra không phải mọi đồng nghiệp đều ủng hộ. Sato 主任 — người 15 năm kinh nghiệm, từng tự ứng cử リーダー — tỏ thái độ lạnh nhạt và liên tục phản bác Ngọc trong các cuộc họp. Chương này ghi lại hành trình từ xung đột đến hoà giải.

---

## Tình huống 1 — Phòng thay đồ · 7:50, Sato lạnh nhạt ngay từ đầu ca

| Vai | Lời thoại |
|---|---|
| Sato | (nhìn lịch làm việc, không nhìn Ngọc) グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>第<rt>だい</rt></ruby>2ユニットの<ruby>担当<rt>たんとう</rt></ruby>ですよ。<ruby>確認<rt>かくにん</rt></ruby>しましたか。<br>*(Nguyễn, hôm nay phụ trách đơn vị 2 đó. Kiểm tra chưa.)* |
| Ngọc | はい、<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>佐藤<rt>さとう</rt></ruby>さん、おはようございます。<br>*(Vâng, em đã kiểm tra rồi ạ. Chị Sato, chào buổi sáng ạ.)* |
| Sato | (không đáp lại lời chào, tiếp tục lật hồ sơ) リーダー<ruby>候補<rt>こうほ</rt></ruby>なんだから、<ruby>当然<rt>とうぜん</rt></ruby>ちゃんとやってもらわないと。<br>*(Đã là ứng viên trưởng nhóm rồi thì đương nhiên phải làm tử tế đi.)* |
| Ngọc | (bình tĩnh) はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>ご指導<rt>ごしどう</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em sẽ cố gắng hết sức ạ. Mong chị chỉ bảo thêm ạ.)* |
| Sato | (khẽ thở dài, bước ra) …<ruby>指導<rt>しどう</rt></ruby>って、ねえ。<br>*(…Chỉ bảo, hm.)* |

---

## Tình huống 2 — Phòng họp ca sáng · 8:10, Sato phản bác đề xuất của Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。グエンさん、<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>から<ruby>何<rt>なに</rt></ruby>か<ruby>提案<rt>ていあん</rt></ruby>はありますか。<br>*(Vậy, bắt đầu họp sáng. Nguyễn, từ bàn giao tuần này em có đề xuất gì không?)* |
| Ngọc | はい。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>水分摂取量<rt>すいぶんせっしゅりょう</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ないので、<ruby>声かけ<rt>こえかけ</rt></ruby>の<ruby>回数<rt>かいすう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やすのはどうでしょうか。<br>*(Vâng. Lượng nước ông Tanaka uống còn ít, nên tăng số lần nhắc nhở thì sao ạ?)* |
| Sato | (ngay lập tức) それはもう<ruby>前<rt>まえ</rt></ruby>から<ruby>対応<rt>たいおう</rt></ruby>しています。グエンさんが<ruby>来<rt>く</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>からね。<br>*(Chuyện đó xử lý từ trước rồi. Từ trước khi Nguyễn đến đây ấy.)* |
| Ngọc | あ、そうですか。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、<ruby>確認<rt>かくにん</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>していました。<ruby>記録<rt>きろく</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby>読み<ruby>返<rt>かえ</rt></ruby>します。<br>*(À, vậy ạ. Em xin lỗi, em chưa xác nhận kỹ. Em sẽ đọc lại hồ sơ thêm một lần ạ.)* |
| Sato | そうしてください。リーダー<ruby>候補<rt>こうほ</rt></ruby>なら<ruby>記録<rt>きろく</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>把握<rt>はあく</rt></ruby>していないと。<br>*(Vậy đi. Đã là ứng viên trưởng nhóm thì phải nắm hết hồ sơ chứ.)* |
| Yamamoto | (nhẹ nhàng) グエンさんの<ruby>視点<rt>してん</rt></ruby>も<ruby>参考<rt>さんこう</rt></ruby>になりますよ。<ruby>方法<rt>ほうほう</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(Quan điểm của Nguyễn cũng có ích đấy. Mình cùng suy nghĩ phương án nhé.)* |

---

## Tình huống 3 — Hành lang, sau buổi họp · 8:30, Ngọc tâm sự với Yamamoto

| Vai | Lời thoại |
|---|---|
| Ngọc | (nói nhỏ) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>佐藤<rt>さとう</rt></ruby>さんは…どうして<ruby>私<rt>わたし</rt></ruby>のことを<ruby>嫌<rt>きら</rt></ruby>っているんでしょうか。<br>*(Chị Yamamoto, chị Sato... sao lại ghét em vậy ạ?)* |
| Yamamoto | 「<ruby>嫌<rt>きら</rt></ruby>い」というより、<ruby>納得<rt>なっとく</rt></ruby>できていないんだと<ruby>思<rt>おも</rt></ruby>います。<br>*(Không hẳn là "ghét", tôi nghĩ là chưa thấy phục đó.)* |
| Ngọc | <ruby>納得<rt>なっとく</rt></ruby>できない…というのは?<br>*(Chưa thấy phục... nghĩa là sao ạ?)* |
| Yamamoto | <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>15<rt>じゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いています。リーダーを<ruby>自分<rt>じぶん</rt></ruby>でめざしていた<ruby>時期<rt>じき</rt></ruby>もあります。だから…グエンさんへの<ruby>気持<rt>きも</rt></ruby>ちは、<ruby>嫉妬<rt>しっと</rt></ruby>ではなく「なぜこの<ruby>人<rt>ひと</rt></ruby>が」という<ruby>疑問<rt>ぎもん</rt></ruby>です。<br>*(Chị Sato làm 15 năm rồi. Trước đây chị ấy cũng từng nhắm tới vị trí trưởng nhóm. Vì vậy… cảm xúc với Nguyễn không phải ghen tỵ, mà là câu hỏi "tại sao lại là người này".)* |
| Ngọc | …<ruby>私<rt>わたし</rt></ruby>が<ruby>外国人<rt>がいこくじん</rt></ruby>だから、ということですか。<br>*(…Vì em là người nước ngoài, phải không ạ?)* |
| Yamamoto | それだけではありません。グエンさんをまだよく<ruby>知<rt>し</rt></ruby>らないから、ということもある。<ruby>仕事<rt>しごと</rt></ruby>で<ruby>見<rt>み</rt></ruby>せてください。<ruby>言葉<rt>ことば</rt></ruby>より<ruby>行動<rt>こうどう</rt></ruby>です。<br>*(Không chỉ vì vậy. Cũng vì chưa hiểu Nguyễn rõ. Hãy cho thấy qua công việc. Hành động quan trọng hơn lời nói.)* |
| Ngọc | はい。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Em sẽ cố gắng ạ.)* |

---

## Tình huống 4 — ユニット phòng sinh hoạt · 10:00, Sato kiểm tra bất ngờ

| Vai | Lời thoại |
|---|---|
| Sato | (vào phòng, quan sát Ngọc đang hỗ trợ ông Kimura uống nước) グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>水分<rt>すいぶん</rt></ruby>チェック<ruby>表<rt>ひょう</rt></ruby>は<ruby>記入<rt>きにゅう</rt></ruby>しましたか。<br>*(Nguyễn, bảng theo dõi lượng nước của ông Kimura điền chưa?)* |
| Ngọc | はい、<ruby>先<rt>さき</rt></ruby>ほど<ruby>記入<rt>きにゅう</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>していただけますか。<br>*(Vâng, em vừa điền xong ạ. Chị có thể kiểm tra giúp em không?)* |
| Sato | (lật bảng theo dõi, xem kỹ) …<ruby>時間<rt>じかん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>が<ruby>細<rt>こま</rt></ruby>かいですね。<br>*(…Ghi thời gian tỉ mỉ nhỉ.)* |
| Ngọc | <ruby>前回<rt>ぜんかい</rt></ruby>のカンファレンスで、<ruby>時間帯<rt>じかんたい</rt></ruby>別の<ruby>摂取量<rt>せっしゅりょう</rt></ruby>を<ruby>把握<rt>はあく</rt></ruby>することが<ruby>重要<rt>じゅうよう</rt></ruby>だと<ruby>学<rt>まな</rt></ruby>びましたので。<br>*(Hội nghị lần trước em học được rằng nắm lượng uống theo từng khung giờ rất quan trọng ạ.)* |
| Sato | (khẽ gật đầu, không khen nhưng không chê) …ふん。<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(…Hừm. Tiếp tục đi.)* |
| Ngọc | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng ạ.)* |

---

## Tình huống 5 — Phòng hồ sơ · 13:00, Ngọc gặp khó khăn và chủ động hỏi Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しよろしいですか。<ruby>鈴木<rt>すずき</rt></ruby>さんの<ruby>介護計画書<rt>かいごけいかくしょ</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけませんか。<br>*(Chị Sato, em hỏi một chút được không. Chị có thể chỉ em cách viết kế hoạch chăm sóc cho bà Suzuki không ạ?)* |
| Sato | (nhìn Ngọc với vẻ ngạc nhiên nhẹ) …<ruby>自分<rt>じぶん</rt></ruby>で<ruby>調<rt>しら</rt></ruby>べましたか。<br>*(…Em tự tìm hiểu chưa?)* |
| Ngọc | はい。マニュアルは<ruby>読<rt>よ</rt></ruby>みましたが、「<ruby>長期目標<rt>ちょうきもくひょう</rt></ruby>」と「<ruby>短期目標<rt>たんきもくひょう</rt></ruby>」の<ruby>書<rt>か</rt></ruby>き<ruby>分<rt>わ</rt></ruby>けが<ruby>難<rt>むずか</rt></ruby>しくて。<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>経験<rt>けいけん</rt></ruby>から<ruby>聞<rt>き</rt></ruby>かせていただければ、と<ruby>思<rt>おも</rt></ruby>って。<br>*(Vâng. Em đã đọc hướng dẫn nhưng cách phân biệt "mục tiêu dài hạn" và "mục tiêu ngắn hạn" còn khó. Em muốn được nghe từ kinh nghiệm của chị ạ.)* |
| Sato | (thở ra, ngồi xuống) …まあ、<ruby>座<rt>すわ</rt></ruby>りなさい。<ruby>長期<rt>ちょうき</rt></ruby>は<ruby>6<rt>ろっ</rt></ruby>ヶ<ruby>月<rt>かげつ</rt></ruby>、<ruby>短期<rt>たんき</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>かげつ</rt></ruby>を<ruby>目安<rt>めやす</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えます。<br>*(…Thôi, ngồi xuống đây. Mục tiêu dài hạn tính theo 6 tháng, ngắn hạn theo 3 tháng làm chuẩn.)* |
| Ngọc | ありがとうございます。では、<ruby>鈴木<rt>すずき</rt></ruby>さんの<ruby>場合<rt>ばあい</rt></ruby>、「<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>歩行<rt>ほこう</rt></ruby>できる」が<ruby>長期<rt>ちょうき</rt></ruby>で…<br>*(Cảm ơn chị ạ. Vậy trường hợp bà Suzuki, "có thể đi lại an toàn" là mục tiêu dài hạn…)* |
| Sato | そう。で、<ruby>短期<rt>たんき</rt></ruby>は「<ruby>介助<rt>かいじょ</rt></ruby>のもとで<ruby>10<rt>じゅう</rt></ruby>メートル<ruby>歩行<rt>ほこう</rt></ruby>できる」など、<ruby>具体的<rt>ぐたいてき</rt></ruby>に。<br>*(Đúng. Còn ngắn hạn thì "có thể đi 10 mét với sự hỗ trợ" hay gì đó, cụ thể hơn.)* |
| Ngọc | なるほど。<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数字<rt>すうじ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れるんですね。メモしていいですか。<br>*(Ra vậy. Cần đưa con số cụ thể vào nhỉ. Em ghi lại được không ạ?)* |
| Sato | どうぞ。<br>*(Cứ tự nhiên.)* |

---

## Tình huống 6 — Hành lang, cuối ca · 16:00, sự cố nhỏ và phản ứng của Sato

| Vai | Lời thoại |
|---|---|
| Nhân viên Inoue | (hộc tốc chạy đến) グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>廊下<rt>ろうか</rt></ruby>でつまずきそうになってます!<br>*(Nguyễn ơi, ông Tanaka suýt vấp ngã ngoài hành lang!)* |
| Ngọc | (chạy ngay ra) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか!<ruby>手<rt>て</rt></ruby>を<ruby>貸<rt>か</rt></ruby>しますね。<br>*(Ông Tanaka, ông có sao không! Để cháu đỡ ông nhé.)* |
| Ông Tanaka | ああ…<ruby>足<rt>あし</rt></ruby>がちょっとね。<br>*(Ừ… chân tôi hơi có vấn đề.)* |
| Ngọc | (nhẹ nhàng đỡ ông Tanaka ngồi xuống ghế) ゆっくり<ruby>座<rt>すわ</rt></ruby>りましょう。<ruby>痛<rt>いた</rt></ruby>いところはありますか?<br>*(Mình ngồi xuống từ từ nhé. Có chỗ nào đau không ạ?)* |
| Ông Tanaka | いや、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>転<rt>こ</rt></ruby>けてはいない。<br>*(Không, không sao. Chưa ngã đâu.)* |
| Sato | (đi tới, quan sát) グエンさん、<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>したら<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>してください。こういうときの<ruby>対応<rt>たいおう</rt></ruby>は<ruby>早<rt>はや</rt></ruby>かったですよ。<br>*(Nguyễn, sau khi xác nhận tình trạng thì ghi lại nhé. Phản ứng trong lúc này nhanh đấy.)* |
| Ngọc | (ngạc nhiên nhẹ) ありがとうございます。すぐ<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Cảm ơn chị ạ. Em ghi lại ngay.)* |

---

## Tình huống 7 — Phòng hỗ trợ · 17:00, Yamamoto tư vấn sau ca

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんとのやりとり、どうでしたか。<br>*(Nguyễn, trao đổi với chị Sato hôm nay thế nào?)* |
| Ngọc | <ruby>最初<rt>さいしょ</rt></ruby>はやりにくかったです。でも<ruby>計画書<rt>けいかくしょ</rt></ruby>のことを<ruby>聞<rt>き</rt></ruby>いたら、ちゃんと<ruby>教<rt>おし</rt></ruby>えてくれて。<ruby>夕方<rt>ゆうがた</rt></ruby>は「<ruby>対応<rt>たいおう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>かった」と<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(Lúc đầu khó xử. Nhưng khi hỏi về kế hoạch chăm sóc thì chị ấy giải thích đầy đủ. Chiều thì chị nói là "phản ứng nhanh".)* |
| Yamamoto | それはよかった。<ruby>佐藤<rt>さとう</rt></ruby>さんはね、<ruby>言葉<rt>ことば</rt></ruby>は<ruby>少<rt>すく</rt></ruby>ないですが、ちゃんと<ruby>見<rt>み</rt></ruby>ています。グエンさんが<ruby>積極的<rt>せっきょくてき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>きに<ruby>行<rt>い</rt></ruby>ったのは、よかったと<ruby>思<rt>おも</rt></ruby>いますよ。<br>*(Tốt lắm. Chị Sato ít nói nhưng quan sát kỹ lắm. Việc Nguyễn chủ động đến hỏi, tôi nghĩ là đúng đấy.)* |
| Ngọc | でも、まだ<ruby>完全<rt>かんぜん</rt></ruby>には<ruby>信頼<rt>しんらい</rt></ruby>されていないと<ruby>感<rt>かん</rt></ruby>じます。<br>*(Nhưng em cảm thấy chưa được tin tưởng hoàn toàn.)* |
| Yamamoto | <ruby>信頼<rt>しんらい</rt></ruby>は<ruby>一日<rt>いちにち</rt></ruby>では<ruby>作<rt>つく</rt></ruby>れません。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>積み重ね<rt>つみかさね</rt></ruby>です。<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Niềm tin không xây trong một ngày được. Là tích lũy từng ngày công việc. Cứ tiếp tục.)* |
| Ngọc | はい。<ruby>諦<rt>あきら</rt></ruby>めません。<br>*(Vâng. Em không bỏ cuộc ạ.)* |

---

## Tình huống 8 — Phòng ăn sáng nhân viên · Ca tuần sau, Sato hỏi ý kiến Ngọc

| Vai | Lời thoại |
|---|---|
| Sato | (ngồi cạnh Ngọc trong giờ nghỉ) グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>夜間<rt>やかん</rt></ruby>の<ruby>排泄<rt>はいせつ</rt></ruby><ruby>パターン<rt>ぱたーん</rt></ruby>、<ruby>気<rt>き</rt></ruby>がついていますか?<br>*(Nguyễn, em có chú ý đến thói quen vệ sinh ban đêm của ông Kimura không?)* |
| Ngọc | はい。<ruby>23<rt>にじゅうさん</rt></ruby>時と<ruby>2<rt>に</rt></ruby>時ごろに<ruby>排泄<rt>はいせつ</rt></ruby>があることが<ruby>多<rt>おお</rt></ruby>いですね。<ruby>記録<rt>きろく</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>気<rt>き</rt></ruby>がつきました。<br>*(Vâng. Thường có lúc 23 giờ và khoảng 2 giờ. Em nhận ra qua hồ sơ theo dõi ạ.)* |
| Sato | そう。だから<ruby>夜間<rt>やかん</rt></ruby>の<ruby>巡回<rt>じゅんかい</rt></ruby>タイミングを<ruby>合<rt>あ</rt></ruby>わせたほうがいいと<ruby>思<rt>おも</rt></ruby>っていたんです。グエンさんはどう<ruby>思<rt>おも</rt></ruby>いますか。<br>*(Đúng rồi. Nên tôi nghĩ nên điều chỉnh thời điểm tuần tra ban đêm cho khớp. Nguyễn nghĩ sao?)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>意見<rt>いけん</rt></ruby>です。<ruby>22<rt>にじゅうに</rt></ruby>時半と<ruby>1<rt>いち</rt></ruby>時半に<ruby>巡回<rt>じゅんかい</rt></ruby>すれば、<ruby>未然<rt>みぜん</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>できると<ruby>思<rt>おも</rt></ruby>います。<br>*(Em cũng nghĩ vậy ạ. Nếu tuần tra lúc 22 giờ 30 và 1 giờ 30 thì có thể ứng phó kịp thời.)* |
| Sato | (gật đầu) そうしましょう。<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>申し送り<rt>もうしおくり</rt></ruby>でみんなに<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Vậy làm vậy đi. Tôi sẽ thông báo cho mọi người trong bàn giao ca tuần này.)* |
| Ngọc | はい、ありがとうございます。<br>*(Vâng, cảm ơn chị ạ.)* |

---

## Tình huống 9 — Hành lang, sau bàn giao ca · đề xuất của Ngọc được Sato chuyển tiếp

| Vai | Lời thoại |
|---|---|
| Nhân viên Inoue | (đến gặp Ngọc) グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>夜間巡回<rt>やかんじゅんかい</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>、グエンさんの<ruby>提案<rt>ていあん</rt></ruby>なんですか?<br>*(Nguyễn, thay đổi lịch tuần tra đêm cho ông Kimura là đề xuất của Nguyễn à?)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えました。<ruby>記録<rt>きろく</rt></ruby>のデータがあったので。<br>*(Em và chị Sato cùng nghĩ ra ạ. Vì có dữ liệu trong hồ sơ theo dõi.)* |
| Inoue | <ruby>データ<rt>でーた</rt></ruby>から<ruby>気<rt>き</rt></ruby>がつくのはすごいですね。<ruby>私<rt>わたし</rt></ruby>はそこまで<ruby>見<rt>み</rt></ruby>ていなかった。<br>*(Nhận ra được từ dữ liệu ghê nhỉ. Tôi chưa nhìn kỹ đến vậy.)* |
| Ngọc | いえ、<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>先<rt>さき</rt></ruby>に<ruby>気<rt>き</rt></ruby>がついていたと<ruby>思<rt>おも</rt></ruby>います。<ruby>私<rt>わたし</rt></ruby>はそれを<ruby>確認<rt>かくにん</rt></ruby>しただけで。<br>*(Không, em nghĩ chị Sato đã chú ý trước rồi. Em chỉ xác nhận lại thôi.)* |
| Inoue | 謙虚だなあ。でも<ruby>二人<rt>ふたり</rt></ruby>でいい<ruby>チームワーク<rt>ちーむわーく</rt></ruby>ですよ。<br>*(Khiêm tốn quá. Nhưng hai người làm việc nhóm tốt đấy.)* |

---

## Tình huống 10 — Phòng họp, giữa tháng · Kobayashi nhận xét tiến độ

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>最近<rt>さいきん</rt></ruby>どうですか。ユニットに<ruby>慣<rt>な</rt></ruby>れてきましたか。<br>*(Nguyễn, dạo này thế nào? Đã quen với đơn vị chưa?)* |
| Ngọc | はい。まだ<ruby>課題<rt>かだい</rt></ruby>はありますが、<ruby>先輩<rt>せんぱい</rt></ruby>方に<ruby>教<rt>おし</rt></ruby>えていただきながら<ruby>頑張<rt>がんば</rt></ruby>っています。<br>*(Vâng. Còn nhiều điều cần cải thiện, nhưng em đang cố gắng với sự hướng dẫn của các đàn anh đàn chị ạ.)* |
| Kobayashi | <ruby>佐藤<rt>さとう</rt></ruby>さんから<ruby>報告<rt>ほうこく</rt></ruby>がありましたよ。「グエンさんは<ruby>記録<rt>きろく</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>で、<ruby>利用者<rt>りようしゃ</rt></ruby>への<ruby>対応<rt>たいおう</rt></ruby>も<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いている」と。<br>*(Chị Sato có báo cáo. "Nguyễn ghi chép cẩn thận, chăm sóc người cao tuổi cũng bình tĩnh".)* |
| Ngọc | (ngạc nhiên) <ruby>佐藤<rt>さとう</rt></ruby>さんが…そう<ruby>言<rt>い</rt></ruby>ってくれましたか。<br>*(Chị Sato… nói vậy ạ.)* |
| Kobayashi | そうですよ。<ruby>信頼<rt>しんらい</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>でなく<ruby>行動<rt>こうどう</rt></ruby>で<ruby>積<rt>つ</rt></ruby>み上げるものですから。グエンさんはその<ruby>道<rt>みち</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>んでいる。<br>*(Đúng vậy. Niềm tin được xây bằng hành động chứ không phải lời nói. Nguyễn đang đi đúng hướng đó.)* |
| Ngọc | ありがとうございます。これからも<ruby>精進<rt>しょうじん</rt></ruby>いたします。<br>*(Cảm ơn ạ. Em sẽ tiếp tục nỗ lực ạ.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · Sato nói chuyện thẳng thắn với Ngọc

| Vai | Lời thoại |
|---|---|
| Sato | (ngồi cạnh, uống trà) グエンさん、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>納得<rt>なっとく</rt></ruby>できなかった。<br>*(Nguyễn, lúc đầu thật lòng mà nói, tôi chưa phục đâu.)* |
| Ngọc | はい、<ruby>感<rt>かん</rt></ruby>じていました。<br>*(Vâng, em cảm nhận được ạ.)* |
| Sato | でも、<ruby>仕事<rt>しごと</rt></ruby>ぶりを<ruby>見<rt>み</rt></ruby>ていたら…<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>素直<rt>すなお</rt></ruby>に<ruby>聞<rt>き</rt></ruby>きに<ruby>来<rt>く</rt></ruby>る、<ruby>記録<rt>きろく</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>書<rt>か</rt></ruby>く、<ruby>利用者<rt>りようしゃ</rt></ruby>さんへの<ruby>声かけ<rt>こえかけ</rt></ruby>も<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いている。<ruby>国籍<rt>こくせき</rt></ruby>より<ruby>仕事<rt>しごと</rt></ruby>の<ruby>姿勢<rt>しせい</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>うようになりました。<br>*(Nhưng nhìn cách làm việc thì… chủ động đến hỏi đàn anh đàn chị, ghi chép cẩn thận, hỏi thăm người cao tuổi cũng bình tĩnh. Tôi bắt đầu nghĩ thái độ làm việc quan trọng hơn quốc tịch.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん…ありがとうございます。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくださって。<br>*(Chị Sato… cảm ơn chị ạ. Cảm ơn vì đã nói thẳng thắn với em.)* |
| Sato | まだ<ruby>覚<rt>おぼ</rt></ruby>えることはたくさんあるよ。でも、一緒にやっていきましょう。<br>*(Vẫn còn nhiều điều cần học đấy. Nhưng, mình cùng làm nhé.)* |
| Ngọc | はい。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Mong chị tiếp tục chỉ bảo ạ.)* |

---

## Tình huống 12 — Phòng ký túc · 22:00, Ngọc kể với An (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế.

| Vai | Lời thoại |
|---|---|
| An | (tiếng Việt) Chị ơi, hôm nay mặt chị có vẻ nhẹ nhõm hơn. Chị Sato hết lạnh rồi à? |
| Ngọc | (tiếng Việt) Ừ. Hôm nay chị ấy nói chuyện thẳng thắn với mình. Nói lúc đầu chưa phục, nhưng bây giờ thấy thái độ làm việc quan trọng hơn quốc tịch. |
| An | (tiếng Việt) Trời, chị ấy nói được vậy là cũng thẳng thắn thật. Chị xử lý tốt. |
| Ngọc | (tiếng Việt) Mình không làm gì đặc biệt. Chỉ cố gắng làm đúng từng ngày thôi. Chị Yamamoto nói đúng — hành động quan trọng hơn lời nói. |
| An | (tiếng Việt) Chị giỏi thật. Em còn đang lo thi N3 đây, chưa nghĩ được đến chuyện リーダー. |
| Ngọc | (tiếng Việt) Thi N3 trước đi. Từng bước thôi. Ngủ sớm nha An, mai 6 giờ rưỡi. |

---

## Đọng lại chương 5

Ngọc vượt qua thử thách đầu tiên trên con đường リーダー候補 — không phải bằng lời tranh biện mà bằng sự kiên nhẫn, khiêm tốn học hỏi và làm việc bài bản. Bài học then chốt: **niềm tin được xây bằng hành động**, không phải bằng chức danh. Sato 主任 từ nhân vật phản đối trở thành đồng minh — hoà giải thực tế, không phải phép màu.

> Từ vựng & mẫu câu chương này: リーダー候補・介護計画書・長期目標・短期目標・排泄パターン・夜間巡回・申し送り・水分摂取量・声かけ・体位変換・納得できない・信頼・精進いたします・積み重ね・姿勢・国籍', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000006, 800000030, NULL, 'markdown_book', 'T6. Quản lý ca trực (シフト管理)', '# Sách điều dưỡng viên quốc gia · T6. Quản lý ca trực (シフト管理)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, 介護福祉士, リーダー候補) lần đầu đảm nhiệm việc lập và quản lý lịch ca (シフト) cho ユニット. Phải xử lý nhân viên xin nghỉ đột xuất, cân đối nhân lực, và học cách ra quyết định dưới áp lực.

---

## Bối cảnh

Tháng 9. Yamamoto giao cho Ngọc phụ trách lập シフト tháng 10 — nhiệm vụ đặc trưng của リーダー候補. Ngọc phải học phần mềm シフト mới, cân đối giữa nguyện vọng cá nhân nhân viên và nhu cầu nhân lực tối thiểu, đồng thời xử lý tình huống xin nghỉ đột xuất giữa tháng.

---

## Tình huống 1 — Phòng hỗ trợ · 9:00, Yamamoto giao nhiệm vụ lập シフト

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>来月<rt>らいげつ</rt></ruby>のシフトを<ruby>組<rt>く</rt></ruby>んでみてもらえますか。リーダー<ruby>候補<rt>こうほ</rt></ruby>として<ruby>経験<rt>けいけん</rt></ruby>してほしい<ruby>仕事<rt>しごと</rt></ruby>のひとつです。<br>*(Nguyễn, em thử lập lịch ca tháng sau được không? Đây là một trong những công việc tôi muốn em trải nghiệm với tư cách ứng viên trưởng nhóm.)* |
| Ngọc | はい、やってみます。でも、シフトを<ruby>組<rt>く</rt></ruby>むのは<ruby>初<rt>はじ</rt></ruby>めてなので、<ruby>基本<rt>きほん</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*(Vâng, em sẽ thử ạ. Nhưng vì lần đầu lập lịch ca nên chị có thể dạy em từ cơ bản không?)* |
| Yamamoto | まず<ruby>基本<rt>きほん</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>です。<ruby>各<rt>かく</rt></ruby>シフトの<ruby>最低<rt>さいてい</rt></ruby><ruby>人数<rt>にんずう</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ること。<ruby>日勤<rt>にっきん</rt></ruby>は<ruby>4<rt>よん</rt></ruby><ruby>人<rt>にん</rt></ruby>、<ruby>早番<rt>はやばん</rt></ruby>と<ruby>遅番<rt>おそばん</rt></ruby>は<ruby>各<rt>かく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>、<ruby>夜勤<rt>やきん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>人<rt>にん</rt></ruby>。<br>*(Trước hết nguyên tắc cơ bản. Phải đảm bảo số người tối thiểu mỗi ca. Ca ngày 4 người, ca sáng sớm và ca muộn mỗi ca 2 người, ca đêm 2 người.)* |
| Ngọc | メモします。<ruby>日勤<rt>にっきん</rt></ruby>・<ruby>早番<rt>はやばん</rt></ruby>・<ruby>遅番<rt>おそばん</rt></ruby>・<ruby>夜勤<rt>やきん</rt></ruby>ですね。それ<ruby>以外<rt>いがい</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>することはありますか?<br>*(Em ghi lại. Ca ngày, ca sáng sớm, ca muộn, ca đêm phải không ạ. Ngoài ra còn điều gì cần chú ý không?)* |
| Yamamoto | <ruby>連続<rt>れんぞく</rt></ruby><ruby>夜勤<rt>やきん</rt></ruby>は<ruby>最大<rt>さいだい</rt></ruby><ruby>2<rt>に</rt></ruby>回まで、<ruby>夜勤<rt>やきん</rt></ruby>の<ruby>後<rt>あと</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>明<rt>あ</rt></ruby>け<ruby>休み<rt>やすみ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れてください。<ruby>労働基準法<rt>ろうどうきじゅんほう</rt></ruby>の<ruby>規定<rt>きてい</rt></ruby>もあります。<br>*(Ca đêm liên tiếp tối đa 2 lần, sau ca đêm bắt buộc phải có ngày nghỉ bù. Cũng có quy định của Luật Tiêu chuẩn Lao động.)* |
| Ngọc | <ruby>労働基準法<rt>ろうどうきじゅんほう</rt></ruby>、はい。<ruby>従業員<rt>じゅうぎょういん</rt></ruby>さんの<ruby>希望<rt>きぼう</rt></ruby>はどうやって<ruby>集<rt>あつ</rt></ruby>めますか?<br>*(Luật Tiêu chuẩn Lao động, vâng ạ. Nguyện vọng của nhân viên thu thập như thế nào ạ?)* |
| Yamamoto | <ruby>今週中<rt>こんしゅうじゅう</rt></ruby>に<ruby>希望休<rt>きぼうやすみ</rt></ruby>を<ruby>紙<rt>かみ</rt></ruby>に<ruby>書<rt>か</rt></ruby>いて<ruby>提出<rt>ていしゅつ</rt></ruby>してもらいます。できるだけ<ruby>反映<rt>はんえい</rt></ruby>するようにするんですが、<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>希望<rt>きぼう</rt></ruby>を<ruby>100%<rt>ひゃくぱーせんと</rt></ruby><ruby>通<rt>とお</rt></ruby>すことは<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Trong tuần này nhờ mọi người viết ngày nghỉ mong muốn lên giấy và nộp lại. Cố gắng phản ánh nhiều nhất có thể, nhưng thỏa mãn 100% nguyện vọng của tất cả là khó.)* |
| Ngọc | はい、わかりました。さっそく<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Vâng, em hiểu rồi. Em bắt tay vào ngay ạ.)* |

---

## Tình huống 2 — Phòng hỗ trợ · 14:00, Ngọc gặp khó khi lập lịch

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn chằm chằm vào bảng lịch) <ruby>難<rt>むずか</rt></ruby>しい…<ruby>井上<rt>いのうえ</rt></ruby>さんが<ruby>12<rt>じゅうに</rt></ruby>日に<ruby>希望<rt>きぼう</rt></ruby><ruby>休<rt>やすみ</rt></ruby>で、<ruby>鈴木<rt>すずき</rt></ruby>さんも<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>に<ruby>休み<rt>やすみ</rt></ruby>たいと。でも<ruby>日勤<rt>にっきん</rt></ruby>が<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>になってしまう。<br>*(Khó quá… Anh Inoue muốn nghỉ ngày 12, chị Suzuki cũng muốn nghỉ cùng ngày. Nhưng ca ngày sẽ chỉ còn 3 người.)* |
| Yamamoto | (đến nhìn vào) なるほど。グエンさん、どうしますか?<br>*(Ra vậy. Nguyễn, em sẽ xử lý thế nào?)* |
| Ngọc | まず<ruby>二人<rt>ふたり</rt></ruby>に<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて、どちらかが<ruby>日<rt>ひ</rt></ruby>をずらせるか<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>理由<rt>りゆう</rt></ruby>によっては<ruby>優先<rt>ゆうせん</rt></ruby>を<ruby>決<rt>き</rt></ruby>める<ruby>必要<rt>ひつよう</rt></ruby>があります。<br>*(Trước hết em hỏi cả hai xem ai có thể dời ngày được không. Tuỳ lý do mà có thể cần xác định thứ tự ưu tiên ạ.)* |
| Yamamoto | いい<ruby>判断<rt>はんだん</rt></ruby>ですね。<ruby>決<rt>き</rt></ruby>める<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>当人<rt>とうにん</rt></ruby>と<ruby>話<rt>はな</rt></ruby>す。シフト<ruby>管理<rt>かんり</rt></ruby>は<ruby>独断<rt>どくだん</rt></ruby>で<ruby>決<rt>き</rt></ruby>めないことが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Phán đoán tốt. Trước khi quyết định nhất định phải nói chuyện với đương sự. Quan trọng là không tự quyết định đơn phương trong quản lý ca.)* |
| Ngọc | はい、<ruby>対話<rt>たいわ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にします。<ruby>井上<rt>いのうえ</rt></ruby>さんから<ruby>先<rt>さき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>しかけてみます。<br>*(Vâng, em sẽ coi trọng đối thoại. Em thử nói chuyện với anh Inoue trước ạ.)* |

---

## Tình huống 3 — Hành lang · 14:30, Ngọc thương lượng với Inoue

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>井上<rt>いのうえ</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しよろしいですか。シフトの<ruby>希望<rt>きぼう</rt></ruby>について<ruby>相談<rt>そうだん</rt></ruby>したいのですが。<br>*(Anh Inoue, em hỏi một chút được không. Em muốn trao đổi về lịch nghỉ ạ.)* |
| Inoue | ああ、<ruby>12<rt>じゅうに</rt></ruby>日のことですね。どうぞ。<br>*(À, chuyện ngày 12 à. Nói đi.)* |
| Ngọc | <ruby>12<rt>じゅうに</rt></ruby>日、<ruby>鈴木<rt>すずき</rt></ruby>さんも<ruby>希望<rt>きぼう</rt></ruby><ruby>休<rt>やすみ</rt></ruby>が<ruby>重<rt>かさ</rt></ruby>なっていて、<ruby>日勤<rt>にっきん</rt></ruby>が<ruby>不足<rt>ふそく</rt></ruby>してしまいます。<ruby>11<rt>じゅういち</rt></ruby>日か<ruby>13<rt>じゅうさん</rt></ruby>日に<ruby>変<rt>か</rt></ruby>えられますか?<br>*(Ngày 12, lịch nghỉ của chị Suzuki trùng, ca ngày sẽ thiếu người. Anh có thể đổi sang ngày 11 hoặc 13 không ạ?)* |
| Inoue | <ruby>12<rt>じゅうに</rt></ruby>日は<ruby>子供<rt>こども</rt></ruby>の<ruby>運動会<rt>うんどうかい</rt></ruby>で…でも、<ruby>仕事<rt>しごと</rt></ruby>のことを<ruby>考<rt>かんが</rt></ruby>えると<ruby>仕方<rt>しかた</rt></ruby>ない。<ruby>13<rt>じゅうさん</rt></ruby>日にします。<br>*(Ngày 12 là hội thể thao của con... nhưng nghĩ đến công việc thì đành vậy. Tôi đổi sang ngày 13.)* |
| Ngọc | ありがとうございます。お<ruby>子<rt>こ</rt></ruby>さんの<ruby>運動会<rt>うんどうかい</rt></ruby>があるのに、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。もし<ruby>今後<rt>こんご</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>行事<rt>ぎょうじ</rt></ruby>があれば<ruby>早<rt>はや</rt></ruby>めに<ruby>教<rt>おし</rt></ruby>えてください。できるだけ<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Cảm ơn anh. Con anh có hội thể thao mà anh phải đổi, em xin lỗi ạ. Nếu sau này có sự kiện gia đình, xin anh báo sớm. Em sẽ điều chỉnh trong phạm vi có thể.)* |
| Inoue | グエンさんは<ruby>気<rt>き</rt></ruby>がつくんですね。ありがとう。<br>*(Nguyễn chu đáo nhỉ. Cảm ơn.)* |

---

## Tình huống 4 — Phòng hỗ trợ · Sáng sớm tuần sau, nhân viên xin nghỉ đột xuất

| Vai | Lời thoại |
|---|---|
| Nhân viên Miyata | (gọi điện thoại) グエンさん、すみません。<ruby>子供<rt>こども</rt></ruby>が<ruby>熱<rt>ねつ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>して、<ruby>今日<rt>きょう</rt></ruby>の<ruby>早番<rt>はやばん</rt></ruby>を<ruby>休<rt>やす</rt></ruby>ませてください。<br>*(Nguyễn ơi, xin lỗi. Con tôi sốt, cho tôi nghỉ ca sáng sớm hôm nay được không?)* |
| Ngọc | (nhìn nhanh vào bảng lịch) <ruby>宮田<rt>みやた</rt></ruby>さん、<ruby>承知<rt>しょうち</rt></ruby>しました。お<ruby>子<rt>こ</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Chị Miyata, em rõ rồi. Con chị có ổn không ạ?)* |
| Nhân viên Miyata | ありがとう。<ruby>熱<rt>ねつ</rt></ruby>が<ruby>38<rt>さんじゅうはち</rt></ruby>度あって。<br>*(Cảm ơn. Sốt 38 độ rồi.)* |
| Ngọc | どうかお<ruby>大事<rt>だいじ</rt></ruby>に。こちらは<ruby>対応<rt>たいおう</rt></ruby>します。<br>*(Mong chị và bé mau khỏe. Bên này em lo được ạ.)* |
| Ngọc | (cúp máy, gọi ngay cho Yamamoto) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>宮田<rt>みやた</rt></ruby>さんが<ruby>急<rt>きゅう</rt></ruby>な<ruby>お休<rt>おやす</rt></ruby>みです。<ruby>早番<rt>はやばん</rt></ruby>が<ruby>1<rt>いち</rt></ruby><ruby>人<rt>にん</rt></ruby>になります。どう<ruby>対応<rt>たいおう</rt></ruby>すべきか<ruby>相談<rt>そうだん</rt></ruby>していいですか?<br>*(Chị Yamamoto, chị Miyata nghỉ đột xuất. Ca sáng sớm chỉ còn 1 người. Em có thể tham khảo ý kiến chị xử lý thế nào không?)* |

---

## Tình huống 5 — Phòng hỗ trợ · Xử lý nhân sự bù ca

| Vai | Lời thoại |
|---|---|
| Yamamoto | まず<ruby>早番<rt>はやばん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れる<ruby>人<rt>ひと</rt></ruby>がいるか<ruby>確認<rt>かくにん</rt></ruby>を。<ruby>今日<rt>きょう</rt></ruby><ruby>休み<rt>やすみ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>で、<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>取<rt>と</rt></ruby>れそうな<ruby>人<rt>ひと</rt></ruby>は?<br>*(Trước hết kiểm tra xem có ai vào được ca sáng sớm không. Trong số người nghỉ hôm nay, ai có thể liên lạc được?)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby><ruby>公休<rt>こうきゅう</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>パート<rt>ぱーと</rt></ruby>の<ruby>中村<rt>なかむら</rt></ruby>さんがいます。<ruby>佐藤<rt>さとう</rt></ruby>さんはご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>用事<rt>ようじ</rt></ruby>があると<ruby>聞<rt>き</rt></ruby>いていますが、<ruby>中村<rt>なかむら</rt></ruby>さんは…<br>*(Hôm nay chị Sato và nhân viên bán thời gian Nakamura nghỉ theo lịch. Chị Sato nghe nói có việc gia đình, còn Nakamura thì…)* |
| Yamamoto | まず<ruby>中村<rt>なかむら</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>を。<ruby>無理<rt>むり</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>まないこと。あくまで<ruby>可能<rt>かのう</rt></ruby>かどうか<ruby>確認<rt>かくにん</rt></ruby>するだけ。<br>*(Liên lạc với Nakamura trước. Không ép buộc. Chỉ xác nhận xem có thể vào không thôi.)* |
| Ngọc | <ruby>承知<rt>しょうち</rt></ruby>しました。(gọi điện) <ruby>中村<rt>なかむら</rt></ruby>さん、おはようございます。グエンです。<ruby>突然<rt>とつぜん</rt></ruby>のご<ruby>連絡<rt>れんらく</rt></ruby>で<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<ruby>今日<rt>きょう</rt></ruby>の<ruby>早番<rt>はやばん</rt></ruby>、もしご<ruby>都合<rt>つごう</rt></ruby>がよければ<ruby>入<rt>はい</rt></ruby>っていただけますか。<ruby>難<rt>むずか</rt></ruby>しければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng rõ ạ. (gọi điện) Chị Nakamura, chào buổi sáng. Em là Nguyễn. Xin lỗi đã liên lạc đột ngột. Nếu chị thuận tiện, chị có thể vào ca sáng sớm hôm nay được không? Nếu khó thì không sao ạ.)* |
| Nhân viên Nakamura | (qua điện thoại) ちょっと待ってください…はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>9<rt>く</rt></ruby>時には<ruby>行<rt>い</rt></ruby>けます。<br>*(Chờ tôi một chút… Vâng, được. Tôi đến được lúc 9 giờ.)* |
| Ngọc | ありがとうございます。本当に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn chị rất nhiều. Chị giúp em nhiều lắm ạ.)* |

---

## Tình huống 6 — Phòng hỗ trợ · Ghi chép xử lý sự cố nhân sự

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>対応<rt>たいおう</rt></ruby>の<ruby>経緯<rt>けいい</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>してください。<ruby>急<rt>きゅう</rt></ruby>な<ruby>欠員<rt>けついん</rt></ruby>のとき、どう<ruby>対応<rt>たいおう</rt></ruby>したかを<ruby>記録<rt>きろく</rt></ruby>しておくことが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Nguyễn, ghi lại quá trình xử lý nhé. Ghi lại đã xử lý thế nào khi thiếu người đột xuất là việc quan trọng.)* |
| Ngọc | はい。<ruby>発生<rt>はっせい</rt></ruby>した<ruby>時間<rt>じかん</rt></ruby>、<ruby>理由<rt>りゆう</rt></ruby>、<ruby>代替<rt>だいたい</rt></ruby>スタッフの<ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>、<ruby>結果<rt>けっか</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばよいですか?<br>*(Vâng. Em ghi thời điểm phát sinh, lý do, cách xác nhận nhân viên thay thế, và kết quả được không ạ?)* |
| Yamamoto | そうです。これが<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>なると、<ruby>来月<rt>らいげつ</rt></ruby>のシフトに<ruby>活<rt>い</rt></ruby>かせます。たとえば「<ruby>宮田<rt>みやた</rt></ruby>さんは<ruby>子供<rt>こども</rt></ruby>の<ruby>急病<rt>きゅうびょう</rt></ruby>で<ruby>欠勤<rt>けっきん</rt></ruby>しやすい<ruby>時期<rt>じき</rt></ruby>がある」など。<br>*(Đúng vậy. Tích lũy lại sẽ ứng dụng được vào lịch ca tháng sau. Ví dụ như "chị Miyata dễ nghỉ đột xuất khi con ốm theo mùa" chẳng hạn.)* |
| Ngọc | なるほど。シフトは<ruby>単<rt>たん</rt></ruby>なる<ruby>予定表<rt>よていひょう</rt></ruby>ではなく、<ruby>人<rt>ひと</rt></ruby>を<ruby>理解<rt>りかい</rt></ruby>するためのツールでもあるんですね。<br>*(Ra vậy. Lịch ca không chỉ là bảng kế hoạch đơn thuần, mà còn là công cụ để hiểu con người nhỉ.)* |
| Yamamoto | よい<ruby>気<rt>き</rt></ruby>づきですよ。それがリーダーの<ruby>視点<rt>してん</rt></ruby>です。<br>*(Nhận xét hay đấy. Đó chính là góc nhìn của trưởng nhóm.)* |

---

## Tình huống 7 — Phòng hỗ trợ · Sato kiểm tra bản lịch ca Ngọc lập

| Vai | Lời thoại |
|---|---|
| Sato | (xem xét bảng lịch) グエンさん、これ<ruby>見<rt>み</rt></ruby>たけど、<ruby>田村<rt>たむら</rt></ruby>さんが<ruby>夜勤<rt>やきん</rt></ruby>3<ruby>連続<rt>れんぞく</rt></ruby>になってますよ。<br>*(Nguyễn, tôi xem lịch này rồi, chị Tamura bị xếp 3 ca đêm liên tiếp đấy.)* |
| Ngọc | (lật lại bảng) あ、<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>見落<rt>みおと</rt></ruby>としていました。すぐ<ruby>修正<rt>しゅうせい</rt></ruby>します。ありがとうございます。<br>*(À, thật vậy. Em bỏ sót rồi. Em sửa ngay ạ. Cảm ơn chị.)* |
| Sato | 2<ruby>連続<rt>れんぞく</rt></ruby>まで、<ruby>明<rt>あ</rt></ruby>けを<ruby>必<rt>かなら</rt></ruby>ず<ruby>入<rt>い</rt></ruby>れること。<ruby>健康管理<rt>けんこうかんり</rt></ruby>も<ruby>管理者<rt>かんりしゃ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Tối đa 2 liên tiếp, sau đó nhất định phải có ngày nghỉ bù. Quản lý sức khỏe cũng là công việc của người quản lý.)* |
| Ngọc | はい、<ruby>徹底<rt>てってい</rt></ruby>します。<ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>気<rt>き</rt></ruby>がついてくださってありがとうございます。<br>*(Vâng, em sẽ thực hiện triệt để ạ. Cảm ơn chị Sato đã phát hiện ra ạ.)* |
| Sato | <ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>見落<rt>みおと</rt></ruby>とすから。<ruby>一人<rt>ひとり</rt></ruby>でやらずに<ruby>必<rt>かなら</rt></ruby>ず<ruby>誰<rt>だれ</rt></ruby>かにチェックしてもらいなさい。<br>*(Lần đầu ai cũng bỏ sót. Không làm một mình, nhất định nhờ ai đó kiểm tra.)* |

---

## Tình huống 8 — Phòng sinh hoạt · Sau khi lịch ca được duyệt, Ngọc thông báo cho nhân viên

| Vai | Lời thoại |
|---|---|
| Ngọc | (trước bảng thông báo) みなさん、<ruby>来月<rt>らいげつ</rt></ruby>のシフトを<ruby>掲示<rt>けいじ</rt></ruby>しました。<ruby>希望<rt>きぼう</rt></ruby>が<ruby>通<rt>とお</rt></ruby>らなかった<ruby>方<rt>かた</rt></ruby>には<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<ruby>何<rt>なに</rt></ruby>かご<ruby>質問<rt>しつもん</rt></ruby>があればお<ruby>声<rt>こえ</rt></ruby>がけください。<br>*(Mọi người, em đã đăng lịch ca tháng sau. Xin lỗi những ai nguyện vọng chưa được phản ánh. Có câu hỏi gì xin hãy nói với em.)* |
| Inoue | グエンさん、はじめてにしてはきれいにできてますよ。<br>*(Nguyễn, lần đầu mà làm gọn đấy.)* |
| Ngọc | ありがとうございます。<ruby>修正<rt>しゅうせい</rt></ruby>も<ruby>何度<rt>なんど</rt></ruby>かしてなんとか<ruby>仕上<rt>しあ</rt></ruby>げました。<ruby>皆<rt>みな</rt></ruby>さんのご<ruby>協力<rt>きょうりょく</rt></ruby>のおかげです。<br>*(Cảm ơn ạ. Cũng phải sửa vài lần mới hoàn thành được. Nhờ sự hợp tác của mọi người ạ.)* |

---

## Tình huống 9 — Phòng hỗ trợ · Giữa tháng, phát sinh thêm xin nghỉ

| Vai | Lời thoại |
|---|---|
| Nhân viên Tamura | グエンさん、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>水曜<rt>すいよう</rt></ruby>、<ruby>通院<rt>つういん</rt></ruby>があって<ruby>午後<rt>ごご</rt></ruby>だけ<ruby>休<rt>やす</rt></ruby>ませてもらえますか。<br>*(Nguyễn, tuần sau thứ Tư em có khám bệnh, cho tôi nghỉ buổi chiều được không?)* |
| Ngọc | <ruby>通院<rt>つういん</rt></ruby>ですね。<ruby>体<rt>からだ</rt></ruby>のことですから<ruby>最優先<rt>さいゆうせん</rt></ruby>です。<ruby>水曜<rt>すいよう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>の<ruby>人員<rt>じんいん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>折<rt>お</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>します。<br>*(Đi khám bệnh à. Chuyện sức khỏe thì ưu tiên nhất. Em xác nhận nhân lực buổi chiều thứ Tư rồi sẽ trả lời ạ.)* |
| Nhân viên Tamura | ありがとう、<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn, may quá.)* |
| Ngọc | (kiểm tra lịch, rồi gặp lại Tamura) <ruby>田村<rt>たむら</rt></ruby>さん、<ruby>水曜<rt>すいよう</rt></ruby><ruby>午後<rt>ごご</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>半日<rt>はんにち</rt></ruby><ruby>年休<rt>ねんきゅう</rt></ruby>で<ruby>処理<rt>しょり</rt></ruby>しますね。<br>*(Chị Tamura, buổi chiều thứ Tư ổn. Em xử lý bằng nghỉ phép nửa ngày nhé.)* |
| Nhân viên Tamura | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong em giúp ạ.)* |

---

## Tình huống 10 — Phòng hỗ trợ · Yamamoto nhận xét tổng kết tháng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今月<rt>こんげつ</rt></ruby>のシフト<ruby>管理<rt>かんり</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。どうでしたか?<br>*(Nguyễn, quản lý lịch ca tháng này vất vả rồi. Cảm giác thế nào?)* |
| Ngọc | <ruby>予想<rt>よそう</rt></ruby>以上に<ruby>難<rt>むずか</rt></ruby>しかったです。<ruby>人<rt>ひと</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>と<ruby>施設<rt>しせつ</rt></ruby>のニーズを<ruby>両立<rt>りょうりつ</rt></ruby>させることが、これほど<ruby>複雑<rt>ふくざつ</rt></ruby>だとは<ruby>思<rt>おも</rt></ruby>いませんでした。<br>*(Khó hơn em dự đoán nhiều ạ. Em không ngờ việc dung hòa giữa lịch của từng người và nhu cầu của cơ sở lại phức tạp đến vậy.)* |
| Yamamoto | でも<ruby>急<rt>きゅう</rt></ruby>な<ruby>欠員<rt>けついん</rt></ruby>への<ruby>対応<rt>たいおう</rt></ruby>も、<ruby>代替<rt>だいたい</rt></ruby>スタッフへの<ruby>連絡<rt>れんらく</rt></ruby>も、ちゃんとできました。<ruby>大切<rt>たいせつ</rt></ruby>なのは「<ruby>無理<rt>むり</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>まない」という<ruby>姿勢<rt>しせい</rt></ruby>もよかった。<br>*(Nhưng cả xử lý nhân sự đột xuất lẫn liên lạc nhân viên thay thế đều làm tốt. Điều quan trọng là thái độ "không ép buộc" cũng tốt lắm.)* |
| Ngọc | ありがとうございます。<ruby>来月<rt>らいげつ</rt></ruby>はもっと<ruby>早<rt>はや</rt></ruby>めに<ruby>取<rt>と</rt></ruby>り<ruby>掛<rt>か</rt></ruby>かって、<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>仕上<rt>しあ</rt></ruby>げたいです。<br>*(Cảm ơn chị ạ. Tháng sau em muốn bắt đầu sớm hơn và hoàn thành với tâm thế thư thái hơn.)* |
| Yamamoto | その<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねがリーダーを<ruby>作<rt>つく</rt></ruby>ります。<br>*(Sự tích lũy đó tạo nên trưởng nhóm đấy.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · Inoue chia sẻ góc nhìn

| Vai | Lời thoại |
|---|---|
| Inoue | グエンさん、シフト<ruby>組<rt>く</rt></ruby>んでみてどうでした?<br>*(Nguyễn, lập lịch ca rồi cảm thấy thế nào?)* |
| Ngọc | <ruby>正直<rt>しょうじき</rt></ruby>、スタッフ<ruby>一人<rt>ひとり</rt></ruby>ひとりのことを<ruby>考<rt>かんが</rt></ruby>えながら<ruby>作<rt>つく</rt></ruby>るのがこんなに<ruby>大変<rt>たいへん</rt></ruby>だとは…<ruby>今<rt>いま</rt></ruby>まで、シフトをもらうだけの<ruby>立場<rt>たちば</rt></ruby>でしたから。<br>*(Thật lòng mà nói, em không ngờ phải cân nhắc từng người mà lập lịch lại vất vả đến vậy… Trước giờ em chỉ là người nhận lịch thôi.)* |
| Inoue | そうですよ。リーダーになると<ruby>見える<rt>みえる</rt></ruby>景色が<ruby>変<rt>か</rt></ruby>わります。<ruby>僕<rt>ぼく</rt></ruby>もシフトに<ruby>文句<rt>もんく</rt></ruby>を<ruby>言<rt>い</rt></ruby>ったことがあったけど、<ruby>作<rt>つく</rt></ruby>る<ruby>側<rt>がわ</rt></ruby>の<ruby>苦労<rt>くろう</rt></ruby>がわかると<ruby>言<rt>い</rt></ruby>えなくなる。<br>*(Đúng vậy. Khi làm trưởng nhóm, góc nhìn thay đổi. Tôi trước đây cũng hay phàn nàn về lịch ca, nhưng hiểu được vất vả của người làm thì không thể nói nữa.)* |
| Ngọc | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>嬉<rt>うれ</rt></ruby>しいです。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nghe chú nói vậy em vui lắm. Mong tiếp tục được nhờ cậy ạ.)* |

---

## Tình huống 12 — Phòng ký túc · 22:30, Ngọc gọi điện cho An (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế.

| Vai | Lời thoại |
|---|---|
| An | (tiếng Việt) Chị ơi, tháng này chị phụ trách lịch ca đúng không? Vất vả không? |
| Ngọc | (tiếng Việt) Ôi vất vả hơn mình nghĩ nhiều lắm. Phải cân bằng giữa nguyện vọng từng người với nhu cầu công việc. Rồi giữa tháng lại có người xin nghỉ đột xuất nữa. |
| An | (tiếng Việt) Chị xử lý được không? |
| Ngọc | (tiếng Việt) Được. Nhưng mình mới thấy là trước giờ mình hay phàn nàn lịch ca mà không hiểu người lập vất vả thế nào. Giờ ngồi bên kia bàn rồi mới hiểu. |
| An | (tiếng Việt) Chị đang trưởng thành đó. Em thấy chị khác nhiều so với năm ngoái. |
| Ngọc | (tiếng Việt) Ừ. Đi từng bước một. Ngủ sớm đi An, mai còn ca sáng. |

---

## Đọng lại chương 6

Ngọc trải nghiệm trực tiếp áp lực của người lập lịch ca — cân đối nhân lực, dung hòa nguyện vọng cá nhân, xử lý đột xuất. Bài học cốt lõi: **quản lý lịch ca là quản lý con người**, không chỉ là điền số vào ô. Góc nhìn của Ngọc thay đổi khi chuyển từ người nhận lịch sang người lập lịch.

> Từ vựng & mẫu câu chương này: シフト管理・日勤・早番・遅番・夜勤・希望休・欠員・代替スタッフ・労働基準法・連続夜勤・明け休み・半日年休・処理・折り返す・健康管理・積み重ね・対話を大切にする', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000007, 800000030, NULL, 'markdown_book', 'T7. Sự cố té ngã trong đơn vị (ユニットでの転倒事故)', '# Sách điều dưỡng viên quốc gia · T7. Sự cố té ngã trong đơn vị (ユニットでの転倒事故)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, 介護福祉士, リーダー候補) đối mặt với sự cố 転倒 (té ngã) trong ユニット mình phụ trách — thử thách lớn nhất từ khi được đề cử. Phải nhanh chóng sơ cứu, phối hợp 看護師, viết 事故報告書, và chủ trì phân tích nguyên nhân để phòng ngừa.

---

## Bối cảnh

Tháng 10. Ngọc đang phụ trách ca chiều khi ông Tanaka bị trượt ngã trong phòng vệ sinh thuộc ユニット. Đây là sự cố nghiêm trọng vì ông Tanaka đang trong giai đoạn phục hồi sau yếu chân. Ngọc phải vừa xử lý cấp cứu ban đầu, vừa thông báo báo cáo đúng quy trình, vừa chịu trách nhiệm trong vai trò リーダー候補.

---

## Tình huống 1 — Hành lang gần nhà vệ sinh · 14:20, phát hiện sự cố

| Vai | Lời thoại |
|---|---|
| Nhân viên Inoue | (chạy ra, mặt tái) グエンさん、<ruby>大変<rt>たいへん</rt></ruby>です！<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>トイレ<rt>といれ</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>されました！<br>*(Nguyễn ơi, khẩn cấp! Ông Tanaka ngã trong nhà vệ sinh!)* |
| Ngọc | (bật dậy ngay) <ruby>今<rt>いま</rt></ruby>すぐ<ruby>行<rt>い</rt></ruby>きます！<ruby>看護師<rt>かんごし</rt></ruby>さんを<ruby>呼<rt>よ</rt></ruby>んでください！<br>*(Em đến ngay! Gọi y tá đến cho em!)* |
| Ngọc | (vào nhà vệ sinh, quỳ xuống cạnh ông Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか！お<ruby>名前<rt>なまえ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かりますか！<br>*(Ông Tanaka, ông có sao không! Ông có biết tên mình không!)* |
| Ông Tanaka | (mặt nhăn nhó) いた…ああ、<ruby>腰<rt>こし</rt></ruby>が…<br>*(Đau… ồ, lưng tôi…)* |
| Ngọc | <ruby>動<rt>うご</rt></ruby>かないでください。すぐ<ruby>看護師<rt>かんごし</rt></ruby>さんが<ruby>来<rt>き</rt></ruby>ます。<ruby>意識<rt>いしき</rt></ruby>ははっきりしていますか？<br>*(Ông đừng cố di chuyển. Y tá sẽ đến ngay. Ông còn tỉnh táo không?)* |
| Ông Tanaka | うん…<ruby>転<rt>こ</rt></ruby>けてしまった…<br>*(Ừ… tôi bị ngã rồi…)* |

---

## Tình huống 2 — Nhà vệ sinh · 14:23, y tá Nakamura đến kiểm tra

| Vai | Lời thoại |
|---|---|
| Y tá Nakamura | (vào, kiểm tra nhanh) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>中村<rt>なかむら</rt></ruby>です。<ruby>今<rt>いま</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>しますね。<ruby>痛<rt>いた</rt></ruby>いところはどこですか?<br>*(Ông Tanaka, tôi là Nakamura. Tôi kiểm tra ngay nhé. Đau chỗ nào ạ?)* |
| Ông Tanaka | <ruby>腰<rt>こし</rt></ruby>と…<ruby>右<rt>みぎ</rt></ruby><ruby>膝<rt>ひざ</rt></ruby>も。<br>*(Lưng và… đầu gối phải nữa.)* |
| Y tá Nakamura | (sờ nắn cẩn thận, hỏi Ngọc) グエンさん、<ruby>転倒<rt>てんとう</rt></ruby>した<ruby>時<rt>とき</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<ruby>直接<rt>ちょくせつ</rt></ruby>見ましたか?<br>*(Nguyễn, cho tôi biết tình huống khi ngã. Bạn có nhìn trực tiếp không?)* |
| Ngọc | <ruby>直接<rt>ちょくせつ</rt></ruby>は<ruby>見<rt>み</rt></ruby>ていません。<ruby>井上<rt>いのうえ</rt></ruby>さんが<ruby>発見<rt>はっけん</rt></ruby>しました。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>左<rt>ひだり</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>倒<rt>たお</rt></ruby>れていて、<ruby>意識<rt>いしき</rt></ruby>はありました。<ruby>頭<rt>あたま</rt></ruby>は<ruby>床<rt>ゆか</rt></ruby>に<ruby>ぶつかっていない<rt>ぶつかっていない</rt></ruby>と<ruby>思<rt>おも</rt></ruby>います。<br>*(Em không nhìn trực tiếp. Anh Inoue phát hiện. Ông Tanaka ngã về phía trái, vẫn tỉnh. Em nghĩ đầu không đập xuống sàn.)* |
| Y tá Nakamura | わかりました。<ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>があるので、レントゲンが<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>救急<rt>きゅうきゅう</rt></ruby>の<ruby>手配<rt>てはい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi hiểu. Có khả năng gãy xương, cần chụp X-quang. Xin nhờ sắp xếp xe cứu thương.)* |
| Ngọc | (ngay lập tức) はい、<ruby>施設長<rt>しせつちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>して<ruby>救急<rt>きゅうきゅう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びます。<br>*(Vâng, em báo cáo trưởng cơ sở và gọi cứu thương ngay.)* |

---

## Tình huống 3 — Hành lang · 14:30, Ngọc báo cáo Kobayashi

| Vai | Lời thoại |
|---|---|
| Ngọc | (gõ cửa phòng, giọng bình tĩnh nhưng khẩn) <ruby>小林<rt>こばやし</rt></ruby><ruby>施設長<rt>しせつちょう</rt></ruby>、<ruby>緊急<rt>きんきゅう</rt></ruby>ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>トイレ<rt>といれ</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>されました。<ruby>14<rt>じゅうよん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>中村<rt>なかむら</rt></ruby><ruby>看護師<rt>かんごし</rt></ruby>が<ruby>確認<rt>かくにん</rt></ruby>中で、<ruby>骨折<rt>こっせつ</rt></ruby><ruby>疑<rt>うたが</rt></ruby>いで<ruby>救急<rt>きゅうきゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>との<ruby>判断<rt>はんだん</rt></ruby>です。<br>*(Thưa giám đốc Kobayashi, có báo cáo khẩn. Ông Tanaka bị ngã trong nhà vệ sinh. 14 giờ 20 phút, y tá Nakamura đang kiểm tra, nhận định cần xe cứu thương vì nghi gãy xương.)* |
| Kobayashi | (đứng dậy ngay) わかった。<ruby>救急<rt>きゅうきゅう</rt></ruby>は<ruby>今<rt>いま</rt></ruby>すぐ。<ruby>家族<rt>かぞく</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>は?<br>*(Hiểu rồi. Xe cứu thương ngay. Liên lạc gia đình chưa?)* |
| Ngọc | まだです。<ruby>先<rt>さき</rt></ruby>に<ruby>施設長<rt>しせつちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してから、と<ruby>思<rt>おも</rt></ruby>いまして。<ruby>今<rt>いま</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Chưa ạ. Em nghĩ báo cáo trưởng cơ sở trước. Em liên lạc ngay bây giờ.)* |
| Kobayashi | いい<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>救急<rt>きゅうきゅう</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>呼<rt>よ</rt></ruby>ぶ。グエンさんは<ruby>家族<rt>かぞく</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みます。<br>*(Phán đoán tốt. Tôi gọi xe cứu thương. Nguyễn phụ trách liên lạc gia đình và xử lý hiện trường.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 4 — Phòng y tế · 15:00, sau khi ông Tanaka đã được đưa đi bệnh viện

| Vai | Lời thoại |
|---|---|
| Y tá Nakamura | (thở ra) グエンさん、<ruby>搬送<rt>はんそう</rt></ruby>できました。<ruby>骨折<rt>こっせつ</rt></ruby>かどうかは<ruby>病院<rt>びょういん</rt></ruby>での<ruby>確認<rt>かくにん</rt></ruby>になります。<br>*(Nguyễn, đã chuyển viện rồi. Có gãy xương hay không phải chờ bệnh viện xác nhận.)* |
| Ngọc | ありがとうございました。<ruby>初動<rt>しょどう</rt></ruby>はよかったでしょうか?<br>*(Cảm ơn chị. Xử lý ban đầu của em có ổn không ạ?)* |
| Y tá Nakamura | よかったですよ。<ruby>動<rt>うご</rt></ruby>かさないで<ruby>待<rt>ま</rt></ruby>っていた、それが<ruby>正解<rt>せいかい</rt></ruby>です。<ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いがあるときは、<ruby>無理<rt>むり</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かすと<ruby>悪化<rt>あっか</rt></ruby>します。<br>*(Tốt. Không để ông ấy di chuyển mà chờ — đó là đúng. Khi nghi gãy xương, cố di chuyển sẽ làm nặng hơn.)* |
| Ngọc | はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>次<rt>つぎ</rt></ruby>は<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>かないといけないですね。<br>*(Vâng, em ghi nhớ ạ. Tiếp theo em phải viết báo cáo sự cố nhỉ.)* |
| Y tá Nakamura | そうです。<ruby>詳<rt>くわ</rt></ruby>しく、でも<ruby>事実<rt>じじつ</rt></ruby>だけを<ruby>書<rt>か</rt></ruby>く。<ruby>推測<rt>すいそく</rt></ruby>は<ruby>書<rt>か</rt></ruby>かない。それが<ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Đúng vậy. Viết chi tiết, nhưng chỉ ghi sự thật. Không ghi suy đoán. Đó là điều quan trọng.)* |

---

## Tình huống 5 — Phòng hỗ trợ · 15:30, Ngọc viết 事故報告書

| Vai | Lời thoại |
|---|---|
| Yamamoto | (ngồi cạnh hỗ trợ) グエンさん、<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>は<ruby>5W1H<rt>ごだぶりゅーいちえいち</rt></ruby>で<ruby>書<rt>か</rt></ruby>きます。いつ、どこで、誰が、何を、なぜ、どうなった。<br>*(Nguyễn, viết báo cáo sự cố theo 5W1H. Khi nào, ở đâu, ai, gì, tại sao, kết quả thế nào.)* |
| Ngọc | はい。「<ruby>14<rt>じゅうよん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ごろ、<ruby>第<rt>だい</rt></ruby>2ユニット<ruby>トイレ<rt>といれ</rt></ruby><ruby>内<rt>ない</rt></ruby>にて、<ruby>田中<rt>たなか</rt></ruby>ようすけ<ruby>様<rt>さま</rt></ruby>が<ruby>転倒<rt>てんとう</rt></ruby>」…こういう<ruby>形<rt>かたち</rt></ruby>でいいですか?<br>*(Vâng. "Khoảng 14 giờ 20 phút, bên trong nhà vệ sinh đơn vị 2, ông Tanaka Yosuke bị ngã"… Viết dạng này được không ạ?)* |
| Yamamoto | いいです。<ruby>発見<rt>はっけん</rt></ruby>した<ruby>状況<rt>じょうきょう</rt></ruby>も<ruby>具体的<rt>ぐたいてき</rt></ruby>に。「<ruby>床<rt>ゆか</rt></ruby>に<ruby>倒<rt>たお</rt></ruby>れていた」「<ruby>意識<rt>いしき</rt></ruby>あり」「<ruby>腰部<rt>ようぶ</rt></ruby>・<ruby>右膝<rt>みぎひざ</rt></ruby>の<ruby>痛<rt>いた</rt></ruby>みを<ruby>訴<rt>うった</rt></ruby>え」など。<br>*(Tốt. Cả tình trạng phát hiện cũng viết cụ thể. "Đang nằm trên sàn", "tỉnh táo", "than đau vùng lưng và đầu gối phải" chẳng hạn.)* |
| Ngọc | 「<ruby>推定原因<rt>すいていげんいん</rt></ruby>」の<ruby>欄<rt>らん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>と<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Ô "nguyên nhân ước tính" thì viết gì ạ?)* |
| Yamamoto | <ruby>確認<rt>かくにん</rt></ruby>できていないことは「〜の<ruby>可能性<rt>かのうせい</rt></ruby>あり」と<ruby>書<rt>か</rt></ruby>く。例えば「<ruby>床<rt>ゆか</rt></ruby>の<ruby>濡<rt>ぬ</rt></ruby>れ・<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>下肢<rt>かし</rt></ruby><ruby>筋力<rt>きんりょく</rt></ruby><ruby>低下<rt>ていか</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>あり」のように。<br>*(Điều chưa xác nhận được thì viết "có khả năng~". Ví dụ "có khả năng do sàn ướt và suy giảm cơ lực chân của người được chăm sóc".)* |
| Ngọc | わかりました。<ruby>事実<rt>じじつ</rt></ruby>と<ruby>推測<rt>すいそく</rt></ruby>を<ruby>明確<rt>めいかく</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けるんですね。<br>*(Em hiểu rồi. Phân biệt rõ sự thật và suy đoán nhỉ.)* |

---

## Tình huống 6 — Phòng hỗ trợ · 17:00, Ngọc nộp 事故報告書 cho Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>ができました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか。<br>*(Chị Sato, em viết xong báo cáo sự cố rồi. Nhờ chị kiểm tra giúp được không ạ?)* |
| Sato | (đọc kỹ) …<ruby>時系列<rt>じけいれつ</rt></ruby>がちゃんと<ruby>整理<rt>せいり</rt></ruby>されていますね。<ruby>初動<rt>しょどう</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>も<ruby>書<rt>か</rt></ruby>けています。<ruby>一点<rt>いってん</rt></ruby>、「<ruby>発見<rt>はっけん</rt></ruby><ruby>者<rt>しゃ</rt></ruby>」と「<ruby>対応<rt>たいおう</rt></ruby><ruby>者<rt>しゃ</rt></ruby>」を<ruby>分<rt>わ</rt></ruby>けて<ruby>書<rt>か</rt></ruby>くといいです。<br>*(…Trình tự thời gian sắp xếp rõ ràng. Xử lý ban đầu cũng ghi được. Một điểm — nên phân biệt "người phát hiện" và "người xử lý" riêng.)* |
| Ngọc | ありがとうございます。すぐ<ruby>修正<rt>しゅうせい</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>ご<rt>ご</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>は<ruby>もう<rt>もう</rt></ruby>されましたか?<br>*(Cảm ơn chị. Em sửa ngay. Đã liên hệ gia đình ông Tanaka chưa ạ?)* |
| Sato | <ruby>施設長<rt>しせつちょう</rt></ruby>が<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>されました。<ruby>骨折<rt>こっせつ</rt></ruby>はなかったとのことです。<br>*(Trưởng cơ sở đã liên hệ trực tiếp. Kết quả không gãy xương.)* |
| Ngọc | (<ruby>安堵<rt>あんど</rt></ruby>の<ruby>息<rt>いき</rt></ruby>をつきながら) よかった。<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>無事<rt>ぶじ</rt></ruby>で、<ruby>本当<rt>ほんとう</rt></ruby>によかったです。<br>*(Thở phào. Ông Tanaka bình an — thật may mắn.)* |

---

## Tình huống 7 — Phòng họp · Sáng hôm sau, phân tích nguyên nhân nhóm

| Vai | Lời thoại |
|---|---|
| Yamamoto | では、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>転倒<rt>てんとう</rt></ruby><ruby>事故<rt>じこ</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りを<ruby>行<rt>おこな</rt></ruby>います。グエンさんが<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Vậy, chúng ta tiến hành rà soát sự cố té ngã hôm qua. Nguyễn làm trung tâm điều hành nhé.)* |
| Ngọc | はい。まず<ruby>事実<rt>じじつ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>転倒<rt>てんとう</rt></ruby>が<ruby>起<rt>お</rt></ruby>きた<ruby>時間<rt>じかん</rt></ruby><ruby>帯<rt>たい</rt></ruby>、<ruby>トイレ<rt>といれ</rt></ruby>の<ruby>環境<rt>かんきょう</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>直前<rt>ちょくぜん</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>について<ruby>皆<rt>みな</rt></ruby>さんの<ruby>意見<rt>いけん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Vâng. Trước hết xác nhận sự thật. Xin nghe ý kiến mọi người về khung giờ xảy ra, môi trường nhà vệ sinh, và tình trạng của ông Tanaka ngay trước đó.)* |
| Inoue | <ruby>トイレ<rt>といれ</rt></ruby>の<ruby>床<rt>ゆか</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>濡<rt>ぬ</rt></ruby>れていました。<ruby>手すり<rt>てすり</rt></ruby>もあるんですが、<ruby>使<rt>つか</rt></ruby>っていなかったようです。<br>*(Sàn nhà vệ sinh hơi ướt. Tuy có thanh vịn nhưng hình như không dùng.)* |
| Y tá Nakamura | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>先週<rt>せんしゅう</rt></ruby>から<ruby>足<rt>あし</rt></ruby>の<ruby>むくみ<rt>むくみ</rt></ruby>があって、<ruby>バランス<rt>ばらんす</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>でした。<ruby>記録<rt>きろく</rt></ruby>にもあります。<br>*(Ông Tanaka từ tuần trước đã bị phù chân, mất thăng bằng. Trong hồ sơ cũng có ghi.)* |
| Ngọc | ありがとうございます。つまり「<ruby>環境<rt>かんきょう</rt></ruby><ruby>要因<rt>よういん</rt></ruby>」と「<ruby>身体<rt>しんたい</rt></ruby>的<ruby>要因<rt>よういん</rt></ruby>」が<ruby>重<rt>かさ</rt></ruby>なったということですね。<ruby>対策<rt>たいさく</rt></ruby>は<ruby>二方向<rt>にほうこう</rt></ruby>から<ruby>考<rt>かんが</rt></ruby>える<ruby>必要<rt>ひつよう</rt></ruby>があります。<br>*(Cảm ơn mọi người. Tức là "yếu tố môi trường" và "yếu tố thể chất" trùng nhau. Cần xem xét biện pháp từ hai hướng.)* |

---

## Tình huống 8 — Phòng họp · Tiếp tục thảo luận biện pháp phòng ngừa

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>環境面<rt>かんきょうめん</rt></ruby>では、<ruby>トイレ<rt>といれ</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>と<ruby>床<rt>ゆか</rt></ruby>の<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>どめ</rt></ruby>マットの<ruby>設置<rt>せっち</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>できますか?<br>*(Về mặt môi trường, có thể xem xét tăng tần suất vệ sinh nhà vệ sinh và đặt thảm chống trượt sàn không ạ?)* |
| Sato | <ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>どめ</rt></ruby>マットは<ruby>予算<rt>よさん</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>で<ruby>施設長<rt>しせつちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>清掃<rt>せいそう</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>の<ruby>見直<rt>みなお</rt></ruby>しは<ruby>今日<rt>きょう</rt></ruby>からできます。<br>*(Thảm chống trượt liên quan đến ngân sách cần xin ý kiến giám đốc. Tăng tần suất vệ sinh thì có thể làm từ hôm nay.)* |
| Y tá Nakamura | <ruby>身体面<rt>しんたいめん</rt></ruby>では、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>むくみ<rt>むくみ</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>くようなら、リハビリと<ruby>相談<rt>そうだん</rt></ruby>します。<ruby>当面<rt>とうめん</rt></ruby>は<ruby>トイレ<rt>といれ</rt></ruby>の<ruby>際<rt>さい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>付<rt>つ</rt></ruby>き<ruby>添<rt>そ</rt></ruby>うこと。<br>*(Về thể chất, nếu phù chân ông Tanaka tiếp tục thì sẽ trao đổi với phục hồi chức năng. Trước mắt khi vào nhà vệ sinh nhất định phải có người đi kèm.)* |
| Ngọc | ありがとうございます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>結論<rt>けつろん</rt></ruby>を<ruby>議事録<rt>ぎじろく</rt></ruby>にまとめて、<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Cảm ơn mọi người. Em tổng hợp kết luận hôm nay vào biên bản họp và chia sẻ với toàn bộ nhân viên ạ.)* |

---

## Tình huống 9 — Phòng hỗ trợ · Yamamoto nhận xét cách Ngọc điều hành họp

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りカンファレンス、よかったですよ。<ruby>事実<rt>じじつ</rt></ruby>から<ruby>入<rt>はい</rt></ruby>って、<ruby>要因<rt>よういん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>して、<ruby>対策<rt>たいさく</rt></ruby>を<ruby>二方向<rt>にほうこう</rt></ruby>から<ruby>考<rt>かんが</rt></ruby>える。リーダーの<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>ですよ。<br>*(Nguyễn, hội nghị rà soát hôm nay tốt lắm. Bắt đầu từ sự thật, sắp xếp nguyên nhân, suy nghĩ biện pháp từ hai hướng. Đó là cách điều hành của trưởng nhóm.)* |
| Ngọc | ありがとうございます。でも<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>昨日<rt>きのう</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かったです。リーダー<ruby>候補<rt>こうほ</rt></ruby>として、<ruby>私<rt>わたし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>しているユニットで<ruby>事故<rt>じこ</rt></ruby>が<ruby>起<rt>お</rt></ruby>きたということが…<br>*(Cảm ơn chị. Nhưng thật lòng mà nói, hôm qua em sợ. Khi là ứng viên trưởng nhóm mà sự cố xảy ra trong đơn vị mình phụ trách…)* |
| Yamamoto | その<ruby>恐怖感<rt>きょうふかん</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>怖<rt>こわ</rt></ruby>いから<ruby>丁寧<rt>ていねい</rt></ruby>になる、<ruby>怖<rt>こわ</rt></ruby>いから<ruby>予防<rt>よぼう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>える。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>その後<rt>そのご</rt></ruby>の<ruby>行動<rt>こうどう</rt></ruby>です。<br>*(Cảm giác sợ đó quý lắm. Vì sợ nên cẩn thận hơn, vì sợ nên nghĩ đến phòng ngừa. Quan trọng là hành động sau đó.)* |
| Ngọc | はい。<ruby>今後<rt>こんご</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>の<ruby>リスク<rt>りすく</rt></ruby><ruby>把握<rt>はあく</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>します。<ruby>記録<rt>きろく</rt></ruby>から<ruby>見落<rt>みおと</rt></ruby>としていたことがあったので。<br>*(Vâng. Từ đây em tăng cường nắm rõ rủi ro trước. Trong hồ sơ đã có dấu hiệu mà em bỏ sót ạ.)* |

---

## Tình huống 10 — Phòng hồ sơ · Kobayashi gặp Ngọc sau sự cố

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていました。<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>も<ruby>丁寧<rt>ていねい</rt></ruby>でした。<br>*(Nguyễn, xử lý hôm qua bình tĩnh. Báo cáo sự cố cũng cẩn thận.)* |
| Ngọc | ありがとうございます。でも<ruby>反省<rt>はんせい</rt></ruby><ruby>点<rt>てん</rt></ruby>もあります。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>むくみ<rt>むくみ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていたのに、<ruby>巡回<rt>じゅんかい</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やす<ruby>対応<rt>たいおう</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れていました。<br>*(Cảm ơn ạ. Nhưng em cũng có điểm cần rút kinh nghiệm. Em đã thấy hồ sơ ghi phù chân ông Tanaka mà chưa tăng tần suất tuần tra kịp thời.)* |
| Kobayashi | その<ruby>反省<rt>はんせい</rt></ruby>が<ruby>次<rt>つぎ</rt></ruby>につながります。<ruby>事故<rt>じこ</rt></ruby>は<ruby>隠<rt>かく</rt></ruby>すものでなく、<ruby>学<rt>まな</rt></ruby>ぶものです。グエンさんはそれを<ruby>理解<rt>りかい</rt></ruby>している。<br>*(Sự nhìn nhận đó dẫn đến bước tiếp theo. Sự cố không phải để giấu mà để học. Nguyễn hiểu điều đó.)* |
| Ngọc | はい。<ruby>事故<rt>じこ</rt></ruby>を<ruby>通<rt>とお</rt></ruby>して、リーダーとしての<ruby>責任<rt>せきにん</rt></ruby>の<ruby>重<rt>おも</rt></ruby>さを<ruby>実感<rt>じっかん</rt></ruby>しました。<br>*(Vâng. Qua sự cố này, em thực sự cảm nhận được sức nặng trách nhiệm của người trưởng nhóm ạ.)* |

---

## Tình huống 11 — Ký túc xá · 23:00, Ngọc viết nhật ký học tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm, viết vào sổ) <ruby>今日<rt>きょう</rt></ruby>は<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れられない<ruby>日<rt>ひ</rt></ruby>になった。<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>転倒<rt>てんとう</rt></ruby>して、<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になりそうだった。でも…<ruby>体<rt>からだ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いた。<br>*(Hôm nay sẽ là ngày em không bao giờ quên. Khi ông Tanaka ngã, đầu óc em suýt trắng xóa. Nhưng… thân thể tự động phản ứng.)* |
| Ngọc | (tiếp tục viết) <ruby>研修<rt>けんしゅう</rt></ruby>で<ruby>習<rt>なら</rt></ruby>ったこと、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>で<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねたこと、それが<ruby>危機<rt>きき</rt></ruby>のときに<ruby>出<rt>で</rt></ruby>てきた。リーダーとは、<ruby>普段<rt>ふだん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>怠<rt>おこた</rt></ruby>らない<ruby>人<rt>ひと</rt></ruby>のことかもしれない。<br>*(Những gì học trong đào tạo, những gì tích lũy mỗi ngày làm việc — đã hiện ra lúc khủng hoảng. Người trưởng nhóm có lẽ là người không bao giờ lơi là việc chuẩn bị thường ngày.)* |

---

## Tình huống 12 — Điện thoại cuối tuần · Ngọc kể chuyện với Đức (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế.

| Vai | Lời thoại |
|---|---|
| Đức | (tiếng Việt) Ngọc ơi, nghe nói tuần này có sự cố ở đơn vị mày phụ trách? |
| Ngọc | (tiếng Việt) Ừ anh. Ông Tanaka ngã trong nhà vệ sinh. May là không gãy xương. |
| Đức | (tiếng Việt) Mày xử lý được không? Lần đầu gặp chuyện như vậy chắc hoảng. |
| Ngọc | (tiếng Việt) Hoảng chứ anh. Nhưng tay chân tự động làm đúng thứ được dạy. Em mới biết tại sao người ta nói phải luyện tập cho đến khi thành phản xạ. |
| Đức | (tiếng Việt) Đó là đúng. Nghề này không có chỗ cho "để lúc khác". Mày đang trưởng thành rồi đó. |
| Ngọc | (tiếng Việt) Nhờ anh và mọi người chỉ bảo từ đầu. Em còn nhiều thứ phải học lắm. |

---

## Đọng lại chương 7

Sự cố 転倒 là thử thách thực sự đầu tiên của Ngọc trong vai trò リーダー候補. Bài học quan trọng: **xử lý khủng hoảng = bình tĩnh + quy trình + phân tích sau sự cố**. Viết 事故報告書 chuẩn (5W1H, phân biệt sự thật / suy đoán), chủ trì họp phân tích nguyên nhân hai chiều (môi trường + thể chất) là kỹ năng thiết yếu của người quản lý.

> Từ vựng & mẫu câu chương này: 転倒・事故報告書・初動・搬送・骨折・推定原因・5W1H・環境要因・身体的要因・対策・滑り止めマット・巡回頻度・振り返りカンファレンス・議事録・付き添う・リスク把握', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000008, 800000030, NULL, 'markdown_book', 'T8. Khiếu nại từ gia đình (家族からの苦情)', '# Sách điều dưỡng viên quốc gia · T8. Khiếu nại từ gia đình (家族からの苦情)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, 介護福祉士, リーダー候補) đại diện ユニット tiếp nhận khiếu nại từ gia đình người được chăm sóc sau sự cố 転倒 tháng trước. Phải xin lỗi đúng cách, giải thích biện pháp cải tiến, và xây dựng lại niềm tin của gia đình — trong khi vừa nhận ra ranh giới giữa trách nhiệm cá nhân và trách nhiệm tổ chức.

---

## Bối cảnh

Tháng 11. Con trai ông Tanaka — anh Tanaka Hiroshi — yêu cầu gặp đại diện ユニット để hỏi về sự cố té ngã tháng trước. Yamamoto nhận thấy đây là cơ hội rèn luyện cho Ngọc, nên để Ngọc đồng hành cùng Sato 主任 trong buổi gặp này.

---

## Tình huống 1 — Phòng hỗ trợ · Sáng trước buổi gặp, Yamamoto chuẩn bị cho Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>息子<rt>むすこ</rt></ruby>さんがいらっしゃいます。<ruby>佐藤<rt>さとう</rt></ruby>さんと一緒に<ruby>対応<rt>たいおう</rt></ruby>してください。<br>*(Nguyễn, chiều nay con trai ông Tanaka sẽ đến. Em cùng chị Sato tiếp ứng nhé.)* |
| Ngọc | はい。どんな<ruby>内容<rt>ないよう</rt></ruby>のご<ruby>苦情<rt>くじょう</rt></ruby>でしょうか?<br>*(Vâng. Nội dung khiếu nại là gì ạ?)* |
| Yamamoto | <ruby>転倒<rt>てんとう</rt></ruby>のことと、その<ruby>後<rt>あと</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>についてです。「なぜ<ruby>事前<rt>じぜん</rt></ruby>に<ruby>危険<rt>きけん</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えてくれなかったのか」という<ruby>点<rt>てん</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>まれているようです。<br>*(Về chuyện té ngã và xử lý sau đó. Có vẻ bao gồm cả điểm "tại sao không thông báo nguy cơ trước".)* |
| Ngọc | <ruby>事前<rt>じぜん</rt></ruby>の<ruby>通知<rt>つうち</rt></ruby>…むくみが<ruby>続<rt>つづ</rt></ruby>いていたことを<ruby>家族<rt>かぞく</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えしていなかった、ということですね。<br>*(Thông báo trước… tức là đã không truyền đạt cho gia đình việc phù chân kéo dài nhỉ.)* |
| Yamamoto | そうです。<ruby>苦情<rt>くじょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるときは、まず<ruby>謝罪<rt>しゃざい</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>に<ruby>事実<rt>じじつ</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、そして<ruby>改善策<rt>かいぜんさく</rt></ruby>の<ruby>提示<rt>ていじ</rt></ruby>。この<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってください。<br>*(Đúng vậy. Khi tiếp nhận khiếu nại: trước hết xin lỗi, sau đó giải thích sự thật, rồi trình bày biện pháp cải tiến. Giữ đúng thứ tự này.)* |
| Ngọc | <ruby>謝罪<rt>しゃざい</rt></ruby>・<ruby>説明<rt>せつめい</rt></ruby>・<ruby>改善策<rt>かいぜんさく</rt></ruby>。はい、<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Xin lỗi, giải thích, biện pháp cải tiến. Vâng, em ghi nhớ ạ.)* |

---

## Tình huống 2 — Phòng tiếp gia đình · 14:00, gia đình ông Tanaka đến

| Vai | Lời thoại |
|---|---|
| Anh Hiroshi Tanaka | (vào phòng, vẻ mặt căng thẳng) <ruby>田中<rt>たなか</rt></ruby>ひろしと<ruby>申<rt>もう</rt></ruby>します。<ruby>父<rt>ちち</rt></ruby>がお<ruby>世話<rt>せわ</rt></ruby>になっています。<br>*(Tôi là Tanaka Hiroshi. Cha tôi đang được chăm sóc ở đây.)* |
| Sato | おいでくださいまして、ありがとうございます。<ruby>介護<rt>かいご</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。こちらは<ruby>担当<rt>たんとう</rt></ruby>ユニットのグエンです。<br>*(Cảm ơn anh đã đến. Tôi là Sato, 介護主任. Đây là Nguyễn, phụ trách đơn vị của cha anh.)* |
| Ngọc | (cúi đầu sâu) グエン・ゴックと<ruby>申<rt>もう</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>ご様子<rt>ごようす</rt></ruby>を<ruby>日々<rt>ひび</rt></ruby>みさせていただいています。<ruby>今日<rt>きょう</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<br>*(Tôi là Nguyễn Ngọc. Tôi theo dõi tình trạng của ông Tanaka hằng ngày. Cảm ơn anh đã dành thời gian hôm nay.)* |
| Anh Hiroshi | (ngồi xuống) <ruby>単刀直入<rt>たんとうちょくにゅう</rt></ruby>に<ruby>聞<rt>き</rt></ruby>きます。なぜ<ruby>父<rt>ちち</rt></ruby>は<ruby>転倒<rt>てんとう</rt></ruby>したんですか。そして、なぜ<ruby>事前<rt>じぜん</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>がなかったんですか。<br>*(Tôi hỏi thẳng. Tại sao cha tôi bị ngã? Và tại sao không có liên lạc trước?)* |

---

## Tình huống 3 — Phòng tiếp gia đình · Ngọc và Sato xin lỗi và giải thích

| Vai | Lời thoại |
|---|---|
| Sato | まず、このたびは<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>転倒<rt>てんとう</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>があり、<ruby>大変<rt>たいへん</rt></ruby>なご<ruby>心配<rt>しんぱい</rt></ruby>をおかけしました。<ruby>深<rt>ふか</rt></ruby>くお<ruby>詫<rt>わ</rt></ruby>び<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Trước hết, sự cố té ngã của ông Tanaka đã khiến anh lo lắng rất nhiều. Chúng tôi xin lỗi sâu sắc.)* |
| Ngọc | (cúi đầu) <ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした。<ruby>担当<rt>たんとう</rt></ruby>として、<ruby>田中<rt>たなか</rt></ruby>さんをお<ruby>守<rt>まも</rt></ruby>りする<ruby>責任<rt>せきにん</rt></ruby>があったにもかかわらず、<ruby>不十分<rt>ふじゅうぶん</rt></ruby>でした。<br>*(Thật sự xin lỗi. Với trách nhiệm là người phụ trách, tôi đã không bảo vệ ông Tanaka đầy đủ.)* |
| Anh Hiroshi | (giọng trở nên gay gắt hơn) 「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ない」では<ruby>済<rt>す</rt></ruby>まない。<ruby>父<rt>ちち</rt></ruby>は<ruby>足<rt>あし</rt></ruby>がむくんでいたんでしょう? それを<ruby>知<rt>し</rt></ruby>っていたのに、なぜ<ruby>教<rt>おし</rt></ruby>えてくれなかった。<br>*(Chỉ "xin lỗi" thôi không đủ. Cha tôi bị phù chân rồi phải không? Đã biết mà tại sao không báo cho tôi biết.)* |
| Sato | ご<ruby>指摘<rt>してき</rt></ruby>はごもっともです。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>10<rt>じゅう</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>下旬<rt>げじゅん</rt></ruby>から<ruby>下肢<rt>かし</rt></ruby>の<ruby>浮腫<rt>むくみ</rt></ruby>が<ruby>見<rt>み</rt></ruby>られ、<ruby>記録<rt>きろく</rt></ruby>にも<ruby>残<rt>のこ</rt></ruby>っていました。ご<ruby>家族<rt>かぞく</rt></ruby>への<ruby>共有<rt>きょうゆう</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れたことは、<ruby>私<rt>わたし</rt></ruby>どもの<ruby>連絡不足<rt>れんらくぶそく</rt></ruby>です。<br>*(Sự chỉ trích của anh hoàn toàn có lý. Ông Tanaka có biểu hiện phù chân từ cuối tháng 10, được ghi trong hồ sơ. Việc chậm chia sẻ với gia đình là do chúng tôi thiếu sót trong liên lạc.)* |
| Ngọc | (giọng bình tĩnh, chân thành) <ruby>私<rt>わたし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>として、むくみの<ruby>状態<rt>じょうたい</rt></ruby>をご<ruby>家族<rt>かぞく</rt></ruby>にお<ruby>伝<rt>つた</rt></ruby>えするタイミングが<ruby>遅<rt>おく</rt></ruby>れました。これは<ruby>私<rt>わたし</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>の<ruby>甘<rt>あま</rt></ruby>さでした。<br>*(Với tư cách là người phụ trách, tôi đã chậm trễ trong việc truyền đạt tình trạng phù chân cho gia đình. Đây là sự đánh giá tình huống chưa đủ của tôi.)* |

---

## Tình huống 4 — Phòng tiếp gia đình · Anh Hiroshi tiếp tục chất vấn

| Vai | Lời thoại |
|---|---|
| Anh Hiroshi | グエンさんでしたっけ。<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>なんですね。<ruby>日本語<rt>にほんご</rt></ruby>はちゃんとわかりますか?<br>*(Nguyễn phải không? Người nước ngoài phụ trách à. Tiếng Nhật có hiểu đúng không?)* |
| Ngọc | (bình tĩnh, không tránh né) はい、ご<ruby>心配<rt>しんぱい</rt></ruby>はごもっともです。<ruby>私<rt>わたし</rt></ruby>は<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>しており、<ruby>日本語<rt>にほんご</rt></ruby>での<ruby>記録<rt>きろく</rt></ruby>・<ruby>報告<rt>ほうこく</rt></ruby>も<ruby>担当<rt>たんとう</rt></ruby>しています。ただ、<ruby>今回<rt>こんかい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>は<ruby>言語<rt>げんご</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>ではなく、<ruby>私<rt>わたし</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>だと<ruby>認識<rt>にんしき</rt></ruby>しています。<br>*(Vâng, sự lo lắng của anh hoàn toàn có lý. Tôi đã lấy được bằng 介護福祉士 và phụ trách ghi chép, báo cáo bằng tiếng Nhật. Tuy nhiên, vấn đề lần này không phải về ngôn ngữ mà là về phán đoán của tôi, tôi nhận thức rõ điều đó.)* |
| Anh Hiroshi | (im lặng một lúc) …そうですか。<br>*(…Vậy sao.)* |
| Sato | (tiếp lời) <ruby>田中<rt>たなか</rt></ruby>さんのことを、グエンさんは<ruby>毎日<rt>まいにち</rt></ruby>丁寧に<ruby>記録<rt>きろく</rt></ruby>し、<ruby>声かけ<rt>こえかけ</rt></ruby>もしていました。<ruby>担当<rt>たんとう</rt></ruby>として<ruby>誠実<rt>せいじつ</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わっている<ruby>方<rt>かた</rt></ruby>です。<br>*(Nguyễn hằng ngày ghi chép cẩn thận về ông Tanaka và luôn lên tiếng hỏi thăm. Đây là người phụ trách làm việc thành thật và tận tâm.)* |

---

## Tình huống 5 — Phòng tiếp gia đình · Trình bày biện pháp cải tiến

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>今後<rt>こんご</rt></ruby>の<ruby>改善策<rt>かいぜんさく</rt></ruby>についてご<ruby>説明<rt>せつめい</rt></ruby>させてください。<ruby>三点<rt>さんてん</rt></ruby>あります。<br>*(Cho phép tôi trình bày các biện pháp cải tiến sắp tới. Có 3 điểm.)* |
| Ngọc | <ruby>一点目<rt>いってんめ</rt></ruby>は、<ruby>健康状態<rt>けんこうじょうたい</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>が<ruby>見<rt>み</rt></ruby>られた<ruby>場合<rt>ばあい</rt></ruby>、<ruby>速やか<rt>すみやか</rt></ruby>にご<ruby>家族<rt>かぞく</rt></ruby>にご<ruby>連絡<rt>れんらく</rt></ruby>すること。<ruby>目安<rt>めやす</rt></ruby>は<ruby>変化<rt>へんか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>した<ruby>翌日<rt>よくじつ</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<br>*(Điểm thứ nhất: khi phát hiện sự thay đổi về sức khỏe, liên lạc nhanh chóng với gia đình. Mốc thời gian là trong vòng ngày hôm sau kể từ khi xác nhận thay đổi.)* |
| Ngọc | <ruby>二点目<rt>にてんめ</rt></ruby>は、<ruby>トイレ<rt>といれ</rt></ruby>での<ruby>付き添い<rt>つきそい</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>の<ruby>強化<rt>きょうか</rt></ruby>です。<ruby>田中<rt>たなか</rt></ruby>さんのように<ruby>転倒<rt>てんとう</rt></ruby><ruby>リスク<rt>りすく</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>には、<ruby>必<rt>かなら</rt></ruby>ず<ruby>付き添い<rt>つきそい</rt></ruby>をつけます。<br>*(Điểm thứ hai: tăng cường đi kèm trong nhà vệ sinh. Những người có nguy cơ té ngã cao như ông Tanaka sẽ luôn có người đi kèm.)* |
| Ngọc | <ruby>三点目<rt>さんてんめ</rt></ruby>は、<ruby>月<rt>つき</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんのご<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>書面<rt>しょめん</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>することです。<ruby>ご要望<rt>ごようぼう</rt></ruby>があれば<ruby>面談<rt>めんだん</rt></ruby>も<ruby>設<rt>もう</rt></ruby>けます。<br>*(Điểm thứ ba: mỗi tháng 1 lần, báo cáo bằng văn bản tình trạng của ông Tanaka. Nếu anh có yêu cầu, chúng tôi cũng sắp xếp buổi gặp gỡ trực tiếp.)* |
| Anh Hiroshi | (thái độ dịu lại phần nào) …<ruby>月<rt>つき</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>書面<rt>しょめん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>は、ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(…Báo cáo bằng văn bản mỗi tháng 1 lần, tôi xin nhờ thực hiện.)* |

---

## Tình huống 6 — Phòng tiếp gia đình · Anh Hiroshi hỏi thêm về tình trạng cha

| Vai | Lời thoại |
|---|---|
| Anh Hiroshi | 父は今、どんな<ruby>状態<rt>じょうたい</rt></ruby>ですか。<ruby>骨折<rt>こっせつ</rt></ruby>はなかったとは<ruby>聞<rt>き</rt></ruby>きましたが。<br>*(Giờ cha tôi tình trạng thế nào? Tôi nghe nói không gãy xương.)* |
| Ngọc | はい。<ruby>骨折<rt>こっせつ</rt></ruby>はなく、<ruby>打撲<rt>だぼく</rt></ruby>のみでした。<ruby>現在<rt>げんざい</rt></ruby>は<ruby>痛<rt>いた</rt></ruby>みも<ruby>引<rt>ひ</rt></ruby>き、<ruby>日常生活<rt>にちじょうせいかつ</rt></ruby>は<ruby>通常<rt>つうじょう</rt></ruby>どおり<ruby>行<rt>おこな</rt></ruby>えています。むくみについてはリハビリの<ruby>先生<rt>せんせい</rt></ruby>にも<ruby>相談<rt>そうだん</rt></ruby>し、<ruby>軽<rt>かる</rt></ruby>い<ruby>体操<rt>たいそう</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>入<rt>い</rt></ruby>れています。<br>*(Vâng. Không gãy xương, chỉ bị bầm. Hiện tại đau đã giảm, sinh hoạt hằng ngày đã trở lại bình thường. Về phù chân, chúng tôi đã trao đổi với giáo viên phục hồi chức năng và đang kết hợp thể dục nhẹ.)* |
| Anh Hiroshi | 父はなんと言っていますか?<br>*(Cha tôi nói gì không?)* |
| Ngọc | (nhẹ nhàng mỉm cười) 「グエンはうるさいほど<ruby>声<rt>こえ</rt></ruby>をかけてくる」とおっしゃっています。でも<ruby>表情<rt>ひょうじょう</rt></ruby>は<ruby>柔<rt>やわ</rt></ruby>らかいです。<br>*(Ông hay nói "Nguyễn cứ hỏi thăm hoài". Nhưng nét mặt của ông thì mềm mại.)* |
| Anh Hiroshi | (lần đầu tiên nở nụ cười nhẹ) …そうですか。父らしいですね。<br>*(…Vậy sao. Đúng là cha tôi rồi.)* |

---

## Tình huống 7 — Phòng tiếp gia đình · Kết thúc buổi gặp

| Vai | Lời thoại |
|---|---|
| Anh Hiroshi | <ruby>今日<rt>きょう</rt></ruby>は<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いていただきありがとうございました。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怒<rt>おこ</rt></ruby>っていましたが、<ruby>改善策<rt>かいぜんさく</rt></ruby>もわかりました。<ruby>父<rt>ちち</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn mọi người đã lắng nghe hôm nay. Ban đầu tôi tức giận, nhưng bây giờ đã hiểu các biện pháp cải tiến. Tiếp tục nhờ mọi người chăm sóc cha tôi.)* |
| Sato | ありがとうございます。<ruby>今後<rt>こんご</rt></ruby>は<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>密<rt>みつ</rt></ruby>にします。<ruby>何<rt>なに</rt></ruby>かあれば、いつでもお<ruby>申<rt>もう</rt></ruby>しつけください。<br>*(Cảm ơn anh. Từ nay chúng tôi sẽ liên lạc thường xuyên hơn. Có gì xin cứ nói bất kỳ lúc nào.)* |
| Ngọc | (cúi đầu) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なご<ruby>意見<rt>いけん</rt></ruby>をいただき、ありがとうございました。ご<ruby>心配<rt>しんぱい</rt></ruby>をおかけしたことを、あらためてお<ruby>詫<rt>わ</rt></ruby>び<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>田中<rt>たなか</rt></ruby>さんのことは、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>担当<rt>たんとう</rt></ruby>いたします。<br>*(Cảm ơn anh đã cho chúng tôi những ý kiến quý báu hôm nay. Tôi xin lỗi một lần nữa vì đã gây lo lắng cho anh. Tôi sẽ phụ trách ông Tanaka với trách nhiệm đầy đủ.)* |

---

## Tình huống 8 — Hành lang sau buổi gặp · Sato nhận xét Ngọc

| Vai | Lời thoại |
|---|---|
| Sato | (sau khi anh Hiroshi về) グエンさん、よくできました。<ruby>外国人<rt>がいこくじん</rt></ruby>について<ruby>聞<rt>き</rt></ruby>かれたとき、<ruby>動揺<rt>どうよう</rt></ruby>しなかった。<br>*(Nguyễn, làm tốt lắm. Khi bị hỏi về chuyện người nước ngoài, em không dao động.)* |
| Ngọc | <ruby>内心<rt>ないしん</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>しました。でも<ruby>争点<rt>そうてん</rt></ruby>をずらさないようにしようと<ruby>思<rt>おも</rt></ruby>って。<br>*(Bên trong em cũng căng thẳng. Nhưng em cố không để lạc điểm tranh luận.)* |
| Sato | それが<ruby>正解<rt>せいかい</rt></ruby>です。<ruby>苦情対応<rt>くじょうたいおう</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>なのは、<ruby>感情的<rt>かんじょうてき</rt></ruby>にならないこと。<ruby>相手<rt>あいて</rt></ruby>の<ruby>感情<rt>かんじょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>止<rt>と</rt></ruby>めつつ、<ruby>事実<rt>じじつ</rt></ruby>と<ruby>対応策<rt>たいおうさく</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>える。<br>*(Đó là đúng. Quan trọng nhất trong xử lý khiếu nại là không bị cuốn vào cảm xúc. Tiếp nhận cảm xúc của đối phương trong khi truyền đạt sự thật và biện pháp xử lý.)* |
| Ngọc | <ruby>改善策<rt>かいぜんさく</rt></ruby>を<ruby>三点<rt>さんてん</rt></ruby>に<ruby>整理<rt>せいり</rt></ruby>したのは、<ruby>山本<rt>やまもと</rt></ruby>さんのアドバイスです。<br>*(Việc sắp xếp biện pháp cải tiến thành 3 điểm là theo lời khuyên của chị Yamamoto ạ.)* |
| Sato | <ruby>構成<rt>こうせい</rt></ruby>がよかったです。<ruby>数字<rt>すうじ</rt></ruby>で<ruby>示<rt>しめ</rt></ruby>すと<ruby>相手<rt>あいて</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>わりやすい。これも<ruby>学<rt>まな</rt></ruby>んでいきなさい。<br>*(Cấu trúc tốt. Đưa ra con số cụ thể giúp đối phương dễ hiểu hơn. Đây cũng là điều hãy tiếp tục học.)* |

---

## Tình huống 9 — Phòng hỗ trợ · Yamamoto nghe báo cáo từ Ngọc

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、ご<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>息子<rt>むすこ</rt></ruby>さんとの<ruby>面談<rt>めんだん</rt></ruby>は<ruby>終<rt>お</rt></ruby>わりました。<ruby>最終的<rt>さいしゅうてき</rt></ruby>には「<ruby>今後<rt>こんご</rt></ruby>もよろしく」とのご<ruby>言葉<rt>ことば</rt></ruby>をいただきました。<br>*(Chị Yamamoto, em báo cáo. Buổi gặp với con trai ông Tanaka kết thúc rồi. Cuối cùng nhận được lời "tiếp tục nhờ mọi người".)* |
| Yamamoto | よかった。難しかったですか?<br>*(Tốt lắm. Có khó không?)* |
| Ngọc | はい。<ruby>外国人<rt>がいこくじん</rt></ruby>だからという<ruby>指摘<rt>してき</rt></ruby>もありました。でも<ruby>争点<rt>そうてん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>だと<ruby>整理<rt>せいり</rt></ruby>できました。<br>*(Vâng. Cũng có chỉ trích vì em là người nước ngoài. Nhưng em xác định được điểm tranh luận là vấn đề phán đoán của em.)* |
| Yamamoto | 素晴らしい。<ruby>苦情<rt>くじょう</rt></ruby>は<ruby>辛<rt>つら</rt></ruby>いけど、<ruby>信頼<rt>しんらい</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>すチャンスでもある。グエンさんはそのチャンスをものにしました。<br>*(Xuất sắc. Khiếu nại là đau đớn, nhưng cũng là cơ hội lấy lại niềm tin. Nguyễn đã tận dụng cơ hội đó.)* |

---

## Tình huống 10 — Phòng sinh hoạt · Chiều hôm đó, Ngọc gặp ông Tanaka

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、こんにちは。<ruby>今日<rt>きょう</rt></ruby>は<ruby>息子<rt>むすこ</rt></ruby>さんがいらっしゃいましたね。<br>*(Ông Tanaka, chào ông. Hôm nay con trai ông có đến nhỉ.)* |
| Ông Tanaka | ああ。あいつ、<ruby>心配性<rt>しんぱいしょう</rt></ruby>でね。<ruby>叱<rt>しか</rt></ruby>ってきたか?<br>*(Ừ. Thằng đó lo lắng lắm. Nó đến mắng không?)* |
| Ngọc | いえ。<ruby>心配<rt>しんぱい</rt></ruby>なさっているから<ruby>来<rt>き</rt></ruby>てくれたんだと<ruby>思<rt>おも</rt></ruby>います。ご<ruby>家族<rt>かぞく</rt></ruby>に<ruby>大切<rt>たいせつ</rt></ruby>にされていますね。<br>*(Không ạ. Tôi nghĩ ông ấy đến vì lo lắng. Ông được gia đình quý trọng lắm.)* |
| Ông Tanaka | …まあな。<ruby>転<rt>こ</rt></ruby>けて<ruby>迷惑<rt>めいわく</rt></ruby>をかけたな、グエンに。<br>*(…Ừ thế. Tôi ngã làm phiền Nguyễn rồi.)* |
| Ngọc | そんなことはありません。<ruby>私<rt>わたし</rt></ruby>こそ、もっと<ruby>早<rt>はや</rt></ruby>く<ruby>対応<rt>たいおう</rt></ruby>すべきでした。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>体<rt>からだ</rt></ruby>の<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか?<br>*(Không như vậy đâu ạ. Chính tôi đáng lẽ phải ứng phó sớm hơn. Ông Tanaka, hôm nay sức khỏe ông thế nào?)* |
| Ông Tanaka | まあ、<ruby>悪<rt>わる</rt></ruby>くない。グエンがうるさく<ruby>声<rt>こえ</rt></ruby>をかけてくるからな。<br>*(Thôi, không tệ lắm. Vì Nguyễn cứ hỏi thăm hoài mà.)* |
| Ngọc | (cười) これからもうるさくしますよ。<ruby>大切<rt>たいせつ</rt></ruby>なので。<br>*(Em sẽ tiếp tục hỏi thăm hoài đấy ạ. Vì ông quan trọng với em.)* |

---

## Tình huống 11 — Phòng nghỉ nhân viên · Inoue chia sẻ sau buổi gặp gia đình

| Vai | Lời thoại |
|---|---|
| Inoue | グエンさん、<ruby>家族<rt>かぞく</rt></ruby>対応、<ruby>大変<rt>たいへん</rt></ruby>でしたね。どうでしたか?<br>*(Nguyễn, xử lý với gia đình vất vả nhỉ. Thế nào?)* |
| Ngọc | <ruby>怖<rt>こわ</rt></ruby>かったです。<ruby>怒<rt>おこ</rt></ruby>っているご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で、<ruby>感情的<rt>かんじょうてき</rt></ruby>にならずにいるのが<ruby>難<rt>むずか</rt></ruby>しくて。<br>*(Em sợ. Đứng trước gia đình đang tức giận mà cố không bị cuốn vào cảm xúc thật sự khó.)* |
| Inoue | 僕も<ruby>以前<rt>いぜん</rt></ruby>、ご<ruby>家族<rt>かぞく</rt></ruby>に<ruby>怒鳴<rt>どな</rt></ruby>られたことがある。あのときは<ruby>怖<rt>こわ</rt></ruby>かった。<br>*(Tôi trước đây cũng bị gia đình la hét. Lúc đó cũng sợ.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さんがいてくれてよかったです。<ruby>横<rt>よこ</rt></ruby>で<ruby>補<rt>おぎな</rt></ruby>ってくれましたから。<br>*(May có chị Sato ở cạnh. Chị bổ sung những chỗ em còn thiếu.)* |
| Inoue | チームで<ruby>動<rt>うご</rt></ruby>くということが、リーダーには<ruby>大切<rt>たいせつ</rt></ruby>ですよね。<ruby>一人<rt>ひとり</rt></ruby>でやろうとしなくていい。<br>*(Làm việc theo nhóm rất quan trọng với trưởng nhóm. Không cần làm một mình.)* |
| Ngọc | はい。<ruby>今日<rt>きょう</rt></ruby>、それを<ruby>実感<rt>じっかん</rt></ruby>しました。<br>*(Vâng. Hôm nay em thực sự cảm nhận được điều đó.)* |

---

## Tình huống 12 — Ký túc xá · 23:00, Ngọc gọi điện cho mẹ ở Việt Nam (tiếng Việt)

> Scene tiếng Việt — giữ mạch nhân vật & tuyến áp lực thực tế.

| Vai | Lời thoại |
|---|---|
| Mẹ Ngọc | (tiếng Việt) Con ơi, nghe giọng con mệt vậy. Hôm nay có chuyện gì không? |
| Ngọc | (tiếng Việt) Con ổn mẹ. Hôm nay phải xử lý khiếu nại của gia đình người con chăm sóc. Hơi căng. |
| Mẹ Ngọc | (tiếng Việt) Gia đình họ khó không? |
| Ngọc | (tiếng Việt) Lúc đầu khó. Nhưng cuối cùng họ hiểu. Con học được nhiều. Quan trọng nhất là xin lỗi thật thành thật và giải thích cụ thể sẽ làm gì tiếp theo. |
| Mẹ Ngọc | (tiếng Việt) Con giờ nghe chín chắn hơn nhiều rồi đó. Mẹ mừng. |
| Ngọc | (tiếng Việt) Mẹ ơi, mẹ có khỏe không? Con nhớ mẹ. Bao giờ con về được mẹ nhỉ. |
| Mẹ Ngọc | (tiếng Việt) Mẹ khỏe. Con lo làm tốt đi, đừng lo cho mẹ. Mẹ tự hào về con. |

---

## Đọng lại chương 8

Tiếp nhận khiếu nại gia đình là thử thách về cảm xúc lẫn kỹ năng. Ngọc học được công thức then chốt: **謝罪 → 説明 → 改善策** theo thứ tự, không bị cuốn vào cảm xúc, không né tránh trách nhiệm. Quan trọng là nhận ra ranh giới giữa trách nhiệm cá nhân và sự hỗ trợ của tập thể — リーダー không chiến đấu một mình.

> Từ vựng & mẫu câu chương này: 苦情対応・謝罪・改善策・誠に申し訳ございません・お詫び申し上げます・連絡不足・下肢の浮腫・転倒リスク・付き添い・月次報告・書面報告・感情的にならない・争点・信頼を取り戻す・チームで動く', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000009, 800000030, NULL, 'markdown_book', 'T9. Kế hoạch chăm sóc sa sút trí tuệ (認知症ケア計画)', '# Sách điều dưỡng viên quốc gia · T9. Kế hoạch chăm sóc sa sút trí tuệ (認知症ケア計画)

> **Mục tiêu nhân vật:** Ngọc (28 tuổi, 介護福祉士, リーダー候補) dẫn nhóm bàn kế hoạch chăm sóc cá nhân cho 利用者 bị sa sút trí tuệ nặng lên, học cách điều phối カンファレンス và phối hợp với 看護師, 介護主任.

---

## Bối cảnh

Tháng 12. Ông Tanaka, 利用者 lâu năm tại ひだまり苑, xuất hiện các triệu chứng 認知症 tiến triển: lạc đường trong hành lang, không nhận ra nhân viên quen, thỉnh thoảng興奮 về đêm. Ngọc — đang ở vị trí リーダー候補 — được 介護主任 Sato giao nhiệm vụ chủ trì カンファレンス, lập 個別ケア計画 cho ông Tanaka cùng toàn nhóm.

---

## Tình huống 1 — Văn phòng 介護主任 · 9:00, nhận nhiệm vụ chủ trì カンファレンス

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>症状<rt>しょうじょう</rt></ruby>が<ruby>最近<rt>さいきん</rt></ruby><ruby>進<rt>すす</rt></ruby>んでいます。<ruby>個別<rt>こべつ</rt></ruby>ケア<ruby>計画<rt>けいかく</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>す<ruby>必要<rt>ひつよう</rt></ruby>があります。<br>*(Em Nguyễn, tình trạng sa sút trí tuệ của ông Tanaka gần đây đã tiến triển. Chúng ta cần xem xét lại kế hoạch chăm sóc cá nhân.)* |
| Ngọc | はい、<ruby>夜間<rt>やかん</rt></ruby>の<ruby>興奮<rt>こうふん</rt></ruby>と、<ruby>廊下<rt>ろうか</rt></ruby>で<ruby>迷子<rt>まいご</rt></ruby>になるケースが<ruby>増<rt>ふ</rt></ruby>えているのは<ruby>把握<rt>はあく</rt></ruby>しています。<br>*(Vâng, em đã nắm được việc ban đêm hay hưng phấn và số lần lạc đường trong hành lang tăng lên.)* |
| Sato | カンファレンスを<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby>に<ruby>設定<rt>せってい</rt></ruby>しました。グエンさんに<ruby>進行<rt>しんこう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいたいのですが。<br>*(Tôi đã đặt lịch họp vào thứ Tư tuần tới. Tôi muốn em phụ trách điều hành buổi họp.)* |
| Ngọc | わたしが<ruby>進行<rt>しんこう</rt></ruby>を...ですか?<ruby>初<rt>はじ</rt></ruby>めてなので<ruby>不安<rt>ふあん</rt></ruby>もありますが、やらせていただきます。<br>*(Em điều hành... ạ? Em chưa làm lần nào nên cũng lo, nhưng em sẽ cố gắng.)* |
| Sato | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。まず<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>記録<rt>きろく</rt></ruby>を<ruby>読<rt>よ</rt></ruby>み返して、<ruby>課題<rt>かだい</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>してください。<ruby>中村<rt>なかむら</rt></ruby>さん（<ruby>看護師<rt>かんごし</rt></ruby>）にも<ruby>医療面<rt>いりょうめん</rt></ruby>での<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いておいてください。<br>*(Không sao. Trước tiên em đọc lại hồ sơ của ông Tanaka rồi sắp xếp các vấn đề. Em cũng hỏi thông tin mặt y tế từ chị Nakamura — y tá nhé.)* |
| Ngọc | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>中村<rt>なかむら</rt></ruby>さんと<ruby>話<rt>はな</rt></ruby>し<ruby>合<rt>あ</rt></ruby>っておきます。<br>*(Vâng, em sẽ trao đổi với chị Nakamura trước.)* |

---

## Tình huống 2 — Phòng y tế · 9:40, hỏi 看護師 Nakamura về tình trạng y tế

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>医療面<rt>いりょうめん</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけますか?カンファレンスで<ruby>共有<rt>きょうゆう</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Chị Nakamura, chị có thể cho em biết về tình trạng y tế của ông Tanaka không? Em muốn chia sẻ trong buổi họp.)* |
| Nakamura | もちろん。<ruby>現在<rt>げんざい</rt></ruby>、<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>進行<rt>しんこう</rt></ruby>を<ruby>遅<rt>おそ</rt></ruby>らせる<ruby>薬<rt>くすり</rt></ruby>を<ruby>服用<rt>ふくよう</rt></ruby>中ですが、<ruby>夜間<rt>やかん</rt></ruby>の<ruby>睡眠<rt>すいみん</rt></ruby>リズムが<ruby>乱<rt>みだ</rt></ruby>れています。<br>*(Dĩ nhiên. Hiện ông đang uống thuốc làm chậm tiến triển sa sút trí tuệ, nhưng nhịp ngủ ban đêm bị rối loạn.)* |
| Ngọc | <ruby>睡眠<rt>すいみん</rt></ruby>リズムが<ruby>乱<rt>みだ</rt></ruby>れると、<ruby>興奮<rt>こうふん</rt></ruby>しやすくなるのですか?<br>*(Rối loạn nhịp ngủ thì dễ hưng phấn hơn ạ?)* |
| Nakamura | そうです。<ruby>日中<rt>にちちゅう</rt></ruby>の<ruby>活動<rt>かつどう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やして<ruby>夜<rt>よる</rt></ruby>の<ruby>睡眠<rt>すいみん</rt></ruby>を<ruby>促<rt>うなが</rt></ruby>すことが<ruby>大切<rt>たいせつ</rt></ruby>です。また、<ruby>転倒<rt>てんとう</rt></ruby>リスクも<ruby>高<rt>たか</rt></ruby>いので、<ruby>環境整備<rt>かんきょうせいび</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đúng vậy. Việc tăng hoạt động ban ngày để thúc đẩy giấc ngủ ban đêm rất quan trọng. Ngoài ra, nguy cơ ngã cũng cao nên cũng cần chỉnh trang môi trường.)* |
| Ngọc | <ruby>環境整備<rt>かんきょうせいび</rt></ruby>については、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんなことが<ruby>考<rt>かんが</rt></ruby>えられますか?<br>*(Về chỉnh trang môi trường thì cụ thể có thể nghĩ đến những gì ạ?)* |
| Nakamura | <ruby>廊下<rt>ろうか</rt></ruby>のセンサーライト設置、<ruby>部屋<rt>へや</rt></ruby>の<ruby>目印<rt>めじるし</rt></ruby>をわかりやすくする、<ruby>夜間<rt>やかん</rt></ruby>ラウンドの<ruby>回数<rt>かいすう</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やすことなどです。<br>*(Lắp đèn cảm biến ở hành lang, làm dấu hiệu nhận biết phòng rõ ràng hơn, tăng số lần tuần tra ban đêm v.v.)* |
| Ngọc | ありがとうございます。カンファレンスでそのまま<ruby>提案<rt>ていあん</rt></ruby>させていただきます。<br>*(Cảm ơn chị. Em sẽ đề xuất nguyên như vậy trong buổi họp.)* |

---

## Tình huống 3 — Phòng nhân viên · 10:30, trao đổi với An và Đức trước カンファレンス

| Vai | Lời thoại |
|---|---|
| Ngọc | アンさん、ドゥックさん、<ruby>来週<rt>らいしゅう</rt></ruby>のカンファレンスに<ruby>向<rt>む</rt></ruby>けて、<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>夜間<rt>やかん</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>しておいてほしいんです。<br>*(Chị An, anh Đức, để chuẩn bị cho buổi họp tuần sau, mình muốn các bạn ghi lại tình trạng ban đêm của ông Tanaka nhé.)* |
| An | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>は<ruby>廊下<rt>ろうか</rt></ruby>に<ruby>三回<rt>さんかい</rt></ruby>出てきました。「<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたい」とおっしゃっていて…。<br>*(Được rồi. Tối hôm qua ông ra hành lang ba lần. Ông cứ nói "muốn về nhà"...)* |
| Đức | ぼくもメモしていますよ。<ruby>夜<rt>よる</rt></ruby>11<ruby>時<rt>じ</rt></ruby>ごろ<ruby>興奮<rt>こうふん</rt></ruby>されて、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>かせるのに<ruby>30分<rt>さんじゅっぷん</rt></ruby>かかりました。<br>*(Tôi cũng ghi chú rồi. Khoảng 11 giờ đêm ông hưng phấn, mất 30 phút mới làm ông bình tĩnh lại được.)* |
| Ngọc | ありがとう。その<ruby>記録<rt>きろく</rt></ruby>を<ruby>資料<rt>しりょう</rt></ruby>にまとめます。カンファレンスでは、みんなに<ruby>意見<rt>いけん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してほしいので、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>話<rt>はな</rt></ruby>してください。<br>*(Cảm ơn. Mình sẽ tổng hợp hồ sơ đó vào tài liệu. Trong buổi họp mình muốn mọi người đưa ra ý kiến, nên cứ nói thoải mái nhé.)* |
| An | ゴックさんが<ruby>進行<rt>しんこう</rt></ruby>するんですよね?<ruby>初<rt>はじ</rt></ruby>めてですよね?<br>*(Chị Ngọc điều hành à? Lần đầu tiên phải không?)* |
| Ngọc | そう、<ruby>緊張<rt>きんちょう</rt></ruby>するけど、<ruby>田中<rt>たなか</rt></ruby>さんのために<ruby>一番<rt>いちばん</rt></ruby>いいケアを<ruby>考<rt>かんが</rt></ruby>えたい。みんなの<ruby>力<rt>ちから</rt></ruby>を<ruby>借<rt>か</rt></ruby>りてね。<br>*(Đúng, hồi hộp nhưng mình muốn nghĩ ra chăm sóc tốt nhất cho ông Tanaka. Nhờ sức mọi người nhé.)* |

---

## Tình huống 4 — Phòng họp · 14:00, khai mạc カンファレンス

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>田中<rt>たなか</rt></ruby><ruby>義雄<rt>よしお</rt></ruby>さんの<ruby>個別<rt>こべつ</rt></ruby>ケア<ruby>計画<rt>けいかく</rt></ruby>カンファレンスを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>進行<rt>しんこう</rt></ruby>はわたしグエン・ゴックが<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Vậy, chúng ta bắt đầu buổi họp kế hoạch chăm sóc cá nhân của ông Tanaka Yoshio. Tôi — Nguyễn Ngọc — sẽ phụ trách điều hành.)* |
| Ngọc | まず<ruby>現状<rt>げんじょう</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>医療面<rt>いりょうめん</rt></ruby>からご<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Trước tiên chúng ta bắt đầu bằng xác nhận tình trạng hiện tại. Chị Nakamura, chị có thể báo cáo về mặt y tế được không?)* |
| Nakamura | はい。<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>現在<rt>げんざい</rt></ruby>、<ruby>中等度<rt>ちゅうとうど</rt></ruby>の<ruby>認知症<rt>にんちしょう</rt></ruby>で、<ruby>要介護<rt>ようかいご</rt></ruby>3です。<ruby>夜間<rt>やかん</rt></ruby>の<ruby>徘徊<rt>はいかい</rt></ruby>と<ruby>帰宅願望<rt>きたくがんぼう</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなっています。<br>*(Vâng. Ông Tanaka hiện mắc sa sút trí tuệ mức độ vừa, cần chăm sóc cấp độ 3. Tình trạng lang thang ban đêm và mong muốn về nhà đang tăng mạnh.)* |
| Sato | <ruby>介護面<rt>かいごめん</rt></ruby>からは?<br>*(Còn về mặt điều dưỡng?)* |
| Ngọc | はい。<ruby>記録<rt>きろく</rt></ruby>によると、<ruby>今月<rt>こんげつ</rt></ruby>は<ruby>夜間<rt>やかん</rt></ruby>の<ruby>離床<rt>りしょう</rt></ruby>が<ruby>週<rt>しゅう</rt></ruby>に<ruby>平均<rt>へいきん</rt></ruby>4<ruby>回<rt>かい</rt></ruby>あります。<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>残存機能<rt>ざんそんきのう</rt></ruby>を<ruby>活<rt>い</rt></ruby>かした<ruby>日中<rt>にちちゅう</rt></ruby>プログラムが<ruby>課題<rt>かだい</rt></ruby>です。<br>*(Vâng. Theo hồ sơ, tháng này số lần rời giường ban đêm trung bình 4 lần/tuần. Chương trình ban ngày tận dụng chức năng còn lại của ông là vấn đề cần giải quyết.)* |

---

## Tình huống 5 — Phòng họp · 14:20, thảo luận giải pháp cụ thể

| Vai | Lời thoại |
|---|---|
| Ngọc | では、みなさんにご<ruby>意見<rt>いけん</rt></ruby>をいただきたいです。<ruby>日中<rt>にちちゅう</rt></ruby>の<ruby>活動<rt>かつどう</rt></ruby>で<ruby>何<rt>なに</rt></ruby>かできることはありますか?<br>*(Vậy, tôi muốn nghe ý kiến từ mọi người. Về hoạt động ban ngày, có thể làm gì không?)* |
| An | <ruby>田中<rt>たなか</rt></ruby>さんは<ruby>昔<rt>むかし</rt></ruby>、<ruby>農業<rt>のうぎょう</rt></ruby>をされていたと<ruby>聞<rt>き</rt></ruby>きました。<ruby>園芸療法<rt>えんげいりょうほう</rt></ruby>はどうでしょうか?<br>*(Tôi nghe nói ngày xưa ông Tanaka làm nông nghiệp. Liệu pháp làm vườn thì sao ạ?)* |
| Đức | いいと<ruby>思<rt>おも</rt></ruby>います。<ruby>手<rt>て</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かすことで<ruby>覚醒<rt>かくせい</rt></ruby>レベルも<ruby>上<rt>あ</rt></ruby>がりますし。<br>*(Tôi nghĩ tốt đấy. Vận động tay cũng nâng cao mức độ tỉnh thức.)* |
| Nakamura | <ruby>医療面<rt>いりょうめん</rt></ruby>からも<ruby>賛成<rt>さんせい</rt></ruby>です。<ruby>体<rt>からだ</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かすと<ruby>夜<rt>よる</rt></ruby>の<ruby>睡眠<rt>すいみん</rt></ruby>の<ruby>質<rt>しつ</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がります。<br>*(Từ góc độ y tế tôi cũng tán thành. Vận động cơ thể giúp nâng cao chất lượng giấc ngủ ban đêm.)* |
| Ngọc | では、<ruby>午後<rt>ごご</rt></ruby>2<ruby>時<rt>じ</rt></ruby>から<ruby>園芸<rt>えんげい</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>週<rt>しゅう</rt></ruby>に3<ruby>回<rt>かい</rt></ruby><ruby>設<rt>もう</rt></ruby>けることを<ruby>提案<rt>ていあん</rt></ruby>します。あわせて、<ruby>環境整備<rt>かんきょうせいび</rt></ruby>として<ruby>廊下<rt>ろうか</rt></ruby>のセンサーライトと、<ruby>部屋<rt>へや</rt></ruby>の<ruby>目印<rt>めじるし</rt></ruby>の<ruby>見直<rt>みなお</rt></ruby>しも<ruby>行<rt>おこな</rt></ruby>います。<br>*(Vậy tôi đề xuất thiết lập giờ làm vườn 3 lần/tuần từ 2 giờ chiều. Kèm theo, về chỉnh trang môi trường, chúng ta cũng tiến hành lắp đèn cảm biến hành lang và xem lại dấu hiệu nhận biết phòng.)* |
| Sato | よくまとまっていますね。<ruby>夜間<rt>やかん</rt></ruby>ラウンドについては?<br>*(Tổng hợp tốt đấy. Còn về tuần tra ban đêm?)* |
| Ngọc | <ruby>現在<rt>げんざい</rt></ruby>の<ruby>2回<rt>にかい</rt></ruby>から<ruby>3回<rt>さんかい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やすことを<ruby>提案<rt>ていあん</rt></ruby>します。<ruby>担当<rt>たんとう</rt></ruby>シフトと<ruby>相談<rt>そうだん</rt></ruby>しながら<ruby>進<rt>すす</rt></ruby>めます。<br>*(Tôi đề xuất tăng từ 2 lần hiện tại lên 3 lần. Chúng ta sẽ tiến hành sau khi trao đổi với lịch trực.)* |

---

## Tình huống 6 — Phòng họp · 14:45, ghi biên bản và phân công

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>今日<rt>きょう</rt></ruby>の<ruby>決定事項<rt>けっていじこう</rt></ruby>をまとめます。一、<ruby>午後<rt>ごご</rt></ruby>の<ruby>園芸療法<rt>えんげいりょうほう</rt></ruby>を<ruby>週<rt>しゅう</rt></ruby>3<ruby>回<rt>かい</rt></ruby><ruby>実施<rt>じっし</rt></ruby>。二、<ruby>廊下<rt>ろうか</rt></ruby>のライトと<ruby>部屋<rt>へや</rt></ruby>の<ruby>目印<rt>めじるし</rt></ruby>を<ruby>改善<rt>かいぜん</rt></ruby>。三、<ruby>夜間<rt>やかん</rt></ruby>ラウンドを3<ruby>回<rt>かい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やす。以上でよろしいでしょうか?<br>*(Vậy tôi tổng hợp các quyết định hôm nay. Một, thực hiện liệu pháp làm vườn buổi chiều 3 lần/tuần. Hai, cải thiện đèn hành lang và dấu hiệu nhận biết phòng. Ba, tăng tuần tra ban đêm lên 3 lần. Mọi người có đồng ý không?)* |
| Sato | はい、<ruby>問題<rt>もんだい</rt></ruby>ありません。<ruby>議事録<rt>ぎじろく</rt></ruby>はグエンさんが<ruby>作成<rt>さくせい</rt></ruby>してください。<br>*(Vâng, không có vấn đề gì. Em Nguyễn hãy soạn biên bản họp nhé.)* |
| Ngọc | <ruby>了解<rt>りょうかい</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>します。アンさんは<ruby>園芸療法<rt>えんげいりょうほう</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>を<ruby>お願<rt>ねが</rt></ruby>いできますか?<br>*(Vâng. Em sẽ nộp trước ngày mai. Chị An có thể phụ trách liệu pháp làm vườn được không?)* |
| An | はい、<ruby>喜<rt>よろこ</rt></ruby>んで。<ruby>田中<rt>たなか</rt></ruby>さん、きっと<ruby>喜<rt>よろこ</rt></ruby>ばれると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, vui lòng. Tôi nghĩ ông Tanaka chắc chắn sẽ vui.)* |
| Đức | <ruby>夜間<rt>やかん</rt></ruby>ラウンドはぼくと<ruby>交代<rt>こうたい</rt></ruby>でやります。<br>*(Tuần tra ban đêm tôi sẽ làm luân phiên với mọi người.)* |
| Ngọc | ありがとうございます。<ruby>一丸<rt>いちがん</rt></ruby>となって<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みましょう。<br>*(Cảm ơn mọi người. Chúng ta cùng nhau nỗ lực nhé.)* |

---

## Tình huống 7 — Hành lang · 15:30, gặp ông Tanaka sau カンファレンス

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、こんにちは。<ruby>今日<rt>きょう</rt></ruby>のご<ruby>様子<rt>ようす</rt></ruby>はいかがですか?<br>*(Ông Tanaka, chào ông. Hôm nay ông có khỏe không?)* |
| Ông Tanaka | ああ...グエンか。なんか<ruby>頭<rt>あたま</rt></ruby>がぼーっとするな。<br>*(À... Nguyễn à. Sao đầu óc cứ mờ mờ thế này.)* |
| Ngọc | そうですか。<ruby>水分<rt>すいぶん</rt></ruby>はちゃんと<ruby>飲<rt>の</rt></ruby>んでいますか?<br>*(Vậy ạ. Ông có uống nước đầy đủ không?)* |
| Ông Tanaka | まあ、そうかな。<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>りたいな。<ruby>田舎<rt>いなか</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>が<ruby>気<rt>き</rt></ruby>になって。<br>*(Cũng được. Muốn về nhà nhỉ. Cứ nhớ đến mảnh ruộng ở quê.)* |
| Ngọc | そうですね。<ruby>畑<rt>はたけ</rt></ruby>のお<ruby>仕事<rt>しごと</rt></ruby>、<ruby>長<rt>なが</rt></ruby>くされていたんですよね。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>施設<rt>しせつ</rt></ruby>の<ruby>庭<rt>にわ</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>花<rt>はな</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てませんか?<br>*(Vâng. Ông đã làm ruộng lâu năm phải không. Từ tuần sau ông có muốn cùng trồng hoa trong vườn cơ sở không?)* |
| Ông Tanaka | (mắt sáng lên) <ruby>庭<rt>にわ</rt></ruby>で?...そうか、いいな。<ruby>花<rt>はな</rt></ruby>の<ruby>世話<rt>せわ</rt></ruby>は<ruby>好<rt>す</rt></ruby>きだよ。<br>*(Trong vườn?... Vậy à, tốt đấy. Tôi thích chăm sóc hoa lắm.)* |
| Ngọc | よかった。じゃあ、<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<ruby>楽<rt>たの</rt></ruby>しみにしていてください。<br>*(Tốt quá. Vậy chúng ta cùng làm nhé. Ông đợi nhé.)* |

---

## Tình huống 8 — Bàn làm việc · 17:00, vật lộn soạn 議事録

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, nhìn tờ ghi chú) 「<ruby>残存機能<rt>ざんそんきのう</rt></ruby>」...「<ruby>帰宅願望<rt>きたくがんぼう</rt></ruby>」...この<ruby>漢字<rt>かんじ</rt></ruby>、<ruby>正<rt>ただ</rt></ruby>しく<ruby>書<rt>か</rt></ruby>けているかな。<br>*(Một mình, nhìn tờ ghi chú: "Chức năng còn lại"... "Mong muốn về nhà"... Không biết viết kanji này có đúng không nhỉ.)* |
| Hương | (đi qua, nhìn vào) ゴックさん、<ruby>議事録<rt>ぎじろく</rt></ruby>ですか?<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょうか?<br>*(Chị Ngọc, viết biên bản à? Để tôi cùng kiểm tra nhé?)* |
| Ngọc | ありがとう、<ruby>助<rt>たす</rt></ruby>かります。「<ruby>残存機能<rt>ざんそんきのう</rt></ruby>」の「<ruby>残<rt>ざん</rt></ruby>」は<ruby>合<rt>あ</rt></ruby>ってますか?<br>*(Cảm ơn, may quá. Chữ "残" trong "残存機能" có đúng không?)* |
| Hương | <ruby>合<rt>あ</rt></ruby>ってます。あと「<ruby>帰宅願望<rt>きたくがんぼう</rt></ruby>」は「<ruby>願望<rt>がんぼう</rt></ruby>」、<ruby>難<rt>むずか</rt></ruby>しい<ruby>字<rt>じ</rt></ruby>ですよね。<br>*(Đúng rồi. Còn "帰宅願望" thì chữ "願望" khó viết nhỉ.)* |
| Ngọc | そうなんです。でも<ruby>議事録<rt>ぎじろく</rt></ruby>をきちんと<ruby>書<rt>か</rt></ruby>けるようになることも、リーダーの<ruby>仕事<rt>しごと</rt></ruby>ですね。<br>*(Đúng vậy. Nhưng viết biên bản cho đúng cũng là việc của trưởng nhóm nhỉ.)* |
| Hương | そうですよ。ゴックさんなら<ruby>絶対<rt>ぜったい</rt></ruby>できますよ。<br>*(Đúng vậy. Chị Ngọc nhất định làm được.)* |

---

## Tình huống 9 — Phòng Sato · hôm sau 9:00, nộp 議事録

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、昨日の<ruby>議事録<rt>ぎじろく</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちしました。ご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chị Sato, em mang biên bản họp hôm qua đến. Mong chị kiểm tra giúp ạ.)* |
| Sato | (đọc qua) ...よくまとまっていますね。<ruby>決定事項<rt>けっていじこう</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>で<ruby>担当者<rt>たんとうしゃ</rt></ruby>も<ruby>記載<rt>きさい</rt></ruby>されています。<br>*(Đọc qua... Tổng hợp tốt đấy. Các quyết định rõ ràng và có ghi người phụ trách.)* |
| Ngọc | <ruby>漢字<rt>かんじ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しくて…<ruby>同僚<rt>どうりょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してもらいながら<ruby>書<rt>か</rt></ruby>きました。<br>*(Kanji khó quá... Em vừa viết vừa nhờ đồng nghiệp kiểm tra.)* |
| Sato | <ruby>恥<rt>は</rt></ruby>ずかしいことじゃないですよ。<ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>進<rt>すす</rt></ruby>めることが<ruby>大切<rt>たいせつ</rt></ruby>です。リーダーは<ruby>一人<rt>ひとり</rt></ruby>でやるんじゃなく、チームを<ruby>動<rt>うご</rt></ruby>かすことですからね。<br>*(Không có gì đáng xấu hổ. Việc tiến hành trong khi kiểm tra là điều quan trọng. Trưởng nhóm không làm một mình, mà là điều phối cả nhóm đó.)* |
| Ngọc | はい、そうですね。<ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Vâng, đúng vậy ạ. Cảm ơn chị đã dạy điều quan trọng.)* |

---

## Tình huống 10 — Vườn cơ sở · Thứ Năm tuần sau, buổi 園芸療法 đầu tiên

| Vai | Lời thoại |
|---|---|
| An | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>花<rt>はな</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てましょう。これ、パンジーの<ruby>苗<rt>なえ</rt></ruby>ですよ。<br>*(Ông Tanaka, từ hôm nay chúng ta cùng trồng hoa nhé. Đây là cây hoa păng-xê đó ông.)* |
| Ông Tanaka | パンジーか。<ruby>春<rt>はる</rt></ruby>になると<ruby>綺麗<rt>きれい</rt></ruby>だな。(tay cầm cây giống, nét mặt thư thái) <br>*(Hoa păng-xê à. Mùa xuân đẹp lắm. [tay cầm cây giống, nét mặt thư thái])* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>土<rt>つち</rt></ruby>の<ruby>感触<rt>かんしょく</rt></ruby>はどうですか?<br>*(Ông Tanaka, cảm giác đất thế nào ạ?)* |
| Ông Tanaka | いい<ruby>土<rt>つち</rt></ruby>だな。<ruby>昔<rt>むかし</rt></ruby>の<ruby>畑<rt>はたけ</rt></ruby>みたいだ。(nhìn Ngọc) グエン、<ruby>農業<rt>のうぎょう</rt></ruby>はやったことがあるか?<br>*(Đất tốt nhỉ. Giống đất ruộng ngày xưa. [nhìn Ngọc] Nguyễn, cậu đã làm nông bao giờ chưa?)* |
| Ngọc | ベトナムでは<ruby>田んぼ<rt>たんぼ</rt></ruby>があって、<ruby>子供<rt>こども</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>手伝<rt>てつだ</rt></ruby>ったことがあります。<br>*(Ở Việt Nam có ruộng lúa, hồi nhỏ em có phụ một chút.)* |
| Ông Tanaka | そうか。じゃあ、<ruby>土<rt>つち</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちはわかるな。(cười nhẹ) <br>*(Vậy à. Thì cũng biết cảm giác của đất rồi nhỉ. [cười nhẹ])* |
| An | (thầm nói với Ngọc) ゴックさん、<ruby>田中<rt>たなか</rt></ruby>さん、こんなに<ruby>笑顔<rt>えがお</rt></ruby>、<ruby>久<rt>ひさ</rt></ruby>しぶりですよ。<br>*(thầm nói với Ngọc: Chị Ngọc, nụ cười của ông Tanaka — lâu lắm rồi mới thấy.)* |

---

## Tình huống 11 — Văn phòng · cuối tháng, báo cáo hiệu quả ケア計画

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さんのケア<ruby>計画<rt>けいかく</rt></ruby><ruby>実施<rt>じっし</rt></ruby>から2<ruby>週間<rt>しゅうかん</rt></ruby>が<ruby>経<rt>た</rt></ruby>ちました。ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Chị Sato, đã 2 tuần kể từ khi thực hiện kế hoạch chăm sóc của ông Tanaka. Em có báo cáo ạ.)* |
| Sato | どうでしたか?<br>*(Thế nào?)* |
| Ngọc | <ruby>夜間<rt>やかん</rt></ruby>の<ruby>離床<rt>りしょう</rt></ruby>が<ruby>週<rt>しゅう</rt></ruby>4<ruby>回<rt>かい</rt></ruby>から2<ruby>回<rt>かい</rt></ruby>に<ruby>減<rt>へ</rt></ruby>りました。<ruby>園芸療法<rt>えんげいりょうほう</rt></ruby>の<ruby>後<rt>あと</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>夜<rt>よる</rt></ruby>よく<ruby>眠<rt>ねむ</rt></ruby>れているようです。<br>*(Số lần rời giường ban đêm giảm từ 4 xuống 2 lần/tuần. Đặc biệt sau buổi làm vườn, ông ngủ ngon hơn hẳn ban đêm.)* |
| Sato | それはよかった。やはり<ruby>個別性<rt>こべつせい</rt></ruby>のあるケアが<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Tốt quá. Quả nhiên chăm sóc mang tính cá nhân là quan trọng nhỉ.)* |
| Ngọc | はい。<ruby>田中<rt>たなか</rt></ruby>さんの<ruby>生活歴<rt>せいかつれき</rt></ruby>を<ruby>活<rt>い</rt></ruby>かした<ruby>介入<rt>かいにゅう</rt></ruby>が<ruby>効果的<rt>こうかてき</rt></ruby>だったと<ruby>思<rt>おも</rt></ruby>います。アンさんが<ruby>園芸<rt>えんげい</rt></ruby>を<ruby>上手<rt>うま</rt></ruby>く<ruby>進<rt>すす</rt></ruby>めてくれたことも<ruby>大<rt>おお</rt></ruby>きいです。<br>*(Vâng. Em nghĩ việc can thiệp dựa trên lịch sử cuộc sống của ông Tanaka đã hiệu quả. Việc chị An điều hành làm vườn tốt cũng đóng vai trò lớn.)* |
| Sato | チームワークですね。グエンさん、カンファレンスの<ruby>進行<rt>しんこう</rt></ruby>も<ruby>立派<rt>りっぱ</rt></ruby>でしたよ。<br>*(Đó là tinh thần đồng đội nhỉ. Em Nguyễn, điều hành buổi họp cũng rất tốt đấy.)* |
| Ngọc | ありがとうございます。まだまだ<ruby>勉強<rt>べんきょう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですが、チームのみんなのおかげです。<br>*(Cảm ơn chị. Em vẫn còn cần học nhiều, nhưng nhờ mọi người trong nhóm đó ạ.)* |

---

## Tình huống 12 — Ký túc · tối, gọi điện thoại về nhà (Việt Nam)

> Scene tiếng Việt — tuyến gia đình, tiết chế.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, hôm nay con chủ trì họp cả nhóm lần đầu. Hơi run nhưng xong rồi. |
| Mẹ | (tiếng Việt) Vậy à. Thế nào, ổn không? |
| Ngọc | (tiếng Việt) Ổn mẹ. Mấy người Việt trong nhóm giúp con nhiều. Ông Tanaka hôm nay cười, con vui lắm. |
| Mẹ | (tiếng Việt) Con làm được rồi đó. Mà con ăn chưa, trông mệt vậy? |
| Ngọc | (tiếng Việt) Ăn rồi mẹ. Mẹ và em ở nhà có khỏe không? |
| Mẹ | (tiếng Việt) Khỏe. Em hôm nay hỏi chị Ngọc khi nào về. Con cố thêm nghen, mẹ chờ. |
| Ngọc | (tiếng Việt) Dạ. Mẹ giữ sức khỏe nhé. Chúc ngủ ngon. |

---

## Đọng lại chương 9

Ngọc lần đầu **chủ trì カンファレンス** — từ thu thập thông tin y tế (問い合わせ/共有), điều hành thảo luận (意見収集/提案), đến ra quyết định và **soạn 議事録**. Bài học: リーダーはチームを動かす, không phải làm một mình. ケア計画 cá nhân hoá (個別性のあるケア) dựa trên **生活歴** của người dùng cho kết quả thiết thực: giảm徘徊, phục hồi笑顔.

> Từ vựng & mẫu câu chương này: 認知症・個別ケア計画・カンファレンス・進行を担当する・残存機能・帰宅願望・夜間離床・徘徊・環境整備・センサーライト・園芸療法・生活歴・個別性・議事録・決定事項・担当者・中等度・要介護3', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000010, 800000030, NULL, 'markdown_book', 'T10. Nhậm trưởng nhóm và tiễn biệt (ユニットリーダー就任・看取り)', '# Sách điều dưỡng viên quốc gia · T10. Nhậm trưởng nhóm và tiễn biệt (ユニットリーダー就任・看取り)

> **Mục tiêu nhân vật:** Ngọc chính thức nhậm ユニットリーダー; đồng hành cùng nhóm qua giai đoạn 看取り của một 利用者 — học điều phối cảm xúc nhóm, phối hợp 医療・介護, và đứng vững trong vai trò lãnh đạo.

---

## Bối cảnh

Tháng 1. Ngọc chính thức được bổ nhiệm ユニットリーダー tại ひだまり苑. Cùng thời điểm đó, ông Kimura — 利用者 thân thiết từ ngày Ngọc mới sang — bước vào giai đoạn 看取り. Đây là chương nặng về cảm xúc, được viết tiết chế và nhân văn: tập trung vào công việc nghiệp vụ, sự đoàn kết nhóm, và phẩm giá của người ra đi.

---

## Tình huống 1 — Phòng họp · 9:00, lễ bổ nhiệm ユニットリーダー

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエン・ゴックさん、このたび、ユニットリーダーに<ruby>就任<rt>しゅうにん</rt></ruby>していただくことになりました。<ruby>正式<rt>せいしき</rt></ruby>に<ruby>辞令<rt>じれい</rt></ruby>をお<ruby>渡<rt>わた</rt></ruby>しします。<br>*(Em Nguyễn Ngọc, lần này em được bổ nhiệm vào vị trí trưởng nhóm. Tôi trao quyết định bổ nhiệm chính thức.)* |
| Ngọc | (nhận văn bản, cúi đầu) ありがとうございます。<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>です。チームのみんなのために<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努力<rt>どりょく</rt></ruby>します。<br>*(Cảm ơn rất nhiều ạ. Đây là vinh dự quá lớn. Em sẽ cố gắng hết sức vì cả nhóm.)* |
| Kobayashi | <ruby>外国<rt>がいこく</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>でリーダーになるのは、うちの<ruby>施設<rt>しせつ</rt></ruby>で<ruby>初<rt>はじ</rt></ruby>めてです。グエンさんならできると<ruby>信<rt>しん</rt></ruby>じています。<br>*(Người xuất thân từ nước ngoài trở thành trưởng nhóm — đây là lần đầu tiên trong cơ sở chúng ta. Tôi tin em làm được.)* |
| Yamamoto | (đứng bên cạnh, gật đầu) グエンさん、<ruby>頼<rt>たの</rt></ruby>みますよ。<ruby>困<rt>こま</rt></ruby>ったことがあればいつでも<ruby>相談<rt>そうだん</rt></ruby>してください。<br>*(Em Nguyễn, tôi tin tưởng em đó. Có gì khó khăn thì cứ trao đổi với tôi bất cứ lúc nào.)* |
| Ngọc | はい。<ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>今<rt>いま</rt></ruby>まで<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。これからもご<ruby>指導<rt>しどう</rt></ruby>をよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Chị Yamamoto, cảm ơn chị rất nhiều vì tất cả đến giờ. Mong chị tiếp tục chỉ bảo em.)* |
| Sato | これからはリーダーとして<ruby>責任<rt>せきにん</rt></ruby>ある<ruby>判断<rt>はんだん</rt></ruby>が<ruby>求<rt>もと</rt></ruby>められます。プレッシャーもあるでしょうが、<ruby>一緒<rt>いっしょ</rt></ruby>にやっていきましょう。<br>*(Từ giờ em sẽ được yêu cầu những quyết định có trách nhiệm với tư cách trưởng nhóm. Sẽ có áp lực, nhưng chúng ta cùng nhau nhé.)* |

---

## Tình huống 2 — Phòng ông Kimura · 10:00, nhận tin từ 看護師 Nakamura

| Vai | Lời thoại |
|---|---|
| Nakamura | (gọi Ngọc ra hành lang, nói nhẹ) グエンさん、<ruby>木村<rt>きむら</rt></ruby>さんのことで<ruby>話<rt>はな</rt></ruby>があります。<br>*(Em Nguyễn, tôi có chuyện muốn nói về ông Kimura.)* |
| Ngọc | はい。<ruby>状態<rt>じょうたい</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりましたか?<br>*(Vâng. Tình trạng có thay đổi gì à?)* |
| Nakamura | <ruby>先月<rt>せんげつ</rt></ruby>から<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>量<rt>りょう</rt></ruby>が<ruby>減<rt>へ</rt></ruby>り、<ruby>血圧<rt>けつあつ</rt></ruby>も<ruby>不安定<rt>ふあんてい</rt></ruby>です。<ruby>主治医<rt>しゅじい</rt></ruby>が「<ruby>看取<rt>みと</rt></ruby>り」の<ruby>段階<rt>だんかい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ると<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Từ tháng trước lượng ăn giảm, huyết áp cũng không ổn định. Bác sĩ phụ trách đã nhận định đây là giai đoạn "tiễn biệt".)* |
| Ngọc | (dừng lại một nhịp) ...そうですか。<ruby>ご家族<rt>ごかぞく</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>はもう?<br>*(... Vậy ạ. Đã liên lạc với gia đình chưa ạ?)* |
| Nakamura | <ruby>息子<rt>むすこ</rt></ruby>さんに<ruby>連絡済<rt>れんらくず</rt></ruby>みです。できるだけ<ruby>面会<rt>めんかい</rt></ruby>に<ruby>来<rt>き</rt></ruby>ていただくようにお<ruby>伝<rt>つた</rt></ruby>えしました。<ruby>介護面<rt>かいごめん</rt></ruby>では、リーダーとして<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>過<rt>す</rt></ruby>ごせるようにお<ruby>願<rt>ねが</rt></ruby>いしたいのです。<br>*(Đã liên lạc với người con trai rồi. Chúng tôi đã nhắn để ông ấy đến thăm nhiều nhất có thể. Về mặt điều dưỡng, tôi muốn nhờ em với tư cách trưởng nhóm đảm bảo ông Kimura được sống những ngày cuối thật bình yên.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>木村<rt>きむら</rt></ruby>さんらしく、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>過<rt>す</rt></ruby>ごしていただけるよう、チームで<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>みます。<br>*(Vâng, em hiểu rồi. Em sẽ cùng nhóm nỗ lực để ông Kimura có thể sống những ngày cuối theo đúng cách của ông đến cùng.)* |

---

## Tình huống 3 — Phòng nhân viên · 11:00, thông báo và chuẩn bị nhóm

| Vai | Lời thoại |
|---|---|
| Ngọc | (tập hợp nhóm, nói nhẹ nhàng) <ruby>木村<rt>きむら</rt></ruby>さんが<ruby>看取<rt>みと</rt></ruby>りの<ruby>段階<rt>だんかい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>られました。みんなに<ruby>知<rt>し</rt></ruby>らせておきたいと<ruby>思<rt>おも</rt></ruby>って。<br>*(Ông Kimura đã vào giai đoạn tiễn biệt. Mình muốn thông báo để mọi người biết.)* |
| An | (thở nhẹ) そうですか...。<ruby>木村<rt>きむら</rt></ruby>さんって、いつも<ruby>元気<rt>げんき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>しかけてくださっていたのに。<br>*(Vậy ạ... Ông Kimura cứ hay nói chuyện với mình vui vẻ...)* |
| Đức | (im lặng, gật đầu chậm) <br>*(im lặng, gật đầu chậm)* |
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さんは、きっとみなさんと<ruby>過<rt>す</rt></ruby>ごした<ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>思<rt>おも</rt></ruby>ってくださっています。これからは、<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>過<rt>す</rt></ruby>ごしていただけるよう、一人ひとりがいつも<ruby>通<rt>どお</rt></ruby>りの<ruby>温<rt>あたた</rt></ruby>かいケアを<ruby>続<rt>つづ</rt></ruby>けることが<ruby>一番<rt>いちばん</rt></ruby>です。<br>*(Ông Kimura chắc chắn trân trọng thời gian được ở bên mọi người. Từ giờ, điều quan trọng nhất là mỗi người tiếp tục chăm sóc ân cần như thường ngày để ông được sống bình yên.)* |
| Hương | (nhỏ giọng) ゴックさん、<ruby>私<rt>わたし</rt></ruby>たちは<ruby>何<rt>なに</rt></ruby>かできますか?<br>*(Nhỏ giọng: Chị Ngọc, chúng mình có thể làm gì không?)* |
| Ngọc | <ruby>声<rt>こえ</rt></ruby>かけを<ruby>丁寧<rt>ていねい</rt></ruby>に。<ruby>手<rt>て</rt></ruby>を<ruby>握<rt>にぎ</rt></ruby>ること。<ruby>好<rt>す</rt></ruby>きなものを<ruby>少<rt>すこ</rt></ruby>しでも<ruby>食<rt>た</rt></ruby>べていただくこと。それだけで<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Lên tiếng ân cần. Cầm tay ông. Cố cho ông ăn chút gì ông thích. Chỉ vậy thôi là đủ rồi.)* |

---

## Tình huống 4 — Bên giường ông Kimura · chiều, chăm sóc thường ngày

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>木村<rt>きむら</rt></ruby>さん、こんにちは。<ruby>今日<rt>きょう</rt></ruby>は<ruby>外<rt>そと</rt></ruby>がよく<ruby>晴<rt>は</rt></ruby>れていますよ。<ruby>窓<rt>まど</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>開<rt>あ</rt></ruby>けましょうか?<br>*(Ông Kimura, chào ông. Hôm nay bên ngoài nắng đẹp lắm. Mở cửa sổ chút nhé ạ?)* |
| Ông Kimura | (giọng yếu) ...ああ。<ruby>日<rt>ひ</rt></ruby>の<ruby>光<rt>ひかり</rt></ruby>が<ruby>気持<rt>きも</rt></ruby>ちいいな。<br>*(... Ừ. Ánh nắng dễ chịu nhỉ.)* |
| Ngọc | (nhẹ nhàng cầm tay ông) <ruby>温<rt>あたた</rt></ruby>かいですね。<ruby>今日<rt>きょう</rt></ruby>は<ruby>体<rt>からだ</rt></ruby>のどこか<ruby>痛<rt>いた</rt></ruby>いですか?<br>*(nhẹ nhàng cầm tay ông: Ấm nhỉ. Hôm nay có chỗ nào đau không ạ?)* |
| Ông Kimura | ...いや、大丈夫だよ。グエン、<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>ありがとうな。<br>*(... Không, không sao đâu. Nguyễn, cảm ơn cậu suốt thời gian qua nhé.)* |
| Ngọc | (giọng dịu dàng) こちらこそ、ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えていただいたことがたくさんあります。<br>*(Chính cháu mới phải cảm ơn ông. Ông đã dạy cháu rất nhiều điều.)* |
| Ông Kimura | (mắt khép nhẹ) ...そうか。ゆっくりするよ。<br>*(... Vậy à. Tôi nghỉ một chút đây.)* |

---

## Tình huống 5 — Hành lang · buổi tối, điều phối ca với Đức

| Vai | Lời thoại |
|---|---|
| Ngọc | ドゥックさん、<ruby>今夜<rt>こんや</rt></ruby>の<ruby>夜勤<rt>やきん</rt></ruby>、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>部屋<rt>へや</rt></ruby>のラウンドを<ruby>30分<rt>さんじゅっぷん</rt></ruby>おきにお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Anh Đức, đêm nay trực đêm, anh có thể tuần tra phòng ông Kimura mỗi 30 phút không?)* |
| Đức | わかりました。<ruby>様子<rt>ようす</rt></ruby>に<ruby>変化<rt>へんか</rt></ruby>があったらすぐ<ruby>連絡<rt>れんらく</rt></ruby>します。ゴックさん、<ruby>息子<rt>むすこ</rt></ruby>さんは<ruby>来<rt>き</rt></ruby>ていますか?<br>*(Tôi hiểu. Nếu có thay đổi tôi sẽ liên lạc ngay. Chị Ngọc, con trai ông có đến không?)* |
| Ngọc | <ruby>明日<rt>あした</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby>に<ruby>来<rt>き</rt></ruby>られると<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っています。それまでの<ruby>間<rt>あいだ</rt></ruby>、<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>過<rt>す</rt></ruby>ごしていただけるよう<ruby>頼<rt>たの</rt></ruby>みます。<br>*(Đã có thông báo con trai sẽ đến sáng mai. Đến lúc đó, nhờ anh đảm bảo ông được yên tĩnh.)* |
| Đức | はい。(dừng lại) ゴックさん、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>看取<rt>みと</rt></ruby>りを<ruby>経験<rt>けいけん</rt></ruby>するの、つらいですよね。<br>*(Vâng. [dừng lại] Chị Ngọc, lần đầu trải qua tiễn biệt... nặng lòng lắm phải không?)* |
| Ngọc | (thở nhẹ) ...そうですね。でも、<ruby>木村<rt>きむら</rt></ruby>さんが<ruby>最後<rt>さいご</rt></ruby>まで<ruby>自分<rt>じぶん</rt></ruby>らしく<ruby>過<rt>す</rt></ruby>ごせるように、それがわたしたちの<ruby>仕事<rt>しごと</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>って。<br>*(... Đúng vậy. Nhưng để ông Kimura có thể sống đến cuối theo đúng cách của ông — đó là công việc của chúng mình, em nghĩ vậy.)* |
| Đức | そうですね。一緒にやりましょう。<br>*(Đúng vậy. Cùng nhau nhé.)* |

---

## Tình huống 6 — Phòng ông Kimura · sáng sớm hôm sau, con trai đến thăm

| Vai | Lời thoại |
|---|---|
| Con trai Kimura | (đến, lo lắng) <ruby>父<rt>ちち</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はいかがですか?<br>*(Tình trạng của bố tôi thế nào ạ?)* |
| Ngọc | <ruby>昨夜<rt>さくや</rt></ruby>は<ruby>穏<rt>おだ</rt></ruby>やかにお<ruby>休<rt>やす</rt></ruby>みになっていました。<ruby>今朝<rt>けさ</rt></ruby>も<ruby>眠<rt>ねむ</rt></ruby>っておられます。どうぞ、<ruby>傍<rt>そば</rt></ruby>にいてあげてください。<br>*(Tối qua ông nghỉ ngơi bình yên. Sáng nay ông cũng đang ngủ. Mời anh ở bên cạnh ông nhé.)* |
| Con trai Kimura | ありがとうございます。<ruby>父<rt>ちち</rt></ruby>はここで<ruby>幸<rt>しあわ</rt></ruby>せでしたか?<br>*(Cảm ơn. Bố tôi có hạnh phúc khi ở đây không?)* |
| Ngọc | (chân thành) はい。<ruby>木村<rt>きむら</rt></ruby>さんはいつも<ruby>笑顔<rt>えがお</rt></ruby>で、<ruby>私<rt>わたし</rt></ruby>たちスタッフにも<ruby>優<rt>やさ</rt></ruby>しくしてくださいました。ここでの<ruby>生活<rt>せいかつ</rt></ruby>を「<ruby>楽<rt>たの</rt></ruby>しい」とおっしゃっていた<ruby>日<rt>ひ</rt></ruby>もありました。<br>*(Vâng. Ông Kimura luôn tươi cười, đối xử tử tế với chúng tôi. Cũng có những ngày ông nói cuộc sống ở đây "vui lắm".)* |
| Con trai Kimura | (cúi đầu) ありがとうございます。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Cảm ơn. Tôi yên lòng rồi.)* |
| Ngọc | <ruby>何<rt>なに</rt></ruby>かご<ruby>要望<rt>ようぼう</rt></ruby>がありましたら、いつでもお<ruby>声<rt>こえ</rt></ruby>がけください。<br>*(Nếu anh có yêu cầu gì, bất cứ lúc nào cũng cứ gọi chúng tôi nhé.)* |

---

## Tình huống 7 — Văn phòng · chiều, báo cáo với 施設長 Kobayashi

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>小林<rt>こばやし</rt></ruby><ruby>施設長<rt>しせつちょう</rt></ruby>、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>看取<rt>みと</rt></ruby>り<ruby>対応<rt>たいおう</rt></ruby>について<ruby>ご報告<rt>ごほうこく</rt></ruby>します。<ruby>現在<rt>げんざい</rt></ruby>、<ruby>息子<rt>むすこ</rt></ruby>さんが<ruby>面会<rt>めんかい</rt></ruby>中で、チームで30<ruby>分<rt>ぷん</rt></ruby>おきのラウンドを<ruby>実施<rt>じっし</rt></ruby>しています。<br>*(Thưa giám đốc Kobayashi, em báo cáo về ứng phó giai đoạn tiễn biệt của ông Kimura. Hiện con trai đang thăm, nhóm đang thực hiện tuần tra mỗi 30 phút.)* |
| Kobayashi | わかりました。チームはどうですか?<ruby>感情的<rt>かんじょうてき</rt></ruby>に<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Hiểu rồi. Nhóm thế nào? Về mặt cảm xúc có ổn không?)* |
| Ngọc | みんな<ruby>動揺<rt>どうよう</rt></ruby>はしていますが、ケアを<ruby>続<rt>つづ</rt></ruby>けています。<ruby>昨日<rt>きのう</rt></ruby>、<ruby>短<rt>みじか</rt></ruby>い<ruby>声<rt>こえ</rt></ruby>かけの<ruby>時間<rt>じかん</rt></ruby>を<ruby>設<rt>もう</rt></ruby>けて、<ruby>気持<rt>きも</rt></ruby>ちを<ruby>共有<rt>きょうゆう</rt></ruby>しました。<br>*(Mọi người có xao động nhưng vẫn tiếp tục chăm sóc. Hôm qua em đã tổ chức một buổi chia sẻ ngắn để mọi người cùng bày tỏ cảm xúc.)* |
| Kobayashi | それは<ruby>良<rt>よ</rt></ruby>い<ruby>対応<rt>たいおう</rt></ruby>です。<ruby>看取<rt>みと</rt></ruby>りは<ruby>辛<rt>つら</rt></ruby>いですが、スタッフのケアも<ruby>大切<rt>たいせつ</rt></ruby>なリーダーの<ruby>仕事<rt>しごと</rt></ruby>ですよ。<br>*(Đó là ứng phó tốt. Tiễn biệt là điều khó khăn, nhưng chăm lo cho nhân viên cũng là công việc quan trọng của trưởng nhóm đó.)* |
| Ngọc | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>最期<rt>さいご</rt></ruby>が<ruby>穏<rt>おだ</rt></ruby>やかであるよう、<ruby>全力<rt>ぜんりょく</rt></ruby>を<ruby>尽<rt>つく</rt></ruby>します。<br>*(Vâng, em học được nhiều. Em sẽ dốc hết sức để những ngày cuối của ông Kimura được bình yên.)* |

---

## Tình huống 8 — Bên giường ông Kimura · buổi tối, giây phút cuối

| Vai | Lời thoại |
|---|---|
| Đức | (gọi điện thoại nội bộ) ゴックさん、<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>呼吸<rt>こきゅう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりました。<ruby>中村<rt>なかむら</rt></ruby>さんも<ruby>来<rt>き</rt></ruby>ています。<br>*(Chị Ngọc, nhịp thở của ông Kimura thay đổi rồi. Chị Nakamura cũng đang đến.)* |
| Ngọc | すぐ<ruby>行<rt>い</rt></ruby>きます。<ruby>息子<rt>むすこ</rt></ruby>さんにも<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Em đến ngay. Anh báo con trai ông nhé.)* |
| Nakamura | (bên giường, nói khẽ) <ruby>穏<rt>おだ</rt></ruby>やかです。<ruby>苦<rt>くる</rt></ruby>しんでいない。<br>*(bên giường, nói khẽ: Bình yên. Ông không đau đớn.)* |
| Con trai Kimura | (cầm tay bố) お<ruby>父<rt>とう</rt></ruby>さん…ありがとう。ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(cầm tay bố: Bố ơi... cảm ơn bố. Bố hãy nghỉ ngơi nhé.)* |
| Ngọc | (đứng cạnh, im lặng, cúi đầu nhẹ) <br>*(đứng cạnh, im lặng, cúi đầu nhẹ)* |

---

## Tình huống 9 — Phòng nhân viên · hôm sau sáng, sau 看取り

| Vai | Lời thoại |
|---|---|
| Ngọc | (họp nhóm ngắn) <ruby>木村<rt>きむら</rt></ruby>さんが<ruby>昨夜<rt>さくや</rt></ruby>、<ruby>穏<rt>おだ</rt></ruby>やかに<ruby>旅立<rt>たびだ</rt></ruby>たれました。<ruby>息子<rt>むすこ</rt></ruby>さんに<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>いながら、チーム全員でお<ruby>見送<rt>みおく</rt></ruby>りできました。<br>*(Tối qua ông Kimura đã bình yên ra đi. Cả nhóm đã tiễn ông trong khi đồng hành cùng người con trai.)* |
| An | (mắt đỏ hoe) <ruby>木村<rt>きむら</rt></ruby>さん、ありがとうございました。<br>*(Ông Kimura, cảm ơn ông.)* |
| Ngọc | みんなよくやってくれました。<ruby>木村<rt>きむら</rt></ruby>さんの<ruby>最期<rt>さいご</rt></ruby>が<ruby>穏<rt>おだ</rt></ruby>やかだったのは、みんなの<ruby>丁寧<rt>ていねい</rt></ruby>なケアのおかげです。<ruby>悲<rt>かな</rt></ruby>しい<ruby>気持<rt>きも</rt></ruby>ちを<ruby>感<rt>かん</rt></ruby>じることも、この<ruby>仕事<rt>しごと</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>一部<rt>いちぶ</rt></ruby>です。<br>*(Mọi người đã làm rất tốt. Những ngày cuối của ông Kimura bình yên là nhờ sự chăm sóc ân cần của mọi người. Cảm nhận nỗi buồn — đó cũng là một phần quan trọng của công việc này.)* |
| Đức | (gật đầu, im lặng) <br>*(gật đầu, im lặng)* |
| Hương | ゴックさん、リーダーとして、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>もしかったです。<br>*(Chị Ngọc, với tư cách trưởng nhóm, chị thật sự đáng tin cậy.)* |
| Ngọc | (lắc đầu nhẹ) みんながいたから。ありがとう。では、<ruby>今日<rt>きょう</rt></ruby>も<ruby>利用者<rt>りようしゃ</rt></ruby>さんのために<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Vì có mọi người. Cảm ơn. Vậy hôm nay cũng cùng cố gắng vì các cụ nhé.)* |

---

## Tình huống 10 — Phòng Nakamura · chiều, điền hồ sơ 看取り

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>看取<rt>みと</rt></ruby>り<ruby>記録<rt>きろく</rt></ruby>の<ruby>書き方<rt>かきかた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<ruby>初<rt>はじ</rt></ruby>めてで。<br>*(Chị Nakamura, chị có thể dạy em cách viết hồ sơ tiễn biệt không? Lần đầu tiên ạ.)* |
| Nakamura | もちろん。まず「<ruby>死亡<rt>しぼう</rt></ruby>確認<ruby>時刻<rt>じこく</rt></ruby>」と「<ruby>立会者<rt>たちあいしゃ</rt></ruby>」を<ruby>記入<rt>きにゅう</rt></ruby>します。次に「<ruby>臨終<rt>りんじゅう</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>」を<ruby>客観的<rt>きゃっかんてき</rt></ruby>に。<br>*(Dĩ nhiên. Trước tiên ghi "thời điểm xác nhận tử vong" và "người có mặt". Tiếp theo ghi "tình trạng lúc lâm chung" một cách khách quan.)* |
| Ngọc | 「<ruby>客観的<rt>きゃっかんてき</rt></ruby>に」というのは?<br>*(Ghi "khách quan" nghĩa là ạ?)* |
| Nakamura | <ruby>感情<rt>かんじょう</rt></ruby>ではなく、<ruby>呼吸<rt>こきゅう</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>、<ruby>顔色<rt>かおいろ</rt></ruby>、<ruby>表情<rt>ひょうじょう</rt></ruby>など<ruby>観察<rt>かんさつ</rt></ruby>した<ruby>事実<rt>じじつ</rt></ruby>を<ruby>書<rt>か</rt></ruby>きます。「<ruby>穏<rt>おだ</rt></ruby>やかな<ruby>表情<rt>ひょうじょう</rt></ruby>でした」など。<br>*(Không phải cảm xúc, mà viết những gì quan sát được — tình trạng hô hấp, sắc mặt, biểu cảm v.v. Ví dụ "biểu cảm bình yên" chẳng hạn.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>木村<rt>きむら</rt></ruby>さんのことを<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ ghi hồ sơ của ông Kimura cẩn thận.)* |

---

## Tình huống 11 — Phòng nghỉ · buổi tối, Sato ghé thăm Ngọc

| Vai | Lời thoại |
|---|---|
| Sato | (gõ cửa, bước vào nhẹ nhàng) グエンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>でしたね。<br>*(Ngọc, em có ổn không? Hôm nay thực sự vất vả nhỉ.)* |
| Ngọc | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ただ...リーダーになった<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>月<rt>つき</rt></ruby>で<ruby>看取<rt>みと</rt></ruby>りを<ruby>経験<rt>けいけん</rt></ruby>するとは<ruby>思<rt>おも</rt></ruby>いませんでした。<br>*(Vâng, em ổn ạ. Chỉ là... em không nghĩ ngay tháng đầu tiên làm trưởng nhóm lại trải qua tiễn biệt.)* |
| Sato | この<ruby>仕事<rt>しごと</rt></ruby>は、<ruby>命<rt>いのち</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>う<ruby>仕事<rt>しごと</rt></ruby>です。<ruby>悲<rt>かな</rt></ruby>しみも、ケアの<ruby>一部<rt>いちぶ</rt></ruby>です。グエンさんは今日、リーダーとして<ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>全部<rt>ぜんぶ</rt></ruby>やり<ruby>遂<rt>と</rt></ruby>げました。<br>*(Công việc này là công việc đồng hành cùng sinh mệnh. Nỗi buồn cũng là một phần của chăm sóc. Hôm nay em đã hoàn thành tất cả những điều quan trọng với tư cách trưởng nhóm.)* |
| Ngọc | (gật đầu, thở nhẹ) ありがとうございます。<ruby>木村<rt>きむら</rt></ruby>さんのおかげで、また<ruby>一つ<rt>ひとつ</rt></ruby><ruby>成長<rt>せいちょう</rt></ruby>できた<ruby>気<rt>き</rt></ruby>がします。<br>*(Cảm ơn chị. Nhờ ông Kimura, em cảm thấy mình đã trưởng thành thêm một bước.)* |

---

## Tình huống 12 — Gọi điện · tối muộn, nói chuyện với mẹ ở Cần Thơ

> Scene tiếng Việt — tiết chế, ấm áp.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, hôm nay ông Kimura mất rồi. Con ổn nhưng... nặng lắm mẹ. |
| Mẹ | (tiếng Việt) Con ơi. Ông ấy có bình yên không? |
| Ngọc | (tiếng Việt) Bình yên mẹ. Con trai ông ấy ở bên. Cả nhóm con ở bên. Con chỉ đứng yên cầm tay ông ấy thôi mà không biết nói gì. |
| Mẹ | (tiếng Việt) Đứng yên như vậy là đủ rồi con. Mẹ tự hào về con. |
| Ngọc | (tiếng Việt) Mẹ... con bây giờ là trưởng nhóm rồi. Con chính thức từ tháng này. Mà con vẫn hay sợ. |
| Mẹ | (tiếng Việt) Ai không sợ lần đầu. Con làm được, mẹ thấy rõ. Ngủ ngon nghen. |

---

## Đọng lại chương 10

Chương nặng về cảm xúc, viết tiết chế. Ngọc học bài học lớn nhất của người lãnh đạo: **チームを動かす** không phải lúc nào cũng là ra lệnh — đôi khi là **đứng yên bên cạnh**, là tạo không gian để nhân viên chia sẻ cảm xúc, là **スタッフのケア**. 看取り dạy rằng phẩm giá (尊厳) của người ra đi được bảo vệ bằng sự chăm sóc ân cần đến phút cuối — không phải bằng lời.

> Từ vựng & mẫu câu chương này: 就任・辞令・看取り・穏やかに旅立つ・呼吸の変化・臨終の様子・立会者・客観的に記録する・スタッフのケア・命に寄り添う・悲しみもケアの一部・チームで看取る', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000011, 800000030, NULL, 'markdown_book', 'T11. Đánh giá cuối năm (年末評価)', '# Sách điều dưỡng viên quốc gia · T11. Đánh giá cuối năm (年末評価)

> **Mục tiêu nhân vật:** Ngọc nhận đánh giá cuối năm từ 施設長 Kobayashi và 介護主任 Sato — được ghi nhận chính thức; lần đầu nói thật về định hướng lâu dài: hướng tới 永住権 và gắn bó với Nhật Bản.

---

## Bối cảnh

Tháng 2. Cuối năm tài chính (年度末が近い). ひだまり苑 tiến hành 人事評価 cho tất cả nhân viên. Ngọc — tháng đầu tiên với tư cách ユニットリーダー chính thức — ngồi đối diện 施設長 Kobayashi và 介護主任 Sato trong buổi đánh giá chính thức. Đây cũng là lần đầu Ngọc bày tỏ định hướng cá nhân dài hạn với cấp trên: muốn gắn bó lâu dài với Nhật Bản và hướng tới 永住権.

---

## Tình huống 1 — Văn phòng · 9:00, chuẩn bị trước buổi 人事評価

| Vai | Lời thoại |
|---|---|
| Hương | ゴックさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>人事評価<rt>じんじひょうか</rt></ruby>ですよね。<ruby>緊張<rt>きんちょう</rt></ruby>してますか?<br>*(Chị Ngọc, hôm nay là buổi đánh giá nhân sự nhỉ. Chị có hồi hộp không?)* |
| Ngọc | ちょっとね。でも、この<ruby>一年<rt>いちねん</rt></ruby>でやってきたことをちゃんと<ruby>話<rt>はな</rt></ruby>せるように<ruby>準備<rt>じゅんび</rt></ruby>してきました。<ruby>成果<rt>せいか</rt></ruby>と<ruby>課題<rt>かだい</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>ね。<br>*(Hơi hơi. Nhưng mình đã chuẩn bị để có thể kể đúng những gì đã làm trong năm này. Cả thành quả lẫn vấn đề còn tồn đọng.)* |
| Hương | <ruby>評価<rt>ひょうか</rt></ruby>シートは<ruby>書<rt>か</rt></ruby>きましたか?<br>*(Chị đã điền phiếu đánh giá chưa?)* |
| Ngọc | はい。カンファレンス<ruby>進行<rt>しんこう</rt></ruby>、<ruby>認知症<rt>にんちしょう</rt></ruby>ケア<ruby>計画<rt>けいかく</rt></ruby>の<ruby>改善<rt>かいぜん</rt></ruby>、<ruby>看取<rt>みと</rt></ruby>り<ruby>対応<rt>たいおう</rt></ruby>、シフト<ruby>管理<rt>かんり</rt></ruby>...いろいろありました。<ruby>自己評価<rt>じこひょうか</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいけど。<br>*(Rồi. Điều hành họp, cải thiện kế hoạch chăm sóc sa sút trí tuệ, ứng phó tiễn biệt, quản lý lịch ca... nhiều thứ lắm. Tự đánh giá bản thân khó nhỉ.)* |
| Hương | ゴックさんなら、いい<ruby>評価<rt>ひょうか</rt></ruby>がもらえると<ruby>思<rt>おも</rt></ruby>いますよ。<br>*(Em nghĩ chị Ngọc sẽ được đánh giá tốt đấy.)* |
| Ngọc | ありがとう。でも、<ruby>評価<rt>ひょうか</rt></ruby>より、これからのことをどう<ruby>話<rt>はな</rt></ruby>そうか、そっちが<ruby>気<rt>き</rt></ruby>になって。<br>*(Cảm ơn. Nhưng mình lo về chuyện sau này hơn — không biết nói thế nào với cấp trên về kế hoạch tương lai.)* |

---

## Tình huống 2 — Phòng 施設長 · 10:00, bắt đầu buổi 人事評価

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。では、<ruby>今年度<rt>こんねんど</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りから<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>自己評価<rt>じこひょうか</rt></ruby>のシートを<ruby>見<rt>み</rt></ruby>ながら。<br>*(Em Nguyễn, vất vả rồi. Vậy chúng ta bắt đầu từ việc nhìn lại năm nay nhé. Vừa xem phiếu tự đánh giá.)* |
| Ngọc | はい。<ruby>今年度<rt>こんねんど</rt></ruby>はリーダー<ruby>候補<rt>こうほ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>なユニットリーダーへの<ruby>移行期<rt>いこうき</rt></ruby>でした。カンファレンスの<ruby>進行<rt>しんこう</rt></ruby>や<ruby>個別<rt>こべつ</rt></ruby>ケア<ruby>計画<rt>けいかく</rt></ruby>の<ruby>立案<rt>りつあん</rt></ruby>を<ruby>初<rt>はじ</rt></ruby>めて<ruby>担当<rt>たんとう</rt></ruby>しました。<br>*(Vâng. Năm nay là giai đoạn chuyển tiếp từ ứng viên trưởng nhóm sang trưởng nhóm chính thức. Em lần đầu phụ trách điều hành họp và lập kế hoạch chăm sóc cá nhân.)* |
| Sato | <ruby>成果<rt>せいか</rt></ruby>として<ruby>特<rt>とく</rt></ruby>に<ruby>印象<rt>いんしょう</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>っていることは?<br>*(Điều gì đặc biệt đọng lại như là thành quả?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんの<ruby>認知症<rt>にんちしょう</rt></ruby>ケアです。<ruby>生活歴<rt>せいかつれき</rt></ruby>をもとに<ruby>園芸療法<rt>えんげいりょうほう</rt></ruby>を<ruby>導入<rt>どうにゅう</rt></ruby>したことで、<ruby>夜間<rt>やかん</rt></ruby>の<ruby>離床<rt>りしょう</rt></ruby>が<ruby>週<rt>しゅう</rt></ruby>4<ruby>回<rt>かい</rt></ruby>から2<ruby>回<rt>かい</rt></ruby>に<ruby>改善<rt>かいぜん</rt></ruby>されました。チームの<ruby>協力<rt>きょうりょく</rt></ruby>があってこそですが。<br>*(Đó là chăm sóc sa sút trí tuệ của ông Tanaka. Bằng cách đưa liệu pháp làm vườn dựa trên lịch sử cuộc sống của ông, số lần rời giường ban đêm đã cải thiện từ 4 xuống 2 lần/tuần. Là nhờ sự hợp tác của cả nhóm.)* |
| Kobayashi | データで<ruby>示<rt>しめ</rt></ruby>せたのはいいですね。<ruby>課題<rt>かだい</rt></ruby>は?<br>*(Có thể dùng số liệu để minh chứng — tốt đấy. Còn vấn đề tồn đọng?)* |
| Ngọc | <ruby>議事録<rt>ぎじろく</rt></ruby>などの<ruby>文書作成<rt>ぶんしょさくせい</rt></ruby>に<ruby>時間<rt>じかん</rt></ruby>がかかることです。<ruby>専門用語<rt>せんもんようご</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>勉強<rt>べんきょう</rt></ruby>していきます。<br>*(Việc soạn văn bản như biên bản họp mất nhiều thời gian. Em sẽ tiếp tục học kanji thuật ngữ chuyên môn.)* |

---

## Tình huống 3 — Phòng 施設長 · 10:20, nhận đánh giá từ cấp trên

| Vai | Lời thoại |
|---|---|
| Kobayashi | (mở phiếu đánh giá) グエンさんの<ruby>評価<rt>ひょうか</rt></ruby>ですが、<ruby>介護力<rt>かいごりょく</rt></ruby>、<ruby>判断力<rt>はんだんりょく</rt></ruby>、チームマネジメント、すべて「<ruby>期待<rt>きたい</rt></ruby>を<ruby>上回<rt>うわまわ</rt></ruby>る」の<ruby>評価<rt>ひょうか</rt></ruby>です。<br>*(Xem phiếu đánh giá: Về đánh giá của em Nguyễn, năng lực điều dưỡng, năng lực phán đoán, quản lý nhóm — tất cả đều đạt mức "vượt kỳ vọng".)* |
| Ngọc | (ngạc nhiên, cúi đầu) ありがとうございます。そんなに<ruby>高<rt>こう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>をいただけるとは…。<br>*(Ngạc nhiên, cúi đầu: Cảm ơn rất nhiều. Em không ngờ được đánh giá cao như vậy...)* |
| Sato | グエンさんは<ruby>自分<rt>じぶん</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みと<ruby>弱<rt>よわ</rt></ruby>みを<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>把握<rt>はあく</rt></ruby>して、チームのために<ruby>動<rt>うご</rt></ruby>ける<ruby>人<rt>ひと</rt></ruby>ですよ。<ruby>看取<rt>みと</rt></ruby>りのときのリーダーシップは、ベテランでも<ruby>難<rt>むずか</rt></ruby>しいことができていました。<br>*(Em Nguyễn là người nắm rõ điểm mạnh và điểm yếu của bản thân một cách thành thật, và có thể hành động vì nhóm. Khả năng lãnh đạo trong giai đoạn tiễn biệt — đó là điều ngay cả người có kinh nghiệm cũng khó làm được mà em đã làm được.)* |
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>山本<rt>やまもと</rt></ruby>さん、チームのみなさんに<ruby>支<rt>ささ</rt></ruby>えていただいたからできたことです。<ruby>一人<rt>ひとり</rt></ruby>では<ruby>絶対<rt>ぜったい</rt></ruby>できませんでした。<br>*(Đó là vì được chị Sato, chị Yamamoto, và mọi người trong nhóm hỗ trợ. Một mình em tuyệt đối không làm được.)* |
| Kobayashi | その<ruby>謙虚<rt>けんきょ</rt></ruby>さも<ruby>大切<rt>たいせつ</rt></ruby>ですよ。<ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>期待<rt>きたい</rt></ruby>しています。<br>*(Sự khiêm tốn đó cũng quan trọng đấy. Năm tài chính tới cũng kỳ vọng ở em.)* |

---

## Tình huống 4 — Phòng 施設長 · 10:35, Ngọc mạnh dạn nói về kế hoạch gia đình

| Vai | Lời thoại |
|---|---|
| Kobayashi | 何か<ruby>来年度<rt>らいねんど</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて<ruby>目標<rt>もくひょう</rt></ruby>や<ruby>希望<rt>きぼう</rt></ruby>はありますか?<br>*(Có mục tiêu hay nguyện vọng gì hướng tới năm tài chính tới không?)* |
| Ngọc | (hít thở nhẹ) はい。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>として、<ruby>教育担当<rt>きょういくたんとう</rt></ruby>にも<ruby>携<rt>たずさ</rt></ruby>わりたいと<ruby>思<rt>おも</rt></ruby>っています。また…<ruby>個人的<rt>こじんてき</rt></ruby>なことも<ruby>話<rt>はな</rt></ruby>してもよろしいでしょうか?<br>*(hít thở nhẹ: Vâng. Về mục tiêu công việc, em muốn tham gia cả vào phụ trách đào tạo. Ngoài ra... em có thể nói về chuyện cá nhân được không ạ?)* |
| Kobayashi | もちろんです。どうぞ。<br>*(Dĩ nhiên. Cứ nói đi.)* |
| Ngọc | <ruby>家族<rt>かぞく</rt></ruby>はベトナムにいます。<ruby>今<rt>いま</rt></ruby>は<ruby>遠距離<rt>えんきょり</rt></ruby>ですが、<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>「<ruby>介護<rt>かいご</rt></ruby>」で<ruby>長期的<rt>ちょうきてき</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>に<ruby>定住<rt>ていじゅう</rt></ruby>したいと<ruby>思<rt>おも</rt></ruby>っています。<ruby>来年度<rt>らいねんど</rt></ruby>は<ruby>永住権<rt>えいじゅうけん</rt></ruby>に<ruby>向<rt>む</rt></ruby>けた<ruby>準備<rt>じゅんび</rt></ruby>も<ruby>始<rt>はじ</rt></ruby>めたいです。<br>*(Gia đình em ở Việt Nam. Hiện đang ở xa nhau, nhưng với tư cách lưu trú "介護" em muốn định cư lâu dài tại Nhật. Năm tài chính tới em cũng muốn bắt đầu chuẩn bị hướng tới 永住権.)* |
| Sato | (gật đầu) <ruby>日本<rt>にほん</rt></ruby>に<ruby>長期定着<rt>ちょうきていちゃく</rt></ruby>したい、それは<ruby>大切<rt>たいせつ</rt></ruby>なことですね。<ruby>仕事<rt>しごと</rt></ruby>との<ruby>両立<rt>りょうりつ</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>になりますが…。<br>*(gật đầu: Muốn gắn bó lâu dài với Nhật Bản — đó là điều quan trọng nhỉ. Cân bằng với công việc sẽ vất vả hơn, nhưng...)* |
| Kobayashi | グエンさんの<ruby>生活<rt>せいかつ</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>することは、<ruby>長期的<rt>ちょうきてき</rt></ruby>に<ruby>施設<rt>しせつ</rt></ruby>にとっても<ruby>良<rt>よ</rt></ruby>いことです。<ruby>相談<rt>そうだん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なことがあれば、<ruby>人事<rt>じんじ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Cuộc sống của em ổn định về lâu dài cũng tốt cho cơ sở. Nếu có gì cần trao đổi, hãy liên hệ với phòng nhân sự nhé.)* |
| Ngọc | ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>なことを<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>話<rt>はな</rt></ruby>せて、よかったです。<br>*(Cảm ơn rất nhiều. Em mừng vì đã có thể nói thật những điều quan trọng.)* |

---

## Tình huống 5 — Căng-tin · 12:00, ăn trưa với An và Hương

| Vai | Lời thoại |
|---|---|
| An | どうでしたか?<ruby>評価<rt>ひょうか</rt></ruby>。<br>*(Thế nào? Đánh giá.)* |
| Ngọc | 「<ruby>期待<rt>きたい</rt></ruby>を<ruby>上回<rt>うわまわ</rt></ruby>る」って<ruby>言<rt>い</rt></ruby>ってもらいました。<br>*(Được nói là "vượt kỳ vọng".)* |
| Hương | わあ、すごい!<ruby>本当<rt>ほんとう</rt></ruby>によかった!<br>*(Ồ, tuyệt vời! Thật sự mừng quá!)* |
| An | ゴックさんが<ruby>頑張<rt>がんば</rt></ruby>ってきたんだから、<ruby>当然<rt>とうぜん</rt></ruby>ですよ。<ruby>私<rt>わたし</rt></ruby>たちも<ruby>誇<rt>ほこ</rt></ruby>らしいです。<br>*(Chị Ngọc đã cố gắng như vậy mà, đương nhiên rồi. Chúng em cũng tự hào đó.)* |
| Ngọc | ありがとう。それより、<ruby>長期定着<rt>ちょうきていちゃく</rt></ruby>と<ruby>永住権<rt>えいじゅうけん</rt></ruby>のことも<ruby>話<rt>はな</rt></ruby>してきました。<ruby>施設長<rt>しせつちょう</rt></ruby>が<ruby>応援<rt>おうえん</rt></ruby>してくれるって。<br>*(Cảm ơn. Hơn vậy, mình cũng đã nói chuyện về định hướng gắn bó lâu dài và 永住権. Giám đốc bảo sẽ ủng hộ đó.)* |
| Hương | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか!<ruby>永住権<rt>えいじゅうけん</rt></ruby>まで<ruby>考<rt>かんが</rt></ruby>えてるんですね!<br>*(Thật ạ! Chị đang nghĩ tới cả 永住権 rồi!)* |
| Ngọc | まだ<ruby>先<rt>さき</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>ですけどね。でも、<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>もうと<ruby>思<rt>おも</rt></ruby>って。<br>*(Còn là chuyện về sau mà. Nhưng mình nghĩ sẽ tiến từng bước một.)* |

---

## Tình huống 6 — Phòng Yamamoto · 14:00, chia sẻ với mentor cũ

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby>のこと、ご<ruby>報告<rt>ほうこく</rt></ruby>したくて。<br>*(Chị Yamamoto, em muốn báo cáo về buổi đánh giá hôm nay.)* |
| Yamamoto | どうでしたか?<br>*(Thế nào?)* |
| Ngọc | <ruby>高<rt>こう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>をいただきました。でも、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>山本<rt>やまもと</rt></ruby>さんが<ruby>最初<rt>さいしょ</rt></ruby>から<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>指導<rt>しどう</rt></ruby>してくれたから<ruby>今<rt>いま</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>があると<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em được đánh giá cao. Nhưng nói thật, em nghĩ em như bây giờ là nhờ chị đã chỉ bảo tận tình từ đầu.)* |
| Yamamoto | (cười nhẹ) グエンさん自身が<ruby>努力<rt>どりょく</rt></ruby>したんですよ。<ruby>私<rt>わたし</rt></ruby>はちょっと<ruby>背中<rt>せなか</rt></ruby>を<ruby>押<rt>お</rt></ruby>しただけ。<br>*(cười nhẹ: Em Nguyễn tự mình đã cố gắng đấy. Tôi chỉ đẩy lưng một chút thôi.)* |
| Ngọc | でも、その<ruby>一押<rt>ひとおし</rt></ruby>がどれほど<ruby>大切<rt>たいせつ</rt></ruby>だったか...。<ruby>山本<rt>やまもと</rt></ruby>さんみたいなリーダーになりたいと、ずっと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Nhưng sự đẩy lưng đó quan trọng thế nào... Em đã luôn muốn trở thành người lãnh đạo như chị Yamamoto.)* |
| Yamamoto | もうなっていますよ。グエンさん<ruby>自身<rt>じしん</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>で。それが<ruby>一番<rt>いちばん</rt></ruby>いい。<br>*(Em đã là rồi. Theo cách của em Nguyễn. Đó là điều tốt nhất.)* |

---

## Tình huống 7 — Hành lang · 15:30, gặp ông Tanaka sau buổi 園芸療法

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | (tay đang cầm chậu cây nhỏ) グエン、<ruby>見<rt>み</rt></ruby>てください。<ruby>芽<rt>め</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきましたよ。<br>*(Nguyễn, xem này. Mầm mọc ra rồi đây.)* |
| Ngọc | わあ、<ruby>本当<rt>ほんとう</rt></ruby>だ!<ruby>田中<rt>たなか</rt></ruby>さんが<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てたからですよ。<br>*(Ồ, đúng rồi! Vì ông Tanaka chăm sóc tận tình mà.)* |
| Ông Tanaka | (gật đầu hài lòng) <ruby>春<rt>はる</rt></ruby>になったら、もっと<ruby>花<rt>はな</rt></ruby>が<ruby>咲<rt>さ</rt></ruby>くな。<br>*(gật đầu hài lòng: Đến mùa xuân thêm nhiều hoa sẽ nở nhỉ.)* |
| Ngọc | そうですね。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>昼<rt>ひる</rt></ruby>ごはん、<ruby>食欲<rt>しょくよく</rt></ruby>はどうでしたか?<br>*(Vậy nhỉ. Ông Tanaka, bữa trưa hôm nay ông ăn có ngon không ạ?)* |
| Ông Tanaka | まあまあだな。でも、<ruby>外<rt>そと</rt></ruby>の<ruby>空気<rt>くうき</rt></ruby>を<ruby>吸<rt>す</rt></ruby>うとお<ruby>腹<rt>なか</rt></ruby>が<ruby>減<rt>へ</rt></ruby>るな。<br>*(Cũng tạm. Nhưng hít không khí ngoài trời thì lại đói bụng nhỉ.)* |
| Ngọc | それはいいことですよ。<ruby>夜<rt>よる</rt></ruby>もよく<ruby>眠<rt>ねむ</rt></ruby>れていますか?<br>*(Đó là điều tốt đấy. Buổi tối ông có ngủ ngon không ạ?)* |
| Ông Tanaka | ああ、<ruby>最近<rt>さいきん</rt></ruby>はよく<ruby>眠<rt>ねむ</rt></ruby>れるよ。<br>*(Ừ, dạo này ngủ ngon đấy.)* |
| Ngọc | よかった。<ruby>春<rt>はる</rt></ruby>まで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てましょうね。<br>*(Mừng quá. Chúng ta cùng chăm đến mùa xuân nhé.)* |

---

## Tình huống 8 — Phòng nhân viên · 16:00, trao đổi với Đức về tương lai

| Vai | Lời thoại |
|---|---|
| Đức | ゴックさん、<ruby>評価<rt>ひょうか</rt></ruby>よかったんですよね。<ruby>おめでとう<rt>おめでとう</rt></ruby>ございます。<br>*(Chị Ngọc, đánh giá tốt nhỉ. Chúc mừng chị.)* |
| Ngọc | ありがとう。ドゥックさんは<ruby>評価<rt>ひょうか</rt></ruby>どうでしたか?<br>*(Cảm ơn. Anh Đức thì sao?)* |
| Đức | ぼくは「<ruby>期待<rt>きたい</rt></ruby><ruby>通<rt>どお</rt></ruby>り」でした。もっと<ruby>勉強<rt>べんきょう</rt></ruby>しないとな。ゴックさんみたいにリーダーを<ruby>目指<rt>めざ</rt></ruby>そうとは<ruby>思<rt>おも</rt></ruby>っていますよ。<br>*(Tôi là "đúng như kỳ vọng". Phải học nhiều hơn nữa. Tôi cũng đang nghĩ đến hướng tới trưởng nhóm như chị Ngọc đó.)* |
| Ngọc | いいですよ。ドゥックさんは<ruby>実務<rt>じつむ</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>だし、<ruby>利用者<rt>りようしゃ</rt></ruby>さんから<ruby>信頼<rt>しんらい</rt></ruby>されていますよ。あとは<ruby>文書<rt>ぶんしょ</rt></ruby>や<ruby>報告<rt>ほうこく</rt></ruby>の<ruby>面<rt>めん</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>くしていけば。<br>*(Tốt đấy. Anh Đức thực hành ân cần, được các cụ tin tưởng mà. Phần còn lại là tăng cường mảng văn bản và báo cáo thôi.)* |
| Đức | ゴックさんが<ruby>教<rt>おし</rt></ruby>えてくれますか?<br>*(Chị Ngọc sẽ dạy tôi chứ?)* |
| Ngọc | もちろん。チームで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>しましょう。<br>*(Dĩ nhiên. Cùng nhau trưởng thành trong nhóm nhé.)* |

---

## Tình huống 9 — Văn phòng · 17:30, Ngọc tra cứu thông tin về 永住権

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, nhìn vào máy tính) 「<ruby>永住権<rt>えいじゅうけん</rt></ruby>」...「<ruby>在留期間<rt>ざいりゅうきかん</rt></ruby>10<ruby>年以上<rt>ねんいじょう</rt></ruby>」...まだ<ruby>先<rt>さき</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>だけど、<ruby>方向<rt>ほうこう</rt></ruby>は<ruby>決<rt>き</rt></ruby>まった。<br>*(một mình, nhìn vào máy tính: "Vĩnh trú"... "Cư trú 10 năm trở lên"... Còn lâu mới đến, nhưng hướng đi đã rõ rồi.)* |
| Ngọc | (tự nhủ) まず<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>ける。<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>むしかない。<br>*(tự nhủ: Trước mắt cứ tiếp tục công việc hiện tại. Chỉ có thể tiến từng bước thôi.)* |

---

## Tình huống 10 — Phòng nhân sự · hôm sau, hỏi về điều kiện gắn bó lâu dài

| Vai | Lời thoại |
|---|---|
| Nhân viên nhân sự | グエンさん、<ruby>永住権<rt>えいじゅうけん</rt></ruby>については<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせる<ruby>必要<rt>ひつよう</rt></ruby>がありますね。<ruby>在職証明書<rt>ざいしょくしょうめいしょ</rt></ruby>と<ruby>課税証明書<rt>かぜいしょうめいしょ</rt></ruby>は<ruby>準備<rt>じゅんび</rt></ruby>しておくといいです。<br>*(Em Nguyễn, về 永住権 thì cần hỏi trực tiếp cục quản lý xuất nhập cảnh. Giấy chứng nhận đang đi làm và giấy chứng nhận nộp thuế nên chuẩn bị sẵn.)* |
| Ngọc | <ruby>課税証明書<rt>かぜいしょうめいしょ</rt></ruby>はどこで<ruby>取<rt>と</rt></ruby>れますか?<br>*(Giấy chứng nhận nộp thuế lấy ở đâu ạ?)* |
| Nhân viên nhân sự | <ruby>市役所<rt>しやくしょ</rt></ruby>で<ruby>取<rt>と</rt></ruby>れます。あと、<ruby>継続的<rt>けいぞくてき</rt></ruby>な<ruby>収入<rt>しゅうにゅう</rt></ruby>があることも<ruby>重要<rt>じゅうよう</rt></ruby>です。<br>*(Lấy ở trụ sở thành phố. Ngoài ra, có thu nhập ổn định liên tục cũng là điều quan trọng.)* |
| Ngọc | ユニットリーダーになったので、<ruby>収入<rt>しゅうにゅう</rt></ruby>は<ruby>以前<rt>いぜん</rt></ruby>より<ruby>増<rt>ふ</rt></ruby>えました。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em đã trở thành trưởng nhóm nên thu nhập tăng hơn trước. Em nghĩ sẽ ổn.)* |
| Nhân viên nhân sự | <ruby>長期定着<rt>ちょうきていちゃく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えているなら、<ruby>早<rt>はや</rt></ruby>めに<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>するといいですよ。<ruby>書類<rt>しょるい</rt></ruby>のチェックリストもお<ruby>渡<rt>わた</rt></ruby>ししますね。<br>*(Nếu đang nghĩ đến gắn bó lâu dài, nên hỏi trước cục quản lý xuất nhập cảnh sớm. Để tôi phát danh sách hồ sơ cần thiết cho nhé.)* |
| Ngọc | ありがとうございます。<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>みます。<br>*(Cảm ơn ạ. Em sẽ tiến từng bước.)* |

---

## Tình huống 11 — Hành lang cuối giờ · 17:50, Sato dừng lại nói chuyện

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>長期定着<rt>ちょうきていちゃく</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>、<ruby>始<rt>はじ</rt></ruby>めましたか?<br>*(Em Nguyễn, bắt đầu kế hoạch gắn bó lâu dài rồi chứ?)* |
| Ngọc | はい。<ruby>少<rt>すこ</rt></ruby>しずつです。<ruby>調<rt>しら</rt></ruby>べることが<ruby>多<rt>おお</rt></ruby>いですね。<br>*(Vâng. Từng chút một. Có nhiều thứ cần tìm hiểu nhỉ.)* |
| Sato | <ruby>焦<rt>あせ</rt></ruby>らなくていいですよ。グエンさんが<ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>安心<rt>あんしん</rt></ruby>して<ruby>働<rt>はたら</rt></ruby>けるように<ruby>環境<rt>かんきょう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えることが、<ruby>施設<rt>しせつ</rt></ruby>にとっても<ruby>大切<rt>たいせつ</rt></ruby>なことです。<br>*(Không cần vội vàng. Việc tạo môi trường để em có thể làm việc yên tâm trong năm tài chính tới cũng là điều quan trọng với cơ sở.)* |
| Ngọc | (cảm động) <ruby>佐藤<rt>さとう</rt></ruby>さん、ありがとうございます。<ruby>日本<rt>にほん</rt></ruby>で<ruby>長く<rt>ながく</rt></ruby><ruby>働<rt>はたら</rt></ruby>いて、<ruby>根<rt>ね</rt></ruby>を<ruby>張<rt>は</rt></ruby>ることをずっと<ruby>夢<rt>ゆめ</rt></ruby>に<ruby>思<rt>おも</rt></ruby>っていました。<br>*(cảm động: Cảm ơn chị Sato. Em đã luôn mơ được làm việc lâu dài ở Nhật, bén rễ ở đây.)* |
| Sato | きっと<ruby>実現<rt>じつげん</rt></ruby>できますよ。グエンさんなら。<br>*(Chắc chắn sẽ thành hiện thực. Em Nguyễn mà.)* |

---

## Tình huống 12 — Gọi điện thoại · tối, nói chuyện với mẹ ở Cần Thơ

> Scene tiếng Việt — ấm áp, xúc cảm nhẹ.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, hôm nay con được đánh giá tốt. Và con đã nói thẳng với giám đốc về dự định ở lại Nhật lâu dài, hướng tới vĩnh trú. |
| Mẹ | (tiếng Việt) Thật không? Họ nói sao? |
| Ngọc | (tiếng Việt) Họ ủng hộ. Phòng nhân sự còn cho con thông tin để tìm hiểu thêm nữa. Con đang bắt đầu được rồi mẹ ơi. |
| Mẹ | (tiếng Việt, giọng xúc động nhẹ) Con ơi... mẹ mừng cho con lắm. Con đã cố gắng nhiều quá. |
| Ngọc | (tiếng Việt) Con cũng muốn mẹ biết là con ổn, con đang đi đúng đường. Mẹ và em ở nhà có khỏe không? |
| Mẹ | (tiếng Việt) Khỏe con ơi. Em đang làm thêm buổi tối. Mẹ tự hào con lắm. |
| Ngọc | (tiếng Việt, cười nhỏ) Cảm ơn mẹ. Mẹ giữ sức khỏe nhé. Con nhớ mẹ. |

---

## Đọng lại chương 11

Chương đánh dấu bước ngoặt lớn: Ngọc được ghi nhận chính thức bằng **数値** (số liệu thực tế) và **チームマネジメント**; đồng thời lần đầu **nói thật** với cấp trên về định hướng lâu dài — hướng tới **永住権** và gắn bó với Nhật Bản — và được ủng hộ. Bài học: **正直に話す** với cấp trên về cuộc sống cá nhân không phải điểm yếu — mà là nền tảng để **長期定着** (gắn bó lâu dài), điều mà chính cơ sở cũng trân trọng.

> Từ vựng & mẫu câu chương này: 人事評価・自己評価・期待を上回る・振り返り・成果と課題・個人的なことを話す・永住権・在職証明書・課税証明書・入管・長期定着・一歩ずつ進む', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (803000012, 800000030, NULL, 'markdown_book', 'T12. Trở thành người phụ trách đào tạo (教育担当へ)', '# Sách điều dưỡng viên quốc gia · T12. Trở thành người phụ trách đào tạo (教育担当へ)

> **Mục tiêu nhân vật:** Ngọc được giao thêm vai 教育担当 cho khoá TTS Việt mới sắp tới — khép lại hành trình sách 30 và mở ra sách 31. Ngọc nhìn lại 2 năm kể từ ngày sang Nhật, đứng ở vị trí người dẫn đường cho thế hệ tiếp theo.

---

## Bối cảnh

Tháng 3. ひだまり苑 chuẩn bị tiếp nhận khoá thực tập sinh kỹ năng mới từ Việt Nam — dự kiến đến tháng 4. 施設長 Kobayashi và 介護主任 Sato quyết định giao thêm vai trò 教育担当 (phụ trách đào tạo) cho Ngọc, song song với nhiệm vụ ユニットリーダー. Ngọc nhận nhiệm vụ này — không phải không run rẩy — nhưng hiểu đây là con đường tiếp theo.

---

## Tình huống 1 — Phòng 施設長 · 9:00, được thông báo giao thêm vai 教育担当

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>来月<rt>らいげつ</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>が3<ruby>名<rt>めい</rt></ruby>、ベトナムから<ruby>来<rt>く</rt></ruby>ることになりました。<br>*(Em Nguyễn, tháng tới tháng 4, sẽ có 3 thực tập sinh kỹ năng mới từ Việt Nam đến.)* |
| Ngọc | はい、<ruby>聞<rt>き</rt></ruby>いていました。<br>*(Vâng, em có nghe.)* |
| Kobayashi | グエンさんに、<ruby>教育担当<rt>きょういくたんとう</rt></ruby>として<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れの<ruby>中心<rt>ちゅうしん</rt></ruby>を<ruby>担<rt>にな</rt></ruby>ってほしいのです。ユニットリーダーと<ruby>兼務<rt>けんむ</rt></ruby>になりますが。<br>*(Tôi muốn nhờ em đảm nhận vai trung tâm tiếp nhận với tư cách phụ trách đào tạo. Sẽ là kiêm nhiệm với trưởng nhóm nhé.)* |
| Ngọc | (dừng lại một nhịp) <ruby>教育担当<rt>きょういくたんとう</rt></ruby>...ですか。わたしが<ruby>担当<rt>たんとう</rt></ruby>してよいのでしょうか。まだ<ruby>自分<rt>じぶん</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>の<ruby>途中<rt>とちゅう</rt></ruby>で。<br>*(dừng lại một nhịp: Phụ trách đào tạo... ạ. Em có đảm nhận được không nhỉ. Em vẫn còn đang học hỏi mà.)* |
| Sato | だからこそ、グエンさんがいいんです。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>苦労<rt>くろう</rt></ruby>したことを<ruby>一番<rt>いちばん</rt></ruby>よく<ruby>知<rt>し</rt></ruby>っている。<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちに<ruby>寄<rt>よ</rt></ruby>り<ruby>添<rt>そ</rt></ruby>えるのは、グエンさんです。<br>*(Chính vì vậy, em Nguyễn mới phù hợp. Em biết rõ nhất những khó khăn ban đầu của bản thân. Người có thể đồng hành với tâm tư của các thực tập sinh mới — đó là em.)* |
| Ngọc | (gật đầu chậm) ...はい。<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(gật đầu chậm: ... Vâng. Em sẽ cố gắng hết sức.)* |

---

## Tình huống 2 — Phòng họp · 10:30, bàn kế hoạch tiếp nhận với Yamamoto và Sato

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れ<ruby>準備<rt>じゅんび</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>はどのくらいのレベルですか?<br>*(Vậy để em xác nhận về việc chuẩn bị tiếp nhận. Các thực tập sinh mới ở trình độ nào ạ?)* |
| Yamamoto | 3<ruby>名<rt>めい</rt></ruby>とも<ruby>日本語<rt>にほんご</rt></ruby>N4<ruby>程度<rt>ていど</rt></ruby>です。<ruby>介護<rt>かいご</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby>は<ruby>日本<rt>にほん</rt></ruby>で<ruby>初<rt>はじ</rt></ruby>めてですね。<br>*(Cả 3 người đều khoảng trình độ N4 tiếng Nhật. Thực hành điều dưỡng đây là lần đầu tiên ở Nhật.)* |
| Ngọc | わかりました。<ruby>最初<rt>さいしょ</rt></ruby>の1<ruby>週間<rt>しゅうかん</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>の<ruby>紹介<rt>しょうかい</rt></ruby>と<ruby>基本<rt>きほん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。わたしが<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えた<ruby>言葉<rt>ことば</rt></ruby>をリスト<ruby>化<rt>か</rt></ruby>しておきます。<br>*(Hiểu rồi. Tuần đầu tiên em sẽ bắt đầu từ giới thiệu cơ sở và ôn lại thuật ngữ cơ bản. Em sẽ lập danh sách những từ em học đầu tiên.)* |
| Sato | <ruby>声<rt>こえ</rt></ruby>かけの<ruby>仕方<rt>しかた</rt></ruby>、<ruby>移乗<rt>いじょう</rt></ruby>、<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>…<ruby>基本<rt>きほん</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>をしっかり<ruby>身<rt>み</rt></ruby>につけてもらうことが<ruby>最優先<rt>さいゆうせん</rt></ruby>です。<br>*(Cách lên tiếng báo trước, hỗ trợ di chuyển, trợ giúp ăn uống... Ưu tiên hàng đầu là để họ nắm vững kỹ thuật cơ bản.)* |
| Ngọc | あと、「<ruby>文化的<rt>ぶんかてき</rt></ruby>なショック」への<ruby>対応<rt>たいおう</rt></ruby>も<ruby>計画<rt>けいかく</rt></ruby>に<ruby>入<rt>い</rt></ruby>れたいと<ruby>思<rt>おも</rt></ruby>います。わたし<ruby>自身<rt>じしん</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>一番<rt>いちばん</rt></ruby>つらかったのは、<ruby>孤独感<rt>こどくかん</rt></ruby>でしたから。<br>*(Ngoài ra, em cũng muốn đưa vào kế hoạch cả việc ứng phó với "cú sốc văn hoá". Bản thân em, điều khó nhất ban đầu là cảm giác cô đơn.)* |
| Yamamoto | さすがグエンさん。<ruby>技術<rt>ぎじゅつ</rt></ruby>だけじゃなく、<ruby>心<rt>こころ</rt></ruby>のフォローも<ruby>大切<rt>たいせつ</rt></ruby>ですね。<br>*(Đúng như Ngọc. Không chỉ kỹ thuật, mà cả việc hỗ trợ tâm lý cũng quan trọng nhỉ.)* |

---

## Tình huống 3 — Phòng nhân viên · 14:00, chia sẻ tin với An, Đức, Hương

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、ちょっといいですか。<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が3<ruby>人<rt>にん</rt></ruby>来ます。わたしが<ruby>教育担当<rt>きょういくたんとう</rt></ruby>になりました。<br>*(Mọi người, có chút thời gian không. Tháng tới sẽ có 3 thực tập sinh mới đến. Mình được giao vai phụ trách đào tạo rồi.)* |
| Đức | え、すごい!<ruby>おめでとうございます<rt>おめでとうございます</rt></ruby>!<br>*(Ồ, ghê quá! Chúc mừng chị!)* |
| An | ゴックさんが<ruby>教育担当<rt>きょういくたんとう</rt></ruby>かぁ。<ruby>一番<rt>いちばん</rt></ruby><ruby>適任<rt>てきにん</rt></ruby>ですよ!<br>*(Chị Ngọc làm phụ trách đào tạo. Thích hợp nhất đó!)* |
| Ngọc | チームみんなの<ruby>協力<rt>きょうりょく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。アンさんは<ruby>食事介助<rt>しょくじかいじょ</rt></ruby>、ドゥックさんは<ruby>移乗<rt>いじょう</rt></ruby>、<ruby>それぞれ<rt>それぞれ</rt></ruby>の<ruby>得意<rt>とくい</rt></ruby>なことを<ruby>教<rt>おし</rt></ruby>えてもらえますか?<br>*(Cần sự hợp tác của cả nhóm. Chị An dạy trợ giúp ăn uống, anh Đức dạy hỗ trợ di chuyển — mỗi người dạy mảng giỏi của mình được không?)* |
| Hương | ゴックさん、<ruby>私<rt>わたし</rt></ruby>は?<br>*(Còn tôi thì sao chị Ngọc?)* |
| Ngọc | フォンさんには、<ruby>記録<rt>きろく</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいたいです。<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>記録<rt>きろく</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>ですよね。<br>*(Hương em, mình muốn em phụ trách dạy cách viết hồ sơ. Em viết hồ sơ tỉ mỉ lắm mà.)* |
| Hương | はい!<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng! Em sẽ cố gắng!)* |

---

## Tình huống 4 — Phòng làm việc · buổi tối, soạn tài liệu giảng dạy

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, viết danh sách) <ruby>声<rt>こえ</rt></ruby>かけ、ノック、<ruby>自己紹介<rt>じこしょうかい</rt></ruby>、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>呼<rt>よ</rt></ruby>び<ruby>方<rt>かた</rt></ruby>...。これ、わたしが<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてもらったことだ。<br>*(một mình, viết danh sách: Lên tiếng báo trước, gõ cửa, tự giới thiệu, cách gọi người sử dụng dịch vụ... Đây là những gì mình được dạy ngày đầu tiên.)* |
| Ngọc | (viết tiếp) <ruby>体位変換<rt>たいいへんかん</rt></ruby>、<ruby>褥瘡<rt>じょくそう</rt></ruby>、<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby>...あのとき<ruby>山本<rt>やまもと</rt></ruby>さんが<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれたな。今度は<ruby>自分<rt>じぶん</rt></ruby>が<ruby>伝<rt>つた</rt></ruby>える<ruby>番<rt>ばん</rt></ruby>だ。<br>*(viết tiếp: Đổi tư thế nằm, loét tì đè, bổ sung nước... Ngày đó chị Yamamoto đã dạy mình tận tình nhỉ. Giờ đến lượt mình truyền lại rồi.)* |

---

## Tình huống 5 — Vườn cơ sở · sáng, cùng ông Tanaka

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエン、<ruby>最近<rt>さいきん</rt></ruby><ruby>忙<rt>いそが</rt></ruby>しそうだな。<br>*(Nguyễn, dạo này trông bận nhỉ.)* |
| Ngọc | はい。<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が<ruby>来<rt>く</rt></ruby>るので、<ruby>準備<rt>じゅんび</rt></ruby>をしています。<br>*(Vâng. Tháng tới thực tập sinh mới đến nên em đang chuẩn bị.)* |
| Ông Tanaka | そうか。グエンも<ruby>前<rt>まえ</rt></ruby>は<ruby>実習生<rt>じっしゅうせい</rt></ruby>だったんだよな。<br>*(Vậy à. Nguyễn ngày trước cũng là thực tập sinh nhỉ.)* |
| Ngọc | (cười nhẹ) そうですよ。<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけていただいたときのこと、<ruby>今<rt>いま</rt></ruby>でも<ruby>覚<rt>おぼ</rt></ruby>えています。「<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>かね」って。<br>*(cười nhẹ: Đúng vậy. Em vẫn nhớ lần đầu ông Tanaka hỏi chuyện em — "Tiếng Nhật có ổn không?")* |
| Ông Tanaka | (ngừng tay, nhớ lại, cười chậm) ああ...そんなこと<ruby>言<rt>い</rt></ruby>ったか。グエンは<ruby>立派<rt>りっぱ</rt></ruby>になったな。<br>*(À... mình có nói thế à. Nguyễn lớn lên thật rồi nhỉ.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さんたちが<ruby>育<rt>そだ</rt></ruby>ててくれました。ありがとうございます。<br>*(Các cụ như ông Tanaka đã nuôi lớn em. Cảm ơn ông.)* |

---

## Tình huống 6 — Phòng họp · chiều, trình bày kế hoạch đào tạo với Kobayashi

| Vai | Lời thoại |
|---|---|
| Ngọc | では、<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>への<ruby>研修<rt>けんしゅう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>最初<rt>さいしょ</rt></ruby>の1<ruby>ヶ月<rt>かげつ</rt></ruby>は「<ruby>基本<rt>きほん</rt></ruby><ruby>会話<rt>かいわ</rt></ruby>と<ruby>施設<rt>しせつ</rt></ruby>ルール」、2<ruby>ヶ月目<rt>かげつめ</rt></ruby>は「<ruby>基本<rt>きほん</rt></ruby><ruby>介護<rt>かいご</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>」、3<ruby>ヶ月目<rt>かげつめ</rt></ruby>は「<ruby>実際<rt>じっさい</rt></ruby>のケア<ruby>参加<rt>さんか</rt></ruby>」という<ruby>段階<rt>だんかい</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<br>*(Vậy em xin trình bày kế hoạch đào tạo cho các thực tập sinh mới. Tháng đầu là "hội thoại cơ bản và nội quy cơ sở", tháng 2 là "kỹ thuật điều dưỡng cơ bản", tháng 3 là "tham gia chăm sóc thực tế" — em sẽ tiến hành theo từng giai đoạn như vậy.)* |
| Kobayashi | よく<ruby>考<rt>かんが</rt></ruby>えられていますね。<ruby>文化的<rt>ぶんかてき</rt></ruby>なフォローは?<br>*(Suy nghĩ kỹ đấy. Hỗ trợ văn hoá thì sao?)* |
| Ngọc | <ruby>週<rt>しゅう</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby>、ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>話<rt>はな</rt></ruby>せる「ホームルーム<ruby>時間<rt>じかん</rt></ruby>」を<ruby>設<rt>もう</rt></ruby>けます。<ruby>困<rt>こま</rt></ruby>っていることを<ruby>話<rt>はな</rt></ruby>せる<ruby>安全<rt>あんぜん</rt></ruby>な<ruby>場<rt>ば</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りたいのです。<br>*(Em muốn thiết lập một "giờ sinh hoạt" một lần/tuần bằng tiếng Việt. Em muốn tạo ra một không gian an toàn để các em có thể nói những điều đang gặp khó.)* |
| Kobayashi | <ruby>素晴<rt>すば</rt></ruby>らしい。それは<ruby>前例<rt>ぜんれい</rt></ruby>がないですが、ぜひやってみましょう。<br>*(Tuyệt vời. Chưa có tiền lệ, nhưng hãy thử làm nhé.)* |
| Sato | グエンさんならではのアイデアですね。<br>*(Đó là ý tưởng đặc trưng của em Nguyễn nhỉ.)* |

---

## Tình huống 7 — Phòng nghỉ · giờ nghỉ, nói chuyện với Yamamoto về nhìn lại hành trình

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>一年<rt>いちねん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ってみて、どうですか?<br>*(Em Nguyễn, nhìn lại một năm, thấy thế nào?)* |
| Ngọc | (thở sâu) カンファレンスを<ruby>初<rt>はじ</rt></ruby>めて<ruby>進行<rt>しんこう</rt></ruby>したときの<ruby>緊張<rt>きんちょう</rt></ruby>、<ruby>看取<rt>みと</rt></ruby>りのとき...。<ruby>毎月<rt>まいつき</rt></ruby>、<ruby>何<rt>なに</rt></ruby>か<ruby>新<rt>あたら</rt></ruby>しいことがあって、<ruby>毎月<rt>まいつき</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>かに<ruby>助<rt>たす</rt></ruby>けられていました。<br>*(thở sâu: Hồi hộp lần đầu điều hành họp, rồi khi tiễn biệt ông Kimura... Mỗi tháng đều có điều gì đó mới, và mỗi tháng em đều được ai đó giúp đỡ.)* |
| Yamamoto | グエンさんが<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>たとき、「<ruby>日本語<rt>にほんご</rt></ruby>もまだ<ruby>下手<rt>へた</rt></ruby>ですが」って<ruby>自己紹介<rt>じこしょうかい</rt></ruby>していたの、<ruby>覚<rt>おぼ</rt></ruby>えていますか?<br>*(Em Nguyễn có nhớ lúc mới đến, em đã tự giới thiệu "tiếng Nhật em còn kém, nhưng..." không?)* |
| Ngọc | (cười) はい、よく<ruby>覚<rt>おぼ</rt></ruby>えています。あのとき、<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました。<br>*(cười: Vâng, em nhớ rõ lắm. Lúc đó tay em run run.)* |
| Yamamoto | 今のグエンさんを<ruby>見<rt>み</rt></ruby>ると、<ruby>同<rt>おな</rt></ruby>じ<ruby>人<rt>ひと</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えないくらいです。でも、<ruby>一番<rt>いちばん</rt></ruby>大切なことは<ruby>変<rt>か</rt></ruby>わっていない。<ruby>人<rt>ひと</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にする<ruby>気持<rt>きも</rt></ruby>ち。<br>*(Nhìn em Nguyễn bây giờ, khó mà tin là cùng một người. Nhưng điều quan trọng nhất không thay đổi. Tấm lòng trân trọng con người.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えていただいたことです。<br>*(Đó là điều chị Yamamoto đã dạy em.)* |

---

## Tình huống 8 — Cầu thang · 16:00, Sato hỏi về việc chuẩn bị đón TTS

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が<ruby>来<rt>く</rt></ruby>たら、<ruby>特<rt>とく</rt></ruby>に<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えたいことは?<br>*(Em Nguyễn, khi các thực tập sinh mới đến, điều em đặc biệt muốn truyền đạt đầu tiên là gì?)* |
| Ngọc | 「<ruby>分<rt>わ</rt></ruby>からないことは、<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く」ということです。わたしが<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>言<rt>い</rt></ruby>われた<ruby>言葉<rt>ことば</rt></ruby>です。この<ruby>言葉<rt>ことば</rt></ruby>に<ruby>何度<rt>なんど</rt></ruby>も<ruby>救<rt>すく</rt></ruby>われました。<br>*(Đó là "Điều gì không hiểu — nhất định phải hỏi". Đây là câu chị Yamamoto nói với em lần đầu tiên. Câu này đã cứu em nhiều lần.)* |
| Sato | それはいい<ruby>言葉<rt>ことば</rt></ruby>ですね。<ruby>介護<rt>かいご</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だけじゃなく、<ruby>人生<rt>じんせい</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>えますよ。<br>*(Câu đó hay đấy. Không chỉ trong công việc điều dưỡng, mà cả trong cuộc sống cũng dùng được đó.)* |
| Ngọc | はい。<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>にも、この<ruby>施設<rt>しせつ</rt></ruby>で「<ruby>質問<rt>しつもん</rt></ruby>できる<ruby>安心感<rt>あんしんかん</rt></ruby>」を<ruby>持<rt>も</rt></ruby>ってほしいです。<br>*(Vâng. Với các thực tập sinh mới, em cũng muốn các em cảm thấy "an tâm được phép hỏi" trong cơ sở này.)* |

---

## Tình huống 9 — Phòng nhân viên · 17:00, đóng gói năm cũ

| Vai | Lời thoại |
|---|---|
| Đức | ゴックさん、来月から<ruby>忙<rt>いそが</rt></ruby>しくなりますね。リーダーと<ruby>教育担当<rt>きょういくたんとう</rt></ruby>の<ruby>兼務<rt>けんむ</rt></ruby>か。<br>*(Chị Ngọc, từ tháng tới bận hơn rồi nhỉ. Kiêm nhiệm trưởng nhóm và phụ trách đào tạo.)* |
| Ngọc | そうね。でも、<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>がちゃんと<ruby>仕事<rt>しごと</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えて、ここで<ruby>頑張<rt>がんば</rt></ruby>れるようになったら、うれしいですよ。ドゥックさんも<ruby>覚<rt>おぼ</rt></ruby>えてますか?<ruby>最初<rt>さいしょ</rt></ruby>のころ。<br>*(Vậy. Nhưng nếu các thực tập sinh mới học được việc và có thể cố gắng ở đây thì vui lắm. Anh Đức có nhớ không? Hồi mới bắt đầu.)* |
| Đức | (cười) <ruby>覚<rt>おぼ</rt></ruby>えてますよ。何も<ruby>分<rt>わ</rt></ruby>からなくて、毎日<ruby>必死<rt>ひっし</rt></ruby>でしたね。ゴックさんも<ruby>同<rt>おな</rt></ruby>じだったんですよね?<br>*(cười: Nhớ chứ. Chẳng biết gì hết, mỗi ngày cố gắng sống còn. Chị Ngọc cũng vậy nhỉ?)* |
| Ngọc | そう。だから、<ruby>彼女<rt>かのじょ</rt></ruby>たちの<ruby>気持<rt>きも</rt></ruby>ちがわかる。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、ここには<ruby>山本<rt>やまもと</rt></ruby>さんも、チームのみんなもいるから。<ruby>私<rt>わたし</rt></ruby>が<ruby>経験<rt>けいけん</rt></ruby>したことを、<ruby>次<rt>つぎ</rt></ruby>につないでいきたい。<br>*(Vậy. Vì vậy mình hiểu được cảm xúc của các em. Không sao, ở đây có chị Yamamoto, có cả nhóm. Mình muốn nối tiếp những gì mình đã trải nghiệm sang thế hệ tiếp theo.)* |

---

## Tình huống 10 — Hành lang cổng ra về · 18:00, gặp Kobayashi cuối ngày

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>章<rt>しょう</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まりますね。<br>*(Em Nguyễn, hôm nay cũng vất vả rồi. Tháng tới một chương mới bắt đầu nhỉ.)* |
| Ngọc | はい。<ruby>楽<rt>たの</rt></ruby>しみでもあり、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じてもいます。<br>*(Vâng. Vừa mong đợi vừa cảm nhận trách nhiệm.)* |
| Kobayashi | それが<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>気持<rt>きも</rt></ruby>ちですよ。グエンさんのように<ruby>自分<rt>じぶん</rt></ruby>に<ruby>正直<rt>しょうじき</rt></ruby>な<ruby>人<rt>ひと</rt></ruby>が、<ruby>良<rt>よ</rt></ruby>いリーダーになります。<br>*(Đó là tâm tư thành thật đấy. Người thành thật với bản thân như em Nguyễn — sẽ trở thành người lãnh đạo tốt.)* |
| Ngọc | ありがとうございます。<ruby>小林<rt>こばやし</rt></ruby><ruby>施設長<rt>しせつちょう</rt></ruby>、これからも<ruby>よろしくお願<rt>よろしくおねが</rt></ruby>いします。<br>*(Cảm ơn rất nhiều ạ. Giám đốc Kobayashi, mong được tiếp tục nhờ ông chỉ bảo.)* |
| Kobayashi | こちらこそ。<ruby>来月<rt>らいげつ</rt></ruby>、いいスタートを<ruby>切<rt>き</rt></ruby>ってください。<br>*(Ngược lại tôi cũng vậy. Tháng tới hãy có một khởi đầu tốt nhé.)* |

---

## Tình huống 11 — Ngoài vườn · hoàng hôn, nhìn lại một mình

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình trong vườn, nhìn xuống chậu hoa của ông Tanaka đang nở, tự nhủ) <ruby>来<rt>き</rt></ruby>たばかりのあの<ruby>日<rt>ひ</rt></ruby>から、2<ruby>年<rt>ねん</rt></ruby>が<ruby>経<rt>た</rt></ruby>った。<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>だったわたしが、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>になって、リーダーになって、<ruby>今度<rt>こんど</rt></ruby>は<ruby>教える<rt>おしえる</rt></ruby><ruby>側<rt>がわ</rt></ruby>になる。<br>*(một mình trong vườn, nhìn chậu hoa đang nở, tự nhủ: Từ cái ngày mới đến ấy đến nay, 2 năm đã trôi qua. Mình từ thực tập sinh kỹ năng trở thành 介護福祉士, rồi trưởng nhóm, và giờ đến lượt trở thành người đứng phía dạy.)* |
| Ngọc | (tiếp tục) <ruby>来月<rt>らいげつ</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>実習生<rt>じっしゅうせい</rt></ruby>が<ruby>来<rt>く</rt></ruby>る。あの<ruby>子<rt>こ</rt></ruby>たちも、きっと<ruby>緊張<rt>きんちょう</rt></ruby>している。「<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>分<rt>わ</rt></ruby>からないことは、いつでも<ruby>聞<rt>き</rt></ruby>いてください」って、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってあげよう。<br>*(tiếp tục: Tháng tới, các thực tập sinh mới sẽ đến. Các em ấy chắc cũng hồi hộp lắm. Mình sẽ nói ngay từ đầu: "Không sao đâu. Có gì không hiểu cứ hỏi bất cứ lúc nào nhé".)* |

---

## Tình huống 12 — Gọi điện · tối, mạch truyện khép sách 30

> Scene tiếng Việt — ấm áp, khép chương và mở hướng sách 31.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, tháng tới con có thêm vai mới rồi. Phụ trách đào tạo cho TTS mới. |
| Mẹ | (tiếng Việt) Con làm được hết vậy trời. Vừa trưởng nhóm vừa đào tạo? |
| Ngọc | (tiếng Việt) Hơi run nhưng mình chọn làm. Mẹ biết không, hôm nay con ngồi ở vườn, nhớ lại ngày đầu tiên. Con sợ lắm hồi đó. |
| Mẹ | (tiếng Việt) Mà con vẫn ở lại. Vẫn đi tiếp. |
| Ngọc | (tiếng Việt) Dạ. Nhờ có mẹ, có chị Yamamoto, có bà con cô bác ở đây. Con đang đi từng bước mẹ ơi. |
| Mẹ | (tiếng Việt) Mình đi từng bước. Con cũng vậy từ đầu đến giờ mà. Mẹ tự hào con lắm. |
| Ngọc | (tiếng Việt, giọng nhẹ hơn) Cảm ơn mẹ. Năm mới sắp tới rồi. Mình cùng nhau tiếp tục nha. |

---

## Đọng lại chương 12 — Khép sách 30

Chương kết sách 30 đồng thời là **bản lề** mở ra sách 31. Ngọc hoàn tất hành trình: TTS (tháng 4/2026) → 介護福祉士 → ユニットリーダー → 教育担当 (tháng 4/2032). Câu mà chị Yamamoto nói ngày đầu — **「分からないことは、いつでも聞いてください」** — vòng lại: Ngọc sẽ nói đúng câu đó với thế hệ tiếp theo.

Hành trình tiếp theo: **sách 31** — Ngọc 教育担当, dạy TTS Linh và Tuấn, và bước đến 介護主任.

> Từ vựng & mẫu câu chương này: 教育担当・兼務・技能実習指導員・研修計画・受け入れ準備・ホームルーム・安心感・前例がない・振り返り・次につなぐ・自分らしいやり方・新しい章が始まる', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
