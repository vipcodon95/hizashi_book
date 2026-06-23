# Sách sinh viên Đại học Osaka · T9. Project演習 — team build & deploy production

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 2 hậu kỳ (11-12/2027). Học các mẫu hội thoại tiếng Nhật của sinh viên CS làm team project: **báo cáo standup**, **chia vai trò (担当)**, **xin ý kiến sensei**, **báo sự cố production**, **đề xuất giải pháp kỹ thuật**, **phát biểu cuối khóa trang trọng**.

---

## Bối cảnh

Tháng 11-12/2027. Lớp **プロジェクト演習** của Watanabe-sensei (HCI Lab) chia nhóm 4 người × 20 nhóm. Đại + Yamato + Aiko + Lin Wei lập nhóm "OSU CS3" build site **OsakaU CS Hub** — nền tảng note + forum + CV cho 101 SV khoa CNTT, deploy thật trên Xserver VPS ¥900/月. Sprint 6 tuần, final presentation 22/12. Chương này tập trung các mẫu câu **báo cáo tiến độ, chia 担当, xin xác nhận sensei, xử lý sự cố production và phát biểu kết quả**.

---

## Tình huống 1 — Giảng đường C-204 · 11/11 10:30, sensei phổ biến đề bài

| Vai | Lời thoại |
|---|---|
| Watanabe | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>から「プロジェクト<ruby>演習<rt>えんしゅう</rt></ruby>」が<ruby>始<rt>はじ</rt></ruby>まります。4<ruby>名<rt>めい</rt></ruby>×20チームで<ruby>編成<rt>へんせい</rt></ruby>してください。<br>*(Các em, từ hôm nay bắt đầu môn "Project演習". Chia 4 người × 20 nhóm nhé.)* |
| Watanabe | <ruby>課題<rt>かだい</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つです。<ruby>一<rt>いち</rt></ruby>、<ruby>実際<rt>じっさい</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>を<ruby>解決<rt>かいけつ</rt></ruby>する。<ruby>二<rt>に</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>にデプロイする。<ruby>三<rt>さん</rt></ruby>、12<ruby>月<rt>がつ</rt></ruby>22<ruby>日<rt>にち</rt></ruby>に<ruby>発表<rt>はっぴょう</rt></ruby>する。<br>*(Có ba yêu cầu. Một, giải bài toán thực tế. Hai, deploy lên môi trường production. Ba, phát biểu ngày 22/12.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>というのは、<ruby>実際<rt>じっさい</rt></ruby>のユーザーが<ruby>使<rt>つか</rt></ruby>うサーバーということでよろしいでしょうか?<br>*(Thưa thầy, "本番環境" có nghĩa là server mà user thật sự dùng, đúng không ạ?)* |
| Watanabe | そうです。<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>用<rt>よう</rt></ruby>の<ruby>仮<rt>かり</rt></ruby>のサーバーではありません。<ruby>本物<rt>ほんもの</rt></ruby>のトラフィックを<ruby>受<rt>う</rt></ruby>けるサーバーです。<br>*(Đúng. Không phải server giả lập cho lớp học. Là server nhận lưu lượng thật.)* |
| Yamato | (thì thầm Đại) <ruby>俺<rt>おれ</rt></ruby>たち、Aiko と Lin Wei <ruby>誘<rt>さそ</rt></ruby>って4<ruby>人<rt>にん</rt></ruby>で<ruby>組<rt>く</rt></ruby>もうぜ。<br>*(Tụi mình rủ Aiko và Lin Wei lập nhóm 4 đi.)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>昼休<rt>ひるやす</rt></ruby>みに<ruby>声<rt>こえ</rt></ruby>をかける。<br>*(Tán thành. Trưa tớ rủ.)* |

---

## Tình huống 2 — Cafeteria · 11/11 12:30, mời Aiko + Lin Wei vào nhóm

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>さん、Lin Wei、<ruby>少<rt>すこ</rt></ruby>しいいですか? プロジェクト<ruby>演習<rt>えんしゅう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>で<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Aiko, Lin Wei, hai bạn rảnh chút không? Tớ muốn bàn về môn Project演習.)* |
| Aiko | どうぞ。なに?<br>*(Cứ nói. Gì thế?)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>と Yamato で<ruby>組<rt>く</rt></ruby>むんだけど、<ruby>二<rt>ふた</rt></ruby>りで<ruby>一緒<rt>いっしょ</rt></ruby>にやってもらえないかな? UI/UX は<ruby>愛子<rt>あいこ</rt></ruby>さん、インフラは Lin Wei にお<ruby>願<rt>ねが</rt></ruby>いしたい。<br>*(Tớ với Yamato lập nhóm, hai bạn vào cùng được không? UI/UX nhờ Aiko, hạ tầng nhờ Lin Wei.)* |
| Lin Wei | (English) Sounds good. What's the problem we're solving?<br>*(Hay đấy. Mình giải bài toán gì?)* |
| Aiko | テーマはもう<ruby>決<rt>き</rt></ruby>まってる?<br>*(Đã chốt chủ đề chưa?)* |
| Đại | まだです。<ruby>明日<rt>あした</rt></ruby>4<ruby>人<rt>にん</rt></ruby>でブレストしましょう。<br>*(Chưa. Mai 4 đứa cùng brainstorm nhé.)* |
| Yamato | (chen vào) <ruby>俺<rt>おれ</rt></ruby>はアルゴリズム<ruby>担当<rt>たんとう</rt></ruby>するわ。<br>*(Tớ phụ trách algorithm nhé.)* |

