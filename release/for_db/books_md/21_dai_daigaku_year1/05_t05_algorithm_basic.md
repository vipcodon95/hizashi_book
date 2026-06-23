# Sách sinh viên Đại học Osaka · T5. Thuật toán cơ bản & AtCoder (アルゴリズム入門)

> **Mục tiêu nhân vật:** Đại (21t, năm 1 ĐH Osaka CS, 6/2026, N2) học các mẫu hội thoại tiếng Nhật trong lecture アルゴリズム入門: (1) hỏi sensei về 計算量 Big O, (2) trình bày code Bubble/Quicksort/Binary search lên bảng, (3) trao đổi sempai về thư viện chuẩn Python, (4) chat LINE nhóm AtCoder, (5) báo cáo tiến độ tự học BFS, (6) keigo khi hỏi `〜と理解してよろしいでしょうか`.

---

## Bối cảnh

Tháng 6/2026, giữa kỳ 1 cuối năm 1. Đại đã quen lớp, ngồi cạnh **Yamato** (bạn cùng khoá Nhật, AtCoder 緑 1100) và **Lin Wei** (du học sinh TQ, AtCoder 水色 1300). Sensei môn アルゴリズム入門 là **大野 (Ohno)-sensei** 60 tuổi, tác giả giáo trình. Aiko (UI/UX, khoa thiết kế) hay xuất hiện ở canteen. Chương này tập trung mẫu câu **hỏi sensei trong lecture**, **báo cáo code mình viết** và **chat LINE nhóm AtCoder cuối tuần**.

---

