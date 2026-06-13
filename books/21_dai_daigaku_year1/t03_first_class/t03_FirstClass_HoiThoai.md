# Sách sinh viên Đại học Osaka · T3. Buổi học Python đầu tiên (プログラミング演習 I)

> **Mục tiêu nhân vật:** Đại 21 tuổi, ngày 7/4/2026 — buổi đầu lớp プログラミング演習 I. Học các mẫu hội thoại tiếng Nhật trong phòng máy ĐH: (1) xin phép sensei dùng laptop riêng, (2) hỏi yêu cầu môi trường (Python phiên bản, IDE), (3) báo cáo lỗi/kết quả chạy code, (4) hỏi sensei khi không hiểu thuật ngữ kỹ thuật JP, (5) trao đổi với bạn cùng bàn về cách viết code, (6) chào hỏi senpai và hỏi về lab/AtCoder.

---

## Bối cảnh

Thứ 3 ngày 7/4/2026 chiều, buổi đầu lớp プログラミング演習 I tại phòng máy B棟 (30 iMac mới). Sensei: 渡辺 (Watanabe, 45 tuổi, Lab HCI). Trợ giảng: 山田 (Yamada-senpai, năm 4, AtCoder 水色, lab Inoue). 80 SV chia 4 lớp 20 người. Đại + Yamato + Aiko cùng lớp A. Lin Wei + Rajesh đã giỏi → mentor được đổi lên lớp upper. Chương này tập trung **các mẫu câu xin phép, báo cáo kết quả code, hỏi thuật ngữ, trao đổi với bạn cùng bàn**.

---

## Tình huống 1 — Cửa phòng máy B棟 · 12:55, xin phép dùng laptop riêng

*Watanabe-sensei đứng cửa, gật đầu chào từng SV vào.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして。グエン・ヴァン・ダイです。<br>*(Thầy Watanabe, em chào thầy. Em là Nguyễn Văn Đại.)* |
| Watanabe | はい、グエンさん。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em Đại. Mong em hợp tác.)* |
| Đại | あの、<ruby>持参<rt>じさん</rt></ruby>のMacBookを<ruby>使<rt>つか</rt></ruby>ってもよろしいですか?<br>*(Thưa thầy, em dùng MacBook mang theo được không ạ?)* |
| Watanabe | はい、<ruby>環境<rt>かんきょう</rt></ruby>は<ruby>自由<rt>じゆう</rt></ruby>です。ただし、Python<ruby>3<rt>さん</rt></ruby>.<ruby>12<rt>じゅうに</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>とVSCodeを<ruby>推奨<rt>すいしょう</rt></ruby>します。<br>*(Được, môi trường tự chọn. Tuy nhiên thầy khuyến nghị Python 3.12 trở lên và VSCode.)* |
| Đại | <ruby>既<rt>すで</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>しました。Python<ruby>3<rt>さん</rt></ruby>.<ruby>12<rt>じゅうに</rt></ruby>とVSCodeが<ruby>入<rt>はい</rt></ruby>っています。<br>*(Em đã chuẩn bị rồi ạ. Đã cài Python 3.12 và VSCode.)* |
| Watanabe | <ruby>素晴<rt>すば</rt></ruby>らしい。では<ruby>席<rt>せき</rt></ruby>に<ruby>着<rt>つ</rt></ruby>いてください。<br>*(Tuyệt vời. Em ngồi vào chỗ đi.)* |

---

