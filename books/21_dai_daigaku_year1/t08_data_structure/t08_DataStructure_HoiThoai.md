# Sách sinh viên Đại học Osaka · T8. Cấu trúc dữ liệu — Array, Stack, Queue, Hash, Tree, Heap (データ構造)

> **Mục tiêu nhân vật:** Đại (21t, ĐH Osaka CS năm 1, 10-11/2026, N2) học các mẫu hội thoại tiếng Nhật xoay quanh lecture データ構造 với Ohno-sensei: (1) câu xin hỏi `〜について<ruby>確認<rt>かくにん</rt></ruby>させてください`, (2) so sánh tốc độ Array vs Linked List với sempai, (3) trả lời quiz ngẫu hứng sensei trong lecture, (4) xin extension deadline bài tập, (5) khoe rating AtCoder lên Green trong LINE nhóm, (6) cảnh tiếng Việt — gọi điện Mai 2 tháng trước cưới.

---

## Bối cảnh

Tháng 10-11/2026, học kỳ 2 năm 1. Lecture データ構造 mỗi tuần với **Ohno-sensei** (tiếp T5). 8 tuần, 8 cấu trúc: Array, Linked List, Stack, Queue, Hash Table, Tree/BST, Heap, Graph. Giáo trình "アルゴリズムとデータ構造" giá ¥3,200. Đại đăng bán cuốn lý thuyết tháng trước trên app **教科書MarketPlace** mà team đã làm Hack U (T7). Aiko thỉnh thoảng kéo Đại đi triển lãm UI/UX cuối tuần. AtCoder Đại đang Brown 750, mục tiêu Green trước Tết. Chương này tập trung mẫu câu **giao tiếp lecture chính quy nhiều tuần**, **xin extension deadline** và **chat LINE nhóm AtCoder khi lên rating**.

---

## Tình huống 1 — Giảng đường B2 · 9:00 thứ 3 tuần 1, Array vs Linked List

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>はArrayとLinked Listを<ruby>比較<rt>ひかく</rt></ruby>します。<br>*(Hôm nay so sánh Array với Linked List.)* |
| Ohno | Array は<ruby>連続<rt>れんぞく</rt></ruby>メモリに<ruby>配置<rt>はいち</rt></ruby>、ランダムアクセスO(1)、<ruby>途中<rt>とちゅう</rt></ruby><ruby>挿入<rt>そうにゅう</rt></ruby>はO(n)です。<br>*(Array trên bộ nhớ liên tục, truy cập ngẫu nhiên O(1), chèn giữa O(n).)* |
| Ohno | Linked List は<ruby>分散<rt>ぶんさん</rt></ruby>メモリ、ランダムアクセスO(n)、<ruby>途中<rt>とちゅう</rt></ruby><ruby>挿入<rt>そうにゅう</rt></ruby>はO(1)です。<br>*(LL trên bộ nhớ phân tán, truy cập ngẫu nhiên O(n), chèn giữa O(1).)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>させてください。Linked List の<ruby>挿入<rt>そうにゅう</rt></ruby>がO(1)になるのは、<ruby>挿入位置<rt>そうにゅういち</rt></ruby>のノードへの<ruby>参照<rt>さんしょう</rt></ruby>を<ruby>既<rt>すで</rt></ruby>に<ruby>持<rt>も</rt></ruby>っている<ruby>場合<rt>ばあい</rt></ruby>のみですよね?<br>*(Thầy, em xin xác nhận. LL chèn O(1) chỉ khi đã giữ tham chiếu đến nút vị trí chèn đúng không ạ?)* |
| Ohno | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>です。その<ruby>通<rt>とお</rt></ruby>り。<ruby>参照<rt>さんしょう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていない<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>検索<rt>けんさく</rt></ruby>に O(n) かかります。<br>*(Câu hỏi tuyệt. Đúng. Nếu không có tham chiếu, tìm vị trí mất O(n).)* |
| Yamato | (whisper Đại) よく<ruby>気付<rt>きづ</rt></ruby>いたな。<br>*(Phát hiện hay đó.)* |

---

## Tình huống 2 — Canteen tầng 1 · 12:30 thứ 3, ăn trưa với Yamato + Lin Wei