## Tình huống 1 — Giảng đường B2 · 9:00, hỏi Ohno-sensei về Big O

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは「<ruby>計算量<rt>けいさんりょう</rt></ruby> Big O <ruby>記法<rt>きほう</rt></ruby>」です。アルゴリズムの<ruby>効率<rt>こうりつ</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る<ruby>道具<rt>どうぐ</rt></ruby>です。<br>*(Hôm nay học "ký pháp Big O". Đây là công cụ đo hiệu năng thuật toán.)* |
| Ohno | O(1) は<ruby>定数時間<rt>ていすうじかん</rt></ruby>、O(log n) は<ruby>対数時間<rt>たいすうじかん</rt></ruby>、O(n²) は<ruby>二乗時間<rt>にじょうじかん</rt></ruby>です。<br>*(O(1) hằng số, O(log n) logarit, O(n²) bậc hai.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか。<br>*(Thưa thầy, em được phép hỏi ạ?)* |
| Ohno | はい、どうぞ。<br>*(Ừ, em cứ hỏi.)* |
| Đại | quick sort の<ruby>平均<rt>へいきん</rt></ruby> O(n log n) と<ruby>最悪<rt>さいあく</rt></ruby> O(n²)、この<ruby>差<rt>さ</rt></ruby>は pivot の<ruby>選<rt>えら</rt></ruby>び<ruby>方<rt>かた</rt></ruby>によるものだと<ruby>理解<rt>りかい</rt></ruby>してよろしいでしょうか。<br>*(Sự khác biệt giữa quick sort trung bình O(n log n) và xấu nhất O(n²) là do cách chọn pivot, em hiểu vậy có đúng không ạ?)* |
| Ohno | その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>勉強<rt>べんきょう</rt></ruby>していますね。ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>ですか?<br>*(Đúng vậy. Em học chăm đấy. Em là du học sinh Việt Nam phải không?)* |
| Đại | はい、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>1<ruby>年<rt>ねん</rt></ruby>のグエン・ヴァン・ダイです。<br>*(Vâng, em là Nguyễn Thanh Đại, năm 1 ĐH Osaka.)* |

---

## Tình huống 2 — Giảng đường B2 · 10:30, lên bảng viết code Bubble Sort

*Sensei gọi Đại lên bảng viết Bubble Sort trước cả lớp 80 sinh viên.*

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>誰<rt>だれ</rt></ruby>か<ruby>黒板<rt>こくばん</rt></ruby>で bubble sort を<ruby>書<rt>か</rt></ruby>いてみてくれますか?<br>*(Ai lên bảng viết bubble sort thử nào?)* |
| Đại | (giơ tay) はい、<ruby>私<rt>わたし</rt></ruby>がやらせていただきます。<br>*(Vâng, để em làm ạ.)* |
| Đại | (đứng cạnh bảng) Python で<ruby>書<rt>か</rt></ruby>かせていただきます。<ruby>二重<rt>にじゅう</rt></ruby> for ループで<ruby>隣<rt>となり</rt></ruby><ruby>同士<rt>どうし</rt></ruby>を<ruby>比較<rt>ひかく</rt></ruby>して<ruby>交換<rt>こうかん</rt></ruby>します。<br>*(Em xin viết bằng Python ạ. Vòng for lồng để so sánh và hoán đổi 2 phần tử kề.)* |
| Đại | (viết) `for i in range(n): for j in range(n-i-1): if a[j]>a[j+1]: a[j],a[j+1]=a[j+1],a[j]`<br>*(Code lên bảng.)* |
| Ohno | <ruby>計算量<rt>けいさんりょう</rt></ruby>は?<br>*(Độ phức tạp là?)* |
| Đại | <ruby>最悪<rt>さいあく</rt></ruby>・<ruby>平均<rt>へいきん</rt></ruby>ともに O(n²)、<ruby>最良<rt>さいりょう</rt></ruby>は<ruby>既<rt>すで</rt></ruby>に<ruby>整列<rt>せいれつ</rt></ruby><ruby>済<rt>ず</rt></ruby>みの<ruby>場合<rt>ばあい</rt></ruby> O(n) です。<br>*(Xấu nhất và trung bình đều O(n²), tốt nhất là O(n) khi đã sắp xếp sẵn.)* |
| Ohno | <ruby>完璧<rt>かんぺき</rt></ruby>です。<ruby>席<rt>せき</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>っていいですよ。<br>*(Hoàn hảo. Em về chỗ được rồi.)* |
| Yamato | (whisper khi Đại ngồi xuống) おっ、ダイ<ruby>調子<rt>ちょうし</rt></ruby>いいな。<br>*(Ờ, Đại sung quá.)* |

---

## Tình huống 3 — Giảng đường B2 · 11:00, hỏi lại sensei khi chưa hiểu

| Vai | Lời thoại |
|---|---|
| Ohno | <ruby>次<rt>つぎ</rt></ruby>は merge sort の<ruby>分割統治法<rt>ぶんかつとうちほう</rt></ruby>です。<ruby>配列<rt>はいれつ</rt></ruby>を<ruby>半分<rt>はんぶん</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けて、<ruby>再帰的<rt>さいきてき</rt></ruby>にソートし、<ruby>最後<rt>さいご</rt></ruby>に merge します。<br>*(Tiếp theo là divide & conquer của merge sort. Chia mảng làm đôi, sắp xếp đệ quy rồi merge ở cuối.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、すみません、「<ruby>分割統治法<rt>ぶんかつとうちほう</rt></ruby>」というのは?<br>*(Thưa thầy, xin lỗi thầy, "divide & conquer" nghĩa là gì ạ?)* |
| Ohno | <ruby>英語<rt>えいご</rt></ruby>では divide and conquer です。<ruby>問題<rt>もんだい</rt></ruby>を<ruby>小<rt>ちい</rt></ruby>さく<ruby>分<rt>わ</rt></ruby>けて、それぞれ<ruby>解<rt>と</rt></ruby>いて、<ruby>結合<rt>けつごう</rt></ruby>する<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>です。<br>*(Tiếng Anh là divide and conquer. Chia bài toán nhỏ, giải từng phần rồi ghép lại.)* |
| Đại | なるほど、<ruby>理解<rt>りかい</rt></ruby>しました。ありがとうございます。<br>*(À, em hiểu rồi. Cảm ơn thầy.)* |
| Ohno | <ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>があれば、いつでも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Từ nào không hiểu cứ hỏi bất cứ lúc nào.)* |

---

## Tình huống 4 — Canteen tầng 1 · 12:15, Yamato dạy `sorted()` Python

*Đại + Yamato + Lin Wei ngồi ăn karaage định食. Aiko đến ngồi cùng.*

| Vai | Lời thoại |
|---|---|
| Yamato | ダイ、<ruby>競技<rt>きょうぎ</rt></ruby>プログラミングなら quick sort を<ruby>手書<rt>てが</rt></ruby>きしなくていいぞ。<br>*(Đại à, lập trình thi đấu thì không cần tự viết quick sort đâu.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に? <ruby>授業<rt>じゅぎょう</rt></ruby>では<ruby>書<rt>か</rt></ruby>かされたけど。<br>*(Thật à? Trong lớp bị bắt viết mà.)* |
| Yamato | Python の `sorted()` は Timsort で<ruby>実装<rt>じっそう</rt></ruby>されている。<ruby>安定<rt>あんてい</rt></ruby>ソートで O(n log n)、C で<ruby>書<rt>か</rt></ruby>かれているから<ruby>圧倒的<rt>あっとうてき</rt></ruby>に<ruby>速<rt>はや</rt></ruby>い。<br>*(`sorted()` của Python cài bằng Timsort. Sắp xếp ổn định O(n log n), viết bằng C nên cực nhanh.)* |
| Lin Wei | (English) Yeah, in contests just `sorted(arr)`. Don't reinvent the wheel.<br>*(Ờ, thi đấu cứ `sorted(arr)`. Đừng phát minh lại bánh xe.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。Timsort というのは<ruby>聞<rt>き</rt></ruby>いたことがなかった。<br>*(Học được bài hay. Timsort thì mình chưa từng nghe.)* |
| Aiko | (đến) <ruby>何<rt>なに</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>?<br>*(Đang nói chuyện gì vậy?)* |
| Yamato | ソートの<ruby>話<rt>はなし</rt></ruby>。<ruby>愛子<rt>あいこ</rt></ruby>には<ruby>関係<rt>かんけい</rt></ruby>ないから<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Chuyện sort. Aiko không liên quan đâu, kệ đi.)* |
| Aiko | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>私<rt>わたし</rt></ruby>は Figma で<ruby>並<rt>なら</rt></ruby>べ<ruby>替<rt>か</rt></ruby>えるよ!<br>*(Cười. Mình sắp xếp bằng Figma!)* |

---

## Tình huống 5 — Giảng đường B2 · 13:00, hỏi sensei về binary search

| Vai | Lời thoại |
|---|---|
| Ohno | binary search は<ruby>探索範囲<rt>たんさくはんい</rt></ruby>を<ruby>毎回<rt>まいかい</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>に<ruby>絞<rt>しぼ</rt></ruby>るアルゴリズムで、O(log n) です。<br>*(Binary search là thuật toán thu hẹp phạm vi tìm kiếm còn một nửa mỗi lần, O(log n).)* |
| Ohno | ただし<ruby>前提条件<rt>ぜんていじょうけん</rt></ruby>があります。<br>*(Tuy nhiên có một điều kiện tiên quyết.)* |
| Đại | <ruby>事前<rt>じぜん</rt></ruby>にソート<ruby>済<rt>ず</rt></ruby>みであること、ですか?<br>*(Là phải sắp xếp trước, đúng không ạ?)* |
| Ohno | その<ruby>通<rt>とお</rt></ruby>り。Python の<ruby>標準<rt>ひょうじゅん</rt></ruby>ライブラリに `bisect` というモジュールがあって、<ruby>挿入位置<rt>そうにゅういち</rt></ruby>を O(log n) で<ruby>見<rt>み</rt></ruby>つけられます。<br>*(Chính xác. Thư viện chuẩn Python có module `bisect`, tìm vị trí chèn O(log n).)* |
| Đại | `bisect_left` と `bisect_right` の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Khác biệt giữa `bisect_left` và `bisect_right` là gì ạ?)* |
| Ohno | <ruby>同<rt>おな</rt></ruby>じ<ruby>値<rt>あたい</rt></ruby>が<ruby>複数<rt>ふくすう</rt></ruby>あった<ruby>場合<rt>ばあい</rt></ruby>、left は<ruby>左端<rt>ひだりはし</rt></ruby>、right は<ruby>右端<rt>みぎはし</rt></ruby>の<ruby>挿入位置<rt>そうにゅういち</rt></ruby>を<ruby>返<rt>かえ</rt></ruby>します。<br>*(Khi có nhiều giá trị trùng, left trả vị trí chèn ngoài cùng bên trái, right ngoài cùng bên phải.)* |
| Đại | わかりました。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>で<ruby>使<rt>つか</rt></ruby>ってみます。<br>*(Em hiểu rồi. Bài tập tuần sau em sẽ thử dùng.)* |

