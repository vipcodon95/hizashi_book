# Sách kỹ sư khuôn đúc · T3. Dự án diecast lần đầu (ダイカスト初体験)

> **Mục tiêu nhân vật:** Thái (kỹ sư khuôn đúc tại Aichi, năm thứ 4) được Kawakami giao một dự án phụ về khuôn diecast nhôm. Học các mẫu hội thoại tiếng Nhật khi nhận mảng việc mới ngoài chuyên môn: nhận chỉ thị từ cấp trên (〜を担当してもらう), hỏi lại lễ phép khi nghe từ chuyên ngành lạ (〜というのは？), xác nhận đối chiếu hai lĩnh vực (〜と比べて・〜に対して), trình bày phương án thiết kế (〜を多めに配置します), báo cáo tiến độ giữa kỳ (進捗を報告します), và quan sát đàn anh giải thích kinh nghiệm 5 năm về phần mềm mô phỏng.

---

## Bối cảnh

Tháng 10 năm 2025. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo được hơn 3 năm, chuyên khuôn nhựa cho linh kiện nội thất Toyota. Lần này 川上 (Kawakami) — đàn anh thiết kế cấp cao — gọi Thái sang đỡ một dự án phụ về khuôn diecast nhôm cho ngàm động cơ. Trình độ tiếng Nhật của Thái nay đã ngưỡng N2. Chương này tập trung các mẫu câu giao tiếp khi nhận lĩnh vực mới: hỏi lại từ chuyên ngành lạ, đối chiếu hai loại vật liệu, xác nhận thông số kỹ thuật, báo cáo tiến độ và chốt mạch nhân vật qua cuộc gọi về Việt Nam cho Mai.

---

## Tình huống 1 — Bàn thiết kế Kawakami · 9:00, nhận chỉ thị mảng việc mới

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、ちょっといいかな。<ruby>新<rt>あたら</rt></ruby>しい<ruby>案件<rt>あんけん</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>してもらいたいんだ。<br>*(Thái-kun, có chút việc nhé. Tôi muốn giao em phụ trách một dự án mới.)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby>さん。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。どんな<ruby>案件<rt>あんけん</rt></ruby>ですか？<br>*(Vâng, anh Kawakami. Em rất sẵn lòng. Là dự án thế nào ạ?)* |
| Kawakami | ダイカスト<ruby>金型<rt>かながた</rt></ruby>だよ。タイ<ruby>君<rt>くん</rt></ruby>は<ruby>初<rt>はつ</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>だね。<br>*(Khuôn diecast đấy. Với em là lần đầu nhỉ.)* |
| Thái | すみません、「ダイカスト」というのは<ruby>何<rt>なん</rt></ruby>ですか？<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Em xin lỗi, "diecast" nghĩa là gì ạ? Em chưa nghe từ này bao giờ.)* |
| Kawakami | <ruby>金属<rt>きんぞく</rt></ruby>、<ruby>主<rt>おも</rt></ruby>に<ruby>アルミ合金<rt>アルミごうきん</rt></ruby>を<ruby>高圧<rt>こうあつ</rt></ruby>で<ruby>金型<rt>かながた</rt></ruby>に<ruby>注入<rt>ちゅうにゅう</rt></ruby>する<ruby>鋳造<rt>ちゅうぞう</rt></ruby><ruby>方式<rt>ほうしき</rt></ruby>だ。<ruby>温度<rt>おんど</rt></ruby>は500〜700°Cになる。<br>*(Là phương thức đúc bơm kim loại — chủ yếu hợp kim nhôm — vào khuôn dưới áp lực cao. Nhiệt độ lên tới 500–700°C.)* |
| Thái | 500〜700°Cですか…プラスチックの<ruby>金型<rt>かながた</rt></ruby>とは<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>いますね。<br>*(500–700°C cơ ạ… Khác hẳn khuôn nhựa nhỉ.)* |
| Kawakami | そう。だから<ruby>金型<rt>かながた</rt></ruby>の<ruby>材質<rt>ざいしつ</rt></ruby>もSKD61という<ruby>耐熱鋼<rt>たいねつこう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。NAK80じゃ<ruby>持<rt>も</rt></ruby>たない。<br>*(Đúng. Nên vật liệu khuôn cũng phải dùng thép chịu nhiệt SKD61. NAK80 không trụ nổi.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Em rõ ạ. Em xin được học hỏi.)* |