---

## Tình huống 3 — Phòng họp lab C-110 · 12/11 14:00, brainstorm chốt đề tài

*Bốn người ngồi quanh whiteboard. Aiko cầm marker.*

| Vai | Lời thoại |
|---|---|
| Aiko | まず<ruby>身近<rt>みぢか</rt></ruby>な<ruby>問題<rt>もんだい</rt></ruby>から<ruby>考<rt>かんが</rt></ruby>えませんか? <ruby>私<rt>わたし</rt></ruby>たちの<ruby>学科<rt>がっか</rt></ruby>101<ruby>名<rt>めい</rt></ruby>、LINE グループが<ruby>大<rt>おお</rt></ruby>きすぎて<ruby>情報<rt>じょうほう</rt></ruby>が<ruby>流<rt>なが</rt></ruby>れちゃう。<br>*(Bắt đầu từ vấn đề gần mình nhỉ? Khoa 101 SV, group LINE quá lớn nên thông tin trôi mất.)* |
| Yamato | <ruby>確<rt>たし</rt></ruby>かに。<ruby>講義<rt>こうぎ</rt></ruby>のノートも<ruby>誰<rt>だれ</rt></ruby>かが Drive に<ruby>上<rt>あ</rt></ruby>げるけど、<ruby>共有<rt>きょうゆう</rt></ruby>リンクが<ruby>探<rt>さが</rt></ruby>しにくい。<br>*(Đúng đấy. Ai đó up note lên Drive nhưng link khó tìm.)* |
| Đại | じゃあ、<ruby>専用<rt>せんよう</rt></ruby>プラットフォームを<ruby>作<rt>つく</rt></ruby>るのはどうですか? ノート<ruby>共有<rt>きょうゆう</rt></ruby>+フォーラム+CV/ポートフォリオ。<br>*(Vậy mình build nền tảng riêng đi? Note share + forum + CV.)* |
| Lin Wei | (English) And only @ecs.osaka-u.ac.jp emails can register. Closed community.<br>*(Và chỉ email của khoa mới đăng ký được. Cộng đồng đóng.)* |
| Aiko | <ruby>名前<rt>なまえ</rt></ruby>は?<br>*(Tên đặt là gì?)* |
| Đại | 「OsakaU CS Hub」はどうですか?<br>*(OsakaU CS Hub thấy sao?)* |
| Yamato | シンプルでいい。<ruby>採用<rt>さいよう</rt></ruby>!<br>*(Đơn giản, hay. Lấy!)* |
| Aiko | じゃあ、<ruby>明日<rt>あした</rt></ruby>までに<ruby>各自<rt>かくじ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>仕様<rt>しよう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えて<ruby>共有<rt>きょうゆう</rt></ruby>しましょう。<br>*(Vậy đến mai mỗi người tổng hợp spec phần mình rồi share nhé.)* |

---

## Tình huống 4 — Lab Watanabe · 14/11 16:00, xin xác nhận kiến trúc

