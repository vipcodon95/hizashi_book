# Sách sinh viên Đại học Osaka · T6. Thực tập hè Cybozu Osaka — Kintone plugin

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Osaka U, 22 tuổi, 1-15/8/2027, lần đầu intern tech company). Học các mẫu hội thoại tiếng Nhật của intern: tự giới thiệu trang trọng buổi onboarding, hỏi mentor về spec và tech stack, báo cáo daily standup, xin phản hồi khi code review, thuyết trình demo cuối kỳ, đáp lời mời intern dài hạn, và gọi điện về VN báo tin với Mai.

---

## Bối cảnh

1-15/8/2027. Đại lần đầu thực tập tech company tại Cybozu Osaka office, tầng 8 Honmachi. Mentor Inomata-san (engineer 5 năm kinh nghiệm). Project: build Kintone plugin theo dõi tình trạng đặt phòng họp bằng JavaScript SDK. Stipend ¥150k cho 2 tuần. 4 intern khác đến từ Kyodai, Kobe U, Doshisha. Chương này tập trung các mẫu câu của intern năm 2: jikoshoukai keigo, hỏi spec, daily standup, đáp lời phản hồi từ senior, và cuối kỳ nhận lời mời intern dài hạn.

---

## Tình huống 1 — Sảnh tầng 8 Cybozu Osaka · 9:00, onboarding ngày đầu

| Vai | Lời thoại |
|---|---|
| HR | <ruby>本日<rt>ほんじつ</rt></ruby>はサマーインターンシップにお<ruby>越<rt>こ</rt></ruby>しくださいまして、ありがとうございます。<ruby>5<rt>ご</rt></ruby><ruby>名<rt>めい</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さん、<ruby>歓迎<rt>かんげい</rt></ruby>いたします。<br>*(Cảm ơn 5 bạn đã đến với Cybozu summer internship. Xin chào mừng các bạn.)* |
| HR | まず、<ruby>一人<rt>ひとり</rt></ruby>ずつ<ruby>自己<rt>じこ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Trước tiên, xin từng bạn giới thiệu bản thân.)* |
| Đại | (đứng dậy, cúi nhẹ) <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。ベトナムから<ruby>参<rt>まい</rt></ruby>りました。<br>*(Em xin giới thiệu, em là Nguyễn Văn Đại, sinh viên năm 2 khoa Khoa học Thông tin Osaka University, đến từ Việt Nam.)* |
| Đại | <ruby>得意<rt>とくい</rt></ruby>な<ruby>分野<rt>ぶんや</rt></ruby>は React と PostgreSQL です。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>二週間<rt>にしゅうかん</rt></ruby>、どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mảng em mạnh là React và PostgreSQL. 2 tuần tới rất mong được học hỏi ạ.)* |
| HR | ありがとうございます。それでは、メンターの<ruby>猪股<rt>いのまた</rt></ruby>さんをご<ruby>紹介<rt>しょうかい</rt></ruby>します。<br>*(Cảm ơn. Tiếp theo xin giới thiệu mentor Inomata-san.)* |

---

## Tình huống 2 — Phòng họp Sakura · 9:30, mentor Inomata giới thiệu project

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>初<rt>はじ</rt></ruby>めまして。メンターを<ruby>担当<rt>たんとう</rt></ruby>する<ruby>猪股<rt>いのまた</rt></ruby>です。<ruby>気軽<rt>きがる</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>をかけてくださいね。<br>*(Em Nguyễn, rất hân hạnh. Anh là Inomata, sẽ làm mentor cho em. Cứ thoải mái hỏi anh nhé.)* |
| Đại | はい、<ruby>猪股<rt>いのまた</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng anh Inomata, em rất mong được học hỏi anh.)* |
| Inomata | <ruby>今回<rt>こんかい</rt></ruby>のプロジェクトは「<ruby>会議室<rt>かいぎしつ</rt></ruby><ruby>予約<rt>よやく</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>プラグイン」です。Kintone の JavaScript SDK で<ruby>開発<rt>かいはつ</rt></ruby>します。<br>*(Project lần này là "Plugin theo dõi tình trạng đặt phòng họp". Phát triển bằng JavaScript SDK của Kintone.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、Kintone を<ruby>触<rt>さわ</rt></ruby>るのは<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>基本的<rt>きほんてき</rt></ruby>な<ruby>構造<rt>こうぞう</rt></ruby>から<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Em xin lỗi, đây là lần đầu em chạm vào Kintone. Anh có thể chỉ em cấu trúc cơ bản trước được không?)* |
| Inomata | もちろんです。Kintone は<ruby>弊社<rt>へいしゃ</rt></ruby>のローコード SaaS で、ノーコードで<ruby>業務<rt>ぎょうむ</rt></ruby>アプリが<ruby>作<rt>つく</rt></ruby>れます。プラグインは JS SDK で<ruby>拡張<rt>かくちょう</rt></ruby>します。<br>*(Tất nhiên. Kintone là SaaS low-code của bên anh, dựng app nghiệp vụ không cần code. Plugin mở rộng bằng JS SDK.)* |

