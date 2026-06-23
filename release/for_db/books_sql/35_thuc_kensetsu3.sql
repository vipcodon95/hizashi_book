-- Hizashi LITE book SQL — Thực Kensetsu 3
-- curriculum_id = 800000035  (book_seq=35)
-- nguồn: books/35_thuc_kensetsu3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000035, 'N3', 'markdown_book', 'Xây dựng', 'Thực Kensetsu 3', 'Bộ sách Hizashi — Thực Kensetsu 3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000001, 800000035, NULL, 'markdown_book', 'T1. Ôn thi kỹ năng và N3 (技能検定とN3の受験勉強)', '# Sách thực tập sinh xây dựng · T1. Ôn thi kỹ năng và N3 (技能検定とN3の受験勉強)

> **Mục tiêu nhân vật:** Thức (トゥック, ~23 tuổi, sang Nhật 4/2026) bước vào năm 3 thực tập kỹ năng nghề とび (giàn giáo). Học các mẫu câu nghiệp vụ khi vừa làm vừa ôn thi đánh giá kỹ năng とび và kỳ thi tiếng Nhật N3: hỏi 親方/職長 về nội dung thi, trao đổi với 先輩, tự nhắc bản thân ngoài công trường.

---

## Bối cảnh

Đầu tháng 4 năm 2028. Thức đã làm thực tập sinh nghề とび (鳶 / giàn giáo) được hai năm tại tổ của 谷川親方 (Tanigawa). Năm thứ ba bắt đầu: tháng tới Thức sẽ thi đánh giá kỹ năng とび (技能評価試験), đồng thời ôn thi tiếng Nhật N3 vào tháng 7. Chương này tập trung mẫu câu khi vừa làm việc trên công trường vừa chuẩn bị thi: xác nhận nội dung thi với cấp trên, hỏi đàn anh kinh nghiệm, lập kế hoạch ôn tập.

---

## Tình huống 1 — Lán nghỉ công trường · 7:40, 親方 thông báo lịch thi

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>技能<rt>ぎのう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>、<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>んでおいたぞ。<br>*(Thức, kỳ thi đánh giá kỹ năng tháng sau, tôi đăng ký cho cậu rồi đấy.)* |
| Thức | ありがとうございます。<ruby>何<rt>なに</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>ですか?<br>*(Cháu cảm ơn ạ. Là thi cấp nào ạ?)* |
| Tanigawa | <ruby>専門<rt>せんもん</rt></ruby><ruby>級<rt>きゅう</rt></ruby>だ。<ruby>三<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けるやつだな。<br>*(Cấp chuyên môn. Cái mà năm thứ ba sẽ thi đấy.)* |
| Thức | <ruby>実技<rt>じつぎ</rt></ruby>と<ruby>学科<rt>がっか</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>ありますよね?<br>*(Có cả thực hành và lý thuyết phải không ạ?)* |
| Tanigawa | そうだ。<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>組<rt>く</rt></ruby>み、<ruby>学科<rt>がっか</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>のルールだ。しっかり<ruby>準備<rt>じゅんび</rt></ruby>しろよ。<br>*(Đúng. Thực hành là dựng giàn giáo, lý thuyết là quy tắc an toàn. Chuẩn bị cho kỹ vào.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cháu sẽ cố gắng. Mong chú chỉ bảo ạ.)* |

---

## Tình huống 2 — Trên giàn giáo · 9:00, 職長 hướng dẫn điểm thi thực hành

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>では<ruby>手順<rt>てじゅん</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だぞ。<br>*(Thức, trong thi thực hành, trình tự là quan trọng đấy.)* |
| Thức | <ruby>手順<rt>てじゅん</rt></ruby>というと、どこを<ruby>見<rt>み</rt></ruby>られますか?<br>*(Trình tự, tức là họ nhìn vào đâu ạ?)* |
| Saito | <ruby>建地<rt>たてじ</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>、<ruby>筋交<rt>すじか</rt></ruby>いの<ruby>入<rt>い</rt></ruby>れ<ruby>方<rt>かた</rt></ruby>、それと<ruby>水平<rt>すいへい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>だ。<br>*(Khoảng cách cột đứng, cách lắp thanh giằng chéo, và xác nhận độ thăng bằng.)* |
| Thức | <ruby>建地<rt>たてじ</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は<ruby>規定<rt>きてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>測<rt>はか</rt></ruby>ればいいですね。<br>*(Khoảng cách cột đứng cứ đo đúng theo quy định là được nhỉ.)* |
| Saito | そうだ。あと、<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>落<rt>お</rt></ruby>とさないこと。それも<ruby>採点<rt>さいてん</rt></ruby>される。<br>*(Đúng. Còn nữa, không được làm rơi dụng cụ. Cái đó cũng bị chấm điểm.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Cháu hiểu rồi. Phòng rơi dụng cụ, cháu sẽ chú ý.)* |

---

## Tình huống 3 — Lán nghỉ · 10:15, hỏi 先輩 Kondo kinh nghiệm thi

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>って<ruby>難<rt>むずか</rt></ruby>しかったですか?<br>*(Anh Kondo, kỳ thi đánh giá có khó không ạ?)* |
| Kondo | そんなに<ruby>難<rt>むずか</rt></ruby>しくないよ。<ruby>普段<rt>ふだん</rt></ruby><ruby>通<rt>どお</rt></ruby>りやれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Không khó lắm đâu. Cứ làm như thường ngày là ổn.)* |
| Thức | <ruby>時間<rt>じかん</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>はきついですか?<br>*(Giới hạn thời gian có gắt không ạ?)* |
| Kondo | あせると<ruby>失敗<rt>しっぱい</rt></ruby>する。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて、<ruby>確認<rt>かくにん</rt></ruby>しながらやれ。<br>*(Cuống lên là hỏng. Cứ bình tĩnh, vừa làm vừa kiểm tra.)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>のほうは<ruby>何<rt>なに</rt></ruby>を<ruby>勉強<rt>べんきょう</rt></ruby>すればいいですか?<br>*(Phần lý thuyết thì nên học gì ạ?)* |
| Kondo | <ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>をやれば<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>の<ruby>本<rt>ほん</rt></ruby>、<ruby>貸<rt>か</rt></ruby>してやるよ。<br>*(Làm đề năm trước là đủ. Sách của anh, cho mượn đấy.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>助<rt>たす</rt></ruby>かります、ありがとうございます。<br>*(Thật ạ. May quá, cảm ơn anh ạ.)* |

---

## Tình huống 4 — Khu vật tư · 11:00, ôn từ chuyên môn khi xếp giàn giáo

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、これは<ruby>何<rt>なん</rt></ruby>だ?<ruby>日本語<rt>にほんご</rt></ruby>で<ruby>言<rt>い</rt></ruby>ってみろ。<br>*(Thức, đây là cái gì? Nói bằng tiếng Nhật xem.)* |
| Thức | それは<ruby>布板<rt>ぬのいた</rt></ruby>です。<ruby>足場<rt>あしば</rt></ruby>の<ruby>床<rt>ゆか</rt></ruby>になる<ruby>板<rt>いた</rt></ruby>ですね。<br>*(Đó là tấm ván sàn ạ. Là tấm ván làm sàn của giàn giáo.)* |
| Saito | よし。じゃあ、これは?<br>*(Tốt. Vậy còn cái này?)* |
| Thức | <ruby>単管<rt>たんかん</rt></ruby>パイプです。<ruby>直径<rt>ちょっけい</rt></ruby><ruby>48.6<rt>よんじゅうはちてんろく</rt></ruby>ミリのやつですよね。<br>*(Là ống đơn (tankan pipe) ạ. Loại đường kính 48.6 ly đúng không ạ.)* |
| Saito | よく<ruby>覚<rt>おぼ</rt></ruby>えてるな。<ruby>試験<rt>しけん</rt></ruby>でも<ruby>名前<rt>なまえ</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれるぞ。<br>*(Nhớ kỹ đấy. Trong thi cũng bị hỏi tên đó.)* |
| Thức | はい、<ruby>部材<rt>ぶざい</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>、<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, tên các bộ phận, cháu sẽ nhớ hết ạ.)* |

---

## Tình huống 5 — Lán nghỉ · 12:10, giờ nghỉ trưa ôn N3 ngữ pháp

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>昼休<rt>ひるやす</rt></ruby>みも<ruby>勉強<rt>べんきょう</rt></ruby>か。<ruby>何<rt>なに</rt></ruby>やってる?<br>*(Thức, giờ nghỉ trưa cũng học à. Đang làm gì thế?)* |
| Thức | N3の<ruby>文法<rt>ぶんぽう</rt></ruby>だよ。「～にとって」と「～について」、まだ<ruby>混<rt>こん</rt></ruby><ruby>乱<rt>らん</rt></ruby>する。<br>*(Ngữ pháp N3 đây. "~にとって" với "~について", vẫn còn lẫn lộn.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>も<ruby>苦手<rt>にがて</rt></ruby>だ。<ruby>例文<rt>れいぶん</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えるしかないな。<br>*(Tớ cũng kém. Chỉ còn cách nhớ qua câu ví dụ thôi.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつやれば、<ruby>七月<rt>しちがつ</rt></ruby>には<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>うと<ruby>思<rt>おも</rt></ruby>う。<br>*(Mỗi ngày làm một ít, tớ nghĩ tháng bảy sẽ kịp.)* |
| Hùng | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>受<rt>う</rt></ruby>かったら<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がるしな。<br>*(Cùng cố gắng nhé. Đỗ thì lương cũng tăng mà.)* |
| Thức | だな。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>るときにも<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>つ。<br>*(Đúng vậy. Lúc chuyển sang kỹ năng đặc định cũng có ích.)* |

---

## Tình huống 6 — Trên giàn giáo tầng 3 · 13:30, 親方 kiểm tra tay nghề trước thi

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、その<ruby>筋交<rt>すじか</rt></ruby>い、<ruby>角度<rt>かくど</rt></ruby>がずれてるぞ。<br>*(Thức, thanh giằng chéo đó, lệch góc rồi đấy.)* |
| Thức | あ、すみません。やり<ruby>直<rt>なお</rt></ruby>します。<br>*(À, xin lỗi ạ. Cháu làm lại.)* |
| Tanigawa | <ruby>試験<rt>しけん</rt></ruby>でこれをやったら<ruby>減点<rt>げんてん</rt></ruby>だ。<ruby>普段<rt>ふだん</rt></ruby>から<ruby>丁寧<rt>ていねい</rt></ruby>にやれ。<br>*(Thi mà làm thế này là bị trừ điểm. Thường ngày phải làm cẩn thận.)* |
| Thức | はい。<ruby>癖<rt>くせ</rt></ruby>になるように、<ruby>毎回<rt>まいかい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Để thành thói quen, lần nào cháu cũng sẽ kiểm tra.)* |
| Tanigawa | そうだ。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えれば、<ruby>試験<rt>しけん</rt></ruby>でも<ruby>緊張<rt>きんちょう</rt></ruby>しない。<br>*(Đúng vậy. Cơ thể nhớ rồi thì thi cũng không hồi hộp.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>本番<rt>ほんばん</rt></ruby>のつもりでやります。<br>*(Cháu hiểu rồi. Cháu sẽ làm như thi thật.)* |

---

## Tình huống 7 — Lán nghỉ · 15:00, hỏi 職長 về phần lý thuyết an toàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>学科<rt>がっか</rt></ruby>で「<ruby>墜落<rt>ついらく</rt></ruby><ruby>制止<rt>せいし</rt></ruby><ruby>用<rt>よう</rt></ruby><ruby>器具<rt>きぐ</rt></ruby>」って<ruby>出<rt>で</rt></ruby>ますか?<br>*(Anh Saito, phần lý thuyết "thiết bị chống rơi ngã" có ra không ạ?)* |
| Saito | <ruby>必<rt>かなら</rt></ruby>ず<ruby>出<rt>で</rt></ruby>る。フルハーネスのことだ。<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えとけ。<br>*(Chắc chắn ra. Là nói về dây an toàn toàn thân. Cách dùng cũng nhớ luôn đi.)* |
| Thức | <ruby>高<rt>たか</rt></ruby>さ<ruby>何<rt>なん</rt></ruby>メートルから<ruby>義務<rt>ぎむ</rt></ruby>でしたっけ?<br>*(Từ độ cao bao nhiêu mét là bắt buộc nhỉ?)* |
| Saito | <ruby>原則<rt>げんそく</rt></ruby><ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>だ。それは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>覚<rt>おぼ</rt></ruby>えろ。<br>*(Về nguyên tắc là từ 2 mét trở lên. Cái đó nhất định phải nhớ.)* |
| Thức | <ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>、ですね。メモします。<br>*(Từ 2 mét trở lên ạ. Cháu ghi lại.)* |
| Saito | あと、<ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>も<ruby>出<rt>で</rt></ruby>るぞ。<br>*(Còn nữa, vai trò của chủ nhiệm thi công cũng ra đấy.)* |
| Thức | はい、そこも<ruby>確認<rt>かくにん</rt></ruby>しておきます。ありがとうございます。<br>*(Vâng, chỗ đó cháu cũng sẽ kiểm tra. Cảm ơn anh ạ.)* |

---

## Tình huống 8 — Công trường · 16:00, ghi nhớ trình tự an toàn vừa làm vừa nhẩm

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>何<rt>なに</rt></ruby>ぶつぶつ<ruby>言<rt>い</rt></ruby>ってるんだ?<br>*(Thức, lẩm bẩm gì thế?)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>口<rt>くち</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>覚<rt>おぼ</rt></ruby>えてるんです。<br>*(Em đang đọc to trình tự thao tác để nhớ ạ.)* |
| Kondo | いい<ruby>方法<rt>ほうほう</rt></ruby>だな。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すと<ruby>頭<rt>あたま</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。<br>*(Cách hay đấy. Đọc thành tiếng thì vào đầu.)* |
| Thức | <ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですね。<br>*(Giống chỉ tay hô to vậy nhỉ.)* |
| Kondo | そうそう。それを<ruby>試験<rt>しけん</rt></ruby>でもやれば、<ruby>採点<rt>さいてん</rt></ruby>がいい。<br>*(Đúng đúng. Làm thế trong thi luôn thì điểm tốt.)* |
| Thức | <ruby>本番<rt>ほんばん</rt></ruby>でも<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>します。ありがとうございます。<br>*(Lúc thi thật em cũng sẽ chỉ tay hô to. Cảm ơn anh ạ.)* |

---

## Tình huống 9 — Lán nghỉ · 17:00, cuối ngày 親方 dặn dò

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>はよく<ruby>動<rt>うご</rt></ruby>いてたな。<br>*(Thức, hôm nay làm chăm đấy.)* |
| Thức | ありがとうございます。<ruby>試験<rt>しけん</rt></ruby>のつもりで<ruby>練習<rt>れんしゅう</rt></ruby>しています。<br>*(Cháu cảm ơn ạ. Cháu đang luyện như thể đang thi ạ.)* |
| Tanigawa | その<ruby>調子<rt>ちょうし</rt></ruby>だ。あせらず、<ruby>体<rt>からだ</rt></ruby>を<ruby>壊<rt>こわ</rt></ruby>すなよ。<br>*(Cứ đà đó. Đừng vội, đừng làm hỏng sức khỏe.)* |
| Thức | はい。<ruby>睡眠<rt>すいみん</rt></ruby>もちゃんと<ruby>取<rt>と</rt></ruby>ります。<br>*(Vâng. Cháu cũng sẽ ngủ đủ ạ.)* |
| Tanigawa | <ruby>合格<rt>ごうかく</rt></ruby>したら、<ruby>仕事<rt>しごと</rt></ruby>の<ruby>幅<rt>はば</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がるぞ。<ruby>期待<rt>きたい</rt></ruby>してる。<br>*(Đỗ thì phạm vi công việc rộng ra đấy. Tôi kỳ vọng đấy.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します。<br>*(Vâng, nhất định cháu sẽ đỗ ạ.)* |

---

## Tình huống 10 — Ký túc xá · 19:30, tự lập kế hoạch ôn tập

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>計画<rt>けいかく</rt></ruby><ruby>表<rt>ひょう</rt></ruby><ruby>作<rt>つく</rt></ruby>ってるのか。<br>*(Thức, đang làm bảng kế hoạch à.)* |
| Thức | うん。<ruby>平日<rt>へいじつ</rt></ruby>はN3、<ruby>週末<rt>しゅうまつ</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>って<ruby>分<rt>わ</rt></ruby>けた。<br>*(Ừ. Tớ chia ngày thường học N3, cuối tuần luyện thực hành.)* |
| Hùng | <ruby>無理<rt>むり</rt></ruby>のない<ruby>計画<rt>けいかく</rt></ruby>だな。<ruby>続<rt>つづ</rt></ruby>けられそうか?<br>*(Kế hoạch không quá sức nhỉ. Duy trì được không?)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>だけにした。<ruby>長<rt>なが</rt></ruby>くやると<ruby>続<rt>つづ</rt></ruby>かないから。<br>*(Tớ để mỗi ngày chỉ một tiếng thôi. Làm dài thì không duy trì được.)* |
| Hùng | <ruby>賢<rt>かしこ</rt></ruby>いな。<ruby>俺<rt>おれ</rt></ruby>もまねしよう。<br>*(Khôn đấy. Tớ cũng bắt chước.)* |
| Thức | <ruby>一緒<rt>いっしょ</rt></ruby>にやれば<ruby>続<rt>つづ</rt></ruby>くよ。<br>*(Cùng làm thì duy trì được mà.)* |

---

## Tình huống 11 — Công trường · 8:20, KY hoạt động sáng và liên hệ thi

| Vai | Lời thoại |
|---|---|
| Saito | <ruby>今日<rt>きょう</rt></ruby>のKYだ。<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>、トゥック、<ruby>一<rt>ひと</rt></ruby>つ<ruby>言<rt>い</rt></ruby>ってみろ。<br>*(KY hôm nay đây. Dự đoán nguy hiểm, Thức, nói một cái xem.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>で<ruby>工具<rt>こうぐ</rt></ruby>を<ruby>落<rt>お</rt></ruby>とす<ruby>危険<rt>きけん</rt></ruby>があります。<ruby>工具<rt>こうぐ</rt></ruby>に<ruby>紐<rt>ひも</rt></ruby>をつけます。<br>*(Có nguy cơ rơi dụng cụ trên giàn giáo. Em sẽ buộc dây vào dụng cụ.)* |
| Saito | いいぞ。それ、<ruby>試験<rt>しけん</rt></ruby>の<ruby>学科<rt>がっか</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>かれる<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>だ。<br>*(Tốt. Cái đó cũng là cách tư duy bị hỏi trong phần lý thuyết.)* |
| Thức | KYと<ruby>試験<rt>しけん</rt></ruby>、<ruby>同<rt>おな</rt></ruby>じ<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>なんですね。<br>*(KY với thi cùng một cách tư duy nhỉ.)* |
| Saito | そうだ。<ruby>毎日<rt>まいにち</rt></ruby>のKYが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>だ。<br>*(Đúng. KY mỗi ngày là cách học tốt nhất.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>真剣<rt>しんけん</rt></ruby>にやります。<br>*(Vâng, mỗi ngày em sẽ làm nghiêm túc ạ.)* |

---

## Tình huống 12 — Lán nghỉ · 10:00, mượn sách đề từ 先輩

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、これが<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby><ruby>集<rt>しゅう</rt></ruby>だ。<br>*(Thức, đây là tập đề năm trước.)* |
| Thức | わあ、ありがとうございます。<ruby>書<rt>か</rt></ruby>き<ruby>込<rt>こ</rt></ruby>んでもいいですか?<br>*(Ồ, cảm ơn anh ạ. Em viết vào được không ạ?)* |
| Kondo | コピーして<ruby>使<rt>つか</rt></ruby>え。<ruby>原本<rt>げんぽん</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>にも<ruby>回<rt>まわ</rt></ruby>すからな。<br>*(Photo ra mà dùng. Bản gốc anh còn chuyền cho đàn em đấy.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>大事<rt>だいじ</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Em hiểu rồi. Em sẽ dùng cẩn thận.)* |
| Kondo | <ruby>分<rt>わ</rt></ruby>からないところは<ruby>聞<rt>き</rt></ruby>け。<ruby>教<rt>おし</rt></ruby>えてやる。<br>*(Chỗ nào không hiểu thì hỏi. Anh chỉ cho.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ ạ.)* |

---

## Tình huống 13 — Công trường · 14:00, 親方 hỏi mục tiêu sau khi đỗ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>試験<rt>しけん</rt></ruby>に<ruby>受<rt>う</rt></ruby>かったあと、どうしたい?<br>*(Thức, sau khi đỗ thi cậu muốn làm gì?)* |
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>って、ここで<ruby>働<rt>はたら</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Cháu muốn chuyển sang kỹ năng đặc định, tiếp tục làm ở đây ạ.)* |
| Tanigawa | そうか。とびの<ruby>仕事<rt>しごと</rt></ruby>、<ruby>気<rt>き</rt></ruby>に<ruby>入<rt>い</rt></ruby>ってるんだな。<br>*(Vậy à. Cậu thích nghề giàn giáo nhỉ.)* |
| Thức | はい。<ruby>高<rt>たか</rt></ruby>い<ruby>所<rt>ところ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>いですが、やりがいがあります。<br>*(Vâng. Trên cao tuy sợ nhưng có ý nghĩa ạ.)* |
| Tanigawa | いい<ruby>心<rt>こころ</rt></ruby>がけだ。まずは<ruby>試験<rt>しけん</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しろ。<br>*(Suy nghĩ tốt đấy. Trước hết tập trung vào thi đi.)* |
| Thức | はい、<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, cháu sẽ cố gắng từng bước ạ.)* |

---

## Tình huống 14 — Lán nghỉ · 12:30, ôn N3 đọc hiểu cùng Hùng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、この<ruby>読解<rt>どっかい</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>、<ruby>答<rt>こた</rt></ruby>えが<ruby>分<rt>わ</rt></ruby>からない。<br>*(Thức, bài đọc hiểu này, tớ không biết đáp án.)* |
| Thức | どれ?…ああ、これは<ruby>筆者<rt>ひっしゃ</rt></ruby>の<ruby>意見<rt>いけん</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いてる<ruby>問題<rt>もんだい</rt></ruby>だ。<br>*(Bài nào? À, đây là câu hỏi về ý kiến của tác giả.)* |
| Hùng | どうやって<ruby>見<rt>み</rt></ruby>つける?<br>*(Làm sao tìm được?)* |
| Thức | <ruby>最後<rt>さいご</rt></ruby>の<ruby>段落<rt>だんらく</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むんだ。だいたい<ruby>結論<rt>けつろん</rt></ruby>が<ruby>書<rt>か</rt></ruby>いてある。<br>*(Đọc đoạn cuối. Thường kết luận viết ở đó.)* |
| Hùng | なるほど。<ruby>本当<rt>ほんとう</rt></ruby>だ、ここに<ruby>書<rt>か</rt></ruby>いてある。<br>*(Ra vậy. Đúng thật, viết ở đây.)* |
| Thức | コツをつかめば<ruby>読解<rt>どっかい</rt></ruby>は<ruby>点<rt>てん</rt></ruby>が<ruby>取<rt>と</rt></ruby>れるよ。<br>*(Nắm được mẹo thì đọc hiểu lấy điểm được mà.)* |

---

## Tình huống 15 — Công trường · 15:30, 職長 cho luyện thử thực hành

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今<rt>いま</rt></ruby>から<ruby>本番<rt>ほんばん</rt></ruby>のつもりで<ruby>足場<rt>あしば</rt></ruby>を<ruby>組<rt>く</rt></ruby>んでみろ。<ruby>時間<rt>じかん</rt></ruby><ruby>測<rt>はか</rt></ruby>るぞ。<br>*(Thức, từ giờ làm như thi thật, dựng giàn giáo xem. Tôi tính giờ đấy.)* |
| Thức | はい。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng. Mong anh chỉ bảo ạ.)* |
| Saito | (sau khi xong) <ruby>十<rt>じゅう</rt></ruby><ruby>五分<rt>ごふん</rt></ruby>か。<ruby>悪<rt>わる</rt></ruby>くない。でも<ruby>確認<rt>かくにん</rt></ruby>が<ruby>少<rt>すく</rt></ruby>ない。<br>*(Mười lăm phút à. Không tệ. Nhưng kiểm tra còn ít.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>したほうがいいですか?<br>*(Em nên đọc to phần kiểm tra ạ?)* |
| Saito | そうだ。「<ruby>水平<rt>すいへい</rt></ruby>よし」「<ruby>固定<rt>こてい</rt></ruby>よし」と<ruby>言<rt>い</rt></ruby>え。<ruby>採点<rt>さいてん</rt></ruby>に<ruby>響<rt>ひび</rt></ruby>く。<br>*(Đúng. Hô "thăng bằng OK", "cố định OK". Ảnh hưởng đến điểm.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>次<rt>つぎ</rt></ruby>はちゃんと<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>します。<br>*(Em hiểu rồi. Lần sau em sẽ đọc to hẳn hoi.)* |

---

## Tình huống 16 — Lán nghỉ · 16:30, 先輩 chia sẻ tâm lý phòng thi

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>試験<rt>しけん</rt></ruby><ruby>当日<rt>とうじつ</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>しましたか?<br>*(Anh Kondo, ngày thi anh có hồi hộp không ạ?)* |
| Kondo | したよ。でも<ruby>深呼吸<rt>しんこきゅう</rt></ruby>して、いつも<ruby>通<rt>どお</rt></ruby>りやった。<br>*(Có chứ. Nhưng anh hít thở sâu, làm như mọi khi.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>したら、どうすればいいですか?<br>*(Lỡ làm sai thì nên làm sao ạ?)* |
| Kondo | あわてるな。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてやり<ruby>直<rt>なお</rt></ruby>せば<ruby>大<rt>おお</rt></ruby>きな<ruby>減点<rt>げんてん</rt></ruby>にはならない。<br>*(Đừng cuống. Bình tĩnh làm lại thì không bị trừ nhiều điểm đâu.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>気持<rt>きも</rt></ruby>ちを<ruby>強<rt>つよ</rt></ruby>く<ruby>持<rt>も</rt></ruby>ちます。<br>*(Em hiểu rồi. Em sẽ giữ tinh thần vững.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>練習<rt>れんしゅう</rt></ruby>してるからな。<br>*(Cậu thì ổn thôi. Vì cậu luyện tập mà.)* |

---

## Tình huống 17 — Công trường · 9:40, 親方 nhắc cân bằng công việc và ôn thi

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>勉強<rt>べんきょう</rt></ruby>のしすぎで<ruby>仕事<rt>しごと</rt></ruby>が<ruby>雑<rt>ざつ</rt></ruby>になるなよ。<br>*(Thức, đừng vì học quá mà làm việc cẩu thả đấy.)* |
| Thức | はい、<ruby>気<rt>き</rt></ruby>をつけます。<ruby>仕事<rt>しごと</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>ですから。<br>*(Vâng, cháu sẽ chú ý. Vì công việc là cách luyện tốt nhất ạ.)* |
| Tanigawa | <ruby>分<rt>わ</rt></ruby>かってるじゃないか。<ruby>現場<rt>げんば</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだことが<ruby>試験<rt>しけん</rt></ruby>に<ruby>出<rt>で</rt></ruby>る。<br>*(Hiểu rồi đấy. Cái học ở công trường sẽ ra trong thi.)* |
| Thức | はい。<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Vâng. Cháu sẽ trân trọng công việc mỗi ngày ạ.)* |
| Tanigawa | それでいい。<ruby>無理<rt>むり</rt></ruby>はするな。<br>*(Thế là được. Đừng làm quá sức.)* |
| Thức | ありがとうございます。<br>*(Cháu cảm ơn ạ.)* |

---

## Tình huống 18 — Lán nghỉ · 13:00, dạy lại từ vựng cho đàn em tương lai

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、お<ruby>前<rt>まえ</rt></ruby><ruby>説明<rt>せつめい</rt></ruby><ruby>上手<rt>じょうず</rt></ruby>だな。<ruby>先生<rt>せんせい</rt></ruby>みたいだ。<br>*(Thức, cậu giải thích giỏi nhỉ. Như thầy giáo ấy.)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えると<ruby>自分<rt>じぶん</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えるんだ。<br>*(Dạy người khác thì mình cũng nhớ.)* |
| Hùng | なるほど。<ruby>今度<rt>こんど</rt></ruby><ruby>新<rt>あたら</rt></ruby>しいTTSが<ruby>来<rt>く</rt></ruby>るらしいぞ。<br>*(Ra vậy. Nghe nói sắp có TTS mới đến đấy.)* |
| Thức | そうなんだ。<ruby>俺<rt>おれ</rt></ruby>たちが<ruby>教<rt>おし</rt></ruby>える<ruby>番<rt>ばん</rt></ruby>だな。<br>*(Vậy à. Đến lượt bọn mình dạy nhỉ.)* |
| Hùng | <ruby>三<rt>さん</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>だもんな。<ruby>先輩<rt>せんぱい</rt></ruby>になるんだ。<br>*(Năm thứ ba mà. Thành đàn anh rồi.)* |
| Thức | しっかり<ruby>教<rt>おし</rt></ruby>えられるように、まず<ruby>自分<rt>じぶん</rt></ruby>が<ruby>合格<rt>ごうかく</rt></ruby>しないとな。<br>*(Để dạy được tử tế, trước hết mình phải đỗ đã.)* |

---

## Tình huống 19 — Công trường · 17:10, 職長 tổng kết một tuần ôn luyện

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>今週<rt>こんしゅう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>、ずいぶん<ruby>良<rt>よ</rt></ruby>くなったぞ。<br>*(Thức, luyện tập tuần này khá hơn nhiều đấy.)* |
| Thức | ありがとうございます。<ruby>確認<rt>かくにん</rt></ruby>の<ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>しが<ruby>習慣<rt>しゅうかん</rt></ruby>になりました。<br>*(Cháu cảm ơn ạ. Việc hô to khi kiểm tra đã thành thói quen rồi ạ.)* |
| Saito | あとは<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>力<rt>ちから</rt></ruby>を<ruby>出<rt>だ</rt></ruby>すだけだ。<br>*(Còn lại là phát huy sức trong buổi thi thật thôi.)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>もあと<ruby>少<rt>すこ</rt></ruby>しで<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わります。<br>*(Phần lý thuyết cũng sắp xong đề năm trước rồi ạ.)* |
| Saito | <ruby>順調<rt>じゅんちょう</rt></ruby>だな。この<ruby>調子<rt>ちょうし</rt></ruby>でいけ。<br>*(Thuận lợi đấy. Cứ đà này mà tiến.)* |
| Thức | はい、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かずやります。<br>*(Vâng, cháu sẽ làm không lơ là đến cuối ạ.)* |

---

## Tình huống 20 — Ký túc xá · 21:00, tâm sự tiếng Việt với anh Long (đàn anh Việt)

| Vai | Lời thoại |
|---|---|
| Long | Thức, năm ba rồi đấy. Vừa làm vừa ôn hai cái thi, có mệt không? |
| Thức | Có anh, nhưng em quen rồi. Em chia nhỏ ra mỗi ngày một ít. |
| Long | Ừ, đừng ép quá. Anh hồi đó cũng vừa làm vừa thi, ngủ ít là dễ ốm. |
| Thức | Em chú ý ngủ đủ ạ. Em muốn đỗ để chuyển kỹ năng đặc định, ở lại làm tiếp. |
| Long | Tốt. Cứ giữ sức bền, đừng vội. Cần gì cứ hỏi anh. |
| Thức | Vâng, cảm ơn anh. Có anh đi trước em yên tâm hơn nhiều. |

---

## Đọng lại

Năm thứ ba mở đầu bằng áp lực kép: vừa làm việc trên công trường vừa ôn thi đánh giá kỹ năng とび và tiếng Nhật N3. Thức đã trưởng thành hơn — chủ động hỏi 親方, 職長, 先輩 đúng trọng tâm, biết biến công việc hằng ngày thành cách luyện thi, và bắt đầu ý thức mình sắp thành đàn anh dẫn dắt TTS mới. Mọi thứ được cân bằng: cố gắng nhưng không ép kiệt sức.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 技能評価試験 | ぎのうひょうかしけん | Kỳ thi đánh giá kỹ năng |
> | 実技 | じつぎ | Thực hành (phần thi tay nghề) |
> | 学科 | がっか | Lý thuyết (phần thi viết) |
> | 足場 | あしば | Giàn giáo |
> | 建地 | たてじ | Cột đứng (của giàn giáo) |
> | 筋交い | すじかい | Thanh giằng chéo |
> | 単管パイプ | たんかんパイプ | Ống đơn (ống thép giàn giáo) |
> | 布板 | ぬのいた | Tấm ván sàn giàn giáo |
> | 墜落制止用器具 | ついらくせいしようきぐ | Thiết bị chống rơi ngã (dây an toàn) |
> | フルハーネス | ふるはーねす | Dây an toàn toàn thân |
> | 指差呼称 | ゆびさこしょう | Chỉ tay hô to (xác nhận an toàn) |
> | 危険予知 | きけんよち | Dự đoán nguy hiểm (KY) |
> | 減点 | げんてん | Bị trừ điểm |
> | 過去問 | かこもん | Đề thi năm trước |
> | 特定技能 | とくていぎのう | Kỹ năng đặc định (tư cách lưu trú) |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000002, 800000035, NULL, 'markdown_book', 'T2. Thi đánh giá kỹ năng とび (技能評価試験)', '# Sách thực tập sinh xây dựng · T2. Thi đánh giá kỹ năng とび (技能評価試験)

> **Mục tiêu nhân vật:** Thức bước vào kỳ thi đánh giá kỹ năng nghề とび (giàn giáo). Học mẫu câu nghiệp vụ ngày thi: chào hỏi giám khảo, xác nhận yêu cầu đề thi, hô xác nhận an toàn khi thao tác, trả lời phần vấn đáp lý thuyết, báo cáo kết quả với 親方.

---

## Bối cảnh

Tháng 5 năm 2028. Sau một tháng ôn luyện, Thức dự kỳ thi đánh giá kỹ năng とび (技能評価試験) tại trung tâm thi của hiệp hội. Phần thực hành: dựng và tháo một đoạn giàn giáo theo bản vẽ trong thời gian quy định. Phần lý thuyết: vấn đáp về an toàn. Chương này tập trung mẫu câu chuẩn người thi nghề xây dựng dùng: hô xác nhận, hỏi giám khảo cho rõ, báo cáo hoàn thành.

---

## Tình huống 1 — Sảnh trung tâm thi · 8:00, làm thủ tục dự thi

| Vai | Lời thoại |
|---|---|
| Nhân viên | <ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>と<ruby>名前<rt>なまえ</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho biết số báo danh và tên.)* |
| Thức | <ruby>受験<rt>じゅけん</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>番<rt>ばん</rt></ruby>、トゥックです。<br>*(Số báo danh 15, em là Thức ạ.)* |
| Nhân viên | <ruby>身分<rt>みぶん</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho xem giấy tờ tùy thân.)* |
| Thức | はい、<ruby>在留<rt>ざいりゅう</rt></ruby>カードです。どうぞ。<br>*(Vâng, thẻ lưu trú đây ạ. Mời anh.)* |
| Nhân viên | <ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>控室<rt>ひかえしつ</rt></ruby>で<ruby>待<rt>ま</rt></ruby>っていてください。<br>*(Đã xác nhận. Em chờ ở phòng chờ nhé.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em hiểu rồi. Mong anh giúp ạ.)* |

---

## Tình huống 2 — Phòng chờ · 8:20, giám khảo phổ biến quy định

| Vai | Lời thoại |
|---|---|
| Giám khảo | これから<ruby>実技<rt>じつぎ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>説明<rt>せつめい</rt></ruby>をします。よく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Bây giờ tôi phổ biến về thi thực hành. Hãy nghe kỹ.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong thầy ạ.)* |
| Giám khảo | <ruby>制限<rt>せいげん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>完成<rt>かんせい</rt></ruby>させてください。<br>*(Thời gian giới hạn là 40 phút. Hãy hoàn thành trong thời gian đó.)* |
| Thức | <ruby>質問<rt>しつもん</rt></ruby>してもいいですか?<ruby>安全<rt>あんぜん</rt></ruby><ruby>帯<rt>たい</rt></ruby>は<ruby>持参<rt>じさん</rt></ruby>のものですか?<br>*(Em hỏi được không ạ? Dây an toàn dùng đồ mang theo ạ?)* |
| Giám khảo | はい、<ruby>各自<rt>かくじ</rt></ruby>の<ruby>装備<rt>そうび</rt></ruby>を<ruby>使<rt>つか</rt></ruby>ってください。<ruby>点検<rt>てんけん</rt></ruby>してから<ruby>使<rt>つか</rt></ruby>うこと。<br>*(Vâng, dùng trang bị của từng người. Phải kiểm tra trước khi dùng.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em hiểu rồi. Cảm ơn thầy ạ.)* |

---

## Tình huống 3 — Khu thực hành · 8:45, xác nhận bản vẽ với giám khảo

| Vai | Lời thoại |
|---|---|
| Giám khảo | これが<ruby>図面<rt>ずめん</rt></ruby>です。<ruby>指示<rt>しじ</rt></ruby><ruby>通<rt>どお</rt></ruby>りに<ruby>足場<rt>あしば</rt></ruby>を<ruby>組<rt>く</rt></ruby>んでください。<br>*(Đây là bản vẽ. Hãy dựng giàn giáo đúng theo chỉ thị.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>高<rt>たか</rt></ruby>さは<ruby>二<rt>に</rt></ruby><ruby>層<rt>そう</rt></ruby>でよろしいですか?<br>*(Cho em xác nhận. Chiều cao là hai tầng đúng không ạ?)* |
| Giám khảo | はい、<ruby>二<rt>に</rt></ruby><ruby>層<rt>そう</rt></ruby>です。<ruby>布板<rt>ぬのいた</rt></ruby>は<ruby>下<rt>した</rt></ruby>の<ruby>段<rt>だん</rt></ruby>だけです。<br>*(Vâng, hai tầng. Ván sàn chỉ tầng dưới thôi.)* |
| Thức | <ruby>建地<rt>たてじ</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby><ruby>通<rt>どお</rt></ruby>りですね。<br>*(Khoảng cách cột đứng theo đúng kích thước trên bản vẽ nhỉ.)* |
| Giám khảo | そうです。では、<ruby>始<rt>はじ</rt></ruby>めてください。<ruby>時間<rt>じかん</rt></ruby><ruby>計測<rt>けいそく</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<br>*(Đúng. Vậy bắt đầu đi. Bắt đầu tính giờ.)* |
| Thức | はい、<ruby>始<rt>はじ</rt></ruby>めます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, em bắt đầu. Mong thầy chỉ bảo ạ.)* |

---

## Tình huống 4 — Khu thực hành · 8:46, kiểm tra trang bị trước khi leo

| Vai | Lời thoại |
|---|---|
| Thức | (tự hô) フルハーネス、<ruby>装着<rt>そうちゃく</rt></ruby>よし。<br>*(Dây an toàn toàn thân, đeo OK.)* |
| Thức | (tự hô) ランヤード、<ruby>異常<rt>いじょう</rt></ruby>なし、よし。<br>*(Dây nối, không bất thường, OK.)* |
| Giám khảo | (ghi chép) ……。<br>*(...)* |
| Thức | (tự hô) <ruby>工具<rt>こうぐ</rt></ruby>の<ruby>落下<rt>らっか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>紐<rt>ひも</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>よし。<br>*(Dây chống rơi dụng cụ, kiểm tra OK.)* |
| Thức | (tự hô) <ruby>足元<rt>あしもと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、<ruby>周<rt>まわ</rt></ruby>り<ruby>確認<rt>かくにん</rt></ruby>、よし。<ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby>。<br>*(Kiểm tra chân, kiểm tra xung quanh, OK. Bắt đầu thao tác.)* |

---

## Tình huống 5 — Khu thực hành · 9:05, vừa lắp vừa hô xác nhận

| Vai | Lời thoại |
|---|---|
| Thức | (tự hô) <ruby>建地<rt>たてじ</rt></ruby>、<ruby>垂直<rt>すいちょく</rt></ruby>よし。<br>*(Cột đứng, thẳng đứng OK.)* |
| Thức | (tự hô) <ruby>根<rt>ね</rt></ruby>がらみ<ruby>固定<rt>こてい</rt></ruby>、よし。<br>*(Thanh giằng chân, cố định OK.)* |
| Giám khảo | <ruby>手<rt>て</rt></ruby>を<ruby>止<rt>と</rt></ruby>めないで、<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Đừng dừng tay, tiếp tục đi.)* |
| Thức | はい。(tự hô) <ruby>筋交<rt>すじか</rt></ruby>い、<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けよし。<br>*(Vâng. Thanh giằng chéo, lắp OK.)* |
| Thức | (tự hô) <ruby>布板<rt>ぬのいた</rt></ruby>、<ruby>固定<rt>こてい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、よし。<br>*(Ván sàn, kiểm tra cố định, OK.)* |
| Thức | (tự hô) <ruby>水平<rt>すいへい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、よし。<br>*(Kiểm tra thăng bằng, OK.)* |

---

## Tình huống 6 — Khu thực hành · 9:18, hỏi giám khảo khi chưa rõ chi tiết

| Vai | Lời thoại |
|---|---|
| Thức | すみません、<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Xin lỗi, cho em xác nhận ạ.)* |
| Giám khảo | どうぞ。<br>*(Mời.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりは<ruby>両側<rt>りょうがわ</rt></ruby>に<ruby>付<rt>つ</rt></ruby>けますか?<br>*(Lan can lắp cả hai bên ạ?)* |
| Giám khảo | <ruby>図面<rt>ずめん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてあります。よく<ruby>見<rt>み</rt></ruby>てください。<br>*(Có viết trên bản vẽ. Em nhìn kỹ đi.)* |
| Thức | (xem lại) ……はい、<ruby>外側<rt>そとがわ</rt></ruby>のみですね。<ruby>失礼<rt>しつれい</rt></ruby>しました。<br>*(...Vâng, chỉ phía ngoài thôi ạ. Em xin lỗi.)* |
| Giám khảo | はい。<ruby>図面<rt>ずめん</rt></ruby>をよく<ruby>読<rt>よ</rt></ruby>むのも<ruby>採点<rt>さいてん</rt></ruby><ruby>対象<rt>たいしょう</rt></ruby>です。<br>*(Ừ. Đọc kỹ bản vẽ cũng là đối tượng chấm điểm.)* |

---

## Tình huống 7 — Khu thực hành · 9:25, báo cáo hoàn thành

| Vai | Lời thoại |
|---|---|
| Thức | (hô to) <ruby>作業<rt>さぎょう</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Đã hoàn thành thao tác. Em kiểm tra lần cuối.)* |
| Giám khảo | はい、<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Ừ, kiểm tra đi.)* |
| Thức | (chỉ tay hô) <ruby>建地<rt>たてじ</rt></ruby>よし、<ruby>筋交<rt>すじか</rt></ruby>いよし、<ruby>布板<rt>ぬのいた</rt></ruby>よし。<br>*(Cột đứng OK, giằng chéo OK, ván sàn OK.)* |
| Thức | (chỉ tay hô) <ruby>手<rt>て</rt></ruby>すりよし、<ruby>水平<rt>すいへい</rt></ruby>よし。<ruby>異常<rt>いじょう</rt></ruby>ありません。<br>*(Lan can OK, thăng bằng OK. Không bất thường.)* |
| Thức | <ruby>完成<rt>かんせい</rt></ruby>です。<ruby>報告<rt>ほうこく</rt></ruby><ruby>終<rt>お</rt></ruby>わります。<br>*(Hoàn thành ạ. Em báo cáo xong.)* |
| Giám khảo | はい、<ruby>確認<rt>かくにん</rt></ruby>しました。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Ừ, tôi đã xác nhận. Em vất vả rồi.)* |

---

## Tình huống 8 — Khu thực hành · 9:30, phần tháo dỡ

| Vai | Lời thoại |
|---|---|
| Giám khảo | <ruby>次<rt>つぎ</rt></ruby>は<ruby>解体<rt>かいたい</rt></ruby>です。<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Tiếp theo là tháo dỡ. Chú ý an toàn.)* |
| Thức | はい。(tự hô) <ruby>解体<rt>かいたい</rt></ruby><ruby>開始<rt>かいし</rt></ruby>、<ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に、よし。<br>*(Vâng. Bắt đầu tháo, từ trên xuống theo thứ tự, OK.)* |
| Giám khảo | <ruby>部材<rt>ぶざい</rt></ruby>はどうしますか?<br>*(Vật liệu xử lý thế nào?)* |
| Thức | <ruby>下<rt>した</rt></ruby>へ<ruby>投<rt>な</rt></ruby>げません。<ruby>手渡<rt>てわた</rt></ruby>しか<ruby>下<rt>お</rt></ruby>ろします。<br>*(Em không ném xuống. Em chuyền tay hoặc hạ xuống.)* |
| Giám khảo | そうです。<ruby>投<rt>な</rt></ruby>げたら<ruby>大<rt>おお</rt></ruby>きな<ruby>減点<rt>げんてん</rt></ruby>です。<br>*(Đúng. Ném là trừ điểm nặng.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かっています。<ruby>慎重<rt>しんちょう</rt></ruby>にやります。<br>*(Em hiểu ạ. Em sẽ làm thận trọng.)* |

---

## Tình huống 9 — Phòng vấn đáp · 10:00, câu hỏi lý thuyết an toàn

| Vai | Lời thoại |
|---|---|
| Giám khảo | <ruby>学科<rt>がっか</rt></ruby>の<ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>です。フルハーネスの<ruby>使用<rt>しよう</rt></ruby><ruby>義務<rt>ぎむ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>メートルから?<br>*(Vấn đáp phần lý thuyết. Nghĩa vụ dùng dây an toàn toàn thân từ bao nhiêu mét?)* |
| Thức | <ruby>原則<rt>げんそく</rt></ruby>、<ruby>高<rt>たか</rt></ruby>さ<ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Về nguyên tắc, từ độ cao 2 mét trở lên ạ.)* |
| Giám khảo | <ruby>正解<rt>せいかい</rt></ruby>。では、<ruby>足場<rt>あしば</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>はいつ<ruby>行<rt>おこな</rt></ruby>いますか?<br>*(Đúng. Vậy kiểm tra giàn giáo tiến hành khi nào?)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>と、<ruby>悪天候<rt>あくてんこう</rt></ruby>のあとです。<br>*(Trước khi bắt đầu thao tác, và sau thời tiết xấu ạ.)* |
| Giám khảo | よろしい。<ruby>誰<rt>だれ</rt></ruby>が<ruby>点検<rt>てんけん</rt></ruby>しますか?<br>*(Được. Ai kiểm tra?)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>が<ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Chủ nhiệm thi công kiểm tra ạ.)* |

---

## Tình huống 10 — Phòng vấn đáp · 10:08, câu hỏi tình huống

| Vai | Lời thoại |
|---|---|
| Giám khảo | <ruby>強風<rt>きょうふう</rt></ruby>のとき、<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>はどうしますか?<br>*(Khi gió mạnh, thao tác trên cao xử lý thế nào?)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby>を<ruby>中止<rt>ちゅうし</rt></ruby>します。<ruby>風速<rt>ふうそく</rt></ruby><ruby>10<rt>じゅう</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>が<ruby>目安<rt>めやす</rt></ruby>です。<br>*(Em dừng thao tác. Mốc là gió từ 10m/s trở lên ạ.)* |
| Giám khảo | <ruby>誰<rt>だれ</rt></ruby>が<ruby>判断<rt>はんだん</rt></ruby>しますか?<br>*(Ai quyết định?)* |
| Thức | <ruby>職長<rt>しょくちょう</rt></ruby>または<ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>が<ruby>判断<rt>はんだん</rt></ruby>します。<br>*(Tổ trưởng hoặc chủ nhiệm thi công quyết định ạ.)* |
| Giám khảo | よく<ruby>勉強<rt>べんきょう</rt></ruby>していますね。<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Học kỹ đấy nhỉ. Hết rồi.)* |
| Thức | ありがとうございました。<br>*(Em cảm ơn thầy ạ.)* |

---

## Tình huống 11 — Phòng chờ · 10:30, trao đổi với thí sinh khác

| Vai | Lời thoại |
|---|---|
| Thí sinh | <ruby>実技<rt>じつぎ</rt></ruby>、どうでした?<br>*(Thực hành thế nào rồi?)* |
| Thức | <ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>終<rt>お</rt></ruby>わりました。<ruby>確認<rt>かくにん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すのを<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Xong trong thời gian. Tôi cố gắng hô xác nhận ra tiếng.)* |
| Thí sinh | それ<ruby>大事<rt>だいじ</rt></ruby>らしいですね。<ruby>私<rt>わたし</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>慌<rt>あわ</rt></ruby>てました。<br>*(Cái đó quan trọng nhỉ. Tôi hơi cuống.)* |
| Thức | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>諦<rt>あきら</rt></ruby>めなければ<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。<br>*(Không bỏ cuộc đến cuối là ổn mà.)* |
| Thí sinh | そうですね。お<ruby>互<rt>たが</rt></ruby>い<ruby>受<rt>う</rt></ruby>かるといいですね。<br>*(Đúng nhỉ. Mong cả hai cùng đỗ.)* |
| Thức | はい、<ruby>結果<rt>けっか</rt></ruby><ruby>待<rt>ま</rt></ruby>ちましょう。<br>*(Vâng, cùng chờ kết quả nhé.)* |

---

## Tình huống 12 — Công trường · ngày hôm sau 8:00, báo cáo với 親方

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>、どうだった?<br>*(Thức, kỳ thi hôm qua thế nào?)* |
| Thức | <ruby>実技<rt>じつぎ</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>完成<rt>かんせい</rt></ruby>しました。<ruby>大<rt>おお</rt></ruby>きなミスはなかったと<ruby>思<rt>おも</rt></ruby>います。<br>*(Thực hành em hoàn thành trong giờ. Em nghĩ không có lỗi lớn ạ.)* |
| Tanigawa | <ruby>学科<rt>がっか</rt></ruby>は?<br>*(Lý thuyết thì sao?)* |
| Thức | <ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>でした。<ruby>練習<rt>れんしゅう</rt></ruby>した<ruby>通<rt>とお</rt></ruby>りに<ruby>答<rt>こた</rt></ruby>えられました。<br>*(Là vấn đáp ạ. Em trả lời được như đã luyện.)* |
| Tanigawa | よくやった。<ruby>結果<rt>けっか</rt></ruby>はまだだが、<ruby>力<rt>ちから</rt></ruby>は<ruby>出<rt>だ</rt></ruby>せたな。<br>*(Làm tốt. Kết quả chưa có nhưng phát huy được rồi đấy.)* |
| Thức | はい、やれることはやりました。<br>*(Vâng, những gì làm được em đã làm ạ.)* |

---

## Tình huống 13 — Công trường · 10:00, 職長 hỏi lại cách Thức xử lý phần khó

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>図面<rt>ずめん</rt></ruby>で<ruby>迷<rt>まよ</rt></ruby>ったところはあったか?<br>*(Thức, có chỗ nào trên bản vẽ bị phân vân không?)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりの<ruby>位置<rt>いち</rt></ruby>で<ruby>少<rt>すこ</rt></ruby>し<ruby>迷<rt>まよ</rt></ruby>いました。でも<ruby>図面<rt>ずめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>み<ruby>直<rt>なお</rt></ruby>しました。<br>*(Em hơi phân vân chỗ vị trí lan can. Nhưng em đọc lại bản vẽ ạ.)* |
| Saito | それでいい。あわてて<ruby>聞<rt>き</rt></ruby>くより<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>るほうがいい。<br>*(Thế là tốt. Hơn là vội hỏi thì nên nhìn bản vẽ.)* |
| Thức | はい、<ruby>図面<rt>ずめん</rt></ruby>に<ruby>答<rt>こた</rt></ruby>えが<ruby>書<rt>か</rt></ruby>いてありました。<br>*(Vâng, đáp án viết trên bản vẽ ạ.)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>でも<ruby>同<rt>おな</rt></ruby>じだ。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>力<rt>ちから</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Ngoài công trường cũng vậy. Năng lực đọc bản vẽ là quan trọng.)* |
| Thức | はい、もっと<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Vâng, em sẽ luyện thêm ạ.)* |

---

## Tình huống 14 — Lán nghỉ · 12:00, chia sẻ với Hùng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>試験<rt>しけん</rt></ruby><ruby>手<rt>て</rt></ruby>ごたえあった?<br>*(Thức, thi có cảm giác làm được không?)* |
| Thức | まあまあだ。<ruby>声<rt>こえ</rt></ruby><ruby>出<rt>だ</rt></ruby>し<ruby>確認<rt>かくにん</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby><ruby>通<rt>どお</rt></ruby>りやれた。<br>*(Tàm tạm. Phần hô xác nhận tớ làm được như đã luyện.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby>だ。<ruby>緊張<rt>きんちょう</rt></ruby>するなあ。<br>*(Tớ tuần sau. Hồi hộp ghê.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>最初<rt>さいしょ</rt></ruby>にちゃんと<ruby>読<rt>よ</rt></ruby>めよ。それで<ruby>半分<rt>はんぶん</rt></ruby><ruby>決<rt>き</rt></ruby>まる。<br>*(Đầu tiên đọc kỹ bản vẽ vào. Quyết định một nửa đấy.)* |
| Hùng | アドバイスありがとう。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてやるよ。<br>*(Cảm ơn lời khuyên. Tớ sẽ làm bình tĩnh.)* |
| Thức | お<ruby>前<rt>まえ</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Cậu thì ổn thôi.)* |

---

## Tình huống 15 — Công trường · 14:00, 親方 dặn không chủ quan

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>試験<rt>しけん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わっても<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くなよ。<br>*(Thức, thi xong rồi cũng đừng lơ là đấy.)* |
| Thức | はい。<ruby>現場<rt>げんば</rt></ruby>は<ruby>試験<rt>しけん</rt></ruby>より<ruby>厳<rt>きび</rt></ruby>しいですから。<br>*(Vâng. Vì công trường còn nghiêm khắc hơn thi ạ.)* |
| Tanigawa | <ruby>分<rt>わ</rt></ruby>かってるじゃないか。<ruby>事故<rt>じこ</rt></ruby>は<ruby>慣<rt>な</rt></ruby>れたときに<ruby>起<rt>お</rt></ruby>きる。<br>*(Hiểu rồi đấy. Tai nạn xảy ra khi đã quen.)* |
| Thức | はい、<ruby>毎日<rt>まいにち</rt></ruby><ruby>初心<rt>しょしん</rt></ruby>でやります。<br>*(Vâng, mỗi ngày em sẽ làm với tâm thế ban đầu ạ.)* |
| Tanigawa | それでいい。お<ruby>前<rt>まえ</rt></ruby>のそういうところ、<ruby>信用<rt>しんよう</rt></ruby>できる。<br>*(Thế là được. Cái điểm đó của cậu, tôi tin được.)* |
| Thức | ありがとうございます。<br>*(Cháu cảm ơn ạ.)* |

---

## Tình huống 16 — Công trường · 15:30, 先輩 dạy thêm mẹo nghề

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>解体<rt>かいたい</rt></ruby>を<ruby>速<rt>はや</rt></ruby>くやるコツはありますか?<br>*(Anh Kondo, có mẹo nào tháo dỡ nhanh không ạ?)* |
| Kondo | <ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めることだ。<ruby>上<rt>うえ</rt></ruby>から、<ruby>外<rt>そと</rt></ruby>から、と<ruby>決<rt>き</rt></ruby>めとけ。<br>*(Quyết định thứ tự. Cứ định sẵn từ trên, từ ngoài.)* |
| Thức | <ruby>速<rt>はや</rt></ruby>さより<ruby>安全<rt>あんぜん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>ですよね?<br>*(Ưu tiên an toàn hơn tốc độ phải không ạ?)* |
| Kondo | そうだ。<ruby>速<rt>はや</rt></ruby>くても<ruby>危<rt>あぶ</rt></ruby>なければ<ruby>意味<rt>いみ</rt></ruby>がない。<br>*(Đúng. Nhanh mà nguy hiểm thì vô nghĩa.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Em hiểu rồi. Em sẽ nhớ thứ tự bằng cơ thể.)* |
| Kondo | それでいい。<ruby>慣<rt>な</rt></ruby>れれば<ruby>自然<rt>しぜん</rt></ruby>に<ruby>速<rt>はや</rt></ruby>くなる。<br>*(Thế là được. Quen rồi tự nhiên sẽ nhanh.)* |

---

## Tình huống 17 — Công trường · 16:00, hướng dẫn lại một đồng nghiệp

| Vai | Lời thoại |
|---|---|
| Đồng nghiệp | トゥックさん、この<ruby>筋交<rt>すじか</rt></ruby>い、どっち<ruby>向<rt>む</rt></ruby>きですか?<br>*(Anh Thức, thanh giằng chéo này hướng nào ạ?)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てください。ここに<ruby>方向<rt>ほうこう</rt></ruby>が<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Anh xem bản vẽ ạ. Hướng viết ở đây.)* |
| Đồng nghiệp | あ、<ruby>本当<rt>ほんとう</rt></ruby>だ。<ruby>気<rt>き</rt></ruby>づかなかった。<br>*(À, đúng thật. Không để ý.)* |
| Thức | <ruby>迷<rt>まよ</rt></ruby>ったら<ruby>図面<rt>ずめん</rt></ruby>です。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>すると<ruby>危<rt>あぶ</rt></ruby>ないです。<br>*(Phân vân thì xem bản vẽ. Tự ý quyết định thì nguy hiểm.)* |
| Đồng nghiệp | ありがとう。<ruby>助<rt>たす</rt></ruby>かった。<br>*(Cảm ơn nhé. Đỡ ghê.)* |
| Thức | いえいえ。<ruby>分<rt>わ</rt></ruby>からなければまた<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Không có gì. Không hiểu thì lại hỏi nhé.)* |

---

## Tình huống 18 — Công trường · 17:00, 職長 nhận xét tổng quan

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>最近<rt>さいきん</rt></ruby><ruby>人<rt>ひと</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えるのが<ruby>上手<rt>じょうず</rt></ruby>になったな。<br>*(Thức, gần đây dạy người khác giỏi hơn nhỉ.)* |
| Thức | ありがとうございます。<ruby>自分<rt>じぶん</rt></ruby>も<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Cảm ơn anh ạ. Bản thân em cũng học được ạ.)* |
| Saito | <ruby>来月<rt>らいげつ</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しいTTSが<ruby>来<rt>く</rt></ruby>る。お<ruby>前<rt>まえ</rt></ruby>に<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てもらうかもな。<br>*(Tháng sau có TTS mới đến. Có thể nhờ cậu kèm đấy.)* |
| Thức | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>教<rt>おそ</rt></ruby>わったように<ruby>教<rt>おし</rt></ruby>えます。<br>*(Vâng, em sẽ cố gắng. Em sẽ dạy như em được dạy ạ.)* |
| Saito | いい<ruby>心構<rt>こころがま</rt></ruby>えだ。<ruby>期待<rt>きたい</rt></ruby>してる。<br>*(Tâm thế tốt đấy. Tôi kỳ vọng.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ bảo ạ.)* |

---

## Tình huống 19 — Công trường · 17:20, 親方 thông báo kết quả sơ bộ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>協会<rt>きょうかい</rt></ruby>から<ruby>連絡<rt>れんらく</rt></ruby>があった。<ruby>合格<rt>ごうかく</rt></ruby>だ。<br>*(Thức, hiệp hội liên lạc rồi. Đỗ rồi.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか!ありがとうございます。<br>*(Thật ạ! Cảm ơn chú ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>だ。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Là nỗ lực của cậu. Cố gắng tốt lắm.)* |
| Thức | <ruby>皆<rt>みな</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらったおかげです。<br>*(Nhờ mọi người chỉ bảo ạ.)* |
| Tanigawa | <ruby>謙虚<rt>けんきょ</rt></ruby>だな。これで<ruby>仕事<rt>しごと</rt></ruby>の<ruby>幅<rt>はば</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がる。<ruby>次<rt>つぎ</rt></ruby>はN3だな。<br>*(Khiêm tốn nhỉ. Thế này phạm vi việc rộng ra. Tiếp theo là N3 nhỉ.)* |
| Thức | はい、<ruby>七月<rt>しちがつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けます。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, tháng bảy em thi ạ. Em sẽ cố gắng.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói đỗ thi kỹ năng rồi à? Giỏi đấy. |
| Thức | Vâng anh, may là ôn kỹ. Hôm thi em cứ hô xác nhận từng bước như anh dặn. |
| Long | Đúng rồi, nghề tobi cái đó quan trọng nhất. An toàn trước, nhanh sau. |
| Thức | Em thấm rồi ạ. Giờ em lo phần N3 tháng bảy thôi. |
| Long | Cứ từ từ. Em qua cửa này là vững nghề rồi, N3 chỉ là việc thời gian. |
| Thức | Cảm ơn anh. Có anh động viên em đỡ căng hơn nhiều. |

---

## Đọng lại

Thức trải qua kỳ thi đánh giá kỹ năng とび một cách bài bản: làm thủ tục, xác nhận đề với giám khảo, hô xác nhận an toàn từng bước, trả lời vấn đáp lý thuyết đúng trọng tâm. Em đỗ — nhưng vẫn khiêm tốn nhận đó là nhờ mọi người chỉ bảo, và 親方 nhắc không được chủ quan vì công trường khắc nghiệt hơn phòng thi. Một bước trưởng thành vững chắc của năm thứ ba.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 受験番号 | じゅけんばんごう | Số báo danh |
> | 在留カード | ざいりゅうカード | Thẻ lưu trú |
> | 制限時間 | せいげんじかん | Thời gian giới hạn |
> | 図面 | ずめん | Bản vẽ thi công |
> | 寸法 | すんぽう | Kích thước |
> | 装着 | そうちゃく | Đeo (trang bị) |
> | ランヤード | らんやーど | Dây nối (an toàn) |
> | 根がらみ | ねがらみ | Thanh giằng chân giàn giáo |
> | 手すり | てすり | Lan can |
> | 解体 | かいたい | Tháo dỡ |
> | 口頭試問 | こうとうしもん | Vấn đáp |
> | 作業主任者 | さぎょうしゅにんしゃ | Chủ nhiệm thi công |
> | 風速 | ふうそく | Tốc độ gió |
> | 中止 | ちゅうし | Dừng (thao tác) |
> | 合格 | ごうかく | Đỗ (thi) |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000003, 800000035, NULL, 'markdown_book', 'T3. Đón thực tập sinh Việt mới (新しい実習生を迎える)', '# Sách thực tập sinh xây dựng · T3. Đón thực tập sinh Việt mới (新しい実習生を迎える)

> **Mục tiêu nhân vật:** Thức trở thành đàn anh, đón và hướng dẫn TTS Việt mới (đàn em năm 1). Học mẫu câu nghiệp vụ khi giới thiệu đàn em với 親方/職長, dẫn đi xem công trường, dạy quy tắc cơ bản, phiên dịch hỗ trợ giữa đàn em và cấp trên.

---

## Bối cảnh

Tháng 6 năm 2028. Đàn em Việt — Nam (ナムくん) — sang Nhật và vào tổ 谷川親方 từ cuối năm 2 (tháng 3/2028); sang năm 3, 親方 chính thức giao Thức phụ trách kèm cặp toàn diện. Nam tiếng Nhật còn yếu (~N5). Thức làm cầu nối: phiên dịch khi cần, dạy quy tắc an toàn cơ bản, đồng thời tập giao tiếp với cấp trên ở vai trò người chịu trách nhiệm cho đàn em. Chương này tập trung mẫu câu khi làm đàn anh.

---

## Tình huống 1 — Văn phòng công trường · 8:00, 親方 giao nhiệm vụ kèm cặp

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>来週<rt>らいしゅう</rt></ruby><ruby>新<rt>あたら</rt></ruby>しいベトナム<ruby>人<rt>じん</rt></ruby>のTTSが<ruby>来<rt>く</rt></ruby>る。お<ruby>前<rt>まえ</rt></ruby>が<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>ろ。<br>*(Thức, tuần sau có TTS người Việt mới đến. Cậu kèm đi.)* |
| Thức | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>何<rt>なに</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えればいいですか?<br>*(Vâng, cháu hiểu rồi. Cháu nên dạy những gì ạ?)* |
| Tanigawa | まずは<ruby>安全<rt>あんぜん</rt></ruby>と<ruby>挨拶<rt>あいさつ</rt></ruby>だ。<ruby>仕事<rt>しごと</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>しずつでいい。<br>*(Trước hết là an toàn và chào hỏi. Công việc thì từ từ.)* |
| Thức | <ruby>言葉<rt>ことば</rt></ruby>がまだできないので、<ruby>通訳<rt>つうやく</rt></ruby>もしますね。<br>*(Em ấy chưa nói được tiếng nên cháu sẽ phiên dịch nữa ạ.)* |
| Tanigawa | <ruby>頼<rt>たの</rt></ruby>む。お<ruby>前<rt>まえ</rt></ruby>も<ruby>一<rt>いち</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>だっただろう。<br>*(Nhờ đấy. Cậu năm đầu cũng vất vả nhỉ.)* |
| Thức | はい、だから<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かります。しっかり<ruby>教<rt>おし</rt></ruby>えます。<br>*(Vâng, nên cháu hiểu tâm trạng. Cháu sẽ dạy tử tế ạ.)* |

---

## Tình huống 2 — Cổng công trường · ngày đầu 7:50, đón đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、おはよう。<ruby>緊張<rt>きんちょう</rt></ruby>してる?<br>*(Nam, chào buổi sáng. Em hồi hộp không?)* |
| Nam | はい、すごく<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Vâng, em hồi hộp lắm ạ.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じだった。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>いて。<br>*(Không sao. Anh cũng từng vậy. Không hiểu gì cứ hỏi anh.)* |
| Nam | はい、ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cảm ơn anh ạ. Mong anh chỉ bảo ạ.)* |
| Thức | まず<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>自己<rt>じこ</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby>する。<ruby>練習<rt>れんしゅう</rt></ruby>した?<br>*(Trước hết tự giới thiệu ở họp sáng. Em luyện chưa?)* |
| Nam | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Vâng, em luyện một chút rồi ạ.)* |

---

## Tình huống 3 — Họp sáng · 8:00, giới thiệu đàn em với cả tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>今日<rt>きょう</rt></ruby>から<ruby>新<rt>あたら</rt></ruby>しい<ruby>仲間<rt>なかま</rt></ruby>だ。トゥック、<ruby>紹介<rt>しょうかい</rt></ruby>してくれ。<br>*(Từ hôm nay có thành viên mới. Thức, giới thiệu đi.)* |
| Thức | はい。こちらナムくんです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<ruby>今日<rt>きょう</rt></ruby>から<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>きます。<br>*(Vâng. Đây là Nam. Đến từ Việt Nam. Từ hôm nay làm việc cùng ạ.)* |
| Nam | はじめまして。ナムです。<ruby>頑張<rt>がんば</rt></ruby>ります。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh. Em là Nam. Em sẽ cố gắng. Mong mọi người chỉ bảo ạ.)* |
| Kondo | よろしくな。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>聞<rt>き</rt></ruby>けよ。<br>*(Mong em nhé. Không hiểu gì thì hỏi.)* |
| Thức | (nói nhỏ với Nam) 「よろしくお<ruby>願<rt>ねが</rt></ruby>いします」だけ<ruby>言<rt>い</rt></ruby>えれば<ruby>十分<rt>じゅうぶん</rt></ruby>だよ。<br>*(Nói được "Mong mọi người chỉ bảo" là đủ rồi.)* |
| Nam | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |

---

## Tình huống 4 — Lán nghỉ · 8:15, dạy quy tắc trang bị bảo hộ

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、まずヘルメット。あごひもをちゃんと<ruby>締<rt>し</rt></ruby>める。<br>*(Nam, trước hết mũ bảo hộ. Phải buộc chặt quai cằm.)* |
| Nam | こうですか?<br>*(Thế này ạ?)* |
| Thức | そう。ゆるいと<ruby>危<rt>あぶ</rt></ruby>ない。<ruby>次<rt>つぎ</rt></ruby>はフルハーネス。<br>*(Đúng. Lỏng thì nguy hiểm. Tiếp theo là dây an toàn toàn thân.)* |
| Nam | これは<ruby>難<rt>むずか</rt></ruby>しいです。<br>*(Cái này khó ạ.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>はみんなそう。<ruby>毎日<rt>まいにち</rt></ruby>やれば<ruby>慣<rt>な</rt></ruby>れる。<ruby>俺<rt>おれ</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>てる。<br>*(Lúc đầu ai cũng vậy. Làm mỗi ngày sẽ quen. Anh đứng bên cạnh xem cho.)* |
| Nam | はい、ゆっくり<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Vâng, em sẽ từ từ học ạ.)* |

---

## Tình huống 5 — Công trường · 8:40, dẫn đàn em đi xem hiện trường

| Vai | Lời thoại |
|---|---|
| Thức | ここが<ruby>現場<rt>げんば</rt></ruby>だ。あれが<ruby>俺<rt>おれ</rt></ruby>たちが<ruby>組<rt>く</rt></ruby>む<ruby>足場<rt>あしば</rt></ruby>。<br>*(Đây là công trường. Kia là giàn giáo bọn mình dựng.)* |
| Nam | <ruby>高<rt>たか</rt></ruby>いですね。<ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Cao nhỉ. Em sợ ạ.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>怖<rt>こわ</rt></ruby>くて<ruby>当然<rt>とうぜん</rt></ruby>だ。<ruby>無理<rt>むり</rt></ruby>はしなくていい。<br>*(Lúc đầu sợ là đương nhiên. Không cần làm quá sức.)* |
| Nam | <ruby>上<rt>うえ</rt></ruby>ですぐ<ruby>仕事<rt>しごと</rt></ruby>しますか?<br>*(Em phải làm việc trên cao ngay ạ?)* |
| Thức | いや、まずは<ruby>下<rt>した</rt></ruby>で<ruby>材料<rt>ざいりょう</rt></ruby><ruby>運<rt>はこ</rt></ruby>びから。<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えればいい。<br>*(Không, trước hết khuân vật liệu ở dưới. Cứ học theo thứ tự.)* |
| Nam | はい、<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Vâng, em yên tâm rồi ạ.)* |

---

## Tình huống 6 — Công trường · 9:00, 職長 dặn dò qua Thức

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ナムくんに<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby><ruby>区域<rt>くいき</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えたか?<br>*(Thức, đã chỉ Nam khu vực cấm vào chưa?)* |
| Thức | これから<ruby>教<rt>おし</rt></ruby>えます。(quay sang Nam) あの<ruby>赤<rt>あか</rt></ruby>いテープの<ruby>中<rt>なか</rt></ruby>、<ruby>入<rt>はい</rt></ruby>っちゃだめ。<br>*(Cháu sắp chỉ ạ. Bên trong dây băng đỏ kia, không được vào.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>危険<rt>きけん</rt></ruby>ですか?<br>*(Em hiểu rồi. Nguy hiểm ạ?)* |
| Thức | そう、<ruby>上<rt>うえ</rt></ruby>から<ruby>物<rt>もの</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちるかもしれない。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>入<rt>はい</rt></ruby>らない。<br>*(Đúng, có thể có vật rơi từ trên xuống. Tuyệt đối không vào.)* |
| Saito | しっかり<ruby>説明<rt>せつめい</rt></ruby>できてるな。いいぞ。<br>*(Giải thích kỹ đấy. Tốt.)* |
| Thức | ありがとうございます。<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し<ruby>教<rt>おし</rt></ruby>えます。<br>*(Cảm ơn anh ạ. Cháu sẽ dạy lặp lại nhiều lần.)* |

---

## Tình huống 7 — Khu vật tư · 9:30, dạy đàn em khuân vật liệu an toàn

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>単管<rt>たんかん</rt></ruby>パイプは<ruby>腰<rt>こし</rt></ruby>で<ruby>持<rt>も</rt></ruby>つ。<ruby>背中<rt>せなか</rt></ruby>を<ruby>丸<rt>まる</rt></ruby>めない。<br>*(Nam, ống đơn nâng bằng hông. Không khom lưng.)* |
| Nam | こうですか?<br>*(Thế này ạ?)* |
| Thức | もう<ruby>少<rt>すこ</rt></ruby>し<ruby>膝<rt>ひざ</rt></ruby>を<ruby>曲<rt>ま</rt></ruby>げて。<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めるよ。<br>*(Gập gối thêm chút. Không là đau lưng đấy.)* |
| Nam | あ、<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(À, đỡ hơn rồi ạ.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>して<ruby>一人<rt>ひとり</rt></ruby>で<ruby>持<rt>も</rt></ruby>たない。<ruby>重<rt>おも</rt></ruby>かったら<ruby>呼<rt>よ</rt></ruby>んで。<br>*(Đừng gắng một mình. Nặng thì gọi anh.)* |
| Nam | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi ạ.)* |

---

## Tình huống 8 — Lán nghỉ · 10:00, đàn em hỏi điều chưa hiểu

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>朝礼<rt>ちょうれい</rt></ruby>で「<ruby>ご安全<rt>ごあんぜん</rt></ruby>に」って<ruby>言<rt>い</rt></ruby>ってました。<ruby>意味<rt>いみ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Thức, ở họp sáng họ nói "go-anzen-ni". Nghĩa là gì ạ?)* |
| Thức | <ruby>建設<rt>けんせつ</rt></ruby>の<ruby>挨拶<rt>あいさつ</rt></ruby>だよ。「<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて」って<ruby>意味<rt>いみ</rt></ruby>。<br>*(Là câu chào trong xây dựng. Nghĩa là "chú ý an toàn".)* |
| Nam | いつ<ruby>言<rt>い</rt></ruby>えばいいですか?<br>*(Khi nào thì nói ạ?)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>と、<ruby>現場<rt>げんば</rt></ruby>で<ruby>人<rt>ひと</rt></ruby>に<ruby>会<rt>あ</rt></ruby>ったとき。<ruby>言<rt>い</rt></ruby>ってみて。<br>*(Buổi sáng, và khi gặp người ở công trường. Em nói thử đi.)* |
| Nam | ご<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Go-anzen-ni.)* |
| Thức | いいね。それでばっちりだ。<br>*(Tốt đấy. Thế là chuẩn rồi.)* |

---

## Tình huống 9 — Công trường · 10:30, 先輩 quan sát Thức dạy

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、お<ruby>前<rt>まえ</rt></ruby><ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>が<ruby>丁寧<rt>ていねい</rt></ruby>だな。<br>*(Thức, cách dạy của cậu cẩn thận nhỉ.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>が<ruby>苦労<rt>くろう</rt></ruby>したので、<ruby>分<rt>わ</rt></ruby>かりやすく<ruby>教<rt>おし</rt></ruby>えたいです。<br>*(Vì em từng vất vả nên muốn dạy dễ hiểu ạ.)* |
| Kondo | いいことだ。でも<ruby>甘<rt>あま</rt></ruby>やかすなよ。<ruby>危<rt>あぶ</rt></ruby>ないことは<ruby>厳<rt>きび</rt></ruby>しく<ruby>言<rt>い</rt></ruby>え。<br>*(Tốt đấy. Nhưng đừng nuông chiều. Chuyện nguy hiểm phải nói nghiêm.)* |
| Thức | はい。<ruby>安全<rt>あんぜん</rt></ruby>のことは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>妥協<rt>だきょう</rt></ruby>しません。<br>*(Vâng. Chuyện an toàn em tuyệt đối không nhân nhượng ạ.)* |
| Kondo | それでいい。<ruby>優<rt>やさ</rt></ruby>しさと<ruby>厳<rt>きび</rt></ruby>しさ、<ruby>両方<rt>りょうほう</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>だ。<br>*(Thế là được. Vừa hiền vừa nghiêm, cần cả hai.)* |
| Thức | <ruby>勉強<rt>べんきょう</rt></ruby>になります。ありがとうございます。<br>*(Em học được ạ. Cảm ơn anh.)* |

---

## Tình huống 10 — Lán nghỉ · 12:00, trò chuyện tiếng Việt với đàn em

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, em lo quá. Tiếng Nhật em kém, sợ làm phiền mọi người. |
| Thức | Anh năm đầu cũng y hệt. Quan trọng là chịu khó, mọi người sẽ thông cảm. |
| Nam | Anh có bí quyết học tiếng không ạ? |
| Thức | Mỗi ngày học từ ngay tại công trường, ghi vào sổ tay. Từ nghề nhớ nhanh lắm. |
| Nam | Vâng, em sẽ làm theo. Cảm ơn anh nhiều. |
| Thức | Có gì cứ hỏi anh. Mình người Việt với nhau, đừng ngại. |

---

## Tình huống 11 — Công trường · 13:00, dạy đàn em chào hỏi cấp trên

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>親方<rt>おやかた</rt></ruby>に<ruby>会<rt>あ</rt></ruby>ったら<ruby>何<rt>なん</rt></ruby>て<ruby>言<rt>い</rt></ruby>う?<br>*(Nam, gặp 親方 thì nói gì?)* |
| Nam | おはようございます?<br>*(Chào buổi sáng ạ?)* |
| Thức | <ruby>朝<rt>あさ</rt></ruby>はそれ。<ruby>昼<rt>ひる</rt></ruby>からは「お<ruby>疲<rt>つか</rt></ruby>れさまです」だ。<br>*(Sáng thì câu đó. Từ trưa là "ot-sukaresama-desu".)* |
| Nam | お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Ot-sukaresama-desu.)* |
| Thức | そう。<ruby>声<rt>こえ</rt></ruby>を<ruby>大<rt>おお</rt></ruby>きく、<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>言<rt>い</rt></ruby>う。それが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Đúng. Nói to, nhìn mặt mà nói. Cái đó quan trọng.)* |
| Nam | はい、<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Vâng, em sẽ luyện ạ.)* |

---

## Tình huống 12 — Công trường · 14:00, đàn em mắc lỗi nhỏ, Thức sửa nhẹ nhàng

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、その<ruby>工具<rt>こうぐ</rt></ruby>、<ruby>置<rt>お</rt></ruby>きっぱなしだよ。<br>*(Nam, cái dụng cụ đó để bừa kìa.)* |
| Nam | あ、すみません!<br>*(À, em xin lỗi!)* |
| Thức | <ruby>怒<rt>おこ</rt></ruby>ってないよ。<ruby>足場<rt>あしば</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>だと<ruby>落<rt>お</rt></ruby>ちたら<ruby>大<rt>おお</rt></ruby><ruby>事故<rt>じこ</rt></ruby>になる。<br>*(Anh không giận đâu. Trên giàn giáo mà rơi thì thành tai nạn lớn.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>使<rt>つか</rt></ruby>ったらすぐ<ruby>戻<rt>もど</rt></ruby>します。<br>*(Em hiểu rồi. Dùng xong em trả ngay ạ.)* |
| Thức | そう。それを<ruby>習慣<rt>しゅうかん</rt></ruby>にすれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>忘<rt>わす</rt></ruby>れる。<br>*(Đúng. Thành thói quen là ổn. Ai đầu cũng hay quên.)* |
| Nam | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em sẽ chú ý ạ.)* |

---

## Tình huống 13 — Công trường · 15:00, phiên dịch chỉ thị của 職長

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ナムくんに<ruby>明日<rt>あした</rt></ruby>の<ruby>持<rt>も</rt></ruby>ち<ruby>物<rt>もの</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えてくれ。<br>*(Thức, báo cho Nam đồ cần mang ngày mai.)* |
| Thức | はい。<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか?<br>*(Vâng. Cần những gì ạ?)* |
| Saito | <ruby>安全<rt>あんぜん</rt></ruby><ruby>靴<rt>ぐつ</rt></ruby>と<ruby>手袋<rt>てぶくろ</rt></ruby>。あと<ruby>水分<rt>すいぶん</rt></ruby>を<ruby>多<rt>おお</rt></ruby>めに。<br>*(Giày bảo hộ và găng tay. Còn nước uống mang nhiều.)* |
| Thức | (quay sang Nam, tiếng Việt nhanh) Mai mang giày bảo hộ, găng tay, nước nhiều vào nhé. (quay lại Saito) <ruby>伝<rt>つた</rt></ruby>えました。<br>*(...Đã truyền đạt ạ.)* |
| Saito | <ruby>助<rt>たす</rt></ruby>かる。<ruby>通訳<rt>つうやく</rt></ruby>がいると<ruby>安心<rt>あんしん</rt></ruby>だ。<br>*(Đỡ ghê. Có phiên dịch thì yên tâm.)* |
| Thức | いえ、<ruby>当然<rt>とうぜん</rt></ruby>のことです。<br>*(Dạ không, là việc đương nhiên ạ.)* |

---

## Tình huống 14 — Lán nghỉ · 16:00, đàn em báo cáo tiến bộ

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>今日<rt>きょう</rt></ruby>「ご<ruby>安全<rt>あんぜん</rt></ruby>に」を<ruby>三回<rt>さんかい</rt></ruby><ruby>言<rt>い</rt></ruby>えました。<br>*(Anh Thức, hôm nay em nói được "go-anzen-ni" ba lần ạ.)* |
| Thức | おお、いいね!みんな<ruby>返事<rt>へんじ</rt></ruby>してくれた?<br>*(Ồ, tốt đấy! Mọi người có đáp lại không?)* |
| Nam | はい、<ruby>近藤<rt>こんどう</rt></ruby>さんが<ruby>笑<rt>わら</rt></ruby>って<ruby>返<rt>かえ</rt></ruby>してくれました。<br>*(Vâng, anh Kondo cười đáp lại em ạ.)* |
| Thức | それは<ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れられてる<ruby>証拠<rt>しょうこ</rt></ruby>だ。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Đó là dấu hiệu được chấp nhận đấy. Cố gắng tốt lắm.)* |
| Nam | ありがとうございます。<ruby>少<rt>すこ</rt></ruby>し<ruby>自信<rt>じしん</rt></ruby>がつきました。<br>*(Cảm ơn anh ạ. Em tự tin hơn một chút rồi.)* |
| Thức | その<ruby>調子<rt>ちょうし</rt></ruby>。<ruby>一日<rt>いちにち</rt></ruby><ruby>一<rt>ひと</rt></ruby>つでいい。<br>*(Cứ đà đó. Một ngày một cái là được.)* |

---

## Tình huống 15 — Công trường · 16:30, 親方 hỏi tình hình đàn em

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、ナムくんはどうだ?<br>*(Thức, Nam thế nào?)* |
| Thức | まじめです。<ruby>言<rt>い</rt></ruby>われたことはちゃんとやります。<br>*(Em ấy chăm chỉ. Cái gì bảo đều làm đúng ạ.)* |
| Tanigawa | <ruby>言葉<rt>ことば</rt></ruby>は?<br>*(Tiếng thì sao?)* |
| Thức | まだ<ruby>少<rt>すこ</rt></ruby>しですが、<ruby>挨拶<rt>あいさつ</rt></ruby>はできるようになりました。<br>*(Vẫn còn ít, nhưng chào hỏi thì làm được rồi ạ.)* |
| Tanigawa | <ruby>順調<rt>じゅんちょう</rt></ruby>だな。お<ruby>前<rt>まえ</rt></ruby>の<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がいいんだろう。<br>*(Thuận lợi nhỉ. Chắc cách dạy của cậu tốt.)* |
| Thức | ありがとうございます。<ruby>焦<rt>あせ</rt></ruby>らず<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Cảm ơn chú ạ. Cháu sẽ kèm không vội ạ.)* |

---

## Tình huống 16 — Công trường · 8:30, dạy đàn em quan sát xung quanh

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>歩<rt>ある</rt></ruby>くときは<ruby>上<rt>うえ</rt></ruby>も<ruby>見<rt>み</rt></ruby>る。<ruby>分<rt>わ</rt></ruby>かる?<br>*(Nam, khi đi cũng nhìn lên trên. Hiểu không?)* |
| Nam | どうしてですか?<br>*(Tại sao ạ?)* |
| Thức | <ruby>上<rt>うえ</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>してると、<ruby>物<rt>もの</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちることがある。<ruby>頭上<rt>ずじょう</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>だ。<br>*(Trên có người làm, có thể vật rơi xuống. Chú ý phía trên đầu.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>歩<rt>ある</rt></ruby>くとき<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em hiểu rồi. Khi đi em sẽ chú ý ạ.)* |
| Thức | あと「<ruby>指差<rt>ゆびさ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>」も<ruby>覚<rt>おぼ</rt></ruby>えよう。<ruby>指<rt>ゆび</rt></ruby>でさして<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す。<br>*(Còn nữa, học cả "chỉ tay xác nhận". Chỉ tay rồi đọc to.)* |
| Nam | はい、やってみます。<br>*(Vâng, em thử ạ.)* |

---

## Tình huống 17 — Lán nghỉ · 12:30, 先輩 cho lời khuyên về làm đàn anh

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>後輩<rt>こうはい</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じミスを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>すとき、どうしますか?<br>*(Anh Kondo, khi đàn em lặp lỗi giống nhau, anh làm sao ạ?)* |
| Kondo | <ruby>怒<rt>おこ</rt></ruby>るより、なぜ<ruby>間違<rt>まちが</rt></ruby>えるか<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>える。<br>*(Hơn là nổi giận, cùng nghĩ xem vì sao sai.)* |
| Thức | <ruby>原因<rt>げんいん</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけるんですね。<br>*(Tìm nguyên nhân nhỉ.)* |
| Kondo | そうだ。やり<ruby>方<rt>かた</rt></ruby>を<ruby>変<rt>か</rt></ruby>えれば<ruby>直<rt>なお</rt></ruby>ることが<ruby>多<rt>おお</rt></ruby>い。<br>*(Đúng. Đổi cách làm thì thường sửa được.)* |
| Thức | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<ruby>俺<rt>おれ</rt></ruby>も<ruby>怒<rt>おこ</rt></ruby>らないようにします。<br>*(Em học được ạ. Em cũng cố không nổi giận.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>好<rt>す</rt></ruby>かれてる。<br>*(Cậu thì ổn thôi. Đàn em quý đấy.)* |

---

## Tình huống 18 — Công trường · 14:30, đàn em lần đầu lên giàn giáo thấp

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>低<rt>ひく</rt></ruby>い<ruby>段<rt>だん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がってみよう。フックは<ruby>必<rt>かなら</rt></ruby>ずかける。<br>*(Nam, hôm nay thử lên tầng thấp. Móc khóa nhất định phải gài.)* |
| Nam | はい。<ruby>怖<rt>こわ</rt></ruby>いですが、やります。<br>*(Vâng. Sợ nhưng em làm ạ.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>しない。<ruby>怖<rt>こわ</rt></ruby>かったら<ruby>止<rt>と</rt></ruby>まっていい。<ruby>俺<rt>おれ</rt></ruby>が<ruby>下<rt>した</rt></ruby>で<ruby>見<rt>み</rt></ruby>てる。<br>*(Đừng gắng. Sợ thì dừng lại được. Anh đứng dưới xem.)* |
| Nam | (lên một bước) ……<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(...Em ổn ạ.)* |
| Thức | いいぞ。フック、もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(Tốt. Móc khóa, kiểm tra lại một lần nữa.)* |
| Nam | フック、かかっています。<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Móc khóa, đã gài. Em đã kiểm tra ạ.)* |

---

## Tình huống 19 — Công trường · 17:00, 親方 khen tiến bộ chung

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、ナムくん、<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>今日<rt>きょう</rt></ruby>はよくやった。<br>*(Thức, Nam, hai đứa hôm nay làm tốt.)* |
| Thức | ありがとうございます。ナムくんも<ruby>頑張<rt>がんば</rt></ruby>りました。<br>*(Cảm ơn chú ạ. Nam cũng cố gắng ạ.)* |
| Nam | ありがとうございます。トゥックさんが<ruby>教<rt>おし</rt></ruby>えてくれました。<br>*(Cảm ơn chú ạ. Anh Thức đã dạy em.)* |
| Tanigawa | いいチームだ。トゥック、お<ruby>前<rt>まえ</rt></ruby>も<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Đội tốt đấy. Thức, cậu cũng trưởng thành rồi.)* |
| Thức | <ruby>教<rt>おし</rt></ruby>えることで<ruby>自分<rt>じぶん</rt></ruby>も<ruby>学<rt>まな</rt></ruby>びます。<br>*(Qua việc dạy bản thân cháu cũng học ạ.)* |
| Tanigawa | その<ruby>気持<rt>きも</rt></ruby>ちを<ruby>忘<rt>わす</rt></ruby>れるな。<br>*(Đừng quên cái tâm thế đó.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, làm anh kèm đàn em thấy thế nào? |
| Thức | Vất hơn em tưởng anh ạ. Phải vừa làm vừa để mắt cậu ấy liên tục. |
| Long | Đúng đấy. Nhưng kèm được một đứa nên người là mình cũng lớn lên. |
| Thức | Em nhớ hồi anh kèm em năm đầu. Giờ em mới hiểu anh kiên nhẫn cỡ nào. |
| Long | Ha ha, rồi em cũng sẽ thành đàn anh giỏi. Cứ như em đang làm là được. |
| Thức | Cảm ơn anh. Em sẽ cố để Nam vững như em ngày xưa. |

---

## Đọng lại

Thức chính thức bước vào vai đàn anh: đón Nam, giới thiệu với cả tổ, dạy quy tắc an toàn và chào hỏi, phiên dịch giữa đàn em và cấp trên. Em dạy nhẹ nhàng nhưng nghiêm với an toàn, được 親方 và 先輩 ghi nhận. Qua việc kèm cặp, Thức tự thấy mình trưởng thành — đúng như anh Long từng làm với em ngày xưa.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 実習生 | じっしゅうせい | Thực tập sinh |
> | 面倒を見る | めんどうをみる | Kèm cặp, chăm lo |
> | 通訳 | つうやく | Phiên dịch |
> | 自己紹介 | じこしょうかい | Tự giới thiệu |
> | あごひも | あごひも | Quai cằm (mũ bảo hộ) |
> | 立入禁止区域 | たちいりきんしくいき | Khu vực cấm vào |
> | ご安全に | ごあんぜんに | Câu chào "chú ý an toàn" (ngành xây dựng) |
> | 頭上注意 | ずじょうちゅうい | Chú ý phía trên đầu |
> | 指差確認 | ゆびさかくにん | Chỉ tay xác nhận |
> | 安全靴 | あんぜんぐつ | Giày bảo hộ |
> | 手袋 | てぶくろ | Găng tay |
> | フック | ふっく | Móc khóa (dây an toàn) |
> | 習慣 | しゅうかん | Thói quen |
> | 妥協 | だきょう | Nhân nhượng, thỏa hiệp |
> | 成長 | せいちょう | Trưởng thành |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000004, 800000035, NULL, 'markdown_book', 'T4. Dạy an toàn cho đàn em (後輩への安全指導)', '# Sách thực tập sinh xây dựng · T4. Dạy an toàn cho đàn em (後輩への安全指導)

> **Mục tiêu nhân vật:** Thức dạy an toàn bài bản cho đàn em Nam. Học mẫu câu nghiệp vụ khi hướng dẫn KY (dự đoán nguy hiểm), kiểm tra trang bị, giảng giải quy tắc làm việc trên cao, báo cáo với 職長 về tình hình an toàn của đàn em.

---

## Bối cảnh

Tháng 7 năm 2028. Nam đã quen công trường được một tháng, bắt đầu lên giàn giáo. 谷川親方 yêu cầu Thức dạy an toàn kỹ hơn cho đàn em — đây là giai đoạn dễ tai nạn nhất vì TTS năm 1 vừa hết bỡ ngỡ, dễ chủ quan. Chương này tập trung mẫu câu chỉ dẫn an toàn: KY buổi sáng, kiểm tra dây an toàn, "ba điểm cố định", quy tắc 5S, báo cáo an toàn lên cấp trên.

---

## Tình huống 1 — Lán nghỉ · 7:45, dạy đàn em làm KY buổi sáng

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>今日<rt>きょう</rt></ruby>のKYをやろう。<ruby>今日<rt>きょう</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う?<br>*(Nam, làm KY hôm nay nào. Em nghĩ nguy hiểm hôm nay là gì?)* |
| Nam | <ruby>雨<rt>あめ</rt></ruby>で<ruby>足場<rt>あしば</rt></ruby>が<ruby>滑<rt>すべ</rt></ruby>ることですか?<br>*(Mưa làm giàn giáo trơn ạ?)* |
| Thức | いいね、その<ruby>通<rt>とお</rt></ruby>り。じゃあ、<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Tốt, đúng vậy. Vậy biện pháp là gì?)* |
| Nam | ゆっくり<ruby>歩<rt>ある</rt></ruby>く、<ruby>手<rt>て</rt></ruby>すりを<ruby>持<rt>も</rt></ruby>つ?<br>*(Đi chậm, bám lan can ạ?)* |
| Thức | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>危険<rt>きけん</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけて、<ruby>対策<rt>たいさく</rt></ruby>を<ruby>言<rt>い</rt></ruby>う。これがKYだ。<br>*(Chính xác. Tìm nguy hiểm, nói biện pháp. Đó là KY.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>考<rt>かんが</rt></ruby>えます。<br>*(Em hiểu rồi. Mỗi sáng em sẽ nghĩ ạ.)* |

---

## Tình huống 2 — Lán nghỉ · 7:55, kiểm tra dây an toàn cùng đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、フルハーネスを<ruby>点検<rt>てんけん</rt></ruby>しよう。ベルトに<ruby>傷<rt>きず</rt></ruby>はない?<br>*(Nam, kiểm tra dây an toàn nào. Đai có vết xước không?)* |
| Nam | (xem) ……ありません。<br>*(...Không có ạ.)* |
| Thức | バックルはしっかりはまる?<ruby>音<rt>おと</rt></ruby>がするまで<ruby>押<rt>お</rt></ruby>す。<br>*(Khóa gài chắc không? Ấn đến khi có tiếng.)* |
| Nam | カチッと<ruby>音<rt>おと</rt></ruby>がしました。<br>*(Có tiếng "cách" ạ.)* |
| Thức | それでOK。<ruby>毎日<rt>まいにち</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>点検<rt>てんけん</rt></ruby>。<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>道具<rt>どうぐ</rt></ruby>だから。<br>*(Thế là OK. Mỗi ngày phải kiểm tra. Vì là dụng cụ giữ mạng sống.)* |
| Nam | はい、<ruby>絶対<rt>ぜったい</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Vâng, em tuyệt đối không quên ạ.)* |

---

## Tình huống 3 — Công trường · 8:30, dạy quy tắc "luôn móc khóa"

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>足場<rt>あしば</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>では<ruby>必<rt>かなら</rt></ruby>ずフックをかける。「<ruby>常時<rt>じょうじ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>」だ。<br>*(Nam, trên giàn giáo phải luôn gài móc. "Dùng liên tục".)* |
| Nam | <ruby>移動<rt>いどう</rt></ruby>するときも、ですか?<br>*(Khi di chuyển cũng vậy ạ?)* |
| Thức | そうだ。<ruby>移動<rt>いどう</rt></ruby>のときは<ruby>二<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>のフックを<ruby>交互<rt>こうご</rt></ruby>にかける。<br>*(Đúng. Khi di chuyển gài hai móc luân phiên.)* |
| Nam | <ruby>片方<rt>かたほう</rt></ruby>ずつ<ruby>外<rt>はず</rt></ruby>すんですね。<br>*(Tháo từng cái một nhỉ.)* |
| Thức | そう。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>両方<rt>りょうほう</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>に<ruby>外<rt>はず</rt></ruby>さない。それが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Đúng. Tuyệt đối không tháo cả hai cùng lúc. Cái đó giữ mạng.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>常<rt>つね</rt></ruby>に<ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>はかけます。<br>*(Em hiểu rồi. Lúc nào cũng gài một cái ạ.)* |

---

## Tình huống 4 — Công trường · 9:00, dạy "ba điểm cố định" khi leo

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>昇降<rt>しょうこう</rt></ruby>するとき「<ruby>三点<rt>さんてん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>」を<ruby>守<rt>まも</rt></ruby>る。<br>*(Nam, khi lên xuống giữ "ba điểm tựa".)* |
| Nam | <ruby>三点<rt>さんてん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>って<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Ba điểm tựa là gì ạ?)* |
| Thức | <ruby>手<rt>て</rt></ruby>と<ruby>足<rt>あし</rt></ruby>、<ruby>四<rt>よっ</rt></ruby>つのうち<ruby>三<rt>みっ</rt></ruby>つは<ruby>常<rt>つね</rt></ruby>にかける。<ruby>一<rt>ひと</rt></ruby>つだけ<ruby>動<rt>うご</rt></ruby>かす。<br>*(Tay và chân, bốn cái thì ba cái luôn bám. Chỉ di chuyển một cái.)* |
| Nam | <ruby>両手<rt>りょうて</rt></ruby>を<ruby>離<rt>はな</rt></ruby>さない、ということですね。<br>*(Tức là không buông cả hai tay nhỉ.)* |
| Thức | その<ruby>通<rt>とお</rt></ruby>り。<ruby>物<rt>もの</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>昇<rt>のぼ</rt></ruby>らない。<ruby>道具<rt>どうぐ</rt></ruby>は<ruby>袋<rt>ふくろ</rt></ruby>に<ruby>入<rt>い</rt></ruby>れる。<br>*(Đúng vậy. Không cầm đồ mà leo. Dụng cụ cho vào túi.)* |
| Nam | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, em chú ý ạ.)* |

---

## Tình huống 5 — Công trường · 9:30, 職長 kiểm tra việc dạy của Thức

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ナムくんに<ruby>何<rt>なに</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えた?<br>*(Thức, đã dạy Nam cái gì?)* |
| Thức | <ruby>今日<rt>きょう</rt></ruby>は<ruby>三点<rt>さんてん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>とフックの<ruby>常時<rt>じょうじ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>です。<br>*(Hôm nay là ba điểm tựa và dùng móc liên tục ạ.)* |
| Saito | いいぞ。<ruby>実際<rt>じっさい</rt></ruby>にやらせて<ruby>確認<rt>かくにん</rt></ruby>したか?<br>*(Tốt. Đã cho làm thực tế để xác nhận chưa?)* |
| Thức | はい、<ruby>低<rt>ひく</rt></ruby>い<ruby>段<rt>だん</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>させました。<br>*(Vâng, cháu cho luyện ở tầng thấp ạ.)* |
| Saito | それが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>口<rt>くち</rt></ruby>だけじゃ<ruby>身<rt>み</rt></ruby>につかない。<br>*(Cái đó quan trọng. Chỉ nói miệng thì không thấm.)* |
| Thức | はい、<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えさせます。<br>*(Vâng, cháu sẽ cho học bằng cơ thể ạ.)* |

---

## Tình huống 6 — Công trường · 10:00, dạy quy tắc 5S

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、「<ruby>5<rt>ご</rt></ruby>S」を<ruby>知<rt>し</rt></ruby>ってる?<br>*(Nam, biết "5S" không?)* |
| Nam | <ruby>聞<rt>き</rt></ruby>いたことがありますが、よく<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Em nghe rồi nhưng chưa rõ ạ.)* |
| Thức | <ruby>整理<rt>せいり</rt></ruby>、<ruby>整頓<rt>せいとん</rt></ruby>、<ruby>清掃<rt>せいそう</rt></ruby>、<ruby>清潔<rt>せいけつ</rt></ruby>、<ruby>躾<rt>しつけ</rt></ruby>。<ruby>現場<rt>げんば</rt></ruby>を<ruby>片付<rt>かたづ</rt></ruby>けることだ。<br>*(Sàng lọc, sắp xếp, sạch sẽ, săn sóc, sẵn sàng. Là dọn dẹp công trường.)* |
| Nam | <ruby>安全<rt>あんぜん</rt></ruby>と<ruby>関係<rt>かんけい</rt></ruby>あるんですか?<br>*(Có liên quan đến an toàn ạ?)* |
| Thức | <ruby>大<rt>おお</rt></ruby>ありだ。<ruby>散<rt>ち</rt></ruby>らかってると<ruby>躓<rt>つまず</rt></ruby>く。<ruby>片付<rt>かたづ</rt></ruby>けは<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>。<br>*(Liên quan lắm. Bừa bộn thì vấp. Dọn dẹp là cơ bản của an toàn.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>使<rt>つか</rt></ruby>ったら<ruby>片付<rt>かたづ</rt></ruby>けます。<br>*(Em hiểu rồi. Dùng xong em dọn ạ.)* |

---

## Tình huống 7 — Công trường · 10:30, đàn em hỏi tình huống nguy hiểm

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>上<rt>うえ</rt></ruby>から<ruby>声<rt>こえ</rt></ruby>が<ruby>聞<rt>き</rt></ruby>こえたらどうしますか?<br>*(Anh Thức, nếu nghe tiếng la từ trên thì làm sao ạ?)* |
| Thức | いい<ruby>質問<rt>しつもん</rt></ruby>だ。「<ruby>下<rt>した</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない!」と<ruby>聞<rt>き</rt></ruby>こえたら、すぐ<ruby>離<rt>はな</rt></ruby>れる。<br>*(Câu hỏi hay. Nghe "phía dưới nguy hiểm!" thì lập tức tránh xa.)* |
| Nam | <ruby>逃<rt>に</rt></ruby>げる<ruby>方向<rt>ほうこう</rt></ruby>は?<br>*(Hướng chạy là?)* |
| Thức | <ruby>真上<rt>まうえ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ないで、<ruby>建物<rt>たてもの</rt></ruby><ruby>側<rt>がわ</rt></ruby>に<ruby>寄<rt>よ</rt></ruby>る。<ruby>頭<rt>あたま</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Đừng nhìn thẳng lên, nép vào phía tòa nhà. Che đầu.)* |
| Nam | <ruby>覚<rt>おぼ</rt></ruby>えました。すぐ<ruby>動<rt>うご</rt></ruby>けるようにします。<br>*(Em nhớ rồi. Em sẽ luôn sẵn sàng phản ứng nhanh.)* |
| Thức | そう。<ruby>考<rt>かんが</rt></ruby>えてから<ruby>動<rt>うご</rt></ruby>くんじゃ<ruby>遅<rt>おそ</rt></ruby>い。<br>*(Đúng. Nghĩ rồi mới phản ứng là chậm.)* |

---

## Tình huống 8 — Lán nghỉ · 12:00, trò chuyện tiếng Việt giờ nghỉ

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, em thấy an toàn nhiều quy tắc quá, sợ nhớ không hết. |
| Thức | Anh hồi đầu cũng thế. Nhưng làm mỗi ngày là ngấm vào người lúc nào không hay. |
| Nam | Anh có bao giờ thấy tai nạn thật chưa ạ? |
| Thức | Có, năm ngoái một anh đội khác trượt chân. May có dây an toàn nên không sao. |
| Nam | Nghe sợ thật. Em sẽ làm đúng quy tắc tuyệt đối. |
| Thức | Ừ, đừng coi quy tắc là phiền. Nó cứu mạng mình đấy. |

---

## Tình huống 9 — Công trường · 13:00, dạy đàn em xác nhận trước khi thao tác

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず「<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>」をやる。<br>*(Nam, trước thao tác phải làm "chỉ tay hô to".)* |
| Nam | どうやりますか?<br>*(Làm thế nào ạ?)* |
| Thức | <ruby>指<rt>ゆび</rt></ruby>でさして「フックよし」と<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>す。やってみて。<br>*(Chỉ tay rồi nói to "móc khóa OK". Em thử đi.)* |
| Nam | (chỉ tay) フックよし!<br>*(Móc khóa OK!)* |
| Thức | いいね。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すと<ruby>確認<rt>かくにん</rt></ruby>の<ruby>精度<rt>せいど</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がる。<ruby>面倒<rt>めんどう</rt></ruby>でもやる。<br>*(Tốt. Đọc to thì độ chính xác kiểm tra tăng. Phiền cũng phải làm.)* |
| Nam | はい、<ruby>毎回<rt>まいかい</rt></ruby>やります。<br>*(Vâng, mỗi lần em sẽ làm ạ.)* |

---

## Tình huống 10 — Công trường · 14:00, sửa lỗi tư thế nguy hiểm của đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、ストップ!<ruby>体<rt>からだ</rt></ruby>を<ruby>乗<rt>の</rt></ruby>り<ruby>出<rt>だ</rt></ruby>しすぎだ。<br>*(Nam, dừng! Người nhoài ra quá rồi.)* |
| Nam | あ、<ruby>届<rt>とど</rt></ruby>かなくて……。<br>*(À, em với không tới...)* |
| Thức | <ruby>届<rt>とど</rt></ruby>かないときは<ruby>無理<rt>むり</rt></ruby>しない。<ruby>足場<rt>あしば</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かすか、<ruby>人<rt>ひと</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ。<br>*(Với không tới thì đừng gắng. Dời giàn giáo hoặc gọi người.)* |
| Nam | すみません、<ruby>急<rt>いそ</rt></ruby>いでいました。<br>*(Xin lỗi, em vội quá ạ.)* |
| Thức | <ruby>急<rt>いそ</rt></ruby>ぐ<ruby>気持<rt>きも</rt></ruby>ちは<ruby>分<rt>わ</rt></ruby>かる。でも<ruby>事故<rt>じこ</rt></ruby>は<ruby>取<rt>と</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>しがつかない。<br>*(Anh hiểu cái tâm lý vội. Nhưng tai nạn thì không lấy lại được.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>急<rt>いそ</rt></ruby>がず<ruby>安全<rt>あんぜん</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>します。<br>*(Em hiểu rồi. Không vội, ưu tiên an toàn ạ.)* |

---

## Tình huống 11 — Công trường · 14:30, 親方 quan sát và nhắc

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、さっき<ruby>注意<rt>ちゅうい</rt></ruby>したの、<ruby>見<rt>み</rt></ruby>てたぞ。いい<ruby>判断<rt>はんだん</rt></ruby>だ。<br>*(Thức, lúc nãy nhắc nhở, tôi thấy đấy. Phán đoán tốt.)* |
| Thức | ありがとうございます。<ruby>危<rt>あぶ</rt></ruby>ない<ruby>瞬間<rt>しゅんかん</rt></ruby>でした。<br>*(Cảm ơn chú ạ. Là khoảnh khắc nguy hiểm ạ.)* |
| Tanigawa | <ruby>後輩<rt>こうはい</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>を<ruby>預<rt>あず</rt></ruby>かってる。その<ruby>意識<rt>いしき</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れるな。<br>*(Cậu đang giữ mạng đàn em. Đừng quên ý thức đó.)* |
| Thức | はい。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>感<rt>かん</rt></ruby>じています。<br>*(Vâng. Cháu cảm nhận được trách nhiệm ạ.)* |
| Tanigawa | その<ruby>感覚<rt>かんかく</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せて<ruby>正解<rt>せいかい</rt></ruby>だった。<br>*(Cái cảm giác đó quan trọng. Giao cho cậu là đúng.)* |
| Thức | <ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます。<br>*(Cháu sẽ đáp lại kỳ vọng ạ.)* |

---

## Tình huống 12 — Lán nghỉ · 15:00, dạy đàn em ghi nhật ký an toàn

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>毎日<rt>まいにち</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>日報<rt>にっぽう</rt></ruby>に<ruby>気<rt>き</rt></ruby>づいたことを<ruby>書<rt>か</rt></ruby>こう。<br>*(Nam, mỗi ngày viết điều nhận ra vào nhật ký công việc nhé.)* |
| Nam | <ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Viết gì ạ?)* |
| Thức | <ruby>危<rt>あぶ</rt></ruby>なかったこと、<ruby>新<rt>あたら</rt></ruby>しく<ruby>覚<rt>おぼ</rt></ruby>えたこと。<ruby>短<rt>みじか</rt></ruby>くていい。<br>*(Việc thấy nguy hiểm, cái mới học. Ngắn cũng được.)* |
| Nam | <ruby>日本語<rt>にほんご</rt></ruby>でですか?<br>*(Bằng tiếng Nhật ạ?)* |
| Thức | できる<ruby>範囲<rt>はんい</rt></ruby>で。<ruby>言葉<rt>ことば</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>にもなる。<br>*(Trong mức làm được. Cũng là học tiếng luôn.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>今日<rt>きょう</rt></ruby>から<ruby>書<rt>か</rt></ruby>きます。<br>*(Em hiểu rồi. Từ hôm nay em viết ạ.)* |

---

## Tình huống 13 — Công trường · 15:30, dạy đàn em đối phó nắng nóng

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>暑<rt>あつ</rt></ruby>い。<ruby>熱中症<rt>ねっちゅうしょう</rt></ruby>に<ruby>気<rt>き</rt></ruby>をつけて。<br>*(Nam, hôm nay nóng. Chú ý say nắng.)* |
| Nam | <ruby>水<rt>みず</rt></ruby>はいつ<ruby>飲<rt>の</rt></ruby>めばいいですか?<br>*(Khi nào uống nước ạ?)* |
| Thức | のどが<ruby>渇<rt>かわ</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>飲<rt>の</rt></ruby>む。<ruby>塩分<rt>えんぶん</rt></ruby>も<ruby>取<rt>と</rt></ruby>る。<br>*(Uống trước khi khát. Bổ sung cả muối.)* |
| Nam | めまいがしたらどうしますか?<br>*(Nếu chóng mặt thì làm sao ạ?)* |
| Thức | すぐ<ruby>言<rt>い</rt></ruby>って。<ruby>我慢<rt>がまん</rt></ruby>するな。<ruby>日陰<rt>ひかげ</rt></ruby>で<ruby>休<rt>やす</rt></ruby>む。<br>*(Nói ngay. Đừng chịu đựng. Nghỉ trong bóng râm.)* |
| Nam | はい、<ruby>無理<rt>むり</rt></ruby>しないで<ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, không gắng, em sẽ nói ạ.)* |

---

## Tình huống 14 — Công trường · 16:00, 先輩 góp ý cách Thức dạy

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、ナムくんに<ruby>理由<rt>りゆう</rt></ruby>も<ruby>説明<rt>せつめい</rt></ruby>してるな。いいことだ。<br>*(Thức, cậu giải thích cả lý do cho Nam nhỉ. Tốt đấy.)* |
| Thức | はい。「やれ」だけだと<ruby>身<rt>み</rt></ruby>につかないと<ruby>思<rt>おも</rt></ruby>って。<br>*(Vâng. Chỉ "làm đi" thì em nghĩ không thấm ạ.)* |
| Kondo | その<ruby>通<rt>とお</rt></ruby>りだ。<ruby>理由<rt>りゆう</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かると<ruby>自分<rt>じぶん</rt></ruby>で<ruby>考<rt>かんが</rt></ruby>えるようになる。<br>*(Đúng vậy. Hiểu lý do thì sẽ tự biết suy nghĩ.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>がそうやって<ruby>教<rt>おそ</rt></ruby>わったので。<br>*(Vì bản thân em được dạy như vậy ạ.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>はいい<ruby>先輩<rt>せんぱい</rt></ruby>になったな。<br>*(Cậu thành đàn anh tốt rồi đấy.)* |
| Thức | まだまだです。<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Còn nhiều ạ. Đang học ạ.)* |

---

## Tình huống 15 — Công trường · 16:30, đàn em báo cáo một điểm nguy hiểm

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、あそこの<ruby>手<rt>て</rt></ruby>すりが<ruby>少<rt>すこ</rt></ruby>しゆるい<ruby>気<rt>き</rt></ruby>がします。<br>*(Anh Thức, lan can chỗ kia em thấy hơi lỏng ạ.)* |
| Thức | (đến xem) ……<ruby>本当<rt>ほんとう</rt></ruby>だ。よく<ruby>気<rt>き</rt></ruby>づいた!<br>*(...Đúng thật. Phát hiện tốt!)* |
| Nam | <ruby>直<rt>なお</rt></ruby>したほうがいいですか?<br>*(Có nên sửa không ạ?)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>で<ruby>直<rt>なお</rt></ruby>さない。<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する。<ruby>勝手<rt>かって</rt></ruby>に<ruby>触<rt>さわ</rt></ruby>ると<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Đừng tự sửa. Báo tổ trưởng. Tự ý động vào thì nguy hiểm.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em hiểu rồi. Em báo cáo ạ.)* |
| Thức | その<ruby>判断<rt>はんだん</rt></ruby>が<ruby>正<rt>ただ</rt></ruby>しい。<ruby>気<rt>き</rt></ruby>づいて<ruby>報告<rt>ほうこく</rt></ruby>、それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Phán đoán đó đúng. Nhận ra rồi báo cáo, đó là quan trọng nhất.)* |

---

## Tình huống 16 — Văn phòng · 16:45, Thức báo cáo điểm nguy hiểm cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Anh Saito, em có báo cáo ạ.)* |
| Saito | どうした?<br>*(Sao thế?)* |
| Thức | <ruby>東側<rt>ひがしがわ</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>段目<rt>だんめ</rt></ruby>の<ruby>手<rt>て</rt></ruby>すりがゆるんでいます。ナムくんが<ruby>見<rt>み</rt></ruby>つけました。<br>*(Lan can tầng 3 phía đông bị lỏng. Nam phát hiện ạ.)* |
| Saito | よし、すぐ<ruby>確認<rt>かくにん</rt></ruby>する。<ruby>使用<rt>しよう</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にしておけ。<br>*(Được, kiểm tra ngay. Cho cấm sử dụng đi.)* |
| Thức | はい、<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>テープを<ruby>張<rt>は</rt></ruby>ります。<br>*(Vâng, em sẽ căng dây cấm vào ạ.)* |
| Saito | ナムくんに「よく<ruby>気<rt>き</rt></ruby>づいた」と<ruby>伝<rt>つた</rt></ruby>えてくれ。<br>*(Báo Nam là "phát hiện tốt" giúp tôi.)* |

---

## Tình huống 17 — Công trường · 8:30, ôn lại an toàn cho đàn em mỗi sáng

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>一<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>しよう。<ruby>今日<rt>きょう</rt></ruby>はフックの<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>。<br>*(Nam, mỗi sáng xác nhận một cái. Hôm nay là cách dùng móc.)* |
| Nam | <ruby>移動<rt>いどう</rt></ruby>のときは<ruby>二<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>交互<rt>こうご</rt></ruby>、<ruby>常<rt>つね</rt></ruby>に<ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>かける。<br>*(Khi di chuyển hai móc luân phiên, luôn gài một cái.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>だ。<ruby>体<rt>からだ</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えてきたな。<br>*(Hoàn hảo. Cơ thể nhớ rồi đấy.)* |
| Nam | <ruby>毎日<rt>まいにち</rt></ruby><ruby>言<rt>い</rt></ruby>うので<ruby>自然<rt>しぜん</rt></ruby>に<ruby>出<rt>で</rt></ruby>ます。<br>*(Mỗi ngày nói nên tự nhiên bật ra ạ.)* |
| Thức | それでいい。<ruby>知<rt>し</rt></ruby>ってるだけじゃだめ、できないと。<br>*(Thế là được. Chỉ biết thì không đủ, phải làm được.)* |
| Nam | はい、<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em sẽ tiếp tục ạ.)* |

---

## Tình huống 18 — Công trường · 13:00, xử lý khi đàn em quên móc khóa

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん!フックかけてない!<ruby>動<rt>うご</rt></ruby>くな!<br>*(Nam! Chưa gài móc! Đừng cử động!)* |
| Nam | あ……すみません、<ruby>忘<rt>わす</rt></ruby>れていました。<br>*(À... xin lỗi, em quên mất ạ.)* |
| Thức | (đến gần, gài giúp) いいか、<ruby>一回<rt>いっかい</rt></ruby>でも<ruby>忘<rt>わす</rt></ruby>れたら<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。<br>*(Nghe này, quên dù một lần cũng nguy hiểm tính mạng.)* |
| Nam | <ruby>本当<rt>ほんとう</rt></ruby>に<ruby>反省<rt>はんせい</rt></ruby>しています。<br>*(Em thật sự ân hận ạ.)* |
| Thức | <ruby>怒<rt>おこ</rt></ruby>ってるんじゃない。<ruby>心配<rt>しんぱい</rt></ruby>なんだ。<ruby>足場<rt>あしば</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がる<ruby>前<rt>まえ</rt></ruby>、<ruby>必<rt>かなら</rt></ruby>ず<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>せ。<br>*(Anh không giận. Anh lo. Trước khi lên giàn giáo, nhất định hô to.)* |
| Nam | はい、「フックよし」を<ruby>絶対<rt>ぜったい</rt></ruby><ruby>言<rt>い</rt></ruby>います。<br>*(Vâng, em tuyệt đối sẽ hô "móc khóa OK" ạ.)* |

---

## Tình huống 19 — Lán nghỉ · 17:00, 親方 tổng kết việc dạy an toàn

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、ナムくんの<ruby>安全<rt>あんぜん</rt></ruby><ruby>意識<rt>いしき</rt></ruby>、<ruby>上<rt>あ</rt></ruby>がってきたな。<br>*(Thức, ý thức an toàn của Nam lên rồi nhỉ.)* |
| Thức | はい、<ruby>自分<rt>じぶん</rt></ruby>から<ruby>危険<rt>きけん</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>するようになりました。<br>*(Vâng, em ấy đã tự báo cáo nguy hiểm ạ.)* |
| Tanigawa | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>言<rt>い</rt></ruby>われる<ruby>前<rt>まえ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づく。<br>*(Đó là quan trọng nhất. Nhận ra trước khi bị nhắc.)* |
| Thức | <ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>し<ruby>教<rt>おし</rt></ruby>えた<ruby>成果<rt>せいか</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Cháu nghĩ là thành quả của việc dạy lặp lại ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>の<ruby>根気<rt>こんき</rt></ruby>だ。<ruby>安全<rt>あんぜん</rt></ruby>は<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねだからな。<br>*(Là sự kiên trì của cậu. An toàn là tích lũy mỗi ngày mà.)* |
| Thức | はい、これからも<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, sau này cháu vẫn tiếp tục ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, hôm nay nghe nói Nam suýt quên móc khóa à? |
| Thức | Vâng anh, em hết hồn. Em hét luôn bảo cậu ấy đứng im. |
| Long | Làm đúng đấy. Lúc đó không được ngại, phải dứt khoát. |
| Thức | Em không giận cậu ấy, chỉ lo. Em nhắc kỹ lần sau phải hô to. |
| Long | Ừ, đàn anh là vậy. Nghiêm lúc cần, nhưng để đàn em hiểu mình lo cho nó. |
| Thức | Vâng. Em mong Nam không bao giờ gặp chuyện gì. |

---

## Đọng lại

Thức dạy an toàn cho Nam một cách bài bản và có chiều sâu: KY buổi sáng, kiểm tra dây an toàn, ba điểm tựa, 5S, chống say nắng, và xử lý dứt khoát khi đàn em quên móc khóa. Em luôn giải thích lý do chứ không chỉ ra lệnh, được 親方 và 先輩 ghi nhận. Quan trọng nhất: Nam bắt đầu tự phát hiện và báo cáo nguy hiểm — thành quả của sự kiên trì.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 危険予知 | きけんよち | Dự đoán nguy hiểm (KY) |
> | 対策 | たいさく | Biện pháp đối phó |
> | バックル | ばっくる | Khóa gài (dây an toàn) |
> | 常時使用 | じょうじしよう | Sử dụng liên tục |
> | 交互 | こうご | Luân phiên |
> | 三点支持 | さんてんしじ | Ba điểm tựa (khi leo cao) |
> | 昇降 | しょうこう | Lên xuống |
> | 整理整頓 | せいりせいとん | Sàng lọc - sắp xếp (5S) |
> | 指差呼称 | ゆびさこしょう | Chỉ tay hô to |
> | 作業日報 | さぎょうにっぽう | Nhật ký công việc |
> | 熱中症 | ねっちゅうしょう | Say nắng |
> | 塩分 | えんぶん | Muối (bổ sung) |
> | 使用禁止 | しようきんし | Cấm sử dụng |
> | 反省 | はんせい | Ân hận, tự kiểm điểm |
> | 積み重ね | つみかさね | Sự tích lũy |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000005, 800000035, NULL, 'markdown_book', 'T5. Đàn em suýt tai nạn — Thức xử lý (後輩のヒヤリハット)', '# Sách thực tập sinh xây dựng · T5. Đàn em suýt tai nạn — Thức xử lý (後輩のヒヤリハット)

> **Mục tiêu nhân vật:** Đàn em Nam suýt gặp tai nạn (ヒヤリハット). Thức phản ứng nhanh, xử lý hiện trường, báo cáo cấp trên, làm bản ヒヤリハット報告 và cùng tổ rút kinh nghiệm. Học mẫu câu nghiệp vụ khẩn cấp và quy trình báo cáo sự cố suýt xảy ra.

---

## Bối cảnh

Tháng 8 năm 2028. Một buổi chiều nóng, Nam mất thăng bằng trên giàn giáo tầng 2 nhưng nhờ dây an toàn nên không rơi — một ヒヤリハット (sự cố suýt xảy ra) điển hình. Thức là người gần nhất, xử lý tại chỗ rồi báo cáo. Sau đó cả tổ làm KY rút kinh nghiệm. Chương này tập trung mẫu câu nghiệp vụ: hô khẩn cấp, trấn an, báo cáo 職長/親方, viết ヒヤリハット報告書, họp rút kinh nghiệm.

---

## Tình huống 1 — Giàn giáo tầng 2 · 14:00, khoảnh khắc suýt ngã

| Vai | Lời thoại |
|---|---|
| Nam | (trượt chân) わっ……!<br>*(Oạ...!)* |
| Thức | ナムくん!<ruby>動<rt>うご</rt></ruby>くな!フックは!?<br>*(Nam! Đừng cử động! Móc khóa đâu!?)* |
| Nam | か……かかっています!<br>*(Đ... đang gài ạ!)* |
| Thức | よし、そのまま。<ruby>今<rt>いま</rt></ruby><ruby>行<rt>い</rt></ruby>く。<ruby>深呼吸<rt>しんこきゅう</rt></ruby>して。<br>*(Tốt, cứ nguyên đó. Anh tới ngay. Hít thở sâu.)* |
| Nam | はい……<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えます。<br>*(Vâng... tay em run ạ.)* |
| Thức | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、フックがあるから<ruby>落<rt>お</rt></ruby>ちない。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて。<br>*(Không sao, có móc khóa nên không rơi. Bình tĩnh.)* |

---

## Tình huống 2 — Giàn giáo tầng 2 · 14:01, đưa đàn em về vị trí an toàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>右<rt>みぎ</rt></ruby><ruby>足<rt>あし</rt></ruby>を<ruby>布板<rt>ぬのいた</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>して。ゆっくりでいい。<br>*(Đặt chân phải lại lên ván sàn. Từ từ thôi.)* |
| Nam | (làm theo) ……<ruby>戻<rt>もど</rt></ruby>しました。<br>*(...Đặt lại rồi ạ.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すりをしっかり<ruby>握<rt>にぎ</rt></ruby>って。<ruby>俺<rt>おれ</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>に<ruby>来<rt>き</rt></ruby>て。<br>*(Nắm chắc lan can. Lại phía anh.)* |
| Nam | (di chuyển) ……<ruby>着<rt>つ</rt></ruby>きました。<br>*(...Tới rồi ạ.)* |
| Thức | よし。<ruby>一回<rt>いっかい</rt></ruby><ruby>下<rt>お</rt></ruby>りよう。<ruby>少<rt>すこ</rt></ruby>し<ruby>休<rt>やす</rt></ruby>もう。<br>*(Tốt. Xuống một lát đã. Nghỉ một chút.)* |
| Nam | ありがとうございます……<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Cảm ơn anh ạ... Em sợ thật sự ạ.)* |

---

## Tình huống 3 — Mặt đất · 14:05, trấn an đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、ケガはない?<ruby>体<rt>からだ</rt></ruby>のどこか<ruby>痛<rt>いた</rt></ruby>くない?<br>*(Nam, không bị thương chứ? Người chỗ nào đau không?)* |
| Nam | ケガはありません。でも<ruby>足<rt>あし</rt></ruby>がまだ<ruby>震<rt>ふる</rt></ruby>えています。<br>*(Không bị thương ạ. Nhưng chân vẫn còn run ạ.)* |
| Thức | <ruby>当然<rt>とうぜん</rt></ruby>だ。<ruby>誰<rt>だれ</rt></ruby>でもそうなる。<ruby>水<rt>みず</rt></ruby>を<ruby>飲<rt>の</rt></ruby>んで。<br>*(Đương nhiên. Ai cũng vậy. Uống nước đi.)* |
| Nam | <ruby>仕事<rt>しごと</rt></ruby>、<ruby>続<rt>つづ</rt></ruby>けられますか……。<br>*(Em còn làm việc tiếp được không ạ...)* |
| Thức | <ruby>今<rt>いま</rt></ruby>は<ruby>休<rt>やす</rt></ruby>む。<ruby>無理<rt>むり</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ると<ruby>危<rt>あぶ</rt></ruby>ない。これは<ruby>大事<rt>だいじ</rt></ruby>なことだ。<br>*(Giờ nghỉ đã. Vội quay lại thì nguy hiểm. Đây là chuyện quan trọng.)* |
| Nam | はい……すみません。<br>*(Vâng... em xin lỗi ạ.)* |

---

## Tình huống 4 — Mặt đất · 14:08, báo cáo khẩn cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん!ナムくんがバランスを<ruby>崩<rt>くず</rt></ruby>しました。<ruby>今<rt>いま</rt></ruby>は<ruby>無事<rt>ぶじ</rt></ruby>です。<br>*(Anh Saito! Nam mất thăng bằng. Hiện đã an toàn ạ.)* |
| Saito | <ruby>落<rt>お</rt></ruby>ちたのか!?<br>*(Rơi à!?)* |
| Thức | <ruby>落<rt>お</rt></ruby>ちていません。フックがかかっていたので<ruby>無事<rt>ぶじ</rt></ruby>です。ケガもありません。<br>*(Không rơi ạ. Móc khóa có gài nên an toàn. Không bị thương ạ.)* |
| Saito | そうか……よかった。<ruby>本人<rt>ほんにん</rt></ruby>は?<br>*(Vậy à... may quá. Đương sự sao rồi?)* |
| Thức | <ruby>下<rt>した</rt></ruby>で<ruby>休<rt>やす</rt></ruby>ませています。ショックを<ruby>受<rt>う</rt></ruby>けています。<br>*(Em cho nghỉ ở dưới. Đang bị sốc ạ.)* |
| Saito | <ruby>判断<rt>はんだん</rt></ruby><ruby>正<rt>ただ</rt></ruby>しい。すぐ<ruby>行<rt>い</rt></ruby>く。<ruby>親方<rt>おやかた</rt></ruby>にも<ruby>連絡<rt>れんらく</rt></ruby>する。<br>*(Phán đoán đúng. Tôi tới ngay. Cũng báo 親方 luôn.)* |

---

## Tình huống 5 — Mặt đất · 14:15, 親方 tới hỏi tình hình

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>しろ。<br>*(Thức, giải thích tình hình.)* |
| Thức | はい。<ruby>二<rt>に</rt></ruby><ruby>層目<rt>そうめ</rt></ruby>で<ruby>足<rt>あし</rt></ruby>を<ruby>滑<rt>すべ</rt></ruby>らせました。フックが<ruby>体<rt>からだ</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えました。<br>*(Vâng. Ở tầng 2 trượt chân. Móc khóa đỡ người ạ.)* |
| Tanigawa | フックをちゃんとかけていたんだな。それが<ruby>命<rt>いのち</rt></ruby>を<ruby>救<rt>すく</rt></ruby>った。<br>*(Có gài móc khóa đàng hoàng nhỉ. Cái đó cứu mạng.)* |
| Thức | はい。<ruby>普段<rt>ふだん</rt></ruby>から「<ruby>常時<rt>じょうじ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>」を<ruby>教<rt>おし</rt></ruby>えていました。<br>*(Vâng. Thường ngày cháu dạy "dùng liên tục" ạ.)* |
| Tanigawa | <ruby>教育<rt>きょういく</rt></ruby>が<ruby>効<rt>き</rt></ruby>いたな。トゥック、お<ruby>前<rt>まえ</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>も<ruby>適切<rt>てきせつ</rt></ruby>だった。<br>*(Việc dạy phát huy rồi đấy. Thức, cách xử lý của cậu cũng thích hợp.)* |
| Thức | ありがとうございます。<ruby>無事<rt>ぶじ</rt></ruby>で<ruby>本当<rt>ほんとう</rt></ruby>によかったです。<br>*(Cảm ơn chú ạ. Em ấy an toàn, thật sự may ạ.)* |

---

## Tình huống 6 — Mặt đất · 14:25, 親方 nói chuyện với Nam

| Vai | Lời thoại |
|---|---|
| Tanigawa | ナムくん、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か。ケガがなくて<ruby>何<rt>なに</rt></ruby>よりだ。<br>*(Nam, không sao chứ. Không bị thương là tốt nhất rồi.)* |
| Nam | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません……<ruby>迷惑<rt>めいわく</rt></ruby>をかけました。<br>*(Em xin lỗi ạ... em làm phiền mọi người.)* |
| Tanigawa | <ruby>謝<rt>あやま</rt></ruby>ることじゃない。フックをかけていた。それが<ruby>正<rt>ただ</rt></ruby>しい。<br>*(Không phải chuyện để xin lỗi. Em đã gài móc khóa. Cái đó là đúng.)* |
| Nam | はい……<br>*(Vâng...)* |
| Tanigawa | <ruby>大事<rt>だいじ</rt></ruby>なのは、なぜ<ruby>滑<rt>すべ</rt></ruby>ったか<ruby>考<rt>かんが</rt></ruby>えること。あとで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ろう。<br>*(Quan trọng là nghĩ vì sao trượt. Lát nữa cùng nhìn lại nhé.)* |
| Nam | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chú ạ.)* |

---

## Tình huống 7 — Lán nghỉ · 14:40, Thức trấn an đàn em (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Nam, bình tĩnh nhé. Em làm đúng rồi, có móc khóa nên không sao cả. |
| Nam | Em sợ quá anh. Em tưởng em rơi xuống thật rồi. |
| Thức | Anh hiểu. Ai lần đầu cũng vậy. Quan trọng là em đã gài móc khóa như anh dạy. |
| Nam | Em thấy có lỗi với mọi người. |
| Thức | Đừng nghĩ vậy. 親方 không trách đâu. Đây gọi là ヒヤリハット, để mình học cách phòng. |
| Nam | Vâng. Em sẽ cẩn thận hơn. Cảm ơn anh đã ở đó. |

---

## Tình huống 8 — Mặt đất · 15:00, cùng đàn em phân tích nguyên nhân

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>滑<rt>すべ</rt></ruby>った<ruby>原因<rt>げんいん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えよう。<br>*(Nam, cùng nghĩ nguyên nhân trượt nào.)* |
| Nam | <ruby>足<rt>あし</rt></ruby>もとを<ruby>見<rt>み</rt></ruby>ていませんでした。<br>*(Em không nhìn chỗ chân ạ.)* |
| Thức | それと、<ruby>布板<rt>ぬのいた</rt></ruby>に<ruby>砂<rt>すな</rt></ruby>があった。<ruby>気<rt>き</rt></ruby>づいた?<br>*(Còn nữa, trên ván sàn có cát. Có để ý không?)* |
| Nam | あ……<ruby>気<rt>き</rt></ruby>づきませんでした。<br>*(À... em không để ý ạ.)* |
| Thức | <ruby>足<rt>あし</rt></ruby>もと<ruby>確認<rt>かくにん</rt></ruby>と、<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby>。<ruby>二<rt>ふた</rt></ruby>つが<ruby>対策<rt>たいさく</rt></ruby>だ。<br>*(Kiểm tra chỗ chân, và làm sạch ván sàn. Hai cái là biện pháp.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>次<rt>つぎ</rt></ruby>から<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em hiểu rồi. Từ sau em nhất định kiểm tra ạ.)* |

---

## Tình huống 9 — Văn phòng · 15:30, viết bản báo cáo ヒヤリハット

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、ヒヤリハット<ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてくれ。<br>*(Thức, viết bản báo cáo ヒヤリハット giúp tôi.)* |
| Thức | はい。<ruby>発生<rt>はっせい</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>と<ruby>原因<rt>げんいん</rt></ruby>、<ruby>対策<rt>たいさく</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Vâng. Viết tình huống xảy ra, nguyên nhân và biện pháp đúng không ạ?)* |
| Saito | そうだ。<ruby>事実<rt>じじつ</rt></ruby>だけを<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>く。<ruby>誰<rt>だれ</rt></ruby>のせいとか<ruby>書<rt>か</rt></ruby>かない。<br>*(Đúng. Chỉ viết sự thật chính xác. Không viết lỗi của ai.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>のためですね。<br>*(Em hiểu rồi. Để phòng tái diễn nhỉ.)* |
| Saito | その<ruby>通<rt>とお</rt></ruby>り。<ruby>責<rt>せ</rt></ruby>めるためじゃない。<ruby>次<rt>つぎ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐためだ。<br>*(Đúng vậy. Không phải để trách. Để ngăn lần sau.)* |
| Thức | はい、<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em sẽ viết cẩn thận ạ.)* |

---

## Tình huống 10 — Văn phòng · 15:50, đọc lại bản báo cáo với 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>書<rt>か</rt></ruby>きました。<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Saito, em viết xong rồi. Nhờ anh kiểm tra ạ.)* |
| Saito | (đọc) ……<ruby>発生<rt>はっせい</rt></ruby><ruby>場所<rt>ばしょ</rt></ruby>、<ruby>時刻<rt>じこく</rt></ruby>、<ruby>状況<rt>じょうきょう</rt></ruby>。よく<ruby>書<rt>か</rt></ruby>けてる。<br>*(...Nơi xảy ra, thời điểm, tình huống. Viết tốt đấy.)* |
| Thức | <ruby>対策<rt>たいさく</rt></ruby>は<ruby>足<rt>あし</rt></ruby>もと<ruby>確認<rt>かくにん</rt></ruby>と<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>清掃<rt>せいそう</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>にしました。<br>*(Biện pháp em ghi là kiểm tra chỗ chân và làm sạch ván sàn triệt để ạ.)* |
| Saito | <ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>でいい。これを<ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>する。<br>*(Cụ thể, tốt. Cái này sẽ chia sẻ ở họp sáng.)* |
| Thức | はい。<ruby>皆<rt>みな</rt></ruby>さんで<ruby>気<rt>き</rt></ruby>をつけられますね。<br>*(Vâng. Mọi người cùng chú ý được nhỉ.)* |
| Saito | そうだ。<ruby>一<rt>ひと</rt></ruby>つの<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>全員<rt>ぜんいん</rt></ruby>の<ruby>学<rt>まな</rt></ruby>びにする。<br>*(Đúng. Biến một sai sót thành bài học của cả tổ.)* |

---

## Tình huống 11 — Công trường · 16:00, kiểm tra lại toàn bộ giàn giáo

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>他<rt>ほか</rt></ruby>の<ruby>布板<rt>ぬのいた</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Thức, kiểm tra cả các ván sàn khác nào.)* |
| Thức | はい。<ruby>砂<rt>すな</rt></ruby>やゴミがないか<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng. Em xem có cát hay rác không ạ.)* |
| Saito | <ruby>濡<rt>ぬ</rt></ruby>れているところもチェックしろ。<br>*(Chỗ ướt cũng kiểm tra.)* |
| Thức | (kiểm tra) ……<ruby>三<rt>さん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>、<ruby>砂<rt>すな</rt></ruby>がありました。<ruby>清掃<rt>せいそう</rt></ruby>します。<br>*(...Ba chỗ có cát ạ. Em làm sạch.)* |
| Saito | <ruby>頼<rt>たの</rt></ruby>む。これも<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>だ。<br>*(Nhờ đấy. Cái này cũng là phòng tái diễn.)* |
| Thức | はい、すぐやります。<br>*(Vâng, em làm ngay ạ.)* |

---

## Tình huống 12 — Lán nghỉ · 16:20, động viên đàn em quay lại làm

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>気分<rt>きぶん</rt></ruby>はどう?<br>*(Nam, thấy trong người sao rồi?)* |
| Nam | <ruby>少<rt>すこ</rt></ruby>し<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>きました。<br>*(Em bình tĩnh hơn chút rồi ạ.)* |
| Thức | <ruby>無理<rt>むり</rt></ruby>はしなくていい。でも、<ruby>怖<rt>こわ</rt></ruby>いまま<ruby>終<rt>お</rt></ruby>わると<ruby>明日<rt>あした</rt></ruby>もっと<ruby>怖<rt>こわ</rt></ruby>くなる。<br>*(Không cần gắng. Nhưng kết thúc trong sợ hãi thì mai sẽ sợ hơn.)* |
| Nam | <ruby>低<rt>ひく</rt></ruby>いところなら……やってみます。<br>*(Chỗ thấp thì... em thử ạ.)* |
| Thức | それでいい。<ruby>俺<rt>おれ</rt></ruby>がそばにいる。<ruby>一<rt>ひと</rt></ruby><ruby>段<rt>だん</rt></ruby>ずつ。<br>*(Thế là được. Có anh bên cạnh. Từng bậc một.)* |
| Nam | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng ạ.)* |

---

## Tình huống 13 — Giàn giáo tầng 1 · 16:30, kèm đàn em lên lại

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、まず<ruby>足<rt>あし</rt></ruby>もと<ruby>確認<rt>かくにん</rt></ruby>。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して。<br>*(Nam, trước hết kiểm tra chỗ chân. Đọc to lên.)* |
| Nam | <ruby>足<rt>あし</rt></ruby>もとよし。<ruby>砂<rt>すな</rt></ruby>なし、よし。<br>*(Chỗ chân OK. Không có cát, OK.)* |
| Thức | フックは?<br>*(Móc khóa?)* |
| Nam | フックよし。かかっています。<br>*(Móc khóa OK. Đang gài ạ.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>だ。ゆっくり<ruby>一<rt>ひと</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>。<br>*(Hoàn hảo. Từ từ một bước.)* |
| Nam | (lên một bước) ……できました。<br>*(...Em làm được rồi ạ.)* |

---

## Tình huống 14 — Giàn giáo tầng 1 · 16:40, đàn em lấy lại tự tin

| Vai | Lời thoại |
|---|---|
| Thức | どう?<ruby>怖<rt>こわ</rt></ruby>さは<ruby>少<rt>すこ</rt></ruby>し<ruby>減<rt>へ</rt></ruby>った?<br>*(Sao? Bớt sợ chút nào không?)* |
| Nam | はい、<ruby>確認<rt>かくにん</rt></ruby>すると<ruby>安心<rt>あんしん</rt></ruby>します。<br>*(Vâng, kiểm tra thì yên tâm hơn ạ.)* |
| Thức | そこが<ruby>大事<rt>だいじ</rt></ruby>だ。<ruby>確認<rt>かくにん</rt></ruby>が<ruby>怖<rt>こわ</rt></ruby>さを<ruby>消<rt>け</rt></ruby>す。<br>*(Đó là điểm quan trọng. Kiểm tra xóa đi nỗi sợ.)* |
| Nam | <ruby>今<rt>いま</rt></ruby><ruby>分<rt>わ</rt></ruby>かりました。なぜ<ruby>毎回<rt>まいかい</rt></ruby><ruby>言<rt>い</rt></ruby>うのか。<br>*(Giờ em hiểu rồi. Vì sao mỗi lần phải đọc.)* |
| Thức | <ruby>経験<rt>けいけん</rt></ruby>して<ruby>分<rt>わ</rt></ruby>かったな。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い<ruby>学<rt>まな</rt></ruby>びだ。<br>*(Trải nghiệm rồi mới hiểu. Đó là bài học mạnh nhất.)* |
| Nam | はい、<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Vâng, em không quên ạ.)* |

---

## Tình huống 15 — Lán nghỉ · 17:00, họp KY rút kinh nghiệm cả tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>今日<rt>きょう</rt></ruby>のヒヤリハットを<ruby>共有<rt>きょうゆう</rt></ruby>する。トゥック、<ruby>説明<rt>せつめい</rt></ruby>しろ。<br>*(Chia sẻ ヒヤリハット hôm nay. Thức, giải thích.)* |
| Thức | はい。<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>砂<rt>すな</rt></ruby>と<ruby>足<rt>あし</rt></ruby>もと<ruby>不<rt>ふ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>が<ruby>原因<rt>げんいん</rt></ruby>でした。<br>*(Vâng. Nguyên nhân là cát trên ván sàn và không kiểm tra chỗ chân ạ.)* |
| Kondo | <ruby>砂<rt>すな</rt></ruby>か。<ruby>俺<rt>おれ</rt></ruby>たちも<ruby>気<rt>き</rt></ruby>をつけないとな。<br>*(Cát à. Bọn mình cũng phải chú ý nhỉ.)* |
| Thức | <ruby>対策<rt>たいさく</rt></ruby>は、<ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>布板<rt>ぬのいた</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>と<ruby>足<rt>あし</rt></ruby>もと<ruby>呼称<rt>こしょう</rt></ruby>の<ruby>徹底<rt>てってい</rt></ruby>です。<br>*(Biện pháp là làm sạch ván sàn trước thao tác và hô xác nhận chỗ chân triệt để ạ.)* |
| Tanigawa | <ruby>全員<rt>ぜんいん</rt></ruby>、<ruby>明日<rt>あした</rt></ruby>から<ruby>徹底<rt>てってい</rt></ruby>だ。ナムくんのおかげで<ruby>気<rt>き</rt></ruby>づけた。<br>*(Cả tổ, từ mai làm triệt để. Nhờ Nam mà phát hiện được.)* |
| Nam | ……はい、ありがとうございます。<br>*(...Vâng, em cảm ơn ạ.)* |

---

## Tình huống 16 — Lán nghỉ · 17:10, 親方 chốt bài học cho cả tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | みんな、ヒヤリハットは<ruby>大事<rt>だいじ</rt></ruby>な<ruby>宝<rt>たから</rt></ruby>だ。<br>*(Mọi người, ヒヤリハット là kho báu quan trọng.)* |
| Kondo | <ruby>事故<rt>じこ</rt></ruby>になる<ruby>前<rt>まえ</rt></ruby>に<ruby>気<rt>き</rt></ruby>づけたんですからね。<br>*(Vì nhận ra trước khi thành tai nạn mà.)* |
| Tanigawa | そうだ。<ruby>隠<rt>かく</rt></ruby>さず<ruby>報告<rt>ほうこく</rt></ruby>する。それが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Đúng. Báo cáo không che giấu. Cái đó giữ mạng.)* |
| Thức | <ruby>報告<rt>ほうこく</rt></ruby>しやすい<ruby>雰囲気<rt>ふんいき</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Không khí dễ báo cáo là quan trọng nhỉ.)* |
| Tanigawa | いいことを<ruby>言<rt>い</rt></ruby>う。<ruby>責<rt>せ</rt></ruby>めない<ruby>職場<rt>しょくば</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。それが<ruby>俺<rt>おれ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だ。<br>*(Nói hay đấy. Tạo nơi làm không trách móc. Đó là việc của tôi.)* |
| Thức | はい、<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Vâng, cháu học được ạ.)* |

---

## Tình huống 17 — Công trường · ngày hôm sau 8:00, áp dụng biện pháp mới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>から<ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>布板<rt>ぬのいた</rt></ruby><ruby>清掃<rt>せいそう</rt></ruby>。みんなでやりましょう。<br>*(Từ hôm nay làm sạch ván sàn trước thao tác. Cùng làm nào.)* |
| Kondo | <ruby>了解<rt>りょうかい</rt></ruby>。ほうきを<ruby>持<rt>も</rt></ruby>ってくる。<br>*(Hiểu rồi. Anh lấy chổi.)* |
| Nam | <ruby>私<rt>わたし</rt></ruby>がやります。<ruby>自分<rt>じぶん</rt></ruby>のことなので。<br>*(Để em làm. Vì là chuyện của em ạ.)* |
| Thức | みんなのことだよ。でも<ruby>気持<rt>きも</rt></ruby>ちは<ruby>嬉<rt>うれ</rt></ruby>しい。<ruby>一緒<rt>いっしょ</rt></ruby>にやろう。<br>*(Là chuyện của mọi người mà. Nhưng tâm ý đó anh vui. Cùng làm nào.)* |
| Nam | はい!<br>*(Vâng!)* |
| Kondo | チームワークだな。いいぞ。<br>*(Tinh thần đồng đội nhỉ. Tốt.)* |

---

## Tình huống 18 — Công trường · 10:00, 職長 nhận xét cách Thức xử lý

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>昨日<rt>きのう</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いてたな。<br>*(Thức, xử lý hôm qua thật sự bình tĩnh đấy.)* |
| Thức | <ruby>必死<rt>ひっし</rt></ruby>でした。<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になりそうでした。<br>*(Em cuống lắm ạ. Suýt thì đầu trống rỗng ạ.)* |
| Saito | でも<ruby>正<rt>ただ</rt></ruby>しい<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>動<rt>うご</rt></ruby>けた。フック<ruby>確認<rt>かくにん</rt></ruby>、<ruby>安全<rt>あんぜん</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>。<br>*(Nhưng làm đúng thứ tự. Kiểm tra móc, đảm bảo an toàn, báo cáo.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby><ruby>教<rt>おし</rt></ruby>えていたことが<ruby>自分<rt>じぶん</rt></ruby>にも<ruby>身<rt>み</rt></ruby>についていました。<br>*(Cái dạy mỗi ngày thấm cả vào em ạ.)* |
| Saito | そういうものだ。<ruby>教<rt>おし</rt></ruby>えると<ruby>自分<rt>じぶん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>くなる。<br>*(Là vậy đấy. Dạy thì bản thân mạnh nhất.)* |
| Thức | はい、<ruby>実感<rt>じっかん</rt></ruby>しました。<br>*(Vâng, em cảm nhận rõ ạ.)* |

---

## Tình huống 19 — Công trường · 16:00, đàn em hồi phục hoàn toàn

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>二<rt>に</rt></ruby><ruby>層目<rt>そうめ</rt></ruby>まで<ruby>上<rt>あ</rt></ruby>がれたな。<br>*(Nam, hôm nay lên được đến tầng 2 rồi nhỉ.)* |
| Nam | はい。<ruby>確認<rt>かくにん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>したら<ruby>怖<rt>こわ</rt></ruby>くなかったです。<br>*(Vâng. Hô xác nhận ra tiếng thì em không sợ ạ.)* |
| Thức | <ruby>立派<rt>りっぱ</rt></ruby>だ。<ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>で<ruby>戻<rt>もど</rt></ruby>ってこれた。<br>*(Giỏi đấy. Một ngày đã quay lại được.)* |
| Nam | トゥックさんが<ruby>無理<rt>むり</rt></ruby>させなかったからです。<br>*(Vì anh Thức không bắt em gắng ạ.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>のペースで<ruby>戻<rt>もど</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby>だ。よく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Quay lại theo nhịp của mình là tốt nhất. Cố gắng tốt lắm.)* |
| Nam | ありがとうございます。<br>*(Em cảm ơn anh ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:30, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói Nam suýt ngã. Em xử lý sao? |
| Thức | Em hét bảo cậu ấy đứng im, kiểm tra móc khóa rồi đưa xuống. Sau đó báo 職長 ngay. |
| Long | Đúng bài rồi. Lúc đó em có run không? |
| Thức | Có anh, tay em cũng run. Nhưng em cứ làm theo thứ tự đã dạy Nam mỗi ngày. |
| Long | Đấy, dạy người khác là tự cứu mình. Em làm tốt lắm, anh tự hào. |
| Thức | Cảm ơn anh. May là không có chuyện gì. Em chỉ mong Nam đừng sợ mà bỏ nghề. |

---

## Đọng lại

Nam suýt ngã trên giàn giáo nhưng nhờ dây an toàn nên an toàn — một ヒヤリハット điển hình. Thức phản ứng đúng quy trình: hô khẩn cấp, đưa đàn em về nơi an toàn, báo cáo 職長/親方, phân tích nguyên nhân, viết báo cáo và cùng tổ rút kinh nghiệm. 親方 nhấn mạnh văn hóa "báo cáo không che giấu, không trách móc". Chính việc Thức dạy an toàn mỗi ngày đã cứu cả đàn em lẫn chính em trong khoảnh khắc nguy cấp.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | ヒヤリハット | ひやりはっと | Sự cố suýt xảy ra |
> | バランスを崩す | ばらんすをくずす | Mất thăng bằng |
> | 無事 | ぶじ | An toàn, không sao |
> | 状況 | じょうきょう | Tình huống, tình hình |
> | 報告書 | ほうこくしょ | Bản báo cáo |
> | 発生 | はっせい | Phát sinh, xảy ra |
> | 原因 | げんいん | Nguyên nhân |
> | 再発防止 | さいはつぼうし | Phòng tái diễn |
> | 徹底 | てってい | Triệt để |
> | 共有 | きょうゆう | Chia sẻ (thông tin) |
> | 振り返る | ふりかえる | Nhìn lại, rút kinh nghiệm |
> | 安全確保 | あんぜんかくほ | Đảm bảo an toàn |
> | 雰囲気 | ふんいき | Không khí, bầu không khí |
> | 反省 | はんせい | Tự kiểm điểm |
> | 実感 | じっかん | Cảm nhận thực tế |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000006, 800000035, NULL, 'markdown_book', 'T6. Đọc bản vẽ phức tạp (複雑な図面を読む)', '# Sách thực tập sinh xây dựng · T6. Đọc bản vẽ phức tạp (複雑な図面を読む)

> **Mục tiêu nhân vật:** Thức học đọc bản vẽ giàn giáo phức tạp cho một công trình lớn. Học mẫu câu nghiệp vụ khi trao đổi với 職長 về bản vẽ, hỏi 親方 chỗ chưa rõ, giải thích lại bản vẽ cho đàn em, xác nhận kích thước và tải trọng tại hiện trường.

---

## Bối cảnh

Tháng 9 năm 2028. Tổ nhận một công trình lớn hơn: giàn giáo bao quanh một tòa nhà sáu tầng có hình dạng phức tạp (có ban công lồi, mái che). Bản vẽ (足場 図面) chi tiết hơn nhiều so với công trình trước. 谷川親方 giao Thức đọc bản vẽ, lập kế hoạch lắp và hướng dẫn đàn em. Chương này tập trung mẫu câu nghiệp vụ về đọc bản vẽ: ký hiệu, kích thước, tải trọng cho phép, đối chiếu bản vẽ với hiện trường.

---

## Tình huống 1 — Văn phòng công trường · 8:00, 親方 giao bản vẽ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今度<rt>こんど</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>の<ruby>図面<rt>ずめん</rt></ruby>だ。<ruby>前<rt>まえ</rt></ruby>より<ruby>複雑<rt>ふくざつ</rt></ruby>だぞ。<br>*(Thức, bản vẽ công trình lần này đây. Phức tạp hơn lần trước đấy.)* |
| Thức | (xem) ……<ruby>建物<rt>たてもの</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>が<ruby>四角<rt>しかく</rt></ruby>くないですね。<br>*(...Hình tòa nhà không vuông vắn nhỉ.)* |
| Tanigawa | そうだ。ベランダが<ruby>出<rt>で</rt></ruby>ている。そこをどう<ruby>組<rt>く</rt></ruby>むかが<ruby>難<rt>むずか</rt></ruby>しい。<br>*(Đúng. Có ban công lồi ra. Lắp chỗ đó thế nào là khó.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>をよく<ruby>読<rt>よ</rt></ruby>んで<ruby>計画<rt>けいかく</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Cháu sẽ đọc kỹ bản vẽ rồi nghĩ kế hoạch ạ.)* |
| Tanigawa | <ruby>分<rt>わ</rt></ruby>からないところは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>け。<ruby>勝手<rt>かって</rt></ruby>に<ruby>判断<rt>はんだん</rt></ruby>するな。<br>*(Chỗ không rõ cứ hỏi đừng ngại. Đừng tự ý quyết.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, cháu nhất định sẽ xác nhận ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:20, hỏi 職長 về ký hiệu bản vẽ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、この<ruby>記号<rt>きごう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Saito, ký hiệu này là gì ạ?)* |
| Saito | それは<ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>位置<rt>いち</rt></ruby>だ。<ruby>建物<rt>たてもの</rt></ruby>に<ruby>固定<rt>こてい</rt></ruby>する<ruby>点<rt>てん</rt></ruby>だな。<br>*(Đó là vị trí điểm neo tường. Điểm cố định vào tòa nhà đấy.)* |
| Thức | <ruby>間隔<rt>かんかく</rt></ruby>はどれくらいですか?<br>*(Khoảng cách bao nhiêu ạ?)* |
| Saito | <ruby>垂直<rt>すいちょく</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby><ruby>五<rt>ご</rt></ruby>メートル、<ruby>水平<rt>すいへい</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby><ruby>五<rt>ご</rt></ruby>メートル<ruby>五十<rt>ごじゅう</rt></ruby>センチ<ruby>以内<rt>いない</rt></ruby>だ。<br>*(Phương đứng 5 mét, phương ngang trong 5 mét 50 phân.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>に<ruby>書<rt>か</rt></ruby>いてある<ruby>数字<rt>すうじ</rt></ruby>と<ruby>合<rt>あ</rt></ruby>っていますね。<br>*(Khớp với con số ghi trên bản vẽ nhỉ.)* |
| Saito | そうだ。<ruby>壁<rt>かべ</rt></ruby>つなぎは<ruby>足場<rt>あしば</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>だ。<ruby>絶対<rt>ぜったい</rt></ruby><ruby>省<rt>はぶ</rt></ruby>くな。<br>*(Đúng. Điểm neo tường là mạng sống của giàn giáo. Tuyệt đối không bỏ.)* |

---

## Tình huống 3 — Văn phòng · 8:40, đọc kích thước và tải trọng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、この<ruby>積載<rt>せきさい</rt></ruby><ruby>荷重<rt>かじゅう</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>は?<br>*(Anh Saito, con số tải trọng chất tải này là?)* |
| Saito | <ruby>一<rt>いち</rt></ruby>スパン<ruby>四百<rt>よんひゃく</rt></ruby>キロまでだ。それ<ruby>以上<rt>いじょう</rt></ruby><ruby>載<rt>の</rt></ruby>せるな。<br>*(Tối đa 400 kg một nhịp. Không chất hơn thế.)* |
| Thức | <ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>置<rt>お</rt></ruby>くときも<ruby>気<rt>き</rt></ruby>をつけないといけませんね。<br>*(Khi đặt vật liệu cũng phải chú ý nhỉ.)* |
| Saito | そうだ。<ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>させるな。<ruby>分散<rt>ぶんさん</rt></ruby>させる。<br>*(Đúng. Đừng tập trung một chỗ. Phân tán ra.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>後輩<rt>こうはい</rt></ruby>にもそう<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Em hiểu rồi. Em sẽ truyền đạt cho đàn em ạ.)* |
| Saito | <ruby>過<rt>か</rt></ruby><ruby>積載<rt>せきさい</rt></ruby>は<ruby>崩落<rt>ほうらく</rt></ruby>の<ruby>原因<rt>げんいん</rt></ruby>だ。<ruby>徹底<rt>てってい</rt></ruby>しろ。<br>*(Quá tải là nguyên nhân sập. Làm triệt để.)* |

---

## Tình huống 4 — Công trường · 9:00, đối chiếu bản vẽ với hiện trường

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>図面<rt>ずめん</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせてみました。<br>*(Anh Saito, em thử đối chiếu bản vẽ với hiện trường ạ.)* |
| Saito | どうだ、<ruby>合<rt>あ</rt></ruby>ってるか?<br>*(Sao, có khớp không?)* |
| Thức | <ruby>東側<rt>ひがしがわ</rt></ruby>のベランダが<ruby>図面<rt>ずめん</rt></ruby>より<ruby>少<rt>すこ</rt></ruby>し<ruby>出<rt>で</rt></ruby>ている<ruby>気<rt>き</rt></ruby>がします。<br>*(Em thấy ban công phía đông lồi ra hơn so với bản vẽ một chút ạ.)* |
| Saito | よく<ruby>気<rt>き</rt></ruby>づいた。<ruby>実測<rt>じっそく</rt></ruby>してみよう。<br>*(Phát hiện tốt. Đo thực tế thử nào.)* |
| Thức | (đo) ……<ruby>図面<rt>ずめん</rt></ruby>より<ruby>二十<rt>にじゅう</rt></ruby>センチ<ruby>長<rt>なが</rt></ruby>いです。<br>*(...Dài hơn bản vẽ 20 phân ạ.)* |
| Saito | それは<ruby>大事<rt>だいじ</rt></ruby>な<ruby>発見<rt>はっけん</rt></ruby>だ。<ruby>親方<rt>おやかた</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する。<br>*(Đó là phát hiện quan trọng. Báo 親方.)* |

---

## Tình huống 5 — Công trường · 9:15, báo cáo sai lệch cho 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>東側<rt>ひがしがわ</rt></ruby>のベランダが<ruby>図面<rt>ずめん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>います。<br>*(親方, em báo cáo ạ. Ban công phía đông khác với bản vẽ.)* |
| Tanigawa | どれくらい<ruby>違<rt>ちが</rt></ruby>う?<br>*(Khác bao nhiêu?)* |
| Thức | <ruby>二十<rt>にじゅう</rt></ruby>センチ<ruby>長<rt>なが</rt></ruby>いです。<ruby>実測<rt>じっそく</rt></ruby>しました。<br>*(Dài hơn 20 phân ạ. Em đã đo thực tế.)* |
| Tanigawa | そのまま<ruby>組<rt>く</rt></ruby>むと<ruby>足場<rt>あしば</rt></ruby>が<ruby>建物<rt>たてもの</rt></ruby>に<ruby>当<rt>あ</rt></ruby>たるな。<br>*(Cứ thế lắp thì giàn giáo đụng tòa nhà nhỉ.)* |
| Thức | はい。<ruby>建地<rt>たてじ</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>をずらす<ruby>必要<rt>ひつよう</rt></ruby>があると<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng. Em nghĩ cần dịch vị trí cột đứng ạ.)* |
| Tanigawa | <ruby>正<rt>ただ</rt></ruby>しい<ruby>判断<rt>はんだん</rt></ruby>だ。<ruby>元請<rt>もとうけ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>する。お<ruby>前<rt>まえ</rt></ruby>のおかげで<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>げた。<br>*(Phán đoán đúng. Tôi sẽ hỏi nhà thầu chính. Nhờ cậu mà tránh được sự cố.)* |

---

## Tình huống 6 — Văn phòng · 10:00, học đọc mặt cắt bản vẽ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、この<ruby>断面図<rt>だんめんず</rt></ruby>の<ruby>見<rt>み</rt></ruby>かたを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh Saito, chỉ em cách xem bản vẽ mặt cắt với ạ.)* |
| Saito | これは<ruby>横<rt>よこ</rt></ruby>から<ruby>切<rt>き</rt></ruby>った<ruby>図<rt>ず</rt></ruby>だ。<ruby>段<rt>だん</rt></ruby>の<ruby>数<rt>かず</rt></ruby>と<ruby>高<rt>たか</rt></ruby>さが<ruby>分<rt>わ</rt></ruby>かる。<br>*(Đây là hình cắt từ bên ngang. Biết số tầng và chiều cao.)* |
| Thức | <ruby>各<rt>かく</rt></ruby><ruby>段<rt>だん</rt></ruby>の<ruby>高<rt>たか</rt></ruby>さは<ruby>一<rt>いち</rt></ruby>メートル<ruby>七十<rt>ななじゅう</rt></ruby>ですね。<br>*(Mỗi tầng cao 1 mét 70 nhỉ.)* |
| Saito | そうだ。<ruby>平面図<rt>へいめんず</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせて<ruby>見<rt>み</rt></ruby>る。<ruby>両方<rt>りょうほう</rt></ruby>でイメージする。<br>*(Đúng. Xem cùng với bản vẽ mặt bằng. Hình dung bằng cả hai.)* |
| Thức | <ruby>頭<rt>あたま</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>立体<rt>りったい</rt></ruby>にするんですね。<br>*(Trong đầu dựng thành khối ba chiều nhỉ.)* |
| Saito | その<ruby>通<rt>とお</rt></ruby>り。<ruby>慣<rt>な</rt></ruby>れれば<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ただけで<ruby>足場<rt>あしば</rt></ruby>が<ruby>見<rt>み</rt></ruby>える。<br>*(Đúng vậy. Quen rồi nhìn bản vẽ là thấy giàn giáo.)* |

---

## Tình huống 7 — Lán nghỉ · 10:30, giải thích bản vẽ cho đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、この<ruby>図面<rt>ずめん</rt></ruby>の<ruby>見<rt>み</rt></ruby>かたを<ruby>教<rt>おし</rt></ruby>えるね。<br>*(Nam, anh dạy em cách xem bản vẽ này nhé.)* |
| Nam | <ruby>難<rt>むずか</rt></ruby>しそうです……。<br>*(Trông khó quá ạ...)* |
| Thức | まず<ruby>太<rt>ふと</rt></ruby>い<ruby>線<rt>せん</rt></ruby>が<ruby>建物<rt>たてもの</rt></ruby>。<ruby>細<rt>ほそ</rt></ruby>い<ruby>線<rt>せん</rt></ruby>が<ruby>足場<rt>あしば</rt></ruby>だ。<br>*(Trước hết đường đậm là tòa nhà. Đường mảnh là giàn giáo.)* |
| Nam | あ、<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(À, dễ hiểu ạ.)* |
| Thức | この<ruby>丸<rt>まる</rt></ruby>が<ruby>壁<rt>かべ</rt></ruby>つなぎ。<ruby>必<rt>かなら</rt></ruby>ずここに<ruby>付<rt>つ</rt></ruby>ける。<br>*(Vòng tròn này là điểm neo tường. Nhất định lắp ở đây.)* |
| Nam | <ruby>少<rt>すこ</rt></ruby>しずつ<ruby>分<rt>わ</rt></ruby>かってきました。ありがとうございます。<br>*(Em dần hiểu rồi ạ. Cảm ơn anh.)* |

---

## Tình huống 8 — Lán nghỉ · 12:00, trò chuyện tiếng Việt giờ nghỉ

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, đọc bản vẽ khó thật, em nhìn rối hết cả mắt. |
| Thức | Anh năm đầu cũng vậy. Bí quyết là so bản vẽ với hiện trường thật, từ từ sẽ quen. |
| Nam | Anh đọc nhanh ghê, em phục thật. |
| Thức | Tại anh sai nhiều lần rồi mới quen thôi. Em cứ hỏi, đừng đoán bừa. |
| Nam | Vâng. Em sợ nhất là làm sai rồi không ai biết. |
| Thức | Đúng, nên cái gì không chắc phải hỏi ngay. Nghề mình sai một li là nguy hiểm. |

---

## Tình huống 9 — Công trường · 13:00, lập kế hoạch lắp theo bản vẽ

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、この<ruby>建物<rt>たてもの</rt></ruby>、どこから<ruby>組<rt>く</rt></ruby>む?<br>*(Thức, tòa nhà này, lắp từ đâu?)* |
| Thức | <ruby>角<rt>かど</rt></ruby>からだと<ruby>思<rt>おも</rt></ruby>います。<ruby>基準<rt>きじゅん</rt></ruby>になるので。<br>*(Em nghĩ từ góc ạ. Vì nó làm chuẩn.)* |
| Saito | いい<ruby>考<rt>かんが</rt></ruby>えだ。どの<ruby>角<rt>かど</rt></ruby>だ?<br>*(Suy nghĩ tốt. Góc nào?)* |
| Thức | <ruby>北東<rt>ほくとう</rt></ruby>の<ruby>角<rt>かど</rt></ruby>です。<ruby>地面<rt>じめん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>平<rt>たい</rt></ruby>らなので。<br>*(Góc đông bắc ạ. Vì mặt đất phẳng nhất.)* |
| Saito | <ruby>現場<rt>げんば</rt></ruby>もちゃんと<ruby>見<rt>み</rt></ruby>てるな。それでいこう。<br>*(Quan sát hiện trường kỹ đấy. Làm theo thế đi.)* |
| Thức | はい、<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>図面<rt>ずめん</rt></ruby>に<ruby>書<rt>か</rt></ruby>き<ruby>込<rt>こ</rt></ruby>みます。<br>*(Vâng, em ghi trình tự vào bản vẽ ạ.)* |

---

## Tình huống 10 — Công trường · 13:30, hỏi 親方 về phần phức tạp nhất

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、ベランダの<ruby>下<rt>した</rt></ruby>はどう<ruby>組<rt>く</rt></ruby>めばいいですか?<br>*(親方, dưới ban công lắp thế nào ạ?)* |
| Tanigawa | そこは<ruby>持<rt>も</rt></ruby>ち<ruby>出<rt>だ</rt></ruby>し<ruby>足場<rt>あしば</rt></ruby>を<ruby>使<rt>つか</rt></ruby>う。<ruby>図面<rt>ずめん</rt></ruby>のここを<ruby>見<rt>み</rt></ruby>ろ。<br>*(Chỗ đó dùng giàn giáo công xôn. Nhìn chỗ này trên bản vẽ.)* |
| Thức | <ruby>持<rt>も</rt></ruby>ち<ruby>出<rt>だ</rt></ruby>し<ruby>足場<rt>あしば</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Giàn giáo công xôn em lần đầu ạ.)* |
| Tanigawa | <ruby>俺<rt>おれ</rt></ruby>が<ruby>付<rt>つ</rt></ruby>いて<ruby>教<rt>おし</rt></ruby>える。<ruby>無理<rt>むり</rt></ruby>に<ruby>一人<rt>ひとり</rt></ruby>でやるな。<br>*(Tôi sẽ đi kèm chỉ. Đừng cố tự làm một mình.)* |
| Thức | ありがとうございます。<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>覚<rt>おぼ</rt></ruby>えます。<br>*(Cảm ơn chú ạ. Cháu sẽ học cẩn thận ạ.)* |
| Tanigawa | <ruby>難<rt>むずか</rt></ruby>しい<ruby>所<rt>ところ</rt></ruby>ほど<ruby>一<rt>いっ</rt></ruby><ruby>緒<rt>しょ</rt></ruby>にやる。それが<ruby>安全<rt>あんぜん</rt></ruby>だ。<br>*(Chỗ càng khó càng làm cùng nhau. Đó là an toàn.)* |

---

## Tình huống 11 — Công trường · 14:00, kiểm tra số lượng vật tư theo bản vẽ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>図面<rt>ずめん</rt></ruby>から<ruby>部材<rt>ぶざい</rt></ruby>の<ruby>数<rt>かず</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>しました。<br>*(Anh Saito, em tính số bộ phận từ bản vẽ rồi ạ.)* |
| Saito | <ruby>建地<rt>たてじ</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>本<rt>ぼん</rt></ruby>だ?<br>*(Cột đứng bao nhiêu cây?)* |
| Thức | <ruby>百二十<rt>ひゃくにじゅう</rt></ruby><ruby>本<rt>ぽん</rt></ruby>、<ruby>布板<rt>ぬのいた</rt></ruby>が<ruby>二百<rt>にひゃく</rt></ruby><ruby>枚<rt>まい</rt></ruby>です。<br>*(120 cây, ván sàn 200 tấm ạ.)* |
| Saito | <ruby>予備<rt>よび</rt></ruby>も<ruby>少<rt>すこ</rt></ruby>し<ruby>足<rt>た</rt></ruby>しておけ。<ruby>足<rt>た</rt></ruby>りないと<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>止<rt>と</rt></ruby>まる。<br>*(Thêm chút dự phòng. Thiếu là dừng việc.)* |
| Thức | はい、<ruby>一割<rt>いちわり</rt></ruby><ruby>多<rt>おお</rt></ruby>めに<ruby>手配<rt>てはい</rt></ruby>します。<br>*(Vâng, em đặt dư thêm 10% ạ.)* |
| Saito | <ruby>段取<rt>だんど</rt></ruby>りがよくなったな。<ruby>成長<rt>せいちょう</rt></ruby>してる。<br>*(Sắp xếp công việc khá hơn rồi. Trưởng thành đấy.)* |

---

## Tình huống 12 — Công trường · 15:00, đàn em hỏi về ký hiệu lạ

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、この<ruby>三角<rt>さんかく</rt></ruby>のマークは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Anh Thức, dấu tam giác này là gì ạ?)* |
| Thức | それは<ruby>昇降<rt>しょうこう</rt></ruby><ruby>設備<rt>せつび</rt></ruby>、はしごの<ruby>場所<rt>ばしょ</rt></ruby>だ。<br>*(Đó là thiết bị lên xuống, chỗ đặt thang.)* |
| Nam | どうしてここなんですか?<br>*(Sao lại ở đây ạ?)* |
| Thức | <ruby>作業員<rt>さぎょういん</rt></ruby>が<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がれる<ruby>場所<rt>ばしょ</rt></ruby>だからだ。<ruby>適当<rt>てきとう</rt></ruby>に<ruby>決<rt>き</rt></ruby>めない。<br>*(Vì là chỗ công nhân lên an toàn. Không quyết bừa.)* |
| Nam | <ruby>図面<rt>ずめん</rt></ruby>には<ruby>意味<rt>いみ</rt></ruby>があるんですね。<br>*(Bản vẽ có ý nghĩa cả nhỉ.)* |
| Thức | そう。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>理由<rt>りゆう</rt></ruby>がある。だから<ruby>図面<rt>ずめん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るんだ。<br>*(Đúng. Cái gì cũng có lý do. Nên phải tuân thủ bản vẽ.)* |

---

## Tình huống 13 — Công trường · 15:30, 親方 kèm Thức làm giàn giáo công xôn

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>持<rt>も</rt></ruby>ち<ruby>出<rt>だ</rt></ruby>し<ruby>足場<rt>あしば</rt></ruby>はここに<ruby>梁<rt>はり</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す。<br>*(Thức, giàn giáo công xôn thì bắc dầm ở đây.)* |
| Thức | <ruby>建物<rt>たてもの</rt></ruby>に<ruby>固定<rt>こてい</rt></ruby>するんですね。<br>*(Cố định vào tòa nhà nhỉ.)* |
| Tanigawa | そうだ。ここの<ruby>固定<rt>こてい</rt></ruby>が<ruby>甘<rt>あま</rt></ruby>いと<ruby>全体<rt>ぜんたい</rt></ruby>が<ruby>落<rt>お</rt></ruby>ちる。<br>*(Đúng. Chỗ này cố định lỏng là cả khối rơi.)* |
| Thức | <ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>ですね。<br>*(Là chỗ quan trọng nhất nhỉ.)* |
| Tanigawa | だから<ruby>俺<rt>おれ</rt></ruby>が<ruby>付<rt>つ</rt></ruby>いている。<ruby>一<rt>いち</rt></ruby><ruby>本<rt>ぽん</rt></ruby>ずつ<ruby>確認<rt>かくにん</rt></ruby>しろ。<br>*(Nên tôi mới đi kèm. Kiểm tra từng cây.)* |
| Thức | はい、<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em hô to để xác nhận ạ.)* |

---

## Tình huống 14 — Công trường · 16:00, hoàn thành phần khó, báo cáo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>持<rt>も</rt></ruby>ち<ruby>出<rt>だ</rt></ruby>し<ruby>足場<rt>あしば</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>どお</rt></ruby>りにできました。<br>*(親方, giàn giáo công xôn em làm đúng bản vẽ rồi ạ.)* |
| Tanigawa | <ruby>固定<rt>こてい</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>したか?<br>*(Chỗ cố định kiểm tra chưa?)* |
| Thức | はい、<ruby>全<rt>すべ</rt></ruby>て<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしました。<ruby>緩<rt>ゆる</rt></ruby>みはありません。<br>*(Vâng, em xiết lại tất cả. Không có chỗ lỏng ạ.)* |
| Tanigawa | (kiểm tra) ……いいぞ。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>読<rt>よ</rt></ruby>めたな。<br>*(...Tốt. Đọc đúng bản vẽ rồi đấy.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてもらったおかげです。<br>*(Nhờ chú chỉ bảo ạ.)* |
| Tanigawa | <ruby>自分<rt>じぶん</rt></ruby>でも<ruby>考<rt>かんが</rt></ruby>えていた。それが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Cậu cũng tự suy nghĩ. Cái đó quan trọng.)* |

---

## Tình huống 15 — Lán nghỉ · 16:30, 先輩 nói về tầm quan trọng của bản vẽ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>図面<rt>ずめん</rt></ruby>が<ruby>読<rt>よ</rt></ruby>めると<ruby>仕事<rt>しごと</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりますね。<br>*(Anh Kondo, đọc được bản vẽ thì công việc khác hẳn nhỉ.)* |
| Kondo | そうだろ。<ruby>言<rt>い</rt></ruby>われたことをやるだけじゃ<ruby>職人<rt>しょくにん</rt></ruby>じゃない。<br>*(Đúng chứ. Chỉ làm cái được bảo thì chưa phải thợ.)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>から<ruby>全体<rt>ぜんたい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えると<ruby>面白<rt>おもしろ</rt></ruby>いです。<br>*(Từ bản vẽ thấy được toàn cảnh thì thú vị ạ.)* |
| Kondo | その<ruby>感覚<rt>かんかく</rt></ruby>が<ruby>出<rt>で</rt></ruby>てきたら<ruby>一人前<rt>いちにんまえ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>い。<br>*(Có cái cảm giác đó là gần thành thợ chính rồi.)* |
| Thức | まだまだですが、<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Còn nhiều lắm nhưng em vui ạ.)* |
| Kondo | この<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けろ。<br>*(Cứ đà này mà tiếp tục.)* |

---

## Tình huống 16 — Công trường · ngày hôm sau 8:30, hướng dẫn cả tổ theo bản vẽ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>は<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>組<rt>く</rt></ruby>みます。<ruby>図面<rt>ずめん</rt></ruby>のここです。<br>*(Mọi người, hôm nay lắp mặt bắc. Là chỗ này trên bản vẽ.)* |
| Kondo | <ruby>壁<rt>かべ</rt></ruby>つなぎは<ruby>何<rt>なん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>だ?<br>*(Điểm neo tường bao nhiêu chỗ?)* |
| Thức | <ruby>八<rt>はち</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>です。<ruby>赤<rt>あか</rt></ruby>でマークしました。<br>*(8 chỗ ạ. Em đánh dấu đỏ rồi.)* |
| Nam | <ruby>材料<rt>ざいりょう</rt></ruby>はどこに<ruby>置<rt>お</rt></ruby>きますか?<br>*(Vật liệu đặt ở đâu ạ?)* |
| Thức | <ruby>過<rt>か</rt></ruby><ruby>積載<rt>せきさい</rt></ruby>に<ruby>注意<rt>ちゅうい</rt></ruby>。<ruby>分散<rt>ぶんさん</rt></ruby>して<ruby>置<rt>お</rt></ruby>く。<ruby>図面<rt>ずめん</rt></ruby>に<ruby>置<rt>お</rt></ruby>き<ruby>場<rt>ば</rt></ruby>を<ruby>書<rt>か</rt></ruby>いた。<br>*(Chú ý quá tải. Đặt phân tán. Anh ghi chỗ để trên bản vẽ.)* |
| Kondo | しっかり<ruby>準備<rt>じゅんび</rt></ruby>してるな。<ruby>始<rt>はじ</rt></ruby>めよう。<br>*(Chuẩn bị kỹ đấy. Bắt đầu nào.)* |

---

## Tình huống 17 — Công trường · 11:00, xử lý khi bản vẽ và thực tế lại lệch

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、ここ<ruby>図面<rt>ずめん</rt></ruby>と<ruby>柱<rt>はしら</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>います。<br>*(Anh Thức, chỗ này vị trí cột khác bản vẽ ạ.)* |
| Thức | (xem) ……<ruby>本当<rt>ほんとう</rt></ruby>だ。よく<ruby>見<rt>み</rt></ruby>つけた。<ruby>勝手<rt>かって</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めるなよ。<br>*(...Đúng thật. Phát hiện tốt. Đừng tự ý làm tiếp nhé.)* |
| Nam | どうしますか?<br>*(Làm sao ạ?)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>めて<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>する。<ruby>勝手<rt>かって</rt></ruby>な<ruby>判断<rt>はんだん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Dừng việc báo tổ trưởng. Tự ý phán đoán là nguy hiểm nhất.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em hiểu rồi. Em học được ạ.)* |
| Thức | <ruby>気<rt>き</rt></ruby>づいて<ruby>止<rt>と</rt></ruby>める。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>な<ruby>力<rt>ちから</rt></ruby>だ。<br>*(Nhận ra rồi dừng. Đó là năng lực quan trọng nhất.)* |

---

## Tình huống 18 — Văn phòng · 11:30, báo cáo và bàn cách xử lý với 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>柱<rt>はしら</rt></ruby><ruby>位置<rt>いち</rt></ruby>が<ruby>図面<rt>ずめん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>います。<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>めました。<br>*(Anh Saito, vị trí cột mặt bắc khác bản vẽ. Em đã dừng việc.)* |
| Saito | <ruby>止<rt>と</rt></ruby>めたのは<ruby>正解<rt>せいかい</rt></ruby>だ。どれくらいずれてる?<br>*(Dừng là đúng. Lệch bao nhiêu?)* |
| Thức | <ruby>三十<rt>さんじゅう</rt></ruby>センチほどです。<ruby>建地<rt>たてじ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる<ruby>位置<rt>いち</rt></ruby>が<ruby>変<rt>か</rt></ruby>わります。<br>*(Khoảng 30 phân ạ. Vị trí dựng cột đứng sẽ thay đổi ạ.)* |
| Saito | <ruby>元請<rt>もとうけ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>するまで<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>中断<rt>ちゅうだん</rt></ruby>。<ruby>他<rt>ほか</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めろ。<br>*(Đến khi hỏi nhà thầu chính thì dừng mặt bắc. Làm chỗ khác.)* |
| Thức | はい、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<br>*(Vâng, em chuyển sang mặt nam ạ.)* |
| Saito | <ruby>判断<rt>はんだん</rt></ruby>が<ruby>速<rt>はや</rt></ruby>くなった。<ruby>頼<rt>たの</rt></ruby>もしいぞ。<br>*(Phán đoán nhanh hơn rồi. Đáng tin đấy.)* |

---

## Tình huống 19 — Công trường · 17:00, 親方 tổng kết kỹ năng đọc bản vẽ

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今回<rt>こんかい</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby>でよく<ruby>気<rt>き</rt></ruby>づいたな。<br>*(Thức, công trình lần này, đọc bản vẽ phát hiện tốt đấy.)* |
| Thức | ベランダと<ruby>柱<rt>はしら</rt></ruby>の<ruby>二<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>、<ruby>実測<rt>じっそく</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ban công và cột hai chỗ, em phát hiện qua đo thực tế ạ.)* |
| Tanigawa | <ruby>図面<rt>ずめん</rt></ruby>を<ruby>信<rt>しん</rt></ruby>じすぎず、<ruby>現場<rt>げんば</rt></ruby>も<ruby>見<rt>み</rt></ruby>る。それが<ruby>職人<rt>しょくにん</rt></ruby>だ。<br>*(Không tin bản vẽ quá, nhìn cả hiện trường. Đó là thợ.)* |
| Thức | はい、<ruby>両方<rt>りょうほう</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だと<ruby>学<rt>まな</rt></ruby>びました。<br>*(Vâng, em học được cả hai đều quan trọng ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>に<ruby>図面<rt>ずめん</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せられるようになった。<ruby>大<rt>おお</rt></ruby>きな<ruby>進歩<rt>しんぽ</rt></ruby>だ。<br>*(Giờ giao được bản vẽ cho cậu rồi. Tiến bộ lớn đấy.)* |
| Thức | ありがとうございます。もっと<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Cảm ơn chú ạ. Cháu sẽ học thêm.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói công trình mới bản vẽ khó lắm hả? |
| Thức | Vâng anh, tòa nhà có ban công lồi, lại có chỗ bản vẽ lệch với thực tế. |
| Long | Đấy là chuyện thường. Bản vẽ với hiện trường không phải lúc nào cũng khớp. |
| Thức | Em phát hiện ra hai chỗ, báo 親方 rồi dừng lại chờ xác nhận. |
| Long | Giỏi đấy. Dám dừng việc lại để báo là bản lĩnh thợ rồi, không phải ai cũng làm được. |
| Thức | Cảm ơn anh. Em thấy đọc được bản vẽ thì làm nghề tự tin hẳn. |

---

## Đọng lại

Thức học đọc bản vẽ giàn giáo phức tạp: ký hiệu điểm neo tường, tải trọng cho phép, bản vẽ mặt cắt - mặt bằng, giàn giáo công xôn. Quan trọng nhất, em biết đối chiếu bản vẽ với hiện trường, phát hiện hai chỗ sai lệch và dám dừng việc báo cáo thay vì tự ý làm tiếp. 親方 ghi nhận đây là bước tiến lớn — Thức không chỉ làm theo lệnh mà đã đọc và hiểu được toàn cảnh công trình như một người thợ thực thụ.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 図面 | ずめん | Bản vẽ thi công |
> | 記号 | きごう | Ký hiệu |
> | 壁つなぎ | かべつなぎ | Điểm neo tường |
> | 積載荷重 | せきさいかじゅう | Tải trọng chất tải |
> | 過積載 | かせきさい | Quá tải |
> | 崩落 | ほうらく | Sập, sụp đổ |
> | 実測 | じっそく | Đo thực tế |
> | 断面図 | だんめんず | Bản vẽ mặt cắt |
> | 平面図 | へいめんず | Bản vẽ mặt bằng |
> | 立体 | りったい | Khối ba chiều |
> | 持ち出し足場 | もちだしあしば | Giàn giáo công xôn |
> | 梁 | はり | Dầm |
> | 増し締め | ましじめ | Xiết lại (bu lông) |
> | 段取り | だんどり | Sắp xếp công việc |
> | 元請 | もとうけ | Nhà thầu chính |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000007, 800000035, NULL, 'markdown_book', 'T7. Chuyển sang Đặc định kỹ năng xây dựng (特定技能・建設への変更)', '# Sách thực tập sinh xây dựng · T7. Chuyển sang Đặc định kỹ năng xây dựng (特定技能・建設への変更)

> **Mục tiêu nhân vật:** Thức làm thủ tục chuyển từ thực tập kỹ năng (技能実習) sang Đặc định kỹ năng ngành xây dựng (特定技能・建設). Học mẫu câu nghiệp vụ khi trao đổi với 親方/công ty về thủ tục, hỏi đoàn thể JAC, đăng ký CCUS, hiểu chế độ lương tháng. (Các quy định trong chương phản ánh thực tế tại thời điểm 2026 — có thể thay đổi.)

---

## Bối cảnh

Tháng 10 năm 2028. Thực tập kỹ năng 3 năm của Thức sắp hết (3/2029). Em đã đỗ thi đánh giá kỹ năng とび và đang ôn xong N3. Công ty muốn giữ Thức lại theo tư cách 特定技能・建設. Chương này tập trung mẫu câu nghiệp vụ về thủ tục chuyển visa: hồ sơ, đoàn thể JAC (建設技能人材機構), thẻ kỹ năng CCUS, kế hoạch lương tháng. Lưu ý: nội dung chế độ phản ánh đúng tại 2026, có thể đổi.

---

## Tình huống 1 — Văn phòng công ty · 10:00, 親方 đề nghị giữ lại

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>実習<rt>じっしゅう</rt></ruby>が<ruby>来年<rt>らいねん</rt></ruby>の<ruby>三月<rt>さんがつ</rt></ruby>で<ruby>終<rt>お</rt></ruby>わるな。<ruby>残<rt>のこ</rt></ruby>る<ruby>気<rt>き</rt></ruby>はあるか?<br>*(Thức, thực tập hết vào tháng 3 năm sau nhỉ. Cậu có ý định ở lại không?)* |
| Thức | はい、ぜひ<ruby>残<rt>のこ</rt></ruby>りたいです。この<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Vâng, cháu rất muốn ở lại. Cháu muốn tiếp tục công việc này ạ.)* |
| Tanigawa | よかった。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えれば<ruby>働<rt>はたら</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けられる。<br>*(Tốt. Đổi sang Đặc định kỹ năng thì làm tiếp được.)* |
| Thức | <ruby>手続<rt>てつづ</rt></ruby>きは<ruby>難<rt>むずか</rt></ruby>しいですか?<br>*(Thủ tục có khó không ạ?)* |
| Tanigawa | <ruby>書類<rt>しょるい</rt></ruby>は<ruby>多<rt>おお</rt></ruby>いが、<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>う。<ruby>心配<rt>しんぱい</rt></ruby>するな。<br>*(Giấy tờ nhiều nhưng công ty hỗ trợ. Đừng lo.)* |
| Thức | ありがとうございます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn chú ạ. Mong chú giúp đỡ ạ.)* |

---

## Tình huống 2 — Văn phòng · 10:20, người phụ trách giải thích điều kiện

| Vai | Lời thoại |
|---|---|
| Phụ trách | トゥックさん、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>には<ruby>条件<rt>じょうけん</rt></ruby>があります。<br>*(Anh Thức, Đặc định kỹ năng có điều kiện.)* |
| Thức | どんな<ruby>条件<rt>じょうけん</rt></ruby>ですか?<br>*(Điều kiện gì ạ?)* |
| Phụ trách | <ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>か、<ruby>実習<rt>じっしゅう</rt></ruby><ruby>二号<rt>にごう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>です。トゥックさんは<ruby>両方<rt>りょうほう</rt></ruby><ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Đỗ thi kỹ năng, hoặc hoàn thành thực tập số 2. Anh Thức cả hai đều ổn.)* |
| Thức | <ruby>日本語<rt>にほんご</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>もありますか?<br>*(Có điều kiện tiếng Nhật không ạ?)* |
| Phụ trách | <ruby>建設<rt>けんせつ</rt></ruby>は<ruby>実習<rt>じっしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>なら<ruby>日本語<rt>にほんご</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>免除<rt>めんじょ</rt></ruby>になります。<br>*(Xây dựng nếu hoàn thành thực tập thì miễn thi tiếng Nhật.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Em hiểu rồi. Em yên tâm ạ.)* |

---

## Tình huống 3 — Văn phòng · 10:40, hỏi về đoàn thể JAC

| Vai | Lời thoại |
|---|---|
| Thức | JACというのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(JAC là cái gì ạ?)* |
| Phụ trách | <ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>える<ruby>団体<rt>だんたい</rt></ruby>です。<br>*(Là tổ chức hỗ trợ Đặc định kỹ năng ngành xây dựng.)* |
| Thức | <ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>っていないとだめですか?<br>*(Công ty không tham gia thì không được ạ?)* |
| Phụ trách | はい。<ruby>建設<rt>けんせつ</rt></ruby>はJACへの<ruby>加入<rt>かにゅう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。うちはもう<ruby>加入<rt>かにゅう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng. Xây dựng cần gia nhập JAC. Bên mình đã gia nhập rồi.)* |
| Thức | <ruby>受<rt>う</rt></ruby>け<ruby>入<rt>い</rt></ruby>れの<ruby>計画<rt>けいかく</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>と<ruby>聞<rt>き</rt></ruby>きました。<br>*(Em nghe nói cũng cần kế hoạch tiếp nhận ạ.)* |
| Phụ trách | そうです。<ruby>建設<rt>けんせつ</rt></ruby><ruby>特<rt>とく</rt></ruby><ruby>有<rt>ゆう</rt></ruby>の<ruby>計画書<rt>けいかくしょ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>作<rt>つく</rt></ruby>ります。<br>*(Đúng. Nộp bản kế hoạch riêng của xây dựng. Công ty làm.)* |

---

## Tình huống 4 — Văn phòng · 11:00, hỏi về thẻ kỹ năng CCUS

| Vai | Lời thoại |
|---|---|
| Thức | CCUSカードも<ruby>作<rt>つく</rt></ruby>るんですよね?<br>*(Em cũng phải làm thẻ CCUS phải không ạ?)* |
| Phụ trách | はい。<ruby>建設<rt>けんせつ</rt></ruby>キャリアアップシステムです。<ruby>経験<rt>けいけん</rt></ruby>を<ruby>記録<rt>きろく</rt></ruby>します。<br>*(Vâng. Hệ thống nâng cấp sự nghiệp xây dựng. Ghi lại kinh nghiệm.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>が<ruby>記録<rt>きろく</rt></ruby>されますか?<br>*(Cái gì được ghi lại ạ?)* |
| Phụ trách | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>や<ruby>資格<rt>しかく</rt></ruby>、<ruby>現場<rt>げんば</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>です。<br>*(Số ngày làm việc, chứng chỉ, kinh nghiệm công trường.)* |
| Thức | <ruby>記録<rt>きろく</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えると<ruby>有利<rt>ゆうり</rt></ruby>になりますか?<br>*(Ghi nhận nhiều thì có lợi không ạ?)* |
| Phụ trách | そうです。<ruby>経験<rt>けいけん</rt></ruby>が<ruby>見<rt>み</rt></ruby>える<ruby>化<rt>か</rt></ruby>されて、<ruby>処遇<rt>しょぐう</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>されます。<br>*(Đúng. Kinh nghiệm được trực quan hóa, phản ánh vào đãi ngộ.)* |

---

## Tình huống 5 — Văn phòng · 11:20, hỏi về chế độ lương tháng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>になると<ruby>給料<rt>きゅうりょう</rt></ruby>はどうなりますか?<br>*(Thành Đặc định kỹ năng thì lương thế nào ạ?)* |
| Phụ trách | <ruby>建設<rt>けんせつ</rt></ruby>は<ruby>原則<rt>げんそく</rt></ruby><ruby>月給<rt>げっきゅう</rt></ruby><ruby>制<rt>せい</rt></ruby>です。<ruby>日給<rt>にっきゅう</rt></ruby>ではありません。<br>*(Xây dựng về nguyên tắc là chế độ lương tháng. Không phải lương ngày.)* |
| Thức | <ruby>雨<rt>あめ</rt></ruby>で<ruby>休<rt>やす</rt></ruby>んでも<ruby>給料<rt>きゅうりょう</rt></ruby>は<ruby>出<rt>で</rt></ruby>ますか?<br>*(Nghỉ vì mưa thì có lương không ạ?)* |
| Phụ trách | <ruby>月給<rt>げっきゅう</rt></ruby><ruby>制<rt>せい</rt></ruby>なので<ruby>収入<rt>しゅうにゅう</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>します。そこが<ruby>大<rt>おお</rt></ruby>きな<ruby>違<rt>ちが</rt></ruby>いです。<br>*(Vì lương tháng nên thu nhập ổn định. Đó là khác biệt lớn.)* |
| Thức | それは<ruby>助<rt>たす</rt></ruby>かります。<ruby>計画<rt>けいかく</rt></ruby>が<ruby>立<rt>た</rt></ruby>てやすいです。<br>*(Cái đó đỡ quá. Dễ lên kế hoạch ạ.)* |
| Phụ trách | <ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>待遇<rt>たいぐう</rt></ruby>が<ruby>原則<rt>げんそく</rt></ruby>です。<br>*(Đãi ngộ ngang người Nhật là nguyên tắc.)* |

---

## Tình huống 6 — Văn phòng · 11:40, hỏi về thời hạn lưu trú

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>働<rt>はたら</rt></ruby>けますか?<br>*(Đặc định kỹ năng làm được mấy năm ạ?)* |
| Phụ trách | <ruby>一号<rt>いちごう</rt></ruby>は<ruby>通算<rt>つうさん</rt></ruby><ruby>五<rt>ご</rt></ruby><ruby>年<rt>ねん</rt></ruby>です。<br>*(Số 1 là tổng cộng 5 năm.)* |
| Thức | そのあとはどうなりますか?<br>*(Sau đó thì sao ạ?)* |
| Phụ trách | <ruby>建設<rt>けんせつ</rt></ruby>は<ruby>二号<rt>にごう</rt></ruby>もあります。<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たせば<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けます。<br>*(Xây dựng có cả số 2. Đủ điều kiện thì làm lâu dài được.)* |
| Thức | <ruby>二号<rt>にごう</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Điều kiện số 2 là gì ạ?)* |
| Phụ trách | <ruby>班長<rt>はんちょう</rt></ruby><ruby>級<rt>きゅう</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>と<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>です。<ruby>今<rt>いま</rt></ruby>から<ruby>準備<rt>じゅんび</rt></ruby>できます。<br>*(Thi cấp tổ trưởng và kinh nghiệm thực tế. Từ giờ chuẩn bị được.)* |

---

## Tình huống 7 — Lán nghỉ · 12:00, trò chuyện tiếng Việt với đàn em

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, anh chuyển sang đặc định kỹ năng thật ạ? |
| Thức | Ừ, công ty muốn giữ anh lại. Lương chuyển sang trả theo tháng, ổn định hơn. |
| Nam | Lương tháng thì mưa gió cũng không lo mất ngày công nhỉ. |
| Thức | Đúng đấy. Nghề xây dựng giờ quy định lương tháng cho đặc định kỹ năng. |
| Nam | Em cũng muốn sau này được như anh. |
| Thức | Cứ làm tốt thực tập, thi đậu kỹ năng là được. Anh sẽ chỉ em hồ sơ. |

---

## Tình huống 8 — Văn phòng · 13:00, chuẩn bị hồ sơ cá nhân

| Vai | Lời thoại |
|---|---|
| Phụ trách | トゥックさん、<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めましょう。<br>*(Anh Thức, cùng thu thập giấy tờ cần thiết nào.)* |
| Thức | <ruby>何<rt>なに</rt></ruby>が<ruby>要<rt>い</rt></ruby>りますか?<br>*(Cần những gì ạ?)* |
| Phụ trách | <ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポート、<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>です。<br>*(Thẻ lưu trú, hộ chiếu, giấy chứng nhận đỗ thi kỹ năng.)* |
| Thức | <ruby>合格<rt>ごうかく</rt></ruby><ruby>証<rt>しょう</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>しています。<br>*(Giấy chứng nhận đỗ em giữ cẩn thận ạ.)* |
| Phụ trách | <ruby>健康<rt>けんこう</rt></ruby><ruby>診断<rt>しんだん</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>も<ruby>要<rt>い</rt></ruby>ります。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>受<rt>う</rt></ruby>けてください。<br>*(Cũng cần kết quả khám sức khỏe. Tuần sau đi khám nhé.)* |
| Thức | はい、<ruby>予約<rt>よやく</rt></ruby>します。ありがとうございます。<br>*(Vâng, em đặt lịch ạ. Cảm ơn anh.)* |

---

## Tình huống 9 — Văn phòng · 13:30, hỏi về việc đổi công ty được không

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えられますか?<br>*(Đặc định kỹ năng có đổi công ty được không ạ?)* |
| Phụ trách | <ruby>同<rt>おな</rt></ruby>じ<ruby>分野<rt>ぶんや</rt></ruby>なら<ruby>転職<rt>てんしょく</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<ruby>実習<rt>じっしゅう</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>います。<br>*(Cùng ngành thì chuyển việc được. Khác với thực tập.)* |
| Thức | そうなんですね。でも<ruby>私<rt>わたし</rt></ruby>はここで<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Vậy ạ. Nhưng em muốn tiếp tục ở đây.)* |
| Phụ trách | ありがとうございます。<ruby>会社<rt>かいしゃ</rt></ruby>もトゥックさんに<ruby>残<rt>のこ</rt></ruby>ってほしいです。<br>*(Cảm ơn anh. Công ty cũng muốn anh Thức ở lại.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>や<ruby>皆<rt>みな</rt></ruby>さんに<ruby>恩<rt>おん</rt></ruby>があります。<br>*(Em có ơn với 親方 và mọi người ạ.)* |
| Phụ trách | その<ruby>気持<rt>きも</rt></ruby>ち、<ruby>大切<rt>たいせつ</rt></ruby>にしてください。<br>*(Cái tâm ý đó, hãy trân trọng nhé.)* |

---

## Tình huống 10 — Công trường · 14:00, 親方 hỏi về kế hoạch lâu dài

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>のあと、どうしたい?<br>*(Thức, sau Đặc định kỹ năng cậu muốn làm gì?)* |
| Thức | <ruby>二号<rt>にごう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>したいです。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Cháu muốn hướng tới số 2. Cháu muốn làm lâu dài ạ.)* |
| Tanigawa | そのためには<ruby>班長<rt>はんちょう</rt></ruby>ができるようにならないとな。<br>*(Để vậy thì phải làm được tổ trưởng đấy.)* |
| Thức | はい。<ruby>今<rt>いま</rt></ruby>から<ruby>現場<rt>げんば</rt></ruby>で<ruby>勉強<rt>べんきょう</rt></ruby>します。<br>*(Vâng. Từ giờ cháu học ở công trường ạ.)* |
| Tanigawa | <ruby>俺<rt>おれ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>任<rt>まか</rt></ruby>せていく。<ruby>焦<rt>あせ</rt></ruby>らずやれ。<br>*(Tôi sẽ giao việc dần. Đừng vội mà làm.)* |
| Thức | ありがとうございます。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm ơn chú ạ. Cháu sẽ cố gắng từng bước.)* |

---

## Tình huống 11 — Văn phòng · 14:30, người phụ trách giải thích hỗ trợ sinh hoạt

| Vai | Lời thoại |
|---|---|
| Phụ trách | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>には<ruby>支援<rt>しえん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>があります。<br>*(Đặc định kỹ năng có kế hoạch hỗ trợ.)* |
| Thức | <ruby>実習<rt>じっしゅう</rt></ruby>のときの<ruby>監理<rt>かんり</rt></ruby><ruby>団体<rt>だんたい</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>いますか?<br>*(Khác với đoàn thể quản lý lúc thực tập không ạ?)* |
| Phụ trách | <ruby>違<rt>ちが</rt></ruby>います。<ruby>会社<rt>かいしゃ</rt></ruby>か<ruby>登録<rt>とうろく</rt></ruby><ruby>支援<rt>しえん</rt></ruby><ruby>機関<rt>きかん</rt></ruby>が<ruby>生活<rt>せいかつ</rt></ruby>を<ruby>支援<rt>しえん</rt></ruby>します。<br>*(Khác. Công ty hoặc tổ chức hỗ trợ đăng ký sẽ hỗ trợ sinh hoạt.)* |
| Thức | <ruby>相談<rt>そうだん</rt></ruby>はできますか?<br>*(Có tư vấn được không ạ?)* |
| Phụ trách | はい、<ruby>母国語<rt>ぼこくご</rt></ruby>での<ruby>相談<rt>そうだん</rt></ruby><ruby>窓口<rt>まどぐち</rt></ruby>もあります。<br>*(Có, có cả cửa tư vấn bằng tiếng mẹ đẻ.)* |
| Thức | それは<ruby>安心<rt>あんしん</rt></ruby>です。ありがとうございます。<br>*(Cái đó yên tâm ạ. Cảm ơn anh.)* |

---

## Tình huống 12 — Văn phòng · 15:00, ký hợp đồng lao động mới

| Vai | Lời thoại |
|---|---|
| Phụ trách | これが<ruby>新<rt>あたら</rt></ruby>しい<ruby>雇用<rt>こよう</rt></ruby><ruby>契約書<rt>けいやくしょ</rt></ruby>です。よく<ruby>読<rt>よ</rt></ruby>んでください。<br>*(Đây là hợp đồng lao động mới. Đọc kỹ nhé.)* |
| Thức | <ruby>給料<rt>きゅうりょう</rt></ruby>と<ruby>仕事<rt>しごと</rt></ruby>の<ruby>内容<rt>ないよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Em xác nhận lương và nội dung công việc ạ.)* |
| Phụ trách | <ruby>分<rt>わ</rt></ruby>からないところは<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Chỗ không hiểu nhất định hỏi nhé.)* |
| Thức | この<ruby>月給<rt>げっきゅう</rt></ruby>は<ruby>残業<rt>ざんぎょう</rt></ruby><ruby>代<rt>だい</rt></ruby><ruby>別<rt>べつ</rt></ruby>ですか?<br>*(Lương tháng này tiền tăng ca tính riêng ạ?)* |
| Phụ trách | はい、<ruby>残業<rt>ざんぎょう</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>に<ruby>計算<rt>けいさん</rt></ruby>します。<ruby>法律<rt>ほうりつ</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Vâng, tăng ca tính riêng. Theo đúng luật.)* |
| Thức | <ruby>納得<rt>なっとく</rt></ruby>しました。<ruby>署名<rt>しょめい</rt></ruby>します。<br>*(Em hiểu rõ rồi ạ. Em ký ạ.)* |

---

## Tình huống 13 — Công trường · 15:30, 先輩 chia sẻ kinh nghiệm chuyển visa

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>に<ruby>変<rt>か</rt></ruby>えるとき<ruby>大変<rt>たいへん</rt></ruby>でしたか?<br>*(Anh Kondo, lúc đổi sang Đặc định kỹ năng có vất vả không ạ?)* |
| Kondo | <ruby>書類<rt>しょるい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いけど、<ruby>会社<rt>かいしゃ</rt></ruby>がやってくれる。<ruby>心配<rt>しんぱい</rt></ruby>するな。<br>*(Giấy tờ nhiều nhưng công ty làm cho. Đừng lo.)* |
| Thức | <ruby>仕事<rt>しごと</rt></ruby>は<ruby>変<rt>か</rt></ruby>わりますか?<br>*(Công việc có thay đổi không ạ?)* |
| Kondo | <ruby>仕事<rt>しごと</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだ。でも<ruby>責任<rt>せきにん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える。<ruby>戦力<rt>せんりょく</rt></ruby>として<ruby>見<rt>み</rt></ruby>られる。<br>*(Việc thì như cũ. Nhưng trách nhiệm tăng. Được nhìn như lực lượng chính.)* |
| Thức | その<ruby>分<rt>ぶん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>らないといけませんね。<br>*(Vậy thì phải cố gắng tương xứng nhỉ.)* |
| Kondo | そうだ。でもお<ruby>前<rt>まえ</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Đúng. Nhưng cậu thì ổn thôi.)* |

---

## Tình huống 14 — Văn phòng · 16:00, hỏi về việc gửi tiền và thuế

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>給料<rt>きゅうりょう</rt></ruby>から<ruby>引<rt>ひ</rt></ruby>かれるものは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Bị trừ vào lương là những gì ạ?)* |
| Phụ trách | <ruby>税金<rt>ぜいきん</rt></ruby>、<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>、<ruby>年金<rt>ねんきん</rt></ruby>です。<ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じです。<br>*(Thuế, bảo hiểm xã hội, lương hưu. Giống người Nhật.)* |
| Thức | <ruby>年金<rt>ねんきん</rt></ruby>は<ruby>帰国<rt>きこく</rt></ruby>したらどうなりますか?<br>*(Lương hưu nếu về nước thì sao ạ?)* |
| Phụ trách | <ruby>脱退<rt>だったい</rt></ruby><ruby>一時金<rt>いちじきん</rt></ruby>を<ruby>請求<rt>せいきゅう</rt></ruby>できます。<ruby>説明<rt>せつめい</rt></ruby><ruby>資料<rt>しりょう</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>します。<br>*(Có thể yêu cầu khoản hoàn một lần khi rút. Tôi đưa tài liệu giải thích.)* |
| Thức | ありがとうございます。<ruby>仕組<rt>しく</rt></ruby>みが<ruby>分<rt>わ</rt></ruby>かると<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(Cảm ơn anh. Hiểu cơ chế thì yên tâm ạ.)* |
| Phụ trách | <ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Có gì cứ hỏi nhé.)* |

---

## Tình huống 15 — Văn phòng · 16:30, hoàn tất nộp hồ sơ

| Vai | Lời thoại |
|---|---|
| Phụ trách | トゥックさん、<ruby>書類<rt>しょるい</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>いました。<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby>します。<br>*(Anh Thức, giấy tờ đủ rồi. Sẽ nộp lên cục xuất nhập cảnh.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>はいつ<ruby>分<rt>わ</rt></ruby>かりますか?<br>*(Khi nào biết kết quả ạ?)* |
| Phụ trách | だいたい<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>から<ruby>二<rt>に</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>です。<br>*(Khoảng một đến hai tháng.)* |
| Thức | <ruby>実習<rt>じっしゅう</rt></ruby>が<ruby>終<rt>お</rt></ruby>わるまでに<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いますか?<br>*(Có kịp trước khi thực tập hết không ạ?)* |
| Phụ trách | <ruby>早<rt>はや</rt></ruby>めに<ruby>出<rt>だ</rt></ruby>したので<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>心配<rt>しんぱい</rt></ruby>いりません。<br>*(Nộp sớm nên ổn. Không cần lo.)* |
| Thức | <ruby>安心<rt>あんしん</rt></ruby>しました。お<ruby>世話<rt>せわ</rt></ruby>になります。<br>*(Em yên tâm rồi. Em làm phiền anh ạ.)* |

---

## Tình huống 16 — Lán nghỉ · ngày khác 12:00, giải thích thủ tục cho đàn em

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>き、<ruby>大変<rt>たいへん</rt></ruby>でしたか?<br>*(Anh Thức, thủ tục Đặc định kỹ năng có vất vả không ạ?)* |
| Thức | <ruby>書類<rt>しょるい</rt></ruby>は<ruby>多<rt>おお</rt></ruby>いけど、<ruby>会社<rt>かいしゃ</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>ってくれた。<br>*(Giấy tờ nhiều nhưng công ty hỗ trợ.)* |
| Nam | <ruby>試験<rt>しけん</rt></ruby>に<ruby>受<rt>う</rt></ruby>からないとだめですよね?<br>*(Phải đỗ thi mới được phải không ạ?)* |
| Thức | そう。だから<ruby>今<rt>いま</rt></ruby>の<ruby>実習<rt>じっしゅう</rt></ruby>を<ruby>真剣<rt>しんけん</rt></ruby>にやれ。それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>だ。<br>*(Đúng. Nên làm thực tập bây giờ nghiêm túc. Đó là chuẩn bị tốt nhất.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>今<rt>いま</rt></ruby>から<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em hiểu rồi. Từ giờ em cố gắng ạ.)* |
| Thức | <ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>に<ruby>聞<rt>き</rt></ruby>け。<ruby>先<rt>さき</rt></ruby>に<ruby>経験<rt>けいけん</rt></ruby>したから<ruby>教<rt>おし</rt></ruby>えられる。<br>*(Khó khăn cứ hỏi anh. Anh trải qua trước nên chỉ được.)* |

---

## Tình huống 17 — Công trường · 14:00, 親方 nói về kỳ vọng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>になったら<ruby>戦力<rt>せんりょく</rt></ruby>だ。<ruby>頼<rt>たよ</rt></ruby>りにしてるぞ。<br>*(Thức, thành Đặc định kỹ năng là lực lượng chính. Tôi trông cậy đấy.)* |
| Thức | はい、<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます。<br>*(Vâng, cháu sẽ đáp lại kỳ vọng ạ.)* |
| Tanigawa | <ruby>実習生<rt>じっしゅうせい</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>う。<ruby>判断<rt>はんだん</rt></ruby>も<ruby>任<rt>まか</rt></ruby>せる。<br>*(Khác thực tập sinh. Tôi giao cả quyết định.)* |
| Thức | <ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってやります。<br>*(Cháu sẽ làm với trách nhiệm ạ.)* |
| Tanigawa | その<ruby>覚悟<rt>かくご</rt></ruby>があれば<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Có quyết tâm đó là đủ.)* |
| Thức | ありがとうございます。<br>*(Cháu cảm ơn ạ.)* |

---

## Tình huống 18 — Văn phòng · ngày khác 10:00, nhận kết quả được duyệt

| Vai | Lời thoại |
|---|---|
| Phụ trách | トゥックさん、<ruby>朗報<rt>ろうほう</rt></ruby>です。<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>、<ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りました。<br>*(Anh Thức, tin vui. Đặc định kỹ năng đã được cấp phép.)* |
| Thức | <ruby>本当<rt>ほんとう</rt></ruby>ですか!ありがとうございます。<br>*(Thật ạ! Cảm ơn anh ạ.)* |
| Phụ trách | <ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードができます。<br>*(Thẻ lưu trú mới sẽ được làm.)* |
| Thức | これで<ruby>続<rt>つづ</rt></ruby>けて<ruby>働<rt>はたら</rt></ruby>けます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Thế này em làm tiếp được. Em vui thật sự ạ.)* |
| Phụ trách | これからも<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Sau này cũng cố gắng nhé.)* |
| Thức | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>働<rt>はたら</rt></ruby>きます。<br>*(Vâng, em sẽ làm hết sức ạ.)* |

---

## Tình huống 19 — Công trường · 17:00, 親方 chúc mừng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>許可<rt>きょか</rt></ruby><ruby>下<rt>お</rt></ruby>りたって?おめでとう。<br>*(Thức, nghe nói được cấp phép? Chúc mừng.)* |
| Thức | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Cảm ơn chú ạ. Nhờ mọi người ạ.)* |
| Tanigawa | これからは<ruby>仲間<rt>なかま</rt></ruby>として<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けるな。<br>*(Từ giờ là đồng đội, làm lâu dài được nhỉ.)* |
| Thức | はい。もっと<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てるよう<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Cháu sẽ cố gắng để có ích hơn ạ.)* |
| Tanigawa | <ruby>次<rt>つぎ</rt></ruby>は<ruby>班長<rt>はんちょう</rt></ruby>だ。<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>覚<rt>おぼ</rt></ruby>えていけ。<br>*(Tiếp theo là tổ trưởng. Cứ học dần đi.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chú chỉ bảo ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, đặc định kỹ năng duyệt rồi à? Mừng cho em. |
| Thức | Vâng anh. Em ở lại tiếp được rồi. Lương chuyển sang trả theo tháng, ổn định hơn nhiều. |
| Long | Tốt đấy. Nghề xây dựng giờ quy củ hơn xưa, lương tháng đỡ bấp bênh. |
| Thức | Em định hướng tới số 2 để làm lâu dài. 親方 bảo sẽ tập cho em làm tổ trưởng. |
| Long | Được công ty tin tới mức đó là quý lắm. Cứ giữ cái tâm biết ơn như giờ. |
| Thức | Vâng. Em không quên ai đã giúp em những ngày đầu đâu anh. |

---

## Đọng lại

Thức hoàn tất chuyển từ thực tập kỹ năng sang Đặc định kỹ năng ngành xây dựng: hiểu điều kiện, đoàn thể JAC, thẻ CCUS, chế độ lương tháng và thời hạn lưu trú số 1 - số 2. Em được công ty tin tưởng giữ lại như lực lượng chính, và hướng tới số 2 với mục tiêu làm tổ trưởng. (Các quy định trong chương đúng tại thời điểm 2026, có thể thay đổi theo chính sách.) Thức giữ vững cái tâm biết ơn — không quên những người đã giúp mình.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 特定技能 | とくていぎのう | Đặc định kỹ năng (tư cách lưu trú) |
> | 技能実習 | ぎのうじっしゅう | Thực tập kỹ năng |
> | 修了 | しゅうりょう | Hoàn thành (chương trình) |
> | 免除 | めんじょ | Miễn (thi, nghĩa vụ) |
> | JAC | じゃっく | Đoàn thể nhân lực kỹ năng xây dựng |
> | 加入 | かにゅう | Gia nhập |
> | CCUS | しーしーゆーえす | Hệ thống nâng cấp sự nghiệp xây dựng |
> | 月給制 | げっきゅうせい | Chế độ lương tháng |
> | 待遇 | たいぐう | Đãi ngộ |
> | 通算 | つうさん | Tổng cộng (thời gian) |
> | 雇用契約書 | こようけいやくしょ | Hợp đồng lao động |
> | 登録支援機関 | とうろくしえんきかん | Tổ chức hỗ trợ đăng ký |
> | 脱退一時金 | だったいいちじきん | Khoản hoàn một lần (lương hưu) |
> | 入管 | にゅうかん | Cục xuất nhập cảnh |
> | 戦力 | せんりょく | Lực lượng (lao động) chính |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000008, 800000035, NULL, 'markdown_book', 'T8. Lương tháng và trả xong nợ (月給と借金完済)', '# Sách thực tập sinh xây dựng · T8. Lương tháng và trả xong nợ (月給と借金完済)

> **Mục tiêu nhân vật:** Thức nhận lương tháng theo chế độ mới, lập kế hoạch chi tiêu, trả xong khoản nợ chi phí đi Nhật. Học mẫu câu nghiệp vụ và đời thường khi trao đổi về bảng lương, hỏi kế toán, ra ngân hàng gửi tiền, lập kế hoạch tài chính. Mặt nợ/áp lực được xử lý cân bằng, không bi lụy.

---

## Bối cảnh

Tháng 11 năm 2028. Thức đã chuyển sang 特定技能 với chế độ lương tháng. Thu nhập ổn định hơn giúp em hoàn tất trả nốt khoản nợ chi phí sang Nhật (vay lúc đi). Đây không phải câu chuyện bi lụy mà là một cột mốc nhẹ nhõm, có kế hoạch. Chương này tập trung mẫu câu nghiệp vụ về bảng lương (給与明細), hỏi kế toán, giao dịch ngân hàng, lập kế hoạch tài chính cá nhân.

---

## Tình huống 1 — Văn phòng · 17:00, nhận bảng lương tháng đầu tiên

| Vai | Lời thoại |
|---|---|
| Kế toán | トゥックさん、<ruby>今月<rt>こんげつ</rt></ruby>の<ruby>給与<rt>きゅうよ</rt></ruby><ruby>明細<rt>めいさい</rt></ruby>です。<br>*(Anh Thức, bảng lương tháng này.)* |
| Thức | ありがとうございます。<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Cảm ơn chị ạ. Cho em xác nhận ạ.)* |
| Kế toán | <ruby>分<rt>わ</rt></ruby>からないところがあれば<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Có chỗ không hiểu thì hỏi nhé.)* |
| Thức | <ruby>先月<rt>せんげつ</rt></ruby>より<ruby>安定<rt>あんてい</rt></ruby>していますね。<ruby>月給<rt>げっきゅう</rt></ruby><ruby>制<rt>せい</rt></ruby>のおかげですか?<br>*(Ổn định hơn tháng trước nhỉ. Nhờ chế độ lương tháng ạ?)* |
| Kế toán | そうです。<ruby>天候<rt>てんこう</rt></ruby>で<ruby>休<rt>やす</rt></ruby>んでも<ruby>基本<rt>きほん</rt></ruby><ruby>給<rt>きゅう</rt></ruby>は<ruby>変<rt>か</rt></ruby>わりません。<br>*(Đúng. Nghỉ do thời tiết thì lương cơ bản không đổi.)* |
| Thức | <ruby>計画<rt>けいかく</rt></ruby>が<ruby>立<rt>た</rt></ruby>てやすくて<ruby>助<rt>たす</rt></ruby>かります。<br>*(Dễ lên kế hoạch nên đỡ quá ạ.)* |

---

## Tình huống 2 — Văn phòng · 17:10, hỏi kế toán về các khoản khấu trừ

| Vai | Lời thoại |
|---|---|
| Thức | この「<ruby>控除<rt>こうじょ</rt></ruby>」は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Mục "khấu trừ" này là gì ạ?)* |
| Kế toán | <ruby>所得<rt>しょとく</rt></ruby><ruby>税<rt>ぜい</rt></ruby>、<ruby>住民<rt>じゅうみん</rt></ruby><ruby>税<rt>ぜい</rt></ruby>、<ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby><ruby>料<rt>りょう</rt></ruby>です。<br>*(Thuế thu nhập, thuế cư trú, phí bảo hiểm xã hội.)* |
| Thức | <ruby>社会<rt>しゃかい</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>には<ruby>何<rt>なに</rt></ruby>が<ruby>含<rt>ふく</rt></ruby>まれますか?<br>*(Bảo hiểm xã hội gồm những gì ạ?)* |
| Kế toán | <ruby>健康<rt>けんこう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>、<ruby>厚生<rt>こうせい</rt></ruby><ruby>年金<rt>ねんきん</rt></ruby>、<ruby>雇用<rt>こよう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>です。<br>*(Bảo hiểm y tế, lương hưu phúc lợi, bảo hiểm việc làm.)* |
| Thức | <ruby>病気<rt>びょうき</rt></ruby>のときは<ruby>健康<rt>けんこう</rt></ruby><ruby>保険<rt>ほけん</rt></ruby>が<ruby>使<rt>つか</rt></ruby>えますね。<br>*(Lúc ốm thì dùng được bảo hiểm y tế nhỉ.)* |
| Kế toán | はい、<ruby>三割<rt>さんわり</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>で<ruby>済<rt>す</rt></ruby>みます。<ruby>大事<rt>だいじ</rt></ruby>な<ruby>制度<rt>せいど</rt></ruby>です。<br>*(Vâng, chỉ phải trả 30%. Là chế độ quan trọng.)* |

---

## Tình huống 3 — Lán nghỉ · 12:00, bàn chuyện trả nợ với Hùng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, tháng này lương tháng rồi nhỉ. Mày tính trả hết nợ chưa? |
| Thức | Ừ, tháng sau là anh trả nốt khoản cuối. Nhẹ cả người. |
| Hùng | Mừng cho mày. Tao còn vài tháng nữa. |
| Thức | Cứ chia đều ra mà trả, đừng dồn một lúc. Tao làm bảng kế hoạch, theo từng tháng. |
| Hùng | Mày kỹ thật. Cho tao xem cái bảng đó với. |
| Thức | Được, tối về tao chỉ. Lương ổn định rồi thì tính toán dễ hơn nhiều. |

---

## Tình huống 4 — Ngân hàng · 13:00, hỏi nhân viên về chuyển khoản

| Vai | Lời thoại |
|---|---|
| Thức | すみません、ベトナムへ<ruby>送金<rt>そうきん</rt></ruby>したいのですが。<br>*(Xin lỗi, em muốn chuyển tiền về Việt Nam ạ.)* |
| Nhân viên | <ruby>海外<rt>かいがい</rt></ruby><ruby>送金<rt>そうきん</rt></ruby>ですね。<ruby>口座<rt>こうざ</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>はお<ruby>持<rt>も</rt></ruby>ちですか?<br>*(Chuyển tiền ra nước ngoài nhỉ. Anh có số tài khoản chưa?)* |
| Thức | はい、<ruby>家族<rt>かぞく</rt></ruby>の<ruby>口座<rt>こうざ</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきました。<br>*(Vâng, em mang thông tin tài khoản của gia đình ạ.)* |
| Nhân viên | <ruby>手数料<rt>てすうりょう</rt></ruby>がかかります。よろしいですか?<br>*(Sẽ có phí giao dịch. Anh đồng ý chứ?)* |
| Thức | <ruby>手数料<rt>てすうりょう</rt></ruby>はいくらですか?<br>*(Phí giao dịch bao nhiêu ạ?)* |
| Nhân viên | <ruby>金額<rt>きんがく</rt></ruby>によります。こちらの<ruby>表<rt>ひょう</rt></ruby>をご<ruby>覧<rt>らん</rt></ruby>ください。<br>*(Tùy số tiền. Anh xem bảng này.)* |

---

## Tình huống 5 — Ngân hàng · 13:15, hoàn tất giao dịch gửi tiền

| Vai | Lời thoại |
|---|---|
| Thức | この<ruby>金額<rt>きんがく</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em gửi số tiền này ạ.)* |
| Nhân viên | かしこまりました。<ruby>用紙<rt>ようし</rt></ruby>にご<ruby>記入<rt>きにゅう</rt></ruby>ください。<br>*(Vâng. Anh điền vào tờ này.)* |
| Thức | (điền) ……できました。これでいいですか?<br>*(...Xong rồi ạ. Thế này được không ạ?)* |
| Nhân viên | はい、<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>到着<rt>とうちゃく</rt></ruby>は<ruby>二<rt>に</rt></ruby>、<ruby>三日<rt>みっか</rt></ruby><ruby>後<rt>ご</rt></ruby>です。<br>*(Vâng, đã xác nhận. Tiền đến sau 2, 3 ngày.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em hiểu rồi. Cảm ơn chị ạ.)* |
| Nhân viên | <ruby>控<rt>ひか</rt></ruby>えをお<ruby>渡<rt>わた</rt></ruby>しします。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>してください。<br>*(Tôi đưa anh liên giữ. Bảo quản cẩn thận nhé.)* |

---

## Tình huống 6 — Ký túc xá · 19:00, lập bảng kế hoạch chi tiêu

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, bảng kế hoạch của mày làm sao đây? |
| Thức | Đầu tiên ghi lương tháng. Rồi trừ tiền nhà, ăn, điện thoại. |
| Hùng | Còn lại thì sao? |
| Thức | Anh chia ba: trả nợ, gửi về nhà, để dành. Tháng nào cũng như nhau. |
| Hùng | Hay đấy. Vậy là không tiêu lung tung. |
| Thức | Đúng. Lương tháng ổn định nên cứ theo bảng là yên tâm. |

---

## Tình huống 7 — Văn phòng · 17:00, hỏi kế toán về tiền thưởng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>賞与<rt>しょうよ</rt></ruby>はありますか?<br>*(Có tiền thưởng không ạ?)* |
| Kế toán | はい、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>業績<rt>ぎょうせき</rt></ruby>によりますが、<ruby>年<rt>ねん</rt></ruby><ruby>二回<rt>にかい</rt></ruby>あります。<br>*(Có, tùy kết quả kinh doanh nhưng một năm hai lần.)* |
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>でももらえますか?<br>*(Đặc định kỹ năng cũng được nhận ạ?)* |
| Kế toán | はい、<ruby>日本人<rt>にほんじん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>基準<rt>きじゅん</rt></ruby>です。<br>*(Có, cùng tiêu chuẩn với người Nhật.)* |
| Thức | それは<ruby>励<rt>はげ</rt></ruby>みになります。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cái đó là động lực ạ. Em sẽ cố gắng.)* |
| Kế toán | <ruby>真面目<rt>まじめ</rt></ruby>に<ruby>働<rt>はたら</rt></ruby>けば<ruby>評価<rt>ひょうか</rt></ruby>されますよ。<br>*(Làm việc nghiêm túc thì được đánh giá đấy.)* |

---

## Tình huống 8 — Ký túc xá · 20:00, trả khoản nợ cuối cùng

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, hôm nay mày chuyển nốt khoản cuối à? |
| Thức | Ừ, vừa xong. Hết nợ chi phí đi Nhật rồi. |
| Hùng | Cảm giác sao? |
| Thức | Nhẹ lắm. Hai năm rưỡi mới xong, nhưng làm đều thì cũng tới. |
| Hùng | Mừng cho mày thật. Giờ tiền làm ra là của mình rồi. |
| Thức | Ừ. Nhưng tao không tiêu hoang đâu, vẫn để dành như cũ. |

---

## Tình huống 9 — Công trường · 12:30, 先輩 hỏi chuyện tài chính

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>借金<rt>しゃっきん</rt></ruby><ruby>返<rt>かえ</rt></ruby>し<ruby>終<rt>お</rt></ruby>わったって?<br>*(Thức, nghe nói trả hết nợ rồi?)* |
| Thức | はい、<ruby>先週<rt>せんしゅう</rt></ruby><ruby>完済<rt>かんさい</rt></ruby>しました。<br>*(Vâng, tuần trước em trả xong rồi ạ.)* |
| Kondo | よかったな。これからは<ruby>貯金<rt>ちょきん</rt></ruby>だな。<br>*(Tốt nhỉ. Từ giờ là tiết kiệm nhỉ.)* |
| Thức | はい、<ruby>毎月<rt>まいつき</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ<ruby>貯<rt>た</rt></ruby>めています。<br>*(Vâng, mỗi tháng em để dành một ít ạ.)* |
| Kondo | <ruby>計画<rt>けいかく</rt></ruby><ruby>的<rt>てき</rt></ruby>だな。<ruby>無駄遣<rt>むだづか</rt></ruby>いするなよ。<br>*(Có kế hoạch nhỉ. Đừng tiêu phí nhé.)* |
| Thức | はい、<ruby>必要<rt>ひつよう</rt></ruby>なものだけ<ruby>買<rt>か</rt></ruby>います。<br>*(Vâng, em chỉ mua thứ cần thiết ạ.)* |

---

## Tình huống 10 — Văn phòng · 17:00, hỏi về khai thuế cuối năm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>年末<rt>ねんまつ</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>というのは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Điều chỉnh thuế cuối năm là gì ạ?)* |
| Kế toán | <ruby>一年<rt>いちねん</rt></ruby>の<ruby>税金<rt>ぜいきん</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>し<ruby>直<rt>なお</rt></ruby>す<ruby>手続<rt>てつづ</rt></ruby>きです。<br>*(Là thủ tục tính lại thuế cả năm.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をすればいいですか?<br>*(Em cần làm gì ạ?)* |
| Kế toán | この<ruby>書類<rt>しょるい</rt></ruby>に<ruby>記入<rt>きにゅう</rt></ruby>してください。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby>も<ruby>要<rt>い</rt></ruby>ります。<br>*(Điền vào giấy này. Cần cả thông tin gia đình.)* |
| Thức | <ruby>送金<rt>そうきん</rt></ruby>している<ruby>家族<rt>かぞく</rt></ruby>も<ruby>書<rt>か</rt></ruby>けますか?<br>*(Gia đình em gửi tiền về có ghi được không ạ?)* |
| Kế toán | <ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たせば<ruby>控除<rt>こうじょ</rt></ruby>になります。<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Đủ điều kiện thì được khấu trừ. Tôi giải thích nhé.)* |

---

## Tình huống 11 — Lán nghỉ · 12:00, khuyên đàn em quản lý tiền (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, em mới sang, chưa biết quản lý tiền. Anh chỉ em với. |
| Thức | Quan trọng nhất là ghi lại. Tiêu gì cũng ghi vào sổ. |
| Nam | Em hay tiêu lặt vặt rồi không nhớ. |
| Thức | Cái đó ai cũng vậy lúc đầu. Cứ ghi một tuần là thấy mình tiêu vào đâu. |
| Nam | Vâng. Em sẽ làm bảng kế hoạch như anh. |
| Thức | Ừ, từ từ thôi. Đừng để nợ đè nặng, cứ trả đều là ổn. |

---

## Tình huống 12 — Cửa hàng · 18:00, mua đồ thiết yếu, cân nhắc chi tiêu

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、これ<ruby>買<rt>か</rt></ruby>おうか<ruby>迷<rt>まよ</rt></ruby>っています。<br>*(Anh Thức, em đang phân vân có nên mua cái này không.)* |
| Thức | それ、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>?<ruby>仕事<rt>しごと</rt></ruby>で<ruby>使<rt>つか</rt></ruby>う?<br>*(Cái đó thật sự cần không? Dùng cho việc không?)* |
| Nam | <ruby>仕事<rt>しごと</rt></ruby>ではないですが、<ruby>欲<rt>ほ</rt></ruby>しくて。<br>*(Không phải cho việc, nhưng em thích.)* |
| Thức | <ruby>一日<rt>いちにち</rt></ruby><ruby>考<rt>かんが</rt></ruby>えてみたら?それでも<ruby>欲<rt>ほ</rt></ruby>しければ<ruby>買<rt>か</rt></ruby>えばいい。<br>*(Thử nghĩ một ngày xem? Vẫn thích thì hãy mua.)* |
| Nam | なるほど。<ruby>衝動<rt>しょうどう</rt></ruby><ruby>買<rt>が</rt></ruby>いを<ruby>防<rt>ふせ</rt></ruby>げますね。<br>*(Ra vậy. Tránh được mua bốc đồng nhỉ.)* |
| Thức | そう。<ruby>急<rt>いそ</rt></ruby>がなければ<ruby>無駄遣<rt>むだづか</rt></ruby>いが<ruby>減<rt>へ</rt></ruby>る。<br>*(Đúng. Không vội thì bớt tiêu phí.)* |

---

## Tình huống 13 — Văn phòng · 17:00, hỏi về tăng lương khi lên tay nghề

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>技能<rt>ぎのう</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がると<ruby>給料<rt>きゅうりょう</rt></ruby>も<ruby>上<rt>あ</rt></ruby>がりますか?<br>*(Tay nghề lên thì lương cũng lên không ạ?)* |
| Kế toán | はい、<ruby>資格<rt>しかく</rt></ruby>や<ruby>経験<rt>けいけん</rt></ruby>で<ruby>昇給<rt>しょうきゅう</rt></ruby>があります。<br>*(Có, theo chứng chỉ và kinh nghiệm thì có tăng lương.)* |
| Thức | CCUSの<ruby>記録<rt>きろく</rt></ruby>も<ruby>関係<rt>かんけい</rt></ruby>しますか?<br>*(Ghi nhận CCUS có liên quan không ạ?)* |
| Kế toán | <ruby>関係<rt>かんけい</rt></ruby>します。<ruby>経験<rt>けいけん</rt></ruby>が<ruby>見<rt>み</rt></ruby>えると<ruby>評価<rt>ひょうか</rt></ruby>しやすいです。<br>*(Có liên quan. Kinh nghiệm thấy rõ thì dễ đánh giá.)* |
| Thức | では、しっかり<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>します。<br>*(Vậy em sẽ ghi lại kỹ ạ.)* |
| Kế toán | いい<ruby>心<rt>こころ</rt></ruby>がけです。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>くほど<ruby>有利<rt>ゆうり</rt></ruby>です。<br>*(Suy nghĩ tốt. Làm càng lâu càng có lợi.)* |

---

## Tình huống 14 — Ký túc xá · 19:00, lập kế hoạch tiết kiệm dài hạn

| Vai | Lời thoại |
|---|---|
| Hùng | Thức, hết nợ rồi mày để dành tính làm gì? |
| Thức | Tao chưa quyết hẳn. Một phần phòng thân, một phần gửi về cho nhà sửa lại bếp. |
| Hùng | Mày không tính chuyện riêng à? |
| Thức | Giờ tao tập trung nghề đã. Tiền để dành để sau này có vốn, chưa vội. |
| Hùng | Tao thấy mày tính xa thật. |
| Thức | Cứ chắc từng bước thôi. Không cần giàu nhanh, cần đều và bền. |

---

## Tình huống 15 — Công trường · 12:30, 親方 hỏi chuyện cuộc sống

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>生活<rt>せいかつ</rt></ruby>は<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いたか?<br>*(Thức, cuộc sống ổn định chưa?)* |
| Thức | はい、<ruby>借金<rt>しゃっきん</rt></ruby>も<ruby>返<rt>かえ</rt></ruby>し<ruby>終<rt>お</rt></ruby>わって<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Vâng, trả xong nợ rồi nên nhẹ hơn ạ.)* |
| Tanigawa | そうか。<ruby>無理<rt>むり</rt></ruby>して<ruby>働<rt>はたら</rt></ruby>きすぎるなよ。<ruby>体<rt>からだ</rt></ruby>が<ruby>資本<rt>しほん</rt></ruby>だ。<br>*(Vậy à. Đừng gắng làm quá. Sức khỏe là vốn.)* |
| Thức | はい、<ruby>休<rt>やす</rt></ruby>みもちゃんと<ruby>取<rt>と</rt></ruby>っています。<br>*(Vâng, cháu cũng nghỉ ngơi đầy đủ ạ.)* |
| Tanigawa | それでいい。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>くなら<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にな。<br>*(Thế là được. Làm lâu dài thì giữ sức khỏe nhé.)* |
| Thức | ありがとうございます。<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Cảm ơn chú ạ. Cháu sẽ chú ý.)* |

---

## Tình huống 16 — Văn phòng · 17:00, kế toán giải thích bảng lương chi tiết

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>支給<rt>しきゅう</rt></ruby><ruby>額<rt>がく</rt></ruby>と<ruby>差<rt>さ</rt></ruby>し<ruby>引<rt>ひ</rt></ruby>き<ruby>支給<rt>しきゅう</rt></ruby><ruby>額<rt>がく</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いは?<br>*(Khác nhau giữa số tiền chi trả và số tiền thực nhận là gì ạ?)* |
| Kế toán | <ruby>支給<rt>しきゅう</rt></ruby><ruby>額<rt>がく</rt></ruby>は<ruby>全体<rt>ぜんたい</rt></ruby>、<ruby>差<rt>さ</rt></ruby>し<ruby>引<rt>ひ</rt></ruby>きは<ruby>控除<rt>こうじょ</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>手取<rt>てど</rt></ruby>りです。<br>*(Tiền chi trả là tổng, số khấu trừ là tiền thực lĩnh sau trừ.)* |
| Thức | <ruby>手取<rt>てど</rt></ruby>りが<ruby>実際<rt>じっさい</rt></ruby>もらえる<ruby>金額<rt>きんがく</rt></ruby>ですね。<br>*(Tiền thực lĩnh là số thực sự nhận được nhỉ.)* |
| Kế toán | そうです。そこを<ruby>基準<rt>きじゅん</rt></ruby>に<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>ててください。<br>*(Đúng. Lập kế hoạch dựa trên cái đó.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>明細<rt>めいさい</rt></ruby>は<ruby>毎月<rt>まいつき</rt></ruby><ruby>保管<rt>ほかん</rt></ruby>します。<br>*(Em hiểu rồi. Bảng lương em sẽ giữ mỗi tháng ạ.)* |
| Kế toán | いい<ruby>習慣<rt>しゅうかん</rt></ruby>です。<ruby>後<rt>あと</rt></ruby>で<ruby>必要<rt>ひつよう</rt></ruby>になることもあります。<br>*(Thói quen tốt. Có lúc về sau cần đến đấy.)* |

---

## Tình huống 17 — Lán nghỉ · 12:00, đàn em hỏi về gửi tiền về nhà

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>毎月<rt>まいつき</rt></ruby><ruby>家<rt>いえ</rt></ruby>に<ruby>送<rt>おく</rt></ruby>っていますか?<br>*(Anh Thức, mỗi tháng anh gửi về nhà ạ?)* |
| Thức | うん。でも<ruby>無理<rt>むり</rt></ruby>はしない。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>分<rt>ぶん</rt></ruby>も<ruby>残<rt>のこ</rt></ruby>す。<br>*(Ừ. Nhưng không gắng. Cũng để lại phần mình.)* |
| Nam | <ruby>家族<rt>かぞく</rt></ruby>に<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>送<rt>おく</rt></ruby>る<ruby>人<rt>ひと</rt></ruby>もいますよね。<br>*(Cũng có người gửi hết về cho gia đình nhỉ.)* |
| Thức | <ruby>気持<rt>きも</rt></ruby>ちは<ruby>分<rt>わ</rt></ruby>かる。でも<ruby>自分<rt>じぶん</rt></ruby>が<ruby>倒<rt>たお</rt></ruby>れたら<ruby>困<rt>こま</rt></ruby>るのは<ruby>家族<rt>かぞく</rt></ruby>だ。<br>*(Anh hiểu cái tâm lý đó. Nhưng mình gục thì gia đình mới khổ.)* |
| Nam | そうですね。バランスが<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Đúng nhỉ. Cân bằng là quan trọng.)* |
| Thức | そう。<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けるには<ruby>無理<rt>むり</rt></ruby>しないことだ。<br>*(Đúng. Để duy trì lâu thì đừng gắng quá.)* |

---

## Tình huống 18 — Văn phòng · 17:00, kế toán khen cách Thức quản lý

| Vai | Lời thoại |
|---|---|
| Kế toán | トゥックさんは<ruby>明細<rt>めいさい</rt></ruby>をよく<ruby>確認<rt>かくにん</rt></ruby>しますね。<br>*(Anh Thức kiểm tra bảng lương kỹ nhỉ.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>の<ruby>お金<rt>かね</rt></ruby>のことなので、<ruby>知<rt>し</rt></ruby>っておきたいです。<br>*(Vì là tiền của em nên em muốn biết rõ ạ.)* |
| Kế toán | <ruby>感心<rt>かんしん</rt></ruby>です。<ruby>分<rt>わ</rt></ruby>からないまま<ruby>過<rt>す</rt></ruby>ごす<ruby>人<rt>ひと</rt></ruby>も<ruby>多<rt>おお</rt></ruby>いです。<br>*(Đáng khen. Nhiều người cứ để mơ hồ qua ngày.)* |
| Thức | <ruby>聞<rt>き</rt></ruby>けば<ruby>教<rt>おし</rt></ruby>えてもらえるので<ruby>助<rt>たす</rt></ruby>かります。<br>*(Hỏi thì được chỉ nên em đỡ ạ.)* |
| Kế toán | <ruby>何<rt>なん</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いてください。それが<ruby>私<rt>わたし</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Có gì cứ hỏi. Đó là việc của tôi.)* |
| Thức | ありがとうございます。<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Cảm ơn chị ạ. Em vững tâm ạ.)* |

---

## Tình huống 19 — Công trường · 17:00, 親方 nói về tương lai tài chính

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>借金<rt>しゃっきん</rt></ruby>がなくなって<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は?<br>*(Thức, hết nợ rồi mục tiêu tiếp là gì?)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>しずつ<ruby>貯<rt>た</rt></ruby>めて、<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>をしたいです。<br>*(Cháu muốn để dành dần, chuẩn bị cho tương lai ạ.)* |
| Tanigawa | いい<ruby>考<rt>かんが</rt></ruby>えだ。<ruby>技能<rt>ぎのう</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>けば<ruby>収入<rt>しゅうにゅう</rt></ruby>も<ruby>増<rt>ふ</rt></ruby>える。<br>*(Suy nghĩ tốt. Mài giũa tay nghề thì thu nhập cũng tăng.)* |
| Thức | はい、<ruby>仕事<rt>しごと</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>の<ruby>財産<rt>ざいさん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>います。<br>*(Vâng, cháu nghĩ công việc là tài sản lớn nhất ạ.)* |
| Tanigawa | <ruby>分<rt>わ</rt></ruby>かってるじゃないか。その<ruby>姿勢<rt>しせい</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けろ。<br>*(Hiểu rồi đấy. Cứ thái độ đó mà tiếp tục.)* |
| Thức | はい、<ruby>地道<rt>じみち</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, cháu sẽ cố gắng chắc chắn từng bước ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:30, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói trả hết nợ rồi à? Mừng cho em. |
| Thức | Vâng anh. Lương chuyển sang tháng, ổn định nên trả nốt được. Nhẹ cả người. |
| Long | Hồi đầu khoản đó đè nặng nhỉ. Giờ qua rồi thì cứ từ tốn để dành. |
| Thức | Em vẫn giữ bảng kế hoạch như cũ. Một phần phòng thân, một phần gửi nhà. |
| Long | Đúng bài. Đừng vì hết nợ mà tiêu hoang, cũng đừng ép mình quá. |
| Thức | Vâng. Em chỉ mong làm đều, sức khỏe tốt, từ từ là được anh ạ. |

---

## Đọng lại

Chế độ lương tháng của 特定技能 giúp Thức có thu nhập ổn định, hoàn tất trả nốt khoản nợ chi phí đi Nhật sau hai năm rưỡi. Em hiểu rõ bảng lương, các khoản khấu trừ, giao dịch ngân hàng, và duy trì bảng kế hoạch chi tiêu kỷ luật. Cột mốc trả xong nợ được kể nhẹ nhõm, không bi lụy — Thức không tiêu hoang, không gắng kiệt sức, hướng tới mục tiêu "làm đều và bền", coi tay nghề là tài sản lớn nhất.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 給与明細 | きゅうよめいさい | Bảng lương |
> | 控除 | こうじょ | Khấu trừ |
> | 所得税 | しょとくぜい | Thuế thu nhập |
> | 住民税 | じゅうみんぜい | Thuế cư trú |
> | 社会保険 | しゃかいほけん | Bảo hiểm xã hội |
> | 厚生年金 | こうせいねんきん | Lương hưu phúc lợi |
> | 海外送金 | かいがいそうきん | Chuyển tiền ra nước ngoài |
> | 手数料 | てすうりょう | Phí giao dịch |
> | 賞与 | しょうよ | Tiền thưởng |
> | 完済 | かんさい | Trả xong (nợ) |
> | 貯金 | ちょきん | Tiết kiệm |
> | 年末調整 | ねんまつちょうせい | Điều chỉnh thuế cuối năm |
> | 手取り | てどり | Tiền lương thực lĩnh |
> | 昇給 | しょうきゅう | Tăng lương |
> | 衝動買い | しょうどうがい | Mua sắm bốc đồng |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000009, 800000035, NULL, 'markdown_book', 'T9. Làm như tổ trưởng nhỏ (小さな班長として)', '# Sách thực tập sinh xây dựng · T9. Làm như tổ trưởng nhỏ (小さな班長として)

> **Mục tiêu nhân vật:** Thức được 親方 giao chỉ huy một tổ nhỏ (3-4 người). Học mẫu câu nghiệp vụ khi phân công công việc, chủ trì KY buổi sáng, báo cáo tiến độ cho 職長, điều phối khi có vấn đề, đánh giá kết quả cuối ngày — ở vị trí người chỉ huy.

---

## Bối cảnh

Tháng 12 năm 2028. Sau khi chuyển 特定技能, 谷川親方 giao Thức làm "tổ trưởng nhỏ" (班長 cấp tổ) chỉ huy một nhóm gồm Nam, một TTS Việt khác và một bác thợ Nhật lớn tuổi cho phần giàn giáo mặt nam. Đây là bước tập làm chỉ huy hướng tới Đặc định kỹ năng số 2. Chương này tập trung mẫu câu nghiệp vụ ở vai trò班長: phân công, chủ trì KY, báo cáo tiến độ, điều phối, tổng kết.

---

## Tình huống 1 — Văn phòng · 7:30, 親方 giao vai trò tổ trưởng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>から<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>が<ruby>仕切<rt>しき</rt></ruby>れ。<ruby>四<rt>よ</rt></ruby><ruby>人<rt>にん</rt></ruby>の<ruby>班<rt>はん</rt></ruby>だ。<br>*(Thức, từ hôm nay mặt nam cậu chỉ huy. Tổ bốn người.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>班長<rt>はんちょう</rt></ruby>ですか?<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか。<br>*(Cháu làm tổ trưởng ạ? Liệu có ổn không ạ.)* |
| Tanigawa | できる。<ruby>段取<rt>だんど</rt></ruby>りと<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>見<rt>み</rt></ruby>ろ。<ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べ。<br>*(Làm được. Lo sắp xếp và an toàn. Khó thì gọi tôi.)* |
| Thức | はい。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってやります。<br>*(Vâng. Cháu sẽ làm với trách nhiệm ạ.)* |
| Tanigawa | <ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>むな。<ruby>班<rt>はん</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>を<ruby>使<rt>つか</rt></ruby>え。<br>*(Đừng ôm hết một mình. Dùng sức của cả tổ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cháu hiểu rồi. Mong chú chỉ bảo ạ.)* |

---

## Tình huống 2 — Công trường · 7:50, chủ trì KY buổi sáng

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>のKYです。<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Mọi người, KY hôm nay. Nguy hiểm mặt nam là gì?)* |
| Nam | <ruby>足場<rt>あしば</rt></ruby>が<ruby>高<rt>たか</rt></ruby>いので<ruby>落下<rt>らっか</rt></ruby><ruby>危険<rt>きけん</rt></ruby>です。<br>*(Giàn giáo cao nên nguy cơ rơi ạ.)* |
| Bác thợ | <ruby>朝<rt>あさ</rt></ruby>は<ruby>露<rt>つゆ</rt></ruby>で<ruby>滑<rt>すべ</rt></ruby>るな。<br>*(Sáng có sương trơn đấy.)* |
| Thức | <ruby>対策<rt>たいさく</rt></ruby>は、フック<ruby>常時<rt>じょうじ</rt></ruby><ruby>使用<rt>しよう</rt></ruby>と<ruby>足元<rt>あしもと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>です。<ruby>布板<rt>ぬのいた</rt></ruby>も<ruby>拭<rt>ふ</rt></ruby>きます。<br>*(Biện pháp là dùng móc liên tục và kiểm tra chỗ chân. Lau cả ván sàn.)* |
| Bác thợ | よし、それでいこう。<br>*(Được, làm theo thế đi.)* |
| Thức | では、<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>指差<rt>ゆびさ</rt></ruby><ruby>呼称<rt>こしょう</rt></ruby>。「<ruby>今日<rt>きょう</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby>に、よし!」<br>*(Vậy cả tổ chỉ tay hô. "Hôm nay cũng an toàn, OK!")* |

---

## Tình huống 3 — Công trường · 8:00, phân công công việc cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby>を<ruby>決<rt>き</rt></ruby>めます。<ruby>近藤<rt>こんどう</rt></ruby>さんは<ruby>建地<rt>たてじ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てる<ruby>担当<rt>たんとう</rt></ruby>です。<br>*(Phân công hôm nay. Anh Kondo phụ trách dựng cột đứng.)* |
| Kondo | <ruby>了解<rt>りょうかい</rt></ruby>。<br>*(Hiểu rồi.)* |
| Thức | ナムくんは<ruby>材料<rt>ざいりょう</rt></ruby><ruby>運<rt>はこ</rt></ruby>びと<ruby>受<rt>う</rt></ruby>け<ruby>渡<rt>わた</rt></ruby>し。<ruby>無理<rt>むり</rt></ruby>しないで。<br>*(Nam khuân và chuyền vật liệu. Đừng gắng nhé.)* |
| Nam | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu rồi.)* |
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さんは<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>。<ruby>私<rt>わたし</rt></ruby>は<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます。<br>*(Anh Bắc cố định ván sàn. Em quan sát toàn bộ.)* |
| Bác thợ | <ruby>段取<rt>だんど</rt></ruby>りがはっきりしてていいな。<br>*(Phân công rõ ràng, tốt đấy.)* |

---

## Tình huống 4 — Công trường · 9:00, kiểm tra tiến độ và điều chỉnh

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>進<rt>すす</rt></ruby><ruby>み具合<rt>ぐあい</rt></ruby>はどうですか?<br>*(Anh Kondo, tiến độ thế nào ạ?)* |
| Kondo | <ruby>三<rt>さん</rt></ruby><ruby>本目<rt>ぼんめ</rt></ruby>まで<ruby>立<rt>た</rt></ruby>った。<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りだ。<br>*(Dựng tới cây thứ ba rồi. Đúng kế hoạch.)* |
| Thức | <ruby>材料<rt>ざいりょう</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>足<rt>た</rt></ruby>りなくなりそうです。<ruby>追加<rt>ついか</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みます。<br>*(Vật liệu có vẻ sắp thiếu. Em xin bổ sung.)* |
| Kondo | <ruby>早<rt>はや</rt></ruby>めの<ruby>判断<rt>はんだん</rt></ruby>でいいな。<br>*(Phán đoán sớm, tốt đấy.)* |
| Thức | ナムくん、<ruby>倉庫<rt>そうこ</rt></ruby>から<ruby>建地<rt>たてじ</rt></ruby>を<ruby>十<rt>じゅっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>で<ruby>運<rt>はこ</rt></ruby>んで。<br>*(Nam, lấy thêm 10 cây cột đứng từ kho.)* |
| Nam | はい、すぐ<ruby>運<rt>はこ</rt></ruby>びます。<br>*(Vâng, em khuân ngay ạ.)* |

---

## Tình huống 5 — Công trường · 9:30, báo cáo tiến độ cho 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Anh Saito, em báo cáo tiến độ mặt nam ạ.)* |
| Saito | どうだ?<br>*(Sao rồi?)* |
| Thức | <ruby>一層目<rt>いっそうめ</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>、<ruby>二層目<rt>にそうめ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りました。<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Tầng 1 xong, vào tầng 2. Đúng kế hoạch ạ.)* |
| Saito | <ruby>問題<rt>もんだい</rt></ruby>はないか?<br>*(Không có vấn đề gì chứ?)* |
| Thức | <ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>早<rt>はや</rt></ruby>めに<ruby>追加<rt>ついか</rt></ruby><ruby>手配<rt>てはい</rt></ruby>しました。<ruby>遅<rt>おく</rt></ruby>れはありません。<br>*(Em đặt bổ sung vật liệu sớm. Không bị trễ ạ.)* |
| Saito | <ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>めてるな。いい<ruby>班長<rt>はんちょう</rt></ruby>ぶりだ。<br>*(Đoán trước được nhỉ. Làm tổ trưởng tốt đấy.)* |

---

## Tình huống 6 — Công trường · 10:00, xử lý khi thành viên gặp khó

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、ここの<ruby>固定<rt>こてい</rt></ruby>がうまくいきません。<br>*(Anh Thức, chỗ cố định này em làm không được.)* |
| Thức | どれ?……クランプの<ruby>向<rt>む</rt></ruby>きが<ruby>逆<rt>ぎゃく</rt></ruby>だ。こうする。<br>*(Đâu? ...Hướng kẹp ngược rồi. Làm thế này.)* |
| Nam | あ、できました。ありがとうございます。<br>*(À, được rồi. Cảm ơn anh ạ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からないときはすぐ<ruby>聞<rt>き</rt></ruby>いて。<ruby>無理<rt>むり</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めると<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Không hiểu cứ hỏi ngay. Cố làm tiếp thì nguy hiểm.)* |
| Nam | はい。<ruby>聞<rt>き</rt></ruby>きやすくて<ruby>助<rt>たす</rt></ruby>かります。<br>*(Vâng. Dễ hỏi nên em đỡ ạ.)* |
| Thức | <ruby>聞<rt>き</rt></ruby>けるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>だからね。<br>*(Vì hỏi được là an toàn nhất mà.)* |

---

## Tình huống 7 — Công trường · 10:30, điều phối với bác thợ lớn tuổi

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Anh Bắc, nhờ anh cố định ván sàn được không ạ?)* |
| Bác thợ | おう、<ruby>任<rt>まか</rt></ruby>せろ。<ruby>若<rt>わか</rt></ruby>いのに<ruby>仕切<rt>しき</rt></ruby>りがしっかりしてるな。<br>*(Ờ, để đó. Trẻ mà chỉ huy chắc tay đấy.)* |
| Thức | <ruby>経験<rt>けいけん</rt></ruby>のある<ruby>方<rt>かた</rt></ruby>に<ruby>頼<rt>たよ</rt></ruby>れるので<ruby>助<rt>たす</rt></ruby>かります。<br>*(Có người kinh nghiệm để cậy nên em đỡ ạ.)* |
| Bác thợ | いい<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>だ。<ruby>年上<rt>としうえ</rt></ruby>も<ruby>気持<rt>きも</rt></ruby>ちよく<ruby>動<rt>うご</rt></ruby>ける。<br>*(Cách nói hay đấy. Người lớn tuổi cũng làm thoải mái.)* |
| Thức | みなさんの<ruby>力<rt>ちから</rt></ruby>があってこその<ruby>班<rt>はん</rt></ruby>です。<br>*(Có sức của mọi người mới thành tổ ạ.)* |
| Bác thợ | その<ruby>姿勢<rt>しせい</rt></ruby>なら、ついていけるよ。<br>*(Thái độ đó thì theo cậu được.)* |

---

## Tình huống 8 — Lán nghỉ · 12:00, trò chuyện tiếng Việt với đàn em

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, làm tổ trưởng có mệt không ạ? |
| Thức | Mệt đầu hơn mệt tay. Phải để ý cả tổ, lo trước cả vật liệu. |
| Nam | Em thấy anh chỉ huy mà mọi người vẫn vui vẻ nghe. |
| Thức | Tại anh không ra lệnh suông. Anh nhờ, anh giải thích, ai cũng có việc rõ ràng. |
| Nam | Em học được nhiều khi nhìn anh làm. |
| Thức | Sau này em cũng sẽ tới lượt. Cứ quan sát rồi từ từ quen. |

---

## Tình huống 9 — Công trường · 13:00, họp ngắn giữa ngày

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>午前<rt>ごぜん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>進捗<rt>しんちょく</rt></ruby>は<ruby>順調<rt>じゅんちょう</rt></ruby>です。<br>*(Mọi người, buổi sáng vất vả rồi. Tiến độ thuận lợi.)* |
| Kondo | <ruby>午後<rt>ごご</rt></ruby>はどこからだ?<br>*(Chiều bắt đầu từ đâu?)* |
| Thức | <ruby>二層目<rt>にそうめ</rt></ruby>の<ruby>手<rt>て</rt></ruby>すりからです。<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなったら<ruby>知<rt>し</rt></ruby>らせてください。<br>*(Từ lan can tầng 2 ạ. Gió mạnh lên thì báo em.)* |
| Bác thợ | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>無理<rt>むり</rt></ruby>はせんよ。<br>*(Hiểu rồi. Không gắng đâu.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>午後<rt>ごご</rt></ruby>もいきましょう。<br>*(An toàn trên hết, buổi chiều cùng làm nào.)* |
| Nam | はい!<br>*(Vâng!)* |

---

## Tình huống 10 — Công trường · 14:00, quyết định khi thời tiết xấu

| Vai | Lời thoại |
|---|---|
| Bác thợ | トゥック、<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなってきたぞ。<br>*(Thức, gió mạnh lên rồi đấy.)* |
| Thức | <ruby>風速<rt>ふうそく</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。……<ruby>十<rt>じゅう</rt></ruby>メートルを<ruby>超<rt>こ</rt></ruby>えそうです。<br>*(Em kiểm tra tốc độ gió. ...Có vẻ vượt 10 mét.)* |
| Kondo | <ruby>続<rt>つづ</rt></ruby>けるか?<br>*(Làm tiếp không?)* |
| Thức | <ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>中断<rt>ちゅうだん</rt></ruby>します。<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Dừng thao tác trên cao. Em báo tổ trưởng.)* |
| Bác thợ | いい<ruby>判断<rt>はんだん</rt></ruby>だ。<ruby>無理<rt>むり</rt></ruby>すると<ruby>事故<rt>じこ</rt></ruby>だからな。<br>*(Phán đoán tốt. Gắng là tai nạn đấy.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby>が<ruby>最優先<rt>さいゆうせん</rt></ruby>です。<ruby>下<rt>した</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<br>*(An toàn ưu tiên nhất. Em chuyển sang việc ở dưới.)* |

---

## Tình huống 11 — Văn phòng · 14:10, báo cáo và xin chỉ thị 職長

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>いので<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>めました。<br>*(Anh Saito, gió mạnh nên em dừng thao tác trên cao ạ.)* |
| Saito | <ruby>正<rt>ただ</rt></ruby>しい。<ruby>班員<rt>はんいん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>をしてる?<br>*(Đúng. Người trong tổ đang làm gì?)* |
| Thức | <ruby>下<rt>した</rt></ruby>で<ruby>材料<rt>ざいりょう</rt></ruby>の<ruby>整理<rt>せいり</rt></ruby>をさせています。<br>*(Em cho dọn vật liệu ở dưới ạ.)* |
| Saito | <ruby>段取<rt>だんど</rt></ruby>りがいいな。<ruby>風<rt>かぜ</rt></ruby>が<ruby>収<rt>おさ</rt></ruby>まるまでそれで<ruby>頼<rt>たの</rt></ruby>む。<br>*(Sắp xếp tốt. Đến khi gió lặng thì cứ thế nhé.)* |
| Thức | はい。<ruby>収<rt>おさ</rt></ruby>まったらすぐ<ruby>再開<rt>さいかい</rt></ruby>します。<br>*(Vâng. Lặng là em làm tiếp ngay ạ.)* |
| Saito | <ruby>任<rt>まか</rt></ruby>せられるな。<ruby>助<rt>たす</rt></ruby>かるよ。<br>*(Giao được nhỉ. Đỡ ghê.)* |

---

## Tình huống 12 — Công trường · 15:00, gió lặng, tổ chức làm lại

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>風<rt>かぜ</rt></ruby>が<ruby>収<rt>おさ</rt></ruby>まりました。<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>再開<rt>さいかい</rt></ruby>します。<br>*(Mọi người, gió lặng rồi. Tiếp tục thao tác.)* |
| Kondo | <ruby>足場<rt>あしば</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>は?<br>*(Kiểm tra giàn giáo thì sao?)* |
| Thức | <ruby>強風<rt>きょうふう</rt></ruby><ruby>後<rt>ご</rt></ruby>なので<ruby>必<rt>かなら</rt></ruby>ず<ruby>点検<rt>てんけん</rt></ruby>します。<ruby>緩<rt>ゆる</rt></ruby>みがないか<ruby>確認<rt>かくにん</rt></ruby>を。<br>*(Sau gió mạnh nên phải kiểm tra. Xem có lỏng không.)* |
| Bác thợ | <ruby>基本<rt>きほん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れんな、いいぞ。<br>*(Không quên cơ bản, tốt đấy.)* |
| Thức | <ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>分担<rt>ぶんたん</rt></ruby>して<ruby>点検<rt>てんけん</rt></ruby>、それから<ruby>再開<rt>さいかい</rt></ruby>です。<br>*(Cả tổ chia nhau kiểm tra, rồi mới làm tiếp.)* |
| Kondo | <ruby>了解<rt>りょうかい</rt></ruby>。やろう。<br>*(Hiểu rồi. Làm nào.)* |

---

## Tình huống 13 — Công trường · 16:00, khen ngợi thành viên đúng lúc

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>今日<rt>きょう</rt></ruby>の<ruby>材料<rt>ざいりょう</rt></ruby><ruby>運<rt>はこ</rt></ruby>び、テンポがよかったよ。<br>*(Nam, khuân vật liệu hôm nay nhịp tốt đấy.)* |
| Nam | <ruby>本当<rt>ほんとう</rt></ruby>ですか。<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Thật ạ. Em vui ạ.)* |
| Thức | <ruby>先<rt>さき</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んで<ruby>動<rt>うご</rt></ruby>けてた。<ruby>成長<rt>せいちょう</rt></ruby>したな。<br>*(Đoán trước mà làm được. Trưởng thành rồi đấy.)* |
| Nam | トゥックさんの<ruby>指示<rt>しじ</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすかったからです。<br>*(Vì chỉ thị của anh Thức dễ hiểu ạ.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>いさまだ。<ruby>明日<rt>あした</rt></ruby>もこの<ruby>調子<rt>ちょうし</rt></ruby>で。<br>*(Hai bên cùng tốt mà. Mai cũng đà này nhé.)* |
| Nam | はい、<ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Vâng, em cố gắng ạ!)* |

---

## Tình huống 14 — Công trường · 16:30, xử lý mâu thuẫn nhỏ trong tổ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、ナムくんの<ruby>受<rt>う</rt></ruby>け<ruby>渡<rt>わた</rt></ruby>しが<ruby>遅<rt>おそ</rt></ruby>いときがある。<br>*(Thức, có lúc Nam chuyền vật liệu chậm.)* |
| Thức | <ruby>教<rt>おし</rt></ruby>えてくれてありがとうございます。<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cảm ơn anh báo. Em sẽ kiểm tra.)* |
| Thức | (sang Nam) ナムくん、<ruby>受<rt>う</rt></ruby>け<ruby>渡<rt>わた</rt></ruby>しで<ruby>困<rt>こま</rt></ruby>ってることある?<br>*(Nam, có gì khó khi chuyền vật liệu không?)* |
| Nam | <ruby>重<rt>おも</rt></ruby>い<ruby>材料<rt>ざいりょう</rt></ruby>のとき<ruby>少<rt>すこ</rt></ruby>し<ruby>時間<rt>じかん</rt></ruby>がかかります。<br>*(Lúc vật liệu nặng thì hơi mất thời gian ạ.)* |
| Thức | じゃあ<ruby>重<rt>おも</rt></ruby>いものは<ruby>二人<rt>ふたり</rt></ruby>でやろう。<ruby>無理<rt>むり</rt></ruby>させて<ruby>悪<rt>わる</rt></ruby>かった。<br>*(Vậy đồ nặng làm hai người. Bắt em gắng, anh xin lỗi.)* |
| Kondo | なるほど、<ruby>原因<rt>げんいん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かれば<ruby>解決<rt>かいけつ</rt></ruby>できるな。<br>*(Ra vậy, hiểu nguyên nhân thì giải quyết được nhỉ.)* |

---

## Tình huống 15 — Công trường · 17:00, tổng kết cuối ngày với tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>り<ruby>進<rt>すす</rt></ruby>みました。<br>*(Mọi người, hôm nay vất vả rồi. Tiến đúng kế hoạch.)* |
| Bác thợ | <ruby>風<rt>かぜ</rt></ruby>で<ruby>止<rt>と</rt></ruby>めたのに、よく<ruby>追<rt>お</rt></ruby>いついたな。<br>*(Dừng vì gió mà vẫn theo kịp nhỉ.)* |
| Thức | <ruby>下<rt>した</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えたのが<ruby>効<rt>き</rt></ruby>きました。みなさんのおかげです。<br>*(Chuyển sang việc dưới phát huy ạ. Nhờ mọi người ạ.)* |
| Nam | <ruby>明日<rt>あした</rt></ruby>はどこからですか?<br>*(Mai bắt đầu từ đâu ạ?)* |
| Thức | <ruby>二層目<rt>にそうめ</rt></ruby>の<ruby>残<rt>のこ</rt></ruby>りからです。<ruby>朝<rt>あさ</rt></ruby>のKYで<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Từ phần còn lại tầng 2. Xác nhận ở KY sáng nhé.)* |
| Kondo | <ruby>了解<rt>りょうかい</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさん。<br>*(Hiểu rồi. Vất vả rồi.)* |

---

## Tình huống 16 — Văn phòng · 17:15, báo cáo tổng kết cho 親方

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>初<rt>はじ</rt></ruby>めての<ruby>班長<rt>はんちょう</rt></ruby>、どうだった?<br>*(Thức, lần đầu làm tổ trưởng, thế nào?)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しかったですが、<ruby>班<rt>はん</rt></ruby>のみんなに<ruby>助<rt>たす</rt></ruby>けられました。<br>*(Khó nhưng được cả tổ giúp đỡ ạ.)* |
| Tanigawa | <ruby>風<rt>かぜ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>、<ruby>聞<rt>き</rt></ruby>いたぞ。<ruby>正<rt>ただ</rt></ruby>しかった。<br>*(Quyết định lúc gió, tôi nghe rồi. Đúng đấy.)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby>を<ruby>最優先<rt>さいゆうせん</rt></ruby>にしました。<br>*(Cháu ưu tiên an toàn nhất ạ.)* |
| Tanigawa | それでいい。<ruby>班長<rt>はんちょう</rt></ruby>は<ruby>進<rt>すす</rt></ruby>めることより<ruby>守<rt>まも</rt></ruby>ることだ。<br>*(Thế là được. Tổ trưởng là bảo vệ hơn là thúc tiến.)* |
| Thức | <ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。ありがとうございます。<br>*(Cháu khắc cốt ạ. Cảm ơn chú.)* |

---

## Tình huống 17 — Công trường · ngày khác 8:00, KY chủ động hơn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>のKY、<ruby>一人<rt>ひとり</rt></ruby>ずつ<ruby>危険<rt>きけん</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってください。ナムくんから。<br>*(KY hôm nay, từng người nói nguy hiểm. Từ Nam.)* |
| Nam | <ruby>受<rt>う</rt></ruby>け<ruby>渡<rt>わた</rt></ruby>しで<ruby>手<rt>て</rt></ruby>を<ruby>挟<rt>はさ</rt></ruby>む<ruby>危険<rt>きけん</rt></ruby>です。<br>*(Nguy cơ kẹp tay khi chuyền vật liệu ạ.)* |
| Kondo | <ruby>高所<rt>こうしょ</rt></ruby>での<ruby>工具<rt>こうぐ</rt></ruby><ruby>落下<rt>らっか</rt></ruby>だ。<br>*(Rơi dụng cụ trên cao.)* |
| Thức | いいですね。<ruby>全員<rt>ぜんいん</rt></ruby>が<ruby>考<rt>かんが</rt></ruby>えると<ruby>危険<rt>きけん</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<br>*(Tốt đấy. Cả tổ cùng nghĩ thì thấy được nguy hiểm.)* |
| Bác thợ | お<ruby>前<rt>まえ</rt></ruby>のKYは<ruby>全員<rt>ぜんいん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>でいいな。<br>*(KY của cậu cả tổ tham gia, hay đấy.)* |
| Thức | みんなの<ruby>気<rt>き</rt></ruby>づきが<ruby>班<rt>はん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ります。<br>*(Sự để ý của mọi người bảo vệ cả tổ.)* |

---

## Tình huống 18 — Công trường · 11:00, ứng phó sự cố vật tư thiếu

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>布板<rt>ぬのいた</rt></ruby>が<ruby>足<rt>た</rt></ruby>りません。<br>*(Anh Thức, ván sàn thiếu ạ.)* |
| Thức | <ruby>何<rt>なん</rt></ruby><ruby>枚<rt>まい</rt></ruby><ruby>足<rt>た</rt></ruby>りない?<br>*(Thiếu mấy tấm?)* |
| Nam | <ruby>二十<rt>にじゅう</rt></ruby><ruby>枚<rt>まい</rt></ruby>ほどです。<br>*(Khoảng 20 tấm ạ.)* |
| Thức | <ruby>他<rt>ほか</rt></ruby>の<ruby>班<rt>はん</rt></ruby>に<ruby>余<rt>あま</rt></ruby>りがないか<ruby>確認<rt>かくにん</rt></ruby>する。なければ<ruby>職長<rt>しょくちょう</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>だ。<br>*(Anh hỏi tổ khác có dư không. Không thì hỏi tổ trưởng.)* |
| Kondo | <ruby>勝手<rt>かって</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めず<ruby>確認<rt>かくにん</rt></ruby>するんだな。<br>*(Không tự ý làm tiếp mà xác nhận nhỉ.)* |
| Thức | はい。<ruby>足<rt>た</rt></ruby>りないまま<ruby>無理<rt>むり</rt></ruby>に<ruby>組<rt>く</rt></ruby>むのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないので。<br>*(Vâng. Thiếu mà ráng lắp là nguy hiểm nhất ạ.)* |

---

## Tình huống 19 — Lán nghỉ · 17:00, 先輩 nhận xét năng lực chỉ huy

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、お<ruby>前<rt>まえ</rt></ruby>の<ruby>班<rt>はん</rt></ruby>、<ruby>雰囲気<rt>ふんいき</rt></ruby>がいいな。<br>*(Thức, tổ của cậu không khí tốt nhỉ.)* |
| Thức | みんなが<ruby>話<rt>はな</rt></ruby>しやすいようにしているつもりです。<br>*(Em cố tạo để mọi người dễ nói chuyện ạ.)* |
| Kondo | <ruby>命令<rt>めいれい</rt></ruby>じゃなくて<ruby>相談<rt>そうだん</rt></ruby>するからだろう。<br>*(Vì cậu không ra lệnh mà bàn bạc đấy.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>では<ruby>何<rt>なに</rt></ruby>もできません。<ruby>班<rt>はん</rt></ruby>の<ruby>力<rt>ちから</rt></ruby>です。<br>*(Một mình em không làm gì được. Là sức của cả tổ ạ.)* |
| Kondo | その<ruby>考<rt>かんが</rt></ruby>えが<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>班長<rt>はんちょう</rt></ruby>だ。<br>*(Suy nghĩ đó là tổ trưởng thực thụ đấy.)* |
| Thức | まだ<ruby>勉強<rt>べんきょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。ありがとうございます。<br>*(Em vẫn đang học ạ. Cảm ơn anh.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, nghe nói được giao làm tổ trưởng nhỏ rồi à? |
| Thức | Vâng anh. 親方 giao em chỉ huy bốn người mặt nam. Đầu căng hơn tay thật. |
| Long | Đúng đấy. Tổ trưởng là lo cả an toàn lẫn tiến độ cho người khác. |
| Thức | Hôm gió mạnh em cho dừng việc trên cao, chuyển xuống dưới. 親方 bảo đúng. |
| Long | Giỏi. Dám dừng là bản lĩnh. Đừng ra lệnh suông, cứ bàn với anh em như em đang làm. |
| Thức | Vâng. Em thấy một mình chẳng làm được gì, phải dựa vào cả tổ anh ạ. |

---

## Đọng lại

Thức lần đầu làm tổ trưởng nhỏ: chủ trì KY, phân công rõ ràng, báo cáo tiến độ cho 職長, điều phối cả đàn em lẫn bác thợ lớn tuổi, và quyết định dừng thao tác trên cao khi gió mạnh. Em chỉ huy bằng cách bàn bạc và giải thích chứ không ra lệnh suông, biết khen đúng lúc và tìm nguyên nhân khi có vướng mắc. 親方 và 先輩 ghi nhận: tổ trưởng thực thụ là người bảo vệ cả tổ và biết dựa vào sức tập thể.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 班長 | はんちょう | Tổ trưởng (cấp tổ nhỏ) |
> | 仕切る | しきる | Chỉ huy, điều hành |
> | 段取り | だんどり | Sắp xếp công việc |
> | 担当 | たんとう | Phụ trách |
> | 進捗 | しんちょく | Tiến độ |
> | 受け渡し | うけわたし | Chuyển giao (vật liệu) |
> | 追加手配 | ついかてはい | Đặt bổ sung |
> | 中断 | ちゅうだん | Tạm dừng |
> | 再開 | さいかい | Tiếp tục lại |
> | 風速 | ふうそく | Tốc độ gió |
> | 最優先 | さいゆうせん | Ưu tiên cao nhất |
> | 班員 | はんいん | Thành viên trong tổ |
> | 分担 | ぶんたん | Chia nhau (công việc) |
> | 雰囲気 | ふんいき | Không khí (tập thể) |
> | 肝に銘じる | きもにめいじる | Khắc cốt ghi tâm |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000010, 800000035, NULL, 'markdown_book', 'T10. Sự cố lớn — Thức phát hiện và ngăn kịp (大事故を未然に防ぐ)', '# Sách thực tập sinh xây dựng · T10. Sự cố lớn — Thức phát hiện và ngăn kịp (大事故を未然に防ぐ)

> **Mục tiêu nhân vật:** Thức phát hiện một nguy cơ sự cố lớn (giàn giáo có dấu hiệu mất ổn định do điểm neo tường bị tháo sai) và ngăn kịp trước khi xảy ra tai nạn nghiêm trọng. Học mẫu câu nghiệp vụ khẩn cấp: hô dừng toàn bộ công trường, báo cáo nhanh, sơ tán, phối hợp khắc phục với 親方/職長.

---

## Bối cảnh

Tháng 1 năm 2029. Công trình lớn gần xong. Một sáng, khi tổ khác tháo dỡ phần giàn giáo phía đông, một công nhân lỡ tháo nhầm điểm neo tường (壁つなぎ) ở tầng cao trong khi tầng trên vẫn còn người làm. Thức, với kinh nghiệm đọc bản vẽ và ý thức an toàn, phát hiện giàn giáo có dấu hiệu rung bất thường và ngăn kịp một sự cố sập có thể nghiêm trọng. Chương này tập trung mẫu câu nghiệp vụ khẩn cấp và phối hợp khắc phục.

---

## Tình huống 1 — Công trường · 9:30, Thức nhận ra dấu hiệu bất thường

| Vai | Lời thoại |
|---|---|
| Thức | (nhìn lên) ……あれ?あの<ruby>足場<rt>あしば</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>し<ruby>揺<rt>ゆ</rt></ruby>れてないか?<br>*(...Ơ? Giàn giáo kia, hơi rung phải không?)* |
| Nam | <ruby>気<rt>き</rt></ruby>のせいじゃないですか?<br>*(Anh tưởng tượng thôi không ạ?)* |
| Thức | いや、さっきより<ruby>明<rt>あき</rt></ruby>らかに<ruby>動<rt>うご</rt></ruby>いてる。<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>見<rt>み</rt></ruby>てくる。<br>*(Không, rõ ràng động hơn lúc nãy. Anh đi xem điểm neo tường.)* |
| Nam | <ruby>私<rt>わたし</rt></ruby>も<ruby>行<rt>い</rt></ruby>きます。<br>*(Em đi cùng ạ.)* |
| Thức | お<ruby>前<rt>まえ</rt></ruby>はここで<ruby>待<rt>ま</rt></ruby>て。<ruby>近<rt>ちか</rt></ruby>づくな。<br>*(Em đứng đây chờ. Đừng lại gần.)* |
| Nam | はい、<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Vâng, anh cẩn thận ạ.)* |

---

## Tình huống 2 — Công trường phía đông · 9:32, xác nhận điểm neo bị tháo sai

| Vai | Lời thoại |
|---|---|
| Thức | (nhìn lên) <ruby>壁<rt>かべ</rt></ruby>つなぎが……<ruby>三<rt>さん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>も<ruby>外<rt>はず</rt></ruby>れてる!<br>*(Điểm neo tường... bị tháo mất ba chỗ!)* |
| Công nhân | え、<ruby>何<rt>なに</rt></ruby>?<ruby>解体<rt>かいたい</rt></ruby>で<ruby>外<rt>はず</rt></ruby>しただけだよ。<br>*(Hả, gì cơ? Tôi tháo lúc dỡ thôi mà.)* |
| Thức | <ruby>上<rt>うえ</rt></ruby>にまだ<ruby>人<rt>ひと</rt></ruby>がいる!<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>だ!<br>*(Trên vẫn còn người! Thứ tự ngược rồi!)* |
| Công nhân | …しまった、<ruby>上<rt>うえ</rt></ruby>から<ruby>外<rt>はず</rt></ruby>すはずだった。<br>*(...Chết, lẽ ra phải tháo từ trên xuống.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>が<ruby>持<rt>も</rt></ruby>たないかもしれない。すぐ<ruby>止<rt>と</rt></ruby>める!<br>*(Giàn giáo có thể không chịu nổi. Dừng ngay!)* |
| Công nhân | わ、わかった!<br>*(Đ-được rồi!)* |

---

## Tình huống 3 — Công trường · 9:33, hô dừng toàn bộ và sơ tán

| Vai | Lời thoại |
|---|---|
| Thức | (hét lớn) <ruby>全員<rt>ぜんいん</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>!<ruby>足場<rt>あしば</rt></ruby>から<ruby>離<rt>はな</rt></ruby>れろ!<br>*(Toàn bộ dừng việc! Tránh xa giàn giáo!)* |
| Kondo | どうした!?<br>*(Sao thế!?)* |
| Thức | <ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>が<ruby>危<rt>あぶ</rt></ruby>ない!<ruby>壁<rt>かべ</rt></ruby>つなぎが<ruby>外<rt>はず</rt></ruby>れてる!<br>*(Giàn giáo phía đông nguy hiểm! Điểm neo tường bị tháo!)* |
| Kondo | <ruby>上<rt>うえ</rt></ruby>の<ruby>二人<rt>ふたり</rt></ruby>!すぐ<ruby>下<rt>お</rt></ruby>りろ!<br>*(Hai người trên kia! Xuống ngay!)* |
| Thức | ゆっくり、でも<ruby>急<rt>いそ</rt></ruby>いで!<ruby>揺<rt>ゆ</rt></ruby>らすな!<br>*(Từ từ, nhưng nhanh lên! Đừng làm rung!)* |
| Bác thợ | <ruby>下<rt>した</rt></ruby>の<ruby>者<rt>もの</rt></ruby>は<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>だ!<ruby>離<rt>はな</rt></ruby>れろ!<br>*(Người ở dưới cấm vào! Tránh xa!)* |

---

## Tình huống 4 — Công trường · 9:35, hướng dẫn người trên giàn giáo xuống an toàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>上<rt>うえ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>!フックを<ruby>確認<rt>かくにん</rt></ruby>して、ゆっくり<ruby>下<rt>お</rt></ruby>りて!<br>*(Người ở trên! Kiểm tra móc khóa, xuống từ từ!)* |
| Người trên | <ruby>足場<rt>あしば</rt></ruby>が<ruby>揺<rt>ゆ</rt></ruby>れてて<ruby>怖<rt>こわ</rt></ruby>い!<br>*(Giàn giáo rung sợ quá!)* |
| Thức | <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて!<ruby>三点<rt>さんてん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>、<ruby>一<rt>ひと</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ!<br>*(Bình tĩnh! Ba điểm tựa, từng bước một!)* |
| Người trên | ……<ruby>一<rt>いち</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>下<rt>お</rt></ruby>りた。<br>*(...Xuống một bậc rồi.)* |
| Thức | いいぞ!そのまま!<ruby>建物<rt>たてもの</rt></ruby><ruby>側<rt>がわ</rt></ruby>を<ruby>使<rt>つか</rt></ruby>って!<br>*(Tốt! Cứ thế! Dùng phía tòa nhà mà bám!)* |
| Người trên | (xuống đất) ……<ruby>助<rt>たす</rt></ruby>かった……ありがとう!<br>*(...Thoát rồi... cảm ơn!)* |

---

## Tình huống 5 — Công trường · 9:38, báo cáo khẩn cho 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>!<ruby>緊急<rt>きんきゅう</rt></ruby>です!<ruby>東側<rt>ひがしがわ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>が<ruby>危険<rt>きけん</rt></ruby>です!<br>*(親方! Khẩn cấp! Giàn giáo phía đông nguy hiểm!)* |
| Tanigawa | <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>け、<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>言<rt>い</rt></ruby>え!<br>*(Bình tĩnh, nói tình hình!)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby>つなぎが<ruby>三<rt>さん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>誤<rt>あやま</rt></ruby>って<ruby>外<rt>はず</rt></ruby>れ、<ruby>足場<rt>あしば</rt></ruby>が<ruby>揺<rt>ゆ</rt></ruby>れています。<ruby>人<rt>ひと</rt></ruby>は<ruby>全員<rt>ぜんいん</rt></ruby><ruby>退避<rt>たいひ</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Điểm neo tường bị tháo nhầm ba chỗ, giàn giáo rung. Người đã sơ tán hết ạ.)* |
| Tanigawa | <ruby>退避<rt>たいひ</rt></ruby>させたな!よくやった!<ruby>今<rt>いま</rt></ruby><ruby>行<rt>い</rt></ruby>く!<br>*(Cho sơ tán rồi! Làm tốt! Tôi tới ngay!)* |
| Thức | <ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にして<ruby>近<rt>ちか</rt></ruby>づかせていません。<br>*(Em đã cấm vào, không cho ai lại gần ạ.)* |
| Tanigawa | <ruby>完璧<rt>かんぺき</rt></ruby>だ。そのまま<ruby>誰<rt>だれ</rt></ruby>も<ruby>入<rt>い</rt></ruby>れるな!<br>*(Hoàn hảo. Cứ thế đừng cho ai vào!)* |

---

## Tình huống 6 — Công trường · 9:42, 親方 và 職長 đánh giá hiện trường

| Vai | Lời thoại |
|---|---|
| Tanigawa | (nhìn lên) ……<ruby>確<rt>たし</rt></ruby>かに<ruby>危<rt>あぶ</rt></ruby>ない。トゥック、<ruby>気<rt>き</rt></ruby>づくのが<ruby>早<rt>はや</rt></ruby>かった。<br>*(...Đúng là nguy hiểm. Thức, phát hiện sớm đấy.)* |
| Saito | あと<ruby>少<rt>すこ</rt></ruby>しで<ruby>崩<rt>くず</rt></ruby>れるところだった。<ruby>大<rt>おお</rt></ruby><ruby>事故<rt>じこ</rt></ruby>になっていた。<br>*(Chút nữa là sập. Đã thành tai nạn lớn.)* |
| Thức | <ruby>揺<rt>ゆ</rt></ruby>れ<ruby>方<rt>かた</rt></ruby>が<ruby>普段<rt>ふだん</rt></ruby>と<ruby>違<rt>ちが</rt></ruby>ったので<ruby>気<rt>き</rt></ruby>になりました。<br>*(Cách rung khác mọi khi nên em để ý ạ.)* |
| Tanigawa | その<ruby>感覚<rt>かんかく</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>を<ruby>救<rt>すく</rt></ruby>った。<br>*(Cái cảm giác đó cứu mạng người.)* |
| Saito | <ruby>復旧<rt>ふっきゅう</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>組<rt>く</rt></ruby>もう。<ruby>急<rt>いそ</rt></ruby>いで、でも<ruby>慎重<rt>しんちょう</rt></ruby>に。<br>*(Lập kế hoạch khắc phục. Nhanh, nhưng thận trọng.)* |
| Thức | はい、<ruby>指示<rt>しじ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh chỉ thị ạ.)* |

---

## Tình huống 7 — Công trường · 9:50, lập kế hoạch khắc phục

| Vai | Lời thoại |
|---|---|
| Saito | まず<ruby>外<rt>はず</rt></ruby>れた<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>戻<rt>もど</rt></ruby>す。<ruby>下<rt>した</rt></ruby>から<ruby>支保工<rt>しほこう</rt></ruby>で<ruby>支<rt>ささ</rt></ruby>える。<br>*(Trước hết lắp lại điểm neo. Chống đỡ từ dưới bằng cây chống.)* |
| Thức | <ruby>支保工<rt>しほこう</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>立<rt>た</rt></ruby>てるんですね。<br>*(Dựng cây chống trước nhỉ.)* |
| Saito | そうだ。<ruby>支<rt>ささ</rt></ruby>えてから<ruby>人<rt>ひと</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がる。<ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>だ。<br>*(Đúng. Chống xong người mới lên. Thứ tự là mạng sống.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>が<ruby>上<rt>あ</rt></ruby>がりますか?<br>*(Ai lên ạ?)* |
| Saito | <ruby>経験<rt>けいけん</rt></ruby>のある<ruby>者<rt>もの</rt></ruby>だけだ。トゥック、お<ruby>前<rt>まえ</rt></ruby>と<ruby>近藤<rt>こんどう</rt></ruby>で<ruby>頼<rt>たの</rt></ruby>む。<br>*(Chỉ người có kinh nghiệm. Thức, cậu với Kondo nhé.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>慎重<rt>しんちょう</rt></ruby>にやります。<br>*(Em hiểu rồi. Em sẽ làm thận trọng ạ.)* |

---

## Tình huống 8 — Công trường · 10:00, dựng cây chống đỡ tạm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>支保工<rt>しほこう</rt></ruby>をこの<ruby>三<rt>さん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>に<ruby>立<rt>た</rt></ruby>てます。<br>*(Anh Kondo, dựng cây chống vào ba chỗ này.)* |
| Kondo | <ruby>地面<rt>じめん</rt></ruby>はしっかりしてるか?<br>*(Mặt đất chắc không?)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>板<rt>いた</rt></ruby>を<ruby>敷<rt>し</rt></ruby>いて<ruby>沈<rt>しず</rt></ruby>まないようにします。<br>*(Em kiểm tra rồi. Lót ván cho khỏi lún ạ.)* |
| Kondo | <ruby>段取<rt>だんど</rt></ruby>りがいいな。<ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>ずつ<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Sắp xếp tốt nhỉ. Từng cây chắc chắn.)* |
| Thức | (vừa làm vừa hô) <ruby>一<rt>いっ</rt></ruby><ruby>本目<rt>ぽんめ</rt></ruby>、<ruby>固定<rt>こてい</rt></ruby>よし。<br>*(Cây thứ nhất, cố định OK.)* |
| Kondo | <ruby>二<rt>に</rt></ruby><ruby>本目<rt>ほんめ</rt></ruby>もよし。<ruby>揺<rt>ゆ</rt></ruby>れが<ruby>止<rt>と</rt></ruby>まってきた。<br>*(Cây thứ hai cũng OK. Rung lắc dừng dần rồi.)* |

---

## Tình huống 9 — Công trường · 10:20, lắp lại điểm neo tường

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>支保工<rt>しほこう</rt></ruby>が<ruby>効<rt>き</rt></ruby>いています。<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>戻<rt>もど</rt></ruby>します。<br>*(Cây chống đã ăn. Em lắp lại điểm neo tường.)* |
| Saito | <ruby>下<rt>した</rt></ruby>の<ruby>段<rt>だん</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>せ。<br>*(Lắp lại từ tầng dưới lên theo thứ tự.)* |
| Thức | はい。(hô) <ruby>下段<rt>げだん</rt></ruby><ruby>壁<rt>かべ</rt></ruby>つなぎ、<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けよし。<br>*(Vâng. Điểm neo tầng dưới, lắp OK.)* |
| Kondo | <ruby>中段<rt>ちゅうだん</rt></ruby>もよし。トルクを<ruby>確認<rt>かくにん</rt></ruby>しろ。<br>*(Tầng giữa cũng OK. Kiểm tra lực siết.)* |
| Thức | <ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしました。<ruby>緩<rt>ゆる</rt></ruby>みなし、よし。<br>*(Em xiết lại rồi. Không lỏng, OK.)* |
| Saito | いいぞ。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確実<rt>かくじつ</rt></ruby>にな。<br>*(Tốt. Từng cái chắc chắn nhé.)* |

---

## Tình huống 10 — Công trường · 10:40, kiểm tra ổn định lại

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>揺<rt>ゆ</rt></ruby>れはどうだ?<br>*(Thức, rung lắc thế nào?)* |
| Thức | <ruby>完全<rt>かんぜん</rt></ruby>に<ruby>止<rt>と</rt></ruby>まりました。<ruby>水平<rt>すいへい</rt></ruby>も<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Đã dừng hoàn toàn. Thăng bằng cũng kiểm tra xong ạ.)* |
| Saito | <ruby>全<rt>すべ</rt></ruby>ての<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>点検<rt>てんけん</rt></ruby>したか?<br>*(Kiểm tra hết điểm neo chưa?)* |
| Thức | はい、<ruby>図面<rt>ずめん</rt></ruby>と<ruby>照<rt>て</rt></ruby>らして<ruby>全<rt>ぜん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, đối chiếu bản vẽ kiểm tra hết các chỗ ạ.)* |
| Saito | <ruby>図面<rt>ずめん</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせたか。<ruby>完璧<rt>かんぺき</rt></ruby>だ。<br>*(Đối chiếu cả bản vẽ à. Hoàn hảo.)* |
| Thức | <ruby>念<rt>ねん</rt></ruby>のため、もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>ます。<br>*(Cho chắc, em xem lại toàn bộ một lần nữa ạ.)* |

---

## Tình huống 11 — Lán nghỉ · 11:00, trấn an cả tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>復旧<rt>ふっきゅう</rt></ruby>できました。ケガ<ruby>人<rt>にん</rt></ruby>はゼロです。<br>*(Mọi người, khắc phục xong rồi. Không ai bị thương ạ.)* |
| Nam | よかった……<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(May quá... thật sự sợ ạ.)* |
| Thức | みんなが<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>退避<rt>たいひ</rt></ruby>したから<ruby>無事<rt>ぶじ</rt></ruby>だった。<br>*(Vì mọi người bình tĩnh sơ tán nên an toàn.)* |
| Bác thợ | お<ruby>前<rt>まえ</rt></ruby>の<ruby>一声<rt>ひとこえ</rt></ruby>がなかったら<ruby>危<rt>あぶ</rt></ruby>なかった。<br>*(Không có tiếng hô của cậu thì nguy.)* |
| Thức | <ruby>気<rt>き</rt></ruby>づいたら<ruby>大<rt>おお</rt></ruby><ruby>声<rt>ごえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>す。それだけです。<br>*(Nhận ra thì hô to. Chỉ vậy thôi ạ.)* |
| Nam | その「それだけ」が<ruby>大事<rt>だいじ</rt></ruby>なんですね。<br>*(Cái "chỉ vậy" đó mới quan trọng nhỉ.)* |

---

## Tình huống 12 — Lán nghỉ · 12:00, trò chuyện tiếng Việt với đàn em

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, lúc đó anh không sợ à? |
| Thức | Sợ chứ. Nhưng nếu mình đứng yên thì người trên giàn giáo nguy. |
| Nam | Sao anh biết là sắp sập? |
| Thức | Anh không chắc sập, nhưng giàn rung khác thường. Nghi là phải dừng ngay, không chờ chắc. |
| Nam | Em nhớ anh hay nói: nhận ra rồi dừng là quan trọng nhất. |
| Thức | Đúng. Thà dừng nhầm còn hơn để xảy ra rồi mới tiếc. |

---

## Tình huống 13 — Công trường · 13:00, họp khẩn rút kinh nghiệm

| Vai | Lời thoại |
|---|---|
| Tanigawa | <ruby>今日<rt>きょう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>を<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>する。<ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>だ?<br>*(Chia sẻ vụ hôm nay với cả tổ. Nguyên nhân là gì?)* |
| Thức | <ruby>解体<rt>かいたい</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby><ruby>違反<rt>いはん</rt></ruby>です。<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>下<rt>した</rt></ruby>から<ruby>外<rt>はず</rt></ruby>しました。<br>*(Vi phạm thứ tự tháo dỡ. Tháo điểm neo từ dưới lên ạ.)* |
| Saito | <ruby>本来<rt>ほんらい</rt></ruby>は<ruby>上<rt>うえ</rt></ruby>から、<ruby>人<rt>ひと</rt></ruby>が<ruby>退<rt>ひ</rt></ruby>いてからだ。<br>*(Vốn dĩ phải từ trên, sau khi người rút.)* |
| Tanigawa | <ruby>対策<rt>たいさく</rt></ruby>は?トゥック。<br>*(Biện pháp? Thức.)* |
| Thức | <ruby>解体<rt>かいたい</rt></ruby><ruby>手順書<rt>てじゅんしょ</rt></ruby>の<ruby>再<rt>さい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>と、<ruby>班長<rt>はんちょう</rt></ruby><ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いの<ruby>徹底<rt>てってい</rt></ruby>です。<br>*(Kiểm tra lại quy trình tháo dỡ và bắt buộc tổ trưởng giám sát ạ.)* |
| Tanigawa | それでいく。<ruby>明日<rt>あした</rt></ruby>から<ruby>全班<rt>ぜんはん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>だ。<br>*(Làm theo thế. Từ mai mọi tổ làm triệt để.)* |

---

## Tình huống 14 — Công trường · 13:30, nói chuyện với người tháo nhầm

| Vai | Lời thoại |
|---|---|
| Công nhân | トゥックさん、すみませんでした。<ruby>私<rt>わたし</rt></ruby>のミスです。<br>*(Anh Thức, tôi xin lỗi. Là lỗi của tôi.)* |
| Thức | <ruby>誰<rt>だれ</rt></ruby>でも<ruby>間違<rt>まちが</rt></ruby>えます。<ruby>無事<rt>ぶじ</rt></ruby>だったのが<ruby>一番<rt>いちばん</rt></ruby>です。<br>*(Ai cũng có thể nhầm. Không sao là tốt nhất.)* |
| Công nhân | <ruby>責<rt>せ</rt></ruby>められると<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Tôi tưởng sẽ bị trách.)* |
| Thức | <ruby>責<rt>せ</rt></ruby>めても<ruby>次<rt>つぎ</rt></ruby>は<ruby>防<rt>ふせ</rt></ruby>げません。<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しましょう。<br>*(Trách thì cũng không ngăn được lần sau. Cùng xác nhận quy trình nhé.)* |
| Công nhân | ありがとう……<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Cảm ơn... tôi sẽ chú ý.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>気<rt>き</rt></ruby>をつけましょう。それが<ruby>現場<rt>げんば</rt></ruby>です。<br>*(Cùng chú ý nhau nhé. Công trường là vậy.)* |

---

## Tình huống 15 — Công trường · 15:00, kiểm tra toàn công trường

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>他<rt>ほか</rt></ruby>の<ruby>面<rt>めん</rt></ruby>の<ruby>壁<rt>かべ</rt></ruby>つなぎも<ruby>点検<rt>てんけん</rt></ruby>しよう。<br>*(Thức, kiểm tra điểm neo các mặt khác luôn.)* |
| Thức | はい、<ruby>図面<rt>ずめん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>全<rt>ぜん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>回<rt>まわ</rt></ruby>ります。<br>*(Vâng, em cầm bản vẽ đi hết các chỗ ạ.)* |
| Saito | <ruby>数<rt>かず</rt></ruby>と<ruby>位置<rt>いち</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>な。<br>*(Số lượng và vị trí, kiểm tra cả hai nhé.)* |
| Thức | (kiểm tra) ……<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>、<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>、<ruby>異常<rt>いじょう</rt></ruby>なし。<br>*(...Mặt bắc, mặt nam, không bất thường.)* |
| Saito | <ruby>西<rt>にし</rt></ruby><ruby>面<rt>めん</rt></ruby>は?<br>*(Mặt tây thì sao?)* |
| Thức | <ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>緩<rt>ゆる</rt></ruby>みがありました。<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしておきます。<br>*(Có một chỗ lỏng. Em xiết lại luôn ạ.)* |

---

## Tình huống 16 — Văn phòng · 16:00, viết báo cáo sự cố

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>事故<rt>じこ</rt></ruby><ruby>未満<rt>みまん</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>いてくれ。<br>*(Thức, viết báo cáo sự cố suýt xảy ra giúp tôi.)* |
| Thức | はい。<ruby>時系列<rt>じけいれつ</rt></ruby>で<ruby>事実<rt>じじつ</rt></ruby>を<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng. Em viết sự thật theo trình tự thời gian ạ.)* |
| Saito | <ruby>気<rt>き</rt></ruby>づいた<ruby>時刻<rt>じこく</rt></ruby>と<ruby>退避<rt>たいひ</rt></ruby>までの<ruby>時間<rt>じかん</rt></ruby>も<ruby>書<rt>か</rt></ruby>け。<br>*(Ghi cả thời điểm phát hiện và thời gian đến lúc sơ tán.)* |
| Thức | <ruby>気<rt>き</rt></ruby>づいてから<ruby>退避<rt>たいひ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>まで<ruby>約<rt>やく</rt></ruby><ruby>三分<rt>さんぷん</rt></ruby>でした。<br>*(Từ lúc phát hiện đến khi sơ tán xong khoảng ba phút ạ.)* |
| Saito | その<ruby>速<rt>はや</rt></ruby>さが<ruby>命<rt>いのち</rt></ruby>を<ruby>救<rt>すく</rt></ruby>った。<ruby>正確<rt>せいかく</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>しろ。<br>*(Tốc độ đó cứu mạng. Ghi lại chính xác.)* |
| Thức | はい、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>書<rt>か</rt></ruby>きます。<br>*(Vâng, em viết trung thực ạ.)* |

---

## Tình huống 17 — Công trường · 17:00, 親方 đánh giá hành động của Thức

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今日<rt>きょう</rt></ruby>のお<ruby>前<rt>まえ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>、<ruby>本物<rt>ほんもの</rt></ruby>だった。<br>*(Thức, phán đoán hôm nay của cậu là thật.)* |
| Thức | <ruby>夢中<rt>むちゅう</rt></ruby>でした。<ruby>体<rt>からだ</rt></ruby>が<ruby>勝手<rt>かって</rt></ruby>に<ruby>動<rt>うご</rt></ruby>きました。<br>*(Em cuống quýt ạ. Cơ thể tự động phản ứng ạ.)* |
| Tanigawa | それは<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねがあるからだ。<br>*(Đó là vì có tích lũy mỗi ngày.)* |
| Thức | <ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてきたことが<ruby>自分<rt>じぶん</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かしました。<br>*(Cái dạy đàn em đã khiến em phản ứng ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>職人<rt>しょくにん</rt></ruby>だ。<ruby>誇<rt>ほこ</rt></ruby>っていい。<br>*(Cậu giờ là thợ thực thụ rồi. Tự hào được đấy.)* |
| Thức | ありがとうございます。まだ<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>きません。<br>*(Cảm ơn chú ạ. Cháu vẫn không lơ là.)* |

---

## Tình huống 18 — Lán nghỉ · 17:20, 先輩 nói về bản lĩnh nghề

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、お<ruby>前<rt>まえ</rt></ruby>あの<ruby>場面<rt>ばめん</rt></ruby>でよく<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>せたな。<br>*(Thức, lúc đó cậu hô to được nhỉ.)* |
| Thức | <ruby>迷<rt>まよ</rt></ruby>ったら<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わないと<ruby>思<rt>おも</rt></ruby>いました。<br>*(Em nghĩ phân vân là không kịp ạ.)* |
| Kondo | <ruby>普通<rt>ふつう</rt></ruby>は「<ruby>間違<rt>まちが</rt></ruby>いだったら<ruby>恥<rt>は</rt></ruby>ずかしい」と<ruby>迷<rt>まよ</rt></ruby>う。<br>*(Bình thường thì phân vân "nhầm thì ngại".)* |
| Thức | <ruby>恥<rt>は</rt></ruby>ずかしいより<ruby>人<rt>ひと</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>です。<br>*(Hơn cả ngại là tính mạng người ạ.)* |
| Kondo | その<ruby>覚悟<rt>かくご</rt></ruby>が<ruby>職人<rt>しょくにん</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>見習<rt>みなら</rt></ruby>うよ。<br>*(Cái quyết tâm đó là thợ. Anh cũng học theo đấy.)* |
| Thức | いえ、<ruby>近藤<rt>こんどう</rt></ruby>さんから<ruby>学<rt>まな</rt></ruby>んだことです。<br>*(Dạ không, là cái em học từ anh Kondo ạ.)* |

---

## Tình huống 19 — Công trường · ngày hôm sau 8:00, áp dụng quy trình mới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>から<ruby>解体<rt>かいたい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>班長<rt>はんちょう</rt></ruby><ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いです。<br>*(Từ hôm nay tháo dỡ phải có tổ trưởng giám sát.)* |
| Kondo | <ruby>順番<rt>じゅんばん</rt></ruby>は<ruby>上<rt>うえ</rt></ruby>から、<ruby>人<rt>ひと</rt></ruby>が<ruby>退<rt>ひ</rt></ruby>いてから、だな。<br>*(Thứ tự là từ trên, sau khi người rút, nhỉ.)* |
| Thức | はい。<ruby>手順書<rt>てじゅんしょ</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Đọc to quy trình để xác nhận ạ.)* |
| Nam | <ruby>昨日<rt>きのう</rt></ruby>のことがあって、みんな<ruby>真剣<rt>しんけん</rt></ruby>ですね。<br>*(Sau vụ hôm qua, mọi người nghiêm túc nhỉ.)* |
| Thức | <ruby>事故<rt>じこ</rt></ruby>は<ruby>一度<rt>いちど</rt></ruby>で<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<ruby>二度<rt>にど</rt></ruby>と<ruby>起<rt>お</rt></ruby>こさない。<br>*(Sự cố một lần là đủ. Không để xảy ra lần hai.)* |
| Kondo | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>重<rt>おも</rt></ruby>いな。やろう。<br>*(Câu đó nặng đấy. Làm thôi.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, anh nghe 親方 kể rồi. Em ngăn được một vụ lớn đấy. |
| Thức | Em cũng chưa hết run anh ạ. Lúc đó giàn rung lạ, em nghi nên hét dừng ngay. |
| Long | Đúng. Lúc đó không được phân vân. Dừng nhầm còn hơn tiếc về sau. |
| Thức | Em cứ làm theo cái em dạy Nam mỗi ngày thôi. Tự nhiên người phản ứng. |
| Long | Đấy, dạy người khác là rèn chính mình. Anh tự hào về em thật. |
| Thức | Cảm ơn anh. May là không ai sao cả. Em chỉ mong đừng bao giờ phải gặp lại. |

---

## Đọng lại

Thức phát hiện một nguy cơ sự cố lớn — giàn giáo mất ổn định do điểm neo tường bị tháo sai thứ tự trong khi vẫn còn người trên cao — và ngăn kịp: hô dừng toàn bộ, sơ tán trong khoảng ba phút, báo cáo khẩn, phối hợp khắc phục đúng quy trình. Không ai bị thương. Em đối xử với người gây lỗi bằng thái độ "không trách, cùng phòng lần sau". 親方 và 先輩 ghi nhận đây là bản lĩnh của một người thợ thực thụ — kết quả của tích lũy ý thức an toàn mỗi ngày.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 壁つなぎ | かべつなぎ | Điểm neo tường (giàn giáo) |
> | 揺れ | ゆれ | Rung lắc |
> | 退避 | たいひ | Sơ tán |
> | 立入禁止 | たちいりきんし | Cấm vào |
> | 緊急 | きんきゅう | Khẩn cấp |
> | 崩れる | くずれる | Sập, đổ |
> | 復旧 | ふっきゅう | Khắc phục, phục hồi |
> | 支保工 | しほこう | Cây chống đỡ |
> | 増し締め | ましじめ | Xiết lại (bu lông) |
> | 解体手順書 | かいたいてじゅんしょ | Quy trình tháo dỡ |
> | 立ち会い | たちあい | Giám sát, có mặt chứng kiến |
> | 事故未満 | じこみまん | Sự cố suýt xảy ra |
> | 時系列 | じけいれつ | Trình tự thời gian |
> | 覚悟 | かくご | Quyết tâm, sẵn sàng |
> | 積み重ね | つみかさね | Sự tích lũy |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000011, 800000035, NULL, 'markdown_book', 'T11. 親方 công nhận (親方の信頼を得る)', '# Sách thực tập sinh xây dựng · T11. 親方 công nhận (親方の信頼を得る)

> **Mục tiêu nhân vật:** Sau sự cố được ngăn kịp, Thức được 谷川親方 chính thức công nhận như một thợ tin cậy. Học mẫu câu nghiệp vụ khi nhận lời giao phó lớn hơn, được hỏi ý kiến, đại diện tổ làm việc với nhà thầu chính, hướng dẫn lại đàn em ở vị thế mới.

---

## Bối cảnh

Tháng 2 năm 2029. Sự việc Thức ngăn được sự cố lan ra cả công ty. 谷川親方 chính thức tin cậy Thức: giao phần việc khó, hỏi ý kiến trước khi quyết, để Thức đại diện làm việc với 元請 (nhà thầu chính). Đây không phải "thành công thần kỳ" mà là sự công nhận tích lũy qua ba năm. Chương này tập trung mẫu câu nghiệp vụ ở vị thế người thợ được tin tưởng: nhận giao phó, trao đổi với nhà thầu, hướng dẫn đàn em.

---

## Tình huống 1 — Văn phòng · 7:30, 親方 giao phần việc quan trọng

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>次<rt>つぎ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>、<ruby>難<rt>むずか</rt></ruby>しい<ruby>所<rt>ところ</rt></ruby>をお<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せたい。<br>*(Thức, công trình tới, chỗ khó tôi muốn giao cho cậu.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>でいいんですか?<br>*(Cháu được không ạ?)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>だからだ。この<ruby>前<rt>まえ</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かった。<br>*(Vì là cậu. Qua phán đoán lần trước tôi hiểu rồi.)* |
| Thức | ありがとうございます。<ruby>期待<rt>きたい</rt></ruby>に<ruby>応<rt>こた</rt></ruby>えます。<br>*(Cảm ơn chú ạ. Cháu sẽ đáp lại kỳ vọng.)* |
| Tanigawa | <ruby>気負<rt>きお</rt></ruby>うな。いつも<ruby>通<rt>どお</rt></ruby>りやればいい。<br>*(Đừng gồng. Cứ làm như mọi khi là được.)* |
| Thức | はい、<ruby>基本<rt>きほん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってやります。<br>*(Vâng, cháu giữ cơ bản mà làm ạ.)* |

---

## Tình huống 2 — Công trường · 8:00, 親方 hỏi ý kiến Thức trước khi quyết

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、この<ruby>足場<rt>あしば</rt></ruby>、どう<ruby>組<rt>く</rt></ruby>むのがいいと<ruby>思<rt>おも</rt></ruby>う?<br>*(Thức, giàn giáo này, cậu nghĩ lắp thế nào tốt?)* |
| Thức | <ruby>地面<rt>じめん</rt></ruby>が<ruby>柔<rt>やわ</rt></ruby>らかいので、<ruby>敷板<rt>しきいた</rt></ruby>を<ruby>厚<rt>あつ</rt></ruby>めにしたほうがいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Mặt đất mềm nên cháu nghĩ nên lót ván dày hơn ạ.)* |
| Tanigawa | <ruby>理由<rt>りゆう</rt></ruby>は?<br>*(Lý do?)* |
| Thức | <ruby>沈下<rt>ちんか</rt></ruby>すると<ruby>全体<rt>ぜんたい</rt></ruby>が<ruby>傾<rt>かたむ</rt></ruby>くからです。<ruby>雨<rt>あめ</rt></ruby>のあとは<ruby>特<rt>とく</rt></ruby>に。<br>*(Vì lún thì cả khối nghiêng. Nhất là sau mưa ạ.)* |
| Tanigawa | <ruby>正<rt>ただ</rt></ruby>しい。お<ruby>前<rt>まえ</rt></ruby>の<ruby>案<rt>あん</rt></ruby>でいこう。<br>*(Đúng. Làm theo phương án của cậu.)* |
| Thức | ありがとうございます。<ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Cảm ơn chú ạ. Cháu sẽ làm thận trọng.)* |

---

## Tình huống 3 — Công trường · 9:00, 親方 để Thức tự quyết tại chỗ

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、ここの<ruby>建地<rt>たてじ</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>どお</rt></ruby>りだと<ruby>配管<rt>はいかん</rt></ruby>に<ruby>当<rt>あ</rt></ruby>たる。<br>*(Thức, cột đứng chỗ này, theo bản vẽ thì đụng ống.)* |
| Thức | <ruby>少<rt>すこ</rt></ruby>しずらせますか。<ruby>強度<rt>きょうど</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>がないか<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Dịch một chút nhé. Em xác nhận có ảnh hưởng độ chắc không.)* |
| Kondo | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>聞<rt>き</rt></ruby>かなくていいのか?<br>*(Không cần hỏi 親方 à?)* |
| Thức | <ruby>範囲<rt>はんい</rt></ruby><ruby>内<rt>ない</rt></ruby>なら<ruby>任<rt>まか</rt></ruby>されています。でも<ruby>記録<rt>きろく</rt></ruby>して<ruby>後<rt>あと</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Trong phạm vi thì được giao. Nhưng em ghi lại để báo cáo sau.)* |
| Kondo | しっかりしてるな。それでいい。<br>*(Chắc chắn đấy. Thế là được.)* |
| Thức | <ruby>判断<rt>はんだん</rt></ruby>したら<ruby>必<rt>かなら</rt></ruby>ず<ruby>残<rt>のこ</rt></ruby>す。それが<ruby>責任<rt>せきにん</rt></ruby>です。<br>*(Quyết định thì phải ghi lại. Đó là trách nhiệm.)* |

---

## Tình huống 4 — Công trường · 10:00, đại diện tổ tiếp nhà thầu chính

| Vai | Lời thoại |
|---|---|
| Nhà thầu | <ruby>足場<rt>あしば</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho biết tiến độ giàn giáo.)* |
| Thức | はい。<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>完了<rt>かんりょう</rt></ruby>、<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>明日<rt>あした</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng. Mặt nam xong, mặt đông dự kiến hoàn thành ngày mai ạ.)* |
| Nhà thầu | <ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りですね。<ruby>安全<rt>あんぜん</rt></ruby><ruby>面<rt>めん</rt></ruby>はどうですか?<br>*(Đúng kế hoạch nhỉ. Mặt an toàn thì sao?)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby>つなぎは<ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>どお</rt></ruby>り、<ruby>全<rt>ぜん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>点検<rt>てんけん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Điểm neo tường theo bản vẽ, đã kiểm tra hết các chỗ ạ.)* |
| Nhà thầu | きちんとしていて<ruby>安心<rt>あんしん</rt></ruby>です。<br>*(Đâu ra đấy, yên tâm.)* |
| Thức | ご<ruby>不明<rt>ふめい</rt></ruby><ruby>点<rt>てん</rt></ruby>があればいつでもおっしゃってください。<br>*(Có gì chưa rõ xin cứ nói bất cứ lúc nào ạ.)* |

---

## Tình huống 5 — Văn phòng · 10:30, báo cáo lại buổi tiếp nhà thầu cho 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>元請<rt>もとうけ</rt></ruby>さんに<ruby>進捗<rt>しんちょく</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>しました。<br>*(親方, em đã giải thích tiến độ cho nhà thầu chính ạ.)* |
| Tanigawa | どうだった?<br>*(Sao rồi?)* |
| Thức | <ruby>予定<rt>よてい</rt></ruby><ruby>通<rt>どお</rt></ruby>りで<ruby>安心<rt>あんしん</rt></ruby>されていました。<ruby>安全<rt>あんぜん</rt></ruby>も<ruby>評価<rt>ひょうか</rt></ruby>されました。<br>*(Đúng kế hoạch nên họ yên tâm. An toàn cũng được đánh giá ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せて<ruby>正解<rt>せいかい</rt></ruby>だった。<br>*(Giao cho cậu là đúng.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からないことは「<ruby>確認<rt>かくにん</rt></ruby>します」と<ruby>答<rt>こた</rt></ruby>えました。<br>*(Cái không rõ em trả lời "để em xác nhận" ạ.)* |
| Tanigawa | それでいい。<ruby>知<rt>し</rt></ruby>ったかぶりが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Thế là được. Tỏ ra biết là nguy hiểm nhất.)* |

---

## Tình huống 6 — Công trường · 11:00, được giao hướng dẫn cả đàn em mới

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>来月<rt>らいげつ</rt></ruby>もう<ruby>一人<rt>ひとり</rt></ruby>TTSが<ruby>来<rt>く</rt></ruby>る。お<ruby>前<rt>まえ</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>ててくれ。<br>*(Thức, tháng sau thêm một TTS nữa. Cậu kèm nhé.)* |
| Thức | はい。ナムくんと<ruby>二人<rt>ふたり</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>で<ruby>教<rt>おし</rt></ruby>えます。<br>*(Vâng. Cháu với Nam hai người cùng dạy ạ.)* |
| Tanigawa | ナムにも<ruby>教<rt>おし</rt></ruby>えさせるのか?<br>*(Cho Nam dạy luôn à?)* |
| Thức | はい。<ruby>教<rt>おし</rt></ruby>えると<ruby>本人<rt>ほんにん</rt></ruby>も<ruby>伸<rt>の</rt></ruby>びます。<ruby>私<rt>わたし</rt></ruby>がそうでした。<br>*(Vâng. Dạy thì bản thân cũng tiến. Cháu đã như vậy ạ.)* |
| Tanigawa | <ruby>育<rt>そだ</rt></ruby>てる<ruby>側<rt>がわ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かってるな。<br>*(Hiểu được tâm thế của người đào tạo rồi đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さんや<ruby>親方<rt>おやかた</rt></ruby>に<ruby>教<rt>おし</rt></ruby>わったからです。<br>*(Vì cháu được anh Kondo và chú dạy ạ.)* |

---

## Tình huống 7 — Lán nghỉ · 12:00, trò chuyện tiếng Việt với đàn em

| Vai | Lời thoại |
|---|---|
| Nam | Anh Thức, 親方 tin anh hẳn rồi nhỉ. Giao cả việc khó lẫn tiếp khách. |
| Thức | Ừ, nhưng anh không thấy mình hơn ai. Chỉ là làm đủ ba năm thì người ta tin. |
| Nam | Em mong sau này cũng được tin như anh. |
| Thức | Cứ làm đều, không giấu lỗi, không tỏ ra biết. Lòng tin tích lại từng ngày. |
| Nam | Anh nói câu nào em cũng muốn ghi lại. |
| Thức | Đừng ghi, làm là được. Anh học mấy câu đó từ anh Long với 親方 thôi. |

---

## Tình huống 8 — Công trường · 13:00, 親方 hỏi ý kiến về sắp xếp nhân lực

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>人<rt>ひと</rt></ruby><ruby>配置<rt>はいち</rt></ruby>、<ruby>意見<rt>いけん</rt></ruby>あるか?<br>*(Thức, bố trí người tuần sau, có ý kiến gì không?)* |
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さんを<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>に。<ruby>経験<rt>けいけん</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>です。<br>*(Anh Bắc sang mặt đông. Là chỗ cần kinh nghiệm ạ.)* |
| Tanigawa | ナムは?<br>*(Còn Nam?)* |
| Thức | ナムくんは<ruby>私<rt>わたし</rt></ruby>と<ruby>南<rt>みなみ</rt></ruby><ruby>面<rt>めん</rt></ruby>で。<ruby>新人<rt>しんじん</rt></ruby><ruby>指導<rt>しどう</rt></ruby>も<ruby>兼<rt>か</rt></ruby>ねます。<br>*(Nam ở mặt nam với cháu. Kiêm cả dạy người mới ạ.)* |
| Tanigawa | <ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>考<rt>かんが</rt></ruby>えてるな。その<ruby>案<rt>あん</rt></ruby>でいく。<br>*(Nhìn toàn cục mà nghĩ nhỉ. Làm theo phương án đó.)* |
| Thức | ありがとうございます。<br>*(Cảm ơn chú ạ.)* |

---

## Tình huống 9 — Công trường · 14:00, 職長 trao đổi ngang hàng hơn

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、この<ruby>納期<rt>のうき</rt></ruby>、きついと<ruby>思<rt>おも</rt></ruby>うか?<br>*(Thức, thời hạn này cậu thấy gấp không?)* |
| Thức | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しきついです。でも<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>削<rt>けず</rt></ruby>れば<ruby>意味<rt>いみ</rt></ruby>がありません。<br>*(Thật ra hơi gấp ạ. Nhưng cắt an toàn thì vô nghĩa ạ.)* |
| Saito | <ruby>同感<rt>どうかん</rt></ruby>だ。どうすれば<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>う?<br>*(Đồng ý. Làm sao cho kịp?)* |
| Thức | <ruby>段取<rt>だんど</rt></ruby>りを<ruby>変<rt>か</rt></ruby>えて、<ruby>材料<rt>ざいりょう</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>運<rt>はこ</rt></ruby>べば<ruby>無理<rt>むり</rt></ruby>なくいけます。<br>*(Đổi cách sắp xếp, khuân vật liệu trước thì không gắng cũng kịp ạ.)* |
| Saito | いい<ruby>提案<rt>ていあん</rt></ruby>だ。<ruby>元請<rt>もとうけ</rt></ruby>にもそう<ruby>説明<rt>せつめい</rt></ruby>しよう。<br>*(Đề xuất tốt. Giải thích thế với nhà thầu chính luôn.)* |
| Thức | はい、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>考<rt>かんが</rt></ruby>えていただけて<ruby>心強<rt>こころづよ</rt></ruby>いです。<br>*(Vâng, được cùng nghĩ với anh em vững tâm ạ.)* |

---

## Tình huống 10 — Công trường · 15:00, hướng dẫn đàn em ở vị thế mới

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>親方<rt>おやかた</rt></ruby>に<ruby>意見<rt>いけん</rt></ruby>を<ruby>言<rt>い</rt></ruby>うの、<ruby>緊張<rt>きんちょう</rt></ruby>しませんか?<br>*(Anh Thức, nói ý kiến với 親方 anh không hồi hộp ạ?)* |
| Thức | するよ。でも<ruby>現場<rt>げんば</rt></ruby>を<ruby>見<rt>み</rt></ruby>てる<ruby>者<rt>もの</rt></ruby>が<ruby>言<rt>い</rt></ruby>わないと<ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Có chứ. Nhưng người nhìn công trường không nói thì nguy.)* |
| Nam | <ruby>間違<rt>まちが</rt></ruby>っていたらどうしますか?<br>*(Lỡ sai thì sao ạ?)* |
| Thức | <ruby>間違<rt>まちが</rt></ruby>えたら<ruby>直<rt>なお</rt></ruby>す。<ruby>黙<rt>だま</rt></ruby>っているより<ruby>百<rt>ひゃく</rt></ruby><ruby>倍<rt>ばい</rt></ruby>いい。<br>*(Sai thì sửa. Tốt gấp trăm lần im lặng.)* |
| Nam | なるほど。<ruby>言<rt>い</rt></ruby>う<ruby>勇気<rt>ゆうき</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Ra vậy. Dũng khí nói ra là quan trọng nhỉ.)* |
| Thức | そう。それも<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つだ。<br>*(Đúng. Đó cũng là một phần của an toàn.)* |

---

## Tình huống 11 — Công trường · 16:00, đồng nghiệp Nhật công nhận

| Vai | Lời thoại |
|---|---|
| Bác thợ | トゥック、お<ruby>前<rt>まえ</rt></ruby>と<ruby>組<rt>く</rt></ruby>むと<ruby>安心<rt>あんしん</rt></ruby>するよ。<br>*(Thức, làm cùng cậu là yên tâm.)* |
| Thức | <ruby>光栄<rt>こうえい</rt></ruby>です。<ruby>松本<rt>まつもと</rt></ruby>さんの<ruby>経験<rt>けいけん</rt></ruby>に<ruby>助<rt>たす</rt></ruby>けられています。<br>*(Vinh dự ạ. Cháu được kinh nghiệm của bác Matsumoto giúp ạ.)* |
| Bác thợ | <ruby>外国<rt>がいこく</rt></ruby>から<ruby>来<rt>き</rt></ruby>て、ここまでやるのは<ruby>大<rt>たい</rt></ruby><ruby>変<rt>へん</rt></ruby>だったろう。<br>*(Từ nước ngoài tới, làm được tới đây chắc vất vả nhỉ.)* |
| Thức | <ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>、いろいろありました。でも<ruby>続<rt>つづ</rt></ruby>けてよかったです。<br>*(Ba năm, nhiều chuyện lắm ạ. Nhưng tiếp tục là tốt ạ.)* |
| Bác thợ | これからも<ruby>頼<rt>たの</rt></ruby>むよ。<ruby>仲間<rt>なかま</rt></ruby>だ。<br>*(Sau này nhờ cậu nhé. Đồng đội mà.)* |
| Thức | こちらこそ、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cháu cũng mong vậy ạ.)* |

---

## Tình huống 12 — Văn phòng · 16:30, 親方 nói về kế hoạch dài hạn

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>を<ruby>本気<rt>ほんき</rt></ruby>で<ruby>目指<rt>めざ</rt></ruby>さないか?<br>*(Thức, có nghiêm túc hướng tới Đặc định kỹ năng số 2 không?)* |
| Thức | はい、<ruby>目指<rt>めざ</rt></ruby>したいです。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Vâng, cháu muốn hướng tới ạ. Cháu muốn làm lâu dài.)* |
| Tanigawa | そのために<ruby>班長<rt>はんちょう</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>ませる。<br>*(Để vậy tôi cho cậu tích kinh nghiệm tổ trưởng.)* |
| Thức | ありがとうございます。<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>力<rt>ちから</rt></ruby>をつけます。<br>*(Cảm ơn chú ạ. Cháu sẽ rèn từng bước ạ.)* |
| Tanigawa | <ruby>焦<rt>あせ</rt></ruby>るな。お<ruby>前<rt>まえ</rt></ruby>のペースでいい。<br>*(Đừng vội. Theo nhịp của cậu là được.)* |
| Thức | はい、<ruby>地道<rt>じみち</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, cháu sẽ kiên trì từng bước ạ.)* |

---

## Tình huống 13 — Công trường · ngày khác 8:00, chủ trì KY được tổ tin tưởng

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>のKY、<ruby>一番<rt>いちばん</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby>は<ruby>解体<rt>かいたい</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>です。<br>*(KY hôm nay, nguy hiểm nhất là thứ tự tháo dỡ.)* |
| Kondo | この<ruby>前<rt>まえ</rt></ruby>のことだな。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めよう。<br>*(Vụ lần trước nhỉ. Siết lại tinh thần nào.)* |
| Thức | <ruby>必<rt>かなら</rt></ruby>ず<ruby>班長<rt>はんちょう</rt></ruby><ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い、<ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Phải có tổ trưởng giám sát, từ trên xuống. Hô to để xác nhận.)* |
| Bác thợ | お<ruby>前<rt>まえ</rt></ruby>が<ruby>言<rt>い</rt></ruby>うと<ruby>説得<rt>せっとく</rt></ruby><ruby>力<rt>りょく</rt></ruby>があるな。<br>*(Cậu nói thì có sức thuyết phục nhỉ.)* |
| Thức | <ruby>経験<rt>けいけん</rt></ruby>したからこそ<ruby>伝<rt>つた</rt></ruby>えられます。<br>*(Vì đã trải qua nên truyền đạt được ạ.)* |
| Kondo | よし、<ruby>今日<rt>きょう</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>行<rt>い</rt></ruby>こう。<br>*(Được, hôm nay cũng làm an toàn nào.)* |

---

## Tình huống 14 — Công trường · 10:00, được nhà thầu chính hỏi ý kiến chuyên môn

| Vai | Lời thoại |
|---|---|
| Nhà thầu | トゥックさん、ここの<ruby>足場<rt>あしば</rt></ruby>、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>広<rt>ひろ</rt></ruby>げられますか?<br>*(Anh Thức, giàn giáo chỗ này mở rộng thêm chút được không?)* |
| Thức | <ruby>広<rt>ひろ</rt></ruby>げると<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>追加<rt>ついか</rt></ruby>する<ruby>必要<rt>ひつよう</rt></ruby>があります。<br>*(Mở rộng thì cần thêm điểm neo tường ạ.)* |
| Nhà thầu | <ruby>安全<rt>あんぜん</rt></ruby><ruby>上<rt>じょう</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>ないですか?<br>*(Về an toàn không vấn đề chứ?)* |
| Thức | <ruby>追加<rt>ついか</rt></ruby>すれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ただ<ruby>親方<rt>おやかた</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>してから<ruby>正式<rt>せいしき</rt></ruby>に<ruby>回答<rt>かいとう</rt></ruby>します。<br>*(Thêm vào thì ổn ạ. Nhưng em xác nhận với 親方 rồi trả lời chính thức.)* |
| Nhà thầu | <ruby>慎重<rt>しんちょう</rt></ruby>ですね。<ruby>信頼<rt>しんらい</rt></ruby>できます。<br>*(Thận trọng nhỉ. Tin tưởng được.)* |
| Thức | ありがとうございます。すぐ<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cảm ơn anh ạ. Em xác nhận ngay.)* |

---

## Tình huống 15 — Văn phòng · 10:15, xin xác nhận 親方 đúng quy trình

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>元請<rt>もとうけ</rt></ruby>から<ruby>足場<rt>あしば</rt></ruby><ruby>拡張<rt>かくちょう</rt></ruby>の<ruby>要望<rt>ようぼう</rt></ruby>です。<br>*(親方, nhà thầu chính yêu cầu mở rộng giàn giáo ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>はどう<ruby>答<rt>こた</rt></ruby>えた?<br>*(Cậu trả lời thế nào?)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby>つなぎ<ruby>追加<rt>ついか</rt></ruby>で<ruby>可能<rt>かのう</rt></ruby>、ただし<ruby>確認<rt>かくにん</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>回答<rt>かいとう</rt></ruby>と<ruby>言<rt>い</rt></ruby>いました。<br>*(Thêm điểm neo thì được, nhưng trả lời sau khi xác nhận, em nói vậy ạ.)* |
| Tanigawa | <ruby>完璧<rt>かんぺき</rt></ruby>な<ruby>対応<rt>たいおう</rt></ruby>だ。<ruby>勝手<rt>かって</rt></ruby>に<ruby>約束<rt>やくそく</rt></ruby>しなかったな。<br>*(Xử lý hoàn hảo. Không tự ý hứa nhỉ.)* |
| Thức | <ruby>責任<rt>せきにん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>を<ruby>守<rt>まも</rt></ruby>りました。<br>*(Cháu giữ trong phạm vi trách nhiệm ạ.)* |
| Tanigawa | それでこそ<ruby>任<rt>まか</rt></ruby>せられる。やっていいぞ。<br>*(Thế mới giao được. Làm đi.)* |

---

## Tình huống 16 — Công trường · 12:30, 先輩 nói về sự trưởng thành

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、<ruby>三<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>のお<ruby>前<rt>まえ</rt></ruby>とは<ruby>別人<rt>べつじん</rt></ruby>だな。<br>*(Thức, khác hẳn cậu của ba năm trước nhỉ.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>も<ruby>分<rt>わ</rt></ruby>かりませんでした。<br>*(Lúc đầu tên dụng cụ em cũng không biết ạ.)* |
| Kondo | <ruby>今<rt>いま</rt></ruby>は<ruby>元請<rt>もとうけ</rt></ruby>と<ruby>話<rt>はな</rt></ruby>せる。<ruby>大<rt>おお</rt></ruby>きな<ruby>差<rt>さ</rt></ruby>だ。<br>*(Giờ nói chuyện được với nhà thầu chính. Khác biệt lớn.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さんが<ruby>根気<rt>こんき</rt></ruby>よく<ruby>教<rt>おし</rt></ruby>えてくれたからです。<br>*(Vì anh Kondo kiên nhẫn dạy ạ.)* |
| Kondo | <ruby>俺<rt>おれ</rt></ruby>もお<ruby>前<rt>まえ</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>初心<rt>しょしん</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>すよ。<br>*(Anh nhìn cậu cũng nhớ lại tâm thế ban đầu đấy.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かずに<ruby>続<rt>つづ</rt></ruby>けましょう。<br>*(Cùng không lơ là mà tiếp tục nhé.)* |

---

## Tình huống 17 — Công trường · 14:00, 親方 giao Thức kiểm tra cuối công trình

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>完成<rt>かんせい</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>最終<rt>さいしゅう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>、お<ruby>前<rt>まえ</rt></ruby>がやれ。<br>*(Thức, kiểm tra cuối trước khi hoàn thành, cậu làm.)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>最終<rt>さいしゅう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>ですか。<ruby>責任<rt>せきにん</rt></ruby><ruby>重大<rt>じゅうだい</rt></ruby>ですね。<br>*(Cháu kiểm tra cuối ạ. Trách nhiệm nặng nhỉ.)* |
| Tanigawa | だからお<ruby>前<rt>まえ</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>む。<ruby>図面<rt>ずめん</rt></ruby>と<ruby>全<rt>ぜん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>照合<rt>しょうごう</rt></ruby>しろ。<br>*(Nên mới nhờ cậu. Đối chiếu bản vẽ hết các chỗ.)* |
| Thức | はい。<ruby>壁<rt>かべ</rt></ruby>つなぎ、<ruby>手<rt>て</rt></ruby>すり、<ruby>布板<rt>ぬのいた</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Điểm neo, lan can, ván sàn, từng cái em kiểm tra ạ.)* |
| Tanigawa | <ruby>不安<rt>ふあん</rt></ruby>な<ruby>所<rt>ところ</rt></ruby>は<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>言<rt>い</rt></ruby>え。<br>*(Chỗ nào lo cứ nói đừng ngại.)* |
| Thức | はい、<ruby>妥協<rt>だきょう</rt></ruby>せず<ruby>見<rt>み</rt></ruby>ます。<br>*(Vâng, cháu không nhân nhượng mà kiểm ạ.)* |

---

## Tình huống 18 — Công trường · 16:00, hoàn tất kiểm tra cuối và báo cáo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>最終<rt>さいしゅう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(親方, kiểm tra cuối xong rồi ạ.)* |
| Tanigawa | <ruby>異常<rt>いじょう</rt></ruby>はないか?<br>*(Không bất thường chứ?)* |
| Thức | <ruby>西<rt>にし</rt></ruby><ruby>面<rt>めん</rt></ruby>で<ruby>手<rt>て</rt></ruby>すりが<ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>緩<rt>ゆる</rt></ruby>く、<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>めしました。<ruby>他<rt>ほか</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby><ruby>通<rt>どお</rt></ruby>りです。<br>*(Mặt tây lan can một chỗ lỏng, em xiết lại. Còn lại đúng bản vẽ ạ.)* |
| Tanigawa | <ruby>一<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>も<ruby>見逃<rt>みのが</rt></ruby>さなかったな。<br>*(Một chỗ cũng không bỏ sót nhỉ.)* |
| Thức | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>けません。<br>*(Đến cuối không lơ là được ạ.)* |
| Tanigawa | お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せて<ruby>本当<rt>ほんとう</rt></ruby>によかった。<br>*(Giao cho cậu thật sự là đúng.)* |

---

## Tình huống 19 — Văn phòng · 17:00, 親方 nói lời công nhận chính thức

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>一人前<rt>いちにんまえ</rt></ruby>だ。<ruby>胸<rt>むね</rt></ruby>を<ruby>張<rt>は</rt></ruby>っていい。<br>*(Thức, cậu giờ là thợ chính rồi. Ưỡn ngực được đấy.)* |
| Thức | ありがとうございます。まだ<ruby>学<rt>まな</rt></ruby>ぶことばかりです。<br>*(Cảm ơn chú ạ. Vẫn còn nhiều thứ phải học ạ.)* |
| Tanigawa | その<ruby>謙虚<rt>けんきょ</rt></ruby>さがいい。それが<ruby>一人前<rt>いちにんまえ</rt></ruby>の<ruby>証<rt>あかし</rt></ruby>だ。<br>*(Cái khiêm tốn đó tốt. Đó là minh chứng của thợ chính.)* |
| Thức | <ruby>皆<rt>みな</rt></ruby>さんに<ruby>育<rt>そだ</rt></ruby>ててもらいました。<ruby>恩返<rt>おんがえ</rt></ruby>しがしたいです。<br>*(Mọi người đã dạy dỗ cháu. Cháu muốn báo đáp ạ.)* |
| Tanigawa | <ruby>後輩<rt>こうはい</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てるのが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>恩返<rt>おんがえ</rt></ruby>しだ。<br>*(Dạy đàn em là cách báo đáp tốt nhất.)* |
| Thức | はい、<ruby>必<rt>かなら</rt></ruby>ずそうします。<br>*(Vâng, cháu nhất định sẽ làm vậy ạ.)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, 親方 khen em là thợ chính rồi à? Mừng cho em thật. |
| Thức | Vâng anh. Nhưng em không thấy mình giỏi. Chỉ là làm đủ ba năm, không giấu lỗi. |
| Long | Đấy chính là điều khó nhất. Nhiều người làm lâu vẫn không được tin. |
| Thức | Em nhớ ngày đầu anh kèm em, em chẳng biết gì. Giờ tới lượt em kèm đàn em. |
| Long | Đúng rồi. 親方 nói đúng đấy — dạy đàn em là cách báo đáp tốt nhất. |
| Thức | Vâng. Em sẽ làm như anh đã làm với em. Cảm ơn anh nhiều. |

---

## Đọng lại

Sau sự cố được ngăn kịp, 谷川親方 chính thức công nhận Thức như một thợ tin cậy: giao phần việc khó, hỏi ý kiến trước khi quyết, để Thức đại diện tổ làm việc với nhà thầu chính và kiểm tra cuối công trình. Thức luôn giữ trong phạm vi trách nhiệm — không tự ý hứa, không tỏ ra biết, không nhân nhượng về an toàn. Sự công nhận này không thần kỳ mà là kết tinh của ba năm tích lũy. Thức vẫn khiêm tốn và xác định cách báo đáp tốt nhất là dạy lại đàn em.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 任せる | まかせる | Giao phó |
> | 気負う | きおう | Gồng mình, căng thẳng quá mức |
> | 沈下 | ちんか | Lún (nền đất) |
> | 元請 | もとうけ | Nhà thầu chính |
> | 不明点 | ふめいてん | Điểm chưa rõ |
> | 知ったかぶり | しったかぶり | Tỏ ra biết (giả vờ hiểu) |
> | 体制 | たいせい | Cơ cấu, đội hình |
> | 人配置 | ひとはいち | Bố trí nhân lực |
> | 納期 | のうき | Thời hạn giao |
> | 提案 | ていあん | Đề xuất |
> | 拡張 | かくちょう | Mở rộng |
> | 回答 | かいとう | Trả lời (chính thức) |
> | 照合 | しょうごう | Đối chiếu |
> | 一人前 | いちにんまえ | Thợ chính, người trưởng thành nghề |
> | 恩返し | おんがえし | Báo đáp ơn |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (835000012, 800000035, NULL, 'markdown_book', 'T12. Hết ba năm — tiếp tục đặc định kỹ năng (三年目の終わり)', '# Sách thực tập sinh xây dựng · T12. Hết ba năm — tiếp tục đặc định kỹ năng (三年目の終わり)

> **Mục tiêu nhân vật:** Thức kết thúc 3 năm thực tập kỹ năng, chuyển tiếp sang 特定技能 và tiếp tục dẫn dắt đàn em. Học mẫu câu nghiệp vụ và trang trọng khi hoàn thành chương trình thực tập, nhận xét tổng kết của 親方, bàn giao tinh thần cho đàn em — một kết mở hướng tới tương lai.

---

## Bối cảnh

Tháng 3 năm 2029. Ba năm thực tập kỹ năng của Thức kết thúc. Em hoàn thành chương trình (技能実習 修了), đã có visa 特定技能 để tiếp tục làm việc tại tổ của 谷川親方. Đây là kết mở — không phải đỉnh vinh quang mà là một cột mốc bình thản, mở ra chặng đường mới với vai trò người dẫn dắt đàn em. Chương này tập trung mẫu câu nghiệp vụ và trang trọng: lễ hoàn thành, tổng kết, bàn giao tinh thần.

---

## Tình huống 1 — Văn phòng · 8:00, 親方 thông báo hoàn thành chương trình

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>今月<rt>こんげつ</rt></ruby>で<ruby>技能<rt>ぎのう</rt></ruby><ruby>実習<rt>じっしゅう</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>、<ruby>修了<rt>しゅうりょう</rt></ruby>だな。<br>*(Thức, tháng này là hoàn thành ba năm thực tập kỹ năng nhỉ.)* |
| Thức | はい。あっという<ruby>間<rt>ま</rt></ruby>でした。<br>*(Vâng. Nhanh thật ạ.)* |
| Tanigawa | <ruby>長<rt>なが</rt></ruby>かったか、<ruby>短<rt>みじか</rt></ruby>かったか?<br>*(Dài hay ngắn?)* |
| Thức | <ruby>大変<rt>たいへん</rt></ruby>でしたが、<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ると<ruby>短<rt>みじか</rt></ruby>く<ruby>感<rt>かん</rt></ruby>じます。<br>*(Vất vả nhưng nhìn lại thấy ngắn ạ.)* |
| Tanigawa | それは<ruby>充実<rt>じゅうじつ</rt></ruby>していた<ruby>証<rt>あかし</rt></ruby>だ。よく<ruby>続<rt>つづ</rt></ruby>けた。<br>*(Đó là minh chứng của sự sung mãn. Kiên trì tốt lắm.)* |
| Thức | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Cảm ơn chú ạ. Nhờ mọi người ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:20, làm thủ tục hoàn thành với người phụ trách

| Vai | Lời thoại |
|---|---|
| Phụ trách | トゥックさん、<ruby>修了<rt>しゅうりょう</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>きをします。<br>*(Anh Thức, làm thủ tục hoàn thành nhé.)* |
| Thức | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong chị ạ.)* |
| Phụ trách | この<ruby>修了<rt>しゅうりょう</rt></ruby><ruby>証<rt>しょう</rt></ruby>は<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>してください。<br>*(Giấy chứng nhận hoàn thành này bảo quản cẩn thận nhé.)* |
| Thức | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>いますよね?<br>*(Đặc định kỹ năng cũng dùng phải không ạ?)* |
| Phụ trách | はい、<ruby>大事<rt>だいじ</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>です。<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>は<ruby>切<rt>き</rt></ruby>れ<ruby>目<rt>め</rt></ruby>なく<ruby>移行<rt>いこう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng, giấy tờ quan trọng. Tư cách lưu trú đã chuyển tiếp liền mạch rồi.)* |
| Thức | <ruby>安心<rt>あんしん</rt></ruby>しました。ありがとうございます。<br>*(Em yên tâm rồi. Cảm ơn chị ạ.)* |

---

## Tình huống 3 — Họp sáng · 8:30, được giới thiệu trước cả tổ

| Vai | Lời thoại |
|---|---|
| Tanigawa | みんな、トゥックが<ruby>今月<rt>こんげつ</rt></ruby>で<ruby>実習<rt>じっしゅう</rt></ruby><ruby>修了<rt>しゅうりょう</rt></ruby>だ。<br>*(Mọi người, Thức tháng này hoàn thành thực tập.)* |
| Kondo | おめでとう。<ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>、よく<ruby>頑張<rt>がんば</rt></ruby>ったな。<br>*(Chúc mừng. Ba năm, cố gắng tốt lắm.)* |
| Thức | ありがとうございます。これからも<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Cảm ơn anh ạ. Em vẫn tiếp tục với Đặc định kỹ năng ạ.)* |
| Bác thợ | <ruby>仲間<rt>なかま</rt></ruby>として<ruby>残<rt>のこ</rt></ruby>るのは<ruby>嬉<rt>うれ</rt></ruby>しいよ。<br>*(Ở lại làm đồng đội là mừng đấy.)* |
| Thức | <ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Tiếp tục, mong mọi người ạ.)* |
| Nam | トゥックさん、<ruby>本当<rt>ほんとう</rt></ruby>におめでとうございます!<br>*(Anh Thức, thật sự chúc mừng anh ạ!)* |

---

## Tình huống 4 — Công trường · 9:00, làm việc như thường ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>のKY、ナムくんから<ruby>言<rt>い</rt></ruby>ってみて。<br>*(KY hôm nay, Nam thử nói đi.)* |
| Nam | <ruby>朝<rt>あさ</rt></ruby>の<ruby>冷<rt>ひ</rt></ruby>えで<ruby>足場<rt>あしば</rt></ruby>が<ruby>滑<rt>すべ</rt></ruby>る<ruby>危険<rt>きけん</rt></ruby>です。<br>*(Sáng lạnh giàn giáo trơn nguy hiểm ạ.)* |
| Thức | いいね。<ruby>対策<rt>たいさく</rt></ruby>は?<br>*(Tốt. Biện pháp?)* |
| Nam | <ruby>布板<rt>ぬのいた</rt></ruby>を<ruby>拭<rt>ふ</rt></ruby>いて、<ruby>足元<rt>あしもと</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>です。<br>*(Lau ván sàn, kiểm tra chỗ chân triệt để ạ.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>もう<ruby>立派<rt>りっぱ</rt></ruby>に<ruby>言<rt>い</rt></ruby>えるな。<br>*(Hoàn hảo. Em nói được đàng hoàng rồi đấy.)* |
| Nam | トゥックさんに<ruby>教<rt>おそ</rt></ruby>わったからです。<br>*(Vì được anh Thức dạy ạ.)* |

---

## Tình huống 5 — Công trường · 10:00, 職長 nhận xét quá trình ba năm

| Vai | Lời thoại |
|---|---|
| Saito | トゥック、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>会<rt>あ</rt></ruby>ったときを<ruby>覚<rt>おぼ</rt></ruby>えてるか?<br>*(Thức, có nhớ lần đầu gặp không?)* |
| Thức | はい。<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>も<ruby>言<rt>い</rt></ruby>えませんでした。<br>*(Vâng. Tên dụng cụ em cũng không nói được ạ.)* |
| Saito | <ruby>今<rt>いま</rt></ruby>は<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてる。<ruby>感慨深<rt>かんがいぶか</rt></ruby>いよ。<br>*(Giờ dạy được đàn em. Cảm động lắm đấy.)* |
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さんが<ruby>根気<rt>こんき</rt></ruby>よく<ruby>指導<rt>しどう</rt></ruby>してくれたからです。<br>*(Vì anh Saito kiên nhẫn chỉ dạy ạ.)* |
| Saito | <ruby>本人<rt>ほんにん</rt></ruby>が<ruby>諦<rt>あきら</rt></ruby>めなかったからだ。これからも<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Vì bản thân cậu không bỏ cuộc. Sau này nhờ cậu nhé.)* |
| Thức | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng hết sức ạ.)* |

---

## Tình huống 6 — Công trường · 11:00, dẫn dắt đàn em mới đến

| Vai | Lời thoại |
|---|---|
| TTS mới | トゥックさん、これはどうやって<ruby>持<rt>も</rt></ruby>ちますか?<br>*(Anh Thức, cái này cầm thế nào ạ?)* |
| Thức | <ruby>腰<rt>こし</rt></ruby>で<ruby>持<rt>も</rt></ruby>つ。<ruby>背中<rt>せなか</rt></ruby>を<ruby>丸<rt>まる</rt></ruby>めない。こうだ。<br>*(Nâng bằng hông. Không khom lưng. Như này.)* |
| TTS mới | <ruby>難<rt>むずか</rt></ruby>しいです……。<br>*(Khó ạ...)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>はみんなそうだ。<ruby>俺<rt>おれ</rt></ruby>もそうだった。ゆっくりでいい。<br>*(Lúc đầu ai cũng vậy. Anh cũng thế. Từ từ là được.)* |
| TTS mới | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em cố gắng ạ.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>からなければ<ruby>何回<rt>なんかい</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いて。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>だ。<br>*(Không hiểu thì hỏi bao nhiêu lần cũng được. Đó là an toàn nhất.)* |

---

## Tình huống 7 — Lán nghỉ · 12:00, đàn em hỏi cảm tưởng sau ba năm

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>が<ruby>終<rt>お</rt></ruby>わって、どんな<ruby>気持<rt>きも</rt></ruby>ちですか?<br>*(Anh Thức, ba năm kết thúc, anh thấy thế nào ạ?)* |
| Thức | <ruby>特別<rt>とくべつ</rt></ruby>じゃないよ。<ruby>明日<rt>あした</rt></ruby>もいつも<ruby>通<rt>どお</rt></ruby>り<ruby>足場<rt>あしば</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がる。<br>*(Không có gì đặc biệt. Mai vẫn lên giàn giáo như mọi khi.)* |
| Nam | もっと<ruby>喜<rt>よろこ</rt></ruby>ぶと<ruby>思<rt>おも</rt></ruby>っていました。<br>*(Em tưởng anh sẽ vui hơn ạ.)* |
| Thức | <ruby>嬉<rt>うれ</rt></ruby>しいよ。でもこの<ruby>仕事<rt>しごと</rt></ruby>に<ruby>終<rt>お</rt></ruby>わりはない。<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>があるだけだ。<br>*(Vui chứ. Nhưng nghề này không có kết thúc. Chỉ có mục tiêu tiếp theo.)* |
| Nam | <ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Mục tiêu tiếp theo là gì ạ?)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に、<ruby>後輩<rt>こうはい</rt></ruby>をしっかり<ruby>育<rt>そだ</rt></ruby>てる。それで<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Trân trọng mỗi ngày, dạy đàn em nên người. Vậy là đủ.)* |

---

## Tình huống 8 — Công trường · 13:00, 親方 nói về chặng đường tiếp theo

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>修了<rt>しゅうりょう</rt></ruby>して<ruby>気<rt>き</rt></ruby>が<ruby>緩<rt>ゆる</rt></ruby>むなよ。<br>*(Thức, hoàn thành rồi đừng lơ là đấy.)* |
| Thức | はい。<ruby>明日<rt>あした</rt></ruby>からも<ruby>同<rt>おな</rt></ruby>じです。<br>*(Vâng. Từ mai cũng vẫn vậy ạ.)* |
| Tanigawa | <ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>は<ruby>戦力<rt>せんりょく</rt></ruby>として<ruby>期待<rt>きたい</rt></ruby>される。<ruby>責任<rt>せきにん</rt></ruby>も<ruby>増<rt>ふ</rt></ruby>える。<br>*(Đặc định kỹ năng được kỳ vọng như lực lượng chính. Trách nhiệm cũng tăng.)* |
| Thức | <ruby>覚悟<rt>かくご</rt></ruby>しています。<ruby>班長<rt>はんちょう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Em sẵn sàng ạ. Em hướng tới làm tổ trưởng.)* |
| Tanigawa | その<ruby>意気<rt>いき</rt></ruby>だ。<ruby>焦<rt>あせ</rt></ruby>らず、<ruby>一<rt>ひと</rt></ruby><ruby>段<rt>だん</rt></ruby>ずつ<ruby>上<rt>あ</rt></ruby>がれ。<br>*(Khí thế đó. Đừng vội, lên từng bậc một.)* |
| Thức | はい、<ruby>地道<rt>じみち</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em kiên trì từng bước ạ.)* |

---

## Tình huống 9 — Công trường · 14:00, áp dụng kinh nghiệm ba năm vào việc khó

| Vai | Lời thoại |
|---|---|
| Kondo | トゥック、この<ruby>変則<rt>へんそく</rt></ruby><ruby>足場<rt>あしば</rt></ruby>、どう<ruby>攻<rt>せ</rt></ruby>める?<br>*(Thức, giàn giáo bất quy tắc này, tấn công thế nào?)* |
| Thức | <ruby>図面<rt>ずめん</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby>を<ruby>合<rt>あ</rt></ruby>わせて、<ruby>角<rt>かど</rt></ruby>から<ruby>基準<rt>きじゅん</rt></ruby>を<ruby>取<rt>と</rt></ruby>ります。<br>*(Đối chiếu bản vẽ với hiện trường, lấy chuẩn từ góc ạ.)* |
| Kondo | <ruby>三<rt>さん</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>はこんなこと<ruby>言<rt>い</rt></ruby>えなかったな。<br>*(Ba năm trước không nói được thế này nhỉ.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねです。<br>*(Là tích lũy mỗi ngày ạ.)* |
| Kondo | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>にも<ruby>言<rt>い</rt></ruby>ってやれ。<br>*(Câu đó nói cho đàn em nghe đi.)* |
| Thức | はい、いつも<ruby>言<rt>い</rt></ruby>っています。<br>*(Vâng, em vẫn nói luôn ạ.)* |

---

## Tình huống 10 — Công trường · 15:00, bàn giao tinh thần cho Nam

| Vai | Lời thoại |
|---|---|
| Thức | ナムくん、<ruby>新人<rt>しんじん</rt></ruby>の<ruby>面倒<rt>めんどう</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しずつ<ruby>任<rt>まか</rt></ruby>せるよ。<br>*(Nam, kèm người mới, anh giao dần cho em.)* |
| Nam | <ruby>私<rt>わたし</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えていいんですか?<br>*(Em dạy được ạ?)* |
| Thức | お<ruby>前<rt>まえ</rt></ruby>ができる。<ruby>俺<rt>おれ</rt></ruby>が<ruby>横<rt>よこ</rt></ruby>で<ruby>見<rt>み</rt></ruby>てる。<br>*(Em làm được. Anh đứng bên cạnh xem.)* |
| Nam | <ruby>不安<rt>ふあん</rt></ruby>ですが、やってみます。<br>*(Em lo nhưng em thử ạ.)* |
| Thức | <ruby>教<rt>おし</rt></ruby>えると<ruby>自分<rt>じぶん</rt></ruby>も<ruby>伸<rt>の</rt></ruby>びる。<ruby>俺<rt>おれ</rt></ruby>がそうだった。<br>*(Dạy thì bản thân cũng tiến. Anh đã như vậy.)* |
| Nam | はい。トゥックさんみたいに<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng. Em sẽ cố gắng như anh Thức ạ.)* |

---

## Tình huống 11 — Công trường · 16:00, đồng nghiệp Nhật chúc mừng

| Vai | Lời thoại |
|---|---|
| Bác thợ | トゥック、<ruby>修了<rt>しゅうりょう</rt></ruby>おめでとう。<ruby>立派<rt>りっぱ</rt></ruby>になったな。<br>*(Thức, chúc mừng hoàn thành. Trưởng thành rồi đấy.)* |
| Thức | ありがとうございます。<ruby>松本<rt>まつもと</rt></ruby>さんに<ruby>支<rt>ささ</rt></ruby>えられました。<br>*(Cảm ơn anh ạ. Được bác Matsumoto nâng đỡ ạ.)* |
| Bác thợ | <ruby>国<rt>くに</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>っても、いい<ruby>職人<rt>しょくにん</rt></ruby>はいい<ruby>職人<rt>しょくにん</rt></ruby>だ。<br>*(Khác nước, nhưng thợ giỏi là thợ giỏi.)* |
| Thức | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Câu đó, cả đời em không quên ạ.)* |
| Bác thợ | これからも<ruby>一緒<rt>いっしょ</rt></ruby>にやろう。<br>*(Sau này cùng làm nhé.)* |
| Thức | はい、こちらこそ。<br>*(Vâng, em cũng mong vậy ạ.)* |

---

## Tình huống 12 — Văn phòng · 16:30, ký giấy tờ tiếp tục đặc định kỹ năng

| Vai | Lời thoại |
|---|---|
| Phụ trách | トゥックさん、<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>の<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Thức, hợp đồng lao động Đặc định kỹ năng, nhờ anh xác nhận.)* |
| Thức | はい。<ruby>仕事<rt>しごと</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>と<ruby>給与<rt>きゅうよ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Em xác nhận nội dung công việc và lương ạ.)* |
| Phụ trách | <ruby>月給<rt>げっきゅう</rt></ruby><ruby>制<rt>せい</rt></ruby>で、<ruby>実習<rt>じっしゅう</rt></ruby>のときより<ruby>条件<rt>じょうけん</rt></ruby>が<ruby>良<rt>よ</rt></ruby>くなっています。<br>*(Chế độ lương tháng, điều kiện tốt hơn lúc thực tập.)* |
| Thức | <ruby>内容<rt>ないよう</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>しました。<ruby>署名<rt>しょめい</rt></ruby>します。<br>*(Nội dung em xác nhận rồi. Em ký ạ.)* |
| Phụ trách | これで<ruby>正式<rt>せいしき</rt></ruby>に<ruby>特定<rt>とくてい</rt></ruby><ruby>技能<rt>ぎのう</rt></ruby>です。<ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Thế là chính thức Đặc định kỹ năng. Cố gắng nhé.)* |
| Thức | はい、ありがとうございます。<br>*(Vâng, cảm ơn chị ạ.)* |

---

## Tình huống 13 — Công trường · 17:00, KY cuối ngày Thức chủ trì

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>事故<rt>じこ</rt></ruby>ゼロで<ruby>終<rt>お</rt></ruby>われました。<br>*(Hôm nay vất vả rồi. Kết thúc không tai nạn.)* |
| Kondo | お<ruby>前<rt>まえ</rt></ruby>の<ruby>仕切<rt>しき</rt></ruby>りは<ruby>安定<rt>あんてい</rt></ruby>してるな。<br>*(Cậu điều hành ổn định nhỉ.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>は<ruby>解体<rt>かいたい</rt></ruby>です。<ruby>順番<rt>じゅんばん</rt></ruby>、<ruby>上<rt>うえ</rt></ruby>から、<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>必須<rt>ひっす</rt></ruby>です。<br>*(Mai là tháo dỡ. Thứ tự từ trên, bắt buộc có giám sát.)* |
| Nam | あの<ruby>事故<rt>じこ</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Em không quên vụ tai nạn đó ạ.)* |
| Thức | <ruby>忘<rt>わす</rt></ruby>れないことが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>だ。<br>*(Không quên là biện pháp an toàn tốt nhất.)* |
| Kondo | いい<ruby>締<rt>し</rt></ruby>めだ。<ruby>明日<rt>あした</rt></ruby>もよろしく。<br>*(Kết hay đấy. Mai cũng nhờ nhé.)* |

---

## Tình huống 14 — Văn phòng · 17:20, 親方 trao lời tổng kết ba năm

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>三<rt>さん</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(Thức, ba năm, thật sự cố gắng tốt lắm.)* |
| Thức | <ruby>未熟<rt>みじゅく</rt></ruby>な<ruby>私<rt>わたし</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>ててくださり、ありがとうございました。<br>*(Cảm ơn chú đã dạy dỗ một đứa non nớt như cháu ạ.)* |
| Tanigawa | <ruby>育<rt>そだ</rt></ruby>ったのはお<ruby>前<rt>まえ</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>は<ruby>道<rt>みち</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>しただけだ。<br>*(Trưởng thành là nỗ lực của cậu. Tôi chỉ chỉ đường.)* |
| Thức | これからも<ruby>学<rt>まな</rt></ruby>び<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Sau này cháu vẫn tiếp tục học ạ.)* |
| Tanigawa | それでいい。<ruby>職人<rt>しょくにん</rt></ruby>に「<ruby>終<rt>お</rt></ruby>わり」はない。<br>*(Thế là được. Thợ thì không có "kết thúc".)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, cháu khắc cốt ạ.)* |

---

## Tình huống 15 — Công trường · ngày khác 8:00, một ngày làm việc bình thường mới

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>もご<ruby>安全<rt>あんぜん</rt></ruby>に。KYを<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mọi người, hôm nay cũng an toàn nhé. Bắt đầu KY.)* |
| Nam | <ruby>今日<rt>きょう</rt></ruby>は<ruby>解体<rt>かいたい</rt></ruby>なので<ruby>順番<rt>じゅんばん</rt></ruby><ruby>厳守<rt>げんしゅ</rt></ruby>です。<br>*(Hôm nay tháo dỡ nên tuân thủ thứ tự nghiêm ạ.)* |
| TTS mới | <ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いは<ruby>誰<rt>だれ</rt></ruby>ですか?<br>*(Ai giám sát ạ?)* |
| Thức | <ruby>私<rt>わたし</rt></ruby>が<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>う。<ruby>分<rt>わ</rt></ruby>からなければすぐ<ruby>聞<rt>き</rt></ruby>いて。<br>*(Anh giám sát. Không hiểu thì hỏi ngay.)* |
| Bác thợ | <ruby>普段<rt>ふだん</rt></ruby><ruby>通<rt>どお</rt></ruby>りでいいな。<br>*(Như mọi khi là được nhỉ.)* |
| Thức | はい、<ruby>普段<rt>ふだん</rt></ruby><ruby>通<rt>どお</rt></ruby>りが<ruby>一番<rt>いちばん</rt></ruby>です。<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Vâng, như mọi khi là tốt nhất. Bắt đầu nào.)* |

---

## Tình huống 16 — Công trường · 11:00, đàn em mới hỏi về tương lai

| Vai | Lời thoại |
|---|---|
| TTS mới | トゥックさん、<ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>れば<ruby>私<rt>わたし</rt></ruby>もこうなれますか?<br>*(Anh Thức, cố gắng ba năm em cũng được như anh ạ?)* |
| Thức | なれるよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつ、<ruby>諦<rt>あきら</rt></ruby>めなければ。<br>*(Được chứ. Mỗi ngày một ít, không bỏ cuộc.)* |
| TTS mới | <ruby>大変<rt>たいへん</rt></ruby>なことも<ruby>多<rt>おお</rt></ruby>いですよね?<br>*(Có nhiều chuyện vất vả phải không ạ?)* |
| Thức | <ruby>多<rt>おお</rt></ruby>い。でも<ruby>一人<rt>ひとり</rt></ruby>じゃない。<ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>たちがいる。<br>*(Nhiều. Nhưng không một mình. Khó thì có bọn anh.)* |
| TTS mới | <ruby>心強<rt>こころづよ</rt></ruby>いです。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em vững tâm ạ. Em cố gắng.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>先輩<rt>せんぱい</rt></ruby>にそう<ruby>言<rt>い</rt></ruby>ってもらった。<ruby>今度<rt>こんど</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>の<ruby>番<rt>ばん</rt></ruby>だ。<br>*(Anh cũng được đàn anh nói vậy. Giờ tới lượt anh.)* |

---

## Tình huống 17 — Công trường · 14:00, xử lý tình huống như người chỉ huy

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>新人<rt>しんじん</rt></ruby>がフックを<ruby>忘<rt>わす</rt></ruby>れそうでした。<ruby>注意<rt>ちゅうい</rt></ruby>しました。<br>*(Anh Thức, người mới suýt quên móc khóa. Em đã nhắc ạ.)* |
| Thức | よく<ruby>気<rt>き</rt></ruby>づいた。それが<ruby>先輩<rt>せんぱい</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だ。<br>*(Phát hiện tốt. Đó là việc của đàn anh.)* |
| Nam | <ruby>怒<rt>おこ</rt></ruby>らずに<ruby>言<rt>い</rt></ruby>えました。<br>*(Em nhắc mà không nổi giận ạ.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>だ。<ruby>心配<rt>しんぱい</rt></ruby>だから<ruby>言<rt>い</rt></ruby>う、それが<ruby>伝<rt>つた</rt></ruby>われば<ruby>十分<rt>じゅうぶん</rt></ruby>だ。<br>*(Hoàn hảo. Vì lo nên nhắc, truyền được điều đó là đủ.)* |
| Nam | トゥックさんが<ruby>私<rt>わたし</rt></ruby>にしてくれたことです。<br>*(Là cái anh Thức từng làm với em ạ.)* |
| Thức | (mỉm cười) そうやって<ruby>続<rt>つづ</rt></ruby>いていくんだ。<br>*(Cứ thế mà nối tiếp đấy.)* |

---

## Tình huống 18 — Công trường · 16:00, 親方 nói về kết mở

| Vai | Lời thoại |
|---|---|
| Tanigawa | トゥック、<ruby>三<rt>さん</rt></ruby><ruby>年<rt>ねん</rt></ruby>は<ruby>通過点<rt>つうかてん</rt></ruby>だ。ゴールじゃない。<br>*(Thức, ba năm là điểm trung gian. Không phải đích.)* |
| Thức | はい。<ruby>分<rt>わ</rt></ruby>かっています。<ruby>道<rt>みち</rt></ruby>はまだ<ruby>続<rt>つづ</rt></ruby>きます。<br>*(Vâng. Cháu hiểu ạ. Con đường vẫn tiếp tục.)* |
| Tanigawa | <ruby>班長<rt>はんちょう</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby>、その<ruby>先<rt>さき</rt></ruby>もある。<br>*(Tổ trưởng, tổ trưởng lớn, còn xa hơn nữa.)* |
| Thức | <ruby>焦<rt>あせ</rt></ruby>らず、<ruby>一<rt>ひと</rt></ruby><ruby>段<rt>だん</rt></ruby>ずつ<ruby>上<rt>あ</rt></ruby>がります。<br>*(Không vội, lên từng bậc một ạ.)* |
| Tanigawa | それでいい。お<ruby>前<rt>まえ</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Thế là được. Cậu thì ổn thôi.)* |
| Thức | ありがとうございます。これからもよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cảm ơn chú ạ. Sau này mong chú tiếp tục chỉ bảo ạ.)* |

---

## Tình huống 19 — Công trường · 17:00, chiều cuối tháng, một ngày khép lại bình thản

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>今日<rt>きょう</rt></ruby>もお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người, hôm nay vất vả rồi.)* |
| Kondo | お<ruby>疲<rt>つか</rt></ruby>れさん。トゥック、<ruby>明日<rt>あした</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>むぞ。<br>*(Vất vả rồi. Thức, mai cũng nhờ nhé.)* |
| Thức | はい。<ruby>明日<rt>あした</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じように、<ruby>安全<rt>あんぜん</rt></ruby>に。<br>*(Vâng. Mai cũng như vậy, an toàn nhé.)* |
| Nam | トゥックさん、<ruby>先<rt>さき</rt></ruby>に<ruby>片付<rt>かたづ</rt></ruby>けておきます。<br>*(Anh Thức, em dọn dẹp trước ạ.)* |
| Thức | ありがとう。<ruby>道具<rt>どうぐ</rt></ruby>の<ruby>数<rt>かず</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずに。<br>*(Cảm ơn. Đừng quên kiểm số dụng cụ.)* |
| Nam | はい、<ruby>分<rt>わ</rt></ruby>かりました!<br>*(Vâng, em hiểu rồi ạ!)* |

---

## Tình huống 20 — Ký túc xá · 20:00, tâm sự tiếng Việt với anh Long

| Vai | Lời thoại |
|---|---|
| Long | Thức, vậy là xong ba năm thực tập rồi. Cảm giác sao? |
| Thức | Bình thản anh ạ. Không có pháo hoa gì cả. Mai vẫn lên giàn giáo như mọi ngày. |
| Long | Đấy mới là thật. Nghề này không có đích, chỉ có làm tiếp cho tử tế. |
| Thức | Em ở lại đặc định kỹ năng, kèm thêm đàn em. Em thấy đủ rồi anh. |
| Long | Em đi đúng đường. Nhớ ngày đầu anh kèm em không? Giờ em làm điều đó cho lớp sau. |
| Thức | Vâng. Em không quên ai đã giúp em đâu anh. Cứ thế mà nối tiếp thôi. |

---

## Đọng lại

Thức kết thúc ba năm thực tập kỹ năng và chuyển tiếp liền mạch sang 特定技能, tiếp tục làm việc tại tổ của 谷川親方. Đây là một kết mở bình thản — không phải đỉnh vinh quang mà là một cột mốc, mai lại lên giàn giáo như mọi ngày. Thức nay là người dẫn dắt: bàn giao tinh thần cho Nam, kèm đàn em mới, truyền lại đúng những gì anh Long và 親方 từng làm với mình. 親方 nhấn mạnh "thợ thì không có kết thúc" — con đường vẫn tiếp tục, từng bậc một, với cái tâm biết ơn và kiên trì.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 修了 | しゅうりょう | Hoàn thành (chương trình) |
> | 修了証 | しゅうりょうしょう | Giấy chứng nhận hoàn thành |
> | 在留資格 | ざいりゅうしかく | Tư cách lưu trú |
> | 移行 | いこう | Chuyển tiếp |
> | 切れ目なく | きれめなく | Liền mạch, không gián đoạn |
> | 感慨深い | かんがいぶかい | Đầy cảm xúc, cảm động |
> | 戦力 | せんりょく | Lực lượng (lao động) chính |
> | 覚悟 | かくご | Quyết tâm, sẵn sàng |
> | 厳守 | げんしゅ | Tuân thủ nghiêm ngặt |
> | 立ち会い | たちあい | Giám sát, chứng kiến |
> | 通過点 | つうかてん | Điểm trung gian (không phải đích) |
> | 未熟 | みじゅく | Non nớt, chưa thành thạo |
> | 肝に銘じる | きもにめいじる | Khắc cốt ghi tâm |
> | 積み重ね | つみかさね | Sự tích lũy |
> | ご安全に | ごあんぜんに | Câu chào an toàn (xây dựng) |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
