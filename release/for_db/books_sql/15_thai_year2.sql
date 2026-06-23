-- Hizashi LITE book SQL — Thái Y2
-- curriculum_id = 800000015  (book_seq=15)
-- nguồn: books/15_thai_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000015, 'N3', 'markdown_book', 'Cơ khí', 'Thái Y2', 'Bộ sách Hizashi — Thái Y2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000001, 800000015, NULL, 'markdown_book', 'T1. Ngày đầu vận hành máy MC (MCオペレータ開始)', '# Sách kỹ sư khuôn đúc · T1. Ngày đầu vận hành máy MC (MCオペレータ開始)

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
| Thái | すみません、「<ruby>許容範囲<rt>きょようはんい</rt></ruby>」というのはどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "kyoyou-han''i" nghĩa là gì ạ?)* |
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
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng, hồi hộp |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000002, 800000015, NULL, 'markdown_book', 'T2. Học Mastercam cơ bản (Mastercam入門)', '# Sách kỹ sư khuôn đúc · T2. Học Mastercam cơ bản (Mastercam入門)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) năm thứ 2 tại **株式会社みなみ精密金型** ở Anjo, Aichi, được 鈴木 (Suzuki) hướng dẫn vào phần mềm CAM Mastercam — phần mềm số 1 ngành khuôn nhỏ Nhật. Học các mẫu hội thoại tiếng Nhật chuyên ngành CAM: nghe đàn anh giới thiệu phần mềm và quy trình STEP→toolpath, hỏi đáp về thông số gia công (切込み・送り) khi chưa rõ, xác nhận lại bằng `〜ということですね`, hỏi lại lễ phép `〜というのは何ですか` khi gặp từ chuyên ngành mới, báo cáo tiến độ với cấp trên theo 報連相, trao đổi kinh nghiệm với 先輩 cùng đợt, và chốt mạch nhân vật qua cảnh tiếng Việt gọi điện về cho người yêu.

---

## Bối cảnh

Tháng 6 năm 2023. Thái đã ở Nhật hơn một năm, vừa qua N4, đang ôn N3. Năm thứ hai bắt đầu chuyển từ vận hành máy sang công việc thiết kế và CAM tại phòng 設計室. Hôm nay anh 鈴木 (Suzuki) — 先輩 phụ trách CAM của công ty — bắt đầu dạy Thái phần mềm **Mastercam** để generate toolpath và G-code từ part SolidWorks. Chương này tập trung mẫu câu giao tiếp khi học một phần mềm chuyên ngành: nghe giải thích quy trình, hỏi lại khi chưa hiểu, xác nhận thông số, báo cáo tiến độ với cấp trên.

---

## Tình huống 1 — Phòng 設計室 · 17:30, Suzuki giới thiệu Mastercam (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>からCAMを<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>使<rt>つか</rt></ruby>っているのはマスターキャムというソフトです。<br>*(Thái, từ hôm nay mình bắt đầu CAM nhé. Phần mềm công ty đang dùng là Mastercam.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。マスターキャム、<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Vâng, em mong anh chỉ bảo. Mastercam em mới nghe lần đầu ạ.)* |
| Suzuki | <ruby>日本<rt>にほん</rt></ruby>の<ruby>小<rt>ちい</rt></ruby>さい<ruby>金型<rt>かながた</rt></ruby><ruby>工場<rt>こうじょう</rt></ruby>では<ruby>業界<rt>ぎょうかい</rt></ruby>シェア<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>です。<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>転職<rt>てんしょく</rt></ruby>するときも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちますよ。<br>*(Ở xưởng khuôn nhỏ Nhật, đây là phần mềm chiếm thị phần số 1. Học rồi sau này nhảy việc cũng có ích.)* |
| Thái | すみません、「シェア<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "share số 1" nghĩa là gì ạ?)* |
| Suzuki | <ruby>市場<rt>しじょう</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>使<rt>つか</rt></ruby>われているということです。<ruby>同業<rt>どうぎょう</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>もほとんどマスターキャムを<ruby>使<rt>つか</rt></ruby>っています。<br>*(Nghĩa là được dùng nhiều nhất trên thị trường. Các công ty cùng ngành hầu hết cũng dùng Mastercam.)* |
| Thái | なるほど、<ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>標準<rt>ひょうじゅん</rt></ruby>ということですね。<br>*(Ra vậy, tức là tiêu chuẩn của ngành ạ.)* |
| Suzuki | そうそう。まず<ruby>流<rt>なが</rt></ruby>れを<ruby>説明<rt>せつめい</rt></ruby>します。SolidWorksで<ruby>設計<rt>せっけい</rt></ruby>したパーツをSTEPファイルで<ruby>出<rt>だ</rt></ruby>して、マスターキャムに<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>みます。<br>*(Đúng vậy. Trước hết tôi giải thích flow. Part thiết kế trong SolidWorks xuất ra file STEP, rồi import vào Mastercam.)* |
| Thái | STEPファイル<ruby>経由<rt>けいゆ</rt></ruby>で<ruby>連動<rt>れんどう</rt></ruby>する、ということですね。メモします。<br>*(Tức là liên kết qua file STEP ạ. Em ghi lại.)* |

---

## Tình huống 2 — Phòng 設計室 · 18:00, hỏi đáp khi generate toolpath

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>最初<rt>さいしょ</rt></ruby>にやるのは<ruby>素材<rt>そざい</rt></ruby><ruby>定義<rt>ていぎ</rt></ruby>と<ruby>原点<rt>げんてん</rt></ruby><ruby>設定<rt>せってい</rt></ruby>です。<ruby>材料<rt>ざいりょう</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きさと、<ruby>加工<rt>かこう</rt></ruby>の<ruby>基準点<rt>きじゅんてん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。<br>*(Đầu tiên là định nghĩa phôi và set gốc toạ độ. Quyết định kích thước phôi và điểm chuẩn gia công.)* |
| Thái | （マウスで<ruby>操作<rt>そうさ</rt></ruby>しながら）<ruby>原点<rt>げんてん</rt></ruby>は<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>でいいですか？<br>*(Thao tác chuột. Gốc đặt ở góc dưới bên trái được không ạ?)* |
| Suzuki | はい、<ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>標準<rt>ひょうじゅん</rt></ruby>でそうします。<ruby>次<rt>つぎ</rt></ruby>に<ruby>荒加工<rt>あらかこう</rt></ruby>のポケットツールパスを<ruby>作<rt>つく</rt></ruby>ります。<ruby>工具<rt>こうぐ</rt></ruby>はφ16のエンドミルです。<br>*(Vâng, công ty mình mặc định vậy. Tiếp theo tạo pocket toolpath cho phay thô. Dao là endmill φ16.)* |
| Thái | すみません、<ruby>切込<rt>きりこ</rt></ruby>みと<ruby>送<rt>おく</rt></ruby>りはどのぐらいに<ruby>設定<rt>せってい</rt></ruby>すればいいですか？<br>*(Xin lỗi, depth of cut và feed nên đặt bao nhiêu ạ?)* |
| Suzuki | <ruby>材料<rt>ざいりょう</rt></ruby>がNAK80なら<ruby>切込<rt>きりこ</rt></ruby>みは2mm、<ruby>送<rt>おく</rt></ruby>りは<ruby>刃<rt>は</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>あたり0.1mmです。<br>*(Vật liệu là NAK80 thì depth of cut 2mm, feed 0,1mm trên một lưỡi.)* |
| Thái | NAK80というのは<ruby>金型<rt>かながた</rt></ruby><ruby>用<rt>よう</rt></ruby>のプリハードン<ruby>鋼<rt>こう</rt></ruby>ですよね？<br>*(NAK80 là thép pre-hardened dùng cho khuôn đúng không ạ?)* |
| Suzuki | よく<ruby>知<rt>し</rt></ruby>っていますね。そうです、<ruby>当社<rt>とうしゃ</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>う<ruby>材料<rt>ざいりょう</rt></ruby>です。<br>*(Em biết rồi nhỉ. Đúng vậy, là vật liệu công ty hay dùng.)* |
| Thái | <ruby>切込<rt>きりこ</rt></ruby>み2mm、<ruby>送<rt>おく</rt></ruby>り0.1mm／<ruby>刃<rt>は</rt></ruby>、ということですね。<ruby>入力<rt>にゅうりょく</rt></ruby>します。<br>*(Depth 2mm, feed 0,1mm/lưỡi đúng không ạ. Em nhập đây.)* |
| Suzuki | <ruby>分<rt>わ</rt></ruby>からない<ruby>数字<rt>すうじ</rt></ruby>があったら<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>勝手<rt>かって</rt></ruby>に<ruby>決<rt>き</rt></ruby>めると<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>折<rt>お</rt></ruby>れます。<br>*(Có số nào không hiểu thì nhất định phải hỏi. Tự quyết là gãy dao đấy.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 3 — Phòng 設計室 · 18:30, kiểm tra simulation 3D

| Vai | Lời thoại |
|---|---|
| Suzuki | ツールパスができたら、<ruby>必<rt>かなら</rt></ruby>ずバックプロットでシミュレーションを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Sau khi tạo xong toolpath, nhất định kiểm tra mô phỏng bằng backplot.)* |
| Thái | バックプロットというのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Backplot là gì ạ?)* |
| Suzuki | <ruby>工具<rt>こうぐ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>く<ruby>経路<rt>けいろ</rt></ruby>を3Dで<ruby>表示<rt>ひょうじ</rt></ruby>するシミュレーションです。<ruby>機械<rt>きかい</rt></ruby>に<ruby>送<rt>おく</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>見<rt>み</rt></ruby>ます。<br>*(Là mô phỏng hiển thị đường đi của dao bằng 3D. Trước khi gửi sang máy thì bắt buộc xem.)* |
| Thái | （シミュレーションを<ruby>再生<rt>さいせい</rt></ruby>する）わあ、3Dで<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いています！<br>*(Chạy mô phỏng. Ô, dao chạy bằng 3D thật ạ!)* |
| Suzuki | <ruby>衝突<rt>しょうとつ</rt></ruby>チェックも<ruby>同時<rt>どうじ</rt></ruby>にできます。<ruby>赤<rt>あか</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>出<rt>で</rt></ruby>なければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Kiểm tra va đập cũng làm cùng lúc. Không hiện đỏ là ổn.)* |
| Thái | <ruby>確認<rt>かくにん</rt></ruby>します...<ruby>緑<rt>みどり</rt></ruby>だけで、<ruby>赤<rt>あか</rt></ruby>はありません。<br>*(Em kiểm tra... Chỉ có xanh, không có đỏ ạ.)* |
| Suzuki | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。<ruby>次<rt>つぎ</rt></ruby>は<ruby>仕上<rt>しあ</rt></ruby>げです。コンタリングツールパスを<ruby>使<rt>つか</rt></ruby>って、φ8のボールエンドミルで<ruby>表面<rt>ひょうめん</rt></ruby>をきれいに<ruby>削<rt>けず</rt></ruby>ります。<br>*(Vậy là ổn. Tiếp theo là phay tinh. Dùng contouring toolpath với dao đầu cầu φ8 để gia công bề mặt.)* |
| Thái | <ruby>荒加工<rt>あらかこう</rt></ruby>はエンドミル、<ruby>仕上<rt>しあ</rt></ruby>げはボールエンドミル、ということですね。<br>*(Phay thô dùng endmill, phay tinh dùng ball endmill đúng không ạ.)* |
| Suzuki | そうです。<ruby>形<rt>かたち</rt></ruby>によって<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けます。<br>*(Đúng. Tuỳ hình dạng mà chọn dao.)* |

---

## Tình huống 4 — Phòng 設計室 · 19:00, sinh G-code lần đầu

| Vai | Lời thoại |
|---|---|
| Suzuki | シミュレーションがOKなら、ポストプロセッサでG-codeを<ruby>生成<rt>せいせい</rt></ruby>します。<br>*(Mô phỏng OK rồi thì dùng post processor sinh G-code.)* |
| Thái | ポストプロセッサ...というのは？<br>*(Post processor... là gì ạ?)* |
| Suzuki | マスターキャムの<ruby>内部<rt>ないぶ</rt></ruby>データを、<ruby>機械<rt>きかい</rt></ruby>が<ruby>読<rt>よ</rt></ruby>めるG-codeに<ruby>変換<rt>へんかん</rt></ruby>するプログラムです。<ruby>機械<rt>きかい</rt></ruby>のメーカーごとに<ruby>違<rt>ちが</rt></ruby>います。<br>*(Là chương trình chuyển dữ liệu nội bộ Mastercam sang G-code máy đọc được. Khác nhau tuỳ hãng máy.)* |
| Thái | <ruby>当社<rt>とうしゃ</rt></ruby>はマザックでしたよね？<br>*(Công ty mình dùng Mazak đúng không ạ?)* |
| Suzuki | はい、マザック<ruby>用<rt>よう</rt></ruby>のポストを<ruby>選<rt>えら</rt></ruby>びます。（クリック）はい、<ruby>生成<rt>せいせい</rt></ruby>できました。<br>*(Vâng, chọn post cho Mazak. Click. Sinh xong rồi đấy.)* |
| Thái | （テキストファイルを<ruby>開<rt>ひら</rt></ruby>く）G01 X100.0 Y50.0 F500...これがG-codeですね。<br>*(Mở file text. G01 X100.0 Y50.0 F500... Đây là G-code ạ.)* |
| Suzuki | これをUSBか<ruby>社内<rt>しゃない</rt></ruby>ネットワーク<ruby>経由<rt>けいゆ</rt></ruby>でマザックのMCに<ruby>送<rt>おく</rt></ruby>ります。<br>*(Cái này gửi sang máy MC Mazak qua USB hoặc mạng nội bộ.)* |
| Thái | <ruby>設計<rt>せっけい</rt></ruby>から<ruby>機械<rt>きかい</rt></ruby>まで、<ruby>全部<rt>ぜんぶ</rt></ruby>つながっているんですね。<ruby>感動<rt>かんどう</rt></ruby>しました。<br>*(Từ thiết kế đến máy gia công, tất cả đều kết nối nhỉ. Em cảm động quá.)* |
| Suzuki | これからは<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>パーツのCAMをタイ<ruby>君<rt>くん</rt></ruby>に<ruby>担当<rt>たんとう</rt></ruby>してもらいます。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Từ nay mỗi ngày em phụ trách CAM một chi tiết. Có gì không hiểu nhất định phải hỏi.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em sẽ cố gắng. Em mong anh giúp đỡ ạ.)* |

---

## Tình huống 5 — Phòng 設計室 · 6/2023 cuối tháng, báo cáo tiến độ 1 tuần (報連相)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby>さん、<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>をしてもよろしいですか？<br>*(Anh Suzuki, em báo cáo tiến độ tuần này được không ạ?)* |
| Suzuki | はい、どうぞ。<br>*(Ừ, nói đi.)* |
| Thái | <ruby>今週<rt>こんしゅう</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>のパーツのCAMが<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>全部<rt>ぜんぶ</rt></ruby>シミュレーションで<ruby>赤<rt>あか</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>なしを<ruby>確認<rt>かくにん</rt></ruby>しています。<br>*(Tuần này em đã làm xong CAM cho 5 chi tiết. Tất cả mô phỏng đều không có đỏ.)* |
| Suzuki | （データを<ruby>確認<rt>かくにん</rt></ruby>する）...タイ<ruby>君<rt>くん</rt></ruby>、<ruby>切込<rt>きりこ</rt></ruby>みはもう<ruby>少<rt>すこ</rt></ruby>し<ruby>大<rt>おお</rt></ruby>きくしても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Kiểm tra dữ liệu. Thái, depth of cut tăng thêm chút nữa cũng được đấy.)* |
| Thái | えっ、3mmまでいいですか？<br>*(Ơ, đến 3mm được không ạ?)* |
| Suzuki | NAK80なら2.5mmまでが<ruby>安全<rt>あんぜん</rt></ruby>です。3mmは<ruby>少<rt>すこ</rt></ruby>し<ruby>危<rt>あぶ</rt></ruby>ない。2.5mmにすれば<ruby>加工<rt>かこう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>が<ruby>短<rt>みじか</rt></ruby>くなります。<br>*(NAK80 thì đến 2.5mm là an toàn. 3mm hơi nguy. Đặt 2.5mm thời gian gia công sẽ ngắn lại.)* |
| Thái | （メモする）2.5mmですね。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>変更<rt>へんこう</rt></ruby>します。<br>*(Ghi chú. 2.5mm ạ. Tuần sau em đổi.)* |
| Suzuki | こういうのは<ruby>本<rt>ほん</rt></ruby>には<ruby>書<rt>か</rt></ruby>いていない。<ruby>経験<rt>けいけん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えていくものです。<br>*(Cái này sách không viết. Phải học qua kinh nghiệm.)* |
| Thái | はい、<ruby>毎回<rt>まいかい</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>してもらいます。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vâng, em sẽ luôn xin anh kiểm tra. Em học được nhiều ạ.)* |

---

## Tình huống 6 — Phòng ăn · 12:30, trao đổi với 先輩 Sakurai (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、マスターキャムは<ruby>進<rt>すす</rt></ruby>んでいますか？<br>*(Thái, Mastercam tiến triển sao rồi?)* |
| Thái | はい、おかげさまで<ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>で<ruby>基本<rt>きほん</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>はできるようになりました。<br>*(Vâng, nhờ trời sau một tháng em đã làm được thao tác cơ bản ạ.)* |
| Sakurai | <ruby>速<rt>はや</rt></ruby>いね！<ruby>俺<rt>おれ</rt></ruby>は<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>かかったよ。<br>*(Nhanh đấy! Anh phải mất 3 tháng cơ.)* |
| Thái | <ruby>大学<rt>だいがく</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>しCADの<ruby>勉強<rt>べんきょう</rt></ruby>をしていたので、<ruby>画面<rt>がめん</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れるのが<ruby>早<rt>はや</rt></ruby>かったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Hồi đại học em có học chút CAD nên quen giao diện nhanh hơn em nghĩ.)* |
| Sakurai | <ruby>機械科<rt>きかいか</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>は<ruby>有利<rt>ゆうり</rt></ruby>だね。でも、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しいのはこれからだよ。<ruby>金型<rt>かながた</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>が<ruby>複雑<rt>ふくざつ</rt></ruby>になると、<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>選<rt>えら</rt></ruby>び<ruby>方<rt>かた</rt></ruby>と<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>悩<rt>なや</rt></ruby>む。<br>*(Khoa cơ khí có lợi thế đấy. Nhưng khó thật sự là từ giờ trở đi. Khuôn phức tạp lên là vật vã chọn dao và thứ tự gia công.)* |
| Thái | <ruby>順番<rt>じゅんばん</rt></ruby>...というのは、<ruby>荒加工<rt>あらかこう</rt></ruby>と<ruby>仕上<rt>しあ</rt></ruby>げの<ruby>順番<rt>じゅんばん</rt></ruby>ですか？<br>*(Thứ tự... ý anh là thứ tự phay thô và phay tinh ạ?)* |
| Sakurai | それも<ruby>含<rt>ふく</rt></ruby>めて、どの<ruby>面<rt>めん</rt></ruby>から<ruby>削<rt>けず</rt></ruby>るか、どこで<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>替<rt>か</rt></ruby>えるか、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>頭<rt>あたま</rt></ruby>で<ruby>段取<rt>だんど</rt></ruby>りする。<br>*(Bao gồm cả việc gia công mặt nào trước, đổi dao ở đâu, đều phải lên kế hoạch trong đầu.)* |
| Thái | サクライさんに<ruby>追<rt>お</rt></ruby>いつきたいです。<ruby>2<rt>に</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>には<ruby>一人<rt>ひとり</rt></ruby>でできるようになりたいです。<br>*(Em muốn theo kịp anh Sakurai. 2 năm nữa em mong tự làm được một mình.)* |
| Sakurai | このペースなら<ruby>追<rt>お</rt></ruby>い<ruby>抜<rt>ぬ</rt></ruby>かれそうだな。<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Đà này có khi anh bị em vượt mất. Cùng cố gắng nào.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ giáo ạ.)* |

---

## Tình huống 7 — Phòng 201 · 22:00, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua trao đổi với người yêu ở quê.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh, dạo này bận lắm hả? Em gọi mấy lần anh không bắt máy. |
| Thái | (tiếng Việt) Xin lỗi em. Tháng này bắt đầu học Mastercam — phần mềm CAM của xưởng, lại đang ôn N3 nữa. Tối nào cũng về phòng tầm 9 giờ. |
| Mai | (tiếng Việt) CAM là gì hả anh? |
| Thái | (tiếng Việt) Tức là phần mềm sinh ra đường chạy dao cho máy CNC. Anh thiết kế part trong SolidWorks, xuất file STEP, rồi vào Mastercam đặt thông số phay thô — gọi là 荒加工 — phay tinh là 仕上げ, xong nó sinh ra G-code đẩy sang máy Mazak. |
| Mai | (tiếng Việt) Nghe phức tạp ghê. Anh học có vất không? |
| Thái | (tiếng Việt) Vất nhưng vui. Anh Suzuki kèm trực tiếp. Mỗi lần anh không hiểu từ nào — vd "シェア1位" với "ポストプロセッサ" — anh đều phải hỏi `〜というのは何ですか`. Hỏi mãi quen, không ngại nữa. |
| Mai | (tiếng Việt) Anh giỏi quá. Năm thứ 2 mà đã được vào phòng thiết kế. |
| Thái | (tiếng Việt) Anh Sakurai bảo 2 năm nữa có khi anh vượt anh ấy. Anh tin được vậy chứ chưa dám tin. |
| Mai | (tiếng Việt) Em tin anh. Mà nhớ ngủ đủ giấc, đừng thức khuya quá. |
| Thái | (tiếng Việt) Ừ, anh đi ngủ đây. Mai 7 giờ rưỡi xuống sảnh với Putra rồi. Yêu em. |
| Mai | (tiếng Việt) Yêu anh. Cố lên anh. |

---

## Đọng lại chương 2

Một tháng đầu vào CAM, Thái học được toàn bộ chuỗi mẫu câu giao tiếp khi tiếp nhận một phần mềm chuyên ngành từ 先輩: nghe **giới thiệu phần mềm** (シェア1位・業界の標準), nghe **giải thích flow SolidWorks → STEPファイル → マスターキャム → G-code → マザック**, **hỏi lại** mỗi khi gặp từ mới (バックプロット・ポストプロセッサ・〜というのは何ですか), **xác nhận thông số** bằng `〜ということですね` (切込み2mm・送り0.1mm／刃), và **báo cáo tiến độ** với cấp trên theo 報連相 (今週の進捗報告をしてもよろしいですか). Bài học lớn hơn cả mẫu câu: kiến thức gia công như 「NAK80なら切込み2.5mmまで」không có trong sách — phải **hỏi 先輩 và tích luỹ qua kinh nghiệm**. Tại bàn ăn, Sakurai đã chốt một câu khích lệ — **「このペースなら追い抜かれそう」**— và Thái biết đó là lời nói đùa nghiêm túc, là động lực cho 5 năm tới.

> Từ vựng & mẫu câu chương này: マスターキャム・CAM・SolidWorks・STEPファイル・素材定義・原点設定・荒加工・仕上げ・ポケットツールパス・コンタリングツールパス・エンドミル・ボールエンドミル・切込み・送り・刃・NAK80・バックプロット・シミュレーション・衝突チェック・ポストプロセッサ・G-code・マザック・進捗報告・業界シェア・〜というのは何ですか・〜ということですね・追い抜かれる

## Bí quyết chương

- **Mastercam là CAM số 1 tại xưởng nhỏ Nhật**: học là kỹ năng có thể mang theo cả đời.
- **Thái học nhanh nhờ nền đại học cơ khí**: nền tảng N4 + cơ khí trả công sau 1 năm.
- **Sakurai gieo câu "2 năm nữa bị vượt"**: tạo cạnh tranh thân thiện — sẽ kết quả thấy ở sách 18.

> *"6/2023. Một tháng nắm cơ bản Mastercam. Sakurai bảo 2 năm nữa sẽ bị vượt. Mục tiêu đã rõ."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 設計室 | せっけいしつ | THIẾT KẾ THẤT | phòng thiết kế |
| 当社 | とうしゃ | ĐƯƠNG XÃ | công ty chúng tôi |
| 業界 | ぎょうかい | NGHIỆP GIỚI | ngành nghề |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 市場 | しじょう | THỊ TRƯỜNG | thị trường |
| 同業 | どうぎょう | ĐỒNG NGHIỆP | cùng ngành |
| 標準 | ひょうじゅん | TIÊU CHUẨN | tiêu chuẩn |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 経由 | けいゆ | KINH DO | qua trung gian |
| 連動 | れんどう | LIÊN ĐỘNG | liên kết động |
| 素材定義 | そざいていぎ | TỐ TÀI ĐỊNH NGHĨA | định nghĩa phôi |
| 原点設定 | げんてんせってい | NGUYÊN ĐIỂM THIẾT ĐỊNH | set gốc toạ độ |
| 材料 | ざいりょう | TÀI LIỆU | vật liệu |
| 基準点 | きじゅんてん | CƠ CHUẨN ĐIỂM | điểm chuẩn |
| 加工 | かこう | GIA CÔNG | gia công |
| 操作 | そうさ | THAO TÁC | thao tác |
| 荒加工 | あらかこう | HOANG GIA CÔNG | phay thô |
| 仕上げ | しあげ | SĨ THƯỢNG | gia công tinh |
| 切込み | きりこみ | THIẾT VÀO | chiều sâu cắt |
| 送り | おくり | TỐNG | bước tiến, feed |
| 刃 | は | NHẬN | lưỡi dao |
| 鋼 | こう | THÉP | thép |
| 入力 | にゅうりょく | NHẬP LỰC | nhập vào |
| 数字 | すうじ | SỐ TỰ | số liệu |
| 経路 | けいろ | KINH LỘ | đường đi, lộ trình |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 再生 | さいせい | TÁI SINH | phát lại |
| 内部 | ないぶ | NỘI BỘ | bên trong |
| 変換 | へんかん | BIẾN HOÁN | chuyển đổi |
| 生成 | せいせい | SINH THÀNH | sinh ra, tạo |
| 社内 | しゃない | XÃ NỘI | trong công ty |
| 感動 | かんどう | CẢM ĐỘNG | cảm động |
| 進捗 | しんちょく | TIẾN CHỈ | tiến độ |
| 安全 | あんぜん | AN TOÀN | an toàn |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 経験 | けいけん | KINH NGHIỆM | kinh nghiệm |
| 基本操作 | きほんそうさ | CƠ BẢN THAO TÁC | thao tác cơ bản |
| 機械科 | きかいか | CƠ GIỚI KHOA | khoa cơ khí |
| 出身 | しゅっしん | XUẤT THÂN | xuất thân |
| 有利 | ゆうり | HỮU LỢI | có lợi |
| 複雑 | ふくざつ | PHỨC TẠP | phức tạp |
| 順番 | じゅんばん | THỨ TỰ | thứ tự |
| 追い抜く | おいぬく | TRUY BẠT | vượt qua |
| 進捗報告 | しんちょくほうこく | TIẾN CHỈ BÁO CÁO | báo cáo tiến độ |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000003, 800000015, NULL, 'markdown_book', 'T3. Lần đầu vận hành máy EDM Sodick (放電加工セットアップ)', '# Sách kỹ sư khuôn đúc · T3. Lần đầu vận hành máy EDM Sodick (放電加工セットアップ)

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
| 慣れる | なれる | QUÁN | quen tay |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000004, 800000015, NULL, 'markdown_book', 'T4. Lần thử khuôn solo đầu tiên (初トライ)', '# Sách kỹ sư khuôn đúc · T4. Lần thử khuôn solo đầu tiên (初トライ)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) đã sang Nhật hơn một năm, lần đầu được giao chạy thử (トライ) một khuôn nhỏ một mình tại nhà máy みなみ精密金型. Học các mẫu hội thoại tiếng Nhật ở hiện trường ép nhựa: nhận việc từ 先輩 (任せるよ・お任せください), xác nhận thông số máy (温度・保圧・射出速度), hỏi lại lễ phép khi chưa hiểu từ chuyên ngành (〜というのは?), báo cáo lỗi sản phẩm bằng 報連相 (ヒケが出ました), nghe phân tích nguyên nhân và đề xuất 対策, xin phép thao tác cẩu khuôn 500kg (玉掛け), tổng kết PDCA cuối ca.

---

## Bối cảnh

Tháng 8 năm 2023. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo, Aichi được hơn một năm, vừa thi xong N3. Hôm nay, đàn anh trực tiếp 鈴木 (Suzuki) giao cho Thái lần đầu **初トライ** — chạy thử một khuôn nhỏ làm chi tiết nội thất xe. Trình độ tiếng Nhật N3, tay nghề mới qua đoạn quan sát. Chương này tập trung các mẫu câu giao tiếp ở hiện trường ép phun: nhận việc, xác nhận thông số, hỏi lại từ chuyên ngành, báo lỗi và bàn 対策.

---

## Tình huống 1 — Phòng kỹ thuật xưởng · 8:30, Suzuki giao việc (nhận nhiệm vụ từ 先輩)

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>今日<rt>きょう</rt></ruby>から<ruby>初<rt>はつ</rt></ruby>トライを<ruby>任<rt>まか</rt></ruby>せるよ。<br>*(Thái, chào buổi sáng. Từ hôm nay anh giao em lần thử khuôn đầu tiên.)* |
| Thái | えっ、<ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>私<rt>わたし</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でやってもいいんですか？<br>*(Ơ, thật ạ! Em làm một mình được ạ?)* |
| Suzuki | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>小<rt>ちい</rt></ruby>さい<ruby>金型<rt>かながた</rt></ruby>だから。インテリアパーツの<ruby>試作品<rt>しさくひん</rt></ruby>だ。<br>*(Yên tâm. Khuôn nhỏ thôi. Là sản phẩm thử của chi tiết nội thất.)* |
| Thái | ありがとうございます！<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>担当<rt>たんとう</rt></ruby>させていただきます。<br>*(Em cảm ơn anh ạ! Em sẽ cố gắng. Em xin nhận phụ trách.)* |
| Suzuki | <ruby>俺<rt>おれ</rt></ruby>は<ruby>後<rt>うし</rt></ruby>ろから<ruby>見<rt>み</rt></ruby>てるから、<ruby>困<rt>こま</rt></ruby>ったら<ruby>声<rt>こえ</rt></ruby>をかけて。<ruby>無理<rt>むり</rt></ruby>はしないでね。<br>*(Anh đứng sau quan sát. Khó khăn gì cứ gọi anh. Đừng cố quá nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>分<rt>わ</rt></ruby>からないことがあったら、すぐ<ruby>相談<rt>そうだん</rt></ruby>します。<br>*(Vâng, em rõ ạ. Có gì chưa hiểu em sẽ hỏi anh ngay.)* |
| Suzuki | それでいい。<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずにね。<br>*(Vậy là được. Đừng quên 報連相 nhé.)* |
| Thái | はい！では、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Vâng! Vậy em xin phép kiểm tra bản vẽ ạ.)* |

---

## Tình huống 2 — Khu cẩu khuôn · 9:30, xin phép thao tác 玉掛け khuôn 500kg

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>金型<rt>かながた</rt></ruby>の<ruby>玉掛<rt>たまか</rt></ruby>けをお<ruby>願<rt>ねが</rt></ruby>いしてもいいですか。<ruby>500<rt>ごひゃく</rt></ruby>kgあります。<br>*(Anh Sakurai, em nhờ anh phụ móc cẩu khuôn được không ạ. Khuôn 500kg.)* |
| Sakurai | いいよ。タイ<ruby>君<rt>くん</rt></ruby>、まず<ruby>重<rt>おも</rt></ruby>さを<ruby>確認<rt>かくにん</rt></ruby>した？<br>*(Được. Thái, kiểm tra trọng lượng chưa?)* |
| Thái | はい、<ruby>図面<rt>ずめん</rt></ruby>に<ruby>500<rt>ごひゃく</rt></ruby>kgと<ruby>書<rt>か</rt></ruby>いてあります。スリングは<ruby>2<rt>に</rt></ruby>トン<ruby>用<rt>よう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Vâng, trên bản vẽ ghi 500kg. Em dùng dây cẩu loại 2 tấn ạ.)* |
| Sakurai | よし、<ruby>安全係数<rt>あんぜんけいすう</rt></ruby>OK。アイボルトの<ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けを<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Tốt, hệ số an toàn ổn. Kiểm tra siết bulông móc khuôn.)* |
| Thái | （<ruby>確認<rt>かくにん</rt></ruby>する）はい、<ruby>4<rt>よん</rt></ruby><ruby>本<rt>ほん</rt></ruby>とも<ruby>締<rt>し</rt></ruby>まっています。<br>*(Kiểm tra. Vâng, cả 4 bulông đều siết chặt ạ.)* |
| Suzuki | （<ruby>後<rt>うし</rt></ruby>ろから）クレーンを<ruby>動<rt>うご</rt></ruby>かす<ruby>前<rt>まえ</rt></ruby>に、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合図<rt>あいず</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してね。<br>*(Trước khi cho cẩu chạy, nhất định phải ra hiệu nhé.)* |
| Thái | はい！クレーン<ruby>動<rt>うご</rt></ruby>かします、<ruby>離<rt>はな</rt></ruby>れてください！<br>*(Vâng! Em cho cẩu chạy, mọi người tránh ra ạ!)* |
| Sakurai | （<ruby>離<rt>はな</rt></ruby>れる）OK、ゆっくりな。<br>*(Tránh ra. OK, từ từ thôi nhé.)* |
| Thái | （クレーン<ruby>操作<rt>そうさ</rt></ruby>、<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>射出機<rt>しゃしゅつき</rt></ruby>へ<ruby>運<rt>はこ</rt></ruby>ぶ）<ruby>射出機<rt>しゃしゅつき</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Vận hành cẩu, cẩn trọng đưa sang máy ép phun. Em đưa vào đúng vị trí máy.)* |
| Suzuki | <ruby>位置決<rt>いちぎ</rt></ruby>めできた？ボルトで<ruby>固定<rt>こてい</rt></ruby>して。<br>*(Định vị xong chưa? Cố định bằng bulông đi.)* |
| Thái | （<ruby>確認<rt>かくにん</rt></ruby>）はい、<ruby>取付<rt>とりつ</rt></ruby>け<ruby>完了<rt>かんりょう</rt></ruby>しました！<br>*(Kiểm tra. Vâng, lắp đặt xong rồi ạ!)* |

---

## Tình huống 3 — Bảng điều khiển máy ép · 10:30, xác nhận thông số 樹脂・温度・保圧

| Vai | Lời thoại |
|---|---|
| Suzuki | では<ruby>条件<rt>じょうけん</rt></ruby><ruby>設定<rt>せってい</rt></ruby>だ。<ruby>樹脂<rt>じゅし</rt></ruby>はABS。<ruby>温度<rt>おんど</rt></ruby>は<ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>℃<rt>ど</rt></ruby>で<ruby>設定<rt>せってい</rt></ruby>して。<br>*(Cài thông số nào. Nhựa là ABS. Nhiệt độ đặt 240 độ C.)* |
| Thái | <ruby>樹脂<rt>じゅし</rt></ruby>ABS、<ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>℃<rt>ど</rt></ruby>ですね。（ホッパーに<ruby>樹脂<rt>じゅし</rt></ruby>を<ruby>投入<rt>とうにゅう</rt></ruby>する）<ruby>投入<rt>とうにゅう</rt></ruby>しました。<br>*(Nhựa ABS, 240°C ạ. Đổ nhựa vào phễu. Em đổ xong rồi ạ.)* |
| Suzuki | <ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>は<ruby>50<rt>ごじゅう</rt></ruby>%、<ruby>保圧<rt>ほあつ</rt></ruby>は<ruby>60<rt>ろくじゅう</rt></ruby>MPaで<ruby>入力<rt>にゅうりょく</rt></ruby>して。<br>*(Tốc độ phun 50%, áp suất giữ 60MPa, nhập vào đi.)* |
| Thái | すみません、「<ruby>保圧<rt>ほあつ</rt></ruby>」というのは<ruby>射出<rt>しゃしゅつ</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>金型<rt>かながた</rt></ruby>を<ruby>押<rt>お</rt></ruby>さえる<ruby>圧力<rt>あつりょく</rt></ruby>のことですか？<br>*(Xin lỗi, "hoatsu" có phải là áp lực giữ khuôn sau khi phun không ạ?)* |
| Suzuki | そうそう。<ruby>射出<rt>しゃしゅつ</rt></ruby>の<ruby>後<rt>あと</rt></ruby>、<ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>冷<rt>ひ</rt></ruby>えて<ruby>縮<rt>ちぢ</rt></ruby>むから、<ruby>追加<rt>ついか</rt></ruby>で<ruby>圧力<rt>あつりょく</rt></ruby>をかけて<ruby>埋<rt>う</rt></ruby>める。これが<ruby>足<rt>た</rt></ruby>りないとヒケが<ruby>出<rt>で</rt></ruby>る。<br>*(Đúng vậy. Sau khi phun, nhựa nguội đi và co lại, nên cấp thêm áp lực để lấp đầy. Nếu thiếu sẽ bị "hike".)* |
| Thái | ヒケ...というのは？<br>*(Hike... nghĩa là gì ạ?)* |
| Suzuki | <ruby>表面<rt>ひょうめん</rt></ruby>がへこむ<ruby>不良<rt>ふりょう</rt></ruby>のことだ。<ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>に<ruby>出<rt>で</rt></ruby>やすい。<br>*(Là lỗi bề mặt bị lõm xuống. Hay xảy ra ở phần dày.)* |
| Thái | <ruby>表面<rt>ひょうめん</rt></ruby>のへこみ、ということですね。メモします。<br>*(Tức là vết lõm trên bề mặt ạ. Em ghi lại.)* |
| Suzuki | それから<ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>は<ruby>40<rt>よんじゅう</rt></ruby><ruby>℃<rt>ど</rt></ruby>。チラーで<ruby>調整<rt>ちょうせい</rt></ruby>して。<br>*(Còn nhiệt độ khuôn 40°C. Chỉnh bằng chiller đi.)* |
| Thái | はい、<ruby>40<rt>よんじゅう</rt></ruby><ruby>℃<rt>ど</rt></ruby>に<ruby>設定<rt>せってい</rt></ruby>しました。<ruby>準備<rt>じゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Vâng, em đặt 40°C rồi. Chuẩn bị xong ạ.)* |

