# Sách kỹ sư cầu nối & khởi nghiệp · T10. Quá tải BrSE + Hizashi — học cách nói "không"

> **Mục tiêu nhân vật:** Đại 25 tuổi, 12/2030. Học các mẫu hội thoại tiếng Nhật khi quá tải công việc: (1) báo tình huống khẩn với PM (`緊急事態が発生しました`), (2) đề xuất 2 phương án hỗ trợ (`二つの案がございます`), (3) chấp nhận thêm việc đúng mức (`承知しました、ただし〜まで`), (4) báo ốm xin nghỉ chuẩn business (`体調不良のため〜`), (5) cảm ơn sau khi đồng nghiệp gánh hộ (`ご迷惑をおかけしました`), (6) đặt ranh giới với khách bằng JP keigo (`〜は対応いたしかねます`).

---

## Bối cảnh

12/2030. Sau v1.0 launch tháng 11, Hizashi user tăng 187 → 1.500 paid trong 6 tuần, MRR ¥548k → ¥1.5M. Cùng lúc Thanh A có khủng hoảng: dev VN team Cần (28t) ốm cúm 2 tuần, dự án NTT Smart Solutions Tokyo deadline 31/12 risk trễ. Đại làm 80 giờ/tuần, ngủ 4-5 tiếng. Mai phát hiện sốt 37.8°C giữa tuần, ép Đại nghỉ 2 ngày. Chương này tập trung mẫu báo cáo khẩn cấp + xin nghỉ ốm + đặt ranh giới với cả công ty BrSE và co-founder.

---

## Tình huống 1 — Văn phòng Thanh A · Thứ Hai 9:00, standup khẩn với Tanaka-PM

*Phòng họp tầng 8 Honmachi. Tanaka mặt căng. Đại vừa đến, vẫn còn cầm cốc cà phê.*

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさん、おはようございます。NTT Smart Solutions <ruby>案件<rt>あんけん</rt></ruby>で<ruby>緊急事態<rt>きんきゅうじたい</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しました。<br>*(Đại, chào buổi sáng. Dự án NTT Smart Solutions vừa phát sinh tình huống khẩn cấp.)* |
| Đại | おはようございます。<ruby>何<rt>なに</rt></ruby>がありましたか?<br>*(Chào anh. Có chuyện gì vậy ạ?)* |
| Tanaka | <ruby>開発<rt>かいはつ</rt></ruby>チームのカンさんが、インフルエンザで2<ruby>週間<rt>しゅうかん</rt></ruby>お<ruby>休<rt>やす</rt></ruby>みになりました。<br>*(Anh Cần bên đội dev nghỉ 2 tuần vì cúm.)* |
| Đại | え、カンさんが?<ruby>知<rt>し</rt></ruby>りませんでした。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Hả, anh Cần ấy ạ? Em chưa biết. Anh ấy không sao chứ?)* |
| Tanaka | お<ruby>大事<rt>だいじ</rt></ruby>に、とのことです。しかし、12<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>の<ruby>中間<rt>ちゅうかん</rt></ruby>レビューに<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わない<ruby>恐<rt>おそ</rt></ruby>れがあります。<br>*(Anh ấy bảo giữ sức khoẻ. Nhưng có nguy cơ không kịp mid-review 31/12.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>対策案<rt>たいさくあん</rt></ruby>はございますか?<br>*(Em hiểu rồi. Có phương án đối phó nào không ạ?)* |
| Tanaka | <ruby>支援案<rt>しえんあん</rt></ruby>は<ruby>二<rt>ふた</rt></ruby>つございます。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>他<rt>た</rt></ruby>プロジェクトからシニアバックエンドを<ruby>移籍<rt>いせき</rt></ruby>させる<ruby>案<rt>あん</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、グエンさんに<ruby>技術<rt>ぎじゅつ</rt></ruby>サポートとして<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っていただく<ruby>案<rt>あん</rt></ruby>です。<br>*(Phương án hỗ trợ có 2. Một, điều senior backend từ project khác sang. Hai, nhờ Đại nhảy vào hỗ trợ kỹ thuật.)* |
| Đại | (suy nghĩ 3 giây) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>両方<rt>りょうほう</rt></ruby>の<ruby>案<rt>あん</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めてまいります。ただし、<ruby>私<rt>わたし</rt></ruby>の<ruby>追加<rt>ついか</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>は12<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>までと<ruby>限定<rt>げんてい</rt></ruby>させていただけますでしょうか。<br>*(Em đã rõ ạ. Em sẽ triển khai cả 2 phương án. Tuy nhiên, xin phép cho em giới hạn việc làm thêm đến 31/12 được không ạ.)* |
| Tanaka | もちろんです。お<ruby>身体<rt>からだ</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に、<ruby>無理<rt>むり</rt></ruby>はなさらないでください。<br>*(Tất nhiên rồi. Em giữ sức khoẻ, đừng cố quá.)* |

---

## Tình huống 2 — Hành lang Thanh A · 10:30, Đại gặp Sato-senior backend

*Sato-san (32t, senior backend) là người được điều sang NTT. Đại tranh thủ chào.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、おはようございます。<ruby>今回<rt>こんかい</rt></ruby>のNTTサポート、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Sato, chào buổi sáng. Vụ hỗ trợ NTT lần này, em mong anh giúp ạ.)* |
| Sato | グエンさん、こちらこそ。<ruby>仕様<rt>しよう</rt></ruby><ruby>書<rt>しょ</rt></ruby>と<ruby>過去<rt>かこ</rt></ruby>の<ruby>議事録<rt>ぎじろく</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>していただけますか?<br>*(Đại em, anh mới phải nhờ. Em chia sẻ tài liệu spec với biên bản họp cũ được không?)* |
| Đại | はい、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にSlack で<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>不明点<rt>ふめいてん</rt></ruby>があれば、いつでもご<ruby>連絡<rt>れんらく</rt></ruby>ください。<br>*(Vâng, trong ngày em share lên Slack. Có gì chưa rõ anh cứ liên lạc.)* |
| Sato | カンさんが<ruby>担当<rt>たんとう</rt></ruby>していたRAGの<ruby>部分<rt>ぶぶん</rt></ruby>、コードレビューは<ruby>誰<rt>だれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>けばいいですか?<br>*(Phần RAG anh Cần phụ trách, nếu code review thì hỏi ai?)* |
| Đại | <ruby>私<rt>わたし</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いてください。カンさんとは<ruby>毎日<rt>まいにち</rt></ruby><ruby>同期<rt>どうき</rt></ruby>していたので、<ruby>大体<rt>だいたい</rt></ruby><ruby>把握<rt>はあく</rt></ruby>しております。<br>*(Anh hỏi em ạ. Em sync với anh Cần mỗi ngày nên về cơ bản em nắm được.)* |

