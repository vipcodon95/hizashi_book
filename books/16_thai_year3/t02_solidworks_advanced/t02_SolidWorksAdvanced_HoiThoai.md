# Sách kỹ sư khuôn đúc · T2. SolidWorks nâng cao — lắp ráp và bản vẽ (SolidWorks進階)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) bước sang năm thứ ba ở **株式会社みなみ精密金型** Anjo, được anh Kawakami kèm SolidWorks nâng cao. Học các mẫu hội thoại tiếng Nhật trong phòng thiết kế: nghe anh先輩 mô tả cấu tạo bộ khuôn (キャビ・コア・エジェクタピン), hỏi lại lễ phép khi chưa hiểu thuật ngữ CAD (〜というのは?), xác nhận thao tác アセンブリ・メイト, nhận chỉ thị về bản vẽ 2D (寸法・公差・表面粗さ), quan sát đàn anh đọc ký hiệu JIS, báo cáo tiến độ BOM cho 工場長 (報連相).

---

## Bối cảnh

Tháng 6 năm 2024. Thái sang Nhật được hai năm, đã quen tiếng Nhật N3 và đã làm quen chi tiết khuôn đơn. Sang năm thứ ba, anh Kawakami — 課長 phòng thiết kế — bắt đầu kèm Thái phần SolidWorks nâng cao: アセンブリ (lắp ráp) hơn 50 linh kiện thành một bộ khuôn hoàn chỉnh và xuất 図面 (bản vẽ) 2D. Chương này tập trung mẫu câu hỏi-đáp về linh kiện chuẩn, ràng buộc Mate, ký hiệu độ nhám JIS B 0601 và cách báo cáo tiến độ bản vẽ.

---

## Tình huống 1 — Phòng thiết kế · 9:00, nghe Kawakami giới thiệu bài アセンブリ đầu tiên

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、おはようございます。<ruby>今日<rt>きょう</rt></ruby>から「アセンブリ」を<ruby>教<rt>おし</rt></ruby>えますね。<br>*(Thái, chào buổi sáng. Từ hôm nay anh sẽ dạy em về "アセンブリ" nhé.)* |
| Thái | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào anh ạ. Em xin nhờ anh chỉ bảo.)* |
| Kawakami | アセンブリは<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>立<rt>た</rt></ruby>てて、<ruby>一<rt>ひと</rt></ruby>つの<ruby>金型<rt>かながた</rt></ruby>にする<ruby>作業<rt>さぎょう</rt></ruby>です。<br>*(Lắp ráp là thao tác ghép các linh kiện thành một bộ khuôn hoàn chỉnh.)* |
| Thái | すみません、「アセンブリ」というのは<ruby>英語<rt>えいご</rt></ruby>の Assembly のことですか?<br>*(Xin lỗi, "アセンブリ" có phải là Assembly trong tiếng Anh không ạ?)* |
| Kawakami | そうです。<ruby>日本語<rt>にほんご</rt></ruby>では「<ruby>組立<rt>くみたて</rt></ruby>」とも<ruby>言<rt>い</rt></ruby>います。SolidWorksの<ruby>画面<rt>がめん</rt></ruby>でも「アセンブリ」と<ruby>表示<rt>ひょうじ</rt></ruby>されます。<br>*(Đúng. Trong tiếng Nhật còn gọi là "組立". Trên màn hình SolidWorks cũng hiển thị là "アセンブリ".)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。メモしておきます。<br>*(Em rõ ạ. Em ghi lại.)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>で<ruby>五十<rt>ごじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>部品<rt>ぶひん</rt></ruby>があります。<ruby>多<rt>おお</rt></ruby>いから、<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えるのが<ruby>大変<rt>たいへん</rt></ruby>ですよ。<br>*(Một bộ khuôn có hơn 50 linh kiện. Vì nhiều nên nhớ tên chúng vất vả lắm đấy.)* |
| Thái | <ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố ạ.)* |

---

## Tình huống 2 — Phòng thiết kế · 9:15, học tên các linh kiện chính trong bộ khuôn

