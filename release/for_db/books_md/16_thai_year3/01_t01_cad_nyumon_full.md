# Sách kỹ sư khuôn đúc · T1. Bắt đầu chuyên trách CAD (CAD専属開始)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) bước sang năm thứ 3 tại **株式会社みなみ精密金型**, được điều lên phòng thiết kế chuyên trách CAD. Học các mẫu hội thoại tiếng Nhật phòng kỹ thuật: nhận bàn giao dự án từ trưởng phòng (**修正内容・納期**), xác nhận yêu cầu khách qua các cụm chuyên ngành (**形状変更要請・R2→R5**), báo lỗi build và hỏi lại lễ phép khi gặp sự cố (**下流のフィーチャー・〜というのは?**), quan sát 先輩 Kawakami xử lý vấn đề tham số hoá, báo cáo tiến độ và 報連相 hàng ngày, gọi điện về Việt Nam ôn lại từ chuyên ngành.

---

## Bối cảnh

Tháng 5 năm 2024. Thái đã làm tại nhà máy ở Anjo, Aichi được 2 năm, vừa lên phòng **設計室** chuyên trách CAD. Trình độ tiếng Nhật N3. 川上 (Kawakami) — trưởng phòng thiết kế — sẽ là 先輩 trực tiếp. Chương này tập trung mẫu câu giao tiếp tại phòng kỹ thuật: nhận dự án, xác nhận yêu cầu sửa khuôn, báo cáo lỗi build và xử lý sự cố tham số hoá khi vẽ CAD.

---