*Đại mang laptop đến phòng sensei. Aiko đi cùng.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか? アーキテクチャの<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>したいです。<br>*(Xin phép ạ. Thầy Watanabe, em xin thầy ít phút được không ạ? Em muốn nhờ thầy xác nhận kiến trúc.)* |
| Watanabe | どうぞ、<ruby>座<rt>すわ</rt></ruby>って。<br>*(Cứ ngồi đi.)* |
| Đại | フロントエンドは Next.js + TypeScript、バックエンドは FastAPI、DB は PostgreSQL と Redis、デプロイは Xserver VPS に Docker Compose です。<br>*(Frontend Next.js + TypeScript, backend FastAPI, DB PostgreSQL + Redis, deploy Xserver VPS bằng Docker Compose ạ.)* |
| Watanabe | <ruby>悪<rt>わる</rt></ruby>くないですね。ただ、VPS は1GB RAM しかないでしょう? Redis を<ruby>使<rt>つか</rt></ruby>うとメモリが<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Không tệ. Nhưng VPS chỉ 1GB RAM đúng không? Dùng Redis có lo về bộ nhớ đấy.)* |
| Đại | (ghi vội) <ruby>承知<rt>しょうち</rt></ruby>しました。Redis は<ruby>軽<rt>かる</rt></ruby>めのキャッシュ<ruby>用途<rt>ようと</rt></ruby>に<ruby>限定<rt>げんてい</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ giới hạn Redis chỉ dùng cho cache nhẹ.)* |
| Watanabe | あとは CI/CD はどうする?<br>*(Còn CI/CD thì sao?)* |
| Aiko | GitHub Actions で main<ruby>ブランチ<rt>ブランチ</rt></ruby>に push したら<ruby>自動<rt>じどう</rt></ruby>デプロイです。<br>*(GitHub Actions, push vào main là auto-deploy ạ.)* |
| Watanabe | いいですね。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Tốt đấy. Cố lên nhé.)* |

---

## Tình huống 5 — Discord voice channel · 18/11 19:30, daily standup tuần 1

