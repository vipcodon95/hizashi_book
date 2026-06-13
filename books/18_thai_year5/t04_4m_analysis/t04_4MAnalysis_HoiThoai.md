# Sách kỹ sư khuôn đúc · T4. Dẫn dắt phân tích 4M (4M分析)

> **Mục tiêu nhân vật:** Thái (27 tuổi, kỹ sư thiết kế khuôn đúc Anjo, Aichi) dẫn nhóm 5 người (Sakurai, Yamamoto, Adi, Long, Hùng) phân tích 4M sự cố ヒケ・反り trên khuôn ốp cửa Toyota. Học các mẫu hội thoại tiếng Nhật quản lý dự án: **phân công vai trò 4M (担当を決める)**, **báo cáo kết quả phân tích cho cấp dưới và cấp trên (〜の原因は〜です)**, **hỏi lại lễ phép khi chưa rõ từ chuyên ngành (〜というのは?)**, **quan sát đàn anh Sakurai dạy cách đọc 射出条件**, **chốt phương án khắc phục theo cấu trúc ①②③**, và **liên lạc khách hàng (濱田様) bằng kính ngữ qua điện thoại**.

---

## Bối cảnh

Tháng 10 năm 2026. Thái — kỹ sư thiết kế N2 năm thứ 5 tại **株式会社みなみ精密金型** — được giao chủ trì phân tích 4M một sự cố lớn: khuôn ốp cửa Toyota bị **ヒケ** (vết lõm bề mặt) và **反り** (cong vênh 1.5mm) sau lần thử khuôn đầu. Nhóm gồm Sakurai (đàn anh Method), Yamamoto (đồng nghiệp Machine), Adi (Indonesia, Material), Long + Hùng (đàn em VN, Man). Khách hàng Hamada-san của Toyota Shatai đang chờ phản hồi trong 3 ngày. Chương này tập trung các mẫu câu **dẫn dắt cuộc họp 4M analysis**, **báo cáo nguyên nhân gốc** và **trình bày phương án khắc phục** bằng tiếng Nhật doanh nghiệp.

---

## Tình huống 1 — Phòng họp nhỏ tầng 2 · 8:00 sáng Ngày 1, phân công vai trò 4M

| Vai | Lời thoại |
|---|---|
| Thái | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>、トヨタ<ruby>車体<rt>しゃたい</rt></ruby>さんの<ruby>内装<rt>ないそう</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby><ruby>金型<rt>かながた</rt></ruby>の<ruby>4M<rt>よんエム</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chào mọi người buổi sáng. Từ hôm nay 3 ngày, chúng ta bắt đầu phân tích 4M cho khuôn linh kiện nội thất của Toyota Shatai.)* |
| Thái | <ruby>不良<rt>ふりょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つです。<ruby>表面<rt>ひょうめん</rt></ruby>のヒケと、<ruby>1.5<rt>いってんご</rt></ruby>ミリの<ruby>反<rt>そ</rt></ruby>りです。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>特定<rt>とくてい</rt></ruby>して、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Nội dung lỗi có 2: vết lõm bề mặt và cong vênh 1.5mm. Mình sẽ xác định nguyên nhân và đề xuất phương án cho ngài Hamada.)* |
| Sakurai | タイさん、<ruby>担当<rt>たんとう</rt></ruby>はどう<ruby>分<rt>わ</rt></ruby>けますか？<br>*(Anh Thái, phân công thế nào ạ?)* |
| Thái | <ruby>4M<rt>よんエム</rt></ruby>ごとに<ruby>担当<rt>たんとう</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。<ruby>桜井<rt>さくらい</rt></ruby>さんはMethod、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Phân công theo từng M. Anh Sakurai phụ trách Method, kiểm tra điều kiện ép.)* |
| Sakurai | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>保圧<rt>ほあつ</rt></ruby>と<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>速度<rt>そくど</rt></ruby>を<ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>見<rt>み</rt></ruby>ます。<br>*(Rõ. Tôi tập trung vào áp giữ và tốc độ ép.)* |
| Thái | <ruby>山本<rt>やまもと</rt></ruby>さんはMachine、Moldex3Dで<ruby>水路<rt>すいろ</rt></ruby>の<ruby>再<rt>さい</rt></ruby>シミュレーションをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Yamamoto phụ trách Machine, chạy lại mô phỏng rãnh nước bằng Moldex3D.)* |
| Yamamoto | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>午後<rt>ごご</rt></ruby>には<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Vâng, em rõ. Chiều sẽ có kết quả.)* |
| Thái | アディさんはMaterial、PA66-GF30の<ruby>水分量<rt>すいぶんりょう</rt></ruby>と<ruby>ロット<rt>ろっと</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Anh Adi phụ trách Material, kiểm tra độ ẩm và số lô của PA66-GF30.)* |
| Adi | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>倉庫<rt>そうこ</rt></ruby>でサンプルを<ruby>取<rt>と</rt></ruby>ってきます。<br>*(Tôi hiểu. Tôi ra kho lấy mẫu.)* |
| Thái | ロンとフン、<ruby>二人<rt>ふたり</rt></ruby>はMan、<ruby>現場<rt>げんば</rt></ruby>のオペレーターさんに<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>調査<rt>ちょうさ</rt></ruby>をしてください。<br>*(Long và Hùng, hai em phụ trách Man, phỏng vấn người vận hành tại hiện trường.)* |
| Long | はい、タイ<ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Vâng, anh Thái, em rõ.)* |
| Thái | <ruby>夕方<rt>ゆうがた</rt></ruby><ruby>17<rt>じゅうしち</rt></ruby><ruby>時<rt>じ</rt></ruby>にここで<ruby>結果<rt>けっか</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>しましょう。<ruby>分<rt>わ</rt></ruby>からないことがあれば、すぐ<ruby>連絡<rt>れんらく</rt></ruby>してください。<br>*(Chiều 17h tập trung tại đây chia sẻ kết quả. Có gì không hiểu thì báo ngay.)* |