| Vai | Lời thoại |
|---|---|
| Kawakami | まず<ruby>主要<rt>しゅよう</rt></ruby>な<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。これが「キャビティ」、<ruby>製品<rt>せいひん</rt></ruby>の<ruby>外側<rt>そとがわ</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>部分<rt>ぶぶん</rt></ruby>です。<br>*(Trước hết anh giới thiệu các linh kiện chính. Đây là "cavity" — phần tạo hình mặt ngoài sản phẩm.)* |
| Thái | キャビティ...<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に「キャビコア」と<ruby>聞<rt>き</rt></ruby>きました。<ruby>同<rt>おな</rt></ruby>じものですか?<br>*(Cavity... Hai năm trước trưởng nhà máy có nhắc "cavity-core" với em. Có giống nhau không ạ?)* |
| Kawakami | はい、キャビ＋コアでキャビコアと<ruby>呼<rt>よ</rt></ruby>びます。コアは<ruby>製品<rt>せいひん</rt></ruby>の<ruby>内側<rt>うちがわ</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>です。<br>*(Đúng. Ghép "cavity" với "core" thành "cavity-core". Core là phần tạo hình mặt trong sản phẩm.)* |
| Thái | なるほど、<ruby>外側<rt>そとがわ</rt></ruby>がキャビ、<ruby>内側<rt>うちがわ</rt></ruby>がコアということですね。<br>*(Em hiểu rồi, mặt ngoài là cavity, mặt trong là core ạ.)* |
| Kawakami | そうです。<ruby>次<rt>つぎ</rt></ruby>はエジェクタピン。<ruby>完成<rt>かんせい</rt></ruby>した<ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す<ruby>細<rt>ほそ</rt></ruby>い<ruby>棒<rt>ぼう</rt></ruby>です。<br>*(Đúng. Tiếp theo là ejector pin — thanh nhỏ để đẩy sản phẩm đã đông ra khỏi khuôn.)* |
| Thái | エジェクタピン...すみません、「エジェクタ」というのはどんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Ejector pin... Xin lỗi, "ejector" nghĩa là gì ạ?)* |
| Kawakami | <ruby>英語<rt>えいご</rt></ruby>の eject、<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>すという<ruby>意味<rt>いみ</rt></ruby>です。<ruby>日本語<rt>にほんご</rt></ruby>では「<ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピン」とも<ruby>言<rt>い</rt></ruby>います。<br>*(Tiếng Anh "eject" nghĩa là đẩy ra. Tiếng Nhật còn gọi là "突き出しピン".)* |
| Thái | <ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピンですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Pin đẩy ra ạ. Em hiểu rồi.)* |
| Kawakami | あとはスライド、リターンピン、ガイドポスト、ガイドブッシュ...<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えていきましょう。<br>*(Còn slide, return pin, guide post, guide bush... Mình nhớ dần theo thứ tự nhé.)* |
| Thái | はい、<ruby>一<rt>ひと</rt></ruby>つずつメモします。<br>*(Vâng, em ghi từng cái một ạ.)* |

---

## Tình huống 3 — Phòng thiết kế · 9:45, Kawakami làm mẫu cách đặt ràng buộc Mate

