# Sách kỹ sư cầu nối & khởi nghiệp · T5. Ra mắt Hizashi v2.0 đa ngôn ngữ (v2.0ローンチ)

> **Mục tiêu nhân vật:** Đại 26 tuổi (8/2031), CEO Hizashi. Học mẫu hội thoại tiếng Nhật của founder ngày ra mắt sản phẩm đa khu vực: (1) chỉ huy team trong war room bằng kính ngữ vừa phải, (2) báo cáo số liệu live launch với khách hàng/đối tác (3) trả lời phỏng vấn báo chí tiếng Nhật, (4) bàn giao công việc với đồng nghiệp Nhật khi gấp, (5) chào hỏi PR/influencer Nhật qua LINE, (6) phát biểu trước team khi đạt cột mốc.

---

## Bối cảnh

8/2031, Osaka. Hizashi v2.0 ra mắt 1/8 — multi-language (KR+ZH+VN+JP+EN), 3 AWS regions (Tokyo+Seoul+Singapore). Team 5 người: Đại, Tuấn (CTO), Aiko (Design), Tanaka (BE engineer cũ Mercari), Sakura (i18n designer). Mai 22 tuần thai bé Đông, Hana sắp 3 tuổi. PR vòng 2: TechCrunch JP + Platum KR + 36Kr ZH. Chương này tập trung mẫu câu **chỉ huy bằng JP keigo trong launch day** + báo cáo số liệu + giao tiếp báo chí.

---

## Tình huống 1 — WeWork war room · 1/8/2031 9:00, mở đầu standup launch day

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はv2.0ローンチの<ruby>当日<rt>とうじつ</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người chào buổi sáng. Hôm nay là ngày ra mắt v2.0. Mong các bạn giúp đỡ.)* |
| Tanaka | おはようございます。AWS Tokyo・Seoul・Singapore、<ruby>3<rt>さん</rt></ruby>リージョンとも<ruby>準備完了<rt>じゅんびかんりょう</rt></ruby>です。<br>*(Chào buổi sáng. AWS 3 region đã sẵn sàng.)* |
| Sakura | <ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>中国語<rt>ちゅうごくご</rt></ruby>のランディングページ、<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>にデプロイ<ruby>済<rt>ず</rt></ruby>みです。<br>*(Landing page KR và ZH đã deploy lên production.)* |
| Aiko | <ruby>韓国<rt>かんこく</rt></ruby>と<ruby>中国<rt>ちゅうごく</rt></ruby>のインフルエンサー<ruby>8名<rt>はちめい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>10時<rt>じゅうじ</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>投稿<rt>とうこう</rt></ruby>でスケジュール<ruby>確定<rt>かくてい</rt></ruby>しています。<br>*(8 influencer KR+ZH, đã chốt lịch đăng đồng loạt 10h hôm nay.)* |
| Tuấn | (VN) Anh em, T-1h. Cà phê thêm cho ai cần. |
| Đại | では、<ruby>10時<rt>じゅうじ</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>デプロイの<ruby>合図<rt>あいず</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>出<rt>だ</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy hiệu lệnh deploy production 10h tôi sẽ ra. Nhờ mọi người.)* |

---

## Tình huống 2 — War room · 9:55, hỏi lại khi chưa hiểu term Tanaka dùng

| Vai | Lời thoại |
|---|---|
| Tanaka | ダイさん、<ruby>念<rt>ねん</rt></ruby>のため、ローンチ<ruby>直後<rt>ちょくご</rt></ruby>は「カナリアデプロイ」で<ruby>10<rt>じゅっ</rt></ruby>%トラフィックから<ruby>始<rt>はじ</rt></ruby>めます。よろしいですか?<br>*(Để chắc, ngay sau launch ta dùng "canary deploy" bắt đầu từ 10% traffic. Được không?)* |
| Đại | すみません、「カナリアデプロイ」というのは、もう<ruby>一度<rt>いちど</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>していただけますか?<br>*(Xin lỗi, "canary deploy" ấy, anh giải thích lại giúp em được không?)* |
| Tanaka | はい。<ruby>一気<rt>いっき</rt></ruby>に<ruby>100<rt>ひゃく</rt></ruby>%<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えるのではなく、まず<ruby>10<rt>じゅっ</rt></ruby>%のユーザーに<ruby>新<rt>あたら</rt></ruby>しいバージョンを<ruby>見<rt>み</rt></ruby>せて、<ruby>異常<rt>いじょう</rt></ruby>がなければ<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げていく<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Không chuyển 100% ngay, mà cho 10% user thấy bản mới trước, nếu không bất thường thì nâng dần.)* |
| Đại | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。それでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ra vậy, em hiểu rồi. Cứ vậy nhờ anh.)* |
| Tanaka | <ruby>異常<rt>いじょう</rt></ruby>を<ruby>検知<rt>けんち</rt></ruby>したら、すぐ<ruby>共有<rt>きょうゆう</rt></ruby>いたします。<br>*(Phát hiện bất thường tôi sẽ chia sẻ ngay.)* |

