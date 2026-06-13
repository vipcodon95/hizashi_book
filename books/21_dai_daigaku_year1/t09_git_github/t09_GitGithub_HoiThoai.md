# Sách sinh viên Đại học Osaka · T9. Git + GitHub + open source intro (Git・GitHub入門)

> **Mục tiêu nhân vật:** Đại 22 tuổi, năm 1 Đại học Osaka, tháng 12/2026. Học các mẫu hội thoại tiếng Nhật khi nói chuyện với guest lecturer chuyên ngành IT: chào hỏi và đặt câu hỏi keigo với 講師, mẫu câu trao đổi review code (`PR を確認しました`・`approve します`), mẫu câu báo cáo conflict (`〜で競合が起きました`), mẫu câu nhờ kèm cặp (`〜について教えていただけませんか`), mẫu câu cảm ơn maintainer open source bằng tiếng Nhật trang trọng, và mẫu câu chia sẻ tin vui với cohort qua LINE (`〜が merge されました！`).

---

## Bối cảnh

Tháng 12/2026, cuối kỳ 1 năm nhất. Khoa CNTT mời Kawasaki-san (40t, GitHub Japan DevRel) đến giảng khách 1 buổi cả ngày về Git và GitHub. Đại đã có account GitHub 1 năm nay (từ trường tiếng) nhưng chỉ commit cá nhân, chưa từng đóng góp open source. Cohort cùng học: Yamato, Aiko, Lin Wei, Rajesh. Chương này tập trung các mẫu câu nói với guest lecturer, mẫu câu review PR và mẫu câu báo cáo conflict bằng tiếng Nhật chuyên ngành IT.

---

## Tình huống 1 — Giảng đường C-201 · 9:55, chào hỏi guest lecturer trước giờ giảng

*Đại đến sớm, gặp Kawasaki-san đang chuẩn bị slide.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>川崎<rt>かわさき</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Kawasaki, chào anh ạ. Hôm nay nhờ anh giúp đỡ ạ.)* |
| Kawasaki | おはようございます。<ruby>君<rt>きみ</rt></ruby>は<ruby>留学生<rt>りゅうがくせい</rt></ruby>ですか?<br>*(Chào em. Em là du học sinh à?)* |
| Đại | はい、ベトナムから<ruby>来<rt>き</rt></ruby>ました。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。GitHubは1<ruby>年<rt>ねん</rt></ruby>くらい<ruby>使<rt>つか</rt></ruby>っていますが、オープンソースには<ruby>貢献<rt>こうけん</rt></ruby>したことがありません。<br>*(Vâng, em từ Việt Nam sang. Em là Nguyễn Đại ạ. Em dùng GitHub khoảng 1 năm rồi, nhưng chưa từng đóng góp open source.)* |
| Kawasaki | そうですか。<ruby>今日<rt>きょう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてのPRを<ruby>出<rt>だ</rt></ruby>すところまでやりますよ。<ruby>楽<rt>たの</rt></ruby>しみにしててください。<br>*(Vậy à. Hôm nay chúng ta sẽ làm tới chỗ gửi PR đầu tiên đấy. Cứ chờ xem nhé.)* |
| Đại | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em sẽ cố gắng!)* |

---

## Tình huống 2 — Giảng đường C-201 · 10:00, mở bài về lịch sử Git