---

## Tình huống 2 — Phòng họp nhỏ · 10:00, quan sát đàn anh đối chiếu hai lĩnh vực

| Vai | Lời thoại |
|---|---|
| Kawakami | プラスチック<ruby>金型<rt>かながた</rt></ruby>とダイカスト<ruby>金型<rt>かながた</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いを<ruby>整理<rt>せいり</rt></ruby>するよ。<ruby>大<rt>おお</rt></ruby>きく<ruby>四<rt>よっ</rt></ruby>つある。<br>*(Tôi tóm tắt sự khác biệt giữa khuôn nhựa và khuôn diecast. Có bốn điểm lớn.)* |
| Thái | はい、メモを<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng, em ghi chú ạ.)* |
| Kawakami | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>温度<rt>おんど</rt></ruby>。ダイカストは700°C、プラスチックは200°Cぐらいだ。<br>*(Thứ nhất, nhiệt độ. Diecast 700°C, nhựa khoảng 200°C.)* |
| Kawakami | <ruby>二<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>金型<rt>かながた</rt></ruby><ruby>寿命<rt>じゅみょう</rt></ruby>。ダイカストは<ruby>5<rt>ご</rt></ruby><ruby>万<rt>まん</rt></ruby>ショット、プラスチックは<ruby>50<rt>ごじゅう</rt></ruby><ruby>万<rt>まん</rt></ruby>ショットだ。<br>*(Thứ hai, tuổi thọ khuôn. Diecast 50 nghìn shot, nhựa 500 nghìn shot.)* |
| Thái | <ruby>十<rt>じゅう</rt></ruby><ruby>倍<rt>ばい</rt></ruby>も<ruby>違<rt>ちが</rt></ruby>うんですか。<br>*(Khác nhau những mười lần cơ ạ.)* |
| Kawakami | <ruby>三<rt>さん</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>材質<rt>ざいしつ</rt></ruby>。SKD61に<ruby>対<rt>たい</rt></ruby>してNAK80。<ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>離型剤<rt>りけいざい</rt></ruby>がダイカストでは<ruby>必須<rt>ひっす</rt></ruby>だ。<br>*(Thứ ba, vật liệu. SKD61 so với NAK80. Thứ tư, chất tách khuôn là bắt buộc với diecast.)* |
| Thái | すみません、「<ruby>離型剤<rt>りけいざい</rt></ruby>」というのは？<br>*(Em xin lỗi, "rikeizai" nghĩa là gì ạ?)* |
| Kawakami | <ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>離<rt>はな</rt></ruby>しやすくする<ruby>薬剤<rt>やくざい</rt></ruby>だ。<ruby>毎<rt>まい</rt></ruby>ショット<ruby>金型<rt>かながた</rt></ruby>の<ruby>表面<rt>ひょうめん</rt></ruby>に<ruby>吹<rt>ふ</rt></ruby>き<ruby>付<rt>つ</rt></ruby>ける。<br>*(Là hoá chất giúp tách sản phẩm khỏi khuôn dễ hơn. Mỗi shot phải xịt lên bề mặt khuôn.)* |
| Thái | なるほど、<ruby>毎<rt>まい</rt></ruby>ショット<ruby>吹<rt>ふ</rt></ruby>き<ruby>付<rt>つ</rt></ruby>けるということですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi, tức là mỗi shot đều xịt một lần đúng không ạ. Em rõ rồi.)* |

---