## Tình huống 1 — Phòng thiết kế · 8:30, nhận bàn giao chỗ ngồi mới

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>設計室<rt>せっけいしつ</rt></ruby><ruby>専属<rt>せんぞく</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thái, chào buổi sáng. Từ hôm nay em chuyên trách phòng thiết kế nhé. Mong em giúp đỡ.)* |
| Thái | おはようございます、<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào buổi sáng ạ, anh Kawakami. Em mới phải cảm ơn, mong anh chỉ bảo ạ.)* |
| Kawakami | こちらが<ruby>君<rt>きみ</rt></ruby>のデスクです。PCと<ruby>2画面<rt>にがめん</rt></ruby>のモニターがあります。<br>*(Đây là bàn của em. Có PC kèm 2 màn hình.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>2画面<rt>にがめん</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Cúi đầu. Em cảm ơn anh ạ. Em lần đầu được dùng 2 màn hình. Vui lắm ạ.)* |
| Kawakami | <ruby>左<rt>ひだり</rt></ruby>はSolidWorks、<ruby>右<rt>みぎ</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby>や<ruby>資料<rt>しりょう</rt></ruby>を<ruby>表示<rt>ひょうじ</rt></ruby>するのが<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Cơ bản là màn trái cho SolidWorks, màn phải hiển thị bản vẽ hoặc tài liệu.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。メモしておきます。<br>*(Vâng, em rõ rồi ạ. Em ghi lại.)* |
| Kawakami | <ruby>分<rt>わ</rt></ruby>からないことは、<ruby>遠慮<rt>えんりょ</rt></ruby>しないで<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>報連相<rt>ほうれんそう</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に。<br>*(Có gì không hiểu, đừng ngại, nhất định phải hỏi nhé. Coi trọng 報連相 nhé.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>報告<rt>ほうこく</rt></ruby>・<ruby>連絡<rt>れんらく</rt></ruby>・<ruby>相談<rt>そうだん</rt></ruby>いたします。<br>*(Vâng, em chắc chắn sẽ báo cáo - liên lạc - bàn bạc đầy đủ ạ.)* |

---

## Tình huống 2 — Phòng thiết kế · 9:00, nhận dự án đầu tay và xác nhận nội dung sửa

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>初<rt>はつ</rt></ruby>プロジェクトを<ruby>渡<rt>わた</rt></ruby>します。<ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>です。<ruby>既存<rt>きそん</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>を<ruby>使<rt>つか</rt></ruby>います。<br>*(Tôi giao dự án đầu tiên cho em. Cập nhật insert (lõi khuôn). Dùng khuôn có sẵn.)* |
| Thái | はい。すみません、「<ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Vâng. Xin lỗi anh, "ireko" nghĩa là gì ạ?)* |
| Kawakami | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>金型<rt>かながた</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む<ruby>部品<rt>ぶひん</rt></ruby>です。<ruby>形<rt>かたち</rt></ruby>を<ruby>変<rt>か</rt></ruby>えたいときに、<ruby>金型<rt>かながた</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>ではなく<ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby>だけを<ruby>作<rt>つく</rt></ruby>り<ruby>直<rt>なお</rt></ruby>します。<br>*(Câu hỏi hay đấy. Là chi tiết lắp vào trong khuôn. Khi muốn đổi biên dạng, mình chỉ làm lại insert chứ không làm lại cả khuôn.)* |
| Thái | なるほど、<ruby>金型<rt>かながた</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>交換<rt>こうかん</rt></ruby><ruby>部品<rt>ぶひん</rt></ruby>ということですね。<br>*(À ra vậy, tức là chi tiết thay thế lắp bên trong khuôn ạ.)* |
| Kawakami | そうです。<ruby>修正<rt>しゅうせい</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>は<ruby>顧客<rt>こきゃく</rt></ruby>からの<ruby>形状<rt>けいじょう</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>要請<rt>ようせい</rt></ruby>です。<ruby>側面<rt>そくめん</rt></ruby>のRを<ruby>2<rt>に</rt></ruby>から<ruby>5<rt>ご</rt></ruby>へ<ruby>変更<rt>へんこう</rt></ruby>します。<br>*(Đúng vậy. Nội dung sửa là yêu cầu đổi biên dạng từ khách. Bán kính R cạnh bên đổi từ 2 sang 5.)* |
| Thái | <ruby>側面<rt>そくめん</rt></ruby>のRを<ruby>2<rt>に</rt></ruby>ミリから<ruby>5<rt>ご</rt></ruby>ミリへ、ということですね。<ruby>図面<rt>ずめん</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>と<ruby>3D<rt>スリーディー</rt></ruby>モデルの<ruby>更新<rt>こうしん</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>でよろしいでしょうか？<br>*(Bán kính R cạnh bên từ 2mm sang 5mm, đúng không ạ. Em sửa bản vẽ và cập nhật mô hình 3D, cả hai phải không ạ?)* |
| Kawakami | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>納期<rt>のうき</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>です。<ruby>金曜日<rt>きんようび</rt></ruby>の<ruby>17時<rt>じゅうしちじ</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<br>*(Vâng, đúng vậy. Hạn 1 tuần. Em nộp trước 17h thứ Sáu nhé.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>金曜日<rt>きんようび</rt></ruby><ruby>17時<rt>じゅうしちじ</rt></ruby><ruby>提出<rt>ていしゅつ</rt></ruby>ですね。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em rõ ạ. Nộp 17h thứ Sáu. Em sẽ cố gắng.)* |

---

## Tình huống 3 — Phòng thiết kế · 9:30, mở file có sẵn và đọc cây đặc trưng