---

## Tình huống 2 — Bàn làm việc của Sakurai · 11:00 Ngày 1, quan sát đàn anh đọc 射出条件

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>邪魔<rt>じゃま</rt></ruby>してもいいですか？Methodの<ruby>見方<rt>みかた</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<br>*(Anh Sakurai, em làm phiền một chút được không ạ? Cho em học cách đọc Method.)* |
| Sakurai | いいよ。タイさん、まずこのグラフを<ruby>見<rt>み</rt></ruby>てください。<ruby>射出<rt>しゃしゅつ</rt></ruby>から<ruby>保圧<rt>ほあつ</rt></ruby><ruby>切替<rt>きりかえ</rt></ruby>までの<ruby>圧力<rt>あつりょく</rt></ruby><ruby>波形<rt>はけい</rt></ruby>です。<br>*(Được. Anh Thái, đầu tiên nhìn biểu đồ này. Đây là dạng sóng áp lực từ giai đoạn ép đến chuyển sang giữ áp.)* |
| Thái | すみません、「<ruby>切替<rt>きりかえ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "kirikae" nghĩa là gì ạ?)* |
| Sakurai | <ruby>射出<rt>しゃしゅつ</rt></ruby>の<ruby>速度<rt>そくど</rt></ruby><ruby>制御<rt>せいぎょ</rt></ruby>から<ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>圧力<rt>あつりょく</rt></ruby><ruby>制御<rt>せいぎょ</rt></ruby>に<ruby>変<rt>か</rt></ruby>わる<ruby>瞬間<rt>しゅんかん</rt></ruby>のことです。V/Pとも<ruby>言<rt>い</rt></ruby>います。<br>*(Là khoảnh khắc chuyển từ điều khiển tốc độ ép sang điều khiển áp lực giữ. Còn gọi là V/P.)* |
| Thái | なるほど、V/P<ruby>切替<rt>きりかえ</rt></ruby>ですね。それでこのグラフを<ruby>見<rt>み</rt></ruby>て、<ruby>何<rt>なに</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりますか？<br>*(Ra là V/P switching ạ. Vậy nhìn biểu đồ này thấy được gì ạ?)* |
| Sakurai | <ruby>保圧<rt>ほあつ</rt></ruby>が<ruby>50<rt>ごじゅう</rt></ruby>MPaに<ruby>設定<rt>せってい</rt></ruby>されていますが、これは<ruby>大型<rt>おおがた</rt></ruby><ruby>金型<rt>かながた</rt></ruby>には<ruby>低<rt>ひく</rt></ruby>すぎます。<ruby>普通<rt>ふつう</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby>MPa<ruby>前後<rt>ぜんご</rt></ruby>が<ruby>標準<rt>ひょうじゅん</rt></ruby>です。<br>*(Áp giữ được set 50MPa, nhưng cái này quá thấp cho khuôn lớn. Bình thường khoảng 80MPa mới là chuẩn.)* |
| Thái | <ruby>保圧<rt>ほあつ</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いと、なぜヒケが<ruby>出<rt>で</rt></ruby>るんですか？<br>*(Áp giữ thấp thì tại sao lại bị lõm ạ?)* |
| Sakurai | <ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>冷<rt>ひ</rt></ruby>えて<ruby>収縮<rt>しゅうしゅく</rt></ruby>するときに、<ruby>追加<rt>ついか</rt></ruby>の<ruby>樹脂<rt>じゅし</rt></ruby>を<ruby>押<rt>お</rt></ruby>し<ruby>込<rt>こ</rt></ruby>めません。だから<ruby>表面<rt>ひょうめん</rt></ruby>がへこむんです。<br>*(Khi nhựa nguội và co lại, không đẩy được nhựa bù thêm vào. Vì thế bề mặt bị lõm.)* |
| Thái | よく<ruby>分<rt>わ</rt></ruby>かりました。メモしておきます。<br>*(Em hiểu rất rõ rồi. Em ghi lại.)* |
| Sakurai | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>確定<rt>かくてい</rt></ruby>です。<ruby>午後<rt>ごご</rt></ruby>に<ruby>詳<rt>くわ</rt></ruby>しい<ruby>資料<rt>しりょう</rt></ruby>をまとめます。<br>*(Nguyên nhân đã chắc. Chiều tôi tổng hợp tài liệu chi tiết.)* |

