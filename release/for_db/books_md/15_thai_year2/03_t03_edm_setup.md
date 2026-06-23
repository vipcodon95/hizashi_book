# Sách kỹ sư khuôn đúc · T3. Lần đầu vận hành máy EDM Sodick (放電加工セットアップ)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) bước sang năm thứ hai tại Aichi, lần đầu được giao đứng máy EDM (放電加工) một mình dưới sự hướng dẫn của 鈴木 (Suzuki) trưởng nhóm. Học các mẫu hội thoại tiếng Nhật khi học một công nghệ gia công mới: nghe giải thích nguyên lý 放電加工, hỏi lại lễ phép từ chuyên ngành chưa biết (〜というのは?・〜の意味を教えていただけますか), nhận chỉ thị an toàn KYT (感電・火災・換気), xác nhận thông số khởi tạo (IP・ON time・OFF time), báo cáo tiến độ giữa ca (報告), và quan sát cách 先輩 ra quyết định chọn vật liệu điện cực.

---

## Bối cảnh

Tháng 7 năm 2023. Thái đã làm việc hơn một năm tại **株式会社みなみ精密金型** ở Anjo, Aichi. Tiếng Nhật đã lên N3, quen với phay CNC nhưng EDM (放電加工) là công nghệ hoàn toàn mới. Hôm nay 鈴木 (Suzuki, 45 tuổi, trưởng nhóm gia công đặc biệt) dạy Thái vận hành máy Sodick AL40G — chiếc die-sinker EDM dùng cho lòng khuôn tinh xảo. Chương này tập trung mẫu câu giao tiếp khi tiếp nhận một quy trình kỹ thuật nguy hiểm: nghe nguyên lý, hỏi lại từ chuyên môn, nhận cảnh báo an toàn, xác nhận tham số nhập máy và báo cáo kết quả cho 先輩.

---

## Tình huống 1 — Trước máy Sodick AL40G · 9:00, Suzuki giới thiệu máy mới và nguyên lý 放電加工

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>放電加工<rt>ほうでんかこう</rt></ruby>、つまりEDMの<ruby>研修<rt>けんしゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Thái, chào buổi sáng. Từ hôm nay chúng ta bắt đầu khoá huấn luyện gia công phóng điện, tức là EDM.)* |
| Thái | はい、<ruby>鈴木<rt>すずき</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, anh Suzuki, em xin được chỉ bảo ạ.)* |
| Suzuki | （<ruby>機械<rt>きかい</rt></ruby>を<ruby>指<rt>さ</rt></ruby>す）これがソディックAL40G、<ruby>形彫<rt>かたぼり</rt></ruby><ruby>放電機<rt>ほうでんき</rt></ruby>です。<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>新<rt>あたら</rt></ruby>しい<ruby>機械<rt>きかい</rt></ruby>ですよ。<br>*(Chỉ vào máy. Đây là Sodick AL40G, máy phóng điện kiểu khắc khuôn. Là máy mới nhất ở công ty mình đấy.)* |
| Thái | （<ruby>機械<rt>きかい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら）すみません、「<ruby>形彫<rt>かたぼり</rt></ruby><ruby>放電機<rt>ほうでんき</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Vừa nhìn máy. Xin lỗi anh, "máy phóng điện kiểu khắc khuôn" nghĩa là gì ạ?)* |
| Suzuki | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>電極<rt>でんきょく</rt></ruby>とワークの<ruby>間<rt>あいだ</rt></ruby>で<ruby>放電<rt>ほうでん</rt></ruby>させて、<ruby>金属<rt>きんぞく</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>溶<rt>と</rt></ruby>かして<ruby>形<rt>かたち</rt></ruby>を<ruby>彫<rt>ほ</rt></ruby>る<ruby>機械<rt>きかい</rt></ruby>です。<br>*(Câu hỏi hay đấy. Là máy cho phóng điện giữa cực điện và phôi, làm chảy kim loại từng chút một để khắc thành hình.)* |
| Thái | なるほど、<ruby>電気<rt>でんき</rt></ruby>で<ruby>金属<rt>きんぞく</rt></ruby>を<ruby>溶<rt>と</rt></ruby>かすということですね。<br>*(Ra vậy, tức là dùng điện làm chảy kim loại đúng không ạ.)* |
| Suzuki | そうです。フライス<ruby>盤<rt>ばん</rt></ruby>では<ruby>削<rt>けず</rt></ruby>れない<ruby>細<rt>こま</rt></ruby>かい<ruby>形状<rt>けいじょう</rt></ruby>も<ruby>作<rt>つく</rt></ruby>れます。<ruby>金型<rt>かながた</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>では<ruby>欠<rt>か</rt></ruby>かせない<ruby>技術<rt>ぎじゅつ</rt></ruby>です。<br>*(Đúng vậy. Có thể tạo cả những hình tinh xảo mà máy phay không cắt được. Là kỹ thuật không thể thiếu trong ngành khuôn.)* |
| Thái | <ruby>面白<rt>おもしろ</rt></ruby>いですね。しっかり<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Hay quá ạ. Em xin học cho thật kỹ ạ.)* |

---