| Vai | Lời thoại |
|---|---|
| Kawasaki | みなさん、おはようございます。GitHub JapanのDevRel、<ruby>川崎<rt>かわさき</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はGit・GitHub<ruby>入門<rt>にゅうもん</rt></ruby><ruby>講義<rt>こうぎ</rt></ruby>です。<br>*(Các bạn chào buổi sáng. Tôi là Kawasaki, DevRel của GitHub Japan. Hôm nay là buổi giảng nhập môn Git và GitHub.)* |
| Kawasaki | まず<ruby>歴史<rt>れきし</rt></ruby>から。Gitは2005<ruby>年<rt>ねん</rt></ruby>、Linuxの<ruby>創始者<rt>そうししゃ</rt></ruby>Linus Torvaldsが<ruby>開発<rt>かいはつ</rt></ruby>しました。<ruby>分散型<rt>ぶんさんがた</rt></ruby>バージョン<ruby>管理<rt>かんり</rt></ruby>システム、つまりDVCSです。<br>*(Đầu tiên là lịch sử. Git được Linus Torvalds, người sáng lập Linux, phát triển năm 2005. Đây là hệ thống quản lý phiên bản phân tán, tức DVCS.)* |
| Kawasaki | GitHubは2008<ruby>年<rt>ねん</rt></ruby><ruby>創業<rt>そうぎょう</rt></ruby>、2018<ruby>年<rt>ねん</rt></ruby>にMicrosoftが<ruby>買収<rt>ばいしゅう</rt></ruby>しました。<ruby>現在<rt>げんざい</rt></ruby>のユーザー<ruby>数<rt>すう</rt></ruby>は1<ruby>億人<rt>おくにん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えています。<br>*(GitHub thành lập 2008, được Microsoft mua lại năm 2018. Hiện tại số người dùng đã vượt 100 triệu.)* |
| Đại | <ruby>質問<rt>しつもん</rt></ruby>してもよろしいですか? Gitと<ruby>他<rt>ほか</rt></ruby>のバージョン<ruby>管理<rt>かんり</rt></ruby>ツール、たとえばSVNとの<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Em hỏi được không ạ? Khác biệt giữa Git và các công cụ khác như SVN là gì ạ?)* |
| Kawasaki | いい<ruby>質問<rt>しつもん</rt></ruby>です。SVNは<ruby>中央集権型<rt>ちゅうおうしゅうけんがた</rt></ruby>、Gitは<ruby>分散型<rt>ぶんさんがた</rt></ruby>。Gitは<ruby>各<rt>かく</rt></ruby>クローンが<ruby>完全<rt>かんぜん</rt></ruby>な<ruby>履歴<rt>りれき</rt></ruby>を<ruby>持<rt>も</rt></ruby>つので、オフラインでも commit できます。<br>*(Câu hỏi hay. SVN là tập trung, Git là phân tán. Mỗi clone Git có lịch sử đầy đủ nên có thể commit offline.)* |

---

## Tình huống 3 — Phòng thực hành CS-104 · 10:30, branch và merge thực hành

*Cohort ngồi 5 đứa cùng dãy máy. Kawasaki đi quanh kiểm tra terminal.*

| Vai | Lời thoại |
|---|---|
| Kawasaki | では<ruby>実習<rt>じっしゅう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。`feature/add-search` というブランチを<ruby>作成<rt>さくせい</rt></ruby>してください。<br>*(Bây giờ vào phần thực hành. Hãy tạo nhánh tên `feature/add-search`.)* |
| Đại | `git checkout -b feature/add-search` でいいですか?<br>*(Dùng `git checkout -b feature/add-search` được không ạ?)* |
| Kawasaki | はい、それで OK です。<ruby>変更<rt>へんこう</rt></ruby>を<ruby>加<rt>くわ</rt></ruby>えたら、add → commit → push の<ruby>順<rt>じゅん</rt></ruby>でやってみてください。<br>*(Vâng, được. Sửa xong thì làm theo thứ tự add → commit → push nhé.)* |
| Đại | (gõ terminal, nói nhỏ với Yamato) Yamato、push が<ruby>終<rt>お</rt></ruby>わったらレビューしてくれる?<br>*(Yamato ơi, push xong cậu review giúp tớ nhé?)* |
| Yamato | いいよ。reviewerに<ruby>指定<rt>してい</rt></ruby>してくれ。<br>*(OK. Cứ chỉ định tớ làm reviewer đi.)* |
| Đại | ありがとう。GitHub UIで「Create Pull Request」を<ruby>押<rt>お</rt></ruby>して、reviewerに<ruby>君<rt>きみ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>したよ。<br>*(Cảm ơn. Tớ vừa bấm "Create Pull Request" trên GitHub và thêm cậu làm reviewer rồi.)* |

---

## Tình huống 4 — Phòng thực hành · 10:45, review PR và approve qua LINE