---

## Tình huống 4 — Bên máy ép · 11:00, lần phun đầu tiên (first shot)

| Vai | Lời thoại |
|---|---|
| Suzuki | じゃあ、サイクルスタートしよう。<ruby>緊張<rt>きんちょう</rt></ruby>するな、いつも<ruby>通<rt>どお</rt></ruby>りでいい。<br>*(Vậy khởi động chu trình đi. Đừng căng, làm như mọi khi thôi.)* |
| Thái | はい。スタートします！（<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ボタンを<ruby>押<rt>お</rt></ruby>す）<br>*(Vâng. Em khởi động ạ! Kiểm tra an toàn, bấm nút.)* |
| Thái | （<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>音<rt>おん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く）<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>始<rt>はじ</rt></ruby>まりました。<br>*(Nghe tiếng máy phun. Đã bắt đầu phun.)* |
| Suzuki | <ruby>15<rt>じゅうご</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>冷却<rt>れいきゃく</rt></ruby>。<ruby>圧力<rt>あつりょく</rt></ruby>のグラフをよく<ruby>見<rt>み</rt></ruby>て。<br>*(Làm nguội 15 giây. Quan sát kỹ biểu đồ áp suất.)* |
| Thái | （モニターを<ruby>見<rt>み</rt></ruby>る）<ruby>保圧<rt>ほあつ</rt></ruby>が<ruby>60<rt>ろくじゅう</rt></ruby>MPaで<ruby>安定<rt>あんてい</rt></ruby>しています。<br>*(Nhìn màn hình. Áp suất giữ ổn định ở 60MPa.)* |
| Suzuki | OK。<ruby>金型<rt>かながた</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>くよ。<br>*(OK. Khuôn sắp mở rồi đấy.)* |
| Thái | （<ruby>金型<rt>かながた</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>く、<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しました。<br>*(Khuôn mở ra, lấy sản phẩm. Em lấy ra rồi ạ.)* |
| Suzuki | どうだ？<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみて。<br>*(Sao rồi? Xem bề mặt thử đi.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>る）...あれ？<ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>にヒケが<ruby>出<rt>で</rt></ruby>ています。<br>*(Xem kỹ sản phẩm. Ơ? Phần dày có vết lõm rồi ạ.)* |

---

## Tình huống 5 — Bàn kiểm tra sản phẩm · 11:15, báo cáo lỗi và nghe phân tích nguyên nhân

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>鈴木<rt>すずき</rt></ruby>さん、ご<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>1<rt>いっ</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>のショットでヒケが<ruby>出<rt>で</rt></ruby>ました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Anh Suzuki, em xin báo cáo. Phát đầu tiên bị lõm rồi ạ. Em xin lỗi.)* |
| Suzuki | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>謝<rt>あやま</rt></ruby>るな。<ruby>初<rt>はつ</rt></ruby>トライではよくあることだ。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>分析<rt>ぶんせき</rt></ruby>しよう。<br>*(Kiểm tra sản phẩm. Đừng xin lỗi. Lần thử đầu rất hay gặp. Cùng phân tích nguyên nhân nào.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin nhờ anh ạ.)* |
| Suzuki | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つ<ruby>考<rt>かんが</rt></ruby>えられる。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>冷却時間<rt>れいきゃくじかん</rt></ruby>が<ruby>短<rt>みじか</rt></ruby>すぎる。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>厚肉部<rt>あつにくぶ</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>。<br>*(Có ba nguyên nhân nghĩ đến. Một là áp suất giữ thiếu. Hai là thời gian làm nguội quá ngắn. Ba là vấn đề thiết kế phần dày.)* |
| Thái | <ruby>厚肉部<rt>あつにくぶ</rt></ruby>...<ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>ということですね。<br>*(Phần dày... tức là thiết kế của phần có độ dày lớn đúng không ạ.)* |
| Suzuki | そうだ。でも<ruby>設計<rt>せっけい</rt></ruby>は<ruby>今<rt>いま</rt></ruby><ruby>変<rt>か</rt></ruby>えられない。まずは<ruby>条件<rt>じょうけん</rt></ruby>で<ruby>対応<rt>たいおう</rt></ruby>しよう。<br>*(Đúng. Nhưng thiết kế giờ không đổi được. Trước tiên xử lý bằng điều kiện ép.)* |
| Thái | <ruby>対策<rt>たいさく</rt></ruby>はどうすればいいですか？<br>*(Giải pháp nên làm thế nào ạ?)* |
| Suzuki | <ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>上<rt>あ</rt></ruby>げてみよう。それで<ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>る。<br>*(Thử tăng áp suất giữ lên 80MPa. Rồi xem thế nào.)* |
| Thái | はい、<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>変更<rt>へんこう</rt></ruby>します。<br>*(Vâng, em đổi sang 80MPa.)* |

---

## Tình huống 6 — Bên máy ép · 11:30, lần 2 — Thái quan sát cách Suzuki đọc dữ liệu

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>のショットを<ruby>始<rt>はじ</rt></ruby>めます。（ボタンを<ruby>押<rt>お</rt></ruby>す）<br>*(Em bắt đầu phát thứ hai ạ. Bấm nút.)* |
| Suzuki | （モニターを<ruby>指<rt>さ</rt></ruby>して）タイ<ruby>君<rt>くん</rt></ruby>、ここを<ruby>見<rt>み</rt></ruby>て。<ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がりが<ruby>早<rt>はや</rt></ruby>くなっただろ？<br>*(Chỉ vào màn hình. Thái, xem chỗ này. Áp suất giữ lên nhanh hơn rồi đúng không?)* |
| Thái | あ、<ruby>本当<rt>ほんとう</rt></ruby>ですね。グラフの<ruby>形<rt>かたち</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います。<br>*(À, đúng thật ạ. Hình dạng đồ thị khác hẳn.)* |
| Suzuki | こうやって<ruby>毎回<rt>まいかい</rt></ruby>グラフを<ruby>見<rt>み</rt></ruby>る<ruby>習慣<rt>しゅうかん</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けて。<ruby>数字<rt>すうじ</rt></ruby>だけじゃ<ruby>分<rt>わ</rt></ruby>からないことが<ruby>多<rt>おお</rt></ruby>い。<br>*(Tập thói quen lần nào cũng xem đồ thị như vậy. Chỉ nhìn số thôi thì nhiều khi không hiểu được.)* |
| Thái | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Vâng, em học hỏi được nhiều ạ.)* |
| Thái | （<ruby>金型<rt>かながた</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>く、<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しました。ヒケが<ruby>少<rt>すこ</rt></ruby>し<ruby>軽<rt>かる</rt></ruby>くなりましたが、まだあります。<br>*(Khuôn mở, lấy sản phẩm. Em lấy ra rồi. Lõm nhẹ đi rồi, nhưng vẫn còn ạ.)* |
| Suzuki | よし、<ruby>方向<rt>ほうこう</rt></ruby>は<ruby>合<rt>あ</rt></ruby>っている。<ruby>次<rt>つぎ</rt></ruby>は<ruby>冷却時間<rt>れいきゃくじかん</rt></ruby>を<ruby>20<rt>にじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>に<ruby>延<rt>の</rt></ruby>ばそう。<br>*(Tốt, đúng hướng rồi. Lần sau kéo dài thời gian làm nguội lên 20 giây.)* |
| Thái | はい、<ruby>20<rt>にじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>ですね。<ruby>変更<rt>へんこう</rt></ruby>します。<br>*(Vâng, 20 giây ạ. Em đổi.)* |

---

## Tình huống 7 — Bên máy ép · 12:00, shot lần 3 — hợp cách

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>、<ruby>保圧<rt>ほあつ</rt></ruby><ruby>80<rt>はちじゅう</rt></ruby>MPa、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>で<ruby>開始<rt>かいし</rt></ruby>します。<br>*(Phát thứ ba, áp suất 80MPa, làm nguội 20 giây, em bắt đầu ạ.)* |
| Suzuki | OK、いってみよう。<br>*(OK, làm đi nào.)* |
| Thái | （ボタンを<ruby>押<rt>お</rt></ruby>す、サイクルが<ruby>進<rt>すす</rt></ruby>む）...<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>します。<br>*(Bấm nút, chu trình chạy. Em lấy sản phẩm ạ.)* |
| Thái | （<ruby>表面<rt>ひょうめん</rt></ruby>を<ruby>光<rt>ひかり</rt></ruby>に<ruby>当<rt>あ</rt></ruby>てて<ruby>確認<rt>かくにん</rt></ruby>する）ヒケがありません！<ruby>表面<rt>ひょうめん</rt></ruby>もきれいです！<br>*(Đưa bề mặt ra ánh sáng kiểm tra. Không còn lõm nữa ạ! Bề mặt cũng đẹp!)* |
| Suzuki | （<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>）うん、<ruby>合格<rt>ごうかく</rt></ruby>だ。よくやった。<br>*(Cầm lấy kiểm tra. Ừ, đạt rồi. Em làm tốt lắm.)* |
| Thái | ありがとうございます！<br>*(Em cảm ơn anh ạ!)* |
| Suzuki | <ruby>大事<rt>だいじ</rt></ruby>なのは、なぜ<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>でうまくいったか<ruby>説明<rt>せつめい</rt></ruby>できることだ。やってみて。<br>*(Quan trọng là em phải giải thích được vì sao lần ba ổn. Thử đi.)* |
| Thái | はい。<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>20<rt>にじゅう</rt></ruby>MPa<ruby>上<rt>あ</rt></ruby>げて<ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>収縮<rt>しゅうしゅく</rt></ruby>を<ruby>埋<rt>う</rt></ruby>めて、<ruby>冷却時間<rt>れいきゃくじかん</rt></ruby>を<ruby>5<rt>ご</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>延<rt>の</rt></ruby>ばして<ruby>厚肉部<rt>あつにくぶ</rt></ruby>を<ruby>十分<rt>じゅうぶん</rt></ruby>に<ruby>固<rt>かた</rt></ruby>めました。<br>*(Vâng. Em tăng áp suất giữ thêm 20MPa để lấp phần co của nhựa, kéo dài thời gian làm nguội thêm 5 giây để phần dày đông cứng đầy đủ.)* |
| Suzuki | <ruby>完璧<rt>かんぺき</rt></ruby>だ。それが<ruby>分<rt>わ</rt></ruby>かれば<ruby>次<rt>つぎ</rt></ruby>からは<ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>できる。<br>*(Hoàn hảo. Hiểu được như vậy thì lần sau em tự phán đoán được.)* |

---

## Tình huống 8 — Phòng kỹ thuật · 13:30, báo cáo 工場長 (報連相 thực chiến)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>よろしいですか。<ruby>初<rt>はつ</rt></ruby>トライの<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Trưởng nhà máy Tanaka, anh có thời gian không ạ. Em xin báo cáo kết quả lần thử khuôn đầu.)* |
| Tanaka | おお、タイさん。どうだった？<br>*(Ồ, Thái-san. Thế nào rồi?)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>のショットで<ruby>合格<rt>ごうかく</rt></ruby><ruby>品<rt>ひん</rt></ruby>が<ruby>取<rt>と</rt></ruby>れました。<ruby>1<rt>いっ</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>と<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>はヒケが<ruby>出<rt>で</rt></ruby>ましたが、<ruby>保圧<rt>ほあつ</rt></ruby>と<ruby>冷却時間<rt>れいきゃくじかん</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>して<ruby>解決<rt>かいけつ</rt></ruby>しました。<br>*(Phát thứ ba lấy được sản phẩm đạt ạ. Phát 1 và 2 bị lõm, nhưng em điều chỉnh áp suất giữ và thời gian làm nguội đã khắc phục được.)* |
| Tanaka | よかった。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>記録<rt>きろく</rt></ruby>しておいた？<br>*(Tốt. Em ghi lại điều kiện chưa?)* |
| Thái | はい、トライシートに<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>しました。<ruby>後<rt>あと</rt></ruby>で<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Vâng, em đã ghi đầy đủ vào phiếu trial. Lát em sẽ nộp ạ.)* |
| Tanaka | いいね。<ruby>初<rt>はつ</rt></ruby>トライで<ruby>原因<rt>げんいん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>できるなら、<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>金型<rt>かながた</rt></ruby><ruby>屋<rt>や</rt></ruby>になれるよ。<br>*(Tốt. Lần thử đầu mà giải thích được nguyên nhân thì sẽ thành thợ khuôn cứng nghề được đấy.)* |
| Thái | ありがとうございます。これからも<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Em cảm ơn anh ạ. Em sẽ tiếp tục học hỏi.)* |

---

## Tình huống 9 — Khu nghỉ hút thuốc · 15:00, Putra hỏi chuyện (quan sát đàn anh nước ngoài)

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>初<rt>はつ</rt></ruby>トライどうだった？<ruby>噂<rt>うわさ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いたよ。<br>*(Anh Thái, lần thử đầu sao rồi? Tôi nghe đồn rồi đấy.)* |
| Thái | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>1<rt>いっ</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>はヒケで<ruby>失敗<rt>しっぱい</rt></ruby>しました。でも<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Cười. Phát đầu thất bại vì lỗi lõm. Nhưng phát thứ ba đạt rồi anh ạ.)* |
| Putra | おお、すごい！<ruby>俺<rt>おれ</rt></ruby>の<ruby>初<rt>はつ</rt></ruby>トライは<ruby>5<rt>ご</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>でやっと<ruby>合格<rt>ごうかく</rt></ruby>だったよ。<br>*(Ô, giỏi quá! Lần thử đầu của tôi mãi phát thứ 5 mới đạt đấy.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか？プトラさんもヒケでしたか？<br>*(Thật ạ? Anh Putra cũng bị lỗi lõm ạ?)* |
| Putra | いや、<ruby>俺<rt>おれ</rt></ruby>は「バリ」だった。<ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>金型<rt>かながた</rt></ruby>の<ruby>隙間<rt>すきま</rt></ruby>に<ruby>漏<rt>も</rt></ruby>れる<ruby>不良<rt>ふりょう</rt></ruby>だ。<br>*(Không, tôi bị "bari". Là lỗi nhựa rò ra khe khuôn.)* |
| Thái | バリ...<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。それも<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Bari... em mới nghe lần đầu. Cái đó cũng để em học hỏi ạ.)* |
| Putra | <ruby>不良<rt>ふりょう</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>はたくさんあるよ。ヒケ・バリ・ショートショット・ウェルドライン...<ruby>毎回<rt>まいかい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えていけばいい。<br>*(Tên các lỗi nhiều lắm. Hike, bari, short shot, weld line... cứ gặp lần nào nhớ lần đó là được.)* |
| Thái | はい、ノートに<ruby>書<rt>か</rt></ruby>いておきます。プトラさん、いつもありがとうございます。<br>*(Vâng, em sẽ ghi vào sổ. Cảm ơn anh Putra luôn giúp đỡ ạ.)* |

---

## Tình huống 10 — Phòng 201 ký túc · 22:00, gọi điện về cho Mai (Cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê, ôn lại từ vựng JP chương này.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh! Em mới đi học về. Hôm nay ở xưởng thế nào? |
| Thái | (tiếng Việt) Em ơi, hôm nay anh được giao trial đầu tiên một mình rồi. Cái lần chạy thử khuôn ấy. |
| Mai | (tiếng Việt) Ôi, vậy là anh được tin tưởng rồi! Có ổn không anh? |
| Thái | (tiếng Việt) Lần phun đầu hỏng, có cái lỗi gọi là ヒケ — bề mặt bị lõm xuống ở chỗ nhựa dày. Anh xin lỗi rối rít, anh Suzuki bảo "đừng xin lỗi, phân tích nguyên nhân đi". |
| Mai | (tiếng Việt) Người Nhật khác bên mình thật. Bên này lỡ là bị mắng luôn. |
| Thái | (tiếng Việt) Ừ. Anh ấy bảo có 3 nguyên nhân: 保圧 thiếu — áp suất giữ ấy, rồi 冷却時間 ngắn — thời gian làm nguội, với lại 厚肉部 thiết kế phần dày. Anh tăng áp suất từ 60 lên 80 MPa, kéo dài làm nguội từ 15 lên 20 giây, đến phát thứ ba thì đạt. |
| Mai | (tiếng Việt) Em nghe không hiểu lắm nhưng nghe sướng. Anh giải thích lại cho 工場長 chưa? |
| Thái | (tiếng Việt) Rồi, anh báo cáo bằng 報連相 đàng hoàng. Ông Tanaka còn khen anh sẽ thành 金型屋 cứng nghề. Mà anh Putra kể lần trial đầu của anh ấy mãi phát thứ 5 mới đạt, lỗi gọi là バリ. |
| Mai | (tiếng Việt) Anh giỏi quá. Năm nay anh thi N2 luôn được không? |
| Thái | (tiếng Việt) Anh vừa thi N3 xong tháng 7, sang năm anh cố N2. Còn ba năm visa nữa thôi, anh phải tăng tốc. |
| Mai | (tiếng Việt) Em đợi anh. Đi ngủ sớm đi, mai lại phải vào xưởng. |
| Thái | (tiếng Việt) Ừ, anh ngủ đây. おやすみ. |

---

## Đọng lại chương 4

Hôm nay Thái lần đầu chạy **初トライ** một mình và học được nguyên mẫu PDCA của nghề khuôn ép: **nhận việc từ 先輩** (任せるよ → 担当させていただきます), **xin phép thao tác 玉掛け** khuôn 500kg với đàn anh Sakurai, **xác nhận thông số máy ép** (樹脂ABS・温度240℃・射出速度50%・保圧60MPa・金型温度40℃), **hỏi lại lễ phép khi chưa hiểu** từ chuyên ngành mới (保圧というのは?・ヒケというのは?), **báo cáo lỗi sản phẩm** bằng cấu trúc 報連相 (ご報告します・ヒケが出ました), nghe Suzuki **phân tích 3 nguyên nhân và bàn 対策** (保圧不足・冷却時間が短い・厚肉部設計), và cuối cùng **giải thích được vì sao lần 3 đạt** — đó mới là phẩm chất 金型屋. Quan sát Suzuki dạy bằng cách chỉ vào グラフ trên monitor, Thái nhận ra triết lý monozukuri: **đừng xin lỗi, hãy phân tích nguyên nhân**.

> Từ vựng & mẫu câu chương này: 初トライ・任せる・担当する・玉掛け・アイボルト・射出機・樹脂・ABS・ホッパー・射出速度・保圧・冷却時間・金型温度・チラー・ヒケ・バリ・厚肉部・収縮・サイクルスタート・対策・原因分析・報連相・ご報告します・〜というのは?・〜ということですね・申し訳ありません・合格・トライシート

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 初トライ | はつトライ | SƠ | lần thử đầu tiên |
| 任せる | まかせる | NHIỆM | giao phó |
| 試作品 | しさくひん | THÍ TÁC PHẨM | sản phẩm thử |
| 相談 | そうだん | TƯƠNG ĐÀM | bàn bạc, tham vấn |
| 玉掛け | たまかけ | NGỌC QUẢI | móc cẩu |
| 安全係数 | あんぜんけいすう | AN TOÀN HỆ SỐ | hệ số an toàn |
| 締め付け | しめつけ | THIẾT PHÓ | siết chặt |
| 合図 | あいず | HỢP ĐỒ | ra hiệu |
| 射出機 | しゃしゅつき | XẠ XUẤT CƠ | máy ép phun |
| 位置決め | いちぎめ | VỊ TRÍ QUYẾT | định vị |
| 取付け | とりつけ | THỦ PHÓ | lắp đặt |
| 樹脂 | じゅし | THỌ CHI | nhựa |
| 温度 | おんど | ÔN ĐỘ | nhiệt độ |
| 投入 | とうにゅう | ĐẦU NHẬP | đổ vào |
| 射出速度 | しゃしゅつそくど | XẠ XUẤT TỐC ĐỘ | tốc độ phun |
| 保圧 | ほあつ | BẢO ÁP | áp suất giữ |
| 圧力 | あつりょく | ÁP LỰC | áp lực |
| 収縮 | しゅうしゅく | THU SÚC | co rút |
| 金型温度 | かながたおんど | KIM HÌNH ÔN ĐỘ | nhiệt độ khuôn |
| 調整 | ちょうせい | ĐIỀU CHỈNH | điều chỉnh |
| 安全確認 | あんぜんかくにん | AN TOÀN XÁC NHẬN | kiểm tra an toàn |
| 冷却 | れいきゃく | LÃNH KHƯỚC | làm nguội |
| 安定 | あんてい | AN ĐỊNH | ổn định |
| 表面 | ひょうめん | BIỂU DIỆN | bề mặt |
| 分析 | ぶんせき | PHÂN TÍCH | phân tích |
| 不足 | ふそく | BẤT TÚC | thiếu hụt |
| 冷却時間 | れいきゃくじかん | LÃNH KHƯỚC THỜI GIAN | thời gian làm nguội |
| 厚肉部 | あつにくぶ | HẬU NHỤC BỘ | phần dày |
| 対策 | たいさく | ĐỐI SÁCH | giải pháp, đối sách |
| 対応 | たいおう | ĐỐI ỨNG | xử lý, ứng phó |
| 習慣 | しゅうかん | TẬP QUÁN | thói quen |
| 合格品 | ごうかくひん | HỢP CÁCH PHẨM | sản phẩm đạt |
| 完璧 | かんぺき | HOÀN BÍCH | hoàn hảo |
| 判断 | はんだん | PHÁN ĐOÁN | phán đoán |
| 記録 | きろく | KÝ LỤC | ghi chép, ghi lại |
| 記入 | きにゅう | KÝ NHẬP | điền vào |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 金型屋 | かながたや | KIM HÌNH ỐC | thợ khuôn |
| 隙間 | すきま | KHÍCH GIAN | khe hở |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000005, 800000015, NULL, 'markdown_book', 'T5. Xử lý lỗi cong vênh và sửa khuôn (修正対応)', '# Sách kỹ sư khuôn đúc · T5. Xử lý lỗi cong vênh và sửa khuôn (修正対応)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) sang năm thứ hai làm kỹ sư khuôn đúc tại Anjo, Aichi. Học các mẫu hội thoại tiếng Nhật khi xử lý lỗi sản phẩm sau trial: **báo cáo defect cho cấp trên** (反りがあります・〜と思います), **hỏi lại nguyên nhân kỹ thuật** (〜の原因は何ですか・〜というのは?), **xác nhận quy trình sửa khuôn** (取り外し→溶接盛り→再加工), **quan sát đàn anh hàn TIG** (低入熱・ベテラン), **báo kết quả trial lại** (許容内です・合格しました), và nhận lời giao trách nhiệm mới (来年から〜を担当).

---

## Bối cảnh

Tháng 9 năm 2023. Thái đã làm việc tại **株式会社みなみ精密金型** được hơn một năm, vừa qua giai đoạn quan sát sang giai đoạn thực hành. Hôm nay là trial 2 cho một khuôn lớn 800kg — sản phẩm bị **反り (cong vênh)** 1mm. Trưởng phòng Kawakami (課長) và 先輩 Suzuki phải vào cuộc, anh thợ hàn lão luyện Matsumoto được mời tham gia. Chương này tập trung mẫu câu **báo cáo lỗi, hỏi lại nguyên nhân, xác nhận quy trình sửa, quan sát kỹ năng đàn anh và báo kết quả retrial** — bộ ngôn ngữ kỹ sư trẻ phải dùng mỗi khi gặp defect ở hiện trường.

---

## Tình huống 1 — Xưởng射出 · 9:00, brief trial 2 với 先輩 Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はトライ<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>です。<ruby>今回<rt>こんかい</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>は<ruby>大<rt>おお</rt></ruby>きいから<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Thái, hôm nay là lần trial thứ 2. Khuôn lần này to nên cẩn thận nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>重<rt>おも</rt></ruby>さはどのぐらいですか？<br>*(Vâng, em rõ ạ. Trọng lượng tầm bao nhiêu ạ?)* |
| Suzuki | <ruby>800<rt>はっぴゃく</rt></ruby>キロです。<ruby>玉掛<rt>たまか</rt></ruby>けは<ruby>慎重<rt>しんちょう</rt></ruby>にお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(800 kg. Buộc dây cẩu phải làm cẩn trọng.)* |
| Thái | <ruby>800<rt>はっぴゃく</rt></ruby>キロですね。すみません、「<ruby>玉掛<rt>たまか</rt></ruby>け」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(800 kg ạ. Xin lỗi, "tamakake" nghĩa là gì ạ?)* |
| Suzuki | クレーンで<ruby>吊<rt>つ</rt></ruby>るときに、ワイヤーを<ruby>金型<rt>かながた</rt></ruby>に<ruby>掛<rt>か</rt></ruby>ける<ruby>作業<rt>さぎょう</rt></ruby>のことです。<ruby>資格<rt>しかく</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>作業<rt>さぎょう</rt></ruby>ですよ。<br>*(Là thao tác móc dây cáp vào khuôn khi cẩu lên. Là việc cần có chứng chỉ đấy.)* |
| Thái | なるほど、ワイヤーを<ruby>掛<rt>か</rt></ruby>ける<ruby>作業<rt>さぎょう</rt></ruby>ということですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra vậy, là việc móc dây cáp ạ. Em hiểu rồi.)* |
| Suzuki | <ruby>金型<rt>かながた</rt></ruby>を<ruby>射出機<rt>しゃしゅつき</rt></ruby>にマウントして、<ruby>条件<rt>じょうけん</rt></ruby><ruby>出<rt>だ</rt></ruby>しを<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Lắp khuôn lên máy ép phun rồi bắt đầu dò điều kiện nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin phép ạ.)* |

---

## Tình huống 2 — Cạnh máy ép phun · 10:30, phát hiện defect và báo 先輩

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）スズキさん、<ruby>最初<rt>さいしょ</rt></ruby>のショットができました。<br>*(Lấy sản phẩm ra. Anh Suzuki, em vừa bắn xong shot đầu tiên ạ.)* |
| Suzuki | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）...あ、<ruby>反<rt>そ</rt></ruby>りがありますね。<br>*(Kiểm tra sản phẩm. À, bị cong vênh rồi nhỉ.)* |
| Thái | <ruby>反<rt>そ</rt></ruby>り...というのは？<br>*(Sori... nghĩa là gì ạ?)* |
| Suzuki | <ruby>製品<rt>せいひん</rt></ruby>が<ruby>歪<rt>ひず</rt></ruby>んでいることです。まっすぐではなく、<ruby>曲<rt>ま</rt></ruby>がってしまっています。<br>*(Là sản phẩm bị méo. Không thẳng mà bị cong rồi.)* |
| Thái | （<ruby>定規<rt>じょうぎ</rt></ruby>を<ruby>当<rt>あ</rt></ruby>てる）<ruby>本当<rt>ほんとう</rt></ruby>ですね...<ruby>1<rt>いち</rt></ruby>ミリぐらい<ruby>変形<rt>へんけい</rt></ruby>しています。<br>*(Áp thước lên. Đúng thật ạ... Biến dạng tầm 1mm.)* |
| Suzuki | <ruby>1<rt>いち</rt></ruby>ミリは<ruby>許容<rt>きょよう</rt></ruby><ruby>外<rt>がい</rt></ruby>です。NGですね。<br>*(1mm là ngoài dung sai. Là NG rồi.)* |
| Thái | （<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる）すみません、<ruby>私<rt>わたし</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りが<ruby>悪<rt>わる</rt></ruby>かったでしょうか？<br>*(Mặt biến sắc. Em xin lỗi, có phải do em chuẩn bị không tốt không ạ?)* |
| Suzuki | いや、<ruby>段取<rt>だんど</rt></ruby>りの<ruby>問題<rt>もんだい</rt></ruby>ではないと<ruby>思<rt>おも</rt></ruby>います。<ruby>金型<rt>かながた</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>かもしれません。カワカミ<ruby>課長<rt>かちょう</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>びましょう。<br>*(Không, tôi nghĩ không phải lỗi chuẩn bị. Có thể là nguyên nhân bên khuôn. Gọi trưởng phòng Kawakami nhé.)* |
| Thái | はい、すぐ<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, em liên lạc ngay ạ.)* |

---

## Tình huống 3 — Cạnh máy ép phun · 11:00, hỏi lại Kawakami nguyên nhân kỹ thuật

| Vai | Lời thoại |
|---|---|
| Thái | カワカミ<ruby>課長<rt>かちょう</rt></ruby>、お<ruby>忙<rt>いそが</rt></ruby>しいところすみません。<ruby>製品<rt>せいひん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>していただけますか？<br>*(Trưởng phòng Kawakami, xin lỗi đã làm phiền lúc anh bận. Anh kiểm tra giúp sản phẩm được không ạ?)* |
| Kawakami | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）...<ruby>反<rt>そ</rt></ruby>りは<ruby>明<rt>あき</rt></ruby>らかだね。<ruby>1<rt>いち</rt></ruby>ミリは<ruby>大<rt>おお</rt></ruby>きいよ。<br>*(Kiểm tra sản phẩm. Cong vênh rõ ràng. 1mm là lớn đấy.)* |
| Thái | <ruby>反<rt>そ</rt></ruby>りの<ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>ですか？<br>*(Nguyên nhân cong vênh là gì ạ? Là do điều kiện ép phun ạ?)* |
| Kawakami | いいえ、<ruby>条件<rt>じょうけん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>ではありません。<ruby>冷却<rt>れいきゃく</rt></ruby>むらだと<ruby>思<rt>おも</rt></ruby>います。<br>*(Không, không phải lỗi điều kiện. Tôi nghĩ là do làm nguội không đều.)* |
| Thái | <ruby>冷却<rt>れいきゃく</rt></ruby>むら...というのは、<ruby>冷<rt>ひ</rt></ruby>える<ruby>速度<rt>そくど</rt></ruby>が<ruby>場所<rt>ばしょ</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うということですか？<br>*(Reikyaku-mura... nghĩa là tốc độ làm nguội khác nhau ở các vị trí phải không ạ?)* |
| Kawakami | そうです。<ruby>金型<rt>かながた</rt></ruby>の<ruby>中<rt>なか</rt></ruby>の<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>が<ruby>不均一<rt>ふきんいつ</rt></ruby>だと、<ruby>製品<rt>せいひん</rt></ruby>が<ruby>歪<rt>ひず</rt></ruby>みます。<br>*(Đúng vậy. Đường nước làm nguội trong khuôn không đều thì sản phẩm sẽ méo.)* |
| Thái | なるほど。つまり、<ruby>金型<rt>かながた</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>修正<rt>しゅうせい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ということですね。<br>*(Ra vậy. Tức là cần phải sửa lại bên phía khuôn ạ.)* |
| Kawakami | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>水路<rt>すいろ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>があります。<br>*(Đúng như vậy. Cần phải thêm đường nước.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。メモしておきます。<br>*(Em rõ ạ. Em ghi lại.)* |

---

## Tình huống 4 — Phòng họp xưởng · 11:30, xác nhận quy trình sửa khuôn 3 bước

| Vai | Lời thoại |
|---|---|
| Kawakami | では、<ruby>修正<rt>しゅうせい</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>3<rt>みっ</rt></ruby>つのステップです。<br>*(Vậy tôi giải thích quy trình sửa. Có 3 bước.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Kawakami | まず、<ruby>金型<rt>かながた</rt></ruby>を<ruby>射出機<rt>しゃしゅつき</rt></ruby>から<ruby>取<rt>と</rt></ruby>り<ruby>外<rt>はず</rt></ruby>します。<ruby>次<rt>つぎ</rt></ruby>に<ruby>溶接<rt>ようせつ</rt></ruby>で<ruby>水路<rt>すいろ</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>を<ruby>盛<rt>も</rt></ruby>り<ruby>足<rt>た</rt></ruby>します。<ruby>最後<rt>さいご</rt></ruby>にマシニングセンターで<ruby>再加工<rt>さいかこう</rt></ruby>します。<br>*(Đầu tiên, tháo khuôn ra khỏi máy ép. Tiếp theo dùng hàn để đắp thêm chỗ làm đường nước. Cuối cùng gia công lại bằng máy phay CNC.)* |
| Thái | <ruby>取<rt>と</rt></ruby>り<ruby>外<rt>はず</rt></ruby>し→<ruby>溶接<rt>ようせつ</rt></ruby><ruby>盛<rt>も</rt></ruby>り→<ruby>再加工<rt>さいかこう</rt></ruby>、ということですね。<br>*(Tháo ra → đắp hàn → gia công lại, đúng không ạ?)* |
| Kawakami | はい、その<ruby>順番<rt>じゅんばん</rt></ruby>です。<br>*(Đúng, theo thứ tự đó.)* |
| Thái | <ruby>期間<rt>きかん</rt></ruby>はどのぐらいかかりますか？<br>*(Thời gian mất khoảng bao lâu ạ?)* |
| Suzuki | <ruby>溶接<rt>ようせつ</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>再加工<rt>さいかこう</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>ぐらいですね。<br>*(Hàn 1 ngày, gia công lại 2 ngày, tổng cộng khoảng 3 ngày.)* |
| Thái | <ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>溶接<rt>ようせつ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>しますか？<br>*(3 ngày ạ. Em rõ rồi. Ai phụ trách hàn ạ?)* |
| Suzuki | <ruby>溶接<rt>ようせつ</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>はマツモトさんです。ベテランの<ruby>溶接工<rt>ようせつこう</rt></ruby>ですよ。<br>*(Phụ trách hàn là anh Matsumoto. Là thợ hàn lão luyện đấy.)* |
| Thái | では、<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Vậy cho em xin được học hỏi ạ.)* |

---

## Tình huống 5 — Khu vực hàn · ngày 2, 9:00, quan sát Matsumoto hàn TIG (đàn anh)

| Vai | Lời thoại |
|---|---|
| Thái | マツモトさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>見学<rt>けんがく</rt></ruby>させていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Matsumoto, chào buổi sáng. Hôm nay em xin được học việc. Mong anh chỉ bảo ạ.)* |
| Matsumoto | おう、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>金型<rt>かながた</rt></ruby>の<ruby>溶接<rt>ようせつ</rt></ruby>を<ruby>見<rt>み</rt></ruby>るのは<ruby>初<rt>はじ</rt></ruby>めて？<br>*(Ờ, Thái. Lần đầu xem hàn khuôn à?)* |
| Thái | はい、<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>今日<rt>きょう</rt></ruby>はどんな<ruby>溶接<rt>ようせつ</rt></ruby>をされますか？<br>*(Vâng, lần đầu ạ. Hôm nay anh hàn kiểu gì ạ?)* |
| Matsumoto | TIG<ruby>溶接<rt>ようせつ</rt></ruby>で、<ruby>低入熱<rt>ていにゅうねつ</rt></ruby>でやります。<br>*(Hàn TIG, với chế độ nhiệt nhập thấp.)* |
| Thái | すみません、「<ruby>低入熱<rt>ていにゅうねつ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "tei-nyuunetsu" nghĩa là gì ạ?)* |
| Matsumoto | <ruby>溶接<rt>ようせつ</rt></ruby>のときに<ruby>金型<rt>かながた</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>熱<rt>ねつ</rt></ruby>を<ruby>少<rt>すく</rt></ruby>なくすることです。<ruby>熱<rt>ねつ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いと<ruby>金型<rt>かながた</rt></ruby>が<ruby>歪<rt>ひず</rt></ruby>むからね。<br>*(Là giảm lượng nhiệt đi vào khuôn khi hàn. Vì nhiệt nhiều thì khuôn sẽ bị méo.)* |
| Thái | なるほど、<ruby>歪<rt>ひず</rt></ruby>みを<ruby>避<rt>さ</rt></ruby>けるためですね。<br>*(Ra vậy, là để tránh bị méo phải không ạ?)* |
| Matsumoto | そうそう。<ruby>金型<rt>かながた</rt></ruby>の<ruby>溶接<rt>ようせつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>難<rt>むずか</rt></ruby>しいよ。<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>がないとできない。<br>*(Đúng đúng. Hàn khuôn khó thật đấy. Không có 10 năm kinh nghiệm là không làm được.)* |
| Thái | <ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby>...<ruby>凄<rt>すご</rt></ruby>いですね。<ruby>溶接<rt>ようせつ</rt></ruby>のスピードはどうしますか？<br>*(10 năm... Kinh khủng thật. Tốc độ hàn thì sao ạ?)* |
| Matsumoto | ゆっくり、<ruby>細<rt>こま</rt></ruby>かく。<ruby>急<rt>いそ</rt></ruby>ぐと<ruby>失敗<rt>しっぱい</rt></ruby>する。<ruby>見<rt>み</rt></ruby>てて。（トーチを<ruby>動<rt>うご</rt></ruby>かす）<br>*(Chậm, tỉ mỉ. Vội là hỏng. Nhìn đi này. Di chuyển mỏ hàn.)* |
| Thái | （<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>観察<rt>かんさつ</rt></ruby>する）はい、<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Quan sát chăm chú. Vâng, em học được nhiều ạ.)* |

