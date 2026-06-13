# Sách sinh viên Đại học Osaka · T7. OS入門 + ネットワーク — TCP/IP, HTTP, Linux

> **Mục tiêu nhân vật:** Đại (sinh viên năm 2 Osaka U, 22 tuổi, 9-10/2027, Toyonaka). Học các mẫu hội thoại tiếng Nhật của SV CS năm 2: hỏi sensei về process/thread/memory, xin senpai giảng lại OSI và TCP/UDP, demo `dig`/`curl` trong lecture, nhờ bạn bè Indo/Trung giúp debug Ubuntu, kể chuyện Linux cho bạn cùng phòng, và động viên Mai bắt đầu lớp N2 Yamato School.

---

## Bối cảnh

9-10/2027. Đại bước vào kỳ thu năm 2. Hai lecture lớn: **「OS入門」** do Nakagawa-sensei (60 tuổi, ex-Linux kernel contributor) phụ trách, và **「ネットワーク入門」** do Yamanaka-sensei (50 tuổi, ex-NTT engineer) phụ trách. Lab CS có server Linux SSH chung cho SV. Đại quyết định cài Ubuntu 24.04 dual-boot trên ThinkPad cá nhân. Cùng tuần đó Mai bắt đầu lớp N2 ở Yamato Language School (Hà Nội). Chương này tập trung các mẫu câu hỏi-đáp về OS và mạng trong giảng đường, cách demo terminal trong lecture, và hội thoại debug với bạn quốc tế.

---

## Tình huống 1 — Giảng đường E5 · 9:00, Nakagawa-sensei giảng Process vs Thread

| Vai | Lời thoại |
|---|---|
| Nakagawa | <ruby>今日<rt>きょう</rt></ruby>はプロセスとスレッドの<ruby>違<rt>ちが</rt></ruby>いから<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Hôm nay bắt đầu từ sự khác biệt giữa process và thread.)* |
| Nakagawa | プロセスは OS の<ruby>独立<rt>どくりつ</rt></ruby><ruby>実行<rt>じっこう</rt></ruby><ruby>単位<rt>たんい</rt></ruby>で、メモリ<ruby>空間<rt>くうかん</rt></ruby>は<ruby>分離<rt>ぶんり</rt></ruby>されています。<br>*(Process là đơn vị thực thi độc lập của OS, không gian bộ nhớ tách biệt.)* |
| Nakagawa | スレッドはプロセス<ruby>内<rt>ない</rt></ruby>の<ruby>軽量<rt>けいりょう</rt></ruby><ruby>実行<rt>じっこう</rt></ruby><ruby>単位<rt>たんい</rt></ruby>で、メモリを<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Thread là đơn vị thực thi nhẹ trong process, dùng chung bộ nhớ.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、メモリを<ruby>共有<rt>きょうゆう</rt></ruby>するということは、<ruby>競合<rt>きょうごう</rt></ruby><ruby>状態<rt>じょうたい</rt></ruby>が<ruby>起<rt>お</rt></ruby>こりやすいということですか？<br>*(Thầy ơi, dùng chung bộ nhớ thì có dễ xảy ra race condition không ạ?)* |
| Nakagawa | <ruby>鋭<rt>するど</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>ですね。その<ruby>通<rt>とお</rt></ruby>りです。だからミューテックスやセマフォで<ruby>排他<rt>はいた</rt></ruby><ruby>制御<rt>せいぎょ</rt></ruby>します。<br>*(Câu hỏi sắc bén. Đúng vậy. Do đó cần dùng mutex hoặc semaphore để khoá tài nguyên.)* |
| Đại | ありがとうございます。<ruby>後<rt>あと</rt></ruby>で<ruby>実際<rt>じっさい</rt></ruby>のコードで<ruby>試<rt>ため</rt></ruby>してみます。<br>*(Em cảm ơn. Lát em sẽ thử bằng code thật.)* |

---

## Tình huống 2 — Phòng lab CS · 10:30, Đại làm mẫu `ps`/`top` cho sempai

