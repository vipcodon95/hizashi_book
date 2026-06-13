# Sách kỹ sư khuôn đúc · T10. Phay tinh ±0.01 cho khách Toyota (中級精密加工)

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
| 不在 | ふざい | BẤT TẠI | Vắng mặt |
