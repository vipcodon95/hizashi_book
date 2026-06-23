# Sách kỹ sư khuôn đúc · T1. Ngày đầu vận hành máy MC (MCオペレータ開始)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) bước sang năm thứ hai tại 株式会社みなみ精密金型 ở Anjo, được bàn giao máy gia công trung tâm MC số 3. Học các mẫu hội thoại tiếng Nhật trong xưởng gia công CNC: nhận bàn giao máy từ 先輩, xác nhận công đoạn 段取り (set phôi, set zero), hỏi lại lễ phép khi chưa hiểu từ chuyên ngành (許容範囲・シミュレーション・切削油), 報告 kết quả đo kiểm cho 先輩, xin phép trước khi bấm サイクルスタート, và quan sát anh Suzuki làm mẫu trước khi tự tay vận hành.

---

## Bối cảnh

Tháng 5 năm 2023. Thái sang năm thứ hai, tiếng Nhật đã ở mức N3 vững. Sau buổi phỏng vấn, 田中 工場長 quyết định cho Thái lên vận hành máy MC bán thời gian: sáng đứng máy, chiều quay lại công đoạn 磨き (đánh bóng). 先輩 Suzuki phụ trách bàn giao MC số 3 (Mazak VTC-200B, máy phay 3 trục) trong một tuần OJT, có Sakurai hỗ trợ. Chương này tập trung các mẫu câu giao tiếp trong xưởng gia công: nhận bàn giao máy, xác nhận từng bước 段取り, hỏi lại từ chuyên ngành, 報告 kết quả đo và xin phép trước thao tác quan trọng.

---

## Tình huống 1 — Trước MC số 3 · 8:30, nhận bàn giao máy từ 先輩

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>からこのMC<ruby>3<rt>さん</rt></ruby><ruby>号機<rt>ごうき</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<ruby>機種<rt>きしゅ</rt></ruby>はマザックのVTC-200B、<ruby>3<rt>さん</rt></ruby><ruby>軸<rt>じく</rt></ruby>マシニングセンタです。<br>*(Thái này, từ hôm nay em phụ trách máy MC số 3. Máy là Mazak VTC-200B, trung tâm gia công 3 trục.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Vâng, em xin được nhờ anh chỉ bảo ạ.)* |
| Suzuki | これから<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>はOJTで<ruby>一緒<rt>いっしょ</rt></ruby>にやります。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>遠慮<rt>えんりょ</rt></ruby>せずに<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Một tuần tới sẽ làm OJT cùng nhau. Có gì không hiểu cứ hỏi, đừng ngại.)* |
| Thái | はい、ありがとうございます。すみません、「OJT」というのは<ruby>何<rt>なん</rt></ruby>の<ruby>略<rt>りゃく</rt></ruby>ですか？<br>*(Vâng, em cảm ơn anh. Xin lỗi, "OJT" là viết tắt của gì ạ?)* |
| Suzuki | On the Job Trainingの<ruby>略<rt>りゃく</rt></ruby>です。<ruby>実際<rt>じっさい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をしながら<ruby>教<rt>おし</rt></ruby>えるという<ruby>意味<rt>いみ</rt></ruby>ですよ。<br>*(Viết tắt của On the Job Training. Vừa làm việc thật vừa dạy.)* |
| Thái | なるほど、<ruby>実<rt>じつ</rt></ruby><ruby>地<rt>ち</rt></ruby><ruby>訓練<rt>くんれん</rt></ruby>ということですね。メモします。<br>*(Em hiểu rồi, tức là đào tạo tại chỗ. Em ghi lại.)* |
| Suzuki | では、まず<ruby>段取<rt>だんど</rt></ruby>りから<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Vậy thì mình bắt đầu từ công đoạn chuẩn bị nhé.)* |

---