## Tình huống 2 — Bàn chuẩn bị bên cạnh máy · 9:30, hỏi lại khi Suzuki dạy chọn vật liệu điện cực (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Suzuki | EDMで<ruby>一番<rt>いちばん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>なのは<ruby>電極<rt>でんきょく</rt></ruby>の<ruby>選<rt>えら</rt></ruby>び<ruby>方<rt>かた</rt></ruby>です。<ruby>材質<rt>ざいしつ</rt></ruby>は<ruby>銅<rt>どう</rt></ruby>かグラファイト、どちらかを<ruby>使<rt>つか</rt></ruby>います。<br>*(Quan trọng nhất trong EDM là cách chọn cực điện. Vật liệu thì hoặc là đồng, hoặc là graphite.)* |
| Thái | どうやって<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けますか？<br>*(Phân biệt sử dụng thế nào ạ?)* |
| Suzuki | <ruby>細<rt>こま</rt></ruby>かい<ruby>形状<rt>けいじょう</rt></ruby>や<ruby>仕上げ<rt>しあげ</rt></ruby><ruby>重視<rt>じゅうし</rt></ruby>なら<ruby>銅<rt>どう</rt></ruby>。<ruby>大<rt>おお</rt></ruby>きな<ruby>形状<rt>けいじょう</rt></ruby>や<ruby>加工<rt>かこう</rt></ruby><ruby>速度<rt>そくど</rt></ruby><ruby>重視<rt>じゅうし</rt></ruby>ならグラファイトです。<br>*(Hình tinh xảo, ưu tiên độ hoàn thiện thì dùng đồng. Hình lớn, ưu tiên tốc độ gia công thì dùng graphite.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>のワークはどちらにしますか？<br>*(Phôi hôm nay mình chọn loại nào ạ?)* |
| Suzuki | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる）<ruby>内装<rt>ないそう</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>のキャビコアで、リブが<ruby>0.3<rt>れいてんさん</rt></ruby>ミリと<ruby>細<rt>こま</rt></ruby>かいので、<ruby>銅電極<rt>どうでんきょく</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Đưa bản vẽ. Là cavity-core linh kiện nội thất, gân chỉ 0.3mm nên tinh xảo, ta dùng điện cực đồng.)* |
| Thái | すみません、「リブ」というのは<ruby>金型<rt>かながた</rt></ruby>のどの<ruby>部分<rt>ぶぶん</rt></ruby>ですか？<br>*(Xin lỗi anh, "rib" là phần nào của khuôn ạ?)* |
| Suzuki | <ruby>製品<rt>せいひん</rt></ruby>の<ruby>強度<rt>きょうど</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げるための<ruby>細<rt>ほそ</rt></ruby>い<ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>し<ruby>部分<rt>ぶぶん</rt></ruby>のことです。<ruby>金型<rt>かながた</rt></ruby><ruby>側<rt>がわ</rt></ruby>では<ruby>逆<rt>ぎゃく</rt></ruby>に<ruby>細<rt>ほそ</rt></ruby>い<ruby>溝<rt>みぞ</rt></ruby>になります。<br>*(Là phần lồi mảnh để tăng độ cứng của sản phẩm. Phía khuôn thì ngược lại, là rãnh hẹp.)* |
| Thái | なるほど、<ruby>細<rt>ほそ</rt></ruby>い<ruby>溝<rt>みぞ</rt></ruby>を<ruby>彫<rt>ほ</rt></ruby>るので<ruby>銅電極<rt>どうでんきょく</rt></ruby>ということですね。メモしておきます。<br>*(Ra vậy, vì phải khắc rãnh hẹp nên dùng điện cực đồng đúng không ạ. Em ghi lại.)* |
| Suzuki | （<ruby>電極<rt>でんきょく</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）<ruby>先<rt>さき</rt></ruby>に<ruby>私<rt>わたし</rt></ruby>がセットします。よく<ruby>見<rt>み</rt></ruby>ていてください。<br>*(Lấy điện cực ra. Tôi sẽ lắp trước. Em quan sát kỹ nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Trước bảng KYT · 10:00, nhận chỉ thị an toàn EDM

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>機械<rt>きかい</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かす<ruby>前<rt>まえ</rt></ruby>に、<ruby>本日<rt>ほんじつ</rt></ruby>のKYT、つまり<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby><ruby>訓練<rt>くんれん</rt></ruby>をやりましょう。<br>*(Trước khi cho máy chạy, mình làm KYT của hôm nay — tức là huấn luyện dự đoán nguy hiểm.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | EDMには<ruby>三<rt>みっ</rt></ruby>つの<ruby>大<rt>おお</rt></ruby>きな<ruby>危険<rt>きけん</rt></ruby>があります。<ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>放電中<rt>ほうでんちゅう</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>らないこと。<ruby>感電<rt>かんでん</rt></ruby>します。<br>*(EDM có ba nguy hiểm lớn. Thứ nhất, đang phóng điện tuyệt đối không chạm vào. Sẽ bị giật điện.)* |
| Thái | <ruby>放電中<rt>ほうでんちゅう</rt></ruby>は<ruby>触<rt>さわ</rt></ruby>らない、<ruby>感電<rt>かんでん</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>ですね。<br>*(Đang phóng điện không chạm, đề phòng giật điện đúng không ạ.)* |
| Suzuki | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>絶縁油<rt>ぜつえんゆ</rt></ruby>は<ruby>燃<rt>も</rt></ruby>えます。<ruby>近<rt>ちか</rt></ruby>くで<ruby>火<rt>ひ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ったり、たばこを<ruby>吸<rt>す</rt></ruby>ったりしないでください。<br>*(Thứ hai, dầu cách điện sẽ cháy. Không dùng lửa, không hút thuốc gần đó.)* |
| Thái | <ruby>絶縁油<rt>ぜつえんゆ</rt></ruby>は<ruby>火災<rt>かさい</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>ですね。<br>*(Dầu cách điện thì đề phòng hoả hoạn ạ.)* |
| Suzuki | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>放電中<rt>ほうでんちゅう</rt></ruby>は<ruby>有害<rt>ゆうがい</rt></ruby>な<ruby>煙<rt>けむり</rt></ruby>が<ruby>出<rt>で</rt></ruby>るので、<ruby>換気<rt>かんき</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Thứ ba, khi phóng điện sẽ có khói độc, nhất định phải kiểm tra thông gió.)* |
| Thái | <ruby>換気<rt>かんき</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ですね。すみません、もう<ruby>一度<rt>いちど</rt></ruby><ruby>三<rt>みっ</rt></ruby>つを<ruby>復唱<rt>ふくしょう</rt></ruby>させてください。<ruby>感電<rt>かんでん</rt></ruby>・<ruby>火災<rt>かさい</rt></ruby>・<ruby>換気<rt>かんき</rt></ruby>です。<br>*(Kiểm tra thông gió ạ. Xin lỗi anh, cho em đọc lại ba điểm một lần nữa: giật điện, hoả hoạn, thông gió.)* |
| Suzuki | はい、その<ruby>三<rt>みっ</rt></ruby>つです。<ruby>事故<rt>じこ</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>起<rt>お</rt></ruby>こさないでください。<ruby>何<rt>なに</rt></ruby>か<ruby>変<rt>へん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>ったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>非常停止<rt>ひじょうていし</rt></ruby>ボタンを<ruby>押<rt>お</rt></ruby>してください。<br>*(Đúng, ba điểm đó. Tuyệt đối không gây ra tai nạn. Nếu thấy có gì lạ, nhất định bấm nút dừng khẩn cấp.)* |
| Thái | はい、<ruby>非常停止<rt>ひじょうていし</rt></ruby>ボタン、しっかり<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, nút dừng khẩn cấp, em ghi nhớ kỹ ạ.)* |