---

## Tình huống 3 — Phòng họp Sakura · 10:00, hỏi tech stack chi tiết

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>スタックを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Anh có thể giới thiệu em tech stack của công ty được không?)* |
| Inomata | バックエンドは Java と Kotlin、Spring Boot です。フロントエンドは React と TypeScript ですね。<br>*(Backend là Java và Kotlin với Spring Boot. Frontend là React và TypeScript.)* |
| Inomata | DB は MySQL <ruby>8<rt>はち</rt></ruby> と Redis キャッシュ、インフラは AWS、CI/CD は GitHub Actions と ArgoCD です。<br>*(DB là MySQL 8 với Redis cache, hạ tầng AWS, CI/CD là GitHub Actions + ArgoCD.)* |
| Đại | ArgoCD というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういうツールですか？<br>*(ArgoCD cụ thể là tool gì ạ?)* |
| Inomata | Kubernetes <ruby>向<rt>む</rt></ruby>けの GitOps ツールです。Git の<ruby>状態<rt>じょうたい</rt></ruby>とクラスタの<ruby>状態<rt>じょうたい</rt></ruby>を<ruby>同期<rt>どうき</rt></ruby>します。<br>*(Là tool GitOps cho Kubernetes — đồng bộ trạng thái Git với cluster.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>大学<rt>だいがく</rt></ruby>とはスケールが<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Em học được nhiều quá. Quy mô khác hẳn ở trường.)* |

---

## Tình huống 4 — Khu intern · 11:00, hỏi spec plugin chi tiết

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>猪股<rt>いのまた</rt></ruby>さん、<ruby>仕様<rt>しよう</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>させてください。プラグインは<ruby>一覧画面<rt>いちらんがめん</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>するんですよね？<br>*(Anh Inomata, em xin xác nhận về spec. Plugin sẽ hiển thị ở màn hình danh sách phải không ạ?)* |
| Inomata | そうです。<ruby>今後<rt>こんご</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>を<ruby>件数<rt>けんすう</rt></ruby>バッジで<ruby>表示<rt>ひょうじ</rt></ruby>してください。<br>*(Đúng vậy. Em hãy hiển thị số lượng booking trong 1 tuần tới dưới dạng badge.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>過去<rt>かこ</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>は<ruby>除外<rt>じょがい</rt></ruby>するイメージでしょうか？<br>*(Em rõ rồi ạ. Có loại trừ booking trong quá khứ không ạ?)* |
| Inomata | はい、<ruby>今日<rt>きょう</rt></ruby><ruby>以降<rt>いこう</rt></ruby>のものだけです。<ruby>並<rt>なら</rt></ruby>び<ruby>順<rt>じゅん</rt></ruby>は<ruby>開始<rt>かいし</rt></ruby><ruby>時刻<rt>じこく</rt></ruby><ruby>順<rt>じゅん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đúng, chỉ booking từ hôm nay trở đi. Sắp xếp theo giờ bắt đầu.)* |
| Đại | (gõ vào notebook) はい、メモしました。<ruby>明日<rt>あす</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>までに v0.1 のたたき<ruby>台<rt>だい</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>します。<br>*(Vâng em ghi lại rồi. Mai sáng em sẽ chuẩn bị bản nháp v0.1.)* |