---

## Tình huống 6 — MC gia công · ngày 4, 14:00, gia công lại đường nước với Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>溶接<rt>ようせつ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったので、これからマシニングセンターで<ruby>再加工<rt>さいかこう</rt></ruby>します。<br>*(Thái, hàn xong rồi nên giờ chúng ta gia công lại bằng máy phay CNC.)* |
| Thái | はい。<ruby>水路<rt>すいろ</rt></ruby>はいくつ<ruby>追加<rt>ついか</rt></ruby>しますか？<br>*(Vâng. Thêm mấy đường nước ạ?)* |
| Suzuki | <ruby>2<rt>ふた</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>します。これで<ruby>冷却<rt>れいきゃく</rt></ruby>が<ruby>均一<rt>きんいつ</rt></ruby>になるはずです。<br>*(Thêm 2 đường. Như vậy làm nguội sẽ đều hơn.)* |
| Thái | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。（<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>位置<rt>いち</rt></ruby>はここと、ここですね。<br>*(Cho em xác nhận bản vẽ. Nhìn bản vẽ. Vị trí ở đây và ở đây phải không ạ?)* |
| Suzuki | そうです。プログラムは<ruby>私<rt>わたし</rt></ruby>が<ruby>作<rt>つく</rt></ruby>りましたから、タイ<ruby>君<rt>くん</rt></ruby>がオペレーションをやってください。<br>*(Đúng. Chương trình tôi đã viết rồi, Thái làm phần vận hành nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。（<ruby>機械<rt>きかい</rt></ruby>を<ruby>操作<rt>そうさ</rt></ruby>する）<ruby>原点<rt>げんてん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、<ruby>工具<rt>こうぐ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、スタートします。<br>*(Vâng, em xin phép ạ. Vận hành máy. Xác nhận điểm gốc, xác nhận dao, bắt đầu.)* |
| Suzuki | いいですね。<ruby>切削<rt>せっさく</rt></ruby><ruby>速度<rt>そくど</rt></ruby>は<ruby>遅<rt>おそ</rt></ruby>めで。<ruby>金型<rt>かながた</rt></ruby><ruby>鋼<rt>こう</rt></ruby>は<ruby>硬<rt>かた</rt></ruby>いから。<br>*(Tốt. Tốc độ cắt cho chậm. Thép khuôn cứng đấy.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>送<rt>おく</rt></ruby>り<ruby>速度<rt>そくど</rt></ruby>を<ruby>50<rt>ごじゅう</rt></ruby>パーセントに<ruby>下<rt>さ</rt></ruby>げます。<br>*(Em rõ ạ. Em giảm tốc độ ăn dao xuống 50%.)* |
| Suzuki | （<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>後<rt>ご</rt></ruby>）よし、<ruby>加工<rt>かこう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>寸法<rt>すんぽう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>しよう。<br>*(1 tiếng sau. Được rồi, gia công xong. Đo kích thước thôi.)* |
| Thái | はい、ノギスで<ruby>測<rt>はか</rt></ruby>ります。<br>*(Vâng, em đo bằng thước cặp ạ.)* |

---

## Tình huống 7 — Cạnh máy ép phun · ngày 4, 16:00, trial 3 và báo cáo kết quả

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>金型<rt>かながた</rt></ruby>をマウントし<ruby>直<rt>なお</rt></ruby>しました。トライ<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>、いきましょう。<br>*(Đã lắp lại khuôn. Đi trial lần 3 nào.)* |
| Thái | はい！（ショットを<ruby>打<rt>う</rt></ruby>つ）<br>*(Vâng! Bắn shot.)* |
| Suzuki | <ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>待<rt>ま</rt></ruby>ってから<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>してください。<br>*(Đợi 5 phút rồi lấy ra.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）...<ruby>取<rt>と</rt></ruby>れました。<br>*(Lấy sản phẩm ra. Lấy được rồi ạ.)* |
| Suzuki | <ruby>反<rt>そ</rt></ruby>りを<ruby>測<rt>はか</rt></ruby>ってみて。<br>*(Đo độ cong thử xem.)* |
| Thái | （<ruby>定規<rt>じょうぎ</rt></ruby>とダイヤルゲージで<ruby>測<rt>はか</rt></ruby>る）...<ruby>反<rt>そ</rt></ruby>りは<ruby>0.1<rt>れいてんいち</rt></ruby>ミリです！<br>*(Đo bằng thước và đồng hồ so. Độ cong 0,1mm ạ!)* |
| Suzuki | <ruby>許容<rt>きょよう</rt></ruby><ruby>内<rt>ない</rt></ruby>は<ruby>0.3<rt>れいてんさん</rt></ruby>ミリだから、<ruby>余裕<rt>よゆう</rt></ruby>でクリアですね。<br>*(Dung sai cho phép là 0,3mm, vậy là vượt qua thoải mái.)* |
| Thái | <ruby>合格<rt>ごうかく</rt></ruby>ということですね！<br>*(Tức là đạt rồi phải không ạ!)* |
| Suzuki | はい、<ruby>合格<rt>ごうかく</rt></ruby>です。カワカミ<ruby>課長<rt>かちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しましょう。<br>*(Vâng, đạt rồi. Báo cáo trưởng phòng Kawakami nhé.)* |
| Thái | はい、すぐ<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, em liên lạc ngay ạ.)* |

---

## Tình huống 8 — Phòng trưởng phòng · 17:00, Kawakami giao trách nhiệm thiết kế đường nước

| Vai | Lời thoại |
|---|---|
| Thái | カワカミ<ruby>課長<rt>かちょう</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。トライ<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Trưởng phòng Kawakami, em xin phép. Em xin báo cáo kết quả trial lần 3.)* |
| Kawakami | はい、どうぞ。<br>*(Vâng, mời em.)* |
| Thái | <ruby>反<rt>そ</rt></ruby>りは<ruby>0.1<rt>れいてんいち</rt></ruby>ミリで、<ruby>許容<rt>きょよう</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まりました。<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Độ cong là 0,1mm, nằm trong dung sai. Đã đạt ạ.)* |
| Kawakami | <ruby>素晴<rt>すば</rt></ruby>らしい。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>修正<rt>しゅうせい</rt></ruby>のプロセス、<ruby>勉強<rt>べんきょう</rt></ruby>になった？<br>*(Tuyệt vời. Thái, học được nhiều từ quy trình sửa khuôn chứ?)* |
| Thái | はい！<ruby>溶接<rt>ようせつ</rt></ruby>と<ruby>再加工<rt>さいかこう</rt></ruby>、そして<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さがよく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng! Em hiểu rõ về hàn, gia công lại, và tầm quan trọng của đường nước làm nguội ạ.)* |
| Kawakami | <ruby>設計<rt>せっけい</rt></ruby>の<ruby>段階<rt>だんかい</rt></ruby>で<ruby>水路<rt>すいろ</rt></ruby>の<ruby>配置<rt>はいち</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しくすれば、こういう<ruby>修正<rt>しゅうせい</rt></ruby>は<ruby>必要<rt>ひつよう</rt></ruby>ありません。<br>*(Nếu ngay từ giai đoạn thiết kế bố trí đường nước cho đúng, thì không cần phải sửa thế này.)* |
| Thái | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vâng, em đã học được nhiều ạ.)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>から<ruby>水路<rt>すいろ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してみませんか？<br>*(Thái, từ sang năm em thử phụ trách thiết kế đường nước nhé?)* |
| Thái | え！？<ruby>私<rt>わたし</rt></ruby>が<ruby>設計<rt>せっけい</rt></ruby>を、ですか？<br>*(Ơ!? Em mà thiết kế ạ?)* |
| Kawakami | はい。<ruby>現場<rt>げんば</rt></ruby>を<ruby>知<rt>し</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>が<ruby>設計<rt>せっけい</rt></ruby>すると、<ruby>失敗<rt>しっぱい</rt></ruby>が<ruby>減<rt>へ</rt></ruby>ります。<ruby>君<rt>きみ</rt></ruby>には<ruby>素質<rt>そしつ</rt></ruby>があると<ruby>思<rt>おも</rt></ruby>います。<br>*(Đúng. Người biết hiện trường mà thiết kế thì sẽ giảm lỗi. Tôi nghĩ em có tố chất.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Em cảm ơn anh. Em sẽ cố gắng. Mong anh chỉ bảo ạ.)* |

---

## Tình huống 9 — Phòng 201 · 22:00, gọi điện cho Mai (cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng chuyên ngành JP qua hội thoại đồng hương.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Alo, anh Thái! Hôm nay sao rồi, em thấy mặt anh tươi mà cũng có vẻ mệt. |
| Thái | (tiếng Việt) Em ơi, hôm nay nhà máy có chuyện. Trial 2 ra sản phẩm bị 反り — cong vênh 1mm, NG luôn. |
| Mai | (tiếng Việt) Trời, anh phải làm lại từ đầu à? |
| Thái | (tiếng Việt) Không phải làm lại sản phẩm, mà phải sửa khuôn. Anh Kawakami trưởng phòng bảo là do 冷却むら — làm nguội không đều. Đường nước trong khuôn bố trí không hợp lý. |
| Mai | (tiếng Việt) Rồi giờ sửa thế nào? |
| Thái | (tiếng Việt) Ba bước: tháo khuôn ra, hàn đắp thêm vật liệu, rồi gia công lại bằng máy CNC để khoan thêm 2 đường nước nữa. Mất 3 ngày. |
| Mai | (tiếng Việt) Có người giúp anh không? |
| Thái | (tiếng Việt) Có chứ. Anh Suzuki đàn anh chỉ. Còn phần hàn thì anh Matsumoto, thợ lão luyện 10 năm kinh nghiệm, hàn TIG với 低入熱 — nhiệt nhập thấp, để khuôn khỏi méo. Anh đứng xem cả buổi, ghi sổ kín cả mấy trang. |
| Mai | (tiếng Việt) Cuối cùng đạt chưa anh? |
| Thái | (tiếng Việt) Đạt rồi! Trial 3 đo được 0.1mm, dung sai cho 0.3mm. Anh Kawakami khen, còn bảo từ sang năm giao anh phụ trách 水路設計 — thiết kế đường nước luôn. |
| Mai | (tiếng Việt) Trời, từ kỹ sư hiện trường lên thiết kế luôn hả? Em mừng cho anh quá! |
| Thái | (tiếng Việt) Anh cũng bất ngờ. Nhưng anh Kawakami nói câu hay lắm: "người biết hiện trường mà thiết kế thì giảm được lỗi". Anh thấy đúng — không xuống xưởng thì sao biết đường nước đặt sai chỗ nào. |
| Mai | (tiếng Việt) Anh nhớ ghi cẩn thận mấy từ chuyên ngành nha. Em đợi anh về. |
| Thái | (tiếng Việt) Ừ. Mai anh phải dậy sớm bàn giao trial cho phòng QC. Em ngủ ngon nhé. |

---

## Đọng lại chương 5

Một tuần làm việc đầy biến cố nhưng cũng là chương dạy Thái bộ ngôn ngữ kỹ sư trẻ phải dùng mỗi khi defect lộ ở hiện trường: **báo defect lên cấp trên** (反りがあります・1ミリ変形しています), **hỏi nguyên nhân kỹ thuật** (反りの原因は何ですか・冷却むらというのは?), **xác nhận quy trình sửa khuôn 3 bước** (取り外し→溶接盛り→再加工), **quan sát đàn anh hàn TIG** (低入熱・歪みを避けるため), **báo kết quả retrial** (許容内に収まりました・合格しました), và **nhận lời được giao trách nhiệm mới** (来年から水路設計を担当). Quan trọng hơn cả từ vựng, Thái thấm câu của Kawakami課長: **"người biết hiện trường mà thiết kế thì sẽ giảm lỗi"** — phẩm chất kỹ sư khuôn đúc không nằm ở bằng cấp mà ở việc dám xuống xưởng quan sát đến tận shot ép cuối cùng.

> Từ vựng & mẫu câu chương này: 反り・歪む・冷却むら・冷却水路・不均一・修正・取り外し・溶接盛り・再加工・TIG溶接・低入熱・玉掛け・許容内・合格・射出機・マシニングセンター・原点・切削速度・送り速度・寸法測定・水路設計・素質・反りがあります・〜の原因は何ですか・〜というのは・〜ということですね・許容内に収まりました・〜を担当してみませんか

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 金型 | かながた | KIM HÌNH | Khuôn (đúc/ép) |
| 重さ | おもさ | TRỌNG | Trọng lượng |
| 資格 | しかく | TƯ CÁCH | Chứng chỉ, tư cách |
| 作業 | さぎょう | TÁC NGHIỆP | Thao tác, công việc |
| 条件 | じょうけん | ĐIỀU KIỆN | Điều kiện |
| 製品 | せいひん | CHẾ PHẨM | Sản phẩm |
| 反り | そり | PHẢN | Cong vênh |
| 歪む | ひずむ | OẠI | Bị méo, biến dạng |
| 変形 | へんけい | BIẾN HÌNH | Biến dạng |
| 許容外 | きょようがい | HỨA DUNG NGOẠI | Ngoài dung sai |
| 課長 | かちょう | KHÓA TRƯỞNG | Trưởng phòng |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 水路 | すいろ | THỦY LỘ | Đường nước |
| 不均一 | ふきんいつ | BẤT QUÂN NHẤT | Không đều |
| 修正 | しゅうせい | TU CHÍNH | Sửa chữa, hiệu chỉnh |
| 追加 | ついか | TRUY GIA | Thêm vào |
| 手順 | てじゅん | THỦ TUẦN | Quy trình, các bước |
| 溶接 | ようせつ | DUNG TIẾP | Hàn |
| 再加工 | さいかこう | TÁI GIA CÔNG | Gia công lại |
| 期間 | きかん | KỲ GIAN | Thời gian, kỳ hạn |
| 合計 | ごうけい | HỢP KẾ | Tổng cộng |
| 溶接工 | ようせつこう | DUNG TIẾP CÔNG | Thợ hàn |
| 見学 | けんがく | KIẾN HỌC | Học việc, tham quan |
| 低入熱 | ていにゅうねつ | ĐÊ NHẬP NHIỆT | Nhiệt nhập thấp |
| 観察 | かんさつ | QUAN SÁT | Quan sát |
| 位置 | いち | VỊ TRÍ | Vị trí |
| 原点 | げんてん | NGUYÊN ĐIỂM | Điểm gốc |
| 切削速度 | せっさくそくど | THIẾT TƯỚC TỐC ĐỘ | Tốc độ cắt |
| 加工完了 | かこうかんりょう | GIA CÔNG HOÀN LIỄU | Hoàn thành gia công |
| 寸法測定 | すんぽうそくてい | THỐN PHÁP TRẮC ĐỊNH | Đo kích thước |
| 許容内 | きょようない | HỨA DUNG NỘI | Trong dung sai |
| 余裕 | よゆう | DƯ DỤ | Dư dả, thoải mái |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 段階 | だんかい | ĐOẠN GIAI | Giai đoạn |
| 配置 | はいち | PHỐI TRÍ | Bố trí |
| 現場 | げんば | HIỆN TRƯỜNG | Hiện trường |
| 素質 | そしつ | TỐ CHẤT | Tố chất |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000006, 800000015, NULL, 'markdown_book', 'T6. Mùa thi kentei mùa xuân và bài học khi đàn anh trượt (春の検定準備)', '# Sách kỹ sư khuôn đúc · T6. Mùa thi kentei mùa xuân và bài học khi đàn anh trượt (春の検定準備)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) sang năm thứ 2 tại Anjo, vừa ôn thi 機械加工 2級 vừa ôn JLPT N3 cuối năm. Học các mẫu hội thoại tiếng Nhật quanh chủ đề thi cử nghề: hỏi thăm cấp trên sau kỳ thi (検定の結果はどうでしたか), nói lời an ủi khi đàn anh trượt (悔しいですね・〜は普通のことです), hỏi lại từ chuyên ngành (合格率・実技・再受験), xác nhận kế hoạch ôn thi cùng cấp trên (〜ということですね), nhờ giúp đỡ tài liệu ôn JLPT bằng tiếng mẹ đẻ với đồng hương, và viết nhật ký rút bài học nghề bằng tiếng Việt.

---

## Bối cảnh

Tháng 10 năm 2023. Thái đã ở Anjo được 1 năm rưỡi, đang là 研修生 năm 2 tại **株式会社みなみ精密金型**. Trình độ tiếng Nhật N4 vững, đang ôn N3 thi tháng 12/2023, song song chuẩn bị thi 技能検定 機械加工 2級 tháng 3/2024. Hôm nay 先輩 Sakurai vừa thi 1級 về và biết kết quả trượt — chương này tập trung các mẫu câu giao tiếp quanh kỳ thi nghề: hỏi kết quả, an ủi người trượt, hỏi lại từ chuyên ngành thi cử, lập kế hoạch ôn cùng đàn anh, và cảnh tiếng Việt với chị Linh đem sách N3.

---

## Tình huống 1 — Cổng nhà máy · 18:00, hỏi thăm 先輩 vừa đi thi về

| Vai | Lời thoại |
|---|---|
| Thái | (thấy Sakurai đi từ bãi xe vào, mặt cúi) サクライさん、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>検定<rt>けんてい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>はどうでしたか？<br>*(Anh Sakurai, anh vất vả rồi. Kết quả kỳ thi thế nào ạ?)* |
| Sakurai | （<ruby>顔<rt>かお</rt></ruby>が<ruby>暗<rt>くら</rt></ruby>い）...タイ<ruby>君<rt>くん</rt></ruby>か。<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>不合格<rt>ふごうかく</rt></ruby>だった。<br>*(Mặt tối. ... Thái à. Cấp 1, anh trượt rồi.)* |
| Thái | え！？ サクライさんが<ruby>不合格<rt>ふごうかく</rt></ruby>...？<br>*(Ơ!? Anh Sakurai mà trượt...?)* |
| Sakurai | <ruby>実技<rt>じつぎ</rt></ruby>が<ruby>55<rt>ごじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>60<rt>ろくじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>だ。<ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>足<rt>た</rt></ruby>りなかった。<br>*(Bài thực hành 55 điểm. Mức đỗ là 60. Thiếu 5 điểm.)* |
| Thái | すみません、「<ruby>実技<rt>じつぎ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "jitsugi" nghĩa là gì ạ?)* |
| Sakurai | <ruby>試験<rt>しけん</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で、<ruby>実際<rt>じっさい</rt></ruby>に<ruby>機械<rt>きかい</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かして<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>部分<rt>ぶぶん</rt></ruby>だ。<ruby>筆記<rt>ひっき</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>別<rt>べつ</rt></ruby>にある。<br>*(Là phần thi mà phải vận hành máy thực sự để gia công chi tiết. Khác với bài thi viết.)* |
| Thái | なるほど、<ruby>機械<rt>きかい</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かす<ruby>実際<rt>じっさい</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>ということですね。<br>*(Em hiểu rồi, là phần thi thực tế vận hành máy đúng không ạ.)* |
| Sakurai | そうだ。<ruby>悔<rt>くや</rt></ruby>しいよ。<br>*(Đúng vậy. Tiếc thật.)* |
| Thái | <ruby>悔<rt>くや</rt></ruby>しいですね...<ruby>何<rt>なん</rt></ruby>と<ruby>言<rt>い</rt></ruby>っていいか<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Tiếc quá ạ... Em không biết nói gì.)* |

---

## Tình huống 2 — Quán nhậu gần nhà máy · 18:30, Suzuki an ủi đàn em (quan sát đàn anh nói lời an ủi)

| Vai | Lời thoại |
|---|---|
| Suzuki | サクライ、お<ruby>疲<rt>つか</rt></ruby>れ。とりあえずビール<ruby>飲<rt>の</rt></ruby>もう。<br>*(Sakurai, vất vả rồi. Trước hết uống bia đã.)* |
| Sakurai | <ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>...すみません、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>落<rt>お</rt></ruby>ちました。<br>*(Đàn anh Suzuki... em xin lỗi, em trượt cấp 1 rồi.)* |
| Suzuki | <ruby>謝<rt>あやま</rt></ruby>るな。<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby>パーセントだ。<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>普通<rt>ふつう</rt></ruby>のことだぞ。<br>*(Đừng xin lỗi. Cấp 1 tỉ lệ đỗ chỉ 30%. Trượt một lần là chuyện thường thôi.)* |
| Thái | （<ruby>横<rt>よこ</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いている）<ruby>合格率<rt>ごうかくりつ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby>パーセントですか...そんなに<ruby>難<rt>むずか</rt></ruby>しいんですね。<br>*(Ngồi cạnh nghe. Tỉ lệ đỗ 30% ạ... Khó đến vậy cơ ạ.)* |
| Suzuki | <ruby>俺<rt>おれ</rt></ruby>もな、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>落<rt>お</rt></ruby>ちてから<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>目<rt>め</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>した。<br>*(Anh đây cũng trượt cấp 1 hai lần, đến lần thứ ba mới đỗ.)* |
| Sakurai | え！？ <ruby>先輩<rt>せんぱい</rt></ruby>もですか！？<br>*(Ơ!? Đàn anh cũng vậy ạ!?)* |
| Suzuki | そう。<ruby>恥<rt>は</rt></ruby>ずかしいことじゃない。<ruby>来年<rt>らいねん</rt></ruby>もう<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>すればいい。<br>*(Đúng vậy. Không có gì đáng xấu hổ. Sang năm thử lại lần nữa là được.)* |
| Sakurai | （<ruby>少<rt>すこ</rt></ruby>し<ruby>笑顔<rt>えがお</rt></ruby>）はい。<ruby>来年<rt>らいねん</rt></ruby>、<ruby>再受験<rt>さいじゅけん</rt></ruby>します。<br>*(Cười nhẹ. Vâng. Sang năm em thi lại.)* |
| Thái | すみません、「<ruby>再受験<rt>さいじゅけん</rt></ruby>」というのは、もう<ruby>一度<rt>いちど</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるということですか？<br>*(Xin lỗi, "saijuken" nghĩa là thi lại một lần nữa đúng không ạ?)* |
| Suzuki | そうだ。「<ruby>再<rt>さい</rt></ruby>」は「もう<ruby>一度<rt>いちど</rt></ruby>」、「<ruby>受験<rt>じゅけん</rt></ruby>」は「<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける」。<ruby>合<rt>あ</rt></ruby>わせて「もう<ruby>一度<rt>いちど</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>ける」だ。<br>*(Đúng. "Sai" là "một lần nữa", "juken" là "thi cử". Ghép lại là "thi lại".)* |
| Thái | ありがとうございます。メモしておきます。<br>*(Em cảm ơn anh. Em ghi lại ạ.)* |

---

## Tình huống 3 — Bãi xe nhà máy · 19:30, Thái chia tay Sakurai và hứa cùng ôn

| Vai | Lời thoại |
|---|---|
| Thái | サクライさん、<ruby>今日<rt>きょう</rt></ruby>はお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Anh Sakurai, hôm nay anh vất vả rồi ạ.)* |
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>もな。<ruby>聞<rt>き</rt></ruby>いてくれてありがとう。<br>*(Em cũng vậy. Cảm ơn em đã lắng nghe.)* |
| Thái | いえいえ。サクライさん、<ruby>来年<rt>らいねん</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>してもいいですか？<br>*(Không có gì ạ. Anh Sakurai, tháng 3 năm sau em thi cấp 2. Em ôn cùng anh được không ạ?)* |
| Sakurai | もちろん。<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>再受験<rt>さいじゅけん</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>するから、ちょうどいい。<br>*(Tất nhiên. Anh cũng ôn thi lại cấp 1, vừa hay luôn.)* |
| Thái | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>何分<rt>なんぷん</rt></ruby>ですか？<br>*(Bài thực hành cấp 2 là bao nhiêu phút ạ?)* |
| Sakurai | <ruby>35<rt>さんじゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>より<ruby>速<rt>はや</rt></ruby>くて、<ruby>形状<rt>けいじょう</rt></ruby>も<ruby>難<rt>むずか</rt></ruby>しくなる。<br>*(35 phút. Nhanh hơn cấp 3, hình dạng chi tiết cũng khó hơn.)* |
| Thái | <ruby>35<rt>さんじゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>形状<rt>けいじょう</rt></ruby>が<ruby>難<rt>むずか</rt></ruby>しい、ということですね。<ruby>過去問<rt>かこもん</rt></ruby>はありますか？<br>*(Tức là 35 phút và hình dạng khó hơn đúng không ạ. Anh có đề năm trước không?)* |
| Sakurai | <ruby>過去<rt>かこ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>ある。<ruby>明日<rt>あした</rt></ruby><ruby>持<rt>も</rt></ruby>って<ruby>来<rt>く</rt></ruby>るよ。<br>*(Có đề 5 năm gần nhất. Mai anh mang đến.)* |
| Thái | はい、ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em cảm ơn anh. Mong anh chỉ giúp em.)* |

---

## Tình huống 4 — Phòng 201 · 21:00, Putra thấy Thái trầm tư

| Vai | Lời thoại |
|---|---|
| Putra | タイ、<ruby>今日<rt>きょう</rt></ruby>は<ruby>暗<rt>くら</rt></ruby>い<ruby>顔<rt>かお</rt></ruby>してるね。どうした？<br>*(Thái, hôm nay mặt buồn nhỉ. Có chuyện gì vậy?)* |
| Thái | サクライさんが<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>で<ruby>不合格<rt>ふごうかく</rt></ruby>だった。<br>*(Anh Sakurai trượt kỳ thi cấp 1.)* |
| Putra | あー...サクライさんでも<ruby>落<rt>お</rt></ruby>ちるのか。<br>*(À... ngay cả anh Sakurai cũng trượt sao.)* |
| Thái | <ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>30<rt>さんじゅう</rt></ruby>パーセントだそうだ。<ruby>鈴木<rt>すずき</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>落<rt>お</rt></ruby>ちてから<ruby>合格<rt>ごうかく</rt></ruby>したらしい。<br>*(Tỉ lệ đỗ 30%. Đàn anh Suzuki cũng trượt 2 lần rồi mới đỗ.)* |
| Putra | そうか。<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>仕方<rt>しかた</rt></ruby>ない。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>続<rt>つづ</rt></ruby>けることだよ。<br>*(Vậy à. Trượt là chuyện không tránh được. Quan trọng là kiên trì.)* |
| Thái | <ruby>続<rt>つづ</rt></ruby>けること、か。<br>*(Kiên trì, nhỉ.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>の<ruby>国<rt>くに</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>うよ。「<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>成功<rt>せいこう</rt></ruby>のもと」。<br>*(Ở nước anh cũng nói y vậy. "Thất bại là mẹ thành công".)* |
| Thái | <ruby>日本<rt>にほん</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>があるよ。「<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>成功<rt>せいこう</rt></ruby>のもと」。<br>*(Ở Nhật cũng có câu y vậy. "Shippai wa seikou no moto".)* |
| Putra | へぇ、<ruby>同<rt>おな</rt></ruby>じだね！<br>*(Ồ, giống nhau nhỉ!)* |

---

## Tình huống 5 — Văn phòng giờ nghỉ trưa · ngày hôm sau 12:30, Sakurai đưa đề và lập kế hoạch ôn

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、これが<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>過去問<rt>かこもん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>だ。<br>*(Thái, đây là đề cấp 2 của 5 năm.)* |
| Thái | （<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）ありがとうございます。<ruby>厚<rt>あつ</rt></ruby>いですね。<br>*(Nhận lấy. Em cảm ơn anh. Dày quá ạ.)* |
| Sakurai | <ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>題<rt>だい</rt></ruby><ruby>解<rt>と</rt></ruby>こう。<ruby>4<rt>よん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>あれば<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>う。<br>*(Mỗi ngày làm một đề. Có 4 tháng là đủ.)* |
| Thái | <ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>題<rt>だい</rt></ruby>、ということですね。<ruby>分<rt>わ</rt></ruby>からない<ruby>所<rt>ところ</rt></ruby>はサクライさんに<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Mỗi ngày một đề, đúng không ạ. Chỗ nào không hiểu em hỏi anh được không ạ?)* |
| Sakurai | もちろん。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてくれ。<ruby>遠慮<rt>えんりょ</rt></ruby>するな。<br>*(Tất nhiên. Có gì không hiểu nhất định phải hỏi. Đừng ngại.)* |
| Thái | はい。サクライさん、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Vâng. Anh Sakurai, em hỏi thêm một câu nữa được không ạ?)* |
| Sakurai | どうぞ。<br>*(Cứ hỏi.)* |
| Thái | <ruby>検定<rt>けんてい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>上<rt>あ</rt></ruby>がりますか？<br>*(Đỗ kỳ thi thì lương có lên không ạ?)* |
| Sakurai | <ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>で<ruby>月<rt>つき</rt></ruby><ruby>5000<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>の<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>がつく。<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>なら<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>だ。<br>*(Đỗ cấp 2 được phụ cấp chứng chỉ 5000 yên một tháng. Cấp 1 là 10 nghìn yên.)* |
| Thái | <ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>...というのは、<ruby>資格<rt>しかく</rt></ruby>を<ruby>持<rt>も</rt></ruby>っている<ruby>人<rt>ひと</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>払<rt>はら</rt></ruby>うお<ruby>金<rt>かね</rt></ruby>ですか？<br>*(Shikaku-teate... là tiền công ty trả cho người có chứng chỉ phải không ạ?)* |
| Sakurai | そうだ。<ruby>毎月<rt>まいつき</rt></ruby>の<ruby>給料<rt>きゅうりょう</rt></ruby>に<ruby>足<rt>た</rt></ruby>される。<br>*(Đúng. Cộng vào lương hàng tháng.)* |
| Thái | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rõ rồi ạ. Em sẽ cố gắng.)* |

---

## Tình huống 6 — Sảnh ký túc · cuối tuần 11/2023, 11:00, chị Linh từ Nagoya tới thăm (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — chị Linh là đồng hương ở Nagoya, đem sách N3 cho Thái và ôn lại từ JP.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Thái ơi, chị đến rồi đây! Tàu Meitetsu nhanh ghê, có 40 phút từ Nagoya. |
| Thái | (tiếng Việt) Chị Linh! Em cảm ơn chị nhiều. Chị mang sách N3 đến phải không ạ? |
| Linh | (tiếng Việt) Ừ, đủ bộ Shin Kanzen Master luôn — văn phạm, từ vựng, đọc hiểu, nghe. Cả cuốn Drill & Drill nữa. |
| Thái | (tiếng Việt) Trời, chị tốt với em quá. N3 em thi tháng 12 này, còn đúng 6 tuần. |
| Linh | (tiếng Việt) 6 tuần là vừa đủ nếu em chịu khó. Mày yếu phần nào nhất? |
| Thái | (tiếng Việt) Phần nghe chị ạ. Từ vựng với ngữ pháp em ôn được, nhưng nghe NHK nói nhanh là em theo không kịp. |
| Linh | (tiếng Việt) Vậy nghe **NHK News Web Easy** đi, bản tin chậm có furigana, ngày một bài. Nghe xong tự tóm lại bằng tiếng Nhật. |
| Thái | (tiếng Việt) Vâng, em sẽ tập theo. Mà chị này, em cũng đang ôn 機能検定 — kỳ thi nghề — cấp 2 vào tháng 3 sang năm. |
| Linh | (tiếng Việt) 技能検定 chứ. Hai cái cùng một lúc luôn? |
| Thái | (tiếng Việt) Vâng, hôm qua anh 先輩 Sakurai trượt cấp 1, em bị thấm. Anh ấy bảo tỉ lệ đỗ cấp 1 có 30% thôi. Đỗ cấp 2 thì có 資格手当 — phụ cấp chứng chỉ — 5000 yên một tháng. |
| Linh | (tiếng Việt) Tốt mà em. Cứ ôn N3 trước, tháng 12 thi xong rồi dồn cho 検定 tháng 3. Đừng học song song mệt. |
| Thái | (tiếng Việt) Vâng, em nghe chị. Chị ở lại ăn trưa nhé, em với anh Putra nấu phở. |
| Linh | (tiếng Việt) Ừ! Phở Anjo, chị tò mò đây. |

---

## Tình huống 7 — Phòng 201 · 22:00, Thái viết nhật ký bằng tiếng Việt (cảnh tiếng Việt — đọng lại bài học)

> Cảnh tiếng Việt — Thái viết nhật ký, ôn lại từ vựng JP đã học trong ngày.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhật ký) 25/10/2023. Hôm nay anh Sakurai báo trượt cấp 1 技能検定. Mặt anh tối, mình không biết nói gì. |
| Thái | (tiếng Việt) Bài học 1: hỏi thăm sau kỳ thi bằng "検定の結果はどうでしたか" — câu này mình dùng tự nhiên, không vấp. |
| Thái | (tiếng Việt) Bài học 2: an ủi người Nhật không cần lời hoa mỹ. Chỉ "悔しいですね" + im lặng nghe là đủ. Đàn anh Suzuki còn nói "1回の失敗は普通のことです" — câu này cứu cả không khí. |
| Thái | (tiếng Việt) Bài học 3: anh Suzuki — bậc thầy của xưởng — cũng từng trượt cấp 1 hai lần. Bậc thầy còn vậy, mình mới năm 2 thì có gì phải sợ. |
| Thái | (tiếng Việt) Bài học 4: từ mới hôm nay — 不合格, 合格率, 実技, 再受験, 過去問, 形状, 資格手当. Bảy từ. Ghi vào Anki. |
| Thái | (tiếng Việt) Kế hoạch: tháng 12 thi N3, tháng 3/2024 thi 技能検定 2級. Chị Linh dặn không ôn song song. Mình nghe chị. |
| Thái | (tiếng Việt) Đêm khuya. Putra đã ngủ. Tắt đèn thôi. |

---

## Đọng lại chương 6

Một ngày thấy 先輩 trượt thi nghề lại thành một ngày Thái học được nhiều mẫu câu giao tiếp khó hơn cả lý thuyết: **hỏi thăm kết quả thi** (検定の結果はどうでしたか), **bày tỏ tiếc nuối thay người trượt** (悔しいですね・何と言っていいか分かりません), **an ủi và chuẩn hoá thất bại** (1回の失敗は普通のことです・恥ずかしいことじゃない), **rủ ôn cùng đàn anh** (一緒に準備してもいいですか), và một loạt từ chuyên ngành thi cử: **実技・合格率・再受験・過去問・形状・資格手当**. Quan sát đàn anh **Suzuki** nói chuyện với Sakurai, Thái thấm cách người Nhật chuẩn hoá thất bại — không xin lỗi quá lời, không an ủi sáo rỗng, chỉ đưa số liệu (30% đỗ) và kinh nghiệm thật (2 lần trượt) để người trượt thấy mình bình thường. Bài học nghề: con đường thợ lành nghề không thẳng — ngay cả bậc thầy cũng từng trượt — quan trọng là **続けること** (kiên trì).

> Từ vựng & mẫu câu chương này: 検定・1級・2級・不合格・合格・合格率・実技・筆記試験・再受験・過去問・形状・資格手当・準備・挑戦・続けること・失敗は成功のもと・悔しい・恥ずかしい・〜というのは・〜ということですね・検定の結果はどうでしたか・1回の失敗は普通のことです・一緒に準備してもいいですか

## Bí quyết chương

- **Sakurai 1級 fail** → chuỗi chuẩn bị: sang T7/T8 Sakurai sẽ tái đấu cấp 1.
- **Suzuki "2 lần trượt rồi mới đỗ"** → motif "bậc thầy cũng từng trượt", kết quả khi Thái trượt 2級 lần đầu (nếu có) ở T7.
- **資格手当 5000円/月**: hé lộ động lực tài chính, kết quả khi Thái nhận lương sau khi đỗ.
- **Chị Linh – Nagoya – NHK News Web Easy**: motif "đồng hương cấp trên" sẽ lặp ở các sách 16-18.