---

## Tình huống 4 — Bảng điều khiển máy · 10:30, xác nhận tham số khởi tạo IP・ON time・OFF time

| Vai | Lời thoại |
|---|---|
| Suzuki | では<ruby>条件<rt>じょうけん</rt></ruby><ruby>設定<rt>せってい</rt></ruby>を<ruby>入力<rt>にゅうりょく</rt></ruby>します。<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>用<rt>よう</rt></ruby>のE-pack No.18を<ruby>選<rt>えら</rt></ruby>びます。<br>*(Giờ ta nhập điều kiện cài đặt. Chọn E-pack No.18 dùng cho gia công hoàn thiện.)* |
| Thái | E-pack...というのは<ruby>条件<rt>じょうけん</rt></ruby>のセットですか？<br>*(E-pack... nghĩa là bộ điều kiện ạ?)* |
| Suzuki | そうです。ソディックが<ruby>用意<rt>ようい</rt></ruby>している<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>放電<rt>ほうでん</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>のパッケージです。<ruby>番号<rt>ばんごう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べばIP、ON time、OFF timeが<ruby>自動<rt>じどう</rt></ruby>で<ruby>入<rt>はい</rt></ruby>ります。<br>*(Đúng. Là gói điều kiện phóng điện chuẩn do Sodick chuẩn bị sẵn. Chọn số là IP, ON time, OFF time tự nhập vào.)* |
| Thái | なるほど。IPは<ruby>電流値<rt>でんりゅうち</rt></ruby>ですか？<br>*(Ra vậy. IP là giá trị dòng điện ạ?)* |
| Suzuki | はい、<ruby>放電<rt>ほうでん</rt></ruby>の<ruby>電流値<rt>でんりゅうち</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はIP<ruby>15<rt>じゅうご</rt></ruby>、ON time<ruby>50<rt>ごじゅう</rt></ruby>マイクロ<ruby>秒<rt>びょう</rt></ruby>、OFF time<ruby>20<rt>にじゅう</rt></ruby>マイクロ<ruby>秒<rt>びょう</rt></ruby>です。<br>*(Vâng, là giá trị dòng điện của phóng điện. Hôm nay IP=15, ON time=50 micro giây, OFF time=20 micro giây.)* |
| Thái | （<ruby>復唱<rt>ふくしょう</rt></ruby>しながらメモ）IP<ruby>15<rt>じゅうご</rt></ruby>、ON time<ruby>50<rt>ごじゅう</rt></ruby>マイクロ<ruby>秒<rt>びょう</rt></ruby>、OFF time<ruby>20<rt>にじゅう</rt></ruby>マイクロ<ruby>秒<rt>びょう</rt></ruby>、ということですね。<br>*(Vừa đọc lại vừa ghi. IP=15, ON time=50μs, OFF time=20μs, đúng không ạ.)* |
| Suzuki | そうです。<ruby>銅電極<rt>どうでんきょく</rt></ruby>の<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>条件<rt>じょうけん</rt></ruby>です。<ruby>入力<rt>にゅうりょく</rt></ruby>してみてください。<br>*(Đúng. Là điều kiện hoàn thiện cho điện cực đồng. Em nhập thử đi.)* |
| Thái | （パネルを<ruby>操作<rt>そうさ</rt></ruby>する）はい、<ruby>入力<rt>にゅうりょく</rt></ruby>しました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thao tác bảng điều khiển. Vâng, em đã nhập xong. Mời anh kiểm tra giúp ạ.)* |
| Suzuki | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）OKです。<ruby>次<rt>つぎ</rt></ruby>は<ruby>絶縁油<rt>ぜつえんゆ</rt></ruby>を<ruby>槽<rt>そう</rt></ruby>に<ruby>充填<rt>じゅうてん</rt></ruby>します。<br>*(Nhìn màn hình. OK. Tiếp theo bơm dầu cách điện vào bể.)* |
| Thái | （バルブを<ruby>開<rt>あ</rt></ruby>けて<ruby>絶縁油<rt>ぜつえんゆ</rt></ruby>を<ruby>充填<rt>じゅうてん</rt></ruby>する）<ruby>液面<rt>えきめん</rt></ruby>はどこまで<ruby>上<rt>あ</rt></ruby>げますか？<br>*(Mở van bơm dầu cách điện. Em cho mực dầu lên đến đâu ạ?)* |
| Suzuki | ワークの<ruby>上<rt>うえ</rt></ruby>から<ruby>50<rt>ごじゅう</rt></ruby>ミリ<ruby>以上<rt>いじょう</rt></ruby>です。<ruby>足<rt>た</rt></ruby>りないと<ruby>火災<rt>かさい</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>になります。<br>*(Trên mặt phôi tối thiểu 50mm. Thiếu là nguyên nhân cháy đấy.)* |
| Thái | はい、<ruby>50<rt>ごじゅう</rt></ruby>ミリ<ruby>以上<rt>いじょう</rt></ruby>、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, tối thiểu 50mm, em rõ ạ.)* |