## Tình huống 2 — Bệ máy MC số 3 · 9:00, set phôi và xác nhận từng bước với 先輩

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>素材<rt>そざい</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>です。バイスを<ruby>使<rt>つか</rt></ruby>って<ruby>素材<rt>そざい</rt></ruby>をしっかり<ruby>挟<rt>はさ</rt></ruby>んでください。<br>*(Đầu tiên là cố định phôi. Dùng ê-tô kẹp chặt phôi vào.)* |
| Thái | （バイスに<ruby>素材<rt>そざい</rt></ruby>をセットする）こうですか？<br>*(Đặt phôi vào ê-tô. Như này được không ạ?)* |
| Suzuki | はい、いいですね。<ruby>次<rt>つぎ</rt></ruby>はダイヤルゲージで<ruby>水平<rt>すいへい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, tốt rồi. Tiếp theo dùng đồng hồ so kiểm độ phẳng.)* |
| Thái | （ダイヤルゲージで<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>左右<rt>さゆう</rt></ruby>で0.02ミリの<ruby>差<rt>さ</rt></ruby>があります。<br>*(Kiểm bằng đồng hồ so. Trái phải chênh 0,02mm ạ.)* |
| Suzuki | 0.02ミリなら<ruby>許容範囲<rt>きょようはんい</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(0,02mm là trong phạm vi dung sai cho phép. Ổn rồi.)* |
| Thái | すみません、「<ruby>許容範囲<rt>きょようはんい</rt></ruby>」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "kyoyou-han'i" nghĩa là gì ạ?)* |
| Suzuki | <ruby>図面<rt>ずめん</rt></ruby>で<ruby>許<rt>ゆる</rt></ruby>されている<ruby>誤差<rt>ごさ</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>です。この<ruby>中<rt>なか</rt></ruby>なら<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>外<rt>そと</rt></ruby>なら<ruby>不良<rt>ふりょう</rt></ruby>です。<br>*(Phạm vi sai số cho phép trên bản vẽ. Trong khoảng này là đạt, ngoài là phế.)* |
| Thái | <ruby>許<rt>ゆる</rt></ruby>される<ruby>誤差<rt>ごさ</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>ということですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Tức là phạm vi sai số được cho phép ạ. Em rõ rồi.)* |
| Suzuki | では<ruby>続<rt>つづ</rt></ruby>けて<ruby>原点<rt>げんてん</rt></ruby><ruby>合<rt>あ</rt></ruby>わせをします。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>中心<rt>ちゅうしん</rt></ruby>を<ruby>素材<rt>そざい</rt></ruby>の<ruby>角<rt>かど</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Tiếp tục căn điểm gốc nhé. Đưa tâm dao về đúng góc phôi.)* |
| Thái | はい、<ruby>原点<rt>げんてん</rt></ruby><ruby>合<rt>あ</rt></ruby>わせですね。やってみます。<br>*(Vâng, căn điểm gốc ạ. Em thử ạ.)* |

---

## Tình huống 3 — Bảng điều khiển MC · 10:00, load chương trình NC và xin phép chạy mô phỏng

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>次<rt>つぎ</rt></ruby>はNCプログラムの<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みです。USBを<ruby>差<rt>さ</rt></ruby>してください。<br>*(Tiếp theo là load chương trình NC. Cắm USB vào.)* |
| Thái | （USBを<ruby>差<rt>さ</rt></ruby>す）<ruby>本日<rt>ほんじつ</rt></ruby>のジョブは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Cắm USB. Công việc hôm nay là gì ạ?)* |
| Suzuki | <ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby>パーツを<ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>削<rt>けず</rt></ruby>ります。<ruby>仕様<rt>しよう</rt></ruby>は20±0.05ミリです。<br>*(Phay 10 chi tiết insert. Quy cách 20±0,05mm.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）プログラムを<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みました。<br>*(Kiểm màn hình. Em đã load chương trình ạ.)* |
| Suzuki | <ruby>本番<rt>ほんばん</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に、<ruby>必<rt>かなら</rt></ruby>ずシミュレーションをやってください。<br>*(Trước khi chạy thật, nhất định phải chạy mô phỏng.)* |
| Thái | すみません、「シミュレーション」はどんな<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "simulation" nghĩa là gì ạ?)* |
| Suzuki | <ruby>機械<rt>きかい</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かさずに<ruby>画面<rt>がめん</rt></ruby><ruby>上<rt>じょう</rt></ruby>で<ruby>動<rt>うご</rt></ruby>きを<ruby>確認<rt>かくにん</rt></ruby>することです。<ruby>衝突<rt>しょうとつ</rt></ruby>がないか、<ruby>必<rt>かなら</rt></ruby>ず<ruby>事前<rt>じぜん</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Là kiểm tra chuyển động trên màn hình mà không chạy máy. Phải kiểm trước xem có va đập không.)* |
| Thái | なるほど、<ruby>衝突<rt>しょうとつ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐためですね。シミュレーションを<ruby>実行<rt>じっこう</rt></ruby>してもよろしいですか？<br>*(Em hiểu rồi, để phòng va đập ạ. Em chạy mô phỏng được không ạ?)* |
| Suzuki | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em làm đi.)* |
| Thái | （シミュレーションを<ruby>実行<rt>じっこう</rt></ruby>する）...<ruby>衝突<rt>しょうとつ</rt></ruby>なし、<ruby>軌跡<rt>きせき</rt></ruby>も<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Chạy mô phỏng. Không va đập, đường chạy cũng không vấn đề ạ.)* |
| Suzuki | よし、<ruby>本番<rt>ほんばん</rt></ruby><ruby>開始<rt>かいし</rt></ruby>です。<br>*(Tốt, bắt đầu chạy thật.)* |