| Vai | Lời thoại |
|---|---|
| Kawakami | じゃ、メイトを<ruby>見<rt>み</rt></ruby>せます。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>後<rt>うし</rt></ruby>ろから<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Giờ anh làm mẫu Mate. Thái đứng sau xem màn hình nhé.)* |
| Thái | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép.)* |
| Kawakami | メイトは<ruby>部品<rt>ぶひん</rt></ruby><ruby>同士<rt>どうし</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>を<ruby>定義<rt>ていぎ</rt></ruby>するものです。<ruby>同心<rt>どうしん</rt></ruby>、<ruby>面接触<rt>めんせっしょく</rt></ruby>、<ruby>距離<rt>きょり</rt></ruby>、<ruby>角度<rt>かくど</rt></ruby>などがあります。<br>*(Mate dùng để định nghĩa quan hệ giữa các linh kiện: đồng tâm, tiếp xúc mặt, khoảng cách, góc...)* |
| Thái | すみません、「<ruby>同心<rt>どうしん</rt></ruby>」というのは?<br>*(Xin lỗi, "đồng tâm" nghĩa là gì ạ?)* |
| Kawakami | <ruby>二<rt>ふた</rt></ruby>つの<ruby>円<rt>えん</rt></ruby>または<ruby>軸<rt>じく</rt></ruby>の<ruby>中心<rt>ちゅうしん</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じということです。<ruby>例<rt>たと</rt></ruby>えばエジェクタピンとプレートの<ruby>穴<rt>あな</rt></ruby>、<ruby>中心<rt>ちゅうしん</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Tâm của hai đường tròn hoặc hai trục trùng nhau. Ví dụ ejector pin với lỗ trên tấm — phải khớp tâm.)* |
| Thái | なるほど。<ruby>中心<rt>ちゅうしん</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じということですね。<br>*(Ra vậy. Tức là tâm trùng nhau ạ.)* |
| Kawakami | はい。それから「<ruby>距離<rt>きょり</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>」を<ruby>追加<rt>ついか</rt></ruby>すると、ピンが<ruby>穴<rt>あな</rt></ruby>にぴったり<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vâng. Rồi thêm "khoảng cách 0" thì pin sẽ khít hoàn toàn vào lỗ.)* |
| Thái | (<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら) なるほど、メイトを<ruby>二<rt>ふた</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>するんですね。<br>*(Nhìn màn hình. Ra là phải thêm hai mate ạ.)* |
| Kawakami | <ruby>一<rt>ひと</rt></ruby>つの<ruby>部品<rt>ぶひん</rt></ruby>に<ruby>三<rt>みっ</rt></ruby>つから<ruby>六<rt>むっ</rt></ruby>つのメイトが<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>足<rt>た</rt></ruby>りないと<ruby>部品<rt>ぶひん</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いてしまいますよ。<br>*(Một linh kiện cần từ 3 đến 6 mate. Thiếu là linh kiện sẽ chạy lung tung đấy.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 4 — Phòng thiết kế · 10:15, Thái thực hành lắp ejector pin và hỏi lại khi gặp lỗi

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、すみません、エジェクタピンを<ruby>入<rt>い</rt></ruby>れてみたのですが、<ruby>赤<rt>あか</rt></ruby>いエラーが<ruby>出<rt>で</rt></ruby>ました。<br>*(Anh Kawakami, em xin lỗi, em thử lắp ejector pin nhưng hiện lỗi đỏ.)* |
| Kawakami | (<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る) ああ、これは「<ruby>過剰拘束<rt>かじょうこうそく</rt></ruby>」ですね。<br>*(Nhìn màn hình. À, đây là "over-constrained".)* |
| Thái | <ruby>過剰拘束<rt>かじょうこうそく</rt></ruby>...<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。どんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Over-constrained... Lần đầu em nghe từ này. Nghĩa là gì ạ?)* |
| Kawakami | メイトが<ruby>多<rt>おお</rt></ruby>すぎて、<ruby>矛盾<rt>むじゅん</rt></ruby>が<ruby>起<rt>お</rt></ruby>きている<ruby>状態<rt>じょうたい</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じ<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>二<rt>に</rt></ruby><ruby>重<rt>じゅう</rt></ruby>に<ruby>指定<rt>してい</rt></ruby>するとなります。<br>*(Là trạng thái mate quá nhiều, gây mâu thuẫn. Sẽ xảy ra khi chỉ định cùng một điều kiện hai lần.)* |
| Thái | あ、<ruby>同心<rt>どうしん</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>してしまったかもしれません。<br>*(À, có lẽ em thêm "đồng tâm" hai lần ạ.)* |
| Kawakami | <ruby>確認<rt>かくにん</rt></ruby>してください。Featureツリーで<ruby>一覧<rt>いちらん</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<br>*(Em kiểm tra đi. Xem ở Feature tree là thấy danh sách.)* |
| Thái | (ツリーを<ruby>見<rt>み</rt></ruby>る) あ、ありました。<ruby>削除<rt>さくじょ</rt></ruby>します。<br>*(Nhìn cây. À, đây rồi. Em xoá ạ.)* |
| Kawakami | はい、それでエラーが<ruby>消<rt>き</rt></ruby>えるはずです。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>早<rt>はや</rt></ruby>めに<ruby>聞<rt>き</rt></ruby>いてくださいね、<ruby>報連相<rt>ほうれんそう</rt></ruby>です。<br>*(Vâng, vậy là lỗi sẽ biến mất. Có gì không hiểu cứ hỏi sớm nhé, "報連相" đấy.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 5 — Phòng thiết kế · 10:45, quan sát Kawakami chuyển từ 3D sang 図面 2D

| Vai | Lời thoại |
|---|---|
| Kawakami | アセンブリができたら、<ruby>次<rt>つぎ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>次元<rt>じげん</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<ruby>現場<rt>げんば</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>はこの<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>加工<rt>かこう</rt></ruby>します。<br>*(Lắp ráp xong thì làm bản vẽ 2D. Công nhân hiện trường nhìn bản vẽ này để gia công.)* |
| Thái | <ruby>3D<rt>スリーディー</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいと<ruby>思<rt>おも</rt></ruby>いますが、<ruby>2D<rt>ツーディー</rt></ruby>も<ruby>必<rt>かなら</rt></ruby>ず<ruby>作<rt>つく</rt></ruby>るんですか?<br>*(Em nghĩ 3D dễ hiểu hơn, nhưng vẫn nhất thiết phải làm 2D ạ?)* |
| Kawakami | はい、<ruby>必<rt>かなら</rt></ruby>ず。<ruby>寸法<rt>すんぽう</rt></ruby>、<ruby>公差<rt>こうさ</rt></ruby>、<ruby>表面粗<rt>ひょうめんあら</rt></ruby>さは<ruby>2<rt>に</rt></ruby><ruby>次元<rt>じげん</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>でしか<ruby>正<rt>ただ</rt></ruby>しく<ruby>伝<rt>つた</rt></ruby>えられません。<br>*(Vâng, bắt buộc. Kích thước, dung sai, độ nhám bề mặt — chỉ có bản vẽ 2D mới truyền đạt chính xác được.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |
| Kawakami | <ruby>基本<rt>きほん</rt></ruby>は<ruby>四<rt>よっ</rt></ruby>つのビュー：<ruby>正面<rt>しょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>側面<rt>そくめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>上面<rt>じょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>断面<rt>だんめん</rt></ruby><ruby>図<rt>ず</rt></ruby>です。<br>*(Cơ bản là bốn khung nhìn: mặt trước, mặt bên, mặt trên, mặt cắt.)* |
| Thái | すみません、「<ruby>断面<rt>だんめん</rt></ruby>」というのは?<br>*(Xin lỗi, "断面" nghĩa là gì ạ?)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby>を<ruby>切<rt>き</rt></ruby>った<ruby>中<rt>なか</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>です。<ruby>中<rt>なか</rt></ruby>の<ruby>構造<rt>こうぞう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せるために<ruby>使<rt>つか</rt></ruby>います。<br>*(Là hình dạng bên trong khi cắt khuôn ra. Dùng để cho thấy cấu trúc bên trong.)* |
| Thái | <ruby>中身<rt>なかみ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる<ruby>図<rt>ず</rt></ruby>ということですね。<br>*(Bản vẽ cho thấy phần bên trong ạ.)* |
| Kawakami | そうです。<ruby>視図<rt>しず</rt></ruby>の<ruby>配置<rt>はいち</rt></ruby>はJIS<ruby>第三<rt>だいさん</rt></ruby><ruby>角法<rt>かくほう</rt></ruby>に<ruby>従<rt>したが</rt></ruby>います。<br>*(Đúng. Bố trí khung nhìn tuân theo phép chiếu góc thứ ba của JIS.)* |
| Thái | (メモする) JIS<ruby>第三<rt>だいさん</rt></ruby><ruby>角法<rt>かくほう</rt></ruby>...<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Ghi chép. JIS phép chiếu góc thứ ba... Em sẽ nhớ.)* |

---

## Tình huống 6 — Phòng thiết kế · 11:00, học ký hiệu độ nhám bề mặt theo JIS B 0601

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>表面粗<rt>ひょうめんあら</rt></ruby>さの<ruby>記号<rt>きごう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。JIS B 0601<ruby>規格<rt>きかく</rt></ruby>です。<br>*(Anh giải thích ký hiệu độ nhám bề mặt. Theo tiêu chuẩn JIS B 0601.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Kawakami | キャビティの<ruby>標準<rt>ひょうじゅん</rt></ruby>は Ra<ruby>0.4<rt>れいてんよん</rt></ruby>マイクロメートル。<ruby>記号<rt>きごう</rt></ruby>は<ruby>三角<rt>さんかく</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ、▽▽▽です。<br>*(Chuẩn cho cavity là Ra 0,4 micromet. Ký hiệu là ba tam giác, ▽▽▽.)* |
| Thái | <ruby>三角<rt>さんかく</rt></ruby>の<ruby>数<rt>かず</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いほど<ruby>細<rt>こま</rt></ruby>かいんですか?<br>*(Càng nhiều tam giác là càng mịn ạ?)* |
| Kawakami | そうです。<ruby>鏡面仕上<rt>きょうめんしあ</rt></ruby>げは Ra<ruby>0.05<rt>れいてんれいご</rt></ruby>マイクロメートル、<ruby>三角<rt>さんかく</rt></ruby><ruby>四<rt>よっ</rt></ruby>つ、▽▽▽▽です。<br>*(Đúng. Đánh bóng gương là Ra 0,05 micromet, bốn tam giác, ▽▽▽▽.)* |
| Thái | すみません、「<ruby>鏡面仕上<rt>きょうめんしあ</rt></ruby>げ」というのは?<br>*(Xin lỗi, "鏡面仕上げ" nghĩa là gì ạ?)* |
| Kawakami | <ruby>鏡<rt>かがみ</rt></ruby>のようにつるつるにする<ruby>仕上<rt>しあ</rt></ruby>げです。<ruby>透明<rt>とうめい</rt></ruby>な<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>金型<rt>かながた</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Đánh bóng đến nhẵn như gương. Dùng cho khuôn làm linh kiện trong suốt.)* |
| Thái | なるほど、レンズの<ruby>金型<rt>かながた</rt></ruby>などですね。<br>*(Ra vậy, ví dụ khuôn làm thấu kính ạ.)* |
| Kawakami | その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>分<rt>わ</rt></ruby>かりましたね。<br>*(Đúng vậy. Em hiểu nhanh nhỉ.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn anh ạ.)* |

---

## Tình huống 7 — Phòng thiết kế · 11:30, quan sát Kawakami ghi 寸法 và 公差 lên bản vẽ

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>部分<rt>ぶぶん</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>公差<rt>こうさ</rt></ruby>もつけます。<br>*(Anh ghi kích thước vào. Chỗ quan trọng thì nhất định kèm dung sai.)* |
| Thái | <ruby>公差<rt>こうさ</rt></ruby>は「<ruby>±<rt>プラスマイナス</rt></ruby><ruby>0.01<rt>れいてんれいいち</rt></ruby>」のようなものですか?<br>*(Dung sai có phải kiểu "±0,01" không ạ?)* |
| Kawakami | はい。<ruby>金型<rt>かながた</rt></ruby>の<ruby>精度<rt>せいど</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>厳<rt>きび</rt></ruby>しいので、±0.01mmはよく<ruby>使<rt>つか</rt></ruby>います。<br>*(Đúng. Độ chính xác khuôn rất khắt khe, ±0,01 mm hay dùng.)* |
| Thái | エジェクタピンの<ruby>穴<rt>あな</rt></ruby>はどのくらいですか?<br>*(Lỗ ejector pin thì khoảng bao nhiêu ạ?)* |
| Kawakami | ピンが<ruby>動<rt>うご</rt></ruby>く<ruby>穴<rt>あな</rt></ruby>は H7、ピン<ruby>自体<rt>じたい</rt></ruby>は g6 が<ruby>標準<rt>ひょうじゅん</rt></ruby>です。「すきまばめ」と<ruby>言<rt>い</rt></ruby>います。<br>*(Lỗ pin chuyển động là H7, bản thân pin là g6 — chuẩn. Gọi là "lắp ghép có khe hở".)* |
| Thái | すみません、「すきまばめ」というのは?<br>*(Xin lỗi, "すきまばめ" nghĩa là gì ạ?)* |
| Kawakami | <ruby>穴<rt>あな</rt></ruby>と<ruby>軸<rt>じく</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>隙間<rt>すきま</rt></ruby>がある<ruby>状態<rt>じょうたい</rt></ruby>です。<ruby>逆<rt>ぎゃく</rt></ruby>は「しまりばめ」、<ruby>圧入<rt>あつにゅう</rt></ruby>するときに<ruby>使<rt>つか</rt></ruby>います。<br>*(Là trạng thái giữa lỗ và trục có khe hở nhỏ. Ngược lại là "lắp ghép chặt", dùng khi ép vào.)* |
| Thái | <ruby>動<rt>うご</rt></ruby>く<ruby>部品<rt>ぶひん</rt></ruby>はすきまばめ、<ruby>固定<rt>こてい</rt></ruby>はしまりばめということですね。<br>*(Linh kiện cần chuyển động dùng lắp có khe, cố định dùng lắp chặt ạ.)* |
| Kawakami | その<ruby>通<rt>とお</rt></ruby>り。<ruby>三<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>でもう<ruby>分<rt>わ</rt></ruby>かるんですね、<ruby>上達<rt>じょうたつ</rt></ruby>しましたね。<br>*(Chính xác. Mới năm thứ ba mà em đã hiểu, tiến bộ thật đấy.)* |
| Thái | (<ruby>少<rt>すこ</rt></ruby>し<ruby>嬉<rt>うれ</rt></ruby>しそうに) ありがとうございます。<br>*(Hơi vui ra mặt. Em cảm ơn anh ạ.)* |

---

## Tình huống 8 — Phòng thiết kế · 14:00, tự sinh BOM và xác nhận mã ミスミ

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>午後<rt>ごご</rt></ruby>はBOMを<ruby>作<rt>つく</rt></ruby>ります。BOMは Bill of Materials、<ruby>日本語<rt>にほんご</rt></ruby>では「<ruby>部品表<rt>ぶひんひょう</rt></ruby>」です。<br>*(Chiều mình làm BOM. BOM là Bill of Materials, tiếng Nhật là "bảng linh kiện".)* |
| Thái | SolidWorksから<ruby>自動<rt>じどう</rt></ruby>で<ruby>作<rt>つく</rt></ruby>れますか?<br>*(Có thể tự sinh từ SolidWorks không ạ?)* |
| Kawakami | はい、<ruby>自動生成<rt>じどうせいせい</rt></ruby>です。やってみてください。<br>*(Vâng, sinh tự động. Em thử đi.)* |
| Thái | (BOMを<ruby>生成<rt>せいせい</rt></ruby>する) ...<ruby>五十<rt>ごじゅう</rt></ruby><ruby>行<rt>ぎょう</rt></ruby><ruby>出<rt>で</rt></ruby>ました!<br>*(Sinh BOM. ... Hiện ra 50 dòng!)* |
| Kawakami | <ruby>多<rt>おお</rt></ruby>いでしょう。<ruby>次<rt>つぎ</rt></ruby>に<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>には「ミスミ<ruby>番号<rt>ばんごう</rt></ruby>」を<ruby>記入<rt>きにゅう</rt></ruby>します。<br>*(Nhiều nhỉ. Tiếp theo với linh kiện chuẩn thì ghi "mã Misumi" vào.)* |
| Thái | ミスミは<ruby>部品<rt>ぶひん</rt></ruby>メーカーですね。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>にカタログを<ruby>見<rt>み</rt></ruby>ました。<br>*(Misumi là hãng linh kiện đúng không ạ. Năm thứ hai em đã xem catalogue rồi.)* |
| Kawakami | そうです。<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>作<rt>つく</rt></ruby>らずに、ミスミから<ruby>買<rt>か</rt></ruby>います。<ruby>番号<rt>ばんごう</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>書<rt>か</rt></ruby>かないと<ruby>違<rt>ちが</rt></ruby>う<ruby>物<rt>もの</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きますよ。<br>*(Đúng. Linh kiện chuẩn không tự làm mà mua từ Misumi. Không ghi đúng mã là sẽ giao nhầm hàng đấy.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ kiểm tra cẩn thận.)* |
| Kawakami | <ruby>確認<rt>かくにん</rt></ruby>が<ruby>済<rt>す</rt></ruby>んだら、<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Kiểm tra xong, mình cùng đi báo cáo cho trưởng nhà máy nhé.)* |