---

## Tình huống 5 — Khu intern · 14:00, viết code Kintone JS SDK

*Đại ngồi cùng bàn với 4 intern khác, mở Kintone dev environment.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ code)<br>```javascript<br>kintone.events.on('app.record.index.show', (event) => {<br>  const today = new Date();<br>  const upcoming = event.records.filter(<br>    r => new Date(r.start_time.value) > today<br>  );<br>  const header = kintone.app.getHeaderMenuSpaceElement();<br>  header.innerHTML = `<span class="badge">${upcoming.length} upcoming</span>`;<br>});<br>```<br> |
| Intern Kyodai | グエンさん、それ どうやって テスト するんですか？<br>*(Em Nguyễn, cái đó test thế nào?)* |
| Đại | Kintone <ruby>管理<rt>かんり</rt></ruby><ruby>画面<rt>がめん</rt></ruby>でプラグインを zip にしてアップロードして、アプリで<ruby>有効<rt>ゆうこう</rt></ruby>にします。<br>*(Vào trang quản trị Kintone, đóng zip plugin upload lên, rồi enable trong app.)* |
| Intern Kyodai | なるほど、ありがとうございます。<br>*(À ra vậy, cảm ơn em.)* |
| Đại | (chạy thử) <ruby>動<rt>うご</rt></ruby>きました！「<ruby>5<rt>ご</rt></ruby> upcoming」と<ruby>表示<rt>ひょうじ</rt></ruby>されています。<br>*(Chạy được rồi! Hiển thị "5 upcoming".)* |

---

## Tình huống 6 — Phòng họp Sakura · 10:00 day 3, daily standup

*5 intern + 2 mentor ngồi vòng tròn. Mỗi người 1 phút.*

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>してください。<br>*(Em Nguyễn, chia sẻ tiến độ đi.)* |
| Đại | はい。<ruby>昨日<rt>きのう</rt></ruby>は Kintone JS SDK の<ruby>基礎<rt>きそ</rt></ruby>を<ruby>学<rt>まな</rt></ruby>び、プラグイン v0.1 を<ruby>実装<rt>じっそう</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>は code review をお<ruby>願<rt>ねが</rt></ruby>いする<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng. Hôm qua em học cơ bản Kintone JS SDK và đã code xong plugin v0.1. Hôm nay em định xin code review.)* |
| Đại | <ruby>困<rt>こま</rt></ruby>っていることは、<ruby>大量<rt>たいりょう</rt></ruby>のレコードがある<ruby>時<rt>とき</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>くなることです。<br>*(Khó khăn là khi có nhiều record thì hiển thị chậm.)* |
| Inomata | わかりました。<ruby>午後<rt>ごご</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てみましょう。<br>*(OK. Chiều nay anh em cùng xem nhé.)* |
| Đại | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn anh. Em mong được anh chỉ.)* |

---

## Tình huống 7 — Bàn làm việc · 14:00 day 3, Inomata code review

| Vai | Lời thoại |
|---|---|
| Inomata | (nhìn màn hình) コードはきれいですね。<ruby>変数名<rt>へんすうめい</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Code sạch đấy. Tên biến cũng dễ hiểu.)* |
| Inomata | <ruby>一<rt>ひと</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>ですが、`localStorage` で<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>キャッシュすると、<ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くなりますよ。<br>*(Anh đề xuất, cache 5 phút bằng localStorage thì hiển thị sẽ nhanh hơn.)* |
| Đại | あ、なるほど！<ruby>毎回<rt>まいかい</rt></ruby> API を<ruby>叩<rt>たた</rt></ruby>かなくて<ruby>済<rt>す</rt></ruby>みますね。<ruby>早速<rt>さっそく</rt></ruby><ruby>試<rt>ため</rt></ruby>してみます。<br>*(À, hay quá! Đỡ phải gọi API mỗi lần. Em thử ngay.)* |
| Đại | <ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>は TTL <ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか？<br>*(TTL 5 phút có ổn không ạ?)* |
| Inomata | <ruby>会議室<rt>かいぎしつ</rt></ruby><ruby>予約<rt>よやく</rt></ruby>は<ruby>頻繁<rt>ひんぱん</rt></ruby>に<ruby>変<rt>か</rt></ruby>わらないので、<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Đặt phòng họp không thay đổi thường xuyên nên 5 phút là đủ.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>明日<rt>あす</rt></ruby>までに v0.2 を<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Em rõ rồi ạ. Mai em sẽ làm xong v0.2.)* |