---

## Tình huống 4 — Bảng điều khiển · 10:30, quan sát anh Suzuki làm mẫu cycle start

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>がやります。よく<ruby>見<rt>み</rt></ruby>ていてください。<br>*(Cái đầu tiên anh làm. Em quan sát kỹ nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Suzuki | （ドアを<ruby>閉<rt>し</rt></ruby>める）まずドアを<ruby>必<rt>かなら</rt></ruby>ず<ruby>閉<rt>し</rt></ruby>めます。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>です。<br>*(Đóng cửa máy. Nhất thiết phải đóng cửa trước. An toàn là số một.)* |
| Thái | （メモする）ドアを<ruby>閉<rt>し</rt></ruby>める、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>...<br>*(Ghi sổ. Đóng cửa, an toàn số một...)* |
| Suzuki | <ruby>次<rt>つぎ</rt></ruby>に<ruby>切削油<rt>せっさくゆ</rt></ruby>とエアブローを<ruby>準備<rt>じゅんび</rt></ruby>します。それからサイクルスタートを<ruby>押<rt>お</rt></ruby>します。<br>*(Tiếp theo chuẩn bị dầu cắt và khí thổi. Rồi bấm cycle start.)* |
| Thái | すみません、「<ruby>切削油<rt>せっさくゆ</rt></ruby>」というのは？<br>*(Xin lỗi, "sessaku-yu" là gì ạ?)* |
| Suzuki | <ruby>削<rt>けず</rt></ruby>る<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>うオイルです。<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やしたり、<ruby>切粉<rt>きりこ</rt></ruby>を<ruby>流<rt>なが</rt></ruby>したりします。<br>*(Là dầu dùng khi gia công. Vừa làm mát dao vừa đẩy phoi ra.)* |
| Thái | <ruby>工具<rt>こうぐ</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やすオイルということですね。<br>*(Tức là dầu làm mát dao ạ.)* |
| Suzuki | （サイクルスタートを<ruby>押<rt>お</rt></ruby>す）これでスタート。<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>のサイクルタイムは<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>です。<br>*(Bấm cycle start. Vậy là chạy. Một chu trình mất 5 phút.)* |
| Thái | （<ruby>機械<rt>きかい</rt></ruby>の<ruby>動<rt>うご</rt></ruby>きを<ruby>見<rt>み</rt></ruby>る）<ruby>動<rt>うご</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めました。すごいですね。<br>*(Nhìn máy chạy. Bắt đầu chạy rồi. Hay quá ạ.)* |

---

## Tình huống 5 — Bệ máy · 10:35, đo kiểm và 報告 kết quả cho 先輩

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>が<ruby>完成<rt>かんせい</rt></ruby>しました。<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>測<rt>はか</rt></ruby>ってもよろしいですか？<br>*(Anh Suzuki, cái thứ nhất đã xong. Em đo kích thước được không ạ?)* |
| Suzuki | はい、マイクロメーターで<ruby>測<rt>はか</rt></ruby>ってください。<ruby>仕様<rt>しよう</rt></ruby>は<ruby>覚<rt>おぼ</rt></ruby>えていますか？<br>*(Vâng, dùng panme mà đo. Quy cách em nhớ không?)* |
| Thái | はい、20±0.05ミリです。<br>*(Vâng, 20±0,05mm ạ.)* |
| Thái | （マイクロメーターで<ruby>測<rt>はか</rt></ruby>る）...20.02ミリです。<br>*(Đo bằng panme. 20,02mm ạ.)* |
| Suzuki | <ruby>許容範囲<rt>きょようはんい</rt></ruby><ruby>内<rt>ない</rt></ruby>ですね。<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Trong dung sai. Đạt rồi.)* |
| Thái | <ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>寸法<rt>すんぽう</rt></ruby>20.02ミリ、<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Em xin báo cáo. Cái số 1, kích thước 20,02mm, đạt.)* |
| Suzuki | はい、<ruby>了解<rt>りょうかい</rt></ruby>です。いい<ruby>報告<rt>ほうこく</rt></ruby>の<ruby>仕方<rt>かた</rt></ruby>ですね。<ruby>残<rt>のこ</rt></ruby>り<ruby>9<rt>きゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>でやってみてください。<br>*(Vâng, nhận. Cách báo cáo tốt đấy. 9 cái còn lại em tự làm thử nhé.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 6 — Bệ máy · 11:00, Thái tự bấm サイクルスタート lần đầu, hỏi lại khi gặp tiếng lạ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めてもよろしいですか？<br>*(Anh Suzuki, em bắt đầu cái số 2 được không ạ?)* |
| Suzuki | はい、どうぞ。<ruby>段取<rt>だんど</rt></ruby>りから<ruby>同<rt>おな</rt></ruby>じ<ruby>手順<rt>てじゅん</rt></ruby>でね。<br>*(Vâng, làm đi. Từ chuẩn bị theo đúng quy trình nhé.)* |
| Thái | （<ruby>素材<rt>そざい</rt></ruby>セット、ドアを<ruby>閉<rt>し</rt></ruby>めて、サイクルスタートを<ruby>押<rt>お</rt></ruby>す）<br>*(Set phôi, đóng cửa, bấm cycle start.)* |
| MC | （<ruby>動作音<rt>どうさおん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>、<ruby>小<rt>ちい</rt></ruby>さなビビリ<ruby>音<rt>おん</rt></ruby>）<br>*(Trong tiếng máy chạy, có tiếng rung khẽ.)* |
| Thái | あれ？<ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>音<rt>おと</rt></ruby>がちょっとおかしいような<ruby>気<rt>き</rt></ruby>がします。「ビビリ」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Ơ? Anh Suzuki, tiếng nghe hơi lạ. "Bibiri" là gì ạ?)* |
| Suzuki | （<ruby>近<rt>ちか</rt></ruby>づいて<ruby>音<rt>おと</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く）<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>振動<rt>しんどう</rt></ruby>している<ruby>音<rt>おと</rt></ruby>です。<ruby>切削条件<rt>せっさくじょうけん</rt></ruby>が<ruby>合<rt>あ</rt></ruby>っていない<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Đến gần nghe. Là tiếng dao bị rung. Có thể chế độ cắt chưa phù hợp.)* |
| Thái | <ruby>停止<rt>てい</rt></ruby>した<ruby>方<rt>ほう</rt></ruby>がいいですか？<br>*(Em nên dừng máy không ạ?)* |
| Suzuki | はい、<ruby>一度<rt>いちど</rt></ruby><ruby>止<rt>と</rt></ruby>めましょう。すぐ<ruby>聞<rt>き</rt></ruby>いてくれてよかったです。<ruby>変<rt>へん</rt></ruby>な<ruby>音<rt>おと</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Vâng, dừng lại đã. May em hỏi ngay. Tiếng lạ là nhất định phải báo cáo nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>報連相<rt>ほうれんそう</rt></ruby>ですね。<br>*(Vâng, em rõ ạ. Là 報連相 đúng không ạ.)* |
| Suzuki | そうそう、その<ruby>調子<rt>ちょうし</rt></ruby>。<ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>を<ruby>少<rt>すこ</rt></ruby>し<ruby>下<rt>さ</rt></ruby>げてみましょう。<br>*(Đúng đúng, vậy đó. Giảm tốc độ chạy dao xuống chút thử.)* |