> *"10/2023. Sakurai trượt 1級. Suzuki cũng từng. Career không phải đường thẳng."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 検定 | けんてい | KIỂM ĐỊNH | Kỳ thi sát hạch, chứng nhận |
| 不合格 | ふごうかく | BẤT HỢP CÁCH | Trượt |
| 級 | きゅう | CẤP | Cấp (1級, 2級...) |
| 実技 | じつぎ | THỰC KỸ | Bài thi thực hành |
| 試験 | しけん | THÍ NGHIỆM | Kỳ thi |
| 機械 | きかい | CƠ GIỚI | Máy móc |
| 部品 | ぶひん | BỘ PHẨM | Chi tiết, linh kiện |
| 筆記試験 | ひっきしけん | BÚT KÝ THÍ NGHIỆM | Bài thi viết |
| 悔しい | くやしい | HỐI | Tiếc nuối, cay cú |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | Tỉ lệ đỗ |
| 挑戦 | ちょうせん | KHIÊU CHIẾN | Thử thách, thử lại |
| 再受験 | さいじゅけん | TÁI THỤ NGHIỆM | Thi lại |
| 受験 | じゅけん | THỤ NGHIỆM | Dự thi |
| 恥ずかしい | はずかしい | SỈ | Xấu hổ |
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 過去問 | かこもん | QUÁ KHỨ VẤN | Đề các năm trước |
| 給料 | きゅうりょう | CẤP LIỆU | Tiền lương |
| 資格手当 | しかくてあて | TƯ CÁCH THỦ ĐƯƠNG | Phụ cấp chứng chỉ |
| 会社 | かいしゃ | HỘI XÃ | Công ty |
| 毎月 | まいつき | MỖI NGUYỆT | Mỗi tháng |
| 仕方ない | しかたない | SĨ PHƯƠNG | Không thể tránh |
| 成功 | せいこう | THÀNH CÔNG | Thành công |
| 暗い | くらい | ÁM | Tối, u ám |
| 先輩 | せんぱい | TIÊN BỐI | Đàn anh |
| 手当 | てあて | THỦ ĐƯƠNG | Phụ cấp |
| 続ける | つづける | TỤC | Tiếp tục, kiên trì |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000007, 800000015, NULL, 'markdown_book', 'T7. Sáu tuần ôn dồn N3 cùng chị tutor (N3集中)', '# Sách kỹ sư khuôn đúc · T7. Sáu tuần ôn dồn N3 cùng chị tutor (N3集中)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) năm thứ hai ở Aichi, còn 6 tuần là thi N3. Học các mẫu hội thoại tiếng Nhật quanh việc ôn thi cấp tốc: hỏi nghĩa ngữ pháp N3 (〜たびに・〜というのは), xin lời khuyên luyện nghe với chị tutor, lập kế hoạch ôn 6 tuần, xin nghỉ phép có lương (有給) với 工場長 cho ngày thi, báo cáo điểm đề thử qua LINE, và động viên đồng phòng cùng học JLPT.

---

## Bối cảnh

Tháng 11 năm 2023. Thái đang làm năm thứ hai ở **株式会社みなみ精密金型** tại Anjo, Aichi. Còn đúng 6 tuần là kỳ thi N3 đầu tháng 12. Linh — chị tutor người Việt bên Tokyo, đã đỗ N1 — nhận kèm online qua LINE mỗi sáng chủ nhật. Chương này tập trung các mẫu câu giao tiếp quanh việc ôn thi cấp tốc: hỏi nghĩa từ — ngữ pháp N3, nhận kế hoạch ôn 6 tuần, xin 有給 ngày thi với 工場長, và đối thoại tiếng Nhật ngắn động viên 同室 Putra cùng học.

---

## Tình huống 1 — Phòng 201 · Chủ nhật 11:00, buổi tutor đầu qua LINE video (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — Linh chị tutor ở Tokyo, giảng giải ngữ pháp N3 đầu tiên.

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt, video call qua LINE) Thái ơi, nghe rõ chị không? Sẵn sàng buổi đầu chưa? |
| Thái | (tiếng Việt) Vâng chị, em nghe rõ ạ. Em mở sách Sou-matome N3 rồi. |
| Linh | (tiếng Việt) Tốt. Mỗi chủ nhật mình hai tiếng nhé, từ 11h đến 13h. Em chuẩn bị sẵn câu hỏi từ trước, đừng vào buổi mới nghĩ. |
| Thái | (tiếng Việt) Em vướng nhất ngữ pháp 〜たびに ạ. Đọc sách thấy nó giống 〜ごとに nhưng chưa phân biệt được. |
| Linh | (tiếng Việt) 〜たびに nghĩa là "mỗi lần / cứ mỗi khi", đi với danh từ hoặc động từ thể từ điển. Ví dụ: 試験のたびに緊張する — cứ mỗi lần thi là hồi hộp. Khác 〜ごとに ở chỗ 〜たびに mang sắc thái cảm xúc lặp lại; 〜ごとに thiên về chu kỳ máy móc. |
| Thái | (tiếng Việt) À, em hiểu rồi. Vậy "彼に会うたびに元気になる" được không chị? |
| Linh | (tiếng Việt) Chuẩn. Em chia một quyển sổ riêng cho ngữ pháp N3, mỗi mẫu 1 trang, ghi nghĩa + 2 ví dụ + 1 câu em tự đặt. Mỗi tuần ôn lại sổ đó vào tối thứ bảy. |
| Thái | (tiếng Việt) Vâng ạ. Em chuẩn bị sổ ngay tối nay. |

---

## Tình huống 2 — Phòng 201 · Chủ nhật 12:30, chị tutor dạy chiến lược luyện nghe N3 (cảnh tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Bây giờ sang phần nghe — phần em yếu nhất đúng không? |
| Thái | (tiếng Việt) Vâng, đề thử em chỉ đúng 12/35 câu nghe. Sợ nhất phần 即時応答 — sokuji-outou, nghe câu hỏi rồi chọn câu trả lời ngay. |
| Linh | (tiếng Việt) Phần nghe N3 thi 40 phút, 35 câu, chia 5 dạng. 即時応答 chiếm 9 câu, đúng là khó vì không có thời gian suy nghĩ. Nhưng có quy luật cả thôi. |
| Thái | (tiếng Việt) Quy luật gì hả chị? |
| Linh | (tiếng Việt) Một, để ý vế đầu câu hỏi — nếu là 〜てくれない? thì đáp là いいよ / ごめん, không bao giờ là そうですね. Hai, đáp án "そうですか" gần như luôn sai bẫy. Ba, nghe được giọng người trẻ với người lớn — kính ngữ chỉ chọn khi người nói dùng kính ngữ. |
| Thái | (tiếng Việt) À hay! Em ghi lại. |
| Linh | (tiếng Việt) Mỗi ngày em nghe NHK 7時のニュース bản easy (NHK News Web Easy) 15 phút. Không cần hiểu hết, bắt từ khoá là chính. Mỗi tuần luyện thêm 30 câu 即時応答 từ sách Shin Kanzen N3 nghe. Sáu tuần sau là phản xạ ra ngay. |
| Thái | (tiếng Việt) Vâng em làm theo ạ. |

---

## Tình huống 3 — Phòng 201 · Chủ nhật 14:00, lập schedule 6 tuần ôn N3 (cảnh tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | (tiếng Việt) Bây giờ chị đọc, em ghi vào sổ kế hoạch 6 tuần. Đọc to lại từng dòng cho chị nghe. |
| Thái | (tiếng Việt, ghi) Tuần 1-2: củng cố từ vựng N3 — mỗi ngày 30 từ + ngữ pháp 5 mẫu. |
| Linh | (tiếng Việt) Đúng. Tiếp. |
| Thái | (tiếng Việt) Tuần 3-4: đọc hiểu — 20-30 bài dokkai, mỗi bài giới hạn 4 phút. |
| Linh | (tiếng Việt) Quan trọng đấy: bấm đồng hồ. Lúc thi không có thời gian đọc lại. |
| Thái | (tiếng Việt) Tuần 5: nghe tập trung cao độ — mỗi ngày 1 tiếng, 30 câu 即時応答 + shadowing 30 phút. |
| Linh | (tiếng Việt) Shadowing là nghe đến đâu nhại theo đến đó, không nhìn script. Cực kỳ hiệu quả cho phần nghe lẫn nói. |
| Thái | (tiếng Việt) Tuần 6: làm 2 đề thi thử full, nghỉ trước thi 1 ngày. |
| Linh | (tiếng Việt) Tốt. Đêm trước thi nhớ ngủ trước 23h, không học gì mới, chỉ xem lại sổ ngữ pháp. Sáng thi ăn sáng nhẹ, mang chocolate cho giờ giải lao. |
| Thái | (tiếng Việt) Vâng ạ. Em chụp ảnh sổ gửi chị xem sau. |

---

## Tình huống 4 — Phòng 201 · Cuối tuần 3 tháng 11, học đọc hiểu thì Putra hỏi (chuyển sang JP)

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nội tâm khi đọc bài dokkai) "新しい<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>導入<rt>どうにゅう</rt></ruby>する"... "donyuu suru" — đưa vào, áp dụng. Từ này ở công ty mình nghe suốt khi anh Tanaka nói về máy CNC mới. |
| Putra | （ngó vào sách）タイ、それ、N3の<ruby>勉強<rt>べんきょう</rt></ruby>？<br>*(Thái, cậu đang học N3 đấy hả?)* |
| Thái | はい。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>頭<rt>あたま</rt></ruby>に<ruby>試験<rt>しけん</rt></ruby>があります。<ruby>読解<rt>どっかい</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>です。<br>*(Vâng. Đầu tháng sau thi rồi. Em đang luyện phần đọc hiểu.)* |
| Putra | すごいね。<ruby>俺<rt>おれ</rt></ruby>もN4を<ruby>勉強<rt>べんきょう</rt></ruby>している。<ruby>来年<rt>らいねん</rt></ruby><ruby>受<rt>う</rt></ruby>けたい。<br>*(Giỏi đấy. Tớ cũng đang học N4. Năm sau muốn thi.)* |
| Thái | プトラさん、「<ruby>導入<rt>どうにゅう</rt></ruby>」というのは<ruby>知<rt>し</rt></ruby>っていますか？<br>*(Anh Putra biết "dounyuu" nghĩa là gì không?)* |
| Putra | <ruby>新<rt>あたら</rt></ruby>しいものを<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れること、でしょう？うちの<ruby>工場<rt>こうじょう</rt></ruby>でも<ruby>先月<rt>せんげつ</rt></ruby>CNCを<ruby>導入<rt>どうにゅう</rt></ruby>したよね。<br>*(Là đưa cái mới vào công ty đúng không? Xưởng mình tháng trước cũng vừa đưa CNC vào đấy còn gì.)* |
| Thái | そうですね！<ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>っていることばが<ruby>試験<rt>しけん</rt></ruby>に<ruby>出<rt>で</rt></ruby>ると、<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Đúng nhỉ! Từ nào làm việc dùng rồi mà ra ở đề thì dễ nhớ thật.)* |
| Putra | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>分<rt>わ</rt></ruby>からないことばがあったら、お<ruby>互<rt>たが</rt></ruby>いに<ruby>聞<rt>き</rt></ruby>こう。<br>*(Cùng cố nào. Có từ nào không hiểu thì hỏi lẫn nhau.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ ạ.)* |

---

## Tình huống 5 — Phòng 201 · Cuối tuần 5 tháng 11, báo cáo điểm đề thử với chị tutor qua LINE (cảnh tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nội tâm) Đề thử số 1 vừa xong. Tự chấm: 文字語彙 32/35, 文法 28/35, 読解 20/30, 聴解 25/40 — tổng 105/180. |
| Thái | (tiếng Việt) Mức đỗ là 95 nhưng phải đạt tối thiểu mỗi phần. Phần nghe mình chỉ 25/40, hơi sát đáy. |
| Thái | (LINE, nhắn chị Linh) Chị ơi, đề thử 1 em được 105/180. Phần nghe đúng 25/40, hơi yếu. |
| Linh | (LINE) Đỗ rồi cưng! Nhưng phần nghe phải nâng lên 30+ cho chắc. Nếu rơi xuống dưới 19 là rớt section dù tổng cao. |
| Thái | (LINE) Vâng. Tuần cuối em đẩy mạnh nghe. Chiến lược gì chị? |
| Linh | (LINE) Một, shadowing 30 phút mỗi tối với bài NHK Easy. Hai, làm hết 即時応答 trong Shin Kanzen. Ba, đề thử 2 làm vào sáng thứ bảy đúng giờ thi thật — 9:30 sáng. |
| Thái | (LINE) Vâng ạ. Em sẽ ngủ sớm tuần cuối, không thức khuya cày. |
| Linh | (LINE) Đúng rồi. Thi N3 cần tỉnh táo hơn cần biết nhiều. Cố lên! |

---

## Tình huống 6 — Phòng 工場長 Tanaka · Thứ hai 10:00, xin 有給 ngày thi

| Vai | Lời thoại |
|---|---|
| Thái | （ドアをノックする）<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Gõ cửa. Em xin phép. Trưởng nhà máy, em xin chút thời gian được không ạ?)* |
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、どうぞ。<ruby>何<rt>なん</rt></ruby>かあった？<br>*(Thái, mời vào. Có chuyện gì hả?)* |
| Thái | はい、<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>、<ruby>日曜日<rt>にちようび</rt></ruby>にN3の<ruby>試験<rt>しけん</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<ruby>試験<rt>しけん</rt></ruby>は<ruby>名古屋<rt>なごや</rt></ruby>で<ruby>朝<rt>あさ</rt></ruby>から<ruby>夕方<rt>ゆうがた</rt></ruby>まで、<ruby>翌日<rt>よくじつ</rt></ruby>の<ruby>月曜日<rt>げつようび</rt></ruby>、<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>をいただきたいのですが、よろしいでしょうか？<br>*(Vâng, ngày 3 tháng sau, chủ nhật, em thi N3. Thi ở Nagoya từ sáng đến chiều, nên ngày hôm sau thứ hai em muốn xin nghỉ phép có lương, ông có cho phép không ạ?)* |
| Tanaka | もちろんいいよ。<ruby>申請書<rt>しんせいしょ</rt></ruby>はもう<ruby>出<rt>だ</rt></ruby>した？<br>*(Tất nhiên được. Đơn xin đã nộp chưa?)* |
| Thái | はい、<ruby>先週<rt>せんしゅう</rt></ruby>システムから<ruby>申請<rt>しんせい</rt></ruby>しました。<br>*(Vâng, tuần trước em đã gửi qua hệ thống.)* |
| Tanaka | <ruby>確認<rt>かくにん</rt></ruby>しておくよ。N3、<ruby>準備<rt>じゅんび</rt></ruby>はどう？<br>*(Tôi sẽ kiểm tra. N3, chuẩn bị thế nào rồi?)* |
| Thái | <ruby>模擬試験<rt>もぎしけん</rt></ruby>で<ruby>105<rt>ひゃくご</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>ですが、<ruby>聴解<rt>ちょうかい</rt></ruby>がまだ<ruby>弱<rt>よわ</rt></ruby>いので、<ruby>最後<rt>さいご</rt></ruby>の<ruby>一<rt>いち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>強化<rt>きょうか</rt></ruby>します。<br>*(Đề thử em được 105 điểm. Điểm đỗ là 95 nhưng phần nghe vẫn yếu, tuần cuối em sẽ tăng cường.)* |
| Tanaka | いいね。N3に<ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>来年<rt>らいねん</rt></ruby><ruby>設計室<rt>せっけいしつ</rt></ruby>への<ruby>移動<rt>いどう</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るよ。CADの<ruby>研修<rt>けんしゅう</rt></ruby>も<ruby>始<rt>はじ</rt></ruby>められる。<br>*(Tốt đấy. Đỗ N3 thì sang năm có thể tính chuyển sang phòng thiết kế. Bắt đầu được khoá đào tạo CAD luôn.)* |
| Thái | （<ruby>嬉<rt>うれ</rt></ruby>しさを<ruby>抑<rt>おさ</rt></ruby>えて<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます！<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Nén niềm vui, cúi đầu. Em cảm ơn ông ạ! Em nhất định sẽ đỗ.)* |
| Tanaka | <ruby>無理<rt>むり</rt></ruby>しないで、<ruby>体調<rt>たいちょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>もしっかりね。<br>*(Đừng làm quá sức, giữ sức khoẻ cho tốt nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em xin phép.)* |

---

## Tình huống 7 — Nhà ăn công ty · Thứ ba 12:15, quan sát đàn anh 先輩 chia sẻ kinh nghiệm JLPT

| Vai | Lời thoại |
|---|---|
| 先輩 Sato | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来月<rt>らいげつ</rt></ruby>N3だね。<ruby>俺<rt>おれ</rt></ruby>も<ruby>昔<rt>むかし</rt></ruby>、<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>でN2を<ruby>受<rt>う</rt></ruby>けたよ。<br>*(Anh Sato — Thái, tháng sau thi N3 nhỉ. Tớ ngày xưa cũng thi N2 hồi học đại học ở Trung Quốc đấy.)* |
| Thái | え、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>もJLPTを<ruby>受<rt>う</rt></ruby>けたんですか？<br>*(Ơ, anh Sato cũng thi JLPT ạ?)* |
| 先輩 Sato | うん。N2に<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>落<rt>お</rt></ruby>ちて、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>目<rt>め</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>した。だから<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かるよ。<br>*(Ừ. N2 tớ rớt hai lần, lần ba mới đỗ. Nên tớ hiểu cảm giác lắm.)* |
| Thái | <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby>のコツって<ruby>何<rt>なん</rt></ruby>でしたか？<br>*(Anh ơi, mẹo cho phần nghe là gì ạ?)* |
| 先輩 Sato | <ruby>俺<rt>おれ</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>は、<ruby>会話文<rt>かいわぶん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>先<rt>さき</rt></ruby>に<ruby>読<rt>よ</rt></ruby>むこと。<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>でいい。それで「<ruby>何<rt>なに</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれるか」を<ruby>予想<rt>よそう</rt></ruby>する。<br>*(Trường hợp của tớ là — trước khi nghe đoạn hội thoại, nhất định đọc trước đáp án lựa chọn. 3 giây thôi. Để đoán "câu hỏi sẽ hỏi gì".)* |
| Thái | なるほど、<ruby>選択肢<rt>せんたくし</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>読<rt>よ</rt></ruby>む、ということですね。メモします。<br>*(À ra vậy, đọc đáp án trước, đúng không ạ. Em ghi lại.)* |
| 先輩 Sato | あと、<ruby>当日<rt>とうじつ</rt></ruby>「<ruby>分<rt>わ</rt></ruby>からない<ruby>問題<rt>もんだい</rt></ruby>」に<ruby>時間<rt>じかん</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うな。<ruby>飛<rt>と</rt></ruby>ばす<ruby>勇気<rt>ゆうき</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Còn nữa, ngày thi đừng dùng thời gian cho "câu không biết". Dũng cảm bỏ qua mới quan trọng.)* |
| Thái | はい、<ruby>飛<rt>と</rt></ruby>ばす<ruby>勇気<rt>ゆうき</rt></ruby>ですね。<br>*(Vâng, dũng cảm bỏ qua ạ.)* |
| 先輩 Sato | <ruby>頑張<rt>がんば</rt></ruby>ってね。<ruby>合格<rt>ごうかく</rt></ruby>を<ruby>祈<rt>いの</rt></ruby>っているよ。<br>*(Cố lên nhé. Tớ chúc cậu đỗ.)* |
| Thái | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Anh Sato, em cảm ơn anh thật nhiều ạ.)* |

---

## Tình huống 8 — Phòng 201 · Đêm trước thi 22:00, gọi điện về Việt Nam (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — Mai gọi LINE chúc may mắn, Thái ôn lại tinh thần.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, video LINE) Anh, mai thi rồi đó. Anh đang làm gì? |
| Thái | (tiếng Việt) Anh vừa đóng sổ ngữ pháp. Chị Linh dặn đêm trước không học gì mới, chỉ lướt lại sổ. |
| Mai | (tiếng Việt) Đúng rồi. Em đọc trên mạng cũng nói vậy. Anh đề thử bao nhiêu rồi? |
| Thái | (tiếng Việt) Đề thử 1 được 105, đề thử 2 được 113. Mức đỗ là 95. Phần nghe anh kéo từ 25 lên 32 sau tuần shadowing rồi. |
| Mai | (tiếng Việt) Giỏi quá! Anh Tanaka có chúc gì không? |
| Thái | (tiếng Việt) Có, ông cho anh nghỉ phép thứ hai có lương. Còn hứa nếu đỗ N3 thì sang năm cho anh sang phòng thiết kế, học CAD. Đỗ là bước đầu sang con đường 設計者. |
| Mai | (tiếng Việt) Trời ơi đợi anh lâu lắm rồi. Vài năm nữa thôi đúng không? |
| Thái | (tiếng Việt) Ừ. Mai thi xong anh nhắn ngay, đừng lo. Em với mẹ đi nghỉ đi, bên này anh cũng phải ngủ. Chị Linh dặn ngủ trước 23h. |
| Mai | (tiếng Việt) Vâng. 頑張って ạ. |
| Thái | (tiếng Việt) Cảm ơn em. |

---

## Tình huống 9 — Phòng 201 · Đêm trước thi 22:45, đối thoại ngắn với Putra trước khi ngủ

| Vai | Lời thoại |
|---|---|
| Putra | タイ、<ruby>明日<rt>あした</rt></ruby>はN3だね。<ruby>緊張<rt>きんちょう</rt></ruby>している？<br>*(Thái, mai thi N3 nhỉ. Cậu có hồi hộp không?)* |
| Thái | はい、<ruby>少<rt>すこ</rt></ruby>し。でも<ruby>準備<rt>じゅんび</rt></ruby>はしました。<ruby>6<rt>ろく</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、リンさんと<ruby>勉強<rt>べんきょう</rt></ruby>しました。<br>*(Vâng, hơi hơi. Nhưng em đã chuẩn bị rồi. Sáu tuần liền học với chị Linh.)* |
| Putra | リンさんって、ベトナムのお<ruby>姉<rt>ねえ</rt></ruby>さん？<br>*(Chị Linh — chị người Việt à?)* |
| Thái | はい、<ruby>東京<rt>とうきょう</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでいる<ruby>先輩<rt>せんぱい</rt></ruby>です。N1<ruby>合格<rt>ごうかく</rt></ruby>です。<br>*(Vâng, chị tutor ở Tokyo, đã đỗ N1.)* |
| Putra | すごいね。<ruby>俺<rt>おれ</rt></ruby>も<ruby>来年<rt>らいねん</rt></ruby>N4を<ruby>受<rt>う</rt></ruby>けるから、コツを<ruby>教<rt>おし</rt></ruby>えてね。<br>*(Giỏi nhỉ. Tớ sang năm cũng thi N4 nên cho tớ mẹo với nhé.)* |
| Thái | もちろん。<ruby>明日<rt>あした</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>しましょう。<br>*(Tất nhiên rồi. Mai thi xong, mình cùng học nhé.)* |
| Putra | ありがとう。じゃあ、おやすみ。<ruby>明日<rt>あした</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>って！<br>*(Cảm ơn cậu. Vậy, ngủ ngon. Mai cố lên nhé!)* |
| Thái | おやすみなさい。<br>*(Ngủ ngon.)* |

---

## Tình huống 10 — Phòng 201 · 23:00, viết nhật ký trước khi ngủ (cảnh tiếng Việt — mạch nhân vật)

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, nhật ký) 2/12/2023, 23h. Đêm trước hôm thi N3. |
| Thái | (tiếng Việt) Sáu tuần ôn dồn cùng chị Linh — mỗi chủ nhật 2 tiếng video. Đề thử 1: 105. Đề thử 2: 113. Mức đỗ: 95. |
| Thái | (tiếng Việt) Anh Tanaka đã tạo động lực rất rõ — đỗ N3 thì sang năm chuyển CAD, bước đầu thành 設計者. Anh Sato dạy mẹo đọc đáp án trước 3 giây. Putra cùng ngủ phòng cũng đang chuẩn bị N4. |
| Thái | (tiếng Việt) Mai gọi chúc may mắn. Mẹ chắc đang cầu nguyện trên bàn thờ ông. |
| Thái | (tiếng Việt) Mình không thi cho riêng mình — thi cho cả ba năm visa, cho con đường thiết kế, cho mẹ và Mai ở quê. Ngủ sớm thôi. |
| Thái | <ruby>頑張<rt>がんば</rt></ruby>る。<br>*(Cố lên.)* |

---

## Đọng lại chương 7

Sáu tuần ôn dồn N3, Thái không chỉ học từ vựng — học cả **cách hỏi tutor một cách có chuẩn bị** (chuẩn bị câu hỏi trước, không vào buổi mới nghĩ), **cách phân biệt ngữ pháp gần nghĩa** (〜たびに vs 〜ごとに), và **chiến lược nghe N3** (đọc 選択肢 trước 3 giây, shadowing 30 phút mỗi tối, bắt từ khoá NHK Easy). Trên môi trường công sở, em học cách **xin 有給休暇 trước cấp trên** (申請書 + lý do + cam kết), **quan sát đàn anh** (anh Sato từng rớt 2 lần N2 mới đỗ — cho lời khuyên "bỏ qua câu khó cần dũng cảm"), và **động viên đồng phòng** Putra cùng học JLPT. Quan trọng nhất: **〜というのは** vẫn là mẫu câu cứu mạng cho người đang học — hỏi nghĩa lễ phép, không xấu hổ. Đỗ N3 là cánh cửa mở sang con đường 設計室 + CAD anh Tanaka đã hứa.

> Từ vựng & mẫu câu chương này: 〜たびに・〜ごとに・即時応答・導入・模擬試験・シャドーイング・聴解・読解・文字語彙・文法・選択肢・有給休暇・申請書・設計室・移動・視野に入る・体調管理・合格・飛ばす勇気・〜というのは・〜ということですね・少しお時間よろしいでしょうか・必ず合格します・お互いに聞こう・頑張って

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 即時応答 | そくじおうとう | TỨC THỜI ỨNG ĐÁP | Đáp ứng tức thời (dạng thi) |
| 導入 | どうにゅう | ĐẠO NHẬP | Đưa vào, áp dụng |
| 読解 | どっかい | ĐỘC GIẢI | Đọc hiểu |
| 練習 | れんしゅう | LUYỆN TẬP | Luyện tập |
| 勉強 | べんきょう | MIỄN CƯỠNG | Học tập |
| 工場 | こうじょう | CÔNG XƯỞNG | Nhà máy |
| 模擬試験 | もぎしけん | MÔ NGHĨ THÍ NGHIỆM | Đề thi thử |
| 文字語彙 | もじごい | VĂN TỰ NGỮ VỰNG | Từ vựng |
| 文法 | ぶんぽう | VĂN PHÁP | Ngữ pháp |
| 聴解 | ちょうかい | THÍNH GIẢI | Nghe hiểu |
| 合格点 | ごうかくてん | HỢP CÁCH ĐIỂM | Điểm đỗ |
| 強化 | きょうか | CƯỜNG HÓA | Tăng cường |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | Nghỉ phép có lương |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | Đơn xin |
| 申請 | しんせい | THÂN THỈNH | Xin, đề nghị |
| 翌日 | よくじつ | DỰC NHẬT | Hôm sau |
| 移動 | いどう | DI ĐỘNG | Chuyển, di chuyển |
| 視野 | しや | THỊ DÃ | Tầm nhìn |
| 体調管理 | たいちょうかんり | THỂ ĐIỀU QUẢN LÝ | Quản lý sức khoẻ |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | Phương án lựa chọn |
| 場合 | ばあい | TRÀNG HỢP | Trường hợp |
| 会話文 | かいわぶん | HỘI THOẠI VĂN | Bài hội thoại |
| 予想 | よそう | DỰ TƯỞNG | Dự đoán |
| 当日 | とうじつ | ĐƯƠNG NHẬT | Ngày hôm đó |
| 問題 | もんだい | VẤN ĐỀ | Câu hỏi, vấn đề |
| 勇気 | ゆうき | DŨNG KHÍ | Dũng khí |
| 設計者 | せっけいしゃ | THIẾT KẾ GIẢ | Kỹ sư thiết kế |
| 努力 | どりょく | NỖ LỰC | Nỗ lực |
| 頑張る | がんばる | — | Cố gắng |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000008, 800000015, NULL, 'markdown_book', 'T8. Suzuki chuyển việc và lễ tiễn đàn anh (鈴木さん転職・送別会)', '# Sách kỹ sư khuôn đúc · T8. Suzuki chuyển việc và lễ tiễn đàn anh (鈴木さん転職・送別会)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) tiếp tục năm 2 tại công ty khuôn đúc Anjo, nay phải đối diện việc 先輩・メンター Suzuki rời công ty sang Tier-1 hệ Toyota. Học các mẫu hội thoại tiếng Nhật trong tình huống nhân sự thay đổi: nghe đàn anh thông báo **転職** một-một, phản ứng lễ phép khi sốc (謝らないでください・正しい判断です), bày tỏ biết ơn người thầy (お世話になりました・ありがとうございました), nghe 工場長 thông báo **退職・送別会** trong 朝礼, tiếp nhận bàn giao mentor mới (CAD・磨き・MC・EDM), hỏi lại lễ phép khi chưa hiểu từ ngành (1次サプライヤー・系列), và dùng kính ngữ trong **送別会** khi nhận quà kỷ niệm.

---

## Bối cảnh

Tháng 1 năm 2024. Thái đã hơn một năm rưỡi tại **株式会社みなみ精密金型** ở Anjo, Aichi, đang được Suzuki (đàn anh 10 năm) kèm hằng ngày các kỹ năng 磨き・MC・EDM・Mastercam. Trình độ tiếng Nhật N3, đã quen môi trường công sở Nhật. Chương này tập trung các mẫu câu giao tiếp khi cấp trên thân thiết **転職** sang công ty lớn: cách nghe và phản ứng tin chuyển việc, cách cảm ơn người thầy, cách nhận bàn giao mentor mới, và kính ngữ trong tiệc tiễn 送別会.

---

## Tình huống 1 — Góc xưởng cạnh máy MC · 17:00, Suzuki gọi riêng Thái để thông báo 転職

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>話<rt>はな</rt></ruby>せるかな？ <ruby>休憩室<rt>きゅうけいしつ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てくれる？<br>*(Thái, nói chuyện một chút được không? Em qua phòng nghỉ với anh nhé?)* |
| Thái | はい、すぐ<ruby>行<rt>い</rt></ruby>きます。<ruby>何<rt>なに</rt></ruby>かありましたか？<br>*(Vâng, em đến ngay. Có chuyện gì vậy ạ?)* |
| Suzuki | （<ruby>席<rt>せき</rt></ruby>に<ruby>座<rt>すわ</rt></ruby>ってから、<ruby>静<rt>しず</rt></ruby>かに）<ruby>実<rt>じつ</rt></ruby>はね、<ruby>俺<rt>おれ</rt></ruby>、<ruby>転職<rt>てんしょく</rt></ruby>することにしたんだ。<br>*(Ngồi xuống ghế rồi nói khẽ. Thật ra anh đã quyết định chuyển việc.)* |
| Thái | えっ！？ <ruby>転職<rt>てんしょく</rt></ruby>...ですか？<br>*(Ơ!? Chuyển việc... ạ?)* |
| Suzuki | <ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>で<ruby>退職<rt>たいしょく</rt></ruby>する。<ruby>次<rt>つぎ</rt></ruby>はトヨタ<ruby>系<rt>けい</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>次<rt>じ</rt></ruby>サプライヤーだ。<br>*(Cuối tháng 3 anh nghỉ. Bên mới là nhà cung cấp cấp 1 hệ Toyota.)* |
| Thái | すみません、「<ruby>1<rt>いっ</rt></ruby><ruby>次<rt>じ</rt></ruby>サプライヤー」というのは、トヨタに<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>納<rt>おさ</rt></ruby>める<ruby>会社<rt>かいしゃ</rt></ruby>ということですね？<br>*(Xin lỗi, "nhà cung cấp cấp 1" tức là công ty giao hàng thẳng cho Toyota, đúng không ạ?)* |
| Suzuki | そう。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>次<rt>じ</rt></ruby>だから、<ruby>規模<rt>きぼ</rt></ruby>がぜんぜん<ruby>違<rt>ちが</rt></ruby>う。<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>30<rt>さんじゅう</rt></ruby>%アップする。<br>*(Đúng. Công ty mình cấp 2, nên quy mô khác hẳn. Lương cũng tăng 30%.)* |
| Thái | <ruby>30<rt>さんじゅう</rt></ruby>%...<ruby>大<rt>おお</rt></ruby>きいですね。<br>*(30%... lớn quá ạ.)* |
| Suzuki | <ruby>家族<rt>かぞく</rt></ruby>のためだ。<ruby>子供<rt>こども</rt></ruby>が<ruby>来年<rt>らいねん</rt></ruby><ruby>小学校<rt>しょうがっこう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るから、<ruby>教育<rt>きょういく</rt></ruby><ruby>費<rt>ひ</rt></ruby>がかかる。<br>*(Vì gia đình. Năm sau con anh vào lớp 1, tiền học sẽ tốn.)* |

---

## Tình huống 2 — Phòng nghỉ · 17:15, Thái phản ứng và cảm ơn người thầy

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>少<rt>すこ</rt></ruby>し<ruby>沈黙<rt>ちんもく</rt></ruby>してから、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）...そうですか。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Im lặng một chút rồi cúi đầu. ... Vâng. Em hiểu rồi ạ.)* |
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、ごめんな。<ruby>急<rt>きゅう</rt></ruby>に<ruby>言<rt>い</rt></ruby>って。<br>*(Thái, xin lỗi nhé. Anh nói đột ngột quá.)* |
| Thái | スズキさん、<ruby>謝<rt>あやま</rt></ruby>らないでください。<ruby>家族<rt>かぞく</rt></ruby>のためなら、<ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>です。<br>*(Anh Suzuki, anh đừng xin lỗi ạ. Vì gia đình thì đó là quyết định đúng đắn.)* |
| Suzuki | <ruby>君<rt>きみ</rt></ruby>のメンターを<ruby>10<rt>じゅっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>やってきた。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>楽<rt>たの</rt></ruby>しかったよ。<br>*(Anh làm thầy em được 10 tháng. Thật sự rất vui.)* |
| Thái | <ruby>僕<rt>ぼく</rt></ruby>こそ、ありがとうございました。<ruby>磨<rt>みが</rt></ruby>き、MC、EDM、Mastercam、<ruby>全部<rt>ぜんぶ</rt></ruby>スズキさんから<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Em mới phải cảm ơn anh. Đánh bóng, MC, EDM, Mastercam — em học từ anh tất cả.)* |
| Suzuki | <ruby>俺<rt>おれ</rt></ruby>のおかげじゃない。<ruby>君<rt>きみ</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>だよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>残<rt>のこ</rt></ruby>って<ruby>練習<rt>れんしゅう</rt></ruby>してたの、<ruby>俺<rt>おれ</rt></ruby>は<ruby>知<rt>し</rt></ruby>ってる。<br>*(Không phải nhờ anh đâu. Là nhờ em cố. Em ngày nào cũng ở lại luyện, anh biết hết.)* |
| Thái | スズキさんが<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>言<rt>い</rt></ruby>った「<ruby>0.01<rt>れいてんれいいち</rt></ruby>ミリも<ruby>妥協<rt>だきょう</rt></ruby>しない」という<ruby>言葉<rt>ことば</rt></ruby>を、<ruby>今<rt>いま</rt></ruby>でも<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Câu anh nói lần đầu — "không thỏa hiệp dù chỉ 0,01mm" — em vẫn nhớ đến giờ.)* |
| Suzuki | （<ruby>笑<rt>わら</rt></ruby>う）<ruby>嬉<rt>うれ</rt></ruby>しいな。それを<ruby>大切<rt>たいせつ</rt></ruby>にしてくれ。<br>*(Cười. Anh vui quá. Em giữ điều đó nhé.)* |

---

## Tình huống 3 — Phòng nghỉ · 17:25, Thái hỏi lại lễ phép về quy trình bàn giao

| Vai | Lời thoại |
|---|---|
| Thái | スズキさん、<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Anh Suzuki, em hỏi một câu được không ạ?)* |
| Suzuki | もちろん、どうぞ。<br>*(Tất nhiên, em hỏi đi.)* |
| Thái | <ruby>退職<rt>たいしょく</rt></ruby>のときは、いつから<ruby>皆<rt>みな</rt></ruby>さんに<ruby>知<rt>し</rt></ruby>らせるんですか？<br>*(Khi nghỉ việc thì lúc nào báo cho mọi người ạ?)* |
| Suzuki | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>が<ruby>正式<rt>せいしき</rt></ruby>に<ruby>発表<rt>はっぴょう</rt></ruby>する。それまで<ruby>内緒<rt>ないしょ</rt></ruby>にしてくれ。<br>*(Tuần sau ở buổi chào sáng, trưởng nhà máy Tanaka sẽ thông báo chính thức. Đến lúc đó giữ kín giúp anh nhé.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。「<ruby>内緒<rt>ないしょ</rt></ruby>」というのは、まだ<ruby>誰<rt>だれ</rt></ruby>にも<ruby>言<rt>い</rt></ruby>わないということですね。<br>*(Vâng, em rõ ạ. "Nội緒" tức là chưa được nói với ai, đúng không ạ?)* |
| Suzuki | そう。プトラさんにもまだだ。<ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>でも<ruby>我慢<rt>がまん</rt></ruby>してくれ。<br>*(Đúng. Cả Putra cũng chưa. Dù ở cùng ký túc cũng nhịn giúp anh.)* |
| Thái | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>後任<rt>こうにん</rt></ruby>のメンターはどなたになりますか？<br>*(Vâng em hiểu. Người thay làm mentor của em sẽ là ai ạ?)* |
| Suzuki | <ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎは、<ruby>磨<rt>みが</rt></ruby>き・MC・EDMはサクライ<ruby>君<rt>くん</rt></ruby>。CAD<ruby>設計<rt>せっけい</rt></ruby>はカワカミ<ruby>課長<rt>かちょう</rt></ruby>が<ruby>直接<rt>ちょくせつ</rt></ruby>みる。<br>*(Việc bàn giao: đánh bóng, MC, EDM thì Sakurai. Thiết kế CAD thì trưởng phòng Kawakami trực tiếp dìu em.)* |
| Thái | カワカミ<ruby>課長<rt>かちょう</rt></ruby><ruby>直々<rt>じきじき</rt></ruby>ですか？ <ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Trưởng phòng Kawakami đích thân ạ? Em hồi hộp quá.)* |

---