---

## Tình huống 3 — War room · 10:00, Đại ra hiệu lệnh deploy

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>時間<rt>じかん</rt></ruby>です。<ruby>田中<rt>たなか</rt></ruby>さん、デプロイをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đến giờ rồi. Anh Tanaka, nhờ anh deploy.)* |
| Tanaka | <ruby>承知<rt>しょうち</rt></ruby>いたしました。デプロイ<ruby>開始<rt>かいし</rt></ruby>します。…<ruby>本番<rt>ほんばん</rt></ruby>、ライブです。<br>*(Vâng. Bắt đầu deploy... Production đã live.)* |
| Sakura | <ruby>韓国語<rt>かんこくご</rt></ruby>UI、<ruby>表示<rt>ひょうじ</rt></ruby>OKです!<br>*(UI KR hiển thị OK!)* |
| Aiko | インフルエンサーの<ruby>投稿<rt>とうこう</rt></ruby>、<ruby>韓国<rt>かんこく</rt></ruby><ruby>側<rt>がわ</rt></ruby>が<ruby>5本<rt>ごほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がりました!<br>*(Influencer KR đã post đồng loạt 5 bài!)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまです。これからの<ruby>1時間<rt>いちじかん</rt></ruby>がメトリクスの<ruby>勝負<rt>しょうぶ</rt></ruby>です。<br>*(Mọi người cảm ơn nhé. 1 tiếng tới là cuộc chiến metric.)* |

---

## Tình huống 4 — War room · 10:45, báo cáo số liệu giờ đầu

| Vai | Lời thoại |
|---|---|
| Tanaka | ダイさん、<ruby>1時間目<rt>いちじかんめ</rt></ruby>の<ruby>速報<rt>そくほう</rt></ruby>です。<br>*(Đại-san, báo cáo nhanh giờ đầu.)* |
| Tanaka | <ruby>韓国<rt>かんこく</rt></ruby>リージョン、<ruby>1時間<rt>いちじかん</rt></ruby>で<ruby>850<rt>はっぴゃくごじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>のサインアップ。<ruby>中国<rt>ちゅうごく</rt></ruby>リージョン<ruby>620<rt>ろっぴゃくにじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>、<ruby>日本<rt>にほん</rt></ruby>とベトナムで<ruby>1,200<rt>せんにひゃく</rt></ruby><ruby>件<rt>けん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>2,670<rt>にせんろっぴゃくななじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>です。<br>*(KR 850 sign-up/h, ZH 620, JP+VN 1,200. Tổng 2,670.)* |
| Đại | <ruby>2,670<rt>にせんろっぴゃくななじゅう</rt></ruby>?v1.0ローンチの<ruby>4倍<rt>よんばい</rt></ruby>です!<br>*(2,670? Gấp 4 lần launch v1.0!)* |
| Tanaka | サーバーCPU<ruby>75<rt>ななじゅうご</rt></ruby>%、オートスケールが<ruby>稼働中<rt>かどうちゅう</rt></ruby>です。<ruby>遅延<rt>ちえん</rt></ruby>p95は<ruby>480<rt>よんひゃくはちじゅう</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>、<ruby>許容範囲内<rt>きょようはんいない</rt></ruby>です。<br>*(CPU 75%, auto-scale chạy. Latency p95 480ms, trong ngưỡng cho phép.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしい!みなさん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Tuyệt vời! Mọi người, cảm ơn thật sự.)* |

---

## Tình huống 5 — Slack #hizashi-press · 11:30, LINE cảm ơn phóng viên TechCrunch JP

*Đại nhắn LINE riêng cho Mori-san phóng viên TechCrunch JP đã viết bài launch.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>森<rt>もり</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はv2.0の<ruby>記事<rt>きじ</rt></ruby>を<ruby>掲載<rt>けいさい</rt></ruby>していただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Mori-san, hôm nay cảm ơn anh đã đăng bài về v2.0.)* |
| Mori-san | ダイさん、こちらこそ!<ruby>多言語展開<rt>たげんごてんかい</rt></ruby>、<ruby>面白<rt>おもしろ</rt></ruby>いストーリーでした。<ruby>1時間目<rt>いちじかんめ</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>、いかがでしたか?<br>*(Đại-san, không có gì! Câu chuyện đa ngôn ngữ thú vị. Số liệu giờ đầu thế nào?)* |
| Đại | <ruby>2,670<rt>にせんろっぴゃくななじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>のサインアップで、v1.0の<ruby>4倍<rt>よんばい</rt></ruby>でした。<br>*(2,670 sign-up, gấp 4 lần v1.0.)* |
| Mori-san | すごいですね!<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>1週間<rt>いっしゅうかん</rt></ruby>レビュー<ruby>記事<rt>きじ</rt></ruby>のために<ruby>追加取材<rt>ついかしゅざい</rt></ruby>させていただけますか?<br>*(Tuyệt! Tuần sau cho tôi phỏng vấn thêm cho bài review 1 tuần được không?)* |
| Đại | <ruby>喜<rt>よろこ</rt></ruby>んで!<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby>はいかがでしょうか?<br>*(Hân hạnh! Thứ Hai tuần sau 14h được không ạ?)* |
| Mori-san | <ruby>了解<rt>りょうかい</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(OK, nhờ anh.)* |