---

## Tình huống 7 — Bệ máy · 12:00, 報告 kết quả buổi sáng cho 先輩

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>、<ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Suzuki, phần buổi sáng hôm nay đã xong 10 cái ạ.)* |
| Suzuki | <ruby>不良<rt>ふりょう</rt></ruby>はありましたか？<br>*(Có cái nào lỗi không?)* |
| Thái | <ruby>不良<rt>ふりょう</rt></ruby>は<ruby>0<rt>ゼロ</rt></ruby><ruby>個<rt>こ</rt></ruby>です。<ruby>寸法<rt>すんぽう</rt></ruby>は<ruby>全部<rt>ぜんぶ</rt></ruby>20±0.05ミリの<ruby>許容範囲<rt>きょようはんい</rt></ruby><ruby>内<rt>ない</rt></ruby>でした。<br>*(Phế phẩm là 0. Kích thước toàn bộ đều trong dung sai 20±0,05mm.)* |
| Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>初日<rt>しょにち</rt></ruby>で<ruby>不良<rt>ふりょう</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>はなかなかですよ。<br>*(Tuyệt vời! Ngày đầu mà không lỗi nào là hiếm lắm.)* |
| Thái | ありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>のビビリ<ruby>音<rt>おん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>は、<ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>を10パーセント<ruby>下<rt>さ</rt></ruby>げたら<ruby>解決<rt>かいけつ</rt></ruby>しました。<br>*(Em cảm ơn. Vụ rung dao ở cái thứ 2, giảm tốc độ chạy dao 10% là xử lý được ạ.)* |
| Suzuki | はい、<ruby>了解<rt>りょうかい</rt></ruby>。その<ruby>件<rt>けん</rt></ruby>も<ruby>日報<rt>にっぽう</rt></ruby>に<ruby>書<rt>か</rt></ruby>いておいてください。<br>*(Vâng, nhận. Vụ đó em ghi vào báo cáo ngày luôn.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>午後<rt>ごご</rt></ruby>は<ruby>磨<rt>みが</rt></ruby>きですよね？<br>*(Vâng, em rõ ạ. Chiều là đánh bóng đúng không ạ?)* |
| Suzuki | はい、<ruby>午後<rt>ごご</rt></ruby>は<ruby>磨<rt>みが</rt></ruby>き<ruby>場<rt>ば</rt></ruby>へ<ruby>戻<rt>もど</rt></ruby>ってください。<ruby>来週<rt>らいしゅう</rt></ruby>からは<ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby>でMCを<ruby>担当<rt>たんとう</rt></ruby>してもらいますからね。<br>*(Vâng, chiều em về xưởng đánh bóng. Tuần sau em sẽ phụ trách MC một mình đấy.)* |

---

## Tình huống 8 — Khu nghỉ · 12:15, hỏi 桜井 về lưu ý vận hành MC (quan sát đàn anh thứ hai)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>聞<rt>き</rt></ruby>きしてもいいですか？<br>*(Anh Sakurai, em hỏi một chút được không ạ?)* |
| Sakurai | はい、どうぞ。<br>*(Vâng, em hỏi đi.)* |
| Thái | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby>でMCを<ruby>動<rt>うご</rt></ruby>かすことになりました。<ruby>何<rt>なに</rt></ruby>か<ruby>気<rt>き</rt></ruby>をつけることはありますか？<br>*(Tuần sau em phải vận hành MC một mình. Có gì cần lưu ý không ạ?)* |
| Sakurai | <ruby>3<rt>みっ</rt></ruby>つあります。<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、シミュレーションを<ruby>絶対<rt>ぜったい</rt></ruby><ruby>省<rt>はぶ</rt></ruby>かないこと。<ruby>面倒<rt>めんどう</rt></ruby>でも<ruby>毎回<rt>まいかい</rt></ruby>やる。<br>*(Ba điều. Một, tuyệt đối không bỏ qua mô phỏng. Phiền cũng phải làm mỗi lần.)* |
| Thái | はい、<ruby>毎回<rt>まいかい</rt></ruby>シミュレーションですね。<br>*(Vâng, mỗi lần đều mô phỏng ạ.)* |
| Sakurai | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>音<rt>おと</rt></ruby>を<ruby>聞<rt>き</rt></ruby>くこと。<ruby>正常<rt>せいじょう</rt></ruby>な<ruby>音<rt>おと</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えれば、<ruby>異常<rt>いじょう</rt></ruby>がすぐ<ruby>分<rt>わ</rt></ruby>かります。<br>*(Hai, lắng nghe tiếng máy. Nhớ tiếng bình thường thì bất thường biết liền.)* |
| Thái | なるほど、ビビリとかですね。<br>*(Em hiểu rồi, kiểu như tiếng rung dao ạ.)* |
| Sakurai | そうそう。<ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しでもおかしいと<ruby>思<rt>おも</rt></ruby>ったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>止<rt>と</rt></ruby>めて<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>聞<rt>き</rt></ruby>く。<ruby>無理<rt>むり</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けたら<ruby>機械<rt>きかい</rt></ruby>が<ruby>壊<rt>こわ</rt></ruby>れます。<br>*(Đúng đúng. Ba, thấy hơi lạ một chút cũng phải dừng và hỏi đàn anh. Cố chạy là máy hỏng.)* |
| Thái | <ruby>機械<rt>きかい</rt></ruby>が<ruby>壊<rt>こわ</rt></ruby>れるということは、<ruby>修理<rt>しゅうり</rt></ruby><ruby>代<rt>だい</rt></ruby>もすごいですよね...<br>*(Máy hỏng thì tiền sửa cũng khủng nhỉ...)* |
| Sakurai | はい、<ruby>数<rt>すう</rt></ruby><ruby>百万円<rt>ひゃくまんえん</rt></ruby><ruby>単位<rt>たんい</rt></ruby>です。だから<ruby>慎重<rt>しんちょう</rt></ruby>にね。<br>*(Vâng, hàng triệu yên. Nên phải cẩn thận nhé.)* |
| Thái | はい、<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, em sẽ căng mình. Em cảm ơn anh rất nhiều.)* |