---

## Tình huống 5 — Bên máy đang chạy · 11:00, lần đầu thấy phóng điện và phản ứng

| Vai | Lời thoại |
|---|---|
| Suzuki | では<ruby>放電<rt>ほうでん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>します。スタートボタンを<ruby>押<rt>お</rt></ruby>してください。<br>*(Bắt đầu phóng điện. Em bấm nút start nhé.)* |
| Thái | （ボタンを<ruby>押<rt>お</rt></ruby>す）スタートしました。<br>*(Bấm nút. Em đã start ạ.)* |
| Suzuki | （<ruby>機械<rt>きかい</rt></ruby>から<ruby>火花<rt>ひばな</rt></ruby>の<ruby>音<rt>おと</rt></ruby>が<ruby>聞<rt>き</rt></ruby>こえる）<ruby>聞<rt>き</rt></ruby>こえますか？これが<ruby>放電<rt>ほうでん</rt></ruby>の<ruby>音<rt>おと</rt></ruby>です。<br>*(Từ máy nghe thấy tiếng tia lửa. Em nghe thấy chứ? Đây là tiếng phóng điện.)* |
| Thái | （のぞき<ruby>窓<rt>まど</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>本当<rt>ほんとう</rt></ruby>だ！<ruby>青<rt>あお</rt></ruby>い<ruby>火花<rt>ひばな</rt></ruby>が<ruby>綺麗<rt>きれい</rt></ruby>ですね。<br>*(Nhìn qua cửa kính. Đúng thật! Tia lửa xanh đẹp quá ạ.)* |
| Suzuki | はい、でも<ruby>触<rt>さわ</rt></ruby>ったら<ruby>大変<rt>たいへん</rt></ruby>ですよ。<ruby>感電<rt>かんでん</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないでください。<br>*(Đúng, nhưng chạm vào là toi đấy. Đừng quên nguy cơ giật điện nhé.)* |
| Thái | はい、<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>りません。<br>*(Vâng, em tuyệt đối không chạm vào ạ.)* |
| Suzuki | <ruby>放電<rt>ほうでん</rt></ruby>の<ruby>速度<rt>そくど</rt></ruby>は<ruby>遅<rt>おそ</rt></ruby>いですよ。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>で<ruby>0.1<rt>れいてんいち</rt></ruby>ミリしか<ruby>削<rt>けず</rt></ruby>れません。<br>*(Tốc độ phóng điện chậm lắm. Một tiếng chỉ ăn được 0.1mm.)* |
| Thái | え、そんなに<ruby>遅<rt>おそ</rt></ruby>いんですか。フライス<ruby>盤<rt>ばん</rt></ruby>と<ruby>比<rt>くら</rt></ruby>べると<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>遅<rt>おそ</rt></ruby>いですね。<br>*(Ơ, chậm đến vậy ạ. So với máy phay thì đúng là chậm thật.)* |
| Suzuki | はい、その<ruby>代<rt>か</rt></ruby>わり、フライスでは<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>削<rt>けず</rt></ruby>れない<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>れます。<ruby>遅<rt>おそ</rt></ruby>くても<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>技術<rt>ぎじゅつ</rt></ruby>なんです。<br>*(Vâng, đổi lại có thể tạo ra hình mà máy phay tuyệt đối không cắt được. Chậm nhưng là kỹ thuật cần thiết.)* |
| Thái | なるほど、<ruby>適材適所<rt>てきざいてきしょ</rt></ruby>ですね。<br>*(Ra vậy, dùng đúng chỗ đúng việc nhỉ.)* |