| Vai | Lời thoại |
|---|---|
| Yumi | グエンくん、プロセスの<ruby>確認<rt>かくにん</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>、もう<ruby>覚<rt>おぼ</rt></ruby>えた？<br>*(Em Nguyễn, đã nhớ cách check process chưa?)* |
| Đại | はい。`ps aux` でリストを<ruby>表示<rt>ひょうじ</rt></ruby>、`top` でリアルタイムに<ruby>監視<rt>かんし</rt></ruby>します。<br>*(Vâng. ps aux để list, top để giám sát real-time.)* |
| Đại | (gõ terminal)<br>```bash<br>$ ps aux | head<br>$ top<br>$ kill -9 12345  # force kill PID<br>```<br> |
| Yumi | OK、いいね。<ruby>次<rt>つぎ</rt></ruby>は `htop` も<ruby>試<rt>ため</rt></ruby>してみて、もっと<ruby>見<rt>み</rt></ruby>やすいから。<br>*(OK tốt. Lần sau thử htop, nhìn dễ hơn.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。インストールしておきます。<br>*(Em rõ. Em cài luôn.)* |

---

## Tình huống 3 — Giảng đường E5 · 11:00, Nakagawa giảng memory management

| Vai | Lời thoại |
|---|---|
| Nakagawa | <ruby>次<rt>つぎ</rt></ruby>は<ruby>仮想<rt>かそう</rt></ruby>メモリです。プロセスごとに<ruby>独立<rt>どくりつ</rt></ruby>したアドレス<ruby>空間<rt>くうかん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ちます。<br>*(Tiếp theo là bộ nhớ ảo. Mỗi process có không gian địa chỉ độc lập.)* |
| Nakagawa | ヒープは malloc や new で<ruby>動的<rt>どうてき</rt></ruby>に<ruby>確保<rt>かくほ</rt></ruby>、スタックは<ruby>関数呼<rt>かんすうよ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>しの<ruby>情報<rt>じょうほう</rt></ruby><ruby>用<rt>よう</rt></ruby>です。<br>*(Heap cấp phát động bằng malloc/new, Stack cho thông tin gọi hàm.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、メモリリークというのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>起<rt>お</rt></ruby>こりますか？<br>*(Thầy ơi, memory leak cụ thể xảy ra điều gì ạ?)* |
| Nakagawa | <ruby>解放<rt>かいほう</rt></ruby>し<ruby>忘<rt>わす</rt></ruby>れたメモリが<ruby>溜<rt>た</rt></ruby>まり<ruby>続<rt>つづ</rt></ruby>けて、<ruby>最後<rt>さいご</rt></ruby>に OOM killer に<ruby>殺<rt>ころ</rt></ruby>されます。<br>*(Bộ nhớ quên free tích tụ lại, cuối cùng bị OOM killer kill process.)* |
| Đại | OOM killer は Linux カーネルの<ruby>機能<rt>きのう</rt></ruby>ですよね？<br>*(OOM killer là tính năng của Linux kernel phải không ạ?)* |
| Nakagawa | そうです。<ruby>実際<rt>じっさい</rt></ruby>の<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>でよく<ruby>遭遇<rt>そうぐう</rt></ruby>します。<br>*(Đúng. Trong môi trường production thực tế gặp thường xuyên.)* |

---

## Tình huống 4 — Phòng lab · 13:00, Đại viết Python multi-thread

| Vai | Lời thoại |
|---|---|
| Đại | (gõ Python)<br>```python<br>import threading<br><br>def task(n):<br>    print(f"Task {n} running")<br><br>threads = [threading.Thread(target=task, args=(i,))<br>           for i in range(5)]<br>for t in threads: t.start()<br>for t in threads: t.join()<br>```<br> |
| Đại | (chạy) <ruby>5<rt>ご</rt></ruby>つのスレッドが<ruby>並行<rt>へいこう</rt></ruby>で<ruby>動<rt>うご</rt></ruby>きました！<br>*(5 thread chạy song song được rồi!)* |
| Yumi | (đứng sau) GIL も<ruby>知<rt>し</rt></ruby>ってる？ Python のスレッドは<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>並列<rt>へいれつ</rt></ruby>じゃないよ。<br>*(Biết GIL không? Thread của Python không phải parallel thực sự đâu.)* |
| Đại | あ、Global Interpreter Lock ですね。<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>並列<rt>へいれつ</rt></ruby>には multiprocessing を<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(À, Global Interpreter Lock. Muốn parallel thật phải dùng multiprocessing đúng không?)* |
| Yumi | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>大事<rt>だいじ</rt></ruby>なポイント。<br>*(Chính xác. Điểm quan trọng đấy.)* |

---

## Tình huống 5 — Giảng đường F2 · 14:00, Yamanaka-sensei giảng OSI 7 layers

| Vai | Lời thoại |
|---|---|
| Yamanaka | ネットワーク<ruby>入門<rt>にゅうもん</rt></ruby>へようこそ。<ruby>最初<rt>さいしょ</rt></ruby>は OSI <ruby>参照<rt>さんしょう</rt></ruby>モデル<ruby>7<rt>なな</rt></ruby><ruby>層<rt>そう</rt></ruby>です。<br>*(Chào mừng đến lớp Network. Đầu tiên là mô hình tham chiếu OSI 7 lớp.)* |
| Yamanaka | <ruby>上<rt>うえ</rt></ruby>から、<ruby>7<rt>なな</rt></ruby> Application、<ruby>6<rt>ろく</rt></ruby> Presentation、<ruby>5<rt>ご</rt></ruby> Session、<ruby>4<rt>よん</rt></ruby> Transport、<ruby>3<rt>さん</rt></ruby> Network、<ruby>2<rt>に</rt></ruby> Data Link、<ruby>1<rt>いち</rt></ruby> Physical です。<br>*(Từ trên xuống: 7 Application, 6 Presentation, 5 Session, 4 Transport, 3 Network, 2 Data Link, 1 Physical.)* |
| Đại | <ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>はありますか？<br>*(Có mẹo nhớ không ạ?)* |
| Yamanaka | <ruby>英語<rt>えいご</rt></ruby>の<ruby>覚<rt>おぼ</rt></ruby>え<ruby>方<rt>かた</rt></ruby>で「Please Do Not Throw Sausage Pizza Away」というのがあります。<br>*(Tiếng Anh có câu "Please Do Not Throw Sausage Pizza Away".)* |
| Đại | (cười) <ruby>面白<rt>おもしろ</rt></ruby>いですね。アンキカードに<ruby>登録<rt>とうろく</rt></ruby>します。<br>*(Hay quá. Em đăng ký vào thẻ Anki.)* |

---

## Tình huống 6 — Giảng đường F2 · 15:30, hỏi về TCP vs UDP

| Vai | Lời thoại |
|---|---|
| Yamanaka | TCP は<ruby>接続型<rt>せつぞくがた</rt></ruby>、<ruby>信頼性<rt>しんらいせい</rt></ruby>あり、<ruby>順序<rt>じゅんじょ</rt></ruby><ruby>保証<rt>ほしょう</rt></ruby>。Web やメールに<ruby>使<rt>つか</rt></ruby>われます。<br>*(TCP có kết nối, tin cậy, đúng thứ tự — dùng cho web và email.)* |
| Yamanaka | UDP は<ruby>非接続型<rt>ひせつぞくがた</rt></ruby>、<ruby>高速<rt>こうそく</rt></ruby>、<ruby>保証<rt>ほしょう</rt></ruby>なし。ゲーム、ストリーミング、DNS に<ruby>使<rt>つか</rt></ruby>われます。<br>*(UDP không kết nối, nhanh, không bảo đảm — dùng cho game, streaming, DNS.)* |
| Đại | <ruby>質問<rt>しつもん</rt></ruby>です。<ruby>動画<rt>どうが</rt></ruby><ruby>配信<rt>はいしん</rt></ruby>で UDP を<ruby>使<rt>つか</rt></ruby>うのは、<ruby>少<rt>すこ</rt></ruby>しデータが<ruby>欠<rt>か</rt></ruby>けてもいいから<ruby>遅<rt>おく</rt></ruby>れないようにするためですか？<br>*(Em xin hỏi. Streaming video dùng UDP là vì để mất một ít dữ liệu cũng được miễn không bị trễ đúng không ạ?)* |
| Yamanaka | <ruby>完璧<rt>かんぺき</rt></ruby>な<ruby>理解<rt>りかい</rt></ruby>です。リアルタイム<ruby>性<rt>せい</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>します。<br>*(Hiểu hoàn hảo. Ưu tiên tính real-time.)* |
| Đại | ありがとうございます。<br>*(Em cảm ơn thầy.)* |

---

## Tình huống 7 — Trước lớp F2 · 15:50, Đại làm mẫu `curl -v` trên màn chiếu

*Yamanaka mời Đại lên demo HTTPS handshake.*

| Vai | Lời thoại |
|---|---|
| Yamanaka | グエンくん、ターミナルで HTTPS の<ruby>動<rt>うご</rt></ruby>きを<ruby>見<rt>み</rt></ruby>せてもらえますか？<br>*(Em Nguyễn, em làm mẫu hoạt động HTTPS bằng terminal được không?)* |
| Đại | はい、`curl -v` で<ruby>詳<rt>くわ</rt></ruby>しい<ruby>過程<rt>かてい</rt></ruby>が<ruby>見<rt>み</rt></ruby>られます。<br>*(Vâng, dùng curl -v sẽ thấy quá trình chi tiết.)* |
| Đại | (gõ) `curl -v https://google.com` → <ruby>画面<rt>がめん</rt></ruby>に TCP <ruby>3<rt>さん</rt></ruby> way handshake、TLS handshake、HTTP/<ruby>2<rt>に</rt></ruby> response が<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>表示<rt>ひょうじ</rt></ruby>されます。<br>*(curl -v https://google.com — màn hình hiện lần lượt TCP 3-way handshake, TLS handshake, HTTP/2 response.)* |
| Yamanaka | TLS の<ruby>証明書<rt>しょうめいしょ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>も<ruby>見<rt>み</rt></ruby>えますね。<br>*(Cũng thấy được kiểm tra certificate TLS nữa.)* |
| Đại | はい。Let's Encrypt で<ruby>無料<rt>むりょう</rt></ruby>に<ruby>取<rt>と</rt></ruby>れる<ruby>証明書<rt>しょうめいしょ</rt></ruby>です。<br>*(Vâng. Certificate có thể lấy miễn phí từ Let's Encrypt.)* |

---

## Tình huống 8 — Phòng lab · 17:00, Yamanaka giảng DNS hierarchy

| Vai | Lời thoại |
|---|---|
| Yamanaka | DNS は<ruby>階層<rt>かいそう</rt></ruby><ruby>構造<rt>こうぞう</rt></ruby>です。root →<ruby>3<rt>さん</rt></ruby>TLD (com, jp) → authoritative の<ruby>順<rt>じゅん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>します。<br>*(DNS phân cấp: root → TLD (com, jp) → authoritative.)* |
| Đại | (terminal) `dig vandai.dev` で<ruby>調<rt>しら</rt></ruby>べてみます。<br>*(Em thử bằng dig vandai.dev.)* |
| Đại | A record と nameserver が Cloudflare と<ruby>表示<rt>ひょうじ</rt></ruby>されます。<br>*(Hiện A record và nameserver là Cloudflare.)* |
| Yamanaka | キャッシュも<ruby>大事<rt>だいじ</rt></ruby>です。TTL が<ruby>短<rt>みじか</rt></ruby>いと<ruby>反映<rt>はんえい</rt></ruby>が<ruby>速<rt>はや</rt></ruby>く、<ruby>長<rt>なが</rt></ruby>いとサーバ<ruby>負荷<rt>ふか</rt></ruby>が<ruby>軽<rt>かる</rt></ruby>くなります。<br>*(Cache cũng quan trọng. TTL ngắn thì update nhanh, TTL dài thì giảm tải server.)* |
| Đại | <ruby>本番<rt>ほんばん</rt></ruby>では<ruby>普通<rt>ふつう</rt></ruby>どれくらいに<ruby>設定<rt>せってい</rt></ruby>しますか？<br>*(Production thường set khoảng bao nhiêu ạ?)* |
| Yamanaka | <ruby>安定<rt>あんてい</rt></ruby>運用なら<ruby>3600<rt>さんぜんろっぴゃく</rt></ruby><ruby>秒<rt>びょう</rt></ruby>、<ruby>移行<rt>いこう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>なら<ruby>300<rt>さんびゃく</rt></ruby><ruby>秒<rt>びょう</rt></ruby>くらいですね。<br>*(Ổn định thì 3600s, đang migrate thì khoảng 300s.)* |

---

## Tình huống 9 — Phòng riêng · cuối tuần, Đại nhắn Rajesh xin lời khuyên dual-boot

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Rajesh) <ruby>先輩<rt>せんぱい</rt></ruby>、Ubuntu のデュアルブートを<ruby>導入<rt>どうにゅう</rt></ruby>したいんですが、<ruby>注意点<rt>ちゅういてん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか？ |
| Rajesh | (English) Test in Live USB first. Backup Windows partition. Use Ubuntu 24.04 LTS. |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>金<rt>きん</rt></ruby><ruby>曜<rt>よう</rt></ruby>の<ruby>夜<rt>よる</rt></ruby>にやってみます。 |
| Rajesh | Don't forget `secure boot` setting in BIOS. |
| Đại | あ、<ruby>大事<rt>だいじ</rt></ruby>なポイントですね。<ruby>無効<rt>むこう</rt></ruby>にする<ruby>必要<rt>ひつよう</rt></ruby>がありますよね？ |
| Rajesh | Yes. Or you can sign your own key. But disable is easier for student. |
| Đại | ありがとうございます！ |

---

## Tình huống 10 — Phòng riêng tối thứ 7 · 22:00, Đại nhờ Wang debug Wi-Fi sau khi cài Ubuntu

*Wang là sinh viên Trung Quốc cùng lab, rành kernel module.*

| Vai | Lời thoại |
|---|---|
| Đại | (Discord call) <ruby>王<rt>ワン</rt></ruby>くん、Ubuntu <ruby>入<rt>はい</rt></ruby>ったけど Wi-Fi が<ruby>認識<rt>にんしき</rt></ruby>されないんだ。<br>*(Wang ơi, cài Ubuntu xong nhưng Wi-Fi không nhận.)* |
| Wang | ThinkPad? Intel AX チップなら<ruby>追加<rt>ついか</rt></ruby>ドライバが<ruby>必要<rt>ひつよう</rt></ruby>。`lspci | grep -i network` で<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(ThinkPad? Intel AX chip thì cần driver bổ sung. Check bằng lspci | grep -i network.)* |
| Đại | (terminal) Intel Wi-Fi 6E AX211 と<ruby>表示<rt>ひょうじ</rt></ruby>されました。<br>*(Hiện Intel Wi-Fi 6E AX211.)* |
| Wang | `sudo apt install linux-firmware` を<ruby>実行<rt>じっこう</rt></ruby>して、<ruby>再起動<rt>さいきどう</rt></ruby>。<br>*(Chạy sudo apt install linux-firmware xong reboot.)* |
| Đại | (sau reboot) <ruby>動<rt>うご</rt></ruby>きました！ <ruby>本当<rt>ほんとう</rt></ruby>にありがとう、<ruby>王<rt>ワン</rt></ruby>くん。<br>*(Chạy được rồi! Cảm ơn Wang thật nhiều.)* |
| Wang | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことで<ruby>悩<rt>なや</rt></ruby>んだから。<br>*(Không sao. Năm trước tôi cũng kẹt cái này.)* |

---

## Tình huống 11 — Phòng riêng · sáng chủ nhật, Đại thiết lập môi trường dev Ubuntu

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Rajesh) <ruby>先輩<rt>せんぱい</rt></ruby>、おすすめの dev <ruby>環境<rt>かんきょう</rt></ruby>セットを<ruby>教<rt>おし</rt></ruby>えてください。 |
| Rajesh | (English) zsh + oh-my-zsh, tmux, neovim, Docker, asdf for runtime versions. |
| Đại | (terminal)<br>```bash<br>sudo apt install zsh tmux neovim docker.io<br>sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"<br>chsh -s $(which zsh)<br>```<br> |
| Đại | (LINE) <ruby>環境<rt>かんきょう</rt></ruby>セット<ruby>完了<rt>かんりょう</rt></ruby>です！ |
| Rajesh | Great. Now you have a real CS workstation. |
| Đại | <ruby>大学<rt>だいがく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>でようやくスタートラインに<ruby>立<rt>た</rt></ruby>てた<ruby>気分<rt>きぶん</rt></ruby>です。 |