---

## Tình huống 9 — Xưởng đánh bóng · 14:00, Thái quay lại 磨き và nhận đơn từ 工場長

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>午前<rt>ごぜん</rt></ruby>のMCはどうでしたか？<br>*(Thái, MC buổi sáng thế nào?)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>不良<rt>ふりょう</rt></ruby><ruby>0<rt>ゼロ</rt></ruby><ruby>個<rt>こ</rt></ruby>でした。<br>*(Cúi đầu. Thưa 工場長, em xong 10 cái, không lỗi nào ạ.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>鈴木<rt>すずき</rt></ruby>さんからも「<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みが<ruby>早<rt>はや</rt></ruby>い」と<ruby>聞<rt>き</rt></ruby>いていますよ。<br>*(Tốt lắm. Anh Suzuki cũng khen em "tiếp thu nhanh" đấy.)* |
| Thái | ありがとうございます。<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>でビビリ<ruby>音<rt>おん</rt></ruby>がしましたが、<ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げて<ruby>解決<rt>かいけつ</rt></ruby>しました。<ruby>日報<rt>にっぽう</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>します。<br>*(Em cảm ơn. Cái số 2 có tiếng rung, em giảm tốc độ chạy dao là xử được. Em ghi vào báo cáo ngày ạ.)* |
| Tanaka | はい、その<ruby>報告<rt>ほうこく</rt></ruby>の<ruby>仕方<rt>かた</rt></ruby>がとてもいいですね。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby><ruby>立<rt>だ</rt></ruby>ちですが、<ruby>無理<rt>むり</rt></ruby>はしないでください。<ruby>少<rt>すこ</rt></ruby>しでも<ruby>不安<rt>ふあん</rt></ruby>な<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>くこと。<br>*(Vâng, cách báo cáo đó tốt đấy. Tuần sau làm một mình, đừng cố gắng quá. Hơi bất an cũng phải hỏi.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>徹底<rt>てってい</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em sẽ triệt để 報連相.)* |
| Tanaka | では<ruby>午後<rt>ごご</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>き、<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Vậy chiều đánh bóng cố lên nhé.)* |