## Tình huống 3 — Bàn CAD · 11:00, xác nhận thông số thiết kế sản phẩm

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>製品<rt>せいひん</rt></ruby>はエンジンブラケットだ。<ruby>3<rt>さん</rt></ruby>Dデータを<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Sản phẩm là ngàm động cơ. Cùng xem dữ liệu 3D nào.)* |
| Thái | （モニターを<ruby>見<rt>み</rt></ruby>ながら）<ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いですね。<ruby>肉厚<rt>にくあつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ミリですか？<br>*(Vừa nhìn màn hình. Có nhiều chỗ dày nhỉ. Độ dày thành bao nhiêu mm ạ?)* |
| Kawakami | <ruby>一番厚<rt>いちばんあつ</rt></ruby>いところで8ミリ、<ruby>薄<rt>うす</rt></ruby>いところで3ミリだ。<br>*(Chỗ dày nhất 8mm, chỗ mỏng nhất 3mm.)* |
| Thái | <ruby>収縮率<rt>しゅうしゅくりつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>パーセントで<ruby>計算<rt>けいさん</rt></ruby>すればいいですか？<br>*(Hệ số co tính theo bao nhiêu phần trăm thì được ạ?)* |
| Kawakami | アルミの<ruby>収縮率<rt>しゅうしゅくりつ</rt></ruby>は0.6%。ABSの0.5%とほぼ<ruby>同<rt>おな</rt></ruby>じだから、<ruby>感覚<rt>かんかく</rt></ruby>はつかみやすいと<ruby>思<rt>おも</rt></ruby>うよ。<br>*(Nhôm co 0.6%. Gần bằng ABS 0.5% nên cảm giác sẽ dễ nắm thôi.)* |
| Thái | <ruby>厚<rt>あつ</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いので、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>を<ruby>多<rt>おお</rt></ruby>めに<ruby>配置<rt>はいち</rt></ruby>します。よろしいでしょうか？<br>*(Vì có nhiều chỗ dày, em sẽ bố trí kênh nước làm mát nhiều hơn một chút. Anh thấy được không ạ?)* |
| Kawakami | いいね。ただし<ruby>金型<rt>かながた</rt></ruby><ruby>本体<rt>ほんたい</rt></ruby>の<ruby>強度<rt>きょうど</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えて、<ruby>水路<rt>すいろ</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は15ミリ<ruby>以上<rt>いじょう</rt></ruby><ruby>空<rt>あ</rt></ruby>けてくれ。<br>*(Tốt. Nhưng cũng cân nhắc độ bền thân khuôn, để khoảng cách giữa các kênh nước cách nhau từ 15mm trở lên nhé.)* |
| Thái | 15ミリ<ruby>以上<rt>いじょう</rt></ruby>ですね。<ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Từ 15mm trở lên ạ. Em rõ rồi.)* |

---

## Tình huống 4 — Bàn mô phỏng · 14:00, quan sát đàn anh giới thiệu phần mềm mới

| Vai | Lời thoại |
|---|---|
| Kawakami | ダイカストのシミュレーションはMAGMAというソフトを<ruby>使<rt>つか</rt></ruby>うんだ。<br>*(Mô phỏng diecast dùng phần mềm tên MAGMA.)* |
| Thái | プラスチックで<ruby>使<rt>つか</rt></ruby>っているMoldex3Dとは<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Khác Moldex3D mình dùng cho nhựa ạ?)* |
| Kawakami | <ruby>全<rt>まった</rt></ruby>く<ruby>違<rt>ちが</rt></ruby>うソフトだ。MAGMAは<ruby>金属溶湯<rt>きんぞくようとう</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れと<ruby>凝固<rt>ぎょうこ</rt></ruby>を<ruby>専門<rt>せんもん</rt></ruby>に<ruby>解析<rt>かいせき</rt></ruby>する。<br>*(Hoàn toàn khác. MAGMA chuyên phân tích dòng chảy và quá trình đông kết của kim loại lỏng.)* |
| Thái | 「<ruby>凝固<rt>ぎょうこ</rt></ruby>」というのは、<ruby>液体<rt>えきたい</rt></ruby>が<ruby>固<rt>かた</rt></ruby>まるということですか？<br>*(Gyouko nghĩa là chất lỏng đông cứng lại đúng không ạ?)* |
| Kawakami | そう、<ruby>溶<rt>と</rt></ruby>けた<ruby>金属<rt>きんぞく</rt></ruby>が<ruby>冷<rt>ひ</rt></ruby>えて<ruby>固<rt>かた</rt></ruby>まる<ruby>過程<rt>かてい</rt></ruby>だ。これが<ruby>不<rt>ふ</rt></ruby><ruby>均一<rt>きんいつ</rt></ruby>だと<ruby>製品<rt>せいひん</rt></ruby>に<ruby>不良<rt>ふりょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>る。<br>*(Đúng vậy, là quá trình kim loại nóng chảy nguội đi và đông lại. Nếu không đều thì sản phẩm sẽ có lỗi.)* |
| Thái | <ruby>難<rt>むずか</rt></ruby>しそうですね。<ruby>使<rt>つか</rt></ruby>いこなすのにどのくらいかかりますか？<br>*(Nghe có vẻ khó. Để dùng thạo mất bao lâu ạ?)* |
| Kawakami | <ruby>俺<rt>おれ</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>かけて<ruby>覚<rt>おぼ</rt></ruby>えたよ。<ruby>今回<rt>こんかい</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>解析<rt>かいせき</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>すから、タイ<ruby>君<rt>くん</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>て<ruby>覚<rt>おぼ</rt></ruby>えてくれ。<br>*(Tôi mất 5 năm mới quen. Lần này tôi sẽ chạy phân tích, em đứng bên xem rồi học.)* |
| Thái | はい、しっかり<ruby>観察<rt>かんさつ</rt></ruby>させていただきます。<br>*(Vâng, em sẽ quan sát thật kỹ ạ.)* |