*Tab "OSU CS3 daily 19:30". Bốn người voice.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>今日<rt>きょう</rt></ruby>のスタンドアップ<ruby>始<rt>はじ</rt></ruby>めます。<ruby>俺<rt>おれ</rt></ruby>から。バックエンド:<ruby>認証<rt>にんしょう</rt></ruby>とノート CRUD 4 エンドポイント<ruby>完了<rt>かんりょう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>はフォーラム<ruby>機能<rt>きのう</rt></ruby>。<ruby>困<rt>こま</rt></ruby>っていることはなし。<br>*(Bắt đầu standup hôm nay. Tớ trước. Backend: auth và 4 endpoint CRUD note xong. Mai sang forum. Không có gì kẹt.)* |
| Yamato | アルゴリズム:<ruby>検索<rt>けんさく</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>を<ruby>調査<rt>ちょうさ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。Postgres の<ruby>全文<rt>ぜんぶん</rt></ruby><ruby>検索<rt>けんさく</rt></ruby>でいけそう。Elasticsearch は<ruby>不要<rt>ふよう</rt></ruby>。<br>*(Algorithm: đang khảo sát hướng search. Postgres full-text có vẻ ổn. Khỏi cần Elasticsearch.)* |
| Aiko | UI: ログイン<ruby>画面<rt>がめん</rt></ruby>とノート<ruby>一覧<rt>いちらん</rt></ruby><ruby>画面<rt>がめん</rt></ruby>のモックアップ<ruby>完了<rt>かんりょう</rt></ruby>。Figma リンク<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(UI: xong mockup màn login và màn list note. Tớ share link Figma.)* |
| Lin Wei | (English) DevOps: Docker Compose file ready. GitHub Actions pipeline 80% done. Need 1 more day.<br>*(DevOps: file Docker Compose xong. Pipeline GitHub Actions 80%. Cần thêm 1 ngày.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>。じゃあ<ruby>明日<rt>あした</rt></ruby>も19:30 で。<ruby>解散<rt>かいさん</rt></ruby>!<br>*(OK. Mai cũng 19:30 nhé. Giải tán!)* |

---

## Tình huống 6 — Phòng Đại · 25/11 22:40, hỏi lại khi chưa hiểu Lin Wei

*LINE call Lin Wei. Đại đang debug terminal.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Đại, Redis just OOM-killed on the VPS. Production down.<br>*(Redis vừa bị OOM kill trên VPS. Production sập.)* |
| Đại | え、ちょっと<ruby>待<rt>ま</rt></ruby>って。「OOM kill」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>?<br>*(Khoan, cho hỏi "OOM kill" cụ thể là gì?)* |
| Lin Wei | (English) Out Of Memory. Linux kernel killed the Redis process because RAM was full.<br>*(Out Of Memory. Kernel Linux giết tiến trình Redis vì hết RAM.)* |
| Đại | なるほど。もう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>原因<rt>げんいん</rt></ruby>はセッション<ruby>情報<rt>じょうほう</rt></ruby>が Redis に<ruby>溜<rt>た</rt></ruby>まりすぎたから、ということですか?<br>*(Ra vậy. Cho tớ xác nhận lại nhé. Nguyên nhân là session info dồn vào Redis quá nhiều, đúng không?)* |
| Lin Wei | (English) Exactly. We have 200 sessions × 50KB = 10MB just for sessions, plus cache.<br>*(Đúng. 200 session × 50KB = 10MB chỉ riêng session, cộng cache nữa.)* |
| Đại | じゃあ、セッションは Postgres に<ruby>移<rt>うつ</rt></ruby>して、Redis は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>頻繁<rt>ひんぱん</rt></ruby>な<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みだけにしよう。<br>*(Vậy mình chuyển session sang Postgres, Redis chỉ cho phần đọc thật sự dồn dập thôi.)* |
| Lin Wei | (English) Agreed. I'll refactor tonight, deploy at 2am low traffic.<br>*(OK. Tối tớ refactor, deploy lúc 2 giờ sáng lúc ít traffic.)* |
| Đại | <ruby>助<rt>たす</rt></ruby>かる。<ruby>明日<rt>あした</rt></ruby>のスタンドアップで<ruby>報告<rt>ほうこく</rt></ruby>しよう。<br>*(Đỡ quá. Mai standup mình báo nhé.)* |

---

## Tình huống 7 — Discord standup · 26/11 19:30, báo sự cố cho nhóm

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Quick report: last night Redis OOM on staging. Đại and I migrated sessions to Postgres. Stable now.<br>*(Báo nhanh: tối qua Redis OOM trên staging. Tớ với Đại đã migrate session sang Postgres. Giờ ổn rồi.)* |
| Yamato | え、<ruby>本番<rt>ほんばん</rt></ruby>にも<ruby>影響<rt>えいきょう</rt></ruby>あった?<br>*(Ơ, có ảnh hưởng production không?)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby><ruby>公開<rt>こうかい</rt></ruby><ruby>前<rt>まえ</rt></ruby>でよかったです。ステージング<ruby>環境<rt>かんきょう</rt></ruby>で<ruby>発見<rt>はっけん</rt></ruby>できました。<br>*(May là chưa public production. Phát hiện được trên staging.)* |
| Aiko | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>が<ruby>言<rt>い</rt></ruby>っていたメモリの<ruby>心配<rt>しんぱい</rt></ruby>、<ruby>当<rt>あ</rt></ruby>たってたね。<br>*(Lời thầy Watanabe lo về memory đúng thật.)* |
| Đại | はい。<ruby>先生<rt>せんせい</rt></ruby>の<ruby>指摘<rt>してき</rt></ruby>のおかげです。<ruby>次<rt>つぎ</rt></ruby>の<ruby>面談<rt>めんだん</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng. Nhờ thầy chỉ ra. Buổi gặp tới em sẽ báo cáo lại.)* |

---

## Tình huống 8 — Office hour Watanabe · 28/11 15:00, báo sensei về sự cố

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>先日<rt>せんじつ</rt></ruby>ご<ruby>指摘<rt>してき</rt></ruby>いただいた Redis のメモリの<ruby>件<rt>けん</rt></ruby>、<ruby>実際<rt>じっさい</rt></ruby>にステージングで OOM が<ruby>発生<rt>はっせい</rt></ruby>しました。<br>*(Thầy Watanabe, vấn đề memory Redis hôm trước thầy chỉ — đã thực sự bị OOM trên staging ạ.)* |
| Watanabe | やはり。どう<ruby>対応<rt>たいおう</rt></ruby>しましたか?<br>*(Quả nhiên. Em xử lý thế nào?)* |
| Đại | セッションを Postgres に<ruby>移<rt>うつ</rt></ruby>し、Redis は<ruby>頻繁<rt>ひんぱん</rt></ruby>な<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みキャッシュのみにしました。<ruby>現在<rt>げんざい</rt></ruby>はメモリ<ruby>使用率<rt>しようりつ</rt></ruby>が60% で<ruby>安定<rt>あんてい</rt></ruby>しております。<br>*(Em chuyển session sang Postgres, Redis chỉ để cache đọc dồn dập. Hiện tại memory ổn định ở 60% ạ.)* |
| Watanabe | いい<ruby>対応<rt>たいおう</rt></ruby>です。<ruby>本番<rt>ほんばん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>発見<rt>はっけん</rt></ruby>できたのは<ruby>大<rt>おお</rt></ruby>きいですよ。<br>*(Xử lý tốt. Phát hiện trước khi vào production là quan trọng đấy.)* |
| Đại | はい、ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございました。<br>*(Vâng, em cảm ơn thầy chỉ dẫn ạ.)* |