## Tình huống 4 — Phòng họp lớn · 8:30 tuần sau, 工場長 thông báo 退職 trong 朝礼

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>今日<rt>きょう</rt></ruby>は<ruby>残念<rt>ざんねん</rt></ruby>なお<ruby>知<rt>し</rt></ruby>らせがあります。<br>*(Mọi người, chào buổi sáng. Hôm nay có một tin đáng tiếc.)* |
| Nhân viên | （<ruby>皆<rt>みな</rt></ruby><ruby>注目<rt>ちゅうもく</rt></ruby>する）<br>*(Mọi người chăm chú nghe.)* |
| Tanaka | スズキさんが<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>をもって<ruby>退職<rt>たいしょく</rt></ruby>されることになりました。<br>*(Anh Suzuki sẽ nghỉ việc vào cuối tháng 3.)* |
| Sakurai | （<ruby>小声<rt>こごえ</rt></ruby>でタイに）えっ、スズキさんが？ <ruby>本当<rt>ほんとう</rt></ruby>？<br>*(Nói nhỏ với Thái. Ơ, anh Suzuki á? Thật à?)* |
| Thái | （うなずく）はい...<br>*(Gật đầu. Vâng...)* |
| Tanaka | スズキさんは<ruby>10<rt>じゅう</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げを<ruby>支<rt>ささ</rt></ruby>えてくださいました。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Anh Suzuki đã gánh vác mảng hoàn thiện khuôn của công ty suốt 10 năm. Tôi thực sự biết ơn anh.)* |
| Tanaka | <ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>に<ruby>送別会<rt>そうべつかい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>きます。<ruby>詳細<rt>しょうさい</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Cuối tháng 3 sẽ tổ chức tiệc tiễn. Chi tiết tôi báo sau.)* |
| Suzuki | （<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>て、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>10<rt>じゅう</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(Bước ra trước, cúi đầu. 10 năm qua được mọi người chiếu cố. Em xin cố gắng hết sức đến ngày cuối cùng.)* |

---

## Tình huống 5 — Sảnh sau 朝礼 · 8:45, Sakurai hỏi Thái và quan sát đàn anh phản ứng

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>知<rt>し</rt></ruby>ってたの？<br>*(Thái, em biết rồi à?)* |
| Thái | <ruby>先週<rt>せんしゅう</rt></ruby>、スズキさんから<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>聞<rt>き</rt></ruby>きました。「<ruby>朝礼<rt>ちょうれい</rt></ruby>まで<ruby>内緒<rt>ないしょ</rt></ruby>に」と<ruby>言<rt>い</rt></ruby>われていたので、<ruby>何<rt>なに</rt></ruby>も<ruby>言<rt>い</rt></ruby>えませんでした。すみません。<br>*(Tuần trước em nghe trực tiếp từ anh Suzuki. Anh ấy dặn "giữ kín đến buổi chào sáng" nên em chưa nói được. Em xin lỗi.)* |
| Sakurai | いやいや、それでいいよ。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>礼儀<rt>れいぎ</rt></ruby>だ。<br>*(Không không, vậy mới đúng. Đó là phép tắc trong công việc.)* |
| Thái | サクライさん、これからは<ruby>磨<rt>みが</rt></ruby>き・MC・EDMをサクライさんから<ruby>習<rt>なら</rt></ruby>うと<ruby>聞<rt>き</rt></ruby>きました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Sakurai, em nghe nói từ giờ em sẽ học đánh bóng, MC, EDM từ anh. Mong anh chỉ bảo ạ.)* |
| Sakurai | こちらこそ。<ruby>俺<rt>おれ</rt></ruby>はスズキさんほど<ruby>器用<rt>きよう</rt></ruby>じゃないけど、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Anh cũng vậy. Anh không khéo bằng anh Suzuki, nhưng cùng cố nhé.)* |
| Thái | サクライさんも<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>近<rt>ちか</rt></ruby>くベテランじゃないですか。<br>*(Anh Sakurai cũng gần 10 năm kinh nghiệm rồi mà.)* |
| Sakurai | <ruby>7<rt>なな</rt></ruby><ruby>年<rt>ねん</rt></ruby>だよ。スズキさんは<ruby>別格<rt>べっかく</rt></ruby>。あの<ruby>人<rt>ひと</rt></ruby>の<ruby>磨<rt>みが</rt></ruby>き、<ruby>俺<rt>おれ</rt></ruby>もずっと<ruby>真似<rt>まね</rt></ruby>してる。<br>*(Anh 7 năm thôi. Anh Suzuki ở đẳng cấp khác. Cách anh ấy đánh bóng, anh cũng học theo suốt.)* |

---

## Tình huống 6 — Phòng thiết kế · 18:00, Kawakami bàn giao role mentor mới

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、ちょっといいかな。<br>*(Thái, em qua đây chút được không?)* |
| Thái | はい、カワカミ<ruby>課長<rt>かちょう</rt></ruby>。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, trưởng phòng Kawakami. Em xin phép vào ạ.)* |
| Kawakami | スズキさんの<ruby>後<rt>あと</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>のメンターを<ruby>俺<rt>おれ</rt></ruby>がやることになった。<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>からよろしく。<br>*(Sau anh Suzuki, anh sẽ làm mentor cho em. Từ tháng 4 mong em hợp tác.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |
| Kawakami | <ruby>俺<rt>おれ</rt></ruby>はCAD<ruby>設計<rt>せっけい</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>だ。<ruby>来年<rt>らいねん</rt></ruby>からじゃなくて、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>設計室<rt>せっけいしつ</rt></ruby>に<ruby>来<rt>き</rt></ruby>てもらう。<br>*(Anh phụ trách thiết kế CAD. Không phải sang năm, từ tháng 4 mỗi ngày em qua phòng thiết kế 2 tiếng.)* |
| Thái | <ruby>毎日<rt>まいにち</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ですか。すみません、その<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>休<rt>やす</rt></ruby>むということですか？<br>*(Mỗi ngày 2 tiếng ạ. Xin lỗi, 2 tiếng đó tức là em nghỉ công việc ở hiện trường ạ?)* |
| Kawakami | そう。<ruby>午後<rt>ごご</rt></ruby>2<ruby>時<rt>じ</rt></ruby>から<ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>までは<ruby>設計室<rt>せっけいしつ</rt></ruby>。Mastercamの<ruby>応用<rt>おうよう</rt></ruby>と<ruby>金型<rt>かながた</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>の<ruby>基礎<rt>きそ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>える。<br>*(Đúng. Từ 2h đến 4h chiều ở phòng thiết kế. Anh dạy Mastercam nâng cao và cơ bản thiết kế khuôn.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか！ <ruby>嬉<rt>うれ</rt></ruby>しいです、ありがとうございます！<br>*(Thật ạ! Em mừng quá, em cảm ơn ạ!)* |
| Kawakami | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して<ruby>決<rt>き</rt></ruby>めた。<ruby>君<rt>きみ</rt></ruby>の<ruby>長期<rt>ちょうき</rt></ruby><ruby>育成<rt>いくせい</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>だ。<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>設計者<rt>せっけいしゃ</rt></ruby>になってもらう。<br>*(Anh đã bàn với trưởng nhà máy Tanaka. Đây là kế hoạch đào tạo dài hạn cho em. 5 năm sau em sẽ thành kỹ sư thiết kế.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>く<ruby>下<rt>さ</rt></ruby>げる）<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu thật sâu. Em sẽ cố hết sức. Mong trưởng phòng chỉ bảo ạ.)* |

---

## Tình huống 7 — Phòng 201 ký túc · 21:00, Thái trao đổi với Putra (đồng nghiệp nước ngoài)

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>聞<rt>き</rt></ruby>いた？ スズキさん<ruby>転職<rt>てんしょく</rt></ruby>するんだって？<br>*(Anh Thái, anh nghe chưa? Anh Suzuki chuyển việc à?)* |
| Thái | はい。<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>発表<rt>はっぴょう</rt></ruby>がありました。トヨタ<ruby>系<rt>けい</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>次<rt>じ</rt></ruby>サプライヤーです。<br>*(Vâng. Buổi chào sáng đã thông báo. Nhà cung cấp cấp 1 hệ Toyota.)* |
| Putra | <ruby>給与<rt>きゅうよ</rt></ruby>が<ruby>30<rt>さんじゅう</rt></ruby>%アップ？<br>*(Lương tăng 30%?)* |
| Thái | はい、そう<ruby>聞<rt>き</rt></ruby>きました。<br>*(Vâng, em nghe vậy ạ.)* |
| Putra | <ruby>普通<rt>ふつう</rt></ruby>のことだよ、タイさん。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>小<rt>ちい</rt></ruby>さい<ruby>会社<rt>かいしゃ</rt></ruby>だから、<ruby>技術<rt>ぎじゅつ</rt></ruby>がある<ruby>人<rt>ひと</rt></ruby>は<ruby>大手<rt>おおて</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>抜<rt>ぬ</rt></ruby>かれる。<br>*(Bình thường thôi anh Thái. Công ty mình nhỏ, ai có tay nghề là bị công ty lớn câu đi.)* |
| Thái | プトラさんは<ruby>転職<rt>てんしょく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えますか？<br>*(Anh Putra có nghĩ đến chuyển việc không?)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>は<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby>だから<ruby>難<rt>むずか</rt></ruby>しい。タイさんは<ruby>技人国<rt>ぎじんこく</rt></ruby>だから、<ruby>将来<rt>しょうらい</rt></ruby><ruby>自由<rt>じゆう</rt></ruby>だ。<br>*(Anh diện kỹ năng đặc định 1 nên khó. Anh Thái diện kỹ thuật-nhân văn-quốc tế nên tương lai tự do.)* |
| Thái | <ruby>今<rt>いま</rt></ruby>は<ruby>考<rt>かんが</rt></ruby>えていません。タナカ<ruby>工場長<rt>こうじょうちょう</rt></ruby>とカワカミ<ruby>課長<rt>かちょう</rt></ruby>が<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>育成<rt>いくせい</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>ててくれました。<br>*(Bây giờ em chưa nghĩ đến. Trưởng nhà máy Tanaka và trưởng phòng Kawakami đã lập kế hoạch đào tạo 5 năm cho em.)* |
| Putra | <ruby>恩義<rt>おんぎ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にね。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>家族的<rt>かぞくてき</rt></ruby>だから、<ruby>育<rt>そだ</rt></ruby>ててくれる<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>軽<rt>かる</rt></ruby>く<ruby>見<rt>み</rt></ruby>たらだめだ。<br>*(Giữ ơn nghĩa nhé. Công ty mình ấm cúng như gia đình, nơi dìu dắt mình thì không được coi nhẹ.)* |
| Thái | はい、そう<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, em cũng nghĩ vậy.)* |

---

## Tình huống 8 — Phòng nghỉ · 12:30 đầu tháng 3, Suzuki dạy mẹo cuối về 磨き

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>に<ruby>磨<rt>みが</rt></ruby>きの<ruby>大事<rt>だいじ</rt></ruby>なコツを<ruby>教<rt>おし</rt></ruby>えておく。<br>*(Thái, lần cuối anh dạy em mẹo quan trọng về đánh bóng.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。メモします。<br>*(Vâng, mời anh ạ. Em ghi lại.)* |
| Suzuki | <ruby>仕上<rt>しあ</rt></ruby>げの<ruby>最後<rt>さいご</rt></ruby>は、<ruby>目<rt>め</rt></ruby>で<ruby>見<rt>み</rt></ruby>ずに<ruby>指<rt>ゆび</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>する。<ruby>指<rt>ゆび</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>だ。<br>*(Khâu hoàn thiện cuối, đừng dùng mắt, dùng ngón tay sờ kiểm tra. Ngón tay chính xác hơn.)* |
| Thái | <ruby>指<rt>ゆび</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>るんですか？ <ruby>傷<rt>きず</rt></ruby>はそれで<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Sờ bằng ngón tay ạ? Vết xước phát hiện được bằng vậy ạ?)* |
| Suzuki | そう。<ruby>0.005<rt>れいてんれいれいご</rt></ruby>ミリの<ruby>段差<rt>だんさ</rt></ruby>でも、<ruby>指先<rt>ゆびさき</rt></ruby>でわかる。<ruby>目<rt>め</rt></ruby>はだまされるけど、<ruby>指<rt>ゆび</rt></ruby>はだまされない。<br>*(Đúng. Chênh lệch 0,005mm ngón tay cũng nhận ra. Mắt thì bị đánh lừa, ngón tay thì không.)* |
| Thái | すみません、「<ruby>段差<rt>だんさ</rt></ruby>」というのは、<ruby>表面<rt>ひょうめん</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さの<ruby>違<rt>ちが</rt></ruby>いということですか？<br>*(Xin lỗi, "dansa" tức là sự chênh lệch độ cao của bề mặt ạ?)* |
| Suzuki | そう、その<ruby>通<rt>とお</rt></ruby>り。よく<ruby>覚<rt>おぼ</rt></ruby>えたね。<br>*(Đúng vậy. Em nhớ giỏi đấy.)* |
| Thái | スズキさんが<ruby>前<rt>まえ</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>してくださいました。<br>*(Lần trước anh đã giải thích cho em ạ.)* |
| Suzuki | サクライ<ruby>君<rt>くん</rt></ruby>にもこれを<ruby>伝<rt>つた</rt></ruby>えてある。<ruby>君<rt>きみ</rt></ruby>たち<ruby>二人<rt>ふたり</rt></ruby>で<ruby>磨<rt>みが</rt></ruby>きの<ruby>伝統<rt>でんとう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってくれ。<br>*(Anh đã truyền điều này cho Sakurai. Hai em hãy gìn giữ truyền thống đánh bóng nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em nhất định gìn giữ ạ.)* |

---

## Tình huống 9 — 居酒屋「<ruby>福<rt>ふく</rt></ruby><ruby>屋<rt>や</rt></ruby>」 · 19:00 cuối tháng 3, mở đầu 送別会 — kính ngữ

| Vai | Lời thoại |
|---|---|
| Tanaka | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる、グラスを<ruby>持<rt>も</rt></ruby>つ）<ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>集<rt>あつ</rt></ruby>まりいただき、ありがとうございます。<br>*(Đứng lên, cầm ly. Hôm nay xin cảm ơn mọi người đã tụ họp.)* |
| Tanaka | スズキさんが<ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>10<rt>じゅう</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>してくださいました。<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Anh Suzuki đã công tác tại công ty mình 10 năm. Anh thực sự vất vả rồi. Cạn ly!)* |
| Mọi người | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Suzuki | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>皆<rt>みな</rt></ruby>さま、<ruby>10<rt>じゅう</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Đứng lên, cúi đầu. Thưa quý vị, 10 năm qua em thực sự được mọi người chiếu cố.)* |
| Suzuki | <ruby>当社<rt>とうしゃ</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだことを、<ruby>次<rt>つぎ</rt></ruby>の<ruby>会社<rt>かいしゃ</rt></ruby>でも<ruby>大切<rt>たいせつ</rt></ruby>にしてまいります。<br>*(Những gì học được ở công ty mình, sang công ty mới em vẫn sẽ trân trọng.)* |
| Thái | （タイ、<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）スズキさん、<ruby>一言<rt>ひとこと</rt></ruby>よろしいでしょうか。<br>*(Thái đứng lên. Anh Suzuki, em xin phép nói một lời được không ạ.)* |
| Suzuki | どうぞ、タイ<ruby>君<rt>くん</rt></ruby>。<br>*(Em nói đi, Thái.)* |
| Thái | スズキさんは<ruby>僕<rt>ぼく</rt></ruby>の<ruby>最初<rt>さいしょ</rt></ruby>のメンターです。<ruby>磨<rt>みが</rt></ruby>き、MC、EDM、Mastercam、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>教<rt>おそ</rt></ruby>えていただきました。<ruby>新<rt>あたら</rt></ruby>しい<ruby>会社<rt>かいしゃ</rt></ruby>でも、ご<ruby>活躍<rt>かつやく</rt></ruby>をお<ruby>祈<rt>いの</rt></ruby>りしております。<br>*(Anh Suzuki là người thầy đầu tiên của em. Đánh bóng, MC, EDM, Mastercam đều anh dạy em. Tại công ty mới, em chúc anh thành công.)* |
| Suzuki | （<ruby>少<rt>すこ</rt></ruby>し<ruby>目<rt>め</rt></ruby>が<ruby>潤<rt>うる</rt></ruby>む）タイ<ruby>君<rt>くん</rt></ruby>、ありがとう。<br>*(Mắt hơi rưng rưng. Cảm ơn em, Thái.)* |

---

## Tình huống 10 — 居酒屋 góc trong · 20:30, Suzuki trao panme Mitutoyo

| Vai | Lời thoại |
|---|---|
| Suzuki | タイ<ruby>君<rt>くん</rt></ruby>、ちょっとこっち<ruby>来<rt>き</rt></ruby>て。<br>*(Thái, lại đây chút.)* |
| Thái | （<ruby>近<rt>ちか</rt></ruby>づく）はい、スズキさん。<br>*(Lại gần. Vâng anh Suzuki.)* |
| Suzuki | （<ruby>箱<rt>はこ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）これ、<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って。<br>*(Đưa hộp. Cái này, em nhận đi.)* |
| Thái | （<ruby>箱<rt>はこ</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>って、<ruby>開<rt>あ</rt></ruby>ける）...マイクロメーター！ ミツトヨですね！<br>*(Nhận hộp rồi mở. ... Panme! Của Mitutoyo đúng không ạ!)* |
| Suzuki | <ruby>俺<rt>おれ</rt></ruby>が<ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>使<rt>つか</rt></ruby>ったやつだ。<ruby>新<rt>あたら</rt></ruby>しい<ruby>会社<rt>かいしゃ</rt></ruby>では<ruby>新品<rt>しんぴん</rt></ruby>を<ruby>支給<rt>しきゅう</rt></ruby>される。これは<ruby>君<rt>きみ</rt></ruby>に<ruby>譲<rt>ゆず</rt></ruby>るよ。<br>*(Cây panme anh dùng 10 năm. Bên công ty mới sẽ được cấp cái mới. Cây này anh tặng lại em.)* |
| Thái | こんな<ruby>大切<rt>たいせつ</rt></ruby>なものを...<ruby>本当<rt>ほんとう</rt></ruby>にいいんですか？<br>*(Vật quý giá thế này... em nhận có thật sự được không ạ?)* |
| Suzuki | <ruby>道具<rt>どうぐ</rt></ruby>は<ruby>使<rt>つか</rt></ruby>う<ruby>人<rt>ひと</rt></ruby>のところへ<ruby>行<rt>い</rt></ruby>くのが<ruby>幸<rt>しあわ</rt></ruby>せだ。<ruby>君<rt>きみ</rt></ruby>なら<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>ってくれる。<br>*(Dụng cụ về tay người dùng mới là hạnh phúc của nó. Em thì sẽ dùng cẩn thận.)* |
| Thái | （<ruby>涙<rt>なみだ</rt></ruby>をこらえる）ありがとうございます。<ruby>一生<rt>いっしょう</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Cố nén nước mắt. Em cảm ơn anh. Em sẽ dùng cẩn thận cả đời ạ.)* |
| Suzuki | <ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>が<ruby>設計者<rt>せっけいしゃ</rt></ruby>になった<ruby>頃<rt>ころ</rt></ruby>、また<ruby>会<rt>あ</rt></ruby>おう。<ruby>業界<rt>ぎょうかい</rt></ruby>は<ruby>狭<rt>せま</rt></ruby>いから、どこかで<ruby>必<rt>かなら</rt></ruby>ず<ruby>繋<rt>つな</rt></ruby>がる。<br>*(5 năm nữa, khi em thành kỹ sư thiết kế, ta gặp lại. Ngành này hẹp, sẽ có lúc nối lại nhau.)* |
| Thái | はい！ <ruby>必<rt>かなら</rt></ruby>ず<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>設計者<rt>せっけいしゃ</rt></ruby>になります。<br>*(Vâng! Em nhất định trở thành kỹ sư thiết kế ra hồn ạ.)* |

---

## Tình huống 11 — Phòng 201 ký túc · 23:30, gọi điện về Việt Nam (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — Thái gọi mẹ và Mai, ôn lại từ vựng JP trong chương.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, hôm nay xong tiệc tiễn anh Suzuki rồi. |
| Mẹ Thái | (tiếng Việt) Ông ấy đi thật à? Anh thầy đầu tiên của con đấy. |
| Thái | (tiếng Việt) Vâng. Sang Tier-1 hệ Toyota, lương tăng 30%. Vì con anh năm sau vào lớp 1, tốn tiền học. |
| Mẹ Thái | (tiếng Việt) Cũng phải thôi con. Người ta có gia đình. Con có buồn không? |
| Thái | (tiếng Việt) Lúc đầu sốc, mẹ ạ. Nhưng anh nói câu này con nhớ mãi: "謝らないでください、正しい判断です" — đừng xin lỗi, đó là quyết định đúng đắn. Người Nhật họ rạch ròi tình với lý. |
| Mai | (ghé màn hình, tiếng Việt) Anh! Anh có quà gì kỷ niệm không? |
| Thái | (tiếng Việt) Có chứ. Anh Suzuki tặng anh cây panme — マイクロメーター — của hãng Mitutoyo, dùng 10 năm. Anh nói "道具は使う人のところへ行くのが幸せだ" — dụng cụ về tay người dùng mới là hạnh phúc. |
| Mai | (tiếng Việt) Đẹp ghê. Như trao lại ngọn lửa anh nhỉ. |
| Thái | (tiếng Việt) Đúng. Từ tháng 4 trưởng phòng Kawakami — カワカミ課長 — sẽ kèm anh CAD thiết kế hai tiếng mỗi ngày. Còn anh Sakurai phụ trách 磨き・MC・EDM. Đội ngũ đổi lứa rồi. |
| Mẹ Thái | (tiếng Việt) Có nhiều người dìu dắt con thế là phúc. Con đừng có nghĩ chuyện chuyển việc như anh Suzuki nhé. |
| Thái | (tiếng Việt) Con không nghĩ đâu mẹ. Trưởng nhà máy Tanaka và Kawakami lập kế hoạch đào tạo con 5 năm. Mình phải giữ ơn nghĩa — 恩義 — như anh Putra nói. |
| Mai | (tiếng Việt) 5 năm sau gặp lại anh Suzuki, anh phải thành kỹ sư thiết kế rồi đấy. |
| Thái | (tiếng Việt) Anh hứa. Hai mẹ con đi ngủ đi, bên này anh cũng ngủ đây. |

---

## Đọng lại chương 8

Tháng 1–3 năm 2024, Thái lần đầu trải qua một biến động nhân sự lớn ở công ty Nhật: người thầy 10 tháng — Suzuki — thông báo **転職** sang **1次サプライヤー** hệ Toyota với lương tăng 30%. Thái học được các mẫu câu giao tiếp trong tình huống nhân sự thay đổi: nghe tin một-một và phản ứng lễ phép khi sốc (**謝らないでください・正しい判断です**), cảm ơn người thầy (**お世話になりました・ありがとうございました・教わりました**), giữ kín tin tức theo lễ nghi công sở (**内緒にしてくれ**) trước khi 工場長 chính thức thông báo **退職** trong **朝礼**, tiếp nhận bàn giao mentor mới (Kawakami課長 phụ trách CAD・Sakurai phụ trách 磨き・MC・EDM), hỏi lại lễ phép thuật ngữ chưa hiểu (**〜というのは・段差・内緒**), và dùng kính ngữ trong **送別会** khi cảm ơn và nhận quà kỷ niệm (**ご活躍をお祈りしております・大切に使わせていただきます**). Cuối cùng, Thái nhận cây panme **マイクロメーター・ミツトヨ** Suzuki dùng 10 năm — như được trao lại ngọn lửa nghề — và nhận ra văn hoá công sở Nhật: rạch ròi tình lý, nhưng vẫn giữ ơn nghĩa **恩義** với nơi đã dìu dắt mình.

> Từ vựng & mẫu câu chương này: 転職・退職・送別会・1次サプライヤー・2次サプライヤー・系列・メンター・引き継ぎ・後任・朝礼・内緒・残念・勤務・お世話になりました・教わりました・謝らないでください・正しい判断です・ご活躍をお祈りしております・恩義・家族的・育成計画・設計者・マイクロメーター・ミツトヨ・段差・道具・譲る・乾杯・〜というのは・〜ということですね

## Bí quyết chương

- **Người thầy đầu tiên rời đi**: kết quả 10 tháng kèm cặp từ T2 — Suzuki để lại di sản kỹ thuật + panme Mitutoyo.
- **Đội ngũ đổi lứa**: Kawakami課長 (CAD設計) + Sakurai (磨き・MC・EDM) — chuẩn bị cho chuỗi thiết kế ở T9–T12.
- **Lựa chọn nghề**: Suzuki chuyển — Thái ở lại vì 育成計画 5 năm. Đặt nền cho câu hỏi "stay vs leave" sẽ trở lại ở sách 18.
- **5 năm sau gặp lại**: kết nối ngành — kết quả thấy ở sách 18 khi Thái thành 設計者.

> *"3/2024. Anh Suzuki rời đi. Trao lại panme Mitutoyo. Đội ngũ đổi lứa. Mình chọn ở lại."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 休憩室 | きゅうけいしつ | HƯU KHẾ THẤT | Phòng nghỉ |
| 退職 | たいしょく | THOÁI CHỨC | Nghỉ việc |
| 系 | けい | HỆ | Hệ, nhóm |
| 1次 | いちじ | NHẤT THỨ | Cấp 1, hạng 1 |
| 直接 | ちょくせつ | TRỰC TIẾP | Trực tiếp |
| 規模 | きぼ | QUY MÔ | Quy mô |
| 給与 | きゅうよ | CẤP DỮ | Lương |
| 家族 | かぞく | GIA TỘC | Gia đình |
| 教育費 | きょういくひ | GIÁO DỤC PHÍ | Tiền học |
| 沈黙 | ちんもく | TRẦM MẶC | Im lặng |
| 妥協 | だきょう | THỎA HIỆP | Thỏa hiệp |
| 朝礼 | ちょうれい | TRIỀU LỄ | Buổi chào sáng |
| 正式 | せいしき | CHÍNH THỨC | Chính thức |
| 発表 | はっぴょう | PHÁT BIỂU | Công bố |
| 内緒 | ないしょ | NỘI TỰ | Giữ bí mật |
| 我慢 | がまん | NGÃ MẠN | Nhịn, chịu đựng |
| 後任 | こうにん | HẬU NHIỆM | Người kế nhiệm |
| 引き継ぎ | ひきつぎ | DẪN KẾ | Bàn giao |
| 直々 | じきじき | TRỰC TRỰC | Trực tiếp đích thân |
| 残念 | ざんねん | TÀN NIỆM | Đáng tiếc |
| 注目 | ちゅうもく | CHÚ MỤC | Chú ý |
| 勤務 | きんむ | CẦN VỤ | Công tác, làm việc |
| 感謝 | かんしゃ | CẢM TẠ | Cảm ơn, biết ơn |
| 送別会 | そうべつかい | TỐNG BIỆT HỘI | Tiệc tiễn |
| 詳細 | しょうさい | TƯỜNG TẾ | Chi tiết |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức |
| 礼儀 | れいぎ | LỄ NGHI | Phép tắc |
| 器用 | きよう | KHÍ DỤNG | Khéo tay |
| 別格 | べっかく | BIỆT CÁCH | Đẳng cấp khác |
| 真似 | まね | CHÂN TỰA | Bắt chước |
| 応用 | おうよう | ỨNG DỤNG | Ứng dụng |
| 基礎 | きそ | CƠ SỞ | Cơ bản |
| 育成 | いくせい | DỤC THÀNH | Đào tạo |
| 計画 | けいかく | KẾ HOẠCH | Kế hoạch |
| 特定技能 | とくていぎのう | ĐẶC ĐỊNH KỸ NĂNG | Kỹ năng đặc định |
| 大手 | おおて | ĐẠI THỦ | Công ty lớn |
| 引き抜く | ひきぬく | DẪN BẠT | Kéo, câu (người) |
| 将来 | しょうらい | TƯƠNG LAI | Tương lai |
| 自由 | じゆう | TỰ DO | Tự do |
| 恩義 | おんぎ | ÂN NGHĨA | Ơn nghĩa |
| 家族的 | かぞくてき | GIA TỘC ĐÍCH | Như gia đình |
| 段差 | だんさ | ĐOẠN SAI | Chênh lệch độ cao |
| 伝統 | でんとう | TRUYỀN THỐNG | Truyền thống |
| 乾杯 | かんぱい | CAN BÔI | Cạn ly |
| 活躍 | かつやく | HOẠT DƯỢC | Hoạt động, thành công |
| 道具 | どうぐ | ĐẠO CỤ | Dụng cụ |
| 譲る | ゆずる | NHƯỢNG | Nhường, tặng lại |
| 一生 | いっしょう | NHẤT SINH | Cả đời |
| 立派 | りっぱ | LẬP PHÁI | Đường hoàng, ra hồn |
| マイクロメーター | — | — | Panme (thước đo) |
| ミツトヨ | — | — | Mitutoyo (hãng dụng cụ đo) |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000009, 800000015, NULL, 'markdown_book', 'T9. Ngày thi N3 và lúc nhận kết quả (N3受験・合格発表)', '# Sách kỹ sư khuôn đúc · T9. Ngày thi N3 và lúc nhận kết quả (N3受験・合格発表)

> **Mục tiêu nhân vật:** Thái (24 tuổi, Hà Nội) thi JLPT N3 cuối năm 2023 tại Aichi và một tháng sau nhận kết quả đỗ 110/180. Học các mẫu hội thoại tiếng Nhật quanh ngày thi và lúc báo tin: nhận lời chúc cố lên từ đồng phòng và bạn gái (頑張って・ファイト), nghe hướng dẫn giám thị trong phòng thi (試験官の指示), tự nhủ và xác nhận đáp án phần nghe (即時応答・聞き取り), nhập số báo danh tra kết quả online (受験番号・合格発表), báo cáo lễ phép kết quả thi cho 工場長 (本日〜に合格しました), hỏi lại đàn anh khi chưa hiểu từ mới gặp trong đề (〜ってどういう意味ですか).

---

## Bối cảnh

Tháng 12 năm 2023, Thái thi JLPT N3 tại hội trường ở Aichi sau một năm rưỡi luyện từ N4. Tháng 1 năm 2024, một tháng sau, anh nhận kết quả online — đỗ 110/180, vượt mức đỗ 95 điểm. Trình độ tiếng Nhật đang từ N4 lên N3. Chương này tập trung các mẫu câu giao tiếp quanh ngày thi và lúc báo tin: nhận lời chúc trước thi, nghe chỉ thị giám thị, xác nhận đáp án phần nghe, tra kết quả online, và báo cáo trang trọng cho cấp trên Nhật bằng `本日〜に合格しました`.

---

## Tình huống 1 — Phòng 201 ký túc · 7:00 sáng thi, nhận lời chúc cố lên từ đồng phòng

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、おはよう。<ruby>今日<rt>きょう</rt></ruby>はN<ruby>3<rt>さん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>ですね。<br>*(Anh Thái, chào buổi sáng. Hôm nay là ngày thi N3 nhỉ.)* |
| Thái | はい、そうです。ちょっと<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Vâng, đúng vậy. Em hơi căng thẳng.)* |
| Putra | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>半<rt>はん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってきましたから。<ruby>受験票<rt>じゅけんひょう</rt></ruby>はもう<ruby>確認<rt>かくにん</rt></ruby>しましたか？<br>*(Không sao đâu. Anh đã cố gắng cả một năm rưỡi rồi. Phiếu dự thi đã kiểm tra chưa?)* |
| Thái | （カバンを<ruby>開<rt>あ</rt></ruby>けて）はい、<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>鉛筆<rt>えんぴつ</rt></ruby>と<ruby>消<rt>け</rt></ruby>しゴム、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>持<rt>も</rt></ruby>っています。<br>*(Mở cặp. Vâng, phiếu dự thi, bút chì và tẩy, em có đủ hết.)* |
| Putra | <ruby>朝<rt>あさ</rt></ruby>ごはんもちゃんと<ruby>食<rt>た</rt></ruby>べてね。<ruby>頭<rt>あたま</rt></ruby>が<ruby>動<rt>うご</rt></ruby>かないと<ruby>困<rt>こま</rt></ruby>ります。<br>*(Bữa sáng cũng ăn cho đàng hoàng nhé. Đầu óc không hoạt động được thì khó.)* |
| Thái | はい、パンと<ruby>卵<rt>たまご</rt></ruby>を<ruby>食<rt>た</rt></ruby>べました。ありがとう。<br>*(Vâng, em đã ăn bánh mì với trứng. Cảm ơn anh.)* |
| Putra | <ruby>頑張<rt>がんば</rt></ruby>って！<ruby>夜<rt>よる</rt></ruby><ruby>帰<rt>かえ</rt></ruby>ってきたら、<ruby>結果<rt>けっか</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせてね。<br>*(Cố lên! Tối về kể kết quả cho tôi nghe nhé.)* |
| Thái | はい、<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Vâng, em đi đây.)* |

---

## Tình huống 2 — Trên tàu đến hội trường · 8:30, đọc LINE chúc thi từ bạn gái

| Vai | Lời thoại |
|---|---|
| Mai | (LINE, tiếng Việt) Anh ơi, hôm nay thi N3 phải không? Em chúc anh đỗ! |
| Thái | (LINE, tiếng Việt) Ừ, anh đang trên tàu đến hội trường. Hơi run em ạ. |
| Mai | (LINE, tiếng Việt) Anh ôn 1 năm rưỡi rồi, lo gì. Câu cửa miệng anh hay nói là gì ấy? |
| Thái | (LINE, tiếng Việt) "落ち着いて、ゆっくり読む" — bình tĩnh, đọc chậm. |
| Mai | (LINE) ファイト！<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Cố lên! Em ủng hộ anh.)* |
| Sakurai | (LINE) タイさん、<ruby>今日<rt>きょう</rt></ruby>はN<ruby>3<rt>さん</rt></ruby><ruby>試験<rt>しけん</rt></ruby>でしたよね。<ruby>頑張<rt>がんば</rt></ruby>ってください！<br>*(Anh Thái, hôm nay là ngày thi N3 đúng không. Anh cố lên nhé!)* |
| Thái | (LINE) <ruby>桜井<rt>さくらい</rt></ruby>さん、ありがとうございます。<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たらまた<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Anh Sakurai, em cảm ơn. Có kết quả em sẽ liên lạc lại.)* |
| Sakurai | (LINE) はい、<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Vâng, anh mong nghe tin.)* |

---

## Tình huống 3 — Trước cổng hội trường · 9:00, hỏi nhân viên đường vào phòng thi

| Vai | Lời thoại |
|---|---|
| Thái | すみません、<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>0<rt>ぜろ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>0<rt>ぜろ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>3<rt>さん</rt></ruby>です。<ruby>教室<rt>きょうしつ</rt></ruby>はどこですか？<br>*(Xin lỗi, số báo danh của em là 3050123. Phòng thi ở đâu ạ?)* |
| Nhân viên | <ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せていただけますか？<br>*(Em cho xem phiếu dự thi được không?)* |
| Thái | （<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa phiếu. Vâng, đây ạ.)* |
| Nhân viên | <ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>305<rt>さんまるご</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>です。<ruby>階段<rt>かいだん</rt></ruby>を<ruby>上<rt>あ</rt></ruby>がって<ruby>右<rt>みぎ</rt></ruby>です。<br>*(Phòng 305 ở tầng 3. Lên cầu thang rồi rẽ phải.)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>305<rt>さんまるご</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>ということですね。ありがとうございます。<br>*(Phòng 305 tầng 3, rẽ phải đúng không ạ. Em cảm ơn.)* |
| Nhân viên | はい。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>20<rt>にじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>までに<ruby>席<rt>せき</rt></ruby>に<ruby>着<rt>つ</rt></ruby>いてください。<br>*(Vâng. Em ngồi vào chỗ trước 9 giờ 20 phút nhé.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ rồi ạ.)* |

---

## Tình huống 4 — Trong phòng thi · 9:30, nghe chỉ thị giám thị mở đầu

| Vai | Lời thoại |
|---|---|
| Giám thị | みなさん、おはようございます。これからN<ruby>3<rt>さん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Các bạn, chào buổi sáng. Bây giờ chúng ta bắt đầu kỳ thi N3.)* |
| Giám thị | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>です。<ruby>文字<rt>もじ</rt></ruby>・<ruby>語彙<rt>ごい</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、<ruby>文法<rt>ぶんぽう</rt></ruby>・<ruby>読解<rt>どっかい</rt></ruby><ruby>70<rt>ななじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、それから<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<br>*(Đầu tiên là phần kiến thức ngôn ngữ. Văn tự-từ vựng 30 phút, ngữ pháp-đọc hiểu 70 phút, sau đó là nghe hiểu 40 phút.)* |
| Giám thị | <ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>には<ruby>鉛筆<rt>えんぴつ</rt></ruby>と<ruby>消<rt>け</rt></ruby>しゴムと<ruby>受験票<rt>じゅけんひょう</rt></ruby>だけ<ruby>置<rt>お</rt></ruby>いてください。<br>*(Trên bàn chỉ để bút chì, tẩy và phiếu dự thi thôi.)* |
| Thái | (nội tâm, tiếng Việt) Phải nhớ: chỉ để bút chì, tẩy, phiếu thi.<br>*(Ghi nhớ.)* |
| Giám thị | <ruby>携帯電話<rt>けいたいでんわ</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って、カバンの<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(Điện thoại bắt buộc tắt nguồn rồi cho vào cặp.)* |
| Thái | （<ruby>携帯<rt>けいたい</rt></ruby>の<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>る）<br>*(Tắt nguồn điện thoại.)* |
| Giám thị | では、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vậy, bắt đầu nhé.)* |