---

## Tình huống 6 — Phòng nghỉ · 12:00, ăn trưa và hỏi thêm kinh nghiệm 先輩

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby>さん、お<ruby>昼<rt>ひる</rt></ruby>ご<ruby>一緒<rt>いっしょ</rt></ruby>させていただいてもよろしいですか？<br>*(Anh Suzuki, em ăn trưa cùng anh được không ạ?)* |
| Suzuki | もちろん、どうぞ。<br>*(Tất nhiên, mời em.)* |
| Thái | <ruby>鈴木<rt>すずき</rt></ruby>さんはEDMを<ruby>何年<rt>なんねん</rt></ruby>やっていらっしゃいますか？<br>*(Anh Suzuki làm EDM được mấy năm rồi ạ?)* |
| Suzuki | もう<ruby>20<rt>にじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>はソディックのMARK<ruby>21<rt>にじゅういち</rt></ruby>でした。<ruby>機械<rt>きかい</rt></ruby>もずいぶん<ruby>変<rt>か</rt></ruby>わりましたよ。<br>*(Đã 20 năm rồi. Lúc đầu là máy MARK 21 của Sodick. Máy móc cũng đổi nhiều rồi.)* |
| Thái | <ruby>20<rt>にじゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>...<ruby>本当<rt>ほんとう</rt></ruby>にすごいですね。<ruby>失敗<rt>しっぱい</rt></ruby>した<ruby>経験<rt>けいけん</rt></ruby>はありますか？<br>*(20 năm... thật sự đáng nể ạ. Anh có kinh nghiệm thất bại nào không?)* |
| Suzuki | たくさんありますよ。<ruby>若<rt>わか</rt></ruby>い<ruby>頃<rt>ころ</rt></ruby>、<ruby>絶縁油<rt>ぜつえんゆ</rt></ruby>の<ruby>液面<rt>えきめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しないで<ruby>放電<rt>ほうでん</rt></ruby>させて、<ruby>小<rt>ちい</rt></ruby>さな<ruby>火災<rt>かさい</rt></ruby>を<ruby>起<rt>お</rt></ruby>こしたことがあります。<br>*(Nhiều lắm. Hồi trẻ, có lần không kiểm tra mực dầu cách điện đã cho phóng điện, gây ra một vụ cháy nhỏ.)* |
| Thái | え、<ruby>火災<rt>かさい</rt></ruby>ですか！<br>*(Ơ, cháy ạ!)* |
| Suzuki | はい。<ruby>幸<rt>さいわ</rt></ruby>い<ruby>消火器<rt>しょうかき</rt></ruby>ですぐ<ruby>消<rt>け</rt></ruby>せましたが、それから<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>液面<rt>えきめん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばさなくなりました。<br>*(Vâng. May là dập kịp bằng bình cứu hoả, nhưng từ đó không bao giờ bỏ qua khâu kiểm tra mực dầu nữa.)* |
| Thái | <ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>ぶ、ということですね。<br>*(Học từ thất bại đúng không ạ.)* |
| Suzuki | そうです。だからタイ<ruby>君<rt>くん</rt></ruby>も<ruby>毎回<rt>まいかい</rt></ruby>KYTを<ruby>真面目<rt>まじめ</rt></ruby>にやってください。<ruby>慣<rt>な</rt></ruby>れた<ruby>頃<rt>ころ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないんです。<br>*(Đúng. Nên em cũng phải nghiêm túc làm KYT mỗi lần. Lúc đã quen tay mới là lúc nguy hiểm nhất.)* |
| Thái | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em xin khắc cốt ạ.)* |

---

## Tình huống 7 — Trở lại máy · 14:00, báo cáo giữa ca cho 先輩 (報告)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby>さん、ちょっとよろしいですか。<ruby>中間<rt>ちゅうかん</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>させてください。<br>*(Anh Suzuki, anh có rảnh không ạ. Cho em báo cáo giữa ca.)* |
| Suzuki | はい、どうぞ。<br>*(Vâng, em nói đi.)* |
| Thái | <ruby>放電<rt>ほうでん</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>んでいます。<ruby>液面<rt>えきめん</rt></ruby>もOKです。<ruby>異音<rt>いおん</rt></ruby>はありません。<br>*(Phóng điện đang diễn ra ổn định. Mực dầu cũng OK. Không có tiếng lạ.)* |
| Suzuki | <ruby>加工<rt>かこう</rt></ruby><ruby>深<rt>ふか</rt></ruby>さは<ruby>何<rt>なん</rt></ruby>ミリですか？<br>*(Độ sâu gia công được bao nhiêu mm?)* |
| Thái | <ruby>現在<rt>げんざい</rt></ruby><ruby>0.3<rt>れいてんさん</rt></ruby>ミリです。<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Hiện tại 0.3mm. Đúng tiến độ ạ.)* |
| Suzuki | いいですね。<ruby>終了<rt>しゅうりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>は？<br>*(Tốt. Giờ dự kiến kết thúc?)* |
| Thái | <ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<ruby>終<rt>お</rt></ruby>わりましたら、すぐに<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Khoảng 17:00 ạ. Xong em sẽ báo cáo ngay.)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>何<rt>なに</rt></ruby>か<ruby>変<rt>へん</rt></ruby>なことがあったらすぐ<ruby>呼<rt>よ</rt></ruby>んでくださいね。<br>*(Vâng, em làm giúp. Có gì lạ thì gọi tôi ngay nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ giữ đúng 報連相.)* |