---

## Tình huống 10 — Phòng 201 · 21:00, kể chuyện với Putra (quan sát đàn anh nước ngoài)

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、お<ruby>帰<rt>かえ</rt></ruby>り。MCの<ruby>初日<rt>しょにち</rt></ruby>はどうだった？<br>*(Anh Thái về rồi. Ngày đầu MC thế nào?)* |
| Thái | <ruby>10<rt>じゅっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>でした！でも<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>目<rt>め</rt></ruby>でビビリ<ruby>音<rt>おん</rt></ruby>がして<ruby>焦<rt>あせ</rt></ruby>りました。<br>*(10 cái không lỗi nào! Nhưng cái thứ 2 nghe tiếng rung em cuống ạ.)* |
| Putra | ビビリは<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>はびっくりするよ。<ruby>止<rt>と</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>いた？<br>*(Tiếng rung ai mới làm cũng giật mình. Em có dừng và hỏi không?)* |
| Thái | はい、すぐ<ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しました。<br>*(Vâng, em báo cáo anh Suzuki ngay.)* |
| Putra | それが<ruby>正解<rt>せいかい</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>私<rt>わたし</rt></ruby>は<ruby>無視<rt>むし</rt></ruby>して<ruby>続<rt>つづ</rt></ruby>けて、<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>折<rt>お</rt></ruby>ったことがあります。<br>*(Đúng đắn. Tôi một năm trước phớt lờ chạy tiếp, gãy dao đấy.)* |
| Thái | え、<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>折<rt>お</rt></ruby>ったんですか！<br>*(Ơ, gãy dao luôn ạ!)* |
| Putra | はい。<ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>のエンドミルが<ruby>一瞬<rt>いっしゅん</rt></ruby>でパキッと。<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>怒<rt>おこ</rt></ruby>られました。<br>*(Vâng. Mũi dao endmill 30.000 yên, gãy cái rốp trong nháy mắt. Bị 工場長 mắng.)* |
| Thái | こわい...<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby>でやることになっています。<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Sợ thật... Tuần sau em phải tự làm một mình. Hồi hộp ạ.)* |
| Putra | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。タイさんは<ruby>聞<rt>き</rt></ruby>く<ruby>力<rt>ちから</rt></ruby>があるから。<ruby>分<rt>わ</rt></ruby>からなければ<ruby>聞<rt>き</rt></ruby>く、<ruby>変<rt>へん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>ったら<ruby>止<rt>と</rt></ruby>める。それだけです。<br>*(Không sao. Anh Thái có khả năng hỏi mà. Không hiểu thì hỏi, thấy lạ thì dừng. Chỉ thế thôi.)* |
| Thái | ありがとう、プトラさん。<br>*(Cảm ơn anh Putra.)* |