---

## Tình huống 9 — Phòng Aiko · 5/12 21:00, review UI cuối

| Vai | Lời thoại |
|---|---|
| Aiko | (chia màn hình) <ruby>最終<rt>さいしゅう</rt></ruby>UI<ruby>確認<rt>かくにん</rt></ruby>です。スマホ<ruby>表示<rt>ひょうじ</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Check UI final nhé. Cả phần hiển thị mobile nữa.)* |
| Đại | フォーラムの<ruby>投稿<rt>とうこう</rt></ruby><ruby>画面<rt>がめん</rt></ruby>、タグの<ruby>位置<rt>いち</rt></ruby>がもう<ruby>少<rt>すこ</rt></ruby>し<ruby>上<rt>うえ</rt></ruby>でもいいかも。<br>*(Màn post forum, vị trí tag có vẻ nên đẩy lên chút.)* |
| Aiko | <ruby>確<rt>たし</rt></ruby>かに。<ruby>修正<rt>しゅうせい</rt></ruby>します。あと、ダークモードはどうですか?<br>*(Đúng đấy. Tớ sửa. Còn dark mode thấy thế nào?)* |
| Đại | いいね。<ruby>夜中<rt>よなか</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うことが<ruby>多<rt>おお</rt></ruby>いから、SV にも<ruby>喜<rt>よろこ</rt></ruby>ばれると<ruby>思<rt>おも</rt></ruby>う。<br>*(Hay. SV hay dùng đêm khuya, chắc thích đấy.)* |
| Aiko | じゃあ<ruby>明日<rt>あした</rt></ruby>までにダークモードも<ruby>仕上<rt>しあ</rt></ruby>げる。<br>*(Vậy mai tớ làm xong cả dark mode.)* |

---

## Tình huống 10 — Quán cafe Tully's Toyonaka · 11/12 17:00, rehearsal phát biểu

*Đại cầm slide trên iPad. Yamato cầm đồng hồ bấm giờ.*

| Vai | Lời thoại |
|---|---|
| Đại | (rehearsal) <ruby>本日<rt>ほんじつ</rt></ruby>は「OsakaU CS Hub」の<ruby>発表<rt>はっぴょう</rt></ruby>をさせていただきます。<ruby>私<rt>わたし</rt></ruby>たちチームOSU CS3 の<ruby>四<rt>よん</rt></ruby><ruby>名<rt>めい</rt></ruby>でございます。<br>*(Xin phép hôm nay được phát biểu về "OsakaU CS Hub". Chúng em là 4 thành viên team OSU CS3 ạ.)* |
| Yamato | (bấm giờ) いまの<ruby>導入<rt>どうにゅう</rt></ruby>30<ruby>秒<rt>びょう</rt></ruby>。<ruby>残<rt>のこ</rt></ruby>り4<ruby>分<rt>ぷん</rt></ruby>30。<br>*(Phần mở 30 giây. Còn 4 phút 30.)* |
| Đại | <ruby>解決<rt>かいけつ</rt></ruby>した<ruby>課題<rt>かだい</rt></ruby>は、<ruby>学科<rt>がっか</rt></ruby>101<ruby>名<rt>めい</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>の<ruby>難<rt>むずか</rt></ruby>しさです。<br>*(Bài toán đã giải là khó khăn chia sẻ thông tin của khoa 101 SV ạ.)* |
| Aiko | (chen vào) もう<ruby>少<rt>すこ</rt></ruby>しゆっくり<ruby>話<rt>はな</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいよ。<ruby>早口<rt>はやくち</rt></ruby>になってる。<br>*(Nói chậm hơn chút đi. Đang nói nhanh quá.)* |
| Đại | (gật) ありがとう。もう<ruby>一度<rt>いちど</rt></ruby>。<br>*(Cảm ơn. Lần nữa nhé.)* |
| Lin Wei | (English) Dai, when you say production, pause one beat. Let it sink in.<br>*(Đại, lúc nói "production" hãy ngừng 1 nhịp. Cho người nghe thấm.)* |