---

## Tình huống 8 — Bên máy · 17:00, kiểm tra kết quả sau 6 giờ phóng điện

| Vai | Lời thoại |
|---|---|
| Suzuki | EDMが<ruby>停止<rt>ていし</rt></ruby>しましたね。ワークを<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(EDM dừng rồi. Lấy phôi ra kiểm tra nào.)* |
| Thái | （<ruby>絶縁油<rt>ぜつえんゆ</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>いてワークを<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）はい、<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しました。<br>*(Xả dầu cách điện rồi lấy phôi ra. Vâng, em lấy ra rồi ạ.)* |
| Suzuki | （<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>表面<rt>ひょうめん</rt></ruby><ruby>粗<rt>あら</rt></ruby>さはRa<ruby>1.6<rt>いってんろく</rt></ruby>マイクロメートルですね。<ruby>仕上<rt>しあ</rt></ruby>げとしては<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Nhìn bề mặt. Độ nhám Ra1.6μm rồi. Đối với khâu hoàn thiện là đủ.)* |
| Thái | （ワークの<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>軽<rt>かる</rt></ruby>く<ruby>触<rt>さわ</rt></ruby>る）<ruby>滑<rt>なめ</rt></ruby>らかですね。フライスの<ruby>跡<rt>あと</rt></ruby>と<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>います。<br>*(Khẽ chạm bề mặt phôi. Mịn quá. Khác hẳn vết phay.)* |
| Suzuki | はい、<ruby>放電加工<rt>ほうでんかこう</rt></ruby>ならではの<ruby>梨地<rt>なしじ</rt></ruby><ruby>面<rt>めん</rt></ruby>です。この<ruby>後<rt>あと</rt></ruby><ruby>磨<rt>みが</rt></ruby>き<ruby>仕上<rt>しあ</rt></ruby>げに<ruby>送<rt>おく</rt></ruby>ります。<br>*(Đúng, mặt nhám hạt lê đặc trưng của EDM. Sau đây sẽ chuyển sang khâu đánh bóng hoàn thiện.)* |
| Thái | すみません、「<ruby>梨地<rt>なしじ</rt></ruby><ruby>面<rt>めん</rt></ruby>」というのは？<br>*(Xin lỗi anh, "nashiji-men" nghĩa là gì ạ?)* |
| Suzuki | <ruby>梨<rt>なし</rt></ruby>の<ruby>皮<rt>かわ</rt></ruby>のような<ruby>細<rt>こま</rt></ruby>かい<ruby>凹凸<rt>おうとつ</rt></ruby>がある<ruby>面<rt>めん</rt></ruby>のことです。<ruby>放電<rt>ほうでん</rt></ruby>でできる<ruby>独特<rt>どくとく</rt></ruby>の<ruby>表面<rt>ひょうめん</rt></ruby>です。<br>*(Là mặt có những lồi lõm tinh xảo như vỏ quả lê. Là bề mặt đặc trưng do phóng điện tạo ra.)* |
| Thái | なるほど、<ruby>梨<rt>なし</rt></ruby>の<ruby>皮<rt>かわ</rt></ruby>のような<ruby>面<rt>めん</rt></ruby>、ということですね。<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Ra vậy, mặt như vỏ quả lê đúng không ạ. Em sẽ nhớ.)* |
| Suzuki | はい、これで<ruby>本日<rt>ほんじつ</rt></ruby>のEDM<ruby>研修<rt>けんしゅう</rt></ruby>は<ruby>終了<rt>しゅうりょう</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Vâng, buổi huấn luyện EDM hôm nay đến đây kết thúc. Em vất vả rồi.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Cúi đầu. Hôm nay em cảm ơn anh ạ. Anh vất vả rồi.)* |

---

## Tình huống 9 — Phòng 201 ký túc · 22:00, gọi điện về Việt Nam cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Alô, anh Thái đó hả? Bên đó mấy giờ rồi anh? |
| Thái | (tiếng Việt) 10 giờ tối em. Bên em chắc 8 giờ đúng không? Hôm nay anh được giao máy mới, mệt mà vui. |
| Mai | (tiếng Việt) Máy gì cơ anh? |
| Thái | (tiếng Việt) Máy phóng điện ấy. Tiếng Nhật gọi là 放電加工, viết tắt là EDM. Hãng Sodick AL40G, là máy đắt nhất xưởng. |
| Mai | (tiếng Việt) Nghe ghê thật. Có nguy hiểm không anh? |
| Thái | (tiếng Việt) Có em. Sáng anh được dạy KYT, tức là dự đoán nguy hiểm trước. Ba thứ phải nhớ: 感電 — giật điện, 火災 — cháy, 換気 — thông gió. Anh ghi vào sổ tay rồi. |
| Mai | (tiếng Việt) Anh nhớ giữ an toàn nha. Đừng có bốc đồng. |
| Thái | (tiếng Việt) Ừ. Anh Suzuki dạy anh hôm nay. Anh ấy làm EDM 20 năm rồi, ngày xưa cũng từng gây cháy nhỏ. Anh ấy nói "lúc đã quen tay mới là lúc nguy hiểm nhất". Câu đó hay quá. |
| Mai | (tiếng Việt) Đúng đấy anh. Bên em mẹ vừa bảo anh nhớ ăn uống đầy đủ. Tuần sau em đi nộp hồ sơ du học, mẹ con em mong anh sang năm về phép. |
| Thái | (tiếng Việt) Anh biết. Cố thêm hai năm nữa anh xin thăng lên 設計者. Hôm nay học thêm chữ 報連相 anh đã thuộc từ năm ngoái — báo cáo, liên lạc, bàn bạc. Anh báo cáo giữa ca cho anh Suzuki, anh ấy khen. |
| Mai | (tiếng Việt) Vui ghê. Thôi anh đi ngủ đi, mai còn dậy sớm. |
| Thái | (tiếng Việt) Ừ. Em nhớ giữ ấm, sắp lạnh rồi đấy. Chúc em ngủ ngon. |