| Vai | Lời thoại |
|---|---|
| Lin Wei | (English) Dai's question this morning was sharp. Did you study LL before?<br>*(Câu hỏi sáng nay của Đại sắc bén ghê. Bạn học LL từ trước à?)* |
| Đại | <ruby>高校<rt>こうこう</rt></ruby>のとき<ruby>少<rt>すこ</rt></ruby>しやった。ベトナムの<ruby>専門<rt>せんもん</rt></ruby><ruby>高校<rt>こうこう</rt></ruby>で。<br>*(Cấp 3 học chút rồi. Trường chuyên Tin ở Việt Nam.)* |
| Yamato | <ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>が<ruby>来週<rt>らいしゅう</rt></ruby> Stack と Queue を<ruby>扱<rt>あつか</rt></ruby>うが、<ruby>俺<rt>おれ</rt></ruby>は AtCoder で<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>使<rt>つか</rt></ruby>っているから<ruby>飽<rt>あ</rt></ruby>きるな。<br>*(Tuần sau sensei dạy Stack và Queue, nhưng tớ tuần nào ABC cũng dùng, chán.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>はまだ`list.pop(0)` を<ruby>使<rt>つか</rt></ruby>って TLE になったことある。`deque` の<ruby>必要性<rt>ひつようせい</rt></ruby>を<ruby>体感<rt>たいかん</rt></ruby>した。<br>*(Tớ từng dùng `list.pop(0)` rồi TLE. Cảm nhận sự cần thiết của `deque`.)* |
| Lin Wei | (English) Classic trap. `list.pop(0)` is O(n), always use `deque.popleft()`.<br>*(Bẫy cổ điển. `list.pop(0)` là O(n), luôn dùng `deque.popleft()`.)* |
| Yamato | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> (4<ruby>年生<rt>ねんせい</rt></ruby>) も<ruby>同<rt>おな</rt></ruby>じバグでTLEしたって<ruby>笑<rt>わら</rt></ruby>ってた。<br>*(Anh Kimura sempai năm 4 cũng cười kể từng TLE vì bug đó.)* |

---

## Tình huống 3 — Giảng đường B2 · 9:00 thứ 3 tuần 2, Stack & Queue lecture

| Vai | Lời thoại |
|---|---|
| Ohno | Stack は LIFO、push と pop が O(1)。<ruby>用途<rt>ようと</rt></ruby>:undo<ruby>機能<rt>きのう</rt></ruby>、<ruby>再帰<rt>さいき</rt></ruby>のコールスタック、<ruby>括弧<rt>かっこ</rt></ruby><ruby>整合性<rt>せいごうせい</rt></ruby>チェック。<br>*(Stack LIFO, push/pop O(1). Dùng: undo, call stack, kiểm tra ngoặc.)* |
| Ohno | では<ruby>誰<rt>だれ</rt></ruby>か <ruby>括弧<rt>かっこ</rt></ruby><ruby>整合性<rt>せいごうせい</rt></ruby>チェックのアルゴリズムを<ruby>説明<rt>せつめい</rt></ruby>できますか?<br>*(Vậy ai giải thích thuật toán kiểm tra cân bằng dấu ngoặc được?)* |
| Đại | (giơ tay) <ruby>私<rt>わたし</rt></ruby>がやらせてください。<br>*(Để em làm ạ.)* |
| Đại | <ruby>文字列<rt>もじれつ</rt></ruby>を<ruby>左<rt>ひだり</rt></ruby>から<ruby>読<rt>よ</rt></ruby>みます。<ruby>開<rt>ひら</rt></ruby>き<ruby>括弧<rt>かっこ</rt></ruby>を見たら stack に push、<ruby>閉<rt>と</rt></ruby>じ<ruby>括弧<rt>かっこ</rt></ruby>を<ruby>見<rt>み</rt></ruby>たら stack を pop して<ruby>対応<rt>たいおう</rt></ruby>するか<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Đọc chuỗi từ trái. Gặp ngoặc mở thì push vào stack, gặp ngoặc đóng thì pop ra kiểm tra có khớp không.)* |
| Đại | <ruby>最後<rt>さいご</rt></ruby>に stack が<ruby>空<rt>から</rt></ruby>なら<ruby>整合性<rt>せいごうせい</rt></ruby> OK、そうでなければ NG。<br>*(Cuối cùng stack rỗng là OK, không rỗng là NG.)* |
| Ohno | <ruby>完璧<rt>かんぺき</rt></ruby>。コードを<ruby>黒板<rt>こくばん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてもらえますか?<br>*(Hoàn hảo. Viết code lên bảng giùm thầy?)* |
| Đại | はい。(viết) `stack=[]; pairs={')':'(',']':'[','}':'{'}; for c in s: if c in '([{': stack.append(c); elif c in ')]}': if not stack or stack.pop()!=pairs[c]: return False; return not stack`<br> |
| Ohno | お<ruby>見事<rt>みごと</rt></ruby>です。<br>*(Đẹp tuyệt.)* |

---

## Tình huống 4 — Văn phòng Ohno-sensei tầng 4 · 16:30 thứ 5 tuần 2, xin extension