## Tình huống 2 — Trong phòng máy · 13:00, Watanabe intro Python

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>はPython<ruby>入門<rt>にゅうもん</rt></ruby>です。Pythonは<ruby>1991<rt>せんきゅうひゃくきゅうじゅういち</rt></ruby><ruby>年<rt>ねん</rt></ruby>にGuido van Rossum<ruby>氏<rt>し</rt></ruby>が<ruby>作<rt>つく</rt></ruby>りました。<br>*(Hôm nay nhập môn Python. Python do ông Guido van Rossum tạo năm 1991.)* |
| Watanabe | <ruby>特徴<rt>とくちょう</rt></ruby>は<ruby>4<rt>よん</rt></ruby>つあります。<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け、<ruby>解釈<rt>かいしゃく</rt></ruby><ruby>型<rt>がた</rt></ruby>、インデント<ruby>必須<rt>ひっす</rt></ruby>、AIや<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>の<ruby>主流<rt>しゅりゅう</rt></ruby>です。<br>*(Có 4 đặc trưng: định kiểu động, thông dịch, bắt buộc thụt đầu dòng, chủ đạo AI/ML.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、すみません。<br>*(Thưa thầy.)* |
| Watanabe | はい、どうぞ。<br>*(Em hỏi đi.)* |
| Đại | 「<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Thưa thầy, "động kiểu phó" — dynamic typing — nghĩa là gì ạ?)* |
| Watanabe | <ruby>良<rt>い</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>変数<rt>へんすう</rt></ruby>の<ruby>型<rt>かた</rt></ruby>を<ruby>事前<rt>じぜん</rt></ruby>に<ruby>宣言<rt>せんげん</rt></ruby>しなくていいということです。`x = 5` と<ruby>書<rt>か</rt></ruby>けば、xは<ruby>自動的<rt>じどうてき</rt></ruby>にintになります。<br>*(Câu hỏi hay. Là không cần khai báo kiểu biến trước. Cứ viết `x = 5`, x tự thành int.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。CやJavaと<ruby>違<rt>ちが</rt></ruby>いますね。<br>*(Em hiểu rồi. Khác C và Java thầy nhỉ.)* |

---

## Tình huống 3 — Bàn máy · 13:15, Hello World và báo cáo kết quả

| Vai | Lời thoại |
|---|---|
| Watanabe | では、<ruby>新<rt>あたら</rt></ruby>しいファイル `hello.py` を<ruby>作成<rt>さくせい</rt></ruby>して、`print("Hello, World!")` と<ruby>書<rt>か</rt></ruby>いてください。<br>*(Vậy hãy tạo file hello.py mới, viết print("Hello, World!").)* |
| Đại | (gõ vào MacBook, chạy `python hello.py`) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>実行<rt>じっこう</rt></ruby>できました。<br>*(Thưa thầy, em chạy được rồi.)* |
| Watanabe | <ruby>出力<rt>しゅつりょく</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしたか?<br>*(Kết quả là gì?)* |
| Đại | `Hello, World!` が<ruby>表示<rt>ひょうじ</rt></ruby>されました。<br>*(Hiện ra "Hello, World!" ạ.)* |
| Watanabe | おめでとう!プログラマー<ruby>誕生<rt>たんじょう</rt></ruby>ですね。<br>*(Chúc mừng! Một lập trình viên vừa ra đời.)* |
| Aiko | (cạnh bên, mừng rỡ) <ruby>私<rt>わたし</rt></ruby>も<ruby>動<rt>うご</rt></ruby>いた!<ruby>初<rt>はじ</rt></ruby>めて<ruby>動<rt>うご</rt></ruby>いたよ!<br>*(Mình cũng chạy được! Lần đầu chạy được luôn!)* |
| Đại | おめでとう、Aiko!<br>*(Chúc mừng Aiko nhé!)* |

---

## Tình huống 4 — Bàn máy · 13:30, gặp lỗi cú pháp đầu tiên

*Aiko đột nhiên cau mày. Terminal đỏ rực dòng lỗi.*

| Vai | Lời thoại |
|---|---|
| Aiko | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>助<rt>たす</rt></ruby>けて!エラーが<ruby>出<rt>で</rt></ruby>た。<br>*(Đại ơi cứu! Bị lỗi!)* |
| Đại | (nhìn màn hình) どんなエラー?<br>*(Lỗi gì?)* |
| Aiko | `SyntaxError: invalid syntax` って。<br>*(Báo "SyntaxError: invalid syntax".)* |
| Đại | あ、ここ。`if score >= 90` の<ruby>後<rt>あと</rt></ruby>のコロンが<ruby>抜<rt>ぬ</rt></ruby>けているよ。<br>*(À, đây này. Thiếu dấu hai chấm sau `if score >= 90`.)* |
| Aiko | あー、なるほど!Pythonは<ruby>厳<rt>きび</rt></ruby>しいね。<br>*(À ra vậy! Python khắt khe ghê.)* |
| Đại | <ruby>最初<rt>さいしょ</rt></ruby>はみんなここでつまずくよ。コロンとインデントが<ruby>命<rt>いのち</rt></ruby>。<br>*(Ai mới học cũng vấp chỗ này thôi. Dấu hai chấm và thụt đầu dòng là mạng sống.)* |
| Aiko | <ruby>直<rt>なお</rt></ruby>った!ありがとう、ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>頼<rt>たよ</rt></ruby>りになる。<br>*(Sửa được rồi! Cảm ơn Đại, đáng tin cậy ghê.)* |

---

## Tình huống 5 — Bàn máy · 13:50, Yamato show off ternary

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>次<rt>つぎ</rt></ruby>はif/elif/elseの<ruby>条件分岐<rt>じょうけんぶんき</rt></ruby>です。<ruby>成績<rt>せいせき</rt></ruby><ruby>判定<rt>はんてい</rt></ruby>のプログラムを<ruby>書<rt>か</rt></ruby>いてみましょう。<br>*(Tiếp theo là rẽ nhánh if/elif/else. Hãy thử viết chương trình chấm điểm.)* |
| Yamato | (thì thầm với Đại) <ruby>俺<rt>おれ</rt></ruby><ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>のチェーンで<ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>でやれるで。<br>*(Tớ viết chuỗi toán tử ba ngôi 1 dòng được nè.)* |
| Đại | <ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>?<br>*(Toán tử ba ngôi?)* |
| Yamato | (chỉ màn hình) `grade = "A" if s >= 90 else "B" if s >= 80 else "C" if s >= 70 else "F"` や。<br>*(`grade = "A" if s >= 90 else "B" if s >= 80 else "C" if s >= 70 else "F"` nè.)* |
| Đại | (ngạc nhiên) <ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>で<ruby>4<rt>よん</rt></ruby>つの<ruby>条件<rt>じょうけん</rt></ruby>!<br>*(1 dòng 4 điều kiện!)* |
| Watanabe | (nghe được, bước tới) <ruby>田中<rt>たなか</rt></ruby><ruby>君<rt>くん</rt></ruby>、<ruby>面白<rt>おもしろ</rt></ruby>いですね。でも、<ruby>初心者<rt>しょしんしゃ</rt></ruby>には<ruby>読<rt>よ</rt></ruby>みにくいので、まずはif/elif/elseで<ruby>書<rt>か</rt></ruby>く<ruby>習慣<rt>しゅうかん</rt></ruby>をつけてください。<br>*(Hay đấy, Tanaka. Nhưng người mới khó đọc, hãy tập viết bằng if/elif/else trước đã.)* |
| Yamato | はい、<ruby>反省<rt>はんせい</rt></ruby>します。<br>*(Vâng, em xin rút kinh nghiệm.)* |
| Đại | (thì thầm với Yamato) <ruby>後<rt>あと</rt></ruby>で<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby><ruby>教<rt>おし</rt></ruby>えて。<br>*(Lát chỉ tớ toán tử ba ngôi nhé.)* |

---

## Tình huống 6 — Bàn máy · 14:15, hỏi sensei về list comprehension

*Watanabe vừa giới thiệu vòng for. Yamato giơ tay.*

| Vai | Lời thoại |
|---|---|
| Yamato | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Thưa thầy, em hỏi được không ạ?)* |
| Watanabe | どうぞ。<br>*(Em hỏi đi.)* |
| Yamato | リスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってもいいですか?`[x**2 for x in range(10)]` のような<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>です。<br>*(Em dùng list comprehension được không ạ? Cách viết kiểu `[x**2 for x in range(10)]`.)* |
| Watanabe | はい、Pythonらしい<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>です。ただし、<ruby>今日<rt>きょう</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>では<ruby>普通<rt>ふつう</rt></ruby>のfor<ruby>文<rt>ぶん</rt></ruby>で<ruby>書<rt>か</rt></ruby>いてください。<ruby>基本<rt>きほん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に。<br>*(Vâng, cách viết kiểu Python đó. Tuy nhiên bài hôm nay hãy viết for thường. Cơ bản là quan trọng.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、リスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby>はいつ<ruby>習<rt>なら</rt></ruby>いますか?<br>*(Thưa thầy, khi nào lớp mình học list comprehension ạ?)* |
| Watanabe | <ruby>第<rt>だい</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げます。それまでは<ruby>各自<rt>かくじ</rt></ruby><ruby>自習<rt>じしゅう</rt></ruby>でもOKです。<br>*(Buổi 5 sẽ học. Trước đó các em tự học cũng OK.)* |
| Đại | ありがとうございます!<br>*(Cảm ơn thầy ạ!)* |

---

## Tình huống 7 — Bàn máy · 14:30, hỏi lại khi sensei nói nhanh

| Vai | Lời thoại |
|---|---|
| Watanabe | では、<ruby>次<rt>つぎ</rt></ruby>の<ruby>課題<rt>かだい</rt></ruby>です。<ruby>1<rt>いち</rt></ruby>から<ruby>100<rt>ひゃく</rt></ruby>までの<ruby>偶数<rt>ぐうすう</rt></ruby>の<ruby>合計<rt>ごうけい</rt></ruby>を<ruby>求<rt>もと</rt></ruby>めるプログラムを<ruby>書<rt>か</rt></ruby>いてください。<br>*(Tiếp, bài tập. Viết chương trình tính tổng số chẵn từ 1 đến 100.)* |
| Đại | (giơ tay) <ruby>先生<rt>せんせい</rt></ruby>、すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thưa thầy, xin lỗi, nói lại giúp em.)* |
| Watanabe | はい、ゆっくり<ruby>言<rt>い</rt></ruby>いますね。<ruby>1<rt>いち</rt></ruby>から<ruby>100<rt>ひゃく</rt></ruby>まで。<ruby>偶数<rt>ぐうすう</rt></ruby>だけ。<ruby>合計<rt>ごうけい</rt></ruby>を<ruby>求<rt>もと</rt></ruby>める。<br>*(Vâng, thầy nói chậm nhé. Từ 1 đến 100. Chỉ số chẵn. Tính tổng.)* |
| Đại | <ruby>偶数<rt>ぐうすう</rt></ruby>というのは、<ruby>2<rt>に</rt></ruby>で<ruby>割<rt>わ</rt></ruby>り<ruby>切<rt>き</rt></ruby>れる<ruby>数<rt>かず</rt></ruby>ですね?<br>*(Số chẵn tức là số chia hết cho 2 đúng không thầy?)* |
| Watanabe | その<ruby>通<rt>とお</rt></ruby>りです。`x % 2 == 0` で<ruby>判定<rt>はんてい</rt></ruby>できます。<br>*(Chính xác. Dùng `x % 2 == 0` để kiểm tra.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>挑戦<rt>ちょうせん</rt></ruby>します。<br>*(Em hiểu rồi. Em làm thử.)* |

---

## Tình huống 8 — Bàn máy · 14:45, báo kết quả bài tập với sensei

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、できました。<ruby>結果<rt>けっか</rt></ruby>は<ruby>2550<rt>にせんごひゃくごじゅう</rt></ruby>になりました。<br>*(Thưa thầy, em xong rồi. Kết quả là 2550.)* |
| Watanabe | <ruby>正解<rt>せいかい</rt></ruby>です。コードを<ruby>見<rt>み</rt></ruby>せてください。<br>*(Đúng. Cho thầy xem code.)* |
| Đại | (xoay màn hình)<br>```python<br>total = 0<br>for x in range(1, 101):<br>    if x % 2 == 0:<br>        total += x<br>print(total)<br>```<br> |
| Watanabe | きれいに<ruby>書<rt>か</rt></ruby>けていますね。<ruby>変数名<rt>へんすうめい</rt></ruby>の `total` も<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Viết gọn gàng. Tên biến `total` cũng dễ hiểu.)* |
| Đại | ありがとうございます。<ruby>別<rt>べつ</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>もありますか?<br>*(Cảm ơn thầy. Có cách viết khác không ạ?)* |
| Watanabe | `sum(range(2, 101, 2))` で<ruby>一行<rt>いちぎょう</rt></ruby>でも<ruby>書<rt>か</rt></ruby>けます。<ruby>後<rt>あと</rt></ruby>で<ruby>試<rt>ため</rt></ruby>してみてください。<br>*(Có thể viết một dòng `sum(range(2, 101, 2))`. Lát thử nhé.)* |
| Đại | やってみます!<br>*(Em thử ngay!)* |

