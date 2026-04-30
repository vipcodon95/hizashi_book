# Sách 21 · T3. プログラミング演習 I — Python first class (プログラミング演習)

> **Mục tiêu:** 7/4/2026 (thứ 3 đầu tuần học). Lớp プログラミング演習 I do Watanabe-sensei dạy. 80 SV chia 4 lớp 20 người. Đại + Yamato + Aiko cùng lớp A. Bài đầu: Python "Hello World" → variables → if/else → for loop. Lin Wei + Rajesh đã giỏi → mentor đổi lớp upper.

## Bối cảnh

- Thời gian: 7/4/2026 (1pm-3pm)
- Địa điểm: B棟 PC教室 (PC lab) — 30 PC iMac
- Sensei: Watanabe-sensei (45t, Lab Web/HCI, mặc áo lab xanh)
- Lab assistant: Yamada-senpai (year 4, AtCoder rating 水色 — Cyan, expert)

---

## Scene 1 — Vào PC lab · 12:55

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, internal) Phòng máy có 30 iMac. Xịn.<br>*(Xịn.)* |
| Yamato | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>持参<rt>じさん</rt></ruby>のPCを<ruby>使<rt>つか</rt></ruby>ってもいいですか？<br>*(Thưa thầy, em dùng laptop riêng được không ạ?)* |
| Watanabe | はい！<ruby>環境<rt>かんきょう</rt></ruby>は<ruby>自由<rt>じゆう</rt></ruby>です。VSCodeとPython 3.12を<ruby>推奨<rt>すいしょう</rt></ruby>します。<br>*(Được! Môi trường tự chọn. Thầy khuyến nghị VSCode và Python 3.12.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>もMacbookを<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Mình cũng mang Macbook đến.)* |
| Đại | （Macbookを<ruby>開<rt>あ</rt></ruby>く）VSCodeは<ruby>準備済<rt>じゅんびず</rt></ruby>みです。<br>*(Mở Macbook. VSCode đã sẵn sàng.)* |

---

## Scene 2 — Watanabe intro Python · 13:00

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>はPython<ruby>入門<rt>にゅうもん</rt></ruby>です。Pythonは1991<ruby>年<rt>ねん</rt></ruby>にGuido van Rossum<ruby>氏<rt>し</rt></ruby>が<ruby>作<rt>つく</rt></ruby>りました。<br>*(Hôm nay học nhập môn Python. Python do ông Guido van Rossum tạo ra năm 1991.)* |
| Watanabe | <ruby>特徴<rt>とくちょう</rt></ruby>は：<br>*(Đặc trưng:)* |
| Watanabe | 1．<ruby>動的<rt>どうてき</rt></ruby><ruby>型付<rt>かたづ</rt></ruby>け（Dynamic typing）<br>*(1. Định kiểu động.)* |
| Watanabe | 2．<ruby>解釈<rt>かいしゃく</rt></ruby><ruby>型<rt>がた</rt></ruby>（Interpreted）<br>*(2. Ngôn ngữ thông dịch.)* |
| Watanabe | 3．インデント<ruby>必須<rt>ひっす</rt></ruby>（Indent mandatory）<br>*(3. Bắt buộc thụt đầu dòng.)* |
| Watanabe | 4．AI／ML／データサイエンスの<ruby>主流<rt>しゅりゅう</rt></ruby><br>*(4. Ngôn ngữ chủ đạo của AI/ML/Khoa học Dữ liệu.)* |
| Đại | （メモを<ruby>取<rt>と</rt></ruby>る）<br>*(Ghi chú.)* |

---