| Vai | Lời thoại |
|---|---|
| Yamato | (LINE) PRを<ruby>確認<rt>かくにん</rt></ruby>しました。コードはきれいですね。Approveします!<br>*(Tớ xem PR rồi. Code gọn gàng đấy. Approve nhé!)* |
| Đại | (LINE) ありがとう! <ruby>1<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いていい? `merge commit` と `squash merge` どっちがいい?<br>*(Cảm ơn cậu! Cho tớ hỏi 1 cái nhé — `merge commit` với `squash merge`, cái nào tốt hơn?)* |
| Yamato | (LINE) <ruby>小<rt>ちい</rt></ruby>さい<ruby>機能<rt>きのう</rt></ruby>なら squash merge が<ruby>履歴<rt>りれき</rt></ruby>きれいだよ。<br>*(Tính năng nhỏ thì squash merge cho lịch sử gọn hơn đấy.)* |
| Đại | (LINE) わかった、squash で merge する。<br>*(OK, tớ squash merge nhé.)* |
| Yamato | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>。merge<ruby>後<rt>ご</rt></ruby>、ブランチも<ruby>削除<rt>さくじょ</rt></ruby>しといて。<br>*(OK. Merge xong nhớ xóa branch luôn nhé.)* |

---

## Tình huống 5 — Phòng thực hành · 11:00, gặp conflict thật, hỏi lại Kawasaki

*Đại pull main, terminal báo CONFLICT in `app.py`.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>川崎<rt>かわさき</rt></ruby>さん、すみません。`git pull origin main` をしたら、`app.py` で<ruby>競合<rt>きょうごう</rt></ruby>が<ruby>起<rt>お</rt></ruby>きました。どうすればいいでしょうか?<br>*(Anh Kawasaki, em xin phép. Em chạy `git pull origin main` thì bị conflict ở `app.py`. Em phải làm sao ạ?)* |
| Kawasaki | <ruby>競合<rt>きょうごう</rt></ruby>は<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>のことですよ。VSCodeで<ruby>開<rt>ひら</rt></ruby>くと `<<<<<<< HEAD` と `>>>>>>> main` のマーカーが<ruby>見<rt>み</rt></ruby>えますか?<br>*(Conflict là chuyện bình thường thôi. Mở bằng VSCode em có thấy các marker `<<<<<<< HEAD` và `>>>>>>> main` không?)* |
| Đại | はい、<ruby>見<rt>み</rt></ruby>えます。<br>*(Vâng, em thấy rồi ạ.)* |
| Kawasaki | では<ruby>両方<rt>りょうほう</rt></ruby><ruby>残<rt>のこ</rt></ruby>すか、どちらかを<ruby>選<rt>えら</rt></ruby>ぶか、<ruby>判断<rt>はんだん</rt></ruby>してください。<ruby>終<rt>お</rt></ruby>わったらマーカーを<ruby>消<rt>け</rt></ruby>して、add と commit で<ruby>解決<rt>かいけつ</rt></ruby>します。<br>*(Em quyết định giữ cả hai hay chọn một bên. Sửa xong xóa marker rồi add và commit để giải quyết.)* |
| Đại | わかりました。<ruby>両方<rt>りょうほう</rt></ruby><ruby>残<rt>のこ</rt></ruby>します。<br>*(Em hiểu rồi. Em giữ cả hai ạ.)* |
| Aiko | (ngồi bên cạnh) <ruby>競合<rt>きょうごう</rt></ruby><ruby>解決<rt>かいけつ</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>かったけど、<ruby>慣<rt>な</rt></ruby>れますね!<br>*(Lúc đầu sợ giải quyết conflict nhưng rồi cũng quen đấy nhỉ!)* |

---

## Tình huống 6 — Phòng thực hành · 11:30, Kawasaki giảng rebase vs merge

| Vai | Lời thoại |
|---|---|
| Kawasaki | <ruby>次<rt>つぎ</rt></ruby>はmergeとrebaseの<ruby>違<rt>ちが</rt></ruby>いです。mergeは<ruby>合流<rt>ごうりゅう</rt></ruby>の<ruby>履歴<rt>りれき</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>り、<ruby>枝分<rt>えだわ</rt></ruby>かれが<ruby>見<rt>み</rt></ruby>えます。<br>*(Tiếp theo là khác biệt giữa merge và rebase. Merge giữ lại lịch sử hợp nhánh, thấy được chia nhánh.)* |
| Kawasaki | rebaseは<ruby>履歴<rt>りれき</rt></ruby>が<ruby>一直線<rt>いっちょくせん</rt></ruby>になります。<ruby>注意<rt>ちゅうい</rt></ruby>:push<ruby>済<rt>ず</rt></ruby>みのブランチをrebaseするのは<ruby>危険<rt>きけん</rt></ruby>です。<br>*(Rebase làm lịch sử thẳng. Lưu ý: rebase nhánh đã push lên rất nguy hiểm.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>のチームはmergeの<ruby>前<rt>まえ</rt></ruby>にrebaseしてから<ruby>送<rt>おく</rt></ruby>ります。<ruby>履歴<rt>りれき</rt></ruby>がきれいで<ruby>読<rt>よ</rt></ruby>みやすいです。<br>*(Team em luôn rebase trước rồi mới gửi merge. Lịch sử gọn gàng và dễ đọc.)* |
| Kawasaki | いいやり<ruby>方<rt>かた</rt></ruby>です。「<ruby>個人<rt>こじん</rt></ruby>ブランチはrebase、<ruby>共有<rt>きょうゆう</rt></ruby>ブランチはmerge」と<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Cách hay đấy. Hãy nhớ "branch cá nhân thì rebase, branch chia sẻ thì merge".)* |
| Đại | <ruby>個人<rt>こじん</rt></ruby>ブランチはrebase、<ruby>共有<rt>きょうゆう</rt></ruby>ブランチはmergeですね。メモしました。<br>*(Branch cá nhân thì rebase, branch chia sẻ thì merge. Em ghi lại rồi ạ.)* |