---

## Tình huống 9 — Bàn máy · 14:50, Yamada-senpai cameo

*Một anh tóc dài đeo kính, áo lab trắng bước vào, vai khoác balo.*

| Vai | Lời thoại |
|---|---|
| Yamada | お<ruby>疲<rt>つか</rt></ruby>れさまです!TA<ruby>担当<rt>たんとう</rt></ruby>の<ruby>山田<rt>やまだ</rt></ruby>です。<br>*(Chào các em! Anh là Yamada, trợ giảng.)* |
| Đại | こんにちは、<ruby>山田<rt>やまだ</rt></ruby>さん。<ruby>初<rt>はじ</rt></ruby>めまして、グエンです。<br>*(Em chào anh Yamada. Rất vui được gặp anh, em là Nguyễn.)* |
| Yamada | グエン<ruby>君<rt>くん</rt></ruby>、<ruby>留学生<rt>りゅうがくせい</rt></ruby>?<br>*(Đại là du học sinh à?)* |
| Đại | はい、ベトナムからです。<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>語学学校<rt>ごがくがっこう</rt></ruby>を<ruby>経<rt>へ</rt></ruby>てきました。N<ruby>2<rt>に</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>しています。<br>*(Vâng, từ Việt Nam. Em qua 2 năm trường tiếng, đã đậu N2.)* |
| Yamada | すごいやん!<ruby>俺<rt>おれ</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby>ラボでNLPやっとる。AtCoderは<ruby>水色<rt>みずいろ</rt></ruby>や。<br>*(Giỏi đó! Anh năm 4, ở lab Inoue làm NLP. AtCoder rating xanh nhạt.)* |
| Đại | <ruby>井上<rt>いのうえ</rt></ruby>ラボ!<ruby>実<rt>じつ</rt></ruby>は<ruby>興味<rt>きょうみ</rt></ruby>があって、<ruby>見学<rt>けんがく</rt></ruby>できますか?<br>*(Lab Inoue! Thật ra em quan tâm, tham quan được không anh?)* |
| Yamada | もちろん!<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>時<rt>じ</rt></ruby>にゼミがあるで。<ruby>聴講<rt>ちょうこう</rt></ruby>OKや。<br>*(Tất nhiên! Thứ Sáu tuần sau 3h chiều có seminar. Đến nghe được nè.)* |
| Đại | ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください。<ruby>事前<rt>じぜん</rt></ruby>にメール<ruby>送<rt>おく</rt></ruby>ります。<br>*(Em xin được tham gia ạ. Em sẽ gửi mail trước.)* |
| Yamada | OK!<ruby>研究室<rt>けんきゅうしつ</rt></ruby>はC<ruby>棟<rt>とう</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>階<rt>かい</rt></ruby>や。<br>*(OK! Lab ở toà C tầng 4.)* |