---

## Tình huống 5 — Bàn họp · sáng thứ hai 9:30, báo cáo tiến độ giữa kỳ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>先週<rt>せんしゅう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Kawakami, em xin báo cáo tiến độ tuần trước ạ.)* |
| Kawakami | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mời em.)* |
| Thái | キャビコアの<ruby>形状<rt>けいじょう</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>が60%<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>は<ruby>間隔<rt>かんかく</rt></ruby>15ミリで<ruby>配置<rt>はいち</rt></ruby>しています。<br>*(Phần thiết kế hình dạng cavity-core đã xong 60%. Kênh nước làm mát em bố trí cách nhau 15mm.)* |
| Kawakami | <ruby>順調<rt>じゅんちょう</rt></ruby>だね。<ruby>問題<rt>もんだい</rt></ruby><ruby>点<rt>てん</rt></ruby>は？<br>*(Trôi chảy nhỉ. Có điểm gì vướng không?)* |
| Thái | <ruby>厚肉<rt>あつにく</rt></ruby><ruby>部<rt>ぶ</rt></ruby>のところで<ruby>水路<rt>すいろ</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>に<ruby>分岐<rt>ぶんき</rt></ruby>させるかどうかで<ruby>悩<rt>なや</rt></ruby>んでいます。ご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Chỗ thành dày em đang phân vân có nên chia kênh nước thành hai nhánh không. Em xin được hỏi ý anh ạ.)* |
| Kawakami | <ruby>分岐<rt>ぶんき</rt></ruby>させたほうがいい。<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>は<ruby>増<rt>ふ</rt></ruby>えるけど、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby>のほうが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Nên chia. Tổn thất áp suất sẽ tăng nhưng hiệu quả làm mát quan trọng hơn.)* |
| Thái | はい、<ruby>分岐<rt>ぶんき</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>までに80%まで<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Vâng, em sẽ làm theo hướng chia nhánh. Đến thứ tư tuần sau em sẽ hoàn thiện lên 80%.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>何<rt>なに</rt></ruby>かあったらすぐ<ruby>連絡<rt>れんらく</rt></ruby>してね。<br>*(Rõ. Có gì cứ liên lạc ngay nhé.)* |

---

