# Sách kỹ sư khuôn đúc · T5. Xử lý lỗi cong vênh và sửa khuôn (修正対応)

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
| 素質 | そしつ | TỐ CHẤT | Tố chất |