---

## Tình huống 10 — Bàn máy · 14:55, hỏi senpai về AtCoder

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby>さん、AtCoderのことも<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Anh Yamada, em hỏi thêm về AtCoder được không?)* |
| Yamada | どうぞどうぞ。<br>*(Cứ hỏi đi.)* |
| Đại | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>茶色<rt>ちゃいろ</rt></ruby>レートにするのは<ruby>無理<rt>むり</rt></ruby>がありますか?<br>*(Mục tiêu năm 1 lên rating nâu có quá sức không anh?)* |
| Yamada | <ruby>毎週<rt>まいしゅう</rt></ruby>ABC<ruby>参加<rt>さんか</rt></ruby>すれば<ruby>余裕<rt>よゆう</rt></ruby>や。<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>200<rt>にひゃく</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>解<rt>と</rt></ruby>けば<ruby>茶色<rt>ちゃいろ</rt></ruby>は<ruby>確実<rt>かくじつ</rt></ruby>や。<br>*(Tuần nào cũng tham gia ABC là dư sức. Giải 200 bài cũ là chắc cú nâu.)* |
| Đại | <ruby>200<rt>にひゃく</rt></ruby><ruby>問<rt>もん</rt></ruby>!<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(200 bài! Em cố gắng ạ.)* |
| Yamato | (chen vào) <ruby>俺<rt>おれ</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>ずつやろうや。<br>*(Cùng tớ mỗi ngày 3 bài đi.)* |
| Yamada | ええコンビやな!<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>問<rt>もん</rt></ruby>×<ruby>3<rt>さん</rt></ruby><ruby>か月<rt>かげつ</rt></ruby>で<ruby>270<rt>にひゃくななじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>や。<br>*(Cặp đôi hay đó! Mỗi ngày 3 bài × 3 tháng = 270 bài.)* |
| Đại | やります!<br>*(Em làm liền!)* |