---

## Tình huống 9 — Phòng 工場長 · 16:30, báo cáo tiến độ アセンブリ và 図面 (報連相)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Em xin phép. Trưởng nhà máy Tanaka, em xin báo cáo công việc hôm nay ạ.)* |
| Tanaka | はい、お<ruby>疲<rt>つか</rt></ruby>れさま。どうぞ。<br>*(Vâng, vất vả rồi. Mời em.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>川上<rt>かわかみ</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>のもとで、アセンブリとメイトの<ruby>基本<rt>きほん</rt></ruby>を<ruby>学<rt>まな</rt></ruby>びました。<ruby>図面<rt>ずめん</rt></ruby>は<ruby>正面<rt>しょうめん</rt></ruby>と<ruby>断面<rt>だんめん</rt></ruby>まで<ruby>完成<rt>かんせい</rt></ruby>です。BOMは<ruby>五十<rt>ごじゅう</rt></ruby><ruby>行<rt>ぎょう</rt></ruby><ruby>生成<rt>せいせい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Hôm nay dưới sự chỉ dẫn của chủ nhiệm Kawakami, em đã học cơ bản về assembly và mate. Bản vẽ em hoàn thành đến mặt trước và mặt cắt. BOM đã sinh xong 50 dòng ạ.)* |
| Tanaka | いいですね。<ruby>問題<rt>もんだい</rt></ruby>はありましたか?<br>*(Tốt đấy. Có vấn đề gì không?)* |
| Thái | はい、<ruby>過剰拘束<rt>かじょうこうそく</rt></ruby>のエラーが<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>出<rt>で</rt></ruby>ましたが、<ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>相談<rt>そうだん</rt></ruby>して<ruby>解決<rt>かいけつ</rt></ruby>しました。<br>*(Vâng, em bị một lần lỗi over-constrained, nhưng đã hỏi anh Kawakami và giải quyết được.)* |
| Tanaka | <ruby>報連相<rt>ほうれんそう</rt></ruby>ができていますね。タイ<ruby>君<rt>くん</rt></ruby>はもう<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、<ruby>独立<rt>どくりつ</rt></ruby>した<ruby>設計者<rt>せっけいしゃ</rt></ruby>になる<ruby>準備<rt>じゅんび</rt></ruby>ができていますよ。<br>*(Em làm tốt 報連相 đấy. Năm thứ ba rồi, em đang chuẩn bị thành kỹ sư thiết kế độc lập rồi.)* |
| Thái | ありがとうございます。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ông ạ. Em sẽ tiếp tục cố gắng.)* |
| Tanaka | <ruby>明日<rt>あした</rt></ruby>は<ruby>側面<rt>そくめん</rt></ruby><ruby>図<rt>ず</rt></ruby>と<ruby>上面<rt>じょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>させてください。<ruby>表面粗<rt>ひょうめんあら</rt></ruby>さの<ruby>記号<rt>きごう</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Mai hoàn thành mặt bên và mặt trên nhé. Đừng quên ký hiệu độ nhám.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em xin phép.)* |