---

## Tình huống 3 — WeWork tối · Thứ Hai 21:00, Hizashi standup, Tuấn quát Đại

*Video call WeWork-apt. Đại ở apt, ánh sáng vàng. Mặt mệt rũ. Tuấn ở WeWork. Aiko ở quán cafe.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Anh chị, em báo tin xấu. Thanh A bên NTT vừa có khủng hoảng. Tuần tới em phải làm 5 ngày ở Thanh A thay vì 3. Hizashi em giảm còn 2 ngày + buổi tối. |
| Tuấn | (VN) Em sao thế? Mặt em xanh rồi đấy, mắt thâm. |
| Đại | (VN) Em ổn anh ơi. Adrenaline thôi. 2 tuần là Cần khoẻ lại. |
| Aiko | ダイくん、<ruby>毎日<rt>まいにち</rt></ruby><ruby>何時間<rt>なんじかん</rt></ruby><ruby>寝<rt>ね</rt></ruby>てますか?<br>*(Đại em, mỗi ngày ngủ mấy tiếng?)* |
| Đại | (VN) 1-2 giờ sáng ngủ, 6 giờ dậy. |
| Tuấn | (VN, gắt) Không được. Ngủ 4-5 tiếng × 2 tuần = 過労 chắc chắn 100%. Anh không cho phép. |
| Đại | (VN) Anh ơi, Hizashi đang tăng trưởng đỉnh. Em không thể giảm. |
| Tuấn | (VN) Em phải giảm. Anh với Aiko gánh thêm phần Hizashi. Em chỉ làm Thanh A 5 ngày + Hizashi cuối tuần. Tối em phải ngủ đủ 7 tiếng. |
| Aiko | <ruby>賛成<rt>さんせい</rt></ruby>。ダイくん、<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>が<ruby>倒<rt>たお</rt></ruby>れたら<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わります。<ruby>休<rt>やす</rt></ruby>むのも<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Em đồng ý. Đại em, founder mà gục là công ty xong. Nghỉ ngơi cũng là công việc.)* |
| Đại | (VN, gật yếu) Em hiểu rồi. Cảm ơn 2 anh chị. |

---

## Tình huống 4 — Apt · Thứ Tư 23:30, Mai phát hiện Đại sốt