---

## Tình huống 6 — WeWork bếp nhỏ · 12:30, trưa Đại + Tuấn xả áp lực

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Em ơi, ăn tạm cái burger này đi. Em không ăn từ sáng. |
| Đại | (VN) Anh ơi, em hơi run tay. Tự nhiên thấy không thật. |
| Tuấn | (VN) Thật chứ. 2,670 sign-up/h là số liệu thật. Em hít thở đi. |
| Đại | (VN) Em sợ nhất cái lúc Stripe thanh toán Won KR còn chưa xong. Lỡ user KR thanh toán không được thì sao? |
| Tuấn | (VN) Đã có phương án dự phòng — fallback sang Stripe USD, user chọn được. Sakura đã viết câu thông báo tiếng Hàn cho user rồi. |
| Đại | (VN) Tốt. Cảm ơn anh. Em chiều quay lại JP mode. |
| Tuấn | (VN) Ừ. Lát họp 14h em vào lead lại nhé. Anh hỗ trợ phía sau. |

---

## Tình huống 7 — War room · 14:00, debrief vấn đề + giao việc keigo

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>午前中<rt>ごぜんちゅう</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>3<rt>みっ</rt></ruby>つ<ruby>課題<rt>かだい</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<br>*(Mọi người sáng nay cảm ơn nhé. Cho phép tôi chia sẻ 3 vấn đề.)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、iOS<ruby>16<rt>じゅうろく</rt></ruby>で<ruby>韓国語<rt>かんこくご</rt></ruby>の<ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>崩<rt>くず</rt></ruby>れる<ruby>不具合<rt>ふぐあい</rt></ruby>。<ruby>桜<rt>さくら</rt></ruby>さん、<ruby>対応<rt>たいおう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Thứ nhất, lỗi hiển thị tiếng Hàn vỡ trên iOS 16. Sakura-san xử lý giúp được không?)* |
| Sakura | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今日中<rt>きょうじゅう</rt></ruby>にホットフィックスを<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng. Trong hôm nay em sẽ ra hotfix.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、Stripeの<ruby>韓国<rt>かんこく</rt></ruby>ウォン<ruby>決済<rt>けっさい</rt></ruby>がまだ<ruby>有効<rt>ゆうこう</rt></ruby>になっていません。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>明日<rt>あす</rt></ruby>までに<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Thứ hai, Stripe thanh toán Won KR chưa kích hoạt. Tanaka-san, đến mai xử lý được không?)* |
| Tanaka | <ruby>明日<rt>あす</rt></ruby><ruby>15時<rt>じゅうごじ</rt></ruby>までには<ruby>確実<rt>かくじつ</rt></ruby>にデプロイいたします。<br>*(Mai chậm nhất 15h chắc chắn deploy.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>中国語<rt>ちゅうごくご</rt></ruby>の<ruby>簡体<rt>かんたい</rt></ruby>・<ruby>繁体<rt>はんたい</rt></ruby>トグルが<ruby>未実装<rt>みじっそう</rt></ruby>です。これはv2.1で<ruby>対応<rt>たいおう</rt></ruby>でよろしいですか?<br>*(Thứ ba, toggle giản thể/phồn thể tiếng Trung chưa làm. Để v2.1 được không?)* |
| Aiko | はい、ユーザーからの<ruby>声<rt>こえ</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めてから<ruby>判断<rt>はんだん</rt></ruby>しましょう。<br>*(Vâng, gom phản hồi user rồi quyết định.)* |

---

## Tình huống 8 — Phỏng vấn online · 16:00, trả lời phóng viên Nikkei XTECH

| Vai | Lời thoại |
|---|---|
| Phóng viên Itou | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<ruby>日経<rt>にっけい</rt></ruby>クロステックの<ruby>伊藤<rt>いとう</rt></ruby>です。<br>*(Hôm nay cảm ơn anh dành thời gian. Tôi là Itou, Nikkei XTECH.)* |
| Đại | <ruby>伊藤<rt>いとう</rt></ruby>さん、こちらこそありがとうございます。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Itou-san, em cũng cảm ơn. Tôi là Nguyễn Đại.)* |
| Itou | <ruby>多言語展開<rt>たげんごてんかい</rt></ruby>に<ruby>踏<rt>ふ</rt></ruby>み<ruby>切<rt>き</rt></ruby>った<ruby>理由<rt>りゆう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho tôi biết lý do quyết định mở đa ngôn ngữ.)* |
| Đại | はい。<ruby>日本語学習者<rt>にほんごがくしゅうしゃ</rt></ruby>は<ruby>世界<rt>せかい</rt></ruby>に<ruby>500万人<rt>ごひゃくまんにん</rt></ruby>いますが、<ruby>母国語<rt>ぼこくご</rt></ruby>で<ruby>学<rt>まな</rt></ruby>べるアプリは<ruby>少<rt>すく</rt></ruby>ないんです。<ruby>韓国<rt>かんこく</rt></ruby>と<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>需要<rt>じゅよう</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きいと<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Vâng. Trên thế giới có 5 triệu người học JP, nhưng ít app học bằng tiếng mẹ đẻ. Tôi đánh giá nhu cầu KR và ZH đặc biệt lớn.)* |
| Itou | <ruby>競合<rt>きょうごう</rt></ruby>であるDuolingoとの<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なに</rt></ruby>でしょうか?<br>*(Khác Duolingo ở điểm nào?)* |
| Đại | Duolingoは<ruby>汎用的<rt>はんようてき</rt></ruby>ですが、Hizashiは<ruby>日本語<rt>にほんご</rt></ruby><ruby>特化<rt>とっか</rt></ruby>で、<ruby>漢字<rt>かんじ</rt></ruby>・<ruby>敬語<rt>けいご</rt></ruby>・ビジネス<ruby>会話<rt>かいわ</rt></ruby>まで<ruby>深<rt>ふか</rt></ruby>く<ruby>扱<rt>あつか</rt></ruby>います。これが<ruby>差別化<rt>さべつか</rt></ruby>ポイントです。<br>*(Duolingo phổ thông, còn Hizashi chuyên JP, xử lý sâu kanji-keigo-hội thoại business. Đó là điểm khác biệt.)* |
| Itou | なるほど。<ruby>記事<rt>きじ</rt></ruby>は<ruby>明日<rt>あす</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Ra vậy. Bài viết sẽ đăng sáng mai.)* |
| Đại | ありがとうございます。<ruby>楽<rt>たの</rt></ruby>しみにしております。<br>*(Cảm ơn anh. Em rất mong chờ.)* |