## Scene 3 — First code Hello World · 13:15

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>新<rt>あたら</rt></ruby>しいファイル `hello.py` を<ruby>作成<rt>さくせい</rt></ruby>してください。<br>*(Hãy tạo file hello.py mới.)* |
| Đại | （VSCodeで<ruby>入力<rt>にゅうりょく</rt></ruby>）`print("Hello, World!")`<br>*(Gõ vào VSCode.)* |
| Watanabe | ターミナルで `python hello.py` を<ruby>実行<rt>じっこう</rt></ruby>してみましょう。<br>*(Chạy lệnh python hello.py trên terminal nhé.)* |
| Đại | （ターミナル<ruby>出力<rt>しゅつりょく</rt></ruby>）`Hello, World!`<br>*(Kết quả terminal.)* |
| Đại | (VN, internal) Hồi trường tiếng mình code Python rồi (T6 sách 19 + app tour sách 20). Hello World dễ ợt.<br>*(Dễ.)* |
| Aiko | （<ruby>隣<rt>となり</rt></ruby>から）<ruby>初<rt>はじ</rt></ruby>めて<ruby>動<rt>うご</rt></ruby>いた！<br>*(Cạnh bên. Lần đầu chạy được luôn!)* |
| Watanabe | おめでとう！プログラマー<ruby>誕生<rt>たんじょう</rt></ruby>ですね。<br>*(Chúc mừng! Một lập trình viên vừa ra đời đấy.)* |

---

## Scene 4 — Variables + types · 13:30

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>変数<rt>へんすう</rt></ruby>（variable）は<ruby>箱<rt>はこ</rt></ruby>のイメージで<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Biến (variable) hãy hình dung như một cái hộp.)* |
| Đại | (code) `name = "Đại"`<br> |
| Đại | (code) `age = 21`<br> |
| Đại | (code) `is_student = True`<br> |
| Đại | (code) `gpa = 3.7`<br> |
| Watanabe | <ruby>4<rt>よ</rt></ruby>つの<ruby>基本型<rt>きほんがた</rt></ruby>：str、int、bool、float です。<br>*(4 kiểu dữ liệu cơ bản.)* |
| Đại | (code) `print(f"{name} is {age} years old")` → `Đại is 21 years old`<br> |
| Watanabe | これがf-stringです。Python 3.6<ruby>以降<rt>いこう</rt></ruby>で<ruby>使<rt>つか</rt></ruby>えます。<br>*(Đây gọi là f-string. Dùng được từ Python 3.6 trở lên.)* |
| Aiko | f-string、<ruby>便利<rt>べんり</rt></ruby>ですね！<br>*(f-string tiện thật!)* |

---

## Scene 5 — if/else logic · 13:50

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>条件分岐<rt>じょうけんぶんき</rt></ruby>のif／elif／elseです。<br>*(Câu lệnh rẽ nhánh điều kiện.)* |
| Đại | (code, viết theo example) <br>```python<br>score = 85<br>if score >= 90:<br>    grade = "A"<br>elif score >= 80:<br>    grade = "B"<br>elif score >= 70:<br>    grade = "C"<br>else:<br>    grade = "F"<br>print(f"Grade: {grade}")<br>```<br> |
| Đại | （ターミナル）`Grade: B`<br> |
| Yamato | （<ruby>隣<rt>となり</rt></ruby>から）<ruby>俺<rt>おれ</rt></ruby>、1<ruby>行<rt>ぎょう</rt></ruby>でやってみるわ：<br>*(Cạnh bên. Tớ thử viết 1 dòng nè:)* |
| Yamato | (code) `grade = "A" if score >= 90 else "B" if score >= 80 else "C" if score >= 70 else "F"`<br> |
| Đại | （<ruby>驚<rt>おどろ</rt></ruby>く）<ruby>三項演算子<rt>さんこうえんざんし</rt></ruby>のチェーン！<br>*(Ngạc nhiên. Chuỗi toán tử ba ngôi!)* |
| Watanabe | <ruby>上級者<rt>じょうきゅうしゃ</rt></ruby>テクですね。<ruby>読<rt>よ</rt></ruby>みにくいので<ruby>注意<rt>ちゅうい</rt></ruby>してください。<br>*(Đây là kỹ thuật cao tay. Khó đọc nên cẩn thận khi dùng.)* |

