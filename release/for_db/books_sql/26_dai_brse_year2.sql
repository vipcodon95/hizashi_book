-- Hizashi LITE book SQL — BrSE Y2
-- curriculum_id = 800000026  (book_seq=26)
-- nguồn: books/26_dai_brse_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000026, 'N4', 'markdown_book', 'Công nghệ thông tin', 'BrSE Y2', 'Bộ sách Hizashi — BrSE Y2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000001, 800000026, NULL, 'markdown_book', 'T1. Day 1 full-time CEO — Year 2 kickoff', '# Sách kỹ sư cầu nối & khởi nghiệp · T1. Day 1 full-time CEO — Year 2 kickoff

> **Mục tiêu nhân vật:** Đại 26 tuổi, tháng 4/2031, vừa quit Thanh A (退職届 đã nộp 31/3). Học các mẫu hội thoại tiếng Nhật của founder full-time ngày đầu: (1) tự giới thiệu lại bản thân là CEO 「フルタイムで〜になりました」, (2) trình bày OKR quý trong họp cofounder, (3) hỏi bác sĩ sản phụ khoa về tim thai 「<ruby>心拍<rt>しんぱく</rt></ruby>は<ruby>確認<rt>かくにん</rt></ruby>できますか」, (4) dẫn dắt user research call song ngữ JP-VN, (5) viết email keigo đề xuất hợp tác B2B 「ご<ruby>提案<rt>ていあん</rt></ruby>させていただきます」, (6) báo tin gia đình bằng VN xen JP.

---

## Bối cảnh

Ngày 1/4/2031 thứ Ba — Day 1 Đại chính thức làm full-time CEO của Hizashi sau khi退職 Thanh A cuối tháng 3. Mai 26 tuổi mang thai bé thứ hai 7 tuần, Hana 32 tháng. WeWork Umeda 23F, 3 desks. Pre-seed cash ¥18M + cash flow positive ¥0.7M/tháng. Chương này tập trung các mẫu câu mở đầu năm 2 của founder: keigo email đề xuất hợp tác, hỏi bác sĩ sản, dẫn user call.

---

## Tình huống 1 — Apt Senri-chuo · 7:30, Mai chúc mừng Day 1 full-time

| Vai | Lời thoại |
|---|---|
| Mai | (bưng cháo + croissant ra bàn) Anh ơi, dậy ăn sáng. Hôm nay Day 1 full-time CEO của anh đó. |
| Đại | (đeo cravat đỏ) Cảm xúc lạ quá em. Lần đầu trong đời không có sếp. |
| Mai | Em chuẩn bị cravat đỏ — màu may mắn. Anh đeo lên Tuấn với Aiko cười cho coi. |
| Hana | (32 tháng, chạy tới) Bố sếp Hizashi! Bố sếp! |
| Đại | (cười) Hana ơi, bố sếp Hizashi nè. Còn mẹ là sếp gia đình. Con là sếp em bé trong bụng mẹ. |
| Mai | (xoa bụng nhẹ) Em à, hôm nay nghén ít hơn hôm qua. Chiều 4 giờ em có hẹn khám sản, anh đưa em đi nhé. |
| Đại | Vâng em. 15:30 anh rời WeWork đón em. |

---

## Tình huống 2 — WeWork Umeda 23F · 9:30, cofounder standup mừng Day 1

| Vai | Lời thoại |
|---|---|
| Tuấn | (đặt hộp mochi lên bàn) Đại ơi, anh ghé Daimaru Senri-chuo mua mochi cho em. Day 1 full-time! |
| Aiko | ダイくん、<ruby>本日<rt>ほんじつ</rt></ruby>からフルタイムCEOですね。おめでとうございます!<br>*(Đại-kun, từ hôm nay là full-time CEO nhỉ. Chúc mừng!)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>正式<rt>せいしき</rt></ruby>にフルタイムでHizashiの<ruby>代表<rt>だいひょう</rt></ruby><ruby>取締役<rt>とりしまりやく</rt></ruby>になりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ hôm nay tôi chính thức full-time làm giám đốc đại diện của Hizashi. Mong mọi người giúp đỡ.)* |
| Tuấn | (VN) Em ơi, anh chuẩn bị OKR Year 2 rồi. Đại ơi trình bày bằng tiếng Nhật cho Aiko nghe luôn nhé. |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。Aikoさん、Year 2 の OKR は<ruby>4<rt>よん</rt></ruby><ruby>四半期<rt>しはんき</rt></ruby>に<ruby>分<rt>わ</rt></ruby>けています。<br>*(Hiểu rồi. Aiko-san, OKR Year 2 chia thành 4 quý.)* |

---

## Tình huống 3 — WeWork 23F · 9:45, Đại trình bày OKR 4 quý bằng tiếng Nhật

| Vai | Lời thoại |
|---|---|
| Đại | (whiteboard) <ruby>第<rt>だい</rt></ruby>1<ruby>四半期<rt>しはんき</rt></ruby>はv2.0の<ruby>開発<rt>かいはつ</rt></ruby>と<ruby>初<rt>はじ</rt></ruby>めての<ruby>採用<rt>さいよう</rt></ruby>です。<br>*(Q1 là phát triển v2.0 và lần đầu tuyển dụng.)* |
| Đại | <ruby>第<rt>だい</rt></ruby>2<ruby>四半期<rt>しはんき</rt></ruby>はv2.0のローンチとSeries Aの<ruby>準備<rt>じゅんび</rt></ruby>。<ruby>第<rt>だい</rt></ruby>3<ruby>四半期<rt>しはんき</rt></ruby>はSeries Aの pitch tour とクロージング。<ruby>第<rt>だい</rt></ruby>4<ruby>四半期<rt>しはんき</rt></ruby>は<ruby>事務所<rt>じむしょ</rt></ruby>の<ruby>拡張<rt>かくちょう</rt></ruby>と<ruby>8名<rt>はちめい</rt></ruby>体制への<ruby>移行<rt>いこう</rt></ruby>です。<br>*(Q2 launch v2.0 + chuẩn bị Series A. Q3 pitch tour Series A và đóng vốn. Q4 mở rộng văn phòng và chuyển sang 8 người.)* |
| Aiko | <ruby>第<rt>だい</rt></ruby>3<ruby>四半期<rt>しはんき</rt></ruby>のクロージング<ruby>金額<rt>きんがく</rt></ruby>はいくらを<ruby>目標<rt>もくひょう</rt></ruby>に?<br>*(Q3 đóng vốn nhắm mục tiêu bao nhiêu ạ?)* |
| Đại | ¥2<ruby>億<rt>おく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。post-money <ruby>評価額<rt>ひょうかがく</rt></ruby>は¥12<ruby>億<rt>おく</rt></ruby><ruby>円<rt>えん</rt></ruby>を<ruby>想定<rt>そうてい</rt></ruby>しています。<br>*(¥200M. Định giá post-money ước ¥1.2B.)* |
| Tuấn | (VN) Q1 ưu tiên: v2.0 đa ngôn ngữ (Korean + Chinese learner) + first hire backend senior. |

---

## Tình huống 4 — WeWork 23F · 10:30, Aiko hỏi lại về thị trường KR-ZH

| Vai | Lời thoại |
|---|---|
| Aiko | ダイくん、「<ruby>多言語化<rt>たげんごか</rt></ruby>」というのは<ruby>具体的<rt>ぐたいてき</rt></ruby>にどの<ruby>言語<rt>げんご</rt></ruby>ですか?<br>*("Đa ngôn ngữ hoá" cụ thể là ngôn ngữ nào ạ?)* |
| Đại | <ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>中国語<rt>ちゅうごくご</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>市場<rt>しじょう</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Tiếng Hàn và tiếng Trung. Tuần sau Aiko-san khảo sát thị trường giúp được không ạ?)* |
| Aiko | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>金曜<rt>きんよう</rt></ruby>までにレポートを<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Vâng, hiểu rồi. Đến thứ Sáu em sẽ nộp report.)* |
| Đại | ありがとうございます。もう<ruby>一<rt>ひと</rt></ruby>つ、user research の call も<ruby>今日<rt>きょう</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めます。<ruby>夕方<rt>ゆうがた</rt></ruby>17<ruby>時<rt>じ</rt></ruby>から5<ruby>名<rt>めい</rt></ruby>と Zoom します。<br>*(Cảm ơn chị. Một việc nữa, user research call hôm nay bắt đầu. Chiều 17h sẽ Zoom với 5 người.)* |

---

## Tình huống 5 — Senri-chuo Maternity Clinic · 15:30, Đại hỏi bác sĩ về tim thai

*Đại đến phòng khám sản gặp Mai. Bác sĩ Tanaka — nữ 50 tuổi, người từng đỡ Hana hồi 8/2028.*

| Vai | Lời thoại |
|---|---|
| Đại | (vào phòng chờ) 先生、お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>夫<rt>おっと</rt></ruby>のダイです。<br>*(Bác sĩ, lâu nay được bác sĩ chăm sóc. Tôi là Đại — chồng.)* |
| Bác sĩ Tanaka | マイさん、ダイさん、お<ruby>久<rt>ひさ</rt></ruby>しぶりです!<ruby>2<rt>に</rt></ruby><ruby>人目<rt>にんめ</rt></ruby>、おめでとうございます。<br>*(Mai-san, Đại-san, lâu rồi không gặp! Chúc mừng bé thứ hai.)* |
| Mai | <ruby>田中<rt>たなか</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、ありがとうございます。<br>*(Bác sĩ Tanaka, cảm ơn ạ.)* |
| Đại | 先生、<ruby>今日<rt>きょう</rt></ruby>は<ruby>心拍<rt>しんぱく</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>はできますか?<br>*(Bác sĩ, hôm nay có thể kiểm tra tim thai được không ạ?)* |
| Bác sĩ | はい、<ruby>7週<rt>ななしゅう</rt></ruby>ですから<ruby>確認<rt>かくにん</rt></ruby>できると<ruby>思<rt>おも</rt></ruby>います。<ruby>超音波<rt>ちょうおんぱ</rt></ruby>でやってみますね。<br>*(Vâng, 7 tuần rồi nên kiểm tra được. Tôi siêu âm thử nhé.)* |
| Bác sĩ | (đặt đầu dò) <ruby>胎児<rt>たいじ</rt></ruby>サイズは8mm、<ruby>順調<rt>じゅんちょう</rt></ruby>です。あ、<ruby>心拍<rt>しんぱく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです!<br>*(Thai 8mm, ổn. À — đã nghe được tim thai!)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか!ありがとうございます!<br>*(Thật ạ! Cảm ơn bác sĩ!)* |
| Bác sĩ | <ruby>予定日<rt>よていび</rt></ruby>は2031<ruby>年<rt>ねん</rt></ruby>12<ruby>月<rt>がつ</rt></ruby>25<ruby>日<rt>にち</rt></ruby>です。<ruby>順調<rt>じゅんちょう</rt></ruby>であれば<ruby>普通<rt>ふつう</rt></ruby><ruby>分娩<rt>ぶんべん</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょう。<br>*(Dự sinh 25/12/2031. Nếu thuận lợi thì sinh thường được.)* |
| Mai | (nhìn Đại, mắt rưng) Anh ơi, em bé sinh Giáng sinh. |

---

## Tình huống 6 — Senri-chuo Maternity Clinic, hành lang · 16:00, Đại hỏi lại bác sĩ về chế độ ăn

| Vai | Lời thoại |
|---|---|
| Đại | 先生、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>食事<rt>しょくじ</rt></ruby>で<ruby>気<rt>き</rt></ruby>をつけるべきことは?<br>*(Bác sĩ, cho tôi hỏi lại lần nữa. Có gì cần lưu ý trong ăn uống không ạ?)* |
| Bác sĩ | <ruby>生<rt>なま</rt></ruby>もの、<ruby>特<rt>とく</rt></ruby>に<ruby>刺身<rt>さしみ</rt></ruby>と<ruby>生<rt>なま</rt></ruby>ハムは<ruby>避<rt>さ</rt></ruby>けてください。カフェインも1<ruby>日<rt>にち</rt></ruby><ruby>2杯<rt>にはい</rt></ruby>までですね。<br>*(Đồ sống, đặc biệt sashimi và prosciutto thì tránh nhé. Caffeine 1 ngày tối đa 2 ly.)* |
| Đại | <ruby>葉酸<rt>ようさん</rt></ruby>のサプリは<ruby>続<rt>つづ</rt></ruby>けたほうがいいですか?<br>*(Folic acid bổ sung vẫn nên uống tiếp ạ?)* |
| Bác sĩ | はい、<ruby>15週<rt>じゅうごしゅう</rt></ruby>まで<ruby>続<rt>つづ</rt></ruby>けてください。<br>*(Vâng, uống tiếp đến tuần 15 nhé.)* |
| Đại | ありがとうございます。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Cảm ơn bác sĩ. Tôi hiểu rồi.)* |

---

## Tình huống 7 — WeWork 23F · 17:00, Zoom user research với Trang (SV Hà Nội)

| Vai | Lời thoại |
|---|---|
| Đại | (Zoom) Em Trang ơi, cảm ơn em dành 30 phút cho anh. Mục đích call: anh muốn hiểu em dùng Hizashi thế nào. |
| Trang (24t, SV Hà Nội) | Vâng anh. Em dùng Hizashi 4 tháng rồi. |
| Đại | Tính năng nào em thích nhất? |
| Trang | AI Tutor anh ơi. Nó giải thích câu hỏi cho cá nhân em — không phải đáp án copy-paste. |
| Đại | Còn chưa thích? |
| Trang | Chưa có tiếng Hàn. Em song song học K-pop Korean nữa, em mong Hizashi mở rộng. |
| Đại | Cảm ơn em. Anh đang plan v2.0 thêm Korean Q3 năm nay. |

---

## Tình huống 8 — WeWork 23F · 17:30, Zoom user research với Hùng (BrSE Tokyo)

| Vai | Lời thoại |
|---|---|
| Đại | Anh Hùng ơi, anh đang ở Tokyo phải không? |
| Hùng (28t, BrSE Tokyo) | Ừ Đại. Anh ở Shibuya. Đang ôn N1. |
| Đại | Hizashi đáp ứng N1 cho anh thế nào? |
| Hùng | Thật ra anh thấy thiếu. Nội dung N1 trên Hizashi chỉ khoảng 30% so với N2 hay N3. |
| Đại | Em ghi nhận. Cụ thể anh thiếu phần nào nhất? |
| Hùng | <ruby>読解<rt>どっかい</rt></ruby> N1 — bài đọc dài 800-1000 chữ. Trên Hizashi chỉ có bài 400-500 chữ. |
| Đại | Em hiểu rồi anh. Q1 v2.0 em sẽ bổ sung 100 bài <ruby>読解<rt>どっかい</rt></ruby> N1 dài. |

---

## Tình huống 9 — WeWork 23F · 18:00, Zoom user research với Quân (IT manager) — insight B2B

| Vai | Lời thoại |
|---|---|
| Đại | Anh Quân ơi, em hỏi thật — anh là IT manager đúng không? |
| Quân (35t, manager Saigon) | Ừ Đại. Anh quản 5 dev Việt làm cho công ty Nhật Saigon. |
| Đại | Vậy anh dùng Hizashi cá nhân hay cho team? |
| Quân | Anh muốn mua gói cho cả team. 5 dev cùng học JP một chỗ. Có gói Enterprise không em? |
| Đại | (mắt sáng) Có anh — gói Enterprise đang dev. ¥1500/người/tháng × 5 dev = ¥7500/tháng. Bao gồm dashboard manager để anh theo dõi tiến độ. |
| Quân | OK em. Cuối tháng anh muốn sign luôn. |
| Đại | Cảm ơn anh! Em sẽ gửi hợp đồng mẫu tuần này. |

---

## Tình huống 10 — Apt Senri-chuo · 22:00, Đại bàn với Mai về insight B2B Enterprise

| Vai | Lời thoại |
|---|---|
| Đại | Em ơi, hôm nay anh gọi 5 khách hàng — nhiều insight hữu ích lắm. |
| Mai | Anh kể em nghe đi. |
| Đại | Quan trọng nhất: anh Quân ở Saigon muốn gói Enterprise cho team 5 dev VN ở công ty Nhật. Tức là Hizashi không chỉ B2C — mà B2B luôn. |
| Mai | Anh ơi, vụ hợp tác Thanh A mà anh Takahashi đề cập hôm 31/3 — chính là khách B2B đầu tiên hoàn hảo đấy! |
| Đại | (mắt sáng) Đúng rồi em! Thanh A có 30 dev VN. Hizashi Enterprise × 30 user × ¥1500 = ¥45k/tháng × 12 = ¥540k ARR. |
| Mai | Anh gửi email cho anh Takahashi luôn đi. Tối nay luôn. |
| Đại | OK em. Anh mở laptop viết bằng keigo cho chuẩn. |

---

## Tình huống 11 — Apt Senri-chuo · 22:30, Đại viết email keigo cho Takahashi-san

*Đại mở laptop, gõ email tiếng Nhật. Đọc to từng câu cho Mai nghe.*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc) <ruby>件名<rt>けんめい</rt></ruby>: Hizashi Enterprise Plan のご<ruby>提案<rt>ていあん</rt></ruby>。<br>*(Tiêu đề: Đề xuất Hizashi Enterprise Plan.)* |
| Đại | <ruby>高橋<rt>たかはし</rt></ruby><ruby>社長<rt>しゃちょう</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。グエン・ダイです。<br>*(Anh Takahashi, lâu nay được anh chăm sóc. Tôi là Nguyễn Đại.)* |
| Đại | <ruby>退職時<rt>たいしょくじ</rt></ruby>にご<ruby>提案<rt>ていあん</rt></ruby>いただいた<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>提携<rt>ていけい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>でございます。<br>*(Liên quan đến đề xuất hợp tác kinh doanh anh đã đưa ra lúc tôi nghỉ việc.)* |
| Đại | Hizashi Enterprise Planを<ruby>清華<rt>タンハー</rt></ruby>ソリューションズ<ruby>様<rt>さま</rt></ruby>の<ruby>30名<rt>さんじゅうめい</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby><ruby>開発者<rt>かいはつしゃ</rt></ruby>に<ruby>導入<rt>どうにゅう</rt></ruby>させていただきたく、ご<ruby>提案<rt>ていあん</rt></ruby>申し上げます。<br>*(Tôi xin đề xuất triển khai Hizashi Enterprise Plan cho 30 dev VN của Thanh A.)* |
| Đại | <ruby>料金<rt>りょうきん</rt></ruby>は¥1,500/<ruby>名<rt>めい</rt></ruby>/<ruby>月<rt>つき</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby>¥45,000/<ruby>月<rt>つき</rt></ruby>でございます。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>本社<rt>ほんしゃ</rt></ruby>でデモは<ruby>可能<rt>かのう</rt></ruby>でしょうか。<br>*(Phí ¥1500/người/tháng, tổng ¥45k/tháng. Tuần sau demo tại trụ sở được không ạ?)* |
| Đại | <ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。グエン・ダイ。<br>*(Kính mong anh xem xét. Nguyễn Đại.)* |
| Mai | Em nghe câu 「<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」 — chuẩn keigo email Nhật rồi anh. Gửi đi! |
| Đại | (nhấn send) Đã gửi! |

---

## Tình huống 12 — Slack #hizashi-team · 22:45, Đại báo team về pitch B2B

| Vai | Lời thoại |
|---|---|
| Đại | (Slack) Anh chị em ơi! Em vừa gửi pitch Hizashi Enterprise cho Thanh A. ¥45k/tháng × 30 dev VN. Đang chờ phản hồi. |
| Tuấn | (Slack) GO! Khách B2B đầu tiên! Mà foreshadow luôn cho slide "B2B traction" trong Series A deck nhé. |
| Aiko | (Slack JP) すごい!<ruby>初<rt>はじ</rt></ruby>めての B2B <ruby>商談<rt>しょうだん</rt></ruby>ですね。<ruby>明日<rt>あした</rt></ruby><ruby>朝<rt>あさ</rt></ruby>の standup で<ruby>詳<rt>くわ</rt></ruby>しく<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Tuyệt! Là thương đàm B2B đầu tiên. Sáng mai standup kể chi tiết nhé.)* |
| Đại | (Slack JP) はい!<ruby>明日<rt>あした</rt></ruby>9:30で<ruby>詳<rt>くわ</rt></ruby>しくお<ruby>話<rt>はな</rt></ruby>しします。<br>*(Vâng! Mai 9:30 em sẽ kể chi tiết.)* |

---

## Tình huống 13 — Apt Senri-chuo, phòng ngủ · 23:30, gọi điện báo bố mẹ ở Hà Nội (tiếng Việt)

*Đại gọi video call bố mẹ ở Hà Nội qua Zalo. Bố mẹ ngồi ở phòng khách Cầu Giấy, đã 21:30 giờ VN.*

| Vai | Lời thoại |
|---|---|
| Đại | (Zalo) Bố mẹ ơi! Hôm nay là Day 1 con full-time CEO Hizashi luôn. |
| Mẹ | Trời ơi! Cuối cùng bố mày cũng cho con nghỉ Thanh A rồi đó hả? |
| Bố | Lương con tự trả mình thấp hơn ở Thanh A chứ? |
| Đại | Vâng bố. ¥400k/tháng — bằng 40% lúc còn ở Thanh A. Nhưng RSU 60% Hizashi con cầm, sau Series A đóng vốn ¥200M thì giá trị giấy tờ tăng. |
| Mẹ | Mai sao rồi con? Có khoẻ không? |
| Đại | Khoẻ mẹ. Hôm nay đi siêu âm — bé 7 tuần, đã nghe được tim thai. Dự sinh 25/12. |
| Mẹ | (rưng rưng) Trời ơi! Bé Giáng sinh. Để mẹ qua bay sang Osaka phụ Mai đẻ nha. |
| Đại | Vâng mẹ. Tháng 12 mẹ với bố qua nghỉ Tết Nhật luôn. |
| Bố | Còn Hana thì sao? |
| Đại | Hana 32 tháng — đi nhà trẻ rồi. Đợt này con chở Hana 4 ngày/tuần, là quy định Mai đặt cho con khi quit Thanh A. |
| Mẹ | Tốt rồi con. Vợ con biết quản chồng — nó ép con cân gia đình. Mẹ thương con dâu lắm. |
| Đại | Vâng mẹ. Con tắt máy nhé, mai 6 giờ sáng đưa Hana đi nhà trẻ. |
| Bố | Cố gắng con. Hizashi là sự nghiệp đời con. Đừng để Mai vất vả. |
| Đại | Vâng bố. Con yêu bố mẹ. |

---

## Đọng lại chương 1

Đại bước qua Day 1 full-time CEO với 7 câu chuyện đan xen: bữa sáng cravat đỏ Mai chuẩn bị, standup cofounder với mochi Daimaru, trình bày OKR 4 quý bằng tiếng Nhật `<ruby>第<rt>だい</rt></ruby>1<ruby>四半期<rt>しはんき</rt></ruby>はv2.0の<ruby>開発<rt>かいはつ</rt></ruby>です`, hỏi bác sĩ về tim thai `<ruby>心拍<rt>しんぱく</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>はできますか`, lắng nghe 3 paid user bằng tiếng Việt, viết email keigo cho Takahashi-san chốt bằng `<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます`, và đêm Zalo cho bố mẹ ở Hà Nội. Insight then chốt: Hizashi không chỉ B2C — B2B Enterprise có thể là dòng doanh thu mới.

> Từ vựng & mẫu câu chương này: <ruby>代表<rt>だいひょう</rt></ruby><ruby>取締役<rt>とりしまりやく</rt></ruby>・フルタイム・<ruby>四半期<rt>しはんき</rt></ruby>・OKR・<ruby>多言語化<rt>たげんごか</rt></ruby>・<ruby>韓国語<rt>かんこくご</rt></ruby>・<ruby>中国語<rt>ちゅうごくご</rt></ruby>・<ruby>市場<rt>しじょう</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>・<ruby>心拍<rt>しんぱく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>・<ruby>胎児<rt>たいじ</rt></ruby>・<ruby>予定日<rt>よていび</rt></ruby>・<ruby>普通<rt>ふつう</rt></ruby><ruby>分娩<rt>ぶんべん</rt></ruby>・<ruby>葉酸<rt>ようさん</rt></ruby>・<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>提携<rt>ていけい</rt></ruby>・<ruby>導入<rt>どうにゅう</rt></ruby>・ご<ruby>提案<rt>ていあん</rt></ruby>申し上げます・<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます・お<ruby>世話<rt>せわ</rt></ruby>になっております

## Bí quyết chương

- **Day 1 full-time founder cảm xúc**: lạ vì không có sếp, tự do vì tự sắp lịch, nặng nề vì trách nhiệm 2 cofounder + 2k user + gia đình + bé thứ 2 sắp tới
- **Mẫu câu trình bày OKR**: `<ruby>第<rt>だい</rt></ruby>N<ruby>四半期<rt>しはんき</rt></ruby>は〜です` — chia 4 quý rõ ràng
- **Mẫu câu hỏi bác sĩ sản**: `<ruby>心拍<rt>しんぱく</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>はできますか` / `<ruby>食事<rt>しょくじ</rt></ruby>で<ruby>気<rt>き</rt></ruby>をつけるべきことは` — luôn dùng です/ます với bác sĩ
- **Email keigo B2B**: subject ngắn + お世話になっております + ご提案させていただきたく + 何卒よろしくお願い申し上げます
- **Mẫu câu「〜というのは?」**: dùng khi không hiểu thuật ngữ — quan trọng để Aiko hỏi lại Đại
- **Mở đầu năm 2 = báo bố mẹ bằng tiếng Việt**: chốt câu chuyện gia đình Việt-Nhật

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 本日 | ほんじつ | BẢN NHẬT | hôm nay (trang trọng) |
| 正式 | せいしき | CHÍNH THỨC | chính thức |
| 代表取締役 | だいひょうとりしまりやく | ĐẠI BIỂU THỦ ĐẾ DỊCH | giám đốc đại diện |
| 四半期 | しはんき | TỨ BÁN KỲ | quý (năm) |
| 開発 | かいはつ | KHAI PHÁT | phát triển |
| 採用 | さいよう | THÁI DỤNG | tuyển dụng |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| 事務所 | じむしょ | SỰ VỤ SỞ | văn phòng |
| 拡張 | かくちょう | KHUẾCH TRƯƠNG | mở rộng |
| 体制 | たいせい | THỂ CHẾ | cơ cấu, hệ thống |
| 移行 | いこう | DI HÀNH | chuyển sang |
| 評価額 | ひょうかがく | BÌNH GIÁ NGẠCH | định giá |
| 想定 | そうてい | TƯỞNG ĐỊNH | giả định, dự kiến |
| 多言語化 | たげんごか | ĐA NGÔN NGỮ HOÁ | đa ngôn ngữ hoá |
| 韓国語 | かんこくご | HÀN QUỐC NGỮ | tiếng Hàn |
| 中国語 | ちゅうごくご | TRUNG QUỐC NGỮ | tiếng Trung |
| 市場調査 | しじょうちょうさ | THỊ TRƯỜNG ĐIỀU TRA | khảo sát thị trường |
| 承知 | しょうち | THỪA TRI | đã hiểu, nhận lời |
| 提出 | ていしゅつ | ĐỀ XUẤT | nộp |
| 心拍 | しんぱく | TÂM PHÁCH | tim thai/nhịp tim |
| 確認 | かくにん | XÁC NHẬN | xác nhận |
| 超音波 | ちょうおんぱ | SIÊU ÂM BA | siêu âm |
| 胎児 | たいじ | THAI NHI | thai nhi |
| 順調 | じゅんちょう | THUẬN ĐIỀU | thuận lợi, ổn định |
| 予定日 | よていび | DỰ ĐỊNH NHẬT | ngày dự sinh |
| 普通分娩 | ふつうぶんべん | PHỔ THÔNG PHÂN MIỄN | sinh thường |
| 葉酸 | ようさん | DIỆP TOAN | axit folic |
| 業務提携 | ぎょうむていけい | NGHIỆP VỤ ĐỀ KẾ | hợp tác kinh doanh |
| 退職時 | たいしょくじ | THOÁI CHỨC THỜI | lúc nghỉ việc |
| 提案 | ていあん | ĐỀ ÁN | đề xuất |
| 導入 | どうにゅう | ĐẠO NHẬP | triển khai, đưa vào |
| 件名 | けんめい | KIỆN DANH | tiêu đề (email) |
| 本社 | ほんしゃ | BẢN XÃ | trụ sở chính |
| 何卒 | なにとぞ | HÀ TỐT | kính mong |
| 商談 | しょうだん | THƯƠNG ĐÀM | thương lượng kinh doanh |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000002, 800000026, NULL, 'markdown_book', 'T2. Hồi tưởng退職届 + pitch B2B đầu tiên Thanh Hà', '# Sách kỹ sư cầu nối & khởi nghiệp · T2. Hồi tưởng退職届 + pitch B2B đầu tiên Thanh Hà

> **Mục tiêu nhân vật:** Đại 26 tuổi, tháng 5/2031, vừa quit Thanh A 5 tuần trước, nay pitch lại chính công ty cũ với tư cách nhà cung cấp SaaS. Học các mẫu hội thoại tiếng Nhật của founder ngày pitch B2B đầu tiên: (1) hồi tưởng buổi nộp退職届 với cụm 「<ruby>退職届<rt>たいしょくとどけ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます」, (2) mở đầu demo SaaS keigo, (3) giới thiệu cofounder bên ngoài, (4) đàm phán giá hợp đồng năm 「<ruby>年契約<rt>ねんけいやく</rt></ruby>での<ruby>割引<rt>わりびき</rt></ruby>」, (5) ký hợp đồng tại chỗ, (6) thông báo bé trai cho gia đình, đặt tên bé.

---

## Bối cảnh

8/5/2031 thứ Năm — Đại + Tuấn đến Thanh A Honmachi office demo Hizashi Enterprise. 5 tuần trước đây Đại còn là nhân viên ở chính phòng họp này. Mai 12 tuần thai, hôm nay siêu âm xác định giới tính. Chương này tập trung keigo đàm phán B2B, hồi tưởng退職 và mẫu câu báo tin gia đình bằng tiếng Việt xen Nhật.

---

## Tình huống 1 — Tàu Midosuji đến Honmachi · 9:30, Đại + Tuấn ôn pitch

*Tuấn mặc vest xanh than, Đại mặc vest đen + cravat đỏ Mai chọn. Cùng cầm laptop.*

| Vai | Lời thoại |
|---|---|
| Tuấn | Đại ơi, em hồi hộp không? Quay lại nơi mình quit 5 tuần trước. |
| Đại | Hồi hộp anh. Lạ ghê — 5 tuần trước em còn ngồi bàn dev đó. Giờ em đi vào với tư cách CEO. |
| Tuấn | Pitch deck em ôn rồi chứ? Câu mở đầu là gì? |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。Hizashi Enterprise Planのデモを<ruby>始<rt>はじ</rt></ruby>めさせていただきます。 |
| Tuấn | Tốt. Còn giới thiệu anh? |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のチー・トゥアンと<ruby>参<rt>まい</rt></ruby>りました。HizashiのCTOを<ruby>務<rt>つと</rt></ruby>めております。 |
| Tuấn | OK. Đến giờ rồi, xuống tàu. |

---

## Tình huống 2 — Honmachi office lobby · 9:55, Đại hồi tưởng退職届

*Đại đứng ở lobby quen thuộc, kéo cửa kính tự động. Nhìn lên tấm bảng tên "Thanh A Solutions" trên tầng 7. Tuấn đi bên.*

| Vai | Lời thoại |
|---|---|
| Đại | (nói nhỏ với Tuấn) Anh ơi, 31/3 em nộp退職届 cũng tại tầng 7 này. |
| Tuấn | Em nộp cho ai? |
| Đại | Anh Takahashi-san. Em đứng trước bàn ổng, hai tay đưa<ruby>退職届<rt>たいしょくとどけ</rt></ruby>, cúi 45 độ, nói: 「<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>退職届<rt>たいしょくとどけ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません」. |
| Tuấn | Ổng phản ứng sao? |
| Đại | Ổng cười nhẹ, nói: 「<ruby>残念<rt>ざんねん</rt></ruby>ですが、グエンさんの<ruby>夢<rt>ゆめ</rt></ruby>を<ruby>応援<rt>おうえん</rt></ruby>します」. Rồi ổng đề xuất hợp tác B2B luôn. |
| Tuấn | Sếp tốt thật. Mà giờ pitch cho tốt nhé — đừng để ổng tiếc. |

---

## Tình huống 3 — Phòng họp tầng 7 Thanh A · 10:00, Đại + Tuấn gặp Takahashi-san + Tanaka PM

| Vai | Lời thoại |
|---|---|
| Tanaka (PM cũ) | グエンさん、ようこそ!<ruby>5<rt>ご</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>ぶりですね。<br>*(Đại-san, chào mừng! 5 tuần rồi mới gặp lại.)* |
| Takahashi (CEO) | Hizashi Enterprise のデモ、<ruby>楽<rt>たの</rt></ruby>しみにしておりました。<br>*(Tôi đã rất mong demo Hizashi Enterprise.)* |
| Đại | <ruby>高橋<rt>たかはし</rt></ruby><ruby>社長<rt>しゃちょう</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<br>*(Anh Takahashi, cảm ơn anh đã dành thời gian hôm nay.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のチー・トゥアンと<ruby>参<rt>まい</rt></ruby>りました。HizashiのCTOを<ruby>務<rt>つと</rt></ruby>めております。<br>*(Hôm nay tôi đến cùng đồng sáng lập Chử Tuấn — đang đảm nhận CTO của Hizashi.)* |
| Tuấn | (cúi chào 30 độ) <ruby>初<rt>はじ</rt></ruby>めまして、チー・トゥアンと<ruby>申<rt>もう</rt></ruby>します。<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Lần đầu gặp, tôi là Chử Tuấn. Kính mong anh chỉ giáo.)* |
| Takahashi | こちらこそ。では、デモを<ruby>始<rt>はじ</rt></ruby>めましょうか。<br>*(Tôi cũng vậy. Vậy bắt đầu demo đi.)* |

---

## Tình huống 4 — Phòng họp tầng 7 · 10:15, Đại làm mẫu 4 tính năng Enterprise

| Vai | Lời thoại |
|---|---|
| Đại | (share laptop) Hizashi Enterprise Planには<ruby>4<rt>よっ</rt></ruby>つの<ruby>主<rt>おも</rt></ruby>な<ruby>機能<rt>きのう</rt></ruby>がございます。<br>*(Hizashi Enterprise Plan có 4 chức năng chính.)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>個別<rt>こべつ</rt></ruby>アカウント30<ruby>名<rt>めい</rt></ruby> + single sign-on。<br>*(Một, tài khoản riêng 30 người + SSO.)* |
| Đại | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>管理者<rt>かんりしゃ</rt></ruby><ruby>用<rt>よう</rt></ruby><ruby>分析<rt>ぶんせき</rt></ruby>ダッシュボード。<br>*(Hai, dashboard analytics cho manager.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>専門<rt>せんもん</rt></ruby><ruby>用語集<rt>ようごしゅう</rt></ruby>のカスタマイズ。<ruby>製造業界<rt>せいぞうぎょうかい</rt></ruby>の<ruby>用語<rt>ようご</rt></ruby>、<ruby>例<rt>たと</rt></ruby>えば<ruby>生産<rt>せいさん</rt></ruby>ライン、<ruby>稼働率<rt>かどうりつ</rt></ruby>、<ruby>不良率<rt>ふりょうりつ</rt></ruby>などです。<br>*(Ba, customize bộ thuật ngữ chuyên ngành — ngành sản xuất: dây chuyền sản xuất, tỷ lệ vận hành, tỷ lệ lỗi.)* |
| Đại | <ruby>四<rt>よっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>毎月<rt>まいつき</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>レポート。<br>*(Bốn, report tiến độ hàng tháng.)* |
| Tuấn | (chuyển sang làm mẫu trực tiếp) <ruby>管理者<rt>かんりしゃ</rt></ruby>ビューでは、<ruby>本日<rt>ほんじつ</rt></ruby>30<ruby>名中<rt>めいちゅう</rt></ruby>22<ruby>名<rt>めい</rt></ruby>がアクティブ。JLPT<ruby>分布<rt>ぶんぷ</rt></ruby>は<ruby>5名<rt>ごめい</rt></ruby>N2 + 12<ruby>名<rt>めい</rt></ruby>N3 + 13<ruby>名<rt>めい</rt></ruby>N4です。<br>*(Manager view: hôm nay 22/30 active. Phân bổ JLPT 5 N2 + 12 N3 + 13 N4.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしいですね!Managerの<ruby>視点<rt>してん</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>いやすいです。<br>*(Tuyệt vời! Từ góc nhìn manager cũng dễ dùng.)* |

---

## Tình huống 5 — Phòng họp tầng 7 · 10:45, Takahashi hỏi mở rộng 3 ngành

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>業界<rt>ぎょうかい</rt></ruby><ruby>用語集<rt>ようごしゅう</rt></ruby>のカスタマイズがポイントですね。<ruby>当社<rt>とうしゃ</rt></ruby>の<ruby>主要<rt>しゅよう</rt></ruby>クライアントは<ruby>3<rt>さん</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>、<ruby>製造<rt>せいぞう</rt></ruby>・<ruby>金融<rt>きんゆう</rt></ruby>・ITです。<ruby>業界別<rt>ぎょうかいべつ</rt></ruby>に<ruby>展開<rt>てんかい</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Customize glossary là điểm mấu chốt. Khách hàng chính của chúng tôi 3 ngành — sản xuất, tài chính, IT. Triển khai theo ngành riêng được không?)* |
| Đại | はい、<ruby>可能<rt>かのう</rt></ruby>でございます。<ruby>業界別<rt>ぎょうかいべつ</rt></ruby>の<ruby>用語集<rt>ようごしゅう</rt></ruby>3<ruby>セット<rt>セット</rt></ruby>はすでに<ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng, hoàn toàn có thể. 3 bộ glossary theo ngành đã chuẩn bị sẵn.)* |
| Takahashi | <ruby>金融<rt>きんゆう</rt></ruby><ruby>業界<rt>ぎょうかい</rt></ruby>の<ruby>用語<rt>ようご</rt></ruby>、<ruby>例<rt>たと</rt></ruby>えばどんなものがありますか?<br>*(Thuật ngữ ngành tài chính, ví dụ có những gì?)* |
| Đại | <ruby>例<rt>たと</rt></ruby>えば、<ruby>与信<rt>よしん</rt></ruby><ruby>枠<rt>わく</rt></ruby>、<ruby>担保<rt>たんぽ</rt></ruby><ruby>権<rt>けん</rt></ruby>、<ruby>連結<rt>れんけつ</rt></ruby><ruby>決算<rt>けっさん</rt></ruby>などです。300<ruby>用語<rt>ようご</rt></ruby>くらい<ruby>用意<rt>ようい</rt></ruby>しております。<br>*(Ví dụ: hạn mức tín dụng, quyền tài sản thế chấp, báo cáo tài chính hợp nhất. Khoảng 300 thuật ngữ đã chuẩn bị.)* |
| Takahashi | <ruby>充分<rt>じゅうぶん</rt></ruby>です。<br>*(Đủ rồi.)* |

---

## Tình huống 6 — Phòng họp tầng 7 · 11:30, đàm phán giá hợp đồng năm

| Vai | Lời thoại |
|---|---|
| Takahashi | <ruby>料金<rt>りょうきん</rt></ruby>は¥1,500/<ruby>名<rt>めい</rt></ruby>/<ruby>月<rt>つき</rt></ruby>、30<ruby>名<rt>めい</rt></ruby>で¥45,000/<ruby>月<rt>つき</rt></ruby>ですね。<ruby>年契約<rt>ねんけいやく</rt></ruby>での<ruby>割引<rt>わりびき</rt></ruby>は<ruby>可能<rt>かのう</rt></ruby>でしょうか。<br>*(Phí ¥1500/người/tháng, 30 người ¥45k/tháng. Hợp đồng năm có chiết khấu không?)* |
| Đại | <ruby>年契約<rt>ねんけいやく</rt></ruby>で12<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>前払<rt>まえばら</rt></ruby>いの<ruby>場合<rt>ばあい</rt></ruby>、10%の<ruby>割引<rt>わりびき</rt></ruby>を<ruby>適用<rt>てきよう</rt></ruby>させていただきます。<ruby>合計<rt>ごうけい</rt></ruby>¥486,000/<ruby>年<rt>ねん</rt></ruby>、<ruby>月相当<rt>つきそうとう</rt></ruby>¥40,500でございます。<br>*(Hợp đồng năm trả trước 12 tháng → chiết khấu 10%. Tổng ¥486k/năm, tương đương ¥40,500/tháng.)* |
| Takahashi | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>契約書<rt>けいやくしょ</rt></ruby>にサインすることは<ruby>可能<rt>かのう</rt></ruby>でしょうか。<br>*(Đã hiểu. Hôm nay ký hợp đồng luôn được không?)* |
| Đại | (nuốt nước miếng, bình tĩnh) <ruby>本日<rt>ほんじつ</rt></ruby><ruby>サイン<rt>サイン</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でございます。ありがとうございます。<br>*(Hôm nay ký được ạ. Cảm ơn anh.)* |
| Takahashi | (gọi trợ lý) <ruby>契約書<rt>けいやくしょ</rt></ruby>のテンプレートを<ruby>持<rt>も</rt></ruby>ってきてください。<br>*(Mang mẫu hợp đồng lên đây.)* |

---

## Tình huống 7 — Phòng họp tầng 7 · 12:30, ký hợp đồng + cheers champagne

| Vai | Lời thoại |
|---|---|
| Takahashi | (cầm ly champagne giả) Hizashi Enterprise と<ruby>清華<rt>タンハー</rt></ruby>のパートナーシップに、<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Vì quan hệ đối tác Hizashi Enterprise và Thanh A — cạn ly!)* |
| Đại | <ruby>乾杯<rt>かんぱい</rt></ruby>!ありがとうございます!<br>*(Cạn ly! Cảm ơn anh!)* |
| Tuấn | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn ly!)* |
| Tanaka | グエンさん、<ruby>本当<rt>ほんとう</rt></ruby>におめでとうございます。Hizashiの<ruby>初<rt>はじ</rt></ruby>めての B2B <ruby>顧客<rt>こきゃく</rt></ruby>ですよね?<br>*(Đại-san, thật sự chúc mừng. Là khách B2B đầu tiên của Hizashi đúng không?)* |
| Đại | はい!<ruby>本当<rt>ほんとう</rt></ruby>に、<ruby>感謝<rt>かんしゃ</rt></ruby>しております。<br>*(Vâng! Thật sự cảm kích.)* |
| Takahashi | <ruby>退職時<rt>たいしょくじ</rt></ruby>に「<ruby>夢<rt>ゆめ</rt></ruby>を<ruby>応援<rt>おうえん</rt></ruby>します」と<ruby>言<rt>い</rt></ruby>いましたね。<ruby>応援<rt>おうえん</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>がこの<ruby>契約<rt>けいやく</rt></ruby>です。<br>*(Lúc anh nghỉ việc tôi đã nói "tôi ủng hộ ước mơ của anh" nhỉ. Hình thức ủng hộ là hợp đồng này.)* |
| Đại | (nghẹn) ...ありがとうございます。<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(... Cảm ơn anh. Suốt đời tôi không quên.)* |

---

## Tình huống 8 — Slack #hizashi-team · 12:45, Tuấn báo Aiko

| Vai | Lời thoại |
|---|---|
| Tuấn | (LINE Aiko) Aiko! THANH HÀ ENTERPRISE SIGNED! Hợp đồng ¥486k/năm, 12 tháng. |
| Aiko | すごい!!!<ruby>初<rt>はじ</rt></ruby>のB2B<ruby>顧客<rt>こきゃく</rt></ruby>ですね!<ruby>本当<rt>ほんとう</rt></ruby>におめでとうございます!<br>*(Tuyệt! Khách B2B đầu tiên! Thật chúc mừng!)* |
| Đại | (Slack #wins) FIRST B2B CUSTOMER SIGNED. Thanh A Solutions. 30 dev VN. ¥486k/năm. Onboarding tuần sau. |
| Aiko | (Slack JP) ダイくん、<ruby>本当<rt>ほんとう</rt></ruby>におめでとう!Series A の deck に「B2B traction」のスライドを<ruby>追加<rt>ついか</rt></ruby>しましょう。<br>*(Đại-kun, thật chúc mừng! Thêm slide "B2B traction" vào deck Series A nhé.)* |
| Đại | (Slack JP) はい!<ruby>来週<rt>らいしゅう</rt></ruby><ruby>追加<rt>ついか</rt></ruby>します。<br>*(Vâng! Tuần sau em thêm.)* |

---

## Tình huống 9 — Senri-chuo Maternity Clinic · 14:00, Mai siêu âm 12w

| Vai | Lời thoại |
|---|---|
| Đại | (chạy vào phòng chờ, mặt còn rạng rỡ) Em ơi, anh đến rồi nè! |
| Mai | Anh ơi! Sao mặt cười tươi thế? |
| Đại | Em ơi! Hizashi vừa ký B2B đầu tiên — Thanh Hà! Hợp đồng ¥486k/năm! |
| Mai | (mắt rưng) Trời ơi! Em mừng quá anh! |
| Bác sĩ Tanaka | (ra cửa) マイさん、12<ruby>週<rt>しゅう</rt></ruby>の<ruby>検診<rt>けんしん</rt></ruby>ですね。どうぞお<ruby>入<rt>はい</rt></ruby>りください。<br>*(Mai-san, khám tuần 12 nhỉ. Mời vào.)* |
| Đại | (vào phòng) 先生、<ruby>本日<rt>ほんじつ</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bác sĩ, hôm nay cũng nhờ bác sĩ ạ.)* |
| Bác sĩ | (siêu âm) <ruby>胎児<rt>たいじ</rt></ruby>サイズは55mm、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>性別<rt>せいべつ</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>も<ruby>可能<rt>かのう</rt></ruby>ですが、<ruby>知<rt>し</rt></ruby>りたいですか?<br>*(Thai 55mm, ổn. Có thể xác định giới tính rồi, hai bạn muốn biết không?)* |
| Mai | (nhìn Đại) Anh ơi, em muốn biết. |
| Đại | はい、<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Vâng, xin bác sĩ cho biết ạ.)* |
| Bác sĩ | (mỉm cười) <ruby>男<rt>おとこ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>ですよ。<br>*(Bé trai đấy.)* |
| Đại | (lặng mấy giây) Trời ơi... bé trai! Em ơi anh có con trai rồi! |
| Mai | (nước mắt rơi) Hana sắp có em trai! |
| Đại | (ôm Mai) Em giỏi quá. Cảm ơn em. |

---

## Tình huống 10 — Apt Senri-chuo · 19:00, báo Hana về em trai (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Mai | (ôm Hana lên đùi) Hana ơi, mẹ kể chuyện cho con. |
| Hana | (33 tháng) Chuyện gì mẹ? |
| Mai | Em trong bụng mẹ là **em trai**. Hana sẽ có em trai. |
| Hana | (cười to) Em trai! Hana có em trai! |
| Đại | Hana ơi, tháng 12 cuối năm em trai sẽ ra. Hana sẽ làm chị lớn. |
| Hana | (suy nghĩ) Tên em trai gì bố? |
| Đại | (nhìn Mai) Em ơi, mình đặt tên gì nhỉ? |
| Mai | Em đề xuất tên "Đông" — sinh tháng 12 mùa đông, tên Việt cũng đẹp. |
| Đại | Đông + Hana — cặp tên đẹp. Đông vừa là mùa đông vừa là phương Đông. Anh thích. |
| Hana | Em Đông! Em Đông! |
| Mai | Hana ơi, làm chị lớn phải biết nhường em, biết không? |
| Hana | (gật đầu) Biết mẹ. Hana nhường. |

---

## Tình huống 11 — Apt Senri-chuo · 21:00, Mai gọi điện báo mẹ ở Hà Nội (tiếng Việt)

*Mai gọi Zalo cho mẹ Mai ở Hà Nội. Bà ngoại tương lai 55 tuổi.*

| Vai | Lời thoại |
|---|---|
| Mai | Mẹ ơi! Hôm nay con đi siêu âm 12 tuần. |
| Mẹ Mai | Sao rồi con? Khoẻ không? Bé sao? |
| Mai | Khoẻ mẹ. Bé 55mm, bác sĩ nói ổn. Mà mẹ ơi... bé là **trai** mẹ ạ! |
| Mẹ Mai | Trời ơi! Cháu trai! Nội ngoại sướng rồi! Tên gì rồi con? |
| Mai | Tụi con đặt "Đông". Sinh 25/12. |
| Mẹ Mai | Đông — hay đó. Mà sao thằng Đại biết sớm thế? |
| Mai | Hôm nay ảnh ký được khách B2B đầu tiên ở Thanh A — chính chỗ ảnh nghỉ tháng 3 đó mẹ. ¥486k/năm. |
| Mẹ Mai | Trời, ngày tốt thật. Ký hợp đồng + biết cháu trai cùng một ngày. Phước nhà mình lớn. |
| Mai | Vâng mẹ. Tháng 12 mẹ qua phụ con sinh nhé. |
| Mẹ Mai | Ừ. Mẹ đặt vé ngay. Ngủ ngon con. |

---

## Tình huống 12 — Apt Senri-chuo · 22:00, Đại + Mai reflect (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Đại | Em ơi, ngày 8/5/2031 — anh sẽ nhớ suốt đời. |
| Mai | Anh kể em nghe — anh nhớ cái gì? |
| Đại | Sáng đứng ở lobby tầng 7 Thanh A — chính chỗ 5 tuần trước anh đưa退職届. Anh sợ Takahashi-san khó chịu. Mà ổng nói: "Hình thức ủng hộ là hợp đồng này." Anh nghẹn. |
| Mai | Anh là người tốt — ai cũng thương. |
| Đại | Trưa siêu âm — biết bé trai. Tên Đông. Mẹ em nói "phước nhà mình lớn". |
| Mai | Anh nhớ giữ sức khoẻ. Hizashi đang lên, Đông sắp ra, Hana sắp 3 tuổi. Năm 2031 nặng đó. |
| Đại | Anh hứa. 9-19 office, gia đình, 21-23 deep work. Không hơn. |
| Mai | (cười) Em theo dõi anh đấy nhé! |

---

## Tình huống 13 — Cuối tuần, nhà hàng Le Bouchon Umeda · 19:00, ăn mừng cùng cofounder

*Đại + Mai + Hana 32 tháng + Tuấn + vợ Yuna 27 tuổi + Aiko + bạn trai Kenji — 7 người ăn mừng.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (cheers) Anh chị em ơi! 1 năm Hizashi + 1 tháng full-time + khách B2B đầu tiên + bé trai! Cạn ly! |
| Aiko | <ruby>乾杯<rt>かんぱい</rt></ruby>!みんなの<ruby>努力<rt>どりょく</rt></ruby>のおかげですね!<br>*(Cạn ly! Nhờ nỗ lực của mọi người!)* |
| Yuna (vợ Tuấn, mới sang Nhật 1 tháng) | Em mới sang Nhật được 1 tháng. Cảm ơn anh chị đã chào đón em. |
| Mai | Yuna em! Mình bằng tuổi đấy. Mình sẽ làm bạn thân nhé. |
| Đại | (đứng dậy) Em xin nói lời cảm ơn. Anh Tuấn — em đến Hizashi vì anh tin em từ ngày đầu. Chị Aiko — chị làm Hizashi đẹp lên rất nhiều. Mai vợ — em là chỗ dựa của anh. Hana con — con và em Đông là động lực của bố. |
| Mai | (mỉm cười, nâng ly nước cam thay rượu) Vì Hizashi và gia đình mình. |

---

## Đọng lại chương 2

Đại quay lại tầng 7 Thanh A sau 5 tuần — lần này với tư cách CEO Hizashi pitch B2B Enterprise. Hồi tưởng退職届 nộp ngày 31/3 với câu `<ruby>退職届<rt>たいしょくとどけ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます。<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になりました`. Demo 4 tính năng bằng cấu trúc `<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>...<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>...`. Đàm phán hợp đồng năm `<ruby>年契約<rt>ねんけいやく</rt></ruby>で12<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>前払<rt>まえばら</rt></ruby>いの<ruby>場合<rt>ばあい</rt></ruby>、10%<ruby>割引<rt>わりびき</rt></ruby>`. Takahashi-san ký luôn — câu chốt `「<ruby>応援<rt>おうえん</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>がこの<ruby>契約<rt>けいやく</rt></ruby>です」` làm Đại nghẹn. Chiều siêu âm 12w — bé trai. Đặt tên Đông. Đêm gọi mẹ Mai báo "cháu trai".

> Từ vựng & mẫu câu chương này: <ruby>退職届<rt>たいしょくとどけ</rt></ruby>・<ruby>提出<rt>ていしゅつ</rt></ruby>・<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>提携<rt>ていけい</rt></ruby>・<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>・<ruby>務<rt>つと</rt></ruby>めております・<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>用語集<rt>ようごしゅう</rt></ruby>・カスタマイズ・<ruby>稼働率<rt>かどうりつ</rt></ruby>・<ruby>不良率<rt>ふりょうりつ</rt></ruby>・<ruby>与信<rt>よしん</rt></ruby><ruby>枠<rt>わく</rt></ruby>・<ruby>連結<rt>れんけつ</rt></ruby><ruby>決算<rt>けっさん</rt></ruby>・<ruby>年契約<rt>ねんけいやく</rt></ruby>・<ruby>割引<rt>わりびき</rt></ruby>・<ruby>前払<rt>まえばら</rt></ruby>い・<ruby>契約書<rt>けいやくしょ</rt></ruby>・<ruby>乾杯<rt>かんぱい</rt></ruby>・<ruby>胎児<rt>たいじ</rt></ruby>・<ruby>性別<rt>せいべつ</rt></ruby>・<ruby>男<rt>おとこ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>・<ruby>応援<rt>おうえん</rt></ruby>・<ruby>感謝<rt>かんしゃ</rt></ruby>しております

## Bí quyết chương

- **退職届 keigo chuẩn**: `<ruby>退職届<rt>たいしょくとどけ</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>させていただきます` + `<ruby>長<rt>なが</rt></ruby>い<ruby>間<rt>あいだ</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になりました` + `<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません` — hai tay đưa, cúi 45 độ
- **Demo SaaS cấu trúc đếm**: `<ruby>4<rt>よっ</rt></ruby>つの<ruby>主<rt>おも</rt></ruby>な<ruby>機能<rt>きのう</rt></ruby>がございます` → `<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>...<ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>...` — dễ theo dõi cho client
- **Đàm phán giá keigo**: `<ruby>年契約<rt>ねんけいやく</rt></ruby>で12<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>前払<rt>まえばら</rt></ruby>いの<ruby>場合<rt>ばあい</rt></ruby>、10%<ruby>割引<rt>わりびき</rt></ruby>を<ruby>適用<rt>てきよう</rt></ruby>させていただきます` — chuẩn SaaS B2B Nhật
- **Ký hợp đồng tại chỗ hiếm**: Takahashi-san ký luôn vì đã quyết từ trước, không đợi procurement — quan hệ con người trên giấy tờ
- **Báo tin gia đình bằng tiếng Việt**: cháu trai cho ông bà ngoại = câu chuyện kết nối hai thế hệ Việt-Nhật
- **Tên Đông** = mùa đông (sinh 12) + phương Đông + tên Việt đẹp, cặp với Hana

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 共同創業者 | きょうどうそうぎょうしゃ | CỘNG ĐỒNG SÁNG NGHIỆP GIẢ | đồng sáng lập |
| 務めております | つとめております | VỤ | đảm nhiệm (khiêm nhường) |
| 退職届 | たいしょくとどけ | THOÁI CHỨC GIỚI | đơn xin nghỉ việc |
| 申し訳ございません | もうしわけございません | THÂN DỊCH | xin lỗi (trang trọng) |
| 残念 | ざんねん | TÀN NIỆM | tiếc nuối |
| 夢 | ゆめ | MỘNG | giấc mơ, ước mơ |
| 応援 | おうえん | ỨNG VIỆN | ủng hộ, cổ vũ |
| 機能 | きのう | CƠ NĂNG | chức năng |
| 個別 | こべつ | CÁ BIỆT | riêng lẻ |
| 管理者 | かんりしゃ | QUẢN LÝ GIẢ | người quản lý |
| 分析 | ぶんせき | PHÂN TÍCH | phân tích |
| 業界 | ぎょうかい | NGHIỆP GIỚI | ngành nghề |
| 専門 | せんもん | CHUYÊN MÔN | chuyên môn |
| 用語集 | ようごしゅう | DỤNG NGỮ TẬP | bộ thuật ngữ |
| 製造業界 | せいぞうぎょうかい | CHẾ TẠO NGHIỆP GIỚI | ngành sản xuất |
| 稼働率 | かどうりつ | GIÁ ĐỘNG SUẤT | tỷ lệ vận hành |
| 不良率 | ふりょうりつ | BẤT LƯƠNG SUẤT | tỷ lệ lỗi |
| 進捗 | しんちょく | TIẾN TRỚC | tiến độ |
| 分布 | ぶんぷ | PHÂN BỐ | phân bố |
| 視点 | してん | THỊ ĐIỂM | góc nhìn |
| 主要 | しゅよう | CHỦ YẾU | chủ yếu |
| 金融 | きんゆう | KIM DUNG | tài chính |
| 与信枠 | よしんわく | DỮ TÍN KHUNG | hạn mức tín dụng |
| 担保権 | たんぽけん | ĐẢM BẢO QUYỀN | quyền tài sản thế chấp |
| 連結決算 | れんけつけっさん | LIÊN KẾT QUYẾT TOÁN | báo cáo tài chính hợp nhất |
| 充分 | じゅうぶん | SUNG PHÂN | đầy đủ |
| 年契約 | ねんけいやく | NIÊN KHẾ ƯỚC | hợp đồng năm |
| 割引 | わりびき | CÁT DẪN | chiết khấu |
| 前払い | まえばらい | TIỀN PHẤT | trả trước |
| 適用 | てきよう | THÍCH DỤNG | áp dụng |
| 契約書 | けいやくしょ | KHẾ ƯỚC THƯ | hợp đồng |
| 乾杯 | かんぱい | CAN BÔI | cạn ly |
| 顧客 | こきゃく | CỐ KHÁCH | khách hàng |
| 感謝 | かんしゃ | CẢM TẠ | cảm ơn, biết ơn |
| 一生 | いっしょう | NHẤT SINH | suốt đời |
| 性別 | せいべつ | TÍNH BIỆT | giới tính |
| 検診 | けんしん | KIỂM CHẨN | khám sức khoẻ |
| 業務委託 | ぎょうむいたく | NGHIỆP VỤ ỦY THÁC | hợp đồng thuê dịch vụ |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000003, 800000026, NULL, 'markdown_book', 'T3. Sprint 6 tuần v2.0 multi-language', '# Sách kỹ sư cầu nối & khởi nghiệp · T3. Sprint 6 tuần v2.0 multi-language

> **Mục tiêu nhân vật:** Đại 26 tuổi, tháng 5-6/2031. Sprint v2.0 6 tuần — mở rộng Hizashi sang Korean + Chinese learner. Học các mẫu hội thoại tiếng Nhật của founder trong sprint dev: (1) kickoff sprint chia 3 luồng song song 「<ruby>3<rt>みっ</rt></ruby>つの<ruby>並行<rt>へいこう</rt></ruby>トラック」, (2) phỏng vấn freelance writer keigo 「<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>委託<rt>いたく</rt></ruby><ruby>契約<rt>けいやく</rt></ruby>」, (3) review thiết kế Figma với Aiko bằng JP, (4) trao đổi kỹ thuật stack với Tuấn xen Anh-Việt, (5) báo cáo siêu âm 16w với bác sĩ, (6) retrospective sprint kết thúc.

---

## Bối cảnh

15/5 - 30/6/2031 — 6 tuần sprint v2.0. Target launch 1/8. 3 luồng song song: Tuấn refactor backend multi-tenant + seed 20k câu hỏi KR+ZH; Aiko design UI 3 ngôn ngữ; Đại làm pitch deck Series A + QA nội dung. Mai 13-19w pregnancy, bé Đông đá. Chương này tập trung mẫu câu phỏng vấn freelance, review Figma keigo và retrospective.

---

## Tình huống 1 — WeWork 23F · Thứ Hai 15/5 9:30, sprint kickoff 3 luồng

| Vai | Lời thoại |
|---|---|
| Đại | (whiteboard) みんな、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>からv2.0スプリント、<ruby>6週間<rt>ろくしゅうかん</rt></ruby>です。<br>*(Mọi người chào buổi sáng. Hôm nay bắt đầu sprint v2.0 — 6 tuần.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つの<ruby>並行<rt>へいこう</rt></ruby>トラックに<ruby>分<rt>わ</rt></ruby>けます。<br>*(Chia 3 luồng song song.)* |
| Đại | トラックA、トゥアンさん: backend を multi-tenant に refactor + <ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>中国語<rt>ちゅうごくご</rt></ruby>のコンテンツを<ruby>1万問<rt>いちまんもん</rt></ruby>ずつ seed。<br>*(Track A — Tuấn: refactor backend multi-tenant + seed 10k câu hỏi mỗi ngôn ngữ KR+ZH.)* |
| Đại | トラックB、アイコさん: UI <ruby>3言語<rt>さんげんご</rt></ruby>(<ruby>日本語<rt>にほんご</rt></ruby>・<ruby>英語<rt>えいご</rt></ruby>・<ruby>ベトナム語<rt>ベトナムご</rt></ruby> base + <ruby>韓国語<rt>かんこくご</rt></ruby>・<ruby>中国語<rt>ちゅうごくご</rt></ruby>) + onboarding flow <ruby>再設計<rt>さいせっけい</rt></ruby>。<br>*(Track B — Aiko: UI 3 ngôn ngữ + thiết kế lại onboarding.)* |
| Đại | トラックC、<ruby>私<rt>わたし</rt></ruby>: Series A の pitch deck + financial model + <ruby>5年<rt>ごねん</rt></ruby><ruby>予測<rt>よそく</rt></ruby> + コンテンツ QA。<br>*(Track C — tôi: pitch deck Series A + financial model + dự báo 5 năm + QA nội dung.)* |
| Tuấn | (VN) OK em. Backend multi-tenant nhanh — 2 tuần là xong. Phần seed nội dung khó hơn, anh sẽ thuê 5 <ruby>フリーランス<rt>フリーランス</rt></ruby>ライター. |
| Aiko | UI <ruby>3言語<rt>さんげんご</rt></ruby>には<ruby>14日間<rt>じゅうよっかかん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(UI 3 ngôn ngữ cần 14 ngày.)* |

---

## Tình huống 2 — WeWork 23F · 10:00, Đại hỏi lại Tuấn về budget freelance

| Vai | Lời thoại |
|---|---|
| Đại | Anh ơi, "5 フリーランス" — anh tính budget chưa? |
| Tuấn | Tính rồi em. 3 KR + 2 ZH. ¥20k/ngày × 30 ngày × 5 người = ¥3M tổng. Đầu ra: 50k câu hỏi + 200 lessons KR/ZH. |
| Đại | OK. Tiền pre-seed còn ¥18M, B2B Thanh A ¥486k/năm chuẩn bị sinh dòng tiền. Burn capacity OK. |
| Tuấn | Để anh post job trên CrowdWorks + Wantedly Freelance + LinkedIn JP. Tuần này phỏng vấn 15 người chọn 5. |
| Đại | Em phỏng vấn cùng anh nhé — em muốn học cách phỏng vấn freelance bằng tiếng Nhật. |

---

## Tình huống 3 — WeWork 23F, Zoom · Thứ Năm 18/5 14:00, phỏng vấn Park Min-jee (KR writer)

*Tuấn + Đại Zoom với Park Min-jee — 32 tuổi, người Hàn, sống Tokyo, ex-Hancinema, N1.*

| Vai | Lời thoại |
|---|---|
| Tuấn | パクさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<br>*(Cô Park, cảm ơn cô đã dành thời gian hôm nay.)* |
| Park Min-jee | <ruby>初<rt>はじ</rt></ruby>めまして、パク・ミンジと<ruby>申<rt>もう</rt></ruby>します。<br>*(Lần đầu gặp, tôi là Park Min-jee.)* |
| Đại | パクさんの<ruby>経歴<rt>けいれき</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cô Park cho tôi biết kinh nghiệm của cô được không?)* |
| Park | はい。<ruby>韓国<rt>かんこく</rt></ruby>のHancinemaで<ruby>5年間<rt>ごねんかん</rt></ruby>エディターを<ruby>務<rt>つと</rt></ruby>めました。<ruby>日本語<rt>にほんご</rt></ruby>はN1、<ruby>母語<rt>ぼご</rt></ruby>は<ruby>韓国語<rt>かんこくご</rt></ruby>です。<br>*(Vâng. Tôi làm editor tại Hancinema Hàn Quốc 5 năm. Tiếng Nhật N1, tiếng mẹ đẻ là tiếng Hàn.)* |
| Tuấn | <ruby>業務<rt>ぎょうむ</rt></ruby><ruby>委託<rt>いたく</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>は、¥20,000/<ruby>日<rt>にち</rt></ruby>、30<ruby>日間<rt>にちかん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby>¥600,000です。<ruby>納品物<rt>のうひんぶつ</rt></ruby>は10,000<ruby>問<rt>もん</rt></ruby>の JLPT N3-N4 <ruby>問題<rt>もんだい</rt></ruby> + <ruby>韓国語<rt>かんこくご</rt></ruby>の<ruby>解説<rt>かいせつ</rt></ruby>です。<br>*(Hợp đồng thuê: ¥20k/ngày, 30 ngày, tổng ¥600k. Sản phẩm giao: 10k câu hỏi JLPT N3-N4 + giải thích tiếng Hàn.)* |
| Park | <ruby>承知<rt>しょうち</rt></ruby>しました。ぜひ<ruby>参加<rt>さんか</rt></ruby>させてください。<br>*(Hiểu rồi. Tôi rất muốn tham gia.)* |
| Đại | <ruby>韓国<rt>かんこく</rt></ruby>の<ruby>若<rt>わか</rt></ruby>い<ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のニーズについて<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Cô có thể cho biết về nhu cầu của người học trẻ Hàn Quốc không?)* |
| Park | K-popや<ruby>アニメ<rt>アニメ</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby><ruby>背景<rt>はいけい</rt></ruby>を<ruby>含<rt>ふく</rt></ruby>めると<ruby>効果的<rt>こうかてき</rt></ruby>です。<br>*(Nếu lồng ghép background văn hoá K-pop và anime sẽ hiệu quả.)* |

---

## Tình huống 4 — WeWork 23F · Thứ Ba 23/5 11:00, Aiko review Figma 3 ngôn ngữ

*Aiko share Figma trên màn hình lớn, Đại + Tuấn + Aiko ngồi quanh.*

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>3<rt>みっ</rt></ruby>つのバージョンを<ruby>作<rt>つく</rt></ruby>りました。<ruby>共通<rt>きょうつう</rt></ruby>のレイアウトで、<ruby>言語<rt>げんご</rt></ruby>だけ<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えます。<br>*(Em đã làm 3 phiên bản. Layout chung, chỉ đổi ngôn ngữ.)* |
| Aiko | <ruby>右上<rt>みぎうえ</rt></ruby>に<ruby>言語<rt>げんご</rt></ruby><ruby>切替<rt>きりかえ</rt></ruby>ボタン。<ruby>初回起動時<rt>しょかいきどうじ</rt></ruby>は<ruby>端末<rt>たんまつ</rt></ruby>の<ruby>言語設定<rt>げんごせってい</rt></ruby>を<ruby>自動<rt>じどう</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>します。<br>*(Góc trên phải nút đổi ngôn ngữ. Lần đầu khởi động sẽ tự detect ngôn ngữ thiết bị.)* |
| Đại | アイコさん、<ruby>韓国語<rt>かんこくご</rt></ruby>のフォントは<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていますか?<br>*(Aiko-san, font tiếng Hàn dùng gì ạ?)* |
| Aiko | Pretendard です。<ruby>韓国<rt>かんこく</rt></ruby>で<ruby>最<rt>もっと</rt></ruby>も<ruby>人気<rt>にんき</rt></ruby>のあるオープンソースフォントです。<br>*(Pretendard. Font opensource phổ biến nhất Hàn Quốc.)* |
| Đại | <ruby>中国語<rt>ちゅうごくご</rt></ruby>は<ruby>簡体字<rt>かんたいじ</rt></ruby>と<ruby>繁体字<rt>はんたいじ</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>しますか?<br>*(Tiếng Trung có hỗ trợ cả giản thể và phồn thể không?)* |
| Aiko | はい、<ruby>両方<rt>りょうほう</rt></ruby>です。Noto Sans SC + Noto Sans TC。<ruby>大陸<rt>たいりく</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>は<ruby>簡体字<rt>かんたいじ</rt></ruby>、<ruby>台湾<rt>たいわん</rt></ruby>・<ruby>香港<rt>ホンコン</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>は<ruby>繁体字<rt>はんたいじ</rt></ruby>です。<br>*(Vâng, cả hai. Noto Sans SC + Noto Sans TC. Thị trường đại lục dùng giản thể, Đài Loan-Hong Kong dùng phồn thể.)* |
| Tuấn | (VN) Backend i18n anh đã cấu hình hỗ trợ 5 ngôn ngữ cơ bản: ja/en/vi/ko/zh-CN/zh-TW. 6 mới chuẩn. |

---

## Tình huống 5 — WeWork 23F · 11:30, Đại hỏi lại Aiko về câu chưa hiểu

| Vai | Lời thoại |
|---|---|
| Aiko | landing page も<ruby>3バージョン<rt>さんバージョン</rt></ruby>: hizashi.app/vi、hizashi.app/ko、hizashi.app/zh。<ruby>地域<rt>ちいき</rt></ruby>SEOにも<ruby>有利<rt>ゆうり</rt></ruby>です。<br>*(Landing page cũng 3 phiên bản. Có lợi cho SEO theo địa phương.)* |
| Đại | アイコさん、すみません、「<ruby>地域<rt>ちいき</rt></ruby>SEO」というのは?<br>*(Aiko-san, xin lỗi — "<ruby>地域<rt>ちいき</rt></ruby>SEO" là gì ạ?)* |
| Aiko | <ruby>地域<rt>ちいき</rt></ruby>SEOは、<ruby>国<rt>くに</rt></ruby>ごとに<ruby>独立<rt>どくりつ</rt></ruby>したURLを<ruby>持<rt>も</rt></ruby>つことで、Googleがその<ruby>国<rt>くに</rt></ruby>の<ruby>検索結果<rt>けんさくけっか</rt></ruby>に<ruby>優先表示<rt>ゆうせんひょうじ</rt></ruby>することです。<br>*(SEO theo địa phương — có URL riêng theo từng nước, Google sẽ ưu tiên hiển thị trong kết quả tìm kiếm của nước đó.)* |
| Đại | なるほど。<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Ra vậy. Hiểu rồi, cảm ơn chị.)* |

---

## Tình huống 6 — LINE · Thứ Sáu 9/6 14:00, Mai báo siêu âm 16w bé Đông đá

| Vai | Lời thoại |
|---|---|
| Mai | (LINE) Anh ơi! Hôm nay em siêu âm 16w. Bé Đông được 12cm rồi. Đá nhẹ trong bụng — em cảm nhận được rồi! |
| Đại | (LINE) Trời ơi! Em quay video gửi anh xem đi. |
| Mai | (LINE, video bụng rung nhẹ) Đó! Đá đó! |
| Đại | (LINE) Trời ơi xúc động em à. 4 năm trước Hana cũng đá ở tuần 16, em còn nhớ không? |
| Mai | (LINE) Em nhớ chứ. Hồi đó anh đang ngồi WeWork hét lên "Tuấn ơi! Hana đá!" |
| Đại | (Slack #hizashi-team) Anh chị em ơi! Bé Đông đá rồi! 4 năm trước Hana cũng vậy. |
| Tuấn | (Slack VN, ghen) Đại ơi! Hồi Hana đá anh chưa biết em à. Lần này anh được "live update". |
| Aiko | (Slack JP) ダイくん、<ruby>本当<rt>ほんとう</rt></ruby>におめでとう!<br>*(Đại-kun, thật chúc mừng!)* |

---

## Tình huống 7 — Senri-chuo Maternity Clinic · 17:00, Đại hỏi bác sĩ về 16w checkup

| Vai | Lời thoại |
|---|---|
| Đại | (rời WeWork sớm đến phòng khám) 先生、お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Bác sĩ, lâu nay được bác sĩ chăm sóc.)* |
| Bác sĩ Tanaka | ダイさん、よく<ruby>来<rt>こ</rt></ruby>られましたね。<ruby>胎動<rt>たいどう</rt></ruby>はもう<ruby>感<rt>かん</rt></ruby>じていますね。<br>*(Đại-san, anh đến được tốt. Đã cảm nhận được thai máy rồi nhỉ.)* |
| Đại | はい、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めてです。<ruby>順調<rt>じゅんちょう</rt></ruby>でしょうか?<br>*(Vâng, hôm nay lần đầu. Có ổn không ạ?)* |
| Bác sĩ | はい、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>胎児<rt>たいじ</rt></ruby>は12cm、<ruby>体重<rt>たいじゅう</rt></ruby>は<ruby>約<rt>やく</rt></ruby>110g。<ruby>男<rt>おとこ</rt></ruby>の<ruby>子<rt>こ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Vâng, ổn. Thai 12cm, cân nặng khoảng 110g. Bé trai đã xác định.)* |
| Mai | (VN) Anh à, bác sĩ nói tháng 7 mình bắt đầu lớp tiền sản. |
| Đại | 先生、<ruby>出産前教室<rt>しゅっさんまえきょうしつ</rt></ruby>は<ruby>何月<rt>なんがつ</rt></ruby>からですか?<br>*(Bác sĩ, lớp tiền sản từ tháng mấy ạ?)* |
| Bác sĩ | <ruby>7月<rt>しちがつ</rt></ruby>から<ruby>12月<rt>じゅうにがつ</rt></ruby>まで、<ruby>月<rt>つき</rt></ruby><ruby>2回<rt>にかい</rt></ruby>です。ダイさんも<ruby>是非<rt>ぜひ</rt></ruby>ご<ruby>参加<rt>さんか</rt></ruby>ください。<br>*(Tháng 7 đến tháng 12, mỗi tháng 2 lần. Đại-san cũng xin mời tham gia.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>参加<rt>さんか</rt></ruby>します。<br>*(Vâng, tôi nhất định tham gia.)* |

---

## Tình huống 8 — WeWork 23F · Thứ Ba 20/6 15:00, Đại + Tuấn review pitch deck slide 7 TAM

| Vai | Lời thoại |
|---|---|
| Đại | Anh ơi, slide 7 TAM em viết: "8.5M Asian JP learners × ¥1k/month × 5% TAM = ¥510M ARR". |
| Tuấn | Em check lại nhé. 8.5M × ¥1k × 5% = 425k người trả ¥1k/tháng = ¥425M/tháng × 12 = ¥5.1 tỷ/năm. Không phải ¥510M ARR. |
| Đại | (cười khổ) Ờ ờ. Em nhân nhầm thứ tự. ¥5.1B ARR — số to gấp 10 lần em viết. |
| Tuấn | Số to là tốt cho pitch — nhưng VC sẽ vặn. Em phải prepare câu trả lời: "% capture 5% là conservative — Duolingo capture 1%, mình cao hơn vì ngách niche". |
| Đại | OK anh. Em sửa lại slide + chuẩn bị 3 câu trả lời chống vặn. |
| Aiko | (đến) スライドの<ruby>視覚<rt>しかく</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>改善<rt>かいぜん</rt></ruby>します。Anriの<ruby>ミニマル<rt>ミニマル</rt></ruby>デザインで<ruby>統一感<rt>とういつかん</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Em sẽ cải thiện thiết kế slide. Theo phong cách minimal Anri để có tính nhất quán.)* |

---

## Tình huống 9 — WeWork 23F · Thứ Năm 22/6 19:00, content QA report Đại trình bày

| Vai | Lời thoại |
|---|---|
| Đại | (Slack báo cáo QA, chuyển sang JP với Aiko) <ruby>韓国語<rt>かんこくご</rt></ruby>コンテンツ: 8,500/10,000<ruby>問<rt>もん</rt></ruby><ruby>レビュー済<rt>レビューずみ</rt></ruby>、<ruby>合格率<rt>ごうかくりつ</rt></ruby>88%。<br>*(Nội dung KR: 8500/10000 câu đã review, tỷ lệ pass 88%.)* |
| Đại | <ruby>中国語<rt>ちゅうごくご</rt></ruby>コンテンツ: 7,000/10,000<ruby>問<rt>もん</rt></ruby>、<ruby>合格率<rt>ごうかくりつ</rt></ruby>91%。<br>*(Nội dung ZH: 7000/10000, pass 91%.)* |
| Tuấn | (VN) Vấn đề chính bên KR là gì? |
| Đại | (VN) 3 vấn đề: (1) Park Min-jee dùng JP quá trang trọng — học sinh trẻ Hàn thích casual hơn; (2) Lee Soo-yeon tham chiếu K-pop quá ngách — fan mới hiểu; (3) bản dịch Hàn quá sát chữ, cần tự nhiên hơn. |
| Tuấn | Còn ZH? |
| Đại | Wang Lei dùng JP công việc quá nặng — beginner không hiểu. Chen Mei chỉ vài lỗi typo giản thể vs phồn thể. |
| Đại | Kế hoạch: phản hồi cho writer + revise vòng 2 + QA cuối tuần 6. |
| Aiko | (JP) <ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>例<rt>れい</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>してもらえますか?Notion に<ruby>纏<rt>まと</rt></ruby>めます。<br>*(Chia sẻ ví dụ cụ thể được không? Em sẽ tổng hợp trên Notion.)* |
| Đại | はい、<ruby>本日中<rt>ほんじつちゅう</rt></ruby>に Notion で<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Vâng, trong hôm nay em share trên Notion.)* |

---

## Tình huống 10 — WeWork 23F · Thứ Sáu 23/6 17:00, Tuấn báo stress test pass

| Vai | Lời thoại |
|---|---|
| Tuấn | (Slack JP) みんな!Refactor multi-tenant <ruby>完了<rt>かんりょう</rt></ruby>。Stress test 50k concurrent (baseline v1.0 の<ruby>5倍<rt>ごばい</rt></ruby>) — latency p95 = 410ms。PASS!<br>*(Mọi người! Refactor multi-tenant đã xong. Stress test 50k concurrent, p95 = 410ms. PASS!)* |
| Đại | (Slack VN) Chi tiết stack v2.0 cho em với? |
| Tuấn | (Slack)<br>- DB: PostgreSQL 17 + pgvector + read replica 2 nodes<br>- Cache: Redis cluster 3 nodes<br>- API: FastAPI + Uvicorn workers x 8<br>- Embedding: BGE-M3 self-hosted on Modal.com<br>- LLM: Claude 4 Sonnet primary + Llama-3-Swallow-Plus fallback<br>- Deploy: AWS ECS Fargate auto-scale 5-50 tasks |
| Đại | BGE-M3 self-hosted trên Modal.com chi phí bao nhiêu? |
| Tuấn | Modal.com GPU A100 ¥150/giờ. Bursting — chỉ trả khi dùng. Ước tính $300/tháng vs OpenAI ada $1500/tháng. Rẻ hơn 5 lần. |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしいですね!CFO<ruby>視点<rt>してん</rt></ruby>でも<ruby>嬉<rt>うれ</rt></ruby>しい!<br>*(Tuyệt vời! Góc nhìn CFO cũng vui!)* |
| Đại | (Slack JP) <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>来週<rt>らいしゅう</rt></ruby>のレトロで<ruby>詳<rt>くわ</rt></ruby>しく<ruby>議論<rt>ぎろん</rt></ruby>しましょう。<br>*(Tuyệt! Tuần sau retrospective bàn chi tiết nhé.)* |

---

## Tình huống 11 — WeWork 23F · Thứ Bảy 30/6 10:00, end-of-sprint retrospective

| Vai | Lời thoại |
|---|---|
| Đại | みんな、<ruby>6週間<rt>ろくしゅうかん</rt></ruby>のスプリント、お<ruby>疲<rt>つか</rt></ruby>れさまでした。レトロを<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mọi người, sprint 6 tuần — vất vả rồi. Bắt đầu retro.)* |
| Đại | <ruby>達成事項<rt>たっせいじこう</rt></ruby>:<br>- Backend multi-tenant ✓<br>- UI <ruby>3言語<rt>さんげんご</rt></ruby> ✓<br>- 17,500<ruby>問<rt>もん</rt></ruby> KR+ZH ✓<br>- 200 lessons KR + 200 ZH ✓<br>- Pitch deck Series A v1 ✓<br>- Stress test 50k pass ✓<br>*(Đã đạt: 6 mục.)* |
| Đại | <ruby>残課題<rt>ざんかだい</rt></ruby>:<br>- QA <ruby>合格率<rt>ごうかくりつ</rt></ruby> 88-91% (VN は 100%)<br>- Financial model は CFO に<ruby>相談<rt>そうだん</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby><br>- <ruby>韓国語<rt>かんこくご</rt></ruby> UI フォント iPad で<ruby>表示<rt>ひょうじ</rt></ruby>バグ<br>*(Việc còn lại: 3 mục.)* |
| Tuấn | (VN) v2.0 launch 1/8 OK chứ Đại? |
| Đại | (VN) OK anh. Hôm nay 30/6, còn 4 tuần polish + fix bug + soft launch tuần 7. |
| Aiko | マルチランゲージ<ruby>市場<rt>しじょう</rt></ruby>の<ruby>反応<rt>はんのう</rt></ruby>が<ruby>楽<rt>たの</rt></ruby>しみですね!<br>*(Em rất mong chờ phản ứng thị trường đa ngôn ngữ!)* |

---

## Tình huống 12 — Apt Senri-chuo · 30/6 22:00, Đại gọi Zalo cho Mai mẹ (Mai về VN tuần này) (tiếng Việt)

*Mai đã về Hà Nội thăm bà ngoại 1 tuần. Hana ở Osaka với Đại. Đại gọi Zalo.*

| Vai | Lời thoại |
|---|---|
| Đại | Em ơi! Sprint v2.0 6 tuần xong rồi. Mệt muốn xỉu nhưng vui. |
| Mai | Trời ơi anh. Em ở Hà Nội theo dõi Slack thấy team em chạy ác liệt. Tuấn anh có ngủ không? |
| Đại | Tuấn anh ngủ 5 tiếng/đêm, ăn ramen 4 lần/tuần. Anh phải kéo ảnh ra ăn cơm thường. |
| Mai | Anh thì sao? Có giữ lời hứa 21-23 deep work không? |
| Đại | Có em! Lịch như sau: 6h dậy, đưa Hana đi nhà trẻ 7h30, WeWork 9-19, về nhà 20h chơi với Hana, 21-23 code review. Đều đặn. |
| Mai | Hana có hỏi mẹ không? |
| Đại | Có. Tối nào cũng hỏi "Mẹ đâu bố?" Anh nói "Mẹ về bà ngoại 1 tuần". Hana gật đầu rồi đòi xem Doraemon. |
| Mai | Tội nghiệp Hana. Tuần sau em về. Mà anh ơi — mẹ Hà Nội gửi anh 5 cân nem chua. |
| Đại | (cười) Trời ơi! Em mang qua máy bay nổi không? 5 cân nem chua hải quan Nhật chắc... |
| Mai | Hải quan OK em check rồi. Đông lạnh, đóng gói chuẩn. |
| Đại | OK em. Anh nhớ em. Hôm nay bé Đông có đá không? |
| Mai | Có chứ. Hôm nay đá 5 lần — chắc bé thích về Hà Nội. |
| Đại | (cười) Đông là dân Hà Nội tương lai. Em ngủ ngon. |
| Mai | Anh nhớ giữ sức. Tháng 7 first hire — đừng để stress quá. |

---

## Đọng lại chương 3

Đại lead sprint v2.0 6 tuần với 3 luồng song song. Mẫu câu kickoff sprint `<ruby>3<rt>みっ</rt></ruby>つの<ruby>並行<rt>へいこう</rt></ruby>トラックに<ruby>分<rt>わ</rt></ruby>けます` chuẩn agile keigo. Phỏng vấn freelance writer Park Min-jee với cấu trúc `<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>委託<rt>いたく</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>は〜です` + `<ruby>納品物<rt>のうひんぶつ</rt></ruby>は〜です`. Review Figma 3 ngôn ngữ với Aiko — học mẫu câu `<ruby>韓国語<rt>かんこくご</rt></ruby>のフォントは<ruby>何<rt>なに</rt></ruby>を<ruby>使<rt>つか</rt></ruby>っていますか` và quan trọng nhất là mẫu hỏi lại `「<ruby>地域<rt>ちいき</rt></ruby>SEO」というのは?`. Hỏi bác sĩ về lớp tiền sản `<ruby>出産前教室<rt>しゅっさんまえきょうしつ</rt></ruby>は<ruby>何月<rt>なんがつ</rt></ruby>からですか`. Retrospective cuối sprint với cấu trúc `<ruby>達成事項<rt>たっせいじこう</rt></ruby>/<ruby>残課題<rt>ざんかだい</rt></ruby>`. Đêm cuối gọi Zalo cho Mai ở Hà Nội — Hana ngoan, bé Đông đá 5 lần.

> Từ vựng & mẫu câu chương này: <ruby>並行<rt>へいこう</rt></ruby>トラック・<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>委託<rt>いたく</rt></ruby>・<ruby>納品物<rt>のうひんぶつ</rt></ruby>・<ruby>合格率<rt>ごうかくりつ</rt></ruby>・<ruby>韓国語<rt>かんこくご</rt></ruby>・<ruby>中国語<rt>ちゅうごくご</rt></ruby>・<ruby>簡体字<rt>かんたいじ</rt></ruby>・<ruby>繁体字<rt>はんたいじ</rt></ruby>・<ruby>地域<rt>ちいき</rt></ruby>SEO・<ruby>自動<rt>じどう</rt></ruby><ruby>検出<rt>けんしゅつ</rt></ruby>・<ruby>胎動<rt>たいどう</rt></ruby>・<ruby>出産前教室<rt>しゅっさんまえきょうしつ</rt></ruby>・<ruby>達成事項<rt>たっせいじこう</rt></ruby>・<ruby>残課題<rt>ざんかだい</rt></ruby>・<ruby>共有<rt>きょうゆう</rt></ruby>・<ruby>具体的<rt>ぐたいてき</rt></ruby>・〜というのは・<ruby>視覚<rt>しかく</rt></ruby><ruby>面<rt>めん</rt></ruby>・<ruby>統一感<rt>とういつかん</rt></ruby>・お<ruby>疲<rt>つか</rt></ruby>れさまでした

## Bí quyết chương

- **Sprint 6 tuần, 3 luồng song song**: chuẩn small team startup — backend + design + business chạy parallel
- **Phỏng vấn freelance keigo**: bắt đầu bằng `<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます` + giới thiệu điều kiện trước, hỏi background sau
- **Mẫu câu hỏi lại khi chưa hiểu**: `「X」というのは?` — bắt buộc dùng với Aiko hoặc khách Nhật, không được giả vờ hiểu
- **Stress test 50k = chuẩn DD VC**: prepare trước khi pitch để chống vặn về scale
- **BGE-M3 self-hosted trên Modal.com**: rẻ hơn 5 lần OpenAI ada ở scale — biết khi nào self-host khi nào dùng SaaS
- **Tham gia lớp tiền sản** = chuẩn người cha hiện đại Nhật, bác sĩ luôn mời chồng
- **Retrospective cấu trúc 達成事項/残課題**: keigo chuẩn để báo cáo team

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 並行 | へいこう | TÍNH HÀNH | song song |
| 再設計 | さいせっけい | TÁI THIẾT KẾ | thiết kế lại |
| 予測 | よそく | DỰ TRẮC | dự báo |
| 経歴 | けいれき | KINH LỊCH | kinh nghiệm, lý lịch |
| 母語 | ぼご | MẪU NGỮ | tiếng mẹ đẻ |
| 委託 | いたく | ỦY THÁC | uỷ thác |
| 条件 | じょうけん | ĐIỀU KIỆN | điều kiện |
| 納品物 | のうひんぶつ | NẠP PHẨM VẬT | sản phẩm giao |
| 解説 | かいせつ | GIẢI THUYẾT | giải thích |
| 学習者 | がくしゅうしゃ | HỌC TẬP GIẢ | người học |
| 背景 | はいけい | BỐI CẢNH | bối cảnh |
| 効果的 | こうかてき | HIỆU QUẢ ĐÍCH | hiệu quả |
| 共通 | きょうつう | CỘNG THÔNG | chung |
| 切替 | きりかえ | THIẾT THẾ | chuyển đổi |
| 初回起動時 | しょかいきどうじ | SƠ HỒI KHỞI ĐỘNG THỜI | lần đầu khởi động |
| 端末 | たんまつ | ĐOAN MẠT | thiết bị, máy |
| 言語設定 | げんごせってい | NGÔN NGỮ THIẾT ĐỊNH | cài đặt ngôn ngữ |
| 自動検出 | じどうけんしゅつ | TỰ ĐỘNG KIỂM XUẤT | tự động phát hiện |
| 簡体字 | かんたいじ | GIẢN THỂ TỰ | giản thể |
| 繁体字 | はんたいじ | PHỒN THỂ TỰ | phồn thể |
| 大陸 | たいりく | ĐẠI LỤC | đại lục |
| 地域 | ちいき | ĐỊA VỰC | khu vực, địa phương |
| 独立 | どくりつ | ĐỘC LẬP | độc lập |
| 検索結果 | けんさくけっか | KIỂM SÁCH KẾT QUẢ | kết quả tìm kiếm |
| 優先表示 | ゆうせんひょうじ | ƯU TIÊN BIỂU THỊ | hiển thị ưu tiên |
| 胎動 | たいどう | THAI ĐỘNG | thai máy |
| 体重 | たいじゅう | THỂ TRỌNG | cân nặng |
| 出産前教室 | しゅっさんまえきょうしつ | XUẤT SẢN TIỀN GIÁO THẤT | lớp tiền sản |
| 視覚面 | しかくめん | THỊ GIÁC DIỆN | mặt thị giác |
| 改善 | かいぜん | CẢI THIỆN | cải thiện |
| 統一感 | とういつかん | THỐNG NHẤT CẢM | tính nhất quán |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | tỷ lệ đạt |
| 共有 | きょうゆう | CỘNG HỮU | chia sẻ |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | cụ thể |
| 達成事項 | たっせいじこう | ĐẠT THÀNH SỰ HẠNG | mục đã đạt |
| 残課題 | ざんかだい | TÀN KHOÁ ĐỀ | việc còn lại |
| 議論 | ぎろん | NGHỊ LUẬN | thảo luận |
| 反応 | はんのう | PHẢN ỨNG | phản ứng |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000004, 800000026, NULL, 'markdown_book', 'T4. First hire — Tanaka senior backend + Sakura UI junior', '# Sách kỹ sư cầu nối & khởi nghiệp · T4. First hire — Tanaka senior backend + Sakura UI junior

> **Mục tiêu nhân vật:** Đại 26 tuổi, tháng 7/2031. Lần đầu tuyển nhân viên cho Hizashi: senior Tanaka Hiroshi (32t, ex-Mercari) ¥9M base + new grad Sakura Yamada (24t, ĐH Kobe) ¥4.5M base. Học các mẫu hội thoại tiếng Nhật của founder phỏng vấn: (1) chào ứng viên keigo 「お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます」, (2) giới thiệu sứ mệnh công ty, (3) đàm phán <ruby>給与条件<rt>きゅうよじょうけん</rt></ruby> + RSU, (4) hỏi portfolio Figma, (5) gửi offer letter keigo, (6) Day 1 onboarding 5 người all-hands, (7) xin về sớm dự lớp tiền sản.

---

## Bối cảnh

Tháng 7/2031. Hizashi sau sprint v2.0 6 tuần thành công, chuẩn bị launch 1/8. Đại + Tuấn + Aiko cần hire để scale. Target: 1 senior backend + 1 UI junior. Mai 18-22 tuần thai (5 tháng), bụng đã rõ, bé Đông đá nhiều. Hana sắp 3 tuổi (5/8). Chương này tập trung mẫu câu phỏng vấn tuyển dụng startup tier 1 Nhật.

---

## Tình huống 1 — WeWork 23F · Thứ Ba 8/7 14:00, Tanaka Hiroshi đến phỏng vấn

*Tanaka Hiroshi 32 tuổi, ex-Mercari Tokyo backend lead, là cohort cũ của Tuấn từ thời ĐH Tokyo. Mặc áo casual, mang MacBook.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、ようこそHizashiへ!<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Tanaka-san, chào mừng đến Hizashi! Cảm ơn anh đã đến hôm nay.)* |
| Tanaka | <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>田中<rt>たなか</rt></ruby><ruby>宏<rt>ひろし</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lần đầu gặp, tôi là Tanaka Hiroshi. Hôm nay mong anh chỉ giáo.)* |
| Tuấn | (JP casual) ヒロシ、<ruby>久<rt>ひさ</rt></ruby>しぶり!メルカリ<ruby>時代<rt>じだい</rt></ruby>から4<ruby>年<rt>ねん</rt></ruby>ぶりかな?<br>*(Hiroshi, lâu rồi! Từ thời Mercari 4 năm rồi nhỉ?)* |
| Tanaka | (cười) そう、4<ruby>年<rt>ねん</rt></ruby>だね。トゥアンが<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業<rt>そうぎょう</rt></ruby>したって<ruby>聞<rt>き</rt></ruby>いて、すごく<ruby>興味<rt>きょうみ</rt></ruby><ruby>持<rt>も</rt></ruby>ったよ。<br>*(Ừ, 4 năm. Nghe Tuấn đồng sáng lập là rất quan tâm.)* |
| Đại | <ruby>当社<rt>とうしゃ</rt></ruby>のミッションは「アジア<ruby>言語<rt>げんご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>のためのAIチューター」でございます。<br>*(Sứ mệnh công ty là "AI tutor cho người học ngôn ngữ châu Á".)* |

---

## Tình huống 2 — WeWork 23F · 14:30, Đại hỏi background + lý do quit Mercari

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、メルカリを<ruby>辞<rt>や</rt></ruby>めた<ruby>理由<rt>りゆう</rt></ruby>を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか?<br>*(Tanaka-san, tôi có thể hỏi lý do anh nghỉ Mercari không ạ?)* |
| Tanaka | はい。メルカリは<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>会社<rt>かいしゃ</rt></ruby>ですが、<ruby>規模<rt>きぼ</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きくなって、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>影響力<rt>えいきょうりょく</rt></ruby>が<ruby>小<rt>ちい</rt></ruby>さく<ruby>感<rt>かん</rt></ruby>じるようになりました。<ruby>独立<rt>どくりつ</rt></ruby><ruby>系<rt>けい</rt></ruby>のSaaSスタートアップで、もう<ruby>一度<rt>いちど</rt></ruby>0→1を<ruby>経験<rt>けいけん</rt></ruby>したいと<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Vâng. Mercari là công ty tuyệt vời, nhưng quy mô đã lớn, tôi cảm thấy ảnh hưởng cá nhân nhỏ đi. Tôi muốn trải nghiệm 0→1 một lần nữa ở SaaS startup độc lập.)* |
| Đại | なるほど。Hizashi の<ruby>現状<rt>げんじょう</rt></ruby>: 12,000 user、<ruby>有料<rt>ゆうりょう</rt></ruby> 2,000、MRR ¥2.5M、B2B<ruby>顧客<rt>こきゃく</rt></ruby><ruby>1社<rt>いっしゃ</rt></ruby>(<ruby>清華<rt>タンハー</rt></ruby>)。Series A は<ruby>9月<rt>くがつ</rt></ruby>から pitch <ruby>開始<rt>かいし</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Ra vậy. Tình hình Hizashi: 12k user, 2k paid, MRR ¥2.5M, 1 khách B2B (Thanh Hà). Series A dự định pitch từ tháng 9.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしい traction だね。<br>*(Traction tuyệt vời.)* |

---

## Tình huống 3 — WeWork 23F · 15:00, Tuấn tech interview stack

| Vai | Lời thoại |
|---|---|
| Tuấn | (JP) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>面談<rt>めんだん</rt></ruby>ね。Hizashi の<ruby>現状<rt>げんじょう</rt></ruby>はこんな<ruby>感<rt>かん</rt></ruby>じ:<br>- Backend: FastAPI + Python 3.12<br>- DB: PostgreSQL 17 + pgvector<br>- Cache: Redis cluster<br>- LLM: Claude 4 Sonnet + Llama-3-Swallow-Plus<br>- Deploy: AWS ECS Fargate<br>50k concurrent stress test もパスしたよ。<br>*(Stack hiện tại.)* |
| Tanaka | <ruby>技術<rt>ぎじゅつ</rt></ruby><ruby>選定<rt>せんてい</rt></ruby>がすごく<ruby>洗練<rt>せんれん</rt></ruby>されているね。<ruby>特<rt>とく</rt></ruby>に Modal.com の<ruby>採用<rt>さいよう</rt></ruby>は<ruby>賢<rt>かしこ</rt></ruby>い。<br>*(Lựa chọn công nghệ tinh tế. Đặc biệt việc dùng Modal.com là khôn ngoan.)* |
| Tuấn | <ruby>1年後<rt>いちねんご</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>:50,000 user、MRR ¥10M、<ruby>チーム<rt>チーム</rt></ruby>8<ruby>名<rt>めい</rt></ruby>。バックエンドの<ruby>責任者<rt>せきにんしゃ</rt></ruby>として、<ruby>是非<rt>ぜひ</rt></ruby><ruby>力<rt>ちから</rt></ruby>を<ruby>貸<rt>か</rt></ruby>してほしい。<br>*(Mục tiêu 1 năm: 50k user, MRR ¥10M, team 8 người. Mong anh làm responsible backend lead.)* |
| Tanaka | <ruby>是非<rt>ぜひ</rt></ruby>やらせてほしい。<br>*(Rất muốn làm.)* |

---

## Tình huống 4 — WeWork 23F · 15:30, Đại offer salary + RSU

| Vai | Lời thoại |
|---|---|
| Tanaka | <ruby>給与条件<rt>きゅうよじょうけん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてもらえますか?<br>*(Cho tôi xác nhận điều kiện lương được không?)* |
| Đại | <ruby>年収<rt>ねんしゅう</rt></ruby> ¥9,000,000 base + RSU 0.5% (4<ruby>年<rt>ねん</rt></ruby> vest、<ruby>1年<rt>いちねん</rt></ruby> cliff) + ボーナス<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>でございます。<br>*(¥9M base + RSU 0.5% (4 năm vest, 1 năm cliff) + thưởng 1 tháng.)* |
| Tanaka | メルカリは ¥10.5M でしたが、Hizashi の RSU upside が<ruby>大<rt>おお</rt></ruby>きいですね。<ruby>1<rt>ひと</rt></ruby>つ<ruby>確認<rt>かくにん</rt></ruby>させてください — Series A <ruby>後<rt>ご</rt></ruby>の<ruby>希薄化<rt>きはくか</rt></ruby>はどのくらい<ruby>想定<rt>そうてい</rt></ruby>していますか?<br>*(Mercari là ¥10.5M nhưng RSU upside của Hizashi lớn. Cho tôi xác nhận một điều — pha loãng sau Series A bao nhiêu?)* |
| Đại | (chuẩn bị sẵn) Series A で20%<ruby>希薄化<rt>きはくか</rt></ruby>、Series B で15%<ruby>追加<rt>ついか</rt></ruby><ruby>希薄化<rt>きはくか</rt></ruby>を<ruby>想定<rt>そうてい</rt></ruby>しています。<ruby>田中<rt>たなか</rt></ruby>さんの 0.5% は exit <ruby>時点<rt>じてん</rt></ruby>で<ruby>約<rt>やく</rt></ruby> 0.34% に<ruby>希薄化<rt>きはくか</rt></ruby>される<ruby>想定<rt>そうてい</rt></ruby>です。<br>*(Series A pha loãng 20%, Series B thêm 15%. 0.5% của anh tại exit sẽ pha loãng còn khoảng 0.34%.)* |
| Tanaka | <ruby>透明<rt>とうめい</rt></ruby>に<ruby>計算<rt>けいさん</rt></ruby>してくれてありがとう。<ruby>承諾<rt>しょうだく</rt></ruby>します!<br>*(Cảm ơn vì tính toán minh bạch. Tôi đồng ý!)* |
| Đại | (đứng dậy, bắt tay) ありがとうございます!<ruby>正式<rt>せいしき</rt></ruby>な offer letter は<ruby>明日<rt>あした</rt></ruby>メールでお<ruby>送<rt>おく</rt></ruby>りします。<br>*(Cảm ơn anh! Offer letter chính thức mai tôi gửi email.)* |

---

## Tình huống 5 — WeWork 23F · 17:00, Sakura Yamada UI junior phỏng vấn

*Sakura Yamada 24 tuổi, sinh viên năm 4 ĐH Kobe Information Design, mặc hoodie + cầm sketchbook. Aiko mentor.*

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>桜<rt>さくら</rt></ruby>さん、ようこそHizashiへ!<br>*(Sakura-san, chào mừng đến Hizashi!)* |
| Sakura | (hồi hộp) <ruby>初<rt>はじ</rt></ruby>めまして、<ruby>山田<rt>やまだ</rt></ruby><ruby>桜<rt>さくら</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します!アイコさんの<ruby>大<rt>だい</rt></ruby>ファンです!<br>*(Lần đầu gặp, em là Yamada Sakura! Em rất hâm mộ chị Aiko!)* |
| Aiko | (cười) <ruby>嬉<rt>うれ</rt></ruby>しい!ポートフォリオ<ruby>見<rt>み</rt></ruby>せてくれる?<br>*(Vui quá! Cho chị xem portfolio nhé?)* |
| Sakura | (mở Figma) はい!<ruby>神戸大学<rt>こうべだいがく</rt></ruby>インフォメーションデザイン<ruby>学科<rt>がっか</rt></ruby><ruby>4年<rt>よねん</rt></ruby>です。<ruby>卒業制作<rt>そつぎょうせいさく</rt></ruby>は<ruby>難民<rt>なんみん</rt></ruby><ruby>向<rt>む</rt></ruby>けの<ruby>言語学習<rt>げんごがくしゅう</rt></ruby>アプリです。Adobe Design Achievement Awardを<ruby>受賞<rt>じゅしょう</rt></ruby>しました。<br>*(Vâng! Em năm 4 ngành Information Design ĐH Kobe. Đồ án tốt nghiệp là app học ngôn ngữ cho người tị nạn. Em đã nhận Adobe Design Achievement Award.)* |
| Đại | Adobe Design Achievement Award!<ruby>素晴<rt>すば</rt></ruby>らしいですね!<ruby>応募<rt>おうぼ</rt></ruby><ruby>者<rt>しゃ</rt></ruby>は<ruby>世界<rt>せかい</rt></ruby><ruby>各国<rt>かっこく</rt></ruby>から<ruby>何人<rt>なんにん</rt></ruby>くらい?<br>*(Adobe Design Achievement Award! Tuyệt vời! Ứng cử viên từ khắp thế giới có bao nhiêu?)* |
| Sakura | <ruby>今年<rt>ことし</rt></ruby>は10,000<ruby>人<rt>にん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>の<ruby>応募<rt>おうぼ</rt></ruby>で、<ruby>学生<rt>がくせい</rt></ruby>カテゴリでファイナリスト100<ruby>人<rt>にん</rt></ruby><ruby>選<rt>えら</rt></ruby>ばれました。<br>*(Năm nay hơn 10k người ứng tuyển, em được chọn vào top 100 hạng mục sinh viên.)* |

---

## Tình huống 6 — WeWork 23F · 17:30, Aiko hỏi UI KR-ZH research

| Vai | Lời thoại |
|---|---|
| Aiko | <ruby>桜<rt>さくら</rt></ruby>ちゃん、<ruby>今<rt>いま</rt></ruby> Hizashi v2.0 で<ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>中国語<rt>ちゅうごくご</rt></ruby>のUIを<ruby>展開中<rt>てんかいちゅう</rt></ruby>です。<ruby>担当<rt>たんとう</rt></ruby>してもらえる?<br>*(Sakura-chan, hiện Hizashi v2.0 đang mở rộng UI KR+ZH. Em phụ trách được không?)* |
| Sakura | (hào hứng) <ruby>大歓迎<rt>だいかんげい</rt></ruby>です!<ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>中国語<rt>ちゅうごくご</rt></ruby>のUIは<ruby>個人<rt>こじん</rt></ruby>でも<ruby>研究<rt>けんきゅう</rt></ruby><ruby>済<rt>ず</rt></ruby>みです!<br>*(Em vô cùng vinh dự ạ! UI tiếng Hàn và tiếng Trung em đã tự research rồi!)* |
| Aiko | <ruby>具体的<rt>ぐたいてき</rt></ruby>にはどんな<ruby>研究<rt>けんきゅう</rt></ruby>を?<br>*(Cụ thể em research gì?)* |
| Sakura | <ruby>韓国<rt>かんこく</rt></ruby>のフォントは Pretendard が<ruby>標準<rt>ひょうじゅん</rt></ruby>。<ruby>中国<rt>ちゅうごく</rt></ruby>は<ruby>簡体字<rt>かんたいじ</rt></ruby>に Noto Sans SC、<ruby>繁体字<rt>はんたいじ</rt></ruby>に Noto Sans TC。<ruby>韓国語<rt>かんこくご</rt></ruby>は<ruby>行間<rt>ぎょうかん</rt></ruby>を<ruby>日本語<rt>にほんご</rt></ruby>より20%<ruby>広<rt>ひろ</rt></ruby>くするのが<ruby>読<rt>よ</rt></ruby>みやすいです。<br>*(Font Hàn chuẩn là Pretendard. Trung giản thể Noto Sans SC, phồn thể Noto Sans TC. Tiếng Hàn line-height phải rộng hơn tiếng Nhật 20% mới dễ đọc.)* |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>知識<rt>ちしき</rt></ruby>がしっかりしているね。<br>*(Tuyệt vời! Kiến thức chắc nhỉ.)* |
| Đại | <ruby>新卒<rt>しんそつ</rt></ruby><ruby>給与<rt>きゅうよ</rt></ruby>は<ruby>年収<rt>ねんしゅう</rt></ruby> ¥4,500,000 base + RSU 0.2%、ボーナス<ruby>1ヶ月分<rt>いっかげつぶん</rt></ruby>でございます。<br>*(Lương new grad ¥4.5M base + RSU 0.2% + thưởng 1 tháng.)* |
| Sakura | (mỉm cười) <ruby>承諾<rt>しょうだく</rt></ruby>させていただきます!<ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます!<br>*(Em xin nhận ạ! Kính mong anh chị chỉ giáo!)* |

---

## Tình huống 7 — WeWork 23F · Tối thứ Ba 8/7 19:00, cofounder đêm bàn burn rate

| Vai | Lời thoại |
|---|---|
| Đại | (VN, whiteboard) Anh chị ơi! 2 hire đã accept. Update burn rate:<br>**Trước hire**: ¥1.6M/tháng<br>**Sau hire**:<br>- Tanaka ¥9M/12 + thưởng ¥0.75M, bảo hiểm xã hội 15% → ¥934k/tháng<br>- Sakura ¥4.5M/12 + thưởng ¥0.375M, bảo hiểm 15% → ¥467k/tháng<br>**Tổng sau hire**: ¥3.0M/tháng. |
| Tuấn | (VN) Tiền + dòng tiền:<br>- Pre-seed cash: ¥18M<br>- Hizashi MRR: ¥2.5M/tháng<br>- Thanh A ARR: ¥486k = ¥40.5k/tháng<br>- Tổng cash inflow: ¥2.54M/tháng<br>- Net burn: ¥3.0M - ¥2.54M = lỗ ¥460k/tháng<br>- Runway: ¥18M / ¥460k = 39 tháng |
| Aiko | Series A クローズ<ruby>前<rt>まえ</rt></ruby>でランウェイ39<ruby>ヶ月<rt>かげつ</rt></ruby>!<ruby>余裕<rt>よゆう</rt></ruby>ですね。<br>*(Trước Series A close mà runway còn 39 tháng! Thoải mái.)* |
| Đại | (VN) OK em chốt. Mai em gửi offer letter cho cả 2. Start date thứ Hai 22/7. |

---

## Tình huống 8 — Email · Thứ Tư 9/7, Đại gửi offer letter Tanaka (keigo)

*Đại mở laptop, viết email offer letter chính thức bằng JP keigo.*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc to email cho mình kiểm tra) <ruby>件名<rt>けんめい</rt></ruby>: 【<ruby>正式<rt>せいしき</rt></ruby>オファー】Hizashi Senior Backend Engineer。<br>*(Tiêu đề: [Offer chính thức] Hizashi Senior Backend Engineer.)* |
| Đại | <ruby>田中<rt>たなか</rt></ruby><ruby>宏<rt>ひろし</rt></ruby><ruby>様<rt>さま</rt></ruby>。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>面談<rt>めんだん</rt></ruby>のお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございました。<br>*(Tanaka Hiroshi-sama. Cảm ơn anh đã dành thời gian phỏng vấn hôm nay.)* |
| Đại | <ruby>下記<rt>かき</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>にて<ruby>正式<rt>せいしき</rt></ruby>にオファーをさせていただきます:<br>- <ruby>職位<rt>しょくい</rt></ruby>: Senior Backend Engineer<br>- <ruby>年収<rt>ねんしゅう</rt></ruby>: ¥9,000,000 (base)<br>- RSU: 0.5% (4年vest、1年cliff)<br>- ボーナス: <ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby><br>- <ruby>勤務形態<rt>きんむけいたい</rt></ruby>: WeWork Umeda + リモートOK<br>- <ruby>入社日<rt>にゅうしゃび</rt></ruby>: 2031<ruby>年<rt>ねん</rt></ruby><ruby>7月<rt>しちがつ</rt></ruby>22<ruby>日<rt>にち</rt></ruby> (<ruby>月<rt>げつ</rt></ruby>) |
| Đại | ご<ruby>確認<rt>かくにん</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>、<ruby>7月<rt>しちがつ</rt></ruby>15<ruby>日<rt>にち</rt></ruby>までにご<ruby>返信<rt>へんしん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br>*(Xin anh xác nhận và phản hồi trước 15/7.)* |
| Đại | <ruby>何卒<rt>なにとぞ</rt></ruby>よろしくお<ruby>願<rt>ねが</rt></ruby>い<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。グエン・ダイ。<br>*(Kính mong anh xem xét. Nguyễn Đại.)* |
| Tuấn | (đứng sau lưng đọc) Đại ơi, câu「ご<ruby>返信<rt>へんしん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです」 chuẩn keigo email Nhật. Send đi! |

---

## Tình huống 9 — WeWork 23F · Thứ Hai 22/7 9:00, Day 1 onboarding all-hands

*Tanaka + Sakura cùng đến WeWork 9:00. Đại + Tuấn + Aiko đợi sẵn với hoa + bánh + USB Hizashi quà tặng.*

| Vai | Lời thoại |
|---|---|
| Đại | (đứng dậy) みんな、おはようございます!<ruby>本日<rt>ほんじつ</rt></ruby>から Hizashi は<ruby>5名<rt>ごめい</rt></ruby>体制になります!<br>*(Mọi người chào buổi sáng! Từ hôm nay Hizashi là 5 người!)* |
| Tanaka | <ruby>本日<rt>ほんじつ</rt></ruby>から Hizashi のバックエンドを<ruby>担当<rt>たんとう</rt></ruby>させていただきます。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Từ hôm nay tôi phụ trách backend Hizashi. Mong mọi người chỉ giáo.)* |
| Sakura | UIを<ruby>担当<rt>たんとう</rt></ruby>させていただきます<ruby>山田桜<rt>やまださくら</rt></ruby>です。<ruby>精<rt>せい</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ります!<br>*(Em là Yamada Sakura phụ trách UI. Em sẽ cố gắng hết sức ạ!)* |
| Tuấn | (VN) Kế hoạch onboarding tuần này:<br>- Day 1: HR + Slack/GitLab/Notion access<br>- Day 2: Deep dive architecture<br>- Day 3: Tour code repo<br>- Day 4: Task đầu tiên<br>- Day 5: 1:1 với Đại + Tuấn |
| Đại | <ruby>金曜<rt>きんよう</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>17<ruby>時<rt>じ</rt></ruby>からハイボールとピザでオンボーディング<ruby>祝<rt>いわ</rt></ruby>いしましょう!<br>*(Tối thứ Sáu 17h ăn mừng onboarding bằng highball với pizza nhé!)* |
| Aiko | <ruby>桜<rt>さくら</rt></ruby>ちゃん、<ruby>歓迎<rt>かんげい</rt></ruby>!Figma へのアクセスは<ruby>後<rt>あと</rt></ruby>でリンク<ruby>送<rt>おく</rt></ruby>るね。<br>*(Sakura-chan, chào mừng! Link Figma chị gửi sau nhé.)* |

---

## Tình huống 10 — LINE · Thứ Sáu 26/7 16:30, Mai báo Đại về lớp tiền sản

| Vai | Lời thoại |
|---|---|
| Mai | (LINE) Anh ơi! 17h hôm nay lớp tiền sản ở Senri-chuo Maternity đó. Anh đến được không? |
| Đại | (LINE) Em ơi 17h anh có tiệc onboarding với team. Anh rời sớm lúc 17:30, đến lớp khoảng 18:00. Lớp mấy giờ kết thúc? |
| Mai | (LINE) 19h anh. Anh đến nửa sau cũng được. |
| Đại | (Slack #hizashi-team JP) みんな、すみません — <ruby>17時半<rt>じゅうしちじはん</rt></ruby>に<ruby>早退<rt>そうたい</rt></ruby>させてください。<ruby>妻<rt>つま</rt></ruby>の<ruby>出産前教室<rt>しゅっさんまえきょうしつ</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>します。<br>*(Mọi người xin lỗi — cho em về sớm lúc 17:30. Em đi lớp tiền sản với vợ.)* |
| Tuấn | (Slack VN) Đi đi Đại! Gia đình là số một. Anh chị em ăn pizza đôi cho ngon. |
| Aiko | (Slack JP) <ruby>家族<rt>かぞく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>!<ruby>行<rt>い</rt></ruby>ってらっしゃい!<br>*(Gia đình ưu tiên! Đi đi!)* |
| Tanaka | (Slack JP) ダイさん、いい<ruby>父親<rt>ちちおや</rt></ruby>ですね!<br>*(Đại-san, người cha tốt nhỉ!)* |
| Sakura | (Slack JP) <ruby>素敵<rt>すてき</rt></ruby>です!<br>*(Tuyệt vời ạ!)* |

---

## Tình huống 11 — Senri-chuo Maternity · 18:00, Đại tham gia lớp tiền sản

*Đại chạy đến phòng học. 8 cặp vợ chồng khác đang ngồi. Bác sĩ dạy massage tầng sinh môn.*

| Vai | Lời thoại |
|---|---|
| Đại | (vào phòng, nói nhỏ) すみません、<ruby>遅<rt>おく</rt></ruby>れました。<br>*(Xin lỗi, tôi đến trễ.)* |
| Mai | (vẫy tay) Anh ơi, ngồi đây. |
| Bác sĩ | ダイさん、よかったですね!<ruby>夫<rt>おっと</rt></ruby><ruby>様<rt>さま</rt></ruby>のご<ruby>参加<rt>さんか</rt></ruby>はとても<ruby>大事<rt>だいじ</rt></ruby>ですよ。<br>*(Đại-san, anh đến được tốt quá! Chồng tham gia rất quan trọng.)* |
| Đại | はい、<ruby>勉強<rt>べんきょう</rt></ruby>させていただきます。<br>*(Vâng, em xin học hỏi.)* |
| Bác sĩ | <ruby>会陰<rt>えいん</rt></ruby><ruby>マッサージ<rt>マッサージ</rt></ruby>は<ruby>34週<rt>さんじゅうよんしゅう</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby>、<ruby>夫<rt>おっと</rt></ruby><ruby>様<rt>さま</rt></ruby>が<ruby>行<rt>おこな</rt></ruby>うと<ruby>会陰<rt>えいん</rt></ruby><ruby>裂傷<rt>れっしょう</rt></ruby>の<ruby>確率<rt>かくりつ</rt></ruby>が30%<ruby>減<rt>へ</rt></ruby>ります。<br>*(Massage tầng sinh môn từ tuần 34 mỗi ngày — nếu chồng làm sẽ giảm 30% nguy cơ rách tầng sinh môn.)* |
| Đại | (ghi chú) <ruby>分<rt>わ</rt></ruby>かりました。<ruby>34週<rt>さんじゅうよんしゅう</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby>ですね。<br>*(Hiểu rồi. Từ tuần 34 mỗi ngày nhỉ.)* |
| Mai | (cười, nói nhỏ với Đại) Anh ghi chú kỹ ghê. |
| Đại | (cười) Anh phải ghi. Hồi Hana anh không biết — em vất vả. Lần này anh chuẩn bị kỹ. |

---

## Tình huống 12 — WeWork 23F · Thứ Năm 31/7 18:00, end-of-July reflection cả team

| Vai | Lời thoại |
|---|---|
| Đại | (whiteboard JP) <ruby>7月<rt>しちがつ</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り:<br>- <ruby>採用<rt>さいよう</rt></ruby><ruby>2名<rt>にめい</rt></ruby>(<ruby>田中<rt>たなか</rt></ruby>+<ruby>桜<rt>さくら</rt></ruby>)→ <ruby>5名<rt>ごめい</rt></ruby><ruby>体制<rt>たいせい</rt></ruby><br>- Burn rate ¥1.6M → ¥3M、ランウェイ<ruby>39<rt>さんじゅうきゅう</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><br>- v2.0 launch <ruby>来週<rt>らいしゅう</rt></ruby>(8/1)<br>- マイは<ruby>5ヶ月<rt>ごかげつ</rt></ruby>、<ruby>順調<rt>じゅんちょう</rt></ruby><br>- ハナは<ruby>35ヶ月<rt>さんじゅうごかげつ</rt></ruby>、8/5に<ruby>3歳<rt>さんさい</rt></ruby><br>*(Reflect tháng 7: hire 2 → 5 người; burn ¥3M runway 39 tháng; v2.0 launch tuần sau; Mai 5 tháng OK; Hana 35 tháng, 5/8 lên 3 tuổi.)* |
| Tuấn | (VN) Tanaka chỉ 1 tuần đã ship 1 PR refactor caching layer — nhanh hơn 30%. Sakura design 3 màn hình tutorial onboarding KR. |
| Aiko | <ruby>桜<rt>さくら</rt></ruby>ちゃんは<ruby>未来<rt>みらい</rt></ruby>のHead of Designね!<br>*(Sakura-chan là Head of Design tương lai luôn!)* |
| Tanaka | (JP) <ruby>1週間<rt>いっしゅうかん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いてみて、Hizashiのコードベースの<ruby>質<rt>しつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>高<rt>たか</rt></ruby>いです。トゥアンさんの<ruby>設計<rt>せっけい</rt></ruby>が<ruby>素晴<rt>すば</rt></ruby>らしい。<br>*(Làm 1 tuần, chất lượng codebase Hizashi cao thật. Thiết kế của Tuấn-san tuyệt vời.)* |
| Sakura | <ruby>毎日<rt>まいにち</rt></ruby>が<ruby>学<rt>まな</rt></ruby>びです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます!<br>*(Mỗi ngày đều là học hỏi. Thật cảm ơn ạ!)* |
| Đại | <ruby>8月<rt>はちがつ</rt></ruby>の<ruby>予定<rt>よてい</rt></ruby>:<br>- 8/1 v2.0 launch<br>- 8/5 ハナ3<ruby>歳<rt>さい</rt></ruby><ruby>誕生日<rt>たんじょうび</rt></ruby><br>- 8/15 Series A pitch deck <ruby>最終版<rt>さいしゅうばん</rt></ruby> + <ruby>初<rt>はじ</rt></ruby>めての投資家メール<br>- 8/25 マイ<ruby>6ヶ月<rt>ろくかげつ</rt></ruby><ruby>検診<rt>けんしん</rt></ruby><br>*(Kế hoạch tháng 8: 4 mốc.)* |

---

## Tình huống 13 — Apt Senri-chuo · 22:00, Đại + Mai bàn sinh nhật 3 tuổi Hana (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Mai | (nằm trên giường, xoa bụng) Anh ơi! 5 tháng rồi mà thai vẫn khoẻ. Đông đá nhiều lắm. Em hết nghén rồi. |
| Đại | Tốt rồi em. Tháng sau là 6 tháng — vào tam cá nguyệt 3. Em tránh căng thẳng nhé. |
| Mai | Anh ơi, Hana sắp 3 tuổi rồi. Mình chuẩn bị tiệc gì cho con? |
| Đại | Anh đề xuất 4 phần:<br>1. Sáng 5/8 — bánh kem ở nhà với bố mẹ<br>2. Trưa — đi công viên Senri-chuo với Tony + Yumi từ Aichi xuống<br>3. Chiều — playdate với 5 bạn nhà trẻ ở apt<br>4. Tối — Zoom với ông bà ngoại Hà Nội + ông bà nội Cầu Giấy hát happy birthday |
| Mai | Hoàn hảo anh. Em làm pizza mini cho 5 bé + bánh kem Doraemon (Hana mê Doraemon lắm). |
| Đại | Em ơi — anh nhớ hồi Hana mới đẻ, em nằm viện 4 ngày. Anh ngồi WeWork không làm được gì. |
| Mai | (cười) Anh kể em nghe rồi mà. 4 năm trước. Giờ anh đã làm CEO, có 4 cofounder + 2 nhân viên. Trưởng thành lắm. |
| Đại | Hana 3 tuổi — Đông sắp ra — gia đình mình đang lớn dần. Hạnh phúc thật em à. |
| Mai | (nắm tay Đại) Mai sáng anh đưa Hana đi nhà trẻ nhé? Em hơi mệt. |
| Đại | Vâng em. Anh trực 4 ngày/tuần — lời hứa của anh từ Day 1 full-time. |
| Mai | Cảm ơn anh. Em yêu anh. |
| Đại | Anh yêu em + Hana + Đông. |

---

## Đọng lại chương 4

Đại lần đầu tiên đứng vai trò người tuyển dụng. 2 hire: Tanaka senior backend ¥9M base + RSU 0.5% (ex-Mercari, cohort cũ của Tuấn) + Sakura UI junior ¥4.5M new grad (ĐH Kobe, Adobe Award). Mẫu câu mở phỏng vấn `ようこそHizashiへ!お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます`. Hỏi background `〜を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか`. Offer salary chi tiết RSU vest/cliff. Đàm phán pha loãng `Series A で20%<ruby>希薄化<rt>きはくか</rt></ruby>`. Offer letter keigo `ご<ruby>返信<rt>へんしん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです`. Day 1 onboarding 5 người all-hands. Xin về sớm dự lớp tiền sản `<ruby>早退<rt>そうたい</rt></ruby>させてください` — học massage tầng sinh môn từ tuần 34. Đêm bàn tiệc 3 tuổi Hana với Mai.

> Từ vựng & mẫu câu chương này: <ruby>採用<rt>さいよう</rt></ruby>・<ruby>新卒<rt>しんそつ</rt></ruby>・<ruby>面談<rt>めんだん</rt></ruby>・<ruby>給与条件<rt>きゅうよじょうけん</rt></ruby>・RSU・<ruby>希薄化<rt>きはくか</rt></ruby>・<ruby>承諾<rt>しょうだく</rt></ruby>・<ruby>正式<rt>せいしき</rt></ruby>オファー・<ruby>勤務形態<rt>きんむけいたい</rt></ruby>・<ruby>入社日<rt>にゅうしゃび</rt></ruby>・<ruby>社会保険<rt>しゃかいほけん</rt></ruby>・オンボーディング・<ruby>早退<rt>そうたい</rt></ruby>・<ruby>出産前教室<rt>しゅっさんまえきょうしつ</rt></ruby>・<ruby>会陰<rt>えいん</rt></ruby><ruby>マッサージ<rt>マッサージ</rt></ruby>・<ruby>会陰<rt>えいん</rt></ruby><ruby>裂傷<rt>れっしょう</rt></ruby>・<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り・ご<ruby>返信<rt>へんしん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです・お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます

## Bí quyết chương

- **Phỏng vấn mở đầu keigo**: `ようこそ〜へ!<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます` — đứng dậy bắt tay đón
- **Hỏi background lịch sự**: `〜を<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか` (lưu ý 伺う = khiêm nhường)
- **Offer salary chi tiết**: base + RSU (% + vest + cliff) + bonus + workplace + start date — không được mơ hồ
- **Đàm phán RSU pha loãng**: VC sẽ vặn, founder phải prepare tính toán post-Series A và post-Series B
- **Offer letter chính thức**: subject 【<ruby>正式<rt>せいしき</rt></ruby>オファー】 + danh sách điều kiện + deadline phản hồi + 何卒よろしくお願い申し上げます
- **Mô hình hire startup Nhật**: 1 senior từ network cohort cofounder + 1 new grad từ pipeline mentor Aiko — cân bằng kinh nghiệm và năng lượng trẻ
- **Burn rate jump 88% nhưng runway vẫn 39 tháng**: lý do justify hire = chuẩn DD VC
- **Chồng tham gia lớp tiền sản từ tuần 34**: massage tầng sinh môn giảm 30% nguy cơ rách — kiến thức thực tế chỉ học khi đi cùng
- **Xin về sớm bằng keigo**: `〜<ruby>早退<rt>そうたい</rt></ruby>させてください` + lý do gia đình — team Nhật hiện đại 100% ủng hộ

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 越し | こし | VIỆT | đến (kính ngữ) |
| 規模 | きぼ | QUY MÔ | quy mô |
| 影響力 | えいきょうりょく | ẢNH HƯỞNG LỰC | sức ảnh hưởng |
| 独立系 | どくりつけい | ĐỘC LẬP HỆ | độc lập |
| 経験 | けいけん | KINH NGHIỆM | trải nghiệm |
| 現状 | げんじょう | HIỆN TRẠNG | tình hình hiện tại |
| 有料 | ゆうりょう | HỮU LIỆU | trả phí |
| 開始 | かいし | KHAI THỦY | bắt đầu |
| 面談 | めんだん | DIỆN ĐÀM | phỏng vấn |
| 技術 | ぎじゅつ | KỸ THUẬT | công nghệ |
| 選定 | せんてい | TUYỂN ĐỊNH | lựa chọn |
| 洗練 | せんれん | TẨY LUYỆN | tinh tế |
| 賢い | かしこい | HIỀN | khôn ngoan |
| 責任者 | せきにんしゃ | TRÁCH NHIỆM GIẢ | người phụ trách |
| 給与条件 | きゅうよじょうけん | CẤP DỮ ĐIỀU KIỆN | điều kiện lương |
| 年収 | ねんしゅう | NIÊN THU | thu nhập năm |
| 希薄化 | きはくか | HY BẠC HOÁ | pha loãng |
| 追加 | ついか | TRUY GIA | thêm vào |
| 透明 | とうめい | THẤU MINH | minh bạch |
| 計算 | けいさん | KẾ TOÁN | tính toán |
| 承諾 | しょうだく | THỪA NHẬN | đồng ý, chấp nhận |
| 卒業制作 | そつぎょうせいさく | TỐT NGHIỆP CHẾ TÁC | đồ án tốt nghiệp |
| 難民 | なんみん | NẠN DÂN | người tị nạn |
| 受賞 | じゅしょう | THỌ THƯỞNG | nhận giải |
| 応募 | おうぼ | ỨNG MỘ | ứng tuyển |
| 展開中 | てんかいちゅう | TRIỂN KHAI TRUNG | đang triển khai |
| 担当 | たんとう | ĐẢM ĐƯƠNG | phụ trách |
| 大歓迎 | だいかんげい | ĐẠI HOAN NGHÊNH | vô cùng hoan nghênh |
| 標準 | ひょうじゅん | TIÊU CHUẨN | tiêu chuẩn |
| 行間 | ぎょうかん | HÀNG GIAN | line-height |
| 知識 | ちしき | TRI THỨC | kiến thức |
| 新卒 | しんそつ | TÂN TỐT | sinh viên mới ra trường |
| 給与 | きゅうよ | CẤP DỮ | lương |
| 社会保険 | しゃかいほけん | XÃ HỘI BẢO HIỂM | bảo hiểm xã hội |
| 余裕 | よゆう | DƯ DỤ | thoải mái, dư dả |
| 職位 | しょくい | CHỨC VỊ | chức vị |
| 勤務形態 | きんむけいたい | CẦN VỤ HÌNH THÁI | hình thức làm việc |
| 入社日 | にゅうしゃび | NHẬP XÃ NHẬT | ngày nhận việc |
| 返信 | へんしん | PHẢN TÍN | phản hồi |
| 早退 | そうたい | TẢO THOÁI | về sớm |
| 会陰 | えいん | HỘI ÂM | tầng sinh môn |
| 裂傷 | れっしょう | LIỆT THƯƠNG | rách |
| 確率 | かくりつ | XÁC SUẤT | xác suất |
| 振り返り | ふりかえり | CHẤN PHẢN | nhìn lại, tổng kết |
| 未来 | みらい | VỊ LAI | tương lai |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000005, 800000026, NULL, 'markdown_book', 'T5. Ra mắt Hizashi v2.0 đa ngôn ngữ (v2.0ローンチ)', '# Sách kỹ sư cầu nối & khởi nghiệp · T5. Ra mắt Hizashi v2.0 đa ngôn ngữ (v2.0ローンチ)

> **Mục tiêu nhân vật:** Đại 26 tuổi (8/2031), CEO Hizashi. Học mẫu hội thoại tiếng Nhật của founder ngày ra mắt sản phẩm đa khu vực: (1) chỉ huy team trong war room bằng kính ngữ vừa phải, (2) báo cáo số liệu live launch với khách hàng/đối tác (3) trả lời phỏng vấn báo chí tiếng Nhật, (4) bàn giao công việc với đồng nghiệp Nhật khi gấp, (5) chào hỏi PR/influencer Nhật qua LINE, (6) phát biểu trước team khi đạt cột mốc.

---

## Bối cảnh

8/2031, Osaka. Hizashi v2.0 ra mắt 1/8 — multi-language (KR+ZH+VN+JP+EN), 3 AWS regions (Tokyo+Seoul+Singapore). Team 5 người: Đại, Tuấn (CTO), Aiko (Design), Tanaka (BE engineer cũ Mercari), Sakura (i18n designer). Mai 22 tuần thai bé Đông, Hana sắp 3 tuổi. PR vòng 2: TechCrunch JP + Platum KR + 36Kr ZH. Chương này tập trung mẫu câu **chỉ huy bằng JP keigo trong launch day** + báo cáo số liệu + giao tiếp báo chí.

---

## Tình huống 1 — WeWork war room · 1/8/2031 9:00, mở đầu standup launch day

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>はv2.0ローンチの<ruby>当日<rt>とうじつ</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người chào buổi sáng. Hôm nay là ngày ra mắt v2.0. Mong các bạn giúp đỡ.)* |
| Tanaka | おはようございます。AWS Tokyo・Seoul・Singapore、<ruby>3<rt>さん</rt></ruby>リージョンとも<ruby>準備完了<rt>じゅんびかんりょう</rt></ruby>です。<br>*(Chào buổi sáng. AWS 3 region đã sẵn sàng.)* |
| Sakura | <ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>中国語<rt>ちゅうごくご</rt></ruby>のランディングページ、<ruby>本番<rt>ほんばん</rt></ruby><ruby>環境<rt>かんきょう</rt></ruby>にデプロイ<ruby>済<rt>ず</rt></ruby>みです。<br>*(Landing page KR và ZH đã deploy lên production.)* |
| Aiko | <ruby>韓国<rt>かんこく</rt></ruby>と<ruby>中国<rt>ちゅうごく</rt></ruby>のインフルエンサー<ruby>8名<rt>はちめい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby><ruby>10時<rt>じゅうじ</rt></ruby><ruby>同時<rt>どうじ</rt></ruby><ruby>投稿<rt>とうこう</rt></ruby>でスケジュール<ruby>確定<rt>かくてい</rt></ruby>しています。<br>*(8 influencer KR+ZH, đã chốt lịch đăng đồng loạt 10h hôm nay.)* |
| Tuấn | (VN) Anh em, T-1h. Cà phê thêm cho ai cần. |
| Đại | では、<ruby>10時<rt>じゅうじ</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>デプロイの<ruby>合図<rt>あいず</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>出<rt>だ</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy hiệu lệnh deploy production 10h tôi sẽ ra. Nhờ mọi người.)* |

---

## Tình huống 2 — War room · 9:55, hỏi lại khi chưa hiểu term Tanaka dùng

| Vai | Lời thoại |
|---|---|
| Tanaka | ダイさん、<ruby>念<rt>ねん</rt></ruby>のため、ローンチ<ruby>直後<rt>ちょくご</rt></ruby>は「カナリアデプロイ」で<ruby>10<rt>じゅっ</rt></ruby>%トラフィックから<ruby>始<rt>はじ</rt></ruby>めます。よろしいですか?<br>*(Để chắc, ngay sau launch ta dùng "canary deploy" bắt đầu từ 10% traffic. Được không?)* |
| Đại | すみません、「カナリアデプロイ」というのは、もう<ruby>一度<rt>いちど</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>していただけますか?<br>*(Xin lỗi, "canary deploy" ấy, anh giải thích lại giúp em được không?)* |
| Tanaka | はい。<ruby>一気<rt>いっき</rt></ruby>に<ruby>100<rt>ひゃく</rt></ruby>%<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>えるのではなく、まず<ruby>10<rt>じゅっ</rt></ruby>%のユーザーに<ruby>新<rt>あたら</rt></ruby>しいバージョンを<ruby>見<rt>み</rt></ruby>せて、<ruby>異常<rt>いじょう</rt></ruby>がなければ<ruby>段階的<rt>だんかいてき</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げていく<ruby>方法<rt>ほうほう</rt></ruby>です。<br>*(Không chuyển 100% ngay, mà cho 10% user thấy bản mới trước, nếu không bất thường thì nâng dần.)* |
| Đại | なるほど、よく<ruby>分<rt>わ</rt></ruby>かりました。それでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Ra vậy, em hiểu rồi. Cứ vậy nhờ anh.)* |
| Tanaka | <ruby>異常<rt>いじょう</rt></ruby>を<ruby>検知<rt>けんち</rt></ruby>したら、すぐ<ruby>共有<rt>きょうゆう</rt></ruby>いたします。<br>*(Phát hiện bất thường tôi sẽ chia sẻ ngay.)* |

---

## Tình huống 3 — War room · 10:00, Đại ra hiệu lệnh deploy

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>時間<rt>じかん</rt></ruby>です。<ruby>田中<rt>たなか</rt></ruby>さん、デプロイをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đến giờ rồi. Anh Tanaka, nhờ anh deploy.)* |
| Tanaka | <ruby>承知<rt>しょうち</rt></ruby>いたしました。デプロイ<ruby>開始<rt>かいし</rt></ruby>します。…<ruby>本番<rt>ほんばん</rt></ruby>、ライブです。<br>*(Vâng. Bắt đầu deploy... Production đã live.)* |
| Sakura | <ruby>韓国語<rt>かんこくご</rt></ruby>UI、<ruby>表示<rt>ひょうじ</rt></ruby>OKです!<br>*(UI KR hiển thị OK!)* |
| Aiko | インフルエンサーの<ruby>投稿<rt>とうこう</rt></ruby>、<ruby>韓国<rt>かんこく</rt></ruby><ruby>側<rt>がわ</rt></ruby>が<ruby>5本<rt>ごほん</rt></ruby><ruby>同時<rt>どうじ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がりました!<br>*(Influencer KR đã post đồng loạt 5 bài!)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、お<ruby>疲<rt>つか</rt></ruby>れさまです。これからの<ruby>1時間<rt>いちじかん</rt></ruby>がメトリクスの<ruby>勝負<rt>しょうぶ</rt></ruby>です。<br>*(Mọi người cảm ơn nhé. 1 tiếng tới là cuộc chiến metric.)* |

---

## Tình huống 4 — War room · 10:45, báo cáo số liệu giờ đầu

| Vai | Lời thoại |
|---|---|
| Tanaka | ダイさん、<ruby>1時間目<rt>いちじかんめ</rt></ruby>の<ruby>速報<rt>そくほう</rt></ruby>です。<br>*(Đại-san, báo cáo nhanh giờ đầu.)* |
| Tanaka | <ruby>韓国<rt>かんこく</rt></ruby>リージョン、<ruby>1時間<rt>いちじかん</rt></ruby>で<ruby>850<rt>はっぴゃくごじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>のサインアップ。<ruby>中国<rt>ちゅうごく</rt></ruby>リージョン<ruby>620<rt>ろっぴゃくにじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>、<ruby>日本<rt>にほん</rt></ruby>とベトナムで<ruby>1,200<rt>せんにひゃく</rt></ruby><ruby>件<rt>けん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>2,670<rt>にせんろっぴゃくななじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>です。<br>*(KR 850 sign-up/h, ZH 620, JP+VN 1,200. Tổng 2,670.)* |
| Đại | <ruby>2,670<rt>にせんろっぴゃくななじゅう</rt></ruby>?v1.0ローンチの<ruby>4倍<rt>よんばい</rt></ruby>です!<br>*(2,670? Gấp 4 lần launch v1.0!)* |
| Tanaka | サーバーCPU<ruby>75<rt>ななじゅうご</rt></ruby>%、オートスケールが<ruby>稼働中<rt>かどうちゅう</rt></ruby>です。<ruby>遅延<rt>ちえん</rt></ruby>p95は<ruby>480<rt>よんひゃくはちじゅう</rt></ruby>ミリ<ruby>秒<rt>びょう</rt></ruby>、<ruby>許容範囲内<rt>きょようはんいない</rt></ruby>です。<br>*(CPU 75%, auto-scale chạy. Latency p95 480ms, trong ngưỡng cho phép.)* |
| Đại | <ruby>素晴<rt>すば</rt></ruby>らしい!みなさん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Tuyệt vời! Mọi người, cảm ơn thật sự.)* |

---

## Tình huống 5 — Slack #hizashi-press · 11:30, LINE cảm ơn phóng viên TechCrunch JP

*Đại nhắn LINE riêng cho Mori-san phóng viên TechCrunch JP đã viết bài launch.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>森<rt>もり</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はv2.0の<ruby>記事<rt>きじ</rt></ruby>を<ruby>掲載<rt>けいさい</rt></ruby>していただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました。<br>*(Mori-san, hôm nay cảm ơn anh đã đăng bài về v2.0.)* |
| Mori-san | ダイさん、こちらこそ!<ruby>多言語展開<rt>たげんごてんかい</rt></ruby>、<ruby>面白<rt>おもしろ</rt></ruby>いストーリーでした。<ruby>1時間目<rt>いちじかんめ</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>、いかがでしたか?<br>*(Đại-san, không có gì! Câu chuyện đa ngôn ngữ thú vị. Số liệu giờ đầu thế nào?)* |
| Đại | <ruby>2,670<rt>にせんろっぴゃくななじゅう</rt></ruby><ruby>件<rt>けん</rt></ruby>のサインアップで、v1.0の<ruby>4倍<rt>よんばい</rt></ruby>でした。<br>*(2,670 sign-up, gấp 4 lần v1.0.)* |
| Mori-san | すごいですね!<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>1週間<rt>いっしゅうかん</rt></ruby>レビュー<ruby>記事<rt>きじ</rt></ruby>のために<ruby>追加取材<rt>ついかしゅざい</rt></ruby>させていただけますか?<br>*(Tuyệt! Tuần sau cho tôi phỏng vấn thêm cho bài review 1 tuần được không?)* |
| Đại | <ruby>喜<rt>よろこ</rt></ruby>んで!<ruby>来週<rt>らいしゅう</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby>はいかがでしょうか?<br>*(Hân hạnh! Thứ Hai tuần sau 14h được không ạ?)* |
| Mori-san | <ruby>了解<rt>りょうかい</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(OK, nhờ anh.)* |

---

## Tình huống 6 — WeWork bếp nhỏ · 12:30, trưa Đại + Tuấn xả áp lực

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Em ơi, ăn tạm cái burger này đi. Em không ăn từ sáng. |
| Đại | (VN) Anh ơi, em hơi run tay. Tự nhiên thấy không thật. |
| Tuấn | (VN) Thật chứ. 2,670 sign-up/h là số liệu thật. Em hít thở đi. |
| Đại | (VN) Em sợ nhất cái lúc Stripe thanh toán Won KR còn chưa xong. Lỡ user KR thanh toán không được thì sao? |
| Tuấn | (VN) Đã có phương án dự phòng — fallback sang Stripe USD, user chọn được. Sakura đã viết câu thông báo tiếng Hàn cho user rồi. |
| Đại | (VN) Tốt. Cảm ơn anh. Em chiều quay lại JP mode. |
| Tuấn | (VN) Ừ. Lát họp 14h em vào lead lại nhé. Anh hỗ trợ phía sau. |

---

## Tình huống 7 — War room · 14:00, debrief vấn đề + giao việc keigo

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>午前中<rt>ごぜんちゅう</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>3<rt>みっ</rt></ruby>つ<ruby>課題<rt>かだい</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>させてください。<br>*(Mọi người sáng nay cảm ơn nhé. Cho phép tôi chia sẻ 3 vấn đề.)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、iOS<ruby>16<rt>じゅうろく</rt></ruby>で<ruby>韓国語<rt>かんこくご</rt></ruby>の<ruby>表示<rt>ひょうじ</rt></ruby>が<ruby>崩<rt>くず</rt></ruby>れる<ruby>不具合<rt>ふぐあい</rt></ruby>。<ruby>桜<rt>さくら</rt></ruby>さん、<ruby>対応<rt>たいおう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Thứ nhất, lỗi hiển thị tiếng Hàn vỡ trên iOS 16. Sakura-san xử lý giúp được không?)* |
| Sakura | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今日中<rt>きょうじゅう</rt></ruby>にホットフィックスを<ruby>出<rt>だ</rt></ruby>します。<br>*(Vâng. Trong hôm nay em sẽ ra hotfix.)* |
| Đại | <ruby>2<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、Stripeの<ruby>韓国<rt>かんこく</rt></ruby>ウォン<ruby>決済<rt>けっさい</rt></ruby>がまだ<ruby>有効<rt>ゆうこう</rt></ruby>になっていません。<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>明日<rt>あす</rt></ruby>までに<ruby>対応<rt>たいおう</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Thứ hai, Stripe thanh toán Won KR chưa kích hoạt. Tanaka-san, đến mai xử lý được không?)* |
| Tanaka | <ruby>明日<rt>あす</rt></ruby><ruby>15時<rt>じゅうごじ</rt></ruby>までには<ruby>確実<rt>かくじつ</rt></ruby>にデプロイいたします。<br>*(Mai chậm nhất 15h chắc chắn deploy.)* |
| Đại | <ruby>3<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>中国語<rt>ちゅうごくご</rt></ruby>の<ruby>簡体<rt>かんたい</rt></ruby>・<ruby>繁体<rt>はんたい</rt></ruby>トグルが<ruby>未実装<rt>みじっそう</rt></ruby>です。これはv2.1で<ruby>対応<rt>たいおう</rt></ruby>でよろしいですか?<br>*(Thứ ba, toggle giản thể/phồn thể tiếng Trung chưa làm. Để v2.1 được không?)* |
| Aiko | はい、ユーザーからの<ruby>声<rt>こえ</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めてから<ruby>判断<rt>はんだん</rt></ruby>しましょう。<br>*(Vâng, gom phản hồi user rồi quyết định.)* |

---

## Tình huống 8 — Phỏng vấn online · 16:00, trả lời phóng viên Nikkei XTECH

| Vai | Lời thoại |
|---|---|
| Phóng viên Itou | <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<ruby>日経<rt>にっけい</rt></ruby>クロステックの<ruby>伊藤<rt>いとう</rt></ruby>です。<br>*(Hôm nay cảm ơn anh dành thời gian. Tôi là Itou, Nikkei XTECH.)* |
| Đại | <ruby>伊藤<rt>いとう</rt></ruby>さん、こちらこそありがとうございます。グエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Itou-san, em cũng cảm ơn. Tôi là Nguyễn Đại.)* |
| Itou | <ruby>多言語展開<rt>たげんごてんかい</rt></ruby>に<ruby>踏<rt>ふ</rt></ruby>み<ruby>切<rt>き</rt></ruby>った<ruby>理由<rt>りゆう</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Cho tôi biết lý do quyết định mở đa ngôn ngữ.)* |
| Đại | はい。<ruby>日本語学習者<rt>にほんごがくしゅうしゃ</rt></ruby>は<ruby>世界<rt>せかい</rt></ruby>に<ruby>500万人<rt>ごひゃくまんにん</rt></ruby>いますが、<ruby>母国語<rt>ぼこくご</rt></ruby>で<ruby>学<rt>まな</rt></ruby>べるアプリは<ruby>少<rt>すく</rt></ruby>ないんです。<ruby>韓国<rt>かんこく</rt></ruby>と<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>需要<rt>じゅよう</rt></ruby>が<ruby>特<rt>とく</rt></ruby>に<ruby>大<rt>おお</rt></ruby>きいと<ruby>判断<rt>はんだん</rt></ruby>しました。<br>*(Vâng. Trên thế giới có 5 triệu người học JP, nhưng ít app học bằng tiếng mẹ đẻ. Tôi đánh giá nhu cầu KR và ZH đặc biệt lớn.)* |
| Itou | <ruby>競合<rt>きょうごう</rt></ruby>であるDuolingoとの<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なに</rt></ruby>でしょうか?<br>*(Khác Duolingo ở điểm nào?)* |
| Đại | Duolingoは<ruby>汎用的<rt>はんようてき</rt></ruby>ですが、Hizashiは<ruby>日本語<rt>にほんご</rt></ruby><ruby>特化<rt>とっか</rt></ruby>で、<ruby>漢字<rt>かんじ</rt></ruby>・<ruby>敬語<rt>けいご</rt></ruby>・ビジネス<ruby>会話<rt>かいわ</rt></ruby>まで<ruby>深<rt>ふか</rt></ruby>く<ruby>扱<rt>あつか</rt></ruby>います。これが<ruby>差別化<rt>さべつか</rt></ruby>ポイントです。<br>*(Duolingo phổ thông, còn Hizashi chuyên JP, xử lý sâu kanji-keigo-hội thoại business. Đó là điểm khác biệt.)* |
| Itou | なるほど。<ruby>記事<rt>きじ</rt></ruby>は<ruby>明日<rt>あす</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>公開<rt>こうかい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Ra vậy. Bài viết sẽ đăng sáng mai.)* |
| Đại | ありがとうございます。<ruby>楽<rt>たの</rt></ruby>しみにしております。<br>*(Cảm ơn anh. Em rất mong chờ.)* |

---

## Tình huống 9 — Văn phòng · 17:30, Đại cảm ơn Tanaka — sempai làm mẫu keigo

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby>さん、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>よろしいですか?<br>*(Tanaka-san, anh có chút thời gian được không?)* |
| Tanaka | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>運用対応<rt>うんようたいおう</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かりました。メルカリ<ruby>時代<rt>じだい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>が<ruby>活<rt>い</rt></ruby>きていますね。<br>*(Hôm nay anh xử lý vận hành thực sự giúp em rất nhiều. Kinh nghiệm thời Mercari của anh phát huy nhỉ.)* |
| Tanaka | いえいえ、<ruby>当然<rt>とうぜん</rt></ruby>のことです。それより、ダイさんの<ruby>判断<rt>はんだん</rt></ruby>が<ruby>速<rt>はや</rt></ruby>かったので<ruby>動<rt>うご</rt></ruby>きやすかったです。<br>*(Không có gì, đương nhiên thôi. Hơn nữa Đại-san ra quyết định nhanh nên tôi dễ làm việc.)* |
| Đại | <ruby>今後<rt>こんご</rt></ruby>、<ruby>運用面<rt>うんようめん</rt></ruby>でアドバイスをいただきたいのですが、<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜<rt>きんよう</rt></ruby>に<ruby>1on1<rt>ワンオンワン</rt></ruby>を<ruby>設定<rt>せってい</rt></ruby>させていただいてもよろしいでしょうか?<br>*(Tôi muốn xin ý kiến anh về phía vận hành về sau, đặt 1on1 thứ Sáu hàng tuần được không?)* |
| Tanaka | もちろんです。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tất nhiên. Nhờ Đại-san.)* |

---

## Tình huống 10 — Online · 19:00, gọi Mai về sớm

| Vai | Lời thoại |
|---|---|
| Đại | (VN, video call) Em ơi! Em với Hana sao rồi? |
| Mai | (VN) Hana đang ăn tối, em mới đi khám 22w về. Bé Đông khoẻ. Anh thì sao? |
| Đại | (VN) Launch ngon em ạ. 2670 sign-up giờ đầu, gấp 4 lần v1.0. Báo Nikkei phỏng vấn xong. |
| Mai | (VN) Trời ơi! Vợ tự hào quá. Anh ăn chưa? |
| Đại | (VN) Trưa Tuấn nhét cho em cái burger. Em về 22h, không kịp ăn tối với hai mẹ con. |
| Mai | (VN) Em giữ phần cơm cho. Anh nhớ uống nước. Đừng để dehydrate như launch v1.0. |
| Đại | (VN) Nhớ rồi. Cảm ơn em. Bảo Hana là bố yêu nhé. |
| Mai | (VN) Hana ơi! Bố nói yêu con! |
| Hana | (VN, xa máy) Yêu bố! Bố Hizashi! |

---

## Tình huống 11 — LINE · 21:00, cảm ơn 8 influencer KR+ZH

*Đại gửi LINE chung cho group 8 influencer + Aiko + Sakura.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さま、<ruby>本日<rt>ほんじつ</rt></ruby>はHizashi v2.0の<ruby>投稿<rt>とうこう</rt></ruby>を<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Mọi người, hôm nay thực sự cảm ơn đã đăng bài Hizashi v2.0.)* |
| Đại | <ruby>韓国<rt>かんこく</rt></ruby>から<ruby>1,847<rt>せんはっぴゃくよんじゅうなな</rt></ruby><ruby>件<rt>けん</rt></ruby>、<ruby>中国<rt>ちゅうごく</rt></ruby>から<ruby>1,234<rt>せんにひゃくさんじゅうよん</rt></ruby><ruby>件<rt>けん</rt></ruby>のサインアップをいただきました。<ruby>皆<rt>みな</rt></ruby>さまの<ruby>力<rt>ちから</rt></ruby>のおかげです。<br>*(KR 1,847, ZH 1,234 sign-up. Nhờ sức của mọi người.)* |
| Influencer Min-jee (KR) | (KR→JP) ダイさん!こちらこそありがとうございます。コメント<ruby>欄<rt>らん</rt></ruby>でファンが<ruby>大盛<rt>おおも</rt></ruby>り<ruby>上<rt>あ</rt></ruby>がりでした!<br>*(Đại-san, tôi cũng cảm ơn. Fan trên comment hào hứng lắm!)* |
| Influencer Wei (ZH) | (ZH→JP) <ruby>来月<rt>らいげつ</rt></ruby>もコラボ<ruby>続<rt>つづ</rt></ruby>けたいです!<br>*(Tháng sau muốn collab tiếp!)* |
| Đại | ぜひ!<ruby>来週<rt>らいしゅう</rt></ruby>、<ruby>個別<rt>こべつ</rt></ruby>にご<ruby>相談<rt>そうだん</rt></ruby>させてください。<br>*(Rất muốn! Tuần sau cho tôi trao đổi riêng từng người.)* |

---

## Tình huống 12 — Office · 22:30, cảm ơn team trước khi về

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>少<rt>すこ</rt></ruby>しだけ<ruby>話<rt>はな</rt></ruby>させてください。<br>*(Mọi người hôm nay thực sự vất vả rồi. Cho phép tôi nói một chút.)* |
| Đại | <ruby>3年前<rt>さんねんまえ</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby><ruby>研<rt>けん</rt></ruby>で<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>書<rt>か</rt></ruby>いていた<ruby>私<rt>わたし</rt></ruby>が、<ruby>今日<rt>きょう</rt></ruby>このようなチームと<ruby>多言語<rt>たげんご</rt></ruby><ruby>製品<rt>せいひん</rt></ruby>をローンチできたこと、<ruby>夢<rt>ゆめ</rt></ruby>のようです。<br>*(3 năm trước tôi viết luận văn ở Inoue lab, hôm nay được launch sản phẩm đa ngôn ngữ cùng team như thế này, như giấc mơ.)* |
| Đại | <ruby>桜<rt>さくら</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>愛子<rt>あいこ</rt></ruby>さん、トゥアンさん、<ruby>皆<rt>みな</rt></ruby>さんがいなければ<ruby>今日<rt>きょう</rt></ruby>はありませんでした。ありがとうございます。<br>*(Sakura-san, Tanaka-san, Aiko-san, Tuấn-san, không có mọi người thì không có hôm nay. Cảm ơn.)* |
| Aiko | (mắt rưng rưng) ダイさん…こちらこそです。<br>*(Đại-san... em cũng cảm ơn.)* |
| Tanaka | お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>光栄<rt>こうえい</rt></ruby>です。<br>*(Được giúp ích là vinh dự.)* |
| Sakura | <ruby>来週<rt>らいしゅう</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Tuần sau cũng nhờ ạ!)* |
| Đại | みなさん、ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<ruby>月曜<rt>げつよう</rt></ruby>また<ruby>会<rt>あ</rt></ruby>いましょう。<br>*(Mọi người nghỉ ngơi nhé. Thứ Hai gặp lại.)* |

---

## Tình huống 13 — Tiệc nhỏ sinh nhật Hana · 5/8/2031 18:00 nhà Senri-chuo

*Tony+Yumi từ Aichi xuống. Doraemon cake. Hana đúng 3 tuổi.*

| Vai | Lời thoại |
|---|---|
| Tony | (Osaka-ben, đưa cake) ハナちゃん!お<ruby>誕生日<rt>たんじょうび</rt></ruby>おめでとうやで!<ruby>3歳<rt>さんさい</rt></ruby>になったんやな!<br>*(Hana, chúc mừng sinh nhật nhé! 3 tuổi rồi đó!)* |
| Hana | おじいちゃん!ありがとう!<br>*(Ông ơi! Cảm ơn ông!)* |
| Yumi | (đưa hộp quà) ハナちゃん、これドラえもんの<ruby>絵本<rt>えほん</rt></ruby>。<br>*(Hana, đây là sách tranh Doraemon nhé.)* |
| Hana | わぁ!ありがとうおばあちゃん!<br>*(Wow! Cảm ơn bà!)* |
| Mai | (VN, bụng to bế Hana) Hana ơi, con ước gì nào? |
| Hana | (suy nghĩ) Hana ước... em Đông khoẻ! Em Đông ra sớm! |
| Đại | (VN, ôm Hana + Mai) Con biết quan tâm em rồi. Bố mẹ tự hào. |
| Tony | (Osaka-ben) ハナはもうすぐお<ruby>姉<rt>ねえ</rt></ruby>ちゃんやな!えらいで!<br>*(Hana sắp làm chị rồi nhỉ! Giỏi lắm!)* |
| Hana | (cười) <ruby>私<rt>わたし</rt></ruby>、お<ruby>姉<rt>ねえ</rt></ruby>ちゃんになる!<br>*(Con sẽ làm chị!)* |

---

## Tình huống 14 — Cuối tuần 1 v2.0 standup · 8/8 sáng

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>1週間<rt>いっしゅうかん</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りです。<br>*(Mọi người chào buổi sáng. Tổng kết 1 tuần.)* |
| Đại | <ruby>総<rt>そう</rt></ruby>サインアップ<ruby>8,200<rt>はっせんにひゃく</rt></ruby><ruby>件<rt>けん</rt></ruby>、v1.0<ruby>初週<rt>しょしゅう</rt></ruby>の<ruby>3.2倍<rt>さんてんにばい</rt></ruby>。<ruby>有料転換<rt>ゆうりょうてんかん</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby>%、MRRが<ruby>250万<rt>にひゃくごじゅうまん</rt></ruby><ruby>円<rt>えん</rt></ruby>から<ruby>427万<rt>よんひゃくにじゅうななまん</rt></ruby><ruby>円<rt>えん</rt></ruby>へ<ruby>上昇<rt>じょうしょう</rt></ruby>しました。<br>*(Tổng sign-up 8,200, gấp 3.2 lần tuần đầu v1.0. Chuyển đổi trả phí 22%, MRR từ 2.5 triệu lên 4.27 triệu yên.)* |
| Tuấn | (JP) <ruby>韓国市場<rt>かんこくしじょう</rt></ruby>が<ruby>期待<rt>きたい</rt></ruby>を<ruby>50<rt>ごじゅっ</rt></ruby>%<ruby>上回<rt>うわまわ</rt></ruby>りました!<br>*(Thị trường Hàn vượt kỳ vọng 50%!)* |
| Aiko | <ruby>桜<rt>さくら</rt></ruby>さんの<ruby>韓国語<rt>かんこくご</rt></ruby>UIワーク、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素晴<rt>すば</rt></ruby>らしかったです!<br>*(Phần UI tiếng Hàn của Sakura-san thật sự tuyệt vời!)* |
| Sakura | (đỏ mặt) <ruby>恐縮<rt>きょうしゅく</rt></ruby>です…<br>*(Em ngại quá...)* |
| Đại | <ruby>来週<rt>らいしゅう</rt></ruby>からSeries A<ruby>調達<rt>ちょうたつ</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。ピッチデックを<ruby>更新<rt>こうしん</rt></ruby>します。<br>*(Tuần sau bắt đầu chuẩn bị gọi vốn Series A. Sẽ cập nhật pitch deck.)* |

---

## Tình huống 15 — Cuối tháng 8 standup · 31/8

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>8月<rt>はちがつ</rt></ruby>の<ruby>最終数字<rt>さいしゅうすうじ</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>総<rt>そう</rt></ruby>ユーザー<ruby>3万500人<rt>さんまんごひゃくにん</rt></ruby>、<ruby>有料<rt>ゆうりょう</rt></ruby><ruby>5,100人<rt>ごせんひゃくにん</rt></ruby>、MRR <ruby>500万円<rt>ごひゃくまんえん</rt></ruby>。<ruby>第3<rt>だいさん</rt></ruby><ruby>四半期<rt>しはんき</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>を<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>早<rt>はや</rt></ruby>く<ruby>達成<rt>たっせい</rt></ruby>です。<br>*(Số cuối tháng 8: tổng 30,500 user, trả phí 5,100, MRR 5 triệu yên. Đạt mục tiêu Q3 sớm 1 tháng.)* |
| Tuấn | (JP) キャッシュフロー、<ruby>月次<rt>げつじ</rt></ruby><ruby>純増<rt>じゅんぞう</rt></ruby><ruby>200万円<rt>にひゃくまんえん</rt></ruby>です。<ruby>黒字<rt>くろじ</rt></ruby>です!<br>*(Cash flow tăng ròng 2 triệu/tháng. Có lãi!)* |
| Aiko | <ruby>黒字化<rt>くろじか</rt></ruby>!<ruby>夢<rt>ゆめ</rt></ruby>みたいですね。<br>*(Có lãi! Như giấc mơ.)* |
| Đại | Series Aピッチデックも<ruby>仕上<rt>しあ</rt></ruby>がりました。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>安里<rt>あんり</rt></ruby>さんに<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Pitch deck Series A cũng xong. Tuần sau liên lạc Anri-san.)* |

---

## Tình huống 16 — Cảnh tiếng Việt · 31/8 23:00, Đại nhắn Tuấn qua Zalo

| Vai | Lời thoại |
|---|---|
| Đại | (Zalo) Anh ơi! Cuối tháng rồi. Em báo cáo bản VN cho anh nghe. |
| Đại | (Zalo) MRR 5 triệu yên đạt rồi. Net positive 2 triệu/tháng. Series A bắt đầu tuần sau. |
| Tuấn | (Zalo) Em ơi! Anh ngồi đọc lại 3 năm trước em mới nhập học Osaka. Bao xa rồi. |
| Đại | (Zalo) Anh ơi em vẫn nhớ buổi đầu Tony chở em từ sân bay Kansai. Em không biết tự đi vé tàu. |
| Tuấn | (Zalo) Bây giờ em pitch Nikkei bằng JP keigo. Vợ Mai, con Hana, em Đông sắp ra. Cuộc đời mình đúng câu chuyện. |
| Đại | (Zalo) Anh ơi cảm ơn anh đã ở lại với em từ đầu. Em không có anh thì không có Hizashi. |
| Tuấn | (Zalo) Mình anh em mà. Mai mình tiếp tục. Em ngủ ngon nhé. |
| Đại | (Zalo) Anh ngủ ngon. Mai 9h em đến văn phòng. |

---

## Đọng lại chương 5

Đại trải qua launch day Hizashi v2.0 — chỉ huy team Nhật bằng JP keigo từ standup mở đầu **「よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」**, hỏi lại khi không hiểu term kỹ thuật **「『カナリアデプロイ』というのは、もう一度ご説明いただけますか」**, giao việc bằng cấu trúc **「〜さん、〜をお<ruby>願<rt>ねが</rt></ruby>いできますか」**, báo cáo số liệu giờ đầu với độ chính xác **「2,670件のサインアップ」**, cảm ơn phóng viên TechCrunch JP qua LINE bằng **「<ruby>誠<rt>まこと</rt></ruby>にありがとうございました」**, trả lời phỏng vấn Nikkei về điểm khác biệt với Duolingo, và đặt 1on1 với sempai Tanaka bằng **「〜していただいてもよろしいでしょうか」**. Cuối tháng MRR ¥5M đạt mục tiêu Q3 sớm 4 tháng, Hizashi đã black ink (黒字化). Hana 3 tuổi tiệc Doraemon. Đại chia sẻ cảm xúc với cofounder Tuấn bằng tiếng Việt qua Zalo cuối ngày — 3 năm từ ngày Tony đón ở Kansai.

> Từ vựng & mẫu câu chương này: <ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします・〜というのは、もう一度ご説明いただけますか・〜をお<ruby>願<rt>ねが</rt></ruby>いできますか・<ruby>承知<rt>しょうち</rt></ruby>いたしました・<ruby>誠<rt>まこと</rt></ruby>にありがとうございました・カナリアデプロイ・<ruby>本番<rt>ほんばん</rt></ruby>デプロイ・サインアップ・<ruby>有料転換<rt>ゆうりょうてんかん</rt></ruby>・<ruby>遅延<rt>ちえん</rt></ruby>p95・オートスケール・ホットフィックス・<ruby>差別化<rt>さべつか</rt></ruby>ポイント・<ruby>黒字化<rt>くろじか</rt></ruby>・<ruby>第3<rt>だいさん</rt></ruby><ruby>四半期<rt>しはんき</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>・<ruby>1on1<rt>ワンオンワン</rt></ruby>を<ruby>設定<rt>せってい</rt></ruby>させていただく・<ruby>恐縮<rt>きょうしゅく</rt></ruby>です・お<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>てて<ruby>光栄<rt>こうえい</rt></ruby>です

## Bí quyết chương

- **Launch day chỉ huy bằng JP keigo**: dùng 「お<ruby>願<rt>ねが</rt></ruby>いできますか / お<ruby>願<rt>ねが</rt></ruby>いいたします」 thay vì 「やって」 — sempai 35t+ Mercari ex như Tanaka phản ứng tốt với form lịch sự
- **Hỏi lại khi không hiểu**: 「〜というのは、もう一度ご説明いただけますか」 — founder trẻ không cần giả vờ biết, sempai sẽ tôn trọng hơn khi mình thừa nhận và hỏi lại
- **Báo cáo số liệu**: dùng số cụ thể có hậu tố 「<ruby>件<rt>けん</rt></ruby>・<ruby>名<rt>めい</rt></ruby>・<ruby>倍<rt>ばい</rt></ruby>」, tránh số "vô danh"
- **Phỏng vấn báo Nhật**: mở đầu 「<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます」, trả lời ngắn 2-3 câu mỗi câu hỏi, không dài dòng
- **Cảm xúc với cofounder VN**: chuyển sang tiếng Việt qua Zalo cuối ngày, không gánh keigo cả ngày trong cuộc sống cá nhân

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 当日 | とうじつ | ĐƯƠNG NHẬT | ngày hôm đó |
| 準備完了 | じゅんびかんりょう | CHUẨN BỊ HOÀN LIỄU | sẵn sàng |
| 本番環境 | ほんばんかんきょう | BẢN BẢN HOÀN CẢNH | môi trường production |
| 投稿 | とうこう | ĐẦU CẢO | đăng bài |
| 同時 | どうじ | ĐỒNG THỜI | đồng thời |
| 確定 | かくてい | XÁC ĐỊNH | xác định, chốt |
| 合図 | あいず | HỢP ĐỒ | hiệu lệnh |
| 念のため | ねんのため | NIỆM | để chắc chắn |
| 直後 | ちょくご | TRỰC HẬU | ngay sau |
| 段階的 | だんかいてき | ĐOẠN GIAI ĐÍCH | từng bước |
| 検知 | けんち | KIỂM TRI | phát hiện |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 表示 | ひょうじ | BIỂU THỊ | hiển thị |
| 勝負 | しょうぶ | THẮNG PHỤ | cuộc chiến, đua |
| 速報 | そくほう | TỐC BÁO | tin nhanh |
| 遅延 | ちえん | TRÌ DUYÊN | độ trễ |
| 許容範囲内 | きょようはんいない | HỨA DUNG PHẠM VI NỘI | trong giới hạn cho phép |
| 記事 | きじ | KÝ SỰ | bài báo |
| 掲載 | けいさい | YẾT TÁI | đăng tải |
| 誠に | まことに | THÀNH | thành tâm |
| 多言語展開 | たげんごてんかい | ĐA NGÔN NGỮ TRIỂN KHAI | mở rộng đa ngôn ngữ |
| 追加取材 | ついかしゅざい | TRUY GIA THỦ TÀI | phỏng vấn thêm |
| 喜んで | よろこんで | HỈ | hân hạnh |
| 課題 | かだい | KHOÁ ĐỀ | vấn đề |
| 不具合 | ふぐあい | BẤT CỤ HỢP | lỗi |
| 対応 | たいおう | ĐỐI ỨNG | xử lý |
| 決済 | けっさい | QUYẾT TẾ | thanh toán |
| 有効 | ゆうこう | HỮU HIỆU | có hiệu lực |
| 確実 | かくじつ | XÁC THỰC | chắc chắn |
| 未実装 | みじっそう | VỊ THỰC TRANG | chưa triển khai |
| 判断 | はんだん | PHÁN ĐOÁN | đánh giá, quyết định |
| 踏み切った | ふみきった | ĐẠP THIẾT | quyết tâm |
| 需要 | じゅよう | NHU YẾU | nhu cầu |
| 競合 | きょうごう | CẠNH HỢP | cạnh tranh, đối thủ |
| 汎用的 | はんようてき | PHIẾM DỤNG ĐÍCH | đa dụng, phổ thông |
| 特化 | とっか | ĐẶC HOÁ | chuyên biệt |
| 敬語 | けいご | KÍNH NGỮ | kính ngữ |
| 差別化 | さべつか | SAI BIỆT HOÁ | khác biệt hoá |
| 公開 | こうかい | CÔNG KHAI | công bố |
| 運用対応 | うんようたいおう | VẬN DỤNG ĐỐI ỨNG | xử lý vận hành |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | đương nhiên |
| 設定 | せってい | THIẾT ĐỊNH | thiết lập |
| 光栄 | こうえい | QUANG VINH | vinh dự |
| 有料転換 | ゆうりょうてんかん | HỮU LIỆU CHUYỂN HOÁN | chuyển đổi trả phí |
| 上昇 | じょうしょう | THƯỢNG THĂNG | tăng lên |
| 期待 | きたい | KỲ ĐÃI | kỳ vọng |
| 上回り | うわまわり | THƯỢNG HỒI | vượt qua |
| 恐縮 | きょうしゅく | KHỦNG SÚC | quá khen, ngại |
| 調達 | ちょうたつ | ĐIỀU ĐẠT | huy động vốn |
| 月次純増 | げつじじゅんぞう | NGUYỆT THỨ THUẦN TĂNG | tăng ròng theo tháng |
| 黒字化 | くろじか | HẮC TỰ HOÁ | có lãi |
| 最終数字 | さいしゅうすうじ | TỐI CHUNG SỐ TỰ | con số cuối cùng |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000006, 800000026, NULL, 'markdown_book', 'T6. Mai mang thai bé Đông + đăng ký 育休 (妊娠中期と育休申請)', '# Sách kỹ sư cầu nối & khởi nghiệp · T6. Mai mang thai bé Đông + đăng ký 育休 (妊娠中期と育休申請)

> **Mục tiêu nhân vật:** Đại 26 tuổi (9/2031). Học các mẫu hội thoại tiếng Nhật của founder + ông bố tương lai: (1) thông báo nghỉ 育児休業 với team Nhật, (2) đề xuất chính sách phúc lợi với cofounder người Nhật, (3) viết email pitch Series A bằng keigo, (4) trao đổi với bác sĩ sản khoa (chồng đi cùng vợ), (5) làm quen partner VC trong buổi gặp đầu, (6) báo cáo round update qua Slack JP.

---

## Bối cảnh

9/2031, Osaka + Tokyo. Mai 24-28 tuần thai bé Đông, bụng đã rõ. Hana 3 tuổi 1 tháng, đi nhà trẻ Senri-chuo. Hizashi MRR ¥5M, team 5 người. Đại chuẩn bị Series A pitch tour, đồng thời đăng ký 育児休業 1 tháng (12/2031-1/2032). Bố mẹ HN announce sang Nhật ngày sinh. Chương này tập trung mẫu câu **thông báo 育休 với team JP** + **email pitch Series A keigo** + **trao đổi với bác sĩ sản khoa**.

---

## Tình huống 1 — Apt Senri-chuo · 5/9 sáng 7:30, Hana hỏi về em Đông

| Vai | Lời thoại |
|---|---|
| Hana | (VN, sờ bụng Mai) Mẹ ơi, em Đông đâu? |
| Mai | (VN, cười) Em Đông trong bụng mẹ. Em đang lớn. 3 tháng nữa em ra. |
| Hana | (VN) Em Đông nghe Hana không? |
| Mai | (VN) Nghe được đấy. Tối qua em đá khi nghe giọng Hana. |
| Hana | (sờ bụng) <ruby>東<rt>とう</rt></ruby>くん!お<ruby>姉<rt>ねえ</rt></ruby>ちゃんやで! |
| Đại | (cười, xoa đầu Hana) Hana xen tiếng Nhật rồi nhé. Cô giáo nhà trẻ dạy đấy à? |
| Hana | (gật) はい!お<ruby>姉<rt>ねえ</rt></ruby>ちゃん! |
| Mai | (VN, ôm Hana) Con là chị tuyệt vời nhất. |

---

## Tình huống 2 — Văn phòng · 10:00, Đại thông báo 育休 với team

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>、<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>件<rt>けん</rt></ruby>でお<ruby>知<rt>し</rt></ruby>らせがあります。<br>*(Mọi người chào buổi sáng. Hôm nay có việc cá nhân muốn thông báo.)* |
| Đại | <ruby>妻<rt>つま</rt></ruby>のマイが<ruby>12月<rt>じゅうにがつ</rt></ruby>に<ruby>第二子<rt>だいにし</rt></ruby>を<ruby>出産<rt>しゅっさん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<ruby>私<rt>わたし</rt></ruby>は<ruby>父親<rt>ちちおや</rt></ruby><ruby>育児休業<rt>いくじきゅうぎょう</rt></ruby>を<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>取得<rt>しゅとく</rt></ruby>させていただきたいと<ruby>考<rt>かんが</rt></ruby>えています。<ruby>期間<rt>きかん</rt></ruby>は<ruby>12月<rt>じゅうにがつ</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>から<ruby>1月<rt>いちがつ</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>までです。<br>*(Vợ tôi Mai dự sinh con thứ hai tháng 12. Tôi muốn xin nghỉ chăm con 1 tháng, từ 15/12 đến 15/1.)* |
| Tuấn | (VN) Em tuyệt vời. Anh ủng hộ hoàn toàn. Anh sẽ làm Acting CEO trong 1 tháng. |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしいです!<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>はとても<ruby>大切<rt>たいせつ</rt></ruby>ですよね。<br>*(Tuyệt vời! Nghỉ chăm con của bố rất quan trọng.)* |
| Tanaka | メルカリ<ruby>時代<rt>じだい</rt></ruby>も<ruby>男性<rt>だんせい</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>同僚<rt>どうりょう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>かったです。Hizashiの<ruby>文化<rt>ぶんか</rt></ruby>として<ruby>定着<rt>ていちゃく</rt></ruby>させるべきだと<ruby>思<rt>おも</rt></ruby>います。<br>*(Thời Mercari nhiều đồng nghiệp nam cũng nghỉ. Nên định hình thành văn hoá Hizashi.)* |
| Sakura | <ruby>桜<rt>さくら</rt></ruby>、<ruby>感動<rt>かんどう</rt></ruby>しました!<ruby>応援<rt>おうえん</rt></ruby>します!<br>*(Em cảm động! Em ủng hộ!)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、ありがとうございます。<br>*(Mọi người, cảm ơn.)* |

---

## Tình huống 3 — Văn phòng · 10:30, Đại đề xuất chính sách Hizashi

| Vai | Lời thoại |
|---|---|
| Đại | この<ruby>機会<rt>きかい</rt></ruby>に、Hizashiの<ruby>福利厚生<rt>ふくりこうせい</rt></ruby><ruby>制度<rt>せいど</rt></ruby>を<ruby>正式<rt>せいしき</rt></ruby>に<ruby>定<rt>さだ</rt></ruby>めたいと<ruby>思<rt>おも</rt></ruby>います。<ruby>提案<rt>ていあん</rt></ruby>は<ruby>3点<rt>さんてん</rt></ruby>です。<br>*(Nhân dịp này, tôi muốn chính thức quy định phúc lợi Hizashi. Đề xuất 3 điểm.)* |
| Đại | <ruby>1<rt>いち</rt></ruby>、<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby><ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>有給<rt>ゆうきゅう</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>母親<rt>ははおや</rt></ruby><ruby>産休<rt>さんきゅう</rt></ruby><ruby>6ヶ月<rt>ろっかげつ</rt></ruby><ruby>有給<rt>ゆうきゅう</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>復職時<rt>ふくしょくじ</rt></ruby>のリモートワーク<ruby>柔軟<rt>じゅうなん</rt></ruby><ruby>制度<rt>せいど</rt></ruby>。<br>*(1, nghỉ chăm con của bố 1 tháng có lương. 2, nghỉ thai sản của mẹ 6 tháng có lương. 3, chế độ remote linh hoạt khi đi làm lại.)* |
| Tanaka | <ruby>法定基準<rt>ほうていきじゅん</rt></ruby>を<ruby>上回<rt>うわまわ</rt></ruby>る<ruby>水準<rt>すいじゅん</rt></ruby>ですね。<ruby>採用<rt>さいよう</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みになります。<br>*(Mức trên chuẩn luật. Sẽ là lợi thế tuyển dụng.)* |
| Aiko | <ruby>賛成<rt>さんせい</rt></ruby>です。<ruby>女性<rt>じょせい</rt></ruby>エンジニアの<ruby>採用<rt>さいよう</rt></ruby>にも<ruby>効<rt>き</rt></ruby>くと<ruby>思<rt>おも</rt></ruby>います。<br>*(Tôi đồng ý. Cũng hiệu quả cho tuyển nữ engineer.)* |
| Đại | では、<ruby>愛子<rt>あいこ</rt></ruby>さんと<ruby>田中<rt>たなか</rt></ruby>さんで<ruby>規程<rt>きてい</rt></ruby><ruby>文書<rt>ぶんしょ</rt></ruby>のドラフトを<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>作<rt>つく</rt></ruby>っていただけますか?<br>*(Vậy Aiko-san và Tanaka-san soạn bản nháp văn bản quy chế trong tuần sau giúp được không?)* |
| Aiko | <ruby>承知<rt>しょうち</rt></ruby>しました!<br>*(Vâng!)* |

---

## Tình huống 4 — Trưa · 12:00, viết email pitch Sato-san Anri

*Đại ngồi ở quán cà phê WeWork, viết email pitch Series A đầu tiên cho Sato-san partner Anri (pre-seed investor 13%).*

| Vai | Lời thoại |
|---|---|
| Đại | (đọc lại email trước khi gửi) | 
| Email Subject | Hizashi Series A — <ruby>2億円<rt>におくえん</rt></ruby><ruby>調達<rt>ちょうたつ</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby> |
| Email body | <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>いつもお<ruby>世話<rt>せわ</rt></ruby>になっております。Hizashiのグエン・ダイです。<br><br>Hizashi v2.0、<ruby>8月<rt>はちがつ</rt></ruby><ruby>1日<rt>ついたち</rt></ruby>に<ruby>無事<rt>ぶじ</rt></ruby>ローンチでき、<ruby>8月末<rt>はちがつまつ</rt></ruby>時点でMRR <ruby>500万円<rt>ごひゃくまんえん</rt></ruby>、<ruby>有料<rt>ゆうりょう</rt></ruby>ユーザー<ruby>5,100名<rt>ごせんひゃくめい</rt></ruby>を<ruby>達成<rt>たっせい</rt></ruby>いたしました。<ruby>多言語<rt>たげんご</rt></ruby>(KR+ZH+VN+JP+EN)への<ruby>展開<rt>てんかい</rt></ruby>も<ruby>順調<rt>じゅんちょう</rt></ruby>です。<br><br>つきましては、Series Aラウンド<ruby>2億円<rt>におくえん</rt></ruby>の<ruby>調達<rt>ちょうたつ</rt></ruby>を<ruby>準備中<rt>じゅんびちゅう</rt></ruby>でございます。Anri<ruby>様<rt>さま</rt></ruby>にリード<ruby>投資家<rt>とうしか</rt></ruby>として<ruby>参加<rt>さんか</rt></ruby>いただけないかと<ruby>考<rt>かんが</rt></ruby>えております。JAFCO・DG <ruby>各社<rt>かくしゃ</rt></ruby>には<ruby>共同投資<rt>きょうどうとうし</rt></ruby>として<ruby>想定<rt>そうてい</rt></ruby>しております。<br><br><ruby>来週<rt>らいしゅう</rt></ruby>、お<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせのお<ruby>時間<rt>じかん</rt></ruby>をいただくことは<ruby>可能<rt>かのう</rt></ruby>でしょうか。ピッチデックを<ruby>添付<rt>てんぷ</rt></ruby>いたしますので、ご<ruby>確認<rt>かくにん</rt></ruby>いただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br><br>どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ダイ |

---

## Tình huống 5 — Slack #hizashi-team · 13:00, Sato-san reply nhanh

| Vai | Lời thoại |
|---|---|
| Sato-san (Anri) | (email reply) ダイさん!<br>v2.0のトラクション、<ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>是非<rt>ぜひ</rt></ruby>お<ruby>会<rt>あ</rt></ruby>いしましょう。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby><ruby>10日<rt>とおか</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby>オフィスでいかがでしょうか?<br>*(Đại-san! Traction v2.0 tuyệt. Hãy gặp nhé. Thứ Ba 10/9 14h văn phòng Tokyo được không?)* |
| Đại | (Slack #hizashi-team) <ruby>佐藤<rt>さとう</rt></ruby>さんから<ruby>1時間<rt>いちじかん</rt></ruby>で<ruby>返信<rt>へんしん</rt></ruby>!<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜<rt>かよう</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby><ruby>東京<rt>とうきょう</rt></ruby>でピッチです。<br>*(Sato-san reply trong 1h! Thứ Ba tuần sau 14h Tokyo pitch.)* |
| Tuấn | (JP) <ruby>素晴<rt>すば</rt></ruby>らしい!<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>東京<rt>とうきょう</rt></ruby>へ<ruby>行<rt>い</rt></ruby>きますか?<br>*(Tuyệt! Cùng đi Tokyo nhé?)* |
| Đại | はい、<ruby>2人<rt>ふたり</rt></ruby>で<ruby>行<rt>い</rt></ruby>きましょう。<br>*(Vâng, hai anh em cùng đi.)* |

---

## Tình huống 6 — LINE family · 21:00, bố Mai thông báo sang Nhật

| Vai | Lời thoại |
|---|---|
| Bố Mai | (VN, LINE) Mai ơi, bố mẹ vừa đặt vé sang Nhật ngày 20/12. Ở 1 tháng. Bố mẹ giúp Mai sau sinh và trông Hana. |
| Mẹ Mai | (VN) Bố mẹ sang trước dự sinh 5 ngày. Nội ngoại đầy đủ. |
| Mai | (VN, mừng) Bố mẹ ơi! Con cảm ơn nhiều ạ! Con mong lắm. |
| Đại | (VN) Bố mẹ ạ! Con cảm ơn ạ. Con đặt phòng khách sạn gần apt Senri-chuo cho bố mẹ. |
| Bố Mai | (VN) Tony bên Aichi cũng tự sang 1 tuần dịp đó. Đại nói với Tony chưa? |
| Đại | (VN) Vâng bố, Tony+Yumi đã lên kế hoạch. 4 ông bà cùng đến. |
| Hana | (qua mic của Mai, VN) Ông ngoại! Bà ngoại! Hana đợi! |
| Mẹ Mai | (VN, cười) Hana ơi, bà mua bánh chưng sang nhé. |
| Hana | (VN) Bánh chưng! Bánh chưng! |

---

## Tình huống 7 — Senri-chuo Maternity Clinic · 14:00, check 26w

| Vai | Lời thoại |
|---|---|
| Bác sĩ Tanaka | マイさん、<ruby>26週<rt>にじゅうろくしゅう</rt></ruby>ですね。<ruby>胎児<rt>たいじ</rt></ruby>のサイズ<ruby>900<rt>きゅうひゃく</rt></ruby>グラム、<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>っています。<br>*(Mai-san, 26 tuần rồi. Thai 900g, phát triển ổn định.)* |
| Mai | <ruby>先生<rt>せんせい</rt></ruby>、ありがとうございます。<ruby>運動<rt>うんどう</rt></ruby>の<ruby>制限<rt>せいげん</rt></ruby>はありますでしょうか?<br>*(Bác sĩ, cảm ơn. Có cần hạn chế vận động không ạ?)* |
| Bác sĩ | <ruby>軽<rt>かる</rt></ruby>い<ruby>散歩<rt>さんぽ</rt></ruby>でしたら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。ただし、<ruby>長距離<rt>ちょうきょり</rt></ruby>のフライトは<ruby>28週<rt>にじゅうはちしゅう</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>避<rt>さ</rt></ruby>けてください。<br>*(Đi bộ nhẹ thì được. Tuy nhiên bay đường dài sau tuần 28 nên tránh.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>夫<rt>おっと</rt></ruby>の<ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>取<rt>と</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<ruby>出産前後<rt>しゅっさんぜんご</rt></ruby>の<ruby>夫<rt>おっと</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>として<ruby>気<rt>き</rt></ruby>をつけるべきことはありますか?<br>*(Bác sĩ, em định nghỉ chăm con của bố 1 tháng. Vai trò người chồng quanh sinh nở cần lưu ý điều gì?)* |
| Bác sĩ | <ruby>素晴<rt>すば</rt></ruby>らしいですね!<ruby>第二子<rt>だいにし</rt></ruby>の<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>大切<rt>たいせつ</rt></ruby>です。<ruby>上<rt>うえ</rt></ruby>のお<ruby>子<rt>こ</rt></ruby>さんのケアと<ruby>奥<rt>おく</rt></ruby>さんの<ruby>休息<rt>きゅうそく</rt></ruby><ruby>確保<rt>かくほ</rt></ruby>、この<ruby>2点<rt>にてん</rt></ruby>が<ruby>最重要<rt>さいじゅうよう</rt></ruby>です。<br>*(Tuyệt vời! Nghỉ chăm con thứ hai của bố thực sự quan trọng. Chăm con lớn và đảm bảo vợ nghỉ ngơi — 2 điểm quan trọng nhất.)* |
| Mai | (cảm động, JP) <ruby>先生<rt>せんせい</rt></ruby>、ありがとうございます。<br>*(Bác sĩ, cảm ơn ạ.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>次回<rt>じかい</rt></ruby>はいつでしょうか?<br>*(Vâng. Lần khám tới khi nào ạ?)* |
| Bác sĩ | <ruby>2週間後<rt>にしゅうかんご</rt></ruby>、<ruby>28週<rt>にじゅうはちしゅう</rt></ruby><ruby>検診<rt>けんしん</rt></ruby>です。<br>*(2 tuần sau, khám tuần 28.)* |

---

## Tình huống 8 — Tàu Shinkansen Shin-Osaka → Tokyo · 10/9 11:00, Đại + Tuấn ôn pitch

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Em ôn lại cái slide traction lần cuối. |
| Đại | (VN) MRR 5 triệu, tăng trưởng MoM 30%, 22% paid conversion, 5100 paid user, NPS 67. |
| Tuấn | (VN) Khi Sato-san hỏi về moat thì em trả lời gì? |
| Đại | (VN) Cross-lingual VN-KR-ZH NLP + JP đặc thù. Duolingo phổ thông, Hizashi sâu kanji-keigo-business. |
| Tuấn | (VN) Khi hỏi về competition Anki, Bunpro thì sao? |
| Đại | (VN) Anki là flashcard, Bunpro chỉ grammar drill. Hizashi là end-to-end: từ vựng + ngữ pháp + hội thoại + chấm điểm AI. |
| Tuấn | (VN) Tốt. Em hít thở sâu đi. Sato-san là ông tốt — mình quen từ pre-seed rồi. |
| Đại | (VN) Vâng. Em đã sẵn sàng. |

---

## Tình huống 9 — Anri Tokyo Office Roppongi Hills · 14:00, gặp Sato-san

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Sato-san, hôm nay cảm ơn anh đã dành thời gian.)* |
| Sato-san | ダイさん!トゥアンさん!<ruby>久<rt>ひさ</rt></ruby>しぶりですね。プレシードのときから<ruby>2年<rt>にねん</rt></ruby><ruby>半<rt>はん</rt></ruby>です。<br>*(Đại-san! Tuấn-san! Lâu rồi nhỉ. 2.5 năm kể từ pre-seed.)* |
| Đại | はい、<ruby>佐藤<rt>さとう</rt></ruby>さんの<ruby>応援<rt>おうえん</rt></ruby>があったからこそ、<ruby>今日<rt>きょう</rt></ruby>のHizashiがあります。<br>*(Vâng, nhờ có anh ủng hộ mới có Hizashi hôm nay.)* |
| Sato | では、<ruby>本日<rt>ほんじつ</rt></ruby>のピッチをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>30分<rt>さんじゅっぷん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>ですね。<br>*(Vậy mời bắt đầu pitch. 30 phút nhé.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れは、ストーリー、<ruby>問題<rt>もんだい</rt></ruby>と<ruby>解決策<rt>かいけつさく</rt></ruby>、トラクションとテクノロジー、チームと<ruby>資金用途<rt>しきんようと</rt></ruby>の<ruby>4部構成<rt>よんぶこうせい</rt></ruby>です。<br>*(Vâng. Hôm nay 4 phần: story, problem & solution, traction & tech, team & use of funds.)* |

---

## Tình huống 10 — Anri Tokyo · 14:30, Sato-san đặt câu hỏi sau pitch

| Vai | Lời thoại |
|---|---|
| Sato | <ruby>多言語展開<rt>たげんごてんかい</rt></ruby>のトラクション、<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>いシグナルですね。<ruby>1点<rt>いってん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させてください。<ruby>韓国市場<rt>かんこくしじょう</rt></ruby>の<ruby>50%<rt>ごじゅっパーセント</rt></ruby>シェア、<ruby>来年<rt>らいねん</rt></ruby>も<ruby>維持<rt>いじ</rt></ruby>できる<ruby>見込<rt>みこ</rt></ruby>みは?<br>*(Traction đa ngôn ngữ là tín hiệu rất mạnh. Cho tôi xác nhận 1 điểm: KR 50% share — duy trì được sang năm không?)* |
| Đại | はい。<ruby>韓国<rt>かんこく</rt></ruby>では<ruby>日本語学習<rt>にほんごがくしゅう</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>が<ruby>年率<rt>ねんりつ</rt></ruby><ruby>15%<rt>じゅうごパーセント</rt></ruby>で<ruby>成長中<rt>せいちょうちゅう</rt></ruby>です。K-POPの<ruby>影響<rt>えいきょう</rt></ruby>でJ-POP・アニメへの<ruby>関心<rt>かんしん</rt></ruby>が<ruby>復活<rt>ふっかつ</rt></ruby>しています。<ruby>競合<rt>きょうごう</rt></ruby>のGenieはまだ<ruby>英語学習<rt>えいごがくしゅう</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>なので、<ruby>差別化<rt>さべつか</rt></ruby>は<ruby>明確<rt>めいかく</rt></ruby>です。<br>*(Vâng. Thị trường học JP ở Hàn tăng 15%/năm. K-POP làm sống lại quan tâm J-POP/anime. Competitor Genie vẫn focus tiếng Anh, khác biệt rõ.)* |
| Sato | (gật) <ruby>明確<rt>めいかく</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>ですね。Anri、リード<ruby>投資<rt>とうし</rt></ruby>で<ruby>参加<rt>さんか</rt></ruby>させていただきます。<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>以下<rt>いか</rt></ruby>です。<br>*(Câu trả lời rõ. Anri tham gia với tư cách lead. Điều kiện như sau.)* |
| Sato | <ruby>調達<rt>ちょうたつ</rt></ruby><ruby>2億円<rt>におくえん</rt></ruby>、ポストマネー<ruby>評価額<rt>ひょうかがく</rt></ruby><ruby>12億円<rt>じゅうにおくえん</rt></ruby>。Anri <ruby>1.2億円<rt>いってんにおくえん</rt></ruby>(<ruby>10%<rt>じゅっパーセント</rt></ruby>)、JAFCO <ruby>5,000万円<rt>ごせんまんえん</rt></ruby>、DG <ruby>3,000万円<rt>さんぜんまんえん</rt></ruby>。タームシートは<ruby>2週間以内<rt>にしゅうかんいない</rt></ruby>、デューデリは<ruby>4週間<rt>よんしゅうかん</rt></ruby>、クローズは<ruby>11月末<rt>じゅういちがつまつ</rt></ruby>です。<br>*(¥200M @ ¥1.2B post. Anri ¥120M (10%), JAFCO ¥50M, DG ¥30M. Term sheet 2 tuần, DD 4 tuần, close cuối tháng 11.)* |
| Đại | (nghẹn lại, JP) <ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます。<br>*(Em xin chân thành cảm ơn. Em sẽ tiến hành cẩn thận.)* |

---

## Tình huống 11 — Tàu Shinkansen về Osaka · 18:00, Đại + Tuấn ăn mừng nhỏ

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN, mở lon bia) Em ơi! Anri lead confirmed ngay buổi đầu! |
| Đại | (VN) Anh ơi, em vẫn run. Sato-san xác nhận luôn không cần follow-up. |
| Tuấn | (VN) Pre-seed loyalty đấy em. 2.5 năm em báo cáo monthly đều, ông Sato tin em. |
| Đại | (VN) Em viết tin nhắn báo team đây. |
| Đại | (Slack #hizashi-team) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>速報<rt>そくほう</rt></ruby>です!<ruby>安里<rt>あんり</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんがSeries Aリードで<ruby>参加<rt>さんか</rt></ruby>を<ruby>確定<rt>かくてい</rt></ruby>しました!<ruby>調達<rt>ちょうたつ</rt></ruby><ruby>2億円<rt>におくえん</rt></ruby>、<ruby>11月末<rt>じゅういちがつまつ</rt></ruby>クローズ<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Mọi người, tin nóng! Sato-san Anri đã chốt tham gia lead Series A! Gọi vốn ¥200M, mục tiêu close cuối tháng 11.)* |
| Aiko | (Slack) <ruby>夢<rt>ゆめ</rt></ruby>みたいです!!<br>*(Như giấc mơ!!)* |
| Tanaka | (Slack) メルカリ<ruby>時代<rt>じだい</rt></ruby>でも<ruby>聞<rt>き</rt></ruby>いたことのない<ruby>速<rt>はや</rt></ruby>さです。ダイさんのプレシード・ロイヤリティ、<ruby>本物<rt>ほんもの</rt></ruby>ですね!<br>*(Thời Mercari chưa từng nghe tốc độ này. Pre-seed loyalty của Đại-san là thật!)* |
| Sakura | (Slack) <ruby>感動<rt>かんどう</rt></ruby>!!<br>*(Cảm động!!)* |

---

## Tình huống 12 — Apt Senri-chuo · 22:00, Đại kể Mai

| Vai | Lời thoại |
|---|---|
| Đại | (VN, ngồi sofa với Mai) Em ơi! Anh kể em buổi pitch hôm nay. |
| Mai | (VN, xoa bụng) Anh nói đi. Bé Đông cũng nghe đấy. |
| Đại | (VN) Sato-san xác nhận lead luôn buổi đầu. Term sheet 2 tuần, DD 4 tuần, close 30/11. |
| Mai | (VN, mắt mở to) Trời ơi anh! Em mừng quá. |
| Đại | (VN) Lịch hoàn hảo em ạ. Close 30/11 → 育休 từ 15/12 → bé Đông dự sinh 25/12. Mọi thứ khớp. |
| Mai | (VN) Bé Đông sinh ra trong gia đình mà bố vừa close Series A. Câu chuyện đẹp. |
| Đại | (VN, ôm Mai) Em ơi. 26 tuổi. Vợ, con gái, em bé sắp ra, Series A, team 5 người. Anh không biết cuộc đời mình lại đến nhanh thế. |
| Mai | (VN) Anh xứng đáng. Em sẽ kể câu chuyện này cho Hana và Đông khi chúng lớn. |
| Đại | (VN) Mai mình cùng đặt phòng cho bố mẹ. 20/12 đón ở sân bay. |
| Mai | (VN) Em đặt rồi. Khách sạn Senri-Hankyu cách nhà 5 phút. |

---

## Tình huống 13 — Cảnh tiếng Việt · 23/9 tối, gọi mẹ Đại ở HN

| Vai | Lời thoại |
|---|---|
| Mẹ Đại | (VN, qua Zalo) Con! Sao lâu không gọi mẹ. Vợ Mai sao rồi? |
| Đại | (VN) Mẹ ơi, Mai 27 tuần rồi, khoẻ. Tuần trước bác sĩ siêu âm bé Đông 1kg. |
| Mẹ Đại | (VN) Tốt quá. Hana có ngoan không? |
| Đại | (VN) Hana ngoan lắm mẹ. Hôm qua nó sờ bụng Mai bảo "em Đông, chị Hana đây". |
| Mẹ Đại | (VN) Trời cháu bà! Mẹ nhớ Hana quá. Khi nào bố mẹ chồng Mai sang Nhật? |
| Đại | (VN) 20/12 ạ. Bố mẹ vợ ở 1 tháng. Mẹ ơi, mẹ với bố cũng sang được không ạ? Con đặt vé. |
| Mẹ Đại | (VN) Bố mẹ cũng đang bàn. Bố mẹ tính sang sau Tết âm. Mẹ ngại ra vé Tết đắt. |
| Đại | (VN) Mẹ đừng ngại. Con close Series A xong rồi, lo được. Mẹ ơi con muốn bố mẹ gặp bé Đông sớm. |
| Mẹ Đại | (VN, xúc động) Con của mẹ. Mẹ sẽ bàn với bố tối nay. |
| Đại | (VN) Cảm ơn mẹ. Con yêu mẹ. |
| Mẹ Đại | (VN) Mẹ yêu con. Ngủ ngon. |

---

## Đọng lại chương 6

Đại trải qua tháng 9/2031 với 2 cột mốc lớn: (1) thông báo nghỉ **<ruby>育児休業<rt>いくじきゅうぎょう</rt></ruby>** 1 tháng với team Nhật bằng câu **「〜を<ruby>取得<rt>しゅとく</rt></ruby>させていただきたいと<ruby>考<rt>かんが</rt></ruby>えています」**, đề xuất chính sách phúc lợi Hizashi (育休 bố 1 tháng + 産休 mẹ 6 tháng), được Tanaka (ex-Mercari) ủng hộ; (2) viết email pitch Series A đầu tiên cho Sato-san Anri với mẫu **「お<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせのお<ruby>時間<rt>じかん</rt></ruby>をいただくことは<ruby>可能<rt>かのう</rt></ruby>でしょうか」**, đáp lại điều kiện đầu tư bằng **「<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます」**. Buổi gặp 10/9 Anri xác nhận lead ¥120M (10%) ngay buổi đầu — phần thưởng cho 2.5 năm pre-seed loyalty. Khám 26 tuần Mai bụng 900g, bác sĩ Tanaka khen 育休 bố cho con thứ hai cực kỳ quan trọng. Bố mẹ HN sang Nhật 20/12. Cuối chương Đại gọi mẹ qua Zalo bằng tiếng Việt — mời mẹ sang gặp bé Đông sớm.

> Từ vựng & mẫu câu chương này: <ruby>育児休業<rt>いくじきゅうぎょう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>させていただきたい・<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>・<ruby>福利厚生制度<rt>ふくりこうせいせいど</rt></ruby>・<ruby>法定基準<rt>ほうていきじゅん</rt></ruby>を<ruby>上回<rt>うわまわ</rt></ruby>る・お<ruby>打<rt>う</rt></ruby>ち<ruby>合<rt>あ</rt></ruby>わせのお<ruby>時間<rt>じかん</rt></ruby>をいただくことは<ruby>可能<rt>かのう</rt></ruby>でしょうか・<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます・<ruby>誠<rt>まこと</rt></ruby>にありがとうございます・タームシート・デューデリジェンス・ポストマネー<ruby>評価額<rt>ひょうかがく</rt></ruby>・リード<ruby>投資家<rt>とうしか</rt></ruby>・<ruby>共同投資<rt>きょうどうとうし</rt></ruby>・<ruby>胎児<rt>たいじ</rt></ruby>・<ruby>順調<rt>じゅんちょう</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>っています・<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby>・<ruby>差別化<rt>さべつか</rt></ruby>は<ruby>明確<rt>めいかく</rt></ruby>です・プレシード・ロイヤリティ・<ruby>速報<rt>そくほう</rt></ruby>です

## Bí quyết chương

- **Thông báo 育休 với team JP**: dùng 「〜<ruby>取得<rt>しゅとく</rt></ruby>させていただきたいと<ruby>考<rt>かんが</rt></ruby>えています」 — hình thức xin phép nhẹ, không phải announce đơn phương. Sempai 40t+ như Tanaka cực kỳ tôn trọng founder dám nghỉ 育休
- **Email pitch VC keigo**: mở 「いつもお<ruby>世話<rt>せわ</rt></ruby>になっております」 → traction 1 đoạn → request 1 đoạn → đóng 「どうぞよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします」. Tổng ≤ 200 chữ. Pitch deck attach
- **Đáp lại offer đầu tư**: KHÔNG nói "ありがとうございます" rồi im — phải có 「<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます」 (sẽ tiến hành cẩn thận) — thể hiện sự nghiêm túc
- **Hỏi bác sĩ sản khoa khi chồng đi cùng**: 「<ruby>夫<rt>おっと</rt></ruby>として<ruby>気<rt>き</rt></ruby>をつけるべきことはありますか」 — câu mở quan trọng, bác sĩ Nhật cực thiện cảm với chồng chủ động hỏi
- **Pre-seed loyalty**: monthly investor update đều đặn 2-3 năm = lý do Anri xác nhận lead ngay buổi đầu mà không cần follow-up rounds

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 個人的 | こじんてき | CÁ NHÂN ĐÍCH | mang tính cá nhân |
| 第二子 | だいにし | ĐỆ NHỊ TỬ | con thứ hai |
| 出産 | しゅっさん | XUẤT SẢN | sinh con |
| 父親 | ちちおや | PHỤ THÂN | cha, người cha |
| 育児休業 | いくじきゅうぎょう | DỤC NHI HƯU NGHIỆP | nghỉ chăm con |
| 取得 | しゅとく | THỦ ĐẮC | xin/lấy (visa, nghỉ) |
| 期間 | きかん | KỲ GIAN | thời gian |
| 育休 | いくきゅう | DỤC HƯU | nghỉ chăm con (ngắn) |
| 大切 | たいせつ | ĐẠI THIẾT | quan trọng |
| 男性 | だんせい | NAM TÍNH | nam giới |
| 同僚 | どうりょう | ĐỒNG LIÊU | đồng nghiệp |
| 文化 | ぶんか | VĂN HOÁ | văn hoá |
| 定着 | ていちゃく | ĐỊNH TRƯỚC | định hình, ổn định |
| 感動 | かんどう | CẢM ĐỘNG | cảm động |
| 機会 | きかい | CƠ HỘI | cơ hội |
| 福利厚生 | ふくりこうせい | PHÚC LỢI HẬU SINH | phúc lợi |
| 制度 | せいど | CHẾ ĐỘ | chế độ |
| 母親 | ははおや | MẪU THÂN | mẹ |
| 産休 | さんきゅう | SẢN HƯU | nghỉ thai sản |
| 復職時 | ふくしょくじ | PHỤC CHỨC THỜI | khi đi làm lại |
| 柔軟 | じゅうなん | NHU NHƯỢC | linh hoạt |
| 法定基準 | ほうていきじゅん | PHÁP ĐỊNH CƠ CHUẨN | chuẩn pháp định |
| 水準 | すいじゅん | THUỶ CHUẨN | mức |
| 賛成 | さんせい | TÁN THÀNH | đồng ý |
| 規程 | きてい | QUY TRÌNH | quy chế |
| 文書 | ぶんしょ | VĂN THƯ | văn bản |
| 投資家 | とうしか | ĐẦU TƯ GIA | nhà đầu tư |
| 共同投資 | きょうどうとうし | CỘNG ĐỒNG ĐẦU TƯ | đồng đầu tư |
| 添付 | てんぷ | THIẾP PHÓ | đính kèm |
| 軽い | かるい | KHINH | nhẹ |
| 散歩 | さんぽ | TÁN BỘ | đi dạo |
| 制限 | せいげん | CHẾ HẠN | hạn chế |
| 長距離 | ちょうきょり | TRƯỜNG CỰ LY | đường dài |
| 役割 | やくわり | DỊCH CÁT | vai trò |
| 休息 | きゅうそく | HƯU TỨC | nghỉ ngơi |
| 確保 | かくほ | XÁC BẢO | đảm bảo |
| 最重要 | さいじゅうよう | TỐI TRỌNG YẾU | quan trọng nhất |
| 次回 | じかい | THỨ HỒI | lần sau |
| 流れ | ながれ | LƯU | luồng, quy trình |
| 資金用途 | しきんようと | TƯ KIM DỤNG ĐỒ | sử dụng vốn |
| 構成 | こうせい | CẤU THÀNH | cấu trúc |
| 維持 | いじ | DUY TRÌ | duy trì |
| 見込み | みこみ | KIẾN VỌNG | triển vọng |
| 年率 | ねんりつ | NIÊN SUẤT | tỷ lệ năm |
| 成長中 | せいちょうちゅう | THÀNH TRƯỜNG TRUNG | đang tăng trưởng |
| 影響 | えいきょう | ẢNH HƯỞNG | ảnh hưởng |
| 関心 | かんしん | QUAN TÂM | quan tâm |
| 復活 | ふっかつ | PHỤC HOẠT | sống lại |
| 明確 | めいかく | MINH XÁC | rõ ràng |
| 回答 | かいとう | HỒI ĐÁP | câu trả lời |
| 異例 | いれい | DỊ LỆ | hiếm thấy |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000007, 800000026, NULL, 'markdown_book', 'T7. Series A pitch tour — JAFCO + DG + WiL (シリーズAピッチ)', '# Sách kỹ sư cầu nối & khởi nghiệp · T7. Series A pitch tour — JAFCO + DG + WiL (シリーズAピッチ)

> **Mục tiêu nhân vật:** Đại 26 tuổi (9-10/2031). Học mẫu hội thoại tiếng Nhật của founder trong pitch tour Series A: (1) tự giới thiệu trang trọng tại VC office Marunouchi/Roppongi, (2) trả lời câu hỏi cứng về cạnh tranh và moat, (3) xử lý câu hỏi về IPO timeline với senior MD, (4) switch JP↔EN với US partner trong cuộc gọi VC, (5) báo cáo round update bằng JP keigo, (6) trao đổi với bác sĩ sản khoa khi vợ bị cao huyết áp thai kỳ.

---

## Bối cảnh

15/9 – 31/10/2031, Tokyo + Osaka. Anri (Sato-san) đã lead ¥120M từ T6. Pitch tour 4 VC khác: JAFCO (Sasaki-san senior MD, Tokyo), DG Daiwa (Honda-san, Osaka), WiL (Hayashi JP + Mark Suzuki SV qua Zoom), Globis backup. Mai 28-32 tuần — tuần 30 phát hiện cao huyết áp thai kỳ nhẹ. Hana 3 tuổi 1-2 tháng. Chương này tập trung mẫu câu **trả lời câu hỏi cứng của VC** + **switch JP-EN** + **điều chỉnh lịch ưu tiên gia đình**.

---

## Tình huống 1 — JAFCO Tokyo Marunouchi · 17/9 14:00, chào Sasaki-san senior MD

| Vai | Lời thoại |
|---|---|
| Đại | (Tuấn đứng cạnh, hai người mặc suit navy) <ruby>佐々木<rt>ささき</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。Hizashi <ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>のグエン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Sasaki-sama, hôm nay xin chân thành cảm ơn anh đã dành thời gian. Tôi là Nguyễn Đại, đồng sáng lập Hizashi.)* |
| Tuấn | <ruby>同<rt>おな</rt></ruby>じく<ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>、CTOのトゥアンです。<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tôi là Tuấn, CTO, đồng sáng lập. Hôm nay nhờ anh.)* |
| Sasaki-san | (52t, suit xám đậm) お<ruby>2人<rt>ふたり</rt></ruby>、ようこそいらっしゃいました。JAFCOの<ruby>佐々木<rt>ささき</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>のプレゼンテーション、<ruby>楽<rt>たの</rt></ruby>しみにしておりました。<br>*(Hai bạn, hoan nghênh. Tôi là Sasaki của JAFCO. Rất mong chờ phần thuyết trình hôm nay.)* |
| Đại | <ruby>恐縮<rt>きょうしゅく</rt></ruby>でございます。それでは<ruby>30分間<rt>さんじゅっぷんかん</rt></ruby>のプレゼンテーションを<ruby>始<rt>はじ</rt></ruby>めさせていただきます。<br>*(Vâng cảm ơn anh quá lời. Tôi xin phép bắt đầu phần thuyết trình 30 phút.)* |
| Sasaki | どうぞ。<br>*(Mời.)* |

---

## Tình huống 2 — JAFCO Tokyo · 14:35, Sasaki-san hỏi cạnh tranh

| Vai | Lời thoại |
|---|---|
| Sasaki | (sau 30 phút pitch) <ruby>多言語展開<rt>たげんごてんかい</rt></ruby>のトラクション、<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>強<rt>つよ</rt></ruby>いですね。<ruby>1点<rt>いってん</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>させてください。<ruby>韓国市場<rt>かんこくしじょう</rt></ruby>のGenieやRingleとの<ruby>競合<rt>きょうごう</rt></ruby>はいかがでしょうか?<br>*(Traction đa ngôn ngữ rất mạnh. Cho tôi hỏi 1 câu: cạnh tranh với Genie và Ringle ở Hàn thế nào?)* |
| Đại | はい、ありがとうございます。Genieは<ruby>英語<rt>えいご</rt></ruby>-<ruby>韓国語<rt>かんこくご</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>、Ringleは<ruby>英語<rt>えいご</rt></ruby>のチューターサービスです。Hizashiは<ruby>日本語学習<rt>にほんごがくしゅう</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>で、ベトナム<ruby>語<rt>ご</rt></ruby>-<ruby>韓国語<rt>かんこくご</rt></ruby>-<ruby>中国語<rt>ちゅうごくご</rt></ruby>の<ruby>横断的<rt>おうだんてき</rt></ruby>NLPが<ruby>独自<rt>どくじ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みです。<br>*(Vâng, cảm ơn anh. Genie tập trung Anh-Hàn, Ringle là tutor tiếng Anh. Hizashi chuyên JP, NLP cross-lingual VN-KR-ZH là moat riêng.)* |
| Sasaki | なるほど。では、<ruby>日本市場<rt>にほんしじょう</rt></ruby>でのDuolingoとの<ruby>差別化<rt>さべつか</rt></ruby>は?<br>*(Ra vậy. Vậy khác Duolingo ở thị trường JP thế nào?)* |
| Đại | Duolingoは<ruby>汎用<rt>はんよう</rt></ruby>プラットフォームで<ruby>40言語<rt>よんじゅうげんご</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>ですが、<ruby>日本語<rt>にほんご</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>・<ruby>敬語<rt>けいご</rt></ruby>・ビジネス<ruby>会話<rt>かいわ</rt></ruby>の<ruby>深掘<rt>ふかぼ</rt></ruby>りが<ruby>不十分<rt>ふじゅうぶん</rt></ruby>です。Hizashiは<ruby>JLPT N5<rt>エヌご</rt></ruby>からN1まで、さらにビジネス<ruby>敬語<rt>けいご</rt></ruby>までカバーします。<br>*(Duolingo là platform phổ thông 40 ngôn ngữ, đào sâu kanji-keigo-business JP chưa đủ. Hizashi cover JLPT N5-N1 và keigo business.)* |
| Sasaki | <ruby>明確<rt>めいかく</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>ですね。JAFCO、<ruby>5,000万円<rt>ごせんまんえん</rt></ruby><ruby>共同投資<rt>きょうどうとうし</rt></ruby>で<ruby>承諾<rt>しょうだく</rt></ruby>いたします。タームシートは<ruby>安里<rt>あんり</rt></ruby>さんと<ruby>協調<rt>きょうちょう</rt></ruby>して<ruby>進<rt>すす</rt></ruby>めます。<br>*(Câu trả lời rõ. JAFCO chấp thuận đồng đầu tư ¥50M. Term sheet phối hợp với Anri.)* |
| Đại | <ruby>誠<rt>まこと</rt></ruby>にありがとうございます!<br>*(Em xin chân thành cảm ơn!)* |

---

## Tình huống 3 — JAFCO sảnh lift · 15:30, Đại + Tuấn xuống lift

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN, trong lift) Em ơi! JAFCO accept ngay buổi đầu! |
| Đại | (VN) Anh ơi tay em vẫn run. Senior MD 20 năm kinh nghiệm mà phỏng vấn em cứ như mình ngang hàng. |
| Tuấn | (VN) Em chuẩn bị kỹ câu Genie-Ringle là điểm cốt. Sasaki test em có nghiên cứu thị trường KR thật không. |
| Đại | (VN) May em đọc Platum Korea 6 tháng nay. Pre-seed loyalty + traction + market research = combo. |
| Tuấn | (VN) Mình ra ngoài ăn unagi bento ăn mừng. Mai pitch DG ở Osaka. |
| Đại | (VN) Vâng anh. |

---

## Tình huống 4 — DG Daiwa Osaka Umeda · 22/9 15:00, Honda-san follow-on

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本田<rt>ほんだ</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。プレシード<ruby>5,000万円<rt>ごせんまんえん</rt></ruby>から<ruby>2年半<rt>にねんはん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Honda-san, hôm nay nhờ anh. Từ pre-seed ¥50M 2.5 năm trước, em thực sự được anh quan tâm.)* |
| Honda-san | (45t, ấm áp) ダイさん、<ruby>久<rt>ひさ</rt></ruby>しぶりですね!Series Aは<ruby>当然<rt>とうぜん</rt></ruby><ruby>参加<rt>さんか</rt></ruby>させていただきます。<ruby>3,000万円<rt>さんぜんまんえん</rt></ruby>のフォローオン<ruby>投資<rt>とうし</rt></ruby>、<ruby>約<rt>やく</rt></ruby><ruby>2.5%<rt>にてんごパーセント</rt></ruby>です。<br>*(Đại-san, lâu rồi! Series A đương nhiên DG tham gia. Follow-on ¥30M, khoảng 2.5%.)* |
| Đại | <ruby>感謝<rt>かんしゃ</rt></ruby>いたします。プレシードからの<ruby>継続<rt>けいぞく</rt></ruby><ruby>投資<rt>とうし</rt></ruby>は、<ruby>私<rt>わたし</rt></ruby>たちにとって<ruby>最高<rt>さいこう</rt></ruby>の<ruby>信頼<rt>しんらい</rt></ruby>のシグナルです。<br>*(Em xin cảm ơn. Đầu tư follow-on từ pre-seed là tín hiệu tin tưởng cao nhất với chúng em.)* |
| Honda | <ruby>1点<rt>いってん</rt></ruby><ruby>気<rt>き</rt></ruby>になる<ruby>点<rt>てん</rt></ruby>があります。Hizashiの<ruby>長期<rt>ちょうき</rt></ruby><ruby>展望<rt>てんぼう</rt></ruby>、IPOはいつ<ruby>頃<rt>ごろ</rt></ruby>を<ruby>想定<rt>そうてい</rt></ruby>されていますか?<br>*(Có 1 điểm tôi quan tâm. Tầm nhìn dài hạn Hizashi, IPO dự định khi nào?)* |
| Đại | <ruby>5年<rt>ごねん</rt></ruby>から<ruby>7年後<rt>ななねんご</rt></ruby>、ARR <ruby>30億<rt>さんじゅうおく</rt></ruby>から<ruby>50億円<rt>ごじゅうおくえん</rt></ruby>でグロース<ruby>市場<rt>しじょう</rt></ruby>へのIPOを<ruby>目指<rt>めざ</rt></ruby>します。<br>*(5-7 năm sau, ARR ¥3-5B IPO sàn Growth.)* |
| Honda | <ruby>現実的<rt>げんじつてき</rt></ruby>で<ruby>堅実<rt>けんじつ</rt></ruby>な<ruby>計画<rt>けいかく</rt></ruby>ですね。DG、フォローオンで<ruby>確定<rt>かくてい</rt></ruby>です。<br>*(Kế hoạch thực tế và vững vàng. DG xác nhận follow-on.)* |

---

## Tình huống 5 — WeWork meeting room · 28/9 9:00, chuẩn bị Zoom WiL

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Anh ơi! 9h Zoom WiL. Hayashi-san partner Tokyo + Mark Suzuki SV partner. |
| Tuấn | (VN) Mark Suzuki sẽ nói tiếng Anh. Em chuẩn bị câu trả lời US expansion. |
| Đại | (VN) Vâng anh. Em đã rehearse câu "1.2M Asian-American JP learners, year 4-5 US entry". |
| Tuấn | (VN) Khi nào Hayashi nói JP thì em respond JP. Khi nào Mark hỏi EN em switch EN luôn. Không lúng túng. |
| Đại | (VN) Em hiểu. Switch thẳng. |

---

## Tình huống 6 — Zoom call WiL · 28/9 10:00, JP↔EN switch

| Vai | Lời thoại |
|---|---|
| Hayashi (JP) | (JP) ダイさん、トゥアンさん、おはようございます。WiLの<ruby>林<rt>はやし</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>はサンフランシスコのマーク・<ruby>鈴木<rt>すずき</rt></ruby><ruby>共同<rt>きょうどう</rt></ruby>パートナーと<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>参加<rt>さんか</rt></ruby>させていただきます。<br>*(Đại-san, Tuấn-san, chào buổi sáng. Tôi Hayashi của WiL. Hôm nay cùng Mark Suzuki partner SF tham dự.)* |
| Đại | <ruby>林<rt>はやし</rt></ruby>さん、マークさん、<ruby>本日<rt>ほんじつ</rt></ruby>はピッチの<ruby>機会<rt>きかい</rt></ruby>をいただき、ありがとうございます。<br>*(Hayashi-san, Mark-san, cảm ơn đã cho cơ hội pitch hôm nay.)* |
| Đại | Mark, good morning! Thank you for joining from SF.<br>*(Mark, chào buổi sáng! Cảm ơn anh tham gia từ SF.)* |
| Mark Suzuki | (EN) Good evening on my side, Đại! Looking forward to the pitch.<br>*(Bên tôi là buổi tối, Đại! Mong chờ phần pitch.)* |
| Đại | (pitch 30 phút bilingual — slide chính JP, comment quick EN cho Mark) | 
| Mark | (EN, sau pitch) Đại, your Asia multi-language coverage is impressive. Question: any US expansion potential? The US has 1.2M Asian-American JP learners.<br>*(Coverage đa ngôn ngữ châu Á ấn tượng. Câu hỏi: tiềm năng US? Có 1.2M người Mỹ gốc Á học JP.)* |
| Đại | (EN) Yes, absolutely. Our roadmap year 4-5 includes US market entry, starting with Asian-American communities in California and New York. The cross-lingual NLP we built for KR-ZH-VN naturally extends to English speakers.<br>*(Có chắc chắn. Roadmap năm 4-5 vào US, bắt đầu cộng đồng Á-Mỹ ở California, New York. NLP cross-lingual KR-ZH-VN mở rộng sang tiếng Anh tự nhiên.)* |
| Mark | (EN) Excellent. WiL co-invests ¥30M, around 2.5% equity. Our value-add is the US portfolio network — Discord, Notion, Figma alumni.<br>*(Tốt. WiL đồng đầu tư ¥30M, ~2.5%. Value-add là network US — alumni Discord, Notion, Figma.)* |
| Đại | (EN) Thank you, Mark! WiL''s bridge to the US is unique. We accept.<br>*(Cảm ơn Mark! Cầu nối US của WiL độc đáo. Chúng tôi nhận.)* |
| Hayashi | (JP) タームシートは<ruby>安里<rt>あんり</rt></ruby>さんと<ruby>協調<rt>きょうちょう</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めさせていただきます。<br>*(Term sheet phối hợp với Anri tiến hành.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Vâng. Nhờ anh.)* |

---

## Tình huống 7 — Standup văn phòng · 1/10 9:00, round update JP

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。Series Aラウンドの<ruby>4週間<rt>よんしゅうかん</rt></ruby><ruby>経過<rt>けいか</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<br>*(Mọi người chào buổi sáng. Báo cáo tiến độ Series A sau 4 tuần.)* |
| Đại | <ruby>安里<rt>あんり</rt></ruby><ruby>1.2億<rt>いってんにおく</rt></ruby>(<ruby>10%<rt>じゅっパーセント</rt></ruby>)、JAFCO <ruby>5,000万<rt>ごせんまん</rt></ruby>、DG <ruby>3,000万<rt>さんぜんまん</rt></ruby>、WiL <ruby>3,000万<rt>さんぜんまん</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>で、<ruby>目標<rt>もくひょう</rt></ruby>の<ruby>2億円<rt>におくえん</rt></ruby>を<ruby>上回<rt>うわまわ</rt></ruby>るオーバーサブスクライブです。<br>*(Anri ¥120M (10%), JAFCO ¥50M, DG ¥30M, WiL ¥30M. Tổng ¥230M, vượt mục tiêu ¥200M = oversubscribed.)* |
| Tuấn | (JP) Series A<ruby>平均<rt>へいきん</rt></ruby>クロースが<ruby>6ヶ月<rt>ろっかげつ</rt></ruby>のところ、<ruby>4週間<rt>よんしゅうかん</rt></ruby>でオーバーサブスクライブとは、<ruby>異例<rt>いれい</rt></ruby>の<ruby>速<rt>はや</rt></ruby>さですね。<br>*(Series A trung bình close 6 tháng, mà 4 tuần oversubscribed là tốc độ hiếm thấy.)* |
| Đại | グロビスへのピッチは<ruby>昨日<rt>きのう</rt></ruby>キャンセルしました。ラウンドは<ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>でクローズします。<br>*(Pitch Globis đã huỷ hôm qua. Vòng đóng tại ¥230M.)* |
| Aiko | <ruby>素晴<rt>すば</rt></ruby>らしいですね!<br>*(Tuyệt vời!)* |
| Đại | <ruby>続<rt>つづ</rt></ruby>いてキャップテーブルです。<ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>3名<rt>さんめい</rt></ruby>の<ruby>合計<rt>ごうけい</rt></ruby>シェアは、<ruby>85%<rt>はちじゅうごパーセント</rt></ruby>から<ruby>69.3%<rt>ろくじゅうきゅうてんさんパーセント</rt></ruby>に<ruby>希薄化<rt>きはくか</rt></ruby>します。<ruby>健全<rt>けんぜん</rt></ruby>な<ruby>水準<rt>すいじゅん</rt></ruby>です。<br>*(Tiếp theo cap table. Tổng share 3 founder pha loãng 85% → 69.3%. Mức lành mạnh.)* |

---

## Tình huống 8 — Senri-chuo Maternity · 6/10 14:00, Mai 30w cao huyết áp

| Vai | Lời thoại |
|---|---|
| Bác sĩ Tanaka | マイさん、<ruby>30週<rt>さんじゅっしゅう</rt></ruby>ですね。<ruby>胎児<rt>たいじ</rt></ruby>は<ruby>1.4<rt>いってんよん</rt></ruby>キロ、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<br>*(Mai-san, 30 tuần rồi. Thai 1.4kg, ổn định.)* |
| Bác sĩ | (chậm rãi) <ruby>1点<rt>いってん</rt></ruby><ruby>気<rt>き</rt></ruby>になる<ruby>点<rt>てん</rt></ruby>がございます。マイさんの<ruby>血圧<rt>けつあつ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>高<rt>たか</rt></ruby>めです。<ruby>130<rt>ひゃくさんじゅう</rt></ruby>/<ruby>85<rt>はちじゅうご</rt></ruby>、<ruby>正常値<rt>せいじょうち</rt></ruby>は<ruby>120<rt>ひゃくにじゅう</rt></ruby>/<ruby>80<rt>はちじゅう</rt></ruby>ですので、<ruby>軽度<rt>けいど</rt></ruby>の<ruby>妊娠高血圧<rt>にんしんこうけつあつ</rt></ruby>に<ruby>該当<rt>がいとう</rt></ruby>します。<br>*(Có 1 điểm cần lưu ý. Huyết áp Mai-san hơi cao. 130/85, bình thường 120/80, tương ứng cao huyết áp thai kỳ mức nhẹ.)* |
| Mai | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Bác sĩ, có ổn không ạ?)* |
| Bác sĩ | ご<ruby>安心<rt>あんしん</rt></ruby>ください。<ruby>軽度<rt>けいど</rt></ruby>ですので、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>塩分制限<rt>えんぶんせいげん</rt></ruby>+<ruby>休息<rt>きゅうそく</rt></ruby>+<ruby>毎週<rt>まいしゅう</rt></ruby>の<ruby>血圧測定<rt>けつあつそくてい</rt></ruby>で<ruby>管理<rt>かんり</rt></ruby>できます。<ruby>普通分娩<rt>ふつうぶんべん</rt></ruby>の<ruby>可能性<rt>かのうせい</rt></ruby>は<ruby>高<rt>たか</rt></ruby>いです。<br>*(Cứ yên tâm. Mức nhẹ, quản lý được bằng hạn chế muối + nghỉ ngơi + đo huyết áp hàng tuần. Khả năng sinh thường cao.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>夫<rt>おっと</rt></ruby>として<ruby>家庭<rt>かてい</rt></ruby>で<ruby>気<rt>き</rt></ruby>をつけるべきことを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Bác sĩ, vai trò người chồng ở nhà cần lưu ý gì, xin chỉ giáo.)* |
| Bác sĩ | <ruby>3点<rt>さんてん</rt></ruby>です。<ruby>1<rt>いち</rt></ruby>、<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>塩分<rt>えんぶん</rt></ruby>を<ruby>1日<rt>いちにち</rt></ruby><ruby>6<rt>ろく</rt></ruby>グラム<ruby>以下<rt>いか</rt></ruby>に<ruby>抑<rt>おさ</rt></ruby>える。<ruby>2<rt>に</rt></ruby>、マイさんの<ruby>睡眠<rt>すいみん</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>する。<ruby>3<rt>さん</rt></ruby>、ストレスを<ruby>減<rt>へ</rt></ruby>らす。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>は<ruby>家庭<rt>かてい</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>まないようにしてください。<br>*(3 điểm. 1, muối ≤6g/ngày. 2, đảm bảo giấc ngủ vợ. 3, giảm stress. Đừng mang chuyện công việc về nhà.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ります。<br>*(Em hiểu. Em sẽ giữ nghiêm.)* |

---

## Tình huống 9 — Văn phòng + xe về · 17:00, Đại điều chỉnh lịch

*Đại và Mai trên đường về sau buổi khám. Mai im lặng nhìn ra cửa sổ.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, nắm tay Mai) Em ơi, anh đã quyết định. Từ tuần sau anh giảm giờ làm từ 50h → 35h/tuần. Về 17h thay vì 19h. |
| Mai | (VN, mắt rưng rưng) Series A đang cao điểm. Anh giảm được không? |
| Đại | (VN) Em với bé Đông quan trọng hơn Series A. Anh đã nói với Tuấn rồi — anh ấy gánh hộ. |
| Mai | (VN) Em ngại. Lỡ mọi chuyện trễ thì sao? |
| Đại | (VN) Em đừng ngại. Anri lead đã chốt, JAFCO, DG, WiL đã accept. Cá đã trong giỏ. DD là việc của lawyer Suzuki + Tuấn + Tanaka. |
| Mai | (VN) Cảm ơn anh. Em lo lắm anh ạ. Lần đầu sinh Hana em không cao huyết áp. |
| Đại | (VN) Anh sẽ đặt mua máy đo huyết áp Omron, mỗi sáng tối đo cho em. Nấu ăn anh đảm nhận. Mát-xa chân tối 30 phút. |
| Mai | (VN, cười nhẹ) Anh nghiêm túc đấy chứ? |
| Đại | (VN) Nghiêm túc. Bài học từ Yutaka-san — gia đình trước. |

---

## Tình huống 10 — Slack #hizashi-team · 6/10 20:00, Đại thông báo

| Vai | Lời thoại |
|---|---|
| Đại | (Slack JP) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>個人的<rt>こじんてき</rt></ruby>な<ruby>件<rt>けん</rt></ruby>でお<ruby>知<rt>し</rt></ruby>らせがあります。<br>*(Mọi người, có việc cá nhân báo.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>検診<rt>けんしん</rt></ruby>でマイの<ruby>軽度<rt>けいど</rt></ruby><ruby>妊娠高血圧<rt>にんしんこうけつあつ</rt></ruby>が<ruby>判明<rt>はんめい</rt></ruby>しました。<ruby>来週<rt>らいしゅう</rt></ruby>より<ruby>勤務<rt>きんむ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>50<rt>ごじゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>/<ruby>週<rt>しゅう</rt></ruby>から<ruby>35<rt>さんじゅうご</rt></ruby><ruby>時間<rt>じかん</rt></ruby>/<ruby>週<rt>しゅう</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>させていただきます。<br>*(Khám hôm nay phát hiện Mai cao huyết áp thai kỳ nhẹ. Từ tuần sau em điều chỉnh giờ làm 50h/tuần → 35h/tuần.)* |
| Đại | <ruby>退社<rt>たいしゃ</rt></ruby>は<ruby>17時<rt>じゅうしちじ</rt></ruby>とさせていただきます。Series Aクローズに<ruby>影響<rt>えいきょう</rt></ruby>がないよう、DDの<ruby>窓口対応<rt>まどぐちたいおう</rt></ruby>はトゥアンさんと<ruby>田中<rt>たなか</rt></ruby>さんに<ruby>分担<rt>ぶんたん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tan làm 17h. Để không ảnh hưởng Series A close, đầu mối DD nhờ Tuấn-san và Tanaka-san chia tải.)* |
| Tuấn | (Slack VN) Em! Gia đình trước tất cả. Anh lo phần Series A. Em yên tâm với Mai. |
| Tanaka | (Slack JP) ダイさん、<ruby>家族<rt>かぞく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>で<ruby>当然<rt>とうぜん</rt></ruby>です。DD<ruby>窓口<rt>まどぐち</rt></ruby><ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Đại-san, gia đình ưu tiên đương nhiên. Đầu mối DD tôi nhận.)* |
| Aiko | (Slack JP) マイさんにお<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Chúc Mai-san sức khoẻ.)* |
| Sakura | (Slack JP) <ruby>桜<rt>さくら</rt></ruby>もできることがあれば<ruby>言<rt>い</rt></ruby>ってください!<br>*(Sakura nếu giúp được gì xin nói!)* |
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Mọi người thực sự cảm ơn.)* |

---

## Tình huống 11 — Apt Senri-chuo bếp · 18:30, Đại nấu cơm ít muối

*Đại tan làm 17h, đến siêu thị Daiei mua nguyên liệu, về nấu cơm. Mai nằm sofa nghỉ. Hana ngồi bàn ăn vẽ.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, vào bếp) Em ơi, hôm nay anh nấu canh đậu hũ rong biển + cá saba nướng + rau luộc. Không nêm muối đâu nhé. |
| Mai | (VN, từ sofa) Cảm ơn anh. Em xin lỗi để anh nấu. |
| Đại | (VN) Em đừng xin lỗi. Đây là việc anh phải làm. |
| Hana | (VN) Bố! Bố nấu sao đỏ? Bố vẽ sao đỏ nha! |
| Đại | (VN, cười) Vẽ sao đỏ á? Bố làm xong cơm rồi vẽ với con. |
| Mai | (VN) Anh ơi 6h Tuấn gọi anh không? |
| Đại | (VN) Tuấn gọi rồi. DD audit team CodeClimate sang tuần. Anh cho lịch online. Không phải đi gấp đâu. |
| Mai | (VN) Tốt. Anh đo huyết áp cho em xong. |

---

## Tình huống 12 — Email lawyer Suzuki · 25/10, term sheet final

| Vai | Lời thoại |
|---|---|
| Sato-san (Anri) | (email JP) <ruby>件名<rt>けんめい</rt></ruby>: Hizashi Series A タームシート<ruby>最終<rt>さいしゅう</rt></ruby>ドラフトv3<br><br>ダイさん<br><br>タームシートの<ruby>最終<rt>さいしゅう</rt></ruby>ドラフトをお<ruby>送<rt>おく</rt></ruby>りいたします。JAFCO・DG・WiLとも<ruby>合意<rt>ごうい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br><br><ruby>主要<rt>しゅよう</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>:<br>・<ruby>調達額<rt>ちょうたつがく</rt></ruby><ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>(オーバーサブスクライブ)<br>・プレマネー<ruby>10億円<rt>じゅうおくえん</rt></ruby>/ポストマネー<ruby>12.3億円<rt>じゅうにてんさんおくえん</rt></ruby><br>・Series A <ruby>優先株式<rt>ゆうせんかぶしき</rt></ruby><br>・<ruby>残余財産分配優先権<rt>ざんよざいさんぶんぱいゆうせんけん</rt></ruby> 1x non-participating<br>・<ruby>希薄化防止条項<rt>きはくかぼうしじょうこう</rt></ruby> weighted average broad-based<br>・<ruby>取締役会<rt>とりしまりやくかい</rt></ruby> <ruby>5名<rt>ごめい</rt></ruby>(<ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>2名<rt>にめい</rt></ruby>+Anri <ruby>1名<rt>いちめい</rt></ruby>+JAFCO <ruby>1名<rt>いちめい</rt></ruby>+<ruby>独立<rt>どくりつ</rt></ruby><ruby>1名<rt>いちめい</rt></ruby>)<br><br><ruby>来週<rt>らいしゅう</rt></ruby>サインで<ruby>進<rt>すす</rt></ruby>めても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか?<br>*(Tuần sau ký được không?)* |
| Đại | (reply JP) <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby><br><br>タームシート<ruby>確認<rt>かくにん</rt></ruby>いたしました。<ruby>鈴木<rt>すずき</rt></ruby><ruby>弁護士<rt>べんごし</rt></ruby>のレビューも<ruby>完了<rt>かんりょう</rt></ruby>し、<ruby>問題<rt>もんだい</rt></ruby>ございません。<br><br><ruby>11月<rt>じゅういちがつ</rt></ruby><ruby>1日<rt>ついたち</rt></ruby><ruby>14時<rt>じゅうよじ</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby>WeWorkでサインセレモニーを<ruby>開催<rt>かいさい</rt></ruby>いたします。<ruby>共同投資家<rt>きょうどうとうしか</rt></ruby><ruby>各社<rt>かくしゃ</rt></ruby>もお<ruby>越<rt>こ</rt></ruby>しいただけますと<ruby>幸<rt>さいわ</rt></ruby>いです。<br><br>よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br><br>グエン・ダイ |

---

## Tình huống 13 — Tối nhà · 28/10 22:00, Đại + Mai trò chuyện

| Vai | Lời thoại |
|---|---|
| Mai | (VN, sofa, kê chân lên gối) Anh ơi, huyết áp em hôm nay 128/82. Giảm rồi. |
| Đại | (VN, ngồi cạnh) Tốt quá em. Ăn nhạt + nghỉ ngơi 3 tuần đã hiệu quả. |
| Mai | (VN) Em cảm ơn anh. Anh giảm giờ làm, nấu ăn, mát-xa, đo huyết áp 2 lần/ngày. Em xúc động thật. |
| Đại | (VN) Em đừng cảm ơn. Đây là việc anh phải làm. Tháng sau ký term sheet 1/11, DD 4 tuần, close 30/11. Sau đó 育休. |
| Mai | (VN) Anh có nhớ tháng 12 năm ngoái anh burnout vì khủng hoảng Thanh Hà? |
| Đại | (VN) Anh nhớ rất rõ em ạ. Năm đó tệ. Sút 4kg, mất ngủ. |
| Mai | (VN) Năm nay khác rồi. Anh trưởng thành thật. |
| Đại | (VN) Vì có em. Có Hana. Sắp có Đông. Anh không cho phép mình tệ nữa. |
| Mai | (VN, đặt tay lên tay Đại) Em yêu anh. |

---

## Tình huống 14 — Cảnh tiếng Việt cuối tháng · 31/10 23:00, Đại gọi bố mẹ HN

| Vai | Lời thoại |
|---|---|
| Đại | (VN, Zalo video) Bố mẹ ơi! Con báo cáo tháng. |
| Bố Đại | (VN) Con! Sao trông gầy thế? Vợ Mai ổn không? |
| Đại | (VN) Mai tuần 32 rồi bố ạ. Đợt trước cao huyết áp nhẹ, giờ giảm rồi. Con giảm giờ làm về 17h nấu cơm. |
| Mẹ Đại | (VN) Con biết ăn nhạt cho Mai chưa? Mẹ chỉ con: cá hấp + canh rong biển + đậu hũ luộc. Không nêm muối, chỉ thêm gừng tỏi. |
| Đại | (VN) Vâng mẹ. Con đã làm thế. Hana cũng ăn nhạt theo. Bé bảo "cơm bố không có vị" mẹ ạ. |
| Mẹ Đại | (VN, cười) Cháu yêu! Để bà sang dạy cháu thật vị Việt Nam. |
| Bố Đại | (VN) Series A của con sao rồi? |
| Đại | (VN) Bố ơi tuần sau con ký term sheet 1/11. ¥230 triệu yên ạ. |
| Bố Đại | (VN, lặng) Con ơi. Bố không hiểu hết con số đó nghĩa là gì. Nhưng bố biết con đã đi xa rồi. |
| Đại | (VN, nghẹn) Bố ơi. Con cảm ơn bố mẹ đã cho con đi du học. Không có bố mẹ thì không có con của ngày hôm nay. |
| Mẹ Đại | (VN) Bố mẹ tự hào. Bố mẹ sẽ sang sau Tết âm gặp bé Đông. |
| Đại | (VN) Con đợi bố mẹ. Yêu bố mẹ. |
| Bố Đại | (VN) Bố mẹ yêu con. Ngủ ngon. |

---

## Đọng lại chương 7

Pitch tour Series A 6 tuần: JAFCO Sasaki-san accept ngay buổi đầu sau câu trả lời moat cứng — Genie/Ringle/Duolingo positioning chuẩn; DG Honda-san follow-on ¥30M sau câu hỏi IPO timeline được đáp **「<ruby>5年<rt>ごねん</rt></ruby>から<ruby>7年後<rt>ななねんご</rt></ruby>、ARR <ruby>30億<rt>さんじゅうおく</rt></ruby>から<ruby>50億円<rt>ごじゅうおくえん</rt></ruby>でグロース<ruby>市場<rt>しじょう</rt></ruby>へのIPO」**; WiL meeting Zoom bilingual JP↔EN với Mark Suzuki SF partner — Đại switch ngôn ngữ trơn tru về US expansion. Tổng ¥230M oversubscribed (vượt mục tiêu ¥200M) trong 4 tuần — tốc độ hiếm thấy. Đồng thời 6/10 phát hiện Mai cao huyết áp thai kỳ nhẹ — Đại điều chỉnh ngay **「<ruby>勤務時間<rt>きんむじかん</rt></ruby>を<ruby>50<rt>ごじゅう</rt></ruby>から<ruby>35<rt>さんじゅうご</rt></ruby><ruby>時間<rt>じかん</rt></ruby>/<ruby>週<rt>しゅう</rt></ruby>に<ruby>調整<rt>ちょうせい</rt></ruby>」**, tan làm 17h, tự nấu ăn nhạt, mát-xa, đo huyết áp 2 lần/ngày. Term sheet ký 1/11. Tuần 35 Mai huyết áp giảm 128/82. Cuối chương Đại gọi bố mẹ HN qua Zalo — bố lặng người khi nghe ¥230M.

> Từ vựng & mẫu câu chương này: <ruby>共同創業者<rt>きょうどうそうぎょうしゃ</rt></ruby>・<ruby>差別化<rt>さべつか</rt></ruby>・<ruby>横断的<rt>おうだんてき</rt></ruby>NLP・<ruby>明確<rt>めいかく</rt></ruby>な<ruby>回答<rt>かいとう</rt></ruby>・<ruby>共同投資<rt>きょうどうとうし</rt></ruby>・フォローオン<ruby>投資<rt>とうし</rt></ruby>・<ruby>長期<rt>ちょうき</rt></ruby><ruby>展望<rt>てんぼう</rt></ruby>・グロース<ruby>市場<rt>しじょう</rt></ruby>・オーバーサブスクライブ・キャップテーブル・<ruby>希薄化<rt>きはくか</rt></ruby>・<ruby>妊娠高血圧<rt>にんしんこうけつあつ</rt></ruby>・<ruby>塩分制限<rt>えんぶんせいげん</rt></ruby>・<ruby>勤務時間<rt>きんむじかん</rt></ruby>を<ruby>調整<rt>ちょうせい</rt></ruby>・DD<ruby>窓口<rt>まどぐち</rt></ruby>・タームシート・<ruby>残余財産分配優先権<rt>ざんよざいさんぶんぱいゆうせんけん</rt></ruby>・<ruby>希薄化防止条項<rt>きはくかぼうしじょうこう</rt></ruby>・<ruby>取締役会<rt>とりしまりやくかい</rt></ruby>・<ruby>普通分娩<rt>ふつうぶんべん</rt></ruby>

## Bí quyết chương

- **Cấu trúc trả lời câu hỏi cứng của VC**: 「はい、ありがとうございます」→ acknowledge câu hỏi → trả lời cụ thể có số/tên cạnh tranh → close với positioning statement. Sasaki-san test bạn có nghiên cứu thị trường không
- **Switch JP↔EN trong cuộc gọi VC**: KHÔNG xin lỗi, KHÔNG do dự. Nghe JP → respond JP. Nghe EN → respond EN. Hayashi (JP partner) và Mark (US partner) đều cảm thấy được tôn trọng
- **Báo cáo round update qua Slack JP**: dùng cấu trúc 「<ruby>合計<rt>ごうけい</rt></ruby>〜で、<ruby>目標<rt>もくひょう</rt></ruby>の〜を<ruby>上回<rt>うわまわ</rt></ruby>るオーバーサブスクライブ」 — câu chốt mạnh tự nhiên
- **Thông báo điều chỉnh giờ làm vì gia đình**: 「<ruby>勤務時間<rt>きんむじかん</rt></ruby>を〜から〜に<ruby>調整<rt>ちょうせい</rt></ruby>させていただきます」 — keigo nhẹ, không xin lỗi quá mức. Tanaka ex-Mercari/Aiko tôn trọng founder dám đặt gia đình lên trên
- **Hỏi bác sĩ "vai trò người chồng"**: 「<ruby>夫<rt>おっと</rt></ruby>として<ruby>気<rt>き</rt></ruby>をつけるべきこと」 — câu mở quan trọng, bác sĩ sản khoa Nhật cực thiện cảm. Trả lời thường có 3 điểm cụ thể: ăn uống + giấc ngủ + giảm stress

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 横断的 | おうだんてき | HOÀNH ĐOẠN ĐÍCH | xuyên suốt, cross |
| 独自 | どくじ | ĐỘC TỰ | riêng, độc đáo |
| 強み | つよみ | CƯỜNG | điểm mạnh |
| 不十分 | ふじゅうぶん | BẤT THẬP PHÂN | không đủ |
| 深掘り | ふかぼり | THÂM QUẬT | đào sâu |
| 協調 | きょうちょう | HIỆP ĐIỆU | phối hợp |
| 継続 | けいぞく | KẾ TỤC | tiếp tục |
| 信頼 | しんらい | TÍN LẠI | tin tưởng |
| 長期展望 | ちょうきてんぼう | TRƯỜNG KỲ TRIỂN VỌNG | tầm nhìn dài hạn |
| 現実的 | げんじつてき | HIỆN THỰC ĐÍCH | thực tế |
| 堅実 | けんじつ | KIÊN THỰC | vững vàng |
| 計画 | けいかく | KẾ HOẠCH | kế hoạch |
| 母国語 | ぼこくご | MẪU QUỐC NGỮ | tiếng mẹ đẻ |
| 経過報告 | けいかほうこく | KINH QUÁ BÁO CÁO | báo cáo tiến độ |
| 平均 | へいきん | BÌNH QUÂN | trung bình |
| 創業者 | そうぎょうしゃ | SÁNG NGHIỆP GIẢ | nhà sáng lập |
| 健全 | けんぜん | KIỆN TOÀN | lành mạnh |
| 血圧 | けつあつ | HUYẾT ÁP | huyết áp |
| 正常値 | せいじょうち | CHÍNH THƯỜNG TRỊ | giá trị bình thường |
| 軽度 | けいど | KHINH ĐỘ | mức nhẹ |
| 妊娠高血圧 | にんしんこうけつあつ | NHÂM THẦN CAO HUYẾT ÁP | cao huyết áp thai kỳ |
| 該当 | がいとう | CAI ĐƯƠNG | tương ứng |
| 安心 | あんしん | AN TÂM | yên tâm |
| 塩分制限 | えんぶんせいげん | DIÊM PHÂN CHẾ HẠN | hạn chế muối |
| 血圧測定 | けつあつそくてい | HUYẾT ÁP TRẮC ĐỊNH | đo huyết áp |
| 管理 | かんり | QUẢN LÝ | quản lý |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | khả năng |
| 家庭 | かてい | GIA ĐÌNH | gia đình |
| 抑える | おさえる | ỨC | hạn chế, ép xuống |
| 睡眠 | すいみん | THUỴ MIÊN | giấc ngủ |
| 持ち込む | もちこむ | TRÌ NHẬP | mang vào |
| 判明 | はんめい | PHÁN MINH | làm rõ |
| 勤務時間 | きんむじかん | CẦN VỤ THỜI GIAN | giờ làm việc |
| 調整 | ちょうせい | ĐIỀU CHỈNH | điều chỉnh |
| 退社 | たいしゃ | THOÁI XÃ | tan làm |
| 窓口対応 | まどぐちたいおう | SONG KHẨU ĐỐI ỨNG | đầu mối xử lý |
| 分担 | ぶんたん | PHÂN ĐẢM | chia sẻ |
| 家族優先 | かぞくゆうせん | GIA TỘC ƯU TIÊN | gia đình ưu tiên |
| 合意 | ごうい | HỢP Ý | đồng thuận |
| 調達額 | ちょうたつがく | ĐIỀU ĐẠT NGẠCH | số tiền huy động |
| 優先株式 | ゆうせんかぶしき | ƯU TIÊN CỔ THỨC | cổ phần ưu đãi |
| 残余財産分配優先権 | ざんよざいさんぶんぱいゆうせんけん | TÀN DƯ TÀI SẢN PHÂN PHỐI ƯU TIÊN QUYỀN | quyền ưu tiên phân chia tài sản còn lại |
| 希薄化防止条項 | きはくかぼうしじょうこう | HY BẠC HOÁ PHÒNG CHỈ ĐIỀU HẠNG | điều khoản chống pha loãng |
| 取締役会 | とりしまりやくかい | THỦ ĐẾ DỊCH HỘI | hội đồng quản trị |
| 弁護士 | べんごし | BIỆN HỘ SĨ | luật sư |
| 開催 | かいさい | KHAI THÔI | tổ chức |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000008, 800000026, NULL, 'markdown_book', 'T8. Due Diligence & Series A close ¥230M (DD交渉とクロージング)', '# Sách kỹ sư cầu nối & khởi nghiệp · T8. Due Diligence & Series A close ¥230M (DD交渉とクロージング)

> **Mục tiêu nhân vật:** Đại 26 tuổi (11/2031). Học mẫu hội thoại tiếng Nhật của founder trong giai đoạn Due Diligence & close: (1) phát biểu ký term sheet trước 4 đối tác VC, (2) tour tech audit với CodeClimate + Mighty Trust security kiểm tra viên, (3) làm việc với luật sư Nhật Bản qua Zoom về legal DD, (4) gọi customer reference với enterprise + power user, (5) trao đổi với bác sĩ sản khoa về 立ち会い分娩, (6) phát biểu chính thức trước team ngày close.

---

## Bối cảnh

11/2031, Osaka. Term sheet ký 1/11. DD launch 5/11 — 4 tuần song song: Tech (CodeClimate + Mighty Trust), Legal (lawyer Suzuki Tokyo), Financial (CPA review), Commercial (5 customer reference calls). Mai 33-36 tuần — huyết áp đã ổn 128/82. Hana 3 tuổi 2 tháng. Bố mẹ HN + Tony+Yumi đã book vé sang Nhật 20-22/12. Đại 育休 từ 15/12, bé Đông dự sinh 25/12. Series A close target 30/11. Chương này tập trung **keigo trang trọng ngày sign**, **tour tech audit**, **customer reference call**, **làm việc với luật sư Nhật**.

---

## Tình huống 1 — WeWork Osaka boardroom · 1/11 14:00, term sheet sign ceremony

*Sato-san Anri + Sasaki-san JAFCO + Honda-san DG + Hayashi-san WiL đều bay xuống Osaka. Đại + Tuấn + Aiko đứng đầu phòng. Đại mặc vest navy.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>遠路<rt>えんろ</rt></ruby>はるばる<ruby>大阪<rt>おおさか</rt></ruby>までお<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Hôm nay quý anh chị đã không quản đường xa tới Osaka, em xin chân thành cảm ơn.)* |
| Đại | <ruby>本日<rt>ほんじつ</rt></ruby>、Hizashi Series Aタームシートを<ruby>正式<rt>せいしき</rt></ruby>に<ruby>締結<rt>ていけつ</rt></ruby>させていただきます。リード<ruby>投資家<rt>とうしか</rt></ruby>の<ruby>安里<rt>あんり</rt></ruby><ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>共同投資家<rt>きょうどうとうしか</rt></ruby>のJAFCO <ruby>佐々木<rt>ささき</rt></ruby><ruby>様<rt>さま</rt></ruby>、DG <ruby>本田<rt>ほんだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、WiL <ruby>林<rt>はやし</rt></ruby><ruby>様<rt>さま</rt></ruby>、お<ruby>力添<rt>ちからぞ</rt></ruby>えをいただき、<ruby>感謝<rt>かんしゃ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>もございません。<br>*(Hôm nay chính thức ký Term Sheet Series A Hizashi. Lead Anri Sato-sama, đồng đầu tư JAFCO Sasaki-sama, DG Honda-sama, WiL Hayashi-sama, đã hỗ trợ chúng tôi không lời nào diễn tả nổi.)* |
| Sato-san | ダイさん、トゥアンさん、<ruby>愛子<rt>あいこ</rt></ruby>さん、おめでとうございます。<br>*(Đại-san, Tuấn-san, Aiko-san, chúc mừng.)* |
| Đại | では、<ruby>署名<rt>しょめい</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>らせていただきます。<br>*(Xin phép chuyển sang phần ký.)* |
| (Lễ ký 4 bản × 7 chữ ký) | |
| Sasaki | (sau khi ký, cười) Series A <ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>、デューデリ<ruby>4週間<rt>よんしゅうかん</rt></ruby>、クローズは<ruby>11月<rt>じゅういちがつ</rt></ruby><ruby>30日<rt>さんじゅうにち</rt></ruby>ですね。Hizashiの<ruby>新<rt>あたら</rt></ruby>しい<ruby>章<rt>しょう</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりです。<br>*(Series A ¥230M, DD 4 tuần, close 30/11. Khởi đầu chương mới của Hizashi.)* |
| Đại | <ruby>身<rt>み</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです。<ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>の<ruby>機関投資家<rt>きかんとうしか</rt></ruby><ruby>資本<rt>しほん</rt></ruby>、<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>運用<rt>うんよう</rt></ruby>させていただきます。<br>*(Em thấy trách nhiệm nặng. ¥230M vốn institutional, em sẽ vận hành cẩn thận.)* |
| (Khui champagne. Aiko chụp ảnh. Tony gọi từ Aichi xem livestream.) | |

---

## Tình huống 2 — WeWork meeting room · 5/11 10:00, đón CodeClimate + Mighty Trust kiểm tra viên

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>田中<rt>たなか</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>山田<rt>やまだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。Hizashi CEOのグエン・ダイです。<br>*(Tanaka-sama, Yamada-sama, hôm nay cảm ơn quý anh đã đến. Tôi là Nguyễn Đại, CEO Hizashi.)* |
| Itou (CodeClimate, 38t) | コードクライメートの<ruby>伊藤<rt>いとう</rt></ruby>です。<ruby>本日<rt>ほんじつ</rt></ruby>より<ruby>2週間<rt>にしゅうかん</rt></ruby>、コードベースの<ruby>監査<rt>かんさ</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>させていただきます。<br>*(Tanaka của CodeClimate. Từ hôm nay 2 tuần, tôi phụ trách audit codebase.)* |
| Yamada (Mighty Trust security) | マイティ・トラストの<ruby>山田<rt>やまだ</rt></ruby>です。<ruby>同時<rt>どうじ</rt></ruby>にペネトレーション<ruby>試験<rt>しけん</rt></ruby>とOWASP Top 10、GDPR・APPI<ruby>準拠<rt>じゅんきょ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>います。<br>*(Yamada của Mighty Trust. Đồng thời tôi thực hiện penetration test, OWASP Top 10, kiểm tra tuân thủ GDPR/APPI.)* |
| Đại | <ruby>承知<rt>しょうち</rt></ruby>いたしました。CTOのトゥアンより<ruby>1時間<rt>いちじかん</rt></ruby>のテックツアーをご<ruby>案内<rt>あんない</rt></ruby>させていただきます。<br>*(Vâng. CTO Tuấn sẽ dẫn tour kỹ thuật 1 tiếng.)* |
| Tuấn | はい、CTOのトゥアンです。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れは<ruby>5部構成<rt>ごぶこうせい</rt></ruby>です:<ruby>1<rt>いち</rt></ruby>、アーキテクチャ<ruby>概要<rt>がいよう</rt></ruby>。<ruby>2<rt>に</rt></ruby>、コードリポジトリツアー(バックエンド、Flutterフロント、<ruby>管理画面<rt>かんりがめん</rt></ruby>の<ruby>3<rt>みっ</rt></ruby>つ)。<ruby>3<rt>さん</rt></ruby>、AWSインフラ。<ruby>4<rt>よん</rt></ruby>、データプライバシーとGDPR<ruby>準拠<rt>じゅんきょ</rt></ruby>。<ruby>5<rt>ご</rt></ruby>、CI/CDとオブザーバビリティ(Sentry+Datadog)です。<br>*(CTO Tuấn. Hôm nay 5 phần: 1) Architecture overview, 2) Code repo tour (BE, Flutter FE, admin), 3) AWS infra, 4) Data privacy & GDPR, 5) CI/CD & observability.)* |
| Tanaka (CodeClimate) | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>構成<rt>こうせい</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Bố cục tốt. Nhờ anh.)* |

---

## Tình huống 3 — WeWork code review room · 5/11 11:30, Tanaka kiểm tra viên hỏi về test coverage

| Vai | Lời thoại |
|---|---|
| Tanaka (CodeClimate) | トゥアンさん、<ruby>1点<rt>いってん</rt></ruby><ruby>質問<rt>しつもん</rt></ruby>させてください。バックエンドのテストカバレッジ、<ruby>現在<rt>げんざい</rt></ruby>の<ruby>数字<rt>すうじ</rt></ruby>はいかがでしょうか?<br>*(Tuấn-san, cho tôi hỏi 1 câu. Test coverage backend hiện tại bao nhiêu?)* |
| Tuấn | バックエンドは<ruby>78%<rt>ななじゅうはちパーセント</rt></ruby>です。Flutterフロントは<ruby>52%<rt>ごじゅうにパーセント</rt></ruby>です。<br>*(Backend 78%. Flutter FE 52%.)* |
| Tanaka | フロントの<ruby>52%<rt>ごじゅうにパーセント</rt></ruby>は<ruby>低<rt>ひく</rt></ruby>めですね。<ruby>改善<rt>かいぜん</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>はおありですか?<br>*(FE 52% hơi thấp. Có kế hoạch cải thiện không?)* |
| Tuấn | はい、v2.1で<ruby>70%<rt>ななじゅっパーセント</rt></ruby>まで<ruby>引<rt>ひ</rt></ruby>き<ruby>上<rt>あ</rt></ruby>げる<ruby>計画<rt>けいかく</rt></ruby>です。<ruby>具体的<rt>ぐたいてき</rt></ruby>には、Widget testを<ruby>200<rt>にひゃく</rt></ruby><ruby>件<rt>けん</rt></ruby><ruby>追加<rt>ついか</rt></ruby>し、Integration testを<ruby>主要<rt>しゅよう</rt></ruby>フロー<ruby>15<rt>じゅうご</rt></ruby><ruby>本<rt>ほん</rt></ruby>で<ruby>整備<rt>せいび</rt></ruby>します。<br>*(Vâng, v2.1 nâng lên 70%. Cụ thể thêm 200 Widget test + 15 Integration test cho main flow.)* |
| Tanaka | <ruby>明確<rt>めいかく</rt></ruby>な<ruby>計画<rt>けいかく</rt></ruby>です。<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Kế hoạch rõ. Đã hiểu.)* |

---

## Tình huống 4 — Zoom Tokyo · 12/11 14:00, lawyer Suzuki legal DD bảng kiểm

| Vai | Lời thoại |
|---|---|
| Luật sư Suzuki | (60t, Anri legal counsel) ダイさん、トゥアンさん、<ruby>本日<rt>ほんじつ</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。リーガルDDのチェックリスト<ruby>7項目<rt>ななこうもく</rt></ruby>です。<br>*(Đại-san, Tuấn-san, hôm nay nhờ. Bảng kiểm legal DD 7 mục.)* |
| Suzuki | <ruby>1<rt>いち</rt></ruby>、<ruby>定款<rt>ていかん</rt></ruby>。<ruby>2<rt>に</rt></ruby>、<ruby>株主名簿<rt>かぶぬしめいぼ</rt></ruby>。<ruby>3<rt>さん</rt></ruby>、<ruby>取締役会議事録<rt>とりしまりやくかいぎじろく</rt></ruby>。<ruby>4<rt>よん</rt></ruby>、IP <ruby>譲渡契約<rt>じょうとけいやく</rt></ruby>(<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>+<ruby>従業員<rt>じゅうぎょういん</rt></ruby><ruby>分<rt>ぶん</rt></ruby>)。<ruby>5<rt>ご</rt></ruby>、<ruby>労働契約書<rt>ろうどうけいやくしょ</rt></ruby>。<ruby>6<rt>ろく</rt></ruby>、<ruby>顧客契約書<rt>こきゃくけいやくしょ</rt></ruby>(タンハーさん+エンタープライズリード<ruby>5社<rt>ごしゃ</rt></ruby>)。<ruby>7<rt>なな</rt></ruby>、<ruby>知財<rt>ちざい</rt></ruby>(Hizashi<ruby>商標<rt>しょうひょう</rt></ruby> JP+KR+ZH+VN)。<br>*(1) Điều lệ, 2) Sổ cổ đông, 3) Biên bản HĐQT, 4) Hợp đồng chuyển nhượng IP (founder + nhân viên), 5) Hợp đồng lao động, 6) Hợp đồng khách hàng (Thanh A + 5 enterprise lead), 7) Sở hữu trí tuệ (trademark Hizashi 4 nước).)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>全項目<rt>ぜんこうもく</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。Notion<ruby>共有<rt>きょうゆう</rt></ruby>フォルダのアクセス<ruby>権<rt>けん</rt></ruby>を<ruby>付与<rt>ふよ</rt></ruby>いたします。<ruby>本日<rt>ほんじつ</rt></ruby><ruby>夕方<rt>ゆうがた</rt></ruby>までにご<ruby>確認<rt>かくにん</rt></ruby>いただける<ruby>形<rt>かたち</rt></ruby>でいかがでしょうか?<br>*(Thưa luật sư, tất cả đã sẵn sàng. Em cấp quyền Notion shared folder. Đến chiều nay anh xem được không?)* |
| Suzuki | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>準備<rt>じゅんび</rt></ruby>ですね!<ruby>1週間以内<rt>いっしゅうかんいない</rt></ruby>にレビューを<ruby>完了<rt>かんりょう</rt></ruby>させていただきます。<br>*(Chuẩn bị tuyệt vời! Trong 1 tuần tôi review xong.)* |
| Đại | ご<ruby>不明点<rt>ふめいてん</rt></ruby>があれば、いつでも<ruby>連絡<rt>れんらく</rt></ruby>いただければと<ruby>思<rt>おも</rt></ruby>います。<br>*(Có gì không rõ xin liên hệ bất cứ lúc nào.)* |
| Suzuki | <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Vâng.)* |

---

## Tình huống 5 — Zoom · 15/11 10:00, customer reference call với Takahashi-CEO Thanh Hà

*Đại + Sato-san Anri + Takahashi-CEO Thanh A cùng tham gia Zoom. Cuộc gọi 30 phút.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>高橋<rt>たかはし</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<br>*(Takahashi-sama, Sato-sama, hôm nay cảm ơn quý anh dành thời gian.)* |
| Sato | <ruby>高橋<rt>たかはし</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はSeries Aのカスタマーリファレンスとして<ruby>3つ<rt>みっ</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>をさせてください。<ruby>15分<rt>じゅうごふん</rt></ruby><ruby>程度<rt>ていど</rt></ruby>です。<br>*(Takahashi-san, hôm nay là customer reference Series A xin hỏi 3 câu. Khoảng 15 phút.)* |
| Takahashi | <ruby>承知<rt>しょうち</rt></ruby>しました。どうぞ。<br>*(Vâng, mời.)* |
| Sato | <ruby>1点目<rt>いってんめ</rt></ruby>、Hizashiの<ruby>導入<rt>どうにゅう</rt></ruby><ruby>効果<rt>こうか</rt></ruby>を<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Câu 1, cho biết hiệu quả triển khai Hizashi cụ thể.)* |
| Takahashi | はい。<ruby>当社<rt>とうしゃ</rt></ruby><ruby>50名<rt>ごじゅうめい</rt></ruby>のベトナム<ruby>人<rt>じん</rt></ruby>エンジニアが<ruby>使<rt>つか</rt></ruby>っており、JLPT N3<ruby>合格率<rt>ごうかくりつ</rt></ruby>が<ruby>導入前<rt>どうにゅうまえ</rt></ruby>の<ruby>30%<rt>さんじゅっパーセント</rt></ruby>から<ruby>導入後<rt>どうにゅうご</rt></ruby><ruby>1年<rt>いちねん</rt></ruby>で<ruby>65%<rt>ろくじゅうごパーセント</rt></ruby>に<ruby>上昇<rt>じょうしょう</rt></ruby>しました。お<ruby>客様<rt>きゃくさま</rt></ruby>との<ruby>会議<rt>かいぎ</rt></ruby>で<ruby>通訳<rt>つうやく</rt></ruby>なしで<ruby>進行<rt>しんこう</rt></ruby>できるエンジニアが<ruby>倍増<rt>ばいぞう</rt></ruby>です。<br>*(50 engineer VN của chúng tôi dùng, tỷ lệ đỗ JLPT N3 từ 30% lên 65% sau 1 năm. Engineer chủ trì meeting với khách không cần phiên dịch tăng gấp đôi.)* |
| Sato | <ruby>2点目<rt>にてんめ</rt></ruby>、<ruby>競合<rt>きょうごう</rt></ruby>サービスとの<ruby>比較<rt>ひかく</rt></ruby>はいかがでしょうか?<br>*(Câu 2, so sánh với competitor thế nào?)* |
| Takahashi | DuolingoとAnkiも<ruby>試<rt>ため</rt></ruby>しましたが、ビジネス<ruby>敬語<rt>けいご</rt></ruby>のカバーが<ruby>不十分<rt>ふじゅうぶん</rt></ruby>でした。Hizashiは<ruby>敬語<rt>けいご</rt></ruby>+<ruby>業種別<rt>ぎょうしゅべつ</rt></ruby>(IT・<ruby>製造業<rt>せいぞうぎょう</rt></ruby>・<ruby>介護<rt>かいご</rt></ruby>)<ruby>会話<rt>かいわ</rt></ruby>まで<ruby>網羅<rt>もうら</rt></ruby>しており、エンジニア<ruby>向<rt>む</rt></ruby>けには<ruby>最適<rt>さいてき</rt></ruby>です。<br>*(Đã thử Duolingo và Anki, cover keigo business không đủ. Hizashi cover keigo + hội thoại ngành (IT, sản xuất, điều dưỡng), tối ưu cho engineer.)* |
| Sato | <ruby>3点目<rt>さんてんめ</rt></ruby>、ダイさん<ruby>個人<rt>こじん</rt></ruby>への<ruby>評価<rt>ひょうか</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Câu 3, đánh giá cá nhân Đại-san.)* |
| Takahashi | ダイさんは<ruby>2024年<rt>にせんにじゅうよねん</rt></ruby><ruby>当社<rt>とうしゃ</rt></ruby>インターン<ruby>時代<rt>じだい</rt></ruby>から<ruby>知<rt>し</rt></ruby>っています。<ruby>誠実<rt>せいじつ</rt></ruby>、<ruby>勤勉<rt>きんべん</rt></ruby>、<ruby>顧客視点<rt>こきゃくしてん</rt></ruby>を<ruby>常<rt>つね</rt></ruby>に<ruby>持<rt>も</rt></ruby>つ<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>です。<ruby>長期投資<rt>ちょうきとうし</rt></ruby>に<ruby>値<rt>あたい</rt></ruby>するリーダーだと<ruby>確信<rt>かくしん</rt></ruby>しております。<br>*(Tôi biết Đại-san từ thời thực tập tại công ty 2024. Trung thực, chăm chỉ, luôn có góc nhìn khách hàng. Tôi tin chắc là leader xứng đáng đầu tư dài hạn.)* |
| Đại | (cúi đầu, JP) <ruby>高橋<rt>たかはし</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>過分<rt>かぶん</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>をありがとうございます。<ruby>身<rt>み</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです。<br>*(Takahashi-sama, cảm ơn anh đã quá lời. Em thấy trách nhiệm nặng.)* |

---

## Tình huống 6 — Zoom · 18/11 19:00, customer reference call với Trang (power user)

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Chị Trang ơi, em Đại đây. Cảm ơn chị đã nhận lời. |
| Trang | (VN, 28t, BrSE Tokyo) Em ơi! Trang đây. Hizashi cứu cuộc đời chị mà. |
| Sato | (JP) <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<ruby>安里<rt>あんり</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>です。<br>*(Hôm nay cảm ơn chị. Tôi Sato của Anri.)* |
| Trang | <ruby>佐藤<rt>さとう</rt></ruby>さん、はじめまして。チャン・ティ・トランです。<br>*(Sato-san, lần đầu gặp. Tôi là Trần Thị Trang.)* |
| Sato | (JP) トランさんはHizashiを<ruby>18ヶ月<rt>じゅうはっかげつ</rt></ruby><ruby>使用中<rt>しようちゅう</rt></ruby>ですね。<ruby>1点<rt>いってん</rt></ruby>お<ruby>聞<rt>き</rt></ruby>かせください。トランさんの<ruby>人生<rt>じんせい</rt></ruby>に<ruby>与<rt>あた</rt></ruby>えた<ruby>影響<rt>えいきょう</rt></ruby>は?<br>*(Trang-san dùng Hizashi 18 tháng. Cho tôi hỏi 1 câu: ảnh hưởng tới cuộc đời chị?)* |
| Trang | (JP) Hizashiは<ruby>私<rt>わたし</rt></ruby>のキャリアを<ruby>変<rt>か</rt></ruby>えました。<ruby>2年前<rt>にねんまえ</rt></ruby>はベトナムの<ruby>下請<rt>したう</rt></ruby>けプログラマーでしたが、Hizashiで<ruby>敬語<rt>けいご</rt></ruby>とビジネス<ruby>会話<rt>かいわ</rt></ruby>を<ruby>身<rt>み</rt></ruby>につけ、<ruby>東京<rt>とうきょう</rt></ruby>のBrSEに<ruby>転職<rt>てんしょく</rt></ruby>しました。<ruby>年収<rt>ねんしゅう</rt></ruby>は<ruby>3倍<rt>さんばい</rt></ruby>になりました。<br>*(Hizashi đã thay đổi sự nghiệp của tôi. 2 năm trước tôi là lập trình viên outsource ở VN, dùng Hizashi học keigo và hội thoại business, chuyển sang BrSE ở Tokyo. Thu nhập gấp 3.)* |
| Sato | <ruby>素晴<rt>すば</rt></ruby>らしいストーリーですね。「Hizashi changed my career path」とは、まさにそういうことですね。<br>*(Câu chuyện tuyệt vời. "Hizashi changed my career path" đúng là vậy.)* |
| Trang | (JP) はい。<ruby>家族<rt>かぞく</rt></ruby>もベトナムからベトナムに<ruby>仕送<rt>しおく</rt></ruby>りができるようになり、<ruby>本当<rt>ほんとう</rt></ruby>にダイさんに<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Vâng. Tôi cũng gửi tiền về VN cho gia đình được, thực sự cảm ơn Đại-san.)* |
| Đại | (VN, im lặng nhìn xuống bàn) Chị... |
| Trang | (VN) Em ơi đừng khóc. Chị nói thật mà. |

---

## Tình huống 7 — Senri-chuo Maternity · 19/11 14:00, Mai 35w check + chồng vào phòng sinh

| Vai | Lời thoại |
|---|---|
| Bác sĩ Tanaka | マイさん、<ruby>35週<rt>さんじゅうごしゅう</rt></ruby>ですね。<ruby>胎児<rt>たいじ</rt></ruby>は<ruby>2.4<rt>にてんよん</rt></ruby>キロ、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>血圧<rt>けつあつ</rt></ruby>も<ruby>128<rt>ひゃくにじゅうはち</rt></ruby>/<ruby>82<rt>はちじゅうに</rt></ruby>、<ruby>改善<rt>かいぜん</rt></ruby>されています!<br>*(Mai-san, 35 tuần. Thai 2.4kg ổn. Huyết áp 128/82, đã cải thiện!)* |
| Mai | (JP) <ruby>先生<rt>せんせい</rt></ruby>、ありがとうございます。<ruby>塩分<rt>えんぶん</rt></ruby>を<ruby>抑<rt>おさ</rt></ruby>えて、<ruby>毎晩<rt>まいばん</rt></ruby><ruby>足<rt>あし</rt></ruby>を<ruby>高<rt>たか</rt></ruby>くして<ruby>休<rt>やす</rt></ruby>みました。<br>*(Bác sĩ cảm ơn ạ. Em đã hạn chế muối, mỗi tối kê chân lên cao nghỉ.)* |
| Bác sĩ | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>努力<rt>どりょく</rt></ruby>ですね。<ruby>38週<rt>さんじゅうはっしゅう</rt></ruby><ruby>以降<rt>いこう</rt></ruby>はいつでも<ruby>準備<rt>じゅんび</rt></ruby>OKです。<ruby>陣痛<rt>じんつう</rt></ruby>が<ruby>来<rt>き</rt></ruby>たらすぐにご<ruby>連絡<rt>れんらく</rt></ruby>ください。<br>*(Nỗ lực tuyệt vời. Từ tuần 38 sẵn sàng bất cứ lúc nào. Có cơn co thì gọi ngay.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>1<rt>ひと</rt></ruby>つご<ruby>相談<rt>そうだん</rt></ruby>させてください。<ruby>夫<rt>おっと</rt></ruby>の<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby>は<ruby>可能<rt>かのう</rt></ruby>でしょうか?<br>*(Bác sĩ, cho em xin trao đổi 1 việc. Chồng vào phòng sinh được không ạ?)* |
| Bác sĩ | (cười) もちろん<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>2028年<rt>にせんにじゅうはちねん</rt></ruby><ruby>12月<rt>じゅうにがつ</rt></ruby>のハナちゃんの<ruby>分娩時<rt>ぶんべんじ</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じく<ruby>参加<rt>さんか</rt></ruby>いただけます。<br>*(Tất nhiên được. Giống như lúc Hana sinh tháng 12/2028, anh tham gia được.)* |
| Đại | ありがとうございます。<ruby>育休<rt>いくきゅう</rt></ruby>は<ruby>12月<rt>じゅうにがつ</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>から<ruby>開始<rt>かいし</rt></ruby>します。<ruby>分娩<rt>ぶんべん</rt></ruby>から<ruby>退院後<rt>たいいんご</rt></ruby>のサポートまで<ruby>1ヶ月<rt>いっかげつ</rt></ruby><ruby>専念<rt>せんねん</rt></ruby>します。<br>*(Cảm ơn ạ. 育休 từ 15/12. Em sẽ chuyên tâm 1 tháng từ sinh tới hỗ trợ sau xuất viện.)* |
| Bác sĩ | <ruby>素晴<rt>すば</rt></ruby>らしいご<ruby>準備<rt>じゅんび</rt></ruby>ですね。マイさん、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>幸<rt>しあわ</rt></ruby>せですね。<br>*(Chuẩn bị tuyệt vời. Mai-san, thực sự hạnh phúc.)* |

---

## Tình huống 8 — Slack #hizashi-team · 25/11 11:00, DD final report

| Vai | Lời thoại |
|---|---|
| Sato-san | (email JP gửi Đại) <ruby>件名<rt>けんめい</rt></ruby>: Hizashi DD <ruby>最終報告<rt>さいしゅうほうこく</rt></ruby> — APPROVED<br><br>ダイさん<br><br>DD <ruby>4週間<rt>よんしゅうかん</rt></ruby>の<ruby>最終結果<rt>さいしゅうけっか</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>いたします。<br><br>・<ruby>技術<rt>ぎじゅつ</rt></ruby>: コード<ruby>品質<rt>ひんしつ</rt></ruby>Aグレード。セキュリティ<ruby>監査<rt>かんさ</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>。GDPR・APPI<ruby>準拠<rt>じゅんきょ</rt></ruby>。<ruby>軽微<rt>けいび</rt></ruby>な<ruby>1件<rt>いっけん</rt></ruby>(レート<ruby>制限<rt>せいげん</rt></ruby>のedge case)はv2.1で<ruby>対応<rt>たいおう</rt></ruby><ruby>予定<rt>よてい</rt></ruby>。<br>・<ruby>法務<rt>ほうむ</rt></ruby>: <ruby>全書類<rt>ぜんしょるい</rt></ruby>クリーン。IP <ruby>譲渡<rt>じょうと</rt></ruby><ruby>万全<rt>ばんぜん</rt></ruby>。<ruby>商標<rt>しょうひょう</rt></ruby><ruby>4カ国<rt>よんかこく</rt></ruby><ruby>登録済<rt>とうろくず</rt></ruby>み。<br>・<ruby>財務<rt>ざいむ</rt></ruby>: <ruby>12ヶ月<rt>じゅうにかげつ</rt></ruby>の<ruby>財務諸表<rt>ざいむしょひょう</rt></ruby>クリーン。CPA <ruby>承認<rt>しょうにん</rt></ruby>。キャッシュ+<ruby>将来<rt>しょうらい</rt></ruby>キャッシュフローの<ruby>整合性<rt>せいごうせい</rt></ruby>あり。<br>・<ruby>商業<rt>しょうぎょう</rt></ruby>: <ruby>5名<rt>ごめい</rt></ruby>のカスタマーリファレンス<ruby>全員<rt>ぜんいん</rt></ruby><ruby>非常<rt>ひじょう</rt></ruby>にポジティブ。NPS <ruby>67<rt>ろくじゅうなな</rt></ruby>(SaaS <ruby>健全<rt>けんぜん</rt></ruby>レベル)。<br><br><ruby>結論<rt>けつろん</rt></ruby>: <ruby>11月<rt>じゅういちがつ</rt></ruby><ruby>30日<rt>さんじゅうにち</rt></ruby>クローズを<ruby>正式<rt>せいしき</rt></ruby>に<ruby>承認<rt>しょうにん</rt></ruby>いたします。<br>*(Phê duyệt close 30/11.)* |
| Đại | (Slack #hizashi-team JP) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>速報<rt>そくほう</rt></ruby>です!DDが<ruby>正式<rt>せいしき</rt></ruby>に<ruby>承認<rt>しょうにん</rt></ruby>されました。<ruby>技術<rt>ぎじゅつ</rt></ruby>Aグレード、<ruby>法務<rt>ほうむ</rt></ruby>クリーン、<ruby>財務<rt>ざいむ</rt></ruby>クリーン、NPS <ruby>67<rt>ろくじゅうなな</rt></ruby>。<ruby>11月<rt>じゅういちがつ</rt></ruby><ruby>30日<rt>さんじゅうにち</rt></ruby>クローズ<ruby>確定<rt>かくてい</rt></ruby>です!<br>*(Mọi người, tin nóng! DD chính thức phê duyệt. Tech A, legal sạch, financial sạch, NPS 67. Close 30/11 xác nhận!)* |
| Tuấn | (Slack VN) Chúc mừng anh em! 4 tuần khốc liệt nhưng xứng đáng. |
| Aiko | (Slack JP) <ruby>夢<rt>ゆめ</rt></ruby>みたいです!<br>*(Như giấc mơ!)* |
| Tanaka | (Slack JP) <ruby>素晴<rt>すば</rt></ruby>らしい!Hizashiの<ruby>新<rt>あたら</rt></ruby>しい<ruby>章<rt>しょう</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりです。<br>*(Tuyệt vời! Khởi đầu chương mới của Hizashi.)* |
| Sakura | (Slack JP) <ruby>桜<rt>さくら</rt></ruby>、<ruby>泣<rt>な</rt></ruby>きそうです!<br>*(Em sắp khóc!)* |

---

## Tình huống 9 — Nhà bếp · 27/11 19:00, Đại nấu cơm + Mai chuẩn bị tâm lý

| Vai | Lời thoại |
|---|---|
| Mai | (VN, sofa bụng to 36w) Anh ơi, mai close rồi. Anh có run không? |
| Đại | (VN, từ bếp) Em ơi, có nhưng vừa phải. Khác lắm so với năm ngoái burnout. |
| Mai | (VN) Anh có nhớ lúc khủng hoảng Thanh A tháng 12/2030 không? Anh sút 4kg, mất ngủ 2 tuần. |
| Đại | (VN) Anh nhớ rõ. Bài học lớn nhất là gia đình trước. Năm nay khác — giảm giờ, nấu ăn, mát-xa, đặt giới hạn. |
| Mai | (VN) Em thấy anh chín chắn thật. 26 tuổi mà. |
| Đại | (VN, ngồi xuống cạnh Mai) Vì có em đó. Có Hana. Sắp có Đông. Anh không cho phép tệ nữa. |
| Hana | (VN, chạy ra) Mẹ! Bố! Hana đói! |
| Đại | (VN) Hana ơi, cơm xong rồi. Vào bàn nhé. |

---

## Tình huống 10 — WeWork boardroom · 30/11 10:00, close ceremony

*Sato + Sasaki + Honda + Hayashi + lawyer Suzuki + CPA + Đại + Tuấn + Aiko + Tanaka + Sakura. Vest navy. ¥230M wire incoming.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さま、<ruby>本日<rt>ほんじつ</rt></ruby>はHizashi Series Aクロージングセレモニーにお<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Quý anh chị, hôm nay đã đến lễ close Series A Hizashi, em xin chân thành cảm ơn.)* |
| Đại | <ruby>2029年<rt>にせんにじゅうきゅうねん</rt></ruby><ruby>夏<rt>なつ</rt></ruby>、<ruby>大学院<rt>だいがくいん</rt></ruby>を<ruby>休学<rt>きゅうがく</rt></ruby>してHizashiを<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げました。<ruby>2年半<rt>にねんはん</rt></ruby>を<ruby>経<rt>へ</rt></ruby>て、<ruby>本日<rt>ほんじつ</rt></ruby>Series A <ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>のクロージングを<ruby>迎<rt>むか</rt></ruby>えられました。<br>*(Mùa hè 2029 tôi nghỉ học cao học để khởi nghiệp Hizashi. Sau 2.5 năm, hôm nay đón close Series A ¥230M.)* |
| Đại | <ruby>佐藤<rt>さとう</rt></ruby><ruby>様<rt>さま</rt></ruby>、プレシードからリードまで、ありがとうございます。<ruby>佐々木<rt>ささき</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>本田<rt>ほんだ</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>林<rt>はやし</rt></ruby><ruby>様<rt>さま</rt></ruby>、ご<ruby>参加<rt>さんか</rt></ruby>を<ruby>心<rt>こころ</rt></ruby>より<ruby>感謝<rt>かんしゃ</rt></ruby>いたします。<ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>法務<rt>ほうむ</rt></ruby>ご<ruby>支援<rt>しえん</rt></ruby>ありがとうございます。<br>*(Sato-sama, từ pre-seed tới lead, cảm ơn. Sasaki-sama, Honda-sama, Hayashi-sama, em chân thành cảm ơn sự tham gia. Suzuki-sensei, cảm ơn anh hỗ trợ pháp lý.)* |
| Sato | ダイさん、Hizashi<ruby>新<rt>あたら</rt></ruby>しい<ruby>章<rt>しょう</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりです。<ruby>5年後<rt>ごねんご</rt></ruby>のIPOを<ruby>共<rt>とも</rt></ruby>に<ruby>目指<rt>めざ</rt></ruby>しましょう。<br>*(Đại-san, khởi đầu chương mới Hizashi. Cùng nhau hướng đến IPO 5 năm sau.)* |
| (Wire ¥230M confirmed bank account 10:35. Champagne. Ảnh tập thể.) | |
| Đại | (kết phát biểu) <ruby>本日<rt>ほんじつ</rt></ruby>はHizashiの<ruby>第二章<rt>だいにしょう</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりです。<ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>の<ruby>機関投資家<rt>きかんとうしか</rt></ruby><ruby>資本<rt>しほん</rt></ruby>、<ruby>1円<rt>いちえん</rt></ruby><ruby>1円<rt>いちえん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>に<ruby>運用<rt>うんよう</rt></ruby>させていただきます。<br>*(Hôm nay là khởi đầu chương 2 Hizashi. ¥230M institutional capital, em sẽ vận hành cẩn thận từng yên.)* |

---

## Tình huống 11 — Office cuối ngày · 30/11 18:00, Đại cảm ơn team

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Mọi người, hôm nay thực sự vất vả.)* |
| Đại | <ruby>桜<rt>さくら</rt></ruby>さん、<ruby>田中<rt>たなか</rt></ruby>さん、<ruby>愛子<rt>あいこ</rt></ruby>さん、トゥアンさん。Hizashiは<ruby>皆<rt>みな</rt></ruby>さんがいなければ<ruby>今日<rt>きょう</rt></ruby>はありませんでした。Series A <ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>は、<ruby>皆<rt>みな</rt></ruby>さんの<ruby>労働<rt>ろうどう</rt></ruby>の<ruby>結晶<rt>けっしょう</rt></ruby>です。<br>*(Sakura-san, Tanaka-san, Aiko-san, Tuấn-san. Không có mọi người thì không có Hizashi hôm nay. ¥230M Series A là kết tinh lao động của mọi người.)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>から<ruby>育休<rt>いくきゅう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<ruby>1ヶ月間<rt>いっかげつかん</rt></ruby>、トゥアンさんに<ruby>代行<rt>だいこう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Từ 15 tháng sau em nghỉ 育休. 1 tháng, em nhờ Tuấn-san làm Acting.)* |
| Tuấn | (VN) Anh ơi! Cảm ơn em đã tin tưởng. Anh sẽ giữ đúng đường. |
| Tanaka | ダイさん、<ruby>赤<rt>あか</rt></ruby>ちゃんが<ruby>無事<rt>ぶじ</rt></ruby>に<ruby>生<rt>う</rt></ruby>まれることをチーム<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>祈<rt>いの</rt></ruby>っています。<br>*(Đại-san, cả team cầu cho bé sinh ra bình an.)* |
| Aiko | <ruby>桜<rt>さくら</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>に、おむつケーキを<ruby>作<rt>つく</rt></ruby>っています!<br>*(Em cùng Sakura đang làm bánh tã!)* |
| Sakura | はい!サプライズです!<br>*(Vâng! Surprise!)* |
| Đại | (cười) <ruby>楽<rt>たの</rt></ruby>しみにしております。ありがとうございます。<br>*(Em rất mong chờ. Cảm ơn.)* |

---

## Tình huống 12 — Apt Senri-chuo · 30/11 22:00, Đại + Mai uống trà

| Vai | Lời thoại |
|---|---|
| Mai | (VN, sofa) Anh ơi! Đã close rồi à? |
| Đại | (VN, ngồi cạnh, trà ấm) Vâng em. Wire ¥230M vào tài khoản Hizashi 10:35 sáng nay. |
| Mai | (VN) Trời ơi. Em không tin nổi. |
| Đại | (VN) Em ơi. 3 năm trước anh vẫn là sinh viên cao học không biết tiếng Nhật business. Bây giờ ngồi cùng bàn với Sato-san senior partner Anri. |
| Mai | (VN) Anh xứng đáng. Anh đã làm việc 60-70h/tuần trong 2.5 năm. |
| Đại | (VN) Vì có em ở phía sau. Em với Hana, sắp có Đông. Tất cả vì gia đình mình. |
| Mai | (VN) Bé Đông đá nhiều tối nay. Như biết bố ăn mừng. |
| Đại | (VN, đặt tay lên bụng Mai) Bé Đông ơi, bố đây. Sang tháng bố sẽ ở nhà với con cả ngày nhé. |
| Mai | (VN) 15/12 育休 bắt đầu. 20/12 bố mẹ HN sang. 22/12 Tony+Yumi xuống. 25/12 Đông dự sinh. Tháng 12 sẽ là tháng đẹp nhất. |
| Đại | (VN) Em ơi. Cảm ơn em đã đi cùng anh từ Bình Phước đến đây. |
| Mai | (VN) Anh ơi. Còn dài. Mình mới 26 tuổi. |

---

## Tình huống 13 — Cảnh tiếng Việt cuối chương · 1/12 21:00, Đại + Tuấn gọi nhau Zalo

| Vai | Lời thoại |
|---|---|
| Đại | (VN, Zalo video) Anh ơi! Hôm nay bài TechCrunch JP đăng độc quyền chưa? |
| Tuấn | (VN, từ apt riêng) Đăng rồi em! 8h sáng go-live. Title "Hizashi closes ¥230M Series A — Vietnamese-founded Japanese learning platform expands to KR+ZH+US". Mori-san viết. |
| Đại | (VN) Em xem 3 lần rồi. Đẹp quá. |
| Tuấn | (VN) Em ơi, anh nói thật. 3 năm trước anh follow em qua Cybozu Hizashi MVP. Anh không nghĩ mình sẽ là CTO của một công ty Series A. |
| Đại | (VN) Anh ơi, em cũng vậy. 4 năm trước em là sinh viên năm 1 Osaka học bunpou N5. |
| Tuấn | (VN) 15/12 em nghỉ. 1 tháng anh gánh. Em yên tâm, không cần check Slack. |
| Đại | (VN) Em sẽ kỷ luật. 育休 = 100% Mai + Hana + Đông. Anh có gì gấp gọi Aiko hoặc Tanaka trước. |
| Tuấn | (VN) Em đi nghỉ đi. Sang tháng có em bé. |
| Đại | (VN) Anh ngủ ngon. Mai 9h em vẫn vào office bàn giao. |
| Tuấn | (VN) Mai gặp. |

---

## Đọng lại chương 8

Đại trải qua 4 tuần Due Diligence + close Series A: (1) lễ ký term sheet 1/11 với 4 đối tác VC bay xuống Osaka, phát biểu **「<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>遠路<rt>えんろ</rt></ruby>はるばる…ありがとうございます」**; (2) đón CodeClimate + Mighty Trust kiểm tra viên, Tuấn dẫn tour kỹ thuật 5 phần bằng JP, trả lời câu hỏi test coverage với plan cụ thể v2.1; (3) làm việc với luật sư Suzuki Tokyo qua Zoom — legal DD 7 mục được chuẩn bị hoàn chỉnh trong Notion shared folder; (4) 5 cuộc customer reference call — Takahashi-CEO Thanh A gọi Đại "leader xứng đáng đầu tư dài hạn", Trang power user kể Hizashi đổi đời cô — quote sát thủ; (5) bác sĩ Tanaka cho phép 立ち会い分娩 + khen 育休 1 tháng; (6) 25/11 DD final report APPROVED — tech A, legal clean, financial clean, NPS 67; (7) 30/11 close ceremony — ¥230M wire 10:35 confirmed, phát biểu **「<ruby>2.3億円<rt>にてんさんおくえん</rt></ruby>の<ruby>機関投資家<rt>きかんとうしか</rt></ruby><ruby>資本<rt>しほん</rt></ruby>、<ruby>1円<rt>いちえん</rt></ruby><ruby>1円<rt>いちえん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>に<ruby>運用<rt>うんよう</rt></ruby>させていただきます」**. Mai huyết áp ổn 128/82, bé 2.4kg. Bố mẹ HN + Tony+Yumi đã book 20-22/12. 15/12 育休. 25/12 bé Đông. Cuối chương Đại + Tuấn nói chuyện Zalo bằng tiếng Việt — 3-4 năm từ ngày bunpou N5 đến CTO của công ty Series A.

> Từ vựng & mẫu câu chương này: <ruby>遠路<rt>えんろ</rt></ruby>はるばるお<ruby>越<rt>こ</rt></ruby>しいただき・タームシートを<ruby>締結<rt>ていけつ</rt></ruby>させていただきます・<ruby>身<rt>み</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>い・<ruby>機関投資家<rt>きかんとうしか</rt></ruby><ruby>資本<rt>しほん</rt></ruby>・テックツアー・テストカバレッジ・<ruby>監査<rt>かんさ</rt></ruby>・ペネトレーション<ruby>試験<rt>しけん</rt></ruby>・GDPR・APPI<ruby>準拠<rt>じゅんきょ</rt></ruby>・<ruby>定款<rt>ていかん</rt></ruby>・<ruby>株主名簿<rt>かぶぬしめいぼ</rt></ruby>・<ruby>取締役会議事録<rt>とりしまりやくかいぎじろく</rt></ruby>・IP <ruby>譲渡契約<rt>じょうとけいやく</rt></ruby>・<ruby>知財<rt>ちざい</rt></ruby>・カスタマーリファレンス・NPS・<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby>・<ruby>陣痛<rt>じんつう</rt></ruby>・<ruby>過分<rt>かぶん</rt></ruby>のお<ruby>言葉<rt>ことば</rt></ruby>・<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>運用<rt>うんよう</rt></ruby>させていただきます・<ruby>1円<rt>いちえん</rt></ruby><ruby>1円<rt>いちえん</rt></ruby>

## Bí quyết chương

- **Phát biểu ký term sheet trang trọng**: mở 「<ruby>遠路<rt>えんろ</rt></ruby>はるばるお<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます」, đóng 「<ruby>身<rt>み</rt></ruby>の<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まる<ruby>思<rt>おも</rt></ruby>いです」 — keigo cấp executive, không phải student presentation
- **Đón tech kiểm tra viên**: tour kỹ thuật cấu trúc rõ ràng (5 phần), trả lời câu hỏi test coverage với plan cụ thể tự bộc lộ — không che giấu, ngược lại tạo niềm tin
- **Customer reference call**: VC sẽ join Zoom 3 bên. Founder im lặng, khách + VC nói. Quote sát thủ tự nhiên xuất hiện ("Hizashi changed my career path"). Power user VN nói JP cũng được chấp nhận
- **Làm việc với luật sư Nhật**: 「<ruby>全項目<rt>ぜんこうもく</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby><ruby>済<rt>ず</rt></ruby>みです、Notion<ruby>共有<rt>きょうゆう</rt></ruby>フォルダのアクセス<ruby>権<rt>けん</rt></ruby>を<ruby>付与<rt>ふよ</rt></ruby>いたします」 — proactive, không để luật sư phải đòi từng văn bản
- **Hỏi 立ち会い分娩**: 「<ruby>1<rt>ひと</rt></ruby>つご<ruby>相談<rt>そうだん</rt></ruby>させてください」 → câu hỏi → bác sĩ JP đánh giá cao chồng chủ động hỏi
- **Phát biểu close**: 「<ruby>1円<rt>いちえん</rt></ruby><ruby>1円<rt>いちえん</rt></ruby><ruby>大切<rt>たいせつ</rt></ruby>に<ruby>運用<rt>うんよう</rt></ruby>させていただきます」 — câu chốt mạnh, thể hiện ý thức trách nhiệm với từng yên capital

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 遠路 | えんろ | VIỄN LỘ | đường xa |
| 締結 | ていけつ | ĐẾ KẾT | ký kết |
| 力添え | ちからぞえ | LỰC THIÊM | hỗ trợ |
| 署名 | しょめい | THỰ DANH | ký |
| 引き締まる | ひきしまる | DẪN ĐẾ | nghiêm túc, căng |
| 機関投資家 | きかんとうしか | CƠ QUAN ĐẦU TƯ GIA | nhà đầu tư tổ chức |
| 資本 | しほん | TƯ BẢN | vốn |
| 運用 | うんよう | VẬN DỤNG | vận hành (vốn) |
| 監査 | かんさ | GIÁM TRA | kiểm toán |
| 試験 | しけん | THÍ NGHIỆM | thử nghiệm |
| 準拠 | じゅんきょ | CHUẨN CỨ | tuân thủ |
| 案内 | あんない | ÁN NỘI | hướng dẫn |
| 概要 | がいよう | KHÁI YẾU | tổng quan |
| 整備 | せいび | CHỈNH BỊ | hoàn thiện |
| 引き上げる | ひきあげる | DẪN THƯỢNG | nâng lên |
| 定款 | ていかん | ĐỊNH KHOẢN | điều lệ |
| 株主名簿 | かぶぬしめいぼ | CỔ CHỦ DANH BỘ | sổ cổ đông |
| 取締役会議事録 | とりしまりやくかいぎじろく | THỦ ĐẾ DỊCH HỘI NGHỊ SỰ LỤC | biên bản HĐQT |
| 譲渡契約 | じょうとけいやく | NHƯỢNG ĐỘ KHẾ ƯỚC | hợp đồng chuyển nhượng |
| 従業員 | じゅうぎょういん | TÒNG NGHIỆP VIÊN | nhân viên |
| 労働契約書 | ろうどうけいやくしょ | LAO ĐỘNG KHẾ ƯỚC THƯ | hợp đồng lao động |
| 顧客契約書 | こきゃくけいやくしょ | CỐ KHÁCH KHẾ ƯỚC THƯ | hợp đồng khách hàng |
| 知財 | ちざい | TRI TÀI | sở hữu trí tuệ |
| 商標 | しょうひょう | THƯƠNG TIÊU | thương hiệu, trademark |
| 全項目 | ぜんこうもく | TOÀN HẠNG MỤC | toàn bộ mục |
| 付与 | ふよ | PHÓ DỮ | cấp |
| 不明点 | ふめいてん | BẤT MINH ĐIỂM | điểm chưa rõ |
| 効果 | こうか | HIỆU QUẢ | hiệu quả |
| 通訳 | つうやく | THÔNG DỊCH | phiên dịch |
| 進行 | しんこう | TIẾN HÀNH | tiến hành |
| 倍増 | ばいぞう | BỘI TĂNG | tăng gấp đôi |
| 介護 | かいご | GIỚI HỘ | điều dưỡng |
| 網羅 | もうら | VÕNG LA | bao phủ |
| 最適 | さいてき | TỐI THÍCH | tối ưu |
| 評価 | ひょうか | BÌNH GIÁ | đánh giá |
| 誠実 | せいじつ | THÀNH THỰC | trung thực |
| 勤勉 | きんべん | CẦN MIỄN | chăm chỉ |
| 顧客視点 | こきゃくしてん | CỐ KHÁCH THỊ ĐIỂM | góc nhìn khách hàng |
| 確信 | かくしん | XÁC TÍN | tin chắc |
| 過分 | かぶん | QUÁ PHÂN | quá lời |
| 下請け | したうけ | HẠ THỈNH | nhận thầu lại, outsource |
| 転職 | てんしょく | CHUYỂN CHỨC | chuyển việc |
| 仕送り | しおくり | SỬ TỐNG | gửi tiền (về gia đình) |
| 立ち会い分娩 | たちあいぶんべん | LẬP HỘI PHÂN MIỄN | sinh có chồng vào cùng |
| 陣痛 | じんつう | TRẬN THỐNG | cơn co chuyển dạ |
| 専念 | せんねん | CHUYÊN NIỆM | chuyên tâm |
| 退院後 | たいいんご | THOÁI VIỆN HẬU | sau xuất viện |
| 軽微 | けいび | KHINH VI | nhẹ, nhỏ |
| 法務 | ほうむ | PHÁP VỤ | pháp lý |
| 万全 | ばんぜん | VẠN TOÀN | hoàn hảo |
| 登録済み | とうろくずみ | ĐĂNG LỤC | đã đăng ký |
| 財務諸表 | ざいむしょひょう | TÀI VỤ CHƯ BIỂU | báo cáo tài chính |
| 承認 | しょうにん | THỪA NHẬN | phê duyệt |
| 整合性 | せいごうせい | CHỈNH HỢP TÍNH | tính nhất quán |
| 結論 | けつろん | KẾT LUẬN | kết luận |
| 結晶 | けっしょう | KẾT TINH | kết tinh |
| 代行 | だいこう | ĐẠI HÀNH | quyền (chức), thay thế |
| 無事 | ぶじ | VÔ SỰ | bình an |
| 祈る | いのる | KỲ | cầu nguyện |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000009, 800000026, NULL, 'markdown_book', 'T9. Close Series A ¥230M (シリーズAクロージング)', '# Sách kỹ sư cầu nối & khởi nghiệp · T9. Close Series A ¥230M (シリーズAクロージング)

> **Mục tiêu nhân vật:** Đại 26 tuổi, CEO Hizashi Inc, ngày close Series A 30/11/2031. Học các mẫu hội thoại tiếng Nhật: (1) phát biểu mở đầu ngày close formal; (2) xác nhận tài liệu cuối với luật sư qua Zoom; (3) báo 着金 với kế toán; (4) toast champagne historic moment; (5) chair board meeting #1; (6) thông báo 育休 cho team bằng Slack JP; (7) gọi taxi bệnh viện sản gấp; (8) tương tác bác sĩ phòng sinh.

---

## Bối cảnh

Cuối tháng 11/2031. Đại 26 tuổi, CEO Hizashi Inc. Sau 8 tuần đàm phán Series A với Anri lead, hôm nay là close day — bank wire ¥230M vào tài khoản pháp nhân Mizuho. Cofounder Tuấn (CTO) và Aiko (Operations) cùng có mặt tại WeWork Umeda. Mai 36 tuần thai bé Đông tại nhà Senri-chuo. Chương này tập trung mẫu câu business JP formal — ký kết, board meeting, đối ứng luật sư + kế toán — và mẫu câu sinh nở khẩn cấp tại 産婦人科.

---

## Tình huống 1 — WeWork Umeda · 9:00, Đại phát biểu mở đầu close day

*Đại mặc vest đen + cà vạt đỏ Mai tặng. Tuấn và Aiko đứng quanh bàn. Champagne chưa mở.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>はシリーズAのクロージングデーです。<ruby>長<rt>なが</rt></ruby>い<ruby>道<rt>みち</rt></ruby>でした。<br>*(Mọi người, hôm nay là ngày close Series A. Một chặng đường dài.)* |
| Tuấn | (JP) <ruby>弁護士<rt>べんごし</rt></ruby>の<ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>と<ruby>会計士<rt>かいけいし</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>は10<ruby>時<rt>じ</rt></ruby>にZoomに<ruby>入<rt>はい</rt></ruby>られます。<br>*(Luật sư Suzuki và kế toán Tanaka sẽ vào Zoom lúc 10 giờ.)* |
| Aiko | (JP) <ruby>記念<rt>きねん</rt></ruby><ruby>写真<rt>しゃしん</rt></ruby><ruby>用<rt>よう</rt></ruby>に<ruby>準備<rt>じゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました！<br>*(Đã chuẩn bị xong cho ảnh kỷ niệm!)* |
| Đại | (JP) <ruby>佐藤<rt>さとう</rt></ruby>さんは<ruby>東京<rt>とうきょう</rt></ruby>から8:30の<ruby>新幹線<rt>しんかんせん</rt></ruby>で<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Sato-san dự kiến đến Osaka bằng tàu shinkansen 8:30 từ Tokyo.)* |

---

## Tình huống 2 — Phòng họp · 10:00, ký 5 tài liệu cuối với luật sư qua Zoom

| Vai | Lời thoại |
|---|---|
| Sato-san (Anri) | (JP, vừa vào phòng) ダイさん、<ruby>本日<rt>ほんじつ</rt></ruby>はシリーズAのクロージングデーですね。おめでとうございます。<br>*(Đại-san, hôm nay là ngày close Series A. Chúc mừng.)* |
| Suzuki (luật sư, Zoom) | (JP) <ruby>最終<rt>さいしゅう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>5<ruby>点<rt>てん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させていただきます。Series A Preferred Shares Subscription Agreement、Investor Rights Agreement、ROFR & Co-Sale、Voting Agreement、Updated Articles of Incorporation でございます。<br>*(Xin xác nhận 5 tài liệu cuối.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>署名<rt>しょめい</rt></ruby>を<ruby>開始<rt>かいし</rt></ruby>します。<br>*(Đã rõ. Bắt đầu ký.)* |
| Suzuki | (JP) <ruby>各書類<rt>かくしょるい</rt></ruby>4<ruby>部<rt>ぶ</rt></ruby>ずつ、<ruby>合計<rt>ごうけい</rt></ruby>20<ruby>箇所<rt>かしょ</rt></ruby>でございます。<br>*(Mỗi tài liệu 4 bản, tổng cộng 20 chỗ ký.)* |
| Đại | (JP, ký xong) <ruby>署名<rt>しょめい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<br>*(Đã ký xong.)* |
| Sato | (JP, ký đại diện Anri) <ruby>こちら<rt>こちら</rt></ruby>も<ruby>署名<rt>しょめい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>送金<rt>そうきん</rt></ruby><ruby>命令<rt>めいれい</rt></ruby>を<ruby>発<rt>はっ</rt></ruby>します。<br>*(Bên này cũng ký xong. Phát lệnh chuyển khoản ngân hàng.)* |

---

## Tình huống 3 — Phòng họp · 10:30, kế toán xác nhận 着金 ¥230M

| Vai | Lời thoại |
|---|---|
| Tanaka (kế toán, Zoom) | (JP) <ruby>皆<rt>みな</rt></ruby>さま、みずほ<ruby>銀行<rt>ぎんこう</rt></ruby>のHizashi<ruby>法人口座<rt>ほうじんこうざ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>いたしました。<br>*(Đã xác nhận tài khoản pháp nhân Hizashi tại ngân hàng Mizuho.)* |
| Tanaka | (JP) ¥230,000,000、<ruby>着金<rt>ちゃっきん</rt></ruby><ruby>済<rt>ず</rt></ruby>みでございます。<br>*(¥230,000,000, tiền đã vào tài khoản.)* |
| Đại | (JP, mở app Mizuho banking trên iPhone) <ruby>残高<rt>ざんだか</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します...¥230,000,000、<ruby>着金<rt>ちゃっきん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました！<br>*(Xác nhận số dư...¥230M, đã vào!)* |
| Tuấn | (VN) Đại ơi! ¥230M về tài khoản thật rồi!<br>*(Về thật rồi!)* |
| Aiko | (JP, mắt rưng rưng) <ruby>夢<rt>ゆめ</rt></ruby>みたいです！<br>*(Như mơ vậy!)* |
| Tanaka | (JP) <ruby>会計<rt>かいけい</rt></ruby><ruby>処理<rt>しょり</rt></ruby>は<ruby>資本金<rt>しほんきん</rt></ruby><ruby>増資<rt>ぞうし</rt></ruby>として<ruby>登記<rt>とうき</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>きに<ruby>進<rt>すす</rt></ruby>みます。<br>*(Xử lý kế toán sẽ tiến hành thủ tục thay đổi đăng ký tăng vốn điều lệ.)* |

---

## Tình huống 4 — Phòng họp · 11:00, toast champagne historic moment

| Vai | Lời thoại |
|---|---|
| Sato | (JP, rót champagne 4 ly) Hizashi シリーズA、クローズドです！<br>*(Hizashi Series A, closed!)* |
| Đại | (JP, nâng ly) <ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のチー・トゥアン、<ruby>桜井<rt>さくらい</rt></ruby><ruby>愛子<rt>あいこ</rt></ruby>、そしてリード<ruby>投資家<rt>とうしか</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さんと<ruby>共<rt>とも</rt></ruby>に、シリーズAを<ruby>達成<rt>たっせい</rt></ruby>いたしました！<br>*(Cùng cofounder Tuấn, Aiko và lead investor Sato-san, đã đạt Series A!)* |
| Đại | (JP) <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Tuấn + Aiko + Sato | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Sato | (JP) Hizashi Inc の<ruby>新<rt>あたら</rt></ruby>しい<ruby>章<rt>しょう</rt></ruby>が<ruby>始<rt>はじ</rt></ruby>まりました。<br>*(Chương mới của Hizashi Inc bắt đầu.)* |

---

## Tình huống 5 — Phòng họp · 11:15, Đại nhắn LINE Mai

*Đại rút iPhone ra, chụp ảnh 4 người vừa cụng ly, gửi cho Mai.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE Mai, gửi ảnh) Em ơi! Series A CLOSED! ¥230M đã vào tài khoản Hizashi! |
| Mai | (LINE) Anh ơi! Em mừng quá khóc rồi! |
| Mai | (LINE) Em đang ở nhà với Hana, vừa đọc tin xong em ngồi khóc luôn. Anh giỏi quá! |
| Đại | (LINE) Em ơi! Tối nay anh về sớm. Mình ăn tối kỷ niệm. |
| Mai | (LINE) Anh ơi nhớ uống nước nhé, đừng champagne nhiều. Bé Đông 36 tuần rồi đấy. |
| Đại | (LINE) Anh chỉ 1 ly thôi em. Anh yêu em. |

---

## Tình huống 6 — Slack · 1/12 9:00, embargo lift PR TechCrunch JP

| Vai | Lời thoại |
|---|---|
| Đại | (Slack #hizashi-team, JP) <ruby>皆<rt>みな</rt></ruby>さん、TechCrunch JP の<ruby>記事<rt>きじ</rt></ruby>が9<ruby>時<rt>じ</rt></ruby>に<ruby>公開<rt>こうかい</rt></ruby>されました！<br>*(Mọi người, bài TechCrunch JP đã đăng lúc 9 giờ!)* |
| Đại | (Slack) <ruby>見出<rt>みだ</rt></ruby>し：「ベトナム<ruby>人<rt>じん</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のHizashi、シリーズAで¥230M<ruby>調達<rt>ちょうたつ</rt></ruby>。Anriリード」<br>*(Tiêu đề: "Hizashi do người Việt sáng lập gọi Series A ¥230M. Anri lead".)* |
| Tuấn | (Slack, VN) Đại ơi! LinkedIn anh post — 89 likes trong giờ đầu. Twitter retweet 200+ lần! |
| Aiko (Marketing) | (Slack, JP) <ruby>韓国<rt>かんこく</rt></ruby>メディアと<ruby>中国<rt>ちゅうごく</rt></ruby>メディアからも<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>来<rt>き</rt></ruby>ました。<ruby>取材<rt>しゅざい</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みです。<br>*(Có liên hệ từ media Hàn và Trung. Đề nghị phỏng vấn.)* |
| Aiko | (Slack, JP) <ruby>来週<rt>らいしゅう</rt></ruby>のインタビュー<ruby>調整<rt>ちょうせい</rt></ruby>します。<br>*(Tôi sẽ sắp lịch phỏng vấn tuần sau.)* |

---

## Tình huống 7 — LINE Đại · 1/12 11:00, congrats từ network

| Vai | Lời thoại |
|---|---|
| Tony+Yumi (LINE) | (Osaka-ben) ダイ！¥230Mやて！ホンマに<ruby>嬉<rt>うれ</rt></ruby>しいわ！Tonyの0.5%、<ruby>今<rt>いま</rt></ruby>¥6.15Mのペーパーやで！<br>*(Vui thật chứ! 0.5% của Tony giờ ¥6.15M trên giấy rồi!)* |
| Đại | (LINE, JP) Tonyさん、Yumiさん！シードの<ruby>頃<rt>ころ</rt></ruby>から<ruby>応援<rt>おうえん</rt></ruby>してくださって<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます！<br>*(Tony, Yumi! Cảm ơn đã ủng hộ từ thời seed!)* |
| Inoue-sensei (LINE) | (JP) <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>研究室<rt>けんきゅうしつ</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りだよ！<br>*(Tuyệt vời! Niềm tự hào của phòng nghiên cứu!)* |
| Đại | (LINE, JP) <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>研究室<rt>けんきゅうしつ</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだことが<ruby>全<rt>すべ</rt></ruby>ての<ruby>基礎<rt>きそ</rt></ruby>です。ありがとうございます。<br>*(Sensei, mọi thứ học ở lab là nền tảng. Cảm ơn thầy.)* |
| Bố mẹ Hà Nội (LINE) | (VN) Đại con! Bố mẹ tự hào về con lắm! Anh em bên này ai cũng đọc tin rồi! |
| Đại | (LINE, VN) Bố mẹ ơi! Con cảm ơn bố mẹ đã ủng hộ con sang Nhật từ 2025. |

---

## Tình huống 8 — WeWork phòng họp · 2/12 14:00, chair Board Meeting #1

*Board: Đại (CEO), Tuấn (CTO), Sato-san (Anri), Sasaki-san (JAFCO), Yamamoto-san (Independent, ex-Mercari board).*

| Vai | Lời thoại |
|---|---|
| Đại | (JP, đứng đầu bàn) <ruby>本日<rt>ほんじつ</rt></ruby>はHizashi Inc <ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>第1回<rt>だいいっかい</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Hôm nay là cuộc họp Hội đồng quản trị Hizashi Inc lần thứ 1.)* |
| Đại | (JP) <ruby>議題<rt>ぎだい</rt></ruby>は6<ruby>点<rt>てん</rt></ruby>でございます。シリーズAクローズの<ruby>確認<rt>かくにん</rt></ruby>、Q1<ruby>採用<rt>さいよう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>、v3.0ロードマップ、オフィス<ruby>拡張<rt>かくちょう</rt></ruby>、<ruby>育休<rt>いくきゅう</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>、シリーズB<ruby>準備<rt>じゅんび</rt></ruby><ruby>スケジュール<rt>スケジュール</rt></ruby>です。<br>*(Agenda 6 mục.)* |
| Sato | (JP) ダイさんの<ruby>育休<rt>いくきゅう</rt></ruby>1<ruby>ヶ月<rt>かげつ</rt></ruby>、<ruby>承知<rt>しょうち</rt></ruby>いたしました。トゥアンさんが<ruby>代行<rt>だいこう</rt></ruby>CEOですね。<br>*(育休 1 tháng của Đại-san đã rõ. Tuấn-san sẽ làm quyền CEO.)* |
| Sasaki | (JP) Q1の5<ruby>名<rt>めい</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>は<ruby>妥当<rt>だとう</rt></ruby>です。<ruby>人件費<rt>じんけんひ</rt></ruby><ruby>合計<rt>ごうけい</rt></ruby>¥80Mで<ruby>問題<rt>もんだい</rt></ruby>ありません。<br>*(Tuyển 5 người Q1 hợp lý. Tổng phí nhân sự ¥80M không vấn đề.)* |
| Yamamoto | (JP) シリーズBの<ruby>準備<rt>じゅんび</rt></ruby><ruby>開始<rt>かいし</rt></ruby>はシリーズAクローズから18<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>後<rt>ご</rt></ruby>、2033/5を<ruby>目標<rt>もくひょう</rt></ruby>に。ARR ¥150Mが<ruby>目標<rt>もくひょう</rt></ruby>です。<br>*(Series B chuẩn bị 18 tháng sau close, mục tiêu 5/2033. ARR mục tiêu ¥150M.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>次回<rt>じかい</rt></ruby><ruby>取締役会<rt>とりしまりやくかい</rt></ruby>は1<ruby>月<rt>がつ</rt></ruby>15<ruby>日<rt>にち</rt></ruby>、<ruby>育休<rt>いくきゅう</rt></ruby><ruby>復帰<rt>ふっき</rt></ruby><ruby>後<rt>ご</rt></ruby>です。<br>*(Đã rõ. Họp lần sau 15/1, sau khi tôi quay lại từ 育休.)* |

---

## Tình huống 9 — Phòng họp board · 14:45, hỏi lại định nghĩa pro-rata right

*Đại nghe Yamamoto-san nhắc về "pro-rata" — chưa chắc chắn cách dùng tiếng Nhật.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>山本<rt>やまもと</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>いたします。<ruby>先<rt>さき</rt></ruby>ほどの「プロラタ<ruby>権<rt>けん</rt></ruby>」というのは、<ruby>具体的<rt>ぐたいてき</rt></ruby>にはどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか？<br>*(Yamamoto-san, xin lỗi. "Pro-rata right" vừa rồi cụ thể là gì ạ?)* |
| Yamamoto | (JP) シリーズBの<ruby>際<rt>さい</rt></ruby>に、<ruby>既存<rt>きそん</rt></ruby><ruby>投資家<rt>とうしか</rt></ruby>が<ruby>持分<rt>もちぶん</rt></ruby><ruby>比率<rt>ひりつ</rt></ruby>を<ruby>維持<rt>いじ</rt></ruby>するため、<ruby>比例配分<rt>ひれいはいぶん</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>出資<rt>しゅっし</rt></ruby>する<ruby>権利<rt>けんり</rt></ruby>です。<br>*(Khi Series B, các nhà đầu tư hiện hữu có quyền đầu tư thêm theo tỷ lệ để duy trì cổ phần.)* |
| Đại | (JP) なるほど。<ruby>承知<rt>しょうち</rt></ruby>いたしました。ありがとうございます。<br>*(Hiểu rồi. Cảm ơn.)* |
| Sato | (JP) ダイさん、<ruby>分<rt>わ</rt></ruby>からない<ruby>用語<rt>ようご</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>聞<rt>き</rt></ruby>き<ruby>返<rt>かえ</rt></ruby>してください。<ruby>取締役<rt>とりしまりやく</rt></ruby><ruby>全員<rt>ぜんいん</rt></ruby>でCEOを<ruby>支<rt>ささ</rt></ruby>えるのが<ruby>役割<rt>やくわり</rt></ruby>です。<br>*(Đại-san, từ nào không hiểu nhất định phải hỏi lại. Vai trò của board là support CEO.)* |

---

## Tình huống 10 — Slack #hizashi-team · 15/12 9:00, Đại announce 育休 start

| Vai | Lời thoại |
|---|---|
| Đại | (Slack, JP) <ruby>皆<rt>みな</rt></ruby>さん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>15/12から1/15まで<ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>取得<rt>しゅとく</rt></ruby>いたします。<br>*(Mọi người chào buổi sáng. Tôi nghỉ chăm con từ hôm nay 15/12 đến 15/1.)* |
| Đại | (Slack, JP) <ruby>代行<rt>だいこう</rt></ruby>CEOはトゥアン、<ruby>運営<rt>うんえい</rt></ruby><ruby>日常<rt>にちじょう</rt></ruby>は<ruby>愛子<rt>あいこ</rt></ruby>、バックエンドは<ruby>田中<rt>たなか</rt></ruby>、UIは<ruby>桜<rt>さくら</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Quyền CEO là Tuấn, vận hành hàng ngày là Aiko, backend là Tanaka, UI là Sakura phụ trách.)* |
| Đại | (Slack, JP) <ruby>緊急<rt>きんきゅう</rt></ruby><ruby>連絡<rt>れんらく</rt></ruby>はトゥアンへ。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Liên lạc khẩn liên hệ Tuấn. Tôi muốn trân trọng thời gian gia đình.)* |
| Tuấn | (Slack, VN) Đi đi Đại! Ở nhà chăm Mai và Hana, đón bé Đông. Hizashi ổn rồi. |
| Aiko | (Slack, JP) <ruby>家族<rt>かぞく</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>に！ドンくんに<ruby>会<rt>あ</rt></ruby>えるのを<ruby>楽<rt>たの</rt></ruby>しみにしています！<br>*(Trân trọng thời gian gia đình! Háo hức gặp bé Đông!)* |
| Tanaka | (Slack, JP) ダイさん、<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>って<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素敵<rt>すてき</rt></ruby>です！<br>*(CEO nghỉ chăm con thật là tuyệt!)* |

---

## Tình huống 11 — Phòng ngủ Senri-chuo · 18/12 4:30 sáng, Mai vỡ ối

*Đại đang ngủ. Mai 36 tuần 6 ngày. Bé Đông dự sinh 25/12 — nhưng sớm 1 tuần.*

| Vai | Lời thoại |
|---|---|
| Mai | (VN, lay Đại) Anh ơi! ANH ƠI! Dậy đi! |
| Đại | (VN, bật dậy) Em ơi! Sao thế? |
| Mai | (VN, ôm bụng) Em đau bụng từ 3 giờ. Vừa rồi vỡ ối rồi! |
| Đại | (VN, vớ điện thoại) Bình tĩnh em! Anh gọi taxi ngay. Đến bệnh viện <ruby>千里中央<rt>せんりちゅうおう</rt></ruby><ruby>病院<rt>びょういん</rt></ruby>. |
| Mai | (VN, thở dốc) Anh báo bố mẹ với cô chú Tony giúp em. |
| Đại | (LINE gia đình, VN) Bé Đông sắp ra! Mai vỡ ối! Cả nhà đến <ruby>千里中央病院<rt>せんりちゅうおうびょういん</rt></ruby> ngay nhé! |
| Bố Mai | (LINE, VN) Bố mẹ đi ngay! Tony+Yumi cũng vừa nhắn xong. |

---

## Tình huống 12 — Taxi · 4:45 sáng, gọi taxi gấp

| Vai | Lời thoại |
|---|---|
| Đại | (gọi điện) (JP) もしもし、タクシーをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>緊急<rt>きんきゅう</rt></ruby>です。<ruby>妻<rt>つま</rt></ruby>が<ruby>陣痛<rt>じんつう</rt></ruby>で、<ruby>千里中央病院<rt>せんりちゅうおうびょういん</rt></ruby>に<ruby>行<rt>い</rt></ruby>きたいんです。<br>*(Alo, xin gọi taxi. Khẩn cấp. Vợ tôi đang chuyển dạ, muốn đến bệnh viện Senri-chuo.)* |
| Tổng đài | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。ご<ruby>住所<rt>じゅうしょ</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đã rõ. Xin địa chỉ.)* |
| Đại | (JP) <ruby>大阪府<rt>おおさかふ</rt></ruby><ruby>豊中市<rt>とよなかし</rt></ruby><ruby>新千里東町<rt>しんせんりひがしまち</rt></ruby>1-3-2、Senri Garden Heights 8<ruby>階<rt>かい</rt></ruby>です。<ruby>急<rt>いそ</rt></ruby>いでいただけますか？<br>*(Osaka-fu Toyonaka-shi Shin-senri-higashimachi 1-3-2, Senri Garden Heights tầng 8. Anh đến gấp được không?)* |
| Tổng đài | (JP) 5<ruby>分<rt>ふん</rt></ruby>で<ruby>到着<rt>とうちゃく</rt></ruby>します。マンション<ruby>入<rt>い</rt></ruby>り<ruby>口<rt>ぐち</rt></ruby>でお<ruby>待<rt>ま</rt></ruby>ちください。<br>*(5 phút sẽ đến. Xin đợi ở cổng chung cư.)* |
| Đại | (JP) ありがとうございます！<br>*(Cảm ơn!)* |

---

## Tình huống 13 — Bệnh viện · 5:00 sáng, tiếp đón bác sĩ trực ca

| Vai | Lời thoại |
|---|---|
| Y tá | (JP) チーさんですね？<ruby>分娩室<rt>ぶんべんしつ</rt></ruby>へどうぞ。<br>*(Chị Chi phải không? Mời sang phòng sinh.)* |
| Bác sĩ Tanaka | (JP, trực ca) マイさん、<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<ruby>破水<rt>はすい</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>でしたか？<br>*(Mai-san, để tôi kiểm tra. Vỡ ối khoảng mấy giờ?)* |
| Đại | (JP, thay vợ trả lời) 4<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby><ruby>頃<rt>ごろ</rt></ruby>です。<ruby>陣痛<rt>じんつう</rt></ruby>は3<ruby>時<rt>じ</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>まりました。<br>*(Khoảng 4:30. Cơn co bắt đầu từ 3 giờ.)* |
| Bác sĩ | (JP, khám) <ruby>子宮口<rt>しきゅうこう</rt></ruby>5cmです。<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>分娩室<rt>ぶんべんしつ</rt></ruby>へ<ruby>移動<rt>いどう</rt></ruby>しましょう。ご<ruby>主人<rt>しゅじん</rt></ruby>も<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>われますか？<br>*(Cổ tử cung mở 5cm. Thuận lợi. Chuyển sang phòng sinh. Chồng cùng vào không?)* |
| Đại | (JP) はい、<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>いたいです。<br>*(Vâng, tôi muốn vào cùng.)* |
| Mai | (VN, nắm tay Đại) Anh ơi cố với em! |

---

## Tình huống 14 — Phòng sinh · 7:30 sáng, bé Đông chào đời

| Vai | Lời thoại |
|---|---|
| Bác sĩ | (JP) <ruby>頭<rt>あたま</rt></ruby>が<ruby>見<rt>み</rt></ruby>えてきました！マイさん、<ruby>次<rt>つぎ</rt></ruby>の<ruby>陣痛<rt>じんつう</rt></ruby>でいきんでください！<br>*(Đã thấy đầu! Mai-san, cơn co tiếp theo rặn nhé!)* |
| Mai | (rặn) Aaaaa! |
| Đại | (VN, nắm tay Mai) Cố lên em! Có anh đây! |
| Bác sĩ | (JP) もう<ruby>少<rt>すこ</rt></ruby>しです！<ruby>頑張<rt>がんば</rt></ruby>って！<br>*(Sắp xong! Cố lên!)* |
| Mai | (rặn lần nữa) Aaaa! |
| Bác sĩ | (JP, 7:30) <ruby>男<rt>おとこ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>です！3.0kg！<ruby>元気<rt>げんき</rt></ruby>です！<br>*(Bé trai! 3kg! Khoẻ mạnh!)* |
| (Bé khóc oa oa) | |
| Đại | (mắt rưng rưng, VN) Em ơi! Đông ơi! |
| Mai | (mệt, cười) Anh ơi! Đông xinh quá! |
| Bác sĩ | (JP, đặt bé lên bụng Mai) <ruby>初<rt>はじ</rt></ruby>めての<ruby>対面<rt>たいめん</rt></ruby>です。<br>*(Lần gặp đầu tiên.)* |

---

## Tình huống 15 — Phòng hậu sinh · 9:00, ông bà + Tony+Yumi + Hana đến thăm

*Bố mẹ Hà Nội đã sang Nhật từ 12/12 ở căn hộ thuê cách 5 phút. Tony+Yumi từ Aichi xuống chiều qua.*

| Vai | Lời thoại |
|---|---|
| Bố Mai | (VN, vào phòng) Mai con! Đông cháu của ông! |
| Mẹ Mai | (VN, ngắm bé) Trời ơi! Đông giống bố Đại như đúc! |
| Tony | (Osaka-ben) わしの2<ruby>人目<rt>にんめ</rt></ruby>の<ruby>孫<rt>まご</rt></ruby>やで！ホンマに<ruby>嬉<rt>うれ</rt></ruby>しいわ！<br>*(Cháu thứ 2 của tao! Vui thật chứ!)* |
| Yumi | (JP) ハナちゃん、<ruby>弟<rt>おとうと</rt></ruby>が<ruby>生<rt>う</rt></ruby>まれたよ！<br>*(Hana ơi, em trai sinh rồi nè!)* |
| Hana | (3 tuổi 4 tháng, được mẹ bế đến gần) Em Đông! Hana làm chị rồi! |
| Đại | (VN, chụp ảnh 7 người) Gia đình 4 người chính thức! |
| Mai | (VN, cười mệt) Anh ơi! Series A 30/11, Đông sinh 18/12 — 18 ngày 2 sự kiện lớn. |

---

## Tình huống 16 — Cảnh tiếng Việt · 23:00, Đại gọi điện cho Mai từ phòng cạnh

*Bé Đông đã ngủ với Mai trong phòng hậu sinh. Đại sang phòng cạnh nghỉ, gọi điện cho Mai chúc ngủ ngon — ôn lại từ JP trong ngày.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ngủ chưa? Đông ngủ ngoan không em? |
| Mai | (tiếng Việt) Em đang ngủ thiu thiu. Đông ngủ ngon trên ngực em. Một ngày dài quá anh ạ. |
| Đại | (tiếng Việt) Ừ em. Hôm nay anh học được mấy từ tiếng Nhật mới ở phòng sinh: <ruby>破水<rt>はすい</rt></ruby> hasui là vỡ ối, <ruby>陣痛<rt>じんつう</rt></ruby> jintsuu là cơn co chuyển dạ, <ruby>子宮口<rt>しきゅうこう</rt></ruby> shikyuukou là cổ tử cung. |
| Mai | (tiếng Việt) Em cũng học được. Bác sĩ bảo <ruby>分娩室<rt>ぶんべんしつ</rt></ruby> bunbenshitsu là phòng sinh. Còn <ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby> tachiai-bunben là sinh có chồng vào cùng. |
| Đại | (tiếng Việt) 2 tuần trước anh học toàn từ business JP — <ruby>着金<rt>ちゃっきん</rt></ruby> chakkin là tiền về tài khoản, <ruby>取締役会<rt>とりしまりやくかい</rt></ruby> torishimariyakukai là họp board. Hôm nay học toàn từ sản khoa. |
| Mai | (tiếng Việt) Cuộc đời mình tươi đẹp ghê. 18 ngày — vốn về và con về. |
| Đại | (tiếng Việt) Em ngủ ngon nhé. Mai sáng anh sang sớm. Yêu em. |
| Mai | (tiếng Việt) Yêu anh. |

---

## Đọng lại chương 9

Một chương dồn dập 18 ngày giữa hai sự kiện lớn nhất đời Đại. Ngày close Series A 30/11 — Đại học **「<ruby>本日<rt>ほんじつ</rt></ruby>はクロージングデーです」**, **「<ruby>署名<rt>しょめい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です」**, **「<ruby>着金<rt>ちゃっきん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しました」** từ formal business JP. Họp board #1 với Anri + JAFCO + Yamamoto independent — Đại học **「<ruby>議題<rt>ぎだい</rt></ruby>は6<ruby>点<rt>てん</rt></ruby>でございます」**, dám hỏi lại **「プロラタ<ruby>権<rt>けん</rt></ruby>というのはどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか？」** khi không hiểu thuật ngữ. Announce 育休 trên Slack bằng **「<ruby>家族<rt>かぞく</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>を<ruby>大切<rt>たいせつ</rt></ruby>にしたいと<ruby>思<rt>おも</rt></ruby>います」**. 18/12 4:30 sáng Mai vỡ ối — Đại gọi taxi gấp bằng JP **「<ruby>緊急<rt>きんきゅう</rt></ruby>です、<ruby>妻<rt>つま</rt></ruby>が<ruby>陣痛<rt>じんつう</rt></ruby>で」**, vào phòng sinh học từ **<ruby>破水<rt>はすい</rt></ruby>・<ruby>陣痛<rt>じんつう</rt></ruby>・<ruby>子宮口<rt>しきゅうこう</rt></ruby>・<ruby>分娩室<rt>ぶんべんしつ</rt></ruby>・<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby>**. 7:30 sáng bé Đông ra đời. Tối Đại gọi điện cho Mai từ phòng cạnh, ôn lại từ JP business + sản khoa trong cùng 1 ngày.

> Từ vựng & mẫu câu chương này: クロージングデー・<ruby>署名<rt>しょめい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>・<ruby>着金<rt>ちゃっきん</rt></ruby>・<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>送金<rt>そうきん</rt></ruby>・<ruby>残高<rt>ざんだか</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>・<ruby>取締役会<rt>とりしまりやくかい</rt></ruby>・<ruby>議題<rt>ぎだい</rt></ruby>・<ruby>代行<rt>だいこう</rt></ruby>CEO・プロラタ<ruby>権<rt>けん</rt></ruby>・<ruby>比例配分<rt>ひれいはいぶん</rt></ruby>・<ruby>育休<rt>いくきゅう</rt></ruby>・<ruby>破水<rt>はすい</rt></ruby>・<ruby>陣痛<rt>じんつう</rt></ruby>・<ruby>子宮口<rt>しきゅうこう</rt></ruby>・<ruby>分娩室<rt>ぶんべんしつ</rt></ruby>・<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby>・<ruby>男<rt>おとこ</rt></ruby>の<ruby>子<rt>こ</rt></ruby>・<ruby>初<rt>はじ</rt></ruby>めての<ruby>対面<rt>たいめん</rt></ruby>・〜というのはどういう<ruby>意味<rt>いみ</rt></ruby>でしょうか・<ruby>承知<rt>しょうち</rt></ruby>いたしました

## Bí quyết chương

- **「<ruby>承知<rt>しょうち</rt></ruby>いたしました」** trong board meeting = "đã rõ" formal hơn 「<ruby>分<rt>わ</rt></ruby>かりました」
- Khi không hiểu thuật ngữ trong board, **PHẢI hỏi lại** — Sato-san nhắc "取締役全員でCEOを支えるのが役割". Im lặng giả vờ hiểu = tệ nhất.
- Gọi taxi khẩn cấp tại Nhật: nêu rõ **「<ruby>緊急<rt>きんきゅう</rt></ruby>です」** + lý do + địa chỉ chính xác
- Phòng sinh JP: **<ruby>立<rt>た</rt></ruby>ち<ruby>会<rt>あ</rt></ruby>い<ruby>分娩<rt>ぶんべん</rt></ruby>** (chồng vào cùng) phổ biến — bác sĩ thường hỏi trước
- Founder lấy 育休 sớm = signal mạnh cho team về văn hoá family-first

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 新幹線 | しんかんせん | TÂN CÁN TUYẾN | tàu shinkansen |
| 到着 | とうちゃく | ĐÁO TRƯỚC | đến |
| 記念写真 | きねんしゃしん | KÝ NIỆM TẢ CHÂN | ảnh kỷ niệm |
| 会計士 | かいけいし | HỘI KẾ SĨ | kế toán viên |
| 各書類 | かくしょるい | CÁC THƯ LOẠI | mỗi tài liệu |
| 箇所 | かしょ | CÁ SỞ | chỗ, vị trí |
| 完了 | かんりょう | HOÀN LIỄU | hoàn tất |
| 銀行送金 | ぎんこうそうきん | NGÂN HÀNG TỐNG KIM | chuyển khoản ngân hàng |
| 命令 | めいれい | MỆNH LỆNH | lệnh |
| 法人口座 | ほうじんこうざ | PHÁP NHÂN KHẨU TOẠ | tài khoản pháp nhân |
| 着金 | ちゃっきん | TRƯỚC KIM | tiền vào tài khoản |
| 残高 | ざんだか | TÀN CAO | số dư |
| 会計処理 | かいけいしょり | HỘI KẾ XỬ LÝ | xử lý kế toán |
| 資本金 | しほんきん | TƯ BẢN KIM | vốn điều lệ |
| 増資 | ぞうし | TĂNG TƯ | tăng vốn |
| 登記変更 | とうきへんこう | ĐĂNG KÝ BIẾN CANH | thay đổi đăng ký |
| 手続き | てつづき | THỦ TỤC | thủ tục |
| 章 | しょう | CHƯƠNG | chương |
| 見出し | みだし | KIẾN XUẤT | tiêu đề |
| 嬉しい | うれしい | HỈ | vui mừng |
| 誇り | ほこり | KHOA | tự hào |
| 研究室 | けんきゅうしつ | NGHIÊN CỨU THẤT | phòng nghiên cứu |
| 基礎 | きそ | CƠ SỞ | nền tảng |
| 議題 | ぎだい | NGHỊ ĐỀ | nội dung họp |
| 妥当 | だとう | THOẢ ĐƯƠNG | hợp lý |
| 人件費 | じんけんひ | NHÂN KIỆN PHÍ | chi phí nhân sự |
| 復帰 | ふっき | PHỤC QUY | quay lại |
| 既存 | きそん | KÝ TỒN | hiện hữu |
| 持分比率 | もちぶんひりつ | TRÌ PHÂN TỶ SUẤT | tỷ lệ cổ phần |
| 比例配分 | ひれいはいぶん | TỶ LỆ PHỐI PHÂN | phân bổ theo tỷ lệ |
| 追加出資 | ついかしゅっし | TRUY GIA XUẤT TƯ | đầu tư thêm |
| 権利 | けんり | QUYỀN LỢI | quyền |
| 用語 | ようご | DỤNG NGỮ | thuật ngữ |
| 聞き返す | ききかえす | VĂN PHẢN | hỏi lại |
| 支える | ささえる | CHI | hỗ trợ |
| 緊急 | きんきゅう | KHẨN CẤP | khẩn cấp |
| 連絡 | れんらく | LIÊN LẠC | liên lạc |
| 破水 | はすい | PHÁ THUỶ | vỡ ối |
| 子宮口 | しきゅうこう | TỬ CUNG KHẨU | cổ tử cung |
| 分娩室 | ぶんべんしつ | PHÂN MIỄN THẤT | phòng sinh |
| ご主人 | ごしゅじん | CHỦ NHÂN | chồng (kính ngữ) |
| 立ち会う | たちあう | LẬP HỘI | có mặt cùng |
| 頭 | あたま | ĐẦU | đầu |
| いきむ | — | — | rặn |
| 元気 | げんき | NGUYÊN KHÍ | khoẻ mạnh |
| 対面 | たいめん | ĐỐI DIỆN | đối diện, gặp mặt |
| 弟 | おとうと | ĐỆ | em trai |
| 孫 | まご | TÔN | cháu |
| 妊娠前 | にんしんまえ | NHÂM THẦN TIỀN | trước khi mang thai |
| 子宮 | しきゅう | TỬ CUNG | tử cung |
| 収縮 | しゅうしゅく | THU SÚC | co lại |
| 再開 | さいかい | TÁI KHAI | bắt đầu lại |
| 母乳 | ぼにゅう | MẪU NHŨ | sữa mẹ |
| 両立 | りょうりつ | LƯỠNG LẬP | cân bằng (hai việc) |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000010, 800000026, NULL, 'markdown_book', 'T10. Office riêng Umeda + 5 hires onboard (オフィス拡張)', '# Sách kỹ sư cầu nối & khởi nghiệp · T10. Office riêng Umeda + 5 hires onboard (オフィス拡張)

> **Mục tiêu nhân vật:** Đại 26 tuổi, vừa quay lại từ 育休 4 tuần. Học các mẫu hội thoại tiếng Nhật: (1) chào tạm biệt 育休 với Mai tiếng Việt; (2) câu "お<ruby>帰<rt>かえ</rt></ruby>りなさい" khi quay lại văn phòng; (3) chair onboarding 5 hires bằng JP formal; (4) tự giới thiệu của nhân viên mới Mercari/Recruit/CyberAgent; (5) ceremony move-in office riêng + 乾杯; (6) tiếp đón gia đình thăm office; (7) bàn lịch part-time return của vợ; (8) phản tư cuối tháng + bàn kế hoạch con thứ 3.

---

## Bối cảnh

Tháng 1-2/2032. Sau Series A close 30/11 và bé Đông sinh 18/12, Đại nghỉ 育休 4 tuần. Hôm nay 15/1 quay lại. Q1: 5 hires onboard (3 dev + 1 marketing + 1 ops) đưa team từ 5 lên 10. 1/2 move-in office riêng Umeda Center 8F (¥600k/tháng, 25 desks). Mai postpartum 1-2 tháng, bé Đông khoẻ, Hana 3 tuổi 5 tháng. Chương này tập trung mẫu câu **quay lại sau 育休**, **onboarding nhân viên mới**, **ceremony move-in**, và bàn luận **lịch part-time return** với vợ.

---

## Tình huống 1 — Phòng khách Senri-chuo · 14/1 22:00, đêm cuối 育休

*Đại ngồi cạnh Mai trên ghế sofa. Bé Đông 28 ngày ngủ trên ngực Mai. Hana ngủ ở phòng bên.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi! Mai anh quay lại đi làm rồi nhỉ. |
| Đại | (tiếng Việt, xoa lưng Mai) Ừ em. 4 tuần 育休 trôi nhanh ghê. |
| Mai | (tiếng Việt) Em sẽ nhớ anh ở nhà cả ngày. Đông cũng quen có anh bế. |
| Đại | (tiếng Việt) Em ơi! Anh hứa: sáng đưa Hana đi nhà trẻ, chiều về đúng 18:00. Cuối tuần dành 100% cho gia đình. Tối tắm cho Đông cùng em. |
| Mai | (tiếng Việt, ôm Đại) Cảm ơn anh. Anh là người chồng tốt nhất. |
| Đại | (tiếng Việt) Tháng 2-3 anh sẽ giảm giờ làm nếu em cần. Hizashi giờ có Tuấn, Aiko và 5 hires sắp về — không cần anh ở văn phòng cả ngày. |

---

## Tình huống 2 — WeWork Umeda · 15/1 9:30, Đại Day 1 quay lại — "おかえりなさい"

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN, mở cửa) Đại quay lại rồi mọi người ơi! |
| Aiko | (JP) ダイくん！お<ruby>帰<rt>かえ</rt></ruby>りなさい！<br>*(Đại ơi! Mừng anh trở lại!)* |
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さん、ただいま<ruby>戻<rt>もど</rt></ruby>りました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Mọi người, em đã quay lại. Xin được hợp tác tiếp.)* |
| Tanaka | (JP) <ruby>育休<rt>いくきゅう</rt></ruby>はいかがでしたか？<br>*(育休 thế nào ạ?)* |
| Đại | (JP) <ruby>素晴<rt>すば</rt></ruby>らしかったです。ドンくんと1<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>絆<rt>きずな</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>めました。ハナちゃんも<ruby>姉<rt>あね</rt></ruby>として<ruby>頑張<rt>がんば</rt></ruby>ってくれて、マイの<ruby>回復<rt>かいふく</rt></ruby>もサポートできました。<br>*(Tuyệt vời. Gắn bó với Đông 1 tháng. Hana cố làm chị. Hỗ trợ được Mai hồi phục.)* |
| Sakura (UI) | (JP) <ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>って<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>素敵<rt>すてき</rt></ruby>です！<br>*(Founder lấy 父親育休 thật là tuyệt!)* |

---

## Tình huống 3 — Phòng họp WeWork · 15/1 10:00, Tuấn báo cáo 4 tuần qua

*Tuấn mở Notion dashboard — Đại nghe update lần đầu sau 4 tuần.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (JP, formal mode) ダイさん、<ruby>育休<rt>いくきゅう</rt></ruby><ruby>期間中<rt>きかんちゅう</rt></ruby>の<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします。<br>*(Đại-san, xin báo cáo tình hình trong thời gian 育休.)* |
| Tuấn | (JP) 1<ruby>点<rt>てん</rt></ruby><ruby>目<rt>め</rt></ruby>、シリーズA<ruby>送金<rt>そうきん</rt></ruby>はみずほ<ruby>銀行<rt>ぎんこう</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Điểm 1: chuyển khoản Series A đã xác nhận tại Mizuho.)* |
| Tuấn | (JP) 2<ruby>点<rt>てん</rt></ruby><ruby>目<rt>め</rt></ruby>、5<ruby>名<rt>めい</rt></ruby><ruby>採用<rt>さいよう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>。20<ruby>日<rt>にち</rt></ruby><ruby>月曜<rt>げつよう</rt></ruby>オンボーディング<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Điểm 2: kế hoạch tuyển 5 người đã chốt. Onboard dự kiến thứ Hai 20.)* |
| Tuấn | (JP) 3<ruby>点<rt>てん</rt></ruby><ruby>目<rt>め</rt></ruby>、<ruby>梅田<rt>うめだ</rt></ruby>センター8<ruby>階<rt>かい</rt></ruby>の<ruby>賃貸契約書<rt>ちんたいけいやくしょ</rt></ruby><ruby>署名<rt>しょめい</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。2/1ムーブイン<ruby>予定<rt>よてい</rt></ruby>。<br>*(Điểm 3: hợp đồng thuê Umeda Center tầng 8 đã ký. Move-in 1/2.)* |
| Tuấn | (JP) 4<ruby>点<rt>てん</rt></ruby><ruby>目<rt>め</rt></ruby>、v2.1<ruby>マイナー<rt>マイナー</rt></ruby>リリース<ruby>完了<rt>かんりょう</rt></ruby>。チャーンレートは2.8%、<ruby>改善<rt>かいぜん</rt></ruby><ruby>傾向<rt>けいこう</rt></ruby>です。<br>*(Điểm 4: v2.1 minor release đã xong. Churn rate 2.8%, xu hướng cải thiện.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとう、トゥアン。<br>*(Đã rõ. Cảm ơn Tuấn thật sự.)* |

---

## Tình huống 4 — Phòng họp · 20/1 9:30, kick-off onboarding 5 hires + Đại intro

| Vai | Lời thoại |
|---|---|
| Đại | (JP, đứng đầu phòng) <ruby>本日<rt>ほんじつ</rt></ruby>からHizashiは10<ruby>名<rt>めい</rt></ruby>になりました。<ruby>新<rt>あたら</rt></ruby>しい<ruby>仲間<rt>なかま</rt></ruby>5<ruby>名<rt>めい</rt></ruby>、ようこそ！<br>*(Từ hôm nay Hizashi 10 người. Chào mừng 5 thành viên mới!)* |
| Đại | (JP) <ruby>本日<rt>ほんじつ</rt></ruby>はオンボーディングDay 1です。<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay là Day 1 onboarding. Lần lượt tự giới thiệu nhé.)* |

---

## Tình huống 5 — Phòng họp · 9:40, Hayashi-san (Senior Backend ex-CyberAgent) tự giới thiệu

| Vai | Lời thoại |
|---|---|
| Hayashi | (JP) <ruby>本日<rt>ほんじつ</rt></ruby>からよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>林<rt>はやし</rt></ruby><ruby>大輔<rt>だいすけ</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>前職<rt>ぜんしょく</rt></ruby>はサイバーエージェントで7<ruby>年<rt>ねん</rt></ruby><ruby>間<rt>かん</rt></ruby>バックエンドを<ruby>担当<rt>たんとう</rt></ruby>しておりました。<br>*(Tôi tên Hayashi Daisuke. Trước đây 7 năm phụ trách backend tại CyberAgent.)* |
| Hayashi | (JP) Hizashiのマルチランゲージ・ビジョンに<ruby>強<rt>つよ</rt></ruby>く<ruby>共感<rt>きょうかん</rt></ruby>しております。スケーラビリティで<ruby>貢献<rt>こうけん</rt></ruby>させていただきます。<br>*(Tôi đồng cảm mạnh với tầm nhìn đa ngôn ngữ của Hizashi. Sẽ đóng góp về scalability.)* |
| Đại | (JP) <ruby>林<rt>はやし</rt></ruby>さん、こちらこそよろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Hayashi-san, xin được hợp tác.)* |
| Park (Korean BE) | (JP) パク・ジフンと<ruby>申<rt>もう</rt></ruby>します。<ruby>前職<rt>ぜんしょく</rt></ruby>はネイバー<ruby>東京<rt>とうきょう</rt></ruby>です。<ruby>実<rt>じつ</rt></ruby>は<ruby>入社前<rt>にゅうしゃまえ</rt></ruby>から Hizashi の<ruby>有料<rt>ゆうりょう</rt></ruby>ユーザーでした！<br>*(Tôi tên Park Ji-hoon. Trước đây làm Naver Tokyo. Thật ra trước khi vào công ty đã là người dùng trả phí của Hizashi!)* |
| Cả phòng | (cười) おお〜！<br>*(Wow!)* |

---

## Tình huống 6 — Phòng họp · 10:00, Yui-san (Marketing ex-Mercari) tự giới thiệu

| Vai | Lời thoại |
|---|---|
| Yui | (JP) <ruby>佐藤<rt>さとう</rt></ruby><ruby>結衣<rt>ゆい</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>前職<rt>ぜんしょく</rt></ruby>のメルカリ<ruby>時代<rt>じだい</rt></ruby>は<ruby>韓国<rt>かんこく</rt></ruby>マーケットの<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げを<ruby>担当<rt>たんとう</rt></ruby>し、<ruby>月次<rt>げつじ</rt></ruby>30%の<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>実現<rt>じつげん</rt></ruby>しました。<br>*(Tôi là Sato Yui. Thời Mercari phụ trách launch thị trường Hàn, đạt tăng trưởng tháng 30%.)* |
| Yui | (JP) Hizashiでも<ruby>同様<rt>どうよう</rt></ruby>の<ruby>成長<rt>せいちょう</rt></ruby>パターンを<ruby>目指<rt>めざ</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Tại Hizashi sẽ hướng tới pattern tăng trưởng tương tự. Xin được hợp tác.)* |
| Ken (Ops ex-Recruit) | (JP) <ruby>中村<rt>なかむら</rt></ruby><ruby>健<rt>けん</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>前職<rt>ぜんしょく</rt></ruby>はリクルートでオペレーションズ＆ファイナンスを<ruby>担当<rt>たんとう</rt></ruby>。シリーズB<ruby>準備<rt>じゅんび</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて、100<ruby>名<rt>めい</rt></ruby>スケールのバックオフィスを<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Tôi là Nakamura Ken. Trước phụ trách Ops & Finance tại Recruit. Hướng tới Series B sẽ hỗ trợ back-office quy mô 100 người.)* |
| Wang (Chinese BE) | (JP) <ruby>王<rt>ワン</rt></ruby><ruby>欣<rt>シン</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<ruby>北京<rt>ペキン</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>、<ruby>東京<rt>とうきょう</rt></ruby><ruby>在住<rt>ざいじゅう</rt></ruby>10<ruby>年<rt>ねん</rt></ruby>です。<ruby>中国<rt>ちゅうごく</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>の<ruby>架<rt>か</rt></ruby>け<ruby>橋<rt>ばし</rt></ruby>として<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Tôi là Wang Xin. Gốc Bắc Kinh, sống Tokyo 10 năm. Sẽ làm cầu nối thị trường Trung Quốc.)* |

---

## Tình huống 7 — Phòng họp · 10:30, Đại hỏi lại tên kanji Hayashi-san

*Đại nghe Hayashi giới thiệu nhưng không chắc chắn kanji tên — phải hỏi lại tránh ghi sai trong Slack roster.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>林<rt>はやし</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>ですが、お<ruby>名前<rt>なまえ</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただけますか？<br>*(Hayashi-san, xin lỗi, có thể xác nhận lại kanji tên cho tôi không?)* |
| Hayashi | (JP) はい、<ruby>木<rt>き</rt></ruby><ruby>偏<rt>へん</rt></ruby>に<ruby>木<rt>き</rt></ruby>の「<ruby>林<rt>はやし</rt></ruby>」、<ruby>大<rt>だい</rt></ruby>きい<ruby>助<rt>すけ</rt></ruby>けるで「<ruby>大輔<rt>だいすけ</rt></ruby>」です。<br>*(Vâng, "林" gồm bộ mộc + mộc, "大輔" là "大" + "輔".)* |
| Đại | (JP) ありがとうございます。Slackと<ruby>名刺<rt>めいし</rt></ruby><ruby>用<rt>よう</rt></ruby>に<ruby>記録<rt>きろく</rt></ruby>いたします。<br>*(Cảm ơn. Tôi ghi lại cho Slack và name card.)* |
| Hayashi | (JP) お<ruby>気<rt>き</rt></ruby><ruby>遣<rt>づか</rt></ruby>いありがとうございます。<br>*(Cảm ơn sự quan tâm.)* |

---

## Tình huống 8 — Umeda Center 8F · 1/2 10:00, move-in day ribbon cut

*Hizashi team 10 người tập trung trước cửa office riêng. Aiko cầm bảng logo Hizashi. Tuấn cầm kéo.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さん、Hizashi<ruby>自社<rt>じしゃ</rt></ruby>オフィスDay 1です！<br>*(Mọi người, office riêng của Hizashi Day 1!)* |
| Tuấn | (VN) Chào mừng về nhà Hizashi! |
| Aiko | (JP, treo bảng logo) <ruby>桜<rt>さくら</rt></ruby>さんと<ruby>一緒<rt>いっしょ</rt></ruby>にHizashiのサインを<ruby>設置<rt>せっち</rt></ruby>しました！<br>*(Tôi và Sakura đã treo bảng Hizashi xong!)* |
| Tanaka | (JP, mở champagne) <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Cả team (10) | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Hayashi | (JP) <ruby>初<rt>はじ</rt></ruby>めて<ruby>所属<rt>しょぞく</rt></ruby>する<ruby>自社<rt>じしゃ</rt></ruby>オフィスです！<ruby>感慨深<rt>かんがいぶか</rt></ruby>いです！<br>*(Lần đầu thuộc về một office riêng! Cảm xúc khó tả!)* |
| Yui | (JP) Instagram と LinkedIn に「Hizashi office grand opening Day 1!」を<ruby>投稿<rt>とうこう</rt></ruby>しました。1<ruby>時間<rt>じかん</rt></ruby>でバズりました！<br>*(Đã đăng Instagram và LinkedIn, viral trong 1 tiếng!)* |

---

## Tình huống 9 — Office Umeda · 7/2 14:00, Mai + Hana + bé Đông visit office

*Cuối tuần. Mai bế bé Đông 51 ngày, dắt Hana 3 tuổi 6 tháng đến office lần đầu.*

| Vai | Lời thoại |
|---|---|
| Hana | (VN, mắt mở to) Bố! Office của bố! To quá! |
| Mai | (VN) Ôi! 25 bàn làm việc, có lounge và view Umeda nữa. Đẹp quá anh ơi! |
| Aiko | (JP, đưa tay xin bế bé Đông) ドンくん！<ruby>初<rt>はじ</rt></ruby>めまして！<ruby>愛子<rt>あいこ</rt></ruby>おばちゃんよ！<br>*(Đông ơi! Lần đầu gặp con! Bác Aiko đây!)* |
| Mai | (JP, đưa bé cẩn thận) <ruby>愛子<rt>あいこ</rt></ruby>さん、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Aiko-san, nhờ chị nhé.)* |
| Tuấn | (VN) Chị Mai, chào mừng đến trụ sở Hizashi! |
| Tanaka | (JP, đưa Hana gấu teddy) ハナちゃん！Hizashi<ruby>記念<rt>きねん</rt></ruby>のテディベアだよ！<br>*(Hana ơi! Gấu teddy kỷ niệm Hizashi đây!)* |
| Hana | (VN, ôm gấu) Cảm ơn chú Tanaka! |
| Đại | (VN, ôm Mai) Em ơi! Cảm xúc đặc biệt thật — vợ và 2 con đến thăm office mình tự dựng nên. |

---

## Tình huống 10 — Phòng khách Senri-chuo · 15/2 22:00, bàn lịch part-time return của Mai

| Vai | Lời thoại |
|---|---|
| Mai | (VN, cho Đông bú) Anh ơi! Đông 60 ngày rồi. Em hồi phục được 80%. |
| Đại | (VN) Em ơi anh tự hỏi — em có muốn quay lại làm tour guide không? |
| Mai | (VN, suy nghĩ) Em nghĩ thế này anh nghe nhé. Đông 6 tháng mới vào 保育園. Hana 3,5 tuổi đang đi nhà trẻ rồi. Em có thể đi làm part-time 2 buổi/tuần từ 4/2032 lúc Đông 4 tháng, hoặc full-time từ 8/2032 lúc Đông 8 tháng vào 保育園. |
| Đại | (VN) Em chọn nhịp em thấy thoải mái. Hizashi MRR ¥6M/tháng, lương anh ¥600k/tháng, không áp lực tài chính. |
| Mai | (VN) Em chọn 4/2032, part-time 2 buổi tour guide. Em yêu công việc đó, chỉ cần nghỉ 1 tuần khi Đông ốm thôi. |
| Đại | (VN, ôm Mai) Tốt em! Anh điều chỉnh lịch để đón Đông 17:00 vào những ngày em đi tour. |

---

## Tình huống 11 — Office Umeda · 25/2 10:00, Đại hỏi Aiko cách viết email khách hàng formal

*Đại sắp gửi email cảm ơn cho Park-director TOPIK Korea Foundation — chưa chắc câu mở đầu.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>愛子<rt>あいこ</rt></ruby>さん、<ruby>韓国<rt>かんこく</rt></ruby>のパクさんに<ruby>御礼<rt>おんれい</rt></ruby>メールを<ruby>送<rt>おく</rt></ruby>りたいんですが、<ruby>冒頭<rt>ぼうとう</rt></ruby>はどう<ruby>書<rt>か</rt></ruby>けばいいですか？<br>*(Aiko-san, tôi muốn gửi email cảm ơn cho Park-san Hàn Quốc, nhưng phần mở đầu nên viết thế nào?)* |
| Aiko | (JP) <ruby>取引先<rt>とりひきさき</rt></ruby><ruby>初回<rt>しょかい</rt></ruby>メールなら「<ruby>平素<rt>へいそ</rt></ruby>より<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております」が<ruby>定番<rt>ていばん</rt></ruby>です。<br>*(Email lần đầu với đối tác thì "luôn được anh chị quan tâm giúp đỡ" là câu chuẩn.)* |
| Đại | (JP) なるほど。それから<ruby>本題<rt>ほんだい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る<ruby>前<rt>まえ</rt></ruby>に<ruby>何<rt>なに</rt></ruby>か<ruby>必要<rt>ひつよう</rt></ruby>ですか？<br>*(Hiểu rồi. Trước khi vào nội dung chính có cần thêm gì không?)* |
| Aiko | (JP) 「<ruby>先日<rt>せんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、ミーティングのお<ruby>時間<rt>じかん</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>し、<ruby>誠<rt>まこと</rt></ruby>にありがとうございました」を<ruby>入<rt>い</rt></ruby>れると<ruby>丁寧<rt>ていねい</rt></ruby>です。<br>*(Thêm "cảm ơn vì đã dành thời gian họp dù bận rộn vừa rồi" sẽ lịch sự.)* |
| Đại | (JP) ありがとう、<ruby>愛子<rt>あいこ</rt></ruby>さん！<br>*(Cảm ơn Aiko-san!)* |

---

## Tình huống 12 — Office Umeda · 28/2 18:00, all hands tháng 1+2 wrap

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さん、1<ruby>月<rt>がつ</rt></ruby>2<ruby>月<rt>がつ</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りです。MRRは1<ruby>月<rt>がつ</rt></ruby>¥6.0M、2<ruby>月<rt>がつ</rt></ruby>¥6.5M。<br>*(Mọi người, tổng kết tháng 1-2. MRR tháng 1 ¥6M, tháng 2 ¥6.5M.)* |
| Đại | (JP) チャーンレートは2.8%から2.5%に<ruby>改善<rt>かいぜん</rt></ruby>。<ruby>韓国<rt>かんこく</rt></ruby>マーケットの<ruby>登録<rt>とうろく</rt></ruby>は+30%、<ruby>結衣<rt>ゆい</rt></ruby>さんのインフルエンサーキャンペーンが<ruby>効<rt>き</rt></ruby>いています。<br>*(Churn rate cải thiện từ 2.8% xuống 2.5%. Đăng ký thị trường Hàn +30%, campaign influencer của Yui-san hiệu quả.)* |
| Yui | (JP) ROIは4.5<ruby>倍<rt>ばい</rt></ruby>です。<br>*(ROI 4.5 lần.)* |
| Hayashi | (JP) v2.1.5を<ruby>リリース<rt>リリース</rt></ruby>しました。データベースのリードレプリカ5<ruby>ノード<rt>ノード</rt></ruby>。レイテンシp95は480msから290msに<ruby>低下<rt>ていか</rt></ruby>。<br>*(v2.1.5 đã release. 5 read replica node. Latency p95 từ 480ms xuống 290ms.)* |
| Đại | (JP) <ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>来月<rt>らいげつ</rt></ruby>もこの<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Tuyệt vời! Tháng sau cố gắng cùng nhịp này.)* |

---

## Tình huống 13 — Cảnh tiếng Việt · 28/2 23:00, Đại gọi Mai từ phòng làm việc nhà

*Đại làm việc khuya nhà, Mai đã đưa Đông và Hana đi ngủ. Đại sang phòng khách bưng cà phê cho Mai, hai vợ chồng ngồi chia sẻ.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em chưa ngủ à? Đông ngủ ngoan chứ? |
| Mai | (tiếng Việt) Đông ngủ rồi. Em đợi anh xong việc để hai vợ chồng nói chuyện. |
| Đại | (tiếng Việt) Hôm nay anh học mấy mẫu mới ở office. Khi cảm ơn đối tác lần đầu, Aiko bảo viết "<ruby>平素<rt>へいそ</rt></ruby>より<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております" — heiso yori taihen osewa ni natte orimasu. |
| Mai | (tiếng Việt) Lâu rồi em không học từ business. Nhưng "<ruby>御礼<rt>おんれい</rt></ruby>メール" onrei mēru — email cảm ơn — em nhớ từ này. Anh dùng tốt nhỉ. |
| Đại | (tiếng Việt) Còn 育休 trở lại — "お<ruby>帰<rt>かえ</rt></ruby>りなさい" okaerinasai mọi người chào. Anh học được "ただいま<ruby>戻<rt>もど</rt></ruby>りました" tadaima modorimashita để đáp lại formal. |
| Mai | (tiếng Việt) Nghe ấm cúng quá anh. Như là về nhà. |
| Đại | (tiếng Việt) Hizashi giờ đúng là gia đình thứ 2 của anh thật. Em sang chơi thêm cuối tuần nhé. |
| Mai | (tiếng Việt) Vâng. À mai em định đi siêu thị mua đồ sơ sinh — anh nhớ về 18:00 đón Hana giúp em nhé. |
| Đại | (tiếng Việt) Yên tâm em. |

---

## Tình huống 14 — Phòng ngủ Senri-chuo · 28/2 23:30, bàn kế hoạch con thứ 3 dài hạn

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt, nằm cạnh Đại) Anh ơi! Em hỏi 1 câu — anh có muốn con thứ 3 không? |
| Đại | (tiếng Việt, ngạc nhiên) Em? Mới sinh Đông 70 ngày! |
| Mai | (tiếng Việt, cười) Em hỏi dài hạn thôi. 3-4 năm nữa. |
| Đại | (tiếng Việt, suy nghĩ) Em à, anh thích 3 con. Nhà em chỉ có em là độc nữ, nhà anh có 2 (anh và Linh-Anh). Cảm giác 3 con là vừa đủ trọn vẹn. |
| Mai | (tiếng Việt) Em cũng muốn 3. Hana gái + Đông trai + 1 bé nữa = 3 con. |
| Đại | (tiếng Việt, ôm Mai) Em ơi! Mình 26 tuổi. 30 tuổi mình có 3 con và Hizashi gần IPO. Đẹp ghê. |
| Mai | (tiếng Việt) Vâng anh. Cuộc đời mình tươi đẹp lắm. |

---

## Đọng lại chương 10

Tháng 1-2/2032 là tháng chuyển đổi: Đại quay lại từ 育休 4 tuần — học mẫu câu **「お<ruby>帰<rt>かえ</rt></ruby>りなさい」** / **「ただいま<ruby>戻<rt>もど</rt></ruby>りました」** khi quay lại, **「<ruby>育休<rt>いくきゅう</rt></ruby>はいかがでしたか？」** từ đồng nghiệp, và cách Tuấn **「<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします」** báo cáo 4 điểm trong 4 tuần. Onboarding 5 hires — Đại học mẫu **「<ruby>順番<rt>じゅんばん</rt></ruby>に<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします」**, và nghe mẫu tự giới thiệu kinh điển **「〜と<ruby>申<rt>もう</rt></ruby>します。<ruby>前職<rt>ぜんしょく</rt></ruby>は〜です」** từ ex-CyberAgent/Naver/Mercari/Recruit. Khi chưa rõ kanji tên, **「<ruby>失礼<rt>しつれい</rt></ruby>ですが、お<ruby>名前<rt>なまえ</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただけますか？」** — Đại dám hỏi lại. Move-in office Umeda Center 8F với **「<ruby>乾杯<rt>かんぱい</rt></ruby>」** ceremony. Học email formal đối tác mới mở đầu **「<ruby>平素<rt>へいそ</rt></ruby>より<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております」** từ Aiko. Tối cuối tháng vợ chồng bàn part-time return 4/2032 và kế hoạch con thứ 3 dài hạn.

> Từ vựng & mẫu câu chương này: お<ruby>帰<rt>かえ</rt></ruby>りなさい・ただいま<ruby>戻<rt>もど</rt></ruby>りました・<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>いたします・<ruby>承知<rt>しょうち</rt></ruby>いたしました・<ruby>自己紹介<rt>じこしょうかい</rt></ruby>・〜と<ruby>申<rt>もう</rt></ruby>します・<ruby>前職<rt>ぜんしょく</rt></ruby>・<ruby>失礼<rt>しつれい</rt></ruby>ですが・<ruby>漢字<rt>かんじ</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>・<ruby>乾杯<rt>かんぱい</rt></ruby>・<ruby>自社<rt>じしゃ</rt></ruby>オフィス・<ruby>感慨深<rt>かんがいぶか</rt></ruby>い・<ruby>平素<rt>へいそ</rt></ruby>より<ruby>大変<rt>たいへん</rt></ruby>お<ruby>世話<rt>せわ</rt></ruby>になっております・<ruby>御礼<rt>おんれい</rt></ruby>メール・<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>り・<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>・<ruby>絆<rt>きずな</rt></ruby>を<ruby>深<rt>ふか</rt></ruby>める・<ruby>回復<rt>かいふく</rt></ruby>

## Bí quyết chương

- **「お<ruby>帰<rt>かえ</rt></ruby>りなさい」** ≠ chỉ dùng ở nhà — đồng nghiệp cũng dùng khi đón ai đó quay lại sau nghỉ dài
- Tự giới thiệu trong onboarding: **「〜と<ruby>申<rt>もう</rt></ruby>します。<ruby>前職<rt>ぜんしょく</rt></ruby>は〜で〜を<ruby>担当<rt>たんとう</rt></ruby>しておりました」** là template chuẩn
- Khi không chắc kanji tên Nhật → **「お<ruby>名前<rt>なまえ</rt></ruby>の<ruby>漢字<rt>かんじ</rt></ruby>をもう<ruby>一度<rt>いちど</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>させていただけますか」** lịch sự và chuyên nghiệp
- Email business JP với đối tác: mở đầu **「<ruby>平素<rt>へいそ</rt></ruby>より大変お<ruby>世話<rt>せわ</rt></ruby>になっております」** + cảm ơn ngữ cảnh trước khi vào nội dung
- Bàn việc lớn (con thứ 3, lịch part-time return) với vợ → cuối ngày, không gián đoạn, cho vợ chọn nhịp

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 戻りました | もどりました | LỆ | đã quay lại |
| 絆 | きずな | BÁN | sợi dây gắn kết |
| 深める | ふかめる | THÂM | làm sâu thêm |
| 姉 | あね | TỶ | chị |
| 回復 | かいふく | HỒI PHỤC | hồi phục |
| 素敵 | すてき | TỐ KÍCH | tuyệt vời |
| 期間中 | きかんちゅう | KỲ GIAN TRUNG | trong thời gian |
| 状況 | じょうきょう | TÌNH HUỐNG | tình hình |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 賃貸契約書 | ちんたいけいやくしょ | NHIỆM ĐẠI KHẾ ƯỚC THƯ | hợp đồng thuê |
| 傾向 | けいこう | KHUYNH HƯỚNG | xu hướng |
| 仲間 | なかま | TRUNG GIAN | đồng đội, bạn bè |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | tự giới thiệu |
| 申します | もうします | THÂN | tôi là (khiêm nhường) |
| 前職 | ぜんしょく | TIỀN CHỨC | nơi làm cũ |
| 共感 | きょうかん | CỘNG CẢM | đồng cảm |
| 貢献 | こうけん | CỐNG HIẾN | đóng góp |
| 入社前 | にゅうしゃまえ | NHẬP XÃ TIỀN | trước khi vào công ty |
| 月次 | げつじ | NGUYỆT THỨ | hàng tháng |
| 成長 | せいちょう | THÀNH TRƯỜNG | tăng trưởng |
| 実現 | じつげん | THỰC HIỆN | thực hiện |
| 同様 | どうよう | ĐỒNG DẠNG | tương tự |
| 出身 | しゅっしん | XUẤT THÂN | quê quán |
| 在住 | ざいじゅう | TẠI TRÚ | đang sống tại |
| 架け橋 | かけはし | GIÁ KIỀU | cầu nối |
| 失礼 | しつれい | THẤT LỄ | thất lễ, xin lỗi |
| 漢字 | かんじ | HÁN TỰ | chữ Hán |
| 記録 | きろく | KÝ LỤC | ghi lại |
| 名刺 | めいし | DANH THÍCH | danh thiếp |
| 気遣い | きづかい | KHÍ KHIỂN | sự quan tâm |
| 自社 | じしゃ | TỰ XÃ | của công ty mình |
| 設置 | せっち | THIẾT TRÍ | lắp đặt |
| 所属 | しょぞく | SỞ THUỘC | thuộc về |
| 感慨深い | かんがいぶかい | CẢM KHÁI THÂM | xúc động khó tả |
| 取引先 | とりひきさき | THỦ DẪN TIÊN | đối tác kinh doanh |
| 初回 | しょかい | SƠ HỒI | lần đầu |
| 平素 | へいそ | BÌNH TỐ | thường ngày |
| 定番 | ていばん | ĐỊNH PHIÊN | chuẩn mực |
| 本題 | ほんだい | BẢN ĐỀ | nội dung chính |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | nhận (kính ngữ) |
| 丁寧 | ていねい | ĐINH NINH | lịch sự |
| 御礼 | おんれい | NGỰ LỄ | lời cảm ơn |
| 冒頭 | ぼうとう | MẠO ĐẦU | mở đầu |
| 登録 | とうろく | ĐĂNG LỤC | đăng ký |
| 効く | きく | HIỆU | có hiệu quả |
| 低下 | ていか | ĐÊ HẠ | giảm |
| 調子 | ちょうし | ĐIỀU TỬ | nhịp độ |
| 産婦人科 | さんふじんか | SẢN PHỤ NHÂN KHOA | sản phụ khoa |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000011, 800000026, NULL, 'markdown_book', 'T11. Chuyển visa 経営・管理 (Business Manager) (経営管理ビザ)', '# Sách kỹ sư cầu nối & khởi nghiệp · T11. Chuyển visa 経営・管理 (Business Manager) (経営管理ビザ)

> **Mục tiêu nhân vật:** Đại 26 tuổi, chuyển từ 高度専門職 1号 sang 経営・管理 visa (Business Manager) — visa dành cho founder/CEO. Học các mẫu hội thoại tiếng Nhật: (1) consult luật sư nhập cư qua Zoom keigo cao; (2) đọc bảng kiểm tài liệu cho 入管 (Cục Quản lý Xuất nhập cảnh); (3) nộp hồ sơ tại quầy 大阪入国管理局; (4) hỏi nhân viên 入管 về quy trình family dependent visa; (5) báo cáo team Slack về visa approval; (6) bàn pitch partnership với TOPIK Korea (mixed JP-EN); (7) đối thoại bác sĩ sản khoa hậu sản 2 tháng; (8) cảnh tiếng Việt cuối — vợ chồng bàn lộ trình 永住権 dài hạn.

---

## Bối cảnh

Tháng 2-3/2032. Đại visa hiện tại: 高度専門職 1号 (Highly Skilled Foreign Professional, hiệu lực 2030/4-2035/4). Sau Series A close ¥230M, Đại đủ điều kiện chuyển sang **経営・管理** (Business Manager visa) — phù hợp tư cách founder/CEO Hizashi Inc. Luật sư Suzuki (corporate + immigration) handle. Mai postpartum 2 tháng (Đông 2.5 tháng), Hana 3 tuổi 7 tháng. Chương này tập trung mẫu câu **入管 keigo + thủ tục visa**, **đọc bảng kiểm hồ sơ JP formal**, và mẫu câu **partnership pitch song ngữ JP-EN** với đối tác Hàn.

---

## Tình huống 1 — Office Umeda 8F · 5/2 14:00, Zoom consult luật sư Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | (Zoom, JP) ダイさん、<ruby>本日<rt>ほんじつ</rt></ruby>はビザ<ruby>転換<rt>てんかん</rt></ruby>のご<ruby>相談<rt>そうだん</rt></ruby>ですね。お<ruby>世話<rt>せわ</rt></ruby>になっております。<br>*(Đại-san, hôm nay tư vấn chuyển đổi visa. Cảm ơn anh đã liên hệ.)* |
| Đại | (JP) <ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>現在<rt>げんざい</rt></ruby>は<ruby>高度専門職<rt>こうどせんもんしょく</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>を<ruby>所持<rt>しょじ</rt></ruby>しております。2030/4<ruby>発行<rt>はっこう</rt></ruby>、5<ruby>年<rt>ねん</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>です。<br>*(Suzuki-sensei, cảm ơn thầy. Hiện tôi giữ 高度専門職 1号. Cấp 4/2030, hiệu lực 5 năm.)* |
| Đại | (JP) Hizashi の<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>でシリーズA<ruby>調達<rt>ちょうたつ</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<ruby>経営・管理<rt>けいえいかんり</rt></ruby>ビザに<ruby>該当<rt>がいとう</rt></ruby>しますでしょうか？<br>*(Là founder Hizashi đã gọi Series A. Có đủ điều kiện 経営・管理 không ạ?)* |
| Suzuki | (JP) はい、<ruby>該当<rt>がいとう</rt></ruby>いたします。シリーズA ¥230Mが<ruby>資本<rt>しほん</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>従業員<rt>じゅうぎょういん</rt></ruby>10<ruby>名<rt>めい</rt></ruby>が<ruby>事業<rt>じぎょう</rt></ruby><ruby>実績<rt>じっせき</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>梅田<rt>うめだ</rt></ruby>センターのオフィスが<ruby>事業<rt>じぎょう</rt></ruby><ruby>実体<rt>じったい</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>になります。<br>*(Vâng, đủ điều kiện. Series A ¥230M chứng minh vốn. 10 nhân viên chứng minh business thực. Office Umeda Center chứng minh thực thể.)* |
| Đại | (JP) <ruby>転換<rt>てんかん</rt></ruby>のメリットは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Lợi ích chuyển đổi là gì ạ?)* |
| Suzuki | (JP) <ruby>四点<rt>よんてん</rt></ruby>ございます。<ruby>第一<rt>だいいち</rt></ruby>、<ruby>5年<rt>ごねん</rt></ruby>ビザで<ruby>事業<rt>じぎょう</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby><ruby>緩<rt>ゆる</rt></ruby>やか。<ruby>第二<rt>だいに</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby><ruby>呼<rt>よ</rt></ruby>び<ruby>寄<rt>よ</rt></ruby>せOK。<ruby>第三<rt>だいさん</rt></ruby>、CEOの<ruby>肩書<rt>かたが</rt></ruby>き<ruby>明確<rt>めいかく</rt></ruby>。<ruby>第四<rt>だいよん</rt></ruby>、<ruby>永住権<rt>えいじゅうけん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>が5<ruby>年<rt>ねん</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>可能<rt>かのう</rt></ruby>です。<br>*(Có 4 điểm. 1: visa 5 năm điều kiện duy trì dễ. 2: bảo lãnh gia đình OK. 3: chức danh CEO rõ. 4: xin 永住権 sau 5 năm.)* |

---

## Tình huống 2 — Office Umeda · 5/2 14:30, hỏi lại quy trình + tài liệu

*Đại chưa rõ "履歴事項全部証明書" là gì — phải hỏi lại Suzuki-sensei.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありませんが、「<ruby>履歴事項<rt>りれきじこう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>」というのはどういう<ruby>書類<rt>しょるい</rt></ruby>でしょうか？<br>*(Sensei, xin lỗi, "履歴事項全部証明書" là tài liệu gì ạ?)* |
| Suzuki | (JP) <ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>登記<rt>とうき</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>を<ruby>全<rt>すべ</rt></ruby>て<ruby>記載<rt>きさい</rt></ruby>した<ruby>証明書<rt>しょうめいしょ</rt></ruby>です。<ruby>法務局<rt>ほうむきょく</rt></ruby>で<ruby>取得<rt>しゅとく</rt></ruby>できます。<ruby>手数料<rt>てすうりょう</rt></ruby>は¥600です。<br>*(Là giấy chứng nhận toàn bộ lịch sử đăng ký công ty. Lấy ở 法務局. Phí ¥600.)* |
| Đại | (JP) なるほど、ありがとうございます。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby><ruby>一覧<rt>いちらん</rt></ruby>をいただけますか？<br>*(Hiểu rồi. Có thể gửi danh sách tài liệu cần không?)* |
| Suzuki | (JP) はい、メールで<ruby>送<rt>おく</rt></ruby>ります。8<ruby>点<rt>てん</rt></ruby>ございます。<ruby>履歴事項<rt>りれきじこう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>残高<rt>ざんだか</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>、<ruby>給与明細<rt>きゅうよめいさい</rt></ruby>6<ruby>ヶ月分<rt>かげつぶん</rt></ruby>、<ruby>確定申告書<rt>かくていしんこくしょ</rt></ruby>、<ruby>賃貸契約書<rt>ちんたいけいやくしょ</rt></ruby>、<ruby>履歴書<rt>りれきしょ</rt></ruby>、<ruby>証明写真<rt>しょうめいしゃしん</rt></ruby>です。<br>*(Vâng, sẽ gửi mail. 8 mục: chứng nhận đăng ký công ty, chứng nhận số dư ngân hàng, hợp đồng lao động, bảng lương 6 tháng, tờ khai thuế, hợp đồng thuê nhà, lý lịch, ảnh.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>火曜日<rt>かようび</rt></ruby>までに<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>揃<rt>そろ</rt></ruby>えます。<br>*(Đã rõ. Đến thứ Ba tuần sau sẽ chuẩn bị đầy đủ.)* |

---

## Tình huống 3 — Pháp vụ phòng Hizashi · 10/2 11:00, Ken chuẩn bị tài liệu công ty

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>中村<rt>なかむら</rt></ruby>さん、<ruby>経営・管理<rt>けいえいかんり</rt></ruby>ビザの<ruby>申請<rt>しんせい</rt></ruby>に<ruby>会社<rt>かいしゃ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>手伝<rt>てつだ</rt></ruby>っていただけますか？<br>*(Nakamura-san, hồ sơ visa 経営・管理 cần tài liệu công ty. Anh giúp được không?)* |
| Ken | (JP) もちろんです、ダイさん。<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>ですか？<br>*(Tất nhiên Đại-san. Cụ thể cần gì?)* |
| Đại | (JP) 3<ruby>点<rt>てん</rt></ruby>です。<ruby>法務局<rt>ほうむきょく</rt></ruby>で<ruby>履歴事項<rt>りれきじこう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、みずほ<ruby>銀行<rt>ぎんこう</rt></ruby>で<ruby>残高<rt>ざんだか</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby><ruby>決算書<rt>けっさんしょ</rt></ruby>2031<ruby>年度<rt>ねんど</rt></ruby>です。<br>*(3 mục: ở 法務局 lấy 履歴事項全部証明書, ở Mizuho lấy chứng nhận số dư, báo cáo tài chính công ty năm 2031.)* |
| Ken | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>明日<rt>あした</rt></ruby><ruby>法務局<rt>ほうむきょく</rt></ruby>とみずほに<ruby>行<rt>い</rt></ruby>って<ruby>取得<rt>しゅとく</rt></ruby>します。<ruby>決算書<rt>けっさんしょ</rt></ruby>は<ruby>会計士<rt>かいけいし</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Đã rõ. Mai tôi đi 法務局 và Mizuho. Báo cáo tài chính sẽ liên hệ kế toán Tanaka-sensei.)* |
| Đại | (JP) ありがとうございます。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>助<rt>たす</rt></ruby>かります。<br>*(Cảm ơn. Thật sự được giúp đỡ.)* |

---

## Tình huống 4 — Cục Quản lý XNC Osaka · 12/2 10:30, nộp hồ sơ tại quầy

*Đại đến 大阪入国管理局 (Tennoji branch) cùng Suzuki-sensei. Cầm cọc tài liệu A4 dày 5cm.*

| Vai | Lời thoại |
|---|---|
| Nhân viên 入管 | (JP) <ruby>次<rt>つぎ</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、どうぞ。<br>*(Vị tiếp theo, mời.)* |
| Đại | (JP, cúi chào) お<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>です。<ruby>高度専門職<rt>こうどせんもんしょく</rt></ruby>1<ruby>号<rt>ごう</rt></ruby>から<ruby>経営・管理<rt>けいえいかんり</rt></ruby>へ。<br>*(Xin nhờ. Đơn xin thay đổi tư cách lưu trú. Từ 高度専門職 1号 sang 経営・管理.)* |
| Nhân viên | (JP) <ruby>申請書<rt>しんせいしょ</rt></ruby>と<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đơn và tài liệu cần thiết, xin gửi cho tôi.)* |
| Đại | (JP, đưa file) こちらでございます。8<ruby>点<rt>てん</rt></ruby><ruby>揃<rt>そろ</rt></ruby>っております。<br>*(Đây ạ. Đầy đủ 8 mục.)* |
| Nhân viên | (JP, kiểm tra) ...<ruby>履歴事項<rt>りれきじこう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>、<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>残高<rt>ざんだか</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>...はい、<ruby>受理<rt>じゅり</rt></ruby>いたします。<ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby>は6〜8<ruby>週間<rt>しゅうかん</rt></ruby>です。<br>*(...履歴事項全部証明書, chứng nhận số dư...vâng, tôi nhận. Thời gian xử lý 6-8 tuần.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>結果<rt>けっか</rt></ruby>は<ruby>郵送<rt>ゆうそう</rt></ruby>でしょうか？<br>*(Đã rõ. Kết quả gửi bưu điện ạ?)* |
| Nhân viên | (JP) はい、<ruby>結果通知<rt>けっかつうち</rt></ruby>のハガキを<ruby>郵送<rt>ゆうそう</rt></ruby>いたします。<ruby>許可<rt>きょか</rt></ruby><ruby>後<rt>ご</rt></ruby>、こちらの<ruby>窓口<rt>まどぐち</rt></ruby>で<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>ってください。<br>*(Vâng, gửi bưu thiếp thông báo. Sau khi duyệt, đến quầy này nhận thẻ 在留 mới.)* |

---

## Tình huống 5 — Cục Quản lý XNC · 10:50, hỏi nhân viên về visa cho gia đình

| Vai | Lời thoại |
|---|---|
| Đại | (JP) すみません、もう<ruby>一<rt>ひと</rt></ruby>つお<ruby>伺<rt>うかが</rt></ruby>いしたいことがございます。<br>*(Xin lỗi, tôi muốn hỏi thêm một việc nữa.)* |
| Nhân viên | (JP) はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | (JP) <ruby>妻<rt>つま</rt></ruby>は<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>ビザを<ruby>所持<rt>しょじ</rt></ruby>しております。<ruby>子<rt>こ</rt></ruby>どもが2<ruby>人<rt>にん</rt></ruby>、<ruby>日本<rt>にほん</rt></ruby><ruby>生<rt>う</rt></ruby>まれです。<ruby>私<rt>わたし</rt></ruby>のビザ<ruby>転換<rt>てんかん</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>妻<rt>つま</rt></ruby>と<ruby>子<rt>こ</rt></ruby>どもの<ruby>更新<rt>こうしん</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きはどうなりますか？<br>*(Vợ tôi giữ visa 家族滞在. 2 con sinh tại Nhật. Sau khi tôi chuyển visa, thủ tục gia hạn vợ con thế nào ạ?)* |
| Nhân viên | (JP) ご<ruby>主人<rt>しゅじん</rt></ruby>の<ruby>許可<rt>きょか</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>または<ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>は<ruby>戸籍謄本<rt>こせきとうほん</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>と<ruby>住民票<rt>じゅうみんひょう</rt></ruby>です。<br>*(Sau khi anh được duyệt, nộp đơn gia hạn/thay đổi 家族滞在. Tài liệu cần: giấy tương đương hộ tịch và 住民票.)* |
| Đại | (JP) ベトナム<ruby>国籍<rt>こくせき</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>戸籍謄本<rt>こせきとうほん</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>は<ruby>結婚証明書<rt>けっこんしょうめいしょ</rt></ruby>で<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか？<br>*(Quốc tịch Việt Nam, giấy tương đương hộ tịch dùng giấy đăng ký kết hôn được không?)* |
| Nhân viên | (JP) はい、<ruby>結婚証明書<rt>けっこんしょうめいしょ</rt></ruby>のベトナム<ruby>語<rt>ご</rt></ruby><ruby>原本<rt>げんぽん</rt></ruby>＋<ruby>日本語<rt>にほんご</rt></ruby><ruby>翻訳<rt>ほんやく</rt></ruby><ruby>公証<rt>こうしょう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, bản gốc tiếng Việt + bản dịch tiếng Nhật công chứng.)* |
| Đại | (JP, cúi chào) ありがとうございました。<br>*(Cảm ơn anh.)* |

---

## Tình huống 6 — Office Umeda standup · 15/2 9:30, all hands tháng 2 stats

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さん、February<ruby>中間<rt>ちゅうかん</rt></ruby>stats<ruby>共有<rt>きょうゆう</rt></ruby>します。MRR ¥6.5M、<ruby>登録<rt>とうろく</rt></ruby><ruby>者<rt>しゃ</rt></ruby>65,000、Paid 6,800、チャーンレート2.5%です。<br>*(Mọi người, chia sẻ stats giữa tháng 2. MRR ¥6.5M, đăng ký 65k, Paid 6.8k, churn 2.5%.)* |
| Yui | (JP) <ruby>韓国<rt>かんこく</rt></ruby>と<ruby>中国<rt>ちゅうごく</rt></ruby>のインフルエンサーキャンペーンで、<ruby>韓国<rt>かんこく</rt></ruby>マーケットの<ruby>登録<rt>とうろく</rt></ruby>+30%、ROI 4.5<ruby>倍<rt>ばい</rt></ruby>です。<br>*(Campaign influencer Hàn + Trung, đăng ký Hàn +30%, ROI 4.5x.)* |
| Park | (JP) ダイさん、TOPIK Korea Foundation から<ruby>連絡<rt>れんらく</rt></ruby>がありました。<ruby>提携<rt>ていけい</rt></ruby>の<ruby>機会<rt>きかい</rt></ruby>です！<br>*(Đại-san, có liên lạc từ TOPIK Korea Foundation. Cơ hội partnership!)* |
| Đại | (JP) TOPIKは<ruby>韓国<rt>かんこく</rt></ruby><ruby>公式<rt>こうしき</rt></ruby>の<ruby>言語<rt>げんご</rt></ruby>テスト<ruby>機関<rt>きかん</rt></ruby>ですね。<ruby>提携<rt>ていけい</rt></ruby>できれば<ruby>巨大<rt>きょだい</rt></ruby>なチャンスです。<ruby>来週<rt>らいしゅう</rt></ruby>ソウルで<ruby>探索<rt>たんさく</rt></ruby>ミーティングを<ruby>行<rt>おこな</rt></ruby>いましょう。<br>*(TOPIK là cơ quan kiểm định ngôn ngữ chính thức của Hàn. Partnership được là cơ hội lớn. Đến Seoul tuần sau!)* |

---

## Tình huống 7 — Bệnh viện Senri-chuo · 18/2 11:00, Mai postpartum check 2 tháng

| Vai | Lời thoại |
|---|---|
| Mai | (JP) <ruby>田中<rt>たなか</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>産後<rt>さんご</rt></ruby>2<ruby>ヶ月<rt>かげつ</rt></ruby>の<ruby>検診<rt>けんしん</rt></ruby>です。<br>*(Tanaka-sensei, hôm nay là khám hậu sản 2 tháng.)* |
| Bác sĩ Tanaka | (JP, khám) マイさん、<ruby>順調<rt>じゅんちょう</rt></ruby>です。<ruby>体重<rt>たいじゅう</rt></ruby>は<ruby>妊娠前<rt>にんしんまえ</rt></ruby>+3kg、ピーク+9kgから<ruby>戻<rt>もど</rt></ruby>っています。<ruby>子宮<rt>しきゅう</rt></ruby><ruby>収縮<rt>しゅうしゅく</rt></ruby>も<ruby>正常<rt>せいじょう</rt></ruby>です。<br>*(Mai-san thuận lợi. Cân nặng +3kg so trước thai (giảm từ đỉnh +9kg). Co tử cung bình thường.)* |
| Mai | (JP) <ruby>先生<rt>せんせい</rt></ruby>、<ruby>運動<rt>うんどう</rt></ruby>を<ruby>再開<rt>さいかい</rt></ruby>しても<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか？<br>*(Thưa bác sĩ, vận động lại được chưa ạ?)* |
| Bác sĩ | (JP) <ruby>軽<rt>かる</rt></ruby>い<ruby>散歩<rt>さんぽ</rt></ruby>とヨガはOK。4<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>はフル<ruby>運動<rt>うんどう</rt></ruby><ruby>可<rt>か</rt></ruby>。<ruby>仕事<rt>しごと</rt></ruby><ruby>復帰<rt>ふっき</rt></ruby>は2〜3<ruby>ヶ月<rt>かげつ</rt></ruby><ruby>以内<rt>いない</rt></ruby><ruby>現実的<rt>げんじつてき</rt></ruby>です。<br>*(Đi bộ nhẹ và yoga OK. Sau 4 tháng vận động đầy đủ. Đi làm lại 2-3 tháng nữa khả thi.)* |
| Mai | (JP) 4<ruby>月<rt>がつ</rt></ruby>からツアーガイドのパートタイム<ruby>復帰<rt>ふっき</rt></ruby>を<ruby>計画<rt>けいかく</rt></ruby>しています。<br>*(Em định 4/2032 quay lại tour guide bán thời gian.)* |
| Bác sĩ | (JP, mỉm cười) <ruby>素晴<rt>すば</rt></ruby>らしいですね。<ruby>母乳<rt>ぼにゅう</rt></ruby>と<ruby>仕事<rt>しごと</rt></ruby>の<ruby>両立<rt>りょうりつ</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>ですが、ご<ruby>主人<rt>しゅじん</rt></ruby>のサポートがあれば<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Tuyệt vời. Cân bằng cho con bú và đi làm vất vả nhưng có sự hỗ trợ của chồng là khả thi.)* |

---

## Tình huống 8 — Sân bay Incheon · 25/2 14:00, Đại đến Seoul cùng Park

| Vai | Lời thoại |
|---|---|
| Park | (JP) ダイさん、<ruby>到着<rt>とうちゃく</rt></ruby>しました。TOPIKオフィスはソウルの<ruby>瑞草区<rt>ソチョグ</rt></ruby>です。タクシーで30<ruby>分<rt>ぷん</rt></ruby>です。<br>*(Đại-san, đã đến. Văn phòng TOPIK ở Seocho-gu Seoul. Taxi 30 phút.)* |
| Đại | (JP) <ruby>朴<rt>パク</rt></ruby><ruby>所長<rt>しょちょう</rt></ruby>は<ruby>韓国語<rt>かんこくご</rt></ruby>と<ruby>英語<rt>えいご</rt></ruby>と<ruby>日本語<rt>にほんご</rt></ruby>のどれをお<ruby>使<rt>つか</rt></ruby>いになりますか？<br>*(Park-director dùng tiếng Hàn, Anh hay Nhật?)* |
| Park | (JP) <ruby>英語<rt>えいご</rt></ruby>が<ruby>共通<rt>きょうつう</rt></ruby><ruby>言語<rt>げんご</rt></ruby>です。<ruby>韓国語<rt>かんこくご</rt></ruby>での<ruby>挨拶<rt>あいさつ</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>が<ruby>担当<rt>たんとう</rt></ruby>します。<br>*(Tiếng Anh là ngôn ngữ chung. Chào hỏi tiếng Hàn tôi phụ trách.)* |

---

## Tình huống 9 — TOPIK Office Seoul · 25/2 15:30, partnership pitch song ngữ

| Vai | Lời thoại |
|---|---|
| Park-director (TOPIK) | (English) Park-san, Đại-san, welcome to TOPIK Korea Foundation. We find Hizashi very interesting. |
| Đại | (English) Thank you, Park-director. Let me share our partnership proposal. Four points: |
| Đại | (English) One — Hizashi develops TOPIK exam preparation content for Korean learners studying Japanese. Two — TOPIK provides official endorsement to Hizashi Korean module. Three — Joint co-marketing campaign in Korean market. Four — Revenue share 70/30 Hizashi/TOPIK. |
| Park-director | (English) Very interesting. The endorsement direction aligns with our strategic plan for 2032. Let me discuss with the board. Decision in 2-3 weeks. |
| Đại | (JP, ngoài lề với Park Ji-hoon) <ruby>朴<rt>パク</rt></ruby><ruby>所長<rt>しょちょう</rt></ruby>の<ruby>反応<rt>はんのう</rt></ruby>はポジティブですね。<br>*(Phản ứng của Park-director tích cực nhỉ.)* |
| Park (JP) | (JP) <ruby>韓国<rt>かんこく</rt></ruby><ruby>文化<rt>ぶんか</rt></ruby>では「very interesting」は<ruby>承認<rt>しょうにん</rt></ruby><ruby>寄<rt>よ</rt></ruby>りの<ruby>言葉<rt>ことば</rt></ruby>です。<ruby>期待<rt>きたい</rt></ruby>できます。<br>*(Văn hoá Hàn "very interesting" là lời thiên về đồng ý. Có thể kỳ vọng.)* |

---

## Tình huống 10 — Office Umeda · 5/3 14:00, visa approval — LINE từ Suzuki

| Vai | Lời thoại |
|---|---|
| Suzuki | (LINE) ダイさん！<ruby>朗報<rt>ろうほう</rt></ruby>です！<ruby>経営・管理<rt>けいえいかんり</rt></ruby>ビザがAPPROVEDされました！5<ruby>年<rt>ねん</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>です。<br>*(Tin vui! Visa 経営・管理 đã được duyệt! Hiệu lực 5 năm.)* |
| Đại | (LINE, JP) <ruby>本当<rt>ほんとう</rt></ruby>ですか！<ruby>予定<rt>よてい</rt></ruby>より3<ruby>週間<rt>しゅうかん</rt></ruby><ruby>早<rt>はや</rt></ruby>いですね！<br>*(Thật ạ! Nhanh hơn dự kiến 3 tuần!)* |
| Suzuki | (LINE, JP) <ruby>書類<rt>しょるい</rt></ruby>の<ruby>整<rt>ととの</rt></ruby>い、シリーズA<ruby>調達<rt>ちょうたつ</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、Anriポートフォリオ＝ファストトラックでした。<br>*(Hồ sơ chuẩn, chứng minh Series A, portfolio Anri = fast-track.)* |
| Suzuki | (LINE, JP) <ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードは<ruby>大阪<rt>おおさか</rt></ruby><ruby>入管<rt>にゅうかん</rt></ruby>で3/10に<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>りです。<br>*(Thẻ 在留 mới nhận tại Đại Quản 10/3.)* |
| Đại | (LINE, JP) <ruby>鈴木<rt>すずき</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました！<br>*(Suzuki-sensei, cảm ơn thầy thật sự!)* |
| Đại | (Slack #hizashi-team, JP) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>朗報<rt>ろうほう</rt></ruby>です！<ruby>経営・管理<rt>けいえいかんり</rt></ruby>ビザ APPROVED！5<ruby>年<rt>ねん</rt></ruby><ruby>有効<rt>ゆうこう</rt></ruby>！<br>*(Mọi người, tin vui! Visa 経営・管理 đã duyệt! Hiệu lực 5 năm!)* |

---

## Tình huống 11 — Đại Quản Osaka · 10/3 10:00, nhận thẻ 在留 mới

| Vai | Lời thoại |
|---|---|
| Nhân viên 入管 | (JP) <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードのお<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>りですね。<ruby>許可<rt>きょか</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>と<ruby>古<rt>ふる</rt></ruby>い<ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポートをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Hôm nay nhận thẻ 在留 mới nhỉ. Giấy thông báo duyệt + thẻ 在留 cũ + hộ chiếu, xin gửi.)* |
| Đại | (JP) こちらでございます。<br>*(Đây ạ.)* |
| Nhân viên | (JP, dán seal vào hộ chiếu) <ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードでございます。<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby>は「<ruby>経営・管理<rt>けいえいかんり</rt></ruby>」、<ruby>期間<rt>きかん</rt></ruby>は5<ruby>年<rt>ねん</rt></ruby>、2037/3/10までです。<br>*(Đây là thẻ 在留 mới. Tư cách "経営・管理", thời hạn 5 năm, đến 10/3/2037.)* |
| Đại | (JP, cầm thẻ) ありがとうございます。<br>*(Cảm ơn.)* |
| Nhân viên | (JP) <ruby>住所<rt>じゅうしょ</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>や<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>役員<rt>やくいん</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>などがあれば、14<ruby>日<rt>にち</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>届出<rt>とどけで</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<ruby>気<rt>き</rt></ruby>をつけてください。<br>*(Có thay đổi địa chỉ hoặc vị trí công ty, phải khai báo trong 14 ngày. Xin lưu ý.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。<br>*(Đã rõ.)* |

---

## Tình huống 12 — Office Umeda · 12/3 14:00, TOPIK partnership signed celebration

| Vai | Lời thoại |
|---|---|
| Park-director (Tokyo visit) | (English) Đại-san, Hizashi team — TOPIK board approved! Let''s sign the partnership today. |
| Đại | (English) Park-director, this is a historic day for both organizations. Thank you for your trust. |
| (Đại và Park-director ký 2 bản hợp đồng đối ứng) | |
| Yui | (JP) <ruby>共同<rt>きょうどう</rt></ruby>プレスリリースは<ruby>本日<rt>ほんじつ</rt></ruby>16<ruby>時<rt>じ</rt></ruby><ruby>配信<rt>はいしん</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<ruby>韓国<rt>かんこく</rt></ruby>メディア8<ruby>媒体<rt>ばいたい</rt></ruby><ruby>取材<rt>しゅざい</rt></ruby><ruby>確定<rt>かくてい</rt></ruby>。<br>*(Press release chung 16:00 hôm nay. 8 media Hàn xác nhận đưa tin.)* |
| Park (BE) | (JP) これでHizashiの<ruby>韓国<rt>かんこく</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>での<ruby>正当性<rt>せいとうせい</rt></ruby>が<ruby>確立<rt>かくりつ</rt></ruby>します。CACも<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>下<rt>さ</rt></ruby>がるはずです。<br>*(Thế là tính chính danh của Hizashi tại thị trường Hàn được xác lập. CAC cũng sẽ giảm mạnh.)* |

---

## Tình huống 13 — Cảnh tiếng Việt · 5/3 22:00, vợ chồng bàn lộ trình 永住権 dài hạn

*Đại về nhà sớm sau khi visa approved. Mai đang cho bé Đông 2.5 tháng bú.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Em ơi! Anh có tin lớn. |
| Mai | (tiếng Việt, ngẩng lên) Sao thế anh? |
| Đại | (tiếng Việt) Visa 経営・管理 keiei-kanri được duyệt rồi! Hiệu lực 5 năm! Đến 2037 cơ. |
| Mai | (tiếng Việt, mắt rưng rưng) Trời ơi! Vậy là mình ở Nhật chính thức thêm 5 năm nữa! |
| Đại | (tiếng Việt) Anh tóm tắt lộ trình cho em nghe: 2032-2037 visa 経営・管理 5 năm. Sau 5 năm liên tục, anh xin <ruby>永住権<rt>えいじゅうけん</rt></ruby> eijuuken — quyền thường trú. Mục tiêu 2037. |
| Mai | (tiếng Việt) Vậy còn em với 2 đứa nhỏ? |
| Đại | (tiếng Việt) Em vẫn 家族滞在 kazoku-taizai (visa phụ thuộc) như cũ, gia hạn cùng anh. Hana và Đông sinh tại Nhật — đủ 5 tuổi đủ điều kiện <ruby>永住権<rt>えいじゅうけん</rt></ruby> riêng. Khi 22 tuổi 2 đứa chọn quốc tịch Nhật hoặc Việt. |
| Mai | (tiếng Việt) Vậy là 2037: Đại 31 tuổi, anh xin 永住権. Hana 9 tuổi, Đông 6 tuổi. Bé thứ 3 (nếu có) khoảng 3 tuổi. Hizashi gần IPO. |
| Đại | (tiếng Việt) Đúng rồi em. Hôm nay ở 入管 anh hỏi thêm: visa của em với 2 con sẽ gia hạn sau khi anh được duyệt, tài liệu cần thêm giấy đăng ký kết hôn tiếng Việt bản dịch công chứng. |
| Mai | (tiếng Việt, ôm Đại) Anh ơi! Cuộc đời mình như câu chuyện cổ tích. |
| Đại | (tiếng Việt) Cổ tích này mình cùng nhau viết em ạ. |

---

## Đọng lại chương 11

Tháng 2-3/2032 Đại học thủ tục **入管 (Cục Quản lý XNC)** đầy đủ — consult luật sư bằng keigo cao **「<ruby>経営・管理<rt>けいえいかんり</rt></ruby>ビザに<ruby>該当<rt>がいとう</rt></ruby>しますでしょうか？」**, dám hỏi lại khi không hiểu thuật ngữ **「<ruby>履歴事項<rt>りれきじこう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>というのはどういう<ruby>書類<rt>しょるい</rt></ruby>でしょうか？」**. Tại quầy 入管 Osaka học mẫu **「<ruby>在留資格<rt>ざいりゅうしかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>です」**, hỏi nhân viên về visa gia đình **「<ruby>妻<rt>つま</rt></ruby>と<ruby>子<rt>こ</rt></ruby>どもの<ruby>更新<rt>こうしん</rt></ruby><ruby>手続<rt>てつづ</rt></ruby>きはどうなりますか？」**. Sang Seoul pitch TOPIK partnership bằng English mixed với JP. 5/3 visa được duyệt sớm hơn 3 tuần — Đại nhận thẻ 在留 mới tại 入管 và học mẫu **「<ruby>住所<rt>じゅうしょ</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>は14<ruby>日<rt>にち</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>届出<rt>とどけで</rt></ruby>」** về nghĩa vụ khai báo. Tối vợ chồng bàn lộ trình 永住権 2037 — kế hoạch dài hạn 5 năm.

> Từ vựng & mẫu câu chương này: <ruby>経営・管理<rt>けいえいかんり</rt></ruby>ビザ・<ruby>高度専門職<rt>こうどせんもんしょく</rt></ruby>・<ruby>在留<rt>ざいりゅう</rt></ruby>カード・<ruby>入国管理局<rt>にゅうこくかんりきょく</rt></ruby>・<ruby>永住権<rt>えいじゅうけん</rt></ruby>・<ruby>家族滞在<rt>かぞくたいざい</rt></ruby>・<ruby>履歴事項<rt>りれきじこう</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>・<ruby>雇用契約書<rt>こようけいやくしょ</rt></ruby>・<ruby>確定申告書<rt>かくていしんこくしょ</rt></ruby>・<ruby>該当<rt>がいとう</rt></ruby>します・<ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>・<ruby>処理<rt>しょり</rt></ruby><ruby>期間<rt>きかん</rt></ruby>・<ruby>結果通知<rt>けっかつうち</rt></ruby>・<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>り・<ruby>住所<rt>じゅうしょ</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>・14<ruby>日<rt>にち</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>届出<rt>とどけで</rt></ruby>・<ruby>朗報<rt>ろうほう</rt></ruby>・〜というのはどういう<ruby>書類<rt>しょるい</rt></ruby>でしょうか・<ruby>承知<rt>しょうち</rt></ruby>いたしました・<ruby>産後<rt>さんご</rt></ruby><ruby>検診<rt>けんしん</rt></ruby>

## Bí quyết chương

- **入管 (Cục Quản lý XNC)** keigo cấp cao — luôn dùng 「ございます」「いたします」「お<ruby>願<rt>ねが</rt></ruby>いいたします」「<ruby>承知<rt>しょうち</rt></ruby>いたしました」
- Khi không rõ tên tài liệu JP → **「〜というのはどういう<ruby>書類<rt>しょるい</rt></ruby>でしょうか？」** — luật sư sẽ giải thích kỹ
- **経営・管理 visa** điều kiện: vốn ¥5M+ HOẶC 2 nhân viên + business thực + office. Hizashi đáp ứng dư
- **Series A close + Anri portfolio = fast-track** (3 tuần vs 6-8 tuần dự kiến)
- Sau khi đổi visa: **住所変更・役員変更 phải khai báo trong 14 ngày** — quên = phạt
- Lộ trình 永住権: 経営・管理 5 năm liên tục → 2037 đủ điều kiện. Lên kế hoạch dài hạn ngay từ hôm nay.

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 転換 | てんかん | CHUYỂN HOÁN | chuyển đổi |
| 相談 | そうだん | TƯƠNG ĐÀM | tư vấn |
| 高度専門職 | こうどせんもんしょく | CAO ĐỘ CHUYÊN MÔN CHỨC | chuyên môn cao cấp (visa) |
| 所持 | しょじ | SỞ TRÌ | đang giữ |
| 発行 | はっこう | PHÁT HÀNH | cấp phát |
| 経営・管理 | けいえいかんり | KINH DINH QUẢN LÝ | kinh doanh quản lý (visa) |
| 証明 | しょうめい | CHỨNG MINH | chứng minh |
| 事業 | じぎょう | SỰ NGHIỆP | doanh nghiệp |
| 実績 | じっせき | THỰC TÍCH | thành tích thực |
| 実体 | じったい | THỰC THỂ | thực thể |
| 緩やか | ゆるやか | HOÃN | nới lỏng, dễ dàng |
| 呼び寄せ | よびよせ | HÔ KÝ | gọi/bảo lãnh sang |
| 肩書き | かたがき | KIÊN THƯ | chức danh |
| 永住権 | えいじゅうけん | VĨNH TRÚ QUYỀN | quyền thường trú |
| 申請 | しんせい | THÂN THỈNH | nộp đơn |
| 履歴事項全部証明書 | りれきじこうぜんぶしょうめいしょ | LÝ LỊCH SỰ HẠNG TOÀN BỘ CHỨNG MINH THƯ | giấy chứng nhận toàn bộ lịch sử đăng ký công ty |
| 登記 | とうき | ĐĂNG KÝ | đăng ký |
| 履歴 | りれき | LÝ LỊCH | lịch sử |
| 記載 | きさい | KÝ TÁI | ghi |
| 法務局 | ほうむきょく | PHÁP VỤ CỤC | Cục Pháp vụ |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | phí dịch vụ |
| 必要書類 | ひつようしょるい | TẤT YẾU THƯ LOẠI | tài liệu cần thiết |
| 一覧 | いちらん | NHẤT LÃM | danh sách |
| 銀行残高証明 | ぎんこうざんだかしょうめい | NGÂN HÀNG TÀN CAO CHỨNG MINH | chứng nhận số dư ngân hàng |
| 雇用契約書 | こようけいやくしょ | CỐ DỤNG KHẾ ƯỚC THƯ | hợp đồng tuyển dụng |
| 給与明細 | きゅうよめいさい | CẤP DỮ MINH TẾ | bảng lương |
| 確定申告書 | かくていしんこくしょ | XÁC ĐỊNH THÂN CÁO THƯ | tờ khai thuế |
| 履歴書 | りれきしょ | LÝ LỊCH THƯ | sơ yếu lý lịch |
| 証明写真 | しょうめいしゃしん | CHỨNG MINH TẢ CHÂN | ảnh thẻ |
| 揃える | そろえる | TRIỀN | chuẩn bị đủ |
| 決算書 | けっさんしょ | QUYẾT TOÁN THƯ | báo cáo tài chính |
| 在留資格 | ざいりゅうしかく | TẠI LƯU TƯ CÁCH | tư cách lưu trú |
| 変更 | へんこう | BIẾN CANH | thay đổi |
| 在留 | ざいりゅう | TẠI LƯU | lưu trú |
| 受理 | じゅり | THỪA LÝ | tiếp nhận |
| 処理期間 | しょりきかん | XỬ LÝ KỲ GIAN | thời gian xử lý |
| 郵送 | ゆうそう | BƯU TỐNG | gửi bưu điện |
| 結果通知 | けっかつうち | KẾT QUẢ THÔNG TRI | thông báo kết quả |
| 受け取る | うけとる | THỌ THỦ | nhận |
| 家族滞在 | かぞくたいざい | GIA TỘC TRỆ TẠI | gia đình theo (visa) |
| 更新 | こうしん | CANH TÂN | gia hạn |
| 戸籍謄本 | こせきとうほん | HỘ TỊCH ĐẰNG BẢN | hộ tịch |
| 住民票 | じゅうみんひょう | TRÚ DÂN PHIẾU | giấy cư trú |
| 国籍 | こくせき | QUỐC TỊCH | quốc tịch |
| 結婚証明書 | けっこんしょうめいしょ | KẾT HÔN CHỨNG MINH THƯ | giấy đăng ký kết hôn |
| 原本 | げんぽん | NGUYÊN BẢN | bản gốc |
| 翻訳 | ほんやく | PHIÊN DỊCH | bản dịch |
| 公証 | こうしょう | CÔNG CHỨNG | công chứng |
| 提携 | ていけい | ĐỀ KẾ | hợp tác |
| 巨大 | きょだい | CỰ ĐẠI | rất lớn |
| 探索 | たんさく | THÁM SÁCH | thăm dò |
| 朗報 | ろうほう | LÃNG BÁO | tin vui |
| 入管 | にゅうかん | NHẬP QUẢN | Cục Quản lý XNC |
| 入国管理局 | にゅうこくかんりきょく | NHẬP QUỐC QUẢN LÝ CỤC | Cục Quản lý XNC |
| 通知書 | つうちしょ | THÔNG TRI THƯ | giấy thông báo |
| パスポート | — | — | hộ chiếu |
| 役員 | やくいん | DỊCH VIÊN | thành viên ban điều hành |
| 届出 | とどけで | GIỚI XUẤT | khai báo |
| 産後 | さんご | SẢN HẬU | hậu sản |
| 正当性 | せいとうせい | CHÍNH ĐƯƠNG TÍNH | tính chính danh |
| 確立 | かくりつ | XÁC LẬP | xác lập |
| 大幅 | おおはば | ĐẠI BỨC | lớn, đáng kể |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (826000012, 800000026, NULL, 'markdown_book', 'T12. Year 2 close + bonenkai + tầm nhìn 10 năm global (Year 2終了 + Series B準備)', '# Sách kỹ sư cầu nối & khởi nghiệp · T12. Year 2 close + bonenkai + tầm nhìn 10 năm global (Year 2終了 + Series B準備)

> **Mục tiêu nhân vật:** Đại 26 tuổi, đóng năm 2 sau ĐH (3/2032). Học các mẫu hội thoại tiếng Nhật cuối series Đại: (1) all hands báo cáo Year 2 stats bằng JP formal; (2) board meeting bàn lịch Series B 9 tháng tới; (3) speech bonenkai (忘年会) đầu năm tài chính mới — phát biểu trang trọng trước team 10 người + investors; (4) tự giới thiệu founder trên TV NHK World; (5) cảnh tiếng Việt cuối series với gia đình lớn về tầm nhìn 10 năm 2032-2042.

---

## Bối cảnh

Cuối tháng 3 đến đầu tháng 4/2032. Đại 26 tuổi (sinh nhật 25/4 sắp 27). Hizashi 75,000 user (5x Year 1), MRR ¥7M, team 10, **TOPIK partnership signed 15/3**, **経営・管理 visa duyệt 5/3**. Hana 3 tuổi 7 tháng. Bé Đông 3.5 tháng. Mai start part-time tour guide 1/4. Năm 3 plan: Series B 9-12/2032 ¥800M target. Đây là **chương cuối series sách 14-26** (12 năm story arc 2025-2032). Chương kết thúc bằng cảnh tiếng Việt 3 thế hệ về tầm nhìn 10 năm tới.

---

## Tình huống 1 — Office Umeda 8F · 25/3/2032 9:30, kỷ niệm 2 năm tốt nghiệp

*Toàn team 10 người đang đứng quanh kitchen island, Aiko mang bánh cake "2nd Anniversary Hizashi" ra.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さん、<ruby>本日<rt>ほんじつ</rt></ruby>3<ruby>月<rt>がつ</rt></ruby>25<ruby>日<rt>にち</rt></ruby>は<ruby>私<rt>わたし</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby><ruby>卒業<rt>そつぎょう</rt></ruby>2<ruby>周年<rt>しゅうねん</rt></ruby><ruby>記念日<rt>きねんび</rt></ruby>です。<br>*(Mọi người, hôm nay 25/3 là kỷ niệm 2 năm tôi tốt nghiệp ĐH.)* |
| Tuấn | (VN) Cheers Đại! 2 năm: từ Day 1 sáng lập → Series A → team 10 người! |
| Aiko | (JP, đưa cake) 2<ruby>年間<rt>ねんかん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にあっという<ruby>間<rt>ま</rt></ruby>でしたね！<ruby>皆<rt>みな</rt></ruby>でケーキを<ruby>食<rt>た</rt></ruby>べましょう！<br>*(2 năm thật trôi qua chớp mắt! Cùng ăn cake nào!)* |
| Tanaka | (JP) メルカリ<ruby>時代<rt>じだい</rt></ruby>に5<ruby>年<rt>ねん</rt></ruby>かかった<ruby>成長<rt>せいちょう</rt></ruby>を、Hizashiは2<ruby>年<rt>ねん</rt></ruby>で<ruby>達成<rt>たっせい</rt></ruby>しました。<br>*(Tăng trưởng mất 5 năm thời Mercari, Hizashi đạt được trong 2 năm.)* |
| Hayashi | (JP) <ruby>林<rt>はやし</rt></ruby>として<ruby>入社<rt>にゅうしゃ</rt></ruby>3<ruby>ヶ月<rt>かげつ</rt></ruby>ですが、Hizashiのスピードは<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>異常<rt>いじょう</rt></ruby>です。<ruby>感動<rt>かんどう</rt></ruby>しています。<br>*(Tôi vào công ty 3 tháng, tốc độ Hizashi thật sự khác thường. Tôi cảm động.)* |
| Đại | (JP) <ruby>皆<rt>みな</rt></ruby>さんのおかげです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Nhờ mọi người. Cảm ơn thật sự.)* |

---

## Tình huống 2 — Phòng họp · 31/3 10:00, all hands Year 2 final stats

*Đại đứng trước projector. Dashboard hiển thị các con số.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) Year 2 (2031/4-2032/3) <ruby>最終<rt>さいしゅう</rt></ruby>statsを<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Chia sẻ stats cuối Year 2.)* |
| Đại | (JP) <ruby>登録<rt>とうろく</rt></ruby><ruby>者<rt>しゃ</rt></ruby>75,000<ruby>名<rt>めい</rt></ruby>（Year 1の5<ruby>倍<rt>ばい</rt></ruby>）、Paid 7,200<ruby>名<rt>めい</rt></ruby>（3.5<ruby>倍<rt>ばい</rt></ruby>）、MRR ¥7,030,000、ARR ¥84.4M、TOPIK<ruby>提携<rt>ていけい</rt></ruby><ruby>含<rt>ふく</rt></ruby>めて<ruby>合計<rt>ごうけい</rt></ruby>ARR ¥87.9Mです。<br>*(Đăng ký 75k (5x), paid 7.2k (3.5x), MRR ¥7.03M, ARR ¥84.4M, gồm TOPIK tổng ARR ¥87.9M.)* |
| Đại | (JP) チーム10<ruby>名<rt>めい</rt></ruby>、<ruby>国籍<rt>こくせき</rt></ruby>4ヵ<ruby>国<rt>こく</rt></ruby>、<ruby>平均<rt>へいきん</rt></ruby><ruby>給与<rt>きゅうよ</rt></ruby>¥6.8M。<ruby>銀行<rt>ぎんこう</rt></ruby><ruby>残高<rt>ざんだか</rt></ruby>¥235M、バーンレート¥4.5M/<ruby>月<rt>つき</rt></ruby>、<ruby>理論上<rt>りろんじょう</rt></ruby><ruby>52ヶ月<rt>ごじゅうにかげつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>のランウェイです。<br>*(Team 10, 4 quốc tịch, lương trung bình ¥6.8M. Số dư ngân hàng ¥235M, burn ¥4.5M/tháng, runway lý thuyết 52 tháng.)* |
| Tuấn | (VN) Em! Year 1 cuối ARR ¥18M. Year 2 cuối ¥87.9M. **5x growth trong 12 tháng**! |
| Yui | (JP) <ruby>韓国<rt>かんこく</rt></ruby><ruby>市場<rt>しじょう</rt></ruby>のCACが¥850から¥420に<ruby>下<rt>さ</rt></ruby>がりました（-50%）！TOPIK<ruby>提携<rt>ていけい</rt></ruby>の<ruby>効果<rt>こうか</rt></ruby>です。<br>*(CAC Hàn từ ¥850 xuống ¥420 (-50%)! Hiệu ứng partnership TOPIK.)* |

---

## Tình huống 3 — Phòng họp board · 31/3 14:00, bàn Series B 9 tháng tới

*Board 5 ghế: Đại (CEO), Tuấn (CTO), Sato-san (Anri), Sasaki-san (JAFCO), Yamamoto-san (Independent).*

| Vai | Lời thoại |
|---|---|
| Đại | (JP) シリーズBの<ruby>準備<rt>じゅんび</rt></ruby><ruby>スケジュール<rt>スケジュール</rt></ruby>について<ruby>議論<rt>ぎろん</rt></ruby>させていただきます。<br>*(Xin bàn về lịch chuẩn bị Series B.)* |
| Sato (Anri) | (JP) シリーズAクローズが2031/11/30、シリーズB<ruby>準備<rt>じゅんび</rt></ruby><ruby>開始<rt>かいし</rt></ruby>を2032/9、クローズ<ruby>目標<rt>もくひょう</rt></ruby>2032/12＝**9ヶ月**ですね。ARRの<ruby>目標<rt>もくひょう</rt></ruby>は¥150M、<ruby>現在<rt>げんざい</rt></ruby>¥87.9M × 1.7<ruby>倍<rt>ばい</rt></ruby>＝<ruby>現実的<rt>げんじつてき</rt></ruby>です。<br>*(Mục tiêu ARR ¥150M, hiện tại x 1.7 lần — hợp lý.)* |
| Sasaki (JAFCO) | (JP) シリーズBの<ruby>規模<rt>きぼ</rt></ruby>は¥600M〜1B。Anri、JAFCO、DG、WiLが<ruby>比例配分<rt>ひれいはいぶん</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>出資<rt>しゅっし</rt></ruby>、<ruby>新<rt>あら</rt></ruby>たなリードはGlobisかSBIインベストメントを<ruby>想定<rt>そうてい</rt></ruby>します。<br>*(Series B quy mô ¥600M-1B. Lead mới: Globis hoặc SBI Investment.)* |
| Yamamoto | (JP) <ruby>3年目<rt>さんねんめ</rt></ruby>の<ruby>採用<rt>さいよう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>は10<ruby>名<rt>めい</rt></ruby>から25<ruby>名<rt>めい</rt></ruby>へ。エンジニアリング<ruby>拡張<rt>かくちょう</rt></ruby>、マーケティング<ruby>拡張<rt>かくちょう</rt></ruby>、B2Bセールスチーム<ruby>新設<rt>しんせつ</rt></ruby>です。<br>*(Tuyển dụng năm 3: 10 → 25 người.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>いたしました。Q4 2032<ruby>クローズ<rt>クローズ</rt></ruby><ruby>目標<rt>もくひょう</rt></ruby>はシリーズB ¥800M、ポストマネー<ruby>評価額<rt>ひょうかがく</rt></ruby>¥4-5B（シリーズAの4<ruby>倍<rt>ばい</rt></ruby>）です。<br>*(Mục tiêu close Q4 2032: ¥800M, post-money ¥4-5B (4x Series A).)* |

---

## Tình huống 4 — Phòng họp board · 14:45, Đại hỏi lại về dilution

| Vai | Lời thoại |
|---|---|
| Đại | (JP) <ruby>佐藤<rt>さとう</rt></ruby>さん、<ruby>失礼<rt>しつれい</rt></ruby>ですが、シリーズB後の<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>持分<rt>もちぶん</rt></ruby>の<ruby>希薄化<rt>きはくか</rt></ruby>はどの<ruby>程度<rt>ていど</rt></ruby><ruby>想定<rt>そうてい</rt></ruby>すべきでしょうか？<br>*(Sato-san, xin lỗi, dilution cổ phần cofounder sau Series B nên dự kiến mức nào?)* |
| Sato | (JP) ¥800M<ruby>調達<rt>ちょうたつ</rt></ruby>でポストマネー¥4B<ruby>想定<rt>そうてい</rt></ruby>、<ruby>新規<rt>しんき</rt></ruby><ruby>投資家<rt>とうしか</rt></ruby><ruby>持分<rt>もちぶん</rt></ruby>20%<ruby>程度<rt>ていど</rt></ruby>です。<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>3<ruby>名<rt>めい</rt></ruby>はシリーズA<ruby>後<rt>ご</rt></ruby>55%から<ruby>約<rt>やく</rt></ruby>44%に<ruby>希薄化<rt>きはくか</rt></ruby>します。<br>*(Gọi ¥800M, post-money ¥4B, NĐT mới ~20%. 3 cofounder dilute từ 55% xuống ~44% sau Series B.)* |
| Đại | (JP) なるほど、<ruby>承知<rt>しょうち</rt></ruby>いたしました。<ruby>過半数<rt>かはんすう</rt></ruby><ruby>未満<rt>みまん</rt></ruby>ですが<ruby>支配権<rt>しはいけん</rt></ruby>は<ruby>維持<rt>いじ</rt></ruby>できますね。<br>*(Hiểu rồi. Dưới 50% nhưng quyền kiểm soát vẫn giữ được.)* |
| Yamamoto | (JP) ESOPプール10%を<ruby>確保<rt>かくほ</rt></ruby>することも<ruby>忘<rt>わす</rt></ruby>れないでください。25<ruby>名<rt>めい</rt></ruby><ruby>採用<rt>さいよう</rt></ruby>の<ruby>原資<rt>げんし</rt></ruby>です。<br>*(Đừng quên reserve 10% ESOP pool. Nguồn cho 25 hires.)* |

---

## Tình huống 5 — Office lounge · 1/4 19:00, fiscal year new — phát biểu 忘年会 đầu năm

*Tối 1/4 — đầu năm tài chính 2032. Hizashi tổ chức "<ruby>新年会<rt>しんねんかい</rt></ruby>" combined "<ruby>忘年会<rt>ぼうねんかい</rt></ruby>" (kết năm 2 + đón năm 3). Mời thêm Sato-san, Sasaki-san, Yamamoto-san board, luật sư Suzuki, kế toán Tanaka. Tổng 15 người.*

| Vai | Lời thoại |
|---|---|
| Đại | (JP, đứng dậy, cầm ly champagne) <ruby>皆様<rt>みなさま</rt></ruby>、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、Hizashi の<ruby>忘年会<rt>ぼうねんかい</rt></ruby>兼<ruby>新年会<rt>しんねんかい</rt></ruby>にお<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます。<br>*(Quý vị, hôm nay cảm ơn đã đến dự bonenkai kiêm shinnenkai của Hizashi giữa bận rộn.)* |
| Đại | (JP) <ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>れば、2<ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>本日<rt>ほんじつ</rt></ruby>4<ruby>月<rt>がつ</rt></ruby>1<ruby>日<rt>にち</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>はHizashi Inc のDay 1<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>として、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>を<ruby>卒業<rt>そつぎょう</rt></ruby>したばかりの24<ruby>歳<rt>さい</rt></ruby>でした。<br>*(Nhìn lại, 2 năm trước hôm nay 1/4, tôi là founder Day 1 của Hizashi, 24 tuổi vừa tốt nghiệp Osaka U.)* |
| Đại | (JP) 2<ruby>年<rt>ねん</rt></ruby>で、シードのAnri ¥30Mから、シリーズAのAnriリード ¥230Mに<ruby>成長<rt>せいちょう</rt></ruby>。チームは3<ruby>名<rt>めい</rt></ruby>から10<ruby>名<rt>めい</rt></ruby>、ARRは¥18Mから¥87.9Mに5<ruby>倍<rt>ばい</rt></ruby><ruby>成長<rt>せいちょう</rt></ruby>いたしました。<br>*(2 năm: từ seed Anri ¥30M → Series A ¥230M. Team 3 → 10. ARR ¥18M → ¥87.9M (5x).)* |
| Đại | (JP) しかし、<ruby>数字<rt>すうじ</rt></ruby>よりも<ruby>大切<rt>たいせつ</rt></ruby>なのは「<ruby>人<rt>ひと</rt></ruby>」です。<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>のチー・トゥアン、<ruby>桜井<rt>さくらい</rt></ruby><ruby>愛子<rt>あいこ</rt></ruby>、<ruby>4年間<rt>よねんかん</rt></ruby>の<ruby>同志<rt>どうし</rt></ruby>です。<br>*(Nhưng quan trọng hơn con số là "con người". Cofounder Tuấn và Aiko, đồng chí 4 năm.)* |
| Đại | (JP) リード<ruby>投資家<rt>とうしか</rt></ruby>の<ruby>佐藤<rt>さとう</rt></ruby>さん、シードから<ruby>2回連続<rt>にかいれんぞく</rt></ruby>リードしていただきました。<ruby>長期<rt>ちょうき</rt></ruby><ruby>パートナー<rt>パートナー</rt></ruby>として<ruby>心<rt>こころ</rt></ruby>から<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Lead investor Sato-san, đã lead 2 vòng liên tiếp từ seed. Cảm ơn từ tim như long-term partner.)* |
| Đại | (JP) Q1の<ruby>新<rt>あたら</rt></ruby>しい<ruby>仲間<rt>なかま</rt></ruby>5<ruby>名<rt>めい</rt></ruby>——<ruby>林<rt>はやし</rt></ruby>さん、<ruby>朴<rt>パク</rt></ruby>さん、<ruby>王<rt>ワン</rt></ruby>さん、<ruby>佐藤結衣<rt>さとうゆい</rt></ruby>さん、<ruby>中村<rt>なかむら</rt></ruby>さん、Hizashiを<ruby>選<rt>えら</rt></ruby>んでくださって<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(5 thành viên mới Q1 — Hayashi, Park, Wang, Yui, Nakamura — cảm ơn đã chọn Hizashi.)* |
| Đại | (JP) Year 3 はシリーズB ¥800M、チーム25<ruby>名<rt>めい</rt></ruby>、ARR ¥150Mを<ruby>目指<rt>めざ</rt></ruby>します。<ruby>皆様<rt>みなさま</rt></ruby>と<ruby>一緒<rt>いっしょ</rt></ruby>に、<ruby>世界<rt>せかい</rt></ruby>の<ruby>多言語<rt>たげんご</rt></ruby><ruby>学習者<rt>がくしゅうしゃ</rt></ruby>に Hizashi を<ruby>届<rt>とど</rt></ruby>けたいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Year 3 hướng tới Series B ¥800M, team 25, ARR ¥150M. Cùng quý vị, mang Hizashi đến người học đa ngôn ngữ toàn cầu.)* |
| Đại | (JP) <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Cả phòng (15) | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |

---

## Tình huống 6 — Bonenkai · 19:30, Sato-san đáp lời

| Vai | Lời thoại |
|---|---|
| Sato | (JP, đứng lên) ダイさん、<ruby>素晴<rt>すば</rt></ruby>らしいスピーチありがとうございました。<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>返<rt>かえ</rt></ruby>しさせていただきます。<br>*(Đại-san, cảm ơn bài phát biểu tuyệt vời. Xin được đáp lời.)* |
| Sato | (JP) Anri がHizashiに<ruby>2回連続<rt>にかいれんぞく</rt></ruby>リードした<ruby>理由<rt>りゆう</rt></ruby>は、<ruby>数字<rt>すうじ</rt></ruby>ではなく「ダイさんという<ruby>人物<rt>じんぶつ</rt></ruby>」と「Hizashi<ruby>文化<rt>ぶんか</rt></ruby>」です。<ruby>父親<rt>ちちおや</rt></ruby><ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る<ruby>創業者<rt>そうぎょうしゃ</rt></ruby>、4ヵ<ruby>国<rt>こく</rt></ruby><ruby>籍<rt>せき</rt></ruby>のチーム——これは<ruby>長期<rt>ちょうき</rt></ruby><ruby>投資<rt>とうし</rt></ruby>に<ruby>値<rt>あたい</rt></ruby>します。<br>*(Lý do Anri lead 2 vòng không phải con số mà là "con người Đại-san" và "văn hoá Hizashi". Founder lấy 育休, team 4 quốc tịch — đáng đầu tư dài hạn.)* |
| Sato | (JP) <ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き Year 3 もサポートさせていただきます。<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Tiếp tục support Year 3. Cạn ly!)* |
| Cả phòng | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Tuấn | (VN, nhỏ với Đại) Đại ơi! Câu Sato-san vừa nói anh nhớ ghi vào pitch deck Series B nhé. |
| Đại | (VN, gật) Ừ, "long-term investment based on culture, not metrics" — đúng câu cần cho Series B narrative. |

---

## Tình huống 7 — Bonenkai · 20:15, Hayashi-san chia sẻ ấn tượng

| Vai | Lời thoại |
|---|---|
| Hayashi | (JP, đứng dậy) <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>新入社員<rt>しんにゅうしゃいん</rt></ruby><ruby>代表<rt>だいひょう</rt></ruby>として<ruby>一言<rt>ひとこと</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。<br>*(Xin lỗi. Đại diện nhân viên mới xin có vài lời.)* |
| Hayashi | (JP) サイバーエージェントで7<ruby>年間<rt>ねんかん</rt></ruby><ruby>働<rt>はたら</rt></ruby>いた<ruby>私<rt>わたし</rt></ruby>から<ruby>見<rt>み</rt></ruby>て、Hizashi の<ruby>特異<rt>とくい</rt></ruby><ruby>性<rt>せい</rt></ruby>は3<ruby>点<rt>てん</rt></ruby>あります。<br>*(Từ góc nhìn 7 năm CyberAgent, đặc trưng Hizashi có 3 điểm.)* |
| Hayashi | (JP) <ruby>第一<rt>だいいち</rt></ruby>、<ruby>意思決定<rt>いしけってい</rt></ruby>の<ruby>速<rt>はや</rt></ruby>さ。<ruby>第二<rt>だいに</rt></ruby>、<ruby>多国籍<rt>たこくせき</rt></ruby>チーム<ruby>同士<rt>どうし</rt></ruby>の<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>信頼<rt>しんらい</rt></ruby>。<ruby>第三<rt>だいさん</rt></ruby>、<ruby>家族<rt>かぞく</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>——CEO<ruby>自身<rt>じしん</rt></ruby>が<ruby>育休<rt>いくきゅう</rt></ruby>を<ruby>取<rt>と</rt></ruby>る。<br>*(1: tốc độ ra quyết định. 2: niềm tin thật giữa team đa quốc gia. 3: văn hoá gia đình ưu tiên — CEO tự nghỉ 育休.)* |
| Hayashi | (JP) Year 3 で<ruby>全力<rt>ぜんりょく</rt></ruby><ruby>貢献<rt>こうけん</rt></ruby>させていただきます。<ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Năm 3 sẽ cống hiến hết sức. Cạn ly!)* |
| Cả phòng | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |

---

## Tình huống 8 — Office lounge · 21:00, Đại + Tuấn + Aiko 3 cofounder bên cửa sổ

*Bonenkai vẫn diễn ra. Đại, Tuấn, Aiko ra cửa sổ nhìn Umeda đêm.*

| Vai | Lời thoại |
|---|---|
| Aiko | (JP) ダイくん、トゥアン、4<ruby>年前<rt>ねんまえ</rt></ruby>、<ruby>大学<rt>だいがく</rt></ruby>2<ruby>回生<rt>かいせい</rt></ruby>の<ruby>春<rt>はる</rt></ruby>、サークルで<ruby>出会<rt>であ</rt></ruby>った<ruby>時<rt>とき</rt></ruby>、<ruby>今<rt>いま</rt></ruby>のこの<ruby>景色<rt>けしき</rt></ruby>を<ruby>想像<rt>そうぞう</rt></ruby>できましたか？<br>*(Đại, Tuấn, 4 năm trước mùa xuân năm 2 ĐH, lúc gặp ở câu lạc bộ, tưởng tượng được cảnh hôm nay không?)* |
| Tuấn | (VN) Aiko ơi! Anh không tưởng tượng nổi. 2027 anh là sinh viên CS năm 2 cô đơn. 2032 anh là CTO Hizashi sau Series A. |
| Đại | (VN) Anh cũng vậy. 2025 anh sang Nhật học tiếng. 2032 anh CEO startup ¥230M raise. 7 năm thôi. |
| Aiko | (JP) <ruby>3人<rt>さんにん</rt></ruby>で<ruby>始<rt>はじ</rt></ruby>めて、<ruby>3人<rt>さんにん</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けて、Series B も<ruby>3人<rt>さんにん</rt></ruby>で<ruby>達成<rt>たっせい</rt></ruby>しましょう。<br>*(Bắt đầu 3 người, tiếp tục 3 người, Series B cũng cùng 3 người đạt nhé.)* |
| Đại | (JP) <ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>の<ruby>絆<rt>きずな</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>命<rt>いのち</rt></ruby>です。<ruby>感謝<rt>かんしゃ</rt></ruby>しています。<br>*(Sự gắn kết cofounder là sinh mệnh công ty. Tôi biết ơn.)* |
| Tuấn | (VN, ôm Đại + Aiko) 3 đứa mình! Year 3! |

---

## Tình huống 9 — Tại nhà Senri-chuo · 2/4 11:00, NHK World quay phỏng vấn

*NHK World cử nhà báo Tanaka và camera man đến nhà Đại quay phóng sự "Vietnamese founders in Japan". Mai đang cho Đông 3.5 tháng bú, Hana 3.7 tuổi chơi gần đó.*

| Vai | Lời thoại |
|---|---|
| Tanaka (nhà báo NHK) | (JP) ダイさん、<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただきありがとうございます。<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Đại-san, cảm ơn đã dành thời gian. Xin tự giới thiệu.)* |
| Đại | (JP) <ruby>視聴者<rt>しちょうしゃ</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして。チー・ダイと<ruby>申<rt>もう</rt></ruby>します。26<ruby>歳<rt>さい</rt></ruby>、ベトナム<ruby>出身<rt>しゅっしん</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby><ruby>在住<rt>ざいじゅう</rt></ruby>7<ruby>年目<rt>ねんめ</rt></ruby>です。<ruby>言語<rt>げんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>アプリ「Hizashi」の<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>兼CEOを<ruby>務<rt>つと</rt></ruby>めております。<br>*(Khán giả, xin chào. Tôi là Chi Đại, 26 tuổi, gốc Việt, sống Osaka 7 năm. Cofounder và CEO ứng dụng học ngôn ngữ Hizashi.)* |
| Tanaka | (JP) Hizashi の<ruby>創業<rt>そうぎょう</rt></ruby>のきっかけを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Xin cho biết động cơ sáng lập Hizashi.)* |
| Đại | (JP) 2025<ruby>年<rt>ねん</rt></ruby>、<ruby>日本語学校<rt>にほんごがっこう</rt></ruby><ruby>時代<rt>じだい</rt></ruby>、<ruby>韓国<rt>かんこく</rt></ruby>とベトナムと<ruby>中国<rt>ちゅうごく</rt></ruby>の<ruby>友達<rt>ともだち</rt></ruby>と<ruby>勉強<rt>べんきょう</rt></ruby>していて<ruby>気<rt>き</rt></ruby>づきました——<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>学<rt>まな</rt></ruby>ぶアジア<ruby>圏<rt>けん</rt></ruby>の<ruby>方<rt>かた</rt></ruby>には、<ruby>母国語<rt>ぼこくご</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いで<ruby>学習<rt>がくしゅう</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きく<ruby>違<rt>ちが</rt></ruby>う、<ruby>既存<rt>きそん</rt></ruby>のアプリは<ruby>英語話者<rt>えいごわしゃ</rt></ruby><ruby>向<rt>む</rt></ruby>けに<ruby>偏<rt>かたよ</rt></ruby>っている、と。<br>*(2025, thời học tiếng tại trường JP, học cùng bạn Hàn-Việt-Trung tôi nhận ra: người học JP ở châu Á có trải nghiệm rất khác do tiếng mẹ đẻ khác, các app hiện có thiên về người nói tiếng Anh.)* |
| Tanaka | (JP) ご<ruby>家族<rt>かぞく</rt></ruby>のお<ruby>話<rt>はなし</rt></ruby>も<ruby>聞<rt>き</rt></ruby>かせてください。<br>*(Xin chia sẻ về gia đình.)* |
| Đại | (JP) <ruby>妻<rt>つま</rt></ruby>はベトナム<ruby>人<rt>じん</rt></ruby><ruby>観光<rt>かんこう</rt></ruby>ガイド、3<ruby>歳<rt>さい</rt></ruby>の<ruby>娘<rt>むすめ</rt></ruby>と3ヶ<ruby>月<rt>げつ</rt></ruby>の<ruby>息子<rt>むすこ</rt></ruby>がおります。<ruby>子<rt>こ</rt></ruby>どもは2<ruby>人<rt>にん</rt></ruby>とも<ruby>日本<rt>にほん</rt></ruby><ruby>生<rt>う</rt></ruby>まれです。<ruby>家族<rt>かぞく</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>の<ruby>文化<rt>ぶんか</rt></ruby>を<ruby>会社<rt>かいしゃ</rt></ruby>でも<ruby>大切<rt>たいせつ</rt></ruby>にしております。<br>*(Vợ là tour guide người Việt, có con gái 3 tuổi và con trai 3 tháng. Cả hai con sinh tại Nhật. Văn hoá family-first cũng giữ ở công ty.)* |

---

## Tình huống 10 — Senri-chuo · 14:00, Mai start part-time tour guide ngày đầu

*1/4 đã qua. Hôm nay 2/4 Mai chính thức bắt đầu part-time tour Kyoto đầu tiên sau 3.5 tháng nghỉ sinh.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN, sáng đưa Mai ra ga) Em ơi! Hôm nay là ngày đầu Mai quay lại tour guide! |
| Mai | (VN, mặc đẹp) Vâng anh. Sáng nay tour Kyoto, dẫn 8 khách Việt Nam. |
| Hana | (3 tuổi 7 tháng) Mẹ đi Kyoto ạ? |
| Mai | (VN) Ừ con! Tối mẹ về sẽ mang mochi về cho Hana nhé. |
| Đại | (VN, bế Đông 3.5 tháng) Em ơi! Em đi nhé. Anh ở nhà sáng với Đông và Hana. Cô đến đón Hana đi nhà trẻ lúc 8:30. |
| Mai | (hôn Đại) Cảm ơn anh! Em yêu anh. |
| (Mai đi rồi, Đại bế Đông vào nhà) | |
| Đại | (VN, với Đông) Đông ơi! Hôm nay là ngày đặc biệt — mẹ đi làm lại sau 3.5 tháng. Bố tự hào về mẹ. |

---

## Tình huống 11 — LINE Mai · 17:00, Mai báo về sau tour

| Vai | Lời thoại |
|---|---|
| Mai | (LINE, VN) Anh ơi! Em vừa xong tour Kyoto. 8 khách hài lòng. Em hạnh phúc khi được làm lại công việc em yêu. |
| Đại | (LINE, VN) Em ơi! Anh tự hào về em. |
| Mai | (LINE) Đông ngoan không anh? |
| Đại | (LINE) Đông ngủ 2 lần, ăn 4 lần (bú bình sữa mẹ trữ + 1 lần sữa công thức). Hana đi nhà trẻ về 16:30 đang chơi cạnh anh. |
| Mai | (LINE) Vâng. Em về 18:00. Mua mochi cho Hana rồi. |
| Đại | (LINE) Cảm ơn em. Yêu em. |

---

## Tình huống 12 — Phòng khách Senri-chuo · 20:00, Mai về kể chuyện tour

*Hana ăn mochi xong đi ngủ. Đông ngủ trên ngực Mai. Vợ chồng ngồi sofa.*

| Vai | Lời thoại |
|---|---|
| Hana | (3 tuổi 7 tháng) Mẹ! Mẹ kể chuyện Kyoto đi! |
| Mai | (tiếng Việt) Mẹ kể chuyện chùa vàng Kinkaku-ji nhé. Chùa vàng đẹp lung linh dưới ánh nắng. Có 1 cô khách hỏi mẹ "<ruby>金閣寺<rt>きんかくじ</rt></ruby> kinkakuji có phải toàn bằng vàng thật không?". Mẹ giải thích chỉ lớp vàng lá bên ngoài, bên trong là gỗ. |
| Hana | (mắt mở to) Wow! Hana muốn đi Kyoto! |
| Đại | (tiếng Việt, bế Đông) Đông ơi! Hè tới bố mẹ đưa cả nhà đi Kyoto nhé. |
| Mai | (tiếng Việt, hôn Đại) Anh ơi. Năm thứ 3 sẽ thế nào nhỉ? |

---

## Tình huống 13 — Cảnh tiếng Việt cuối series · 22:00, Zoom 3 thế hệ về tầm nhìn 10 năm

*Đại setup Zoom call với 3 thế hệ — Đại + Mai + Hana + Đông tại Osaka, bố mẹ Hà Nội tại VN, Tony + Yumi tại Aichi. Đêm cuối series sách 14-26.*

| Vai | Lời thoại |
|---|---|
| Bố Mai | (VN, Hà Nội) Đại con! Mai con! Bố mẹ thấy được mặt cả nhà rồi! Đông giờ 3 tháng rồi nhỉ? |
| Mai | (VN, xoay camera) Đông 3.5 tháng rồi bố mẹ. Hana đứng cạnh đây. |
| Tony | (Osaka-ben, từ Aichi) ダイ！マイ！ハナ！ドン！みんな<ruby>元気<rt>げんき</rt></ruby>そうやな！<br>*(Đại, Mai, Hana, Đông! Mọi người trông khoẻ nhỉ!)* |
| Mẹ Mai | (VN) Đại ơi! Tin Series A xong rồi Mai gửi bố mẹ. Bố mẹ tự hào lắm con. Sau Series A và Đông sinh, kế hoạch 10 năm tới của con là gì? |
| Đại | (tiếng Việt) Dạ bố mẹ, con xin chia sẻ tầm nhìn 10 năm 2032-2042: |
| Đại | (tiếng Việt) **2032-2033 năm 3-4**: Series B ¥800M chốt 12/2032, team mở rộng 10 → 25. ARR mục tiêu ¥150M. Mở rộng US market. |
| Đại | (tiếng Việt) **2034-2035**: bé thứ 3 (nếu hai vợ chồng con thuận lợi). Series C ¥2-3B. ARR ¥500M. Team 60. |
| Đại | (tiếng Việt) **2036-2037**: Hizashi IPO Tokyo Standard ARR ¥3-5B. Con xin <ruby>永住権<rt>えいじゅうけん</rt></ruby> Nhật. Hana 9 tuổi, Đông 6 tuổi, bé thứ 3 khoảng 3 tuổi. Con 31 tuổi. |
| Đại | (tiếng Việt) **2038-2042**: Hizashi post-IPO growth toàn cầu. Con muốn quay lại VN mỗi 6 tháng — nếu có thể, mở văn phòng Hizashi Hà Nội + Sài Gòn — tạo việc cho người Việt. |
| Bố Đại (HN) | (VN) Đại ơi! Bố nghe được con muốn mở văn phòng Việt Nam — bố rất mừng. Anh em quê mình rất tự hào về con. |
| Yumi | (JP) ダイくん、<ruby>素晴<rt>すば</rt></ruby>らしい<ruby>計画<rt>けいかく</rt></ruby>ですね。<ruby>私達<rt>わたしたち</rt></ruby>はいつでもサポートします。<br>*(Đại ơi, kế hoạch tuyệt vời. Bọn cô chú luôn hỗ trợ.)* |
| Tony | (Osaka-ben) わしの<ruby>株<rt>かぶ</rt></ruby>0.5%、IPO<ruby>時<rt>とき</rt></ruby>に<ruby>結婚<rt>けっこん</rt></ruby>10<ruby>周年<rt>しゅうねん</rt></ruby>プレゼント<ruby>用<rt>よう</rt></ruby>にしとくわ！<br>*(Cổ phần 0.5% của tao, lúc IPO sẽ để dành làm quà 10 năm cưới!)* |
| Mai | (tiếng Việt) Bố mẹ, cô chú, cảm ơn cả nhà đã đồng hành 7 năm qua. Cuộc đời con và Đại như một câu chuyện cổ tích — câu chuyện này không phải mình con và anh ấy viết, mà là cả gia đình lớn cùng viết. |
| Hana | (3 tuổi 7 tháng, vẫy tay) Ông bà! Cô chú! Hana yêu mọi người! |
| Đại | (tiếng Việt, ôm Mai và Đông) Bố mẹ, cô chú ơi. Năm thứ 3 sau ĐH bắt đầu rồi. **Hizashi gia đình và Hizashi công ty cùng song hành lớn lên** — đó là cách con sống. Cảm ơn mọi người. |
| Bố Mai | (VN, xúc động) Đại con. Bố mẹ chỉ mong cả nhà khoẻ mạnh, hạnh phúc. Sự nghiệp con đã quá đỉnh rồi. |
| Đại | (tiếng Việt) Vâng bố ạ. **Cuộc đời mình tươi đẹp lắm.** Con sẽ kể lại câu chuyện này cho Hana, Đông và bé thứ 3 khi các con lớn. |
| (Zoom call kết thúc 23:00, cả nhà chào tạm biệt) | |

---

## Đọng lại chương 12

Chương cuối series sách 14-26 — 12 năm story arc 2025-2032. Đại 26 tuổi đóng Year 2: ARR ¥87.9M (5x), team 10, Series A ¥230M, TOPIK partnership, 経営・管理 visa 5 năm. Speech bonenkai/shinnenkai trang trọng — Đại học mẫu **「<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しいただき、<ruby>誠<rt>まこと</rt></ruby>にありがとうございます」**, **「<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>れば、2<ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>本日<rt>ほんじつ</rt></ruby>...」**, **「<ruby>心<rt>こころ</rt></ruby>から<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます」**, kết thúc **「<ruby>乾杯<rt>かんぱい</rt></ruby>！」**. Sato-san đáp lời formal **「<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>返<rt>かえ</rt></ruby>しさせていただきます」**. Hayashi-san đại diện new hires **「<ruby>新入社員<rt>しんにゅうしゃいん</rt></ruby><ruby>代表<rt>だいひょう</rt></ruby>として<ruby>一言<rt>ひとこと</rt></ruby><ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます」**. NHK World phỏng vấn — Đại học mẫu giới thiệu founder trên truyền hình **「<ruby>視聴者<rt>しちょうしゃ</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして」**. Board meeting bàn Series B 9 tháng tới, Đại dám hỏi **「<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby><ruby>持分<rt>もちぶん</rt></ruby>の<ruby>希薄化<rt>きはくか</rt></ruby>はどの<ruby>程度<rt>ていど</rt></ruby><ruby>想定<rt>そうてい</rt></ruby>すべきでしょうか？」** về dilution. Mai start part-time tour guide 2/4. Đêm cuối series — Zoom 3 thế hệ về tầm nhìn 10 năm 2032-2042: Series B → Series C → IPO 2037 → 永住権 → văn phòng Việt Nam. **"Hizashi gia đình và Hizashi công ty cùng song hành lớn lên."** Cuộc đời mình tươi đẹp.

> Từ vựng & mẫu câu chương này: <ruby>忘年会<rt>ぼうねんかい</rt></ruby>・<ruby>新年会<rt>しんねんかい</rt></ruby>・<ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>・<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>れば・<ruby>誠<rt>まこと</rt></ruby>にありがとうございます・<ruby>心<rt>こころ</rt></ruby>から<ruby>感謝<rt>かんしゃ</rt></ruby>申し<ruby>上<rt>あ</rt></ruby>げます・<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>返<rt>かえ</rt></ruby>しさせていただきます・<ruby>新入社員<rt>しんにゅうしゃいん</rt></ruby><ruby>代表<rt>だいひょう</rt></ruby>・<ruby>視聴者<rt>しちょうしゃ</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>・<ruby>共同<rt>きょうどう</rt></ruby><ruby>創業者<rt>そうぎょうしゃ</rt></ruby>・<ruby>持分<rt>もちぶん</rt></ruby>・<ruby>希薄化<rt>きはくか</rt></ruby>・ポストマネー<ruby>評価額<rt>ひょうかがく</rt></ruby>・ESOPプール・<ruby>長期<rt>ちょうき</rt></ruby><ruby>パートナー<rt>パートナー</rt></ruby>・<ruby>多国籍<rt>たこくせき</rt></ruby>チーム・<ruby>家族<rt>かぞく</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>・<ruby>絆<rt>きずな</rt></ruby>・ARR・MRR・Series B・IPO・<ruby>永住権<rt>えいじゅうけん</rt></ruby>・<ruby>乾杯<rt>かんぱい</rt></ruby>

## Bí quyết chương

- **Speech 忘年会/新年会 structure** chuẩn: cảm ơn đã đến → nhìn lại → cảm ơn từng nhóm (cofounder → investors → new hires) → tầm nhìn năm tới → 乾杯
- **「<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>れば、X<ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>本日<rt>ほんじつ</rt></ruby>...」** = template mở đầu reflection cho mọi anniversary speech
- Board meeting cao cấp: hỏi về dilution, ESOP pool, post-money valuation — **không xấu hổ khi chưa biết**
- Phỏng vấn TV: nhớ chào **「<ruby>視聴者<rt>しちょうしゃ</rt></ruby>の<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めまして」** rồi mới đến tên
- Tầm nhìn 10 năm cần **chia 4 giai đoạn 2-3 năm** — dễ kể, dễ tin
- Cảnh cuối series với gia đình lớn 3 thế hệ — quay về **"cùng song hành lớn lên"** = thông điệp cốt lõi sách 14-26

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 周年 | しゅうねん | CHU NIÊN | năm kỷ niệm |
| 記念日 | きねんび | KÝ NIỆM NHẬT | ngày kỷ niệm |
| あっという間 | あっというま | — | thoáng qua |
| 達成 | たっせい | ĐẠT THÀNH | đạt được |
| 最終 | さいしゅう | TỐI CHUNG | cuối cùng |
| 理論上 | りろんじょう | LÝ LUẬN THƯỢNG | trên lý thuyết |
| 新規 | しんき | TÂN QUY | mới |
| 過半数 | かはんすう | QUÁ BÁN SỐ | quá nửa |
| 未満 | みまん | VỊ MÃN | dưới |
| 支配権 | しはいけん | CHI PHỐI QUYỀN | quyền kiểm soát |
| 原資 | げんし | NGUYÊN TƯ | nguồn vốn gốc |
| 振り返れば | ふりかえれば | CHẤN PHẢN | nhìn lại |
| 心から | こころから | TÂM | từ trái tim |
| 申し上げる | もうしあげる | THÂN THƯỢNG | nói (kính ngữ) |
| 同志 | どうし | ĐỒNG CHÍ | đồng chí |
| 連続 | れんぞく | LIÊN TỤC | liên tiếp |
| 一言 | ひとこと | NHẤT NGÔN | một lời |
| 返し | かえし | PHẢN | đáp lại |
| 人物 | じんぶつ | NHÂN VẬT | con người |
| 引き続き | ひきつづき | DẪN TỤC | tiếp tục |
| 新入社員 | しんにゅうしゃいん | TÂN NHẬP XÃ VIÊN | nhân viên mới |
| 代表 | だいひょう | ĐẠI BIỂU | đại diện |
| 特異性 | とくいせい | ĐẶC DỊ TÍNH | tính đặc trưng |
| 意思決定 | いしけってい | Ý TỨ QUYẾT ĐỊNH | ra quyết định |
| 多国籍 | たこくせき | ĐA QUỐC TỊCH | đa quốc tịch |
| 家族第一 | かぞくだいいち | GIA TỘC ĐỆ NHẤT | gia đình ưu tiên |
| 全力 | ぜんりょく | TOÀN LỰC | toàn lực |
| 景色 | けしき | CẢNH SẮC | cảnh, view |
| 想像 | そうぞう | TƯỞNG TƯỢNG | tưởng tượng |
| 命 | いのち | MỆNH | sinh mệnh |
| 視聴者 | しちょうしゃ | THỊ THÍNH GIẢ | khán giả |
| 言語学習 | げんごがくしゅう | NGÔN NGỮ HỌC TẬP | học ngôn ngữ |
| 偏る | かたよる | THIÊN | thiên lệch |
| 観光 | かんこう | QUAN QUANG | du lịch |
| 娘 | むすめ | NƯƠNG | con gái |
| 息子 | むすこ | TỨC TỬ | con trai |
| 観光ガイド | かんこうガイド | QUAN QUANG | hướng dẫn viên du lịch |
| 金閣寺 | きんかくじ | KIM CÁC TỰ | chùa Vàng |
| 卒業 | そつぎょう | TỐT NGHIỆP | tốt nghiệp |
| 株 | かぶ | CỔ | cổ phần |
| 結婚 | けっこん | KẾT HÔN | kết hôn |
| 忘年会 | ぼうねんかい | VONG NIÊN HỘI | tiệc cuối năm |
| 新年会 | しんねんかい | TÂN NIÊN HỘI | tiệc đầu năm |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