---

## Tình huống 3 — Phòng họp · 14:00 Ngày 1, Sakurai báo cáo Method

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Tôi đã kiểm điều kiện ép. Xin nói kết luận trước.)* |
| Sakurai | <ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby><ruby>値<rt>ち</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby>MPaが<ruby>低<rt>ひく</rt></ruby>すぎます。<ruby>大型<rt>おおがた</rt></ruby><ruby>金型<rt>かながた</rt></ruby>なら<ruby>80<rt>はちじゅう</rt></ruby>MPaが<ruby>標準<rt>ひょうじゅん</rt></ruby>です。<br>*(Áp giữ set 50MPa quá thấp. Khuôn lớn thì 80MPa mới chuẩn.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>がヒケの<ruby>直接<rt>ちょくせつ</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>、ということですね？<br>*(Anh Sakurai, cho em xác nhận. Nghĩa là thiếu áp giữ là nguyên nhân trực tiếp gây vết lõm, đúng không ạ?)* |
| Sakurai | そうです。<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>収縮<rt>しゅうしゅく</rt></ruby>を<ruby>補<rt>おぎな</rt></ruby>えていないので、<ruby>表面<rt>ひょうめん</rt></ruby>にへこみが<ruby>出<rt>で</rt></ruby>ます。<br>*(Đúng. Không bù được co rút khi làm nguội nên bề mặt xuất hiện vết lõm.)* |
| Thái | <ruby>了解<rt>りょうかい</rt></ruby>です。これがヒケの<ruby>原因<rt>げんいん</rt></ruby>の<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>ですね。<br>*(Rõ. Đây là nguyên nhân thứ nhất của vết lõm.)* |
| Sakurai | はい。<ruby>修正案<rt>しゅうせいあん</rt></ruby>としては、<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>上<rt>あ</rt></ruby>げて、<ruby>保圧<rt>ほあつ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>も<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>延長することを<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Vâng. Phương án sửa: tôi đề xuất nâng áp giữ lên 80MPa và kéo dài thời gian giữ thêm 3 giây.)* |

---

## Tình huống 4 — Phòng họp · 16:00 Ngày 1, Yamamoto báo cáo Machine