| Vai | Lời thoại |
|---|---|
| Thái | （SolidWorksを<ruby>開<rt>ひら</rt></ruby>いて、<ruby>既存<rt>きそん</rt></ruby>パーツを<ruby>読<rt>よ</rt></ruby>み<ruby>込<rt>こ</rt></ruby>む）<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>既存<rt>きそん</rt></ruby>ファイルを<ruby>開<rt>ひら</rt></ruby>きました。<br>*(Mở SolidWorks và tải linh kiện có sẵn. Anh Kawakami, em đã mở file có sẵn ạ.)* |
| Kawakami | フィーチャーツリーを<ruby>左<rt>ひだり</rt></ruby>に<ruby>出<rt>だ</rt></ruby>してください。<ruby>履歴<rt>りれき</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em mở cây đặc trưng ra bên trái nhé. Mình kiểm tra lịch sử.)* |
| Thái | フィーチャーツリーが<ruby>長<rt>なが</rt></ruby>いですね。すみません、これは<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>む<ruby>必要<rt>ひつよう</rt></ruby>がありますか？<br>*(Cây đặc trưng dài quá. Xin lỗi anh, em có cần đọc hết tất cả không ạ?)* |
| Kawakami | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>読<rt>よ</rt></ruby>む<ruby>必要<rt>ひつよう</rt></ruby>はありません。でも、フィレットR<ruby>2<rt>に</rt></ruby>を<ruby>探<rt>さが</rt></ruby>して、<ruby>後<rt>あと</rt></ruby>に<ruby>何<rt>なに</rt></ruby>のフィーチャーが<ruby>続<rt>つづ</rt></ruby>いているかは<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Không cần đọc tất cả. Nhưng phải tìm bo R2 và nhất định kiểm tra xem sau đó có đặc trưng gì nối tiếp.)* |
| Thái | 「<ruby>後<rt>あと</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>くフィーチャー」というのは、<ruby>下流<rt>かりゅう</rt></ruby>のフィーチャーということですか？<br>*(Đặc trưng nối tiếp phía sau, có phải là đặc trưng phía dưới (downstream feature) không ạ?)* |
| Kawakami | そうです。<ruby>下流<rt>かりゅう</rt></ruby>のフィーチャーがR<ruby>2<rt>に</rt></ruby>を<ruby>参照<rt>さんしょう</rt></ruby>している<ruby>場合<rt>ばあい</rt></ruby>、R<ruby>5<rt>ご</rt></ruby>に<ruby>変<rt>か</rt></ruby>えるとエラーになります。<br>*(Đúng. Nếu đặc trưng phía dưới có tham chiếu đến R2, đổi sang R5 sẽ báo lỗi.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。まずフィレットR<ruby>2<rt>に</rt></ruby>を<ruby>探<rt>さが</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ tìm bo R2 trước.)* |
| Thái | （<ruby>5<rt>ご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>）<ruby>見<rt>み</rt></ruby>つけました。<ruby>下流<rt>かりゅう</rt></ruby>に<ruby>3<rt>みっ</rt></ruby>つのフィーチャーが<ruby>続<rt>つづ</rt></ruby>いています。<br>*(Sau 5 phút. Em thấy rồi ạ. Phía dưới có 3 đặc trưng nối tiếp.)* |
| Kawakami | では<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>してみてください。<br>*(Vậy em thử cẩn thận sửa nhé.)* |

---

## Tình huống 4 — Phòng thiết kế · 10:30, báo lỗi build và quan sát đàn anh xử lý