---

## Tình huống 5 — Trong phòng thi · 10:00, gặp từ chưa biết, tự nhủ bỏ qua

| Vai | Lời thoại |
|---|---|
| Thái | (nội tâm, tiếng Việt) Câu 1: cách đọc kanji. <ruby>速<rt>はや</rt></ruby>い → はやい. Được, sang câu tiếp.<br>*(Câu 1 ổn.)* |
| Thái | (nội tâm, tiếng Việt) Câu 12: <ruby>渋滞<rt>じゅうたい</rt></ruby>... Tắc đường. Được.<br>*(Câu 12 ổn.)* |
| Thái | (nội tâm, tiếng Việt) Câu 18: <ruby>遠慮<rt>えんりょ</rt></ruby>する. À, "khách sáo / ngại". Anh Tanaka hay nói. Đáp B.<br>*(Câu 18 chọn B.)* |
| Thái | (nội tâm) Câu 25: 〜ようとする. <ruby>意味<rt>いみ</rt></ruby>は「<ruby>動作<rt>どうさ</rt></ruby>の<ruby>直前<rt>ちょくぜん</rt></ruby>」。<ruby>桜井<rt>さくらい</rt></ruby>さんに<ruby>習<rt>なら</rt></ruby>った。<ruby>答<rt>こた</rt></ruby>えはC。<br>*(Câu 25: ý nghĩa là "ngay trước khi hành động". Học anh Sakurai. Đáp C.)* |
| Thái | (nội tâm, tiếng Việt) Câu 35: <ruby>諦<rt>あきら</rt></ruby>める? Đoán nghĩa từ ngữ cảnh. "Từ bỏ"? Tạm chọn B, đánh dấu để soát lại.<br>*(Câu 35 đánh dấu.)* |
| Thái | (nội tâm) Câu 40: 「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります」ってどういう<ruby>意味<rt>いみ</rt></ruby>？<ruby>知<rt>し</rt></ruby>らない。<ruby>後<rt>あと</rt></ruby>で<ruby>戻<rt>もど</rt></ruby>ろう。<br>*(Câu 40: "osore-irimasu" nghĩa là gì? Chưa biết. Tí quay lại.)* |
| Thái | (nội tâm, tiếng Việt) Còn 15 phút. Bắt đầu soát lại từ câu đánh dấu.<br>*(Soát lại.)* |

---

## Tình huống 6 — Trong phòng thi · 11:30, nghe phần 聴解 và xác nhận đáp án

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>次<rt>つぎ</rt></ruby>は<ruby>聴解<rt>ちょうかい</rt></ruby>です。<ruby>問題用紙<rt>もんだいようし</rt></ruby>を<ruby>開<rt>あ</rt></ruby>けてください。<br>*(Tiếp theo là nghe hiểu. Các bạn mở đề thi.)* |
| Audio | <ruby>問題<rt>もんだい</rt></ruby><ruby>1<rt>いち</rt></ruby>です。<ruby>男<rt>おとこ</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>と<ruby>女<rt>おんな</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>が<ruby>話<rt>はな</rt></ruby>しています。<br>*(Câu 1. Một người đàn ông và một người phụ nữ đang nói chuyện.)* |
| Audio | <ruby>男<rt>おとこ</rt></ruby>：「<ruby>明日<rt>あした</rt></ruby>の<ruby>会議<rt>かいぎ</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>時<rt>じ</rt></ruby>からですよね？」<ruby>女<rt>おんな</rt></ruby>：「いえ、<ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりました」<br>*(Nam: "Họp ngày mai 3 giờ phải không?" Nữ: "Không, đã đổi sang 4 giờ.")* |
| Thái | (nội tâm) <ruby>会議<rt>かいぎ</rt></ruby>は<ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>からということですね。<ruby>答<rt>こた</rt></ruby>えは<ruby>4<rt>よ</rt></ruby><ruby>時<rt>じ</rt></ruby>。<br>*(Tức là họp lúc 4 giờ. Đáp án 4 giờ.)* |
| Audio | <ruby>問題<rt>もんだい</rt></ruby><ruby>5<rt>ご</rt></ruby>は<ruby>即時応答<rt>そくじおうとう</rt></ruby>です。<ruby>短<rt>みじか</rt></ruby>い<ruby>会話<rt>かいわ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いて、<ruby>正<rt>ただ</rt></ruby>しい<ruby>返事<rt>へんじ</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでください。<br>*(Câu 5 là phản xạ nhanh. Nghe đoạn thoại ngắn rồi chọn câu trả lời đúng.)* |
| Thái | (nội tâm, tiếng Việt) Phần này luyện shadowing 6 tuần rồi. Bình tĩnh.<br>*(Bình tĩnh.)* |
| Audio | A:「お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>します」B:?<br>*(A: "Em xin phép về trước." B: ?)* |
| Thái | (nội tâm) <ruby>答<rt>こた</rt></ruby>えは「お<ruby>疲<rt>つか</rt></ruby>れさまでした」。<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>っているフレーズだ。<ruby>選択肢<rt>せんたくし</rt></ruby><ruby>2<rt>に</rt></ruby>。<br>*(Đáp án "Otsukaresama deshita". Cụm dùng hằng ngày ở công ty. Chọn 2.)* |

---

## Tình huống 7 — Hành lang hội trường · 12:50, hỏi lại đàn anh thí sinh về từ chưa hiểu

| Vai | Lời thoại |
|---|---|
| Thái | (gặp một thí sinh khác đang nghỉ giải lao) すみません、ちょっとお<ruby>聞<rt>き</rt></ruby>きしてもいいですか？<br>*(Xin lỗi, em hỏi một chút được không ạ?)* |
| Anh thí sinh | はい、どうぞ。<br>*(Vâng, mời.)* |
| Thái | <ruby>問題<rt>もんだい</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby>に「<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります」という<ruby>言葉<rt>ことば</rt></ruby>がありましたが、どういう<ruby>意味<rt>いみ</rt></ruby>ですか？<ruby>知<rt>し</rt></ruby>らなくて、<ruby>気<rt>き</rt></ruby>になりまして。<br>*(Câu 40 có từ "osore-irimasu", nghĩa là gì ạ? Em không biết, thấy băn khoăn.)* |
| Anh thí sinh | ああ、「すみません」の<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>ですよ。<ruby>店<rt>みせ</rt></ruby>とか<ruby>会社<rt>かいしゃ</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>います。<br>*(À, là cách nói lịch sự của "sumimasen". Hay dùng ở cửa hàng, công ty.)* |
| Thái | なるほど、「すみません」より<ruby>丁寧<rt>ていねい</rt></ruby>ということですね。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。ありがとうございます。<br>*(Ra vậy, lịch sự hơn "sumimasen". Em học được rồi. Cảm ơn anh.)* |
| Anh thí sinh | <ruby>聴解<rt>ちょうかい</rt></ruby>、<ruby>頑張<rt>がんば</rt></ruby>りましょうね。<br>*(Phần nghe cùng cố gắng nhé.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố.)* |

---

## Tình huống 8 — Sau khi thi xong · 16:00, báo cáo cảm tưởng với bạn gái qua LINE

| Vai | Lời thoại |
|---|---|
| Thái | (LINE, tiếng Việt) Mai ơi, anh thi xong rồi. Vừa rời hội trường. |
| Mai | (tiếng Việt) Sao anh? Có làm hết không? |
| Thái | (tiếng Việt) Có. Từ vựng tự đánh giá khoảng 70%, ngữ pháp 75%, đọc 80%, nghe 65%. |
| Mai | (tiếng Việt) Vậy là an toàn rồi. Chuẩn đỗ N3 là khoảng 50% mỗi phần thôi mà. |
| Thái | (tiếng Việt) Ừ. Có một từ anh không biết — `恐れ入ります`. Lúc nghỉ anh hỏi một anh thí sinh khác, anh ấy bảo là cách nói lịch sự của `sumimasen`. |
| Mai | (tiếng Việt) Hay đó anh. Đi thi mà còn học thêm được từ mới. |
| Thái | (tiếng Việt) Giờ đợi 1 tháng có kết quả. Anh về ký túc nghỉ đây. |
| Mai | (tiếng Việt) Anh nghỉ ngơi đi nhé. Tối nay đừng mở sách nữa. |

---

## Tình huống 9 — Phòng 201 ký túc · 9:00 ngày 1/2024, mở trang kết quả online

| Vai | Lời thoại |
|---|---|
| Thái | (nội tâm, tiếng Việt) Hôm nay là ngày công bố kết quả. Mở trang JLPT nào.<br>*(Mở trang.)* |
| Thái | （パソコンでJLPTの<ruby>公式<rt>こうしき</rt></ruby>サイトを<ruby>開<rt>あ</rt></ruby>く）<br>*(Mở trang chính thức JLPT trên máy tính.)* |
| Thái | (nội tâm) <ruby>受験番号<rt>じゅけんばんごう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>0<rt>ぜろ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>0<rt>ぜろ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>3<rt>さん</rt></ruby>、パスワードは<ruby>誕生日<rt>たんじょうび</rt></ruby>。<br>*(Số báo danh 3050123, mật khẩu là ngày sinh.)* |
| Thái | （<ruby>入力<rt>にゅうりょく</rt></ruby>して<ruby>送信<rt>そうしん</rt></ruby>ボタンを<ruby>押<rt>お</rt></ruby>す）<br>*(Nhập rồi bấm nút gửi.)* |
| Thái | (nội tâm, tiếng Việt) Tim đập mạnh quá. Trang đang load.<br>*(Hồi hộp.)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>に「<ruby>合格<rt>ごうかく</rt></ruby>」の<ruby>文字<rt>もじ</rt></ruby>が<ruby>表示<rt>ひょうじ</rt></ruby>される）<ruby>合格<rt>ごうかく</rt></ruby>！<br>*(Trên màn hình hiện chữ "ĐỖ". Đỗ rồi!)* |
| Thái | <ruby>言語<rt>げんご</rt></ruby><ruby>知識<rt>ちしき</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby><ruby>38<rt>さんじゅうはっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>110<rt>ひゃくじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Kiến thức ngôn ngữ 40 điểm, đọc hiểu 38 điểm, nghe hiểu 32 điểm, tổng 110 điểm.)* |
| Thái | (nội tâm, tiếng Việt) Mức đỗ là 95. Vượt 15 điểm. An toàn.<br>*(Vượt 15.)* |

---

## Tình huống 10 — Phòng 201 · 9:15, báo cáo trang trọng kết quả thi cho 工場長

| Vai | Lời thoại |
|---|---|
| Thái | (LINE Tanaka) <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>JLPT N<ruby>3<rt>さん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>発表<rt>はっぴょう</rt></ruby>されました。<br>*(Anh Tanaka, chào buổi sáng. Hôm nay kết quả JLPT N3 đã được công bố.)* |
| Thái | (LINE) おかげさまで、<ruby>110<rt>ひゃくじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>することができました。ご<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Nhờ ơn anh, em đã đỗ với 110 điểm. Em xin báo cáo.)* |
| Tanaka | (LINE) タイさん、<ruby>本当<rt>ほんとう</rt></ruby>におめでとう！<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>半<rt>はん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>ですね。<br>*(Anh Thái, thật sự chúc mừng! Đây là thành quả của một năm rưỡi nỗ lực.)* |
| Tanaka | (LINE) <ruby>明日<rt>あした</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>発表<rt>はっぴょう</rt></ruby>させてください。みんなに<ruby>伝<rt>つた</rt></ruby>えたいです。<br>*(Cho phép tôi công bố ở buổi họp sáng mai nhé. Tôi muốn báo cho mọi người.)* |
| Thái | (LINE) はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Vâng, em xin nhờ anh. Em rất biết ơn ạ.)* |
| Tanaka | (LINE) <ruby>次<rt>つぎ</rt></ruby>はN<ruby>2<rt>に</rt></ruby>ですね。CADの<ruby>仕事<rt>しごと</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>もそろそろ<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Tiếp theo là N2 nhỉ. Chuyện việc CAD cũng dần dần triển khai nhé.)* |
| Thái | (LINE) はい、ありがとうございます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn anh. Em sẽ cố gắng.)* |

---

## Tình huống 11 — Phòng 201 · 9:30, Putra trở về phòng và Thái chia sẻ tin vui

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、<ruby>結果<rt>けっか</rt></ruby>はもう<ruby>見<rt>み</rt></ruby>ましたか？<br>*(Anh Thái, đã xem kết quả chưa?)* |
| Thái | はい、<ruby>合格<rt>ごうかく</rt></ruby>しました！<ruby>110<rt>ひゃくじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<br>*(Vâng, em đỗ rồi! 110 điểm.)* |
| Putra | (vỗ vai Thái) わあ、おめでとうございます！すごい！<br>*(Ồ, chúc mừng! Tuyệt vời!)* |
| Thái | プトラさんのおかげです。<ruby>毎日<rt>まいにち</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby>で<ruby>話<rt>はな</rt></ruby>してくれましたから。<br>*(Cũng nhờ anh Putra. Hằng ngày anh đã chịu khó nói tiếng Nhật với em.)* |
| Putra | いえいえ、タイさんが<ruby>頑張<rt>がんば</rt></ruby>ったからですよ。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>何点<rt>なんてん</rt></ruby>でしたか？<br>*(Không không, là vì anh đã cố gắng đấy. Phần nghe được bao nhiêu điểm?)* |
| Thái | <ruby>32<rt>さんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>19<rt>じゅうきゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>なので、<ruby>安全圏<rt>あんぜんけん</rt></ruby>でした。<br>*(32 điểm. Mức đỗ là 19 nên trong vùng an toàn.)* |
| Putra | <ruby>次<rt>つぎ</rt></ruby>はN<ruby>2<rt>に</rt></ruby>ですね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りましょう。<ruby>私<rt>わたし</rt></ruby>も<ruby>受<rt>う</rt></ruby>けるつもりです。<br>*(Tiếp là N2 nhỉ. Cùng cố nhé. Tôi cũng định thi.)* |
| Thái | え、プトラさんもN<ruby>2<rt>に</rt></ruby>ですか？じゃ、ライバルですね。<br>*(Ơ, anh Putra cũng N2 à? Vậy là đối thủ rồi nhỉ.)* |
| Putra | (cười) ライバルだけど<ruby>仲間<rt>なかま</rt></ruby>です。<br>*(Đối thủ nhưng cũng là đồng đội.)* |

---

## Tình huống 12 — Phòng 201 · 21:00, gọi điện về nhà báo tin (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, em ơi. Anh có tin báo. |
| Mẹ Thái | (tiếng Việt) Sao con? Có chuyện gì? |
| Thái | (tiếng Việt) Con đỗ N3 rồi mẹ. 110 điểm trên 180. Mức đỗ là 95. |
| Mẹ Thái | (tiếng Việt) Trời ơi, mẹ mừng quá! Con học một năm rưỡi cuối cùng được đền đáp. |
| Mai | (tiếng Việt) Anh ơi, em đã biết là anh đỗ mà! Câu cửa miệng "落ち着いてゆっくり読む" cứu anh đó. |
| Thái | (tiếng Việt) Ừ. Và câu `恐れ入ります` anh học được lúc đi thi nay vừa dùng đúng — báo cáo anh Tanaka kết quả, anh ấy bảo mai sẽ công bố ở 朝礼 và bàn chuyện cho anh sang đội CAD. |
| Mai | (tiếng Việt) Wow, anh Tanaka giữ lời thật. Chị Linh nói anh từ N4 lên N3 đúng 1 năm rưỡi cũng đúng nốt. |
| Thái | (tiếng Việt) Ừ. Mục tiêu tiếp là N2 — tháng 7/2025. Còn 18 tháng. Lần này anh tự tin hơn. |
| Mẹ Thái | (tiếng Việt) Con từ từ thôi, đừng học thâu đêm như tháng trước. Sức khoẻ là chính. |
| Thái | (tiếng Việt) Vâng mẹ. Con cảm ơn mẹ. Cảm ơn em Mai. Đêm nay con ngủ ngon đây. |
| Mai | (tiếng Việt) Anh nghỉ ngơi đi. Em chúc mừng anh thêm lần nữa. |

---

## Đọng lại chương 9

Ngày thi và ngày nhận kết quả, Thái dùng được nguyên một bộ mẫu câu giao tiếp quanh kỳ JLPT: **nhận lời chúc cố lên** từ đồng phòng và bạn gái (**頑張って・ファイト・応援しています**), **hỏi đường vào phòng thi** với nhân viên (**受験番号〜です・教室はどこですか**), **nghe chỉ thị giám thị** (**鉛筆と消しゴムと受験票だけ置いてください・携帯の電源を切ってください**), **xác nhận đáp án phần 聴解** bằng cấu trúc `〜ということですね`, **hỏi lại đàn anh thí sinh về từ chưa biết** (**〜ってどういう意味ですか**), **tra kết quả online** (**受験番号を入力する・合格発表**), và đỉnh điểm — **báo cáo trang trọng cho 工場長** bằng câu chuẩn business `本日〜に合格しました・おかげさまで〜することができました・ご報告いたします`. Đồng thời nhận ra một bài học: ngay cả trong phòng thi vẫn học được từ mới (**恐れ入ります** = cách nói lịch sự của すみません) — kỹ năng **hỏi lại** trong sách 14-15 nay không chỉ dùng ở xưởng mà còn dùng ngoài hành lang hội trường, để biến mỗi cơ hội thành một buổi học tiếng Nhật.

> Từ vựng & mẫu câu chương này: 受験票・受験番号・試験官・言語知識・文字語彙・文法・読解・聴解・即時応答・合格・合格発表・安全圏・合計点・見直す・集中・恐れ入ります・朝礼・本日〜に合格しました・おかげさまで〜することができました・ご報告いたします・〜ということですね・〜ってどういう意味ですか・頑張ってください・応援しています・お疲れさまでした

## Bí quyết chương

- **Timeline**: Thi 12/2023 — kết quả 1/2024. Đặt trước thời điểm Suzuki rời 3/2024 → giữ flow nhân sự.
- **Callback sách trước**: `恐れ入ります` Thái nghe lần đầu trong phòng thi, sau đó tự dùng ngay với 工場長 ngày hôm sau — pattern "học một chỗ, dùng chỗ khác".
- **Khởi đầu sách 16**: Tanaka nhắc CAD → mở chuỗi đội CAD năm 2024.
- **Putra cũng thi N2**: tạo "đối thủ - đồng đội" duy trì xuyên các sách tiếp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | Phiếu dự thi |
| 鉛筆 | えんぴつ | DUYÊN BÚT | Bút chì |
| 応援 | おうえん | ỨNG VIỆN | Cổ vũ, ủng hộ |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | Số báo danh |
| 教室 | きょうしつ | GIÁO THẤT | Phòng học, phòng thi |
| 階段 | かいだん | GIAI ĐOẠN | Cầu thang |
| 承知 | しょうち | THỪA TRI | Hiểu, tiếp thu (lễ phép) |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | Kiến thức ngôn ngữ |
| 語彙 | ごい | NGỮ VỰNG | Từ vựng |
| 携帯電話 | けいたいでんわ | HUỀ ĐỚI ĐIỆN THOẠI | Điện thoại di động |
| 電源 | でんげん | ĐIỆN NGUYÊN | Nguồn điện |
| 渋滞 | じゅうたい | SẮP TRỆ | Tắc đường |
| 遠慮 | えんりょ | VIỄN LỰ | Khách sáo, ngại |
| 動作 | どうさ | ĐỘNG TÁC | Động tác, hành động |
| 直前 | ちょくぜん | TRỰC TIỀN | Ngay trước |
| 諦める | あきらめる | ĐẾ | Từ bỏ |
| 恐れ入ります | おそれいります | KHỦNG NHẬP | Cách nói lịch sự "xin lỗi/cảm ơn" |
| 問題用紙 | もんだいようし | VẤN ĐỀ DỤNG CHỈ | Đề thi (giấy) |
| 会議 | かいぎ | HỘI NGHỊ | Cuộc họp |
| 丁寧 | ていねい | ĐINH NINH | Lịch sự, lễ phép |
| 送信 | そうしん | TỐNG TÍN | Gửi đi |
| 画面 | がめん | HỌA DIỆN | Màn hình |
| 本日 | ほんじつ | BẢN NHẬT | Hôm nay (trang trọng) |
| 成果 | せいか | THÀNH QUẢ | Thành quả |
| 基準 | きじゅん | CƠ CHUẨN | Tiêu chuẩn |
| 安全圏 | あんぜんけん | AN TOÀN QUYỀN | Vùng an toàn |
| 仲間 | なかま | TRỌNG GIAN | Đồng đội, bạn |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000010, 800000015, NULL, 'markdown_book', 'T10. Phay tinh ±0.01 cho khách Toyota (中級精密加工)', '# Sách kỹ sư khuôn đúc · T10. Phay tinh ±0.01 cho khách Toyota (中級精密加工)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) năm thứ hai tại みなみ精密金型, lần đầu được giao gia công tinh dung sai ±0.01mm cho keypiece khách Toyota Tier-1. Học các mẫu hội thoại tiếng Nhật trong xưởng precision: nhận chỉ thị từ 先輩 về 公差・切削速度・送り, xác nhận thông số khởi tạo máy (水平・主軸振れ), hỏi lại khi chưa hiểu từ chuyên ngành (〜というのは?), báo cáo kết quả đo CMM (測定結果は〜です), xin học công cụ mới Moldex3D, và trao đổi với đồng phòng người Indonesia về định hướng nghề.

---

## Bối cảnh

Tháng 2 năm 2024. Thái đã sang năm thứ hai tại **株式会社みなみ精密金型** ở Anjo, Aichi. Trình độ tiếng Nhật N3 đang ôn N2. Hôm nay 先輩 Sakurai lần đầu giao một keypiece dung sai ±0.01mm cho khách Toyota Tier-1, và buổi chiều anh Kawakami bên thiết kế sẽ cho xem mô phỏng Moldex3D. Chương này tập trung các mẫu câu giao tiếp trong xưởng precision: nhận chỉ thị, xác nhận thông số, hỏi lại lễ phép từ chuyên môn, báo cáo kết quả đo và xin học công cụ mới.

---

## Tình huống 1 — Trước máy phay · 8:30, nhận chỉ thị 公差 ±0.01 từ 先輩

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>中級<rt>ちゅうきゅう</rt></ruby><ruby>精密<rt>せいみつ</rt></ruby><ruby>加工<rt>かこう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってもらうよ。<br>*(Thái, từ hôm nay em vào mảng gia công tinh trung cấp nhé.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nhờ anh chỉ bảo ạ.)* |
| Sakurai | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>公差<rt>こうさ</rt></ruby>は±0.01mmです。<br>*(Em xem bản vẽ. Dung sai là ±0.01mm.)* |
| Thái | すみません、「<ruby>公差<rt>こうさ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "kousa" nghĩa là gì ạ?)* |
| Sakurai | <ruby>許<rt>ゆる</rt></ruby>される<ruby>誤差<rt>ごさ</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>のことです。±0.01ならプラスマイナス0.01mmまでOK、それ<ruby>以上<rt>いじょう</rt></ruby>は<ruby>不良品<rt>ふりょうひん</rt></ruby>です。<br>*(Là phạm vi sai lệch cho phép. ±0.01 nghĩa là cộng trừ 0.01mm vẫn được, vượt là phế phẩm.)* |
| Thái | なるほど、<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>ということですね。<br>*(Ra vậy, tức là phạm vi cho phép ạ.)* |
| Sakurai | そうです。<ruby>顧客<rt>こきゃく</rt></ruby>はトヨタ<ruby>系<rt>けい</rt></ruby>の<ruby>一次<rt>いちじ</rt></ruby>サプライヤーです。<ruby>厳<rt>きび</rt></ruby>しいです。<br>*(Đúng. Khách là nhà cung cấp cấp một hệ Toyota. Khắt khe lắm.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>緊張<rt>きんちょう</rt></ruby>しますが、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em hơi căng, nhưng sẽ cố hết sức.)* |
| Sakurai | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。コツは<ruby>三<rt>みっ</rt></ruby>つ。<ruby>切削速度<rt>せっさくそくど</rt></ruby>は<ruby>遅<rt>おそ</rt></ruby>く、<ruby>送<rt>おく</rt></ruby>りは<ruby>細<rt>こま</rt></ruby>かく、<ruby>工具<rt>こうぐ</rt></ruby>は<ruby>新品<rt>しんぴん</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Không sao. Bí quyết có ba: tốc độ cắt chậm, bước tiến dao nhỏ, dao dùng dao mới. Em ghi nhớ nhé.)* |
| Thái | (ghi vào sổ) <ruby>遅<rt>おそ</rt></ruby>く・<ruby>細<rt>こま</rt></ruby>かく・<ruby>新品<rt>しんぴん</rt></ruby>、ですね。メモしました。<br>*(Chậm, nhỏ, dao mới ạ. Em ghi rồi.)* |

---

## Tình huống 2 — Trước máy phay · 9:30, xác nhận thông số khởi tạo 水平・主軸振れ

| Vai | Lời thoại |
|---|---|
| Sakurai | まず<ruby>素材<rt>そざい</rt></ruby>を<ruby>固定<rt>こてい</rt></ruby>してください。<ruby>水平<rt>すいへい</rt></ruby>は0.005mm<ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>めます。<br>*(Trước hết cố định phôi. Độ phẳng phải trong 0.005mm.)* |
| Thái | はい、ダイヤルゲージで<ruby>測<rt>はか</rt></ruby>ります。<br>*(Vâng, em đo bằng đồng hồ so.)* |
| Thái | (gắn đồng hồ so, di đầu đo) ...0.003mmです。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか？<br>*(... 0.003mm. Như vậy được không ạ?)* |
| Sakurai | <ruby>合格<rt>ごうかく</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>は<ruby>主軸<rt>しゅじく</rt></ruby>の<ruby>振<rt>ぶ</rt></ruby>れも<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Đạt. Tiếp em kiểm cả độ đảo trục chính.)* |
| Thái | すみません、「<ruby>主軸<rt>しゅじく</rt></ruby>の<ruby>振<rt>ぶ</rt></ruby>れ」というのは？<br>*(Xin lỗi, "shujiku no bure" nghĩa là sao ạ?)* |
| Sakurai | <ruby>主軸<rt>しゅじく</rt></ruby>が<ruby>回転<rt>かいてん</rt></ruby>するときの<ruby>微<rt>かす</rt></ruby>かな<ruby>揺<rt>ゆ</rt></ruby>れです。これが<ruby>大<rt>おお</rt></ruby>きいと<ruby>精度<rt>せいど</rt></ruby>が<ruby>出<rt>で</rt></ruby>ません。<br>*(Là độ rung nhẹ của trục chính khi quay. Lớn quá là không ra độ chính xác.)* |
| Thái | (chạm đầu đo vào dao) ...0.002mmです。<br>*(... 0.002mm ạ.)* |
| Sakurai | いいですね。<ruby>最後<rt>さいご</rt></ruby>に<ruby>工具<rt>こうぐ</rt></ruby>。<ruby>摩耗品<rt>まもうひん</rt></ruby>はだめです。<ruby>新<rt>あたら</rt></ruby>しいエンドミルを<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Tốt. Cuối cùng là dao. Dao mòn không được. Em dùng dao phay ngón mới đi.)* |
| Thái | (lấy hộp dao mới) これでよろしいですか？<br>*(Cái này được không ạ?)* |
| Sakurai | はい、それで<ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Vâng, cái đó được.)* |

---

## Tình huống 3 — Trước bảng điều khiển NC · 11:00, nhập thông số cắt và quan sát đàn anh

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>切削条件<rt>せっさくじょうけん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れます。V=60m/min。<ruby>通常<rt>つうじょう</rt></ruby>は80ですが、<ruby>今回<rt>こんかい</rt></ruby>は<ruby>遅<rt>おそ</rt></ruby>くします。<br>*(Nhập điều kiện cắt. V=60m/phút. Thường là 80, nhưng lần này chậm hơn.)* |
| Thái | <ruby>遅<rt>おそ</rt></ruby>くする<ruby>理由<rt>りゆう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Tại sao phải chậm hơn ạ?)* |
| Sakurai | <ruby>速<rt>はや</rt></ruby>いと<ruby>熱<rt>ねつ</rt></ruby>が<ruby>出<rt>で</rt></ruby>て、<ruby>素材<rt>そざい</rt></ruby>が<ruby>膨張<rt>ぼうちょう</rt></ruby>します。<ruby>寸法<rt>すんぽう</rt></ruby>が<ruby>狂<rt>くる</rt></ruby>うんです。<br>*(Nhanh thì sinh nhiệt, phôi giãn nở. Kích thước sai đi.)* |
| Thái | なるほど、<ruby>熱<rt>ねつ</rt></ruby><ruby>膨張<rt>ぼうちょう</rt></ruby>のためですね。<br>*(Ra là vì giãn nở nhiệt ạ.)* |
| Sakurai | そうです。<ruby>送<rt>おく</rt></ruby>りは0.05mm/<ruby>刃<rt>は</rt></ruby>。<ruby>通常<rt>つうじょう</rt></ruby>0.1ですから<ruby>半分<rt>はんぶん</rt></ruby>です。<br>*(Đúng. Bước tiến 0.05mm/lưỡi. Thường 0.1, tức một nửa.)* |
| Thái | (nhập thông số, lặp lại để xác nhận) V=60、f=0.05、ということですね。<br>*(V=60, f=0.05, đúng không ạ.)* |
| Sakurai | はい、<ruby>正解<rt>せいかい</rt></ruby>です。<ruby>加工<rt>かこう</rt></ruby><ruby>開始<rt>かいし</rt></ruby>のボタンを<ruby>押<rt>お</rt></ruby>してください。<br>*(Vâng, đúng rồi. Em bấm nút bắt đầu gia công.)* |
| Thái | (bấm nút, máy bắt đầu chạy) <ruby>動<rt>うご</rt></ruby>き<ruby>始<rt>はじ</rt></ruby>めました。<br>*(Máy bắt đầu chạy rồi ạ.)* |
| Sakurai | <ruby>完了<rt>かんりょう</rt></ruby>まで4<ruby>時間<rt>じかん</rt></ruby>かかります。<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>離<rt>はな</rt></ruby>れないでください。<br>*(Đến khi xong mất 4 tiếng. Giữa chừng đừng rời máy.)* |
| Thái | え、4<ruby>時間<rt>じかん</rt></ruby>もですか！<br>*(Ơ, những 4 tiếng ạ!)* |
| Sakurai | <ruby>精密<rt>せいみつ</rt></ruby>はとにかく<ruby>遅<rt>おそ</rt></ruby>いです。<ruby>諦<rt>あきら</rt></ruby>めずに<ruby>見守<rt>みまも</rt></ruby>ってください。<ruby>異音<rt>いおん</rt></ruby>がしたらすぐ<ruby>止<rt>と</rt></ruby>めてください。<br>*(Gia công tinh đằng nào cũng chậm. Đừng nản, theo dõi sát. Nghe tiếng lạ thì dừng ngay.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 4 — Phòng đo CMM · 15:30, báo cáo kết quả đo và học tên máy Mitutoyo

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>加工<rt>かこう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。CMMで<ruby>測定<rt>そくてい</rt></ruby>しましょう。<br>*(Gia công xong. Mình đo bằng CMM nào.)* |
| Thái | すみません、CMMというのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, CMM là gì ạ?)* |
| Sakurai | Coordinate Measuring Machine、<ruby>三次元<rt>さんじげん</rt></ruby><ruby>測定機<rt>そくていき</rt></ruby>です。ミツトヨのCRYSTAという<ruby>機種<rt>きしゅ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っています。<br>*(Coordinate Measuring Machine, máy đo toạ độ ba chiều. Mình dùng dòng CRYSTA của Mitutoyo.)* |
| Thái | <ruby>三次元<rt>さんじげん</rt></ruby><ruby>測定機<rt>そくていき</rt></ruby>ですね。メモします。<br>*(Máy đo ba chiều ạ. Em ghi lại.)* |
| Sakurai | (đặt sản phẩm lên bàn đo) <ruby>見<rt>み</rt></ruby>ていてください。プローブが<ruby>自動<rt>じどう</rt></ruby>で<ruby>表面<rt>ひょうめん</rt></ruby>に<ruby>触<rt>ふ</rt></ruby>れます。<br>*(Em nhìn nhé. Đầu dò sẽ tự chạm vào bề mặt.)* |
| Thái | (quan sát) すごいですね、<ruby>自動<rt>じどう</rt></ruby>で<ruby>動<rt>うご</rt></ruby>くんですか。<br>*(Hay quá, máy chạy tự động luôn ạ.)* |
| Sakurai | はい。プログラムを<ruby>組<rt>く</rt></ruby>めば<ruby>何度<rt>なんど</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ<ruby>点<rt>てん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>れます。<br>*(Vâng. Lập trình rồi thì đo cùng một điểm bao nhiêu lần cũng được.)* |
| (kết quả hiện trên màn hình) | |
| Sakurai | <ruby>結果<rt>けっか</rt></ruby>です。20.000±0.005mm。<ruby>仕様<rt>しよう</rt></ruby>は±0.01<ruby>以内<rt>いない</rt></ruby>なのでOKです。<br>*(Kết quả: 20.000±0.005mm. Quy cách trong ±0.01, đạt.)* |
| Thái | <ruby>測定<rt>そくてい</rt></ruby><ruby>結果<rt>けっか</rt></ruby>は0.005mm<ruby>以内<rt>いない</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby>ですね！<br>*(Kết quả đo nằm trong 0.005mm. Đạt rồi ạ!)* |
| Sakurai | <ruby>初<rt>はじ</rt></ruby>めての<ruby>精密<rt>せいみつ</rt></ruby><ruby>加工<rt>かこう</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>、よくできました。<br>*(Lần đầu phay tinh đã đạt, làm tốt lắm.)* |
| Thái | (cúi đầu) ありがとうございます！<br>*(Em cảm ơn anh ạ!)* |

---

## Tình huống 5 — Trước máy phay · 16:30, báo cáo 報連相 với 工場長

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>中級<rt>ちゅうきゅう</rt></ruby><ruby>精密<rt>せいみつ</rt></ruby><ruby>加工<rt>かこう</rt></ruby>、<ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Thưa trưởng nhà máy, em xin báo cáo. Ca gia công tinh trung cấp hôm nay đã xong an toàn.)* |
| Tanaka | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>結果<rt>けっか</rt></ruby>はどうでしたか？<br>*(Vất vả rồi. Kết quả ra sao?)* |
| Thái | <ruby>測定<rt>そくてい</rt></ruby><ruby>結果<rt>けっか</rt></ruby>は20.000±0.005mmで、<ruby>仕様<rt>しよう</rt></ruby>の±0.01<ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まりました。<br>*(Kết quả đo 20.000±0.005mm, nằm trong quy cách ±0.01 ạ.)* |
| Tanaka | おお、<ruby>初回<rt>しょかい</rt></ruby>でその<ruby>精度<rt>せいど</rt></ruby>はすごいね。<ruby>桜井<rt>さくらい</rt></ruby>くんは<ruby>何<rt>なん</rt></ruby>と？<br>*(Ồ, lần đầu mà đạt thế là giỏi đấy. Anh Sakurai nói sao?)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>からは「よくできました」と<ruby>言<rt>い</rt></ruby>っていただきました。<br>*(Anh Sakurai có khen em "làm tốt".)* |
| Tanaka | よかった。<ruby>来週<rt>らいしゅう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>顧客<rt>こきゃく</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>が3<ruby>件<rt>けん</rt></ruby><ruby>入<rt>はい</rt></ruby>っています。<ruby>続<rt>つづ</rt></ruby>けて<ruby>頼<rt>たの</rt></ruby>みます。<br>*(Tốt. Tuần sau có thêm 3 đơn cùng khách đó. Em làm tiếp nhé.)* |
| Thái | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em rất mong được nhận ạ.)* |
| Tanaka | <ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてくださいね。<ruby>遠慮<rt>えんりょ</rt></ruby>しないで。<br>*(Có gì không hiểu nhớ hỏi nhé. Đừng ngại.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報連相<rt>ほうれんそう</rt></ruby>します。<br>*(Vâng, em nhất định 報連相 đầy đủ.)* |

---

## Tình huống 6 — Phòng thiết kế · 17:30, Kawakami giới thiệu Moldex3D và xin được học

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>今<rt>いま</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>ある？Moldex3Dのシミュレーションを<ruby>見<rt>み</rt></ruby>せたいんだけど。<br>*(Thái, vất vả rồi. Bây giờ rảnh không? Anh muốn cho em xem mô phỏng Moldex3D.)* |
| Thái | はい、ぜひ<ruby>見<rt>み</rt></ruby>せてください。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, anh cho em xem với. Em xin nhờ ạ.)* |
| Kawakami | Moldex3Dは<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>成形<rt>せいけい</rt></ruby>のシミュレーションソフトです。<ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れ、<ruby>冷却<rt>れいきゃく</rt></ruby>、<ruby>反<rt>そ</rt></ruby>りを<ruby>事前<rt>じぜん</rt></ruby>に<ruby>予測<rt>よそく</rt></ruby>できます。<br>*(Moldex3D là phần mềm mô phỏng ép phun. Dự đoán trước được dòng chảy nhựa, làm nguội, cong vênh.)* |
| Thái | すみません、「<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>成形<rt>せいけい</rt></ruby>」というのは<ruby>金型<rt>かながた</rt></ruby>に<ruby>樹脂<rt>じゅし</rt></ruby>を<ruby>流<rt>なが</rt></ruby>す<ruby>工程<rt>こうてい</rt></ruby>のことですか？<br>*(Xin lỗi, "ép phun" là công đoạn bơm nhựa vào khuôn phải không ạ?)* |
| Kawakami | そのとおりです。よく<ruby>分<rt>わ</rt></ruby>かりましたね。<br>*(Đúng vậy. Em hiểu nhanh đấy.)* |
| Kawakami | (mở phần mềm) <ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>赤<rt>あか</rt></ruby>は<ruby>高温<rt>こうおん</rt></ruby>、<ruby>青<rt>あお</rt></ruby>は<ruby>低温<rt>ていおん</rt></ruby>。<ruby>冷却<rt>れいきゃく</rt></ruby>むらが<ruby>一目<rt>ひとめ</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かります。<br>*(Em xem màn hình. Đỏ là nhiệt cao, xanh là nhiệt thấp. Thấy ngay chỗ nguội không đều.)* |
| Thái | わあ、3Dの<ruby>動画<rt>どうが</rt></ruby>ですね。これを<ruby>使<rt>つか</rt></ruby>えば<ruby>反<rt>そ</rt></ruby>りの<ruby>事故<rt>じこ</rt></ruby>を<ruby>予防<rt>よぼう</rt></ruby>できますね！<br>*(Ô, hình động 3D! Dùng cái này thì phòng được sự cố cong vênh quá!)* |
| Kawakami | そうです。<ruby>来年<rt>らいねん</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby><ruby>部<rt>ぶ</rt></ruby>でMoldex3Dを<ruby>使<rt>つか</rt></ruby>う<ruby>機会<rt>きかい</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>していますよ。<br>*(Đúng. Sang năm bên thiết kế đang sắp xếp cho em cơ hội dùng Moldex3D.)* |
| Thái | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか。ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>頑張<rt>がんば</rt></ruby>って<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Ơ, thật ạ. Em rất mong được nhận. Em sẽ cố gắng học.)* |
| Kawakami | まずは<ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>物性<rt>ぶっせい</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでおいてください。<ruby>明日<rt>あした</rt></ruby><ruby>貸<rt>か</rt></ruby>しますね。<br>*(Trước tiên em đọc trước sách về tính chất nhựa nhé. Mai anh cho mượn.)* |
| Thái | ありがとうございます。<ruby>必<rt>かなら</rt></ruby>ず<ruby>読<rt>よ</rt></ruby>みます。<br>*(Em cảm ơn anh. Em nhất định sẽ đọc.)* |