*Đại làm gia sư + Hack U follow-up nên trễ bài tập 1 ngày. Đến văn phòng xin gia hạn.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>。<br>*(Xin phép, thầy Ohno.)* |
| Ohno | グエン<ruby>君<rt>くん</rt></ruby>、どうぞ。<br>*(Em Nguyễn, vào đi.)* |
| Đại | あの、<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、<ruby>第<rt>だい</rt></ruby>3<ruby>回<rt>かい</rt></ruby><ruby>課題<rt>かだい</rt></ruby>の<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>を<ruby>1日<rt>いちにち</rt></ruby><ruby>延<rt>の</rt></ruby>ばしていただけないでしょうか。<br>*(Thưa thầy, em vô cùng xin lỗi, có thể cho phép em hoãn nộp bài tập số 3 thêm 1 ngày được không ạ?)* |
| Ohno | <ruby>理由<rt>りゆう</rt></ruby>は?<br>*(Lý do?)* |
| Đại | <ruby>家庭教師<rt>かていきょうし</rt></ruby>のアルバイトの<ruby>生徒<rt>せいと</rt></ruby>がAtCoderの<ruby>大会<rt>たいかい</rt></ruby><ruby>直前<rt>ちょくぜん</rt></ruby>で、<ruby>追加<rt>ついか</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>要望<rt>ようぼう</rt></ruby>されまして…<ruby>計画<rt>けいかく</rt></ruby><ruby>管理<rt>かんり</rt></ruby>が<ruby>甘<rt>あま</rt></ruby>く、<ruby>反省<rt>はんせい</rt></ruby>しております。<br>*(Học viên gia sư của em sắp thi AtCoder, em phải dạy thêm... lập kế hoạch của em chưa chu, em xin tự kiểm điểm.)* |
| Ohno | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うのはいいことです。1<ruby>日<rt>にち</rt></ruby>だけならいいですよ。ただし<ruby>次回<rt>じかい</rt></ruby>からは<ruby>早<rt>はや</rt></ruby>めに<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>んでください。<br>*(Nói thẳng là tốt. 1 ngày thì được. Nhưng lần sau làm sớm hơn nhé.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<br>*(Em chân thành cảm ơn thầy. Em đã làm phiền thầy.)* |
| Ohno | <ruby>家庭教師<rt>かていきょうし</rt></ruby>もしているんですね。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Em làm cả gia sư hả. Cố lên.)* |

---

## Tình huống 5 — Giảng đường B2 · 9:00 thứ 3 tuần 3, Hash Table

| Vai | Lời thoại |
|---|---|
| Ohno | Hash Table は<ruby>平均<rt>へいきん</rt></ruby> O(1) の<ruby>検索<rt>けんさく</rt></ruby>。ハッシュ<ruby>関数<rt>かんすう</rt></ruby>と<ruby>衝突<rt>しょうとつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>が<ruby>核心<rt>かくしん</rt></ruby>です。<br>*(Hash Table tra cứu trung bình O(1). Hàm băm + xử lý xung đột là cốt lõi.)* |
| Ohno | <ruby>衝突<rt>しょうとつ</rt></ruby><ruby>処理<rt>しょり</rt></ruby>には2つの<ruby>方式<rt>ほうしき</rt></ruby>があります。チェイニングとオープンアドレッシング。<br>*(Xử lý xung đột có 2 cách: chaining và open addressing.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、「オープンアドレッシング」というのは?<br>*(Thầy, "open addressing" nghĩa là gì ạ?)* |
| Ohno | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>衝突<rt>しょうとつ</rt></ruby>した<ruby>場合<rt>ばあい</rt></ruby>、<ruby>別<rt>べつ</rt></ruby>のスロットを<ruby>探<rt>さが</rt></ruby>して<ruby>格納<rt>かくのう</rt></ruby>する<ruby>方式<rt>ほうしき</rt></ruby>です。<ruby>線形探査<rt>せんけいたんさ</rt></ruby>、<ruby>二次探査<rt>にじたんさ</rt></ruby>、ダブルハッシュなどがあります。<br>*(Hỏi hay. Khi xung đột, tìm slot khác để lưu. Có linear probing, quadratic probing, double hashing.)* |
| Đại | Python の `dict` はどちらを<ruby>使<rt>つか</rt></ruby>っていますか?<br>*(`dict` của Python dùng cái nào ạ?)* |
| Ohno | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>質問<rt>しつもん</rt></ruby>! オープンアドレッシングです。<ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>線形探査<rt>せんけいたんさ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>い<ruby>方式<rt>ほうしき</rt></ruby>。<ruby>3.7<rt>さんてんなな</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>挿入順<rt>そうにゅうじゅん</rt></ruby>も<ruby>保持<rt>ほじ</rt></ruby>します。<br>*(Câu hỏi tuyệt! Open addressing — gần linear probing. Python 3.7+ còn giữ thứ tự chèn.)* |
| Đại | なるほど。だから `for k in dict:` で<ruby>挿入順<rt>そうにゅうじゅん</rt></ruby>に<ruby>出<rt>で</rt></ruby>てくるんですね。<br>*(À thì ra. Nên `for k in dict:` đi theo thứ tự chèn đó.)* |
| Ohno | その<ruby>通<rt>とお</rt></ruby>り。<br>*(Đúng vậy.)* |

---

## Tình huống 6 — Booth thư viện CS tầng 2 · 15:00 thứ 5, học nhóm với sempai Kimura

*Sempai Kimura (4年生) tình cờ thấy Đại đang đọc 教科書, ngồi xuống dạy thêm.*

| Vai | Lời thoại |
|---|---|
| Kimura | あ、グエン<ruby>君<rt>くん</rt></ruby>? <ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>取<rt>と</rt></ruby>ってる?<br>*(A, Đại à? Lấy lớp Ohno-sensei à?)* |
| Đại | はい、<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>Treeに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vâng, anh Kimura. Tuần sau vào Tree ạ.)* |
| Kimura | <ruby>俺<rt>おれ</rt></ruby>4<ruby>年<rt>ねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>取<rt>と</rt></ruby>った。アドバイスする? Treeの<ruby>章<rt>しょう</rt></ruby>はBST の<ruby>削除<rt>さくじょ</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい。3ケースに<ruby>分<rt>わ</rt></ruby>けて<ruby>考<rt>かんが</rt></ruby>えるのを<ruby>覚<rt>おぼ</rt></ruby>えておけ。<br>*(Tớ học 4 năm trước rồi. Lời khuyên? Chương Tree khó nhất là xoá nút BST. Nhớ chia 3 case.)* |
| Đại | <ruby>3<rt>さん</rt></ruby>ケース?<br>*(3 case?)* |
| Kimura | <ruby>子<rt>こ</rt></ruby>ノードがない<ruby>場合<rt>ばあい</rt></ruby>、<ruby>子<rt>こ</rt></ruby>が1つの<ruby>場合<rt>ばあい</rt></ruby>、<ruby>子<rt>こ</rt></ruby>が2つの<ruby>場合<rt>ばあい</rt></ruby>。<ruby>最後<rt>さいご</rt></ruby>のケースは<ruby>右部分木<rt>みぎぶぶんき</rt></ruby>の<ruby>最小値<rt>さいしょうち</rt></ruby>と<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>える。<br>*(0 con, 1 con, 2 con. Trường hợp 2 con thay bằng giá trị min cây con phải.)* |
| Đại | ありがとうございます、<ruby>先輩<rt>せんぱい</rt></ruby>! メモします。<br>*(Cảm ơn anh! Em ghi chép đây.)* |
| Kimura | あと、Heap は AtCoder で<ruby>頻出<rt>ひんしゅつ</rt></ruby>。`heapq` を<ruby>使<rt>つか</rt></ruby>いこなせるようになれ。<br>*(Còn nữa, Heap hay xuất hiện ở AtCoder. Học dùng `heapq` thành thạo nhé.)* |
| Đại | はい!<ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>茶<rt>ちゃ</rt></ruby>でもどうですか?<br>*(Vâng! Anh Kimura, em mời anh trà nhé?)* |
| Kimura | おお、おごり?<ruby>嬉<rt>うれ</rt></ruby>しいね、<ruby>行<rt>い</rt></ruby>こう。<br>*(Ồ, bao à? Vui ghê, đi nào.)* |