| Vai | Lời thoại |
|---|---|
| Thái | （R<ruby>5<rt>ご</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>してリビルド）あ、エラーが<ruby>出<rt>で</rt></ruby>ました。<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ちょっと<ruby>相談<rt>そうだん</rt></ruby>してもよろしいですか？<br>*(Đổi sang R5 rồi build lại. Ơ, có lỗi rồi. Anh Kawakami, em hỏi anh một chút được không ạ?)* |
| Kawakami | （<ruby>来<rt>く</rt></ruby>る）どうしました？<br>*(Đến. Sao thế?)* |
| Thái | リビルドしたら、<ruby>下流<rt>かりゅう</rt></ruby>のフィーチャーが<ruby>失敗<rt>しっぱい</rt></ruby>しました。エラーメッセージは「シェルの<ruby>厚<rt>あつ</rt></ruby>さが<ruby>不足<rt>ふそく</rt></ruby>」です。<br>*(Sau khi build lại, đặc trưng phía dưới hỏng. Thông báo lỗi là "độ dày vỏ không đủ".)* |
| Kawakami | <ruby>典型的<rt>てんけいてき</rt></ruby>なパラメトリックの<ruby>問題<rt>もんだい</rt></ruby>ですね。<br>*(Vấn đề tham số hoá điển hình đấy.)* |
| Thái | すみません、「パラメトリックの<ruby>問題<rt>もんだい</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "vấn đề tham số hoá" cụ thể là nghĩa gì ạ?)* |
| Kawakami | <ruby>3D<rt>スリーディー</rt></ruby>モデルは<ruby>数値<rt>すうち</rt></ruby>で<ruby>関係<rt>かんけい</rt></ruby>が<ruby>結<rt>むす</rt></ruby>ばれています。R<ruby>2<rt>に</rt></ruby>が<ruby>変<rt>か</rt></ruby>わると、それを<ruby>参照<rt>さんしょう</rt></ruby>している<ruby>下流<rt>かりゅう</rt></ruby>の<ruby>値<rt>あたい</rt></ruby>も<ruby>変<rt>か</rt></ruby>わって、<ruby>結果<rt>けっか</rt></ruby><ruby>無理<rt>むり</rt></ruby>な<ruby>形<rt>かたち</rt></ruby>になります。<br>*(Mô hình 3D ràng buộc với nhau qua các con số. Khi R2 đổi, giá trị phía dưới tham chiếu đến nó cũng đổi, kết quả là biên dạng vô lý.)* |
| Thái | なるほど。<ruby>連鎖<rt>れんさ</rt></ruby><ruby>反応<rt>はんのう</rt></ruby>のような<ruby>感<rt>かん</rt></ruby>じですね。<br>*(Ra vậy. Giống như phản ứng dây chuyền ạ.)* |
| Kawakami | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>解決<rt>かいけつ</rt></ruby><ruby>方法<rt>ほうほう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せます。まずエラーが<ruby>出<rt>で</rt></ruby>たフィーチャーを<ruby>右<rt>みぎ</rt></ruby>クリックして「<ruby>定義<rt>ていぎ</rt></ruby><ruby>編集<rt>へんしゅう</rt></ruby>」を<ruby>選<rt>えら</rt></ruby>びます。<br>*(Đúng vậy. Tôi cho em xem cách giải. Trước tiên, chuột phải vào đặc trưng báo lỗi, chọn "edit definition".)* |
| Thái | （<ruby>見<rt>み</rt></ruby>ながらメモ）はい、<ruby>定義<rt>ていぎ</rt></ruby><ruby>編集<rt>へんしゅう</rt></ruby>ですね。<br>*(Vừa nhìn vừa ghi. Vâng, edit definition ạ.)* |
| Kawakami | シェルの<ruby>厚<rt>あつ</rt></ruby>さを<ruby>1.5<rt>いってんご</rt></ruby>から<ruby>1.2<rt>いってんに</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>すれば、エラーが<ruby>消<rt>き</rt></ruby>えます。やってみてください。<br>*(Chỉnh độ dày vỏ từ 1.5 xuống 1.2 là lỗi sẽ biến mất. Em thử đi.)* |
| Thái | （<ruby>調整<rt>ちょうせい</rt></ruby>してリビルド）<ruby>消<rt>き</rt></ruby>えました！ありがとうございます。<br>*(Chỉnh rồi build lại. Hết lỗi rồi ạ! Em cảm ơn anh.)* |

---