---

## Tình huống 11 — Server room · 12/12 23:50, launch production

*Terminal đỏ chữ trắng. Bốn người chen quanh laptop Đại.*

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Final health check pass. Ready when you are.<br>*(Health check cuối qua rồi. Sẵn sàng khi cậu muốn.)* |
| Đại | (gõ terminal) <ruby>本番<rt>ほんばん</rt></ruby>リリース、いきます。3、2、1...<br>*(Chính thức release production. 3, 2, 1...)* |
| Đại | (Enter) `gh release create v1.0.0 --notes "First production launch"`<br>(Enter) `gh release create v1.0.0 --notes "First production launch"` |
| Yamato | (mở browser) https://cs-hub.osu-cs3.dev →<ruby>表示<rt>ひょうじ</rt></ruby>OK!<br>*(Hiển thị OK!)* |
| Aiko | (LINE 101 SV) みなさん、お<ruby>待<rt>ま</rt></ruby>たせしました! 「OsakaU CS Hub」<ruby>公開<rt>こうかい</rt></ruby>です! GitHub<ruby>認証<rt>にんしょう</rt></ruby>でご<ruby>登録<rt>とうろく</rt></ruby>ください!<br>*(Mọi người chờ đã lâu! "OsakaU CS Hub" mở rồi! Đăng ký bằng GitHub nhé!)* |
| Đại | (Datadog dashboard) <ruby>登録<rt>とうろく</rt></ruby>1<ruby>件<rt>けん</rt></ruby><ruby>来<rt>き</rt></ruby>た! 2<ruby>件<rt>けん</rt></ruby>!<br>*(Có đăng ký 1 người! 2 người!)* |
| Lin Wei | (English) 10 minutes in: 25 signups. Trending.<br>*(Sau 10 phút: 25 đăng ký. Đang trending.)* |

---

## Tình huống 12 — Phòng Đại · 13/12 0:30, nhắn Mai sau launch

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai) Em ơi, vừa launch production lúc 12 giờ đêm. 25 người đăng ký trong 10 phút đầu. Mệt nhưng vui muốn xỉu. |
| Mai | (LINE) Chúc mừng anh!!! Em vừa ngủ dậy đọc tin nhắn, mừng quá. Anh có ăn gì chưa? |
| Đại | (LINE) Chưa em, cả nhóm còn ngồi xem dashboard. Tony cho phần cơm tối trong tủ lạnh rồi. Em ngủ tiếp đi, mai gọi nhé. |
| Mai | (LINE) Ừ anh. Nhớ uống nước. Em hãnh diện về anh lắm đó. |

---

## Tình huống 13 — Giảng đường lớn A-101 · 22/12 14:00, phát biểu cuối khóa

*20 nhóm. Đại là nhóm thứ 13. Lên slide đầu.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺先生<rt>わたなべせんせい</rt></ruby>、<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はチームOSU CS3「OsakaU CS Hub」の<ruby>発表<rt>はっぴょう</rt></ruby>をさせていただきます。<br>*(Thầy Watanabe và quý vị, hôm nay em xin được phát biểu về "OsakaU CS Hub" của team OSU CS3 ạ.)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby><ruby>公開<rt>こうかい</rt></ruby>から10<ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>で、101<ruby>名<rt>めい</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>生<rt>せい</rt></ruby>のうち<ruby>七十五<rt>しちじゅうご</rt></ruby><ruby>名<rt>めい</rt></ruby>がアクティブ<ruby>利用者<rt>りようしゃ</rt></ruby>となっております。<br>*(Sau 10 ngày từ ngày public, 75/101 SV của khoa đã là active user ạ.)* |
| Đại | ノート<ruby>投稿<rt>とうこう</rt></ruby>250<ruby>件<rt>けん</rt></ruby>、フォーラムスレッド95<ruby>件<rt>けん</rt></ruby>です。<ruby>運用<rt>うんよう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に Redis OOM の<ruby>問題<rt>もんだい</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しましたが、<ruby>本番<rt>ほんばん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>解決<rt>かいけつ</rt></ruby>できました。<br>*(250 bài note, 95 thread forum. Trong vận hành đã gặp lỗi Redis OOM nhưng đã giải quyết trước khi vào production ạ.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>実<rt>じつ</rt></ruby>トラフィックを<ruby>10日<rt>とおか</rt></ruby><ruby>維持<rt>いじ</rt></ruby>できているのは20チーム<ruby>中<rt>ちゅう</rt></ruby>2チームだけです。<ruby>採点<rt>さいてん</rt></ruby>はA+。<br>*(Tuyệt vời. Duy trì traffic thật trong 10 ngày — chỉ 2/20 nhóm làm được. Điểm A+.)* |
| Đại | ありがとうございます。チーム<ruby>全員<rt>ぜんいん</rt></ruby>を<ruby>代表<rt>だいひょう</rt></ruby>して<ruby>御礼<rt>おれい</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Em cảm ơn thầy ạ. Em xin thay mặt cả nhóm cảm ơn ạ.)* |