*Đại ngồi sofa, mắt đỏ. Mai đợi từ 22 giờ. Hana đã ngủ.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, sờ trán) Anh ơi! Trán anh nóng quá. Em lấy nhiệt kế. |
| Đại | (VN) Em ơi mệt quá. Ba mặt trận cùng lúc: NTT, Hizashi, BD pipeline. |
| Mai | (đo) 37.8°C. Sốt thật rồi. Mai anh phải nghỉ. |
| Đại | (VN) Không được em. Mai có cuộc họp khách hàng Tokyo. |
| Mai | (VN, kiên quyết) Anh nghe em. Anh ốm, có làm gì cũng không nên hồn. Nghỉ một ngày bây giờ là cứu cả tháng tới. Em soạn email giùm anh cho anh Tanaka, anh duyệt rồi gửi. |
| Đại | (VN, gật yếu) Ừ em. Em soạn đi. |
| Mai | (đọc draft) "<ruby>田中<rt>たなか</rt></ruby>さん、お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>体調不良<rt>たいちょうふりょう</rt></ruby>のため、<ruby>本日<rt>ほんじつ</rt></ruby>と<ruby>明日<rt>あした</rt></ruby>はお<ruby>休<rt>やす</rt></ruby>みをいただきたく、ご<ruby>連絡<rt>れんらく</rt></ruby>いたしました。" Được không anh? |
| Đại | (VN) Em viết chuẩn business luôn rồi. Thêm câu xin lỗi vụ NTT nhé. |
| Mai | (gõ) "NTTの<ruby>件<rt>けん</rt></ruby>でご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしますが、<ruby>佐藤<rt>さとう</rt></ruby>さんとSlack で<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>えるようにいたします。" OK chưa? |
| Đại | (VN) Cảm ơn em vợ. Em là cố vấn JP business của anh đấy. |

---

## Tình huống 5 — Apt · Thứ Năm 9:00, Đại dậy + check phản hồi Tanaka

*Đại dậy muộn, sốt giảm 37.5°C. Mở LINE.*

| Vai | Lời thoại |
|---|---|
| Tanaka | (LINE, đã gửi 7:30) グエンさん、メール<ruby>拝見<rt>はいけん</rt></ruby>しました。お<ruby>大事<rt>だいじ</rt></ruby>になさってください。<ruby>東京<rt>とうきょう</rt></ruby>のミーティングは<ruby>来週月曜<rt>らいしゅうげつよう</rt></ruby>に<ruby>延期<rt>えんき</rt></ruby>しました。<br>*(Đại, anh đã xem email. Em giữ sức khoẻ nhé. Meeting Tokyo dời sang Thứ Hai tuần sau.)* |
| Tanaka | (LINE) NTTの<ruby>件<rt>けん</rt></ruby>は<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>調整<rt>ちょうせい</rt></ruby>しますので、ご<ruby>安心<rt>あんしん</rt></ruby>ください。ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Vụ NTT anh sẽ thu xếp với Sato, em yên tâm. Nghỉ ngơi cho khoẻ.)* |
| Đại | (LINE) <ruby>田中<rt>たなか</rt></ruby>さん、ご<ruby>配慮<rt>はいりょ</rt></ruby>ありがとうございます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけして<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>金曜<rt>きんよう</rt></ruby>には<ruby>復帰<rt>ふっき</rt></ruby>できるよう<ruby>努<rt>つと</rt></ruby>めます。<br>*(Anh Tanaka, cảm ơn anh đã quan tâm. Em xin lỗi đã làm anh bận tâm. Em sẽ cố gắng quay lại làm vào Thứ Sáu.)* |
| Tanaka | (LINE) いえいえ、<ruby>金曜<rt>きんよう</rt></ruby>も<ruby>休<rt>やす</rt></ruby>んでください。<ruby>月曜<rt>げつよう</rt></ruby>に<ruby>元気<rt>げんき</rt></ruby>な<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてくれれば<ruby>十分<rt>じゅうぶん</rt></ruby>です。<br>*(Không không, Thứ Sáu em cứ nghỉ. Thứ Hai em đến với bộ mặt khoẻ mạnh là đủ.)* |

---

## Tình huống 6 — Apt · Thứ Năm 9:30, Đại báo Tuấn+Aiko + Hana an ủi

*Đại ngồi sofa, plaid. Hana 24 tháng đến cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Tuấn, VN) Anh ơi, em sốt 37.5. Mai bắt em nghỉ 2 ngày. Anh Tanaka cũng duyệt rồi. |
| Tuấn | (LINE, VN) Tốt, cuối cùng cũng chịu nghỉ. Anh với Aiko gánh phần Hizashi. Em ngủ + xem phim với Hana đi. |
| Aiko | (LINE) お<ruby>大事<rt>だいじ</rt></ruby>に!ゆっくり<ruby>休<rt>やす</rt></ruby>んでくださいね。<ruby>仕事<rt>しごと</rt></ruby>のことは<ruby>気<rt>き</rt></ruby>にしないでください。<br>*(Em giữ sức nhé! Nghỉ ngơi tử tế. Đừng bận tâm việc.)* |
| Đại | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>にすみません。<ruby>復帰後<rt>ふっきご</rt></ruby>、お<ruby>二人<rt>ふたり</rt></ruby>の<ruby>負担<rt>ふたん</rt></ruby>を<ruby>巻<rt>ま</rt></ruby>き<ruby>取<rt>と</rt></ruby>ります。<br>*(Em thật sự xin lỗi. Sau khi khỏi em sẽ gánh lại phần của 2 anh chị.)* |
| Hana | (đến, vuốt tay Đại) Bố ốm hả? Hana xoa lưng cho bố nhé? |
| Đại | (VN, cười yếu) Trời ơi con. Cảm ơn con gái bố. |
| Hana | Bố uống thuốc rồi ngủ. Hana hát ru bố. (hát) Bồ câu bồ cu... |

