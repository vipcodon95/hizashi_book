-- Hizashi LITE book SQL — Kaigo Senior 3
-- curriculum_id = 800000032  (book_seq=32)
-- nguồn: books/32_kaigo_senior3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000032, 'N3', 'markdown_book', 'Điều dưỡng', 'Kaigo Senior 3', 'Bộ sách Hizashi — Kaigo Senior 3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000001, 800000032, NULL, 'markdown_book', 'T1. ケアマネ hay 認定 (ケアマネか認定か)', '# Sách điều dưỡng viên quốc gia · T1. ケアマネ hay 認定 (ケアマネか認定か)

> **Mục tiêu nhân vật:** Ngọc (30 tuổi, 介護主任) đang đứng trước ngã rẽ: thi ケアマネジャー (介護支援専門員) hay lấy 認定介護福祉士? Tháng 4, mùa xuân, Ngọc vừa nhậm chức 介護主任 được vài tháng, nghe tin đồng nghiệp bàn về chứng chỉ cấp cao và bắt đầu tự hỏi bước đi tiếp theo của mình là gì.

---

## Bối cảnh

Tháng 4 năm 2032. Cơ sở 特養「ひだまり苑」. Ngọc đã là 介護主任, phụ trách toàn bộ hiện trường điều dưỡng, kiêm hướng dẫn TTS Việt. Ngọc sống một mình tại nhà trọ gần cơ sở. Hương (đồng hương Việt, cùng làm 介護福祉士 cơ sở khác gần đó) nhắn tin hỏi về ケアマネ. Ngọc bắt đầu tìm hiểu, bàn với Yamamoto và Hương.

---

## Tình huống 1 — Phòng chủ nhiệm · 8:15, Ngọc đọc thông báo nội bộ về đào tạo cấp cao

| Vai | Lời thoại |
|---|---|
| Ngọc | (đọc thông báo, nói một mình) <ruby>認定<rt>にんてい</rt></ruby><ruby>介護<rt>かいご</rt></ruby><ruby>福祉士<rt>ふくしし</rt></ruby>の<ruby>研修案内<rt>けんしゅうあんない</rt></ruby>か…。<ruby>今年<rt>ことし</rt></ruby>も<ruby>来<rt>き</rt></ruby>たね。*(Lại có thông báo về khóa đào tạo 認定介護福祉士 rồi… Năm nay cũng gửi đến.)* |
| An | (đi ngang, dừng lại) <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>認定<rt>にんてい</rt></ruby>、<ruby>興味<rt>きょうみ</rt></ruby>あるんですか? *(Chủ nhiệm, chị quan tâm đến 認定 à?)* |
| Ngọc | うーん、<ruby>気<rt>き</rt></ruby>にはなるんだけど。<ruby>ケアマネ<rt>けあまね</rt></ruby>との<ruby>違<rt>ちが</rt></ruby>いがよく<ruby>分<rt>わ</rt></ruby>からなくて。*(Ừm, chị cũng để ý. Nhưng chưa hiểu rõ khác gì với ケアマネ.)* |
| An | ケアマネは<ruby>国家資格<rt>こっかしかく</rt></ruby>ですよね。<ruby>認定<rt>にんてい</rt></ruby>は…<ruby>民間<rt>みんかん</rt></ruby>でしたっけ?*(ケアマネ là chứng chỉ quốc gia đúng không. Còn 認定 thì… là dân lập đúng không ạ?)* |
| Ngọc | そう、<ruby>認定<rt>にんてい</rt></ruby>は<ruby>民間資格<rt>みんかんしかく</rt></ruby>。<ruby>国家資格<rt>こっかしかく</rt></ruby>じゃないのよ。*(Đúng, 認定 là chứng chỉ dân lập. Không phải quốc gia.)* |
| An | じゃあ、ケアマネのほうがいいんじゃないですか?*(Vậy thì ケアマネ hơn không ạ?)* |
| Ngọc | そう<ruby>簡単<rt>かんたん</rt></ruby>でもないのよ…<ruby>山本<rt>やまもと</rt></ruby>さんに<ruby>聞<rt>き</rt></ruby>いてみようかな。*(Không đơn giản vậy đâu… Chị thử hỏi chị Yamamoto xem.)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 10:00, Ngọc hỏi Yamamoto về 認定介護福祉士

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、ちょっとよろしいですか?<ruby>認定<rt>にんてい</rt></ruby><ruby>介護<rt>かいご</rt></ruby><ruby>福祉士<rt>ふくしし</rt></ruby>について<ruby>聞<rt>き</rt></ruby>きたいんですが。*(Chị Yamamoto, cho em hỏi một chút được không? Em muốn hỏi về 認定介護福祉士.)* |
| Yamamoto | ああ、<ruby>認定<rt>にんてい</rt></ruby>ね。どんなことが<ruby>知<rt>し</rt></ruby>りたい?*(À, 認定 đó. Em muốn biết gì?)* |
| Ngọc | <ruby>認定<rt>にんてい</rt></ruby>は<ruby>取<rt>と</rt></ruby>る<ruby>価値<rt>かち</rt></ruby>があると<ruby>思<rt>おも</rt></ruby>いますか?<ruby>現場<rt>げんば</rt></ruby>での<ruby>評価<rt>ひょうか</rt></ruby>はどうですか?*(Anh thấy 認定 có đáng lấy không? Đánh giá ở hiện trường thế nào ạ?)* |
| Yamamoto | 正直に言うとね、<ruby>認定<rt>にんてい</rt></ruby>はまだ<ruby>普及<rt>ふきゅう</rt></ruby>していないのよ。「<ruby>意味<rt>いみ</rt></ruby>がない」って<ruby>声<rt>こえ</rt></ruby>も<ruby>多<rt>おお</rt></ruby>いし、<ruby>施設側<rt>しせつがわ</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby>も<ruby>施設<rt>しせつ</rt></ruby>によってバラバラ。*(Nói thật thì, 認定 vẫn chưa phổ biến. Nhiều người nói "không có ý nghĩa", và đánh giá từ phía cơ sở cũng tùy nơi.)* |
| Ngọc | そうなんですか。<ruby>研修<rt>けんしゅう</rt></ruby>が600<ruby>時間<rt>じかん</rt></ruby>って<ruby>聞<rt>き</rt></ruby>いたんですが。*(Vậy sao. Em nghe nói cần 600 giờ đào tạo.)* |
| Yamamoto | そう、600<ruby>時間<rt>じかん</rt></ruby>の<ruby>研修<rt>けんしゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>。<ruby>時間<rt>じかん</rt></ruby>もお<ruby>金<rt>かね</rt></ruby>もかかる。ケアマネと<ruby>比<rt>くら</rt></ruby>べたら、まだ<ruby>社会的<rt>しゃかいてき</rt></ruby>な<ruby>認知度<rt>にんちど</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いんだよ。*(Đúng, cần 600 giờ đào tạo. Tốn thời gian và tiền. So với ケアマネ thì mức độ nhận biết xã hội vẫn còn thấp hơn.)* |
| Ngọc | ケアマネのほうがやっぱり<ruby>将来性<rt>しょうらいせい</rt></ruby>がありますよね。*(ケアマネ có triển vọng tương lai hơn đúng không ạ.)* |
| Yamamoto | うん、<ruby>圧倒的<rt>あっとうてき</rt></ruby>に。<ruby>国家資格<rt>こっかしかく</rt></ruby>で、<ruby>就職<rt>しゅうしょく</rt></ruby>にも<ruby>給料<rt>きゅうりょう</rt></ruby>にもプラスになる。*(Ừ, hơn hẳn. Là chứng chỉ quốc gia, có lợi cả về việc làm lẫn lương.)* |

---

## Tình huống 3 — Phòng họp nhỏ · 10:45, Kobayashi gọi Ngọc vào nói chuyện về định hướng phát triển

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今後<rt>こんご</rt></ruby>のキャリアについて<ruby>考<rt>かんが</rt></ruby>えていますか?*(Chủ nhiệm Nguyễn, em có đang suy nghĩ về hướng phát triển sự nghiệp tương lai không?)* |
| Ngọc | はい、<ruby>実<rt>じつ</rt></ruby>は<ruby>最近<rt>さいきん</rt></ruby>、ケアマネと<ruby>認定<rt>にんてい</rt></ruby><ruby>介護<rt>かいご</rt></ruby><ruby>福祉士<rt>ふくしし</rt></ruby>について<ruby>調<rt>しら</rt></ruby>べているところです。*(Vâng, thực ra gần đây em đang tìm hiểu về ケアマネ và 認定介護福祉士.)* |
| Kobayashi | 両方、<ruby>検討<rt>けんとう</rt></ruby>しているんですね。どっちに<ruby>気持<rt>きも</rt></ruby>ちが<ruby>向<rt>む</rt></ruby>いていますか?*(Em đang xem xét cả hai à. Em nghiêng về cái nào?)* |
| Ngọc | ケアマネが<ruby>気<rt>き</rt></ruby>になっています。ただ、<ruby>受験資格<rt>じゅけんしかく</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしているか、まだ<ruby>確認<rt>かくにん</rt></ruby>できていなくて。*(Em đang quan tâm đến ケアマネ. Nhưng em chưa xác nhận được mình có đủ điều kiện dự thi chưa.)* |
| Kobayashi | ケアマネは<ruby>施設<rt>しせつ</rt></ruby>にとっても<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>資格<rt>しかく</rt></ruby>です。<ruby>前向<rt>まえむ</rt></ruby>きに<ruby>考<rt>かんが</rt></ruby>えてみてください。*(ケアマネ là chứng chỉ cần thiết cho cơ sở. Em cứ suy nghĩ tích cực đi nhé.)* |
| Ngọc | ありがとうございます。もう<ruby>少<rt>すこ</rt></ruby>し<ruby>調<rt>しら</rt></ruby>べてから、ご<ruby>相談<rt>そうだん</rt></ruby>させてください。*(Em cảm ơn ạ. Để em tìm hiểu thêm một chút rồi xin tư vấn.)* |
| Kobayashi | いつでも。応援していますよ。*(Lúc nào cũng được. Tôi ủng hộ em.)* |

---

## Tình huống 4 — Khu ユニット A · 13:00, Ngọc kiểm tra kế hoạch chăm sóc cùng Nakamura

| Vai | Lời thoại |
|---|---|
| Nakamura | <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>田村<rt>たむら</rt></ruby>さんの<ruby>ケア計画書<rt>けあけいかくしょ</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>していただけますか。<ruby>医療<rt>いりょう</rt></ruby><ruby>面<rt>めん</rt></ruby>で<ruby>変更<rt>へんこう</rt></ruby>があります。*(Chủ nhiệm, anh có thể xem lại kế hoạch chăm sóc của cụ Tamura không. Phần y tế có thay đổi.)* |
| Ngọc | はい、<ruby>拝見<rt>はいけん</rt></ruby>します。…<ruby>血圧<rt>けつあつ</rt></ruby><ruby>管理<rt>かんり</rt></ruby>の<ruby>目標値<rt>もくひょうち</rt></ruby>が<ruby>変<rt>か</rt></ruby>わったんですね。*(Vâng, em xem. … Giá trị mục tiêu quản lý huyết áp thay đổi rồi nhỉ.)* |
| Nakamura | ええ。<ruby>収縮期<rt>しゅうしゅくき</rt></ruby><ruby>血圧<rt>けつあつ</rt></ruby>を140<ruby>以下<rt>いか</rt></ruby>に<ruby>維持<rt>いじ</rt></ruby>する<ruby>方針<rt>ほうしん</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりました。*(Đúng. Phương châm thay đổi thành duy trì huyết áp tâm thu dưới 140.)* |
| Ngọc | <ruby>介護側<rt>かいごがわ</rt></ruby>では、<ruby>水分<rt>すいぶん</rt></ruby><ruby>摂取<rt>せっしゅ</rt></ruby>と<ruby>排泄<rt>はいせつ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>します。*(Phía điều dưỡng, chúng em sẽ tăng cường ghi chép lượng nước uống vào và bài tiết.)* |
| Nakamura | ありがとうございます。<ruby>連携<rt>れんけい</rt></ruby>がスムーズで<ruby>助<rt>たす</rt></ruby>かります。*(Cảm ơn. Phối hợp suôn sẻ thật giúp ích nhiều.)* |
| Ngọc | ケアマネさんへの<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がやります。<ruby>記録<rt>きろく</rt></ruby>は<ruby>今日中<rt>きょうじゅう</rt></ruby>にまとめますね。*(Báo cáo cho ケアマネ thì em làm. Em sẽ tổng hợp ghi chép trong ngày hôm nay.)* |
| Nakamura | <ruby>助<rt>たす</rt></ruby>かります。<ruby>主任<rt>しゅにん</rt></ruby>がケアマネを<ruby>取<rt>と</rt></ruby>ったら、<ruby>連携<rt>れんけい</rt></ruby>もっとやりやすくなりそうですね。*(Đỡ lắm. Nếu chủ nhiệm lấy được ケアマネ, phối hợp sẽ còn dễ hơn nữa nhỉ.)* |
| Ngọc | (苦笑) まだまだ<ruby>先<rt>さき</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>ですよ。*(cười khổ) Còn xa lắm ạ.)* |

---

## Tình huống 5 — Hành lang · 14:30, Ngọc hỏi đàn chị Sato về kinh nghiệm thi chứng chỉ cao

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>佐藤<rt>さとう</rt></ruby>さん、ケアマネを<ruby>受験<rt>じゅけん</rt></ruby>したことがありますか?*(Chị Sato, chị đã từng thi ケアマネ chưa?)* |
| Sato | ええ、<ruby>一度<rt>いちど</rt></ruby><ruby>受<rt>う</rt></ruby>けたけど<ruby>不合格<rt>ふごうかく</rt></ruby>だったわ。<ruby>合格率<rt>ごうかくりつ</rt></ruby>、低いのよ。*(Có, tôi đã thi một lần nhưng trượt. Tỉ lệ đỗ thấp lắm.)* |
| Ngọc | どのくらいですか?*(Khoảng bao nhiêu phần trăm ạ?)* |
| Sato | <ruby>年<rt>ねん</rt></ruby>によるけど、だいたい17〜23パーセントくらいね。<ruby>問題<rt>もんだい</rt></ruby>が60<ruby>問<rt>もん</rt></ruby>あって、2つの<ruby>分野<rt>ぶんや</rt></ruby>どちらも<ruby>合格点<rt>ごうかくてん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えないといけない。*(Tùy năm, nhưng khoảng 17-23%. Có 60 câu và cần vượt điểm đỗ ở cả 2 lĩnh vực.)* |
| Ngọc | どちらが<ruby>難<rt>むずか</rt></ruby>しかったですか?*(Lĩnh vực nào khó hơn ạ?)* |
| Sato | <ruby>保健医療福祉<rt>ほけんいりょうふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>よ。<ruby>医療<rt>いりょう</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>が<ruby>求<rt>もと</rt></ruby>められて、<ruby>漢字<rt>かんじ</rt></ruby>も<ruby>難<rt>むずか</rt></ruby>しいし。*(Lĩnh vực 保健医療福祉サービス. Đòi hỏi kiến thức y tế, và chữ Hán cũng khó.)* |
| Ngọc | そうですか…。やっぱり<ruby>覚悟<rt>かくご</rt></ruby>がいりますね。*(Vậy ạ… Cần có tâm lý chuẩn bị thật sự nhỉ.)* |
| Sato | グエンさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>よ。<ruby>主任<rt>しゅにん</rt></ruby>までなった<ruby>人<rt>ひと</rt></ruby>なんだから。*(Em Nguyễn thì được thôi. Em đã lên đến chủ nhiệm rồi mà.)* |

---

## Tình huống 6 — Khu ユニット B · 15:00, chỉ đạo Linh về cách viết ghi chép hàng ngày

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>リン<rt>りん</rt></ruby>さん、この<ruby>記録<rt>きろく</rt></ruby>、ちょっと<ruby>気<rt>き</rt></ruby>になることがあります。*(Linh ơi, chị thấy phần ghi chép này có điều cần chú ý.)* |
| Linh | はい、<ruby>主任<rt>しゅにん</rt></ruby>。どこですか?*(Vâng chị chủ nhiệm. Chỗ nào ạ?)* |
| Ngọc | 「<ruby>元気<rt>げんき</rt></ruby>でした」だけじゃなくて、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてください。たとえば、<ruby>食事<rt>しょくじ</rt></ruby><ruby>摂取量<rt>せっしゅりょう</rt></ruby>、<ruby>表情<rt>ひょうじょう</rt></ruby>、<ruby>発言<rt>はつげん</rt></ruby>など。*(Không chỉ "khỏe mạnh" thôi, hãy viết cụ thể hơn một chút. Ví dụ lượng ăn, biểu cảm, lời nói v.v.)* |
| Linh | あ、そうですね。<ruby>分<rt>わ</rt></ruby>かりました。「<ruby>朝食<rt>ちょうしょく</rt></ruby>は<ruby>全量摂取<rt>ぜんりょうせっしゅ</rt></ruby>」とか「<ruby>笑顔<rt>えがお</rt></ruby>で<ruby>会話<rt>かいわ</rt></ruby>されていた」とか?*(À đúng rồi ạ. Em hiểu rồi. Như "ăn hết phần sáng" hay "cười nói vui vẻ" vậy ạ?)* |
| Ngọc | そうそう、その<ruby>通<rt>とお</rt></ruby>り。<ruby>記録<rt>きろく</rt></ruby>は<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>次<rt>つぎ</rt></ruby>のスタッフに<ruby>伝<rt>つた</rt></ruby>えるための<ruby>大切<rt>たいせつ</rt></ruby>なツールです。*(Đúng vậy. Ghi chép là công cụ quan trọng để truyền đạt tình trạng của cụ cho ca kế tiếp.)* |
| Linh | はい、<ruby>以後<rt>いご</rt></ruby>、<ruby>気<rt>き</rt></ruby>をつけます。あの、<ruby>主任<rt>しゅにん</rt></ruby>はケアマネを<ruby>目指<rt>めざ</rt></ruby>すって<ruby>本当<rt>ほんとう</rt></ruby>ですか?*(Vâng, từ sau em sẽ chú ý. À, chị chủ nhiệm có định thi ケアマネ thật không ạ?)* |
| Ngọc | (苦笑) <ruby>噂<rt>うわさ</rt></ruby>が<ruby>早<rt>はや</rt></ruby>いわね。まだ<ruby>考<rt>かんが</rt></ruby>えているところ。*(cười khổ) Tin đồn nhanh thật. Chị vẫn đang suy nghĩ thôi.)* |
| Linh | <ruby>頑張<rt>がんば</rt></ruby>ってください。<ruby>私<rt>わたし</rt></ruby>たちの<ruby>目標<rt>もくひょう</rt></ruby>です!*(Cố lên ạ. Chị là mục tiêu của chúng em!)* |

---

## Tình huống 7 — Phòng họp nhân viên · 16:00, buổi カンファレンス chiều — Ngọc chủ trì

| Vai | Lời thoại |
|---|---|
| Ngọc | では<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今日<rt>きょう</rt></ruby>のカンファレンスの<ruby>議題<rt>ぎだい</rt></ruby>は<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>ケア計画<rt>けあけいかく</rt></ruby>の<ruby>見直<rt>みなお</rt></ruby>しです。*(Vậy bắt đầu nhé. Nội dung hội thảo hôm nay là xem xét lại kế hoạch chăm sóc của cụ Yamada.)* |
| Tuấn | <ruby>先週<rt>せんしゅう</rt></ruby>から<ruby>食欲<rt>しょくよく</rt></ruby>が<ruby>低下<rt>ていか</rt></ruby>していて、<ruby>体重<rt>たいじゅう</rt></ruby>が200グラム<ruby>減<rt>へ</rt></ruby>っています。*(Từ tuần trước sức ăn giảm, cân nặng giảm 200 gram.)* |
| Nakamura | <ruby>血液検査<rt>けつえきけんさ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>もアルブミン<ruby>値<rt>ち</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>めです。<ruby>栄養<rt>えいよう</rt></ruby>サポートを<ruby>検討<rt>けんとう</rt></ruby>します。*(Kết quả xét nghiệm máu albumin cũng thấp. Sẽ xem xét hỗ trợ dinh dưỡng.)* |
| Ngọc | <ruby>介護側<rt>かいごがわ</rt></ruby>では、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>形態<rt>けいたい</rt></ruby>と<ruby>提供<rt>ていきょう</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>しましょう。<ruby>好<rt>す</rt></ruby>きなものを<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>提供<rt>ていきょう</rt></ruby>する<ruby>工夫<rt>くふう</rt></ruby>も。*(Phía điều dưỡng, chúng ta xem lại hình thức bữa ăn và cách phục vụ. Cũng thử sáng tạo phục vụ trung tâm là món cụ thích.)* |
| An | <ruby>本人<rt>ほんにん</rt></ruby>は「<ruby>刺身<rt>さしみ</rt></ruby>が<ruby>食<rt>た</rt></ruby>べたい」っておっしゃっていました。*(Bản thân cụ có nói "muốn ăn sashimi".)* |
| Ngọc | では、<ruby>医師<rt>いし</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>のうえ、<ruby>トロミ<rt>とろみ</rt></ruby>つきのお<ruby>刺身<rt>さしみ</rt></ruby>ゼリーを<ruby>試<rt>こころ</rt></ruby>みましょう。*(Vậy, sau khi xác nhận với bác sĩ, chúng ta thử món thạch sashimi có chất làm sánh nhé.)* |
| Nakamura | いい<ruby>提案<rt>ていあん</rt></ruby>ですね。<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>してください。*(Ý kiến hay đấy. Hãy ghi lại nhé.)* |

---

## Tình huống 8 — Phòng chủ nhiệm · 17:00, Ngọc tự so sánh ケアマネ vs 認定 trên giấy

| Vai | Lời thoại |
|---|---|
| Ngọc | (viết ra giấy, nói một mình) ケアマネのメリット…<ruby>国家資格<rt>こっかしかく</rt></ruby>、<ruby>独立<rt>どくりつ</rt></ruby>もできる、<ruby>給料<rt>きゅうりょう</rt></ruby>アップ。*(Ưu điểm của ケアマネ… chứng chỉ quốc gia, có thể làm độc lập, tăng lương.)* |
| Ngọc | <ruby>認定<rt>にんてい</rt></ruby>のメリットは…<ruby>現場<rt>げんば</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>れる、リーダー<ruby>育成<rt>いくせい</rt></ruby>に<ruby>特化<rt>とっか</rt></ruby>している。*(Ưu điểm của 認定 là… có thể ở lại hiện trường, chuyên về đào tạo người dẫn đầu.)* |
| An | (gõ cửa) <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しよろしいですか。*(chủ nhiệm, cho em hỏi một chút được không.)* |
| Ngọc | どうぞ。<ruby>考<rt>かんが</rt></ruby>えていたところ。*(Vào đi. Chị đang suy nghĩ đây.)* |
| An | あの…<ruby>主任<rt>しゅにん</rt></ruby>がケアマネを<ruby>目指<rt>めざ</rt></ruby>すなら、<ruby>私<rt>わたし</rt></ruby>も<ruby>将来<rt>しょうらい</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>にしたいです。*(À… nếu chị chủ nhiệm hướng đến ケアマネ, em cũng muốn lấy đó làm mục tiêu tương lai.)* |
| Ngọc | そう、ありがとう。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろうね。*(Vậy sao, cảm ơn em. Cùng cố gắng nhé.)* |

---

## Tình huống 9 — Hành lang gần cổng · 17:30, Hương nhắn tin, Ngọc nhắn lại

| Vai | Lời thoại |
|---|---|
| Ngọc | (đọc điện thoại) <ruby>Hương<rt>ふぁん</rt></ruby>からか。「ケアマネ<ruby>受験<rt>じゅけん</rt></ruby>する<ruby>気<rt>き</rt></ruby>ある?<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しない?」か。*(Tin của Hương à. "Em có định thi ケアマネ không? Cùng ôn không?".)* |
| Ngọc | (nhắn lại, đọc to) 「<ruby>今<rt>いま</rt></ruby><ruby>考<rt>かんが</rt></ruby>えているところ。まず<ruby>受験資格<rt>じゅけんしかく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しないと」*(nhắn lại, đọc to) "Chị đang suy nghĩ. Trước tiên phải xác nhận điều kiện dự thi đã."* |
| Ngọc | (nói thầm) <ruby>向こう<rt>むこう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことを<ruby>考<rt>かんが</rt></ruby>えていたんだね。<ruby>一人<rt>ひとり</rt></ruby>じゃないのかな。*(nói thầm) Hương cũng đang nghĩ điều tương tự. Có lẽ mình không đơn độc.)* |

---

## Tình huống 10 — Trên xe buýt về nhà · 18:10, Ngọc nghe podcast về ケアマネ

| Vai | Lời thoại |
|---|---|
| Ngọc | (nghe, lẩm nhẩm) 「<ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>、いわゆるケアマネジャーは、<ruby>要介護者<rt>ようかいごしゃ</rt></ruby>の<ruby>ケアプラン<rt>けあぷらん</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>し、サービス<ruby>調整<rt>ちょうせい</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>う<ruby>専門職<rt>せんもんしょく</rt></ruby>です」*(nghe, lẩm nhẩm) "介護支援専門員, tức ケアマネジャー, là chuyên gia lập ケアプラン và điều phối dịch vụ cho người cần chăm sóc."* |
| Ngọc | (ghi vào điện thoại) <ruby>ケアプラン<rt>けあぷらん</rt></ruby>の<ruby>作成<rt>さくせい</rt></ruby>…<ruby>私<rt>わたし</rt></ruby>は<ruby>今<rt>いま</rt></ruby>でも<ruby>少<rt>すこ</rt></ruby>し<ruby>関<rt>かか</rt></ruby>わっているから、<ruby>延長線<rt>えんちょうせん</rt></ruby>上にある<ruby>仕事<rt>しごと</rt></ruby>だな。*(ghi vào điện thoại) Lập ケアプラン… mình hiện cũng tham gia một chút, nên đây là công việc nằm trên con đường nối dài.)* |
| Ngọc | <ruby>認定<rt>にんてい</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る<ruby>道<rt>みち</rt></ruby>、ケアマネは<ruby>調整<rt>ちょうせい</rt></ruby>の<ruby>専門家<rt>せんもんか</rt></ruby>になる<ruby>道<rt>みち</rt></ruby>。どっちが<ruby>自分<rt>じぶん</rt></ruby>に<ruby>合<rt>あ</rt></ruby>っているかな。*(認定 là con đường ở lại hiện trường, ケアマネ là con đường trở thành chuyên gia điều phối. Cái nào hợp với mình hơn nhỉ.)* |

---

## Tình huống 11 — Nhà trọ · 19:30, ăn tối một mình, nhắn tin với Hương

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, tự nấu ăn, ngồi một mình) Hôm nay bếp chỉ có mình. Nhưng đầu óc thì đông người quá — ケアマネ, 認定, Yamamoto... |
| Hương (tin nhắn) | Ngọc, mày quyết chưa? ケアマネ hay 認定? |
| Ngọc (nhắn lại) | Đang nghĩ đây. Yamamoto nói 認定 chưa được đánh giá thống nhất. |
| Hương | Thì ケアマネ đi. Tao cũng đang tính. Mình cùng ôn được không? |
| Ngọc | Được chứ! Mình cùng thử một lần xem sao. |

---

## Tình huống 12 — Nhà trọ · 21:30, Ngọc gọi điện về kể cho mẹ nghe

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Mẹ ơi, ケアマネ tỉ lệ đỗ chỉ 17-23% thôi. Khó lắm. |
| Mẹ | (tiếng Việt) Hồi thi 介護福祉士 con cũng nói khó. Rồi đỗ mà. |
| Ngọc | (tiếng Việt) Lần này khác, phần y tế phức tạp hơn nhiều. Kanji y khoa con nhìn vào chưa hiểu gì. |
| Mẹ | (tiếng Việt) Thì từ từ học. Con chỉ lo ôn bài. Ít nhất thử một lần xem sao. |
| Ngọc | (tiếng Việt) Mẹ không lo con bỏ bê sức khỏe à? |
| Mẹ | (tiếng Việt) Lo chứ. Nhưng con mà được ケアマネ, mẹ mừng lắm. |

---

## Đọng lại chương 1

Ngọc đứng trước lựa chọn: **ケアマネジャー** (chứng chỉ quốc gia, tỉ lệ đỗ 17-23%, đổi hướng sang điều phối) hay **認定介護福祉士** (dân lập, 600h đào tạo, ở lại hiện trường, chưa phổ biến). Qua trao đổi với Yamamoto, Kobayashi, Sato và Hương, Ngọc nghiêng dần về **ケアマネ**. Yamamoto nhấn mạnh 認定 "chưa được đánh giá thống nhất". Ngọc sống một mình, quyết tâm tự mình ôn thi với sự đồng hành của Hương.

> Từ vựng chương này: ケアマネジャー・介護支援専門員・認定介護福祉士・国家資格・民間資格・受験資格・合格率・保健医療福祉サービス分野・ケアプラン作成・給付管理・現場・将来性・連携・カンファレンス・ケア計画書・アルブミン値・摂取量・体位変換', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000002, 800000032, NULL, 'markdown_book', 'T2. Quyết tâm thi ケアマネ (ケアマネ受験を決意)', '# Sách điều dưỡng viên quốc gia · T2. Quyết tâm thi ケアマネ (ケアマネ受験を決意)

> **Mục tiêu nhân vật:** Tháng 5 — Ngọc xác nhận điều kiện dự thi ケアマネ (5 năm thực tế/900 ngày), nghe tin cải cách 5→3 năm chưa chốt, rồi chính thức quyết định thi. Bàn với Yamamoto, Kobayashi và Hương.

---

## Bối cảnh

Tháng 5 năm 2032. Ngọc đã làm 介護福祉士 từ năm 2027 (5 năm). Cần tính xem 900 ngày thực tế có đủ không. Nghe tin 厚労省 đang bàn giảm điều kiện từ 5→3 năm nhưng chưa chính thức. Trong sách xử lý: "nghe tin cải cách, vẫn chuẩn bị theo 5 năm cũ cho chắc".

> ⚠️ Ghi chú: Điều kiện dự thi ケアマネジャー nêu trong chương này là "5 năm thực tế + 900 ngày trở lên" — đúng tại thời điểm 2032 trong câu chuyện. 厚労省 đang bàn cải cách xuống 3 năm nhưng chưa chính thức.

---

## Tình huống 1 — Phòng chủ nhiệm · 8:00, Ngọc tra cứu điều kiện dự thi

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn màn hình máy tính, đọc) 「ケアマネジャーの<ruby>受験資格<rt>じゅけんしかく</rt></ruby>：<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>として5<ruby>年以上<rt>ねんいじょう</rt></ruby>の<ruby>実務経験<rt>じつむけいけん</rt></ruby>、かつ<ruby>従事日数<rt>じゅうじにっすう</rt></ruby>900<ruby>日以上<rt>にちいじょう</rt></ruby>」*(đọc) "Điều kiện dự thi ケアマネジャー: 5 năm trở lên kinh nghiệm thực tế với tư cách 介護福祉士, và từ 900 ngày làm việc trở lên."* |
| Ngọc | (tính nhẩm) 2027<ruby>年<rt>ねん</rt></ruby>に<ruby>資格取得<rt>しかくしゅとく</rt></ruby>…<ruby>今<rt>いま</rt></ruby>2032<ruby>年<rt>ねん</rt></ruby>5<ruby>月<rt>がつ</rt></ruby>だから、ちょうど5<ruby>年<rt>ねん</rt></ruby>。<ruby>日数<rt>にっすう</rt></ruby>は…*(tính nhẩm) Lấy chứng chỉ năm 2027… Bây giờ tháng 5 năm 2032, vừa đúng 5 năm. Số ngày thì…)* |
| Ngọc | (nhìn bảng ghi chép) フルタイムで<ruby>働<rt>はたら</rt></ruby>いてきたから、たぶん1,500<ruby>日<rt>にち</rt></ruby>は<ruby>超<rt>こ</rt></ruby>えているはず。900<ruby>日<rt>にち</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>ない。*(nhìn bảng) Mình làm toàn thời gian từ đó đến nay nên chắc vượt 1.500 ngày. 900 ngày không vấn đề.)* |
| Ngọc | (nhẹ thở phào) よし、<ruby>条件<rt>じょうけん</rt></ruby>はクリアしている。*(thở phào) Tốt, đủ điều kiện rồi.)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 9:30, Yamamoto kể tin cải cách 5→3 năm

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>最近<rt>さいきん</rt></ruby><ruby>厚労省<rt>こうろうしょう</rt></ruby>がケアマネの<ruby>受験要件<rt>じゅけんようけん</rt></ruby>を5<ruby>年<rt>ねん</rt></ruby>から3<ruby>年<rt>ねん</rt></ruby>に<ruby>短縮<rt>たんしゅく</rt></ruby>する<ruby>案<rt>あん</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>しているって<ruby>知<rt>し</rt></ruby>ってた?*(Em Nguyễn, gần đây em có biết 厚労省 đang xem xét rút ngắn điều kiện dự thi ケアマネ từ 5 năm xuống 3 năm không?)* |
| Ngọc | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか!それって、<ruby>今年<rt>ことし</rt></ruby>から<ruby>適用<rt>てきよう</rt></ruby>されるんですか?*(Ôi, thật không ạ! Năm nay áp dụng rồi sao?)* |
| Yamamoto | まだ<ruby>決<rt>き</rt></ruby>まっていない。<ruby>検討中<rt>けんとうちゅう</rt></ruby>ってことで、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>発表<rt>はっぴょう</rt></ruby>はまだないの。*(Chưa quyết. Vẫn đang xem xét, chưa có thông báo chính thức.)* |
| Ngọc | じゃあ、<ruby>今年<rt>ことし</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>は5<ruby>年<rt>ねん</rt></ruby>ルールのままですか?*(Vậy thi năm nay vẫn theo quy tắc 5 năm ạ?)* |
| Yamamoto | たぶんそう。<ruby>改正<rt>かいせい</rt></ruby>されても<ruby>来年<rt>らいねん</rt></ruby>以降になると<ruby>思<rt>おも</rt></ruby>う。<ruby>今<rt>いま</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>するなら、5<ruby>年<rt>ねん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えておいたほうがいいよ。*(Chắc vậy. Dù có cải cách cũng nghĩ là từ năm sau trở đi. Nếu chuẩn bị từ bây giờ thì vẫn tính theo 5 năm cho chắc.)* |
| Ngọc | わかりました。<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>満<rt>み</rt></ruby>たしているので、5<ruby>年<rt>ねん</rt></ruby>のルールで<ruby>準備<rt>じゅんび</rt></ruby>します。*(Em hiểu rồi. Em đã đủ chắc chắn rồi, nên chuẩn bị theo quy tắc 5 năm ạ.)* |

---

## Tình huống 3 — Phòng họp nhỏ · 10:30, Ngọc báo cáo Kobayashi về quyết định thi

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>施設長<rt>しせつちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>よろしいですか。*(Giám đốc, anh có thời gian không ạ?)* |
| Kobayashi | どうぞ。何でしょう?*(Vào đi. Chuyện gì vậy?)* |
| Ngọc | ケアマネの<ruby>受験<rt>じゅけん</rt></ruby>を<ruby>決意<rt>けつい</rt></ruby>しました。<ruby>今年<rt>ことし</rt></ruby>11<ruby>月<rt>がつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。*(Em đã quyết định thi ケアマネ. Em hướng đến kỳ thi tháng 11 năm nay.)* |
| Kobayashi | そうですか。<ruby>受験資格<rt>じゅけんしかく</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>しましたか?*(Vậy sao. Em đã xác nhận điều kiện dự thi chưa?)* |
| Ngọc | はい。<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>として5<ruby>年<rt>ねん</rt></ruby>、<ruby>従事日数<rt>じゅうじにっすう</rt></ruby>も900<ruby>日<rt>にち</rt></ruby>を<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>超<rt>こ</rt></ruby>えています。*(Vâng. 5 năm với tư cách 介護福祉士, số ngày làm việc cũng vượt 900 ngày nhiều rồi.)* |
| Kobayashi | わかりました。<ruby>施設<rt>しせつ</rt></ruby>として<ruby>応援<rt>おうえん</rt></ruby>します。<ruby>学習<rt>がくしゅう</rt></ruby>の<ruby>費用<rt>ひよう</rt></ruby>は<ruby>一部補助<rt>いちぶほじょ</rt></ruby>できると<ruby>思<rt>おも</rt></ruby>います。*(Hiểu rồi. Cơ sở sẽ ủng hộ em. Tôi nghĩ có thể hỗ trợ một phần chi phí học tập.)* |
| Ngọc | ありがとうございます!<ruby>業務<rt>ぎょうむ</rt></ruby>への<ruby>影響<rt>えいきょう</rt></ruby>は<ruby>最小限<rt>さいしょうげん</rt></ruby>にするよう<ruby>努<rt>つと</rt></ruby>めます。*(Em cảm ơn ạ! Em sẽ cố gắng để ảnh hưởng đến công việc ở mức tối thiểu.)* |
| Kobayashi | 主任の<ruby>成長<rt>せいちょう</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>の<ruby>成長<rt>せいちょう</rt></ruby>です。<ruby>遠慮<rt>えんりょ</rt></ruby>なく。*(Sự trưởng thành của chủ nhiệm là sự trưởng thành của cơ sở. Đừng ngại gì cả.)* |

---

## Tình huống 4 — Khu ユニット A · 13:00, Ngọc giám sát TTS Tuấn thực hành移乗

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>チュアン<rt>ちゅあん</rt></ruby>さん、<ruby>移乗<rt>いじょう</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>かけをしっかりしてください。*(Tuấn ơi, trước khi chuyển tư thế hãy lên tiếng báo trước kẻ nhé.)* |
| Tuấn | はい。……<ruby>西田<rt>にしだ</rt></ruby>さん、<ruby>車椅子<rt>くるまいす</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りますね。<ruby>立<rt>た</rt></ruby>ち上がるとき<ruby>手<rt>て</rt></ruby>を<ruby>貸<rt>か</rt></ruby>します。*(Vâng. …Cụ Nishida, mình chuyển sang xe lăn nhé. Con đỡ cụ đứng lên.)* |
| Ngọc | (quan sát) 腰の<ruby>角度<rt>かくど</rt></ruby>、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>前<rt>まえ</rt></ruby>かがみに。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>体重<rt>たいじゅう</rt></ruby>を<ruby>活<rt>い</rt></ruby>かして。*(quan sát) Góc lưng nghiêng về phía trước thêm một chút. Dùng lực của chính người dùng.)* |
| Tuấn | (thực hiện) こうですか?*(Thế này ạ?)* |
| Ngọc | いいです。<ruby>自然<rt>しぜん</rt></ruby>な<ruby>動作<rt>どうさ</rt></ruby>になってきた。*(Được rồi. Động tác đang tự nhiên hơn rồi.)* |
| Tuấn | <ruby>主任<rt>しゅにん</rt></ruby>、ケアマネを<ruby>受験<rt>じゅけん</rt></ruby>するって<ruby>本当<rt>ほんとう</rt></ruby>ですか?*(Chủ nhiệm, chị thật sự thi ケアマネ ạ?)* |
| Ngọc | ええ、<ruby>決<rt>き</rt></ruby>めました。だからあなたたちにしっかり<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけてもらわないと。*(Ừ, quyết rồi. Vậy nên các em phải học kỹ thuật thật tốt nhé.)* |
| Tuấn | <ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>主任<rt>しゅにん</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>も<ruby>応援<rt>おうえん</rt></ruby>します!*(Em sẽ cố gắng. Em cũng cổ vũ chị đỗ!)* |

---

## Tình huống 5 — Phòng chủ nhiệm · 14:00, Ngọc và Yamamoto xem lịch thi cùng nhau

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、2032<ruby>年<rt>ねん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby><ruby>日程<rt>にってい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。*(Chị Yamamoto, mình xem lịch thi năm 2032 nhé.)* |
| Yamamoto | <ruby>例年<rt>れいねん</rt></ruby>だと10<ruby>月<rt>がつ</rt></ruby>の<ruby>第二日曜日<rt>だいににちようび</rt></ruby>あたりよ。<ruby>申込<rt>もうしこみ</rt></ruby>は5〜6<ruby>月<rt>がつ</rt></ruby>くらいに<ruby>始<rt>はじ</rt></ruby>まるはず。*(Hằng năm thường thì khoảng chủ nhật thứ hai tháng 10. Đăng ký chắc bắt đầu khoảng tháng 5-6.)* |
| Ngọc | では<ruby>今<rt>いま</rt></ruby>すぐ<ruby>申込<rt>もうしこみ</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しないと。*(Vậy phải xác nhận nơi đăng ký ngay bây giờ.)* |
| Yamamoto | <ruby>都道府県<rt>とどうふけん</rt></ruby>の<ruby>担当部署<rt>たんとうぶしょ</rt></ruby>に<ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせてみて。<ruby>試験<rt>しけん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>は60<ruby>問<rt>もん</rt></ruby>、120<ruby>分<rt>ぷん</rt></ruby>、マークシート<ruby>方式<rt>ほうしき</rt></ruby>。*(Thử liên hệ với bộ phận phụ trách của tỉnh/thành phố. Đề thi 60 câu, 120 phút, trắc nghiệm điền vào phiếu.)* |
| Ngọc | 2つの<ruby>分野<rt>ぶんや</rt></ruby>どちらも<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えないといけないんでしたね。*(Cần vượt điểm chuẩn ở cả 2 lĩnh vực đúng không ạ.)* |
| Yamamoto | そう。「<ruby>介護支援<rt>かいごしえん</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>」と「<ruby>保健医療福祉<rt>ほけんいりょうふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>」。<ruby>片方<rt>かたほう</rt></ruby>でも<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>下回<rt>したまわ</rt></ruby>ると<ruby>不合格<rt>ふごうかく</rt></ruby>。*(Đúng. "Lĩnh vực 介護支援サービス" và "lĩnh vực 保健医療福祉サービス". Chỉ cần một lĩnh vực dưới điểm chuẩn là trượt.)* |
| Ngọc | <ruby>厳<rt>きび</rt></ruby>しいですね。でも<ruby>頑張<rt>がんば</rt></ruby>ります。*(Nghiêm ngặt thật. Nhưng em sẽ cố gắng ạ.)* |

---

## Tình huống 6 — Khu ユニット B · 15:00, chăm sóc cụ Nishida — Ngọc thực hành ケアプラン tư duy

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>西田<rt>にしだ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>調子<rt>ちょうし</rt></ruby>はいかがですか?*(Cụ Nishida, hôm nay cụ cảm thấy thế nào ạ?)* |
| Cụ Nishida | うーん、<ruby>昨日<rt>きのう</rt></ruby>より<ruby>膝<rt>ひざ</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>くてね。*(Hm, hôm nay đầu gối đau hơn hôm qua.)* |
| Ngọc | そうですか。<ruby>歩行<rt>ほこう</rt></ruby>リハビリは<ruby>今日<rt>きょう</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>をしないようにしましょう。*(Vậy sao. Hôm nay việc đi bộ phục hồi chức năng mình không cố quá nhé.)* |
| Cụ Nishida | ありがとうよ。グエンさんはよく<ruby>気<rt>き</rt></ruby>がつくね。*(Cảm ơn cháu. Cháu Nguyễn tinh ý lắm nhỉ.)* |
| Ngọc | (trong đầu) こういう<ruby>観察<rt>かんさつ</rt></ruby>が、ケアマネになったら<ruby>計画書<rt>けいかくしょ</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>できるようになるんだ。*(trong đầu) Việc quan sát như thế này, khi thành ケアマネ sẽ có thể phản ánh vào kế hoạch chăm sóc được đấy.)* |
| Ngọc | <ruby>西田<rt>にしだ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のことは<ruby>記録<rt>きろく</rt></ruby>しておきます。ケアマネの<ruby>先生<rt>せんせい</rt></ruby>にも<ruby>伝<rt>つた</rt></ruby>えますね。*(Cụ Nishida, chuyện hôm nay em ghi lại ạ. Em cũng sẽ báo cho ケアマネ biết nhé.)* |
| Cụ Nishida | よろしくね、お<ruby>願<rt>ねが</rt></ruby>いします。*(Cháu nhờ nhé, cảm ơn.)* |

---

## Tình huống 7 — Phòng họp nhân viên · 16:00, Ngọc thông báo quyết định thi cho cả nhóm

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、ちょっとお<ruby>知<rt>し</rt></ruby>らせがあります。<ruby>私<rt>わたし</rt></ruby>は<ruby>今年<rt>ことし</rt></ruby>のケアマネ<ruby>試験<rt>しけん</rt></ruby>を<ruby>受験<rt>じゅけん</rt></ruby>することに<ruby>決<rt>き</rt></ruby>めました。*(Mọi người, tôi có một thông báo. Tôi đã quyết định thi ケアマネ năm nay.)* |
| An | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか!<ruby>頑張<rt>がんば</rt></ruby>ってください!*(Ôi, thật không ạ! Chị cố lên!)* |
| Tuấn | すごいです、<ruby>主任<rt>しゅにん</rt></ruby>!*(Tuyệt vời ạ, chị chủ nhiệm!)* |
| Linh | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>します!*(Nhất định chị đỗ!)* |
| Ngọc | ありがとう。ただ、<ruby>業務<rt>ぎょうむ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>おろそかにしません。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。*(Cảm ơn mọi người. Nhưng tôi tuyệt đối không để sao nhãng công việc. Cùng nhau cố gắng nhé.)* |
| Yamamoto | (gật đầu) いい<ruby>報告<rt>ほうこく</rt></ruby>でした。<ruby>施設<rt>しせつ</rt></ruby>も<ruby>一丸<rt>いちがん</rt></ruby>となって<ruby>応援<rt>おうえん</rt></ruby>しましょう。*(Thông báo hay lắm. Cả cơ sở cùng nhau cổ vũ nhé.)* |

---

## Tình huống 8 — Phòng ăn cơ sở · 17:00, bàn ăn với Nakamura về liên kết 介護×医療

| Vai | Lời thoại |
|---|---|
| Nakamura | グエン<ruby>主任<rt>しゅにん</rt></ruby>、ケアマネを<ruby>取<rt>と</rt></ruby>ると、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>幅<rt>はば</rt></ruby>がぐっと<ruby>広<rt>ひろ</rt></ruby>がりますよ。*(Chủ nhiệm Nguyễn, khi lấy được ケアマネ, phạm vi công việc sẽ mở rộng hẳn đấy.)* |
| Ngọc | <ruby>医療<rt>いりょう</rt></ruby><ruby>面<rt>めん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>です。<ruby>保健医療福祉<rt>ほけんいりょうふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいと<ruby>聞<rt>き</rt></ruby>いて。*(Phần y tế em lo nhất. Em nghe nói đề lĩnh vực 保健医療福祉サービス khó lắm.)* |
| Nakamura | <ruby>医療<rt>いりょう</rt></ruby>のことで<ruby>分<rt>わ</rt></ruby>からないことがあったら、<ruby>私<rt>わたし</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてください。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。*(Có gì không hiểu về y tế thì hỏi tôi nhé. Cùng nhau xác nhận.)* |
| Ngọc | ありがとうございます!<ruby>心強<rt>こころづよ</rt></ruby>いです。*(Em cảm ơn! Em yên tâm hơn nhiều rồi.)* |
| Nakamura | ケアマネと<ruby>看護師<rt>かんごし</rt></ruby>が<ruby>連携<rt>れんけい</rt></ruby>できると、<ruby>利用者<rt>りようしゃ</rt></ruby>さんのケアの<ruby>質<rt>しつ</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がりますから。*(Nếu ケアマネ và y tá phối hợp được tốt, chất lượng chăm sóc người dùng sẽ nâng lên.)* |
| Ngọc | <ruby>絶対<rt>ぜったい</rt></ruby>そうですね。<ruby>医療<rt>いりょう</rt></ruby>と<ruby>介護<rt>かいご</rt></ruby>の<ruby>橋渡<rt>はしわた</rt></ruby>しができる人になりたいです。*(Chắc chắn thế. Em muốn trở thành người có thể làm cầu nối giữa y tế và điều dưỡng.)* |

---

## Tình huống 9 — Trước cổng cơ sở · 17:45, Hương đến thăm sau ca làm

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Nhật) お<ruby>疲<rt>つか</rt></ruby>れさまです、グエンさん。<ruby>決<rt>き</rt></ruby>めたんですね?*(Chị vất vả rồi, chị Nguyễn. Chị quyết rồi đúng không?)* |
| Ngọc | (tiếng Nhật) ええ、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>決<rt>き</rt></ruby>めた。<ruby>Hương<rt>ふぁん</rt></ruby>さんはどうですか?*(Ừ, quyết chính thức rồi. Hương thì sao?)* |
| Hương | (tiếng Nhật) <ruby>私<rt>わたし</rt></ruby>も。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>ないし、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しましょう!*(Em cũng vậy. Điều kiện không vấn đề gì, mình cùng ôn nhé!)* |
| Ngọc | (tiếng Nhật) よかった。<ruby>一人<rt>ひとり</rt></ruby>だとつらいから。*(Tốt quá. Một mình thì vất vả lắm.)* |
| Hương | (tiếng Nhật) <ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>勉強会<rt>べんきょうかい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りましょう。<ruby>図書館<rt>としょかん</rt></ruby>とか、どうですか?*(Cuối tuần mình lập nhóm ôn đi. Thư viện chẳng hạn, thế nào?)* |
| Ngọc | (tiếng Nhật) いいですね!でもまず<ruby>申込<rt>もうしこみ</rt></ruby>を<ruby>済<rt>す</rt></ruby>ませてから。*(Hay đấy! Nhưng trước hết xong thủ tục đăng ký đã.)* |

---

## Tình huống 10 — Nhà trọ · 20:00, Ngọc gọi điện cho mẹ về điều kiện thi

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Điều kiện thi con đủ hết chưa? Hỏi kỹ chưa? |
| Ngọc | (tiếng Việt) Đủ hết rồi. 5 năm kinh nghiệm, số ngày làm việc hơn 1.500 ngày, vượt 900 ngày quy định. |
| Mẹ | (tiếng Việt) Còn gì nữa không? |
| Ngọc | (tiếng Việt) Nghe nói 厚労省 đang bàn giảm xuống 3 năm, nhưng chưa chốt. Chị Yamamoto bảo cứ tính theo 5 năm cho chắc. |
| Mẹ | (tiếng Việt) Vậy thì ổn. Con đủ điều kiện rõ ràng rồi. Giờ lo ôn thôi. |
| Ngọc | (tiếng Việt) Ừ mẹ. Hương cũng thi nên sẽ ôn cùng nhau. Cuối tuần mình lập nhóm. |
| Mẹ | (tiếng Việt) Tốt. Con chăm sóc sức khỏe rồi ôn bài nha. Mẹ ủng hộ con. |

---

## Tình huống 11 — Phòng ngủ · 22:00, Ngọc viết kế hoạch ôn thi đêm đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | (ghi vào sổ) 5<ruby>月<rt>がつ</rt></ruby>〜6<ruby>月<rt>がつ</rt></ruby>：<ruby>申込<rt>もうしこみ</rt></ruby>・<ruby>テキスト<rt>てきすと</rt></ruby><ruby>選<rt>えら</rt></ruby>び。*(ghi vào sổ) Tháng 5-6: Đăng ký và chọn sách ôn.)* |
| Ngọc | 7<ruby>月<rt>がつ</rt></ruby>〜8<ruby>月<rt>がつ</rt></ruby>：<ruby>基礎<rt>きそ</rt></ruby>インプット。<ruby>保健医療<rt>ほけんいりょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>重点的<rt>じゅうてんてき</rt></ruby>に。*(Tháng 7-8: Nắm kiến thức nền. Tập trung vào lĩnh vực 保健医療.)* |
| Ngọc | 9<ruby>月<rt>がつ</rt></ruby>〜10<ruby>月<rt>がつ</rt></ruby>：<ruby>模試<rt>もし</rt></ruby>と<ruby>弱点<rt>じゃくてん</rt></ruby><ruby>克服<rt>こくふく</rt></ruby>。<ruby>試験<rt>しけん</rt></ruby>は10<ruby>月<rt>がつ</rt></ruby>…*(Tháng 9-10: Thi thử và khắc phục điểm yếu. Thi vào tháng 10…)* |
| Ngọc | (thở ra) やるしかない。*(thở ra) Không có cách nào khác ngoài cố gắng.)* |

---

## Tình huống 12 — Nhà trọ · 22:30, Ngọc tự nhủ trước khi ngủ

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Nhật, nhìn vào bảng kế hoạch dán trên tường) ケアマネ、<ruby>頑張<rt>がんば</rt></ruby>るしかない。<ruby>一人<rt>ひとり</rt></ruby>だけど、<ruby>一人<rt>ひとり</rt></ruby>じゃない。ハーさんがいる、<ruby>山本<rt>やまもと</rt></ruby>さんがいる。*(Chỉ có thể cố gắng thôi. Dù ở một mình, nhưng không phải chỉ có một mình. Có Hương, có Yamamoto-san.)* |
| Ngọc | (tiếng Nhật, tắt đèn) ケアマネ<ruby>合格<rt>ごうかく</rt></ruby>したら、お<ruby>母<rt>かあ</rt></ruby>さんに<ruby>電話<rt>でんわ</rt></ruby>しよう。きっと<ruby>喜<rt>よろこ</rt></ruby>ぶ。*(Thi đỗ ケアマネ rồi sẽ gọi điện cho mẹ. Chắc chắn mẹ vui lắm.)* |

---

## Đọng lại chương 2

Ngọc xác nhận đủ điều kiện: **5 năm + hơn 1.500 ngày** (vượt 900 ngày). Nghe tin cải cách 5→3 năm từ Yamamoto nhưng chưa chính thức — quyết định **vẫn chuẩn bị theo 5 năm**. Báo Kobayashi, nhận được hỗ trợ học phí một phần. Thành lập nhóm ôn với Hương. Lập kế hoạch ôn 5 tháng (5→10/2032). Bé Mai đã nói tiếng Nhật tự nhiên hơn, thậm chí kể về mẹ cho cả lớp.

> ⚠️ Điều kiện thi ケアマネジャー trong chương: 介護福祉士 5 năm + 900 ngày — đúng tại 2032. 厚労省 đang bàn cải cách 5→3 năm nhưng chưa chính thức.

> Từ vựng chương này: 受験資格・実務経験・従事日数・厚労省・改正・検討中・介護支援サービス分野・保健医療福祉サービス分野・基準点・マークシート方式・ケアプラン・連携・橋渡し・申込・模試・弱点克服', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000003, 800000032, NULL, 'markdown_book', 'T3. Bắt đầu ôn thi (受験勉強の始まり)', '# Sách điều dưỡng viên quốc gia · T3. Bắt đầu ôn thi (受験勉強の始まり)

> **Mục tiêu nhân vật:** Tháng 6 — Ngọc đăng ký thi chính thức, mua sách ôn, bắt đầu học. Vật lộn với phần 保健医療福祉サービス分野 đầy kanji y khoa nặng như 褥瘡予防・廃用症候群・認知機能低下. Hương ôn cùng, Yamamoto cố vấn.

---

## Bối cảnh

Tháng 6 năm 2032. Ngọc vừa hoàn tất thủ tục đăng ký thi ケアマネ tại cơ quan tỉnh. Bộ sách ôn 3 cuốn dày nằm trên bàn. Tuần đầu tiên ôn bài — hứng khởi xen lẫn nản lòng khi gặp những thuật ngữ y tế xa lạ mà kể cả kanji cũng không đọc được.

---

## Tình huống 1 — Phòng chủ nhiệm · 8:30, Ngọc nhận giấy xác nhận đăng ký thi

| Vai | Lời thoại |
|---|---|
| Ngọc | (cầm giấy, đọc) 「ケアマネジャー<ruby>試験<rt>しけん</rt></ruby><ruby>受験票<rt>じゅけんひょう</rt></ruby><ruby>送付<rt>そうふ</rt></ruby><ruby>予定<rt>よてい</rt></ruby>：9<ruby>月中旬<rt>がつちゅうじゅん</rt></ruby>」…<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>んだんだ。*(cầm giấy đọc) "Dự kiến gửi phiếu dự thi ケアマネジャー: giữa tháng 9"… Mình thật sự đã đăng ký rồi đấy.)* |
| Ngọc | (nhìn lịch) 10<ruby>月<rt>がつ</rt></ruby>まであと4<ruby>か月<rt>かげつ</rt></ruby>。<ruby>始<rt>はじ</rt></ruby>めなきゃ。*(nhìn lịch) Còn 4 tháng đến tháng 10. Phải bắt đầu thôi.)* |
| An | (gõ cửa) <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>申込<rt>もうしこみ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きましたか?*(chủ nhiệm, giấy đăng ký đến rồi à?)* |
| Ngọc | ええ。いよいよ<ruby>正式<rt>せいしき</rt></ruby>に<ruby>決<rt>き</rt></ruby>まったって<ruby>感<rt>かん</rt></ruby>じ。<ruby>今夜<rt>こんや</rt></ruby>から<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>める。*(Ừ. Giờ mới thật sự thấy chính thức rồi. Tối nay mình bắt đầu ôn.)* |
| An | <ruby>応援<rt>おうえん</rt></ruby>しています!*(Em cổ vũ chị!)* |

---

## Tình huống 2 — Nhà sách gần ga · 12:30, Ngọc và Hương chọn sách ôn thi

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Nhật) このテキスト、<ruby>評判<rt>ひょうばん</rt></ruby>がいいですよ。「<ruby>ケアマネ<rt>けあまね</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>テキスト2032」。*(sách này nổi tiếng tốt đấy. "Sách ôn đỗ ケアマネ 2032".)* |
| Ngọc | (tiếng Nhật) (lật trang mục lục) うわ、「<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>」「<ruby>認知機能<rt>にんちきのう</rt></ruby><ruby>低下<rt>ていか</rt></ruby>」「<ruby>褥瘡予防<rt>じょくそうよぼう</rt></ruby>」…このまま<ruby>漢字<rt>かんじ</rt></ruby>がずらっと<ruby>並<rt>なら</rt></ruby>んでいる。*(lật trang mục lục) Ôi, "廃用症候群", "認知機能低下", "褥瘡予防"… chữ Hán xếp hàng liền nhau thế này.)* |
| Hương | (tiếng Nhật) <ruby>私<rt>わたし</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>たとき、<ruby>泣<rt>な</rt></ruby>きそうになった。*(Em cũng suýt khóc khi nhìn lần đầu.)* |
| Ngọc | (tiếng Nhật) でも、これを<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えないと<ruby>合格<rt>ごうかく</rt></ruby>できないのよね。<ruby>過去問<rt>かこもん</rt></ruby>集もいる?*(Nhưng không vượt qua cái này thì không đỗ được. Cần cả đề thi cũ nữa không?)* |
| Hương | (tiếng Nhật) <ruby>必須<rt>ひっす</rt></ruby>です!<ruby>過去問<rt>かこもん</rt></ruby>3<ruby>年分<rt>ねんぶん</rt></ruby>くらいやったほうがいいって<ruby>聞<rt>き</rt></ruby>きました。*(Cần thiết! Em nghe nói nên làm đề thi cũ khoảng 3 năm gần đây.)* |
| Ngọc | (tiếng Nhật) じゃあ、テキストと<ruby>過去問<rt>かこもん</rt></ruby>集を<ruby>一冊<rt>いっさつ</rt></ruby>ずつ<ruby>買<rt>か</rt></ruby>おう。*(Vậy mỗi thứ mua một cuốn nhé, sách ôn và đề thi cũ.)* |

---

## Tình huống 3 — Phòng nghỉ nhân viên · 14:00, Yamamoto hướng dẫn cách ôn hiệu quả

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、ケアマネの<ruby>勉強<rt>べんきょう</rt></ruby>、どこから<ruby>始<rt>はじ</rt></ruby>めればいいですか?*(Chị Yamamoto, ôn ケアマネ bắt đầu từ đâu thì tốt ạ?)* |
| Yamamoto | まず<ruby>全体像<rt>ぜんたいぞう</rt></ruby>をつかむことよ。テキストを<ruby>一度<rt>いちど</rt></ruby><ruby>通読<rt>つうどく</rt></ruby>して、どんな<ruby>分野<rt>ぶんや</rt></ruby>があるか<ruby>把握<rt>はあく</rt></ruby>する。*(Trước hết nắm bức tranh tổng thể. Đọc qua sách ôn một lần, hiểu có những lĩnh vực nào.)* |
| Ngọc | <ruby>保健医療福祉<rt>ほけんいりょうふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しいって<ruby>聞<rt>き</rt></ruby>きました。*(Em nghe nói lĩnh vực 保健医療福祉サービス đặc biệt khó.)* |
| Yamamoto | そう。「<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>」「<ruby>誤嚥性肺炎<rt>ごえんせいはいえん</rt></ruby>」「<ruby>服薬管理<rt>ふくやくかんり</rt></ruby>」あたりは<ruby>必ず<rt>かならず</rt></ruby><ruby>出<rt>で</rt></ruby>る。*(Đúng. "廃用症候群", "誤嚥性肺炎", "服薬管理" thế nào cũng ra đề.)* |
| Ngọc | <ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>は「<ruby>不動<rt>ふどう</rt></ruby>による<ruby>身体機能<rt>しんたいきのう</rt></ruby>の<ruby>低下<rt>ていか</rt></ruby>」ですよね?*(廃用症候群 là "suy giảm chức năng cơ thể do bất động" đúng không ạ?)* |
| Yamamoto | その<ruby>通<rt>とお</rt></ruby>り。よく<ruby>知<rt>し</rt></ruby>ってるじゃない。<ruby>現場<rt>げんば</rt></ruby>で<ruby>見<rt>み</rt></ruby>てきたからね。*(Đúng vậy. Em biết tốt đấy. Vì đã thấy ở hiện trường mà.)* |
| Ngọc | でも<ruby>試験<rt>しけん</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>うんですよね。<ruby>選択肢<rt>せんたくし</rt></ruby>のひっかけが<ruby>怖<rt>こわ</rt></ruby>くて。*(Nhưng cách diễn đạt trong đề thi thì khác đúng không. Em sợ câu đánh lừa trong các lựa chọn.)* |
| Yamamoto | だから<ruby>過去問<rt>かこもん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>なの。<ruby>問題<rt>もんだい</rt></ruby>の<ruby>パターン<rt>ぱたーん</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>える。*(Vậy nên đề thi cũ mới quan trọng. Học thuộc kiểu ra đề.)* |

---

## Tình huống 4 — Khu ユニット A · 15:00, Ngọc thực hành vừa làm vừa nhớ kiến thức ôn thi

| Vai | Lời thoại |
|---|---|
| Ngọc | (đang hỗ trợ cụ Tanabe ăn, nói nhẩm) <ruby>誤嚥<rt>ごえん</rt></ruby>…<ruby>嚥下<rt>えんげ</rt></ruby><ruby>機能低下<rt>きのうていか</rt></ruby>…<ruby>食形態<rt>しょくけいたい</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>…*(đang hỗ trợ cụ Tanabe ăn, nói nhẩm) Sặc thức ăn… suy giảm chức năng nuốt… điều chỉnh hình thức bữa ăn…)* |
| Đức | (nhỏ tiếng) <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>何<rt>なに</rt></ruby>かつぶやいています?*(nhỏ tiếng) Chị chủ nhiệm đang lẩm nhẩm gì vậy?)* |
| Ngọc | (thì thầm cười) <ruby>勉強<rt>べんきょう</rt></ruby>してた。<ruby>現場<rt>げんば</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>試験<rt>しけん</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>がつながっているから、<ruby>同時<rt>どうじ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えようと<ruby>思<rt>おも</rt></ruby>って。*(thì thầm cười) Chị đang ôn bài. Vì công việc hiện trường liên kết với kiến thức thi, nên chị định học song song.)* |
| Đức | (tiếng Nhật) なるほど。でも、<ruby>利用者<rt>りようしゃ</rt></ruby>さんに<ruby>集中<rt>しゅうちゅう</rt></ruby>してくださいよ。*(À vậy. Nhưng mà tập trung vào người dùng nhé chị.)* |
| Ngọc | そうよね、ごめん。*(Đúng thật, xin lỗi nhé.)* |
| Ngọc | (cụ Tanabe) <ruby>田辺<rt>たなべ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みにくくないですか?*(Cụ Tanabe, hôm nay cụ có thấy khó nuốt không ạ?)* |
| Cụ Tanabe | うん、<ruby>少<rt>すこ</rt></ruby>しね。*(Ừ, hơi khó một chút.)* |
| Ngọc | では、<ruby>今日<rt>きょう</rt></ruby>はソフト<ruby>食<rt>しょく</rt></ruby>にしましょう。<ruby>中村<rt>なかむら</rt></ruby>さんに<ruby>相談<rt>そうだん</rt></ruby>します。*(Vậy hôm nay mình dùng thức ăn mềm nhé. Chị sẽ hỏi cô Nakamura.)* |

---

## Tình huống 5 — Phòng chủ nhiệm · 17:30, Ngọc đọc sách ôn sau ca làm

| Vai | Lời thoại |
|---|---|
| Ngọc | (mở sách) 「<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>行動<rt>こうどう</rt></ruby>・<ruby>心理症状<rt>しんりしょうじょう</rt></ruby>（BPSD）：<ruby>幻覚<rt>げんかく</rt></ruby>・<ruby>妄想<rt>もうそう</rt></ruby>・<ruby>徘徊<rt>はいかい</rt></ruby>・<ruby>興奮<rt>こうふん</rt></ruby>など」*(mở sách) "Triệu chứng hành vi và tâm lý của sa sút trí tuệ (BPSD): ảo giác, hoang tưởng, đi lang thang, kích động v.v."* |
| Ngọc | (gạch chân, lẩm nhẩm) BPSD…<ruby>現場<rt>げんば</rt></ruby>では<ruby>毎日<rt>まいにち</rt></ruby><ruby>見<rt>み</rt></ruby>ているのに、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>用語<rt>ようご</rt></ruby>だと<ruby>急<rt>きゅう</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しく<ruby>感<rt>かん</rt></ruby>じる。*(gạch chân, lẩm nhẩm) BPSD… Ở hiện trường ngày nào cũng thấy, vậy mà khi thành thuật ngữ chính thức lại cảm thấy khó hẳn.)* |
| Ngọc | (tiếp tục đọc, nhăn mặt) 「<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>の<ruby>予防<rt>よぼう</rt></ruby>：<ruby>早期離床<rt>そうきりしょう</rt></ruby>・<ruby>関節可動域訓練<rt>かんせつかどういくんれん</rt></ruby>・<ruby>漸増抵抗運動<rt>ぜんぞうていこううんどう</rt></ruby>」*(tiếp tục đọc, nhăn mặt) "Phòng ngừa 廃用症候群: rời giường sớm, tập vận động khớp, bài tập tăng sức đề kháng dần.")* |
| Ngọc | 「<ruby>漸増抵抗運動<rt>ぜんぞうていこううんどう</rt></ruby>」…<ruby>漸<rt>ぜん</rt></ruby>って<ruby>何<rt>なん</rt></ruby>て<ruby>読<rt>よ</rt></ruby>むの?*(「漸増抵抗運動」… 漸 đọc là gì vậy?)* |
| Ngọc | (tra từ điển điện thoại) 「ぜんぞう」か。「<ruby>だんだん<rt>だんだん</rt></ruby><ruby>増<rt>ふ</rt></ruby>やす」という<ruby>意味<rt>いみ</rt></ruby>ね。*(tra điện thoại) "ぜんぞう" à. Nghĩa là "tăng dần dần" phải không.)* |

---

## Tình huống 6 — Thư viện gần nhà · Thứ 7 tuần đó, buổi ôn nhóm đầu tiên cùng Hương

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Nhật) グエンさん、「<ruby>要介護認定<rt>ようかいごにんてい</rt></ruby>」の<ruby>手順<rt>てじゅん</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりましたか?*(chị Nguyễn, chị hiểu quy trình "要介護認定" chưa?)* |
| Ngọc | (tiếng Nhật) <ruby>一次判定<rt>いちじはんてい</rt></ruby>→<ruby>二次判定<rt>にじはんてい</rt></ruby>→<ruby>認定<rt>にんてい</rt></ruby>、でしょ?<ruby>主治医<rt>しゅじい</rt></ruby><ruby>意見書<rt>いけんしょ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>で。*(Sơ bộ → thẩm định → công nhận đúng không? Cần ý kiến bác sĩ chủ trị nữa.)* |
| Hương | (tiếng Nhật) そう!<ruby>認定調査員<rt>にんていちょうさいん</rt></ruby>が<ruby>訪問<rt>ほうもん</rt></ruby>して74<ruby>項目<rt>こうもく</rt></ruby>チェックするのよ。*(Đúng! Điều tra viên đến thăm kiểm tra 74 mục.)* |
| Ngọc | (tiếng Nhật) 74<ruby>項目<rt>こうもく</rt></ruby>…<ruby>全部<rt>ぜんぶ</rt></ruby>は<ruby>覚<rt>おぼ</rt></ruby>えられないな。でも<ruby>大分類<rt>だいぶんるい</rt></ruby>の6つは<ruby>覚<rt>おぼ</rt></ruby>えた。*(74 mục… không nhớ hết được. Nhưng 6 nhóm lớn thì nhớ rồi.)* |
| Hương | (tiếng Nhật) <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>言<rt>い</rt></ruby>ってみましょう。「<ruby>身体機能<rt>しんたいきのう</rt></ruby>・<ruby>起居動作<rt>きいきょどうさ</rt></ruby>・<ruby>生活機能<rt>せいかつきのう</rt></ruby>・<ruby>認知機能<rt>にんちきのう</rt></ruby>・<ruby>精神<rt>せいしん</rt></ruby>・<ruby>行動障害<rt>こうどうしょうがい</rt></ruby>・<ruby>社会生活<rt>しゃかいせいかつ</rt></ruby>への<ruby>適応<rt>てきおう</rt></ruby>」*(Cùng đọc to nào. "Chức năng cơ thể・Tư thế vận động・Chức năng sinh hoạt・Nhận thức・Tâm thần/Rối loạn hành vi・Thích nghi đời sống xã hội".)* |
| Ngọc | (tiếng Nhật) (cùng đọc to) …あ、これなら<ruby>覚<rt>おぼ</rt></ruby>えられそう。*(cùng đọc to) …À, thế này thì có thể nhớ được.)* |

---

## Tình huống 7 — Thư viện · 14:00, vật lộn với phần 保険給付

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn vào sách, nhăn mặt) 「<ruby>居宅介護支援費<rt>きょたくかいごしえんひ</rt></ruby>」「<ruby>施設介護サービス費<rt>しせつかいごさーびすひ</rt></ruby>」「<ruby>地域密着型<rt>ちいきみっちゃくがた</rt></ruby>サービス<ruby>費<rt>ひ</rt></ruby>」…*(nhìn vào sách, nhăn mặt) "居宅介護支援費", "施設介護サービス費", "地域密着型サービス費"…)* |
| Ngọc | <ruby>もう<rt>もう</rt></ruby>ダメだ。<ruby>全部<rt>ぜんぶ</rt></ruby>同じに<ruby>見<rt>み</rt></ruby>える。*(Chịu rồi. Trông tất cả giống nhau hết.)* |
| Hương | (tiếng Nhật) <ruby>分<rt>わ</rt></ruby>かる、<ruby>分<rt>わ</rt></ruby>かる。でも<ruby>整理<rt>せいり</rt></ruby>するとね…「<ruby>居宅<rt>きょたく</rt></ruby>」は<ruby>自宅<rt>じたく</rt></ruby>で<ruby>受<rt>う</rt></ruby>けるサービス、「<ruby>施設<rt>しせつ</rt></ruby>」は<ruby>入所<rt>にゅうしょ</rt></ruby>して<ruby>受<rt>う</rt></ruby>けるサービス。*(Hiểu hiểu. Nhưng khi sắp xếp lại thì… "居宅" là dịch vụ nhận tại nhà, "施設" là dịch vụ nhận khi vào ở.)* |
| Ngọc | (tiếng Nhật) あ、そう<ruby>整理<rt>せいり</rt></ruby>すると<ruby>分<rt>わ</rt></ruby>かりやすい!*(tiếng Nhật) À, sắp xếp vậy thì dễ hiểu hơn!)* |
| Hương | (tiếng Nhật) 「<ruby>地域密着型<rt>ちいきみっちゃくがた</rt></ruby>」は<ruby>住<rt>す</rt></ruby>んでいる<ruby>市区町村<rt>しくちょうそん</rt></ruby>だけで<ruby>使<rt>つか</rt></ruby>えるサービス。*(tiếng Nhật) "地域密着型" là dịch vụ chỉ dùng được ở thành phố/quận/phường mình ở.)* |
| Ngọc | (tiếng Nhật) なるほど!<ruby>Hương<rt>ふぁん</rt></ruby>さん、<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>上手<rt>うま</rt></ruby>いです。*(À ra vậy! Hương giảng hay lắm đó.)* |

---

## Tình huống 8 — Phòng ăn cơ sở thứ 2 · 14:00, Ngọc hỏi Nakamura về 服薬管理

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>服薬管理<rt>ふくやくかんり</rt></ruby>について、<ruby>試験<rt>しけん</rt></ruby>で<ruby>問<rt>と</rt></ruby>われる<ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらえますか?*(Cô Nakamura, về 服薬管理, cô có thể dạy em phần hay ra đề thi không?)* |
| Nakamura | いいですよ。まず「<ruby>ポリファーマシー<rt>ぽりふぁーましー</rt></ruby>」って<ruby>知<rt>し</rt></ruby>ってますか?*(Được chứ. Trước hết "ポリファーマシー" em có biết không?)* |
| Ngọc | えっと…<ruby>多剤服用<rt>たざいふくよう</rt></ruby>、ですか?*(Ơm… uống nhiều loại thuốc, đúng không?)* |
| Nakamura | そう!6<ruby>種類以上<rt>しゅるいいじょう</rt></ruby>の<ruby>薬<rt>くすり</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んでいると<ruby>副作用<rt>ふくさよう</rt></ruby>のリスクが<ruby>高<rt>たか</rt></ruby>くなる。<ruby>高齢者<rt>こうれいしゃ</rt></ruby>に<ruby>特<rt>とく</rt></ruby>に<ruby>多<rt>おお</rt></ruby>い<ruby>問題<rt>もんだい</rt></ruby>。*(Đúng! Uống từ 6 loại thuốc trở lên thì nguy cơ tác dụng phụ tăng cao. Vấn đề đặc biệt phổ biến ở người cao tuổi.)* |
| Ngọc | ケアマネとして、どう<ruby>対応<rt>たいおう</rt></ruby>するんですか?*(Với tư cách ケアマネ thì xử lý thế nào ạ?)* |
| Nakamura | <ruby>主治医<rt>しゅじい</rt></ruby>や<ruby>薬剤師<rt>やくざいし</rt></ruby>と<ruby>連携<rt>れんけい</rt></ruby>して<ruby>服薬<rt>ふくやく</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>する。「<ruby>かかりつけ薬剤師<rt>かかりつけやくざいし</rt></ruby>」の<ruby>活用<rt>かつよう</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>。*(Phối hợp với bác sĩ chủ trị và dược sĩ để sắp xếp lại việc dùng thuốc. Việc tận dụng "dược sĩ phụ trách" cũng quan trọng.)* |
| Ngọc | (ghi nhanh) <ruby>主治医<rt>しゅじい</rt></ruby>・<ruby>薬剤師<rt>やくざいし</rt></ruby>・かかりつけ…これ、<ruby>試験<rt>しけん</rt></ruby>に<ruby>出<rt>で</rt></ruby>そうですね。*(ghi nhanh) Bác sĩ chủ trị・dược sĩ・かかりつけ… cái này chắc ra đề nhỉ.)* |
| Nakamura | <ruby>必ず<rt>かならず</rt></ruby><ruby>出<rt>で</rt></ruby>ますよ。*(Chắc chắn ra đề đấy.)* |

---

## Tình huống 9 — Phòng chủ nhiệm · 17:00, Ngọc báo cáo Yamamoto về tiến độ học

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>今週<rt>こんしゅう</rt></ruby>は「<ruby>要介護認定<rt>ようかいごにんてい</rt></ruby>」と「<ruby>保険給付<rt>ほけんきゅうふ</rt></ruby>」を<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しました。*(Chị Yamamoto, tuần này em ôn trọng tâm về "要介護認定" và "保険給付".)* |
| Yamamoto | 「<ruby>保険給付<rt>ほけんきゅうふ</rt></ruby>」は<ruby>範囲<rt>はんい</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>いから<ruby>大変<rt>たいへん</rt></ruby>だよ。<ruby>頭<rt>あたま</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってきた?*(保険給付 phạm vi rộng nên vất lắm. Vào đầu chưa?)* |
| Ngọc | 少しずつは。でも<ruby>保健医療福祉<rt>ほけんいりょうふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むだけで<ruby>時間<rt>じかん</rt></ruby>がかかる。*(Từng chút một. Nhưng lĩnh vực 保健医療福祉サービス đặc biệt khó. Chỉ đọc chữ Hán thôi đã mất thời gian rồi.)* |
| Yamamoto | <ruby>外国語<rt>がいこくご</rt></ruby>として<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>学<rt>まな</rt></ruby>んできたあなたにとっては、<ruby>漢字<rt>かんじ</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>が<ruby>倍<rt>ばい</rt></ruby>になるよね。でも、<ruby>現場<rt>げんば</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>より<ruby>豊富<rt>ほうふ</rt></ruby>だから。*(Với em học tiếng Nhật như ngoại ngữ, rào cản chữ Hán gấp đôi nhỉ. Nhưng kiến thức hiện trường thì phong phú hơn ai hết.)* |
| Ngọc | そうですね。<ruby>諦<rt>あきら</rt></ruby>めません。*(Đúng vậy. Em không từ bỏ đâu.)* |

---

## Tình huống 10 — Xe buýt sáng · 7:45, Ngọc nghe flashcard audio

| Vai | Lời thoại |
|---|---|
| Ngọc | (nghe tai nghe, lặp lại) 「<ruby>誤嚥性肺炎<rt>ごえんせいはいえん</rt></ruby>」…<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>や<ruby>唾液<rt>だえき</rt></ruby>が<ruby>気管<rt>きかん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ることで<ruby>起<rt>お</rt></ruby>こる<ruby>肺炎<rt>はいえん</rt></ruby>。*(nghe tai nghe, lặp lại) "誤嚥性肺炎"… viêm phổi xảy ra khi thức ăn hay nước bọt vào đường thở.)* |
| Ngọc | (tiếp tục) 「<ruby>起立性低血圧<rt>きりつせいていけつあつ</rt></ruby>」…<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がったときに<ruby>血圧<rt>けつあつ</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がる。<ruby>転倒<rt>てんとう</rt></ruby>のリスク。*(tiếp) "起立性低血圧"… huyết áp giảm khi đứng dậy. Nguy cơ ngã.)* |
| Ngọc | (gật gù) これ<ruby>現場<rt>げんば</rt></ruby>でよく<ruby>見<rt>み</rt></ruby>る。だから<ruby>意味<rt>いみ</rt></ruby>はわかるけど、<ruby>漢字<rt>かんじ</rt></ruby>4<ruby>文字<rt>もじ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるのが<ruby>難<rt>むずか</rt></ruby>しい。*(gật gù) Cái này ở hiện trường thường gặp. Nên biết ý nghĩa rồi, nhưng nhớ bằng 4 chữ Hán thì khó.)* |

---

## Tình huống 11 — Nhà trọ · 21:30, Ngọc nhắn tin với Hương về flashcard

| Vai | Lời thoại |
|---|---|
| Hương (tin nhắn) | Ngọc, mày dán flashcard khắp phòng chưa? Tao làm rồi, tủ lạnh, gương phòng tắm đầy rồi. |
| Ngọc (nhắn lại) | Tao cũng vậy! Kanji y tế dán cả bếp. Nhìn là nhớ. |
| Hương | (đọc một tờ) "廃用症候群"… mày nhớ cái này chưa? |
| Ngọc | "Haiyo shōkōgun" — hội chứng suy giảm chức năng do bất động. Hương thử đọc to đi. |
| Hương | (đọc lại) "Haiyo shōkōgun". Được chưa? |
| Ngọc | (cười) Chuẩn rồi! Mình học nhóm tuần tới nha. |
| Hương | Nhớ phần 保健医療 đó. Tao sợ nhất chỗ đó. |

---

## Tình huống 12 — Phòng ngủ · 23:00, Ngọc kiểm tra bản thân trước khi ngủ

| Vai | Lời thoại |
|---|---|
| Ngọc | (nói nhẩm, nhắm mắt) <ruby>保健医療福祉<rt>ほけんいりょうふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>の<ruby>苦手<rt>にがて</rt></ruby>リスト：<ruby>廃用症候群<rt>はいようしょうこうぐん</rt></ruby>、<ruby>誤嚥性肺炎<rt>ごえんせいはいえん</rt></ruby>、<ruby>服薬管理<rt>ふくやくかんり</rt></ruby>、BPSD、<ruby>要介護認定<rt>ようかいごにんてい</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>…*(nói nhẩm, nhắm mắt) Danh sách điểm yếu lĩnh vực 保健医療福祉サービス: 廃用症候群, 誤嚥性肺炎, 服薬管理, BPSD, quy trình 要介護認定…)* |
| Ngọc | <ruby>一つ一つ<rt>ひとつひとつ</rt></ruby><ruby>潰<rt>つぶ</rt></ruby>していくしかない。できる、できる。*(Chỉ có cách xử lý từng cái một thôi. Được, được.)* |
| Ngọc | (trong đầu) ケアマネになったら、<ruby>西田<rt>にしだ</rt></ruby>さんや<ruby>田辺<rt>たなべ</rt></ruby>さんのケアプランを<ruby>自分<rt>じぶん</rt></ruby>で<ruby>作<rt>つく</rt></ruby>れる。それを<ruby>思<rt>おも</rt></ruby>えば<ruby>頑張<rt>がんば</rt></ruby>れる。*(trong đầu) Khi thành ケアマネ, mình có thể tự làm ケアプラン cho cụ Nishida và cụ Tanabe. Nghĩ đến điều đó thì có thể cố gắng.)* |

---

## Đọng lại chương 3

Ngọc nhận giấy xác nhận đăng ký thi, bắt đầu ôn thật sự. Phần **保健医療福祉サービス分野** là bức tường lớn nhất với kanji y khoa nặng (廃用症候群・誤嚥性肺炎・服薬管理・BPSD). Chiến thuật: kết hợp học trên xe buýt (audio), flashcard dán khắp nhà, ôn nhóm cùng Hương cuối tuần, hỏi chuyên môn từ Nakamura. Yamamoto nhắc nhở: kiến thức hiện trường là lợi thế, chỉ cần thêm thuật ngữ học thuật.

> Từ vựng chương này: 受験票・廃用症候群・誤嚥性肺炎・服薬管理・ポリファーマシー・BPSD・要介護認定・一次判定・二次判定・認定調査員・主治医意見書・居宅介護支援費・地域密着型サービス費・起立性低血圧・嚥下機能低下・食形態・かかりつけ薬剤師・保険給付', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000004, 800000032, NULL, 'markdown_book', 'T4. Cân bằng việc chủ nhiệm và ôn thi (主任業務と勉強の両立)', '# Sách điều dưỡng viên quốc gia · T4. Cân bằng việc chủ nhiệm và ôn thi (主任業務と勉強の両立)

> **Mục tiêu nhân vật:** Tháng 7 — Ngọc kiệt sức vì vừa gánh trách nhiệm 介護主任, vừa ôn thi ケアマネ. Ngủ 5 tiếng, mắc lỗi nhỏ trong công việc, suýt bỏ cuộc. Hương và Yamamoto động viên đúng lúc.

---

## Bối cảnh

Tháng 7 năm 2032. Mùa hè nóng, khối lượng công việc tăng cao vì hai nhân viên nghỉ phép dài hạn. Ngọc thức đến 1 giờ sáng để ôn bài, sáng 6 giờ dậy đi làm sớm. Tích lũy mệt mỏi bắt đầu ảnh hưởng đến hiệu suất cả công việc lẫn ôn thi.

---

## Tình huống 1 — Phòng họp · 8:30, họp sáng — Ngọc gần nhầm lẫn lịch

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn bảng kế hoạch) <ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>シフト<rt>しふと</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>火曜日<rt>かようび</rt></ruby>は…あれ、<ruby>田中<rt>たなか</rt></ruby>スタッフは<ruby>夜勤<rt>やきん</rt></ruby>でしたっけ?*(Kiểm tra lịch tuần này. Thứ ba thì… ơ, nhân viên Tanaka ca đêm đúng không nhỉ?)* |
| An | (nhỏ giọng) <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby>さんは<ruby>月曜<rt>げつよう</rt></ruby><ruby>夜勤<rt>やきん</rt></ruby>で、<ruby>火曜<rt>かよう</rt></ruby>は<ruby>休<rt>やす</rt></ruby>みです。*(nhỏ giọng) Chị chủ nhiệm, anh Tanaka ca đêm thứ hai, thứ ba nghỉ.)* |
| Ngọc | (hít thở) …そうでしたね、<ruby>失礼<rt>しつれい</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>しきれていなかった。*(hít thở) …Đúng rồi nhỉ, xin lỗi. Chị chưa kiểm tra kỹ.)* |
| Yamamoto | (gật đầu nhẹ, không nói gì, tiếp tục họp) *(gật đầu nhẹ, không nói gì, tiếp tục họp)* |
| Ngọc | (trong đầu) <ruby>昨夜<rt>さくや</rt></ruby>1<ruby>時<rt>じ</rt></ruby>まで<ruby>勉強<rt>べんきょう</rt></ruby>して、<ruby>今朝<rt>けさ</rt></ruby>6<ruby>時<rt>じ</rt></ruby>に<ruby>起<rt>お</rt></ruby>きた。<ruby>集中力<rt>しゅうちゅうりょく</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>かない。*(trong đầu) Tối qua ôn đến 1 giờ, sáng nay dậy 6 giờ. Không duy trì được sự tập trung.)* |

---

## Tình huống 2 — Phòng nghỉ nhân viên · 9:30, Yamamoto gọi Ngọc nói chuyện riêng

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>少<rt>すこ</rt></ruby>しいいですか。*(Em Nguyễn, có chút thời gian không.)* |
| Ngọc | はい、<ruby>先<rt>さき</rt></ruby>ほどのシフト、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。*(Vâng, về lịch hồi nãy, em xin lỗi.)* |
| Yamamoto | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>よ。そっちじゃなくて…<ruby>最近<rt>さいきん</rt></ruby>、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いけど、<ruby>睡眠<rt>すいみん</rt></ruby>は<ruby>取<rt>と</rt></ruby>れてる?*(Không sao đâu. Không phải chuyện đó mà… Gần đây trông em không khỏe, em có ngủ đủ giấc không?)* |
| Ngọc | …<ruby>最近<rt>さいきん</rt></ruby>5<ruby>時間<rt>じかん</rt></ruby>くらいしか<ruby>寝<rt>ね</rt></ruby>ていないです。*(…Gần đây em chỉ ngủ khoảng 5 tiếng.)* |
| Yamamoto | それは<ruby>無理<rt>むり</rt></ruby>よ。<ruby>睡眠<rt>すいみん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないと、<ruby>記憶<rt>きおく</rt></ruby>が<ruby>定着<rt>ていちゃく</rt></ruby>しないし、<ruby>仕事<rt>しごと</rt></ruby>でも<ruby>判断力<rt>はんだんりょく</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる。*(5 tiếng thì quá sức rồi. Thiếu ngủ thì ký ức không định lại được, và ở công việc khả năng phán đoán cũng giảm.)* |
| Ngọc | でも<ruby>時間<rt>じかん</rt></ruby>が…*(Nhưng thời gian thì…)* |
| Yamamoto | <ruby>量<rt>りょう</rt></ruby>より<ruby>質<rt>しつ</rt></ruby>よ。<ruby>毎日<rt>まいにち</rt></ruby>1<ruby>時間<rt>じかん</rt></ruby>でも<ruby>集中<rt>しゅうちゅう</rt></ruby>してやるほうが、ボーっとして3<ruby>時間<rt>じかん</rt></ruby>やるより<ruby>効果<rt>こうか</rt></ruby>がある。*(Chất lượng hơn số lượng. Tập trung 1 tiếng mỗi ngày còn hiệu quả hơn ơ hờ 3 tiếng.)* |
| Ngọc | …<ruby>分<rt>わ</rt></ruby>かりました。<ruby>少<rt>すこ</rt></ruby>しスケジュールを<ruby>見直<rt>みなお</rt></ruby>します。*(…Em hiểu rồi. Em sẽ xem lại lịch ôn một chút.)* |

---

## Tình huống 3 — Khu ユニット A · 11:00, sự cố nhỏ — lệnh sắp xếp lịch tắm bị nhầm

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>主任<rt>しゅにん</rt></ruby>、すみません。<ruby>佐々木<rt>ささき</rt></ruby>さんの<ruby>入浴<rt>にゅうよく</rt></ruby><ruby>日<rt>び</rt></ruby>が<ruby>今日<rt>きょう</rt></ruby>なのに、<ruby>記録<rt>きろく</rt></ruby>に「<ruby>明日<rt>あした</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。*(Chị chủ nhiệm, xin lỗi. Hôm nay đến ngày tắm của cụ Sasaki mà trong ghi chép lại ghi "ngày mai".)* |
| Ngọc | (kiểm tra) ……<ruby>私<rt>わたし</rt></ruby>が<ruby>昨日<rt>きのう</rt></ruby><ruby>書<rt>か</rt></ruby>いたのが<ruby>間違<rt>まちが</rt></ruby>っていたわ。ごめんなさい、すぐ<ruby>対応<rt>たいおう</rt></ruby>します。*(kiểm tra) …Em viết hôm qua bị sai rồi. Xin lỗi nhé, giải quyết ngay.)* |
| Linh | あの…<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>最近<rt>さいきん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>疲<rt>つか</rt></ruby>れてそうで。*(Ơ… chị chủ nhiệm, chị ổn không? Gần đây trông chị có vẻ mệt.)* |
| Ngọc | (khẽ cười) ありがとう、<ruby>気<rt>き</rt></ruby>にかけてくれて。ちょっと<ruby>睡眠<rt>すいみん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りてないだけ。<ruby>佐々木<rt>ささき</rt></ruby>さんには<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないから、すぐ<ruby>準備<rt>じゅんび</rt></ruby>して。*(khẽ cười) Cảm ơn em quan tâm. Chỉ là ngủ không đủ thôi. Cụ Sasaki mà chờ thì không được, chuẩn bị ngay nhé.)* |
| Linh | はい、<ruby>一緒<rt>いっしょ</rt></ruby>にやります。*(Vâng, em làm cùng chị.)* |
| Ngọc | (trong đầu) ミスが<ruby>出始<rt>ではじ</rt></ruby>めた。このままじゃいけない。*(trong đầu) Bắt đầu mắc lỗi rồi. Không thể tiếp tục thế này.)* |

---

## Tình huống 4 — Phòng chủ nhiệm · 13:00, Ngọc họp trực tuyến với ケアマネ của cơ sở

| Vai | Lời thoại |
|---|---|
| ケアマネ Fujita | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さんのサービス<ruby>担当者会議<rt>たんとうしゃかいぎ</rt></ruby>を<ruby>来週<rt>らいしゅう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>していますが、<ruby>参加<rt>さんか</rt></ruby>できますか?*(Chủ nhiệm Nguyễn, tôi dự định tuần sau có cuộc họp phụ trách dịch vụ của cụ Yamada, chị có tham gia được không?)* |
| Ngọc | はい、<ruby>参加<rt>さんか</rt></ruby>します。<ruby>介護側<rt>かいごがわ</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby>をまとめて<ruby>持<rt>も</rt></ruby>っていきます。*(Vâng, em tham gia. Em sẽ tổng hợp thông tin phía điều dưỡng mang đến.)* |
| ケアマネ Fujita | <ruby>最近<rt>さいきん</rt></ruby>、<ruby>食欲<rt>しょくよく</rt></ruby>と<ruby>活動量<rt>かつどうりょう</rt></ruby>が<ruby>低下<rt>ていか</rt></ruby>していますよね。<ruby>要因<rt>よういん</rt></ruby>として<ruby>何<rt>なに</rt></ruby>が<ruby>考<rt>かんが</rt></ruby>えられますか?*(Gần đây sức ăn và mức độ hoạt động giảm nhỉ. Nguyên nhân có thể là gì ạ?)* |
| Ngọc | <ruby>天候<rt>てんこう</rt></ruby>の<ruby>影響<rt>えいきょう</rt></ruby>もありますが、<ruby>夏<rt>なつ</rt></ruby>バテの<ruby>可能性<rt>かのうせい</rt></ruby>も。あと、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>面会<rt>めんかい</rt></ruby>が<ruby>減<rt>へ</rt></ruby>っていることが<ruby>精神面<rt>せいしんめん</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>しているかもしれません。*(Ảnh hưởng thời tiết cũng có, nhưng khả năng mệt mùa hè cũng có. Ngoài ra, số lần gia đình đến thăm giảm có thể ảnh hưởng mặt tâm lý.)* |
| ケアマネ Fujita | <ruby>詳<rt>くわ</rt></ruby>しい<ruby>観察<rt>かんさつ</rt></ruby>ですね。<ruby>現場<rt>げんば</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>、<ruby>助<rt>たす</rt></ruby>かります。*(Quan sát tỉ mỉ thật. Góc nhìn hiện trường giúp ích nhiều lắm.)* |
| Ngọc | (trong đầu) こういう<ruby>視点<rt>してん</rt></ruby>が、ケアマネになったら<ruby>自分<rt>じぶん</rt></ruby>でケアプランに<ruby>落<rt>お</rt></ruby>とし<ruby>込<rt>こ</rt></ruby>める。*(trong đầu) Góc nhìn như thế này, khi thành ケアマネ mình có thể tự đưa vào ケアプラン.)* |

---

## Tình huống 5 — Thư viện · Thứ 7 sáng, buổi ôn nhóm — Ngọc đến muộn, trán nhăn

| Vai | Lời thoại |
|---|---|
| Hương | (tiếng Nhật) グエンさん、<ruby>遅<rt>おそ</rt></ruby>かったですね。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?*(Chị Nguyễn, chị đến muộn. Có ổn không?)* |
| Ngọc | (tiếng Nhật) ごめん。<ruby>今朝<rt>けさ</rt></ruby>ちょっとトラブルがあって、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>くまで<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>てた。*(Xin lỗi. Sáng nay có chút việc lộn xộn, phải chờ xử lý xong mới đi được.)* |
| Hương | (tiếng Nhật) <ruby>今日<rt>きょう</rt></ruby>、<ruby>中止<rt>ちゅうし</rt></ruby>にしましょうか?*(Hôm nay mình nghỉ đi không?)* |
| Ngọc | (tiếng Nhật) ううん、<ruby>来<rt>き</rt></ruby>た。やる。でも<ruby>今日<rt>きょう</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>らないかも。*(Không, chị đã đến rồi. Làm thôi. Nhưng hôm nay đầu óc có thể không lanh lợi.)* |
| Hương | (tiếng Nhật) では<ruby>軽<rt>かる</rt></ruby>めに、<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>解<rt>と</rt></ruby>くだけにしましょう。*(Vậy nhẹ nhàng thôi, chỉ cùng nhau làm đề thi cũ thôi nhé.)* |
| Ngọc | (tiếng Nhật) (nhìn đề) この<ruby>問題<rt>もんだい</rt></ruby>…「<ruby>介護保険<rt>かいごほけん</rt></ruby>の<ruby>第<rt>だい</rt></ruby>2<ruby>号<rt>ごう</rt></ruby><ruby>被保険者<rt>ひほけんしゃ</rt></ruby>の<ruby>年齢要件<rt>ねんれいようけん</rt></ruby>は?」…40<ruby>歳以上<rt>さいいじょう</rt></ruby>65<ruby>歳未満<rt>さいみまん</rt></ruby>。*(nhìn đề) Câu này… "Điều kiện tuổi của người tham gia bảo hiểm hạng 2 trong 介護保険 là?" … từ 40 đến dưới 65 tuổi.)* |
| Hương | (tiếng Nhật) <ruby>正解<rt>せいかい</rt></ruby>。<ruby>頭<rt>あたま</rt></ruby>ちゃんと<ruby>働<rt>はたら</rt></ruby>いてる。*(Đúng rồi. Đầu óc vẫn đang hoạt động tốt đó.)* |

---

## Tình huống 6 — Phòng chủ nhiệm · Tuần sau, 16:00, Ngọc nhìn kết quả self-test điểm thấp

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn bảng điểm tự kiểm) <ruby>保健医療<rt>ほけんいりょう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>：23<ruby>点<rt>てん</rt></ruby>/35<ruby>問<rt>もん</rt></ruby>。<ruby>介護支援<rt>かいごしえん</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>：14<ruby>点<rt>てん</rt></ruby>/25<ruby>問<rt>もん</rt></ruby>。*(nhìn bảng điểm tự kiểm) Lĩnh vực 保健医療: 23/35 câu. Lĩnh vực 介護支援: 14/25 câu.)* |
| Ngọc | (thở dài) <ruby>介護支援<rt>かいごしえん</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>で<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>下回<rt>したまわ</rt></ruby>る<ruby>可能性<rt>かのうせい</rt></ruby>がある。あと3<ruby>か月<rt>かげつ</rt></ruby>で<ruby>間に合う<rt>まにあう</rt></ruby>のかな。*(thở dài) Có khả năng không đạt điểm chuẩn lĩnh vực 介護支援. Còn 3 tháng có kịp không nhỉ.)* |
| Ngọc | (thẫn thờ, cầm bút lên rồi đặt xuống) やめようかな……*(thẫn thờ, cầm bút lên rồi đặt xuống) Có nên bỏ không nhỉ…)* |
| An | (gõ cửa) <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しよろしいですか。*(chủ nhiệm, cho em vào chút được không.)* |
| Ngọc | (ngẩng đầu, cố cười) どうぞ。*(Vào đi.)* |

---

## Tình huống 7 — Phòng chủ nhiệm · 16:20, An báo tin cụ Yamada bị ngã — Ngọc phải xử lý khủng hoảng

| Vai | Lời thoại |
|---|---|
| An | <ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>廊下<rt>ろうか</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>しました。<ruby>中村<rt>なかむら</rt></ruby>さんがすでに<ruby>対応<rt>たいおう</rt></ruby>していますが。*(Cụ Yamada bị ngã ở hành lang. Cô Nakamura đã xử lý rồi, nhưng…)* |
| Ngọc | (đứng ngay dậy) すぐ<ruby>行<rt>い</rt></ruby>きます。<ruby>状況<rt>じょうきょう</rt></ruby>は?*(Đi ngay. Tình trạng thế nào?)* |
| An | <ruby>意識<rt>いしき</rt></ruby>あり、<ruby>軽<rt>かる</rt></ruby>い<ruby>擦<rt>す</rt></ruby>り<ruby>傷<rt>きず</rt></ruby>のみ。<ruby>骨折<rt>こっせつ</rt></ruby>は<ruby>なさそう<rt>なさそう</rt></ruby>です。*(Còn tỉnh, chỉ trầy xước nhẹ. Có vẻ không gãy xương.)* |
| Ngọc | (đến nơi) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>どこか痛いですか<rt>どこかいたいですか</rt></ruby>?*(đến nơi) Cụ Yamada, cụ có ổn không? Có chỗ nào đau không ạ?)* |
| Cụ Yamada | <ruby>膝<rt>ひざ</rt></ruby>がちょっと…でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。*(Đầu gối hơi… nhưng không sao.)* |
| Ngọc | <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>経過観察<rt>けいかかんさつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>記録<rt>きろく</rt></ruby>と<ruby>ご家族<rt>ごかぞく</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がやります。*(Cô Nakamura, nhờ cô theo dõi diễn tiến. Ghi chép và liên hệ gia đình em lo.)* |
| Nakamura | はい、<ruby>任<rt>まか</rt></ruby>せてください。*(Vâng, cứ để tôi.)* |
| Ngọc | (trong đầu) <ruby>疲<rt>つか</rt></ruby>れていても、こういうときに<ruby>体<rt>からだ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>く。<ruby>主任<rt>しゅにん</rt></ruby>だから。*(trong đầu) Dù mệt thế nào, những lúc như thế này cơ thể vẫn tự động. Vì là chủ nhiệm.)* |

---

## Tình huống 8 — Phòng nghỉ nhân viên · 19:00, sau ca — Ngọc ngồi một mình

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn sổ ôn thi, thở dài) <ruby>今日<rt>きょう</rt></ruby>は1ページも<ruby>読<rt>よ</rt></ruby>めない。*(nhìn sổ ôn thi, thở dài) Hôm nay không đọc nổi được 1 trang.)* |
| Đức | (vào phòng) <ruby>主任<rt>しゅにん</rt></ruby>、まだいるんですか。*(chị chủ nhiệm, chị vẫn còn đây à.)* |
| Ngọc | ちょっとね…。<ruby>Đức<rt>でゅっく</rt></ruby>さん、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くけど、<ruby>私<rt>わたし</rt></ruby>って<ruby>最近<rt>さいきん</rt></ruby><ruby>仕事<rt>しごと</rt></ruby>でミスが<ruby>増<rt>ふ</rt></ruby>えていると<ruby>思<rt>おも</rt></ruby>う?*(Một chút… Đức ơi, hỏi thật nhé, em thấy gần đây chị làm việc mắc lỗi nhiều hơn không?)* |
| Đức | …<ruby>少<rt>すこ</rt></ruby>し、<ruby>気<rt>き</rt></ruby>になることはあります。でも<ruby>誰<rt>だれ</rt></ruby>でも<ruby>疲<rt>つか</rt></ruby>れることはあるし、<ruby>主任<rt>しゅにん</rt></ruby>は<ruby>責任感<rt>せきにんかん</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>すぎるから、<ruby>自分<rt>じぶん</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めすぎていると<ruby>思<rt>おも</rt></ruby>います。*(…Có một chút điều em để ý. Nhưng ai cũng có lúc mệt, và chị có tinh thần trách nhiệm quá cao nên em nghĩ chị tự trách mình quá nhiều.)* |
| Ngọc | ありがとう。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれて。*(Cảm ơn. Em nói thật với chị.)* |
| Đức | <ruby>頑張<rt>がんば</rt></ruby>りすぎないでください。<ruby>私<rt>わたし</rt></ruby>たちもいます。*(Đừng cố quá sức. Chúng em cũng có đây.)* |

---

## Tình huống 9 — Nhà trọ · 21:00, Ngọc gọi điện cho Hương

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt) Hương ơi… tao muốn bỏ thi. |
| Hương | (tiếng Việt) (ngạc nhiên) Sao vậy? |
| Ngọc | (tiếng Việt) Điểm tự test không đủ, lịch ôn bị gián đoạn hoài, công việc lại bị mắc lỗi. Tao kiệt sức rồi. |
| Hương | (tiếng Việt) Mày hỏi thật tao một câu. Nếu không thi năm nay, mày sẽ cảm thấy thế nào? |
| Ngọc | (tiếng Việt) (im lặng) …Hối tiếc. |
| Hương | (tiếng Việt) Đó. Bỏ thì hối tiếc. Tiếp tục thì mệt. Vậy mệt vẫn hơn hối tiếc đúng không? |
| Ngọc | (tiếng Việt) (thở ra) …Mày lúc nào cũng nói đơn giản vậy. |
| Hương | (tiếng Việt) Chuyện phức tạp thì phải đơn giản hóa. Mày chỉ lo ôn bài và đi làm. Vừa đủ thôi. Không cần hoàn hảo. |

---

## Tình huống 10 — Nhà trọ · 22:00, Ngọc tự lên kế hoạch nghỉ ngơi hợp lý

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, viết vào sổ) Thử vầy xem: không ôn sau 11 giờ. Ngủ đủ 7 tiếng. Sáng dậy 15 phút đọc flashcard thay vì tối khuya 2 tiếng. |
| Ngọc | (tự hỏi) Vậy đủ không? |
| Ngọc | (nhớ lại lời Yamamoto) "chất lượng hơn số lượng"... Chị ấy nói đúng. 5 tiếng rõ ràng là không đủ. |
| Ngọc | (đặt báo thức trên điện thoại) 11 giờ là giới hạn. Qua 11 giờ tắt đèn, ngủ. Mình phải nghiêm với bản thân. |
| Ngọc | (tự nhủ) Một mình thì phải tự kỷ luật. Không ai nhắc thì tự nhắc. |

---

## Tình huống 11 — Nhà trọ · 11:00 đêm, đúng hạn — Ngọc tự tắt đèn

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, tự nhủ) Hết giờ rồi. (tắt đèn bàn học) |
| Ngọc | (giọng trong đầu) Câu này chưa xong. |
| Ngọc | (thở ra) Để mai. Một mình không có ai nhắc thì phải tự nhắc. |
| Ngọc | (thở dài, đặt sách xuống) Ngủ ngon. Ngày mai lại là một ngày mới. |
| Ngọc | (nằm xuống, nhìn lên trần nhà) Hương ơi, mày nói đúng. Cảm ơn mày. |

---

## Tình huống 12 — Sáng hôm sau, phòng chủ nhiệm · 8:00 — Ngọc họp sáng, tập trung hơn

| Vai | Lời thoại |
|---|---|
| Ngọc | (mở họp, giọng rõ hơn) では<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>重点事項<rt>じゅうてんじこう</rt></ruby>は3つ。<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>経過観察<rt>けいかかんさつ</rt></ruby>、<ruby>清掃<rt>せいそう</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>の<ruby>入<rt>はい</rt></ruby>り<ruby>時間変更<rt>じかんへんこう</rt></ruby>、<ruby>新<rt>あたら</rt></ruby>しい<ruby>水分補給<rt>すいぶんほきゅう</rt></ruby><ruby>記録<rt>きろく</rt></ruby>シートの<ruby>試用<rt>しよう</rt></ruby>。*(mở họp, giọng rõ hơn) Bắt đầu nhé. Hôm nay có 3 trọng điểm. Theo dõi diễn tiến cụ Yamada, thay đổi giờ vào của đơn vị vệ sinh, thử nghiệm mẫu ghi chép bổ sung nước mới.)* |
| Yamamoto | (gật đầu, mỉm cười nhẹ) *(gật đầu, mỉm cười nhẹ)* |
| Ngọc | (trong đầu) 7<ruby>時間<rt>じかん</rt></ruby><ruby>寝<rt>ね</rt></ruby>ただけで、こんなに<ruby>違<rt>ちが</rt></ruby>う。<ruby>山本<rt>やまもと</rt></ruby>さんとハーさんの<ruby>言<rt>い</rt></ruby>う<ruby>通<rt>とお</rt></ruby>りだった。*(trong đầu) Chỉ ngủ 7 tiếng mà khác hẳn. Chị Yamamoto và Hương nói đúng cả.)* |
| An | <ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>は<ruby>顔色<rt>かおいろ</rt></ruby>がいいですね。*(chị chủ nhiệm, hôm nay trông chị khỏe hơn nhỉ.)* |
| Ngọc | (mỉm cười) ちょっと<ruby>作戦<rt>さくせん</rt></ruby>を<ruby>変<rt>か</rt></ruby>えたの。<ruby>両立<rt>りょうりつ</rt></ruby>は<ruby>工夫<rt>くふう</rt></ruby>しながらやるしかないから。*(mỉm cười) Chị vừa đổi chiến thuật một chút. Cân bằng hai việc thì phải sáng tạo cách làm thôi.)* |

---

## Đọng lại chương 4

Tháng 7 là tháng khủng hoảng nhất: Ngọc chỉ ngủ 5 tiếng, mắc lỗi lịch làm việc và ghi chép, điểm tự test 介護支援分野 không đủ, suýt tuyên bố bỏ thi. **Hương động viên bằng câu hỏi ngược**: "Bỏ thì hối tiếc. Tiếp tục thì mệt. Mệt vẫn hơn hối tiếc đúng không?" — Ngọc không bỏ. Yamamoto và Hương cùng nhắc: chất lượng hơn số lượng, ngủ đủ giấc, ôn có trọng tâm. Sáng hôm sau Ngọc họp trơn tru hơn hẳn sau 7 tiếng ngủ.

> Từ vựng chương này: 集中力・判断力・睡眠・記憶定着・ミス・転倒・経過観察・サービス担当者会議・要介護認定・介護保険第2号被保険者・基準点・過去問・両立・作戦・重点事項・ポリファーマシー・かかりつけ薬剤師', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000005, 800000032, NULL, 'markdown_book', 'T5. Học nhóm với Hương (ハーさんと勉強会)', '# Sách điều dưỡng viên quốc gia · T5. Học nhóm với Hương (ハーさんと勉強会)

> **Mục tiêu nhân vật:** Ngọc (30 tuổi, 介護主任) và Hương (bạn cùng thi ケアマネ từ sách 27) tổ chức học nhóm ôn thi. Chương tập trung ngôn ngữ ôn thi: thuật ngữ 保健医療福祉, phương pháp học nhóm, chia sẻ tài liệu, hỗ trợ lẫn nhau.

---

## Bối cảnh

Tháng 8 năm 2032. Kỳ thi ケアマネジャー đang đến gần (11/10). Ngọc và Hương — người bạn cùng làm 介護 từ những ngày đầu sang Nhật — quyết định học nhóm mỗi tuần hai buổi tối tại nhà trọ Ngọc. Ngọc tự thu xếp mọi thứ để có thể tập trung học. Đây là mạch ấm áp: tình bạn, hỗ trợ lẫn nhau, và ý chí chung.

---

## Tình huống 1 — Phòng khách nhà Ngọc · 19:00, Hương đến học nhóm

| Vai | Lời thoại |
|---|---|
| Hương | こんばんは、グエンさん。<ruby>今日<rt>きょう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。 *(Chào buổi tối, chị Nguyễn. Hôm nay cũng nhờ chị nhé.)* |
| Ngọc | ハーさん、いらっしゃい。どうぞ<ruby>上<rt>あ</rt></ruby>がってください。<ruby>今夜<rt>こんや</rt></ruby>は<ruby>介護支援分野<rt>かいごしえんぶんや</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。 *(Hương ơi, vào đi. Tối nay mình bắt đầu với phần Lĩnh vực hỗ trợ điều dưỡng nhé.)* |
| Hương | はい。<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>保健医療<rt>ほけんいりょう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しかったですね。<ruby>薬<rt>くすり</rt></ruby>の<ruby>副作用<rt>ふくさよう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に。 *(Vâng. Tuần trước đề phần bảo hiểm y tế khó nhỉ. Nhất là câu về tác dụng phụ của thuốc.)* |
| Ngọc | そうですよね。でも<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>して<ruby>解<rt>と</rt></ruby>くうちに<ruby>慣<rt>な</rt></ruby>れてきますから。<ruby>焦<rt>あせ</rt></ruby>らないで、<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。 *(Đúng vậy. Nhưng làm đi làm lại sẽ quen thôi. Đừng lo, mình làm cùng nhau nhé.)* |

---

## Tình huống 2 — Bàn học · 19:15, xem lại lý thuyết ケアプラン

| Vai | Lời thoại |
|---|---|
| Ngọc | まず<ruby>居宅介護支援<rt>きょたくかいごしえん</rt></ruby>の<ruby>流れ<rt>ながれ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。アセスメントから<ruby>始<rt>はじ</rt></ruby>まって、どう<ruby>進<rt>すす</rt></ruby>みますか? *(Trước tiên xác nhận lại quy trình hỗ trợ điều dưỡng tại nhà. Bắt đầu từ đánh giá, rồi tiến như thế nào?)* |
| Hương | えーと...アセスメント、<ruby>課題分析<rt>かだいぶんせき</rt></ruby>をして、それから<ruby>居宅サービス計画書<rt>きょたくサービスけいかくしょ</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>します。そして<ruby>担当者会議<rt>たんとうしゃかいぎ</rt></ruby>で... *(Ừm... đánh giá, phân tích vấn đề, rồi lập kế hoạch dịch vụ tại nhà. Sau đó trong cuộc họp người phụ trách...)* |
| Ngọc | <ruby>担当者会議<rt>たんとうしゃかいぎ</rt></ruby>の<ruby>目的<rt>もくてき</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?ここよく<ruby>出<rt>で</rt></ruby>ます。 *(Mục đích của cuộc họp người phụ trách là gì? Phần này hay ra đề lắm.)* |
| Hương | サービス<ruby>担当者<rt>たんとうしゃ</rt></ruby>が<ruby>集<rt>あつ</rt></ruby>まって、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>して、ケアプランを<ruby>確認<rt>かくにん</rt></ruby>する...ですか? *(Những người phụ trách dịch vụ tập hợp lại, chia sẻ tình trạng người dùng, xác nhận kế hoạch điều dưỡng... đúng không?)* |
| Ngọc | その<ruby>通<rt>とお</rt></ruby>りです。よくできました、ハーさん。<ruby>連携<rt>れんけい</rt></ruby>と<ruby>情報共有<rt>じょうほうきょうゆう</rt></ruby>がキーワードですよ。 *(Đúng vậy. Giỏi lắm Hương ơi. Liên kết và chia sẻ thông tin là từ khoá đấy nhé.)* |

---

## Tình huống 3 — Bàn học · 19:45, luyện câu hỏi trắc nghiệm

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>問題<rt>もんだい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してもらえますか? *(Chị Nguyễn, chị ra đề cho em được không?)* |
| Ngọc | はい。では「<ruby>介護給付<rt>かいごきゅうふ</rt></ruby>」について。<ruby>要介護<rt>ようかいご</rt></ruby>1から5の<ruby>方<rt>かた</rt></ruby>が<ruby>対象<rt>たいしょう</rt></ruby>ですが、<ruby>要支援<rt>ようしえん</rt></ruby>1・2の<ruby>方<rt>かた</rt></ruby>は<ruby>何<rt>なん</rt></ruby>の<ruby>給付<rt>きゅうふ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けますか? *(Vâng. Câu này về "trợ cấp điều dưỡng". Người cần chăm sóc cấp 1-5 được hưởng, nhưng người cần hỗ trợ cấp 1 và 2 được hưởng trợ cấp gì?)* |
| Hương | ...「<ruby>予防給付<rt>よぼうきゅうふ</rt></ruby>」ですか? *(..."trợ cấp phòng ngừa" ạ?)* |
| Ngọc | <ruby>正解<rt>せいかい</rt></ruby>です!<ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>介護給付<rt>かいごきゅうふ</rt></ruby>と<ruby>予防給付<rt>よぼうきゅうふ</rt></ruby>の<ruby>区別<rt>くべつ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えてください。 *(Đúng rồi! Hoàn hảo. Phân biệt trợ cấp điều dưỡng và trợ cấp phòng ngừa là điểm nhất định phải nhớ.)* |
| Hương | じゃあ<ruby>私<rt>わたし</rt></ruby>もグエンさんに<ruby>問題<rt>もんだい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>しますね。「<ruby>特定施設<rt>とくていしせつ</rt></ruby>」とは<ruby>何<rt>なん</rt></ruby>ですか? *(Vậy em ra câu cho chị nhé. "Cơ sở đặc định" là gì?)* |
| Ngọc | <ruby>特定施設<rt>とくていしせつ</rt></ruby>とは、<ruby>有料老人ホーム<rt>ゆうりょうろうじんホーム</rt></ruby>や<ruby>軽費老人ホーム<rt>けいひろうじんホーム</rt></ruby>などで、<ruby>特定施設入居者生活介護<rt>とくていしせつにゅうきょしゃせいかつかいご</rt></ruby>の<ruby>指定<rt>してい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けたものです。 *(Cơ sở đặc định là những nơi như viện dưỡng lão có phí, viện dưỡng lão chi phí thấp... đã được chỉ định cung cấp dịch vụ chăm sóc sinh hoạt cho người nhập viện.)* |

---

## Tình huống 4 — Bàn học · 20:00, nghỉ giải lao ngắn

| Vai | Lời thoại |
|---|---|
| Ngọc | ハーさん、ちょっと<ruby>休憩<rt>きゅうけい</rt></ruby>しましょう。お<ruby>茶<rt>ちゃ</rt></ruby>を<ruby>入<rt>い</rt></ruby>れてきますね。 *(Hương, nghỉ chút đi. Để chị pha trà.)* |
| Hương | ありがとうございます。グエンさん、<ruby>一人<rt>ひとり</rt></ruby>でよく<ruby>こんなに頑張<rt>がんばれますね</rt></ruby>れますね。<ruby>仕事<rt>しごと</rt></ruby>もして、<ruby>勉強<rt>べんきょう</rt></ruby>もして。 *(Cảm ơn chị. Chị Nguyễn thật giỏi, một mình vừa làm việc vừa học được thế này.)* |
| Ngọc | (mang trà ra, cười) <ruby>一人<rt>ひとり</rt></ruby>だからこそ、<ruby>自分<rt>じぶん</rt></ruby>でやるしかないですよ。ハーさんがいてくれるから、<ruby>続<rt>つづ</rt></ruby>けられます。 *(Vì sống một mình nên chỉ còn cách tự làm thôi. Có Hương ở đây nên chị mới cố được.)* |
| Hương | お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>ですよ。グエンさんがいなかったら、<ruby>私<rt>わたし</rt></ruby>はもう<ruby>諦<rt>あきら</rt></ruby>めていました。 *(Đôi bên như nhau mà chị. Không có chị Nguyễn, em đã bỏ cuộc rồi.)* |

---

## Tình huống 5 — Bàn học · 20:15, ôn 医療系 thuật ngữ khó

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、「<ruby>褥瘡<rt>じょくそう</rt></ruby>」の<ruby>予防<rt>よぼう</rt></ruby>と「<ruby>ターミナルケア<rt>たーみなるけあ</rt></ruby>」の<ruby>問題<rt>もんだい</rt></ruby>、どうやって<ruby>覚<rt>おぼ</rt></ruby>えますか?<ruby>漢字<rt>かんじ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて... *(Chị Nguyễn, câu về phòng ngừa loét tì đè và chăm sóc cuối đời, chị nhớ như thế nào? Nhiều chữ Hán quá...)* |
| Ngọc | <ruby>私<rt>わたし</rt></ruby>はイメージで<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>褥瘡<rt>じょくそう</rt></ruby>は「<ruby>体位変換<rt>たいいへんかん</rt></ruby>・2<ruby>時間<rt>じかん</rt></ruby>ごと・エアマット」のセットで<ruby>現場<rt>げんば</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけると<ruby>忘<rt>わす</rt></ruby>れません。 *(Chị nhớ bằng hình ảnh. Loét tì đè gắn với bộ ba "đổi tư thế - cứ 2 tiếng một lần - đệm hơi" liên kết với kinh nghiệm thực tế thì không quên được.)* |
| Hương | なるほど!<ruby>現場<rt>げんば</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけるんですね。<ruby>ターミナルケア<rt>たーみなるけあ</rt></ruby>はどうですか? *(Ra thế! Liên kết với thực tế hiện trường. Vậy chăm sóc cuối đời thì sao ạ?)* |
| Ngọc | <ruby>看取<rt>みと</rt></ruby>りの<ruby>現場<rt>げんば</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>してください。「<ruby>苦痛<rt>くつう</rt></ruby>の<ruby>緩和<rt>かんわ</rt></ruby>」「ご<ruby>家族<rt>かぞく</rt></ruby>への<ruby>支援<rt>しえん</rt></ruby>」「<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>意思<rt>いし</rt></ruby>の<ruby>尊重<rt>そんちょう</rt></ruby>」—この3つです。 *(Nhớ lại cảnh hiện trường chăm sóc người hấp hối. "Giảm đau", "hỗ trợ gia đình", "tôn trọng ý nguyện của người bệnh" — 3 điểm này.)* |
| Hương | グエンさん、<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>上手<rt>じょうず</rt></ruby>ですね。さすが<ruby>介護主任<rt>かいごしゅにん</rt></ruby>! *(Chị Nguyễn dạy giỏi thật. Xứng danh trưởng nhóm điều dưỡng!)* |
| Ngọc | (cười) ハーさん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>受<rt>う</rt></ruby>かりましょう。<ruby>二人<rt>ふたり</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>最高<rt>さいこう</rt></ruby>ですよ。 *(Hương ơi, cùng nhau đỗ nhé. Hai người cùng đỗ thì tuyệt vời nhất.)* |

---

## Tình huống 6 — Bàn học · 20:45, tranh luận về luật

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、「<ruby>介護保険<rt>かいごほけん</rt></ruby>の<ruby>財源<rt>ざいげん</rt></ruby>」の<ruby>割合<rt>わりあい</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えましたか?<ruby>公費<rt>こうひ</rt></ruby>50%と<ruby>保険料<rt>ほけんりょう</rt></ruby>50%でしたよね? *(Chị Nguyễn, chị nhớ tỉ lệ nguồn tài chính bảo hiểm điều dưỡng chưa? Công quỹ 50% và phí bảo hiểm 50% đúng không ạ?)* |
| Ngọc | そうです。<ruby>公費<rt>こうひ</rt></ruby>50%のうち、<ruby>国<rt>くに</rt></ruby>が25%、<ruby>都道府県<rt>とどうふけん</rt></ruby>が12.5%、<ruby>市町村<rt>しちょうそん</rt></ruby>が12.5%です。ここ、<ruby>数字<rt>すうじ</rt></ruby>は<ruby>正確<rt>せいかく</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えないといけません。 *(Đúng. Trong 50% công quỹ: quốc gia 25%, tỉnh/đô 12,5%, thành phố/thị trấn 12,5%. Phần này phải nhớ con số chính xác.)* |
| Hương | <ruby>保険料<rt>ほけんりょう</rt></ruby>は<ruby>第一号<rt>だいいちごう</rt></ruby>と<ruby>第二号<rt>だいにごう</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かれていますね。<ruby>第一号<rt>だいいちごう</rt></ruby>は65<ruby>歳以上<rt>さいいじょう</rt></ruby>、<ruby>第二号<rt>だいにごう</rt></ruby>は40から64<ruby>歳<rt>さい</rt></ruby>。 *(Phí bảo hiểm chia thành loại 1 và loại 2 nhỉ. Loại 1 từ 65 tuổi, loại 2 từ 40-64 tuổi.)* |
| Ngọc | <ruby>完璧<rt>かんぺき</rt></ruby>です!ハーさん、しっかり<ruby>理解<rt>りかい</rt></ruby>していますね。あとは<ruby>特定疾病<rt>とくていしっぺい</rt></ruby>16<ruby>種類<rt>しゅるい</rt></ruby>、<ruby>第二号<rt>だいにごう</rt></ruby><ruby>被保険者<rt>ひほけんしゃ</rt></ruby>との<ruby>関係<rt>かんけい</rt></ruby>も<ruby>押<rt>お</rt></ruby>さえてください。 *(Hoàn hảo! Hương hiểu vững rồi đấy. Tiếp theo cần nắm 16 loại bệnh đặc định và mối quan hệ với người được bảo hiểm loại 2.)* |

---

## Tình huống 7 — Bàn học · 21:10, chia sẻ tài liệu và mẹo ôn thi

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、これ、<ruby>先月<rt>せんげつ</rt></ruby>の<ruby>模擬試験<rt>もぎしけん</rt></ruby>の<ruby>解説<rt>かいせつ</rt></ruby>です。コピーしてきました。 *(Chị Nguyễn, đây là bản giải thích đề thi thử tháng trước. Em copy mang đến.)* |
| Ngọc | ありがとう。<ruby>助<rt>たす</rt></ruby>かります。これ、<ruby>私<rt>わたし</rt></ruby>が<ruby>作<rt>つく</rt></ruby>った<ruby>単語<rt>たんご</rt></ruby>カードです。<ruby>法律<rt>ほうりつ</rt></ruby>の<ruby>改正<rt>かいせい</rt></ruby>ポイントをまとめました。 *(Cảm ơn. Giúp nhiều lắm. Đây là thẻ từ vựng mình làm. Mình tóm tắt điểm sửa đổi luật.)* |
| Hương | わあ、<ruby>丁寧<rt>ていねい</rt></ruby>にまとめてありますね。<ruby>令和<rt>れいわ</rt></ruby>6<ruby>年<rt>ねん</rt></ruby><ruby>改正<rt>かいせい</rt></ruby>のポイント、こんなにあるんですか? *(Ôi, tóm tắt cẩn thận thật. Điểm sửa đổi năm Reiwa 6 nhiều đến thế sao?)* |
| Ngọc | <ruby>毎年<rt>まいとし</rt></ruby><ruby>改正<rt>かいせい</rt></ruby>がありますから、<ruby>最新<rt>さいしん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>追<rt>お</rt></ruby>うのが<ruby>大変<rt>たいへん</rt></ruby>です。でも<ruby>試験<rt>しけん</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>出<rt>で</rt></ruby>ますから。 *(Năm nào cũng có sửa đổi, theo dõi thông tin mới nhất rất vất vả. Nhưng nhất định ra thi nên cần nắm.)* |
| Hương | グエンさんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>できて、<ruby>本当<rt>ほんとう</rt></ruby>によかったです。<ruby>一人<rt>ひとり</rt></ruby>だったら<ruby>挫折<rt>ざせつ</rt></ruby>していたかもしれません。 *(Được học cùng chị Nguyễn thật may quá. Nếu học một mình chắc em nản rồi.)* |

---

## Tình huống 8 — Bàn học · 21:30, ôn lại kỹ năng lập ケアプラン

| Vai | Lời thoại |
|---|---|
| Ngọc | では<ruby>実践<rt>じっせん</rt></ruby>問題です。この<ruby>事例<rt>じれい</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで、ケアプランの<ruby>長期目標<rt>ちょうきもくひょう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えてみてください。 *(Bây giờ làm câu thực hành. Đọc tình huống này rồi thử nghĩ ra mục tiêu dài hạn của kế hoạch điều dưỡng nhé.)* |
| Hương | (đọc tình huống) ...「<ruby>自宅<rt>じたく</rt></ruby>での<ruby>生活<rt>せいかつ</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたい」という<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>希望<rt>きぼう</rt></ruby>があるので、「<ruby>家族<rt>かぞく</rt></ruby>の<ruby>支援<rt>しえん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けながら<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>在宅生活<rt>ざいたくせいかつ</rt></ruby>を<ruby>継続<rt>けいぞく</rt></ruby>する」でしょうか? *(...Vì người bệnh có nguyện vọng "muốn tiếp tục sống tại nhà", nên "tiếp tục sống tại nhà an toàn với sự hỗ trợ của gia đình"... phải không ạ?)* |
| Ngọc | いい<ruby>視点<rt>してん</rt></ruby>です。ポイントは「<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>意思<rt>いし</rt></ruby>」を<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>書<rt>か</rt></ruby>くことです。「〜したい」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うと<ruby>伝<rt>つた</rt></ruby>わりやすいですよ。 *(Góc nhìn tốt đấy. Điểm mấu chốt là viết lấy "ý nguyện của người bệnh" làm trung tâm. Dùng cụm "muốn..." thì dễ truyền đạt hơn.)* |
| Hương | なるほど。「<ruby>一人<rt>ひとり</rt></ruby>でトイレに<ruby>行<rt>い</rt></ruby>けるようになりたい」という<ruby>目標<rt>もくひょう</rt></ruby>も、<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で<ruby>書<rt>か</rt></ruby>くんですね。 *(Ra thế. Mục tiêu "muốn tự đi vệ sinh được" cũng viết theo lời của bản thân người bệnh nhỉ.)* |
| Ngọc | その<ruby>通<rt>とお</rt></ruby>りです。ハーさん、センスがありますよ。 *(Đúng vậy. Hương có khiếu đấy.)* |

---

## Tình huống 9 — Nghỉ giải lao · 21:45, ôn lại lỗi sai từ buổi trước

| Vai | Lời thoại |
|---|---|
| Ngọc | ハーさん、<ruby>先週<rt>せんしゅう</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えた<ruby>問題<rt>もんだい</rt></ruby>、<ruby>復習<rt>ふくしゅう</rt></ruby>しましょうか。「<ruby>地域支援事業<rt>ちいきしえんじぎょう</rt></ruby>」の<ruby>問題<rt>もんだい</rt></ruby>です。 *(Hương, mình ôn lại câu sai tuần trước nhé. Câu về "dự án hỗ trợ cộng đồng".)* |
| Hương | あ、あれです。<ruby>包括的支援事業<rt>ほうかつてきしえんじぎょう</rt></ruby>と<ruby>介護予防<rt>かいごよぼう</rt></ruby>・<ruby>日常生活支援<rt>にちじょうせいかつしえん</rt></ruby>総合事業の<ruby>違<rt>ちが</rt></ruby>いが<ruby>曖昧<rt>あいまい</rt></ruby>でした。 *(À, câu đó. Em chưa rõ sự khác nhau giữa dự án hỗ trợ toàn diện và dự án tổng hợp phòng ngừa điều dưỡng/hỗ trợ sinh hoạt hàng ngày.)* |
| Ngọc | <ruby>地域包括支援センター<rt>ちいきほうかつしえんせんたー</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>するのが<ruby>包括的支援事業<rt>ほうかつてきしえんじぎょう</rt></ruby>です。<ruby>住民<rt>じゅうみん</rt></ruby>の<ruby>総合相談<rt>そうごうそうだん</rt></ruby>、<ruby>虐待防止<rt>ぎゃくたいぼうし</rt></ruby>などを<ruby>担<rt>にな</rt></ruby>います。 *(Trung tâm hỗ trợ địa bàn tổng hợp phụ trách "dự án hỗ trợ toàn diện". Đảm nhận tư vấn tổng hợp cho cư dân, phòng chống bạo hành...)* |
| Hương | そして<ruby>介護予防<rt>かいごよぼう</rt></ruby>・<ruby>日常生活支援<rt>にちじょうせいかつしえん</rt></ruby>総合事業は<ruby>市町村<rt>しちょうそん</rt></ruby>が<ruby>主体<rt>しゅたい</rt></ruby>で、<ruby>訪問<rt>ほうもん</rt></ruby>や<ruby>通所<rt>つうしょ</rt></ruby>サービスも<ruby>含<rt>ふく</rt></ruby>まれる。 *(Còn dự án tổng hợp phòng ngừa điều dưỡng/hỗ trợ sinh hoạt thì thành phố/thị trấn là chủ thể, bao gồm cả dịch vụ thăm nhà và đến cơ sở.)* |
| Ngọc | <ruby>完璧<rt>かんぺき</rt></ruby>！<ruby>今日<rt>きょう</rt></ruby>のハーさんは<ruby>絶好調<rt>ぜっこうちょう</rt></ruby>ですね。 *(Hoàn hảo! Hôm nay Hương đang ở trạng thái đỉnh nhỉ.)* |

---

## Tình huống 10 — Bàn học · 22:00, ôn phần 福祉サービス分野

| Vai | Lời thoại |
|---|---|
| Ngọc | あと<ruby>一時間<rt>いちじかん</rt></ruby>、<ruby>福祉<rt>ふくし</rt></ruby>サービス<ruby>分野<rt>ぶんや</rt></ruby>をやりましょう。<ruby>障害者<rt>しょうがいしゃ</rt></ruby><ruby>総合支援法<rt>そうごうしえんほう</rt></ruby>はどうですか? *(Còn một tiếng, làm phần lĩnh vực dịch vụ phúc lợi nhé. Luật hỗ trợ tổng hợp người khuyết tật thế nào?)* |
| Hương | 苦手です...。<ruby>障害支援区分<rt>しょうがいしえんくぶん</rt></ruby>が1から6まであって、ケアマネとどうつながるかが<ruby>難<rt>むずか</rt></ruby>しいです。 *(Em kém phần này... Có 6 cấp độ hỗ trợ người khuyết tật, việc liên kết với ケアマネ như thế nào em thấy khó.)* |
| Ngọc | ケアマネは<ruby>介護保険<rt>かいごほけん</rt></ruby>が<ruby>主役<rt>しゅやく</rt></ruby>ですが、<ruby>障害<rt>しょうがい</rt></ruby>サービスとの<ruby>連携<rt>れんけい</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>相談支援専門員<rt>そうだんしえんせんもんいん</rt></ruby>との<ruby>連絡調整<rt>れんらくちょうせい</rt></ruby>、これが<ruby>試験<rt>しけん</rt></ruby>のポイントです。 *(ケアマネ thì bảo hiểm điều dưỡng là chính, nhưng cũng cần liên kết với dịch vụ người khuyết tật. Liên lạc và điều phối với chuyên viên tư vấn hỗ trợ — đây là điểm thi.)* |
| Hương | <ruby>相談支援専門員<rt>そうだんしえんせんもんいん</rt></ruby>と<ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>を<ruby>混<rt>こん</rt></ruby>同してしまうんです。 *(Em cứ lẫn lộn chuyên viên tư vấn hỗ trợ với chuyên viên hỗ trợ điều dưỡng.)* |
| Ngọc | <ruby>障害<rt>しょうがい</rt></ruby>→<ruby>相談支援<rt>そうだんしえん</rt></ruby>、<ruby>介護<rt>かいご</rt></ruby>→<ruby>介護支援<rt>かいごしえん</rt></ruby>と<ruby>対応<rt>たいおう</rt></ruby>させて<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>混乱<rt>こんらん</rt></ruby>しません。セットで<ruby>覚<rt>おぼ</rt></ruby>えましょう。 *(Nhớ theo cặp: khuyết tật → tư vấn hỗ trợ, điều dưỡng → hỗ trợ điều dưỡng thì không lẫn lộn. Nhớ theo bộ đôi nhé.)* |

---

## Tình huống 11 — Kết thúc buổi học · 22:30, ôn lại kế hoạch tuần sau

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>今日<rt>きょう</rt></ruby>もたくさん<ruby>勉強<rt>べんきょう</rt></ruby>できました。<ruby>残<rt>のこ</rt></ruby>り<ruby>2か月<rt>にかげつ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。 *(Chị Nguyễn, hôm nay học được nhiều thật. Còn 2 tháng nữa, cùng nhau cố gắng nhé.)* |
| Ngọc | そうですね。<ruby>来週<rt>らいしゅう</rt></ruby>は<ruby>保健医療分野<rt>ほけんいりょうぶんや</rt></ruby>の<ruby>後半<rt>こうはん</rt></ruby>と、<ruby>法改正<rt>ほうかいせい</rt></ruby>の<ruby>最新<rt>さいしん</rt></ruby>ポイントをやりましょう。 *(Đúng vậy. Tuần sau mình làm nửa sau phần lĩnh vực bảo hiểm y tế và điểm sửa đổi luật mới nhất nhé.)* |
| Hương | <ruby>試験<rt>しけん</rt></ruby>まであと62<ruby>日<rt>にち</rt></ruby>ですね。<ruby>毎日<rt>まいにち</rt></ruby>すこしずつでも<ruby>進<rt>すす</rt></ruby>めます。 *(Còn 62 ngày đến kỳ thi nhỉ. Em sẽ tiến từng chút mỗi ngày.)* |
| Ngọc | ハーさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby>の<ruby>出来<rt>でき</rt></ruby>を<ruby>見<rt>み</rt></ruby>れば<ruby>分<rt>わ</rt></ruby>かります。<ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>ってください。 *(Hương thế nào cũng được. Nhìn thành tích hôm nay là biết rồi. Về cẩn thận nhé.)* |
| Hương | ありがとうございました。グエンさん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>しましょう！ *(Cảm ơn chị nhiều. Chị Nguyễn ơi, nhất định cùng nhau đỗ nhé!)* |

---

## Tình huống 12 — Nhà trọ · 23:00, Ngọc gọi về cho mẹ

> Scene tiếng Việt — gọi điện về Cần Thơ.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi điện) Mẹ ơi, con mới học xong. Muộn rồi, mẹ chưa ngủ hả? |
| Mẹ | (tiếng Việt) Chờ con gọi mà. Hôm nay học với Hương không? |
| Ngọc | (tiếng Việt) Dạ. Hương tiến bộ nhiều lắm. Mà con cũng học được nhiều. Còn hai tháng nữa mẹ ơi, con hồi hộp lắm. |
| Mẹ | (tiếng Việt) Con học cực mà. Mẹ thấy con mệt không? |
| Ngọc | (tiếng Việt) Mệt nhưng vui mẹ ơi. Mệt kiểu mình đang đi đúng hướng. Mẹ yên tâm, con ổn. |
| Mẹ | (tiếng Việt) Mẹ tin con đỗ. Con gái mẹ cái gì cũng làm được. Thôi ngủ đi, đừng thức khuya quá. |
| Ngọc | (tiếng Việt, xúc động) Dạ. Con thương mẹ. Chúc mẹ ngủ ngon. |

---

## Đọng lại chương 5

Ngọc và Hương xây dựng nhịp học nhóm đều đặn: ôn từ lý thuyết quy trình ケアプラン đến phân tích tài chính bảo hiểm, từ thuật ngữ y tế khó đến phân biệt các loại hỗ trợ dịch vụ. Phương pháp "liên kết với kinh nghiệm thực tế hiện trường" của Ngọc giúp Hương tiếp thu nhanh. Sống một mình, Ngọc tự thu xếp mọi thứ để có thể học — sự tự lập ấy chính là nguồn sức mạnh bền bỉ nhất.

> Từ vựng & mẫu câu chương này: 介護支援分野・居宅介護支援・アセスメント・課題分析・担当者会議・介護給付・予防給付・特定施設・介護保険の財源・公費・第一号被保険者・第二号被保険者・地域支援事業・地域包括支援センター・包括的支援事業・障害者総合支援法・障害支援区分・相談支援専門員・介護支援専門員・長期目標・本人の意思の尊重', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000006, 800000032, NULL, 'markdown_book', 'T6. Vấp ngã ở thi thử (模擬試験の挫折)', '# Sách điều dưỡng viên quốc gia · T6. Vấp ngã ở thi thử (模擬試験の挫折)

> **Mục tiêu nhân vật:** Ngọc nhận điểm thi thử ケアマネ thấp hơn chuẩn đỗ rất nhiều, rơi vào khủng hoảng tâm lý. Hương động viên. Yamamoto, người dùng cũ, và gia đình cùng tiếp thêm sức mạnh. Chương thể hiện thất bại thực tế, không tô hồng.

---

## Bối cảnh

Tháng 9 năm 2032. Ngọc và Hương tham gia buổi 模擬試験 (thi thử) do một trung tâm ôn luyện tổ chức. Ngọc nhận điểm thấp: 35/60 trong khi chuẩn đỗ khoảng 38-40. Đây là cú sốc tâm lý nghiêm trọng — 5 năm chờ đợi, bao nhiêu công sức, và bây giờ chỉ còn hơn một tháng nữa.

---

## Tình huống 1 — Hội trường thi thử · 14:30, nhận phiếu điểm

| Vai | Lời thoại |
|---|---|
| Hướng dẫn viên | では<ruby>採点結果<rt>さいてんけっか</rt></ruby>を<ruby>配布<rt>はいふ</rt></ruby>します。<ruby>総合点<rt>そうごうてん</rt></ruby>のほかに、<ruby>分野<rt>ぶんや</rt></ruby>ごとの<ruby>得点<rt>とくてん</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>してください。 *(Tôi phát kết quả chấm điểm. Ngoài tổng điểm, hãy xem điểm từng lĩnh vực.)* |
| Ngọc | (nhìn phiếu, giọng nhỏ lại) 35<ruby>点<rt>てん</rt></ruby>...。<ruby>合格<rt>ごうかく</rt></ruby>ラインは38<ruby>点<rt>てん</rt></ruby>なのに...。 *(35 điểm... Chuẩn đỗ là 38 điểm mà....)* |
| Hương | (nhìn phiếu của mình) グエンさん...。<ruby>私<rt>わたし</rt></ruby>も36<ruby>点<rt>てん</rt></ruby>でした。<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>厳しい<rt>きびしい</rt></ruby><ruby>結果<rt>けっか</rt></ruby>ですね。 *(Chị Nguyễn... Em cũng 36 điểm. Hai chị em đều kết quả khó nhỉ.)* |
| Ngọc | <ruby>保健医療分野<rt>ほけんいりょうぶんや</rt></ruby>が9<ruby>点<rt>てん</rt></ruby>中5<ruby>点<rt>てん</rt></ruby>しか<ruby>取<rt>と</rt></ruby>れていない...。あんなに<ruby>勉強<rt>べんきょう</rt></ruby>したのに。 *(Phần lĩnh vực bảo hiểm y tế chỉ đạt 5/9 điểm... Đã học nhiều như vậy mà.)* |
| Hướng dẫn viên | <ruby>模擬試験<rt>もぎしけん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>は<ruby>現状把握<rt>げんじょうはあく</rt></ruby>のためです。<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>まずに、<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>克服<rt>こくふく</rt></ruby>するチャンスと<ruby>考<rt>かんが</rt></ruby>えてください。 *(Kết quả thi thử là để nắm bắt thực trạng. Đừng nản, hãy nghĩ đây là cơ hội khắc phục điểm yếu.)* |

---

## Tình huống 2 — Ngoài hội trường · 15:00, Ngọc và Hương nói chuyện

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いです。 *(Chị Nguyễn, ổn không? Mặt chị trông không được ạ.)* |
| Ngọc | ...正直、<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>まっ</rt></ruby><ruby>白<rt>しろ</rt></ruby>です。5<ruby>年間<rt>ねんかん</rt></ruby>ずっとこの<ruby>試験<rt>しけん</rt></ruby>のために<ruby>頑張<rt>がんば</rt></ruby>ってきたのに。<ruby>仕事<rt>しごと</rt></ruby>もプライベートも<ruby>犠牲<rt>ぎせい</rt></ruby>にして。 *(...Thật lòng, đầu óc trắng xóa. 5 năm cố gắng vì kỳ thi này. Hy sinh cả công việc lẫn thời gian cá nhân.)* |
| Hương | グエンさん...。でも、まだ<ruby>本試験<rt>ほんしけん</rt></ruby>まで1か<ruby>月以上<rt>げついじょう</rt></ruby>あります。<ruby>今日<rt>きょう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>本番<rt>ほんばん</rt></ruby>じゃないです。 *(Chị Nguyễn... Nhưng vẫn còn hơn 1 tháng đến kỳ thi thật. Kết quả hôm nay không phải kỳ thi chính thức.)* |
| Ngọc | でも、あと1か<ruby>月<rt>げつ</rt></ruby>で3<ruby>点<rt>てん</rt></ruby>以上<ruby>上<rt>あ</rt></ruby>げられるかどうか...。<ruby>自信<rt>じしん</rt></ruby>がなくなってきました。 *(Nhưng liệu còn 1 tháng có tăng được 3 điểm trở lên không... Mình mất tự tin rồi.)* |
| Hương | グエンさんが<ruby>諦<rt>あきら</rt></ruby>めたら、<ruby>私<rt>わたし</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ればいいんですか。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>諦<rt>あきら</rt></ruby>めないでください。 *(Nếu chị bỏ cuộc thì em còn biết cố cùng ai nữa. Đừng bỏ cuộc cùng nhau chị ơi.)* |

---

## Tình huống 3 — Trên đường về · 15:30, điện thoại từ Yamamoto

| Vai | Lời thoại |
|---|---|
| Yamamoto | (điện thoại) グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>模試<rt>もし</rt></ruby>はどうでしたか? *(Cô Nguyễn, thi thử hôm nay thế nào?)* |
| Ngọc | (giọng trầm) ...35<ruby>点<rt>てん</rt></ruby>でした。<ruby>合格<rt>ごうかく</rt></ruby>ラインに<ruby>届<rt>とど</rt></ruby>きませんでした。 *(...35 điểm. Không đạt chuẩn đỗ.)* |
| Yamamoto | そうでしたか。<ruby>気落<rt>きお</rt></ruby>ちするのは<ruby>当然<rt>とうぜん</rt></ruby>です。でも<ruby>私<rt>わたし</rt></ruby>が<ruby>昔<rt>むかし</rt></ruby>ケアマネを<ruby>取<rt>と</rt></ruby>ったとき、<ruby>模試<rt>もし</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>ラインを<ruby>超<rt>こ</rt></ruby>えたのは<ruby>直前<rt>ちょくぜん</rt></ruby>の<ruby>1回<rt>いっかい</rt></ruby>だけでしたよ。 *(Vậy sao. Buồn là điều đương nhiên. Nhưng khi tôi thi lấy ケアマネ ngày xưa, chỉ đúng 1 lần thi thử cuối cùng là qua chuẩn thôi.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さんでも、そうだったんですか? *(Cả chị Yamamoto cũng như vậy sao?)* |
| Yamamoto | <ruby>模試<rt>もし</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby>が<ruby>本番<rt>ほんばん</rt></ruby>より<ruby>難<rt>むずか</rt></ruby>しく<ruby>設定<rt>せってい</rt></ruby>されていることも<ruby>多<rt>おお</rt></ruby>いんです。<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>い<ruby>出<rt>だ</rt></ruby>すためですから。今から<ruby>集中<rt>しゅうちゅう</rt></ruby>すれば<ruby>十分<rt>じゅうぶん</rt></ruby>間に合いますよ。 *(Thi thử thường được đặt khó hơn kỳ thi chính để bộc lộ điểm yếu. Từ giờ tập trung là vẫn kịp đấy.)* |
| Ngọc | ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんの<ruby>言葉<rt>ことば</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。 *(Cảm ơn chị. Lời chị nói, thực sự cứu em rồi.)* |

---

## Tình huống 4 — Phòng Ngọc tại cơ sở · 17:00, Yamamoto ghé qua

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、ちょっといいですか。 *(Cô Nguyễn, có chút thời gian không?)* |
| Ngọc | はい、<ruby>山本<rt>やまもと</rt></ruby>さん。 *(Vâng, chị Yamamoto.)* |
| Yamamoto | <ruby>保健医療分野<rt>ほけんいりょうぶんや</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いなら、<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>分野別<rt>ぶんやべつ</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>してやるといいです。<ruby>疾患<rt>しっかん</rt></ruby>ごとに<ruby>介護上<rt>かいごじょう</rt></ruby>の<ruby>注意点<rt>ちゅうてん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>するのが<ruby>近道<rt>ちかみち</rt></ruby>です。 *(Nếu lĩnh vực bảo hiểm y tế yếu, nên làm đề cũ theo từng lĩnh vực tập trung. Sắp xếp điểm lưu ý trong điều dưỡng theo từng bệnh là con đường ngắn nhất.)* |
| Ngọc | <ruby>疾患<rt>しっかん</rt></ruby>ごとに?たとえば<ruby>認知症<rt>にんちしょう</rt></ruby>なら、<ruby>中核症状<rt>ちゅうかくしょうじょう</rt></ruby>と<ruby>周辺症状<rt>しゅうへんしょうじょう</rt></ruby>の<ruby>区別<rt>くべつ</rt></ruby>、<ruby>対応方法<rt>たいおうほうほう</rt></ruby>という<ruby>整理<rt>せいり</rt></ruby>ですか? *(Theo từng bệnh? Ví dụ như sa trí tuệ thì sắp xếp theo triệu chứng cốt lõi, triệu chứng ngoại biên, cách đối ứng?)* |
| Yamamoto | そうです。グエンさんは<ruby>現場経験<rt>げんばけいけん</rt></ruby>があるから、そこに<ruby>結<rt>むす</rt></ruby>びつければ<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えられます。 *(Đúng vậy. Cô Nguyễn có kinh nghiệm thực tế nên liên kết vào đó nhất định nhớ được.)* |
| Ngọc | <ruby>先生<rt>せんせい</rt></ruby>みたいに<ruby>教<rt>おし</rt></ruby>えていただいて、ありがとうございます。 *(Cảm ơn chị đã dạy như người thầy vậy.)* |
| Yamamoto | <ruby>先生<rt>せんせい</rt></ruby>じゃなくて<ruby>先輩<rt>せんぱい</rt></ruby>ですよ。そして<ruby>先輩<rt>せんぱい</rt></ruby>として、グエンさんには<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>受<rt>う</rt></ruby>かってほしいんです。 *(Không phải thầy, là đàn chị thôi. Và với tư cách đàn chị, tôi nhất định muốn cô đỗ.)* |

---

## Tình huống 5 — Phòng sinh hoạt · 17:30, người dùng cũ ông Tanaka động viên

| Vai | Lời thoại |
|---|---|
| Ông Tanaka | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>がないね。どうしたの。 *(Cô Nguyễn, hôm nay không có sức sống nhỉ. Có chuyện gì vậy?)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>分<rt>わ</rt></ruby>かりますか。<ruby>実<rt>じつ</rt></ruby>は<ruby>試験<rt>しけん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>で<ruby>点数<rt>てんすう</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>かったんです。 *(Ông Tanaka biết à. Thật ra điểm thi thử của cháu thấp ạ.)* |
| Ông Tanaka | そうか。でもグエンさん、<ruby>私<rt>わたし</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>で<ruby>何度<rt>なんど</rt></ruby>も<ruby>失敗<rt>しっぱい</rt></ruby>してきたよ。<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>本領発揮<rt>ほんりょうはっき</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>っているもんだ。 *(Vậy à. Nhưng cô Nguyễn, tôi đã thất bại nhiều lần trong công việc rồi. Trên đời có người phát huy được hết sức ở kỳ thật đấy.)* |
| Ngọc | <ruby>田中<rt>たなか</rt></ruby>さん...<ruby>有難い<rt>ありがたい</rt></ruby><ruby>言葉<rt>ことば</rt></ruby>です。 *(Ông Tanaka... Những lời quý giá quá.)* |
| Ông Tanaka | グエンさんには<ruby>頑張<rt>がんば</rt></ruby>ってほしい。<ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>私<rt>わたし</rt></ruby>のケアプランを<ruby>作<rt>つく</rt></ruby>ってくれ。 *(Tôi muốn cô cố gắng. Đỗ rồi, lập kế hoạch điều dưỡng cho tôi nhé.)* |
| Ngọc | (xúc động) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<ruby>約束<rt>やくそく</rt></ruby>します。 *(Ông Tanaka, cháu nhất định đỗ. Cháu hứa.)* |

---

## Tình huống 6 — Bàn làm việc cơ sở · 18:00, Ngọc phân tích điểm yếu

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm, ghi chép) <ruby>保健医療分野<rt>ほけんいりょうぶんや</rt></ruby>5/9<ruby>点<rt>てん</rt></ruby>...。<ruby>疾患<rt>しっかん</rt></ruby>の<ruby>種類<rt>しゅるい</rt></ruby>と<ruby>症状<rt>しょうじょう</rt></ruby>が<ruby>混乱<rt>こんらん</rt></ruby>している。<ruby>集中<rt>しゅうちゅう</rt></ruby>してやり<ruby>直<rt>なお</rt></ruby>す。 *(Lĩnh vực bảo hiểm y tế 5/9 điểm... Các loại bệnh và triệu chứng đang lẫn lộn. Tập trung làm lại từ đầu.)* |
| Kobayashi | (施設長 ghé qua) グエンさん、<ruby>残業<rt>ざんぎょう</rt></ruby>ですか? *(Cô Nguyễn, tăng ca à?)* |
| Ngọc | <ruby>施設長<rt>しせつちょう</rt></ruby>、いいえ、<ruby>今日<rt>きょう</rt></ruby>の<ruby>模試<rt>もし</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>をしています。 *(Ông Giám đốc, không ạ, em đang ôn lại đề thi thử hôm nay.)* |
| Kobayashi | <ruby>模試<rt>もし</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しかったですか。 *(Thi thử khó không?)* |
| Ngọc | はい、<ruby>合格<rt>ごうかく</rt></ruby>ラインに<ruby>届<rt>とど</rt></ruby>きませんでした。<ruby>正直<rt>しょうじき</rt></ruby>、ショックを<ruby>受<rt>う</rt></ruby>けています。 *(Vâng, không đạt chuẩn đỗ. Thật lòng em đang bị sốc.)* |
| Kobayashi | グエンさん、この<ruby>施設<rt>しせつ</rt></ruby>で<ruby>初<rt>はじ</rt></ruby>めてケアマネ<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>職員<rt>しょくいん</rt></ruby>に<ruby>期待<rt>きたい</rt></ruby>しています。<ruby>業務<rt>ぎょうむ</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なら<ruby>言<rt>い</rt></ruby>ってください。 *(Cô Nguyễn, tôi đang kỳ vọng vào nhân viên đầu tiên của cơ sở lấy được chứng chỉ ケアマネ. Nếu cần điều chỉnh công việc, cứ nói.)* |

---

## Tình huống 7 — Nhà trọ · 20:00, Ngọc một mình ôn bài

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại, nhìn quyển sách) <ruby>今日<rt>きょう</rt></ruby>は<ruby>負<rt>ま</rt></ruby>けた。でも<ruby>明日<rt>あした</rt></ruby>からが<ruby>本番<rt>ほんばん</rt></ruby>だ。 *(Hôm nay thua. Nhưng từ ngày mai mới là trận thật.)* |
| Ngọc | (nhìn quanh phòng trọ yên tĩnh) <ruby>一人<rt>ひとり</rt></ruby>だと、<ruby>静<rt>しず</rt></ruby>かすぎて<ruby>頭<rt>あたま</rt></ruby>の<ruby>中<rt>なか</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>がうるさい。...でも、その<ruby>静<rt>しず</rt></ruby>かさが<ruby>集中<rt>しゅうちゅう</rt></ruby>を<ruby>生<rt>う</rt></ruby>む。 *(Sống một mình, yên tĩnh quá khiến tiếng trong đầu ồn ào. ...Nhưng chính sự yên tĩnh đó tạo ra sự tập trung.)* |
| Ngọc | (ghi chép) <ruby>田中<rt>たなか</rt></ruby>さんに<ruby>約束<rt>やくそく</rt></ruby>した。<ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>田中<rt>たなか</rt></ruby>さんのケアプランを<ruby>作<rt>つく</rt></ruby>る。<ruby>諦<rt>あきら</rt></ruby>めない。 *(Đã hứa với ông Tanaka. Đỗ rồi sẽ lập kế hoạch điều dưỡng cho ông. Không bỏ cuộc.)* |

---

## Tình huống 8 — Bàn học · 21:00, Ngọc tập trung ôn lại điểm yếu

| Vai | Lời thoại |
|---|---|
| Ngọc | (ghi chép ra giấy) <ruby>認知症<rt>にんちしょう</rt></ruby>：<ruby>中核症状<rt>ちゅうかくしょうじょう</rt></ruby>は<ruby>記憶障害<rt>きおくしょうがい</rt></ruby>・<ruby>見当識障害<rt>けんとうしきしょうがい</rt></ruby>・<ruby>実行機能障害<rt>じっこうきのうしょうがい</rt></ruby>。<ruby>周辺症状<rt>しゅうへんしょうじょう</rt></ruby>は<ruby>徘徊<rt>はいかい</rt></ruby>・<ruby>暴言<rt>ぼうげん</rt></ruby>・うつ... *(Sa trí tuệ: triệu chứng cốt lõi là rối loạn trí nhớ, rối loạn định hướng, rối loạn chức năng thực thi. Triệu chứng ngoại biên là lang thang, lời nói bạo lực, trầm cảm...)* |
| Ngọc | <ruby>脳梗塞<rt>のうこうそく</rt></ruby>後遺症は<ruby>麻痺<rt>まひ</rt></ruby>・<ruby>嚥下障害<rt>えんげしょうがい</rt></ruby>・<ruby>失語症<rt>しつごしょう</rt></ruby>。<ruby>介護上<rt>かいごじょう</rt></ruby>の<ruby>注意<rt>ちゅうい</rt></ruby>は<ruby>安全な姿勢<rt>あんぜんなしせい</rt></ruby>でのとろみ<ruby>食<rt>しょく</rt></ruby>...。<ruby>現場<rt>げんば</rt></ruby>で<ruby>見<rt>み</rt></ruby>てきたことだ。<ruby>繋<rt>つな</rt></ruby>がる。 *(Di chứng nhồi máu não là liệt, rối loạn nuốt, mất ngôn ngữ. Lưu ý trong điều dưỡng là thức ăn đặc ở tư thế an toàn... Đây là những gì mình đã thấy ở hiện trường. Kết nối được rồi.)* |
| Ngọc | (độc thoại) <ruby>山本<rt>やまもと</rt></ruby>さんの<ruby>言<rt>い</rt></ruby>う<ruby>通<rt>とお</rt></ruby>りだ。<ruby>現場<rt>げんば</rt></ruby>の<ruby>記憶<rt>きおく</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつければ、<ruby>覚<rt>おぼ</rt></ruby>えられる。あきらめない。 *(Đúng như chị Yamamoto nói. Liên kết với ký ức hiện trường thì nhớ được. Không bỏ cuộc.)* |

---

## Tình huống 9 — Buổi học nhóm khẩn cấp · 22:00, Hương gọi điện

| Vai | Lời thoại |
|---|---|
| Hương | (điện thoại) グエンさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>、もう<ruby>気<rt>き</rt></ruby>にしていませんよね? *(Chị Nguyễn, kết quả hôm nay rồi thôi nhé?)* |
| Ngọc | (thở ra) まだ<ruby>少<rt>すこ</rt></ruby>し<ruby>引<rt>ひ</rt></ruby>きずっています。でも<ruby>今<rt>いま</rt></ruby>、<ruby>保健医療<rt>ほけんいりょう</rt></ruby>の<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>していました。 *(Vẫn còn kéo lê một chút. Nhưng giờ mình đang sắp xếp lại điểm yếu phần bảo hiểm y tế.)* |
| Hương | さすがです!<ruby>私<rt>わたし</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じことをしていました。グエンさん、<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>特別勉強会<rt>とくべつべんきょうかい</rt></ruby>をやりませんか?<ruby>模試<rt>もし</rt></ruby>の<ruby>間違<rt>まちが</rt></ruby>えた<ruby>問題<rt>もんだい</rt></ruby>だけを<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>解<rt>と</rt></ruby>き<ruby>直<rt>なお</rt></ruby>す。 *(Giỏi ghê! Em cũng đang làm việc đó. Chị Nguyễn, cuối tuần mình tổ chức buổi học đặc biệt không? Làm lại tất cả câu sai trong đề thi thử.)* |
| Ngọc | いいですね。<ruby>土曜日<rt>どようび</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>にしましょう。<ruby>保健医療<rt>ほけんいりょう</rt></ruby>と<ruby>介護支援<rt>かいごしえん</rt></ruby>の2<ruby>分野<rt>ぶんや</rt></ruby>を<ruby>集中<rt>しゅうちゅう</rt></ruby>して。 *(Tốt đấy. Chiều thứ Bảy nhé. Tập trung 2 lĩnh vực bảo hiểm y tế và hỗ trợ điều dưỡng.)* |
| Hương | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>巻<rt>ま</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>しましょう!グエンさんなら<ruby>絶対<rt>ぜったい</rt></ruby>にできます。 *(Cùng nhau lật ngược tình thế nhé! Chị Nguyễn thế nào cũng làm được.)* |

---

## Tình huống 10 — Buổi sáng hôm sau · 7:00, bắt đầu ngày mới

| Vai | Lời thoại |
|---|---|
| Nakamura | (看護師) グエンさん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>元気<rt>げんき</rt></ruby>そうですね。 *(Cô Nguyễn, chào buổi sáng. Hôm nay trông khỏe đấy.)* |
| Ngọc | 中村さん、おはようございます。<ruby>昨日<rt>きのう</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>みましたが、<ruby>立<rt>た</rt></ruby>て<ruby>直<rt>なお</rt></ruby>しました。 *(Nakamura-san, chào buổi sáng. Hôm qua em hơi nản nhưng đã đứng dậy lại rồi.)* |
| Nakamura | <ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>のこと、<ruby>山本<rt>やまもと</rt></ruby>さんから<ruby>聞<rt>き</rt></ruby>きました。ケアマネの<ruby>試験<rt>しけん</rt></ruby>は<ruby>医療<rt>いりょう</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>ですから、<ruby>分<rt>わ</rt></ruby>からないことがあれば<ruby>聞<rt>き</rt></ruby>いてください。<ruby>私<rt>わたし</rt></ruby>でよければ<ruby>説明<rt>せつめい</rt></ruby>します。 *(Về kết quả thi thử, tôi nghe chị Yamamoto nói. Thi ケアマネ cần cả kiến thức y tế, nếu có gì không hiểu cứ hỏi tôi. Tôi giải thích cho nếu được.)* |
| Ngọc | 中村さん、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>疾患<rt>しっかん</rt></ruby>の<ruby>医療処置<rt>いりょうしょち</rt></ruby>の<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>苦手<rt>にがて</rt></ruby>で...。 *(Nakamura-san, thật không? Phần xử lý y tế của các bệnh em đặc biệt yếu...)* |
| Nakamura | いつでもどうぞ。<ruby>看護師<rt>かんごし</rt></ruby>の<ruby>立場<rt>たちば</rt></ruby>から<ruby>説明<rt>せつめい</rt></ruby>すると、<ruby>試験<rt>しけん</rt></ruby>にも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちますよ。 *(Bất cứ lúc nào cũng được. Giải thích từ góc độ y tá sẽ có ích cho kỳ thi đấy.)* |

---

## Tình huống 11 — Phòng làm việc · 12:00, lập kế hoạch ôn tập 40 ngày cuối

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn lịch) あと40<ruby>日<rt>にち</rt></ruby>。<ruby>保健医療<rt>ほけんいりょう</rt></ruby>の<ruby>弱点<rt>じゃくてん</rt></ruby><ruby>克服<rt>こくふく</rt></ruby>に20<ruby>日<rt>にち</rt></ruby>、<ruby>全体<rt>ぜんたい</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>に10<ruby>日<rt>にち</rt></ruby>、<ruby>直前<rt>ちょくぜん</rt></ruby>の<ruby>模試<rt>もし</rt></ruby>に10<ruby>日<rt>にち</rt></ruby>。 *(Còn 40 ngày. 20 ngày khắc phục điểm yếu bảo hiểm y tế, 10 ngày ôn tổng thể, 10 ngày thi thử cuối.)* |
| Ngọc | <ruby>一日<rt>いちにち</rt></ruby>に<ruby>過去問<rt>かこもん</rt></ruby>10<ruby>問<rt>もん</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>やる。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>合間<rt>あいま</rt></ruby>に<ruby>単語<rt>たんご</rt></ruby>カード。<ruby>諦<rt>あきら</rt></ruby>めない。 *(Mỗi ngày nhất định làm 10 câu đề cũ. Tranh thủ giờ nghỉ ôn thẻ từ vựng. Không bỏ cuộc.)* |
| Linh | (TTS) グエンさん、ケアマネの<ruby>勉強<rt>べんきょう</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>そうですね。でも<ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていると、<ruby>私<rt>わたし</rt></ruby>も<ruby>将来<rt>しょうらい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>りたいと<ruby>思<rt>おも</rt></ruby>います。 *(Cô Nguyễn, việc ôn ケアマネ trông vất vả ghê. Nhưng nhìn đàn chị, em cũng muốn cố gắng trong tương lai.)* |
| Ngọc | リンさん、ありがとう。<ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>失敗<rt>しっぱい</rt></ruby>するよ。でも<ruby>諦<rt>あきら</rt></ruby>めない、それだけです。 *(Linh, cảm ơn em. Đàn chị cũng thất bại đó. Nhưng không bỏ cuộc, chỉ vậy thôi.)* |

---

## Tình huống 12 — Điện thoại tối muộn · 22:00, mẹ gọi từ Việt Nam

> Scene tiếng Việt — tuyến mẹ ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mẹ Ngọc | (tiếng Việt) Con ơi, dạo này học hành thế nào? |
| Ngọc | (tiếng Việt) Con đang ôn thi ケアマネ mẹ ơi. Tuần này thi thử điểm thấp hơn chuẩn, con đang nản lắm. |
| Mẹ Ngọc | (tiếng Việt) Con gái của mẹ học đỗ 介護福祉士 rồi làm trưởng nhóm, mà nản cái gì. Bên này mẹ khoe với cả xóm rồi. |
| Ngọc | (tiếng Việt, cười mếu) Mẹ ơi... |
| Mẹ Ngọc | (tiếng Việt) Mẹ không hiểu cái thi cử đó, nhưng mẹ biết con. Con không bỏ được đâu. Cứ ngủ ngon rồi mai lại học. |
| Ngọc | (tiếng Việt) Vâng mẹ. Con nhớ mẹ. |
| Mẹ Ngọc | (tiếng Việt) Mẹ cũng nhớ. Thôi ngủ đi. Thi xong bay về thăm mẹ. |

---

## Đọng lại chương 6

Điểm thi thử thấp là cú sốc thực sự, không được che giấu. Nhưng Ngọc tìm lại động lực qua nhiều nguồn: lời khuyến khích thực tế của Yamamoto, lời hứa với ông Tanaka, sự sẵn sàng hỗ trợ của Nakamura, tinh thần đồng hành của Hương, và lời mẹ từ Việt Nam. Thất bại không kết thúc hành trình — nó tái định hình kế hoạch.

> Từ vựng & mẫu câu chương này: 模擬試験・採点結果・合格ライン・弱点克服・保健医療分野・疾患ごとの整理・中核症状・周辺症状・見当識障害・実行機能障害・嚥下障害・失語症・脳梗塞・過去問・単語カード・直前・本領発揮・落ち込む・立て直す', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000007, 800000032, NULL, 'markdown_book', 'T7. Sự cố cơ sở trước kỳ thi (試験前の施設トラブル)', '# Sách điều dưỡng viên quốc gia · T7. Sự cố cơ sở trước kỳ thi (試験前の施設トラブル)

> **Mục tiêu nhân vật:** Ngay tuần trước kỳ thi ケアマネ (11/10), một sự cố nghiêm trọng xảy ra tại cơ sở đòi hỏi 介護主任 Ngọc phải xử lý khủng hoảng. Ngọc phải cân bằng trách nhiệm người quản lý và mục tiêu cá nhân sắp đến hạn. Chương thể hiện sức nặng của vai trò 主任 và ngôn ngữ xử lý sự cố cấp độ quản lý.

---

## Bối cảnh

Đầu tháng 10 năm 2032. Còn đúng 7 ngày đến kỳ thi ケアマネ (11/10). Ngọc đang trong giai đoạn ôn tập nước rút. Đêm thứ Sáu, một người dùng ngã trong phòng tắm — vụ 転倒 nghiêm trọng. Sáng thứ Bảy, gia đình người dùng kéo đến phản ánh. Ngọc phải dẫn đầu xử lý: từ báo cáo sự cố, họp khẩn, tiếp gia đình, đến điều chỉnh kế hoạch chăm sóc — tất cả trong tuần cuối ôn thi.

---

## Tình huống 1 — Phòng trực ban · 23:00 thứ Sáu, báo cáo sự cố

| Vai | Lời thoại |
|---|---|
| Tuấn | (TTS) グエンさん、<ruby>大変<rt>たいへん</rt></ruby>です!<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>浴室<rt>よくしつ</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>しました。<ruby>右足<rt>みぎあし</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>いと<ruby>言<rt>い</rt></ruby>っています。 *(Cô Nguyễn, nguy rồi! Ông Yamada ngã trong phòng tắm. Ông nói chân phải đau.)* |
| Ngọc | すぐ<ruby>行<rt>い</rt></ruby>きます。中村さんに<ruby>連絡<rt>れんらく</rt></ruby>してください。そして<ruby>施設長<rt>しせつちょう</rt></ruby>にも<ruby>報告<rt>ほうこく</rt></ruby>を。 *(Tôi đến ngay. Em liên lạc với Nakamura-san. Và báo cáo lên Giám đốc luôn.)* |
| Tuấn | はい、<ruby>分<rt>わ</rt></ruby>かりました。 *(Vâng, rõ ạ.)* |
| Ngọc | (đến nơi, kiểm tra ông Yamada) <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。どこが<ruby>痛<rt>いた</rt></ruby>いですか。<ruby>動<rt>うご</rt></ruby>かないでください。 *(Ông Yamada, ông có ổn không? Đau ở đâu ạ? Đừng cử động.)* |
| Ông Yamada | (đau đớn) <ruby>右<rt>みぎ</rt></ruby>...。<ruby>腰<rt>こし</rt></ruby>も<ruby>痛<rt>いた</rt></ruby>い。 *(Bên phải... Lưng cũng đau.)* |
| Ngọc | わかりました。<ruby>救急車<rt>きゅうきゅうしゃ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びます。<ruby>安心<rt>あんしん</rt></ruby>してください。<ruby>私<rt>わたし</rt></ruby>がそばにいます。 *(Rõ rồi. Tôi gọi xe cứu thương. Ông yên tâm. Tôi ở bên ông.)* |

---

## Tình huống 2 — Phòng trực ban · 23:30, lập báo cáo sự cố

| Vai | Lời thoại |
|---|---|
| Nakamura | <ruby>山田<rt>やまだ</rt></ruby>さんは<ruby>右大腿骨<rt>みぎだいたいこつ</rt></ruby><ruby>頸部<rt>けいぶ</rt></ruby><ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いがあります。<ruby>病院<rt>びょういん</rt></ruby>で<ruby>精密検査<rt>せいみつけんさ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。 *(Ông Yamada nghi ngờ gãy cổ xương đùi phải. Cần kiểm tra chuyên sâu tại bệnh viện.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>事故報告書<rt>じこほうこくしょ</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>します。トゥアンさん、<ruby>転倒<rt>てんとう</rt></ruby>した<ruby>時間<rt>じかん</rt></ruby>と<ruby>発見<rt>はっけん</rt></ruby>した<ruby>時間<rt>じかん</rt></ruby>、<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてください。 *(Rõ rồi. Tôi lập báo cáo sự cố. Tuấn ơi, em nói rõ thời điểm ngã và thời điểm phát hiện.)* |
| Tuấn | <ruby>発見<rt>はっけん</rt></ruby>したのは23<ruby>時<rt>じ</rt></ruby>05<ruby>分<rt>ふん</rt></ruby>です。<ruby>定時<rt>ていじ</rt></ruby>の<ruby>見回<rt>みまわ</rt></ruby>りで<ruby>気<rt>き</rt></ruby>がつきました。<ruby>転倒<rt>てんとう</rt></ruby>した<ruby>時間<rt>じかん</rt></ruby>は<ruby>不明<rt>ふめい</rt></ruby>です。 *(Phát hiện lúc 23:05. Để ý khi tuần tra định kỳ. Thời điểm ngã không rõ.)* |
| Ngọc | <ruby>浴室<rt>よくしつ</rt></ruby>の<ruby>床<rt>ゆか</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>は?<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>どめ</rt></ruby>マットはありましたか? *(Tình trạng sàn phòng tắm thế nào? Có thảm chống trượt không?)* |
| Tuấn | あの...マットは<ruby>洗濯中<rt>せんたくちゅう</rt></ruby>で<ruby>外<rt>はず</rt></ruby>してありました。 *(Thưa... Thảm đang giặt nên đã tháo ra.)* |
| Ngọc | (giọng nghiêm, không trách cứ) わかりました。<ruby>事実<rt>じじつ</rt></ruby>として<ruby>記録<rt>きろく</rt></ruby>します。<ruby>今後<rt>こんご</rt></ruby>の<ruby>対策<rt>たいさく</rt></ruby>も<ruby>報告書<rt>ほうこくしょ</rt></ruby>に<ruby>含<rt>ふく</rt></ruby>めます。 *(Rõ rồi. Ghi lại như thực tế đã xảy ra. Biện pháp phòng ngừa sau này cũng đưa vào báo cáo.)* |

---

## Tình huống 3 — Họp khẩn sáng thứ Bảy · 8:00

| Vai | Lời thoại |
|---|---|
| Kobayashi | <ruby>昨夜<rt>さくや</rt></ruby>の<ruby>転倒事故<rt>てんとうじこ</rt></ruby>について、グエンさんから<ruby>報告<rt>ほうこく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。 *(Về vụ ngã tối qua, nhờ cô Nguyễn báo cáo.)* |
| Ngọc | はい。<ruby>昨夜<rt>さくや</rt></ruby>23<ruby>時<rt>じ</rt></ruby>05<ruby>分<rt>ふん</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>浴室<rt>よくしつ</rt></ruby>で<ruby>転倒<rt>てんとう</rt></ruby>し、<ruby>救急搬送<rt>きゅうきゅうはんそう</rt></ruby>しました。<ruby>右大腿骨<rt>みぎだいたいこつ</rt></ruby><ruby>頸部<rt>けいぶ</rt></ruby><ruby>骨折<rt>こっせつ</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いで、<ruby>現在<rt>げんざい</rt></ruby>は<ruby>病院<rt>びょういん</rt></ruby>で<ruby>検査中<rt>けんさちゅう</rt></ruby>です。 *(Vâng. 23:05 tối qua, ông Yamada ngã trong phòng tắm và được chuyển cấp cứu. Nghi ngờ gãy cổ xương đùi phải, hiện đang kiểm tra tại bệnh viện.)* |
| Kobayashi | <ruby>原因<rt>げんいん</rt></ruby>は? *(Nguyên nhân?)* |
| Ngọc | <ruby>浴室<rt>よくしつ</rt></ruby>の<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>どめ</rt></ruby>マットが<ruby>洗濯中<rt>せんたくちゅう</rt></ruby>で<ruby>外<rt>はず</rt></ruby>してあったこと、<ruby>床<rt>ゆか</rt></ruby>が<ruby>濡<rt>ぬ</rt></ruby>れていたことが<ruby>原因<rt>げんいん</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えられます。<ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby>として、マットの<ruby>予備<rt>よび</rt></ruby>を<ruby>常時<rt>じょうじ</rt></ruby><ruby>用意<rt>ようい</rt></ruby>し、<ruby>浴室<rt>よくしつ</rt></ruby><ruby>使用前<rt>しようまえ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>を<ruby>義務化<rt>ぎむか</rt></ruby>することを<ruby>提案<rt>ていあん</rt></ruby>します。 *(Nguyên nhân được cho là thảm chống trượt đang giặt nên tháo ra, và sàn đang ướt. Biện pháp phòng ngừa tái phát, tôi đề nghị luôn chuẩn bị thảm dự phòng và bắt buộc kiểm tra trước khi sử dụng phòng tắm.)* |
| Nakamura | <ruby>山田<rt>やまだ</rt></ruby>さんは<ruby>以前<rt>いぜん</rt></ruby>から<ruby>転倒<rt>てんとう</rt></ruby>リスクが<ruby>高<rt>たか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>でした。ケアプランの<ruby>見直<rt>みなお</rt></ruby>しも<ruby>必要<rt>ひつよう</rt></ruby>かもしれません。 *(Ông Yamada vốn đã là người có nguy cơ ngã cao. Có thể cần xem xét lại kế hoạch điều dưỡng.)* |
| Ngọc | はい、<ruby>退院後<rt>たいいんご</rt></ruby>のケアプランについては、<ruby>リハビリ<rt>りはびり</rt></ruby>の<ruby>専門家<rt>せんもんか</rt></ruby>も<ruby>交<rt>まじ</rt></ruby>えて<ruby>再検討<rt>さいけんとう</rt></ruby>します。 *(Vâng, về kế hoạch điều dưỡng sau khi xuất viện, tôi sẽ tái xem xét có cả chuyên gia phục hồi chức năng.)* |

---

## Tình huống 4 — Phòng tiếp khách · 10:00, tiếp gia đình ông Yamada

| Vai | Lời thoại |
|---|---|
| Con trai ông Yamada | (giận) どういうことですか。<ruby>父<rt>ちち</rt></ruby>が<ruby>転倒<rt>てんとう</rt></ruby>して<ruby>骨折<rt>こっせつ</rt></ruby>したんですよ。<ruby>施設<rt>しせつ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をしていたんですか! *(Chuyện gì đây. Bố tôi ngã gãy xương đấy. Cơ sở đã làm gì vậy!)* |
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さんのご<ruby>子息<rt>しそく</rt></ruby>さん、このたびは<ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>大変<rt>たいへん</rt></ruby>なご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけして、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>介護主任<rt>かいごしゅにん</rt></ruby>のグエンと<ruby>申<rt>もう</rt></ruby>します。 *(Thưa cậu con trai ông Yamada, lần này đã gây phiền nhiễu lớn cho ông Yamada, thật sự rất xin lỗi. Tôi là Nguyễn, trưởng nhóm điều dưỡng.)* |
| Con trai | <ruby>謝<rt>あやま</rt></ruby>ればいいというものじゃない。<ruby>父<rt>ちち</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るのが<ruby>施設<rt>しせつ</rt></ruby>の<ruby>義務<rt>ぎむ</rt></ruby>でしょう。 *(Không phải xin lỗi là xong. Đảm bảo an toàn cho bố tôi là nghĩa vụ của cơ sở chứ.)* |
| Ngọc | おっしゃる<ruby>通<rt>とお</rt></ruby>りです。<ruby>事実<rt>じじつ</rt></ruby>と<ruby>原因<rt>げんいん</rt></ruby>について、<ruby>詳<rt>くわ</rt></ruby>しくご<ruby>説明<rt>せつめい</rt></ruby>させてください。そして<ruby>今後<rt>こんご</rt></ruby>の<ruby>再発防止策<rt>さいはつぼうしさく</rt></ruby>もお<ruby>伝<rt>つた</rt></ruby>えします。 *(Ông nói đúng. Xin phép tôi giải thích chi tiết về sự thật và nguyên nhân. Và tôi cũng sẽ trình bày biện pháp phòng ngừa tái phát.)* |
| Kobayashi | (施設長, bổ sung) ご<ruby>家族<rt>かぞく</rt></ruby>の<ruby>ご不安<rt>ごふあん</rt></ruby>はよく<ruby>分<rt>わ</rt></ruby>かります。<ruby>今後<rt>こんご</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>についても、グエン<ruby>主任<rt>しゅにん</rt></ruby>が<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>対応<rt>たいおう</rt></ruby>します。 *(Tôi hiểu sự lo lắng của gia đình. Về ứng phó sau này, Trưởng nhóm Nguyễn sẽ chịu trách nhiệm xử lý.)* |

---

## Tình huống 5 — Phòng tiếp khách · 10:30, giải thích chi tiết cho gia đình

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>昨夜<rt>さくや</rt></ruby>の<ruby>経緯<rt>けいい</rt></ruby>をご<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>浴室<rt>よくしつ</rt></ruby>の<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>どめ</rt></ruby>マットが<ruby>洗濯中<rt>せんたくちゅう</rt></ruby>で<ruby>外<rt>はず</rt></ruby>してあり、<ruby>床<rt>ゆか</rt></ruby>が<ruby>濡<rt>ぬ</rt></ruby>れていました。これが<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>と<ruby>考<rt>かんが</rt></ruby>えています。 *(Tôi xin giải thích diễn biến tối qua. Thảm chống trượt phòng tắm đang giặt nên đã tháo ra, sàn đang ướt. Đây được cho là nguyên nhân trực tiếp.)* |
| Con trai | なぜマットを<ruby>外<rt>はず</rt></ruby>したのに<ruby>代わり<rt>かわり</rt></ruby>のマットを<ruby>置<rt>お</rt></ruby>かなかったんですか。 *(Tại sao tháo thảm ra mà không đặt thảm thay thế?)* |
| Ngọc | <ruby>おっしゃる<rt>おっしゃる</rt></ruby><ruby>通<rt>とお</rt></ruby>りで、<ruby>予備<rt>よび</rt></ruby>のマットを<ruby>用意<rt>ようい</rt></ruby>しておくべきでした。<ruby>今後<rt>こんご</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>予備<rt>よび</rt></ruby>を<ruby>常時<rt>じょうじ</rt></ruby><ruby>用意<rt>ようい</rt></ruby>し、<ruby>浴室<rt>よくしつ</rt></ruby><ruby>使用前<rt>しようまえ</rt></ruby>に<ruby>安全確認<rt>あんぜんかくにん</rt></ruby>を<ruby>必須<rt>ひっす</rt></ruby>とする<ruby>手順<rt>てじゅん</rt></ruby>に<ruby>改<rt>あらた</rt></ruby>めます。 *(Ông nói đúng, chúng tôi nên chuẩn bị thảm dự phòng. Sau này nhất định luôn chuẩn bị thảm dự phòng và sửa đổi quy trình bắt buộc xác nhận an toàn trước khi sử dụng phòng tắm.)* |
| Con trai | (giọng giảm bớt) <ruby>父<rt>ちち</rt></ruby>の<ruby>容体<rt>ようだい</rt></ruby>はどうなりますか。<ruby>施設<rt>しせつ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>れますか。 *(Tình trạng bố tôi sẽ như thế nào? Có thể về lại cơ sở không?)* |
| Ngọc | <ruby>現在<rt>げんざい</rt></ruby><ruby>病院<rt>びょういん</rt></ruby>で<ruby>検査中<rt>けんさちゅう</rt></ruby>です。<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>次第<ruby>ご<rt>ご</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>退院後<rt>たいいんご</rt></ruby>のケアについては、<ruby>病院<rt>びょういん</rt></ruby>のリハビリ<ruby>担当者<rt>たんとうしゃ</rt></ruby>と<ruby>連携<rt>れんけい</rt></ruby>して<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てます。 *(Hiện đang kiểm tra tại bệnh viện. Ngay khi có kết quả tôi sẽ liên lạc. Về chăm sóc sau xuất viện, tôi sẽ phối hợp với người phụ trách phục hồi chức năng ở bệnh viện để lập kế hoạch.)* |

---

## Tình huống 6 — Phòng làm việc · 13:00, xây dựng quy trình mới

| Vai | Lời thoại |
|---|---|
| Ngọc | みなさん、<ruby>今回<rt>こんかい</rt></ruby>の<ruby>転倒事故<rt>てんとうじこ</rt></ruby>を<ruby>受<rt>う</rt></ruby>けて、<ruby>浴室<rt>よくしつ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>します。<ruby>新<rt>あたら</rt></ruby>しいチェックリストを<ruby>作成<rt>さくせい</rt></ruby>しました。 *(Mọi người, dựa trên vụ ngã lần này, tôi sẽ xem xét lại quy trình sử dụng phòng tắm. Tôi đã lập bảng kiểm tra mới.)* |
| Tuấn | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りなかったです。 *(Đàn chị ơi, em xin lỗi. Sự xác nhận của em còn thiếu sót.)* |
| Ngọc | トゥアンさんだけの<ruby>責任<rt>せきにん</rt></ruby>じゃありません。<ruby>仕組み<rt>しくみ</rt></ruby>として<ruby>予防<rt>よぼう</rt></ruby>できなかった<ruby>私<rt>わたし</rt></ruby>たち<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>です。これからは<ruby>個人<rt>こじん</rt></ruby>の<ruby>注意<rt>ちゅうい</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>らず、<ruby>仕組み<rt>しくみ</rt></ruby>で<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。 *(Không chỉ là trách nhiệm của Tuấn. Đây là vấn đề của tất cả chúng ta vì không phòng ngừa được bằng hệ thống. Từ nay, không dựa vào sự chú ý của cá nhân mà dùng hệ thống để bảo vệ an toàn.)* |
| Linh | <ruby>新<rt>あたら</rt></ruby>しいチェックリスト、<ruby>わかりやすくて<rt>わかりやすくて</rt></ruby><ruby>助<rt>たす</rt></ruby>かります。 *(Bảng kiểm tra mới dễ hiểu, tiện lắm ạ.)* |
| Ngọc | いつでも<ruby>意見<rt>いけん</rt></ruby>があれば<ruby>言<rt>い</rt></ruby>ってください。みなさんの<ruby>現場<rt>げんば</rt></ruby>の<ruby>声<rt>こえ</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>です。 *(Bất cứ lúc nào có ý kiến thì nói nhé. Tiếng nói từ hiện trường của mọi người rất quan trọng.)* |

---

## Tình huống 7 — Phòng làm việc · 15:00, Ngọc nói chuyện với Kobayashi

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>今日<rt>きょう</rt></ruby>はよく<ruby>対応<rt>たいおう</rt></ruby>してくれました。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>も<ruby>最終的<rt>さいしゅうてき</rt></ruby>には<ruby>納得<rt>なっとく</rt></ruby>してくださいました。 *(Cô Nguyễn, hôm nay xử lý tốt. Gia đình cũng cuối cùng đã chấp nhận rồi.)* |
| Ngọc | ありがとうございます。でも<ruby>施設長<rt>しせつちょう</rt></ruby>、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げると、<ruby>来週<rt>らいしゅう</rt></ruby>のケアマネ<ruby>試験<rt>しけん</rt></ruby>のことが<ruby>頭<rt>あたま</rt></ruby>から<ruby>離<rt>はな</rt></ruby>れませんでした。<ruby>今日<rt>きょう</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>が<ruby>優先<rt>ゆうせん</rt></ruby>だと<ruby>分<rt>わ</rt></ruby>かっていましたが。 *(Cảm ơn ông. Nhưng thưa Giám đốc, thật lòng mà nói, kỳ thi ケアマネ tuần sau không rời khỏi đầu tôi. Dù tôi biết hôm nay công việc phải ưu tiên.)* |
| Kobayashi | グエンさん、それが<ruby>主任<rt>しゅにん</rt></ruby>の<ruby>重さ<rt>おもさ</rt></ruby>です。でも<ruby>今日<rt>きょう</rt></ruby>のあなたを<ruby>見<rt>み</rt></ruby>ていると、ケアマネを<ruby>取<rt>と</rt></ruby>った<ruby>後<rt>あと</rt></ruby>のあなたがどれほど<ruby>頼<rt>たの</rt></ruby>もしいか、<ruby>想像<rt>そうぞう</rt></ruby>できます。 *(Cô Nguyễn, đó là sức nặng của vai trò trưởng nhóm. Nhưng nhìn cô hôm nay, tôi có thể tưởng tượng cô sau khi lấy được ケアマネ sẽ đáng tin cậy đến mức nào.)* |
| Ngọc | ...<ruby>施設長<rt>しせつちょう</rt></ruby>、ありがとうございます。<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>してきます。 *(...Thưa Giám đốc, cảm ơn ông. Tôi nhất định đỗ trở về.)* |

---

## Tình huống 8 — Hành lang cơ sở · 16:30, Yamamoto và Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>でしたね。<ruby>試験<rt>しけん</rt></ruby>まで1<ruby>週間<rt>しゅうかん</rt></ruby>という<ruby>時期<rt>じき</rt></ruby>に。 *(Cô Nguyễn, hôm nay vất vả nhỉ. Vào đúng giai đoạn còn 1 tuần đến kỳ thi.)* |
| Ngọc | (thở dài nhẹ) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>正直<rt>しょうじき</rt></ruby>なところ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby>が<ruby>二<rt>ふた</rt></ruby>つほしかったです。<ruby>仕事<rt>しごと</rt></ruby>のことと<ruby>試験<rt>しけん</rt></ruby>のことと。 *(Chị Yamamoto, thật lòng mà nói, hôm nay tôi muốn có hai cái đầu. Một cho công việc, một cho kỳ thi.)* |
| Yamamoto | でも、<ruby>今日<rt>きょう</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>は<ruby>試験<rt>しけん</rt></ruby>にも<ruby>活<rt>い</rt></ruby>かせますよ。<ruby>転倒<rt>てんとう</rt></ruby>リスク、<ruby>家族対応<rt>かぞくたいおう</rt></ruby>、<ruby>再発防止<rt>さいはつぼうし</rt></ruby>の<ruby>仕組み<rt>しくみ</rt></ruby>—ぜんぶケアマネの<ruby>試験<rt>しけん</rt></ruby>に<ruby>出<rt>で</rt></ruby>る<ruby>内容<rt>ないよう</rt></ruby>です。 *(Nhưng kinh nghiệm hôm nay có thể áp dụng vào kỳ thi đấy. Nguy cơ ngã, tiếp gia đình, cơ chế phòng ngừa tái phát — tất cả đều là nội dung ra trong thi ケアマネ.)* |
| Ngọc | (mắt sáng lên) <ruby>山本<rt>やまもと</rt></ruby>さん、そう<ruby>考<rt>かんが</rt></ruby>えると<ruby>確<rt>たし</rt></ruby>かに...。<ruby>今日<rt>きょう</rt></ruby>の<ruby>事例<rt>じれい</rt></ruby>はそのままケアマネの<ruby>事例問題<rt>じれいもんだい</rt></ruby>ですね。 *(Chị Yamamoto, nghĩ như vậy thì đúng là... Tình huống hôm nay chính là câu hỏi tình huống thi ケアマネ luôn nhỉ.)* |
| Yamamoto | そうです。<ruby>現場<rt>げんば</rt></ruby>が<ruby>最高<rt>さいこう</rt></ruby>の<ruby>教科書<rt>きょうかしょ</rt></ruby>です。グエンさんはもう、<ruby>勉強<rt>べんきょう</rt></ruby>していたんですよ<ruby>今日<rt>きょう</rt></ruby>も。 *(Đúng vậy. Hiện trường là cuốn giáo khoa tốt nhất. Hôm nay cô Nguyễn cũng đã học rồi đó.)* |

---

## Tình huống 9 — Bệnh viện · 17:30, thăm ông Yamada

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さん、お<ruby>具合<rt>ぐあい</rt></ruby>はいかがですか。<ruby>来<rt>き</rt></ruby>てよかったですか。 *(Ông Yamada, sức khỏe thế nào rồi ạ? Tôi đến thăm có được không?)* |
| Ông Yamada | グエン...さん。<ruby>わざわざ<rt>わざわざ</rt></ruby><ruby>来<rt>き</rt></ruby>てくれたのか。 *(Cô Nguyễn... Đến tận đây rồi à.)* |
| Ngọc | <ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけして<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんでした。<ruby>検査<rt>けんさ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>はいかがでしたか。 *(Hôm nay thật sự đã làm phiền ông, xin lỗi ông ạ. Kết quả kiểm tra thế nào rồi ạ?)* |
| Ông Yamada | <ruby>手術<rt>しゅじゅつ</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>らしい。でも<ruby>医者<rt>いしゃ</rt></ruby>には「<ruby>術後<rt>じゅつご</rt></ruby>はリハビリをしっかりやれば<ruby>歩<rt>ある</rt></ruby>ける」と<ruby>言<rt>い</rt></ruby>われた。 *(Có vẻ cần phẫu thuật. Nhưng bác sĩ nói "nếu làm phục hồi chức năng sau phẫu thuật đàng hoàng thì đi lại được".)* |
| Ngọc | よかったです。<ruby>退院<rt>たいいん</rt></ruby>されたら、<ruby>施設<rt>しせつ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>れるよう、ケアプランをしっかり<ruby>準備<rt>じゅんび</rt></ruby>します。 *(Thật may. Khi ông xuất viện, tôi sẽ chuẩn bị kế hoạch điều dưỡng chu đáo để ông có thể về lại cơ sở.)* |
| Ông Yamada | グエンさん、<ruby>試験<rt>しけん</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>いんだろう。<ruby>私<rt>わたし</rt></ruby>のことより<ruby>試験<rt>しけん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しなさい。 *(Cô Nguyễn, kỳ thi sắp rồi phải không. Lo cho kỳ thi hơn là lo cho tôi.)* |
| Ngọc | (xúc động) <ruby>山田<rt>やまだ</rt></ruby>さん...<ruby>両方<rt>りょうほう</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。 *(Ông Yamada... Tôi sẽ cố gắng cả hai.)* |

---

## Tình huống 10 — Nhà trọ · 21:00, Ngọc gọi về kể chuyện cho mẹ nghe

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt) Con gọi muộn vậy, hôm nay có chuyện gì không con? |
| Ngọc | (tiếng Việt) Mẹ ơi, hôm nay mệt lắm. Có người dùng ngã gãy xương. Con phải xử lý suốt từ đêm qua đến chiều. Họp, tiếp gia đình người ta, rồi đến bệnh viện thăm. |
| Mẹ | (tiếng Việt) Trời ơi con. Mà còn mấy ngày thi nữa đúng không? |
| Ngọc | (tiếng Việt) Còn 7 ngày mẹ ơi. Mệt nhưng mà lạ lắm mẹ — chị Yamamoto nói: "Hôm nay cũng học rồi đó." Đúng thật. Cái tình huống hôm nay là bài ケアマネ y chang. |
| Mẹ | (tiếng Việt) Con giỏi hơn con nghĩ rồi đó. Thôi ăn cơm đi, nghỉ sớm. 7 ngày cuối tập trung cho thi. |
| Ngọc | (tiếng Việt) Vâng mẹ. Con nhớ mẹ. |

---

## Tình huống 11 — Sáng Chủ Nhật · 8:00, ôn thi cấp tốc với Hương

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>事故対応<rt>じこたいおう</rt></ruby>、<ruby>大変<rt>たいへん</rt></ruby>でしたね。<ruby>聞<rt>き</rt></ruby>きましたよ。 *(Chị Nguyễn, nghe nói hôm qua xử lý sự cố vất vả lắm nhỉ.)* |
| Ngọc | でも<ruby>今日<rt>きょう</rt></ruby>は<ruby>試験<rt>しけん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>だけに<ruby>集中<rt>しゅうちゅう</rt></ruby>します。<ruby>残<rt>のこ</rt></ruby>り6<ruby>日<rt>にち</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby>10<ruby>時間<rt>じかん</rt></ruby>勉強します。 *(Nhưng hôm nay chỉ tập trung vào ôn thi thôi. Còn 6 ngày, mỗi ngày học 10 tiếng.)* |
| Hương | えっ、10<ruby>時間<rt>じかん</rt></ruby>ですか。<ruby>私<rt>わたし</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>にやります。<ruby>弱点<rt>じゃくてん</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby>と、<ruby>直前<rt>ちょくぜん</rt></ruby>の<ruby>総仕上げ<rt>そうしあげ</rt></ruby>を。 *(Ồ, 10 tiếng sao. Em cũng làm cùng nhé. Ôn lại điểm yếu và hoàn thiện tổng thể trước kỳ thi.)* |
| Ngọc | ハーさん、<ruby>一緒<rt>いっしょ</rt></ruby>なら<ruby>心強<rt>こころづよ</rt></ruby>いです。では<ruby>今日<rt>きょう</rt></ruby>は<ruby>保健医療<rt>ほけんいりょう</rt></ruby>の<ruby>総復習<rt>そうふくしゅう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。 *(Hương ơi, có người cùng thì vững tâm lắm. Vậy hôm nay bắt đầu từ ôn tổng thể phần bảo hiểm y tế nhé.)* |

---

## Tình huống 12 — Đêm Chủ Nhật · 22:30, chuẩn bị tinh thần cho 6 ngày cuối

> Scene nội tâm — Ngọc một mình.

| Vai | Lời thoại |
|---|---|
| Ngọc | (viết nhật ký, tiếng Nhật) <ruby>今日<rt>きょう</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>も<ruby>試験勉強<rt>しけんべんきょう</rt></ruby>も、<ruby>両方<rt>りょうほう</rt></ruby>やり<ruby>切<rt>き</rt></ruby>った。<ruby>山田<rt>やまだ</rt></ruby>さんのケアプランも<ruby>頭<rt>あたま</rt></ruby>にある。<ruby>試験<rt>しけん</rt></ruby>も<ruby>頭<rt>あたま</rt></ruby>にある。 *(Hôm nay cả công việc lẫn ôn thi đều làm đến cùng. Kế hoạch điều dưỡng cho ông Yamada trong đầu. Kỳ thi cũng trong đầu.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さんが<ruby>言<rt>い</rt></ruby>った<ruby>通<rt>とお</rt></ruby>り、<ruby>現場<rt>げんば</rt></ruby>が<ruby>最高<rt>さいこう</rt></ruby>の<ruby>教科書<rt>きょうかしょ</rt></ruby>だった。5<ruby>年間<rt>ねんかん</rt></ruby>、<ruby>積<rt>つ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げてきたものが<ruby>全部<rt>ぜんぶ</rt></ruby>、<ruby>試験<rt>しけん</rt></ruby>につながっている。<ruby>あとは<rt>あとは</rt></ruby>やるだけだ。 *(Đúng như chị Yamamoto nói, hiện trường là cuốn giáo khoa tốt nhất. 5 năm tích lũy, tất cả đều kết nối với kỳ thi. Bây giờ chỉ còn làm thôi.)* |

---

## Đọng lại chương 7

Sự cố đêm thứ Sáu đúng tuần trước kỳ thi — đây là thử thách cân bằng nặng nề nhất của Ngọc với vai trò 介護主任. Nhưng trong quá trình xử lý, Yamamoto chỉ ra điều sâu sắc: chính kinh nghiệm hiện trường là bài ôn thi sống động nhất. Ngọc bước vào 6 ngày cuối với một nhận thức mới: 5 năm thực chiến đã là kho kiến thức. Kỳ thi chỉ là bước xác nhận.

> Từ vựng & mẫu câu chương này: 転倒事故・事故報告書・救急搬送・右大腿骨頸部骨折・滑り止めマット・再発防止策・浴室使用前確認・チェックリスト・家族対応・誠に申し訳ございません・経緯・原因・対策・仕組みで安全を守る・術後リハビリ・主任の重さ・現場が最高の教科書', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000008, 800000032, NULL, 'markdown_book', 'T8. Ngày thi ケアマネ (ケアマネ試験当日)', '# Sách điều dưỡng viên quốc gia · T8. Ngày thi ケアマネ (ケアマネ試験当日)

> **Mục tiêu nhân vật:** Ngày 11/10/2032 — ngày thi ケアマネジャー. Ngọc trải qua toàn bộ hành trình: sáng sớm chuẩn bị, đến hội trường, làm bài, khoảnh khắc căng thẳng, nộp bài, và tâm trạng sau thi. Chương thể hiện ngôn ngữ thi cử, cảm xúc thật, và sức nặng của gần 7 năm tại Nhật dồn vào 120 phút.

---

## Bối cảnh

Ngày 11 tháng 10 năm 2032. Kỳ thi ケアマネジャー (介護支援専門員実務研修受講試験). Địa điểm: trường đại học tại Osaka. Đề thi 60 câu, 120 phút. Ngọc dậy từ 5 giờ sáng, tự chuẩn bị một mình. Hương gặp tại ga. 5 năm của Ngọc dồn vào buổi sáng này.

---

## Tình huống 1 — Nhà trọ · 5:30 sáng, chuẩn bị ngày thi

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại, nhìn gương) <ruby>今日<rt>きょう</rt></ruby>だ。<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>、ずっと<ruby>目指<rt>めざ</rt></ruby>してきた<ruby>今日<rt>きょう</rt></ruby>だ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。 *(Hôm nay rồi. Hôm nay mà mình hướng tới suốt bao lâu nay. Ổn thôi.)* |
| Ngọc | (pha trà, hít thở) <ruby>胃<rt>い</rt></ruby>がちょっと<ruby>緊張<rt>きんちょう</rt></ruby>している。でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>準備<rt>じゅんび</rt></ruby>はできている。 *(Bụng đang hơi hồi hộp. Nhưng ổn thôi. Đã chuẩn bị xong rồi.)* |
| Ngọc | (nhìn điện thoại — tin nhắn từ mẹ lúc 5 giờ sáng) 「今日ね、絶対大丈夫。ハイ、頑張れ！」...（tiếng Việt thầm）Mẹ dậy sớm nhắn cho con. *(Tin nhắn từ mẹ: "Hôm nay nhất định ổn. Cố lên!" ...Mẹ dậy sớm nhắn cho con.)* |

---

## Tình huống 2 — Ga tàu · 7:15, gặp Hương

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん!こっちです。<ruby>顔色<rt>かおいろ</rt></ruby>どうですか? *(Chị Nguyễn! Đây ạ. Sắc mặt thế nào?)* |
| Ngọc | ハーさん、おはようございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>眠<rt>ねむ</rt></ruby>れなかったですが、<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>完璧<rt>かんぺき</rt></ruby>です。 *(Hương, chào buổi sáng. Ngủ không được mấy nhưng chuẩn bị hoàn chỉnh rồi.)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>も!<ruby>昨夜<rt>さくや</rt></ruby>23<ruby>時<rt>じ</rt></ruby>まで<ruby>勉強<rt>べんきょう</rt></ruby>して...でも<ruby>今日<rt>きょう</rt></ruby>はもう<ruby>余分<rt>よぶん</rt></ruby>なことは<ruby>考<rt>かんが</rt></ruby>えません。<ruby>本番<rt>ほんばん</rt></ruby>だけ<ruby>集中<rt>しゅうちゅう</rt></ruby>します。 *(Em cũng vậy! Học đến 23 giờ tối qua... Nhưng hôm nay không nghĩ gì thêm nữa. Chỉ tập trung vào kỳ thi thật thôi.)* |
| Ngọc | そうしましょう。<ruby>電車<rt>でんしゃ</rt></ruby>の<ruby>中<rt>なか</rt></ruby>では<ruby>単語<rt>たんご</rt></ruby>カードを<ruby>見<rt>み</rt></ruby>るだけにします。 *(Đúng vậy. Trên tàu chỉ xem thẻ từ vựng thôi.)* |
| Hương | グエンさん、<ruby>二人<rt>ふたり</rt></ruby>で<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>受<rt>う</rt></ruby>かりましょう。<ruby>約束<rt>やくそく</rt></ruby>ですよ。 *(Chị Nguyễn, hai chị em cùng đỗ nhé. Đã hứa rồi đó.)* |
| Ngọc | <ruby>約束<rt>やくそく</rt></ruby>します。<ruby>一緒<rt>いっしょ</rt></ruby>に。 *(Hứa. Cùng nhau.)* |

---

## Tình huống 3 — Hội trường thi · 9:00, vào phòng thi, nhận đề

| Vai | Lời thoại |
|---|---|
| Giám thị | これから<ruby>介護支援専門員実務研修受講試験<rt>かいごしえんせんもんいんじつむけんしゅうじゅこうしけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>携帯電話<rt>けいたいでんわ</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>はお<ruby>切<rt>き</rt></ruby>りください。 *(Bây giờ bắt đầu kỳ thi thực tập viên hỗ trợ điều dưỡng. Hãy tắt điện thoại di động.)* |
| Ngọc | (độc thoại nội tâm) <ruby>深呼吸<rt>しんこきゅう</rt></ruby>。<ruby>今<rt>いま</rt></ruby>までの<ruby>積<rt>つ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げ。<ruby>山田<rt>やまだ</rt></ruby>さんとの<ruby>約束<rt>やくそく</rt></ruby>。お<ruby>母<rt>かあ</rt></ruby>さんのメッセージ。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。 *(Thở sâu. Bao công tích lũy đến giờ. Lời hứa với ông Yamada. Tin nhắn của mẹ. Ổn thôi.)* |
| Giám thị | <ruby>問題冊子<rt>もんだいさっし</rt></ruby>を<ruby>配布<rt>はいふ</rt></ruby>します。<ruby>指示<rt>しじ</rt></ruby>があるまで<ruby>開<rt>ひら</rt></ruby>かないでください。 *(Phát đề thi. Chưa được mở cho đến khi có lệnh.)* |
| Ngọc | (nhìn đề thi dày, hít thở) <ruby>介護支援分野<rt>かいごしえんぶんや</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>める。<ruby>得意<rt>とくい</rt></ruby>なところから<ruby>入<rt>はい</rt></ruby>る。 *(Bắt đầu từ phần hỗ trợ điều dưỡng. Vào từ phần mình mạnh.)* |
| Giám thị | では<ruby>始<rt>はじ</rt></ruby>めてください。 *(Bắt đầu.)* |

---

## Tình huống 4 — Phòng thi · 9:10, đọc và làm bài phần đầu

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm, làm bài) <ruby>第一問<rt>だいいちもん</rt></ruby>...「<ruby>介護保険法<rt>かいごほけんほう</rt></ruby>における<ruby>保険者<rt>ほけんしゃ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>か」—<ruby>市町村<rt>しちょうそん</rt></ruby>と<ruby>特別区<rt>とくべつく</rt></ruby>だ。<ruby>基本<rt>きほん</rt></ruby>中の<ruby>基本<rt>きほん</rt></ruby>。◯。 *(Câu 1... "Trong Luật bảo hiểm điều dưỡng, người bảo hiểm là ai?" — thành phố, thị trấn và khu đặc biệt. Cơ bản trong cơ bản. Chọn.)* |
| Ngọc | (làm tiếp) <ruby>第五問<rt>だいごもん</rt></ruby>...「<ruby>要介護認定<rt>ようかいごにんてい</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>はどこに<ruby>行<rt>おこな</rt></ruby>うか」。<ruby>市町村<rt>しちょうそん</rt></ruby>だ。<ruby>地域包括支援センター<rt>ちいきほうかつしえんせんたー</rt></ruby>は<ruby>窓口<rt>まどぐち</rt></ruby>になれるが、<ruby>申請先<rt>しんせいさき</rt></ruby>は<ruby>市町村<rt>しちょうそん</rt></ruby>。 *(Câu 5... "Đơn xin nhận định cần chăm sóc nộp ở đâu?" Thành phố/thị trấn. Trung tâm hỗ trợ địa bàn có thể là cửa sổ nhưng nơi nộp đơn là thành phố/thị trấn.)* |
| Ngọc | (độc thoại nội tâm) <ruby>調子<rt>ちょうし</rt></ruby>がいい。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いている。<ruby>次<rt>つぎ</rt></ruby>。 *(Phong độ tốt. Bình tĩnh. Tiếp theo.)* |

---

## Tình huống 5 — Phòng thi · 9:45, gặp câu hỏi khó

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm) <ruby>第二十問<rt>だいにじゅうもん</rt></ruby>...「<ruby>特定疾病<rt>とくていしっぺい</rt></ruby>に<ruby>関<rt>かん</rt></ruby>する<ruby>次<rt>つぎ</rt></ruby>の<ruby>記述<rt>きじゅつ</rt></ruby>のうち<ruby>正しいもの<rt>ただしいもの</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べ」...。<ruby>筋萎縮性側索硬化症<rt>きんいしゅくせいそくさくこうかしょう</rt></ruby>... *(Câu 20... "Chọn phát biểu đúng về bệnh đặc định"... Xơ cứng teo cơ một bên...)* |
| Ngọc | (độc thoại nội tâm, hít thở) <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>く。ハーさんと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えた。ALS—<ruby>筋肉<rt>きんにく</rt></ruby>が<ruby>萎縮<rt>いしゅく</rt></ruby>して、でも<ruby>知覚<rt>ちかく</rt></ruby>はある。<ruby>介護<rt>かいご</rt></ruby>での<ruby>特定疾病<rt>とくていしっぺい</rt></ruby>に<ruby>含<rt>ふく</rt></ruby>まれる。<ruby>選択肢<rt>せんたくし</rt></ruby>3だ。 *(Bình tĩnh. Mình và Hương đã học cùng nhau. ALS — cơ teo lại, nhưng vẫn còn cảm giác. Được bao gồm trong bệnh đặc định của điều dưỡng. Đáp án 3.)* |
| Ngọc | (độc thoại nội tâm) <ruby>過去問<rt>かこもん</rt></ruby>で<ruby>見<rt>み</rt></ruby>た。<ruby>中村<rt>なかむら</rt></ruby>さんが<ruby>教<rt>おし</rt></ruby>えてくれた。◯。 *(Đã thấy trong đề cũ. Nakamura-san đã dạy. Chọn.)* |

---

## Tình huống 6 — Phòng thi · 10:20, đến phần 保健医療

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm) <ruby>保健医療分野<rt>ほけんいりょうぶんや</rt></ruby>...。<ruby>模試<rt>もし</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>弱<rt>よわ</rt></ruby>かった<ruby>部分<rt>ぶぶん</rt></ruby>。でも、<ruby>諦<rt>あきら</rt></ruby>めない。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>一問一問<rt>いちもんいちもん</rt></ruby>。 *(Phần lĩnh vực bảo hiểm y tế... Phần yếu nhất trong thi thử. Nhưng không bỏ cuộc. Bình tĩnh từng câu một.)* |
| Ngọc | (đọc câu hỏi) 「<ruby>認知症<rt>にんちしょう</rt></ruby>の<ruby>中核症状<rt>ちゅうかくしょうじょう</rt></ruby>として<ruby>正しいもの<rt>ただしいもの</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べ」。<ruby>見当識障害<rt>けんとうしきしょうがい</rt></ruby>、<ruby>記憶障害<rt>きおくしょうがい</rt></ruby>、<ruby>実行機能障害<rt>じっこうきのうしょうがい</rt></ruby>。これは<ruby>現場<rt>げんば</rt></ruby>で<ruby>見<rt>み</rt></ruby>てきた。 *("Chọn những gì đúng là triệu chứng cốt lõi của sa trí tuệ." Rối loạn định hướng, rối loạn trí nhớ, rối loạn chức năng thực thi. Đây là những gì mình đã thấy ở hiện trường.)* |
| Ngọc | (độc thoại nội tâm) <ruby>田中<rt>たなか</rt></ruby>さんの<ruby>顔<rt>かお</rt></ruby>が<ruby>浮<rt>う</rt></ruby>かんだ。<ruby>利用者<rt>りようしゃ</rt></ruby>さんたちの<ruby>顔<rt>かお</rt></ruby>が。<ruby>現場<rt>げんば</rt></ruby>が<ruby>答<rt>こたえ</rt></ruby>だ。 *(Gương mặt ông Tanaka hiện ra. Gương mặt các người dùng. Hiện trường chính là câu trả lời.)* |

---

## Tình huống 7 — Phòng thi · 11:00, đến câu khó nhất

| Vai | Lời thoại |
|---|---|
| Ngọc | (độc thoại nội tâm) <ruby>第四十五問<rt>だいよんじゅうごもん</rt></ruby>...「<ruby>居宅サービス計画書<rt>きょたくサービスけいかくしょ</rt></ruby>の<ruby>作成<rt>さくせい</rt></ruby>において<ruby>正しいもの<rt>ただしいもの</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べ」。<ruby>選択肢<rt>せんたくし</rt></ruby>が<ruby>全部<rt>ぜんぶ</rt></ruby>ありそう... *(Câu 45... "Chọn những gì đúng về lập kế hoạch dịch vụ tại nhà." Tất cả đáp án đều có vẻ đúng...)* |
| Ngọc | (độc thoại nội tâm) <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>く。「<ruby>利用者<rt>りようしゃ</rt></ruby>や<ruby>家族<rt>かぞく</rt></ruby>の<ruby>同意<rt>どうい</rt></ruby>を<ruby>得<rt>え</rt></ruby>る」は<ruby>必須<rt>ひっす</rt></ruby>。「<ruby>担当者会議<rt>たんとうしゃかいぎ</rt></ruby>を<ruby>経<rt>へ</rt></ruby>て<ruby>交付<rt>こうふ</rt></ruby>する」も<ruby>必須<rt>ひっす</rt></ruby>。でも「ケアマネが<ruby>単独<rt>たんどく</rt></ruby>で<ruby>決定<rt>けってい</rt></ruby>できる」は×。ハーさんと<ruby>練習<rt>れんしゅう</rt></ruby>したことだ。 *(Bình tĩnh. "Được sự đồng ý của người dùng và gia đình" là bắt buộc. "Giao sau khi qua cuộc họp người phụ trách" cũng bắt buộc. Nhưng "ケアマネ có thể quyết định một mình" là sai. Đây là thứ mình và Hương đã luyện tập.)* |
| Ngọc | (ghi dấu, thở ra) <ruby>選択肢<rt>せんたくし</rt></ruby>1と3。<ruby>次<rt>つぎ</rt></ruby>。<ruby>時間<rt>じかん</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。 *(Đáp án 1 và 3. Tiếp theo. Thời gian vẫn ổn.)* |

---

## Tình huống 8 — Phòng thi · 11:30, 30 phút cuối

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>残<rt>のこ</rt></ruby>り30<ruby>分<rt>ふん</rt></ruby>です。 *(Còn 30 phút.)* |
| Ngọc | (độc thoại nội tâm) <ruby>残<rt>のこ</rt></ruby>り10<ruby>問<rt>もん</rt></ruby>。<ruby>ペース<rt>ぺーす</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>見直<rt>みなお</rt></ruby>しの<ruby>時間<rt>じかん</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す。<ruby>諦<rt>あきら</rt></ruby>めかけた<ruby>問題<rt>もんだい</rt></ruby>も<ruby>もう一度<rt>もういちど</rt></ruby>。 *(Còn 10 câu. Tốc độ ổn. Để dành thời gian kiểm tra lại. Câu suýt bỏ cũng xem lại một lần nữa.)* |
| Ngọc | (kiểm tra lại) <ruby>第十二問<rt>だいじゅうにもん</rt></ruby>、<ruby>マークミス<rt>まーくみす</rt></ruby>なし。<ruby>第三十問<rt>だいさんじゅうもん</rt></ruby>...あ、ここ<ruby>見直<rt>みなお</rt></ruby>す。「<ruby>訪問介護<rt>ほうもんかいご</rt></ruby>のサービス提供責任者の<ruby>要件<rt>ようけん</rt></ruby>」—<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>か<ruby>実務者研修<rt>じつむしゃけんしゅう</rt></ruby><ruby>修了者<rt>しゅうりょうしゃ</rt></ruby>だ。<ruby>変<rt>か</rt></ruby>えなくていい。 *(Câu 12, không đánh nhầm ô. Câu 30... à, xem lại chỗ này. "Điều kiện của người chịu trách nhiệm cung cấp dịch vụ thăm nhà" — là 介護福祉士 hoặc người hoàn thành khóa đào tạo thực tế. Không cần thay đổi.)* |

---

## Tình huống 9 — Phòng thi · 12:00, nộp bài

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>終了<rt>しゅうりょう</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>です。<ruby>鉛筆<rt>えんぴつ</rt></ruby>を<ruby>置<rt>お</rt></ruby>いてください。 *(Hết giờ. Hãy đặt bút chì xuống.)* |
| Ngọc | (độc thoại nội tâm) <ruby>終<rt>お</rt></ruby>わった。<ruby>全問<rt>ぜんもん</rt></ruby><ruby>解答<rt>かいとう</rt></ruby>した。<ruby>後悔<rt>こうかい</rt></ruby>のない<ruby>解答<rt>かいとう</rt></ruby>をした。<ruby>あとは<rt>あとは</rt></ruby>...待つだけだ。 *(Xong rồi. Đã trả lời hết tất cả câu. Đã trả lời không hối tiếc. Bây giờ... chỉ còn đợi thôi.)* |
| Ngọc | (đặt bút, nhìn lên trần, nhắm mắt một giây) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>山田<rt>やまだ</rt></ruby>さん、ハーさん、お<ruby>母<rt>かあ</rt></ruby>さん...ありがとう。やり<ruby>切<rt>き</rt></ruby>りました。 *(Chị Yamamoto, ông Yamada, Hương, mẹ... Cảm ơn mọi người. Tôi đã làm đến cùng rồi.)* |

---

## Tình huống 10 — Ngoài hội trường · 12:15, gặp lại Hương

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん!どうでしたか? *(Chị Nguyễn! Thế nào rồi?)* |
| Ngọc | ...やり<ruby>切<rt>き</rt></ruby>りました。<ruby>手応<rt>てごた</rt></ruby>えは...わかりません。でも<ruby>全力<rt>ぜんりょく</rt></ruby>を<ruby>尽<rt>つ</rt></ruby>くしました。ハーさんは? *(...Làm đến cùng rồi. Cảm giác thì... không biết. Nhưng đã dốc hết sức. Hương thế nào?)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>も!<ruby>保健医療<rt>ほけんいりょう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>思<rt>おも</rt></ruby>ったよりできました。グエンさんのおかげです。 *(Em cũng vậy! Phần bảo hiểm y tế làm được hơn em tưởng. Nhờ chị Nguyễn.)* |
| Ngọc | ハーさんが<ruby>頑張<rt>がんば</rt></ruby>ったんです。<ruby>私<rt>わたし</rt></ruby>じゃないです。 *(Là vì Hương đã cố gắng. Không phải do tôi.)* |
| Hương | (giọng run nhẹ) グエンさん...ありがとうございました。<ruby>本当<rt>ほんとう</rt></ruby>に。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けられてよかったです。 *(Chị Nguyễn... Cảm ơn chị. Thật sự. Được thi cùng chị thật may quá.)* |
| Ngọc | (cầm tay Hương) <ruby>結果<rt>けっか</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>待<rt>ま</rt></ruby>ちましょう。<ruby>二人<rt>ふたり</rt></ruby>一緒に。 *(Cùng nhau đợi kết quả nhé. Hai người cùng nhau.)* |

---

## Tình huống 11 — Nhà trọ · 14:00, về đến nhà sau thi

| Vai | Lời thoại |
|---|---|
| Ngọc | (mở cửa nhà trọ, đặt túi xuống, thở ra dài) <ruby>終<rt>お</rt></ruby>わった...。 *(Xong rồi...)* |
| Ngọc | (ngồi xuống, nhìn phòng yên tĩnh) <ruby>静<rt>しず</rt></ruby>かだ。でも<ruby>今日<rt>きょう</rt></ruby>この<ruby>静<rt>しず</rt></ruby>かさが<ruby>ありがたい<rt>ありがたい</rt></ruby>。<ruby>全力<rt>ぜんりょく</rt></ruby>を<ruby>尽<rt>つ</rt></ruby>くした。それだけで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。 *(Yên tĩnh. Nhưng hôm nay sự yên tĩnh này thật đáng trân trọng. Đã dốc hết sức. Chỉ vậy thôi là đủ rồi.)* |
| Ngọc | (gọi điện cho Hương) もしもし、ハーさん?<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>れてよかったです。 *(A lô, Hương à? Hôm nay thật sự cảm ơn em. Được cố gắng cùng nhau thật may quá.)* |

---

## Tình huống 12 — Đêm sau thi · 21:00, Ngọc viết nhật ký

> Scene nội tâm — Ngọc suy nghĩ sau thi.

| Vai | Lời thoại |
|---|---|
| Ngọc | (viết nhật ký, tiếng Nhật) <ruby>今日<rt>きょう</rt></ruby>、6<ruby>年間<rt>ねんかん</rt></ruby>の<ruby>歩<rt>あゆ</rt></ruby>みを120<ruby>分<rt>ぷん</rt></ruby>に<ruby>注<rt>そそ</rt></ruby>ぎ<ruby>込<rt>こ</rt></ruby>んだ。<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>として<ruby>来<rt>き</rt></ruby>た24<ruby>歳<rt>さい</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>が、30<ruby>歳<rt>さい</rt></ruby>でケアマネ<ruby>試験<rt>しけん</rt></ruby>の<ruby>解答用紙<rt>かいとうようし</rt></ruby>を<ruby>手<rt>て</rt></ruby>にした。 *(Hôm nay, dồn hành trình 6 năm vào 120 phút. Bản thân 24 tuổi đến với tư cách thực tập sinh kỹ năng, 30 tuổi cầm trên tay tờ trả lời thi ケアマネ.)* |
| Ngọc | <ruby>結果<rt>けっか</rt></ruby>はまだ<ruby>分<rt>わ</rt></ruby>からない。でも<ruby>後悔<rt>こうかい</rt></ruby>はない。<ruby>全力<rt>ぜんりょく</rt></ruby>を<ruby>尽<rt>つ</rt></ruby>くした。<ruby>利用者<rt>りようしゃ</rt></ruby>さんたちの<ruby>顔<rt>かお</rt></ruby>が<ruby>答<rt>こたえ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくれた。<ruby>現場<rt>げんば</rt></ruby>が<ruby>私<rt>わたし</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>ててくれた。 *(Kết quả chưa biết. Nhưng không hối tiếc. Đã dốc hết sức. Gương mặt các người dùng đã cho tôi câu trả lời. Hiện trường đã nuôi dưỡng tôi.)* |
| Ngọc | <ruby>合格発表<rt>ごうかくはっぴょう</rt></ruby>は12<ruby>月<rt>がつ</rt></ruby>。それまで<ruby>仕事<rt>しごと</rt></ruby>を<ruby>全力<rt>ぜんりょく</rt></ruby>でやる。<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>退院<rt>たいいん</rt></ruby>ケアプランも<ruby>準備<rt>じゅんび</rt></ruby>する。<ruby>あとは<rt>あとは</rt></ruby>待つ。 *(Thông báo kết quả vào tháng 12. Đến lúc đó làm việc hết mình. Chuẩn bị kế hoạch điều dưỡng sau xuất viện cho ông Yamada. Còn lại là đợi.)* |

---

## Đọng lại chương 8

Ngày thi ケアマネ — đỉnh điểm căng thẳng của cả series sách 32. 120 phút làm bài trở thành cuộc đối thoại giữa Ngọc và bao năm ký ức hiện trường: ông Tanaka, ông Yamada, Hương, Yamamoto, Nakamura, mẹ ở Cần Thơ — tất cả hiện diện trong từng câu trả lời. Ngọc không biết kết quả, nhưng biết mình đã không bỏ cuộc một lần nào.

> Từ vựng & mẫu câu chương này: 介護支援専門員実務研修受講試験・保険者・要介護認定の申請・居宅サービス計画書・担当者会議・特定疾病・筋萎縮性側索硬化症（ALS）・中核症状・見当識障害・訪問介護・サービス提供責任者・解答用紙・マークミス・見直し・全力を尽くす・後悔のない・合格発表・深呼吸・手応え', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000009, 800000032, NULL, 'markdown_book', 'T9. Chờ kết quả và chuẩn bị vĩnh trú (結果待ちと永住権準備)', '# Sách điều dưỡng viên quốc gia · T9. Chờ kết quả và chuẩn bị vĩnh trú (結果待ちと永住権準備)

> **Mục tiêu nhân vật:** Ngọc (31 tuổi, 介護主任 kiêm ứng viên ケアマネ) sống trong trạng thái chờ đợi kết quả thi (công bố cuối tháng 11). Song song đó, Kobayashi nêu chủ đề 永住権, Ngọc tìm hiểu điều kiện — nhận ra mình mới gần 7 năm, chưa đủ 10 năm cư trú theo quy định, và đặt đó làm mục tiêu tương lai (còn ~3 năm nữa). Ngọc chưa nộp đơn trong chương này.
>
> **Chú thích tác giả:** Quy định 永住権 và thủ tục nêu trong chương này đúng theo luật cư trú Nhật tại thời điểm 2032-2033 (fiction).

---

## Bối cảnh

Tháng 11 năm 2032. Kết quả thi ケアマネジャー chưa được công bố (dự kiến cuối tháng 11). Ngọc tiếp tục nhiệm vụ 介護主任 hằng ngày trong khi lòng bồn chồn. Yamamoto nêu chủ đề 永住権 — lần đầu Ngọc nghiêm túc xem xét và bắt đầu tìm hiểu điều kiện dần từng bước.

---

## Tình huống 1 — Văn phòng 介護主任 · 8:15, sáng sau kỳ thi

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>先月<rt>せんげつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>、<ruby>手応<rt>てごた</rt></ruby>えはどうでしたか？<br>*(Ngọc, kỳ thi tháng trước cảm giác thế nào?)* |
| Ngọc | <ruby>正直<rt>しょうじき</rt></ruby>、よく<ruby>分<rt>わ</rt></ruby>かりません。<ruby>難<rt>むずか</rt></ruby>しい<ruby>問題<rt>もんだい</rt></ruby>もありましたが、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>解<rt>と</rt></ruby>きました。<br>*(Thành thật mà nói, em không chắc. Có câu khó, nhưng em làm đến hết.)* |
| Yamamoto | それで<ruby>十分<rt>じゅうぶん</rt></ruby>ですよ。<ruby>結果<rt>けっか</rt></ruby>はいつ<ruby>出<rt>で</rt></ruby>ますか？<br>*(Vậy là đủ rồi. Kết quả ra khi nào?)* |
| Ngọc | <ruby>今月<rt>こんげつ</rt></ruby>の<ruby>下旬<rt>げじゅん</rt></ruby>、<ruby>発表<rt>はっぴょう</rt></ruby>される<ruby>予定<rt>よてい</rt></ruby>です。<ruby>毎日<rt>まいにち</rt></ruby><ruby>気<rt>き</rt></ruby>になってしまって...。<br>*(Dự kiến công bố cuối tháng này. Ngày nào em cũng lo lắng mãi...)* |
| Yamamoto | <ruby>気持<rt>きも</rt></ruby>ちは<ruby>分<rt>わ</rt></ruby>かります。でも<ruby>今<rt>いま</rt></ruby>できることをしっかりやりましょう。<br>*(Tôi hiểu cảm giác đó. Nhưng hãy làm tốt những gì có thể làm lúc này nhé.)* |
| Ngọc | はい、そうします。ありがとうございます。<br>*(Vâng, em sẽ vậy. Cảm ơn chị.)* |

---

## Tình huống 2 — Phòng họp nhỏ · 10:00, Kobayashi nêu chủ đề 永住権

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、ちょっとよろしいですか？<ruby>個人的<rt>こじんてき</rt></ruby>なことで。<br>*(Ngọc, có chút thời gian không? Việc cá nhân đấy.)* |
| Ngọc | はい、<ruby>施設長<rt>しせつちょう</rt></ruby>。どうぞ。<br>*(Vâng thưa giám đốc. Mời chị.)* |
| Kobayashi | グエンさん、<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>て、もう<ruby>何年<rt>なんねん</rt></ruby>になりますか？<br>*(Ngọc đến Nhật bao nhiêu năm rồi?)* |
| Ngọc | <ruby>今年<rt>ことし</rt></ruby>で7<ruby>年目<rt>ねんめ</rt></ruby>になります。<ruby>早<rt>はや</rt></ruby>いですね。<br>*(Năm nay là năm thứ 7 rồi. Nhanh thật nhỉ.)* |
| Kobayashi | そうですね。<ruby>実<rt>じつ</rt></ruby>は、<ruby>永住権<rt>えいじゅうけん</rt></ruby>のことを<ruby>考<rt>かんが</rt></ruby>えたことはありますか？<br>*(Đúng vậy. Thực ra Ngọc đã bao giờ nghĩ đến vĩnh trú chưa?)* |
| Ngọc | えっ、<ruby>永住権<rt>えいじゅうけん</rt></ruby>ですか。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしたっけ...<br>*(Ồ, vĩnh trú ạ. Điều kiện là gì nhỉ...)* |
| Kobayashi | <ruby>原則<rt>げんそく</rt></ruby>として、<ruby>10年以上<rt>じゅうねんいじょう</rt></ruby>の<ruby>継続<rt>けいぞく</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby>、そのうち<ruby>5年以上<rt>ごねんいじょう</rt></ruby>が<ruby>労働<rt>ろうどう</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby>。グエンさんはあと<ruby>3年<rt>さんねん</rt></ruby>ほどで<ruby>条件<rt>じょうけん</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づきますよ。<br>*(Nguyên tắc là cư trú liên tục trên 10 năm, trong đó trên 5 năm bằng tư cách lao động. Ngọc còn khoảng 3 năm nữa là gần đủ điều kiện đó.)* |
| Ngọc | そうなんですか...。まだ<ruby>3年<rt>さんねん</rt></ruby>ありますね。でも<ruby>今<rt>いま</rt></ruby>から<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>理解<rt>りかい</rt></ruby>しておけば、<ruby>準備<rt>じゅんび</rt></ruby>できますね。ケアマネの<ruby>勉強<rt>べんきょう</rt></ruby>で<ruby>頭<rt>あたま</rt></ruby>がいっぱいで、<ruby>考<rt>かんが</rt></ruby>えていませんでした。<br>*(Vậy à... Vẫn còn 3 năm nữa nhỉ. Nhưng hiểu điều kiện từ bây giờ thì chuẩn bị được dần. Đầu óc toàn ôn ケアマネ nên em chưa nghĩ đến.)* |
| Kobayashi | ぜひ、<ruby>一度<rt>いちど</rt></ruby><ruby>調<rt>しら</rt></ruby>べてみてください。<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>として。<br>*(Mong em thử tìm hiểu một lần. Để làm mục tiêu cho tương lai.)* |

---

## Tình huống 3 — Nhà trọ · 19:30, Ngọc gọi điện cho Hương

| Vai | Lời thoại |
|---|---|
| Ngọc | ハーさん、<ruby>今日<rt>きょう</rt></ruby>ちょっとびっくりすることがあって。<ruby>施設長<rt>しせつちょう</rt></ruby>に<ruby>永住権<rt>えいじゅうけん</rt></ruby>のことを<ruby>勧<rt>すす</rt></ruby>められたんだよ。<br>*(Hương ơi, hôm nay có chuyện bất ngờ lắm. Giám đốc khuyến khích chị tìm hiểu về vĩnh trú đấy.)* |
| Hương | えっ、<ruby>永住権<rt>えいじゅうけん</rt></ruby>！グエンさん、もう7<ruby>年<rt>ねん</rt></ruby>になるんですもんね。<br>*(Ồ, vĩnh trú! Chị Ngọc đã gần 7 năm rồi mà nhỉ.)* |
| Ngọc | うん。<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べてみたら、<ruby>10年継続在留<rt>じゅうねんけいぞくざいりゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>で。まだ<ruby>3年<rt>さんねん</rt></ruby>くらい<ruby>足<rt>た</rt></ruby>りないんだ。<ruby>素行<rt>そこう</rt></ruby><ruby>善良<rt>ぜんりょう</rt></ruby>、<ruby>独立生計<rt>どくりつせいけい</rt></ruby>...って<ruby>他<rt>ほか</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>も<ruby>色々<rt>いろいろ</rt></ruby>あって。<br>*(Ừ. Em tra rồi, cần cư trú liên tục 10 năm — còn thiếu khoảng 3 năm. Rồi tư cách đạo đức tốt, tự lực tài chính... cũng có nhiều điều kiện lắm.)* |
| Hương | でも<ruby>税金<rt>ぜいきん</rt></ruby>も<ruby>年金<rt>ねんきん</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>払<rt>はら</rt></ruby>ってるし、グエンさんなら<ruby>記録<rt>きろく</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>ないはずです。<br>*(Nhưng thuế lương hưu chị đóng đầy đủ, hồ sơ chị chắc không vấn đề gì.)* |
| Ngọc | そうだね。まずはケアマネの<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>って、それから<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>準備<rt>じゅんび</rt></ruby>していこうかな。<ruby>先<rt>さき</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>として<ruby>持<rt>も</rt></ruby>っておくだけでも<ruby>違<rt>ちが</rt></ruby>う。<br>*(Ừ. Trước mắt đợi kết quả ケアマネ, rồi từng bước chuẩn bị dần. Chỉ có mục tiêu cho tương lai thôi cũng khác rồi.)* |

---

## Tình huống 4 — Phòng làm việc · 14:00, Ngọc tra cứu điều kiện 永住権

| Vai | Lời thoại |
|---|---|
| Ngọc | (独り言) <ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>...。<ruby>10年<rt>じゅうねん</rt></ruby>って<ruby>長<rt>なが</rt></ruby>いな。でも<ruby>今<rt>いま</rt></ruby>から<ruby>理解<rt>りかい</rt></ruby>しておけば。<ruby>住民税<rt>じゅうみんぜい</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>、<ruby>納税証明<rt>のうぜいしょうめい</rt></ruby>、<ruby>在職年数<rt>ざいしょくねんすう</rt></ruby>...。<br>*(Một mình) Điều kiện vĩnh trú... 10 năm dài thật. Nhưng hiểu từ bây giờ thì tốt. Hồ sơ thuế dân cư, chứng nhận nộp thuế, số năm làm việc...* |
| Hương | グエンさん、<ruby>何<rt>なに</rt></ruby>をそんなに<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>調<rt>しら</rt></ruby>べてるの？<br>*(Ngọc ơi, đang tra cứu gì mà nghiêm túc vậy?)* |
| Ngọc | 実は<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べてた。<ruby>施設長<rt>しせつちょう</rt></ruby>に<ruby>勧<rt>すす</rt></ruby>められて。まだ<ruby>3年<rt>さんねん</rt></ruby><ruby>足<rt>た</rt></ruby>りないけど、<ruby>先<rt>さき</rt></ruby>のために<ruby>知<rt>し</rt></ruby>っておきたくて。<br>*(Thực ra đang tra điều kiện vĩnh trú. Giám đốc khuyến khích. Còn thiếu 3 năm nữa, nhưng muốn biết trước cho tương lai.)* |
| Hương | えっ、<ruby>永住<rt>えいじゅう</rt></ruby>！<ruby>私<rt>わたし</rt></ruby>はまだ<ruby>5年<rt>ごねん</rt></ruby>だから、もっと<ruby>先<rt>さき</rt></ruby>だけど...。<ruby>条件<rt>じょうけん</rt></ruby>って<ruby>難<rt>むずか</rt></ruby>しいですか？<br>*(Ồ, vĩnh trú! Em mới 5 năm nên còn xa lắm... Điều kiện có khó không?)* |
| Ngọc | <ruby>書類<rt>しょるい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いけど、<ruby>払<rt>はら</rt></ruby>うものをちゃんと<ruby>払<rt>はら</rt></ruby>って、<ruby>記録<rt>きろく</rt></ruby>がきれいなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う。まずは<ruby>日々<rt>ひび</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>大切<rt>たいせつ</rt></ruby>だよ。<br>*(Giấy tờ nhiều, nhưng nếu đóng đủ các khoản và hồ sơ sạch thì ổn thôi. Trước mắt tích lũy từng ngày là quan trọng nhất.)* |
| Hương | うん。グエンさんはいつも<ruby>先<rt>さき</rt></ruby>を<ruby>見<rt>み</rt></ruby>てますね。<br>*(Ừ. Chị Ngọc lúc nào cũng nhìn về phía trước nhỉ.)* |

---

## Tình huống 5 — Phòng 利用者 Yamada · 10:30, công việc chăm sóc hằng ngày

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>のお<ruby>体<rt>からだ</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はいかがですか？<br>*(Ông Yamada, chào buổi sáng. Hôm nay ông cảm thấy thế nào?)* |
| Ông Yamada | まあまあだね。<ruby>足<rt>あし</rt></ruby>がちょっとむくんでる<ruby>気<rt>き</rt></ruby>がして。<br>*(Cũng tàm tạm. Cảm giác chân hơi phù.)* |
| Ngọc | <ruby>確認<rt>かくにん</rt></ruby>させてください。(そっと触れながら) <ruby>左右<rt>さゆう</rt></ruby>ともむくみがありますね。<ruby>看護師<rt>かんごし</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Để em kiểm tra nhé. (nhẹ nhàng chạm vào) Cả hai chân đều có phù. Em sẽ báo điều dưỡng viên.)* |
| Ông Yamada | ありがとう、グエン<ruby>主任<rt>しゅにん</rt></ruby>。もう<ruby>主任<rt>しゅにん</rt></ruby>になったんだね。<ruby>大きく<rt>おおきく</rt></ruby>なったねえ。<br>*(Cảm ơn, Trưởng Nguyên. Đã lên trưởng rồi hả. Trưởng thành thật nhỉ.)* |
| Ngọc | (ấm lòng) <ruby>山田<rt>やまだ</rt></ruby>さんに<ruby>育<rt>そだ</rt></ruby>てていただきました。ありがとうございます。<ruby>今日<rt>きょう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Được ông nuôi dưỡng mà. Cảm ơn ông. Hôm nay mong ông tiếp tục chỉ bảo.)* |
| Ông Yamada | こちらこそ。ゆっくりやりなさい。<br>*(Tôi cũng vậy. Cứ từ từ mà làm nhé.)* |

---

## Tình huống 6 — Hành lang · 11:00, hướng dẫn TTS Linh quan sát

| Vai | Lời thoại |
|---|---|
| Linh | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>足<rt>あし</rt></ruby>のむくみ、あとでどうなりますか？<br>*(Chị Ngọc, chân phù của ông Yamada sau đó sẽ thế nào?)* |
| Ngọc | <ruby>看護師<rt>かんごし</rt></ruby>さんが<ruby>確認<rt>かくにん</rt></ruby>して、<ruby>必要<rt>ひつよう</rt></ruby>なら<ruby>医師<rt>いし</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<ruby>私<rt>わたし</rt></ruby>たちは<ruby>観察<rt>かんさつ</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>が<ruby>役割<rt>やくわり</rt></ruby>です。<br>*(Điều dưỡng viên sẽ kiểm tra, nếu cần thì liên hệ bác sĩ. Vai trò của mình là quan sát và báo cáo.)* |
| Linh | <ruby>観察<rt>かんさつ</rt></ruby>と<ruby>報告<rt>ほうこく</rt></ruby>...はい、<ruby>分<rt>わ</rt></ruby>かりました。リンも<ruby>毎日<rt>まいにち</rt></ruby><ruby>体<rt>からだ</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます。<br>*(Quan sát và báo cáo... Vâng em hiểu. Linh cũng sẽ nhìn thay đổi cơ thể hằng ngày.)* |
| Ngọc | そう、<ruby>毎日<rt>まいにち</rt></ruby><ruby>見<rt>み</rt></ruby>るから<ruby>変化<rt>へんか</rt></ruby>に<ruby>気<rt>き</rt></ruby>づける。それが<ruby>介護<rt>かいご</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>もリンと<ruby>同<rt>おな</rt></ruby>じで、<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればいいか<ruby>分<rt>わ</rt></ruby>からなかった。<br>*(Đúng, vì nhìn mỗi ngày nên mới nhận ra thay đổi. Đó là sức mạnh của nghề điều dưỡng. Hồi đầu chị cũng như Linh vậy, không biết phải nhìn gì.)* |
| Linh | グエン<ruby>主任<rt>しゅにん</rt></ruby>もそんな<ruby>時期<rt>じき</rt></ruby>があったんですね。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Chị Ngọc cũng có giai đoạn như vậy à. Em thấy yên tâm hơn rồi.)* |

---

## Tình huống 7 — Phòng nghỉ · 13:00, Ngọc tự tra cứu hồ sơ vĩnh trú

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, mở điện thoại tra cứu) <ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>申請書類<rt>しんせいしょるい</rt></ruby>...。<ruby>年金記録<rt>ねんきんきろく</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>は...<ruby>ねんきんネット<rt>ねんきんねっと</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>できるんだ。<br>*(Một mình, mở điện thoại tra cứu) Hồ sơ nộp đơn vĩnh trú... Cách xác nhận hồ sơ lương hưu thì... có thể xem qua Nenkin Net.)* |
| Ngọc | <ruby>納税証明書<rt>のうぜいしょうめいしょ</rt></ruby>は<ruby>税務署<rt>ぜいむしょ</rt></ruby>でもらう。<ruby>在職証明書<rt>ざいしょくしょうめいしょ</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いする。...あと3<ruby>年<rt>ねん</rt></ruby>、<ruby>記録<rt>きろく</rt></ruby>をきれいに<ruby>保<rt>たも</rt></ruby>っていけば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Giấy chứng nhận nộp thuế thì lấy ở cơ quan thuế. Giấy chứng nhận làm việc thì nhờ cơ sở. ...Còn 3 năm, giữ hồ sơ sạch là ổn thôi.)* |
| Yamamoto | (đi qua) グエンさん、<ruby>休憩<rt>きゅうけい</rt></ruby>ですか？<ruby>真剣<rt>しんけん</rt></ruby>な<ruby>顔<rt>かお</rt></ruby>ですね。<br>*(Ngọc, giải lao à? Vẻ mặt nghiêm túc quá.)* |
| Ngọc | <ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>を<ruby>調<rt>しら</rt></ruby>べていました。まだ3<ruby>年<rt>ねん</rt></ruby><ruby>先<rt>さき</rt></ruby>のことですが、<ruby>今<rt>いま</rt></ruby>から<ruby>理解<rt>りかい</rt></ruby>しておこうと<ruby>思<rt>おも</rt></ruby>って。<br>*(Em đang tra cứu hồ sơ vĩnh trú. Còn 3 năm nữa mới đến nhưng muốn hiểu trước từ bây giờ.)* |
| Yamamoto | いいですね。<ruby>一歩<rt>いっぽ</rt></ruby>ずつ<ruby>準備<rt>じゅんび</rt></ruby>していると<ruby>後<rt>あと</rt></ruby>で<ruby>楽<rt>らく</rt></ruby>になりますよ。<br>*(Tốt đấy. Chuẩn bị từng bước từng bước thì sau này nhẹ nhàng hơn.)* |
| Ngọc | はい。まずはケアマネの<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちます。<ruby>一歩一歩<rt>いっぽいっぽ</rt></ruby>です。<br>*(Vâng. Trước mắt đợi kết quả ケアマネ. Từng bước một.)* |

---

## Tình huống 8 — Phòng Kobayashi · 15:30, trao đổi về 永住権 tương lai

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>施設長<rt>しせつちょう</rt></ruby>、よろしいでしょうか。<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>について<ruby>調<rt>しら</rt></ruby>べていて、あと<ruby>3年<rt>さんねん</rt></ruby>ほどで<ruby>申請<rt>しんせい</rt></ruby>できそうです。<ruby>今<rt>いま</rt></ruby>から<ruby>記録<rt>きろく</rt></ruby>を<ruby>整<rt>とと</rt></ruby>えておこうと<ruby>思<rt>おも</rt></ruby>って。<br>*(Thưa giám đốc, có chút việc. Em tra điều kiện vĩnh trú, còn khoảng 3 năm nữa là có thể nộp. Em muốn sắp xếp hồ sơ dần từ bây giờ.)* |
| Kobayashi | そうですね。<ruby>早<rt>はや</rt></ruby>めに<ruby>理解<rt>りかい</rt></ruby>しておくのはいいことです。<ruby>在職期間<rt>ざいしょくきかん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>も<ruby>大切<rt>たいせつ</rt></ruby>ですよ。<ruby>必要<rt>ひつよう</rt></ruby>になったら、<ruby>在職証明書<rt>ざいしょくしょうめいしょ</rt></ruby>は<ruby>すぐ発行<rt>すぐはっこう</rt></ruby>できます。<br>*(Đúng vậy. Tìm hiểu sớm là tốt. Hồ sơ thời gian làm việc cũng quan trọng. Khi cần, giấy chứng nhận làm việc tôi cấp ngay được.)* |
| Ngọc | ありがとうございます。まずはケアマネの<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>って、それから<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>準備<rt>じゅんび</rt></ruby>していきます。<br>*(Cảm ơn giám đốc. Trước mắt đợi kết quả ケアマネ, rồi từng bước chuẩn bị dần.)* |
| Kobayashi | <ruby>一歩一歩<rt>いっぽいっぽ</rt></ruby>ですね。ここまで<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Từng bước một nhỉ. Đến đây thật sự vất vả lắm rồi.)* |
| Ngọc | <ruby>施設長<rt>しせつちょう</rt></ruby>にも、<ruby>山本<rt>やまもと</rt></ruby>さんにも、たくさん<ruby>支<rt>ささ</rt></ruby>えていただきました。ありがとうございます。<br>*(Giám đốc và chị Yamamoto đã hỗ trợ em rất nhiều. Em cảm ơn.)* |
| Kobayashi | こちらこそ。グエンさんがいてくれて、この<ruby>施設<rt>しせつ</rt></ruby>は<ruby>助<rt>たす</rt></ruby>かっています。<br>*(Chúng tôi cũng vậy. Có Ngọc ở đây, cơ sở này được giúp đỡ nhiều lắm.)* |

---

## Tình huống 9 — Siêu thị gần nhà trọ · 17:30, Ngọc mua đồ về nhà

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, chọn đồ ăn) <ruby>今夜<rt>こんや</rt></ruby>は<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>済<rt>す</rt></ruby>まそう。<ruby>炒<rt>いた</rt></ruby>め<ruby>物<rt>もの</rt></ruby>でいいか。<br>*(Một mình, chọn đồ ăn) Tối nay giải quyết đơn giản thôi. Xào là được rồi.)* |
| Ngọc | (nhìn điện thoại — có tin nhắn từ mẹ) 「結果いつ出るの？ドキドキしてるよ」<br>*(nhìn điện thoại) Tin nhắn từ mẹ: "Kết quả ra lúc nào? Mẹ hồi hộp lắm đây.")* |
| Ngọc | (mỉm cười, gõ tin nhắn lại) 「今月の下旬。私も毎日ドキドキしてる。でも、やるだけのことはやった。待つだけ。」<br>*(mỉm cười, gõ tin nhắn) "Cuối tháng này mẹ ơi. Con cũng hồi hộp mỗi ngày. Nhưng con đã làm hết sức rồi. Chỉ còn đợi thôi.")* |
| Ngọc | (nhét điện thoại vào túi, nhìn giỏ hàng) <ruby>よし<rt>よし</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>も<ruby>一日<rt>いちにち</rt></ruby>よく<ruby>頑張<rt>がんば</rt></ruby>った。<ruby>一人<rt>ひとり</rt></ruby>でご<ruby>飯<rt>はん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>って、<ruby>休<rt>やす</rt></ruby>む。<ruby>それだけ<rt>それだけ</rt></ruby>。<br>*(Ok. Hôm nay cũng đã cố gắng cả ngày rồi. Tự nấu cơm ăn và nghỉ ngơi. Vậy thôi.)* |

---

## Tình huống 10 — Nhà trọ · 22:00, Ngọc xem tài liệu trước khi ngủ

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, nhìn checklist vĩnh trú) <ruby>永住権<rt>えいじゅうけん</rt></ruby>のチェックリスト...。<ruby>納税<rt>のうぜい</rt></ruby>OK、<ruby>年金<rt>ねんきん</rt></ruby>OK、<ruby>犯歴<rt>はんれき</rt></ruby>なし。あとは<ruby>在留期間<rt>ざいりゅうきかん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねるだけだ。<br>*(Một mình, nhìn checklist vĩnh trú) Checklist vĩnh trú... Nộp thuế OK, lương hưu OK, không tiền án. Còn lại chỉ cần tiếp tục tích lũy thời gian cư trú thôi.)* |
| Ngọc | (nhìn đồng hồ — 22:15) <ruby>焦<rt>あせ</rt></ruby>らなくていい。ケアマネの<ruby>結果<rt>けっか</rt></ruby>を<ruby>先<rt>まず</rt></ruby>に<ruby>待<rt>ま</rt></ruby>つ。<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>着実<rt>ちゃくじつ</rt></ruby>に。<br>*(nhìn đồng hồ) Không cần vội. Đợi kết quả ケアマネ trước. Chuẩn bị từng bước chắc chắn.)* |
| Ngọc | (tắt đèn, nằm xuống) <ruby>結果<rt>けっか</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ずくる。<ruby>今夜<rt>こんや</rt></ruby>は<ruby>休<rt>やす</rt></ruby>もう。<br>*(tắt đèn, nằm xuống) Kết quả chắc chắn sẽ đến. Tối nay nghỉ ngơi thôi.)* |

---

## Tình huống 11 — Phòng họp nhỏ · 9:00, cuối tháng 11, Ngọc và Hương hồi hộp

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>今日<rt>きょう</rt></ruby><ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>じゃないですか？<br>*(Chị Ngọc, hôm nay công bố kết quả không?)* |
| Ngọc | そう。<ruby>正式<rt>せいしき</rt></ruby>には<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>できるはず。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>かないね。<br>*(Đúng. Chính thức chiều nay mới có thể xác nhận. Không yên tâm chút nào.)* |
| Hương | <ruby>二人<rt>ふたり</rt></ruby>で<ruby>受<rt>う</rt></ruby>けたから、<ruby>二人<rt>ふたり</rt></ruby>で<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちましょう。どんな<ruby>結果<rt>けっか</rt></ruby>でも。<br>*(Hai người cùng thi mà, cùng nhau chờ kết quả đi. Dù kết quả thế nào.)* |
| Ngọc | ありがとう、ヒュオンさん。<ruby>試験<rt>しけん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>も、ずっと<ruby>一緒<rt>いっしょ</rt></ruby>にやってきたね。<br>*(Cảm ơn Hương. Ôn thi mình cũng làm cùng nhau từ đầu nhỉ.)* |
| Hương | はい。グエンさんのおかげで<ruby>最後<rt>さいご</rt></ruby>まで<ruby>諦<rt>あきら</rt></ruby>めなかった。<br>*(Vâng. Nhờ chị Ngọc em không bỏ cuộc đến tận cùng.)* |
| Ngọc | (khẽ cười) <ruby>お互<rt>おたが</rt></ruby>いさまですよ。<ruby>今日<rt>きょう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Hòa nhau thôi. Hôm nay cùng nhau xem kết quả nhé.)* |

---

## Tình huống 12 — Phòng họp nhỏ · 15:30, khoảnh khắc chờ tải trang kết quả

| Vai | Lời thoại |
|---|---|
| Hương | (tay run) グエンさん、<ruby>ページ<rt>ぺーじ</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>けません。<ruby>混<rt>こ</rt></ruby>んでるみたい。<br>*(Tay run) Chị Ngọc, trang không mở được. Có vẻ bị nghẽn.)* |
| Ngọc | みんな<ruby>同時<rt>どうじ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ようとしてるから。ゆっくり<ruby>待<rt>ま</rt></ruby>とう。<br>*(Vì ai cũng đang xem cùng lúc mà. Từ từ chờ nhé.)* |
| Hương | あ、<ruby>開<rt>ひら</rt></ruby>いた！<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます...。<br>*(À, mở rồi! Nhập số báo danh vào...)* |
| Ngọc | (nhìn màn hình điện thoại riêng, hơi run) ...(im lặng một giây)...<br>*(nhìn màn hình điện thoại riêng, hơi run) ...(im lặng một giây)...* |
| Hương | (giọng run) わ、<ruby>私<rt>わたし</rt></ruby>、合格って<ruby>出<rt>で</rt></ruby>てます...！グエンさんは？<br>*(giọng run) Ồ, của em... đỗ rồi...! Chị Ngọc thì sao?)* |
| Ngọc | (giọng nghẹn lại) ...<ruby>私<rt>わたし</rt></ruby>も...合格。<br>*(giọng nghẹn lại) ...Chị cũng... đỗ.)* |
| Hương | (ôm chầm Ngọc) グエンさん！よかった！<ruby>本当<rt>ほんとう</rt></ruby>によかった！<br>*(ôm chầm) Chị Ngọc! Tốt quá! Thật sự tốt quá!)* |
| Ngọc | (mắt đỏ hoe, thở sâu) よかった...。<ruby>頑張<rt>がんば</rt></ruby>ってよかった。<br>*(mắt đỏ hoe, thở sâu) May quá... Cố gắng thật đáng.)* |

---

## Đọng lại chương 9

Tháng 11 chờ đợi dạy Ngọc bài học kiên nhẫn: làm tốt việc hôm nay thay vì lo xa. Song song việc chăm sóc 利用者 hằng ngày, Ngọc lần đầu nghiêm túc tìm hiểu điều kiện 永住権 — nhận ra mình còn ~3 năm nữa mới đủ, nhưng một mình đặt đó làm mục tiêu tương lai — không ồn ào, không vội vã, chỉ từng bước tích lũy. Và tận cuối chương, màn hình điện thoại hiện chữ **合格** — khoảnh khắc gần 7 năm hội tụ trong hai tiếng lặng.

> Từ vựng & mẫu câu chương này: 手応え・下旬・発表・永住権・継続在留・素行善良・独立生計・課税証明書・納税証明書・在職証明書・申請・チェックリスト・受験番号・合格', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000010, 800000032, NULL, 'markdown_book', 'T10. Đỗ ケアマネ (ケアマネ合格)', '# Sách điều dưỡng viên quốc gia · T10. Đỗ ケアマネ (ケアマネ合格)

> **Mục tiêu nhân vật:** Ngọc chính thức đỗ ケアマネジャー (介護支援専門員). Tin lan ra toàn cơ sở. 忘年会 cuối năm trở thành bữa tiệc đôi: mừng Ngọc và Hương cùng đỗ, mừng cả hành trình gần 7 năm. Ngọc trở về nhà trọ, gọi điện cho mẹ ở Việt Nam.

---

## Bối cảnh

Cuối tháng 11 — đầu tháng 12 năm 2032. Ngọc đỗ ケアマネジャー, tên gọi chính thức: **介護支援専門員**. Hương cũng đỗ. Cơ sở Hidamari-en tổ chức 忘年会 cuối năm, ban lãnh đạo trao lời chúc. Ngọc chuẩn bị đăng ký thực tập 介護支援専門員 (bắt buộc trước khi hành nghề độc lập).

---

## Tình huống 1 — Hành lang cơ sở · 8:00, sáng hôm sau khi biết kết quả

| Vai | Lời thoại |
|---|---|
| Yamamoto | (chạy lại) グエンさん！<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます！<ruby>昨日<rt>きのう</rt></ruby>ニュース<ruby>聞<rt>き</rt></ruby>きました！<br>*(Ngọc! Chúc mừng đỗ nhé! Hôm qua tôi nghe tin rồi!)* |
| Ngọc | (cúi đầu sâu) ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さんのおかげです。ずっと<ruby>応援<rt>おうえん</rt></ruby>してくださって。<br>*(Cảm ơn chị. Là nhờ chị Yamamoto. Chị cổ vũ em suốt.)* |
| Yamamoto | (mắt rướm) そんなこと。グエンさんが<ruby>頑張<rt>がんば</rt></ruby>ったんですよ。<ruby>本当<rt>ほんとう</rt></ruby>によかった。<br>*(Không có gì. Ngọc đã cố gắng mà. Thật sự tốt quá.)* |
| Ngọc | <ruby>正直<rt>しょうじき</rt></ruby>、まだ<ruby>信<rt>しん</rt></ruby>じられないです。<ruby>画面<rt>がめん</rt></ruby>を<ruby>何度<rt>なんど</rt></ruby>も<ruby>見直<rt>みなお</rt></ruby>しました。<br>*(Thành thật mà nói, em vẫn chưa tin được. Em nhìn lại màn hình bao nhiêu lần rồi.)* |
| Yamamoto | (cười) <ruby>本物<rt>ほんもの</rt></ruby>ですよ。さあ、<ruby>今日<rt>きょう</rt></ruby>から<ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>候補ですね。<br>*(Thật mà. Nào, từ hôm nay là ứng viên 介護支援専門員 rồi nhé.)* |

---

## Tình huống 2 — Phòng Kobayashi · 9:30, báo cáo chính thức và bàn bước tiếp

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます。<ruby>施設<rt>しせつ</rt></ruby>として<ruby>誇<rt>ほこ</rt></ruby>りです。<br>*(Ngọc, chúc mừng đỗ. Đây là niềm tự hào của cơ sở.)* |
| Ngọc | ありがとうございます。<ruby>次<rt>つぎ</rt></ruby>のステップについて、ご<ruby>相談<rt>そうだん</rt></ruby>できますか？<br>*(Cảm ơn giám đốc. Em có thể thảo luận về bước tiếp theo không?)* |
| Kobayashi | もちろん。<ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>くには、まず<ruby>実務研修<rt>じつむけんしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてください。<ruby>都道府県<rt>とどうふけん</rt></ruby>が<ruby>実施<rt>じっし</rt></ruby>します。<br>*(Tất nhiên. Để làm việc với tư cách 介護支援専門員, trước tiên hãy tham gia thực tập nghiệp vụ. Do tỉnh thành tổ chức.)* |
| Ngọc | <ruby>研修<rt>けんしゅう</rt></ruby>はどのくらいの<ruby>期間<rt>きかん</rt></ruby>ですか？<br>*(Thực tập kéo dài bao lâu ạ?)* |
| Kobayashi | <ruby>約<rt>やく</rt></ruby>2ヶ<ruby>月<rt>げつ</rt></ruby>、<ruby>87時間以上<rt>はちじゅうななじかんいじょう</rt></ruby>です。その<ruby>間<rt>あいだ</rt></ruby>は<ruby>施設<rt>しせつ</rt></ruby>がシフトを<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Khoảng 2 tháng, trên 87 tiếng. Trong thời gian đó cơ sở sẽ điều chỉnh lịch làm.)* |
| Ngọc | ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn chị. Em sẽ cố gắng.)* |
| Kobayashi | グエンさんなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。ここまで<ruby>来<rt>き</rt></ruby>たんだから。<br>*(Ngọc thì không sao. Đã đến đây rồi mà.)* |

---

## Tình huống 3 — Phòng sinh hoạt · 10:30, ông Yamada nghe tin

| Vai | Lời thoại |
|---|---|
| Ông Yamada | グエン<ruby>主任<rt>しゅにん</rt></ruby>、ケアマネ<ruby>試験<rt>しけん</rt></ruby>に<ruby>受<rt>う</rt></ruby>かったって本当か？<br>*(Trưởng Nguyên, nghe đồn thi ケアマネ đỗ rồi à? Thật không?)* |
| Ngọc | はい、おかげさまで。<br>*(Vâng, may mắn thay.)* |
| Ông Yamada | そうか...。<ruby>頑張<rt>がんば</rt></ruby>ったね。ここに<ruby>来<rt>き</rt></ruby>てもう<ruby>何年<rt>なんねん</rt></ruby>になる？<br>*(Vậy à... Cố gắng lắm nhỉ. Đến đây mấy năm rồi?)* |
| Ngọc | <ruby>今年<rt>ことし</rt></ruby>で7<ruby>年目<rt>ねんめ</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby>さんとも<ruby>長<rt>なが</rt></ruby>いですね。<br>*(Năm nay là năm thứ 7 ạ. Với ông Yamada cũng đã lâu rồi nhỉ.)* |
| Ông Yamada | (gật đầu chậm rãi) <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>もよく<ruby>通<rt>つう</rt></ruby>じなかったね。<ruby>今<rt>いま</rt></ruby>はすっかり<ruby>立派<rt>りっぱ</rt></ruby>になった。<br>*(Hồi đầu còn chẳng hiểu nhau được. Bây giờ đã hoàn toàn khác rồi.)* |
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ông Yamada, cảm ơn ông đã quan tâm suốt thời gian dài. Sau này cũng mong ông.)* |

---

## Tình huống 4 — Phòng nghỉ nhân viên · 12:30, đồng nghiệp chúc mừng

| Vai | Lời thoại |
|---|---|
| An | グエンさん、<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます！<ruby>自分<rt>じぶん</rt></ruby>のことのように<ruby>嬉<rt>うれ</rt></ruby>しいです！<br>*(Chị Ngọc, chúc mừng đỗ! Em vui như là của em vậy!)* |
| Đức | おめでとう、グエン。<ruby>俺<rt>おれ</rt></ruby>もいつかケアマネ<ruby>目指<rt>めざ</rt></ruby>すかな。<br>*(Chúc mừng, Ngọc. Anh cũng sẽ nhắm đến ケアマネ một ngày nào đó.)* |
| Ngọc | 德さん、ぜひ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>目指<rt>めざ</rt></ruby>しましょう。<br>*(Anh Đức, nhất định. Cùng nhau nhắm đến nhé.)* |
| Linh | グエン<ruby>主任<rt>しゅにん</rt></ruby>、すごい！リンも<ruby>将来<rt>しょうらい</rt></ruby>ケアマネになれますか？<br>*(Chị Ngọc, giỏi quá! Sau này Linh có thể thành ケアマネ không?)* |
| Ngọc | なれますよ、リンさん。<ruby>私<rt>わたし</rt></ruby>は7<ruby>年<rt>ねん</rt></ruby>かかりましたが、<ruby>道<rt>みち</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>いています。<br>*(Được chứ Linh. Chị mất gần 7 năm, nhưng con đường vẫn tiếp tục.)* |
| Tuấn | グエン<ruby>主任<rt>しゅにん</rt></ruby>、おめでとうございます。ずっと<ruby>諦<rt>あきら</rt></ruby>めなかったんですね。<br>*(Chị Ngọc, chúc mừng. Chị không bỏ cuộc suốt hả.)* |
| Ngọc | <ruby>諦<rt>あきら</rt></ruby>めそうになった<ruby>時<rt>とき</rt></ruby>も、ありましたよ。でも<ruby>諦<rt>あきら</rt></ruby>めなかったのは、みんながいたから。<br>*(Cũng có lúc suýt bỏ cuộc. Nhưng không bỏ được vì có mọi người ở đây.)* |

---

## Tình huống 5 — Hành lang cơ sở · 14:00, Ngọc và Hương nói chuyện

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>受<rt>う</rt></ruby>かってよかった。<ruby>あの日<rt>あのひ</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>できてよかった。<br>*(Chị Ngọc, hai người đều đỗ thật tốt. Ngày hôm đó được cùng nhau xem kết quả thật may.)* |
| Ngọc | うん。<ruby>一人<rt>ひとり</rt></ruby>だったら、<ruby>泣<rt>な</rt></ruby>いてばかりいたかも。<br>*(Ừ. Nếu một mình chắc chị đã khóc mãi thôi.)* |
| Hương | (cười) <ruby>私<rt>わたし</rt></ruby>も<ruby>泣<rt>な</rt></ruby>きましたよ！で、これから<ruby>研修<rt>けんしゅう</rt></ruby>ですよね。<br>*(Em cũng khóc đấy! Vậy, từ đây là thực tập đúng không?)* |
| Ngọc | そう。<ruby>実務研修<rt>じつむけんしゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてから、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>として<ruby>登録<rt>とうろく</rt></ruby>できる。<ruby>研修<rt>けんしゅう</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>もうか？<br>*(Đúng. Sau thực tập nghiệp vụ mới đăng ký chính thức được tư cách 介護支援専門員. Cùng đăng ký thực tập nhé?)* |
| Hương | はい！ぜひ。またチームで頑張りましょう。<br>*(Vâng! Nhất định. Lại cùng nhau cố gắng trong nhóm nhé.)* |

---

## Tình huống 6 — Phòng tiệc 忘年会 · 18:30, phát biểu của Kobayashi

| Vai | Lời thoại |
|---|---|
| Kobayashi | (giơ ly) みなさん、<ruby>今年<rt>ことし</rt></ruby>も<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>今年<rt>ことし</rt></ruby>は<ruby>特別<rt>とくべつ</rt></ruby>な<ruby>年<rt>とし</rt></ruby>でした。<ruby>二人<rt>ふたり</rt></ruby>のスタッフがケアマネ<ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Mọi người, năm nay thật sự vất vả rồi. Năm nay là năm đặc biệt. Có hai nhân viên đỗ kỳ thi ケアマネ.)* |
| Tất cả | わあ！おめでとうございます！<br>*(Oa! Chúc mừng!)* |
| Kobayashi | グエン<ruby>主任<rt>しゅにん</rt></ruby>とヒュオンさんです。この<ruby>施設<rt>しせつ</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りです。<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Là Trưởng Nguyên và Hương. Là niềm tự hào của cơ sở này. Cạn chén!)* |
| Tất cả | 乾杯！<br>*(Cạn chén!)* |
| Ngọc | (cúi đầu sâu) ありがとうございます。みなさんのおかげです。<ruby>今後<rt>こんご</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn mọi người. Là nhờ mọi người cả. Sau này cũng mong tiếp tục.)* |

---

## Tình huống 7 — Góc nhỏ trong phòng tiệc · 19:00, Yamamoto nói thêm với Ngọc

| Vai | Lời thoại |
|---|---|
| Yamamoto | (nâng ly nhỏ với Ngọc) グエンさん、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>会<rt>あ</rt></ruby>ったのはいつでしたっけ。<br>*(Ngọc, lần đầu gặp nhau là khi nào nhỉ.)* |
| Ngọc | <ruby>2026年<rt>にせんにじゅうろくねん</rt></ruby>の4<ruby>月<rt>がつ</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>が<ruby>実習生<rt>じっしゅうせい</rt></ruby>で<ruby>来<rt>き</rt></ruby>た<ruby>日<rt>ひ</rt></ruby>。<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>緊張<rt>きんちょう</rt></ruby>して、うまく<ruby>自己紹介<rt>じこしょうかい</rt></ruby>もできなかった。<br>*(Tháng 4 năm 2026 ạ. Ngày em đến làm thực tập sinh. Em hồi hộp ở buổi chào sáng, tự giới thiệu còn vụng về.)* |
| Yamamoto | (cười) そんなこと<ruby>言<rt>い</rt></ruby>ってたっけ？<ruby>あの日<rt>あのひ</rt></ruby>のグエンさんが、もうケアマネ...。<ruby>時間<rt>じかん</rt></ruby>って<ruby>不思議<rt>ふしぎ</rt></ruby>ですね。<br>*(Thật à? Ngọc hồi đó mà bây giờ đã là ケアマネ... Thời gian thật kỳ diệu nhỉ.)* |
| Ngọc | <ruby>山本<rt>やまもと</rt></ruby>さんが「<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>いてください」って<ruby>言<rt>い</rt></ruby>ってくれた。あの<ruby>言葉<rt>ことば</rt></ruby>、ずっと<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Chị Yamamoto nói "có gì không hiểu cứ hỏi nhé". Câu đó em nhớ mãi.)* |
| Yamamoto | (xúc động) グエンさん...ありがとう。<ruby>私<rt>わたし</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>こそ、<ruby>教<rt>おし</rt></ruby>えてもらった<ruby>気<rt>き</rt></ruby>がします。<br>*(Ngọc... cảm ơn. Chị mới cảm thấy là mình được dạy lại.)* |

---

## Tình huống 8 — Ngoài hành lang · 20:00, Ngọc bước ra hít thở

| Vai | Lời thoại |
|---|---|
| Đức | (bước ra theo) グエン、<ruby>一人<rt>ひとり</rt></ruby>か？<br>*(Ngọc, một mình à?)* |
| Ngọc | うん。ちょっと<ruby>空気<rt>くうき</rt></ruby>を<ruby>吸<rt>す</rt></ruby>いたくて。<ruby>感慨深<rt>かんがいぶか</rt></ruby>くてさ。<br>*(Ừ. Muốn hít chút không khí. Cảm xúc thật sâu ấy.)* |
| Đức | 7<ruby>年<rt>ねん</rt></ruby>だもんな。<ruby>俺<rt>おれ</rt></ruby>なんか、まだまだだよ。<br>*(Gần 7 năm cơ mà. Anh thì còn xa lắm.)* |
| Ngọc | <ruby>德<rt>とく</rt></ruby>さん、7<ruby>年前<rt>ねんまえ</rt></ruby>のあなたが<ruby>今<rt>いま</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>を<ruby>見<rt>み</rt></ruby>たら<ruby>驚<rt>おどろ</rt></ruby>くと<ruby>思<rt>おも</rt></ruby>う？<ruby>私<rt>わたし</rt></ruby>もそうだった。<br>*(Anh Đức, nếu anh 7 năm trước nhìn thấy anh bây giờ, chắc anh ngạc nhiên lắm nhỉ? Em cũng vậy.)* |
| Đức | そうだな。グエン、ありがとう。<ruby>俺<rt>おれ</rt></ruby>も頑張るよ。<br>*(Đúng thật. Ngọc, cảm ơn. Anh cũng sẽ cố.)* |

---

## Tình huống 9 — Nhà trọ · 21:30, trở về nhà sau tiệc

| Vai | Lời thoại |
|---|---|
| Ngọc | (mở cửa, bật đèn) ただいま...。<ruby>一人<rt>ひとり</rt></ruby>の<ruby>家<rt>いえ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>ってきた。でも<ruby>今夜<rt>こんや</rt></ruby>は<ruby>寂<rt>さび</rt></ruby>しくない。<br>*(Mẹ về rồi... Về căn nhà một mình. Nhưng tối nay không cô đơn.)* |
| Ngọc | (ngồi xuống, nhìn điện thoại đầy tin nhắn chúc mừng) ハーさん、山本さん、チュアンさん、リンさん...。みんな<ruby>いてくれて<rt>いてくれて</rt></ruby>よかった。<br>*(Hương, Yamamoto, Tuấn, Linh... May là có mọi người.)* |
| Ngọc | (độc thoại, thở ra nhẹ) <ruby>合格<rt>ごうかく</rt></ruby>した。<ruby>諦<rt>あきら</rt></ruby>めなかった。<ruby>私<rt>わたし</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>でここまで来た。<br>*(Đỗ rồi. Không bỏ cuộc. Mình đã đến được đây bằng sức của chính mình.)* |

---

## Tình huống 10 — Phòng ngủ · 22:30, gọi điện cho mẹ ở Việt Nam

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi điện) Mẹ ơi, con gọi được không? |
| Mẹ | (tiếng Việt, giọng mừng) Được chứ con! Mẹ đợi mãi. Đỗ rồi hả con? |
| Ngọc | (tiếng Việt, giọng nghẹn) Đỗ rồi mẹ. Con đỗ ケアマネ rồi. |
| Mẹ | (tiếng Việt, khóc nhẹ) Con ơi... mẹ mừng quá. Mẹ cứ cầu mong suốt mấy tháng nay. |
| Ngọc | (tiếng Việt) Mẹ có khỏe không? Con muốn mẹ sang đây dự tiệc với con, mà... |
| Mẹ | (tiếng Việt, giọng hiểu) Ừ, mẹ biết. Xa xôi quá. Mẹ ở đây cũng vui cho con rồi. Em con có khỏe không? |
| Ngọc | (tiếng Việt) Khỏe mẹ. Em đang học đại học rồi mà. Mà con... con nhớ mẹ. |
| Mẹ | (tiếng Việt, ấm áp) Mẹ cũng nhớ con. Con đã cố gắng lắm rồi. Mẹ tự hào lắm. |

---

## Tình huống 11 — Phòng tiệc cuối buổi · 21:00, Linh và Tuấn nói chuyện với Ngọc

| Vai | Lời thoại |
|---|---|
| Linh | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>今夜<rt>こんや</rt></ruby>、<ruby>主任<rt>しゅにん</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をたくさん<ruby>聞<rt>き</rt></ruby>かせてもらいました。リンも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Chị Ngọc, tối nay em được nghe chuyện của chị nhiều. Linh cũng sẽ cố gắng.)* |
| Tuấn | <ruby>俺<rt>おれ</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby>、<ruby>辞<rt>や</rt></ruby>めたかった。でもグエン<ruby>主任<rt>しゅにん</rt></ruby>が「<ruby>諦<rt>あきら</rt></ruby>めるな」って<ruby>言<rt>い</rt></ruby>ってくれた。<ruby>今<rt>いま</rt></ruby>も<ruby>続<rt>つづ</rt></ruby>けています。<br>*(Hồi đầu anh muốn bỏ. Nhưng chị Ngọc nói "đừng bỏ cuộc". Bây giờ anh vẫn tiếp tục.)* |
| Ngọc | チュアンさん、よく<ruby>頑張<rt>がんば</rt></ruby>っています。あの<ruby>時<rt>とき</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>話<rt>はなし</rt></ruby>してよかった。<br>*(Tuấn, bạn làm tốt lắm. Lúc đó nói chuyện cùng nhau thật may.)* |
| Linh | <ruby>私<rt>わたし</rt></ruby>たちも<ruby>主任<rt>しゅにん</rt></ruby>みたいになりたいです。ベトナム<ruby>語<rt>ご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>で<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てる<ruby>介護士<rt>かいごし</rt></ruby>に。<br>*(Em cũng muốn trở thành như chị. Người làm điều dưỡng hữu ích bằng cả tiếng Việt lẫn tiếng Nhật.)* |
| Ngọc | なれますよ。<ruby>必<rt>かなら</rt></ruby>ず。<br>*(Được chứ. Nhất định.)* |

---

## Tình huống 12 — Sảnh cơ sở · 22:00, tiễn người về, nhìn lại đêm

| Vai | Lời thoại |
|---|---|
| Yamamoto | (đứng cạnh Ngọc nhìn ra sảnh) グエンさん、<ruby>来年<rt>らいねん</rt></ruby>はどんな<ruby>年<rt>とし</rt></ruby>になるでしょうね。<br>*(Ngọc, năm sau sẽ là năm như thế nào nhỉ.)* |
| Ngọc | ケアプランを<ruby>書<rt>か</rt></ruby>く<ruby>年<rt>とし</rt></ruby>になると<ruby>思<rt>おも</rt></ruby>います。<ruby>初<rt>はじ</rt></ruby>めてのケアプラン、<ruby>緊張<rt>きんちょう</rt></ruby>しますね。<br>*(Em nghĩ sẽ là năm em viết ケアプラン. Bản kế hoạch chăm sóc đầu tiên, hồi hộp lắm nhỉ.)* |
| Yamamoto | <ruby>私<rt>わたし</rt></ruby>が<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ます。<ruby>困<rt>こま</rt></ruby>ったら、いつでも<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Tôi sẽ cùng xem. Khi gặp khó khăn, cứ lên tiếng bất cứ lúc nào nhé.)* |
| Ngọc | (cúi đầu) ありがとうございます。<ruby>山本<rt>やまもと</rt></ruby>さん、ずっとそう<ruby>言<rt>い</rt></ruby>ってくれますね。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>も。<br>*(Cảm ơn chị. Chị Yamamoto lúc nào cũng nói vậy nhỉ. Ngày đầu tiên cũng vậy.)* |
| Yamamoto | (mỉm cười) そうですか？<ruby>変<rt>か</rt></ruby>わらないものも、あるんですね。<br>*(Vậy à? Có những điều không thay đổi nhỉ.)* |
| Ngọc | はい。<ruby>来年<rt>らいねん</rt></ruby>も、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Năm sau cũng mong chị nhé.)* |

---

## Đọng lại chương 10

Tháng 12 rực rỡ hơn mọi năm: chữ **合格** trên màn hình điện thoại mở ra chuỗi chúc mừng không dứt — từ Yamamoto hành lang sớm sáng, ông Yamada trong phòng dưỡng lão, Kobayashi trên bục tiệc, đến tiếng mẹ khóc nhẹ từ đầu dây bên kia đại dương. Trở về căn phòng trọ yên tĩnh, Ngọc cảm nhận một điều rõ ràng: hành trình gần 7 năm, một mình, đã có giá trị hơn mọi chứng chỉ.

> Từ vựng & mẫu câu chương này: 合格・誇り・介護支援専門員・実務研修・都道府県・登録・感慨深い・乾杯・おかげさまで・今後もよろしくお願いします', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000011, 800000032, NULL, 'markdown_book', 'T11. Bản kế hoạch chăm sóc đầu tiên (初めてのケアプラン)', '# Sách điều dưỡng viên quốc gia · T11. Bản kế hoạch chăm sóc đầu tiên (初めてのケアプラン)

> **Mục tiêu nhân vật:** Ngọc hoàn thành thực tập 介護支援専門員 (tháng 1-2 năm 2033) và chính thức lập ケアプラン đầu tiên cho 利用者 cũ — ông Yamada, người Ngọc từng chăm sóc trực tiếp khi mới là thực tập sinh. Vòng tròn khép lại: từ người được hướng dẫn đến người lên kế hoạch.

---

## Bối cảnh

Tháng 1-2 năm 2033. Ngọc tham gia 実務研修 (87 giờ, khoảng 2 tháng) do tỉnh tổ chức — thực tập thực tế với giám sát, học lập ケアプラン, họp 担当者会議, làm quen 給付管理. Sau khi đăng ký chính thức, Ngọc được giao ケアプラン đầu tiên: ông Yamada (85 tuổi), 利用者 quen thuộc từ ngày đầu mới đến.

---

## Tình huống 1 — Phòng học 研修 · 9:00, ngày đầu 実務研修

| Vai | Lời thoại |
|---|---|
| Giảng viên Ota | みなさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>実務研修<rt>じつむけんしゅう</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まります。<ruby>全<rt>ぜん</rt></ruby>87<ruby>時間<rt>じかん</rt></ruby>、ケアプランの<ruby>作成<rt>さくせい</rt></ruby>から<ruby>給付管理<rt>きゅうふかんり</rt></ruby>まで<ruby>学<rt>まな</rt></ruby>びます。<br>*(Mọi người, hôm nay bắt đầu thực tập nghiệp vụ. Tổng 87 giờ, từ lập ケアプラン đến quản lý thanh toán trợ cấp.)* |
| Ngọc | (nhìn tài liệu dày cộp) ...<ruby>課題<rt>かだい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い...。<br>*(nhìn tài liệu dày cộp) ...Bài tập nhiều thật...* |
| Hương | (thì thầm) グエンさん、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Thì thầm) Chị Ngọc, cùng nhau cố gắng nhé.)* |
| Giảng viên Ota | <ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は「<ruby>現場<rt>げんば</rt></ruby>」ではなく「<ruby>調整<rt>ちょうせい</rt></ruby>」です。<ruby>医療<rt>いりょう</rt></ruby>・<ruby>介護<rt>かいご</rt></ruby>・<ruby>福祉<rt>ふくし</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>をつなぐ<ruby>役割<rt>やくわり</rt></ruby>。<br>*(Công việc 介護支援専門員 là "điều phối", không phải "hiện trường". Vai trò kết nối giữa y tế, điều dưỡng và phúc lợi.)* |
| Ngọc | (ghi chép) <ruby>調整<rt>ちょうせい</rt></ruby>する<ruby>役割<rt>やくわり</rt></ruby>...。<ruby>現場<rt>げんば</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>う<ruby>視点<rt>してん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>なんですね。<br>*(ghi chép) Vai trò điều phối... Cần góc nhìn khác với hiện trường nhỉ.)* |

---

## Tình huống 2 — Phòng nghỉ 研修 · 12:00, thảo luận giữa các học viên

| Vai | Lời thoại |
|---|---|
| Học viên Tanaka | グエンさん、<ruby>現場経験<rt>げんばけいけん</rt></ruby>7<ruby>年<rt>ねん</rt></ruby>なんですね。ケアプランを<ruby>作<rt>つく</rt></ruby>るとき、<ruby>現場<rt>げんば</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>は<ruby>役立<rt>やくだ</rt></ruby>ちますか？<br>*(Chị Nguyên, kinh nghiệm hiện trường 7 năm hả. Khi lập ケアプラン, kiến thức hiện trường có ích không?)* |
| Ngọc | そう<ruby>思<rt>おも</rt></ruby>います。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>体<rt>からだ</rt></ruby>の<ruby>変化<rt>へんか</rt></ruby>を<ruby>実感<rt>じっかん</rt></ruby>してきたから、<ruby>現実的<rt>げんじつてき</rt></ruby>な<ruby>目標<rt>もくひょう</rt></ruby>が<ruby>立<rt>た</rt></ruby>てやすいと<ruby>思<rt>おも</rt></ruby>う。<br>*(Em nghĩ vậy. Vì đã trực tiếp cảm nhận thay đổi cơ thể của người dùng, nên dễ đặt mục tiêu thực tế hơn.)* |
| Học viên Tanaka | なるほど。<ruby>私<rt>わたし</rt></ruby>は<ruby>相談員<rt>そうだんいん</rt></ruby>から<ruby>来<rt>き</rt></ruby>たので、<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>現場<rt>げんば</rt></ruby>のことが<ruby>不安<rt>ふあん</rt></ruby>で。<br>*(Ra thế. Em từ tư vấn viên lên nên ngược lại em lo về phần hiện trường.)* |
| Ngọc | お<ruby>互<rt>たが</rt></ruby>いに<ruby>補<rt>おぎな</rt></ruby>い<ruby>合<rt>あ</rt></ruby>えると<ruby>思<rt>おも</rt></ruby>いますよ。<ruby>相談員<rt>そうだんいん</rt></ruby>の<ruby>視点<rt>してん</rt></ruby>、ぜひ<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Em nghĩ mình có thể bổ sung cho nhau. Góc nhìn của tư vấn viên, mong chị chỉ giáo nhé.)* |

---

## Tình huống 3 — Lớp học 研修 · 14:00, thực hành lập ケアプラン trên giấy

| Vai | Lời thoại |
|---|---|
| Giảng viên Ota | では<ruby>実習<rt>じっしゅう</rt></ruby>です。ケースAの<ruby>利用者<rt>りようしゃ</rt></ruby>、85<ruby>歳<rt>さい</rt></ruby>、<ruby>要介護<rt>ようかいご</rt></ruby>3。<ruby>長期目標<rt>ちょうきもくひょう</rt></ruby>と<ruby>短期目標<rt>たんきもくひょう</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Thực hành nhé. Người dùng case A, 85 tuổi, mức độ chăm sóc 3. Viết mục tiêu dài hạn và ngắn hạn.)* |
| Ngọc | (viết) <ruby>長期目標<rt>ちょうきもくひょう</rt></ruby>:「<ruby>自宅<rt>じたく</rt></ruby>での<ruby>生活<rt>せいかつ</rt></ruby>を<ruby>継続<rt>けいぞく</rt></ruby>し、<ruby>安心<rt>あんしん</rt></ruby>して<ruby>日常<rt>にちじょう</rt></ruby>を<ruby>過<rt>す</rt></ruby>ごせること」。<ruby>短期目標<rt>たんきもくひょう</rt></ruby>:「<ruby>週<rt>しゅう</rt></ruby>2<ruby>回<rt>かい</rt></ruby>のリハビリで<ruby>歩行<rt>ほこう</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby>を<ruby>維持<rt>いじ</rt></ruby>すること」。<br>*(viết) Mục tiêu dài hạn: "Tiếp tục sinh sống tại nhà, an tâm trải qua cuộc sống hằng ngày". Mục tiêu ngắn hạn: "Duy trì khả năng đi lại qua phục hồi chức năng 2 lần/tuần".)* |
| Giảng viên Ota | (xem bài) いいですね。<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>生活<rt>せいかつ</rt></ruby>に<ruby>焦点<rt>しょうてん</rt></ruby>を<ruby>当<rt>あ</rt></ruby>てた<ruby>目標<rt>もくひょう</rt></ruby>になっています。<ruby>現場経験<rt>げんばけいけん</rt></ruby>が<ruby>出<rt>で</rt></ruby>ていますね。<br>*(Tốt đấy. Mục tiêu tập trung vào cuộc sống của người dùng. Kinh nghiệm hiện trường thể hiện rõ nhỉ.)* |

---

## Tình huống 4 — Cơ sở Hidamari-en · 3 tháng 2033, ngày đầu chính thức

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>登録<rt>とうろく</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しましたね。<ruby>介護支援専門員<rt>かいごしえんせんもんいん</rt></ruby>として<ruby>最初<rt>さいしょ</rt></ruby>のケアプランを<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<br>*(Ngọc, đã hoàn tất đăng ký rồi nhé. Giao cho em phụ trách ケアプラン đầu tiên với tư cách 介護支援専門員.)* |
| Ngọc | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。どなたですか？<br>*(Vâng, em rõ. Của ai ạ?)* |
| Kobayashi | <ruby>山田<rt>やまだ</rt></ruby>さんです。グエンさんが<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>担当<rt>たんとう</rt></ruby>した<ruby>利用者<rt>りようしゃ</rt></ruby>さん、<ruby>覚<rt>おぼ</rt></ruby>えていますか？<br>*(Ông Yamada đấy. Người dùng đầu tiên Ngọc từng phụ trách, còn nhớ không?)* |
| Ngọc | (khoảng lặng) ...もちろん<ruby>覚<rt>おぼ</rt></ruby>えています。あの<ruby>方<rt>かた</rt></ruby>のケアプランを、<ruby>私<rt>わたし</rt></ruby>が...<br>*(khoảng lặng) ...Em nhớ chứ. Bản kế hoạch của ông ấy, do em...)* |
| Kobayashi | そうです。<ruby>縁<rt>えん</rt></ruby>がある<ruby>方<rt>かた</rt></ruby>ですね。<ruby>丁寧<rt>ていねい</rt></ruby>に、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りましょう。<br>*(Đúng vậy. Người có duyên với em nhỉ. Hãy làm cẩn thận, cùng nhau nhé.)* |

---

## Tình huống 5 — Phòng ông Yamada · 10:00, アセスメント (đánh giá nhu cầu)

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>はケアプランを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えたいと<ruby>思<rt>おも</rt></ruby>って。お<ruby>時間<rt>じかん</rt></ruby>よろしいですか？<br>*(Ông Yamada, hôm nay em muốn cùng ông suy nghĩ về kế hoạch chăm sóc. Ông có rảnh không?)* |
| Ông Yamada | グエンか。あんたが<ruby>作<rt>つく</rt></ruby>るのか、ケアプランを。<ruby>不思議<rt>ふしぎ</rt></ruby>なもんだね。<br>*(Nguyên hả. Cậu lập kế hoạch cho tao à. Thật kỳ lạ nhỉ.)* |
| Ngọc | はい。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>山田<rt>やまだ</rt></ruby>さんにいろいろ<ruby>教<rt>おし</rt></ruby>えてもらいました。<ruby>今度<rt>こんど</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>山田<rt>やまだ</rt></ruby>さんのために。<br>*(Vâng. Hồi đầu em được ông dạy bảo nhiều thứ. Lần này em vì ông.)* |
| Ông Yamada | そうか。じゃあ、聞くか。<ruby>足<rt>あし</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>くなって、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>歩<rt>ある</rt></ruby>くのが<ruby>怖<rt>こわ</rt></ruby>いんだよ。<br>*(Vậy à. Thì nghe đây. Chân yếu rồi, một mình đi sợ lắm.)* |
| Ngọc | (ghi chép chú tâm) <ruby>怖<rt>こわ</rt></ruby>い、ですね。<ruby>転倒<rt>てんとう</rt></ruby>の<ruby>不安<rt>ふあん</rt></ruby>がおありですか？<br>*(Sợ, vậy ạ. Ông lo ngại bị ngã phải không?)* |
| Ông Yamada | そうだよ。でも<ruby>日向<rt>ひなた</rt></ruby>ぼっこはしたいし、<ruby>食堂<rt>しょくどう</rt></ruby>まで<ruby>自分<rt>じぶん</rt></ruby>で<ruby>行<rt>い</rt></ruby>きたい。<br>*(Đúng. Nhưng tao vẫn muốn phơi nắng, và muốn tự mình đi ra phòng ăn.)* |
| Ngọc | そのご<ruby>希望<rt>きぼう</rt></ruby>が<ruby>大切<rt>たいせつ</rt></ruby>です。ケアプランにちゃんと<ruby>入<rt>い</rt></ruby>れます。<br>*(Mong muốn đó rất quan trọng. Em sẽ đưa vào kế hoạch đầy đủ.)* |

---

## Tình huống 6 — Phòng làm việc · 15:00, Ngọc viết ケアプラン đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | (tự nhủ, nhìn trang giấy trắng) ...<ruby>山田<rt>やまだ</rt></ruby>さんは「<ruby>転倒<rt>てんとう</rt></ruby>が<ruby>怖<rt>こわ</rt></ruby>いけど<ruby>食堂<rt>しょくどう</rt></ruby>まで<ruby>歩<rt>ある</rt></ruby>きたい」と<ruby>言<rt>い</rt></ruby>った。その<ruby>言葉<rt>ことば</rt></ruby>を<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>書<rt>か</rt></ruby>こう。<br>*(tự nhủ, nhìn trang giấy trắng) Ông Yamada nói "sợ ngã nhưng muốn tự đi ra phòng ăn". Lấy câu nói đó làm trung tâm mà viết.* |
| Yamamoto | (ghé qua) グエンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<ruby>手<rt>て</rt></ruby>が<ruby>止<rt>と</rt></ruby>まっていますよ。<br>*(Ngọc, ổn không? Tay dừng rồi đấy.)* |
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さんのお<ruby>気持<rt>きも</rt></ruby>ちをどう<ruby>言葉<rt>ことば</rt></ruby>にすればいいか、<ruby>考<rt>かんが</rt></ruby>えていました。<br>*(Em đang nghĩ diễn đạt cảm xúc của ông Yamada thành ngôn từ như thế nào.)* |
| Yamamoto | ケアプランは<ruby>利用者<rt>りようしゃ</rt></ruby>さんの「やりたいこと」から<ruby>始<rt>はじ</rt></ruby>まるんですよ。<ruby>書類<rt>しょるい</rt></ruby>じゃなくて、<ruby>生活<rt>せいかつ</rt></ruby>の<ruby>設計図<rt>せっけいず</rt></ruby>。<br>*(ケアプラン bắt đầu từ "điều người dùng muốn làm". Không phải giấy tờ, mà là bản vẽ thiết kế cuộc sống.)* |
| Ngọc | <ruby>生活<rt>せいかつ</rt></ruby>の<ruby>設計図<rt>せっけいず</rt></ruby>...ありがとうございます、<ruby>山本<rt>やまもと</rt></ruby>さん。<ruby>書<rt>か</rt></ruby>けそうです。<br>*(Bản vẽ thiết kế cuộc sống... Cảm ơn chị Yamamoto. Em có thể viết được rồi.)* |

---

## Tình huống 7 — Phòng họp 担当者会議 · 10:00, tuần tiếp

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>担当者会議<rt>たんとうしゃかいぎ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>現状<rt>げんじょう</rt></ruby>と<ruby>短期目標<rt>たんきもくひょう</rt></ruby>をご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Hôm nay xin phép họp đội phụ trách cho ông Yamada. Mọi người xác nhận tình trạng hiện tại và mục tiêu ngắn hạn nhé.)* |
| Y tá Nakamura | ご<ruby>本人<rt>ほんにん</rt></ruby>の「<ruby>食堂<rt>しょくどう</rt></ruby>まで<ruby>自分<rt>じぶん</rt></ruby>で<ruby>歩<rt>ある</rt></ruby>く」という<ruby>希望<rt>きぼう</rt></ruby>、いいですね。リハビリと<ruby>連携<rt>れんけい</rt></ruby>できます。<br>*(Mong muốn "tự mình đi ra phòng ăn" của ông ấy tốt đấy. Có thể phối hợp với phục hồi chức năng.)* |
| Nhân viên PT | <ruby>週<rt>しゅう</rt></ruby>2<ruby>回<rt>かい</rt></ruby>のリハビリを<ruby>継続<rt>けいぞく</rt></ruby>して、<ruby>歩行器<rt>ほこうき</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>加<rt>くわ</rt></ruby>えましょう。<br>*(Tiếp tục phục hồi 2 lần/tuần và thêm luyện tập khung đi.)* |
| Ngọc | ありがとうございます。ご<ruby>家族<rt>かぞく</rt></ruby>にも<ruby>共有<rt>きょうゆう</rt></ruby>してよろしいですか？<br>*(Cảm ơn. Tôi có thể chia sẻ với gia đình ông không?)* |
| Y tá Nakamura | はい、ぜひ。チームで<ruby>支<rt>ささ</rt></ruby>える<ruby>体制<rt>たいせい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Vâng, mong vậy. Cơ chế hỗ trợ theo nhóm rất quan trọng.)* |

---

## Tình huống 8 — Hành lang · 14:30, Ngọc gặp lại ông Yamada sau khi kế hoạch được duyệt

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さん、ケアプランが<ruby>完成<rt>かんせい</rt></ruby>しました。<ruby>内容<rt>ないよう</rt></ruby>をご<ruby>確認<rt>かくにん</rt></ruby>いただけますか？<br>*(Ông Yamada, kế hoạch chăm sóc hoàn thành rồi. Ông xem lại nội dung được không?)* |
| Ông Yamada | (đọc chậm) ...<ruby>食堂<rt>しょくどう</rt></ruby>まで<ruby>歩<rt>ある</rt></ruby>く、が<ruby>目標<rt>もくひょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってるな。ちゃんと<ruby>聞<rt>き</rt></ruby>いてくれたんだな。<br>*(đọc chậm) ...Tự đi ra phòng ăn nằm trong mục tiêu rồi. Cậu đã nghe kỹ đấy.)* |
| Ngọc | はい。<ruby>山田<rt>やまだ</rt></ruby>さんがおっしゃったことが<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>です。<br>*(Vâng. Những gì ông nói là quan trọng nhất.)* |
| Ông Yamada | (ký tên chậm rãi) グエン...ありがとう。あんたが<ruby>作<rt>つく</rt></ruby>ってくれて<ruby>良<rt>よ</rt></ruby>かった。<br>*(Ký tên chậm rãi) Nguyên... cảm ơn. May là cậu lập cho tao.)* |
| Ngọc | (cúi đầu sâu) こちらこそ、ありがとうございます。<ruby>山田<rt>やまだ</rt></ruby>さん。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Em mới cảm ơn ông mới phải. Ông Yamada. Cùng nhau cố gắng nhé.)* |

---

## Tình huống 9 — Hành lang · 1 tuần sau, ông Yamada tự đi ra phòng ăn

| Vai | Lời thoại |
|---|---|
| Linh | (chạy lại) グエン<ruby>主任<rt>しゅにん</rt></ruby>！<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>一人<rt>ひとり</rt></ruby>で<ruby>歩行器<rt>ほこうき</rt></ruby>で<ruby>食堂<rt>しょくどう</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました！<br>*(Chị Ngọc! Ông Yamada tự dùng khung đi ra phòng ăn rồi!)* |
| Ngọc | (bước ra nhìn) ...<ruby>山田<rt>やまだ</rt></ruby>さん。<br>*(bước ra nhìn) ...Ông Yamada.* |
| Ông Yamada | (nhìn lại Ngọc, gật đầu) やったぞ。<ruby>転<rt>こ</rt></ruby>けなかった。<br>*(nhìn lại, gật đầu) Làm được rồi. Không ngã.)* |
| Ngọc | (mắt sáng lên) よかった！ほんとうによかった！<br>*(Tốt quá! Thật sự tốt quá!)* |
| Ông Yamada | ケアプランのおかげだ。グエンのおかげだよ。<br>*(Nhờ kế hoạch. Nhờ Nguyên đấy.)* |
| Ngọc | いいえ、<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>頑張<rt>がんば</rt></ruby>ったんです。<ruby>私<rt>わたし</rt></ruby>はただ<ruby>計画<rt>けいかく</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っただけです。<br>*(Không, là ông cố gắng mà. Em chỉ lập kế hoạch thôi.)* |

---

## Tình huống 10 — Phòng làm việc · 15:00, Ngọc viết nhật ký nghiệp vụ

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>山田<rt>やまだ</rt></ruby>さんの<ruby>話<rt>はなし</rt></ruby>、<ruby>聞<rt>き</rt></ruby>きました。よかったですね。<br>*(Chị Ngọc, nghe chuyện ông Yamada rồi. Tốt quá nhỉ.)* |
| Ngọc | うん。ケアプランって<ruby>紙<rt>かみ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>じゃないんだな、とあらためて<ruby>思<rt>おも</rt></ruby>った。<br>*(Ừ. Mình lại nghĩ ra rằng ケアプラン không phải chỉ là chuyện trên giấy.)* |
| Hương | そうですね。<ruby>山田<rt>やまだ</rt></ruby>さんが<ruby>歩<rt>ある</rt></ruby>いた、それが<ruby>答え<rt>こたえ</rt></ruby>ですよ。<br>*(Đúng nhỉ. Ông Yamada bước đi được, đó là câu trả lời.)* |
| Ngọc | ヒュオンさんも<ruby>最初<rt>さいしょ</rt></ruby>のケアプラン、どうでしたか？<br>*(Hương, bản kế hoạch đầu tiên của em thế nào?)* |
| Hương | <ruby>私<rt>わたし</rt></ruby>はまだ<ruby>書<rt>か</rt></ruby>き<ruby>直<rt>なお</rt></ruby>し<ruby>中<rt>ちゅう</rt></ruby>です...<ruby>難<rt>むずか</rt></ruby>しい。グエンさん、<ruby>見<rt>み</rt></ruby>てもらえますか？<br>*(Em vẫn đang viết lại... Khó lắm. Chị Ngọc, chị có thể xem giúp không?)* |
| Ngọc | もちろん。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えましょう。<br>*(Tất nhiên. Cùng nhau suy nghĩ nhé.)* |

---

## Tình huống 11 — Phòng Kobayashi · 17:00, đánh giá tháng 3

| Vai | Lời thoại |
|---|---|
| Kobayashi | グエンさん、<ruby>最初<rt>さいしょ</rt></ruby>のケアプラン、<ruby>山田<rt>やまだ</rt></ruby>さんも<ruby>家族<rt>かぞく</rt></ruby>さんも<ruby>喜<rt>よろこ</rt></ruby>んでいます。<br>*(Ngọc, kế hoạch chăm sóc đầu tiên, ông Yamada và gia đình đều vui.)* |
| Ngọc | ありがとうございます。<ruby>山田<rt>やまだ</rt></ruby>さんのおかげです。はっきり「<ruby>歩<rt>ある</rt></ruby>きたい」と<ruby>言<rt>い</rt></ruby>ってくださったから。<br>*(Cảm ơn giám đốc. Là nhờ ông Yamada. Ông nói rõ "muốn tự đi" nên em mới làm được.)* |
| Kobayashi | <ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>言葉<rt>ことば</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にする、それがケアマネの<ruby>基本<rt>きほん</rt></ruby>です。グエンさん、しっかり<ruby>分<rt>わ</rt></ruby>かっていますね。<br>*(Trân trọng lời nói của người dùng, đó là nền tảng của ケアマネ. Ngọc hiểu rõ điều đó rồi nhỉ.)* |
| Ngọc | はい、<ruby>学<rt>まな</rt></ruby>んでいる<ruby>途中<rt>とちゅう</rt></ruby>ですが。<ruby>山田<rt>やまだ</rt></ruby>さんと7<ruby>年間<rt>ねんかん</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>があったから、<ruby>見<rt>み</rt></ruby>えたことがあります。<br>*(Vâng, em vẫn đang học. Nhưng vì có 7 năm quan hệ với ông Yamada nên mới thấy được điều đó.)* |

---

## Tình huống 12 — Hành lang cơ sở · 18:00, nhìn lại ngày đầu gần 7 năm trước

| Vai | Lời thoại |
|---|---|
| Ngọc | (một mình, nhìn sảnh lúc chiều tắt) ...あの<ruby>日<rt>ひ</rt></ruby>、ここに<ruby>来<rt>き</rt></ruby>た。<ruby>4月<rt>しがつ</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>して、<ruby>名前<rt>なまえ</rt></ruby>も<ruby>言<rt>い</rt></ruby>えなかった。<ruby>山田<rt>やまだ</rt></ruby>さんも、そのとき<ruby>まだ歩<rt>まだある</rt></ruby>けていた。<br>*(một mình) Ngày đó, em đến đây. Tháng 4, hồi hộp, không nói được cả tên mình. Ông Yamada lúc đó còn đi được.* |
| Yamamoto | (đi qua) グエンさん、どうしましたか？<br>*(Ngọc, sao vậy?)* |
| Ngọc | いいえ。ただ...7<ruby>年<rt>ねん</rt></ruby>って<ruby>長<rt>なが</rt></ruby>いようで、<ruby>短<rt>みじか</rt></ruby>いですね。<ruby>山田<rt>やまだ</rt></ruby>さんのケアプランを<ruby>作<rt>つく</rt></ruby>りながら、<ruby>自分<rt>じぶん</rt></ruby>がここで<ruby>変<rt>か</rt></ruby>わってきたのを<ruby>感<rt>かん</rt></ruby>じて。<br>*(Không. Chỉ là... 7 năm dài mà lại ngắn. Khi lập kế hoạch cho ông Yamada, em cảm nhận được mình đã thay đổi ở đây.)* |
| Yamamoto | <ruby>変<rt>か</rt></ruby>わりましたよ。でも<ruby>大切<rt>たいせつ</rt></ruby>なものは<ruby>変<rt>か</rt></ruby>わっていない。<ruby>利用者<rt>りようしゃ</rt></ruby>さんを<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えること。<br>*(Đã thay đổi rồi. Nhưng điều quan trọng không đổi. Đặt người dùng làm trung tâm.)* |
| Ngọc | はい。それは<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>から<ruby>変<rt>か</rt></ruby>わりません。<br>*(Vâng. Điều đó từ ngày đầu đến giờ không đổi.)* |

---

## Đọng lại chương 11

Vòng tròn gần 7 năm khép lại trong yên lặng: người Ngọc từng chăm sóc tay run khi gõ cửa phòng nay ký tên vào kế hoạch do chính Ngọc soạn. Ông Yamada tự bước ra phòng ăn với khung đi — không phô trương, không kịch tính, chỉ là một bước chân. Nhưng với Ngọc, bước chân đó là bằng chứng rằng ケアプラン không phải giấy tờ mà là bản vẽ của sự sống.

> Từ vựng & mẫu câu chương này: 実務研修・アセスメント・長期目標・短期目標・担当者会議・歩行器・給付管理・連携・設計図・要介護3・登録', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (832000012, 800000032, NULL, 'markdown_book', 'T12. Con đường mới (新たな道)', '# Sách điều dưỡng viên quốc gia · T12. Con đường mới (新たな道)

> **Mục tiêu nhân vật:** Tháng 3 năm 2033. Ngọc (gần 7 năm ở Nhật) tự mình tìm hiểu kỹ điều kiện 永住権 tại Cục Xuất nhập cảnh — biết mình cần thêm ~3 năm nữa để đủ 10 năm cư trú, đặt đó làm mục tiêu rõ ràng cho tương lai. Ngọc nhìn lại gần 7 năm từ TTS ngày đầu đến ケアマネ. Truyền lửa cho TTS Việt mới Linh và Tuấn. Kết thúc series bằng hơi ấm — không khoa trương, không sến.
>
> **Chú thích tác giả:** Điều kiện 永住権 nêu trong chương này đúng theo luật cư trú Nhật (cư trú liên tục ≥10 năm). Ngọc đến Nhật 4/2026, đến 3/2033 mới ~7 năm — chưa đủ điều kiện nộp đơn, nhưng đặt 永住 làm mục tiêu cụ thể cho năm 2036.

---

## Bối cảnh

Tháng 3 năm 2033. Hoa anh đào sắp nở. Ngọc một mình đến Cục Quản lý Xuất nhập cảnh Osaka để tìm hiểu điều kiện 永住権 — và nhận ra rõ: cần đủ 10 năm cư trú liên tục, mình mới gần 7 năm, còn ~3 năm nữa. Đặt mục tiêu cụ thể: nộp đơn năm 2036. Linh và Tuấn — hai TTS Việt Ngọc từng hướng dẫn — nay đã vững, sắp thi 介護福祉士. Ngọc đứng trước một chương mới: không biết tương lai sẽ thế nào, nhưng không còn sợ bước đi.

---

## Tình huống 1 — Cục Quản lý Xuất nhập cảnh Osaka · 9:30, tìm hiểu điều kiện 永住権

| Vai | Lời thoại |
|---|---|
| Nhân viên cục | <ruby>永住<rt>えいじゅう</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>についてのご<ruby>相談<rt>そうだん</rt></ruby>ですね。<ruby>継続<rt>けいぞく</rt></ruby><ruby>在留期間<rt>ざいりゅうきかん</rt></ruby>は10<ruby>年<rt>ねん</rt></ruby>、うち<ruby>就労<rt>しゅうろう</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby>は5<ruby>年以上<rt>ねんいじょう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は？<br>*(Hỏi về điều kiện vĩnh trú đúng không. Cần cư trú liên tục 10 năm, trong đó cư trú lao động trên 5 năm. Thời gian cư trú hiện tại là?)* |
| Ngọc | 2026<ruby>年<rt>ねん</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>から<ruby>在留<rt>ざいりゅう</rt></ruby>しています。もうすぐ7<ruby>年<rt>ねん</rt></ruby>になります。<br>*(Em cư trú từ tháng 4 năm 2026. Sắp được 7 năm rồi.)* |
| Nhân viên cục | そうですか。では<ruby>申請<rt>しんせい</rt></ruby>できるのは<ruby>2036年<rt>にせんさんじゅうろくねん</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>以降になります。<ruby>今<rt>いま</rt></ruby>から<ruby>税金<rt>ぜいきん</rt></ruby>・<ruby>年金<rt>ねんきん</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>をきれいに<ruby>保<rt>たも</rt></ruby>っておくといいですよ。<br>*(Vậy thì có thể nộp đơn từ tháng 4 năm 2036 trở đi. Từ bây giờ nên giữ hồ sơ thuế và lương hưu sạch sẽ là tốt.)* |
| Ngọc | <ruby>分<rt>わ</rt></ruby>かりました。あと3<ruby>年<rt>さんねん</rt></ruby>ですね。<ruby>準備<rt>じゅんび</rt></ruby>しておきます。ありがとうございます。<br>*(Vâng, em rõ. Còn 3 năm nữa nhỉ. Em sẽ chuẩn bị dần. Cảm ơn.)* |
| Ngọc | (độc thoại, ra ngoài) 3<ruby>年<rt>さんねん</rt></ruby>か。でも<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>見<rt>み</rt></ruby>えた。<ruby>目標<rt>もくひょう</rt></ruby>があるだけで<ruby>違<rt>ちが</rt></ruby>う。<br>*(độc thoại, ra ngoài) 3 năm nữa nhỉ. Nhưng đã thấy hướng rồi. Chỉ cần có mục tiêu là đã khác rồi.)* |

---

## Tình huống 2 — Ngoài tòa nhà cục · 10:15, sau khi tìm hiểu

| Vai | Lời thoại |
|---|---|
| Ngọc | (đứng ngoài, hít thở không khí buổi sáng) ...<ruby>すっきりした<rt>すっきりした</rt></ruby>。あと3<ruby>年<rt>さんねん</rt></ruby>って<ruby>分<rt>わ</rt></ruby>かって、かえって<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いた。<ruby>何年<rt>なんねん</rt></ruby>もかけてここまで<ruby>来<rt>き</rt></ruby>て、まだ<ruby>道<rt>みち</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>いている。<br>*(đứng ngoài, hít thở không khí buổi sáng) Nhẹ nhàng hơn. Biết còn 3 năm nữa xong lại thấy bình tĩnh hơn. Bao nhiêu năm mới đến đây, con đường vẫn còn tiếp tục.)* |
| Ngọc | <ruby>焦<rt>あせ</rt></ruby>らなくていい。7<ruby>年分<rt>ねんぶん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>は<ruby>ちゃんと積<rt>ちゃんとつ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>なってる。あと3<ruby>年<rt>さんねん</rt></ruby>で<ruby>申請<rt>しんせい</rt></ruby>できる。<br>*(Không cần vội. Gần 7 năm nỗ lực đã tích lũy rồi. Còn 3 năm nữa thì nộp được.)* |
| Ngọc | (cười nhẹ, nhìn trời) そうだね。<ruby>2036年<rt>にせんさんじゅうろくねん</rt></ruby>、<ruby>目標<rt>もくひょう</rt></ruby>ができた。でも、もう<ruby>怖<rt>こわ</rt></ruby>くない。<ruby>何<rt>なに</rt></ruby>がどうなっても、<ruby>私<rt>わたし</rt></ruby>にはケアマネの<ruby>仕事<rt>しごと</rt></ruby>がある。<ruby>利用者<rt>りようしゃ</rt></ruby>さんがいる。それで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Cười nhẹ, nhìn trời) Đúng. Năm 2036, có mục tiêu rồi. Nhưng em không còn sợ nữa. Dù kết quả thế nào, em có công việc ケアマネ. Có người dùng. Vậy là đủ rồi.)* |

---

## Tình huống 3 — Xe buýt về · 11:00, ký ức ùa về

| Vai | Lời thoại |
|---|---|
| Ngọc | (nhìn ra cửa sổ, tự nhủ) <ruby>最初<rt>さいしょ</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>た<ruby>日<rt>ひ</rt></ruby>。<ruby>飛行機<rt>ひこうき</rt></ruby>から<ruby>降<rt>お</rt></ruby>りたとき、<ruby>言葉<rt>ことば</rt></ruby>が<ruby>分<rt>わ</rt></ruby>からなくて、<ruby>全部<rt>ぜんぶ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きく<ruby>見<rt>み</rt></ruby>えた。<ruby>特養<rt>とくよう</rt></ruby>の<ruby>入口<rt>いりぐち</rt></ruby>で<ruby>立<rt>た</rt></ruby>ち<ruby>止<rt>と</rt></ruby>まって、<ruby>一歩<rt>いっぽ</rt></ruby>も<ruby>動<rt>うご</rt></ruby>けなかった。<br>*(nhìn ra cửa sổ, tự nhủ) Ngày đầu tiên đến Nhật. Bước xuống máy bay, không hiểu ngôn ngữ, mọi thứ đều to lớn. Đứng ở cổng vào 特養, không bước được nổi.* |
| Ngọc | <ruby>昔<rt>むかし</rt></ruby>のことを<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>している。<ruby>24歳<rt>にじゅうよんさい</rt></ruby>のとき、<ruby>何<rt>なに</rt></ruby>もできなくて<ruby>泣<rt>な</rt></ruby>いてた。<br>*(Đang nhớ lại chuyện ngày xưa. Hồi 24 tuổi, không làm được gì, cứ khóc.)* |
| Ngọc | <ruby>今<rt>いま</rt></ruby>は...ケアプランを<ruby>書<rt>か</rt></ruby>ける。(微笑む) それだけで<ruby>十分<rt>じゅうぶん</rt></ruby>だよ。<br>*(Bây giờ... em có thể viết ケアプラン. (mỉm cười) Chỉ vậy thôi là đủ rồi.)* |

---

## Tình huống 4 — Công viên gần nhà trọ · 11:30, hoa anh đào đầu tiên

| Vai | Lời thoại |
|---|---|
| Ngọc | (dừng lại nhìn một nhánh hoa nở sớm) あ...。<ruby>今年<rt>ことし</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>。<br>*(Ồ... Hoa anh đào đầu tiên của năm nay.)* |
| Ngọc | (tự nhủ) <ruby>7年前<rt>ななねんまえ</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かった。<ruby>今年<rt>ことし</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>は...きれい。<ruby>ちゃんと<rt>ちゃんと</rt></ruby>きれいって<ruby>思<rt>おも</rt></ruby>える。<br>*(tự nhủ) Hoa 7 năm trước làm em sợ. Hoa năm nay thì... đẹp. Em thật sự thấy là đẹp.)* |
| Ngọc | (nhìn bầu trời) <ruby>今日<rt>きょう</rt></ruby>は<ruby>いい日<rt>いいひ</rt></ruby>だ。<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>見<rt>み</rt></ruby>えた。あと3<ruby>年<rt>さんねん</rt></ruby>、<ruby>このまま<rt>このまま</rt></ruby><ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねる。<br>*(nhìn bầu trời) Hôm nay là ngày tốt. Đã thấy hướng đi. Còn 3 năm nữa, cứ tiếp tục tích lũy thế này.)* |

---

## Tình huống 5 — Nhà trọ · 12:30, Hương gọi điện mừng

| Vai | Lời thoại |
|---|---|
| Hương | (điện thoại) グエンさん！<ruby>入管<rt>にゅうかん</rt></ruby>から<ruby>帰<rt>かえ</rt></ruby>ってきたの？どうだった？<br>*(Chị Ngọc! Về từ cục xuất nhập cảnh chưa? Thế nào?)* |
| Ngọc | ハーさん、うん。あと3<ruby>年<rt>さんねん</rt></ruby>って<ruby>分<rt>わ</rt></ruby>かった。でも<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>見<rt>み</rt></ruby>えて、かえって<ruby>すっきりした<rt>すっきりした</rt></ruby>よ。<br>*(Hương ơi, ừ. Biết còn 3 năm nữa. Nhưng thấy hướng đi rồi, ngược lại thấy nhẹ nhàng hơn.)* |
| Hương | よかった。グエンさんらしいですね。<ruby>道<rt>みち</rt></ruby>が<ruby>見<rt>み</rt></ruby>えたら<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>く。<br>*(Tốt quá. Đúng tính chị Ngọc. Thấy đường đi là bình tĩnh.)* |
| Ngọc | <ruby>一人<rt>ひとり</rt></ruby>で<ruby>行<rt>い</rt></ruby>ってきたけど、<ruby>一人<rt>ひとり</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だったよ。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>確かめ<rt>たしかめ</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。それが<ruby>私<rt>わたし</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>った。<br>*(Đi một mình, nhưng một mình cũng ổn. Đi xác nhận mục tiêu của mình bằng chính mình. Em thấy đó là cách của mình.)* |
| Hương | グエンさん、すごいですね。<ruby>私<rt>わたし</rt></ruby>もいつかそうなれるかな。<br>*(Chị Ngọc giỏi thật. Em cũng có ngày làm được vậy không nhỉ.)* |
| Ngọc | なれますよ。ハーさんも、<ruby>着実<rt>ちゃくじつ</rt></ruby>に<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねてますから。<br>*(Được chứ. Hương cũng đang tích lũy chắc chắn rồi mà.)* |

---

## Tình huống 6 — Cơ sở Hidamari-en · 14:00, Linh và Tuấn ôn thi 介護福祉士

| Vai | Lời thoại |
|---|---|
| Linh | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>来月<rt>らいげつ</rt></ruby><ruby>介護福祉士<rt>かいごふくしし</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>なんですが、<ruby>実技<rt>じつぎ</rt></ruby>が<ruby>不安<rt>ふあん</rt></ruby>で。<br>*(Chị Ngọc, tháng sau thi 介護福祉士 mà em lo phần thực hành.)* |
| Ngọc | どの<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>ですか？<br>*(Phần nào em lo nhất?)* |
| Linh | <ruby>移乗介助<rt>いじょうかいじょ</rt></ruby>です。<ruby>声かけ<rt>こえかけ</rt></ruby>をしながらやると、うまくいかなくて。<br>*(Phần hỗ trợ chuyển người. Vừa lên tiếng vừa làm thì không thuần thục.)* |
| Ngọc | <ruby>声かけ<rt>こえかけ</rt></ruby>は<ruby>後付け<rt>あとづけ</rt></ruby>じゃなくて、<ruby>動作<rt>どうさ</rt></ruby>の<ruby>一部<rt>いちぶ</rt></ruby>として<ruby>考<rt>かんが</rt></ruby>えてみてください。「<ruby>今<rt>いま</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>に<ruby>傾<rt>かたむ</rt></ruby>きますね」と<ruby>言<rt>い</rt></ruby>いながら<ruby>動<rt>うご</rt></ruby>く。<ruby>言葉<rt>ことば</rt></ruby>と<ruby>体<rt>からだ</rt></ruby>を<ruby>同時<rt>どうじ</rt></ruby>に。<br>*(Hãy nghĩ lên tiếng không phải là thêm vào sau mà là một phần của động tác. Vừa nói "bây giờ nghiêng sang phải nhé" vừa làm. Lời nói và cơ thể cùng lúc.)* |
| Linh | あ、<ruby>同時<rt>どうじ</rt></ruby>に...。なるほど。<ruby>練習<rt>れんしゅう</rt></ruby>してみます。<br>*(À, cùng lúc... Ra thế. Em thử luyện vậy.)* |
| Ngọc | リンさんはきっと<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>にここに<ruby>来<rt>き</rt></ruby>た<ruby>日<rt>ひ</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べたら、リンさんは<ruby>全然<rt>ぜんぜん</rt></ruby>しっかりしています。<br>*(Linh nhất định ổn. So với ngày đầu chị đến đây, Linh vững chắc hơn nhiều rồi.)* |

---

## Tình huống 7 — Phòng họp · 15:00, Tuấn hỏi về tương lai

| Vai | Lời thoại |
|---|---|
| Tuấn | グエン<ruby>主任<rt>しゅにん</rt></ruby>、<ruby>介護福祉士<rt>かいごふくしし</rt></ruby>に<ruby>受<rt>う</rt></ruby>かったら、その<ruby>先<rt>さき</rt></ruby>はどうすればいいですか？<br>*(Chị Ngọc, nếu đỗ 介護福祉士 thì tiếp theo nên làm gì?)* |
| Ngọc | まず、しっかり<ruby>現場<rt>げんば</rt></ruby>で<ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>むこと。<ruby>資格<rt>しかく</rt></ruby>はスタートです。<ruby>道<rt>みち</rt></ruby>はリーダー、<ruby>主任<rt>しゅにん</rt></ruby>、そして<ruby>将来<rt>しょうらい</rt></ruby>ケアマネも<ruby>目指<rt>めざ</rt></ruby>せます。<br>*(Đầu tiên là tích lũy kinh nghiệm hiện trường chắc chắn. Chứng chỉ là điểm khởi đầu. Con đường là リーダー, 主任, và tương lai có thể nhắm đến ケアマネ.)* |
| Tuấn | ケアマネは<ruby>大変<rt>たいへん</rt></ruby>でしたか？<br>*(ケアマネ có vất vả không ạ?)* |
| Ngọc | (cười) <ruby>大変<rt>たいへん</rt></ruby>でした。でも、<ruby>大変<rt>たいへん</rt></ruby>な<ruby>分<rt>ぶん</rt></ruby>だけ<ruby>見<rt>み</rt></ruby>えてくるものがあります。チュアンさんも、<ruby>焦<rt>あせ</rt></ruby>らなくていい。<ruby>私<rt>わたし</rt></ruby>は7<ruby>年<rt>ねん</rt></ruby>かかりました。<br>*(Cười) Vất vả. Nhưng vất vả bao nhiêu thì thấy ra bấy nhiêu thứ. Tuấn không cần vội. Chị mất gần 7 năm.)* |
| Tuấn | 7<ruby>年<rt>ねん</rt></ruby>...。でも<ruby>諦<rt>あきら</rt></ruby>めなかったんですね。<br>*(7 năm... Nhưng chị không bỏ cuộc nhỉ.)* |
| Ngọc | <ruby>諦<rt>あきら</rt></ruby>めそうになった<ruby>時<rt>とき</rt></ruby>は<ruby>何度<rt>なんど</rt></ruby>もあったよ。でも、<ruby>利用者<rt>りようしゃ</rt></ruby>さんの<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>ると、やめられなかった。それだけです。<br>*(Lúc suýt bỏ cuộc cũng nhiều lần. Nhưng nhìn mặt người dùng là không bỏ được. Chỉ vậy thôi.)* |

---

## Tình huống 8 — Phòng 利用者 Yamada · 16:00, thăm ông Yamada buổi chiều

| Vai | Lời thoại |
|---|---|
| Ngọc | <ruby>山田<rt>やまだ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby>のリハビリはどうでしたか？<br>*(Ông Yamada, hôm nay phục hồi chức năng thế nào?)* |
| Ông Yamada | まあまあだよ。<ruby>食堂<rt>しょくどう</rt></ruby>まで<ruby>一人<rt>ひとり</rt></ruby>で<ruby>行<rt>い</rt></ruby>けた。<br>*(Tàm tạm. Tự đi ra phòng ăn được.)* |
| Ngọc | よかった。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつですね。<br>*(Tốt quá. Mỗi ngày một chút nhỉ.)* |
| Ông Yamada | グエン、<ruby>永住<rt>えいじゅう</rt></ruby>のこと、<ruby>調<rt>しら</rt></ruby>べに<ruby>行<rt>い</rt></ruby>ったのか？<br>*(Nguyên, đi tìm hiểu về vĩnh trú rồi hả?)* |
| Ngọc | (ngạc nhiên) え、ご<ruby>存知<rt>ぞんじ</rt></ruby>だったんですか？<ruby>山本<rt>やまもと</rt></ruby>さんから？<br>*(Ồ, ông biết rồi à? Từ chị Yamamoto à?)* |
| Ông Yamada | そうだよ。あと3<ruby>年<rt>さんねん</rt></ruby>か。でもここにいてくれよ。<ruby>待<rt>ま</rt></ruby>っとくから。<br>*(Đúng. Còn 3 năm à. Nhưng ở lại đây nhé. Ông chờ.)* |
| Ngọc | はい、ここにいます。<ruby>山田<rt>やまだ</rt></ruby>さんのケアプランも、これからも<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>作<rt>つく</rt></ruby>りますから。<br>*(Vâng, em ở đây. Kế hoạch của ông Yamada, từ nay trở đi em cũng tiếp tục cùng ông làm.)* |

---

## Tình huống 9 — Sảnh cơ sở · 17:30, hoa anh đào bắt đầu nụ ngoài cửa sổ

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、もうすぐ<ruby>桜<rt>さくら</rt></ruby>が<ruby>咲<rt>さ</rt></ruby>きそうですね。<br>*(Ngọc, sắp hoa anh đào nở rồi nhỉ.)* |
| Ngọc | はい。<ruby>7年前<rt>ななねんまえ</rt></ruby>も、<ruby>桜<rt>さくら</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>に<ruby>日本<rt>にほん</rt></ruby>に<ruby>来<rt>き</rt></ruby>ました。<ruby>あの日<rt>あのひ</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かった。<ruby>一人<rt>ひとり</rt></ruby>できれいって<ruby>言<rt>い</rt></ruby>える<ruby>余裕<rt>よゆう</rt></ruby>もなかった。<br>*(Vâng. 7 năm trước em cũng đến Nhật vào mùa hoa anh đào. Hoa hồi đó làm em sợ. Không có tâm trí để nói đẹp.)* |
| Yamamoto | <ruby>今年<rt>ことし</rt></ruby>の<ruby>桜<rt>さくら</rt></ruby>は？<br>*(Hoa năm nay thì sao?)* |
| Ngọc | ...きれいです。ちゃんときれいって<ruby>思<rt>おも</rt></ruby>える。<br>*(..Đẹp. Em thật sự thấy là đẹp.)* |
| Yamamoto | それでいいですよ。グエンさん。<br>*(Vậy là được rồi. Ngọc.)* |

---

## Tình huống 10 — Phòng nghỉ nhân viên · 18:00, Ngọc và Hương, khoảnh khắc nhỏ

| Vai | Lời thoại |
|---|---|
| Hương | グエンさん、<ruby>今日<rt>きょう</rt></ruby>、<ruby>永住権<rt>えいじゅうけん</rt></ruby>のこと<ruby>調<rt>しら</rt></ruby>べに<ruby>行<rt>い</rt></ruby>ったんですね。あと3<ruby>年<rt>さんねん</rt></ruby>ですか。<ruby>私<rt>わたし</rt></ruby>はまだ5<ruby>年<rt>ねん</rt></ruby>以上<ruby>先<rt>さき</rt></ruby>ですね。<br>*(Hôm nay chị đi tìm hiểu về vĩnh trú đúng không. Còn 3 năm nữa. Em còn phải hơn 5 năm nữa nhỉ.)* |
| Ngọc | ヒュオンさんも<ruby>着実<rt>ちゃくじつ</rt></ruby>に<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねてますよ。<ruby>記録<rt>きろく</rt></ruby>もしっかりしてるし。<ruby>先<rt>さき</rt></ruby>のことは<ruby>先<rt>さき</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えればいい。<br>*(Hương cũng đang tích lũy chắc chắn đấy. Hồ sơ cũng chắc. Chuyện tương lai thì nghĩ khi đến lúc cũng được.)* |
| Hương | でも<ruby>長<rt>なが</rt></ruby>い<ruby>道<rt>みち</rt></ruby>のりですよね。<ruby>不安<rt>ふあん</rt></ruby>じゃないですか？<br>*(Nhưng con đường còn dài nhỉ. Chị không lo à?)* |
| Ngọc | <ruby>不安<rt>ふあん</rt></ruby>はある。でも<ruby>目標<rt>もくひょう</rt></ruby>が<ruby>見<rt>み</rt></ruby>えた。それだけで<ruby>違<rt>ちが</rt></ruby>う。<ruby>その間<rt>そのあいだ</rt></ruby>に、また<ruby>利用者<rt>りようしゃ</rt></ruby>さんのケアプランを<ruby>一枚<rt>いちまい</rt></ruby><ruby>書<rt>か</rt></ruby>く。それが<ruby>今<rt>いま</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>。<br>*(Lo thì có. Nhưng đã thấy mục tiêu rồi. Chỉ vậy thôi là đã khác. Trong lúc chờ, lại viết thêm một bản ケアプラン cho người dùng. Đó là công việc của em bây giờ.)* |
| Hương | グエンさん、ブレないですね。<br>*(Chị Ngọc không bao giờ lung lay nhỉ.)* |
| Ngọc | (cười) <ruby>結構<rt>けっこう</rt></ruby>ブレてますよ。ただ<ruby>戻<rt>もど</rt></ruby>る<ruby>場所<rt>ばしょ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かるようになっただけ。<br>*(Cười) Em hay lung lay lắm. Chỉ là biết được nơi để quay về thôi.)* |

---

## Tình huống 11 — Nhà trọ · 21:00, Ngọc viết nhật ký

| Vai | Lời thoại |
|---|---|
| Ngọc | (viết nhật ký, tiếng Nhật) 2033<ruby>年<rt>ねん</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>。<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>行<rt>い</rt></ruby>ってきた。あと3<ruby>年<rt>さんねん</rt></ruby>で<ruby>永住権<rt>えいじゅうけん</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>ができる。<ruby>遠<rt>とお</rt></ruby>いようで、<ruby>近<rt>ちか</rt></ruby>い。<br>*(viết nhật ký, tiếng Nhật) Tháng 3 năm 2033. Đã đến cục xuất nhập cảnh rồi. Còn 3 năm nữa là nộp đơn vĩnh trú được. Tưởng xa mà gần.)* |
| Ngọc | <ruby>24歳<rt>にじゅうよんさい</rt></ruby>で<ruby>来<rt>き</rt></ruby>た<ruby>私<rt>わたし</rt></ruby>は、<ruby>今<rt>いま</rt></ruby>31<ruby>歳<rt>さい</rt></ruby>だ。<ruby>技能実習生<rt>ぎのうじっしゅうせい</rt></ruby>から<ruby>介護主任<rt>かいごしゅにん</rt></ruby>、そしてケアマネ。<ruby>道<rt>みち</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>いている。<br>*(24 tuổi đến Nhật, giờ 31 tuổi. Từ thực tập sinh kỹ năng đến trưởng nhóm điều dưỡng, rồi ケアマネ. Con đường vẫn tiếp tục.)* |
| Ngọc | (độc thoại) <ruby>両方<rt>りょうほう</rt></ruby><ruby>話<rt>はな</rt></ruby>せるって、<ruby>宝物<rt>たからもの</rt></ruby>だ。<ruby>日本語<rt>にほんご</rt></ruby>もベトナム<ruby>語<rt>ご</rt></ruby>も、<ruby>どちらも忘れない<rt>どちらもわすれない</rt></ruby>。<ruby>利用者<rt>りようしゃ</rt></ruby>さんと<ruby>話<rt>はな</rt></ruby>すとき、ベトナムの<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>指導<rt>しどう</rt></ruby>するとき、<ruby>両方<rt>りょうほう</rt></ruby>が<ruby>武器<rt>ぶき</rt></ruby>になる。<br>*(độc thoại) Nói được cả hai ngôn ngữ là kho báu. Cả tiếng Nhật lẫn tiếng Việt, không quên bên nào. Khi nói chuyện với người dùng, khi hướng dẫn đàn em Việt, cả hai đều là vũ khí.)* |

---

## Tình huống 12 — Tiếng Việt · 22:00, gọi điện cho mẹ ở Việt Nam — kết series

> Scene tiếng Việt — kết thúc series bằng hơi ấm gia đình xuyên biên giới.

| Vai | Lời thoại |
|---|---|
| Ngọc | (tiếng Việt, gọi điện) Mẹ ơi, con gọi được không? |
| Mẹ | (tiếng Việt) Được con. Sao hôm nay gọi muộn vậy? |
| Ngọc | (tiếng Việt) Con vừa ôn lại hồ sơ thôi mẹ. Mẹ ơi, hôm nay con một mình ra cục xuất nhập cảnh tìm hiểu về vĩnh trú. Biết rồi mẹ — còn 3 năm nữa con mới đủ điều kiện nộp. |
| Mẹ | (tiếng Việt, im lặng một giây) 3 năm nữa... Vậy thì con tính ở lại Nhật lâu dài à? |
| Ngọc | (tiếng Việt, giọng nhẹ) Vâng mẹ. Con về thăm mẹ, nhưng Nhật là nhà con rồi. Công việc ở đây, đồng nghiệp ở đây. Con muốn mẹ hiểu. |
| Mẹ | (tiếng Việt, giọng ấm) Mẹ hiểu con. Mẹ chỉ nhớ con thôi. |
| Ngọc | (tiếng Việt) Con cũng nhớ mẹ. Con nhớ mẹ mỗi ngày. Mẹ với em ở nhà có khỏe không? |
| Mẹ | (tiếng Việt, giọng sáng lên) Khỏe con. Em đang học đại học, bận lắm. Mẹ thì ngày nào cũng mong con. |
| Ngọc | (tiếng Việt) Mẹ, năm 2036 con mới đủ 10 năm để nộp đơn vĩnh trú. Còn chờ thêm nữa. Nhưng... con không sợ nữa. Con 24 tuổi sang đây sợ lắm. Bây giờ con 31 tuổi, con thấy mình có chỗ đứng rồi. |
| Mẹ | (tiếng Việt, giọng ấm và nhẹ) Con ơi... mẹ tự hào lắm. Cứ sống tốt là được. |
| Ngọc | (tiếng Việt) Vâng ạ. Con cảm ơn mẹ đã không giữ con lại hồi đó. |
| Mẹ | (tiếng Việt) Mẹ giữ sao được. Con đã muốn đi rồi. (cười nhẹ) |
| Ngọc | (tiếng Việt, cũng cười) Con cúp máy đây mẹ. Con thương mẹ. |
| Mẹ | (tiếng Việt) Mẹ thương con. Giữ gìn sức khoẻ. Hôm nào về thăm mẹ nhé. |

---

## Đọng lại chương 12 — Kết series

Tháng 3, hoa anh đào còn là nụ. 永住権 vẫn còn là mục tiêu 3 năm nữa — Ngọc biết điều kiện, biết con đường, chưa cần vội. Không có điểm kết thúc tươi đẹp hoàn hảo, không có lời cảm ơn hoành tráng — chỉ có một người phụ nữ 31 tuổi đứng trong sảnh quen thuộc, nhìn ra nụ hoa chưa nở, và biết rằng mình không còn sợ bước đi nữa.

Linh và Tuấn đang ôn thi 介護福祉士. Ông Yamada tự bước ra phòng ăn mỗi ngày. Yamamoto vẫn nói câu cũ: "có gì không hiểu cứ hỏi." Mẹ ở Cần Thơ chờ con gái về thăm.

Con đường mới không có bảng hiệu. Nhưng Ngọc biết mình đang đi.

> Từ vựng & mẫu câu chương này: 永住権・継続在留・就労在留・在留カード・桜・宝物・役に立てる・諦めない・戻る場所・目標・着実に

---

*Sách 32 kết thúc. Series Ngọc — 6 sách (27→32) — kết thúc.*', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