---

## Tình huống 11 — Cuối buổi · 15:00, sensei tổng kết

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>以上<rt>いじょう</rt></ruby>です。<ruby>宿題<rt>しゅくだい</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ。<br>*(Buổi hôm nay đến đây. Bài tập về nhà có 3 bài.)* |
| Watanabe | <ruby>1<rt>いち</rt></ruby>、FizzBuzz。<ruby>2<rt>に</rt></ruby>、<ruby>素数<rt>そすう</rt></ruby><ruby>判定<rt>はんてい</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>九九<rt>くく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>の<ruby>出力<rt>しゅつりょく</rt></ruby>。<ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(1. FizzBuzz. 2. Kiểm tra số nguyên tố. 3. In bảng cửu chương. Nộp trước thứ Sáu.)* |
| Đại | <ruby>提出方法<rt>ていしゅつほうほう</rt></ruby>は?<br>*(Cách nộp ạ?)* |
| Watanabe | <ruby>大学<rt>だいがく</rt></ruby>のLMSにアップロードしてください。<ruby>締切<rt>しめきり</rt></ruby>は<ruby>金曜日<rt>きんようび</rt></ruby><ruby>23<rt>にじゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>59<rt>ごじゅうきゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Upload lên LMS của trường. Hạn 23h59 thứ Sáu.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございました。<br>*(Em hiểu rồi. Em cảm ơn thầy.)* |
| Watanabe | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Các em vất vả rồi.)* |