---

## Tình huống 7 — Căng-tin sinh viên · 12:30, ăn trưa với cohort bàn về GitHub Flow

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>午前中<rt>ごぜんちゅう</rt></ruby>のレクチャー、<ruby>面白<rt>おもしろ</rt></ruby>かったね。<br>*(Buổi sáng giảng hay thật đấy nhỉ.)* |
| Lin Wei | (xen tiếng Anh) GitHub Flow is so simple, just 5 steps. Atlassianの GitFlow より<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(GitHub Flow đơn giản thật, chỉ 5 bước. Dễ hiểu hơn GitFlow của Atlassian nhiều.)* |
| Đại | Lin Wei、GitFlowって、まだ<ruby>使<rt>つか</rt></ruby>われてるの?<br>*(Lin Wei ơi, GitFlow giờ còn được dùng không?)* |
| Lin Wei | <ruby>大企業<rt>だいきぎょう</rt></ruby>とかリリース<ruby>頻度<rt>ひんど</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いところはまだ<ruby>使<rt>つか</rt></ruby>ってるよ。スタートアップはGitHub Flow一<ruby>択<rt>たく</rt></ruby>。<br>*(Doanh nghiệp lớn hoặc nơi release thưa thì vẫn dùng. Startup thì chỉ GitHub Flow thôi.)* |
| Yamato | <ruby>午後<rt>ごご</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてのOSS PRだって。ドキドキするな。<br>*(Chiều nay là PR open source đầu tiên đó. Hồi hộp ghê.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>もドキドキ。<ruby>英語<rt>えいご</rt></ruby>でPR<ruby>説明<rt>せつめい</rt></ruby><ruby>書<rt>か</rt></ruby>けるかな…<br>*(Tớ cũng hồi hộp. Không biết viết mô tả PR bằng tiếng Anh nổi không…)* |
| Lin Wei | (tiếng Anh) Đại, your English is fine. Just be concise — what, why, how.<br>*(Đại ơi, tiếng Anh cậu OK mà. Viết gọn thôi — cái gì, tại sao, làm thế nào.)* |

---

## Tình huống 8 — Phòng thực hành · 14:30, Kawasaki hướng dẫn PR open source đầu tiên

| Vai | Lời thoại |
|---|---|
| Kawasaki | <ruby>午後<rt>ごご</rt></ruby>はみなさん<ruby>初<rt>はじ</rt></ruby>めてのオープンソースPRを<ruby>出<rt>だ</rt></ruby>しましょう。<ruby>練習<rt>れんしゅう</rt></ruby><ruby>用<rt>よう</rt></ruby>のリポジトリは `firstcontributions/first-contributions` です。<br>*(Buổi chiều mọi người sẽ gửi PR open source đầu tiên. Repo luyện tập là `firstcontributions/first-contributions`.)* |
| Kawasaki | まず `gh repo fork` でフォーク、ブランチを<ruby>切<rt>き</rt></ruby>って、Contributors.mdに<ruby>自分<rt>じぶん</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Trước hết fork bằng `gh repo fork`, tạo branch, rồi thêm tên mình vào Contributors.md.)* |
| Đại | <ruby>川崎<rt>かわさき</rt></ruby>さん、<ruby>名前<rt>なまえ</rt></ruby>はアルファベット<ruby>順<rt>じゅん</rt></ruby>に<ruby>入<rt>い</rt></ruby>れるんですか?<br>*(Anh Kawasaki, tên xếp theo thứ tự ABC ạ?)* |
| Kawasaki | はい、ABC<ruby>順<rt>じゅん</rt></ruby>です。コミットメッセージも<ruby>英語<rt>えいご</rt></ruby>で「Add 〇〇 to contributors」のように<ruby>書<rt>か</rt></ruby>いてください。<br>*(Đúng, theo ABC. Commit message cũng tiếng Anh, viết kiểu "Add OO to contributors" nhé.)* |
| Đại | わかりました。やってみます。<br>*(Em hiểu rồi. Em thử ạ.)* |