---

## Tình huống 6 — Văn phòng sensei tầng 4 · 16:30, ghé văn phòng hỏi thêm

*Đại gõ cửa văn phòng Ohno-sensei sau giờ học.*

| Vai | Lời thoại |
|---|---|
| Đại | (gõ cửa) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>少々<rt>しょうしょう</rt></ruby>よろしいでしょうか。<br>*(Xin phép thầy. Thầy Ohno, thầy có rảnh ít phút không ạ?)* |
| Ohno | グエン<ruby>君<rt>くん</rt></ruby>、どうぞ。<ruby>何<rt>なに</rt></ruby>か?<br>*(Em Nguyễn à, vào đi. Gì vậy?)* |
| Đại | アルゴリズムの<ruby>独学<rt>どくがく</rt></ruby>に<ruby>適<rt>てき</rt></ruby>した<ruby>教材<rt>きょうざい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか。<br>*(Thầy có thể gợi ý giáo trình phù hợp để tự học thuật toán không ạ?)* |
| Ohno | そうですね。「アルゴ<ruby>式<rt>しき</rt></ruby>」というサイトはいかがですか? <ruby>無料<rt>むりょう</rt></ruby>で、<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>解説<rt>かいせつ</rt></ruby>もあります。<br>*(Để xem. Trang "Algo-shiki" thế nào? Miễn phí, có giải thích tiếng Nhật.)* |
| Đại | ありがとうございます。AtCoder の ABC は<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>参加<rt>さんか</rt></ruby>していますが、まだ<ruby>茶色<rt>ちゃいろ</rt></ruby>です。<br>*(Cảm ơn thầy ạ. AtCoder ABC em tham gia mỗi tuần, nhưng vẫn còn Brown.)* |
| Ohno | <ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>で<ruby>茶色<rt>ちゃいろ</rt></ruby>なら<ruby>立派<rt>りっぱ</rt></ruby>ですよ。<ruby>焦<rt>あせ</rt></ruby>らずに。<ruby>来年<rt>らいねん</rt></ruby>には<ruby>緑<rt>みどり</rt></ruby>になれるはずです。<br>*(Năm 1 mà Brown là giỏi rồi. Đừng nóng vội. Sang năm là có thể lên Green.)* |
| Đại | はい、<ruby>励<rt>はげ</rt></ruby>みになります。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, thầy động viên em quá. Em xin phép.)* |