---

## Tình huống 10 — Phòng 201 ký túc · 22:00, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ chuyên ngành trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay đi làm thế nào? Em thấy anh online muộn quá. |
| Thái | (tiếng Việt) Anh vừa ghi xong sổ tay. Hôm nay học アセンブリ — lắp ráp hơn 50 linh kiện thành một bộ khuôn trên SolidWorks. |
| Mai | (tiếng Việt) Nghe khó vậy. Có ai chỉ cho anh không? |
| Thái | (tiếng Việt) Anh Kawakami chủ nhiệm thiết kế dạy. Anh ấy chỉ từng cái: キャビ là mặt ngoài, コア là mặt trong, エジェクタピン là pin đẩy sản phẩm ra. Mỗi cái em hiểu anh hỏi lại "〜というのは?" tới khi hiểu thì thôi. |
| Mai | (tiếng Việt) Hỏi tới hỏi lui không ngại à anh? |
| Thái | (tiếng Việt) Lúc đầu ngại. Sau anh quen rồi. Bên Nhật quan trọng nhất là 報連相 — báo cáo, liên lạc, bàn bạc. Cứ thấy không hiểu mà im là sai nặng. |
| Mai | (tiếng Việt) Mà sao công ty bắt làm cả 3D rồi lại 2D nữa? |
| Thái | (tiếng Việt) Vì công nhân hiện trường nhìn bản vẽ 2D để gia công. Phải ghi 寸法, 公差 ±0,01mm, ký hiệu 表面粗さ JIS — ba tam giác ▽▽▽ là chuẩn cavity, bốn tam giác ▽▽▽▽ là đánh bóng gương cho khuôn thấu kính. |
| Mai | (tiếng Việt) Em ghi vô sổ giúp anh đây này. Ba năm rồi đó anh, sắp về chưa? |
| Thái | (tiếng Việt) Còn hai năm. Ông Tanaka hôm nay khen anh sắp thành 設計者 độc lập. Cố thêm chút nữa em. |
| Mai | (tiếng Việt) Ừ. Anh đi ngủ đi, đừng thức muộn. |
| Thái | (tiếng Việt) Ngủ ngon em. |

