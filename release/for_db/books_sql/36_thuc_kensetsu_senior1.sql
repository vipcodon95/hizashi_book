-- Hizashi LITE book SQL — Thực Kensetsu Senior 1
-- curriculum_id = 800000036  (book_seq=36)
-- nguồn: books/36_thuc_kensetsu_senior1/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000036, 'N3', 'markdown_book', 'Xây dựng', 'Thực Kensetsu Senior 1', 'Bộ sách Hizashi — Thực Kensetsu Senior 1', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000001, 800000036, NULL, 'markdown_book', 'T1. Chính thức 特定技能1号 — Khác biệt lương tháng và công nhật (特定技能1号・月給制)', '# Sách kỹ năng đặc định xây dựng · T1. Chính thức 特定技能1号 — Khác biệt lương tháng và công nhật (特定技能1号・月給制)

> **Mục tiêu nhân vật:** Thức (23 tuổi, Hà Tĩnh) vừa hết 3 năm TTS, chuyển sang tư cách 特定技能1号 ngành 建設, được giao làm 班長 tổ とび. Học mẫu câu nghiệp vụ khi nhận chế độ mới: hỏi đáp về 月給制, ký hợp đồng 特定技能, nhận vai trò chỉ huy nhỏ, báo cáo 工程 cho 職長.

---

## Bối cảnh

Tháng 4 năm 2029. Thức kết thúc 3 năm thực tập kỹ năng (技能実習) ngành xây dựng tháng 3/2029, làm thủ tục chuyển sang **特定技能1号 建設** và quay lại công ty cũ ở Aichi với tư cách mới. Công ty giao Thức làm 班長 (trưởng nhóm nhỏ) tổ とび (giàn giáo). Tiếng Nhật N3. Chương này tập trung mẫu câu khi tiếp nhận chế độ 特定技能: phân biệt 月給制 với công nhật thời TTS, xác nhận hợp đồng, nhận trách nhiệm 班長, báo cáo tiến độ. (Thông tin chế độ visa/lương đúng tại thời điểm biên soạn năm 2026.)

---

## Tình huống 1 — Văn phòng công ty · 8:30, 親方 thông báo tư cách mới

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、おかえり。<ruby>今日<rt>きょう</rt></ruby>から<ruby>特定技能<rt>とくていぎのう</rt></ruby>１<ruby>号<rt>ごう</rt></ruby>やな。<br>*(Thức, mừng quay lại. Từ hôm nay là Tokutei Ginou số 1 nhỉ.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。また<ruby>戻<rt>もど</rt></ruby>って<ruby>来<rt>こ</rt></ruby>られて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Vâng, thưa cai. Em rất mừng được quay lại ạ.)* |
| Tanigawa | <ruby>実習生<rt>じっしゅうせい</rt></ruby>のときとは<ruby>立場<rt>たちば</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>うで。<ruby>今<rt>いま</rt></ruby>から<ruby>戦力<rt>せんりょく</rt></ruby>や。<br>*(Khác với hồi thực tập sinh đấy. Từ giờ là lực lượng nòng cốt.)* |
| Thức | はい、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Vâng, em sẽ làm việc có trách nhiệm ạ.)* |
| Tanigawa | それと、<ruby>小<rt>ちい</rt></ruby>さい<ruby>班<rt>はん</rt></ruby>やけど、<ruby>班長<rt>はんちょう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せる。<br>*(Với lại, tổ nhỏ thôi nhưng giao cho làm 班長.)* |
| Thức | <ruby>班長<rt>はんちょう</rt></ruby>ですか…<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(班長 ạ… Em sẽ cố gắng. Mong cai chỉ bảo ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:45, hỏi 職長 về 月給制

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>給料<rt>きゅうりょう</rt></ruby>のことで<ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<br>*(Đốc công Saito, em hỏi về lương được không ạ?)* |
| Saito | ええよ。<ruby>特定技能<rt>とくていぎのう</rt></ruby>からは<ruby>月給制<rt>げっきゅうせい</rt></ruby>になるんや。<br>*(Được. Từ Tokutei Ginou thì chuyển sang chế độ lương tháng.)* |
| Thức | <ruby>月給制<rt>げっきゅうせい</rt></ruby>は、<ruby>実習生<rt>じっしゅうせい</rt></ruby>のときの<ruby>日給<rt>にっきゅう</rt></ruby>と<ruby>何<rt>なに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Lương tháng khác công nhật hồi thực tập sinh ở chỗ nào ạ?)* |
| Saito | <ruby>日給<rt>にっきゅう</rt></ruby>は<ruby>働<rt>はたら</rt></ruby>いた<ruby>日<rt>ひ</rt></ruby>だけや。<ruby>月給<rt>げっきゅう</rt></ruby>は<ruby>雨<rt>あめ</rt></ruby>で<ruby>休<rt>やす</rt></ruby>んでも<ruby>基本給<rt>きほんきゅう</rt></ruby>が<ruby>出<rt>で</rt></ruby>る。<br>*(Công nhật chỉ tính ngày làm. Lương tháng thì nghỉ vì mưa vẫn có lương cơ bản.)* |
| Thức | じゃあ、<ruby>収入<rt>しゅうにゅう</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>するんですね。<br>*(Vậy thu nhập sẽ ổn định nhỉ.)* |
| Saito | そうや。<ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>は<ruby>月給制<rt>げっきゅうせい</rt></ruby>が<ruby>原則<rt>げんそく</rt></ruby>と<ruby>決<rt>き</rt></ruby>まっとる。<br>*(Đúng. Ngành xây dựng quy định nguyên tắc là lương tháng.)* |
| Thức | よく<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em hiểu rõ rồi ạ. Em cảm ơn.)* |

---

## Tình huống 3 — Phòng họp · 9:10, xác nhận nội dung hợp đồng 特定技能

| Vai | Lời thoại |
|---|---|
| Saito | これが<ruby>特定技能<rt>とくていぎのう</rt></ruby>の<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>や。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しよ。<br>*(Đây là hợp đồng lao động Tokutei Ginou. Cùng xác nhận nào.)* |
| Thức | はい。<ruby>基本給<rt>きほんきゅう</rt></ruby>はここに<ruby>書<rt>か</rt></ruby>いてありますね。<br>*(Vâng. Lương cơ bản ghi ở đây nhỉ.)* |
| Thức | すみません、この「<ruby>賞与<rt>しょうよ</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Xin lỗi, mục "thưởng" này là gì ạ?)* |
| Saito | ボーナスのことや。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>業績<rt>ぎょうせき</rt></ruby>によって<ruby>年<rt>ねん</rt></ruby><ruby>2回<rt>にかい</rt></ruby><ruby>出<rt>で</rt></ruby>ることがある。<br>*(Là tiền thưởng. Tùy kết quả kinh doanh, mỗi năm có thể có 2 lần.)* |
| Thức | <ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>社員<rt>しゃいん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>待遇<rt>たいぐう</rt></ruby>ですか?<br>*(Là đãi ngộ giống nhân viên người Nhật ạ?)* |
| Saito | そうや。<ruby>同等<rt>どうとう</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>待遇<rt>たいぐう</rt></ruby>が<ruby>条件<rt>じょうけん</rt></ruby>になっとる。サインする<ruby>前<rt>まえ</rt></ruby>によう<ruby>読<rt>よ</rt></ruby>みや。<br>*(Đúng. Điều kiện là đãi ngộ tương đương trở lên. Đọc kỹ rồi hãy ký nhé.)* |
| Thức | はい、しっかり<ruby>読<rt>よ</rt></ruby>みます。<br>*(Vâng, em sẽ đọc kỹ ạ.)* |

---

## Tình huống 4 — Văn phòng · 9:40, hỏi về thời hạn 特定技能1号

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>１<ruby>号<rt>ごう</rt></ruby>は<ruby>何年<rt>なんねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>けますか?<br>*(Đốc công, Tokutei Ginou số 1 làm được mấy năm ạ?)* |
| Saito | <ruby>通算<rt>つうさん</rt></ruby>で<ruby>最長<rt>さいちょう</rt></ruby><ruby>5年<rt>ごねん</rt></ruby>や。<ruby>実習<rt>じっしゅう</rt></ruby>の<ruby>3年<rt>さんねん</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>やで。<br>*(Tổng cộng tối đa 5 năm. Tách biệt với 3 năm thực tập đấy.)* |
| Thức | その<ruby>後<rt>あと</rt></ruby>はどうなりますか?<br>*(Sau đó thì thế nào ạ?)* |
| Saito | <ruby>2号<rt>にごう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めれば、もっと<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>ける<ruby>道<rt>みち</rt></ruby>もある。<br>*(Nếu lên được số 2 thì có cả con đường làm việc lâu hơn.)* |
| Thức | <ruby>2号<rt>にごう</rt></ruby>になるには<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Để lên số 2 thì cần gì ạ?)* |
| Saito | <ruby>試験<rt>しけん</rt></ruby>と<ruby>実務経験<rt>じつむけいけん</rt></ruby>や。まずは<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>をしっかりやろ。<br>*(Thi cử và kinh nghiệm thực tế. Trước hết làm tốt việc bây giờ đã.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>目標<rt>もくひょう</rt></ruby>にします。<br>*(Vâng, em hiểu rồi. Em sẽ lấy đó làm mục tiêu.)* |

---

## Tình huống 5 — Hành lang văn phòng · 10:00, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, em chính thức chuyển 特定技能 rồi, lại còn được giao làm 班長 nữa. |
| Long | Giỏi đấy. Anh hồi đầu cũng run lắm. Lương tháng dễ thở hơn công nhật nhiều. |
| Thức | Em lo nhất là chỉ huy người khác. Em nói tiếng Nhật còn chưa chắc. |
| Long | Tổ nhỏ thôi mà. Cứ nói rõ ràng, ngắn gọn, sai thì sửa. 親方 không kỳ vọng em hoàn hảo ngay đâu. |
| Thức | Vâng. Em cứ thấy áp lực lương tháng phải làm đáng đồng tiền. |
| Long | Nghĩ ngược lại đi: ổn định hơn, mưa nghỉ vẫn có lương. Tập trung làm cho chắc tay nghề. |
| Thức | Dạ, em hiểu rồi. Cảm ơn anh. |

---

## Tình huống 6 — Công trường · 10:30, 親方 giới thiệu tổ với Thức làm 班長

| Vai | Lời thoại |
|---|---|
| Tanigawa | みんな、<ruby>聞<rt>き</rt></ruby>いてくれ。<ruby>今日<rt>きょう</rt></ruby>からトゥックが<ruby>足場<rt>あしば</rt></ruby><ruby>班<rt>はん</rt></ruby>の<ruby>班長<rt>はんちょう</rt></ruby>や。<br>*(Mọi người nghe đây. Từ hôm nay Thức làm 班長 tổ giàn giáo.)* |
| Thức | みなさん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>でやりましょう。<br>*(Mọi người, mong được hợp tác. Ta làm với an toàn là trên hết.)* |
| Hùng | トゥック、おめでとう。<ruby>同期<rt>どうき</rt></ruby>が<ruby>班長<rt>はんちょう</rt></ruby>とは<ruby>心強<rt>こころづよ</rt></ruby>いわ。<br>*(Thức, chúc mừng. Đồng kỳ làm 班長 thì yên tâm hẳn.)* |
| Nam | トゥックさん、<ruby>色々<rt>いろいろ</rt></ruby><ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh Thức, mong anh chỉ bảo nhiều ạ.)* |
| Thức | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>言<rt>い</rt></ruby>ってな。<br>*(Ừ, cùng cố gắng. Có gì không hiểu cứ nói thẳng nhé.)* |
| Kondo | <ruby>新<rt>あたら</rt></ruby>しい<ruby>班長<rt>はんちょう</rt></ruby>、たのむで。<ruby>俺<rt>おれ</rt></ruby>もサポートするわ。<br>*(班長 mới ơi, nhờ nhé. Tôi cũng hỗ trợ.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、ありがとうございます。<ruby>助<rt>たす</rt></ruby>かります。<br>*(Đàn anh Kondo, cảm ơn ạ. Em được nhờ.)* |

---

## Tình huống 7 — Trước kho vật tư · 10:50, lần đầu phân công buổi sáng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>は<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>組<rt>く</rt></ruby>みです。フンさんとナムさんは<ruby>資材<rt>しざい</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay dựng giàn giáo mặt phía Đông. Hùng và Nam phụ trách vận chuyển vật tư nhé.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。どこに<ruby>置<rt>お</rt></ruby>けばいい?<br>*(Rõ. Đặt ở đâu thì được?)* |
| Thức | <ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>入<rt>い</rt></ruby>り<ruby>口<rt>ぐち</rt></ruby><ruby>付近<rt>ふきん</rt></ruby>にまとめてください。<br>*(Gom lại gần lối vào phía Đông nhé.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>順番<rt>じゅんばん</rt></ruby>はありますか?<br>*(Em hiểu. Có thứ tự nào không ạ?)* |
| Thức | <ruby>建<rt>た</rt></ruby>てわく、<ruby>布<rt>ぬの</rt></ruby>わく、<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>で<ruby>使<rt>つか</rt></ruby>うから、その<ruby>順<rt>じゅん</rt></ruby>に<ruby>並<rt>なら</rt></ruby>べて。<br>*(Dùng theo thứ tự khung đứng, khung ngang, ván sàn nên xếp theo thứ tự đó.)* |
| Nam | はい、そうします。<br>*(Vâng, em làm vậy ạ.)* |

---

## Tình huống 8 — Công trường · 11:15, 現場監督 Ishikawa lần đầu chào hỏi

| Vai | Lời thoại |
|---|---|
| Ishikawa | <ruby>谷川<rt>たにがわ</rt></ruby>さんとこの<ruby>新<rt>あたら</rt></ruby>しい<ruby>班長<rt>はんちょう</rt></ruby>さん?<ruby>現場監督<rt>げんばかんとく</rt></ruby>の<ruby>石川<rt>いしかわ</rt></ruby>です。<br>*(班長 mới chỗ ông Tanigawa à? Tôi là Ishikawa, giám sát công trường.)* |
| Thức | はじめまして。<ruby>足場<rt>あしば</rt></ruby><ruby>班<rt>はん</rt></ruby>の<ruby>班長<rt>はんちょう</rt></ruby>、トゥックと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh. Tôi là Thức, 班長 tổ giàn giáo. Mong được giúp đỡ ạ.)* |
| Ishikawa | <ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>が<ruby>班長<rt>はんちょう</rt></ruby>ね。<ruby>図面<rt>ずめん</rt></ruby>は<ruby>読<rt>よ</rt></ruby>めますか?<br>*(Người nước ngoài làm 班長 à. Đọc được bản vẽ chứ?)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby><ruby>図<rt>ず</rt></ruby>は<ruby>読<rt>よ</rt></ruby>めます。<ruby>分<rt>わ</rt></ruby>からない<ruby>所<rt>ところ</rt></ruby>はその<ruby>都度<rt>つど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただきます。<br>*(Bản vẽ giàn giáo em đọc được. Chỗ nào chưa rõ em sẽ xác nhận từng lúc ạ.)* |
| Ishikawa | まあ、やってみてください。<ruby>安全<rt>あんぜん</rt></ruby>だけはきっちり<ruby>頼<rt>たの</rt></ruby>みますよ。<br>*(Thôi, cứ thử làm xem. Riêng an toàn thì nhờ làm cho chuẩn.)* |
| Thức | はい、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<br>*(Vâng, em sẽ tiến hành với an toàn là trên hết.)* |

---

## Tình huống 9 — Công trường · 13:00, báo cáo tiến độ buổi sáng cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>午前<rt>ごぜん</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Đốc công, em báo cáo tiến độ buổi sáng ạ.)* |
| Saito | おう、<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Ờ, nhờ nhé.)* |
| Thức | <ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>は<ruby>2層<rt>にそう</rt></ruby>まで<ruby>組<rt>く</rt></ruby>めました。<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Giàn giáo mặt Đông đã dựng tới tầng 2. Đúng kế hoạch ạ.)* |
| Saito | ええペースや。<ruby>午後<rt>ごご</rt></ruby>はどうする?<br>*(Nhịp tốt đấy. Buổi chiều thì sao?)* |
| Thức | <ruby>午後<rt>ごご</rt></ruby>は<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>と<ruby>手<rt>て</rt></ruby>すりの<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けを<ruby>進<rt>すす</rt></ruby>めます。<br>*(Buổi chiều em sẽ làm tầng 3 và lắp tay vịn ạ.)* |
| Saito | よし、その<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>頼<rt>たの</rt></ruby>む。<br>*(Tốt, cứ đà đó mà làm.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 10 — Công trường · 13:30, hướng dẫn Nam buộc dây an toàn

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>安全帯<rt>あんぜんたい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Nam, trước khi vào việc trên cao kiểm tra dây an toàn nào.)* |
| Nam | はい。フックはどこに<ruby>掛<rt>か</rt></ruby>ければいいですか?<br>*(Vâng. Móc thì gắn vào đâu ạ?)* |
| Thức | <ruby>腰<rt>こし</rt></ruby>より<ruby>高<rt>たか</rt></ruby>い<ruby>位置<rt>いち</rt></ruby>の<ruby>丈夫<rt>じょうぶ</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>に<ruby>掛<rt>か</rt></ruby>けて。<br>*(Gắn vào chỗ chắc chắn cao hơn thắt lưng.)* |
| Nam | こうですか?<br>*(Như thế này ạ?)* |
| Thức | そう。それと、<ruby>移動<rt>いどう</rt></ruby>するときも<ruby>必<rt>かなら</rt></ruby>ずどこかに<ruby>掛<rt>か</rt></ruby>けたままにする。<br>*(Đúng. Với lại, khi di chuyển cũng phải luôn móc vào đâu đó.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em hiểu rồi. Em sẽ chú ý ạ.)* |

---

## Tình huống 11 — Công trường · 14:00, xử lý vật tư thiếu

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>が<ruby>10枚<rt>じゅうまい</rt></ruby><ruby>足<rt>た</rt></ruby>りひんわ。<br>*(Thức, thiếu mất 10 tấm ván sàn.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>?もう<ruby>一度<rt>いちど</rt></ruby><ruby>数<rt>かぞ</rt></ruby>えてくれる?<br>*(Thật à? Đếm lại lần nữa giúp được không?)* |
| Hùng | <ruby>数<rt>かぞ</rt></ruby>えた。やっぱり<ruby>10枚<rt>じゅうまい</rt></ruby><ruby>足<rt>た</rt></ruby>りん。<br>*(Đếm rồi. Đúng là thiếu 10 tấm.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かった。<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>して<ruby>追加<rt>ついか</rt></ruby><ruby>手配<rt>てはい</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>む。それまで<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めよう。<br>*(Hiểu rồi. Anh báo đốc công xin bổ sung. Trong lúc đó làm mặt Nam trước nào.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>段取<rt>だんど</rt></ruby>りええな。<br>*(Rõ. Bố trí khéo đấy.)* |
| Thức | <ruby>無駄<rt>むだ</rt></ruby><ruby>足<rt>あし</rt></ruby>にならんようにせんとな。<br>*(Phải tránh để anh em phải đi không công chứ.)* |

---

## Tình huống 12 — Văn phòng · 14:30, báo 職長 việc thiếu vật tư

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>が<ruby>10枚<rt>じゅうまい</rt></ruby><ruby>不足<rt>ふそく</rt></ruby>しています。<br>*(Đốc công, em báo cáo. Thiếu 10 tấm ván sàn ạ.)* |
| Saito | そうか。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かるか?<br>*(Vậy à. Biết nguyên nhân không?)* |
| Thức | <ruby>搬入<rt>はんにゅう</rt></ruby>のときに<ruby>数<rt>かず</rt></ruby>が<ruby>合<rt>あ</rt></ruby>っていなかったようです。<ruby>追加<rt>ついか</rt></ruby>を<ruby>手配<rt>てはい</rt></ruby>していただけますか?<br>*(Có vẻ lúc nhập hàng số lượng đã không khớp. Nhờ đốc công đặt thêm được không ạ?)* |
| Saito | わかった。すぐ<ruby>発注<rt>はっちゅう</rt></ruby>するわ。それまでは?<br>*(Hiểu rồi. Tôi đặt ngay. Trong lúc đó thì sao?)* |
| Thức | <ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めて、<ruby>手待<rt>てま</rt></ruby>ちが<ruby>出<rt>で</rt></ruby>ないようにします。<br>*(Em cho làm mặt Nam trước để không phát sinh thời gian chờ ạ.)* |
| Saito | <ruby>段取<rt>だんど</rt></ruby>りがええな。その<ruby>判断<rt>はんだん</rt></ruby>で<ruby>正解<rt>せいかい</rt></ruby>や。<br>*(Bố trí khéo đấy. Quyết định đó là chuẩn.)* |

---

## Tình huống 13 — Công trường · 15:00, 現場監督 Ishikawa kiểm tra giàn giáo

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてもらえますか。<br>*(Anh Thức, cho tôi xem giàn giáo mặt Đông được không.)* |
| Thức | はい、こちらです。<ruby>2層<rt>にそう</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>しています。<br>*(Vâng, lối này ạ. Đã hoàn thành tới tầng 2 ạ.)* |
| Ishikawa | <ruby>手<rt>て</rt></ruby>すりの<ruby>高<rt>たか</rt></ruby>さは<ruby>規定<rt>きてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りですか?<br>*(Chiều cao tay vịn đúng quy định chứ?)* |
| Thức | はい、<ruby>85<rt>はちじゅうご</rt></ruby>センチ<ruby>以上<rt>いじょう</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けています。<ruby>中桟<rt>なかさん</rt></ruby>も<ruby>入<rt>い</rt></ruby>れました。<br>*(Vâng, lắp ở mức trên 85 cm. Thanh giữa cũng đã lắp ạ.)* |
| Ishikawa | …しっかりやってますね。<ruby>意外<rt>いがい</rt></ruby>と<ruby>丁寧<rt>ていねい</rt></ruby>や。<br>*(…Làm chắc đấy nhỉ. Cẩn thận hơn tôi tưởng.)* |
| Thức | ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em cảm ơn ạ. Em sẽ tiếp tục chú ý.)* |

---

## Tình huống 14 — Công trường · 15:30, nhắc nhở Nam dọn lối đi

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>通路<rt>つうろ</rt></ruby>に<ruby>資材<rt>しざい</rt></ruby>が<ruby>置<rt>お</rt></ruby>きっぱなしやで。<br>*(Nam, vật tư để bừa ở lối đi kìa.)* |
| Nam | あっ、すみません。<ruby>後<rt>あと</rt></ruby>で<ruby>片付<rt>かたづ</rt></ruby>けようと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(À, em xin lỗi. Em định lát nữa dọn ạ.)* |
| Thức | <ruby>後<rt>あと</rt></ruby>でやと<ruby>忘<rt>わす</rt></ruby>れる。<ruby>通路<rt>つうろ</rt></ruby>は<ruby>避難<rt>ひなん</rt></ruby><ruby>路<rt>ろ</rt></ruby>にもなるから、その<ruby>都度<rt>つど</rt></ruby><ruby>片付<rt>かたづ</rt></ruby>けよう。<br>*(Để lát nữa là quên. Lối đi cũng là đường thoát hiểm nên dọn ngay từng lúc.)* |
| Nam | はい、すぐ<ruby>片付<rt>かたづ</rt></ruby>けます。<br>*(Vâng, em dọn ngay ạ.)* |
| Thức | <ruby>整理<rt>せいり</rt></ruby><ruby>整頓<rt>せいとん</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つやからな。<br>*(Sắp xếp gọn gàng cũng là một phần của an toàn đấy.)* |
| Nam | <ruby>覚<rt>おぼ</rt></ruby>えておきます。ありがとうございます。<br>*(Em ghi nhớ ạ. Em cảm ơn.)* |

---

## Tình huống 15 — Công trường · 16:00, trao đổi với 近藤 về kỹ thuật

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、この<ruby>角<rt>かど</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>、<ruby>建<rt>た</rt></ruby>てわくが<ruby>入<rt>はい</rt></ruby>りにくいんですが。<br>*(Đàn anh Kondo, giàn giáo góc này khung đứng khó vào quá.)* |
| Kondo | ああ、そこは<ruby>単管<rt>たんかん</rt></ruby>で<ruby>組<rt>く</rt></ruby>んだほうがええで。<br>*(À, chỗ đó dựng bằng ống đơn thì hơn.)* |
| Thức | <ruby>単管<rt>たんかん</rt></ruby>ですか。<ruby>強度<rt>きょうど</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Ống đơn ạ. Độ chịu lực có ổn không ạ?)* |
| Kondo | <ruby>緊結<rt>きんけつ</rt></ruby>をしっかりやれば<ruby>問題<rt>もんだい</rt></ruby>ない。クランプの<ruby>締<rt>し</rt></ruby>め<ruby>付<rt>つ</rt></ruby>けだけ<ruby>注意<rt>ちゅうい</rt></ruby>な。<br>*(Siết liên kết cho chắc thì không vấn đề. Chỉ chú ý lực siết kẹp thôi.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。やってみます。ありがとうございます。<br>*(Em hiểu rồi. Em thử xem. Cảm ơn anh ạ.)* |
| Kondo | <ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>呼<rt>よ</rt></ruby>んでや。<br>*(Có khó khăn cứ gọi bất cứ lúc nào.)* |

---

## Tình huống 16 — Công trường · 16:20, dặn tổ quy trình cuối ngày

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>終了<rt>しゅうりょう</rt></ruby><ruby>30分前<rt>さんじゅっぷんまえ</rt></ruby>です。<ruby>片付<rt>かたづ</rt></ruby>けを<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Mọi người, còn 30 phút nữa kết thúc. Bắt đầu dọn dẹp nào.)* |
| Hùng | <ruby>工具<rt>こうぐ</rt></ruby>は<ruby>倉庫<rt>そうこ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>すんやな?<br>*(Dụng cụ trả về kho nhỉ?)* |
| Thức | はい。<ruby>数<rt>かず</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>戻<rt>もど</rt></ruby>してください。<br>*(Vâng. Kiểm số lượng rồi hãy trả nhé.)* |
| Nam | <ruby>残<rt>のこ</rt></ruby>った<ruby>資材<rt>しざい</rt></ruby>はどうしますか?<br>*(Vật tư còn lại thì làm sao ạ?)* |
| Thức | <ruby>明日<rt>あした</rt></ruby><ruby>使<rt>つか</rt></ruby>う<ruby>分<rt>ぶん</rt></ruby>は<ruby>東側<rt>ひがしがわ</rt></ruby>にまとめて、シートを<ruby>掛<rt>か</rt></ruby>けておこう。<br>*(Phần mai dùng gom ở phía Đông, phủ bạt lại.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Em rõ ạ.)* |

---

## Tình huống 17 — Công trường · 16:50, báo cáo kết thúc ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>です。<br>*(Đốc công, công việc hôm nay kết thúc ạ.)* |
| Saito | おつかれ。<ruby>進捗<rt>しんちょく</rt></ruby>はどうやった?<br>*(Vất vả rồi. Tiến độ thế nào?)* |
| Thức | <ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>3層<rt>さんそう</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>1層<rt>いっそう</rt></ruby><ruby>目<rt>め</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りました。<br>*(Mặt Đông xong tới tầng 3, mặt Nam đã vào tầng 1 ạ.)* |
| Saito | <ruby>予定<rt>よてい</rt></ruby>より<ruby>早<rt>はや</rt></ruby>いな。ケガは?<br>*(Sớm hơn kế hoạch đấy. Có ai bị thương không?)* |
| Thức | <ruby>全員<rt>ぜんいん</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby>です。ヒヤリハットもありませんでした。<br>*(Toàn bộ an toàn ạ. Cũng không có sự cố suýt nguy hiểm.)* |
| Saito | よし、ええ<ruby>初日<rt>しょにち</rt></ruby>やったな。<br>*(Tốt, ngày đầu suôn sẻ đấy.)* |

---

## Tình huống 18 — Phòng thay đồ · 17:10, 親方 dặn dò cuối ngày

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>班長<rt>はんちょう</rt></ruby><ruby>初日<rt>しょにち</rt></ruby>、どうやった?<br>*(Thức, ngày đầu làm 班長 thế nào?)* |
| Thức | <ruby>緊張<rt>きんちょう</rt></ruby>しましたが、みんなが<ruby>協力<rt>きょうりょく</rt></ruby>してくれて<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Em hồi hộp nhưng mọi người hợp tác nên em được nhờ ạ.)* |
| Tanigawa | <ruby>段取<rt>だんど</rt></ruby>りはまあまあやった。<ruby>指示<rt>しじ</rt></ruby>は<ruby>短<rt>みじか</rt></ruby>く、はっきり<ruby>言<rt>い</rt></ruby>えよ。<br>*(Bố trí tạm được. Chỉ thị phải ngắn, nói rõ đấy.)* |
| Thức | はい。まだ<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>に<ruby>迷<rt>まよ</rt></ruby>うことがあります。<br>*(Vâng. Vẫn có lúc em phân vân cách nói ạ.)* |
| Tanigawa | <ruby>慣<rt>な</rt></ruby>れや。<ruby>毎日<rt>まいにち</rt></ruby>やったら<ruby>身<rt>み</rt></ruby>につく。<ruby>焦<rt>あせ</rt></ruby>らんでええ。<br>*(Quen thôi. Làm mỗi ngày thì thấm. Đừng vội.)* |
| Thức | はい、ありがとうございます。<ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cảm ơn ạ. Mai em cũng cố gắng.)* |

---

## Tình huống 19 — Công ty · 17:20, hỏi 職長 về thủ tục JAC sắp tới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>になったら、<ruby>他<rt>ほか</rt></ruby>に<ruby>手続<rt>てつづ</rt></ruby>きはありますか?<br>*(Đốc công, thành Tokutei Ginou thì còn thủ tục gì khác không ạ?)* |
| Saito | あるで。<ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>はJACへの<ruby>加入<rt>かにゅう</rt></ruby>とCCUSの<ruby>登録<rt>とうろく</rt></ruby>がいる。<br>*(Có. Ngành xây dựng phải tham gia JAC và đăng ký CCUS.)* |
| Thức | JACとCCUSですか。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>していただけますか?<br>*(JAC và CCUS ạ. Tuần sau giải thích cho em được không ạ?)* |
| Saito | ああ、<ruby>来週<rt>らいしゅう</rt></ruby>まとめて<ruby>説明<rt>せつめい</rt></ruby>するわ。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>制度<rt>せいど</rt></ruby>やからな。<br>*(Ờ, tuần sau giải thích gộp cho. Vì là chế độ quan trọng đấy.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong đốc công giúp ạ.)* |
| Saito | <ruby>制度<rt>せいど</rt></ruby>を<ruby>知<rt>し</rt></ruby>っとくと<ruby>自分<rt>じぶん</rt></ruby>の<ruby>身<rt>み</rt></ruby>を<ruby>守<rt>まも</rt></ruby>れる。しっかり<ruby>覚<rt>おぼ</rt></ruby>えとき。<br>*(Biết chế độ thì tự bảo vệ được mình. Nhớ kỹ vào.)* |

---

## Tình huống 20 — Cổng công trường · 17:30, nhắn với Linh qua điện thoại (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh Thức, hôm nay ngày đầu làm 班長 sao rồi? |
| Thức | Mệt mà vui. Anh chỉ huy mấy anh em, run nhưng làm được. |
| Linh | Em biết mà. Anh cẩn thận, chắc chắn làm tốt. Lương tháng rồi đỡ lo hơn nhỉ. |
| Thức | Ừ, ổn định hơn. Anh muốn tích lũy tay nghề rồi tính tiếp. |
| Linh | Anh cứ lo việc đi, đừng làm quá sức. Cuối tuần rảnh thì gặp nhau. |
| Thức | Ừ, để anh xem lịch rồi nhắn em. Cảm ơn em nhé. |

---

## Đọng lại

Ngày đầu với tư cách 特定技能1号, Thức học được điểm khác biệt cốt lõi: 月給制 cho thu nhập ổn định hơn công nhật thời TTS, và vai trò 班長 đòi hỏi chỉ thị ngắn gọn, rõ ràng. Thức bắt đầu quen với việc phân công (段取り), báo cáo tiến độ cho 職長, đối diện với sự hoài nghi ban đầu của 現場監督 Ishikawa. 親方 nhắc: chỉ huy là kỹ năng cần luyện mỗi ngày, không cần vội.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 特定技能 | とくていぎのう | Kỹ năng đặc định (tư cách lưu trú) |
> | 月給制 | げっきゅうせい | Chế độ lương tháng |
> | 日給 | にっきゅう | Lương công nhật |
> | 班長 | はんちょう | Trưởng nhóm nhỏ |
> | 段取り | だんどり | Bố trí, sắp xếp công việc |
> | 雇用契約書 | こようけいやくしょ | Hợp đồng lao động |
> | 賞与 | しょうよ | Tiền thưởng (bonus) |
> | 待遇 | たいぐう | Đãi ngộ |
> | 現場監督 | げんばかんとく | Giám sát công trường |
> | 進捗 | しんちょく | Tiến độ |
> | 安全帯 | あんぜんたい | Dây an toàn |
> | 緊結 | きんけつ | Liên kết, siết chặt (giàn giáo) |
> | 手すり | てすり | Tay vịn |
> | 手待ち | てまち | Thời gian chờ việc |
> | ヒヤリハット | ひやりはっと | Sự cố suýt nguy hiểm |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000002, 800000036, NULL, 'markdown_book', 'T2. JAC và CCUS — Làm thẻ, hiểu phí tiếp nhận, lần đầu nghe レベル判定 (JAC・CCUS)', '# Sách kỹ năng đặc định xây dựng · T2. JAC và CCUS — Làm thẻ, hiểu phí tiếp nhận, lần đầu nghe レベル判定 (JAC・CCUS)

> **Mục tiêu nhân vật:** Thức làm thủ tục đăng ký CCUS, gia nhập JAC, hiểu khái niệm 受入負担金, lần đầu nghe về レベル判定. Học mẫu câu nghiệp vụ khi trao đổi về chế độ ngành xây dựng với 職長 và bộ phận hành chính.

---

## Bối cảnh

Tháng 5 năm 2029. Sau khi chính thức là 特定技能1号, Thức được công ty hỗ trợ làm thủ tục đăng ký **CCUS (建設キャリアアップシステム)** và xác nhận công ty đã gia nhập **JAC (建設技能人材機構)**. Chương tập trung mẫu câu hỏi đáp về chế độ: phí tiếp nhận (受入負担金), thẻ CCUS, khái niệm レベル判定 theo kinh nghiệm và bằng cấp. (Nội dung JAC/CCUS đúng tại thời điểm biên soạn năm 2026; chi tiết chế độ có thể thay đổi theo quy định mới.)

---

## Tình huống 1 — Văn phòng · 8:30, 職長 mở đầu buổi giải thích chế độ

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>約束<rt>やくそく</rt></ruby><ruby>通<rt>どお</rt></ruby>りJACとCCUSの<ruby>説明<rt>せつめい</rt></ruby>をするわ。<br>*(Thức, đúng hẹn tôi giải thích về JAC và CCUS đây.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。メモを<ruby>取<rt>と</rt></ruby>ってもいいですか?<br>*(Vâng, nhờ đốc công ạ. Em ghi chép được không ạ?)* |
| Saito | もちろん。まずCCUSは<ruby>建設<rt>けんせつ</rt></ruby>キャリアアップシステムの<ruby>略<rt>りゃく</rt></ruby>や。<br>*(Tất nhiên. Trước hết CCUS là viết tắt của hệ thống nâng cao sự nghiệp xây dựng.)* |
| Thức | キャリアアップ…<ruby>経歴<rt>けいれき</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>するものですか?<br>*(Nâng cao sự nghiệp… là cái ghi lại quá trình làm việc ạ?)* |
| Saito | そうや。<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>や<ruby>資格<rt>しかく</rt></ruby>を<ruby>登録<rt>とうろく</rt></ruby>して、<ruby>技能<rt>ぎのう</rt></ruby>を<ruby>見<rt>み</rt></ruby>える<ruby>化<rt>か</rt></ruby>する<ruby>仕組<rt>しく</rt></ruby>みや。<br>*(Đúng. Là cơ chế đăng ký lịch sử làm việc và bằng cấp, "trực quan hóa" tay nghề.)* |
| Thức | なるほど。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby>を<ruby>証明<rt>しょうめい</rt></ruby>できるんですね。<br>*(Ra vậy. Có thể chứng minh tay nghề của mình nhỉ.)* |

---

## Tình huống 2 — Văn phòng · 8:50, hỏi về thẻ CCUS

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、CCUSの<ruby>登録<rt>とうろく</rt></ruby>をすると<ruby>何<rt>なに</rt></ruby>がもらえますか?<br>*(Đốc công, đăng ký CCUS thì nhận được gì ạ?)* |
| Saito | <ruby>技能者<rt>ぎのうしゃ</rt></ruby>カードがもらえる。ICチップ<ruby>入<rt>い</rt></ruby>りの<ruby>本人<rt>ほんにん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>カードや。<br>*(Nhận được thẻ kỹ năng. Là thẻ xác nhận danh tính có chip IC.)* |
| Thức | そのカードはどう<ruby>使<rt>つか</rt></ruby>いますか?<br>*(Thẻ đó dùng thế nào ạ?)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>の<ruby>入退場<rt>にゅうたいじょう</rt></ruby>でカードリーダーにかざす。<ruby>働<rt>はたら</rt></ruby>いた<ruby>記録<rt>きろく</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>るんや。<br>*(Quẹt vào đầu đọc thẻ khi ra vào công trường. Lịch sử làm việc sẽ được lưu lại.)* |
| Thức | <ruby>記録<rt>きろく</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>ると、<ruby>経験<rt>けいけん</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>になるんですね。<br>*(Lưu lịch sử thì thành bằng chứng kinh nghiệm nhỉ.)* |
| Saito | その<ruby>通<rt>とお</rt></ruby>り。<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>評価<rt>ひょうか</rt></ruby>にもつながるで。<br>*(Đúng vậy. Còn liên quan tới đánh giá tương lai nữa.)* |

---

## Tình huống 3 — Văn phòng · 9:10, đăng ký thông tin CCUS với bộ phận hành chính

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、CCUSの<ruby>登録<rt>とうろく</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Anh Thức, cho tôi xác nhận thông tin đăng ký CCUS.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Vâng, nhờ chị ạ. Cần gì ạ?)* |
| Nhân viên HC | <ruby>在留<rt>ざいりゅう</rt></ruby>カードと、<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby>の<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Cần thẻ lưu trú và chứng nhận hoàn thành thực tập kỹ năng.)* |
| Thức | <ruby>両方<rt>りょうほう</rt></ruby><ruby>持<rt>も</rt></ruby>ってきました。これでいいですか?<br>*(Em mang cả hai rồi. Thế này được không ạ?)* |
| Nhân viên HC | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>登録<rt>とうろく</rt></ruby>には<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>がかかります。<br>*(Vâng, ổn rồi. Đăng ký mất một chút thời gian.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em hiểu rồi. Nhờ chị giúp ạ.)* |

---

## Tình huống 4 — Văn phòng · 9:40, hỏi 職長 về JAC

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、JACというのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Đốc công, JAC là gì ạ?)* |
| Saito | <ruby>建設<rt>けんせつ</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>人材<rt>じんざい</rt></ruby><ruby>機構<rt>きこう</rt></ruby>のことや。<ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>特定技能<rt>とくていぎのう</rt></ruby>を<ruby>管理<rt>かんり</rt></ruby>する<ruby>団体<rt>だんたい</rt></ruby>や。<br>*(Là cơ quan nhân lực kỹ năng xây dựng. Tổ chức quản lý Tokutei Ginou ngành xây dựng.)* |
| Thức | <ruby>会社<rt>かいしゃ</rt></ruby>はJACに<ruby>入<rt>はい</rt></ruby>っているんですか?<br>*(Công ty mình có gia nhập JAC không ạ?)* |
| Saito | <ruby>加入<rt>かにゅう</rt></ruby><ruby>済<rt>ず</rt></ruby>みや。<ruby>建設<rt>けんせつ</rt></ruby>の<ruby>特定技能<rt>とくていぎのう</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れるには<ruby>加入<rt>かにゅう</rt></ruby>が<ruby>条件<rt>じょうけん</rt></ruby>なんや。<br>*(Đã gia nhập. Để tiếp nhận Tokutei Ginou xây dựng thì gia nhập là điều kiện.)* |
| Thức | そうなんですね。JACは<ruby>何<rt>なに</rt></ruby>をしてくれますか?<br>*(Vậy à. JAC làm gì cho mình ạ?)* |
| Saito | <ruby>研修<rt>けんしゅう</rt></ruby>や<ruby>就職<rt>しゅうしょく</rt></ruby><ruby>支援<rt>しえん</rt></ruby>、<ruby>適正<rt>てきせい</rt></ruby>な<ruby>就労<rt>しゅうろう</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>の<ruby>確保<rt>かくほ</rt></ruby>などや。<br>*(Đào tạo, hỗ trợ việc làm, đảm bảo môi trường lao động phù hợp v.v.)* |

---

## Tình huống 5 — Văn phòng · 10:00, hỏi về 受入負担金

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、「<ruby>受入負担金<rt>うけいれふたんきん</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きました。<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Đốc công, em nghe từ "phí tiếp nhận". Là gì ạ?)* |
| Saito | <ruby>会社<rt>かいしゃ</rt></ruby>がJACに<ruby>払<rt>はら</rt></ruby>うお<ruby>金<rt>かね</rt></ruby>や。<ruby>外国人<rt>がいこくじん</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れる<ruby>側<rt>がわ</rt></ruby>が<ruby>負担<rt>ふたん</rt></ruby>するんや。<br>*(Là tiền công ty trả cho JAC. Phía tiếp nhận người nước ngoài chịu khoản đó.)* |
| Thức | それは<ruby>私<rt>わたし</rt></ruby>の<ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>かれますか?<br>*(Khoản đó có bị trừ vào lương của em không ạ?)* |
| Saito | いや、<ruby>引<rt>ひ</rt></ruby>かれへん。<ruby>本人<rt>ほんにん</rt></ruby>に<ruby>負担<rt>ふたん</rt></ruby>させたらあかん<ruby>決<rt>き</rt></ruby>まりや。<br>*(Không, không bị trừ. Quy định cấm bắt người lao động chịu khoản đó.)* |
| Thức | それを<ruby>聞<rt>き</rt></ruby>いて<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Nghe vậy em yên tâm ạ.)* |
| Saito | <ruby>知<rt>し</rt></ruby>っとくのは<ruby>大事<rt>だいじ</rt></ruby>や。おかしいと<ruby>思<rt>おも</rt></ruby>ったらすぐ<ruby>相談<rt>そうだん</rt></ruby>しいや。<br>*(Biết là quan trọng. Thấy bất thường thì phải hỏi ngay.)* |

---

## Tình huống 6 — Phòng nghỉ · 10:30, trao đổi với Hùng về thẻ (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, mày làm thẻ CCUS xong chưa? Tao thấy rối quá. |
| Thức | Tao nộp thông tin rồi, đợi cấp thẻ. Cứ nghĩ nó như sổ ghi kinh nghiệm điện tử ấy. |
| Hùng | Cái phí 受入負担金 là mình trả à? Tao lo bị trừ lương. |
| Thức | Không. 職長 nói rõ công ty trả, cấm trừ vào lương người lao động. |
| Hùng | May quá. Vậy mình cứ quẹt thẻ ra vào, kinh nghiệm tự tích lũy. |
| Thức | Ừ. Sau này còn ảnh hưởng レベル判定, cứ làm cho đàng hoàng là có lợi. |

---

## Tình huống 7 — Văn phòng · 11:00, lần đầu nghe về レベル判定

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、CCUSには「レベル<ruby>判定<rt>はんてい</rt></ruby>」というのがある。<br>*(Thức, CCUS có cái gọi là "đánh giá cấp độ".)* |
| Thức | レベル<ruby>判定<rt>はんてい</rt></ruby>?レベルが<ruby>分<rt>わ</rt></ruby>かれているんですか?<br>*(Đánh giá cấp độ ạ? Có chia cấp độ ạ?)* |
| Saito | <ruby>4<rt>よん</rt></ruby>つや。<ruby>白<rt>しろ</rt></ruby>、<ruby>青<rt>あお</rt></ruby>、シルバー、ゴールドとカードの<ruby>色<rt>いろ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる。<br>*(Bốn cấp. Trắng, xanh, bạc, vàng — màu thẻ thay đổi.)* |
| Thức | <ruby>色<rt>いろ</rt></ruby>で<ruby>経験<rt>けいけん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かるんですね。どうやって<ruby>上<rt>あ</rt></ruby>がりますか?<br>*(Màu thì biết được kinh nghiệm nhỉ. Lên cấp thế nào ạ?)* |
| Saito | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>、<ruby>保有<rt>ほゆう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>などで<ruby>判定<rt>はんてい</rt></ruby>される。<br>*(Đánh giá theo số ngày làm, bằng cấp đang có, kinh nghiệm làm đốc công v.v.)* |
| Thức | <ruby>目標<rt>もくひょう</rt></ruby>になりますね。まずはシルバーを<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Thành mục tiêu nhỉ. Trước hết em nhắm cấp bạc ạ.)* |

---

## Tình huống 8 — Công trường · 13:00, lần đầu quẹt thẻ CCUS ra vào

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、これがカードリーダーや。<ruby>入<rt>はい</rt></ruby>るときにかざすんやで。<br>*(Thức, đây là đầu đọc thẻ. Quẹt vào lúc đi vào nhé.)* |
| Thức | こうですか?ピッと<ruby>音<rt>おと</rt></ruby>がしました。<br>*(Như thế này ạ? Kêu "tít" rồi ạ.)* |
| Kondo | それでOKや。<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>が<ruby>記録<rt>きろく</rt></ruby>される。<br>*(Vậy là OK. Lịch sử làm việc được ghi lại.)* |
| Thức | <ruby>帰<rt>かえ</rt></ruby>るときもかざしますか?<br>*(Lúc về cũng quẹt ạ?)* |
| Kondo | そうや。<ruby>入<rt>い</rt></ruby>りも<ruby>出<rt>で</rt></ruby>も<ruby>両方<rt>りょうほう</rt></ruby>な。<ruby>忘<rt>わす</rt></ruby>れたら<ruby>記録<rt>きろく</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>らへんで。<br>*(Đúng. Cả vào lẫn ra. Quên là không lưu lịch sử đâu.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎回<rt>まいかい</rt></ruby><ruby>必<rt>かなら</rt></ruby>ずかざします。<br>*(Em hiểu rồi. Lần nào cũng nhất định quẹt ạ.)* |

---

## Tình huống 9 — Công trường · 13:30, dặn Nam quẹt thẻ đầy đủ

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、CCUSのカードはもう<ruby>届<rt>とど</rt></ruby>いた?<br>*(Nam, thẻ CCUS đến chưa?)* |
| Nam | はい、<ruby>先週<rt>せんしゅう</rt></ruby><ruby>届<rt>とど</rt></ruby>きました。<br>*(Vâng, tuần trước đến rồi ạ.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>、<ruby>入退場<rt>にゅうたいじょう</rt></ruby>でちゃんとかざしてる?<br>*(Mỗi ngày, ra vào quẹt đầy đủ chứ?)* |
| Nam | …<ruby>朝<rt>あさ</rt></ruby>はかざしますが、<ruby>帰<rt>かえ</rt></ruby>りは<ruby>忘<rt>わす</rt></ruby>れることがあります。<br>*(…Sáng thì em quẹt, nhưng lúc về đôi khi quên ạ.)* |
| Thức | それやと<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しく<ruby>残<rt>のこ</rt></ruby>らへん。<ruby>将来<rt>しょうらい</rt></ruby>のレベル<ruby>判定<rt>はんてい</rt></ruby>に<ruby>響<rt>ひび</rt></ruby>くで。<br>*(Vậy thì số ngày làm không lưu đúng. Ảnh hưởng đánh giá cấp độ sau này đấy.)* |
| Nam | あっ、そうなんですか。これからは<ruby>必<rt>かなら</rt></ruby>ずかざします。<br>*(Ơ, vậy ạ. Từ giờ em nhất định quẹt ạ.)* |

---

## Tình huống 10 — Văn phòng · 14:00, hỏi 職長 về 監理 và hỗ trợ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby>には<ruby>支援<rt>しえん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>というのがあると<ruby>聞<rt>き</rt></ruby>きました。<br>*(Đốc công, em nghe Tokutei Ginou có kế hoạch hỗ trợ.)* |
| Saito | あるで。<ruby>生活<rt>せいかつ</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>や<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>の<ruby>支援<rt>しえん</rt></ruby>をする<ruby>計画<rt>けいかく</rt></ruby>や。<br>*(Có. Là kế hoạch hỗ trợ tư vấn đời sống và học tiếng Nhật.)* |
| Thức | <ruby>困<rt>こま</rt></ruby>ったときは<ruby>誰<rt>だれ</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>すればいいですか?<br>*(Có khó khăn thì hỏi ai ạ?)* |
| Saito | <ruby>支援<rt>しえん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>の<ruby>者<rt>もの</rt></ruby>がおる。<ruby>定期<rt>ていき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>もあるからそこで<ruby>言<rt>い</rt></ruby>うてもええ。<br>*(Có người phụ trách hỗ trợ. Có cả phỏng vấn định kỳ nên nói ở đó cũng được.)* |
| Thức | <ruby>定期<rt>ていき</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>はいつですか?<br>*(Phỏng vấn định kỳ khi nào ạ?)* |
| Saito | <ruby>3<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>に<ruby>一度<rt>いちど</rt></ruby>や。<ruby>遠慮<rt>えんりょ</rt></ruby>せんと<ruby>何<rt>なん</rt></ruby>でも<ruby>言<rt>い</rt></ruby>うてや。<br>*(Ba tháng một lần. Đừng ngại, có gì cứ nói.)* |

---

## Tình huống 11 — Công trường · 14:30, 現場監督 Ishikawa xác nhận thẻ tổ

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>班<rt>はん</rt></ruby>の<ruby>全員<rt>ぜんいん</rt></ruby>がCCUSに<ruby>登録<rt>とうろく</rt></ruby><ruby>済<rt>ず</rt></ruby>みですか?<br>*(Anh Thức, cả tổ đã đăng ký CCUS hết chưa?)* |
| Thức | はい、<ruby>全員<rt>ぜんいん</rt></ruby><ruby>登録<rt>とうろく</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。カードも<ruby>配<rt>くば</rt></ruby>られています。<br>*(Vâng, cả tổ đã đăng ký. Thẻ cũng đã phát rồi ạ.)* |
| Ishikawa | この<ruby>現場<rt>げんば</rt></ruby>はCCUSの<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>を<ruby>義務<rt>ぎむ</rt></ruby><ruby>化<rt>か</rt></ruby>してます。<ruby>徹底<rt>てってい</rt></ruby>してください。<br>*(Công trường này bắt buộc đăng ký lịch sử làm việc CCUS. Yêu cầu thực hiện triệt để.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>毎日<rt>まいにち</rt></ruby><ruby>入退場<rt>にゅうたいじょう</rt></ruby>でかざすよう、<ruby>班<rt>はん</rt></ruby>に<ruby>徹底<rt>てってい</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ quán triệt cả tổ quẹt thẻ khi ra vào mỗi ngày.)* |
| Ishikawa | <ruby>外国人<rt>がいこくじん</rt></ruby>の<ruby>班<rt>はん</rt></ruby>はそこが<ruby>抜<rt>ぬ</rt></ruby>けやすいんでね。<ruby>頼<rt>たの</rt></ruby>みますよ。<br>*(Tổ người nước ngoài hay sót chỗ đó. Nhờ anh đấy.)* |
| Thức | はい、<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>管理<rt>かんり</rt></ruby>します。<br>*(Vâng, em sẽ quản lý có trách nhiệm ạ.)* |

---

## Tình huống 12 — Công trường · 15:00, dặn tổ về việc quẹt thẻ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>連絡<rt>れんらく</rt></ruby>です。CCUSカードは<ruby>朝<rt>あさ</rt></ruby>と<ruby>帰<rt>かえ</rt></ruby>り<ruby>両方<rt>りょうほう</rt></ruby>かざしてください。<br>*(Mọi người, thông báo. Thẻ CCUS phải quẹt cả sáng và lúc về.)* |
| Hùng | <ruby>帰<rt>かえ</rt></ruby>りも<ruby>忘<rt>わす</rt></ruby>れたらあかんのやな?<br>*(Lúc về quên là không được nhỉ?)* |
| Thức | そうや。<ruby>片方<rt>かたほう</rt></ruby>だけやと<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>がちゃんと<ruby>残<rt>のこ</rt></ruby>らへん。<br>*(Đúng. Chỉ một chiều thì lịch sử làm việc không lưu đầy đủ.)* |
| Nam | <ruby>忘<rt>わす</rt></ruby>れそうなときはどうしますか?<br>*(Lúc hay quên thì làm sao ạ?)* |
| Thức | <ruby>帰<rt>かえ</rt></ruby>り<ruby>支度<rt>じたく</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に「カード」と<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>おう。<ruby>習慣<rt>しゅうかん</rt></ruby>にすればええ。<br>*(Trước khi dọn về cùng hô "thẻ" nhắc nhau. Biến thành thói quen là được.)* |
| Hùng | ええ<ruby>考<rt>かんが</rt></ruby>えやな。そうしよ。<br>*(Ý hay đấy. Làm vậy đi.)* |

---

## Tình huống 13 — Văn phòng · 15:30, hỏi về quan hệ giữa レベル và lương

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、レベルが<ruby>上<rt>あ</rt></ruby>がると<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がりますか?<br>*(Đốc công, lên cấp thì lương cũng tăng ạ?)* |
| Saito | <ruby>直接<rt>ちょくせつ</rt></ruby><ruby>連動<rt>れんどう</rt></ruby>するわけやないけど、<ruby>評価<rt>ひょうか</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby>にはなる。<br>*(Không phải gắn trực tiếp, nhưng thành căn cứ để đánh giá.)* |
| Thức | レベルが<ruby>高<rt>たか</rt></ruby>いと<ruby>会社<rt>かいしゃ</rt></ruby>にとっても<ruby>良<rt>よ</rt></ruby>いんですか?<br>*(Cấp cao thì với công ty cũng tốt ạ?)* |
| Saito | そうや。<ruby>技能<rt>ぎのう</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>になるし、<ruby>元請<rt>もとうけ</rt></ruby>からの<ruby>評価<rt>ひょうか</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がる。<br>*(Đúng. Vừa chứng minh tay nghề, vừa được nhà thầu chính đánh giá cao hơn.)* |
| Thức | <ruby>頑張<rt>がんば</rt></ruby>る<ruby>意味<rt>いみ</rt></ruby>がありますね。<br>*(Có ý nghĩa để cố gắng nhỉ.)* |
| Saito | <ruby>地道<rt>じみち</rt></ruby>に<ruby>履歴<rt>りれき</rt></ruby>を<ruby>積<rt>つ</rt></ruby>むことや。<ruby>近道<rt>ちかみち</rt></ruby>はない。<br>*(Là chuyện kiên trì tích lũy lịch sử. Không có đường tắt.)* |

---

## Tình huống 14 — Công trường · 15:50, kiểm tra thẻ Nam đã quẹt

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>はカードかざした?<br>*(Nam, sáng nay quẹt thẻ chưa?)* |
| Nam | はい、ちゃんとかざしました。<br>*(Vâng, em quẹt đầy đủ rồi ạ.)* |
| Thức | ええな。<ruby>帰<rt>かえ</rt></ruby>りも<ruby>忘<rt>わす</rt></ruby>れんようにな。<br>*(Tốt. Lúc về cũng đừng quên nhé.)* |
| Nam | はい。トゥックさんに<ruby>言<rt>い</rt></ruby>われてから<ruby>意識<rt>いしき</rt></ruby>するようになりました。<br>*(Vâng. Từ khi anh Thức nhắc em đã chú ý hơn ạ.)* |
| Thức | ええ<ruby>習慣<rt>しゅうかん</rt></ruby>や。<ruby>小<rt>ちい</rt></ruby>さいことの<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>将来<rt>しょうらい</rt></ruby>に<ruby>効<rt>き</rt></ruby>いてくるで。<br>*(Thói quen tốt đấy. Tích lũy việc nhỏ sẽ có tác dụng cho tương lai.)* |
| Nam | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |

---

## Tình huống 15 — Văn phòng · 16:10, nhận thẻ CCUS

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、CCUSの<ruby>技能者<rt>ぎのうしゃ</rt></ruby>カードが<ruby>届<rt>とど</rt></ruby>きました。<br>*(Anh Thức, thẻ kỹ năng CCUS đến rồi.)* |
| Thức | ありがとうございます。<ruby>色<rt>いろ</rt></ruby>は<ruby>白<rt>しろ</rt></ruby>ですね。<br>*(Em cảm ơn ạ. Màu trắng nhỉ.)* |
| Nhân viên HC | はい、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>白<rt>しろ</rt></ruby>からです。<ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>めば<ruby>上<rt>あ</rt></ruby>がります。<br>*(Vâng, ban đầu từ trắng. Tích lũy kinh nghiệm thì lên cấp.)* |
| Thức | いつか<ruby>青<rt>あお</rt></ruby>、シルバーと<ruby>上<rt>あ</rt></ruby>げたいです。<br>*(Em muốn dần lên xanh rồi bạc ạ.)* |
| Nhân viên HC | その<ruby>意気込<rt>いきご</rt></ruby>みがあれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>してください。<br>*(Có quyết tâm đó thì ổn thôi. Bảo quản cẩn thận nhé.)* |
| Thức | はい、なくさないようにします。<br>*(Vâng, em sẽ không để mất ạ.)* |

---

## Tình huống 16 — Công trường · 16:30, giải thích cho Nam về màu thẻ

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>僕<rt>ぼく</rt></ruby>のカードも<ruby>白<rt>しろ</rt></ruby>です。みんな<ruby>白<rt>しろ</rt></ruby>ですか?<br>*(Anh Thức, thẻ em cũng trắng. Mọi người đều trắng ạ?)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>はみんな<ruby>白<rt>しろ</rt></ruby>や。<ruby>経験<rt>けいけん</rt></ruby>がまだ<ruby>少<rt>すく</rt></ruby>ないからな。<br>*(Ban đầu ai cũng trắng. Vì kinh nghiệm còn ít.)* |
| Nam | トゥックさんも<ruby>白<rt>しろ</rt></ruby>ですか?<br>*(Anh Thức cũng trắng ạ?)* |
| Thức | そうや。でも<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>がたまれば<ruby>青<rt>あお</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がる。<ruby>地道<rt>じみち</rt></ruby>にいこう。<br>*(Đúng. Nhưng tích đủ lịch sử thì lên xanh. Cứ kiên trì nào.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。カード、なくさないようにします。<br>*(Em hiểu rồi. Em sẽ không để mất thẻ ạ.)* |
| Thức | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Đó là điều quan trọng nhất.)* |

---

## Tình huống 17 — Văn phòng · 16:50, báo cáo 親方 việc đăng ký xong

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>班<rt>はん</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>のCCUS<ruby>登録<rt>とうろく</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Thưa cai, cả tổ đã đăng ký CCUS xong ạ.)* |
| Tanigawa | おう、はやかったな。カードも<ruby>届<rt>とど</rt></ruby>いたか?<br>*(Ờ, nhanh đấy. Thẻ đến chưa?)* |
| Thức | はい、<ruby>全員<rt>ぜんいん</rt></ruby><ruby>届<rt>とど</rt></ruby>きました。<ruby>入退場<rt>にゅうたいじょう</rt></ruby>のかざしも<ruby>徹底<rt>てってい</rt></ruby>しています。<br>*(Vâng, cả tổ đã nhận. Em cũng quán triệt việc quẹt thẻ ra vào ạ.)* |
| Tanigawa | ええこっちゃ。<ruby>履歴<rt>りれき</rt></ruby>はみんなの<ruby>財産<rt>ざいさん</rt></ruby>やからな。<br>*(Tốt rồi. Lịch sử là tài sản của mọi người đấy.)* |
| Thức | はい。<ruby>抜<rt>ぬ</rt></ruby>けがないよう<ruby>毎日<rt>まいにち</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Em sẽ kiểm tra mỗi ngày để không sót ạ.)* |
| Tanigawa | <ruby>班長<rt>はんちょう</rt></ruby>らしくなってきたな。<br>*(Bắt đầu ra dáng 班長 rồi đấy.)* |

---

## Tình huống 18 — Văn phòng · 17:00, hỏi 職長 hồ sơ chuẩn bị レベル判定

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>将来<rt>しょうらい</rt></ruby>レベル<ruby>判定<rt>はんてい</rt></ruby>を<ruby>受<rt>う</rt></ruby>けるには、<ruby>今<rt>いま</rt></ruby>から<ruby>何<rt>なに</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>すればいいですか?<br>*(Đốc công, để được đánh giá cấp độ sau này, từ giờ chuẩn bị gì ạ?)* |
| Saito | まずは<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>をきちんと<ruby>残<rt>のこ</rt></ruby>すこと。それと<ruby>資格<rt>しかく</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>や。<br>*(Trước hết là lưu đầy đủ số ngày làm. Với cả lấy bằng cấp.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>の<ruby>組立<rt>くみたて</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>などの<ruby>資格<rt>しかく</rt></ruby>ですか?<br>*(Bằng như chủ nhiệm thao tác lắp giàn giáo ạ?)* |
| Saito | そうや。よう<ruby>知<rt>し</rt></ruby>っとるな。とびの<ruby>技能士<rt>ぎのうし</rt></ruby>も<ruby>評価<rt>ひょうか</rt></ruby>される。<br>*(Đúng. Biết rõ đấy. Thợ tay nghề tobi cũng được tính.)* |
| Thức | <ruby>計画<rt>けいかく</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>取<rt>と</rt></ruby>っていきたいです。<br>*(Em muốn lấy bằng có kế hoạch ạ.)* |
| Saito | ええ<ruby>心構<rt>こころがま</rt></ruby>えや。また<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えよ。<br>*(Tinh thần tốt đấy. Lúc nào cùng tính thứ tự nhé.)* |

---

## Tình huống 19 — Công trường · 17:15, dặn dò tổ trước khi về

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>もおつかれさまでした。<ruby>帰<rt>かえ</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Mọi người, hôm nay vất vả rồi. Trước khi về xác nhận chút.)* |
| Hùng | カードのことやろ?もうかざしたで。<br>*(Chuyện thẻ chứ gì? Quẹt rồi đấy.)* |
| Thức | はい、それと<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>数<rt>かず</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, với cả nhờ kiểm tra số dụng cụ nữa.)* |
| Nam | <ruby>工具<rt>こうぐ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby>そろっています。<br>*(Dụng cụ đủ hết ạ.)* |
| Thức | ありがとう。<ruby>明日<rt>あした</rt></ruby>は<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>続<rt>つづ</rt></ruby>きから<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Cảm ơn. Mai bắt đầu từ phần tiếp mặt Nam.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさん。<br>*(Rõ. Vất vả nhé.)* |

---

## Tình huống 20 — Văn phòng · 17:25, 職長 khen sự chủ động

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>制度<rt>せいど</rt></ruby>のこと、よう<ruby>勉強<rt>べんきょう</rt></ruby>しとるな。<br>*(Thức, chuyện chế độ học kỹ đấy.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>のことなので、ちゃんと<ruby>知<rt>し</rt></ruby>っておきたいです。<br>*(Vì là chuyện của em nên em muốn biết rõ ạ.)* |
| Saito | その<ruby>姿勢<rt>しせい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>や。<ruby>班<rt>はん</rt></ruby>のみんなにも<ruby>伝<rt>つた</rt></ruby>えてやってくれ。<br>*(Thái độ đó quan trọng. Truyền cho cả tổ nữa nhé.)* |
| Thức | はい。みんなが<ruby>制度<rt>せいど</rt></ruby>を<ruby>理解<rt>りかい</rt></ruby>すれば、トラブルも<ruby>減<rt>へ</rt></ruby>ると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Mọi người hiểu chế độ thì rắc rối cũng giảm ạ.)* |
| Saito | そうや。<ruby>班長<rt>はんちょう</rt></ruby>として<ruby>頼<rt>たの</rt></ruby>もしいわ。<br>*(Đúng. Với tư cách 班長 thấy đáng tin đấy.)* |
| Thức | ありがとうございます。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ. Từ giờ em cũng cố gắng.)* |

---

## Đọng lại

Thức nắm được hai chế độ cốt lõi của ngành xây dựng: **CCUS** ghi lại lịch sử làm việc và bằng cấp để "trực quan hóa" tay nghề qua 4 cấp màu thẻ, và **JAC** quản lý Tokutei Ginou với khoản 受入負担金 do công ty (không phải người lao động) chịu. Lần đầu nghe về レベル判定, Thức xác định mục tiêu nâng cấp thẻ qua tích lũy ngày làm và bằng cấp. Với tư cách 班長, Thức bắt đầu quán triệt cho cả tổ thói quen quẹt thẻ — được 現場監督 Ishikawa nhắc nhở và 親方 ghi nhận.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 建設キャリアアップシステム | けんせつきゃりああっぷしすてむ | Hệ thống nâng cao sự nghiệp xây dựng (CCUS) |
> | 技能者カード | ぎのうしゃカード | Thẻ kỹ năng (thẻ CCUS) |
> | 就業履歴 | しゅうぎょうりれき | Lịch sử làm việc |
> | レベル判定 | レベルはんてい | Đánh giá cấp độ |
> | 受入負担金 | うけいれふたんきん | Phí tiếp nhận (công ty trả JAC) |
> | 建設技能人材機構 | けんせつぎのうじんざいきこう | Cơ quan nhân lực kỹ năng xây dựng (JAC) |
> | 加入 | かにゅう | Gia nhập |
> | 支援計画 | しえんけいかく | Kế hoạch hỗ trợ |
> | 定期面談 | ていきめんだん | Phỏng vấn định kỳ |
> | 入退場 | にゅうたいじょう | Ra vào (công trường) |
> | 義務化 | ぎむか | Bắt buộc hóa |
> | 資格取得 | しかくしゅとく | Lấy bằng cấp |
> | 技能士 | ぎのうし | Thợ tay nghề (có chứng chỉ) |
> | 元請 | もとうけ | Nhà thầu chính |
> | 在留カード | ざいりゅうカード | Thẻ lưu trú |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000003, 800000036, NULL, 'markdown_book', 'T3. Nhận tổ nhỏ — Lần đầu chia việc 段取り (班の分担・段取り)', '# Sách kỹ năng đặc định xây dựng · T3. Nhận tổ nhỏ — Lần đầu chia việc 段取り (班の分担・段取り)

> **Mục tiêu nhân vật:** Thức chính thức quản lý tổ nhỏ, học cách lập kế hoạch ngày, chia việc theo năng lực từng người (適材適所), điều chỉnh khi phát sinh, báo cáo 段取り cho 職長.

---

## Bối cảnh

Tháng 6 năm 2029. Công trường mới khởi công một tòa nhà 5 tầng. Tổ Thức gồm Hùng, Nam và 2 thợ Nhật trẻ. Thức phải tự lập 段取り (kế hoạch trình tự công việc) mỗi sáng, chia việc, theo dõi tiến độ, điều chỉnh khi vật tư/thời tiết thay đổi. Chương tập trung mẫu câu chỉ huy: phân công rõ ràng, hỏi xác nhận năng lực, điều phối, báo cáo lên 職長.

---

## Tình huống 1 — Công trường · 7:50, 職長 giao kế hoạch tuần

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今週<rt>こんしゅう</rt></ruby>は<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>を<ruby>5階<rt>ごかい</rt></ruby>まで<ruby>上<rt>あ</rt></ruby>げてくれ。<br>*(Thức, tuần này dựng giàn giáo mặt Bắc lên tới tầng 5 nhé.)* |
| Thức | はい。<ruby>5階<rt>ごかい</rt></ruby>までですね。<ruby>納期<rt>のうき</rt></ruby>はいつですか?<br>*(Vâng. Tới tầng 5 nhỉ. Hạn là khi nào ạ?)* |
| Saito | <ruby>金曜<rt>きんよう</rt></ruby>までや。<ruby>段取<rt>だんど</rt></ruby>りはトゥックに<ruby>任<rt>まか</rt></ruby>せる。<br>*(Tới thứ Sáu. Bố trí giao cho Thức.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>1日<rt>いちにち</rt></ruby><ruby>1層<rt>いっそう</rt></ruby>のペースで<ruby>計画<rt>けいかく</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ tính kế hoạch nhịp 1 tầng 1 ngày.)* |
| Saito | ええ<ruby>判断<rt>はんだん</rt></ruby>や。<ruby>無理<rt>むり</rt></ruby>そうなら<ruby>早<rt>はや</rt></ruby>めに<ruby>言<rt>い</rt></ruby>うてや。<br>*(Quyết định tốt. Thấy khó thì báo sớm nhé.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em báo cáo tiến độ mỗi ngày ạ.)* |

---

## Tình huống 2 — Trước朝礼 · 8:00, Thức lập 段取り trong đầu rồi xác nhận với Kondo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>段取<rt>だんど</rt></ruby>りを<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Đàn anh Kondo, cho em hỏi về bố trí công việc ạ.)* |
| Kondo | ええで。どう<ruby>考<rt>かんが</rt></ruby>えてる?<br>*(Được. Định thế nào?)* |
| Thức | <ruby>午前<rt>ごぜん</rt></ruby>に<ruby>建<rt>た</rt></ruby>てわく、<ruby>午後<rt>ごご</rt></ruby>に<ruby>布<rt>ぬの</rt></ruby>わくと<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Em định buổi sáng khung đứng, buổi chiều khung ngang và ván sàn ạ.)* |
| Kondo | ええやん。ただ<ruby>資材<rt>しざい</rt></ruby><ruby>運<rt>はこ</rt></ruby>びを<ruby>先<rt>さき</rt></ruby>にやらな<ruby>手<rt>て</rt></ruby>が<ruby>止<rt>と</rt></ruby>まるで。<br>*(Ổn đấy. Nhưng phải vận chuyển vật tư trước không thì kẹt tay.)* |
| Thức | あ、そうですね。<ruby>朝<rt>あさ</rt></ruby>イチで<ruby>運搬<rt>うんぱん</rt></ruby><ruby>班<rt>はん</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かします。<br>*(À, đúng ạ. Em cho tổ vận chuyển làm ngay đầu giờ.)* |
| Kondo | それでええ。<ruby>段取<rt>だんど</rt></ruby>り<ruby>八分<rt>はちぶ</rt></ruby>っちゅうやろ。<br>*(Vậy là được. Bố trí tốt là xong tám phần đấy.)* |

---

## Tình huống 3 — Buổi 朝礼 · 8:10, Thức công bố phân công

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>言<rt>い</rt></ruby>います。よく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Mọi người, tôi nói bố trí hôm nay. Nghe kỹ nhé.)* |
| Hùng | はい、<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Ừ, nói đi.)* |
| Thức | フンさんとナムさんは<ruby>資材<rt>しざい</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby>。<ruby>佐々木<rt>ささき</rt></ruby>さんと<ruby>私<rt>わたし</rt></ruby>は<ruby>3階<rt>さんかい</rt></ruby>の<ruby>建<rt>た</rt></ruby>てわくです。<br>*(Hùng và Nam vận chuyển vật tư. Sasaki và tôi làm khung đứng tầng 3.)* |
| Sasaki | <ruby>了解<rt>りょうかい</rt></ruby>です。<ruby>運搬<rt>うんぱん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わったら<ruby>合流<rt>ごうりゅう</rt></ruby>ですか?<br>*(Rõ ạ. Vận chuyển xong thì nhập vào ạ?)* |
| Thức | はい、<ruby>運搬<rt>うんぱん</rt></ruby><ruby>後<rt>ご</rt></ruby>は<ruby>布<rt>ぬの</rt></ruby>わくに<ruby>入<rt>はい</rt></ruby>ってください。<ruby>10時<rt>じゅうじ</rt></ruby><ruby>目処<rt>めど</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, sau vận chuyển vào khung ngang. Nhắm tầm 10 giờ nhé.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。すぐ<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Em hiểu rồi. Em bắt đầu ngay ạ.)* |

---

## Tình huống 4 — Kho vật tư · 8:25, hướng dẫn Nam thứ tự vận chuyển

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>何<rt>なに</rt></ruby>から<ruby>運<rt>はこ</rt></ruby>べばいいですか?<br>*(Anh Thức, vận chuyển từ cái gì trước ạ?)* |
| Thức | <ruby>建<rt>た</rt></ruby>てわくが<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>要<rt>い</rt></ruby>るから、それを<ruby>先<rt>さき</rt></ruby>に。<br>*(Khung đứng cần đầu tiên nên cái đó trước.)* |
| Nam | <ruby>何<rt>なん</rt></ruby><ruby>本<rt>ぼん</rt></ruby><ruby>運<rt>はこ</rt></ruby>べばいいですか?<br>*(Vận chuyển bao nhiêu cây ạ?)* |
| Thức | <ruby>3階<rt>さんかい</rt></ruby><ruby>分<rt>ぶん</rt></ruby>で<ruby>40本<rt>よんじゅっぽん</rt></ruby>。まず<ruby>20本<rt>にじゅっぽん</rt></ruby><ruby>運<rt>はこ</rt></ruby>んで、<ruby>残<rt>のこ</rt></ruby>りは<ruby>後<rt>あと</rt></ruby>でええ。<br>*(Tầng 3 cần 40 cây. Vận chuyển trước 20 cây, còn lại sau cũng được.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>台車<rt>だいしゃ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていいですか?<br>*(Em hiểu rồi. Dùng xe đẩy được không ạ?)* |
| Thức | ええよ。<ruby>無理<rt>むり</rt></ruby>に<ruby>持<rt>も</rt></ruby>たんと<ruby>台車<rt>だいしゃ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>い。<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めるなよ。<br>*(Được. Đừng ráng bê, dùng xe đẩy. Đừng để đau lưng đấy.)* |

---

## Tình huống 5 — Công trường · 9:30, điều chỉnh khi Nam chậm

| Vai | Lời thoại |
|---|---|
| Thức | フンさん、<ruby>運搬<rt>うんぱん</rt></ruby>はどれくらい<ruby>進<rt>すす</rt></ruby>んだ?<br>*(Hùng, vận chuyển được đến đâu rồi?)* |
| Hùng | <ruby>半分<rt>はんぶん</rt></ruby>くらいや。ナムが<ruby>少<rt>すこ</rt></ruby>し<ruby>遅<rt>おく</rt></ruby>れとる。<br>*(Khoảng nửa rồi. Nam hơi chậm.)* |
| Thức | じゃあ<ruby>佐々木<rt>ささき</rt></ruby>さんを<ruby>一時<rt>いちじ</rt></ruby><ruby>運搬<rt>うんぱん</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>す。<ruby>建<rt>た</rt></ruby>てわくは<ruby>私<rt>わたし</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>ける。<br>*(Vậy cho Sasaki tạm sang vận chuyển. Khung đứng tôi làm tiếp.)* |
| Hùng | それで<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いそうやな。<br>*(Vậy thì kịp đấy.)* |
| Thức | <ruby>段取<rt>だんど</rt></ruby>りは<ruby>状況<rt>じょうきょう</rt></ruby>で<ruby>変<rt>か</rt></ruby>えてええ。<ruby>無理<rt>むり</rt></ruby>せん<ruby>範囲<rt>はんい</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めよう。<br>*(Bố trí cứ đổi theo tình hình. Làm trong mức không gắng sức nào.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>柔軟<rt>じゅうなん</rt></ruby>でええな。<br>*(Rõ. Linh hoạt thế tốt đấy.)* |

---

## Tình huống 6 — Công trường · 10:00, báo cáo điều chỉnh cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>段取<rt>だんど</rt></ruby>りを<ruby>少<rt>すこ</rt></ruby>し<ruby>変<rt>か</rt></ruby>えました。<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Đốc công, em đổi bố trí chút. Em báo cáo ạ.)* |
| Saito | おう、どう<ruby>変<rt>か</rt></ruby>えた?<br>*(Ờ, đổi thế nào?)* |
| Thức | <ruby>運搬<rt>うんぱん</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れたので、<ruby>佐々木<rt>ささき</rt></ruby>さんを<ruby>一時<rt>いちじ</rt></ruby><ruby>応援<rt>おうえん</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>しました。<br>*(Vận chuyển bị chậm nên em cho Sasaki tạm sang hỗ trợ ạ.)* |
| Saito | <ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か?<br>*(Tiến độ ổn không?)* |
| Thức | はい、<ruby>昼<rt>ひる</rt></ruby>までに<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>せる<ruby>見込<rt>みこ</rt></ruby>みです。<br>*(Vâng, dự kiến đến trưa lấy lại được ạ.)* |
| Saito | ええ<ruby>判断<rt>はんだん</rt></ruby>や。<ruby>報告<rt>ほうこく</rt></ruby>もタイミングがええ。<br>*(Quyết định tốt. Báo cáo cũng đúng lúc.)* |

---

## Tình huống 7 — Công trường · 10:30, 現場監督 Ishikawa hỏi tiến độ

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>はどうですか?<br>*(Anh Thức, tiến độ mặt Bắc thế nào?)* |
| Thức | <ruby>現在<rt>げんざい</rt></ruby><ruby>3階<rt>さんかい</rt></ruby>の<ruby>建<rt>た</rt></ruby>てわくが<ruby>7割<rt>ななわり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Hiện khung đứng tầng 3 xong 70% ạ.)* |
| Ishikawa | <ruby>金曜<rt>きんよう</rt></ruby>までに<ruby>5階<rt>ごかい</rt></ruby>、<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いそうですか?<br>*(Tới thứ Sáu lên tầng 5, kịp không?)* |
| Thức | <ruby>天候<rt>てんこう</rt></ruby>が<ruby>崩<rt>くず</rt></ruby>れなければ<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<ruby>雨<rt>あめ</rt></ruby>なら<ruby>再<rt>さい</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Nếu thời tiết không xấu thì đúng kế hoạch. Mưa thì em điều chỉnh lại ạ.)* |
| Ishikawa | しっかり<ruby>計画<rt>けいかく</rt></ruby>してますね。…<ruby>見直<rt>みなお</rt></ruby>しましたよ。<br>*(Lập kế hoạch chắc đấy nhỉ. …Tôi nhìn nhận lại rồi đấy.)* |
| Thức | ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ. Em sẽ tiếp tục cố gắng.)* |

---

## Tình huống 8 — Nghỉ trưa · 12:10, tâm sự với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, mày làm 班長 nhìn tự tin hơn nhiều. Hồi đầu thấy run lắm. |
| Thức | Tao vẫn run mà. Cái khó là lúc kế hoạch hỏng phải đổi ngay, không được lúng túng. |
| Hùng | Sáng nay mày chuyển Sasaki sang vận chuyển hay đấy. Anh em đỡ kẹt. |
| Thức | 近藤 dạy tao: "段取り tốt là xong tám phần việc". Tao đang ngấm dần. |
| Hùng | Ừ. Mày cứ nói rõ là tụi tao làm theo được. Đừng ôm hết vào người. |
| Thức | Ừ, tao nhớ. Cảm ơn mày nói thẳng. |

---

## Tình huống 9 — Công trường · 13:00, công bố 段取り buổi chiều

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>午後<rt>ごご</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りです。<ruby>3階<rt>さんかい</rt></ruby>の<ruby>布<rt>ぬの</rt></ruby>わくと<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>を<ruby>仕上<rt>しあ</rt></ruby>げます。<br>*(Bố trí buổi chiều. Hoàn thiện khung ngang và ván sàn tầng 3.)* |
| Sasaki | <ruby>4階<rt>よんかい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>今日<rt>きょう</rt></ruby>のうちにしますか?<br>*(Chuẩn bị tầng 4 làm trong hôm nay ạ?)* |
| Thức | はい、<ruby>時間<rt>じかん</rt></ruby>があれば<ruby>4階<rt>よんかい</rt></ruby><ruby>分<rt>ぶん</rt></ruby>の<ruby>資材<rt>しざい</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げておきたいです。<br>*(Vâng, còn thời gian thì muốn đưa sẵn vật tư tầng 4 lên ạ.)* |
| Hùng | <ruby>先回<rt>さきまわ</rt></ruby>りやな。それやと<ruby>明日<rt>あした</rt></ruby><ruby>楽<rt>らく</rt></ruby>になる。<br>*(Đi trước một bước nhỉ. Vậy mai đỡ.)* |
| Thức | そう。<ruby>明日<rt>あした</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りまで<ruby>考<rt>かんが</rt></ruby>えて<ruby>動<rt>うご</rt></ruby>こう。<br>*(Đúng. Tính cả bố trí mai mà làm nào.)* |
| Nam | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng ạ.)* |

---

## Tình huống 10 — Công trường · 14:00, phân công lại theo năng lực

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>はもう<ruby>慣<rt>な</rt></ruby>れた?<br>*(Nam, cố định ván sàn quen chưa?)* |
| Nam | はい、だいぶ<ruby>慣<rt>な</rt></ruby>れました。<br>*(Vâng, em quen kha khá rồi ạ.)* |
| Thức | じゃあナムさんは<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>。フンさんは<ruby>布<rt>ぬの</rt></ruby>わくをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy Nam phụ trách ván sàn. Hùng làm khung ngang nhé.)* |
| Hùng | <ruby>布<rt>ぬの</rt></ruby>わくは<ruby>俺<rt>おれ</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>や。<ruby>任<rt>まか</rt></ruby>しとき。<br>*(Khung ngang là sở trường của tao. Cứ giao đi.)* |
| Thức | <ruby>得意<rt>とくい</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたほうが<ruby>早<rt>はや</rt></ruby>い。<ruby>適材適所<rt>てきざいてきしょ</rt></ruby>でいこう。<br>*(Giao chỗ sở trường thì nhanh hơn. Bố trí đúng người đúng việc nào.)* |
| Nam | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em học được nhiều ạ.)* |

---

## Tình huống 11 — Công trường · 14:40, xử lý mưa bất ngờ

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>雨<rt>あめ</rt></ruby>が<ruby>降<rt>ふ</rt></ruby>ってきたで。どうする?<br>*(Thức, mưa rồi đấy. Tính sao?)* |
| Thức | <ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>一旦<rt>いったん</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>。<ruby>滑<rt>すべ</rt></ruby>ると<ruby>危険<rt>きけん</rt></ruby>や。<br>*(Việc trên cao tạm dừng. Trơn thì nguy hiểm.)* |
| Sasaki | <ruby>下<rt>した</rt></ruby>での<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えますか?<br>*(Chuyển sang việc dưới đất ạ?)* |
| Thức | そう。<ruby>資材<rt>しざい</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>と<ruby>明日<rt>あした</rt></ruby><ruby>分<rt>ぶん</rt></ruby>の<ruby>仕分<rt>しわ</rt></ruby>けに<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えよう。<br>*(Đúng. Chuyển sang dọn vật tư và phân loại phần mai.)* |
| Hùng | <ruby>無駄<rt>むだ</rt></ruby>にならんな。ええ<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えや。<br>*(Không phí thời gian. Chuyển hay đấy.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>や。<ruby>無理<rt>むり</rt></ruby>はせん。<br>*(An toàn là trên hết. Không ráng.)* |

---

## Tình huống 12 — Công trường · 15:00, báo 職長 việc đổi do mưa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>雨<rt>あめ</rt></ruby>で<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>中止<rt>ちゅうし</rt></ruby>しました。<br>*(Đốc công, vì mưa em đã dừng việc trên cao ạ.)* |
| Saito | そらしゃあない。<ruby>下<rt>した</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えたか?<br>*(Vậy thì đành. Chuyển sang việc dưới chưa?)* |
| Thức | はい、<ruby>資材<rt>しざい</rt></ruby><ruby>整理<rt>せいり</rt></ruby>と<ruby>仕分<rt>しわ</rt></ruby>けをしています。<br>*(Vâng, đang dọn và phân loại vật tư ạ.)* |
| Saito | <ruby>進捗<rt>しんちょく</rt></ruby>への<ruby>影響<rt>えいきょう</rt></ruby>は?<br>*(Ảnh hưởng tiến độ không?)* |
| Thức | <ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ほど<ruby>遅<rt>おく</rt></ruby>れますが、<ruby>明日<rt>あした</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>前倒<rt>まえだお</rt></ruby>しして<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>します。<br>*(Chậm khoảng 1 tiếng, nhưng em dồn trước bố trí mai để bù lại ạ.)* |
| Saito | <ruby>先<rt>さき</rt></ruby>まで<ruby>読<rt>よ</rt></ruby>めとるな。それでええ。<br>*(Nhìn trước được đấy. Vậy là được.)* |

---

## Tình huống 13 — Công trường · 15:40, kiểm tra việc Nam

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>仕分<rt>しわ</rt></ruby>けはどんな<ruby>感<rt>かん</rt></ruby>じ?<br>*(Nam, phân loại đến đâu rồi?)* |
| Nam | <ruby>建<rt>た</rt></ruby>てわくと<ruby>布<rt>ぬの</rt></ruby>わくは<ruby>分<rt>わ</rt></ruby>けました。<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>はこれからです。<br>*(Khung đứng và khung ngang chia rồi. Ván sàn sắp tới ạ.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby><ruby>使<rt>つか</rt></ruby>う<ruby>順<rt>じゅん</rt></ruby>に<ruby>並<rt>なら</rt></ruby>べてくれると<ruby>朝<rt>あさ</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になる。<br>*(Xếp theo thứ tự mai dùng thì sáng sẽ đỡ.)* |
| Nam | あ、なるほど。そうします。<br>*(À, ra vậy. Em làm thế ạ.)* |
| Thức | ええ<ruby>気<rt>き</rt></ruby>づきや。そういう<ruby>工夫<rt>くふう</rt></ruby>が<ruby>段取<rt>だんど</rt></ruby>りや。<br>*(Để ý tốt đấy. Cái mẹo đó chính là 段取り.)* |
| Nam | <ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Em ghi nhớ ạ.)* |

---

## Tình huống 14 — Công trường · 16:00, mưa tạnh, quyết định tiếp tục

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>雨<rt>あめ</rt></ruby>が<ruby>止<rt>や</rt></ruby>んだで。<ruby>足場<rt>あしば</rt></ruby><ruby>再開<rt>さいかい</rt></ruby>する?<br>*(Thức, tạnh mưa rồi. Làm lại giàn giáo không?)* |
| Thức | <ruby>足元<rt>あしもと</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させて。…まだ<ruby>濡<rt>ぬ</rt></ruby>れてて<ruby>滑<rt>すべ</rt></ruby>るな。<br>*(Để tôi kiểm tra mặt sàn. …Vẫn ướt trơn nhé.)* |
| Hùng | じゃあもう<ruby>少<rt>すこ</rt></ruby>し<ruby>下<rt>した</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>か。<br>*(Vậy việc dưới thêm chút nữa hả?)* |
| Thức | <ruby>30分<rt>さんじゅっぷん</rt></ruby><ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、<ruby>乾<rt>かわ</rt></ruby>いたら<ruby>低<rt>ひく</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>から<ruby>再開<rt>さいかい</rt></ruby>しよう。<br>*(Theo dõi 30 phút, khô thì làm lại từ chỗ thấp.)* |
| Hùng | <ruby>慎重<rt>しんちょう</rt></ruby>やな。それがええわ。<br>*(Thận trọng đấy. Vậy là tốt.)* |
| Thức | <ruby>焦<rt>あせ</rt></ruby>って<ruby>事故<rt>じこ</rt></ruby>ったら<ruby>意味<rt>いみ</rt></ruby>ないからな。<br>*(Vội mà tai nạn thì vô nghĩa.)* |

---

## Tình huống 15 — Công trường · 16:30, 現場監督 Ishikawa khen quyết định

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>雨<rt>あめ</rt></ruby>のとき<ruby>無理<rt>むり</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げなかったそうですね。<br>*(Anh Thức, nghe nói lúc mưa anh không ráng dựng giàn giáo.)* |
| Thức | はい、<ruby>滑<rt>すべ</rt></ruby>って<ruby>危険<rt>きけん</rt></ruby>だと<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Vâng, em đánh giá là trơn và nguy hiểm ạ.)* |
| Ishikawa | <ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>無理<rt>むり</rt></ruby>して<ruby>転落<rt>てんらく</rt></ruby>でもしたら<ruby>大事<rt>おおごと</rt></ruby>ですから。<br>*(Quyết định đúng. Ráng mà rơi xuống thì là chuyện lớn.)* |
| Thức | <ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>明日<rt>あした</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>します。<br>*(Tiến độ em sẽ bù lại vào mai ạ.)* |
| Ishikawa | <ruby>安全<rt>あんぜん</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>する<ruby>班長<rt>はんちょう</rt></ruby>は<ruby>信用<rt>しんよう</rt></ruby>できますよ。<br>*(班長 ưu tiên an toàn thì tin được đấy.)* |
| Thức | ありがとうございます。<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Em cảm ơn ạ. Đó là động lực cho em.)* |

---

## Tình huống 16 — Công trường · 16:50, tổng kết tiến độ với tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>はおつかれさまでした。<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Mọi người, hôm nay vất vả rồi. Tôi chia sẻ tiến độ.)* |
| Hùng | <ruby>雨<rt>あめ</rt></ruby>があったわりにはええペースやったな。<br>*(Có mưa mà nhịp vẫn ổn đấy.)* |
| Thức | はい、<ruby>3階<rt>さんかい</rt></ruby>は<ruby>完了<rt>かんりょう</rt></ruby>、<ruby>4階<rt>よんかい</rt></ruby>の<ruby>資材<rt>しざい</rt></ruby>も<ruby>上<rt>あ</rt></ruby>げ<ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng, tầng 3 xong, vật tư tầng 4 cũng đã đưa lên ạ.)* |
| Sasaki | <ruby>明日<rt>あした</rt></ruby>は<ruby>4階<rt>よんかい</rt></ruby>からすぐ<ruby>入<rt>はい</rt></ruby>れますね。<br>*(Mai vào ngay tầng 4 được nhỉ.)* |
| Thức | そう。<ruby>段取<rt>だんど</rt></ruby>りを<ruby>先<rt>さき</rt></ruby><ruby>回<rt>まわ</rt></ruby>しした<ruby>分<rt>ぶん</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になる。みんなのおかげや。<br>*(Đúng. Nhờ bố trí đi trước, mai sẽ đỡ. Nhờ mọi người cả.)* |
| Nam | <ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Mai em cũng cố gắng ạ.)* |

---

## Tình huống 17 — Văn phòng · 17:00, báo cáo cuối ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>3階<rt>さんかい</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Đốc công, báo cáo hôm nay. Đã xong tới tầng 3 ạ.)* |
| Saito | <ruby>雨<rt>あめ</rt></ruby>があったのに<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りか。<ruby>立派<rt>りっぱ</rt></ruby>や。<br>*(Có mưa mà vẫn đúng kế hoạch à. Giỏi đấy.)* |
| Thức | <ruby>雨<rt>あめ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>下<rt>した</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めたので<ruby>無駄<rt>むだ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ませんでした。<br>*(Lúc mưa em cho làm việc dưới nên không phí thời gian ạ.)* |
| Saito | <ruby>段取<rt>だんど</rt></ruby>りの<ruby>力<rt>ちから</rt></ruby>がついてきたな。<br>*(Năng lực bố trí lên tay rồi đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったことを<ruby>実践<rt>じっせん</rt></ruby>しました。<br>*(Em áp dụng điều đàn anh Kondo dạy ạ.)* |
| Saito | <ruby>素直<rt>すなお</rt></ruby>に<ruby>学<rt>まな</rt></ruby>ぶのがトゥックのええとこや。<br>*(Học hỏi cầu thị là điểm hay của Thức.)* |

---

## Tình huống 18 — Phòng thay đồ · 17:15, Hùng góp ý thẳng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>一<rt>ひと</rt></ruby>つ<ruby>言<rt>い</rt></ruby>うてええか?<br>*(Thức, nói một điều được không?)* |
| Thức | もちろん。なんでも<ruby>言<rt>い</rt></ruby>うてや。<br>*(Tất nhiên. Có gì cứ nói.)* |
| Hùng | <ruby>朝<rt>あさ</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>り、<ruby>少<rt>すこ</rt></ruby>し<ruby>早口<rt>はやくち</rt></ruby>やった。ナムが<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れてへんかも。<br>*(Bố trí buổi sáng hơi nhanh. Có khi Nam nghe không kịp.)* |
| Thức | あ、そうか。<ruby>気<rt>き</rt></ruby>をつける。<ruby>言<rt>い</rt></ruby>うてくれて<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(À, vậy à. Tôi sẽ chú ý. Cảm ơn đã nói thẳng.)* |
| Hùng | <ruby>班長<rt>はんちょう</rt></ruby>はゆっくり、はっきりが<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(班長 thì chậm, rõ là nhất.)* |
| Thức | <ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じるわ。<ruby>明日<rt>あした</rt></ruby>から<ruby>直<rt>なお</rt></ruby>す。<br>*(Tôi khắc cốt. Mai sửa.)* |

---

## Tình huống 19 — Công trường · 17:20, dặn Nam riêng

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>朝<rt>あさ</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>り、ちゃんと<ruby>聞<rt>き</rt></ruby>き<ruby>取<rt>と</rt></ruby>れた?<br>*(Nam, bố trí buổi sáng nghe rõ chứ?)* |
| Nam | …<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>速<rt>はや</rt></ruby>くて<ruby>分<rt>わ</rt></ruby>からない<ruby>所<rt>ところ</rt></ruby>がありました。<br>*(…Thật ra hơi nhanh nên có chỗ em không hiểu ạ.)* |
| Thức | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれてありがとう。<ruby>明日<rt>あした</rt></ruby>からゆっくり<ruby>言<rt>い</rt></ruby>う。<br>*(Cảm ơn em nói thật. Từ mai anh nói chậm lại.)* |
| Nam | すみません、<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>せばよかったです。<br>*(Em xin lỗi, lẽ ra em nên hỏi lại ạ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からんかったらその<ruby>場<rt>ば</rt></ruby>で<ruby>聞<rt>き</rt></ruby>いてええ。それも<ruby>大事<rt>だいじ</rt></ruby>な<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Không hiểu thì hỏi tại chỗ. Cái đó cũng là việc quan trọng.)* |
| Nam | はい、これからそうします。<br>*(Vâng, từ giờ em sẽ làm vậy ạ.)* |

---

## Tình huống 20 — Cổng công trường · 17:30, 親方 nhận xét

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>り、なかなかやったな。<br>*(Thức, bố trí hôm nay khá đấy.)* |
| Thức | ありがとうございます。まだ<ruby>指示<rt>しじ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いと<ruby>言<rt>い</rt></ruby>われました。<br>*(Em cảm ơn ạ. Em còn bị nói chỉ thị nhanh ạ.)* |
| Tanigawa | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>分<rt>わ</rt></ruby>かっとるならええ。<ruby>直<rt>なお</rt></ruby>せばええだけや。<br>*(Biết điểm yếu của mình là được. Chỉ việc sửa thôi.)* |
| Thức | はい、<ruby>明日<rt>あした</rt></ruby>からゆっくり、はっきり<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, từ mai em nói chậm, rõ ạ.)* |
| Tanigawa | <ruby>班<rt>はん</rt></ruby>がうまく<ruby>回<rt>まわ</rt></ruby>るかは<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>り<ruby>次第<rt>しだい</rt></ruby>や。<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Tổ chạy trơn hay không tùy bố trí của 班長. Nhờ đấy.)* |
| Thức | はい、<ruby>責任<rt>せきにん</rt></ruby><ruby>持<rt>も</rt></ruby>ってやります。<br>*(Vâng, em sẽ làm có trách nhiệm ạ.)* |

---

## Đọng lại

Tháng thứ ba làm 班長, Thức tự lập 段取り mỗi ngày: phân công đúng người đúng việc (適材適所), điều chỉnh linh hoạt khi vận chuyển chậm hoặc mưa bất ngờ, dồn việc trước để hôm sau đỡ. Thức học bài học chỉ huy quan trọng — chỉ thị phải chậm và rõ, và phải tạo không khí để đàn em dám hỏi lại khi chưa hiểu. 現場監督 Ishikawa và 親方 dần ghi nhận năng lực điều phối và ưu tiên an toàn của Thức.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 段取り | だんどり | Bố trí, sắp xếp trình tự công việc |
> | 適材適所 | てきざいてきしょ | Đúng người đúng việc |
> | 納期 | のうき | Hạn hoàn thành, kỳ hạn |
> | 運搬 | うんぱん | Vận chuyển |
> | 切り替え | きりかえ | Chuyển đổi (công việc) |
> | 前倒し | まえだおし | Dồn lên trước, làm sớm hơn |
> | 仕分け | しわけ | Phân loại |
> | 高所作業 | こうしょさぎょう | Việc trên cao |
> | 転落 | てんらく | Rơi ngã (từ trên cao) |
> | 進捗 | しんちょく | Tiến độ |
> | 建てわく | たてわく | Khung đứng (giàn giáo) |
> | 布わく | ぬのわく | Khung ngang (giàn giáo) |
> | 踏み板 | ふみいた | Ván sàn (giàn giáo) |
> | 台車 | だいしゃ | Xe đẩy |
> | 肝に銘じる | きもにめいじる | Khắc cốt ghi tâm |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000004, 800000036, NULL, 'markdown_book', 'T4. Chủ trì KY hằng ngày — Vấp khi hô trước nhóm (KY主催)', '# Sách kỹ năng đặc định xây dựng · T4. Chủ trì KY hằng ngày — Vấp khi hô trước nhóm (KY主催)

> **Mục tiêu nhân vật:** Thức lần đầu chủ trì KY (危険予知) hằng ngày của tổ, học cách dẫn dắt nhận diện nguy cơ, hô khẩu hiệu chỉ tay xác nhận (指差呼称), khắc phục khi vấp lúc hô trước nhóm.

---

## Bối cảnh

Tháng 7 năm 2029. Công trường yêu cầu mỗi tổ tự tổ chức **KY (危険予知活動)** trước khi vào việc — nhận diện nguy cơ, đặt mục tiêu an toàn, hô 指差呼称 (chỉ tay xác nhận bằng giọng). 親方 giao Thức chủ trì KY của tổ mình. Lần đầu hô trước nhóm Thức bị vấp, run, nói không trôi — phải tập lại. Chương tập trung mẫu câu dẫn dắt KY, đặt câu hỏi gợi mở, kết luận biện pháp.

---

## Tình huống 1 — Công trường · 7:45, 職長 giao Thức chủ trì KY

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今日<rt>きょう</rt></ruby>から<ruby>班<rt>はん</rt></ruby>のKYはお<ruby>前<rt>まえ</rt></ruby>が<ruby>仕切<rt>しき</rt></ruby>れ。<br>*(Thức, từ hôm nay KY của tổ cậu chủ trì.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>がですか…はい、やってみます。<br>*(Em ạ… Vâng, em thử ạ.)* |
| Saito | <ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>や。<ruby>今日<rt>きょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>危<rt>あぶ</rt></ruby>ない<ruby>所<rt>ところ</rt></ruby>をみんなで<ruby>出<rt>だ</rt></ruby>し<ruby>合<rt>あ</rt></ruby>うんや。<br>*(Là dự đoán nguy hiểm. Cả tổ cùng nêu chỗ nguy hiểm của việc hôm nay.)* |
| Thức | <ruby>進<rt>すす</rt></ruby>め<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cách tiến hành chỉ cho em được không ạ?)* |
| Saito | <ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>言<rt>い</rt></ruby>うて、「どんな<ruby>危険<rt>きけん</rt></ruby>がある?」と<ruby>聞<rt>き</rt></ruby>く。<ruby>意見<rt>いけん</rt></ruby>をまとめて<ruby>対策<rt>たいさく</rt></ruby>を<ruby>決<rt>き</rt></ruby>める。<br>*(Nêu tình huống, hỏi "có nguy hiểm gì?". Tổng hợp ý kiến rồi chốt biện pháp.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>緊張<rt>きんちょう</rt></ruby>しますが<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rồi. Em hồi hộp nhưng sẽ cố gắng ạ.)* |

---

## Tình huống 2 — Trước KY · 7:55, Thức nhờ Kondo dặn cách hô

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、KYの<ruby>司会<rt>しかい</rt></ruby>のコツはありますか?<br>*(Đàn anh Kondo, dẫn KY có mẹo gì không ạ?)* |
| Kondo | まず<ruby>声<rt>こえ</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく。<ruby>小<rt>ちい</rt></ruby>さい<ruby>声<rt>こえ</rt></ruby>やと<ruby>誰<rt>だれ</rt></ruby>も<ruby>聞<rt>き</rt></ruby>かへん。<br>*(Trước hết giọng to. Nhỏ thì chẳng ai nghe.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>ですね。<ruby>他<rt>ほか</rt></ruby>には?<br>*(Giọng nhỉ. Còn gì nữa ạ?)* |
| Kondo | <ruby>順番<rt>じゅんばん</rt></ruby><ruby>通<rt>どお</rt></ruby>りでええ。<ruby>状況<rt>じょうきょう</rt></ruby>、<ruby>危険<rt>きけん</rt></ruby>、<ruby>対策<rt>たいさく</rt></ruby>、<ruby>目標<rt>もくひょう</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>や。<br>*(Theo thứ tự là được. Tình huống, nguy hiểm, biện pháp, mục tiêu.)* |
| Thức | <ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になったらどうしましょう?<br>*(Lỡ đầu óc trống rỗng thì làm sao ạ?)* |
| Kondo | <ruby>紙<rt>かみ</rt></ruby>にメモして<ruby>見<rt>み</rt></ruby>ながらでええ。<ruby>慣<rt>な</rt></ruby>れたらいらんようになる。<br>*(Ghi giấy nhìn cũng được. Quen rồi sẽ không cần nữa.)* |

---

## Tình huống 3 — KY lần đầu · 8:00, Thức vấp khi mở đầu

| Vai | Lời thoại |
|---|---|
| Thức | えー、<ruby>今日<rt>きょう</rt></ruby>の…えっと、<ruby>作業<rt>さぎょう</rt></ruby>は…<ruby>4階<rt>よんかい</rt></ruby>の…<br>*(Ờ, hôm nay… ừm, công việc là… tầng 4 thì…)* |
| Hùng | (nhỏ) トゥック、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>けや。メモ<ruby>見<rt>み</rt></ruby>てええで。<br>*(Thức, bình tĩnh. Nhìn giấy được mà.)* |
| Thức | …すみません。もう<ruby>一度<rt>いちど</rt></ruby><ruby>言<rt>い</rt></ruby>います。<ruby>今日<rt>きょう</rt></ruby>は<ruby>4階<rt>よんかい</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>です。<br>*(…Xin lỗi. Em nói lại. Hôm nay là lắp giàn giáo tầng 4.)* |
| Sasaki | はい、<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Vâng, anh nói tiếp đi.)* |
| Thức | この<ruby>作業<rt>さぎょう</rt></ruby>で、どんな<ruby>危険<rt>きけん</rt></ruby>があると<ruby>思<rt>おも</rt></ruby>いますか?<br>*(Việc này, mọi người nghĩ có nguy hiểm gì?)* |
| Nam | <ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>からの<ruby>転落<rt>てんらく</rt></ruby>です。<br>*(Rơi ngã từ trên cao ạ.)* |

---

## Tình huống 4 — KY · 8:05, gom ý kiến nguy cơ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>転落<rt>てんらく</rt></ruby>ですね。<ruby>他<rt>ほか</rt></ruby>には<ruby>何<rt>なに</rt></ruby>がありますか?<br>*(Rơi ngã nhỉ. Còn gì nữa không?)* |
| Hùng | <ruby>工具<rt>こうぐ</rt></ruby>の<ruby>落下<rt>らっか</rt></ruby>や。<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>がおったら<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Rơi dụng cụ. Dưới có người thì nguy hiểm.)* |
| Sasaki | <ruby>単管<rt>たんかん</rt></ruby>を<ruby>持<rt>も</rt></ruby>つときに<ruby>挟<rt>はさ</rt></ruby>まれることもあります。<br>*(Lúc cầm ống đơn cũng có thể bị kẹp tay.)* |
| Thức | なるほど。<ruby>転落<rt>てんらく</rt></ruby>、<ruby>落下<rt>らっか</rt></ruby>、<ruby>挟<rt>はさ</rt></ruby>まれの<ruby>3<rt>みっ</rt></ruby>つですね。<br>*(Ra vậy. Rơi ngã, rơi vật, kẹp tay — ba cái nhỉ.)* |
| Nam | <ruby>暑<rt>あつ</rt></ruby>さで<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>も<ruby>心配<rt>しんぱい</rt></ruby>です。<br>*(Nóng nên cũng lo say nắng ạ.)* |
| Thức | ええ<ruby>指摘<rt>してき</rt></ruby>や。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>も<ruby>入<rt>い</rt></ruby>れよう。<br>*(Chỉ ra hay đấy. Thêm say nắng vào.)* |

---

## Tình huống 5 — KY · 8:10, chốt biện pháp

| Vai | Lời thoại |
|---|---|
| Thức | では<ruby>対策<rt>たいさく</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。<ruby>転落<rt>てんらく</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>はどうしますか?<br>*(Vậy chốt biện pháp. Phòng rơi ngã thế nào?)* |
| Sasaki | <ruby>安全帯<rt>あんぜんたい</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>掛<rt>か</rt></ruby>けます。<br>*(Nhất định móc dây an toàn ạ.)* |
| Thức | そうですね。<ruby>移動<rt>いどう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>も<ruby>外<rt>はず</rt></ruby>さない。<ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>は?<br>*(Đúng vậy. Đang di chuyển cũng không tháo. Phòng rơi vật thì?)* |
| Hùng | <ruby>工具<rt>こうぐ</rt></ruby>に<ruby>紐<rt>ひも</rt></ruby>をつける。<ruby>下<rt>した</rt></ruby>に<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す。<br>*(Buộc dây vào dụng cụ. Dưới đặt cấm vào.)* |
| Thức | はい。では<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>安全帯<rt>あんぜんたい</rt></ruby><ruby>常時<rt>じょうじ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>、<ruby>工具<rt>こうぐ</rt></ruby><ruby>落下<rt>らっか</rt></ruby>ゼロ」にします。<br>*(Vâng. Vậy mục tiêu hôm nay là "luôn dùng dây an toàn, không rơi dụng cụ".)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi ạ.)* |

---

## Tình huống 6 — KY · 8:13, lần đầu hô 指差呼称, Thức lúng túng

| Vai | Lời thoại |
|---|---|
| Thức | では<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>をします。<ruby>私<rt>わたし</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>いてください。…えっと、<ruby>安全帯<rt>あんぜんたい</rt></ruby>、よし!<br>*(Vậy hô chỉ tay xác nhận. Theo tôi nào. …Ừm, dây an toàn, tốt!)* |
| Tổ | (rời rạc) …<ruby>安全帯<rt>あんぜんたい</rt></ruby>、よし。<br>*(…Dây an toàn, tốt.)* |
| Kondo | (nhỏ) トゥック、もっと<ruby>気合<rt>きあい</rt></ruby>や。みんな<ruby>合<rt>あ</rt></ruby>わせられへんで。<br>*(Thức, khí thế hơn. Mọi người không bắt nhịp được.)* |
| Thức | …はい。すみません、もう<ruby>一回<rt>いっかい</rt></ruby>。<ruby>安全帯<rt>あんぜんたい</rt></ruby>ヨシ!<br>*(…Vâng. Xin lỗi, một lần nữa. Dây an toàn, TỐT!)* |
| Tổ | <ruby>安全帯<rt>あんぜんたい</rt></ruby>ヨシ!<br>*(Dây an toàn, TỐT!)* |
| Thức | <ruby>工具<rt>こうぐ</rt></ruby><ruby>紐<rt>ひも</rt></ruby>ヨシ!<ruby>足元<rt>あしもと</rt></ruby>ヨシ!<br>*(Dây dụng cụ, TỐT! Mặt sàn, TỐT!)* |

---

## Tình huống 7 — Sau KY · 8:20, Kondo góp ý riêng

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>初<rt>はじ</rt></ruby>めてにしては<ruby>悪<rt>わる</rt></ruby>うなかったで。<br>*(Thức, lần đầu mà không tệ đâu.)* |
| Thức | ありがとうございます。でも<ruby>最初<rt>さいしょ</rt></ruby><ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になりました。<br>*(Em cảm ơn ạ. Nhưng lúc đầu đầu óc em trống rỗng ạ.)* |
| Kondo | <ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>はそうや。<ruby>声<rt>こえ</rt></ruby>だけは<ruby>最初<rt>さいしょ</rt></ruby>からデカく<ruby>出<rt>だ</rt></ruby>せ。<br>*(Ai cũng vậy lúc đầu. Riêng giọng thì to ngay từ đầu.)* |
| Thức | <ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さいと<ruby>締<rt>し</rt></ruby>まらないですね。<br>*(Giọng nhỏ thì không nghiêm túc nhỉ.)* |
| Kondo | そうや。KYは<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちを<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>える<ruby>儀式<rt>ぎしき</rt></ruby>みたいなもんや。<br>*(Đúng. KY như nghi thức chuyển tâm thế vậy.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>はもっと<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>でやります。<br>*(Mai em sẽ hô to hơn ạ.)* |

---

## Tình huống 8 — Công trường · 9:00, áp dụng KY vào việc

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>4階<rt>よんかい</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がる<ruby>前<rt>まえ</rt></ruby>に<ruby>安全帯<rt>あんぜんたい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Nam, trước khi lên tầng 4 kiểm tra dây an toàn.)* |
| Nam | <ruby>安全帯<rt>あんぜんたい</rt></ruby>ヨシ!フックも<ruby>掛<rt>か</rt></ruby>けました。<br>*(Dây an toàn, TỐT! Móc cũng gắn rồi ạ.)* |
| Thức | ええ<ruby>声<rt>こえ</rt></ruby>や。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>紐<rt>ひも</rt></ruby>は?<br>*(Giọng tốt. Dây dụng cụ thì sao?)* |
| Nam | <ruby>工具<rt>こうぐ</rt></ruby><ruby>紐<rt>ひも</rt></ruby>ヨシ!<br>*(Dây dụng cụ, TỐT!)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>のKYで<ruby>決<rt>き</rt></ruby>めたことを<ruby>体<rt>からだ</rt></ruby>で<ruby>守<rt>まも</rt></ruby>る。それが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Cái chốt ở KY sáng thì làm bằng cả người. Cái đó mới quan trọng.)* |
| Nam | はい、<ruby>意識<rt>いしき</rt></ruby>します。<br>*(Vâng, em sẽ ý thức ạ.)* |

---

## Tình huống 9 — Công trường · 10:00, 現場監督 Ishikawa quan sát KY

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>朝<rt>あさ</rt></ruby>のKY、<ruby>見<rt>み</rt></ruby>させてもらいました。<br>*(Anh Thức, KY buổi sáng tôi đã quan sát.)* |
| Thức | <ruby>不<rt>ふ</rt></ruby><ruby>慣<rt>な</rt></ruby>れで<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Em còn chưa quen, em xin lỗi ạ.)* |
| Ishikawa | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>でもそうです。<ruby>危険<rt>きけん</rt></ruby>の<ruby>洗<rt>あら</rt></ruby>い<ruby>出<rt>だ</rt></ruby>しはしっかりできてました。<br>*(Lúc đầu ai cũng vậy. Việc rà soát nguy hiểm anh làm chắc đấy.)* |
| Thức | ありがとうございます。<ruby>声<rt>こえ</rt></ruby>の<ruby>出<rt>だ</rt></ruby>し<ruby>方<rt>かた</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Em cảm ơn ạ. Em sẽ luyện cách lấy giọng ạ.)* |
| Ishikawa | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>でここまでやれば<ruby>十分<rt>じゅうぶん</rt></ruby>です。<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(班長 người nước ngoài làm được tới đây là đủ. Cứ tiếp tục.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>改善<rt>かいぜん</rt></ruby>します。<br>*(Vâng, em sẽ cải thiện mỗi ngày ạ.)* |

---

## Tình huống 10 — Nghỉ trưa · 12:10, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, sáng nay em chủ trì KY lần đầu. Đứng trước anh em mà run quá, hô vấp. |
| Long | Bình thường mà. Anh hồi đầu cũng đứng đực ra. Em cứ ghi giấy ra nhìn mà đọc. |
| Thức | 近藤 cũng bảo vậy. Cái khó là phải hô to dứt khoát, em không quen. |
| Long | Tiếng hô là để anh em chuyển tâm thế. To, ngắn, dứt khoát. Tập ở nhà trước gương cũng được. |
| Thức | Vâng, để em tập. Em không muốn anh em coi nhẹ buổi KY chỉ vì em yếu. |
| Long | Em lo được vậy là ổn rồi. Vài hôm là quen tay quen miệng thôi. |

---

## Tình huống 11 — Công trường · 13:00, dạy Nam ý nghĩa 指差呼称

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>って<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>意味<rt>いみ</rt></ruby>がありますか?<br>*(Anh Thức, chỉ tay xác nhận thật sự có ý nghĩa ạ?)* |
| Thức | あるで。<ruby>指<rt>ゆび</rt></ruby><ruby>差<rt>さ</rt></ruby>して<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すと<ruby>確認<rt>かくにん</rt></ruby>ミスがぐっと<ruby>減<rt>へ</rt></ruby>る。<br>*(Có chứ. Chỉ tay và đọc thành tiếng thì lỗi xác nhận giảm hẳn.)* |
| Nam | どうしてですか?<br>*(Vì sao ạ?)* |
| Thức | <ruby>目<rt>め</rt></ruby>と<ruby>手<rt>て</rt></ruby>と<ruby>口<rt>くち</rt></ruby>を<ruby>使<rt>つか</rt></ruby>うから<ruby>意識<rt>いしき</rt></ruby>がはっきりするんや。「やったつもり」が<ruby>減<rt>へ</rt></ruby>る。<br>*(Vì dùng mắt, tay, miệng nên ý thức rõ ràng. Bớt "tưởng đã làm".)* |
| Nam | なるほど。これからしっかりやります。<br>*(Ra vậy. Từ giờ em làm nghiêm túc ạ.)* |
| Thức | <ruby>面倒<rt>めんどう</rt></ruby>くさがらんことや。<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るためやからな。<br>*(Đừng ngại phiền. Vì để bảo vệ tính mạng đấy.)* |

---

## Tình huống 12 — Công trường · 14:00, KY bổ sung khi đổi việc

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>変<rt>か</rt></ruby>わったので<ruby>追加<rt>ついか</rt></ruby>のKYをします。<br>*(Mọi người, việc đổi rồi nên làm KY bổ sung.)* |
| Sasaki | <ruby>解体<rt>かいたい</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>に<ruby>変<rt>か</rt></ruby>わりましたね。<br>*(Đổi sang việc tháo dỡ nhỉ.)* |
| Thức | はい。<ruby>解体<rt>かいたい</rt></ruby>は<ruby>部材<rt>ぶざい</rt></ruby>が<ruby>急<rt>きゅう</rt></ruby>に<ruby>外<rt>はず</rt></ruby>れて<ruby>落<rt>お</rt></ruby>ちる<ruby>危険<rt>きけん</rt></ruby>があります。<br>*(Vâng. Tháo dỡ có nguy cơ cấu kiện đột ngột tuột rơi.)* |
| Hùng | <ruby>下<rt>した</rt></ruby>の<ruby>立入<rt>たちいり</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>を<ruby>厳<rt>きび</rt></ruby>しくせなあかんな。<br>*(Phải siết hạn chế vào dưới chặt hơn nhỉ.)* |
| Thức | そうや。<ruby>合図<rt>あいず</rt></ruby>をしてから<ruby>外<rt>はず</rt></ruby>す。<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>おう。<ruby>解体<rt>かいたい</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>ヨシ!<br>*(Đúng. Ra hiệu rồi mới tháo. Hô nhắc nhau nào. Chú ý tháo dỡ, TỐT!)* |
| Tổ | <ruby>解体<rt>かいたい</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>ヨシ!<br>*(Chú ý tháo dỡ, TỐT!)* |

---

## Tình huống 13 — Công trường · 14:30, nhắc Hùng tuân thủ KY

| Vai | Lời thoại |
|---|---|
| Thức | フンさん、<ruby>今<rt>いま</rt></ruby><ruby>安全帯<rt>あんぜんたい</rt></ruby><ruby>外<rt>はず</rt></ruby>してへんかった?<br>*(Hùng, lúc nãy không tháo dây an toàn đấy chứ?)* |
| Hùng | あー…<ruby>移動<rt>いどう</rt></ruby>のとき<ruby>一瞬<rt>いっしゅん</rt></ruby><ruby>外<rt>はず</rt></ruby>したわ。<br>*(À… lúc di chuyển tháo một thoáng.)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>のKYで「<ruby>常時<rt>じょうじ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>」って<ruby>決<rt>き</rt></ruby>めたやろ。<ruby>一瞬<rt>いっしゅん</rt></ruby>でも<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(KY sáng chốt "luôn dùng" mà. Một thoáng cũng nguy hiểm.)* |
| Hùng | …すまん。<ruby>癖<rt>くせ</rt></ruby>でやってもうた。<ruby>気<rt>き</rt></ruby>をつけるわ。<br>*(…Xin lỗi. Quen tay làm vậy. Sẽ chú ý.)* |
| Thức | <ruby>同期<rt>どうき</rt></ruby>やからこそ<ruby>言<rt>い</rt></ruby>う。<ruby>事故<rt>じこ</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>も<ruby>悔<rt>く</rt></ruby>やむ。<br>*(Đồng kỳ nên tôi mới nói. Cậu mà tai nạn tôi cũng day dứt.)* |
| Hùng | <ruby>分<rt>わ</rt></ruby>かった。<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>言<rt>い</rt></ruby>うこと、ちゃんと<ruby>聞<rt>き</rt></ruby>くわ。<br>*(Hiểu rồi. Lời 班長, tao nghe đàng hoàng.)* |

---

## Tình huống 14 — Công trường · 15:00, phản hồi tốt từ Sasaki

| Vai | Lời thoại |
|---|---|
| Sasaki | トゥックさん、<ruby>午後<rt>ごご</rt></ruby>の<ruby>追加<rt>ついか</rt></ruby>KY、よかったですよ。<br>*(Anh Thức, KY bổ sung buổi chiều tốt đấy.)* |
| Thức | そうですか?<ruby>朝<rt>あさ</rt></ruby>よりは<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>けました。<br>*(Vậy ạ? Bình tĩnh hơn buổi sáng ạ.)* |
| Sasaki | <ruby>声<rt>こえ</rt></ruby>がはっきりして<ruby>分<rt>わ</rt></ruby>かりやすかったです。<br>*(Giọng rõ ràng nên dễ hiểu ạ.)* |
| Thức | ありがとうございます。<ruby>練習<rt>れんしゅう</rt></ruby>した<ruby>甲斐<rt>かい</rt></ruby>がありました。<br>*(Em cảm ơn ạ. Bõ công luyện ạ.)* |
| Sasaki | <ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>で<ruby>司会<rt>しかい</rt></ruby>するのは<ruby>大変<rt>たいへん</rt></ruby>でしょうけど、<ruby>頼<rt>たの</rt></ruby>もしいです。<br>*(Người nước ngoài mà dẫn chắc vất vả, nhưng đáng tin đấy.)* |
| Thức | <ruby>励<rt>はげ</rt></ruby>みになります。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Là động lực cho em ạ. Từ giờ em cũng cố gắng.)* |

---

## Tình huống 15 — Phòng nghỉ · 15:30, tự luyện hô KY

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>一人<rt>ひとり</rt></ruby>で<ruby>何<rt>なに</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しとんや?<br>*(Thức, một mình luyện gì đấy?)* |
| Thức | KYの<ruby>掛<rt>か</rt></ruby>け<ruby>声<rt>ごえ</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>しています。<ruby>声<rt>こえ</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>いので。<br>*(Em luyện hô KY ạ. Giọng em yếu ạ.)* |
| Kondo | <ruby>努力<rt>どりょく</rt></ruby><ruby>家<rt>か</rt></ruby>やな。<ruby>腹<rt>はら</rt></ruby>から<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すんや。<ruby>喉<rt>のど</rt></ruby>やない。<br>*(Chịu khó đấy. Lấy giọng từ bụng. Không phải cổ họng.)* |
| Thức | <ruby>腹<rt>はら</rt></ruby>からですか。やってみます。…<ruby>安全帯<rt>あんぜんたい</rt></ruby>ヨシ!<br>*(Từ bụng ạ. Em thử. …Dây an toàn, TỐT!)* |
| Kondo | お、さっきよりだいぶええで。それを<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>出<rt>だ</rt></ruby>せ。<br>*(Ồ, hơn lúc nãy nhiều đấy. Mai sáng hô như thế.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 16 — Công trường · 16:00, 職長 hỏi cảm nhận chủ trì

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>初<rt>はじ</rt></ruby>めてのKY<ruby>司会<rt>しかい</rt></ruby>、どうやった?<br>*(Thức, lần đầu dẫn KY thế nào?)* |
| Thức | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>朝<rt>あさ</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>で<ruby>声<rt>こえ</rt></ruby>が<ruby>出<rt>で</rt></ruby>ませんでした。<br>*(Thật ra buổi sáng em hồi hộp không ra tiếng ạ.)* |
| Saito | <ruby>午後<rt>ごご</rt></ruby>は<ruby>良<rt>よ</rt></ruby>くなっとったやないか。<ruby>成長<rt>せいちょう</rt></ruby><ruby>早<rt>はや</rt></ruby>いな。<br>*(Buổi chiều khá hơn còn gì. Tiến nhanh đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>声<rt>こえ</rt></ruby>の<ruby>出<rt>だ</rt></ruby>し<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Em được đàn anh Kondo dạy cách lấy giọng ạ.)* |
| Saito | KYは<ruby>形<rt>かたち</rt></ruby>やない、<ruby>中身<rt>なかみ</rt></ruby>や。<ruby>危険<rt>きけん</rt></ruby>を<ruby>本気<rt>ほんき</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えとるのは<ruby>伝<rt>つた</rt></ruby>わっとる。<br>*(KY không phải hình thức, là nội dung. Cậu suy nghĩ nghiêm túc về nguy hiểm thì truyền được.)* |
| Thức | ありがとうございます。<ruby>続<rt>つづ</rt></ruby>けて<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Em cảm ơn ạ. Em sẽ luyện tiếp.)* |

---

## Tình huống 17 — Công trường · 16:30, dặn tổ chuẩn bị KY mai

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>明日<rt>あした</rt></ruby>は<ruby>4階<rt>よんかい</rt></ruby>の<ruby>完成<rt>かんせい</rt></ruby>と<ruby>5階<rt>ごかい</rt></ruby><ruby>着手<rt>ちゃくしゅ</rt></ruby>です。<br>*(Mọi người, mai hoàn thiện tầng 4 và bắt đầu tầng 5.)* |
| Sasaki | <ruby>5階<rt>ごかい</rt></ruby>は<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなりそうですね。<br>*(Tầng 5 chắc gió mạnh hơn nhỉ.)* |
| Thức | そう。<ruby>明日<rt>あした</rt></ruby>のKYでは<ruby>強風<rt>きょうふう</rt></ruby>を<ruby>議題<rt>ぎだい</rt></ruby>にしましょう。<br>*(Đúng. KY mai ta lấy gió mạnh làm chủ đề.)* |
| Nam | <ruby>風<rt>かぜ</rt></ruby>のときは<ruby>何<rt>なに</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>しますか?<br>*(Lúc gió thì chú ý gì ạ?)* |
| Thức | シートのあおりや<ruby>資材<rt>しざい</rt></ruby>の<ruby>飛<rt>と</rt></ruby>びや。<ruby>明日<rt>あした</rt></ruby>みんなで<ruby>出<rt>だ</rt></ruby>し<ruby>合<rt>あ</rt></ruby>おう。<br>*(Bạt bị giật và vật tư bị bay. Mai cùng nêu nhé.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>考<rt>かんが</rt></ruby>えてくるわ。<br>*(Rõ. Tao nghĩ trước.)* |

---

## Tình huống 18 — Văn phòng · 16:50, báo cáo cuối ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>4階<rt>よんかい</rt></ruby>は<ruby>9割<rt>きゅうわり</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Đốc công, báo cáo hôm nay. Tầng 4 xong 90% ạ.)* |
| Saito | <ruby>事故<rt>じこ</rt></ruby>やヒヤリは?<br>*(Tai nạn hay suýt nguy hiểm thì sao?)* |
| Thức | ありませんでした。<ruby>解体<rt>かいたい</rt></ruby>に<ruby>変<rt>か</rt></ruby>わったとき<ruby>追加<rt>ついか</rt></ruby>KYをしました。<br>*(Không có ạ. Lúc đổi sang tháo dỡ em đã làm KY bổ sung.)* |
| Saito | <ruby>作業<rt>さぎょう</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>のたびにKYをやるのは<ruby>正<rt>ただ</rt></ruby>しい。<br>*(Mỗi lần đổi việc làm KY là đúng.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>は<ruby>強風<rt>きょうふう</rt></ruby>を<ruby>議題<rt>ぎだい</rt></ruby>にする<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Mai em dự định lấy gió mạnh làm chủ đề ạ.)* |
| Saito | <ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んどるな。ええ<ruby>班長<rt>はんちょう</rt></ruby>になってきた。<br>*(Nhìn trước được đấy. Thành 班長 tốt rồi.)* |

---

## Tình huống 19 — Phòng thay đồ · 17:10, Nam cảm ơn Thức

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>、よく<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Anh Thức, chuyện chỉ tay xác nhận hôm nay em hiểu rõ ạ.)* |
| Thức | よかった。<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かると<ruby>身<rt>み</rt></ruby>が<ruby>入<rt>はい</rt></ruby>るやろ。<br>*(Tốt. Hiểu ý nghĩa thì làm có hồn hơn nhỉ.)* |
| Nam | はい。<ruby>前<rt>まえ</rt></ruby>は<ruby>形<rt>かたち</rt></ruby>だけやってました。<br>*(Vâng. Trước em chỉ làm hình thức ạ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>実習生<rt>じっしゅうせい</rt></ruby>のときはそうやった。<ruby>意味<rt>いみ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かるとちゃんとやれる。<br>*(Hồi thực tập sinh anh cũng vậy. Hiểu ý nghĩa thì làm tử tế được.)* |
| Nam | トゥックさんが<ruby>説明<rt>せつめい</rt></ruby>してくれるので<ruby>助<rt>たす</rt></ruby>かります。<br>*(Anh Thức giải thích nên em được nhờ ạ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からんことはいつでも<ruby>聞<rt>き</rt></ruby>いてや。<br>*(Có gì không hiểu cứ hỏi bất cứ lúc nào.)* |

---

## Tình huống 20 — Cổng công trường · 17:25, 親方 động viên

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>初<rt>はじ</rt></ruby>KY、<ruby>声<rt>こえ</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さかったらしいな。<br>*(Thức, KY lần đầu nghe nói giọng nhỏ.)* |
| Thức | はい、<ruby>恥<rt>は</rt></ruby>ずかしかったです。でも<ruby>午後<rt>ごご</rt></ruby>は<ruby>練習<rt>れんしゅう</rt></ruby>して<ruby>直<rt>なお</rt></ruby>しました。<br>*(Vâng, em xấu hổ ạ. Nhưng buổi chiều em luyện và sửa rồi ạ.)* |
| Tanigawa | それでええ。<ruby>失敗<rt>しっぱい</rt></ruby>してすぐ<ruby>直<rt>なお</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い。<br>*(Vậy là được. Sai rồi sửa ngay là mạnh nhất.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>は<ruby>朝<rt>あさ</rt></ruby>から<ruby>大<rt>おお</rt></ruby>きな<ruby>声<rt>こえ</rt></ruby>でやります。<br>*(Mai em sẽ hô to ngay từ sáng ạ.)* |
| Tanigawa | KYは<ruby>班<rt>はん</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>仕事<rt>しごと</rt></ruby>や。<ruby>軽<rt>かる</rt></ruby>く<ruby>見<rt>み</rt></ruby>たらあかんで。<br>*(KY là việc bảo vệ mạng cả tổ. Đừng coi nhẹ đấy.)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em khắc cốt ạ.)* |

---

## Đọng lại

Lần đầu chủ trì KY, Thức vấp ngay câu mở đầu, hô 指差呼称 yếu khiến cả tổ không bắt nhịp. Nhưng Thức không bỏ cuộc: nhờ Kondo dạy cách lấy giọng từ bụng, tự luyện riêng, buổi chiều cải thiện rõ rệt. Thức học được rằng KY không phải hình thức mà là việc bảo vệ tính mạng cả tổ — phải hô to, dứt khoát, và làm KY bổ sung mỗi khi đổi việc. 現場監督 Ishikawa và 親方 ghi nhận tinh thần sửa lỗi nhanh của Thức.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 危険予知 | きけんよち | Dự đoán nguy hiểm (KY) |
> | 指差呼称 | ゆびさこしょう | Chỉ tay xác nhận bằng giọng |
> | 司会 | しかい | Người dẫn, chủ trì |
> | 洗い出し | あらいだし | Rà soát, liệt kê ra |
> | 対策 | たいさく | Biện pháp đối phó |
> | 安全帯 | あんぜんたい | Dây an toàn |
> | 立入禁止 | たちいりきんし | Cấm vào |
> | 解体 | かいたい | Tháo dỡ |
> | 部材 | ぶざい | Cấu kiện, bộ phận vật liệu |
> | 落下 | らっか | Rơi (vật) |
> | 挟まれ | はさまれ | Bị kẹp |
> | 熱中症 | ねっちゅうしょう | Say nắng |
> | 強風 | きょうふう | Gió mạnh |
> | 議題 | ぎだい | Chủ đề (bàn) |
> | 常時使用 | じょうじしよう | Luôn sử dụng |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000005, 800000036, NULL, 'markdown_book', 'T5. Đọc 施工図 phức tạp — Đối chiếu kích thước với 現場監督 (施工図・寸法確認)', '# Sách kỹ năng đặc định xây dựng · T5. Đọc 施工図 phức tạp — Đối chiếu kích thước với 現場監督 (施工図・寸法確認)

> **Mục tiêu nhân vật:** Thức học đọc bản vẽ thi công (施工図) phức tạp, đối chiếu 寸法 (kích thước) thực tế với bản vẽ, trao đổi nghiệp vụ với 現場監督 Ishikawa, đề xuất khi phát hiện sai lệch.

---

## Bối cảnh

Tháng 8 năm 2029. Công trình bước vào giai đoạn giàn giáo phải khớp chặt với kết cấu thực tế (cửa sổ, mái đua, vị trí thiết bị). Thức phải đọc 施工図 chi tiết, đối chiếu 寸法 với hiện trường, trao đổi trực tiếp với 現場監督 Ishikawa khi có sai lệch. Đây là chương Ishikawa dần công nhận năng lực Thức. Chương tập trung mẫu câu đọc bản vẽ, xác nhận kích thước, đề xuất chỉnh sửa lễ phép nhưng chủ động.

---

## Tình huống 1 — Văn phòng công trường · 8:00, nhận 施工図 mới

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>新<rt>あたら</rt></ruby>しい<ruby>施工図<rt>せこうず</rt></ruby>や。<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>形<rt>かたち</rt></ruby>が<ruby>複雑<rt>ふくざつ</rt></ruby>やぞ。<br>*(Thức, bản vẽ thi công mới. Mặt Nam hình phức tạp đấy.)* |
| Thức | はい。<ruby>確認<rt>かくにん</rt></ruby>させてください。…<ruby>出<rt>で</rt></ruby><ruby>入<rt>い</rt></ruby>りが<ruby>多<rt>おお</rt></ruby>いですね。<br>*(Vâng. Cho em xem ạ. …Lồi lõm nhiều nhỉ.)* |
| Saito | そうや。バルコニーと<ruby>庇<rt>ひさし</rt></ruby>がある。<ruby>足場<rt>あしば</rt></ruby>を<ruby>逃<rt>に</rt></ruby>がさなあかん。<br>*(Đúng. Có ban công và mái đua. Phải né giàn giáo.)* |
| Thức | <ruby>庇<rt>ひさし</rt></ruby>の<ruby>出<rt>で</rt></ruby><ruby>寸法<rt>すんぽう</rt></ruby>はどこに<ruby>書<rt>か</rt></ruby>いてありますか?<br>*(Kích thước nhô của mái đua ghi ở đâu ạ?)* |
| Saito | この<ruby>断面<rt>だんめん</rt></ruby><ruby>図<rt>ず</rt></ruby>や。<ruby>700<rt>ななひゃく</rt></ruby>ミリ<ruby>出<rt>で</rt></ruby>とる。<br>*(Bản vẽ mặt cắt này. Nhô ra 700 mm.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>現場<rt>げんば</rt></ruby>で<ruby>実<rt>じっ</rt></ruby><ruby>寸<rt>すん</rt></ruby>を<ruby>測<rt>はか</rt></ruby>って<ruby>照合<rt>しょうごう</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ đo kích thước thực tế đối chiếu ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:15, hỏi Kondo cách đọc 断面図

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、この<ruby>断面<rt>だんめん</rt></ruby><ruby>図<rt>ず</rt></ruby>の<ruby>見方<rt>みかた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Đàn anh Kondo, chỉ em cách đọc bản vẽ mặt cắt này ạ.)* |
| Kondo | これは<ruby>建物<rt>たてもの</rt></ruby>を<ruby>横<rt>よこ</rt></ruby>から<ruby>切<rt>き</rt></ruby>った<ruby>図<rt>ず</rt></ruby>や。<ruby>高<rt>たか</rt></ruby>さ<ruby>関係<rt>かんけい</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かる。<br>*(Đây là hình cắt ngang tòa nhà. Biết quan hệ chiều cao.)* |
| Thức | この<ruby>数字<rt>すうじ</rt></ruby>はGLからの<ruby>高<rt>たか</rt></ruby>さですか?<br>*(Số này là chiều cao tính từ cốt nền GL ạ?)* |
| Kondo | そうや。GLは<ruby>地盤<rt>じばん</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さや。そこから<ruby>各階<rt>かくかい</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さを<ruby>読<rt>よ</rt></ruby>む。<br>*(Đúng. GL là cốt mặt đất. Từ đó đọc chiều cao từng tầng.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>の<ruby>段<rt>だん</rt></ruby><ruby>取<rt>と</rt></ruby>りはこの<ruby>階高<rt>かいだか</rt></ruby>を<ruby>基準<rt>きじゅん</rt></ruby>にするんですね。<br>*(Bố trí tầng giàn giáo lấy chiều cao tầng này làm chuẩn nhỉ.)* |
| Kondo | その<ruby>通<rt>とお</rt></ruby>り。よう<ruby>飲<rt>の</rt></ruby>み<ruby>込<rt>こ</rt></ruby>めとるな。<br>*(Đúng vậy. Tiếp thu nhanh đấy.)* |

---

## Tình huống 3 — Công trường · 9:00, đo kích thước thực tế

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、コンベックス<ruby>持<rt>も</rt></ruby>って。<ruby>庇<rt>ひさし</rt></ruby>の<ruby>出<rt>で</rt></ruby>を<ruby>測<rt>はか</rt></ruby>る。<br>*(Nam, cầm thước cuộn. Đo độ nhô mái đua.)* |
| Nam | はい。どこから<ruby>測<rt>はか</rt></ruby>りますか?<br>*(Vâng. Đo từ đâu ạ?)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby><ruby>面<rt>めん</rt></ruby>から<ruby>庇<rt>ひさし</rt></ruby>の<ruby>先端<rt>せんたん</rt></ruby>までや。まっすぐ<ruby>水平<rt>すいへい</rt></ruby>にな。<br>*(Từ mặt tường tới mép mái đua. Thẳng và ngang nhé.)* |
| Nam | <ruby>測<rt>はか</rt></ruby>りました。<ruby>720<rt>ななひゃくにじゅう</rt></ruby>ミリです。<br>*(Đo rồi ạ. 720 mm ạ.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>は<ruby>700<rt>ななひゃく</rt></ruby>ミリ。<ruby>20<rt>にじゅう</rt></ruby>ミリ<ruby>差<rt>さ</rt></ruby>があるな。もう<ruby>一度<rt>いちど</rt></ruby><ruby>測<rt>はか</rt></ruby>ろう。<br>*(Bản vẽ 700 mm. Lệch 20 mm. Đo lại lần nữa nào.)* |
| Nam | はい。…やはり<ruby>720<rt>ななひゃくにじゅう</rt></ruby>ミリです。<br>*(Vâng. …Vẫn 720 mm ạ.)* |

---

## Tình huống 4 — Công trường · 9:20, xác nhận lại với Kondo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>庇<rt>ひさし</rt></ruby>の<ruby>実<rt>じっ</rt></ruby><ruby>寸<rt>すん</rt></ruby>が<ruby>図面<rt>ずめん</rt></ruby>と<ruby>20<rt>にじゅう</rt></ruby>ミリ<ruby>違<rt>ちが</rt></ruby>います。<br>*(Đàn anh Kondo, kích thước thực tế mái đua lệch bản vẽ 20 mm ạ.)* |
| Kondo | ほんまか。<ruby>足場<rt>あしば</rt></ruby>がぶつかる<ruby>可能性<rt>かのうせい</rt></ruby>あるな。<br>*(Thật à. Giàn giáo có khả năng đụng đấy.)* |
| Thức | はい。このままだと<ruby>布<rt>ぬの</rt></ruby>わくが<ruby>庇<rt>ひさし</rt></ruby>に<ruby>当<rt>あ</rt></ruby>たります。<br>*(Vâng. Cứ thế này thì khung ngang chạm mái đua ạ.)* |
| Kondo | <ruby>20<rt>にじゅう</rt></ruby>ミリくらいなら<ruby>逃<rt>に</rt></ruby>がせるけど、<ruby>監督<rt>かんとく</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>したほうがええ。<br>*(Tầm 20 mm thì né được, nhưng nên hỏi giám sát.)* |
| Thức | はい、<ruby>石川<rt>いしかわ</rt></ruby>さんに<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em báo cáo anh Ishikawa ạ.)* |
| Kondo | それがええ。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>せんのは<ruby>正<rt>ただ</rt></ruby>しい。<br>*(Vậy là đúng. Không tự ý quyết là chuẩn.)* |

---

## Tình huống 5 — Văn phòng công trường · 9:40, báo 現場監督 Ishikawa sai lệch

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>庇<rt>ひさし</rt></ruby><ruby>寸法<rt>すんぽう</rt></ruby>のことです。<br>*(Anh Ishikawa, em có báo cáo. Về kích thước mái đua mặt Nam ạ.)* |
| Ishikawa | <ruby>庇<rt>ひさし</rt></ruby>?<ruby>何<rt>なに</rt></ruby>か<ruby>問題<rt>もんだい</rt></ruby>が?<br>*(Mái đua? Có vấn đề gì?)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>では<ruby>出<rt>で</rt></ruby><ruby>700<rt>ななひゃく</rt></ruby>ミリですが、<ruby>実<rt>じっ</rt></ruby><ruby>測<rt>そく</rt></ruby>は<ruby>720<rt>ななひゃくにじゅう</rt></ruby>ミリでした。<ruby>2回<rt>にかい</rt></ruby><ruby>測<rt>はか</rt></ruby>りました。<br>*(Bản vẽ nhô 700 mm nhưng đo thực tế 720 mm. Em đo 2 lần ạ.)* |
| Ishikawa | <ruby>20<rt>にじゅう</rt></ruby>ミリか…よう<ruby>気<rt>き</rt></ruby>づいたな。<ruby>足場<rt>あしば</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>するか?<br>*(20 mm à… để ý kỹ đấy. Ảnh hưởng giàn giáo không?)* |
| Thức | このままだと<ruby>布<rt>ぬの</rt></ruby>わくが<ruby>庇<rt>ひさし</rt></ruby>に<ruby>干渉<rt>かんしょう</rt></ruby>します。<ruby>離<rt>はな</rt></ruby>れを<ruby>20<rt>にじゅう</rt></ruby>ミリ<ruby>広<rt>ひろ</rt></ruby>げる<ruby>提案<rt>ていあん</rt></ruby>です。<br>*(Cứ thế này khung ngang sẽ vướng mái đua. Em đề xuất nới khoảng cách thêm 20 mm ạ.)* |
| Ishikawa | …ちゃんと<ruby>対策<rt>たいさく</rt></ruby>まで<ruby>考<rt>かんが</rt></ruby>えとるな。それでええ。<ruby>図面<rt>ずめん</rt></ruby>に<ruby>赤<rt>あか</rt></ruby><ruby>書<rt>が</rt></ruby>きしとく。<br>*(…Nghĩ tới cả biện pháp à. Vậy được. Tôi ghi chú đỏ vào bản vẽ.)* |

---

## Tình huống 6 — Công trường · 10:10, truyền đạt điều chỉnh cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>、<ruby>壁<rt>かべ</rt></ruby>からの<ruby>離<rt>はな</rt></ruby>れを<ruby>20<rt>にじゅう</rt></ruby>ミリ<ruby>広<rt>ひろ</rt></ruby>げます。<br>*(Mọi người, giàn giáo mặt Nam, nới khoảng cách từ tường thêm 20 mm.)* |
| Sasaki | <ruby>庇<rt>ひさし</rt></ruby>を<ruby>逃<rt>に</rt></ruby>がすためですね。<br>*(Để né mái đua nhỉ.)* |
| Thức | そう。<ruby>監督<rt>かんとく</rt></ruby>の<ruby>了解<rt>りょうかい</rt></ruby>も<ruby>取<rt>と</rt></ruby>りました。<ruby>勝手<rt>かって</rt></ruby>には<ruby>変<rt>か</rt></ruby>えてません。<br>*(Đúng. Đã xin giám sát đồng ý. Không tự ý đổi.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>離<rt>はな</rt></ruby>れの<ruby>確認<rt>かくにん</rt></ruby>はどうする?<br>*(Rõ. Kiểm khoảng cách thế nào?)* |
| Thức | <ruby>各<rt>かく</rt></ruby><ruby>段<rt>だん</rt></ruby>で<ruby>1回<rt>いっかい</rt></ruby>コンベックスで<ruby>測<rt>はか</rt></ruby>る。バラつきを<ruby>出<rt>だ</rt></ruby>さんように。<br>*(Mỗi tầng đo thước cuộn 1 lần. Đừng để sai số.)* |
| Hùng | <ruby>分<rt>わ</rt></ruby>かった。<ruby>丁寧<rt>ていねい</rt></ruby>にやるわ。<br>*(Hiểu rồi. Làm cẩn thận.)* |

---

## Tình huống 7 — Công trường · 10:40, đọc 平面図 vị trí cửa sổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>佐々木<rt>ささき</rt></ruby>さん、この<ruby>平面<rt>へいめん</rt></ruby><ruby>図<rt>ず</rt></ruby>、<ruby>窓<rt>まど</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>したいです。<br>*(Sasaki, bản vẽ mặt bằng này, em muốn xác nhận vị trí cửa sổ ạ.)* |
| Sasaki | <ruby>窓<rt>まど</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby>の<ruby>建<rt>た</rt></ruby>てわくと<ruby>重<rt>かさ</rt></ruby>なるとまずいですね。<br>*(Cửa sổ trùng khung đứng giàn giáo thì kẹt nhỉ.)* |
| Thức | はい。<ruby>窓<rt>まど</rt></ruby>の<ruby>真<rt>ま</rt></ruby><ruby>正面<rt>しょうめん</rt></ruby>に<ruby>柱<rt>はしら</rt></ruby>が<ruby>来<rt>こ</rt></ruby>ないように<ruby>割<rt>わ</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けを<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Vâng. Em điều chỉnh chia khoảng để cột không nằm ngay trước cửa sổ ạ.)* |
| Sasaki | <ruby>割<rt>わ</rt></ruby><ruby>付<rt>つ</rt></ruby>けの<ruby>基準<rt>きじゅん</rt></ruby><ruby>点<rt>てん</rt></ruby>はどこにします?<br>*(Lấy điểm chuẩn chia khoảng ở đâu?)* |
| Thức | <ruby>南西<rt>なんせい</rt></ruby>の<ruby>角<rt>かど</rt></ruby>を<ruby>基準<rt>きじゅん</rt></ruby>にして<ruby>右<rt>みぎ</rt></ruby>へ<ruby>振<rt>ふ</rt></ruby>っていきます。<br>*(Lấy góc Tây Nam làm chuẩn rồi triển khai sang phải ạ.)* |
| Sasaki | <ruby>分<rt>わ</rt></ruby>かりました。それなら<ruby>窓<rt>まど</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けられます。<br>*(Em hiểu rồi. Vậy thì né được cửa sổ.)* |

---

## Tình huống 8 — Công trường · 11:00, 現場監督 Ishikawa kiểm tra割付

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>割<rt>わ</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けはどうしましたか?<br>*(Anh Thức, chia khoảng mặt Nam làm thế nào?)* |
| Thức | <ruby>窓<rt>まど</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>柱<rt>はしら</rt></ruby>が<ruby>来<rt>こ</rt></ruby>ないよう、<ruby>南西<rt>なんせい</rt></ruby><ruby>角<rt>かど</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>で<ruby>振<rt>ふ</rt></ruby>りました。<br>*(Để cột không nằm trước cửa sổ, em triển khai từ chuẩn góc Tây Nam ạ.)* |
| Ishikawa | なるほど。<ruby>窓<rt>まど</rt></ruby>の<ruby>開閉<rt>かいへい</rt></ruby>や<ruby>後<rt>あと</rt></ruby>の<ruby>工事<rt>こうじ</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えたんですか?<br>*(Ra vậy. Có tính cả đóng mở cửa và việc sau này không?)* |
| Thức | はい。<ruby>後<rt>あと</rt></ruby>からサッシ<ruby>取付<rt>とりつけ</rt></ruby>があるので<ruby>作業<rt>さぎょう</rt></ruby><ruby>空間<rt>くうかん</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>しました。<br>*(Vâng. Sau còn lắp khung cửa nên em chừa không gian thao tác ạ.)* |
| Ishikawa | <ruby>先<rt>さき</rt></ruby>の<ruby>工程<rt>こうてい</rt></ruby>まで<ruby>読<rt>よ</rt></ruby>んどる。…<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>見<rt>み</rt></ruby><ruby>直<rt>なお</rt></ruby>しましたよ。<br>*(Nghĩ tới cả công đoạn sau. …Thật ra tôi nhìn nhận lại rồi.)* |
| Thức | ありがとうございます。<ruby>他<rt>ほか</rt></ruby>の<ruby>業者<rt>ぎょうしゃ</rt></ruby>さんにも<ruby>迷惑<rt>めいわく</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けたくないので。<br>*(Em cảm ơn ạ. Vì em không muốn gây phiền cho nhà thầu khác ạ.)* |

---

## Tình huống 9 — Nghỉ trưa · 12:15, tâm sự với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, sáng nay 石川 nhìn mày khác hẳn. Lúc đầu ông ấy hơi coi thường người mình mà. |
| Thức | Ừ. Tao chỉ làm đúng việc thôi: đo kỹ, phát hiện lệch thì báo, không tự ý sửa. |
| Hùng | Cái vụ lệch 20 mm mày phát hiện đấy, người Nhật cũng dễ bỏ qua. |
| Thức | Tao sợ nhất là làm xong rồi vướng mái đua, đập đi làm lại thì mất uy tổ mình. |
| Hùng | Mày nghĩ xa thật. Tao thấy 班長 phải vậy mới được anh em tin. |
| Thức | Ừ. Đọc bản vẽ giỏi hơn nữa thì 監督 mới hết nghi. Tao còn phải học nhiều. |

---

## Tình huống 10 — Công trường · 13:00, hướng dẫn Nam đọc ký hiệu bản vẽ

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>図面<rt>ずめん</rt></ruby>のこの<ruby>記号<rt>きごう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Thức, ký hiệu này trên bản vẽ là gì ạ?)* |
| Thức | これは<ruby>通<rt>とお</rt></ruby>り<ruby>芯<rt>しん</rt></ruby>や。<ruby>建物<rt>たてもの</rt></ruby>の<ruby>基準<rt>きじゅん</rt></ruby>の<ruby>線<rt>せん</rt></ruby>のことや。<br>*(Đây là trục định vị. Đường chuẩn của tòa nhà.)* |
| Nam | この「X1」「Y1」はどういう<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Cái "X1" "Y1" này nghĩa là gì ạ?)* |
| Thức | <ruby>縦<rt>たて</rt></ruby>と<ruby>横<rt>よこ</rt></ruby>の<ruby>通<rt>とお</rt></ruby>り<ruby>芯<rt>しん</rt></ruby>の<ruby>番号<rt>ばんごう</rt></ruby>や。X1とY1の<ruby>交点<rt>こうてん</rt></ruby>が<ruby>基準<rt>きじゅん</rt></ruby><ruby>点<rt>てん</rt></ruby>になる。<br>*(Số trục định vị dọc và ngang. Giao điểm X1 và Y1 là điểm chuẩn.)* |
| Nam | なるほど。<ruby>位置<rt>いち</rt></ruby>を<ruby>言<rt>い</rt></ruby>うときに<ruby>使<rt>つか</rt></ruby>うんですね。<br>*(Ra vậy. Dùng khi nói vị trí nhỉ.)* |
| Thức | そう。「X3<ruby>通<rt>とお</rt></ruby>り」と<ruby>言<rt>い</rt></ruby>えば<ruby>誰<rt>だれ</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じ<ruby>場所<rt>ばしょ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かる。<ruby>覚<rt>おぼ</rt></ruby>えとき。<br>*(Đúng. Nói "trục X3" thì ai cũng biết cùng một chỗ. Nhớ nhé.)* |

---

## Tình huống 11 — Công trường · 13:40, phát hiện sai lệch vị trí thiết bị

| Vai | Lời thoại |
|---|---|
| Sasaki | トゥックさん、<ruby>室外機<rt>しつがいき</rt></ruby>の<ruby>架台<rt>かだい</rt></ruby><ruby>位置<rt>いち</rt></ruby>が<ruby>図面<rt>ずめん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>う<ruby>気<rt>き</rt></ruby>がします。<br>*(Anh Thức, vị trí giá cục nóng có vẻ khác bản vẽ ạ.)* |
| Thức | どこが<ruby>違<rt>ちが</rt></ruby>う?<ruby>図面<rt>ずめん</rt></ruby>と<ruby>照<rt>て</rt></ruby>らし<ruby>合<rt>あ</rt></ruby>わせよう。<br>*(Khác chỗ nào? Đối chiếu với bản vẽ nào.)* |
| Sasaki | <ruby>図面<rt>ずめん</rt></ruby>はX5<ruby>通<rt>とお</rt></ruby>りですが、<ruby>現場<rt>げんば</rt></ruby>はX5より<ruby>300<rt>さんびゃく</rt></ruby>ミリ<ruby>右<rt>みぎ</rt></ruby>です。<br>*(Bản vẽ là trục X5 nhưng hiện trường lệch phải X5 300 mm ạ.)* |
| Thức | <ruby>300<rt>さんびゃく</rt></ruby>ミリは<ruby>大<rt>おお</rt></ruby>きい。<ruby>足場<rt>あしば</rt></ruby>と<ruby>架台<rt>かだい</rt></ruby>が<ruby>当<rt>あ</rt></ruby>たるかも。<ruby>石川<rt>いしかわ</rt></ruby>さんに<ruby>確認<rt>かくにん</rt></ruby>や。<br>*(300 mm thì lớn. Có thể giàn giáo đụng giá. Hỏi anh Ishikawa.)* |
| Sasaki | <ruby>勝手<rt>かって</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めなくてよかったです。<br>*(May là không tự ý làm tiếp ạ.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>うときは<ruby>必<rt>かなら</rt></ruby>ず<ruby>止<rt>と</rt></ruby>めて<ruby>確認<rt>かくにん</rt></ruby>。これは<ruby>鉄則<rt>てっそく</rt></ruby>や。<br>*(Khác bản vẽ thì luôn dừng lại xác nhận. Đây là quy tắc cứng.)* |

---

## Tình huống 12 — Văn phòng công trường · 14:00, báo Ishikawa lệch giá thiết bị

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>室外機<rt>しつがいき</rt></ruby><ruby>架台<rt>かだい</rt></ruby>が<ruby>図面<rt>ずめん</rt></ruby>よりX<ruby>方向<rt>ほうこう</rt></ruby>に<ruby>300<rt>さんびゃく</rt></ruby>ミリずれています。<br>*(Anh Ishikawa, giá cục nóng lệch hướng X 300 mm so với bản vẽ ạ.)* |
| Ishikawa | <ruby>300<rt>さんびゃく</rt></ruby>?それは<ruby>大<rt>おお</rt></ruby>きいな。<ruby>設備<rt>せつび</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>せなあかん。<br>*(300 à? Cái đó lớn đấy. Phải hỏi nhà thầu thiết bị.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>はどう<ruby>対応<rt>たいおう</rt></ruby>しましょうか?<br>*(Phía giàn giáo xử lý thế nào ạ?)* |
| Ishikawa | <ruby>確認<rt>かくにん</rt></ruby><ruby>取<rt>と</rt></ruby>れるまでその<ruby>区画<rt>くかく</rt></ruby>は<ruby>保留<rt>ほりゅう</rt></ruby>。<ruby>他<rt>ほか</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めてください。<br>*(Tới khi xác nhận thì giữ nguyên khu đó. Làm chỗ khác trước.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Em rõ ạ. Em cho làm mặt Đông trước ạ.)* |
| Ishikawa | <ruby>報告<rt>ほうこく</rt></ruby>が<ruby>早<rt>はや</rt></ruby>くて<ruby>助<rt>たす</rt></ruby>かります。<ruby>信頼<rt>しんらい</rt></ruby>できますよ。<br>*(Báo cáo sớm nên đỡ lắm. Tin được đấy.)* |

---

## Tình huống 13 — Công trường · 14:40, dặn tổ giữ khu保留

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>室外機<rt>しつがいき</rt></ruby><ruby>付近<rt>ふきん</rt></ruby>の<ruby>区画<rt>くかく</rt></ruby>は<ruby>一旦<rt>いったん</rt></ruby><ruby>保留<rt>ほりゅう</rt></ruby>です。<br>*(Mọi người, khu gần cục nóng tạm giữ nguyên.)* |
| Hùng | <ruby>確認<rt>かくにん</rt></ruby><ruby>待<rt>ま</rt></ruby>ちやな。<ruby>触<rt>さわ</rt></ruby>らんほうがええんやろ?<br>*(Chờ xác nhận nhỉ. Không nên đụng vào chứ?)* |
| Thức | そう。<ruby>図面<rt>ずめん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>うまま<ruby>組<rt>く</rt></ruby>むと<ruby>後<rt>あと</rt></ruby>でやり<ruby>直<rt>なお</rt></ruby>しになる。<br>*(Đúng. Dựng khác bản vẽ thì sau phải làm lại.)* |
| Nam | その<ruby>間<rt>あいだ</rt></ruby>は<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>ですね。<br>*(Trong lúc đó làm mặt Đông nhỉ.)* |
| Thức | そう。<ruby>手<rt>て</rt></ruby><ruby>待<rt>ま</rt></ruby>ちが<ruby>出<rt>で</rt></ruby>んよう<ruby>東<rt>ひがし</rt></ruby>に<ruby>全員<rt>ぜんいん</rt></ruby><ruby>回<rt>まわ</rt></ruby>ろう。<br>*(Đúng. Để không phát sinh chờ việc, cả tổ chuyển sang Đông.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>無駄<rt>むだ</rt></ruby>がないな。<br>*(Rõ. Không phí thời gian đấy.)* |

---

## Tình huống 14 — Công trường · 15:10, Ishikawa thông báo kết quả xác nhận

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>室外機<rt>しつがいき</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、<ruby>設備<rt>せつび</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Anh Thức, vụ cục nóng tôi đã hỏi nhà thầu thiết bị.)* |
| Thức | はい、どうなりましたか?<br>*(Vâng, kết quả thế nào ạ?)* |
| Ishikawa | <ruby>設備<rt>せつび</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>でした。<ruby>架台<rt>かだい</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>で<ruby>正<rt>ただ</rt></ruby>しいです。<br>*(Là thay đổi của bên thiết bị. Giá đúng theo vị trí hiện trường.)* |
| Thức | では<ruby>足場<rt>あしば</rt></ruby>を<ruby>現場<rt>げんば</rt></ruby><ruby>位置<rt>いち</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせて<ruby>逃<rt>に</rt></ruby>がします。<br>*(Vậy em chỉnh giàn giáo né theo vị trí hiện trường ạ.)* |
| Ishikawa | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>君<rt>きみ</rt></ruby>が<ruby>気<rt>き</rt></ruby>づかなかったら<ruby>手戻<rt>てもど</rt></ruby>りになってましたよ。<br>*(Nhờ anh. Anh không phát hiện thì đã phải làm lại đấy.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby><ruby>照合<rt>しょうごう</rt></ruby>を<ruby>習慣<rt>しゅうかん</rt></ruby>にしている<ruby>成果<rt>せいか</rt></ruby>です。<br>*(Là kết quả của thói quen đối chiếu bản vẽ ạ.)* |

---

## Tình huống 15 — Công trường · 15:40, điều chỉnh giàn giáo theo vị trí mới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>架台<rt>かだい</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby><ruby>位置<rt>いち</rt></ruby>で<ruby>確定<rt>かくてい</rt></ruby>です。<ruby>足場<rt>あしば</rt></ruby>をそこから<ruby>500<rt>ごひゃく</rt></ruby>ミリ<ruby>離<rt>はな</rt></ruby>します。<br>*(Sasaki, giá chốt theo vị trí hiện trường. Giàn giáo cách đó 500 mm.)* |
| Sasaki | <ruby>500<rt>ごひゃく</rt></ruby>ミリ<ruby>離<rt>はな</rt></ruby>せば<ruby>保守<rt>ほしゅ</rt></ruby>スペースも<ruby>取<rt>と</rt></ruby>れますね。<br>*(Cách 500 mm thì có cả không gian bảo trì nhỉ.)* |
| Thức | そう。<ruby>後<rt>あと</rt></ruby>でメンテナンスする<ruby>人<rt>ひと</rt></ruby>のことも<ruby>考<rt>かんが</rt></ruby>えてや。<br>*(Đúng. Tính cả người bảo trì sau này nhé.)* |
| Sasaki | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>離<rt>はな</rt></ruby>れを<ruby>測<rt>はか</rt></ruby>りながら<ruby>組<rt>く</rt></ruby>みます。<br>*(Em rõ ạ. Em vừa đo khoảng cách vừa dựng.)* |
| Thức | <ruby>各<rt>かく</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れんように。<br>*(Đừng quên kiểm tra từng tầng.)* |
| Sasaki | はい、<ruby>丁寧<rt>ていねい</rt></ruby>にやります。<br>*(Vâng, em làm cẩn thận ạ.)* |

---

## Tình huống 16 — Công trường · 16:00, 職長 hỏi tiến độ và sự cố lệch

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>はトラブルあったらしいな。<br>*(Thức, mặt Nam nghe nói có sự cố.)* |
| Thức | はい、<ruby>図面<rt>ずめん</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby><ruby>差<rt>さ</rt></ruby>が<ruby>2件<rt>にけん</rt></ruby>ありました。<br>*(Vâng, có 2 điểm lệch kích thước giữa bản vẽ và hiện trường ạ.)* |
| Saito | どう<ruby>処理<rt>しょり</rt></ruby>した?<br>*(Xử lý thế nào?)* |
| Thức | <ruby>両方<rt>りょうほう</rt></ruby>とも<ruby>監督<rt>かんとく</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>して、<ruby>了解<rt>りょうかい</rt></ruby>を<ruby>得<rt>え</rt></ruby>てから<ruby>調整<rt>ちょうせい</rt></ruby>しました。<br>*(Cả hai em báo cáo giám sát, được đồng ý rồi mới chỉnh ạ.)* |
| Saito | <ruby>勝手<rt>かって</rt></ruby>に<ruby>動<rt>うご</rt></ruby>かんかったのは<ruby>満点<rt>まんてん</rt></ruby>や。<ruby>手戻<rt>てもど</rt></ruby>りも<ruby>防<rt>ふせ</rt></ruby>げた。<br>*(Không tự ý làm là điểm tuyệt đối. Còn ngăn được làm lại.)* |
| Thức | ありがとうございます。<ruby>図面<rt>ずめん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さが<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em cảm ơn ạ. Em hiểu tầm quan trọng của xác nhận bản vẽ ạ.)* |

---

## Tình huống 17 — Văn phòng · 16:30, Ishikawa nhờ Thức việc sau

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>、<ruby>班<rt>はん</rt></ruby>にも<ruby>展開<rt>てんかい</rt></ruby>してもらえますか?<br>*(Anh Thức, giải thích bản vẽ tuần sau, anh phổ biến cho cả tổ được không?)* |
| Thức | はい、もちろんです。<ruby>要点<rt>ようてん</rt></ruby>をまとめて<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Vâng, tất nhiên ạ. Em tóm điểm chính rồi truyền đạt ạ.)* |
| Ishikawa | <ruby>君<rt>きみ</rt></ruby>なら<ruby>図面<rt>ずめん</rt></ruby>の<ruby>勘所<rt>かんどころ</rt></ruby>を<ruby>分<rt>わ</rt></ruby>かりやすく<ruby>説明<rt>せつめい</rt></ruby>できそうや。<br>*(Anh thì giải thích được điểm mấu chốt bản vẽ dễ hiểu đấy.)* |
| Thức | お<ruby>任<rt>まか</rt></ruby>せください。<ruby>分<rt>わ</rt></ruby>からない<ruby>所<rt>ところ</rt></ruby>はその<ruby>都度<rt>つど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cứ giao em ạ. Chỗ nào chưa rõ em sẽ xác nhận từng lúc.)* |
| Ishikawa | <ruby>頼<rt>たの</rt></ruby>もしい。<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby><ruby>心配<rt>しんぱい</rt></ruby>やったが、<ruby>考<rt>かんが</rt></ruby>えが<ruby>変<rt>か</rt></ruby>わったよ。<br>*(Đáng tin. Ban đầu thật ra tôi lo, nhưng suy nghĩ thay đổi rồi.)* |
| Thức | そう<ruby>言<rt>い</rt></ruby>っていただけて<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Anh nói vậy là động lực cho em ạ.)* |

---

## Tình huống 18 — Văn phòng · 16:50, báo cáo cuối ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Đốc công, báo cáo hôm nay. Điều chỉnh mặt Nam xong ạ.)* |
| Saito | <ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>戻<rt>もど</rt></ruby>せたか?<br>*(Đưa về đúng bản vẽ chưa?)* |
| Thức | <ruby>監督<rt>かんとく</rt></ruby>の<ruby>赤<rt>あか</rt></ruby><ruby>書<rt>が</rt></ruby>き<ruby>通<rt>どお</rt></ruby>りに<ruby>修正<rt>しゅうせい</rt></ruby>しました。<ruby>手戻<rt>てもど</rt></ruby>りはありません。<br>*(Em sửa đúng theo ghi chú đỏ của giám sát. Không có làm lại ạ.)* |
| Saito | ええ<ruby>仕事<rt>しごと</rt></ruby>や。<ruby>石川<rt>いしかわ</rt></ruby>さんもえらい<ruby>褒<rt>ほ</rt></ruby>めとったで。<br>*(Việc tốt. Anh Ishikawa khen lắm đấy.)* |
| Thức | ありがとうございます。<ruby>図面<rt>ずめん</rt></ruby>をもっと<ruby>読<rt>よ</rt></ruby>めるよう<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Em cảm ơn ạ. Em sẽ học để đọc bản vẽ giỏi hơn ạ.)* |
| Saito | その<ruby>姿勢<rt>しせい</rt></ruby>があれば<ruby>2号<rt>にごう</rt></ruby>も<ruby>夢<rt>ゆめ</rt></ruby>やないで。<br>*(Có thái độ đó thì số 2 không phải mơ đâu.)* |

---

## Tình huống 19 — Phòng thay đồ · 17:10, Sasaki cảm ơn

| Vai | Lời thoại |
|---|---|
| Sasaki | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>通<rt>とお</rt></ruby>り<ruby>芯<rt>しん</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かりやすかったです。<br>*(Anh Thức, giải thích trục định vị hôm nay dễ hiểu ạ.)* |
| Thức | よかった。<ruby>図面<rt>ずめん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かると<ruby>仕事<rt>しごと</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くなる。<br>*(Tốt. Hiểu từ ngữ bản vẽ thì việc nhanh hơn.)* |
| Sasaki | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>でした。<br>*(Thật ra em yếu bản vẽ ạ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はそうやった。<ruby>記号<rt>きごう</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>覚<rt>おぼ</rt></ruby>えればええ。<br>*(Anh cũng vậy lúc đầu. Cứ nhớ từng ký hiệu một là được.)* |
| Sasaki | また<ruby>教<rt>おし</rt></ruby>えてください。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lại chỉ em với ạ. Nhờ anh.)* |
| Thức | いつでもどうぞ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えよう。<br>*(Bất cứ lúc nào. Cùng học nào.)* |

---

## Tình huống 20 — Cổng công trường · 17:25, 親方 ghi nhận

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>石川<rt>いしかわ</rt></ruby>さんが<ruby>珍<rt>めずら</rt></ruby>しくお<ruby>前<rt>まえ</rt></ruby>を<ruby>褒<rt>ほ</rt></ruby>めとったぞ。<br>*(Thức, anh Ishikawa hiếm khi khen mà khen cậu đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>図面<rt>ずめん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>にしただけです。<br>*(Thật ạ? Em chỉ kiểm tra bản vẽ cẩn thận thôi ạ.)* |
| Tanigawa | その「だけ」が<ruby>難<rt>むずか</rt></ruby>しいんや。<ruby>面倒<rt>めんどう</rt></ruby>くさがる<ruby>奴<rt>やつ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<br>*(Cái "chỉ" đó mới khó. Lắm đứa ngại phiền.)* |
| Thức | <ruby>手戻<rt>てもど</rt></ruby>りすると<ruby>班<rt>はん</rt></ruby>のみんなが<ruby>大変<rt>たいへん</rt></ruby>になりますから。<br>*(Vì làm lại thì cả tổ vất vả ạ.)* |
| Tanigawa | <ruby>班<rt>はん</rt></ruby>のこと<ruby>考<rt>かんが</rt></ruby>えとるな。ええ<ruby>班長<rt>はんちょう</rt></ruby>や。<br>*(Nghĩ cho cả tổ đấy. 班長 tốt.)* |
| Thức | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>も<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ. Mai em cũng cố gắng.)* |

---

## Đọng lại

Thức đối mặt với 施工図 phức tạp có ban công, mái đua, vị trí thiết bị thay đổi. Bằng thói quen đo kích thước thực tế, đối chiếu với bản vẽ, và quy tắc cứng "khác bản vẽ thì luôn dừng lại báo cáo, không tự ý sửa", Thức phát hiện 2 điểm lệch (庇 20 mm, 室外機架台 300 mm), ngăn được việc phải làm lại. Trao đổi nghiệp vụ chủ động nhưng lễ phép với 現場監督 Ishikawa khiến ông từ chỗ hoài nghi chuyển sang công nhận và giao thêm việc cho Thức.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 施工図 | せこうず | Bản vẽ thi công |
> | 寸法 | すんぽう | Kích thước |
> | 断面図 | だんめんず | Bản vẽ mặt cắt |
> | 平面図 | へいめんず | Bản vẽ mặt bằng |
> | 通り芯 | とおりしん | Trục định vị (chuẩn) |
> | 割り付け | わりつけ | Chia khoảng, bố trí khoảng cách |
> | 実測 | じっそく | Đo thực tế |
> | 照合 | しょうごう | Đối chiếu |
> | 庇 | ひさし | Mái đua |
> | 干渉 | かんしょう | Vướng, va chạm (bố trí) |
> | 手戻り | てもどり | Làm lại (do sai) |
> | 赤書き | あかがき | Ghi chú sửa bằng bút đỏ |
> | 室外機 | しつがいき | Cục nóng điều hòa |
> | 架台 | かだい | Giá đỡ (thiết bị) |
> | 保留 | ほりゅう | Giữ nguyên, tạm hoãn |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000006, 800000036, NULL, 'markdown_book', 'T6. Phối hợp đa nghề — Xử lý 取り合い giữa tobi và thợ sắt, thiết bị (多職種・取り合い)', '# Sách kỹ năng đặc định xây dựng · T6. Phối hợp đa nghề — Xử lý 取り合い giữa tobi và thợ sắt, thiết bị (多職種・取り合い)

> **Mục tiêu nhân vật:** Thức học phối hợp giữa nhiều nghề trên cùng công trường (とび vs 鉄筋 vs 設備), điều phối 取り合い (giao thoa công việc/không gian), thương lượng trình tự với tổ nghề khác, chủ trì 打合せ nhỏ.

---

## Bối cảnh

Tháng 9 năm 2029. Công trình vào giai đoạn nhiều nghề cùng làm song song: tổ giàn giáo (とび) của Thức, tổ thợ sắt (鉄筋), tổ thiết bị (設備). Không gian và trình tự công việc giao thoa (取り合い) gây xung đột. Thức phải điều phối, thương lượng với 職長 tổ khác, chủ trì các 打合せ ngắn. Chương tập trung mẫu câu thương lượng liên nghề, đề xuất trình tự, nhường-giành không gian một cách chuyên nghiệp.

---

## Tình huống 1 — Công trường · 7:50, 職長 báo trước có nhiều nghề vào

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今日<rt>きょう</rt></ruby>から<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>屋<rt>や</rt></ruby>と<ruby>設備<rt>せつび</rt></ruby><ruby>屋<rt>や</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じエリアに<ruby>入<rt>はい</rt></ruby>る。<br>*(Thức, từ hôm nay tổ thợ sắt và tổ thiết bị cũng vào cùng khu.)* |
| Thức | <ruby>同<rt>おな</rt></ruby>じ<ruby>場所<rt>ばしょ</rt></ruby>ですか。<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いが<ruby>出<rt>で</rt></ruby>そうですね。<br>*(Cùng chỗ ạ. Có vẻ sẽ giao thoa nhỉ.)* |
| Saito | そうや。<ruby>足場<rt>あしば</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>他<rt>ほか</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>してくれ。<br>*(Đúng. Cậu điều phối bố trí giàn giáo với nhà thầu khác nhé.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>各<rt>かく</rt></ruby><ruby>職長<rt>しょくちょう</rt></ruby>さんと<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせします。<br>*(Em rõ ạ. Em sẽ họp với các đốc công ạ.)* |
| Saito | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>だけ<ruby>言<rt>い</rt></ruby>うたらあかんで。お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>や。<br>*(Đừng chỉ nói lợi mình. Là cùng có qua có lại đấy.)* |
| Thức | はい、<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>工程<rt>こうてい</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えて<ruby>話<rt>はな</rt></ruby>します。<br>*(Vâng, em sẽ nói có cân nhắc tổng tiến độ ạ.)* |

---

## Tình huống 2 — Công trường · 8:00, chào 職長 tổ thợ sắt

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>鉄筋<rt>てっきん</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>さんですか。<ruby>足場<rt>あしば</rt></ruby><ruby>班<rt>はん</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>のトゥックです。<br>*(Đốc công tổ thợ sắt ạ? Tôi là Thức, 班長 tổ giàn giáo.)* |
| ĐC thợ sắt | ああ、よろしく。<ruby>今日<rt>きょう</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>区画<rt>くかく</rt></ruby>やな。<br>*(À, mong nhé. Hôm nay cùng khu nhỉ.)* |
| Thức | はい。<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>重<rt>かさ</rt></ruby>ならないよう<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Vâng. Để việc không chồng nhau, cho tôi bàn về thứ tự ạ.)* |
| ĐC thợ sắt | ええで。うちは<ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>配筋<rt>はいきん</rt></ruby>したい。<br>*(Được. Bên tôi muốn đặt thép buổi sáng.)* |
| Thức | では<ruby>足場<rt>あしば</rt></ruby>は<ruby>午後<rt>ごご</rt></ruby>から<ruby>上<rt>あ</rt></ruby>げます。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>下<rt>した</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>にします。<br>*(Vậy giàn giáo tôi dựng từ chiều. Sáng làm chuẩn bị dưới ạ.)* |
| ĐC thợ sắt | <ruby>助<rt>たす</rt></ruby>かるわ。<ruby>話<rt>はなし</rt></ruby>が<ruby>早<rt>はや</rt></ruby>いな。<br>*(Đỡ quá. Nói chuyện nhanh đấy.)* |

---

## Tình huống 3 — Công trường · 8:20, chủ trì 打合せ ba nghề

| Vai | Lời thoại |
|---|---|
| Thức | お<ruby>集<rt>あつ</rt></ruby>まりありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cảm ơn mọi người đã tập trung. Tôi xác nhận giao thoa hôm nay.)* |
| ĐC thiết bị | <ruby>設備<rt>せつび</rt></ruby>は<ruby>配管<rt>はいかん</rt></ruby>ルートを<ruby>確保<rt>かくほ</rt></ruby>したい。<br>*(Thiết bị muốn giữ tuyến đi ống.)* |
| Thức | <ruby>配管<rt>はいかん</rt></ruby>ルートはどのあたりですか?<ruby>足場<rt>あしば</rt></ruby>とぶつかりませんか?<br>*(Tuyến ống ở khoảng nào? Có đụng giàn giáo không?)* |
| ĐC thiết bị | X<ruby>3<rt>さん</rt></ruby><ruby>通<rt>とお</rt></ruby>り<ruby>付近<rt>ふきん</rt></ruby>や。<ruby>足場<rt>あしば</rt></ruby>の<ruby>柱<rt>はしら</rt></ruby>と<ruby>近<rt>ちか</rt></ruby>い。<br>*(Gần trục X3. Sát cột giàn giáo.)* |
| Thức | では<ruby>足場<rt>あしば</rt></ruby>の<ruby>柱<rt>はしら</rt></ruby>を<ruby>1<rt>いっ</rt></ruby>スパンずらして<ruby>配管<rt>はいかん</rt></ruby>スペースを<ruby>空<rt>あ</rt></ruby>けます。<br>*(Vậy tôi dời cột giàn giáo 1 nhịp để chừa chỗ đi ống.)* |
| ĐC thiết bị | それで<ruby>助<rt>たす</rt></ruby>かる。<ruby>柔軟<rt>じゅうなん</rt></ruby>でええ<ruby>班長<rt>はんちょう</rt></ruby>さんや。<br>*(Vậy đỡ quá. 班長 linh hoạt đấy.)* |

---

## Tình huống 4 — Công trường · 9:00, truyền đạt điều phối cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>他<rt>ほか</rt></ruby>の<ruby>業者<rt>ぎょうしゃ</rt></ruby>さんと<ruby>共同<rt>きょうどう</rt></ruby>です。<ruby>段取<rt>だんど</rt></ruby>りを<ruby>変<rt>か</rt></ruby>えます。<br>*(Mọi người, hôm nay làm chung với nhà thầu khác. Đổi bố trí.)* |
| Hùng | <ruby>足場<rt>あしば</rt></ruby>は<ruby>午後<rt>ごご</rt></ruby>からやな?<br>*(Giàn giáo từ chiều nhỉ?)* |
| Thức | そう。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>屋<rt>や</rt></ruby>さんに<ruby>場所<rt>ばしょ</rt></ruby>を<ruby>譲<rt>ゆず</rt></ruby>る。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>資材<rt>しざい</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>です。<br>*(Đúng. Sáng nhường chỗ cho tổ thợ sắt. Sáng làm chuẩn bị vật tư.)* |
| Sasaki | <ruby>柱<rt>はしら</rt></ruby><ruby>位置<rt>いち</rt></ruby>もずらすんですか?<br>*(Vị trí cột cũng dời ạ?)* |
| Thức | X<ruby>3<rt>さん</rt></ruby><ruby>通<rt>とお</rt></ruby>りだけ<ruby>1<rt>いっ</rt></ruby>スパンずらす。<ruby>配管<rt>はいかん</rt></ruby>を<ruby>逃<rt>に</rt></ruby>がすためや。<br>*(Riêng trục X3 dời 1 nhịp. Để né ống.)* |
| Sasaki | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>図面<rt>ずめん</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>します。<br>*(Em hiểu rồi. Em cập nhật vào bản vẽ ạ.)* |

---

## Tình huống 5 — Công trường · 10:00, xung đột không gian phát sinh

| Vai | Lời thoại |
|---|---|
| Thợ sắt B | おい<ruby>足場<rt>あしば</rt></ruby>!ここ<ruby>材料<rt>ざいりょう</rt></ruby><ruby>置<rt>お</rt></ruby>かれたら<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>組<rt>く</rt></ruby>めへんで。<br>*(Ê giàn giáo! Để vật liệu đây thì không đặt thép được.)* |
| Thức | すみません、すぐ<ruby>移動<rt>いどう</rt></ruby>します。どこなら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Xin lỗi, tôi dời ngay. Chỗ nào thì ổn ạ?)* |
| Thợ sắt B | あっちの<ruby>隅<rt>すみ</rt></ruby>なら<ruby>邪魔<rt>じゃま</rt></ruby>にならん。<br>*(Góc đằng kia thì không vướng.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。フンさん、<ruby>資材<rt>しざい</rt></ruby>を<ruby>北<rt>きた</rt></ruby><ruby>隅<rt>すみ</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>せて。<br>*(Tôi hiểu rồi. Hùng, dồn vật tư về góc Bắc.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>、すぐやるわ。<br>*(Rõ, làm ngay.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>えば<ruby>揉<rt>も</rt></ruby>めません。<ruby>以後<rt>いご</rt></ruby><ruby>気<rt>き</rt></ruby>をつけます。<br>*(Hai bên nhắc nhau thì không cãi nhau. Tôi sẽ chú ý từ giờ.)* |

---

## Tình huống 6 — Công trường · 10:30, báo 職長 việc va chạm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>鉄筋<rt>てっきん</rt></ruby><ruby>屋<rt>や</rt></ruby>さんと<ruby>資材<rt>しざい</rt></ruby><ruby>置場<rt>おきば</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>揉<rt>も</rt></ruby>めました。<br>*(Đốc công, có chút va chạm với tổ thợ sắt về chỗ để vật tư ạ.)* |
| Saito | どう<ruby>収<rt>おさ</rt></ruby>めた?<br>*(Giải quyết thế nào?)* |
| Thức | すぐ<ruby>資材<rt>しざい</rt></ruby>を<ruby>北<rt>きた</rt></ruby><ruby>隅<rt>すみ</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>して、<ruby>謝<rt>あやま</rt></ruby>って<ruby>収<rt>おさ</rt></ruby>まりました。<br>*(Em dời vật tư về góc Bắc ngay, xin lỗi rồi êm ạ.)* |
| Saito | ええ<ruby>対応<rt>たいおう</rt></ruby>や。<ruby>意地<rt>いじ</rt></ruby>を<ruby>張<rt>は</rt></ruby>ったら<ruby>現場<rt>げんば</rt></ruby>が<ruby>止<rt>と</rt></ruby>まる。<br>*(Xử lý tốt. Cố chấp thì công trường kẹt.)* |
| Thức | <ruby>置場<rt>おきば</rt></ruby>の<ruby>線<rt>せん</rt></ruby><ruby>引<rt>び</rt></ruby>きを<ruby>明確<rt>めいかく</rt></ruby>にしたほうがいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ nên vạch rõ ranh giới chỗ để đồ ạ.)* |
| Saito | ええ<ruby>提案<rt>ていあん</rt></ruby>や。<ruby>午後<rt>ごご</rt></ruby>の<ruby>打合<rt>うちあわ</rt></ruby>せで<ruby>決<rt>き</rt></ruby>めよ。<br>*(Đề xuất tốt. Họp chiều chốt nào.)* |

---

## Tình huống 7 — Công trường · 11:00, đề xuất kẻ ranh giới置場

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>資材<rt>しざい</rt></ruby><ruby>置場<rt>おきば</rt></ruby>を<ruby>業者<rt>ぎょうしゃ</rt></ruby>ごとに<ruby>区切<rt>くぎ</rt></ruby>る<ruby>提案<rt>ていあん</rt></ruby>です。<br>*(Mọi người, tôi đề xuất chia chỗ để vật tư theo từng nhà thầu.)* |
| ĐC thợ sắt | それはありがたい。<ruby>毎回<rt>まいかい</rt></ruby><ruby>揉<rt>も</rt></ruby>めるのは<ruby>嫌<rt>いや</rt></ruby>やしな。<br>*(Vậy thì hay. Lần nào cũng cãi nhau cũng phiền.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>は<ruby>東<rt>ひがし</rt></ruby><ruby>側<rt>がわ</rt></ruby>、<ruby>鉄筋<rt>てっきん</rt></ruby>は<ruby>中央<rt>ちゅうおう</rt></ruby>、<ruby>設備<rt>せつび</rt></ruby>は<ruby>西<rt>にし</rt></ruby><ruby>側<rt>がわ</rt></ruby>でどうでしょう?<br>*(Giàn giáo phía Đông, thợ sắt giữa, thiết bị phía Tây thì sao ạ?)* |
| ĐC thiết bị | <ruby>異論<rt>いろん</rt></ruby>ないわ。テープで<ruby>線<rt>せん</rt></ruby><ruby>引<rt>び</rt></ruby>きしとこ。<br>*(Không phản đối. Dán băng kẻ ranh đi.)* |
| Thức | では<ruby>私<rt>わたし</rt></ruby>の<ruby>班<rt>はん</rt></ruby>でテープを<ruby>引<rt>ひ</rt></ruby>いておきます。<br>*(Vậy tổ tôi sẽ dán băng kẻ ranh ạ.)* |
| ĐC thợ sắt | <ruby>気<rt>き</rt></ruby>が<ruby>利<rt>き</rt></ruby>くな。<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Khéo đấy. Nhờ nhé.)* |

---

## Tình huống 8 — Nghỉ trưa · 12:15, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, sáng nay em va với tổ thợ sắt vụ chỗ để vật tư. Hơi căng. |
| Long | Liên nghề lúc nào cũng vậy. Quan trọng là đừng để cái tôi lên, hỏng cả tiến độ. |
| Thức | Em xin lỗi rồi dời đồ luôn. Sau em đề xuất kẻ ranh giới cho khỏi tranh nhau. |
| Long | Hay đấy. 班長 giỏi không phải cãi thắng, mà là làm cho cả công trường chạy được. |
| Thức | Vâng. Em thấy nói chuyện với 職長 tổ khác cũng là một kiểu tiếng Nhật nghiệp vụ. |
| Long | Đúng. Lễ phép, rõ ràng, có đề xuất cụ thể là người ta nể. Em làm được đấy. |

---

## Tình huống 9 — Công trường · 13:00, thương lượng trình tự với tổ thiết bị

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>設備<rt>せつび</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>さん、<ruby>午後<rt>ごご</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Đốc công thiết bị, cho tôi bàn thứ tự buổi chiều ạ.)* |
| ĐC thiết bị | ええで。うちはダクトを<ruby>先<rt>さき</rt></ruby>に<ruby>吊<rt>つ</rt></ruby>りたい。<br>*(Được. Bên tôi muốn treo ống gió trước.)* |
| Thức | ダクトが<ruby>先<rt>さき</rt></ruby>だと<ruby>足場<rt>あしば</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れます。<ruby>一部<rt>いちぶ</rt></ruby>だけ<ruby>残<rt>のこ</rt></ruby>す<ruby>案<rt>あん</rt></ruby>はどうですか?<br>*(Ống gió trước thì tháo giàn giáo bị chậm. Phương án chừa lại một phần thì sao ạ?)* |
| ĐC thiết bị | <ruby>一部<rt>いちぶ</rt></ruby><ruby>残<rt>のこ</rt></ruby>しか。それなら<ruby>足場<rt>あしば</rt></ruby>を<ruby>足場<rt>あしば</rt></ruby>として<ruby>使<rt>つか</rt></ruby>えるし<ruby>助<rt>たす</rt></ruby>かる。<br>*(Chừa một phần à. Vậy còn dùng giàn giáo làm chỗ đứng, đỡ đấy.)* |
| Thức | ではX<ruby>4<rt>よん</rt></ruby>からX<ruby>6<rt>ろく</rt></ruby>は<ruby>残<rt>のこ</rt></ruby>し、<ruby>他<rt>ほか</rt></ruby>は<ruby>先<rt>さき</rt></ruby>に<ruby>解体<rt>かいたい</rt></ruby>します。<br>*(Vậy trục X4 tới X6 chừa lại, chỗ khác tháo trước ạ.)* |
| ĐC thiết bị | それで<ruby>合意<rt>ごうい</rt></ruby>や。<ruby>話<rt>はな</rt></ruby>しやすい<ruby>人<rt>ひと</rt></ruby>やな。<br>*(Vậy thống nhất. Người dễ nói chuyện đấy.)* |

---

## Tình huống 10 — Công trường · 13:40, 現場監督 Ishikawa hỏi điều phối

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>多<rt>た</rt></ruby><ruby>職種<rt>しょくしゅ</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>はうまくいってますか?<br>*(Anh Thức, điều phối đa nghề ổn không?)* |
| Thức | はい。<ruby>資材<rt>しざい</rt></ruby><ruby>置場<rt>おきば</rt></ruby>を<ruby>区分<rt>くぶん</rt></ruby>し、<ruby>解体<rt>かいたい</rt></ruby><ruby>順<rt>じゅん</rt></ruby>も<ruby>設備<rt>せつび</rt></ruby>さんと<ruby>合意<rt>ごうい</rt></ruby>しました。<br>*(Vâng. Em chia chỗ để vật tư, và đã thống nhất thứ tự tháo dỡ với bên thiết bị ạ.)* |
| Ishikawa | <ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いは<ruby>毎回<rt>まいかい</rt></ruby>こじれるんやが、よう<ruby>収<rt>おさ</rt></ruby>めたな。<br>*(Giao thoa lần nào cũng rối, mà dàn xếp khéo đấy.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>だけでなく<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>工程<rt>こうてい</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えました。<br>*(Em không chỉ tính lợi mình mà nghĩ cả tổng tiến độ ạ.)* |
| Ishikawa | その<ruby>視点<rt>してん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>や。<ruby>元請<rt>もとうけ</rt></ruby>として<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かる。<br>*(Góc nhìn đó quan trọng. Với tư cách nhà thầu chính thì đỡ lắm.)* |
| Thức | ありがとうございます。<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>連携<rt>れんけい</rt></ruby>します。<br>*(Em cảm ơn ạ. Em sẽ tiếp tục phối hợp.)* |

---

## Tình huống 11 — Công trường · 14:10, điều chỉnh khi thợ sắt chậm

| Vai | Lời thoại |
|---|---|
| ĐC thợ sắt | トゥックさん、すまん。<ruby>配筋<rt>はいきん</rt></ruby>が<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>遅<rt>おく</rt></ruby>れそうや。<br>*(Anh Thức, xin lỗi. Đặt thép có vẻ chậm 1 tiếng.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。では<ruby>足場<rt>あしば</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>の<ruby>面<rt>めん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Tôi rõ ạ. Vậy giàn giáo tôi cho làm mặt khác trước.)* |
| ĐC thợ sắt | <ruby>怒<rt>おこ</rt></ruby>らんのか。<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(Không bực à. Đỡ quá.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>です。うちが<ruby>遅<rt>おく</rt></ruby>れることもありますから。<br>*(Có qua có lại ạ. Bên tôi cũng có lúc chậm mà.)* |
| ĐC thợ sắt | ええ<ruby>考<rt>かんが</rt></ruby>えや。お<ruby>陰<rt>かげ</rt></ruby>で<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちよう<ruby>働<rt>はたら</rt></ruby>けるわ。<br>*(Nghĩ hay đấy. Nhờ vậy làm việc thoải mái.)* |
| Thức | <ruby>遅<rt>おく</rt></ruby>れたら<ruby>早<rt>はや</rt></ruby>めに<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けてください。<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Chậm thì báo sớm nhé. Tôi sẽ điều chỉnh.)* |

---

## Tình huống 12 — Công trường · 14:40, dặn tổ chuyển mặt làm việc

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>鉄筋<rt>てっきん</rt></ruby>さんが<ruby>遅<rt>おく</rt></ruby>れるので<ruby>西<rt>にし</rt></ruby><ruby>面<rt>めん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<br>*(Mọi người, tổ thợ sắt chậm nên chuyển sang mặt Tây.)* |
| Hùng | <ruby>西<rt>にし</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>準備<rt>じゅんび</rt></ruby>できとるんか?<br>*(Mặt Tây chuẩn bị xong chưa?)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>に<ruby>資材<rt>しざい</rt></ruby>を<ruby>上<rt>あ</rt></ruby>げてある。すぐ<ruby>入<rt>はい</rt></ruby>れる。<br>*(Sáng đã đưa vật tư lên. Vào ngay được.)* |
| Sasaki | <ruby>先回<rt>さきまわ</rt></ruby>りの<ruby>段取<rt>だんど</rt></ruby>りが<ruby>効<rt>き</rt></ruby>きましたね。<br>*(Bố trí đi trước có tác dụng nhỉ.)* |
| Thức | そう。<ruby>他<rt>ほか</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れても<ruby>手<rt>て</rt></ruby><ruby>待<rt>ま</rt></ruby>ちにならんように<ruby>備<rt>そな</rt></ruby>えとくんや。<br>*(Đúng. Nhà thầu khác chậm cũng không phải chờ — phải phòng trước.)* |
| Hùng | <ruby>勉強<rt>べんきょう</rt></ruby>になるわ。<br>*(Học được đấy.)* |

---

## Tình huống 13 — Công trường · 15:00, hướng dẫn Nam giao tiếp liên nghề

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>他<rt>ほか</rt></ruby>の<ruby>業者<rt>ぎょうしゃ</rt></ruby>さんに<ruby>話<rt>はな</rt></ruby>しかけるのが<ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Anh Thức, em sợ bắt chuyện với nhà thầu khác ạ.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>挨拶<rt>あいさつ</rt></ruby>からでええ。「おつかれさまです」だけでも<ruby>違<rt>ちが</rt></ruby>う。<br>*(Đầu tiên từ chào hỏi là được. Chỉ "vất vả ạ" cũng khác.)* |
| Nam | <ruby>用件<rt>ようけん</rt></ruby>はどう<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Nói việc thế nào ạ?)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に。「ここ<ruby>通<rt>とお</rt></ruby>ってもいいですか」みたいに<ruby>短<rt>みじか</rt></ruby>くな。<br>*(Kết luận trước. Ngắn như "đi qua đây được không ạ".)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。やってみます。<br>*(Em hiểu rồi. Em thử ạ.)* |
| Thức | <ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。<br>*(Khó thì gọi anh. Anh đi cùng.)* |

---

## Tình huống 14 — Công trường · 15:30, giải quyết va chạm giữa Nam và thợ thiết bị

| Vai | Lời thoại |
|---|---|
| Thợ thiết bị | おい、そこの<ruby>足場<rt>あしば</rt></ruby>!ホースの<ruby>上<rt>うえ</rt></ruby>に<ruby>物<rt>もの</rt></ruby><ruby>置<rt>お</rt></ruby>くな!<br>*(Ê, giàn giáo kia! Đừng để đồ lên ống mềm!)* |
| Nam | あっ、すみません…(lúng túng)<br>*(À, xin lỗi… )* |
| Thức | (đến) すみません、<ruby>私<rt>わたし</rt></ruby>が<ruby>班長<rt>はんちょう</rt></ruby>です。すぐどけさせます。<br>*(Xin lỗi, tôi là 班長. Tôi cho dọn ngay.)* |
| Thợ thiết bị | <ruby>頼<rt>たの</rt></ruby>むわ。ホース<ruby>傷<rt>きず</rt></ruby>つくと<ruby>困<rt>こま</rt></ruby>るんや。<br>*(Nhờ nhé. Ống hỏng thì phiền.)* |
| Thức | ナムさん、<ruby>資材<rt>しざい</rt></ruby>をホースから<ruby>離<rt>はな</rt></ruby>そう。<ruby>以後<rt>いご</rt></ruby><ruby>気<rt>き</rt></ruby>をつけて。<br>*(Nam, dời vật tư xa ống. Từ giờ chú ý nhé.)* |
| Nam | はい、すみませんでした。<br>*(Vâng, em xin lỗi ạ.)* |

---

## Tình huống 15 — Công trường · 15:50, dạy Nam sau sự cố

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、さっきは<ruby>固<rt>かた</rt></ruby>まらんと、まず「すみません」と<ruby>言<rt>い</rt></ruby>えばええ。<br>*(Nam, lúc nãy đừng đơ ra, trước hết nói "xin lỗi" là được.)* |
| Nam | <ruby>急<rt>きゅう</rt></ruby>に<ruby>怒鳴<rt>どな</rt></ruby>られて<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になりました。<br>*(Bị quát đột ngột nên đầu óc trống rỗng ạ.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>でもそうや。<ruby>謝<rt>あやま</rt></ruby>って、すぐ<ruby>動<rt>うご</rt></ruby>く。それだけで<ruby>相手<rt>あいて</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>く。<br>*(Ai cũng vậy. Xin lỗi rồi làm ngay. Chỉ vậy là đối phương dịu.)* |
| Nam | <ruby>覚<rt>おぼ</rt></ruby>えておきます。トゥックさんが<ruby>来<rt>き</rt></ruby>てくれて<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Em ghi nhớ ạ. Anh Thức đến nên em được nhờ ạ.)* |
| Thức | <ruby>班長<rt>はんちょう</rt></ruby>は<ruby>班<rt>はん</rt></ruby>の<ruby>盾<rt>たて</rt></ruby>や。<ruby>困<rt>こま</rt></ruby>ったら<ruby>呼<rt>よ</rt></ruby>べばええ。<br>*(班長 là tấm khiên của tổ. Khó thì gọi là được.)* |
| Nam | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 16 — Công trường · 16:00, 打合せ cuối giờ ba nghề

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>明日<rt>あした</rt></ruby>の<ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いを<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Mọi người, tôi xác nhận giao thoa ngày mai.)* |
| ĐC thợ sắt | うちは<ruby>明日<rt>あした</rt></ruby><ruby>北<rt>きた</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>配筋<rt>はいきん</rt></ruby>や。<br>*(Bên tôi mai đặt thép phía Bắc.)* |
| ĐC thiết bị | <ruby>設備<rt>せつび</rt></ruby>は<ruby>南<rt>みなみ</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>配管<rt>はいかん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>ける。<br>*(Thiết bị làm tiếp ống phía Nam.)* |
| Thức | では<ruby>足場<rt>あしば</rt></ruby>は<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。<ruby>重<rt>かさ</rt></ruby>ならないですね。<br>*(Vậy giàn giáo làm mặt Đông. Không chồng nhau nhỉ.)* |
| ĐC thợ sắt | <ruby>毎日<rt>まいにち</rt></ruby>これやってくれると<ruby>揉<rt>も</rt></ruby>めへんわ。<br>*(Mỗi ngày làm thế này thì không cãi nhau.)* |
| Thức | <ruby>5分<rt>ごふん</rt></ruby>の<ruby>打合<rt>うちあわ</rt></ruby>せで<ruby>一日<rt>いちにち</rt></ruby>が<ruby>楽<rt>らく</rt></ruby>になります。<ruby>続<rt>つづ</rt></ruby>けましょう。<br>*(Họp 5 phút mà cả ngày đỡ. Ta duy trì nhé.)* |

---

## Tình huống 17 — Văn phòng · 16:40, báo cáo cuối ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>多<rt>た</rt></ruby><ruby>職種<rt>しょくしゅ</rt></ruby>でも<ruby>大<rt>おお</rt></ruby>きな<ruby>遅<rt>おく</rt></ruby>れはありません。<br>*(Đốc công, báo cáo hôm nay. Đa nghề mà không bị chậm lớn ạ.)* |
| Saito | <ruby>揉<rt>も</rt></ruby>めたと<ruby>聞<rt>き</rt></ruby>いたが?<br>*(Nghe nói có va chạm?)* |
| Thức | <ruby>2回<rt>にかい</rt></ruby>ありましたが、すぐ<ruby>謝<rt>あやま</rt></ruby>って<ruby>調整<rt>ちょうせい</rt></ruby>し、<ruby>収<rt>おさ</rt></ruby>めました。<br>*(Có 2 lần, em xin lỗi rồi điều chỉnh, dàn xếp xong ạ.)* |
| Saito | こじらせんかったのが<ruby>一番<rt>いちばん</rt></ruby>や。<ruby>置場<rt>おきば</rt></ruby><ruby>区分<rt>くぶん</rt></ruby>もええ<ruby>案<rt>あん</rt></ruby>やった。<br>*(Không làm to chuyện là nhất. Chia chỗ để đồ cũng là phương án hay.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>も<ruby>朝<rt>あさ</rt></ruby>に<ruby>打合<rt>うちあわ</rt></ruby>せをします。<br>*(Mai em cũng họp buổi sáng ạ.)* |
| Saito | <ruby>連携<rt>れんけい</rt></ruby>がうまい<ruby>班長<rt>はんちょう</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>の<ruby>宝<rt>たから</rt></ruby>や。<br>*(班長 phối hợp khéo là báu vật của công trường.)* |

---

## Tình huống 18 — Cổng công trường · 17:00, ĐC thợ sắt khen Thức

| Vai | Lời thoại |
|---|---|
| ĐC thợ sắt | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>はおおきに。やりやすかったわ。<br>*(Anh Thức, hôm nay cảm ơn. Làm dễ chịu.)* |
| Thức | こちらこそ<ruby>譲<rt>ゆず</rt></ruby>っていただいて<ruby>助<rt>たす</rt></ruby>かりました。<br>*(Tôi mới phải cảm ơn anh đã nhường ạ.)* |
| ĐC thợ sắt | <ruby>外国<rt>がいこく</rt></ruby>の<ruby>方<rt>かた</rt></ruby>でここまで<ruby>気<rt>き</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>せる<ruby>人<rt>ひと</rt></ruby>は<ruby>少<rt>すく</rt></ruby>ないで。<br>*(Người nước ngoài mà chu đáo tới vậy thì hiếm đấy.)* |
| Thức | <ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>教<rt>おそ</rt></ruby>わったことです。<br>*(Là điều đàn anh người Nhật dạy em ạ.)* |
| ĐC thợ sắt | <ruby>謙虚<rt>けんきょ</rt></ruby>やな。また<ruby>一緒<rt>いっしょ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>になったらよろしく。<br>*(Khiêm tốn đấy. Lần sau cùng công trường lại nhờ nhé.)* |
| Thức | はい、こちらこそよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, tôi cũng mong được giúp đỡ ạ.)* |

---

## Tình huống 19 — Phòng thay đồ · 17:15, Nam chia sẻ tiến bộ

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>夕方<rt>ゆうがた</rt></ruby>に<ruby>設備<rt>せつび</rt></ruby>さんに<ruby>自分<rt>じぶん</rt></ruby>から<ruby>挨拶<rt>あいさつ</rt></ruby>できました。<br>*(Anh Thức, chiều em tự chào tổ thiết bị được rồi ạ.)* |
| Thức | お、ええやん。<ruby>相手<rt>あいて</rt></ruby>の<ruby>反応<rt>はんのう</rt></ruby>は?<br>*(Ồ, tốt đấy. Đối phương phản ứng sao?)* |
| Nam | 「<ruby>頑張<rt>がんば</rt></ruby>ってるな」と<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(Họ bảo "cố gắng đấy" ạ.)* |
| Thức | <ruby>挨拶<rt>あいさつ</rt></ruby>ひとつで<ruby>関係<rt>かんけい</rt></ruby>が<ruby>変<rt>か</rt></ruby>わる。ええ<ruby>一歩<rt>いっぽ</rt></ruby>や。<br>*(Một câu chào là quan hệ đổi. Bước tiến tốt đấy.)* |
| Nam | トゥックさんの<ruby>言<rt>い</rt></ruby>う<ruby>通<rt>とお</rt></ruby>りでした。<br>*(Đúng như anh Thức nói ạ.)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>しずつでええ。その<ruby>調子<rt>ちょうし</rt></ruby>や。<br>*(Từ từ là được. Cứ đà đó.)* |

---

## Tình huống 20 — Cổng công trường · 17:25, 親方 tổng kết

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>他<rt>ほか</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>とようやっとるらしいな。<br>*(Thức, nghe nói làm với nhà thầu khác khéo lắm.)* |
| Thức | まだ<ruby>揉<rt>も</rt></ruby>めることもありますが、すぐ<ruby>調整<rt>ちょうせい</rt></ruby>するようにしています。<br>*(Vẫn có lúc va chạm, nhưng em cố điều chỉnh ngay ạ.)* |
| Tanigawa | <ruby>現場<rt>げんば</rt></ruby>は<ruby>一<rt>ひと</rt></ruby>つの<ruby>業者<rt>ぎょうしゃ</rt></ruby>だけでは<ruby>回<rt>まわ</rt></ruby>らん。<ruby>連携<rt>れんけい</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>や。<br>*(Công trường một nhà thầu không chạy được. Phối hợp là sống còn.)* |
| Thức | <ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いは<ruby>勝<rt>か</rt></ruby>ち<ruby>負<rt>ま</rt></ruby>けやないと<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu giao thoa không phải thắng thua ạ.)* |
| Tanigawa | そこに<ruby>気<rt>き</rt></ruby>づいたら<ruby>一人前<rt>いちにんまえ</rt></ruby>や。ええ<ruby>成長<rt>せいちょう</rt></ruby>や。<br>*(Nhận ra điều đó là thành thạo rồi. Tiến bộ tốt.)* |
| Thức | ありがとうございます。<ruby>明日<rt>あした</rt></ruby>も<ruby>連携<rt>れんけい</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Em cảm ơn ạ. Mai em cũng coi trọng phối hợp.)* |

---

## Đọng lại

Trên công trường nhiều nghề cùng làm, Thức học cách điều phối 取り合い — giao thoa không gian và trình tự giữa とび, 鉄筋, 設備. Bài học cốt lõi: giao thoa không phải thắng thua mà là làm cho cả công trường chạy được; xin lỗi và điều chỉnh ngay tốt hơn cố chấp; họp 打合せ 5 phút mỗi sáng giúp cả ngày đỡ rối. Thức cũng dạy Nam giao tiếp liên nghề và che chắn cho đàn em khi bị quát. 現場監督 Ishikawa, 職長 và ĐC tổ thợ sắt đều ghi nhận năng lực phối hợp của Thức.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 取り合い | とりあい | Giao thoa (không gian/công việc liên nghề) |
> | 多職種 | たしょくしゅ | Đa nghề |
> | 鉄筋 | てっきん | Thợ sắt (cốt thép) |
> | 設備 | せつび | Thiết bị (cơ điện) |
> | 配筋 | はいきん | Đặt cốt thép |
> | 配管 | はいかん | Đi ống |
> | 打合せ | うちあわせ | Họp bàn (ngắn) |
> | 連携 | れんけい | Phối hợp, liên kết |
> | 区分 | くぶん | Phân chia (khu vực) |
> | 線引き | せんびき | Kẻ ranh giới |
> | 譲る | ゆずる | Nhường |
> | お互い様 | おたがいさま | Có qua có lại, đôi bên cùng vậy |
> | 合意 | ごうい | Thống nhất, đồng thuận |
> | 工程 | こうてい | Tiến độ, công đoạn |
> | 一人前 | いちにんまえ | Thành thạo, đủ tay nghề |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000007, 800000036, NULL, 'markdown_book', 'T7. Mùa hè — Quản lý phòng say nắng cho cả tổ với tư cách 班長 (夏・熱中症対策)', '# Sách kỹ năng đặc định xây dựng · T7. Mùa hè — Quản lý phòng say nắng cho cả tổ với tư cách 班長 (夏・熱中症対策)

> **Mục tiêu nhân vật:** Thức học cách quản lý phòng chống 熱中症 (say nắng) cho cả tổ ở vai 班長: lập kế hoạch nghỉ-uống nước, theo dõi tình trạng thành viên, xử lý khi có người chớm say nắng, báo cáo 元請.

---

## Bối cảnh

Tháng 8 năm 2029 — cao điểm nắng nóng, nhiệt độ 35 độ, chỉ số WBGT cao. Với tư cách 班長, Thức chịu trách nhiệm an toàn sức khỏe cả tổ: lập lịch nghỉ giải lao, nhắc bổ sung nước-muối, quan sát dấu hiệu say nắng, xử lý sơ cứu ban đầu, báo cáo 現場監督. Chương tập trung mẫu câu chỉ huy về phòng say nắng, hỏi han tình trạng, ra quyết định dừng việc.

---

## Tình huống 1 — Công trường · 7:30, 職長 dặn cảnh giác nắng nóng

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>猛暑<rt>もうしょ</rt></ruby><ruby>日<rt>び</rt></ruby>や。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>に<ruby>特<rt>とく</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけてくれ。<br>*(Thức, hôm nay ngày nắng gắt. Đặc biệt cẩn thận say nắng nhé.)* |
| Thức | はい。WBGTは<ruby>何<rt>なん</rt></ruby><ruby>度<rt>ど</rt></ruby>ですか?<br>*(Vâng. Chỉ số WBGT bao nhiêu độ ạ?)* |
| Saito | <ruby>朝<rt>あさ</rt></ruby>で<ruby>28<rt>にじゅうはち</rt></ruby>や。<ruby>昼<rt>ひる</rt></ruby>は<ruby>31<rt>さんじゅういち</rt></ruby>を<ruby>超<rt>こ</rt></ruby>える。<br>*(Sáng đã 28. Trưa vượt 31.)* |
| Thức | <ruby>31<rt>さんじゅういち</rt></ruby><ruby>超<rt>ちょう</rt></ruby>えは<ruby>危険<rt>きけん</rt></ruby>レベルですね。<ruby>休憩<rt>きゅうけい</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やします。<br>*(Vượt 31 là mức nguy hiểm nhỉ. Em sẽ tăng giải lao ạ.)* |
| Saito | <ruby>班<rt>はん</rt></ruby>の<ruby>体調<rt>たいちょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>や。<ruby>無理<rt>むり</rt></ruby>させるな。<br>*(Quản lý sức khỏe tổ là trách nhiệm cậu. Đừng để ráng sức.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>水分<rt>すいぶん</rt></ruby>と<ruby>塩分<rt>えんぶん</rt></ruby>を<ruby>徹底<rt>てってい</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ quán triệt nước và muối ạ.)* |

---

## Tình huống 2 — KY buổi sáng · 8:00, đưa say nắng vào議題

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>のKYは<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>を<ruby>中心<rt>ちゅうしん</rt></ruby>にします。<br>*(Mọi người, KY hôm nay tập trung phòng say nắng.)* |
| Hùng | <ruby>今日<rt>きょう</rt></ruby>はほんまに<ruby>暑<rt>あつ</rt></ruby>いな。<br>*(Hôm nay nóng thật.)* |
| Thức | <ruby>休憩<rt>きゅうけい</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ごとに<ruby>10分<rt>じゅっぷん</rt></ruby><ruby>取<rt>と</rt></ruby>ります。<ruby>水分<rt>すいぶん</rt></ruby>はこまめに。<br>*(Giải lao mỗi giờ 10 phút. Nước uống thường xuyên.)* |
| Sasaki | <ruby>塩<rt>しお</rt></ruby>タブレットも<ruby>用意<rt>ようい</rt></ruby>してありますね。<br>*(Viên muối cũng đã chuẩn bị nhỉ.)* |
| Thức | はい。<ruby>体調<rt>たいちょう</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いと<ruby>感<rt>かん</rt></ruby>じたら、すぐ<ruby>言<rt>い</rt></ruby>ってください。<ruby>我慢<rt>がまん</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です。<br>*(Vâng. Thấy không khỏe thì nói ngay. Cấm chịu đựng.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi ạ.)* |

---

## Tình huống 3 — Công trường · 9:00, kiểm tra tình trạng từng người

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>体調<rt>たいちょう</rt></ruby>はどう?<ruby>顔色<rt>かおいろ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させて。<br>*(Nam, sức khỏe sao? Để anh xem sắc mặt.)* |
| Nam | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>水<rt>みず</rt></ruby>も<ruby>飲<rt>の</rt></ruby>んでいます。<br>*(Em ổn ạ. Em uống nước rồi ạ.)* |
| Thức | <ruby>汗<rt>あせ</rt></ruby>は<ruby>出<rt>で</rt></ruby>てるか?<ruby>汗<rt>あせ</rt></ruby>が<ruby>止<rt>と</rt></ruby>まったら<ruby>危<rt>あぶ</rt></ruby>ない<ruby>合図<rt>あいず</rt></ruby>や。<br>*(Có ra mồ hôi không? Mồ hôi ngừng là dấu hiệu nguy hiểm.)* |
| Nam | <ruby>汗<rt>あせ</rt></ruby>はしっかり<ruby>出<rt>で</rt></ruby>ています。<br>*(Mồ hôi ra nhiều ạ.)* |
| Thức | ええことや。<ruby>次<rt>つぎ</rt></ruby>の<ruby>休憩<rt>きゅうけい</rt></ruby>でも<ruby>必<rt>かなら</rt></ruby>ず<ruby>水分<rt>すいぶん</rt></ruby>な。<br>*(Tốt rồi. Giải lao tới cũng nhất định uống nước nhé.)* |
| Nam | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý ạ.)* |

---

## Tình huống 4 — Công trường · 10:00, hô giải lao bắt buộc

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>休憩<rt>きゅうけい</rt></ruby>です!<ruby>日陰<rt>ひかげ</rt></ruby>に<ruby>移動<rt>いどう</rt></ruby>してください。<br>*(Mọi người, giải lao! Di chuyển vào bóng râm.)* |
| Hùng | まだいけるで。<ruby>続<rt>つづ</rt></ruby>けてもええんちゃう?<br>*(Còn làm được. Làm tiếp được chứ?)* |
| Thức | だめや。<ruby>調子<rt>ちょうし</rt></ruby>がええときこそ<ruby>休<rt>やす</rt></ruby>む。それが<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>や。<br>*(Không được. Lúc khỏe nhất mới nghỉ. Đó là phòng say nắng.)* |
| Hùng | …<ruby>分<rt>わ</rt></ruby>かった。<ruby>班長<rt>はんちょう</rt></ruby>がそう<ruby>言<rt>い</rt></ruby>うなら<ruby>従<rt>したが</rt></ruby>うわ。<br>*(…Hiểu rồi. 班長 nói vậy thì nghe theo.)* |
| Thức | <ruby>全員<rt>ぜんいん</rt></ruby><ruby>水<rt>みず</rt></ruby>とタブレット。<ruby>10分<rt>じゅっぷん</rt></ruby>しっかり<ruby>休<rt>やす</rt></ruby>もう。<br>*(Cả tổ nước và viên muối. Nghỉ đủ 10 phút nào.)* |
| Sasaki | はい、<ruby>従<rt>したが</rt></ruby>います。<br>*(Vâng, em nghe theo ạ.)* |

---

## Tình huống 5 — Lều nghỉ · 10:05, nhắc nhở uống nước đúng cách

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>水<rt>みず</rt></ruby>は<ruby>一気<rt>いっき</rt></ruby>に<ruby>飲<rt>の</rt></ruby>んでもいいですか?<br>*(Anh Thức, nước uống một hơi được không ạ?)* |
| Thức | <ruby>一気<rt>いっき</rt></ruby><ruby>飲<rt>の</rt></ruby>みはあかん。<ruby>少<rt>すこ</rt></ruby>しずつ、<ruby>何回<rt>なんかい</rt></ruby>もや。<br>*(Uống một hơi không được. Từng chút, nhiều lần.)* |
| Nam | どうしてですか?<br>*(Vì sao ạ?)* |
| Thức | <ruby>一気<rt>いっき</rt></ruby>に<ruby>飲<rt>の</rt></ruby>むと<ruby>体<rt>からだ</rt></ruby>に<ruby>吸収<rt>きゅうしゅう</rt></ruby>されにくいんや。<ruby>塩分<rt>えんぶん</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>取<rt>と</rt></ruby>る。<br>*(Uống một hơi thì cơ thể khó hấp thụ. Bổ sung cả muối nữa.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。スポーツドリンクもありますね。<br>*(Em hiểu rồi. Có cả nước thể thao nhỉ.)* |
| Thức | そう。<ruby>水<rt>みず</rt></ruby>とドリンクを<ruby>交互<rt>こうご</rt></ruby>にな。<ruby>飲<rt>の</rt></ruby>みすぎもよくない。<br>*(Đúng. Nước và nước thể thao xen kẽ nhé. Uống quá nhiều cũng không tốt.)* |

---

## Tình huống 6 — Công trường · 11:00, phát hiện Sasaki có dấu hiệu lạ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>い。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か?<br>*(Sasaki, sắc mặt xấu. Ổn không?)* |
| Sasaki | …<ruby>少<rt>すこ</rt></ruby>し<ruby>頭<rt>あたま</rt></ruby>が<ruby>痛<rt>いた</rt></ruby>くて、ふらつきます。<br>*(…Hơi đau đầu, choáng váng ạ.)* |
| Thức | それは<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>の<ruby>初期<rt>しょき</rt></ruby><ruby>症状<rt>しょうじょう</rt></ruby>や。すぐ<ruby>作業<rt>さぎょう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>。<br>*(Đó là triệu chứng say nắng giai đoạn đầu. Dừng việc ngay.)* |
| Sasaki | でも<ruby>仕事<rt>しごと</rt></ruby>が…<br>*(Nhưng còn việc…)* |
| Thức | <ruby>仕事<rt>しごと</rt></ruby>より<ruby>体<rt>からだ</rt></ruby>や。<ruby>日陰<rt>ひかげ</rt></ruby>で<ruby>横<rt>よこ</rt></ruby>になって。すぐ<ruby>冷<rt>ひ</rt></ruby>やす。<br>*(Sức khỏe hơn công việc. Vào bóng râm nằm. Làm mát ngay.)* |
| Sasaki | …はい、すみません。<br>*(…Vâng, em xin lỗi ạ.)* |

---

## Tình huống 7 — Lều nghỉ · 11:05, xử lý sơ cứu

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>保冷<rt>ほれい</rt></ruby><ruby>剤<rt>ざい</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきて。<ruby>首<rt>くび</rt></ruby>と<ruby>脇<rt>わき</rt></ruby>を<ruby>冷<rt>ひ</rt></ruby>やす。<br>*(Nam, lấy túi đá lạnh. Làm mát cổ và nách.)* |
| Nam | はい、すぐ<ruby>持<rt>も</rt></ruby>ってきます。<br>*(Vâng, em lấy ngay ạ.)* |
| Thức | <ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>水<rt>みず</rt></ruby><ruby>飲<rt>の</rt></ruby>めますか?ゆっくりでいいです。<br>*(Sasaki, uống nước được không? Từ từ cũng được.)* |
| Sasaki | …はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>飲<rt>の</rt></ruby>めます。<br>*(…Vâng, uống được chút ạ.)* |
| Thức | <ruby>意識<rt>いしき</rt></ruby>ははっきりしてるな。フンさん、<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>して。<br>*(Ý thức rõ ràng đấy. Hùng, liên lạc đốc công.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>、すぐ<ruby>呼<rt>よ</rt></ruby>んでくる。<br>*(Rõ, gọi ngay.)* |

---

## Tình huống 8 — Lều nghỉ · 11:10, báo 現場監督 Ishikawa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>佐々木<rt>ささき</rt></ruby>さんが<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>の<ruby>疑<rt>うたが</rt></ruby>いです。<br>*(Anh Ishikawa, báo cáo khẩn. Sasaki nghi say nắng ạ.)* |
| Ishikawa | <ruby>意識<rt>いしき</rt></ruby>はあるか?<ruby>状態<rt>じょうたい</rt></ruby>は?<br>*(Còn ý thức không? Tình trạng sao?)* |
| Thức | <ruby>意識<rt>いしき</rt></ruby>はあります。<ruby>頭痛<rt>ずつう</rt></ruby>とふらつきで、<ruby>今<rt>いま</rt></ruby><ruby>日陰<rt>ひかげ</rt></ruby>で<ruby>冷<rt>ひ</rt></ruby>やしています。<br>*(Còn ý thức ạ. Đau đầu và choáng, hiện đang làm mát trong bóng râm ạ.)* |
| Ishikawa | <ruby>水分<rt>すいぶん</rt></ruby>は<ruby>取<rt>と</rt></ruby>れてるか?<ruby>回復<rt>かいふく</rt></ruby>しなければ<ruby>救急<rt>きゅうきゅう</rt></ruby>や。<br>*(Uống nước được không? Không hồi phục thì gọi cấp cứu.)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>しずつ<ruby>飲<rt>の</rt></ruby>めています。<ruby>15分<rt>じゅうごふん</rt></ruby><ruby>様子<rt>ようす</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、また<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Uống được từng chút ạ. Theo dõi 15 phút em báo lại ạ.)* |
| Ishikawa | <ruby>判断<rt>はんだん</rt></ruby>がしっかりしとる。<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Phán đoán chắc đấy. Nhờ nhé.)* |

---

## Tình huống 9 — Lều nghỉ · 11:25, theo dõi hồi phục

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>頭痛<rt>ずつう</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になりましたか?<br>*(Sasaki, đau đầu đỡ chút chưa?)* |
| Sasaki | はい、だいぶ<ruby>楽<rt>らく</rt></ruby>になりました。<ruby>冷<rt>ひ</rt></ruby>やしたのが<ruby>効<rt>き</rt></ruby>きました。<br>*(Vâng, đỡ nhiều rồi ạ. Làm mát có tác dụng ạ.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>はせんでええ。<ruby>今日<rt>きょう</rt></ruby>はもう<ruby>現場<rt>げんば</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>はなしや。<br>*(Đừng ráng. Hôm nay nghỉ việc công trường.)* |
| Sasaki | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないです。<ruby>班<rt>はん</rt></ruby>に<ruby>迷惑<rt>めいわく</rt></ruby>を…<br>*(Em xin lỗi ạ. Gây phiền cho tổ…)* |
| Thức | <ruby>気<rt>き</rt></ruby>にすんな。<ruby>無理<rt>むり</rt></ruby>して<ruby>倒<rt>たお</rt></ruby>れるほうが<ruby>迷惑<rt>めいわく</rt></ruby>や。<ruby>回復<rt>かいふく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>や。<br>*(Đừng để tâm. Ráng mà gục mới phiền. Ưu tiên hồi phục.)* |
| Sasaki | …ありがとうございます。<br>*(…Em cảm ơn ạ.)* |

---

## Tình huống 10 — Nghỉ trưa · 12:20, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, sáng nay anh em em chớm say nắng. Em cho dừng việc luôn, hơi căng. |
| Long | Làm đúng rồi. Say nắng nặng là chết người đấy, đừng tiếc tiến độ. |
| Thức | Em sợ nhất lúc phải quyết "dừng hay không". Trễ một chút là nguy. |
| Long | 班長 mà. Sức khỏe anh em đặt lên trước. 元請 không trách em vì dừng đâu, trách nếu để người gục. |
| Thức | Vâng. Em báo 石川 đầy đủ, theo dõi 15 phút mới quyết tiếp. |
| Long | Bài bản đấy. Em làm vậy là anh em tin tưởng giao mạng cho em được. |

---

## Tình huống 11 — Công trường · 13:00, điều chỉnh giờ làm tránh nắng đỉnh

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby>は<ruby>一番<rt>いちばん</rt></ruby><ruby>暑<rt>あつ</rt></ruby>い<ruby>2時<rt>にじ</rt></ruby>から<ruby>3時<rt>さんじ</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けたいです。<br>*(Đốc công, buổi chiều em muốn tránh 2 đến 3 giờ nóng nhất ạ.)* |
| Saito | どう<ruby>組<rt>く</rt></ruby>みたい?<br>*(Định sắp thế nào?)* |
| Thức | その<ruby>時間<rt>じかん</rt></ruby>は<ruby>日陰<rt>ひかげ</rt></ruby>での<ruby>資材<rt>しざい</rt></ruby><ruby>整理<rt>せいり</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え、<ruby>高所<rt>こうしょ</rt></ruby>は<ruby>3時<rt>さんじ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>にします。<br>*(Giờ đó chuyển sang dọn vật tư trong bóng râm, việc trên cao từ sau 3 giờ ạ.)* |
| Saito | ええ<ruby>判断<rt>はんだん</rt></ruby>や。<ruby>無理<rt>むり</rt></ruby>に<ruby>炎天下<rt>えんてんか</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>させんでええ。<br>*(Quyết định tốt. Không cần ráng làm dưới nắng gắt.)* |
| Thức | <ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>夕方<rt>ゆうがた</rt></ruby><ruby>涼<rt>すず</rt></ruby>しくなってから<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>します。<br>*(Tiến độ em bù lại lúc chiều mát ạ.)* |
| Saito | <ruby>安全<rt>あんぜん</rt></ruby>と<ruby>工程<rt>こうてい</rt></ruby>の<ruby>両方<rt>りょうほう</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えとるな。<ruby>立派<rt>りっぱ</rt></ruby>や。<br>*(Tính cả an toàn lẫn tiến độ đấy. Giỏi.)* |

---

## Tình huống 12 — Công trường · 13:30, công bố lịch điều chỉnh cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>午後<rt>ごご</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>変<rt>か</rt></ruby>えます。<ruby>2時<rt>にじ</rt></ruby>から<ruby>3時<rt>さんじ</rt></ruby>は<ruby>日陰<rt>ひかげ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>です。<br>*(Mọi người, đổi bố trí buổi chiều. 2 đến 3 giờ làm trong bóng râm.)* |
| Hùng | <ruby>暑<rt>あつ</rt></ruby>い<ruby>盛<rt>さか</rt></ruby>りは<ruby>外<rt>はず</rt></ruby>すんやな。<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(Tránh lúc nóng đỉnh nhỉ. Đỡ quá.)* |
| Thức | そう。<ruby>高所<rt>こうしょ</rt></ruby>は<ruby>3時<rt>さんじ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>。<ruby>命<rt>いのち</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>や。<br>*(Đúng. Việc trên cao sau 3 giờ. Ưu tiên tính mạng.)* |
| Nam | <ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Tiến độ ổn không ạ?)* |
| Thức | <ruby>夕方<rt>ゆうがた</rt></ruby><ruby>涼<rt>すず</rt></ruby>しくなったら<ruby>集中<rt>しゅうちゅう</rt></ruby>してやる。<ruby>無理<rt>むり</rt></ruby>はせん。<br>*(Chiều mát thì làm tập trung. Không ráng.)* |
| Sasaki | <ruby>体<rt>からだ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>段取<rt>だんど</rt></ruby>りですね。<br>*(Bố trí bảo vệ sức khỏe nhỉ.)* |

---

## Tình huống 13 — Công trường · 14:30, dạy Nam nhận biết dấu hiệu say nắng

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>のサインはどう<ruby>見分<rt>みわ</rt></ruby>けますか?<br>*(Anh Thức, dấu hiệu say nắng nhận biết thế nào ạ?)* |
| Thức | まず<ruby>顔色<rt>かおいろ</rt></ruby>。<ruby>赤<rt>あか</rt></ruby>すぎても<ruby>青白<rt>あおじろ</rt></ruby>すぎても<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Trước hết sắc mặt. Đỏ quá hay tái quá đều nguy.)* |
| Nam | <ruby>他<rt>ほか</rt></ruby>には?<br>*(Còn gì nữa ạ?)* |
| Thức | <ruby>受<rt>う</rt></ruby>け<ruby>答<rt>こた</rt></ruby>えがおかしい、<ruby>汗<rt>あせ</rt></ruby>が<ruby>急<rt>きゅう</rt></ruby>に<ruby>止<rt>と</rt></ruby>まる、まっすぐ<ruby>歩<rt>ある</rt></ruby>けへん。これは<ruby>危険<rt>きけん</rt></ruby><ruby>信号<rt>しんごう</rt></ruby>や。<br>*(Trả lời lạ, mồ hôi đột ngột ngừng, đi không thẳng. Đó là tín hiệu nguy hiểm.)* |
| Nam | <ruby>気<rt>き</rt></ruby>づいたらどうすればいいですか?<br>*(Phát hiện thì làm sao ạ?)* |
| Thức | すぐ<ruby>俺<rt>おれ</rt></ruby>に<ruby>言<rt>い</rt></ruby>え。<ruby>判断<rt>はんだん</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>がする。<ruby>遠慮<rt>えんりょ</rt></ruby>するな。<br>*(Báo anh ngay. Quyết định để anh. Đừng ngại.)* |

---

## Tình huống 14 — Công trường · 15:30, nhắc Hùng không ráng sức

| Vai | Lời thoại |
|---|---|
| Thức | フンさん、<ruby>汗<rt>あせ</rt></ruby>すごいな。<ruby>水<rt>みず</rt></ruby><ruby>飲<rt>の</rt></ruby>んだか?<br>*(Hùng, mồ hôi nhiều thế. Uống nước chưa?)* |
| Hùng | <ruby>飲<rt>の</rt></ruby>んだけど…ちょっとだるいかな。<br>*(Uống rồi… hơi uể oải.)* |
| Thức | だるいは<ruby>初期<rt>しょき</rt></ruby>サインや。<ruby>10分<rt>じゅっぷん</rt></ruby><ruby>休<rt>やす</rt></ruby>め。<ruby>無理<rt>むり</rt></ruby>すんな。<br>*(Uể oải là dấu hiệu đầu. Nghỉ 10 phút. Đừng ráng.)* |
| Hùng | <ruby>同期<rt>どうき</rt></ruby>やのに<ruby>休<rt>やす</rt></ruby>めとか、<ruby>厳<rt>きび</rt></ruby>しいな。<br>*(Đồng kỳ mà bắt nghỉ, nghiêm đấy.)* |
| Thức | <ruby>同期<rt>どうき</rt></ruby>やからこそ<ruby>倒<rt>たお</rt></ruby>れてほしくない。<ruby>頼<rt>たの</rt></ruby>むから<ruby>休<rt>やす</rt></ruby>め。<br>*(Đồng kỳ nên tôi không muốn cậu gục. Xin cậu nghỉ đi.)* |
| Hùng | …<ruby>分<rt>わ</rt></ruby>かった。<ruby>言<rt>い</rt></ruby>うこと<ruby>聞<rt>き</rt></ruby>くわ。<br>*(…Hiểu rồi. Tao nghe.)* |

---

## Tình huống 15 — Công trường · 16:00, Ishikawa kiểm tra phòng say nắng

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>佐々木<rt>ささき</rt></ruby>さんはどうですか?<br>*(Anh Thức, Sasaki sao rồi?)* |
| Thức | <ruby>回復<rt>かいふく</rt></ruby>しました。<ruby>今日<rt>きょう</rt></ruby>は<ruby>軽<rt>かる</rt></ruby>い<ruby>作業<rt>さぎょう</rt></ruby>だけにして、<ruby>早<rt>はや</rt></ruby>めに<ruby>帰<rt>かえ</rt></ruby>します。<br>*(Hồi phục rồi ạ. Hôm nay chỉ việc nhẹ và cho về sớm ạ.)* |
| Ishikawa | <ruby>賢明<rt>けんめい</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>です。<ruby>班<rt>はん</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>は?<br>*(Quyết định sáng suốt. Cả tổ thì sao?)* |
| Thức | <ruby>休憩<rt>きゅうけい</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やし、<ruby>炎天下<rt>えんてんか</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>避<rt>さ</rt></ruby>けたので<ruby>他<rt>ほか</rt></ruby>に<ruby>異常<rt>いじょう</rt></ruby>はありません。<br>*(Em tăng giải lao, tránh làm dưới nắng gắt nên không ai bất thường nữa ạ.)* |
| Ishikawa | <ruby>外国人<rt>がいこくじん</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>でここまで<ruby>体調<rt>たいちょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>できる<ruby>人<rt>ひと</rt></ruby>は<ruby>頼<rt>たの</rt></ruby>もしい。<br>*(班長 người nước ngoài mà quản lý sức khỏe tới vậy thì đáng tin.)* |
| Thức | <ruby>班<rt>はん</rt></ruby>のみんなを<ruby>守<rt>まも</rt></ruby>るのが<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>ですから。<br>*(Vì bảo vệ cả tổ là việc của 班長 ạ.)* |

---

## Tình huống 16 — Công trường · 16:30, dồn việc lúc chiều mát

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>涼<rt>すず</rt></ruby>しくなってきました。ここから<ruby>集中<rt>しゅうちゅう</rt></ruby>して<ruby>進<rt>すす</rt></ruby>めましょう。<br>*(Mọi người, mát hơn rồi. Từ đây làm tập trung nào.)* |
| Hùng | <ruby>休<rt>やす</rt></ruby>んだ<ruby>分<rt>ぶん</rt></ruby><ruby>体<rt>からだ</rt></ruby>が<ruby>軽<rt>かる</rt></ruby>いわ。<br>*(Nghỉ rồi nên người nhẹ nhõm.)* |
| Thức | そう。<ruby>無理<rt>むり</rt></ruby>に<ruby>暑<rt>あつ</rt></ruby>い<ruby>中<rt>なか</rt></ruby>でやるより、<ruby>涼<rt>すず</rt></ruby>しい<ruby>時<rt>とき</rt></ruby>に<ruby>一気<rt>いっき</rt></ruby>にやるほうが<ruby>効率<rt>こうりつ</rt></ruby>ええ。<br>*(Đúng. Hơn là ráng làm lúc nóng, làm dồn lúc mát hiệu quả hơn.)* |
| Nam | <ruby>体<rt>からだ</rt></ruby>も<ruby>守<rt>まも</rt></ruby>れて<ruby>仕事<rt>しごと</rt></ruby>も<ruby>進<rt>すす</rt></ruby>む、<ruby>一石二鳥<rt>いっせきにちょう</rt></ruby>ですね。<br>*(Vừa giữ sức vừa tiến việc, một công đôi việc nhỉ.)* |
| Thức | その<ruby>通<rt>とお</rt></ruby>り。<ruby>残<rt>のこ</rt></ruby>り<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Đúng vậy. Còn 1 tiếng, an toàn mà cố lên nào.)* |
| Sasaki | はい!<br>*(Vâng!)* |

---

## Tình huống 17 — Văn phòng · 17:00, báo cáo cuối ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>佐々木<rt>ささき</rt></ruby>さんの<ruby>件<rt>けん</rt></ruby>以外<ruby>無事<rt>ぶじ</rt></ruby>です。<br>*(Đốc công, báo cáo hôm nay. Ngoài vụ Sasaki thì an toàn ạ.)* |
| Saito | <ruby>佐々木<rt>ささき</rt></ruby>はもう<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か?<br>*(Sasaki ổn chưa?)* |
| Thức | はい、<ruby>回復<rt>かいふく</rt></ruby>しました。<ruby>明日<rt>あした</rt></ruby>は<ruby>体調<rt>たいちょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>軽<rt>かる</rt></ruby>めに<ruby>配置<rt>はいち</rt></ruby>します。<br>*(Vâng, hồi phục rồi. Mai xem sức khỏe em bố trí nhẹ ạ.)* |
| Saito | <ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>遅<rt>おく</rt></ruby>れたか?<br>*(Tiến độ chậm không?)* |
| Thức | <ruby>涼<rt>すず</rt></ruby>しい<ruby>時間<rt>じかん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>したので<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Em làm dồn lúc mát nên đúng kế hoạch ạ.)* |
| Saito | <ruby>安全<rt>あんぜん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>って<ruby>工程<rt>こうてい</rt></ruby>も<ruby>守<rt>まも</rt></ruby>った。<ruby>満点<rt>まんてん</rt></ruby>の<ruby>班長<rt>はんちょう</rt></ruby><ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Vừa giữ an toàn vừa giữ tiến độ. Việc 班長 điểm tuyệt đối.)* |

---

## Tình huống 18 — Lều nghỉ · 17:10, Sasaki cảm ơn

| Vai | Lời thoại |
|---|---|
| Sasaki | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Thức, hôm nay thật sự cảm ơn anh ạ.)* |
| Thức | <ruby>無事<rt>ぶじ</rt></ruby>でよかった。それが<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(May là không sao. Đó là nhất.)* |
| Sasaki | <ruby>判断<rt>はんだん</rt></ruby>が<ruby>早<rt>はや</rt></ruby>かったから<ruby>軽<rt>かる</rt></ruby>く<ruby>済<rt>す</rt></ruby>んだと<ruby>医者<rt>いしゃ</rt></ruby>に<ruby>言<rt>い</rt></ruby>われました。<br>*(Bác sĩ bảo nhờ quyết định nhanh nên nhẹ ạ.)* |
| Thức | <ruby>早<rt>はや</rt></ruby>めに<ruby>言<rt>い</rt></ruby>ってくれた<ruby>佐々木<rt>ささき</rt></ruby>さんも<ruby>偉<rt>えら</rt></ruby>い。<ruby>我慢<rt>がまん</rt></ruby>せんかったのがよかった。<br>*(Sasaki báo sớm cũng giỏi. Không cố chịu là tốt.)* |
| Sasaki | これからは<ruby>無理<rt>むり</rt></ruby>せず、すぐ<ruby>言<rt>い</rt></ruby>います。<br>*(Từ giờ em không ráng, sẽ báo ngay ạ.)* |
| Thức | それでええ。お<ruby>大事<rt>だいじ</rt></ruby>に。<ruby>明日<rt>あした</rt></ruby><ruby>無理<rt>むり</rt></ruby>すんなよ。<br>*(Vậy là được. Giữ sức khỏe. Mai đừng ráng nhé.)* |

---

## Tình huống 19 — Công trường · 17:15, dặn tổ chuẩn bị mai cũng nắng

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>明日<rt>あした</rt></ruby>も<ruby>猛暑<rt>もうしょ</rt></ruby>の<ruby>予報<rt>よほう</rt></ruby>です。<ruby>今日<rt>きょう</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>体制<rt>たいせい</rt></ruby>でいきます。<br>*(Mọi người, mai cũng dự báo nắng gắt. Làm theo chế độ như hôm nay.)* |
| Hùng | <ruby>休憩<rt>きゅうけい</rt></ruby><ruby>多<rt>おお</rt></ruby>めやな。<ruby>了解<rt>りょうかい</rt></ruby>や。<br>*(Giải lao nhiều nhỉ. Rõ.)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>のうちに<ruby>水<rt>みず</rt></ruby>とタブレットを<ruby>多<rt>おお</rt></ruby>めに<ruby>準備<rt>じゅんび</rt></ruby>してください。<br>*(Buổi sáng chuẩn bị dư nước và viên muối nhé.)* |
| Nam | <ruby>保冷<rt>ほれい</rt></ruby><ruby>剤<rt>ざい</rt></ruby>も<ruby>補充<rt>ほじゅう</rt></ruby>しておきます。<br>*(Em cũng bổ sung túi đá lạnh ạ.)* |
| Thức | ええ<ruby>気<rt>き</rt></ruby>づきや。<ruby>備<rt>そな</rt></ruby>えあれば<ruby>憂<rt>うれ</rt></ruby>いなしや。<br>*(Để ý tốt. Có chuẩn bị thì không lo.)* |
| Sasaki | <ruby>明日<rt>あした</rt></ruby>も<ruby>無理<rt>むり</rt></ruby>せず<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Mai cũng không ráng mà cố nhé.)* |

---

## Tình huống 20 — Cổng công trường · 17:25, 親方 ghi nhận

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>佐々木<rt>ささき</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>、<ruby>早<rt>はや</rt></ruby>かったらしいな。<br>*(Thức, xử lý vụ Sasaki nghe nói nhanh đấy.)* |
| Thức | <ruby>初期<rt>しょき</rt></ruby><ruby>症状<rt>しょうじょう</rt></ruby>のうちに<ruby>気<rt>き</rt></ruby>づけたのが<ruby>大<rt>おお</rt></ruby>きかったです。<br>*(May là phát hiện lúc triệu chứng còn đầu ạ.)* |
| Tanigawa | <ruby>夏<rt>なつ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>は<ruby>命<rt>いのち</rt></ruby><ruby>取<rt>と</rt></ruby>りや。<ruby>班長<rt>はんちょう</rt></ruby>が<ruby>目<rt>め</rt></ruby>を<ruby>配<rt>くば</rt></ruby>れるかどうかや。<br>*(Công trường mùa hè chết người. Là chuyện 班長 có để mắt hay không.)* |
| Thức | <ruby>全員<rt>ぜんいん</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby>に<ruby>帰<rt>かえ</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em nghĩ đưa cả tổ về an toàn là việc quan trọng nhất ạ.)* |
| Tanigawa | ええ<ruby>心構<rt>こころがま</rt></ruby>えや。お<ruby>前<rt>まえ</rt></ruby>に<ruby>班<rt>はん</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せて<ruby>正解<rt>せいかい</rt></ruby>やった。<br>*(Tinh thần tốt. Giao tổ cho cậu là đúng.)* |
| Thức | ありがとうございます。<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かず<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Em cảm ơn ạ. Em sẽ không lơ là, làm tiếp ạ.)* |

---

## Đọng lại

Cao điểm nắng nóng, Thức gánh trách nhiệm sức khỏe cả tổ với tư cách 班長: lập lịch giải lao bắt buộc, nhắc uống nước-muối đúng cách, điều chỉnh giờ làm tránh nắng đỉnh. Khi Sasaki chớm say nắng, Thức quyết đoán dừng việc, sơ cứu (làm mát cổ-nách), báo cáo 現場監督 đầy đủ và theo dõi đến khi hồi phục — được bác sĩ đánh giá là xử lý kịp thời. Bài học: "lúc khỏe nhất mới nghỉ", sức khỏe trên tiến độ, và 班長 phải để mắt từng người. 親方 khẳng định giao tổ cho Thức là đúng.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 熱中症 | ねっちゅうしょう | Say nắng |
> | 猛暑日 | もうしょび | Ngày nắng gắt (trên 35 độ) |
> | 水分補給 | すいぶんほきゅう | Bổ sung nước |
> | 塩分 | えんぶん | Muối (lượng muối) |
> | 初期症状 | しょきしょうじょう | Triệu chứng giai đoạn đầu |
> | 保冷剤 | ほれいざい | Túi đá làm mát |
> | 救急 | きゅうきゅう | Cấp cứu |
> | 体調管理 | たいちょうかんり | Quản lý sức khỏe |
> | 炎天下 | えんてんか | Dưới nắng gắt |
> | 我慢禁止 | がまんきんし | Cấm cố chịu đựng |
> | 顔色 | かおいろ | Sắc mặt |
> | 回復 | かいふく | Hồi phục |
> | 賢明 | けんめい | Sáng suốt |
> | 一石二鳥 | いっせきにちょう | Một công đôi việc |
> | 備えあれば憂いなし | そなえあればうれいなし | Có chuẩn bị thì không lo |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000008, 800000036, NULL, 'markdown_book', 'T8. Đàn em Nam mắc lỗi — Thức xử lý thay vì để 親方 mắng (ナムの失敗)', '# Sách kỹ năng đặc định xây dựng · T8. Đàn em Nam mắc lỗi — Thức xử lý thay vì để 親方 mắng (ナムの失敗)

> **Mục tiêu nhân vật:** Đàn em TTS Nam mắc lỗi nghiêm trọng (lắp sai khiến phải làm lại). Thức học cách của một 班長: nhận trách nhiệm thay tổ, dạy lại đàn em, báo cáo trung thực với cấp trên, biến lỗi thành bài học thay vì đổ tội.

---

## Bối cảnh

Tháng 10 năm 2029. Nam (đàn em TTS Việt Thức kèm) lắp sai cao độ một tầng giàn giáo do đọc nhầm bản vẽ, phải tháo làm lại nửa ngày. Với tư cách 班長, Thức chọn cách đứng ra nhận trách nhiệm với 親方, không để Nam bị mắng trực tiếp, sau đó dạy lại Nam và xây quy trình kiểm tra chéo. Chương tập trung mẫu câu nhận lỗi, báo cáo sự cố, hướng dẫn sửa sai, bảo vệ đàn em đúng cách.

---

## Tình huống 1 — Công trường · 9:00, Nam phát hiện mình lắp sai

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん…<ruby>大変<rt>たいへん</rt></ruby>です。<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さが<ruby>違<rt>ちが</rt></ruby>うかもしれません。<br>*(Anh Thức… nguy rồi. Cao độ tầng 3 có thể sai ạ.)* |
| Thức | <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>け。どこが<ruby>違<rt>ちが</rt></ruby>う?<ruby>図面<rt>ずめん</rt></ruby>と<ruby>照<rt>て</rt></ruby>らそう。<br>*(Bình tĩnh. Sai chỗ nào? Đối chiếu bản vẽ nào.)* |
| Nam | <ruby>図面<rt>ずめん</rt></ruby>は<ruby>1800<rt>せんはっぴゃく</rt></ruby>ですが、<ruby>組<rt>く</rt></ruby>んだのは<ruby>1900<rt>せんきゅうひゃく</rt></ruby>でした。<br>*(Bản vẽ là 1800 nhưng em dựng 1900 ạ.)* |
| Thức | <ruby>100<rt>ひゃく</rt></ruby>ミリ<ruby>差<rt>さ</rt></ruby>か。…<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>ってくれてよかった。<br>*(Lệch 100 mm à. …May là em nói thật.)* |
| Nam | <ruby>本当<rt>ほんとう</rt></ruby>にすみません。どうしたら…<br>*(Em thật sự xin lỗi. Phải làm sao ạ…)* |
| Thức | まず<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する。<ruby>慌<rt>あわ</rt></ruby>てるな。<br>*(Trước hết xác nhận tình hình. Đừng cuống.)* |

---

## Tình huống 2 — Công trường · 9:10, đánh giá mức độ ảnh hưởng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>が<ruby>100<rt>ひゃく</rt></ruby>ミリ<ruby>高<rt>たか</rt></ruby>く<ruby>組<rt>く</rt></ruby>まれています。<ruby>影響<rt>えいきょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。<br>*(Đàn anh Kondo, tầng 3 dựng cao 100 mm. Anh xem ảnh hưởng giúp ạ.)* |
| Kondo | <ruby>100<rt>ひゃく</rt></ruby>か…<ruby>4<rt>よん</rt></ruby><ruby>5層<rt>ごそう</rt></ruby>も<ruby>全部<rt>ぜんぶ</rt></ruby>ずれるな。<br>*(100 à… tầng 4, 5 cũng lệch hết nhỉ.)* |
| Thức | やはり<ruby>上<rt>うえ</rt></ruby>まで<ruby>影響<rt>えいきょう</rt></ruby>しますか。<br>*(Vẫn ảnh hưởng lên trên ạ?)* |
| Kondo | する。<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>からやり<ruby>直<rt>なお</rt></ruby>すしかない。<ruby>半日<rt>はんにち</rt></ruby>はかかるで。<br>*(Có. Phải làm lại từ tầng 3. Mất nửa ngày đấy.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em hiểu rồi. Em báo cáo đốc công ạ.)* |
| Kondo | <ruby>隠<rt>かく</rt></ruby>さんと<ruby>報告<rt>ほうこく</rt></ruby>するのは<ruby>正<rt>ただ</rt></ruby>しい。<ruby>早<rt>はや</rt></ruby>いほうがええ。<br>*(Không giấu mà báo cáo là đúng. Sớm thì hơn.)* |

---

## Tình huống 3 — Công trường · 9:15, Thức trấn an Nam trước khi báo cáo

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>僕<rt>ぼく</rt></ruby>が<ruby>親方<rt>おやかた</rt></ruby>に<ruby>謝<rt>あやま</rt></ruby>りに<ruby>行<rt>い</rt></ruby>きます。<br>*(Anh Thức, em sẽ đi xin lỗi cai ạ.)* |
| Thức | いや、<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>行<rt>い</rt></ruby>く。<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>や。<br>*(Không, báo cáo để anh đi. Là trách nhiệm 班長.)* |
| Nam | でも<ruby>僕<rt>ぼく</rt></ruby>が<ruby>間違<rt>まちが</rt></ruby>えたんです。<br>*(Nhưng em làm sai mà ạ.)* |
| Thức | お<ruby>前<rt>まえ</rt></ruby>のチェックを<ruby>仕組<rt>しく</rt></ruby>みにしてなかった<ruby>俺<rt>おれ</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>でもある。<br>*(Không lập quy trình kiểm tra cho em cũng là trách nhiệm của anh.)* |
| Nam | …<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ないです。<br>*(…Em xin lỗi ạ.)* |
| Thức | <ruby>謝<rt>あやま</rt></ruby>るより、なぜ<ruby>間違<rt>まちが</rt></ruby>えたか<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えよう。それが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Hơn là xin lỗi, cùng nghĩ vì sao sai. Cái đó mới quan trọng.)* |

---

## Tình huống 4 — Văn phòng · 9:25, Thức báo cáo 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>足場<rt>あしば</rt></ruby>の<ruby>施工<rt>せこう</rt></ruby>ミスです。<br>*(Đốc công, em có báo cáo. Lỗi thi công giàn giáo ạ.)* |
| Saito | ミス?<ruby>詳<rt>くわ</rt></ruby>しく<ruby>言<rt>い</rt></ruby>うてみ。<br>*(Lỗi à? Nói rõ xem.)* |
| Thức | <ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>を<ruby>100<rt>ひゃく</rt></ruby>ミリ<ruby>高<rt>たか</rt></ruby>く<ruby>組<rt>く</rt></ruby>みました。<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>から<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby>します。<br>*(Tầng 3 em dựng cao 100 mm. Sẽ dựng lại từ tầng 3 ạ.)* |
| Saito | <ruby>誰<rt>だれ</rt></ruby>が<ruby>組<rt>く</rt></ruby>んだんや?<br>*(Ai dựng?)* |
| Thức | <ruby>班<rt>はん</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>です。<ruby>確認<rt>かくにん</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>を<ruby>作<rt>つく</rt></ruby>っていなかった<ruby>私<rt>わたし</rt></ruby>の<ruby>管理<rt>かんり</rt></ruby><ruby>責任<rt>せきにん</rt></ruby>です。<br>*(Việc của tổ ạ. Là trách nhiệm quản lý của em vì không lập cơ chế kiểm tra.)* |
| Saito | <ruby>名前<rt>なまえ</rt></ruby>を<ruby>言<rt>い</rt></ruby>わんのやな。…ええ<ruby>班長<rt>はんちょう</rt></ruby>や。<br>*(Không khai tên à. …班長 tốt đấy.)* |

---

## Tình huống 5 — Văn phòng · 9:35, 職長 hỏi cách khắc phục

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>工程<rt>こうてい</rt></ruby>への<ruby>影響<rt>えいきょう</rt></ruby>は?<br>*(Ảnh hưởng tiến độ thế nào?)* |
| Thức | やり<ruby>直<rt>なお</rt></ruby>しに<ruby>半日<rt>はんにち</rt></ruby>かかります。<ruby>残業<rt>ざんぎょう</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>す<ruby>提案<rt>ていあん</rt></ruby>です。<br>*(Làm lại mất nửa ngày. Em đề xuất bù bằng làm thêm giờ ạ.)* |
| Saito | <ruby>無理<rt>むり</rt></ruby>な<ruby>残業<rt>ざんぎょう</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby>のもとや。<ruby>1日<rt>いちにち</rt></ruby>ずらすのも<ruby>手<rt>て</rt></ruby>やぞ。<br>*(Làm thêm quá là gốc tai nạn. Lùi 1 ngày cũng là cách đấy.)* |
| Thức | では<ruby>無理<rt>むり</rt></ruby>のない<ruby>範囲<rt>はんい</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>だけ<ruby>延長<rt>えんちょう</rt></ruby>し、<ruby>残<rt>のこ</rt></ruby>りは<ruby>明日<rt>あした</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Vậy trong mức không gắng sức kéo thêm 1 tiếng, còn lại điều chỉnh vào mai ạ.)* |
| Saito | それでええ。<ruby>安全<rt>あんぜん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れんな。<br>*(Vậy được. Đừng quên ưu tiên an toàn.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 6 — Công trường · 9:50, dặn tổ làm lại không trách Nam

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>からやり<ruby>直<rt>なお</rt></ruby>します。<ruby>誰<rt>だれ</rt></ruby>のせいとかは<ruby>言<rt>い</rt></ruby>いません。<br>*(Mọi người, dựng lại từ tầng 3. Không nói tại ai cả.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>段取<rt>だんど</rt></ruby>りは?<br>*(Rõ. Bố trí thế nào?)* |
| Thức | <ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に<ruby>外<rt>はず</rt></ruby>して、<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しい<ruby>高<rt>たか</rt></ruby>さで<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby>す。<br>*(Tháo từ trên xuống theo thứ tự, dựng lại tầng 3 đúng cao độ.)* |
| Sasaki | <ruby>確認<rt>かくにん</rt></ruby>はどうしますか?<br>*(Kiểm tra thế nào ạ?)* |
| Thức | <ruby>今度<rt>こんど</rt></ruby>は<ruby>各<rt>かく</rt></ruby><ruby>層<rt>そう</rt></ruby>で<ruby>2人<rt>ふたり</rt></ruby><ruby>1組<rt>ひとくみ</rt></ruby>のダブルチェックや。<ruby>1人<rt>ひとり</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>させない。<br>*(Lần này mỗi tầng kiểm tra đôi 2 người. Không để 1 người tự quyết.)* |
| Hùng | ええ<ruby>仕組<rt>しく</rt></ruby>みやな。それで<ruby>防<rt>ふせ</rt></ruby>げる。<br>*(Cơ chế tốt đấy. Vậy ngăn được.)* |

---

## Tình huống 7 — Công trường · 10:30, dạy Nam nguyên nhân gốc

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、なぜ<ruby>1900<rt>せんきゅうひゃく</rt></ruby>で<ruby>組<rt>く</rt></ruby>んだか、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ろう。<br>*(Nam, vì sao dựng 1900, cùng nhìn lại nào.)* |
| Nam | <ruby>図面<rt>ずめん</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>を<ruby>見間違<rt>みまちが</rt></ruby>えました。<ruby>別<rt>べつ</rt></ruby>の<ruby>段<rt>だん</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ていました。<br>*(Em nhìn nhầm số trên bản vẽ. Em nhìn kích thước tầng khác ạ.)* |
| Thức | なるほど。<ruby>図面<rt>ずめん</rt></ruby>の<ruby>段<rt>だん</rt></ruby>を<ruby>指<rt>ゆび</rt></ruby><ruby>差<rt>さ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>してたか?<br>*(Ra vậy. Em có chỉ tay vào tầng trên bản vẽ để xác nhận không?)* |
| Nam | …していませんでした。<ruby>急<rt>いそ</rt></ruby>いでいました。<br>*(…Em không làm ạ. Em vội ạ.)* |
| Thức | そこや。<ruby>急<rt>いそ</rt></ruby>ぐと<ruby>見間違<rt>みまちが</rt></ruby>う。<ruby>図面<rt>ずめん</rt></ruby>も<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>するんや。<br>*(Đó. Vội thì nhìn nhầm. Bản vẽ cũng phải chỉ tay xác nhận.)* |
| Nam | <ruby>図面<rt>ずめん</rt></ruby>も<ruby>指差<rt>ゆびさ</rt></ruby>すんですね。<ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Bản vẽ cũng chỉ tay nhỉ. Em không biết ạ.)* |

---

## Tình huống 8 — Công trường · 11:00, hướng dẫn quy trình kiểm tra mới

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、これから<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むときの<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>える。<br>*(Nam, từ giờ anh dạy quy trình khi đọc kích thước.)* |
| Nam | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Thức | まず<ruby>図面<rt>ずめん</rt></ruby>の<ruby>段<rt>だん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す。「<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>1800<rt>せんはっぴゃく</rt></ruby>、ヨシ」とな。<br>*(Trước hết đọc to số tầng trên bản vẽ. "Tầng 3, 1800, tốt" như vậy.)* |
| Nam | <ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すと<ruby>間違<rt>まちが</rt></ruby>えにくいですね。<br>*(Đọc to thì khó nhầm nhỉ.)* |
| Thức | そう。<ruby>次<rt>つぎ</rt></ruby>に<ruby>相方<rt>あいかた</rt></ruby>に「<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby><ruby>1800<rt>せんはっぴゃく</rt></ruby>でいい?」と<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Đúng. Tiếp theo hỏi người cặp "tầng 3 là 1800 đúng không?".)* |
| Nam | <ruby>2人<rt>ふたり</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>すれば<ruby>安心<rt>あんしん</rt></ruby>です。やってみます。<br>*(Hai người xác nhận thì yên tâm. Em thử ạ.)* |

---

## Tình huống 9 — Nghỉ trưa · 12:20, tâm sự với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, mày gánh hết cho Nam à? 親方 hỏi ai làm sao mày không khai. |
| Thức | Khai tên thì được gì? Nam đang sợ chết khiếp rồi. Lỗi quy trình là của tao, tao không lập kiểm tra chéo. |
| Hùng | Mày nghĩ thoáng thật. Tao tưởng 班長 phải đẩy lỗi xuống dưới cho sạch mình. |
| Thức | Ngược lại. Tao gánh thì anh em mới dám báo lỗi sớm, không giấu. Giấu mới chết. |
| Hùng | Ừ. Nam mà bị mắng te tua chắc nó không dám hé răng lần sau. |
| Thức | Đúng. Tao muốn nó học được, không phải sợ tao. Bài học mới quan trọng. |

---

## Tình huống 10 — Công trường · 13:00, áp dụng kiểm tra chéo khi dựng lại

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>を<ruby>組<rt>く</rt></ruby>む。まず<ruby>図面<rt>ずめん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>から。<br>*(Nam, dựng tầng 3. Bắt đầu từ xác nhận bản vẽ.)* |
| Nam | <ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>1800<rt>せんはっぴゃく</rt></ruby>、ヨシ!<br>*(Tầng 3, 1800, tốt!)* |
| Thức | OK。フンさん、<ruby>相方<rt>あいかた</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>い。<br>*(OK. Hùng, xác nhận chéo nhé.)* |
| Hùng | <ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby><ruby>1800<rt>せんはっぴゃく</rt></ruby>、<ruby>間違<rt>まちが</rt></ruby>いない。ヨシ!<br>*(Tầng 3 1800, không sai. Tốt!)* |
| Thức | <ruby>2人<rt>ふたり</rt></ruby><ruby>一致<rt>いっち</rt></ruby>。これで<ruby>組<rt>く</rt></ruby>もう。これが<ruby>正<rt>ただ</rt></ruby>しい<ruby>手順<rt>てじゅん</rt></ruby>や。<br>*(Hai người khớp. Dựng đi. Đây là quy trình đúng.)* |
| Nam | はい!<ruby>今度<rt>こんど</rt></ruby>は<ruby>間違<rt>まちが</rt></ruby>えません。<br>*(Vâng! Lần này em không nhầm ạ.)* |

---

## Tình huống 11 — Công trường · 14:00, 現場監督 Ishikawa hỏi về sự cố

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>3層<rt>さんそう</rt></ruby><ruby>目<rt>め</rt></ruby>のやり<ruby>直<rt>なお</rt></ruby>し、<ruby>聞<rt>き</rt></ruby>きました。<ruby>原因<rt>げんいん</rt></ruby>は?<br>*(Anh Thức, vụ làm lại tầng 3 tôi nghe rồi. Nguyên nhân?)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>の<ruby>段<rt>だん</rt></ruby>の<ruby>読<rt>よ</rt></ruby>み<ruby>間違<rt>まちが</rt></ruby>いです。<ruby>確認<rt>かくにん</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>の<ruby>不備<rt>ふび</rt></ruby>でした。<br>*(Đọc nhầm tầng trên bản vẽ. Là thiếu sót cơ chế kiểm tra ạ.)* |
| Ishikawa | <ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>はどうする?<br>*(Phòng tái diễn thế nào?)* |
| Thức | <ruby>寸法<rt>すんぽう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>し+<ruby>2人<rt>ふたり</rt></ruby>チェックの<ruby>手順<rt>てじゅん</rt></ruby>に<ruby>変<rt>か</rt></ruby>えました。<ruby>全<rt>ぜん</rt></ruby><ruby>層<rt>そう</rt></ruby>に<ruby>適用<rt>てきよう</rt></ruby>します。<br>*(Em đổi quy trình xác nhận kích thước thành đọc to + 2 người kiểm. Áp dụng mọi tầng ạ.)* |
| Ishikawa | <ruby>原因<rt>げんいん</rt></ruby>を<ruby>人<rt>ひと</rt></ruby>のせいにせず<ruby>仕組<rt>しく</rt></ruby>みで<ruby>直<rt>なお</rt></ruby>す。…<ruby>正<rt>ただ</rt></ruby>しいやり<ruby>方<rt>かた</rt></ruby>や。<br>*(Không đổ tại người mà sửa bằng cơ chế. …Cách làm đúng đấy.)* |
| Thức | ありがとうございます。<ruby>同<rt>おな</rt></ruby>じミスを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しません。<br>*(Em cảm ơn ạ. Em sẽ không lặp lại lỗi đó.)* |

---

## Tình huống 12 — Công trường · 15:00, kiểm tra tiến độ làm lại

| Vai | Lời thoại |
|---|---|
| Thức | フンさん、やり<ruby>直<rt>なお</rt></ruby>しの<ruby>進<rt>すす</rt></ruby>み<ruby>具合<rt>ぐあい</rt></ruby>は?<br>*(Hùng, làm lại đến đâu rồi?)* |
| Hùng | <ruby>4層<rt>よんそう</rt></ruby><ruby>目<rt>め</rt></ruby>まで<ruby>戻<rt>もど</rt></ruby>した。<ruby>思<rt>おも</rt></ruby>ったより<ruby>早<rt>はや</rt></ruby>いわ。<br>*(Đã làm lại tới tầng 4. Nhanh hơn tưởng.)* |
| Thức | ダブルチェックしながらでこの<ruby>速<rt>はや</rt></ruby>さは<ruby>上出来<rt>じょうでき</rt></ruby>や。<br>*(Vừa kiểm tra đôi mà nhanh thế là tốt rồi.)* |
| Sasaki | <ruby>手順<rt>てじゅん</rt></ruby>が<ruby>決<rt>き</rt></ruby>まると<ruby>迷<rt>まよ</rt></ruby>いがなくて<ruby>速<rt>はや</rt></ruby>いです。<br>*(Quy trình rõ thì không phân vân nên nhanh ạ.)* |
| Thức | そう。<ruby>急<rt>いそ</rt></ruby>がば<ruby>回<rt>まわ</rt></ruby>れや。<ruby>確認<rt>かくにん</rt></ruby>したほうが<ruby>結局<rt>けっきょく</rt></ruby><ruby>早<rt>はや</rt></ruby>い。<br>*(Đúng. Dục tốc bất đạt. Kiểm tra rồi lại nhanh hơn.)* |
| Hùng | この<ruby>調子<rt>ちょうし</rt></ruby>なら<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>延長<rt>えんちょう</rt></ruby>で<ruby>済<rt>す</rt></ruby>みそうや。<br>*(Đà này chắc chỉ cần thêm 1 tiếng.)* |

---

## Tình huống 13 — Công trường · 16:00, Nam tự kiểm tra đúng cách

| Vai | Lời thoại |
|---|---|
| Nam | <ruby>5層<rt>ごそう</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>1800<rt>せんはっぴゃく</rt></ruby>、ヨシ!<ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tầng 5, 1800, tốt! Sasaki, xác nhận giúp em ạ.)* |
| Sasaki | <ruby>5層<rt>ごそう</rt></ruby><ruby>目<rt>め</rt></ruby><ruby>1800<rt>せんはっぴゃく</rt></ruby>、<ruby>合<rt>あ</rt></ruby>ってる。ヨシ!<br>*(Tầng 5 1800, đúng. Tốt!)* |
| Thức | (quan sát) ええやん、ナムさん。<ruby>手順<rt>てじゅん</rt></ruby>がしっかりできてる。<br>*(Tốt đấy Nam. Quy trình làm chắc rồi.)* |
| Nam | トゥックさんに<ruby>教<rt>おそ</rt></ruby>わった<ruby>通<rt>とお</rt></ruby>りにやっています。<br>*(Em làm đúng như anh Thức dạy ạ.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>次<rt>つぎ</rt></ruby>に<ruby>活<rt>い</rt></ruby>かせるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>や。よう<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Biến thất bại thành bài học là quan trọng nhất. Cố gắng tốt đấy.)* |
| Nam | …ありがとうございます。<br>*(…Em cảm ơn ạ.)* |

---

## Tình huống 14 — Công trường · 16:40, hoàn thành làm lại

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>5層<rt>ごそう</rt></ruby><ruby>目<rt>め</rt></ruby>まで<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。おつかれさまでした。<br>*(Mọi người, dựng lại xong tới tầng 5. Vất vả rồi.)* |
| Hùng | <ruby>延長<rt>えんちょう</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>で<ruby>済<rt>す</rt></ruby>んだな。<br>*(Chỉ kéo thêm 1 tiếng nhỉ.)* |
| Thức | みんなが<ruby>協力<rt>きょうりょく</rt></ruby>してくれたおかげや。<ruby>誰<rt>だれ</rt></ruby>も<ruby>責<rt>せ</rt></ruby>めんかったやろ?<br>*(Nhờ mọi người hợp tác. Không ai trách ai chứ?)* |
| Sasaki | はい。<ruby>責<rt>せ</rt></ruby>めるより<ruby>直<rt>なお</rt></ruby>すほうが<ruby>建設的<rt>けんせつてき</rt></ruby>です。<br>*(Vâng. Hơn là trách thì sửa mới xây dựng ạ.)* |
| Thức | その<ruby>通<rt>とお</rt></ruby>り。<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>にでもある。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>その後<rt>そのご</rt></ruby>や。<br>*(Đúng vậy. Thất bại ai cũng có. Quan trọng là sau đó.)* |
| Nam | <ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Em học được nhiều ạ.)* |

---

## Tình huống 15 — Văn phòng · 17:00, báo cáo kết quả cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、やり<ruby>直<rt>なお</rt></ruby>しが<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>延長<rt>えんちょう</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>で<ruby>済<rt>す</rt></ruby>みました。<br>*(Đốc công, làm lại xong rồi ạ. Chỉ kéo thêm 1 tiếng ạ.)* |
| Saito | <ruby>予想<rt>よそう</rt></ruby>より<ruby>早<rt>はや</rt></ruby>かったな。<br>*(Sớm hơn dự kiến đấy.)* |
| Thức | ダブルチェックの<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めたら<ruby>迷<rt>まよ</rt></ruby>いがなくなりました。<br>*(Chốt quy trình kiểm tra đôi thì hết phân vân ạ.)* |
| Saito | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>仕組<rt>しく</rt></ruby>み<ruby>改善<rt>かいぜん</rt></ruby>につなげたんやな。<ruby>立派<rt>りっぱ</rt></ruby>や。<br>*(Biến thất bại thành cải thiện cơ chế à. Giỏi.)* |
| Thức | ナムも<ruby>正<rt>ただ</rt></ruby>しい<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えました。<ruby>次<rt>つぎ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Nam cũng nhớ quy trình đúng. Lần sau ổn ạ.)* |
| Saito | <ruby>人<rt>ひと</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるのも<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>や。ようやった。<br>*(Đào tạo người cũng là việc 班長. Làm tốt đấy.)* |

---

## Tình huống 16 — Phòng thay đồ · 17:10, Nam cảm ơn Thức

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にすみませんでした。そして、ありがとうございました。<br>*(Anh Thức, hôm nay thật sự xin lỗi ạ. Và, cảm ơn anh ạ.)* |
| Thức | <ruby>謝<rt>あやま</rt></ruby>るのはもう<ruby>終<rt>お</rt></ruby>わり。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>覚<rt>おぼ</rt></ruby>えたことや。<br>*(Xin lỗi thì thôi rồi. Quan trọng là em đã học được.)* |
| Nam | トゥックさんが<ruby>親方<rt>おやかた</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>を<ruby>言<rt>い</rt></ruby>わなかったこと、<ruby>知<rt>し</rt></ruby>っています。<br>*(Việc anh Thức không khai tên với cai, em biết ạ.)* |
| Thức | <ruby>班<rt>はん</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>は<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>責任<rt>せきにん</rt></ruby>や。<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>のことや。<br>*(Lỗi của tổ là trách nhiệm 班長. Là chuyện đương nhiên.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>もいつかトゥックさんみたいな<ruby>班長<rt>はんちょう</rt></ruby>になりたいです。<br>*(Em cũng muốn thành 班長 như anh Thức ạ.)* |
| Thức | なれるよ。<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>べる<ruby>人<rt>ひと</rt></ruby>は<ruby>伸<rt>の</rt></ruby>びる。<br>*(Được mà. Người học được từ thất bại thì tiến bộ.)* |

---

## Tình huống 17 — Công trường · 17:15, dặn tổ về quy trình mới

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>明日<rt>あした</rt></ruby>から<ruby>寸法<rt>すんぽう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>は<ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>し+<ruby>2人<rt>ふたり</rt></ruby>チェックを<ruby>標準<rt>ひょうじゅん</rt></ruby>にします。<br>*(Mọi người, từ mai xác nhận kích thước lấy đọc to + 2 người kiểm làm chuẩn.)* |
| Hùng | <ruby>今日<rt>きょう</rt></ruby>やってみて<ruby>効果<rt>こうか</rt></ruby><ruby>分<rt>わ</rt></ruby>かったわ。<br>*(Hôm nay làm thử thấy hiệu quả rồi.)* |
| Thức | <ruby>面倒<rt>めんどう</rt></ruby>に<ruby>見<rt>み</rt></ruby>えるけど、やり<ruby>直<rt>なお</rt></ruby>すよりずっと<ruby>早<rt>はや</rt></ruby>い。<br>*(Trông phiền nhưng nhanh hơn làm lại nhiều.)* |
| Sasaki | <ruby>習慣<rt>しゅうかん</rt></ruby>にすれば<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>になりますね。<br>*(Thành thói quen thì thành đương nhiên nhỉ.)* |
| Thức | そう。これを<ruby>班<rt>はん</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>にしよう。<br>*(Đúng. Biến thành văn hóa của tổ nào.)* |
| Nam | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em nhất định tuân thủ ạ.)* |

---

## Tình huống 18 — Cổng công trường · 17:25, 親方 nói riêng với Thức

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>誰<rt>だれ</rt></ruby>が<ruby>組<rt>く</rt></ruby>んだか、<ruby>本当<rt>ほんとう</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かっとるんやろ?<br>*(Thức, ai dựng, thật ra cậu biết chứ?)* |
| Thức | …はい。でも<ruby>言<rt>い</rt></ruby>う<ruby>必要<rt>ひつよう</rt></ruby>はないと<ruby>思<rt>おも</rt></ruby>いました。<br>*(…Vâng. Nhưng em nghĩ không cần nói ạ.)* |
| Tanigawa | なんでや?<br>*(Sao vậy?)* |
| Thức | <ruby>名前<rt>なまえ</rt></ruby>を<ruby>言<rt>い</rt></ruby>えば<ruby>本人<rt>ほんにん</rt></ruby>が<ruby>萎縮<rt>いしゅく</rt></ruby>します。<ruby>次<rt>つぎ</rt></ruby>から<ruby>報告<rt>ほうこく</rt></ruby>しなくなるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Khai tên thì người đó co rúm. Sợ nhất là lần sau không báo nữa ạ.)* |
| Tanigawa | …お<ruby>前<rt>まえ</rt></ruby>、<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>本質<rt>ほんしつ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かっとるな。<br>*(…Cậu hiểu được bản chất của 班長 đấy.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>が<ruby>昔<rt>むかし</rt></ruby><ruby>俺<rt>おれ</rt></ruby>にそうしてくれました。<br>*(Hồi xưa cai cũng làm vậy với em mà.)* |

---

## Tình huống 19 — Cổng công trường · 17:30, 親方 ghi nhận

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>俺<rt>おれ</rt></ruby>がそうしたんか。<ruby>覚<rt>おぼ</rt></ruby>えとったんやな。<br>*(Tôi từng làm vậy à. Cậu nhớ đấy.)* |
| Thức | はい。あのとき<ruby>叱<rt>しか</rt></ruby>られず<ruby>教<rt>おそ</rt></ruby>わったから<ruby>今<rt>いま</rt></ruby>があります。<br>*(Vâng. Hồi đó không bị mắng mà được dạy nên mới có em hôm nay ạ.)* |
| Tanigawa | ええ<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぎ<ruby>方<rt>かた</rt></ruby>や。<ruby>叱<rt>しか</rt></ruby>るだけが<ruby>指導<rt>しどう</rt></ruby>やない。<br>*(Kế thừa hay đấy. Mắng không phải là chỉ dạy duy nhất.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めず<ruby>仕組<rt>しく</rt></ruby>みで<ruby>直<rt>なお</rt></ruby>す。それを<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Không trách thất bại mà sửa bằng cơ chế. Em sẽ duy trì ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>になら<ruby>安心<rt>あんしん</rt></ruby>して<ruby>班<rt>はん</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せられる。<br>*(Giao tổ cho cậu thì yên tâm.)* |
| Thức | ありがとうございます。<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます。<br>*(Em cảm ơn ạ. Em sẽ đáp lại kỳ vọng.)* |

---

## Tình huống 20 — Đường về · 17:40, Thức và Nam đi cùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, hôm nay em sợ lắm. Cứ tưởng bị đuổi việc. |
| Thức | Một lỗi đo sai mà đuổi việc thì ai cũng bị đuổi hết. Quan trọng là em báo ngay, không giấu. |
| Nam | Em thấy mình kém quá, làm phiền cả tổ. |
| Thức | Anh hồi TTS còn làm đổ cả giàn vật tư cơ. 親方 không mắng, chỉ dạy lại. Giờ tới lượt anh làm vậy với em. |
| Nam | Em sẽ ghi nhớ. Lần sau em làm đúng quy trình. |
| Thức | Ừ. Sai rồi sửa, học được là tiến bộ. Về nghỉ đi, mai làm tiếp. |

---

## Đọng lại

Khi Nam đọc nhầm bản vẽ khiến phải dựng lại nửa giàn giáo, Thức không đẩy lỗi xuống đàn em mà đứng ra nhận trách nhiệm quản lý với 職長, không khai tên Nam với 親方. Thức truy nguyên nhân gốc (vội, không chỉ tay xác nhận bản vẽ), dạy lại quy trình "đọc to + kiểm tra đôi" và biến nó thành chuẩn của tổ. Bài học cốt lõi: 班長 gánh lỗi để đàn em dám báo cáo sớm thay vì giấu; không trách người mà sửa bằng cơ chế; mắng không phải cách dạy duy nhất. 親方 nhận ra Thức đang kế thừa đúng cách dạy người mà mình từng dạy Thức.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 失敗 | しっぱい | Thất bại, lỗi |
> | 施工ミス | せこうみす | Lỗi thi công |
> | 見間違い | みまちがい | Nhìn nhầm |
> | やり直し | やりなおし | Làm lại |
> | 管理責任 | かんりせきにん | Trách nhiệm quản lý |
> | 再発防止 | さいはつぼうし | Phòng tái diễn |
> | 仕組み | しくみ | Cơ chế |
> | ダブルチェック | だぶるちぇっく | Kiểm tra đôi (2 người) |
> | 相方 | あいかた | Người cùng cặp |
> | 手順 | てじゅん | Quy trình, trình tự |
> | 萎縮 | いしゅく | Co rúm, e sợ |
> | 急がば回れ | いそがばまわれ | Dục tốc bất đạt |
> | 建設的 | けんせつてき | Mang tính xây dựng |
> | 受け継ぎ | うけつぎ | Kế thừa |
> | 期待に応える | きたいにこたえる | Đáp lại kỳ vọng |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000009, 800000036, NULL, 'markdown_book', 'T9. Sự cố suýt nguy hiểm của tổ — Thức báo 元請, viết 是正 (ヒヤリハット・是正)', '# Sách kỹ năng đặc định xây dựng · T9. Sự cố suýt nguy hiểm của tổ — Thức báo 元請, viết 是正 (ヒヤリハット・是正)

> **Mục tiêu nhân vật:** Tổ Thức gặp một ヒヤリハット (suýt tai nạn). Thức học cách báo cáo 元請 đúng quy trình, viết báo cáo 是正 (khắc phục), điều tra nguyên nhân không đổ lỗi, đề xuất biện pháp phòng tái diễn.

---

## Bối cảnh

Tháng 11 năm 2029. Trong lúc tổ Thức tháo giàn giáo, một thanh single (踏み板) suýt rơi xuống khu vực dưới — may không trúng ai. Đây là ヒヤリハット điển hình. Với tư cách 班長, Thức phải dừng việc, báo cáo 現場監督 (元請) ngay, điều tra nguyên nhân, viết báo cáo khắc phục (是正報告書), trình biện pháp phòng tái diễn. Chương tập trung mẫu câu báo cáo sự cố khẩn, điều tra nguyên nhân, viết-trình 是正.

---

## Tình huống 1 — Công trường · 10:30, sự cố suýt rơi vật xảy ra

| Vai | Lời thoại |
|---|---|
| Nam | あぶないっ!<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちた!<br>*(Nguy! Ván sàn rơi rồi!)* |
| Thức | <ruby>全員<rt>ぜんいん</rt></ruby><ruby>動<rt>うご</rt></ruby>くな!<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>はいるか?<br>*(Tất cả đừng động! Dưới có người không?)* |
| Hùng | <ruby>下<rt>した</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>もおらん!<ruby>当<rt>あ</rt></ruby>たってへん!<br>*(Dưới không ai cả! Không trúng ai!)* |
| Thức | <ruby>怪我人<rt>けがにん</rt></ruby>なしやな。<ruby>作業<rt>さぎょう</rt></ruby><ruby>一旦<rt>いったん</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>停止<rt>ていし</rt></ruby>!<br>*(Không ai bị thương nhỉ. Tạm dừng toàn bộ công việc!)* |
| Sasaki | はい、<ruby>全員<rt>ぜんいん</rt></ruby><ruby>手<rt>て</rt></ruby>を<ruby>止<rt>と</rt></ruby>めました。<br>*(Vâng, cả tổ dừng tay rồi ạ.)* |
| Thức | よし。<ruby>誰<rt>だれ</rt></ruby>も<ruby>怪我<rt>けが</rt></ruby>がないのが<ruby>一番<rt>いちばん</rt></ruby>。すぐ<ruby>監督<rt>かんとく</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する。<br>*(Tốt. Không ai bị thương là nhất. Báo giám sát ngay.)* |

---

## Tình huống 2 — Công trường · 10:33, cô lập hiện trường

| Vai | Lời thoại |
|---|---|
| Thức | フンさん、<ruby>落下<rt>らっか</rt></ruby><ruby>地点<rt>ちてん</rt></ruby>に<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>テープを<ruby>張<rt>は</rt></ruby>って。<br>*(Hùng, dán băng cấm vào điểm vật rơi.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>現状<rt>げんじょう</rt></ruby>はそのままにしとくんか?<br>*(Rõ. Giữ nguyên hiện trạng à?)* |
| Thức | そう。<ruby>原因<rt>げんいん</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>のため<ruby>触<rt>さわ</rt></ruby>らんといて。<ruby>写真<rt>しゃしん</rt></ruby>も<ruby>撮<rt>と</rt></ruby>っておく。<br>*(Đúng. Để điều tra nguyên nhân nên đừng đụng. Chụp ảnh lại nữa.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>が<ruby>写真<rt>しゃしん</rt></ruby>を<ruby>撮<rt>と</rt></ruby>ります。<br>*(Em chụp ảnh ạ.)* |
| Thức | <ruby>頼<rt>たの</rt></ruby>む。<ruby>落<rt>お</rt></ruby>ちた<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>と<ruby>外<rt>はず</rt></ruby>れた<ruby>箇所<rt>かしょ</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>撮<rt>と</rt></ruby>って。<br>*(Nhờ nhé. Ván rơi và chỗ tuột, chụp cả hai.)* |
| Nam | はい、すぐ<ruby>撮<rt>と</rt></ruby>ります。<br>*(Vâng, em chụp ngay ạ.)* |

---

## Tình huống 3 — Văn phòng công trường · 10:38, báo 現場監督 Ishikawa khẩn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。ヒヤリハットが<ruby>発生<rt>はっせい</rt></ruby>しました。<br>*(Anh Ishikawa, báo cáo khẩn. Có sự cố suýt nguy hiểm ạ.)* |
| Ishikawa | <ruby>何<rt>なに</rt></ruby>があった?<ruby>怪我人<rt>けがにん</rt></ruby>は?<br>*(Có chuyện gì? Có ai bị thương không?)* |
| Thức | <ruby>怪我人<rt>けがにん</rt></ruby>はゼロです。<ruby>解体<rt>かいたい</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>が<ruby>1枚<rt>いちまい</rt></ruby><ruby>下<rt>した</rt></ruby>に<ruby>落下<rt>らっか</rt></ruby>しました。<br>*(Không ai bị thương ạ. Trong lúc tháo dỡ, một tấm ván sàn rơi xuống dưới ạ.)* |
| Ishikawa | <ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>は?<br>*(Dưới có người không?)* |
| Thức | いませんでした。<ruby>現場<rt>げんば</rt></ruby>は<ruby>保全<rt>ほぜん</rt></ruby>し、<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>全面<rt>ぜんめん</rt></ruby><ruby>停止<rt>ていし</rt></ruby>しています。<br>*(Không có ạ. Em đã bảo toàn hiện trường, dừng toàn bộ công việc ạ.)* |
| Ishikawa | <ruby>初動<rt>しょどう</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しい。すぐ<ruby>現場<rt>げんば</rt></ruby>を<ruby>見<rt>み</rt></ruby>に<ruby>行<rt>い</rt></ruby>く。<br>*(Xử lý ban đầu đúng. Tôi đi xem hiện trường ngay.)* |

---

## Tình huống 4 — Công trường · 10:50, cùng Ishikawa kiểm tra hiện trường

| Vai | Lời thoại |
|---|---|
| Ishikawa | ここから<ruby>落<rt>お</rt></ruby>ちたんやな。<ruby>固定<rt>こてい</rt></ruby>はどうなってた?<br>*(Rơi từ đây nhỉ. Cố định thế nào?)* |
| Thức | <ruby>解体<rt>かいたい</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>先<rt>さき</rt></ruby>に<ruby>固定<rt>こてい</rt></ruby>を<ruby>外<rt>はず</rt></ruby>してしまい、<ruby>仮置<rt>かりお</rt></ruby>き<ruby>状態<rt>じょうたい</rt></ruby>でした。<br>*(Theo thứ tự tháo, đã tháo cố định trước nên ở trạng thái đặt tạm ạ.)* |
| Ishikawa | <ruby>仮置<rt>かりお</rt></ruby>きのまま<ruby>手<rt>て</rt></ruby>を<ruby>離<rt>はな</rt></ruby>したと?<br>*(Đặt tạm rồi buông tay à?)* |
| Thức | はい。<ruby>風<rt>かぜ</rt></ruby>のあおりも<ruby>重<rt>かさ</rt></ruby>なったようです。<br>*(Vâng. Có vẻ thêm cả gió giật ạ.)* |
| Ishikawa | <ruby>解体<rt>かいたい</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>やな。<ruby>是正<rt>ぜせい</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>してください。<br>*(Vấn đề quy trình tháo dỡ nhỉ. Nộp báo cáo khắc phục đi.)* |
| Thức | はい、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>中<rt>じゅう</rt></ruby>に<ruby>作成<rt>さくせい</rt></ruby>して<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Vâng, em sẽ làm và nộp trong hôm nay ạ.)* |

---

## Tình huống 5 — Công trường · 11:10, điều tra nguyên nhân với tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>責<rt>せ</rt></ruby>めるためやない。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>出<rt>だ</rt></ruby>し<ruby>合<rt>あ</rt></ruby>おう。<br>*(Mọi người, không phải để trách. Cùng nêu nguyên nhân thật nào.)* |
| Hùng | <ruby>解体<rt>かいたい</rt></ruby>を<ruby>急<rt>いそ</rt></ruby>いで、<ruby>固定<rt>こてい</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>外<rt>はず</rt></ruby>しすぎたな。<br>*(Tháo vội, tháo cố định trước quá nhiều nhỉ.)* |
| Sasaki | <ruby>仮置<rt>かりお</rt></ruby>きの<ruby>板<rt>いた</rt></ruby>に<ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>けがなかったのもあります。<br>*(Còn cả việc không hô báo về tấm đặt tạm ạ.)* |
| Thức | なるほど。<ruby>順番<rt>じゅんばん</rt></ruby>と<ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>けの<ruby>2<rt>ふた</rt></ruby>つやな。<br>*(Ra vậy. Là hai cái: thứ tự và hô báo.)* |
| Nam | <ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>いことも<ruby>考<rt>かんが</rt></ruby>えていませんでした。<br>*(Em cũng không tính gió mạnh ạ.)* |
| Thức | ええ<ruby>気<rt>き</rt></ruby>づきや。<ruby>3<rt>みっ</rt></ruby>つの<ruby>要因<rt>よういん</rt></ruby>を<ruby>是正<rt>ぜせい</rt></ruby>に<ruby>書<rt>か</rt></ruby>く。<br>*(Để ý tốt. Anh sẽ ghi 3 yếu tố vào báo cáo khắc phục.)* |

---

## Tình huống 6 — Văn phòng công trường · 11:40, hỏi Kondo cách viết 是正

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>是正<rt>ぜせい</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>の<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Đàn anh Kondo, chỉ em cách viết báo cáo khắc phục ạ.)* |
| Kondo | まず<ruby>発生<rt>はっせい</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>事実<rt>じじつ</rt></ruby>だけ<ruby>書<rt>か</rt></ruby>く。<ruby>感想<rt>かんそう</rt></ruby>はいらん。<br>*(Trước hết viết tình huống xảy ra chỉ sự thật. Không cần cảm tưởng.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>3<rt>みっ</rt></ruby>つ<ruby>挙<rt>あ</rt></ruby>げる<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em định nêu 3 nguyên nhân ạ.)* |
| Kondo | ええな。<ruby>次<rt>つぎ</rt></ruby>に<ruby>対策<rt>たいさく</rt></ruby>。<ruby>具体的<rt>ぐたいてき</rt></ruby>に、いつ<ruby>誰<rt>だれ</rt></ruby>が<ruby>何<rt>なに</rt></ruby>をやるか<ruby>書<rt>か</rt></ruby>く。<br>*(Tốt. Tiếp theo biện pháp. Cụ thể, ghi ai làm gì khi nào.)* |
| Thức | <ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>策<rt>さく</rt></ruby>も<ruby>具体的<rt>ぐたいてき</rt></ruby>に、ですね。<br>*(Biện pháp phòng tái diễn cũng cụ thể nhỉ.)* |
| Kondo | そや。あいまいやと<ruby>意味<rt>いみ</rt></ruby>がない。<ruby>誰<rt>だれ</rt></ruby>が<ruby>読<rt>よ</rt></ruby>んでも<ruby>同<rt>おな</rt></ruby>じことができるように<ruby>書<rt>か</rt></ruby>くんや。<br>*(Đúng. Mơ hồ thì vô nghĩa. Viết sao cho ai đọc cũng làm được như nhau.)* |

---

## Tình huống 7 — Văn phòng công trường · 12:40, soạn nội dung 是正

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>佐々木<rt>ささき</rt></ruby>さん、<ruby>対策<rt>たいさく</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Sasaki, cùng xác nhận biện pháp.)* |
| Sasaki | はい。<ruby>解体<rt>かいたい</rt></ruby><ruby>順<rt>じゅん</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>すんですよね?<br>*(Vâng. Xem lại thứ tự tháo nhỉ?)* |
| Thức | そう。<ruby>固定<rt>こてい</rt></ruby>は<ruby>板<rt>いた</rt></ruby>を<ruby>降<rt>お</rt></ruby>ろす<ruby>直前<rt>ちょくぜん</rt></ruby>まで<ruby>外<rt>はず</rt></ruby>さない、と<ruby>明記<rt>めいき</rt></ruby>する。<br>*(Đúng. Ghi rõ "không tháo cố định cho tới ngay trước khi hạ ván".)* |
| Sasaki | <ruby>仮置<rt>かりお</rt></ruby>き<ruby>禁止<rt>きんし</rt></ruby>も<ruby>入<rt>い</rt></ruby>れますか?<br>*(Có thêm "cấm đặt tạm" không ạ?)* |
| Thức | <ruby>入<rt>い</rt></ruby>れる。「<ruby>仮置<rt>かりお</rt></ruby>き<ruby>禁止<rt>きんし</rt></ruby>、<ruby>外<rt>はず</rt></ruby>したらすぐ<ruby>降<rt>お</rt></ruby>ろす」とな。<br>*(Có. Ghi "cấm đặt tạm, tháo là hạ ngay".)* |
| Sasaki | <ruby>強風<rt>きょうふう</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>中止<rt>ちゅうし</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>ですね。<br>*(Cả tiêu chuẩn dừng khi gió mạnh cũng cần nhỉ.)* |

---

## Tình huống 8 — Nghỉ trưa · 13:00, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Anh Long, tổ em có ヒヤリハット sáng nay. Ván rơi, may không trúng ai. |
| Long | May thật. Em xử lý sao rồi? |
| Thức | Dừng việc, cô lập hiện trường, báo 石川 ngay, giờ đang viết 是正報告書. |
| Long | Bài bản đấy. Đừng giấu, đừng đổ lỗi cho thằng nào. ヒヤリ là để học, không phải để trừng phạt. |
| Thức | Vâng, em họp tổ tìm nguyên nhân, không truy ai làm. Em sợ giấu thì lần sau thành tai nạn thật. |
| Long | Đúng tư duy. 元請 nó coi cách mình xử lý ヒヤリ để đánh giá cả tổ đấy. Em làm vậy là chuẩn. |

---

## Tình huống 9 — Văn phòng công trường · 13:40, hoàn thiện 是正報告書

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>是正<rt>ぜせい</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>ができました。<ruby>近藤<rt>こんどう</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Báo cáo khắc phục xong rồi. Đàn anh Kondo, xem giúp em ạ.)* |
| Kondo | <ruby>発生<rt>はっせい</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>、<ruby>事実<rt>じじつ</rt></ruby>だけで<ruby>分<rt>わ</rt></ruby>かりやすい。ええな。<br>*(Tình huống xảy ra, chỉ sự thật, dễ hiểu. Tốt đấy.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つ、<ruby>対策<rt>たいさく</rt></ruby>も<ruby>3<rt>みっ</rt></ruby>つ<ruby>対応<rt>たいおう</rt></ruby>させました。<br>*(Em nêu 3 nguyên nhân, biện pháp cũng 3 ứng với nhau ạ.)* |
| Kondo | <ruby>対策<rt>たいさく</rt></ruby>の「<ruby>誰<rt>だれ</rt></ruby>が」が<ruby>抜<rt>ぬ</rt></ruby>けとる<ruby>所<rt>ところ</rt></ruby>があるで。<br>*(Phần biện pháp có chỗ thiếu "ai làm" đấy.)* |
| Thức | あ、<ruby>本当<rt>ほんとう</rt></ruby>ですね。<ruby>担当<rt>たんとう</rt></ruby>を<ruby>明記<rt>めいき</rt></ruby>します。<br>*(À, đúng ạ. Em ghi rõ người phụ trách ạ.)* |
| Kondo | それで<ruby>完璧<rt>かんぺき</rt></ruby>や。よう<ruby>書<rt>か</rt></ruby>けとる。<br>*(Vậy là hoàn chỉnh. Viết tốt đấy.)* |

---

## Tình huống 10 — Văn phòng công trường · 14:10, trình 是正 cho Ishikawa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>是正<rt>ぜせい</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>です。<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Ishikawa, đây là báo cáo khắc phục. Nhờ anh xem ạ.)* |
| Ishikawa | <ruby>早<rt>はや</rt></ruby>いな。…<ruby>原因<rt>げんいん</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>がしっかりしとる。<br>*(Nhanh đấy. …Phân tích nguyên nhân chắc đấy.)* |
| Thức | <ruby>解体<rt>かいたい</rt></ruby><ruby>順<rt>じゅん</rt></ruby>、<ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>け、<ruby>強風<rt>きょうふう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>の<ruby>3<rt>さん</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>是正<rt>ぜせい</rt></ruby>しました。<br>*(Em khắc phục 3 điểm: thứ tự tháo, hô báo, ứng phó gió mạnh ạ.)* |
| Ishikawa | <ruby>誰<rt>だれ</rt></ruby>のせいとも<ruby>書<rt>か</rt></ruby>いてないな。<ruby>仕組<rt>しく</rt></ruby>みで<ruby>直<rt>なお</rt></ruby>す<ruby>姿勢<rt>しせい</rt></ruby>がええ。<br>*(Không ghi tại ai cả nhỉ. Thái độ sửa bằng cơ chế tốt.)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めても<ruby>再発<rt>さいはつ</rt></ruby>は<ruby>防<rt>ふせ</rt></ruby>げませんから。<br>*(Vì trách người thì không ngăn được tái diễn ạ.)* |
| Ishikawa | その<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>、<ruby>元請<rt>もとうけ</rt></ruby>として<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>信頼<rt>しんらい</rt></ruby>できる。<ruby>承認<rt>しょうにん</rt></ruby>します。<br>*(Cách nghĩ đó, với tư cách nhà thầu chính rất tin được. Tôi duyệt.)* |

---

## Tình huống 11 — Công trường · 14:40, phổ biến biện pháp mới cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>是正<rt>ぜせい</rt></ruby>が<ruby>承認<rt>しょうにん</rt></ruby>されました。<ruby>新<rt>あたら</rt></ruby>しい<ruby>解体<rt>かいたい</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<br>*(Mọi người, khắc phục được duyệt. Tôi giải thích quy trình tháo mới.)* |
| Hùng | <ruby>固定<rt>こてい</rt></ruby>を<ruby>最後<rt>さいご</rt></ruby>まで<ruby>残<rt>のこ</rt></ruby>すんやな?<br>*(Chừa cố định đến cuối nhỉ?)* |
| Thức | そう。<ruby>板<rt>いた</rt></ruby>を<ruby>降<rt>お</rt></ruby>ろす<ruby>直前<rt>ちょくぜん</rt></ruby>まで<ruby>外<rt>はず</rt></ruby>さない。<ruby>外<rt>はず</rt></ruby>したら<ruby>仮置<rt>かりお</rt></ruby>きせず<ruby>即<rt>そく</rt></ruby><ruby>搬出<rt>はんしゅつ</rt></ruby>。<br>*(Đúng. Không tháo cho tới ngay trước khi hạ ván. Tháo xong không đặt tạm, đưa ra ngay.)* |
| Sasaki | <ruby>声<rt>こえ</rt></ruby><ruby>掛<rt>か</rt></ruby>けは?<br>*(Hô báo thì sao?)* |
| Thức | <ruby>外<rt>はず</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に「<ruby>固定<rt>こてい</rt></ruby><ruby>外<rt>はず</rt></ruby>します」と<ruby>必<rt>かなら</rt></ruby>ず<ruby>宣言<rt>せんげん</rt></ruby>。<ruby>強風<rt>きょうふう</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>解体<rt>かいたい</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>や。<br>*(Trước khi tháo nhất định tuyên bố "tôi tháo cố định". Gió mạnh thì dừng tháo.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Em hiểu rồi. Em nhất định tuân thủ ạ.)* |

---

## Tình huống 12 — Công trường · 15:00, KY khẩn cấp bổ sung

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>作業<rt>さぎょう</rt></ruby><ruby>再開<rt>さいかい</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>緊急<rt>きんきゅう</rt></ruby>KYをします。<br>*(Mọi người, trước khi làm lại làm KY khẩn.)* |
| Hùng | <ruby>今日<rt>きょう</rt></ruby>の<ruby>反省<rt>はんせい</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえてやな。<br>*(Dựa trên rút kinh nghiệm hôm nay nhỉ.)* |
| Thức | そう。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>固定<rt>こてい</rt></ruby><ruby>最後<rt>さいご</rt></ruby>、<ruby>仮置<rt>かりお</rt></ruby>きゼロ」です。<br>*(Đúng. Mục tiêu hôm nay là "cố định cuối, không đặt tạm".)* |
| Sasaki | <ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Chỉ tay xác nhận nào.)* |
| Thức | <ruby>固定<rt>こてい</rt></ruby><ruby>最後<rt>さいご</rt></ruby>、ヨシ!<ruby>仮置<rt>かりお</rt></ruby>きゼロ、ヨシ!<br>*(Cố định cuối, tốt! Không đặt tạm, tốt!)* |
| Tổ | <ruby>固定<rt>こてい</rt></ruby><ruby>最後<rt>さいご</rt></ruby>、ヨシ!<ruby>仮置<rt>かりお</rt></ruby>きゼロ、ヨシ!<br>*(Cố định cuối, tốt! Không đặt tạm, tốt!)* |

---

## Tình huống 13 — Công trường · 15:40, áp dụng quy trình mới

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>固定<rt>こてい</rt></ruby><ruby>外<rt>はず</rt></ruby>します!<br>*(Anh Thức, em tháo cố định!)* |
| Thức | <ruby>宣言<rt>せんげん</rt></ruby>ヨシ。<ruby>板<rt>いた</rt></ruby>を<ruby>降<rt>お</rt></ruby>ろす<ruby>準備<rt>じゅんび</rt></ruby>はできてるか?<br>*(Tuyên bố tốt. Chuẩn bị hạ ván xong chưa?)* |
| Nam | できています。<ruby>外<rt>はず</rt></ruby>したらすぐ<ruby>降<rt>お</rt></ruby>ろします。<br>*(Xong rồi ạ. Tháo xong em hạ ngay ạ.)* |
| Thức | ええ<ruby>流<rt>なが</rt></ruby>れや。<ruby>仮置<rt>かりお</rt></ruby>きせんと<ruby>一気<rt>いっき</rt></ruby>にな。<br>*(Trình tự tốt. Không đặt tạm, làm một mạch nhé.)* |
| Nam | はい!<ruby>降<rt>お</rt></ruby>ろし<ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Vâng! Hạ xong rồi ạ.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>や。これが<ruby>正<rt>ただ</rt></ruby>しい<ruby>手順<rt>てじゅん</rt></ruby>や。<br>*(Hoàn hảo. Đây là quy trình đúng.)* |

---

## Tình huống 14 — Công trường · 16:10, Ishikawa quan sát tổ làm lại

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>新<rt>あたら</rt></ruby>しい<ruby>手順<rt>てじゅん</rt></ruby>、<ruby>定着<rt>ていちゃく</rt></ruby>してますね。<br>*(Anh Thức, quy trình mới ngấm rồi nhỉ.)* |
| Thức | はい。<ruby>全員<rt>ぜんいん</rt></ruby>が<ruby>宣言<rt>せんげん</rt></ruby>と<ruby>即<rt>そく</rt></ruby><ruby>搬出<rt>はんしゅつ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>っています。<br>*(Vâng. Cả tổ tuân thủ tuyên bố và đưa ra ngay ạ.)* |
| Ishikawa | ヒヤリを<ruby>隠<rt>かく</rt></ruby>す<ruby>班<rt>はん</rt></ruby>も<ruby>多<rt>おお</rt></ruby>い。<ruby>君<rt>きみ</rt></ruby>は<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>して<ruby>改善<rt>かいぜん</rt></ruby>した。<br>*(Nhiều tổ giấu suýt tai nạn. Anh báo cáo thật và cải thiện.)* |
| Thức | <ruby>隠<rt>かく</rt></ruby>すと<ruby>次<rt>つぎ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>になります。<br>*(Giấu thì lần sau thành tai nạn thật ạ.)* |
| Ishikawa | その<ruby>通<rt>とお</rt></ruby>りや。<ruby>君<rt>きみ</rt></ruby>の<ruby>班<rt>はん</rt></ruby>は<ruby>安心<rt>あんしん</rt></ruby>して<ruby>任<rt>まか</rt></ruby>せられる。<br>*(Đúng vậy. Tổ anh giao yên tâm.)* |
| Thức | ありがとうございます。<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>最<rt>さい</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Em cảm ơn ạ. Em sẽ tiếp tục ưu tiên an toàn nhất.)* |

---

## Tình huống 15 — Văn phòng · 16:40, báo cáo cuối ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。ヒヤリハットがありましたが<ruby>怪我人<rt>けがにん</rt></ruby>はゼロです。<br>*(Đốc công, báo cáo hôm nay. Có suýt nguy hiểm nhưng không ai bị thương ạ.)* |
| Saito | <ruby>聞<rt>き</rt></ruby>いとる。<ruby>是正<rt>ぜせい</rt></ruby>は<ruby>出<rt>だ</rt></ruby>したか?<br>*(Tôi nghe rồi. Nộp khắc phục chưa?)* |
| Thức | はい、<ruby>石川<rt>いしかわ</rt></ruby>さんの<ruby>承認<rt>しょうにん</rt></ruby>も<ruby>得<rt>え</rt></ruby>ました。<ruby>午後<rt>ごご</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>手順<rt>てじゅん</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>しています。<br>*(Vâng, đã được anh Ishikawa duyệt. Chiều làm theo quy trình mới ạ.)* |
| Saito | <ruby>対応<rt>たいおう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くて<ruby>的確<rt>てきかく</rt></ruby>や。ヒヤリは<ruby>隠<rt>かく</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby>あかん。<br>*(Xử lý nhanh và chính xác. Giấu suýt tai nạn là tệ nhất.)* |
| Thức | <ruby>班<rt>はん</rt></ruby>のみんなも<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>協力<rt>きょうりょく</rt></ruby>してくれました。<br>*(Cả tổ cũng hợp tác trung thực ạ.)* |
| Saito | ヒヤリを<ruby>成長<rt>せいちょう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えたな。ええ<ruby>班長<rt>はんちょう</rt></ruby>や。<br>*(Biến suýt tai nạn thành trưởng thành. 班長 tốt.)* |

---

## Tình huống 16 — Phòng thay đồ · 17:00, Nam tự nhận và cảm ơn

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、あの<ruby>板<rt>いた</rt></ruby>、<ruby>仮置<rt>かりお</rt></ruby>きしたのは<ruby>僕<rt>ぼく</rt></ruby>です。<br>*(Anh Thức, tấm ván đó, em là người đặt tạm ạ.)* |
| Thức | <ruby>知<rt>し</rt></ruby>ってた。でも<ruby>是正<rt>ぜせい</rt></ruby>に<ruby>名前<rt>なまえ</rt></ruby>は<ruby>書<rt>か</rt></ruby>かんかったやろ?<br>*(Anh biết. Nhưng anh không ghi tên vào báo cáo đúng không?)* |
| Nam | はい。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>えなくてすみませんでした。<br>*(Vâng. Em không dám nói thật, xin lỗi ạ.)* |
| Thức | <ruby>今<rt>いま</rt></ruby><ruby>言<rt>い</rt></ruby>えたやろ。それでええ。<ruby>大事<rt>だいじ</rt></ruby>なのは<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ることや。<br>*(Giờ nói được rồi đấy. Vậy là được. Quan trọng là tuân thủ quy trình.)* |
| Nam | これからは<ruby>必<rt>かなら</rt></ruby>ず<ruby>宣言<rt>せんげん</rt></ruby>して<ruby>即<rt>そく</rt></ruby><ruby>搬出<rt>はんしゅつ</rt></ruby>します。<br>*(Từ giờ em nhất định tuyên bố và đưa ra ngay ạ.)* |
| Thức | それでこそ<ruby>成長<rt>せいちょう</rt></ruby>や。よう<ruby>言<rt>い</rt></ruby>えた。<br>*(Vậy mới là trưởng thành. Nói ra được tốt đấy.)* |

---

## Tình huống 17 — Công trường · 17:10, dặn tổ duy trì cảnh giác

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>のヒヤリを<ruby>忘<rt>わす</rt></ruby>れないでください。<br>*(Mọi người, đừng quên suýt tai nạn hôm nay.)* |
| Hùng | <ruby>怪我人<rt>けがにん</rt></ruby>なしやったけど、<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えたら<ruby>大事故<rt>だいじこ</rt></ruby>やったな。<br>*(Không ai bị thương nhưng sai một bước là tai nạn lớn nhỉ.)* |
| Thức | そう。ヒヤリは<ruby>事故<rt>じこ</rt></ruby>の<ruby>一歩<rt>いっぽ</rt></ruby><ruby>手前<rt>てまえ</rt></ruby>や。<ruby>軽<rt>かる</rt></ruby>く<ruby>見<rt>み</rt></ruby>たらあかん。<br>*(Đúng. Suýt tai nạn là một bước trước tai nạn. Đừng coi nhẹ.)* |
| Sasaki | <ruby>手順<rt>てじゅん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>れば<ruby>防<rt>ふせ</rt></ruby>げますね。<br>*(Tuân thủ quy trình thì ngăn được nhỉ.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby><ruby>同<rt>おな</rt></ruby>じ<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちでな。<ruby>慣<rt>な</rt></ruby>れたころが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Mỗi ngày cùng một tâm thế nhé. Lúc quen tay là nguy nhất.)* |
| Nam | <ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Em khắc cốt ạ.)* |

---

## Tình huống 18 — Văn phòng công trường · 17:20, Ishikawa nói riêng

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>一<rt>ひと</rt></ruby>つ<ruby>聞<rt>き</rt></ruby>いていいですか。<br>*(Anh Thức, hỏi một điều được không.)* |
| Thức | はい、<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Vâng, gì ạ?)* |
| Ishikawa | <ruby>仮置<rt>かりお</rt></ruby>きした<ruby>本人<rt>ほんにん</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かってましたよね?なぜ<ruby>書<rt>か</rt></ruby>かなかった?<br>*(Người đặt tạm, anh biết chứ? Sao không ghi?)* |
| Thức | <ruby>個人<rt>こじん</rt></ruby>を<ruby>責<rt>せ</rt></ruby>めると<ruby>報告<rt>ほうこく</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がらなくなります。<ruby>仕組<rt>しく</rt></ruby>みを<ruby>直<rt>なお</rt></ruby>すほうが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Trách cá nhân thì báo cáo không lên nữa. Sửa cơ chế quan trọng hơn ạ.)* |
| Ishikawa | …その<ruby>判断<rt>はんだん</rt></ruby>ができる<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてや。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>感心<rt>かんしん</rt></ruby>したよ。<br>*(…班長 người nước ngoài quyết được vậy là lần đầu tôi gặp. Thật ra tôi nể đấy.)* |
| Thức | ありがとうございます。<ruby>現場<rt>げんば</rt></ruby>を<ruby>良<rt>よ</rt></ruby>くしたいだけです。<br>*(Em cảm ơn ạ. Em chỉ muốn công trường tốt lên thôi ạ.)* |

---

## Tình huống 19 — Cổng công trường · 17:30, 親方 ghi nhận

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>石川<rt>いしかわ</rt></ruby>さんがえらい<ruby>感心<rt>かんしん</rt></ruby>しとったぞ。<br>*(Thức, anh Ishikawa nể lắm đấy.)* |
| Thức | <ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>のことをしただけです。<br>*(Em chỉ làm việc đương nhiên thôi ạ.)* |
| Tanigawa | その「<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>」ができん<ruby>班長<rt>はんちょう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いんや。ヒヤリを<ruby>隠<rt>かく</rt></ruby>す<ruby>奴<rt>やつ</rt></ruby>もおる。<br>*(Cái "đương nhiên" đó nhiều 班長 không làm được. Có đứa còn giấu suýt tai nạn.)* |
| Thức | <ruby>隠<rt>かく</rt></ruby>したら<ruby>誰<rt>だれ</rt></ruby>かが<ruby>死<rt>し</rt></ruby>ぬかもしれません。<br>*(Giấu thì có thể có người chết ạ.)* |
| Tanigawa | そや。お<ruby>前<rt>まえ</rt></ruby>はその<ruby>怖<rt>こわ</rt></ruby>さを<ruby>分<rt>わ</rt></ruby>かっとる。ええ<ruby>班長<rt>はんちょう</rt></ruby>や。<br>*(Đúng. Cậu hiểu được cái đáng sợ đó. 班長 tốt.)* |
| Thức | ありがとうございます。<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かず<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Em cảm ơn ạ. Em sẽ không lơ là, làm tiếp.)* |

---

## Tình huống 20 — Đường về · 17:40, Thức và Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, hôm nay căng phết. Ván rơi mà không trúng ai là phúc lớn. |
| Thức | Ừ. Tao run hơn lúc bị 親方 mắng ngày xưa. Chỉ chậm một giây là khác hẳn. |
| Hùng | Mày không khai Nam, lại còn bắt nó tự nói ra. Hay đấy. |
| Thức | Tao muốn nó hiểu báo cáo thật quan trọng hơn sợ bị mắng. Giấu mới là tội. |
| Hùng | 石川 từ chỗ coi thường người mình giờ nể mày ra mặt. |
| Thức | Không phải vì tao giỏi. Vì cả tổ trung thực. Cái đó quý hơn. Về thôi. |

---

## Đọng lại

Khi tổ gặp ヒヤリハット (ván sàn suýt rơi trúng người), Thức xử lý chuẩn quy trình: dừng việc, cô lập hiện trường, chụp ảnh, báo cáo 現場監督 (元請) ngay, điều tra nguyên nhân không truy tội ai, viết 是正報告書 với 3 nguyên nhân — 3 biện pháp cụ thể, phổ biến quy trình mới và làm KY khẩn. Thức không ghi tên Nam vào báo cáo vì "trách cá nhân thì báo cáo không còn lên" — và Nam tự nguyện nhận lỗi sau đó. Bài học: giấu suýt tai nạn thì lần sau thành tai nạn thật; sửa cơ chế quan trọng hơn quy tội. 現場監督 Ishikawa từ hoài nghi chuyển sang thật sự nể phục.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | ヒヤリハット | ひやりはっと | Sự cố suýt nguy hiểm |
> | 是正報告書 | ぜせいほうこくしょ | Báo cáo khắc phục |
> | 元請 | もとうけ | Nhà thầu chính |
> | 初動 | しょどう | Xử lý ban đầu |
> | 現場保全 | げんばほぜん | Bảo toàn hiện trường |
> | 原因分析 | げんいんぶんせき | Phân tích nguyên nhân |
> | 再発防止策 | さいはつぼうしさく | Biện pháp phòng tái diễn |
> | 仮置き | かりおき | Đặt tạm |
> | 即搬出 | そくはんしゅつ | Đưa ra ngay |
> | 宣言 | せんげん | Tuyên bố (trước khi thao tác) |
> | 立入禁止 | たちいりきんし | Cấm vào |
> | 承認 | しょうにん | Phê duyệt |
> | 定着 | ていちゃく | Ngấm, ổn định thành nếp |
> | 軽く見る | かるくみる | Coi nhẹ |
> | 一歩手前 | いっぽてまえ | Một bước trước (ngưỡng) |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000010, 800000036, NULL, 'markdown_book', 'T10. Gặp Linh — Động viên nghề (リンと会う)', '# Sách kỹ năng đặc định xây dựng · T10. Gặp Linh — Động viên nghề (リンと会う)

> **Mục tiêu nhân vật:** Tuyến phụ nhẹ: Thức và Linh — người bạn gái đồng hương quen từ hồi còn ở Việt Nam, lâu nay giữ liên lạc qua điện thoại, nay Linh cũng sang Nhật làm ở ngành khác — lần đầu gặp nhau trực tiếp tại Nhật. Nội dung chỉ là động viên nghề, không cưới xin/gia đình. Trọng tâm chương vẫn là ≥18 tình huống hội thoại TIẾNG NHẬT NGHIỆP VỤ tại công trường ở vai 班長.

---

## Bối cảnh

Tháng 12 năm 2029. Một tuần làm việc bình thường nhưng bận rộn cuối năm trên công trường (bê tông mùa đông, đẩy tiến độ trước nghỉ Tết). Linh là bạn gái đồng hương Việt của Thức, hai người quen nhau từ hồi còn ở quê và vẫn giữ liên lạc qua điện thoại suốt mấy năm Thức đi thực tập sinh; gần đây Linh cũng sang Nhật làm ở một ngành khác. Cuối tuần này hai người mới có dịp gặp nhau trực tiếp lần đầu tại Nhật — chỉ một tình huống tiếng Việt ngắn để cô động viên Thức về nghề (chưa cưới, không bàn chuyện gia đình). Phần còn lại vẫn là hội thoại nghiệp vụ tiếng Nhật của 班長 Thức. (Chế độ visa/JAC nhắc trong chương đúng tại thời điểm biên soạn năm 2026.)

---

## Tình huống 1 — Công trường · 7:50, 職長 giao mục tiêu cuối năm

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>年内<rt>ねんない</rt></ruby>に<ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>を<ruby>仕上<rt>しあ</rt></ruby>げたい。<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Thức, muốn hoàn thiện giàn giáo tòa Nam trong năm. Nhờ nhé.)* |
| Thức | はい。<ruby>残<rt>のこ</rt></ruby>りは<ruby>何<rt>なん</rt></ruby><ruby>日<rt>にち</rt></ruby>ありますか?<br>*(Vâng. Còn mấy ngày ạ?)* |
| Saito | <ruby>実働<rt>じつどう</rt></ruby>で<ruby>8日<rt>ようか</rt></ruby>や。<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>日<rt>ひ</rt></ruby>が<ruby>短<rt>みじか</rt></ruby>いから<ruby>段取<rt>だんど</rt></ruby>りが<ruby>勝負<rt>しょうぶ</rt></ruby>や。<br>*(Làm thật 8 ngày. Mùa đông ngày ngắn nên bố trí là then chốt.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>朝<rt>あさ</rt></ruby><ruby>一<rt>いち</rt></ruby>から<ruby>動<rt>うご</rt></ruby>けるよう<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>前日<rt>ぜんじつ</rt></ruby>にします。<br>*(Em rõ ạ. Em chuẩn bị từ hôm trước để sáng làm được ngay ạ.)* |
| Saito | ええ<ruby>判断<rt>はんだん</rt></ruby>や。<ruby>無理<rt>むり</rt></ruby>な<ruby>突貫<rt>とっかん</rt></ruby>はするな。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>やで。<br>*(Quyết định tốt. Đừng làm cố lao đầu. An toàn là trên hết.)* |
| Thức | はい、<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>って<ruby>進<rt>すす</rt></ruby>めます。<br>*(Vâng, em sẽ giữ an toàn mà tiến hành ạ.)* |

---

## Tình huống 2 — KY buổi sáng · 8:00, cảnh báo nguy cơ mùa đông

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>冬<rt>ふゆ</rt></ruby>のKYです。<ruby>今日<rt>きょう</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか?<br>*(Mọi người, KY mùa đông. Nguy hiểm hôm nay là gì?)* |
| Hùng | <ruby>朝<rt>あさ</rt></ruby>の<ruby>凍結<rt>とうけつ</rt></ruby>や。<ruby>足場<rt>あしば</rt></ruby>が<ruby>滑<rt>すべ</rt></ruby>る。<br>*(Đóng băng buổi sáng. Giàn giáo trơn.)* |
| Thức | そうや。<ruby>霜<rt>しも</rt></ruby>で<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>が<ruby>滑<rt>すべ</rt></ruby>る。<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Đúng. Sương giá làm ván sàn trơn. Biện pháp?)* |
| Sasaki | <ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>凍結<rt>とうけつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>と<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めです。<br>*(Trước khi làm kiểm tra đóng băng và chống trơn ạ.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>は「<ruby>凍結<rt>とうけつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>、<ruby>転倒<rt>てんとう</rt></ruby>ゼロ」。<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>!<br>*(Mục tiêu hôm nay "kiểm tra đóng băng triệt để, không trượt ngã". Chỉ tay xác nhận!)* |
| Tổ | <ruby>凍結<rt>とうけつ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、ヨシ!<br>*(Kiểm tra đóng băng, tốt!)* |

---

## Tình huống 3 — Công trường · 8:30, kiểm tra đóng băng cùng tổ

| Vai | Lời thoại |
|---|---|
| Thức | ナムさん、<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>を<ruby>手<rt>て</rt></ruby>で<ruby>触<rt>さわ</rt></ruby>って<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Nam, sờ tay vào ván sàn kiểm tra.)* |
| Nam | <ruby>北側<rt>きたがわ</rt></ruby>がまだ<ruby>凍<rt>こお</rt></ruby>っています。<br>*(Phía Bắc vẫn còn đóng băng ạ.)* |
| Thức | やっぱりな。<ruby>北側<rt>きたがわ</rt></ruby>は<ruby>日<rt>ひ</rt></ruby>が<ruby>当<rt>あ</rt></ruby>たってからや。<ruby>先<rt>さき</rt></ruby>に<ruby>南側<rt>みなみがわ</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めよう。<br>*(Quả nhiên. Phía Bắc đợi có nắng đã. Làm phía Nam trước nào.)* |
| Nam | <ruby>南側<rt>みなみがわ</rt></ruby>は<ruby>乾<rt>かわ</rt></ruby>いています。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>そうです。<br>*(Phía Nam khô rồi. Có vẻ ổn ạ.)* |
| Thức | ええな。<ruby>段取<rt>だんど</rt></ruby>りを<ruby>天気<rt>てんき</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせる。これも<ruby>冬<rt>ふゆ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>や。<br>*(Tốt. Bố trí theo thời tiết. Đây cũng là việc mùa đông.)* |
| Nam | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em học được nhiều ạ.)* |

---

## Tình huống 4 — Công trường · 9:30, phối hợp với tổ bê tông

| Vai | Lời thoại |
|---|---|
| ĐC bê tông | トゥックさん、<ruby>明日<rt>あした</rt></ruby><ruby>打設<rt>だせつ</rt></ruby>や。<ruby>足場<rt>あしば</rt></ruby><ruby>空<rt>あ</rt></ruby>けてもらえるか?<br>*(Anh Thức, mai đổ bê tông. Để trống giàn giáo được không?)* |
| Thức | <ruby>打設<rt>だせつ</rt></ruby>はどのエリアですか?<br>*(Đổ bê tông khu nào ạ?)* |
| ĐC bê tông | <ruby>2階<rt>にかい</rt></ruby>の<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>や。<br>*(Nửa Đông tầng 2.)* |
| Thức | では<ruby>東<rt>ひがし</rt></ruby><ruby>半分<rt>はんぶん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>午後<rt>ごご</rt></ruby>に<ruby>回<rt>まわ</rt></ruby>します。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>西<rt>にし</rt></ruby><ruby>側<rt>がわ</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。<br>*(Vậy việc giàn giáo nửa Đông để chiều mai. Sáng làm phía Tây ạ.)* |
| ĐC bê tông | <ruby>助<rt>たす</rt></ruby>かるわ。<ruby>養生<rt>ようじょう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>も<ruby>考<rt>かんが</rt></ruby>えてくれてるんやな。<br>*(Đỡ quá. Anh tính cả thời gian bảo dưỡng nhỉ.)* |
| Thức | はい、<ruby>冬<rt>ふゆ</rt></ruby>は<ruby>養生<rt>ようじょう</rt></ruby>が<ruby>長<rt>なが</rt></ruby>めなので<ruby>配慮<rt>はいりょ</rt></ruby>します。<br>*(Vâng, mùa đông bảo dưỡng lâu hơn nên em lưu ý ạ.)* |

---

## Tình huống 5 — Công trường · 10:30, 現場監督 Ishikawa hỏi tiến độ cuối năm

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>年内<rt>ねんない</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>見通<rt>みとお</rt></ruby>しはどうですか?<br>*(Anh Thức, hoàn thành trong năm, triển vọng thế nào?)* |
| Thức | <ruby>現状<rt>げんじょう</rt></ruby><ruby>7割<rt>ななわり</rt></ruby>です。<ruby>天候<rt>てんこう</rt></ruby><ruby>次第<rt>しだい</rt></ruby>ですが<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>進<rt>すす</rt></ruby>めています。<br>*(Hiện 70% ạ. Tùy thời tiết nhưng đang đúng kế hoạch ạ.)* |
| Ishikawa | <ruby>悪天候<rt>あくてんこう</rt></ruby>のリスクは?<br>*(Rủi ro thời tiết xấu?)* |
| Thức | <ruby>雪<rt>ゆき</rt></ruby><ruby>予報<rt>よほう</rt></ruby>が<ruby>1日<rt>いちにち</rt></ruby>あります。その<ruby>分<rt>ぶん</rt></ruby>は<ruby>他<rt>ほか</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>に<ruby>前倒<rt>まえだお</rt></ruby>しで<ruby>吸収<rt>きゅうしゅう</rt></ruby>します。<br>*(Có 1 ngày dự báo tuyết. Phần đó em dồn sớm sang ngày khác bù ạ.)* |
| Ishikawa | <ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んだ<ruby>計画<rt>けいかく</rt></ruby>やな。<ruby>安心<rt>あんしん</rt></ruby>して<ruby>任<rt>まか</rt></ruby>せられる。<br>*(Kế hoạch nhìn trước đấy. Giao yên tâm.)* |
| Thức | ありがとうございます。<ruby>無理<rt>むり</rt></ruby>せず<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Em cảm ơn ạ. Em làm chắc chắn không ráng.)* |

---

## Tình huống 6 — Công trường · 11:00, hướng dẫn Nam thao tác lạnh

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>手<rt>て</rt></ruby>がかじかんでクランプが<ruby>締<rt>し</rt></ruby>めにくいです。<br>*(Anh Thức, tay cóng nên siết kẹp khó ạ.)* |
| Thức | <ruby>冬<rt>ふゆ</rt></ruby>はそれが<ruby>危<rt>あぶ</rt></ruby>ない。<ruby>無理<rt>むり</rt></ruby>に<ruby>力<rt>ちから</rt></ruby><ruby>入<rt>い</rt></ruby>れたら<ruby>滑<rt>すべ</rt></ruby>る。<br>*(Mùa đông cái đó nguy. Ráng dùng sức là trượt.)* |
| Nam | どうすればいいですか?<br>*(Làm sao ạ?)* |
| Thức | <ruby>休憩<rt>きゅうけい</rt></ruby>で<ruby>手<rt>て</rt></ruby>を<ruby>温<rt>あたた</rt></ruby>める。<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>め<ruby>手袋<rt>てぶくろ</rt></ruby>も<ruby>使<rt>つか</rt></ruby>え。<br>*(Giải lao làm ấm tay. Dùng cả găng chống trơn.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>無理<rt>むり</rt></ruby>しません。<br>*(Em hiểu rồi. Em không ráng ạ.)* |
| Thức | <ruby>冬<rt>ふゆ</rt></ruby>は<ruby>急<rt>いそ</rt></ruby>がず<ruby>確実<rt>かくじつ</rt></ruby>にや。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>速<rt>はや</rt></ruby>い。<br>*(Mùa đông không vội mà chắc. Đó là nhanh nhất.)* |

---

## Tình huống 7 — Công trường · 13:00, công bố 段取り buổi chiều

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>午後<rt>ごご</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りです。<ruby>北側<rt>きたがわ</rt></ruby>は<ruby>凍結<rt>とうけつ</rt></ruby>が<ruby>解<rt>と</rt></ruby>けたので<ruby>再開<rt>さいかい</rt></ruby>します。<br>*(Bố trí buổi chiều. Phía Bắc tan băng nên làm lại.)* |
| Hùng | <ruby>北側<rt>きたがわ</rt></ruby>は<ruby>誰<rt>だれ</rt></ruby>がやる?<br>*(Phía Bắc ai làm?)* |
| Thức | フンさんと<ruby>佐々木<rt>ささき</rt></ruby>さん。<ruby>私<rt>わたし</rt></ruby>とナムさんは<ruby>西側<rt>にしがわ</rt></ruby><ruby>続<rt>つづ</rt></ruby>きです。<br>*(Hùng và Sasaki. Tôi với Nam làm tiếp phía Tây.)* |
| Sasaki | <ruby>日没<rt>にちぼつ</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>ですか?<br>*(Mặt trời lặn mấy giờ ạ?)* |
| Thức | <ruby>4時半<rt>よじはん</rt></ruby>や。<ruby>4時<rt>よじ</rt></ruby>には<ruby>高所<rt>こうしょ</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>上<rt>あ</rt></ruby>げて<ruby>片付<rt>かたづ</rt></ruby>けや。<br>*(4 rưỡi. 4 giờ kết thúc việc trên cao và dọn dẹp.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>暗<rt>くら</rt></ruby>くなる<ruby>前<rt>まえ</rt></ruby>に<ruby>降<rt>お</rt></ruby>りるな。<br>*(Rõ. Xuống trước khi tối nhỉ.)* |

---

## Tình huống 8 — Công trường · 14:30, xử lý gió lạnh mạnh

| Vai | Lời thoại |
|---|---|
| Sasaki | トゥックさん、<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなってきました。シートがあおられています。<br>*(Anh Thức, gió mạnh lên. Bạt bị giật ạ.)* |
| Thức | <ruby>風速<rt>ふうそく</rt></ruby>はどれくらいや?<ruby>高所<rt>こうしょ</rt></ruby>は<ruby>危<rt>あぶ</rt></ruby>ないな。<br>*(Tốc độ gió khoảng bao nhiêu? Trên cao nguy đấy.)* |
| Sasaki | <ruby>体感<rt>たいかん</rt></ruby>で<ruby>10<rt>じゅう</rt></ruby>メートル<ruby>超<rt>こ</rt></ruby>えてそうです。<br>*(Cảm giác hơn 10 m/giây ạ.)* |
| Thức | <ruby>10<rt>じゅう</rt></ruby>メートル<ruby>超<rt>ちょう</rt></ruby>えは<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>や。<ruby>全員<rt>ぜんいん</rt></ruby><ruby>下<rt>お</rt></ruby>りて。<br>*(Trên 10 m thì dừng việc trên cao. Cả tổ xuống.)* |
| Sasaki | はい、すぐ<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vâng, em báo ngay ạ.)* |
| Thức | シートを<ruby>一部<rt>いちぶ</rt></ruby><ruby>畳<rt>たた</rt></ruby>んで<ruby>風<rt>かぜ</rt></ruby>を<ruby>逃<rt>に</rt></ruby>がそう。<ruby>安全<rt>あんぜん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>や。<br>*(Gấp bớt bạt cho thoát gió. Ưu tiên an toàn.)* |

---

## Tình huống 9 — Công trường · 15:00, báo 職長 việc dừng vì gió

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>強風<rt>きょうふう</rt></ruby>で<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>中止<rt>ちゅうし</rt></ruby>しました。<br>*(Đốc công, vì gió mạnh em dừng việc trên cao ạ.)* |
| Saito | <ruby>正<rt>ただ</rt></ruby>しい。<ruby>無理<rt>むり</rt></ruby>させんでええ。<ruby>進捗<rt>しんちょく</rt></ruby>は?<br>*(Đúng. Không cần ráng. Tiến độ thì sao?)* |
| Thức | <ruby>1<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ほど<ruby>遅<rt>おく</rt></ruby>れますが、<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>一<rt>いち</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>します。<br>*(Chậm khoảng 1 tiếng, nhưng mai sáng sớm em bù lại ạ.)* |
| Saito | <ruby>年内<rt>ねんない</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>には<ruby>響<rt>ひび</rt></ruby>かんか?<br>*(Có ảnh hưởng hoàn thành trong năm không?)* |
| Thức | <ruby>余裕<rt>よゆう</rt></ruby>を<ruby>見<rt>み</rt></ruby>た<ruby>計画<rt>けいかく</rt></ruby>なので<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Em đã tính dư trong kế hoạch nên ổn ạ.)* |
| Saito | さすが<ruby>段取<rt>だんど</rt></ruby>りがええ。<ruby>安心<rt>あんしん</rt></ruby>や。<br>*(Quả nhiên bố trí khéo. Yên tâm.)* |

---

## Tình huống 10 — Phòng nghỉ · 15:30, nhận tin nhắn Linh (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | (xem điện thoại) Linh nhắn cuối tuần này cô ấy lên Aichi chơi, rủ gặp. |
| Hùng | Bạn gái mày à? Lâu rồi không gặp nhỉ. Đi đi, làm hoài cũng phải nghỉ. |
| Thức | Ừ, cũng gần năm rồi mới gặp lại. Mấy nay cuối năm bận quá. |
| Hùng | Cứ đi. Mày 班長 căng thẳng suốt, có người động viên cũng tốt. |
| Thức | Ừ, để cuối tuần. Giờ lo cho xong tiến độ cái đã. |
| Hùng | Đúng tính mày. Việc trước, nhưng đừng quên sống nữa đấy. |

---

## Tình huống 11 — Công trường · 16:00, dặn tổ dọn dẹp sớm vì trời tối

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>4時<rt>よじ</rt></ruby>です。<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>、<ruby>片付<rt>かたづ</rt></ruby>けに<ruby>入<rt>はい</rt></ruby>ります。<br>*(Mọi người, 4 giờ rồi. Kết thúc việc trên cao, vào dọn dẹp.)* |
| Hùng | <ruby>冬<rt>ふゆ</rt></ruby>は<ruby>暗<rt>くら</rt></ruby>くなるの<ruby>早<rt>はや</rt></ruby>いな。<br>*(Mùa đông tối nhanh nhỉ.)* |
| Thức | そう。<ruby>暗<rt>くら</rt></ruby>がりの<ruby>高所<rt>こうしょ</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby>のもとや。<ruby>明<rt>あか</rt></ruby>るいうちに<ruby>降<rt>お</rt></ruby>りる。<br>*(Đúng. Trên cao chỗ tối là gốc tai nạn. Xuống lúc còn sáng.)* |
| Nam | <ruby>工具<rt>こうぐ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>もしますね。<br>*(Em kiểm tra dụng cụ luôn ạ.)* |
| Thức | <ruby>頼<rt>たの</rt></ruby>む。<ruby>数<rt>かず</rt></ruby>が<ruby>合<rt>あ</rt></ruby>わんと<ruby>明日<rt>あした</rt></ruby><ruby>困<rt>こま</rt></ruby>る。<br>*(Nhờ nhé. Thiếu số là mai phiền.)* |
| Nam | <ruby>全部<rt>ぜんぶ</rt></ruby>そろっています。<br>*(Đủ hết ạ.)* |

---

## Tình huống 12 — Văn phòng · 16:40, báo cáo cuối ngày cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>強風<rt>きょうふう</rt></ruby><ruby>中断<rt>ちゅうだん</rt></ruby>はありましたが<ruby>無事故<rt>むじこ</rt></ruby>です。<br>*(Đốc công, báo cáo hôm nay. Có gián đoạn vì gió nhưng không tai nạn ạ.)* |
| Saito | <ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>割<rt>わり</rt></ruby>や?<br>*(Tiến độ mấy phần?)* |
| Thức | <ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby>は<ruby>75<rt>ななじゅうご</rt></ruby>パーセントです。<ruby>予定<rt>よてい</rt></ruby>より<ruby>少<rt>すこ</rt></ruby>し<ruby>早<rt>はや</rt></ruby>いです。<br>*(Tòa Nam 75% ạ. Hơi sớm hơn kế hoạch ạ.)* |
| Saito | <ruby>強風<rt>きょうふう</rt></ruby>あったのに<ruby>早<rt>はや</rt></ruby>いんか。<ruby>段取<rt>だんど</rt></ruby>りの<ruby>勝利<rt>しょうり</rt></ruby>やな。<br>*(Có gió mà sớm à. Thắng nhờ bố trí nhỉ.)* |
| Thức | <ruby>天候<rt>てんこう</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせて<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>変<rt>か</rt></ruby>えたのが<ruby>効<rt>き</rt></ruby>きました。<br>*(Đổi thứ tự theo thời tiết có tác dụng ạ.)* |
| Saito | <ruby>冬<rt>ふゆ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>を<ruby>仕切<rt>しき</rt></ruby>れる<ruby>班長<rt>はんちょう</rt></ruby>は<ruby>本物<rt>ほんもの</rt></ruby>や。<br>*(班長 cầm được công trường mùa đông là thật lực.)* |

---

## Tình huống 13 — Quán cà phê · Chủ Nhật, gặp Linh (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh Thức, lâu lắm rồi. Anh đen hơn, nhưng nhìn rắn rỏi hẳn. |
| Thức | Ừ, làm 班長 ngoài công trường suốt. Em khỏe không? Công việc ổn chứ? |
| Linh | Em ổn. Em mừng là anh chuyển 特定技能 rồi còn được giao chỉ huy tổ. Giỏi thật đấy. |
| Thức | Cũng áp lực lắm. Có hôm anh em suýt tai nạn, anh run cả người. Nhưng làm được thì thấy đáng. |
| Linh | Anh cứ lo việc cho tốt đi. Em không giục gì đâu, em hiểu nghề anh quan trọng với anh. |
| Thức | Cảm ơn em hiểu. Đợt này xong việc cuối năm anh sẽ thư thả hơn, mình gặp nhau nhiều hơn. |

---

## Tình huống 14 — Công trường · Thứ Hai 8:00, KY đầu tuần

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、おはようございます。<ruby>週明<rt>しゅうあ</rt></ruby>けのKYです。<br>*(Mọi người, chào buổi sáng. KY đầu tuần.)* |
| Hùng | <ruby>週末<rt>しゅうまつ</rt></ruby><ruby>明<rt>あ</rt></ruby>けは<ruby>気<rt>き</rt></ruby>が<ruby>緩<rt>ゆる</rt></ruby>みやすいな。<br>*(Sau cuối tuần dễ lơ là nhỉ.)* |
| Thức | そこや。<ruby>休<rt>やす</rt></ruby>み<ruby>明<rt>あ</rt></ruby>けは<ruby>事故<rt>じこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>い。<ruby>今日<rt>きょう</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>です。<br>*(Đó. Sau nghỉ tai nạn nhiều. Hôm nay đặc biệt kiểm tra triệt để.)* |
| Sasaki | <ruby>体<rt>からだ</rt></ruby>を<ruby>慣<rt>な</rt></ruby>らしてから<ruby>高所<rt>こうしょ</rt></ruby>ですね。<br>*(Làm quen người rồi mới lên cao nhỉ.)* |
| Thức | そう。<ruby>朝<rt>あさ</rt></ruby>イチは<ruby>低<rt>ひく</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>から。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>「<ruby>確認<rt>かくにん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby>」!<br>*(Đúng. Đầu giờ từ chỗ thấp. Mục tiêu hôm nay "kiểm tra triệt để, không tai nạn"!)* |
| Tổ | <ruby>確認<rt>かくにん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>、ヨシ!<br>*(Kiểm tra triệt để, tốt!)* |

---

## Tình huống 15 — Công trường · 10:00, 現場監督 Ishikawa nhờ Thức kèm thêm

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>来月<rt>らいげつ</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>が<ruby>2人<rt>ふたり</rt></ruby><ruby>入<rt>はい</rt></ruby>る。<ruby>班<rt>はん</rt></ruby>で<ruby>受<rt>う</rt></ruby>けてくれますか?<br>*(Anh Thức, tháng sau có 2 người mới. Tổ anh nhận được không?)* |
| Thức | はい、お<ruby>受<rt>う</rt></ruby>けします。<ruby>育成<rt>いくせい</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てます。<br>*(Vâng, em nhận ạ. Em sẽ lập kế hoạch đào tạo ạ.)* |
| Ishikawa | <ruby>君<rt>きみ</rt></ruby>の<ruby>班<rt>はん</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>意識<rt>いしき</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。<ruby>新人<rt>しんじん</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>つと<ruby>思<rt>おも</rt></ruby>って<ruby>頼<rt>たの</rt></ruby>む。<br>*(Tổ anh ý thức an toàn cao. Tin người mới sẽ trưởng thành nên tôi nhờ.)* |
| Thức | <ruby>光栄<rt>こうえい</rt></ruby>です。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>恐<rt>おそ</rt></ruby>れず<ruby>報告<rt>ほうこく</rt></ruby>できる<ruby>班<rt>はん</rt></ruby>にします。<br>*(Em vinh dự ạ. Em sẽ làm tổ dám báo cáo không sợ thất bại ạ.)* |
| Ishikawa | その<ruby>方針<rt>ほうしん</rt></ruby>がええんや。<ruby>期待<rt>きたい</rt></ruby>しとる。<br>*(Phương châm đó tốt. Tôi kỳ vọng.)* |
| Thức | <ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えられるよう<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố gắng đáp lại kỳ vọng ạ.)* |

---

## Tình huống 16 — Công trường · 11:00, Thức dạy Nam kỹ thuật mới

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>来月<rt>らいげつ</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>が<ruby>来<rt>く</rt></ruby>るんですよね?<br>*(Anh Thức, tháng sau có người mới nhỉ?)* |
| Thức | そや。ナムさんにも<ruby>後輩<rt>こうはい</rt></ruby>ができる。<ruby>教<rt>おし</rt></ruby>える<ruby>側<rt>がわ</rt></ruby>になるんや。<br>*(Đúng. Nam cũng có đàn em. Thành người dạy đấy.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えられるでしょうか…<br>*(Em dạy được không ạ…)* |
| Thức | できる。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>失敗<rt>しっぱい</rt></ruby>して<ruby>学<rt>まな</rt></ruby>んだことを<ruby>伝<rt>つた</rt></ruby>えればええ。<br>*(Được. Truyền lại điều mình học được từ thất bại là được.)* |
| Nam | あの<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>の<ruby>件<rt>けん</rt></ruby>みたいに、ですね。<br>*(Như vụ tấm ván đó nhỉ.)* |
| Thức | そう。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ。<br>*(Đúng. Dạy về thất bại là hữu ích nhất.)* |

---

## Tình huống 17 — Công trường · 14:00, phối hợp tổ thiết bị cuối năm

| Vai | Lời thoại |
|---|---|
| ĐC thiết bị | トゥックさん、<ruby>年末<rt>ねんまつ</rt></ruby>までに<ruby>3階<rt>さんかい</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>残<rt>のこ</rt></ruby>せるか?<br>*(Anh Thức, tới cuối năm chừa được giàn giáo tầng 3 không?)* |
| Thức | <ruby>配管<rt>はいかん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わるまで<ruby>残<rt>のこ</rt></ruby>す<ruby>区画<rt>くかく</rt></ruby>を<ruby>決<rt>き</rt></ruby>めましょう。<br>*(Cùng chốt khu chừa lại tới khi đi ống xong ạ.)* |
| ĐC thiết bị | X<ruby>5<rt>ご</rt></ruby>からX<ruby>8<rt>はち</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>してほしい。<br>*(Muốn chừa từ trục X5 tới X8.)* |
| Thức | <ruby>了解<rt>りょうかい</rt></ruby>です。そこは<ruby>解体<rt>かいたい</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>から<ruby>外<rt>はず</rt></ruby>し、<ruby>他<rt>ほか</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Rõ ạ. Chỗ đó loại khỏi diện tháo, chỗ khác làm trước ạ.)* |
| ĐC thiết bị | いつも<ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>早<rt>はや</rt></ruby>うて<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(Lúc nào điều chỉnh cũng nhanh, đỡ quá.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>様<rt>さま</rt></ruby>です。<ruby>連携<rt>れんけい</rt></ruby>して<ruby>年内<rt>ねんない</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>しましょう。<br>*(Có qua có lại ạ. Phối hợp nhắm hoàn thành trong năm nào.)* |

---

## Tình huống 18 — Công trường · 16:00, tổng kết tuần với tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今週<rt>こんしゅう</rt></ruby>もおつかれさまでした。<ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>です。<br>*(Mọi người, tuần này vất vả rồi. Tiến độ thuận lợi.)* |
| Hùng | <ruby>無事故<rt>むじこ</rt></ruby>で<ruby>来<rt>こ</rt></ruby>れたのが<ruby>一番<rt>いちばん</rt></ruby>やな。<br>*(Đi tới không tai nạn là nhất nhỉ.)* |
| Thức | そう。<ruby>年内<rt>ねんない</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>も<ruby>見<rt>み</rt></ruby>えてきました。みんなのおかげです。<br>*(Đúng. Hoàn thành trong năm cũng thấy được rồi. Nhờ mọi người.)* |
| Sasaki | <ruby>来月<rt>らいげつ</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>も<ruby>楽<rt>たの</rt></ruby>しみですね。<br>*(Người mới tháng sau cũng mong nhỉ.)* |
| Thức | <ruby>良<rt>よ</rt></ruby>い<ruby>班<rt>はん</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>げるよう、<ruby>残<rt>のこ</rt></ruby>りも<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かずいこう。<br>*(Để truyền lại tổ tốt, phần còn lại cũng không lơ là nào.)* |
| Nam | はい!<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng! Em cố gắng ạ.)* |

---

## Tình huống 19 — Văn phòng · 16:40, báo cáo tuần cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>総括<rt>そうかつ</rt></ruby>です。<ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby>は<ruby>85<rt>はちじゅうご</rt></ruby>パーセントです。<br>*(Đốc công, tổng kết tuần. Tòa Nam 85% ạ.)* |
| Saito | <ruby>強風<rt>きょうふう</rt></ruby>も<ruby>雪<rt>ゆき</rt></ruby><ruby>予報<rt>よほう</rt></ruby>もあったのにようやった。<br>*(Có gió mạnh, có cả dự báo tuyết mà làm tốt đấy.)* |
| Thức | <ruby>天候<rt>てんこう</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせた<ruby>段取<rt>だんど</rt></ruby>りで<ruby>吸収<rt>きゅうしゅう</rt></ruby>できました。<br>*(Bố trí theo thời tiết nên bù được ạ.)* |
| Saito | <ruby>来週<rt>らいしゅう</rt></ruby>で<ruby>仕上<rt>しあ</rt></ruby>がりそうやな。<br>*(Tuần sau chắc xong nhỉ.)* |
| Thức | はい、<ruby>無理<rt>むり</rt></ruby>せず<ruby>年内<rt>ねんない</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Vâng, em không ráng mà nhắm hoàn thành trong năm ạ.)* |
| Saito | お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せとけば<ruby>安心<rt>あんしん</rt></ruby>や。ええ<ruby>一年<rt>いちねん</rt></ruby>やったな。<br>*(Giao cậu thì yên tâm. Một năm tốt đấy.)* |

---

## Tình huống 20 — Cổng công trường · 17:00, 親方 hỏi chuyện riêng nhẹ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>最近<rt>さいきん</rt></ruby><ruby>顔色<rt>かおいろ</rt></ruby>がええな。<ruby>何<rt>なに</rt></ruby>かええことあったか?<br>*(Thức, dạo này sắc mặt tươi nhỉ. Có chuyện gì vui à?)* |
| Thức | <ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>同郷<rt>どうきょう</rt></ruby>の<ruby>友人<rt>ゆうじん</rt></ruby>に<ruby>久<rt>ひさ</rt></ruby>しぶりに<ruby>会<rt>あ</rt></ruby>えました。<br>*(Cuối tuần em gặp lại bạn đồng hương sau lâu ngày ạ.)* |
| Tanigawa | そら<ruby>良<rt>よ</rt></ruby>かった。<ruby>仕事<rt>しごと</rt></ruby>ばっかりやと<ruby>気<rt>き</rt></ruby>が<ruby>滅入<rt>めい</rt></ruby>るからな。<br>*(Vậy thì tốt. Cứ công việc mãi thì nản đấy.)* |
| Thức | はい。でも<ruby>仕事<rt>しごと</rt></ruby>も<ruby>今<rt>いま</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>な<ruby>時期<rt>じき</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Nhưng em nghĩ công việc giờ cũng là giai đoạn quan trọng ạ.)* |
| Tanigawa | <ruby>両方<rt>りょうほう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>にせえ。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>くには<ruby>心<rt>こころ</rt></ruby>の<ruby>支<rt>ささ</rt></ruby>えもいる。<br>*(Coi trọng cả hai. Làm lâu dài thì cũng cần chỗ dựa tinh thần.)* |
| Thức | ありがとうございます。<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しつつ<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cảm ơn ạ. Em sẽ vừa tập trung công việc vừa cố gắng ạ.)* |

---

## Đọng lại

Một tuần bận rộn cuối năm: Thức cầm tổ qua các thử thách mùa đông — đóng băng, gió lạnh mạnh, ngày ngắn — bằng cách điều chỉnh 段取り theo thời tiết, dừng việc khi gió vượt ngưỡng, vẫn giữ tiến độ vượt kế hoạch. Cuối tuần gặp lại Linh — bạn gái đồng hương — chỉ là một buổi động viên nghề nhẹ nhàng (không cưới xin, không gia đình). 現場監督 Ishikawa tin tưởng giao Thức kèm 2 người mới tháng sau; Thức bắt đầu chuẩn bị để Nam trở thành người dạy lại. 親方 nhắc làm lâu dài cần cả chỗ dựa tinh thần lẫn tập trung công việc.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 年内完了 | ねんないかんりょう | Hoàn thành trong năm |
> | 突貫 | とっかん | Làm cấp tốc, lao đầu |
> | 凍結 | とうけつ | Đóng băng |
> | 霜 | しも | Sương giá |
> | 滑り止め | すべりどめ | Chống trơn trượt |
> | 養生期間 | ようじょうきかん | Thời gian bảo dưỡng (bê tông) |
> | 打設 | だせつ | Đổ bê tông |
> | 風速 | ふうそく | Tốc độ gió |
> | 日没 | にちぼつ | Mặt trời lặn |
> | 週明け | しゅうあけ | Đầu tuần (sau nghỉ) |
> | 育成計画 | いくせいけいかく | Kế hoạch đào tạo |
> | 後輩 | こうはい | Đàn em |
> | 総括 | そうかつ | Tổng kết |
> | 心の支え | こころのささえ | Chỗ dựa tinh thần |
> | 同郷 | どうきょう | Đồng hương |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000011, 800000036, NULL, 'markdown_book', 'T11. Nộp hồ sơ レベル判定 lên CCUS シルバー (レベル判定申請)', '# Sách kỹ năng đặc định xây dựng · T11. Nộp hồ sơ レベル判定 lên CCUS シルバー (レベル判定申請)

> **Mục tiêu nhân vật:** Thức chuẩn bị và nộp hồ sơ đánh giá cấp độ (レベル判定) lên CCUS để nâng thẻ từ trắng lên シルバー: tổng hợp 就業日数, bằng cấp, kinh nghiệm 班長, làm việc với bộ phận hành chính và 職長.

---

## Bối cảnh

Tháng 1 năm 2030. Sau gần một năm tích lũy 就業履歴 đều đặn trên CCUS, đủ điều kiện về số ngày làm và kinh nghiệm 班長, Thức chuẩn bị hồ sơ レベル判定 để nâng thẻ CCUS từ 白 (trắng) lên シルバー. Chương tập trung mẫu câu nghiệp vụ khi tổng hợp hồ sơ, hỏi điều kiện, xác nhận với 職長/bộ phận hành chính, đồng thời vẫn lồng công việc chỉ huy thường ngày. (Tiêu chí レベル判定/CCUS đúng tại thời điểm biên soạn năm 2026, có thể thay đổi theo quy định mới.)

---

## Tình huống 1 — Văn phòng · 8:00, 職長 gợi ý nộp レベル判定

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、お<ruby>前<rt>まえ</rt></ruby>そろそろレベル<ruby>判定<rt>はんてい</rt></ruby>を<ruby>申請<rt>しんせい</rt></ruby>できるで。<br>*(Thức, cậu sắp xin được đánh giá cấp độ đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしていますか?<br>*(Thật ạ? Em đủ điều kiện chưa ạ?)* |
| Saito | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>も<ruby>足<rt>た</rt></ruby>りとるし、<ruby>班長<rt>はんちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>もある。シルバーを<ruby>狙<rt>ねら</rt></ruby>える。<br>*(Số ngày làm đủ, có cả kinh nghiệm 班長. Nhắm được cấp bạc.)* |
| Thức | シルバーですか…<ruby>嬉<rt>うれ</rt></ruby>しいです。<ruby>準備<rt>じゅんび</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Cấp bạc ạ… Em mừng quá. Em bắt đầu chuẩn bị ạ.)* |
| Saito | <ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>はあとで<ruby>一覧<rt>いちらん</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す。<br>*(Giấy tờ cần thiết lát đưa danh sách.)* |
| Thức | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em cảm ơn ạ. Nhờ đốc công ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:20, hỏi tiêu chí cấp シルバー

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、シルバーになる<ruby>基準<rt>きじゅん</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Đốc công, chỉ rõ tiêu chí lên cấp bạc giúp em ạ.)* |
| Saito | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>、<ruby>保有<rt>ほゆう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>、それと<ruby>職長<rt>しょくちょう</rt></ruby>・<ruby>班長<rt>はんちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>見<rt>み</rt></ruby>られる。<br>*(Số ngày làm, bằng đang có, và kinh nghiệm 職長・班長 được xét.)* |
| Thức | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Số ngày làm cần bao nhiêu ngày ạ?)* |
| Saito | <ruby>分野<rt>ぶんや</rt></ruby>ごとに<ruby>基準<rt>きじゅん</rt></ruby>がある。とびは<ruby>規定<rt>きてい</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>をCCUSで<ruby>確認<rt>かくにん</rt></ruby>できる。<br>*(Mỗi ngành có chuẩn riêng. Tobi thì số ngày quy định xem được trên CCUS.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>履歴<rt>りれき</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してみます。<br>*(Em sẽ kiểm tra lịch sử của mình ạ.)* |
| Saito | そや。<ruby>毎日<rt>まいにち</rt></ruby>カードをかざしてきた<ruby>成果<rt>せいか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るで。<br>*(Đúng. Thành quả mỗi ngày quẹt thẻ sẽ ra đấy.)* |

---

## Tình huống 3 — Văn phòng · 9:00, xác nhận 就業履歴 trên CCUS

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、CCUSの<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>ましょう。<br>*(Anh Thức, cùng xem lịch sử làm việc CCUS nào.)* |
| Thức | お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>登録<rt>とうろく</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>はどれくらいですか?<br>*(Nhờ chị ạ. Số ngày đăng ký bao nhiêu ạ?)* |
| Nhân viên HC | <ruby>昨年<rt>さくねん</rt></ruby><ruby>4月<rt>しがつ</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>されています。<ruby>抜<rt>ぬ</rt></ruby>けがほぼないです。<br>*(Từ tháng 4 năm ngoái ghi đều mỗi ngày. Hầu như không sót.)* |
| Thức | よかったです。<ruby>毎日<rt>まいにち</rt></ruby>かざした<ruby>甲斐<rt>かい</rt></ruby>がありました。<br>*(May quá ạ. Bõ công quẹt mỗi ngày ạ.)* |
| Nhân viên HC | <ruby>抜<rt>ぬ</rt></ruby>けが<ruby>少<rt>すく</rt></ruby>ないと<ruby>判定<rt>はんてい</rt></ruby>が<ruby>有利<rt>ゆうり</rt></ruby>です。<br>*(Ít sót thì đánh giá có lợi.)* |
| Thức | <ruby>班<rt>はん</rt></ruby>に<ruby>徹底<rt>てってい</rt></ruby>してきて<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>良<rt>よ</rt></ruby>かったです。<br>*(May là em đã quán triệt cho cả tổ ạ.)* |

---

## Tình huống 4 — Văn phòng · 9:30, kiểm kê bằng cấp đang có

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、<ruby>保有<rt>ほゆう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Anh Thức, xác nhận bằng cấp đang có.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>の<ruby>組立<rt>くみたて</rt></ruby><ruby>等<rt>とう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>を<ruby>持<rt>も</rt></ruby>っています。<br>*(Em có chứng chỉ chủ nhiệm thao tác lắp giàn giáo ạ.)* |
| Nhân viên HC | それは<ruby>大<rt>おお</rt></ruby>きいですね。<ruby>他<rt>ほか</rt></ruby>には?<br>*(Cái đó lớn đấy. Còn gì nữa?)* |
| Thức | <ruby>玉掛<rt>たまか</rt></ruby>けと<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>の<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>証<rt>しょう</rt></ruby>もあります。<br>*(Em có cả chứng nhận móc cáp và khóa đào tạo 職長 ạ.)* |
| Nhân viên HC | <ruby>十分<rt>じゅうぶん</rt></ruby>な<ruby>資格<rt>しかく</rt></ruby>です。コピーを<ruby>添付<rt>てんぷ</rt></ruby>しましょう。<br>*(Bằng cấp đủ rồi. Đính kèm bản sao nào.)* |
| Thức | はい、<ruby>原本<rt>げんぽん</rt></ruby>も<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Vâng, em mang cả bản gốc rồi ạ.)* |

---

## Tình huống 5 — Văn phòng · 10:00, nhờ 職長 chứng nhận kinh nghiệm 班長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>班長<rt>はんちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Đốc công, nhờ chứng nhận kinh nghiệm 班長 cho em được không ạ?)* |
| Saito | ええで。いつから<ruby>班長<rt>はんちょう</rt></ruby>やったか<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>くわ。<br>*(Được. Tôi ghi chính xác từ khi nào làm 班長.)* |
| Thức | <ruby>昨年<rt>さくねん</rt></ruby><ruby>4月<rt>しがつ</rt></ruby>からです。とび<ruby>班<rt>はん</rt></ruby>の<ruby>班長<rt>はんちょう</rt></ruby>です。<br>*(Từ tháng 4 năm ngoái ạ. 班長 tổ tobi ạ.)* |
| Saito | <ruby>足場<rt>あしば</rt></ruby><ruby>班<rt>はん</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>仕切<rt>しき</rt></ruby>った<ruby>実績<rt>じっせき</rt></ruby>や。<ruby>説得力<rt>せっとくりょく</rt></ruby>ある。<br>*(Thành tích cầm tổ giàn giáo 1 năm. Có sức thuyết phục.)* |
| Thức | KY<ruby>主催<rt>しゅさい</rt></ruby>や<ruby>是正<rt>ぜせい</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>もしました。<br>*(Em còn chủ trì KY và xử lý khắc phục nữa ạ.)* |
| Saito | それも<ruby>書<rt>か</rt></ruby>いとく。<ruby>実務<rt>じつむ</rt></ruby>の<ruby>中身<rt>なかみ</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Cái đó tôi ghi cả. Nội dung thực tế quan trọng.)* |

---

## Tình huống 6 — Công trường · 10:40, vẫn chỉ huy việc thường ngày

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>4階<rt>よんかい</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby>です。<ruby>固定<rt>こてい</rt></ruby>は<ruby>最後<rt>さいご</rt></ruby>までな。<br>*(Mọi người, sáng tháo dỡ tầng 4. Cố định để cuối nhé.)* |
| Hùng | <ruby>是正<rt>ぜせい</rt></ruby>の<ruby>手順<rt>てじゅん</rt></ruby><ruby>通<rt>どお</rt></ruby>りやな。<br>*(Theo quy trình khắc phục nhỉ.)* |
| Thức | そう。<ruby>外<rt>はず</rt></ruby>す<ruby>前<rt>まえ</rt></ruby>に<ruby>宣言<rt>せんげん</rt></ruby>、<ruby>仮置<rt>かりお</rt></ruby>きゼロ。<ruby>徹底<rt>てってい</rt></ruby>しよう。<br>*(Đúng. Tuyên bố trước khi tháo, không đặt tạm. Quán triệt nào.)* |
| Nam | <ruby>固定<rt>こてい</rt></ruby><ruby>外<rt>はず</rt></ruby>します!<br>*(Em tháo cố định!)* |
| Thức | <ruby>宣言<rt>せんげん</rt></ruby>ヨシ。ええ<ruby>習慣<rt>しゅうかん</rt></ruby>が<ruby>身<rt>み</rt></ruby>についたな。<br>*(Tuyên bố tốt. Thói quen tốt ngấm rồi đấy.)* |
| Nam | トゥックさんに<ruby>教<rt>おそ</rt></ruby>わったおかげです。<br>*(Nhờ anh Thức dạy ạ.)* |

---

## Tình huống 7 — Văn phòng · 13:00, lập đơn 申請 với bộ phận HC

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、レベル<ruby>判定<rt>はんてい</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby><ruby>書<rt>しょ</rt></ruby>を<ruby>作<rt>つく</rt></ruby>りましょう。<br>*(Anh Thức, làm đơn xin đánh giá cấp độ nào.)* |
| Thức | はい。<ruby>記入<rt>きにゅう</rt></ruby>はどこから<ruby>始<rt>はじ</rt></ruby>めますか?<br>*(Vâng. Điền bắt đầu từ đâu ạ?)* |
| Nhân viên HC | まず<ruby>基本<rt>きほん</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>。CCUSの<ruby>技能者<rt>ぎのうしゃ</rt></ruby>IDを<ruby>記入<rt>きにゅう</rt></ruby>します。<br>*(Trước hết thông tin cơ bản. Điền mã kỹ năng CCUS.)* |
| Thức | IDはこのカードの<ruby>番号<rt>ばんごう</rt></ruby>ですね。<br>*(Mã là số trên thẻ này nhỉ.)* |
| Nhân viên HC | そうです。<ruby>次<rt>つぎ</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby><ruby>区分<rt>くぶん</rt></ruby>を「とび」にします。<br>*(Đúng. Tiếp theo chọn phân loại xin là "tobi".)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Em vừa kiểm tra vừa làm cẩn thận ạ.)* |

---

## Tình huống 8 — Văn phòng · 13:30, đính kèm chứng từ

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | <ruby>添付<rt>てんぷ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>資格<rt>しかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>のコピーは?<br>*(Xác nhận giấy tờ đính kèm. Bản sao chứng chỉ đâu?)* |
| Thức | <ruby>3<rt>さん</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Em chuẩn bị đủ cả 3 loại ạ.)* |
| Nhân viên HC | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>はCCUSから<ruby>自動<rt>じどう</rt></ruby>で<ruby>連携<rt>れんけい</rt></ruby>されます。<br>*(Lịch sử làm việc tự liên kết từ CCUS.)* |
| Thức | では<ruby>手入力<rt>てにゅうりょく</rt></ruby>は<ruby>不要<rt>ふよう</rt></ruby>ですね。<br>*(Vậy không cần nhập tay nhỉ.)* |
| Nhân viên HC | はい。<ruby>班長<rt>はんちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>は<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>署名<rt>しょめい</rt></ruby><ruby>入<rt>い</rt></ruby>りが<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Vâng. Chứng nhận kinh nghiệm 班長 cần có chữ ký 職長.)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>署名<rt>しょめい</rt></ruby>をいただいてあります。<br>*(Em đã xin chữ ký 職長 rồi ạ.)* |

---

## Tình huống 9 — Nghỉ trưa · 12:20, tâm sự với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, mày sắp lên thẻ シルバー thật à? Nhanh phết. |
| Thức | Ừ, đủ điều kiện rồi. Nhờ năm vừa rồi ngày nào cũng quẹt thẻ đầy đủ, không sót. |
| Hùng | Hồi đầu tao còn lười quẹt lúc về, may mày bắt làm gắt. |
| Thức | Đấy. Việc nhỏ tích lại mới ra cái này. シルバー không phải tự nhiên có. |
| Hùng | Mày lên シルバー thì tổ mình cũng oai lây. Cố lên nốt. |
| Thức | Tao muốn cả tổ cùng lên cấp dần. Để tao chỉ tụi mày cách tích hồ sơ. |

---

## Tình huống 10 — Công trường · 13:50, dạy Nam về ý nghĩa レベル判定

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、レベルが<ruby>上<rt>あ</rt></ruby>がると<ruby>何<rt>なに</rt></ruby>がいいんですか?<br>*(Anh Thức, lên cấp thì có gì lợi ạ?)* |
| Thức | <ruby>技能<rt>ぎのう</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>になる。<ruby>元請<rt>もとうけ</rt></ruby>からの<ruby>評価<rt>ひょうか</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がる。<br>*(Là chứng minh tay nghề. Nhà thầu chính cũng đánh giá cao hơn.)* |
| Nam | <ruby>給料<rt>きゅうりょう</rt></ruby>にも<ruby>関係<rt>かんけい</rt></ruby>しますか?<br>*(Có liên quan lương không ạ?)* |
| Thức | <ruby>直接<rt>ちょくせつ</rt></ruby>やなくても<ruby>評価<rt>ひょうか</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby>になる。<ruby>長<rt>なが</rt></ruby>い<ruby>目<rt>め</rt></ruby>で<ruby>得<rt>とく</rt></ruby>や。<br>*(Không trực tiếp nhưng thành căn cứ đánh giá. Về lâu dài có lợi.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>もいつかシルバーになりたいです。<br>*(Em cũng muốn lên cấp bạc ạ.)* |
| Thức | なれる。<ruby>毎日<rt>まいにち</rt></ruby>かざして<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>っていけばええ。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>計画<rt>けいかく</rt></ruby><ruby>立<rt>た</rt></ruby>てよう。<br>*(Được. Mỗi ngày quẹt thẻ và lấy bằng là được. Cùng lập kế hoạch nào.)* |

---

## Tình huống 11 — Văn phòng · 14:30, rà soát đơn lần cuối

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、<ruby>申請<rt>しんせい</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>を<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Anh Thức, xác nhận cuối nội dung đơn nào.)* |
| Thức | はい。<ruby>誤<rt>あやま</rt></ruby>りがないか<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng. Em xem từng mục xem có sai không ạ.)* |
| Nhân viên HC | <ruby>氏名<rt>しめい</rt></ruby>の<ruby>表記<rt>ひょうき</rt></ruby>は<ruby>在留<rt>ざいりゅう</rt></ruby>カードと<ruby>同<rt>おな</rt></ruby>じですか?<br>*(Cách viết họ tên giống thẻ lưu trú chứ?)* |
| Thức | はい、ローマ<ruby>字<rt>じ</rt></ruby>の<ruby>綴<rt>つづ</rt></ruby>りも<ruby>一致<rt>いっち</rt></ruby>しています。<br>*(Vâng, cả chính tả chữ La-tinh cũng khớp ạ.)* |
| Nhân viên HC | <ruby>資格<rt>しかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>の<ruby>有効<rt>ゆうこう</rt></ruby><ruby>期限<rt>きげん</rt></ruby>も<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですね。<br>*(Hạn hiệu lực chứng chỉ cũng ổn nhỉ.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>しました。これで<ruby>提出<rt>ていしゅつ</rt></ruby>できそうです。<br>*(Em kiểm rồi. Thế này nộp được rồi ạ.)* |

---

## Tình huống 12 — Văn phòng · 15:00, nộp đơn 申請

| Vai | Lời thoại |
|---|---|
| Nhân viên HC | トゥックさん、<ruby>申請<rt>しんせい</rt></ruby>を<ruby>送信<rt>そうしん</rt></ruby>します。よろしいですか?<br>*(Anh Thức, gửi đơn đi nhé. Được chưa?)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ chị ạ.)* |
| Nhân viên HC | <ruby>送信<rt>そうしん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>結果<rt>けっか</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby><ruby>通知<rt>つうち</rt></ruby>されます。<br>*(Gửi xong rồi. Kết quả thông báo sau.)* |
| Thức | どれくらいかかりますか?<br>*(Mất khoảng bao lâu ạ?)* |
| Nhân viên HC | <ruby>数<rt>すう</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>です。<ruby>判定<rt>はんてい</rt></ruby>が<ruby>出<rt>で</rt></ruby>れば<ruby>新<rt>あたら</rt></ruby>しいカードが<ruby>届<rt>とど</rt></ruby>きます。<br>*(Vài tuần. Có kết quả thì thẻ mới sẽ đến.)* |
| Thức | <ruby>楽<rt>たの</rt></ruby>しみに<ruby>待<rt>ま</rt></ruby>ちます。ありがとうございました。<br>*(Em mong chờ ạ. Em cảm ơn ạ.)* |

---

## Tình huống 13 — Văn phòng · 15:10, báo cáo 職長 đã nộp

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、レベル<ruby>判定<rt>はんてい</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>しました。<br>*(Đốc công, em đã nộp đơn đánh giá cấp độ ạ.)* |
| Saito | おう、はやかったな。<ruby>書類<rt>しょるい</rt></ruby>に<ruby>不備<rt>ふび</rt></ruby>はなかったか?<br>*(Ờ, nhanh đấy. Giấy tờ không thiếu sót chứ?)* |
| Thức | <ruby>事務<rt>じむ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>と<ruby>2回<rt>にかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Em kiểm với bộ phận hành chính 2 lần. Ổn ạ.)* |
| Saito | ええ<ruby>仕事<rt>しごと</rt></ruby>や。<ruby>申請<rt>しんせい</rt></ruby>も<ruby>段取<rt>だんど</rt></ruby>りやな。<br>*(Việc tốt. Xin hồ sơ cũng là bố trí nhỉ.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るまで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かず<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Tới khi có kết quả em không lơ là, làm việc ạ.)* |
| Saito | その<ruby>姿勢<rt>しせい</rt></ruby>がシルバーにふさわしい。<br>*(Thái độ đó xứng cấp bạc.)* |

---

## Tình huống 14 — Công trường · 15:40, 現場監督 Ishikawa hỏi về đơn

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、レベル<ruby>判定<rt>はんてい</rt></ruby><ruby>出<rt>だ</rt></ruby>したそうですね。<br>*(Anh Thức, nghe nói đã nộp đánh giá cấp độ.)* |
| Thức | はい、シルバーを<ruby>目指<rt>めざ</rt></ruby>しています。<br>*(Vâng, em nhắm cấp bạc ạ.)* |
| Ishikawa | <ruby>君<rt>きみ</rt></ruby>の<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>働<rt>はたら</rt></ruby>きなら<ruby>当然<rt>とうぜん</rt></ruby>や。<ruby>是正<rt>ぜせい</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>も<ruby>立派<rt>りっぱ</rt></ruby>やった。<br>*(Với cách anh làm 1 năm thì đương nhiên. Xử lý khắc phục cũng giỏi đấy.)* |
| Thức | ありがとうございます。<ruby>現場<rt>げんば</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだことが<ruby>形<rt>かたち</rt></ruby>になります。<br>*(Em cảm ơn ạ. Điều học ở công trường thành hình hài ạ.)* |
| Ishikawa | シルバーになっても<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かんことや。<ruby>次<rt>つぎ</rt></ruby>はゴールドや。<br>*(Lên bạc cũng đừng lơ là. Tiếp theo là vàng.)* |
| Thức | はい、<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>にします。<br>*(Vâng, em lấy đó làm mục tiêu tiếp ạ.)* |

---

## Tình huống 15 — Công trường · 16:00, dặn tổ chuẩn bị hồ sơ riêng

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、レベル<ruby>判定<rt>はんてい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>をします。<ruby>全員<rt>ぜんいん</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>あります。<br>*(Mọi người, nói về đánh giá cấp độ. Cả tổ đều liên quan.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>らもいつか<ruby>申請<rt>しんせい</rt></ruby>できるんか?<br>*(Bọn tao cũng xin được lúc nào à?)* |
| Thức | できる。<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>と<ruby>資格<rt>しかく</rt></ruby>がたまればや。だから<ruby>毎日<rt>まいにち</rt></ruby>かざすんや。<br>*(Được. Khi đủ ngày làm và bằng cấp. Nên mỗi ngày mới quẹt thẻ.)* |
| Sasaki | <ruby>資格<rt>しかく</rt></ruby>は<ruby>何<rt>なに</rt></ruby>から<ruby>取<rt>と</rt></ruby>ればいいですか?<br>*(Bằng nên lấy từ cái gì ạ?)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>の<ruby>特別<rt>とくべつ</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>からや。<ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>個別<rt>こべつ</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby><ruby>乗<rt>の</rt></ruby>る。<br>*(Từ giáo dục đặc biệt liên quan giàn giáo. Thứ tự tôi tư vấn riêng.)* |
| Nam | <ruby>計画<rt>けいかく</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>取<rt>と</rt></ruby>っていきます。<br>*(Em sẽ lấy có kế hoạch ạ.)* |

---

## Tình huống 16 — Công trường · 16:30, chỉ huy việc cuối ngày

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>4時半<rt>よじはん</rt></ruby>です。<ruby>片付<rt>かたづ</rt></ruby>けに<ruby>入<rt>はい</rt></ruby>りましょう。<br>*(Mọi người, 4 rưỡi rồi. Vào dọn dẹp nào.)* |
| Hùng | <ruby>解体<rt>かいたい</rt></ruby><ruby>材<rt>ざい</rt></ruby>は<ruby>搬出<rt>はんしゅつ</rt></ruby><ruby>済<rt>ず</rt></ruby>みや。<br>*(Vật liệu tháo đưa ra hết rồi.)* |
| Thức | ええな。<ruby>仮置<rt>かりお</rt></ruby>きゼロ、<ruby>守<rt>まも</rt></ruby>れてるな。<br>*(Tốt. Không đặt tạm, giữ được nhỉ.)* |
| Nam | <ruby>工具<rt>こうぐ</rt></ruby><ruby>数<rt>かず</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Đã kiểm số dụng cụ ạ.)* |
| Thức | みんな<ruby>手順<rt>てじゅん</rt></ruby>が<ruby>身<rt>み</rt></ruby>についた。ええ<ruby>班<rt>はん</rt></ruby>や。おつかれさま。<br>*(Mọi người ngấm quy trình rồi. Tổ tốt. Vất vả nhé.)* |
| Sasaki | おつかれさまでした。<br>*(Vất vả rồi ạ.)* |

---

## Tình huống 17 — Văn phòng · 16:50, báo cáo cuối ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>4階<rt>よんかい</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby>です。<br>*(Đốc công, báo cáo hôm nay. Tháo tầng 4 xong, không tai nạn ạ.)* |
| Saito | <ruby>申請<rt>しんせい</rt></ruby>もしながら<ruby>現場<rt>げんば</rt></ruby>も<ruby>回<rt>まわ</rt></ruby>した。<ruby>両立<rt>りょうりつ</rt></ruby>できとるな。<br>*(Vừa nộp hồ sơ vừa cầm công trường. Cân được cả hai nhỉ.)* |
| Thức | <ruby>事務<rt>じむ</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>区切<rt>くぎ</rt></ruby>って、<ruby>現場<rt>げんば</rt></ruby>に<ruby>支障<rt>ししょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ないようにしました。<br>*(Em chia rõ giờ làm giấy tờ để không cản trở công trường ạ.)* |
| Saito | <ruby>時間<rt>じかん</rt></ruby>の<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>もうまい。<ruby>立派<rt>りっぱ</rt></ruby>や。<br>*(Cách dùng thời gian cũng khéo. Giỏi.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しみですが、<ruby>今<rt>いま</rt></ruby>は<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>します。<br>*(Em mong kết quả nhưng giờ tập trung công việc ạ.)* |
| Saito | その<ruby>謙虚<rt>けんきょ</rt></ruby>さがええんや。<br>*(Sự khiêm tốn đó tốt.)* |

---

## Tình huống 18 — Phòng thay đồ · 17:10, Nam hỏi thêm về kế hoạch lên cấp

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>僕<rt>ぼく</rt></ruby>は<ruby>何年<rt>なんねん</rt></ruby>でシルバーになれますか?<br>*(Anh Thức, em mấy năm thì lên cấp bạc được ạ?)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>によるけど、<ruby>毎日<rt>まいにち</rt></ruby>かざして<ruby>資格<rt>しかく</rt></ruby>を<ruby>計画<rt>けいかく</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>取<rt>と</rt></ruby>れば<ruby>早<rt>はや</rt></ruby>まる。<br>*(Tùy người, nhưng mỗi ngày quẹt thẻ và lấy bằng có kế hoạch thì sớm hơn.)* |
| Nam | トゥックさんは<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>でしたよね。<br>*(Anh Thức là 1 năm nhỉ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>は<ruby>実習<rt>じっしゅう</rt></ruby><ruby>時代<rt>じだい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>も<ruby>加算<rt>かさん</rt></ruby>された。<ruby>無駄<rt>むだ</rt></ruby>な<ruby>時間<rt>じかん</rt></ruby>はないんや。<br>*(Anh được cộng cả kinh nghiệm thời thực tập. Không có thời gian phí.)* |
| Nam | <ruby>今<rt>いま</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>が<ruby>後<rt>あと</rt></ruby>で<ruby>効<rt>き</rt></ruby>くんですね。<br>*(Nỗ lực bây giờ sau có tác dụng nhỉ.)* |
| Thức | そや。<ruby>今<rt>いま</rt></ruby>からコツコツや。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Đúng. Từ giờ từ từ tích. Cùng cố gắng nào.)* |

---

## Tình huống 19 — Cổng công trường · 17:20, 親方 động viên

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、シルバー<ruby>申請<rt>しんせい</rt></ruby>か。<ruby>来日<rt>らいにち</rt></ruby>したころが<ruby>嘘<rt>うそ</rt></ruby>みたいやな。<br>*(Thức, xin cấp bạc à. Như đùa so với hồi mới sang nhỉ.)* |
| Thức | <ruby>実習生<rt>じっしゅうせい</rt></ruby>のとき<ruby>親方<rt>おやかた</rt></ruby>に<ruby>怒鳴<rt>どな</rt></ruby>られてばかりでした。<br>*(Hồi thực tập sinh em toàn bị cai quát ạ.)* |
| Tanigawa | あれは<ruby>育<rt>そだ</rt></ruby>てる<ruby>怒鳴<rt>どな</rt></ruby>りや。お<ruby>前<rt>まえ</rt></ruby>がよう<ruby>伸<rt>の</rt></ruby>びたからや。<br>*(Đó là quát để dạy. Vì cậu tiến bộ tốt.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>鍛<rt>きた</rt></ruby>えられたから<ruby>今<rt>いま</rt></ruby>があります。<br>*(Nhờ cai rèn nên mới có em hôm nay ạ.)* |
| Tanigawa | <ruby>次<rt>つぎ</rt></ruby>はゴールド、その<ruby>先<rt>さき</rt></ruby>は<ruby>2号<rt>にごう</rt></ruby>や。<ruby>道<rt>みち</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>くで。<br>*(Tiếp theo là vàng, xa hơn là số 2. Con đường còn dài.)* |
| Thức | はい、<ruby>一<rt>ひと</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>みます。<br>*(Vâng, em sẽ tiến từng bước ạ.)* |

---

## Tình huống 20 — Đường về · 17:30, Thức gọi điện báo Linh (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Linh | Anh Thức, hôm nay sao rồi? Nghe giọng vui thế. |
| Thức | Anh vừa nộp hồ sơ lên cấp thẻ シルバー. Nếu đạt thì tay nghề được công nhận chính thức. |
| Linh | Mừng cho anh. Cả năm anh chăm chỉ, xứng đáng mà. |
| Thức | Cũng nhờ kiên trì mấy việc nhỏ thôi: ngày nào cũng quẹt thẻ, lấy bằng đều. |
| Linh | Anh cứ vậy mà tiến. Em không lo gì cả, thấy anh có hướng đi rõ ràng là yên tâm. |
| Thức | Cảm ơn em. Có kết quả anh báo ngay. Giờ anh về nghỉ, mai còn lo công trường. |

---

## Đọng lại

Sau gần một năm tích lũy 就業履歴 đều đặn, đủ bằng cấp và kinh nghiệm 班長, Thức chuẩn bị và nộp hồ sơ レベル判定 lên CCUS nhắm cấp シルバー: tổng hợp số ngày làm, đối chiếu bằng cấp, xin 職長 chứng nhận kinh nghiệm, rà soát đơn 2 lần với bộ phận hành chính. Bài học cốt lõi: thành quả đến từ kiên trì việc nhỏ mỗi ngày (quẹt thẻ, lấy bằng có kế hoạch) — "xin hồ sơ cũng là 段取り". Thức bắt đầu lập kế hoạch lên cấp cho cả tổ. 親方, 現場監督 Ishikawa và 職長 đều ghi nhận, hướng Thức tới mục tiêu tiếp theo (ゴールド, 特定技能2号).

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | レベル判定 | レベルはんてい | Đánh giá cấp độ (CCUS) |
> | 申請書 | しんせいしょ | Đơn xin |
> | 就業日数 | しゅうぎょうにっすう | Số ngày làm việc |
> | 保有資格 | ほゆうしかく | Bằng cấp đang có |
> | 足場の組立等作業主任者 | あしばのくみたてとうさぎょうしゅにんしゃ | Chủ nhiệm thao tác lắp giàn giáo |
> | 玉掛け | たまかけ | Móc cáp (cẩu) |
> | 職長教育 | しょくちょうきょういく | Khóa đào tạo 職長 |
> | 添付書類 | てんぷしょるい | Giấy tờ đính kèm |
> | 技能者ID | ぎのうしゃID | Mã kỹ năng (CCUS) |
> | 自動連携 | じどうれんけい | Tự động liên kết (dữ liệu) |
> | 署名 | しょめい | Chữ ký |
> | 実績 | じっせき | Thành tích, kết quả thực tế |
> | 加算 | かさん | Cộng thêm vào |
> | 両立 | りょうりつ | Cân bằng cả hai |
> | コツコツ | こつこつ | Cần mẫn từng chút |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (836000012, 800000036, NULL, 'markdown_book', 'T12. Đánh giá năm — 親方 gợi ý hướng 職長/特定技能2号 (一年評価)', '# Sách kỹ năng đặc định xây dựng · T12. Đánh giá năm — 親方 gợi ý hướng 職長/特定技能2号 (一年評価)

> **Mục tiêu nhân vật:** Kết thúc năm 特定技能1号 đầu làm 班長. Thức trải qua buổi đánh giá năm với 親方/職長/現場監督, nhìn lại thành quả, nhận kết quả レベル判定 シルバー, và được gợi ý lộ trình 職長 / 特定技能2号. Vẫn ≥18 tình huống nghiệp vụ tiếng Nhật.

---

## Bối cảnh

Tháng 3 năm 2030 — cuối năm tài chính, kết thúc năm 特定技能1号 đầu tiên Thức làm 班長. Công ty tổ chức đánh giá năm (年次評価面談): nhìn lại thành tích tổ, an toàn, năng lực chỉ huy. Thẻ CCUS シルバー được cấp về. 親方 và 現場監督 Ishikawa gợi ý lộ trình tiếp theo: 職長 và 特定技能2号. Chương tập trung mẫu câu phỏng vấn đánh giá, tự nhìn lại, đặt mục tiêu, bàn lộ trình nghề nghiệp. (Lộ trình 2号/職長 nhắc trong chương đúng tại thời điểm biên soạn năm 2026.)

---

## Tình huống 1 — Văn phòng · 8:00, 職長 thông báo lịch đánh giá

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今日<rt>きょう</rt></ruby>の<ruby>午後<rt>ごご</rt></ruby>、<ruby>年次<rt>ねんじ</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>がある。<br>*(Thức, chiều nay có phỏng vấn đánh giá năm.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>準備<rt>じゅんび</rt></ruby>することはありますか?<br>*(Vâng, em rõ ạ. Có gì cần chuẩn bị không ạ?)* |
| Saito | この<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>でできたこと、できなかったことを<ruby>整理<rt>せいり</rt></ruby>しとき。<br>*(Sắp xếp lại điều làm được và chưa được trong 1 năm này.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>るんですね。<br>*(Tự nhìn lại nhỉ.)* |
| Saito | そや。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うてええ。<ruby>反省<rt>はんせい</rt></ruby>も<ruby>成長<rt>せいちょう</rt></ruby>のうちや。<br>*(Đúng. Nói thật là được. Rút kinh nghiệm cũng là một phần trưởng thành.)* |
| Thức | はい、しっかり<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>っておきます。<br>*(Vâng, em sẽ nhìn lại kỹ ạ.)* |

---

## Tình huống 2 — KY buổi sáng · 8:10, KY ngày cuối năm

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>年度<rt>ねんど</rt></ruby><ruby>末<rt>まつ</rt></ruby>のKYです。<ruby>気<rt>き</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みに<ruby>注意<rt>ちゅうい</rt></ruby>です。<br>*(Mọi người, KY cuối năm tài chính. Chú ý lơ là.)* |
| Hùng | <ruby>区切<rt>くぎ</rt></ruby>りの<ruby>時期<rt>じき</rt></ruby>は<ruby>事故<rt>じこ</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いんやな。<br>*(Giai đoạn chuyển mốc tai nạn nhiều nhỉ.)* |
| Thức | そう。「もう<ruby>少<rt>すこ</rt></ruby>しで<ruby>終<rt>お</rt></ruby>わり」が<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Đúng. "Sắp xong rồi" là nguy nhất.)* |
| Sasaki | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>手順<rt>てじゅん</rt></ruby><ruby>通<rt>どお</rt></ruby>りですね。<br>*(Đến cuối vẫn theo quy trình nhỉ.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>「<ruby>気<rt>き</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みゼロ、<ruby>無事故<rt>むじこ</rt></ruby>」!<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>!<br>*(Mục tiêu hôm nay "không lơ là, không tai nạn"! Chỉ tay xác nhận!)* |
| Tổ | <ruby>気<rt>き</rt></ruby>の<ruby>緩<rt>ゆる</rt></ruby>みゼロ、ヨシ!<br>*(Không lơ là, tốt!)* |

---

## Tình huống 3 — Công trường · 9:00, chỉ huy việc hoàn thiện cuối

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>で<ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Mọi người, hôm nay nhắm hoàn thành tháo dỡ tòa Nam.)* |
| Hùng | <ruby>残<rt>のこ</rt></ruby>りはどれくらいや?<br>*(Còn lại bao nhiêu?)* |
| Thức | <ruby>2層<rt>にそう</rt></ruby><ruby>分<rt>ぶん</rt></ruby>です。<ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>1層<rt>いっそう</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby>で<ruby>残<rt>のこ</rt></ruby>り<ruby>1層<rt>いっそう</rt></ruby>です。<br>*(2 tầng. Sáng 1 tầng, chiều tầng còn lại ạ.)* |
| Sasaki | <ruby>無理<rt>むり</rt></ruby>のないペースですね。<br>*(Nhịp không gắng sức nhỉ.)* |
| Thức | そう。<ruby>最終日<rt>さいしゅうび</rt></ruby>こそ<ruby>焦<rt>あせ</rt></ruby>らん。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>締<rt>し</rt></ruby>めくくろう。<br>*(Đúng. Ngày cuối càng không vội. Kết thúc với an toàn là trên hết nào.)* |
| Nam | はい、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý tới cuối ạ.)* |

---

## Tình huống 4 — Công trường · 10:30, 現場監督 Ishikawa kiểm tra lần cuối

| Vai | Lời thoại |
|---|---|
| Ishikawa | トゥックさん、<ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby>、<ruby>順調<rt>じゅんちょう</rt></ruby>ですね。<br>*(Anh Thức, tháo dỡ tòa Nam thuận lợi nhỉ.)* |
| Thức | はい。<ruby>是正<rt>ぜせい</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>が<ruby>定着<rt>ていちゃく</rt></ruby>し、ヒヤリもありません。<br>*(Vâng. Quy trình khắc phục đã ngấm, không có suýt nguy hiểm ạ.)* |
| Ishikawa | この<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>の<ruby>班<rt>はん</rt></ruby>は<ruby>無<rt>む</rt></ruby><ruby>災害<rt>さいがい</rt></ruby>やったな。<br>*(Năm nay, tổ anh không tai nạn nhỉ.)* |
| Thức | みんなが<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってくれたおかげです。<br>*(Nhờ mọi người tuân thủ quy trình ạ.)* |
| Ishikawa | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>外国人<rt>がいこくじん</rt></ruby><ruby>班長<rt>はんちょう</rt></ruby>に<ruby>不安<rt>ふあん</rt></ruby>があった。<ruby>完全<rt>かんぜん</rt></ruby>に<ruby>払拭<rt>ふっしょく</rt></ruby>されたよ。<br>*(Thật ra ban đầu tôi lo về 班長 người nước ngoài. Giờ tan biến hoàn toàn.)* |
| Thức | そう<ruby>言<rt>い</rt></ruby>っていただけて<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Anh nói vậy em vinh dự ạ.)* |

---

## Tình huống 5 — Công trường · 11:30, hoàn thành tháo dỡ tòa Nam

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby>の<ruby>解体<rt>かいたい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です!おつかれさまでした。<br>*(Mọi người, tháo dỡ tòa Nam hoàn thành! Vất vả rồi.)* |
| Hùng | <ruby>無事故<rt>むじこ</rt></ruby>で<ruby>終<rt>お</rt></ruby>われたな。ええ<ruby>一<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>やった。<br>*(Kết thúc không tai nạn. Một năm tốt.)* |
| Thức | みんなの<ruby>協力<rt>きょうりょく</rt></ruby>のおかげや。<ruby>本当<rt>ほんとう</rt></ruby>にありがとう。<br>*(Nhờ mọi người hợp tác. Thật sự cảm ơn.)* |
| Nam | トゥックさんの<ruby>班<rt>はん</rt></ruby>で<ruby>学<rt>まな</rt></ruby>べてよかったです。<br>*(Em được học ở tổ anh Thức thật may ạ.)* |
| Thức | ナムさんも<ruby>大<rt>おお</rt></ruby>きく<ruby>成長<rt>せいちょう</rt></ruby>した。<ruby>来年<rt>らいねん</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>っ<ruby>張<rt>ぱ</rt></ruby>れる。<br>*(Nam cũng trưởng thành nhiều. Sang năm dẫn dắt được đàn em.)* |
| Sasaki | <ruby>来年度<rt>らいねんど</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Năm tài chính tới cũng mong được hợp tác ạ.)* |

---

## Tình huống 6 — Nghỉ trưa · 12:20, tâm sự với anh Long (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Long | Thức, hết một năm 班長 rồi. Nhìn lại thấy sao? |
| Thức | Nhanh thật anh. Hồi đầu run lắm, hô KY còn vấp. Giờ thấy mình khác hẳn. |
| Long | Tổ mày cả năm không tai nạn, 石川 từ chỗ nghi giờ nể ra mặt. Đáng nể đấy. |
| Thức | Em sợ nhất vụ ván rơi với Nam mắc lỗi. Nhưng qua được, lại học được nhiều. |
| Long | Chiều mày có đánh giá năm. Cứ nói thật, đừng khoe cũng đừng tự ti. |
| Thức | Vâng. Em muốn nghe cả chỗ mình còn yếu để năm sau tốt hơn. |

---

## Tình huống 7 — Phòng họp · 13:30, bắt đầu phỏng vấn đánh giá

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>おつかれさん。まず<ruby>自分<rt>じぶん</rt></ruby>でどう<ruby>評価<rt>ひょうか</rt></ruby>する?<br>*(Thức, một năm vất vả. Trước hết tự đánh giá thế nào?)* |
| Thức | <ruby>班<rt>はん</rt></ruby>を<ruby>無<rt>む</rt></ruby><ruby>災害<rt>さいがい</rt></ruby>で<ruby>運営<rt>うんえい</rt></ruby>できたのが<ruby>一番<rt>いちばん</rt></ruby>です。<br>*(Vận hành tổ không tai nạn là điều lớn nhất ạ.)* |
| Tanigawa | <ruby>逆<rt>ぎゃく</rt></ruby>に、<ruby>足<rt>た</rt></ruby>りんかった<ruby>所<rt>ところ</rt></ruby>は?<br>*(Ngược lại, chỗ còn thiếu?)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>、<ruby>指示<rt>しじ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くて<ruby>伝<rt>つた</rt></ruby>わりにくかったです。<br>*(Lúc đầu chỉ thị nhanh nên khó truyền đạt ạ.)* |
| Tanigawa | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>分<rt>わ</rt></ruby>かっとるな。<ruby>正直<rt>しょうじき</rt></ruby>でええ。<br>*(Biết điểm yếu của mình đấy. Thật thà tốt.)* |
| Thức | <ruby>途中<rt>とちゅう</rt></ruby>から<ruby>意識<rt>いしき</rt></ruby>して<ruby>直<rt>なお</rt></ruby>しました。<br>*(Từ giữa em ý thức và sửa ạ.)* |

---

## Tình huống 8 — Phòng họp · 13:45, 職長 đánh giá năng lực chỉ huy

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>段取<rt>だんど</rt></ruby>りと<ruby>多<rt>た</rt></ruby><ruby>職種<rt>しょくしゅ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>は<ruby>特<rt>とく</rt></ruby>に<ruby>伸<rt>の</rt></ruby>びた。<br>*(Bố trí và điều phối đa nghề tiến bộ rõ rệt.)* |
| Thức | <ruby>他<rt>ほか</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>との<ruby>連携<rt>れんけい</rt></ruby>は<ruby>最初<rt>さいしょ</rt></ruby><ruby>苦手<rt>にがて</rt></ruby>でした。<br>*(Phối hợp với nhà thầu khác ban đầu em yếu ạ.)* |
| Saito | <ruby>取<rt>と</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いを<ruby>勝<rt>か</rt></ruby>ち<ruby>負<rt>ま</rt></ruby>けにせんかったのがよかった。<br>*(Không biến giao thoa thành thắng thua là tốt.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>ることを<ruby>優先<rt>ゆうせん</rt></ruby>しました。<br>*(Em ưu tiên cả công trường chạy được ạ.)* |
| Saito | その<ruby>視点<rt>してん</rt></ruby>は<ruby>職長<rt>しょくちょう</rt></ruby><ruby>級<rt>きゅう</rt></ruby>や。<ruby>立派<rt>りっぱ</rt></ruby>や。<br>*(Góc nhìn đó tầm 職長. Giỏi.)* |
| Thức | ありがとうございます。まだ<ruby>学<rt>まな</rt></ruby>ぶことが<ruby>多<rt>おお</rt></ruby>いです。<br>*(Em cảm ơn ạ. Còn nhiều điều phải học ạ.)* |

---

## Tình huống 9 — Phòng họp · 14:00, 現場監督 Ishikawa nhận xét

| Vai | Lời thoại |
|---|---|
| Ishikawa | <ruby>元請<rt>もとうけ</rt></ruby>として<ruby>言<rt>い</rt></ruby>うと、<ruby>君<rt>きみ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>は<ruby>常<rt>つね</rt></ruby>に<ruby>正直<rt>しょうじき</rt></ruby>で<ruby>早<rt>はや</rt></ruby>かった。<br>*(Với tư cách nhà thầu chính, báo cáo của anh luôn thật và sớm.)* |
| Thức | <ruby>隠<rt>かく</rt></ruby>すと<ruby>後<rt>あと</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きくなりますから。<br>*(Vì giấu thì sau to ra ạ.)* |
| Ishikawa | ヒヤリの<ruby>是正<rt>ぜせい</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>は<ruby>他<rt>ほか</rt></ruby>の<ruby>班<rt>はん</rt></ruby>の<ruby>手本<rt>てほん</rt></ruby>になった。<br>*(Xử lý khắc phục suýt tai nạn thành hình mẫu cho tổ khác.)* |
| Thức | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>のことをしただけです。<br>*(Em ngại quá ạ. Em chỉ làm việc đương nhiên thôi ạ.)* |
| Ishikawa | その「<ruby>当<rt>あ</rt></ruby>たり<ruby>前<rt>まえ</rt></ruby>」を<ruby>続<rt>つづ</rt></ruby>けられるのが<ruby>実力<rt>じつりょく</rt></ruby>や。<br>*(Duy trì được cái "đương nhiên" đó mới là thực lực.)* |
| Thức | これからも<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Từ giờ em cũng duy trì ạ.)* |

---

## Tình huống 10 — Phòng họp · 14:15, nhận kết quả レベル判定 シルバー

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ええ<ruby>知<rt>し</rt></ruby>らせや。レベル<ruby>判定<rt>はんてい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>た。<br>*(Thức, tin tốt. Kết quả đánh giá cấp độ ra rồi.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。どうでしたか?<br>*(Thật ạ? Thế nào ạ?)* |
| Saito | シルバーや。<ruby>承認<rt>しょうにん</rt></ruby>されたで。<br>*(Cấp bạc. Được duyệt rồi đấy.)* |
| Thức | …シルバー…ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(…Cấp bạc… Em cảm ơn ạ. Em thật sự mừng ạ.)* |
| Tanigawa | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby>でシルバーは<ruby>早<rt>はや</rt></ruby>いほうや。<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>や。<br>*(1 năm lên bạc là nhanh đấy. Kết quả của nỗ lực.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>形<rt>かたち</rt></ruby>になりました。<br>*(Tích lũy mỗi ngày thành hình hài rồi ạ.)* |

---

## Tình huống 11 — Phòng họp · 14:30, 親方 gợi ý lộ trình 職長

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>話<rt>はな</rt></ruby>そう。<ruby>職長<rt>しょくちょう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>さんか?<br>*(Thức, nói về mục tiêu tiếp. Nhắm 職長 không?)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>…<ruby>私<rt>わたし</rt></ruby>に<ruby>務<rt>つと</rt></ruby>まるでしょうか。<br>*(職長… em làm được không ạ?)* |
| Tanigawa | <ruby>班長<rt>はんちょう</rt></ruby>を<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>無<rt>む</rt></ruby><ruby>災害<rt>さいがい</rt></ruby>でやれたんや。<ruby>素質<rt>そしつ</rt></ruby>はある。<br>*(Làm 班長 1 năm không tai nạn được. Có tố chất.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Cần gì ạ?)* |
| Tanigawa | <ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>に<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>や。<ruby>計画<rt>けいかく</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>積<rt>つ</rt></ruby>めばええ。<br>*(Trên khóa đào tạo 職長 cộng kinh nghiệm thực tế. Tích có kế hoạch là được.)* |
| Thức | <ruby>挑戦<rt>ちょうせん</rt></ruby>したいです。<ruby>道<rt>みち</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Em muốn thử sức. Chỉ em con đường ạ.)* |

---

## Tình huống 12 — Phòng họp · 14:45, 職長 nói về lộ trình 特定技能2号

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>2号<rt>にごう</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。<br>*(Thức, 特定技能 số 2 cũng vào tầm ngắm.)* |
| Thức | <ruby>2号<rt>にごう</rt></ruby>になると<ruby>何<rt>なに</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりますか?<br>*(Lên số 2 thì gì thay đổi ạ?)* |
| Saito | <ruby>在留<rt>ざいりゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>に<ruby>上限<rt>じょうげん</rt></ruby>がなくなる。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>ける。<br>*(Gia hạn lưu trú không còn giới hạn trên. Làm được lâu dài.)* |
| Thức | <ruby>条件<rt>じょうけん</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しいですか?<br>*(Điều kiện khó không ạ?)* |
| Saito | <ruby>2号<rt>にごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>と<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>、<ruby>班長<rt>はんちょう</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>監督<rt>かんとく</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>要<rt>い</rt></ruby>る。<br>*(Cần thi đánh giá số 2, kinh nghiệm thực tế, và kinh nghiệm chỉ huy tầm 班長.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>はもう<ruby>班長<rt>はんちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>んでいますね。<br>*(Em đã tích kinh nghiệm 班長 rồi nhỉ.)* |
| Saito | そや。お<ruby>前<rt>まえ</rt></ruby>は<ruby>有利<rt>ゆうり</rt></ruby>な<ruby>位置<rt>いち</rt></ruby>におる。<br>*(Đúng. Cậu đang ở vị trí có lợi.)* |

---

## Tình huống 13 — Phòng họp · 15:00, đặt mục tiêu năm sau

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>来年度<rt>らいねんど</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>で<ruby>決<rt>き</rt></ruby>めてみ。<br>*(Mục tiêu năm tài chính tới tự cậu quyết xem.)* |
| Thức | <ruby>1<rt>ひと</rt></ruby>つ、<ruby>職長<rt>しょくちょう</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けます。<br>*(Một là, em học khóa đào tạo 職長 ạ.)* |
| Tanigawa | ええ。<ruby>他<rt>ほか</rt></ruby>には?<br>*(Tốt. Còn gì?)* |
| Thức | <ruby>2<rt>ふた</rt></ruby>つ、<ruby>新人<rt>しんじん</rt></ruby><ruby>2人<rt>ふたり</rt></ruby>を<ruby>一人前<rt>いちにんまえ</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Hai là, đào tạo 2 người mới thành thạo ạ.)* |
| Tanigawa | <ruby>人<rt>ひと</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てる<ruby>視点<rt>してん</rt></ruby>、ええな。<ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は?<br>*(Góc nhìn đào tạo người, tốt. Cái thứ ba?)* |
| Thức | <ruby>3<rt>みっ</rt></ruby>つ、<ruby>無<rt>む</rt></ruby><ruby>災害<rt>さいがい</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Ba là, cập nhật kỷ lục không tai nạn ạ.)* |

---

## Tình huống 14 — Phòng họp · 15:15, kết thúc phỏng vấn

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>目標<rt>もくひょう</rt></ruby>がはっきりしとる。ええ<ruby>面談<rt>めんだん</rt></ruby>やった。<br>*(Mục tiêu rõ ràng. Buổi phỏng vấn tốt.)* |
| Thức | <ruby>貴重<rt>きちょう</rt></ruby>な<ruby>評価<rt>ひょうか</rt></ruby>をありがとうございました。<br>*(Cảm ơn về đánh giá quý báu ạ.)* |
| Saito | <ruby>反省<rt>はんせい</rt></ruby>も<ruby>素直<rt>すなお</rt></ruby>に<ruby>言<rt>い</rt></ruby>えるのが<ruby>強<rt>つよ</rt></ruby>みや。<br>*(Rút kinh nghiệm nói thẳng được là điểm mạnh.)* |
| Thức | <ruby>足<rt>た</rt></ruby>りない<ruby>所<rt>ところ</rt></ruby>を<ruby>知<rt>し</rt></ruby>るのが<ruby>成長<rt>せいちょう</rt></ruby>の<ruby>第一歩<rt>だいいっぽ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Em nghĩ biết chỗ thiếu là bước đầu của trưởng thành ạ.)* |
| Ishikawa | その<ruby>姿勢<rt>しせい</rt></ruby>がある<ruby>限<rt>かぎ</rt></ruby>り、<ruby>君<rt>きみ</rt></ruby>はまだ<ruby>伸<rt>の</rt></ruby>びる。<br>*(Còn thái độ đó thì anh còn tiến bộ.)* |
| Thức | <ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えられるよう<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em sẽ cố gắng đáp lại kỳ vọng ạ.)* |

---

## Tình huống 15 — Công trường · 15:40, báo tin シルバー cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>報告<rt>ほうこく</rt></ruby>です。レベル<ruby>判定<rt>はんてい</rt></ruby>がシルバーになりました。<br>*(Mọi người, báo tin. Đánh giá cấp độ lên cấp bạc rồi ạ.)* |
| Hùng | おお、おめでとう!<ruby>班<rt>はん</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りやな。<br>*(Ồ, chúc mừng! Niềm tự hào của tổ nhỉ.)* |
| Thức | みんなが<ruby>毎日<rt>まいにち</rt></ruby>かざして<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってくれたからや。<br>*(Vì mọi người mỗi ngày quẹt thẻ và tuân thủ quy trình.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>もトゥックさんみたいに<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em cũng cố gắng như anh Thức ạ.)* |
| Thức | みんなで<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げていこう。<ruby>計画<rt>けいかく</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>う。<br>*(Cùng lần lượt lên cấp nào. Kế hoạch tôi hỗ trợ.)* |
| Sasaki | <ruby>心強<rt>こころづよ</rt></ruby>いです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Yên tâm ạ. Mong anh giúp.)* |

---

## Tình huống 16 — Công trường · 16:00, dặn tổ về kế hoạch năm mới

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>来年度<rt>らいねんど</rt></ruby>は<ruby>新人<rt>しんじん</rt></ruby>が<ruby>2人<rt>ふたり</rt></ruby><ruby>加<rt>くわ</rt></ruby>わります。<br>*(Mọi người, năm tài chính tới có thêm 2 người mới.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>らも<ruby>教<rt>おし</rt></ruby>える<ruby>側<rt>がわ</rt></ruby>やな。<br>*(Bọn tao cũng thành người dạy nhỉ.)* |
| Thức | そう。<ruby>特<rt>とく</rt></ruby>にナムさんには<ruby>指導<rt>しどう</rt></ruby><ruby>役<rt>やく</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたい。<br>*(Đúng. Đặc biệt Nam tôi muốn giao vai hướng dẫn.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>がですか…<ruby>頑張<rt>がんば</rt></ruby>ってみます。<br>*(Em ạ… Em sẽ cố thử ạ.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>から<ruby>学<rt>まな</rt></ruby>んだことを<ruby>伝<rt>つた</rt></ruby>えればええ。<ruby>俺<rt>おれ</rt></ruby>が<ruby>支<rt>ささ</rt></ruby>える。<br>*(Truyền điều học từ thất bại của mình là được. Tôi đỡ sau lưng.)* |
| Sasaki | <ruby>良<rt>よ</rt></ruby>い<ruby>班<rt>はん</rt></ruby>の<ruby>伝統<rt>でんとう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けましょう。<br>*(Duy trì truyền thống tổ tốt nào.)* |

---

## Tình huống 17 — Văn phòng · 16:30, báo cáo cuối ngày cuối năm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>年度<rt>ねんど</rt></ruby><ruby>最終日<rt>さいしゅうび</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>南<rt>みなみ</rt></ruby><ruby>棟<rt>とう</rt></ruby><ruby>解体<rt>かいたい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby>です。<br>*(Đốc công, báo cáo ngày cuối năm tài chính. Tháo tòa Nam xong, không tai nạn ạ.)* |
| Saito | <ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>通<rt>とお</rt></ruby>して<ruby>無<rt>む</rt></ruby><ruby>災害<rt>さいがい</rt></ruby>か。<ruby>胸<rt>むね</rt></ruby>を<ruby>張<rt>は</rt></ruby>ってええ。<br>*(Cả năm không tai nạn à. Đáng ngẩng cao đầu.)* |
| Thức | <ruby>班<rt>はん</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>のおかげです。<ruby>1<rt>いち</rt></ruby><ruby>人<rt>り</rt></ruby>では<ruby>無理<rt>むり</rt></ruby>でした。<br>*(Nhờ cả tổ ạ. Một mình thì không được ạ.)* |
| Saito | その<ruby>謙虚<rt>けんきょ</rt></ruby>さも<ruby>含<rt>ふく</rt></ruby>めて<ruby>評価<rt>ひょうか</rt></ruby>しとる。<br>*(Đánh giá cả sự khiêm tốn đó nữa.)* |
| Thức | <ruby>来年度<rt>らいねんど</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>気<rt>き</rt></ruby><ruby>持<rt>も</rt></ruby>ちで<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Năm tới em cũng duy trì cùng tâm thế ạ.)* |
| Saito | <ruby>頼<rt>たの</rt></ruby>もしい。ええ<ruby>区切<rt>くぎ</rt></ruby>りやな。<br>*(Đáng tin. Mốc kết thúc tốt nhỉ.)* |

---

## Tình huống 18 — Phòng thay đồ · 17:00, Nam tổng kết một năm

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Anh Thức, một năm thật sự cảm ơn anh ạ.)* |
| Thức | こちらこそ。ナムさんが<ruby>伸<rt>の</rt></ruby>びてくれて<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Anh mới phải cảm ơn. Nam tiến bộ anh mừng.)* |
| Nam | あの<ruby>踏<rt>ふ</rt></ruby>み<ruby>板<rt>いた</rt></ruby>の<ruby>失敗<rt>しっぱい</rt></ruby>、<ruby>今<rt>いま</rt></ruby>では<ruby>一番<rt>いちばん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>でした。<br>*(Vụ thất bại tấm ván, giờ là bài học lớn nhất ạ.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>力<rt>ちから</rt></ruby>に<ruby>変<rt>か</rt></ruby>えた。それが<ruby>成長<rt>せいちょう</rt></ruby>や。<br>*(Biến thất bại thành sức mạnh. Đó là trưởng thành.)* |
| Nam | <ruby>来年度<rt>らいねんど</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことを<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Năm tới em truyền điều đó cho đàn em ạ.)* |
| Thức | それでこそ<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぎや。<ruby>頼<rt>たの</rt></ruby>もしいわ。<br>*(Vậy mới là kế thừa. Đáng tin đấy.)* |

---

## Tình huống 19 — Cổng công trường · 17:20, 親方 nói lời cuối năm

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>来日<rt>らいにち</rt></ruby>から<ruby>何年<rt>なんねん</rt></ruby>や?<br>*(Thức, từ khi sang Nhật mấy năm rồi?)* |
| Thức | <ruby>実習<rt>じっしゅう</rt></ruby><ruby>3年<rt>さんねん</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>めて<ruby>4年<rt>よねん</rt></ruby>です。<br>*(Tính cả 3 năm thực tập là 4 năm ạ.)* |
| Tanigawa | <ruby>怒鳴<rt>どな</rt></ruby>られて<ruby>泣<rt>な</rt></ruby>きそうやった<ruby>新人<rt>しんじん</rt></ruby>が、<ruby>今<rt>いま</rt></ruby>やシルバーの<ruby>班長<rt>はんちょう</rt></ruby>や。<br>*(Tân binh bị quát suýt khóc, giờ là 班長 cấp bạc.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>が<ruby>諦<rt>あきら</rt></ruby>めずに<ruby>育<rt>そだ</rt></ruby>ててくれたからです。<br>*(Vì cai không bỏ cuộc mà rèn em ạ.)* |
| Tanigawa | <ruby>次<rt>つぎ</rt></ruby>は<ruby>職長<rt>しょくちょう</rt></ruby>、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>2号<rt>にごう</rt></ruby>や。<ruby>道<rt>みち</rt></ruby>は<ruby>開<rt>ひら</rt></ruby>けとる。<br>*(Tiếp theo là 職長, 特定技能 số 2. Con đường mở ra rồi.)* |
| Thức | <ruby>一<rt>ひと</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ、<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>みます。<br>*(Em sẽ tiến từng bước, chắc chắn ạ.)* |

---

## Tình huống 20 — Đường về · 17:35, Thức gọi báo Linh kết quả (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh, anh đỗ rồi. Thẻ CCUS lên シルバー chính thức. |
| Linh | Em biết mà! Chúc mừng anh. Cả năm anh xứng đáng. |
| Thức | 親方 còn gợi ý anh đi tiếp lên 職長 rồi 特定技能2号. Đường còn dài nhưng rõ ràng. |
| Linh | Anh cứ đi theo con đường đó. Em không giục gì, thấy anh vững là em yên tâm. |
| Thức | Cảm ơn em luôn hiểu. Năm sau anh đặt mục tiêu rồi: học 職長, kèm hai người mới. |
| Linh | Anh giỏi mà. Cứ từng bước thôi. Mai anh nghỉ chưa? Cuối tuần mình gặp nhé. |

---

## Đọng lại

Kết thúc năm 特定技能1号 đầu làm 班長, Thức trải qua buổi đánh giá năm: tổ không tai nạn cả năm, năng lực 段取り và điều phối đa nghề tiến bộ rõ, được 現場監督 Ishikawa — người từng hoài nghi — công nhận hoàn toàn. Thẻ CCUS シルバー được cấp về sau 1 năm (sớm). Thức tự nhìn lại trung thực cả điểm mạnh lẫn yếu, đặt 3 mục tiêu năm sau (học 職長, đào tạo 2 người mới, giữ kỷ lục không tai nạn). 親方 và 職長 vạch lộ trình tiếp theo: 職長 và 特定技能2号 — con đường gắn bó lâu dài với nghề xây dựng tại Nhật. Hành trình từ tân binh bị quát đến 班長 cấp bạc khép lại một năm, mở ra chặng mới.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 年次評価面談 | ねんじひょうかめんだん | Phỏng vấn đánh giá năm |
> | 振り返り | ふりかえり | Nhìn lại, tự đánh giá |
> | 無災害 | むさいがい | Không tai nạn |
> | 払拭 | ふっしょく | Xóa tan, gột bỏ |
> | 職長 | しょくちょう | Đốc công |
> | 特定技能2号 | とくていぎのうにごう | Kỹ năng đặc định số 2 |
> | 2号評価試験 | にごうひょうかしけん | Thi đánh giá số 2 |
> | 在留期間 | ざいりゅうきかん | Thời hạn lưu trú |
> | 上限 | じょうげん | Giới hạn trên |
> | 素質 | そしつ | Tố chất |
> | 指導役 | しどうやく | Vai hướng dẫn |
> | 受け継ぎ | うけつぎ | Kế thừa |
> | 第一歩 | だいいっぽ | Bước đầu tiên |
> | 区切り | くぎり | Mốc, điểm kết |
> | 胸を張る | むねをはる | Ngẩng cao đầu, tự hào |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