---

## Tình huống 9 — Văn phòng · 17:30, Đại cảm ơn Tanaka — sempai làm mẫu keigo

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいですか?<br>*(Tanaka-san, anh có chút thời gian được không?)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>運用対応<rt>うんようたいおう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。メルカリ<ruby>時代<rt>じだい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>が<ruby>活<rt>い</rt></ruby>きていますね。<br>*(Hôm nay anh xử lý vận hành thực sự giúp em rất nhiều. Kinh nghiệm thời Mercari của anh phát huy nhỉ.)* |
| Tanaka | いえいえ、<ruby>当然<rt>とうぜん</rt></ruby>のことです。それより、ダイさんの<ruby>判断<rt>はんだん</rt></ruby>が<ruby>速<rt>はや</rt></ruby>かったので<ruby>動<rt>うご</rt></ruby>きやすかったです。<br>*(Không có gì, đương nhiên thôi. Hơn nữa Đại-san ra quyết định nhanh nên tôi dễ làm việc.)* |
| Đại | <ruby>今後<rt>こんご</rt></ruby>、<ruby>運用面<rt>うんようめん</rt></ruby>でアドバイスをいただきたいのですが、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>に<ruby>1on1<rt>ワンオンワン</rt></ruby>を<ruby>設定<rt>せってい</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Tôi muốn xin ý kiến anh về phía vận hành về sau, đặt 1on1 thứ Sáu hàng tuần được không?)* |
| Tanaka | もちろんです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tất nhiên. Nhờ Đại-san.)* |

---

## Tình huống 10 — Online · 19:00, gọi Mai về sớm

| Vai | Lời thoại |
|---|---|
| Đại | (VN, video call) Em ơi! Em với Hana sao rồi? |
| Mai | (VN) Hana đang ăn tối, em mới đi khám 22w về. Bé Đông khoẻ. Anh thì sao? |
| Đại | (VN) Launch ngon em ạ. 2670 sign-up giờ đầu, gấp 4 lần v1.0. Báo Nikkei phỏng vấn xong. |
| Mai | (VN) Trời ơi! Vợ tự hào quá. Anh ăn chưa? |
| Đại | (VN) Trưa Tuấn nhét cho em cái burger. Em về 22h, không kịp ăn tối với hai mẹ con. |
| Mai | (VN) Em giữ phần cơm cho. Anh nhớ uống nước. Đừng để dehydrate như launch v1.0. |
| Đại | (VN) Nhớ rồi. Cảm ơn em. Bảo Hana là bố yêu nhé. |
| Mai | (VN) Hana ơi! Bố nói yêu con! |
| Hana | (VN, xa máy) Yêu bố! Bố Hizashi! |