---

## Tình huống 7 — Hành lang xưởng · 18:00, hỏi 先輩 cách báo cáo nếu thấy dấu hiệu lạ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Anh Sakurai, em hỏi thêm một câu được không ạ?)* |
| Sakurai | はい、どうぞ。<br>*(Ừ, hỏi đi.)* |
| Thái | <ruby>加工<rt>かこう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>異音<rt>いおん</rt></ruby>がしたら、まず<ruby>誰<rt>だれ</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>すればいいですか？<br>*(Trong lúc gia công nếu có tiếng lạ thì em báo cho ai trước ạ?)* |
| Sakurai | まず<ruby>機械<rt>きかい</rt></ruby>を<ruby>止<rt>と</rt></ruby>めます。それから<ruby>私<rt>わたし</rt></ruby>に<ruby>内線<rt>ないせん</rt></ruby>2003。<ruby>不在<rt>ふざい</rt></ruby>なら<ruby>工場長<rt>こうじょうちょう</rt></ruby>に。<br>*(Đầu tiên dừng máy. Sau đó gọi nội bộ 2003 cho anh. Anh vắng thì gọi trưởng nhà máy.)* |
| Thái | <ruby>機械停止<rt>きかいていし</rt></ruby>→<ruby>桜井<rt>さくらい</rt></ruby>さん→<ruby>工場長<rt>こうじょうちょう</rt></ruby>、ということですね。<br>*(Dừng máy → anh Sakurai → trưởng nhà máy, đúng không ạ.)* |
| Sakurai | はい、その<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>間違<rt>まちが</rt></ruby>いないです。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しないこと。<br>*(Đúng, theo thứ tự đó là chuẩn. Đừng tự quyết.)* |
| Thái | はい。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>しない、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報連相<rt>ほうれんそう</rt></ruby>します。<br>*(Vâng. Không tự quyết, nhất định 報連相 ạ.)* |
| Sakurai | それができれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>来年<rt>らいねん</rt></ruby>には<ruby>設計<rt>せっけい</rt></ruby>に<ruby>行<rt>い</rt></ruby>けるよ。<br>*(Làm được vậy là ổn. Sang năm em qua thiết kế được rồi đấy.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn anh ạ.)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, đồng phòng người Indonesia (cảnh tiếng Nhật)

| Vai | Lời thoại |
|---|---|
| Putra | タイ、<ruby>今日<rt>きょう</rt></ruby>はどうだった？<br>*(Thái, hôm nay thế nào?)* |
| Thái | <ruby>初<rt>はじ</rt></ruby>めて±0.01の<ruby>精密<rt>せいみつ</rt></ruby><ruby>加工<rt>かこう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>されました。<ruby>結果<rt>けっか</rt></ruby>は0.005<ruby>以内<rt>いない</rt></ruby>でした。<br>*(Em được giao gia công tinh ±0.01 lần đầu. Kết quả trong 0.005.)* |
| Putra | おお、<ruby>合格<rt>ごうかく</rt></ruby>だね！おめでとう。<br>*(Ô, đạt rồi! Chúc mừng.)* |
| Thái | ありがとう。それと<ruby>川上<rt>かわかみ</rt></ruby>さんがMoldex3Dを<ruby>見<rt>み</rt></ruby>せてくれました。<ruby>来年<rt>らいねん</rt></ruby>から<ruby>使<rt>つか</rt></ruby>えるそうです。<br>*(Cảm ơn. Với cả anh Kawakami cho xem Moldex3D. Nghe nói sang năm em được dùng.)* |
| Putra | <ruby>設計<rt>せっけい</rt></ruby><ruby>者<rt>しゃ</rt></ruby>になる<ruby>夢<rt>ゆめ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づいたね。<br>*(Sắp gần với giấc mơ thành kỹ sư thiết kế rồi.)* |
| Thái | (im lặng một lúc) プトラさんは<ruby>来年<rt>らいねん</rt></ruby>どうしますか？<br>*(Còn anh Putra sang năm tính sao?)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>はSSW1で<ruby>残<rt>のこ</rt></ruby>り2<ruby>年<rt>ねん</rt></ruby>。それから<ruby>帰<rt>かえ</rt></ruby>るかSSW2を<ruby>受<rt>う</rt></ruby>けるか<ruby>悩<rt>なや</rt></ruby>んでいる。<br>*(Tớ SSW1 còn 2 năm. Sau đó về hay thi SSW2 đang phân vân.)* |
| Thái | <ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>りたいですね。<br>*(Em muốn cùng nhau cố gắng.)* |
| Putra | うん。<ruby>明日<rt>あした</rt></ruby>も<ruby>早<rt>はや</rt></ruby>いから<ruby>寝<rt>ね</rt></ruby>よう。おやすみ。<br>*(Ừ. Mai cũng dậy sớm, ngủ thôi. Ngủ ngon.)* |
| Thái | おやすみなさい。<br>*(Chúc anh ngủ ngon.)* |

---

## Tình huống 9 — Phòng 201 · 22:30, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Alô, anh Thái. Hôm nay anh thế nào? |
| Thái | (tiếng Việt) Anh khoẻ em. Hôm nay anh làm 公差 ±0.01mm lần đầu cho khách Toyota Tier-1. Kết quả 0.005, đạt rồi. |
| Mai | (tiếng Việt) 公差 là gì hả anh? |
| Thái | (tiếng Việt) Là dung sai cho phép. ±0.01 nghĩa là cộng trừ một phần trăm milimet thôi. Một sợi tóc dày khoảng 0.07mm, em hình dung nó nhỏ cỡ nào. |
| Mai | (tiếng Việt) Trời, sợi tóc còn dày hơn. Anh đo bằng gì mà chính xác vậy? |
| Thái | (tiếng Việt) Máy CMM của Mitutoyo — máy đo toạ độ ba chiều, có đầu dò tự động chạm vào sản phẩm. Cảm giác như sờ thấy công nghệ thật. |
| Mai | (tiếng Việt) Còn cái Moldex3D anh nhắc tuần trước? |
| Thái | (tiếng Việt) Hôm nay anh Kawakami cho anh xem rồi. Phần mềm mô phỏng ép phun, đoán trước cong vênh bằng màu — đỏ là nóng, xanh là nguội. Sang năm anh được dùng chính thức. |
| Mai | (tiếng Việt) Vậy là anh đang đi đúng hướng kỹ sư thiết kế rồi đó. |
| Thái | (tiếng Việt) Ừ. Anh Sakurai còn nói "sang năm em qua thiết kế được rồi". Anh mừng lắm em. Mà nguyên tắc anh phải nhớ là 報連相 — báo cáo, liên lạc, bàn bạc. Không tự quyết. |
| Mai | (tiếng Việt) Anh nhớ kỹ vô nha. Ngủ sớm đi, mai 7 giờ rưỡi xuống xưởng rồi. |
| Thái | (tiếng Việt) Ừ, em ngủ ngon. Cuối tuần anh gọi lại. |

---

## Đọng lại chương 10

Hôm nay Thái lần đầu được giao **精密加工 ±0.01mm** cho keypiece khách Toyota Tier-1 và đã vượt qua. Học được bộ mẫu câu giao tiếp trong xưởng precision: **nhận chỉ thị 公差** (〜は±0.01mmです), **hỏi lại lễ phép từ chuyên ngành** (〜というのは何ですか? / 〜ということですね), **xác nhận thông số khởi tạo máy** (水平・主軸振れ・摩耗品), **báo cáo kết quả đo CMM** (測定結果は〜です), **báo cáo 報連相 với 工場長** (報告させていただきます), và **xin học công cụ mới** (ぜひ見せてください・お願いします). Quan sát đàn anh Sakurai dạy ba bí quyết phay tinh — **切削速度遅く・送り細かく・工具新品** — và nguyên tắc xử lý sự cố: dừng máy → 内線 cho 先輩 → 工場長, không tự quyết. Buổi chiều bắt gặp tương lai khi anh Kawakami mở **Moldex3D** mô phỏng dòng nhựa cong vênh — sang năm Thái sẽ được dùng chính thức trong công đoạn thiết kế.

> Từ vựng & mẫu câu chương này: 中級精密加工・公差・許容範囲・切削速度・送り・摩耗品・新品・水平・主軸振れ・ダイヤルゲージ・エンドミル・熱膨張・測定・三次元測定機・CMM・ミツトヨCRYSTA・射出成形・樹脂・冷却むら・反り予測・Moldex3D・報連相・内線・異音・〜というのは・〜ということですね・〜以内に収まりました・測定結果は〜です・報告させていただきます・ぜひお願いします

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 中級 | ちゅうきゅう | TRUNG CẤP | Trung cấp |
| 精密 | せいみつ | TINH MẬT | Tinh, chính xác cao |
| 公差 | こうさ | CÔNG SAI | Dung sai |
| 範囲 | はんい | PHẠM VI | Phạm vi |
| 不良品 | ふりょうひん | BẤT LƯƠNG PHẨM | Phế phẩm |
| 許容 | きょよう | HỨA DUNG | Cho phép, dung nạp |
| 顧客 | こきゃく | CỐ KHÁCH | Khách hàng |
| 一次 | いちじ | NHẤT THỨ | Cấp một |
| 新品 | しんぴん | TÂN PHẨM | Hàng mới |
| 以内 | いない | DĨ NỘI | Trong phạm vi |
| 主軸 | しゅじく | CHỦ TRỤC | Trục chính |
| 振れ | ぶれ | CHẤN | Độ đảo, độ rung |
| 回転 | かいてん | HỒI CHUYỂN | Quay |
| 精度 | せいど | TINH ĐỘ | Độ chính xác |
| 摩耗品 | まもうひん | MA HAO PHẨM | Đồ mòn |
| 通常 | つうじょう | THÔNG THƯỜNG | Thông thường |
| 膨張 | ぼうちょう | BÀNH TRƯƠNG | Giãn nở |
| 測定 | そくてい | TRẮC ĐỊNH | Đo kiểm |
| 三次元 | さんじげん | TAM THỨ NGUYÊN | Ba chiều |
| 測定機 | そくていき | TRẮC ĐỊNH CƠ | Máy đo |
| 射出成形 | しゃしゅつせいけい | XẠ XUẤT THÀNH HÌNH | Ép phun |
| 予測 | よそく | DỰ TRẮC | Dự đoán |
| 物性 | ぶっせい | VẬT TÍNH | Tính chất vật liệu |
| 内線 | ないせん | NỘI TUYẾN | Điện thoại nội bộ |
| 不在 | ふざい | BẤT TẠI | Vắng mặt |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000011, 800000015, NULL, 'markdown_book', 'T11. Thi kỹ năng 機械加工 cấp 2 — đỗ (機械加工2級合格)', '# Sách kỹ sư khuôn đúc · T11. Thi kỹ năng 機械加工 cấp 2 — đỗ (機械加工2級合格)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) đi thi chứng chỉ 機械加工技能士 2級 chuyên ngành マシニングセンタ作業 tại Anjo Polytechnic. Học các mẫu hội thoại tiếng Nhật quanh kỳ thi tay nghề ở Nhật: chào hỏi đồng nghiệp cùng thi trước giờ thi, nghe hướng dẫn của 試験官 (giám thị) phần học khoa và thực kỹ, hỏi lại lễ phép khi chưa rõ điều kiện thi (〜というのは?), báo cáo kết quả với 工場長, quan sát đàn anh 先輩 chia sẻ kinh nghiệm thi 1級, và phát biểu khi được nhà máy 朝礼 vinh danh.

---

## Bối cảnh

Tháng 3 năm 2024. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo (Aichi) gần 2 năm, trình độ tiếng Nhật N3. Hôm nay đi thi chứng chỉ quốc gia **機械加工技能士 2級** tại Anjo Polytechnic, cùng đàn anh Sakurai thi lại **1級**. Chương này tập trung các mẫu câu giao tiếp trong kỳ thi tay nghề và phòng làm việc: chào hỏi trước thi, nghe hướng dẫn giám thị, hỏi lại khi chưa rõ, báo cáo kết quả, phát biểu cảm ơn khi được vinh danh.

---

## Tình huống 1 — Trước cổng Anjo Polytechnic · 7:30, chào hỏi đồng nghiệp cùng thi

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>準備<rt>じゅんび</rt></ruby>はできた？<br>*(Thái, chào buổi sáng. Cậu chuẩn bị xong chưa?)* |
| Thái | サクライさん、おはようございます。はい、<ruby>4<rt>よん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>毎晩<rt>まいばん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しました。<ruby>今日<rt>きょう</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Sakurai, chào buổi sáng. Vâng, em đã luyện mỗi tối suốt 4 tháng. Hôm nay xin anh chỉ bảo ạ.)* |
| Sakurai | こちらこそ。<ruby>俺<rt>おれ</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>再受験<rt>さいじゅけん</rt></ruby>だ。<ruby>去年<rt>きょねん</rt></ruby><ruby>実技<rt>じつぎ</rt></ruby>で<ruby>落<rt>お</rt></ruby>ちたから、<ruby>今回<rt>こんかい</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>するぞ。<br>*(Anh cũng vậy. Anh thi lại cấp 1. Năm ngoái trượt phần thực kỹ, lần này nhất định đỗ.)* |
| Thái | すみません、「<ruby>再受験<rt>さいじゅけん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, "再受験" nghĩa là gì ạ?)* |
| Sakurai | もう<ruby>一度<rt>いちど</rt></ruby><ruby>受<rt>う</rt></ruby>けることだよ。<ruby>不合格<rt>ふごうかく</rt></ruby>になったら、<ruby>次<rt>つぎ</rt></ruby>の<ruby>年<rt>とし</rt></ruby>にまた<ruby>挑戦<rt>ちょうせん</rt></ruby>できる。<br>*(Là thi lại một lần nữa. Nếu trượt thì năm sau lại thử.)* |
| Thái | なるほど、もう<ruby>一度<rt>いちど</rt></ruby><ruby>挑戦<rt>ちょうせん</rt></ruby>するということですね。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em hiểu rồi, nghĩa là thử lại một lần nữa ạ. Em học được rồi.)* |
| Sakurai | お<ruby>互<rt>たが</rt></ruby>いに<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>緊張<rt>きんちょう</rt></ruby>するな、<ruby>練習<rt>れんしゅう</rt></ruby>のとおりやればいい。<br>*(Cùng cố lên nào. Đừng căng, cứ làm như lúc luyện là được.)* |
| Thái | はい、ありがとうございます。<ruby>練習<rt>れんしゅう</rt></ruby>のとおりやります。<br>*(Vâng, em cảm ơn anh. Em sẽ làm như lúc luyện ạ.)* |

---

## Tình huống 2 — Phòng thi học khoa · 9:00, nghe hướng dẫn giám thị phần lý thuyết

| Vai | Lời thoại |
|---|---|
| Giám thị | おはようございます。これから<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào buổi sáng. Bây giờ chúng ta bắt đầu phần thi lý thuyết kỹ năng sĩ 機械加工 cấp 2.)* |
| Giám thị | <ruby>問題数<rt>もんだいすう</rt></ruby>は<ruby>50<rt>ごじゅう</rt></ruby><ruby>問<rt>もん</rt></ruby>、<ruby>制限時間<rt>せいげんじかん</rt></ruby>は<ruby>100<rt>ひゃっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>65<rt>ろくじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Số câu hỏi 50, thời gian 100 phút. Điểm đỗ từ 65 điểm trở lên.)* |
| Thái | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）すみません、<ruby>合格<rt>ごうかく</rt></ruby><ruby>点<rt>てん</rt></ruby>というのは<ruby>学科<rt>がっか</rt></ruby>だけですか、それとも<ruby>実技<rt>じつぎ</rt></ruby>も<ruby>含<rt>ふく</rt></ruby>めてですか?<br>*(Giơ tay. Xin lỗi, điểm đỗ là chỉ riêng lý thuyết hay tính cả thực kỹ ạ?)* |
| Giám thị | <ruby>良<rt>よ</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>学科<rt>がっか</rt></ruby>と<ruby>実技<rt>じつぎ</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>65<rt>ろくじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>片方<rt>かたほう</rt></ruby>でも<ruby>不合格<rt>ふごうかく</rt></ruby>なら<ruby>全体<rt>ぜんたい</rt></ruby><ruby>不合格<rt>ふごうかく</rt></ruby>です。<br>*(Câu hỏi hay. Cả lý thuyết và thực kỹ, đều phải từ 65 điểm trở lên. Trượt một bên là trượt tổng thể.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ rồi ạ. Em cảm ơn ạ.)* |
| Giám thị | では<ruby>始<rt>はじ</rt></ruby>めてください。<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>00<rt>ゼロゼロ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>、スタート。<br>*(Vậy mời bắt đầu. 9 giờ 00, bắt đầu.)* |
| Thái | （<ruby>解答用紙<rt>かいとうようし</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>する）<br>*(Điền vào phiếu trả lời.)* |
| Thái | (VN, nội tâm) Câu 1: chọn điều kiện cắt. Vật liệu NAK80, dao φ16, V=80, f=0.1. Mình luyện rồi, chọn được. |
| Thái | (VN, nội tâm) Câu 25: tuổi thọ dao. Phương trình Taylor V·T^n = C. Anh Sakurai dạy hôm tuần trước. |
| Thái | (VN, nội tâm) Câu 45: thiết bị an toàn của máy MC. Rèm sáng quang điện 光線式安全装置. Nhớ rồi. |
| Giám thị | <ruby>終了<rt>しゅうりょう</rt></ruby>です。<ruby>解答用紙<rt>かいとうようし</rt></ruby>を<ruby>裏返<rt>うらがえ</rt></ruby>して<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(Hết giờ. Lật úp phiếu trả lời và đặt lên bàn nhé.)* |

---

## Tình huống 3 — Phòng thực kỹ MC · 13:00, nghe hướng dẫn giám thị phần thực hành

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>午後<rt>ごご</rt></ruby>は<ruby>実技試験<rt>じつぎしけん</rt></ruby>です。<ruby>制限時間<rt>せいげんじかん</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<ruby>要素試験<rt>ようそしけん</rt></ruby>とペーパー<ruby>計画<rt>けいかく</rt></ruby>の<ruby>2<rt>ふた</rt></ruby>つです。<br>*(Buổi chiều là phần thực kỹ. Thời gian 2 tiếng. Gồm 要素試験 và bài kế hoạch trên giấy.)* |
| Thái | すみません、「<ruby>要素試験<rt>ようそしけん</rt></ruby>」というのはどんな<ruby>内容<rt>ないよう</rt></ruby>ですか?<br>*(Xin lỗi, "要素試験" là nội dung gì ạ?)* |
| Giám thị | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、マシニングセンタで<ruby>指定<rt>してい</rt></ruby>された<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>加工<rt>かこう</rt></ruby>する<ruby>試験<rt>しけん</rt></ruby>です。<ruby>段取<rt>だんど</rt></ruby>り、NCプログラム<ruby>編集<rt>へんしゅう</rt></ruby>、<ruby>加工<rt>かこう</rt></ruby>、<ruby>測定<rt>そくてい</rt></ruby>まで<ruby>含<rt>ふく</rt></ruby>みます。<br>*(Là bài thi nhìn bản vẽ rồi gia công bộ phận chỉ định trên máy MC. Bao gồm cả 段取り, chỉnh chương trình NC, gia công và đo kiểm.)* |
| Thái | <ruby>段取<rt>だんど</rt></ruby>りというのは<ruby>機械<rt>きかい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>ということですね。<br>*(段取り tức là chuẩn bị máy đúng không ạ?)* |
| Giám thị | そうです。<ruby>工具<rt>こうぐ</rt></ruby><ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>け、<ruby>原点<rt>げんてん</rt></ruby><ruby>設定<rt>せってい</rt></ruby>、すべて<ruby>含<rt>ふく</rt></ruby>めて<ruby>段取<rt>だんど</rt></ruby>りです。<ruby>図面<rt>ずめん</rt></ruby>はこれ、<ruby>材料<rt>ざいりょう</rt></ruby>は<ruby>各自<rt>かくじ</rt></ruby>の<ruby>机<rt>つくえ</rt></ruby>にあります。<br>*(Đúng. Gắn dao, set gốc, tất cả đều thuộc 段取り. Bản vẽ đây, phôi đã có sẵn trên bàn của từng thí sinh.)* |
| Thái | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>寸法<rt>すんぽう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>は±<ruby>0.02<rt>れいてんれいに</rt></ruby>ですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Xem bản vẽ. Dung sai kích thước ±0.02 đúng không ạ. Em rõ rồi ạ.)* |
| Giám thị | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>してください。では<ruby>始<rt>はじ</rt></ruby>めて。<br>*(Làm việc an toàn là trên hết. Bắt đầu nào.)* |
| Thái | （<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けながら）まず<ruby>段取<rt>だんど</rt></ruby>り、<ruby>次<rt>つぎ</rt></ruby>にNCプログラム<ruby>編集<rt>へんしゅう</rt></ruby>、それから<ruby>加工<rt>かこう</rt></ruby>と<ruby>測定<rt>そくてい</rt></ruby>。<ruby>練習<rt>れんしゅう</rt></ruby>のとおりにやります。<br>*(Vừa gắn dao. Trước tiên 段取り, tiếp theo chỉnh chương trình NC, rồi đến gia công và đo kiểm. Em làm như lúc luyện.)* |

---

## Tình huống 4 — Phòng thực kỹ · 14:30, gặp khó khăn — hỏi lại giám thị

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）すみません、<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Giơ tay. Xin lỗi, em hỏi được không ạ?)* |
| Giám thị | はい、どうぞ。<br>*(Vâng, mời.)* |
| Thái | <ruby>図面<rt>ずめん</rt></ruby>の<ruby>右下<rt>みぎした</rt></ruby>に「Ra<ruby>1.6<rt>いってんろく</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。これは<ruby>表面<rt>ひょうめん</rt></ruby><ruby>粗<rt>あら</rt></ruby>さの<ruby>指示<rt>しじ</rt></ruby>ですか?<br>*(Ở góc dưới phải bản vẽ ghi "Ra1.6". Đây là chỉ định độ nhám bề mặt phải không ạ?)* |
| Giám thị | はい、そうです。<ruby>表面<rt>ひょうめん</rt></ruby><ruby>粗<rt>あら</rt></ruby>さ<ruby>1.6<rt>いってんろく</rt></ruby>マイクロメートルです。<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>加工<rt>かこう</rt></ruby>で<ruby>達成<rt>たっせい</rt></ruby>してください。<br>*(Vâng, đúng vậy. Độ nhám bề mặt 1.6 micromet. Cần đạt được ở khâu gia công tinh.)* |
| Thái | <ruby>仕上<rt>しあ</rt></ruby>げ<ruby>送<rt>おく</rt></ruby>りを<ruby>下<rt>さ</rt></ruby>げて、<ruby>回転<rt>かいてん</rt></ruby><ruby>数<rt>すう</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げるということですね。ありがとうございます。<br>*(Tức là giảm tốc độ tiến và tăng số vòng quay ạ. Em cảm ơn ạ.)* |
| Giám thị | そうですね。<ruby>判断<rt>はんだん</rt></ruby>は<ruby>受験者<rt>じゅけんしゃ</rt></ruby><ruby>本人<rt>ほんにん</rt></ruby>でしてください。<br>*(Đúng vậy. Việc quyết định là do thí sinh tự làm.)* |
| Thái | はい、<ruby>自分<rt>じぶん</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>します。<ruby>失礼<rt>しつれい</rt></ruby>しました。<br>*(Vâng, em sẽ tự quyết định. Em xin lỗi đã làm phiền.)* |
| Thái | （<ruby>加工<rt>かこう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>ける、<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分後<rt>ふんご</rt></ruby><ruby>完成<rt>かんせい</rt></ruby>）<br>*(Tiếp tục gia công, 30 phút sau hoàn tất.)* |
| Thái | <ruby>提出<rt>ていしゅつ</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em nộp bài ạ. Mong thầy chấm cho ạ.)* |

---

## Tình huống 5 — Trước cổng trường · 16:00, trao đổi cảm nhận với đàn anh

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。どうだった?<br>*(Thái, vất vả rồi. Thế nào?)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>そうです。<ruby>表面<rt>ひょうめん</rt></ruby><ruby>粗<rt>あら</rt></ruby>さのところで<ruby>少<rt>すこ</rt></ruby>し<ruby>悩<rt>なや</rt></ruby>みましたが、<ruby>試験官<rt>しけんかん</rt></ruby>に<ruby>質問<rt>しつもん</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Anh vất vả rồi ạ. Em thấy ổn. Em hơi phân vân chỗ độ nhám bề mặt, nhưng đã hỏi giám thị để xác nhận.)* |
| Sakurai | それでいいんだ。<ruby>分<rt>わ</rt></ruby>からないことを<ruby>聞<rt>き</rt></ruby>くのは<ruby>恥<rt>はず</rt></ruby>かしいことじゃない。<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>も<ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>試験官<rt>しけんかん</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いた。<br>*(Vậy là tốt. Hỏi cái mình không biết không có gì xấu hổ. Cấp 1 anh cũng hỏi giám thị 2 lần.)* |
| Thái | <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>如何<rt>いかが</rt></ruby>でしたか?<br>*(Cấp 1 anh thấy thế nào ạ?)* |
| Sakurai | <ruby>今回<rt>こんかい</rt></ruby>は<ruby>自信<rt>じしん</rt></ruby>あり。<ruby>去年<rt>きょねん</rt></ruby><ruby>落<rt>お</rt></ruby>ちたところを<ruby>重点<rt>じゅうてん</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>した。<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>面<rt>めん</rt></ruby>の<ruby>粗<rt>あら</rt></ruby>さがポイントだった。<br>*(Lần này anh tự tin. Anh tập trung luyện đúng chỗ năm ngoái trượt. Độ nhám bề mặt khi gia công tinh chính là điểm mấu chốt.)* |
| Thái | <ruby>同<rt>おな</rt></ruby>じところですね。やはり<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>加工<rt>かこう</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Cũng cùng chỗ đó ạ. Quả là gia công tinh khó thật.)* |
| Sakurai | <ruby>結果<rt>けっか</rt></ruby>は<ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月後<rt>げつご</rt></ruby>に<ruby>来<rt>く</rt></ruby>る。<ruby>飲<rt>の</rt></ruby>みに<ruby>行<rt>い</rt></ruby>くか?<br>*(Kết quả 1 tháng nữa về. Đi nhậu không?)* |
| Thái | はい、ぜひ。<br>*(Vâng, đi chứ ạ.)* |

---

## Tình huống 6 — Phòng 工場長 · 4/2024, báo cáo kết quả đỗ với cấp trên

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>協会<rt>きょうかい</rt></ruby>から<ruby>結果<rt>けっか</rt></ruby>の<ruby>封筒<rt>ふうとう</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたぞ。<br>*(Thái, phong bì kết quả từ hiệp hội đã đến rồi đây.)* |
| Thái | ありがとうございます。<ruby>失礼<rt>しつれい</rt></ruby>します...（<ruby>封筒<rt>ふうとう</rt></ruby>を<ruby>開<rt>あ</rt></ruby>ける）<br>*(Em cảm ơn ạ. Em xin phép... Mở phong bì.)* |
| Thái | <ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しました! <ruby>学科<rt>がっか</rt></ruby><ruby>72<rt>ななじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>68<rt>ろくじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Trưởng nhà máy, em đỗ rồi ạ! Lý thuyết 72 điểm, thực kỹ 68 điểm ạ.)* |
| Tanaka | おめでとう! <ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>とは、<ruby>大<rt>たい</rt></ruby>したものだ。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Chúc mừng! 2 năm mà đỗ cấp 2, giỏi đấy. Cậu cố gắng tốt lắm.)* |
| Thái | みなさまのおかげです。サクライさんに<ruby>4<rt>よん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby><ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Nhờ mọi người ạ. Em được anh Sakurai dạy 4 tháng liền.)* |
| Tanaka | サクライ<ruby>君<rt>くん</rt></ruby>はどうだった?<br>*(Sakurai thế nào rồi?)* |
| Sakurai | （<ruby>入<rt>はい</rt></ruby>ってくる）<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>俺<rt>おれ</rt></ruby>も<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Bước vào. Trưởng nhà máy, em xin phép. Em cũng đỗ cấp 1 rồi ạ!)* |
| Tanaka | <ruby>二人<rt>ふたり</rt></ruby>とも<ruby>合格<rt>ごうかく</rt></ruby>か! <ruby>本当<rt>ほんとう</rt></ruby>におめでとう。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りだ。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>発表<rt>はっぴょう</rt></ruby>するから、<ruby>準備<rt>じゅんび</rt></ruby>しておいて。<br>*(Cả hai cùng đỗ! Chúc mừng thật sự. Là niềm tự hào của công ty. Tuần sau anh sẽ công bố ở 朝礼, hai em chuẩn bị trước nhé.)* |
| Thái | はい、ありがとうございます。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em cảm ơn ạ. Em rõ rồi ạ.)* |

---

## Tình huống 7 — Khu hút thuốc · giờ nghỉ, quan sát đàn anh chia sẻ bí quyết

| Vai | Lời thoại |
|---|---|
| Thái | サクライさん、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>におめでとうございます。<br>*(Anh Sakurai, chúc mừng anh đỗ cấp 1 thực sự ạ.)* |
| Sakurai | ありがとう。タイ<ruby>君<rt>くん</rt></ruby>もよくやった。<br>*(Cảm ơn. Thái cũng giỏi lắm.)* |
| Thái | あの、<ruby>聞<rt>き</rt></ruby>いてもいいですか? <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>と<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(À, em hỏi được không ạ? Sự khác nhau giữa cấp 1 và cấp 2 là gì ạ?)* |
| Sakurai | <ruby>公差<rt>こうさ</rt></ruby>がもっと<ruby>厳<rt>きび</rt></ruby>しい。<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は±<ruby>0.02<rt>れいてんれいに</rt></ruby>だが、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は±<ruby>0.01<rt>れいてんれいいち</rt></ruby>。<ruby>仕上<rt>しあ</rt></ruby>げ<ruby>面<rt>めん</rt></ruby>もRa<ruby>0.8<rt>れいてんはち</rt></ruby>になる。<br>*(Dung sai khắt khe hơn. Cấp 2 là ±0.02, cấp 1 là ±0.01. Bề mặt gia công tinh cũng phải đạt Ra0.8.)* |
| Thái | すみません、「<ruby>公差<rt>こうさ</rt></ruby>」というのは?<br>*(Xin lỗi, "公差" nghĩa là gì ạ?)* |
| Sakurai | <ruby>許<rt>ゆる</rt></ruby>される<ruby>誤差<rt>ごさ</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>のことだ。±<ruby>0.02<rt>れいてんれいに</rt></ruby>なら、<ruby>図面<rt>ずめん</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby>から<ruby>上下<rt>じょうげ</rt></ruby><ruby>0.02<rt>れいてんれいに</rt></ruby>ミリまでOKということ。<br>*(Là phạm vi sai số được cho phép. ±0.02 nghĩa là từ kích thước trên bản vẽ, sai lệch lên xuống 0.02mm là OK.)* |
| Thái | なるほど、<ruby>許<rt>ゆる</rt></ruby>される<ruby>範囲<rt>はんい</rt></ruby>ということですね。<br>*(Ra vậy, là phạm vi được cho phép.)* |
| Sakurai | <ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>は<ruby>計画書<rt>けいかくしょ</rt></ruby>も<ruby>書<rt>か</rt></ruby>く。<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>、<ruby>使用工具<rt>しようこうぐ</rt></ruby>、<ruby>切削条件<rt>せっさくじょうけん</rt></ruby>を<ruby>文章<rt>ぶんしょう</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>する。<ruby>日本語<rt>にほんご</rt></ruby><ruby>力<rt>りょく</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>だ。<br>*(Cấp 1 phải viết cả kế hoạch. Phải mô tả bằng văn trình tự thao tác, dụng cụ dùng, điều kiện cắt. Cần cả khả năng tiếng Nhật.)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。サクライさんに<ruby>教<rt>おし</rt></ruby>えていただきたいです。<br>*(Năm thứ 3 em sẽ nhắm cấp 1. Mong anh chỉ bảo em ạ.)* |
| Sakurai | もちろん。<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるのが<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だ。<br>*(Tất nhiên. Đào tạo đàn em là việc của đàn anh mà.)* |

---

## Tình huống 8 — Sảnh nhà máy · sáng tuần sau, 朝礼 vinh danh

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>では、<ruby>嬉<rt>うれ</rt></ruby>しい<ruby>発表<rt>はっぴょう</rt></ruby>があります。<br>*(Mọi người, chào buổi sáng. 朝礼 hôm nay có công bố vui.)* |
| Tanaka | <ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>が<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>検定<rt>けんてい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました!<br>*(Hai người của công ty đã đỗ kỳ thi kỹ năng sĩ 機械加工!)* |
| Tanaka | サクライ<ruby>君<rt>くん</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>! <ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>てください。<br>*(Sakurai, đỗ cấp 1! Mời ra phía trước.)* |
| Cả nhà máy | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |
| Sakurai | <ruby>皆<rt>みな</rt></ruby>さんのご<ruby>指導<rt>しどう</rt></ruby>のおかげです。これからも<ruby>精度<rt>せいど</rt></ruby>を<ruby>追求<rt>ついきゅう</rt></ruby>します。ありがとうございました。<br>*(Nhờ sự chỉ bảo của mọi người ạ. Từ nay em vẫn theo đuổi độ chính xác. Em cảm ơn ạ.)* |
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>! タイ<ruby>君<rt>くん</rt></ruby>は<ruby>外国人<rt>がいこくじん</rt></ruby>で、<ruby>入社<rt>にゅうしゃ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>。<ruby>稀<rt>まれ</rt></ruby>な<ruby>例<rt>れい</rt></ruby>です!<br>*(Thái, đỗ cấp 2! Thái là người nước ngoài, vào công ty 2 năm đã đỗ cấp 2. Trường hợp hiếm có!)* |
| Cả nhà máy | （<ruby>拍手<rt>はくしゅ</rt></ruby><ruby>大<rt>おお</rt></ruby>きく）<br>*(Vỗ tay lớn.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>皆<rt>みな</rt></ruby>さま、おはようございます。グエン・ヴァン・タイです。<br>*(Cúi đầu. Kính chào mọi người. Em là Nguyễn Văn Thái.)* |
| Thái | <ruby>合格<rt>ごうかく</rt></ruby>できたのは、サクライ<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>毎晩<rt>まいばん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>に<ruby>付<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>っていただいたおかげです。<ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>皆<rt>みな</rt></ruby>さま、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Em đỗ được là nhờ đàn anh Sakurai tối nào cũng kèm luyện cùng. Trưởng nhà máy, mọi người, em xin chân thành cảm ơn ạ.)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>には<ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Năm thứ 3 em sẽ phấn đấu cấp 1. Mong mọi người tiếp tục chỉ bảo ạ.)* |
| Cả nhà máy | （<ruby>拍手<rt>はくしゅ</rt></ruby>）<br>*(Vỗ tay.)* |

