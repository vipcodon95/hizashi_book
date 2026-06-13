# Sách kỹ sư khuôn đúc · T2. Học Mastercam cơ bản (Mastercam入門)

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
| 進捗報告 | しんちょくほうこく | TIẾN CHỈ BÁO CÁO | báo cáo tiến độ |