---

## Tình huống 12 — Hành lang · 15:10, mời Yamato + Aiko qua dorm code chung

| Vai | Lời thoại |
|---|---|
| Đại | ねえ、<ruby>今夜<rt>こんや</rt></ruby><ruby>僕<rt>ぼく</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>で<ruby>宿題<rt>しゅくだい</rt></ruby>やらない?<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で。<br>*(Này, tối nay qua phòng tớ làm bài chung không? Ba đứa mình.)* |
| Yamato | <ruby>賛成<rt>さんせい</rt></ruby>!FizzBuzzを<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>でやる<ruby>方法<rt>ほうほう</rt></ruby><ruby>教<rt>おし</rt></ruby>えたるわ。<br>*(Đồng ý! Tớ chỉ cách viết FizzBuzz bằng toán tử ba ngôi.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>も<ruby>行<rt>い</rt></ruby>く!<ruby>夕食<rt>ゆうしょく</rt></ruby>は?<br>*(Mình đi! Tối ăn gì?)* |
| Đại | <ruby>寮<rt>りょう</rt></ruby>の<ruby>食堂<rt>しょくどう</rt></ruby>で<ruby>済<rt>す</rt></ruby>ませてから、<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Ăn xong ở căn-tin ký túc, 7h tối bắt đầu nhé.)* |
| Yamato | おやつは<ruby>俺<rt>おれ</rt></ruby>が<ruby>持<rt>も</rt></ruby>っていくわ。<ruby>551<rt>ごーごーいち</rt></ruby>の<ruby>豚<rt>ぶた</rt></ruby>まん<ruby>買<rt>か</rt></ruby>うで。<br>*(Đồ ăn vặt tớ mang. Mua bánh bao thịt 551 đó.)* |
| Aiko | おお〜!<ruby>551<rt>ごーごーいち</rt></ruby>の<ruby>豚<rt>ぶた</rt></ruby>まん<ruby>大好<rt>だいす</rt></ruby>き!<br>*(Ô~ Bánh bao 551 mình mê lắm!)* |
| Đại | (VN, ghi nhớ) 551 là chuỗi bánh bao nổi tiếng Osaka — Yamato giới thiệu rồi. Phải thử.<br>*(551.)* |

---

## Tình huống 13 — Phòng 305 · 21:30, Yamato chỉ Đại ternary FizzBuzz

| Vai | Lời thoại |
|---|---|
| Yamato | これがFizzBuzzの<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby><ruby>版<rt>ばん</rt></ruby>や。<br>*(Đây là phiên bản FizzBuzz toán tử ba ngôi.)* |
| Yamato | (gõ vào laptop Đại)<br>```python<br>for i in range(1, 16):<br>    print("FizzBuzz" if i%15==0 else "Fizz" if i%3==0 else "Buzz" if i%5==0 else i)<br>```<br> |
| Đại | (đọc) ...わぁ、<ruby>1<rt>いち</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>で<ruby>完結<rt>かんけつ</rt></ruby>!でも<ruby>提出<rt>ていしゅつ</rt></ruby>はif/elseで<ruby>書<rt>か</rt></ruby>くよ。<ruby>渡辺<rt>わたなべ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>指示<rt>しじ</rt></ruby>に<ruby>従<rt>したが</rt></ruby>う。<br>*(...Ơ, 1 dòng xong! Mà tớ vẫn nộp bằng if/else thôi. Theo lệnh thầy Watanabe.)* |
| Yamato | <ruby>正解<rt>せいかい</rt></ruby>や。<ruby>個人<rt>こじん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>と<ruby>提出物<rt>ていしゅつぶつ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>けような。<br>*(Đúng. Tự học và bài nộp tách bạch đi.)* |
| Aiko | (làm bài FizzBuzz if/else) できた!<br>*(Mình xong rồi!)* |
| Đại | チェックしてあげる。(xem) ...あ、ここ。`i%3==0` と `i%5==0` の<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>。<ruby>15<rt>じゅうご</rt></ruby>の<ruby>倍数<rt>ばいすう</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>に。<br>*(Tớ kiểm cho. ...À, đây. Thứ tự `i%3==0` và `i%5==0` ngược rồi. Bội số 15 phải kiểm trước.)* |
| Aiko | あー、なるほど!<ruby>論理<rt>ろんり</rt></ruby><ruby>順序<rt>じゅんじょ</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<br>*(À ra vậy! Thứ tự logic quan trọng nhỉ.)* |

---

## Tình huống 14 — LINE Mai · 23:30, kể về buổi học đầu