## Tình huống 5 — Phòng thiết kế · 14:00, hỏi lại về quy tắc đặt tên file và thư mục

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ファイルの<ruby>保存<rt>ほぞん</rt></ruby><ruby>場所<rt>ばしょ</rt></ruby>とファイル<ruby>名<rt>めい</rt></ruby>のルールを<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Anh Kawakami, anh chỉ giúp em quy tắc lưu file và đặt tên file được không ạ?)* |
| Kawakami | はい、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>質問<rt>しつもん</rt></ruby>です。サーバーの「<ruby>設計<rt>せっけい</rt></ruby>」フォルダの<ruby>中<rt>なか</rt></ruby>に、<ruby>顧客<rt>こきゃく</rt></ruby><ruby>名<rt>めい</rt></ruby>のフォルダがあります。<br>*(Vâng, câu hỏi quan trọng đấy. Trong folder "設計" trên server, có các folder theo tên khách hàng.)* |
| Thái | はい、トヨタ<ruby>車体<rt>しゃたい</rt></ruby>のフォルダがありますね。<br>*(Vâng, em thấy folder Toyota Shatai rồi ạ.)* |
| Kawakami | その<ruby>中<rt>なか</rt></ruby>に<ruby>製品<rt>せいひん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>のフォルダ、さらに「Rev<ruby>01<rt>ぜろいち</rt></ruby>」「Rev<ruby>02<rt>ぜろに</rt></ruby>」と<ruby>改訂<rt>かいてい</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>で<ruby>分<rt>わ</rt></ruby>けます。<br>*(Bên trong là folder theo mã sản phẩm, rồi chia theo số revision "Rev01", "Rev02".)* |
| Thái | すみません、「<ruby>改訂<rt>かいてい</rt></ruby>」というのは<ruby>修正<rt>しゅうせい</rt></ruby><ruby>版<rt>ばん</rt></ruby>という<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "kaitei" có phải nghĩa là bản sửa đổi không ạ?)* |
| Kawakami | そうです。<ruby>顧客<rt>こきゃく</rt></ruby>からの<ruby>変更<rt>へんこう</rt></ruby><ruby>要請<rt>ようせい</rt></ruby>ごとにRevが<ruby>上<rt>あ</rt></ruby>がります。<ruby>今回<rt>こんかい</rt></ruby>はRev<ruby>03<rt>ぜろさん</rt></ruby>になります。<br>*(Đúng. Mỗi yêu cầu sửa từ khách thì Rev tăng lên. Lần này sẽ là Rev03.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。ファイル<ruby>名<rt>めい</rt></ruby>には<ruby>日付<rt>ひづけ</rt></ruby>も<ruby>入<rt>い</rt></ruby>れますか？<br>*(Em rõ ạ. Trong tên file có cần ghi ngày tháng không ạ?)* |
| Kawakami | <ruby>最後<rt>さいご</rt></ruby>に<ruby>日付<rt>ひづけ</rt></ruby>と<ruby>担当者<rt>たんとうしゃ</rt></ruby>のイニシャルを<ruby>付<rt>つ</rt></ruby>けます。<ruby>例<rt>れい</rt></ruby>えば「<ruby>20240513<rt>にーぜろにーよんぜろごいちさん</rt></ruby>_T」のように。<br>*(Cuối tên file ghi ngày tháng và tên viết tắt người phụ trách. Ví dụ "20240513_T".)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。ノートに<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Em hiểu rồi. Em ghi vào sổ ạ.)* |

---

## Tình huống 6 — Phòng thiết kế · 16:30, báo cáo tiến độ cuối ngày (報連相)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、すみません、<ruby>今日<rt>きょう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>してもよろしいですか？<br>*(Anh Kawakami, xin lỗi, em báo cáo tiến độ hôm nay được không ạ?)* |
| Kawakami | はい、どうぞ。<br>*(Vâng, em báo đi.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>はR<ruby>2<rt>に</rt></ruby>からR<ruby>5<rt>ご</rt></ruby>への<ruby>変更<rt>へんこう</rt></ruby>と、<ruby>下流<rt>かりゅう</rt></ruby>シェル<ruby>厚<rt>あつ</rt></ruby>さの<ruby>調整<rt>ちょうせい</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>進捗<rt>しんちょく</rt></ruby><ruby>率<rt>りつ</rt></ruby>は<ruby>約<rt>やく</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby>パーセントです。<br>*(Hôm nay em đã hoàn thành đổi R2 sang R5 và chỉnh độ dày vỏ phía dưới. Tiến độ khoảng 40 phần trăm ạ.)* |
| Kawakami | いいペースですね。<ruby>残<rt>のこ</rt></ruby>りは<ruby>図面<rt>ずめん</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>と<ruby>寸法<rt>すんぽう</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>ですか？<br>*(Tốc độ tốt đấy. Còn lại là cập nhật bản vẽ và ghi kích thước phải không?)* |
| Thái | はい。<ruby>明日<rt>あした</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby>を<ruby>更新<rt>こうしん</rt></ruby>して、<ruby>水曜日<rt>すいようび</rt></ruby>に<ruby>寸法<rt>すんぽう</rt></ruby><ruby>記入<rt>きにゅう</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng. Mai em cập nhật bản vẽ, thứ Tư ghi kích thước.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>何<rt>なに</rt></ruby>か<ruby>困<rt>こま</rt></ruby>っていることはありますか？<br>*(Nắm rồi. Có gì khó khăn không?)* |
| Thái | <ruby>図面<rt>ずめん</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>のルールがまだよく<ruby>分<rt>わ</rt></ruby>かりません。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Em chưa hiểu rõ quy tắc dung sai kích thước trên bản vẽ. Sáng mai anh chỉ giúp em một chút được không ạ?)* |
| Kawakami | もちろん。<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>9時<rt>くじ</rt></ruby>からでいいですか？<br>*(Tất nhiên. Sáng mai 9h được không?)* |
| Thái | はい、<ruby>9時<rt>くじ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, 9h em sẽ qua. Em mong anh giúp ạ.)* |