---

## Tình huống 7 — Apt · Thứ Sáu 11:00, Đại tỉnh hẳn, đọc sách với Hana

*Sốt đã hết. Đại ngồi với Hana, đọc sách tranh "ぐりとぐら" Tony+Yumi tặng năm ngoái.*

| Vai | Lời thoại |
|---|---|
| Đại | ハナ、これ<ruby>読<rt>よ</rt></ruby>もうか?「ぐりとぐら」だよ。<br>*(Hana, mình đọc cuốn này nhé? "Guri to Gura" đấy.)* |
| Hana | (chỉ vào hình) Bố! Cái gì kìa? Trứng to! |
| Đại | (JP) これは<ruby>大<rt>おお</rt></ruby>きい<ruby>卵<rt>たまご</rt></ruby>だよ。ぐりとぐらが<ruby>森<rt>もり</rt></ruby>で<ruby>見<rt>み</rt></ruby>つけたんだ。<br>*(Đây là quả trứng to. Guri với Gura tìm thấy trong rừng đấy.)* |
| Hana | Trứng to! Hana muốn ăn! |
| Đại | (cười, VN) Trứng giả con à, trong sách thôi. (JP) <ruby>大<rt>おお</rt></ruby>きい<ruby>卵<rt>たまご</rt></ruby>でカステラを<ruby>作<rt>つく</rt></ruby>るんだよ。<br>*(Họ làm bánh castella từ quả trứng to.)* |
| Hana | カステラ! Hana muốn! |
| Đại | (VN) Mai bố làm castella cho con nhé. Hôm nay bố nghỉ, mai bố nấu ăn. |

---

## Tình huống 8 — Công viên Senri-chuo · Thứ Bảy 14:00, Mai mở chuyện ranh giới

*Mai+Đại đẩy xe đẩy Hana đi công viên. Trời lạnh nhưng nắng.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, em muốn nói chuyện nghiêm túc một chút. |
| Đại | (VN) Vâng em nói đi. |
| Mai | (VN) Em quan sát anh 6 tuần kể từ launch. Sau khi v1.0 ra, anh tăng tốc chứ không giảm. 80 tiếng/tuần × 4 tuần = dấu hiệu 過労 rõ rồi. |
| Đại | (VN, lắng nghe) Ừ em, em nói đúng. |
| Mai | (VN) Hizashi là giấc mơ của anh, em hiểu. Nhưng giấc mơ không có nghĩa lý gì nếu anh gục. Em với Hana cần anh khoẻ và ở bên, chứ không phải anh giàu mà vắng nhà. |
| Đại | (VN, im lặng 5 giây) Em ơi. Cảm ơn em. Anh muốn hứa với em 4 điều: |
| Đại | (VN) Một, tối thiểu 7 tiếng ngủ mỗi đêm. Hai, Chủ Nhật không động vào laptop. Ba, sáng Thứ Ba và Thứ Năm ở nhà với Hana. Bốn, nếu cuối năm MRR ≥ ¥1.5M thì anh nghỉ Thanh A 4/2031 chuyển full-time Hizashi. |
| Mai | (VN, ôm Đại) Em đồng ý. Nghỉ Thanh A là quyết định đúng — giờ Hizashi đã đủ lo cho gia đình. |
| Hana | (từ xe đẩy) Bố! Mẹ! Hana muốn xuống chơi! |
| Đại | (cười) Vâng cô bé. (bế Hana xuống) |

---

## Tình huống 9 — Văn phòng Thanh A · Thứ Hai 16/12 9:00, Đại quay lại