---

## Tình huống 11 — Phòng 201 · 22:00, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & người yêu ở quê.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, qua video call) Anh! Tối rồi mà chưa ngủ à? |
| Thái | (tiếng Việt) Anh đợi em một chút. Hôm nay anh được bàn giao máy MC số 3, ngày đầu đứng máy phay luôn. |
| Mai | (tiếng Việt) Wow, anh được lên máy rồi á? Năm 1 đánh bóng cả ngày, năm 2 đã đứng máy rồi cơ. |
| Thái | (tiếng Việt) Ừ. Anh học được mấy từ mới: 段取り là chuẩn bị set phôi, 許容範囲 là dung sai cho phép, シミュレーション là mô phỏng trước khi chạy thật. |
| Mai | (tiếng Việt) Em ghi vào sổ luôn nha. Anh kể tiếp đi. |
| Thái | (tiếng Việt) Cái thứ hai bị rung dao, gọi là ビビリ. Anh dừng máy hỏi anh Suzuki ngay, anh ấy khen vì biết báo cáo sớm. Anh Putra thì kể một năm trước anh ấy phớt lờ tiếng lạ rồi gãy mũi dao 30.000 yên. |
| Mai | (tiếng Việt) Hai năm rưỡi nữa anh về phép, em đợi. Cố giữ máy đừng làm gãy gì nha. |
| Thái | (tiếng Việt) Tuần sau anh tự đứng máy một mình rồi. Hơi run nhưng anh nhớ 報連相 với "không hiểu thì hỏi" là ổn. |
| Mai | (tiếng Việt) Mẹ gửi lời hỏi thăm. Mẹ nói anh ăn uống đầy đủ vào. |
| Thái | (tiếng Việt) Ừ, em chuyển lại cho mẹ là con vẫn ổn. Thôi anh đi ngủ đây, mai sáng 7 rưỡi xuống sảnh. |
| Mai | (tiếng Việt) Ngủ ngon anh. Chúc anh tuần sau làm máy thật chuẩn. |

---

## Đọng lại chương 1

Ngày đầu bước sang vận hành máy MC, Thái học được loạt mẫu câu giao tiếp trong xưởng gia công CNC: **nhận bàn giao từ 先輩** (本日から〜を担当します・よろしくお願いいたします), **xác nhận từng bước 段取り** (バイス固定・水平確認・原点合わせ), **hỏi lại lễ phép từ chuyên ngành** (〜というのは？・どんな意味ですか・〜ということですね) áp dụng cho 許容範囲, シミュレーション, 切削油, ビビリ. Thái cũng tập **xin phép trước thao tác quan trọng** (シミュレーションを実行してもよろしいですか・2個目を始めてもよろしいですか) và **報告 kết quả đo cho 先輩** theo công thức: số lượng → kích thước → kết luận đạt/lỗi. Sự cố rung dao giữa chừng dạy Thái nguyên tắc lớn của ngành chính xác **0,01mm**: nghe thấy bất thường là dừng và 報連相 ngay — anh Suzuki khen, ngược với câu chuyện gãy mũi dao 30.000 yên mà Putra kể. Tuần sau Thái sẽ một mình đứng máy: hành trang là **シミュレーション毎回・正常な音を覚える・少しでも変なら止めて聞く** — ba bí quyết Sakurai trao tay.

> Từ vựng & mẫu câu chương này: MCオペレータ・マシニングセンタ・3軸・段取り・バイス・ダイヤルゲージ・水平確認・原点合わせ・許容範囲・誤差・NCプログラム・シミュレーション・衝突・サイクルスタート・切削油・エアブロー・切粉・ビビリ・送り速度・マイクロメーター・寸法・仕様・不良ゼロ・日報・報連相・OJT・〜を担当します・〜というのは・〜してもよろしいですか・〜と報告します

## Bí quyết chương