| Vai | Lời thoại |
|---|---|
| Yamamoto | Moldex3Dの<ruby>再<rt>さい</rt></ruby>シミュレーション<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em xin báo cáo kết quả mô phỏng lại bằng Moldex3D.)* |
| Yamamoto | スクリーンを<ruby>見<rt>み</rt></ruby>てください。<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>で<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby>が<ruby>足<rt>た</rt></ruby>りません。<ruby>赤<rt>あか</rt></ruby>い<ruby>部分<rt>ぶぶん</rt></ruby>が<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>です。<br>*(Mời nhìn màn hình. Góc trái dưới rãnh nước làm nguội bị thiếu. Phần đỏ là chênh lệch nhiệt độ.)* |
| Thái | <ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>はどのぐらいですか？<br>*(Chênh lệch nhiệt độ khoảng bao nhiêu?)* |
| Yamamoto | <ruby>左上<rt>ひだりうえ</rt></ruby>と<ruby>左下<rt>ひだりした</rt></ruby>で<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>の<ruby>差<rt>さ</rt></ruby>があります。<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<br>*(Giữa góc trái trên và trái dưới chênh 15 độ. Phạm vi cho phép là trong 5 độ.)* |
| Thái | すみません、「<ruby>許容<rt>きょよう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>」というのは、<ruby>設計<rt>せっけい</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>のことですね？<br>*(Xin lỗi, "phạm vi cho phép" nghĩa là phạm vi tiêu chuẩn thiết kế, đúng không ạ?)* |
| Yamamoto | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>15<rt>じゅうご</rt></ruby><ruby>度<rt>ど</rt></ruby>の<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>のせいで<ruby>左下<rt>ひだりした</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>く<ruby>冷<rt>ひ</rt></ruby>えて、<ruby>反<rt>そ</rt></ruby>りが<ruby>発生<rt>はっせい</rt></ruby>します。<br>*(Vâng, đúng vậy. Vì chênh 15 độ, góc trái dưới làm nguội chậm, gây cong vênh.)* |
| Thái | これが<ruby>反<rt>そ</rt></ruby>り<ruby>1.5<rt>いってんご</rt></ruby>ミリの<ruby>原因<rt>げんいん</rt></ruby>ということですね。<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>が<ruby>確定<rt>かくてい</rt></ruby>しました。<br>*(Nghĩa là đây là nguyên nhân gây cong 1.5mm. Nguyên nhân thứ hai đã chắc.)* |
| Yamamoto | <ruby>修正案<rt>しゅうせいあん</rt></ruby>として、<ruby>左下<rt>ひだりした</rt></ruby>に<ruby>水路<rt>すいろ</rt></ruby>を<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>すれば、<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まるはずです。<br>*(Phương án sửa: nếu thêm 2 rãnh nước ở góc trái dưới, chênh lệch sẽ vào trong 3 độ.)* |

---

## Tình huống 5 — Phòng họp · 17:00 Ngày 1, Adi và đàn em VN báo cáo Material + Man