---

## Tình huống 9 — Phòng thực hành · 14:50, PR đầu tiên được auto-merge

*Đại push, mở PR trên trình duyệt, 10 phút sau bot tự động merge.*

| Vai | Lời thoại |
|---|---|
| Đại | (reo nhỏ) merge された! <ruby>川崎<rt>かわさき</rt></ruby>さん、<ruby>初<rt>はじ</rt></ruby>めてのPRがmergeされました!<br>*(Đã merge! Anh Kawasaki, PR đầu tiên của em đã merge rồi ạ!)* |
| Kawasaki | おめでとう! GitHubの<ruby>緑色<rt>みどりいろ</rt></ruby>のコントリビューショングラフ、これからどんどん<ruby>埋<rt>う</rt></ruby>めていってくださいね。<br>*(Chúc mừng! Biểu đồ contribution xanh trên GitHub, từ giờ em hãy lấp đầy nó dần dần nhé.)* |
| Đại | はい! <ruby>記念<rt>きねん</rt></ruby>スクリーンショットを<ruby>撮<rt>と</rt></ruby>っておきます。<br>*(Vâng! Em chụp ảnh kỷ niệm lại đây ạ.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>もmergeされた! 1<ruby>つ目<rt>つめ</rt></ruby>のOSS<ruby>貢献<rt>こうけん</rt></ruby>!<br>*(Tớ cũng merge rồi! Đóng góp OSS đầu tiên!)* |
| Lin Wei | (tiếng Anh) Congrats everyone! Now let's find a real bug to fix.<br>*(Chúc mừng cả nhóm! Giờ tìm bug thật mà sửa nào.)* |

---

## Tình huống 10 — Phòng thực hành · 16:00, hỏi lại Kawasaki khi chưa hiểu thuật ngữ "maintainer"

| Vai | Lời thoại |
|---|---|
| Kawasaki | みなさん、<ruby>次<rt>つぎ</rt></ruby>はmaintainerとの<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。<br>*(Tiếp theo là cách giao tiếp với maintainer.)* |
| Đại | すみません、「maintainer」というのは?<br>*(Anh cho em hỏi, "maintainer" nghĩa là sao ạ?)* |
| Kawasaki | リポジトリを<ruby>管理<rt>かんり</rt></ruby>する<ruby>人<rt>ひと</rt></ruby>のことです。PRをreview・mergeする<ruby>権限<rt>けんげん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>ですね。<br>*(Là người quản lý repo. Người có quyền review và merge PR đó.)* |
| Đại | なるほど。issueのコメントとPRの<ruby>説明<rt>せつめい</rt></ruby>、どっちが<ruby>大事<rt>だいじ</rt></ruby>ですか?<br>*(Em hiểu rồi. Comment ở issue và mô tả PR, cái nào quan trọng hơn ạ?)* |
| Kawasaki | <ruby>両方<rt>りょうほう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>ですが、PRの<ruby>説明<rt>せつめい</rt></ruby>は「<ruby>何<rt>なに</rt></ruby>を、なぜ、どうやって<ruby>直<rt>なお</rt></ruby>したか」を<ruby>明確<rt>めいかく</rt></ruby>に。issueには `Fixes #123` で<ruby>紐<rt>ひも</rt></ruby>づけます。<br>*(Cả hai đều quan trọng, nhưng mô tả PR phải nêu rõ "sửa cái gì, tại sao, sửa thế nào". Liên kết với issue bằng `Fixes #123`.)* |
| Đại | わかりました。ありがとうございます。<br>*(Em hiểu rồi. Em cảm ơn anh ạ.)* |

---

## Tình huống 11 — Ký túc xá Toyonaka · 19:30, Đại tìm bug thật trong Hugo theme

*Đại thiết lập blog Hugo cá nhân tối hôm đó, phát hiện theme `hugo-theme-stack` lỗi với RTL languages.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Yamato) Yamato、Hugoのテーマでバグ<ruby>見<rt>み</rt></ruby>つけた! sidebar が RTL の<ruby>言語<rt>げんご</rt></ruby>で<ruby>崩<rt>くず</rt></ruby>れる。<br>*(Yamato! Tớ vừa tìm thấy bug trong theme Hugo! Sidebar bị vỡ với ngôn ngữ RTL.)* |
| Yamato | (LINE) マジで? GitHubのissueで<ruby>誰<rt>だれ</rt></ruby>か<ruby>報告<rt>ほうこく</rt></ruby>してる?<br>*(Thật à? Có ai báo issue trên GitHub chưa?)* |
| Đại | (LINE) #245 にある。<ruby>誰<rt>だれ</rt></ruby>もまだPR<ruby>出<rt>だ</rt></ruby>してない。<ruby>俺<rt>おれ</rt></ruby>、<ruby>挑戦<rt>ちょうせん</rt></ruby>してみる。<br>*(Có ở #245 rồi. Chưa ai gửi PR. Tớ thử xem.)* |
| Yamato | (LINE) いいね! `[dir='rtl']` の<ruby>属性<rt>ぞくせい</rt></ruby>セレクタを<ruby>使<rt>つか</rt></ruby>えばいいと<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Hay đấy! Dùng selector thuộc tính `[dir='rtl']` là được mà.)* |
| Đại | (LINE) `flex-direction: row-reverse` でやってみる。fork して<ruby>修正<rt>しゅうせい</rt></ruby>するわ。<br>*(Tớ thử với `flex-direction: row-reverse`. Fork và sửa luôn đây.)* |
| Yamato | (LINE) <ruby>頑張<rt>がんば</rt></ruby>れ! PRの<ruby>説明<rt>せつめい</rt></ruby>、<ruby>川崎<rt>かわさき</rt></ruby>さんの<ruby>言<rt>い</rt></ruby>ってた「what / why / how」で<ruby>書<rt>か</rt></ruby>くといいよ。<br>*(Cố lên! Mô tả PR viết theo "what / why / how" như anh Kawasaki dạy đấy.)* |