> Cảnh tiếng Việt — Đại nhắn LINE với Mai, kể chi tiết buổi học và ôn lại từ vựng JP.

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Anh vừa xong buổi 演習 (lab) Python đầu tiên. Hôm nay học Hello World, if/else, for loop. |
| Mai | (tiếng Việt) Anh có hiểu sensei nói không? |
| Đại | (tiếng Việt) Có một lần anh phải hỏi 「もう一度お願いします」 vì thầy nói nhanh. Còn lúc thầy giảng 動的型付け (dynamic typing) anh hỏi 「というのはどういう意味ですか」 thầy giải thích kỹ lắm. |
| Mai | (tiếng Việt) Anh dũng cảm ghê. Em nếu là anh chắc ngồi im không dám hỏi. |
| Đại | (tiếng Việt) Quy tắc của anh là: không hiểu phải hỏi ngay, đừng để dồn. Anh còn quen được anh Yamada senpai năm 4 ở lab Inoue. Anh ấy mời anh tuần sau qua dự seminar luôn! |
| Mai | (tiếng Việt) Trời ơi tốt quá anh ơi! Anh nói được câu xin tham dự seminar thế nào tiếng Nhật? |
| Đại | (tiếng Việt) Anh nói 「ぜひ参加させてください、事前にメール送ります」 — xin được tham dự, trước đó em gửi mail. Câu này sang trọng hơn 「行きたい」 thường. |
| Mai | (tiếng Việt) Em học theo anh. Mai em thi nốt môn cuối là xong kỳ. |
| Đại | (tiếng Việt) Cố lên em. Anh có bài tập về nhà FizzBuzz + 素数判定 + 九九表 nộp thứ Sáu. Ngủ ngon nhé! |
| Mai | (tiếng Việt) Anh ngủ ngon. Ôm anh từ HN. |

---

## Đọng lại chương 3

Ngày 7/4/2026 — Đại có buổi プログラミング演習 đầu tiên. Cậu học **xin phép sensei** 「<ruby>持参<rt>じさん</rt></ruby>のMacBookを<ruby>使<rt>つか</rt></ruby>ってもよろしいですか?」, **báo cáo kết quả code** 「<ruby>実行<rt>じっこう</rt></ruby>できました。<ruby>出力<rt>しゅつりょく</rt></ruby>は〜です」, **hỏi thuật ngữ** 「〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?」, **hỏi lại khi nghe không kịp** 「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」, **xin được tham gia lịch sự** 「ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください」 và **cảm ơn cuối buổi** 「ありがとうございました」. Cậu giúp Aiko sửa lỗi SyntaxError, được Yamato chỉ ternary operator, và được Yamada-senpai mời sang lab Inoue dự seminar tuần sau.

> Từ vựng & mẫu câu chương này: プログラミング<ruby>演習<rt>えんしゅう</rt></ruby>・<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け・<ruby>解釈<rt>かいしゃく</rt></ruby><ruby>型<rt>がた</rt></ruby>・インデント・<ruby>変数<rt>へんすう</rt></ruby>・<ruby>条件分岐<rt>じょうけんぶんき</rt></ruby>・<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>・リスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby>・<ruby>偶数<rt>ぐうすう</rt></ruby>・<ruby>素数<rt>そすう</rt></ruby><ruby>判定<rt>はんてい</rt></ruby>・FizzBuzz・<ruby>九九<rt>くく</rt></ruby><ruby>表<rt>ひょう</rt></ruby>・<ruby>提出<rt>ていしゅつ</rt></ruby>・<ruby>締切<rt>しめきり</rt></ruby>・LMS・<ruby>聴講<rt>ちょうこう</rt></ruby>・ゼミ・<ruby>持参<rt>じさん</rt></ruby>・もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします・〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか・ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください

## Bí quyết chương