---

## Tình huống 11 — LINE · 21:00, cảm ơn 8 influencer KR+ZH

*Đại gửi LINE chung cho group 8 influencer + Aiko + Sakura.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さま、<ruby>本日<rt>ほんじつ</rt></ruby>はHizashi v2.0の<ruby>投稿<rt>とうこう</rt></ruby>を<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Mọi người, hôm nay thực sự cảm ơn đã đăng bài Hizashi v2.0.)* |
| Đại | <ruby>韓国<rt>かんこく</rt></ruby>から<ruby>1,847<rt>せんはっぴゃくよんじゅうなな</rt></ruby><ruby>件<rt>けん</rt></ruby>、<ruby>中国<rt>ちゅうごく</rt></ruby>から<ruby>1,234<rt>せんにひゃくさんじゅうよん</rt></ruby><ruby>件<rt>けん</rt></ruby>のサインアップをいただきました。<ruby>皆<rt>みな</rt></ruby>さまの<ruby>力<rt>ちから</rt></ruby>のおかげです。<br>*(KR 1,847, ZH 1,234 sign-up. Nhờ sức của mọi người.)* |
| Influencer Min-jee (KR) | (KR→JP) ダイさん!こちらこそありがとうございます。コメント<ruby>欄<rt>らん</rt></ruby>でファンが<ruby>大盛<rt>おおも</rt></ruby>り<ruby>上<rt>あ</rt></ruby>がりでした!<br>*(Đại-san, tôi cũng cảm ơn. Fan trên comment hào hứng lắm!)* |
| Influencer Wei (ZH) | (ZH→JP) <ruby>来月<rt>らいげつ</rt></ruby>もコラボ<ruby>続<rt>つづ</rt></ruby>けたいです!<br>*(Tháng sau muốn collab tiếp!)* |
| Đại | ぜひ!<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>個別<rt>こべつ</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Rất muốn! Tuần sau cho tôi trao đổi riêng từng người.)* |

---

## Tình huống 12 — Office · 22:30, cảm ơn team trước khi về

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>話<rt>はな</rt></ruby>させてください。<br>*(Mọi người hôm nay thực sự vất vả rồi. Cho phép tôi nói một chút.)* |
| Đại | <ruby>3年前<rt>さんねんまえ</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby><ruby>研<rt>けん</rt></ruby>で<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>書<rt>か</rt></ruby>いていた<ruby>私<rt>わたし</rt></ruby>が、<ruby>今日<rt>きょう</rt></ruby>このようなチームと<ruby>多言語<rt>たげんご</rt></ruby><ruby>製品<rt>せいひん</rt></ruby>をローンチできたこと、<ruby>夢<rt>ゆめ</rt></ruby>のようです。<br>*(3 năm trước tôi viết luận văn ở Inoue lab, hôm nay được launch sản phẩm đa ngôn ngữ cùng team như thế này, như giấc mơ.)* |
| Đại | <ruby>桜<rt>さくら</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>愛子<rt>あいこ</rt></ruby>さん、トゥアンさん、<ruby>皆<rt>みな</rt></ruby>さんがいなければ<ruby>今日<rt>きょう</rt></ruby>はありませんでした。ありがとうございます。<br>*(Sakura-san, Tanaka-san, Aiko-san, Tuấn-san, không có mọi người thì không có hôm nay. Cảm ơn.)* |
| Aiko | (mắt rưng rưng) ダイさん…こちらこそです。<br>*(Đại-san... em cũng cảm ơn.)* |
| Tanaka | お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Được giúp ích là vinh dự.)* |
| Sakura | <ruby>来週<rt>らいしゅう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Tuần sau cũng nhờ ạ!)* |
| Đại | みなさん、ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<ruby>月曜<rt>げつよう</rt></ruby>また<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Mọi người nghỉ ngơi nhé. Thứ Hai gặp lại.)* |

---

## Tình huống 13 — Tiệc nhỏ sinh nhật Hana · 5/8/2031 18:00 nhà Senri-chuo