| Vai | Lời thoại |
|---|---|
| Adi | アディです。Materialの<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em Adi đây. Xin báo cáo kết quả Material.)* |
| Adi | <ruby>材料<rt>ざいりょう</rt></ruby>はPA66-GF30 V-0、ロット<ruby>番号<rt>ばんごう</rt></ruby>は<ruby>2026<rt>にせんにじゅうろく</rt></ruby>-<ruby>09<rt>ぜろきゅう</rt></ruby>-<ruby>A<rt>エー</rt></ruby><ruby>123<rt>いちにさん</rt></ruby>です。<ruby>水分量<rt>すいぶんりょう</rt></ruby>は<ruby>0.05<rt>れいてんれいご</rt></ruby>パーセントで、<ruby>規格<rt>きかく</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<br>*(Vật liệu PA66-GF30 V-0, số lô 2026-09-A123. Độ ẩm 0.05%, trong tiêu chuẩn.)* |
| Thái | <ruby>規格<rt>きかく</rt></ruby><ruby>内<rt>ない</rt></ruby>ということは、<ruby>材料<rt>ざいりょう</rt></ruby>には<ruby>問題<rt>もんだい</rt></ruby>がないということですね。<br>*(Nằm trong tiêu chuẩn, nghĩa là Vật liệu không có vấn đề, đúng không.)* |
| Adi | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>材料<rt>ざいりょう</rt></ruby>は<ruby>除外<rt>じょがい</rt></ruby>できます。<br>*(Vâng, đúng vậy. Có thể loại Material khỏi nguyên nhân.)* |
| Long | (tiếng Việt với Hùng nhỏ giọng) Mày báo trước hay tao báo? |
| Hùng | (tiếng Việt) Mày báo, tao bổ sung. |
| Long | タイ<ruby>先輩<rt>せんぱい</rt></ruby>、Manの<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>り<ruby>調査<rt>ちょうさ</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Anh Thái, em xin báo cáo kết quả phỏng vấn phần Man.)* |
| Long | オペレーターの<ruby>松本<rt>まつもと</rt></ruby>さんに<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>のショットを<ruby>確認<rt>かくにん</rt></ruby>してもらいました。<ruby>段取<rt>だんど</rt></ruby>り<ruby>時間<rt>じかん</rt></ruby>も<ruby>標準<rt>ひょうじゅん</rt></ruby><ruby>通<rt>どお</rt></ruby>りで、<ruby>異常<rt>いじょう</rt></ruby>はありませんでした。<br>*(Em đã nhờ chú Matsumoto vận hành kiểm tra 3 lần shot. Thời gian set-up đúng chuẩn, không có bất thường.)* |
| Hùng | <ruby>補足<rt>ほそく</rt></ruby>します。<ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>と<ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby>も<ruby>記録<rt>きろく</rt></ruby><ruby>表<rt>ひょう</rt></ruby><ruby>通<rt>どお</rt></ruby>りでした。<br>*(Em bổ sung. Nhiệt khuôn và nhiệt nhựa cũng đúng theo bảng ghi.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまです。Manも<ruby>除外<rt>じょがい</rt></ruby>ですね。<ruby>残<rt>のこ</rt></ruby>るはMethodとMachineです。<br>*(Cảm ơn các em. Vậy Man cũng loại. Chỉ còn Method và Machine.)* |
| Thái | <ruby>原因<rt>げんいん</rt></ruby>が<ruby>絞<rt>しぼ</rt></ruby>られました。Method（<ruby>保圧<rt>ほあつ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>）とMachine（<ruby>水路<rt>すいろ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>）、これが<ruby>根本<rt>こんぽん</rt></ruby><ruby>原因<rt>げんいん</rt></ruby>です。<br>*(Nguyên nhân đã thu hẹp. Method (thiếu áp giữ) và Machine (thiếu rãnh nước), đây là nguyên nhân gốc rễ.)* |

---

## Tình huống 6 — Phòng họp · 9:00 sáng Ngày 2, hỏi lại đàn anh về 修正案 trước khi tổng hợp

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>お<ruby>聞<rt>き</rt></ruby>きしてもよろしいですか？<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>急<rt>きゅう</rt></ruby>に<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>上<rt>あ</rt></ruby>げると、バリは<ruby>出<rt>で</rt></ruby>ませんか？<br>*(Anh Sakurai, em hỏi anh một điểm được không ạ? Nếu đột ngột nâng áp giữ lên 80MPa, có ra ba via không?)* |
| Sakurai | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>普通<rt>ふつう</rt></ruby>はバリの<ruby>心配<rt>しんぱい</rt></ruby>があります。だから、<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げます。<ruby>60<rt>ろくじゅう</rt></ruby>→<ruby>70<rt>ななじゅう</rt></ruby>→<ruby>80<rt>はちじゅう</rt></ruby>MPaのように<ruby>3<rt>さん</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>階<rt>かい</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けて、<ruby>各<rt>かく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby>ショット<ruby>取<rt>と</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Câu hỏi hay. Bình thường có lo ngại ba via. Vì thế nâng theo từng bước: 60→70→80MPa, chia 3 cấp, mỗi cấp lấy 10 shot để kiểm.)* |
| Thái | なるほど、<ruby>段階的<rt>だんかいてき</rt></ruby>に、ということですね。<ruby>修正案<rt>しゅうせいあん</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>します。<br>*(Ra vậy, theo từng cấp ạ. Em phản ánh vào phương án.)* |
| Sakurai | それから、<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えたほうがいいです。<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>が<ruby>先<rt>さき</rt></ruby>、<ruby>保圧<rt>ほあつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>後<rt>あと</rt></ruby>です。<br>*(Còn nữa, thứ tự thêm rãnh nước cũng cần cân nhắc. Thêm rãnh nước trước, điều chỉnh áp giữ sau.)* |
| Thái | なぜその<ruby>順番<rt>じゅんばん</rt></ruby>ですか？<br>*(Vì sao thứ tự đó ạ?)* |
| Sakurai | <ruby>水路<rt>すいろ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えると、<ruby>金型<rt>かながた</rt></ruby><ruby>温度<rt>おんど</rt></ruby>の<ruby>分布<rt>ぶんぷ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。それから<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせないと、<ruby>意味<rt>いみ</rt></ruby>がありません。<br>*(Đổi rãnh nước thì phân bố nhiệt khuôn sẽ đổi. Sau đó mới khớp áp giữ, không thì không ý nghĩa.)* |
| Thái | よく<ruby>分<rt>わ</rt></ruby>かりました。<ruby>桜井<rt>さくらい</rt></ruby>さん、ありがとうございます。<br>*(Em hiểu rất rõ rồi. Anh Sakurai, em cảm ơn ạ.)* |

---

## Tình huống 7 — Phòng họp · 14:00 Ngày 2, Thái trình bày phương án ①②③ cho cả nhóm

