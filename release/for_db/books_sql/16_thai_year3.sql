-- Hizashi LITE book SQL — Thái Y3
-- curriculum_id = 800000016  (book_seq=16)
-- nguồn: books/16_thai_year3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000016, 'N3', 'markdown_book', 'Cơ khí', 'Thái Y3', 'Bộ sách Hizashi — Thái Y3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000001, 800000016, NULL, 'markdown_book', 'T1. Bắt đầu chuyên trách CAD (CAD専属開始)', '# Sách kỹ sư khuôn đúc · T1. Bắt đầu chuyên trách CAD (CAD専属開始)

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
| 設計 | せっけい | THIẾT KẾ | Thiết kế |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000002, 800000016, NULL, 'markdown_book', 'T2. SolidWorks nâng cao — lắp ráp và bản vẽ (SolidWorks進階)', '# Sách kỹ sư khuôn đúc · T2. SolidWorks nâng cao — lắp ráp và bản vẽ (SolidWorks進階)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) bước sang năm thứ ba ở **株式会社みなみ精密金型** Anjo, được anh Kawakami kèm SolidWorks nâng cao. Học các mẫu hội thoại tiếng Nhật trong phòng thiết kế: nghe anh先輩 mô tả cấu tạo bộ khuôn (キャビ・コア・エジェクタピン), hỏi lại lễ phép khi chưa hiểu thuật ngữ CAD (〜というのは?), xác nhận thao tác アセンブリ・メイト, nhận chỉ thị về bản vẽ 2D (寸法・公差・表面粗さ), quan sát đàn anh đọc ký hiệu JIS, báo cáo tiến độ BOM cho 工場長 (報連相).

---

## Bối cảnh

Tháng 6 năm 2024. Thái sang Nhật được hai năm, đã quen tiếng Nhật N3 và đã làm quen chi tiết khuôn đơn. Sang năm thứ ba, anh Kawakami — 課長 phòng thiết kế — bắt đầu kèm Thái phần SolidWorks nâng cao: アセンブリ (lắp ráp) hơn 50 linh kiện thành một bộ khuôn hoàn chỉnh và xuất 図面 (bản vẽ) 2D. Chương này tập trung mẫu câu hỏi-đáp về linh kiện chuẩn, ràng buộc Mate, ký hiệu độ nhám JIS B 0601 và cách báo cáo tiến độ bản vẽ.

---

## Tình huống 1 — Phòng thiết kế · 9:00, nghe Kawakami giới thiệu bài アセンブリ đầu tiên

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、おはようございます。<ruby>今日<rt>きょう</rt></ruby>から「アセンブリ」を<ruby>教<rt>おし</rt></ruby>えますね。<br>*(Thái, chào buổi sáng. Từ hôm nay anh sẽ dạy em về "アセンブリ" nhé.)* |
| Thái | おはようございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào anh ạ. Em xin nhờ anh chỉ bảo.)* |
| Kawakami | アセンブリは<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>立<rt>た</rt></ruby>てて、<ruby>一<rt>ひと</rt></ruby>つの<ruby>金型<rt>かながた</rt></ruby>にする<ruby>作業<rt>さぎょう</rt></ruby>です。<br>*(Lắp ráp là thao tác ghép các linh kiện thành một bộ khuôn hoàn chỉnh.)* |
| Thái | すみません、「アセンブリ」というのは<ruby>英語<rt>えいご</rt></ruby>の Assembly のことですか?<br>*(Xin lỗi, "アセンブリ" có phải là Assembly trong tiếng Anh không ạ?)* |
| Kawakami | そうです。<ruby>日本語<rt>にほんご</rt></ruby>では「<ruby>組立<rt>くみたて</rt></ruby>」とも<ruby>言<rt>い</rt></ruby>います。SolidWorksの<ruby>画面<rt>がめん</rt></ruby>でも「アセンブリ」と<ruby>表示<rt>ひょうじ</rt></ruby>されます。<br>*(Đúng. Trong tiếng Nhật còn gọi là "組立". Trên màn hình SolidWorks cũng hiển thị là "アセンブリ".)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。メモしておきます。<br>*(Em rõ ạ. Em ghi lại.)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>で<ruby>五十<rt>ごじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>部品<rt>ぶひん</rt></ruby>があります。<ruby>多<rt>おお</rt></ruby>いから、<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えるのが<ruby>大変<rt>たいへん</rt></ruby>ですよ。<br>*(Một bộ khuôn có hơn 50 linh kiện. Vì nhiều nên nhớ tên chúng vất vả lắm đấy.)* |
| Thái | <ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố ạ.)* |

---

## Tình huống 2 — Phòng thiết kế · 9:15, học tên các linh kiện chính trong bộ khuôn

| Vai | Lời thoại |
|---|---|
| Kawakami | まず<ruby>主要<rt>しゅよう</rt></ruby>な<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。これが「キャビティ」、<ruby>製品<rt>せいひん</rt></ruby>の<ruby>外側<rt>そとがわ</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>部分<rt>ぶぶん</rt></ruby>です。<br>*(Trước hết anh giới thiệu các linh kiện chính. Đây là "cavity" — phần tạo hình mặt ngoài sản phẩm.)* |
| Thái | キャビティ...<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に「キャビコア」と<ruby>聞<rt>き</rt></ruby>きました。<ruby>同<rt>おな</rt></ruby>じものですか?<br>*(Cavity... Hai năm trước trưởng nhà máy có nhắc "cavity-core" với em. Có giống nhau không ạ?)* |
| Kawakami | はい、キャビ＋コアでキャビコアと<ruby>呼<rt>よ</rt></ruby>びます。コアは<ruby>製品<rt>せいひん</rt></ruby>の<ruby>内側<rt>うちがわ</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>です。<br>*(Đúng. Ghép "cavity" với "core" thành "cavity-core". Core là phần tạo hình mặt trong sản phẩm.)* |
| Thái | なるほど、<ruby>外側<rt>そとがわ</rt></ruby>がキャビ、<ruby>内側<rt>うちがわ</rt></ruby>がコアということですね。<br>*(Em hiểu rồi, mặt ngoài là cavity, mặt trong là core ạ.)* |
| Kawakami | そうです。<ruby>次<rt>つぎ</rt></ruby>はエジェクタピン。<ruby>完成<rt>かんせい</rt></ruby>した<ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す<ruby>細<rt>ほそ</rt></ruby>い<ruby>棒<rt>ぼう</rt></ruby>です。<br>*(Đúng. Tiếp theo là ejector pin — thanh nhỏ để đẩy sản phẩm đã đông ra khỏi khuôn.)* |
| Thái | エジェクタピン...すみません、「エジェクタ」というのはどんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Ejector pin... Xin lỗi, "ejector" nghĩa là gì ạ?)* |
| Kawakami | <ruby>英語<rt>えいご</rt></ruby>の eject、<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>すという<ruby>意味<rt>いみ</rt></ruby>です。<ruby>日本語<rt>にほんご</rt></ruby>では「<ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピン」とも<ruby>言<rt>い</rt></ruby>います。<br>*(Tiếng Anh "eject" nghĩa là đẩy ra. Tiếng Nhật còn gọi là "突き出しピン".)* |
| Thái | <ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピンですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Pin đẩy ra ạ. Em hiểu rồi.)* |
| Kawakami | あとはスライド、リターンピン、ガイドポスト、ガイドブッシュ...<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えていきましょう。<br>*(Còn slide, return pin, guide post, guide bush... Mình nhớ dần theo thứ tự nhé.)* |
| Thái | はい、<ruby>一<rt>ひと</rt></ruby>つずつメモします。<br>*(Vâng, em ghi từng cái một ạ.)* |

---

## Tình huống 3 — Phòng thiết kế · 9:45, Kawakami làm mẫu cách đặt ràng buộc Mate

| Vai | Lời thoại |
|---|---|
| Kawakami | じゃ、メイトを<ruby>見<rt>み</rt></ruby>せます。タイ<ruby>君<rt>くん</rt></ruby>、<ruby>後<rt>うし</rt></ruby>ろから<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Giờ anh làm mẫu Mate. Thái đứng sau xem màn hình nhé.)* |
| Thái | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép.)* |
| Kawakami | メイトは<ruby>部品<rt>ぶひん</rt></ruby><ruby>同士<rt>どうし</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>を<ruby>定義<rt>ていぎ</rt></ruby>するものです。<ruby>同心<rt>どうしん</rt></ruby>、<ruby>面接触<rt>めんせっしょく</rt></ruby>、<ruby>距離<rt>きょり</rt></ruby>、<ruby>角度<rt>かくど</rt></ruby>などがあります。<br>*(Mate dùng để định nghĩa quan hệ giữa các linh kiện: đồng tâm, tiếp xúc mặt, khoảng cách, góc...)* |
| Thái | すみません、「<ruby>同心<rt>どうしん</rt></ruby>」というのは?<br>*(Xin lỗi, "đồng tâm" nghĩa là gì ạ?)* |
| Kawakami | <ruby>二<rt>ふた</rt></ruby>つの<ruby>円<rt>えん</rt></ruby>または<ruby>軸<rt>じく</rt></ruby>の<ruby>中心<rt>ちゅうしん</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じということです。<ruby>例<rt>たと</rt></ruby>えばエジェクタピンとプレートの<ruby>穴<rt>あな</rt></ruby>、<ruby>中心<rt>ちゅうしん</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Tâm của hai đường tròn hoặc hai trục trùng nhau. Ví dụ ejector pin với lỗ trên tấm — phải khớp tâm.)* |
| Thái | なるほど。<ruby>中心<rt>ちゅうしん</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じということですね。<br>*(Ra vậy. Tức là tâm trùng nhau ạ.)* |
| Kawakami | はい。それから「<ruby>距離<rt>きょり</rt></ruby><ruby>0<rt>ゼロ</rt></ruby>」を<ruby>追加<rt>ついか</rt></ruby>すると、ピンが<ruby>穴<rt>あな</rt></ruby>にぴったり<ruby>入<rt>はい</rt></ruby>ります。<br>*(Vâng. Rồi thêm "khoảng cách 0" thì pin sẽ khít hoàn toàn vào lỗ.)* |
| Thái | (<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながら) なるほど、メイトを<ruby>二<rt>ふた</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>するんですね。<br>*(Nhìn màn hình. Ra là phải thêm hai mate ạ.)* |
| Kawakami | <ruby>一<rt>ひと</rt></ruby>つの<ruby>部品<rt>ぶひん</rt></ruby>に<ruby>三<rt>みっ</rt></ruby>つから<ruby>六<rt>むっ</rt></ruby>つのメイトが<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>足<rt>た</rt></ruby>りないと<ruby>部品<rt>ぶひん</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いてしまいますよ。<br>*(Một linh kiện cần từ 3 đến 6 mate. Thiếu là linh kiện sẽ chạy lung tung đấy.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 4 — Phòng thiết kế · 10:15, Thái thực hành lắp ejector pin và hỏi lại khi gặp lỗi

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、すみません、エジェクタピンを<ruby>入<rt>い</rt></ruby>れてみたのですが、<ruby>赤<rt>あか</rt></ruby>いエラーが<ruby>出<rt>で</rt></ruby>ました。<br>*(Anh Kawakami, em xin lỗi, em thử lắp ejector pin nhưng hiện lỗi đỏ.)* |
| Kawakami | (<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る) ああ、これは「<ruby>過剰拘束<rt>かじょうこうそく</rt></ruby>」ですね。<br>*(Nhìn màn hình. À, đây là "over-constrained".)* |
| Thái | <ruby>過剰拘束<rt>かじょうこうそく</rt></ruby>...<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>く<ruby>言葉<rt>ことば</rt></ruby>です。どんな<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Over-constrained... Lần đầu em nghe từ này. Nghĩa là gì ạ?)* |
| Kawakami | メイトが<ruby>多<rt>おお</rt></ruby>すぎて、<ruby>矛盾<rt>むじゅん</rt></ruby>が<ruby>起<rt>お</rt></ruby>きている<ruby>状態<rt>じょうたい</rt></ruby>です。<ruby>同<rt>おな</rt></ruby>じ<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>二<rt>に</rt></ruby><ruby>重<rt>じゅう</rt></ruby>に<ruby>指定<rt>してい</rt></ruby>するとなります。<br>*(Là trạng thái mate quá nhiều, gây mâu thuẫn. Sẽ xảy ra khi chỉ định cùng một điều kiện hai lần.)* |
| Thái | あ、<ruby>同心<rt>どうしん</rt></ruby>を<ruby>二<rt>ふた</rt></ruby>つ<ruby>追加<rt>ついか</rt></ruby>してしまったかもしれません。<br>*(À, có lẽ em thêm "đồng tâm" hai lần ạ.)* |
| Kawakami | <ruby>確認<rt>かくにん</rt></ruby>してください。Featureツリーで<ruby>一覧<rt>いちらん</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<br>*(Em kiểm tra đi. Xem ở Feature tree là thấy danh sách.)* |
| Thái | (ツリーを<ruby>見<rt>み</rt></ruby>る) あ、ありました。<ruby>削除<rt>さくじょ</rt></ruby>します。<br>*(Nhìn cây. À, đây rồi. Em xoá ạ.)* |
| Kawakami | はい、それでエラーが<ruby>消<rt>き</rt></ruby>えるはずです。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>早<rt>はや</rt></ruby>めに<ruby>聞<rt>き</rt></ruby>いてくださいね、<ruby>報連相<rt>ほうれんそう</rt></ruby>です。<br>*(Vâng, vậy là lỗi sẽ biến mất. Có gì không hiểu cứ hỏi sớm nhé, "報連相" đấy.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 5 — Phòng thiết kế · 10:45, quan sát Kawakami chuyển từ 3D sang 図面 2D

| Vai | Lời thoại |
|---|---|
| Kawakami | アセンブリができたら、<ruby>次<rt>つぎ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>次元<rt>じげん</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ります。<ruby>現場<rt>げんば</rt></ruby>の<ruby>人<rt>ひと</rt></ruby>はこの<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>加工<rt>かこう</rt></ruby>します。<br>*(Lắp ráp xong thì làm bản vẽ 2D. Công nhân hiện trường nhìn bản vẽ này để gia công.)* |
| Thái | <ruby>3D<rt>スリーディー</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいと<ruby>思<rt>おも</rt></ruby>いますが、<ruby>2D<rt>ツーディー</rt></ruby>も<ruby>必<rt>かなら</rt></ruby>ず<ruby>作<rt>つく</rt></ruby>るんですか?<br>*(Em nghĩ 3D dễ hiểu hơn, nhưng vẫn nhất thiết phải làm 2D ạ?)* |
| Kawakami | はい、<ruby>必<rt>かなら</rt></ruby>ず。<ruby>寸法<rt>すんぽう</rt></ruby>、<ruby>公差<rt>こうさ</rt></ruby>、<ruby>表面粗<rt>ひょうめんあら</rt></ruby>さは<ruby>2<rt>に</rt></ruby><ruby>次元<rt>じげん</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>でしか<ruby>正<rt>ただ</rt></ruby>しく<ruby>伝<rt>つた</rt></ruby>えられません。<br>*(Vâng, bắt buộc. Kích thước, dung sai, độ nhám bề mặt — chỉ có bản vẽ 2D mới truyền đạt chính xác được.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |
| Kawakami | <ruby>基本<rt>きほん</rt></ruby>は<ruby>四<rt>よっ</rt></ruby>つのビュー：<ruby>正面<rt>しょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>側面<rt>そくめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>上面<rt>じょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>断面<rt>だんめん</rt></ruby><ruby>図<rt>ず</rt></ruby>です。<br>*(Cơ bản là bốn khung nhìn: mặt trước, mặt bên, mặt trên, mặt cắt.)* |
| Thái | すみません、「<ruby>断面<rt>だんめん</rt></ruby>」というのは?<br>*(Xin lỗi, "断面" nghĩa là gì ạ?)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby>を<ruby>切<rt>き</rt></ruby>った<ruby>中<rt>なか</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>です。<ruby>中<rt>なか</rt></ruby>の<ruby>構造<rt>こうぞう</rt></ruby>を<ruby>見<rt>み</rt></ruby>せるために<ruby>使<rt>つか</rt></ruby>います。<br>*(Là hình dạng bên trong khi cắt khuôn ra. Dùng để cho thấy cấu trúc bên trong.)* |
| Thái | <ruby>中身<rt>なかみ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる<ruby>図<rt>ず</rt></ruby>ということですね。<br>*(Bản vẽ cho thấy phần bên trong ạ.)* |
| Kawakami | そうです。<ruby>視図<rt>しず</rt></ruby>の<ruby>配置<rt>はいち</rt></ruby>はJIS<ruby>第三<rt>だいさん</rt></ruby><ruby>角法<rt>かくほう</rt></ruby>に<ruby>従<rt>したが</rt></ruby>います。<br>*(Đúng. Bố trí khung nhìn tuân theo phép chiếu góc thứ ba của JIS.)* |
| Thái | (メモする) JIS<ruby>第三<rt>だいさん</rt></ruby><ruby>角法<rt>かくほう</rt></ruby>...<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Ghi chép. JIS phép chiếu góc thứ ba... Em sẽ nhớ.)* |

---

## Tình huống 6 — Phòng thiết kế · 11:00, học ký hiệu độ nhám bề mặt theo JIS B 0601

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>表面粗<rt>ひょうめんあら</rt></ruby>さの<ruby>記号<rt>きごう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。JIS B 0601<ruby>規格<rt>きかく</rt></ruby>です。<br>*(Anh giải thích ký hiệu độ nhám bề mặt. Theo tiêu chuẩn JIS B 0601.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Kawakami | キャビティの<ruby>標準<rt>ひょうじゅん</rt></ruby>は Ra<ruby>0.4<rt>れいてんよん</rt></ruby>マイクロメートル。<ruby>記号<rt>きごう</rt></ruby>は<ruby>三角<rt>さんかく</rt></ruby><ruby>三<rt>みっ</rt></ruby>つ、▽▽▽です。<br>*(Chuẩn cho cavity là Ra 0,4 micromet. Ký hiệu là ba tam giác, ▽▽▽.)* |
| Thái | <ruby>三角<rt>さんかく</rt></ruby>の<ruby>数<rt>かず</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いほど<ruby>細<rt>こま</rt></ruby>かいんですか?<br>*(Càng nhiều tam giác là càng mịn ạ?)* |
| Kawakami | そうです。<ruby>鏡面仕上<rt>きょうめんしあ</rt></ruby>げは Ra<ruby>0.05<rt>れいてんれいご</rt></ruby>マイクロメートル、<ruby>三角<rt>さんかく</rt></ruby><ruby>四<rt>よっ</rt></ruby>つ、▽▽▽▽です。<br>*(Đúng. Đánh bóng gương là Ra 0,05 micromet, bốn tam giác, ▽▽▽▽.)* |
| Thái | すみません、「<ruby>鏡面仕上<rt>きょうめんしあ</rt></ruby>げ」というのは?<br>*(Xin lỗi, "鏡面仕上げ" nghĩa là gì ạ?)* |
| Kawakami | <ruby>鏡<rt>かがみ</rt></ruby>のようにつるつるにする<ruby>仕上<rt>しあ</rt></ruby>げです。<ruby>透明<rt>とうめい</rt></ruby>な<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る<ruby>金型<rt>かながた</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Đánh bóng đến nhẵn như gương. Dùng cho khuôn làm linh kiện trong suốt.)* |
| Thái | なるほど、レンズの<ruby>金型<rt>かながた</rt></ruby>などですね。<br>*(Ra vậy, ví dụ khuôn làm thấu kính ạ.)* |
| Kawakami | その<ruby>通<rt>とお</rt></ruby>りです。よく<ruby>分<rt>わ</rt></ruby>かりましたね。<br>*(Đúng vậy. Em hiểu nhanh nhỉ.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn anh ạ.)* |

---

## Tình huống 7 — Phòng thiết kế · 11:30, quan sát Kawakami ghi 寸法 và 公差 lên bản vẽ

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>記入<rt>きにゅう</rt></ruby>します。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>部分<rt>ぶぶん</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>公差<rt>こうさ</rt></ruby>もつけます。<br>*(Anh ghi kích thước vào. Chỗ quan trọng thì nhất định kèm dung sai.)* |
| Thái | <ruby>公差<rt>こうさ</rt></ruby>は「<ruby>±<rt>プラスマイナス</rt></ruby><ruby>0.01<rt>れいてんれいいち</rt></ruby>」のようなものですか?<br>*(Dung sai có phải kiểu "±0,01" không ạ?)* |
| Kawakami | はい。<ruby>金型<rt>かながた</rt></ruby>の<ruby>精度<rt>せいど</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>厳<rt>きび</rt></ruby>しいので、±0.01mmはよく<ruby>使<rt>つか</rt></ruby>います。<br>*(Đúng. Độ chính xác khuôn rất khắt khe, ±0,01 mm hay dùng.)* |
| Thái | エジェクタピンの<ruby>穴<rt>あな</rt></ruby>はどのくらいですか?<br>*(Lỗ ejector pin thì khoảng bao nhiêu ạ?)* |
| Kawakami | ピンが<ruby>動<rt>うご</rt></ruby>く<ruby>穴<rt>あな</rt></ruby>は H7、ピン<ruby>自体<rt>じたい</rt></ruby>は g6 が<ruby>標準<rt>ひょうじゅん</rt></ruby>です。「すきまばめ」と<ruby>言<rt>い</rt></ruby>います。<br>*(Lỗ pin chuyển động là H7, bản thân pin là g6 — chuẩn. Gọi là "lắp ghép có khe hở".)* |
| Thái | すみません、「すきまばめ」というのは?<br>*(Xin lỗi, "すきまばめ" nghĩa là gì ạ?)* |
| Kawakami | <ruby>穴<rt>あな</rt></ruby>と<ruby>軸<rt>じく</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>に<ruby>少<rt>すこ</rt></ruby>し<ruby>隙間<rt>すきま</rt></ruby>がある<ruby>状態<rt>じょうたい</rt></ruby>です。<ruby>逆<rt>ぎゃく</rt></ruby>は「しまりばめ」、<ruby>圧入<rt>あつにゅう</rt></ruby>するときに<ruby>使<rt>つか</rt></ruby>います。<br>*(Là trạng thái giữa lỗ và trục có khe hở nhỏ. Ngược lại là "lắp ghép chặt", dùng khi ép vào.)* |
| Thái | <ruby>動<rt>うご</rt></ruby>く<ruby>部品<rt>ぶひん</rt></ruby>はすきまばめ、<ruby>固定<rt>こてい</rt></ruby>はしまりばめということですね。<br>*(Linh kiện cần chuyển động dùng lắp có khe, cố định dùng lắp chặt ạ.)* |
| Kawakami | その<ruby>通<rt>とお</rt></ruby>り。<ruby>三<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>でもう<ruby>分<rt>わ</rt></ruby>かるんですね、<ruby>上達<rt>じょうたつ</rt></ruby>しましたね。<br>*(Chính xác. Mới năm thứ ba mà em đã hiểu, tiến bộ thật đấy.)* |
| Thái | (<ruby>少<rt>すこ</rt></ruby>し<ruby>嬉<rt>うれ</rt></ruby>しそうに) ありがとうございます。<br>*(Hơi vui ra mặt. Em cảm ơn anh ạ.)* |

---

## Tình huống 8 — Phòng thiết kế · 14:00, tự sinh BOM và xác nhận mã ミスミ

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>午後<rt>ごご</rt></ruby>はBOMを<ruby>作<rt>つく</rt></ruby>ります。BOMは Bill of Materials、<ruby>日本語<rt>にほんご</rt></ruby>では「<ruby>部品表<rt>ぶひんひょう</rt></ruby>」です。<br>*(Chiều mình làm BOM. BOM là Bill of Materials, tiếng Nhật là "bảng linh kiện".)* |
| Thái | SolidWorksから<ruby>自動<rt>じどう</rt></ruby>で<ruby>作<rt>つく</rt></ruby>れますか?<br>*(Có thể tự sinh từ SolidWorks không ạ?)* |
| Kawakami | はい、<ruby>自動生成<rt>じどうせいせい</rt></ruby>です。やってみてください。<br>*(Vâng, sinh tự động. Em thử đi.)* |
| Thái | (BOMを<ruby>生成<rt>せいせい</rt></ruby>する) ...<ruby>五十<rt>ごじゅう</rt></ruby><ruby>行<rt>ぎょう</rt></ruby><ruby>出<rt>で</rt></ruby>ました!<br>*(Sinh BOM. ... Hiện ra 50 dòng!)* |
| Kawakami | <ruby>多<rt>おお</rt></ruby>いでしょう。<ruby>次<rt>つぎ</rt></ruby>に<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>には「ミスミ<ruby>番号<rt>ばんごう</rt></ruby>」を<ruby>記入<rt>きにゅう</rt></ruby>します。<br>*(Nhiều nhỉ. Tiếp theo với linh kiện chuẩn thì ghi "mã Misumi" vào.)* |
| Thái | ミスミは<ruby>部品<rt>ぶひん</rt></ruby>メーカーですね。<ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>にカタログを<ruby>見<rt>み</rt></ruby>ました。<br>*(Misumi là hãng linh kiện đúng không ạ. Năm thứ hai em đã xem catalogue rồi.)* |
| Kawakami | そうです。<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>で<ruby>作<rt>つく</rt></ruby>らずに、ミスミから<ruby>買<rt>か</rt></ruby>います。<ruby>番号<rt>ばんごう</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>書<rt>か</rt></ruby>かないと<ruby>違<rt>ちが</rt></ruby>う<ruby>物<rt>もの</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きますよ。<br>*(Đúng. Linh kiện chuẩn không tự làm mà mua từ Misumi. Không ghi đúng mã là sẽ giao nhầm hàng đấy.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ kiểm tra cẩn thận.)* |
| Kawakami | <ruby>確認<rt>かくにん</rt></ruby>が<ruby>済<rt>す</rt></ruby>んだら、<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>に<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Kiểm tra xong, mình cùng đi báo cáo cho trưởng nhà máy nhé.)* |

---

## Tình huống 9 — Phòng 工場長 · 16:30, báo cáo tiến độ アセンブリ và 図面 (報連相)

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Em xin phép. Trưởng nhà máy Tanaka, em xin báo cáo công việc hôm nay ạ.)* |
| Tanaka | はい、お<ruby>疲<rt>つか</rt></ruby>れさま。どうぞ。<br>*(Vâng, vất vả rồi. Mời em.)* |
| Thái | <ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>川上<rt>かわかみ</rt></ruby><ruby>主任<rt>しゅにん</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>のもとで、アセンブリとメイトの<ruby>基本<rt>きほん</rt></ruby>を<ruby>学<rt>まな</rt></ruby>びました。<ruby>図面<rt>ずめん</rt></ruby>は<ruby>正面<rt>しょうめん</rt></ruby>と<ruby>断面<rt>だんめん</rt></ruby>まで<ruby>完成<rt>かんせい</rt></ruby>です。BOMは<ruby>五十<rt>ごじゅう</rt></ruby><ruby>行<rt>ぎょう</rt></ruby><ruby>生成<rt>せいせい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Hôm nay dưới sự chỉ dẫn của chủ nhiệm Kawakami, em đã học cơ bản về assembly và mate. Bản vẽ em hoàn thành đến mặt trước và mặt cắt. BOM đã sinh xong 50 dòng ạ.)* |
| Tanaka | いいですね。<ruby>問題<rt>もんだい</rt></ruby>はありましたか?<br>*(Tốt đấy. Có vấn đề gì không?)* |
| Thái | はい、<ruby>過剰拘束<rt>かじょうこうそく</rt></ruby>のエラーが<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>出<rt>で</rt></ruby>ましたが、<ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>相談<rt>そうだん</rt></ruby>して<ruby>解決<rt>かいけつ</rt></ruby>しました。<br>*(Vâng, em bị một lần lỗi over-constrained, nhưng đã hỏi anh Kawakami và giải quyết được.)* |
| Tanaka | <ruby>報連相<rt>ほうれんそう</rt></ruby>ができていますね。タイ<ruby>君<rt>くん</rt></ruby>はもう<ruby>3<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>、<ruby>独立<rt>どくりつ</rt></ruby>した<ruby>設計者<rt>せっけいしゃ</rt></ruby>になる<ruby>準備<rt>じゅんび</rt></ruby>ができていますよ。<br>*(Em làm tốt 報連相 đấy. Năm thứ ba rồi, em đang chuẩn bị thành kỹ sư thiết kế độc lập rồi.)* |
| Thái | ありがとうございます。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ông ạ. Em sẽ tiếp tục cố gắng.)* |
| Tanaka | <ruby>明日<rt>あした</rt></ruby>は<ruby>側面<rt>そくめん</rt></ruby><ruby>図<rt>ず</rt></ruby>と<ruby>上面<rt>じょうめん</rt></ruby><ruby>図<rt>ず</rt></ruby>を<ruby>完成<rt>かんせい</rt></ruby>させてください。<ruby>表面粗<rt>ひょうめんあら</rt></ruby>さの<ruby>記号<rt>きごう</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Mai hoàn thành mặt bên và mặt trên nhé. Đừng quên ký hiệu độ nhám.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em rõ ạ. Em xin phép.)* |

---

## Tình huống 10 — Phòng 201 ký túc · 22:00, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ chuyên ngành trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay đi làm thế nào? Em thấy anh online muộn quá. |
| Thái | (tiếng Việt) Anh vừa ghi xong sổ tay. Hôm nay học アセンブリ — lắp ráp hơn 50 linh kiện thành một bộ khuôn trên SolidWorks. |
| Mai | (tiếng Việt) Nghe khó vậy. Có ai chỉ cho anh không? |
| Thái | (tiếng Việt) Anh Kawakami chủ nhiệm thiết kế dạy. Anh ấy chỉ từng cái: キャビ là mặt ngoài, コア là mặt trong, エジェクタピン là pin đẩy sản phẩm ra. Mỗi cái em hiểu anh hỏi lại "〜というのは?" tới khi hiểu thì thôi. |
| Mai | (tiếng Việt) Hỏi tới hỏi lui không ngại à anh? |
| Thái | (tiếng Việt) Lúc đầu ngại. Sau anh quen rồi. Bên Nhật quan trọng nhất là 報連相 — báo cáo, liên lạc, bàn bạc. Cứ thấy không hiểu mà im là sai nặng. |
| Mai | (tiếng Việt) Mà sao công ty bắt làm cả 3D rồi lại 2D nữa? |
| Thái | (tiếng Việt) Vì công nhân hiện trường nhìn bản vẽ 2D để gia công. Phải ghi 寸法, 公差 ±0,01mm, ký hiệu 表面粗さ JIS — ba tam giác ▽▽▽ là chuẩn cavity, bốn tam giác ▽▽▽▽ là đánh bóng gương cho khuôn thấu kính. |
| Mai | (tiếng Việt) Em ghi vô sổ giúp anh đây này. Ba năm rồi đó anh, sắp về chưa? |
| Thái | (tiếng Việt) Còn hai năm. Ông Tanaka hôm nay khen anh sắp thành 設計者 độc lập. Cố thêm chút nữa em. |
| Mai | (tiếng Việt) Ừ. Anh đi ngủ đi, đừng thức muộn. |
| Thái | (tiếng Việt) Ngủ ngon em. |

---

## Đọng lại chương 2

Sang năm thứ ba, Thái bước vào giai đoạn được dạy SolidWorks nâng cao thực sự — không còn chi tiết khuôn đơn lẻ mà là **アセンブリ** ghép hơn 50 linh kiện thành một bộ khuôn hoàn chỉnh. Anh học cấu tạo cơ bản (**キャビ・コア・エジェクタピン・スライド・ガイドポスト**) và quy tắc đặt **メイト** (**同心・面接触・距離・角度**), gặp lỗi **過剰拘束** và biết cách hỏi lại lễ phép "〜というのは?" để gỡ. Sang phần **2D 図面**, Thái nắm bốn khung nhìn cơ bản (**正面図・側面図・上面図・断面図**) theo JIS 第三角法, ký hiệu **表面粗さ** Ra0.4 ▽▽▽ và **鏡面仕上げ** Ra0.05 ▽▽▽▽, hệ **公差** H7/g6 với khái niệm **すきまばめ・しまりばめ**. Kết ngày bằng việc tự sinh **BOM** 50 dòng, ghi **ミスミ番号** và **báo cáo 報連相** đầy đủ cho 工場長 — đúng phong cách kỹ sư khuôn đúc Nhật.

> Từ vựng & mẫu câu chương này: アセンブリ・組立・メイト・同心・面接触・距離・角度・キャビティ・コア・エジェクタピン・突き出しピン・スライド・リターンピン・ガイドポスト・過剰拘束・図面・正面図・側面図・上面図・断面図・第三角法・寸法・公差・表面粗さ・鏡面仕上げ・JIS B 0601・すきまばめ・しまりばめ・H7・g6・BOM・部品表・ミスミ番号・標準品・報連相・〜というのは・〜ということですね・承知しました・失礼します

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 主任 | しゅにん | CHỦ NHIỆM | Chủ nhiệm |
| 組立 | くみたて | TỔ LẬP | Lắp ráp |
| 作業 | さぎょう | TÁC NGHIỆP | Thao tác, công việc |
| 主要 | しゅよう | CHỦ YẾU | Chủ yếu |
| 外側 | そとがわ | NGOẠI TRẮC | Mặt ngoài |
| 内側 | うちがわ | NỘI TRẮC | Mặt trong |
| 工場長 | こうじょうちょう | CÔNG TRƯỜNG TRƯỞNG | Trưởng nhà máy |
| 完成 | かんせい | HOÀN THÀNH | Hoàn thành |
| 突き出し | つきだし | ĐỘT XUẤT | Đẩy ra |
| 順番 | じゅんばん | THUẬN PHIÊN | Thứ tự |
| 同心 | どうしん | ĐỒNG TÂM | Đồng tâm |
| 面接触 | めんせっしょく | DIỆN TIẾP XÚC | Tiếp xúc mặt |
| 距離 | きょり | CỰ LY | Khoảng cách |
| 角度 | かくど | GIÁC ĐỘ | Góc |
| 中心 | ちゅうしん | TRUNG TÂM | Tâm |
| 軸 | じく | TRỤC | Trục |
| 追加 | ついか | TRUY GIA | Thêm vào |
| 過剰拘束 | かじょうこうそく | QUÁ THẶNG CÂU THÚC | Over-constrained, ràng buộc dư |
| 矛盾 | むじゅん | MÂU THUẪN | Mâu thuẫn |
| 状態 | じょうたい | TRẠNG THÁI | Trạng thái |
| 指定 | してい | CHỈ ĐỊNH | Chỉ định |
| 削除 | さくじょ | SÁCH TRỪ | Xoá |
| 二次元 | にじげん | NHỊ THỨ NGUYÊN | 2D, hai chiều |
| 現場 | げんば | HIỆN TRƯỜNG | Hiện trường |
| 加工 | かこう | GIA CÔNG | Gia công |
| 表面粗さ | ひょうめんあらさ | BIỂU DIỆN THÔ | Độ nhám bề mặt |
| 正面図 | しょうめんず | CHÍNH DIỆN ĐỒ | Hình chiếu mặt trước |
| 側面図 | そくめんず | TRẮC DIỆN ĐỒ | Hình chiếu mặt bên |
| 上面図 | じょうめんず | THƯỢNG DIỆN ĐỒ | Hình chiếu mặt trên |
| 断面図 | だんめんず | ĐOẠN DIỆN ĐỒ | Hình chiếu mặt cắt |
| 構造 | こうぞう | CẤU TẠO | Cấu trúc |
| 第三角法 | だいさんかくほう | ĐỆ TAM GIÁC PHÁP | Phép chiếu góc thứ ba |
| 規格 | きかく | QUY CÁCH | Tiêu chuẩn |
| 標準 | ひょうじゅん | TIÊU CHUẨN | Chuẩn |
| 鏡面仕上げ | きょうめんしあげ | KÍNH DIỆN SĨ THƯỢNG | Đánh bóng gương |
| 透明 | とうめい | THẤU MINH | Trong suốt |
| 精度 | せいど | TINH ĐỘ | Độ chính xác |
| 圧入 | あつにゅう | ÁP NHẬP | Ép vào |
| 固定 | こてい | CỐ ĐỊNH | Cố định |
| 上達 | じょうたつ | THƯỢNG ĐẠT | Tiến bộ |
| 部品表 | ぶひんひょう | BỘ PHẨM BIỂU | Bảng linh kiện (BOM) |
| 自動生成 | じどうせいせい | TỰ ĐỘNG SINH THÀNH | Sinh tự động |
| 標準品 | ひょうじゅんひん | TIÊU CHUẨN PHẨM | Linh kiện chuẩn |
| 指導 | しどう | CHỈ ĐẠO | Hướng dẫn |
| 独立 | どくりつ | ĐỘC LẬP | Độc lập |
| 設計者 | せっけいしゃ | THIẾT KẾ GIẢ | Kỹ sư thiết kế |
| 記号 | きごう | KÝ HIỆU | Ký hiệu |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000003, 800000016, NULL, 'markdown_book', 'T3. Đào sâu thư viện linh kiện chuẩn Misumi (ミスミ部品深堀)', '# Sách kỹ sư khuôn đúc · T3. Đào sâu thư viện linh kiện chuẩn Misumi (ミスミ部品深堀)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) đã sang năm thứ 3 làm kỹ sư khuôn tại Anjo. Học các mẫu hội thoại tiếng Nhật khi tiền bối hướng dẫn dùng catalog linh kiện chuẩn Misumi: nghe tiền bối phân loại カテゴリー linh kiện khuôn, hỏi lại khi gặp tên kỹ thuật mới (〜というのは？), xác nhận hiệu quả giảm chi phí (〜ということですね), trao đổi về sàn TMĐT meviy với tiền bối, xin lời khuyên học catalog dày 2000 trang, và ôn lại từ vựng chuyên ngành qua nhật ký tiếng Việt.

---

## Bối cảnh

Tháng 7 năm 2024. Thái sang Nhật năm thứ 3, đã chuyển từ vị trí thực tập hiện trường lên bộ phận thiết kế khuôn tại **株式会社みなみ精密金型**. Trình độ tiếng Nhật N3 sắp thi N2. Hôm nay đàn anh **川上 (Kawakami)** — 課長 phòng thiết kế — dạy chuyên sâu về catalog linh kiện chuẩn của Misumi (dày hơn 2000 trang) và sàn TMĐT meviy. Chương này tập trung các mẫu câu nghe giảng kỹ thuật, hỏi lại khi chưa hiểu thuật ngữ chuyên ngành, và xác nhận lại với tiền bối.

---

## Tình huống 1 — Bàn thiết kế · 9:00, Kawakami giới thiệu catalog Misumi

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、おはよう。<ruby>今日<rt>きょう</rt></ruby>から「ミスミ」を<ruby>本気<rt>ほんき</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>しよう。<br>*(Thái, chào buổi sáng. Từ hôm nay học Misumi đến nơi đến chốn nhé.)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, anh Kawakami, mong anh chỉ bảo ạ.)* |
| Kawakami | （<ruby>分厚<rt>ぶあつ</rt></ruby>いカタログを<ruby>机<rt>つくえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>く）これ、<ruby>1冊<rt>いっさつ</rt></ruby>で<ruby>2000<rt>にせん</rt></ruby>ページもあるんだ。<br>*(Đặt cuốn catalog dày cộp lên bàn. Cái này, một cuốn mà tới 2000 trang đấy.)* |
| Thái | え、<ruby>2000<rt>にせん</rt></ruby>ページですか…<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>分厚<rt>ぶあつ</rt></ruby>いですね。<br>*(Ơ, 2000 trang ạ… dày thật.)* |
| Kawakami | <ruby>金型<rt>かながた</rt></ruby><ruby>設計者<rt>せっけいしゃ</rt></ruby>のバイブルだよ。これを<ruby>使<rt>つか</rt></ruby>いこなせば、<ruby>一人前<rt>いちにんまえ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づける。<br>*(Là kinh thánh của kỹ sư thiết kế khuôn đấy. Dùng được cuốn này thì coi như sắp thành thợ chính.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。すみません、「ミスミ」というのは<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>ですか？<br>*(Vâng, em sẽ cố gắng. Xin lỗi, "Misumi" là tên công ty ạ?)* |
| Kawakami | そう。<ruby>金型用<rt>かながたよう</rt></ruby><ruby>標準部品<rt>ひょうじゅんぶひん</rt></ruby>の<ruby>最大手<rt>さいおおて</rt></ruby>メーカーだ。<ruby>日本<rt>にほん</rt></ruby>の<ruby>金型業界<rt>かながたぎょうかい</rt></ruby>はミスミなしでは<ruby>成<rt>な</rt></ruby>り<ruby>立<rt>た</rt></ruby>たない。<br>*(Đúng. Là hãng lớn nhất chuyên linh kiện chuẩn cho khuôn. Ngành khuôn Nhật Bản không có Misumi thì không vận hành được.)* |
| Thái | なるほど、<ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>標準<rt>ひょうじゅん</rt></ruby>ということですね。<br>*(Ra vậy, tức là chuẩn của cả ngành ạ.)* |

---

## Tình huống 2 — Bàn thiết kế · 9:30, nghe Kawakami phân loại カテゴリー chính

| Vai | Lời thoại |
|---|---|
| Kawakami | カタログの<ruby>主要<rt>しゅよう</rt></ruby>カテゴリーを<ruby>説明<rt>せつめい</rt></ruby>します。まずは<ruby>大<rt>おお</rt></ruby>きく<ruby>5<rt>いつ</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けて<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Tôi giải thích các nhóm chính trong catalog. Trước tiên hãy nhớ phân thành 5 nhóm lớn.)* |
| Thái | はい、メモします。<br>*(Vâng, em ghi chép ạ.)* |
| Kawakami | <ruby>一<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>金型用<rt>かながたよう</rt></ruby><ruby>標準部品<rt>ひょうじゅんぶひん</rt></ruby>。ベース<ruby>類<rt>るい</rt></ruby>とかプレート<ruby>類<rt>るい</rt></ruby>です。<br>*(Một, linh kiện chuẩn cho khuôn. Các loại đế và tấm.)* |
| Thái | はい。<br>*(Vâng.)* |
| Kawakami | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>位置決<rt>いちぎ</rt></ruby>めピンとガイドピン。<ruby>金型<rt>かながた</rt></ruby>の<ruby>上下<rt>じょうげ</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせる<ruby>部品<rt>ぶひん</rt></ruby>だね。<br>*(Hai, chốt định vị và chốt dẫn hướng. Là linh kiện căn chỉnh chính xác phần trên dưới của khuôn.)* |
| Thái | すみません、「<ruby>位置決<rt>いちぎ</rt></ruby>めピン」というのは、<ruby>位置<rt>いち</rt></ruby>を<ruby>決<rt>き</rt></ruby>めるためのピンということですか？<br>*(Xin lỗi, "chốt định vị" tức là chốt để xác định vị trí phải không ạ?)* |
| Kawakami | そうそう、<ruby>意味<rt>いみ</rt></ruby>のとおりだよ。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピン、エジェクタピンとも<ruby>呼<rt>よ</rt></ruby>ぶ。<ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す<ruby>役割<rt>やくわり</rt></ruby>。<br>*(Đúng đúng, đúng nghĩa của tên. Ba là chốt đẩy, còn gọi là ejector pin. Đẩy sản phẩm ra khỏi khuôn.)* |
| Thái | エジェクタピン…<ruby>製品<rt>せいひん</rt></ruby>を<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>すピンということですね。<br>*(Ejector pin… tức là chốt đẩy sản phẩm ra ạ.)* |
| Kawakami | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は<ruby>水<rt>みず</rt></ruby>プラグと<ruby>水<rt>みず</rt></ruby>パイプ。<ruby>金型<rt>かながた</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やす<ruby>水<rt>みず</rt></ruby>を<ruby>通<rt>とお</rt></ruby>す<ruby>部品<rt>ぶひん</rt></ruby>だ。<ruby>最後<rt>さいご</rt></ruby>、<ruby>五<rt>いつ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>はばね<ruby>各種<rt>かくしゅ</rt></ruby>。<br>*(Bốn là đầu nối nước và ống nước. Linh kiện để dẫn nước làm mát khuôn. Cuối cùng, năm là lò xo các loại.)* |
| Thái | <ruby>標準部品<rt>ひょうじゅんぶひん</rt></ruby>・<ruby>位置決<rt>いちぎ</rt></ruby>めピン・<ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピン・<ruby>水<rt>みず</rt></ruby>プラグ・ばね、<ruby>五<rt>ご</rt></ruby>つですね。<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Linh kiện chuẩn, chốt định vị, chốt đẩy, đầu nối nước, lò xo — 5 nhóm ạ. Em nhất định sẽ nhớ.)* |

---

## Tình huống 3 — Bàn thiết kế · 10:30, Kawakami giảng triết lý giảm chi phí bằng linh kiện chuẩn

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>金型<rt>かながた</rt></ruby><ruby>1個<rt>いっこ</rt></ruby>の<ruby>原価<rt>げんか</rt></ruby>はだいたいいくらか<ruby>知<rt>し</rt></ruby>っている？<br>*(Thái, em biết giá thành một bộ khuôn khoảng bao nhiêu không?)* |
| Thái | いいえ、<ruby>正確<rt>せいかく</rt></ruby>には<ruby>知<rt>し</rt></ruby>りません。<br>*(Không ạ, em không biết chính xác.)* |
| Kawakami | <ruby>500<rt>ごひゃく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>ぐらいだ。<ruby>標準品<rt>ひょうじゅんひん</rt></ruby>をうまく<ruby>使<rt>つか</rt></ruby>えば、<ruby>原価<rt>げんか</rt></ruby>を<ruby>20<rt>にじゅっ</rt></ruby>パーセントもカットできるよ。<br>*(Khoảng 5 triệu yên. Dùng linh kiện chuẩn khéo léo thì cắt được tới 20% giá thành.)* |
| Thái | え、<ruby>20<rt>にじゅっ</rt></ruby>パーセントですか！すごい<ruby>差<rt>さ</rt></ruby>ですね。<br>*(Ơ, 20% ạ! Chênh lệch lớn thật.)* |
| Kawakami | そう。<ruby>新人<rt>しんじん</rt></ruby><ruby>設計者<rt>せっけいしゃ</rt></ruby>はオーダー<ruby>品<rt>ひん</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みすぎるんだ。<ruby>原価<rt>げんか</rt></ruby>がどんどん<ruby>上<rt>あ</rt></ruby>がる。<br>*(Đúng. Kỹ sư mới hay đặt linh kiện gia công riêng quá nhiều. Giá thành đội lên ầm ầm.)* |
| Thái | すみません、「オーダー<ruby>品<rt>ひん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "order-hin" nghĩa là gì ạ?)* |
| Kawakami | <ruby>特別<rt>とくべつ</rt></ruby>に<ruby>注文<rt>ちゅうもん</rt></ruby>して<ruby>作<rt>つく</rt></ruby>ってもらう<ruby>部品<rt>ぶひん</rt></ruby>のことだ。<ruby>形<rt>かたち</rt></ruby>が<ruby>特殊<rt>とくしゅ</rt></ruby>だから<ruby>高<rt>たか</rt></ruby>くなる。<br>*(Là linh kiện đặt làm riêng theo yêu cầu. Hình dạng đặc thù nên đắt.)* |
| Thái | なるほど。だから<ruby>標準品<rt>ひょうじゅんひん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>、ということですね。<br>*(Ra vậy. Vì thế nên ưu tiên linh kiện chuẩn, đúng không ạ?)* |
| Kawakami | そのとおり。<ruby>標準品<rt>ひょうじゅんひん</rt></ruby><ruby>8割<rt>はちわり</rt></ruby>、オーダー<ruby>品<rt>ひん</rt></ruby><ruby>2割<rt>にわり</rt></ruby>、これが<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>方針<rt>ほうしん</rt></ruby>だよ。<br>*(Đúng vậy. Linh kiện chuẩn 80%, đặt riêng 20% — đó là phương châm của công ty mình.)* |
| Thái | <ruby>8割<rt>はちわり</rt></ruby>と<ruby>2割<rt>にわり</rt></ruby>ですね。<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(80% và 20% ạ. Em đã nhớ.)* |

---

## Tình huống 4 — Bàn thiết kế · 11:00, hỏi lại khi chưa hiểu thuật ngữ kỹ thuật

| Vai | Lời thoại |
|---|---|
| Kawakami | カタログを<ruby>開<rt>ひら</rt></ruby>いて<ruby>見<rt>み</rt></ruby>てみよう。ここ、<ruby>309<rt>さんびゃくきゅう</rt></ruby>ページ。これが「<ruby>位置決<rt>いちぎ</rt></ruby>めピン」。<br>*(Mở catalog ra xem nào. Đây, trang 309. Cái này là "chốt định vị".)* |
| Thái | （ページを<ruby>見<rt>み</rt></ruby>ながら）<ruby>直径<rt>ちょっけい</rt></ruby><ruby>5<rt>ご</rt></ruby>ミリから<ruby>30<rt>さんじゅう</rt></ruby>ミリまで、いろいろなサイズがありますね。<br>*(Vừa xem trang vừa nói. Đường kính từ 5mm tới 30mm, nhiều kích cỡ thật.)* |
| Kawakami | そう。「<ruby>公差<rt>こうさ</rt></ruby>」も<ruby>確<rt>たし</rt></ruby>かめて。<ruby>等級<rt>とうきゅう</rt></ruby>はh6、h7、h8がある。<br>*(Đúng. Xem cả "dung sai" nữa. Cấp có h6, h7, h8.)* |
| Thái | すみません、「<ruby>公差<rt>こうさ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "kousa" nghĩa là gì ạ?)* |
| Kawakami | <ruby>寸法<rt>すんぽう</rt></ruby>の<ruby>許<rt>ゆる</rt></ruby>される<ruby>誤差<rt>ごさ</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>のことだ。<ruby>例<rt>たと</rt></ruby>えばh6は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>厳<rt>きび</rt></ruby>しい、h8は<ruby>緩<rt>ゆる</rt></ruby>めだ。<br>*(Là phạm vi sai số cho phép của kích thước. Ví dụ h6 rất nghiêm ngặt, h8 lỏng hơn.)* |
| Thái | h6が<ruby>一番<rt>いちばん</rt></ruby><ruby>厳<rt>きび</rt></ruby>しいということですね。<ruby>金型<rt>かながた</rt></ruby>のガイドピンはどの<ruby>等級<rt>とうきゅう</rt></ruby>を<ruby>使<rt>つか</rt></ruby>いますか？<br>*(Tức là h6 nghiêm ngặt nhất. Chốt dẫn hướng khuôn dùng cấp nào ạ?)* |
| Kawakami | だいたいh6だ。<ruby>精度<rt>せいど</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>だからね。<br>*(Thường là h6. Vì độ chính xác là sống còn mà.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。メモしておきます。<br>*(Em hiểu rồi. Em sẽ ghi lại.)* |

---

## Tình huống 5 — Bàn thiết kế · 14:00, Kawakami giới thiệu sàn meviy

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>午後<rt>ごご</rt></ruby>は「meviy」というサイトを<ruby>紹介<rt>しょうかい</rt></ruby>するよ。<ruby>金型業界<rt>かながたぎょうかい</rt></ruby>のEC<ruby>1位<rt>いちい</rt></ruby>だ。<br>*(Chiều nay tôi giới thiệu trang web "meviy". Là số 1 ngành khuôn về thương mại điện tử.)* |
| Thái | meviy…<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きます。<br>*(meviy… em mới nghe lần đầu ạ.)* |
| Kawakami | ミスミがやっているサイトだ。<ruby>3D<rt>スリーディー</rt></ruby>データをアップロードすると、<ruby>自動<rt>じどう</rt></ruby>で<ruby>見積<rt>みつ</rt></ruby>もりが<ruby>出<rt>で</rt></ruby>る。しかも<ruby>最短<rt>さいたん</rt></ruby><ruby>1日<rt>いちにち</rt></ruby><ruby>納期<rt>のうき</rt></ruby>だ。<br>*(Là trang do Misumi vận hành. Tải dữ liệu 3D lên, hệ thống tự báo giá. Mà giao hàng nhanh nhất chỉ trong 1 ngày.)* |
| Thái | え、<ruby>1日<rt>いちにち</rt></ruby><ruby>納期<rt>のうき</rt></ruby>ですか？<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>速<rt>はや</rt></ruby>いですね。<br>*(Ơ, giao trong 1 ngày ạ? Nhanh thật.)* |
| Kawakami | （パソコンの<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せる）<ruby>例<rt>れい</rt></ruby>えば、このプレートをアップロード…<ruby>5秒<rt>ごびょう</rt></ruby>で<ruby>見積<rt>みつ</rt></ruby>もりが<ruby>出<rt>で</rt></ruby>たよ。<br>*(Cho xem màn hình máy tính. Ví dụ, upload tấm này lên… 5 giây ra báo giá rồi đây.)* |
| Thái | すごい！すみません、「<ruby>自動見積<rt>じどうみつ</rt></ruby>もり」というのは<ruby>人<rt>ひと</rt></ruby>が<ruby>計算<rt>けいさん</rt></ruby>しないということですか？<br>*(Tuyệt vời! Xin lỗi, "tự động báo giá" tức là không có người tính phải không ạ?)* |
| Kawakami | そう。AIが<ruby>形状<rt>けいじょう</rt></ruby>を<ruby>解析<rt>かいせき</rt></ruby>して、<ruby>加工時間<rt>かこうじかん</rt></ruby>と<ruby>材料費<rt>ざいりょうひ</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>する。<ruby>人<rt>ひと</rt></ruby>はチェックだけ。<br>*(Đúng. AI phân tích hình dạng, tính thời gian gia công và phí vật liệu. Người chỉ kiểm tra.)* |
| Thái | <ruby>金型業界<rt>かながたぎょうかい</rt></ruby>のAmazonということですね。<br>*(Tức là Amazon của ngành khuôn ạ.)* |
| Kawakami | （<ruby>笑<rt>わら</rt></ruby>う）うまい<ruby>例<rt>たと</rt></ruby>えだね。そのとおりだ。<br>*(Cười. Ví von hay nhỉ. Đúng như vậy.)* |

---

## Tình huống 6 — Bàn thiết kế · 14:30, Kawakami chỉ thao tác đặt hàng trên meviy (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Kawakami | <ruby>実際<rt>じっさい</rt></ruby>に<ruby>注文<rt>ちゅうもん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>見<rt>み</rt></ruby>せるよ。よく<ruby>見<rt>み</rt></ruby>てね。<br>*(Tôi cho xem quy trình đặt hàng thực tế nhé. Quan sát kỹ.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh ạ.)* |
| Kawakami | まず、SolidWorksで<ruby>作<rt>つく</rt></ruby>った<ruby>3D<rt>スリーディー</rt></ruby>データをSTEP<ruby>形式<rt>けいしき</rt></ruby>で<ruby>保存<rt>ほぞん</rt></ruby>する。<br>*(Đầu tiên, lưu dữ liệu 3D vẽ trong SolidWorks ra định dạng STEP.)* |
| Thái | はい、STEP<ruby>形式<rt>けいしき</rt></ruby>ですね。<br>*(Vâng, định dạng STEP ạ.)* |
| Kawakami | <ruby>次<rt>つぎ</rt></ruby>に、meviyのサイトでアップロード。<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぶ — SKD11、SKD61、S50Cとか。<br>*(Tiếp theo, upload lên meviy. Chọn vật liệu — SKD11, SKD61, S50C v.v.)* |
| Thái | <ruby>材料<rt>ざいりょう</rt></ruby>の<ruby>種類<rt>しゅるい</rt></ruby>がたくさんありますね。どれを<ruby>選<rt>えら</rt></ruby>べばいいですか？<br>*(Có nhiều loại vật liệu nhỉ. Em nên chọn cái nào?)* |
| Kawakami | <ruby>用途<rt>ようと</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>う。<ruby>金型<rt>かながた</rt></ruby>のキャビコアならSKD11、ガイドプレートならS50Cが<ruby>多<rt>おお</rt></ruby>い。<br>*(Tuỳ mục đích. Cavity-core khuôn thì SKD11, tấm dẫn hướng thì S50C nhiều nhất.)* |
| Thái | <ruby>用途<rt>ようと</rt></ruby>によって<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>変<rt>か</rt></ruby>えるということですね。<br>*(Tức là thay vật liệu theo mục đích sử dụng ạ.)* |
| Kawakami | そうだ。<ruby>表面処理<rt>ひょうめんしょり</rt></ruby>と<ruby>熱処理<rt>ねつしょり</rt></ruby>もここでチェックする。<br>*(Đúng. Xử lý bề mặt và xử lý nhiệt cũng check ở đây luôn.)* |
| Thái | <ruby>熱処理<rt>ねつしょり</rt></ruby>…とは？<br>*(Xử lý nhiệt… là gì ạ?)* |
| Kawakami | <ruby>鉄<rt>てつ</rt></ruby>を<ruby>硬<rt>かた</rt></ruby>くする<ruby>処理<rt>しょり</rt></ruby>だ。<ruby>焼<rt>や</rt></ruby>き<ruby>入<rt>い</rt></ruby>れと<ruby>焼<rt>や</rt></ruby>き<ruby>戻<rt>もど</rt></ruby>しの<ruby>二段階<rt>にだんかい</rt></ruby>でやる。<br>*(Là xử lý làm cứng thép. Làm hai bước: tôi cứng và ram.)* |
| Thái | はい、<ruby>焼<rt>や</rt></ruby>き<ruby>入<rt>い</rt></ruby>れ・<ruby>焼<rt>や</rt></ruby>き<ruby>戻<rt>もど</rt></ruby>し、メモしておきます。<br>*(Vâng, tôi cứng và ram, em ghi lại ạ.)* |

---

## Tình huống 7 — Phòng nghỉ · 12:30, đồng nghiệp Sakurai cho lời khuyên học catalog

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。ミスミのカタログを<ruby>勉強<rt>べんきょう</rt></ruby>してるんだって？<br>*(Thái, vất vả rồi. Nghe nói em đang học catalog Misumi à?)* |
| Thái | はい、<ruby>桜井<rt>さくらい</rt></ruby>さん。<ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらっています。でも<ruby>2000<rt>にせん</rt></ruby>ページは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(Vâng, anh Sakurai. Em đang được anh Kawakami chỉ. Nhưng 2000 trang thì vất vả thật.)* |
| Sakurai | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>1<rt>いっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>あれば<ruby>主要<rt>しゅよう</rt></ruby>カテゴリーは<ruby>覚<rt>おぼ</rt></ruby>えられるよ。<br>*(Yên tâm, có 1 tháng là nhớ được các nhóm chính.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか？どうやって<ruby>勉強<rt>べんきょう</rt></ruby>すればいいですか？<br>*(Thật ạ? Học thế nào thì hiệu quả?)* |
| Sakurai | <ruby>俺<rt>おれ</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるよ。まず<ruby>毎日<rt>まいにち</rt></ruby>カバンに<ruby>入<rt>い</rt></ruby>れて<ruby>持<rt>も</rt></ruby>ち<ruby>歩<rt>ある</rt></ruby>く。<ruby>電車<rt>でんしゃ</rt></ruby>でも<ruby>休<rt>やす</rt></ruby>みでも<ruby>開<rt>ひら</rt></ruby>く。<br>*(Để anh chỉ cách của anh. Đầu tiên, hằng ngày cho vào cặp xách đi. Đi tàu hay nghỉ giải lao cũng mở ra xem.)* |
| Thái | <ruby>持<rt>も</rt></ruby>ち<ruby>歩<rt>ある</rt></ruby>く…<ruby>毎日<rt>まいにち</rt></ruby>ですか？<br>*(Vác theo… mỗi ngày ạ?)* |
| Sakurai | はい。それから、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>くたびに、まずカタログを<ruby>確認<rt>かくにん</rt></ruby>する<ruby>癖<rt>くせ</rt></ruby>をつける。<br>*(Vâng. Sau đó, mỗi lần vẽ bản vẽ, tạo thói quen tra catalog trước.)* |
| Thái | なるほど、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずカタログ、ということですね。<br>*(Ra vậy, vẽ bản vẽ phải tra catalog trước, đúng không ạ?)* |
| Sakurai | そう。<ruby>3<rt>さん</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>もすれば、<ruby>頭<rt>あたま</rt></ruby>の<ruby>中<rt>なか</rt></ruby>にカタログが<ruby>入<rt>はい</rt></ruby>る。<br>*(Đúng. Tầm 3 tháng là cả cuốn catalog vào đầu.)* |
| Thái | はい、<ruby>桜井<rt>さくらい</rt></ruby>さんのやり<ruby>方<rt>かた</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>します。ありがとうございます。<br>*(Vâng, em sẽ bắt chước cách của anh Sakurai. Cảm ơn anh.)* |

---

## Tình huống 8 — Bàn thiết kế · 15:30, Thái thử báo cáo với Kawakami về điều đã học

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>今日<rt>きょう</rt></ruby><ruby>学<rt>まな</rt></ruby>んだことを<ruby>報告<rt>ほうこく</rt></ruby>してもいいですか？<br>*(Anh Kawakami, em báo cáo những gì học được hôm nay được không ạ?)* |
| Kawakami | おお、<ruby>報連相<rt>ほうれんそう</rt></ruby>だね。<ruby>聞<rt>き</rt></ruby>かせて。<br>*(Ồ, "報連相" đấy. Nói nghe nào.)* |
| Thái | はい。<ruby>主要<rt>しゅよう</rt></ruby>カテゴリーは<ruby>5<rt>いつ</rt></ruby>つ、<ruby>標準部品<rt>ひょうじゅんぶひん</rt></ruby>・<ruby>位置決<rt>いちぎ</rt></ruby>めピン・<ruby>突<rt>つ</rt></ruby>き<ruby>出<rt>だ</rt></ruby>しピン・<ruby>水<rt>みず</rt></ruby>プラグ・ばね、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng. 5 nhóm chính là: linh kiện chuẩn, chốt định vị, chốt đẩy, đầu nối nước, lò xo — em đã nhớ.)* |
| Kawakami | いいね。<br>*(Tốt.)* |
| Thái | それから、<ruby>標準品<rt>ひょうじゅんひん</rt></ruby><ruby>8割<rt>はちわり</rt></ruby>、オーダー<ruby>品<rt>ひん</rt></ruby><ruby>2割<rt>にわり</rt></ruby>、<ruby>原価<rt>げんか</rt></ruby>を<ruby>20<rt>にじゅっ</rt></ruby>パーセントカットできる、ということですね。<br>*(Sau đó, linh kiện chuẩn 80%, đặt riêng 20%, có thể cắt 20% giá thành, đúng không ạ?)* |
| Kawakami | そのとおり。よく<ruby>聞<rt>き</rt></ruby>いていたね。<br>*(Đúng vậy. Em nghe kỹ đấy.)* |
| Thái | meviyは<ruby>3D<rt>スリーディー</rt></ruby>データを<ruby>上<rt>あ</rt></ruby>げると<ruby>自動見積<rt>じどうみつ</rt></ruby>もり、<ruby>1日<rt>いちにち</rt></ruby><ruby>納期<rt>のうき</rt></ruby>、ということを<ruby>学<rt>まな</rt></ruby>びました。<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>は「<ruby>公差<rt>こうさ</rt></ruby>」「<ruby>焼<rt>や</rt></ruby>き<ruby>入<rt>い</rt></ruby>れ」「オーダー<ruby>品<rt>ひん</rt></ruby>」でしたが、<ruby>意味<rt>いみ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(meviy thì upload dữ liệu 3D là tự báo giá, giao trong 1 ngày, em đã học. Từ chưa hiểu là "kousa", "yaki-ire", "order-hin" nhưng đã được giảng nghĩa.)* |
| Kawakami | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>報告<rt>ほうこく</rt></ruby>だ。<ruby>分<rt>わ</rt></ruby>からないことを<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>く、これが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だよ。<br>*(Báo cáo tuyệt vời. Cái không hiểu thì nhất định phải hỏi — đây là điều quan trọng nhất.)* |
| Thái | はい、これからも<ruby>分<rt>わ</rt></ruby>からないことは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>きます。<br>*(Vâng, từ nay không hiểu cái gì em nhất định sẽ hỏi.)* |

---

## Tình huống 9 — Phòng 201 ký túc · 21:00, gọi điện về VN cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & ôn lại từ vựng JP qua hội thoại với người yêu ở quê.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, tối nay làm gì đấy? Em mới đi làm về. |
| Thái | (tiếng Việt) Anh vừa tắm xong. Hôm nay anh học một ngày mệt nhoài em ạ. Anh Kawakami dạy anh cuốn catalog Misumi, dày 2000 trang. |
| Mai | (tiếng Việt) Ơ, 2000 trang? Anh học cả đời cũng chưa hết. |
| Thái | (tiếng Việt) Anh Sakurai bảo một tháng là nhớ được nhóm chính. Có 5 nhóm: linh kiện chuẩn, chốt định vị, chốt đẩy, đầu nối nước, lò xo. Anh chép sổ rồi. |
| Mai | (tiếng Việt) Anh kể em nghe điều gì thú vị nhất hôm nay đi. |
| Thái | (tiếng Việt) Có cái sàn tên meviy — kiểu như Amazon của ngành khuôn ấy. Tải file 3D lên, máy tự báo giá, một ngày giao hàng. Lúc nãy anh ví Amazon ngành khuôn, anh Kawakami cười. |
| Mai | (tiếng Việt) Hay đấy. Mà sao mặt anh hớn hở thế? |
| Thái | (tiếng Việt) Hôm nay anh báo cáo lại bằng tiếng Nhật cả ngày học, anh Kawakami khen "báo cáo tuyệt vời". 報連相 ba năm rồi mới được khen đấy. |
| Mai | (tiếng Việt) Tự hào về anh. Mà anh nhớ ngủ sớm, mai còn đi làm. |
| Thái | (tiếng Việt) Ừ, anh viết nhật ký một tí rồi đi ngủ. Mai ngủ ngon nhé. |

---

## Tình huống 10 — Phòng 201 · 22:00, Thái viết nhật ký kỹ thuật

| Vai | Lời thoại |
|---|---|
| Thái | (VN, nhật ký) 12/7/2024. Đào sâu catalog Misumi với anh Kawakami. |
| Thái | (VN, nhật ký) 5 nhóm chính: 標準部品・位置決めピン・突き出しピン・水プラグ・ばね. |
| Thái | (VN, nhật ký) Triết lý 8-2: 標準品 80%, オーダー品 20%, cắt 20% giá thành. |
| Thái | (VN, nhật ký) Từ mới hỏi được hôm nay: 公差 (h6/h7/h8), 焼き入れ・焼き戻し, 自動見積もり. |
| Thái | (VN, nhật ký) meviy = Amazon của ngành khuôn. STEP file → AI báo giá 5 giây → 1 ngày giao hàng. |
| Thái | (VN, nhật ký) Anh Sakurai dặn: vác catalog mỗi ngày, vẽ bản vẽ phải tra catalog trước. 3 tháng cả cuốn vào đầu. |
| Thái | (VN, nhật ký) Hôm nay được khen "báo cáo tuyệt vời". 3 năm rồi, 報連相 đã thành phản xạ. |

---

## Đọng lại chương 3

Thái trải qua một ngày học chuyên sâu với đàn anh thiết kế — không còn là người mới ngơ ngác mà đã đủ vốn JP để vừa nghe, vừa hỏi lại, vừa tự báo cáo lại điều đã học. Hôm nay học được: **5 カテゴリー linh kiện chuẩn Misumi** (標準部品・位置決めピン・突き出しピン・水プラグ・ばね), **triết lý 8-2 giảm chi phí** (標準品80%・オーダー品20% → 原価20%カット), **mẫu câu hỏi lại lễ phép** (〜というのは？・〜とは？), **mẫu câu xác nhận thông tin chuyên ngành** (〜ということですね), **mẫu câu báo cáo cuối ngày** (今日学んだことを報告してもいいですか). Cùng với đó là khái niệm kỹ thuật **公差** (dung sai h6/h7/h8), **焼き入れ・焼き戻し** (xử lý nhiệt), và **meviy** — sàn TMĐT 3D ngành khuôn, "Amazon của ngành khuôn". Đàn anh Sakurai trao cho phương pháp "vác catalog mỗi ngày, tra trước khi vẽ" — bí quyết 3 tháng nhồi 2000 trang vào đầu.

> Từ vựng & mẫu câu chương này: ミスミ・meviy・カタログ・標準部品・位置決めピン・ガイドピン・突き出しピン・エジェクタピン・水プラグ・ばね・原価・標準品・オーダー品・公差・h6・焼き入れ・焼き戻し・自動見積もり・納期・3Dデータ・STEP形式・SKD11・S50C・表面処理・熱処理・〜というのは・〜とは・〜ということですね・報告してもいいですか・分からないことは必ず聞く

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本気 | ほんき | BẢN KHÍ | Nghiêm túc, thật lòng |
| 分厚い | ぶあつい | PHÂN HẬU | Dày |
| 一人前 | いちにんまえ | NHẤT NHÂN TIỀN | Thợ chính, lành nghề |
| 標準部品 | ひょうじゅんぶひん | TIÊU CHUẨN BỘ PHẨM | Linh kiện chuẩn |
| 最大手 | さいおおて | TỐI ĐẠI THỦ | Hãng lớn nhất |
| 業界 | ぎょうかい | NGHIỆP GIỚI | Ngành nghề |
| 位置決め | いちぎめ | VỊ TRÍ QUYẾT | Định vị |
| 正確 | せいかく | CHÍNH XÁC | Chính xác |
| 役割 | やくわり | DỊCH CÁT | Vai trò |
| 各種 | かくしゅ | CÁC CHỦNG | Các loại |
| 原価 | げんか | NGUYÊN GIÁ | Giá thành |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 特別 | とくべつ | ĐẶC BIỆT | Đặc biệt |
| 注文 | ちゅうもん | CHÚ VĂN | Đặt hàng |
| 特殊 | とくしゅ | ĐẶC THÙ | Đặc thù |
| 優先 | ゆうせん | ƯU TIÊN | Ưu tiên |
| 方針 | ほうしん | PHƯƠNG CHÂM | Phương châm |
| 直径 | ちょっけい | TRỰC KÍNH | Đường kính |
| 等級 | とうきゅう | ĐẲNG CẤP | Cấp, hạng |
| 許す | ゆるす | HỨA | Cho phép |
| 誤差 | ごさ | NGỘ SAI | Sai số |
| 範囲 | はんい | PHẠM VI | Phạm vi |
| 紹介 | しょうかい | THIỆU GIỚI | Giới thiệu |
| 見積もり | みつもり | KIẾN TÍCH | Báo giá, ước lượng |
| 最短 | さいたん | TỐI ĐOẢN | Nhanh nhất |
| 解析 | かいせき | GIẢI TÍCH | Phân tích |
| 加工時間 | かこうじかん | GIA CÔNG THỜI GIAN | Thời gian gia công |
| 材料費 | ざいりょうひ | TÀI LIỆU PHÍ | Phí vật liệu |
| 形式 | けいしき | HÌNH THỨC | Định dạng |
| 材料 | ざいりょう | TÀI LIỆU | Vật liệu |
| 用途 | ようと | DỤNG ĐỒ | Mục đích sử dụng |
| 表面処理 | ひょうめんしょり | BIỂU DIỆN XỬ LÝ | Xử lý bề mặt |
| 熱処理 | ねつしょり | NHIỆT XỬ LÝ | Xử lý nhiệt |
| 焼き入れ | やきいれ | THIÊU NHẬP | Tôi cứng |
| 焼き戻し | やきもどし | THIÊU PHẢN | Ram |
| 二段階 | にだんかい | NHỊ ĐOẠN GIAI | Hai bước |
| 持ち歩く | もちあるく | TRÌ HÀNH | Mang theo |
| 癖 | くせ | TÍCH | Thói quen |
| 真似 | まね | CHÂN TỰ | Bắt chước |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000004, 800000016, NULL, 'markdown_book', 'T4. Lần đầu tự thiết kế linh kiện — kênh nước (初パーツ設計)', '# Sách kỹ sư khuôn đúc · T4. Lần đầu tự thiết kế linh kiện — kênh nước (初パーツ設計)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) lần đầu được giao một module thiết kế độc lập tại 株式会社みなみ精密金型 — bố trí lại 水路 (kênh nước làm mát) để khắc phục 反り (cong vênh) trên khuôn cũ. Học các mẫu hội thoại tiếng Nhật kỹ sư thiết kế năm 3: nhận task từ 上司 và xác nhận phạm vi (任せる・スコープ確認), báo cáo kết quả 解析 (Moldex3D) bằng số liệu, đề xuất phương án 改善 cho 先輩, hỏi lại lễ phép khi chưa rõ tiêu chuẩn (〜の基準は?), quan sát 先輩 sửa khuôn ở hiện trường, và 報告 thành quả với 工場長 sau khi トライ thành công.

---

## Bối cảnh

Tháng 8 năm 2024. Thái đã sang Nhật 2 năm 3 tháng, hiện là 設計補助 năm thứ 3 trong tổ thiết kế khuôn của Kawakami. Trình độ tiếng Nhật N3, đang ôn N2 cho kỳ thi tháng 12. Sau bài học cong vênh ở khuôn năm thứ 2 (T5 sách 15), Kawakami quyết định giao Thái tự cầm thiết kế 水路 cho một khuôn nội thất Toyota đang bị 反り 0.8 mm khi トライ. Chương này tập trung các mẫu câu giao tiếp khi **nhận một module thiết kế độc lập đầu tiên**: confirm phạm vi với cấp trên, báo cáo kết quả mô phỏng, hỏi lại tiêu chuẩn, và 報連相 với 工場長 sau khi トライ.

---

## Tình huống 1 — Bàn thiết kế tổ Kawakami · 9:00, nhận task và xác nhận phạm vi

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、ちょっといい？<ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>仕事<rt>しごと</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたいんだ。<br>*(Thái, rảnh chút không? Từ hôm nay anh muốn giao em một việc mới.)* |
| Thái | はい、<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Vâng, việc gì vậy ạ?)* |
| Kawakami | トヨタ<ruby>車体<rt>しゃたい</rt></ruby>さんの<ruby>内装部品<rt>ないそうぶひん</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>、<ruby>水路設計<rt>すいろせっけい</rt></ruby>をタイ<ruby>君<rt>くん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せるよ。<br>*(Khuôn linh kiện nội thất của Toyota Shatai, phần thiết kế kênh nước anh giao em làm.)* |
| Thái | え！<ruby>本当<rt>ほんとう</rt></ruby>ですか？<ruby>私<rt>わたし</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でですか？<br>*(Ơ! Thật ạ? Một mình em làm ạ?)* |
| Kawakami | <ruby>水路<rt>すいろ</rt></ruby>の<ruby>配置<rt>はいち</rt></ruby>だけだよ。キャビコアの<ruby>形状<rt>けいじょう</rt></ruby>は<ruby>変<rt>か</rt></ruby>えなくていい。<ruby>君<rt>きみ</rt></ruby>は<ruby>去年<rt>きょねん</rt></ruby>のトライで<ruby>反<rt>そ</rt></ruby>りを<ruby>経験<rt>けいけん</rt></ruby>したからね。<br>*(Chỉ phần bố trí kênh nước thôi. Hình dạng cavity-core không cần đổi. Năm ngoái em đã trải qua sự cố cong vênh khi thử khuôn rồi mà.)* |
| Thái | はい、<ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>左側<rt>ひだりがわ</rt></ruby>の<ruby>冷却<rt>れいきゃく</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>くて、<ruby>反<rt>そ</rt></ruby>りが<ruby>出<rt>で</rt></ruby>た<ruby>件<rt>けん</rt></ruby>ですね。<br>*(Vâng, em vẫn nhớ. Là vụ bên trái nguội chậm nên bị cong vênh đúng không ạ.)* |
| Kawakami | そう。<ruby>水路<rt>すいろ</rt></ruby>を<ruby>適切<rt>てきせつ</rt></ruby>に<ruby>配置<rt>はいち</rt></ruby>すれば<ruby>反<rt>そ</rt></ruby>りを<ruby>避<rt>さ</rt></ruby>けられる。まずMoldex3Dで<ruby>現状<rt>げんじょう</rt></ruby>を<ruby>解析<rt>かいせき</rt></ruby>してから<ruby>改善案<rt>かいぜんあん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してほしい。<br>*(Đúng. Bố trí kênh nước hợp lý sẽ tránh được cong vênh. Em chạy Moldex3D phân tích hiện trạng trước, rồi đưa ra phương án cải thiện.)* |
| Thái | <ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>納期<rt>のうき</rt></ruby>はいつまでですか？<br>*(Em xin xác nhận một chút. Hạn nộp đến khi nào ạ?)* |
| Kawakami | <ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>までに<ruby>解析<rt>かいせき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>と<ruby>改善案<rt>かいぜんあん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてくれる？<br>*(Đến thứ sáu tuần sau cho anh xem kết quả phân tích và phương án cải thiện được không?)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ cố gắng.)* |

---

## Tình huống 2 — Bàn Thái · 10:00, hỏi lại tiêu chuẩn cong vênh

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、すみません、<ruby>始<rt>はじ</rt></ruby>める<ruby>前<rt>まえ</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つお<ruby>聞<rt>き</rt></ruby>きしてもいいですか？<br>*(Anh Kawakami, xin lỗi, trước khi bắt đầu em hỏi một câu được không ạ?)* |
| Kawakami | どうぞ。<br>*(Hỏi đi.)* |
| Thái | <ruby>反<rt>そ</rt></ruby>りの<ruby>基準<rt>きじゅん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ミリですか？トヨタ<ruby>車体<rt>しゃたい</rt></ruby>さんの<ruby>規格<rt>きかく</rt></ruby>を<ruby>知<rt>し</rt></ruby>っておきたいです。<br>*(Tiêu chuẩn cong vênh là bao nhiêu mm ạ? Em muốn biết quy cách của bên Toyota Shatai.)* |
| Kawakami | いい<ruby>質問<rt>しつもん</rt></ruby>だね。<ruby>図面<rt>ずめん</rt></ruby>の<ruby>公差<rt>こうさ</rt></ruby>は<ruby>0.2<rt>れいてんに</rt></ruby>mm<ruby>以下<rt>いか</rt></ruby>。でも<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>内部<rt>ないぶ</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は<ruby>0.15<rt>れいてんいちご</rt></ruby>mm<ruby>以下<rt>いか</rt></ruby>だ。<br>*(Câu hỏi tốt đấy. Dung sai trên bản vẽ là dưới 0.2 mm. Nhưng mục tiêu nội bộ công ty mình là dưới 0.15 mm.)* |
| Thái | すみません、「<ruby>公差<rt>こうさ</rt></ruby>」というのは…？<br>*(Xin lỗi, "kousa" nghĩa là gì ạ?)* |
| Kawakami | <ruby>許容<rt>きょよう</rt></ruby>される<ruby>誤差<rt>ごさ</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>のことだよ。これ<ruby>以上<rt>いじょう</rt></ruby><ruby>反<rt>そ</rt></ruby>ったらNGになる。<br>*(Là phạm vi sai số được cho phép. Cong vênh vượt mức này là NG.)* |
| Thái | なるほど、<ruby>0.2<rt>れいてんに</rt></ruby>mmを<ruby>超<rt>こ</rt></ruby>えるとNG、<ruby>0.15<rt>れいてんいちご</rt></ruby>mm<ruby>以下<rt>いか</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すということですね。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra vậy, vượt 0.2 mm là NG, mục tiêu phấn đấu là dưới 0.15 mm. Em rõ rồi ạ.)* |
| Kawakami | そう。<ruby>聞<rt>き</rt></ruby>かないで<ruby>始<rt>はじ</rt></ruby>めるより、<ruby>先<rt>さき</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>するのがいい<ruby>習慣<rt>しゅうかん</rt></ruby>だよ。<br>*(Đúng. Xác nhận trước còn hơn là bắt tay vào làm mà không hỏi. Đó là thói quen tốt.)* |

---

## Tình huống 3 — Bàn Thái · 11:00, chạy Moldex3D và báo cáo hiện trạng

| Vai | Lời thoại |
|---|---|
| Thái | （シミュレーションを<ruby>実行<rt>じっこう</rt></ruby>し、<ruby>結果<rt>けっか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）<br>*(Chạy mô phỏng và kiểm tra kết quả.)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>解析<rt>かいせき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>報告<rt>ほうこく</rt></ruby>させてください。<br>*(Anh Kawakami, đã có kết quả phân tích. Cho em báo cáo ạ.)* |
| Kawakami | お、<ruby>早<rt>はや</rt></ruby>いね。<ruby>見<rt>み</rt></ruby>せて。<br>*(Ồ, nhanh đấy. Cho xem nào.)* |
| Thái | <ruby>現状<rt>げんじょう</rt></ruby>の<ruby>水路<rt>すいろ</rt></ruby><ruby>配置<rt>はいち</rt></ruby>では、<ruby>左側<rt>ひだりがわ</rt></ruby>の<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>が<ruby>右側<rt>みぎがわ</rt></ruby>より<ruby>3<rt>さん</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>長<rt>なが</rt></ruby>いです。<br>*(Với bố trí kênh nước hiện tại, thời gian làm nguội bên trái dài hơn bên phải 3 giây.)* |
| Thái | <ruby>結果<rt>けっか</rt></ruby>として<ruby>反<rt>そ</rt></ruby>りが<ruby>0.8<rt>れいてんはち</rt></ruby>mm<ruby>発生<rt>はっせい</rt></ruby>しています。<ruby>基準<rt>きじゅん</rt></ruby>の<ruby>0.2<rt>れいてんに</rt></ruby>mmを<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>超<rt>こ</rt></ruby>えています。<br>*(Kết quả là phát sinh cong vênh 0.8 mm. Vượt xa tiêu chuẩn 0.2 mm.)* |
| Kawakami | やっぱりそうだったか。<ruby>原因<rt>げんいん</rt></ruby>はどこにあると<ruby>思<rt>おも</rt></ruby>う？<br>*(Quả nhiên là vậy. Em nghĩ nguyên nhân ở đâu?)* |
| Thái | <ruby>左側<rt>ひだりがわ</rt></ruby>に<ruby>水路<rt>すいろ</rt></ruby>が<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>しかないので、<ruby>熱<rt>ねつ</rt></ruby>が<ruby>抜<rt>ぬ</rt></ruby>けにくいと<ruby>思<rt>おも</rt></ruby>います。<ruby>右側<rt>みぎがわ</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>あります。<br>*(Vì bên trái chỉ có 1 kênh nước nên nhiệt khó thoát ạ. Bên phải có 2 kênh.)* |
| Kawakami | その<ruby>通<rt>とお</rt></ruby>り。じゃあ<ruby>改善案<rt>かいぜんあん</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えてみて。<br>*(Đúng vậy. Vậy thử nghĩ phương án cải thiện đi.)* |

---

## Tình huống 4 — Bàn Sakurai · 13:00, quan sát đàn anh hướng dẫn cách bố trí kênh nước

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いただけますか？<ruby>水路<rt>すいろ</rt></ruby><ruby>配置<rt>はいち</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えていただきたいんです。<br>*(Anh Sakurai, anh cho em xin chút thời gian được không ạ? Em muốn được anh chỉ cho bí quyết bố trí kênh nước.)* |
| Sakurai | いいよ。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>せて。<br>*(Được. Cho xem bản vẽ đi.)* |
| Thái | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<ruby>左側<rt>ひだりがわ</rt></ruby>に<ruby>水路<rt>すいろ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Đưa bản vẽ. Em định thêm kênh nước phía trái ạ.)* |
| Sakurai | いいね。<ruby>三<rt>みっ</rt></ruby>つのポイントを<ruby>覚<rt>おぼ</rt></ruby>えて。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>水路<rt>すいろ</rt></ruby>はキャビ<ruby>面<rt>めん</rt></ruby>から<ruby>等距離<rt>とうきょり</rt></ruby>に<ruby>置<rt>お</rt></ruby>くこと。<br>*(Ổn đấy. Nhớ ba điểm. Một, kênh nước phải đặt cách đều mặt khuôn.)* |
| Thái | <ruby>等距離<rt>とうきょり</rt></ruby>ですね。メモします。<br>*(Cách đều ạ. Em ghi lại.)* |
| Sakurai | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>水路<rt>すいろ</rt></ruby><ruby>同士<rt>どうし</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は<ruby>直径<rt>ちょっけい</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>。<ruby>近<rt>ちか</rt></ruby>すぎると<ruby>強度<rt>きょうど</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる。<br>*(Hai, khoảng cách giữa các kênh nước bằng 3 đến 5 lần đường kính. Quá gần thì độ bền giảm.)* |
| Thái | すみません、「<ruby>強度<rt>きょうど</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる」というのは、<ruby>金型<rt>かながた</rt></ruby>が<ruby>割<rt>わ</rt></ruby>れやすくなるという<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(Xin lỗi, "độ bền giảm" có nghĩa là khuôn dễ nứt hơn phải không ạ?)* |
| Sakurai | そう、その<ruby>通<rt>とお</rt></ruby>り。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>水<rt>みず</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れの<ruby>方向<rt>ほうこう</rt></ruby>は<ruby>並列<rt>へいれつ</rt></ruby>ではなく、<ruby>左右<rt>さゆう</rt></ruby><ruby>交互<rt>こうご</rt></ruby>に。<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さくなる。<br>*(Đúng. Ba, hướng dòng nước không song song, mà chạy so le trái-phải. Chênh lệch nhiệt sẽ nhỏ đi.)* |
| Thái | <ruby>左右<rt>さゆう</rt></ruby><ruby>交互<rt>こうご</rt></ruby>ですね。ということは、<ruby>左<rt>ひだり</rt></ruby><ruby>入<rt>い</rt></ruby>り<ruby>右<rt>みぎ</rt></ruby><ruby>出<rt>で</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby><ruby>入<rt>い</rt></ruby>り<ruby>左<rt>ひだり</rt></ruby><ruby>出<rt>で</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>でいいですか？<br>*(So le trái-phải. Tức là trái vào - phải ra, rồi phải vào - trái ra theo thứ tự đó đúng không ạ?)* |
| Sakurai | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>覚<rt>おぼ</rt></ruby>えが<ruby>早<rt>はや</rt></ruby>いね。<br>*(Đúng. Em tiếp thu nhanh đấy.)* |
| Thái | ありがとうございます。<ruby>大変<rt>たいへん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em cảm ơn anh. Em học được rất nhiều ạ.)* |

---

## Tình huống 5 — Bàn Thái · 14:00, sửa thiết kế và mô phỏng lại

| Vai | Lời thoại |
|---|---|
| Thái | （CADで<ruby>左側<rt>ひだりがわ</rt></ruby>に<ruby>水路<rt>すいろ</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>し、<ruby>等距離<rt>とうきょり</rt></ruby>・<ruby>交互<rt>こうご</rt></ruby><ruby>配置<rt>はいち</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>する）<br>*(Trên CAD, thêm 1 kênh nước phía trái và sửa thành bố trí cách đều - so le.)* |
| Thái | （<ruby>再<rt>さい</rt></ruby>シミュレーションを<ruby>実行<rt>じっこう</rt></ruby>）<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちます…<br>*(Chạy mô phỏng lại. Đợi kết quả...)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>）<ruby>反<rt>そ</rt></ruby>り<ruby>0.15<rt>れいてんいちご</rt></ruby>mm！<ruby>基準<rt>きじゅん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしました！<br>*(Kiểm tra màn hình. Cong vênh 0.15 mm! Đạt tiêu chuẩn rồi!)* |
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Anh Kawakami, có kết quả rồi. Anh xem giúp em được không ạ?)* |
| Kawakami | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>覗<rt>のぞ</rt></ruby>き<ruby>込<rt>こ</rt></ruby>む）すごい！<ruby>水路<rt>すいろ</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>するだけで<ruby>5<rt>ご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>の<ruby>改善<rt>かいぜん</rt></ruby>か。<br>*(Ngó vào màn hình. Tuyệt! Chỉ thêm 1 kênh nước mà cải thiện gấp 5 lần à.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さんに<ruby>教<rt>おそ</rt></ruby>わった<ruby>三<rt>みっ</rt></ruby>つのポイントを<ruby>守<rt>まも</rt></ruby>りました。<ruby>等距離<rt>とうきょり</rt></ruby>・<ruby>間隔<rt>かんかく</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>倍<rt>ばい</rt></ruby>・<ruby>左右<rt>さゆう</rt></ruby><ruby>交互<rt>こうご</rt></ruby>です。<br>*(Em đã tuân theo ba điểm anh Sakurai dạy. Cách đều, khoảng cách 4 lần đường kính, và so le trái-phải.)* |
| Kawakami | きちんと<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>したのか。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だよ。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>桜井<rt>さくらい</rt></ruby>さんに<ruby>金型<rt>かながた</rt></ruby>の<ruby>修正<rt>しゅうせい</rt></ruby>とトライをお<ruby>願<rt>ねが</rt></ruby>いしよう。<br>*(Em đã bàn bạc đàng hoàng với đàn anh à. Đó là điều quan trọng nhất đấy. Tuần sau nhờ anh Sakurai sửa khuôn và thử khuôn nhé.)* |

---

## Tình huống 6 — Xưởng thử khuôn · 9/2024, xác nhận kết quả トライ với 桜井

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>金型<rt>かながた</rt></ruby>の<ruby>修正<rt>しゅうせい</rt></ruby>を<ruby>終<rt>お</rt></ruby>えて、トライ<ruby>機<rt>き</rt></ruby>に<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>ける）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby>できたよ。<br>*(Vừa sửa xong khuôn và lắp lên máy thử. Thái, sẵn sàng rồi.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Sakurai | （<ruby>射出<rt>しゃしゅつ</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>し、<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>号<rt>ごう</rt></ruby><ruby>品<rt>ひん</rt></ruby>です。<br>*(Bắt đầu phun và lấy sản phẩm ra. Sản phẩm số 1 đây.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り、<ruby>三<rt>さん</rt></ruby><ruby>次元<rt>じげん</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>機<rt>き</rt></ruby>で<ruby>測<rt>はか</rt></ruby>る）…<ruby>反<rt>そ</rt></ruby>り<ruby>0.12<rt>れいてんいちに</rt></ruby>mmです！シミュ<ruby>通<rt>とお</rt></ruby>りです！<br>*(Nhận sản phẩm và đo bằng máy đo 3D. Cong vênh 0.12 mm! Đúng như mô phỏng!)* |
| Sakurai | （<ruby>頷<rt>うなず</rt></ruby>く）<ruby>解析<rt>かいせき</rt></ruby>と<ruby>実機<rt>じっき</rt></ruby>がここまで<ruby>合<rt>あ</rt></ruby>うのは<ruby>珍<rt>めずら</rt></ruby>しい。よく<ruby>設計<rt>せっけい</rt></ruby>したね。<br>*(Gật đầu. Mô phỏng và máy thực khớp đến mức này là hiếm. Em thiết kế tốt đấy.)* |
| Thái | ありがとうございます。<ruby>桜井<rt>さくらい</rt></ruby>さんの<ruby>修正<rt>しゅうせい</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>だったおかげです。<br>*(Em cảm ơn anh. Là nhờ anh Sakurai sửa khuôn chính xác ạ.)* |
| Sakurai | お<ruby>互<rt>たが</rt></ruby>いさまだよ。<ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しておいで。<br>*(Là cùng nhau cả mà. Đi báo cáo với trưởng nhà máy đi.)* |

---

## Tình huống 7 — Văn phòng 工場長 · 9/2024 chiều, 報告 với Tanaka

| Vai | Lời thoại |
|---|---|
| Thái | （ドアをノック）<ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Gõ cửa. Em xin phép. Trưởng nhà máy Tanaka, bác có thời gian không ạ?)* |
| Tanaka | ああ、タイ<ruby>君<rt>くん</rt></ruby>。<ruby>入<rt>はい</rt></ruby>って。<br>*(À, Thái. Vào đi.)* |
| Thái | トヨタ<ruby>車体<rt>しゃたい</rt></ruby>さんの<ruby>内装部品<rt>ないそうぶひん</rt></ruby>の<ruby>水路<rt>すいろ</rt></ruby><ruby>改善<rt>かいぜん</rt></ruby>について、<ruby>報告<rt>ほうこく</rt></ruby>させてください。<br>*(Cho em báo cáo về việc cải thiện kênh nước linh kiện nội thất bên Toyota Shatai ạ.)* |
| Tanaka | どうぞ。<br>*(Mời.)* |
| Thái | <ruby>水路<rt>すいろ</rt></ruby>を<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>し、<ruby>等距離<rt>とうきょり</rt></ruby>と<ruby>左右<rt>さゆう</rt></ruby><ruby>交互<rt>こうご</rt></ruby><ruby>配置<rt>はいち</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>しました。<ruby>結果<rt>けっか</rt></ruby>、<ruby>反<rt>そ</rt></ruby>りが<ruby>0.8<rt>れいてんはち</rt></ruby>mmから<ruby>0.12<rt>れいてんいちに</rt></ruby>mmまで<ruby>下<rt>さ</rt></ruby>がりました。<ruby>基準<rt>きじゅん</rt></ruby>の<ruby>0.2<rt>れいてんに</rt></ruby>mmを<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>下回<rt>したまわ</rt></ruby>っています。<br>*(Em đã thêm 1 kênh nước và đổi sang bố trí cách đều, so le trái-phải. Kết quả, cong vênh giảm từ 0.8 mm xuống 0.12 mm. Thấp hơn tiêu chuẩn 0.2 mm rất nhiều ạ.)* |
| Tanaka | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>水路設計<rt>すいろせっけい</rt></ruby>は<ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>初<rt>はじ</rt></ruby>めての<ruby>独立<rt>どくりつ</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>で<ruby>5<rt>ご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>の<ruby>改善<rt>かいぜん</rt></ruby>は<ruby>立派<rt>りっぱ</rt></ruby>です。<br>*(Thái, thiết kế kênh nước hôm nay tuyệt vời. Lần đầu thiết kế độc lập mà cải thiện gấp 5 lần là rất giỏi.)* |
| Thái | ありがとうございます！<ruby>桜井<rt>さくらい</rt></ruby>さんと<ruby>川上<rt>かわかみ</rt></ruby>さんに<ruby>相談<rt>そうだん</rt></ruby>しながら<ruby>進<rt>すす</rt></ruby>めました。<br>*(Em cảm ơn bác ạ! Em vừa làm vừa bàn bạc với anh Sakurai và anh Kawakami.)* |
| Tanaka | それが<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>報連相<rt>ほうれんそう</rt></ruby>だよ。<ruby>来年<rt>らいねん</rt></ruby>からは<ruby>本体<rt>ほんたい</rt></ruby>の<ruby>形状<rt>けいじょう</rt></ruby>もタイ<ruby>君<rt>くん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せたいね。<br>*(Đó chính là 報連相 của công ty mình. Năm sau anh muốn giao cả phần hình dạng thân khuôn cho Thái nữa.)* |
| Thái | はい！<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng ạ! Em sẽ cố gắng!)* |

---

## Tình huống 8 — Phòng 201 · 22:00, gọi Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, qua video LINE) Mai ơi! |
| Mai | (tiếng Việt) Anh! Hôm nay có gì mà cười toe vậy? |
| Thái | (tiếng Việt) Em ơi, anh tự thiết kế một module độc lập đầu tiên rồi. Phần kênh nước trên khuôn Toyota — 水路設計 đấy. |
| Mai | (tiếng Việt) Ghê quá! Đúng là kỹ sư thiết kế thật rồi. Có chạy được không anh? |
| Thái | (tiếng Việt) Chạy đẹp luôn. Cong vênh từ 0.8 mm xuống 0.12 mm — giảm gần 5 lần. Mô phỏng trên Moldex3D và sản phẩm thật chỉ lệch 0.03 mm. |
| Mai | (tiếng Việt) Em không hiểu mấy con số đâu, nhưng nghe anh kể là biết oách rồi. Sao làm được hay vậy? |
| Thái | (tiếng Việt) Là nhờ năm thứ 2 anh từng bị cong vênh — bài học cũ. Lần này anh hỏi anh Sakurai ba nguyên tắc bố trí: cách đều mặt khuôn, khoảng cách 3-5 lần đường kính, dòng nước so le trái-phải. Áp vào là ăn ngay. |
| Mai | (tiếng Việt) Thấy chưa, sai một lần rồi nhớ cả đời. Còn vụ N2 thế nào? |
| Thái | (tiếng Việt) Còn 5 tháng nữa. Tối nay học xong gọi em. Bác Tanaka còn nói năm sau giao cả phần thân khuôn. Anh đang đi đúng lộ trình rồi. |
| Mai | (tiếng Việt) Em mừng cho anh. Cố lên anh nhé. Em yêu anh. |
| Thái | (tiếng Việt) Anh cũng yêu em. Ngủ ngon nha. |

---

## Đọng lại chương 4

Lần đầu được giao một module thiết kế độc lập, Thái học được nguyên mẫu giao tiếp của một kỹ sư trẻ năm 3: **xác nhận phạm vi khi nhận task** (〜を任せる → 私一人でですか?・納期はいつまで?), **hỏi lại tiêu chuẩn trước khi bắt tay** (反りの基準は何ミリですか?・公差というのは?), **báo cáo kết quả 解析 bằng số liệu** (反りが0.8mm発生しています・基準を大幅に超えています), **đề xuất giả thuyết nguyên nhân** (左側に水路が1本しかないので…と思います), **quan sát đàn anh truyền nguyên tắc** (等距離・3〜5倍間隔・左右交互), và **báo cáo thành quả với 工場長** theo cấu trúc 改善前→改善後→数値. Thái nhận ra: bài học cong vênh năm 2 không mất đi — nó quay lại thành **chuyên môn**; và giao tiếp Nhật ở vai trò 設計補助 không chỉ là chào hỏi mà là **chuỗi 確認・解析・相談・報告** đan với nhau. Đây là **報連相** ở dạng trưởng thành hơn — không phải báo cáo cho có, mà báo cáo bằng dữ liệu.

> Từ vựng & mẫu câu chương này: 水路設計・解析・現状・反り・公差・基準・冷却・配置・等距離・間隔・直径・強度・左右交互・改善・改善案・修正・トライ・射出・三次元測定機・独立設計・報連相・任せる・〜を任せる・〜の基準は?・〜というのは?・〜と思います・〜させてください・〜ということですね・お時間よろしいでしょうか

## Bí quyết chương

- **Đỉnh điểm bài học T5 sách 15**: cong vênh từng là thất bại → giờ thành chuyên môn được Kawakami chọn mặt giao task.
- **Bộ ba sempai**: Kawakami (cấp trên giao task), Sakurai (đàn anh xưởng truyền nguyên tắc), Tanaka (工場長 nhận 報告) — đủ 3 layer giao tiếp công sở Nhật.
- **Chuỗi chuẩn bị cuối 5 năm**: Tanaka úp mở "本体の形状もタイ君に任せたい" — kết quả ở sách 17.
- **N2 đếm ngược**: còn 5 tháng → mạch học hành xuyên chương.

> *"8/2024. Lần đầu một mình. 0.8 mm → 0.12 mm. Bài học cũ thành chuyên môn."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 任せる | まかせる | NHIỆM | Giao phó |
| 車体 | しゃたい | XA THỂ | Thân xe |
| 内装部品 | ないそうぶひん | NỘI TRANG BỘ PHẨM | Linh kiện nội thất |
| 水路 | すいろ | THUỶ LỘ | Kênh nước |
| 配置 | はいち | PHỐI TRÍ | Bố trí |
| 反り | そり | PHẢN | Cong vênh |
| 冷却 | れいきゃく | LÃNH KHƯỚC | Làm nguội |
| 適切 | てきせつ | THÍCH THIẾT | Phù hợp |
| 避ける | さける | TỴ | Tránh |
| 現状 | げんじょう | HIỆN TRẠNG | Hiện trạng |
| 改善案 | かいぜんあん | CẢI THIỆN ÁN | Phương án cải thiện |
| 基準 | きじゅん | CƠ CHUẨN | Tiêu chuẩn |
| 内部 | ないぶ | NỘI BỘ | Nội bộ |
| 目標 | もくひょう | MỤC TIÊU | Mục tiêu |
| 許容 | きょよう | HỨA DUNG | Cho phép |
| 習慣 | しゅうかん | TẬP QUÁN | Thói quen |
| 実行 | じっこう | THỰC HÀNH | Chạy, thực hiện |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 発生 | はっせい | PHÁT SINH | Phát sinh |
| 大幅 | おおはば | ĐẠI PHÚC | Lớn, đáng kể |
| 原因 | げんいん | NGUYÊN NHÂN | Nguyên nhân |
| 等距離 | とうきょり | ĐẲNG CỰ LY | Cách đều |
| 間隔 | かんかく | GIAN CÁCH | Khoảng cách |
| 強度 | きょうど | CƯỜNG ĐỘ | Độ bền |
| 並列 | へいれつ | TỊNH LIỆT | Song song |
| 左右交互 | さゆうこうご | TẢ HỮU GIAO HỖ | So le trái-phải |
| 温度差 | おんどさ | ÔN ĐỘ SAI | Chênh lệch nhiệt độ |
| 改善 | かいぜん | CẢI THIỆN | Cải thiện |
| 射出 | しゃしゅつ | XẠ XUẤT | Phun (ép nhựa) |
| 三次元測定機 | さんじげんそくていき | TAM THỨ NGUYÊN TRẮC ĐỊNH CƠ | Máy đo 3D |
| 実機 | じっき | THỰC CƠ | Máy thực |
| 失礼 | しつれい | THẤT LỄ | Xin phép |
| 下回る | したまわる | HẠ HỒI | Thấp hơn |
| 立派 | りっぱ | LẬP PHÁI | Xuất sắc, đáng nể |
| 本体 | ほんたい | BẢN THỂ | Thân chính |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000005, 800000016, NULL, 'markdown_book', 'T5. Em gái sang Nhật du học Nagoya (妹の留学)', '# Sách kỹ sư khuôn đúc · T5. Em gái sang Nhật du học Nagoya (妹の留学)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Anjo Aichi, làm năm thứ 3 tại みなみ精密金型) đón em gái Linh-Anh sang Nagoya nhập học Đại học Nanzan. Học các mẫu hội thoại tiếng Nhật của người đi đón người thân du học: hỏi đường + xác nhận lộ trình ở quầy taxi sân bay, làm thủ tục nhận phòng ký túc đại học (入寮手続き), mở tài khoản ngân hàng + đăng ký 在留カード ở 市役所, hỏi lại lễ phép khi nhân viên hành chính dùng từ chuyên ngành (〜というのは?), báo cáo việc gia đình với 工場長 và xin nghỉ Tết (お正月休み), quan sát đàn chị 先輩 hỗ trợ em gái mới sang.

---

## Bối cảnh

Tháng 10 năm 2024. Thái đã sang Nhật được 2 năm rưỡi, tiếng Nhật N3 chắc. Em gái Linh-Anh (19 tuổi, sinh viên CNTT, N3) nhập học Đại học Nanzan ở Nagoya. Thái xin nghỉ một tuần đưa em ổn định ký túc, mở tài khoản ngân hàng và đăng ký cư trú. Chương này tập trung các mẫu câu giao tiếp hành chính của người Việt đã quen Nhật đi đỡ người mới sang: hỏi đường taxi, thủ tục 入寮, 市役所 đăng ký 在留カード, mở 口座 ngân hàng, báo cáo cấp trên xin nghỉ Tết.

---

## Tình huống 1 — Quầy taxi sân bay Centrair · 11:30, hỏi đường + xác nhận lộ trình

| Vai | Lời thoại |
|---|---|
| Thái | （タクシー<ruby>乗<rt>の</rt></ruby>り<ruby>場<rt>ば</rt></ruby>のスタッフへ）すみません、<ruby>名古屋<rt>なごや</rt></ruby>の<ruby>南山大学<rt>なんざんだいがく</rt></ruby>までお<ruby>願<rt>ねが</rt></ruby>いしたいのですが。<br>*(Tới chỗ nhân viên quầy taxi. Xin lỗi, cháu muốn đi đến Đại học Nanzan ở Nagoya ạ.)* |
| Nhân viên | <ruby>南山大学<rt>なんざんだいがく</rt></ruby>ですね。<ruby>昭和区<rt>しょうわく</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>です。<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ぐらいかかりますよ。<br>*(Đại học Nanzan nhỉ. Ở quận Showa. Mất khoảng 1 tiếng đó.)* |
| Thái | <ruby>料金<rt>りょうきん</rt></ruby>はいくらぐらいですか？<br>*(Cước phí khoảng bao nhiêu ạ?)* |
| Nhân viên | <ruby>大体<rt>だいたい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>千円<rt>せんえん</rt></ruby>ぐらいです。<ruby>高速代<rt>こうそくだい</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>です。<br>*(Khoảng 15.000 yên. Phí cao tốc tính riêng.)* |
| Thái | すみません、「<ruby>高速代<rt>こうそくだい</rt></ruby>」というのは？<br>*(Xin lỗi, "kousokudai" nghĩa là gì ạ?)* |
| Nhân viên | <ruby>高速道路<rt>こうそくどうろ</rt></ruby>の<ruby>料金<rt>りょうきん</rt></ruby>です。<ruby>大体<rt>だいたい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>千円<rt>せんえん</rt></ruby>ぐらいかかります。<br>*(Phí đường cao tốc. Khoảng 3.000 yên.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>高速代<rt>こうそくだい</rt></ruby><ruby>込<rt>こ</rt></ruby>みで<ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>8<rt>はっ</rt></ruby><ruby>千円<rt>せんえん</rt></ruby>ぐらいということですね。<br>*(Em rõ rồi ạ. Gộp cả phí cao tốc thì khoảng 18.000 yên đúng không ạ?)* |
| Nhân viên | はい、そういうことです。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đúng vậy. Mời anh.)* |
| Linh-Anh | （タイに、ベトナム<ruby>語<rt>ご</rt></ruby>で）Anh, đắt thế ạ?<br>*(Sang tiếng Việt với anh: Anh, đắt thế ạ?)* |
| Thái | （ベトナム<ruby>語<rt>ご</rt></ruby>で）Lần đầu nên đi taxi cho chắc. Lần sau anh dạy em đi tàu.<br>*(Lần đầu nên đi taxi cho chắc. Lần sau anh dạy em đi tàu.)* |

---

## Tình huống 2 — Quầy lễ tân ký túc Nanzan · 13:00, thủ tục 入寮

| Vai | Lời thoại |
|---|---|
| Thái | こんにちは。<ruby>新入生<rt>しんにゅうせい</rt></ruby>の<ruby>入寮<rt>にゅうりょう</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きに<ruby>参<rt>まい</rt></ruby>りました。<br>*(Xin chào. Em đến làm thủ tục nhận phòng ký túc cho tân sinh viên ạ.)* |
| Lễ tân | こんにちは。<ruby>新入生<rt>しんにゅうせい</rt></ruby>のお<ruby>名前<rt>なまえ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin chào. Cho xin tên tân sinh viên ạ.)* |
| Linh-Anh | グエン・ティ・リン・アンと<ruby>申<rt>もう</rt></ruby>します。<ruby>情報学科<rt>じょうほうがっか</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>年生<rt>ねんせい</rt></ruby>です。<br>*(Em tên là Nguyễn Thị Linh Anh. Sinh viên năm 1 khoa Thông tin ạ.)* |
| Lễ tân | グエンさんですね。お<ruby>部屋<rt>へや</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>305<rt>さんまるご</rt></ruby><ruby>号室<rt>ごうしつ</rt></ruby>です。<ruby>個室<rt>こしつ</rt></ruby>ですよ。<br>*(Nguyễn-san nhỉ. Phòng tầng 3, số 305. Phòng riêng đấy.)* |
| Linh-Anh | <ruby>個室<rt>こしつ</rt></ruby>ですか、<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Phòng riêng ạ, em yên tâm rồi.)* |
| Lễ tân | こちらが<ruby>鍵<rt>かぎ</rt></ruby>と<ruby>寮<rt>りょう</rt></ruby>のルールブックです。<ruby>門限<rt>もんげん</rt></ruby>は<ruby>夜<rt>よる</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>です。<br>*(Đây là chìa khóa và sổ nội quy ký túc. Giờ giới nghiêm là 11h đêm.)* |
| Thái | すみません、「<ruby>門限<rt>もんげん</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "mongen" nghĩa là gì ạ?)* |
| Lễ tân | <ruby>夜<rt>よる</rt></ruby>、<ruby>寮<rt>りょう</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>らなければならない<ruby>時間<rt>じかん</rt></ruby>です。<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>を<ruby>過<rt>す</rt></ruby>ぎると<ruby>入<rt>はい</rt></ruby>れません。<br>*(Là giờ buổi tối phải về ký túc. Quá 11h là không vào được.)* |
| Linh-Anh | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>までに<ruby>必<rt>かなら</rt></ruby>ず<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Em hiểu rồi. Em nhất định sẽ về trước 11h ạ.)* |
| Lễ tân | それから、<ruby>共用<rt>きょうよう</rt></ruby>キッチンとシャワーは<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>にあります。<ruby>掃除当番<rt>そうじとうばん</rt></ruby>は<ruby>週<rt>しゅう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>です。<br>*(Còn nữa, bếp dùng chung và phòng tắm ở tầng 2. Phiên trực dọn tuần 1 lần.)* |
| Linh-Anh | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em rõ ạ. Mong chị giúp đỡ.)* |

---

## Tình huống 3 — Phòng 305 ký túc · 15:00, anh dặn em sinh hoạt (mạch nhân vật + ôn từ)

> Phần lớn tiếng Việt, có chèn từ JP em sẽ dùng hàng ngày.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Phòng được đấy, nhỏ nhưng sạch. Anh hồi đầu cũng ở phòng cỡ này. |
| Linh-Anh | (tiếng Việt) Anh ơi, "門限 11 giờ" có nghiêm không anh? Em hay đi học khuya. |
| Thái | (tiếng Việt) Nghiêm. Quá giờ là khóa cửa luôn. Mai 11 giờ về trước 10 giờ rưỡi cho chắc. |
| Linh-Anh | (tiếng Việt) Vâng. Còn 掃除当番 nghĩa là phiên trực dọn đúng không ạ? |
| Thái | (tiếng Việt) Đúng. Tuần một lần. Cứ làm đầy đủ là người Nhật quý. Đừng để bị nhắc. |
| Linh-Anh | (tiếng Việt) Em hiểu. À, mai 9 giờ mình đi 市役所 đăng ký 在留カード hả anh? |
| Thái | (tiếng Việt) Đúng. Anh đã làm rồi, dẫn em đi cho nhanh. Trong 14 ngày phải đăng ký, quá hạn là phạt đấy. |
| Linh-Anh | (tiếng Việt) Ghê thế ạ. May có anh. |

---

## Tình huống 4 — 市役所 Showa-ku · 9:30 hôm sau, đăng ký 在留カード (hỏi lại khi chưa hiểu)

| Vai | Lời thoại |
|---|---|
| Linh-Anh | おはようございます。<ruby>住民登録<rt>じゅうみんとうろく</rt></ruby>をしたいのですが。<br>*(Chào buổi sáng. Em muốn đăng ký cư trú ạ.)* |
| Nhân viên | はい。<ruby>在留<rt>ざいりゅう</rt></ruby>カードとパスポートをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Cho xem thẻ cư trú và hộ chiếu ạ.)* |
| Linh-Anh | （カードを<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。<br>*(Đưa thẻ. Vâng, đây ạ.)* |
| Nhân viên | <ruby>留学<rt>りゅうがく</rt></ruby>ビザですね。こちらの<ruby>転入届<rt>てんにゅうとどけ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Visa du học nhỉ. Em điền vào tờ khai chuyển đến này.)* |
| Linh-Anh | すみません、「<ruby>転入届<rt>てんにゅうとどけ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "tennyuu-todoke" nghĩa là gì ạ?)* |
| Nhân viên | <ruby>新<rt>あたら</rt></ruby>しい<ruby>住所<rt>じゅうしょ</rt></ruby>を<ruby>市役所<rt>しやくしょ</rt></ruby>に<ruby>知<rt>し</rt></ruby>らせる<ruby>書類<rt>しょるい</rt></ruby>です。<ruby>名前<rt>なまえ</rt></ruby>と<ruby>住所<rt>じゅうしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてください。<br>*(Là giấy báo địa chỉ mới cho ủy ban thành phố. Em ghi tên và địa chỉ vào.)* |
| Linh-Anh | はい、<ruby>分<rt>わ</rt></ruby>かりました。（<ruby>記入<rt>きにゅう</rt></ruby>する）<br>*(Vâng, em hiểu rồi. Điền giấy.)* |
| Nhân viên | <ruby>国民健康保険<rt>こくみんけんこうほけん</rt></ruby>にも<ruby>加入<rt>かにゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Cần tham gia bảo hiểm y tế quốc dân nữa nhé.)* |
| Linh-Anh | <ruby>保険料<rt>ほけんりょう</rt></ruby>はいくらですか？<br>*(Phí bảo hiểm bao nhiêu ạ?)* |
| Nhân viên | <ruby>留学生<rt>りゅうがくせい</rt></ruby>は<ruby>収入<rt>しゅうにゅう</rt></ruby>がないので、<ruby>減免<rt>げんめん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>ができますよ。<br>*(Du học sinh không có thu nhập nên có thể xin miễn giảm đó.)* |
| Linh-Anh | <ruby>減免<rt>げんめん</rt></ruby>...というのは、<ruby>安<rt>やす</rt></ruby>くなるということですか？<br>*(Genmen... nghĩa là rẻ hơn phải không ạ?)* |
| Nhân viên | はい、そうです。<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>しましょう。<br>*(Vâng, đúng vậy. Nộp đơn xin cùng luôn nhé.)* |
| Linh-Anh | ありがとうございます、<ruby>助<rt>たす</rt></ruby>かります。<br>*(Em cảm ơn ạ, đỡ quá.)* |

---

## Tình huống 5 — Ngân hàng Yucho gần ga Yagoto · 11:00, mở 口座 ngân hàng

| Vai | Lời thoại |
|---|---|
| Thái | （カウンターへ）すみません、<ruby>妹<rt>いもうと</rt></ruby>の<ruby>口座<rt>こうざ</rt></ruby><ruby>開設<rt>かいせつ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいのですが。<br>*(Đến quầy. Xin lỗi, em muốn mở tài khoản cho em gái ạ.)* |
| Nhân viên | はい、<ruby>在留<rt>ざいりゅう</rt></ruby>カードと<ruby>学生証<rt>がくせいしょう</rt></ruby>、<ruby>印鑑<rt>いんかん</rt></ruby>はお<ruby>持<rt>も</rt></ruby>ちですか？<br>*(Vâng, có thẻ cư trú, thẻ sinh viên và con dấu chưa ạ?)* |
| Linh-Anh | <ruby>印鑑<rt>いんかん</rt></ruby>...？<br>*(Inkan...?)* |
| Thái | （<ruby>小声<rt>こごえ</rt></ruby>で<ruby>妹<rt>いもうと</rt></ruby>に）Con dấu cá nhân. Anh đã làm sẵn cho em rồi.（カウンターへ）はい、こちらです。<br>*(Nhỏ giọng với em: Con dấu cá nhân. Anh đã làm sẵn cho em rồi. Quay sang quầy: Vâng, đây ạ.)* |
| Nhân viên | ありがとうございます。サインでも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですが、<ruby>印鑑<rt>いんかん</rt></ruby>があると<ruby>便利<rt>べんり</rt></ruby>です。<br>*(Em cảm ơn. Ký tên cũng được, nhưng có con dấu thì tiện hơn.)* |
| Nhân viên | こちらの<ruby>申込書<rt>もうしこみしょ</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>暗証番号<rt>あんしょうばんごう</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>桁<rt>けた</rt></ruby>もこちらに。<br>*(Em điền vào đơn này. Mã PIN 4 số viết vào đây.)* |
| Linh-Anh | <ruby>暗証番号<rt>あんしょうばんごう</rt></ruby>というのは、ATMの<ruby>番号<rt>ばんごう</rt></ruby>ですか？<br>*(Anshou-bangou nghĩa là số dùng ở ATM phải không ạ?)* |
| Nhân viên | そうです。<ruby>誰<rt>だれ</rt></ruby>にも<ruby>言<rt>い</rt></ruby>わないでくださいね。<ruby>生年月日<rt>せいねんがっぴ</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けてください。<br>*(Vâng. Đừng nói với ai nhé. Tránh dùng ngày sinh.)* |
| Linh-Anh | <ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Em rõ ạ.)* |
| Nhân viên | キャッシュカードは<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>寮<rt>りょう</rt></ruby>に<ruby>郵送<rt>ゆうそう</rt></ruby>します。<br>*(Thẻ ATM một tuần nữa sẽ gửi bưu điện đến ký túc.)* |
| Linh-Anh | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>寮<rt>りょう</rt></ruby>に<ruby>届<rt>とど</rt></ruby>くということですね。ありがとうございます。<br>*(Một tuần nữa sẽ đến ký túc đúng không ạ. Em cảm ơn.)* |

---

## Tình huống 6 — Quán cà phê Yagoto · 14:00, gặp chị Linh — quan sát đàn chị dặn em mới sang

| Vai | Lời thoại |
|---|---|
| Linh (chị) | リン・アンちゃん、はじめまして。<ruby>同<rt>おな</rt></ruby>じグエン・ティ・リンです。<br>*(Linh-Anh, rất hân hạnh. Chị cũng là Nguyễn Thị Linh nè.)* |
| Linh-Anh | はじめまして。<ruby>兄<rt>あに</rt></ruby>からよく<ruby>聞<rt>き</rt></ruby>いています。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh. Em hay nghe anh em nhắc đến chị. Mong chị giúp đỡ.)* |
| Linh (chị) | (tiếng Việt) Em mới sang, chị nói tiếng Việt cho dễ nhé. Có gì khó cứ nhắn chị. |
| Linh-Anh | (tiếng Việt) Vâng ạ. Em lo nhất là lúc đi siêu thị, nhiều từ không hiểu. |
| Linh (chị) | (tiếng Việt) Chị mách: cài app Google Lens, chụp nhãn dịch ngay. Còn ở 市役所 hay bệnh viện cứ nói chậm rồi "〜というのは何ですか?" — họ sẽ giải thích. |
| Thái | (tiếng Việt) Câu đó anh cũng dùng mãi từ năm thứ nhất. Em ghi vào sổ đi. |
| Linh-Anh | (tiếng Việt) Vâng em ghi rồi. Còn "確認" với "承知しました" — em thấy anh hay dùng. |
| Linh (chị) | (tiếng Việt) Đúng. Người Nhật thích mình confirm lại. Nghe xong cứ "〜ということですね" là họ yên tâm. |
| Linh-Anh | (tiếng Việt) Em hiểu rồi. Cảm ơn chị! |
| Linh (chị) | (tiếng Việt) Cuối tuần này chị dẫn em đi siêu thị Aeon mua đồ thiếu. Một mình lúc đầu hơi choáng. |

---

## Tình huống 7 — Nhà máy Anjo · sáng thứ Hai, báo cáo 工場長 + xin nghỉ Tết

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、おはようございます。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Trưởng nhà máy Tanaka, chào buổi sáng. Em xin một chút thời gian được không ạ?)* |
| Tanaka | はい、どうぞ。<ruby>先週<rt>せんしゅう</rt></ruby>は<ruby>妹<rt>いもうと</rt></ruby>さんの<ruby>件<rt>けん</rt></ruby>で<ruby>休<rt>やす</rt></ruby>ませてもらったね。<br>*(Được, mời em. Tuần trước em đã được nghỉ vì việc em gái nhỉ.)* |
| Thái | はい、おかげさまで<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>入寮<rt>にゅうりょう</rt></ruby>と<ruby>住民登録<rt>じゅうみんとうろく</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。ありがとうございました。<br>*(Vâng, nhờ ơn ông, đã xong thủ tục nhập ký túc và đăng ký cư trú ạ. Em cảm ơn.)* |
| Tanaka | よかったね。<ruby>南山大学<rt>なんざんだいがく</rt></ruby>は<ruby>名古屋<rt>なごや</rt></ruby>でも<ruby>有名<rt>ゆうめい</rt></ruby>な<ruby>大学<rt>だいがく</rt></ruby>だよ。<br>*(Tốt rồi nhỉ. Đại học Nanzan là trường nổi tiếng ở Nagoya đấy.)* |
| Thái | <ruby>素敵<rt>すてき</rt></ruby>な<ruby>大学<rt>だいがく</rt></ruby>でした。それで、もう<ruby>一<rt>ひと</rt></ruby>つご<ruby>相談<rt>そうだん</rt></ruby>がありまして。<br>*(Trường rất đẹp ạ. Em xin được bàn thêm một việc nữa ạ.)* |
| Tanaka | どうぞ。<br>*(Mời em.)* |
| Thái | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>、お<ruby>正月休<rt>しょうがつやす</rt></ruby>みの<ruby>時期<rt>じき</rt></ruby>に<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ほどベトナムに<ruby>帰省<rt>きせい</rt></ruby>させていただきたいのですが。<br>*(Tháng 1 năm sau, vào dịp nghỉ Tết, em xin phép được về Việt Nam khoảng 1 tuần ạ.)* |
| Tanaka | お<ruby>正月<rt>しょうがつ</rt></ruby>か。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>休<rt>やす</rt></ruby>みは<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>4<rt>よっ</rt></ruby><ruby>日<rt>か</rt></ruby>までだから、その<ruby>前後<rt>ぜんご</rt></ruby>に<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けるということ？<br>*(Tết à. Công ty nghỉ từ 30/12 đến 4/1, thế là gắn ngày phép vào trước sau à?)* |
| Thái | はい、そういうことです。<ruby>有給<rt>ゆうきゅう</rt></ruby>を<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>使<rt>つか</rt></ruby>って、<ruby>合<rt>あ</rt></ruby>わせて<ruby>10<rt>とお</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>間<rt>かん</rt></ruby>になります。<br>*(Vâng, đúng vậy ạ. Em dùng 3 ngày phép, tổng cộng thành 10 ngày ạ.)* |
| Tanaka | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いて<ruby>初<rt>はじ</rt></ruby>めての<ruby>長期<rt>ちょうき</rt></ruby><ruby>帰省<rt>きせい</rt></ruby>だね。ご<ruby>家族<rt>かぞく</rt></ruby>に<ruby>会<rt>あ</rt></ruby>って、<ruby>元気<rt>げんき</rt></ruby>になって<ruby>戻<rt>もど</rt></ruby>ってきてください。<br>*(Tôi rõ rồi. Làm 3 năm mới về dài nhỉ. Gặp gia đình, lấy lại sức rồi quay lại nhé.)* |
| Thái | はい、ありがとうございます。<ruby>申請書<rt>しんせいしょ</rt></ruby>を<ruby>後<rt>あと</rt></ruby>で<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng, em cảm ơn ạ. Em sẽ nộp đơn xin sau.)* |
| Tanaka | <ruby>家族<rt>かぞく</rt></ruby>が<ruby>近<rt>ちか</rt></ruby>くにいると<ruby>頑張<rt>がんば</rt></ruby>れるよ。<ruby>妹<rt>いもうと</rt></ruby>さんも<ruby>大切<rt>たいせつ</rt></ruby>にね。<br>*(Có gia đình ở gần thì cố gắng được hơn đấy. Em gái cũng phải lo cho chu đáo.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 8 — Phòng 201 ký túc Anjo · 22:00, gọi LINE về cho Mai (cảnh tiếng Việt)

> Cảnh tiếng Việt — chốt mạch nhân vật & gia đình, ôn lại từ JP đã học.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh! Linh-Anh ổn định chưa anh? |
| Thái | (tiếng Việt) Ổn rồi em. Tuần này anh dẫn em đi đủ thứ: nhận phòng ký túc, lên 市役所 đăng ký 在留カード, mở 口座 ngân hàng Yucho. |
| Mai | (tiếng Việt) Trời ơi, nhiều việc thế. Em nó có hiểu tiếng Nhật không? |
| Thái | (tiếng Việt) N3 rồi nhưng từ hành chính lạ lắm. Anh dạy em câu "〜というのは何ですか?" — không hiểu là hỏi luôn. Nhân viên Nhật toàn giải thích lại tử tế. |
| Mai | (tiếng Việt) Em ghi câu đó vào sổ đây. Lúc nào em sang chơi cũng cần. |
| Thái | (tiếng Việt) À nói luôn — anh xin được nghỉ Tết rồi! 10 ngày, gồm cả お正月休み của công ty với 3 ngày 有給. Bác Tanaka đồng ý. |
| Mai | (tiếng Việt) Thật ạ?! Em mừng quá! Bao giờ về anh? |
| Thái | (tiếng Việt) Tầm 28/12 anh bay, mùng 6/1 quay lại. Em sắp xếp ra Hà Nội với anh nhé. |
| Mai | (tiếng Việt) Có chứ! Em đợi từng ngày. Còn Linh-Anh có Tết về không? |
| Thái | (tiếng Việt) Em nó vừa sang, năm nay ở lại trường cho quen. Chị Linh ở Nagoya hứa rủ em ăn Tết với nhóm sinh viên Việt. |
| Mai | (tiếng Việt) May có chị Linh. Anh giữ sức nha, sắp về rồi! |
| Thái | (tiếng Việt) Ừ. Anh đi ngủ đây, mai 7 rưỡi xuống xưởng. Ngủ ngon em. |

---

## Đọng lại chương 5

Tuần đỡ em gái nhập học cho Thái cơ hội tổng ôn các mẫu câu **hành chính sinh hoạt** đã tích lũy 3 năm: **hỏi đường + xác nhận lộ trình ở quầy taxi** (高速代込みで〜ということですね), **thủ tục 入寮** (門限・掃除当番・共用キッチン), **đăng ký 住民登録 và 在留カード ở 市役所** (転入届・国民健康保険・減免申請), **mở 口座 ngân hàng** (印鑑・暗証番号・キャッシュカード郵送), và **báo cáo cấp trên xin nghỉ Tết** (お正月休み・有給・帰省). Quan trọng hơn, Thái thấy mình từ vai sempai mới sang ngày nào giờ trở thành người chỉ lại em gái câu **「〜というのは何ですか?」** và **「〜ということですね」** — đúng hai câu ông Tanaka và Putra dạy ngày đầu. Đàn chị Linh tiếp tục mạng lưới hỗ trợ, công ty cho nghỉ Tết — đời du học và đời thực tập sinh cùng chảy.

> Từ vựng & mẫu câu chương này: 留学・妹・南山大学・情報学科・入寮・門限・掃除当番・共用キッチン・住民登録・転入届・在留カード・国民健康保険・減免申請・口座・口座開設・印鑑・暗証番号・キャッシュカード・郵送・高速代・料金・お正月休み・有給・帰省・申請書・〜というのは何ですか・〜ということですね・承知しました・素敵な大学・家族が近くにいると頑張れる

## Bí quyết chương

- **Vai sempai gia đình**: Thái không còn là người mới — giờ là người dạy lại em gái câu hỏi 〜というのは. Khởi đầu kết quả cho T6+ khi Thái phỏng vấn 設計者.
- **Mạng lưới Việt ở Nagoya**: chị Linh (giới thiệu từ T3) — sẽ tiếp tục đỡ Linh-Anh xuyên 3 sách.
- **Tết 2025 + Mai**: kết quả cảnh gặp lại sau gần 3 năm — sẽ trong T6.
- **市役所 + 口座 + 在留カード**: bộ ba thủ tục hành chính bắt buộc — tái dùng được cho mọi sách thực tập sinh / du học sinh khác.

> *"10/2024. Em gái sang. Mạng lưới Việt vận hành. Tết 2025 — 3 tháng nữa."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 留学 | りゅうがく | LƯU HỌC | Du học |
| 乗り場 | のりば | THỪA TRƯỜNG | Bến (xe, taxi) |
| 料金 | りょうきん | LIỆU KIM | Cước phí |
| 高速代 | こうそくだい | CAO TỐC ĐẠI | Phí cao tốc |
| 高速道路 | こうそくどうろ | CAO TỐC ĐẠO LỘ | Đường cao tốc |
| 新入生 | しんにゅうせい | TÂN NHẬP SINH | Tân sinh viên |
| 入寮 | にゅうりょう | NHẬP LIÊU | Vào ký túc xá |
| 手続き | てつづき | THỦ TỤC | Thủ tục |
| 情報学科 | じょうほうがっか | THÔNG TIN HỌC KHOA | Khoa Công nghệ thông tin |
| 個室 | こしつ | CÁ THẤT | Phòng riêng |
| 鍵 | かぎ | KIỆN | Chìa khóa |
| 寮 | りょう | LIÊU | Ký túc xá |
| 門限 | もんげん | MÔN HẠN | Giờ giới nghiêm |
| 共用 | きょうよう | CỘNG DỤNG | Dùng chung |
| 掃除当番 | そうじとうばん | TẢO TRỪ ĐƯƠNG PHIÊN | Phiên trực dọn dẹp |
| 住民登録 | じゅうみんとうろく | TRÚ DÂN ĐĂNG LỤC | Đăng ký cư trú |
| 在留カード | ざいりゅうカード | TẠI LƯU | Thẻ cư trú |
| 留学ビザ | りゅうがくビザ | LƯU HỌC | Visa du học |
| 転入届 | てんにゅうとどけ | CHUYỂN NHẬP GIỚI | Tờ khai chuyển đến |
| 市役所 | しやくしょ | THỊ DỊCH SỞ | Ủy ban thành phố |
| 書類 | しょるい | THƯ LOẠI | Giấy tờ |
| 住所 | じゅうしょ | TRÚ SỞ | Địa chỉ |
| 国民健康保険 | こくみんけんこうほけん | QUỐC DÂN KIỆN KHANG BẢO HIỂM | Bảo hiểm y tế quốc dân |
| 加入 | かにゅう | GIA NHẬP | Tham gia |
| 保険料 | ほけんりょう | BẢO HIỂM LIỆU | Phí bảo hiểm |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | Du học sinh |
| 収入 | しゅうにゅう | THU NHẬP | Thu nhập |
| 減免 | げんめん | GIẢM MIỄN | Miễn giảm |
| 申請 | しんせい | THÂN THỈNH | Đơn xin, xin |
| 申請書 | しんせいしょ | THÂN THỈNH THƯ | Đơn xin |
| 口座 | こうざ | KHẨU TỌA | Tài khoản (ngân hàng) |
| 開設 | かいせつ | KHAI THIẾT | Mở (tài khoản) |
| 学生証 | がくせいしょう | HỌC SINH CHỨNG | Thẻ sinh viên |
| 印鑑 | いんかん | ẤN GIÁM | Con dấu cá nhân |
| 申込書 | もうしこみしょ | THÂN VÀO THƯ | Đơn đăng ký |
| 暗証番号 | あんしょうばんごう | ÁM CHỨNG PHIÊN HIỆU | Mã PIN |
| 桁 | けた | — | Chữ số |
| 生年月日 | せいねんがっぴ | SINH NIÊN NGUYỆT NHẬT | Ngày tháng năm sinh |
| 郵送 | ゆうそう | BƯU TỐNG | Gửi bưu điện |
| 無事 | ぶじ | VÔ SỰ | Yên ổn, suôn sẻ |
| 正月休み | しょうがつやすみ | CHÍNH NGUYỆT HƯU | Nghỉ Tết |
| 帰省 | きせい | QUY TỈNH | Về quê |
| 有給 | ゆうきゅう | HỮU CẤP | Ngày phép có lương |
| 長期 | ちょうき | TRƯỜNG KỲ | Dài hạn |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000006, 800000016, NULL, 'markdown_book', 'T6. Thi 3次元CAD 2級 (3DCAD合格)', '# Sách kỹ sư khuôn đúc · T6. Thi 3次元CAD 2級 (3DCAD合格)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) ôn và thi chứng chỉ 3次元CAD利用技術者試験 2級 tại Tokyo. Học các mẫu hội thoại tiếng Nhật quanh kỳ thi chuyên ngành: báo cáo tiến độ ôn thi với 先輩, xác nhận thuật ngữ CAD chuyên ngành (形状定義・コンストレイント・アセンブリ), hỏi lại lễ phép khi chưa rõ điểm thi (〜というのは？), nghe thông báo quy chế phòng thi của 監督官, đọc kết quả online và báo cáo 工場長, bàn lộ trình thi 1級 năm sau.

---

## Bối cảnh

Tháng 11 năm 2024 đến tháng 1 năm 2025. Thái đã làm việc tại **株式会社みなみ精密金型** ở Anjo, Aichi gần 3 năm, trình độ tiếng Nhật N3 vững. Anh đăng ký thi **3次元CAD利用技術者試験 2級** tại trung tâm khảo thí ở Tokyo — bước đầu trên lộ trình trở thành 設計者. Chương này tập trung các mẫu câu giao tiếp quanh kỳ thi chuyên ngành: báo cáo tiến độ ôn với 先輩, nghe quy chế thi, xác nhận thuật ngữ CAD, đọc kết quả và bàn lộ trình tiếp theo.

---

## Tình huống 1 — Phòng thiết kế · 11/2024 17:30, báo cáo tiến độ ôn thi với 先輩

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来月<rt>らいげつ</rt></ruby>の3D CAD <ruby>2級<rt>にきゅう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>はどうですか？<br>*(Em Thái, chuẩn bị thi 3D CAD 2 級 tháng sau thế nào rồi?)* |
| Thái | はい、<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>3年分<rt>さんねんぶん</rt></ruby><ruby>解<rt>と</rt></ruby>きました。<ruby>正解率<rt>せいかいりつ</rt></ruby>は<ruby>80<rt>はちじゅう</rt></ruby>％ぐらいです。<br>*(Vâng, em đã làm đề cũ 3 năm gần nhất. Tỉ lệ đúng khoảng 80% ạ.)* |
| Kawakami | いいですね。<ruby>2級<rt>にきゅう</rt></ruby>の<ruby>合格率<rt>ごうかくりつ</rt></ruby>は<ruby>55<rt>ごじゅうご</rt></ruby>％ですから、その<ruby>調子<rt>ちょうし</rt></ruby>なら<ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>です。<br>*(Tốt đấy. Tỉ lệ đỗ 2 級 là 55%, theo đà này thì đỗ chắc.)* |
| Thái | ありがとうございます。<ruby>弱点<rt>じゃくてん</rt></ruby>は「<ruby>形状定義<rt>けいじょうていぎ</rt></ruby>」の<ruby>問題<rt>もんだい</rt></ruby>です。<ruby>用語<rt>ようご</rt></ruby>がまだ<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Em cảm ơn ạ. Điểm yếu của em là phần "định nghĩa biên dạng". Thuật ngữ vẫn khó.)* |
| Kawakami | すみません、<ruby>形状定義<rt>けいじょうていぎ</rt></ruby>のどこが<ruby>難<rt>むずか</rt></ruby>しいですか？<br>*(Cụ thể chỗ nào khó vậy?)* |
| Thái | 「コンストレイント」の<ruby>種類<rt>しゅるい</rt></ruby>がたくさんあります。<ruby>水平<rt>すいへい</rt></ruby>・<ruby>垂直<rt>すいちょく</rt></ruby>・<ruby>同心<rt>どうしん</rt></ruby>...<ruby>覚<rt>おぼ</rt></ruby>えきれないです。<br>*(Có nhiều loại "constraint" quá ạ. Ngang, dọc, đồng tâm... em nhớ không xuể.)* |
| Kawakami | <ruby>図<rt>ず</rt></ruby>を<ruby>描<rt>か</rt></ruby>いて<ruby>覚<rt>おぼ</rt></ruby>えるといいですよ。<ruby>言葉<rt>ことば</rt></ruby>だけで<ruby>覚<rt>おぼ</rt></ruby>えるのは<ruby>大変<rt>たいへん</rt></ruby>です。<br>*(Cứ vẽ hình ra để nhớ là tốt. Học bằng từ ngữ không thôi thì vất.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今晩<rt>こんばん</rt></ruby>からノートに<ruby>図<rt>ず</rt></ruby>を<ruby>描<rt>か</rt></ruby>きます。<br>*(Vâng, em rõ rồi ạ. Tối nay em sẽ vẽ hình vào sổ.)* |

---

## Tình huống 2 — Phòng thiết kế · 11/2024 18:00, hỏi lại thuật ngữ CAD chuyên ngành

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Anh Kawakami, em hỏi thêm một câu được không ạ?)* |
| Kawakami | はい、どうぞ。<br>*(Ừ, em hỏi đi.)* |
| Thái | <ruby>過去問<rt>かこもん</rt></ruby>に「アセンブリ<ruby>拘束<rt>こうそく</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきました。「アセンブリ」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Trong đề có chữ "ràng buộc lắp ráp". "Assembly" nghĩa là gì ạ?)* |
| Kawakami | アセンブリは<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>立<rt>た</rt></ruby>てることです。<ruby>複数<rt>ふくすう</rt></ruby>の<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つの<ruby>製品<rt>せいひん</rt></ruby>に<ruby>組<rt>く</rt></ruby>み<ruby>立<rt>た</rt></ruby>てる<ruby>作業<rt>さぎょう</rt></ruby>ですね。<br>*(Assembly là lắp ráp linh kiện. Ghép nhiều chi tiết thành một sản phẩm.)* |
| Thái | なるほど、<ruby>組<rt>く</rt></ruby>み<ruby>立<rt>た</rt></ruby>てるということですね。では「<ruby>拘束<rt>こうそく</rt></ruby>」は？<br>*(Em hiểu rồi, tức là ghép lại. Vậy "ràng buộc" là gì ạ?)* |
| Kawakami | <ruby>部品<rt>ぶひん</rt></ruby>と<ruby>部品<rt>ぶひん</rt></ruby>の<ruby>関係<rt>かんけい</rt></ruby>を<ruby>決<rt>き</rt></ruby>めることです。<ruby>例<rt>たと</rt></ruby>えば「この<ruby>面<rt>めん</rt></ruby>とこの<ruby>面<rt>めん</rt></ruby>を<ruby>一致<rt>いっち</rt></ruby>させる」と<ruby>指定<rt>してい</rt></ruby>するのが<ruby>拘束<rt>こうそく</rt></ruby>です。<br>*(Là xác định mối quan hệ giữa các chi tiết. Ví dụ chỉ định "mặt này khớp với mặt kia" là constraint.)* |
| Thái | <ruby>面<rt>めん</rt></ruby>と<ruby>面<rt>めん</rt></ruby>を<ruby>一致<rt>いっち</rt></ruby>させる、ということですね。よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Tức là cho hai mặt khớp nhau ạ. Em hiểu rõ rồi.)* |
| Kawakami | <ruby>実<rt>じつ</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>でやっていることですよ。<ruby>名前<rt>なまえ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えるだけです。<br>*(Thật ra đây là việc em làm hằng ngày. Chỉ là nhớ tên gọi thôi.)* |
| Thái | はい、<ruby>安心<rt>あんしん</rt></ruby>しました。ありがとうございます。<br>*(Vâng, em yên tâm rồi. Em cảm ơn anh.)* |

---

## Tình huống 3 — Quầy lễ tân trung tâm thi Tokyo · 12/2024 9:00, thủ tục vào phòng thi

| Vai | Lời thoại |
|---|---|
| Lễ tân | おはようございます。<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証明書<rt>みぶんしょうめいしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chào buổi sáng. Cho xem phiếu dự thi và giấy tờ tuỳ thân.)* |
| Thái | （<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>渡<rt>わた</rt></ruby>す）はい、どうぞ。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đưa thẻ cư trú. Vâng, đây ạ. Mong chị giúp đỡ.)* |
| Lễ tân | グエン・ヴァン・タイさんですね。<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>は<ruby>2024<rt>にせんにじゅうよん</rt></ruby>-<ruby>305<rt>さんまるご</rt></ruby>です。<ruby>会場<rt>かいじょう</rt></ruby>は<ruby>3階<rt>さんがい</rt></ruby>の<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>試験室<rt>しけんしつ</rt></ruby>です。<br>*(Anh Nguyễn Văn Thái nhỉ. Số báo danh 2024-305. Phòng thi số 2 tầng 3.)* |
| Thái | すみません、「<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>試験室<rt>しけんしつ</rt></ruby>」というのは<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>会場<rt>かいじょう</rt></ruby>ということですか？<br>*(Xin lỗi, "phòng thi số 2" có phải là khu thi số 2 không ạ?)* |
| Lễ tân | はい、そうです。エレベーターを<ruby>降<rt>お</rt></ruby>りて<ruby>右側<rt>みぎがわ</rt></ruby>の<ruby>部屋<rt>へや</rt></ruby>です。<ruby>9<rt>く</rt></ruby><ruby>時半<rt>じはん</rt></ruby>までに<ruby>入室<rt>にゅうしつ</rt></ruby>してください。<br>*(Vâng, đúng vậy. Ra khỏi thang máy, phòng bên phải. Vào phòng trước 9h30 giúp em.)* |
| Thái | <ruby>9<rt>く</rt></ruby><ruby>時半<rt>じはん</rt></ruby>までに<ruby>入室<rt>にゅうしつ</rt></ruby>、<ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Trước 9h30 vào phòng, em rõ rồi ạ. Em cảm ơn.)* |

---

## Tình huống 4 — Phòng thi số 2 · 12/2024 9:45, giám thị phổ biến quy chế

| Vai | Lời thoại |
|---|---|
| Giám thị | これから<ruby>3次元<rt>さんじげん</rt></ruby>CAD<ruby>利用<rt>りよう</rt></ruby><ruby>技術者<rt>ぎじゅつしゃ</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Sau đây xin bắt đầu kỳ thi 3D CAD 2 級.)* |
| Giám thị | <ruby>試験<rt>しけん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>60分<rt>ろくじゅっぷん</rt></ruby>、<ruby>問題<rt>もんだい</rt></ruby><ruby>数<rt>すう</rt></ruby>は<ruby>50問<rt>ごじゅうもん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>70<rt>ななじゅう</rt></ruby>％<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Thời gian 60 phút, 50 câu, tiêu chuẩn đỗ là từ 70% trở lên.)* |
| Giám thị | <ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>と<ruby>電卓<rt>でんたく</rt></ruby>の<ruby>使用<rt>しよう</rt></ruby>は<ruby>禁止<rt>きんし</rt></ruby>です。<ruby>机<rt>つくえ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>には<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>鉛筆<rt>えんぴつ</rt></ruby>だけ<ruby>置<rt>お</rt></ruby>いてください。<br>*(Cấm dùng điện thoại và máy tính. Trên bàn chỉ để phiếu dự thi và bút chì.)* |
| Thái | （<ruby>携帯<rt>けいたい</rt></ruby>をかばんに<ruby>入<rt>い</rt></ruby>れて、<ruby>受験票<rt>じゅけんひょう</rt></ruby>を<ruby>机<rt>つくえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>く）はい。<br>*(Cho điện thoại vào cặp, để phiếu dự thi lên bàn. Vâng.)* |
| Giám thị | <ruby>途中<rt>とちゅう</rt></ruby><ruby>退室<rt>たいしつ</rt></ruby>は<ruby>開始<rt>かいし</rt></ruby><ruby>30分後<rt>さんじゅっぷんご</rt></ruby>から<ruby>可能<rt>かのう</rt></ruby>です。<ruby>質問<rt>しつもん</rt></ruby>はありますか？<br>*(Sau khi bắt đầu 30 phút mới được ra ngoài. Có câu hỏi gì không?)* |
| Thái | （<ruby>隣<rt>となり</rt></ruby>の<ruby>受験者<rt>じゅけんしゃ</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、みんな<ruby>静<rt>しず</rt></ruby>かなので<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げない）<br>*(Nhìn thí sinh bên cạnh, ai cũng im lặng nên không giơ tay.)* |
| Giám thị | それでは、<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Vậy mời các thí sinh bắt đầu.)* |

---

## Tình huống 5 — Trong phòng thi · 12/2024 10:00-11:00, làm bài (độc thoại VN)

| Vai | Lời thoại |
|---|---|
| Thái | (VN, độc thoại trong đầu) Bình tĩnh. 50 câu, 60 phút — trung bình 1 câu hơn 1 phút. |
| Thái | (VN) Phần 1 「<ruby>形状定義<rt>けいじょうていぎ</rt></ruby>」. Câu hỏi loại constraint — vẽ nhanh ra giấy nháp như anh Kawakami dặn. |
| Thái | （<ruby>下書<rt>したが</rt></ruby>き<ruby>用紙<rt>ようし</rt></ruby>に<ruby>図<rt>ず</rt></ruby>を<ruby>描<rt>か</rt></ruby>く）<br>*(Vẽ hình ra giấy nháp.)* |
| Thái | (VN) Phần 2 「アセンブリ」. Đây rồi — câu "mặt khớp mặt" giống hệt ví dụ anh Kawakami giải thích. |
| Thái | (VN) Câu 38 không chắc — đánh dấu lại, để cuối quay lại. |
| Thái | （<ruby>時計<rt>とけい</rt></ruby>を<ruby>見<rt>み</rt></ruby>る — <ruby>残<rt>のこ</rt></ruby>り<ruby>15分<rt>じゅうごふん</rt></ruby>）<br>*(Nhìn đồng hồ — còn 15 phút.)* |
| Thái | (VN) OK, quay lại 5 câu đã đánh dấu. Suy luận từ ngữ cảnh. |
| Giám thị | <ruby>終了<rt>しゅうりょう</rt></ruby><ruby>5分前<rt>ごふんまえ</rt></ruby>です。<ruby>解答<rt>かいとう</rt></ruby>の<ruby>記入漏<rt>きにゅうも</rt></ruby>れがないかご<ruby>確認<rt>かくにん</rt></ruby>ください。<br>*(Còn 5 phút nữa hết giờ. Kiểm tra xem có câu nào bỏ trống không.)* |
| Thái | （<ruby>解答用紙<rt>かいとうようし</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>す）<br>*(Soát lại phiếu trả lời.)* |
| Giám thị | <ruby>終了<rt>しゅうりょう</rt></ruby>です。<ruby>筆記用具<rt>ひっきようぐ</rt></ruby>を<ruby>置<rt>お</rt></ruby>いてください。<br>*(Hết giờ. Đặt bút xuống.)* |

---

## Tình huống 6 — Trước trung tâm thi · 12/2024 11:15, báo cáo 先輩 qua LINE

| Vai | Lời thoại |
|---|---|
| Thái | (LINE 川上さん) <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>試験<rt>しけん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Anh Kawakami, em thi xong rồi. Anh vất vả ạ.)* |
| Kawakami | （<ruby>既読<rt>きどく</rt></ruby>）お<ruby>疲<rt>つか</rt></ruby>れさま！どうだった？<br>*(Đã đọc. Vất vả rồi! Sao em?)* |
| Thái | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<ruby>自己<rt>じこ</rt></ruby><ruby>採点<rt>さいてん</rt></ruby>では<ruby>40<rt>よんじゅう</rt></ruby>／<ruby>50<rt>ごじゅう</rt></ruby><ruby>正解<rt>せいかい</rt></ruby>ぐらいの<ruby>感覚<rt>かんかく</rt></ruby>です。<br>*(Em nghĩ là ổn. Tự chấm sơ bộ thì khoảng 40/50 ạ.)* |
| Kawakami | <ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>70<rt>ななじゅう</rt></ruby>％、つまり<ruby>35問<rt>さんじゅうごもん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby><ruby>正解<rt>せいかい</rt></ruby>でしょ。<ruby>40<rt>よんじゅう</rt></ruby>あるなら<ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>だね。<br>*(Tiêu chuẩn đỗ 70% — tức là từ 35 câu trở lên. Em được 40 thì đỗ chắc.)* |
| Thái | はい、ありがとうございます。アセンブリの<ruby>問題<rt>もんだい</rt></ruby>は<ruby>川上<rt>かわかみ</rt></ruby>さんの<ruby>説明<rt>せつめい</rt></ruby>のおかげで<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>解<rt>と</rt></ruby>けました。<br>*(Vâng, em cảm ơn anh. Phần assembly nhờ anh giảng nên em giải được hết.)* |
| Kawakami | よかった！<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>は<ruby>1<rt>いち</rt></ruby>か<ruby>月後<rt>げつご</rt></ruby>だっけ？<br>*(Tốt quá! Kết quả 1 tháng nữa nhỉ?)* |
| Thái | はい、<ruby>1月<rt>いちがつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby>にウェブで<ruby>発表<rt>はっぴょう</rt></ruby>されます。<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たらすぐご<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, giữa tháng 1 sẽ công bố trên web. Có kết quả em sẽ báo ngay ạ.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>今夜<rt>こんや</rt></ruby>はゆっくり<ruby>休<rt>やす</rt></ruby>んでね。<br>*(OK. Tối nay nghỉ ngơi cho khoẻ.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 7 — Phòng 201 ký túc · 1/2025 10:00, đọc kết quả online và báo cáo 工場長

| Vai | Lời thoại |
|---|---|
| Thái | （PCで<ruby>結果<rt>けっか</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>ページを<ruby>開<rt>ひら</rt></ruby>く）<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>を<ruby>入力<rt>にゅうりょく</rt></ruby>...<br>*(Mở trang kiểm tra kết quả. Nhập số báo danh...)* |
| Thái | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>合格<rt>ごうかく</rt></ruby>！<ruby>43<rt>よんじゅうさん</rt></ruby>／<ruby>50<rt>ごじゅう</rt></ruby>、<ruby>86<rt>はちじゅうろく</rt></ruby>％です！<br>*(Nhìn màn hình. Đỗ! 43/50, được 86%!)* |
| Thái | （<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>）<ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、グエンです。お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Gọi điện cho Tanaka trưởng nhà máy. Trưởng nhà máy, em là Nguyên đây ạ. Anh vất vả ạ.)* |
| Tanaka | はい、タイさん、お<ruby>疲<rt>つか</rt></ruby>れさま。どうしました？<br>*(Vâng, anh Thái, vất vả rồi. Có việc gì vậy?)* |
| Thái | ご<ruby>報告<rt>ほうこく</rt></ruby>します。<ruby>3次元<rt>さんじげん</rt></ruby>CAD<ruby>2級<rt>にきゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>43<rt>よんじゅうさん</rt></ruby>／<ruby>50<rt>ごじゅう</rt></ruby><ruby>正解<rt>せいかい</rt></ruby>でした。<br>*(Em xin báo cáo. Em đã đỗ 3D CAD 2 級 ạ. Em đúng 43/50 câu.)* |
| Tanaka | おお、<ruby>合格<rt>ごうかく</rt></ruby>おめでとう！よく<ruby>頑張<rt>がんば</rt></ruby>ったね。<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>皆<rt>みな</rt></ruby>さんに<ruby>紹介<rt>しょうかい</rt></ruby>しますよ。<br>*(Ồ, chúc mừng em đỗ! Cố gắng tốt lắm. Buổi họp sáng tháng sau tôi giới thiệu trước mọi người nhé.)* |
| Thái | ありがとうございます。<ruby>川上<rt>かわかみ</rt></ruby>さんと<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さまのおかげです。<br>*(Em cảm ơn ạ. Nhờ anh Kawakami và mọi người trong công ty.)* |
| Tanaka | <ruby>合格<rt>ごうかく</rt></ruby><ruby>証書<rt>しょうしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>いたら<ruby>人事<rt>じんじ</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>が<ruby>出<rt>で</rt></ruby>ますから。<br>*(Khi giấy chứng nhận tới thì nộp cho phòng nhân sự. Sẽ có phụ cấp chứng chỉ.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。すみません、「<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>」というのは<ruby>毎月<rt>まいつき</rt></ruby><ruby>給料<rt>きゅうりょう</rt></ruby>に<ruby>付<rt>つ</rt></ruby>く<ruby>手当<rt>てあて</rt></ruby>ということですか？<br>*(Vâng, em rõ ạ. Xin lỗi, "phụ cấp chứng chỉ" là phụ cấp cộng vào lương hàng tháng phải không ạ?)* |
| Tanaka | そうです。<ruby>2級<rt>にきゅう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>3,000<rt>さんぜん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>1級<rt>いっきゅう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>10,000<rt>いちまん</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<br>*(Đúng. 2 級 là 3.000 yên/tháng. Đỗ 1 級 sẽ thành 10.000 yên.)* |
| Thái | ありがとうございます、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ, em sẽ cố gắng.)* |

---

## Tình huống 8 — Phòng thiết kế · 1/2025 18:00, Kawakami bàn lộ trình 1級

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>おめでとう！<ruby>43<rt>よんじゅうさん</rt></ruby>／<ruby>50<rt>ごじゅう</rt></ruby>はすごいよ。<br>*(Em Thái, chúc mừng đỗ! 43/50 là cao đấy.)* |
| Thái | ありがとうございます。<ruby>川上<rt>かわかみ</rt></ruby>さんのおかげです。<br>*(Em cảm ơn anh. Nhờ anh ạ.)* |
| Kawakami | <ruby>来年<rt>らいねん</rt></ruby>の<ruby>12月<rt>じゅうにがつ</rt></ruby>に<ruby>1級<rt>いっきゅう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けますか？<br>*(Tháng 12 sang năm em thi 1 級 không?)* |
| Thái | はい、<ruby>受験<rt>じゅけん</rt></ruby>するつもりです。<ruby>1級<rt>いっきゅう</rt></ruby>の<ruby>合格率<rt>ごうかくりつ</rt></ruby>はどのくらいですか？<br>*(Vâng, em định thi. Tỷ lệ đỗ 1 級 khoảng bao nhiêu ạ?)* |
| Kawakami | <ruby>25<rt>にじゅうご</rt></ruby>％ぐらいだよ。<ruby>2級<rt>にきゅう</rt></ruby>より<ruby>難<rt>むずか</rt></ruby>しい。<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>もあります。<br>*(Khoảng 25%. Khó hơn 2 級. Có cả phần thi thực hành.)* |
| Thái | すみません、「<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>」というのは？<br>*(Xin lỗi, "thi thực hành" là sao ạ?)* |
| Kawakami | <ruby>実際<rt>じっさい</rt></ruby>にCADソフトを<ruby>使<rt>つか</rt></ruby>って<ruby>3D<rt>さんディー</rt></ruby>モデルを<ruby>作<rt>つく</rt></ruby>る<ruby>試験<rt>しけん</rt></ruby>です。<ruby>制限<rt>せいげん</rt></ruby><ruby>時間内<rt>じかんない</rt></ruby>に<ruby>図面<rt>ずめん</rt></ruby>から<ruby>3D<rt>さんディー</rt></ruby>を<ruby>起<rt>お</rt></ruby>こします。<br>*(Là thi thực tế dùng phần mềm CAD để tạo mô hình 3D. Trong thời gian giới hạn phải dựng 3D từ bản vẽ.)* |
| Thái | なるほど、<ruby>図面<rt>ずめん</rt></ruby>から<ruby>3D<rt>さんディー</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るということですね。<ruby>普段<rt>ふだん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>と<ruby>似<rt>に</rt></ruby>ています。<br>*(Em hiểu rồi, dựng 3D từ bản vẽ. Giống việc hằng ngày nhỉ.)* |
| Kawakami | そう、<ruby>君<rt>きみ</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby>やっているから<ruby>有利<rt>ゆうり</rt></ruby>だよ。じゃあ、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>一<rt>いっ</rt></ruby><ruby>緒<rt>しょ</rt></ruby>に<ruby>解<rt>と</rt></ruby>きましょう。<ruby>週<rt>しゅう</rt></ruby>に<ruby>1回<rt>いっかい</rt></ruby>、<ruby>金曜日<rt>きんようび</rt></ruby>の<ruby>夕方<rt>ゆうがた</rt></ruby>でどう？<br>*(Đúng, em làm hằng ngày nên lợi thế. Vậy từ tháng sau hai anh em cùng giải đề cũ nhé. Tuần 1 lần, chiều thứ Sáu được không?)* |
| Thái | はい、ぜひお<ruby>願<rt>ねが</rt></ruby>いします。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em rất muốn nhờ anh. Mong anh chỉ bảo ạ.)* |

---

## Tình huống 9 — Phòng 201 · 1/2025 22:00, video call về Hà Nội (cảnh tiếng Việt)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê. Putra đi làm ca đêm nên Thái ở phòng một mình, gọi video về cho mẹ và Mai.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mẹ ơi, Mai ơi, con đỗ 3D CAD 2 級 rồi! 43/50 câu! |
| Mẹ Thái | (tiếng Việt) Ôi con trai mẹ! Mẹ mừng quá. Vất vả mấy tháng nay rồi. |
| Mai | (tiếng Việt) Em biết mà! Anh ôn cả tháng trời, không đỗ mới lạ. Có phần thưởng gì không? |
| Thái | (tiếng Việt) Có em. 工場長 Tanaka nói có phụ cấp chứng chỉ — họ gọi là 資格手当, mỗi tháng cộng 3.000 yên vào lương. Đỗ 1 級 thì lên 10.000 yên. |
| Mai | (tiếng Việt) Vậy sang năm anh thi 1 級 luôn chứ? |
| Thái | (tiếng Việt) Ừ, anh đăng ký tháng 12/2025. Mà 1 級 khó hơn nhiều — tỉ lệ đỗ chỉ 25%, lại có thêm phần thi thực hành. Họ gọi là 実技試験, phải dùng phần mềm CAD dựng mô hình 3D từ bản vẽ trong thời gian giới hạn. |
| Mẹ Thái | (tiếng Việt) Con đừng thức khuya quá. Sức khoẻ là trên hết. |
| Thái | (tiếng Việt) Vâng mẹ. Mà công việc hằng ngày con cũng dựng 3D mà, nên không lo lắm. Anh Kawakami — đàn anh thiết kế — hứa mỗi chiều thứ Sáu sẽ giải đề cùng con. |
| Mai | (tiếng Việt) Anh Kawakami tốt thế. Mai mốt em sang Nhật, nhớ dẫn em đi cảm ơn anh ấy. |
| Thái | (tiếng Việt) Ừ, chắc chắn rồi. Năm nay anh còn phải thi thêm 金型製作 2 級 và N2 nữa. Lộ trình kỹ sư thiết kế phải đầy đủ 3 cái: CAD 1 級 + 金型製作 1 級 + N2. |
| Mẹ Thái | (tiếng Việt) Cứ từ từ con. Mẹ với Mai đợi được. |
| Thái | (tiếng Việt) Vâng mẹ. Thôi con đi ngủ đây, mai 7 rưỡi xuống xưởng. Mẹ với em ngủ ngon. |

---

## Đọng lại chương 6

Trong hai tháng 12/2024 và 1/2025, Thái học được loạt mẫu câu giao tiếp quanh kỳ thi chuyên ngành Nhật: **báo cáo tiến độ ôn thi với 先輩** (<ruby>過去問<rt>かこもん</rt></ruby>を<ruby>解<rt>と</rt></ruby>きました・<ruby>正解率<rt>せいかいりつ</rt></ruby>は〜％), **hỏi lại thuật ngữ CAD** (アセンブリというのは？・<ruby>拘束<rt>こうそく</rt></ruby>というのは？), **làm thủ tục ở quầy lễ tân trung tâm thi** (<ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証明書<rt>みぶんしょうめいしょ</rt></ruby>), **nghe quy chế phòng thi của 監督官** (<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>は<ruby>70<rt>ななじゅう</rt></ruby>％・<ruby>携帯<rt>けいたい</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>・<ruby>途中<rt>とちゅう</rt></ruby><ruby>退室<rt>たいしつ</rt></ruby>), **báo cáo kết quả lên 工場長 qua điện thoại** (ご<ruby>報告<rt>ほうこく</rt></ruby>します・<ruby>合格<rt>ごうかく</rt></ruby>しました), và **xác nhận quyền lợi sau khi đỗ** (<ruby>資格<rt>しかく</rt></ruby><ruby>手当<rt>てあて</rt></ruby>・<ruby>合格<rt>ごうかく</rt></ruby><ruby>証書<rt>しょうしょ</rt></ruby>を<ruby>人事<rt>じんじ</rt></ruby>に<ruby>提出<rt>ていしゅつ</rt></ruby>). Đỗ **3次元CAD利用技術者試験 2級** với 43/50 câu (86%) là cột mốc đầu trên lộ trình **設計者** — sang năm phải vượt **1級** (tỷ lệ đỗ 25%, có thêm **実技試験** dựng 3D từ bản vẽ) cùng **金型製作 2級** và **JLPT N2**.

> Từ vựng & mẫu câu chương này: <ruby>3次元CAD利用技術者試験<rt>さんじげんキャドりようぎじゅつしゃしけん</rt></ruby>・<ruby>2級<rt>にきゅう</rt></ruby>・<ruby>1級<rt>いっきゅう</rt></ruby>・<ruby>過去問<rt>かこもん</rt></ruby>・<ruby>合格率<rt>ごうかくりつ</rt></ruby>・<ruby>合格基準<rt>ごうかくきじゅん</rt></ruby>・<ruby>正解率<rt>せいかいりつ</rt></ruby>・<ruby>形状定義<rt>けいじょうていぎ</rt></ruby>・コンストレイント・アセンブリ・<ruby>拘束<rt>こうそく</rt></ruby>・<ruby>面の一致<rt>めんのいっち</rt></ruby>・<ruby>実技試験<rt>じつぎしけん</rt></ruby>・<ruby>図面<rt>ずめん</rt></ruby>・<ruby>受験票<rt>じゅけんひょう</rt></ruby>・<ruby>身分証明書<rt>みぶんしょうめいしょ</rt></ruby>・<ruby>受験番号<rt>じゅけんばんごう</rt></ruby>・<ruby>入室<rt>にゅうしつ</rt></ruby>・<ruby>途中退室<rt>とちゅうたいしつ</rt></ruby>・<ruby>自己採点<rt>じこさいてん</rt></ruby>・<ruby>合格証書<rt>ごうかくしょうしょ</rt></ruby>・<ruby>資格手当<rt>しかくてあて</rt></ruby>・<ruby>朝礼<rt>ちょうれい</rt></ruby>・〜というのは？・〜ということですね・ご<ruby>報告<rt>ほうこく</rt></ruby>します・<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます

## Bí quyết chương

- **Lộ trình 設計者**: CAD 2 級 (12/2024 — chương này) → CAD 1 級 (12/2025) + 金型製作 1 級 + N2.
- **Sempai trong nghề**: 川上 (Kawakami) — sempai thiết kế, dạy Thái cách học bằng vẽ hình, hứa cùng giải đề cuối tuần.
- **Phụ cấp chứng chỉ**: 2 級 = 3.000 yên/tháng, 1 級 = 10.000 yên/tháng — động lực cụ thể.
- **VN nhà**: Mẹ + Mai (qua video call vì Putra đi ca đêm).

> *"12/2024. Đỗ 3D CAD 2 級. Mở cánh cửa設計者."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 準備 | じゅんび | CHUẨN BỊ | Chuẩn bị |
| 過去問 | かこもん | QUÁ KHỨ VẤN | Đề thi cũ |
| 正解率 | せいかいりつ | CHÍNH GIẢI SUẤT | Tỉ lệ đúng |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | Tỉ lệ đỗ |
| 合格 | ごうかく | HỢP CÁCH | Đỗ, đậu |
| 確実 | かくじつ | XÁC THỰC | Chắc chắn |
| 弱点 | じゃくてん | NHƯỢC ĐIỂM | Điểm yếu |
| 形状定義 | けいじょうていぎ | HÌNH TRẠNG ĐỊNH NGHĨA | Định nghĩa biên dạng |
| 用語 | ようご | DỤNG NGỮ | Thuật ngữ |
| 種類 | しゅるい | CHỦNG LOẠI | Loại |
| 水平 | すいへい | THỦY BÌNH | Ngang, nằm ngang |
| 垂直 | すいちょく | THÙY TRỰC | Thẳng đứng |
| 図 | ず | ĐỒ | Hình vẽ |
| 拘束 | こうそく | CÂU THÚC | Ràng buộc (constraint) |
| 組み立て | くみたて | TỔ LẬP | Lắp ráp |
| 面 | めん | DIỆN | Mặt |
| 一致 | いっち | NHẤT TRÍ | Khớp, trùng |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | Phiếu dự thi |
| 身分証明書 | みぶんしょうめいしょ | THÂN PHẬN CHỨNG MINH THƯ | Giấy tờ tùy thân |
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | Số báo danh |
| 会場 | かいじょう | HỘI TRƯỜNG | Khu thi, hội trường |
| 試験室 | しけんしつ | THÍ NGHIỆM THẤT | Phòng thi |
| 入室 | にゅうしつ | NHẬP THẤT | Vào phòng |
| 試験 | しけん | THÍ NGHIỆM | Kỳ thi |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | Tiêu chuẩn đỗ |
| 携帯電話 | けいたいでんわ | HUỀ ĐỚI ĐIỆN THOẠI | Điện thoại di động |
| 電卓 | でんたく | ĐIỆN TRÁC | Máy tính bỏ túi |
| 禁止 | きんし | CẤM CHỈ | Cấm |
| 鉛筆 | えんぴつ | DIÊN BÚT | Bút chì |
| 途中退室 | とちゅうたいしつ | ĐỒ TRUNG THỐI THẤT | Rời phòng giữa giờ |
| 解答用紙 | かいとうようし | GIẢI ĐÁP DỤNG CHỈ | Phiếu trả lời |
| 筆記用具 | ひっきようぐ | BÚT KÝ DỤNG CỤ | Dụng cụ viết |
| 自己採点 | じこさいてん | TỰ KỶ THẢI ĐIỂM | Tự chấm điểm |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | Công bố kết quả |
| 朝礼 | ちょうれい | TRIỀU LỄ | Họp sáng |
| 合格証書 | ごうかくしょうしょ | HỢP CÁCH CHỨNG THƯ | Giấy chứng nhận đỗ |
| 人事 | じんじ | NHÂN SỰ | Phòng nhân sự |
| 資格手当 | しかくてあて | TƯ CÁCH THỦ ĐƯƠNG | Phụ cấp chứng chỉ |
| 給料 | きゅうりょう | CẤP LIỆU | Lương |
| 受験 | じゅけん | THỤ NGHIỆM | Dự thi |
| 実技試験 | じつぎしけん | THỰC KỸ THÍ NGHIỆM | Thi thực hành |
| 制限時間 | せいげんじかん | CHẾ HẠN THỜI GIAN | Thời gian giới hạn |
| 有利 | ゆうり | HỮU LỢI | Có lợi thế |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000007, 800000016, NULL, 'markdown_book', 'T7. Chuẩn bị thi 金型製作 2 級 (金型製作2級準備)', '# Sách kỹ sư khuôn đúc · T7. Chuẩn bị thi 金型製作 2 級 (金型製作2級準備)

> **Mục tiêu nhân vật:** Thái (25 tuổi, Hà Nội) bước vào năm 3 tại 株式会社みなみ精密金型, chuẩn bị thi 金型製作 2 級 (chuyên ngành プラスチック成形用金型製作) tháng 3/2025. Học các mẫu hội thoại tiếng Nhật cấp công xưởng: hỏi cấp trên về cấu trúc kỳ thi chuyên ngành, hỏi lại lễ phép khi chưa hiểu thuật ngữ kỹ thuật (〜というのは?), báo cáo tiến độ luyện tập theo 報連相, xin phản hồi sau khi tự lắp khuôn (動作確認), nhận góp ý + đáp lễ khi đàn anh tinh chỉnh giúp, quan sát 先輩 thao tác mẫu trên slide-core, và chốt mạch nhân vật qua cuộc gọi tiếng Việt về quê.

---

## Bối cảnh

Tháng 1-2 năm 2025. Thái đã làm việc tại **株式会社みなみ精密金型** (Anjo, Aichi) sang năm thứ ba, trình độ tiếng Nhật N3 chuẩn bị thi N2. Anh Sakurai (先輩 phụ trách khuôn nhựa) trực tiếp kèm Thái cho kỳ thi 金型製作 技能検定 2 級 vào tháng 3. Chương này tập trung các mẫu câu hỏi đáp chuyên ngành khuôn nhựa: phân biệt 機械加工 vs 金型製作, gọi tên linh kiện (キャビ・コア・スライド・エジェクタピン・ガイドポスト), báo cáo kết quả 組立 + 動作確認, xin chỉnh sửa 調整 và cảm ơn 先輩 khi được hướng dẫn.

---

## Tình huống 1 — Phòng kỹ thuật · 17:30, Sakurai giải thích sự khác biệt giữa hai kỳ thi

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めるよ。<ruby>機械加工<rt>きかいかこう</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>うから、よく<ruby>聞<rt>き</rt></ruby>いてね。<br>*(Anh Thái, tháng sau mình bắt đầu luyện 金型製作 2 級 nhé. Khác với 機械加工, em nghe kỹ.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。どう<ruby>違<rt>ちが</rt></ruby>うんですか？<br>*(Vâng, em xin nhờ ạ. Khác như thế nào ạ?)* |
| Sakurai | <ruby>機械加工<rt>きかいかこう</rt></ruby>は<ruby>切削加工<rt>せっさくかこう</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>です。フライス、<ruby>旋盤<rt>せんばん</rt></ruby>で<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>削<rt>けず</rt></ruby>る<ruby>作業<rt>さぎょう</rt></ruby>ですね。<br>*(機械加工 trọng tâm là gia công cắt gọt. Là công đoạn phay, tiện để cắt vật liệu.)* |
| Thái | はい、<ruby>去年<rt>きょねん</rt></ruby><ruby>受<rt>う</rt></ruby>けました。<br>*(Vâng, năm ngoái em đã thi rồi ạ.)* |
| Sakurai | <ruby>金型製作<rt>かながたせいさく</rt></ruby>は<ruby>違<rt>ちが</rt></ruby>って、<ruby>組立<rt>くみたて</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>と<ruby>修正<rt>しゅうせい</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>になります。<ruby>削<rt>けず</rt></ruby>るより<ruby>合<rt>あ</rt></ruby>わせる<ruby>仕事<rt>しごと</rt></ruby>だよ。<br>*(金型製作 thì khác, trọng tâm là lắp ráp, tinh chỉnh và sửa. Là công việc "ghép" hơn là "cắt".)* |
| Thái | すみません、「<ruby>調整<rt>ちょうせい</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "chousei" cụ thể là gì ạ?)* |
| Sakurai | <ruby>部品<rt>ぶひん</rt></ruby>を<ruby>組<rt>く</rt></ruby>んだ<ruby>後<rt>あと</rt></ruby>、<ruby>動<rt>うご</rt></ruby>きが<ruby>固<rt>かた</rt></ruby>かったり、すき<ruby>間<rt>ま</rt></ruby>がずれていたりするでしょう？それを<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>合<rt>あ</rt></ruby>わせて、<ruby>滑<rt>なめ</rt></ruby>らかに<ruby>動<rt>うご</rt></ruby>くようにすることです。<br>*(Sau khi lắp linh kiện, chuyển động sẽ sượng hoặc khe hở lệch nhỉ? Là chỉnh từng chút một để nó chạy mượt.)* |
| Thái | なるほど、<ruby>組<rt>く</rt></ruby>んだ<ruby>後<rt>あと</rt></ruby>に<ruby>動<rt>うご</rt></ruby>きを<ruby>合<rt>あ</rt></ruby>わせる<ruby>作業<rt>さぎょう</rt></ruby>ということですね。メモします。<br>*(Em hiểu rồi, là công đoạn ghép chuyển động sau khi lắp ạ. Em ghi lại.)* |

---

## Tình huống 2 — Phòng kỹ thuật · 18:00, hỏi về cấu trúc phần thực hành

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>何時間<rt>なんじかん</rt></ruby>ですか？<br>*(Anh Sakurai, phần thi thực hành mấy tiếng ạ?)* |
| Sakurai | <ruby>4時間<rt>よじかん</rt></ruby>です。<ruby>製作等作業試験<rt>せいさくとうさぎょうしけん</rt></ruby>と<ruby>要素試験<rt>ようそしけん</rt></ruby>の<ruby>二<rt>ふた</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>かれています。<br>*(4 tiếng. Chia làm hai phần: thi thao tác chế tạo và thi yếu tố.)* |
| Thái | <ruby>製作等作業試験<rt>せいさくとうさぎょうしけん</rt></ruby>では<ruby>何<rt>なに</rt></ruby>をやりますか？<br>*(Phần thi chế tạo thì làm gì ạ?)* |
| Sakurai | <ruby>立<rt>たて</rt></ruby>フライスで<ruby>手加工<rt>てかこう</rt></ruby>します。<ruby>課題<rt>かだい</rt></ruby>は<ruby>R<rt>アール</rt></ruby><ruby>加工<rt>かこう</rt></ruby>と<ruby>溝加工<rt>みぞかこう</rt></ruby>です。<br>*(Phay đứng thủ công. Đề là gia công R và gia công rãnh.)* |
| Thái | すみません、「<ruby>要素試験<rt>ようそしけん</rt></ruby>」というのは？<br>*(Xin lỗi, "youso shiken" nghĩa là gì ạ?)* |
| Sakurai | <ruby>金型<rt>かながた</rt></ruby>の<ruby>主<rt>おも</rt></ruby>な<ruby>部品<rt>ぶひん</rt></ruby>を<ruby>組<rt>く</rt></ruby>んで、<ruby>動作確認<rt>どうさかくにん</rt></ruby>する<ruby>試験<rt>しけん</rt></ruby>です。キャビ、コア、スライド、エジェクタピン、ガイドポスト — この<ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>。<br>*(Là phần thi lắp các linh kiện chính của khuôn rồi kiểm tra hoạt động. 5 thứ là trọng tâm: cavity, core, slide, chốt đẩy, chốt dẫn hướng.)* |
| Thái | エジェクタピンとガイドポストの<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Chốt đẩy và chốt dẫn hướng khác nhau thế nào ạ?)* |
| Sakurai | エジェクタピンは<ruby>製品<rt>せいひん</rt></ruby>を<ruby>金型<rt>かながた</rt></ruby>から<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>すピン。ガイドポストはキャビとコアを<ruby>正<rt>ただ</rt></ruby>しい<ruby>位置<rt>いち</rt></ruby>で<ruby>合<rt>あ</rt></ruby>わせる<ruby>柱<rt>はしら</rt></ruby>です。<ruby>役割<rt>やくわり</rt></ruby>が<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>うよ。<br>*(Chốt đẩy là chốt đẩy sản phẩm ra khỏi khuôn. Chốt dẫn hướng là cột giữ cavity và core khớp đúng vị trí. Vai trò khác hẳn nhau.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>製品<rt>せいひん</rt></ruby>を<ruby>押<rt>お</rt></ruby>し<ruby>出<rt>だ</rt></ruby>すのと、<ruby>位置<rt>いち</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせるの、ということですね。<br>*(Em hiểu rồi. Một cái để đẩy sản phẩm ra, một cái để khớp vị trí ạ.)* |

---

## Tình huống 3 — Xưởng · 14:00 thứ Bảy, Sakurai làm mẫu thao tác slide-core (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、まず<ruby>俺<rt>おれ</rt></ruby>が<ruby>一回<rt>いっかい</rt></ruby><ruby>組<rt>く</rt></ruby>んで<ruby>見<rt>み</rt></ruby>せるから、よく<ruby>見<rt>み</rt></ruby>ていて。<br>*(Thái, anh lắp một lượt cho em xem trước, em quan sát kỹ.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em xin nhờ ạ.)* |
| Sakurai | （ガイドポストを<ruby>立<rt>た</rt></ruby>てる）まず<ruby>位置<rt>いち</rt></ruby>を<ruby>決<rt>き</rt></ruby>めるのはガイドポストから。これがずれると<ruby>全部<rt>ぜんぶ</rt></ruby>ずれる。<br>*(Dựng chốt dẫn hướng. Đầu tiên xác định vị trí bằng chốt dẫn hướng. Cái này lệch là cả bộ lệch.)* |
| Thái | （メモを<ruby>取<rt>と</rt></ruby>る）<ruby>基準<rt>きじゅん</rt></ruby>はガイドポスト、と。<br>*(Ghi chú. Chuẩn là chốt dẫn hướng, ạ.)* |
| Sakurai | <ruby>次<rt>つぎ</rt></ruby>にコアを<ruby>入<rt>い</rt></ruby>れて、スライドを<ruby>横<rt>よこ</rt></ruby>から<ruby>差<rt>さ</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む。スライドは<ruby>無理<rt>むり</rt></ruby>に<ruby>押<rt>お</rt></ruby>し<ruby>込<rt>こ</rt></ruby>むと<ruby>傷<rt>きず</rt></ruby>がつくから、<ruby>軽<rt>かる</rt></ruby>く<ruby>持<rt>も</rt></ruby>って<ruby>滑<rt>すべ</rt></ruby>らせる<ruby>感<rt>かん</rt></ruby>じ。<br>*(Tiếp theo cho core vào, rồi cài slide từ bên hông. Ép mạnh là xước, nên cầm nhẹ rồi trượt vào.)* |
| Thái | <ruby>力<rt>ちから</rt></ruby>を<ruby>入<rt>い</rt></ruby>れずに<ruby>滑<rt>すべ</rt></ruby>らせる、ということですね。<br>*(Không dùng sức, để nó trượt vào ạ.)* |
| Sakurai | そう。<ruby>最後<rt>さいご</rt></ruby>にエジェクタピンをセットして、<ruby>手<rt>て</rt></ruby>で<ruby>動<rt>うご</rt></ruby>かして<ruby>確認<rt>かくにん</rt></ruby>する。スムーズに<ruby>戻<rt>もど</rt></ruby>ればOK。<br>*(Đúng. Cuối cùng lắp chốt đẩy, dùng tay đẩy thử. Nếu trả về mượt là OK.)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>手<rt>て</rt></ruby>の<ruby>動<rt>うご</rt></ruby>き、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>速<rt>はや</rt></ruby>いですね。<br>*(Tay anh Sakurai thật sự nhanh quá.)* |
| Sakurai | <ruby>10年<rt>じゅうねん</rt></ruby>やってるからね。タイ<ruby>君<rt>くん</rt></ruby>も<ruby>毎週<rt>まいしゅう</rt></ruby>やれば<ruby>必<rt>かなら</rt></ruby>ずできるようになるよ。<br>*(Anh làm 10 năm rồi mà. Em mỗi tuần tập là chắc chắn làm được.)* |

---

## Tình huống 4 — Xưởng · 1 tuần sau, 11:00, Thái tự lắp và báo cáo kết quả

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>金型部品<rt>かながたぶひん</rt></ruby>を<ruby>並<rt>なら</rt></ruby>べる）ガイドポストから<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Bày linh kiện. Em bắt đầu từ chốt dẫn hướng.)* |
| Thái | （<ruby>1時間後<rt>いちじかんご</rt></ruby>）<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>組立<rt>くみたて</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>動作確認<rt>どうさかくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(1 tiếng sau. Anh Sakurai, em đã lắp xong rồi ạ. Nhờ anh kiểm tra hoạt động giúp ạ.)* |
| Sakurai | （<ruby>手<rt>て</rt></ruby>で<ruby>動<rt>うご</rt></ruby>かす）うーん、スライドの<ruby>動<rt>うご</rt></ruby>きが<ruby>固<rt>かた</rt></ruby>いね。<ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だ。<br>*(Đẩy bằng tay. Hừm, slide chạy sượng. Cần tinh chỉnh.)* |
| Thái | どこを<ruby>直<rt>なお</rt></ruby>せばいいですか？<br>*(Em nên sửa chỗ nào ạ?)* |
| Sakurai | スライドの<ruby>当<rt>あ</rt></ruby>たり<ruby>面<rt>めん</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>い。キサゲで<ruby>0.05<rt>れいてんれいご</rt></ruby><ruby>ミリ<rt>みり</rt></ruby>ぐらい<ruby>落<rt>お</rt></ruby>としてみて。<br>*(Mặt tiếp xúc của slide hơi cao. Dùng dao cạo (kisage) hạ xuống khoảng 0,05mm thử xem.)* |
| Thái | はい、やってみます。（<ruby>調整<rt>ちょうせい</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>）<br>*(Vâng, em thử ạ. Thao tác tinh chỉnh.)* |
| Thái | （<ruby>3分後<rt>さんぷんご</rt></ruby>）<ruby>再<rt>さい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。（<ruby>動<rt>うご</rt></ruby>かす）あ、<ruby>滑<rt>なめ</rt></ruby>らかになりました！<br>*(3 phút sau. Em kiểm tra lại. Đẩy thử. A, mượt rồi!)* |
| Sakurai | <ruby>良<rt>よ</rt></ruby>くなったね。この<ruby>感覚<rt>かんかく</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えておいて。<ruby>試験<rt>しけん</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じだから。<br>*(Tốt hơn rồi. Nhớ cảm giác này. Vào thi thật cũng vậy.)* |
| Thái | はい、ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vâng, em cảm ơn anh. Em học hỏi được nhiều ạ.)* |

---

## Tình huống 5 — Phòng kỹ thuật · 17:00, Sakurai động viên 2 tuần trước thi

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>2級<rt>にきゅう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>？<br>*(Anh Thái, luyện 2 級 có thuận lợi không?)* |
| Thái | はい、おかげさまで。これまで<ruby>3<rt>さん</rt></ruby><ruby>組<rt>くみ</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>を<ruby>組<rt>く</rt></ruby>みました。<br>*(Vâng, nhờ anh ạ. Đến giờ em đã lắp xong 3 bộ khuôn.)* |
| Sakurai | <ruby>調整<rt>ちょうせい</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>は<ruby>速<rt>はや</rt></ruby>くなった？<br>*(Thời gian tinh chỉnh nhanh hơn chưa?)* |
| Thái | はい。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>10分<rt>じゅっぷん</rt></ruby>かかっていましたが、<ruby>今<rt>いま</rt></ruby>は<ruby>3分<rt>さんぷん</rt></ruby>でできるようになりました。<br>*(Vâng. Lúc đầu mất 10 phút, giờ em làm được trong 3 phút.)* |
| Sakurai | <ruby>素晴<rt>すば</rt></ruby>らしい。それなら<ruby>本番<rt>ほんばん</rt></ruby>の<ruby>4時間<rt>よじかん</rt></ruby>でも<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>うね。<ruby>合格<rt>ごうかく</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>だよ。<br>*(Tuyệt vời. Vậy 4 tiếng thi thật là kịp dư sức. Đỗ chắc rồi.)* |
| Thái | ありがとうございます。あと、<ruby>気<rt>き</rt></ruby>をつけたほうがいいことは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Em cảm ơn ạ. Còn điều gì em nên chú ý ạ?)* |
| Sakurai | <ruby>試験官<rt>しけんかん</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>でも<ruby>慌<rt>あわ</rt></ruby>てない。<ruby>分<rt>わ</rt></ruby>からないことがあったら、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>進<rt>すす</rt></ruby>めること。<ruby>報連相<rt>ほうれんそう</rt></ruby>は<ruby>試験中<rt>しけんちゅう</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ。<br>*(Đừng cuống trước giám khảo. Có gì không hiểu thì xác nhận rồi mới làm tiếp. 報連相 trong khi thi cũng vậy.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 6 — Ký túc phòng 201 · 22:00, Putra hỏi chuyện luyện thi

| Vai | Lời thoại |
|---|---|
| Putra | タイさん、また<ruby>本<rt>ほん</rt></ruby><ruby>開<rt>ひら</rt></ruby>いてる。<ruby>今度<rt>こんど</rt></ruby>は<ruby>何<rt>なん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>？<br>*(Anh Thái, lại mở sách rồi. Lần này học gì thế?)* |
| Thái | <ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>のテキストです。<ruby>3月<rt>さんがつ</rt></ruby>に<ruby>受験<rt>じゅけん</rt></ruby>します。<br>*(Sách 金型製作 2 級 ạ. Tháng 3 em sẽ thi.)* |
| Putra | え！<ruby>去年<rt>きょねん</rt></ruby><ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>3級<rt>さんきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>ったばかりじゃない？<br>*(Hả! Năm ngoái anh vừa lấy 機械加工 3 級 mà?)* |
| Thái | そうです。でも<ruby>金型<rt>かながた</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>は<ruby>機械加工<rt>きかいかこう</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>って、<ruby>組立<rt>くみたて</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>中心<rt>ちゅうしん</rt></ruby>だから、<ruby>別<rt>べつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đúng vậy. Nhưng 金型 2 級 khác 機械加工, trọng tâm là lắp ráp và tinh chỉnh, nên phải luyện cái khác.)* |
| Putra | タイさん、<ruby>今年<rt>ことし</rt></ruby>は<ruby>資格<rt>しかく</rt></ruby>を<ruby>何<rt>いく</rt></ruby>つ<ruby>取<rt>と</rt></ruby>るつもり？<br>*(Anh Thái, năm nay anh định lấy mấy chứng chỉ?)* |
| Thái | <ruby>3<rt>みっ</rt></ruby>つです。3D CAD <ruby>利用<rt>りよう</rt></ruby><ruby>技術者<rt>ぎじゅつしゃ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と、<ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>と、<ruby>日本語能力試験<rt>にほんごのうりょくしけん</rt></ruby>N<ruby>2<rt>に</rt></ruby>。<br>*(3 cái ạ. Thi 3D CAD, 金型製作 2 級, và JLPT N2.)* |
| Putra | <ruby>凄<rt>すご</rt></ruby>い！<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>3<rt>さん</rt></ruby>つも？<br>*(Tuyệt! Một năm tận 3 cái?)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>設計者<rt>せっけいしゃ</rt></ruby>になるという<ruby>目標<rt>もくひょう</rt></ruby>があるから、<ruby>頑張<rt>がんば</rt></ruby>らないと。<br>*(Vì em có mục tiêu sau 5 năm thành kỹ sư thiết kế, nên phải cố.)* |
| Putra | 応援するよ。<ruby>分<rt>わ</rt></ruby>からないことがあったら<ruby>聞<rt>き</rt></ruby>いてね、<ruby>俺<rt>おれ</rt></ruby>は<ruby>機械加工<rt>きかいかこう</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby><ruby>持<rt>も</rt></ruby>ってるから。<br>*(Tớ ủng hộ. Có gì không hiểu hỏi tớ, tớ có 機械加工 2 級.)* |
| Thái | ありがとう、プトラさん。<br>*(Cảm ơn anh Putra.)* |

---

## Tình huống 7 — Phòng 201 · 23:00, gọi điện về cho Mai (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & người yêu ở quê.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh, sắp Tết rồi, anh về một tuần đúng không? |
| Thái | (tiếng Việt) Ừ em. Anh xin nghỉ rồi, ngày 27 âm bay. Trước đó anh phải xong vòng luyện cuối với anh Sakurai. |
| Mai | (tiếng Việt) Anh Sakurai là người dạy anh lắp khuôn đấy à? |
| Thái | (tiếng Việt) Ừ. Hôm nay anh ấy chỉ anh cách lắp slide-core và エジェクタピン. Em biết không, lúc đầu anh lắp xong, slide chạy sượng — anh ấy bảo dùng dao cạo (キサゲ) hạ xuống 0,05mm là chạy mượt. Lạ lắm, sai chỉ 5/100 mm thôi mà cảm nhận được rõ. |
| Mai | (tiếng Việt) Nghề này tỉ mỉ ghê. Mà 金型製作 2 級 khó hơn 機械加工 3 級 không anh? |
| Thái | (tiếng Việt) Khác hẳn em. Cái 機械加工 là cắt gọt — phay, tiện. Cái 金型製作 là 組立 + 調整 + 修正, tức là lắp + tinh chỉnh + sửa. Một bên "cắt", một bên "ghép". |
| Mai | (tiếng Việt) Anh nói trôi chảy ghê. Anh học chăm thật đấy. Em ở nhà sẽ chuẩn bị Tết cho hai mẹ. |
| Thái | (tiếng Việt) Cảm ơn em. Còn 2 tuần nữa thi xong, anh bay. Anh đi ngủ nhé, mai 7 giờ rưỡi xuống xưởng. |
| Mai | (tiếng Việt) Vâng, anh ngủ ngon. Yêu anh. |

---

## Đọng lại chương 7

Năm thứ ba ở 株式会社みなみ精密金型, Thái bước sang giai đoạn chuyên ngành sâu: chuẩn bị thi **金型製作 2 級** với trọng tâm hoàn toàn khác **機械加工** — không còn là **切削加工** (phay/tiện) mà là **組立 + 調整 + 修正** (lắp ráp + tinh chỉnh + sửa). Anh học cách gọi tên 5 linh kiện chính của khuôn nhựa: **キャビ・コア・スライド・エジェクタピン・ガイドポスト**, phân biệt vai trò "đẩy sản phẩm" vs "khớp vị trí". Quan sát anh Sakurai làm mẫu, Thái nhập được nguyên tắc lớn: dựng **ガイドポスト** trước làm chuẩn, slide thì **滑らせる** chứ không ép, cuối cùng **動作確認** bằng tay. Khi tự lắp sai, anh học mẫu câu **報告 + 動作確認をお願いします** và biết xin chỉ dẫn cụ thể (どこを直せばいいですか?). Sakurai dạy thêm: kể cả trước **試験官**, **報連相** vẫn là nguyên tắc — không hiểu là **確認してから進める**. Mọi thứ chốt lại bằng cuộc gọi cho Mai cuối ngày, nơi Thái diễn giải lại tiếng Việt để chính mình hiểu sâu hơn.

> Từ vựng & mẫu câu chương này: 金型製作・2級・機械加工・切削加工・組立・調整・修正・キャビ・コア・スライド・エジェクタピン・ガイドポスト・立フライス・手加工・R加工・溝加工・製作等作業試験・要素試験・動作確認・滑らか・キサゲ・基準・試験官・報連相・〜というのは・〜ということですね・動作確認をお願いします・どこを直せばいいですか・合格確実

## Bí quyết chương

- **Khởi đầu chuyên ngành sâu**: Sách 16 năm 3 — Thái rẽ nhánh chuyên 金型 nhựa, không chỉ là kỹ sư khuôn chung chung. Kết quảoff trong sách 17-18 (設計者).
- **Sakurai (先輩 khuôn nhựa)**: 10 năm kinh nghiệm, mentor giai đoạn năm 3-4 — thay vai trò 工場長 Tanaka trong sách 14.
- **3 chứng chỉ năm 3**: 3D CAD + 金型 2 級 + N2 — chốt mục tiêu mục "kỹ sư thiết kế sau 5 năm".
- **Mai về Tết**: thread tình cảm gần như cuối sách 16, mở đường sách 17 (đính hôn / cưới?).

> *"2/2025. Chuẩn bị thi 金型製作 2 級. 5 năm visa còn 2 năm rưỡi. Mai đợi."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 金型製作 | かながたせいさく | KIM HÌNH CHẾ TÁC | Chế tác khuôn đúc |
| 機械加工 | きかいかこう | CƠ GIỚI GIA CÔNG | Gia công cơ khí |
| 練習 | れんしゅう | LUYỆN TẬP | Luyện tập |
| 切削加工 | せっさくかこう | THIẾT TƯỚC GIA CÔNG | Gia công cắt gọt |
| 旋盤 | せんばん | TOÀN BÀN | Máy tiện |
| 削る | けずる | TƯỚC | Cắt, gọt, mài |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | Cụ thể |
| 滑らか | なめらか | HOẠT | Mượt, trơn |
| 製作等作業試験 | せいさくとうさぎょうしけん | CHẾ TÁC ĐẲNG TÁC NGHIỆP THÍ NGHIỆM | Thi thao tác chế tạo |
| 要素試験 | ようそしけん | YẾU TỐ THÍ NGHIỆM | Thi yếu tố |
| 立フライス | たてフライス | LẬP | Máy phay đứng |
| 手加工 | てかこう | THỦ GIA CÔNG | Gia công thủ công |
| 課題 | かだい | KHÓA ĐỀ | Đề bài |
| 溝加工 | みぞかこう | CÂU GIA CÔNG | Gia công rãnh |
| 動作確認 | どうさかくにん | ĐỘNG TÁC XÁC NHẬN | Kiểm tra hoạt động |
| 位置 | いち | VỊ TRÍ | Vị trí |
| 押し出す | おしだす | ÁP XUẤT | Đẩy ra |
| 柱 | はしら | TRỤ | Cột |
| 力 | ちから | LỰC | Sức, lực |
| 傷 | きず | THƯƠNG | Vết xước |
| 滑らせる | すべらせる | HOẠT | Trượt vào |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 当たり面 | あたりめん | ĐƯƠNG DIỆN | Mặt tiếp xúc |
| キサゲ | キサゲ | — | Dao cạo |
| 再確認 | さいかくにん | TÁI XÁC NHẬN | Kiểm tra lại |
| 感覚 | かんかく | CẢM GIÁC | Cảm giác |
| 本番 | ほんばん | BẢN PHIÊN | Thi thật, biểu diễn thật |
| 順調 | じゅんちょう | THUẬN ĐIỀU | Thuận lợi |
| 試験官 | しけんかん | THÍ NGHIỆM QUAN | Giám khảo |
| 慌てる | あわてる | HOẢNG | Cuống, hoảng |
| 資格 | しかく | TƯ CÁCH | Chứng chỉ |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000008, 800000016, NULL, 'markdown_book', 'T8. Lần đầu gặp Hamada Toyota Tier-1 — keigo căng thẳng (浜田課長初対面)', '# Sách kỹ sư khuôn đúc · T8. Lần đầu gặp Hamada Toyota Tier-1 — keigo căng thẳng (浜田課長初対面)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội) — kỹ sư thiết kế khuôn năm thứ 3 tại Anjo — lần đầu tiếp khách Toyota Tier-1. Học các mẫu hội thoại tiếng Nhật cấp độ keigo thương vụ: tự giới thiệu khiêm ngữ (〜と申します・〜しております), chào khách bằng いつもお世話になっております, trao danh thiếp hai tay đúng nghi thức, đáp lời cấp trên khách giao việc (承知いたしました・取り組ませていただきます), xác nhận納期 và仕様書 trong họp, hỏi lại lễ phép từ chuyên ngành (〜というのは・〜のことでしょうか), và quan sát 上司 Kawakami làm mẫu ứng xử商談.

---

## Bối cảnh

Tháng 3 năm 2025. Thái đã làm việc tại **株式会社みなみ精密金型** được gần 3 năm, vừa được giao làm thiết kế chính dự án khuôn door trim. Hôm nay 浜田課長 — chủ nhiệm bên Toyota車体 (Tier-1) — đến thăm văn phòng họp 1 tiếng. Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu keigo trang trọng dùng khi tiếp khách lớn: tự giới thiệu khiêm ngữ, trao danh thiếp, đáp lệnh khách, xác nhận điều kiện hợp đồng và hỏi lại lễ phép.

---

## Tình huống 1 — Bàn làm việc Kawakami · 8:30, được cấp trên dặn dò trước khi tiếp khách

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>10時<rt>じゅうじ</rt></ruby>に<ruby>客先<rt>きゃくさき</rt></ruby>が<ruby>来訪<rt>らいほう</rt></ruby>されます。<ruby>準備<rt>じゅんび</rt></ruby>はできていますか？<br>*(Anh Thái, 10h hôm nay khách đến thăm. Đã chuẩn bị xong chưa?)* |
| Thái | はい、<ruby>図面<rt>ずめん</rt></ruby>は<ruby>昨夜<rt>さくや</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>げました。<ruby>本日<rt>ほんじつ</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>はどなたですか？<br>*(Vâng, bản vẽ em hoàn thành tối qua. Khách hôm nay là ai vậy ạ?)* |
| Kawakami | トヨタ<ruby>車体<rt>しゃたい</rt></ruby>の<ruby>浜田<rt>はまだ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>です。トヨタ<ruby>系<rt>けい</rt></ruby><ruby>1次<rt>いちじ</rt></ruby>サプライヤーで、<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>一番大事<rt>いちばんだいじ</rt></ruby>な<ruby>客先<rt>きゃくさき</rt></ruby>です。<br>*(Là chủ nhiệm Hamada bên Toyota Shatai. Hãng cấp 1 hệ Toyota, là khách quan trọng nhất của công ty mình.)* |
| Thái | <ruby>1次<rt>いちじ</rt></ruby>サプライヤー…<ruby>緊張<rt>きんちょう</rt></ruby>します。<br>*(Hãng cấp 1… em hồi hộp quá.)* |
| Kawakami | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>俺<rt>おれ</rt></ruby>が<ruby>主<rt>しゅ</rt></ruby>に<ruby>応対<rt>おうたい</rt></ruby>します。<ruby>君<rt>きみ</rt></ruby>は<ruby>挨拶<rt>あいさつ</rt></ruby>と<ruby>図面<rt>ずめん</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Không sao. Tôi tiếp chính. Em phụ trách câu chào và phần giải thích bản vẽ.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>挨拶<rt>あいさつ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しておきます。<br>*(Vâng, em đã rõ ạ. Em sẽ tập câu chào trước.)* |
| Kawakami | <ruby>客先<rt>きゃくさき</rt></ruby>には<ruby>敬語<rt>けいご</rt></ruby>でね。「<ruby>申<rt>もう</rt></ruby>します」「いたします」「おります」を<ruby>使<rt>つか</rt></ruby>ってください。<br>*(Với khách thì dùng kính ngữ nhé. Hãy dùng "申します", "いたします", "おります".)* |
| Thái | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ chú ý ạ.)* |

---

## Tình huống 2 — Bàn Sakurai · 9:00, quan sát đàn anh dạy mẫu chào khách + trao danh thiếp

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>客先<rt>きゃくさき</rt></ruby>への<ruby>第<rt>だい</rt></ruby><ruby>一声<rt>いっせい</rt></ruby>はとても<ruby>大事<rt>だいじ</rt></ruby>です。<ruby>一度<rt>いちど</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>練習<rt>れんしゅう</rt></ruby>しましょう。<br>*(Anh Thái, câu chào đầu tiên với khách rất quan trọng. Mình cùng tập một lần nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nhờ anh ạ.)* |
| Sakurai | フルセンテンスはこうです：「<ruby>初<rt>はじ</rt></ruby>めまして、グエン・タイと<ruby>申<rt>もう</rt></ruby>します。<ruby>金型設計<rt>かながたせっけい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しております。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」。<br>*(Cả câu là thế này: "Hân hạnh, em là Nguyễn Thái. Em phụ trách thiết kế khuôn. Rất mong được anh giúp đỡ".)* |
| Thái | （<ruby>復唱<rt>ふくしょう</rt></ruby>）「<ruby>初<rt>はじ</rt></ruby>めまして、グエン・タイと<ruby>申<rt>もう</rt></ruby>します。<ruby>金型設計<rt>かながたせっけい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しております。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」。<br>*(Lặp lại. "Hân hạnh, em là Nguyễn Thái. Em phụ trách thiết kế khuôn. Rất mong được anh giúp đỡ".)* |
| Sakurai | いいですね！もう<ruby>少<rt>すこ</rt></ruby>しゆっくり、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げながら<ruby>言<rt>い</rt></ruby>ってください。<br>*(Tốt đấy! Nói chậm thêm một chút, và vừa cúi đầu vừa nói nhé.)* |
| Thái | はい。すみません、「<ruby>担当<rt>たんとう</rt></ruby>しております」というのは「<ruby>担当<rt>たんとう</rt></ruby>しています」の<ruby>敬語<rt>けいご</rt></ruby>ということでしょうか？<br>*(Vâng. Xin lỗi anh, "担当しております" có phải là dạng kính ngữ của "担当しています" không ạ?)* |
| Sakurai | そうです。「おります」は「います」の<ruby>謙譲語<rt>けんじょうご</rt></ruby>です。<ruby>自分<rt>じぶん</rt></ruby>のことを<ruby>下<rt>した</rt></ruby>げて<ruby>言<rt>い</rt></ruby>う<ruby>表現<rt>ひょうげん</rt></ruby>ですね。<br>*(Đúng rồi. "おります" là khiêm nhường ngữ của "います". Là cách nói hạ thấp bản thân.)* |
| Thái | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ra vậy, em hiểu rõ rồi ạ.)* |
| Sakurai | （<ruby>名刺<rt>めいし</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>す）<ruby>名刺<rt>めいし</rt></ruby>は<ruby>両手<rt>りょうて</rt></ruby>でお<ruby>渡<rt>わた</rt></ruby>しします。<ruby>文字<rt>もじ</rt></ruby>が<ruby>相手<rt>あいて</rt></ruby>に<ruby>向<rt>む</rt></ruby>くようにね。<br>*(Lấy danh thiếp ra. Danh thiếp phải đưa bằng hai tay. Chữ quay về phía đối phương nhé.)* |
| Thái | （<ruby>真似<rt>まね</rt></ruby>する）こうですか？<br>*(Bắt chước. Như này phải không ạ?)* |
| Sakurai | はい。そして<ruby>相手<rt>あいて</rt></ruby>の<ruby>目<rt>め</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>った<ruby>名刺<rt>めいし</rt></ruby>はすぐにしまわず、テーブルの<ruby>上<rt>うえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>きます。<br>*(Đúng. Và nhớ nhìn vào mắt đối phương. Danh thiếp nhận được không cất ngay, đặt lên mặt bàn.)* |
| Thái | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。ありがとうございます。<br>*(Vâng, em nhớ rồi. Em cảm ơn anh ạ.)* |

---

## Tình huống 3 — Sảnh tiếp khách · 10:00, lần đầu chào Hamada và trao danh thiếp

| Vai | Lời thoại |
|---|---|
| Lễ tân | <ruby>浜田<rt>はまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>がいらっしゃいました。<br>*(Khách Hamada đã đến.)* |
| Kawakami | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）はい、<ruby>会議室<rt>かいぎしつ</rt></ruby>へお<ruby>通<rt>とお</rt></ruby>しください。<br>*(Đứng dậy. Vâng, mời khách vào phòng họp giúp tôi.)* |
| Hamada | （<ruby>会議室<rt>かいぎしつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る）こんにちは。トヨタ<ruby>車体<rt>しゃたい</rt></ruby>の<ruby>浜田<rt>はまだ</rt></ruby>です。<br>*(Vào phòng họp. Xin chào. Tôi là Hamada bên Toyota Shatai.)* |
| Kawakami | カワカミでございます。いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきまして、ありがとうございます。<br>*(Tôi là Kawakami. Cảm ơn anh đã luôn quan tâm. Hôm nay cảm ơn anh đã quá bộ tới ạ.)* |
| Hamada | こちらこそ。いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Tôi mới phải cảm ơn. Cảm ơn anh đã luôn quan tâm.)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がり、<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げ、<ruby>両手<rt>りょうて</rt></ruby>で<ruby>名刺<rt>めいし</rt></ruby>を<ruby>差<rt>さ</rt></ruby>し<ruby>出<rt>だ</rt></ruby>す）<ruby>初<rt>はじ</rt></ruby>めまして、グエン・タイと<ruby>申<rt>もう</rt></ruby>します。<ruby>金型設計<rt>かながたせっけい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しております。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đứng dậy, cúi đầu, hai tay đưa danh thiếp. Hân hạnh, em là Nguyễn Thái. Em phụ trách thiết kế khuôn. Rất mong được anh giúp đỡ ạ.)* |
| Hamada | （<ruby>名刺<rt>めいし</rt></ruby>を<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）<ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。あ、<ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>の<ruby>設計者<rt>せっけいしゃ</rt></ruby>ですか？<ruby>珍<rt>めずら</rt></ruby>しいですね。<br>*(Hai tay nhận danh thiếp. Xin nhận. À, kỹ sư thiết kế người nước ngoài à? Hiếm gặp đấy.)* |
| Thái | はい、ベトナムから<ruby>参<rt>まい</rt></ruby>りました。こちらに<ruby>来<rt>き</rt></ruby>て<ruby>3年<rt>さんねん</rt></ruby>になります。<br>*(Vâng, em sang từ Việt Nam ạ. Em đến đây được 3 năm rồi.)* |
| Hamada | <ruby>3年<rt>さんねん</rt></ruby>でメイン<ruby>設計<rt>せっけい</rt></ruby>とは、よく<ruby>頑張<rt>がんば</rt></ruby>っていますね。<br>*(3 năm đã làm thiết kế chính, cố gắng tốt đấy.)* |
| Thái | ありがとうございます。<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<br>*(Em cảm ơn anh ạ. Em không dám nhận lời khen ạ.)* |

---

## Tình huống 4 — Phòng họp · 10:15, Hamada trình bày dự án + xác nhận納期

| Vai | Lời thoại |
|---|---|
| Hamada | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは、<ruby>新型<rt>しんがた</rt></ruby>ドアトリム<ruby>金型<rt>かながた</rt></ruby>の<ruby>新規設計<rt>しんきせっけい</rt></ruby>です。<ruby>仕様書<rt>しようしょ</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>にお<ruby>送<rt>おく</rt></ruby>りした<ruby>通<rt>とお</rt></ruby>りです。<br>*(Đề tài hôm nay là thiết kế mới khuôn door trim cho mẫu xe mới. Bản đặc tả như đã gửi trước.)* |
| Kawakami | <ruby>仕様書<rt>しようしょ</rt></ruby>は<ruby>拝見<rt>はいけん</rt></ruby>いたしました。<ruby>当方<rt>とうほう</rt></ruby>でも<ruby>検討<rt>けんとう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めております。<br>*(Bên em đã xem qua bản đặc tả. Bên em cũng đang xem xét tiến hành ạ.)* |
| Hamada | <ruby>納期<rt>のうき</rt></ruby>は<ruby>6月末<rt>ろくがつまつ</rt></ruby>。<ruby>厳<rt>きび</rt></ruby>しいですよ。<ruby>3ヶ月<rt>さんかげつ</rt></ruby>で<ruby>1号機<rt>いちごうき</rt></ruby>を<ruby>納<rt>おさ</rt></ruby>めてもらいたい。<br>*(Hạn giao là cuối tháng 6. Khắt đấy. Trong 3 tháng phải giao được máy số 1.)* |
| Thái | すみません、「<ruby>1号機<rt>いちごうき</rt></ruby>」というのは<ruby>試作<rt>しさく</rt></ruby><ruby>金型<rt>かながた</rt></ruby>のことでしょうか？<br>*(Em xin lỗi, "máy số 1" ở đây có phải là khuôn thử nghiệm không ạ?)* |
| Hamada | そうです。<ruby>試作<rt>しさく</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>を<ruby>1号機<rt>いちごうき</rt></ruby>と<ruby>呼<rt>よ</rt></ruby>びます。<ruby>量産<rt>りょうさん</rt></ruby><ruby>用<rt>よう</rt></ruby>は<ruby>2号機<rt>にごうき</rt></ruby>です。<br>*(Đúng. Khuôn ở giai đoạn thử nghiệm gọi là máy số 1. Khuôn dùng sản xuất hàng loạt là máy số 2.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。ありがとうございます。<br>*(Em đã rõ ạ. Em cảm ơn anh.)* |
| Kawakami | <ruby>納期<rt>のうき</rt></ruby><ruby>6月末<rt>ろくがつまつ</rt></ruby>、<ruby>1号機<rt>いちごうき</rt></ruby><ruby>納入<rt>のうにゅう</rt></ruby>ということで<ruby>承<rt>うけたまわ</rt></ruby>りました。タイ<ruby>君<rt>くん</rt></ruby>がメイン<ruby>設計<rt>せっけい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>いたします。<br>*(Hạn cuối tháng 6, giao máy số 1, em xin tiếp nhận ạ. Anh Thái sẽ phụ trách thiết kế chính.)* |
| Hamada | （Thái を<ruby>見<rt>み</rt></ruby>る）グエンさん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Nhìn Thái. Anh Nguyễn, có ổn không?)* |
| Thái | はい、<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>ませていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin được dồn hết sức. Mong anh giúp đỡ ạ.)* |

---

## Tình huống 5 — Phòng họp · 10:45, Thái giải thích bản vẽ + hỏi lại điều kiện kỹ thuật

| Vai | Lời thoại |
|---|---|
| Kawakami | では、タイ<ruby>君<rt>くん</rt></ruby>から<ruby>図面<rt>ずめん</rt></ruby>のご<ruby>説明<rt>せつめい</rt></ruby>をさせていただきます。<br>*(Vậy, xin để em Thái giải thích bản vẽ ạ.)* |
| Thái | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる）こちらが<ruby>当方<rt>とうほう</rt></ruby>で<ruby>提案<rt>ていあん</rt></ruby>させていただく<ruby>初期<rt>しょき</rt></ruby><ruby>設計<rt>せっけい</rt></ruby>でございます。<ruby>水路<rt>すいろ</rt></ruby>の<ruby>配置<rt>はいち</rt></ruby>を<ruby>従来<rt>じゅうらい</rt></ruby>より<ruby>密<rt>みつ</rt></ruby>にしております。<br>*(Mở bản vẽ. Đây là bản thiết kế ban đầu bên em xin đề xuất. Em đã bố trí kênh nước dày hơn so với kiểu cũ ạ.)* |
| Hamada | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>水路<rt>すいろ</rt></ruby>の<ruby>配置<rt>はいち</rt></ruby>がいいですね。どなたが<ruby>設計<rt>せっけい</rt></ruby>されたんですか？<br>*(Xem bản vẽ. Bố trí kênh nước tốt đấy. Ai thiết kế vậy?)* |
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>でございます。<br>*(Là em Thái ạ.)* |
| Hamada | （<ruby>頷<rt>うなず</rt></ruby>く）よく<ruby>考<rt>かんが</rt></ruby>えられていますね。<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>はどれくらいを<ruby>想定<rt>そうてい</rt></ruby>されていますか？<br>*(Gật. Suy nghĩ kỹ lưỡng đấy. Anh đã giả định thời gian làm lạnh khoảng bao nhiêu?)* |
| Thái | <ruby>従来<rt>じゅうらい</rt></ruby>より<ruby>15<rt>じゅうご</rt></ruby>パーセント<ruby>短縮<rt>たんしゅく</rt></ruby>できる<ruby>見<rt>み</rt></ruby><ruby>込<rt>こ</rt></ruby>みでございます。<br>*(Dự kiến rút ngắn được 15% so với kiểu cũ ạ.)* |
| Hamada | <ruby>15<rt>じゅうご</rt></ruby>パーセントですか。<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>根拠<rt>こんきょ</rt></ruby>はありますか？<br>*(15% à. Có căn cứ cụ thể không?)* |
| Thái | はい。CAEシミュレーションの<ruby>結果<rt>けっか</rt></ruby>でございます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>解析<rt>かいせき</rt></ruby>レポートをお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Vâng. Là kết quả mô phỏng CAE ạ. Tuần sau em sẽ gửi báo cáo phân tích.)* |
| Hamada | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>失礼<rt>しつれい</rt></ruby>ですが、<ruby>許容<rt>きょよう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby><ruby>規格<rt>きかく</rt></ruby>でよろしいですか？<br>*(Đã rõ. Xin lỗi cho hỏi, dung sai cho phép vẫn theo tiêu chuẩn của bên chúng tôi nhỉ?)* |
| Thái | すみません、「<ruby>許容<rt>きょよう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>」というのは<ruby>寸法<rt>すんぽう</rt></ruby>の<ruby>誤差<rt>ごさ</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>のことでしょうか？<br>*(Em xin lỗi, "dung sai cho phép" có nghĩa là khoảng sai số kích thước không ạ?)* |
| Hamada | そうです。<ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>0.02<rt>れいてんれいに</rt></ruby>ミリ<ruby>以内<rt>いない</rt></ruby>を<ruby>標準<rt>ひょうじゅん</rt></ruby>としております。<br>*(Đúng vậy. Bên chúng tôi lấy chuẩn là trong vòng 0,02mm.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>0.02<rt>れいてんれいに</rt></ruby>ミリ<ruby>以内<rt>いない</rt></ruby>で<ruby>設計<rt>せっけい</rt></ruby>させていただきます。<br>*(Em đã rõ ạ. Em sẽ thiết kế trong giới hạn 0,02mm.)* |

---

## Tình huống 6 — Phòng họp · 11:00, Hamada chốt lịch và lời cảm ơn cuối họp

| Vai | Lời thoại |
|---|---|
| Hamada | では、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜日<rt>すいようび</rt></ruby>までに<ruby>正式<rt>せいしき</rt></ruby>な<ruby>仕様書<rt>しようしょ</rt></ruby>を<ruby>送<rt>おく</rt></ruby>らせていただきます。<br>*(Vậy, đến thứ Tư tuần sau tôi sẽ gửi bản đặc tả chính thức.)* |
| Kawakami | お<ruby>待<rt>ま</rt></ruby>ちしております。<ruby>受領<rt>じゅりょう</rt></ruby>しましたら、すぐに<ruby>確認<rt>かくにん</rt></ruby>のご<ruby>連絡<rt>れんらく</rt></ruby>をいたします。<br>*(Em xin chờ ạ. Khi nhận được, em sẽ liên lạc xác nhận ngay.)* |
| Hamada | よろしくお<ruby>願<rt>ねが</rt></ruby>いします。グエンさん、<ruby>今後<rt>こんご</rt></ruby>とも<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Nhờ anh nhé. Anh Nguyễn, từ nay cũng cố gắng nhé.)* |
| Thái | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>努<rt>つと</rt></ruby>めさせていただきます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>貴重<rt>きちょう</rt></ruby>なご<ruby>意見<rt>いけん</rt></ruby>をいただき、ありがとうございました。<br>*(Vâng, em xin được dốc hết sức ạ. Hôm nay cảm ơn anh đã cho ý kiến quý báu.)* |
| Hamada | こちらこそ、ありがとうございました。<br>*(Tôi mới phải cảm ơn.)* |
| Kawakami | <ruby>玄関<rt>げんかん</rt></ruby>までお<ruby>見送<rt>みおく</rt></ruby>りいたします。<br>*(Em xin tiễn anh ra tận sảnh ạ.)* |

---

## Tình huống 7 — Hành lang sau họp · 11:15, Kawakami phản hồi cho Thái (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| Kawakami | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。よくできました。<br>*(Anh Thái, vất vả rồi. Em làm tốt lắm.)* |
| Thái | ありがとうございます。<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました。<br>*(Em cảm ơn anh ạ. Em hồi hộp đến mức tay run.)* |
| Kawakami | <ruby>見<rt>み</rt></ruby>えませんでしたよ。「<ruby>許容<rt>きょよう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>というのは…」と<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>したのが<ruby>良<rt>よ</rt></ruby>かった。<ruby>分<rt>わ</rt></ruby>からないまま「はい」と<ruby>言<rt>い</rt></ruby>うのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないんです。<br>*(Không nhìn ra đâu. Em hỏi lại "許容公差 nghĩa là…" là rất tốt. Nguy hiểm nhất là cứ "vâng" mà không hiểu.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>失礼<rt>しつれい</rt></ruby>ではないかと<ruby>心配<rt>しんぱい</rt></ruby>でした。<br>*(Thật ạ. Em đã lo sợ là thất lễ.)* |
| Kawakami | <ruby>逆<rt>ぎゃく</rt></ruby>です。<ruby>確認<rt>かくにん</rt></ruby>することは<ruby>誠実<rt>せいじつ</rt></ruby>さの<ruby>表<rt>あらわ</rt></ruby>れです。<ruby>客先<rt>きゃくさき</rt></ruby>も<ruby>安心<rt>あんしん</rt></ruby>します。<br>*(Ngược lại. Việc xác nhận là biểu hiện của sự thành thật. Khách cũng yên tâm.)* |
| Thái | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。あと、<ruby>名刺<rt>めいし</rt></ruby>の<ruby>渡<rt>わた</rt></ruby>し<ruby>方<rt>かた</rt></ruby>はいかがでしたか？<br>*(Em học được nhiều điều ạ. Còn cách trao danh thiếp của em thế nào ạ?)* |
| Kawakami | <ruby>完璧<rt>かんぺき</rt></ruby>でした。<ruby>頭<rt>あたま</rt></ruby>の<ruby>下<rt>さ</rt></ruby>げ<ruby>方<rt>かた</rt></ruby>も<ruby>角度<rt>かくど</rt></ruby>がよかったです。<ruby>次<rt>つぎ</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>を、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>数値<rt>すうち</rt></ruby>で<ruby>始<rt>はじ</rt></ruby>めると<ruby>良<rt>よ</rt></ruby>いですね。<br>*(Hoàn hảo. Góc cúi đầu cũng tốt. Lần sau, phần giải thích bản vẽ nên bắt đầu bằng số liệu cụ thể thì sẽ tốt hơn.)* |
| Thái | はい、<ruby>次回<rt>じかい</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけます。ご<ruby>指導<rt>しどう</rt></ruby>ありがとうございました。<br>*(Vâng, từ lần sau em sẽ chú ý. Cảm ơn anh đã hướng dẫn ạ.)* |

---

## Tình huống 8 — Bàn làm việc · 14:00, gọi điện báo cáo報連相 cho cấp trên về biên bản họp

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>内線<rt>ないせん</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>）お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>設計<rt>せっけい</rt></ruby><ruby>課<rt>か</rt></ruby>のグエンです。カワカミ<ruby>部長<rt>ぶちょう</rt></ruby>、<ruby>今<rt>いま</rt></ruby>お<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか？<br>*(Điện thoại nội bộ. Em chào anh. Em là Nguyễn bên phòng thiết kế. Anh Kawakami trưởng phòng, bây giờ anh có rảnh không ạ?)* |
| Kawakami | はい、どうぞ。<br>*(Có, em nói đi.)* |
| Thái | <ruby>先程<rt>さきほど</rt></ruby>の<ruby>浜田<rt>はまだ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>との<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせの<ruby>議事録<rt>ぎじろく</rt></ruby>を<ruby>作成<rt>さくせい</rt></ruby>いたしました。ご<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか？<br>*(Em đã lập biên bản cuộc họp với chủ nhiệm Hamada vừa rồi. Anh có thể xác nhận giúp em được không ạ?)* |
| Kawakami | はい、メールで<ruby>送<rt>おく</rt></ruby>ってください。<ruby>要点<rt>ようてん</rt></ruby>を<ruby>口頭<rt>こうとう</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>してもらえますか？<br>*(Được, gửi mail cho tôi. Em báo cáo trọng điểm bằng miệng giúp tôi nhé?)* |
| Thái | はい、<ruby>3<rt>みっ</rt></ruby>つございます。<ruby>1<rt>いち</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby>は<ruby>6月末<rt>ろくがつまつ</rt></ruby>、<ruby>1号機<rt>いちごうき</rt></ruby><ruby>納入<rt>のうにゅう</rt></ruby>です。<ruby>2<rt>に</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>許容<rt>きょよう</rt></ruby><ruby>公差<rt>こうさ</rt></ruby>は<ruby>0.02<rt>れいてんれいに</rt></ruby>ミリ<ruby>以内<rt>いない</rt></ruby>。<ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>水曜<rt>すいよう</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby><ruby>仕様書<rt>しようしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>きます。<br>*(Vâng, có 3 điểm ạ. Một, hạn cuối tháng 6, giao máy số 1. Hai, dung sai trong vòng 0,02mm. Ba, thứ Tư tuần sau bản đặc tả chính thức sẽ đến.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>です。CAE<ruby>解析<rt>かいせき</rt></ruby>レポートの<ruby>件<rt>けん</rt></ruby>も<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Đã rõ. Đừng quên vụ báo cáo phân tích CAE nữa.)* |
| Thái | はい、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>までに<ruby>送付<rt>そうふ</rt></ruby>いたします。ご<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>以上<rt>いじょう</rt></ruby>でございます。<br>*(Vâng, em sẽ gửi đến thứ Hai tuần sau. Báo cáo của em đến đây là hết ạ.)* |
| Kawakami | はい、ありがとう。<br>*(Ừ, cảm ơn em.)* |

---

## Tình huống 9 — Phòng nghỉ · 18:30, đồng nghiệp Putra hỏi thăm (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — Thái về phòng nghỉ ăn cơm với Putra (đồng phòng ký túc từ T1, giờ vẫn cùng công ty), ôn lại các từ keigo vừa dùng trong họp.

| Vai | Lời thoại |
|---|---|
| Putra | (tiếng Việt — Putra học VN với Thái suốt 3 năm) Sao rồi anh Thái? Họp với khách Toyota thế nào? |
| Thái | (tiếng Việt) Suýt rớt tim. Hamada-kachou tier-1, kính ngữ nghe muốn loạn. Mà cũng qua được. |
| Putra | (tiếng Việt) Anh dùng được "申します" với "おります" hết hả? |
| Thái | (tiếng Việt) Dùng được. Sakurai-san tập với anh từ 9 giờ sáng. Đưa danh thiếp hai tay, mắt nhìn thẳng. Bác Hamada nhận xong còn khen kênh nước trên bản vẽ của anh — "よく考えられていますね". |
| Putra | (tiếng Việt) Wow! Mà có chỗ nào anh không hiểu không? |
| Thái | (tiếng Việt) Có. "許容公差" — dung sai. Lần đầu nghe. Anh hỏi lại "〜というのは…のことでしょうか?" thì bác giải thích 0,02mm. Kawakami-bucho khen anh hỏi lại đúng cách, bảo đừng giả vờ hiểu. |
| Putra | (tiếng Việt) Bài học vàng. Bên Indonesia em cũng dạy đàn em y vậy: thà hỏi lại lễ phép còn hơn gật bừa. |
| Thái | (tiếng Việt) Ừ. Còn vụ 報連相 nữa — chiều anh phải gọi điện báo cáo議事録 cho Kawakami-bucho. Năm 3 rồi mà mỗi lần keigo vẫn run. |
| Putra | (tiếng Việt) Run là tốt — chứng tỏ anh còn tôn trọng. Hôm nào hết run mới là vấn đề. |
| Thái | (tiếng Việt) Ừ. Mai phải gửi CAE report. Đi ăn đã, đói quá. |

---

## Đọng lại chương 8

Lần đầu tiếp khách Tier-1 Toyota, Thái học được trọn bộ mẫu câu keigo thương vụ cấp cao: **tự giới thiệu khiêm ngữ** (グエン・タイと**申します**・金型設計を**担当しております**・よろしくお**願いいたします**), **chào khách quen** (いつもお**世話になっております**・お**越しいただきましてありがとうございます**), **trao danh thiếp hai tay** đúng nghi thức + nhìn vào mắt đối phương, **đáp lệnh khách** (**承知いたしました**・**取り組ませていただきます**・**精一杯努めさせていただきます**), **xác nhận điều kiện hợp đồng** (納期・1号機・許容公差・0.02ミリ以内), **hỏi lại lễ phép** khi gặp từ chuyên ngành mới (**〜というのは〜のことでしょうか?**), và **báo cáo報連相** qua điện thoại nội bộ theo cấu trúc 3 trọng điểm. Bài học lớn nhất từ Kawakami: thà hỏi lại lễ phép còn hơn gật bừa — **確認することは誠実さの表れ**. Đây là phẩm chất kỹ sư khuôn đúc khi bước ra商談 với cấp 1.

> Từ vựng & mẫu câu chương này: 客先来訪・浜田課長・トヨタ車体・1次サプライヤー・申します・いたします・おります・担当しております・いつもお世話になっております・頂戴いたします・恐れ入ります・仕様書・納期・1号機・試作・量産・許容公差・冷却時間・CAE解析・水路・名刺・両手で渡す・承知いたしました・取り組ませていただきます・精一杯努めさせていただきます・〜というのは〜のことでしょうか・お見送りいたします・議事録・報連相・報告・連絡・相談

## Bí quyết chương

- **Năm 3 milestone**: lần đầu Thái đứng độc lập tiếp khách Tier-1 — kết quả nối tiếp "tự giới thiệu với 入管" của T1 đã tiến hoá thành "tự giới thiệu với 浜田課長".
- **Hamada-kachou** sẽ tái xuất ở các sách sau (đặt nền cho dự án door trim 6/2025).
- **Sakurai + Kawakami**: hai 上司 đóng vai trò"観察対象" — Thái học bằng quan sát + bắt chước, đúng pattern kaigo.
- **Putra (Indonesia)** vẫn ở cùng — cảnh tiếng Việt chuyển sang trao đổi giữa hai đồng nghiệp ngoại quốc, vẫn ôn lại được từ vựng JP.

> *"3/2025. Lần đầu商談 Tier-1. Run nhưng hỏi lại được. Kính ngữ đã thành phản xạ."*

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本日 | ほんじつ | BẢN NHẬT | Hôm nay |
| 客先 | きゃくさき | KHÁCH TIÊN | Bên khách hàng |
| 来訪 | らいほう | LAI PHỎNG | Đến thăm |
| 仕上げる | しあげる | SĨ THƯỢNG | Hoàn thành |
| 課長 | かちょう | KHÓA TRƯỞNG | Chủ nhiệm, trưởng phòng |
| 1次サプライヤー | いちじサプライヤー | NHẤT THỨ | Nhà cung cấp cấp 1 |
| 当社 | とうしゃ | ĐƯƠNG XÃ | Công ty chúng tôi |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Hồi hộp, căng thẳng |
| 応対 | おうたい | ỨNG ĐỐI | Tiếp đãi |
| 挨拶 | あいさつ | ÁI THÁT | Lời chào |
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 承知いたしました | しょうちいたしました | THỪA TRI | Em đã rõ ạ |
| 敬語 | けいご | KÍNH NGỮ | Kính ngữ |
| 申します | もうします | THÂN | Khiêm ngữ của "nói/tên là" |
| 第一声 | だいいっせい | ĐỆ NHẤT THANH | Câu chào đầu tiên |
| 金型設計 | かながたせっけい | KIM HÌNH THIẾT KẾ | Thiết kế khuôn |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại |
| 謙譲語 | けんじょうご | KHIÊM NHƯỢNG NGỮ | Khiêm nhường ngữ |
| 表現 | ひょうげん | BIỂU HIỆN | Cách diễn đạt |
| 名刺 | めいし | DANH THÍCH | Danh thiếp |
| 両手 | りょうて | LƯỠNG THỦ | Hai tay |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | Xin nhận (khiêm ngữ) |
| 恐れ入ります | おそれいります | KHỦNG NHẬP | Quá lời, không dám nhận |
| 新型 | しんがた | TÂN HÌNH | Mẫu mới |
| 新規設計 | しんきせっけい | TÂN QUY THIẾT KẾ | Thiết kế mới |
| 仕様書 | しようしょ | SĨ DẠNG THƯ | Bản đặc tả |
| 拝見 | はいけん | BÁI KIẾN | Xem (khiêm ngữ) |
| 検討 | けんとう | KIỂM THẢO | Xem xét, cân nhắc |
| 1号機 | いちごうき | NHẤT HIỆU CƠ | Máy số 1 (khuôn thử) |
| 試作 | しさく | THÍ TÁC | Thử nghiệm, làm thử |
| 量産 | りょうさん | LƯỢNG SẢN | Sản xuất hàng loạt |
| 納入 | のうにゅう | NẠP NHẬP | Giao hàng |
| 全力 | ぜんりょく | TOÀN LỰC | Dốc hết sức |
| 取り組む | とりくむ | THỦ TỔ | Bắt tay vào, dồn sức |
| 当方 | とうほう | ĐƯƠNG PHƯƠNG | Bên chúng tôi |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 初期設計 | しょきせっけい | SƠ KỲ THIẾT KẾ | Thiết kế ban đầu |
| 従来 | じゅうらい | TÒNG LAI | Kiểu cũ, trước nay |
| 冷却時間 | れいきゃくじかん | LÃNH KHƯỚC THỜI GIAN | Thời gian làm lạnh |
| 想定 | そうてい | TƯỞNG ĐỊNH | Giả định |
| 短縮 | たんしゅく | ĐOẢN SÚC | Rút ngắn |
| 見込み | みこみ | KIẾN VÀO | Dự kiến |
| 根拠 | こんきょ | CĂN CỨ | Căn cứ |
| 許容公差 | きょようこうさ | HỨA DUNG CÔNG SAI | Dung sai cho phép |
| 正式 | せいしき | CHÍNH THỨC | Chính thức |
| 受領 | じゅりょう | THỤ LÃNH | Tiếp nhận |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức, dốc sức |
| 努める | つとめる | NỖ | Cố gắng, nỗ lực |
| 貴重 | きちょう | QUÝ TRỌNG | Quý báu |
| 意見 | いけん | Ý KIẾN | Ý kiến |
| 玄関 | げんかん | HUYỀN QUAN | Sảnh, cửa chính |
| 見送り | みおくり | KIẾN TỐNG | Tiễn |
| 震える | ふるえる | CHẤN | Run |
| 聞き返す | ききかえす | VĂN PHẢN | Hỏi lại |
| 誠実 | せいじつ | THÀNH THỰC | Thành thật |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 内線 | ないせん | NỘI TUYẾN | Điện thoại nội bộ |
| 部長 | ぶちょう | BỘ TRƯỞNG | Trưởng phòng |
| 打ち合わせ | うちあわせ | ĐẢ HỢP | Buổi họp, trao đổi |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | Biên bản họp |
| 作成 | さくせい | TÁC THÀNH | Lập, soạn |
| 要点 | ようてん | YẾU ĐIỂM | Trọng điểm |
| 口頭 | こうとう | KHẨU ĐẦU | Bằng miệng |
| 送付 | そうふ | TỐNG PHÓ | Gửi |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000009, 800000016, NULL, 'markdown_book', 'T9. Đào sâu kính ngữ với khách hàng (敬語深堀)', '# Sách kỹ sư khuôn đúc · T9. Đào sâu kính ngữ với khách hàng (敬語深堀)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội) đang là kỹ sư thiết kế năm thứ 3 tại みなみ精密金型, lần đầu được giao ứng đối email + điện thoại trực tiếp với khách bác 浜田 (Toyota Shatai). Học các mẫu hội thoại tiếng Nhật trong giao dịch khách hàng trang trọng: viết **email mở đầu** (いつもお世話になっております), phân biệt **3 loại 敬語** (尊敬語・謙譲語・丁寧語), **nhận điện thoại công ty** (〜でございます), **xác nhận thay đổi đặc tả** (承知いたしました・反映いたします), **hỏi lại đàn anh khi chưa chắc kính ngữ**, và **viết email xin lỗi** khi dùng sai động từ (言う → おっしゃる).

---

## Bối cảnh

Tháng 4 năm 2025. Thái sang Nhật được 3 năm, vừa được chuyển hẳn lên 設計課 (phòng thiết kế) tại **株式会社みなみ精密金型** ở Anjo, Aichi. Dự án ドアトリム (door trim) cho Toyota Shatai vào giai đoạn deep dive, đối tác bên khách là bác 浜田 — kỹ sư lâu năm, kỹ tính nhưng tử tế. Senpai 川上 và 桜井 đứng sau hỗ trợ. Trình độ tiếng Nhật N2. Chương này tập trung các mẫu câu kính ngữ dùng với khách hàng qua email và điện thoại — kỹ năng sống còn của kỹ sư Việt khi tự tay ứng đối khách Nhật.

---

## Tình huống 1 — Bàn làm việc phòng 設計課 · 9:00, soạn email mở đầu cho khách

| Vai | Lời thoại |
|---|---|
| Kawakami | タイさん、<ruby>今日<rt>きょう</rt></ruby>から<ruby>浜田様<rt>はまださま</rt></ruby>への<ruby>連絡<rt>れんらく</rt></ruby>メールはタイさんが<ruby>下書<rt>したが</rt></ruby>きしてください。<ruby>私<rt>わたし</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>するだけです。<br>*(Anh Thái, từ hôm nay email liên lạc với bác Hamada nhờ anh soạn nháp. Tôi chỉ xác nhận thôi.)* |
| Thái | え、<ruby>私<rt>わたし</rt></ruby>が<ruby>書<rt>か</rt></ruby>くんですか？<ruby>緊張<rt>きんちょう</rt></ruby>します…<br>*(Ơ, em viết ạ? Em hồi hộp quá…)* |
| Kawakami | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>最初<rt>さいしょ</rt></ruby>のテンプレートを<ruby>教<rt>おし</rt></ruby>えます。<ruby>件名<rt>けんめい</rt></ruby>と<ruby>冒頭<rt>ぼうとう</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Không sao. Tôi chỉ cho template cơ bản. Tiêu đề và câu chào đầu thư là quan trọng nhất.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh.)* |
| Kawakami | <ruby>件名<rt>けんめい</rt></ruby>は「<ruby>用件<rt>ようけん</rt></ruby> + のお<ruby>願<rt>ねが</rt></ruby>い／のご<ruby>連絡<rt>れんらく</rt></ruby>」。<ruby>冒頭<rt>ぼうとう</rt></ruby>は「<ruby>浜田様<rt>はまださま</rt></ruby>　いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>みなみ<ruby>精密金型<rt>せいみつかながた</rt></ruby><ruby>設計課<rt>せっけいか</rt></ruby>のグエンでございます」。<br>*(Tiêu đề: "Nội dung + lời nhờ/lời thông báo". Câu đầu: "Anh Hamada, cảm ơn anh đã luôn quan tâm. Tôi là Nguyễn — phòng thiết kế Minami Seimitsu Kanagata".)* |
| Thái | （ノートに<ruby>書<rt>か</rt></ruby>き<ruby>写<rt>うつ</rt></ruby>す）「いつもお<ruby>世話<rt>せわ</rt></ruby>になっております」…<ruby>毎回<rt>まいかい</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>書<rt>か</rt></ruby>きますか？<br>*(Chép lại vào sổ. "Itsumo osewa ni natte orimasu"… lần nào cũng phải viết ạ?)* |
| Kawakami | はい、<ruby>必<rt>かなら</rt></ruby>ず。これがないとビジネスメールではありません。<br>*(Vâng, nhất định. Không có câu này thì không gọi là email công việc.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。では<ruby>下書<rt>したが</rt></ruby>きしてみます。<br>*(Em rõ rồi. Vậy em thử soạn nháp.)* |

---

## Tình huống 2 — Bàn Kawakami · 9:30, xác nhận tiêu đề và độ dài thư

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>下書<rt>したが</rt></ruby>きできました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Kawakami, em soạn xong nháp. Nhờ anh xác nhận giúp em.)* |
| Kawakami | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る）<ruby>件名<rt>けんめい</rt></ruby>を<ruby>明確<rt>めいかく</rt></ruby>にしてください。「<ruby>確認<rt>かくにん</rt></ruby>」だけでは<ruby>何<rt>なに</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>か<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Xem màn hình. Tiêu đề phải rõ. Chỉ ghi "xác nhận" thì không biết xác nhận cái gì.)* |
| Thái | はい。では「ドアトリム<ruby>金型<rt>かながた</rt></ruby><ruby>仕様書<rt>しようしょ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い」でいかがでしょうか？<br>*(Vâng. Vậy "Kính nhờ xác nhận bản đặc tả khuôn door trim" được không ạ?)* |
| Kawakami | いいですね。<ruby>本文<rt>ほんぶん</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>段落<rt>だんらく</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>めてください。<ruby>長<rt>なが</rt></ruby>すぎると<ruby>読<rt>よ</rt></ruby>んでもらえません。<br>*(Được đấy. Phần thân gói trong 3 đoạn. Dài quá sẽ không được đọc.)* |
| Thái | すみません、「<ruby>段落<rt>だんらく</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Xin lỗi, "danraku" nghĩa là gì ạ?)* |
| Kawakami | パラグラフのことです。<ruby>挨拶<rt>あいさつ</rt></ruby>・<ruby>用件<rt>ようけん</rt></ruby>・<ruby>結<rt>むす</rt></ruby>びの<ruby>3<rt>みっ</rt></ruby>つに<ruby>分<rt>わ</rt></ruby>けます。<br>*(Là đoạn văn (paragraph). Chia làm ba: chào hỏi, nội dung, kết thư.)* |
| Thái | <ruby>挨拶<rt>あいさつ</rt></ruby>・<ruby>用件<rt>ようけん</rt></ruby>・<ruby>結<rt>むす</rt></ruby>びの<ruby>3<rt>さん</rt></ruby><ruby>段落<rt>だんらく</rt></ruby>ですね。<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Chào hỏi, nội dung, kết thư — 3 đoạn ạ. Em nhớ rồi.)* |
| Kawakami | <ruby>結<rt>むす</rt></ruby>びは「ご<ruby>確認<rt>かくにん</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」が<ruby>定番<rt>ていばん</rt></ruby>です。<br>*(Kết thư mẫu chuẩn là "Kính mong anh kiểm tra giúp".)* |
| Thái | はい、メモします。<br>*(Vâng, em ghi lại.)* |

---

## Tình huống 3 — Bàn Sakurai · 10:00, quan sát đàn anh dạy phân biệt 3 loại 敬語

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>客先<rt>きゃくさき</rt></ruby>とのメールが<ruby>増<rt>ふ</rt></ruby>えると<ruby>敬語<rt>けいご</rt></ruby>で<ruby>悩<rt>なや</rt></ruby>むでしょう。<ruby>3<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えてる？<br>*(Anh Thái, email với khách nhiều lên thì sẽ bối rối kính ngữ nhỉ. Nhớ ba loại không?)* |
| Thái | はい、<ruby>尊敬語<rt>そんけいご</rt></ruby>、<ruby>謙譲語<rt>けんじょうご</rt></ruby>、<ruby>丁寧語<rt>ていねいご</rt></ruby>です。<br>*(Vâng, tôn kính ngữ, khiêm ngữ, lịch sự ngữ ạ.)* |
| Sakurai | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けの<ruby>基本<rt>きほん</rt></ruby>は<ruby>主語<rt>しゅご</rt></ruby>です。<ruby>客先<rt>きゃくさき</rt></ruby>が<ruby>主語<rt>しゅご</rt></ruby>なら<ruby>尊敬語<rt>そんけいご</rt></ruby>、<ruby>自分<rt>じぶん</rt></ruby>や<ruby>自社<rt>じしゃ</rt></ruby>が<ruby>主語<rt>しゅご</rt></ruby>なら<ruby>謙譲語<rt>けんじょうご</rt></ruby>です。<br>*(Đúng. Cốt lõi để dùng đúng là chủ ngữ. Khách là chủ ngữ thì tôn kính ngữ; mình hoặc công ty mình là chủ ngữ thì khiêm ngữ.)* |
| Thái | <ruby>例<rt>れい</rt></ruby>えばどう<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Ví dụ khác nhau thế nào ạ?)* |
| Sakurai | 「<ruby>言<rt>い</rt></ruby>う」を<ruby>例<rt>れい</rt></ruby>にします。<ruby>浜田様<rt>はまださま</rt></ruby>が<ruby>主語<rt>しゅご</rt></ruby>なら「おっしゃる」、<ruby>私<rt>わたし</rt></ruby>が<ruby>主語<rt>しゅご</rt></ruby>なら「<ruby>申<rt>もう</rt></ruby>す」。<br>*(Lấy "言う" làm ví dụ. Bác Hamada chủ ngữ thì "おっしゃる", tôi chủ ngữ thì "申す".)* |
| Thái | 「する」はどうですか？<br>*(Còn "する" thì sao ạ?)* |
| Sakurai | <ruby>尊敬語<rt>そんけいご</rt></ruby>は「なさる」、<ruby>謙譲語<rt>けんじょうご</rt></ruby>は「いたす」。「<ruby>承知<rt>しょうち</rt></ruby>いたしました」はよく<ruby>使<rt>つか</rt></ruby>うフレーズです。<br>*(Tôn kính ngữ "なさる", khiêm ngữ "いたす". "承知いたしました" là cụm dùng rất nhiều.)* |
| Thái | 「<ruby>行<rt>い</rt></ruby>く」「<ruby>来<rt>く</rt></ruby>る」も<ruby>違<rt>ちが</rt></ruby>いますか？<br>*(Cả "行く" và "来る" cũng khác nhau ạ?)* |
| Sakurai | はい。<ruby>尊敬語<rt>そんけいご</rt></ruby>は「いらっしゃる」、<ruby>謙譲語<rt>けんじょうご</rt></ruby>は「<ruby>伺<rt>うかが</rt></ruby>う」「<ruby>参<rt>まい</rt></ruby>る」。「<ruby>明日<rt>あした</rt></ruby><ruby>御社<rt>おんしゃ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います」のように<ruby>使<rt>つか</rt></ruby>います。<br>*(Vâng. Tôn kính ngữ "いらっしゃる", khiêm ngữ "伺う/参る". Dùng kiểu "Mai em xin tới quý công ty".)* |
| Thái | <ruby>御社<rt>おんしゃ</rt></ruby>…ですね。<ruby>自社<rt>じしゃ</rt></ruby>のことは「<ruby>当社<rt>とうしゃ</rt></ruby>」「<ruby>弊社<rt>へいしゃ</rt></ruby>」と<ruby>呼<rt>よ</rt></ruby>びますか？<br>*(Quý công ty… nhỉ. Công ty mình thì gọi là "当社" hay "弊社" ạ?)* |
| Sakurai | <ruby>正解<rt>せいかい</rt></ruby>！<ruby>客先<rt>きゃくさき</rt></ruby>には「<ruby>弊社<rt>へいしゃ</rt></ruby>」を<ruby>使<rt>つか</rt></ruby>うのが<ruby>無難<rt>ぶなん</rt></ruby>です。<ruby>謙譲<rt>けんじょう</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちが<ruby>入<rt>はい</rt></ruby>ります。<br>*(Đúng! Với khách dùng "弊社" là an toàn nhất. Mang ý khiêm tốn.)* |

---

## Tình huống 4 — Bàn Sakurai · 10:30, hỏi lại đàn anh để chắc chắn

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby>さん、すみません、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>質問<rt>しつもん</rt></ruby>させてください。<br>*(Anh Sakurai, xin lỗi, cho em hỏi thêm một câu.)* |
| Sakurai | どうぞ。<br>*(Cứ hỏi.)* |
| Thái | 「<ruby>了解<rt>りょうかい</rt></ruby>しました」と「<ruby>承知<rt>しょうち</rt></ruby>いたしました」は<ruby>同<rt>おな</rt></ruby>じ<ruby>意味<rt>いみ</rt></ruby>ですか？<br>*(「了解しました」 và 「承知いたしました」 có cùng nghĩa không ạ?)* |
| Sakurai | <ruby>意味<rt>いみ</rt></ruby>は<ruby>似<rt>に</rt></ruby>ていますが、<ruby>客先<rt>きゃくさき</rt></ruby>には<ruby>絶対<rt>ぜったい</rt></ruby>「<ruby>承知<rt>しょうち</rt></ruby>いたしました」を<ruby>使<rt>つか</rt></ruby>ってください。「<ruby>了解<rt>りょうかい</rt></ruby>」は<ruby>同僚<rt>どうりょう</rt></ruby><ruby>同士<rt>どうし</rt></ruby>か<ruby>目下<rt>めした</rt></ruby>に<ruby>使<rt>つか</rt></ruby>う<ruby>言葉<rt>ことば</rt></ruby>です。<br>*(Nghĩa giống nhau, nhưng với khách phải dùng "承知いたしました". "了解" là từ dùng giữa đồng nghiệp hoặc với người dưới.)* |
| Thái | え、<ruby>知<rt>し</rt></ruby>りませんでした。<ruby>失礼<rt>しつれい</rt></ruby>な<ruby>表現<rt>ひょうげん</rt></ruby>になりますか？<br>*(Ơ, em không biết. Nó thành thất lễ ạ?)* |
| Sakurai | <ruby>場合<rt>ばあい</rt></ruby>によります。<ruby>浜田様<rt>はまださま</rt></ruby>のような<ruby>年配<rt>ねんぱい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>には<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けたほうがいいですね。<br>*(Tuỳ trường hợp. Nhưng với người lớn tuổi như bác Hamada thì nên cẩn thận.)* |
| Thái | はい、「<ruby>承知<rt>しょうち</rt></ruby>いたしました」<ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>で<ruby>行<rt>い</rt></ruby>きます。<br>*(Vâng, em sẽ thống nhất dùng "承知いたしました".)* |
| Sakurai | <ruby>分<rt>わ</rt></ruby>からない<ruby>時<rt>とき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<ruby>客<rt>きゃく</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>で<ruby>失敗<rt>しっぱい</rt></ruby>するより、<ruby>社内<rt>しゃない</rt></ruby>で<ruby>聞<rt>き</rt></ruby>く<ruby>方<rt>ほう</rt></ruby>が<ruby>百倍<rt>ひゃくばい</rt></ruby>いいです。<br>*(Không hiểu thì cứ hỏi. Hỏi nội bộ tốt hơn gấp trăm lần thất lễ trước mặt khách.)* |
| Thái | はい、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng, em cảm ơn anh thật sự.)* |

---

## Tình huống 5 — Bàn Thái · 14:00, lần đầu nhận điện thoại từ bác Hamada

| Vai | Lời thoại |
|---|---|
| Điện thoại | （<ruby>呼<rt>よ</rt></ruby>び<ruby>出<rt>だ</rt></ruby>し<ruby>音<rt>おん</rt></ruby>が<ruby>鳴<rt>な</rt></ruby>る）<br>*(Chuông điện thoại reo.)* |
| Thái | はい、<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>みなみ<ruby>精密金型<rt>せいみつかながた</rt></ruby>、<ruby>設計課<rt>せっけいか</rt></ruby>のグエンでございます。<br>*(Vâng, công ty cổ phần Minami Seimitsu Kanagata, phòng thiết kế, Nguyễn xin nghe ạ.)* |
| Hamada | あ、グエンさん。トヨタ<ruby>車体<rt>しゃたい</rt></ruby>の<ruby>浜田<rt>はまだ</rt></ruby>です。<br>*(À, Nguyễn-san. Hamada bên Toyota Shatai đây.)* |
| Thái | <ruby>浜田様<rt>はまださま</rt></ruby>、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Anh Hamada, cảm ơn anh đã luôn quan tâm ạ.)* |
| Hamada | こちらこそ。<ruby>実<rt>じつ</rt></ruby>はドアトリムの<ruby>仕様書<rt>しようしょ</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<br>*(Tôi cũng vậy. Thật ra bản đặc tả khuôn door trim có chỉnh sửa.)* |
| Thái | はい、お<ruby>聞<rt>き</rt></ruby>かせください。メモを<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vâng, anh nói đi ạ. Em xin phép ghi chép.)* |
| Hamada | キャビの<ruby>厚<rt>あつ</rt></ruby>さを<ruby>2<rt>に</rt></ruby>ミリ<ruby>増<rt>ふ</rt></ruby>やしてほしいんです。<ruby>強度<rt>きょうど</rt></ruby><ruby>試験<rt>しけん</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>足<rt>た</rt></ruby>りなかったので。<br>*(Tôi muốn tăng độ dày cavity thêm 2mm. Vì kiểm tra độ bền hơi thiếu.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>いたしました。「キャビの<ruby>厚<rt>あつ</rt></ruby>さを<ruby>2<rt>に</rt></ruby>ミリ<ruby>増<rt>ふ</rt></ruby>やす」ということでよろしいでしょうか？<br>*(Em đã rõ. Là "tăng độ dày cavity thêm 2mm", em hiểu vậy đúng không ạ?)* |
| Hamada | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Vâng, đúng vậy.)* |
| Thái | <ruby>明日<rt>あした</rt></ruby>までに<ruby>図面<rt>ずめん</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>いたしまして、メールでお<ruby>送<rt>おく</rt></ruby>りいたします。<br>*(Đến ngày mai em sẽ phản ánh vào bản vẽ và gửi email đến anh.)* |
| Hamada | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ Nguyễn-san.)* |
| Thái | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em mới phải nhờ ạ. Em xin phép cúp máy.)* |

---

## Tình huống 6 — Bàn Kawakami · 14:15, Kawakami phản hồi cuộc gọi đầu

| Vai | Lời thoại |
|---|---|
| Kawakami | タイさん、<ruby>初<rt>はじ</rt></ruby>めての<ruby>電話<rt>でんわ</rt></ruby><ruby>応対<rt>おうたい</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いていましたよ。よくできました。<br>*(Anh Thái, cuộc gọi đầu tiên — tôi nghe được hết đấy. Anh làm tốt lắm.)* |
| Thái | <ruby>緊張<rt>きんちょう</rt></ruby>しました。<ruby>声<rt>こえ</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていなかったでしょうか？<br>*(Em hồi hộp quá. Giọng em có run không ạ?)* |
| Kawakami | <ruby>全然<rt>ぜんぜん</rt></ruby>。「<ruby>承知<rt>しょうち</rt></ruby>いたしました」のあとに<ruby>復唱<rt>ふくしょう</rt></ruby>したのが<ruby>良<rt>よ</rt></ruby>かったです。「キャビの<ruby>厚<rt>あつ</rt></ruby>さを<ruby>2<rt>に</rt></ruby>ミリ<ruby>増<rt>ふ</rt></ruby>やす、ということでよろしいでしょうか」って。<br>*(Không hề. Đoạn anh nhắc lại sau khi nói "承知いたしました" rất hay. "Là tăng cavity thêm 2mm, đúng không ạ".)* |
| Thái | はい、<ruby>聞<rt>き</rt></ruby>き<ruby>間違<rt>まちが</rt></ruby>いを<ruby>防<rt>ふせ</rt></ruby>ぎたかったので。<br>*(Vâng, em muốn tránh nghe nhầm.)* |
| Kawakami | <ruby>正解<rt>せいかい</rt></ruby>です。<ruby>数字<rt>すうじ</rt></ruby>と<ruby>納期<rt>のうき</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>復唱<rt>ふくしょう</rt></ruby>してください。<br>*(Đúng đấy. Số liệu và ngày giao hàng phải luôn nhắc lại.)* |
| Thái | はい、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Vâng, em nhớ rồi.)* |
| Kawakami | <ruby>切<rt>き</rt></ruby>るときの「<ruby>失礼<rt>しつれい</rt></ruby>いたします」もよかったです。<ruby>相手<rt>あいて</rt></ruby>が<ruby>切<rt>き</rt></ruby>るのを<ruby>待<rt>ま</rt></ruby>ってから<ruby>受話器<rt>じゅわき</rt></ruby>を<ruby>置<rt>お</rt></ruby>くと、もっと<ruby>丁寧<rt>ていねい</rt></ruby>です。<br>*(Câu "失礼いたします" lúc cúp máy cũng tốt. Đợi đối phương cúp trước rồi mình mới đặt ống nghe xuống thì còn lịch sự hơn.)* |
| Thái | え、そうなんですか。<ruby>知<rt>し</rt></ruby>りませんでした。<ruby>次回<rt>じかい</rt></ruby>から<ruby>気<rt>き</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けます。<br>*(Ơ, vậy ạ. Em không biết. Lần sau em sẽ chú ý.)* |

---

## Tình huống 7 — Bàn Thái · 1 tuần sau · 15:00, sai 言う thay vì おっしゃる

| Vai | Lời thoại |
|---|---|
| Thái | （メール<ruby>下書<rt>したが</rt></ruby>き）<ruby>浜田様<rt>はまださま</rt></ruby>　いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>先日<rt>せんじつ</rt></ruby><ruby>浜田様<rt>はまださま</rt></ruby>が<ruby>言<rt>い</rt></ruby>った<ruby>通<rt>とお</rt></ruby>り、キャビの<ruby>厚<rt>あつ</rt></ruby>さを<ruby>2<rt>に</rt></ruby>ミリ<ruby>増<rt>ふ</rt></ruby>やしました。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>いたします。<br>*(Soạn nháp email. "Kính gửi anh Hamada, cảm ơn anh đã luôn quan tâm. Như anh Hamada đã nói hôm trước, em đã tăng độ dày cavity thêm 2mm. Em xin gửi kèm bản vẽ.")* |
| Thái | （<ruby>送信<rt>そうしん</rt></ruby>ボタンを<ruby>押<rt>お</rt></ruby>す）よし、<ruby>送<rt>おく</rt></ruby>った。<br>*(Bấm nút gửi. Xong, gửi rồi.)* |
| Hamada | （<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>、<ruby>返信<rt>へんしん</rt></ruby>メール）グエンさん、<ruby>図面<rt>ずめん</rt></ruby>ありがとうございました。<ruby>1<rt>いっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>細<rt>こま</rt></ruby>かいことですが、「<ruby>言<rt>い</rt></ruby>った」ではなく「おっしゃった」が<ruby>正<rt>ただ</rt></ruby>しいですよ。<br>*(30 phút sau, email phản hồi. Nguyễn-san, cảm ơn vì bản vẽ. Một điểm nhỏ thôi, nhưng không phải "言った" mà là "おっしゃった" mới đúng nhé.)* |
| Thái | （<ruby>顔<rt>かお</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>赤<rt>か</rt></ruby>になる）あ…<ruby>尊敬語<rt>そんけいご</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えました。<br>*(Mặt đỏ ửng. Á… em dùng sai tôn kính ngữ.)* |
| Kawakami | （<ruby>横<rt>よこ</rt></ruby>から）すぐ<ruby>謝罪<rt>しゃざい</rt></ruby>メールを<ruby>出<rt>だ</rt></ruby>しましょう。<ruby>早<rt>はや</rt></ruby>ければ<ruby>早<rt>はや</rt></ruby>いほどいいです。<br>*(Bên cạnh. Gửi ngay email xin lỗi đi. Càng sớm càng tốt.)* |
| Thái | はい、<ruby>今<rt>いま</rt></ruby><ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em viết ngay.)* |

---

## Tình huống 8 — Bàn Thái · 15:10, viết email xin lỗi và sửa kính ngữ

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby>さん、<ruby>謝罪<rt>しゃざい</rt></ruby>メールの<ruby>下書<rt>したが</rt></ruby>きを<ruby>見<rt>み</rt></ruby>ていただけますか？<br>*(Anh Kawakami, anh xem giúp em nháp email xin lỗi được không?)* |
| Kawakami | もちろん。<ruby>件名<rt>けんめい</rt></ruby>から<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Tất nhiên. Xem từ tiêu đề nhé.)* |
| Thái | <ruby>件名<rt>けんめい</rt></ruby>は「<ruby>表現<rt>ひょうげん</rt></ruby><ruby>誤<rt>あやま</rt></ruby>りのお<ruby>詫<rt>わ</rt></ruby>び」にしました。<br>*(Tiêu đề em đặt "Xin lỗi vì dùng sai biểu hiện".)* |
| Kawakami | いいですね。<ruby>本文<rt>ほんぶん</rt></ruby>は<ruby>事実<rt>じじつ</rt></ruby>を<ruby>認<rt>みと</rt></ruby>めて、<ruby>正<rt>ただ</rt></ruby>しい<ruby>表現<rt>ひょうげん</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>して、<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>を<ruby>約束<rt>やくそく</rt></ruby>します。<br>*(Tốt. Phần thân nhận lỗi, ghi rõ cách nói đúng, hứa không tái phạm.)* |
| Thái | （<ruby>本文<rt>ほんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む）<ruby>浜田様<rt>はまださま</rt></ruby>　<ruby>先<rt>さき</rt></ruby>ほどのメールにて、「<ruby>浜田様<rt>はまださま</rt></ruby>が<ruby>言<rt>い</rt></ruby>った」と<ruby>表現<rt>ひょうげん</rt></ruby>いたしましたが、<ruby>正<rt>ただ</rt></ruby>しくは「<ruby>浜田様<rt>はまださま</rt></ruby>がおっしゃった」でございました。<ruby>大変<rt>たいへん</rt></ruby><ruby>失礼<rt>しつれい</rt></ruby>いたしました。<br>*(Đọc phần thân. "Kính gửi anh Hamada, trong email vừa rồi em đã dùng câu ''anh Hamada nói'', cách đúng phải là ''anh Hamada đã nói (おっしゃった)''. Em xin lỗi vì thất lễ.")* |
| Thái | <ruby>今後<rt>こんご</rt></ruby>はこのようなことがないよう、<ruby>敬語<rt>けいご</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>分<rt>わ</rt></ruby>けに<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>いたします。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*("Để không xảy ra việc này nữa, em sẽ chú ý đầy đủ cách dùng kính ngữ. Mong anh chỉ bảo.")* |
| Kawakami | いい<ruby>文<rt>ぶん</rt></ruby>です。<ruby>長<rt>なが</rt></ruby>すぎず、<ruby>反省<rt>はんせい</rt></ruby>も<ruby>誠実<rt>せいじつ</rt></ruby>。<ruby>送<rt>おく</rt></ruby>っていいですよ。<br>*(Câu hay. Không dài quá, lời nhận lỗi cũng chân thành. Gửi được rồi.)* |
| Thái | はい、<ruby>送信<rt>そうしん</rt></ruby>します。<br>*(Vâng, em gửi.)* |
| Hamada | （<ruby>5<rt>ご</rt></ruby><ruby>分後<rt>ふんご</rt></ruby>、<ruby>返信<rt>へんしん</rt></ruby>）グエンさん、ご<ruby>丁寧<rt>ていねい</rt></ruby>にありがとうございます。<ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>でここまで<ruby>気<rt>き</rt></ruby>を<ruby>遣<rt>つか</rt></ruby>えるのは<ruby>立派<rt>りっぱ</rt></ruby>です。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(5 phút sau, phản hồi. Nguyễn-san, cảm ơn vì sự chu đáo. Người nước ngoài mà cẩn trọng đến vậy là rất đáng trân trọng. Mong anh tiếp tục cộng tác.)* |
| Thái | （<ruby>胸<rt>むね</rt></ruby>を<ruby>撫<rt>な</rt></ruby>でおろす）よかった…<br>*(Thở phào nhẹ nhõm. May quá…)* |

---

## Tình huống 9 — Phòng họp nhỏ · 17:00, Kawakami giao thử thách tiếp theo

| Vai | Lời thoại |
|---|---|
| Kawakami | タイさん、<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>浜田様<rt>はまださま</rt></ruby>との<ruby>応対<rt>おうたい</rt></ruby>は<ruby>君<rt>きみ</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>でやってもらいます。<br>*(Anh Thái, tuần sau ứng đối với bác Hamada do anh một mình đảm nhận.)* |
| Thái | え、<ruby>一人<rt>ひとり</rt></ruby>でですか！？<br>*(Ơ, một mình ạ!?)* |
| Kawakami | はい。<ruby>1週間<rt>いっしゅうかん</rt></ruby><ruby>見<rt>み</rt></ruby>ていて、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だと<ruby>判断<rt>はんだん</rt></ruby>しました。<ruby>1回<rt>いっかい</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>ぶ<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Vâng. Tôi quan sát một tuần và thấy ổn. Thái độ học từ một lần thất bại là quan trọng nhất.)* |
| Thái | <ruby>失敗<rt>しっぱい</rt></ruby>したのに、いいんですか？<br>*(Em đã sai mà cũng được ạ?)* |
| Kawakami | <ruby>失敗<rt>しっぱい</rt></ruby>したから<ruby>覚<rt>おぼ</rt></ruby>えたんです。これからは「<ruby>言<rt>い</rt></ruby>う」が<ruby>出<rt>で</rt></ruby>てきたら、<ruby>自然<rt>しぜん</rt></ruby>に「おっしゃる」と<ruby>口<rt>くち</rt></ruby>に<ruby>出<rt>だ</rt></ruby>るでしょう？<br>*(Sai nên mới nhớ. Từ giờ hễ "言う" xuất hiện là tự nhiên miệng anh sẽ bật ra "おっしゃる" đúng không?)* |
| Thái | はい、<ruby>確<rt>たし</rt></ruby>かに。<br>*(Vâng, đúng vậy.)* |
| Kawakami | <ruby>1週間<rt>いっしゅうかん</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りミーティングをしましょう。それまでに<ruby>疑問<rt>ぎもん</rt></ruby>を<ruby>溜<rt>た</rt></ruby>めておいてください。<br>*(Một tuần sau ta họp review nhé. Trong tuần cứ tích lại các thắc mắc.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em sẽ cố gắng. Nhờ anh ạ.)* |

---

## Tình huống 10 — Phòng 201 ký túc · 21:00, gọi điện về Việt Nam (cảnh tiếng Việt)

> Cảnh tiếng Việt — gọi điện về cho Mai, giữ mạch nhân vật và ôn lại từ vựng kính ngữ trong ngày.

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, hôm nay đi làm thế nào? Mặt anh ỉu xìu thế. |
| Thái | (tiếng Việt) Hôm nay anh sai một câu kính ngữ với khách Nhật. Bác Hamada đó, viết "言った" thay vì "おっしゃった". |
| Mai | (tiếng Việt) Khác nhau ở đâu anh? Em nghe vẫn thấy giống nhau. |
| Thái | (tiếng Việt) 言う là dạng thường, ai cũng dùng được. Còn おっしゃる là tôn kính ngữ — chỉ dùng khi chủ ngữ là người trên hoặc khách. Mình mà nói "khách 言った" thì giống như hạ thấp khách xuống. |
| Mai | (tiếng Việt) Trời, tiếng Nhật rắc rối ghê. Bác Hamada giận không anh? |
| Thái | (tiếng Việt) Không em, bác hiền lắm. Phản hồi lại bảo "người nước ngoài cẩn thận thế là tốt". Anh gửi email xin lỗi xong, anh Kawakami senpai khen viết "không dài quá, thành thật". |
| Mai | (tiếng Việt) Vậy anh học được gì? |
| Thái | (tiếng Việt) Học được ba thứ: một là cách phân biệt 尊敬語・謙譲語・丁寧語 — chủ ngữ là ai thì dùng loại đó. Hai là cách nhận điện thoại "〜でございます" với khách. Ba là phải nhắc lại số liệu sau khi nghe — kiểu "2 mm tăng thêm, đúng không ạ?" để không nghe nhầm. |
| Mai | (tiếng Việt) Hay quá. Mà tuần sau anh tự xử lý khách một mình hả? |
| Thái | (tiếng Việt) Ừ, anh Kawakami giao luôn. Hồi hộp mà cũng mừng, vì nghĩa là senpai tin mình rồi. |
| Mai | (tiếng Việt) Anh giỏi mà. Em đặt vé sang Nhật chơi tháng 6 nha. |
| Thái | (tiếng Việt) Ờ, tháng 6 hoa anh đào hết rồi nhưng vẫn đẹp. Anh dẫn đi Nagoya. Thôi anh đi ngủ đây, mai 8 giờ họp dự án. |
| Mai | (tiếng Việt) Ngủ ngon anh. |

---

## Đọng lại chương 9

Một tuần đầu được tin tưởng giao tay khách, Thái học được trọn vẹn bộ kính ngữ giao tiếp khách hàng: viết **email mở đầu** chuẩn (**いつもお世話になっております**・**〜でございます**), phân biệt **3 loại 敬語** theo chủ ngữ — **尊敬語** (おっしゃる・なさる・いらっしゃる) cho khách, **謙譲語** (申す・いたす・伺う・参る) cho mình, **丁寧語** (です・ます) trung tính — và biết khi nào dùng **弊社** thay cho **当社**. Lần đầu **nhận điện thoại từ khách**, Thái học mẫu **〜でございます**, **お聞かせください**, **承知いたしました**, kỹ thuật **復唱** số liệu, và câu cúp máy **失礼いたします**. Sai một lần "言った" thay vì "おっしゃった" — học được cách **viết email xin lỗi** ngắn gọn (nhận lỗi + cách nói đúng + cam kết). Senpai Kawakami và Sakurai dạy nguyên tắc lớn: **hỏi nội bộ hơn thất lễ trước mặt khách**, và **một lần sai là quý** vì lần sau từ đúng sẽ tự bật ra. Đó là chất kỹ sư trưởng thành — biết kính ngữ không phải lý thuyết, mà là cách tôn trọng khách trong từng câu.

> Từ vựng & mẫu câu chương này: 敬語・尊敬語・謙譲語・丁寧語・おっしゃる・申す・なさる・いたす・いらっしゃる・伺う・参る・弊社・当社・御社・〜でございます・いつもお世話になっております・承知いたしました・反映いたします・失礼いたします・お聞かせください・ご確認のほどよろしくお願いいたします・件名・本文・段落・復唱・仕様書変更・お詫び・再発防止

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 下書き | したがき | HẠ THƯ | bản nháp |
| 件名 | けんめい | KIỆN DANH | tiêu đề (email) |
| 冒頭 | ぼうとう | MẠO ĐẦU | phần mở đầu |
| 用件 | ようけん | DỤNG KIỆN | nội dung công việc |
| 株式会社 | かぶしきがいしゃ | CỔ THỨC HỘI XÃ | công ty cổ phần |
| 精密金型 | せいみつかながた | TINH MẬT KIM HÌNH | khuôn đúc chính xác |
| 設計課 | せっけいか | THIẾT KẾ KHOA | phòng thiết kế |
| 世話 | せわ | THẾ THOẠI | sự quan tâm, chăm sóc |
| 段落 | だんらく | ĐOẠN LẠC | đoạn văn |
| 結び | むすび | KẾT | phần kết |
| 定番 | ていばん | ĐỊNH PHIÊN | mẫu chuẩn |
| 尊敬語 | そんけいご | TÔN KÍNH NGỮ | tôn kính ngữ |
| 丁寧語 | ていねいご | ĐINH NINH NGỮ | lịch sự ngữ |
| 主語 | しゅご | CHỦ NGỮ | chủ ngữ |
| 自社 | じしゃ | TỰ XÃ | công ty mình |
| 御社 | おんしゃ | NGỰ XÃ | quý công ty |
| 弊社 | へいしゃ | TỆ XÃ | bổn công ty (khiêm) |
| 了解 | りょうかい | LIỄU GIẢI | hiểu, đã rõ |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 目下 | めした | MỤC HẠ | người dưới |
| 年配 | ねんぱい | NIÊN PHỐI | người lớn tuổi |
| 反映 | はんえい | PHẢN ÁNH | phản ánh, áp dụng |
| 受話器 | じゅわき | THỤ THOẠI KHÍ | ống nghe |
| 送信 | そうしん | TỐNG TÍN | gửi đi |
| 返信 | へんしん | PHẢN TÍN | trả lời (mail) |
| 添付 | てんぷ | THIÊM PHÓ | đính kèm |
| 謝罪 | しゃざい | TẠ TỘI | xin lỗi |
| 詫び | わび | THÁC | lời xin lỗi |
| 再発防止 | さいはつぼうし | TÁI PHÁT PHÒNG CHỈ | ngăn tái phát |
| 判断 | はんだん | PHÁN ĐOÁN | phán đoán |
| 姿勢 | しせい | TƯ THẾ | tư thế, thái độ |
| 疑問 | ぎもん | NGHI VẤN | thắc mắc |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000010, 800000016, NULL, 'markdown_book', 'T10. Tăng tốc ôn JLPT N2 (N2集中)', '# Sách kỹ sư khuôn đúc · T10. Tăng tốc ôn JLPT N2 (N2集中)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội — đang làm tại Anjo, Aichi) bước vào 6 tuần nước rút trước kỳ JLPT N2 tháng 7/2025. Học các mẫu hội thoại tiếng Nhật xoay quanh ôn thi: xin phép cấp trên nghỉ ngày thi, hỏi đàn anh kinh nghiệm thi N2, xác nhận lại điểm ngữ pháp khó với người bản xứ (〜わけではない・〜に違いない・〜ものの), trao đổi với giáo viên kèm về chiến lược làm bài, hỏi nhân viên hiệu sách về 教材 phù hợp, và ôn lại kanji báo chí khi xem tin NHK cùng đồng phòng.

---

## Bối cảnh

Cuối tháng 5 năm 2025. Thái đang làm thiết kế khuôn đúc năm thứ tư tại **株式会社みなみ精密金型** (Anjo, Aichi). Trình độ tiếng Nhật N3 đã đỗ, đang dồn sức cho kỳ N2 ngày chủ nhật đầu tháng 7. Chương này tập trung các mẫu câu giao tiếp khi ôn thi và làm việc song song: xin nghỉ thi, hỏi đàn anh kinh nghiệm, trao đổi chiến lược 読解・聴解 với giáo viên kèm, và hỏi lại lễ phép khi gặp ngữ pháp N2 chưa nắm chắc.

---

## Tình huống 1 — Phòng họp nhỏ nhà máy · 9:00 thứ hai, xin phép trưởng nhà máy nghỉ ngày thi

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<br>*(Trưởng nhà máy Tanaka, ông cho em xin chút thời gian được không ạ?)* |
| Tanaka | はい、どうしましたか。<br>*(Được, có chuyện gì vậy?)* |
| Thái | <ruby>実<rt>じつ</rt></ruby>は、<ruby>7月<rt>しちがつ</rt></ruby><ruby>6日<rt>むいか</rt></ruby>の<ruby>日曜日<rt>にちようび</rt></ruby>に<ruby>日本語<rt>にほんご</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>試験<rt>しけん</rt></ruby>のN<ruby>2<rt>に</rt></ruby>を<ruby>受<rt>う</rt></ruby>けることになりました。<br>*(Thật ra, ngày chủ nhật 6/7 em sẽ thi JLPT N2 ạ.)* |
| Tanaka | おお、N<ruby>2<rt>に</rt></ruby>ですか。<ruby>頑張<rt>がんば</rt></ruby>っていますね。<br>*(Ồ, N2 à. Em cố gắng nhỉ.)* |
| Thái | ありがとうございます。それで、<ruby>前日<rt>ぜんじつ</rt></ruby>の<ruby>土曜日<rt>どようび</rt></ruby>の<ruby>残業<rt>ざんぎょう</rt></ruby>を<ruby>外<rt>はず</rt></ruby>していただけないかと<ruby>思<rt>おも</rt></ruby>いまして…。<br>*(Em cảm ơn ạ. Vì vậy, không biết ông có thể cho em bỏ ca tăng ca thứ bảy trước đó được không…)* |
| Tanaka | もちろん<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>体調<rt>たいちょう</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えてしっかり<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(Tất nhiên là được rồi. Em giữ sức khoẻ và chuẩn bị cho tốt nhé.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>合格<rt>ごうかく</rt></ruby>できるように<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ông thật nhiều. Em sẽ cố gắng để đỗ ạ.)* |
| Tanaka | N<ruby>2<rt>に</rt></ruby>を<ruby>取<rt>と</rt></ruby>れば<ruby>設計<rt>せっけい</rt></ruby><ruby>会議<rt>かいぎ</rt></ruby>でも<ruby>発言<rt>はつげん</rt></ruby>しやすくなりますよ。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Có N2 thì em phát biểu trong họp thiết kế cũng dễ hơn. Tôi ủng hộ em.)* |

---

## Tình huống 2 — Phòng 201 ký túc · 21:00 thứ hai, hỏi đồng phòng Putra kinh nghiệm thi N2

| Vai | Lời thoại |
|---|---|
| Thái | プトラさん、ちょっと<ruby>聞<rt>き</rt></ruby>いてもいいですか。プトラさんはN<ruby>2<rt>に</rt></ruby><ruby>受<rt>う</rt></ruby>けた<ruby>時<rt>とき</rt></ruby>、どこが<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しかったですか。<br>*(Anh Putra, em hỏi chút được không. Lúc anh thi N2, phần nào khó nhất ạ?)* |
| Putra | やっぱり<ruby>聴解<rt>ちょうかい</rt></ruby>ですね。<ruby>会話<rt>かいわ</rt></ruby>のスピードが<ruby>急<rt>きゅう</rt></ruby>に<ruby>速<rt>はや</rt></ruby>くなります。<br>*(Vẫn là phần nghe. Tốc độ hội thoại nhanh đột ngột.)* |
| Thái | やっぱりそうですか。すみません、「<ruby>聴解<rt>ちょうかい</rt></ruby>」というのは「<ruby>聞<rt>き</rt></ruby>く<ruby>問題<rt>もんだい</rt></ruby>」のことですよね。<br>*(Vậy à. Xin lỗi, "choukai" là "bài nghe" đúng không ạ?)* |
| Putra | そうそう。<ruby>聴<rt>ちょう</rt></ruby>は「<ruby>聞<rt>き</rt></ruby>く」、<ruby>解<rt>かい</rt></ruby>は「<ruby>解<rt>と</rt></ruby>く」。<ruby>合<rt>あ</rt></ruby>わせて「<ruby>聴解<rt>ちょうかい</rt></ruby>」です。<br>*(Đúng đúng. "Chou" là nghe, "kai" là giải. Ghép lại thành "choukai".)* |
| Thái | なるほど。じゃあ「<ruby>読解<rt>どっかい</rt></ruby>」は<ruby>読<rt>よ</rt></ruby>む<ruby>問題<rt>もんだい</rt></ruby>ですね。<br>*(Ra vậy. Vậy "dokkai" là phần đọc nhỉ.)* |
| Putra | その<ruby>通<rt>とお</rt></ruby>りです。<ruby>聴解<rt>ちょうかい</rt></ruby>はNHKの<ruby>夜<rt>よる</rt></ruby><ruby>7時<rt>しちじ</rt></ruby>のニュースを<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>くといいですよ。<br>*(Đúng vậy. Phần nghe thì nghe bản tin NHK 7 giờ tối mỗi ngày là tốt đấy.)* |
| Thái | <ruby>毎日<rt>まいにち</rt></ruby><ruby>7時<rt>しちじ</rt></ruby>のニュースですね。<ruby>字幕<rt>じまく</rt></ruby>なしですか。<br>*(Bản tin 7 giờ mỗi ngày à. Không phụ đề ạ?)* |
| Putra | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>字幕<rt>じまく</rt></ruby>あり、<ruby>慣<rt>な</rt></ruby>れたらなしです。シャドーイングもしてください。<br>*(Đầu tiên có phụ đề, quen rồi thì bỏ. Cũng phải shadowing nữa.)* |
| Thái | シャドーイングというのは、<ruby>音声<rt>おんせい</rt></ruby>の<ruby>後<rt>あと</rt></ruby>を<ruby>追<rt>お</rt></ruby>って<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すということですか。<br>*(Shadowing là vừa nghe vừa nhắc theo thành tiếng đúng không ạ?)* |
| Putra | <ruby>正解<rt>せいかい</rt></ruby>です。<ruby>2<rt>に</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>遅<rt>おく</rt></ruby>れて<ruby>真似<rt>まね</rt></ruby>します。<ruby>毎晩<rt>まいばん</rt></ruby><ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でいいです。<br>*(Đúng. Chậm 2 giây rồi nhái lại. Mỗi tối 30 phút là đủ.)* |

---

## Tình huống 3 — Hiệu sách Maruzen Nagoya · 13:00 thứ bảy, hỏi nhân viên về 教材 phù hợp

| Vai | Lời thoại |
|---|---|
| Thái | すみません、ちょっと<ruby>伺<rt>うかが</rt></ruby>ってもよろしいですか。<br>*(Xin lỗi, em hỏi một chút có được không ạ?)* |
| Nhân viên | はい、どうぞ。<br>*(Vâng, mời anh.)* |
| Thái | <ruby>7月<rt>しちがつ</rt></ruby>のN<ruby>2<rt>に</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるんですが、<ruby>残<rt>のこ</rt></ruby>り<ruby>6<rt>ろく</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>使<rt>つか</rt></ruby>える<ruby>教材<rt>きょうざい</rt></ruby>はどれがおすすめですか。<br>*(Em thi N2 tháng 7, còn 6 tuần, anh khuyên dùng giáo trình nào ạ?)* |
| Nhân viên | <ruby>6<rt>ろく</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>でしたら、<ruby>新<rt>しん</rt></ruby><ruby>完全<rt>かんぜん</rt></ruby>マスターシリーズより、『<ruby>日本語<rt>にほんご</rt></ruby><ruby>総<rt>そう</rt></ruby>まとめN<ruby>2<rt>に</rt></ruby>』の<ruby>方<rt>ほう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>く<ruby>回<rt>まわ</rt></ruby>せます。<br>*(Trong 6 tuần thì cuốn "Nihongo Soumatome N2" xoay vòng nhanh hơn so với bộ "Shin Kanzen Master".)* |
| Thái | <ruby>総<rt>そう</rt></ruby>まとめは<ruby>8<rt>はっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>一<rt>いっ</rt></ruby><ruby>冊<rt>さつ</rt></ruby><ruby>終<rt>お</rt></ruby>わるという<ruby>本<rt>ほん</rt></ruby>ですね。<br>*(Soumatome là cuốn xong một quyển trong 8 tuần nhỉ.)* |
| Nhân viên | はい。<ruby>毎日<rt>まいにち</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>2<rt>に</rt></ruby>ページずつで<ruby>進<rt>すす</rt></ruby>めますが、お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>3<rt>さん</rt></ruby>ページぐらいに<ruby>増<rt>ふ</rt></ruby>やせば<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>います。<br>*(Vâng. Bình thường mỗi ngày 2 trang, nhưng anh tăng lên 3 trang/ngày là kịp.)* |
| Thái | <ruby>聴解<rt>ちょうかい</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>もありますか。<br>*(Có sách phần nghe không ạ?)* |
| Nhân viên | はい、こちらの<ruby>音声<rt>おんせい</rt></ruby>ダウンロード<ruby>付<rt>つ</rt></ruby>きが<ruby>人気<rt>にんき</rt></ruby>です。NHKの<ruby>聴<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>りと<ruby>違<rt>ちが</rt></ruby>って、<ruby>試験<rt>しけん</rt></ruby><ruby>形式<rt>けいしき</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れられます。<br>*(Vâng, cuốn này có audio tải về, đang được ưa chuộng. Khác với nghe NHK, anh sẽ quen với định dạng đề thi.)* |
| Thái | じゃあ、<ruby>文法<rt>ぶんぽう</rt></ruby>・<ruby>読解<rt>どっかい</rt></ruby>・<ruby>聴解<rt>ちょうかい</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>冊<rt>さつ</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>きます。<br>*(Vậy cho em xin ba cuốn ngữ pháp, đọc, nghe ạ.)* |
| Nhân viên | <ruby>合計<rt>ごうけい</rt></ruby>で<ruby>5<rt>ご</rt></ruby><ruby>280<rt>にひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Tổng cộng 5.280 yên. Anh cố gắng nhé.)* |

---

## Tình huống 4 — Phòng 201 · 21:00 chủ nhật, video call với chị Linh — buổi kèm đầu

| Vai | Lời thoại |
|---|---|
| Linh | (VN, qua video) Thái ơi, đợt này em thi N2 luôn à? Nhanh ghê. |
| Thái | (VN) Vâng chị. Ngày 6/7 ạ, còn đúng 6 tuần. Em đã mua bộ Soumatome rồi. |
| Linh | (VN) Tốt. Em xác định chỗ yếu chưa? Ngữ pháp, đọc, nghe, từ vựng — phần nào kém nhất? |
| Thái | (VN) Em thử đề mẫu hôm qua. Từ vựng 30/45, ngữ pháp 22/35, đọc 25/40, nghe 28/55. Tổng 105 — sát mức đỗ 90 nhưng nghe yếu nhất. |
| Linh | (VN) Đúng kiểu lo nhất. 6 tuần này chị chia làm 3 chặng: tuần 1-2 quét nền — ngữ pháp + từ vựng. Tuần 3-4 cày nghe + đọc tốc độ. Tuần 5-6 đề thử + sửa lỗi. |
| Thái | (VN) Vâng, em hiểu. Mỗi tuần một mục tiêu rõ ràng. |
| Linh | (VN) Cuối tuần em gửi chị ảnh đề thử, chị soi lỗi. Đừng làm im im rồi tự an ủi nhé. |
| Thái | (VN) Em nhớ rồi chị. Cảm ơn chị nhiều ạ. |
| Linh | (VN) Một mẹo: viết nhật ký 5 dòng tiếng Nhật mỗi tối. Nghĩ đến đâu viết đến đấy. Não sẽ quen với ngữ pháp N2. |

---

## Tình huống 5 — Hành lang văn phòng nhà máy · 12:10 thứ tư, hỏi đàn anh 先輩 Sato về ngữ pháp 〜わけではない

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>昼休<rt>ひるやす</rt></ruby>みにすみません。N<ruby>2<rt>に</rt></ruby>の<ruby>文法<rt>ぶんぽう</rt></ruby>で<ruby>聞<rt>き</rt></ruby>きたいことがあるのですが…。<br>*(Anh Sato, em xin lỗi vì làm phiền giờ nghỉ trưa. Em có chuyện ngữ pháp N2 muốn hỏi…)* |
| Sato | はい、いいですよ。<ruby>何<rt>なに</rt></ruby>ですか。<br>*(Ừ, được. Cái gì vậy?)* |
| Thái | 「<ruby>嫌<rt>きら</rt></ruby>いなわけではない」と「<ruby>嫌<rt>きら</rt></ruby>いではない」の<ruby>違<rt>ちが</rt></ruby>いがよく<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Em chưa rõ khác nhau giữa "kiraina wake dewa nai" và "kirai dewa nai".)* |
| Sato | ああ、<ruby>面白<rt>おもしろ</rt></ruby>い<ruby>質問<rt>しつもん</rt></ruby>ですね。「<ruby>嫌<rt>きら</rt></ruby>いではない」は<ruby>単<rt>たん</rt></ruby>に「<ruby>嫌<rt>きら</rt></ruby>いじゃない」、つまり<ruby>好<rt>す</rt></ruby>きという<ruby>意味<rt>いみ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>いです。<br>*(Câu hỏi thú vị đấy. "Kirai dewa nai" đơn thuần là "không ghét", tức là gần với "thích".)* |
| Thái | はい、それは<ruby>分<rt>わ</rt></ruby>かります。<br>*(Vâng, cái đó em hiểu.)* |
| Sato | 「<ruby>嫌<rt>きら</rt></ruby>いなわけではない」は、「<ruby>嫌<rt>きら</rt></ruby>いだと<ruby>思<rt>おも</rt></ruby>われているけど、そうとは<ruby>限<rt>かぎ</rt></ruby>らない」というニュアンスです。<br>*(Còn "kiraina wake dewa nai" mang sắc thái "bị nghĩ là ghét, nhưng không hẳn vậy".)* |
| Thái | なるほど、「<ruby>誤解<rt>ごかい</rt></ruby>を<ruby>否定<rt>ひてい</rt></ruby>する」という<ruby>感<rt>かん</rt></ruby>じですね。<br>*(Ra vậy, kiểu "phủ định một sự hiểu lầm".)* |
| Sato | その<ruby>通<rt>とお</rt></ruby>り。<ruby>例<rt>たと</rt></ruby>えば「<ruby>毎日<rt>まいにち</rt></ruby><ruby>残業<rt>ざんぎょう</rt></ruby>しているわけではない」は、「<ruby>残業<rt>ざんぎょう</rt></ruby>することもあるけど、<ruby>毎日<rt>まいにち</rt></ruby>ではない」という<ruby>意味<rt>いみ</rt></ruby>です。<br>*(Đúng vậy. Ví dụ "mainichi zangyou shiteiru wake dewa nai" nghĩa là "có tăng ca, nhưng không phải mỗi ngày".)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました!「<ruby>必<rt>かなら</rt></ruby>ずしも〜ではない」と<ruby>同<rt>おな</rt></ruby>じグループですね。<br>*(Em hiểu rồi! Cùng nhóm với "kanarazushimo 〜 dewa nai" nhỉ.)* |
| Sato | <ruby>正解<rt>せいかい</rt></ruby>。N<ruby>2<rt>に</rt></ruby>では「<ruby>部分<rt>ぶぶん</rt></ruby><ruby>否定<rt>ひてい</rt></ruby>」のパターンとして<ruby>覚<rt>おぼ</rt></ruby>えるといいですよ。<br>*(Chính xác. Trong N2 nên nhớ theo nhóm "phủ định một phần".)* |

---

## Tình huống 6 — Quan sát đàn anh: phòng nghỉ nhà máy · 12:30, Sato giảng tiếp 〜に違いない và 〜ものの

| Vai | Lời thoại |
|---|---|
| Sato | ついでに「〜に<ruby>違<rt>ちが</rt></ruby>いない」と「〜ものの」も<ruby>説明<rt>せつめい</rt></ruby>しましょうか。<ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えると<ruby>整理<rt>せいり</rt></ruby>しやすいです。<br>*(Tiện thể giải thích luôn "〜ni chigai nai" và "〜monono" nhé? Học chung một ngày dễ sắp xếp.)* |
| Thái | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>本<rt>ほん</rt></ruby>とノートに<ruby>書<rt>か</rt></ruby>き<ruby>留<rt>と</rt></ruby>めます。<br>*(Em xin nhờ anh ạ. Em ghi vào sổ luôn.)* |
| Sato | 「〜に<ruby>違<rt>ちが</rt></ruby>いない」は<ruby>強<rt>つよ</rt></ruby>い<ruby>推量<rt>すいりょう</rt></ruby>。<ruby>証拠<rt>しょうこ</rt></ruby>があって「<ruby>絶対<rt>ぜったい</rt></ruby>そうだ」と<ruby>言<rt>い</rt></ruby>いたい<ruby>時<rt>とき</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(〜ni chigai nai là suy đoán mạnh. Dùng khi có chứng cứ và muốn nói "chắc chắn là vậy".)* |
| Thái | 「<ruby>彼<rt>かれ</rt></ruby>は<ruby>来<rt>こ</rt></ruby>ないに<ruby>違<rt>ちが</rt></ruby>いない」なら「<ruby>絶対<rt>ぜったい</rt></ruby><ruby>来<rt>こ</rt></ruby>ない」と<ruby>言<rt>い</rt></ruby>っているのと<ruby>同<rt>おな</rt></ruby>じですか。<br>*("Kare wa konai ni chigai nai" giống như nói "chắc chắn không tới" phải không ạ?)* |
| Sato | はい。「<ruby>多分<rt>たぶん</rt></ruby>」より<ruby>強<rt>つよ</rt></ruby>く、「<ruby>絶対<rt>ぜったい</rt></ruby>」より<ruby>少<rt>すこ</rt></ruby>し<ruby>柔<rt>やわ</rt></ruby>らかい、というイメージです。<br>*(Đúng. Mạnh hơn "tabun", mềm hơn "zettai" một chút.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。「〜ものの」は?<br>*(Em rõ rồi. Còn "〜monono"?)* |
| Sato | 「〜けれども」と<ruby>似<rt>に</rt></ruby>ていますが、<ruby>書<rt>か</rt></ruby>き<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>前<rt>まえ</rt></ruby>で<ruby>事実<rt>じじつ</rt></ruby>を<ruby>認<rt>みと</rt></ruby>めて、<ruby>後<rt>あと</rt></ruby>で<ruby>期待<rt>きたい</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>う<ruby>結果<rt>けっか</rt></ruby>を<ruby>言<rt>い</rt></ruby>います。<br>*(Giống "〜keredomo" nhưng là văn viết. Vế trước thừa nhận sự thật, vế sau nói kết quả khác kỳ vọng.)* |
| Thái | <ruby>例文<rt>れいぶん</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>けますか。<br>*(Anh cho em ví dụ được không ạ?)* |
| Sato | 「<ruby>留学<rt>りゅうがく</rt></ruby>したものの、<ruby>英語<rt>えいご</rt></ruby>はあまり<ruby>上達<rt>じょうたつ</rt></ruby>しなかった」。<ruby>留学<rt>りゅうがく</rt></ruby>はした、でも<ruby>期待<rt>きたい</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>う<ruby>結果<rt>けっか</rt></ruby>。<br>*("Ryuugaku shita monono, eigo wa amari joutatsu shinakatta". Có đi du học, nhưng kết quả không như mong đợi.)* |
| Thái | はい、はっきり<ruby>理解<rt>りかい</rt></ruby>できました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます、<ruby>佐藤<rt>さとう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>。<br>*(Vâng, em hiểu rõ rồi. Em cảm ơn anh thật nhiều, anh Sato.)* |

---

## Tình huống 7 — Phòng 201 · 19:30 thứ năm, xem NHK ニュース7 với Putra để luyện 聴解

| Vai | Lời thoại |
|---|---|
| Putra | (mở TV) もうすぐ<ruby>7時<rt>しちじ</rt></ruby>のニュースですよ。タイさん、<ruby>準備<rt>じゅんび</rt></ruby>はいい?<br>*(Sắp tới bản tin 7 giờ rồi. Anh Thái, sẵn sàng chưa?)* |
| Thái | はい、ノートとペンを<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Vâng, em cầm sổ với bút rồi.)* |
| NHK アナウンサー | こんばんは。<ruby>7時<rt>しちじ</rt></ruby>のニュースです。<ruby>今日<rt>きょう</rt></ruby><ruby>午後<rt>ごご</rt></ruby>、<ruby>政府<rt>せいふ</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しい<ruby>経済<rt>けいざい</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>を<ruby>発表<rt>はっぴょう</rt></ruby>しました。<br>*(Chào buổi tối. Bản tin 7 giờ. Chiều nay chính phủ đã công bố biện pháp kinh tế mới.)* |
| Thái | (tạm dừng) すみません、「<ruby>経済<rt>けいざい</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか。<br>*(Cho em hỏi, "keizai taisaku" nghĩa là gì ạ?)* |
| Putra | <ruby>経済<rt>けいざい</rt></ruby>はeconomy、<ruby>対策<rt>たいさく</rt></ruby>はmeasureとかpolicyです。<ruby>合<rt>あ</rt></ruby>わせて「<ruby>経済<rt>けいざい</rt></ruby>のための<ruby>政策<rt>せいさく</rt></ruby>」ということ。<br>*(Keizai là kinh tế, taisaku là biện pháp/chính sách. Ghép thành "chính sách kinh tế".)* |
| Thái | なるほど、メモします。<ruby>経済<rt>けいざい</rt></ruby>・<ruby>対策<rt>たいさく</rt></ruby>・<ruby>政策<rt>せいさく</rt></ruby>。<br>*(Ra vậy, em ghi lại. Keizai, taisaku, seisaku.)* |
| Putra | ニュースは<ruby>同<rt>おな</rt></ruby>じ<ruby>単語<rt>たんご</rt></ruby>が<ruby>何回<rt>なんかい</rt></ruby>も<ruby>出<rt>で</rt></ruby>ます。<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>くと<ruby>自然<rt>しぜん</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Bản tin lặp lại từ vựng nhiều lần. Nghe mỗi ngày sẽ tự nhiên nhớ.)* |
| Thái | <ruby>新聞<rt>しんぶん</rt></ruby>の<ruby>語彙<rt>ごい</rt></ruby>はN<ruby>2<rt>に</rt></ruby>の<ruby>読解<rt>どっかい</rt></ruby>にもよく<ruby>出<rt>で</rt></ruby>ますよね。<br>*(Từ vựng báo chí cũng hay xuất hiện trong phần đọc N2 đúng không?)* |
| Putra | その<ruby>通<rt>とお</rt></ruby>り。<ruby>政府<rt>せいふ</rt></ruby>・<ruby>発表<rt>はっぴょう</rt></ruby>・<ruby>会見<rt>かいけん</rt></ruby>・<ruby>記者<rt>きしゃ</rt></ruby>、こういう<ruby>言葉<rt>ことば</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えれば<ruby>読解<rt>どっかい</rt></ruby>もぐっと<ruby>楽<rt>らく</rt></ruby>になります。<br>*(Đúng vậy. Seifu, happyou, kaiken, kisha — nhớ mấy từ này là phần đọc dễ hẳn.)* |

---

## Tình huống 8 — Phòng 201 · 22:00 chủ nhật, video call chị Linh — chiến lược 読解

| Vai | Lời thoại |
|---|---|
| Linh | (VN) Tuần 2 rồi đấy em. Đọc hôm nay làm chưa? |
| Thái | (VN) Em làm rồi chị. Mondai 8 — đoạn ngắn ổn. Mondai 10 — đoạn dài 800 chữ thì quá thời gian, làm chưa xong câu cuối. |
| Linh | (VN) Đúng kiểu lỗi điển hình. Đoạn dài N2 không được đọc kỹ từ đầu đến cuối — em sẽ chết thời gian. |
| Thái | (VN) Vậy chiến lược thế nào ạ? |
| Linh | (VN) Đọc câu hỏi trước. Rồi quét đoạn để tìm key word câu hỏi nhắc. Sau đó mới đọc kỹ đoạn đó thôi. |
| Thái | (VN) Tức là không đọc tuần tự, mà tìm vùng có câu trả lời trước? |
| Linh | (VN) Chuẩn. Một câu hỏi cho em đúng một đoạn. Đừng để câu hỏi lừa em đọc toàn bài. |
| Thái | (VN) Còn câu hỏi 主旨 (chủ đề chính) thì sao chị? Kiểu "筆者が一番言いたいことは何か"? |
| Linh | (VN) Câu đó thường nằm ở đoạn cuối, hoặc câu chốt sau "つまり", "要するに", "このように". Cứ tìm từ chốt là ra. |
| Thái | (VN) Em hiểu. Tuần này em sẽ luyện thêm 5 đề 読解 theo chiến thuật mới. |
| Linh | (VN) Tốt. Mỗi đề bấm đồng hồ 50 phút. Quen với áp lực thời gian quan trọng không kém chính xác. |

---

## Tình huống 9 — Trung tâm Aichi · 14:00 thứ bảy, hỏi giáo viên người Nhật ở lớp tình nguyện về cách viết nhật ký N2

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しご<ruby>相談<rt>そうだん</rt></ruby>してもいいですか。<br>*(Cô ơi, em xin tham vấn một chút được không ạ?)* |
| Cô Yoshida | はい、どうぞ。<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Được, em cứ hỏi. Có chuyện gì vậy?)* |
| Thái | <ruby>毎晩<rt>まいばん</rt></ruby><ruby>日記<rt>にっき</rt></ruby>を<ruby>5<rt>ご</rt></ruby><ruby>行<rt>ぎょう</rt></ruby>ぐらい<ruby>書<rt>か</rt></ruby>いていますが、N<ruby>2<rt>に</rt></ruby>の<ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>意識<rt>いしき</rt></ruby>するコツはありますか。<br>*(Tối nào em cũng viết nhật ký khoảng 5 dòng, nhưng có mẹo nào để vận dụng ngữ pháp N2 không ạ?)* |
| Cô Yoshida | いいですね。<ruby>毎日<rt>まいにち</rt></ruby><ruby>違<rt>ちが</rt></ruby>うN<ruby>2<rt>に</rt></ruby><ruby>文型<rt>ぶんけい</rt></ruby>を<ruby>1<rt>ひと</rt></ruby>つ<ruby>選<rt>えら</rt></ruby>んで、<ruby>必<rt>かなら</rt></ruby>ず<ruby>使<rt>つか</rt></ruby>うようにしてみてください。<br>*(Hay đấy. Em hãy chọn mỗi ngày một mẫu N2 khác nhau và nhất định phải dùng.)* |
| Thái | <ruby>例<rt>たと</rt></ruby>えば、<ruby>今日<rt>きょう</rt></ruby>は「〜にもかかわらず」を<ruby>使<rt>つか</rt></ruby>うと<ruby>決<rt>き</rt></ruby>めて<ruby>書<rt>か</rt></ruby>く、ということですね。<br>*(Ví dụ hôm nay quyết định dùng "〜nimo kakawarazu" rồi viết, đúng không ạ?)* |
| Cô Yoshida | その<ruby>通<rt>とお</rt></ruby>りです。「<ruby>雨<rt>あめ</rt></ruby>にもかかわらず<ruby>工場<rt>こうじょう</rt></ruby>へ<ruby>行<rt>い</rt></ruby>った」みたいに、<ruby>生活<rt>せいかつ</rt></ruby>の<ruby>場面<rt>ばめん</rt></ruby>に<ruby>当<rt>あ</rt></ruby>てはめると<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Đúng vậy. Như "ame nimo kakawarazu koujou e itta" — gắn vào tình huống đời thường thì dễ nhớ.)* |
| Thái | <ruby>書<rt>か</rt></ruby>いた<ruby>後<rt>あと</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>かに<ruby>直<rt>なお</rt></ruby>してもらった<ruby>方<rt>ほう</rt></ruby>がいいでしょうか。<br>*(Viết xong nên nhờ ai sửa cho không ạ?)* |
| Cô Yoshida | はい。<ruby>添削<rt>てんさく</rt></ruby>してもらうと<ruby>定着<rt>ていちゃく</rt></ruby>します。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>が<ruby>3<rt>みっ</rt></ruby>つだけ<ruby>添削<rt>てんさく</rt></ruby>してあげますよ。<br>*(Có. Được sửa là kiến thức ổn định lại. Mỗi thứ bảy, cô sẽ sửa cho em 3 bài.)* |
| Thái | <ruby>本当<rt>ほんとう</rt></ruby>ですか!ありがとうございます。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>持<rt>も</rt></ruby>ってきます。<br>*(Thật ạ! Em cảm ơn cô. Tuần sau em mang đến ạ.)* |
| Cô Yoshida | <ruby>添削<rt>てんさく</rt></ruby>はN<ruby>2<rt>に</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>より<ruby>先<rt>さき</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>をつけてくれます。<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けてくださいね。<br>*(Chấm sửa sẽ giúp em có năng lực vượt cả mức đỗ N2. Em duy trì lâu dài nhé.)* |

---

## Tình huống 10 — Phòng 201 · 21:00 chủ nhật tuần 4, video call chị Linh — đề thử lần 1

| Vai | Lời thoại |
|---|---|
| Thái | (VN) Chị ơi, em vừa làm đề thử lần 1 xong. Từ vựng 35/45, ngữ pháp 25/35, đọc 28/40, nghe 32/55. Tổng 120/175. |
| Linh | (VN) 120 là vượt mức đỗ 90 rồi. Nhưng nghe vẫn yếu nhất — 32/55 thôi. |
| Thái | (VN) Đúng chị. Mondai 3 (聴解・概要理解) em bị lệch nhiều. Chỉ nghe được ý lớn, chi tiết bay mất. |
| Linh | (VN) Mondai 3 không có sẵn câu hỏi và đáp án trên giấy, phải nghe và đoán cả hai luôn. Khó hơn. |
| Thái | (VN) Em phải làm gì ạ? |
| Linh | (VN) Tăng nghe NHK từ 30 phút lên 1 tiếng/ngày. Và làm dictation — chép lại từng câu — cho 1 bài/ngày. |
| Thái | (VN) Dictation cả bài 5 phút thì viết tay không xuể đâu chị. |
| Linh | (VN) Không cần cả bài. Một đoạn 1 phút thôi. Nghe đi nghe lại đến khi viết được 95%. Trong 2 tuần tới em sẽ thấy khác. |
| Thái | (VN) Vâng chị. Em làm. |
| Linh | (VN) Còn ngữ pháp 25/35 hơi thấp. Hôm nào em gửi chị 10 câu sai, chị xem em nhầm chỗ nào. |

---

## Tình huống 11 — Cửa hàng tiện lợi Famima · 23:00 thứ ba tuần 5, đồng hương Hùng

| Vai | Lời thoại |
|---|---|
| Hùng | (VN) Ơ Thái! Khuya thế còn ra Famima à? |
| Thái | (VN) Ơ Hùng, mày cũng đi đêm vậy à. Tao mua cà phê, cày nốt một bài nghe rồi đi ngủ. |
| Hùng | (VN) N2 còn hai tuần nhỉ. Tao đỗ năm ngoái rồi, nhìn mày tao thấy lại ký ức kinh hoàng. |
| Thái | (VN) Mày có mẹo gì cuối không? |
| Hùng | (VN) Tuần cuối đừng học thêm cái mới. Chỉ ôn lại sai cũ. Cái mới giờ học thêm không đọng đâu. |
| Thái | (VN) Ừ tao cũng định thế. Đang sợ phần nghe Mondai 3. |
| Hùng | (VN) Mondai 3 cố nghe chữ "つまり", "要するに" — câu sau đó thường là đáp án. |
| Thái | (VN) Bí quyết xịn đấy. Tao note ngay. |
| Hùng | (VN) Còn nữa, hôm thi nhớ mang theo nước với chocolate. Trưa nghỉ 50 phút, ăn ngọt vào não chạy hơn. |
| Thái | (VN) Cảm ơn mày. Tối nào ngủ trước 12 giờ là tao thấy mai khoẻ hẳn. |
| Hùng | (VN) Chuẩn. Đừng thức trắng đêm trước thi nhé. Tao tin mày đỗ. |
| Thái | (VN) Cảm ơn. Đỗ rồi tao mời mày bia ở Sakae. |

---

## Tình huống 12 — Phòng 201 · 21:00 chủ nhật tuần 5, video call chị Linh — đề thử lần 2 và mẹo phòng thi

| Vai | Lời thoại |
|---|---|
| Thái | (VN) Chị ơi, đề thử lần 2: từ vựng 38/45, ngữ pháp 28/35, đọc 31/40, nghe 38/55. Tổng 135/175. |
| Linh | (VN) Tăng 15 điểm, nghe lên 6 điểm. Dictation có tác dụng đấy. |
| Thái | (VN) Em cảm ơn chị. Tuần cuối em định ôn lại sai cũ và làm thêm 1 đề. |
| Linh | (VN) Đúng hướng. Mấy mẹo phòng thi này em ghi lại: |
| Linh | (VN) Một — đến trường thi sớm 30 phút, vào nhà vệ sinh trước. |
| Linh | (VN) Hai — phần từ vựng và ngữ pháp 105 phút, cố gắng làm xong trong 90 phút để còn 15 phút quay lại check. |
| Linh | (VN) Ba — phần đọc khó nhất câu cuối, đừng để mắc kẹt câu khó mà mất câu dễ phía sau. |
| Linh | (VN) Bốn — phần nghe không được tô đáp án sau khi đã sang câu mới. Tô ngay khi nghe xong. |
| Thái | (VN) Em ghi hết rồi. Nhớ chị. |
| Linh | (VN) Một điều cuối: kết quả tốt là phần thưởng. Đừng dồn áp lực phải đỗ. Em đã làm đủ rồi. |
| Thái | (VN) Vâng. Em cảm ơn chị rất nhiều. Không có chị 6 tuần này em không trụ được. |

---

## Tình huống 13 — Phòng 201 · 22:30 thứ bảy đêm trước thi · 5/7/2025, gọi điện về cho mẹ và Mai

| Vai | Lời thoại |
|---|---|
| Mẹ Thái | (VN) Thái ơi, ngày mai con thi rồi à. |
| Thái | (VN) Vâng mẹ. 9 giờ sáng mai vào phòng. |
| Mẹ Thái | (VN) Mẹ thắp nén hương ban thờ cho con rồi. Ăn đầy đủ rồi ngủ sớm nhé. |
| Thái | (VN) Vâng. Tối nay con không ôn nữa, sách gấp lại rồi. |
| Mai | (VN, ghé vào) Anh! Cố lên! Đề thử lần cuối 135 rồi, mức đỗ chỉ 90 thôi, dư sức. |
| Thái | (VN) Ừ. Anh học được mấy chữ chiều nay: 添削 — sửa bài, cô Yoshida dạy. 部分否定 — phủ định một phần, anh Sato dạy. |
| Mai | (VN) Anh tích góp được nhiều cộng sự bên đó nhỉ. |
| Thái | (VN) Ừ. Trưởng nhà máy cho anh nghỉ tăng ca tối qua. Anh Putra dạy anh shadowing NHK. Chị Linh kèm 6 tuần liền. |
| Mai | (VN) Anh đi thi không phải một mình đâu. Cả nhà mình, cả công ty, cả chị Linh đứng sau. |
| Thái | (VN) Anh biết. Mai thi xong anh gọi lại ngay. Em với mẹ ngủ ngon nhé. |
| Mẹ Thái | (VN) Ngủ ngon con. Cẩn thận đi đường mai. |

---

## Đọng lại chương 10

Sáu tuần nước rút, Thái không chỉ gom thêm từ vựng N2 mà còn dựng được cả một hệ thống học có người đỡ: **xin phép cấp trên nghỉ ngày thi** (〜していただけないかと思いまして), **hỏi đàn anh ngữ pháp khó** (〜というのは・違いがよく分かりません), **xác nhận lại bằng cách diễn giải** (つまり〜ということですね), và **nhờ giáo viên 添削** (chấm sửa) định kỳ. Về ngữ pháp, học bộ ba **〜わけではない** (phủ định một phần), **〜に違いない** (suy đoán mạnh có chứng cứ), **〜ものの** (thừa nhận sự thật nhưng kết quả ngược kỳ vọng), kèm **〜にもかかわらず** vận dụng vào nhật ký 5 dòng mỗi tối. Chiến lược thi: phần **読解** đọc câu hỏi trước rồi quét đoạn, tìm chốt **つまり・要するに・このように**; phần **聴解** luyện **シャドーイング** với NHK ニュース7 + **dictation** 1 phút/ngày, riêng **概要理解** Mondai 3 phải đoán cả câu hỏi lẫn đáp án. Đề thử nhảy từ 105 → 120 → 135/175 — vượt mức đỗ 90 với khoảng cách an toàn. Quan trọng hơn điểm số: Thái thấm rằng đi thi không bao giờ là một mình — sau lưng là **工場長 Tanaka** cho phép nghỉ, **先輩 Sato** giảng ngữ pháp giờ nghỉ trưa, **Putra** mở NHK mỗi tối, **cô Yoshida** chấm bài, **chị Linh** kèm từ Hà Nội, và mẹ với Mai chờ ở quê.

> Từ vựng & mẫu câu chương này: JLPT・N2・聴解・読解・文法・語彙・経済対策・政府・記者会見・主旨・詳細・シャドーイング・dictation・添削・部分否定・推量・〜わけではない・〜に違いない・〜ものの・〜にもかかわらず・〜していただけないかと思いまして・〜というのは・つまり〜ということですね・要するに・このように・必ずしも〜ではない・新完全マスター・総まとめ・概要理解

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 日本語能力試験 | にほんごのうりょくしけん | NHẬT BẢN NGỮ NĂNG LỰC THÍ NGHIỆM | kỳ thi JLPT |
| 残業 | ざんぎょう | TÀN NGHIỆP | tăng ca |
| 体調 | たいちょう | THỂ ĐIỀU | tình trạng sức khoẻ |
| 会議 | かいぎ | HỘI NGHỊ | họp |
| 発言 | はつげん | PHÁT NGÔN | phát biểu |
| 応援 | おうえん | ỨNG VIÊN | cổ vũ |
| 聴解 | ちょうかい | THÍNH GIẢI | nghe hiểu |
| 読解 | どっかい | ĐỘC GIẢI | đọc hiểu |
| 字幕 | じまく | TỰ MẠC | phụ đề |
| 音声 | おんせい | ÂM THANH | âm thanh |
| 教材 | きょうざい | GIÁO TÀI | giáo trình |
| 文法 | ぶんぽう | VĂN PHÁP | ngữ pháp |
| 語彙 | ごい | NGỮ VỰNG | từ vựng |
| 違い | ちがい | VI | sự khác biệt |
| 否定 | ひてい | PHỦ ĐỊNH | phủ định |
| 部分否定 | ぶぶんひてい | BỘ PHẬN PHỦ ĐỊNH | phủ định một phần |
| 推量 | すいりょう | SUY LƯỢNG | suy đoán |
| 証拠 | しょうこ | CHỨNG CỨ | chứng cứ |
| 政府 | せいふ | CHÍNH PHỦ | chính phủ |
| 経済対策 | けいざいたいさく | KINH TẾ ĐỐI SÁCH | chính sách kinh tế |
| 政策 | せいさく | CHÍNH SÁCH | chính sách |
| 発表 | はっぴょう | PHÁT BIỂU | công bố |
| 会見 | かいけん | HỘI KIẾN | họp báo |
| 記者 | きしゃ | KÝ GIẢ | phóng viên |
| 主旨 | しゅし | CHỦ CHỈ | nội dung chính |
| 筆者 | ひっしゃ | BÚT GIẢ | tác giả |
| 概要理解 | がいよう りかい | KHÁI YẾU LÝ GIẢI | hiểu khái quát |
| 詳細 | しょうさい | TƯỜNG TẾ | chi tiết |
| 添削 | てんさく | THIÊM TƯỚC | chấm sửa bài |
| 定着 | ていちゃく | ĐỊNH TRƯỚC | bám rễ, ổn định |
| 日記 | にっき | NHẬT KÝ | nhật ký |
| 文型 | ぶんけい | VĂN HÌNH | mẫu câu |
| 試験会場 | しけんかいじょう | THÍ NGHIỆM HỘI TRƯỜNG | địa điểm thi |
| 自信 | じしん | TỰ TÍN | tự tin |
| 努力 | どりょく | NỖ LỰC | nỗ lực |
| 場面 | ばめん | TRƯỜNG DIỆN | tình huống |
| 通勤 | つうきん | THÔNG CẦN | đi làm |
| 単語 | たんご | ĐƠN NGỮ | từ vựng |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000011, 800000016, NULL, 'markdown_book', 'T11. Đỗ chứng chỉ Khuôn mẫu cấp 2 (金型製作技能士2級合格)', '# Sách kỹ sư khuôn đúc · T11. Đỗ chứng chỉ Khuôn mẫu cấp 2 (金型製作技能士2級合格)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội) bước vào kỳ thi kỹ năng quốc gia 金型製作技能士2級 sau 3 năm làm tại みなみ精密金型. Học các mẫu hội thoại tiếng Nhật quanh kỳ thi tay nghề và sự kiện đỗ chứng chỉ: nhận chỉ dẫn của giám thị thi thực hành (立フライス手加工), báo cáo hoàn thành và xin xác nhận kích thước (寸法確認をお願いします), trao đổi với 先輩 về kế hoạch ôn thi tiếp theo (N2), nhận tin đỗ từ 工場長 và đáp lễ khiêm tốn (おかげさまで), chúc mừng nhau giữa đồng nghiệp đa quốc tịch, và hỏi lại lễ phép khi chưa hiểu thuật ngữ chuyên ngành (〜というのは?).

---

## Bối cảnh

Tháng 8 năm 2025. Thái đã làm tại **株式会社みなみ精密金型** ở Anjo, Aichi được 3 năm, trình độ tiếng Nhật N3 chắc, đang ôn lên N2 cho kỳ vừa thi 7/2025. Tháng 3/2025 là kỳ thi quốc gia 金型製作技能士2級 — thi viết buổi sáng, thi thực hành 立フライス手加工 buổi chiều. Chương này tập trung các mẫu câu giao tiếp trong môi trường thi cử nghề và công sở sau khi có kết quả: nhận hướng dẫn giám thị, báo cáo cấp trên, chúc mừng đồng nghiệp, và cảnh tiếng Việt gọi điện về cho người yêu để chốt mạch nhân vật.

---

## Tình huống 1 — Trước phòng thi 試験会場 · 7:30 sáng thi, đồng nghiệp tiễn động viên

| Vai | Lời thoại |
|---|---|
| <ruby>桜井<rt>さくらい</rt></ruby> | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>はいよいよ<ruby>2級<rt>にきゅう</rt></ruby>の<ruby>本番<rt>ほんばん</rt></ruby>だね。<ruby>頑張<rt>がんば</rt></ruby>って！<br>*(Thái, hôm nay là chính thức thi cấp 2 rồi. Cố lên nhé!)* |
| Thái | はい、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>応援<rt>おうえん</rt></ruby>ありがとうございます。<ruby>練習<rt>れんしゅう</rt></ruby>した<ruby>通<rt>とお</rt></ruby>りに<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, anh Sakurai, em cảm ơn anh đã động viên. Em sẽ làm đúng như đã luyện.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>緊張<rt>きんちょう</rt></ruby>しすぎないで。まず<ruby>図面<rt>ずめん</rt></ruby>をよく<ruby>読<rt>よ</rt></ruby>んで、<ruby>段取<rt>だんど</rt></ruby>りを<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>立<rt>た</rt></ruby>てるんだよ。<br>*(Đừng căng thẳng quá. Trước hết đọc kỹ bản vẽ, lên kế hoạch chuẩn bị bình tĩnh nhé.)* |
| Thái | はい、<ruby>段取<rt>だんど</rt></ruby>り<ruby>八分<rt>はちぶ</rt></ruby>、ですね。<br>*(Vâng, "chuẩn bị chiếm tám phần" đúng không ạ.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | そう、それがあれば<ruby>合格<rt>ごうかく</rt></ruby><ruby>間違<rt>まちが</rt></ruby>いなしだよ。<br>*(Đúng, có vậy là đỗ chắc.)* |
| Thái | <ruby>3<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>教<rt>おし</rt></ruby>えていただいたことを<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>出<rt>だ</rt></ruby>します。<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Em sẽ thể hiện hết những gì anh dạy em suốt 3 năm. Em đi đây ạ.)* |

---

## Tình huống 2 — Phòng thi thực hành 試験会場 · 9:00, nhận chỉ dẫn của giám thị

| Vai | Lời thoại |
|---|---|
| Giám thị | これから<ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>の<ruby>実技試験<rt>じつぎしけん</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>4時間<rt>よじかん</rt></ruby>です。<br>*(Từ giờ chúng ta bắt đầu thi thực hành chứng chỉ kỹ năng khuôn mẫu cấp 2. Thời gian giới hạn 4 tiếng.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong thầy chỉ bảo.)* |
| Giám thị | <ruby>課題<rt>かだい</rt></ruby>は<ruby>立<rt>たて</rt></ruby>フライス<ruby>手加工<rt>てかこう</rt></ruby>です。R<ruby>加工<rt>かこう</rt></ruby>と<ruby>溝加工<rt>みぞかこう</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>ってください。<ruby>図面<rt>ずめん</rt></ruby>はこちらです。<br>*(Đề bài là phay đứng thủ công. Gia công R và gia công rãnh. Bản vẽ đây.)* |
| Thái | （<ruby>図面<rt>ずめん</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）すみません、<ruby>溝<rt>みぞ</rt></ruby>の<ruby>公差<rt>こうさ</rt></ruby>は±<ruby>0.02<rt>れいてんれいに</rt></ruby>ミリということでよろしいでしょうか？<br>*(Nhận bản vẽ. Xin lỗi, dung sai của rãnh là ±0.02mm đúng không ạ?)* |
| Giám thị | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>図面<rt>ずめん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてある<ruby>通<rt>とお</rt></ruby>りに<ruby>仕上<rt>しあ</rt></ruby>げてください。<br>*(Vâng, đúng vậy. Hoàn thiện đúng như bản vẽ ghi nhé.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>段取<rt>だんど</rt></ruby>りから<ruby>始<rt>はじ</rt></ruby>めさせていただきます。<br>*(Em rõ ạ. Em xin được bắt đầu từ khâu chuẩn bị.)* |
| Giám thị | <ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れないように。<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Đừng quên kiểm tra an toàn. Bắt đầu đi.)* |

---

## Tình huống 3 — Bên máy phay 立フライス · 12:30, báo cáo hoàn thành và xin xác nhận kích thước

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>3時間半後<rt>さんじかんはんご</rt></ruby>、<ruby>加工<rt>かこう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>）<ruby>試験<rt>しけん</rt></ruby><ruby>官<rt>かん</rt></ruby>、<ruby>加工<rt>かこう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Sau 3 tiếng rưỡi, gia công xong. Thưa thầy giám thị, em đã gia công xong. Mời thầy kiểm tra.)* |
| Giám thị | <ruby>早<rt>はや</rt></ruby>かったですね。まず<ruby>自分<rt>じぶん</rt></ruby>で<ruby>寸法<rt>すんぽう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をしましたか？<br>*(Nhanh đấy. Em đã tự kiểm tra kích thước chưa?)* |
| Thái | はい、ノギスとマイクロメーターで<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>測<rt>はか</rt></ruby>りました。<ruby>結果<rt>けっか</rt></ruby>はこちらのメモに<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Dạ rồi, em đã đo hết bằng thước cặp và panme. Kết quả em ghi trong tờ ghi chú này ạ.)* |
| Giám thị | （<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る）<ruby>溝<rt>みぞ</rt></ruby>の<ruby>幅<rt>はば</rt></ruby>、R<ruby>部分<rt>ぶぶん</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>公差内<rt>こうさない</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っています。<br>*(Đo kích thước. Chiều rộng rãnh, phần R, đều nằm trong dung sai.)* |
| Thái | ありがとうございます。<br>*(Em cảm ơn thầy ạ.)* |
| Giám thị | <ruby>表面<rt>ひょうめん</rt></ruby><ruby>仕上<rt>しあ</rt></ruby>がりもきれいですね。<ruby>提出<rt>ていしゅつ</rt></ruby>として<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ります。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Bề mặt hoàn thiện cũng đẹp. Tôi nhận làm bài nộp. Vất vả rồi.)* |
| Thái | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Thầy vất vả rồi. Em xin phép.)* |

---

## Tình huống 4 — Quán cà phê gần ga · 17:00 ngày thi, hỏi lại 先輩 về thuật ngữ trong đề

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>今日<rt>きょう</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>で<ruby>分<rt>わ</rt></ruby>からない<ruby>言葉<rt>ことば</rt></ruby>がありました。<ruby>聞<rt>き</rt></ruby>いてもいいですか？<br>*(Anh Sakurai, trong đề thi hôm nay có từ em không hiểu. Em hỏi anh được không ạ?)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | もちろん。なに？<br>*(Tất nhiên rồi. Gì thế?)* |
| Thái | <ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に「<ruby>抜<rt>ぬ</rt></ruby>き<ruby>勾配<rt>こうばい</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。「<ruby>抜<rt>ぬ</rt></ruby>き<ruby>勾配<rt>こうばい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Đề thi lý thuyết có từ "nuki-koubai". "Nuki-koubai" nghĩa là gì ạ?)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | ああ、それは<ruby>金型<rt>かながた</rt></ruby>から<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>すための<ruby>傾<rt>かたむ</rt></ruby>きのことだよ。<ruby>普通<rt>ふつう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby>から<ruby>3<rt>さん</rt></ruby><ruby>度<rt>ど</rt></ruby>ぐらい<ruby>付<rt>つ</rt></ruby>ける。<br>*(À, là độ nghiêng để lấy sản phẩm ra khỏi khuôn đó. Thường để 1 đến 3 độ.)* |
| Thái | なるほど、<ruby>製品<rt>せいひん</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くために<ruby>傾<rt>かたむ</rt></ruby>けるということですね。<br>*(Ra vậy, là làm nghiêng để rút sản phẩm ra, đúng không ạ?)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | そう。<ruby>傾<rt>かたむ</rt></ruby>きがないと、<ruby>製品<rt>せいひん</rt></ruby>が<ruby>金型<rt>かながた</rt></ruby>にくっついて<ruby>取<rt>と</rt></ruby>れなくなる。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>基本<rt>きほん</rt></ruby>だよ。<br>*(Đúng. Không có nghiêng thì sản phẩm dính vào khuôn lấy không ra. Là kiến thức cơ bản quan trọng đó.)* |
| Thái | <ruby>覚<rt>おぼ</rt></ruby>えておきます。あと、もう<ruby>一<rt>ひと</rt></ruby>つ、「<ruby>放電加工<rt>ほうでんかこう</rt></ruby>」が<ruby>出<rt>で</rt></ruby>ましたが、<ruby>受験<rt>じゅけん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>として<ruby>何<rt>なに</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えたらいいですか？<br>*(Em ghi nhớ ạ. Còn một từ nữa, có "houden-kakou", để ôn thi em nên nhớ gì ạ?)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>放電加工<rt>ほうでんかこう</rt></ruby>は<ruby>電気<rt>でんき</rt></ruby>の<ruby>火花<rt>ひばな</rt></ruby>で<ruby>金属<rt>きんぞく</rt></ruby>を<ruby>削<rt>けず</rt></ruby>る<ruby>技術<rt>ぎじゅつ</rt></ruby>。<ruby>硬<rt>かた</rt></ruby>い<ruby>材料<rt>ざいりょう</rt></ruby>にも<ruby>使<rt>つか</rt></ruby>える。<ruby>原理<rt>げんり</rt></ruby>だけ<ruby>押<rt>お</rt></ruby>さえれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<br>*(Gia công phóng điện là kỹ thuật dùng tia lửa điện để cắt kim loại. Vật liệu cứng cũng dùng được. Nắm nguyên lý là ổn.)* |
| Thái | はい、ノートに<ruby>書<rt>か</rt></ruby>いておきます。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Vâng em ghi vào sổ. Em cảm ơn anh rất nhiều ạ.)* |

---

## Tình huống 5 — Khu nghỉ giải lao xưởng · 10:00 giữa tháng 4, trao đổi với 先輩 về kế hoạch ôn N2

| Vai | Lời thoại |
|---|---|
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>2級<rt>にきゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>はまだ？<br>*(Thái, kết quả cấp 2 vẫn chưa ra à?)* |
| Thái | はい、まだです。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, chưa ạ. Tuần sau dự kiến công bố ạ.)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | <ruby>次<rt>つぎ</rt></ruby>はN2だね。<ruby>勉強<rt>べんきょう</rt></ruby>はどう？<br>*(Tiếp theo là N2 nhỉ. Việc học sao rồi?)* |
| Thái | <ruby>7月<rt>しちがつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みました。<ruby>文法<rt>ぶんぽう</rt></ruby>と<ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いです。<br>*(Em đăng ký thi kỳ tháng 7 rồi. Em yếu ngữ pháp và nghe ạ.)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | <ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>0<rt>じゅう</rt></ruby><ruby>分<rt>ぷん</rt></ruby>でいい、<ruby>続<rt>つづ</rt></ruby>けることが<ruby>大事<rt>だいじ</rt></ruby>。NHKラジオがいいよ。<br>*(Nghe thì mỗi ngày 30 phút là đủ, quan trọng là duy trì. NHK radio tốt đó.)* |
| Thái | はい、<ruby>朝<rt>あさ</rt></ruby><ruby>通勤<rt>つうきん</rt></ruby>の<ruby>時<rt>とき</rt></ruby>に<ruby>聞<rt>き</rt></ruby>くようにします。あと、<ruby>文法<rt>ぶんぽう</rt></ruby>はどうすればいいですか？<br>*(Vâng, em sẽ nghe lúc đi làm buổi sáng. Còn ngữ pháp em nên làm thế nào ạ?)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | 「<ruby>新<rt>しん</rt></ruby><ruby>完全<rt>かんぜん</rt></ruby>マスター」を<ruby>一<rt>いっ</rt></ruby><ruby>冊<rt>さつ</rt></ruby><ruby>終<rt>お</rt></ruby>わらせる。<ruby>毎日<rt>まいにち</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>でいい。<br>*(Học hết một quyển "Shin Kanzen Master". Mỗi ngày 5 mục là được.)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>ですね。<ruby>今日<rt>きょう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(5 mục một ngày ạ. Em bắt đầu từ hôm nay.)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | <ruby>2級<rt>にきゅう</rt></ruby>に<ruby>受<rt>う</rt></ruby>かったら<ruby>自信<rt>じしん</rt></ruby>がついて、N2もスムーズに<ruby>行<rt>い</rt></ruby>くよ。<br>*(Đỗ cấp 2 sẽ có tự tin, N2 cũng sẽ thuận hơn.)* |
| Thái | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng.)* |

---

## Tình huống 6 — Văn phòng 工場長 · 9:00 ngày kết quả 4/2025, nhận tin đỗ

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | タイ<ruby>君<rt>くん</rt></ruby>、ちょっと<ruby>来<rt>き</rt></ruby>てくれる？<br>*(Thái, lại đây tôi gặp một chút.)* |
| Thái | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, em xin phép vào ạ.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>金型<rt>かながた</rt></ruby><ruby>製作<rt>せいさく</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たよ。<br>*(Kết quả chứng chỉ kỹ năng khuôn mẫu cấp 2 ra rồi đây.)* |
| Thái | （<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>した<ruby>声<rt>こえ</rt></ruby>で）はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Giọng hơi căng. Vâng, mời ông ạ.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>合格<rt>ごうかく</rt></ruby>です！<ruby>学科<rt>がっか</rt></ruby>も<ruby>実技<rt>じつぎ</rt></ruby>もちゃんと<ruby>通<rt>とお</rt></ruby>っている。おめでとう。<br>*(Đỗ rồi! Cả lý thuyết và thực hành đều qua. Chúc mừng.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！おかげさまで<ruby>合格<rt>ごうかく</rt></ruby>できました。<br>*(Cúi đầu. Em cảm ơn ông rất nhiều! Nhờ ơn mọi người em mới đỗ được.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>が<ruby>来日<rt>らいにち</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>で<ruby>2級<rt>にきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>るのは、うちの<ruby>会社<rt>かいしゃ</rt></ruby>でも<ruby>初<rt>はじ</rt></ruby>めてだよ。<br>*(Nhân viên người nước ngoài sang Nhật 3 năm mà lấy được cấp 2, ở công ty mình cũng là lần đầu.)* |
| Thái | <ruby>先輩<rt>せんぱい</rt></ruby><ruby>方<rt>がた</rt></ruby>に<ruby>毎日<rt>まいにち</rt></ruby><ruby>教<rt>おし</rt></ruby>えていただいたからです。<br>*(Là nhờ các đàn anh dạy em mỗi ngày ạ.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>謙遜<rt>けんそん</rt></ruby>しなくていいよ。<ruby>君<rt>きみ</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>だ。<ruby>次<rt>つぎ</rt></ruby>はN2、<ruby>7月<rt>しちがつ</rt></ruby>だね。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Đừng khiêm tốn. Là kết quả nỗ lực của em đấy. Tiếp theo là N2, tháng 7 nhỉ. Cố lên.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。ありがとうございました。<br>*(Vâng, em nhất định sẽ đỗ. Em cảm ơn ông rất nhiều ạ.)* |

---

## Tình huống 7 — Hành lang xưởng · 10:00 cùng ngày, chia sẻ tin với 先輩

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>！ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>2級<rt>にきゅう</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>しました！<br>*(Anh Sakurai! Em có chuyện báo cáo. Cấp 2 em đỗ rồi ạ!)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | おお、やったな！<ruby>本当<rt>ほんとう</rt></ruby>におめでとう！<br>*(Ồ, được rồi nhé! Chúc mừng thật lòng!)* |
| Thái | <ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<ruby>段取<rt>だんど</rt></ruby>り<ruby>八分<rt>はちぶ</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Là nhờ anh Sakurai ạ. "Chuẩn bị chiếm tám phần" — vào thi thật sự rất có ích.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | こちらこそ、<ruby>教<rt>おし</rt></ruby>えがいがあったよ。タイ<ruby>君<rt>くん</rt></ruby>はちゃんと<ruby>聞<rt>き</rt></ruby>いて<ruby>実行<rt>じっこう</rt></ruby>する。<br>*(Tôi cũng vui khi có người chịu nghe và thực hành như em.)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | （<ruby>通<rt>とお</rt></ruby>りかかって）<ruby>合格<rt>ごうかく</rt></ruby>したって？すごいね！<br>*(Đi ngang qua. Đỗ rồi à? Cậu giỏi đấy!)* |
| Thái | はい、<ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>もアドバイスをくださってありがとうございました。<br>*(Vâng, em cảm ơn anh Hayashi cũng đã cho em lời khuyên ạ.)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | これからもよろしくね。<ruby>2級<rt>にきゅう</rt></ruby>の<ruby>技能士<rt>ぎのうし</rt></ruby>として<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>面倒<rt>めんどう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sau này cũng nhờ em nhé. Là kỹ năng sĩ cấp 2 rồi, em cũng giúp dìu dắt hậu bối nhé.)* |
| Thái | はい、しっかり<ruby>務<rt>つと</rt></ruby>めます。<br>*(Vâng, em sẽ làm tốt ạ.)* |

---

## Tình huống 8 — Phòng nghỉ trưa · 12:30, đồng nghiệp Putra chúc mừng

| Vai | Lời thoại |
|---|---|
| Putra | タイさん！<ruby>合格<rt>ごうかく</rt></ruby>したそうですね、おめでとうございます！<br>*(Anh Thái! Nghe nói anh đỗ rồi, chúc mừng anh!)* |
| Thái | プトラさん、ありがとう。プトラさんも<ruby>来年<rt>らいねん</rt></ruby><ruby>受<rt>う</rt></ruby>けるんですよね？<br>*(Anh Putra, cảm ơn anh. Anh Putra năm sau cũng thi đúng không?)* |
| Putra | はい、<ruby>来年<rt>らいねん</rt></ruby>、<ruby>3級<rt>さんきゅう</rt></ruby>からです。タイさんに<ruby>教<rt>おし</rt></ruby>えてもらえますか？<br>*(Vâng, năm sau em thi từ cấp 3. Anh dạy em được không?)* |
| Thái | もちろんです。<ruby>段取<rt>だんど</rt></ruby>りの<ruby>立<rt>た</rt></ruby>て<ruby>方<rt>かた</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>にやりましょう。<br>*(Tất nhiên rồi. Mình cùng bắt đầu từ cách lên kế hoạch chuẩn bị nhé.)* |
| Putra | お<ruby>祝<rt>いわ</rt></ruby>いの<ruby>飲<rt>の</rt></ruby>み<ruby>会<rt>かい</rt></ruby>、<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>はどうですか？<br>*(Tiệc mừng, thứ sáu tuần này được không anh?)* |
| Thái | いいですね。でも、すみません、「<ruby>飲<rt>の</rt></ruby>み<ruby>会<rt>かい</rt></ruby>」というのは<ruby>会社<rt>かいしゃ</rt></ruby>でやりますか？それとも<ruby>居酒屋<rt>いざかや</rt></ruby>で？<br>*(Hay đấy. Nhưng xin lỗi, "nomikai" là tổ chức ở công ty hay ở quán izakaya ạ?)* |
| Putra | <ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>くの<ruby>居酒屋<rt>いざかや</rt></ruby>でやります。<ruby>先輩<rt>せんぱい</rt></ruby><ruby>方<rt>がた</rt></ruby>も<ruby>誘<rt>さそ</rt></ruby>いましょう。<br>*(Quán izakaya gần công ty. Rủ cả các anh đàn anh nữa.)* |
| Thái | はい、ぜひ。<ruby>会費<rt>かいひ</rt></ruby>はみんなで<ruby>割<rt>わ</rt></ruby>り<ruby>勘<rt>かん</rt></ruby>でいいですか？<br>*(Vâng, nhất định. Tiền hội mỗi người chia đều được không?)* |
| Putra | はい、<ruby>割<rt>わ</rt></ruby>り<ruby>勘<rt>かん</rt></ruby>で。タイさんは<ruby>主役<rt>しゅやく</rt></ruby>だから<ruby>払<rt>はら</rt></ruby>わなくていいよ。<br>*(Vâng, chia đều. Anh là nhân vật chính, không phải trả đâu.)* |
| Thái | いえいえ、<ruby>払<rt>はら</rt></ruby>います。<br>*(Không không, em trả chứ.)* |

---

## Tình huống 9 — Trước cửa văn phòng · 17:30, quan sát 工場長 trao đổi với khách hàng (quan sát đàn anh)

| Vai | Lời thoại |
|---|---|
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | （<ruby>取引先<rt>とりひきさき</rt></ruby>に<ruby>電話<rt>でんわ</rt></ruby>で）はい、<ruby>納期<rt>のうき</rt></ruby>の<ruby>件<rt>けん</rt></ruby>ですが、<ruby>2級<rt>にきゅう</rt></ruby>の<ruby>技能士<rt>ぎのうし</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けますので、<ruby>品質<rt>ひんしつ</rt></ruby>は<ruby>保証<rt>ほしょう</rt></ruby>いたします。<br>*(Gọi điện cho khách hàng. Vâng, về vấn đề thời hạn giao, chúng tôi sẽ giao cho kỹ năng sĩ cấp 2 phụ trách, đảm bảo chất lượng.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>納期<rt>のうき</rt></ruby>は<ruby>5月<rt>ごがつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>まで<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>守<rt>まも</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Thời hạn cuối tháng 5 chúng tôi nhất định giữ đúng. Mong quý vị giúp đỡ.)* |
| Thái | （<ruby>外<rt>そと</rt></ruby>で<ruby>待<rt>ま</rt></ruby>っていて、<ruby>電話<rt>でんわ</rt></ruby>が<ruby>終<rt>お</rt></ruby>わるのを<ruby>聞<rt>き</rt></ruby>いている）<br>*(Đứng đợi ngoài, lắng nghe ông kết thúc cuộc điện thoại.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | （<ruby>電話<rt>でんわ</rt></ruby>を<ruby>切<rt>き</rt></ruby>って、タイに）<ruby>聞<rt>き</rt></ruby>こえたかな？<ruby>君<rt>きみ</rt></ruby>のことを<ruby>取引先<rt>とりひきさき</rt></ruby>に<ruby>紹介<rt>しょうかい</rt></ruby>したよ。<br>*(Cúp máy, quay sang Thái. Em nghe rồi à? Tôi đã giới thiệu em với khách hàng đấy.)* |
| Thái | はい、<ruby>聞<rt>き</rt></ruby>こえました。<ruby>責任<rt>せきにん</rt></ruby><ruby>重大<rt>じゅうだい</rt></ruby>ですね。<br>*(Vâng, em nghe rồi ạ. Trách nhiệm nặng nề nhỉ.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | <ruby>2級<rt>にきゅう</rt></ruby>を<ruby>持<rt>も</rt></ruby>っているということは、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>看板<rt>かんばん</rt></ruby>になるということだ。<ruby>取引先<rt>とりひきさき</rt></ruby>に<ruby>「2級<rt>にきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>えれば、<ruby>信用<rt>しんよう</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<br>*(Có cấp 2 nghĩa là em trở thành biển hiệu của công ty. Nói với khách "kỹ năng sĩ cấp 2 phụ trách" là độ tin cậy khác hẳn.)* |
| Thái | はい、その<ruby>看板<rt>かんばん</rt></ruby>を<ruby>汚<rt>よご</rt></ruby>さないように<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng để không làm bẩn cái biển hiệu đó ạ.)* |
| <ruby>田中<rt>たなか</rt></ruby><ruby>工場長<rt>こうじょうちょう</rt></ruby> | うん。それが<ruby>資格<rt>しかく</rt></ruby>の<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>意味<rt>いみ</rt></ruby>だよ。<br>*(Ừ. Đó mới là ý nghĩa thật sự của bằng cấp.)* |

---

## Tình huống 10 — Phòng 201 ký túc · 22:00, gọi video về cho Mai (cảnh tiếng Việt — giữ mạch nhân vật)

> Cảnh tiếng Việt — gọi video với người yêu ở Hà Nội, ôn lại từ vựng JP trong chương.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh đỗ rồi! |
| Mai | (tiếng Việt) Anh! Đỗ thật ạ? Cái chứng chỉ khuôn mẫu hồi tháng 3 ấy hả? |
| Thái | (tiếng Việt) Ừ, 金型製作技能士 cấp 2. Sáng nay ông Tanaka trưởng nhà máy gọi anh vào báo. |
| Mai | (tiếng Việt) Anh giỏi quá! Em mừng phát khóc. Mà sao anh kể như đang đọc báo cáo vậy, không reo lên à? |
| Thái | (tiếng Việt) Trong văn phòng anh nén lại, cúi đầu cảm ơn ông. Người Nhật họ dạy anh "おかげさまで" — nhờ mọi người chứ không phải mình giỏi. Học mãi mới quen. |
| Mai | (tiếng Việt) Còn bạn Putra với mấy anh đàn anh thì sao? |
| Thái | (tiếng Việt) Thứ sáu có 飲み会, là tiệc mừng ở quán izakaya. Mọi người chia tiền 割り勘, ai cũng bằng nhau, không ai bao cả. |
| Mai | (tiếng Việt) Hay nhỉ. Còn N2 thì sao anh? |
| Thái | (tiếng Việt) 7/2025 thi. Anh Hayashi bảo mỗi ngày học 5 mục văn pháp với 30 phút nghe NHK radio. Anh sẽ giữ đúng nhịp. |
| Mai | (tiếng Việt) Anh này, hôm trước anh nói chuyện cưới em đầu năm sau, anh còn nhớ không? |
| Thái | (tiếng Việt) Nhớ chứ. Đỗ N2 xong là về cưới em. Tháng 1 hoặc tháng 2 năm 2026. |
| Mai | (tiếng Việt, mắt đỏ) Vâng. Em đợi anh. |
| Thái | (tiếng Việt) Anh phải ngủ rồi, mai 7 giờ rưỡi xuống xưởng. Em ngủ ngon nhé. |

---

## Tình huống 11 — Quán izakaya gần ga Anjo · 19:00 tối thứ sáu, tiệc mừng

| Vai | Lời thoại |
|---|---|
| <ruby>桜井<rt>さくらい</rt></ruby> | では、タイ<ruby>君<rt>くん</rt></ruby>の<ruby>2級<rt>にきゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>を<ruby>祝<rt>いわ</rt></ruby>って、<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Vậy thì, mừng anh Thái đỗ cấp 2, cạn ly!)* |
| Mọi người | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Thái | （<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>がる）<ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>集<rt>あつ</rt></ruby>まりいただき、ありがとうございます。<ruby>2級<rt>にきゅう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>は<ruby>皆<rt>みな</rt></ruby>さんのご<ruby>指導<rt>しどう</rt></ruby>のおかげです。<br>*(Đứng dậy. Thưa các anh chị, cảm ơn mọi người hôm nay đã tụ họp. Việc em đỗ cấp 2 là nhờ sự chỉ dẫn của các anh chị.)* |
| <ruby>林<rt>はやし</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby> | スピーチが<ruby>上手<rt>じょうず</rt></ruby>になったね！<ruby>日本語<rt>にほんご</rt></ruby>も<ruby>立派<rt>りっぱ</rt></ruby>だ。<br>*(Phát biểu khá lên rồi đấy! Tiếng Nhật cũng đàng hoàng.)* |
| Thái | これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>次<rt>つぎ</rt></ruby>はN2、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Sau này cũng mong các anh chị giúp đỡ. Tiếp theo là N2, em nhất định sẽ đỗ.)* |
| Putra | タイさん、お<ruby>疲<rt>つか</rt></ruby>れさま！<ruby>来年<rt>らいねん</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>番<rt>ばん</rt></ruby>です。<br>*(Anh Thái vất vả rồi! Năm sau đến lượt em.)* |
| <ruby>桜井<rt>さくらい</rt></ruby> | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>社員<rt>しゃいん</rt></ruby>が<ruby>2人<rt>ふたり</rt></ruby>とも<ruby>技能士<rt>ぎのうし</rt></ruby>になったら、うちの<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>大<rt>おお</rt></ruby>きな<ruby>力<rt>ちから</rt></ruby>になるよ。<br>*(Hai nhân viên người nước ngoài đều thành kỹ năng sĩ thì sẽ là sức mạnh lớn cho công ty mình đó.)* |
| Thái | はい、<ruby>会社<rt>かいしゃ</rt></ruby>のために、お<ruby>互<rt>たが</rt></ruby>いに<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Vâng, vì công ty, chúng ta cùng cố gắng nhé.)* |

---

## Đọng lại chương 11

Sau 3 năm làm việc và học nghề tại Aichi, Thái bước vào kỳ thi quốc gia 金型製作技能士2級 và đỗ ngay lần đầu. Chương này dạy người học bộ mẫu câu giao tiếp xoay quanh **kỳ thi tay nghề** và **văn hoá đỗ chứng chỉ tại Nhật**: **xác nhận đề thi với giám thị** (〜ということでよろしいでしょうか?), **báo cáo hoàn thành và xin kiểm tra** (加工が終わりました・確認をお願いいたします), **hỏi lại lễ phép thuật ngữ chuyên ngành** (〜というのは?・抜き勾配・放電加工), **trao đổi kế hoạch ôn thi với 先輩** (毎日5項目・新完全マスター・NHKラジオ), **nhận tin đỗ và đáp lễ khiêm tốn** (おかげさまで・先輩方に教えていただいたから), và **văn hoá tiệc mừng** (飲み会・割り勘・乾杯). Đồng thời nhận ra ý nghĩa của bằng cấp Nhật — không phải để treo lên, mà là trở thành **看板** (biển hiệu) của công ty trước khách hàng — và rằng đỗ là dịp để **报告** lên cấp trên, cảm ơn 先輩 đã dạy, rồi quay lại dìu dắt 後輩 nước ngoài như Putra.

> Từ vựng & mẫu câu chương này: 金型製作技能士・2級・合格・実技試験・学科試験・立フライス手加工・R加工・溝加工・寸法確認・公差・段取り・図面・抜き勾配・放電加工・新完全マスター・聴解・文法・看板・乾杯・飲み会・割り勘・おかげさまで・〜ということでよろしいでしょうか・〜というのは・確認をお願いいたします・ご指導のおかげです

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 段取り | だんどり | ĐOẠN THỦ | công đoạn chuẩn bị |
| 金型製作技能士 | かながたせいさくぎのうし | KIM HÌNH CHẾ TÁC KỸ NĂNG SĨ | kỹ năng sĩ chế tác khuôn |
| 学科試験 | がっかしけん | HỌC KHOA THÍ NGHIỆM | thi lý thuyết |
| 立フライス手加工 | たてフライスてかこう | LẬP THỦ GIA CÔNG | phay đứng thủ công |
| 安全確認 | あんぜんかくにん | AN TOÀN XÁC NHẬN | kiểm tra an toàn |
| 表面 | ひょうめん | BIỂU DIỆN | bề mặt |
| 抜き勾配 | ぬきこうばい | BẠT CẤU PHỐI | độ nghiêng tháo khuôn |
| 傾き | かたむき | KHUYNH | độ nghiêng |
| 放電加工 | ほうでんかこう | PHÓNG ĐIỆN GIA CÔNG | gia công phóng điện |
| 火花 | ひばな | HỎA HOA | tia lửa |
| 金属 | きんぞく | KIM THUỘC | kim loại |
| 原理 | げんり | NGUYÊN LÝ | nguyên lý |
| 申し込む | もうしこむ | THÂN VÀO | đăng ký |
| 新完全マスター | しんかんぜんマスター | TÂN HOÀN TOÀN | giáo trình Shin Kanzen Master |
| 項目 | こうもく | HẠNG MỤC | mục, đầu mục |
| 看板 | かんばん | KHÁN BẢN | biển hiệu |
| 取引先 | とりひきさき | THỦ DẪN TIÊN | đối tác, khách hàng |
| 品質 | ひんしつ | PHẨM CHẤT | chất lượng |
| 保証 | ほしょう | BẢO CHỨNG | đảm bảo |
| 責任 | せきにん | TRÁCH NHIỆM | trách nhiệm |
| 信用 | しんよう | TÍN DỤNG | uy tín |
| 飲み会 | のみかい | ẨM HỘI | tiệc nhậu |
| 割り勘 | わりかん | CÁT KHUYÊN | chia tiền đều |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 居酒屋 | いざかや | CƯ TỬU ỐC | quán nhậu |
| 主役 | しゅやく | CHỦ DỊCH | nhân vật chính |
| 後輩 | こうはい | HẬU BỐI | đàn em |
| 謙遜 | けんそん | KHIÊM TỐN | khiêm tốn |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (816000012, 800000016, NULL, 'markdown_book', 'T12. Khép năm 3 và bước lên kỹ sư thiết kế junior (3年経過・設計者昇格)', '# Sách kỹ sư khuôn đúc · T12. Khép năm 3 và bước lên kỹ sư thiết kế junior (3年経過・設計者昇格)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội) khép năm thứ 3 tại 株式会社みなみ精密金型. Học các mẫu hội thoại tiếng Nhật tổng kết sự nghiệp + nhận thăng chức + lên kế hoạch năm 4: trình bày 実績 với cấp trên (〜を取得しました・〜を担当しました), tiếp nhận quyết định 昇格 (謹んでお受けします), xác nhận mức lương + chế độ (給与・手当), thảo luận 4年目プラン bằng câu liệt kê (まず〜、次に〜), 報告 thăng chức với 先輩・同僚 ở izakaya (おかげさまで), gọi điện báo Mai + Linh-Anh bằng tiếng Việt để chốt mạch nhân vật, hỏi lại lễ phép khi chưa rõ điều khoản (〜というのは具体的にどういう意味でしょうか).

---

## Bối cảnh

Cuối tháng 4 năm 2025. Thái tròn 3 năm làm việc tại **株式会社みなみ精密金型** ở Anjo, Aichi. Trình độ tiếng Nhật N3, đang ôn N2 thi tháng 7. 工場長 Tanaka mời Thái lên văn phòng cuối ngày để chốt đánh giá năm 3 và công bố quyết định nhân sự. Chương này tập trung các mẫu câu giao tiếp khi tổng kết sự nghiệp + nhận thăng chức: trình bày thành tích với cấp trên, đáp lễ khi được thăng chức 設計者, hỏi xác nhận điều kiện lương + trách nhiệm mới, thảo luận kế hoạch năm tới, và báo tin gia đình.

---

## Tình huống 1 — Văn phòng 工場長 · 14:00, trình bày 実績 năm 3

| Vai | Lời thoại |
|---|---|
| Tanaka 工場長 | タイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさま。<ruby>入社<rt>にゅうしゃ</rt></ruby>から<ruby>3年<rt>さんねん</rt></ruby>が<ruby>経<rt>た</rt></ruby>ちましたね。<ruby>今日<rt>きょう</rt></ruby>は<ruby>年次<rt>ねんじ</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>と<ruby>来期<rt>らいき</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をしましょう。<br>*(Anh Thái, vất vả rồi. Từ ngày vào công ty đã tròn 3 năm. Hôm nay mình nói về đánh giá thường niên và kỳ tới nhé.)* |
| Thái | はい、<ruby>工場長<rt>こうじょうちょう</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng thưa trưởng nhà máy, em xin phép ạ.)* |
| Tanaka 工場長 | まず、タイ<ruby>君<rt>くん</rt></ruby>から<ruby>3年目<rt>さんねんめ</rt></ruby>の<ruby>実績<rt>じっせき</rt></ruby>を<ruby>簡単<rt>かんたん</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してください。<br>*(Trước tiên, em hãy báo cáo ngắn gọn về thành tích năm 3.)* |
| Thái | はい。<ruby>3年目<rt>さんねんめ</rt></ruby>の<ruby>実績<rt>じっせき</rt></ruby>は<ruby>四<rt>よっ</rt></ruby>つございます。まず、<ruby>3次元<rt>さんじげん</rt></ruby>CAD<ruby>2級<rt>にきゅう</rt></ruby>と<ruby>金型製作<rt>かながたせいさく</rt></ruby><ruby>2級<rt>にきゅう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>しました。<br>*(Vâng. Thành tích năm 3 có 4 điểm ạ. Đầu tiên, em đã lấy được 3D CAD 2 級 và 金型製作 2 級.)* |
| Tanaka 工場長 | はい、<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, tôi đã xác nhận.)* |
| Thái | <ruby>次<rt>つぎ</rt></ruby>に、<ruby>水路設計<rt>すいろせっけい</rt></ruby>を<ruby>1人<rt>ひとり</rt></ruby>で<ruby>担当<rt>たんとう</rt></ruby>させていただきました。それから、<ruby>初<rt>はじ</rt></ruby>めて<ruby>客先<rt>きゃくさき</rt></ruby>の<ruby>浜田様<rt>はまださま</rt></ruby>の<ruby>応対<rt>おうたい</rt></ruby>もさせていただきました。<br>*(Tiếp theo, em được tự một mình phụ trách thiết kế kênh nước. Và lần đầu được ứng đối khách hàng — bác Hamada.)* |
| Tanaka 工場長 | <ruby>浜田様<rt>はまださま</rt></ruby>からは<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>良<rt>よ</rt></ruby>い<ruby>評価<rt>ひょうか</rt></ruby>をいただきました。<br>*(Bác Hamada đã đánh giá rất tốt em đấy.)* |
| Thái | ありがとうございます。<ruby>最後<rt>さいご</rt></ruby>に、JLPT N3に<ruby>合格<rt>ごうかく</rt></ruby>し、<ruby>7月<rt>しちがつ</rt></ruby>にN2を<ruby>受験<rt>じゅけん</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em cảm ơn ạ. Cuối cùng, em đã đỗ JLPT N3 và dự kiến thi N2 vào tháng 7.)* |
| Tanaka 工場長 | <ruby>3年<rt>さんねん</rt></ruby>でアシスタントとしてやるべきことを、しっかりやり<ruby>切<rt>き</rt></ruby>りましたね。<br>*(Trong 3 năm, em đã làm trọn vẹn những gì một trợ lý cần làm.)* |

---

## Tình huống 2 — Văn phòng 工場長 · 14:30, nhận quyết định 昇格 設計者 junior

| Vai | Lời thoại |
|---|---|
| Tanaka 工場長 | では、<ruby>本題<rt>ほんだい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。タイ<ruby>君<rt>くん</rt></ruby>を<ruby>5月<rt>ごがつ</rt></ruby><ruby>1日付<rt>ついたちづけ</rt></ruby>で<ruby>設計者<rt>せっけいしゃ</rt></ruby>（ジュニア）に<ruby>昇格<rt>しょうかく</rt></ruby>させていただきます。<br>*(Vào vấn đề chính. Em sẽ được thăng lên kỹ sư thiết kế junior kể từ ngày 1 tháng 5.)* |
| Thái | え！<ruby>本当<rt>ほんとう</rt></ruby>でございますか。<br>*(Ơ! Có thật vậy không ạ?)* |
| Tanaka 工場長 | <ruby>本当<rt>ほんとう</rt></ruby>です。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>設計者<rt>せっけいしゃ</rt></ruby>として、アシスタント<ruby>役<rt>やく</rt></ruby>を<ruby>卒業<rt>そつぎょう</rt></ruby>することになります。<br>*(Thật. Em sẽ chính thức trở thành kỹ sư thiết kế và tốt nghiệp vai trò trợ lý.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>く<ruby>下<rt>さ</rt></ruby>げる）<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けいたします。ありがとうございます。<br>*(Cúi đầu thật sâu. Em xin trân trọng nhận. Em cảm ơn ông ạ.)* |
| Tanaka 工場長 | <ruby>給与<rt>きゅうよ</rt></ruby>も<ruby>見直<rt>みなお</rt></ruby>しました。<ruby>現在<rt>げんざい</rt></ruby>の<ruby>25万円<rt>にじゅうごまんえん</rt></ruby>から<ruby>28万円<rt>にじゅうはちまんえん</rt></ruby>に<ruby>引<rt>ひ</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げます。<ruby>住宅手当<rt>じゅうたくてあて</rt></ruby>もそのままです。<br>*(Lương cũng được điều chỉnh. Từ 25 vạn hiện tại sẽ nâng lên 28 vạn yên. Phụ cấp nhà ở giữ nguyên.)* |
| Thái | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。すみません、<ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Em hết sức cảm kích ạ. Cho em xác nhận một việc được không ạ?)* |
| Tanaka 工場長 | はい、どうぞ。<br>*(Vâng, em nói đi.)* |
| Thái | 「<ruby>設計者<rt>せっけいしゃ</rt></ruby>（ジュニア）」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか。<ruby>責任<rt>せきにん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか。<br>*("Kỹ sư thiết kế junior" cụ thể là gì ạ? Ông có thể chỉ cho em phạm vi trách nhiệm được không?)* |
| Tanaka 工場長 | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。ジュニアは、<ruby>金型<rt>かながた</rt></ruby><ruby>1個<rt>いっこ</rt></ruby>をAからZまで<ruby>1人<rt>ひとり</rt></ruby>で<ruby>担当<rt>たんとう</rt></ruby>できるレベルです。<ruby>図面<rt>ずめん</rt></ruby>に<ruby>自分<rt>じぶん</rt></ruby>の<ruby>印鑑<rt>いんかん</rt></ruby>を<ruby>押<rt>お</rt></ruby>す<ruby>権限<rt>けんげん</rt></ruby>がつきます。<br>*(Câu hỏi tốt. Junior là cấp đủ năng lực một mình phụ trách 1 bộ khuôn từ A đến Z. Em được quyền đóng dấu cá nhân lên bản vẽ.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>印鑑<rt>いんかん</rt></ruby>の<ruby>重<rt>おも</rt></ruby>みを<ruby>忘<rt>わす</rt></ruby>れずに<ruby>仕事<rt>しごと</rt></ruby>をいたします。<br>*(Vâng em rõ ạ. Em sẽ làm việc không quên sức nặng của con dấu.)* |

---

## Tình huống 3 — Văn phòng 工場長 · 15:00, thảo luận 4年目プラン

| Vai | Lời thoại |
|---|---|
| Tanaka 工場長 | では、<ruby>4年目<rt>よねんめ</rt></ruby>のプランを<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<ruby>4<rt>よっ</rt></ruby>つあります。<br>*(Nào, cùng xác nhận kế hoạch năm 4. Có 4 mục.)* |
| Thái | はい、<ruby>聞<rt>き</rt></ruby>かせていただきます。<br>*(Vâng, em xin lắng nghe ạ.)* |
| Tanaka 工場長 | まず<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>金型<rt>かながた</rt></ruby><ruby>1個<rt>いっこ</rt></ruby>をAからZまで、タイ<ruby>君<rt>くん</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せます。<br>*(Một, anh giao em phụ trách trọn 1 bộ khuôn từ A đến Z.)* |
| Thái | はい、<ruby>必<rt>かなら</rt></ruby>ずやり<ruby>遂<rt>と</rt></ruby>げます。<br>*(Vâng, em nhất định sẽ làm trọn vẹn.)* |
| Tanaka 工場長 | <ruby>次<rt>つぎ</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>、<ruby>12月<rt>じゅうにがつ</rt></ruby>までに<ruby>3次元<rt>さんじげん</rt></ruby>CAD<ruby>1級<rt>いっきゅう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>すること。<br>*(Tiếp theo là hai — đến tháng 12 lấy được 3D CAD 1 級.)* |
| Thái | <ruby>12月<rt>じゅうにがつ</rt></ruby>までに<ruby>1級<rt>いっきゅう</rt></ruby>ということですね。<ruby>計画的<rt>けいかくてき</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Đến tháng 12 lấy 1 級, đúng vậy ạ. Em sẽ chuẩn bị có kế hoạch.)* |
| Tanaka 工場長 | <ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>は<ruby>金型<rt>かながた</rt></ruby><ruby>1級<rt>いっきゅう</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<ruby>受験<rt>じゅけん</rt></ruby>は2027<ruby>年<rt>ねん</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>しましょう。<br>*(Ba là bắt đầu chuẩn bị 金型 1 級. Mục tiêu thi vào năm 2027.)* |
| Thái | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>はすぐに<ruby>過去問<rt>かこもん</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em rõ ạ. Mục 3 em sẽ bắt đầu từ đề năm cũ ngay.)* |
| Tanaka 工場長 | <ruby>最後<rt>さいご</rt></ruby>に<ruby>4<rt>よん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、リーダー<ruby>役<rt>やく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>。<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Cuối cùng là bốn — chuẩn bị làm trưởng nhóm. Em hãy bắt đầu hướng dẫn 後輩 dần dần.)* |
| Thái | <ruby>後輩指導<rt>こうはいしどう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてですので、<ruby>分<rt>わ</rt></ruby>からないことがあればすぐに<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Việc hướng dẫn 後輩 là lần đầu nên có gì không hiểu em xin được bàn bạc ngay ạ.)* |
| Tanaka 工場長 | もちろんです。<ruby>報連相<rt>ほうれんそう</rt></ruby>は<ruby>立場<rt>たちば</rt></ruby>が<ruby>変<rt>か</rt></ruby>わっても<ruby>同<rt>おな</rt></ruby>じです。<br>*(Tất nhiên. 報連相 dù vị trí thay đổi vẫn vậy.)* |
| Thái | はい、<ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Vâng, em sẽ khắc trong tim ạ.)* |

---

## Tình huống 4 — Phòng thiết kế · 16:00, quan sát đàn anh Kawakami dặn dò trước khi nhận junior

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいでしょうか。<br>*(Anh Kawakami trưởng phòng, em xin một chút thời gian được không ạ?)* |
| Kawakami | はい、どうぞ。<ruby>昇格<rt>しょうかく</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>きましたよ。おめでとう。<br>*(Vâng, mời em. Anh đã nghe chuyện thăng chức. Chúc mừng nhé.)* |
| Thái | ありがとうございます。<ruby>5月<rt>ごがつ</rt></ruby>からジュニアになりますが、<ruby>正直<rt>しょうじき</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>不安<rt>ふあん</rt></ruby>です。<ruby>課長<rt>かちょう</rt></ruby>がジュニアの<ruby>頃<rt>ころ</rt></ruby>、<ruby>一番<rt>いちばん</rt></ruby><ruby>気<rt>き</rt></ruby>をつけていたことは<ruby>何<rt>なん</rt></ruby>でしたか。<br>*(Em cảm ơn ạ. Từ tháng 5 em lên junior, nhưng thật lòng có chút lo. Khi anh còn là junior, điều anh chú ý nhất là gì ạ?)* |
| Kawakami | <ruby>3<rt>みっ</rt></ruby>つあります。<ruby>1<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は、<ruby>図面<rt>ずめん</rt></ruby>に<ruby>印鑑<rt>いんかん</rt></ruby>を<ruby>押<rt>お</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>3回<rt>さんかい</rt></ruby><ruby>見直<rt>みなお</rt></ruby>す。<br>*(Có 3 điều. Một, trước khi đóng dấu lên bản vẽ nhất định rà lại 3 lần.)* |
| Thái | <ruby>3回<rt>さんかい</rt></ruby><ruby>見直<rt>みなお</rt></ruby>す、ですね。メモします。<br>*(Rà lại 3 lần ạ. Em ghi lại.)* |
| Kawakami | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からないことを「<ruby>分<rt>わ</rt></ruby>からない」と<ruby>言<rt>い</rt></ruby>う<ruby>勇気<rt>ゆうき</rt></ruby>。ジュニアでも、<ruby>知<rt>し</rt></ruby>ったかぶりが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Hai, dũng khí nói "không hiểu" khi không hiểu. Dù là junior, vờ biết là nguy hiểm nhất.)* |
| Thái | はい、<ruby>知<rt>し</rt></ruby>ったかぶりが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない、ですね。<br>*(Vâng, vờ biết là nguy hiểm nhất, vâng ạ.)* |
| Kawakami | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えるときは「<ruby>答<rt>こた</rt></ruby>え」じゃなくて「<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>」を<ruby>教<rt>おし</rt></ruby>える。<br>*(Ba, khi dạy 後輩 đừng dạy "đáp án" mà dạy "cách tư duy".)* |
| Thái | 「<ruby>答<rt>こた</rt></ruby>え」じゃなくて「<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>」というのは、どう<ruby>違<rt>ちが</rt></ruby>うのでしょうか。<br>*("Đáp án" và "cách tư duy" khác nhau như thế nào ạ?)* |
| Kawakami | <ruby>答<rt>こた</rt></ruby>えを<ruby>言<rt>い</rt></ruby>えば、その<ruby>1回<rt>いっかい</rt></ruby>だけ<ruby>解決<rt>かいけつ</rt></ruby>。<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えれば、<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>次<rt>つぎ</rt></ruby>から<ruby>自分<rt>じぶん</rt></ruby>で<ruby>解決<rt>かいけつ</rt></ruby>できる。<br>*(Nói đáp án thì chỉ giải quyết lần đó. Dạy cách tư duy thì 後輩 lần sau tự giải quyết được.)* |
| Thái | なるほど、<ruby>深<rt>ふか</rt></ruby>いですね。<ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<ruby>課長<rt>かちょう</rt></ruby>、ありがとうございました。<br>*(Quả là sâu sắc. Em xin khắc trong lòng. Em cảm ơn anh ạ.)* |

---

## Tình huống 5 — Izakaya gần ga Anjo · 19:00, báo tin thăng chức với 同僚 (おかげさまで)

| Vai | Lời thoại |
|---|---|
| Sakurai | <ruby>乾杯<rt>かんぱい</rt></ruby>！タイ<ruby>君<rt>くん</rt></ruby>、<ruby>正式<rt>せいしき</rt></ruby>な<ruby>設計者<rt>せっけいしゃ</rt></ruby>、おめでとう！<br>*(Cạn ly! Anh Thái, chúc mừng đã thành kỹ sư thiết kế chính thức!)* |
| Putra | おめでとう！<ruby>3年<rt>さんねん</rt></ruby>でジュニアまでは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>速<rt>はや</rt></ruby>いよ。<br>*(Chúc mừng! 3 năm lên đến junior thực sự là nhanh đấy.)* |
| Thái | おかげさまで、ここまで<ruby>来<rt>こ</rt></ruby>られました。<ruby>皆<rt>みな</rt></ruby>さんの<ruby>支<rt>ささ</rt></ruby>えがなければ<ruby>無理<rt>むり</rt></ruby>でした。<br>*(Nhờ ơn mọi người, em mới đi được đến đây. Không có sự nâng đỡ của mọi người thì em đã không làm nổi.)* |
| Sakurai | いやいや、タイ<ruby>君<rt>くん</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>だよ。<ruby>毎晩<rt>まいばん</rt></ruby><ruby>図面<rt>ずめん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>って<ruby>勉強<rt>べんきょう</rt></ruby>していたのを<ruby>知<rt>し</rt></ruby>っているよ。<br>*(Không không, là nỗ lực của em. Anh biết em mỗi tối mang bản vẽ về học mà.)* |
| Putra | <ruby>俺<rt>おれ</rt></ruby>はSSW1で<ruby>残<rt>のこ</rt></ruby>り<ruby>1年<rt>いちねん</rt></ruby>。タイ<ruby>君<rt>くん</rt></ruby>が<ruby>先<rt>さき</rt></ruby>に<ruby>設計者<rt>せっけいしゃ</rt></ruby>になって、ちょっと<ruby>悔<rt>くや</rt></ruby>しいけど<ruby>嬉<rt>うれ</rt></ruby>しいよ。<br>*(Tớ visa SSW1 còn 1 năm. Cậu lên kỹ sư thiết kế trước, tớ có chút tiếc nhưng mừng.)* |
| Thái | プトラさん、<ruby>1年前<rt>いちねんまえ</rt></ruby>、<ruby>寮<rt>りょう</rt></ruby>の<ruby>初日<rt>しょにち</rt></ruby>にファミマの<ruby>弁当<rt>べんとう</rt></ruby>を<ruby>買<rt>か</rt></ruby>ってくれましたよね。あの<ruby>夜<rt>よる</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>救<rt>すく</rt></ruby>われました。<br>*(Anh Putra, ngày đầu tiên ở ký túc anh đã mua hộ em hộp cơm Famima. Đêm hôm đó em được cứu thật sự.)* |
| Putra | <ruby>覚<rt>おぼ</rt></ruby>えてくれてたんだ。<ruby>嬉<rt>うれ</rt></ruby>しいな。<br>*(Cậu nhớ à. Vui quá.)* |
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>入<rt>はい</rt></ruby>ってくる。<ruby>指導役<rt>しどうやく</rt></ruby>、<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Anh Thái, sang năm sẽ có 後輩 vào. Vai hướng dẫn nhờ em đấy.)* |
| Thái | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>が<ruby>言<rt>い</rt></ruby>っていました、「<ruby>答<rt>こた</rt></ruby>えではなく、<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えなさい」と。<br>*(Vâng, em sẽ cố hết sức ạ. Anh Kawakami đã dạy em rằng "đừng dạy đáp án mà dạy cách tư duy".)* |
| Putra | いい<ruby>言葉<rt>ことば</rt></ruby>だな。<ruby>俺<rt>おれ</rt></ruby>もメモしよう。<br>*(Câu hay đấy. Tớ cũng ghi lại.)* |
| Sakurai | もう<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>いこう！<ruby>4年目<rt>よねんめ</rt></ruby>のタイ<ruby>君<rt>くん</rt></ruby>に<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Làm thêm ly nữa! Cạn ly cho anh Thái năm thứ 4!)* |

---

## Tình huống 6 — Phòng 201 · 22:00, gọi điện Mai + Linh-Anh (cảnh tiếng Việt — mạch nhân vật)

> Cảnh tiếng Việt — giữ mạch nhân vật & gia đình ở quê. Ôn lại từ vựng JP qua hội thoại Việt-Việt.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt, video) Mai ơi, anh có tin lớn. Hôm nay anh được thăng chức rồi. |
| Mai | (tiếng Việt) Thật á anh? Lên gì vậy? |
| Thái | (tiếng Việt) Lên 設計者 junior — kỹ sư thiết kế chính thức. Không còn là アシスタント nữa. Lương từ 25 vạn lên 28 vạn. |
| Mai | (tiếng Việt, mắt đỏ) Anh giỏi quá. Em tự hào lắm. |
| Thái | (tiếng Việt) Anh cảm ơn em đã đợi. Năm 2026, đúng hẹn, anh về cưới em. |
| Mai | (tiếng Việt) Vâng. Em đợi anh. |
| Linh-Anh | (tiếng Việt, LINE call ghé vào) Anh! Em ở Tokyo nghe tin rồi. Em tự hào về anh lắm! |
| Thái | (tiếng Việt) Em du học bên Tokyo sao rồi? N2 ôn đến đâu rồi? |
| Linh-Anh | (tiếng Việt) Tốt anh ạ. Em đang ôn 文法 với 読解. Tháng 7 em thi cùng đợt với anh luôn. |
| Thái | (tiếng Việt) Hai anh em mình cùng thi N2 nhé. Anh ở Aichi, em ở Tokyo, cùng cố lên. |
| Linh-Anh | (tiếng Việt) Vâng. À, anh nhớ kế hoạch năm 4 chứ? Anh kể em nghe đi. |
| Thái | (tiếng Việt) Có 4 việc: phụ trách trọn 1 bộ 金型 từ A đến Z, lấy 3D CAD 1 級 tháng 12, bắt đầu ôn 金型 1 級 cho năm 2027, và tập làm リーダー hướng dẫn 後輩 mới. |
| Mai | (tiếng Việt) Nhiều thế anh. Anh giữ sức khoẻ nhé. |
| Thái | (tiếng Việt) Ừ. 3 năm khép rồi. Còn 2 năm nữa thôi là về với em. |
| Linh-Anh | (tiếng Việt) Thôi muộn rồi anh, anh ngủ đi. Mai chị Mai cũng đi học sớm. |
| Thái | (tiếng Việt) Ừ. Ngủ ngon hai em. |

---

## Tình huống 7 — Phòng 201 · 23:00, viết nhật ký năm 3 (chiêm nghiệm)

| Vai | Lời thoại |
|---|---|
| Thái | （ノートを<ruby>開<rt>ひら</rt></ruby>く）<ruby>2025年4月30日<rt>にせんにじゅうごねんしがつさんじゅうにち</rt></ruby>。<ruby>来日<rt>らいにち</rt></ruby>から<ruby>36<rt>さんじゅうろく</rt></ruby><ruby>か月<rt>かげつ</rt></ruby>。<br>*(Mở sổ. Ngày 30/4/2025. Từ ngày đến Nhật đã 36 tháng.)* |
| Thái | （nhật ký, tiếng Việt） 3 năm khép. Hôm nay 工場長 chính thức công bố: từ 1/5 mình là 設計者 ジュニア. Không còn アシスタント. |
| Thái | （tiếng Việt） Tổng kết năm 3: 3D CAD 2 級・金型製作 2 級・N3 đỗ・水路設計 tự làm một mình・lần đầu ứng đối 浜田様 — Toyota Tier-1・em gái Linh-Anh sang Tokyo du học・chốt 2026 cưới Mai. |
| Thái | （tiếng Việt） Tăng lương 25 → 28 vạn yên. 印鑑 cá nhân lên bản vẽ — sức nặng mới. |
| Thái | （tiếng Việt） Năm 4 — 4 mục: (1) 金型 1 bộ A→Z, (2) 3D CAD 1 級 trong 12/2025, (3) bắt đầu 金型 1 級 thi 2027, (4) リーダー指導 後輩. |
| Thái | （tiếng Việt） Câu nhớ nhất hôm nay: 川上 課長 — "<ruby>答<rt>こた</rt></ruby>えではなく、<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えなさい". Năm 4 đi dạy 後輩 phải khắc cốt câu này. |
| Thái | （đặt bút, nói khẽ）<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>4年目<rt>よねんめ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đặt bút, nói khẽ. Cố lên nào. Năm thứ 4 cũng xin nhờ tất cả.)* |

---

## Đọng lại chương 12

3 năm khép, Thái học được bộ mẫu câu **giao tiếp tổng kết sự nghiệp + nhận thăng chức** chuẩn mực Nhật: **trình bày 実績 với cấp trên** theo cấu trúc liệt kê (まず〜、次に〜、最後に〜・〜を取得しました・〜を担当しました), **đáp lễ khi được thăng chức** bằng câu trang trọng (謹んでお受けいたします・恐縮でございます), **hỏi xác nhận điều kiện mới** lễ phép (〜というのは具体的にどういう意味でしょうか・責任の範囲を教えていただけますか), **thảo luận kế hoạch năm tới** bằng câu liệt kê có thứ tự (まず1番〜、次に2番〜), **báo tin với 同僚 ở izakaya** dùng cụm khiêm tốn (おかげさまで・皆さんの支えがなければ無理でした), và **quan sát 課長 dạy nguyên tắc làm 設計者 chính thức** (印鑑を押す前に3回見直す・知ったかぶりが一番危ない・答えではなく考え方を教える). Đó là bước chuyển từ アシスタント sang 設計者 — không còn được phép vờ biết, không còn được làm hộ hết cho 後輩.

> Từ vựng & mẫu câu chương này: 3年経過・年次評価・実績・取得する・担当する・客先応対・昇格・設計者・ジュニア・アシスタント卒業・正式・謹んでお受けいたします・恐縮でございます・給与・住宅手当・印鑑・図面・責任の範囲・4年目プラン・リーダー役・後輩指導・報連相・おかげさまで・皆さんの支え・知ったかぶり・答えではなく考え方・〜というのは具体的にどういう意味でしょうか・まず〜次に〜最後に〜・胸に刻む

## Bí quyết chương

- **Khép chuỗi năm 3**: アシスタント → 設計者 ジュニア chính thức. 印鑑 cá nhân — bước ngoặt trách nhiệm.
- **Khởi đầu năm 4 (sách 17)**: 4 mục plan + N2 thi 7/2025 + 金型 A→Z lead đầu tiên.
- **Cưới Mai 2026**: chốt cụ thể, lặp lại cam kết từ T1.
- **Linh-Anh đã sang Tokyo**: em gái thành sempai N2-bound — kết quả nối tiếp gia đình.
- **Putra SSW1 còn 1 năm**: nhắc compatible chuyển 設計 → SSW2 hoặc về.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 入社 | にゅうしゃ | NHẬP XÃ | vào công ty |
| 年次評価 | ねんじひょうか | NIÊN THỨ BÌNH GIÁ | đánh giá thường niên |
| 来期 | らいき | LAI KỲ | kỳ tới |
| 実績 | じっせき | THỰC TÍCH | thành tích thực tế |
| 取得 | しゅとく | THỦ ĐẮC | đạt được, lấy bằng |
| 水路設計 | すいろせっけい | THỦY LỘ THIẾT KẾ | thiết kế kênh nước |
| 客先応対 | きゃくさきおうたい | KHÁCH TIÊN ỨNG ĐỐI | tiếp khách |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 本題 | ほんだい | BẢN ĐỀ | nội dung chính |
| 昇格 | しょうかく | THĂNG CÁCH | thăng chức |
| 卒業 | そつぎょう | TỐT NGHIỆP | tốt nghiệp |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 見直す | みなおす | KIẾN TRỰC | xem xét lại |
| 引き上げる | ひきあげる | DẪN THƯỢNG | nâng lên |
| 住宅手当 | じゅうたくてあて | TRỤ TRẠCH THỦ ĐƯƠNG | phụ cấp nhà ở |
| 恐縮 | きょうしゅく | KHỦNG SÚC | quá khen, cảm kích |
| 権限 | けんげん | QUYỀN HẠN | quyền hạn |
| 計画的 | けいかくてき | KẾ HOẠCH ĐÍCH | có kế hoạch |
| 開始 | かいし | KHAI THỦY | bắt đầu |
| 立場 | たちば | LẬP TRƯỜNG | vị trí, lập trường |
| 不安 | ふあん | BẤT AN | bất an |
| 勇気 | ゆうき | DŨNG KHÍ | dũng khí |
| 支え | ささえ | CHI | sự nâng đỡ |
| 弁当 | べんとう | BIỆN ĐƯƠNG | hộp cơm |
| 指導役 | しどうやく | CHỈ ĐẠO DỊCH | vai hướng dẫn |
| 考え方 | かんがえかた | KHẢO PHƯƠNG | cách tư duy |
| 来日 | らいにち | LAI NHẬT | đến Nhật |
| 残り | のこり | TÀN | còn lại |
| 胸に刻む | むねにきざむ | HUNG KHẮC | khắc trong tim |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