---

## Đọng lại chương 2

Sang năm thứ ba, Thái bước vào giai đoạn được dạy SolidWorks nâng cao thực sự — không còn chi tiết khuôn đơn lẻ mà là **アセンブリ** ghép hơn 50 linh kiện thành một bộ khuôn hoàn chỉnh. Anh học cấu tạo cơ bản (**キャビ・コア・エジェクタピン・スライド・ガイドポスト**) và quy tắc đặt **メイト** (**同心・面接触・距離・角度**), gặp lỗi **過剰拘束** và biết cách hỏi lại lễ phép "〜というのは?" để gỡ. Sang phần **2D 図面**, Thái nắm bốn khung nhìn cơ bản (**正面図・側面図・上面図・断面図**) theo JIS 第三角法, ký hiệu **表面粗さ** Ra0.4 ▽▽▽ và **鏡面仕上げ** Ra0.05 ▽▽▽▽, hệ **公差** H7/g6 với khái niệm **すきまばめ・しまりばめ**. Kết ngày bằng việc tự sinh **BOM** 50 dòng, ghi **ミスミ番号** và **báo cáo 報連相** đầy đủ cho 工場長 — đúng phong cách kỹ sư khuôn đúc Nhật.

> Từ vựng & mẫu câu chương này: アセンブリ・組立・メイト・同心・面接触・距離・角度・キャビティ・コア・エジェクタピン・突き出しピン・スライド・リターンピン・ガイドポスト・過剰拘束・図面・正面図・側面図・上面図・断面図・第三角法・寸法・公差・表面粗さ・鏡面仕上げ・JIS B 0601・すきまばめ・しまりばめ・H7・g6・BOM・部品表・ミスミ番号・標準品・報連相・〜というのは・〜ということですね・承知しました・失礼します

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 主任 | しゅにん | CHỦ NHIỆM | Chủ nhiệm |
| 組立 | くみたて | TỔ LẬP | Lắp ráp |
| 作業 | さぎょう | TÁC NGHIỆP | Thao tác, công việc |
| 主要 | しゅよう | CHỦ YẾU | Chủ yếu |
| 外側 | そとがわ | NGOẠI TRẮC | Mặt ngoài |
| 内側 | うちがわ | NỘI TRẮC | Mặt trong |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | Trưởng nhà máy |
| 完成 | かんせい | HOÀN THÀNH | Hoàn thành |
| 突き出し | つきだし | ĐỘT XUẤT | Đẩy ra |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 同心 | どうしん | ĐỒNG TÂM | Đồng tâm |
| 面接触 | めんせっしょく | DIỆN TIẾP XÚC | Tiếp xúc mặt |
| 距離 | きょり | CỰ LY | Khoảng cách |
| 角度 | かくど | GIÁC ĐỘ | Góc |
| 中心 | ちゅうしん | TRUNG TÂM | Tâm |
| 軸 | じく | TRỤC | Trục |
| 追加 | ついか | TRUY GIA | Thêm vào |
| 過剰拘束 | かじょうこうそく | QUÁ THẶNG CÂU THÚC | Over-constrained, ràng buộc dư |
| 矛盾 | むじゅん | MÂU THUẪN | Mâu thuẫn |
| 状態 | じょうたい | TRẠNG THÁI | Trạng thái |
| 指定 | してい | CHỈ ĐỊNH | Chỉ định |
| 削除 | さくじょ | SÁCH TRỪ | Xoá |
| 二次元 | にじげん | NHỊ THỨ NGUYÊN | 2D, hai chiều |
| 現場 | げんば | HIỆN TRƯỜNG | Hiện trường |
| 加工 | かこう | GIA CÔNG | Gia công |
| 表面粗さ | ひょうめんあらさ | BIỂU DIỆN THÔ | Độ nhám bề mặt |
| 正面図 | しょうめんず | CHÍNH DIỆN ĐỒ | Hình chiếu mặt trước |
| 側面図 | そくめんず | TRẮC DIỆN ĐỒ | Hình chiếu mặt bên |
| 上面図 | じょうめんず | THƯỢNG DIỆN ĐỒ | Hình chiếu mặt trên |
| 断面図 | だんめんず | ĐOẠN DIỆN ĐỒ | Hình chiếu mặt cắt |
| 構造 | こうぞう | CẤU TẠO | Cấu trúc |
| 第三角法 | だいさんかくほう | ĐỆ TAM GIÁC PHÁP | Phép chiếu góc thứ ba |
| 規格 | きかく | QUY CÁCH | Tiêu chuẩn |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Chuẩn |
| 鏡面仕上げ | きょうめんしあげ | KÍNH DIỆN SĨ THƯỢNG | Đánh bóng gương |
| 透明 | とうめい | THẤU MINH | Trong suốt |
| 精度 | せいど | TINH ĐỘ | Độ chính xác |
| 圧入 | あつにゅう | ÁP NHẬP | Ép vào |
| 固定 | こてい | CỐ ĐỊNH | Cố định |
| 上達 | じょうたつ | THƯỢNG ĐẠT | Tiến bộ |
| 部品表 | ぶひんひょう | BỘ PHẨM BIỂU | Bảng linh kiện (BOM) |
| 自動生成 | じどうせいせい | TỰ ĐỘNG SINH THÀNH | Sinh tự động |
| 標準品 | ひょうじゅんひん | TIÊU CHUẨN PHẨM | Linh kiện chuẩn |
| 指導 | しどう | CHỈ ĐẠO | Hướng dẫn |
| 独立 | どくりつ | ĐỘC LẬP | Độc lập |
| 設計者 | せっけいしゃ | THIẾT KẾ GIẢ | Kỹ sư thiết kế |
| 記号 | きごう | KÝ HIỆU | Ký hiệu |