---

## Tình huống 7 — Phòng trọ Toyonaka · Thứ 7 21:00, AtCoder ABC bắt đầu (LINE nhóm)

| Vai | Lời thoại |
|---|---|
| Yamato | (LINE group "OsakaCS3") ABC<ruby>始<rt>はじ</rt></ruby>まる!<ruby>全員<rt>ぜんいん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>?<br>*(ABC bắt đầu! Cả nhóm tham gia chứ?)* |
| Đại | <ruby>参加<rt>さんか</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>。VSCode<ruby>開<rt>ひら</rt></ruby>いた。<br>*(Đang tham gia. Mở VSCode rồi.)* |
| Lin Wei | Joined. Let's go.<br>*(Tham gia rồi. Xông pha.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>は<ruby>応援団<rt>おうえんだん</rt></ruby>! ファイト!<br>*(Mình là cổ động viên! Fight!)* |
| Đại | (sau 30 phút) A、B AC! C は<ruby>難<rt>むずか</rt></ruby>しい...BFS<ruby>必要<rt>ひつよう</rt></ruby>。まだ<ruby>習<rt>なら</rt></ruby>ってない。<br>*(A, B AC! Bài C khó... cần BFS. Chưa học.)* |
| Yamato | A+B+C AC! C は BFS で<ruby>解<rt>と</rt></ruby>けた。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>で<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(A+B+C AC! Bài C giải bằng BFS được. Tháng sau Ohno-sensei sẽ dạy.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>独学<rt>どくがく</rt></ruby>する。<ruby>待<rt>ま</rt></ruby>てない。<br>*(Tớ mai tự học. Không chờ được.)* |
| Lin Wei | A+B+C+D AC. D was Dijkstra warm-up.<br>*(AC 4 bài. Bài D như khởi động Dijkstra.)* |
| Aiko | みんな<ruby>凄<rt>すご</rt></ruby>すぎ!<br>*(Mọi người ghê quá!)* |

---

## Tình huống 8 — Cafe Doutor Toyonaka · Chủ nhật 10:00, Đại giảng BFS cho Yamato

*Đại tự học BFS qua đêm, sáng hôm sau khoe Yamato ở Doutor.*

| Vai | Lời thoại |
|---|---|
| Đại | (mở laptop) <ruby>昨日<rt>きのう</rt></ruby>の C <ruby>問題<rt>もんだい</rt></ruby>、BFS で<ruby>解<rt>と</rt></ruby>けたよ。`deque` を<ruby>使<rt>つか</rt></ruby>った。<br>*(Bài C hôm qua, tớ giải bằng BFS được rồi. Dùng `deque`.)* |
| Yamato | お、<ruby>見<rt>み</rt></ruby>せて。<br>*(Ồ, xem nào.)* |
| Đại | `from collections import deque` で queue を<ruby>作<rt>つく</rt></ruby>って、`popleft()` で<ruby>先頭<rt>せんとう</rt></ruby>を O(1) で<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す。`list.pop(0)` だと O(n) で TLE になる。<br>*(Tạo queue bằng `deque`, dùng `popleft()` lấy đầu O(1). Nếu dùng `list.pop(0)` là O(n), sẽ TLE.)* |
| Yamato | <ruby>正解<rt>せいかい</rt></ruby>! その<ruby>違<rt>ちが</rt></ruby>いに<ruby>気<rt>き</rt></ruby>づくのが<ruby>大事<rt>だいじ</rt></ruby>。<ruby>独学<rt>どくがく</rt></ruby>でそこまで<ruby>分<rt>わ</rt></ruby>かるとは<ruby>偉<rt>えら</rt></ruby>いな。<br>*(Đúng rồi! Nhận ra điểm khác đó mới quan trọng. Tự học đến mức đó giỏi đấy.)* |
| Đại | (cười) <ruby>褒<rt>ほ</rt></ruby>めすぎ。コーヒーおごるから、DP も<ruby>教<rt>おし</rt></ruby>えて?<br>*(Khen quá. Tớ bao cà phê, dạy tớ DP đi?)* |
| Yamato | DP は<ruby>来月<rt>らいげつ</rt></ruby>の lecture を<ruby>待<rt>ま</rt></ruby>つほうがいい。<ruby>大野<rt>おおの</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>解説<rt>かいせつ</rt></ruby>が<ruby>絶妙<rt>ぜつみょう</rt></ruby>だから。<br>*(DP thì đợi lecture tháng sau hay hơn. Ohno-sensei giảng tuyệt cú mèo.)* |

---

## Tình huống 9 — Hành lang khoa CS · Thứ 2 8:50, Lin Wei khoe rating Cyan

| Vai | Lời thoại |
|---|---|
| Lin Wei | (chìa điện thoại) Dai! Look, I'm Cyan now — 1305!<br>*(Đại! Nhìn này, tớ Cyan rồi — 1305!)* |
| Đại | おお、おめでとう! <ruby>速<rt>はや</rt></ruby>いね。<br>*(Ồ, chúc mừng! Lên nhanh ghê.)* |
| Yamato | （<ruby>悔<rt>くや</rt></ruby>しそう）<ruby>俺<rt>おれ</rt></ruby>はまだ<ruby>緑<rt>みどり</rt></ruby>1100…リン・ウェイには<ruby>追<rt>お</rt></ruby>いつけない。<br>*(Tiếc rẻ. Tớ vẫn Green 1100... không đuổi kịp Lin Wei.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>750。<ruby>年<rt>ねん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>緑<rt>みどり</rt></ruby>になりたい。<br>*(Tớ Brown 750. Trong năm muốn lên Green.)* |
| Lin Wei | Brown after 1 month is normal. Just keep coming to ABC every Saturday.<br>*(Brown sau 1 tháng là bình thường. Cứ chăm tham gia ABC mỗi thứ 7.)* |
| Đại | アドバイスありがとう。<br>*(Cảm ơn lời khuyên.)* |

---

## Tình huống 10 — Lecture · Thứ 4 10:00, Ohno gọi Đại lên giải bài

| Vai | Lời thoại |
|---|---|
| Ohno | グエン<ruby>君<rt>くん</rt></ruby>、この<ruby>配列<rt>はいれつ</rt></ruby>を quicksort で<ruby>並<rt>なら</rt></ruby>べ<ruby>替<rt>か</rt></ruby>える<ruby>過程<rt>かてい</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してくれますか?<br>*(Em Nguyễn, giải thích quá trình quick sort sắp xếp mảng này được không?)* |
| Đại | はい。まず pivot を<ruby>中央<rt>ちゅうおう</rt></ruby>の<ruby>要素<rt>ようそ</rt></ruby>に<ruby>選<rt>えら</rt></ruby>びます。<ruby>例<rt>たと</rt></ruby>えば [3, 6, 1, 8, 2, 7, 4] なら pivot = 8 です。<br>*(Vâng. Đầu tiên chọn pivot là phần tử giữa. Ví dụ [3,6,1,8,2,7,4] thì pivot = 8.)* |
| Đại | <ruby>次<rt>つぎ</rt></ruby>に pivot より<ruby>小<rt>ちい</rt></ruby>さい<ruby>要素<rt>ようそ</rt></ruby>を<ruby>左<rt>ひだり</rt></ruby>、<ruby>大<rt>おお</rt></ruby>きい<ruby>要素<rt>ようそ</rt></ruby>を<ruby>右<rt>みぎ</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けます。これを<ruby>再帰的<rt>さいきてき</rt></ruby>に<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>します。<br>*(Tiếp theo, chia phần tử nhỏ hơn pivot sang trái, lớn hơn sang phải. Lặp đệ quy.)* |
| Ohno | <ruby>最悪<rt>さいあく</rt></ruby><ruby>計算量<rt>けいさんりょう</rt></ruby>はいつ<ruby>発生<rt>はっせい</rt></ruby>しますか?<br>*(Khi nào xảy ra trường hợp xấu nhất?)* |
| Đại | pivot が<ruby>常<rt>つね</rt></ruby>に<ruby>最大<rt>さいだい</rt></ruby>または<ruby>最小<rt>さいしょう</rt></ruby><ruby>要素<rt>ようそ</rt></ruby>になる<ruby>場合<rt>ばあい</rt></ruby>、つまり<ruby>既<rt>すで</rt></ruby>にソート<ruby>済<rt>ず</rt></ruby>みの<ruby>配列<rt>はいれつ</rt></ruby>で<ruby>端<rt>はし</rt></ruby>を pivot にする<ruby>場合<rt>ばあい</rt></ruby>です。<br>*(Khi pivot luôn là phần tử lớn nhất hoặc nhỏ nhất, tức là mảng đã sắp sẵn mà chọn pivot ở đầu/cuối.)* |
| Ohno | よく<ruby>整理<rt>せいり</rt></ruby>されています。<ruby>満点<rt>まんてん</rt></ruby>。<br>*(Trình bày tốt. Điểm tối đa.)* |

---

## Tình huống 11 — Konbini Lawson Senrichūō · Thứ 6 22:00, mua Red Bull (Suzuki tenchō cũ)

*Đại ghé Lawson cũ — Suzuki tenchō vẫn nhớ Đại.*

| Vai | Lời thoại |
|---|---|
| Đại | (vào cửa) こんばんは、お<ruby>久<rt>ひさ</rt></ruby>しぶりです。<br>*(Chào buổi tối, lâu quá không gặp ạ.)* |
| Suzuki | ダイ<ruby>君<rt>くん</rt></ruby>! <ruby>大学<rt>だいがく</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>はどう?<br>*(Đại! Học đại học sao rồi?)* |
| Đại | アルゴリズムの<ruby>授業<rt>じゅぎょう</rt></ruby>が<ruby>大変<rt>たいへん</rt></ruby>です。<ruby>今夜<rt>こんや</rt></ruby>も<ruby>徹夜<rt>てつや</rt></ruby>で<ruby>課題<rt>かだい</rt></ruby>です。<br>*(Lớp thuật toán vất vả lắm. Tối nay lại thức trắng làm bài tập.)* |
| Suzuki | レッドブル<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>、おまけしておくよ。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(2 lon Red Bull tôi tặng nhé. Cố lên.)* |
| Đại | え、いいんですか? ありがとうございます!<br>*(Ơ, được ạ? Cảm ơn anh!)* |
| Suzuki | バイトを<ruby>辞<rt>や</rt></ruby>めても、ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby>みたいなものだから。<br>*(Em nghỉ làm rồi nhưng Đại như người nhà mà.)* |
| Đại | <ruby>嬉<rt>うれ</rt></ruby>しいです。また<ruby>顔<rt>かお</rt></ruby><ruby>出<rt>だ</rt></ruby>します。<br>*(Em vui quá. Em sẽ ghé thăm.)* |

---

## Tình huống 12 — Phòng trọ Toyonaka · Khuya thứ 7 23:30, gọi điện Mai (cảnh tiếng Việt)

*Sau ABC, Đại gọi video Mai ở Hà Nội. Cả hai nói tiếng Việt, chêm từ Nhật đã học trong ngày.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay ABC sao rồi? Lên rating không? |
| Đại | (tiếng Việt) Anh AC hai bài thôi, lên 25 điểm. Bài C cần BFS — `breadth-first search`, anh chưa học. Mai chưa lên rating ngon được. |
| Mai | (tiếng Việt) BFS là gì hả anh? |
| Đại | (tiếng Việt) Là duyệt đồ thị theo từng tầng, dùng hàng đợi — `deque` ấy. Sensei Ohno bảo tháng sau mới dạy nhưng anh tự học trước. |
| Mai | (tiếng Việt) Anh chăm thế. Sensei có khen anh không? |
| Đại | (tiếng Việt) Hôm nay sensei gọi anh lên bảng viết Bubble sort với giải thích Quicksort. Sensei khen "完璧です" — hoàn hảo. Anh sướng cả ngày. |
| Mai | (tiếng Việt) Em mừng quá! À, mẹ em hôm nay đo áo dài rồi. 7 tháng nữa cưới đấy anh. |
| Đại | (tiếng Việt) Anh nhớ. Đầu năm 2027 anh về. Cố sống một mình thêm 7 tháng nữa thôi. |
| Mai | (tiếng Việt) Anh ngủ sớm đi. Đừng thức làm bài đến sáng nữa. |
| Đại | (tiếng Việt) Ừ, anh uống nốt lon Red Bull rồi đi ngủ. Anh thương em. |

---

## Đọng lại chương 5

Đại làm quen với phong cách lecture đại học CS Nhật: sensei viết công thức trên bảng, gọi sinh viên lên giải. Mẫu câu **「<ruby>質問<rt>しつもん</rt></ruby>してもよろしいでしょうか」** (xin phép đặt câu hỏi) mở đầu mọi tương tác với Ohno-sensei. Khi không hiểu thuật ngữ, Đại dùng **「〜というのは?」** (cái đó nghĩa là gì?) — câu cứu mạng du học sinh. Lên bảng giải thích, Đại dùng **「〜と理解してよろしいでしょうか」** để xác nhận hiểu đúng. Trong LINE nhóm AtCoder, ngôn ngữ rút gọn: **「<ruby>参加<rt>さんか</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>」「AC!」「TLEになる」**. Khi tự học BFS qua đêm và giảng lại cho Yamato, Đại hiểu mình đã nắm vững. Tại văn phòng sensei, Đại học **「<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>少々<rt>しょうしょう</rt></ruby>よろしいでしょうか」** — câu gõ cửa keigo chuẩn. Cuối tuần ghé Lawson cũ chào Suzuki tenchō, được tặng Red Bull. Đêm khuya gọi Mai khoe sensei khen **「<ruby>完璧<rt>かんぺき</rt></ruby>です」**.

> Từ vựng & mẫu câu chương này: <ruby>計算量<rt>けいさんりょう</rt></ruby>・Big O・<ruby>定数時間<rt>ていすうじかん</rt></ruby>・<ruby>対数時間<rt>たいすうじかん</rt></ruby>・<ruby>分割統治法<rt>ぶんかつとうちほう</rt></ruby>・<ruby>再帰的<rt>さいきてき</rt></ruby>・<ruby>探索範囲<rt>たんさくはんい</rt></ruby>・<ruby>事前<rt>じぜん</rt></ruby>にソート<ruby>済<rt>ず</rt></ruby>み・<ruby>挿入位置<rt>そうにゅういち</rt></ruby>・bisect・deque・Timsort・〜してもよろしいでしょうか・〜というのは?・〜と<ruby>理解<rt>りかい</rt></ruby>してよろしいでしょうか・<ruby>失礼<rt>しつれい</rt></ruby>します・<ruby>励<rt>はげ</rt></ruby>みになります・<ruby>完璧<rt>かんぺき</rt></ruby>です・お<ruby>久<rt>ひさ</rt></ruby>しぶりです

## Bí quyết chương

- **Keigo lecture**: Đại học Nhật còn dùng keigo cứng khi hỏi sensei. `〜させていただきます` khi lên bảng, `〜よろしいでしょうか` khi xin phép.
- **Thuật ngữ kỹ thuật giữ EN, bao quanh là JP**: pivot, BFS, Timsort giữ nguyên — `Python の sorted() は Timsort で実装されている`.
- **「〜というのは?」 là vũ khí**: Du học sinh không hiểu từ chuyên ngành cứ hỏi thẳng. Sensei sẽ giải thích lại bằng EN nếu cần.
- **LINE nhóm AtCoder**: Văn phong rút gọn, không keigo. `参加中`, `AC!`, `TLE` thay vì câu đầy đủ.
- **Cảnh VN cuối**: Mai không hiểu BFS nhưng vẫn quan tâm tiến độ Đại — đây là phần thưởng cảm xúc cuối ngày.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 計算量 | けいさんりょう | KẾ TOÁN LƯỢNG | độ phức tạp |
| 記法 | きほう | KÝ PHÁP | ký pháp |
| 効率 | こうりつ | HIỆU SUẤT | hiệu năng |
| 道具 | どうぐ | ĐẠO CỤ | công cụ |
| 定数時間 | ていすうじかん | ĐỊNH SỐ THỜI GIAN | thời gian hằng số |
| 対数時間 | たいすうじかん | ĐỐI SỐ THỜI GIAN | thời gian logarit |
| 二乗時間 | にじょうじかん | NHỊ THỪA THỜI GIAN | thời gian bậc hai |
| 平均 | へいきん | BÌNH QUÂN | trung bình |
| 最悪 | さいあく | TỐI ÁC | xấu nhất |
| 理解 | りかい | LÝ GIẢI | hiểu |
| 国籍 | こくせき | QUỐC TỊCH | quốc tịch |
| 黒板 | こくばん | HẮC BẢN | bảng đen |
| 二重 | にじゅう | NHỊ TRỌNG | đôi, lồng |
| 隣同士 | となりどうし | LÂN ĐỒNG SỸ | hai phần tử kề |
| 比較 | ひかく | TỈ GIẢC | so sánh |
| 最良 | さいりょう | TỐI LƯƠNG | tốt nhất |
| 整列 | せいれつ | CHỈNH LIỆT | đã sắp xếp |
| 調子 | ちょうし | ĐIỀU TỬ | phong độ |
| 分割統治法 | ぶんかつとうちほう | PHÂN CÁT THỐNG TRỊ PHÁP | divide and conquer |
| 配列 | はいれつ | PHỐI LIỆT | mảng |
| 半分 | はんぶん | BÁN PHẦN | một nửa |
| 再帰的 | さいきてき | TÁI QUY ĐÍCH | đệ quy |
| 結合 | けつごう | KẾT HỢP | ghép |
| 安定 | あんてい | AN ĐỊNH | ổn định |
| 圧倒的 | あっとうてき | ÁP ĐẢO ĐÍCH | áp đảo |
| 関係 | かんけい | QUAN HỆ | liên quan |
| 探索範囲 | たんさくはんい | THÁM TÁC PHẠM VI | phạm vi tìm kiếm |
| 絞る | しぼる | GIẢO | thu hẹp |
| 前提条件 | ぜんていじょうけん | TIỀN ĐỀ ĐIỀU KIỆN | điều kiện tiên quyết |
| 挿入位置 | そうにゅういち | SÁP NHẬP VỊ TRÍ | vị trí chèn |
| 違い | ちがい | VI | khác biệt |
| 複数 | ふくすう | PHỨC SỐ | nhiều |
| 失礼 | しつれい | THẤT LỄ | thất lễ |
| 少々 | しょうしょう | THIẾU THIẾU | một chút |
| 独学 | どくがく | ĐỘC HỌC | tự học |
| 適 | てき | THÍCH | thích hợp |
| 教材 | きょうざい | GIÁO TÀI | giáo trình |
| 解説 | かいせつ | GIẢI THUYẾT | giải thích |
| 立派 | りっぱ | LẬP PHÁI | giỏi |
| 焦らず | あせらず | TIÊU | đừng vội |
| 励み | はげみ | LỆ | động viên |
| 応援団 | おうえんだん | ỨNG VIỆN ĐOÀN | cổ động viên |
| 必要 | ひつよう | TẤT YẾU | cần thiết |
| 先頭 | せんとう | TIÊN ĐẦU | đầu |
| 偉い | えらい | VĨ | giỏi |
| 絶妙 | ぜつみょう | TUYỆT DIỆU | tuyệt diệu |
| 悔しい | くやしい | HỐI | tiếc rẻ |
| 過程 | かてい | QUÁ TRÌNH | quá trình |
| 中央 | ちゅうおう | TRUNG ƯƠNG | trung tâm |
| 要素 | ようそ | YẾU TỐ | phần tử |
| 発生 | はっせい | PHÁT SINH | xảy ra |
| 最大 | さいだい | TỐI ĐẠI | lớn nhất |
| 最小 | さいしょう | TỐI TIỂU | nhỏ nhất |
| 端 | はし | ĐOAN | đầu/cuối |
| 整理 | せいり | CHỈNH LÝ | tổ chức, trình bày |
| 満点 | まんてん | MÃN ĐIỂM | điểm tối đa |
| 徹夜 | てつや | TRIỆT DẠ | thức trắng |
| 家族 | かぞく | GIA TỘC | gia đình |