---

## Tình huống 12 — Cafeteria · chiều chủ nhật, ăn cùng bạn Indo Putri

| Vai | Lời thoại |
|---|---|
| Putri | グエンくん、<ruby>最近<rt>さいきん</rt></ruby>ターミナルばかり<ruby>触<rt>さわ</rt></ruby>ってるね。<br>*(Em Nguyễn, dạo này thấy lúc nào cũng chạm terminal.)* |
| Đại | Ubuntu に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えたんだ。<ruby>最初<rt>さいしょ</rt></ruby>は Wi-Fi で<ruby>苦労<rt>くろう</rt></ruby>したけど、<ruby>今<rt>いま</rt></ruby>は<ruby>快適<rt>かいてき</rt></ruby>です。<br>*(Mình chuyển sang Ubuntu rồi. Lúc đầu khổ vì Wi-Fi, giờ mượt rồi.)* |
| Putri | <ruby>私<rt>わたし</rt></ruby>もそろそろ Linux <ruby>覚<rt>おぼ</rt></ruby>えないと。インターンで<ruby>聞<rt>き</rt></ruby>かれて<ruby>困<rt>こま</rt></ruby>った。<br>*(Mình cũng sắp phải học Linux. Hồi intern bị hỏi mà không trả lời được.)* |
| Đại | <ruby>基本<rt>きほん</rt></ruby>コマンドだけでも<ruby>覚<rt>おぼ</rt></ruby>えとくと<ruby>違<rt>ちが</rt></ruby>うよ。`ls`、`cd`、`grep`、`ssh` の<ruby>四<rt>よっ</rt></ruby>つから<ruby>始<rt>はじ</rt></ruby>めて。<br>*(Học mỗi vài lệnh cơ bản cũng khác liền. Bắt đầu từ ls, cd, grep, ssh.)* |
| Putri | OK、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>教<rt>おし</rt></ruby>えて！<br>*(OK, tuần sau dạy mình nha!)* |