---

## Tình huống 10 — Phòng 201 · 22:30, kể với Putra bằng tiếng Nhật (đồng hương ký túc)

| Vai | Lời thoại |
|---|---|
| Putra | おかえり、タイさん。<ruby>本日<rt>ほんじつ</rt></ruby>はEDM<ruby>初日<rt>しょにち</rt></ruby>だったでしょう？どうだった？<br>*(Anh Thái về rồi à. Hôm nay là ngày đầu EDM đúng không? Thế nào?)* |
| Thái | プトラさん、ただいま。とても<ruby>面白<rt>おもしろ</rt></ruby>かったよ。<ruby>火花<rt>ひばな</rt></ruby>が<ruby>青<rt>あお</rt></ruby>くて<ruby>綺麗<rt>きれい</rt></ruby>だった。<br>*(Anh Putra, em về rồi. Vui lắm anh ạ. Tia lửa xanh đẹp lắm.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>はSSW<ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>だからEDMはやらないんだ。<ruby>磨<rt>みが</rt></ruby>き<ruby>専門<rt>せんもん</rt></ruby>。タイさんがやる<ruby>仕事<rt>しごと</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>のところに<ruby>来<rt>く</rt></ruby>るよ。<br>*(Tôi là SSW1 nên không làm EDM. Chuyên đánh bóng thôi. Việc anh làm sẽ đến chỗ tôi đấy.)* |
| Thái | あ、そうですね。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>梨地<rt>なしじ</rt></ruby><ruby>面<rt>めん</rt></ruby>のワークが<ruby>仕上<rt>しあ</rt></ruby>がりました。<ruby>明日<rt>あした</rt></ruby>プトラさんの<ruby>磨<rt>みが</rt></ruby>き<ruby>工程<rt>こうてい</rt></ruby>に<ruby>送<rt>おく</rt></ruby>られます。<br>*(À đúng nhỉ. Hôm nay phôi mặt hạt lê đã xong. Mai chuyển sang khâu đánh bóng của anh đấy.)* |
| Putra | はは、つながっているね。<ruby>各<rt>かく</rt></ruby><ruby>自<rt>じ</rt></ruby>の<ruby>専門<rt>せんもん</rt></ruby>があって、お<ruby>互<rt>たが</rt></ruby>いの<ruby>仕事<rt>しごと</rt></ruby>でつながる。これが<ruby>工場<rt>こうじょう</rt></ruby>だね。<br>*(Haha, nối liền nhau nhỉ. Mỗi người có chuyên môn riêng, công việc kết nối với nhau. Đó chính là nhà máy.)* |
| Thái | はい。<ruby>鈴木<rt>すずき</rt></ruby>さんから<ruby>大切<rt>たいせつ</rt></ruby>な<ruby>言葉<rt>ことば</rt></ruby>をいただきました。「<ruby>慣<rt>な</rt></ruby>れた<ruby>頃<rt>ころ</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない」。<br>*(Vâng. Em được anh Suzuki dạy một câu quan trọng: "lúc đã quen tay mới là lúc nguy hiểm nhất".)* |
| Putra | いい<ruby>言葉<rt>ことば</rt></ruby>だね。<ruby>俺<rt>おれ</rt></ruby>もメモするよ。おやすみなさい、タイさん。<br>*(Câu hay đấy. Tôi cũng ghi lại. Ngủ ngon nhé anh Thái.)* |
| Thái | おやすみなさい、プトラさん。<br>*(Chúc anh ngủ ngon ạ.)* |

---

## Đọng lại chương 3

Lần đầu tiếp xúc một công nghệ gia công hoàn toàn mới, Thái học được loạt mẫu câu giao tiếp khi tiếp nhận quy trình kỹ thuật nguy hiểm: **nghe nguyên lý** (電極とワークの間で放電させて金属を溶かす), **hỏi lại lễ phép từ chuyên ngành** (〜というのは?・〜の意味を教えていただけますか — 形彫放電機・リブ・E-pack・梨地面), **nhận chỉ thị an toàn KYT** với ba điểm bắt buộc 感電・火災・換気, **xác nhận tham số khởi tạo máy bằng cách đọc lại** (IP15・ON time 50μs・OFF time 20μs), **báo cáo giữa ca theo nguyên tắc 報連相** (中間報告させてください・順調に進んでいます・終了予定時刻は17時頃です), và **quan sát cách 先輩 ra quyết định** chọn 銅電極 cho lòng khuôn tinh xảo. Triết lý nghề Suzuki để lại: "**慣れた頃が一番危ない**" — lúc quen tay mới là lúc dễ tai nạn nhất, vì vậy KYT phải nghiêm túc làm mỗi ngày.

> Từ vựng & mẫu câu chương này: 放電加工・EDM・形彫放電機・ソディック・電極・銅電極・グラファイト・ワーク・リブ・キャビコア・絶縁油・液面・E-pack・IP・ON time・OFF time・梨地面・表面粗さ・KYT・危険予知訓練・感電・火災・換気・非常停止・報連相・中間報告・〜というのは・〜の意味を教えていただけますか・〜ということですね・慣れた頃が一番危ない

## Bí quyết chương

- **Suzuki — sempai mới**: trưởng nhóm gia công đặc biệt, 20 năm EDM, sẽ tái xuất trong các chương về 磨き・組立 sau.
- **Mai gọi điện**: thay vì cảnh đồng hương cùng phòng (Putra là Indo), cảnh VN-VN chuyển sang gọi video về cho Mai — tiếp tục mạch "Mai chờ Thái về phép".
- **Hãng Sodick AL40G**: chốt brand cho sách — sẽ trở lại trong chương EDM-wirecut và chương kiểm máy năm 4.
- **Câu thoại đinh**: "慣れた頃が一番危ない" — sẽ vang lại khi Thái suýt gây tai nạn năm 3.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 放電加工 | ほうでんかこう | PHÓNG ĐIỆN GIA CÔNG | gia công phóng điện (EDM) |
| 研修 | けんしゅう | NGHIÊN TU | huấn luyện, tập huấn |
| 形彫放電機 | かたぼりほうでんき | HÌNH ĐIÊU PHÓNG ĐIỆN CƠ | máy phóng điện kiểu khắc khuôn |
| 電極 | でんきょく | ĐIỆN CỰC | điện cực |
| 放電 | ほうでん | PHÓNG ĐIỆN | phóng điện |
| 金属 | きんぞく | KIM THUỘC | kim loại |
| 溶かす | とかす | DUNG | làm tan chảy |
| 彫る | ほる | ĐIÊU | khắc |
| 形状 | けいじょう | HÌNH TRẠNG | hình dạng |
| 技術 | ぎじゅつ | KỸ THUẬT | kỹ thuật |
| 材質 | ざいしつ | TÀI CHẤT | vật liệu |
| 銅 | どう | ĐỒNG | đồng |
| 重視 | じゅうし | TRỌNG THỊ | coi trọng |
| 銅電極 | どうでんきょく | ĐỒNG ĐIỆN CỰC | điện cực đồng |
| 強度 | きょうど | CƯỜNG ĐỘ | độ bền |
| 溝 | みぞ | CÂU | rãnh |
| 危険予知訓練 | きけんよちくんれん | NGUY HIỂM DỰ TRI HUẤN LUYỆN | huấn luyện dự đoán nguy hiểm (KYT) |
| 感電 | かんでん | CẢM ĐIỆN | giật điện |
| 絶縁油 | ぜつえんゆ | TUYỆT DUYÊN DU | dầu cách điện |
| 火災 | かさい | HỎA TAI | hoả hoạn |
| 有害 | ゆうがい | HỮU HẠI | có hại |
| 煙 | けむり | YÊN | khói |
| 換気 | かんき | HOÁN KHÍ | thông gió |
| 復唱 | ふくしょう | PHỤC XƯỚNG | đọc lặp lại |
| 非常停止 | ひじょうていし | PHI THƯỜNG ĐÌNH CHỈ | dừng khẩn cấp |
| 条件設定 | じょうけんせってい | ĐIỀU KIỆN THIẾT ĐỊNH | cài đặt điều kiện |
| 電流値 | でんりゅうち | ĐIỆN LƯU TRỊ | giá trị dòng điện |
| 充填 | じゅうてん | SUNG ĐIỀN | bơm đầy |
| 液面 | えきめん | DỊCH DIỆN | mực dầu, mặt chất lỏng |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| 火花 | ひばな | HỎA HOA | tia lửa |
| 適材適所 | てきざいてきしょ | THÍCH TÀI THÍCH SỞ | dùng đúng người đúng việc |
| 失敗 | しっぱい | THẤT BẠI | thất bại |
| 消火器 | しょうかき | TIÊU HỎA KHÍ | bình cứu hoả |
| 中間報告 | ちゅうかんほうこく | TRUNG GIAN BÁO CÁO | báo cáo giữa chừng |
| 順調 | じゅんちょう | THUẬN ĐIỀU | thuận lợi |
| 異音 | いおん | DỊ ÂM | tiếng lạ |
| 表面粗さ | ひょうめんあらさ | BIỂU DIỆN THÔ | độ nhám bề mặt |
| 梨地面 | なしじめん | LÊ ĐỊA DIỆN | mặt nhám hạt lê |
| 凹凸 | おうとつ | AO ĐỘT | lồi lõm |
| 独特 | どくとく | ĐỘC ĐẶC | đặc trưng riêng |
| 工程 | こうてい | CÔNG TRÌNH | công đoạn |
| 専門 | せんもん | CHUYÊN MÔN | chuyên môn |
| 慣れる | なれる | QUÁN | quen tay |