---

## Tình huống 8 — Cafeteria tầng 9 · 12:00 day 5, ăn trưa với intern khác

| Vai | Lời thoại |
|---|---|
| Intern Kobe | グエンさん、<ruby>日本語<rt>にほんご</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>ですね。<ruby>何年<rt>なんねん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しましたか？<br>*(Em Nguyễn, tiếng Nhật khá quá. Học mấy năm rồi?)* |
| Đại | ありがとうございます。<ruby>来日<rt>らいにち</rt></ruby>してから<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>はホームステイで<ruby>毎日<rt>まいにち</rt></ruby><ruby>会話<rt>かいわ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしました。<br>*(Cảm ơn anh. Em sang Nhật 3 năm rồi. Lúc đầu ở homestay nên luyện hội thoại mỗi ngày.)* |
| Intern Doshisha | Kintone プラグイン、<ruby>難<rt>むずか</rt></ruby>しくないですか？<br>*(Plugin Kintone không khó hả?)* |
| Đại | <ruby>最初<rt>さいしょ</rt></ruby>はドキュメントを<ruby>読<rt>よ</rt></ruby>むのに<ruby>苦労<rt>くろう</rt></ruby>しました。でも、<ruby>猪股<rt>いのまた</rt></ruby>さんが<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれるので、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Lúc đầu em vật vã đọc docs. Nhưng anh Inomata chỉ rất tận tình nên ổn rồi.)* |

---

## Tình huống 9 — Bàn làm việc · 15:00 day 8, Cybozu culture talk

*Inomata mời Đại ngồi tách bàn nói chuyện về văn hoá công ty.*