*Đại bước vào phòng họp. Tanaka đã ngồi sẵn với cà phê đôi.*

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさん、おはようございます。お<ruby>体<rt>からだ</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はいかがですか?<br>*(Đại, chào buổi sáng. Sức khoẻ thế nào rồi?)* |
| Đại | お<ruby>陰<rt>かげ</rt></ruby>さまで、<ruby>完全<rt>かんぜん</rt></ruby>に<ruby>回復<rt>かいふく</rt></ruby>いたしました。<ruby>妻<rt>つま</rt></ruby>に<ruby>強制<rt>きょうせい</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>を<ruby>取<rt>と</rt></ruby>らされまして(<ruby>笑<rt>わら</rt></ruby>)、ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<br>*(Nhờ anh, em đã hồi phục hoàn toàn. Vợ ép em nghỉ luôn (cười), để anh phải bận tâm em xin lỗi.)* |
| Tanaka | いえいえ、<ruby>奥<rt>おく</rt></ruby>さんに<ruby>強制<rt>きょうせい</rt></ruby>されるのは<ruby>良<rt>よ</rt></ruby>いことです。NTTの<ruby>件<rt>けん</rt></ruby>ですが、<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>合流<rt>ごうりゅう</rt></ruby>してくれましたので、<ruby>追加<rt>ついか</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>は<ruby>不要<rt>ふよう</rt></ruby>になりました。<br>*(Không sao, vợ ép nghỉ là tốt mà. Về NTT, Sato đã sang hỗ trợ nên không cần em làm thêm nữa.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか?ありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>さんにも<ruby>後<rt>あと</rt></ruby>でお<ruby>礼<rt>れい</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Thật ạ? Cảm ơn anh. Lát em cũng sẽ cảm ơn anh Sato.)* |
| Tanaka | グエンさん、<ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>来年<rt>らいねん</rt></ruby>の<ruby>働<rt>はたら</rt></ruby>き<ruby>方<rt>かた</rt></ruby>について、<ruby>何<rt>なに</rt></ruby>かお<ruby>考<rt>かんが</rt></ruby>えはありますか?<br>*(Đại, cho anh xác nhận một chuyện. Về cách làm việc năm sau, em có suy nghĩ gì chưa?)* |
| Đại | (suy nghĩ 2 giây) <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、Hizashi の MRR が<ruby>目標<rt>もくひょう</rt></ruby>に<ruby>達<rt>たっ</rt></ruby>すれば、4<ruby>月<rt>がつ</rt></ruby>から<ruby>専念<rt>せんねん</rt></ruby>することを<ruby>検討<rt>けんとう</rt></ruby>しております。1<ruby>月<rt>がつ</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Em xin nói thẳng, nếu MRR của Hizashi đạt mục tiêu thì em đang cân nhắc full-time từ tháng 4. Tháng 1 em sẽ chính thức xin trao đổi với anh.)* |
| Tanaka | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>覚悟<rt>かくご</rt></ruby>ができていますね。<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Anh hiểu rồi. Em đã quyết tâm rồi nhỉ. Anh ủng hộ.)* |

---

## Tình huống 10 — Slack với Sato-san · 11:00, Đại cảm ơn

*Đại nhắn riêng Sato-san trên Slack.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>先週<rt>せんしゅう</rt></ruby>はNTTの<ruby>件<rt>けん</rt></ruby>でご<ruby>支援<rt>しえん</rt></ruby>いただき、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Sato, tuần trước cảm ơn anh đã hỗ trợ vụ NTT.)* |
| Đại | <ruby>体調<rt>たいちょう</rt></ruby>を<ruby>崩<rt>くず</rt></ruby>してしまい、ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<ruby>今後<rt>こんご</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>のない<ruby>範囲<rt>はんい</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em làm hỏng sức khoẻ, gây phiền hà cho anh. Từ giờ em cố gắng trong phạm vi không quá sức ạ.)* |
| Sato | グエンさん、お<ruby>気<rt>き</rt></ruby>になさらないでください。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>調子<rt>ちょうし</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くなる<ruby>時<rt>とき</rt></ruby>はあります。お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>ですよ。<br>*(Đại đừng bận tâm. Ai cũng có lúc ốm mệt mà. Mình giúp nhau thôi.)* |
| Sato | むしろ、グエンさんの<ruby>仕様書<rt>しようしょ</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>が<ruby>素晴<rt>すば</rt></ruby>らしくて、<ruby>引<rt>ひ</rt></ruby>き<ruby>継<rt>つ</rt></ruby>ぎが<ruby>楽<rt>らく</rt></ruby>でした。<br>*(Ngược lại, spec em viết gọn gàng quá nên handover dễ lắm.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>今度<rt>こんど</rt></ruby>、お<ruby>礼<rt>れい</rt></ruby>に<ruby>飲<rt>の</rt></ruby>みに<ruby>誘<rt>さそ</rt></ruby>わせてください。<br>*(Em ngại quá. Hôm nào để cảm ơn cho em mời anh đi nhậu.)* |
| Sato | ぜひ!<ruby>今月中<rt>こんげつちゅう</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>しましょう。<br>*(OK luôn! Trong tháng này mình hẹn đi nhé.)* |

---

## Tình huống 11 — Cuộc họp khách NTT · Thứ Tư 18/12 14:00, Đại đặt ranh giới

*Họp với Kobayashi-san — PM phía NTT — xin thêm scope. Đại đại diện Thanh A.*

| Vai | Lời thoại |
|---|---|
| Kobayashi (NTT) | グエンさん、<ruby>追加<rt>ついか</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>したい<ruby>機能<rt>きのう</rt></ruby>が<ruby>3<rt>みっ</rt></ruby>つあります。12<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>のレビューまでに<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>うでしょうか?<br>*(Đại ơi, có 3 chức năng muốn nhờ thêm. Có kịp đến review 31/12 không?)* |
| Đại | <ruby>機能<rt>きのう</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Anh cho em nghe nội dung của chức năng ạ.)* |
| Kobayashi | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ダッシュボードの<ruby>輸出<rt>ゆしゅつ</rt></ruby><ruby>機能<rt>きのう</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>ユーザー権限<rt>けんげん</rt></ruby>の<ruby>細分化<rt>さいぶんか</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>通知<rt>つうち</rt></ruby>システムです。<br>*(Một, export dashboard. Hai, chia nhỏ quyền user. Ba, hệ thống thông báo.)* |
| Đại | (suy nghĩ 5 giây) <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<ruby>3<rt>みっ</rt></ruby>つ<ruby>全<rt>すべ</rt></ruby>てを12<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>までに<ruby>対応<rt>たいおう</rt></ruby>するのは、<ruby>品質<rt>ひんしつ</rt></ruby>を<ruby>担保<rt>たんぽ</rt></ruby>できないため<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Em xin thưa thẳng. Làm cả 3 đến 31/12 không đảm bảo chất lượng nên khó.)* |
| Đại | <ruby>提案<rt>ていあん</rt></ruby>ですが、<ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>をご<ruby>相談<rt>そうだん</rt></ruby>させてください。12<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>までに<ruby>1<rt>ひと</rt></ruby>つ、1<ruby>月末<rt>がつまつ</rt></ruby>までに<ruby>残<rt>のこ</rt></ruby>り<ruby>2<rt>ふた</rt></ruby>つ、というスケジュールはいかがでしょうか?<br>*(Em đề xuất, mình bàn priority. Lịch là đến 31/12 làm 1 cái, đến cuối tháng 1 làm 2 cái còn lại, được không ạ?)* |
| Kobayashi | なるほど、<ruby>確<rt>たし</rt></ruby>かに<ruby>無理<rt>むり</rt></ruby>に<ruby>詰<rt>つ</rt></ruby>め<ruby>込<rt>こ</rt></ruby>むと<ruby>品質<rt>ひんしつ</rt></ruby>が<ruby>下<rt>さ</rt></ruby>がりますね。では、<ruby>輸出機能<rt>ゆしゅつきのう</rt></ruby>を<ruby>最優先<rt>さいゆうせん</rt></ruby>にしてください。<br>*(Đúng vậy, ép quá thì chất lượng tụt. Vậy ưu tiên cao nhất là export function nhé.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>なスケジュールをお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Em hiểu rồi. Trong ngày em sẽ gửi lịch chính thức.)* |