---

## Tình huống 9 — Phòng 201 · 22:00, gọi điện về cho mẹ và Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, con báo tin vui. Hôm nay con đỗ chứng chỉ 機械加工 cấp 2 rồi! |
| Mẹ Thái | (tiếng Việt) Ôi con trai mẹ! Thế là giỏi quá rồi. Mẹ cứ lo con thi rớt thì áp lực. |
| Thái | (tiếng Việt) Anh Sakurai cũng đỗ cấp 1 mẹ ạ. Năm ngoái anh ấy rớt thực kỹ, năm nay luyện lại rồi đỗ. |
| Mai | (tiếng Việt, ghé vào) Anh ơi! Chúc mừng anh nha! Cấp 2 nghĩa là gì vậy? |
| Thái | (tiếng Việt) Ở Nhật có hệ thống 技能士 — kỹ năng sĩ — chia ra cấp 3, cấp 2, cấp 1. Cấp 2 là trung cấp, dung sai ±0.02mm. Cấp 1 mới là cao cấp, dung sai chỉ ±0.01. |
| Mai | (tiếng Việt) Người Việt mình hay nói "thợ giỏi", còn bên Nhật phải có giấy chứng nhận quốc gia hả anh? |
| Thái | (tiếng Việt) Đúng rồi em. Hôm nay 工場長 — ông Tanaka — vinh danh trước cả nhà máy. Anh được phát biểu trên 朝礼 — buổi họp sáng. Hơn 80 người vỗ tay. Anh cảm ơn anh Sakurai trước mặt mọi người. |
| Mẹ Thái | (tiếng Việt) Vậy là 2 năm rồi đấy. Còn 3 năm visa nữa. |
| Thái | (tiếng Việt) Vâng mẹ. Mục tiêu năm thứ 3 của con là 1級. Anh Sakurai hứa kèm con luyện 計画書 — bài viết kế hoạch bằng tiếng Nhật. |
| Mai | (tiếng Việt) Em ghi vào sổ rồi: 公差 là dung sai, 段取り là chuẩn bị máy, 仕上げ là gia công tinh. Khi nào anh về, em đọc cho anh kiểm tra. |
| Thái | (tiếng Việt) Em chịu khó ghê. Thôi mẹ với em đi ngủ đi, mai con còn đi làm. |
| Mẹ Thái | (tiếng Việt) Ừ. Ngủ ngon con. Giữ sức khoẻ. |

---

## Đọng lại chương 11

Sau gần 2 năm ở Nhật, Thái lần đầu trải qua một kỳ thi tay nghề quốc gia và học được các mẫu hội thoại chuyên dùng: **chào hỏi đồng nghiệp cùng thi** (準備はできた?・お互いに頑張ろう), **nghe hướng dẫn giám thị** (制限時間・合格点・要素試験), **hỏi lại lễ phép khi chưa rõ** (〜というのは何ですか?・〜ということですね), **báo cáo kết quả với 工場長** (合格しました・〜点です), **quan sát đàn anh chia sẻ bí quyết 1級** (公差・許される誤差・計画書), và **phát biểu cảm ơn trên 朝礼** (皆さまのご指導のおかげです・これからもよろしくお願いいたします). Đồng thời nhận ra triết lý nghề kỹ sư khuôn ở Nhật — hỏi cái mình không biết không xấu hổ, đàn anh có trách nhiệm đào tạo đàn em (後輩を育てる), và mỗi mức bằng cấp gắn với một mức độ chính xác cụ thể (cấp 2 ±0.02, cấp 1 ±0.01).

> Từ vựng & mẫu câu chương này: 機械加工技能士・2級・1級・再受験・学科・実技・要素試験・制限時間・合格点・段取り・NCプログラム・編集・寸法公差・表面粗さ・仕上げ加工・切削条件・工具寿命・テイラー方程式・光線式安全装置・図面・朝礼・発表・後輩を育てる・〜というのは・〜ということですね・お疲れさまでした・皆さまのご指導のおかげです・これからもよろしくお願いいたします

## Bí quyết chương

- **Đỉnh điểm luyện tập 4 tháng**: Thái + Sakurai cùng luyện mỗi tối — đây là thành quả đầu tiên có giấy chứng nhận quốc gia.
- **Khởi đầu cho 1級 năm 3**: Thái tuyên bố nhắm 1級 — sẽ kết quả thấy ở sách 16 (Year 3).
- **Sakurai làm 先輩 chính**: từ chương này trở đi, Sakurai là người dạy Thái về 公差・計画書.
- **Hệ chứng chỉ 技能士**: 3級 (nhập môn) → 2級 (trung cấp) → 1級 (cao cấp), tương ứng dung sai siết dần.

> *"4/2024. Đỗ 機械加工 2級 sau 2 năm. Mục tiêu năm 3: 1級."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 毎晩 | まいばん | MỖI VÃN | Mỗi tối |
| 機械加工 | きかいかこう | CƠ GIỚI GIA CÔNG | Gia công cơ khí |
| 技能士 | ぎのうし | KỸ NĂNG SĨ | Kỹ năng sĩ (chứng chỉ) |
| 学科 | がっか | HỌC KHOA | Lý thuyết, học khoa |
| 問題数 | もんだいすう | VẤN ĐỀ SỐ | Số câu hỏi |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | Thời gian giới hạn |
| 両方 | りょうほう | LƯỠNG PHƯƠNG | Cả hai bên |
| 解答用紙 | かいとうようし | GIẢI ĐÁP DỤNG CHỈ | Phiếu trả lời |
| 工具寿命 | こうぐじゅみょう | CÔNG CỤ THỌ MỆNH | Tuổi thọ dao |
| 光線式安全装置 | こうせんしきあんぜんそうち | QUANG TUYẾN THỨC AN TOÀN TRANG TRÍ | Rèm sáng quang điện |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| 要素試験 | ようそしけん | YẾU TỐ THÍ NGHIỆM | Bài thi yếu tố |
| 編集 | へんしゅう | BIÊN TẬP | Biên tập, chỉnh sửa |
| 工具取り付け | こうぐとりつけ | CÔNG CỤ THỦ PHÓ | Gắn dụng cụ |
| 寸法公差 | すんぽうこうさ | THỐN PHÁP CÔNG SAI | Dung sai kích thước |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | An toàn là trên hết |
| 指示 | しじ | CHỈ THỊ | Chỉ định |
| 仕上げ加工 | しあげかこう | SĨ THƯỢNG GIA CÔNG | Gia công tinh |
| 達成 | たっせい | ĐẠT THÀNH | Đạt được |
| 受験者 | じゅけんしゃ | THỤ NGHIỆM GIẢ | Thí sinh |
| 試験官 | しけんかん | THÍ NGHIỆM QUAN | Giám thị |
| 自信 | じしん | TỰ TÍN | Tự tin |
| 重点的 | じゅうてんてき | TRỌNG ĐIỂM ĐÍCH | Trọng điểm |
| 仕上げ面 | しあげめん | SĨ THƯỢNG DIỆN | Mặt gia công tinh |
| 協会 | きょうかい | HIỆP HỘI | Hiệp hội |
| 封筒 | ふうとう | PHONG ĐỒNG | Phong bì |
| 計画書 | けいかくしょ | KẾ HOẠCH THƯ | Bản kế hoạch |
| 作業手順 | さぎょうてじゅん | TÁC NGHIỆP THỦ TUẦN | Trình tự thao tác |
| 後輩 | こうはい | HẬU BỐI | Đàn em |
| 拍手 | はくしゅ | PHÁCH THỦ | Vỗ tay |
| 指導 | しどう | CHỈ ĐẠO | Chỉ bảo, hướng dẫn |
| 追求 | ついきゅう | TRUY CẦU | Theo đuổi |
| 入社 | にゅうしゃ | NHẬP XÃ | Vào công ty |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (815000012, 800000015, NULL, 'markdown_book', 'T12. Hai năm khép lại — Tanaka đề xuất thăng trợ lý thiết kế (2年経過・昇進面接)', '# Sách kỹ sư khuôn đúc · T12. Hai năm khép lại — Tanaka đề xuất thăng trợ lý thiết kế (2年経過・昇進面接)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) khép lại 2 năm thực tập hiện trường, được 田中工場長 mensetsu thông báo thăng chức アシスタント設計 từ 5/2024. Học các mẫu hội thoại tiếng Nhật cuối năm 2: nhận đánh giá thành quả 2 年間 từ cấp trên, nghe thông báo 昇進・給与改定, xác nhận kế hoạch năm 3 (3次元CAD・金型製作・JLPT N2・客先応対), chúc mừng và cảm ơn đồng đợt (同期) ở quán nhậu (乾杯・お祝い), hỏi lại lễ phép khi chưa hiểu thuật ngữ (〜というのは?), báo cáo về gia đình bằng tiếng Việt.

---

## Bối cảnh

Cuối tháng 4 năm 2024. Thái vừa qua mốc 24 tháng tại **株式会社みなみ精密金型** ở Anjo, Aichi. Trình độ tiếng Nhật N3 (vừa đỗ 12/2023), chuẩn bị thi N2 năm sau. Hôm nay 田中工場長 gọi Thái lên phòng họp tổng kết thành quả năm 2 và thông báo quyết định nhân sự. Chương này tập trung các mẫu câu hội thoại nội bộ công ty cuối kỳ: nhận tổng kết thành quả 2 năm, nghe thông báo 昇進 và 給与改定, xác nhận kế hoạch học tập năm 3, chúc mừng đồng đợt và báo tin về Việt Nam.

---

## Tình huống 1 — Phòng họp工場長 · 14:00, nghe tổng kết thành quả 2 năm

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>入社<rt>にゅうしゃ</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>が<ruby>経<rt>た</rt></ruby>ちましたね。<ruby>座<rt>すわ</rt></ruby>ってください。<br>*(Anh Thái, từ ngày vào công ty đã 2 năm trôi qua rồi nhỉ. Em ngồi đi.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>工場長<rt>こうじょうちょう</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cúi đầu. Em xin phép. Trưởng nhà máy, mong ông chỉ bảo ạ.)* |
| Tanaka | <ruby>今日<rt>きょう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りましょう。<br>*(Hôm nay chúng ta cùng nhìn lại thành quả 2 năm qua nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời ông ạ.)* |
| Tanaka | まず<ruby>資格<rt>しかく</rt></ruby>です。<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>と<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>。JLPTもN3を<ruby>取<rt>と</rt></ruby>りました。<br>*(Trước hết là bằng cấp. Em đã đỗ chứng chỉ gia công cơ khí cấp 3 và cấp 2. JLPT cũng lấy được N3.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ông ạ.)* |
| Tanaka | <ruby>実務<rt>じつむ</rt></ruby>では、MC<ruby>加工<rt>かこう</rt></ruby>とEDM<ruby>放電<rt>ほうでん</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>一人<rt>ひとり</rt></ruby>で<ruby>回<rt>まわ</rt></ruby>せるようになりましたね。<br>*(Về thực hành, em đã có thể tự một mình vận hành cả gia công MC và phóng điện EDM.)* |
| Thái | カワカミ<ruby>課長<rt>かちょう</rt></ruby>と<ruby>先輩<rt>せんぱい</rt></ruby>たちのおかげです。<br>*(Là nhờ anh Kawakami trưởng phòng và các đàn anh ạ.)* |
| Tanaka | それから、Mastercamの<ruby>基本<rt>きほん</rt></ruby><ruby>操作<rt>そうさ</rt></ruby>も<ruby>身<rt>み</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けましたし、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>には<ruby>初<rt>はつ</rt></ruby>トライの<ruby>金型<rt>かながた</rt></ruby>も<ruby>成功<rt>せいこう</rt></ruby>させました。<br>*(Ngoài ra em cũng nắm được thao tác cơ bản Mastercam, tháng 3 vừa rồi khuôn thử nghiệm đầu tay của em cũng đã thành công.)* |
| Thái | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になった<ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>でした。<br>*(Vâng, đúng là 2 năm em học hỏi được rất nhiều.)* |

---

## Tình huống 2 — Phòng họp工場長 · 14:20, hỏi lại lễ phép khi chưa hiểu thuật ngữ nhân sự

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、ここからが<ruby>本題<rt>ほんだい</rt></ruby>です。<ruby>会社<rt>かいしゃ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>な<ruby>辞令<rt>じれい</rt></ruby>があります。<br>*(Thái, từ đây mới là chủ đề chính. Công ty có quyết định chính thức cho em.)* |
| Thái | はい、<ruby>承<rt>うけたまわ</rt></ruby>ります。<br>*(Vâng, em xin nghe ạ.)* |
| Tanaka | すみません、「<ruby>辞令<rt>じれい</rt></ruby>」というのは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<ruby>意味<rt>いみ</rt></ruby><ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Xin lỗi, từ "jirei" em có hiểu không? Có rõ nghĩa không?)* |
| Thái | すみません、「<ruby>辞令<rt>じれい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Xin lỗi ông, "jirei" nghĩa là gì ạ?)* |
| Tanaka | <ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>社員<rt>しゃいん</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す<ruby>公式<rt>こうしき</rt></ruby>な<ruby>人事<rt>じんじ</rt></ruby>の<ruby>通知<rt>つうち</rt></ruby>のことです。<ruby>例<rt>たと</rt></ruby>えば「<ruby>昇進<rt>しょうしん</rt></ruby>」「<ruby>異動<rt>いどう</rt></ruby>」「<ruby>給与改定<rt>きゅうよかいてい</rt></ruby>」などですね。<br>*(Là thông báo nhân sự chính thức công ty đưa cho nhân viên. Ví dụ "thăng chức", "luân chuyển", "điều chỉnh lương" v.v.)* |
| Thái | なるほど、<ruby>分<rt>わ</rt></ruby>かりました。メモしておきます。<br>*(Em hiểu rồi ạ. Em ghi lại đây.)* |
| Tanaka | では<ruby>続<rt>つづ</rt></ruby>けますね。<br>*(Vậy tôi nói tiếp nhé.)* |

---

## Tình huống 3 — Phòng họp工場長 · 14:30, nhận thông báo thăng chức アシスタント設計

| Vai | Lời thoại |
|---|---|
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>ついたち</rt></ruby><ruby>日<rt>か</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby>チームのアシスタントに<ruby>正式<rt>せいしき</rt></ruby>に<ruby>異動<rt>いどう</rt></ruby>です。<br>*(Anh Thái, từ ngày 1 tháng 5 em chính thức chuyển sang làm trợ lý cho nhóm thiết kế.)* |
| Thái | え！？<ruby>本当<rt>ほんとう</rt></ruby>ですか！？<br>*(Ơ!? Thật ạ!?)* |
| Tanaka | はい、<ruby>本当<rt>ほんとう</rt></ruby>です。カワカミ<ruby>課長<rt>かちょう</rt></ruby>の<ruby>下<rt>もと</rt></ruby>で、<ruby>金型<rt>かながた</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>次元<rt>じげん</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>を<ruby>学<rt>まな</rt></ruby>んでもらいます。<br>*(Vâng, thật mà. Em sẽ học thiết kế khuôn 3 chiều dưới sự dìu dắt của trưởng phòng Kawakami.)* |
| Thái | （<ruby>感激<rt>かんげき</rt></ruby>して<ruby>声<rt>こえ</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>える）ありがとうございます！<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<br>*(Giọng run lên vì xúc động. Em cảm ơn ông! Thật sự cảm ơn ông ạ!)* |
| Tanaka | <ruby>勤務<rt>きんむ</rt></ruby>パターンも<ruby>変<rt>か</rt></ruby>わります。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>時<rt>とき</rt></ruby>だけ<ruby>現場<rt>げんば</rt></ruby>でMCを<ruby>回<rt>まわ</rt></ruby>し、<ruby>午後<rt>ごご</rt></ruby>と<ruby>夕方<rt>ゆうがた</rt></ruby>は<ruby>設計室<rt>せっけいしつ</rt></ruby>でCADの<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Giờ làm việc cũng thay đổi. Buổi sáng chỉ khi cần mới ra hiện trường vận hành MC, chiều và tối làm CAD trong phòng thiết kế.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng, em rõ ạ.)* |
| Tanaka | それから、<ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>22<rt>にじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>から<ruby>25<rt>にじゅうご</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>に<ruby>改定<rt>かいてい</rt></ruby>します。<br>*(Lương cũng được điều chỉnh từ 22 vạn yên lên 25 vạn yên.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>く<ruby>下<rt>さ</rt></ruby>げる）<ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>る<ruby>光栄<rt>こうえい</rt></ruby>です。<ruby>精<rt>せい</rt></ruby><ruby>一杯<rt>いっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cúi đầu thật sâu. Em không xứng với vinh dự này. Em sẽ hết sức cố gắng.)* |
| Tanaka | <ruby>期待<rt>きたい</rt></ruby>していますよ。<br>*(Tôi mong chờ ở em đấy.)* |

---

## Tình huống 4 — Phòng họp工場長 · 15:00, xác nhận kế hoạch học tập năm 3

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>続<rt>つづ</rt></ruby>いて、<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Tiếp theo, chúng ta xác nhận mục tiêu năm thứ 3 nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời ông ạ.)* |
| Tanaka | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>次元<rt>じげん</rt></ruby>CAD<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2024<rt>にせんにじゅうよん</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>で<ruby>取<rt>と</rt></ruby>ってください。<br>*(Thứ nhất là CAD 3 chiều cấp 2. Em lấy trong kỳ thi tháng 12 năm 2024.)* |
| Thái | はい、<ruby>3<rt>さん</rt></ruby><ruby>次元<rt>じげん</rt></ruby>CAD<ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>までに、ということですね。<br>*(Vâng, tức là CAD 3 chiều cấp 2 đến tháng 12 phải có, đúng không ạ?)* |
| Tanaka | そうです。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はJLPT N2、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>2025<rt>にせんにじゅうご</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>。<br>*(Đúng. Thứ hai là chế tạo khuôn cấp 2, tháng 3 năm 2025. Thứ ba là JLPT N2 kỳ thi tháng 7 năm 2025.)* |
| Thái | <ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>とN2、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Chế tạo khuôn cấp 2 và N2, em rõ ạ.)* |
| Tanaka | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>難<rt>むずか</rt></ruby>しいですよ。<ruby>初<rt>はじ</rt></ruby>めての<ruby>客先<rt>きゃくさき</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>です。<ruby>来年<rt>らいねん</rt></ruby>、トヨタ<ruby>系<rt>けい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>次<rt>じ</rt></ruby>サプライヤーに<ruby>同行<rt>どうこう</rt></ruby>してもらいます。<br>*(Thứ tư hơi khó đấy. Là lần đầu em tiếp khách. Sang năm em sẽ tháp tùng đi gặp nhà cung cấp cấp 1 hệ Toyota.)* |
| Thái | すみません、「<ruby>同行<rt>どうこう</rt></ruby>」というのは<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>くということですか？<br>*(Xin lỗi, "doukou" nghĩa là cùng đi đúng không ạ?)* |
| Tanaka | そうです。カワカミ<ruby>課長<rt>かちょう</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>客先<rt>きゃくさき</rt></ruby>へ<ruby>行<rt>い</rt></ruby>って、まずは<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>名刺交換<rt>めいしこうかん</rt></ruby>から<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Đúng vậy. Em đi cùng trưởng phòng Kawakami đến khách, học từ chào hỏi và trao đổi danh thiếp trước.)* |
| Thái | はい、<ruby>名刺交換<rt>めいしこうかん</rt></ruby>から<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Vâng, em sẽ luyện từ trao đổi danh thiếp.)* |

---

## Tình huống 5 — Hành lang trước phòng họp · 15:30, báo cáo và cảm ơn Kawakami課長

| Vai | Lời thoại |
|---|---|
| Thái | カワカミ<ruby>課長<rt>かちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しよろしいでしょうか。<br>*(Anh Kawakami, em xin phép một chút được không ạ?)* |
| Kawakami | はい、どうぞ。<ruby>工場長<rt>こうじょうちょう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>きましたか？<br>*(Ừ, em nói đi. Trưởng nhà máy nói với em rồi à?)* |
| Thái | はい。<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby>のアシスタントとしてお<ruby>世話<rt>せわ</rt></ruby>になります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng. Từ tháng 5 em làm trợ lý thiết kế, được anh dìu dắt. Mong anh chỉ bảo ạ.)* |
| Kawakami | こちらこそ。CADは<ruby>毎日<rt>まいにち</rt></ruby><ruby>触<rt>さわ</rt></ruby>ることが<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてくださいね。<br>*(Tôi mới phải nhờ em. CAD quan trọng nhất là phải đụng vào mỗi ngày. Có gì không hiểu nhất định phải hỏi nhé.)* |
| Thái | はい、<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>かせていただきます。<br>*(Vâng, em sẽ không ngại hỏi ạ.)* |
| Kawakami | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>は、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>練習<rt>れんしゅう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めましょう。<ruby>製図<rt>せいず</rt></ruby>の<ruby>記号<rt>きごう</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Tháng đầu mình bắt đầu từ luyện đọc bản vẽ. Em hãy nhớ các ký hiệu vẽ kỹ thuật.)* |
| Thái | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>練習<rt>れんしゅう</rt></ruby>から、ということですね。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Tức là từ luyện đọc bản vẽ ạ. Em rõ rồi.)* |
| Kawakami | <ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>級<rt>きゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったタイ<ruby>君<rt>くん</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Thái đã lấy được gia công cơ khí cấp 2 trong 2 năm thì không sao đâu.)* |

---

## Tình huống 6 — Quán nhậu Anjo · 19:00, đồng đợt chúc mừng (お祝い・乾杯)

| Vai | Lời thoại |
|---|---|
| Sakurai | みなさん、お<ruby>揃<rt>そろ</rt></ruby>いですね。<ruby>今夜<rt>こんや</rt></ruby>はタイ<ruby>君<rt>くん</rt></ruby>の<ruby>昇進<rt>しょうしん</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>う<ruby>会<rt>かい</rt></ruby>です！<br>*(Mọi người tập trung đủ rồi. Tối nay là buổi mừng anh Thái lên chức!)* |
| Putra | <ruby>2<rt>に</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>設計<rt>せっけい</rt></ruby>アシスタントは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>稀<rt>まれ</rt></ruby>だぞ、タイ！<br>*(Hai năm đã lên trợ lý thiết kế là cực kỳ hiếm đấy Thái!)* |
| Thái | サクライ<ruby>先輩<rt>せんぱい</rt></ruby>、プトラさん、ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Đàn anh Sakurai, anh Putra, em cảm ơn các anh. Tất cả là nhờ mọi người.)* |
| Sakurai | では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>はプトラさんに<ruby>頼<rt>たの</rt></ruby>みましょう！<br>*(Vậy, mình nhờ anh Putra hô cạn ly nhé!)* |
| Putra | じゃあ<ruby>行<rt>い</rt></ruby>きます。タイ<ruby>君<rt>くん</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>アシスタント<ruby>昇進<rt>しょうしん</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Vậy tôi xin phép. Chúc mừng anh Thái lên trợ lý thiết kế — cạn ly!)* |
| 3人 | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Thái | みなさん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn mọi người thật nhiều. Năm thứ 3 cũng mong các anh giúp đỡ.)* |
| Sakurai | <ruby>俺<rt>おれ</rt></ruby>もこの<ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>級<rt>きゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>したぞ。<ruby>同期<rt>どうき</rt></ruby>として<ruby>負<rt>ま</rt></ruby>けてられないからな！<br>*(Tao tháng 3 vừa rồi cũng đỗ gia công cơ khí cấp 1 đấy. Cùng đợt thì không được thua!)* |
| Thái | サクライ<ruby>先輩<rt>せんぱい</rt></ruby>もおめでとうございます！<br>*(Chúc mừng đàn anh Sakurai luôn ạ!)* |
| Putra | <ruby>10<rt>じゅう</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>で<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>創<rt>つく</rt></ruby>ろうって<ruby>話<rt>はなし</rt></ruby>、<ruby>本気<rt>ほんき</rt></ruby>だからな。<br>*(Chuyện 10 năm nữa 3 anh em mình lập công ty đấy, tao nói thật.)* |
| Thái | （<ruby>笑<rt>わら</rt></ruby>う）はい、<ruby>本気<rt>ほんき</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cười. Vâng, em sẽ cố gắng nghiêm túc.)* |

---

## Tình huống 7 — Quán nhậu Anjo · 20:30, quan sát đàn anh Sakurai chia sẻ kinh nghiệm năm 3

| Vai | Lời thoại |
|---|---|
| Thái | サクライ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>設計<rt>せっけい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>はどんな<ruby>感<rt>かん</rt></ruby>じでしたか？<br>*(Đàn anh Sakurai, năm thứ nhất làm thiết kế anh thấy thế nào ạ?)* |
| Sakurai | <ruby>最初<rt>さいしょ</rt></ruby>はキツいぞ。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むだけで<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>終<rt>お</rt></ruby>わる。<ruby>製図<rt>せいず</rt></ruby><ruby>記号<rt>きごう</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えるのに<ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>かかった。<br>*(Lúc đầu cực lắm. Chỉ đọc bản vẽ cũng hết một ngày. Tao mất 3 tháng để nhớ hết ký hiệu vẽ kỹ thuật.)* |
| Thái | <ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>ですか...。<br>*(Ba tháng cơ ạ...)* |
| Sakurai | コツは「<ruby>聞<rt>き</rt></ruby>く<ruby>習慣<rt>しゅうかん</rt></ruby>」だ。カワカミ<ruby>課長<rt>かちょう</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいが、<ruby>聞<rt>き</rt></ruby>けば<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてくれる。<br>*(Bí quyết là "thói quen hỏi". Anh Kawakami nghiêm khắc nhưng cứ hỏi là nhất định chỉ.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>からも<ruby>一<rt>ひと</rt></ruby>つ。<ruby>客先<rt>きゃくさき</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>は<ruby>名刺<rt>めいし</rt></ruby>を<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ること。これだけは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>忘<rt>わす</rt></ruby>れるな。<br>*(Tao cũng thêm một điều. Khi tiếp khách phải nhận danh thiếp bằng hai tay. Cái này tuyệt đối không được quên.)* |
| Thái | <ruby>名刺<rt>めいし</rt></ruby>は<ruby>両手<rt>りょうて</rt></ruby>で、ということですね。メモします。<br>*(Danh thiếp phải bằng hai tay đúng không ạ. Em ghi lại.)* |
| Sakurai | あとは「<ruby>報連相<rt>ほうれんそう</rt></ruby>」だ。<ruby>設計<rt>せっけい</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>でやる<ruby>仕事<rt>しごと</rt></ruby>じゃない。<ruby>毎日<rt>まいにち</rt></ruby><ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>しろ。<br>*(Còn nữa, 報連相. Thiết kế không phải việc một mình. Phải chia sẻ tiến độ mỗi ngày.)* |
| Thái | <ruby>進捗<rt>しんちょく</rt></ruby>の<ruby>共有<rt>きょうゆう</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby>ですね。はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Chia sẻ tiến độ mỗi ngày ạ. Vâng, em sẽ cố gắng.)* |

---

## Tình huống 8 — Phòng 201 · 22:00, gọi điện báo tin cho Mai (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh có tin lớn báo em này. |
| Mai | (tiếng Việt) Anh! Tin gì mà giọng phấn khởi thế? |
| Thái | (tiếng Việt) Hôm nay ông Tanaka mensetsu anh. Từ 1/5 anh lên trợ lý thiết kế. Lương 25 vạn yên. |
| Mai | (tiếng Việt) Wow! Anh giỏi quá! Em tự hào về anh ghê! |
| Thái | (tiếng Việt) Mới 2 năm thôi mà em. Bên này họ gọi là 昇進 với 給与改定 — thăng chức và điều chỉnh lương. Có cả 辞令 chính thức nữa. |
| Mai | (tiếng Việt) Thăng chức nghĩa là không đứng máy nữa hả anh? |
| Thái | (tiếng Việt) Sáng vẫn ra hiện trường khi cần, chiều với tối làm CAD trong phòng thiết kế. Anh được học 3次元CAD — vẽ khuôn 3 chiều. |
| Mai | (tiếng Việt) Còn năm 3 anh phải làm gì? |
| Thái | (tiếng Việt) Bốn mục tiêu: CAD 3 chiều cấp 2 vào tháng 12 năm nay, chế tạo khuôn cấp 2 tháng 3/2025, JLPT N2 tháng 7/2025, và lần đầu đi tiếp khách hệ Toyota. |
| Mai | (tiếng Việt) Nhiều mục tiêu quá anh. Anh nhớ giữ sức khoẻ. |
| Thái | (tiếng Việt) Anh tính Tết 2025 về một tuần. Ông Tanaka đồng ý rồi. |
| Mai | (tiếng Việt) Thật á? Em đợi anh! Anh nhớ về sớm nhé. |
| Thái | (tiếng Việt) Ừ, anh sẽ về. Em ngủ ngon. |

---

## Tình huống 9 — Phòng 201 · 23:00, gọi LINE cho chị Linh (đồng hương Nagoya)

> Cảnh tiếng Việt — giữ mạch nhân vật, ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Chị Linh ơi, em báo chị tin này. Từ 1/5 em chính thức là アシスタント設計 ở công ty. |
| Linh | (tiếng Việt) Trời ơi, nhanh thế Thái! Chị nhớ hôm nào em mới đặt chân xuống Centrair. |
| Thái | (tiếng Việt) Chị bảo "5 năm ở Nhật người Việt cũng giống người Nhật". Em mới 2 năm thôi, vẫn phải học nhiều lắm. |
| Linh | (tiếng Việt) Em vượt cả tốc độ của chị rồi đấy. Chị mất 4 năm mới được trợ lý thiết kế. |
| Thái | (tiếng Việt) Là nhờ chị mở đường thôi. Mà chị ơi, hôm nay em mới học từ 辞令 — quyết định nhân sự chính thức. Với cả 同行 — tháp tùng đi gặp khách. Năm sau ông Tanaka cho em đi cùng anh Kawakami gặp khách hệ Toyota. |
| Linh | (tiếng Việt) 客先応対 thì nhớ hai tay nhận danh thiếp nhé. Người Nhật khắt khe lắm. |
| Thái | (tiếng Việt) Vâng, anh Putra cũng dặn em thế. |
| Linh | (tiếng Việt) Cuối tuần sau lên Nagoya ăn mừng nhé. Chị mời. |
| Thái | (tiếng Việt) Dạ, em lên. Cảm ơn chị nhiều. |

---

## Tình huống 10 — Phòng 201 · 23:30, chào ngủ ngon với Putra bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Putra, hôm nay cảm ơn anh rất nhiều.)* |
| Putra | こちらこそ、おめでとう、タイ。<ruby>同<rt>おな</rt></ruby>じ<ruby>寮<rt>りょう</rt></ruby>から<ruby>設計<rt>せっけい</rt></ruby>アシスタントが<ruby>出<rt>で</rt></ruby>るのは<ruby>嬉<rt>うれ</rt></ruby>しいよ。<br>*(Tôi mới phải chúc mừng. Cùng ký túc có người lên trợ lý thiết kế, vui lắm.)* |
| Thái | <ruby>明日<rt>あした</rt></ruby>から<ruby>最後<rt>さいご</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>現場<rt>げんば</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をきっちり<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎます。<br>*(Từ mai một tuần cuối, em sẽ bàn giao công việc hiện trường thật cẩn thận.)* |
| Putra | <ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎは<ruby>大事<rt>だいじ</rt></ruby>だね。<ruby>新<rt>あたら</rt></ruby>しいベトナム<ruby>人<rt>じん</rt></ruby>の<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>来月<rt>らいげつ</rt></ruby><ruby>入<rt>はい</rt></ruby>るそうだよ。<br>*(Bàn giao quan trọng đấy. Nghe nói tháng sau có đàn em Việt Nam mới vào.)* |
| Thái | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？じゃあ、<ruby>私<rt>わたし</rt></ruby>も<ruby>先輩<rt>せんぱい</rt></ruby>になりますね。<br>*(Ơ, thật ạ? Vậy em cũng thành đàn anh rồi.)* |
| Putra | そうだよ。<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>君<rt>きみ</rt></ruby>みたいに、<ruby>優<rt>やさ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてあげてね。<br>*(Đúng vậy. Em hãy chỉ cho đàn em ấy tử tế, như tôi đã làm với em 2 năm trước.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず。おやすみなさい、プトラさん。<br>*(Vâng, em nhất định ạ. Chúc anh ngủ ngon, anh Putra.)* |
| Putra | おやすみ、タイ。<br>*(Ngủ ngon, Thái.)* |

---

## Đọng lại chương 12

Hai năm khép lại, Thái nhận ra mình đã đi qua từ "tân binh nghe 工場長 dặn 報連相 trên xe ra Anjo" đến "kỹ sư được mensetsu thăng アシスタント設計". Hôm nay học bộ mẫu câu cuối năm 2 trong môi trường công ty Nhật: nghe **tổng kết thành quả 2 年間** (機械加工2級・JLPT N3・MC+EDM・Mastercam・初トライ成功), nhận **辞令 thăng chức và 給与改定** (22万→25万) với mẫu câu trang trọng (**身に余る光栄です・精一杯頑張ります**), xác nhận **kế hoạch năm 3** gồm 4 mục tiêu (**3次元CAD2級・金型製作2級・JLPT N2・客先応対**), hỏi lại lễ phép thuật ngữ chưa quen (**「辞令」というのは?・「同行」というのは?**), nhận lời khuyên đàn anh đồng đợt về **客先応対** (名刺は両手で) và **進捗の共有 hằng ngày**, và chốt bằng buổi nhậu **乾杯・お祝い** với 同期. Triết lý nghề kỹ sư khuôn Thái rút ra sau 2 năm: **聞く習慣** (thói quen hỏi) + **報連相** + **精度** — ba trụ cột làm nên người Nhật trong nghề, không phải lương 25 万 hay chức アシスタント設計.

> Từ vựng & mẫu câu chương này: 2年経過・成果・振り返り・辞令・昇進・異動・給与改定・アシスタント設計・設計室・図面・製図記号・3次元CAD・金型製作・客先応対・同行・名刺交換・進捗共有・報連相・同期・乾杯・お祝い・引き継ぎ・後輩・先輩・身に余る光栄です・精一杯頑張ります・〜というのは・〜ということですね・承知いたしました・期待しています

## Bí quyết chương

- **Khép chuỗi năm 2**: chuyển vai trò từ オペレータ hiện trường → アシスタント設計. Đây là điểm bản lề trước khi sách 16 mở năm 3.
- **Khởi đầu năm 3**: 4 mục tiêu rõ ràng (CAD 3D 2級 · 金型製作 2級 · N2 · 客先応対) — sẽ kết quả thấy ở sách 16.
- **同期 lứa Putra-Sakurai**: vẫn là 3 chân kiềng, "10 năm nữa lập công ty" là hint xa cho sách 18.
- **Linh-chị (Nagoya)**: tiếp tục là cố vấn người Việt — sẽ tái xuất khi Thái đi 客先応対 đầu tiên.

> *"30/4/2024. Hai năm khép lại. Từ オペレータ thành アシスタント設計. Năm 3 — bốn mục tiêu mới."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 経つ | たつ | KINH | Trôi qua (thời gian) |
| 振り返り | ふりかえり | CHẤN PHẢN | Nhìn lại, tổng kết |
| 実務 | じつむ | THỰC VỤ | Công việc thực tế |
| 本題 | ほんだい | BẢN ĐỀ | Chủ đề chính |
| 辞令 | じれい | TỪ LỆNH | Quyết định nhân sự |
| 人事 | じんじ | NHÂN SỰ | Nhân sự |
| 通知 | つうち | THÔNG TRI | Thông báo |
| 昇進 | しょうしん | THĂNG TIẾN | Thăng chức |
| 異動 | いどう | DỊ ĐỘNG | Luân chuyển |
| 給与改定 | きゅうよかいてい | CẤP DỮ CẢI ĐỊNH | Điều chỉnh lương |
| 感激 | かんげき | CẢM KÍCH | Xúc động |
| 改定 | かいてい | CẢI ĐỊNH | Điều chỉnh |
| 光栄 | こうえい | QUANG VINH | Vinh dự |
| 期待 | きたい | KỲ ĐÃI | Mong đợi |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |
| 金型製作 | かながたせいさく | KIM HÌNH CHẾ TÁC | Chế tạo khuôn |
| 客先応対 | きゃくさきおうたい | KHÁCH TIÊN ỨNG ĐỐI | Tiếp khách |
| 同行 | どうこう | ĐỒNG HÀNH | Tháp tùng |
| 挨拶 | あいさつ | AI TÁT | Chào hỏi |
| 名刺交換 | めいしこうかん | DANH THÍCH GIAO HOÁN | Trao đổi danh thiếp |
| 製図 | せいず | CHẾ ĐỒ | Vẽ kỹ thuật |
| 記号 | きごう | KÝ HIỆU | Ký hiệu |
| 同期 | どうき | ĐỒNG KỲ | Cùng đợt |
| お祝い | おいわい | CHÚC | Lễ chúc mừng |
| 音頭 | おんど | ÂM ĐẦU | Người hô cạn ly |
| 寮 | りょう | LIÊU | Ký túc xá |
| 共有 | きょうゆう | CỘNG HỮU | Chia sẻ |
| 本気 | ほんき | BẢN KHÍ | Nghiêm túc |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