| Vai | Lời thoại |
|---|---|
| Inomata | グエンさん、<ruby>弊社<rt>へいしゃ</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>について<ruby>話<rt>はな</rt></ruby>させてください。<br>*(Em Nguyễn, anh kể em nghe về văn hoá công ty.)* |
| Inomata | <ruby>有名<rt>ゆうめい</rt></ruby>なスローガンが「<ruby>100<rt>ひゃく</rt></ruby><ruby>人<rt>にん</rt></ruby><ruby>100<rt>ひゃく</rt></ruby><ruby>通<rt>とお</rt></ruby>りの<ruby>働<rt>はたら</rt></ruby>き<ruby>方<rt>かた</rt></ruby>」です。リモートとフレックスは<ruby>各自<rt>かくじ</rt></ruby>で<ruby>選<rt>えら</rt></ruby>べます。<br>*(Slogan nổi tiếng là "100 người 100 cách làm việc". Remote và flex mỗi người tự chọn.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>新卒<rt>しんそつ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じですか？<br>*(Tuyệt vời ạ. Sinh viên mới ra trường cũng vậy ạ?)* |
| Inomata | はい。<ruby>初任給<rt>しょにんきゅう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>35<rt>さんじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby>から<ruby>45<rt>よんじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>賞与<rt>しょうよ</rt></ruby>は<ruby>年間<rt>ねんかん</rt></ruby><ruby>6<rt>ろっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>です。<br>*(Đúng vậy. Lương khởi điểm 350k–450k yên/tháng, thưởng 6 tháng/năm.)* |
| Đại | <ruby>魅力的<rt>みりょくてき</rt></ruby>ですね。<ruby>将来<rt>しょうらい</rt></ruby><ruby>応募<rt>おうぼ</rt></ruby>させていただきたいです。<br>*(Hấp dẫn quá. Tương lai em xin ứng tuyển ạ.)* |

---

## Tình huống 10 — Phòng họp Sakura · 14:00 day 14, final demo

*Đại đứng trước 8 senior engineer + HR + 4 intern khác. Slide đầu tiên là kiến trúc plugin.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>させていただきます。<br>*(Cảm ơn các anh chị đã dành thời gian hôm nay. Em xin phép trình bày kết quả 2 tuần.)* |
| Đại | (chỉ slide) プラグインは<ruby>三<rt>みっ</rt></ruby>つの<ruby>機能<rt>きのう</rt></ruby>を<ruby>備<rt>そな</rt></ruby>えています。<ruby>1<rt>いち</rt></ruby>:バッジ<ruby>表示<rt>ひょうじ</rt></ruby>、<ruby>2<rt>に</rt></ruby>: localStorage キャッシュ、<ruby>3<rt>さん</rt></ruby>:エラー<ruby>処理<rt>しょり</rt></ruby>です。<br>*(Plugin có 3 chức năng: 1 hiển thị badge, 2 cache localStorage, 3 xử lý lỗi.)* |
| Đại | (demo) <ruby>初回<rt>しょかい</rt></ruby><ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みは<ruby>300<rt>さんびゃく</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>、キャッシュ<ruby>後<rt>ご</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>に<ruby>短縮<rt>たんしゅく</rt></ruby>できました。<br>*(Lần đầu load 300ms, sau cache giảm còn 15ms.)* |
| Senior eng | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>2<rt>に</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>とは<ruby>思<rt>おも</rt></ruby>えないクオリティです。<br>*(Tuyệt vời. Không nghĩ là sinh viên năm 2.)* |
| Senior eng | キャッシュの<ruby>提案<rt>ていあん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてすぐ<ruby>実装<rt>じっそう</rt></ruby>できたのが<ruby>印象的<rt>いんしょうてき</rt></ruby>です。<br>*(Ấn tượng là nhận đề xuất cache xong em implement ngay.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>猪股<rt>いのまた</rt></ruby>さんのご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Em không dám nhận. Là nhờ anh Inomata chỉ bảo ạ.)* |

---

## Tình huống 11 — Phòng họp Sakura · 15:00 day 14, lời mời intern dài hạn

*HR và Inomata ngồi lại với Đại sau demo.*

| Vai | Lời thoại |
|---|---|
| HR | グエンさん、<ruby>今日<rt>きょう</rt></ruby>のプレゼン、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしかったです。<br>*(Em Nguyễn, presentation hôm nay thực sự xuất sắc.)* |
| HR | <ruby>3<rt>さん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>での<ruby>長期<rt>ちょうき</rt></ruby>インターンに<ruby>興味<rt>きょうみ</rt></ruby>はありませんか？<br>*(Em có quan tâm internship dài hạn vào năm 3 không?)* |
| Đại | <ruby>是非<rt>ぜひ</rt></ruby><ruby>参加<rt>さんか</rt></ruby>させていただきたいです！<ruby>具体的<rt>ぐたいてき</rt></ruby>には、どのようなプロジェクトでしょうか？<br>*(Em rất mong được tham gia! Cụ thể là dự án thế nào ạ?)* |
| HR | <ruby>2028<rt>にせんにじゅうはち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、RAG <ruby>関連<rt>かんれん</rt></ruby>の<ruby>研究<rt>けんきゅう</rt></ruby>プロジェクトです。<br>*(Từ tháng 6/2028, 3 tháng — dự án nghiên cứu liên quan đến RAG.)* |
| Đại | RAG というのは、Retrieval-Augmented Generation のことですよね？<br>*(RAG là Retrieval-Augmented Generation phải không ạ?)* |
| Inomata | そうです。LLM と<ruby>検索<rt>けんさく</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせる<ruby>分野<rt>ぶんや</rt></ruby>です。グエンさんに<ruby>合<rt>あ</rt></ruby>うと<ruby>思<rt>おも</rt></ruby>います。<br>*(Đúng. Lĩnh vực kết hợp LLM với search. Anh nghĩ hợp với em.)* |
| Đại | ありがとうございます。<ruby>応募<rt>おうぼ</rt></ruby>させていただきます。<br>*(Em cảm ơn. Em xin được ứng tuyển ạ.)* |

---

## Tình huống 12 — Thang máy · 18:30 day 14, Đại nhắn LINE Mai

*Đại đang xuống tầng 1 sau buổi chia tay intern.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE → Mai) Em ơi! Cybozu vừa mời anh apply intern dài 3 tháng năm 3, dự án RAG. |
| Mai | Trời ơi tuyệt vời quá anh! Em mừng muốn khóc. |
| Đại | Em chuẩn bị nhập học N2 chưa? Bao giờ vô lớp ở Yamato? |
| Mai | Tuần sau. Anh ráng nha, em cũng ráng. |
| Đại | Yêu em. Cuối tuần anh gọi video kể chi tiết. |
| Mai | Dạ. Hôm nay anh thưởng cho mình bữa ngon đi! |