---

## Tình huống 12 — Apt · 31/12 22:00, NYE family + Tony+Yumi sang chơi

*Tony+Yumi từ Anjo Aichi sang Senri-chuo ăn Tết Tây. Cơm + sushi take-away.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben) ダイ!Hizashi v1.0 ローンチに、MRR ¥1.5M <ruby>達成<rt>たっせい</rt></ruby>!Tony と Yumi、めっちゃ<ruby>誇<rt>ほこ</rt></ruby>らしいで!<br>*(Đại ơi! Launch Hizashi v1.0 với MRR ¥1.5M đạt rồi! Tony với Yumi tự hào ghê!)* |
| Đại | (VN+JP) Cảm ơn cụ Tony. Em đã hứa với Mai nếu cuối năm MRR ≥ ¥1.5M thì em nghỉ Thanh A. Em đã đạt rồi. |
| Yumi | (Osaka-ben) <ruby>偉<rt>えら</rt></ruby>いなぁ。<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にせなあかんで。<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>が<ruby>倒<rt>たお</rt></ruby>れたら<ruby>終<rt>お</rt></ruby>わりや。<br>*(Đáng khen. Giữ sức nhé. Founder gục là xong.)* |
| Mai | (VN) Cụ Yumi nói đúng quá. Tháng 12 anh sốt 37.8, em ép nghỉ 2 ngày. |
| Tony | (Osaka-ben) Mai-san ええ<ruby>判断<rt>はんだん</rt></ruby>やで!<ruby>奥<rt>おく</rt></ruby>さんが<ruby>止<rt>と</rt></ruby>めなあかん。<br>*(Mai-san phán đoán giỏi! Vợ phải biết phanh.)* |
| Hana | (gối vào Yumi) Bà ơi! Hana có em! |
| Yumi | (Osaka-ben) え?<ruby>本当<rt>ほんとう</rt></ruby>?Mai-san!<br>*(Hả? Thật á? Mai-san!)* |
| Mai | (VN+JP, đỏ mặt) Chưa cụ ạ. Hana ước thôi. Nhưng đầu năm 2031 hai vợ chồng định cố. |
| Tony | (cười) わしらも<ruby>応援<rt>おうえん</rt></ruby>するで!<br>*(Bọn ông cũng ủng hộ!)* |

---

## Tình huống 13 — Apt khuya · 31/12 23:30, Đại+Mai năm mới + nhật ký