---

## Tình huống 7 — Phòng thiết kế · Thứ Sáu 17:00, nộp dự án đầu tay

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>入<rt>い</rt></ruby>れ<ruby>子<rt>こ</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Kawakami, vụ cập nhật insert, em xin nộp ạ. Mong anh kiểm tra.)* |
| Kawakami | （<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>形状<rt>けいじょう</rt></ruby>はOKです。R<ruby>5<rt>ご</rt></ruby>もきれいに<ruby>入<rt>はい</rt></ruby>っていますね。<br>*(Kiểm tra. Biên dạng đạt. R5 vào đẹp đấy.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn ạ.)* |
| Kawakami | <ruby>図面<rt>ずめん</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>もOK。<ruby>寸法<rt>すんぽう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>も<ruby>正<rt>ただ</rt></ruby>しく<ruby>記入<rt>きにゅう</rt></ruby>されています。<br>*(Cập nhật bản vẽ cũng đạt. Dung sai kích thước ghi cũng đúng.)* |
| Thái | はい、<ruby>火曜日<rt>かようび</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただいたルールに<ruby>従<rt>したが</rt></ruby>って<ruby>記入<rt>きにゅう</rt></ruby>しました。<br>*(Vâng, em ghi theo quy tắc anh dạy hôm thứ Ba.)* |
| Kawakami | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>とは<ruby>速<rt>はや</rt></ruby>いですね。<ruby>初<rt>はじ</rt></ruby>めての<ruby>専属<rt>せんぞく</rt></ruby><ruby>案件<rt>あんけん</rt></ruby>でこのスピードはいいですよ。<br>*(Trong 1 tuần là nhanh đấy. Dự án chuyên trách đầu tay mà tốc độ thế này là tốt rồi.)* |
| Thái | ありがとうございます！<ruby>川上<rt>かわかみ</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Em cảm ơn anh! Nhờ anh Kawakami chỉ bảo ạ.)* |
| Kawakami | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>新規<rt>しんき</rt></ruby>パーツの<ruby>設計<rt>せっけい</rt></ruby>です。<ruby>今度<rt>こんど</rt></ruby>はゼロから<ruby>作<rt>つく</rt></ruby>ります。<ruby>覚悟<rt>かくご</rt></ruby>しておいてください。<br>*(Tuần sau bắt đầu thiết kế linh kiện mới. Lần này làm từ đầu. Em chuẩn bị tinh thần đi.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng, em sẽ cố gắng!)* |

---