## Tình huống 6 — Phòng họp · 11/2025, 16:00, bàn giao và rút kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Kawakami | ダイカスト<ruby>金型<rt>かながた</rt></ruby>の<ruby>納品<rt>のうひん</rt></ruby>が<ruby>無事<rt>ぶじ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>したよ。お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Đã giao khuôn diecast xong xuôi rồi. Em vất vả rồi.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Anh vất vả rồi ạ. Em thực sự đã học được rất nhiều.)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>感想<rt>かんそう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かせて。<br>*(Thái-kun, cho tôi nghe cảm nhận của em đi.)* |
| Thái | <ruby>温度<rt>おんど</rt></ruby>も<ruby>材質<rt>ざいしつ</rt></ruby>も<ruby>寿命<rt>じゅみょう</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>違<rt>ちが</rt></ruby>って、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>戸惑<rt>とまど</rt></ruby>いました。でも<ruby>収縮率<rt>しゅうしゅくりつ</rt></ruby>のような<ruby>共通<rt>きょうつう</rt></ruby><ruby>点<rt>てん</rt></ruby>もあって、<ruby>面白<rt>おもしろ</rt></ruby>かったです。<br>*(Nhiệt độ, vật liệu, tuổi thọ đều khác hết, ban đầu em hơi bối rối. Nhưng cũng có điểm chung như hệ số co, nên rất thú vị.)* |
| Kawakami | これからダイカストも<ruby>続<rt>つづ</rt></ruby>けたい？<br>*(Sau này có muốn tiếp tục cả diecast không?)* |
| Thái | いいえ、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>俺<rt>おれ</rt></ruby>はプラスチックを<ruby>専門<rt>せんもん</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けたいです。<ruby>今回<rt>こんかい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>はプラスチックの<ruby>仕事<rt>しごと</rt></ruby>にも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つと<ruby>思<rt>おも</rt></ruby>います。<br>*(Không, nói thật là em muốn tiếp tục chuyên về nhựa. Em nghĩ kinh nghiệm lần này cũng sẽ giúp ích cho công việc khuôn nhựa.)* |
| Kawakami | いい<ruby>答<rt>こた</rt></ruby>えだ。<ruby>専門<rt>せんもん</rt></ruby>を<ruby>持<rt>も</rt></ruby>つことは<ruby>大切<rt>たいせつ</rt></ruby>だよ。<br>*(Câu trả lời hay đấy. Có chuyên môn riêng là quan trọng.)* |

---

## Tình huống 7 — Hỏi lại Kimura先輩 · 17:00, xác nhận từ chuyên ngành chưa rõ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>木村<rt>きむら</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ちょっとお<ruby>聞<rt>き</rt></ruby>きしてもいいですか？<br>*(Đàn anh Kimura, em hỏi một chút có được không ạ?)* |
| Kimura | はい、どうぞ。<br>*(Ừ, em hỏi đi.)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さんが「<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>」とおっしゃっていたんですが、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>のことですか？<br>*(Anh Kawakami có nhắc đến "tổn thất áp suất", cụ thể là gì ạ?)* |
| Kimura | <ruby>水<rt>みず</rt></ruby>が<ruby>水路<rt>すいろ</rt></ruby>を<ruby>流<rt>なが</rt></ruby>れるとき、<ruby>分岐<rt>ぶんき</rt></ruby>や<ruby>曲<rt>ま</rt></ruby>がりで<ruby>圧力<rt>あつりょく</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がるんだ。それを<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>ぶ。<br>*(Khi nước chảy qua kênh, ở chỗ chia nhánh hay chỗ uốn cong áp suất sẽ giảm xuống. Cái đó gọi là tổn thất áp suất.)* |
| Thái | なるほど、<ruby>分岐<rt>ぶんき</rt></ruby>すると<ruby>圧力<rt>あつりょく</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がるということですね。<br>*(Em hiểu rồi, tức là chia nhánh thì áp suất giảm đúng không ạ.)* |
| Kimura | そう。でも<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>効率<rt>こうりつ</rt></ruby>と<ruby>圧力<rt>あつりょく</rt></ruby><ruby>損失<rt>そんしつ</rt></ruby>は<ruby>常<rt>つね</rt></ruby>に<ruby>天秤<rt>てんびん</rt></ruby>だ。どっちを<ruby>優先<rt>ゆうせん</rt></ruby>するかは<ruby>製品<rt>せいひん</rt></ruby><ruby>次第<rt>しだい</rt></ruby>だよ。<br>*(Đúng. Nhưng hiệu quả làm mát và tổn thất áp suất luôn là cán cân. Ưu tiên cái nào tuỳ sản phẩm.)* |
| Thái | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được nhiều ạ. Em cảm ơn anh.)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, gọi điện về cho Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & ôn lại từ chuyên ngành qua hội thoại với người yêu ở Việt Nam.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, dự án phụ xong chưa? Tháng trước thấy anh kêu mệt liên tục. |
| Thái | (tiếng Việt) Xong rồi em. Giao hàng tháng 11 đúng hẹn. Anh Kawakami khen, nhẹ cả người. |
| Mai | (tiếng Việt) Mà cái diecast đó là gì hả anh? Em đọc tin nhắn anh gửi nãy giờ không hiểu. |
| Thái | (tiếng Việt) Diecast là đúc áp lực bằng nhôm nóng chảy 700 độ. Khác hẳn nhựa anh hay làm. Vật liệu khuôn cũng đổi sang SKD61 — thép chịu nhiệt, khác con NAK80 quen tay. |
| Mai | (tiếng Việt) Trời, 700 độ cơ á? Nguy hiểm không anh? |
| Thái | (tiếng Việt) Anh chỉ thiết kế khuôn thôi, không trực tiếp đứng máy. Yên tâm. Mà còn cái phần mềm mới nữa, tên MAGMA. Anh Kawakami nói anh ấy học 5 năm mới nắm, anh chỉ đứng xem học lỏm. |
| Mai | (tiếng Việt) Anh có muốn chuyển sang diecast hẳn không? |
| Thái | (tiếng Việt) Không em. Anh nói với anh Kawakami rồi, anh vẫn theo nhựa. Nhưng cái 凝固 — quá trình đông kết — đó áp dụng được cho cả nhựa, học không thừa. |
| Mai | (tiếng Việt) Ừ, anh có nghề riêng là tốt. Đừng ôm đồm. |
| Thái | (tiếng Việt) Cảm ơn em. Thôi đi ngủ đi, mai anh còn phải báo cáo tổng kết quý. |
| Mai | (tiếng Việt) Ngủ ngon anh. |