---

## Tình huống 13 — Phòng riêng · đêm chủ nhật, gọi video Mai (cảnh tiếng Việt cuối)

> Cảnh tiếng Việt — Đại gọi video về cho Mai vừa đi học buổi đầu tiên lớp N2 ở Yamato Language School.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi! Hôm nay em đi buổi đầu lớp `N2`. Lớp 12 đứa: 5 VN, 4 TQ, 2 Indo, 1 Phil. |
| Đại | (tiếng Việt) Wow đông ghê. Cô giáo người Nhật hả? |
| Mai | (tiếng Việt) `Yamamoto-sensei`, 35 tuổi, từng dạy ở Tokyo. Cô nói chậm, dễ nghe. Buổi đầu cô hỏi vì sao học N2, em nói: "Vì chồng em đang học CS ở Osaka, em muốn sau này nói chuyện với gia đình anh ấy". |
| Đại | (tiếng Việt) Trời, em làm anh muốn khóc. Còn 6 tháng nữa em thi tháng 2/2028 phải không? |
| Mai | (tiếng Việt) Dạ. Mỗi ngày em sẽ học 2 tiếng. Cuối tuần làm đề. Anh dạy em mẫu câu nào hôm nay đi! |
| Đại | (tiếng Việt) Được. Hôm nay anh học `OS` với `Network`. Em nhớ câu này: 「〜というのは、具体的にどういう意味ですか」 — dùng khi hỏi lại thuật ngữ với sensei. Cực kỳ hữu dụng cho `N2`. |
| Mai | (tiếng Việt) Em ghi vào sổ rồi. À, anh cài `Ubuntu` xong chưa? |
| Đại | (tiếng Việt) Xong rồi. Wi-Fi kẹt 2 tiếng, nhờ bạn Trung Quốc cứu. Giờ anh có `zsh + tmux + neovim + Docker`. Sẵn sàng cho năm 3 lab Inoue rồi. |
| Mai | (tiếng Việt) Mình cùng cố nha. Em ngủ đây. |