## Tình huống 8 — Phòng 201 ký túc · 22:00, gọi điện về Việt Nam (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật. Putra đã chuyển sang phòng khác, Thái ở một mình, gọi LINE về cho Mai.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay là ngày đầu lên phòng thiết kế phải không? Sao rồi anh? |
| Thái | (tiếng Việt) Lên rồi em. Có bàn riêng, hai màn hình to lắm. Sướng. |
| Mai | (tiếng Việt) Trưởng phòng có khó tính không? |
| Thái | (tiếng Việt) Anh Kawakami. Khó tính nhưng tử tế. Hôm nay giao anh sửa cái "ireko" — tiếng Nhật là 入れ子, kiểu chi tiết thay thế lắp trong khuôn. Đổi bo R2 sang R5. |
| Mai | (tiếng Việt) R là cái gì cơ? |
| Thái | (tiếng Việt) R là bán kính bo góc em ạ. Đổi R làm hỏng mấy cái "下流のフィーチャー" phía dưới — gọi là vấn đề tham số hoá. Phải chỉnh độ dày vỏ mới hết lỗi. |
| Mai | (tiếng Việt) Trời, nghe khó quá. Anh hiểu được hết hả? |
| Thái | (tiếng Việt) Lúc đầu không hiểu. Nhưng giờ anh nhớ rồi: cái gì không hiểu là hỏi lại "〜というのは?" — đó là câu cứu mạng anh suốt 2 năm qua. |
| Mai | (tiếng Việt) Khá lắm anh. Còn 報連相 nhớ chưa? |
| Thái | (tiếng Việt) Nhớ chứ. Báo cáo - liên lạc - bàn bạc. Chiều nay anh báo cáo tiến độ 40%, hẹn sáng mai hỏi anh Kawakami về 寸法公差 — dung sai kích thước. |
| Mai | (tiếng Việt) Anh giỏi lên thật rồi. Em mừng. Hai năm nữa anh về nhé. |
| Thái | (tiếng Việt) Ừ. Anh đặt mục tiêu năm nay: N2 + chứng chỉ 機械設計 cấp 2. Đến cuối năm gặp khách lần đầu. |
| Mai | (tiếng Việt) Cố lên anh. Mai em qua nhà mẹ chơi. Anh ngủ ngon nhé. |
| Thái | (tiếng Việt) Ừ, em ngủ ngon. |

---

## Đọng lại chương 1

Ngày đầu lên phòng thiết kế chuyên trách CAD, Thái học được trọn vẹn một chu trình **報連相** của kỹ sư thiết kế: nhận dự án từ 先輩 (**修正内容・形状変更要請・納期**), xác nhận lại yêu cầu bằng mẫu **〜ということですね**, gặp sự cố thì **相談** ngay (**ちょっと相談してもよろしいですか?**), không hiểu thuật ngữ thì hỏi lại lễ phép (**〜というのは?**), và cuối ngày báo cáo tiến độ kèm điểm vướng (**進捗率・困っていることはありますか?**). Về chuyên môn CAD, Thái học được bài học vỡ lòng về **パラメトリックの問題** — đổi một con số phía trên gây phản ứng dây chuyền đến **下流のフィーチャー** — và cách xử lý bằng **定義編集** + **シェルの厚さ調整**. Thêm vào đó là quy tắc lưu file theo **顧客名 → 製品番号 → Rev番号** và đặt tên file theo **日付_担当者**. Đây là nền tảng năm thứ 3 — chuyển từ thực tập sinh quan sát sang kỹ sư có **自分のデスク**.

> Từ vựng & mẫu câu chương này: 設計室専属・入れ子・修正内容・形状変更要請・側面・フィレット・R2・R5・フィーチャーツリー・下流のフィーチャー・リビルド・シェル・パラメトリックの問題・定義編集・寸法公差・改訂・Rev・納期・進捗率・報連相・報告・連絡・相談・〜というのは・〜ということですね・ちょっと相談してもよろしいですか・困っていることはありますか・遠慮しないでください

## Bí quyết chương

- **Chuỗi chuẩn bị năm 3**: chuyển từ hiện trường (年1-2) lên 設計室 chuyên trách — sẽ thấy kết quả bằng N2 + 機械設計2級 cuối năm.
- **先輩 mới**: Kawakami (trưởng phòng thiết kế) thay 工場長 Tanaka làm sempai trực tiếp.
- **Putra rời phòng**: đồng phòng cũ chuyển ra, cảnh tiếng Việt chuyển sang gọi LINE về Mai.
- **Bài học vỡ lòng CAD**: vấn đề tham số hoá — đổi R2→R5 không thể đứng một mình, luôn phải kiểm 下流.