---

## Tình huống 14 — Izakaya Toyonaka · 22/12 19:30,打ち上げ cuối kỳ

| Vai | Lời thoại |
|---|---|
| Yamato | お<ruby>疲<rt>つか</rt></ruby>れさま! A+!<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Vất vả rồi! A+! Cạn ly!)* |
| Bốn người | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Aiko | ダイ、<ruby>発表<rt>はっぴょう</rt></ruby>のとき、ゆっくり<ruby>話<rt>はな</rt></ruby>せてたよ。リハーサルの<ruby>成果<rt>せいか</rt></ruby>ね。<br>*(Đại, lúc phát biểu nói chậm được rồi đấy. Rehearsal có kết quả nhỉ.)* |
| Đại | ありがとう。みんなのおかげです。<br>*(Cảm ơn. Nhờ mọi người cả.)* |
| Lin Wei | (English) Next semester let's do something bigger. Maybe a startup idea?<br>*(Kỳ sau làm gì lớn hơn nhỉ. Ý tưởng startup chăng?)* |
| Đại | (cười) <ruby>考<rt>かんが</rt></ruby>えておく。<br>*(Để tớ nghĩ xem.)* |

---

## Tình huống 15 — Phòng Đại · 22/12 23:30, gọi Mai tổng kết

*Cảnh tiếng Việt — Đại gọi video Mai sau bữa打ち上げ.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi, vừa về đến nhà. Hôm nay phát biểu được A+ em ạ. |
| Mai | (tiếng Việt) Chúc mừng anh! Thầy nói gì cụ thể không anh? |
| Đại | (tiếng Việt) Thầy nói trong 20 nhóm chỉ 2 nhóm giữ được traffic thật 10 ngày. Trong đó có nhóm anh. Thầy dùng từ 素晴らしい — kiểu "tuyệt vời" ấy em. |
| Mai | (tiếng Việt) Trời ơi vui quá. Mà anh kể em nghe vụ Redis OOM hôm trước đi. Em nghe loáng thoáng mà chưa hiểu lắm. |
| Đại | (tiếng Việt) À, OOM là Out Of Memory — server hết RAM nên hệ điều hành nó tự giết tiến trình Redis luôn. May là phát hiện ở staging chứ chưa lên production. Anh học được mẫu câu báo cáo sự cố với sensei: "先日ご指摘いただいた件、実際に発生しました" — kiểu "vấn đề thầy chỉ hôm trước, đã thật sự xảy ra rồi ạ". |
| Mai | (tiếng Việt) Em nhớ câu đó. Sang năm em đi học lại Yamato School, em cũng phải biết báo cáo kiểu đó với sensei. |
| Đại | (tiếng Việt) Ừ em. Mà nay phát biểu xong, Lin Wei nó bảo kỳ sau làm cái gì lớn hơn — kiểu startup ấy. Anh thấy hơi le lói chút. |
| Mai | (tiếng Việt) Em ủng hộ. Nhưng anh ngủ đi đã, 12 giờ rưỡi rồi đấy. |

---

## Đọng lại chương 9

Đại học cách **chia 担当 trong nhóm 4 người** (backend/algorithm/UI/DevOps), **báo cáo standup hằng ngày** (`今日のスタンドアップ始めます`), **xin xác nhận sensei** (`少しお時間よろしいでしょうか? 〜の確認をお願いしたいです`), và **hỏi lại khi chưa hiểu thuật ngữ tiếng Anh** từ Lin Wei (`〜というのは具体的に何?・もう一度確認させてください`). Khi xảy ra sự cố Redis OOM, Đại học mẫu **báo cáo sensei về sự cố và giải pháp** (`先日ご指摘いただいた件、実際に〜が発生しました・〜のように対応しました`). Đỉnh cao là **bài phát biểu trang trọng cuối khóa** (`本日は〜の発表をさせていただきます・チーム全員を代表して御礼申し上げます`) — đạt A+, 75/101 SV active. Buổi tối Đại gọi Mai bằng tiếng Việt, kể lại sự cố và mẫu câu mới học.