- **「<ruby>持参<rt>じさん</rt></ruby>の〜を<ruby>使<rt>つか</rt></ruby>ってもよろしいですか?」** là mẫu xin phép chuẩn ở mọi lớp ĐH Nhật. Lịch sự hơn 「使っていい?」 vô cùng.
- **Khi report kết quả code** dùng cấu trúc 「<ruby>実行<rt>じっこう</rt></ruby>できました」 → 「<ruby>出力<rt>しゅつりょく</rt></ruby>は〜です」 — pattern báo cáo nghiệp dư đến nghề.
- **「〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか?」** + **「もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」** là 2 vũ khí sống còn của du học sinh trong giảng đường. Đừng ngại dùng.
- **「ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください」** dùng khi xin tham dự seminar/event của senpai — sang trọng hơn 「行きたいです」.
- Khi senpai chỉ tech trick (ternary, list comp) hay hơn slide sensei: **học riêng**, **nộp theo sensei**. 「<ruby>個人<rt>こじん</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>と<ruby>提出物<rt>ていしゅつぶつ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>ける」.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 演習 | えんしゅう | DIỄN TẬP | thực hành, lab |
| 持参 | じさん | TRÌ THAM | mang theo |
| 環境 | かんきょう | HOÀN CẢNH | môi trường |
| 自由 | じゆう | TỰ DO | tự do |
| 推奨 | すいしょう | THÔI TƯỞNG | khuyến nghị |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| 入門 | にゅうもん | NHẬP MÔN | nhập môn |
| 特徴 | とくちょう | ĐẶC TRƯNG | đặc trưng |
| 動的 | どうてき | ĐỘNG ĐÍCH | động |
| 型付け | かたづけ | HÌNH PHÓ | định kiểu |
| 解釈型 | かいしゃくがた | GIẢI THÍCH HÌNH | kiểu thông dịch |
| 必須 | ひっす | TẤT TU | bắt buộc |
| 主流 | しゅりゅう | CHỦ LƯU | chủ đạo |
| 質問 | しつもん | CHẤT VẤN | câu hỏi |
| 変数 | へんすう | BIẾN SỐ | biến |
| 事前 | じぜん | SỰ TIỀN | trước |
| 宣言 | せんげん | TUYÊN NGÔN | khai báo |
| 自動的 | じどうてき | TỰ ĐỘNG ĐÍCH | tự động |
| 作成 | さくせい | TÁC THÀNH | tạo |
| 実行 | じっこう | THỰC HÀNH | chạy, thực thi |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 誕生 | たんじょう | ĐẢN SINH | ra đời |
| 厳 | きびしい | NGHIÊM | khắt khe |
| 命 | いのち | MỆNH | sinh mệnh |
| 条件分岐 | じょうけんぶんき | ĐIỀU KIỆN PHÂN KỲ | rẽ nhánh |
| 成績 | せいせき | THÀNH TÍCH | thành tích |
| 判定 | はんてい | PHÁN ĐỊNH | phán định |
| 三項演算子 | さんこうえんざんし | TAM HẠNG DIỄN TOÁN TỬ | toán tử ba ngôi |
| 条件 | じょうけん | ĐIỀU KIỆN | điều kiện |
| 習慣 | しゅうかん | TẬP QUÁN | thói quen |
| 内包表記 | ないほうひょうき | NỘI BAO BIỂU KÝ | comprehension |
| 課題 | かだい | KHÓA ĐỀ | bài tập |
| 基本 | きほん | CƠ BẢN | cơ bản |
| 自習 | じしゅう | TỰ TẬP | tự học |
| 偶数 | ぐうすう | NGẪU SỐ | số chẵn |
| 求める | もとめる | CẦU | tìm |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 正解 | せいかい | CHÍNH GIẢI | đúng |
| 変数名 | へんすうめい | BIẾN SỐ DANH | tên biến |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 経 | へる | KINH | trải qua |
| 取得 | しゅとく | THỦ ĐẮC | đạt được |
| 聴講 | ちょうこう | THÍNH GIẢNG | dự thính |
| 参加 | さんか | THAM GIA | tham gia |
| 茶色 | ちゃいろ | TRÀ SẮC | màu nâu |
| 余裕 | よゆう | DƯ DỤ | dư sức |
| 過去問 | かこもん | QUÁ KHỨ VẤN | đề cũ |
| 確実 | かくじつ | XÁC THỰC | chắc chắn |
| 宿題 | しゅくだい | TÚC ĐỀ | bài tập về nhà |
| 素数 | そすう | TỐ SỐ | số nguyên tố |
| 九九表 | くくひょう | CỬU CỬU BIỂU | bảng cửu chương |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 提出方法 | ていしゅつほうほう | ĐỀ XUẤT PHƯƠNG PHÁP | cách nộp |
| 締切 | しめきり | THIẾT THIẾT | hạn nộp |
| 倍数 | ばいすう | BỘI SỐ | bội số |
| 論理 | ろんり | LUẬN LÝ | logic |
| 順序 | じゅんじょ | THUẬN TỰ | thứ tự |
| 個人 | こじん | CÁ NHÂN | cá nhân |
| 学習 | がくしゅう | HỌC TẬP | học |
| 提出物 | ていしゅつぶつ | ĐỀ XUẤT VẬT | bài nộp |
| 指示 | しじ | CHỈ THỊ | chỉ thị |
| 完結 | かんけつ | HOÀN KẾT | hoàn tất |