---

## Tình huống 12 — Phòng KTX · 22:00, gửi PR và viết mô tả bằng tiếng Anh

| Vai | Lời thoại |
|---|---|
| Đại | (gõ một mình) Title: `fix: RTL support for sidebar layout`. <ruby>説明<rt>せつめい</rt></ruby>は<ruby>英語<rt>えいご</rt></ruby>で… let me see…<br>*(Tự lẩm bẩm.)* |
| Đại | (LINE Lin Wei) Lin Wei、PR<ruby>説明<rt>せつめい</rt></ruby>の<ruby>英語<rt>えいご</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>してくれない? `Fixes #245. Added [dir='rtl'] selector to reverse flex direction for sidebar.` これでOK?<br>*(Lin Wei ơi, check giúp tớ tiếng Anh mô tả PR với? Thế này OK không?)* |
| Lin Wei | (LINE, tiếng Anh) Looks good! Add a brief explanation of what was broken, then your fix. Like: "The sidebar had hardcoded `flex-direction: row` which broke RTL languages (Arabic, Hebrew). Added `[dir='rtl'] .sidebar { flex-direction: row-reverse; }`."<br>*(Ổn đấy! Thêm phần giải thích cái gì vỡ trước rồi mới đến fix.)* |
| Đại | (LINE) ありがとう! コピーさせてもらう。<br>*(Cảm ơn cậu! Tớ copy luôn nhé.)* |
| Đại | (gửi PR, một mình) <ruby>送<rt>おく</rt></ruby>った! あとは maintainer の<ruby>返事<rt>へんじ</rt></ruby>を<ruby>待<rt>ま</rt></ruby>つだけ。<br>*(Đã gửi! Giờ chỉ còn đợi maintainer phản hồi.)* |

---

## Tình huống 13 — Phòng KTX · 2 ngày sau 21:00, maintainer comment LGTM