| Vai | Lời thoại |
|---|---|
| Thái | みなさん、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つにまとめました。ホワイトボードを<ruby>見<rt>み</rt></ruby>てください。<br>*(Mọi người, em đã tổng hợp phương án thành 3 mục. Mời nhìn bảng.)* |
| Thái | ①<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>。<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>します。<ruby>溶接<rt>ようせつ</rt></ruby>と<ruby>再加工<rt>さいかこう</rt></ruby>で<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby>かかります。<br>*(1. Thêm rãnh nước. Thêm 2 cái ở góc trái dưới. Hàn và gia công lại mất 3 ngày.)* |
| Thái | ②<ruby>保圧<rt>ほあつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>。<ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>の<ruby>後<rt>あと</rt></ruby>、<ruby>60<rt>ろくじゅう</rt></ruby>→<ruby>70<rt>ななじゅう</rt></ruby>→<ruby>80<rt>はちじゅう</rt></ruby>MPaに<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げます。バリ<ruby>監視<rt>かんし</rt></ruby>もします。<br>*(2. Điều chỉnh áp giữ. Sau khi thêm rãnh nước, nâng từng cấp 60→70→80MPa. Theo dõi cả ba via.)* |
| Thái | ③<ruby>再<rt>さい</rt></ruby>トライアル。<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>実施<rt>じっし</rt></ruby>し、<ruby>30<rt>さんじゅっ</rt></ruby>ショットの<ruby>寸法<rt>すんぽう</rt></ruby><ruby>測定<rt>そくてい</rt></ruby>を<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(3. Thử khuôn lại. Thực hiện trong vòng 1 tuần, nộp đo kích thước của 30 shot cho ngài Hamada.)* |
| Yamamoto | <ruby>水路<rt>すいろ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>までに<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Em sẽ hoàn thành bản vẽ thêm rãnh nước trước ngày mai.)* |
| Sakurai | <ruby>保圧<rt>ほあつ</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>テーブルは<ruby>俺<rt>おれ</rt></ruby>が<ruby>作<rt>つく</rt></ruby>る。<br>*(Bảng cấp áp giữ tôi làm.)* |
| Adi | <ruby>材料<rt>ざいりょう</rt></ruby><ruby>同<rt>おな</rt></ruby>じロットを<ruby>確保<rt>かくほ</rt></ruby>しておきます。<br>*(Em sẽ giữ sẵn cùng lô vật liệu.)* |
| Long | <ruby>松本<rt>まつもと</rt></ruby>さんに<ruby>再<rt>さい</rt></ruby>トライアルの<ruby>日程<rt>にってい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin chú Matsumoto sắp lịch thử khuôn lại.)* |
| Thái | みんな、ありがとう。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>、<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>します。<br>*(Cảm ơn cả nhóm. Sáng mai em sẽ gọi cho ngài Hamada.)* |

---

## Tình huống 8 — Bàn Thái · 9:00 sáng Ngày 3, gọi điện báo cáo khách hàng 濱田様