---

## Tình huống 13 — Quán izakaya gần Honmachi · 20:00 day 14, gọi điện về VN cho bố mẹ

> Cảnh tiếng Việt — Đại ngồi một mình trong quán nhỏ, gọi video cho bố mẹ ở Hà Nội. Mai đã báo trước cho bố mẹ Đại biết tin.

| Vai | Lời thoại |
|---|---|
| Mẹ Đại | (tiếng Việt) Con ơi, Mai vừa gọi báo mẹ rồi. Con được mời thực tập dài hả? |
| Đại | (tiếng Việt) Vâng mẹ. 3 tháng, từ tháng 6 năm sau. Cybozu là công ty SaaS lớn, lương tốt, văn hoá tốt. |
| Bố Đại | (tiếng Việt) Giỏi con. Hôm nay con `intern` 2 tuần được bao nhiêu? |
| Đại | (tiếng Việt) `¥150k` bố ạ. Trừ thuế còn `¥130k`, đủ trả tiền nhà tháng 8 và điện nước. |
| Mẹ Đại | (tiếng Việt) Tự lo được là bố mẹ mừng rồi. Mà `RAG` là cái gì hả con? |
| Đại | (tiếng Việt) Là kết hợp `AI` với tìm kiếm, mẹ ạ. Sau này nếu mình mở Hizashi, công nghệ này sẽ là lõi để app trả lời câu hỏi tiếng Nhật cho người Việt. |
| Bố Đại | (tiếng Việt) Bố không hiểu nhưng nghe con say sưa là bố biết đúng đường. Cố lên con. |
| Đại | (tiếng Việt) Dạ. Con cảm ơn bố mẹ. Mẹ nhớ giữ sức khoẻ, Tết con về. |

---

## Đọng lại chương 6

Hai tuần intern hè đầu tiên ở Cybozu Osaka. Đại bước vào ngày đầu với mẫu jikoshoukai trang trọng **「〜と申します。どうぞよろしくお願いいたします」**, hỏi mentor về tech stack bằng **「御社の技術スタックを教えていただけますか」**, làm rõ spec bằng **「〜について確認させてください」**. Implement plugin Kintone bằng JavaScript SDK trong 3 ngày, daily standup báo cáo bằng **「進捗を共有します・困っていることは〜です」**, nhận code review từ Inomata-san, học cách đáp lại feedback bằng **「なるほど、早速試してみます」**. Học văn hoá Cybozu **「100人100通りの働き方」**. Final demo: từ **300ms xuống 15ms** sau khi thêm localStorage cache, được senior engineer khen rồi nhận lời mời intern dài 3 tháng dự án **RAG** từ 6/2028. Tối nhắn LINE Mai, gọi video về Hà Nội báo tin bố mẹ — hạt giống Hizashi tiếp tục lớn.

> Từ vựng & mẫu câu chương này: サマーインターン・Kintone・プラグイン・JavaScript SDK・Spring Boot・MySQL・Redis・AWS・GitHub Actions・ArgoCD・Kubernetes・GitOps・localStorage キャッシュ・TTL・code review・daily standup・100人100通りの働き方・初任給・賞与・RAG・〜と申します・どうぞよろしくお願いいたします・御社の技術スタックを教えていただけますか・〜について確認させてください・承知しました・進捗を共有します・困っていることは〜です・恐れ入りますが・是非参加させていただきたいです