*Tony+Yumi từ Aichi xuống. Doraemon cake. Hana đúng 3 tuổi.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben, đưa cake) ハナちゃん!お<ruby>誕生日<rt>たんじょうび</rt></ruby>おめでとうやで!<ruby>3歳<rt>さんさい</rt></ruby>になったんやな!<br>*(Hana, chúc mừng sinh nhật nhé! 3 tuổi rồi đó!)* |
| Hana | おじいちゃん!ありがとう!<br>*(Ông ơi! Cảm ơn ông!)* |
| Yumi | (đưa hộp quà) ハナちゃん、これドラえもんの<ruby>絵本<rt>えほん</rt></ruby>。<br>*(Hana, đây là sách tranh Doraemon nhé.)* |
| Hana | わぁ!ありがとうおばあちゃん!<br>*(Wow! Cảm ơn bà!)* |
| Mai | (VN, bụng to bế Hana) Hana ơi, con ước gì nào? |
| Hana | (suy nghĩ) Hana ước... em Đông khoẻ! Em Đông ra sớm! |
| Đại | (VN, ôm Hana + Mai) Con biết quan tâm em rồi. Bố mẹ tự hào. |
| Tony | (Osaka-ben) ハナはもうすぐお<ruby>姉<rt>ねえ</rt></ruby>ちゃんやな!えらいで!<br>*(Hana sắp làm chị rồi nhỉ! Giỏi lắm!)* |
| Hana | (cười) <ruby>私<rt>わたし</rt></ruby>、お<ruby>姉<rt>ねえ</rt></ruby>ちゃんになる!<br>*(Con sẽ làm chị!)* |

---

## Tình huống 14 — Cuối tuần 1 v2.0 standup · 8/8 sáng

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>1週間<rt>いっしゅうかん</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りです。<br>*(Mọi người chào buổi sáng. Tổng kết 1 tuần.)* |
| Đại | <ruby>総<rt>そう</rt></ruby>サインアップ<ruby>8,200<rt>はっせんにひゃく</rt></ruby><ruby>件<rt>けん</rt></ruby>、v1.0<ruby>初週<rt>しょしゅう</rt></ruby>の<ruby>3.2倍<rt>さんてんにばい</rt></ruby>。<ruby>有料転換<rt>ゆうりょうてんかん</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby>%、MRRが<ruby>250万<rt>にひゃくごじゅうまん</rt></ruby><ruby>円<rt>えん</rt></ruby>から<ruby>427万<rt>よんひゃくにじゅうななまん</rt></ruby><ruby>円<rt>えん</rt></ruby>へ<ruby>上昇<rt>じょうしょう</rt></ruby>しました。<br>*(Tổng sign-up 8,200, gấp 3.2 lần tuần đầu v1.0. Chuyển đổi trả phí 22%, MRR từ 2.5 triệu lên 4.27 triệu yên.)* |
| Tuấn | (JP) <ruby>韓国市場<rt>かんこくしじょう</rt></ruby>が<ruby>期待<rt>きたい</rt></ruby>を<ruby>50<rt>ごじゅっ</rt></ruby>%<ruby>上回<rt>うわまわ</rt></ruby>りました!<br>*(Thị trường Hàn vượt kỳ vọng 50%!)* |
| Aiko | <ruby>桜<rt>さくら</rt></ruby>さんの<ruby>韓国語<rt>かんこくご</rt></ruby>UIワーク、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしかったです!<br>*(Phần UI tiếng Hàn của Sakura-san thật sự tuyệt vời!)* |
| Sakura | (đỏ mặt) <ruby>恐縮<rt>きょうしゅく</rt></ruby>です…<br>*(Em ngại quá...)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>からSeries A<ruby>調達<rt>ちょうたつ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。ピッチデックを<ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Tuần sau bắt đầu chuẩn bị gọi vốn Series A. Sẽ cập nhật pitch deck.)* |

---

## Tình huống 15 — Cuối tháng 8 standup · 31/8

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>8月<rt>はちがつ</rt></ruby>の<ruby>最終数字<rt>さいしゅうすうじ</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>総<rt>そう</rt></ruby>ユーザー<ruby>3万500人<rt>さんまんごひゃくにん</rt></ruby>、<ruby>有料<rt>ゆうりょう</rt></ruby><ruby>5,100人<rt>ごせんひゃくにん</rt></ruby>、MRR <ruby>500万円<rt>ごひゃくまんえん</rt></ruby>。<ruby>第3<rt>だいさん</rt></ruby><ruby>四半期<rt>しはんき</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>を<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>達成<rt>たっせい</rt></ruby>です。<br>*(Số cuối tháng 8: tổng 30,500 user, trả phí 5,100, MRR 5 triệu yên. Đạt mục tiêu Q3 sớm 1 tháng.)* |
| Tuấn | (JP) キャッシュフロー、<ruby>月次<rt>げつじ</rt></ruby><ruby>純増<rt>じゅんぞう</rt></ruby><ruby>200万円<rt>にひゃくまんえん</rt></ruby>です。<ruby>黒字<rt>くろじ</rt></ruby>です!<br>*(Cash flow tăng ròng 2 triệu/tháng. Có lãi!)* |
| Aiko | <ruby>黒字化<rt>くろじか</rt></ruby>!<ruby>夢<rt>ゆめ</rt></ruby>みたいですね。<br>*(Có lãi! Như giấc mơ.)* |
| Đại | Series Aピッチデックも<ruby>仕上<rt>しあ</rt></ruby>がりました。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>安里<rt>あんり</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Pitch deck Series A cũng xong. Tuần sau liên lạc Anri-san.)* |