---

## Đọng lại chương 3

Tháng 10–11/2025, Thái lần đầu bước ra ngoài chuyên môn nhựa để đỡ một dự án phụ về **ダイカスト金型** (khuôn đúc áp lực nhôm). Học được các mẫu câu khi nhận lĩnh vực mới: **nhận chỉ thị từ cấp trên** (〜を担当してもらいたい・〜させていただきます), **hỏi lại lễ phép khi nghe từ chuyên ngành lạ** (〜というのは？・具体的に何のことですか?), **đối chiếu hai lĩnh vực** (〜に対して・〜と比べて) qua bốn điểm khác nhau giữa nhựa và diecast (温度・寿命・材質・離型剤), **trình bày phương án thiết kế** (〜を多めに配置します・よろしいでしょうか?), **báo cáo tiến độ giữa kỳ** theo nguyên tắc 報連相 (進捗を報告します・ご相談させてください), và quan sát đàn anh giải thích kinh nghiệm 5 năm về **MAGMA** — phần mềm chuyên cho 金属溶湯 và 凝固. Bài học lớn: chuyên môn riêng (プラスチック) là cột sống nghề nghiệp, nhưng kinh nghiệm ngoài chuyên môn không bao giờ thừa.

> Từ vựng & mẫu câu chương này: ダイカスト・アルミ合金・鋳造・高圧・SKD61・耐熱鋼・NAK80・離型剤・キャビコア・収縮率・肉厚・冷却水路・分岐・圧力損失・金属溶湯・凝固・MAGMA・Moldex3D・寿命・進捗・報告・連絡・相談・〜を担当してもらう・〜というのは・〜に対して・〜と比べて・〜させていただきます・ご相談させてください・よろしいでしょうか

## Bí quyết chương

- **Setup arc**: dự án diecast là *cameo* — Thái không chuyển ngành, chỉ mở rộng vốn từ chuyên môn. Sẽ payoff khi Thái lên 設計者 chính ở T4-T5 với góc nhìn rộng hơn.
- **Sempai mới**: Kawakami (5 năm MAGMA) — kiểu sempai chuyên biệt từng mảng, khác Tanaka 工場長 ở T1.
- **VN nhà**: Mai — vai trò "người nghe Thái giải thích chuyên ngành tiếng Việt", giúp người học ôn lại từ vựng.