---

## Tình huống 7 — Giảng đường B2 · 9:00 thứ 3 tuần 5, Tree & BST

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>二分探索木<rt>にぶんたんさくぎ</rt></ruby> (BST) です。Tree は<ruby>根<rt>ね</rt></ruby>と<ruby>子<rt>こ</rt></ruby><ruby>節点<rt>せってん</rt></ruby>から<ruby>成<rt>な</rt></ruby>る、<ruby>二分木<rt>にぶんぎ</rt></ruby>は<ruby>子<rt>こ</rt></ruby>が<ruby>最大<rt>さいだい</rt></ruby>2つ。<br>*(Hôm nay Binary Search Tree. Tree có gốc và nút con, cây nhị phân tối đa 2 con.)* |
| Ohno | BST<ruby>性質<rt>せいしつ</rt></ruby>:<ruby>左<rt>ひだり</rt></ruby><<ruby>節点<rt>せってん</rt></ruby><<ruby>右<rt>みぎ</rt></ruby>。<ruby>検索<rt>けんさく</rt></ruby>・<ruby>挿入<rt>そうにゅう</rt></ruby>は<ruby>平均<rt>へいきん</rt></ruby> O(log n)、<ruby>最悪<rt>さいあく</rt></ruby> O(n)。<br>*(Tính chất BST: trái < nút < phải. Tìm/chèn trung bình O(log n), xấu nhất O(n).)* |
| Ohno | <ruby>削除<rt>さくじょ</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しいです。<ruby>誰<rt>だれ</rt></ruby>か3つのケースを<ruby>説明<rt>せつめい</rt></ruby>できますか?<br>*(Thao tác xoá khó nhất. Ai giải thích 3 case được?)* |
| Đại | (giơ tay) はい。<ruby>子<rt>こ</rt></ruby>がない<ruby>場合<rt>ばあい</rt></ruby>はそのまま<ruby>削除<rt>さくじょ</rt></ruby>。<ruby>子<rt>こ</rt></ruby>が1つの<ruby>場合<rt>ばあい</rt></ruby>はその<ruby>子<rt>こ</rt></ruby>で<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>える。<ruby>子<rt>こ</rt></ruby>が2つの<ruby>場合<rt>ばあい</rt></ruby>は<ruby>右部分木<rt>みぎぶぶんき</rt></ruby>の<ruby>最小値<rt>さいしょうち</rt></ruby>と<ruby>置<rt>お</rt></ruby>き<ruby>換<rt>か</rt></ruby>える。<br>*(Vâng. Không có con: xoá luôn. 1 con: thay bằng con đó. 2 con: thay bằng min cây con phải.)* |
| Ohno | <ruby>完璧<rt>かんぺき</rt></ruby>!<ruby>事前<rt>じぜん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>してきましたか?<br>*(Hoàn hảo! Em đã học trước à?)* |
| Đại | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>図書館<rt>としょかん</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Anh Kimura sempai chỉ em ở thư viện.)* |
| Ohno | <ruby>4<rt>よん</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>の<ruby>木村<rt>きむら</rt></ruby><ruby>君<rt>くん</rt></ruby>ですね。いい<ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていますね。<br>*(Anh Kimura năm 4 hả. Em có sempai tốt đấy.)* |