---

## Tình huống 16 — Cảnh tiếng Việt · 31/8 23:00, Đại nhắn Tuấn qua Zalo

| Vai | Lời thoại |
|---|---|
| Đại | (Zalo) Anh ơi! Cuối tháng rồi. Em báo cáo bản VN cho anh nghe. |
| Đại | (Zalo) MRR 5 triệu yên đạt rồi. Net positive 2 triệu/tháng. Series A bắt đầu tuần sau. |
| Tuấn | (Zalo) Em ơi! Anh ngồi đọc lại 3 năm trước em mới nhập học Osaka. Bao xa rồi. |
| Đại | (Zalo) Anh ơi em vẫn nhớ buổi đầu Tony chở em từ sân bay Kansai. Em không biết tự đi vé tàu. |
| Tuấn | (Zalo) Bây giờ em pitch Nikkei bằng JP keigo. Vợ Mai, con Hana, em Đông sắp ra. Cuộc đời mình đúng câu chuyện. |
| Đại | (Zalo) Anh ơi cảm ơn anh đã ở lại với em từ đầu. Em không có anh thì không có Hizashi. |
| Tuấn | (Zalo) Mình anh em mà. Mai mình tiếp tục. Em ngủ ngon nhé. |
| Đại | (Zalo) Anh ngủ ngon. Mai 9h em đến văn phòng. |

---

## Đọng lại chương 5

Đại trải qua launch day Hizashi v2.0 — chỉ huy team Nhật bằng JP keigo từ standup mở đầu **「よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」**, hỏi lại khi không hiểu term kỹ thuật **「『カナリアデプロイ』というのは、もう一度ご説明いただけますか」**, giao việc bằng cấu trúc **「〜さん、〜をお<ruby>願<rt>ねが</rt></ruby>いできますか」**, báo cáo số liệu giờ đầu với độ chính xác **「2,670件のサインアップ」**, cảm ơn phóng viên TechCrunch JP qua LINE bằng **「<ruby>誠<rt>まこと</rt></ruby>にありがとうございました」**, trả lời phỏng vấn Nikkei về điểm khác biệt với Duolingo, và đặt 1on1 với sempai Tanaka bằng **「〜していただいてもよろしいでしょうか」**. Cuối tháng MRR ¥5M đạt mục tiêu Q3 sớm 4 tháng, Hizashi đã black ink (黒字化). Hana 3 tuổi tiệc Doraemon. Đại chia sẻ cảm xúc với cofounder Tuấn bằng tiếng Việt qua Zalo cuối ngày — 3 năm từ ngày Tony đón ở Kansai.

> Từ vựng & mẫu câu chương này: <ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします・〜というのは、もう一度ご説明いただけますか・〜をお<ruby>願<rt>ねが</rt></ruby>いできますか・<ruby>承知<rt>しょうち</rt></ruby>いたしました・<ruby>誠<rt>まこと</rt></ruby>にありがとうございました・カナリアデプロイ・<ruby>本番<rt>ほんばん</rt></ruby>デプロイ・サインアップ・<ruby>有料転換<rt>ゆうりょうてんかん</rt></ruby>・<ruby>遅延<rt>ちえん</rt></ruby>p95・オートスケール・ホットフィックス・<ruby>差別化<rt>さべつか</rt></ruby>ポイント・<ruby>黒字化<rt>くろじか</rt></ruby>・<ruby>第3<rt>だいさん</rt></ruby><ruby>四半期<rt>しはんき</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>・<ruby>1on1<rt>ワンオンワン</rt></ruby>を<ruby>設定<rt>せってい</rt></ruby>させていただく・<ruby>恐縮<rt>きょうしゅく</rt></ruby>です・お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>光栄<rt>こうえい</rt></ruby>です

## Bí quyết chương