| Vai | Lời thoại |
|---|---|
| Thái | お<ruby>世話<rt>せわ</rt></ruby>になっております。みなみ<ruby>精密<rt>せいみつ</rt></ruby><ruby>金型<rt>かながた</rt></ruby>のグエンでございます。<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby><ruby>少々<rt>しょうしょう</rt></ruby>よろしいでしょうか。<br>*(Em luôn được anh quan tâm. Tôi là Nguyễn của Minami Tinh mật Khuôn đúc. Ngài Hamada, hiện anh có chút thời gian không ạ?)* |
| Hamada | はい、グエンさん。<ruby>4M<rt>よんエム</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>の<ruby>件<rt>けん</rt></ruby>ですね。<br>*(Vâng, anh Nguyễn. Vụ phân tích 4M phải không.)* |
| Thái | はい。<ruby>3<rt>みっ</rt></ruby><ruby>日間<rt>かかん</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>をご<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<ruby>根本<rt>こんぽん</rt></ruby><ruby>原因<rt>げんいん</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つでございます。<br>*(Vâng. Em xin báo cáo kết quả phân tích 3 ngày. Nguyên nhân gốc có 2 ạ.)* |
| Thái | <ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はMethod、<ruby>保圧<rt>ほあつ</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>。<ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はMachine、<ruby>左下<rt>ひだりした</rt></ruby><ruby>角<rt>かど</rt></ruby>の<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>水路<rt>すいろ</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>でございます。<br>*(Một là Method, thiếu áp giữ. Hai là Machine, thiếu rãnh nước làm nguội ở góc trái dưới.)* |
| Hamada | <ruby>材料<rt>ざいりょう</rt></ruby>と<ruby>人<rt>ひと</rt></ruby>のほうは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか。<br>*(Phần Vật liệu và Người ổn chứ?)* |
| Thái | はい、MaterialとManは<ruby>規格<rt>きかく</rt></ruby><ruby>内<rt>ない</rt></ruby>で、<ruby>除外<rt>じょがい</rt></ruby>できております。<br>*(Vâng, Material và Man đều trong tiêu chuẩn, đã loại được.)* |
| Hamada | <ruby>修正案<rt>しゅうせいあん</rt></ruby>と<ruby>日程<rt>にってい</rt></ruby>は？<br>*(Phương án và lịch?)* |
| Thái | <ruby>修正案<rt>しゅうせいあん</rt></ruby>は<ruby>3<rt>みっ</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>でございます。<ruby>水路<rt>すいろ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>、<ruby>保圧<rt>ほあつ</rt></ruby>を<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>80<rt>はちじゅう</rt></ruby>MPaへ、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>再<rt>さい</rt></ruby>トライアル<ruby>実施<rt>じっし</rt></ruby>でございます。<br>*(Phương án 3 mục: thêm 2 rãnh nước, nâng áp giữ lên 80MPa theo từng cấp, thử khuôn lại trong vòng 1 tuần.)* |
| Hamada | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>詳<rt>くわ</rt></ruby>しい<ruby>資料<rt>しりょう</rt></ruby>を<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>にメールで<ruby>送<rt>おく</rt></ruby>っていただけますか。<br>*(Đã rõ. Anh gửi tài liệu chi tiết qua mail trong hôm nay được không?)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>夕方<rt>ゆうがた</rt></ruby>までにお<ruby>送<rt>おく</rt></ruby>りいたします。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございました。<br>*(Em đã rõ ạ. Em gửi trước chiều. Hôm nay xin cảm ơn anh đã dành thời gian.)* |
| Hamada | こちらこそ。<ruby>再<rt>さい</rt></ruby>トライアル、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi mới cảm ơn. Lần thử lại nhờ anh.)* |

---

## Tình huống 9 — Hành lang · 10:30 Ngày 3, Yamamoto hỏi thêm về cách nói chuyện với khách hàng

| Vai | Lời thoại |
|---|---|
| Yamamoto | タイさん、<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>との<ruby>電話<rt>でんわ</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いていました。すごく<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていましたね。<br>*(Anh Thái, em nghe cuộc điện với ngài Hamada. Anh rất bình tĩnh.)* |
| Thái | ありがとう。<ruby>大事<rt>だいじ</rt></ruby>なのは、<ruby>結論<rt>けつろん</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>言<rt>い</rt></ruby>うことです。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>2<rt>ふた</rt></ruby>つ、<ruby>修正案<rt>しゅうせいあん</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ、というふうに<ruby>数字<rt>すうじ</rt></ruby>で<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Cảm ơn. Quan trọng là nói kết luận trước. Nguyên nhân 2, phương án 3 — truyền đạt bằng con số.)* |
| Yamamoto | なるほど。「<ruby>結論<rt>けつろん</rt></ruby>から<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」というのは、そのためですか？<br>*(Ra là vậy. "Em xin nói kết luận trước" là vì lý do đó ạ?)* |
| Thái | そうです。<ruby>濱田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>忙<rt>いそが</rt></ruby>しいから、<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby>で<ruby>要点<rt>ようてん</rt></ruby>が<ruby>伝<rt>つた</rt></ruby>わらないとダメです。<br>*(Đúng. Ngài Hamada bận, nên 3 giây đầu mà không truyền được trọng điểm là không được.)* |
| Yamamoto | <ruby>勉強<rt>べんきょう</rt></ruby>になります。あと、「<ruby>除外<rt>じょがい</rt></ruby>できております」の<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>、すごく<ruby>丁寧<rt>ていねい</rt></ruby>でした。<br>*(Em học được. Còn cách nói "đã loại được" cũng rất lịch sự.)* |
| Thái | お<ruby>客様<rt>きゃくさま</rt></ruby>には「〜ております」「〜でございます」を<ruby>使<rt>つか</rt></ruby>います。<ruby>桜井<rt>さくらい</rt></ruby>さんが<ruby>1<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>のときに<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>です。<br>*(Với khách hàng dùng "〜ております", "〜でございます". Anh Sakurai dạy em hồi năm 1.)* |
| Yamamoto | <ruby>俺<rt>おれ</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えます。ありがとうございます。<br>*(Em cũng sẽ nhớ. Cảm ơn anh.)* |