---

## Tình huống 8 — Giảng đường B2 · 10:30 thứ 3 tuần 5, sensei thử thách

*Sensei tiếp tục Heap & Priority Queue, gọi Lin Wei và Yamato lên bảng.*

| Vai | Lời thoại |
|---|---|
| Ohno | Heap は<ruby>完全<rt>かんぜん</rt></ruby><ruby>二分木<rt>にぶんぎ</rt></ruby>。Min-heap は<ruby>根<rt>ね</rt></ruby>が<ruby>最小値<rt>さいしょうち</rt></ruby>、<ruby>挿入<rt>そうにゅう</rt></ruby>と<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しが O(log n)。<br>*(Heap là cây nhị phân đầy đủ. Min-heap gốc = min, chèn/lấy O(log n).)* |
| Ohno | リン・ウェイ<ruby>君<rt>くん</rt></ruby>、Python の `heapq` で max-heap を<ruby>作<rt>つく</rt></ruby>る<ruby>方法<rt>ほうほう</rt></ruby>は?<br>*(Lin Wei, làm max-heap bằng `heapq` Python sao?)* |
| Lin Wei | <ruby>値<rt>あたい</rt></ruby>を<ruby>負<rt>ふ</rt></ruby>にして push、pop の<ruby>結果<rt>けっか</rt></ruby>を<ruby>正<rt>せい</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>します。`heapq.heappush(h, -x)` 、`-heapq.heappop(h)` です。<br>*(Đẩy giá trị âm, pop ra đảo lại dấu.)* |
| Ohno | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>大和<rt>やまと</rt></ruby><ruby>君<rt>くん</rt></ruby>、<ruby>優先度付<rt>ゆうせんどつ</rt></ruby>きキューの<ruby>用途<rt>ようと</rt></ruby>は?<br>*(Đúng. Yamato, ứng dụng priority queue?)* |
| Yamato | Dijkstra アルゴリズム、top-K<ruby>問題<rt>もんだい</rt></ruby>、イベントスケジューラ、A*<ruby>探索<rt>たんさく</rt></ruby>です。<br>*(Dijkstra, top-K, event scheduler, A* search.)* |
| Ohno | <ruby>立派<rt>りっぱ</rt></ruby>!<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>参加<rt>さんか</rt></ruby>です。<br>*(Giỏi! Cả 3 em tham gia lớp xuất sắc.)* |

---

## Tình huống 9 — Phòng trọ Toyonaka · Thứ 7 21:00, AtCoder ABC lên Green (LINE)