- **Launch day chỉ huy bằng JP keigo**: dùng 「お<ruby>願<rt>ねが</rt></ruby>いできますか / お<ruby>願<rt>ねが</rt></ruby>いいたします」 thay vì 「やって」 — sempai 35t+ Mercari ex như Tanaka phản ứng tốt với form lịch sự
- **Hỏi lại khi không hiểu**: 「〜というのは、もう一度ご説明いただけますか」 — founder trẻ không cần giả vờ biết, sempai sẽ tôn trọng hơn khi mình thừa nhận và hỏi lại
- **Báo cáo số liệu**: dùng số cụ thể có hậu tố 「<ruby>件<rt>けん</rt></ruby>・<ruby>名<rt>めい</rt></ruby>・<ruby>倍<rt>ばい</rt></ruby>」, tránh số "vô danh"
- **Phỏng vấn báo Nhật**: mở đầu 「<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます」, trả lời ngắn 2-3 câu mỗi câu hỏi, không dài dòng
- **Cảm xúc với cofounder VN**: chuyển sang tiếng Việt qua Zalo cuối ngày, không gánh keigo cả ngày trong cuộc sống cá nhân

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 当日 | とうじつ | ĐƯƠNG NHẬT | ngày hôm đó |
| 準備完了 | じゅんびかんりょう | CHUẨN BỊ HOÀN LIỄU | sẵn sàng |
| 本番環境 | ほんばんかんきょう | BẢN BẢN HOÀN CẢNH | môi trường production |
| 投稿 | とうこう | ĐẦU CẢO | đăng bài |
| 同時 | どうじ | ĐỒNG THỜI | đồng thời |
| 確定 | かくてい | XÁC ĐỊNH | xác định, chốt |
| 合図 | あいず | HỢP ĐỒ | hiệu lệnh |
| 念のため | ねんのため | NIỆM | để chắc chắn |
| 直後 | ちょくご | TRỰC HẬU | ngay sau |
| 段階的 | だんかいてき | ĐOẠN GIAI ĐÍCH | từng bước |
| 検知 | けんち | KIỂM TRI | phát hiện |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 勝負 | しょうぶ | THẮNG PHỤ | cuộc chiến, đua |
| 速報 | そくほう | TỐC BÁO | tin nhanh |
| 遅延 | ちえん | TRÌ DUYÊN | độ trễ |
| 許容範囲内 | きょようはんいない | HỨA DUNG PHẠM VI NỘI | trong giới hạn cho phép |
| 記事 | きじ | KÝ SỰ | bài báo |
| 掲載 | けいさい | YẾT TÁI | đăng tải |
| 誠に | まことに | THÀNH | thành tâm |
| 多言語展開 | たげんごてんかい | ĐA NGÔN NGỮ TRIỂN KHAI | mở rộng đa ngôn ngữ |
| 追加取材 | ついかしゅざい | TRUY GIA THỦ TÀI | phỏng vấn thêm |
| 喜んで | よろこんで | HỈ | hân hạnh |
| 課題 | かだい | KHOÁ ĐỀ | vấn đề |
| 不具合 | ふぐあい | BẤT CỤ HỢP | lỗi |
| 対応 | たいおう | ĐỐI ỨNG | xử lý |
| 決済 | けっさい | QUYẾT TẾ | thanh toán |
| 有効 | ゆうこう | HỮU HIỆU | có hiệu lực |
| 確実 | かくじつ | XÁC THỰC | chắc chắn |
| 未実装 | みじっそう | VỊ THỰC TRANG | chưa triển khai |
| 判断 | はんだん | PHÁN ĐOÁN | đánh giá, quyết định |
| 踏み切った | ふみきった | ĐẠP THIẾT | quyết tâm |
| 需要 | じゅよう | NHU YẾU | nhu cầu |
| 競合 | きょうごう | CẠNH HỢP | cạnh tranh, đối thủ |
| 汎用的 | はんようてき | PHIẾM DỤNG ĐÍCH | đa dụng, phổ thông |
| 特化 | とっか | ĐẶC HOÁ | chuyên biệt |
| 敬語 | けいご | KÍNH NGỮ | kính ngữ |
| 差別化 | さべつか | SAI BIỆT HOÁ | khác biệt hoá |
| 公開 | こうかい | CÔNG KHAI | công bố |
| 運用対応 | うんようたいおう | VẬN DỤNG ĐỐI ỨNG | xử lý vận hành |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | đương nhiên |
| 設定 | せってい | THIẾT ĐỊNH | thiết lập |
| 光栄 | こうえい | QUANG VINH | vinh dự |
| 有料転換 | ゆうりょうてんかん | HỮU LIỆU CHUYỂN HOÁN | chuyển đổi trả phí |
| 上昇 | じょうしょう | THƯỢNG THĂNG | tăng lên |
| 期待 | きたい | KỲ ĐÃI | kỳ vọng |
| 上回り | うわまわり | THƯỢNG HỒI | vượt qua |
| 恐縮 | きょうしゅく | KHỦNG SÚC | quá khen, ngại |
| 調達 | ちょうたつ | ĐIỀU ĐẠT | huy động vốn |
| 月次純増 | げつじじゅんぞう | NGUYỆT THỨ THUẦN TĂNG | tăng ròng theo tháng |
| 黒字化 | くろじか | HẮC TỰ HOÁ | có lãi |
| 最終数字 | さいしゅうすうじ | TỐI CHUNG SỐ TỰ | con số cuối cùng |