| Vai | Lời thoại |
|---|---|
| Đại | (đọc notification GitHub, reo nhỏ) <ruby>来<rt>き</rt></ruby>た! コメントが<ruby>来<rt>き</rt></ruby>た!<br>*(Đến rồi! Có comment rồi!)* |
| Maintainer | (PR comment, tiếng Anh) "Great catch! The RTL fix is clean and well-targeted. LGTM, merging now. Thanks for contributing!"<br>*(Bắt bug hay đấy! Sửa RTL gọn và đúng chỗ. LGTM, merge luôn. Cảm ơn cậu đã đóng góp!)* |
| Đại | (reply PR, tiếng Anh) "Thank you so much! Glad I could help. This was my first real OSS contribution."<br>*(Em cảm ơn anh rất nhiều! Em vui vì giúp được gì đó. Đây là đóng góp OSS thật sự đầu tiên của em.)* |
| Đại | (LINE Yamato) Yamato、maintainerが merge してくれた! コメントも<ruby>褒<rt>ほ</rt></ruby>めてくれた!<br>*(Yamato! Maintainer đã merge! Còn khen tớ nữa!)* |
| Yamato | (LINE) おめでとう! GitHubのプロフィールが<ruby>華<rt>はな</rt></ruby>やかになるね! <ruby>俺<rt>おれ</rt></ruby>にも<ruby>分<rt>わ</rt></ruby>けてくれ。<br>*(Chúc mừng! Profile GitHub đẹp lên rồi đấy! Chia bí kíp cho tớ với.)* |
| Đại | (LINE) <ruby>明日<rt>あした</rt></ruby>クラスで<ruby>話<rt>はな</rt></ruby>そう!<br>*(Mai lên lớp kể nhé!)* |

---

## Tình huống 14 — Phòng KTX · 23:00, gọi video về VN cho Mai

*Đại mở video call Zalo. Mai đang ở phòng trọ Hà Nội, vừa đi dạy thực tập về.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Hôm nay anh có chuyện vui muốn khoe với em. |
| Mai | (tiếng Việt) Sao vậy anh? Mặt anh tươi quá! |
| Đại | (tiếng Việt) Anh vừa gửi pull request đầu tiên vào một dự án mã nguồn mở thật sự — một theme cho blog Hugo. Maintainer đã merge và khen anh đấy! |
| Mai | (tiếng Việt) Hay quá anh! Pull request là gì hở anh, em chưa hiểu lắm. |
| Đại | (tiếng Việt) Nó là cách mình đề nghị sửa code của người khác trên GitHub. Mình fork về máy mình, sửa, rồi gửi lại cho họ duyệt. Nếu họ thấy ổn thì họ merge — tức là gộp code mình vào sản phẩm chính. |
| Mai | (tiếng Việt) Vậy là code của anh đang chạy trên blog của bao nhiêu người trên thế giới rồi đấy! |
| Đại | (tiếng Việt) Đúng rồi em. Hôm nay anh học được bao nhiêu thứ — branch, merge, rebase, conflict, GitHub Flow. Anh Kawasaki từ GitHub Japan đến giảng cả ngày. |
| Mai | (tiếng Việt) Một tháng nữa anh về cưới em rồi đấy nhé. Em đã chuẩn bị xong áo dài. |
| Đại | (tiếng Việt) Anh nhớ! Anh đang đặt vé Vietjet 8/1. Anh thương em nhiều. |
| Mai | (tiếng Việt) Em cũng thương anh. Anh ngủ ngon nhé. |

---

## Đọng lại chương 9

Một buổi giảng khách dày đặc kiến thức Git và GitHub. Đại học mẫu câu chào hỏi guest lecturer (**「本日はよろしくお願いします」**), mẫu câu xin phép đặt câu hỏi (**「質問してもよろしいですか?」**), mẫu câu báo cáo conflict (**「〜で競合が起きました。どうすればいいでしょうか?」**), mẫu câu hỏi lại khi chưa hiểu thuật ngữ (**「〜というのは?」**), mẫu câu cảm ơn maintainer bằng tiếng Anh khi gửi PR, và mẫu câu chia sẻ tin vui qua LINE với cohort (**「merge された!」**). Đại còn đặt được PR thật đầu tiên fix bug RTL cho hugo-theme-stack và được maintainer khen LGTM. Cảnh cuối chương: Đại gọi video về VN khoe Mai, giải thích pull request và merge bằng tiếng Việt mộc mạc — vừa ôn lại bài học vừa hẹn 1 tháng nữa về cưới.