---

## Tình huống 10 — Ký túc · 21:00 Ngày 3, gọi LINE về Việt Nam với Mai (scene tiếng Việt — mạch nhân vật)

> Scene tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng JP qua câu chuyện trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, xong vụ phân tích chưa? Mấy hôm nay em thấy anh hốc hác. |
| Thái | (tiếng Việt) Xong rồi em. Sáng nay anh gọi ngài Hamada báo cáo, ổng duyệt phương án luôn. |
| Mai | (tiếng Việt) Mừng quá. Anh kể em nghe được không, 4M là gì? |
| Thái | (tiếng Việt) Là phân tích sự cố theo 4 yếu tố: Man — người, Machine — máy, Material — vật liệu, Method — phương pháp. Mỗi người trong nhóm phụ trách một M. Anh dẫn dắt. |
| Mai | (tiếng Việt) Vậy nguyên nhân do đâu? |
| Thái | (tiếng Việt) Hai cái: 保圧 (áp giữ) set thấp quá, với 水路 (rãnh nước làm nguội) thiếu ở góc trái dưới khuôn. Em Adi với Long-Hùng loại sạch phần vật liệu và người. |
| Mai | (tiếng Việt) Em nghe lùng bùng. Mà cảm giác anh không còn là cậu kỹ sư mới sang Nhật ngày nào nữa rồi. |
| Thái | (tiếng Việt) Năm thứ 5 rồi em. Lần đầu anh chủ trì 4M analysis xong cuộc họp 5 người, viết phương án ①②③, gọi điện kính ngữ với khách hàng. Anh Sakurai ngày xưa dạy anh từng câu "結論から申し上げます", giờ anh dạy lại Yamamoto. |
| Mai | (tiếng Việt) Tự hào về anh. Tháng 12 anh về nhé, mẹ với em đợi. |
| Thái | (tiếng Việt) Ừ. Tuần sau anh phải đứng tái thử khuôn nữa. Xong cái đó là chốt được nửa năm cuối visa rồi. |
| Mai | (tiếng Việt) Đi ngủ sớm đi. Ngủ ngon anh. |
| Thái | (tiếng Việt) Ngủ ngon em. |

---

## Đọng lại chương 4

Ba ngày phân tích 4M, Thái lần đầu chủ trì một dự án có 5 người dưới quyền. Mẫu câu nền tảng học được: **phân công vai trò theo 4M** (〜さんは〜を担当してください), **báo cáo kết quả theo cấu trúc kết luận trước** (結論から申し上げます・原因は2つです), **hỏi lại lễ phép khi chưa rõ** (〜というのは?・〜ということですね), **trình bày phương án theo ①②③ với deadline cụ thể** (1週間以内に再トライアル), và đặc biệt là **gọi điện báo cáo khách hàng bằng kính ngữ** (お世話になっております・〜でございます・〜ております・承知いたしました). Cùng với đó là kỹ năng quản lý: **loại trừ nguyên nhân** (除外できる) để khoanh vùng gốc rễ, và phương pháp **段階的に上げる** (nâng từng cấp) để tránh tạo lỗi mới khi sửa. Sau 5 năm tại Anjo, Thái đã trở thành người dẫn dắt — không còn là người chỉ học hỏi.

> Từ vựng & mẫu câu chương này: 4M分析・担当・共有・射出条件・保圧・V/P切替・水路・反り・ヒケ・段階的・許容範囲・規格内・除外・根本原因・修正案・再トライアル・溶接・再加工・寸法測定・結論から申し上げます・〜というのは・〜ということですね・お世話になっております・〜でございます・〜ております・承知いたしました・〜させていただきます

## Bí quyết chương

- **Mạch arc 5 năm payoff**: Sách 14 (T1) Thái còn hỏi "〜というのは?" với Tanaka. Sách 18 (T4) Yamamoto hỏi lại Thái câu y hệt → Thái thành 先輩.
- **Câu mở khách hàng**: "お世話になっております。〜でございます。今お時間少々よろしいでしょうか" — template cố định, học thuộc.
- **Cấu trúc báo cáo**: kết luận → con số (2 nguyên nhân, 3 phương án) → chi tiết. KHÔNG kể quá trình trước.
- **Scene Mai cuối**: chốt arc cá nhân — Mai vẫn đợi, visa 5 năm sắp xong.