*Tony+Yumi ngủ phòng khách. Hana ngủ. Đại+Mai trên sofa với rượu Champagne nhỏ.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, 2030 thật là một năm đẹp. Anh nhìn lại nhé. |
| Đại | (VN) Em cho anh kể nhé. Một, Hizashi v0.7 → v1.0 launch ProductHunt #1. Hai, MRR ¥29k → ¥1.5M. Ba, Hana từ 8 tháng lên 28 tháng, nói song ngữ trôi chảy. Bốn, anh có 4 lời hứa với em. Năm, hai mình sắp cố có bé thứ 2 từ tháng 1. |
| Mai | (VN) Em hỏi anh thật: anh có sợ không? Nghỉ Thanh A 4/2031 + Hizashi full-time + bé 2 sắp tới? |
| Đại | (VN, suy nghĩ) Có sợ nhưng không nhiều. Vì: MRR ¥1.5M lo được 100% burn rate. Pre-seed runway 18 tháng. Em có ¥120k/tháng hướng dẫn viên. Tony+Yumi+bố mẹ HN là chỗ dựa. Tuấn+Aiko siêu tin cậy. |
| Mai | (VN) Em tự hào về anh lắm. Suy nghĩ thấu đáo. (đếm ngược) 10, 9, 8... |
| Đại | (cùng đếm) 3, 2, 1... ハッピーニューイヤー! |
| Mai | (VN, hôn) Chúc 2031 mình thật nhiều niềm vui. |

---

## Tình huống 14 — Apt · 1/1/2031 sáng, gọi điện về VN cho bố mẹ Mai

*Đại+Mai+Hana video call group family Hà Nội (bố mẹ Mai + chú thím). Tiếng Việt.*

| Vai | Lời thoại |
|---|---|
| Bố Mai | (VN) Đại con! Năm mới chúc con với Mai sức khoẻ, Hana ngoan, Hizashi phát đạt! |
| Mẹ Mai | (VN) Bố con đã đỡ chưa? Tháng 12 con gọi nói bố ốm cúm. |
| Mai | (VN) Bố con khoẻ rồi mẹ ạ. Em với Hana sẽ về thăm dịp Tết âm tháng 2. |
| Đại | (VN) Bố mẹ ơi! Con báo tin: tháng 4/2031 con nghỉ Thanh A, làm Hizashi full-time. |
| Bố Mai | (VN) Trời ơi! Quyết định lớn quá con. Con tính kỹ chưa? |
| Đại | (VN) Bố ơi, con tính 6 tháng rồi. MRR ¥1.5M, đủ lo cho gia đình + lương 2 cofounder. Con không bỏ Thanh A sớm, đợi đủ điều kiện mới đi. |
| Mẹ Mai | (VN) Bố mẹ tin tưởng con. Đại có bao giờ làm chuyện gì không suy nghĩ đâu. |
| Mai | (VN) Bố mẹ ơi còn chuyện này: hai vợ chồng con đang cố có bé thứ 2 đấy. Tháng 1/2031 con sẽ ngừng thuốc. |
| Bố mẹ Mai | (VN, đồng thanh) Trời ơi! Mừng quá! Cố lên các con nhé! |
| Mai | (VN) Vâng mẹ. Em với anh Đại tính kỹ rồi. |
| Bố Mai | (VN) Khi nào có tin, bố mẹ sang Osaka chăm Mai luôn nhé. |
| Đại | (VN) Vâng bố. Cảm ơn bố mẹ. |

---

## Đọng lại chương 10

Đại sống qua tháng 12/2030 đầy biến động: NTT khẩn cấp vì dev VN team ốm cúm + Hizashi tăng trưởng + BD pipeline = 80 giờ/tuần. Học mẫu báo cáo khẩn cấp business JP: **「緊急事態が発生しました」**, **「対策案は二つございます」**, **「ただし、〜と限定させてください」** (chấp nhận thêm việc nhưng đặt giới hạn). Khi ốm, học mẫu xin nghỉ chuẩn: **「体調不良のため、お休みをいただきたく」**, **「ご迷惑をおかけしました」**. Khi quay lại: **「お陰さまで、完全に回復いたしました」**. Khi khách xin thêm scope, học cách từ chối khéo: **「正直に申し上げます」**, **「優先順位をご相談させてください」**. Mai = phanh khẩn cấp, ép nghỉ 2 ngày. 4 lời hứa ranh giới: ngủ 7h / Chủ Nhật không laptop / sáng Thứ Ba+Năm ở nhà / nghỉ Thanh A 4/2031 nếu MRR ≥ ¥1.5M ✓. Cuối năm MRR ¥1.5M đạt, NYE family với Tony+Yumi, gọi điện về VN báo nghỉ việc + có thai bé 2.

> Từ vựng & mẫu câu chương này: <ruby>緊急事態<rt>きんきゅうじたい</rt></ruby>・<ruby>体調不良<rt>たいちょうふりょう</rt></ruby>・<ruby>過労<rt>かろう</rt></ruby>・<ruby>強制休暇<rt>きょうせいきゅうか</rt></ruby>・<ruby>移籍<rt>いせき</rt></ruby>・<ruby>中間<rt>ちゅうかん</rt></ruby>レビュー・<ruby>支援案<rt>しえんあん</rt></ruby>・<ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>・<ruby>品質<rt>ひんしつ</rt></ruby>を<ruby>担保<rt>たんぽ</rt></ruby>・<ruby>復帰<rt>ふっき</rt></ruby>・<ruby>境界線<rt>きょうかいせん</rt></ruby>・<ruby>黒字<rt>くろじ</rt></ruby>・<ruby>緊急事態<rt>きんきゅうじたい</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しました・<ruby>承知<rt>しょうち</rt></ruby>しました、ただし〜と<ruby>限定<rt>げんてい</rt></ruby>させてください・<ruby>体調不良<rt>たいちょうふりょう</rt></ruby>のため<ruby>休<rt>やす</rt></ruby>みをいただきたく・ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました・お<ruby>陰<rt>かげ</rt></ruby>さまで<ruby>回復<rt>かいふく</rt></ruby>いたしました・お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>です・<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます・<ruby>優先順位<rt>ゆうせんじゅんい</rt></ruby>をご<ruby>相談<rt>そうだん</rt></ruby>させてください