> Từ vựng & mẫu câu chương này: 分散型バージョン管理・ブランチ・マージ・リベース・競合・Pull Request・コードレビュー・GitHub Flow・GitFlow・Trunk-Based・オープンソース・コントリビューション・フォーク・LGTM・DevRel・maintainer・〜していただけませんか・〜というのは・本日はよろしくお願いします・質問してもよろしいですか・〜で競合が起きました・merge された・squash merge・rebase の前に確認

## Bí quyết chương

- **Keigo với guest lecturer**: GitHub Japan DevRel là khách doanh nghiệp đến giảng — dùng 「本日はよろしくお願いします」・「質問してもよろしいですか?」 chuẩn keigo.
- **Thuật ngữ EN bao quanh JP**: Git/GitHub/PR/merge/rebase/fork/maintainer giữ nguyên EN, nhưng câu xung quanh là JP đầy đủ với ruby — đây là cách thực tế kỹ sư IT Nhật nói chuyện.
- **「〜というのは?」**: Mẫu câu hỏi lại khi nghe thuật ngữ lạ, dùng được suốt sự nghiệp.
- **Real bug, real merge**: Hugo theme RTL fix là PR thật khả thi với SV năm 1 — không phải tô hồng.
- **Cảnh VN cuối chương**: Đại giải thích PR/merge cho Mai bằng tiếng Việt — vừa romantic vừa ôn lại bài học.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 講師 | こうし | GIẢNG SƯ | giảng viên khách |
| 貢献 | こうけん | CỐNG HIẾN | đóng góp |
| 楽しみ | たのしみ | LẠC | mong chờ |
| 講義 | こうぎ | GIẢNG NGHĨA | bài giảng |
| 歴史 | れきし | LỊCH SỬ | lịch sử |
| 創始者 | そうししゃ | SÁNG THỦY GIẢ | người sáng lập |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 分散型 | ぶんさんがた | PHÂN TÁN HÌNH | phân tán |
| 創業 | そうぎょう | SÁNG NGHIỆP | thành lập |
| 買収 | ばいしゅう | MÃI THU | mua lại |
| 現在 | げんざい | HIỆN TẠI | hiện tại |
| 億人 | おくにん | ỨC NHÂN | trăm triệu người |
| 中央集権型 | ちゅうおうしゅうけんがた | TRUNG ƯƠNG TẬP QUYỀN HÌNH | tập trung |
| 履歴 | りれき | LÝ LỊCH | lịch sử |
| 実習 | じっしゅう | THỰC TẬP | thực hành |
| 加える | くわえる | GIA | thêm |
| 確認しました | かくにんしました | XÁC NHẬN | đã kiểm tra |
| 指定 | してい | CHỈ ĐỊNH | chỉ định |
| 起きる | おきる | KHỞI | xảy ra |
| 当たり前 | あたりまえ | ĐƯƠNG TIỀN | đương nhiên |
| 残す | のこす | TÀN | giữ lại |
| 消す | けす | TIÊU | xóa |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết |
| 慣れる | なれる | QUÁN | quen |
| 合流 | ごうりゅう | HỢP LƯU | hợp dòng |
| 枝分かれ | えだわかれ | CHI PHÂN | chia nhánh |
| 一直線 | いっちょくせん | NHẤT TRỰC TUYẾN | thẳng |
| 注意 | ちゅうい | CHÚ Ý | chú ý |
| 危険 | きけん | NGUY HIỂM | nguy hiểm |
| 大企業 | だいきぎょう | ĐẠI XÍ NGHIỆP | doanh nghiệp lớn |
| 頻度 | ひんど | TẦN ĐỘ | tần suất |
| 低い | ひくい | ĐÊ | thấp |
| 一択 | いったく | NHẤT TRẠCH | duy nhất |
| 練習用 | れんしゅうよう | LUYỆN TẬP DỤNG | luyện tập |
| 切る | きる | THIẾT | tạo (branch) |
| 記念 | きねん | KỶ NIỆM | kỷ niệm |
| 撮る | とる | NHIẾP | chụp |
| 権限 | けんげん | QUYỀN HẠN | quyền |
| 明確 | めいかく | MINH XÁC | rõ ràng |
| 紐づける | ひもづける | NỮU | liên kết |
| 属性 | ぞくせい | THUỘC TÍNH | thuộc tính |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 返事 | へんじ | PHẢN SỰ | phản hồi |
| 来た | きた | LAI | đã đến |
| 褒める | ほめる | BÀO | khen |
| 華やか | はなやか | HOA | rực rỡ |
| 分ける | わける | PHÂN | chia |