## Bí quyết chương

- **Keigo intern level**: 「させていただきます・恐れ入ります・承知しました」 là 3 mẫu sống còn ngày đầu intern Nhật.
- **Hỏi spec ngay đầu**: 「〜について確認させてください」 giúp tránh refactor cuối kỳ. Người Nhật đánh giá cao intern hỏi sớm hơn intern code sai rồi sửa.
- **Hạt giống RAG**: Lời mời intern dài hạn năm 3 không phải kết thúc — là cánh cửa mở vào sách 23 (lab Inoue + RAG project).

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本日 | ほんじつ | BẢN NHẬT | hôm nay |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | tự giới thiệu |
| 研究科 | けんきゅうか | NGHIÊN CỨU KHOA | khoa nghiên cứu |
| 申す | もうす | — | nói (khiêm nhường) |
| 参る | まいる | — | đến (khiêm nhường) |
| 得意 | とくい | ĐẮC Ý | sở trường |
| 分野 | ぶんや | PHÂN DÃ | lĩnh vực |
| 気軽 | きがる | KHÍ KHINH | thoải mái |
| 仕様 | しよう | SĨ DẠNG | spec, thông số |
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | phòng họp |
| 予約 | よやく | DỰ ƯỚC | đặt trước |
| 状況 | じょうきょう | TÌNH HUỐNG | tình trạng |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 弊社 | へいしゃ | TỆ XÃ | công ty chúng tôi (khiêm) |
| 業務 | ぎょうむ | NGHIỆP VỤ | nghiệp vụ |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | mở rộng |
| 御社 | おんしゃ | NGỰ XÃ | quý công ty |
| 同期 | どうき | ĐỒNG KỲ | đồng bộ |
| 一覧画面 | いちらんがめん | NHẤT LÃM HOẠ DIỆN | màn hình danh sách |
| 件数 | けんすう | KIỆN SỐ | số lượng |
| 過去 | かこ | QUÁ KHỨ | quá khứ |
| 除外 | じょがい | TRỪ NGOẠI | loại trừ |
| 並び順 | ならびじゅん | — | thứ tự sắp xếp |
| 開始時刻 | かいしじこく | KHAI THUỶ THỜI KHẮC | giờ bắt đầu |
| 承知 | しょうち | THỪA TRI | đã hiểu, đã rõ |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 有効期限 | ゆうこうきげん | HỮU HIỆU KỲ HẠN | thời hạn hiệu lực |
| 頻繁 | ひんぱん | TẦN PHỒN | thường xuyên |
| 仕上げる | しあげる | SĨ THƯỢNG | hoàn thiện |
| 文化 | ぶんか | VĂN HOÁ | văn hoá |
| 各自 | かくじ | CÁC TỰ | mỗi người |
| 新卒 | しんそつ | TÂN TỐT | sinh viên mới ra trường |
| 初任給 | しょにんきゅう | SƠ NHẬM CẤP | lương khởi điểm |
| 賞与 | しょうよ | THƯỞNG DỮ | thưởng |
| 魅力的 | みりょくてき | MỴ LỰC ĐÍCH | hấp dẫn |
| 将来 | しょうらい | TƯƠNG LAI | tương lai |
| 成果 | せいか | THÀNH QUẢ | thành quả |
| 発表 | はっぴょう | PHÁT BIỂU | trình bày |
| 備える | そなえる | BỊ | trang bị, có |
| 短縮 | たんしゅく | ĐOẢN SÚC | rút ngắn |
| 印象的 | いんしょうてき | ẤN TƯỢNG ĐÍCH | ấn tượng |
| 指導 | しどう | CHỈ ĐẠO | chỉ dẫn |
| 長期 | ちょうき | TRƯỜNG KỲ | dài hạn |
| 興味 | きょうみ | HỨNG VỊ | quan tâm |
| 検索 | けんさく | KIỂM SÁCH | tìm kiếm |
| 組み合わせる | くみあわせる | — | kết hợp |