## Bí quyết chương

- **3 mặt trận = công thức 過労**: BrSE khẩn cấp + startup tăng trưởng + BD pipeline. 80h/tuần > 4 tuần → cơ thể sẽ phản đối bằng sốt
- **Phanh khẩn cấp = bạn đời**: Mai phát hiện sớm hơn cả co-founder. Đo nhiệt độ + soạn email JP business hộ chồng — phối hợp Việt-Nhật chuẩn
- **「ただし、〜と限定させてください」**: mẫu vàng để chấp nhận thêm việc mà KHÔNG bỏ ranh giới. Quan trọng hơn "có/không"
- **「正直に申し上げます」**: chìa khoá nói "không" với khách Nhật một cách thẳng nhưng không mất lịch sự
- **「お互い様です」**: câu vàng đáp lại khi đồng nghiệp giúp đỡ — không đẩy ơn về 1 chiều
- **4 lời hứa cụ thể đo được**: ngủ 7h / Chủ Nhật / sáng Thứ Ba+Năm / MRR ≥ ¥1.5M ✓ — ranh giới phải đo được mới giữ được

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 緊急事態 | きんきゅうじたい | KHẨN CẤP SỰ THÁI | tình huống khẩn cấp |
| 発生 | はっせい | PHÁT SINH | phát sinh |
| 案件 | あんけん | ÁN KIỆN | dự án, vụ việc |
| お大事に | おだいじに | ĐẠI SỰ | giữ sức nhé |
| 間に合う | まにあう | GIAN HỢP | kịp giờ |
| 対策案 | たいさくあん | ĐỐI SÁCH ÁN | phương án đối phó |
| 支援案 | しえんあん | CHI VIỆN ÁN | phương án hỗ trợ |
| 移籍 | いせき | DI TỊCH | điều chuyển |
| 限定 | げんてい | HẠN ĐỊNH | giới hạn |
| 無理 | むり | VÔ LÝ | quá sức |
| 把握 | はあく | BẢ ÁC | nắm bắt |
| 過労 | かろう | QUÁ LAO | quá tải, kiệt sức |
| 倒れる | たおれる | ĐẢO | gục, đổ |
| 体調不良 | たいちょうふりょう | THỂ ĐIỀU BẤT LƯƠNG | sức khỏe không tốt |
| 配慮 | はいりょ | PHỐI LỰ | chu đáo, quan tâm |
| 復帰 | ふっき | PHỤC QUY | quay lại làm |
| 努める | つとめる | NỖ | cố gắng |
| 元気な顔 | げんきなかお | NGUYÊN KHÍ NHAN | bộ mặt khoẻ mạnh |
| 巻き取る | まきとる | QUYỂN THỦ | gánh lại, đảm nhận |
| 強制休暇 | きょうせいきゅうか | CƯỠNG CHẾ HƯU HẠ | nghỉ bắt buộc |
| 回復 | かいふく | HỒI PHỤC | hồi phục |
| 合流 | ごうりゅう | HỢP LƯU | nhập, gia nhập |
| 不要 | ふよう | BẤT YẾU | không cần |
| お互い様 | おたがいさま | HỖ DẠNG | giúp nhau, đôi bên |
| 仕様 | しよう | SỬ DẠNG | spec |
| 引き継ぎ | ひきつぎ | DẪN KẾ | handover, bàn giao |
| 覚悟 | かくご | GIÁC NGỘ | quyết tâm |
| 範囲 | はんい | PHẠM VI | phạm vi |
| 品質 | ひんしつ | PHẨM CHẤT | chất lượng |
| 優先順位 | ゆうせんじゅんい | ƯU TIÊN THUẬN VỊ | thứ tự ưu tiên |
| 詰め込む | つめこむ | NẠP NHẬP | nhồi nhét, ép vào |
| 達成 | たっせい | ĐẠT THÀNH | đạt được |
| 株主 | かぶぬし | CỔ CHỦ | cổ đông |
| 黒字 | くろじ | HẮC TỰ | có lãi, đen |
| 境界線 | きょうかいせん | CẢNH GIỚI TUYẾN | ranh giới |
| 妊娠 | にんしん | NHÂM THẦN | có thai |
| 評価額 | ひょうかがく | BÌNH GIÁ NGẠCH | định giá |
