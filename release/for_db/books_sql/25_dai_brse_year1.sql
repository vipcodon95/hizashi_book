-- Hizashi LITE book SQL — BrSE Y1
-- curriculum_id = 800000025  (book_seq=25)
-- nguồn: books/25_dai_brse_year1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000025, 'N4', 'markdown_book', 'Công nghệ thông tin', 'BrSE Y1', 'Bộ sách Hizashi — BrSE Y1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000001, 800000025, NULL, 'markdown_book', 'T1. Day 1 BrSE intern tại Thanh A Solutions Osaka', '# Sách kỹ sư cầu nối & khởi nghiệp · T1. Day 1 BrSE intern tại Thanh A Solutions Osaka

> **Mục tiêu nhân vật:** Đại 25t, ngày đầu BrSE intern. Học các mẫu hội thoại keigo công sở Nhật của bridge engineer: 1) chào nhập sơ (本日よりよろしくお願いいたします); 2) hạ mình khi được khen (恐縮です・とんでもないです); 3) xác nhận đã hiểu (承知いたしました); 4) hỏi lại khi chưa rõ (〜というのは); 5) báo cáo cuối ngày (お疲れさまでした・失礼いたします); 6) tự giới thiệu trước nhóm (自己紹介).

---

## Bối cảnh

1/4/2030, sáng thứ Hai. Đại vừa tốt nghiệp Đại học Osaka khoa Khoa học Thông tin và vừa cùng Tuấn + Aiko incorporate Hizashi Inc tuần trước. Hôm nay là Day 1 BrSE intern tại Thanh A Solutions — office Honmachi 5F, ¥280k/tháng, 9-18 không tăng ca. Sếp Tanaka-san (PM Nhật 45t, 10 năm bridge với VN team) đón Đại. Cùng team có anh Thanh (trưởng nhóm BrSE) và 7 BrSE VN khác. Vợ Mai đưa Hana 20 tháng đi nhà trẻ Senri-chuo Day 1 luôn. Chương này tập trung vào keigo chào nhập, tự giới thiệu và confirm-readback của BrSE năm đầu.

---

## Tình huống 1 — Apt Senri-chuo · 6:30, dặn dò trước khi xuất phát

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, dậy đi. Hôm nay Day 1 hai bố con đấy. |
| Đại | (tiếng Việt) Ờ, anh dậy rồi. Cháo gà em nấu thơm quá. |
| Mai | (tiếng Việt) Em chuẩn bị balo nhà trẻ cho Hana xong rồi: khăn, bỉm, sữa, đồ thay. Anh nhớ cà-vạt đỏ nhé. |
| Hana | (tiếng Việt, bám chân Đại) Bố! Bố đi đâu? |
| Đại | (tiếng Việt, bế Hana) Bố đi làm con à. Tối bố về chơi với Hana nhé. |
| Hana | (tiếng Việt) Bố đi! Con đi cô nhé! |
| Mai | (tiếng Việt) Em đưa Hana đi nhà trẻ xong là đi tour 9 giờ. Anh đừng quên ăn sáng. |
| Đại | (tiếng Việt) Cảm ơn em. Anh đi nhé. |

---

## Tình huống 2 — Lễ tân Thanh A · 8:50, lần đầu xưng tên với receptionist

*Đại bước ra khỏi thang máy tầng 5, kéo cà-vạt cho thẳng.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>からBrSEインターンとして<ruby>入社<rt>にゅうしゃ</rt></ruby>するグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>田中<rt>たなか</rt></ruby>さんとお<ruby>約束<rt>やくそく</rt></ruby>がございます。<br>*(Chào buổi sáng. Tôi là Nguyễn Đại, từ hôm nay nhập công ty với tư cách thực tập sinh BrSE. Tôi có hẹn với anh Tanaka.)* |
| Linh (lễ tân VN, JP) | グエンさん、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>田中<rt>たなか</rt></ruby>は<ruby>会議室<rt>かいぎしつ</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちしております。ご<ruby>案内<rt>あんない</rt></ruby>いたします。<br>*(Anh Đại, chúng tôi đã đợi anh. Anh Tanaka đang đợi ở phòng họp. Để em dẫn anh sang.)* |
| Đại | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn chị. Mong chị giúp đỡ.)* |
| Linh | (tiếng Việt nhỏ, đi cạnh) Em là Linh, lễ tân ở đây ba năm rồi. Có gì cần cứ ới em nhé anh. |
| Đại | (tiếng Việt) Cảm ơn em. Anh nhờ em nhiều. |

---

## Tình huống 3 — Phòng họp · 9:00, chào nhập sơ với sếp Tanaka (keigo chuẩn)

| Vai | Lời thoại |
|---|---|
| Tanaka (PM Nhật, 45t) | グエン・ダイさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>正式<rt>せいしき</rt></ruby>に<ruby>当社<rt>とうしゃ</rt></ruby>のBrSEインターンとしてお<ruby>迎<rt>むか</rt></ruby>えいたします。どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Đại, chào buổi sáng. Từ hôm nay chúng tôi chính thức đón anh với tư cách thực tập sinh BrSE. Rất mong được hợp tác.)* |
| Đại | (cúi 30 độ) <ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>、おはようございます。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>からどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh trưởng phòng Tanaka, chào buổi sáng. Tôi là Nguyễn Đại. Từ hôm nay rất mong anh chỉ bảo.)* |
| Tanaka | <ruby>当社<rt>とうしゃ</rt></ruby>「<ruby>清華<rt>タンハー</rt></ruby>ソリューションズ」は2015<ruby>年設立<rt>ねんせつりつ</rt></ruby>のベトナム<ruby>系企業<rt>けいきぎょう</rt></ruby>でして、<ruby>主<rt>おも</rt></ruby>にWebとモバイルの<ruby>受託開発<rt>じゅたくかいはつ</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>っております。<br>*(Công ty Thanh A Solutions thành lập năm 2015, doanh nghiệp gốc Việt, chủ yếu nhận thầu phát triển Web và Mobile.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>事前<rt>じぜん</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>のホームページで<ruby>拝見<rt>はいけん</rt></ruby>させていただきました。<br>*(Em đã hiểu ạ. Em đã xem qua trang web công ty từ trước rồi ạ.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>事前準備<rt>じぜんじゅんび</rt></ruby>ができている<ruby>方<rt>かた</rt></ruby>は<ruby>好<rt>す</rt></ruby>きですよ。<br>*(Tốt lắm. Tôi quý những người có sự chuẩn bị trước.)* |

---

## Tình huống 4 — Phòng họp · 9:10, nghe khen và hạ mình (恐縮です)

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさんは<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>卒業<rt>そつぎょう</rt></ruby>、しかもHizashiの<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>とのことで、<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>優秀<rt>ゆうしゅう</rt></ruby>な<ruby>方<rt>かた</rt></ruby>だと<ruby>伺<rt>うかが</rt></ruby>っております。<br>*(Nghe nói anh tốt nghiệp khoa Khoa học Thông tin Đại học Osaka, lại là founder Hizashi — một người rất xuất sắc.)* |
| Đại | (cúi đầu) いえ、とんでもないです。<ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。まだまだ<ruby>勉強中<rt>べんきょうちゅう</rt></ruby>の<ruby>身<rt>み</rt></ruby>でございますので、ご<ruby>指導<rt>しどう</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Dạ không, không dám ạ. Em rất ngại. Em vẫn đang trong giai đoạn học hỏi, mong anh chỉ bảo cho em.)* |
| Tanaka | <ruby>謙虚<rt>けんきょ</rt></ruby>ですね。さて、インターン<ruby>期間中<rt>きかんちゅう</rt></ruby>の<ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>月額<rt>げつがく</rt></ruby><ruby>28万円<rt>にじゅうはちまんえん</rt></ruby>、<ruby>勤務時間<rt>きんむじかん</rt></ruby>は<ruby>平日<rt>へいじつ</rt></ruby><ruby>9時<rt>くじ</rt></ruby>から<ruby>18時<rt>じゅうはちじ</rt></ruby>まで。<ruby>当社<rt>とうしゃ</rt></ruby>は<ruby>残業<rt>ざんぎょう</rt></ruby>ゼロ<ruby>方針<rt>ほうしん</rt></ruby>です。<br>*(Khiêm tốn đấy. Về điều kiện: lương kỳ thực tập 280.000 yên/tháng, giờ làm các ngày trong tuần 9h đến 18h. Công ty chúng tôi theo phương châm không tăng ca.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>条件<rt>じょうけん</rt></ruby>について<ruby>確認<rt>かくにん</rt></ruby>させていただきたいのですが、<ruby>有給休暇<rt>ゆうきゅうきゅうか</rt></ruby>はインターンでも<ruby>取得可能<rt>しゅとくかのう</rt></ruby>でしょうか。<br>*(Em đã hiểu ạ. Em xin xác nhận một điểm: nghỉ phép có lương thì thực tập sinh có được hưởng không ạ?)* |
| Tanaka | はい、<ruby>半年後<rt>はんとしご</rt></ruby>から<ruby>年間<rt>ねんかん</rt></ruby><ruby>10日<rt>とおか</rt></ruby><ruby>付与<rt>ふよ</rt></ruby>いたします。<br>*(Có chứ. Sau nửa năm sẽ được cấp 10 ngày/năm.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。ありがとうございます。<br>*(Em đã hiểu. Cảm ơn anh.)* |

---

## Tình huống 5 — Sàn BrSE · 9:30, sếp giới thiệu Đại với trưởng nhóm Thanh

| Vai | Lời thoại |
|---|---|
| Tanaka | こちらBrSEチームリーダーのグエン・タンさんです。BrSE<ruby>歴<rt>れき</rt></ruby><ruby>10年<rt>じゅうねん</rt></ruby>のベテランです。<br>*(Đây là trưởng nhóm BrSE, anh Nguyễn Thanh. Kỳ cựu 10 năm BrSE.)* |
| Đại | (cúi 30 độ) <ruby>初<rt>はじ</rt></ruby>めまして。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>からどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp anh. Em là Nguyễn Đại. Từ hôm nay rất mong anh chỉ bảo.)* |
| Thanh (35t) | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tôi cũng vậy, mong em.)* |
| Thanh | (tiếng Việt, hạ giọng) Chào em Đại. Anh cũng Bách khoa Hà Nội, sang Nhật từ 2018. Office mình BrSE nói tiếng Việt với nhau cũng được, chỉ keigo Nhật khi nói chuyện với sếp Tanaka và khách. |
| Đại | (tiếng Việt) Vâng anh. Em nghe sếp Tanaka khen anh nhiều rồi. |
| Thanh | (tiếng Việt) BrSE bốn kỹ năng cốt lõi: dịch tài liệu spec JP↔VN, họp khách hàng, điều phối project, code review song ngữ. Em sẽ làm shadow anh tuần đầu. |

---

## Tình huống 6 — Sàn BrSE · 9:45, tự giới thiệu trước cohort 8 BrSE

*Thanh gõ bàn gọi cả nhóm tập trung.*

| Vai | Lời thoại |
|---|---|
| Thanh | みなさん、ちょっといいですか。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しいメンバーが<ruby>加<rt>くわ</rt></ruby>わります。グエンさん、<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mọi người, mọi người chú ý một chút. Từ hôm nay có thành viên mới. Anh Đại, mời tự giới thiệu.)* |
| Đại | (đứng lên, cúi nhẹ) <ruby>皆様<rt>みなさま</rt></ruby>、おはようございます。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>25歳<rt>にじゅうごさい</rt></ruby>、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>卒業<rt>そつぎょう</rt></ruby>でございます。<br>*(Xin chào mọi người. Em là Nguyễn Đại, 25 tuổi, tốt nghiệp khoa Khoa học Thông tin Đại học Osaka.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>よりBrSEインターンとして<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<ruby>趣味<rt>しゅみ</rt></ruby>はランニングと<ruby>読書<rt>どくしょ</rt></ruby>です。ご<ruby>指導<rt>しどう</rt></ruby>のほど、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ hôm nay em xin được học việc với tư cách thực tập sinh BrSE. Sở thích của em là chạy bộ và đọc sách. Mong mọi người chỉ bảo.)* |
| Cohort BrSE | (vỗ tay) よろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Mong em.)* |
| Phương (BrSE 30t, tiếng Việt nhỏ) | Em nói keigo chuẩn ghê. Học ở đâu thế? |
| Đại | (tiếng Việt nhỏ) Em ở Nhật 6 năm rồi chị, từ năm 19 tuổi qua trường tiếng. |

---

## Tình huống 7 — Bàn làm việc · 10:00, hỏi lại khi không hiểu thuật ngữ

*Thanh mở Backlog dự án mẫu, chỉ Đại các trường.*

| Vai | Lời thoại |
|---|---|
| Thanh | グエンさん、Backlogでは<ruby>各<rt>かく</rt></ruby>タスクに「<ruby>担当者<rt>たんとうしゃ</rt></ruby>」と「<ruby>状態<rt>じょうたい</rt></ruby>」と「<ruby>マイルストーン<rt>マイルストーン</rt></ruby>」を<ruby>設定<rt>せってい</rt></ruby>します。<br>*(Đại, trong Backlog mỗi task có cài đặt "người phụ trách", "trạng thái" và "milestone".)* |
| Đại | すみません、「<ruby>マイルストーン<rt>マイルストーン</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか。<ruby>用語<rt>ようご</rt></ruby>として<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Xin lỗi anh, "milestone" cụ thể nghĩa là gì ạ? Em xin xác nhận lại thuật ngữ.)* |
| Thanh | あ、いい<ruby>質問<rt>しつもん</rt></ruby>です。マイルストーンは<ruby>納品<rt>のうひん</rt></ruby>の<ruby>区切<rt>くぎ</rt></ruby>りのことで、たとえば「<ruby>6月末<rt>ろくがつまつ</rt></ruby>:プロトタイプ<ruby>完成<rt>かんせい</rt></ruby>」のような<ruby>日付<rt>ひづけ</rt></ruby>と<ruby>成果物<rt>せいかぶつ</rt></ruby>のセットです。<br>*(À, câu hỏi hay đấy. Milestone là mốc bàn giao, ví dụ "cuối tháng 6: hoàn thành prototype" — cặp ngày và sản phẩm.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>納品<rt>のうひん</rt></ruby>の<ruby>区切<rt>くぎ</rt></ruby>りですね。メモいたします。<br>*(Em đã hiểu. Mốc bàn giao ạ. Em ghi chú lại.)* |
| Thanh | (tiếng Việt) Em giỏi đấy — không biết thì hỏi ngay, không gật bừa. BrSE năm đầu gật bừa là chết. |
| Đại | (tiếng Việt) Vâng anh, em sợ nhất gật bừa rồi sai. |

---

## Tình huống 8 — Bàn làm việc · 10:30, quan sát Thanh xử lý chat khách Nhật

*Slack #client-aichi có notification.*

| Vai | Lời thoại |
|---|---|
| Thanh | (gõ Slack) <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、いつも<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズのグエン・タンでございます。<ruby>本日<rt>ほんじつ</rt></ruby>ご<ruby>連絡<rt>れんらく</rt></ruby>いただいた<ruby>仕様変更<rt>しようへんこう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>させていただきました。<br>*(Anh Sato, luôn được anh quan tâm. Tôi là Nguyễn Thanh bên Thanh A Solutions. Việc thay đổi spec anh báo hôm nay tôi đã xác nhận.)* |
| Thanh | (tiếng Việt, quay sang Đại) Em để ý câu mở: "いつも大変お世話になっております" — luôn dùng câu này khi mở email/chat với khách Nhật, kể cả lần đầu trong ngày. |
| Đại | (tiếng Việt) Vâng anh. Em thấy hồi đi lab cũng có dạy nhưng dùng trong công ty mới thấy khác. |
| Thanh | (gõ tiếp) <ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby><ruby>15時<rt>じゅうごじ</rt></ruby>より、<ruby>影響範囲<rt>えいきょうはんい</rt></ruby>と<ruby>工数<rt>こうすう</rt></ruby>の<ruby>見積<rt>みつもり</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りいたします。お<ruby>手数<rt>てすう</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ 15h thứ Hai tuần sau, tôi sẽ gửi ước lượng phạm vi ảnh hưởng và effort. Phiền anh, mong anh giúp đỡ.)* |
| Đại | (tiếng Việt) "お手数をおかけしますが" — câu này em sẽ học thuộc. |

---

## Tình huống 9 — Quán phở chị Hương sub-1F · 12:10, ăn trưa cohort

| Vai | Lời thoại |
|---|---|
| Khoa (BrSE 28t) | (tiếng Việt) Em Đại, sao em chọn thực tập sinh BrSE thay vì 正社員? Lương 28man thấp lắm. |
| Đại | (tiếng Việt) Em đang chạy startup tên Hizashi — app học tiếng Nhật cho người Việt. Em cần học kỹ năng BrSE thực tế trước. |
| Phương | (tiếng Việt) Khoan đã! Hizashi mà tạp chí công nghệ tuần trước đăng vòng pre-seed 30 triệu yên Anri dẫn dắt á? |
| Đại | (tiếng Việt) Vâng chị. |
| Hùng (BrSE 32t) | (tiếng Việt) Trời ơi, em đỉnh thật. Sao còn làm BrSE? Tập trung Hizashi đi. |
| Đại | (tiếng Việt) Hizashi muốn lớn ở thị trường Việt Nam thì em phải hiểu cả hai bên. BrSE là trường học tốt nhất cho việc đó. Mà sếp Tanaka cho zero overtime nên tối em vẫn chạy Hizashi được. |
| Thanh | (tiếng Việt, gật) Win-win. Em đến học là tốt cho cả em lẫn công ty. |
| Khoa | (tiếng Việt) Phở tái chín 900 yên. Chị Hương — cô của vợ sếp Tanaka — nấu chuẩn vị Hà Nội. Anh cho em ăn. |
| Đại | (tiếng Việt) Anh cho em à? Cảm ơn anh, lần sau em mời lại. |

---

## Tình huống 10 — Bàn làm việc · 14:00, nhận task đầu + readback

| Vai | Lời thoại |
|---|---|
| Thanh | グエンさん、<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>初<rt>はじ</rt></ruby>めての<ruby>業務<rt>ぎょうむ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>愛知<rt>あいち</rt></ruby>のお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>仕様書<rt>しようしょ</rt></ruby>を<ruby>5枚<rt>ごまい</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>からベトナム<ruby>語<rt>ご</rt></ruby>に<ruby>翻訳<rt>ほんやく</rt></ruby>していただきたいです。<br>*(Đại, tuần sau anh nhờ em công việc đầu tiên. Dịch 5 trang tài liệu spec của khách Aichi từ tiếng Nhật sang tiếng Việt.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<ruby>納期<rt>のうき</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby><ruby>18時<rt>じゅうはちじ</rt></ruby>、<ruby>成果物<rt>せいかぶつ</rt></ruby>はConfluenceの<ruby>日本語<rt>にほんご</rt></ruby><ruby>原文<rt>げんぶん</rt></ruby><ruby>付<rt>つ</rt></ruby>きベトナム<ruby>語<rt>ご</rt></ruby><ruby>訳<rt>やく</rt></ruby>、<ruby>対象<rt>たいしょう</rt></ruby>ページは<ruby>1<rt>いち</rt></ruby>から<ruby>5<rt>ご</rt></ruby>ページ、ということでよろしいでしょうか。<br>*(Em đã hiểu. Em xin xác nhận lại: hạn nộp 18h thứ Sáu tuần sau, sản phẩm là bản dịch tiếng Việt kèm nguyên văn tiếng Nhật trên Confluence, trang 1-5 — đúng vậy không ạ?)* |
| Thanh | はい、その<ruby>通<rt>とお</rt></ruby>りです。<ruby>復唱<rt>ふくしょう</rt></ruby>ありがとうございます。<br>*(Đúng vậy. Cảm ơn em đã readback.)* |
| Thanh | (tiếng Việt) Em vừa làm rất chuẩn. BrSE năm 1 luyện cái này: nghe task xong là đọc ngược lại deadline + deliverable + scope. Tránh sai vặt. |
| Đại | (tiếng Việt) Anh dạy chuẩn. Em ghi vào sổ. |

---

## Tình huống 11 — Bàn làm việc · 16:00, đọc spec JP gặp từ không biết

| Vai | Lời thoại |
|---|---|
| Đại | (đọc PDF, mở Slack DM Thanh) <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>仕様書<rt>しようしょ</rt></ruby><ruby>3<rt>さん</rt></ruby>ページに「<ruby>稼働率<rt>かどうりつ</rt></ruby>」という<ruby>用語<rt>ようご</rt></ruby>がございますが、これは「<ruby>設備<rt>せつび</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いている<ruby>時間<rt>じかん</rt></ruby>の<ruby>割合<rt>わりあい</rt></ruby>」という<ruby>理解<rt>りかい</rt></ruby>でよろしいでしょうか。<br>*(Cho em xin phép. Trên trang 3 spec có từ "稼働率", em hiểu là "tỷ lệ thời gian thiết bị đang hoạt động" có đúng không ạ?)* |
| Thanh | (Slack) はい、その<ruby>理解<rt>りかい</rt></ruby>で<ruby>正<rt>ただ</rt></ruby>しいです。ベトナム<ruby>語<rt>ご</rt></ruby>では「tỷ lệ vận hành」と<ruby>訳<rt>やく</rt></ruby>します。<br>*(Đúng vậy. Tiếng Việt dịch là "tỷ lệ vận hành".)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>いたしました。ありがとうございます。<br>*(Em đã hiểu. Cảm ơn anh.)* |
| Thanh | (Slack tiếng Việt) Em hỏi rất chuẩn — đưa cách hiểu của mình ra trước, rồi xin xác nhận. Đỡ tốn thời gian anh. |

---

## Tình huống 12 — Sàn BrSE · 17:55, chào về (お先に失礼します)

| Vai | Lời thoại |
|---|---|
| Đại | (đứng lên, cúi nhẹ về phía Thanh và cohort) お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。<br>*(Em xin phép về trước. Hôm nay cảm ơn các anh chị.)* |
| Thanh | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>初日<rt>しょにち</rt></ruby>どうでしたか?<br>*(Em vất vả rồi. Ngày đầu thế nào?)* |
| Đại | はい、<ruby>大変<rt>たいへん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>になりました。<ruby>明日<rt>あした</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em học được rất nhiều ạ. Mai mong anh tiếp tục chỉ bảo.)* |
| Tanaka | (đi ngang) グエンさん、<ruby>初日<rt>しょにち</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Đại, ngày đầu vất vả rồi!)* |
| Đại | (cúi 30 độ) <ruby>田中部長<rt>たなかぶちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。お<ruby>先<rt>さき</rt></ruby>に<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Anh trưởng phòng Tanaka, hôm nay cảm ơn anh. Em xin phép về trước.)* |
| Cohort | お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Vất vả rồi!)* |

---

## Tình huống 13 — Tàu Hankyu Honmachi → Senri-chuo · 18:30, LINE với Mai

| Vai | Lời thoại |
|---|---|
| Đại | (LINE tiếng Việt) Em ơi, anh xong việc rồi, đang lên tàu. Hana đi nhà trẻ ngày đầu thế nào em? |
| Mai | (LINE) Hana khóc 30 phút sáng nhưng chiều cô bảo con chơi rất vui. Cô khen Hana đi liền 5 bước đấy anh! |
| Đại | (LINE) Trời ơi! Tự hào quá. Cô tên gì em? |
| Mai | (LINE) Cô Yamada, 28 tuổi, dễ thương lắm. Cô khen Hana cười tươi nhất phòng. |
| Đại | (LINE) Mai sáng anh đi sớm 30 phút để mình cùng đưa Hana đi nhé. Anh muốn gặp cô Yamada cảm ơn. |
| Mai | (LINE) Vâng anh. Ngày đầu thế nào? |
| Đại | (LINE) Ổn em. Sếp Tanaka tử tế. 8 anh chị BrSE thân. Anh nhận task đầu rồi — dịch spec 5 trang cho khách Aichi, hạn thứ Sáu tuần sau. |
| Mai | (LINE) Anh giỏi. Tối có standup Hizashi không? |
| Đại | (LINE) Có em, 21:00 với Tuấn + Aiko. Anh ăn tối nhanh rồi vào. |

---

## Tình huống 14 — Phòng khách apt · 20:45, đối thoại Việt với Mai trước standup Hizashi

*Đại vừa cho Hana ngủ xong, ngồi sofa với Mai.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ăn cháo nữa không em hâm lại? |
| Đại | (tiếng Việt) Không em, anh no rồi. Em ngồi nghỉ đi, để anh dọn bát. |
| Mai | (tiếng Việt) Hôm nay em thấy anh khác. Chững chạc hơn. |
| Đại | (tiếng Việt) Vest và cà-vạt thôi mà em. |
| Mai | (tiếng Việt) Không phải vest. Là cái thần thái. Sáng anh hơi run, giờ về mặt giãn ra. |
| Đại | (tiếng Việt) Vì hết được một ngày em à. Lo nhất là chào hỏi keigo với sếp Tanaka. Anh đã thử mấy câu mới học hôm nay: "本日よりよろしくお願いいたします", "承知いたしました", "恐縮でございます". Đều dùng được. |
| Mai | (tiếng Việt) "Shouchi itashimashita" — em nghe ở quán cà phê Nhật suốt, cuối cùng biết nghĩa là gì rồi. "Em đã hiểu" đúng không? |
| Đại | (tiếng Việt) Đúng rồi em, nhưng kính ngữ. Nói với sếp và khách, không nói với bạn. |
| Mai | (tiếng Việt) Còn câu "ご指導のほど"? Em thấy anh viết trên LINE cho anh Thanh. |
| Đại | (tiếng Việt) "Mong anh chỉ bảo cho em". Câu chuẩn để xin được học. Khác với "教えてください" — câu này thẳng quá, không dùng với cấp trên Nhật. |
| Mai | (tiếng Việt) Anh sẽ ghi lại cho em một bộ keigo công sở nhé. Em dùng được trong tour guide với khách Nhật. |
| Đại | (tiếng Việt) Vâng em. Mai anh ghi xong gửi em. Giờ anh chuẩn bị standup với Tuấn + Aiko 21:00. Cảm ơn em đã chăm Hana cả ngày. |
| Mai | (tiếng Việt) Đi đi anh. Hai bố con cùng Day 1 thắng lợi. |

---

## Đọng lại chương 1

Ngày đầu BrSE Đại học được trọn bộ keigo nhập công ty Nhật: **「本日よりよろしくお願いいたします」** (chào nhập sơ), **「承知いたしました」** (xác nhận đã hiểu thay cho 分かりました), **「恐縮でございます」・「とんでもないです」** (hạ mình khi được khen), **「〜というのはどういう意味でしょうか」** (hỏi lại thuật ngữ thay vì gật bừa), **「お先に失礼いたします」** (chào về trước), **「ご指導のほどよろしくお願いいたします」** (xin được chỉ bảo). Đại còn học pattern readback của BrSE: nghe task xong là đọc ngược lại deadline + deliverable + scope để chốt phạm vi với trưởng nhóm Thanh. Câu mở chat khách Nhật **「いつも大変お世話になっております」** và câu chuyển ý **「お手数をおかけしますが」** ghi vào sổ. Tối về Đại đối thoại với Mai bằng tiếng Việt, dạy lại vợ những câu kính ngữ vừa học để dùng khi đón khách Nhật trong tour.

> Từ vựng & mẫu câu chương này: 本日よりよろしくお願いいたします・承知いたしました・恐縮でございます・とんでもないです・〜というのはどういう意味でしょうか・〜という理解でよろしいでしょうか・お先に失礼いたします・ご指導のほどよろしくお願いいたします・いつも大変お世話になっております・お手数をおかけしますが・自己紹介・拝見させていただきました・復唱・納期・成果物・仕様書・稼働率・BrSE・残業ゼロ方針・正社員

## Bí quyết chương

- BrSE năm đầu KHÔNG ĐƯỢC gật bừa — không hiểu thì dùng **「〜というのはどういう意味でしょうか」** xin xác nhận thuật ngữ ngay
- Pattern **readback task**: nghe xong là đọc lại deadline + deliverable + scope theo công thức "〜ということでよろしいでしょうか"
- Câu mở chat/email khách Nhật **「いつも大変お世話になっております」** dùng mỗi ngày, không nên bỏ
- Khen-hạ mình là cặp cố định: được khen → đáp ngay **「とんでもないです・まだまだ勉強中の身でございます」**
- Office Thanh A nói tiếng Việt với cohort BrSE OK, keigo chỉ bật khi giao tiếp sếp Nhật và khách — tiết kiệm mental energy

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本日 | ほんじつ | BẢN NHẬT | hôm nay (trang trọng) |
| 入社 | にゅうしゃ | NHẬP XÃ | vào công ty, nhập công ty |
| 申します | もうします | THÂN | tôi tên là (khiêm nhường) |
| 約束 | やくそく | ƯỚC THÚC | hẹn, lời hẹn |
| 会議室 | かいぎしつ | HỘI NGHỊ THẤT | phòng họp |
| 案内 | あんない | ÁN NỘI | hướng dẫn, dẫn đi |
| 正式 | せいしき | CHÍNH THỨC | chính thức |
| 当社 | とうしゃ | ĐƯƠNG XÃ | công ty chúng tôi |
| 受託開発 | じゅたくかいはつ | THỤ THÁC KHAI PHÁT | nhận thầu phát triển |
| 承知いたしました | しょうちいたしました | THỪA TRI | em đã hiểu (kính ngữ) |
| 拝見 | はいけん | BÁI KIẾN | xem (khiêm nhường) |
| 創業者 | そうぎょうしゃ | SÁNG NGHIỆP GIẢ | nhà sáng lập |
| 恐縮 | きょうしゅく | KHỦNG SÚC | rất ngại, không dám nhận |
| 指導 | しどう | CHỈ ĐẠO | chỉ bảo, hướng dẫn |
| 謙虚 | けんきょ | KHIÊM HƯ | khiêm tốn |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 勤務時間 | きんむじかん | CẦN VỤ THỜI GIAN | giờ làm việc |
| 残業 | ざんぎょう | TÀN NGHIỆP | tăng ca, làm thêm giờ |
| 有給休暇 | ゆうきゅうきゅうか | HỮU CẤP HƯU HẠ | nghỉ phép có lương |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | tự giới thiệu |
| 担当者 | たんとうしゃ | ĐẢM ĐƯƠNG GIẢ | người phụ trách |
| 状態 | じょうたい | TRẠNG THÁI | trạng thái |
| 用語 | ようご | DỤNG NGỮ | thuật ngữ |
| 納品 | のうひん | NẠP PHẨM | bàn giao sản phẩm |
| 成果物 | せいかぶつ | THÀNH QUẢ VẬT | sản phẩm bàn giao |
| 仕様変更 | しようへんこう | SỬ DẠNG BIẾN CANH | thay đổi spec |
| 影響範囲 | えいきょうはんい | ẢNH HƯỞNG PHẠM VI | phạm vi ảnh hưởng |
| 工数 | こうすう | CÔNG SỐ | effort, man-hour |
| 見積 | みつもり | KIẾN TÍCH | ước lượng, báo giá |
| 翻訳 | ほんやく | PHIÊN DỊCH | dịch (tài liệu) |
| 仕様書 | しようしょ | SỬ DẠNG THƯ | tài liệu spec |
| 納期 | のうき | NẠP KỲ | hạn nộp |
| 復唱 | ふくしょう | PHỤC XƯỚNG | đọc lại, readback |
| 稼働率 | かどうりつ | GIÁ ĐỘNG SUẤT | tỷ lệ vận hành |
| 設備 | せつび | THIẾT BỊ | thiết bị, máy móc |
| 失礼いたします | しつれいいたします | THẤT LỄ | xin phép |
| 初日 | しょにち | SƠ NHẬT | ngày đầu |
| お疲れさまでした | おつかれさまでした | BÌ | (lời chào sau khi làm việc) |
| お先に失礼します | おさきにしつれいします | TIÊN THẤT LỄ | em xin phép về trước |
| ご指導 | ごしどう | CHỈ ĐẠO | sự chỉ bảo |
| 部長 | ぶちょう | BỘ TRƯỞNG | trưởng phòng |
| 勉強中 | べんきょうちゅう | MIỄN CƯỜNG TRUNG | đang học hỏi |
| お世話になっております | おせわになっております | THẾ THOẠI | luôn được quan tâm |
| お手数 | おてすう | THỦ SỐ | làm phiền, mất công |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000002, 800000025, NULL, 'markdown_book', 'T2. Setup văn phòng Hizashi tại WeWork Umeda + nhịp dual-track', '# Sách kỹ sư cầu nối & khởi nghiệp · T2. Setup văn phòng Hizashi tại WeWork Umeda + nhịp dual-track

> **Mục tiêu nhân vật:** 4-5/2030. Đại 25t dựng nhịp song song BrSE-Hizashi. Học các mẫu hội thoại tiếng Nhật của founder Việt vận hành team Nhật-Việt: 1) đặt phòng họp / xin hỗ trợ tại WeWork (会議室を予約させていただきたい); 2) báo cáo daily standup ngắn gọn (本日の進捗・明日の予定・ブロッカー); 3) trao đổi quyết định kỹ thuật với CTO Tuấn (xen JP); 4) chào cô giáo nhà trẻ Hana lần đầu (お世話になっております); 5) xin lỗi vì về muộn (遅くなり申し訳ございません); 6) nhắn LINE khách hàng Nhật xin gia hạn (恐縮ですが).

---

## Bối cảnh

Tháng 4-5/2030. Hizashi Inc một tuần tuổi đã thuê 3 desks tại WeWork Umeda Tower tầng 23. Đại làm BrSE Thanh A 9-18, tối + cuối tuần dồn vào Hizashi. Tuấn (CTO 28t ex-Mercari) full-time. Aiko (Head of Design 23t) đang M1 lab Watanabe HCI, part-time Hizashi. Burn rate ¥1.32M/tháng, runway 22.7 tháng. Hana 20 tháng đi nhà trẻ Senri-chuo Day 1 từ 1/4. Chương này tập trung vào nhịp standup, ngôn ngữ founder Việt vận hành team song ngữ và keigo giao tiếp với cô giáo Hana.

---

## Tình huống 1 — Quầy lễ tân WeWork Umeda 23F · 4/4 thứ Sáu 19:00, xin thẻ guest

| Vai | Lời thoại |
|---|---|
| Receptionist (Nhật, 26t) | いらっしゃいませ。<ruby>本日<rt>ほんじつ</rt></ruby>はどちらのチームでしょうか?<br>*(Xin chào. Hôm nay anh thuộc team nào ạ?)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>からこちらにオフィスを<ruby>構<rt>かま</rt></ruby>えさせていただきます「Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>」のグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。3デスク<ruby>契約<rt>けいやく</rt></ruby>でございます。<br>*(Từ hôm nay công ty Hizashi của em bắt đầu đặt văn phòng tại đây. Em là Nguyễn Đại. Hợp đồng 3 desks.)* |
| Receptionist | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>待<rt>ま</rt></ruby>ちしておりました。<ruby>入館証<rt>にゅうかんしょう</rt></ruby>を<ruby>3枚<rt>さんまい</rt></ruby>お<ruby>渡<rt>わた</rt></ruby>しいたします。<ruby>会議室<rt>かいぎしつ</rt></ruby>のご<ruby>予約<rt>よやく</rt></ruby>はアプリからお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Đại, chúng tôi đã đợi. Đây là 3 thẻ ra vào. Đặt phòng họp xin qua app.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>21時<rt>にじゅういちじ</rt></ruby>まで<ruby>利用<rt>りよう</rt></ruby>させていただいても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Em đã hiểu. Hôm nay em có thể dùng đến 21h được không ạ?)* |
| Receptionist | はい、24<ruby>時間<rt>じかん</rt></ruby><ruby>利用可能<rt>りようかのう</rt></ruby>でございます。<br>*(Vâng, dùng 24/7 được ạ.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn chị.)* |

---

## Tình huống 2 — 3 desks Hizashi · 19:15, gặp Tuấn + Aiko

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị! Em đến rồi. Tầng 23 view đẹp ghê. |
| Tuấn (28t) | (tiếng Việt) Em đói chưa? Anh đặt pizza Domino''s rồi, 20 phút giao đến. |
| Aiko (23t) | (tiếng Nhật, đang chuẩn bị màn hình) ダイくん、おかえり!<ruby>wifi<rt>ワイファイ</rt></ruby>もモニターも<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>できてるよ。<br>*(Đại-kun, em về rồi! Wifi và màn hình đều đã chuẩn bị xong.)* |
| Đại | アイコさん、ありがとう!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かる。<br>*(Aiko, cảm ơn em! Em giúp anh quá.)* |
| Tuấn | (tiếng Việt) Em đổi đồ chưa? Vest BrSE bỏ ra, mặc hoodie cho thoải mái. |
| Đại | (tiếng Việt) Anh để em đi thay. Em mang theo hoodie đen rồi. |

---

## Tình huống 3 — Bàn họp Hizashi · 19:30, thiết kế nhịp standup

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị, mình thống nhất nhịp standup nhé. Em ban ngày làm BrSE 9-18 không standup buổi sáng được. |
| Tuấn | (tiếng Việt) Anh đề xuất standup hằng ngày 21:00-21:15 trên Google Meet. Ba câu kinh điển: hôm nay làm gì, mai làm gì, có blocker gì không. |
| Aiko | (Nhật) <ruby>21時<rt>にじゅういちじ</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>私<rt>わたし</rt></ruby><ruby>普段<rt>ふだん</rt></ruby><ruby>23時<rt>にじゅうさんじ</rt></ruby>まで<ruby>作業<rt>さぎょう</rt></ruby>するから、ちょうどいい。<br>*(21h được. Mình thường làm đến 23h nên vừa hay.)* |
| Đại | (tiếng Việt) Em cũng OK 21:00. Mai cho Hana ngủ 20:30, em rảnh từ 20:45. |
| Tuấn | (tiếng Việt) Anh viết quy tắc luôn vào Notion: ai vắng phải post async trên Slack #standup trước 21:00. Cuối tuần nghỉ. |
| Đại | (tiếng Việt) OK anh. Em thêm: lúc bay công tác hoặc onsite khách Nhật thì cho phép skip. |
| Aiko | (Nhật) <ruby>議事録<rt>ぎじろく</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>はローテーションでいい?<br>*(Người ghi biên bản xoay vòng được không?)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>。じゃあ<ruby>月<rt>げつ</rt></ruby>・<ruby>火<rt>か</rt></ruby><ruby>俺<rt>おれ</rt></ruby>、<ruby>水<rt>すい</rt></ruby>・<ruby>木<rt>もく</rt></ruby>トゥアン、<ruby>金<rt>きん</rt></ruby>アイコでいこう。<br>*(Đồng ý. Thứ Hai-Ba mình, Tư-Năm Tuấn, Sáu Aiko nhé.)* |

---

## Tình huống 4 — Bàn họp · 21:00, standup #1 chính thức

*Tuấn share màn hình Notion template "Daily Standup".*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>1回<rt>いっかい</rt></ruby>スタンドアップ<ruby>始<rt>はじ</rt></ruby>めます。まず<ruby>俺<rt>おれ</rt></ruby>から。<br>*(Mở standup số 1 nào. Mình trước.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>:<ruby>清華<rt>タンハー</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>、タン<ruby>先輩<rt>せんぱい</rt></ruby>のshadow、<ruby>仕様書<rt>しようしょ</rt></ruby><ruby>25枚<rt>にじゅうごまい</rt></ruby><ruby>読了<rt>どくりょう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:<ruby>5枚<rt>ごまい</rt></ruby><ruby>翻訳<rt>ほんやく</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。ブロッカー:なし。<br>*(Hôm nay: ngày đầu Thanh A, shadow tiền bối Thanh, đọc xong 25 trang spec. Mai: bắt đầu dịch 5 trang. Blocker: không.)* |
| Tuấn | (Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>:バックエンドリファクタ、TTSラグ2<ruby>秒<rt>びょう</rt></ruby>の<ruby>原因調査<rt>げんいんちょうさ</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:pgvectorマイグレーション、<ruby>1024次元<rt>せんにじゅうよじげん</rt></ruby>に<ruby>変更<rt>へんこう</rt></ruby>。ブロッカー:Voyage AIかmultilingual-e5、アーキ<ruby>決定<rt>けってい</rt></ruby>がほしい。<br>*(Hôm nay: refactor backend, điều tra nguyên nhân TTS lag 2 giây. Mai: migration pgvector sang 1024 dimensions. Blocker: cần quyết định kiến trúc — Voyage AI hay multilingual-e5.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>週末<rt>しゅうまつ</rt></ruby>にレビューして、Slack #arch-decisionsで<ruby>決定<rt>けってい</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す。<br>*(Hiểu rồi. Cuối tuần mình review, kết luận sẽ lưu ở Slack #arch-decisions.)* |
| Aiko | (Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>:アイコンUIリファクタ、オンボーディング<ruby>3画面<rt>さんがめん</rt></ruby><ruby>再設計<rt>さいせっけい</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:ダークモードの design tokens<ruby>定義<rt>ていぎ</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。ブロッカー:なし。<br>*(Hôm nay: refactor icon UI, redesign 3 màn hình onboarding. Mai: bắt đầu định nghĩa design tokens cho dark mode. Blocker: không.)* |
| Đại | OK、12<ruby>分<rt>ふん</rt></ruby>で<ruby>終了<rt>しゅうりょう</rt></ruby>。いい<ruby>感<rt>かん</rt></ruby>じ。<br>*(OK, 12 phút là xong. Cảm giác tốt đấy.)* |

---

## Tình huống 5 — Khu pantry WeWork · 21:30, làm quen founder Nhật bàn cạnh

*Đại đi lấy cà phê, gặp founder bàn cạnh.*

| Vai | Lời thoại |
|---|---|
| Sato (founder Nhật, 32t) | あ、<ruby>隣<rt>となり</rt></ruby>の<ruby>新<rt>あたら</rt></ruby>しいチームの<ruby>方<rt>かた</rt></ruby>ですか?<br>*(À, anh là người team mới bên cạnh à?)* |
| Đại | はい、<ruby>本日<rt>ほんじつ</rt></ruby>からHizashiという<ruby>会社<rt>かいしゃ</rt></ruby>でこちらにお<ruby>世話<rt>せわ</rt></ruby>になります。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Vâng, từ hôm nay công ty Hizashi của em bắt đầu nhờ chỗ ở đây. Em là Nguyễn Đại.)* |
| Sato | <ruby>佐藤<rt>さとう</rt></ruby>です。<ruby>隣<rt>となり</rt></ruby>でFinTechのスタートアップやってます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。Hizashiさんは<ruby>何<rt>なに</rt></ruby>を?<br>*(Mình là Sato. Bên cạnh làm startup FinTech. Hizashi làm gì vậy?)* |
| Đại | ベトナム<ruby>人向<rt>じんむ</rt></ruby>けの<ruby>日本語学習<rt>にほんごがくしゅう</rt></ruby>アプリでございます。<ruby>音声合成<rt>おんせいごうせい</rt></ruby>と<ruby>間隔反復<rt>かんかくはんぷく</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>を<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせたものです。<br>*(Là app học tiếng Nhật cho người Việt. Kết hợp text-to-speech và spaced repetition.)* |
| Sato | おもしろい!<ruby>創業<rt>そうぎょう</rt></ruby>は?<br>*(Hay đấy! Mới thành lập à?)* |
| Đại | <ruby>先月<rt>せんげつ</rt></ruby><ruby>登記<rt>とうき</rt></ruby>したばかりです。pre-seedで<ruby>3千万円<rt>さんぜんまんえん</rt></ruby><ruby>調達<rt>ちょうたつ</rt></ruby>させていただきました。<br>*(Tháng trước vừa đăng ký doanh nghiệp. Pre-seed huy động được 30 triệu yên.)* |
| Sato | え、すごい!ぜひ<ruby>今度<rt>こんど</rt></ruby>ランチでも。<ruby>名刺<rt>めいし</rt></ruby><ruby>交換<rt>こうかん</rt></ruby>させてください。<br>*(Ồ giỏi! Hôm nào mình ăn trưa nhé. Cho mình xin danh thiếp.)* |
| Đại | (đưa danh thiếp hai tay) <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります、こちら<ruby>名刺<rt>めいし</rt></ruby>でございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Xin phép, đây là danh thiếp của em. Mong anh giúp đỡ.)* |

---

## Tình huống 6 — Bàn họp · 22:00, brainstorm chi phí

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị, mình rà chi phí cuối tháng 4 nhé. Em đã update Notion budget. |
| Đại | Đại lương 150k, Tuấn 600k, Aiko 150k, WeWork 3 desks 150k, AWS 80k, Claude API 100k, Supabase pgvector 30k, Cloudflare R2 20k, misc 40k. Tổng 1.320.000 yên/tháng. |
| Tuấn | (tiếng Việt) Pre-seed Anri 30 triệu / 1.32 triệu = 22.7 tháng runway. OK lắm. |
| Aiko | (Nhật) <ruby>収入<rt>しゅうにゅう</rt></ruby><ruby>側<rt>がわ</rt></ruby>はどう?<br>*(Phía thu nhập thế nào?)* |
| Đại | <ruby>現在<rt>げんざい</rt></ruby>、<ruby>無料<rt>むりょう</rt></ruby>ユーザー200<ruby>名<rt>めい</rt></ruby>、<ruby>有料<rt>ゆうりょう</rt></ruby>30<ruby>名<rt>めい</rt></ruby>、<ruby>月額<rt>げつがく</rt></ruby><ruby>980円<rt>きゅうひゃくはちじゅうえん</rt></ruby>。MRRは<ruby>29,400円<rt>にまんきゅうせんよんひゃくえん</rt></ruby>。<br>*(Hiện 200 free, 30 paid, 980 yên/tháng. MRR 29.400 yên.)* |
| Aiko | (Nhật) まだ<ruby>小<rt>ちい</rt></ruby>さいね。v1.0までに<ruby>伸<rt>の</rt></ruby>ばそう!<br>*(Còn nhỏ nhỉ. Đến v1.0 cùng tăng lên nào!)* |
| Đại | <ruby>計画<rt>けいかく</rt></ruby>:v1.0は11<ruby>月<rt>がつ</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>500<ruby>名<rt>めい</rt></ruby>、<ruby>年末<rt>ねんまつ</rt></ruby>1500<ruby>名<rt>めい</rt></ruby>、MRR<ruby>目標<rt>もくひょう</rt></ruby><ruby>150万円<rt>ひゃくごじゅうまんえん</rt></ruby>。<br>*(Kế hoạch: v1.0 ra mắt tháng 11, ngày đầu 500, cuối năm 1500, mục tiêu MRR 1.5 triệu yên.)* |

---

## Tình huống 7 — LINE Mai · 22:30, update Hana đi nhà trẻ Day 1

| Vai | Lời thoại |
|---|---|
| Mai | (LINE tiếng Việt + ảnh Hana) Anh ơi! Hana cười rồi này. Cô Yamada gửi ảnh chiều nay. Tay con đang cầm xe đẩy tập đi. |
| Đại | (LINE) Trời ơi, Hana cười tươi quá! 5 bước thật à em? |
| Mai | (LINE) Cô bảo 5 bước liền, không vịn. Cô khen Hana cười tươi nhất phòng. |
| Đại | (LINE) Anh muốn nhắn cảm ơn cô Yamada. Em cho anh xin số LINE cô đi. |
| Mai | (LINE) Cô không cho LINE riêng — quy định nhà trẻ. Nhưng mai sáng 8:30 anh đến đưa Hana, anh gặp cô trực tiếp được. |
| Đại | (LINE) OK em. Anh chuẩn bị câu chào cô Yamada bằng tiếng Nhật từ giờ. |

---

## Tình huống 8 — Bàn họp · 23:00, Tuấn dạy Đại keigo xin gia hạn với khách Nhật

*Tuấn nhận email từ khách FreeC (client cũ Mercari Tuấn vẫn nhận freelance) — yêu cầu deadline gấp.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (tiếng Việt) Em xem anh viết câu này hộ. Khách FreeC yêu cầu deadline mai nhưng anh không kịp. Em thấy keigo ổn chưa? |
| Tuấn | (đọc) <ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、いつも<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>誠<rt>まこと</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、<ruby>本件<rt>ほんけん</rt></ruby>の<ruby>納期<rt>のうき</rt></ruby>を<ruby>2日間<rt>ふつかかん</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>させていただけませんでしょうか。<br>*(Anh Yamada, luôn được anh quan tâm. Em thực sự rất ngại, có thể cho phép em xin gia hạn deadline việc này thêm 2 ngày được không ạ?)* |
| Đại | (tiếng Việt) Câu đầu chuẩn rồi. Anh thêm phần lý do nữa — khách Nhật cần biết lý do cụ thể, không nhất thiết dài. |
| Tuấn | (gõ tiếp) <ruby>理由<rt>りゆう</rt></ruby>といたしましては、<ruby>追加要件<rt>ついかようけん</rt></ruby>のテストに<ruby>想定<rt>そうてい</rt></ruby>より<ruby>時間<rt>じかん</rt></ruby>を<ruby>要<rt>よう</rt></ruby>しているためでございます。ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<br>*(Lý do là việc test các yêu cầu phát sinh tốn nhiều thời gian hơn dự kiến. Em xin lỗi vì đã gây phiền hà.)* |
| Đại | (tiếng Việt) Câu "ご迷惑をおかけし申し訳ございません" chuẩn lắm. Em sẽ học thuộc câu này — BrSE Thanh A chắc dùng suốt. |
| Tuấn | (tiếng Việt) Bí kíp: 3 yếu tố — apology mở (誠に恐縮ですが), request cụ thể (〜させていただけませんでしょうか), apology đóng (ご迷惑をおかけし申し訳ございません). |
| Đại | (ghi vào Notion) Anh đặt tên template này là "三段謝罪" — xin lỗi 3 lớp. Em xin phép copy nhé. |
| Tuấn | (tiếng Việt) Lấy đi em. Tài sản chung Hizashi. |

---

## Tình huống 9 — Cửa apt Senri-chuo · 23:05, về muộn, gặp Mai

| Vai | Lời thoại |
|---|---|
| Đại | (whisper tiếng Việt) Em ơi, anh về. |
| Mai | (whisper) Sshh anh. Hana mới ngủ 10 phút thôi. |
| Đại | (whisper) Xin lỗi em anh về muộn. Standup quá giờ tí. |
| Mai | (whisper) Em hâm cháo cho anh nhé? |
| Đại | (whisper) Thôi em, anh ăn pizza ở văn phòng rồi. Em đi ngủ đi, để anh tắm. |
| Mai | (whisper) Hana hỏi bố lúc 19:00. Em bảo bố làm việc. Con không khóc, chỉ ngơ ngác. |
| Đại | (whisper) Anh xót quá. Mai anh sẽ về ăn tối với hai mẹ con — Hizashi cho phép em một buổi sớm. |
| Mai | (whisper) Vâng anh. Đừng quá sức. |

---

## Tình huống 10 — Sân nhà trẻ Senri-chuo · Thứ Bảy 8:30, gặp cô Yamada lần đầu

| Vai | Lời thoại |
|---|---|
| Đại | (cúi 30 độ với cô Yamada đang đứng cổng) <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、おはようございます。グエン・ハナの<ruby>父親<rt>ちちおや</rt></ruby>でございます。いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Cô Yamada, chào buổi sáng. Tôi là bố của Nguyễn Hana. Cô đã luôn chăm sóc cháu.)* |
| Cô Yamada (28t) | グエンさん、おはようございます!ハナちゃんのお<ruby>父<rt>とう</rt></ruby>さんですね。ハナちゃん、とてもいい<ruby>子<rt>こ</rt></ruby>ですよ。<ruby>笑顔<rt>えがお</rt></ruby>が<ruby>素敵<rt>すてき</rt></ruby>。<br>*(Anh Đại, chào buổi sáng! Anh là bố Hana đúng không. Hana ngoan lắm. Nụ cười dễ thương.)* |
| Đại | ありがとうございます。<ruby>初日<rt>しょにち</rt></ruby>の<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>妻<rt>つま</rt></ruby>から<ruby>見<rt>み</rt></ruby>せてもらいました。<ruby>5歩<rt>ごほ</rt></ruby><ruby>歩<rt>ある</rt></ruby>けたとのこと、<ruby>家族<rt>かぞく</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>感動<rt>かんどう</rt></ruby>いたしました。<br>*(Cảm ơn cô. Vợ em đã cho em xem ảnh ngày đầu. Cháu đi được 5 bước, cả nhà em đều xúc động.)* |
| Cô Yamada | おうちでも<ruby>応援<rt>おうえん</rt></ruby>してあげてください。あと、<ruby>何<rt>なに</rt></ruby>かご<ruby>不明<rt>ふめい</rt></ruby>な<ruby>点<rt>てん</rt></ruby>があれば、いつでも<ruby>連絡帳<rt>れんらくちょう</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてくださいね。<br>*(Ở nhà anh cổ vũ con nhé. Có gì không rõ thì ghi vào sổ liên lạc bất cứ lúc nào.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>一<rt>ひと</rt></ruby>つご<ruby>相談<rt>そうだん</rt></ruby>させていただきたいのですが、ハナはまだベトナム<ruby>語<rt>ご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>が<ruby>混<rt>ま</rt></ruby>ざっている<ruby>状態<rt>じょうたい</rt></ruby>でして、<ruby>園<rt>えん</rt></ruby>で<ruby>気<rt>き</rt></ruby>になることがあれば<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Em đã hiểu. Em xin trao đổi một việc: Hana hiện đang ở giai đoạn lẫn tiếng Việt và tiếng Nhật, nếu ở trường có gì đáng lưu ý thì cô báo em được không ạ?)* |
| Cô Yamada | もちろんです。バイリンガル<ruby>環境<rt>かんきょう</rt></ruby>の<ruby>子<rt>こ</rt></ruby>は<ruby>言葉<rt>ことば</rt></ruby>が<ruby>遅<rt>おそ</rt></ruby>めに<ruby>出<rt>で</rt></ruby>ることが<ruby>多<rt>おお</rt></ruby>いですが、<ruby>心配<rt>しんぱい</rt></ruby><ruby>不要<rt>ふよう</rt></ruby>です。<ruby>気付<rt>きづ</rt></ruby>いた<ruby>点<rt>てん</rt></ruby>は<ruby>連絡帳<rt>れんらくちょう</rt></ruby>に<ruby>書<rt>か</rt></ruby>きますね。<br>*(Tất nhiên. Trẻ song ngữ thường ra tiếng muộn hơn, không cần lo. Tôi sẽ ghi các điểm nhận thấy vào sổ liên lạc.)* |
| Đại | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn cô. Mong cô giúp đỡ.)* |

---

## Tình huống 11 — Tàu Hankyu · Thứ Bảy 9:30, LINE trưởng nhóm Thanh xin về sớm thứ Tư

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Thanh, JP) <ruby>タン先輩<rt>タンせんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。グエン・ダイです。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>水曜日<rt>すいようび</rt></ruby>、<ruby>家庭<rt>かてい</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>で<ruby>17時<rt>じゅうしちじ</rt></ruby>に<ruby>退社<rt>たいしゃ</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Anh Thanh, chào anh. Em là Đại. Thứ Tư tuần sau, vì việc gia đình em xin phép về lúc 17h được không ạ?)* |
| Đại | (LINE) <ruby>娘<rt>むすめ</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて<ruby>保育園<rt>ほいくえん</rt></ruby>に<ruby>通<rt>かよ</rt></ruby>い<ruby>始<rt>はじ</rt></ruby>めまして、<ruby>週<rt>しゅう</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby><ruby>早<rt>はや</rt></ruby>めに<ruby>帰<rt>かえ</rt></ruby>って<ruby>夕食<rt>ゆうしょく</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>取<rt>と</rt></ruby>りたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Con gái em mới bắt đầu đi nhà trẻ, em muốn 1 lần/tuần về sớm ăn tối cùng cháu.)* |
| Thanh | (LINE) もちろん!<ruby>家族<rt>かぞく</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>。<ruby>水曜日<rt>すいようび</rt></ruby><ruby>17時退社<rt>じゅうしちじたいしゃ</rt></ruby>OK。<ruby>毎週<rt>まいしゅう</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>でも<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Tất nhiên! Gia đình quan trọng. Thứ Tư về 17h OK. Cố định hàng tuần cũng được.)* |
| Đại | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>毎週水曜日<rt>まいしゅうすいようび</rt></ruby><ruby>17時退社<rt>じゅうしちじたいしゃ</rt></ruby>で<ruby>固定<rt>こてい</rt></ruby>させていただきます。<br>*(Em cảm ơn anh thật lòng. Em xin cố định thứ Tư hàng tuần về 17h.)* |
| Thanh | (LINE tiếng Việt) Em cứ thoải mái. Anh có 2 con rồi anh hiểu. |
| Đại | (LINE tiếng Việt) Cảm ơn anh nhiều. |

---

## Tình huống 12 — Bàn họp Hizashi · Thứ Bảy 11:00, Aiko present design tokens

| Vai | Lời thoại |
|---|---|
| Aiko | (share Figma, Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>は design tokens ver.1 を<ruby>共有<rt>きょうゆう</rt></ruby>します。プライマリーは Hizashi orange #FF7B1C、セカンダリーは sunrise yellow #FFD166、<ruby>背景<rt>はいけい</rt></ruby>は warm white #FFF8F0。<br>*(Hôm nay mình chia sẻ design tokens ver.1. Primary là Hizashi orange #FF7B1C, secondary là sunrise yellow #FFD166, background là warm white #FFF8F0.)* |
| Đại | <ruby>名前<rt>なまえ</rt></ruby>「Hizashi=<ruby>日差<rt>ひざ</rt></ruby>し」だから、オレンジと<ruby>黄色<rt>きいろ</rt></ruby>が<ruby>軸<rt>じく</rt></ruby>になるの、いいね。<br>*(Vì tên "Hizashi = nắng" nên cam và vàng làm trục — hay đấy.)* |
| Tuấn | (Nhật) <ruby>暗<rt>くら</rt></ruby>いところで<ruby>読<rt>よ</rt></ruby>める? furigana<ruby>用<rt>よう</rt></ruby>のグレーは?<br>*(Đọc trong tối được không? Màu xám cho furigana?)* |
| Aiko | (Nhật) Furigana<ruby>用<rt>よう</rt></ruby>は #999999、ダークモード<ruby>時<rt>じ</rt></ruby>は #BBBBBB に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。コントラスト<ruby>比<rt>ひ</rt></ruby>は WCAG AA をクリア。<br>*(Furigana #999999, dark mode chuyển sang #BBBBBB. Contrast ratio đạt WCAG AA.)* |
| Đại | アクセシビリティまで<ruby>考<rt>かんが</rt></ruby>えてくれて<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Tính cả accessibility — cảm ơn em thật.)* |

---

## Tình huống 13 — Pantry · Thứ Bảy 13:00, ăn trưa với Tuấn, hỏi về work-life

*Aiko đã về lab, hai anh em ăn cơm hộp.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (tiếng Việt) Em ơi, anh hỏi thật. Tuần này em ngủ trung bình mấy tiếng? |
| Đại | (tiếng Việt) 6 tiếng anh. Hơi mỏng. |
| Tuấn | (tiếng Việt) Anh cũng từng vậy hồi Mercari Y1. 3 tháng là cháy. Anh đề xuất: thứ Bảy hoặc Chủ Nhật em chọn 1 ngày off hoàn toàn — không laptop. |
| Đại | (tiếng Việt) Em chọn Chủ Nhật. Cho Mai và Hana. |
| Tuấn | (tiếng Việt) Tốt. Anh sẽ giữ cho em. Nếu thứ Bảy nào em vắng thì cứ vắng, anh xử lý standup. |
| Đại | (tiếng Việt) Cảm ơn anh. Anh chăm em hơn em chăm em. |
| Tuấn | (tiếng Việt) Cofounder phải vậy chứ. Em là CEO, em mà cháy thì cả công ty cháy. |

---

## Tình huống 14 — Phòng khách apt Senri-chuo · Chủ Nhật 19:00, cảnh tiếng Việt với Mai

*Đại tắt laptop, gập lại, đặt sang phòng làm việc. Hana đang chơi xếp hình trên thảm.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, tuần này anh muốn báo lại em mấy thứ. Mình sống mới một tuần, em chịu nhiều thứ quá. |
| Mai | (tiếng Việt) Em ổn anh. Em chỉ lo anh. |
| Đại | (tiếng Việt) Anh đã thống nhất với anh Thanh — thứ Tư hàng tuần anh về 17h ăn tối với hai mẹ con. Cố định luôn. |
| Mai | (tiếng Việt) Thật á? Anh xin được luôn? Em tưởng tuần đầu chưa dám xin. |
| Đại | (tiếng Việt) Anh xin bằng keigo: "家庭の都合で17時に退社させていただいてもよろしいでしょうか". Anh Thanh có 2 con, anh hiểu ngay. |
| Mai | (tiếng Việt) Câu đấy hay quá. "家庭の都合" — vì việc gia đình. Em ghi nhớ. |
| Đại | (tiếng Việt) Còn nữa. Tuấn ép anh nghỉ Chủ Nhật, không laptop. Từ tuần sau Chủ Nhật là của ba mẹ con mình. |
| Mai | (tiếng Việt, đôi mắt sáng) Thật á anh? |
| Đại | (tiếng Việt) Thật. Sáng nay anh gặp cô Yamada nhà trẻ. Cô bảo Hana có hơi chậm tiếng vì song ngữ nhưng không lo. Mình cứ nói cả Việt cả Nhật ở nhà như đang làm. |
| Mai | (tiếng Việt) Em mừng anh nói chuyện được với cô. Em nói tiếng Nhật ngại lắm. |
| Đại | (tiếng Việt) Anh sẽ làm cho em bộ flashcard câu cô giáo nhà trẻ. 20 câu thôi: "お世話になっております", "連絡帳に書きます", "熱が出ました", "お迎えに参ります"... Em học 1 tuần là dùng được. |
| Hana | (tiếng Việt) Bố! Mẹ! Đây! Đây! |
| Đại | (bế Hana, tiếng Việt) Ừ con, đây bố mẹ. Bố không đi đâu nữa. |
| Mai | (tiếng Việt) Em chụp một tấm. Cả nhà cười nào. |

---

## Đọng lại chương 2

Tuần đầu Hizashi office Đại đặt được nền cho cả năm: nhịp **standup 21:00 ba câu** (本日・明日・ブロッカー), template **"三段謝罪"** xin gia hạn với khách Nhật (誠に恐縮ですが → 〜させていただけませんでしょうか → ご迷惑をおかけし申し訳ございません), bộ câu mở chat khách **「いつも大変お世話になっております」**. Trao đổi keigo với cô giáo Hana lần đầu — **「いつもお世話になっております・ご相談させていただきたいのですが・連絡帳」** — mở kênh giao tiếp song ngữ cho Hana lớn lên. Xin được trưởng nhóm Thanh cho cố định **thứ Tư 17h về** bằng câu **「家庭の都合で17時に退社させていただいてもよろしいでしょうか」**. Cofounder Tuấn ép Đại nghỉ Chủ Nhật không laptop để giữ sức cho 22.7 tháng runway. Cảnh tiếng Việt cuối ngày Đại dạy lại Mai chuỗi keigo cô giáo nhà trẻ để vợ dùng được khi tự đón Hana.

> Từ vựng & mẫu câu chương này: スタンドアップ・本日の進捗・明日の予定・ブロッカー・誠に恐縮ですが・〜させていただけませんでしょうか・ご迷惑をおかけし申し訳ございません・いつも大変お世話になっております・家庭の都合で・退社させていただいても・連絡帳・ご相談させていただきたいのですが・バーンレート・ランウェイ・MRR・design tokens・WCAG AA・有料ユーザー・お世話になっております・名刺交換

## Bí quyết chương

- Standup ba câu 21:00 (本日・明日・ブロッカー) — đủ ngắn để duy trì hằng ngày khi 1 founder bận ban ngày
- Template "三段謝罪" (xin lỗi 3 lớp) là vũ khí standard của BrSE Việt khi xin gia hạn / xin nghỉ với khách và sếp Nhật
- Khi xin về sớm hằng tuần, dùng "家庭の都合で" + "固定させていただきます" — khách quan, không cần giải thích chi tiết
- Gặp cô giáo nhà trẻ lần đầu mở bằng "いつもお世話になっております" — câu mở mặc định, an toàn 100%
- Cofounder phải bảo vệ nhau khỏi cháy: Đại lo Tuấn-Aiko không cháy, Tuấn lo Đại không cháy — chia ngày off hoàn toàn

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 株式会社 | かぶしきがいしゃ | CỔ THỨC HỘI XÃ | công ty cổ phần |
| 契約 | けいやく | KHẾ ƯỚC | hợp đồng |
| 入館証 | にゅうかんしょう | NHẬP QUÁN CHỨNG | thẻ ra vào |
| 予約 | よやく | DỰ ƯỚC | đặt trước (phòng họp) |
| 利用 | りよう | LỢI DỤNG | sử dụng |
| 進捗 | しんちょく | TIẾN BỘ | tiến độ |
| 議事録 | ぎじろく | NGHỊ SỰ LỤC | biên bản họp |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 音声合成 | おんせいごうせい | ÂM THANH HỢP THÀNH | tổng hợp giọng nói |
| 間隔反復 | かんかくはんぷく | GIAN CÁCH PHẢN PHỤC | spaced repetition |
| 登記 | とうき | ĐĂNG KÝ | đăng ký doanh nghiệp |
| 調達 | ちょうたつ | ĐIỀU ĐẠT | huy động vốn |
| 名刺 | めいし | DANH THÍCH | danh thiếp |
| 名刺交換 | めいしこうかん | DANH THÍCH GIAO HOÁN | trao đổi danh thiếp |
| 収入 | しゅうにゅう | THU NHẬP | thu nhập |
| 有料 | ゆうりょう | HỮU LIỆU | trả phí |
| 月額 | げつがく | NGUYỆT NGẠCH | mức phí hàng tháng |
| 目標 | もくひょう | MỤC TIÊU | mục tiêu |
| 誠に恐縮ですが | まことにきょうしゅくですが | THÀNH KHỦNG SÚC | em thật sự rất ngại |
| 延長 | えんちょう | DIÊN TRƯỜNG | gia hạn |
| 追加要件 | ついかようけん | TRUY GIA YẾU KIỆN | yêu cầu phát sinh |
| 想定 | そうてい | TƯỞNG ĐỊNH | dự kiến |
| 迷惑 | めいわく | MÊ HOẶC | phiền hà |
| 申し訳ございません | もうしわけございません | THÂN DỊCH | em rất xin lỗi |
| 三段謝罪 | さんだんしゃざい | TAM ĐOẠN TẠ TỘI | xin lỗi 3 lớp |
| 父親 | ちちおや | PHỤ THÂN | bố, cha |
| 連絡帳 | れんらくちょう | LIÊN LẠC TRƯƠNG | sổ liên lạc |
| ご相談 | ごそうだん | TƯƠNG ĐÀM | trao đổi, bàn bạc |
| 環境 | かんきょう | HOÀN CẢNH | môi trường |
| 家庭の都合 | かていのつごう | GIA ĐÌNH ĐÔ HỢP | vì việc gia đình |
| 退社 | たいしゃ | THOÁI XÃ | về sau giờ làm |
| 固定 | こてい | CỐ ĐỊNH | cố định |
| 保育園 | ほいくえん | BẢO DỤC VIÊN | nhà trẻ |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 背景 | はいけい | BỐI CẢNH | nền, background |
| 切り替え | きりかえ | THIẾT THẾ | chuyển đổi |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000003, 800000025, NULL, 'markdown_book', 'T3. Dự án BrSE đầu — dịch spec Aichi Auto Parts', '# Sách kỹ sư cầu nối & khởi nghiệp · T3. Dự án BrSE đầu — dịch spec Aichi Auto Parts

> **Mục tiêu nhân vật:** 5/2030. Đại tuần 4 BrSE Thanh A, nhận task solo đầu tiên: dịch 5 trang spec JP→VN cho khách Aichi Auto Parts. Học các mẫu hội thoại tiếng Nhật và cách làm việc của BrSE: 1) nhận giao việc + readback (〜という認識でよろしいでしょうか); 2) xin tài liệu bổ sung từ khách (恐れ入りますが・お送りいただけますでしょうか); 3) hỏi sempai về thuật ngữ ngành sản xuất (〜の解釈について); 4) trình bày kết quả review với trưởng nhóm (ご確認のほどお願いいたします); 5) nhận phản hồi và đáp lại (ご指摘ありがとうございます・修正いたします); 6) gửi ghi chú cảm ơn cho cohort (お力添えいただき).

---

## Bối cảnh

6/5/2030 thứ Hai sau Golden Week. Đại tuần 4 BrSE Thanh A. Sau 3 tuần shadow, trưởng nhóm Thanh giao task solo đầu tiên — dịch 5 trang spec JP→VN cho dự án Aichi Auto Parts (nhà cung cấp Tier-1 cho Toyota), Internal Web Dashboard quản lý production line. Hạn nộp thứ Sáu 18:00 trên Confluence. Thuật ngữ ngành sản xuất khó (生産ライン, 稼働率, 不良率, トレーサビリティ, 工程管理). Đại sẽ tự đọc, hỏi sempai khi cần, nộp, nhận phản hồi. Hizashi tối Đại cùng Tuấn quyết kiến trúc embedding BGE-M3 vs E5. Chương này tập trung vào ngôn ngữ làm việc của BrSE: giao tiếp keigo với trưởng nhóm + khách + sempai.

---

## Tình huống 1 — Sàn BrSE · Thứ Hai 9:00, trưởng nhóm Thanh giao task solo đầu

| Vai | Lời thoại |
|---|---|
| Thanh | グエンさん、おはようございます。<ruby>連休<rt>れんきゅう</rt></ruby>はいかがでしたか?<br>*(Đại, chào buổi sáng. Tuần lễ vàng thế nào?)* |
| Đại | おはようございます。<ruby>家族<rt>かぞく</rt></ruby>でユニバーサルスタジオに<ruby>行<rt>い</rt></ruby>って<ruby>参<rt>まい</rt></ruby>りました。<ruby>娘<rt>むすめ</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めての<ruby>遊園地<rt>ゆうえんち</rt></ruby>で<ruby>大喜<rt>おおよろこ</rt></ruby>びでした。<br>*(Em chào anh. Em cho gia đình đi Universal Studio Osaka. Con gái lần đầu đi công viên giải trí mừng lắm.)* |
| Thanh | いいですね。さて、<ruby>今週<rt>こんしゅう</rt></ruby>から<ruby>初<rt>はじ</rt></ruby>めての<ruby>単独業務<rt>たんどくぎょうむ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>愛知<rt>あいち</rt></ruby>オートパーツ<ruby>様<rt>さま</rt></ruby>の<ruby>仕様書<rt>しようしょ</rt></ruby><ruby>1<rt>いち</rt></ruby>〜<ruby>5<rt>ご</rt></ruby>ページ、<ruby>日本語<rt>にほんご</rt></ruby>からベトナム<ruby>語<rt>ご</rt></ruby>へ。<br>*(Tốt. Tuần này anh giao em công việc solo đầu tiên. Spec khách Aichi Auto Parts trang 1-5, từ tiếng Nhật sang tiếng Việt.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>復唱<rt>ふくしょう</rt></ruby>させていただきます。<ruby>納期<rt>のうき</rt></ruby>は<ruby>今週金曜日<rt>こんしゅうきんようび</rt></ruby><ruby>18時<rt>じゅうはちじ</rt></ruby>、<ruby>成果物<rt>せいかぶつ</rt></ruby>はConfluenceの<ruby>日本語<rt>にほんご</rt></ruby><ruby>原文<rt>げんぶん</rt></ruby><ruby>付<rt>つ</rt></ruby>き<ruby>翻訳<rt>ほんやく</rt></ruby>、<ruby>対象<rt>たいしょう</rt></ruby>は<ruby>概要<rt>がいよう</rt></ruby>とDBスキーマの<ruby>5枚<rt>ごまい</rt></ruby>、という<ruby>認識<rt>にんしき</rt></ruby>でよろしいでしょうか。<br>*(Em đã hiểu. Em xin readback: hạn nộp 18h thứ Sáu, sản phẩm là bản dịch kèm nguyên văn JP trên Confluence, đối tượng là Overview và DB schema 5 trang — nhận thức đó đúng không ạ?)* |
| Thanh | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Đúng vậy.)* |
| Thanh | (tiếng Việt nhỏ) Câu "という認識でよろしいでしょうか" chuẩn lắm em. Tuần đầu em đã đổi từ "〜ということでよろしいでしょうか" sang "〜という認識で" rồi à? |
| Đại | (tiếng Việt) Vâng anh. Tuần trước em đọc một bài blog của BrSE Tokyo, người ta khuyên dùng "認識" vì nghe chững chạc hơn. |
| Thanh | (tiếng Việt) Em chịu học. Tốt. |

---

## Tình huống 2 — Bàn làm việc · 10:00-12:00, đọc PDF spec gặp 5 thuật ngữ khó

*Đại mở Notion glossary cá nhân, highlight 5 thuật ngữ.*

| Vai | Lời thoại |
|---|---|
| Đại | (gọi Khoa, JP) <ruby>コアさん<rt>コアさん</rt></ruby>、ちょっとよろしいですか?<ruby>愛知<rt>あいち</rt></ruby>オートパーツ<ruby>様<rt>さま</rt></ruby>の<ruby>仕様書<rt>しようしょ</rt></ruby>で<ruby>用語<rt>ようご</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>をしたいのですが。<br>*(Anh Khoa, anh rảnh chút không ạ? Em muốn xác nhận thuật ngữ trên spec Aichi.)* |
| Khoa | はい、どうぞ。<br>*(Ừ, em hỏi đi.)* |
| Đại | 「<ruby>稼働率<rt>かどうりつ</rt></ruby>」は「<ruby>設備<rt>せつび</rt></ruby>が<ruby>動<rt>うご</rt></ruby>いている<ruby>時間<rt>じかん</rt></ruby>の<ruby>割合<rt>わりあい</rt></ruby>」、ベトナム<ruby>語<rt>ご</rt></ruby>で「tỷ lệ vận hành」という<ruby>解釈<rt>かいしゃく</rt></ruby>でよろしいでしょうか。<br>*("稼働率" em hiểu là "tỷ lệ thời gian thiết bị đang chạy", dịch là "tỷ lệ vận hành" — cách hiểu đó đúng không ạ?)* |
| Khoa | はい、その<ruby>解釈<rt>かいしゃく</rt></ruby>で<ruby>正<rt>ただ</rt></ruby>しいです。<ruby>業界<rt>ぎょうかい</rt></ruby>では「OEE」とも<ruby>呼<rt>よ</rt></ruby>びますね。Overall Equipment Effectiveness。<br>*(Đúng. Trong ngành còn gọi là "OEE" — Overall Equipment Effectiveness.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。「<ruby>不良率<rt>ふりょうりつ</rt></ruby>」は「<ruby>欠陥品<rt>けっかんひん</rt></ruby>の<ruby>割合<rt>わりあい</rt></ruby>」で「tỷ lệ phế phẩm」、「<ruby>工程管理<rt>こうていかんり</rt></ruby>」は「quản lý công đoạn」でいかがでしょうか。<br>*(Em đã hiểu. "不良率" là "tỷ lệ hàng lỗi" = "tỷ lệ phế phẩm", "工程管理" = "quản lý công đoạn" — anh thấy thế nào ạ?)* |
| Khoa | <ruby>完璧<rt>かんぺき</rt></ruby>です。あとトレーサビリティは「truy xuất nguồn gốc」、これはトヨタ<ruby>系列<rt>けいれつ</rt></ruby>で<ruby>必須<rt>ひっす</rt></ruby>の<ruby>要件<rt>ようけん</rt></ruby>ですよ。<br>*(Hoàn hảo. Còn traceability là "truy xuất nguồn gốc" — yêu cầu bắt buộc trong chuỗi Toyota.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được nhiều. Cảm ơn anh.)* |
| Khoa | (Slack DM tiếng Việt) Em ơi, anh share Notion glossary 800 thuật ngữ của anh nhé. Em copy về Notion riêng. |
| Đại | (Slack tiếng Việt) Trời ơi cảm ơn anh! Em sẽ bổ sung thêm khi gặp từ mới. |

---

## Tình huống 3 — Quán phở chị Hương · 12:30, sempai dạy "không dịch từng chữ"

| Vai | Lời thoại |
|---|---|
| Phương (BrSE 30t) | (tiếng Việt) Em Đại, một bí quyết: KHÔNG dịch từng chữ. Đọc cả đoạn JP → hiểu ý → viết lại tiếng Việt tự nhiên cho dev Việt dễ hiểu. |
| Hùng (BrSE 32t) | (tiếng Việt) Dev Việt đọc spec dịch máy là rối → ra bug. Spec rõ thì ít bug. Anh đã chứng kiến project bị blow up vì BrSE dịch literal. |
| Đại | (tiếng Việt) Em hiểu. Vậy quy trình em sẽ là: đọc đoạn JP → tóm ý bằng VN trong đầu → viết lại VN đầy đủ → check ngược lại có sót thông tin không. |
| Phương | (tiếng Việt) Chuẩn. Thêm 1 bước: bảng thuật ngữ ở đầu trang. Dev đọc bảng trước, sau đó đọc spec không bị bí. |
| Khoa | (tiếng Việt) Còn nữa — câu nào em không chắc, đánh dấu màu vàng. Cuối tuần anh Thanh review thì gom 1 lượt hỏi anh. Đừng rải lẻ tẻ. |
| Đại | (tiếng Việt) Vâng anh. Em sẽ làm 1 sheet "câu hỏi tồn" cuối Confluence. |
| Hùng | (tiếng Việt) Tốt. BrSE thực sự khác dịch giả ở chỗ đó — mình hiểu cả nghiệp vụ lẫn code, không chỉ ngôn ngữ. |

---

## Tình huống 4 — Bàn làm việc · 14:00, email cho khách xin tài liệu bổ sung

*Spec gốc thiếu sơ đồ ERD cho 3 bảng phụ. Đại drafts email gửi khách Sato-san bên Aichi.*

| Vai | Lời thoại |
|---|---|
| Đại | (cho Thanh xem nháp) <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>いつも<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズ、BrSEのグエン・ダイでございます。<br><br><ruby>本件<rt>ほんけん</rt></ruby><ruby>仕様書<rt>しようしょ</rt></ruby>を<ruby>拝読<rt>はいどく</rt></ruby>させていただいておりますが、<ruby>1点<rt>いってん</rt></ruby>ご<ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>3<rt>さん</rt></ruby>ページ<ruby>記載<rt>きさい</rt></ruby>の「<ruby>処理履歴<rt>しょりりれき</rt></ruby>テーブル」「アラートテーブル」「<ruby>監査<rt>かんさ</rt></ruby>ログテーブル」のERD<ruby>図<rt>ず</rt></ruby>が<ruby>添付<rt>てんぷ</rt></ruby><ruby>資料<rt>しりょう</rt></ruby>に<ruby>見当<rt>みあ</rt></ruby>たりませんでした。<br><br><ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、ERD<ruby>図<rt>ず</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りいただけますでしょうか。<ruby>翻訳<rt>ほんやく</rt></ruby>の<ruby>正確性<rt>せいかくせい</rt></ruby>を<ruby>担保<rt>たんぽ</rt></ruby>するために<ruby>必要<rt>ひつよう</rt></ruby>でございます。<br><br>お<ruby>手数<rt>てすう</rt></ruby>をおかけしますが、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ダイ<br>*(Email xin tài liệu bổ sung.)* |
| Thanh | (đọc) <ruby>完璧<rt>かんぺき</rt></ruby>です。「<ruby>翻訳<rt>ほんやく</rt></ruby>の<ruby>正確性<rt>せいかくせい</rt></ruby>を<ruby>担保<rt>たんぽ</rt></ruby>するために<ruby>必要<rt>ひつよう</rt></ruby>でございます」— この<ruby>一文<rt>いちぶん</rt></ruby>がいいですね。<ruby>理由<rt>りゆう</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>。<br>*(Hoàn hảo. Câu "vì cần để đảm bảo độ chính xác bản dịch" — câu đó hay đấy. Lý do rõ ràng.)* |
| Đại | (tiếng Việt) Em viết "理由が明確" để khách Nhật không hiểu nhầm là mình lười không tự đoán được. |
| Thanh | (tiếng Việt) Chuẩn. Send đi. |
| Đại | (gửi email) <ruby>送信<rt>そうしん</rt></ruby>いたしました。<br>*(Đã gửi.)* |

---

## Tình huống 5 — Bàn làm việc · 15:00, khách Sato reply nhanh

*Email reply trong 30 phút.*

| Vai | Lời thoại |
|---|---|
| Saito (khách Aichi, email) | グエン<ruby>様<rt>さま</rt></ruby><br><br>ご<ruby>連絡<rt>れんらく</rt></ruby>ありがとうございます。<ruby>記載<rt>きさい</rt></ruby><ruby>漏<rt>も</rt></ruby>れがあり<ruby>大変失礼<rt>たいへんしつれい</rt></ruby>いたしました。<ruby>添付<rt>てんぷ</rt></ruby>にERD<ruby>図<rt>ず</rt></ruby>を<ruby>送付<rt>そうふ</rt></ruby>いたします。<ruby>他<rt>ほか</rt></ruby>にもご<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>がございましたら、お<ruby>気軽<rt>きがる</rt></ruby>にお<ruby>知<rt>し</rt></ruby>らせください。<br><br><ruby>佐藤<rt>さとう</rt></ruby><br>*(Cảm ơn anh đã liên lạc. Đã sót, xin lỗi anh. Đính kèm là ERD.)* |
| Đại | (reply email) <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>ERD<ruby>図<rt>ず</rt></ruby>のご<ruby>送付<rt>そうふ</rt></ruby>、ありがとうございました。<ruby>早速<rt>さっそく</rt></ruby><ruby>翻訳<rt>ほんやく</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>させていただきます。<br><br><ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ダイ<br>*(Cảm ơn anh đã gửi. Em sẽ phản ánh ngay vào bản dịch. Tiếp tục mong anh giúp đỡ.)* |
| Thanh | (tiếng Việt, qua vai) Em reply nhanh — khách Nhật rất quý cái đó. "Bạn quan tâm = chuyên nghiệp" theo họ. |
| Đại | (tiếng Việt) Em ghi: reply email khách trong 1 tiếng nếu có thể. |

---

## Tình huống 6 — Bàn làm việc · 16:00, dịch DB schema có giải thích VN

| Vai | Lời thoại |
|---|---|
| Đại | (mở Confluence, type) **3. Sơ đồ DB**<br><br>**3.1 Bảng `production_lines` (Dây chuyền sản xuất)**<br><br>Bảng lưu thông tin các dây chuyền sản xuất tại nhà máy. Mỗi dây chuyền tương ứng 1 sản phẩm chính (ví dụ: dây chuyền lắp bộ truyền động AT-2025).<br><br>| Cột | Kiểu | Mô tả |<br>|---|---|---|<br>| id | SERIAL PK | ID tự tăng |<br>| factory_id | INT FK | ID nhà máy (FK → factories.id) |<br>| line_code | VARCHAR(20) UNIQUE | Mã dây chuyền nội bộ (ví dụ: "L-A201") |<br>| product_type | VARCHAR(50) | Loại sản phẩm |<br>| status | VARCHAR(20) | Trạng thái: running / stopped / maintenance |<br>| operating_rate | DECIMAL(5,2) | Tỷ lệ vận hành phần trăm (mục tiêu ≥ 92%) |<br>| defect_rate | DECIMAL(5,2) | Tỷ lệ phế phẩm phần trăm (mục tiêu ≤ 0.3%) |<br>| created_at | TIMESTAMP | Thời gian tạo bản ghi |<br><br>Ghi chú: `line_code` UNIQUE để tránh trùng khi nhập tay từ thẻ giấy hiện trường.<br>*(Confluence draft.)* |
| Đại | (gọi Khoa, JP) <ruby>コアさん<rt>コアさん</rt></ruby>、コードの<ruby>例<rt>れい</rt></ruby>「L-A201」って、<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>標準<rt>ひょうじゅん</rt></ruby>のフォーマットでしょうか。<br>*(Anh Khoa, ví dụ mã "L-A201" — đó có phải format chuẩn của ngành không?)* |
| Khoa | はい、トヨタ<ruby>系列<rt>けいれつ</rt></ruby>でよく<ruby>使<rt>つか</rt></ruby>われます。L<ruby>=line<rt>ライン</rt></ruby>、A<ruby>=工場<rt>こうじょう</rt></ruby>ブロック、3<ruby>桁<rt>けた</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>。<br>*(Đúng, trong chuỗi Toyota dùng nhiều. L = line, A = block nhà máy, 3 chữ số.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>注釈<rt>ちゅうしゃく</rt></ruby>にそう<ruby>記入<rt>きにゅう</rt></ruby>いたします。<br>*(Em đã hiểu. Em ghi chú thêm vào.)* |

---

## Tình huống 7 — Bàn làm việc · Thứ Năm 16:00, "câu hỏi tồn" cho Thanh

*Đại đã xong 5 trang. Mở sheet "Câu hỏi tồn" ở cuối Confluence.*

| Vai | Lời thoại |
|---|---|
| Đại | (Slack DM Thanh, JP) <ruby>タン先輩<rt>タンせんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>愛知<rt>あいち</rt></ruby><ruby>案件<rt>あんけん</rt></ruby>の<ruby>翻訳<rt>ほんやく</rt></ruby><ruby>初稿<rt>しょこう</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>いたしました。Confluence:[link]。<br>*(Anh Thanh, chào anh. Bản dịch nháp dự án Aichi em xong rồi. Confluence: [link].)* |
| Đại | (Slack) <ruby>確認<rt>かくにん</rt></ruby>いただきたい<ruby>点<rt>てん</rt></ruby>が<ruby>3<rt>みっ</rt></ruby>つございます:<br>1. 「<ruby>監査<rt>かんさ</rt></ruby>ログ」は「nhật ký kiểm toán」と「log kiểm toán」のどちらが<ruby>適切<rt>てきせつ</rt></ruby>でしょうか。<br>2. 「<ruby>遡及<rt>そきゅう</rt></ruby><ruby>更新<rt>こうしん</rt></ruby>」は「cập nhật hồi tố」で<ruby>意味<rt>いみ</rt></ruby>が<ruby>通<rt>つう</rt></ruby>じますか?<br>3. <ruby>図<rt>ず</rt></ruby><ruby>1-3<rt>いちのさん</rt></ruby>(<ruby>処理<rt>しょり</rt></ruby>フロー)は<ruby>原文<rt>げんぶん</rt></ruby>の<ruby>画像<rt>がぞう</rt></ruby>を<ruby>貼<rt>は</rt></ruby>るか、ベトナム<ruby>語<rt>ご</rt></ruby>で<ruby>書<rt>か</rt></ruby>き<ruby>直<rt>なお</rt></ruby>すか、いかがでしょうか。<br>*(3 điểm em muốn anh xác nhận: 1. "監査ログ" dịch "nhật ký kiểm toán" hay "log kiểm toán"; 2. "遡及更新" dịch "cập nhật hồi tố" có hiểu không; 3. Hình 1-3 (process flow) dán ảnh gốc hay vẽ lại tiếng Việt?)* |
| Thanh | (Slack JP) <ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>レビューします。<br>*(Tôi nhận rồi. Mai sáng tôi review.)* |
| Thanh | (Slack tiếng Việt) Em hỏi gộp 3 câu là chuẩn. Anh đỡ phải reply rời rạc. |

---

## Tình huống 8 — Bàn làm việc · Thứ Sáu 10:00, Thanh đưa phản hồi B+ trực tiếp

*Thanh kéo ghế ngồi cạnh, mở Confluence song song.*

| Vai | Lời thoại |
|---|---|
| Thanh | グエンさん、<ruby>初<rt>はじ</rt></ruby>めての<ruby>翻訳<rt>ほんやく</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>総合<rt>そうごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>はB<ruby>プラス<rt>プラス</rt></ruby>、<ruby>80点<rt>はちじゅってん</rt></ruby>です。<br>*(Đại, công việc dịch đầu tiên — em vất vả rồi. Tổng đánh giá B+, 80 điểm.)* |
| Đại | ありがとうございます。フィードバックをいただけますでしょうか。<br>*(Cảm ơn anh. Anh cho em phản hồi được không ạ?)* |
| Thanh | まず<ruby>良<rt>よ</rt></ruby>かった<ruby>点<rt>てん</rt></ruby>:1)<ruby>用語<rt>ようご</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>が<ruby>正確<rt>せいかく</rt></ruby>。2)DBテーブルにベトナム<ruby>語<rt>ご</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えてくれた。3)<ruby>不明点<rt>ふめいてん</rt></ruby>を<ruby>事前<rt>じぜん</rt></ruby>に<ruby>顧客<rt>こきゃく</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>した。<br>*(Điểm tốt: 1) thuật ngữ chính xác; 2) bảng DB có giải thích VN kèm; 3) chủ động hỏi khách trước khi gặp khó.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<br>*(Dạ ngại quá ạ.)* |
| Thanh | <ruby>改善点<rt>かいぜんてん</rt></ruby><ruby>3<rt>みっ</rt></ruby>つ。1)<ruby>概要<rt>がいよう</rt></ruby><ruby>冒頭<rt>ぼうとう</rt></ruby>に、お<ruby>客様<rt>きゃくさま</rt></ruby>が「<ruby>トヨタ<rt>トヨタ</rt></ruby>Tier-1<ruby>サプライヤー<rt>サプライヤー</rt></ruby>」である<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>背景<rt>はいけい</rt></ruby>を<ruby>1行追加<rt>いちぎょうついか</rt></ruby>して。<br>*(3 điểm cải thiện. 1) Đầu phần Overview, thêm 1 dòng nói khách là Tier-1 supplier Toyota.)* |
| Thanh | 2)「process_name」は<ruby>英語<rt>えいご</rt></ruby>のままだったね。「<ruby>工程名<rt>こうていめい</rt></ruby>」=「Tên công đoạn」と<ruby>訳<rt>やく</rt></ruby>してほしい。<ruby>列名<rt>れつめい</rt></ruby>は<ruby>英語<rt>えいご</rt></ruby>のまま<ruby>残<rt>のこ</rt></ruby>すが、<ruby>説明<rt>せつめい</rt></ruby>はベトナム<ruby>語<rt>ご</rt></ruby>。<br>*(2) "process_name" giữ nguyên EN. Nhưng phần mô tả phải dịch "Tên công đoạn" — tên cột giữ EN, mô tả thì VN.)* |
| Thanh | 3)PDF<ruby>原文<rt>げんぶん</rt></ruby>の<ruby>18ページ<rt>じゅうはちページ</rt></ruby>にUIモックアップがあったの、リンクを<ruby>追加<rt>ついか</rt></ruby>してほしい。デベロッパーが<ruby>画像<rt>がぞう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ながらコーディングできるように。<br>*(3) Trang 18 PDF có UI mockup — thêm link vào để dev vừa code vừa nhìn ảnh.)* |
| Đại | ご<ruby>指摘<rt>してき</rt></ruby>ありがとうございます。<ruby>3点<rt>さんてん</rt></ruby>とも<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に<ruby>修正<rt>しゅうせい</rt></ruby>いたします。<ruby>17時<rt>じゅうしちじ</rt></ruby>までに<ruby>再提出<rt>さいていしゅつ</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Cảm ơn anh đã chỉ điểm. Cả 3 em sẽ sửa trong hôm nay. Em xin nộp lại trước 17h được không ạ?)* |
| Thanh | OK。<ruby>初<rt>はじ</rt></ruby>めての<ruby>業務<rt>ぎょうむ</rt></ruby>でB+は<ruby>立派<rt>りっぱ</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>は<ruby>2018年<rt>にせんじゅうはちねん</rt></ruby>に<ruby>初<rt>はじ</rt></ruby>めて<ruby>翻訳<rt>ほんやく</rt></ruby>したときC<ruby>マイナス<rt>マイナス</rt></ruby>でした。<br>*(OK. Lần đầu mà B+ là đáng nể. Anh năm 2018 lần đầu dịch chỉ được C-.)* |
| Đại | <ruby>励<rt>はげ</rt></ruby>みになります。ありがとうございます。<br>*(Em được khích lệ. Cảm ơn anh.)* |

---

## Tình huống 9 — Bàn làm việc · Thứ Sáu 14:00, sửa và nộp lại

| Vai | Lời thoại |
|---|---|
| Đại | (Slack Phương + Khoa + Hùng, JP) <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまです。<ruby>初<rt>はじ</rt></ruby>めての<ruby>業務<rt>ぎょうむ</rt></ruby>でB+を<ruby>頂<rt>いただ</rt></ruby>きました。<ruby>皆<rt>みな</rt></ruby>さんに<ruby>用語集<rt>ようごしゅう</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>していただき、お<ruby>力添<rt>ちからぞ</rt></ruby>えいただき<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Mọi người, cảm ơn vì hôm nay. Em được B+ cho task đầu. Cảm ơn các anh chị đã share glossary và hỗ trợ.)* |
| Phương | (Slack JP) お<ruby>疲<rt>つか</rt></ruby>れさま!B+は<ruby>素晴<rt>すば</rt></ruby>らしいよ。<br>*(Vất vả rồi! B+ tuyệt vời.)* |
| Khoa | (Slack tiếng Việt) Em làm được lắm. Anh share glossary là chuyện nhỏ. |
| Hùng | (Slack tiếng Việt) Bao giờ Hizashi gọi vốn series A thì nhớ anh em nhé. |
| Đại | (Slack tiếng Việt) Vâng anh, em không quên đâu! |
| Đại | (16:50, Slack Thanh) <ruby>タン先輩<rt>タンせんぱい</rt></ruby>、<ruby>修正版<rt>しゅうせいばん</rt></ruby>を<ruby>再提出<rt>さいていしゅつ</rt></ruby>いたしました。ご<ruby>確認<rt>かくにん</rt></ruby>のほどよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Thanh, em đã nộp lại bản sửa. Mong anh kiểm tra.)* |
| Thanh | (Slack) <ruby>承<rt>うけたまわ</rt></ruby>りました。<ruby>確認<rt>かくにん</rt></ruby>して<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>に<ruby>顧客<rt>こきゃく</rt></ruby>へ<ruby>送付<rt>そうふ</rt></ruby>します。<br>*(Tôi nhận. Tôi check và thứ Hai gửi cho khách.)* |

---

## Tình huống 10 — WeWork Umeda · Thứ Bảy 11:00, quyết kiến trúc BGE-M3 với Tuấn

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh Tuấn, em đã đọc paper BGE-M3 và E5 cuối tuần trước. Em đề xuất chọn BGE-M3 cho v0.8. |
| Tuấn | (tiếng Việt) Lý do em? |
| Đại | (tiếng Việt) 3 điểm. 1) Hỗ trợ 100+ ngôn ngữ vs 100 của E5 — quan trọng vì roadmap năm 2 có Hàn + Trung. 2) Trên benchmark CrossLingualMRR retrieval cao hơn 5-8%. 3) Dimension 1024 — khớp schema pgvector hiện tại, không phải migrate bảng. |
| Tuấn | (tiếng Việt) Latency? E5 hiện 80ms. |
| Đại | (tiếng Việt) Em chưa test thực. Em sẽ benchmark tuần này, nếu BGE-M3 dưới 120ms thì OK. |
| Tuấn | (tiếng Việt) Deal. Em viết ADR (Architecture Decision Record) lưu Notion #arch-decisions. Em cần ghi: context, options, decision, consequences. |
| Đại | (tiếng Việt) OK anh. Em sẽ làm ADR-003. Hai cái trước là ADR-001 Flutter và ADR-002 FastAPI. |
| Aiko | (xen Nhật) <ruby>意思決定<rt>いしけってい</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>!<ruby>後<rt>あと</rt></ruby>で「<ruby>なぜ<rt>なぜ</rt></ruby>これを<ruby>選<rt>えら</rt></ruby>んだ?」と<ruby>聞<rt>き</rt></ruby>かれたとき<ruby>答<rt>こた</rt></ruby>えられる。<br>*(Ghi quyết định quan trọng! Sau này có ai hỏi "tại sao chọn cái này?" thì trả lời được.)* |

---

## Tình huống 11 — WeWork standup · Thứ Bảy 21:00, Đại báo cáo cả 2 vai

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>のスタンドアップを<ruby>始<rt>はじ</rt></ruby>めます。BrSE<ruby>側<rt>がわ</rt></ruby>:<ruby>初<rt>はじ</rt></ruby>めての<ruby>翻訳<rt>ほんやく</rt></ruby><ruby>業務<rt>ぎょうむ</rt></ruby>B+で<ruby>完了<rt>かんりょう</rt></ruby>、<ruby>修正版<rt>しゅうせいばん</rt></ruby>も<ruby>提出済<rt>ていしゅつず</rt></ruby>み。Hizashi<ruby>側<rt>がわ</rt></ruby>:BGE-M3<ruby>採用<rt>さいよう</rt></ruby><ruby>決定<rt>けってい</rt></ruby>、ADR-003 を<ruby>作成中<rt>さくせいちゅう</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:<ruby>家族<rt>かぞく</rt></ruby>とのオフ。ブロッカー:なし。<br>*(Standup. BrSE: task dịch đầu xong B+, bản sửa đã nộp. Hizashi: chốt BGE-M3, đang viết ADR-003. Mai: off với gia đình. Blocker: không.)* |
| Tuấn | (Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>:バックエンドリファクタ<ruby>完了<rt>かんりょう</rt></ruby>、TTSラグ<ruby>解決<rt>かいけつ</rt></ruby>。<ruby>明日<rt>あした</rt></ruby>:BGE-M3 マイグレーションスクリプト<ruby>準備<rt>じゅんび</rt></ruby>。ブロッカー:なし。<br>*(Hôm nay: refactor BE xong, TTS lag giải quyết. Mai: chuẩn bị migration script BGE-M3. Blocker: không.)* |
| Aiko | (Nhật) <ruby>本日<rt>ほんじつ</rt></ruby>:ダークモードトークンver.2<ruby>提出<rt>ていしゅつ</rt></ruby>、3<ruby>名<rt>めい</rt></ruby>ユーザーテスト。<ruby>明日<rt>あした</rt></ruby>:オンボーディングフローのアニメ。ブロッカー:なし。<br>*(Hôm nay: dark mode tokens v2 nộp, test 3 user. Mai: animation onboarding flow. Blocker: không.)* |
| Đại | OK、<ruby>15分<rt>じゅうごふん</rt></ruby>で<ruby>完了<rt>かんりょう</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(OK, 15 phút xong. Mọi người vất vả rồi.)* |

---

## Tình huống 12 — Công viên Senri-chuo · Chủ Nhật 10:00, cảnh tiếng Việt với Mai

*Đại không mở laptop. Hana 21 tháng đi 5 bước rồi ngồi xuống cỏ.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, tuần này anh thấy thế nào? Task đầu của anh B+ — em đọc Notion anh ghi rồi. |
| Đại | (tiếng Việt) Mệt nhưng vui em. Anh học được cái pattern: task xong → tự xin phản hồi chứ không đợi → có phản hồi thì sửa ngay → cảm ơn người góp ý. Anh Thanh dạy bằng câu "ご指摘ありがとうございます・修正いたします". |
| Mai | (tiếng Việt) "Goshiteki arigatou gozaimasu" — em nghe quen. Sếp em hồi tour bảo "ご指摘ありがとうございました" khi khách Nhật phàn nàn. |
| Đại | (tiếng Việt) Đúng rồi em. Đó là câu vạn năng khi nghe góp ý. Không cãi, không xin lỗi quá đà, chỉ cảm ơn và sửa. |
| Hana | (tiếng Việt) Bố! Hoa! Hoa! |
| Đại | (bế Hana, tiếng Việt) Ừ, hoa đẹp con. Hoa tulip màu đỏ. |
| Mai | (tiếng Việt) Anh dạy em một câu nữa được không? Tuần sau em sẽ dẫn 5 khách Nhật đi đền Sumiyoshi. Có khách hỏi điều gì mà em không biết trả lời, em nên nói gì? |
| Đại | (tiếng Việt) Em nói: "申し訳ございません、すぐ調べてお答えいたします" — "Em xin lỗi, em tra ngay rồi trả lời ạ". Khách Nhật không quan tâm em biết hết hay không, họ quan tâm em có thật thà và follow-up không. |
| Mai | (tiếng Việt, lặp lại) "Moushiwake gozaimasen, sugu shirabete o-kotae itashimasu". Em học rồi. |
| Đại | (tiếng Việt) Pro luôn. Mà em ơi, tháng 8 Obon mình về Việt Nam được không? Bố mẹ nhớ Hana. |
| Mai | (tiếng Việt) Vâng anh. Em hỏi anh Tuấn xem Hizashi có phép cho anh nghỉ 1 tuần không. |
| Đại | (tiếng Việt) Anh hỏi rồi. Anh Tuấn bảo Obon nguyên đội nghỉ — anh ấy cũng về Việt Nam thăm bố mẹ Hà Nội. |
| Mai | (tiếng Việt) Tốt quá. Em đặt vé luôn nhé. |
| Đại | (tiếng Việt) Vâng em. Hôm nay không laptop. Chỉ có em, Hana và hoa tulip. |
| Hana | (tiếng Việt) Hoa! Hoa! |

---

## Đọng lại chương 3

Task BrSE đầu tiên Đại đi qua đủ 1 vòng đời: **nhận giao việc + readback "〜という認識でよろしいでしょうか"** → **đọc spec + hỏi sempai bằng "〜の解釈でよろしいでしょうか"** → **email khách xin tài liệu thiếu với "恐れ入りますが・お送りいただけますでしょうか・翻訳の正確性を担保するために必要でございます"** → **nộp bằng "ご確認のほどよろしくお願いいたします"** → **nhận phản hồi và đáp "ご指摘ありがとうございます・本日中に修正いたします"** → **cảm ơn cohort "お力添えいただきありがとうございました"**. Mẫu câu hỏi gộp 3 việc thành 1 message cho leader (tiết kiệm thời gian sempai), pattern "câu hỏi tồn cuối Confluence" thay vì rải Slack rời rạc. Phía Hizashi học thêm cách viết ADR cho quyết định kỹ thuật. Cảnh tiếng Việt Chủ Nhật Đại dạy Mai câu **「申し訳ございません、すぐ調べてお答えいたします」** để dùng khi tour guide gặp khách hỏi khó.

> Từ vựng & mẫu câu chương này: 〜という認識でよろしいでしょうか・〜の解釈でよろしいでしょうか・恐れ入りますが・お送りいただけますでしょうか・翻訳の正確性を担保するために必要・ご確認のほどよろしくお願いいたします・ご指摘ありがとうございます・修正いたします・お力添えいただきありがとうございました・引き続きどうぞよろしくお願いいたします・申し訳ございません、すぐ調べてお答えいたします・稼働率・不良率・トレーサビリティ・工程管理・遡及更新・監査ログ・用語集・成果物・納期

## Bí quyết chương

- BrSE không "dịch từng chữ" — đọc cả đoạn JP → hiểu ý → viết lại VN tự nhiên cho dev, dev đọc clear thì ít bug
- Mọi task đều bắt đầu bằng readback "〜という認識でよろしいでしょうか" và kết thúc bằng "ご確認のほどお願いいたします"
- Hỏi sempai gộp 3 câu thành 1 message thay vì rải rác — sempai đỡ phải reply nhiều lần
- Khi xin tài liệu thiếu của khách Nhật, NÊU LÝ DO ("〜のために必要でございます") để khách không nghĩ mình lười
- Bị góp ý: KHÔNG cãi, KHÔNG xin lỗi quá — chỉ "ご指摘ありがとうございます・修正いたします" + nộp deadline tự đề xuất
- Pattern "câu hỏi tồn" cuối Confluence: đánh dấu mọi câu chưa chắc, trưởng nhóm review 1 lượt, không chờ rời rạc

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 連休 | れんきゅう | LIÊN HƯU | nghỉ liên tục, tuần lễ vàng |
| 単独業務 | たんどくぎょうむ | ĐƠN ĐỘC NGHIỆP VỤ | công việc làm một mình |
| 認識 | にんしき | NHẬN THỨC | nhận thức, cách hiểu |
| 解釈 | かいしゃく | GIẢI THÍCH | cách giải nghĩa |
| 不良率 | ふりょうりつ | BẤT LƯƠNG SUẤT | tỷ lệ phế phẩm |
| 工程管理 | こうていかんり | CÔNG TRÌNH QUẢN LÝ | quản lý công đoạn |
| 欠陥品 | けっかんひん | KHIẾM HÃM PHẨM | hàng lỗi |
| 系列 | けいれつ | HỆ LIỆT | chuỗi, hệ thống công ty |
| 要件 | ようけん | YẾU KIỆN | yêu cầu |
| 用語集 | ようごしゅう | DỤNG NGỮ TẬP | bảng thuật ngữ |
| 拝読 | はいどく | BÁI ĐỘC | đọc (khiêm nhường) |
| 記載 | きさい | KÝ TẢI | ghi, viết trong tài liệu |
| 監査ログ | かんさログ | GIÁM SÁT | log kiểm toán |
| 添付 | てんぷ | THÊM PHÓ | đính kèm |
| 正確性 | せいかくせい | CHÍNH XÁC TÍNH | độ chính xác |
| 担保 | たんぽ | ĐẢM BẢO | đảm bảo |
| 送付 | そうふ | TỐNG PHÓ | gửi (tài liệu) |
| 早速 | さっそく | TẢO TỐC | ngay lập tức |
| 反映 | はんえい | PHẢN ÁNH | phản ánh, áp dụng |
| 引き続き | ひきつづき | DẪN TỤC | tiếp tục |
| 工場 | こうじょう | CÔNG TRƯỜNG | nhà máy |
| 注釈 | ちゅうしゃく | CHÚ THÍCH | chú thích |
| 初稿 | しょこう | SƠ CẢO | bản nháp đầu |
| 遡及更新 | そきゅうこうしん | TRUY CẬP CANH TÂN | cập nhật hồi tố |
| 適切 | てきせつ | THÍCH THIẾT | thích hợp |
| 承りました | うけたまわりました | THỪA | tôi đã nhận (kính ngữ cao) |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 改善点 | かいぜんてん | CẢI THIỆN ĐIỂM | điểm cải thiện |
| 顧客 | こきゃく | CỐ KHÁCH | khách hàng |
| ご指摘 | ごしてき | CHỈ TRÍCH | sự chỉ điểm |
| 修正 | しゅうせい | TU CHÍNH | sửa, chỉnh sửa |
| 再提出 | さいていしゅつ | TÁI ĐỀ XUẤT | nộp lại |
| 励み | はげみ | LỆ | sự khích lệ |
| お力添え | おちからぞえ | LỰC THIÊM | sự hỗ trợ |
| 採用 | さいよう | THÁI DỤNG | áp dụng, chọn dùng |
| 意思決定 | いしけってい | Ý TƯ QUYẾT ĐỊNH | việc ra quyết định |
| 提出済み | ていしゅつずみ | ĐỀ XUẤT TẾ | đã nộp xong |
| 完了 | かんりょう | HOÀN LIỄU | hoàn tất |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000004, 800000025, NULL, 'markdown_book', 'T4. Sprint Hizashi v0.8 + chuẩn bị họp khách Tokyo solo', '# Sách kỹ sư cầu nối & khởi nghiệp · T4. Sprint Hizashi v0.8 + chuẩn bị họp khách Tokyo solo

> **Mục tiêu nhân vật:** 6/2030. Đại tuần 8 dual-track. Học các mẫu hội thoại tiếng Nhật của founder và BrSE: 1) chủ trì sprint planning bằng tiếng Nhật/Việt mix (今回のスプリントは); 2) phỏng vấn user trả phí lấy phản hồi (ご感想をお聞かせいただけますか); 3) gửi push notification song ngữ user; 4) báo cáo retrospective sprint (今回の振り返り); 5) chuẩn bị self-introduction trước khách Tokyo NTT (はじめてお目にかかります); 6) luyện script điện thoại lễ phép xác nhận lịch họp với khách (お電話差し上げました). Sprint 14 ngày (7 dev + 7 polish), paid user 30→78, MRR ¥76k. Tuần sau bay Tokyo họp khách solo lần đầu.

---

## Bối cảnh

6/2030. Hizashi tuần 8 sau setup WeWork. Đại weekday tối + cuối tuần dồn vào Hizashi. Sprint v0.8 đã ra mắt 5 tính năng: BGE-M3 embedding, dark mode, offline, SRS tuning, push notification. User trả phí tăng 30→78 trong 1 tuần (MRR ¥76.440). Tuấn full-time, Aiko part-time, Hana 22 tháng ổn nhà trẻ, Mai làm tour guide 3 buổi/tuần (¥120k). Bên BrSE Thanh A, trưởng nhóm Thanh giao dự án mới — khách Tokyo công ty con NTT, tuần sau Đại bay Tokyo họp solo lần đầu. Chương này tập trung vào ngôn ngữ vận hành sprint, lấy feedback user và keigo thượng hạng cho lần đầu họp khách solo.

---

## Tình huống 1 — WeWork Umeda 23F · Thứ Bảy 9:00, sprint planning v0.8

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>今回<rt>こんかい</rt></ruby>のスプリントプランニングを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>期間<rt>きかん</rt></ruby>は<ruby>14日間<rt>じゅうよっかかん</rt></ruby>、<ruby>前半<rt>ぜんはん</rt></ruby><ruby>7日<rt>なのか</rt></ruby><ruby>開発<rt>かいはつ</rt></ruby>、<ruby>後半<rt>こうはん</rt></ruby><ruby>7日<rt>なのか</rt></ruby>ポリッシュとQA。<br>*(Mở sprint planning. Kỳ 14 ngày, 7 ngày đầu dev, 7 ngày sau polish + QA.)* |
| Tuấn | (Nhật) <ruby>目標<rt>もくひょう</rt></ruby><ruby>5機能<rt>ごきのう</rt></ruby><ruby>提案<rt>ていあん</rt></ruby>:1)BGE-M3 マイグレーション 2)ダークモード 3)オフラインモード 4)SRS<ruby>調整<rt>ちょうせい</rt></ruby> 5)プッシュ<ruby>通知<rt>つうち</rt></ruby>。<br>*(Đề xuất 5 mục tiêu: 1) BGE-M3 migration; 2) dark mode; 3) offline; 4) SRS tuning; 5) push notification.)* |
| Aiko | (Nhật) UI<ruby>担当<rt>たんとう</rt></ruby>:design tokens ダークモード、オフラインインジケーター、プッシュ<ruby>通知<rt>つうち</rt></ruby>のアイコン。<br>*(Tôi phụ trách UI: design tokens dark mode, indicator offline, icon push notification.)* |
| Đại | (tiếng Việt) Em chia: em làm migration BGE-M3 + SRS tuning. Tuấn full-time backend và push notif. Aiko UI hết. |
| Tuấn | (tiếng Việt) OK. Risk lớn nhất: BGE-M3 latency. Em đã benchmark chưa? |
| Đại | (tiếng Việt) Em đo trên staging hôm thứ Năm: 95ms vs E5 80ms. +15ms nhưng retrieval +6.5%. Trong ADR-003 em đã argue rồi. |
| Tuấn | (tiếng Việt) OK chấp nhận. Hạn ship: 20/6 thứ Sáu 23:59. Aiko OK timeline không? |
| Aiko | (Nhật) <ruby>余裕<rt>よゆう</rt></ruby>あり、3<ruby>日以内<rt>みっかいない</rt></ruby>でダークモード<ruby>完了<rt>かんりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>*(Dư thời gian, dark mode dự kiến trong 3 ngày.)* |

---

## Tình huống 2 — Bàn họp · Thứ Bảy 14:00, phỏng vấn 5 user trả phí qua Google Meet

*User #1: Hằng, 27t, du học sinh đang ôn N2 ở Fukuoka.*

| Vai | Lời thoại |
|---|---|
| Đại | Hằng ơi, cảm ơn em đã dành 30 phút. Hizashi v0.7 em dùng được mấy tuần rồi? |
| Hằng | (tiếng Việt qua Meet) 6 tuần anh. Em ôn N2 tháng 7 sắp thi. |
| Đại | Em cho anh xin phản hồi 3 điểm tốt và 3 điểm cần cải thiện được không? |
| Hằng | Tốt: 1) Phát âm chuẩn (vợ anh là Mai nói luôn 😄); 2) SRS giúp em không quên từ; 3) Hỗ trợ kanji đầy đủ furigana. Cải thiện: 1) Dark mode đi! Tối em học, mỏi mắt; 2) Offline trên tàu Shinkansen Tokyo-Fukuoka không có wifi; 3) Push notif nhắc 18:00 hằng ngày. |
| Đại | (ghi Notion) Cảm ơn em! Cả 3 điểm em nói trùng với 4/5 user khác đã phỏng vấn. Sprint v0.8 sẽ ship cả 3. |
| Hằng | (tiếng Việt) Trời ơi! Cảm ơn anh! Em sẽ giới thiệu thêm bạn. |
| Đại | Em ơi cho anh hỏi: nếu Hizashi tăng giá lên ¥1,480/tháng cho gói có dark mode + offline + push, em có sẵn sàng trả không? |
| Hằng | Em sẽ trả. Em đang trả Anki Pro ¥980 mà tính năng còn ít hơn. |
| Đại | OK, ghi nhận. Cảm ơn em rất nhiều. |

---

## Tình huống 3 — Bàn họp · Thứ Bảy 16:00, tổng hợp phản hồi với team

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị, em đã phỏng vấn 5 user trả phí. Tổng hợp:<br>1. Muốn dark mode: 4/5<br>2. Offline trên tàu: 5/5<br>3. Push notif 18:00: 3/5<br>4. iPad mini optimize: 1/5 (Mai vợ em)<br>5. Mở rộng học tiếng Hàn: 1/5 (user người Hàn) |
| Aiko | (Nhật) iPad mini<ruby>対応<rt>たいおう</rt></ruby>はうちのv0.8でやろう。ハナちゃんもiPad mini で<ruby>使<rt>つか</rt></ruby>うから。<br>*(iPad mini support v0.8 mình làm luôn nhé. Cả Hana cũng dùng iPad mini.)* |
| Tuấn | (tiếng Việt) Mở rộng Hàn để qua năm 2. v1.0 tập trung VN-JP. Em đồng ý không? |
| Đại | (tiếng Việt) Đồng ý. Em sẽ trả lời user Hàn bằng template: "Cảm ơn anh đã đề xuất, lộ trình năm 2 chúng tôi sẽ mở rộng đa ngôn ngữ. Anh đăng ký newsletter để nhận update". |
| Tuấn | (tiếng Việt) Em viết template song ngữ luôn — JP cho user Nhật, EN cho user quốc tế. |
| Đại | (tiếng Việt) OK. Tối nay em viết. |

---

## Tình huống 4 — Bàn họp · Thứ Hai 18/6 18:30, mid-week update + chuẩn bị Tokyo

| Vai | Lời thoại |
|---|---|
| Đại | (Slack standup, tiếng Việt) Anh chị, update BrSE: anh Thanh giao dự án mới khách Tokyo NTT Communications. Tuần sau em bay Tokyo họp solo. Lần đầu em họp khách solo. |
| Tuấn | (Slack tiếng Việt) Wow! Solo? Em đã có kịch bản và keigo chưa? |
| Đại | (Slack) Sếp Tanaka cho em mẫu agenda và template tự giới thiệu. Em luyện 3 ngày. |
| Aiko | (Slack Nhật) <ruby>頑張<rt>がんば</rt></ruby>って!<ruby>初<rt>はじ</rt></ruby>めてのクライアントミーティングって<ruby>緊張<rt>きんちょう</rt></ruby>するよね。<br>*(Cố lên! Họp khách lần đầu căng nhỉ.)* |
| Tuấn | (Slack tiếng Việt) Tối thứ Năm em luyện trước anh + Aiko nhé. Anh role-play khách hàng NTT. |
| Đại | (Slack) Vâng anh! Quý vô cùng. |

---

## Tình huống 5 — Bàn họp Hizashi · Thứ Năm 21:00, rehearsal họp khách NTT (Tuấn đóng vai)

*Tuấn ngồi nghiêm, mặc áo sơ-mi, đeo cà-vạt đỏ. Aiko quan sát ghi phản hồi.*

| Vai | Lời thoại |
|---|---|
| Tuấn (đóng vai PM NTT) | (Nhật, giọng khách) <ruby>清華<rt>タンハー</rt></ruby>ソリューションズの<ruby>方<rt>かた</rt></ruby>ですね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Anh bên Thanh A Solutions à. Tôi đã đợi.)* |
| Đại | (cúi 30 độ) <ruby>NTT<rt>エヌティーティー</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきまして<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズのグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>のBrSEとしてご<ruby>挨拶<rt>あいさつ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>いました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(NTT, hôm nay cảm ơn các anh đã dành thời gian. Em là Nguyễn Đại bên Thanh A Solutions. Hôm nay em đến chào với tư cách BrSE phụ trách. Mong các anh giúp đỡ.)* |
| Tuấn | (đóng PM NTT) <ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダをご<ruby>説明<rt>せつめい</rt></ruby>いただけますか。<br>*(Anh giới thiệu agenda hôm nay được không?)* |
| Đại | (đưa agenda in trên A4 hai tay) はい、<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダは<ruby>3点<rt>さんてん</rt></ruby>でございます。<ruby>1<rt>いち</rt></ruby>、<ruby>弊社<rt>へいしゃ</rt></ruby>と<ruby>私自身<rt>わたしじしん</rt></ruby>のご<ruby>紹介<rt>しょうかい</rt></ruby>に<ruby>15分<rt>じゅうごふん</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>御社<rt>おんしゃ</rt></ruby>のプロジェクト<ruby>概要<rt>がいよう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>に<ruby>30分<rt>さんじゅっぷん</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>今後<rt>こんご</rt></ruby>の<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>のすり<ruby>合<rt>あ</rt></ruby>わせに<ruby>15分<rt>じゅうごふん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>1時間<rt>いちじかん</rt></ruby>でございます。<br>*(Vâng, agenda 3 mục: 1) Giới thiệu công ty + bản thân 15 phút; 2) Xác nhận overview dự án bên anh 30 phút; 3) Sắp xếp cách triển khai sắp tới 15 phút. Tổng 1 tiếng.)* |
| Tuấn | (cười, drop vai) STOP. Em làm tốt phần mở. Nhưng anh nhận xét: từ "弊社" (công ty mình tự xưng khiêm tốn) — em phát âm hơi cứng. Phải nhẹ và chậm hơn. |
| Aiko | (Nhật) ダイくん、<ruby>名刺交換<rt>めいしこうかん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしよう。<ruby>両手<rt>りょうて</rt></ruby>で<ruby>渡<rt>わた</rt></ruby>して、<ruby>両手<rt>りょうて</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る。<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>った<ruby>名刺<rt>めいし</rt></ruby>はテーブルに<ruby>並<rt>なら</rt></ruby>べる。<br>*(Đại-kun, luyện trao danh thiếp. Đưa bằng hai tay, nhận bằng hai tay. Danh thiếp nhận về xếp lên bàn.)* |
| Đại | (cầm danh thiếp giả) こちら、グエン・ダイの<ruby>名刺<rt>めいし</rt></ruby>でございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Đây là danh thiếp của em. Mong anh giúp đỡ.)* |
| Tuấn | (đóng vai khách, nhận) ちょうだいいたします。<br>*(Tôi xin nhận.)* |
| Aiko | (Nhật) <ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>った<ruby>後<rt>あと</rt></ruby>、<ruby>名前<rt>なまえ</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Sau khi nhận, đọc tên to lên xác nhận.)* |
| Đại | <ruby>佐々木<rt>ささき</rt></ruby><ruby>様<rt>さま</rt></ruby>でいらっしゃいますね。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh là Sasaki đúng không. Hôm nay mong anh giúp đỡ.)* |
| Tuấn | (drop vai, tiếng Việt) Chuẩn. Em đã đọc to tên — khách Nhật mê cái đó, chứng tỏ em quan tâm. |

---

## Tình huống 6 — Bàn họp · Thứ Năm 21:30, luyện gọi điện xác nhận lịch trước họp

| Vai | Lời thoại |
|---|---|
| Tuấn | (tiếng Việt) Bí kíp: 1 ngày trước họp, gọi điện trợ lý PM khách hàng xác nhận. Khách Nhật rất quý. |
| Đại | (giả gọi điện) お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズのグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>明日<rt>あした</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby>のお<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせの<ruby>件<rt>けん</rt></ruby>で、お<ruby>電話差<rt>でんわさ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げました。<br>*(Cảm ơn anh chị đã quan tâm. Em là Nguyễn Đại bên Thanh A Solutions. Em gọi điện về việc cuộc họp 14h ngày mai.)* |
| Tuấn | (đóng trợ lý NTT, JP) はい、<ruby>承<rt>うけたまわ</rt></ruby>っております。<ruby>会議室<rt>かいぎしつ</rt></ruby>は<ruby>15階<rt>じゅうごかい</rt></ruby>「ひかり」でございます。<br>*(Vâng, tôi đã được biết. Phòng họp tầng 15 phòng "Hikari".)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>15階<rt>じゅうごかい</rt></ruby>「ひかり」<ruby>会議室<rt>かいぎしつ</rt></ruby>でございますね。<ruby>受付<rt>うけつけ</rt></ruby>には<ruby>何時頃<rt>なんじごろ</rt></ruby><ruby>到着<rt>とうちゃく</rt></ruby>すればよろしいでしょうか。<br>*(Em đã hiểu. Tầng 15 phòng Hikari. Em nên đến lễ tân lúc mấy giờ ạ?)* |
| Tuấn | (đóng) <ruby>10分前<rt>じゅっぷんまえ</rt></ruby>にお<ruby>越<rt>こ</rt></ruby>しいただければと<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Anh đến trước 10 phút thì tốt ạ.)* |
| Đại | <ruby>13時50分<rt>じゅうさんじごじゅっぷん</rt></ruby>に<ruby>受付<rt>うけつけ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。<ruby>本日<rt>ほんじつ</rt></ruby>はご<ruby>確認<rt>かくにん</rt></ruby>のお<ruby>電話<rt>でんわ</rt></ruby>でございました。お<ruby>忙<rt>いそが</rt></ruby>しいところ<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<br>*(13h50 em sẽ có mặt ở lễ tân. Hôm nay đây là cuộc gọi xác nhận. Xin lỗi đã làm phiền anh lúc bận.)* |
| Tuấn | (drop vai, tiếng Việt) 10 điểm. "お電話差し上げました" và "お忙しいところ失礼いたしました" — hai câu mở-đóng cuộc gọi chuẩn. Em ghi vào sổ. |

---

## Tình huống 7 — WeWork · Thứ Sáu 20/6 23:00, release v0.8

*Tuấn ngồi terminal đẩy build. Aiko theo dõi metric. Đại viết notification song ngữ.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (Nhật) TestFlightにプッシュ<ruby>完了<rt>かんりょう</rt></ruby>。AppleのレビューはAPPROVED。Android Play Store はレビュー<ruby>待<rt>ま</rt></ruby>ち。<br>*(Đã push TestFlight. Apple APPROVED. Android Play Store đang chờ.)* |
| Đại | (Nhật) プッシュ<ruby>通知<rt>つうち</rt></ruby>の<ruby>原稿<rt>げんこう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<ruby>2言語<rt>にげんご</rt></ruby>です。<br>*(Check giúp tôi nội dung push notification. Hai ngôn ngữ.)* |
| Đại | (đọc) <ruby>日本語<rt>にほんご</rt></ruby><ruby>版<rt>ばん</rt></ruby>:「Hizashi v0.8 <ruby>本日<rt>ほんじつ</rt></ruby><ruby>公開<rt>こうかい</rt></ruby>!ダークモード・オフライン・SRS<ruby>改善<rt>かいぜん</rt></ruby>。アプリを<ruby>開<rt>ひら</rt></ruby>いて<ruby>更新<rt>こうしん</rt></ruby>してください。」<br>*(Bản tiếng Nhật: "Hizashi v0.8 ra mắt hôm nay! Dark mode, offline, SRS cải thiện. Mở app để update.")* |
| Đại | (đọc) Bản tiếng Việt: "Hizashi v0.8 ra mắt! Dark mode + offline + SRS tinh chỉnh. Mở app để cập nhật nhé." |
| Aiko | (Nhật) <ruby>絵文字<rt>えもじ</rt></ruby>を<ruby>1個<rt>いっこ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>して。<ruby>太陽<rt>たいよう</rt></ruby>か<ruby>朝日<rt>あさひ</rt></ruby>でブランド<ruby>感<rt>かん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>そう。<br>*(Thêm 1 emoji nhé. Mặt trời hoặc bình minh để show brand.)* |
| Đại | OK、<ruby>太陽<rt>たいよう</rt></ruby>マークを<ruby>先頭<rt>せんとう</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>。<br>*(OK, thêm icon mặt trời ở đầu.)* |
| Tuấn | (Nhật) <ruby>150名<rt>ひゃくごじゅうめい</rt></ruby>のベータユーザーに<ruby>送信<rt>そうしん</rt></ruby>します。<br>*(Gửi cho 150 user beta.)* |
| Đại | (1 tiếng sau) <ruby>1時間後<rt>いちじかんご</rt></ruby><ruby>結果<rt>けっか</rt></ruby>:<ruby>87名<rt>はちじゅうななめい</rt></ruby>がアプリを<ruby>開<rt>ひら</rt></ruby>きました。エンゲージメント58%。<br>*(Sau 1h: 87 user mở app. Engagement 58%.)* |
| Aiko | (Nhật) ベンチマークよりも<ruby>高<rt>たか</rt></ruby>いね。<ruby>業界平均<rt>ぎょうかいへいきん</rt></ruby>は20-30%。<br>*(Cao hơn benchmark đấy. Trung bình ngành 20-30%.)* |

---

## Tình huống 8 — WeWork · Chủ Nhật 22/6 11:00, retrospective sprint v0.8

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>今回<rt>こんかい</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りを<ruby>始<rt>はじ</rt></ruby>めます。Keep / Problem / Try の<ruby>3<rt>みっ</rt></ruby>つでいきましょう。<br>*(Mở retrospective. 3 cột Keep / Problem / Try.)* |
| Aiko | (Nhật) Keep:design tokens システムが<ruby>速<rt>はや</rt></ruby>かった。Problem:ダークモードの<ruby>初期実装<rt>しょきじっそう</rt></ruby>で<ruby>3<rt>みっ</rt></ruby>つのコンポーネントの<ruby>色<rt>いろ</rt></ruby>がハードコード<ruby>残<rt>のこ</rt></ruby>っていた。Try:<ruby>次回<rt>じかい</rt></ruby>はリント<ruby>追加<rt>ついか</rt></ruby>でハードコード<ruby>検出<rt>けんしゅつ</rt></ruby>。<br>*(Keep: hệ design tokens nhanh. Problem: dark mode ban đầu 3 component vẫn hardcode màu. Try: lần sau thêm lint để detect hardcode.)* |
| Tuấn | (tiếng Việt) Keep: BGE-M3 migration không downtime. Problem: SRS bug critical iOS reset state lúc background → 4 tiếng fix. Try: thêm integration test cho background lifecycle. |
| Đại | (tiếng Việt) Keep: phỏng vấn 5 user trước sprint cho mình rõ ưu tiên — 100% phản hồi đều ship. Problem: em đẩy cho mình hơi nhiều (BGE-M3 + SRS) — khi anh Thanh giao thêm việc BrSE là em quá tải. Try: sprint sau em chỉ nhận 1 feature lớn. |
| Tuấn | (tiếng Việt) Chính xác. Em là CEO em không có quyền cháy. |
| Aiko | (Nhật) <ruby>大事<rt>だいじ</rt></ruby>な<ruby>気付<rt>きづ</rt></ruby>き。<ruby>記録<rt>きろく</rt></ruby>しておきます。<br>*(Phát hiện quan trọng. Tôi ghi lại.)* |
| Đại | Numbers:paid 30→78、MRR ¥29k→¥76k。<ruby>成長率<rt>せいちょうりつ</rt></ruby>160%。<br>*(Paid 30→78, MRR ¥29k→¥76k. Tăng 160%.)* |
| Tuấn | (Nhật) <ruby>順調<rt>じゅんちょう</rt></ruby>!v1.0までにpaid 500を<ruby>目指<rt>めざ</rt></ruby>そう。<br>*(Suôn sẻ! Đến v1.0 nhắm paid 500.)* |

---

## Tình huống 9 — Bàn họp · Chủ Nhật 13:00, ăn cơm Aiko mời

*Aiko mang onigiri tự nắm và súp miso.*

| Vai | Lời thoại |
|---|---|
| Aiko | (Nhật) <ruby>今日<rt>きょう</rt></ruby>はお<ruby>母<rt>かあ</rt></ruby>さんが<ruby>京都<rt>きょうと</rt></ruby>から<ruby>来<rt>き</rt></ruby>てて、おにぎりを<ruby>作<rt>つく</rt></ruby>ってくれたの。<ruby>梅干<rt>うめぼ</rt></ruby>しと<ruby>鮭<rt>さけ</rt></ruby>。<br>*(Hôm nay mẹ mình từ Kyoto sang, nắm onigiri. Mơ muối và cá hồi.)* |
| Đại | <ruby>美味<rt>おい</rt></ruby>しそう!いただきます。<br>*(Trông ngon quá! Mình ăn đây.)* |
| Tuấn | (Nhật) <ruby>美味<rt>おい</rt></ruby>しい!<ruby>梅干<rt>うめぼ</rt></ruby>しのおにぎり、<ruby>久<rt>ひさ</rt></ruby>しぶり。<br>*(Ngon! Mơ muối onigiri lâu rồi mới ăn.)* |
| Đại | (Nhật) アイコさんのお<ruby>母<rt>かあ</rt></ruby>さんに<ruby>感謝<rt>かんしゃ</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Cho mình gửi lời cảm ơn mẹ Aiko.)* |
| Aiko | (Nhật) <ruby>母<rt>はは</rt></ruby>はダイくんとトゥアンくんに<ruby>会<rt>あ</rt></ruby>いたいって。<ruby>今度<rt>こんど</rt></ruby><ruby>京都<rt>きょうと</rt></ruby>に<ruby>遊<rt>あそ</rt></ruby>びに<ruby>来<rt>き</rt></ruby>てって。<br>*(Mẹ mình muốn gặp Đại với Tuấn. Bảo bao giờ ghé Kyoto chơi.)* |
| Đại | <ruby>是非<rt>ぜひ</rt></ruby>!<ruby>家族<rt>かぞく</rt></ruby><ruby>連<rt>つ</rt></ruby>れて<ruby>夏<rt>なつ</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。Maiとハナも<ruby>連<rt>つ</rt></ruby>れていきますね。<br>*(Nhất định! Mùa hè mình dẫn cả nhà đến. Mai và Hana cũng đi.)* |

---

## Tình huống 10 — Khách sạn business Tokyo · Thứ Hai 23/6 21:00, gọi Mai trước họp solo

*Đại đã bay Tokyo, ở khách sạn business gần ga Shinagawa. Mai ở Osaka cho Hana ăn tối xong.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt qua FaceTime) Em ơi, anh đến Tokyo rồi. Khách sạn ổn. Mai 14h họp NTT. |
| Mai | (tiếng Việt) Hana đang ngủ. Em đặt iPad mở video con cá voi cho con xem 20 phút là gục. |
| Đại | (tiếng Việt) Em chu đáo. Anh đang ôn lại script lần cuối. |
| Mai | (tiếng Việt) Anh kể em nghe đi. Em làm khán giả. |
| Đại | (tiếng Việt) OK. Mai vào phòng họp, đối phương 3 người: PM Sasaki-san, tech lead Yamada-san, sales Mori-san. Anh sẽ chào: "NTT様、本日はお時間をいただきまして誠にありがとうございます" rồi đưa danh thiếp bằng hai tay. |
| Mai | (tiếng Việt) "Honjitsu wa ojikan o itadakimashite makoto ni arigatou gozaimasu" — đẹp. |
| Đại | (tiếng Việt) Rồi mở agenda 3 mục. Phần 1 anh giới thiệu công ty và bản thân — đã viết script, không vấp. Phần 2 khách giới thiệu dự án, anh ghi note + hỏi lại bằng "確認のため復唱させていただきます". Phần 3 là deliverables and timeline. |
| Mai | (tiếng Việt) Anh chuẩn bị kỹ ghê. Em yên tâm rồi. |
| Đại | (tiếng Việt) Anh lo nhất phần Q&A — khách hỏi technical depth mình không biết thì sao. |
| Mai | (tiếng Việt) Anh có nhớ câu em hỏi anh hôm Chủ Nhật trước không? Anh dạy em câu "申し訳ございません、すぐ調べてお答えいたします". Câu đó dùng được mà. |
| Đại | (tiếng Việt, cười) Trời ơi, em nhớ giúp anh. Đúng rồi, anh sẽ dùng câu đó. Thật thà + follow-up, không bịa. |
| Mai | (tiếng Việt) Anh ngủ sớm đi nhé. Em hôn anh qua màn hình. |
| Đại | (tiếng Việt) Cảm ơn em. Mai anh xong họp gọi em ngay. Hôn Hana giúp anh. |

---

## Tình huống 11 — Phòng họp NTT tầng 15 "Hikari" · Thứ Ba 24/6 14:00, họp khách solo lần đầu

| Vai | Lời thoại |
|---|---|
| Sasaki (PM NTT, 40t) | <ruby>清華<rt>タンハー</rt></ruby>ソリューションズのグエン<ruby>様<rt>さま</rt></ruby>でいらっしゃいますね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。<br>*(Anh Đại bên Thanh A phải không. Chúng tôi đã đợi.)* |
| Đại | (cúi 30 độ) <ruby>NTT<rt>エヌティーティー</rt></ruby>コミュニケーションズ<ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきまして<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズBrSEのグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(NTT Communications, hôm nay cảm ơn anh chị dành thời gian. Em là Nguyễn Đại, BrSE bên Thanh A Solutions. Mong các anh chị giúp đỡ.)* |
| Sasaki | (đưa danh thiếp hai tay) <ruby>佐々木<rt>ささき</rt></ruby>でございます。<br>*(Tôi là Sasaki.)* |
| Đại | (nhận hai tay, đọc to) <ruby>佐々木<rt>ささき</rt></ruby>プロジェクトマネージャーでいらっしゃいますね。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Sasaki, PM. Mong anh giúp đỡ.)* |
| Yamada (tech lead) | <ruby>山田<rt>やまだ</rt></ruby>です。<br>*(Tôi là Yamada.)* |
| Đại | <ruby>山田<rt>やまだ</rt></ruby>テックリードでいらっしゃいますね。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Anh Yamada, tech lead. Hôm nay mong anh giúp đỡ.)* |
| Sasaki | では、<ruby>早速<rt>さっそく</rt></ruby>ですが<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダをご<ruby>説明<rt>せつめい</rt></ruby>いただけますか。<br>*(Vậy thì xin anh giới thiệu agenda hôm nay.)* |
| Đại | (đưa A4 hai tay) はい、<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダは<ruby>3点<rt>さんてん</rt></ruby>でございます。<ruby>1<rt>いち</rt></ruby>、<ruby>弊社<rt>へいしゃ</rt></ruby>と<ruby>私自身<rt>わたしじしん</rt></ruby>のご<ruby>紹介<rt>しょうかい</rt></ruby>に<ruby>15分<rt>じゅうごふん</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>御社<rt>おんしゃ</rt></ruby>プロジェクト「<ruby>社内<rt>しゃない</rt></ruby><ruby>勤怠管理<rt>きんたいかんり</rt></ruby>システム<ruby>刷新<rt>さっしん</rt></ruby>」の<ruby>概要<rt>がいよう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>に<ruby>30分<rt>さんじゅっぷん</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>今後<rt>こんご</rt></ruby>の<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>のすり<ruby>合<rt>あ</rt></ruby>わせに<ruby>15分<rt>じゅうごふん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>1時間<rt>いちじかん</rt></ruby>でございます。<br>*(Vâng, agenda 3 mục: 1) Giới thiệu công ty + bản thân 15 phút; 2) Xác nhận overview dự án "Đổi mới hệ thống chấm công nội bộ" 30 phút; 3) Sắp xếp cách triển khai 15 phút. Tổng 1 tiếng.)* |
| Sasaki | <ruby>結構<rt>けっこう</rt></ruby>です。<br>*(Tốt.)* |

---

## Tình huống 12 — Phòng họp NTT · 14:40, gặp câu hỏi technical chưa biết

*Yamada hỏi về integration với LDAP server NTT đang dùng.*

| Vai | Lời thoại |
|---|---|
| Yamada | グエン<ruby>様<rt>さま</rt></ruby>、<ruby>弊社<rt>へいしゃ</rt></ruby>のLDAPサーバーはActive Directoryと<ruby>連携<rt>れんけい</rt></ruby>しておりますが、<ruby>御社<rt>おんしゃ</rt></ruby>の<ruby>提案<rt>ていあん</rt></ruby>システムはADFSと<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>連携<rt>れんけい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Đại, LDAP server bên chúng tôi liên kết với Active Directory. Hệ thống đề xuất bên anh có liên kết trực tiếp với ADFS được không?)* |
| Đại | (ngắt một nhịp, không cố đoán) <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません、ADFSとの<ruby>直接連携<rt>ちょくせつれんけい</rt></ruby>の<ruby>可否<rt>かひ</rt></ruby>につきましては、<ruby>社内<rt>しゃない</rt></ruby>のテックリードに<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>明日中<rt>みょうにちちゅう</rt></ruby>にメールにてご<ruby>回答<rt>かいとう</rt></ruby>させていただいてもよろしいでしょうか。<br>*(Em xin lỗi, về việc có liên kết trực tiếp với ADFS được không, em xin xác nhận với tech lead công ty rồi trả lời anh bằng email trong ngày mai có được không ạ?)* |
| Yamada | もちろんです。<ruby>正直<rt>しょうじき</rt></ruby>に「<ruby>確認<rt>かくにん</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>っていただける<ruby>方<rt>かた</rt></ruby>のほうが、<ruby>適当<rt>てきとう</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えられるより<ruby>信頼<rt>しんらい</rt></ruby>できます。<br>*(Tất nhiên. Người thật thà nói "em sẽ xác nhận" đáng tin hơn người trả lời bừa.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>明日<rt>あした</rt></ruby><ruby>正午<rt>しょうご</rt></ruby>までにメールいたします。<br>*(Em cảm ơn anh. Trưa mai em gửi email.)* |
| Sasaki | (gật đầu) よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Mong anh.)* |

---

## Tình huống 13 — Phòng họp NTT · 15:00, chốt next step và chào về

| Vai | Lời thoại |
|---|---|
| Sasaki | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきましてありがとうございました。<ruby>次回<rt>じかい</rt></ruby>は<ruby>7月<rt>しちがつ</rt></ruby><ruby>2週目<rt>にしゅうめ</rt></ruby>に<ruby>要件定義<rt>ようけんていぎ</rt></ruby>のすり<ruby>合<rt>あ</rt></ruby>わせをお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Hôm nay cảm ơn anh đã dành thời gian. Lần sau tuần thứ 2 tháng 7 mình họp về requirements definition nhé.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>議事録<rt>ぎじろく</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>正午<rt>しょうご</rt></ruby>までに、ADFS<ruby>連携<rt>れんけい</rt></ruby>の<ruby>回答<rt>かいとう</rt></ruby><ruby>付<rt>つ</rt></ruby>きでお<ruby>送<rt>おく</rt></ruby>りいたします。<ruby>次回<rt>じかい</rt></ruby><ruby>日程<rt>にってい</rt></ruby>は<ruby>別途<rt>べっと</rt></ruby>メールにて<ruby>3<rt>みっ</rt></ruby>つの<ruby>候補日<rt>こうほび</rt></ruby>を<ruby>提示<rt>ていじ</rt></ruby>させていただきます。<br>*(Em đã hiểu. Biên bản hôm nay em sẽ gửi trước trưa mai kèm câu trả lời ADFS. Lịch họp lần sau em sẽ đề xuất 3 mốc qua email.)* |
| Sasaki | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>段取<rt>だんど</rt></ruby>り、ありがとうございます。<br>*(Anh sắp xếp tuyệt vời, cảm ơn.)* |
| Đại | (cúi 30 độ) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Hôm nay em xin chân thành cảm ơn. Tiếp tục mong các anh giúp đỡ. Em xin phép.)* |

---

## Tình huống 14 — Ga Shinagawa · Thứ Ba 16:00, gọi Mai báo tin

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt qua điện thoại, đứng ở sân ga) Em ơi! Anh xong rồi. Họp tốt. |
| Mai | (tiếng Việt) Trời ơi mừng quá. Sao em? Có câu nào không biết không? |
| Đại | (tiếng Việt) Có em, đúng câu em dự đoán. Tech lead Yamada hỏi về ADFS integration anh không biết. Anh dùng câu em nhắc: "申し訳ございません、すぐ確認の上、明日中にメールにてご回答させていただいてもよろしいでしょうか". Khách Yamada khen luôn — bảo "thật thà thì đáng tin hơn trả lời bừa". |
| Mai | (tiếng Việt) Trời ơi! Câu em dạy anh á? Em phải được giảm 10% cổ phần Hizashi mới đúng. |
| Đại | (tiếng Việt, cười lớn) Em được hết 50% rồi mà. Anh đang về ga Shin-Osaka. Chuyến Nozomi 18:00, đến nhà 19:30. |
| Mai | (tiếng Việt) Em làm cơm gà gừng đón anh. Hana đang chỉ điện thoại nói "Bố! Bố!". |
| Đại | (tiếng Việt) Cho anh nói chuyện với Hana. |
| Hana | (tiếng Việt qua điện thoại) Bố! Về! |
| Đại | (tiếng Việt) Bố về con à. Bố mua bánh dorayaki Tokyo cho con đấy. |
| Hana | (tiếng Việt) Bánh! Bánh! |
| Mai | (tiếng Việt) Mai 21:00 anh có standup Hizashi báo cáo Tokyo cho Tuấn + Aiko nữa nhỉ? |
| Đại | (tiếng Việt) Có em. Anh sẽ kể câu chuyện ADFS — bài học cho Tuấn sau này họp khách solo lần đầu. |
| Mai | (tiếng Việt) Anh giỏi rồi. Đi tàu cẩn thận nhé. |
| Đại | (tiếng Việt) Cảm ơn em đã làm khán giả tối qua. Không có em là anh không đủ tự tin. |

---

## Đọng lại chương 4

Sprint v0.8 thành công 5 tính năng (BGE-M3, dark mode, offline, SRS, push notif) đưa paid user 30→78, MRR ¥76k. Quan trọng hơn, Đại học được nhịp **sprint planning + user interview + release + retrospective Keep/Problem/Try** bằng tiếng Nhật mix tiếng Việt với Tuấn-Aiko. Lần đầu họp khách Tokyo NTT solo, Đại trải qua nguyên một vòng: **「本日はお時間をいただきまして誠にありがとうございます」** (mở), **「〜でいらっしゃいますね」** (đọc tên trên danh thiếp), **「アジェンダを3点でご説明させていただきます」** (trình bày agenda), **「確認のため復唱させていただきます」** (readback), **「申し訳ございません、確認の上、明日中にメールにてご回答させていただいてもよろしいでしょうか」** (không biết thì xin về tra), **「次回日程は別途メールにて3つの候補日を提示させていただきます」** (chốt next step + đề xuất 3 mốc lịch họp). Bài học lớn nhất: khách Nhật quý người thật thà nói "em xác nhận lại" hơn người trả lời bừa. Cảnh tiếng Việt cuối chương Mai trở thành "khán giả luyện script" của Đại tối hôm trước — chính câu Đại dạy Mai ở chương 3 ("申し訳ございません、すぐ調べてお答えいたします") quay lại cứu Đại trong họp solo Tokyo.

> Từ vựng & mẫu câu chương này: スプリントプランニング・振り返り・Keep/Problem/Try・本日はお時間をいただきまして誠にありがとうございます・〜でいらっしゃいますね・アジェンダを〜点でご説明させていただきます・確認のため復唱させていただきます・申し訳ございません、確認の上、明日中にメールにてご回答させていただいてもよろしいでしょうか・次回日程は別途メールにて3つの候補日を提示させていただきます・引き続きどうぞよろしくお願いいたします・お電話差し上げました・お忙しいところ失礼いたしました・ご感想をお聞かせいただけますか・名刺交換・ちょうだいいたします・ダークモード・オフライン・SRS・プッシュ通知・MRR

## Bí quyết chương

- Họp khách Nhật lần đầu: agenda 3 mục in A4 đưa hai tay — khách Nhật rất quý sự ngăn nắp này
- Nhận danh thiếp đọc TO tên + chức vụ: "〜でいらっしゃいますね" — chứng minh mình quan tâm
- Gặp câu hỏi technical không biết: ngắt một nhịp, dùng "申し訳ございません、確認の上、〜までにご回答させていただいてもよろしいでしょうか" — khách quý thật thà hơn bịa
- Cuộc gọi xác nhận lịch họp trước 1 ngày: "お電話差し上げました" mở, "お忙しいところ失礼いたしました" đóng — sai 1 trong 2 là mất điểm
- Retrospective 3 cột Keep/Problem/Try ngắn 30 phút sau mỗi sprint — đủ để rút bài học mà không tốn thời gian
- Sprint dồn nhiều việc lên CEO là sai design — CEO cháy = công ty cháy. Mỗi sprint chỉ 1 feature lớn cho founder solo

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 期間 | きかん | KỲ GIAN | kỳ, thời gian |
| 前半 | ぜんはん | TIỀN BÁN | nửa đầu |
| 後半 | こうはん | HẬU BÁN | nửa sau |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 調整 | ちょうせい | ĐIỀU CHỈNH | tinh chỉnh |
| 通知 | つうち | THÔNG TRI | thông báo |
| 余裕 | よゆう | DƯ DỤ | dư, thoải mái |
| 感想 | かんそう | CẢM TƯỞNG | cảm nhận |
| 対応 | たいおう | ĐỐI ỨNG | xử lý, support |
| 緊張 | きんちょう | KHẨN TRƯƠNG | căng thẳng |
| 弊社 | へいしゃ | TỆ XÃ | công ty chúng tôi (khiêm) |
| 御社 | おんしゃ | NGỰ XÃ | quý công ty |
| 紹介 | しょうかい | THIỆU GIỚI | giới thiệu |
| 概要 | がいよう | KHÁI YẾU | tổng quan |
| すり合わせ | すりあわせ |  | thống nhất, sắp xếp |
| ちょうだいいたします |  |  | tôi xin nhận (kính ngữ) |
| お電話差し上げました | おでんわさしあげました | ĐIỆN THOẠI | em gọi điện (khiêm nhường) |
| 打ち合わせ | うちあわせ | ĐẢ HỢP | cuộc họp, buổi trao đổi |
| 到着 | とうちゃく | ĐÁO TRƯỚC | đến nơi |
| お忙しいところ | おいそがしいところ | MANG | trong lúc bận rộn |
| 公開 | こうかい | CÔNG KHAI | ra mắt, public |
| 振り返り | ふりかえり | CHẤN PHẢN | retrospective |
| 検出 | けんしゅつ | KIỂM XUẤT | phát hiện |
| 気付き | きづき | KHÍ PHÓ | nhận ra, insight |
| 成長率 | せいちょうりつ | THÀNH TRƯỞNG SUẤT | tỷ lệ tăng trưởng |
| 順調 | じゅんちょう | THUẬN ĐIỀU | suôn sẻ |
| 確認のため | かくにんのため | XÁC NHẬN | để xác nhận |
| 勤怠管理 | きんたいかんり | CẦN ĐÃI QUẢN LÝ | quản lý chấm công |
| 刷新 | さっしん | SOÁT TÂN | đổi mới |
| 連携 | れんけい | LIÊN HỆ | tích hợp, liên kết |
| 直接 | ちょくせつ | TRỰC TIẾP | trực tiếp |
| 可否 | かひ | KHẢ PHỦ | có hay không |
| 正直 | しょうじき | CHÍNH TRỰC | thật thà |
| 信頼 | しんらい | TÍN LẠI | tin cậy |
| 要件定義 | ようけんていぎ | YẾU KIỆN ĐỊNH NGHĨA | định nghĩa yêu cầu |
| 候補日 | こうほび | HẦU BỔ NHẬT | mốc ngày đề xuất |
| 段取り | だんどり | ĐOẠN THỦ | sự sắp xếp |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000005, 800000025, NULL, 'markdown_book', 'T5. Họp khách solo tại NTT Smart Solutions Tokyo (初クライアントミーティング)', '# Sách BrSE năm 1 · T5. Họp khách solo tại NTT Smart Solutions Tokyo (初クライアントミーティング)

> **Mục tiêu nhân vật:** Đại 25 tuổi, BrSE năm 1 tại Thanh A Solutions (7/2030). Học các mẫu hội thoại tiếng Nhật của BrSE đi họp khách solo lần đầu: (1) tự giới thiệu khiêm tốn ở quầy lễ tân, (2) chào hỏi khai mạc cuộc họp keigo, (3) xác nhận yêu cầu chức năng (機能要件), (4) đề xuất tech stack có cấu trúc, (5) thương lượng ngân sách + lịch giao hàng, (6) hỏi lại khi chưa hiểu thuật ngữ business, (7) chào kết thúc + cảm ơn keigo, (8) báo cáo Slack lên sếp sau buổi họp.

---

## Bối cảnh

Tháng 7 năm 2030, thứ Hai 8/7. Đại bắt 7:00 Shinkansen Nozomi từ Shin-Osaka lên Tokyo, mặc vest đen + cà-vạt navy, mang laptop. Sếp Tanaka (PM, 45 tuổi) về Osaka — Đại đại diện Thanh A một mình họp khách lần đầu. Khách: NTT Smart Solutions tại Otemachi tầng 38, đối tác là Yamamoto-PM (45t) + Suzuki-Tech Lead (38t). Dự án "Internal Knowledge Base AI" ¥45 triệu, giao trong 6 tháng. Chương này tập trung các mẫu câu keigo trong họp khách solo của BrSE năm 1.

---

## Tình huống 1 — Trên Shinkansen Nozomi 7 · 8:30, LINE vợ trước họp

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai) Em ơi, anh đang trên Shinkansen lên Tokyo. Hơi căng nhưng vẫn ổn. |
| Mai | (LINE) Anh sẽ làm tốt thôi. Em với Hana ủng hộ anh. Hana mới tập nói "Bố giỏi" sáng nay đó. |
| Đại | (LINE) Trời ơi. Cảm ơn em với Hana. Anh phải làm tốt vì Hana. |
| Đại | (LINE Tuấn) Anh ơi, em đang lên Tokyo họp NTT Smart. Tối nay standup Hizashi em sẽ join từ khách sạn nhé. |
| Tuấn | (LINE) Cố lên Đại! Tự tin nhé. Em đại diện cả tinh thần Thanh A lẫn Hizashi đó. |

---

## Tình huống 2 — Quầy lễ tân NTT Otemachi tầng 38 · 13:30, tự giới thiệu xin gặp đối tác

| Vai | Lời thoại |
|---|---|
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズのグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。14<ruby>時<rt>じ</rt></ruby>より<ruby>山本様<rt>やまもとさま</rt></ruby>とお<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせのお<ruby>約束<rt>やくそく</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>しております。<br>*(Cảm ơn quý công ty đã chiếu cố. Tôi là Nguyễn Đại từ Thanh A Solutions, có hẹn họp với anh Yamamoto lúc 14 giờ ạ.)* |
| Lễ tân | <ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちくださいませ。<ruby>担当<rt>たんとう</rt></ruby>の<ruby>者<rt>もの</rt></ruby>にお<ruby>取次<rt>とりつ</rt></ruby>ぎいたします。<br>*(Xin anh đợi một chút ạ. Tôi sẽ kết nối với người phụ trách.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, xin nhờ chị ạ.)* |
| Lễ tân | (đưa thẻ visitor) こちらが<ruby>入館証<rt>にゅうかんしょう</rt></ruby>でございます。<ruby>胸<rt>むね</rt></ruby>にお<ruby>付<rt>つ</rt></ruby>けください。<br>*(Đây là thẻ vào tòa nhà ạ. Mời anh cài lên ngực.)* |
| Đại | ありがとうございます。<br>*(Tôi cảm ơn ạ.)* |

---

## Tình huống 3 — Sảnh chờ tầng 38 · 13:50, Yamamoto-PM xuất hiện đón Đại

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、お<ruby>待<rt>ま</rt></ruby>たせいたしました。NTT Smart Solutionsの<ruby>山本<rt>やまもと</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Anh Nguyễn, để anh chờ lâu rồi. Tôi là Yamamoto của NTT Smart Solutions.)* |
| Đại | (cúi 30 độ, đưa danh thiếp hai tay) <ruby>初<rt>はじ</rt></ruby>めまして。<ruby>清華<rt>タンハー</rt></ruby>ソリューションズのグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Lần đầu gặp ạ. Tôi là Nguyễn Đại từ Thanh A Solutions. Hôm nay cảm ơn anh đã dành thời gian.)* |
| Yamamoto | (nhận danh thiếp hai tay, đọc kỹ) <ruby>頂戴<rt>ちょうだい</rt></ruby>いたします。BrSEでいらっしゃいますね。<br>*(Tôi xin nhận. Anh là BrSE phải không.)* |
| Đại | はい、<ruby>左様<rt>さよう</rt></ruby>でございます。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, đúng vậy ạ. Hôm nay xin được nhờ cậy.)* |
| Yamamoto | <ruby>会議室<rt>かいぎしつ</rt></ruby>へご<ruby>案内<rt>あんない</rt></ruby>いたします。こちらへどうぞ。<br>*(Tôi xin dẫn anh đến phòng họp. Mời anh đi lối này.)* |

---

## Tình huống 4 — Phòng họp 38F view Tokyo Tower · 14:00, chào hỏi khai mạc + giới thiệu Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>鈴木<rt>すずき</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>当社<rt>とうしゃ</rt></ruby>でテックリードを<ruby>務<rt>つと</rt></ruby>めております。<br>*(Lần đầu gặp, tôi là Suzuki. Tôi làm tech lead bên công ty.)* |
| Đại | <ruby>初<rt>はじ</rt></ruby>めまして、グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はBrSEとして<ruby>参<rt>まい</rt></ruby>りました。どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Lần đầu gặp, tôi là Nguyễn Đại. Hôm nay đến với tư cách BrSE ạ. Mong được nhờ cậy.)* |
| Yamamoto | では<ruby>早速<rt>さっそく</rt></ruby>ですが、<ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダを<ruby>確認<rt>かくにん</rt></ruby>させていただきます。<ruby>1<rt>いち</rt></ruby>、プロジェクト<ruby>概要<rt>がいよう</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>技術<rt>ぎじゅつ</rt></ruby>スタック<ruby>議論<rt>ぎろん</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>予算<rt>よさん</rt></ruby>と<ruby>納期<rt>のうき</rt></ruby>。<ruby>4<rt>よん</rt></ruby>、Q&A。<br>*(Vậy chúng ta vào việc ngay. Tôi xin xác nhận agenda hôm nay. 1. Tổng quan dự án. 2. Bàn về tech stack. 3. Ngân sách và lịch giao. 4. Q&A.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Em đã rõ ạ.)* |

---

## Tình huống 5 — Phòng họp · 14:10, Yamamoto giải thích phạm vi dự án

| Vai | Lời thoại |
|---|---|
| Yamamoto | プロジェクト<ruby>名<rt>めい</rt></ruby>は「<ruby>社内<rt>しゃない</rt></ruby>ナレッジベースAI」でございます。<ruby>当社<rt>とうしゃ</rt></ruby><ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>約<rt>やく</rt></ruby><ruby>三千名<rt>さんぜんめい</rt></ruby>が<ruby>使用<rt>しよう</rt></ruby>するAIアシスタントを<ruby>構築<rt>こうちく</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Tên dự án là "Internal Knowledge Base AI". Bên công ty muốn xây dựng AI assistant cho khoảng 3000 nhân viên sử dụng.)* |
| Suzuki | コア<ruby>機能<rt>きのう</rt></ruby>は<ruby>四<rt>よっ</rt></ruby>つございます。<ruby>一<rt>いち</rt></ruby>、<ruby>社内文書<rt>しゃないぶんしょ</rt></ruby>のRAG<ruby>検索<rt>けんさく</rt></ruby><ruby>約<rt>やく</rt></ruby><ruby>五万件<rt>ごまんけん</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>質問<rt>しつもん</rt></ruby><ruby>回答<rt>かいとう</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、<ruby>会議録<rt>かいぎろく</rt></ruby><ruby>要約<rt>ようやく</rt></ruby>。<ruby>四<rt>よん</rt></ruby>、Slack<ruby>連携<rt>れんけい</rt></ruby>です。<br>*(Có bốn chức năng cốt lõi. 1. RAG search 50000 tài liệu nội bộ. 2. Q&A nhân viên. 3. Tóm tắt meeting note. 4. Tích hợp Slack.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>機能<rt>きのう</rt></ruby><ruby>要件<rt>ようけん</rt></ruby>について<ruby>一点<rt>いってん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただきたいのですが、<ruby>社内文書<rt>しゃないぶんしょ</rt></ruby>はPDF<ruby>形式<rt>けいしき</rt></ruby>のみでございますか?<br>*(Em đã rõ ạ. Cho phép em xác nhận một điểm về yêu cầu chức năng — tài liệu nội bộ có phải chỉ ở định dạng PDF không ạ?)* |
| Suzuki | いえ、PDFに<ruby>加<rt>くわ</rt></ruby>え、Word、ExcelおよびConfluenceページも<ruby>含<rt>ふく</rt></ruby>まれます。<ruby>合計<rt>ごうけい</rt></ruby><ruby>四種類<rt>よんしゅるい</rt></ruby>でございます。<br>*(Không, ngoài PDF còn có Word, Excel và cả trang Confluence. Tổng cộng bốn loại.)* |
| Đại | かしこまりました。<ruby>四種類<rt>よんしゅるい</rt></ruby>の<ruby>文書<rt>ぶんしょ</rt></ruby><ruby>形式<rt>けいしき</rt></ruby>に<ruby>対応<rt>たいおう</rt></ruby>するパイプラインを<ruby>設計<rt>せっけい</rt></ruby>いたします。<br>*(Em hiểu ạ. Em sẽ thiết kế pipeline xử lý cả bốn loại định dạng tài liệu.)* |

---

## Tình huống 6 — Phòng họp · 14:30, Đại đề xuất tech stack

| Vai | Lời thoại |
|---|---|
| Đại | では、<ruby>技術<rt>ぎじゅつ</rt></ruby>スタックのご<ruby>提案<rt>ていあん</rt></ruby>をさせていただきます。Backendは Python FastAPI、データベースは PostgreSQL に pgvector を<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Vậy em xin đề xuất tech stack ạ. Backend dùng Python FastAPI, database PostgreSQL kết hợp pgvector.)* |
| Đại | Embedding は BGE-M3 を<ruby>採用<rt>さいよう</rt></ruby>し、LLM は Claude と GPT-4o の<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>比較<rt>ひかく</rt></ruby><ruby>検証<rt>けんしょう</rt></ruby>いたします。Frontend は React と Next.js、デプロイは AWS ECS Fargate で<ruby>運用<rt>うんよう</rt></ruby>する<ruby>予定<rt>よてい</rt></ruby>でございます。<br>*(Embedding dùng BGE-M3, LLM thì so sánh kiểm chứng cả Claude lẫn GPT-4o. Frontend React + Next.js, deploy AWS ECS Fargate.)* |
| Suzuki | (gật) <ruby>標準的<rt>ひょうじゅんてき</rt></ruby>な<ruby>構成<rt>こうせい</rt></ruby>で<ruby>安心<rt>あんしん</rt></ruby>いたしました。<ruby>当社<rt>とうしゃ</rt></ruby>でも BGE-M3 を<ruby>検討<rt>けんとう</rt></ruby>しておりました。<br>*(Cấu hình chuẩn, tôi yên tâm. Bên công ty cũng đang xem xét BGE-M3.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>多言語<rt>たげんご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>の<ruby>観点<rt>かんてん</rt></ruby>でも BGE-M3 が<ruby>最<rt>もっと</rt></ruby>も<ruby>適<rt>てき</rt></ruby>していると<ruby>判断<rt>はんだん</rt></ruby>しております。<br>*(Em không dám nhận lời khen. Xét góc độ đa ngôn ngữ thì em đánh giá BGE-M3 là phù hợp nhất ạ.)* |

---

## Tình huống 7 — Phòng họp · 14:50, Đại hỏi lại khi gặp thuật ngữ business chưa rõ

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>本件<rt>ほんけん</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>の DX <ruby>推進部<rt>すいしんぶ</rt></ruby>が<ruby>所管<rt>しょかん</rt></ruby>しており、<ruby>稟議<rt>りんぎ</rt></ruby>は<ruby>既<rt>すで</rt></ruby>に<ruby>通<rt>とお</rt></ruby>っております。<br>*(Việc này do bộ phận thúc đẩy DX phụ trách, đề nghị duyệt nội bộ đã qua rồi.)* |
| Đại | <ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>りますが、「<ruby>稟議<rt>りんぎ</rt></ruby>」というのは、<ruby>当社<rt>とうしゃ</rt></ruby><ruby>内部<rt>ないぶ</rt></ruby>の<ruby>承認<rt>しょうにん</rt></ruby>プロセスという<ruby>理解<rt>りかい</rt></ruby>でよろしいでしょうか?<br>*(Em xin lỗi đã làm phiền, nhưng "ringi" có thể hiểu là quy trình duyệt nội bộ của quý công ty không ạ?)* |
| Yamamoto | はい、その<ruby>通<rt>とお</rt></ruby>りでございます。<ruby>関係<rt>かんけい</rt></ruby><ruby>部署<rt>ぶしょ</rt></ruby>に<ruby>順次<rt>じゅんじ</rt></ruby><ruby>回覧<rt>かいらん</rt></ruby>し、<ruby>役員<rt>やくいん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>を<ruby>得<rt>え</rt></ruby>る<ruby>仕組<rt>しく</rt></ruby>みでございます。<br>*(Vâng, đúng vậy. Cơ chế là chuyển lần lượt qua các phòng ban liên quan để được ban điều hành duyệt.)* |
| Đại | ご<ruby>説明<rt>せつめい</rt></ruby>ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Cảm ơn anh đã giải thích. Em học được thêm ạ.)* |

---

## Tình huống 8 — Phòng họp · 15:10, Đại đề xuất nhân sự Thanh A

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>清華<rt>タンハー</rt></ruby><ruby>側<rt>がわ</rt></ruby>のチーム<ruby>構成<rt>こうせい</rt></ruby>はいかがでしょうか?<br>*(Bên Thanh A bố trí nhân sự thế nào ạ?)* |
| Đại | <ruby>当社<rt>とうしゃ</rt></ruby><ruby>側<rt>がわ</rt></ruby>は<ruby>合計<rt>ごうけい</rt></ruby><ruby>七名<rt>しちめい</rt></ruby>を<ruby>予定<rt>よてい</rt></ruby>しております。BrSE <ruby>一名<rt>いちめい</rt></ruby>、<ruby>私<rt>わたくし</rt></ruby>が<ruby>務<rt>つと</rt></ruby>めさせていただきます。PM <ruby>一名<rt>いちめい</rt></ruby>、Senior Backend <ruby>二名<rt>にめい</rt></ruby>、Frontend <ruby>一名<rt>いちめい</rt></ruby>、ML/RAG <ruby>専門<rt>せんもん</rt></ruby> <ruby>一名<rt>いちめい</rt></ruby>、QA <ruby>一名<rt>いちめい</rt></ruby>でございます。<br>*(Bên công ty em dự kiến tổng cộng 7 người. BrSE một người do em đảm nhiệm. PM một, Senior Backend hai, Frontend một, ML/RAG một, QA một ạ.)* |
| Suzuki | ML/RAG <ruby>専門<rt>せんもん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>はどの<ruby>程度<rt>ていど</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>をお<ruby>持<rt>も</rt></ruby>ちでしょうか?<br>*(Người chuyên ML/RAG có kinh nghiệm cỡ nào?)* |
| Đại | <ruby>三年以上<rt>さんねんいじょう</rt></ruby>の<ruby>実務経験<rt>じつむけいけん</rt></ruby>を<ruby>有<rt>ゆう</rt></ruby>し、<ruby>大規模<rt>だいきぼ</rt></ruby> RAG システムの<ruby>本番<rt>ほんばん</rt></ruby><ruby>運用<rt>うんよう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>もございます。<br>*(Trên 3 năm kinh nghiệm thực chiến, đã từng vận hành production hệ thống RAG quy mô lớn.)* |
| Suzuki | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>安心<rt>あんしん</rt></ruby>いたしました。<br>*(Tôi rõ rồi. Tôi yên tâm.)* |

---

## Tình huống 9 — Phòng họp · 15:30, thương lượng ngân sách và lịch giao

| Vai | Lời thoại |
|---|---|
| Yamamoto | <ruby>予算<rt>よさん</rt></ruby>は<ruby>四千五百万円<rt>よんせんごひゃくまんえん</rt></ruby>、<ruby>納期<rt>のうき</rt></ruby>は<ruby>六<rt>ろっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>を<ruby>想定<rt>そうてい</rt></ruby>しております。<br>*(Ngân sách 45 triệu yên, kỳ giao dự tính là 6 tháng.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。キックオフは<ruby>八月一日<rt>はちがつついたち</rt></ruby>、<ruby>納品<rt>のうひん</rt></ruby>は<ruby>来年<rt>らいねん</rt></ruby><ruby>一月末<rt>いちがつまつ</rt></ruby>、<ruby>中間<rt>ちゅうかん</rt></ruby>レビューは<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>初旬<rt>しょじゅん</rt></ruby>でよろしいでしょうか?<br>*(Em đã rõ ạ. Kickoff 1/8, giao hàng cuối tháng 1 năm sau, mid-review đầu tháng 11 — có ổn không ạ?)* |
| Yamamoto | はい、<ruby>結構<rt>けっこう</rt></ruby>でございます。<ruby>定例<rt>ていれい</rt></ruby>ミーティングは<ruby>週<rt>しゅう</rt></ruby><ruby>何回<rt>なんかい</rt></ruby>を<ruby>想定<rt>そうてい</rt></ruby>されておりますか?<br>*(Vâng, được ạ. Họp định kỳ thì anh dự tính tuần mấy lần?)* |
| Đại | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby><ruby>午前<rt>ごぜん</rt></ruby><ruby>十時<rt>じゅうじ</rt></ruby>より、<ruby>一時間<rt>いちじかん</rt></ruby>の<ruby>定例<rt>ていれい</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>させていただきます。コミュニケーションは Slack と Backlog にてお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em xin đề xuất họp định kỳ thứ Hai hằng tuần từ 10 giờ sáng, kéo dài một tiếng. Trao đổi dùng Slack và Backlog ạ.)* |
| Suzuki | <ruby>賛成<rt>さんせい</rt></ruby>でございます。<br>*(Tôi đồng ý.)* |

---

## Tình huống 10 — Phòng họp · 15:50, Q&A — Suzuki hỏi về Hizashi

| Vai | Lời thoại |
|---|---|
| Suzuki | グエンさんは<ruby>技術<rt>ぎじゅつ</rt></ruby>にも<ruby>大変<rt>たいへん</rt></ruby><ruby>詳<rt>くわ</rt></ruby>しいですね。<ruby>通常<rt>つうじょう</rt></ruby>のBrSEとは<ruby>少<rt>すこ</rt></ruby>し<ruby>違<rt>ちが</rt></ruby>う<ruby>印象<rt>いんしょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<br>*(Anh Nguyễn am hiểu kỹ thuật quá. Tôi có cảm nhận hơi khác một BrSE thông thường.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>実<rt>じつ</rt></ruby>は<ruby>個人<rt>こじん</rt></ruby>で AI スタートアップを<ruby>運営<rt>うんえい</rt></ruby>しております。Hizashi という<ruby>言語学習<rt>げんごがくしゅう</rt></ruby>アプリでございます。<br>*(Em không dám nhận. Thực ra em đang vận hành riêng một startup AI. Đó là ứng dụng học ngôn ngữ tên Hizashi ạ.)* |
| Yamamoto | (mắt mở to) Hizashi ですか?! TechCrunch JP で<ruby>記事<rt>きじ</rt></ruby>を<ruby>拝見<rt>はいけん</rt></ruby>いたしました。<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>がBrSEを<ruby>兼任<rt>けんにん</rt></ruby>されているのですか?<br>*(Hizashi sao?! Tôi đã đọc bài trên TechCrunch JP. Người sáng lập kiêm luôn cả BrSE à?)* |
| Đại | はい、<ruby>勉強<rt>べんきょう</rt></ruby>のためでございます。<ruby>大企業<rt>だいきぎょう</rt></ruby>のプロセスを<ruby>学<rt>まな</rt></ruby>ばせていただいております。<br>*(Vâng, để học hỏi thêm ạ. Em đang được học quy trình của các doanh nghiệp lớn.)* |
| Yamamoto | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<br>*(Tuyệt vời quá.)* |

---

## Tình huống 11 — Cửa phòng họp · 16:00, chào kết thúc + cảm ơn

| Vai | Lời thoại |
|---|---|
| Yamamoto | グエンさん、<ruby>本日<rt>ほんじつ</rt></ruby>はありがとうございました。ご<ruby>説明<rt>せつめい</rt></ruby>が<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>明確<rt>めいかく</rt></ruby>で、<ruby>大変<rt>たいへん</rt></ruby><ruby>助<rt>たす</rt></ruby>かりました。<br>*(Anh Nguyễn, hôm nay cảm ơn anh nhiều. Anh giải thích rất rõ ràng, tôi rất biết ơn.)* |
| Đại | (cúi 45 độ) <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>当社<rt>とうしゃ</rt></ruby><ruby>一同<rt>いちどう</rt></ruby>、<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>ませていただきます。<br>*(Em không dám nhận. Toàn bộ công ty em sẽ dốc hết sức làm việc ạ.)* |
| Yamamoto | <ruby>来週中<rt>らいしゅうちゅう</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>な<ruby>契約書<rt>けいやくしょ</rt></ruby>をお<ruby>送<rt>おく</rt></ruby>りいたします。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Trong tuần sau tôi sẽ gửi hợp đồng chính thức. Mong tiếp tục cộng tác.)* |
| Đại | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em cũng vậy ạ, mong được nhờ cậy. Em xin phép ạ.)* |
| Suzuki | <ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Xin phép ạ.)* |

---

## Tình huống 12 — Shinkansen về Osaka · 17:30, Slack báo cáo sếp Tanaka và Thanh

*Đại lên Nozomi 35 từ Tokyo, ngồi ghế cửa sổ, mở Slack ngay khi tàu rời ga.*

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #brse-team) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>のNTT Smart Solutionsとの<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせ、<ruby>無事<rt>ぶじ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>いたしました。<ruby>提案<rt>ていあん</rt></ruby>はすべて<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れていただきました。<ruby>来週中<rt>らいしゅうちゅう</rt></ruby>に<ruby>契約書<rt>けいやくしょ</rt></ruby>が<ruby>届<rt>とど</rt></ruby>く<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Anh Tanaka, buổi họp NTT Smart Solutions hôm nay đã kết thúc suôn sẻ. Toàn bộ đề xuất đã được chấp thuận. Tuần sau hợp đồng sẽ gửi đến ạ.)* |
| Tanaka | (Slack JP) <ruby>素晴<rt>すば</rt></ruby>らしい！グエンさん、よくやりました。<ruby>金額<rt>きんがく</rt></ruby>と<ruby>納期<rt>のうき</rt></ruby>はどうでしたか?<br>*(Tuyệt vời! Anh Nguyễn làm tốt lắm. Số tiền và lịch giao thế nào?)* |
| Đại | <ruby>四千五百万円<rt>よんせんごひゃくまんえん</rt></ruby>、<ruby>六<rt>ろっ</rt></ruby>ヶ<ruby>月<rt>げつ</rt></ruby>、キックオフ<ruby>八月一日<rt>はちがつついたち</rt></ruby>で<ruby>合意<rt>ごうい</rt></ruby>いたしました。<br>*(Đã thống nhất 45 triệu yên, 6 tháng, kickoff 1/8 ạ.)* |
| Thanh (CEO) | (Slack tiếng Việt) Em đỉnh quá! Lần đầu solo Tokyo mà chốt được dự án ¥45M. Sếp Tanaka chiều nay sẽ thưởng em một khoản. |
| Đại | (Slack tiếng Việt) Cảm ơn anh Thanh. Em đang trên Shinkansen về Osaka, tối nay em sẽ viết báo cáo họp đầy đủ gửi cả nhóm. |

---

## Tình huống 13 — Cảnh tiếng Việt — Apt Senri-chuo · 22:00, kể chuyện cho Mai sau buổi họp

*Đại về đến căn hộ, Hana đã ngủ, Mai đợi sẵn với bữa ăn nhẹ.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, anh về rồi. Hana ngủ chưa? |
| Mai | (tiếng Việt) Ngủ rồi anh. Vừa nãy Hana đòi đợi bố về nhưng buồn ngủ quá. Anh kể đi, buổi họp thế nào? |
| Đại | (tiếng Việt) Vượt mong đợi em ơi. Yamamoto-PM với Suzuki-TL đồng ý toàn bộ đề xuất ngay buổi họp đầu. ¥45 triệu, 6 tháng. |
| Mai | (tiếng Việt) Trời, em tự hào quá. Anh có run trước khi vào phòng họp không? |
| Đại | (tiếng Việt) Run lắm em. Trước khi vào, anh phải hít sâu 5 lần ở cửa thang máy. Nhưng khi nói câu mở đầu "本日はよろしくお願いいたします" thì người tự tin trở lại. |
| Mai | (tiếng Việt) Có chuyện gì làm anh bất ngờ không? |
| Đại | (tiếng Việt) Có. Suzuki-san hỏi anh có giống BrSE thường không vì anh am hiểu kỹ thuật. Anh khai thật là làm Hizashi, Yamamoto-PM trố mắt vì đã đọc bài TechCrunch. Tự dưng uy tín tăng vọt. |
| Mai | (tiếng Việt) Hahaha. Mai cho Hana xem ảnh bố mặc vest. Bố phải mặc đẹp thường xuyên hơn nhé! |
| Đại | (tiếng Việt) Vâng vợ. Mai anh ngủ bù, mệt quá. Cảm ơn em đã đợi. |

---

## Đọng lại chương 5

Đại trải qua ngày solo client meeting đầu tiên với mức stress 7/10 trước họp giảm còn 3/10 sau. Ở quầy lễ tân học mẫu **「お世話になっております。〜と申します。〜とお打ち合わせのお約束を頂戴しております」** để xin gặp đối tác. Khi gặp Yamamoto-PM dùng **「初めまして。本日はお時間を頂戴し、誠にありがとうございます」** + cúi 30 độ + danh thiếp hai tay. Khi xác nhận yêu cầu chức năng dùng **「一点確認させていただきたいのですが」**, khi gặp thuật ngữ "稟議" chưa rõ dùng **「『稟議』というのは、〜という理解でよろしいでしょうか?」** thay vì giả vờ hiểu. Đề xuất tech stack theo thứ tự Backend → DB → Embedding → LLM → Frontend → Deploy. Chốt cuộc họp bằng **「当社一同、全力で取り組ませていただきます」** + cúi 45 độ. Khoảnh khắc thú vị: Suzuki khen am hiểu kỹ thuật, Đại khai là founder Hizashi → uy tín tăng vọt. Trên Shinkansen về Osaka báo cáo Slack lên sếp Tanaka và CEO Thanh.

> Từ vựng & mẫu câu chương này: お世話になっております・〜と申します・お打ち合わせのお約束を頂戴しております・少々お待ちくださいませ・入館証・本日はお時間を頂戴し誠にありがとうございます・初めまして・どうぞよろしくお願いいたします・〜させていただきます・承知いたしました・〜というのは〜という理解でよろしいでしょうか・恐縮でございます・恐れ入りますが・稟議・機能要件・技術スタック・予算・納期・キックオフ・中間レビュー・定例ミーティング・全力で取り組ませていただきます・失礼いたします

## Bí quyết chương

- **Chuẩn bị họp khách solo**: viết sẵn agenda + kịch bản tự giới thiệu + đề xuất kỹ thuật, tập dượt 3 ngày trước khi đi
- **Mẫu tự giới thiệu chuẩn business**: "[Công ty]の[Tên]と申します。本日はよろしくお願いいたします" + cúi 30 độ + danh thiếp hai tay
- **Thứ tự đề xuất tech stack**: Backend → DB → Embedding → LLM → Frontend → Deploy (logic từ tầng sâu lên bề mặt)
- **Hỏi lại khi chưa hiểu**: "〜というのは、〜という理解でよろしいでしょうか?" tốt hơn giả vờ hiểu — người Nhật đánh giá cao sự thành thật
- **Background Hizashi = uy tín**: tư cách founder giúp client tin tưởng đề xuất kỹ thuật của BrSE
- **Mức stress 7/10 → 3/10**: vượt qua lần solo đầu là cú đẩy lớn cho tự tin nghề nghiệp

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 頂戴 | ちょうだい | ĐỈNH ĐÁI | xin nhận (khiêm) |
| 取次ぎ | とりつぎ | THỦ THỨ | kết nối, chuyển tiếp |
| 左様でございます | さようでございます | TẢ DẠNG | đúng vậy ạ (kính ngữ) |
| 務める | つとめる | VỤ | đảm nhiệm |
| 参りました | まいりました | THAM | đã đến (khiêm nhường) |
| アジェンダ |  |  | agenda |
| 議論 | ぎろん | NGHỊ LUẬN | bàn bạc, thảo luận |
| 予算 | よさん | DỰ TOÁN | ngân sách |
| 従業員 | じゅうぎょういん | TÒNG NGHIỆP VIÊN | nhân viên |
| 構築 | こうちく | CẤU TRÚC | xây dựng |
| 機能要件 | きのうようけん | CƠ NĂNG YẾU KIỆN | yêu cầu chức năng |
| 形式 | けいしき | HÌNH THỨC | định dạng |
| 含まれます | ふくまれます | HÀM | bao gồm |
| かしこまりました |  |  | tôi đã rõ (rất kính) |
| 設計 | せっけい | THIẾT KẾ | thiết kế |
| 比較検証 | ひかくけんしょう | TỶ GIÁC KIỂM CHỨNG | so sánh kiểm chứng |
| 運用 | うんよう | VẬN DỤNG | vận hành |
| 標準的 | ひょうじゅんてき | TIÊU CHUẨN ĐÍCH | tiêu chuẩn |
| 検討 | けんとう | KIỂM ĐẢO | xem xét |
| 多言語 | たげんご | ĐA NGÔN NGỮ | đa ngôn ngữ |
| 判断 | はんだん | PHÁN ĐOÁN | nhận định |
| 所管 | しょかん | SỞ QUẢN | thuộc trách nhiệm |
| 稟議 | りんぎ | BẨM NGHỊ | đề nghị duyệt nội bộ |
| 承認 | しょうにん | THỪA NHẬN | duyệt, phê chuẩn |
| 順次 | じゅんじ | THUẬN THỨ | lần lượt |
| 回覧 | かいらん | HỒI LÃM | chuyển xem |
| 役員 | やくいん | DỊCH VIÊN | ban điều hành |
| 仕組み | しくみ | SỰ TỔ | cơ chế |
| 構成 | こうせい | CẤU THÀNH | bố trí, cấu thành |
| 専門 | せんもん | CHUYÊN MÔN | chuyên ngành |
| 実務経験 | じつむけいけん | THỰC VỤ KINH NGHIỆM | kinh nghiệm thực chiến |
| 本番 | ほんばん | BẢN PHIÊN | production thực tế |
| 中間レビュー | ちゅうかんレビュー | TRUNG GIAN | mid-review |
| 定例ミーティング | ていれいミーティング | ĐỊNH LỆ | họp định kỳ |
| 兼任 | けんにん | KIÊM NHIỆM | kiêm nhiệm |
| 一同 | いちどう | NHẤT ĐỒNG | toàn thể |
| 全力 | ぜんりょく | TOÀN LỰC | dốc hết sức |
| 取り組む | とりくむ | THỦ TỔ | bắt tay vào làm |
| 契約書 | けいやくしょ | KHẾ ƯỚC THƯ | hợp đồng |
| 無事 | ぶじ | VÔ SỰ | suôn sẻ, không sự cố |
| 受け入れ | うけいれ | THỤ NHẬP | chấp thuận |
| 合意 | ごうい | HỢP Ý | thống nhất |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000006, 800000025, NULL, 'markdown_book', 'T6. Obon hè — Mai+Hana+Đại về VN một tuần (お盆休暇ベトナム帰省)', '# Sách BrSE năm 1 · T6. Obon hè — Mai+Hana+Đại về VN một tuần (お盆休暇ベトナム帰省)

> **Mục tiêu nhân vật:** Đại 25 tuổi, BrSE năm 1 (8/2030). Obon 11-17/8 cả gia đình bay HN. Học các mẫu hội thoại của BrSE: (1) tiếng Việt sinh hoạt gia đình hai bên ông bà, (2) keigo chào hỏi giữa thông gia Việt-Nhật, (3) Hizashi standup remote sáng sớm với Tuấn+Aiko qua múi giờ +2, (4) chuyển ngữ Việt-Nhật-Anh cho ông bà bố mẹ vợ giao tiếp với Tony+Yumi, (5) gọi LINE báo cáo sếp Tanaka khi đang nghỉ phép, (6) phát ngôn trang trọng giữa thông gia trên du thuyền Hạ Long.

---

## Bối cảnh

Tháng 8 năm 2030, thứ Hai 11/8. Đại 25t, Mai 25t, Hana 22 tháng vừa qua sinh nhật 2 tuổi. Cả nhà bay Vietnam Airlines KIX→HAN buổi chiều. Tony 65t + Yumi 60t đã bay JAL Tokyo→HAN từ Chủ Nhật trước, ở khách sạn Sofitel Metropole HN. Bố Mai 58t + Mẹ Mai 53t đón sân bay Nội Bài. Nhà phố Hàng Bạc tầng 3 — căn hộ phố cổ HN của bố mẹ Mai. Cuối tuần cả nhà tám người đi Hạ Long một đêm. Đại nghỉ phép Thanh A nhưng vẫn dành 4 tiếng/sáng cho Hizashi standup từ xa với Tuấn+Aiko ở Osaka. Chương này tập trung các mẫu hội thoại Việt sinh hoạt gia đình + keigo thông gia + Hizashi remote standup.

---

## Tình huống 1 — Sân bay KIX terminal 1 · 13:00, check-in trước khi bay

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, hộ chiếu Hana đâu? Có cần làm thủ tục riêng cho con không? |
| Mai | (tiếng Việt) Em cầm đây. Hana có hộ chiếu Việt Nam, đi cùng mẹ là được. Visa miễn theo bố mẹ. |
| Hana | (chỉ máy bay qua cửa kính) Bà! Bà! Đi! |
| Đại | (tiếng Việt, cười, bế Hana) Trời ơi con ơi. Bà nội bà ngoại đợi con ở Hà Nội đấy. |
| Mai | (LINE bố mẹ HN) Bố mẹ ơi, chúng con sắp lên máy bay. Hạ cánh Nội Bài 17:30 giờ Hà Nội. |
| Bố Mai | (LINE) Bố mẹ đợi ở sảnh đến quốc tế. Cô Hana 22 tháng giờ tướng thế nào rồi? |
| Mai | (LINE) Cao gần một mét rồi bố ơi. Biết gọi "bà ngoại" rồi. |

---

## Tình huống 2 — Sân bay Nội Bài sảnh đến quốc tế · 17:45, đoàn tụ với bố mẹ Mai

*Cửa ra của sảnh đến quốc tế Nội Bài đông nghịt người. Bố Mai vẫy tay từ xa.*

| Vai | Lời thoại |
|---|---|
| Bố Mai | (tiếng Việt, vẫy tay) Mai ơi! Đại ơi! Hana ơi! Đây này! |
| Mai | (chạy đến ôm bố) Bố ơi! Con nhớ bố quá! |
| Mẹ Mai | (giang tay ôm Hana) Trời ơi cháu ngoại của bà! 22 tháng to thế này rồi! Mặt giống y hệt bố nó. |
| Hana | (ngại lúc đầu, sau cười rúc vào vai bà) Bà! Bà ngoại! |
| Bố Mai | (cảm động, mắt đỏ hoe) Cháu biết gọi "bà ngoại" rồi! Mai dạy con khéo quá. |
| Đại | (tiếng Việt, chào bố mẹ vợ) Bố ơi mẹ ơi, con chào bố mẹ. Bố mẹ trông vẫn khỏe ghê. 6 tháng rồi không gặp. |
| Mẹ Mai | (tiếng Việt) Bố mẹ vẫn khỏe con ạ. Mẹ vẫn dạy thêm tiếng Việt cho mấy đứa Tây ở quận Ba Đình. Bố thì vẫn ngồi quán cà phê hồ Tây mỗi sáng. |
| Bố Mai | (xách vali giúp) Đi taxi về Hàng Bạc thôi. Đặt sẵn xe 7 chỗ rồi. |

---

## Tình huống 3 — Apt phố Hàng Bạc tầng 3 · 19:00, bữa cơm đầu tiên ở nhà bố mẹ Mai

| Vai | Lời thoại |
|---|---|
| Mai | (vào nhà, hít sâu) Mùi nhà mình. Đèn đỏ phố cổ vẫn y như xưa. |
| Đại | (tiếng Việt) Cầu thang gỗ này cứ kêu cọt kẹt — đúng ký ức tuổi thơ em kể anh nghe đấy. |
| Hana | (sợ cầu thang gỗ lạ) Mẹ! Mẹ bế con! |
| Mai | (bế Hana lên tầng) Cô bé sợ cầu thang lạ. Một hai hôm là quen thôi con. |
| Mẹ Mai | (từ bếp ra) Mẹ làm bún chả với nem rán với canh chua cá lóc. Đại con ăn nhiều vào nhé, mẹ làm cho cả tuần. |
| Đại | (tiếng Việt, ngồi xuống mâm) Mẹ ơi, một năm rưỡi rồi con mới được ăn cơm mẹ nấu. Mùi này con nhớ lắm. |
| Bố Mai | (rót bia Hà Nội cho Đại) Uống chén đi con. Hà Nội đêm nay 33 độ, bia mát. |
| Đại | (cụng ly) Vâng bố. Con uống mừng ngày về. |

---

## Tình huống 4 — Apt Hàng Bạc · 20:30, LINE với Tony+Yumi chuẩn bị hôm sau gặp nhau

| Vai | Lời thoại |
|---|---|
| Bố Mai | (tiếng Việt) Đại ơi, hai bác Tony với Yumi đến đâu rồi con? Bố muốn gặp hai thông gia Nhật. |
| Đại | (tiếng Việt, mở LINE) Hai bác đến Hà Nội từ chiều Chủ Nhật, đang ở Sofitel Metropole. Mai 9 giờ sáng sang nhà mình chơi. |
| Đại | (LINE Tony+Yumi nhóm) お<ruby>父<rt>とう</rt></ruby>さん、お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>に<ruby>妻<rt>つま</rt></ruby>の<ruby>実家<rt>じっか</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちしております。タクシーでハンバック<ruby>通<rt>とお</rt></ruby>りまでお<ruby>越<rt>こ</rt></ruby>しください。<br>*(Bố mẹ ơi, 9 giờ sáng mai con đợi ở nhà bố mẹ vợ. Hai bác đi taxi đến phố Hàng Bạc nhé.)* |
| Tony | (LINE, tiếng Việt lơ lớ) Chào con! Bố mẹ rất vui đến Hà Nội. Mai 9 giờ sẽ đến nha! |
| Yumi | (LINE JP) ハナちゃん<ruby>大<rt>おお</rt></ruby>きくなったでしょうね。<ruby>明日<rt>あした</rt></ruby><ruby>会<rt>あ</rt></ruby>えるん<ruby>楽<rt>たの</rt></ruby>しみやわぁ。<br>*(Hana lớn nhiều rồi nhỉ. Mai gặp được mong quá.)* |
| Bố Mai | (đọc qua vai Đại, cười) Bác Tony viết tiếng Việt lơ lớ mà dễ thương ghê. |
| Mẹ Mai | (tiếng Việt) Mai ơi, hai bác ăn được phở không con? Mẹ định mai nấu phở gà. |
| Mai | (tiếng Việt) Mẹ ơi, bác Tony nói "phở ngon hơn ramen" từ năm năm trước rồi. Bác Yumi thích bún chả Hồ Gươm lắm. |

---

## Tình huống 5 — Sáng thứ Ba apt Hàng Bạc · 6:00, Hizashi standup remote với Tuấn+Aiko ở Osaka

*Hà Nội 6:00 = Osaka 8:00. Đại ngồi bàn ăn nhỏ ở góc phòng khách, cả nhà vẫn ngủ. Mở MacBook và Slack.*

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #hizashi-standup) おはようございます！ハノイから<ruby>朝<rt>あさ</rt></ruby><ruby>六時<rt>じ</rt></ruby>です。<ruby>家族<rt>かぞく</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby><ruby>寝<rt>ね</rt></ruby>てるうちに<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Chào buổi sáng! Hà Nội đang 6 giờ sáng. Cả nhà còn ngủ, mình tiến độ luôn nhé.)* |
| Tuấn | (Slack, tiếng Việt) Anh đây! Em sao rồi, bố mẹ HN đón vui không? |
| Đại | (Slack, tiếng Việt) Vui lắm anh. Hôm nay 9 giờ sáng Tony với Yumi sang nhà bố mẹ vợ em chơi — lần đầu thông gia hai bên gặp nhau. |
| Aiko | (Slack JP) <ruby>素敵<rt>すてき</rt></ruby>ですね！<ruby>後<rt>あと</rt></ruby>で<ruby>写真<rt>しゃしん</rt></ruby><ruby>送<rt>おく</rt></ruby>ってください。<ruby>今日<rt>きょう</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>は?<br>*(Lãng mạn quá! Tí gửi ảnh nhé. Tiến độ hôm nay sao?)* |
| Đại | (Slack JP) <ruby>本日<rt>ほんじつ</rt></ruby>は Stripe <ruby>連携<rt>れんけい</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>りタスクを<ruby>4時間<rt>よじかん</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。Webhook の subscription.updated と canceled の<ruby>処理<rt>しょり</rt></ruby>です。<br>*(Hôm nay em dành 4 tiếng làm nốt việc tích hợp Stripe. Xử lý webhook subscription.updated và canceled.)* |
| Tuấn | (Slack) OK em. Anh đẩy UI dashboard analytics cho founder hôm nay. Aiko sửa lại landing page cho lần ra mắt v1.0. |
| Aiko | (Slack JP) <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>家族<rt>かぞく</rt></ruby>サービスも<ruby>大切<rt>たいせつ</rt></ruby>に！<br>*(Rõ. Phục vụ gia đình cũng quan trọng đó nhé!)* |
| Đại | (Slack) ありがとうございます。<ruby>10時<rt>じ</rt></ruby>になったらお<ruby>客様<rt>きゃくさま</rt></ruby>が<ruby>来<rt>く</rt></ruby>るので<ruby>離<rt>はな</rt></ruby>れます。<br>*(Cảm ơn. 10 giờ có khách đến nên em ra ngoài Slack nhé.)* |

---

## Tình huống 6 — Apt Hàng Bạc · 9:00, Tony+Yumi đến — lần đầu thông gia hai bên gặp nhau

*Chuông cửa kêu. Đại xuống tầng 1 đón. Tony mặc áo sơ mi trắng quần kaki, Yumi mặc áo cánh hoa Nhật. Cả hai cầm hộp quà gỗ.*

| Vai | Lời thoại |
|---|---|
| Tony | (vào nhà, cúi 30 độ với bố mẹ Mai) <ruby>初<rt>はじ</rt></ruby>めまして。トニー・<ruby>佐藤<rt>さとう</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>招<rt>まね</rt></ruby>きいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Lần đầu gặp. Tôi là Tony Sato. Hôm nay cảm ơn ông bà đã mời.)* |
| Đại | (dịch) Bố mẹ ơi, bác Tony chào bố mẹ. Bác nói "Lần đầu gặp, cảm ơn bố mẹ đã mời chúng tôi". |
| Bố Mai | (tiếng Việt, bắt tay Tony hai tay) Bác Tony! Mời ngồi! Mời uống chén trà sen. Chúng tôi cũng vinh dự lắm. |
| Đại | (dịch JP cho Tony) お<ruby>義父<rt>とう</rt></ruby>さんが「こちらこそ<ruby>光栄<rt>こうえい</rt></ruby>です。<ruby>蓮<rt>はす</rt></ruby>のお<ruby>茶<rt>ちゃ</rt></ruby>をどうぞ」と<ruby>言<rt>い</rt></ruby>っています。 |
| Yumi | (đưa hộp quà gỗ hai tay) <ruby>奈良<rt>なら</rt></ruby>のお<ruby>菓子<rt>かし</rt></ruby>と<ruby>京都<rt>きょうと</rt></ruby>の<ruby>抹茶<rt>まっちゃ</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>参<rt>まい</rt></ruby>りました。<ruby>気持<rt>きも</rt></ruby>ちばかりですが。<br>*(Tôi mang bánh Nara với bột matcha Kyoto đến. Chút tấm lòng thôi ạ.)* |
| Đại | (dịch) Bác Yumi mang bánh Nara với trà matcha Kyoto sang biếu bố mẹ. |
| Mẹ Mai | (cảm động, nhận hộp hai tay) Trời ơi, cảm ơn bác Yumi nhiều quá. Sang quá. Để tí nữa mở ra uống cùng nhau. |
| Đại | (dịch JP) お<ruby>義母<rt>かあ</rt></ruby>さんが<ruby>大変<rt>たいへん</rt></ruby><ruby>喜<rt>よろこ</rt></ruby>んでおります。<ruby>後<rt>あと</rt></ruby>でみんなで<ruby>頂<rt>いただ</rt></ruby>きましょうと。 |
| Hana | (chạy ra, ngạc nhiên thấy đông) Bà! Ông! Bà! Ông! (chỉ từng người) |
| (Cả bốn ông bà cùng cười, xúc động) | |

---

## Tình huống 7 — Apt Hàng Bạc phòng khách · 9:30, Tony phát ngôn xúc động về Hana

| Vai | Lời thoại |
|---|---|
| Tony | (tiếng Việt lơ lớ, nghiêm trang) Bố mẹ Mai-chan, Hana là cháu chung của hai nhà mình. Vợ chồng tôi rất biết ơn Mai-chan đã làm vợ Đại và mẹ Hana. |
| Bố Mai | (xúc động, mắt rơm rớm) Bác Tony! Câu này hai vợ chồng chúng tôi cũng muốn nói. Đại như con trai chúng tôi. |
| Mẹ Mai | (tiếng Việt) Hai bên gia đình giờ là một. Hana có bốn ông bà yêu — phước lớn của con bé. |
| Đại | (dịch JP cho Tony+Yumi) お<ruby>義父<rt>とう</rt></ruby>さんが「<ruby>大<rt>ダイ</rt></ruby>は<ruby>息子<rt>むすこ</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>」と<ruby>仰<rt>おっしゃ</rt></ruby>っています。お<ruby>義母<rt>かあ</rt></ruby>さんは「<ruby>両家<rt>りょうけ</rt></ruby>が<ruby>一<rt>ひと</rt></ruby>つ。ハナは<ruby>四人<rt>よにん</rt></ruby>の<ruby>祖父母<rt>そふぼ</rt></ruby>に<ruby>愛<rt>あい</rt></ruby>されていて<ruby>幸<rt>しあわ</rt></ruby>せ」と。 |
| Yumi | (nắm tay Mẹ Mai, JP) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<ruby>私<rt>わたし</rt></ruby>たちも<ruby>同<rt>おな</rt></ruby>じ<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Cảm ơn ông bà thực lòng. Chúng tôi cũng cùng tâm trạng.)* |
| Mẹ Mai | (nắm tay lại) Cảm ơn cô. Cô không cần dịch — bàn tay nói được rồi. |

---

## Tình huống 8 — Phố cổ HN bên Hồ Gươm · 11:30, đi dạo cả nhà ba thế hệ

| Vai | Lời thoại |
|---|---|
| Bố Mai | (tiếng Việt) Cả nhà mình đi bộ ra Hồ Gươm uống cà phê nhé. Đi bộ 10 phút từ Hàng Bạc. |
| Tony | (tiếng Việt lơ lớ) Hồ Gươm! Tôi đã muốn xem từ lâu rồi! |
| Mai | (tiếng Việt) Bác Tony với bác Yumi, mình đi từ từ thôi. Phố cổ đông xe máy lắm. |
| Hana | (ngồi xe đẩy, chỉ Tháp Rùa) Mẹ! Cái đó! Cái đó! |
| Mai | (tiếng Việt) Đó là Tháp Rùa con. Tháp giữa hồ đó. |
| Yumi | (JP, nhìn quanh) ハノイの<ruby>旧市街<rt>きゅうしがい</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素敵<rt>すてき</rt></ruby>ですね。<ruby>京都<rt>きょうと</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>う<ruby>活気<rt>かっき</rt></ruby>があります。<br>*(Phố cổ Hà Nội đẹp thật. Có sức sống khác Kyoto.)* |
| Đại | (dịch cho bố mẹ Mai) Bác Yumi nói phố cổ Hà Nội có sức sống khác với Kyoto. |
| Bố Mai | (cười) Cô Yumi mắt tinh. Phố cổ giữ được vì người Hà Nội vẫn ở đây. |

---

## Tình huống 9 — Sáng thứ Năm apt Hàng Bạc · 6:30, gọi LINE sếp Tanaka báo cáo nhỏ

*Đại đang nghỉ phép nhưng có tin nhắn từ khách NTT Smart Solutions — sếp Tanaka cần xác nhận một chi tiết hợp đồng.*

| Vai | Lời thoại |
|---|---|
| Tanaka | (LINE) グエンさん、お<ruby>休<rt>やす</rt></ruby>み<ruby>中<rt>ちゅう</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。NTT Smart の<ruby>契約書<rt>けいやくしょ</rt></ruby>で<ruby>一点<rt>いってん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>したい<ruby>箇所<rt>かしょ</rt></ruby>があります。<ruby>機能<rt>きのう</rt></ruby><ruby>追加<rt>ついか</rt></ruby><ruby>項目<rt>こうもく</rt></ruby>「<ruby>会議録<rt>かいぎろく</rt></ruby><ruby>要約<rt>ようやく</rt></ruby>」は<ruby>初期<rt>しょき</rt></ruby>フェーズに<ruby>含<rt>ふく</rt></ruby>めるとの<ruby>認識<rt>にんしき</rt></ruby>で<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Anh Nguyễn, xin lỗi đã làm phiền lúc nghỉ. Hợp đồng NTT Smart có một chỗ cần xác nhận. Hạng mục bổ sung "tóm tắt meeting note" sẽ nằm trong phase đầu — đúng vậy không?)* |
| Đại | (LINE) <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>承知<rt>しょうち</rt></ruby>いたしました。「<ruby>会議録<rt>かいぎろく</rt></ruby><ruby>要約<rt>ようやく</rt></ruby>」は<ruby>初期<rt>しょき</rt></ruby>フェーズではなく、<ruby>第二<rt>だいに</rt></ruby>フェーズの<ruby>機能<rt>きのう</rt></ruby>でございます。<ruby>当日<rt>とうじつ</rt></ruby>の<ruby>議事録<rt>ぎじろく</rt></ruby>を<ruby>後<rt>のち</rt></ruby>ほどお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Anh Tanaka, chào sáng. Em đã rõ ạ. "Tóm tắt meeting note" không phải phase đầu mà là phase hai. Em sẽ gửi minutes hôm họp sau ạ.)* |
| Tanaka | (LINE) <ruby>助<rt>たす</rt></ruby>かりました。お<ruby>休<rt>やす</rt></ruby>みを<ruby>邪魔<rt>じゃま</rt></ruby>してすみません。<br>*(Cứu tôi rồi. Xin lỗi đã làm phiền lúc nghỉ.)* |
| Đại | (LINE) とんでもございません。お<ruby>休<rt>やす</rt></ruby>み<ruby>明<rt>あ</rt></ruby>けに<ruby>正式<rt>せいしき</rt></ruby>な<ruby>議事録<rt>ぎじろく</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えてご<ruby>共有<rt>きょうゆう</rt></ruby>いたします。<br>*(Không có gì đâu ạ. Sau khi nghỉ xong em sẽ chỉnh minutes chính thức rồi chia sẻ với anh.)* |

---

## Tình huống 10 — Du thuyền vịnh Hạ Long boong trên · Thứ Bảy 13/8 18:00, ngắm hoàng hôn cả tám người

*Du thuyền Indochine Junk neo giữa vịnh. Mặt trời lặn vàng cam. Hana đang ngủ trong cabin với mẹ Mai trông.*

| Vai | Lời thoại |
|---|---|
| Yumi | (JP, đứng tựa lan can) <ruby>美<rt>うつく</rt></ruby>しいわぁ。こんな<ruby>景色<rt>けしき</rt></ruby><ruby>初<rt>はじ</rt></ruby>めて<ruby>見<rt>み</rt></ruby>たわ。<br>*(Đẹp quá. Lần đầu được thấy cảnh này.)* |
| Đại | (dịch cho bố Mai) Bác Yumi bảo lần đầu được thấy cảnh đẹp thế này. |
| Bố Mai | (tiếng Việt, ôm vai Tony) Bác Tony ơi, lần sau hai bác sang lại Việt Nam nhé. Mình đi Hội An, Đà Nẵng. Tôi đặt được hết. |
| Tony | (tiếng Việt lơ lớ) Cảm ơn nhiều! Trải nghiệm này hai vợ chồng tôi không bao giờ quên. |
| Đại | (dịch cho Yumi) お<ruby>義父<rt>とう</rt></ruby>さんが「<ruby>次<rt>つぎ</rt></ruby><ruby>来<rt>く</rt></ruby>るときはホイアンとダナンを<ruby>案内<rt>あんない</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>っています。<br>*(Bố vợ con nói "Lần sau đến tôi dẫn đi Hội An, Đà Nẵng".)* |
| Yumi | (cảm động) <ruby>是非<rt>ぜひ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Rất mong được nhờ ạ. Cảm ơn thực lòng.)* |
| Mẹ Mai | (đưa Tony chén rượu vang) Bác Tony, cụng ly đi. Mừng tám người đoàn tụ ở Hạ Long. |
| Tony | (cụng ly với cả nhóm) Cụng ly! Càn-pài! Một-Hai-Ba! |

---

## Tình huống 11 — Du thuyền cabin gia đình · 21:00, Đại Mai trò chuyện sau khi Hana ngủ

*Hana đã ngủ giữa hai gối. Đèn cabin chỉ còn ngọn đèn ngủ vàng.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, thầm) Anh ơi, hôm nay đẹp như mơ. Tám người trên một du thuyền giữa vịnh Hạ Long. |
| Đại | (tiếng Việt, thầm) Ừ. Anh không ngờ có ngày này. Bốn năm trước mình mới gặp nhau ở Senri-chuo, anh còn là sinh viên năm 2. Giờ đây tám người ngồi cùng bàn ăn. |
| Mai | (tiếng Việt) Em có chuyện này muốn nói anh. Hôm nay nhìn Hana rúc vai bà ngoại, em khóc thầm trong toilet. |
| Đại | (tiếng Việt, ôm vợ) Vì sao em? |
| Mai | (tiếng Việt) Vì em sợ Hana sẽ chỉ biết Nhật. Hôm nay em thấy con biết gọi "bà ngoại" rõ ràng. Em mừng quá. |
| Đại | (tiếng Việt) Em yên tâm. Anh em mình sẽ giữ tiếng Việt cho Hana. Anh nói tiếng Việt với con mỗi tối. Em nói tiếng Việt với con cả ngày. Mỗi năm về Hà Nội ít nhất hai lần. |
| Mai | (tiếng Việt) Cảm ơn anh. Em ngủ đây. Mai dậy sớm xem bình minh trên vịnh. |

---

## Tình huống 12 — Du thuyền boong trên · Chủ Nhật 14/8 5:30, Đại nhắn LINE Tuấn báo cáo Hizashi

*Mặt trời chưa lên, sương mờ trên vịnh. Đại ngồi một mình với cốc cà phê, mở Slack.*

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #hizashi-standup) おはようございます。ハロン<ruby>湾<rt>わん</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>五時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>です。<ruby>船<rt>ふね</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>から<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Chào buổi sáng. Hạ Long 5 giờ rưỡi sáng. Báo cáo tiến độ từ trên thuyền.)* |
| Đại | (Slack) Stripe Webhook の<ruby>四種類<rt>よんしゅるい</rt></ruby>すべて<ruby>実装<rt>じっそう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>本番環境<rt>ほんばんかんきょう</rt></ruby>でテスト<ruby>済<rt>ず</rt></ruby>みです。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby>に<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ったら、v0.9 リリース<ruby>準備<rt>じゅんび</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Đã implement xong cả 4 loại webhook Stripe. Đã test production. Thứ Ba tuần sau về Osaka em sẽ vào giai đoạn chuẩn bị release v0.9.)* |
| Tuấn | (Slack tiếng Việt) Em đỉnh thật! Trên thuyền vẫn code được. Yên tâm chơi với vợ con đi. |
| Aiko | (Slack JP) <ruby>家族<rt>かぞく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に！<ruby>仕事<rt>しごと</rt></ruby>は<ruby>戻<rt>もど</rt></ruby>ってからで OK。<br>*(Trân trọng thời gian gia đình! Việc về rồi làm cũng được.)* |
| Đại | (Slack) ありがとうございます。<ruby>太陽<rt>たいよう</rt></ruby>が<ruby>上<rt>のぼ</rt></ruby>ってきました。<ruby>後<rt>あと</rt></ruby>で<ruby>写真<rt>しゃしん</rt></ruby><ruby>送<rt>おく</rt></ruby>ります。<br>*(Cảm ơn. Mặt trời đang lên. Tí em gửi ảnh.)* |

---

## Tình huống 13 — Sân bay Nội Bài cổng khởi hành · Thứ Bảy 17/8 14:00, chia tay bố mẹ Mai

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, ôm bố) Bố ơi, tạm biệt. Tết Tây con sẽ về lại. |
| Bố Mai | (tiếng Việt, mắt đỏ) Bố mẹ nhớ lắm con ơi. Hana cũng vậy. Đại con cũng vậy. |
| Mẹ Mai | (đưa túi giấy nặng) Mang thêm bánh chưng với nem chua bố mẹ làm. Hai bác Tony Yumi ăn được mà. |
| Đại | (tiếng Việt, cảm xúc) Bố ơi mẹ ơi, cảm ơn một tuần tuyệt vời. Hana giờ biết gọi "bà ngoại" với "ông ngoại" rõ ràng rồi. |
| Bố Mai | (xoa đầu Hana) Cô Hana đợi bà nhé. Một năm bà sang Osaka thăm cháu. |
| Hana | (vẫy tay nhỏ) Bà! Bà! Đi! |
| (Cả nhà ôm nhau lần cuối trước khi qua cổng an ninh) | |

---

## Tình huống 14 — Cảnh tiếng Việt — Tàu KIX express từ sân bay về Senri-chuo · 22:00, Đại Mai tổng kết một tuần

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, ôm Hana đã ngủ) Anh ơi, em hạnh phúc quá. Hai gia đình giờ thực sự là một rồi. |
| Đại | (tiếng Việt) Ừ em. Cuộc đời mình đẹp ghê. Trời cho cả. |
| Mai | (tiếng Việt) Tổng kết một tuần đi anh — anh là người hay tổng kết. |
| Đại | (tiếng Việt) Một là thông gia hai bên gặp nhau lần đầu, đẹp như phim. Hai là đi Hạ Long tám người, ký ức cả đời. Ba là Hana 22 tháng quen được bốn ông bà. Bốn là anh duy trì được Hizashi remote 4 tiếng mỗi sáng — vẫn kịp ra v0.9 với tích hợp Stripe. |
| Mai | (tiếng Việt) Năm là tiếng Việt của Hana tiến bộ rõ. Em mừng nhất điểm này. |
| Đại | (tiếng Việt) Em ơi, đợt Tết Tây mình về lại một tuần nữa nhé. Lần này anh sẽ xin nghỉ luôn — không Hizashi remote, không Slack Thanh A. Toàn tâm với gia đình. |
| Mai | (tiếng Việt, cười khẽ) Anh nói được không đó? Anh là người không buông được laptop. |
| Đại | (tiếng Việt) Hứa với em. Tết Tây nghỉ thật. Còn giờ về nhà ngủ thôi. |

---

## Đọng lại chương 6

Đại trải qua một tuần Obon ở Hà Nội đáng nhớ. Học cách dịch song song Việt-Nhật giữa hai bên thông gia: bố Mai nói "Đại như con trai chúng tôi" → dịch JP **「大は息子のような存在」**, Yumi mang quà dùng mẫu **「気持ちばかりですが」** — câu nói khiêm tốn chuẩn khi tặng quà. Khi gặp sếp Tanaka qua LINE giữa kỳ nghỉ phép dùng **「お休み中申し訳ありません」** + **「とんでもございません」** để giữ lịch sự không gây áp lực. Hizashi standup remote sáng sớm từ Hà Nội (HN 6:00 = Osaka 8:00) duy trì 4 tiếng/ngày — Stripe Webhook 4 loại implement xong ngay trên du thuyền Hạ Long. Cảnh xúc động nhất: bốn ông bà cùng ngồi bàn ăn ở Hàng Bạc, Hana 22 tháng chạy giữa chỉ "Bà! Ông!" cho từng người. Tổng kết với Mai trên tàu KIX express: "Hai gia đình giờ thực sự là một".

> Từ vựng & mẫu câu chương này: お盆・帰省・初めまして・〜と申します・本日はお招きいただき誠にありがとうございます・気持ちばかりですが・〜を持って参りました・お休み中申し訳ありません・とんでもございません・〜という認識で合っていますか・是非お願いします・四人の祖父母・両家・両親・義父・義母・旧市街・ハロン湾・蓮のお茶・進捗報告・実装完了・本番環境

## Bí quyết chương

- **Obon = 1 tuần nghỉ chuẩn Nhật**: cơ hội duy nhất trong năm để gia đình du lịch hoặc về quê
- **Dịch song song hai bên thông gia**: BrSE chính là cây cầu — vai trò dịch tiếp tục cả ở gia đình
- **Mẫu khiêm tốn khi tặng quà**: 「気持ちばかりですが」 — "chỉ là chút tấm lòng thôi" — chuẩn mực Nhật
- **Liên lạc sếp trong kỳ nghỉ**: 「お休み中申し訳ありません」 + 「とんでもございません」 → giữ tôn trọng đôi bên
- **Hizashi remote 4h/sáng qua múi giờ +2**: HN 6:00 = Osaka 8:00 — khoảng thời gian vàng để standup trước khi cả nhà thức dậy
- **Tiếng Việt cho Hana song ngữ**: bố nói tiếng Việt mỗi tối + mẹ nói tiếng Việt cả ngày + mỗi năm về VN 2 lần

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お盆 | おぼん | BÔN | lễ Obon |
| 帰省 | きせい | QUY TỈNH | về quê |
| 実家 | じっか | THỰC GIA | nhà cha mẹ ruột |
| 楽しみ | たのしみ | NHẠC | mong chờ |
| 旧市街 | きゅうしがい | CỰU THỊ NGAI | phố cổ |
| 蓮 | はす | LIÊN | hoa sen |
| お招き | おまねき | CHIÊU | mời |
| 気持ちばかり | きもちばかり | KHÍ TRÌ | chỉ là chút tấm lòng |
| 持って参りました | もってまいりました | TRÌ THAM | mang tới (khiêm nhường) |
| 義父 | ぎふ | NGHĨA PHỤ | bố vợ/chồng |
| 義母 | ぎぼ | NGHĨA MẪU | mẹ vợ/chồng |
| 両家 | りょうけ | LƯỠNG GIA | hai bên gia đình |
| 祖父母 | そふぼ | TỔ PHỤ MẪU | ông bà |
| 仰っています | おっしゃっています | NGƯỠNG | (ngài) đang nói (tôn kính) |
| 活気 | かっき | HOẠT KHÍ | sức sống |
| お休み中 | おやすみちゅう | HƯU TRUNG | trong kỳ nghỉ |
| 箇所 | かしょ | CÁ SỞ | chỗ, điểm |
| 第二フェーズ | だいにフェーズ | ĐỆ NHỊ | phase 2 |
| とんでもございません |  |  | không có gì đâu ạ |
| 整える | ととのえる | CHỈNH | sắp xếp, chỉnh sửa |
| 景色 | けしき | CẢNH SẮC | phong cảnh |
| 是非 | ぜひ | THỊ PHI | nhất định |
| 同じ気持ち | おなじきもち | ĐỒNG KHÍ TRÌ | cùng tâm trạng |
| ハロン湾 | ハロンわん | LOAN | vịnh Hạ Long |
| 実装完了 | じっそうかんりょう | THỰC TRANG HOÀN LIỄU | implement xong |
| 本番環境 | ほんばんかんきょう | BẢN PHIÊN HOÀN CẢNH | production |
| 大切に | たいせつに | ĐẠI THIẾT | trân trọng |
| 唯一 | ゆいいつ | DUY NHẤT | duy nhất |
| 孫 | まご | TÔN | cháu |
| 立派 | りっぱ | LẬP PHÁI | sang trọng, đường hoàng |
| お心遣い | おこころづかい | TÂM KHIỂN | sự quan tâm chu đáo |
| 邪魔します | じゃまします | TÀ MA | xin phép vào (khách đến) |
| お上がりください | おあがりください | THƯỢNG | mời vào |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000007, 800000025, NULL, 'markdown_book', 'T7. Thanh A offer 正社員 ¥4.5M — Đại từ chối khéo (正社員オファー辞退)', '# Sách BrSE năm 1 · T7. Thanh A offer 正社員 ¥4.5M — Đại từ chối khéo (正社員オファー辞退)

> **Mục tiêu nhân vật:** Đại 25 tuổi, BrSE năm 1 Thanh A đã 5 tháng (9/2030). Học các mẫu hội thoại trong cuộc gặp CEO khách Nhật: (1) chào hỏi khai mạc khi CEO bay từ Tokyo về Osaka gặp riêng, (2) nghe đề nghị 正社員 + giữ thái độ trung lập trước số tiền lớn, (3) từ chối khéo léo với lý do chính đáng (keigo cao cấp), (4) nhận đề xuất thay thế "Business Development BrSE" + xin thời gian suy nghĩ, (5) bàn quyết định lớn với cofounder Hizashi qua Slack, (6) bàn với vợ Mai về cân bằng gia đình + sự nghiệp, (7) viết email phản hồi chính thức CEO bằng JP business chuẩn.

---

## Bối cảnh

Tháng 9 năm 2030, thứ Năm 12/9. Đại đã làm BrSE 5 tháng, qua ba dự án (Aichi Auto Parts + NTT Smart Solutions + Osaka Logistics) tổng giá trị ¥85 triệu. Hizashi v0.9 đã release, 350 paid user, MRR ¥343k. CEO Thanh A Takahashi-shachou (55 tuổi) bay Shinkansen từ Tokyo về văn phòng Osaka chiều nay để gặp riêng Đại — ai cũng đoán là offer 正社員 chính thức. Chương này tập trung mẫu hội thoại keigo cao cấp khi tiếp xúc với CEO và cách từ chối lời mời quan trọng một cách tôn trọng.

---

## Tình huống 1 — Slack #brse-team · Sáng thứ Năm 9:00, Tanaka thông báo cuộc gặp

| Vai | Lời thoại |
|---|---|
| Tanaka | (Slack JP) グエンさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>午後<rt>ごご</rt></ruby><ruby>二時<rt>じ</rt></ruby>、<ruby>高橋<rt>たかはし</rt></ruby><ruby>社長<rt>しゃちょう</rt></ruby>がご<ruby>来阪<rt>らいはん</rt></ruby>されます。<ruby>六階<rt>ろっかい</rt></ruby><ruby>会議室<rt>かいぎしつ</rt></ruby>Aにて<ruby>面談<rt>めんだん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Anh Nguyễn, chào sáng. Chiều nay 2 giờ Giám đốc Takahashi sẽ đến Osaka. Có lịch gặp anh tại phòng họp A tầng 6.)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>議題<rt>ぎだい</rt></ruby>は<ruby>事前<rt>じぜん</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>えますでしょうか?<br>*(Em đã rõ. Em xin được biết trước nội dung họp ạ?)* |
| Tanaka | (Slack) <ruby>正式<rt>せいしき</rt></ruby>な<ruby>議題<rt>ぎだい</rt></ruby>は<ruby>当日<rt>とうじつ</rt></ruby><ruby>社長<rt>しゃちょう</rt></ruby>から<ruby>直接<rt>ちょくせつ</rt></ruby>お<ruby>話<rt>はな</rt></ruby>しいたします。グエンさんに<ruby>関<rt>かん</rt></ruby>する<ruby>前向<rt>まえむ</rt></ruby>きなお<ruby>話<rt>はなし</rt></ruby>とだけ<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Nội dung chính thức để Giám đốc trực tiếp nói khi gặp. Tôi chỉ xin nói là chuyện tích cực liên quan đến anh.)* |
| Đại | (Slack) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>準備<rt>じゅんび</rt></ruby>して<ruby>臨<rt>のぞ</rt></ruby>みます。<br>*(Em đã rõ. Em sẽ chuẩn bị chu đáo.)* |
| Đại | (thầm tiếng Việt) "Câu chuyện tích cực" — 95% là offer 正社員. 5 tháng intern hiệu suất ổn, khả năng cao. |

---

## Tình huống 2 — Nhà vệ sinh tầng 6 · 13:50, Đại tự nhẩm chuẩn bị câu mở đầu

*Đại đứng trước gương, chỉnh cà-vạt navy, hít sâu năm lần.*

| Vai | Lời thoại |
|---|---|
| Đại | (thầm tiếng Việt) Bình tĩnh. Nếu CEO đưa offer, mình lắng nghe đầy đủ trước. Không bộc lộ thái độ ngay. Cần thời gian bàn với Mai và Tuấn-Aiko. |
| Đại | (tập câu mở đầu) <ruby>高橋社長<rt>たかはししゃちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Thưa Giám đốc Takahashi, hôm nay cảm ơn ngài đã dành thời gian quý báu.)* |

---

## Tình huống 3 — Phòng họp A tầng 6 · 14:00, Đại gặp CEO Takahashi

*Cửa phòng họp mở. CEO Takahashi mặc vest navy đậm, tóc bạc, vẻ điềm đạm. Tanaka-PM ngồi bên cạnh.*

| Vai | Lời thoại |
|---|---|
| Đại | (cúi 45 độ ở cửa) <ruby>失礼<rt>しつれい</rt></ruby>いたします。グエン・ダイでございます。<br>*(Em xin phép ạ. Em là Nguyễn Đại ạ.)* |
| Takahashi | グエンさん、お<ruby>待<rt>ま</rt></ruby>ちしておりました。どうぞお<ruby>掛<rt>か</rt></ruby>けください。<br>*(Anh Nguyễn, tôi đợi anh. Mời anh ngồi.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>失礼<rt>しつれい</rt></ruby>いたします。(ngồi xuống cách CEO 1 ghế) |
| Takahashi | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<br>*(Hôm nay cảm ơn anh dành thời gian.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby>までお<ruby>越<rt>こ</rt></ruby>しいただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Em không dám nhận ạ. Hôm nay cảm ơn ngài bận rộn vẫn sang Osaka.)* |

---

## Tình huống 4 — Phòng họp · 14:15, Takahashi đánh giá hiệu suất 5 tháng

| Vai | Lời thoại |
|---|---|
| Takahashi | グエンさんの<ruby>五<rt>ご</rt></ruby>ヶ<ruby>月間<rt>げつかん</rt></ruby>のパフォーマンスは<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>優<rt>すぐ</rt></ruby>れていらっしゃいます。<ruby>三<rt>みっ</rt></ruby>つのプロジェクトを<ruby>担当<rt>たんとう</rt></ruby>され、<ruby>合計<rt>ごうけい</rt></ruby><ruby>八千五百万円<rt>はっせんごひゃくまんえん</rt></ruby>の<ruby>受注<rt>じゅちゅう</rt></ruby>を<ruby>獲得<rt>かくとく</rt></ruby>されました。<br>*(Hiệu suất 5 tháng qua của anh rất xuất sắc. Anh phụ trách 3 dự án, tổng giá trị đơn hàng đạt 85 triệu yên.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>田中<rt>たなか</rt></ruby>さんはじめ、チームの<ruby>皆様<rt>みなさま</rt></ruby>のおかげでございます。<br>*(Em không dám nhận lời khen. Là nhờ anh Tanaka và mọi người trong nhóm ạ.)* |
| Takahashi | ご<ruby>謙遜<rt>けんそん</rt></ruby>される<ruby>姿勢<rt>しせい</rt></ruby>もまた<ruby>素晴<rt>すば</rt></ruby>らしいです。とりわけNTT Smart Solutions<ruby>案件<rt>あんけん</rt></ruby>での<ruby>初<rt>はつ</rt></ruby>ソロ<ruby>商談<rt>しょうだん</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby><ruby>内<rt>ない</rt></ruby>でも<ruby>話題<rt>わだい</rt></ruby>になっております。<br>*(Thái độ khiêm tốn cũng đáng ngợi. Đặc biệt vụ NTT Smart Solutions — lần solo đầu của anh — bên công ty cũng đang xôn xao.)* |
| Đại | <ruby>身<rt>み</rt></ruby>に<ruby>余<rt>あま</rt></ruby>るお<ruby>言葉<rt>ことば</rt></ruby>でございます。<br>*(Em không xứng nhận lời khen ấy ạ.)* |

---

## Tình huống 5 — Phòng họp · 14:20, Takahashi đề nghị 正社員

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>本日<rt>ほんじつ</rt></ruby>お<ruby>越<rt>こ</rt></ruby>しいただいた<ruby>理由<rt>りゆう</rt></ruby>でございますが、<ruby>当社<rt>とうしゃ</rt></ruby>として<ruby>正社員<rt>せいしゃいん</rt></ruby>のオファーを<ruby>差<rt>さ</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げたく<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Lý do hôm nay mời anh đến — phía công ty mong muốn đưa lời mời chính thức 正社員 cho anh.)* |
| Takahashi | <ruby>条件<rt>じょうけん</rt></ruby>でございますが、<ruby>役職<rt>やくしょく</rt></ruby>はシニアBrSE、<ruby>年収<rt>ねんしゅう</rt></ruby><ruby>四百五十万円<rt>よんひゃくごじゅうまんえん</rt></ruby>に<ruby>賞与<rt>しょうよ</rt></ruby><ruby>四<rt>よん</rt></ruby>ヶ<ruby>月分<rt>げつぶん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby><ruby>五百五十万円<rt>ごひゃくごじゅうまんえん</rt></ruby>でございます。<br>*(Điều kiện: chức danh Senior BrSE, lương cứng 4.5 triệu yên + 4 tháng thưởng, tổng cộng 5.5 triệu yên/năm.)* |
| Takahashi | <ruby>勤務<rt>きんむ</rt></ruby>は<ruby>平日<rt>へいじつ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>から<ruby>十八時<rt>じゅうはちじ</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>月平均<rt>つきへいきん</rt></ruby><ruby>二十時間<rt>にじゅうじかん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>。<ruby>将来<rt>しょうらい</rt></ruby><ruby>的<rt>てき</rt></ruby>には<ruby>役員<rt>やくいん</rt></ruby><ruby>待遇<rt>たいぐう</rt></ruby>のキャリアパスも<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れております。<br>*(Giờ làm 9-18 ngày thường, tăng ca trung bình 20 giờ/tháng. Lộ trình lâu dài có thể tiến tới chế độ ban điều hành.)* |
| Đại | (thầm tiếng Việt) Trời. Tổng ¥5.5M, gấp đôi intern hiện tại. Chức danh đẹp, lộ trình lên ban điều hành. Nhưng 20 giờ tăng ca + 5 ngày/tuần = chết Hizashi. |
| Đại | <ruby>大変<rt>たいへん</rt></ruby><ruby>光栄<rt>こうえい</rt></ruby>なご<ruby>提案<rt>ていあん</rt></ruby>を<ruby>賜<rt>たまわ</rt></ruby>り、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Em vô cùng vinh dự được nhận đề xuất quý báu này, chân thành cảm ơn ạ.)* |

---

## Tình huống 6 — Phòng họp · 14:30, Đại từ chối khéo với lý do chính đáng

| Vai | Lời thoại |
|---|---|
| Đại | しかしながら、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げますと、<ruby>私<rt>わたくし</rt></ruby>は<ruby>現在<rt>げんざい</rt></ruby>Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby>の<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>として<ruby>事業<rt>じぎょう</rt></ruby>を<ruby>運営<rt>うんえい</rt></ruby>しております。<br>*(Tuy nhiên, em xin phép thưa thật — hiện em đang vận hành công ty Hizashi với tư cách người sáng lập ạ.)* |
| Đại | <ruby>正社員<rt>せいしゃいん</rt></ruby>として<ruby>月<rt>つき</rt></ruby><ruby>二十時間<rt>にじゅうじかん</rt></ruby>の<ruby>残業<rt>ざんぎょう</rt></ruby>をお<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>けいたしますと、Hizashi<ruby>事業<rt>じぎょう</rt></ruby>の<ruby>進展<rt>しんてん</rt></ruby>に<ruby>支障<rt>ししょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>てまいります。<br>*(Nếu nhận làm chính thức với mức tăng ca 20 giờ/tháng, công việc Hizashi của em sẽ bị ảnh hưởng.)* |
| Đại | <ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby><ruby>二名<rt>にめい</rt></ruby>と<ruby>三名<rt>さんめい</rt></ruby>のチームに<ruby>対<rt>たい</rt></ruby>する<ruby>責任<rt>せきにん</rt></ruby>もございます。<br>*(Em còn có trách nhiệm với hai cofounder và đội ngũ ba người ạ.)* |
| Đại | <ruby>誠<rt>まこと</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんが、<ruby>今回<rt>こんかい</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>は<ruby>辞退<rt>じたい</rt></ruby>させていただきたく<ruby>存<rt>ぞん</rt></ruby>じます。<br>*(Em vô cùng xin lỗi, xin phép được từ chối lời mời lần này ạ.)* |
| Takahashi | (gật đầu, không buồn) なるほど。<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>として<ruby>事業<rt>じぎょう</rt></ruby>に<ruby>専念<rt>せんねん</rt></ruby>されたいお<ruby>気持<rt>きも</rt></ruby>ち、<ruby>大変<rt>たいへん</rt></ruby>よく<ruby>理解<rt>りかい</rt></ruby>できます。<br>*(Tôi hiểu rồi. Tâm trạng muốn chuyên tâm cho sự nghiệp với tư cách nhà sáng lập, tôi thấu hiểu hoàn toàn.)* |

---

## Tình huống 7 — Phòng họp · 14:45, Takahashi đề xuất phương án thay thế

| Vai | Lời thoại |
|---|---|
| Takahashi | グエンさんの<ruby>能力<rt>のうりょく</rt></ruby>は<ruby>当社<rt>とうしゃ</rt></ruby>にとって<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>貴重<rt>きちょう</rt></ruby>でございます。<ruby>代替案<rt>だいたいあん</rt></ruby>をご<ruby>提案<rt>ていあん</rt></ruby>させていただけますでしょうか。<br>*(Năng lực của anh vô cùng quý giá với công ty. Cho phép tôi xin đề xuất một phương án thay thế.)* |
| Đại | お<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, em xin nghe ạ.)* |
| Takahashi | 「Business Development BrSE」<ruby>役職<rt>やくしょく</rt></ruby>でございます。<ruby>勤務<rt>きんむ</rt></ruby>は<ruby>週<rt>しゅう</rt></ruby><ruby>三日<rt>みっか</rt></ruby>、<ruby>月水金<rt>げつすいきん</rt></ruby>。<ruby>月給<rt>げっきゅう</rt></ruby><ruby>三十五万円<rt>さんじゅうごまんえん</rt></ruby>、<ruby>残業<rt>ざんぎょう</rt></ruby>ゼロ<ruby>方針<rt>ほうしん</rt></ruby>です。<br>*(Chức danh "Business Development BrSE". Giờ làm 3 ngày/tuần, thứ Hai-Tư-Sáu. Lương 350 ngàn yên/tháng, chính sách không tăng ca.)* |
| Takahashi | <ruby>役割<rt>やくわり</rt></ruby>は<ruby>新規<rt>しんき</rt></ruby>クライアント<ruby>開拓<rt>かいたく</rt></ruby>、<ruby>提案<rt>ていあん</rt></ruby><ruby>支援<rt>しえん</rt></ruby>、<ruby>戦略会議<rt>せんりゃくかいぎ</rt></ruby>への<ruby>参加<rt>さんか</rt></ruby>でございます。<br>*(Vai trò: khai phá khách mới, hỗ trợ đề xuất, tham gia họp chiến lược.)* |
| Đại | (thầm tiếng Việt) Trời. Tăng từ ¥280k intern → ¥350k, chỉ 3 ngày/tuần. Còn 4 ngày cho Hizashi. Đề xuất quá khéo. |
| Đại | <ruby>大変<rt>たいへん</rt></ruby><ruby>魅力的<rt>みりょくてき</rt></ruby>なご<ruby>提案<rt>ていあん</rt></ruby>でございます。<ruby>一週間<rt>いっしゅうかん</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>家族<rt>かぞく</rt></ruby>および<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>させていただき、ご<ruby>回答<rt>かいとう</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Đề xuất rất hấp dẫn ạ. Trong vòng một tuần em xin phép bàn với gia đình và đồng sáng lập rồi trả lời ạ.)* |
| Takahashi | <ruby>承知<rt>しょうち</rt></ruby>いたしました。お<ruby>返事<rt>へんじ</rt></ruby>をお<ruby>待<rt>ま</rt></ruby>ちしております。<br>*(Đã rõ. Tôi sẽ chờ phản hồi của anh.)* |

---

## Tình huống 8 — Cửa phòng họp · 15:30, chào kết thúc

| Vai | Lời thoại |
|---|---|
| Đại | (cúi 45 độ) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<ruby>来週中<rt>らいしゅうちゅう</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ずご<ruby>回答<rt>かいとう</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Hôm nay em chân thành cảm ơn. Trong tuần sau em nhất định sẽ trả lời ạ.)* |
| Takahashi | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng, mong anh.)* |
| Tanaka | (sau khi CEO rời) グエンさん、お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>誠実<rt>せいじつ</rt></ruby>なご<ruby>対応<rt>たいおう</rt></ruby>で<ruby>素晴<rt>すば</rt></ruby>らしかったです。<br>*(Anh Nguyễn, vất vả rồi. Ứng xử thành thật, tuyệt vời lắm.)* |
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>事前<rt>じぜん</rt></ruby>に<ruby>情報<rt>じょうほう</rt></ruby>をいただいておりまして<ruby>大変<rt>たいへん</rt></ruby><ruby>助<rt>たす</rt></ruby>かりました。ありがとうございました。<br>*(Anh Tanaka, em được anh báo trước nên rất ơn anh. Cảm ơn anh ạ.)* |

---

## Tình huống 9 — Quán cà phê dưới văn phòng · 16:00, Đại Slack ngay với Tuấn+Aiko

*Đại vào quán Doutor góc đường, gọi cà phê đen, mở MacBook.*

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #hizashi-cofounders, tiếng Việt) Anh chị! Tin lớn: CEO Takahashi vừa đưa hai phương án. Em chia sẻ luôn.<br>**Phương án A**: 正社員 Senior BrSE tổng ¥5.5M/năm + 20h tăng ca/tháng + 5 ngày/tuần<br>**Phương án B**: BD BrSE 3 ngày/tuần (Hai-Tư-Sáu) ¥350k/tháng + không tăng ca |
| Tuấn | (Slack tiếng Việt) Em chọn B — khỏi bàn. A vắt kiệt em ra. B vẫn cho dòng tiền ổn định mà có 4 ngày cho Hizashi. |
| Aiko | (Slack JP) <ruby>同感<rt>どうかん</rt></ruby>。Bが<ruby>圧倒的<rt>あっとうてき</rt></ruby>に<ruby>有利<rt>ゆうり</rt></ruby>です。Hizashiが<ruby>週<rt>しゅう</rt></ruby><ruby>四日<rt>よっか</rt></ruby>になると、<ruby>生産性<rt>せいさんせい</rt></ruby>がはっきり<ruby>上<rt>あ</rt></ruby>がります。<br>*(Đồng ý. B áp đảo. Hizashi có 4 ngày/tuần thì năng suất tăng rõ.)* |
| Đại | (Slack tiếng Việt) Em tính tài chính: B → ¥350k Thanh A + ¥150k lương Hizashi = ¥500k cá nhân. Cao hơn mức intern ¥430k. Lo cho Mai-Hana thoải mái. |
| Tuấn | (Slack) Cộng thêm Hizashi được 4 ngày thay vì 3 ngày tối → năng suất tăng 30%. Em chốt B đi. |
| Đại | (Slack) Em cần bàn với Mai tối nay. Mai là người liên quan lớn nhất — quyết định lớn nhất là cho gia đình. |
| Aiko | (Slack JP) <ruby>当然<rt>とうぜん</rt></ruby>です。<ruby>奥<rt>おく</rt></ruby>さんと<ruby>納得<rt>なっとく</rt></ruby>のいく<ruby>結論<rt>けつろん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。<br>*(Đương nhiên. Anh cần bàn với vợ rồi đưa kết luận hai bên đều thoải mái.)* |

---

## Tình huống 10 — Apt Senri-chuo · 22:30, Đại Mai bàn về quyết định

*Hana đã ngủ trong phòng. Mai ngồi bàn ăn, pha trà sen Hà Nội mẹ gửi sang.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi, ngồi đây anh kể chuyện hôm nay. CEO Takahashi của Thanh A bay từ Tokyo về Osaka gặp anh. |
| Mai | (tiếng Việt) Anh đoán đúng rồi à? Offer 正社員? |
| Đại | (tiếng Việt) Đúng. Hai phương án. A: ¥5.5M/năm Senior BrSE + 20h tăng ca/tháng. B: BD BrSE 3 ngày/tuần ¥350k + không tăng ca. |
| Mai | (tiếng Việt, lắng nghe kỹ) Anh ơi, em hỏi một câu. Phương án B nghĩa là anh sẽ ở nhà sáng thứ Ba với thứ Năm với thứ Bảy với Chủ Nhật à? |
| Đại | (tiếng Việt) Đúng rồi. Sáng thứ Ba với thứ Năm anh ở nhà chăm Hana 8-9 giờ trước khi cô giáo đến đón đi nhà trẻ. Anh cũng có thể đưa Hana đi nhà trẻ hai buổi/tuần. |
| Mai | (tiếng Việt, cảm động, mắt rưng rưng) Anh ơi. Em mừng quá. Hana 22 tháng — giai đoạn vàng cha mẹ chơi với con. Em không muốn anh bỏ lỡ. |
| Đại | (tiếng Việt) Em đồng ý chọn B luôn nhé? Anh muốn nghe ý kiến em trước khi trả lời CEO. |
| Mai | (tiếng Việt, gật) Đồng ý. Tài chính ổn định + Hizashi tăng tốc + Hana có bố ở nhà nhiều hơn → ba bên cùng có lợi. |
| Đại | (tiếng Việt, ôm Mai) Cảm ơn em. Mai lúc nào cũng là người quyết định đúng cho gia đình. |

---

## Tình huống 11 — Bàn làm việc apt · Thứ Sáu 13/9 9:00, Đại soạn email JP gửi CEO

*Đại mặc áo phông nhà, mở Notion soạn bản nháp email, rồi paste sang Gmail.*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc lại nháp email JP)<br><br>**Subject**: ご<ruby>提案<rt>ていあん</rt></ruby>「Business Development BrSE」<ruby>役職<rt>やくしょく</rt></ruby>について<br><br><ruby>高橋<rt>たかはし</rt></ruby><ruby>社長<rt>しゃちょう</rt></ruby><br><br>お<ruby>世話<rt>せわ</rt></ruby>になっております。グエン・ダイでございます。<br><br><ruby>先日<rt>せんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby><ruby>大阪<rt>おおさか</rt></ruby>までお<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br><br>ご<ruby>提案<rt>ていあん</rt></ruby>いただきました「Business Development BrSE」<ruby>役職<rt>やくしょく</rt></ruby>について、<ruby>家族<rt>かぞく</rt></ruby>および<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>いたしました<ruby>結果<rt>けっか</rt></ruby>、<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けいたします。<br><br><ruby>開始時期<rt>かいしじき</rt></ruby>は<ruby>十月一日付<rt>じゅうがつついたちづ</rt></ruby>けを<ruby>希望<rt>きぼう</rt></ruby>いたします。<br><br><ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き、<ruby>当社<rt>とうしゃ</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>できますよう<ruby>努<rt>つと</rt></ruby>めてまいります。<br><br><ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br><br>グエン・ダイ |
| Đại | (thầm, tiếng Việt) Đọc lại lần thứ ba. OK. Gửi. |

---

## Tình huống 12 — Slack #brse-team · Thứ Sáu 9:30, Đại báo cáo sếp Tanaka và CEO Thanh

| Vai | Lời thoại |
|---|---|
| Đại | (Slack JP) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>高橋社長<rt>たかはししゃちょう</rt></ruby>より<ruby>頂戴<rt>ちょうだい</rt></ruby>したご<ruby>提案<rt>ていあん</rt></ruby>「Business Development BrSE」<ruby>役職<rt>やくしょく</rt></ruby>を<ruby>謹<rt>つつし</rt></ruby>んでお<ruby>受<rt>う</rt></ruby>けいたします。<ruby>十月一日<rt>じゅうがつついたち</rt></ruby>より<ruby>正式<rt>せいしき</rt></ruby>に<ruby>開始<rt>かいし</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Anh Tanaka, em xin trân trọng nhận lời đề xuất "BD BrSE" từ Giám đốc Takahashi. Chính thức bắt đầu từ 1/10.)* |
| Tanaka | (Slack JP) <ruby>素晴<rt>すば</rt></ruby>らしい！グエンさん、これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tuyệt vời! Anh Nguyễn, mong tiếp tục cộng tác.)* |
| Đại | (Slack tiếng Việt, @Thanh) Anh Thanh ơi! Em đã nhận vị trí BD BrSE, bắt đầu 1/10. Cảm ơn anh đã hỗ trợ em 5 tháng intern. |
| Thanh (leader BrSE) | (Slack tiếng Việt, cười) Em đỉnh! BD BrSE 3 ngày + Hizashi 4 ngày = tối ưu rồi. Anh nghe sếp Tanaka kể là Takahashi-shachou thán phục, bảo "founder thực sự hiếm thấy" khi nghe em từ chối A. |
| Đại | (Slack tiếng Việt) Cảm ơn anh. Em sẽ không phụ lòng anh và CEO. |

---

## Tình huống 13 — Apt Senri-chuo bàn ăn · Thứ Sáu 22:00, Đại Mai ăn mừng nhẹ

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt, rót rượu vang Yamanashi) Em ơi, mình cụng ly. Quyết định lớn hôm nay. |
| Mai | (tiếng Việt, cụng ly) Mừng anh. Mừng cả nhà. |
| Đại | (tiếng Việt) Tuần sau bắt đầu chuẩn bị ra mắt Hizashi v1.0 tháng 11. Cú đẩy lớn. Em ủng hộ anh tới đâu nhé? |
| Mai | (tiếng Việt, cười) Em ủng hộ anh đến v100.0. Có một điều kiện duy nhất. |
| Đại | (tiếng Việt) Gì em? |
| Mai | (tiếng Việt) Sáng thứ Ba với thứ Năm anh phải đưa Hana đi nhà trẻ thật. Không được nuốt lời. |
| Đại | (tiếng Việt, giơ tay thề) Anh hứa. Bắt đầu từ thứ Ba 1/10. |
| Mai | (tiếng Việt) Vậy là mình đã có ngày bắt đầu rồi. |

---

## Tình huống 14 — Cảnh tiếng Việt — Đêm phòng làm việc · Thứ Sáu 23:30, Đại gọi LINE bố mẹ HN báo tin

| Vai | Lời thoại |
|---|---|
| Đại | (LINE call, tiếng Việt) Bố ơi mẹ ơi, con gọi báo tin. CEO Thanh A mời con làm chính thức. |
| Bố Mai | (tiếng Việt, ngạc nhiên vui) Trời ơi! Con giỏi quá! Bao nhiêu lương? |
| Đại | (tiếng Việt) Họ đề nghị ¥5.5M/năm nhưng con từ chối. Con nhận phương án thay thế ¥350k/tháng làm 3 ngày/tuần để có 4 ngày cho Hizashi. |
| Mẹ Mai | (tiếng Việt) Sao lại từ chối lương cao hả con? |
| Đại | (tiếng Việt) Mẹ ơi, lương cao thì phải làm 5 ngày + tăng ca. Hizashi sẽ chết. Còn phương án thay thế cho con cân được cả hai. |
| Bố Mai | (tiếng Việt, gật gù) Con tính chuẩn. Bố cũng nghĩ thế. Tiền không phải là tất cả. Mà con nhớ chăm Mai với Hana. |
| Đại | (tiếng Việt) Vâng bố. Sáng thứ Ba với thứ Năm con đưa Hana đi nhà trẻ. Mai con bắt đầu 1/10. |
| Mẹ Mai | (tiếng Việt, cảm động) Mẹ tự hào con quá. Mai gọi Mai để mẹ chúc mừng riêng nhé. |
| Đại | (tiếng Việt) Vâng mẹ. Con cúp đây. Mai con gọi lại. Bố mẹ ngủ ngon. |

---

## Đọng lại chương 7

Đại trải qua một ngày bước ngoặt nghề nghiệp. Học cách chào hỏi CEO Nhật cấp cao bằng **「本日はお忙しい中、大阪までお越しいただき誠にありがとうございます」** + cúi 45 độ ở cửa. Khi CEO khen dùng **「身に余るお言葉でございます」** thay vì "không phải, không phải" như học sinh. Khi từ chối lời mời 正社員 ¥5.5M dùng cấu trúc 3 lớp: (1) cảm ơn **「大変光栄なご提案を賜り誠にありがとうございます」**, (2) lý do chính đáng **「現在Hizashi株式会社の創業者として事業を運営しております」**, (3) chốt từ chối **「今回のお話は辞退させていただきたく存じます」**. CEO Takahashi đáp lại bằng đề xuất ngược "Business Development BrSE" 3 ngày/tuần ¥350k — gấp đôi đôi bên cùng có lợi. Đại xin **「一週間以内に家族および共同創業者と相談させていただき、ご回答申し上げます」** — đúng quy trình. Tối về bàn với Mai: cảnh xúc động khi Mai biết Đại có thể đưa Hana đi nhà trẻ hai buổi/tuần. Hôm sau gửi email JP business chính thức với cấu trúc 5 phần (kèm câu chốt **「謹んでお受けいたします」**). Báo cáo Slack với sếp Tanaka + CEO Thanh. Đêm gọi LINE bố mẹ HN — bố Mai gật gù "Con tính chuẩn. Tiền không phải là tất cả".

> Từ vựng & mẫu câu chương này: 正社員オファー・年収・賞与・残業・辞退・代替案・週三日勤務・Business Development BrSE・大変光栄なご提案を賜り・誠にありがとうございます・正直に申し上げますと・〜の創業者として事業を運営しております・〜に支障が出てまいります・〜辞退させていただきたく存じます・身に余るお言葉でございます・恐縮でございます・謹んでお受けいたします・一週間以内に・家族および共同創業者と相談させていただき・何卒よろしくお願い申し上げます

## Bí quyết chương

- **Tiếp xúc CEO cấp cao**: cúi 45 độ ở cửa + ngồi cách một ghế + ngôn ngữ keigo cao nhất (〜ていらっしゃいます、お越しいただき、賜る、申し上げる)
- **Cấu trúc 3 lớp từ chối**: cảm ơn lời đề nghị + lý do chính đáng cụ thể + chốt câu xin lỗi từ chối — không vòng vo
- **Đáp lời khen kiểu Nhật**: dùng 「身に余るお言葉でございます」 hoặc 「恐縮でございます」 thay vì "không phải" — vừa khiêm tốn vừa lịch sự
- **Xin thời gian suy nghĩ**: "一週間以内に家族および共同創業者と相談させていただき" — chính thức + có thời hạn cụ thể
- **Bàn quyết định lớn với vợ**: hỏi vợ trước khi trả lời CEO — quyết định lớn nhất là cho gia đình
- **Email JP business 5 phần**: subject + greeting + cảm ơn lần gặp + nội dung quyết định + chốt 「何卒よろしくお願い申し上げます」
- **Cân lương + thời gian gia đình**: ¥350k/3 ngày + ¥150k Hizashi = ¥500k cá nhân + có 2 sáng/tuần đưa con đi nhà trẻ → tối ưu hơn ¥5.5M chính thức

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 社長 | しゃちょう | XÃ TRƯỞNG | giám đốc |
| 来阪 | らいはん | LAI PHẢN | đến Osaka |
| 面談 | めんだん | DIỆN ĐÀM | gặp mặt trao đổi |
| 議題 | ぎだい | NGHỊ ĐỀ | nội dung họp |
| 前向き | まえむき | TIỀN HƯỚNG | tích cực |
| 臨む | のぞむ | LÂM | đối mặt, tham gia |
| お掛けください | おかけください | QUÁI | mời ngồi |
| 受注 | じゅちゅう | THỤ CHÚ | nhận đơn hàng |
| 獲得 | かくとく | HOẠCH ĐẮC | đạt được |
| ご謙遜 | ごけんそん | KHIÊM TỐN | sự khiêm tốn |
| 姿勢 | しせい | TƯ THẾ | thái độ, tư thế |
| 商談 | しょうだん | THƯƠNG ĐÀM | thương lượng kinh doanh |
| 話題 | わだい | THOẠI ĐỀ | đề tài, chủ đề |
| 身に余る | みにあまる | THÂN DƯ | vượt quá năng lực |
| 賜る | たまわる | TỨ | được ban (tôn kính) |
| 光栄 | こうえい | QUANG VINH | vinh dự |
| 役職 | やくしょく | DỊCH CHỨC | chức danh |
| 年収 | ねんしゅう | NIÊN THU | lương năm |
| 賞与 | しょうよ | THƯỞNG DỮ | thưởng |
| 待遇 | たいぐう | ĐÃI NGỘ | đãi ngộ |
| 視野 | しや | THỊ DÃ | tầm nhìn |
| 運営 | うんえい | VẬN DOANH | vận hành (doanh nghiệp) |
| 引き受け | ひきうけ | DẪN THỤ | đảm nhận |
| 進展 | しんてん | TIẾN TRIỂN | tiến triển |
| 支障 | ししょう | CHI CHƯỚNG | trở ngại |
| 共同創業者 | きょうどうそうぎょうしゃ | CỘNG ĐỒNG SÁNG NGHIỆP | đồng sáng lập |
| 責任 | せきにん | TRÁCH NHIỆM | trách nhiệm |
| 辞退 | じたい | TỪ THOÁI | từ chối khéo |
| 専念 | せんねん | CHUYÊN NIỆM | chuyên tâm |
| 理解 | りかい | LÝ GIẢI | thấu hiểu |
| 能力 | のうりょく | NĂNG LỰC | năng lực |
| 貴重 | きちょう | QUÝ TRỌNG | quý giá |
| 代替案 | だいたいあん | ĐẠI THẾ ÁN | phương án thay thế |
| 役割 | やくわり | DỊCH CÁT | vai trò |
| 新規 | しんき | TÂN QUY | mới |
| 開拓 | かいたく | KHAI THÁC | khai phá |
| 戦略会議 | せんりゃくかいぎ | CHIẾN LƯỢC HỘI NGHỊ | họp chiến lược |
| 魅力的 | みりょくてき | MỴ LỰC ĐÍCH | hấp dẫn |
| 回答 | かいとう | HỒI ĐÁP | trả lời |
| 謹んで | つつしんで | CẨN | xin trân trọng |
| 開始時期 | かいしじき | KHAI THỦY THỜI KỲ | thời điểm bắt đầu |
| 何卒 | なにとぞ | HÀ TỐT | xin/mong (kính ngữ cao) |
| 貢献 | こうけん | CỐNG HIẾN | đóng góp |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000008, 800000025, NULL, 'markdown_book', 'T8. Chuẩn bị ra mắt Hizashi v1.0 — PR + ProductHunt + influencer (v1.0ローンチ準備)', '# Sách BrSE năm 1 · T8. Chuẩn bị ra mắt Hizashi v1.0 — PR + ProductHunt + influencer (v1.0ローンチ準備)

> **Mục tiêu nhân vật:** Đại 25 tuổi, vừa bắt đầu BD BrSE 3 ngày/tuần (1/10/2030), 4 ngày còn lại dồn cho Hizashi v1.0 ra mắt 11/11. Học các mẫu hội thoại của founder chuẩn bị launch: (1) chào hỏi ngày đầu vai trò mới với sếp Tanaka, (2) brainstorm kế hoạch ra mắt với cofounder qua Slack, (3) email mời hợp tác influencer JP keigo, (4) trao đổi với phóng viên TechCrunch JP qua LINE, (5) báo cáo Stripe payment go-live + stress test, (6) phỏng vấn TechCrunch JP trực tiếp 60 phút, (7) đưa Hana đi nhà trẻ sáng thứ Năm + hội thoại cô giáo.

---

## Bối cảnh

Tháng 10-11 năm 2030. 1/10 Đại bắt đầu vai trò Business Development BrSE 3 ngày/tuần (Hai-Tư-Sáu). Hizashi 350 paid user cuối T7, MRR ¥343k, burn rate ¥1.32M, runway 18 tháng. v1.0 launch target 11/11/2030 (1.1.1 = ngày của bắt đầu mới). Cofounder: Tuấn (CTO ở Osaka) + Aiko (designer Nhật ở Tokyo, remote). Mai làm hướng dẫn viên 3 buổi/tuần, Hana 24 tháng vừa qua sinh nhật 2 tuổi tuần trước. Chương này tập trung mẫu câu của founder chuẩn bị ra mắt sản phẩm: email mời hợp tác + trao đổi báo chí + báo cáo tiến độ kỹ thuật.

---

## Tình huống 1 — Office Thanh A tầng 6 · Sáng thứ Hai 1/10 9:00, BD Day 1 chào hỏi

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさん、おはようございます。Business Development BrSE Day 1、おめでとうございます。<br>*(Anh Nguyễn, chào sáng. Chúc mừng BD BrSE Day 1.)* |
| Đại | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>新<rt>あら</rt></ruby>たな<ruby>役職<rt>やくしょく</rt></ruby>でお<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きどうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Chào sáng ạ. Từ hôm nay em xin được nhờ cậy với vai trò mới. Mong tiếp tục được giúp đỡ.)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>のアジェンダでございます。<ruby>一<rt>いち</rt></ruby>、<ruby>新規<rt>しんき</rt></ruby>クライアントパイプラインの<ruby>確認<rt>かくにん</rt></ruby>。<ruby>二<rt>に</rt></ruby>、NTT Smart Solutions <ruby>第二期<rt>だいにき</rt></ruby><ruby>提案<rt>ていあん</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、ソニー<ruby>系子会社<rt>けいこがいしゃ</rt></ruby>との<ruby>初回<rt>しょかい</rt></ruby><ruby>商談<rt>しょうだん</rt></ruby>。<br>*(Agenda hôm nay. 1. Xem pipeline khách mới. 2. Chuẩn bị đề xuất phase 2 NTT Smart Solutions. 3. Họp lần đầu với công ty con của Sony.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>早速<rt>さっそく</rt></ruby><ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Em đã rõ. Mình bắt đầu ngay nhé.)* |
| Đại | (thầm tiếng Việt) Vai trò BD = kết hợp kinh doanh và kỹ thuật. Em sẽ học được rất nhiều kỹ năng khác với BrSE thuần. |

---

## Tình huống 2 — Apt Senri-chuo phòng làm việc · Tối thứ Hai 21:00, brainstorm kế hoạch v1.0 với cofounder

*Đại mở Notion chia sẻ màn hình qua Zoom. Tuấn ở apt cách 3 ga, Aiko ở Tokyo.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Anh chị! Mình có 6 tuần đến ngày ra mắt 11/11. Em đã viết bản nháp kế hoạch trên Notion. |
| Đại | (tiếng Việt) **Tuần 1-2 (1-15/10)**: Hoàn thiện tính năng v1.0 + sửa lỗi. **Tuần 3 (16-22/10)**: Tiếp cận báo chí + hợp tác influencer. **Tuần 4 (23-29/10)**: Thiết kế lại landing page + xây danh sách email. **Tuần 5 (30/10-5/11)**: Phỏng vấn TechCrunch JP + bộ tài liệu truyền thông. **Tuần 6 (6-11/11)**: Chuẩn bị D-day + cấu hình ProductHunt + ra mắt nội bộ. |
| Tuấn | (tiếng Việt) Em viết thông cáo báo chí JP+VN + kịch bản video demo kỹ thuật. Anh sẽ lo backend kiểm thử tải 10k user đồng thời + tối ưu p95 latency. |
| Aiko | (JP) <ruby>私<rt>わたし</rt></ruby>はランディングページのリデザインとメディアキット(<ruby>ロゴ<rt>ろご</rt></ruby> + <ruby>スクリーンショット<rt>すくりーんしょっと</rt></ruby> + ワンページャー)を<ruby>担当<rt>たんとう</rt></ruby>します。<ruby>五人<rt>ごにん</rt></ruby>のインフルエンサー<ruby>向<rt>む</rt></ruby>けの<ruby>素材<rt>そざい</rt></ruby>も<ruby>準備<rt>じゅんび</rt></ruby>します。<br>*(Em phụ trách thiết kế lại landing page và media kit — logo, screenshot, one-pager. Cả tài liệu cho 5 influencer em cũng chuẩn bị luôn.)* |
| Đại | (tiếng Việt) Danh sách 5 đối tác em đã chuẩn bị:<br>1. **Yoshi-sensei** (YouTube 200k, giáo viên Nhật dạy người Việt)<br>2. **Phạm Hùng Linh** (YouTube 50k, công nghệ Việt tại Nhật)<br>3. **Akari** (Instagram 180k, lifestyle Nhật, vợ là người Việt)<br>4. **Sato-san** TechCrunch JP (do Anri giới thiệu)<br>5. **VietWorks Japan** (cộng đồng 30k người Việt tại Nhật) |
| Tuấn | (tiếng Việt) Em chuẩn bị email mẫu cho từng người. Mỗi người tone khác. |
| Đại | (tiếng Việt) Đúng. Yoshi-sensei dùng keigo. Phạm Hùng Linh dùng tiếng Việt thân thiện. Akari dùng JP casual. Sato dùng JP business. VietWorks dùng tiếng Việt cộng đồng. |

---

## Tình huống 3 — Apt phòng làm việc · Thứ Tư 16/10 10:00, Đại soạn email JP gửi Yoshi-sensei

*Đại ngồi máy, mở Gmail soạn email tiếng Nhật.*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc lại nháp email JP)<br><br>**Subject**: <ruby>初<rt>はじ</rt></ruby>めまして / Hizashi v1.0 ローンチ<ruby>協力<rt>きょうりょく</rt></ruby>のお<ruby>願<rt>ねが</rt></ruby>い<br><br><ruby>吉田先生<rt>よしだせんせい</rt></ruby><br><br><ruby>初<rt>はじ</rt></ruby>めまして。Hizashi<ruby>株式会社<rt>かぶしきがいしゃ</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br><br><ruby>先生<rt>せんせい</rt></ruby>のYouTubeチャンネル「<ruby>吉田先生<rt>よしだせんせい</rt></ruby>のベトナム<ruby>人向<rt>じんむ</rt></ruby>け<ruby>日本語<rt>にほんご</rt></ruby>」を<ruby>三年前<rt>さんねんまえ</rt></ruby>より<ruby>拝見<rt>はいけん</rt></ruby>しております。<ruby>先生<rt>せんせい</rt></ruby>の<ruby>丁寧<rt>ていねい</rt></ruby>な<ruby>解説<rt>かいせつ</rt></ruby>に<ruby>常<rt>つね</rt></ruby>に<ruby>感銘<rt>かんめい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けております。<br><br>このたび、<ruby>当社<rt>とうしゃ</rt></ruby>では<ruby>来<rt>きた</rt></ruby>る<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>十一日<rt>じゅういちにち</rt></ruby>にHizashi v1.0を<ruby>正式<rt>せいしき</rt></ruby>ローンチする<ruby>予定<rt>よてい</rt></ruby>でございます。つきましては、<ruby>先生<rt>せんせい</rt></ruby>のチャンネルにて<ruby>本<rt>ほん</rt></ruby>アプリのレビュー<ruby>動画<rt>どうが</rt></ruby>を<ruby>掲載<rt>けいさい</rt></ruby>していただけませんでしょうか。<br><br>スポンサー<ruby>料<rt>りょう</rt></ruby>として<ruby>二十万円<rt>にじゅうまんえん</rt></ruby>、<ruby>並<rt>なら</rt></ruby>びに<ruby>一年間<rt>いちねんかん</rt></ruby>のプレミアムアカウントを<ruby>進呈<rt>しんてい</rt></ruby>させていただきます。<br><br>ご<ruby>検討<rt>けんとう</rt></ruby>のほど、<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br><br>グエン・ダイ |
| Đại | (thầm) OK. Send. |

---

## Tình huống 4 — Apt phòng làm việc · Thứ Năm 17/10 14:00, Yoshi-sensei phản hồi

| Vai | Lời thoại |
|---|---|
| Yoshi-sensei | (email JP) グエンさん、ご<ruby>連絡<rt>れんらく</rt></ruby>ありがとうございます。<ruby>素晴<rt>すば</rt></ruby>らしいご<ruby>提案<rt>ていあん</rt></ruby>です。<ruby>喜<rt>よろこ</rt></ruby>んでレビューさせていただきます。アプリのデモアカウントを<ruby>頂戴<rt>ちょうだい</rt></ruby>できますでしょうか。<br>*(Anh Nguyễn, cảm ơn anh liên hệ. Đề xuất tuyệt vời. Tôi vui lòng nhận làm review. Anh cho tôi xin tài khoản demo nhé?)* |
| Đại | (email phản hồi JP) <ruby>吉田先生<rt>よしだせんせい</rt></ruby>、ご<ruby>承諾<rt>しょうだく</rt></ruby>いただき<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。デモアカウントと<ruby>機能<rt>きのう</rt></ruby><ruby>説明<rt>せつめい</rt></ruby><ruby>資料<rt>しりょう</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>いたします。<ruby>動画<rt>どうが</rt></ruby><ruby>公開<rt>こうかい</rt></ruby><ruby>日<rt>び</rt></ruby>は<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>十一日<rt>じゅういちにち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いできますでしょうか。<br>*(Sensei, cảm ơn thầy đã nhận lời. Em đính kèm tài khoản demo và tài liệu giải thích tính năng. Ngày phát video em xin lịch sáng 9 giờ ngày 11/11 ạ?)* |
| Yoshi-sensei | (email) はい、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>当日<rt>とうじつ</rt></ruby><ruby>朝<rt>あさ</rt></ruby>に<ruby>同時<rt>どうじ</rt></ruby><ruby>公開<rt>こうかい</rt></ruby>いたします。<br>*(Vâng, tôi đã rõ. Sẽ phát đồng thời sáng hôm đó.)* |
| Đại | (Slack #hizashi-cofounders) Yoshi-sensei đồng ý rồi! Video phát đồng thời 9:00 sáng 11/11. Tiếp cận 200k người. 1/5 đã chốt. |
| Aiko | (Slack JP) <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>残<rt>のこ</rt></ruby>り<ruby>四人<rt>よにん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tuyệt vời! 4 người còn lại mình cố gắng nhé.)* |

---

## Tình huống 5 — Apt làm việc · Thứ Sáu 18/10 11:00, Đại nhắn LINE Phạm Hùng Linh

| Vai | Lời thoại |
|---|---|
| Đại | (LINE tiếng Việt) Chào anh Linh, em là Đại từ Hizashi. Anri-san của Eureka VC giới thiệu anh cho em. |
| Hùng Linh | (LINE) Chào Đại! Anh có nghe Anri kể về em. Founder Hizashi đỉnh. Có chuyện gì giúp được? |
| Đại | (LINE) Em đang chuẩn bị ra mắt v1.0 ngày 11/11. Muốn mời anh làm video review trên kênh anh — kênh 50k người Việt tại Nhật. Cộng đồng đúng đối tượng của Hizashi. |
| Hùng Linh | (LINE) OK em. Anh thích sản phẩm có ý nghĩa cộng đồng. Phí thế nào? |
| Đại | (LINE) Em đề xuất ¥150k tài trợ + 1 năm premium cho anh + 50 mã giảm giá cho follower của anh. |
| Hùng Linh | (LINE) Deal. Em gửi anh làm mẫu + script gợi ý. Anh sẽ làm theo phong cách kênh anh nhưng giữ thông điệp chính của em. |
| Đại | (LINE) Cảm ơn anh nhiều. Em gửi luôn qua email. |

---

## Tình huống 6 — Apt làm việc · Thứ Sáu 25/10 14:00, Stripe payment go-live

| Vai | Lời thoại |
|---|---|
| Tuấn | (Slack) Em ơi! Khóa production Stripe đã live! Cấu hình webhook xong. Giao dịch thử 50 cent thành công rồi. |
| Đại | (Slack tiếng Việt) Đỉnh anh! Kiểm thử bảng kiểm:<br>- Phiên thanh toán OK<br>- Webhook subscription.created OK<br>- Cập nhật DB user.is_paid=true OK<br>- Email "Welcome paid user" đã gửi OK<br>- Webhook subscription.updated/canceled/payment_failed cả 3 đều OK |
| Tuấn | (Slack) Có 4 webhook đã kiểm thử hết. Code coverage 92%. |
| Aiko | (Slack JP) <ruby>支払<rt>しはら</rt></ruby>い<ruby>画面<rt>がめん</rt></ruby>のUIをチェックしました。<ruby>二<rt>に</rt></ruby>タップで<ruby>登録<rt>とうろく</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>非常<rt>ひじょう</rt></ruby>にスムーズです。<br>*(Em check UI thanh toán rồi. 2 tap là xong đăng ký. Mượt cực.)* |
| Đại | (Slack) v1.0 sẵn sàng cho production. Tuần sau là tổng duyệt + phỏng vấn TechCrunch. |

---

## Tình huống 7 — LINE Sato-san TechCrunch JP · Thứ Tư 30/10, chuẩn bị phỏng vấn

| Vai | Lời thoại |
|---|---|
| Sato-san | (LINE JP) グエンさん、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby>の<ruby>取材<rt>しゅざい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>でいらっしゃいますか?<br>*(Anh Nguyễn, công tác chuẩn bị buổi phỏng vấn thứ Ba tuần sau ổn chứ?)* |
| Đại | (LINE JP) <ruby>佐藤<rt>さとう</rt></ruby>さん、お<ruby>世話<rt>せわ</rt></ruby>になっております。はい、プレゼン<ruby>資料<rt>しりょう</rt></ruby>と<ruby>創業<rt>そうぎょう</rt></ruby>ストーリーの<ruby>整理<rt>せいり</rt></ruby>は<ruby>済<rt>す</rt></ruby>んでおります。<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>のWeWork<ruby>梅田<rt>うめだ</rt></ruby>でよろしいでしょうか。<br>*(Anh Sato, cảm ơn anh đã chiếu cố. Vâng, em đã chuẩn bị xong slide thuyết trình và câu chuyện sáng lập. Địa điểm WeWork Umeda của bên em có ổn không ạ?)* |
| Sato-san | はい、<ruby>結構<rt>けっこう</rt></ruby>です。<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>四日<rt>よっか</rt></ruby><ruby>火曜<rt>かよう</rt></ruby><ruby>午後<rt>ごご</rt></ruby><ruby>二時<rt>じ</rt></ruby>から<ruby>六十分間<rt>ろくじゅっぷんかん</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>写真<rt>しゃしん</rt></ruby><ruby>撮影<rt>さつえい</rt></ruby>もございますので、<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>のお<ruby>二人<rt>ふたり</rt></ruby>もご<ruby>同席<rt>どうせき</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br>*(Vâng, được ạ. Hẹn thứ Ba 4/11 từ 2 giờ chiều, kéo dài 60 phút. Có chụp ảnh nên rất mong cả hai cofounder cùng có mặt.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>(<ruby>愛子<rt>あいこ</rt></ruby>)と<ruby>阮<rt>グエン</rt></ruby>(<ruby>俊<rt>トゥアン</rt></ruby>)も<ruby>同席<rt>どうせき</rt></ruby>いたします。<br>*(Em đã rõ. Hai cofounder Sato Aiko và Nguyen Tuan cũng sẽ có mặt ạ.)* |

---

## Tình huống 8 — WeWork Umeda phòng riêng · Thứ Ba 4/11 14:00, phỏng vấn TechCrunch JP

*Phòng họp WeWork Umeda tầng 12. Sato-san (38t, mặc áo phông + jeans, Macbook), kèm theo nhiếp ảnh gia. Đại + Aiko + Tuấn ngồi cùng phía bàn.*

| Vai | Lời thoại |
|---|---|
| Sato | では<ruby>早速<rt>さっそく</rt></ruby><ruby>始<rt>はじ</rt></ruby>めさせていただきます。グエンさん、<ruby>創業<rt>そうぎょう</rt></ruby>のきっかけを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vậy mình bắt đầu ngay. Anh Nguyễn, anh chia sẻ động lực sáng lập được không?)* |
| Đại | はい。<ruby>私<rt>わたくし</rt></ruby>は<ruby>大阪<rt>おおさか</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>時代<rt>じだい</rt></ruby>に、<ruby>日本語学習<rt>にほんごがくしゅう</rt></ruby>の<ruby>難<rt>むずか</rt></ruby>しさを<ruby>身<rt>み</rt></ruby>をもって<ruby>体験<rt>たいけん</rt></ruby>いたしました。<ruby>市販<rt>しはん</rt></ruby>のアプリは<ruby>英語話者<rt>えいごわしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けが<ruby>大半<rt>たいはん</rt></ruby>で、ベトナム<ruby>人学習者<rt>じんがくしゅうしゃ</rt></ruby>に<ruby>特化<rt>とっか</rt></ruby>したものが<ruby>存在<rt>そんざい</rt></ruby>しませんでした。<br>*(Vâng. Thời du học sinh tại ĐH Osaka em đã trải nghiệm trực tiếp sự khó khăn của việc học tiếng Nhật. Đa số app trên thị trường nhắm vào người nói tiếng Anh, không có app chuyên cho người học Việt Nam.)* |
| Sato | なるほど。<ruby>競合<rt>きょうごう</rt></ruby>サービスとの<ruby>差別化<rt>さべつか</rt></ruby>ポイントは<ruby>何<rt>なん</rt></ruby>でしょうか?<br>*(Ra vậy. Điểm khác biệt với các dịch vụ cạnh tranh là gì?)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つございます。<ruby>一<rt>いち</rt></ruby>、AIチューターによる<ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>。<ruby>二<rt>に</rt></ruby>、ベトナム<ruby>語<rt>ご</rt></ruby><ruby>解説<rt>かいせつ</rt></ruby>のRAGデータベース。<ruby>三<rt>さん</rt></ruby>、SRS<ruby>方式<rt>ほうしき</rt></ruby>の<ruby>記憶<rt>きおく</rt></ruby><ruby>定着<rt>ていちゃく</rt></ruby>アルゴリズムでございます。<br>*(Có ba điểm. 1. AI tutor hướng dẫn cá nhân hóa. 2. Database RAG giải thích bằng tiếng Việt. 3. Thuật toán ghi nhớ kiểu SRS.)* |
| Sato | <ruby>佐藤<rt>さとう</rt></ruby>さんはデザインを<ruby>担当<rt>たんとう</rt></ruby>されているとのことですが、こだわりは?<br>*(Cô Sato phụ trách thiết kế đúng không, có điểm tâm huyết gì?)* |
| Aiko | はい。ベトナムと<ruby>日本<rt>にほん</rt></ruby>の<ruby>美意識<rt>びいしき</rt></ruby>を<ruby>融合<rt>ゆうごう</rt></ruby>させた<ruby>温<rt>あたた</rt></ruby>かみのあるUIを<ruby>意識<rt>いしき</rt></ruby>しております。<ruby>色<rt>いろ</rt></ruby>はHizashi<ruby>独自<rt>どくじ</rt></ruby>のオレンジ #ff7b1c で、「<ruby>陽射<rt>ひざ</rt></ruby>し」を<ruby>表現<rt>ひょうげん</rt></ruby>しております。<br>*(Vâng. Em chú trọng UI ấm áp dung hợp thẩm mỹ Việt và Nhật. Màu là cam đặc trưng Hizashi #ff7b1c, biểu hiện cho "tia nắng".)* |
| Sato | <ruby>素敵<rt>すてき</rt></ruby>ですね。<ruby>阮<rt>グエン</rt></ruby>さんは<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>面<rt>めん</rt></ruby>ですか?<br>*(Đẹp đấy. Anh Tuấn phụ trách kỹ thuật à?)* |
| Tuấn | はい、<ruby>私<rt>わたくし</rt></ruby>はCTOとしてバックエンドと<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>パイプラインを<ruby>担当<rt>たんとう</rt></ruby>しております。<ruby>本日<rt>ほんじつ</rt></ruby>はストレステストで<ruby>同時<rt>どうじ</rt></ruby><ruby>接続<rt>せつぞく</rt></ruby><ruby>一万<rt>いちまん</rt></ruby>ユーザーをクリアいたしました。<br>*(Vâng, tôi làm CTO phụ trách backend và pipeline machine learning. Hôm nay đã pass stress test 10000 user đồng thời.)* |
| Sato | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>記事<rt>きじ</rt></ruby>は<ruby>十一月<rt>じゅういちがつ</rt></ruby><ruby>十一日<rt>じゅういちにち</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Tuyệt vời. Bài viết dự kiến đăng sáng 9 giờ ngày 11/11.)* |
| Đại | ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Cảm ơn anh. Mong tiếp tục cộng tác.)* |

---

## Tình huống 9 — Apt phòng làm việc · Thứ Bảy 8/11 19:00, ra mắt nội bộ 50 người

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #hizashi-cofounders) Anh chị! Mời 50 người vòng tròn thân thiết. Email đã gửi 18:00 tối nay. |
| Đại | Danh sách:<br>- 8 đồng đội BrSE Thanh A<br>- 12 cựu thành viên Inoue Lab (Yamada-senpai, Tanaka-senpai...)<br>- 5 đồng nghiệp cũ Cybozu (trưởng nhóm Inomata-san)<br>- 5 founder trong danh mục đầu tư của Anri<br>- 10 power user Hizashi hiện tại<br>- 10 người thân + bạn bè Tony+Yumi |
| Tuấn | (Slack) OK em. Anh sẽ trực dashboard Stripe + đồng hồ MRR real-time. |
| Aiko | (Slack JP) <ruby>私<rt>わたし</rt></ruby>もユーザーフィードバックを Notion で<ruby>収集<rt>しゅうしゅう</rt></ruby>します。<br>*(Em cũng thu thập feedback user trong Notion.)* |
| (24 giờ sau, Chủ Nhật 9/11 19:00) | |
| Đại | (Slack, xem dashboard) Kết quả 24h:<br>- 50 mời → 47 đăng ký (94%)<br>- 47 → 38 dùng ít nhất 1 phiên (81%)<br>- 38 → 22 chuyển sang trả phí (58% từ active)<br>- **Tỉ lệ chuyển đổi tổng 47%!** |
| Tuấn | (Slack) MRR Stripe nhảy: ¥343k → ¥365k chỉ trong 24h. |
| Đại | Phản hồi lỗi từ 38 active user:<br>- 3 lỗi nhỏ (font dấu tiếng Việt không hiển thị trên iOS Safari) → đã sửa<br>- 1 lỗi trung bình (chế độ offline lỗi trên iPad của Hana) → đã sửa<br>- 0 lỗi nghiêm trọng |
| Aiko | (Slack JP) <ruby>完璧<rt>かんぺき</rt></ruby>ですね。<ruby>明後日<rt>あさって</rt></ruby>のローンチに<ruby>備<rt>そな</rt></ruby>えましょう。<br>*(Hoàn hảo. Mình chuẩn bị cho buổi ra mắt ngày kia.)* |

---

## Tình huống 10 — Apt phòng làm việc · Chủ Nhật 10/11 23:00, bảng kiểm D-day -1

| Vai | Lời thoại |
|---|---|
| Đại | (Slack tiếng Việt) Anh chị! Bảng kiểm cuối cho 11/11:<br>- [x] App Store + Play Store v1.0 đã submit và được duyệt<br>- [x] Stripe production đã live<br>- [x] Landing page đã deploy production<br>- [x] Bài TechCrunch JP đã đặt lịch xuất bản 11/11 09:00<br>- [x] ProductHunt đã đặt lịch 11/11 12:01 PT (= 03:01 sáng 12/11 giờ Nhật)<br>- [x] Nội dung 5 influencer sẵn sàng (Yoshi-sensei, Phạm Hùng Linh, Akari, VietWorks, Sato)<br>- [x] Danh sách email 3,200 sẵn sàng<br>- [x] Thông cáo báo chí JP + VN sẵn sàng |
| Tuấn | (Slack) Backend qua bài kiểm thử tải: 10000 user đồng thời + 50k truy vấn embedding/phút. Độ trễ p95 = 320ms. An toàn. |
| Aiko | (Slack JP) <ruby>朝<rt>あさ</rt></ruby><ruby>九時<rt>くじ</rt></ruby>から<ruby>戦闘準備<rt>せんとうじゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>！<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Sẵn sàng chiến đấu từ 9 giờ sáng! Cố lên nào.)* |
| Đại | (Slack) Em đi ngủ sớm. Mai 7:00 dậy. 9:00 ra mắt. |

---

## Tình huống 11 — Apt phòng ngủ · Chủ Nhật 23:30, Đại Mai trước ngày ra mắt

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, vào phòng) Anh ơi, đi ngủ đi. Mai mới là ngày quan trọng nhất. |
| Đại | (tiếng Việt, ôm Mai) Cảm ơn em đã ủng hộ anh 6 tuần qua. Mai ra mắt xong, mình đi ăn nhà hàng Pháp ở Umeda. Đặt bàn rồi. |
| Mai | (tiếng Việt) Em đợi từ tháng trước rồi. Anh không phải hứa. Anh ngủ ngon nhé. |
| Đại | (tiếng Việt, nằm xuống) Em ơi, anh hồi hộp quá. Ba năm chuẩn bị cho ngày mai. |
| Mai | (tiếng Việt, vuốt tóc Đại) Anh đã làm hết những gì có thể. Còn lại trời cho. Ngủ đi anh. |

---

## Tình huống 12 — Apt phòng khách · Thứ Năm 7/11 8:00, Đại đưa Hana đi nhà trẻ (cam kết với Mai)

*Sáng thứ Năm — ngày Đại không đi Thanh A. Hana mặc đồng phục nhà trẻ vàng, đeo balo nhỏ có hình con voi.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Hana ơi, bố đưa con đi nhà trẻ nhé. Tạm biệt mẹ. |
| Hana | (vẫy tay với Mai) Mẹ! Mẹ! Bye bye! |
| Mai | (tiếng Việt, cười) Hai bố con ngoan. Đi cẩn thận nhé. |
| (Đến cửa nhà trẻ Senri Hoikuen) | |
| Cô Sasaki | おはようございます、ハナちゃん！<ruby>今日<rt>きょう</rt></ruby>もお<ruby>父<rt>とう</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>ですね。<br>*(Chào sáng Hana! Hôm nay lại cùng bố nhỉ.)* |
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>もお<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Cô Yamada, chào buổi sáng. Hôm nay lại nhờ cô.)* |
| Cô Sasaki | <ruby>父<rt>ちち</rt></ruby><ruby>送<rt>おく</rt></ruby>りが<ruby>増<rt>ふ</rt></ruby>えてハナちゃんも<ruby>嬉<rt>うれ</rt></ruby>しそうですね。<br>*(Bố đưa nhiều hơn, Hana có vẻ vui hẳn lên.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。<ruby>火曜<rt>かよう</rt></ruby>と<ruby>木曜<rt>もくよう</rt></ruby>は<ruby>私<rt>わたくし</rt></ruby>が<ruby>送迎<rt>そうげい</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>しております。<br>*(Em không dám nhận. Thứ Ba và thứ Năm em phụ trách đưa đón ạ.)* |
| Cô Sasaki | <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>共働<rt>ともばたら</rt></ruby>きでも<ruby>役割分担<rt>やくわりぶんたん</rt></ruby>が<ruby>素敵<rt>すてき</rt></ruby>です。<br>*(Tuyệt quá. Vợ chồng cùng đi làm mà chia vai trò đẹp ghê.)* |
| Đại | (cúi đầu) <ruby>妻<rt>つま</rt></ruby>のおかげでございます。では<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>四時<rt>よじ</rt></ruby>にお<ruby>迎<rt>むか</rt></ruby>えに<ruby>参<rt>まい</rt></ruby>ります。<br>*(Là nhờ vợ em ạ. Vâng, chiều 4 giờ em đến đón.)* |
| Hana | (vẫy tay với bố) Bố! Bye bye! |
| Đại | (vẫy lại) Bye bye Hana. Lát bố đón con nhé. |

---

## Tình huống 13 — Cảnh tiếng Việt — Đường về nhà từ nhà trẻ · Thứ Năm 8:30, Đại gọi Mai cập nhật

| Vai | Lời thoại |
|---|---|
| Đại | (gọi Mai, tiếng Việt) Em ơi, đã giao Hana cho cô Yamada. Con chào bố bye bye rất ngoan. |
| Mai | (tiếng Việt) Cảm ơn anh. Cô Sasaki có nói gì không? |
| Đại | (tiếng Việt) Cô khen mình "vợ chồng cùng đi làm mà chia vai trò đẹp" — em nghe có tự hào không? |
| Mai | (tiếng Việt, cười) Tự hào chứ. Cảm ơn anh giữ lời. Một tháng rồi anh đưa con đi liên tục. |
| Đại | (tiếng Việt) Vì anh sợ Mai cau mày. Anh không bao giờ muốn thấy. Giờ anh về làm tiếp Hizashi. Tuần sau ra mắt v1.0. |
| Mai | (tiếng Việt) Anh tập trung làm đi. Tối nay em làm bún chả ăn mừng trước cho ngày 11/11. |
| Đại | (tiếng Việt) Tuyệt. Anh đi đây. Yêu em. |
| Mai | (tiếng Việt) Yêu anh. |

---

## Đọng lại chương 8

Đại trải qua 6 tuần chuẩn bị ra mắt Hizashi v1.0 song song với vai trò BD BrSE 3 ngày/tuần tại Thanh A. Ngày đầu vai trò mới dùng **「本日より新たな役職でお世話になります」** + cúi chào. Soạn email mời hợp tác influencer JP với cấu trúc 5 phần: greeting + giới thiệu + lý do chọn → đề xuất cụ thể → chốt **「ご検討のほど、何卒よろしくお願い申し上げます」**. Trao đổi với phóng viên TechCrunch JP qua LINE keigo **「お世話になっております」**. Buổi phỏng vấn 60 phút tại WeWork Umeda với Sato-san — Đại kể câu chuyện sáng lập bằng JP business chuẩn **「身をもって体験いたしました」**. Stripe payment go-live với 4 webhook, soft launch nội bộ 50 người tỉ lệ chuyển đổi 47% — MRR ¥343k → ¥365k. Cảnh đẹp nhất: sáng thứ Năm Đại đưa Hana đi nhà trẻ — cô Yamada khen "vợ chồng chia vai trò đẹp" → Đại đáp **「妻のおかげでございます」**. Chủ Nhật 10/11 23:00 hoàn tất bảng kiểm D-day với cú đẩy lớn: kiểm thử tải 10k đồng thời + p95 320ms, 5 influencer đã chốt, TechCrunch đã đặt lịch.

> Từ vựng & mẫu câu chương này: ローンチ・ProductHunt・プレスリリース・インフルエンサー・スポンサーシップ・ランディングページ・コンバージョン・A/Bテスト・Stripe・Webhook・ストレステスト・ソフトローンチ・メディアキット・プレゼン資料・ご検討のほど何卒よろしくお願い申し上げます・お世話になっております・身をもって体験いたしました・〜していただけませんでしょうか・ご承諾いただき誠にありがとうございます・引き続きよろしくお願いいたします・妻のおかげでございます・送迎・共働き・役割分担

## Bí quyết chương

- **Email mời hợp tác influencer JP**: cấu trúc 5 phần (greeting + giới thiệu bản thân + lý do chọn + đề xuất cụ thể + chốt câu nhờ) — không nhảy ngay vào tiền
- **Tone khác theo đối tượng**: Yoshi-sensei keigo cao + Phạm Hùng Linh tiếng Việt thân thiện + Sato JP business + Akari JP casual — cùng một thông điệp nhưng tone khác
- **Phỏng vấn TechCrunch JP**: kể câu chuyện sáng lập từ trải nghiệm cá nhân **「身をもって体験」** + 3 điểm khác biệt cụ thể + 3 người đồng sáng lập có vai trò rõ
- **Chi phí hợp tác influencer chuẩn**: ¥200k tài trợ + 1 năm premium cho YouTuber Nhật 100-200k follower, ¥150k cho 50k follower
- **Soft launch 50 người trước launch công khai**: kiểm thử toàn bộ luồng + thu thập lỗi + đo tỉ lệ chuyển đổi (47% = ngưỡng tốt)
- **Stress test chuẩn production**: 10k user đồng thời + p95 320ms = ngưỡng xác nhận sẵn sàng
- **Giữ lời với vợ về việc đưa con đi nhà trẻ**: cam kết sáng thứ Ba + thứ Năm không bao giờ nuốt lời — niềm tin trong nhà là nền tảng cho cú đẩy lớn ở công ty

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新たな | あらたな | TÂN | mới |
| パイプライン |  |  | pipeline |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 感銘 | かんめい | CẢM MINH | cảm động, ấn tượng |
| 解説 | かいせつ | GIẢI THUYẾT | giải thích |
| 丁寧 | ていねい | ĐINH NINH | cẩn thận, tử tế |
| 掲載 | けいさい | KHẢI TẢI | đăng, đăng tải |
| 進呈 | しんてい | TIẾN TRÌNH | tặng biếu |
| 承諾 | しょうだく | THỪA NẶC | chấp thuận |
| 資料 | しりょう | TƯ LIỆU | tài liệu |
| 同時公開 | どうじこうかい | ĐỒNG THỜI CÔNG KHAI | phát đồng thời |
| 取材 | しゅざい | THỦ TÀI | phỏng vấn báo chí |
| プレゼン資料 | プレゼンしりょう | TƯ LIỆU | slide thuyết trình |
| 同席 | どうせき | ĐỒNG TỊCH | cùng có mặt |
| 撮影 | さつえい | TRÁC ẢNH | chụp ảnh |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | du học sinh |
| 身をもって | みをもって | THÂN | tự thân |
| 体験 | たいけん | THỂ NGHIỆM | trải nghiệm |
| 市販 | しはん | THỊ PHIẾN | bán ngoài thị trường |
| 特化 | とっか | ĐẶC HÓA | chuyên biệt |
| 競合 | きょうごう | CẠNH HỢP | cạnh tranh |
| 差別化 | さべつか | SAI BIỆT HÓA | khác biệt hóa |
| 個別指導 | こべつしどう | CÁ BIỆT CHỈ ĐẠO | hướng dẫn cá nhân |
| 美意識 | びいしき | MỸ Ý THỨC | thẩm mỹ |
| 融合 | ゆうごう | DUNG HỢP | hòa quyện |
| 独自 | どくじ | ĐỘC TỰ | riêng biệt |
| 機械学習 | きかいがくしゅう | CƠ GIỚI HỌC TẬP | machine learning |
| ストレステスト |  |  | stress test |
| 同時接続 | どうじせつぞく | ĐỒNG THỜI TIẾP TỤC | kết nối đồng thời |
| 戦闘準備 | せんとうじゅんび | CHIẾN ĐẤU CHUẨN BỊ | sẵn sàng chiến đấu |
| 共働き | ともばたらき | CỘNG ĐỘNG | vợ chồng cùng đi làm |
| 役割分担 | やくわりぶんたん | DỊCH CÁT PHÂN ĐẢM | phân chia vai trò |
| 送迎 | そうげい | TỐNG NGHINH | đưa đón |
| ご検討のほど | ごけんとうのほど | KIỂM ĐẢO | xin xem xét |
| 申し上げます | もうしあげます | THÂN THƯỢNG | xin/kính trình (khiêm) |
| 妻 | つま | THÊ | vợ |
| 結果 | けっか | KẾT QUẢ | kết quả |
| 累計 | るいけい | LŨY KẾ | lũy kế, tổng cộng |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000009, 800000025, NULL, 'markdown_book', 'T9. Hizashi v1.0 launch — ngày D-day', '# Sách kỹ sư cầu nối & khởi nghiệp · T9. Hizashi v1.0 launch — ngày D-day

> **Mục tiêu nhân vật:** Đại 25 tuổi, 11/11/2030 — ngày Hizashi v1.0 launch. Học các mẫu hội thoại tiếng Nhật của founder trong ngày launch: (1) báo cáo trạng thái với co-founder bằng JP (`〜が完了しました`), (2) cảm ơn influencer (`応援ありがとうございます`), (3) trả lời phỏng vấn ngắn TechCrunch (`〜について簡単にご説明します`), (4) phản hồi LINE chúc mừng của senpai và sensei (`お陰さまで〜`), (5) thông báo trễ với khách Thanh A (`本日はお休みをいただいております`), (6) báo cáo metrics buổi tối (`現時点で〜となっております`).

---

## Bối cảnh

11/11/2030 thứ Hai. Hizashi v1.0 — app học tiếng Nhật cho người Việt do Đại + Tuấn (CTO) + Aiko (designer Nhật) đồng sáng lập — chính thức ra mắt. TechCrunch JP đăng bài 9:00, 5 influencer post đồng thời, đêm ProductHunt launch. Đại xin nghỉ Thanh A 1 ngày. War room ở WeWork Senri-chuo 23F. Mai và Hana xem livestream ở apartment. Chương này tập trung mẫu câu báo cáo trạng thái + cảm ơn keigo trong ngày D-day.

---

## Tình huống 1 — Apt Senri-chuo · 6:30, Đại chào Mai trước khi đi

*Đại pha xong cà phê, mặc áo hoodie Hizashi. Mai vừa thức, Hana còn ngủ.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, hôm nay là D-day rồi. Anh đi WeWork đây. |
| Mai | (VN) Anh đợi em 5 phút, em pha bình giữ nhiệt cho anh mang theo. Hana còn ngủ, em sẽ cho con xem livestream lúc 9 giờ. |
| Đại | (VN) Cảm ơn em. Trưa anh không về được đâu, em với Hana ăn cơm trước nhé. |
| Mai | (VN) Anh đừng quên ăn. Anh không ăn là em báo anh Tuấn lôi anh ra ngoài đấy. |
| Đại | (cười) Vâng vợ. (LINE Tuấn) <ruby>兄<rt>あに</rt></ruby>さん、これから<ruby>向<rt>む</rt></ruby>かいます。<br>*(Anh ơi, em đang đến đây.)* |
| Tuấn | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>。コーヒー<ruby>用意<rt>ようい</rt></ruby>してあるよ。<br>*(OK. Anh chuẩn bị cà phê rồi.)* |

---

## Tình huống 2 — WeWork 23F war room · 8:00, Đại báo trạng thái setup với Tuấn+Aiko

*Tuấn đã setup 3 monitor: Stripe MRR live, ProductHunt rankings, server metrics. Aiko vừa đến, ôm laptop và cà phê.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます!<ruby>準備<rt>じゅんび</rt></ruby>はいかがですか?<br>*(Chào buổi sáng! Chuẩn bị thế nào rồi ạ?)* |
| Tuấn | サーバー<ruby>側<rt>がわ</rt></ruby>のオートスケール<ruby>設定<rt>せってい</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。CPU 30%、メモリ40%、エラー<ruby>率<rt>りつ</rt></ruby>0.1%。<ruby>問題<rt>もんだい</rt></ruby>ないです。<br>*(Setup auto-scale server xong rồi. CPU 30%, memory 40%, error 0.1%. Không vấn đề.)* |
| Aiko | アプリストアと Google Play の<ruby>掲載情報<rt>けいさいじょうほう</rt></ruby>も<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認済<rt>かくにんず</rt></ruby>みです。スクリーンショットも<ruby>差<rt>さ</rt></ruby>し<ruby>替<rt>か</rt></ruby>えました。<br>*(Thông tin trên App Store với Google Play đã check lần cuối. Screenshot cũng đã đổi.)* |
| Đại | ありがとうございます。<ruby>9時<rt>くじ</rt></ruby>の TechCrunch <ruby>記事<rt>きじ</rt></ruby><ruby>公開<rt>こうかい</rt></ruby>まであと1<ruby>時間<rt>じかん</rt></ruby>です。<ruby>各自<rt>かくじ</rt></ruby>、もう<ruby>一度<rt>いちど</rt></ruby><ruby>持<rt>も</rt></ruby>ち<ruby>場<rt>ば</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Cảm ơn. Còn 1 tiếng nữa là bài TechCrunch public. Mỗi người check lại vị trí của mình một lần nữa nhé.)* |
| Tuấn | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>僕<rt>ぼく</rt></ruby>はサーバー<ruby>担当<rt>たんとう</rt></ruby>です。<br>*(Hiểu. Em phụ trách server.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>はSNSとコミュニティ<ruby>対応<rt>たいおう</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Em phụ trách SNS với phản hồi cộng đồng.)* |

---

## Tình huống 3 — WeWork · 8:45, Đại nhắn cho Tanaka-PM Thanh Hà

*Đại nhớ ra phải nhắn anh Tanaka — PM Thanh A — rằng hôm nay nghỉ chính thức, đề phòng khách hàng gọi.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Tanaka) <ruby>田中<rt>たなか</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>休<rt>やす</rt></ruby>みをいただいております。<br>*(Anh Tanaka, chào buổi sáng. Hôm nay em xin nghỉ ạ.)* |
| Đại | (LINE) <ruby>緊急<rt>きんきゅう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>がございましたら、LINE にてご<ruby>連絡<rt>れんらく</rt></ruby>いただければ、<ruby>夜<rt>よる</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>返信<rt>へんしん</rt></ruby>いたします。<br>*(Nếu có việc khẩn, anh nhắn LINE em sẽ trả lời chắc chắn vào buổi tối ạ.)* |
| Tanaka | (LINE) グエンさん、おはようございます。<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本日<rt>ほんじつ</rt></ruby>はアプリの<ruby>正式<rt>せいしき</rt></ruby><ruby>公開日<rt>こうかいび</rt></ruby>でしたよね?<ruby>頑張<rt>がんば</rt></ruby>ってください!<br>*(Đại, chào buổi sáng. Anh hiểu rồi. Hôm nay là ngày ra mắt chính thức app phải không? Cố gắng nhé!)* |
| Đại | (LINE) ありがとうございます!お<ruby>陰<rt>かげ</rt></ruby>さまで、<ruby>今日<rt>きょう</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えることができました。<br>*(Cảm ơn anh! Nhờ có anh em đã đón được ngày hôm nay.)* |

---

## Tình huống 4 — WeWork · 9:00, TechCrunch JP article live + 60 phút đầu

*Đại refresh trang TechCrunch JP. Bài đăng đúng 9:00. Tiêu đề: 「<ruby>大阪大学卒業<rt>おおさかだいがくそつぎょう</rt></ruby>のベトナム<ruby>人創業者<rt>じんそうぎょうしゃ</rt></ruby>、<ruby>言語学習<rt>げんごがくしゅう</rt></ruby>AI アプリ「Hizashi」v1.0をローンチ」.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>記事公開<rt>きじこうかい</rt></ruby>されました!<br>*(Bài đăng rồi!)* |
| Tuấn | <ruby>登録数<rt>とうろくすう</rt></ruby>を<ruby>監視<rt>かんし</rt></ruby>します。9<ruby>時<rt>じ</rt></ruby>1<ruby>分<rt>ぷん</rt></ruby><ruby>現在<rt>げんざい</rt></ruby>、5<ruby>件<rt>けん</rt></ruby>のサインアップが<ruby>確認<rt>かくにん</rt></ruby>できました。<br>*(Em theo dõi số đăng ký. 9:01, đã ghi nhận 5 sign-up.)* |
| Aiko | <ruby>記事<rt>きじ</rt></ruby>のシェアが<ruby>急増<rt>きゅうぞう</rt></ruby>しています。Twitter で<ruby>既<rt>すで</rt></ruby>に300リツイートを<ruby>超<rt>こ</rt></ruby>えました。<br>*(Lượng share bài tăng vọt. Trên Twitter đã vượt 300 retweet rồi.)* |
| Đại | (refresh dashboard) 9<ruby>時<rt>じ</rt></ruby>10<ruby>分<rt>ぷん</rt></ruby>、サインアップ67<ruby>件<rt>けん</rt></ruby>に<ruby>達<rt>たっ</rt></ruby>しました。<ruby>加速<rt>かそく</rt></ruby>しています。<br>*(9:10 đã đạt 67 sign-up. Đang tăng tốc.)* |
| Tuấn | サーバー<ruby>側<rt>がわ</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>ありません。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>監視<rt>かんし</rt></ruby>します。<br>*(Server không bất thường. Em tiếp tục theo dõi.)* |

---

## Tình huống 5 — WeWork · 9:30, phỏng vấn chớp nhoáng với phóng viên TechCrunch JP

*Phóng viên Sato-san của TechCrunch JP gọi follow-up qua Zoom 10 phút để xin thêm comment cho bản update bài.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>ありがとうございます。<ruby>記事<rt>きじ</rt></ruby>の<ruby>反響<rt>はんきょう</rt></ruby>はいかがですか?<br>*(Anh Đại, cảm ơn anh đã dành thời gian. Phản hồi của bài viết thế nào ạ?)* |
| Đại | お<ruby>陰<rt>かげ</rt></ruby>さまで、<ruby>30分<rt>さんじゅっぷん</rt></ruby>で<ruby>67名<rt>ろくじゅうななめい</rt></ruby>の<ruby>新規<rt>しんき</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>をいただいております。<ruby>想定<rt>そうてい</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく<ruby>上回<rt>うわまわ</rt></ruby>っております。<br>*(Nhờ anh, trong 30 phút đã có 67 lượt đăng ký mới ạ. Vượt xa dự kiến ban đầu.)* |
| Sato | Hizashi の<ruby>強<rt>つよ</rt></ruby>みについて、<ruby>一言<rt>ひとこと</rt></ruby>で<ruby>説明<rt>せつめい</rt></ruby>していただけますか?<br>*(Có thể giải thích trong một câu về thế mạnh của Hizashi không ạ?)* |
| Đại | はい、<ruby>簡単<rt>かんたん</rt></ruby>にご<ruby>説明<rt>せつめい</rt></ruby>します。Hizashi は、ベトナム<ruby>人<rt>じん</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>母語<rt>ぼご</rt></ruby>の<ruby>特徴<rt>とくちょう</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせて<ruby>設計<rt>せっけい</rt></ruby>された AI チューターです。<br>*(Vâng, em xin giải thích đơn giản. Hizashi là AI tutor được thiết kế phù hợp đặc điểm tiếng mẹ đẻ của người học Việt Nam.)* |
| Đại | <ruby>特<rt>とく</rt></ruby>に<ruby>発音<rt>はつおん</rt></ruby>の<ruby>誤<rt>あやま</rt></ruby>りやすい<ruby>箇所<rt>かしょ</rt></ruby>を<ruby>自動<rt>じどう</rt></ruby>で<ruby>検出<rt>けんしゅつ</rt></ruby>し、<ruby>個別<rt>こべつ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>メニューを<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Đặc biệt tự động phát hiện điểm phát âm hay sai và đề xuất menu luyện tập cá nhân hoá.)* |
| Sato | <ruby>素晴<rt>すば</rt></ruby>らしいです。<ruby>追加記事<rt>ついかきじ</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>させていただきます。ありがとうございました。<br>*(Tuyệt vời. Em sẽ phản ánh vào bài bổ sung. Cảm ơn anh.)* |
| Đại | こちらこそ、ありがとうございました。<br>*(Em mới phải cảm ơn anh ạ.)* |

---

## Tình huống 6 — WeWork · 10:00, 5 influencer post đồng thời

*Yoshi-sensei (YouTube 250k), Akari-san (IG 180k), Pham Hung Linh (FB VN 50k), VietWorks Japan (email 30k), Sato-san (LinkedIn BD JP) — cả 5 đăng cùng giờ.*

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>吉<rt>よし</rt></ruby>センセイの YouTube ライブが<ruby>始<rt>はじ</rt></ruby>まりました!<ruby>視聴者数<rt>しちょうしゃすう</rt></ruby>3,000<ruby>人<rt>にん</rt></ruby><ruby>超<rt>こ</rt></ruby>えてます。<br>*(YouTube live của Yoshi-sensei bắt đầu rồi! Người xem đã vượt 3,000.)* |
| Tuấn | (Slack) Linh-san đăng FB + IG đồng thời. Reach 50k cộng đồng VN tại Nhật. |
| Đại | (LINE Yoshi-sensei) <ruby>吉<rt>よし</rt></ruby>センセイ、<ruby>応援<rt>おうえん</rt></ruby>ありがとうございます!<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Yoshi-sensei, cảm ơn thầy đã ủng hộ! Em thực sự biết ơn.)* |
| Yoshi-sensei | (LINE) ダイくん、こちらこそ!いい<ruby>製品<rt>せいひん</rt></ruby>だから<ruby>自然<rt>しぜん</rt></ruby>に<ruby>応援<rt>おうえん</rt></ruby>したくなったんだよ。<br>*(Đại em, anh mới phải cảm ơn! Sản phẩm tốt nên anh tự nhiên muốn ủng hộ.)* |
| Tuấn | サーバートラフィック<ruby>急増<rt>きゅうぞう</rt></ruby>!CPU 65% → 80%。オートスケール<ruby>発動<rt>はつどう</rt></ruby>しました。<br>*(Server traffic tăng vọt! CPU 65% → 80%. Auto-scale đã kích hoạt.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>現時点<rt>げんじてん</rt></ruby>の<ruby>登録数<rt>とうろくすう</rt></ruby>は?<br>*(Hiểu. Số đăng ký hiện tại là bao nhiêu?)* |
| Tuấn | 10<ruby>時<rt>じ</rt></ruby>15<ruby>分<rt>ぷん</rt></ruby><ruby>現在<rt>げんざい</rt></ruby>、186<ruby>件<rt>けん</rt></ruby>です!<br>*(Tính đến 10:15, đã là 186!)* |

---

## Tình huống 7 — WeWork lounge · 12:00, ăn trưa burger + báo cáo morning summary

*3 người mua burger ngồi lounge, vừa ăn vừa check dashboard.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>午前中<rt>ごぜんちゅう</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>をまとめます。サインアップ186<ruby>件<rt>けん</rt></ruby>、<ruby>有料転換<rt>ゆうりょうてんかん</rt></ruby>47<ruby>件<rt>けん</rt></ruby>、<ruby>転換率<rt>てんかんりつ</rt></ruby>25%です。<br>*(Tổng kết kết quả buổi sáng. 186 sign-up, 47 paid, conversion rate 25%.)* |
| Tuấn | サーバーレスポンスタイム p95 が 320ms から 580ms に<ruby>上昇<rt>じょうしょう</rt></ruby>しましたが、<ruby>許容範囲内<rt>きょようはんいない</rt></ruby>です。<br>*(Server response time p95 từ 320ms lên 580ms nhưng trong phạm vi cho phép.)* |
| Aiko | Twitter で「#Hizashi」が<ruby>日本国内<rt>にほんこくない</rt></ruby>の<ruby>急上昇<rt>きゅうじょうしょう</rt></ruby>ランキング1<ruby>位<rt>い</rt></ruby>になりました!<br>*(Trên Twitter "#Hizashi" đã lên hạng 1 trending tại Nhật!)* |
| Đại | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか?<ruby>信<rt>しん</rt></ruby>じられない。<br>*(Hả, thật sao? Không tin được.)* |
| Aiko | (đưa màn hình) ほら、スクリーンショット<ruby>撮<rt>と</rt></ruby>りました。<br>*(Đây, em chụp màn hình rồi.)* |
| Đại | (LINE Mai, VN) Em ơi! Hashtag #Hizashi đang trending #1 Nhật! |
| Mai | (LINE, VN) Anh ơi em với Hana đang xem livestream Yoshi-sensei review app. Hana chỉ vào màn hình: "Bố làm gì kìa!" |

---

## Tình huống 8 — WeWork · 14:00, LINE chúc mừng từ Inoue-sensei + senpai

*Đại nhận một loạt LINE chúc mừng từ network: Inoue-sensei, Yamada-senpai (Inoue Lab M2 alumni), Inomata-san Cybozu, Tony+Yumi homestay Anjo, bố Mai.*

| Vai | Lời thoại |
|---|---|
| Inoue-sensei | (LINE) ダイくん、<ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>研究室<rt>けんきゅうしつ</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りです。<br>*(Đại, tuyệt vời. Là niềm tự hào của lab.)* |
| Đại | (LINE) <ruby>井上先生<rt>いのうえせんせい</rt></ruby>、ありがとうございます。<ruby>先生<rt>せんせい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わった<ruby>研究<rt>けんきゅう</rt></ruby>の<ruby>姿勢<rt>しせい</rt></ruby>が、<ruby>今<rt>いま</rt></ruby>の<ruby>製品<rt>せいひん</rt></ruby>づくりに<ruby>生<rt>い</rt></ruby>かされております。<br>*(Thầy Inoue, em cảm ơn thầy. Tinh thần nghiên cứu thầy dạy em đang được áp dụng vào việc làm sản phẩm hiện tại.)* |
| Yamada-senpai | (LINE) ダイ!Yahoo!ニュースでも<ruby>記事見<rt>きじみ</rt></ruby>たよ!すごいな!<br>*(Đại! Anh thấy bài trên Yahoo!News rồi! Đỉnh thật!)* |
| Đại | (LINE) <ruby>山田先輩<rt>やまだせんぱい</rt></ruby>、ありがとうございます!<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>論文<rt>ろんぶん</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わったお<ruby>陰<rt>かげ</rt></ruby>で、<ruby>今日<rt>きょう</rt></ruby>があります。<br>*(Senpai Yamada, em cảm ơn anh! Nhờ anh dạy em cách viết paper mà có ngày hôm nay.)* |
| Inomata-san | (LINE) ダイくん、Cybozu <ruby>社内<rt>しゃない</rt></ruby>でも<ruby>話題<rt>わだい</rt></ruby>になってるよ。<ruby>今度<rt>こんど</rt></ruby>ぜひ<ruby>飲<rt>の</rt></ruby>もう!<br>*(Đại em, trong Cybozu cũng đang xôn xao. Hôm nào đi nhậu nhé!)* |
| Đại | (LINE) ぜひ!お<ruby>声<rt>こえ</rt></ruby>がけください。<ruby>今月中<rt>こんげつちゅう</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Vâng anh! Anh cứ rủ. Trong tháng này em sẽ thu xếp.)* |
| Tony | (LINE, Osaka-ben) ダイ!おめでとう!わしらの<ruby>息子<rt>むすこ</rt></ruby><ruby>同然<rt>どうぜん</rt></ruby>や、よう<ruby>頑張<rt>がんば</rt></ruby>ったな!<br>*(Đại! Chúc mừng! Như con trai bọn ông, cố gắng quá rồi!)* |
| Đại | (LINE) Tony さん、ありがとうございます。お<ruby>二人<rt>ふたり</rt></ruby>のお<ruby>陰<rt>かげ</rt></ruby>で、<ruby>日本<rt>にほん</rt></ruby>の<ruby>家族<rt>かぞく</rt></ruby>ができました。<br>*(Tony ơi, cảm ơn ông. Nhờ ông bà mà cháu có gia đình tại Nhật.)* |

---

## Tình huống 9 — WeWork · 15:30, một phóng viên hỏi từ chưa biết → Đại xin nhắc lại

*Phóng viên Yahoo News VN gọi điện, dùng từ tiếng Việt "kỳ lân khởi nghiệp" rồi chuyển sang JP — Đại có một từ không nghe rõ.*

| Vai | Lời thoại |
|---|---|
| Phóng viên Yahoo VN | (VN) Anh Đại ơi, Hizashi có tham vọng trở thành kỳ lân khởi nghiệp không ạ? |
| Đại | (VN) Em xin lỗi, "kỳ lân khởi nghiệp" ý chị là unicorn startup đúng không ạ? Mục tiêu của em hiện tại là phục vụ tốt cho 100,000 người học Việt trước, sau đó là 1 triệu. Định giá unicorn không phải đích đến. |
| Phóng viên | (chuyển JP) なるほど。では、<ruby>競合<rt>きょうごう</rt></ruby>の<ruby>差別化要因<rt>さべつかよういん</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vậy à. Vậy xin anh cho biết yếu tố khác biệt so với đối thủ ạ.)* |
| Đại | すみません、「<ruby>差別化要因<rt>さべつかよういん</rt></ruby>」というのは、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin lỗi, "yếu tố khác biệt" — chị có thể nhắc lại một lần nữa được không ạ?)* |
| Phóng viên | あ、すみません。<ruby>他社<rt>たしゃ</rt></ruby>のアプリと<ruby>比<rt>くら</rt></ruby>べて、Hizashi だけの<ruby>強<rt>つよ</rt></ruby>みは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(À xin lỗi. So với app công ty khác, điểm mạnh chỉ Hizashi mới có là gì ạ?)* |
| Đại | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みは3つです。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、ベトナム<ruby>語母語話者<rt>ごぼごわしゃ</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>の<ruby>発音矯正<rt>はつおんきょうせい</rt></ruby>AI。<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>無料<rt>むりょう</rt></ruby>プランでも<ruby>毎日<rt>まいにち</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby><ruby>使<rt>つか</rt></ruby>えること。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、JLPT N5から N1まで<ruby>一気通貫<rt>いっきつうかん</rt></ruby>でカバーすることです。<br>*(Vâng em hiểu rồi. Thế mạnh của bên em có 3 điểm. Một là AI sửa phát âm chuyên cho người nói tiếng Việt. Hai là gói miễn phí cũng dùng được 30 phút/ngày. Ba là phủ JLPT từ N5 đến N1 xuyên suốt.)* |

---

## Tình huống 10 — WeWork · 18:00, brief tối ProductHunt + về nhà

*Trước khi giải tán, Đại brief lại kế hoạch ProductHunt 4:01 sáng JP (= 12:01 PT).*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>午前<rt>ごぜん</rt></ruby>パートはお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>夜中<rt>よなか</rt></ruby>のProductHunt の<ruby>件<rt>けん</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Phần buổi sáng hôm nay, cảm ơn mọi người. Em xác nhận lại vụ ProductHunt khuya nhé.)* |
| Tuấn | <ruby>僕<rt>ぼく</rt></ruby>は<ruby>先<rt>さき</rt></ruby>に<ruby>仮眠<rt>かみん</rt></ruby>します。3<ruby>時<rt>じ</rt></ruby>に WeWork に<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Em chợp mắt trước. 3 giờ em quay lại WeWork.)* |
| Aiko | <ruby>私<rt>わたし</rt></ruby>も<ruby>寝<rt>ね</rt></ruby>ます。4<ruby>時<rt>じ</rt></ruby>のローンチに<ruby>合<rt>あ</rt></ruby>わせて<ruby>起<rt>お</rt></ruby>きます。<br>*(Em cũng đi ngủ. Sẽ dậy đúng giờ launch 4 giờ.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>は<ruby>一度<rt>いちど</rt></ruby><ruby>家<rt>いえ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>って、<ruby>家族<rt>かぞく</rt></ruby>と<ruby>夕食<rt>ゆうしょく</rt></ruby>を<ruby>取<rt>と</rt></ruby>ってから<ruby>戻<rt>もど</rt></ruby>ります。<br>*(OK. Em về nhà ăn tối với gia đình rồi quay lại.)* |
| Tuấn | <ruby>奥<rt>おく</rt></ruby>さんとハナちゃんによろしく。<br>*(Cho anh gửi lời chào vợ và bé Hana.)* |

---

## Tình huống 11 — Apt · 19:30, Đại ăn tối với Mai+Hana

*Đại về nhà, Mai đã làm cơm Việt: thịt kho trứng + canh chua + cơm trắng. Hana chạy ra ôm.*

| Vai | Lời thoại |
|---|---|
| Hana | (chạy đến) Bố! Bố trên tivi! Hana xem bố! |
| Đại | (VN, bế Hana) Trời ơi con gái! Bố trên tivi à? Bố ở YouTube với Yoshi-sensei thôi chứ. |
| Mai | (VN) Anh ơi! Hana cứ chỉ vào hình thumbnail của Hizashi gọi "Bố làm cái này!". Em quay video lại cho anh xem. |
| Đại | (VN) Em ơi, cảm ơn em. Tối nay anh 22 giờ sẽ quay lại WeWork. 4 giờ sáng có ProductHunt launch. |
| Mai | (VN) Em biết rồi. Em pha bình giữ nhiệt + 3 hộp cơm nắm + chocolate. Anh đừng uống năng lượng nhiều quá nhé. |
| Đại | (VN) Vâng vợ. (LINE Tuấn) <ruby>兄<rt>あに</rt></ruby>さん、22<ruby>時<rt>じ</rt></ruby>に WeWork に<ruby>戻<rt>もど</rt></ruby>ります。<br>*(Anh ơi, 22 giờ em quay lại WeWork.)* |
| Tuấn | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>。<br>*(OK.)* |

---

## Tình huống 12 — WeWork · 12/11 4:01 sáng, ProductHunt LIVE

*Đại + Tuấn ngồi cạnh nhau, Aiko vừa đến với coffee. ProductHunt page load đúng 4:01.*

| Vai | Lời thoại |
|---|---|
| Tuấn | ローンチしました!<ruby>現在<rt>げんざい</rt></ruby>のランキング、まだ<ruby>表示<rt>ひょうじ</rt></ruby>されてないですね。<br>*(Launch rồi! Ranking hiện tại chưa hiện.)* |
| Aiko | コメントを<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>最初<rt>さいしょ</rt></ruby>の3<ruby>件<rt>けん</rt></ruby>、<ruby>応援<rt>おうえん</rt></ruby>コメントが<ruby>来<rt>き</rt></ruby>ました!<br>*(Em check comment. 3 comment đầu tiên — comment ủng hộ đã đến!)* |
| Đại | (PH page) 4<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby><ruby>現在<rt>げんざい</rt></ruby>、47 upvote、ランキング#8です。<br>*(Tính đến 4:30, 47 upvote, ranking #8.)* |
| Tuấn | コメントに<ruby>返信<rt>へんしん</rt></ruby>しましょう。<ruby>英語<rt>えいご</rt></ruby>で<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Mình reply comment đi. Bằng English lịch sự.)* |
| Đại | はい。「Thanks for the support! Vietnamese learners deserve a tutor that speaks their pain points.」で<ruby>返信<rt>へんしん</rt></ruby>します。<br>*(Vâng. Em reply câu này.)* |
| Aiko | 5<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、#5 にランクアップ!89 upvote!<br>*(5:30, lên #5! 89 upvote!)* |

---

## Tình huống 13 — WeWork · 8:00 sáng 12/11, peak traffic + #2

*Sau khi US ngủ và Asia thức, traffic giai đoạn 2 đến. Tuấn check server.*

| Vai | Lời thoại |
|---|---|
| Tuấn | サーバー<ruby>負荷<rt>ふか</rt></ruby><ruby>第<rt>だい</rt></ruby>2<ruby>波<rt>は</rt></ruby><ruby>到来<rt>とうらい</rt></ruby>!オートスケールでインスタンス3<ruby>台<rt>だい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>えました。レイテンシは<ruby>安定<rt>あんてい</rt></ruby>しています。<br>*(Đợt 2 server load tới! Auto-scale tăng lên 3 instance. Latency ổn định.)* |
| Aiko | ProductHunt #2 ランキング!156 upvote、12 のクオリティコメント!<br>*(ProductHunt ranking #2! 156 upvote, 12 comment chất lượng!)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>頑張<rt>がんば</rt></ruby>りましょう。<ruby>登録数<rt>とうろくすう</rt></ruby><ruby>速報<rt>そくほう</rt></ruby>は?<br>*(Tuyệt vời. Mình tiếp tục cố gắng. Tin nhanh số đăng ký?)* |
| Tuấn | <ruby>累計<rt>るいけい</rt></ruby>サインアップ412<ruby>件<rt>けん</rt></ruby>、<ruby>有料<rt>ゆうりょう</rt></ruby>140<ruby>件<rt>けん</rt></ruby>です。<br>*(Tổng cộng 412 sign-up, 140 paid.)* |

---

## Tình huống 14 — WeWork · 13/11 4:01 sáng, 24h sau PH launch — #1 Product of the Day

*24 tiếng sau PH go-live. Đại refresh lần cuối.*

| Vai | Lời thoại |
|---|---|
| Đại | (refresh) <ruby>確定<rt>かくてい</rt></ruby>です。**#1 Product of the Day** です!312 upvote!<br>*(Chốt rồi. #1 Product of the Day! 312 upvote!)* |
| Tuấn | (gào nhỏ) <ruby>勝<rt>か</rt></ruby>った!<br>*(Thắng!)* |
| Aiko | (nước mắt) <ruby>夢<rt>ゆめ</rt></ruby>みたい...<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>夢<rt>ゆめ</rt></ruby>みたい。<br>*(Cứ như mơ... thật sự như mơ.)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。Hizashi は<ruby>私一人<rt>わたしひとり</rt></ruby>のものではなく、<ruby>私<rt>わたし</rt></ruby>たち3<ruby>人<rt>にん</rt></ruby>のものです。<br>*(Cảm ơn mọi người thật sự. Hizashi không phải của riêng em, mà là của 3 chúng ta.)* |
| Tuấn | (cụng nắm tay) <ruby>次<rt>つぎ</rt></ruby>は Series A だな。<br>*(Tiếp theo là Series A nhỉ.)* |
| Đại | はい、<ruby>次<rt>つぎ</rt></ruby>のステージに<ruby>進<rt>すす</rt></ruby>みましょう。<br>*(Vâng, mình tiến lên giai đoạn tiếp.)* |

---

## Tình huống 15 — Apt · 13/11 đêm, Đại gọi Mai + cắt bánh mừng

*Đại về nhà tối, mua cake. Hana đã ngủ. Mai đợi ở sofa.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, anh về rồi. Kết quả 24h: 534 sign-up, 187 paid, MRR ¥548k, ProductHunt #1, TechCrunch + Yahoo + 8 báo. |
| Mai | (VN, ôm Đại) Anh ơi! Em tự hào về anh không tả nổi. Em xem ProductHunt #1 trên iPad lúc 4 giờ sáng. |
| Đại | (VN) Em ơi. 6 tuần qua em chăm Hana một mình + đêm khuya pha cà phê cho anh + ngày thuyết minh tour. Hizashi của anh có một nửa là của em. |
| Mai | (VN) Anh là người em chọn. Hizashi là giấc mơ của anh. Em vinh dự được là một phần. (cắt bánh) Anh ước gì? |
| Đại | (VN) Ba điều ước. Một, Hizashi tới 10,000 user vào tháng 4. Hai, gia đình mình khoẻ mạnh. Ba... anh muốn Hana có em. |
| Mai | (VN, đỏ mặt) Anh ơi! Em cũng nghĩ vậy. Đầu năm 2031 mình bàn lại nhé. |
| Đại | (VN, hôn trán Mai) Anh ăn miếng bánh ngon nhất đời. |

---

## Đọng lại chương 9

Đại trải qua D-day 11/11/2030 từ 6:30 sáng đến 13/11 đêm — gần 48 tiếng làm việc nhưng đầy adrenaline. Học được loạt mẫu báo cáo trạng thái trong môi trường startup: **「〜が完了しました」** (đã hoàn tất), **「現時点で〜となっております」** (tính đến hiện tại là), **「許容範囲内です」** (trong phạm vi cho phép). Mẫu cảm ơn keigo với senpai/sensei: **「お陰さまで〜できました」**, **「先生に教わったお陰で、今日があります」**. Mẫu xin nhắc lại khi chưa hiểu chuẩn business: **「すみません、〜というのは、もう一度お願いします」**. Mẫu trả lời phỏng vấn ngắn: **「簡単にご説明します」**, **「強みは三つです」**. Kết quả 24h: 534 sign-up, 187 paid, MRR ¥548k, ProductHunt #1, Twitter #1 trending JP 6h. Tối về nhà với Mai, cắt bánh, ước có em bé thứ hai.

> Từ vựng & mẫu câu chương này: ローンチ・サインアップ・<ruby>有料転換<rt>ゆうりょうてんかん</rt></ruby>・<ruby>登録数<rt>とうろくすう</rt></ruby>・オートスケール・サーバー<ruby>負荷<rt>ふか</rt></ruby>・<ruby>許容範囲内<rt>きょようはんいない</rt></ruby>・<ruby>急上昇<rt>きゅうじょうしょう</rt></ruby>ランキング・<ruby>反響<rt>はんきょう</rt></ruby>・<ruby>差別化要因<rt>さべつかよういん</rt></ruby>・<ruby>発音矯正<rt>はつおんきょうせい</rt></ruby>・〜が<ruby>完了<rt>かんりょう</rt></ruby>しました・<ruby>現時点<rt>げんじてん</rt></ruby>で〜となっております・お<ruby>陰<rt>かげ</rt></ruby>さまで・〜というのはもう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします・<ruby>簡単<rt>かんたん</rt></ruby>にご<ruby>説明<rt>せつめい</rt></ruby>します・<ruby>応援<rt>おうえん</rt></ruby>ありがとうございます・<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>休<rt>やす</rt></ruby>みをいただいております

## Bí quyết chương

- **War room + 3 monitor**: MRR + ProductHunt + server metrics — founder cần dashboard nhìn thấy mọi thứ một chỗ
- **Mẫu cảm ơn senpai/sensei**: keigo "お陰さまで〜" gắn công lao cho người được cảm ơn, KHÔNG kể công mình
- **Khi nghe từ chưa hiểu trong phỏng vấn JP**: dùng "「〜」というのは、もう一度お願いします" — chuẩn business, không mất mặt
- **5 influencer ¥1M tổng** → 460k reach + 534 sign-up = ROI 8 lần theo LTV
- **Ăn tối với gia đình giữa D-day**: founder bền vững là founder không bỏ rơi vợ con dù launch day
- **ProductHunt #1 Day = thước đo "thắng"** cho indie launch ở thị trường global

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 用意 | ようい | DỤNG Ý | chuẩn bị |
| オートスケール |  |  | auto-scale |
| 設定 | せってい | THIẾT ĐỊNH | cài đặt |
| エラー率 | エラーりつ | SUẤT | tỷ lệ lỗi |
| 掲載情報 | けいさいじょうほう | KHẢI TẢI TÌNH BÁO | thông tin đăng tải |
| 差し替え | さしかえ | SAI THẾ | thay thế |
| 各自 | かくじ | CÁC TỰ | mỗi người |
| 持ち場 | もちば | TRÌ TRƯỜNG | vị trí phụ trách |
| 緊急 | きんきゅう | KHẨN CẤP | khẩn cấp |
| 返信 | へんしん | PHẢN TÍN | trả lời |
| お休みをいただいております | おやすみをいただいております | HƯU | em đang xin nghỉ |
| 公開日 | こうかいび | CÔNG KHAI NHẬT | ngày ra mắt |
| お陰さまで | おかげさまで | ÂM | nhờ ơn, may mắn |
| 迎える | むかえる | NGHINH | đón |
| 監視 | かんし | GIÁM THỊ | giám sát |
| サインアップ |  |  | đăng ký |
| 急増 | きゅうぞう | CẤP TĂNG | tăng vọt |
| 達する | たっする | ĐẠT | đạt |
| 加速 | かそく | GIA TỐC | tăng tốc |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 反響 | はんきょう | PHẢN HƯỞNG | phản hồi |
| 新規登録 | しんきとうろく | TÂN QUY ĐĂNG LỤC | đăng ký mới |
| 上回る | うわまわる | THƯỢNG HỒI | vượt qua |
| 強み | つよみ | CƯỜNG | điểm mạnh |
| 母語 | ぼご | MẪU NGỮ | tiếng mẹ đẻ |
| 発音 | はつおん | PHÁT ÂM | phát âm |
| 誤り | あやまり | NGỘ | sai |
| 自動 | じどう | TỰ ĐỘNG | tự động |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ |
| 視聴者数 | しちょうしゃすう | THỊ THÍNH GIẢ SỐ | số người xem |
| 急上昇 | きゅうじょうしょう | CẤP THƯỢNG THĂNG | trending nhanh |
| 信じられない | しんじられない | TÍN | không tin nổi |
| 仮眠 | かみん | GIẢ MIÊN | chợp mắt |
| 誇り | ほこり | KHÓA | niềm tự hào |
| 製品 | せいひん | CHẾ PHẨM | sản phẩm |
| 生かす | いかす | SINH | phát huy, áp dụng |
| 差別化要因 | さべつかよういん | SAI BIỆT HÓA YẾU NHÂN | yếu tố khác biệt |
| 発音矯正 | はつおんきょうせい | PHÁT ÂM KIỀU CHÍNH | sửa phát âm |
| 一気通貫 | いっきつうかん | NHẤT KHÍ THÔNG QUÁN | xuyên suốt |
| 負荷 | ふか | PHỤ TẢI | tải, load |
| 到来 | とうらい | ĐÁO LAI | đến (đợt sóng) |
| 確定 | かくてい | XÁC ĐỊNH | chốt |
| 進む | すすむ | TIẾN | tiến lên |
| 簡単に | かんたんに | GIẢN ĐƠN | một cách đơn giản |
| 許容範囲内 | きょようはんいない | HỨA DUNG PHẠM VI NỘI | trong phạm vi cho phép |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000010, 800000025, NULL, 'markdown_book', 'T10. Quá tải BrSE + Hizashi — học cách nói "không"', '# Sách kỹ sư cầu nối & khởi nghiệp · T10. Quá tải BrSE + Hizashi — học cách nói "không"

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
| 評価額 | ひょうかがく | BÌNH GIÁ NGẠCH | định giá |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000011, 800000025, NULL, 'markdown_book', 'T11. Sinh nhật Hana 2.5 tuổi + Tony+Yumi sang chơi', '# Sách kỹ sư cầu nối & khởi nghiệp · T11. Sinh nhật Hana 2.5 tuổi + Tony+Yumi sang chơi

> **Mục tiêu nhân vật:** Đại 25 tuổi, 25/1/2031. Học các mẫu hội thoại tiếng Nhật quanh sinh nhật con + tiếp khách họ hàng + báo nghỉ việc keigo formal: (1) đón khách vào nhà (`いらっしゃい・お上がりください`), (2) cảm ơn quà (`お心遣いありがとうございます`), (3) thông báo tiệc sinh nhật song ngữ với Hana, (4) báo nghỉ việc qua LINE chuẩn business (`退職させていただきたく〜`), (5) phản hồi đề xuất cố vấn (`是非お願いいたします`), (6) tiễn khách ra ga (`お気をつけて〜`).

---

## Bối cảnh

25/1/2031 thứ Bảy — sinh nhật muộn của Hana (sinh chính 5/8 đã ăn riêng nhỏ ở Anjo). Tony+Yumi từ homestay Anjo Aichi sang Senri-chuo apt 1 tuần 24-31/1. Bố mẹ Hà Nội không sang được lần này (bố Mai bị ốm nhẹ). Mai ngừng pill 1/2031, đang cố có bé 2. Hizashi đầu tháng 2: 1.700 paid user, MRR ¥1.67M. Đại đã quyết nghỉ Thanh A 31/3/2031, đợi đến 1/2 chính thức báo Tanaka. Chương này tập trung mẫu câu tiếp khách họ hàng + báo nghỉ việc keigo formal.

---

## Tình huống 1 — Apt Senri-chuo · Thứ Bảy 9:00, prep bánh + chat lịch ngày

*Mai đứng bếp, lau bàn ăn. Hana mặc váy hồng chạy quanh. Đại pha cà phê.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi, em đặt bánh "Ehon Cake" ở cửa hàng tầng 1 Senri-chuo Selsie rồi. Hình sách cổ tích, 10 giờ lấy. |
| Đại | (VN) Cụ Tony với Yumi mấy giờ đến em? |
| Mai | (VN) 11 giờ. 12 giờ ăn trưa sukiyaki. 14 giờ cắt bánh. Tối em làm phở Hà Nội + nem rán đãi 2 cụ. |
| Hana | (chạy đến) Mẹ ơi! Hana 2 tuổi! Hana to rồi! |
| Đại | (VN, bế Hana) Cô bé nhà mình 2.5 tuổi rồi đấy. Cao hơn năm ngoái 4cm cơ. |
| Hana | (JP) <ruby>誕生日<rt>たんじょうび</rt></ruby>!ハナ、<ruby>誕生日<rt>たんじょうび</rt></ruby>!<br>*(Sinh nhật! Hana, sinh nhật!)* |
| Mai | (VN) Quà của bố mẹ cho con: bộ LEGO Duplo + búp bê Miffy + sách Doraemon. Quà của ông bà Tony Yumi chút nữa các cụ đem sang. |

---

## Tình huống 2 — Apt cửa · 11:00, Tony+Yumi đến

*Chuông cửa reo. Đại mở cửa. Tony+Yumi đứng với 2 túi quà to + 1 valise.*

| Vai | Lời thoại |
|---|---|
| Đại | Tony さん、Yumi さん、いらっしゃい!ようこそ!お<ruby>寒<rt>さむ</rt></ruby>かったでしょう。<br>*(Tony ơi, Yumi ơi, vào đi! Mừng đến chơi! Đi đường lạnh nhỉ.)* |
| Tony | (Osaka-ben) ダイ!<ruby>久<rt>ひさ</rt></ruby>しぶりやな!<ruby>元気<rt>げんき</rt></ruby>そうやないか!<br>*(Đại! Lâu rồi nhỉ! Trông khoẻ ghê!)* |
| Yumi | (Osaka-ben) ダイくん、お<ruby>邪魔<rt>じゃま</rt></ruby>します。<ruby>奥<rt>おく</rt></ruby>さんは?ハナちゃんは?<br>*(Đại, làm phiền nhé. Vợ đâu? Bé Hana đâu?)* |
| Đại | どうぞお<ruby>上<rt>あ</rt></ruby>がりください。マイは<ruby>台所<rt>だいどころ</rt></ruby>で、ハナは<ruby>部屋<rt>へや</rt></ruby>で<ruby>絵本<rt>えほん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでます。<br>*(Mời ông bà vào ạ. Mai đang ở bếp, Hana đang ở phòng đọc sách tranh.)* |
| Hana | (chạy ra) おじいちゃん!おばあちゃん! |
| Tony | (Osaka-ben, ôm Hana) ハナちゃん!<ruby>誕生日<rt>たんじょうび</rt></ruby>おめでとう!<ruby>大<rt>おお</rt></ruby>きなったなぁ!<br>*(Hana ơi! Chúc mừng sinh nhật! Lớn quá rồi!)* |
| Mai | (đi ra, cúi chào) Tony さん、Yumi さん、<ruby>遠<rt>とお</rt></ruby>くからお<ruby>越<rt>こ</rt></ruby>しいただき、ありがとうございます。<br>*(Tony, Yumi, cảm ơn ông bà đã đến từ xa.)* |
| Yumi | (Osaka-ben) なんの、これくらい<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>や。ハナちゃんの<ruby>誕生日<rt>たんじょうび</rt></ruby>やもん。<br>*(Có gì đâu, chuyện đương nhiên thôi. Sinh nhật Hana mà.)* |

---

## Tình huống 3 — Phòng khách · 11:15, mở quà Hana

*Hana ngồi giữa sàn, Tony+Yumi đặt 2 túi quà to phía trước.*

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben) ハナちゃん、これおばあちゃんから。<ruby>絵本<rt>えほん</rt></ruby>セット20<ruby>冊<rt>さつ</rt></ruby>やで!<br>*(Hana ơi, đây là của bà. Bộ 20 cuốn sách tranh đấy!)* |
| Hana | (mở, JP) わぁ!<ruby>本<rt>ほん</rt></ruby>!たくさん!<br>*(Wow! Sách! Nhiều ghê!)* |
| Yumi | (Osaka-ben) 「ぐりとぐら」「はらぺこあおむし」「ぐるんぱのようちえん」とか<ruby>名作<rt>めいさく</rt></ruby>ばっかりやで。<br>*(Toàn kiệt tác cả: "Guri to Gura", "Hara Peko Aomushi", "Gurunpa no Youchien"...)* |
| Tony | (Osaka-ben) わしからはこれ!<ruby>木製<rt>もくせい</rt></ruby><ruby>玩具<rt>がんぐ</rt></ruby>セット、<ruby>奈良<rt>なら</rt></ruby>の<ruby>職人<rt>しょくにん</rt></ruby>さんが<ruby>手作<rt>てづく</rt></ruby>りしたやつや。<br>*(Của ông đây! Bộ đồ chơi gỗ nghệ nhân Nara làm thủ công.)* |
| Hana | (mở, sờ) <ruby>木<rt>き</rt></ruby>!すべすべ!ありがとう、おじいちゃん!<br>*(Gỗ! Mịn! Cảm ơn ông!)* |
| Mai | (cúi chào) Tony さん、Yumi さん、こんなに<ruby>立派<rt>りっぱ</rt></ruby>なお<ruby>品<rt>しな</rt></ruby>を、お<ruby>心遣<rt>こころづか</rt></ruby>いありがとうございます。<br>*(Tony, Yumi, quà sang quá. Cảm ơn ông bà đã quan tâm.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。ハナにこんなにいいものを。<br>*(Em thực sự ngại quá ạ. Quà cho Hana sang vậy.)* |
| Tony | (Osaka-ben) なんも<ruby>恐縮<rt>きょうしゅく</rt></ruby>することないわ。ハナは<ruby>唯一<rt>ゆいいつ</rt></ruby>の<ruby>孫<rt>まご</rt></ruby><ruby>同然<rt>どうぜん</rt></ruby>やもん。<br>*(Có gì mà ngại. Hana như cháu ruột duy nhất của bọn ông mà.)* |

---

## Tình huống 4 — Bàn ăn trưa · 12:30, sukiyaki + chat về Hizashi

*Mai bê nồi sukiyaki ra. Tony+Yumi ngồi đối diện Đại+Mai. Hana trên ghế cao.*

| Vai | Lời thoại |
|---|---|
| Yumi | (Osaka-ben) Mai-san、<ruby>料理<rt>りょうり</rt></ruby>めっちゃ<ruby>上手<rt>じょうず</rt></ruby>になったなぁ!すき<ruby>焼<rt>や</rt></ruby>き、ホンマに<ruby>日本人<rt>にほんじん</rt></ruby>みたいや。<br>*(Mai nấu giỏi lên ghê! Sukiyaki như người Nhật luôn!)* |
| Mai | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。YouTube とクックパッドで<ruby>毎日<rt>まいにち</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しております。<br>*(Em ngại quá ạ. Mỗi ngày em học YouTube với Cookpad ạ.)* |
| Tony | (Osaka-ben) ダイ!Hizashi、その<ruby>後<rt>あと</rt></ruby><ruby>調子<rt>ちょうし</rt></ruby>はどうや?<br>*(Đại, sau đó Hizashi thế nào rồi?)* |
| Đại | お<ruby>陰<rt>かげ</rt></ruby>さまで<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>今月<rt>こんげつ</rt></ruby>のMRRは¥1.67M、<ruby>有料<rt>ゆうりょう</rt></ruby>ユーザーは1,700<ruby>人<rt>にん</rt></ruby>になりました。<br>*(Nhờ ông bà, mọi việc thuận lợi. MRR tháng này ¥1.67M, paid user 1.700 người ạ.)* |
| Yumi | (Osaka-ben) <ruby>素晴<rt>すば</rt></ruby>らしいやん!Tony、あんたも<ruby>株主<rt>かぶぬし</rt></ruby>やで、<ruby>誇<rt>ほこ</rt></ruby>らしいやろ?<br>*(Tuyệt quá! Tony này, ông cũng là cổ đông đấy, tự hào không?)* |
| Tony | (cười) わしの 0.5%、<ruby>今<rt>いま</rt></ruby>なんぼになっとるん?<br>*(0.5% của ông giờ bao nhiêu rồi?)* |
| Đại | (cười) Tony さん、プレシードの<ruby>評価額<rt>ひょうかがく</rt></ruby>は<ruby>投資後<rt>とうしご</rt></ruby>で¥2<ruby>億<rt>おく</rt></ruby>です。0.5%は<ruby>紙<rt>かみ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>で¥100<ruby>万<rt>まん</rt></ruby>です。シリーズAの<ruby>後<rt>あと</rt></ruby>は5〜10<ruby>倍<rt>ばい</rt></ruby>になる<ruby>可能性<rt>かのうせい</rt></ruby>があります。<br>*(Tony ơi, định giá pre-seed sau đầu tư là ¥200 triệu. 0.5% trên giấy là ¥1M. Sau Series A có thể nhân 5-10 lần.)* |
| Tony | (Osaka-ben) <ruby>面白<rt>おもしろ</rt></ruby>いやないか!ダイ、わしの<ruby>分<rt>ぶん</rt></ruby>もよう<ruby>頑張<rt>がんば</rt></ruby>ってや!<br>*(Thú vị ta! Đại, ráng cả phần của ông luôn nhé!)* |
| Đại | はい、<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố hết sức.)* |

---

## Tình huống 5 — Phòng khách · 14:00, cắt bánh + Hana ước

*Bánh "Ehon Cake" hình quyển sách cổ tích. Mai cắm 8 cây nến giả 2.5 tuổi. Hana ngồi ghế cao, mắt sáng.*

| Vai | Lời thoại |
|---|---|
| Mai | ハナちゃん、お<ruby>願<rt>ねが</rt></ruby>い<ruby>事<rt>ごと</rt></ruby>をしてから、ろうそくを<ruby>吹<rt>ふ</rt></ruby>こうね。<br>*(Hana ơi, ước một điều rồi mới thổi nến nhé.)* |
| Hana | (suy nghĩ 5 giây, rõ ràng) Hana ước... <ruby>弟<rt>おとうと</rt></ruby>!ハナ、<ruby>弟<rt>おとうと</rt></ruby>か<ruby>妹<rt>いもうと</rt></ruby>がほしい!<br>*(Em! Hana muốn có em trai hoặc em gái!)* |
| (Đại+Mai nhìn nhau, sốc nhẹ) | |
| Mai | (VN, đỏ mặt thì thầm với Đại) Trời ơi anh ơi. Em ngừng thuốc đúng 2 tuần. Hana đoán được luôn? |
| Đại | (VN, ôm Mai) Em ơi. Bé thứ hai đến sớm thật rồi. |
| Tony | (Osaka-ben) ハナの<ruby>願<rt>ねが</rt></ruby>い、きっと<ruby>叶<rt>かな</rt></ruby>うで!<br>*(Điều ước của Hana chắc chắn thành sự thật!)* |
| Yumi | (Osaka-ben) Mai-san!<ruby>赤<rt>あか</rt></ruby>ちゃん<ruby>欲<rt>ほ</rt></ruby>しいんやったら、わしらが<ruby>全力<rt>ぜんりょく</rt></ruby>で<ruby>応援<rt>おうえん</rt></ruby>するで!<br>*(Mai-san! Nếu muốn em bé, bọn bà ủng hộ hết mình!)* |
| Mai | (cảm động) Yumi さん、ありがとうございます。<ruby>夫<rt>おっと</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>今年<rt>ことし</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ろうと<ruby>思<rt>おも</rt></ruby>っております。<br>*(Yumi ơi cảm ơn bà. Em bàn với chồng, năm nay em định cố gắng.)* |
| Hana | (thổi nến, rồi nhìn Mai) お<ruby>母<rt>かあ</rt></ruby>さん、<ruby>弟<rt>おとうと</rt></ruby>、いつ?<br>*(Mẹ, em bao giờ?)* |
| Mai | (VN) Đợi mẹ một chút con à. Mẹ với bố đang cố. |

---

## Tình huống 6 — Phòng khách · 15:00, Hana đọc sách tranh với Yumi

*Sau bánh, Yumi ngồi sàn với Hana, đọc "はらぺこあおむし".*

| Vai | Lời thoại |
|---|---|
| Yumi | (đọc) 「はらぺこあおむしは、<ruby>月曜日<rt>げつようび</rt></ruby>、リンゴを<ruby>一<rt>ひと</rt></ruby>つ<ruby>食<rt>た</rt></ruby>べました。」<br>*(Sâu bụng đói, hôm Thứ Hai ăn một quả táo.)* |
| Hana | リンゴ!ハナもリンゴ<ruby>好<rt>す</rt></ruby>き! |
| Yumi | そうか、ハナもリンゴ<ruby>好<rt>す</rt></ruby>きか。じゃあ<ruby>火曜日<rt>かようび</rt></ruby>は?<br>*(Vậy à, Hana cũng thích táo. Thứ Ba thì sao nhỉ?)* |
| Hana | (đoán) ナシ?バナナ? |
| Yumi | (đọc) 「<ruby>火曜日<rt>かようび</rt></ruby>、ナシを<ruby>二<rt>ふた</rt></ruby>つ<ruby>食<rt>た</rt></ruby>べました。」 ハナ、すごい!<ruby>当<rt>あ</rt></ruby>たった!<br>*(Thứ Ba ăn 2 quả lê. Hana giỏi quá! Đúng rồi!)* |
| Hana | (vỗ tay) ヤッター! |
| Mai | (từ bếp, cảm động) Cụ Yumi ơi, cụ làm cô giáo Hana thật giỏi. Bao giờ Hana cũng nghe lời cụ. |
| Yumi | (Osaka-ben) わしは<ruby>子供<rt>こども</rt></ruby>が<ruby>好<rt>す</rt></ruby>きなんよ。<ruby>子供<rt>こども</rt></ruby>に<ruby>恵<rt>めぐ</rt></ruby>まれへんかったから、<ruby>余計<rt>よけい</rt></ruby>ハナが<ruby>可愛<rt>かわい</rt></ruby>くてな。<br>*(Bà thích trẻ con lắm. Bà không có con đẻ, nên càng thấy Hana đáng yêu.)* |

---

## Tình huống 7 — Apt phòng làm việc · Chủ Nhật 26/1 21:00, Đại chuẩn bị văn báo nghỉ

*Tony+Yumi đã ngủ. Đại+Mai ngồi máy tính. Mai cố vấn JP business.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi, em xem draft báo nghỉ Thanh A cho anh nhé. Mai 1/2 thứ Bảy anh gửi LINE Tanaka. |
| Mai | (VN, đọc draft) "<ruby>田中<rt>たなか</rt></ruby>さん、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>個人的<rt>こじんてき</rt></ruby>なご<ruby>相談<rt>そうだん</rt></ruby>がございまして、ご<ruby>連絡<rt>れんらく</rt></ruby>いたしました。" — chuẩn rồi anh. |
| Mai | (VN) Câu xin nghỉ anh dùng "<ruby>退職<rt>たいしょく</rt></ruby>させていただきたく" — vừa khiêm tốn vừa thẳng. Tốt. |
| Đại | (VN) Lý do anh viết "Hizashi MRR ¥1.5M đạt mục tiêu nên cần full-time", ổn không? |
| Mai | (VN) Ổn anh. Thêm câu cảm ơn 1 năm Thanh A nữa: "<ruby>当社<rt>とうしゃ</rt></ruby>での1<ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>多<rt>おお</rt></ruby>くを<ruby>学<rt>まな</rt></ruby>ばせていただきました。" |
| Đại | (VN, gõ) "<ruby>当社<rt>とうしゃ</rt></ruby>での1<ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>多<rt>おお</rt></ruby>くを<ruby>学<rt>まな</rt></ruby>ばせていただきました。<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し上げます。" |
| Mai | (VN) Nhật ngữ business chuẩn rồi anh. Em thấy cảm động luôn. |

---

## Tình huống 8 — LINE Tanaka · Thứ Bảy 1/2 9:00, Đại báo nghỉ chính thức

*Tony+Yumi đang đưa Hana xuống công viên dưới apt. Đại ngồi bàn ăn, gửi LINE Tanaka.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) <ruby>田中<rt>たなか</rt></ruby>さん、いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>個人的<rt>こじんてき</rt></ruby>なご<ruby>相談<rt>そうだん</rt></ruby>がございまして、ご<ruby>連絡<rt>れんらく</rt></ruby>いたしました。<br>*(Anh Tanaka, luôn cảm ơn anh. Em có chuyện riêng muốn trao đổi.)* |
| Đại | (LINE) <ruby>突然<rt>とつぜん</rt></ruby>で<ruby>恐縮<rt>きょうしゅく</rt></ruby>ですが、BD BrSEの<ruby>役職<rt>やくしょく</rt></ruby>を<ruby>退職<rt>たいしょく</rt></ruby>させていただきたく、ご<ruby>連絡<rt>れんらく</rt></ruby>差し<ruby>上<rt>あ</rt></ruby>げました。<ruby>退職<rt>たいしょく</rt></ruby><ruby>希望日<rt>きぼうび</rt></ruby>は2031<ruby>年<rt>ねん</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>でございます。<br>*(Đột ngột em xin lỗi, nhưng em xin nghỉ vị trí BD BrSE ạ. Ngày nghỉ mong muốn 31/3/2031.)* |
| Đại | (LINE) <ruby>理由<rt>りゆう</rt></ruby>といたしましては、HizashiのMRRが¥1.5Mを<ruby>達成<rt>たっせい</rt></ruby>いたしましたので、フルタイムの<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>として<ruby>専念<rt>せんねん</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>がございます。<br>*(Lý do: MRR Hizashi đạt ¥1.5M nên cần full-time với vai trò founder.)* |
| Đại | (LINE) <ruby>当社<rt>とうしゃ</rt></ruby>での1<ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>多<rt>おお</rt></ruby>くを<ruby>学<rt>まな</rt></ruby>ばせていただきました。<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(1 năm ở công ty em đã học được rất nhiều. Em xin chân thành cảm ơn.)* |
| Tanaka | (LINE, 15 phút sau) グエンさん、メッセージ<ruby>拝見<rt>はいけん</rt></ruby>しました。まずは、おめでとうございます!Hizashiが<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>している<ruby>証<rt>あかし</rt></ruby>ですね。<br>*(Đại, anh đã xem. Trước hết, chúc mừng em! Đây là minh chứng Hizashi đang phát triển thuận lợi.)* |
| Tanaka | (LINE) <ruby>退職<rt>たいしょく</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>正直<rt>しょうじき</rt></ruby><ruby>寂<rt>さび</rt></ruby>しいですが、<ruby>応援<rt>おうえん</rt></ruby>させていただきます。<br>*(Vụ nghỉ việc anh hiểu rồi. Thật lòng buồn nhưng anh ủng hộ.)* |
| Tanaka | (LINE) つきましては、<ruby>退職後<rt>たいしょくご</rt></ruby>も<ruby>当社<rt>とうしゃ</rt></ruby>とご<ruby>縁<rt>えん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けていただきたく、アドバイザリーまたは<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>提携<rt>ていけい</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>はいかがでしょうか?<br>*(Tiện đây, anh muốn duy trì quan hệ sau khi em nghỉ, hình thức cố vấn hoặc hợp tác kinh doanh thế nào?)* |
| Đại | (LINE) <ruby>是非<rt>ぜひ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いいたします!<ruby>退職後<rt>たいしょくご</rt></ruby>も<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>きご<ruby>相談<rt>そうだん</rt></ruby>させていただければ<ruby>幸<rt>さいわ</rt></ruby>いです。<ruby>2月中<rt>にがつちゅう</rt></ruby>に<ruby>正式<rt>せいしき</rt></ruby>な<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせを<ruby>設<rt>もう</rt></ruby>けさせてください。<br>*(Em rất mong được hợp tác! Sau khi nghỉ em rất mong tiếp tục trao đổi với anh. Trong tháng 2 em xin tổ chức một buổi họp chính thức.)* |
| Tanaka | (LINE) <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>直接<rt>ちょくせつ</rt></ruby><ruby>話<rt>はな</rt></ruby>しましょう。<br>*(OK em. Thứ Hai tuần sau ở công ty mình nói trực tiếp.)* |

---

## Tình huống 9 — Apt bếp · Thứ Bảy 1/2 9:30, Đại báo Mai

*Mai từ cửa vào với Tony+Yumi+Hana, ai cũng đỏ mặt vì lạnh. Hana cười tươi.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Em ơi! Anh đã gửi LINE Tanaka rồi. Anh ấy chấp thuận + đề xuất vai cố vấn. |
| Mai | (VN, ôm Đại) Anh ơi! Tốt quá. Anh ấy lúc nào cũng tử tế. |
| Đại | (VN) Anh viết theo y bản em duyệt tối qua. Đỡ run hơn nhiều. |
| Tony | (Osaka-ben, vào nghe lỏm) ダイ、なんかええニュースあったんか?<br>*(Đại, có tin vui à?)* |
| Đại | はい!<ruby>会社<rt>かいしゃ</rt></ruby>に<ruby>退職<rt>たいしょく</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>出<rt>で</rt></ruby>ました。3<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby>で<ruby>退職<rt>たいしょく</rt></ruby>、4<ruby>月<rt>がつ</rt></ruby>から Hizashi <ruby>専念<rt>せんねん</rt></ruby>します。<br>*(Vâng! Em đã chính thức báo nghỉ. 31/3 nghỉ, từ 4/2031 full-time Hizashi.)* |
| Yumi | (Osaka-ben) おお!<ruby>大<rt>おお</rt></ruby>きな<ruby>決断<rt>けつだん</rt></ruby>やな!<ruby>応援<rt>おうえん</rt></ruby>するで!<br>*(Ô! Quyết định lớn nhỉ! Bọn bà ủng hộ!)* |
| Tony | (Osaka-ben) ダイ、わしらは<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>来<rt>く</rt></ruby>る<ruby>度<rt>たび</rt></ruby>に<ruby>家<rt>いえ</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>るで。<ruby>困<rt>こま</rt></ruby>った<ruby>時<rt>とき</rt></ruby>はいつでも<ruby>連絡<rt>れんらく</rt></ruby>してな。<br>*(Đại à, mỗi lần đến Osaka bọn ông sẽ ghé. Có khó khăn cứ liên lạc.)* |

---

## Tình huống 10 — Slack Tuấn+Aiko · Thứ Bảy 1/2 10:00, Đại báo cofounder

*Đại nhắn group Slack Hizashi co-founder.*

| Vai | Lời thoại |
|---|---|
| Đại | (Slack) <ruby>兄<rt>あに</rt></ruby>さん、Aiko さん、ご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>今朝<rt>けさ</rt></ruby>、タンハーの<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>正式<rt>せいしき</rt></ruby>に<ruby>退職<rt>たいしょく</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>出<rt>で</rt></ruby>ました。3<ruby>月<rt>がつ</rt></ruby>31<ruby>日<rt>にち</rt></ruby><ruby>退職<rt>たいしょく</rt></ruby>、4<ruby>月<rt>がつ</rt></ruby>1<ruby>日<rt>にち</rt></ruby>から Hizashi 100%です。<br>*(Anh ơi, Aiko ơi, em báo cáo. Sáng nay em đã chính thức báo nghỉ với anh Tanaka Thanh A. 31/3 nghỉ, 1/4 Hizashi 100%.)* |
| Tuấn | (Slack, VN) Em ơi! Tốt quá. Em sang full-time là Hizashi bước sang giai đoạn mới. |
| Aiko | (Slack) <ruby>遂<rt>つい</rt></ruby>に!ダイくん、お<ruby>疲<rt>つか</rt></ruby>れさまでした!1<ruby>年間<rt>ねんかん</rt></ruby><ruby>二足<rt>にそく</rt></ruby>のわらじ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大変<rt>たいへん</rt></ruby>だったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Cuối cùng! Đại em vất vả rồi! 1 năm 2 việc chắc khó khăn lắm.)* |
| Đại | (Slack) お<ruby>二人<rt>ふたり</rt></ruby>のお<ruby>陰<rt>かげ</rt></ruby>です。4<ruby>月<rt>がつ</rt></ruby>から、Series A pitch <ruby>準備<rt>じゅんび</rt></ruby>、v1.1 機能<ruby>追加<rt>ついか</rt></ruby>、<ruby>採用<rt>さいよう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>、<ruby>本格<rt>ほんかく</rt></ruby>スタートしましょう。<br>*(Nhờ 2 anh chị. Từ tháng 4, bắt đầu chính thức: chuẩn bị Series A pitch, thêm tính năng v1.1, kế hoạch tuyển dụng.)* |
| Tuấn | (Slack, VN) Phấn khích quá! Hôm nào em rảnh, anh em mình họp roadmap 2031 nhé. |
| Đại | (Slack, VN) Tuần sau Tony+Yumi về Aichi xong. Thứ Tư 5/2 nhé. |

---

## Tình huống 11 — Slack với cohort BrSE Thanh A · Thứ Hai 3/2 12:00, đồng nghiệp biết tin

*Tanaka đã thông báo cohort BrSE chiều Thứ Hai. Group LINE BrSE bùng nổ.*

| Vai | Lời thoại |
|---|---|
| Thanh (trưởng nhóm BrSE) | (LINE VN) Đại em! Cả nhóm vừa nghe tin em nghỉ. 8 anh em BrSE đề xuất tổ chức 送別会 cho em ngày 31/3 nhé. |
| Đại | (LINE VN) Trời ơi cảm ơn anh Thanh. Em vinh dự quá. |
| Khoa | (LINE VN) Em ơi! Em nghỉ nhưng tình anh em vẫn nguyên nhé. Mỗi tháng anh em mình tụ tập một lần đi. |
| Phương | (LINE VN) Em là người đầu tiên trong nhóm khởi nghiệp thành công. Em là tấm gương cho các lứa sau. |
| Hùng | (LINE VN) Cả nhóm sẽ ăn diện Thứ Sáu — em chuẩn bị tinh thần. Mặc vest đẹp vào. |
| Đại | (LINE VN) Vâng anh. 1 năm ở Thanh A với em là ngôi trường tốt nhất đời. Em sẽ mãi không quên. Em sẽ chuẩn bị vest. |

---

## Tình huống 12 — Apt sảnh · 31/1 chiều, tiễn Tony+Yumi ra ga

*Tony+Yumi kéo vali ra cửa. Mai+Hana đứng cạnh. Đại đi cùng ra ga.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben) Mai-san、ハナちゃん、お<ruby>世話<rt>せわ</rt></ruby>になったな。<ruby>来年<rt>らいねん</rt></ruby>もまた<ruby>来<rt>く</rt></ruby>るで!<br>*(Mai, Hana, cảm ơn đã tiếp đón. Sang năm bọn ông lại đến!)* |
| Yumi | (Osaka-ben) Mai-san、<ruby>赤<rt>あか</rt></ruby>ちゃん、<ruby>頑張<rt>がんば</rt></ruby>ってな!できたらすぐLINEしてや!<br>*(Mai, cố lên với em bé nhé! Có là LINE ngay nhé!)* |
| Mai | (cúi chào) Yumi さん、ありがとうございます。<ruby>必<rt>かなら</rt></ruby>ずご<ruby>連絡<rt>れんらく</rt></ruby>いたします。<br>*(Yumi cảm ơn bà. Nhất định em sẽ báo.)* |
| Hana | (ôm Yumi) おばあちゃん!また<ruby>来<rt>き</rt></ruby>てね! |
| Yumi | (ôm lại) ハナ、おばあちゃんもまた<ruby>来<rt>く</rt></ruby>るで。<ruby>絵本<rt>えほん</rt></ruby>いっぱい<ruby>読<rt>よ</rt></ruby>むんやで。<br>*(Hana ơi, bà cũng sẽ đến. Đọc nhiều sách tranh nhé.)* |

*Ga Senri-chuo. Đại tiễn 2 cụ vào cửa soát vé.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben) ダイ!<ruby>今月末<rt>こんげつまつ</rt></ruby>でタンハー<ruby>辞<rt>や</rt></ruby>めるんやろ?Hizashiに<ruby>専念<rt>せんねん</rt></ruby>して、よう<ruby>頑張<rt>がんば</rt></ruby>るんやで!<br>*(Đại! Cuối tháng nghỉ Thanh A nhỉ? Tập trung Hizashi, ráng làm hết mình!)* |
| Đại | はい、Tony さん。<ruby>必<rt>かなら</rt></ruby>ず<ruby>結果<rt>けっか</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください。<br>*(Vâng Tony. Em chắc chắn sẽ ra kết quả. Ông bà về cẩn thận nhé.)* |
| Yumi | (Osaka-ben) ダイ、<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にせなあかんで。12<ruby>月<rt>がつ</rt></ruby>の<ruby>過労<rt>かろう</rt></ruby>みたいなん、<ruby>二度<rt>にど</rt></ruby>とあかんで!<br>*(Đại, giữ sức nhé. Đừng quá tải như tháng 12 nữa!)* |
| Đại | はい、<ruby>妻<rt>つま</rt></ruby>と<ruby>約束<rt>やくそく</rt></ruby>しております。ご<ruby>安心<rt>あんしん</rt></ruby>ください。<br>*(Vâng, em đã hứa với vợ. Ông bà yên tâm.)* |

---

## Tình huống 13 — Apt khuya · 31/1 22:00, Đại+Mai reflect

*Hana đã ngủ. Đại+Mai trên sofa với trà gừng.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Một tuần có Tony với Yumi vui ghê. Giờ nhà yên tĩnh quá. |
| Đại | (VN) Em à. Cuộc sống mình đang chuyển giai đoạn: Hana 2.5 tuổi lớn nhanh, hai vợ chồng muốn có bé 2, anh nghỉ Thanh A, Hizashi sắp Series A. |
| Mai | (VN) Em hỏi anh thật: anh có lo không? Bỏ việc ổn định, full-time startup, lại có vợ với đứa thứ hai sắp đến? |
| Đại | (VN, suy nghĩ) Có lo nhưng không nhiều. Một, MRR ¥1.67M lo được 100% burn rate. Hai, Pre-seed runway còn 18 tháng. Ba, em có ¥120k/tháng hướng dẫn viên. Bốn, Tony+Yumi+bố mẹ HN là chỗ dựa. Năm, Tuấn+Aiko siêu tin cậy. |
| Mai | (VN) Em tự hào về anh lắm. Anh lúc nào cũng suy nghĩ thấu đáo. Em tin tưởng vào tương lai. |
| Đại | (VN, ôm Mai) Cảm ơn em. Em là chỗ dựa vững chắc của gia đình mình. (LINE Tanaka 1 dòng) <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はLINEでのご<ruby>連絡<rt>れんらく</rt></ruby>、<ruby>失礼<rt>しつれい</rt></ruby>いたしました。<ruby>明日<rt>あした</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>で<ruby>正式<rt>せいしき</rt></ruby>にご<ruby>挨拶<rt>あいさつ</rt></ruby>させていただきます。<br>*(Anh Tanaka, hôm nay LINE em xin lỗi đã thất lễ. Mai em sẽ chính thức chào hỏi anh ở công ty.)* |

---

## Đọng lại chương 11

Đại trải qua tuần 25/1-1/2/2031 đầy ý nghĩa: sinh nhật muộn Hana 2.5 tuổi với Tony+Yumi sang chơi 1 tuần. Học mẫu đón khách họ hàng JP: **「いらっしゃい・お上がりください」**, cảm ơn quà sang **「お心遣いありがとうございます」**. Khoảnh khắc lay động: Hana ước "<ruby>弟<rt>おとうと</rt></ruby>!" — đúng 2 tuần sau Mai ngừng pill. Cao trào chương: ngày 1/2 Đại chính thức báo nghỉ Thanh A qua LINE Tanaka — học mẫu nghỉ việc keigo formal: **「退職させていただきたく、ご連絡差し上げました」**, **「退職希望日は〜でございます」**, **「心より感謝申し上げます」**. Tanaka phản hồi đề xuất vai cố vấn: **「アドバイザリーまたは業務提携の形はいかがでしょうか?」** — Đại chấp nhận **「是非お願いいたします」**. Nhóm BrSE đề xuất 送別会 ngày 31/3. Mai = cố vấn JP business của chồng. Cuối tuần tiễn Tony+Yumi ra ga, học mẫu tiễn khách **「お気をつけてお帰りください」**.

> Từ vựng & mẫu câu chương này: <ruby>誕生日<rt>たんじょうび</rt></ruby>・<ruby>絵本<rt>えほん</rt></ruby>・<ruby>木製玩具<rt>もくせいがんぐ</rt></ruby>・<ruby>退職<rt>たいしょく</rt></ruby>・<ruby>退職希望日<rt>たいしょくきぼうび</rt></ruby>・<ruby>専念<rt>せんねん</rt></ruby>・アドバイザリー・<ruby>業務提携<rt>ぎょうむていけい</rt></ruby>・<ruby>送別会<rt>そうべつかい</rt></ruby>・<ruby>第二子<rt>だいにし</rt></ruby>・<ruby>評価額<rt>ひょうかがく</rt></ruby>・<ruby>株主<rt>かぶぬし</rt></ruby>・いらっしゃい・お<ruby>上<rt>あ</rt></ruby>がりください・お<ruby>心遣<rt>こころづか</rt></ruby>いありがとうございます・<ruby>遠<rt>とお</rt></ruby>くからお<ruby>越<rt>こ</rt></ruby>しいただき・<ruby>退職<rt>たいしょく</rt></ruby>させていただきたく・<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます・<ruby>是非<rt>ぜひ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いいたします・お<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください

## Bí quyết chương

- **Báo nghỉ Thanh A trước 2 tháng**: phép lịch sự văn hoá business JP (tối thiểu 1 tháng, 2 tháng là chu đáo)
- **「退職させていただきたく」**: cấu trúc cực kỳ khiêm tốn — "xin được phép nghỉ" thay vì "tôi nghỉ"
- **Mai = cố vấn JP business**: vợ check và sửa từng câu LINE business cho chồng — phối hợp Việt-Nhật chuẩn
- **Tanaka đề xuất vai cố vấn**: phong cách JP duy trì quan hệ kinh doanh sau khi nhân sự rời công ty
- **「お心遣いありがとうございます」**: mẫu cảm ơn quà sang trọng — không nói "đắt quá" mà nói "tấm lòng"
- **Quà gỗ Nara handmade**: vật phẩm gắn cả đời, không phải đồ chơi hỏng sau 1 năm — quan điểm tiêu dùng Nhật

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 誕生日 | たんじょうび | ĐẢN SINH NHẬT | sinh nhật |
| いらっしゃい |  |  | mời vào |
| ようこそ |  |  | hoan nghênh |
| 寒い | さむい | HÀN | lạnh |
| 久しぶり | ひさしぶり | CỬU | lâu rồi |
| お邪魔します | おじゃまします | TÀ MA | làm phiền nhé |
| 台所 | だいどころ | ĐÀI SỞ | bếp |
| 絵本 | えほん | HỘI BẢN | sách tranh |
| 遠くからお越し | とおくからおこし | VIỄN VIỆT | đến từ xa |
| 当たり前 | あたりまえ | ĐƯƠNG TIỀN | đương nhiên |
| 名作 | めいさく | DANH TÁC | kiệt tác |
| 木製玩具 | もくせいがんぐ | MỘC CHẾ NGOẠN CỤ | đồ chơi gỗ |
| 職人 | しょくにん | CHỨC NHÂN | nghệ nhân |
| 手作り | てづくり | THỦ TÁC | làm thủ công |
| 心遣い | こころづかい | TÂM KHIỂN | sự chu đáo |
| 同然 | どうぜん | ĐỒNG NHIÊN | gần như, tương đương |
| 卵 | たまご | NOÃN | trứng |
| 投資後 | とうしご | ĐẦU TƯ HẬU | sau đầu tư |
| 紙の上 | かみのうえ | CHỈ THƯỢNG | trên giấy (giá trị giấy tờ) |
| 倍 | ばい | BỘI | lần (số lần) |
| お願い事 | おねがいごと | NGUYỆN SỰ | điều ước |
| ろうそく |  |  | nến |
| 吹く | ふく | XUY | thổi |
| 弟 | おとうと | ĐỆ | em trai |
| 妹 | いもうと | MUỘI | em gái |
| 叶う | かなう | DIỆP | thành sự thật |
| 赤ちゃん | あかちゃん | XÍCH | em bé |
| 恵まれる | めぐまれる | HUỆ | được trời cho |
| 余計 | よけい | DƯ KẾ | càng, thêm phần |
| 退職 | たいしょく | THOÁI CHỨC | nghỉ việc |
| 退職希望日 | たいしょくきぼうび | THOÁI CHỨC HY VỌNG NHẬT | ngày mong muốn nghỉ |
| 突然 | とつぜん | ĐỘT NHIÊN | đột ngột |
| 差し上げました | さしあげました | SAI THƯỢNG | xin gửi (khiêm nhường) |
| 心より感謝 | こころよりかんしゃ | TÂM CẢM TẠ | chân thành cảm ơn |
| 寂しい | さびしい | TỊCH | buồn, cô đơn |
| 縁 | えん | DUYÊN | duyên, mối quan hệ |
| アドバイザリー |  |  | cố vấn |
| 業務提携 | ぎょうむていけい | NGHIỆP VỤ ĐỀ HỆ | hợp tác kinh doanh |
| 設ける | もうける | THIẾT | tổ chức, lập |
| 送別会 | そうべつかい | TỐNG BIỆT HỘI | tiệc chia tay |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| お気をつけて | おきをつけて | KHÍ | đi cẩn thận nhé |
| 申し出ました | もうしでました | THÂN XUẤT | đã đề nghị, đã trình |
| 第二子 | だいにし | ĐỆ NHỊ TỬ | con thứ hai |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (825000012, 800000025, NULL, 'markdown_book', 'T12. Khép Năm 1 — quyết định nghỉ Thanh A, 送別会, Day 1 CEO', '# Sách kỹ sư cầu nối & khởi nghiệp · T12. Khép Năm 1 — quyết định nghỉ Thanh A, 送別会, Day 1 CEO

> **Mục tiêu nhân vật:** Đại 25 tuổi (sinh nhật 4/2031 sắp 26), 3/2031. Học các mẫu hội thoại tiếng Nhật trong các bối cảnh đặc thù cuối năm: (1) thông báo có thai trong gia đình song ngữ, (2) phát biểu farewell formal trong 送別会 izakaya (`一年間お世話になりました`), (3) đề xuất hợp tác kinh doanh sau khi nghỉ (`業務提携をご検討いただければ〜`), (4) đối thoại nhóm 4 người Đại-Mai-Tuấn-Aiko bàn quyết định Year 2, (5) phản hồi cấp trên (Takahashi-CEO + Tanaka-PM) trong tình huống formal, (6) chào ngày Day 1 với gia đình.

---

## Bối cảnh

3/2031. Tháng cuối Đại làm ở Thanh A. Hizashi MRR jump ¥1.67M → ¥2.01M (đạt ¥2M lần đầu), 2.051 paid user, LTV/CAC 33 lần. Sáng 25/3 Mai test thai dương tính — bé 2 dự sinh 12/2031. Tối 31/3 là 送別会 chính thức tại izakaya 「<ruby>炉端焼<rt>ろばたや</rt></ruby>き」 Honmachi với Takahashi-CEO + Tanaka-PM + 8 BrSE cohort = 14 người. Ngày 1/4/2031 là Day 1 Hizashi full-time CEO. Quyết định lớn của chương: Đại chính thức chia tay 1 năm BrSE để toàn tâm với startup. Chương này tập trung mẫu câu farewell business + tổng kết Năm 1 + đối thoại 4 người bàn quyết định Year 2.

---

## Tình huống 1 — Phòng tắm + phòng ngủ apt · Thứ Ba 25/3 7:00, Mai test thai

*Đại đang vùng dậy. Mai chạy ra từ phòng tắm, tay cầm que thử.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, hét nhỏ) Anh ơi! ANH ƠI! |
| Đại | (VN, vùng dậy) Em ơi! Sao thế em? |
| Mai | (VN, đưa que) Hai vạch. Dương tính rồi anh! |
| Đại | (VN, mắt mở to) Em ơi! Thật à? Em có thai thật rồi! |
| Mai | (vừa cười vừa khóc) Sớm hơn em tưởng. Mới 2 tháng từ hôm em ngừng pill. |
| Đại | (VN, ôm Mai) Cảm ơn em. Anh không biết nói gì luôn. |
| Hana | (chạy vào) Mẹ! Bố! Sao bố mẹ khóc? |
| Đại | (VN, bế Hana) Hana ơi! Trong bụng mẹ có em bé rồi đấy! Hana sắp được làm chị. |
| Hana | (sờ bụng Mai) <ruby>赤<rt>あか</rt></ruby>ちゃん!ハナの<ruby>弟<rt>おとうと</rt></ruby>! |
| Mai | (VN, cười) Em còn nhỏ xíu lắm con. Tháng 12 em mới ra với mình. |
| Hana | 12<ruby>月<rt>がつ</rt></ruby>!ハナ、まつ! |

---

## Tình huống 2 — Apt · 25/3 7:30, gọi điện báo bố mẹ Mai

*Đại+Mai+Hana ngồi sofa, video call bố mẹ Mai ở Hà Nội (giờ VN 5:30 sáng — bố Mai dậy sớm).*

| Vai | Lời thoại |
|---|---|
| Bố Mai | (VN) Alô? Sao gọi sớm thế con? Có chuyện gì không? |
| Mai | (VN) Bố ơi! Con có thai bé 2 rồi bố! |
| Bố Mai | (VN, sửng sốt) Trời ơi! Mai ơi! Mừng quá! Bao giờ sinh con? |
| Mẹ Mai | (VN, vào hình) Mai con! Khoẻ không? Đã đi khám chưa? |
| Mai | (VN) Con mới thử que thôi mẹ. Tuần này con đi bệnh viện Senri-chuo khám chính thức. Dự sinh tháng 12/2031. |
| Đại | (VN) Bố mẹ ơi, ngày 31/3 con cũng nghỉ Thanh A chính thức. Hai tin vui cùng tháng. |
| Bố Mai | (VN) Tốt quá con. Bố biết con tính kỹ rồi. Mai con với bé 2, Đại lo cho gia đình + Hizashi, đầu tháng 4 bố mẹ qua Osaka thăm. |
| Hana | (chen vào) おじいちゃん!ハナ、お<ruby>姉<rt>ねえ</rt></ruby>ちゃんになる!<br>*(Ông ngoại ơi! Hana sắp làm chị!)* |
| Bố Mai | (VN, cười) Bà chị Hana đỉnh quá! |

---

## Tình huống 3 — Video call Hizashi standup · 25/3 21:00, Đại báo cofounder

*Đại ngồi bàn ăn, video call Tuấn ở WeWork + Aiko ở apartment.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN+JP) <ruby>兄<rt>あに</rt></ruby>さん、Aiko さん、<ruby>本日<rt>ほんじつ</rt></ruby>のスタンドアップの<ruby>前<rt>まえ</rt></ruby>に、<ruby>個人的<rt>こじんてき</rt></ruby>なご<ruby>報告<rt>ほうこく</rt></ruby>があります。マイが<ruby>妊娠<rt>にんしん</rt></ruby>しました!<br>*(Trước standup hôm nay, em có tin riêng tư. Mai có thai rồi!)* |
| Tuấn | (VN, mắt mở to) Trời ơi! Mai đỉnh quá! Khi nào sinh em? |
| Đại | (VN) Tháng 12/2031 hoặc tháng 1/2032 — chưa rõ chính xác. |
| Aiko | おめでとう!ダイくん、マイさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しい!<ruby>家族<rt>かぞく</rt></ruby>4<ruby>人<rt>にん</rt></ruby>になるね!<br>*(Chúc mừng! Đại em, Mai chị, em vui thật sự! Gia đình lên 4 người nhỉ!)* |
| Đại | ありがとうございます。<ruby>計画<rt>けいかく</rt></ruby>ですが、<ruby>妊娠<rt>にんしん</rt></ruby><ruby>期間中<rt>きかんちゅう</rt></ruby>もシリーズA pitchは<ruby>並行<rt>へいこう</rt></ruby>して<ruby>進<rt>すす</rt></ruby>めます。<ruby>出産<rt>しゅっさん</rt></ruby><ruby>前<rt>まえ</rt></ruby>にクロージングできれば<ruby>理想<rt>りそう</rt></ruby>です。<br>*(Cảm ơn. Kế hoạch là trong lúc thai kỳ vẫn chạy Series A pitch song song. Lý tưởng là close được trước khi sinh.)* |
| Tuấn | (VN) Anri sẽ dẫn dắt. Có thể chuyển pre-seed sang bridge round rồi lên Series A. Anh đề xuất khởi động pitch tháng 9/2031 (5 tháng sau hôm nay). |
| Aiko | <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>5月<rt>ごがつ</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めて、9<ruby>月<rt>がつ</rt></ruby>に<ruby>本格<rt>ほんかく</rt></ruby><ruby>始動<rt>しどう</rt></ruby>でちょうど<ruby>良<rt>よ</rt></ruby>いタイミングです。<br>*(Em đồng ý. Tháng 5 chuẩn bị, tháng 9 chính thức start là timing chuẩn.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>来月<rt>らいげつ</rt></ruby><ruby>頭<rt>あたま</rt></ruby>、4<ruby>人<rt>にん</rt></ruby>でロードマップ<ruby>会議<rt>かいぎ</rt></ruby>を<ruby>設<rt>もう</rt></ruby>けましょう。マイも<ruby>同席<rt>どうせき</rt></ruby>します。<br>*(OK em. Đầu tháng sau mình tổ chức họp roadmap 4 người. Có Mai cùng dự.)* |

---

## Tình huống 4 — Apt phòng làm việc · 30/3 22:00, đối thoại 4 người roadmap

*Đại+Mai ngồi cùng laptop. Tuấn+Aiko join Zoom từ WeWork. Hana đã ngủ.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN+JP) <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは、Year 2 ロードマップです。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>(マイの<ruby>妊娠<rt>にんしん</rt></ruby>)を<ruby>踏<rt>ふ</rt></ruby>まえて、<ruby>無理<rt>むり</rt></ruby>のない<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Chủ đề hôm nay là roadmap Year 2. Tính cả việc gia đình — Mai có thai — mình lập kế hoạch không quá sức.)* |
| Tuấn | (VN) Em ơi, anh thấy năm 2 mình phải chia 3 mảng: product v1.1 → v2.0, Series A pitch, hire 5-8 người. Em ưu tiên cái nào? |
| Mai | (VN, lên tiếng) Em xin nêu góc nhìn vợ founder nhé. Em không muốn anh Đại lặp lại 過労 12/2030. Một, ngủ 7 tiếng. Hai, Chủ Nhật không laptop. Ba, sáng Thứ Ba+Năm ở nhà. Bốn lời hứa cũ vẫn giữ. |
| Đại | (VN) Vâng em. Anh giữ. |
| Aiko | マイさんの<ruby>意見<rt>いけん</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>重要<rt>じゅうよう</rt></ruby>です。<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のメンタルが<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>持続性<rt>じぞくせい</rt></ruby>を<ruby>左右<rt>さゆう</rt></ruby>します。<br>*(Ý kiến chị Mai cực kỳ quan trọng. Tinh thần founder quyết định sự bền vững của công ty.)* |
| Tuấn | (VN) Đồng ý. Vậy thứ tự ưu tiên: 1) v1.1 quick win tháng 4-6 (Aiko + anh làm chính, em review). 2) Hire 2 người trước (BrSE + designer junior) tháng 5-6. 3) Series A pitch chính thức tháng 9. 4) v2.0 sau Series A. |
| Đại | (VN+JP) <ruby>賛成<rt>さんせい</rt></ruby>。<ruby>採用<rt>さいよう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>1人目<rt>ひとりめ</rt></ruby>のBrSEはタンハーの<ruby>同期<rt>どうき</rt></ruby>から<ruby>声<rt>こえ</rt></ruby>をかけたいです。クォン<ruby>君<rt>くん</rt></ruby>、28<ruby>歳<rt>さい</rt></ruby>、<ruby>興味<rt>きょうみ</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>しています。<br>*(Đồng ý. Vụ tuyển dụng, BrSE đầu tiên em muốn rủ từ cohort Thanh A. Anh Khoa 28t đã bày tỏ quan tâm.)* |
| Aiko | <ruby>良<rt>よ</rt></ruby>いですね。<ruby>既知<rt>きち</rt></ruby>の<ruby>人材<rt>じんざい</rt></ruby>はオンボーディングが<ruby>早<rt>はや</rt></ruby>いです。<br>*(Tốt đấy. Người đã biết thì onboarding nhanh.)* |
| Mai | (VN) Anh em ơi, em hỏi một câu: Đại sang Hizashi full-time, lương rút từ Hizashi bao nhiêu? Em cần biết để tính chi tiêu gia đình. |
| Đại | (VN) Em ơi, anh em mình bàn rồi: ¥400k/tháng base + cổ phần. Trước v1.0 anh không lấy lương. Giờ MRR đã đủ, lấy ¥400k là vừa. |
| Tuấn | (VN) Anh + Aiko cũng ¥400k. 3 founder bằng nhau. |
| Mai | (VN) Em đồng ý. ¥400k + ¥120k của em = ¥520k/tháng, đủ chi tiêu + tiết kiệm. |

---

## Tình huống 5 — Văn phòng Thanh A · 31/3 17:30, Đại dọn bàn cuối cùng

*Đại đóng laptop, dọn cốc + cây xanh nhỏ + sách. Tanaka đến cạnh.*

| Vai | Lời thoại |
|---|---|
| Tanaka | グエンさん、<ruby>最後<rt>さいご</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>ですね。<ruby>感慨<rt>かんがい</rt></ruby><ruby>深<rt>ぶか</rt></ruby>いです。<br>*(Đại, ngày cuối rồi nhỉ. Cảm xúc dâng trào ghê.)* |
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、1<ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>右<rt>みぎ</rt></ruby>も<ruby>左<rt>ひだり</rt></ruby>もわからない<ruby>新卒<rt>しんそつ</rt></ruby>を、ここまで<ruby>育<rt>そだ</rt></ruby>てていただき、<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Anh Tanaka, 1 năm qua thật sự cảm ơn anh. Em từ một fresh grad không biết gì, được anh dìu dắt đến đây, em chân thành cảm ơn.)* |
| Tanaka | こちらこそ。グエンさんは、<ruby>当社<rt>とうしゃ</rt></ruby>のBrSE<ruby>育成<rt>いくせい</rt></ruby>プログラムの<ruby>象徴<rt>しょうちょう</rt></ruby>のような<ruby>存在<rt>そんざい</rt></ruby>でした。<br>*(Anh mới phải cảm ơn. Em như biểu tượng của chương trình đào tạo BrSE của công ty.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>退職後<rt>たいしょくご</rt></ruby>も、アドバイザリーと<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>提携<rt>ていけい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em ngại quá. Sau khi nghỉ, vụ cố vấn + hợp tác kinh doanh, mong anh giúp đỡ.)* |
| Tanaka | もちろんです。タカハシ<ruby>社長<rt>しゃちょう</rt></ruby>も<ruby>本気<rt>ほんき</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>組<rt>く</rt></ruby>む<ruby>意向<rt>いこう</rt></ruby>です。<ruby>今晩<rt>こんばん</rt></ruby>の<ruby>送別会<rt>そうべつかい</rt></ruby>でも<ruby>話<rt>はな</rt></ruby>が<ruby>出<rt>で</rt></ruby>るかもしれません。<br>*(Tất nhiên rồi. Sếp Takahashi cũng định nghiêm túc. Tối nay 送別会 có lẽ sẽ có nói chuyện.)* |
| Đại | <ruby>了解<rt>りょうかい</rt></ruby>です。それでは、<ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>本町<rt>ほんまち</rt></ruby>の<ruby>炉端焼<rt>ろばたや</rt></ruby>きで。<br>*(Vâng anh. Vậy 19 giờ tại izakaya Robatayaki Honmachi.)* |

---

## Tình huống 6 — Izakaya 炉端焼き Honmachi · 31/3 19:00, mở 送別会 + Takahashi-CEO phát biểu

*Phòng riêng 14 người. Bàn dài. Takahashi-CEO đứng giữa, bia trên tay. Tanaka + 8 BrSE cohort + sales team ngồi đầy.*

| Vai | Lời thoại |
|---|---|
| Takahashi (CEO) | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>は、グエン・ダイくんの<ruby>送別会<rt>そうべつかい</rt></ruby>です。<br>*(Cảm ơn mọi người đã đến. Hôm nay là 送別会 của Nguyễn Đại.)* |
| Takahashi | グエンくんは、この1<ruby>年間<rt>ねんかん</rt></ruby>で<ruby>当社<rt>とうしゃ</rt></ruby>に<ruby>多大<rt>ただい</rt></ruby>な<ruby>貢献<rt>こうけん</rt></ruby>をしてくれました。<br>*(Trong 1 năm qua, Đại đã đóng góp rất lớn cho công ty.)* |
| Takahashi | <ruby>愛知<rt>あいち</rt></ruby>オートパーツ、NTTスマートソリューションズ、ソニー<ruby>子会社<rt>こがいしゃ</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby>ロジスティクスの4プロジェクト、<ruby>合計<rt>ごうけい</rt></ruby>¥1.2<ruby>億<rt>おく</rt></ruby>の<ruby>売上<rt>うりあげ</rt></ruby>に<ruby>貢献<rt>こうけん</rt></ruby>してくれました。<br>*(Đóng góp tổng doanh thu ¥120M từ 4 dự án Aichi Auto Parts, NTT Smart Solutions, công ty con Sony, Osaka Logistics.)* |
| Takahashi | また、<ruby>自身<rt>じしん</rt></ruby>のスタートアップHizashiも<ruby>同時<rt>どうじ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>て、ProductHunt #1 を<ruby>獲得<rt>かくとく</rt></ruby>。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしい1<ruby>年<rt>ねん</rt></ruby>でした。<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Đồng thời nuôi startup Hizashi đến ProductHunt #1. Một năm tuyệt vời. Cảm ơn em đã vất vả.)* |
| (Toàn bàn vỗ tay) | |

---

## Tình huống 7 — Izakaya · 19:15, Tanaka phát biểu

| Vai | Lời thoại |
|---|---|
| Tanaka | (đứng) ダイくんと<ruby>働<rt>はたら</rt></ruby>けたこの1<ruby>年<rt>ねん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>楽<rt>たの</rt></ruby>しかったです。<br>*(1 năm được làm với Đại, anh thật sự rất vui.)* |
| Tanaka | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、<ruby>敬語<rt>けいご</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>固<rt>かた</rt></ruby>かったのが、<ruby>今<rt>いま</rt></ruby>では<ruby>自然<rt>しぜん</rt></ruby>に<ruby>使<rt>つか</rt></ruby>えるようになりましたね。<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>間近<rt>まぢか</rt></ruby>で<ruby>見<rt>み</rt></ruby>られたのは、<ruby>私<rt>わたし</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りです。<br>*(Hồi đầu kính ngữ em hơi cứng, giờ dùng tự nhiên rồi. Được xem sự trưởng thành sát bên là niềm tự hào của anh.)* |
| Tanaka | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>送<rt>おく</rt></ruby>り<ruby>出<rt>だ</rt></ruby>すのは<ruby>寂<rt>さび</rt></ruby>しいですが、Hizashiの<ruby>成功<rt>せいこう</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>から<ruby>応援<rt>おうえん</rt></ruby>しています!<ruby>頑張<rt>がんば</rt></ruby>ってください!<br>*(Thật lòng để em đi buồn, nhưng anh ủng hộ Hizashi thành công bằng cả trái tim! Cố lên!)* |
| (Vỗ tay) | |

---

## Tình huống 8 — Izakaya · 19:30, Thanh + cohort BrSE Việt phát biểu

*Anh Thanh đứng dậy, cầm bia. Cả nhóm BrSE Việt im lặng.*

| Vai | Lời thoại |
|---|---|
| Thanh | (VN) Đại em ơi! Anh đại diện 8 anh em BrSE Việt nói vài lời. |
| Thanh | (VN) 1 năm qua, em là người đầu tiên trong cohort dám khởi nghiệp full-time. Em là tấm gương cho các lứa sau. Anh tự hào về em. |
| Khoa | (VN, cay mắt) Em là người giỏi nhất nhóm em ơi. Khi nào anh cần lời khuyên về khởi nghiệp founder Việt tại Nhật, anh sẽ nhắn em. |
| Phương | (VN) Ngày em nghỉ việc, nhưng tình anh em trong nhóm thì không nghỉ đâu nhé. Tháng nào cũng tụ tập một lần. |
| Hùng | (VN) Em ơi anh cũng có ý định khởi nghiệp năm sau. Khi đó anh sẽ xin em chỉ giáo. |
| Đại | (VN, đứng dậy) Cảm ơn các anh. Em xúc động quá. Em nói tiếng Nhật trước cho Takahashi-shachou với anh Tanaka nghe nhé. |

---

## Tình huống 9 — Izakaya · 19:45, Đại phát biểu farewell formal

*Đại đứng giữa bàn, bia trong tay. Cả phòng im lặng.*

| Vai | Lời thoại |
|---|---|
| Đại | タカハシ<ruby>社長<rt>しゃちょう</rt></ruby>、<ruby>田中<rt>たなか</rt></ruby><ruby>部長<rt>ぶちょう</rt></ruby>、そして<ruby>同期<rt>どうき</rt></ruby>の<ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はこのような<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>会<rt>かい</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>いていただき、<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Sếp Takahashi, anh Tanaka, và các đồng nghiệp, cảm ơn các anh đã tổ chức buổi tiệc tuyệt vời này.)* |
| Đại | <ruby>当社<rt>とうしゃ</rt></ruby>での1<ruby>年間<rt>ねんかん</rt></ruby>は、<ruby>私<rt>わたし</rt></ruby>にとって<ruby>大<rt>おお</rt></ruby>きな<ruby>学校<rt>がっこう</rt></ruby>でした。BrSEの<ruby>仕事<rt>しごと</rt></ruby>、<ruby>敬語<rt>けいご</rt></ruby>、<ruby>商談<rt>しょうだん</rt></ruby>の<ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>、プロジェクト<ruby>管理<rt>かんり</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(1 năm ở công ty với em là một ngôi trường lớn. Em được học công việc BrSE, kính ngữ, cách tiến hành thương lượng, quản lý dự án.)* |
| Đại | タンハーがなければ、<ruby>今<rt>いま</rt></ruby>のHizashiはありません。それは<ruby>確<rt>たし</rt></ruby>かです。<br>*(Không có Thanh A thì không có Hizashi ngày hôm nay. Điều đó chắc chắn.)* |
| Đại | (hướng về Takahashi) <ruby>退職後<rt>たいしょくご</rt></ruby>も、アドバイザリーや<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>提携<rt>ていけい</rt></ruby>という<ruby>形<rt>かたち</rt></ruby>で、ぜひ<ruby>関<rt>かか</rt></ruby>わらせてください。<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>には、Hizashi<ruby>法人<rt>ほうじん</rt></ruby>プランと、タンハーの<ruby>日本<rt>にほん</rt></ruby><ruby>顧客<rt>こきゃく</rt></ruby><ruby>向<rt>む</rt></ruby>けに<ruby>協業<rt>きょうぎょう</rt></ruby>できればと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Sau khi nghỉ, em rất mong được đồng hành dưới hình thức cố vấn hoặc hợp tác. Cụ thể, em nghĩ có thể hợp tác giữa gói doanh nghiệp Hizashi với Thanh A cho khách Nhật.)* |
| Takahashi | (gật) <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>提案<rt>ていあん</rt></ruby>です!<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>させていただきます。<ruby>来月<rt>らいげつ</rt></ruby>にでも<ruby>正式<rt>せいしき</rt></ruby>な<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせを<ruby>設<rt>もう</rt></ruby>けましょう!<br>*(Đề xuất tuyệt vời! Mình sẽ xem xét nghiêm túc. Tháng tới mình tổ chức buổi họp chính thức nhé!)* |
| Đại | (cúi sâu) ありがとうございます!1<ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました!<br>*(Cảm ơn anh! 1 năm thật sự cảm ơn các anh!)* |
| Toàn bàn | (nâng ly) <ruby>乾杯<rt>かんぱい</rt></ruby>!ダイくん、お<ruby>疲<rt>つか</rt></ruby>れさまでした!<br>*(Cạn ly! Đại ơi cảm ơn em!)* |

---

## Tình huống 10 — Bar 2nd round · 21:30, cohort BrSE Việt riêng

*Sau buổi chính, 8 BrSE Việt + Đại tách sang quán bar cocktail gần đó. Takahashi + Tanaka đã về.*

| Vai | Lời thoại |
|---|---|
| Phương | (VN) Đại em! Cả nhóm muốn hỏi — em có thể tổ chức buổi gặp gỡ cộng đồng founder Việt + BrSE Osaka hàng tháng không? |
| Đại | (VN) Có chứ anh! 8 anh em BrSE cũ + BrSE mới Thanh A + co-founder Hizashi + có thể thêm các founder Việt khác. Khoảng 30 người trong mạng lưới founder Việt tại Nhật. |
| Khoa | (VN) Đỉnh! Em mở luôn group LINE "VN Founders + BrSE Osaka" nhé. Em là admin. |
| Hùng | (VN) Em ơi, Hizashi có tuyển BrSE năm 2-3 không? Anh quan tâm đấy. |
| Đại | (VN) Có thể đấy anh. Sau Series A em sẽ tuyển 5-8 người. Vị trí BrSE sẽ là người Việt đầu tiên em tuyển. |
| Quân (BrSE 28t, em út cohort) | (VN) Đại anh ơi! Có cơ hội em sẽ ứng tuyển vào Hizashi. |
| Đại | (cười, VN) Quân ơi! Năm sau gặp lại nhé. Em đang là BrSE giỏi đấy, anh nhớ tên rồi. |
| Thanh | (VN, nâng ly cuối) Cạn ly cho cohort BrSE Việt Thanh A 2030! |
| (Toàn nhóm) | (VN) Cạn ly! |

---

## Tình huống 11 — Đường về apt · 23:00, Đại gọi Mai

*Đại đi bộ từ ga Senri-chuo về apt. Tay vừa cầm bó hoa từ cohort + 1 tấm bảng "Thank you Đại" có chữ ký 8 BrSE.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, VN) Em ơi, anh đang đi bộ về. 5 phút nữa tới. |
| Mai | (LINE, VN) Em đợi anh. Hana đã ngủ rồi. Em pha trà gừng đây. |
| Đại | (LINE) Cảm ơn em. Hôm nay xúc động lắm em ơi. |

*Đại bước qua công viên Senri-chuo lúc đèn vàng. Bó hoa to. Vai nặng nhưng tâm trí nhẹ.*

---

## Tình huống 12 — Apt · 23:15, Đại+Mai trên sofa

*Mai pha trà gừng. Đại đặt bó hoa lên bàn. Tấm bảng dựng bên cạnh.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN) Anh ơi! Bó hoa đẹp quá. Bảng có chữ ký mọi người. |
| Đại | (VN, ngồi sofa) Em ơi, 8 anh em BrSE + Takahashi-shachou phát biểu + Tanaka phát biểu + anh đáp lễ. Anh xúc động không tả nổi. |
| Mai | (VN) Anh kể em nghe đi. Takahashi-shachou nói gì? |
| Đại | (VN) Sếp nói anh đóng góp ¥120M doanh thu trong 1 năm. Anh là biểu tượng chương trình BrSE của công ty. |
| Mai | (VN) Trời ơi anh giỏi quá. ¥120M cơ à? Chi phí lương anh 1 năm chỉ ¥4.86M, ROI 25 lần. |
| Đại | (cười, VN) Em tính nhanh ghê. Em là CFO chính thức của Hizashi đây mà. |
| Mai | (VN) Mai mình chính thức Day 1 Hizashi full-time CEO. Em sẽ làm bữa sáng đặc biệt. Anh muốn ăn gì? |
| Đại | (VN) Cháo gà mẹ em dạy em nấu + bánh croissant + cà phê. Đơn giản thôi. |
| Mai | (VN) OK anh. (LINE Tony+Yumi) Cụ ơi! Đại hôm nay xong 送別会 Thanh A. Mai 1/4 chính thức Hizashi full-time. |
| Tony | (LINE, Osaka-ben) <ruby>素晴<rt>すば</rt></ruby>らしい!ダイ、おめでとう!<ruby>明日<rt>あした</rt></ruby>から<ruby>本気<rt>ほんき</rt></ruby>やで!<br>*(Tuyệt vời! Đại chúc mừng! Từ mai làm thật rồi!)* |

---

## Tình huống 13 — Apt phòng làm việc · 23:45, Đại nhật ký Year 1

*Đại mở Notion. Mai ngủ trước. Đại gõ "Tóm tắt Year 1 sau ĐH".*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, đọc lớn cho chính mình) Tóm tắt Year 1 (4/2030 - 3/2031). BrSE Thanh Hà: 4 dự án, đóng góp ¥120M doanh thu, được Takahashi gọi là biểu tượng chương trình. |
| Đại | (VN) Hizashi: v0.7 → v1.0 launch 11/11, ProductHunt #1, paid 30 → 2.051 user (×68), MRR ¥29k → ¥2.01M (×69), LTV/CAC 33 lần. |
| Đại | (VN) Gia đình: Hana 20 → 32 tháng (toddler song ngữ trôi chảy), Mai có thai bé 2 (test 25/3, dự sinh 12/2031), Tony+Yumi sang 2 lần, bố mẹ HN qua Obon. |
| Đại | (VN) Cá nhân: 過労 crisis 12/2030 → 4 lời hứa ranh giới. Mạng lưới: 8 BrSE + Inoue Lab + Cybozu cũ + Anri + 5 influencer. |
| Đại | (VN) Bài học rút ra trong Year 1: |
| Đại | (VN) Một, vừa BrSE vừa startup là ngôi trường tuyệt vời (kỹ năng + tiền mặt + mạng lưới). |
| Đại | (VN) Hai, ranh giới quan trọng hơn cày cuốc. Mai là phanh khẩn cấp không thể thiếu. |
| Đại | (VN) Ba, ngày launch không phải điểm kết thúc. Tăng trưởng bền vững những tháng sau mới quyết định. |
| Đại | (VN) Bốn, quyết định ưu tiên gia đình = tích cực cho sự nghiệp. Mai ủng hộ → anh làm tốt hơn. |
| Đại | (VN) Năm, cofounder Tuấn+Aiko đồng lòng = hiệu ứng cộng dồn. |

---

## Tình huống 14 — Apt bữa sáng · 1/4/2031 8:00, Day 1 Hizashi full-time

*Mai bê khay ra: cháo gà + nem + croissant + cà phê. Hana đã thức, mặc áo "Future Hizashi Founder" Aiko tặng.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, đặt khay) Anh ơi! Day 1 full-time CEO đây. Em làm bữa sáng đặc biệt. |
| Đại | (VN, mắt rưng rưng) Cảm ơn em. Cảm xúc khó tả lắm em à. |
| Hana | (chỉ áo) Bố ơi cùng đi với Hana! ハナも Hizashi <ruby>行<rt>い</rt></ruby>く!<br>*(Hana cũng đi Hizashi!)* |
| Đại | (VN, bế Hana) Cô bé sắp làm chị, sắp đi nhà trẻ. Hôm nay bố cũng là Day 1 của bố đấy. |
| Mai | (VN, đưa cà vạt đỏ) Anh đeo cà vạt đỏ này — Day 1 đầu tiên không có sếp! Anh là sếp của chính mình. |
| Đại | (VN, đeo cà vạt) Em ơi. Cảm ơn em. Anh không có em + Hana + bé 2 sắp đến, anh không dám nghỉ Thanh A đâu. |
| Mai | (VN) Em tin tưởng anh. Đi đi. Tối em đợi anh về cùng cắt bánh Day 1. |
| Đại | (VN, hôn trán Mai + Hana) Bố đi đây. |

---

## Tình huống 15 — WeWork sảnh · 1/4 9:00, Day 1 cùng Tuấn+Aiko

*Đại bước vào WeWork. Tuấn+Aiko đứng đợi sảnh với 1 bánh kem nhỏ "Day 1 Hizashi" + cà phê.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Em ơi! Welcome to full-time! |
| Aiko | (đưa kem) ダイくん、Day 1 おめでとう!<ruby>今日<rt>きょう</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>に<ruby>3人<rt>さんにん</rt></ruby>の<ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>がフルタイムです!<br>*(Đại em, chúc mừng Day 1! Từ hôm nay chính thức cả 3 founder đều full-time!)* |
| Đại | (VN+JP) お<ruby>二人<rt>ふたり</rt></ruby>、ありがとうございます。<ruby>今日<rt>きょう</rt></ruby>から<ruby>本気<rt>ほんき</rt></ruby>です。Year 2 ロードマップ、<ruby>本格<rt>ほんかく</rt></ruby><ruby>始動<rt>しどう</rt></ruby>します。<br>*(Cảm ơn 2 anh chị. Từ hôm nay làm thật. Roadmap Year 2, chính thức khởi động.)* |
| Tuấn | (VN) Anh chuẩn bị bảng white board sẵn rồi. 9:30 mình họp kick-off Year 2. |
| Đại | (VN) Đi nào! |

---

## Đọng lại chương 12

Đại khép Year 1 sau đại học (4/2030 - 3/2031) đầy ý nghĩa. Học loạt mẫu hội thoại đặc thù cuối-năm: thông báo có thai trong gia đình song ngữ; phát biểu farewell formal trong 送別会 — **「1年間お世話になりました」**, **「右も左もわからない新卒を、ここまで育てていただき」**, **「タンハーがなければ、今のHizashiはありません」**. Đề xuất hợp tác kinh doanh sau khi nghỉ: **「アドバイザリーや業務提携という形で、ぜひ関わらせてください」**. Đối thoại 4 người Đại-Mai-Tuấn-Aiko bàn roadmap Year 2 — Mai có tiếng nói chính thức về ranh giới founder. Mẫu phản hồi sếp formal: **「真剣に検討させていただきます」**. Kết quả Year 1: BrSE đóng góp ¥120M, Hizashi MRR ¥2.01M, paid 2.051 user, 4 lời hứa ranh giới giữ vững, Mai có thai bé 2, mạng lưới founder Việt Osaka 30 người. Day 1 Hizashi full-time CEO 1/4/2031: bữa sáng đặc biệt, cà vạt đỏ, bánh kem Day 1 với cofounder. Sách 26 mở đầu.

> Từ vựng & mẫu câu chương này: <ruby>妊娠検査<rt>にんしんけんさ</rt></ruby>・<ruby>陽性<rt>ようせい</rt></ruby>・<ruby>第二子<rt>だいにし</rt></ruby>・<ruby>退職日<rt>たいしょくび</rt></ruby>・<ruby>送別会<rt>そうべつかい</rt></ruby>・<ruby>居酒屋<rt>いざかや</rt></ruby>・<ruby>炉端焼<rt>ろばたや</rt></ruby>き・<ruby>業務提携<rt>ぎょうむていけい</rt></ruby>・アドバイザリー・<ruby>商談<rt>しょうだん</rt></ruby>・<ruby>協業<rt>きょうぎょう</rt></ruby>・<ruby>黒字<rt>くろじ</rt></ruby>・<ruby>新卒<rt>しんそつ</rt></ruby>・<ruby>本気<rt>ほんき</rt></ruby>・1<ruby>年間<rt>ねんかん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になりました・<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます・<ruby>右<rt>みぎ</rt></ruby>も<ruby>左<rt>ひだり</rt></ruby>もわからない・タンハーがなければ<ruby>今<rt>いま</rt></ruby>の Hizashi はありません・アドバイザリーや<ruby>業務提携<rt>ぎょうむていけい</rt></ruby>という<ruby>形<rt>かたち</rt></ruby>で・<ruby>真剣<rt>しんけん</rt></ruby>に<ruby>検討<rt>けんとう</rt></ruby>させていただきます・<ruby>乾杯<rt>かんぱい</rt></ruby>・お<ruby>疲<rt>つか</rt></ruby>れさまでした

## Bí quyết chương

- **Phát biểu farewell formal 3 phần**: (1) cảm ơn — お世話になりました, (2) đóng góp/kỷ niệm — タンハーがなければ今のHizashiはありません, (3) đề xuất tương lai — アドバイザリーという形で
- **Đối thoại 4 người về quyết định Year 2**: Mai chính thức được mời vào bàn họp founder. Vợ founder = thành viên không chính thức nhưng có tiếng nói quan trọng
- **送別会 14 người + buổi 2 cohort riêng**: cấu trúc 2 vòng trong văn hoá business JP — formal trước, intimate sau
- **Cà vạt đỏ Day 1**: nghi lễ chuyển giai đoạn — vợ trao quà nhỏ có ý nghĩa biểu tượng
- **MRR ×69 + paid ×68 + ¥120M doanh thu BrSE**: 3 con số tổng kết một năm — Mai là CFO không chính thức
- **Bố mẹ Mai biết tin nghỉ việc + có thai cùng ngày**: 2 tin lớn = 1 cuộc gọi — gói gọn cú chuyển giai đoạn vào 1 lần

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 妊娠検査 | にんしんけんさ | NHÂM THẦN KIỂM TRA | xét nghiệm thai |
| 陽性 | ようせい | DƯƠNG TÍNH | dương tính |
| お姉ちゃん | おねえちゃん | TỶ | chị |
| 妊娠期間中 | にんしんきかんちゅう | NHÂM THẦN KỲ GIAN | trong thai kỳ |
| 並行 | へいこう | TỊNH HÀNH | song song |
| 出産 | しゅっさん | XUẤT SẢN | sinh con |
| クロージング |  |  | closing (round gọi vốn) |
| 本格始動 | ほんかくしどう | BẢN CÁCH THỦY ĐỘNG | chính thức khởi động |
| ロードマップ |  |  | roadmap |
| 事情 | じじょう | SỰ TÌNH | hoàn cảnh, sự tình |
| 踏まえる | ふまえる | ĐẠP | dựa trên, tính đến |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 持続性 | じぞくせい | TRÌ TỤC TÍNH | tính bền vững |
| 左右する | さゆうする | TẢ HỮU | quyết định, chi phối |
| 既知 | きち | KÝ TRI | đã biết, quen thuộc |
| 人材 | じんざい | NHÂN TÀI | nhân lực |
| オンボーディング |  |  | onboarding |
| 感慨深い | かんがいぶかい | CẢM KHÁI THÂM | cảm xúc dâng trào |
| 新卒 | しんそつ | TÂN TỐT | sinh viên mới ra trường |
| 育てる | そだてる | DỤC | nuôi dạy, đào tạo |
| 育成 | いくせい | DỤC THÀNH | đào tạo |
| 象徴 | しょうちょう | TƯỢNG TRƯNG | biểu tượng |
| 本気 | ほんき | BẢN KHÍ | nghiêm túc, thật sự |
| 意向 | いこう | Ý HƯỚNG | ý định |
| 居酒屋 | いざかや | CƯ TỬU GIA | quán nhậu Nhật |
| 炉端焼き | ろばたやき | LÔ ĐOAN THIÊU | robatayaki (kiểu nướng Nhật) |
| 多大 | ただい | ĐA ĐẠI | rất lớn |
| 売上 | うりあげ | MẠI THƯỢNG | doanh thu |
| 子会社 | こがいしゃ | TỬ HỘI XÃ | công ty con |
| 同期 | どうき | ĐỒNG KỲ | cùng khóa, đồng nghiệp cùng năm |
| 楽しかった | たのしかった | NHẠC | vui vẻ |
| 敬語 | けいご | KÍNH NGỮ | kính ngữ |
| 固い | かたい | CỐ | cứng, gò bó |
| 自然に | しぜんに | TỰ NHIÊN | một cách tự nhiên |
| 成長 | せいちょう | THÀNH TRƯỞNG | trưởng thành |
| 間近 | まぢか | GIAN CẬN | sát gần |
| 送り出す | おくりだす | TỐNG XUẤT | tiễn đi |
| 真剣 | しんけん | CHÂN KIẾM | nghiêm túc |
| 関わる | かかわる | QUAN | tham gia, liên quan |
| 協業 | きょうぎょう | HIỆP NGHIỆP | hợp tác |
| 法人プラン | ほうじんプラン | PHÁP NHÂN | gói doanh nghiệp |
| 乾杯 | かんぱい | CÀN BÔI | cạn ly |
| 真剣に検討 | しんけんにけんとう | CHÂN KIẾM KIỂM ĐẢO | xem xét nghiêm túc |
| 右も左もわからない | みぎもひだりもわからない | HỮU TẢ | không biết gì (gà mờ) |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