---

## Đọng lại chương 7

Tuần học OS + Network của Đại ở Osaka U. Học **process vs thread** + race condition (mutex/semaphore), demo `ps aux` + `top` cho senpai. Học **virtual memory**, **heap vs stack**, **memory leak → OOM killer** (Nakagawa-sensei ex-kernel contributor). Học **OSI 7 layers** với mnemonic Please Do Not Throw Sausage Pizza Away, **TCP vs UDP** với insight streaming dùng UDP để ưu tiên real-time, demo `curl -v https://google.com` lên màn chiếu để cả lớp thấy **TCP handshake → TLS handshake → HTTP/2 response**. Học **DNS hierarchy** với `dig`. Cuối tuần cài **Ubuntu 24.04 dual-boot**, nhờ Rajesh hướng dẫn, Wang fix Wi-Fi driver `linux-firmware`. Setup **zsh + tmux + neovim + Docker** — workstation thật sự đầu tiên. Mẫu câu chìa khoá hỏi-đáp: **「〜というのは、具体的にどういう意味ですか」・「〜は、〜のためですか」・「もう一度お願いします」**. Tối Chủ Nhật gọi video Mai — Mai vừa nhập học N2 Yamato School, dạy Mai chính cái mẫu câu hỏi lại sensei.

> Từ vựng & mẫu câu chương này: プロセス・スレッド・競合状態・ミューテックス・セマフォ・仮想メモリ・ヒープ・スタック・メモリリーク・OOM killer・GIL・multiprocessing・OSI 7層・TCP・UDP・TLS handshake・HTTP/2・Let's Encrypt・DNS・TTL・dig・curl -v・Ubuntu 24.04・dual-boot・secure boot・linux-firmware・zsh・tmux・neovim・Docker・〜というのは、具体的にどういう意味ですか・もう一度お願いします・鋭い質問ですね・了解です