> *"5/2024. Ngày đầu CAD chuyên trách. Bàn riêng. Hai màn hình. Bài học: 下流のフィーチャー."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 設計室 | せっけいしつ | THIẾT KẾ THẤT | Phòng thiết kế |
| 専属 | せんぞく | CHUYÊN THUỘC | Chuyên trách |
| 図面 | ずめん | ĐỒ DIỆN | Bản vẽ |
| 資料 | しりょう | TƯ LIỆU | Tài liệu |
| 表示 | ひょうじ | BIỂU THỊ | Hiển thị |
| 承知 | しょうち | THỪA TRI | Hiểu rõ, lĩnh hội |
| 遠慮 | えんりょ | VIỄN LỰ | Ngại ngần |
| 報連相 | ほうれんそう | BÁO LIÊN TƯƠNG | Báo cáo - liên lạc - bàn bạc |
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc, hỏi ý |
| 入れ子 | いれこ | NHẬP TỬ | Insert, lõi thay thế trong khuôn |
| 更新 | こうしん | CANH TÂN | Cập nhật |
| 既存 | きそん | KÝ TỒN | Có sẵn |
| 金型 | かながた | KIM HÌNH | Khuôn (đúc/ép) |
| 部品 | ぶひん | BỘ PHẨM | Linh kiện, chi tiết |
| 交換 | こうかん | GIAO HOÁN | Thay thế |
| 修正 | しゅうせい | TU CHÍNH | Sửa, hiệu chỉnh |
| 内容 | ないよう | NỘI DUNG | Nội dung |
| 顧客 | こきゃく | CỐ KHÁCH | Khách hàng |
| 形状 | けいじょう | HÌNH TRẠNG | Hình dạng, biên dạng |
| 変更 | へんこう | BIẾN CANH | Thay đổi |
| 要請 | ようせい | YẾU THỈNH | Yêu cầu |
| 側面 | そくめん | TRẮC DIỆN | Mặt bên |
| 納期 | のうき | NẠP KỲ | Hạn giao |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |
| 履歴 | りれき | LÝ LỊCH | Lịch sử |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 参照 | さんしょう | THAM CHIẾU | Tham chiếu |
| 下流 | かりゅう | HẠ LƯU | Phía dưới (downstream) |
| 慎重 | しんちょう | THẬN TRỌNG | Cẩn thận |
| 失敗 | しっぱい | THẤT BẠI | Hỏng, thất bại |
| 不足 | ふそく | BẤT TÚC | Thiếu, không đủ |
| 典型的 | てんけいてき | ĐIỂN HÌNH ĐÍCH | Điển hình |
| 数値 | すうち | SỐ TRỊ | Giá trị số |
| 関係 | かんけい | QUAN HỆ | Quan hệ, ràng buộc |
| 連鎖反応 | れんさはんのう | LIÊN TỎA PHẢN ỨNG | Phản ứng dây chuyền |
| 解決 | かいけつ | GIẢI QUYẾT | Giải quyết |
| 方法 | ほうほう | PHƯƠNG PHÁP | Cách, phương pháp |
| 定義 | ていぎ | ĐỊNH NGHĨA | Định nghĩa |
| 編集 | へんしゅう | BIÊN TẬP | Chỉnh sửa |
| 調整 | ちょうせい | ĐIỀU CHỈNH | Điều chỉnh |
| 保存 | ほぞん | BẢO TỒN | Lưu |
| 製品 | せいひん | CHẾ PHẨM | Sản phẩm |
| 番号 | ばんごう | PHIÊN HIỆU | Số, mã |
| 改訂 | かいてい | CẢI ĐÍNH | Sửa đổi, revision |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | Người phụ trách |
| 進捗 | しんちょく | TIẾN CHỘP | Tiến độ |
| 寸法 | すんぽう | THỐN PHÁP | Kích thước |
| 記入 | きにゅう | KÝ NHẬP | Ghi vào |
| 公差 | こうさ | CÔNG SAI | Dung sai |
| 件 | けん | KIỆN | Vụ việc, mục |
| 新規 | しんき | TÂN QUY | Mới |
| 覚悟 | かくご | GIÁC NGỘ | Chuẩn bị tinh thần |
| 設計 | せっけい | THIẾT KẾ | Thiết kế |