| Vai | Lời thoại |
|---|---|
| Yamato | (LINE group "OsakaCS3") ABC<ruby>始<rt>はじ</rt></ruby>まる!<br>*(ABC bắt đầu!)* |
| Đại | <ruby>参戦<rt>さんせん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。<ruby>今夜<rt>こんや</rt></ruby>はheap<ruby>問題<rt>もんだい</rt></ruby><ruby>来<rt>く</rt></ruby>るかも。<br>*(Tham chiến. Tối nay có thể có bài heap.)* |
| (90 phút sau) | |
| Đại | A+B+C AC!Cはheap<ruby>問題<rt>もんだい</rt></ruby>! `heapq` で<ruby>解<rt>と</rt></ruby>けた!<br>*(AC 3 bài! Bài C là heap! Giải bằng `heapq`!)* |
| Yamato | A+B+C+D AC、+35。<ruby>緑<rt>みどり</rt></ruby>1100→1135。<br>*(AC 4 bài, +35. Green 1100→1135.)* |
| Lin Wei | A+B+C+D+E AC. +12. Cyan 1305→1317.<br>*(AC 5 bài. +12. Cyan lên.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>のレートは?待って…800→900→925! ついに<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>!!<br>*(Rating tớ? Chờ chút... 800→900→925! Lên Green!!)* |
| Yamato | おめでとう!!ついに<ruby>同<rt>おな</rt></ruby>じ<ruby>色<rt>いろ</rt></ruby>!<br>*(Chúc mừng!! Cùng màu rồi!)* |
| Aiko | <ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>凄<rt>すご</rt></ruby>すぎ!<ruby>祝<rt>いわ</rt></ruby>いに<ruby>明日<rt>あした</rt></ruby><ruby>梅田<rt>うめだ</rt></ruby>で<ruby>食<rt>た</rt></ruby>べ<ruby>放題<rt>ほうだい</rt></ruby>?<br>*(3 đứa ghê quá! Ngày mai liên hoan buffet Umeda?)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>! <ruby>俺<rt>おれ</rt></ruby>がおごる!<br>*(Tán thành! Tớ bao!)* |
| Yamato | おお!ダイ<ruby>太<rt>ふと</rt></ruby><ruby>っ腹<rt>ぱら</rt></ruby>!<br>*(Ồ! Đại hào phóng!)* |

---

## Tình huống 10 — Yakiniku Umeda · Chủ nhật 19:00, ăn mừng

| Vai | Lời thoại |
|---|---|
| Aiko | カンパーイ!<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>おめでとう!<br>*(Cụng ly! Chúc mừng lên Green!)* |
| Đại | カンパーイ!<br>*(Cụng ly!)* |
| Yamato | ダイ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>早<rt>はや</rt></ruby>かったな。<ruby>俺<rt>おれ</rt></ruby>は<ruby>緑<rt>みどり</rt></ruby><ruby>到達<rt>とうたつ</rt></ruby>に1<ruby>年半<rt>ねんはん</rt></ruby>かかった。<br>*(Đại, em lên nhanh ghê. Tớ mất 1 năm rưỡi mới lên Green.)* |
| Đại | ヤマトの<ruby>影響<rt>えいきょう</rt></ruby>。<ruby>毎週<rt>まいしゅう</rt></ruby>ABC<ruby>参加<rt>さんか</rt></ruby>を<ruby>勧<rt>すす</rt></ruby>めてくれたから。<br>*(Nhờ Yamato. Cậu khuyên tớ tham gia ABC tuần nào cũng.)* |
| Lin Wei | (English) Dai, your improvement curve is impressive. Brown→Green in 5 months.<br>*(Đại, đường cong tiến bộ ấn tượng. Brown lên Green trong 5 tháng.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はFigmaコンテストに<ruby>応募<rt>おうぼ</rt></ruby>することにした!みんなの<ruby>影響<rt>えいきょう</rt></ruby>!<br>*(Mình quyết định nộp Figma contest! Ảnh hưởng từ mọi người!)* |
| Đại | <ruby>愛子<rt>あいこ</rt></ruby>!<ruby>応援<rt>おうえん</rt></ruby>するよ!<br>*(Aiko! Ủng hộ cậu!)* |
| Yamato | <ruby>4<rt>よん</rt></ruby><ruby>人<rt>にん</rt></ruby>とも<ruby>頑張<rt>がんば</rt></ruby>ろう!<br>*(Cả 4 đứa cùng cố lên!)* |

---

## Tình huống 11 — Nhà Tony+Yumi · Thứ 6 19:00, gia đình homestay cũ

*Đại đưa Yamato và Aiko sang nhà Tony+Yumi ăn cơm.*

| Vai | Lời thoại |
|---|---|
| Tony | (mở cửa) ダイ<ruby>君<rt>くん</rt></ruby>!ヤマト<ruby>君<rt>くん</rt></ruby>と<ruby>愛子<rt>あいこ</rt></ruby>ちゃんもようこそ!<br>*(Đại! Yamato và Aiko nữa, mời vào!)* |
| Yumi | <ruby>今夜<rt>こんや</rt></ruby>はベトナム<ruby>料理<rt>りょうり</rt></ruby>です!ダイ<ruby>君<rt>くん</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わった<ruby>春巻<rt>はるま</rt></ruby>き。<br>*(Tối nay món Việt! Nem Đại dạy tôi.)* |
| Yamato | (ăn thử) <ruby>美味<rt>おい</rt></ruby>しい!ベトナム<ruby>料理<rt>りょうり</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて<ruby>食<rt>た</rt></ruby>べる!<br>*(Ngon quá! Lần đầu ăn món Việt!)* |
| Aiko | <ruby>由美<rt>ゆみ</rt></ruby>さん、<ruby>料理<rt>りょうり</rt></ruby>お<ruby>上手<rt>じょうず</rt></ruby>ですね。レストラン<ruby>並<rt>な</rt></ruby>み。<br>*(Chị Yumi nấu ngon ghê. Như nhà hàng.)* |
| Yumi | <ruby>息子<rt>むすこ</rt></ruby>がいないから、ダイ<ruby>君<rt>くん</rt></ruby>が<ruby>息子<rt>むすこ</rt></ruby>みたいなものよ。<br>*(Không có con trai nên Đại như con trai vậy đó.)* |
| Tony | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>結婚式<rt>けっこんしき</rt></ruby>は1<ruby>月<rt>がつ</rt></ruby>?<br>*(Đại, đám cưới tháng 1 hả?)* |
| Đại | はい、ハノイで。<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>14<rt>じゅうよっ</rt></ruby><ruby>日<rt>か</rt></ruby>です。トニーさん、<ruby>由美<rt>ゆみ</rt></ruby>さん、<ruby>是非<rt>ぜひ</rt></ruby><ruby>来<rt>き</rt></ruby>てください。<br>*(Vâng, ở Hà Nội ngày 14/1. Anh Tony, chị Yumi, mời sang dự ạ.)* |
| Yumi | <ruby>絶対<rt>ぜったい</rt></ruby><ruby>行<rt>い</rt></ruby>くよ!フライト<ruby>予約<rt>よやく</rt></ruby><ruby>済<rt>ず</rt></ruby>み。<br>*(Nhất định đi! Đã đặt chuyến bay rồi.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に?!<ruby>嬉<rt>うれ</rt></ruby>しいです!<br>*(Thật ạ?! Em vui quá!)* |

---

## Tình huống 12 — Phòng trọ · 23:00 chủ nhật, gọi Mai (cảnh tiếng Việt)

*Sau buổi yakiniku ăn mừng, Đại về phòng gọi video Mai.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, video) Anh ơi! Hôm nay sao mà gọi muộn vậy? |
| Đại | (VN) Anh đi yakiniku ăn mừng với Yamato, Aiko, Lin Wei. Anh lên AtCoder Green hôm qua! |
| Mai | (VN) Trời ơi Green hả? Anh kể em nghe Green nghĩa là gì đi. |
| Đại | (VN) AtCoder có thang màu Gray → Brown → Green → Cyan → Blue → Yellow → Orange → Red. Anh leo từ Gray (3 tháng trước) → Brown → giờ Green. Mục tiêu năm 1 đạt rồi. |
| Mai | (VN) Anh có Yamato, Aiko, Lin Wei làm bạn ở Nhật. Em ở Việt Nam mong từng tin nhắn của anh. |
| Đại | (VN) Em à, 2 tháng nữa anh về. Anh đặt vé về 13/2 rồi. |
| Mai | (VN) Em hỏi mẹ, bố em đã thuê xe đám cưới chưa. À, mà anh có gặp anh chị Tony+Yumi không? |
| Đại | (VN) Tối qua sang nhà ăn cơm. Anh Tony và chị Yumi đã đặt vé sang Hà Nội dự cưới rồi. Chị Yumi nói "ダイ君が息子みたいなものよ" — Đại như con trai vậy. |
| Mai | (VN) Em xúc động quá. Hỏi anh, lecture data structure tuần này học gì? |
| Đại | (VN) Heap với priority queue. Anh giải thích cho Yamato thuật toán BFS dùng deque, anh ấy gật gù khen. |
| Mai | (VN) Em yêu anh giỏi. Đi ngủ đi không khuya nữa. |
| Đại | (VN) Ừ. Tuần sau anh tiếp tục lecture Graph với Dijkstra. Sensei Ohno bảo Graph là chương cuối. |
| Mai | (VN) Cố lên anh. Em ngủ trước nhé. |
| Đại | (VN) Anh thương em. Chúc em ngủ ngon. |

---

## Đọng lại chương 8

Đại trải qua 8 tuần lecture データ構造 với Ohno-sensei. Mẫu câu **「<ruby>確認<rt>かくにん</rt></ruby>させてください」** (cho em xác nhận) là cách hỏi ngầm khẳng định hiểu biết. Khi xin extension deadline, Đại dùng combo trang trọng **「<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、〜していただけないでしょうか」** + giải thích lý do + tự kiểm điểm **「<ruby>反省<rt>はんせい</rt></ruby>しております」**. Tại thư viện, sempai Kimura gặp Đại, dùng văn phong sempai-kouhai: ngắn gọn `〜しろ・〜なれ`. Đại đáp keigo `〜していただきました`. Trong lecture, Đại tự tin giơ tay với **「<ruby>私<rt>わたし</rt></ruby>がやらせてください」** và được sensei khen **「<ruby>完璧<rt>かんぺき</rt></ruby>」**. LINE nhóm AtCoder dùng câu cụt khoe rating Green. Yakiniku ăn mừng dùng `カンパーイ` + `おごる`. Nhà Tony+Yumi vẫn là gia đình thứ hai — anh chị đã đặt vé sang dự cưới Mai. Cuối chương Đại gọi Mai khoe rating Green và xác nhận vé về 13/2.

> Từ vựng & mẫu câu chương này: <ruby>連続<rt>れんぞく</rt></ruby>メモリ・<ruby>分散<rt>ぶんさん</rt></ruby>メモリ・<ruby>挿入位置<rt>そうにゅういち</rt></ruby>・<ruby>括弧<rt>かっこ</rt></ruby><ruby>整合性<rt>せいごうせい</rt></ruby>・チェイニング・オープンアドレッシング・<ruby>線形探査<rt>せんけいたんさ</rt></ruby>・<ruby>二分探索木<rt>にぶんたんさくぎ</rt></ruby>・<ruby>右部分木<rt>みぎぶぶんき</rt></ruby>・<ruby>完全<rt>かんぜん</rt></ruby><ruby>二分木<rt>にぶんぎ</rt></ruby>・<ruby>優先度付<rt>ゆうせんどつ</rt></ruby>きキュー・<ruby>確認<rt>かくにん</rt></ruby>させてください・<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません・<ruby>提出<rt>ていしゅつ</rt></ruby><ruby>締切<rt>しめきり</rt></ruby>を<ruby>延<rt>の</rt></ruby>ばしていただけないでしょうか・<ruby>反省<rt>はんせい</rt></ruby>しております・ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました・お<ruby>見事<rt>みごと</rt></ruby>です・カンパーイ・<ruby>太<rt>ふと</rt></ruby><ruby>っ腹<rt>ぱら</rt></ruby>

## Bí quyết chương

- **Xin extension deadline keigo bài bản**: `<ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが` + lý do cụ thể + `<ruby>反省<rt>はんせい</rt></ruby>しております` + `ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました`. Tránh giả lý do — sensei Nhật tôn trọng thẳng thắn.
- **「〜について<ruby>確認<rt>かくにん</rt></ruby>させてください」**: Câu khẳng định ngầm hiểu biết khi học. Khác `〜とは?` (hỏi vì không biết).
- **Code-switch theo người**: Với sensei = full keigo `〜ていただく`. Với sempai = keigo nhẹ `〜です` + tôn trọng. Với bạn = `〜形` ngắn. Với gia đình homestay = nửa keigo nửa thân mật. Với người yêu VN = tiếng Việt chêm JP.
- **AtCoder lên Green = milestone**: ¥0 phần thưởng vật chất nhưng team ăn mừng yakiniku. Mục tiêu năm 1 đạt, năm 2 sẽ là Cyan.
- **Cảnh VN cuối là cầu nối**: Mai không hiểu thuật toán nhưng vẫn theo dõi tiến độ. Đại xác nhận vé về 13/2 — 2 tháng nữa cưới.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 連続 | れんぞく | LIÊN TỤC | liên tục |
| 配置 | はいち | PHỐI TRÍ | bố trí |
| 挿入 | そうにゅう | SÁP NHẬP | chèn |
| 途中 | とちゅう | ĐỒ TRUNG | giữa |
| 分散 | ぶんさん | PHÂN TÁN | phân tán |
| 検索 | けんさく | KIỂM TÁC | tìm kiếm |
| 体感 | たいかん | THỂ CẢM | cảm nhận |
| 必要性 | ひつようせい | TẤT YẾU TÍNH | sự cần thiết |
| 用途 | ようと | DỤNG ĐỒ | ứng dụng |
| 括弧 | かっこ | QUÁT HỒ | dấu ngoặc |
| 整合性 | せいごうせい | CHỈNH HỢP TÍNH | tính nhất quán |
| 文字列 | もじれつ | VĂN TỰ LIỆT | chuỗi |
| 対応 | たいおう | ĐỐI ỨNG | tương ứng |
| 空 | から | KHÔNG | rỗng |
| 見事 | みごと | KIẾN SỰ | đẹp tuyệt |
| 誠 | まこと | THÀNH | thành thật |
| 延ばす | のばす | DIÊN | hoãn |
| 直前 | ちょくぜん | TRỰC TIỀN | ngay trước |
| 追加 | ついか | TRUY GIA | thêm |
| 要望 | ようぼう | YẾU VỌNG | yêu cầu |
| 管理 | かんり | QUẢN LÝ | quản lý |
| 甘い | あまい | CAM | sơ sài |
| 正直 | しょうじき | CHÍNH TRỰC | thẳng thắn |
| 迷惑 | めいわく | MÊ HOẶC | làm phiền |
| 衝突 | しょうとつ | XUNG ĐỘT | xung đột |
| 処理 | しょり | XỬ LÝ | xử lý |
| 核心 | かくしん | HẠCH TÂM | cốt lõi |
| 方式 | ほうしき | PHƯƠNG THỨC | phương thức |
| 線形探査 | せんけいたんさ | TUYẾN HÌNH THÁM TRA | linear probing |
| 二次探査 | にじたんさ | NHỊ THỨ THÁM TRA | quadratic probing |
| 格納 | かくのう | CÁCH NẠP | lưu trữ |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 以降 | いこう | DĨ HÀNG | từ trở đi |
| 挿入順 | そうにゅうじゅん | SÁP NHẬP THUẬN | thứ tự chèn |
| 保持 | ほじ | BẢO TRÌ | giữ |
| 二分探索木 | にぶんたんさくぎ | NHỊ PHÂN THÁM TÁC MỘC | BST |
| 根 | ね | CĂN | gốc |
| 子節点 | こせってん | TỬ TIẾT ĐIỂM | nút con |
| 成る | なる | THÀNH | tạo thành |
| 二分木 | にぶんぎ | NHỊ PHÂN MỘC | cây nhị phân |
| 性質 | せいしつ | TÍNH CHẤT | tính chất |
| 削除 | さくじょ | TƯỚC TRỪ | xoá |
| 操作 | そうさ | THAO TÁC | thao tác |
| 置き換える | おきかえる | TRÍ HOÁN | thay thế |
| 右部分木 | みぎぶぶんき | HỮU BỘ PHẦN MỘC | cây con phải |
| 最小値 | さいしょうち | TỐI TIỂU TRỊ | giá trị nhỏ nhất |
| 完全 | かんぜん | HOÀN TOÀN | hoàn toàn |
| 取り出し | とりだし | THỦ XUẤT | lấy ra |
| 負 | ふ | PHỤ | âm |
| 正 | せい | CHÍNH | dương |
| 戻す | もどす | LỆ | đảo ngược |
| 優先度付き | ゆうせんどつき | ƯU TIÊN ĐỘ PHÓ | priority |
| イベント | いべんと | — | event |
| 参戦 | さんせん | THAM CHIẾN | tham chiến |
| 到達 | とうたつ | ĐÁO ĐẠT | đạt được |
| 凄い | すごい | THẾ | ghê gớm |
| 食べ放題 | たべほうだい | THỰC PHÓNG ĐỀ | buffet ăn không giới hạn |
| 太っ腹 | ふとっぱら | THÁI PHÚC | hào phóng |
| 影響 | えいきょう | ẢNH HƯỞNG | ảnh hưởng |
| 勧める | すすめる | KHUYẾN | khuyên |
| 絶対 | ぜったい | TUYỆT ĐỐI | tuyệt đối |
| 予約 | よやく | DỰ ƯỚC | đặt trước |
| 続ける | つづける | TỤC | tiếp tục |