> Từ vựng & mẫu câu chương này: プロジェクト演習・本番環境・担当・スタンドアップ・〜というのは・もう一度確認させてください・先日ご指摘いただいた件・〜のように対応しました・〜の確認をお願いしたいです・本日は〜の発表をさせていただきます・OOM・ステージング・解散・乾杯・素晴らしい・チーム全員を代表して・〜させていただきます

## Bí quyết chương

- **Phát biểu trang trọng dùng けんじょうご**: `発表をさせていただきます・御礼申し上げます` — bắt buộc với sensei và giảng đường lớn.
- **Hỏi lại thuật ngữ tiếng Anh từ Lin Wei**: Đừng giả vờ hiểu. `〜というのは具体的に何?` luôn an toàn.
- **Báo sự cố cho sensei dạng đối ngẫu**: nhắc lại lời sensei từng cảnh báo → trình bày fact → trình bày giải pháp → cảm ơn chỉ dẫn. Đây là pattern báo cáo Nhật điển hình.
- **Standup Discord nhóm SV CS**: bắt đầu bằng tên người + danh từ phụ trách + tiến độ + việc kẹt. Ngắn gọn ≤2 câu/người.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 演習 | えんしゅう | DIỄN TẬP | thực tập, bài tập lớn |
| 編成 | へんせい | BIÊN THÀNH | tổ chức, lập đội |
| 課題 | かだい | KHOÁ ĐỀ | đề bài, nhiệm vụ |
| 仮 | かり | GIẢ | tạm, giả lập |
| 本物 | ほんもの | BẢN VẬT | đồ thật |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 昼休み | ひるやすみ | TRÚ HƯU | giờ nghỉ trưa |
| 身近 | みぢか | THÂN CẬN | gần gũi |
| 流れる | ながれる | LƯU | trôi đi |
| 講義 | こうぎ | GIẢNG NGHĨA | bài giảng |
| 探す | さがす | THÁM | tìm |
| 整える | ととのえる | CHỈNH | sắp xếp, chuẩn bị |
| 指摘 | してき | CHỈ TRÍCH | chỉ ra, góp ý |
| 限定 | げんてい | HẠN ĐỊNH | giới hạn |
| 認証 | にんしょう | NHẬN CHỨNG | xác thực, auth |
| 完了 | かんりょう | HOÀN LIỄU | hoàn thành |
| 方針 | ほうしん | PHƯƠNG CHÂM | hướng đi |
| 調査 | ちょうさ | ĐIỀU TRA | khảo sát |
| 全文検索 | ぜんぶんけんさく | TOÀN VĂN KIỂM SÁCH | full-text search |
| 不要 | ふよう | BẤT YẾU | không cần |
| 投稿 | とうこう | ĐẦU CẢO | bài đăng |
| 解散 | かいさん | GIẢI TÁN | giải tán |
| 影響 | えいきょう | ẢNH HƯỞNG | ảnh hưởng |
| 発見 | はっけん | PHÁT KIẾN | phát hiện |
| 当たる | あたる | ĐƯƠNG | trúng, đúng |
| 面談 | めんだん | DIỆN ĐÀM | gặp mặt nói chuyện |
| 発生 | はっせい | PHÁT SINH | xảy ra |
| 安定 | あんてい | AN ĐỊNH | ổn định |
| 使用率 | しようりつ | SỬ DỤNG SUẤT | tỷ lệ sử dụng |
| 最終 | さいしゅう | TỐI CHUNG | cuối cùng |
| 位置 | いち | VỊ TRÍ | vị trí |
| 維持 | いじ | DUY TRÌ | duy trì |
| 採点 | さいてん | THẢI ĐIỂM | chấm điểm |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 御礼 | おれい | NGỰ LỄ | cảm ơn (lịch sự) |
| 早口 | はやくち | TẢO KHẨU | nói nhanh |
| 健康 | けんこう | KIỆN KHANG | sức khoẻ |