## Bí quyết chương

- **Hỏi sensei thông minh**: Mẫu 「〜は、〜のためですか」 (UDP là vì để ưu tiên không trễ phải không ạ) cho thấy SV tự suy luận trước khi hỏi — sensei rất quý.
- **Bạn quốc tế là tài nguyên**: Wang (TQ, kernel), Rajesh (Ấn, Linux veteran), Putri (Indo) — mỗi người một thế mạnh. SV CS du học cần network đa quốc.
- **Hạt giống năm 3**: Workstation Linux đầy đủ là tiền đề cho lab Inoue (sách 23) — Đại không còn là tay mơ.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 単位 | たんい | ĐƠN VỊ | đơn vị |
| 軽量 | けいりょう | KHINH LƯỢNG | nhẹ |
| 分離 | ぶんり | PHÂN LY | tách biệt |
| 競合状態 | きょうごうじょうたい | CẠNH HỢP TRẠNG THÁI | race condition |
| 鋭い | するどい | DUỆ | sắc bén |
| 排他制御 | はいたせいぎょ | BÀI THA CHẾ NGỰ | điều khiển độc quyền |
| 監視 | かんし | GIÁM THỊ | giám sát |
| 了解 | りょうかい | LIỄU GIẢI | hiểu rồi, rõ |
| 仮想 | かそう | GIẢ TƯỞNG | ảo |
| 空間 | くうかん | KHÔNG GIAN | không gian |
| 動的 | どうてき | ĐỘNG ĐÍCH | động (dynamic) |
| 確保 | かくほ | XÁC BẢO | cấp phát, đảm bảo |
| 関数呼び出し | かんすうよびだし | HÀM SỐ HÔ XUẤT | gọi hàm |
| 解放 | かいほう | GIẢI PHÓNG | giải phóng |
| 遭遇 | そうぐう | TAO NGỘ | gặp phải |
| 本番環境 | ほんばんかんきょう | BẢN PHIÊN HOÀN CẢNH | môi trường production |
| 並行 | へいこう | TỊNH HÀNH | đồng thời (concurrent) |
| 並列 | へいれつ | TỊNH LIỆT | song song (parallel) |
| 参照 | さんしょう | THAM CHIẾU | tham chiếu |
| 層 | そう | TẦNG | tầng, lớp |
| 接続型 | せつぞくがた | TIẾP TỤC HÌNH | dạng có kết nối |
| 信頼性 | しんらいせい | TÍN LẠI TÍNH | độ tin cậy |
| 順序 | じゅんじょ | THUẬN TỰ | thứ tự |
| 保証 | ほしょう | BẢO CHỨNG | bảo đảm |
| 高速 | こうそく | CAO TỐC | tốc độ cao |
| 配信 | はいしん | PHỐI TÍN | phân phối, streaming |
| 優先 | ゆうせん | ƯU TIÊN | ưu tiên |
| 過程 | かてい | QUÁ TRÌNH | quá trình |
| 証明書 | しょうめいしょ | CHỨNG MINH THƯ | chứng chỉ |
| 階層構造 | かいそうこうぞう | GIAI TẦNG CẤU TẠO | cấu trúc phân tầng |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết, phân giải |
| 負荷 | ふか | PHỤ HÀ | tải |
| 注意点 | ちゅういてん | CHÚ Ý ĐIỂM | điểm cần lưu ý |
| 無効 | むこう | VÔ HIỆU | vô hiệu hoá |
| 認識 | にんしき | NHẬN THỨC | nhận diện |
| 再起動 | さいきどう | TÁI KHỞI ĐỘNG | khởi động lại |
| 切り替える | きりかえる | — | chuyển đổi |
| 快適 | かいてき | KHOÁI ĐÍCH | thoải mái, mượt |
| 基本 | きほん | CƠ BẢN | cơ bản |