- **Chuyển sang vận hành máy**: Sáng MC chiều 磨き — chuyển dần sang vai trò operator.
- **Suzuki dạy 1 tuần OJT**: Tuần sau Thái 1人立ち — kết quả cho đoạn cuối sách 15.
- **10 cái không lỗi ngày đầu + ビビリ xử kịp**: Tạo tự tin có kiểm soát, không kiêu.
- **Putra kể gãy mũi dao 3万円**: Đối chiếu warning — vì sao "止めて聞く" là vàng.

> *"5/2023. Năm 2 ngày 1. MC số 3, 10/10 không lỗi. Tuần sau 1人."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 号機 | ごうき | HIỆU CƠ | máy số (đánh số máy) |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 機種 | きしゅ | CƠ CHỦNG | loại máy, model |
| 軸 | じく | TRỤC | trục |
| 略 | りゃく | LƯỢC | viết tắt |
| 実地訓練 | じっちくんれん | THỰC ĐỊA HUẤN LUYỆN | đào tạo tại chỗ (OJT) |
| 段取り | だんどり | ĐOẠN THỦ | công đoạn chuẩn bị |
| 素材 | そざい | TỐ TÀI | phôi, vật liệu thô |
| 固定 | こてい | CỐ ĐỊNH | cố định |
| 水平 | すいへい | THỦY BÌNH | độ phẳng, ngang |
| 確認 | かくにん | XÁC NHẬN | kiểm tra, xác nhận |
| 許容範囲 | きょようはんい | HỨA DUNG PHẠM VI | phạm vi dung sai cho phép |
| 図面 | ずめん | ĐỒ DIỆN | bản vẽ |
| 誤差 | ごさ | NGỘ SAI | sai số |
| 合格 | ごうかく | HỢP CÁCH | đạt chuẩn |
| 不良 | ふりょう | BẤT LƯƠNG | phế phẩm, lỗi |
| 原点合わせ | げんてんあわせ | NGUYÊN ĐIỂM HỢP | căn điểm gốc |
| 工具 | こうぐ | CÔNG CỤ | dao gia công, dụng cụ |
| 中心 | ちゅうしん | TRUNG TÂM | tâm |
| 仕様 | しよう | SĨ DẠNG | quy cách, spec |
| 衝突 | しょうとつ | XUNG ĐỘT | va đập, va chạm |
| 実行 | じっこう | THỰC HÀNH | thực thi, chạy |
| 軌跡 | きせき | QUỸ TÍCH | đường chạy, quỹ đạo |
| 本番 | ほんばん | BẢN PHIÊN | chạy thật, vận hành thật |
| 切削油 | せっさくゆ | THIẾT TƯỚC DU | dầu cắt gọt |
| 切粉 | きりこ | THIẾT PHẤN | phoi, mạt cắt |
| 寸法 | すんぽう | THỐN PHÁP | kích thước |
| 完成 | かんせい | HOÀN THÀNH | hoàn thành |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 了解 | りょうかい | LIỄU GIẢI | nhận, hiểu rõ |
| 動作音 | どうさおん | ĐỘNG TÁC ÂM | tiếng máy chạy |
| 振動 | しんどう | CHẤN ĐỘNG | rung |
| 切削条件 | せっさくじょうけん | THIẾT TƯỚC ĐIỀU KIỆN | điều kiện cắt gọt |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 停止 | ていし | ĐÌNH CHỈ | dừng lại |
| 報連相 | ほうれんそう | BÁO LIÊN TƯỚNG | báo cáo - liên lạc - bàn bạc |
| 送り速度 | おくりそくど | TỐNG TỐC ĐỘ | tốc độ chạy dao, feed rate |
| 解決 | かいけつ | GIẢI QUYẾT | giải quyết |
| 日報 | にっぽう | NHẬT BÁO | báo cáo ngày |
| 完了 | かんりょう | HOÀN LIỄU | hoàn tất |
| 磨き | みがき | MA | đánh bóng |
| 正常 | せいじょう | CHÍNH THƯỜNG | bình thường |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 修理代 | しゅうりだい | TU LÝ ĐẠI | tiền sửa chữa |
| 慎重 | しんちょう | THẬN TRỌNG | thận trọng |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | trưởng nhà máy |
| 記載 | きさい | KÝ TẢI | ghi chép vào |
| 徹底 | てってい | TRIỆT ĐỂ | triệt để |
| 一人立ち | ひとりだち | NHẤT NHÂN LẬP | tự lập, một mình đứng máy |
| 正解 | せいかい | CHÍNH GIẢI | đáp án đúng, đúng đắn |
| 無視 | むし | VÔ THỊ | phớt lờ |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng, hồi hộp |