---

## Scene 6 — for loop + list · 14:15

| Speaker | Lời thoại |
|---|---|
| Watanabe | <ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し<ruby>処理<rt>しょり</rt></ruby>のfor loopです。<br>*(Vòng lặp for để xử lý lặp.)* |
| Đại | (code)<br>```python<br>fruits = ["apple", "banana", "cherry"]<br>for fruit in fruits:<br>    print(f"I like {fruit}")<br>```<br> |
| Đại | (output)<br>```<br>I like apple<br>I like banana<br>I like cherry<br>```<br> |
| Watanabe | リストは[]の<ruby>角括弧<rt>かくかっこ</rt></ruby>です。Pythonらしい<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>は `for x in xs:` です。<br>*(Danh sách dùng dấu ngoặc vuông []. Cách viết kiểu Python là `for x in xs:`.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>はリスト<ruby>内包表記<rt>ないほうひょうき</rt></ruby><ruby>好<rt>す</rt></ruby>きやで：<br>*(Tớ thích list comprehension hơn:)* |
| Yamato | (code) `squared = [x**2 for x in range(10)]`<br> |
| Yamato | (output) `[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]`<br> |
| Đại | 1<ruby>行<rt>ぎょう</rt></ruby>で10<ruby>個<rt>こ</rt></ruby>の<ruby>平方<rt>へいほう</rt></ruby>か。<br>*(1 dòng tính được 10 số bình phương.)* |

---

## Scene 7 — Yamada senpai cameo · 14:50

| Speaker | Lời thoại |
|---|---|
| Yamada-senpai | (Vào phòng máy) お<ruby>疲<rt>つか</rt></ruby>れさま！TA<ruby>担当<rt>たんとう</rt></ruby>のヤマダです。<br>*(Vất vả nhé! Trợ giảng Yamada đây.)* |
| Đại | こんにちは！グエン・ダイです。<br>*(Chào anh! Em Đại ạ.)* |
| Yamada | グエンさんは2<ruby>年生<rt>ねんせい</rt></ruby>？<br>*(Đại năm 2 à?)* |
| Đại | 1<ruby>年生<rt>ねんせい</rt></ruby>です！ベトナムからの<ruby>留学生<rt>りゅうがくせい</rt></ruby>で、<ruby>語学学校<rt>ごがくがっこう</rt></ruby>を2<ruby>年<rt>ねん</rt></ruby><ruby>経<rt>へ</rt></ruby>てきました。<br>*(Năm 1 ạ! Du học sinh từ Việt Nam, em qua 2 năm trường tiếng.)* |
| Yamada | すごいやん！<ruby>俺<rt>おれ</rt></ruby>は4<ruby>年生<rt>ねんせい</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby>ラボでAI／NLPやっとる。AtCoderは<ruby>水色<rt>みずいろ</rt></ruby>や。<br>*(Giỏi đấy! Anh năm 4, đang ở Inoue Lab làm AI/NLP. AtCoder rating xanh nhạt nè.)* |
| Đại | <ruby>井上<rt>いのうえ</rt></ruby>ラボ！<ruby>興味<rt>きょうみ</rt></ruby>あります。<br>*(Inoue Lab! Em đang quan tâm đấy ạ.)* |
| Yamada | <ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>選<rt>えら</rt></ruby>びは3<ruby>年生<rt>ねんせい</rt></ruby>からやで。<ruby>覚<rt>おぼ</rt></ruby>えとき。<br>*(Năm 3 mới chọn lab nhé. Nhớ đấy.)* |

---

## Scene 8 — Đêm code thêm + LINE Yamato · 22:00

| Speaker | Lời thoại |
|---|---|
| Yamato | (LINE) ダイ、<ruby>今日<rt>きょう</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>の<ruby>復習<rt>ふくしゅう</rt></ruby><ruby>済<rt>す</rt></ruby>んだか？<br>*(Đại, ôn bài hôm nay xong chưa?)* |
| Đại | はい！<ruby>追加<rt>ついか</rt></ruby>でAtCoder ABCを1<ruby>問<rt>もん</rt></ruby><ruby>解<rt>と</rt></ruby>いてみるよ。<br>*(Xong! Tớ thử giải thêm 1 bài AtCoder ABC.)* |
| Yamato | ABC329のA<ruby>問題<rt>もんだい</rt></ruby>やってみ。Hello World<ruby>級<rt>きゅう</rt></ruby>やで。<br>*(Thử bài A của ABC329 đi. Cỡ Hello World thôi.)* |
| Đại | (code, simple input/output)<br>```python<br>n = int(input())<br>print(n * 2)<br>```<br> |
| Đại | （<ruby>提出<rt>ていしゅつ</rt></ruby>→AC）<br>*(Nộp → Accepted.)* |
| Yamato | (LINE) <ruby>初<rt>はつ</rt></ruby>AC おめでとう！AtCoder<ruby>履歴<rt>りれき</rt></ruby>1<ruby>問<rt>もん</rt></ruby><ruby>達成<rt>たっせい</rt></ruby>！<br>*(AC đầu tiên, chúc mừng! Hồ sơ AtCoder đã có 1 bài!)* |
| Đại | (VN, nhật ký) 7/4/2026. Buổi đầu プログラミング演習 I. Python Hello World → if/else → for loop → list. Yamato dạy ternary + list comprehension. Trợ giảng Yamada năm 4 AtCoder xanh nhạt, Inoue Lab — mình đang quan tâm.<br>*(Ngày đầu.)* |
| Đại | (VN) Đêm nộp AtCoder ABC329 bài A → AC! Hồ sơ 1 bài. Mục tiêu năm 1: lên rating 茶色 (Brown 600+).<br>*(Mục tiêu.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| プログラミング演習 | プログラミングえんしゅう | Lab lập trình |
| 動的型付け | どうてきかたづけ | Dynamic typing |
| 解釈型 | かいしゃくがた | Interpreted (vs compiled) |
| インデント | インデント | Indentation (thụt đầu dòng) |
| 変数 | へんすう | Variable |
| 条件分岐 | じょうけんぶんき | Conditional branching |
| 繰り返し | くりかえし | Loop |
| 上級者テク | じょうきゅうしゃテク | Tech cao cấp |
| f-string | エフ ストリング | Format string Python 3.6+ |
| list comprehension | リスト コンプリヘンション | Tạo list 1 dòng |
| ternary | ターナリー | Toán tử 3 ngôi (a if cond else b) |
| AtCoder ABC | エービーシー | AtCoder Beginner Contest |
| AC | エーシー | Accepted (đỗ test) |
| TA | ティーエー | Teaching Assistant |
| 水色 | みずいろ | Cyan rating AtCoder (1200-1599) |

## Bí quyết chương

- **Python first lesson**: Realistic 1 buổi 90 phút trường ĐH Nhật — Hello World → variables → if/else → for + list. Watanabe-sensei dạy chuẩn pace.
- **Yamato show off**: Ternary chain + list comp — show Yamato đã code lâu (otaku tech). Đại impress nhưng catch up nhanh vì đã có nền từ trường tiếng.
- **Yamada senpai cameo**: Year 4 Inoue Lab — setup mentor cho Đại sau này. Foreshadow Đại sẽ join Inoue Lab year 3 (sách 23).
- **First AtCoder AC**: Bước đầu năm 1 — sẽ lên 茶色 cuối năm.
- **f-string + list comp**: Real Python idiomatic patterns dạy ngay từ buổi 1.

> *"Python ngày đầu. Hello World → list comp. AtCoder AC đầu tiên. Năm 1 thực sự bắt đầu."*
