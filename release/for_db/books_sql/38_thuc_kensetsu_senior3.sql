-- Hizashi LITE book SQL — Thực Kensetsu Senior 3
-- curriculum_id = 800000038  (book_seq=38)
-- nguồn: books/38_thuc_kensetsu_senior3/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000038, 'N3', 'markdown_book', 'Xây dựng', 'Thực Kensetsu Senior 3', 'Bộ sách Hizashi — Thực Kensetsu Senior 3', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000001, 800000038, NULL, 'markdown_book', 'T1. Kiểm điều kiện 2号 và đăng ký kỳ thi (二号登録)', '# Sách kỹ năng đặc định xây dựng · T1. Kiểm điều kiện 2号 và đăng ký kỳ thi (二号登録)

> **Mục tiêu nhân vật:** Thức (トゥック, 25 tuổi, Hà Tĩnh, 特定技能1号 建設 + 職長, nghề とび) bước vào năm bản lề cuối series. Học mẫu câu nghiệp vụ kiểm tra điều kiện dự thi 特定技能2号: xác nhận CCUS レベル判定, số ngày làm 職長/班長, hồ sơ kinh nghiệm, và đăng ký 2号評価試験.

---

## Bối cảnh

Tháng 4 năm 2031. Thức 25 tuổi, đang là 特定技能1号 ngành 建設 nghề とび tại tổ thợ của 谷川親方 (Tanigawa), giữ vai 職長 trên công trường. Đây là sách kết của series sáu cuốn. Năm nay Thức nhắm dự thi 特定技能2号評価試験 — bậc tư cách lưu trú cao nhất trong tầm với. Chương này tập trung mẫu câu nghiệp vụ kiểm tra điều kiện dự thi: xác nhận レベル判定 trên CCUS, số ngày làm 職長, hồ sơ kinh nghiệm, và thủ tục đăng ký thi. *(Lưu ý: chế độ 特定技能・育成就労・CCUS mô tả trong sách theo đúng quy định tại thời điểm biên soạn năm 2026; chi tiết vận hành có thể đổi.)*

---

## Tình huống 1 — Văn phòng công trường · 8:00, 親方 nêu chuyện thi 2号

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>今年<rt>ことし</rt></ruby>はいよいよ<ruby>二号<rt>にごう</rt></ruby>やな。<ruby>覚悟<rt>かくご</rt></ruby>はできとるか。<br>*(Thức, năm nay là tới lúc thi 2号 rồi đấy. Đã sẵn sàng tinh thần chưa.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>今年<rt>ことし</rt></ruby>こそ<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>に<ruby>挑戦<rt>ちょうせん</rt></ruby>したいです。<br>*(Vâng, thưa sếp. Năm nay nhất định em muốn thử sức 特定技能2号.)* |
| 谷川親方 | ええ<ruby>心<rt>こころ</rt></ruby>がけや。まずは<ruby>受験<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしとるか<ruby>確認<rt>かくにん</rt></ruby>せなあかん。<br>*(Tinh thần tốt đấy. Trước hết phải xác nhận em có đủ điều kiện dự thi không.)* |
| Thức | <ruby>受験<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>というと、<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>を<ruby>見<rt>み</rt></ruby>ればいいでしょうか。<br>*(Điều kiện dự thi cụ thể là phải xem những gì ạ?)* |
| 谷川親方 | <ruby>班長<rt>はんちょう</rt></ruby>か<ruby>職長<rt>しょくちょう</rt></ruby>として<ruby>現場<rt>げんば</rt></ruby>を<ruby>指揮<rt>しき</rt></ruby>した<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>、それと<ruby>技能<rt>ぎのう</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>や。<br>*(Kinh nghiệm thực tế chỉ huy công trường với tư cách 班長 hoặc 職長, và chứng minh tay nghề.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>書類<rt>しょるい</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>整<rt>ととの</rt></ruby>えていきます。<br>*(Em rõ ạ. Em sẽ chuẩn bị từng loại giấy tờ một.)* |

---

## Tình huống 2 — Văn phòng · 8:20, 斉藤職長 giải thích đường dẫn 2号

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>になるには、どんなルートがありますか。<br>*(Anh Saito, để lên 特定技能2号 thì có những con đường nào ạ?)* |
| 斉藤職長 | <ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>では、<ruby>二号<rt>にごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>して、<ruby>現場<rt>げんば</rt></ruby><ruby>管理<rt>かんり</rt></ruby>の<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>証明<rt>しょうめい</rt></ruby>するルートが<ruby>基本<rt>きほん</rt></ruby>だ。<br>*(Ở lĩnh vực xây dựng, con đường cơ bản là đỗ 2号評価試験 rồi chứng minh kinh nghiệm thực tế quản lý công trường.)* |
| Thức | <ruby>試験<rt>しけん</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>だけでなく、<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>なんですね。<br>*(Vậy là không chỉ đỗ thi mà còn cần cả kinh nghiệm thực tế nữa ạ.)* |
| 斉藤職長 | そうだ。<ruby>君<rt>きみ</rt></ruby>は<ruby>去年<rt>きょねん</rt></ruby>から<ruby>職長<rt>しょくちょう</rt></ruby>をやっているから、その<ruby>経験<rt>けいけん</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>みになる。<br>*(Đúng vậy. Em làm 職長 từ năm ngoái, kinh nghiệm đó là điểm mạnh của em.)* |
| Thức | はい。<ruby>職長<rt>しょくちょう</rt></ruby>として<ruby>働<rt>はたら</rt></ruby>いた<ruby>日数<rt>にっすう</rt></ruby>は、どう<ruby>記録<rt>きろく</rt></ruby>すればいいですか。<br>*(Vâng. Số ngày làm việc với tư cách 職長 thì ghi nhận thế nào ạ?)* |
| 斉藤職長 | <ruby>就労<rt>しゅうろう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>は<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>記録<rt>きろく</rt></ruby>とCCUSの<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>で<ruby>裏付<rt>うらづ</rt></ruby>けられる。あとで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Lịch sử lao động được chứng thực bằng hồ sơ công ty và lịch sử làm việc trên CCUS. Lát nữa cùng kiểm tra.)* |

---

## Tình huống 3 — Trước máy tính văn phòng · 9:00, kiểm tra レベル判定 trên CCUS

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、CCUSのマイページにログインして、<ruby>能力<rt>のうりょく</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>見<rt>み</rt></ruby>てみよう。<br>*(Thức, đăng nhập trang cá nhân CCUS, xem kết quả đánh giá năng lực thử nào.)* |
| Thức | はい。<ruby>今<rt>いま</rt></ruby>のレベルは、ゴールドカードになっています。<br>*(Vâng. Bậc hiện tại của em đang là thẻ vàng ạ.)* |
| 斉藤職長 | レベル<ruby>三<rt>さん</rt></ruby>、ゴールドだな。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>めば、<ruby>次<rt>つぎ</rt></ruby>のレベルも<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る。<br>*(Bậc 3, thẻ vàng. Tích lũy kinh nghiệm 職長 thì bậc tiếp theo cũng nằm trong tầm.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>のレベルというのは、シルバーではなく<ruby>上<rt>うえ</rt></ruby>の<ruby>判定<rt>はんてい</rt></ruby>ですか。<br>*(Bậc tiếp theo nghĩa là bậc đánh giá cao hơn chứ không phải thẻ bạc ạ?)* |
| 斉藤職長 | ああ、シルバーはレベル<ruby>四<rt>よん</rt></ruby>、<ruby>最高位<rt>さいこうい</rt></ruby>の<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>だ。<ruby>二号<rt>にごう</rt></ruby>と<ruby>並<rt>なら</rt></ruby>べて<ruby>目指<rt>めざ</rt></ruby>す<ruby>価値<rt>かち</rt></ruby>がある。<br>*(À, thẻ bạc là bậc 4, tương đương kỹ năng viên đăng ký cốt cán bậc cao nhất. Đáng nhắm song song với 2号.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>判定<rt>はんてい</rt></ruby><ruby>結果<rt>けっか</rt></ruby>のPDFを<ruby>保存<rt>ほぞん</rt></ruby>しておきます。<br>*(Em hiểu rồi. Em lưu lại file PDF kết quả đánh giá ạ.)* |

---

## Tình huống 4 — Văn phòng · 9:30, đối chiếu số ngày làm 職長

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>を<ruby>見<rt>み</rt></ruby>ると、<ruby>去年<rt>きょねん</rt></ruby>の<ruby>四月<rt>しがつ</rt></ruby>から<ruby>職長<rt>しょくちょう</rt></ruby><ruby>登録<rt>とうろく</rt></ruby>になっているな。<br>*(Xem lịch sử làm việc thì từ tháng tư năm ngoái em đã được đăng ký là 職長.)* |
| Thức | はい。<ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>から、<ruby>正式<rt>せいしき</rt></ruby>に<ruby>職長<rt>しょくちょう</rt></ruby>を<ruby>任<rt>まか</rt></ruby>されました。<br>*(Vâng. Từ công trường tháo giàn giáo, em chính thức được giao làm 職長.)* |
| 斉藤職長 | <ruby>記録<rt>きろく</rt></ruby><ruby>上<rt>じょう</rt></ruby>は<ruby>十分<rt>じゅうぶん</rt></ruby>な<ruby>日数<rt>にっすう</rt></ruby>がある。あとは<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>就労<rt>しゅうろう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>と<ruby>突<rt>つ</rt></ruby>き<ruby>合<rt>あ</rt></ruby>わせよう。<br>*(Trên hồ sơ thì đủ số ngày rồi. Còn lại đối chiếu với giấy chứng nhận lao động của công ty.)* |
| Thức | <ruby>就労<rt>しゅうろう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>には、<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>も<ruby>書<rt>か</rt></ruby>くのですか。<br>*(Giấy chứng nhận lao động có ghi cả nội dung công việc cụ thể không ạ?)* |
| 斉藤職長 | そうだ。<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>・<ruby>解体<rt>かいたい</rt></ruby>の<ruby>指揮<rt>しき</rt></ruby><ruby>監督<rt>かんとく</rt></ruby>と<ruby>明記<rt>めいき</rt></ruby>してもらう。<ruby>審査<rt>しんさ</rt></ruby>で<ruby>重要<rt>じゅうよう</rt></ruby>なポイントだ。<br>*(Đúng. Ghi rõ là chỉ huy giám sát lắp dựng tháo dỡ giàn giáo. Đó là điểm quan trọng khi xét duyệt.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>総務<rt>そうむ</rt></ruby>に<ruby>発行<rt>はっこう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em rõ ạ. Em sẽ nhờ phòng hành chính cấp giấy.)* |

---

## Tình huống 5 — Phòng hành chính · 10:00, nhờ phát hành giấy chứng nhận

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>就労<rt>しゅうろう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>の<ruby>発行<rt>はっこう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいのですが。<br>*(Bác Matsumoto, em muốn nhờ phát hành giấy chứng nhận lao động ạ.)* |
| 松本さん | おう、<ruby>二号<rt>にごう</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby><ruby>用<rt>よう</rt></ruby>か。いつまでに<ruby>要<rt>い</rt></ruby>るんだ。<br>*(Ờ, dùng cho hồ sơ 2号 à. Cần trước khi nào.)* |
| Thức | <ruby>受験<rt>じゅけん</rt></ruby><ruby>申込<rt>もうしこみ</rt></ruby>の<ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りが<ruby>来月<rt>らいげつ</rt></ruby><ruby>初<rt>はじ</rt></ruby>めなので、<ruby>今月中<rt>こんげつちゅう</rt></ruby>に<ruby>頂<rt>いただ</rt></ruby>けると<ruby>助<rt>たす</rt></ruby>かります。<br>*(Hạn nộp đơn dự thi là đầu tháng sau, nếu trong tháng này có được thì em rất biết ơn ạ.)* |
| 松本さん | <ruby>分<rt>わ</rt></ruby>かった。<ruby>業務<rt>ぎょうむ</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>は<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>かんとな。<ruby>下書<rt>したが</rt></ruby>きを<ruby>出<rt>だ</rt></ruby>してくれ。<br>*(Hiểu rồi. Mục nội dung công việc phải ghi chính xác đấy. Em nộp bản nháp cho tôi.)* |
| Thức | はい、すぐに<ruby>下書<rt>したが</rt></ruby>きを<ruby>用意<rt>ようい</rt></ruby>します。<ruby>職長<rt>しょくちょう</rt></ruby><ruby>就任<rt>しゅうにん</rt></ruby><ruby>日<rt>び</rt></ruby>も<ruby>記載<rt>きさい</rt></ruby>しておきます。<br>*(Vâng, em chuẩn bị bản nháp ngay. Em ghi luôn cả ngày nhậm chức 職長 ạ.)* |
| 松本さん | おう、それでええ。<ruby>細<rt>こま</rt></ruby>かいとこは<ruby>俺<rt>おれ</rt></ruby>が<ruby>直<rt>なお</rt></ruby>すから。<br>*(Ờ, vậy được. Chỗ chi tiết thì tôi sửa cho.)* |

---

## Tình huống 6 — Văn phòng · 10:40, kiểm tra hồ sơ kinh nghiệm thực tế

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | <ruby>二号<rt>にごう</rt></ruby>の<ruby>審査<rt>しんさ</rt></ruby>では、<ruby>経験<rt>けいけん</rt></ruby>した<ruby>現場<rt>げんば</rt></ruby>の<ruby>一覧<rt>いちらん</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>しておくと<ruby>強<rt>つよ</rt></ruby>い。<br>*(Khi xét 2号, sắp xếp sẵn danh sách các công trường đã trải qua thì rất có lợi.)* |
| Thức | <ruby>過去<rt>かこ</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>を<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>書<rt>か</rt></ruby>き<ruby>出<rt>だ</rt></ruby>すということですね。<br>*(Tức là viết ra toàn bộ các công trường trong quá khứ ạ?)* |
| 斉藤職長 | そうだ。<ruby>現場名<rt>げんばめい</rt></ruby>、<ruby>期間<rt>きかん</rt></ruby>、<ruby>担当<rt>たんとう</rt></ruby>した<ruby>作業<rt>さぎょう</rt></ruby>、<ruby>役割<rt>やくわり</rt></ruby>を<ruby>表<rt>ひょう</rt></ruby>にまとめろ。<br>*(Đúng. Lập bảng tên công trường, thời gian, công việc phụ trách, vai trò.)* |
| Thức | <ruby>役割<rt>やくわり</rt></ruby>の<ruby>欄<rt>らん</rt></ruby>には、<ruby>手元<rt>てもと</rt></ruby>から<ruby>職長<rt>しょくちょう</rt></ruby>までの<ruby>変化<rt>へんか</rt></ruby>も<ruby>書<rt>か</rt></ruby>いた<ruby>方<rt>ほう</rt></ruby>がいいですか。<br>*(Mục vai trò có nên ghi cả quá trình thay đổi từ phụ việc đến 職長 không ạ?)* |
| 斉藤職長 | ぜひ<ruby>書<rt>か</rt></ruby>け。<ruby>成長<rt>せいちょう</rt></ruby>の<ruby>過程<rt>かてい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えると<ruby>説得<rt>せっとく</rt></ruby><ruby>力<rt>りょく</rt></ruby>が<ruby>増<rt>ま</rt></ruby>す。<br>*(Cứ ghi. Thấy được quá trình trưởng thành thì tính thuyết phục tăng.)* |
| Thức | はい、<ruby>今夜<rt>こんや</rt></ruby><ruby>表<rt>ひょう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>って<ruby>明日<rt>あした</rt></ruby><ruby>見<rt>み</rt></ruby>ていただきます。<br>*(Vâng, tối nay em lập bảng, mai nhờ anh xem giúp.)* |

---

## Tình huống 7 — Khu nghỉ công trường · 12:10, Hùng hỏi chuyện đăng ký thi

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>二号<rt>にごう</rt></ruby>の<ruby>申込<rt>もうしこみ</rt></ruby>、もう<ruby>準備<rt>じゅんび</rt></ruby><ruby>始<rt>はじ</rt></ruby>めたのか。<br>*(Thức, đăng ký thi 2号, cậu bắt đầu chuẩn bị rồi à?)* |
| Thức | うん。<ruby>受験<rt>じゅけん</rt></ruby><ruby>資格<rt>しかく</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>からだよ。フンも<ruby>受<rt>う</rt></ruby>けるんだろう。<br>*(Ừ. Bắt đầu từ xác nhận điều kiện dự thi. Hùng cũng thi mà nhỉ.)* |
| Hùng | もちろん。でも<ruby>申込<rt>もうしこみ</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れがよく<ruby>分<rt>わ</rt></ruby>からなくて。<br>*(Tất nhiên. Nhưng mình chưa rõ lắm trình tự đăng ký.)* |
| Thức | <ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>はJACの<ruby>案内<rt>あんない</rt></ruby>を<ruby>見<rt>み</rt></ruby>るといい。<ruby>試験<rt>しけん</rt></ruby><ruby>日程<rt>にってい</rt></ruby>と<ruby>会場<rt>かいじょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ている。<br>*(Lĩnh vực xây dựng thì nên xem hướng dẫn của JAC. Có ghi lịch thi và địa điểm.)* |
| Hùng | <ruby>助<rt>たす</rt></ruby>かる。あとで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>見<rt>み</rt></ruby>てくれるか。<br>*(Đỡ quá. Lát nữa cậu xem cùng mình được không.)* |
| Thức | いいよ。<ruby>二人<rt>ふたり</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>すれば<ruby>間違<rt>まちが</rt></ruby>いも<ruby>減<rt>へ</rt></ruby>る。<br>*(Được. Hai đứa cùng kiểm thì cũng bớt sai sót.)* |

---

## Tình huống 8 — Văn phòng · 13:00, xem lịch thi trên trang JAC

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>申込<rt>もうしこみ</rt></ruby>は、どこから<ruby>行<rt>おこな</rt></ruby>うのですか。<br>*(Anh Saito, đăng ký 2号評価試験 thì làm từ đâu ạ?)* |
| 斉藤職長 | <ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>はJACが<ruby>運営<rt>うんえい</rt></ruby>している。<ruby>専用<rt>せんよう</rt></ruby>サイトから<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>む。<br>*(Lĩnh vực xây dựng do JAC vận hành. Đăng ký qua trang chuyên dụng.)* |
| Thức | <ruby>申込<rt>もうしこみ</rt></ruby>には<ruby>何<rt>なに</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>になりますか。<br>*(Đăng ký thì cần những gì ạ?)* |
| 斉藤職長 | <ruby>在留<rt>ざいりゅう</rt></ruby>カード、CCUSの<ruby>技能者<rt>ぎのうしゃ</rt></ruby>ID、それと<ruby>顔写真<rt>かおじゃしん</rt></ruby>のデータだ。<br>*(Thẻ lưu trú, mã kỹ năng viên CCUS, và dữ liệu ảnh chân dung.)* |
| Thức | <ruby>受験<rt>じゅけん</rt></ruby><ruby>料<rt>りょう</rt></ruby>の<ruby>支払<rt>しはら</rt></ruby>いは<ruby>事前<rt>じぜん</rt></ruby>ですか。<br>*(Lệ phí thi nộp trước phải không ạ?)* |
| 斉藤職長 | そうだ。<ruby>申込<rt>もうしこみ</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>決済<rt>けっさい</rt></ruby>する。<ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りを<ruby>過<rt>す</rt></ruby>ぎると<ruby>次<rt>つぎ</rt></ruby>の<ruby>回<rt>かい</rt></ruby>になるから<ruby>注意<rt>ちゅうい</rt></ruby>しろ。<br>*(Đúng. Thanh toán khi đăng ký. Quá hạn là phải đợi đợt sau nên chú ý.)* |

---

## Tình huống 9 — Văn phòng · 13:30, chuẩn bị dữ liệu ảnh và mã CCUS

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>顔写真<rt>かおじゃしん</rt></ruby>は<ruby>規格<rt>きかく</rt></ruby>が<ruby>決<rt>き</rt></ruby>まっていますか。<br>*(Ảnh chân dung có quy cách quy định không ạ?)* |
| 斉藤職長 | <ruby>背景<rt>はいけい</rt></ruby><ruby>無地<rt>むじ</rt></ruby>、<ruby>最近<rt>さいきん</rt></ruby><ruby>六<rt>ろっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>以内<rt>いない</rt></ruby>の<ruby>撮影<rt>さつえい</rt></ruby>だ。<ruby>使<rt>つか</rt></ruby>い<ruby>回<rt>まわ</rt></ruby>しはだめだぞ。<br>*(Nền trơn, chụp trong vòng sáu tháng gần đây. Không được dùng lại ảnh cũ đâu.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>週末<rt>しゅうまつ</rt></ruby>に<ruby>写真<rt>しゃしん</rt></ruby><ruby>店<rt>てん</rt></ruby>で<ruby>撮<rt>と</rt></ruby>ってデータをもらいます。<br>*(Em hiểu rồi. Cuối tuần em ra hiệu ảnh chụp lấy file ạ.)* |
| 斉藤職長 | CCUSの<ruby>技能者<rt>ぎのうしゃ</rt></ruby>IDは<ruby>控<rt>ひか</rt></ruby>えてあるか。<br>*(Mã kỹ năng viên CCUS em ghi lại chưa?)* |
| Thức | はい、カードと<ruby>登録<rt>とうろく</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby>の<ruby>画面<rt>がめん</rt></ruby>を<ruby>控<rt>ひか</rt></ruby>えています。<br>*(Rồi ạ, em đã ghi lại thẻ và màn hình thông tin đăng ký.)* |
| 斉藤職長 | よし。<ruby>情報<rt>じょうほう</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>えば<ruby>申込<rt>もうしこみ</rt></ruby><ruby>自体<rt>じたい</rt></ruby>はすぐ<ruby>終<rt>お</rt></ruby>わる。<br>*(Tốt. Có đủ thông tin thì bản thân việc đăng ký xong nhanh thôi.)* |

---

## Tình huống 10 — Quán cơm gần ga · 19:00, Thức báo Linh tin bắt đầu thi 2号 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, năm nay anh chính thức bắt đầu chuẩn bị thi 特定技能2号 rồi. |
| Linh | Thật hả anh? Đó là bậc cao nhất phải không? Em mừng cho anh quá. |
| Thức | Ừ. Nếu đỗ thì tư cách lưu trú gần như không giới hạn thời gian, và sau này được bảo lãnh người thân sang. |
| Linh | Vậy là cánh cửa tương lai rộng hơn. Nhưng anh đừng ép mình quá, vừa làm 職長 vừa ôn thi mệt lắm. |
| Thức | Anh biết. Mình cứ đi từng bước thôi. Có em động viên là anh vững hơn nhiều. |
| Linh | Em luôn ở đây mà. Anh lo phần thi, mấy việc nhỏ cứ để em nhắc anh. |

---

## Tình huống 11 — Văn phòng · sáng hôm sau 8:00, trình bảng kinh nghiệm cho 斉藤

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>経験<rt>けいけん</rt></ruby><ruby>現場<rt>げんば</rt></ruby>の<ruby>一覧表<rt>いちらんひょう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ってきました。ご<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Saito, em đã lập xong bảng danh sách công trường kinh nghiệm. Nhờ anh kiểm tra ạ.)* |
| 斉藤職長 | おう、<ruby>見<rt>み</rt></ruby>せてみろ。…うん、<ruby>期間<rt>きかん</rt></ruby>と<ruby>役割<rt>やくわり</rt></ruby>がはっきりしているな。<br>*(Ờ, đưa xem nào. …Ừ, thời gian và vai trò rõ ràng đấy.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby><ruby>関連<rt>かんれん</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>中心<rt>ちゅうしん</rt></ruby>にまとめました。<br>*(Em tổng hợp tập trung vào các công việc liên quan giàn giáo.)* |
| 斉藤職長 | いい。ただ、<ruby>安全<rt>あんぜん</rt></ruby><ruby>管理<rt>かんり</rt></ruby>を<ruby>担当<rt>たんとう</rt></ruby>した<ruby>点<rt>てん</rt></ruby>も<ruby>一<rt>ひと</rt></ruby><ruby>言<rt>こと</rt></ruby><ruby>加<rt>くわ</rt></ruby>えておけ。<br>*(Tốt. Nhưng thêm một câu cả việc em phụ trách quản lý an toàn vào.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>安全<rt>あんぜん</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>記述<rt>きじゅつ</rt></ruby>を<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ bổ sung phần mô tả về an toàn.)* |
| 斉藤職長 | これなら<ruby>申請<rt>しんせい</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>として<ruby>通用<rt>つうよう</rt></ruby>する。<br>*(Thế này thì dùng làm giấy tờ hồ sơ được rồi.)* |

---

## Tình huống 12 — Văn phòng · 8:40, 親方 xem qua hồ sơ

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>書類<rt>しょるい</rt></ruby><ruby>揃<rt>そろ</rt></ruby>うてきたか。<br>*(Thức, giấy tờ gom đủ dần chưa.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>就労<rt>しゅうろう</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>と<ruby>経験<rt>けいけん</rt></ruby><ruby>一覧<rt>いちらん</rt></ruby>、CCUSの<ruby>判定<rt>はんてい</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>いました。<br>*(Vâng, thưa sếp. Chứng nhận lao động, danh sách kinh nghiệm và kết quả đánh giá CCUS đã đủ ạ.)* |
| 谷川親方 | ええやないか。<ruby>職長<rt>しょくちょう</rt></ruby>として<ruby>現場<rt>げんば</rt></ruby>を<ruby>回<rt>まわ</rt></ruby>してきた<ruby>実績<rt>じっせき</rt></ruby>は<ruby>本物<rt>ほんもの</rt></ruby>や。<br>*(Tốt còn gì. Thành tích vận hành công trường với tư cách 職長 là thật.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せていただいたおかげです。<br>*(Là nhờ sếp tin tưởng giao việc cho em ạ.)* |
| 谷川親方 | <ruby>書類<rt>しょるい</rt></ruby>は<ruby>入口<rt>いりぐち</rt></ruby>に<ruby>過<rt>す</rt></ruby>ぎん。これからが<ruby>本番<rt>ほんばん</rt></ruby>やぞ。<br>*(Giấy tờ chỉ là cửa vào thôi. Từ giờ mới là chính.)* |
| Thức | はい。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めて<ruby>進<rt>すす</rt></ruby>めます。<br>*(Vâng. Em sẽ siết lại tinh thần mà tiến tới.)* |

---

## Tình huống 13 — Văn phòng máy tính · 10:00, thao tác nộp đơn online

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | じゃあ<ruby>申込<rt>もうしこみ</rt></ruby><ruby>画面<rt>がめん</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>こう。まず<ruby>氏名<rt>しめい</rt></ruby>を<ruby>在留<rt>ざいりゅう</rt></ruby>カードどおりに<ruby>入力<rt>にゅうりょく</rt></ruby>しろ。<br>*(Vậy mở màn hình đăng ký nào. Trước hết nhập họ tên đúng như thẻ lưu trú.)* |
| Thức | アルファベット<ruby>表記<rt>ひょうき</rt></ruby>で<ruby>合<rt>あ</rt></ruby>っていますか。<br>*(Ghi bằng chữ Latinh là đúng phải không ạ?)* |
| 斉藤職長 | そうだ。<ruby>一<rt>いち</rt></ruby><ruby>文字<rt>もじ</rt></ruby>でも<ruby>違<rt>ちが</rt></ruby>うと<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>が<ruby>無効<rt>むこう</rt></ruby>になることがある。<ruby>慎重<rt>しんちょう</rt></ruby>にな。<br>*(Đúng. Sai một chữ thôi cũng có thể làm phiếu dự thi mất hiệu lực. Cẩn thận.)* |
| Thức | <ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>入力<rt>にゅうりょく</rt></ruby>します。<ruby>生年月日<rt>せいねんがっぴ</rt></ruby>も<ruby>合<rt>あ</rt></ruby>っています。<br>*(Em vừa kiểm vừa nhập. Ngày tháng năm sinh cũng khớp ạ.)* |
| 斉藤職長 | <ruby>顔写真<rt>かおじゃしん</rt></ruby>をアップロードして、<ruby>受験<rt>じゅけん</rt></ruby><ruby>地<rt>ち</rt></ruby>を<ruby>選<rt>えら</rt></ruby>べ。<br>*(Tải ảnh chân dung lên, chọn nơi dự thi.)* |
| Thức | <ruby>近<rt>ちか</rt></ruby>い<ruby>会場<rt>かいじょう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>びました。<ruby>確認<rt>かくにん</rt></ruby><ruby>画面<rt>がめん</rt></ruby>に<ruby>進<rt>すす</rt></ruby>みます。<br>*(Em chọn địa điểm gần. Em sang màn hình xác nhận ạ.)* |

---

## Tình huống 14 — Văn phòng · 10:20, thanh toán lệ phí và nhận xác nhận

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>はクレジットカードでいいですか。<br>*(Phương thức thanh toán dùng thẻ tín dụng được không ạ?)* |
| 斉藤職長 | ああ、それで<ruby>進<rt>すす</rt></ruby>めろ。<ruby>決済<rt>けっさい</rt></ruby>が<ruby>済<rt>す</rt></ruby>むと<ruby>確認<rt>かくにん</rt></ruby>メールが<ruby>来<rt>く</rt></ruby>る。<br>*(Ờ, cứ tiến hành thế. Thanh toán xong sẽ có email xác nhận đến.)* |
| Thức | <ruby>決済<rt>けっさい</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>申込<rt>もうしこみ</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>が<ruby>表示<rt>ひょうじ</rt></ruby>されています。<br>*(Em thanh toán xong rồi. Có hiện mã số đăng ký ạ.)* |
| 斉藤職長 | その<ruby>番号<rt>ばんごう</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>控<rt>ひか</rt></ruby>えておけ。<ruby>問<rt>と</rt></ruby>い<ruby>合<rt>あ</rt></ruby>わせのときに<ruby>要<rt>い</rt></ruby>る。<br>*(Mã đó nhất định ghi lại. Cần khi liên hệ hỏi đáp.)* |
| Thức | はい、<ruby>手帳<rt>てちょう</rt></ruby>とスマホの<ruby>両方<rt>りょうほう</rt></ruby>に<ruby>控<rt>ひか</rt></ruby>えました。<br>*(Vâng, em ghi cả vào sổ tay và điện thoại ạ.)* |
| 斉藤職長 | これで<ruby>正式<rt>せいしき</rt></ruby>に<ruby>受験<rt>じゅけん</rt></ruby><ruby>申込<rt>もうしこみ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>だ。あとは<ruby>勉強<rt>べんきょう</rt></ruby>あるのみだぞ。<br>*(Vậy là chính thức hoàn tất đăng ký dự thi. Còn lại chỉ có học thôi đấy.)* |

---

## Tình huống 15 — Khu nghỉ · 12:10, báo Hùng đã đăng ký xong

| Vai | Lời thoại |
|---|---|
| Thức | フン、<ruby>俺<rt>おれ</rt></ruby>の<ruby>申込<rt>もうしこみ</rt></ruby>は<ruby>完了<rt>かんりょう</rt></ruby>したよ。<br>*(Hùng, đăng ký của mình xong rồi.)* |
| Hùng | <ruby>早<rt>はや</rt></ruby>いな。<ruby>俺<rt>おれ</rt></ruby>もう<ruby>少<rt>すこ</rt></ruby>しで<ruby>書類<rt>しょるい</rt></ruby>が<ruby>揃<rt>そろ</rt></ruby>う。<br>*(Nhanh thế. Mình sắp gom đủ giấy tờ rồi.)* |
| Thức | <ruby>就労<rt>しゅうろう</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>は<ruby>早<rt>はや</rt></ruby>めに<ruby>頼<rt>たの</rt></ruby>んだ<ruby>方<rt>ほう</rt></ruby>がいい。<ruby>発行<rt>はっこう</rt></ruby>に<ruby>時間<rt>じかん</rt></ruby>がかかる。<br>*(Giấy chứng nhận lao động nên nhờ sớm. Phát hành mất thời gian.)* |
| Hùng | <ruby>分<rt>わ</rt></ruby>かった。<ruby>今日中<rt>きょうじゅう</rt></ruby>に<ruby>総務<rt>そうむ</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>む。<br>*(Hiểu rồi. Trong hôm nay mình nhờ phòng hành chính.)* |
| Thức | <ruby>締<rt>し</rt></ruby>め<ruby>切<rt>き</rt></ruby>りまで<ruby>余裕<rt>よゆう</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>動<rt>うご</rt></ruby>こう。<br>*(Mình cứ làm sớm trước hạn cho có dư thời gian.)* |
| Hùng | ああ。<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>受<rt>う</rt></ruby>かりたいな。<br>*(Ừ. Mong cả hai đứa cùng đỗ nhỉ.)* |

---

## Tình huống 16 — Công trường · 14:00, 親方 dặn cân bằng việc và ôn thi

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>申込<rt>もうしこみ</rt></ruby>が<ruby>済<rt>す</rt></ruby>んでも<ruby>現場<rt>げんば</rt></ruby>の<ruby>手<rt>て</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くなよ。<br>*(Thức, đăng ký xong rồi cũng đừng lơ là công trường đấy.)* |
| Thức | はい、<ruby>承知<rt>しょうち</rt></ruby>しています。<ruby>仕事<rt>しごと</rt></ruby>が<ruby>第一<rt>だいいち</rt></ruby>です。<br>*(Vâng, em hiểu ạ. Công việc là trên hết.)* |
| 谷川親方 | <ruby>勉強<rt>べんきょう</rt></ruby>は<ruby>夜<rt>よる</rt></ruby>と<ruby>休<rt>やす</rt></ruby>みの<ruby>日<rt>ひ</rt></ruby>や。<ruby>体<rt>からだ</rt></ruby>を<ruby>壊<rt>こわ</rt></ruby>したら<ruby>元<rt>もと</rt></ruby>も<ruby>子<rt>こ</rt></ruby>もない。<br>*(Học là buổi tối với ngày nghỉ. Hỏng sức khỏe là mất hết.)* |
| Thức | <ruby>時間<rt>じかん</rt></ruby>を<ruby>区切<rt>くぎ</rt></ruby>って<ruby>計画<rt>けいかく</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Em sẽ chia thời gian rõ ràng, tiến hành có kế hoạch.)* |
| 谷川親方 | それでええ。<ruby>無理<rt>むり</rt></ruby>せんと<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けることや。<br>*(Vậy được. Đừng cố quá, duy trì lâu dài mới quan trọng.)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em ghi lòng tạc dạ ạ.)* |

---

## Tình huống 17 — Văn phòng · 16:30, 斉藤 nói về phạm vi đề thi

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>は<ruby>学科<rt>がっか</rt></ruby>だけですか。<br>*(Anh Saito, 2号評価試験 chỉ có phần lý thuyết thôi ạ?)* |
| 斉藤職長 | <ruby>建設<rt>けんせつ</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>は<ruby>学科<rt>がっか</rt></ruby>に<ruby>加<rt>くわ</rt></ruby>えて<ruby>実技<rt>じつぎ</rt></ruby>と<ruby>口頭<rt>こうとう</rt></ruby>の<ruby>要素<rt>ようそ</rt></ruby>もある。<ruby>現場<rt>げんば</rt></ruby><ruby>管理<rt>かんり</rt></ruby>の<ruby>知識<rt>ちしき</rt></ruby>が<ruby>問<rt>と</rt></ruby>われる。<br>*(Lĩnh vực xây dựng ngoài lý thuyết còn có yếu tố thực hành và vấn đáp. Sẽ hỏi kiến thức quản lý công trường.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby><ruby>管理<rt>かんり</rt></ruby>というと、<ruby>安全<rt>あんぜん</rt></ruby><ruby>管理<rt>かんり</rt></ruby>や<ruby>工程<rt>こうてい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>ですね。<br>*(Quản lý công trường tức là quản lý an toàn và quản lý tiến độ ạ.)* |
| 斉藤職長 | そうだ。<ruby>職長<rt>しょくちょう</rt></ruby>として<ruby>普段<rt>ふだん</rt></ruby>やっていることが、そのまま<ruby>出題<rt>しゅつだい</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>になる。<br>*(Đúng. Những việc thường ngày em làm với tư cách 職長 chính là phạm vi ra đề.)* |
| Thức | それなら<ruby>実務<rt>じつむ</rt></ruby>を<ruby>言語<rt>げんご</rt></ruby><ruby>化<rt>か</rt></ruby>する<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>ですね。<br>*(Vậy thì luyện diễn đạt thực tế thành lời là quan trọng nhỉ.)* |
| 斉藤職長 | そのとおりだ。やっていることを<ruby>説明<rt>せつめい</rt></ruby>できるかが<ruby>鍵<rt>かぎ</rt></ruby>になる。<br>*(Đúng vậy. Có giải thích được những gì mình làm hay không là then chốt.)* |

---

## Tình huống 18 — Văn phòng · 17:00, lập kế hoạch ôn tập sơ bộ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>試験<rt>しけん</rt></ruby>まで<ruby>約<rt>やく</rt></ruby><ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>あります。どう<ruby>配分<rt>はいぶん</rt></ruby>すべきでしょうか。<br>*(Anh Saito, còn khoảng ba tháng nữa thi. Em nên phân bổ thế nào ạ?)* |
| 斉藤職長 | <ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>で<ruby>基礎<rt>きそ</rt></ruby><ruby>知識<rt>ちしき</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>で<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>に<ruby>弱点<rt>じゃくてん</rt></ruby>の<ruby>補強<rt>ほきょう</rt></ruby>だ。<br>*(Tháng đầu kiến thức nền, tiếp theo đề cũ, cuối cùng củng cố điểm yếu.)* |
| Thức | <ruby>弱点<rt>じゃくてん</rt></ruby>はどう<ruby>見<rt>み</rt></ruby>つければいいですか。<br>*(Điểm yếu thì tìm ra thế nào ạ?)* |
| 斉藤職長 | <ruby>模試<rt>もし</rt></ruby>を<ruby>受<rt>う</rt></ruby>けて<ruby>点数<rt>てんすう</rt></ruby>の<ruby>低<rt>ひく</rt></ruby>い<ruby>分野<rt>ぶんや</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>い<ruby>出<rt>だ</rt></ruby>せ。<ruby>客観<rt>きゃっかん</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>分<rt>わ</rt></ruby>かる。<br>*(Làm đề mẫu rồi rà ra những phần điểm thấp. Sẽ thấy được khách quan.)* |
| Thức | <ruby>計画表<rt>けいかくひょう</rt></ruby>を<ruby>作<rt>つく</rt></ruby>って<ruby>壁<rt>かべ</rt></ruby>に<ruby>貼<rt>は</rt></ruby>っておきます。<br>*(Em sẽ lập bảng kế hoạch dán lên tường ạ.)* |
| 斉藤職長 | いい<ruby>方法<rt>ほうほう</rt></ruby>だ。<ruby>見<rt>み</rt></ruby>えるところに<ruby>置<rt>お</rt></ruby>くと<ruby>続<rt>つづ</rt></ruby>く。<br>*(Cách hay. Để chỗ nhìn thấy thì duy trì được.)* |

---

## Tình huống 19 — Văn phòng · 17:20, Kondo trêu nhẹ động viên

| Vai | Lời thoại |
|---|---|
| 近藤先輩 | おい<ruby>職長<rt>しょくちょう</rt></ruby>さん、いよいよ<ruby>二号<rt>にごう</rt></ruby><ruby>受験<rt>じゅけん</rt></ruby>か。すごいじゃん。<br>*(Này anh 職長, sắp thi 2号 rồi à. Ghê thật đấy.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、まだ<ruby>受<rt>う</rt></ruby>かってませんよ。これからです。<br>*(Anh Kondo, em chưa đỗ đâu. Còn phải cố ạ.)* |
| 近藤先輩 | お<ruby>前<rt>まえ</rt></ruby>なら<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だって。<ruby>現場<rt>げんば</rt></ruby>の<ruby>仕切<rt>しき</rt></ruby>り、<ruby>板<rt>いた</rt></ruby>についてるしな。<br>*(Cậu thì ổn mà. Việc điều hành công trường, cậu quen rồi.)* |
| Thức | ありがとうございます。でも<ruby>油断<rt>ゆだん</rt></ruby>はしません。<br>*(Cảm ơn anh. Nhưng em không chủ quan đâu.)* |
| 近藤先輩 | その<ruby>慎重<rt>しんちょう</rt></ruby>さがお<ruby>前<rt>まえ</rt></ruby>のええとこや。<ruby>応援<rt>おうえん</rt></ruby>しとるで。<br>*(Cái tính cẩn thận đó là điểm tốt của cậu. Tôi ủng hộ cậu đấy.)* |
| Thức | <ruby>励<rt>はげ</rt></ruby>みになります。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em thấy được tiếp sức. Em sẽ cố gắng ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 21:00, viết kế hoạch ôn lên giấy

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) まず<ruby>出題<rt>しゅつだい</rt></ruby><ruby>範囲<rt>はんい</rt></ruby>を<ruby>書<rt>か</rt></ruby>き<ruby>出<rt>だ</rt></ruby>そう。<ruby>安全<rt>あんぜん</rt></ruby>、<ruby>工程<rt>こうてい</rt></ruby>、<ruby>品質<rt>ひんしつ</rt></ruby>、<ruby>法令<rt>ほうれい</rt></ruby>。<br>*(Trước hết viết ra phạm vi đề. An toàn, tiến độ, chất lượng, pháp luật.)* |
| Thức | (gọi điện) Linh à, anh vừa lập xong bảng kế hoạch ôn ba tháng. |
| Linh | Anh giỏi quá. Vậy mỗi tuần anh đặt mục tiêu nhỏ thôi nhé, đừng dồn hết một lúc. |
| Thức | Ừ, anh chia theo tuần. Cuối tuần anh tự kiểm tra lại. |
| Linh | Vậy là chắc rồi. Anh nhớ ngủ đủ, mai còn lên giàn giáo nữa đó. |
| Thức | Anh biết mà. Cảm ơn em. Mai anh bắt đầu tuần đầu tiên. |

---

## Đọng lại

Năm bản lề cuối cùng của Thức mở ra bằng những bước hành chính tưởng khô khan nhưng quyết định cả chặng đường: xác nhận レベル判定 trên CCUS, đối chiếu số ngày làm 職長, gom giấy chứng nhận lao động, rồi nộp đơn 2号評価試験 qua JAC. Thức đã quen điều hành công trường, nhưng đứng trước kỳ thi đổi tư cách lưu trú cao nhất trong tầm với, em hiểu rằng giấy tờ chỉ là cửa vào — phần chính là chứng minh được năng lực thật bằng lời. Có 親方 tin tưởng, 斉藤 hướng dẫn từng bước, Hùng cùng chí hướng và Linh động viên từ xa, Thức bước vào ba tháng ôn luyện với một kế hoạch rõ ràng dán lên tường.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 特定技能二号 | とくていぎのうにごう | tư cách kỹ năng đặc định bậc 2 |
> | 二号評価試験 | にごうひょうかしけん | kỳ thi đánh giá bậc 2 |
> | 受験資格 | じゅけんしかく | tư cách dự thi |
> | 就労証明書 | しゅうろうしょうめいしょ | giấy chứng nhận lao động |
> | 就業履歴 | しゅうぎょうりれき | lịch sử làm việc |
> | 能力評価 | のうりょくひょうか | đánh giá năng lực |
> | レベル判定 | レベルはんてい | xét bậc năng lực (CCUS) |
> | 登録基幹技能者 | とうろくきかんぎのうしゃ | kỹ năng viên cốt cán đăng ký |
> | 職長 | しょくちょう | tổ trưởng thi công, đốc công tổ |
> | 在留資格 | ざいりゅうしかく | tư cách lưu trú |
> | 出題範囲 | しゅつだいはんい | phạm vi ra đề |
> | 実務経験 | じつむけいけん | kinh nghiệm thực tế |
> | 申込番号 | もうしこみばんごう | mã số đăng ký |
> | 工程管理 | こうていかんり | quản lý tiến độ thi công |
> | 安全管理 | あんぜんかんり | quản lý an toàn |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000002, 800000038, NULL, 'markdown_book', 'T2. Ôn thi 2号 — vừa làm 職長 vừa ôn, kiệt sức (二号復習)', '# Sách kỹ năng đặc định xây dựng · T2. Ôn thi 2号 — vừa làm 職長 vừa ôn, kiệt sức (二号復習)

> **Mục tiêu nhân vật:** Thức bước vào giai đoạn ôn 特定技能2号評価試験 trong khi vẫn gánh vai 職長 toàn thời gian. Học mẫu câu nghiệp vụ chỉ huy công trường ban ngày và ngôn ngữ ôn thi ban đêm, đồng thời xử lý mệt mỏi, mất ngủ — mặt tối thực tế nhưng không bi lụy.

---

## Bối cảnh

Tháng 5 năm 2031. Đăng ký thi xong, Thức bước vào ba tháng ôn luyện. Ban ngày em vẫn là 職長 điều hành tổ thợ とび của 谷川親方 trên một công trường nhà ở tập thể; ban đêm và ngày nghỉ em ôn lý thuyết quản lý công trường. Áp lực hai vai khiến em thiếu ngủ, có lúc đầu óc nặng nề. Chương này tập trung mẫu câu chỉ huy 職長 ban ngày và mẫu câu trao đổi việc ôn thi, kèm tình huống Thức tự nhận ra mình quá tải và điều chỉnh. *(Chế độ thi 特定技能2号 nêu trong sách theo quy định tại thời điểm biên soạn 2026.)*

---

## Tình huống 1 — Công trường · 7:50, 朝礼 do Thức chủ trì

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby><ruby>内容<rt>ないよう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Mọi người, chào buổi sáng. Tôi xác nhận nội dung công việc hôm nay.)* |
| Nam | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |
| Thức | <ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>を<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>終<rt>お</rt></ruby>わらせます。<ruby>三人<rt>さんにん</rt></ruby><ruby>一<rt>ひと</rt></ruby><ruby>組<rt>くみ</rt></ruby>で<ruby>動<rt>うご</rt></ruby>いてください。<br>*(Buổi sáng hoàn thành lắp giàn giáo mặt đông. Mọi người chia ba người một nhóm.)* |
| 近藤先輩 | <ruby>資材<rt>しざい</rt></ruby>の<ruby>搬入<rt>はんにゅう</rt></ruby>は<ruby>何時<rt>なんじ</rt></ruby>だ。<br>*(Vận chuyển vật tư vào lúc mấy giờ.)* |
| Thức | <ruby>九時<rt>くじ</rt></ruby>に<ruby>到着<rt>とうちゃく</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。それまでに<ruby>下<rt>した</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>を<ruby>済<rt>す</rt></ruby>ませましょう。<br>*(Dự kiến chín giờ tới. Trước đó hoàn tất khâu chuẩn bị.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Em rõ ạ.)* |

---

## Tình huống 2 — Công trường · 8:10, dặn an toàn trước khi lên giàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>です。<ruby>安全帯<rt>あんぜんたい</rt></ruby>のフックは<ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby>とも<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Trước khi làm xác nhận an toàn. Móc dây an toàn cả hai móc cho chắc.)* |
| Nam | はい、ダブルフック、<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, móc đôi, em kiểm tra ạ.)* |
| Thức | <ruby>足元<rt>あしもと</rt></ruby>の<ruby>布板<rt>ぬのいた</rt></ruby>に<ruby>隙間<rt>すきま</rt></ruby>がないか<ruby>見<rt>み</rt></ruby>てから<ruby>上<rt>あ</rt></ruby>がってください。<br>*(Xem ván sàn dưới chân có khe hở không rồi mới leo lên.)* |
| 近藤先輩 | <ruby>風<rt>かぜ</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>強<rt>つよ</rt></ruby>いな。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か。<br>*(Gió hơi mạnh đấy. Có ổn không.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>のところ<ruby>基準値<rt>きじゅんち</rt></ruby><ruby>内<rt>ない</rt></ruby>です。<ruby>強<rt>つよ</rt></ruby>くなったら<ruby>即<rt>そく</rt></ruby><ruby>中断<rt>ちゅうだん</rt></ruby>します。<br>*(Hiện trong ngưỡng cho phép. Mạnh lên là dừng ngay.)* |
| 近藤先輩 | おう、その<ruby>判断<rt>はんだん</rt></ruby>でええ。<br>*(Ờ, quyết vậy là được.)* |

---

## Tình huống 3 — Trên giàn giáo · 10:00, hướng dẫn Nam thao tác

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、この<ruby>建地<rt>たてじ</rt></ruby>のジョイント、<ruby>向<rt>む</rt></ruby>きはこれで<ruby>合<rt>あ</rt></ruby>っていますか。<br>*(Anh Thức, khớp nối cột đứng này, hướng thế này đúng không ạ?)* |
| Thức | <ruby>差込<rt>さしこ</rt></ruby>みは<ruby>奥<rt>おく</rt></ruby>までしっかり。<ruby>抜<rt>ぬ</rt></ruby>け<ruby>止<rt>ど</rt></ruby>めのピンを<ruby>必<rt>かなら</rt></ruby>ず<ruby>掛<rt>か</rt></ruby>けてください。<br>*(Cắm vào tận trong cho chắc. Chốt chống tuột nhất định phải gài.)* |
| Nam | はい、ピン<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng, em kiểm chốt rồi ạ.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>は<ruby>手<rt>て</rt></ruby>すりを<ruby>先行<rt>せんこう</rt></ruby>して<ruby>取<rt>と</rt></ruby>り<ruby>付<rt>つ</rt></ruby>けます。<ruby>先<rt>さき</rt></ruby>に<ruby>安全<rt>あんぜん</rt></ruby>を<ruby>確保<rt>かくほ</rt></ruby>するのが<ruby>基本<rt>きほん</rt></ruby>です。<br>*(Tiếp theo lắp tay vịn trước. Đảm bảo an toàn trước là nguyên tắc.)* |
| Nam | <ruby>先行<rt>せんこう</rt></ruby><ruby>手<rt>て</rt></ruby>すり、<ruby>覚<rt>おぼ</rt></ruby>えました。<br>*(Tay vịn lắp trước, em nhớ rồi ạ.)* |
| Thức | いいですね。その<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Tốt đấy. Cứ đà đó làm cẩn thận.)* |

---

## Tình huống 4 — Văn phòng · 12:00, báo cáo tiến độ cho 斉藤

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>は<ruby>予定<rt>よてい</rt></ruby>どおり<ruby>午前中<rt>ごぜんちゅう</rt></ruby>に<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Anh Saito, giàn giáo mặt đông đã hoàn thành buổi sáng đúng kế hoạch.)* |
| 斉藤職長 | <ruby>早<rt>はや</rt></ruby>いな。<ruby>段取<rt>だんど</rt></ruby>りがうまくいったか。<br>*(Nhanh đấy. Khâu sắp xếp trơn tru à.)* |
| Thức | はい。<ruby>資材<rt>しざい</rt></ruby><ruby>搬入<rt>はんにゅう</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>下<rt>した</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>を<ruby>終<rt>お</rt></ruby>えたので、<ruby>無駄<rt>むだ</rt></ruby>な<ruby>待<rt>ま</rt></ruby>ち<ruby>時間<rt>じかん</rt></ruby>がありませんでした。<br>*(Vâng. Hoàn tất chuẩn bị trước khi vật tư vào nên không có thời gian chờ lãng phí.)* |
| 斉藤職長 | <ruby>段取<rt>だんど</rt></ruby>り<ruby>八分<rt>はちぶ</rt></ruby>とはよく<ruby>言<rt>い</rt></ruby>ったものだ。<ruby>午後<rt>ごご</rt></ruby>はどうする。<br>*(Người ta nói "sắp xếp tốt là xong tám phần" quả không sai. Chiều thì sao.)* |
| Thức | <ruby>午後<rt>ごご</rt></ruby>は<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>ります。<ruby>人員<rt>じんいん</rt></ruby><ruby>配置<rt>はいち</rt></ruby>はもう<ruby>決<rt>き</rt></ruby>めてあります。<br>*(Chiều chuyển sang mặt bắc. Bố trí nhân lực em quyết xong rồi.)* |
| 斉藤職長 | <ruby>職長<rt>しょくちょう</rt></ruby>らしくなったな。<br>*(Ra dáng 職長 rồi đấy.)* |

---

## Tình huống 5 — Khu nghỉ · 12:30, Hùng rủ ôn cùng buổi tối

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>今夜<rt>こんや</rt></ruby><ruby>少<rt>すこ</rt></ruby>し<ruby>勉強<rt>べんきょう</rt></ruby>するか。<ruby>過去<rt>かこ</rt></ruby><ruby>問<rt>もん</rt></ruby>を<ruby>持<rt>も</rt></ruby>ってきた。<br>*(Thức, tối nay học chút không. Mình mang đề cũ tới.)* |
| Thức | いいね。<ruby>正直<rt>しょうじき</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>だと<ruby>続<rt>つづ</rt></ruby>かないんだ。<br>*(Hay đấy. Thật ra học một mình mình khó duy trì lắm.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>もだよ。<ruby>仕事<rt>しごと</rt></ruby>の<ruby>後<rt>あと</rt></ruby>はもう<ruby>頭<rt>あたま</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>らない。<br>*(Mình cũng vậy. Sau giờ làm là đầu óc không quay nổi.)* |
| Thức | <ruby>短<rt>みじか</rt></ruby>くてもいいから<ruby>毎日<rt>まいにち</rt></ruby><ruby>触<rt>ふ</rt></ruby>れることが<ruby>大事<rt>だいじ</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>う。<br>*(Mình nghĩ ngắn cũng được, ngày nào cũng đụng vào mới quan trọng.)* |
| Hùng | じゃあ<ruby>一時間<rt>いちじかん</rt></ruby>だけ。<ruby>無理<rt>むり</rt></ruby>はやめよう。<br>*(Vậy chỉ một tiếng. Đừng ép quá.)* |
| Thức | うん、それで<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けよう。<br>*(Ừ, vậy mình duy trì lâu dài.)* |

---

## Tình huống 6 — Công trường · 14:00, xử lý phát sinh khi đang ôn trong đầu

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>地盤<rt>じばん</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>柔<rt>やわ</rt></ruby>らかいです。<ruby>敷板<rt>しきいた</rt></ruby>が<ruby>沈<rt>しず</rt></ruby>みそうで。<br>*(Anh Thức, nền mặt bắc hơi mềm. Tấm lót có vẻ lún.)* |
| Thức | (tập trung lại) <ruby>分<rt>わ</rt></ruby>かった。すぐ<ruby>見<rt>み</rt></ruby>る。<ruby>作業<rt>さぎょう</rt></ruby>は<ruby>一旦<rt>いったん</rt></ruby><ruby>止<rt>と</rt></ruby>めてくれ。<br>*(Hiểu rồi. Để tôi xem ngay. Tạm dừng việc lại.)* |
| Thức | <ruby>敷板<rt>しきいた</rt></ruby>を<ruby>二枚<rt>にまい</rt></ruby><ruby>重<rt>かさ</rt></ruby>ねにして<ruby>接地<rt>せっち</rt></ruby><ruby>面<rt>めん</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げる。<ruby>沈下<rt>ちんか</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐ。<br>*(Lót chồng hai tấm để mở rộng mặt tiếp đất. Chống lún.)* |
| Nam | <ruby>承知<rt>しょうち</rt></ruby>しました。すぐ<ruby>追加<rt>ついか</rt></ruby>します。<br>*(Em rõ ạ. Em bổ sung ngay.)* |
| Thức | <ruby>判断<rt>はんだん</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れるところだった。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めよう。<br>*(Suýt thì chậm phán đoán. Phải tập trung lại.)* |
| Nam | はい、<ruby>報告<rt>ほうこく</rt></ruby><ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em tiếp tục báo cáo ạ.)* |

---

## Tình huống 7 — Văn phòng · 17:30, 斉藤 nhắc cân bằng

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いぞ。<ruby>睡眠<rt>すいみん</rt></ruby>は<ruby>足<rt>た</rt></ruby>りているか。<br>*(Thức, sắc mặt em không tốt đấy. Ngủ có đủ không.)* |
| Thức | …<ruby>正直<rt>しょうじき</rt></ruby>、ここ<ruby>数日<rt>すうじつ</rt></ruby>は<ruby>四<rt>よ</rt></ruby>、<ruby>五時間<rt>ごじかん</rt></ruby>ほどです。<br>*(…Thật ra mấy hôm nay chỉ khoảng bốn năm tiếng ạ.)* |
| 斉藤職長 | それは<ruby>少<rt>すく</rt></ruby>なすぎる。<ruby>現場<rt>げんば</rt></ruby>で<ruby>判断<rt>はんだん</rt></ruby>が<ruby>鈍<rt>にぶ</rt></ruby>れば<ruby>事故<rt>じこ</rt></ruby>につながる。<br>*(Thế là quá ít. Phán đoán ở công trường mà chậm thì dẫn tới tai nạn.)* |
| Thức | はい。<ruby>今日<rt>きょう</rt></ruby>も<ruby>一<rt>いち</rt></ruby><ruby>瞬<rt>しゅん</rt></ruby><ruby>反応<rt>はんのう</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れました。<ruby>反省<rt>はんせい</rt></ruby>しています。<br>*(Vâng. Hôm nay em cũng phản ứng chậm một thoáng. Em đang tự kiểm điểm.)* |
| 斉藤職長 | <ruby>勉強<rt>べんきょう</rt></ruby>は<ruby>大事<rt>だいじ</rt></ruby>だが、<ruby>安全<rt>あんぜん</rt></ruby>と<ruby>体<rt>からだ</rt></ruby>が<ruby>先<rt>さき</rt></ruby>だ。<ruby>量<rt>りょう</rt></ruby>より<ruby>質<rt>しつ</rt></ruby>で<ruby>組<rt>く</rt></ruby>み<ruby>直<rt>なお</rt></ruby>せ。<br>*(Học quan trọng nhưng an toàn và sức khỏe trước. Xếp lại theo chất lượng hơn số lượng.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>計画<rt>けいかく</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ xem lại kế hoạch.)* |

---

## Tình huống 8 — Phòng trọ Thức · 21:00, ôn với Hùng qua bàn

| Vai | Lời thoại |
|---|---|
| Hùng | この<ruby>問題<rt>もんだい</rt></ruby>、<ruby>足場<rt>あしば</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby><ruby>頻度<rt>ひんど</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いてる。<ruby>答<rt>こた</rt></ruby>えは<ruby>分<rt>わ</rt></ruby>かるか。<br>*(Câu này hỏi tần suất kiểm tra giàn giáo. Cậu biết đáp án không.)* |
| Thức | <ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>と、<ruby>悪天候<rt>あくてんこう</rt></ruby>のあと、それと<ruby>組<rt>く</rt></ruby>み<ruby>替<rt>か</rt></ruby>えのあとだよ。<br>*(Trước khi bắt đầu làm, sau thời tiết xấu, và sau khi sửa giàn.)* |
| Hùng | さすが<ruby>現場<rt>げんば</rt></ruby><ruby>感覚<rt>かんかく</rt></ruby>だな。<ruby>俺<rt>おれ</rt></ruby>はそこが<ruby>曖昧<rt>あいまい</rt></ruby>だった。<br>*(Đúng là cảm giác công trường. Chỗ đó mình còn mơ hồ.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>やってることを<ruby>言葉<rt>ことば</rt></ruby>にするだけだよ。それが<ruby>二号<rt>にごう</rt></ruby>の<ruby>狙<rt>ねら</rt></ruby>いだと<ruby>思<rt>おも</rt></ruby>う。<br>*(Chỉ là diễn thành lời những việc ngày nào cũng làm. Mình nghĩ đó là dụng ý của 2号.)* |
| Hùng | <ruby>確<rt>たし</rt></ruby>かに。<ruby>暗記<rt>あんき</rt></ruby>より<ruby>理解<rt>りかい</rt></ruby>だな。<br>*(Đúng thật. Hiểu hơn là học vẹt.)* |
| Thức | <ruby>今日<rt>きょう</rt></ruby>はここまでにしよう。<ruby>続<rt>つづ</rt></ruby>けることが<ruby>勝<rt>か</rt></ruby>ちだ。<br>*(Hôm nay tới đây thôi. Duy trì được mới thắng.)* |

---

## Tình huống 9 — Phòng trọ · 21:40, Thức gọi Linh, mệt mỏi (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, dạo này anh hơi đuối. Ban ngày làm 職長 căng, tối lại ôn. |
| Linh | Em nghe giọng anh là biết. Anh ngủ được mấy tiếng một đêm? |
| Thức | Bốn năm tiếng thôi. Hôm nay ngoài công trường anh suýt chậm một nhịp xử lý. |
| Linh | Anh ơi, an toàn là số một. Đỗ thi mà mất an toàn thì không đáng. Anh giảm bớt giờ học đêm đi. |
| Thức | Ừ, anh Saito cũng nói vậy. Anh sẽ ôn ít mà chắc, ngủ đủ trước. |
| Linh | Vậy mới đúng. Đường còn dài, mình đi chậm mà bền anh nhé. |

---

## Tình huống 10 — Công trường · 7:50, 朝礼 hôm sau, Thức điều chỉnh nhịp

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>無理<rt>むり</rt></ruby>のない<ruby>工程<rt>こうてい</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<br>*(Chào buổi sáng. Hôm nay tiến hành với tiến độ không gắng sức quá.)* |
| 近藤先輩 | お、<ruby>余裕<rt>よゆう</rt></ruby><ruby>持<rt>も</rt></ruby>たせるんやな。ええ<ruby>判断<rt>はんだん</rt></ruby>や。<br>*(Ồ, để dư thời gian à. Quyết định hay đấy.)* |
| Thức | はい。<ruby>急<rt>いそ</rt></ruby>ぎすぎると<ruby>事故<rt>じこ</rt></ruby>のもとです。<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つずつ。<br>*(Vâng. Vội quá là nguồn gốc tai nạn. Chắc chắn từng việc một.)* |
| Nam | <ruby>休憩<rt>きゅうけい</rt></ruby>はいつもどおりですか。<br>*(Giờ nghỉ vẫn như thường lệ ạ?)* |
| Thức | はい、<ruby>休憩<rt>きゅうけい</rt></ruby>はしっかり<ruby>取<rt>と</rt></ruby>ってください。<ruby>集中力<rt>しゅうちゅうりょく</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>きます。<br>*(Vâng, nghỉ ngơi đầy đủ. Sự tập trung sẽ duy trì được.)* |
| 近藤先輩 | <ruby>職長<rt>しょくちょう</rt></ruby>がそう<ruby>言<rt>い</rt></ruby>うてくれると<ruby>助<rt>たす</rt></ruby>かるわ。<br>*(職長 mà nói vậy thì đỡ ghê.)* |

---

## Tình huống 11 — Công trường · 10:00, dạy Nam đọc bản vẽ giàn giáo

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、この<ruby>足場<rt>あしば</rt></ruby><ruby>図<rt>ず</rt></ruby>の<ruby>記号<rt>きごう</rt></ruby>がまだ<ruby>読<rt>よ</rt></ruby>めません。<br>*(Anh Thức, ký hiệu trên bản vẽ giàn giáo này em vẫn chưa đọc được.)* |
| Thức | この<ruby>四角<rt>しかく</rt></ruby>は<ruby>建地<rt>たてじ</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>、<ruby>線<rt>せん</rt></ruby>は<ruby>布<rt>ぬの</rt></ruby>の<ruby>段<rt>だん</rt></ruby>を<ruby>表<rt>あらわ</rt></ruby>します。<br>*(Hình vuông này là vị trí cột đứng, đường thẳng biểu thị tầng thanh ngang.)* |
| Nam | <ruby>段<rt>だん</rt></ruby>の<ruby>間隔<rt>かんかく</rt></ruby>は<ruby>図面<rt>ずめん</rt></ruby>どおりに<ruby>取<rt>と</rt></ruby>るのですか。<br>*(Khoảng cách tầng lấy đúng theo bản vẽ ạ?)* |
| Thức | そうです。<ruby>基準<rt>きじゅん</rt></ruby>の<ruby>寸法<rt>すんぽう</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<ruby>勝手<rt>かって</rt></ruby>に<ruby>変<rt>か</rt></ruby>えてはいけません。<br>*(Đúng. Giữ đúng kích thước tiêu chuẩn. Không được tự ý thay đổi.)* |
| Nam | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>図面<rt>ずめん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>習慣<rt>しゅうかん</rt></ruby>をつけます。<br>*(Em hiểu rồi. Em sẽ tập thói quen xem bản vẽ ạ.)* |
| Thức | それが<ruby>一人前<rt>いちにんまえ</rt></ruby>への<ruby>道<rt>みち</rt></ruby>です。<br>*(Đó là con đường tới tay nghề thực thụ.)* |

---

## Tình huống 12 — Văn phòng · 12:00, 親方 hỏi thăm tình hình ôn

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>勉強<rt>べんきょう</rt></ruby>と<ruby>仕事<rt>しごと</rt></ruby>、うまいこと<ruby>回<rt>まわ</rt></ruby>っとるか。<br>*(Thức, học với việc, có xoay xở ổn không.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>欲張<rt>よくば</rt></ruby>りすぎて<ruby>寝<rt>ね</rt></ruby><ruby>不足<rt>ぶそく</rt></ruby>でした。<ruby>今<rt>いま</rt></ruby>は<ruby>量<rt>りょう</rt></ruby>を<ruby>減<rt>へ</rt></ruby>らして<ruby>調整<rt>ちょうせい</rt></ruby>しています。<br>*(Lúc đầu em tham quá nên thiếu ngủ. Giờ em giảm lượng để điều chỉnh ạ.)* |
| 谷川親方 | それでええ。<ruby>長丁場<rt>ながちょうば</rt></ruby>や。<ruby>無理<rt>むり</rt></ruby>したら<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>潰<rt>つぶ</rt></ruby>れるで。<br>*(Vậy được. Đường dài đấy. Cố quá là gục giữa chừng.)* |
| Thức | はい。<ruby>仕事<rt>しごと</rt></ruby>に<ruby>支障<rt>ししょう</rt></ruby>が<ruby>出<rt>で</rt></ruby>ないことを<ruby>第一<rt>だいいち</rt></ruby>にします。<br>*(Vâng. Em đặt việc không ảnh hưởng công việc lên hàng đầu.)* |
| 谷川親方 | <ruby>仕事<rt>しごと</rt></ruby>そのものが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>や。<ruby>忘<rt>わす</rt></ruby>れんな。<br>*(Chính công việc là sự học tốt nhất. Đừng quên.)* |
| Thức | はい、<ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Vâng, em khắc trong lòng ạ.)* |

---

## Tình huống 13 — Công trường · 15:00, giám sát 石川 trao đổi tiến độ tổng

| Vai | Lời thoại |
|---|---|
| 石川さん | トゥックさん、<ruby>足場<rt>あしば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>進捗<rt>しんちょく</rt></ruby>はどうですか。<br>*(Anh Thức, tiến độ tổng thể giàn giáo thế nào?)* |
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>七割<rt>ななわり</rt></ruby>まで<ruby>完了<rt>かんりょう</rt></ruby>しています。<ruby>予定<rt>よてい</rt></ruby>どおりです。<br>*(Anh Ishikawa, đã hoàn thành tới bảy phần mười tổng thể. Đúng kế hoạch ạ.)* |
| 石川さん | <ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>外装<rt>がいそう</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>が<ruby>入<rt>はい</rt></ruby>る。それまでに<ruby>足場<rt>あしば</rt></ruby>は<ruby>完成<rt>かんせい</rt></ruby>しますか。<br>*(Tuần sau thợ ốp ngoài vào. Trước đó giàn giáo có xong không?)* |
| Thức | はい、<ruby>今週末<rt>こんしゅうまつ</rt></ruby>には<ruby>完成<rt>かんせい</rt></ruby>させます。<ruby>引<rt>ひ</rt></ruby>き<ruby>渡<rt>わた</rt></ruby>し<ruby>前<rt>まえ</rt></ruby>に<ruby>点検<rt>てんけん</rt></ruby>も<ruby>済<rt>す</rt></ruby>ませます。<br>*(Vâng, cuối tuần này sẽ hoàn thành. Trước khi bàn giao em làm cả kiểm tra ạ.)* |
| 石川さん | <ruby>助<rt>たす</rt></ruby>かります。<ruby>点検<rt>てんけん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>も<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>下<rt>くだ</rt></ruby>さい。<br>*(Đỡ quá. Cho tôi cả biên bản kiểm tra luôn nhé.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>書面<rt>しょめん</rt></ruby>で<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Em rõ ạ. Em nộp bằng văn bản.)* |

---

## Tình huống 14 — Khu nghỉ · 12:10, Hùng nói chuyện áp lực

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>正直<rt>しょうじき</rt></ruby><ruby>不安<rt>ふあん</rt></ruby>になることないか。<ruby>受<rt>う</rt></ruby>からなかったらどうしようって。<br>*(Thức, thật ra cậu có khi nào lo không. Lỡ không đỗ thì sao.)* |
| Thức | あるよ。でも<ruby>不安<rt>ふあん</rt></ruby>を<ruby>抱<rt>かか</rt></ruby>えたままでも、<ruby>手<rt>て</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かすしかない。<br>*(Có chứ. Nhưng dù mang nỗi lo, cũng chỉ có cách bắt tay vào làm.)* |
| Hùng | <ruby>強<rt>つよ</rt></ruby>いな、お<ruby>前<rt>まえ</rt></ruby>。<br>*(Cậu mạnh mẽ thật.)* |
| Thức | <ruby>強<rt>つよ</rt></ruby>くないよ。ただ、ここまで<ruby>来<rt>き</rt></ruby>たんだ。<ruby>途中<rt>とちゅう</rt></ruby>でやめたくない。<br>*(Không mạnh đâu. Chỉ là đã đi tới đây rồi. Mình không muốn bỏ giữa chừng.)* |
| Hùng | そうだな。<ruby>俺<rt>おれ</rt></ruby>も<ruby>最後<rt>さいご</rt></ruby>までやる。<br>*(Đúng vậy. Mình cũng làm tới cùng.)* |
| Thức | <ruby>二人<rt>ふたり</rt></ruby>でゴールまで<ruby>行<rt>い</rt></ruby>こう。<br>*(Hai đứa cùng đi tới đích.)* |

---

## Tình huống 15 — Công trường · 16:00, chỉ huy thu dọn cuối ngày

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>終了<rt>しゅうりょう</rt></ruby>します。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>数<rt>かず</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Kết thúc công việc hôm nay. Mọi người kiểm số lượng dụng cụ.)* |
| Nam | <ruby>単管<rt>たんかん</rt></ruby>クランプ、<ruby>数<rt>かず</rt></ruby><ruby>合<rt>あ</rt></ruby>っています。<br>*(Khóa ống đơn, số lượng khớp ạ.)* |
| Thức | <ruby>余<rt>あま</rt></ruby>った<ruby>資材<rt>しざい</rt></ruby>は<ruby>所定<rt>しょてい</rt></ruby>の<ruby>位置<rt>いち</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>す。<ruby>通路<rt>つうろ</rt></ruby>に<ruby>物<rt>もの</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>さないように。<br>*(Vật tư thừa trả về vị trí quy định. Không để đồ trên lối đi.)* |
| 近藤先輩 | <ruby>明日<rt>あした</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りはどうする。<br>*(Sắp xếp cho ngày mai thế nào.)* |
| Thức | <ruby>北<rt>きた</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>仕上<rt>しあ</rt></ruby>げと<ruby>点検<rt>てんけん</rt></ruby>です。<ruby>朝<rt>あさ</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Hoàn thiện và kiểm tra mặt bắc. Sáng tôi sẽ phổ biến.)* |
| 近藤先輩 | <ruby>了解<rt>りょうかい</rt></ruby>。お<ruby>疲<rt>つか</rt></ruby>れさん。<br>*(Hiểu rồi. Vất vả rồi nhé.)* |

---

## Tình huống 16 — Văn phòng · 17:30, 斉藤 kiểm tra kế hoạch đã điều chỉnh

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>勉強<rt>べんきょう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>見直<rt>みなお</rt></ruby>したか。<br>*(Thức, xem lại kế hoạch học chưa.)* |
| Thức | はい。<ruby>平日<rt>へいじつ</rt></ruby>は<ruby>四十分<rt>よんじゅっぷん</rt></ruby>だけ、<ruby>休<rt>やす</rt></ruby>みの<ruby>日<rt>ひ</rt></ruby>にまとめてやる<ruby>形<rt>かたち</rt></ruby>に<ruby>変<rt>か</rt></ruby>えました。<br>*(Vâng. Em đổi sang ngày thường chỉ bốn mươi phút, dồn làm vào ngày nghỉ.)* |
| 斉藤職長 | いい。<ruby>睡眠<rt>すいみん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>確保<rt>かくほ</rt></ruby>できているか。<br>*(Tốt. Thời gian ngủ có đảm bảo không.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>は<ruby>六<rt>ろく</rt></ruby>、<ruby>七時間<rt>しちじかん</rt></ruby><ruby>取<rt>と</rt></ruby>れています。<ruby>頭<rt>あたま</rt></ruby>がすっきりしました。<br>*(Giờ em ngủ được sáu bảy tiếng. Đầu óc sáng ra ạ.)* |
| 斉藤職長 | それでこそ<ruby>持続<rt>じぞく</rt></ruby>できる。<ruby>本番<rt>ほんばん</rt></ruby>まで<ruby>体調<rt>たいちょう</rt></ruby><ruby>管理<rt>かんり</rt></ruby>も<ruby>実力<rt>じつりょく</rt></ruby>のうちだ。<br>*(Vậy mới duy trì được. Tới ngày thi, quản lý thể trạng cũng là một phần thực lực.)* |
| Thức | はい、<ruby>肝<rt>きも</rt></ruby>に<ruby>銘<rt>めい</rt></ruby>じます。<br>*(Vâng, em ghi lòng tạc dạ ạ.)* |

---

## Tình huống 17 — Phòng trọ Thức · 20:00, ôn 40 phút có kỷ luật

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) <ruby>今日<rt>きょう</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>管理<rt>かんり</rt></ruby>の<ruby>章<rt>しょう</rt></ruby>だけ。<ruby>四十分<rt>よんじゅっぷん</rt></ruby><ruby>集中<rt>しゅうちゅう</rt></ruby>しよう。<br>*(Hôm nay chỉ chương quản lý an toàn. Tập trung bốn mươi phút thôi.)* |
| Thức | (đọc to) <ruby>足場<rt>あしば</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>は<ruby>作業<rt>さぎょう</rt></ruby><ruby>主任者<rt>しゅにんしゃ</rt></ruby>が<ruby>行<rt>おこな</rt></ruby>い、<ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>す…これは<ruby>毎日<rt>まいにち</rt></ruby>やってることだ。<br>*(Kiểm tra giàn giáo do chủ nhiệm công việc thực hiện và lưu hồ sơ… đây là việc ngày nào cũng làm.)* |
| Hùng | (gọi điện) トゥック、<ruby>今<rt>いま</rt></ruby><ruby>少<rt>すこ</rt></ruby>しいいか。<ruby>一問<rt>いちもん</rt></ruby>だけ<ruby>確認<rt>かくにん</rt></ruby>したい。<br>*(Thức, giờ rảnh chút không. Mình muốn xác nhận một câu.)* |
| Thức | いいよ。<ruby>手短<rt>てみじか</rt></ruby>にな、お<ruby>互<rt>たが</rt></ruby>い<ruby>時間<rt>じかん</rt></ruby><ruby>決<rt>き</rt></ruby>めてるから。<br>*(Được. Ngắn gọn thôi nhé, hai đứa đều đặt giờ rồi.)* |
| Hùng | <ruby>墜落<rt>ついらく</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>の<ruby>措置<rt>そち</rt></ruby>、<ruby>順番<rt>じゅんばん</rt></ruby>は。<br>*(Biện pháp chống rơi ngã, thứ tự thế nào.)* |
| Thức | <ruby>手<rt>て</rt></ruby>すり<ruby>先行<rt>せんこう</rt></ruby>、<ruby>安全帯<rt>あんぜんたい</rt></ruby><ruby>使用<rt>しよう</rt></ruby>、<ruby>開口部<rt>かいこうぶ</rt></ruby>の<ruby>養生<rt>ようじょう</rt></ruby>だ。<ruby>現場<rt>げんば</rt></ruby>そのままだよ。<br>*(Tay vịn lắp trước, dùng dây an toàn, che chắn lỗ hở. Y như công trường thôi.)* |

---

## Tình huống 18 — Công trường · 7:50, Thức trông khỏe hơn rõ

| Vai | Lời thoại |
|---|---|
| 近藤先輩 | お、トゥック、<ruby>今日<rt>きょう</rt></ruby>は<ruby>顔色<rt>かおいろ</rt></ruby>ええやないか。<br>*(Ồ, Thức, hôm nay sắc mặt tốt đấy.)* |
| Thức | はい、<ruby>近藤<rt>こんどう</rt></ruby>さん。<ruby>睡眠<rt>すいみん</rt></ruby>を<ruby>増<rt>ふ</rt></ruby>やしたら<ruby>体<rt>からだ</rt></ruby>が<ruby>軽<rt>かる</rt></ruby>くなりました。<br>*(Vâng, anh Kondo. Ngủ nhiều hơn thì người nhẹ ra ạ.)* |
| 近藤先輩 | そらそうや。<ruby>無理<rt>むり</rt></ruby>して<ruby>倒<rt>たお</rt></ruby>れたら<ruby>意味<rt>いみ</rt></ruby>ないからな。<br>*(Đương nhiên rồi. Cố quá mà gục thì vô nghĩa.)* |
| Thức | <ruby>勉強<rt>べんきょう</rt></ruby>は<ruby>短<rt>みじか</rt></ruby>くても<ruby>毎日<rt>まいにち</rt></ruby>やる。それで<ruby>十分<rt>じゅうぶん</rt></ruby><ruby>進<rt>すす</rt></ruby>みます。<br>*(Học ngắn nhưng ngày nào cũng làm. Vậy là tiến được khá ạ.)* |
| 近藤先輩 | ええ<ruby>習慣<rt>しゅうかん</rt></ruby>や。<ruby>仕事<rt>しごと</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じやで。<br>*(Thói quen tốt đấy. Công việc cũng vậy thôi.)* |
| Thức | はい、コツコツが<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>いですね。<br>*(Vâng, bền bỉ từng chút là mạnh nhất nhỉ.)* |

---

## Tình huống 19 — Văn phòng · 17:00, 親方 ghi nhận sự ổn định

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、ここ<ruby>最近<rt>さいきん</rt></ruby><ruby>現場<rt>げんば</rt></ruby>が<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いとるな。<br>*(Thức, dạo này công trường ổn định nhỉ.)* |
| Thức | ありがとうございます。<ruby>自分<rt>じぶん</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>を<ruby>整<rt>ととの</rt></ruby>えたら、<ruby>判断<rt>はんだん</rt></ruby>も<ruby>安定<rt>あんてい</rt></ruby>しました。<br>*(Cảm ơn sếp. Em chỉnh lại nhịp bản thân thì phán đoán cũng ổn định ạ.)* |
| 谷川親方 | それや。<ruby>職長<rt>しょくちょう</rt></ruby>がぶれたら<ruby>班<rt>はん</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>がぶれる。<br>*(Chính nó đấy. 職長 mà chao đảo thì cả tổ chao đảo.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>が<ruby>軸<rt>じく</rt></ruby>であることを<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Em sẽ không quên mình là cái trục.)* |
| 谷川親方 | その<ruby>気持<rt>きも</rt></ruby>ちがあれば<ruby>二号<rt>にごう</rt></ruby>も<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。<br>*(Có cái tinh thần đó thì 2号 cũng ổn.)* |
| Thức | はい、<ruby>地道<rt>じみち</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng, em sẽ kiên trì từng bước ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 21:00, gọi Linh tổng kết tuần (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, tuần này anh ổn hơn nhiều. Ngủ đủ, ban ngày làm tỉnh táo, tối ôn vừa sức. |
| Linh | Em mừng quá. Giọng anh khác hẳn tuần trước. |
| Thức | Anh Saito với 親方 đều nói quản lý sức khỏe cũng là một phần thực lực. Anh thấm rồi. |
| Linh | Đúng vậy đó anh. Mình không cần đi nhanh, chỉ cần không dừng lại. |
| Thức | Ừ. Còn hơn hai tháng nữa. Anh sẽ giữ nhịp này tới ngày thi. |
| Linh | Em tin anh. Mỗi tuần anh kể em nghe một chút nhé, em theo cùng anh. |

---

## Đọng lại

Tháng đầu ôn luyện dạy Thức một bài học không có trong sách thi: cố quá hóa hỏng. Vừa gánh vai 職長 điều hành tổ thợ ban ngày, vừa thức khuya ôn lý thuyết, em thiếu ngủ tới mức suýt chậm một nhịp xử lý sự cố nền lún — điều tối kỵ với người chỉ huy trên cao. 斉藤 và 親方 cùng kéo em lại: an toàn và sức khỏe đi trước, học theo chất lượng chứ không số lượng. Khi Thức rút giờ ôn xuống bốn mươi phút mỗi tối nhưng đều đặn, ngủ đủ sáu bảy tiếng, thì cả phán đoán ở công trường lẫn việc ghi nhớ đều vững lên. Em nhận ra điều cốt lõi của 2号評価試験 không phải học vẹt, mà là diễn đạt được bằng lời chính những việc mình làm mỗi ngày.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 朝礼 | ちょうれい | họp đầu giờ sáng |
> | 段取り | だんどり | sự sắp xếp, bố trí công việc |
> | 安全帯 | あんぜんたい | dây đai an toàn |
> | 先行手すり | せんこうてすり | tay vịn lắp trước |
> | 建地 | たてじ | cột đứng giàn giáo |
> | 敷板 | しきいた | tấm lót chân giàn |
> | 沈下 | ちんか | sự lún xuống |
> | 進捗 | しんちょく | tiến độ |
> | 睡眠不足 | すいみんぶそく | thiếu ngủ |
> | 体調管理 | たいちょうかんり | quản lý thể trạng |
> | 持続 | じぞく | sự duy trì, bền bỉ |
> | 墜落防止 | ついらくぼうし | phòng chống rơi ngã |
> | 開口部 | かいこうぶ | phần lỗ hở, miệng hở |
> | 長丁場 | ながちょうば | chặng đường dài |
> | 軸 | じく | cái trục, chỗ dựa trung tâm |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000003, 800000038, NULL, 'markdown_book', 'T3. Học nhóm với Hùng, Linh tiếp sức tinh thần (フンと学習)', '# Sách kỹ năng đặc định xây dựng · T3. Học nhóm với Hùng, Linh tiếp sức tinh thần (フンと学習)

> **Mục tiêu nhân vật:** Thức và Hùng lập nhóm ôn cố định cho 2号評価試験, chia nhau ôn theo chủ đề, kiểm tra chéo. Học mẫu câu nghiệp vụ thảo luận đề thi quản lý công trường (an toàn, tiến độ, pháp luật, vấn đáp) và mẫu câu hỗ trợ tinh thần đời thường với Linh.

---

## Bối cảnh

Tháng 6 năm 2031. Thức và Hùng — cùng quê Việt, cùng nhắm 特定技能2号 ngành 建設 — lập một nhóm học nhỏ, gặp nhau hai tối mỗi tuần và một buổi cuối tuần. Họ chia chủ đề ôn (an toàn, tiến độ thi công, pháp luật, vấn đáp về vai 職長), giảng lại cho nhau, kiểm tra chéo. Linh từ xa giữ vai tiếp sức tinh thần. Chương này tập trung mẫu câu thảo luận học thuật về quản lý công trường và mẫu câu động viên đời thường. *(Nội dung 特定技能2号評価試験 trong sách theo quy định tại thời điểm biên soạn 2026.)*

---

## Tình huống 1 — Phòng trọ Thức · 19:30, lập quy tắc nhóm học

| Vai | Lời thoại |
|---|---|
| Thức | フン、<ruby>続<rt>つづ</rt></ruby>けるために<ruby>最初<rt>さいしょ</rt></ruby>にルールを<ruby>決<rt>き</rt></ruby>めよう。<br>*(Hùng, để duy trì được thì đầu tiên mình đặt quy tắc.)* |
| Hùng | <ruby>賛成<rt>さんせい</rt></ruby>。だらだらやると<ruby>身<rt>み</rt></ruby>につかないからな。<br>*(Đồng ý. Học lề mề thì không vào đầu.)* |
| Thức | <ruby>一回<rt>いっかい</rt></ruby><ruby>九十分<rt>きゅうじゅっぷん</rt></ruby>、<ruby>前半<rt>ぜんはん</rt></ruby>は<ruby>各自<rt>かくじ</rt></ruby>の<ruby>担当<rt>たんとう</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>、<ruby>後半<rt>こうはん</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby><ruby>演習<rt>えんしゅう</rt></ruby>にしよう。<br>*(Mỗi buổi chín mươi phút, nửa đầu mỗi người giảng phần phụ trách, nửa sau làm bài tập.)* |
| Hùng | いいね。<ruby>担当<rt>たんとう</rt></ruby>はどう<ruby>分<rt>わ</rt></ruby>ける。<br>*(Hay đấy. Phân công thế nào.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>が<ruby>安全<rt>あんぜん</rt></ruby><ruby>管理<rt>かんり</rt></ruby>と<ruby>工程<rt>こうてい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>、フンが<ruby>法令<rt>ほうれい</rt></ruby>と<ruby>品質<rt>ひんしつ</rt></ruby><ruby>管理<rt>かんり</rt></ruby>でどうだ。<br>*(Mình phụ trách quản lý an toàn và tiến độ, Hùng pháp luật và quản lý chất lượng, thế nào.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>得意<rt>とくい</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>教<rt>おし</rt></ruby>え<ruby>合<rt>あ</rt></ruby>えば<ruby>効率<rt>こうりつ</rt></ruby>がいい。<br>*(Hiểu rồi. Dạy nhau phần sở trường thì hiệu quả.)* |

---

## Tình huống 2 — Phòng trọ · 19:45, Thức giảng phần an toàn

| Vai | Lời thoại |
|---|---|
| Thức | まず<ruby>安全<rt>あんぜん</rt></ruby><ruby>管理<rt>かんり</rt></ruby>。<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>は<ruby>危険<rt>きけん</rt></ruby>の<ruby>予知<rt>よち</rt></ruby>と<ruby>除去<rt>じょきょ</rt></ruby>だ。<br>*(Trước hết quản lý an toàn. Vai trò 職長 là dự báo và loại bỏ nguy hiểm.)* |
| Hùng | <ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>って、<ruby>現場<rt>げんば</rt></ruby>のKYのことか。<br>*(Dự báo nguy hiểm là cái KY ở công trường à.)* |
| Thức | そうだ。<ruby>作業<rt>さぎょう</rt></ruby><ruby>前<rt>まえ</rt></ruby>にKY<ruby>活動<rt>かつどう</rt></ruby>で<ruby>危険<rt>きけん</rt></ruby>を<ruby>洗<rt>あら</rt></ruby>い<ruby>出<rt>だ</rt></ruby>し、<ruby>対策<rt>たいさく</rt></ruby>を<ruby>決<rt>き</rt></ruby>めて<ruby>共有<rt>きょうゆう</rt></ruby>する。<br>*(Đúng. Trước khi làm, hoạt động KY rà soát nguy hiểm, quyết biện pháp và chia sẻ.)* |
| Hùng | <ruby>試験<rt>しけん</rt></ruby>では、その<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>させられるのか。<br>*(Trong thi sẽ phải giải thích quy trình đó à.)* |
| Thức | <ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>で<ruby>聞<rt>き</rt></ruby>かれる<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。<ruby>順<rt>じゅん</rt></ruby>を<ruby>追<rt>お</rt></ruby>って<ruby>言<rt>い</rt></ruby>えるようにしよう。<br>*(Khả năng cao bị hỏi ở phần vấn đáp. Tập nói được theo từng bước.)* |
| Hùng | なるほど。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>練習<rt>れんしゅう</rt></ruby>するわ。<br>*(Ra vậy. Mình sẽ luyện nói thành tiếng.)* |

---

## Tình huống 3 — Phòng trọ · 20:10, Hùng giảng phần pháp luật

| Vai | Lời thoại |
|---|---|
| Hùng | <ruby>次<rt>つぎ</rt></ruby>は<ruby>法令<rt>ほうれい</rt></ruby>だ。<ruby>足場<rt>あしば</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>労働<rt>ろうどう</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby><ruby>衛生<rt>えいせい</rt></ruby><ruby>法<rt>ほう</rt></ruby>で<ruby>細<rt>こま</rt></ruby>かく<ruby>決<rt>き</rt></ruby>められている。<br>*(Tiếp theo là pháp luật. Công việc giàn giáo được quy định chi tiết trong Luật an toàn vệ sinh lao động.)* |
| Thức | たとえばどんな<ruby>規定<rt>きてい</rt></ruby>がある。<br>*(Ví dụ có quy định nào.)* |
| Hùng | <ruby>高<rt>たか</rt></ruby>さ<ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>では<ruby>墜落<rt>ついらく</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>措置<rt>そち</rt></ruby>が<ruby>義務<rt>ぎむ</rt></ruby>だ。<br>*(Làm việc ở độ cao từ hai mét trở lên thì biện pháp chống rơi ngã là bắt buộc.)* |
| Thức | それは<ruby>毎日<rt>まいにち</rt></ruby>やってる<ruby>手<rt>て</rt></ruby>すりと<ruby>安全帯<rt>あんぜんたい</rt></ruby>だな。<br>*(Đó chính là tay vịn và dây an toàn ngày nào cũng làm.)* |
| Hùng | そう。<ruby>条文<rt>じょうぶん</rt></ruby>の<ruby>番号<rt>ばんごう</rt></ruby>まで<ruby>覚<rt>おぼ</rt></ruby>えなくていいが、<ruby>趣旨<rt>しゅし</rt></ruby>は<ruby>言<rt>い</rt></ruby>えるように。<br>*(Đúng. Không cần nhớ tới số điều khoản, nhưng phải nói được tinh thần của nó.)* |
| Thức | <ruby>実務<rt>じつむ</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけると<ruby>覚<rt>おぼ</rt></ruby>えやすいな。<br>*(Gắn với thực tế thì dễ nhớ nhỉ.)* |

---

## Tình huống 4 — Phòng trọ · 20:40, làm đề chéo

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>後半<rt>こうはん</rt></ruby>は<ruby>問題<rt>もんだい</rt></ruby><ruby>演習<rt>えんしゅう</rt></ruby>だ。お<ruby>互<rt>たが</rt></ruby>いに<ruby>問題<rt>もんだい</rt></ruby>を<ruby>出<rt>だ</rt></ruby>し<ruby>合<rt>あ</rt></ruby>おう。<br>*(Nửa sau làm bài tập. Mình ra đề cho nhau.)* |
| Hùng | じゃあ<ruby>俺<rt>おれ</rt></ruby>から。<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>のとき、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>すべきことは。<br>*(Vậy mình trước. Khi lắp giàn giáo, việc đầu tiên cần kiểm tra là gì.)* |
| Thức | <ruby>地盤<rt>じばん</rt></ruby>の<ruby>状態<rt>じょうたい</rt></ruby>と<ruby>敷板<rt>しきいた</rt></ruby>の<ruby>設置<rt>せっち</rt></ruby>、それと<ruby>建地<rt>たてじ</rt></ruby>の<ruby>垂直<rt>すいちょく</rt></ruby><ruby>精度<rt>せいど</rt></ruby>だ。<br>*(Trạng thái nền và việc đặt tấm lót, và độ thẳng đứng của cột.)* |
| Hùng | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>現場<rt>げんば</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>出<rt>で</rt></ruby>てるな。<br>*(Đúng rồi. Kinh nghiệm công trường lộ ra đấy.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>。<ruby>工程<rt>こうてい</rt></ruby>が<ruby>遅<rt>おく</rt></ruby>れたとき、<ruby>職長<rt>しょくちょう</rt></ruby>はまず<ruby>何<rt>なに</rt></ruby>をする。<br>*(Tới mình. Khi tiến độ chậm, 職長 trước hết làm gì.)* |
| Hùng | <ruby>原因<rt>げんいん</rt></ruby>を<ruby>把握<rt>はあく</rt></ruby>して、<ruby>監督<rt>かんとく</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>し、<ruby>挽回<rt>ばんかい</rt></ruby><ruby>策<rt>さく</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>する。<br>*(Nắm nguyên nhân, báo cáo giám sát, đề xuất phương án gỡ lại.)* |

---

## Tình huống 5 — Phòng trọ · 21:00, tổng kết buổi học đầu

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>は<ruby>時間<rt>じかん</rt></ruby>どおり<ruby>九十分<rt>きゅうじゅっぷん</rt></ruby>。よく<ruby>集中<rt>しゅうちゅう</rt></ruby>できたな。<br>*(Hôm nay đúng giờ chín mươi phút. Tập trung tốt đấy.)* |
| Hùng | <ruby>一人<rt>ひとり</rt></ruby>より<ruby>断然<rt>だんぜん</rt></ruby>はかどる。お<ruby>前<rt>まえ</rt></ruby>に<ruby>説明<rt>せつめい</rt></ruby>すると<ruby>頭<rt>あたま</rt></ruby>が<ruby>整理<rt>せいり</rt></ruby>される。<br>*(Hơn hẳn học một mình. Giải thích cho cậu thì đầu óc được sắp xếp lại.)* |
| Thức | それが<ruby>狙<rt>ねら</rt></ruby>いだよ。<ruby>人<rt>ひと</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えると<ruby>自分<rt>じぶん</rt></ruby>の<ruby>理解<rt>りかい</rt></ruby>も<ruby>深<rt>ふか</rt></ruby>まる。<br>*(Đó chính là chủ ý. Dạy người khác thì hiểu của mình cũng sâu hơn.)* |
| Hùng | <ruby>次回<rt>じかい</rt></ruby>は<ruby>木曜<rt>もくよう</rt></ruby>でいいか。<br>*(Buổi sau thứ năm được không.)* |
| Thức | いいよ。<ruby>各自<rt>かくじ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby><ruby>分<rt>ぶん</rt></ruby>を<ruby>準備<rt>じゅんび</rt></ruby>してこよう。<br>*(Được. Mỗi người chuẩn bị phần của mình tới.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>続<rt>つづ</rt></ruby>ければ<ruby>必<rt>かなら</rt></ruby>ず<ruby>力<rt>ちから</rt></ruby>になる。<br>*(Hiểu rồi. Duy trì được thì chắc chắn thành lực.)* |

---

## Tình huống 6 — Phòng trọ Thức · 21:30, gọi Linh kể chuyện nhóm học (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, hôm nay anh với Hùng học nhóm buổi đầu. Đỡ hơn học một mình nhiều. |
| Linh | Em mừng quá. Có bạn cùng chí hướng thì không thấy đơn độc nữa. |
| Thức | Ừ. Anh giảng phần an toàn cho Hùng, tự nhiên hiểu sâu hơn. |
| Linh | Vậy là dạy người ta lại lợi cho mình. Anh nhớ giữ nhịp đều nhé, đừng dồn. |
| Thức | Anh nhớ. Tuần hai buổi tối với một buổi cuối tuần thôi. Phần còn lại để cho công trường. |
| Linh | Chuẩn rồi. Anh cứ bước đều, em ở đây cổ vũ anh từng tuần. |

---

## Tình huống 7 — Khu nghỉ công trường · 12:10, ôn nhanh giờ nghỉ trưa

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>昼<rt>ひる</rt></ruby>の<ruby>間<rt>あいだ</rt></ruby>に<ruby>一問<rt>いちもん</rt></ruby>だけやらないか。<br>*(Thức, giờ trưa làm một câu thôi không.)* |
| Thức | いいよ。<ruby>短<rt>みじか</rt></ruby>く。<ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>の<ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>は。<br>*(Được. Ngắn thôi. Điểm chú ý khi tháo giàn giáo là gì.)* |
| Hùng | <ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に、<ruby>部材<rt>ぶざい</rt></ruby>を<ruby>落<rt>お</rt></ruby>とさない、<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>を<ruby>入<rt>い</rt></ruby>れない。<br>*(Tháo từ trên xuống theo thứ tự, không làm rơi cấu kiện, không cho người vào phía dưới.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>だ。<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby><ruby>区域<rt>くいき</rt></ruby>の<ruby>設定<rt>せってい</rt></ruby>も<ruby>足<rt>た</rt></ruby>すといい。<br>*(Hoàn hảo. Thêm cả việc lập khu vực cấm vào thì tốt.)* |
| Hùng | あ、そうだ。それも<ruby>言<rt>い</rt></ruby>えるようにしておく。<br>*(À đúng. Cái đó cũng phải nói được.)* |
| Thức | <ruby>昼<rt>ひる</rt></ruby><ruby>一問<rt>いちもん</rt></ruby>、いい<ruby>習慣<rt>しゅうかん</rt></ruby>だな。<br>*(Trưa một câu, thói quen hay đấy.)* |

---

## Tình huống 8 — Phòng trọ · 19:45, Thức giảng quản lý tiến độ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>今日<rt>きょう</rt></ruby>は<ruby>工程<rt>こうてい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>だ。<ruby>工程表<rt>こうていひょう</rt></ruby>は<ruby>計画<rt>けいかく</rt></ruby>と<ruby>実績<rt>じっせき</rt></ruby>を<ruby>比<rt>くら</rt></ruby>べる<ruby>道具<rt>どうぐ</rt></ruby>だ。<br>*(Hôm nay quản lý tiến độ. Bảng tiến độ là công cụ so sánh kế hoạch với thực tế.)* |
| Hùng | <ruby>遅<rt>おく</rt></ruby>れが<ruby>出<rt>で</rt></ruby>たら<ruby>工程表<rt>こうていひょう</rt></ruby>でどう<ruby>判断<rt>はんだん</rt></ruby>する。<br>*(Khi có chậm trễ thì nhìn bảng tiến độ phán đoán thế nào.)* |
| Thức | <ruby>差<rt>さ</rt></ruby>がどこで<ruby>生<rt>しょう</rt></ruby>じたか<ruby>見<rt>み</rt></ruby>て、<ruby>後工程<rt>あとこうてい</rt></ruby>への<ruby>影響<rt>えいきょう</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む。<br>*(Xem chênh lệch phát sinh ở đâu, đọc ảnh hưởng tới công đoạn sau.)* |
| Hùng | <ruby>影響<rt>えいきょう</rt></ruby>が<ruby>大<rt>おお</rt></ruby>きいときは。<br>*(Khi ảnh hưởng lớn thì sao.)* |
| Thức | <ruby>人員<rt>じんいん</rt></ruby><ruby>増強<rt>ぞうきょう</rt></ruby>か<ruby>作業<rt>さぎょう</rt></ruby><ruby>順序<rt>じゅんじょ</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>し、<ruby>監督<rt>かんとく</rt></ruby>と<ruby>調整<rt>ちょうせい</rt></ruby>する。<br>*(Cân nhắc tăng người hoặc đổi thứ tự công việc, rồi điều chỉnh với giám sát.)* |
| Hùng | <ruby>現場<rt>げんば</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>だから<ruby>説得力<rt>せっとくりょく</rt></ruby>があるな。<br>*(Chuyện công trường nên nghe thuyết phục thật.)* |

---

## Tình huống 9 — Phòng trọ · 20:30, Hùng giảng quản lý chất lượng

| Vai | Lời thoại |
|---|---|
| Hùng | <ruby>品質<rt>ひんしつ</rt></ruby><ruby>管理<rt>かんり</rt></ruby>は、<ruby>決<rt>き</rt></ruby>められた<ruby>基準<rt>きじゅん</rt></ruby>どおりに<ruby>施工<rt>せこう</rt></ruby>されているか<ruby>確<rt>たし</rt></ruby>かめることだ。<br>*(Quản lý chất lượng là kiểm xem thi công có đúng tiêu chuẩn quy định không.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby>でいうと<ruby>何<rt>なに</rt></ruby>を<ruby>確<rt>たし</rt></ruby>かめる。<br>*(Với giàn giáo thì kiểm cái gì.)* |
| Hùng | <ruby>緊結<rt>きんけつ</rt></ruby>の<ruby>確実<rt>かくじつ</rt></ruby>さ、<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>、<ruby>手<rt>て</rt></ruby>すりの<ruby>高<rt>たか</rt></ruby>さなどだ。<br>*(Độ chắc của các mối nối, cố định ván sàn, chiều cao tay vịn, v.v.)* |
| Thức | それは<ruby>点検<rt>てんけん</rt></ruby><ruby>表<rt>ひょう</rt></ruby>で<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確認<rt>かくにん</rt></ruby>してるな。<br>*(Cái đó thì kiểm từng cái trên bảng kiểm tra.)* |
| Hùng | そう。<ruby>記録<rt>きろく</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すことが<ruby>品質<rt>ひんしつ</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>になる。<br>*(Đúng. Lưu vào hồ sơ chính là chứng minh chất lượng.)* |
| Thức | <ruby>記録<rt>きろく</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さ、よく<ruby>分<rt>わ</rt></ruby>かった。<br>*(Tầm quan trọng của hồ sơ, mình hiểu rõ rồi.)* |

---

## Tình huống 10 — Công trường · 8:00, áp dụng điều ôn vào KY thực tế

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>のKYを<ruby>始<rt>はじ</rt></ruby>めます。<ruby>今日<rt>きょう</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>で<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ないのはどこですか。<br>*(Bắt đầu KY hôm nay. Việc nguy hiểm nhất hôm nay là chỗ nào.)* |
| Nam | <ruby>三層目<rt>さんそうめ</rt></ruby>の<ruby>組立<rt>くみたて</rt></ruby>で、<ruby>足元<rt>あしもと</rt></ruby>がまだ<ruby>不安定<rt>ふあんてい</rt></ruby>です。<br>*(Lắp tầng thứ ba, chỗ đứng còn chưa vững ạ.)* |
| Thức | いい<ruby>指摘<rt>してき</rt></ruby>だ。<ruby>対策<rt>たいさく</rt></ruby>は。<br>*(Chỉ ra hay đấy. Biện pháp là gì.)* |
| Nam | <ruby>先行<rt>せんこう</rt></ruby><ruby>手<rt>て</rt></ruby>すりを<ruby>必<rt>かなら</rt></ruby>ず<ruby>掛<rt>か</rt></ruby>けてから<ruby>上<rt>あ</rt></ruby>がります。<br>*(Nhất định gài tay vịn lắp trước rồi mới leo lên ạ.)* |
| Thức | そのとおり。<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>します。<ruby>危険<rt>きけん</rt></ruby><ruby>予知<rt>よち</rt></ruby>は<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>すことが<ruby>大事<rt>だいじ</rt></ruby>です。<br>*(Đúng vậy. Cả tổ cùng chia sẻ. Dự báo nguy hiểm phải nói thành tiếng mới quan trọng.)* |
| Nam | はい、<ruby>復唱<rt>ふくしょう</rt></ruby>します。<br>*(Vâng, em nhắc lại ạ.)* |

---

## Tình huống 11 — Phòng trọ · 19:45, luyện vấn đáp giả định

| Vai | Lời thoại |
|---|---|
| Hùng | <ruby>今日<rt>きょう</rt></ruby>は<ruby>口頭<rt>こうとう</rt></ruby><ruby>試問<rt>しもん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>をしよう。<ruby>俺<rt>おれ</rt></ruby>が<ruby>試験官<rt>しけんかん</rt></ruby><ruby>役<rt>やく</rt></ruby>だ。<br>*(Hôm nay luyện vấn đáp. Mình đóng vai giám khảo.)* |
| Thức | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ cậu.)* |
| Hùng | あなたは<ruby>職長<rt>しょくちょう</rt></ruby>として、<ruby>新人<rt>しんじん</rt></ruby>に<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>をどう<ruby>行<rt>おこな</rt></ruby>いますか。<br>*(Với tư cách 職長, anh tiến hành giáo dục an toàn cho người mới thế nào.)* |
| Thức | まず<ruby>作業<rt>さぎょう</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>し、<ruby>実演<rt>じつえん</rt></ruby>して<ruby>見<rt>み</rt></ruby>せ、<ruby>本人<rt>ほんにん</rt></ruby>にやらせて<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Trước hết giải thích chỗ nguy hiểm, làm mẫu cho xem, để người đó làm rồi kiểm tra.)* |
| Hùng | いい<ruby>答<rt>こた</rt></ruby>えだ。<ruby>具体<rt>ぐたい</rt></ruby><ruby>例<rt>れい</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つ<ruby>足<rt>た</rt></ruby>すともっと<ruby>良<rt>よ</rt></ruby>くなる。<br>*(Trả lời tốt. Thêm một ví dụ cụ thể thì còn hay hơn.)* |
| Thức | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>足場<rt>あしば</rt></ruby><ruby>昇降<rt>しょうこう</rt></ruby>の<ruby>例<rt>れい</rt></ruby>を<ruby>添<rt>そ</rt></ruby>えるよ。<br>*(Hiểu rồi. Mình thêm ví dụ lên xuống giàn giáo.)* |

---

## Tình huống 12 — Phòng trọ · 20:20, Hùng nản, Thức động viên

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>正直<rt>しょうじき</rt></ruby><ruby>法令<rt>ほうれい</rt></ruby>の<ruby>暗記<rt>あんき</rt></ruby>がきつい。<ruby>頭<rt>あたま</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>らない。<br>*(Thức, thật ra học thuộc pháp luật mệt quá. Không lưu lại trong đầu.)* |
| Thức | <ruby>暗記<rt>あんき</rt></ruby>しようとするからだよ。<ruby>現場<rt>げんば</rt></ruby>の<ruby>場面<rt>ばめん</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけてみろ。<br>*(Tại cậu cố học thuộc đấy. Thử gắn với cảnh ở công trường xem.)* |
| Hùng | <ruby>場面<rt>ばめん</rt></ruby>と、か。<br>*(Gắn với cảnh à.)* |
| Thức | <ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>の<ruby>規定<rt>きてい</rt></ruby>は、<ruby>毎朝<rt>まいあさ</rt></ruby>お<ruby>前<rt>まえ</rt></ruby>が<ruby>安全帯<rt>あんぜんたい</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けてる<ruby>姿<rt>すがた</rt></ruby>そのものだろう。<br>*(Quy định từ hai mét trở lên chính là hình ảnh sáng nào cậu cũng móc dây an toàn đó thôi.)* |
| Hùng | …そう<ruby>考<rt>かんが</rt></ruby>えると<ruby>確<rt>たし</rt></ruby>かに<ruby>忘<rt>わす</rt></ruby>れにくい。<br>*(…Nghĩ vậy thì đúng là khó quên.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>たちには<ruby>現場<rt>げんば</rt></ruby>という<ruby>強<rt>つよ</rt></ruby>みがある。それを<ruby>使<rt>つか</rt></ruby>おう。<br>*(Bọn mình có điểm mạnh là công trường. Dùng nó đi.)* |

---

## Tình huống 13 — Khu nghỉ · 12:10, Nam tò mò hỏi về 2号

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>って、そんなに<ruby>難<rt>むずか</rt></ruby>しいんですか。<br>*(Anh Thức, 特定技能2号 khó tới vậy ạ?)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しいというより、<ruby>現場<rt>げんば</rt></ruby>を<ruby>仕切<rt>しき</rt></ruby>れる<ruby>力<rt>ちから</rt></ruby>があるか<ruby>問<rt>と</rt></ruby>われるんだ。<br>*(Không hẳn khó, mà là hỏi có đủ năng lực điều hành công trường không.)* |
| Nam | <ruby>僕<rt>ぼく</rt></ruby>もいつか<ruby>挑戦<rt>ちょうせん</rt></ruby>できますか。<br>*(Em cũng có thể thử sức một ngày nào đó không ạ?)* |
| Thức | できるよ。<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>積<rt>つ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げれば、<ruby>道<rt>みち</rt></ruby>はつながっている。<br>*(Được chứ. Tích lũy việc bây giờ một cách cẩn thận thì con đường nối liền.)* |
| Nam | <ruby>励<rt>はげ</rt></ruby>みになります。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em được tiếp sức. Em sẽ cố gắng ạ.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い<ruby>前<rt>まえ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>もう。<br>*(Cả hai cùng tiến lên nhé.)* |

---

## Tình huống 14 — Phòng trọ · 19:45, đo tiến bộ giữa kỳ

| Vai | Lời thoại |
|---|---|
| Thức | フン、<ruby>始<rt>はじ</rt></ruby>めて<ruby>三週間<rt>さんしゅうかん</rt></ruby>だ。<ruby>手応<rt>てごた</rt></ruby>えはどうだ。<br>*(Hùng, bắt đầu được ba tuần rồi. Cảm giác thế nào.)* |
| Hùng | <ruby>最初<rt>さいしょ</rt></ruby>より<ruby>用語<rt>ようご</rt></ruby>がすっと<ruby>出<rt>で</rt></ruby>るようになった。<br>*(Thuật ngữ bật ra nhanh hơn lúc đầu.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>説明<rt>せつめい</rt></ruby>が<ruby>整<rt>ととの</rt></ruby>ってきた。<ruby>口頭<rt>こうとう</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>効<rt>き</rt></ruby>いてる。<br>*(Mình cũng diễn đạt gọn hơn. Luyện vấn đáp có tác dụng.)* |
| Hùng | このまま<ruby>続<rt>つづ</rt></ruby>ければ<ruby>模試<rt>もし</rt></ruby>で<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るかな。<br>*(Cứ thế này thì đề mẫu có ra kết quả không nhỉ.)* |
| Thức | <ruby>模試<rt>もし</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby><ruby>受<rt>う</rt></ruby>けてみよう。<ruby>現在<rt>げんざい</rt></ruby><ruby>地<rt>ち</rt></ruby>を<ruby>知<rt>し</rt></ruby>るのが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Đề mẫu tuần sau thử làm. Biết mình đang ở đâu là quan trọng.)* |
| Hùng | <ruby>怖<rt>こわ</rt></ruby>いけど<ruby>受<rt>う</rt></ruby>けてみる。<ruby>逃<rt>に</rt></ruby>げてもしょうがない。<br>*(Hơi sợ nhưng cứ làm. Trốn cũng chẳng giải quyết gì.)* |

---

## Tình huống 15 — Công trường · 15:00, 斉藤 hỏi thăm tiến bộ ôn

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、フンと<ruby>組<rt>く</rt></ruby>んで<ruby>勉強<rt>べんきょう</rt></ruby>しているそうだな。<br>*(Thức, nghe nói em với Hùng kết nhóm học.)* |
| Thức | はい。お<ruby>互<rt>たが</rt></ruby>いに<ruby>説明<rt>せつめい</rt></ruby>し<ruby>合<rt>あ</rt></ruby>うと<ruby>理解<rt>りかい</rt></ruby>が<ruby>深<rt>ふか</rt></ruby>まります。<br>*(Vâng. Giải thích cho nhau thì hiểu sâu hơn ạ.)* |
| 斉藤職長 | いい<ruby>方法<rt>ほうほう</rt></ruby>だ。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>むより<ruby>続<rt>つづ</rt></ruby>く。<br>*(Cách hay. Hơn ôm một mình, duy trì được lâu.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>言葉<rt>ことば</rt></ruby>にする<ruby>練習<rt>れんしゅう</rt></ruby>にもなっています。<br>*(Cũng là luyện diễn đạt kinh nghiệm công trường thành lời ạ.)* |
| 斉藤職長 | それがまさに<ruby>二号<rt>にごう</rt></ruby>で<ruby>問<rt>と</rt></ruby>われる<ruby>力<rt>ちから</rt></ruby>だ。<ruby>方向<rt>ほうこう</rt></ruby>は<ruby>合<rt>あ</rt></ruby>っている。<br>*(Đó đúng là năng lực 2号 hỏi. Hướng đi đúng rồi.)* |
| Thức | ありがとうございます。<ruby>自信<rt>じしん</rt></ruby>になります。<br>*(Cảm ơn anh. Em thêm tự tin ạ.)* |

---

## Tình huống 16 — Phòng trọ · 19:45, chia nhỏ mục tiêu tuần tới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>来週<rt>らいしゅう</rt></ruby>は<ruby>模試<rt>もし</rt></ruby><ruby>週<rt>しゅう</rt></ruby>だ。それまでに<ruby>弱<rt>よわ</rt></ruby>いところを<ruby>一<rt>ひと</rt></ruby>つ<ruby>潰<rt>つぶ</rt></ruby>そう。<br>*(Tuần sau là tuần đề mẫu. Trước đó dẹp một điểm yếu.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>は<ruby>工程<rt>こうてい</rt></ruby><ruby>管理<rt>かんり</rt></ruby>が<ruby>弱<rt>よわ</rt></ruby>い。そこを<ruby>集中<rt>しゅうちゅう</rt></ruby>する。<br>*(Mình yếu quản lý tiến độ. Tập trung chỗ đó.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>は<ruby>法令<rt>ほうれい</rt></ruby>の<ruby>用語<rt>ようご</rt></ruby>がまだ<ruby>曖昧<rt>あいまい</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>に<ruby>解説<rt>かいせつ</rt></ruby>してもらいたい。<br>*(Mình thuật ngữ pháp luật còn mơ hồ. Muốn nhờ cậu giảng.)* |
| Hùng | いいよ。お<ruby>互<rt>たが</rt></ruby>いの<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>埋<rt>う</rt></ruby>め<ruby>合<rt>あ</rt></ruby>おう。<br>*(Được. Bù điểm yếu cho nhau.)* |
| Thức | <ruby>目標<rt>もくひょう</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つに<ruby>絞<rt>しぼ</rt></ruby>ると<ruby>達成<rt>たっせい</rt></ruby>しやすい。<br>*(Gói mục tiêu vào một thì dễ đạt.)* |
| Hùng | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>に<ruby>備<rt>そな</rt></ruby>えよう。<br>*(Hiểu rồi. Chuẩn bị cho tuần sau.)* |

---

## Tình huống 17 — Phòng trọ Thức · 21:20, Linh động viên trước tuần đề mẫu (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, tuần sau anh với Hùng làm đề mẫu lần đầu. Hơi hồi hộp. |
| Linh | Đề mẫu là để biết mình đang ở đâu thôi mà, đâu phải thi thật. Anh đừng căng. |
| Thức | Ừ, anh biết. Nhưng nếu điểm thấp chắc cũng buồn. |
| Linh | Điểm thấp thì biết chỗ cần sửa, càng tốt chứ. Anh cứ làm hết sức, kết quả sao cũng được. |
| Thức | Em nói nhẹ mà trúng ghê. Anh thấy vững hơn rồi. |
| Linh | Em luôn nghe anh kể mà. Làm xong anh gọi em ngay nhé. |

---

## Tình huống 18 — Công trường · 8:00, Thức điều hành KY tự tin hơn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>のKYです。<ruby>作業<rt>さぎょう</rt></ruby>ごとに<ruby>危険<rt>きけん</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby>を<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>言<rt>い</rt></ruby>ってください。<br>*(KY hôm nay. Mỗi việc nêu một nguy hiểm và một biện pháp.)* |
| Nam | <ruby>資材<rt>しざい</rt></ruby><ruby>揚重<rt>ようじゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>落下<rt>らっか</rt></ruby><ruby>注意<rt>ちゅうい</rt></ruby>。<ruby>下<rt>した</rt></ruby>に<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>です。<br>*(Khi cẩu vật tư lên, chú ý rơi. Cấm vào phía dưới ạ.)* |
| 近藤先輩 | <ruby>強風<rt>きょうふう</rt></ruby><ruby>時<rt>じ</rt></ruby>は<ruby>揚重<rt>ようじゅう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>やな。<br>*(Khi gió mạnh thì dừng cẩu nhỉ.)* |
| Thức | そのとおりです。<ruby>判断<rt>はんだん</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>を<ruby>全員<rt>ぜんいん</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Đúng vậy. Cả tổ cùng chia sẻ tiêu chí phán đoán.)* |
| Nam | <ruby>説明<rt>せつめい</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすくなりましたね、トゥックさん。<br>*(Anh giải thích dễ hiểu hơn rồi đấy, anh Thức.)* |
| Thức | <ruby>勉強<rt>べんきょう</rt></ruby>のおかげかな。<ruby>言葉<rt>ことば</rt></ruby>にする<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>現場<rt>げんば</rt></ruby>でも<ruby>役立<rt>やくだ</rt></ruby>つ。<br>*(Chắc nhờ học. Luyện diễn đạt thành lời cũng có ích ở công trường.)* |

---

## Tình huống 19 — Phòng trọ · 21:00, tổng kết tháng học nhóm

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>続<rt>つづ</rt></ruby>いたな。<ruby>正直<rt>しょうじき</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>なら<ruby>無理<rt>むり</rt></ruby>だった。<br>*(Thức, duy trì được một tháng rồi. Thật ra một mình mình không nổi.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>もだ。お<ruby>互<rt>たが</rt></ruby>いがいたから<ruby>休<rt>やす</rt></ruby>めなかった。<br>*(Mình cũng vậy. Có nhau nên không dám nghỉ.)* |
| Hùng | この<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>本番<rt>ほんばん</rt></ruby>まで<ruby>行<rt>い</rt></ruby>こう。<br>*(Cứ đà này tới ngày thi.)* |
| Thức | <ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くても、やめないと<ruby>約束<rt>やくそく</rt></ruby>しよう。<br>*(Đề mẫu có tệ cũng hứa không bỏ.)* |
| Hùng | <ruby>約束<rt>やくそく</rt></ruby>だ。<ruby>結果<rt>けっか</rt></ruby>より<ruby>続<rt>つづ</rt></ruby>けることだ。<br>*(Hứa đấy. Quan trọng là duy trì hơn kết quả.)* |
| Thức | <ruby>二人<rt>ふたり</rt></ruby>なら<ruby>続<rt>つづ</rt></ruby>けられる。<br>*(Hai đứa thì duy trì được.)* |

---

## Tình huống 20 — Phòng trọ Thức · 21:40, gọi Linh khép tháng (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, nhóm học của anh với Hùng tròn một tháng rồi. Không buổi nào bỏ. |
| Linh | Giỏi thật đó. Hai anh em giữ nhau lại được, quý lắm. |
| Thức | Ừ. Tuần sau làm đề mẫu. Bọn anh hứa với nhau dù điểm thế nào cũng không bỏ. |
| Linh | Lời hứa đó hay đó anh. Kết quả chỉ là cột mốc, đi tiếp mới là điều quan trọng. |
| Thức | Em cứ nói nhẹ vậy mà anh vững hẳn. Cảm ơn em đã theo anh từng tuần. |
| Linh | Em thích nghe anh kể mà. Làm đề xong anh gọi em liền nha. |

---

## Đọng lại

Tháng thứ hai, Thức và Hùng biến việc ôn thi đơn độc thành một nhóm học có kỷ luật: chín mươi phút mỗi buổi, chia chủ đề, giảng lại cho nhau, kiểm tra chéo, luyện cả vấn đáp giả định. Điều bất ngờ là khi giảng phần an toàn cho Hùng, chính Thức hiểu sâu hơn — và khi gắn điều khoản pháp luật với hình ảnh quen thuộc mỗi sáng móc dây an toàn, Hùng thôi học vẹt. Họ phát hiện điểm mạnh lớn nhất của mình không phải trí nhớ mà là kinh nghiệm công trường thật, và cách diễn đạt nó thành lời chính là thứ 2号評価試験 đòi hỏi. Trước tuần làm đề mẫu, hai người hứa với nhau một điều giản dị: điểm thế nào cũng không bỏ cuộc. Linh, từ xa, vẫn là người tiếp sức đều đặn mỗi tuần.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 危険予知 | きけんよち | dự báo nguy hiểm (hoạt động KY) |
> | 口頭試問 | こうとうしもん | vấn đáp, thi miệng |
> | 労働安全衛生法 | ろうどうあんぜんえいせいほう | Luật an toàn vệ sinh lao động |
> | 墜落防止措置 | ついらくぼうしそち | biện pháp chống rơi ngã |
> | 工程表 | こうていひょう | bảng tiến độ thi công |
> | 後工程 | あとこうてい | công đoạn phía sau |
> | 品質管理 | ひんしつかんり | quản lý chất lượng |
> | 緊結 | きんけつ | mối nối siết chặt (giàn giáo) |
> | 立入禁止区域 | たちいりきんしくいき | khu vực cấm vào |
> | 復唱 | ふくしょう | nhắc lại để xác nhận |
> | 揚重 | ようじゅう | cẩu nâng vật tư |
> | 挽回策 | ばんかいさく | phương án gỡ lại (tiến độ) |
> | 弱点 | じゃくてん | điểm yếu |
> | 模試 | もし | đề thi mẫu, thi thử |
> | 手応え | てごたえ | cảm giác hồi đáp, độ chắc tay |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000004, 800000038, NULL, 'markdown_book', 'T4. Đề mẫu điểm thấp — khủng hoảng, 親方 động viên (模試危機)', '# Sách kỹ năng đặc định xây dựng · T4. Đề mẫu điểm thấp — khủng hoảng, 親方 động viên (模試危機)

> **Mục tiêu nhân vật:** Thức làm đề mẫu 2号評価試験 và bị điểm thấp ở phần vấn đáp, rơi vào khủng hoảng nghi ngờ bản thân. Học mẫu câu nghiệp vụ phân tích kết quả đề mẫu, mẫu câu thừa nhận điểm yếu, và mẫu câu được 親方・斉藤 động viên — mặt tối thật nhưng dẫn tới điều chỉnh, không bi lụy.

---

## Bối cảnh

Tháng 7 năm 2031. Sau một tháng học nhóm, Thức và Hùng làm đề mẫu 2号評価試験 do trung tâm luyện thi tổ chức. Thức làm tốt phần lý thuyết nhưng phần vấn đáp mô phỏng vai 職長 bị điểm thấp bất ngờ — em diễn đạt rời rạc, không theo trình tự. Đây là cú sốc giữa chặng, kéo theo nghi ngờ bản thân. Chương này tập trung mẫu câu phân tích kết quả đề mẫu, thừa nhận điểm yếu một cách chuyên nghiệp, và nhận động viên từ 親方・斉藤 để điều chỉnh cách ôn. *(Nội dung 特定技能2号評価試験 trong sách theo quy định tại thời điểm biên soạn 2026.)*

---

## Tình huống 1 — Trung tâm luyện thi · 9:00, trước khi làm đề mẫu

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、いよいよ<ruby>模試<rt>もし</rt></ruby>だ。<ruby>緊張<rt>きんちょう</rt></ruby>するな。<br>*(Thức, đề mẫu tới rồi. Hồi hộp ghê.)* |
| Thức | <ruby>本番<rt>ほんばん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>おう。<ruby>力<rt>ちから</rt></ruby><ruby>試<rt>だめ</rt></ruby>しだ。<br>*(Cứ coi là tập dượt cho ngày thi. Thử sức thôi.)* |
| Hùng | <ruby>学科<rt>がっか</rt></ruby>と<ruby>口頭<rt>こうとう</rt></ruby>、<ruby>両方<rt>りょうほう</rt></ruby>あるんだよな。<br>*(Cả lý thuyết và vấn đáp, cả hai phải không.)* |
| Thức | そうだ。<ruby>口頭<rt>こうとう</rt></ruby>は<ruby>職長<rt>しょくちょう</rt></ruby><ruby>役<rt>やく</rt></ruby>で<ruby>受<rt>う</rt></ruby>け<ruby>答<rt>こた</rt></ruby>えする<ruby>形式<rt>けいしき</rt></ruby>だ。<br>*(Đúng. Phần vấn đáp là hỏi đáp trong vai 職長.)* |
| Hùng | <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて、<ruby>順<rt>じゅん</rt></ruby>を<ruby>追<rt>お</rt></ruby>って<ruby>話<rt>はな</rt></ruby>そう。<br>*(Bình tĩnh, nói theo từng bước.)* |
| Thức | (sửa) <ruby>結果<rt>けっか</rt></ruby>より<ruby>現在<rt>げんざい</rt></ruby><ruby>地<rt>ち</rt></ruby>を<ruby>知<rt>し</rt></ruby>るためだ。<ruby>行<rt>い</rt></ruby>こう。<br>*(Hơn kết quả là để biết mình đang ở đâu. Đi nào.)* |

---

## Tình huống 2 — Phòng thi mô phỏng · 9:30, phần vấn đáp căng thẳng

| Vai | Lời thoại |
|---|---|
| 試験官役 | あなたは<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>です。<ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしますか。<br>*(Anh là 職長 lắp giàn giáo. Trước khi bắt đầu làm, anh làm gì.)* |
| Thức | …えっと、<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>と、<ruby>地盤<rt>じばん</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、それから…KYを…<br>*(…À, xác nhận an toàn, rồi xem nền, rồi… KY thì…)* |
| 試験官役 | <ruby>順序<rt>じゅんじょ</rt></ruby>を<ruby>整理<rt>せいり</rt></ruby>して<ruby>説明<rt>せつめい</rt></ruby>してください。<br>*(Sắp xếp thứ tự rồi giải thích.)* |
| Thức | すみません、もう<ruby>一度<rt>いちど</rt></ruby>…まず<ruby>図面<rt>ずめん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、<ruby>次<rt>つぎ</rt></ruby>に<ruby>地盤<rt>じばん</rt></ruby>、その<ruby>後<rt>あと</rt></ruby>KY…<br>*(Xin lỗi, một lần nữa… trước hết xem bản vẽ, tiếp nền, sau đó KY…)* |
| 試験官役 | はい、<ruby>時間<rt>じかん</rt></ruby>です。<ruby>次<rt>つぎ</rt></ruby>の<ruby>設問<rt>せつもん</rt></ruby>へ。<br>*(Vâng, hết giờ. Sang câu tiếp.)* |
| Thức | (trong lòng) …うまく<ruby>言<rt>い</rt></ruby>えなかった。<br>*(…Mình nói không trôi.)* |

---

## Tình huống 3 — Sảnh trung tâm · 11:30, ra khỏi phòng thi

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、どうだった。<br>*(Thức, thế nào.)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>はまだしも、<ruby>口頭<rt>こうとう</rt></ruby>がぼろぼろだった。<br>*(Lý thuyết còn được, vấn đáp thì be bét.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>も<ruby>口頭<rt>こうとう</rt></ruby>は<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になった。<br>*(Mình cũng vấn đáp trắng đầu luôn.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>やってることなのに、<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てこなかった。<br>*(Việc ngày nào cũng làm mà lời không ra được.)* |
| Hùng | <ruby>緊張<rt>きんちょう</rt></ruby>と<ruby>時間<rt>じかん</rt></ruby><ruby>制限<rt>せいげん</rt></ruby>が<ruby>効<rt>き</rt></ruby>いたな。<br>*(Hồi hộp với giới hạn thời gian ngấm đòn nhỉ.)* |
| Thức | …<ruby>結果<rt>けっか</rt></ruby>が<ruby>怖<rt>こわ</rt></ruby>いな。<br>*(…Sợ kết quả thật.)* |

---

## Tình huống 4 — Quán cà phê gần trung tâm · 12:30, xem điểm số

| Vai | Lời thoại |
|---|---|
| Hùng | <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>た。…トゥック、<ruby>口頭<rt>こうとう</rt></ruby>が<ruby>低<rt>ひく</rt></ruby>いな。<br>*(Có kết quả rồi. …Thức, vấn đáp thấp đấy.)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby><ruby>圏<rt>けん</rt></ruby>だけど、<ruby>口頭<rt>こうとう</rt></ruby>は<ruby>基準<rt>きじゅん</rt></ruby><ruby>点<rt>てん</rt></ruby>に<ruby>届<rt>とど</rt></ruby>いてない…<br>*(Lý thuyết trong vùng đỗ, nhưng vấn đáp không đạt điểm chuẩn…)* |
| Hùng | <ruby>正直<rt>しょうじき</rt></ruby>、ショックだよな。<br>*(Thật ra sốc nhỉ.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>であれだけやってるのに、なんで<ruby>言<rt>い</rt></ruby>えないんだ…<br>*(Ở công trường làm bằng đó mà sao không nói được…)* |
| Hùng | <ruby>知<rt>し</rt></ruby>ってることと<ruby>説明<rt>せつめい</rt></ruby>することは<ruby>別<rt>べつ</rt></ruby>なのかもな。<br>*(Biết và giải thích chắc là hai chuyện khác nhau.)* |
| Thức | …そうかもしれない。<ruby>少<rt>すこ</rt></ruby>し<ruby>考<rt>かんが</rt></ruby>えさせてくれ。<br>*(…Có lẽ vậy. Cho mình suy nghĩ chút.)* |

---

## Tình huống 5 — Phòng trọ Thức · 21:00, gọi Linh trong tâm trạng xuống (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, đề mẫu hôm nay anh điểm thấp phần vấn đáp. Anh hơi hụt hẫng. |
| Linh | Em nghe giọng anh là biết buồn rồi. Anh kể em nghe đi. |
| Thức | Lý thuyết anh đạt, nhưng phần nói trong vai 職長 thì lắp bắp. Việc ngày nào cũng làm mà không diễn được thành lời. |
| Linh | Anh à, đề mẫu sinh ra chính là để lộ ra chỗ đó mà. Biết sớm còn hơn vỡ ở thi thật. |
| Thức | Ừ... anh hiểu, nhưng vẫn thấy mình kém. |
| Linh | Anh không kém. Anh làm được việc, chỉ là chưa quen nói có trình tự thôi. Cái đó luyện được. Đừng tự trách mình. |

---

## Tình huống 6 — Công trường · 8:00, Thức gượng dẫn 朝礼

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Chào buổi sáng. Xác nhận công việc hôm nay.)* |
| 近藤先輩 | トゥック、<ruby>元気<rt>げんき</rt></ruby>ないな。<ruby>何<rt>なに</rt></ruby>かあったか。<br>*(Thức, không có sức nhỉ. Có chuyện gì à.)* |
| Thức | …<ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>良<rt>よ</rt></ruby>くなくて。すみません、<ruby>仕事<rt>しごと</rt></ruby>には<ruby>影響<rt>えいきょう</rt></ruby><ruby>出<rt>だ</rt></ruby>しません。<br>*(…Kết quả đề mẫu không tốt. Xin lỗi, em sẽ không để ảnh hưởng công việc.)* |
| 近藤先輩 | <ruby>仕事<rt>しごと</rt></ruby>は<ruby>心配<rt>しんぱい</rt></ruby>しとらん。お<ruby>前<rt>まえ</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>が<ruby>心配<rt>しんぱい</rt></ruby>なんや。<br>*(Việc thì không lo. Lo cái mặt cậu kìa.)* |
| Thức | ありがとうございます。<ruby>気<rt>き</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>直<rt>なお</rt></ruby>します。<br>*(Cảm ơn anh. Em chấn chỉnh lại tinh thần.)* |
| 近藤先輩 | <ruby>後<rt>あと</rt></ruby>で<ruby>親方<rt>おやかた</rt></ruby>に<ruby>話<rt>はな</rt></ruby>してみ。あの<ruby>人<rt>ひと</rt></ruby>、ええこと<ruby>言<rt>い</rt></ruby>うで。<br>*(Lát kể với 親方 thử. Ông ấy hay nói câu hay lắm.)* |

---

## Tình huống 7 — Văn phòng · 17:30, Thức tâm sự với 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いいですか。<ruby>模試<rt>もし</rt></ruby>で<ruby>口頭<rt>こうとう</rt></ruby>が<ruby>基準<rt>きじゅん</rt></ruby>に<ruby>届<rt>とど</rt></ruby>きませんでした。<br>*(Sếp, em xin chút thời gian được không. Đề mẫu phần vấn đáp em không đạt chuẩn.)* |
| 谷川親方 | ふん。それで<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んどるんか。<br>*(Hừm. Vì thế mà ỉu xìu à.)* |
| Thức | <ruby>現場<rt>げんば</rt></ruby>でやっていることなのに、<ruby>言<rt>い</rt></ruby>えなかったんです。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>情<rt>なさ</rt></ruby>けなくて。<br>*(Việc làm ở công trường mà em không nói được. Em thấy bản thân tệ.)* |
| 谷川親方 | アホか。<ruby>手<rt>て</rt></ruby>が<ruby>動<rt>うご</rt></ruby>くのと<ruby>口<rt>くち</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>るのは<ruby>別<rt>べつ</rt></ruby>の<ruby>技<rt>わざ</rt></ruby>や。<br>*(Ngốc à. Tay làm được với miệng nói trôi là hai kỹ năng khác nhau.)* |
| Thức | <ruby>別<rt>べつ</rt></ruby>の<ruby>技<rt>わざ</rt></ruby>…ですか。<br>*(Kỹ năng khác… ạ?)* |
| 谷川親方 | そうや。<ruby>模試<rt>もし</rt></ruby>はそれを<ruby>教<rt>おし</rt></ruby>えてくれたんや。<ruby>恥<rt>はじ</rt></ruby>やない、<ruby>収穫<rt>しゅうかく</rt></ruby>や。<br>*(Đúng. Đề mẫu chỉ ra điều đó cho cậu. Không phải xấu hổ, là thu hoạch.)* |

---

## Tình huống 8 — Văn phòng · 17:40, 親方 chỉ cách luyện diễn đạt

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>で、<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>説明<rt>せつめい</rt></ruby>してみい。<br>*(Thức, mỗi sáng họp, thử nói thành tiếng giải thích quy trình.)* |
| Thức | <ruby>朝礼<rt>ちょうれい</rt></ruby>を<ruby>練習<rt>れんしゅう</rt></ruby>の<ruby>場<rt>ば</rt></ruby>にするんですね。<br>*(Biến buổi họp sáng thành chỗ luyện ạ.)* |
| 谷川親方 | そうや。<ruby>仕事<rt>しごと</rt></ruby>と<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けるな。<ruby>現場<rt>げんば</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>の<ruby>練習<rt>れんしゅう</rt></ruby><ruby>台<rt>だい</rt></ruby>や。<br>*(Đúng. Đừng tách việc với học. Công trường là bàn luyện tốt nhất.)* |
| Thức | <ruby>順<rt>じゅん</rt></ruby>を<ruby>追<rt>お</rt></ruby>って、<ruby>毎朝<rt>まいあさ</rt></ruby><ruby>言<rt>い</rt></ruby>う<ruby>習慣<rt>しゅうかん</rt></ruby>をつけます。<br>*(Theo từng bước, em tập thói quen nói mỗi sáng.)* |
| 谷川親方 | <ruby>三<rt>さん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>もやれば<ruby>口<rt>くち</rt></ruby>が<ruby>慣<rt>な</rt></ruby>れる。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えとるんやから、あとは<ruby>口<rt>くち</rt></ruby>を<ruby>慣<rt>な</rt></ruby>らすだけや。<br>*(Làm ba tuần là quen miệng. Cơ thể đã nhớ rồi, còn lại chỉ là tập miệng cho quen.)* |
| Thức | <ruby>救<rt>すく</rt></ruby>われました。やってみます。<br>*(Em được cứu rồi. Em sẽ thử.)* |

---

## Tình huống 9 — Công trường · 8:00, áp dụng — nói trình tự ở 朝礼

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>です。<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>順<rt>じゅん</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<br>*(Hôm nay lắp giàn giáo. Tôi nói quy trình theo thứ tự.)* |
| Thức | <ruby>一<rt>いち</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>地盤<rt>じばん</rt></ruby>と<ruby>敷板<rt>しきいた</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、KY<ruby>活動<rt>かつどう</rt></ruby>。<ruby>四<rt>よん</rt></ruby>、<ruby>建地<rt>たてじ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に<ruby>組立<rt>くみたて</rt></ruby>。<br>*(Một, kiểm bản vẽ. Hai, kiểm nền và tấm lót. Ba, hoạt động KY. Bốn, lắp từ cột đứng theo thứ tự.)* |
| Nam | <ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Thứ tự dễ hiểu ạ.)* |
| Thức | <ruby>言葉<rt>ことば</rt></ruby>にすると<ruby>頭<rt>あたま</rt></ruby>も<ruby>整<rt>ととの</rt></ruby>うな。みなさんも<ruby>復唱<rt>ふくしょう</rt></ruby>してください。<br>*(Diễn thành lời thì đầu cũng gọn. Mọi người nhắc lại đi.)* |
| 近藤先輩 | ええやり<ruby>方<rt>かた</rt></ruby>や。<ruby>班<rt>はん</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>のためにもなる。<br>*(Cách hay đấy. Có lợi cho cả tổ.)* |
| Thức | <ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>仕事<rt>しごと</rt></ruby>の<ruby>役<rt>やく</rt></ruby>にも<ruby>立<rt>た</rt></ruby>ちます。<br>*(Luyện tập cũng có ích cho công việc ạ.)* |

---

## Tình huống 10 — Phòng trọ · 19:45, học nhóm phân tích đề mẫu

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>を<ruby>分析<rt>ぶんせき</rt></ruby>しよう。どこで<ruby>点<rt>てん</rt></ruby>を<ruby>落<rt>お</rt></ruby>とした。<br>*(Thức, phân tích kết quả đề mẫu đi. Mất điểm ở đâu.)* |
| Thức | <ruby>口頭<rt>こうとう</rt></ruby>の「<ruby>手順<rt>てじゅん</rt></ruby><ruby>説明<rt>せつめい</rt></ruby>」と「<ruby>異常<rt>いじょう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>」だ。<ruby>内容<rt>ないよう</rt></ruby>は<ruby>分<rt>わ</rt></ruby>かってるのに<ruby>構成<rt>こうせい</rt></ruby>が<ruby>崩<rt>くず</rt></ruby>れた。<br>*(Phần "giải thích quy trình" và "ứng phó bất thường" trong vấn đáp. Hiểu nội dung mà cấu trúc đổ.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じだ。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>えてなかった。<br>*(Mình cũng vậy. Không nói từ kết luận trước.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby><ruby>先行<rt>せんこう</rt></ruby>、それから<ruby>理由<rt>りゆう</rt></ruby>、<ruby>手順<rt>てじゅん</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>で<ruby>型<rt>かた</rt></ruby>を<ruby>作<rt>つく</rt></ruby>ろう。<br>*(Kết luận trước, rồi lý do, rồi quy trình — lập thành khuôn.)* |
| Hùng | <ruby>型<rt>かた</rt></ruby>があると<ruby>緊張<rt>きんちょう</rt></ruby>しても<ruby>崩<rt>くず</rt></ruby>れにくいな。<br>*(Có khuôn thì hồi hộp cũng khó đổ.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>からこの<ruby>型<rt>かた</rt></ruby>で<ruby>練習<rt>れんしゅう</rt></ruby>しよう。<br>*(Từ giờ luyện theo khuôn này.)* |

---

## Tình huống 11 — Phòng trọ · 20:20, luyện vấn đáp theo khuôn mới

| Vai | Lời thoại |
|---|---|
| Hùng | <ruby>試験官<rt>しけんかん</rt></ruby><ruby>役<rt>やく</rt></ruby>をやる。<ruby>足場<rt>あしば</rt></ruby>に<ruby>異常<rt>いじょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけたら、<ruby>職長<rt>しょくちょう</rt></ruby>としてどうしますか。<br>*(Mình làm giám khảo. Phát hiện bất thường ở giàn giáo, với tư cách 職長 anh làm gì.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、ただちに<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>中止<rt>ちゅうし</rt></ruby>します。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>二次<rt>にじ</rt></ruby><ruby>災害<rt>さいがい</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>です。<br>*(Kết luận, dừng ngay công việc. Lý do là phòng tai nạn thứ phát.)* |
| Thức | <ruby>手順<rt>てじゅん</rt></ruby>は、<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>、<ruby>監督<rt>かんとく</rt></ruby>へ<ruby>報告<rt>ほうこく</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>、<ruby>是正<rt>ぜせい</rt></ruby><ruby>後<rt>ご</rt></ruby><ruby>再開<rt>さいかい</rt></ruby>です。<br>*(Quy trình là cấm vào, báo cáo giám sát, điều tra nguyên nhân, khắc phục xong mới làm lại.)* |
| Hùng | <ruby>完璧<rt>かんぺき</rt></ruby>だ。<ruby>型<rt>かた</rt></ruby>どおりで<ruby>分<rt>わ</rt></ruby>かりやすい。<br>*(Hoàn hảo. Đúng khuôn nên dễ hiểu.)* |
| Thức | <ruby>型<rt>かた</rt></ruby>があると<ruby>言葉<rt>ことば</rt></ruby>が<ruby>出<rt>で</rt></ruby>てくる。さっきと<ruby>別人<rt>べつじん</rt></ruby>みたいだ。<br>*(Có khuôn thì lời ra được. Khác hẳn lúc nãy.)* |
| Hùng | <ruby>模試<rt>もし</rt></ruby>で<ruby>気<rt>き</rt></ruby>づけてよかったな。<br>*(May mà đề mẫu nhận ra sớm.)* |

---

## Tình huống 12 — Công trường · 15:00, 斉藤 hỏi thăm sau cú sốc

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>模試<rt>もし</rt></ruby>のことは<ruby>聞<rt>き</rt></ruby>いた。<ruby>立<rt>た</rt></ruby>ち<ruby>直<rt>なお</rt></ruby>れたか。<br>*(Thức, chuyện đề mẫu tôi nghe rồi. Gượng lại được chưa.)* |
| Thức | はい。<ruby>親方<rt>おやかた</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で、<ruby>手<rt>て</rt></ruby>と<ruby>口<rt>くち</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>の<ruby>技<rt>わざ</rt></ruby>だと<ruby>気<rt>き</rt></ruby>づきました。<br>*(Vâng. Nhờ lời 親方, em nhận ra tay và miệng là hai kỹ năng khác nhau.)* |
| 斉藤職長 | いい<ruby>気<rt>き</rt></ruby>づきだ。<ruby>説明<rt>せつめい</rt></ruby><ruby>力<rt>りょく</rt></ruby>は<ruby>練習<rt>れんしゅう</rt></ruby>で<ruby>必<rt>かなら</rt></ruby>ず<ruby>伸<rt>の</rt></ruby>びる。<br>*(Nhận ra tốt. Năng lực diễn đạt luyện thì chắc chắn lên.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby><ruby>先行<rt>せんこう</rt></ruby>の<ruby>型<rt>かた</rt></ruby>を<ruby>作<rt>つく</rt></ruby>って<ruby>練習<rt>れんしゅう</rt></ruby>しています。<br>*(Em lập khuôn kết luận trước rồi luyện ạ.)* |
| 斉藤職長 | <ruby>正<rt>ただ</rt></ruby>しい<ruby>方向<rt>ほうこう</rt></ruby>だ。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>分析<rt>ぶんせき</rt></ruby>できる<ruby>者<rt>もの</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>伸<rt>の</rt></ruby>びる。<br>*(Hướng đúng. Người phân tích được thất bại thì chắc chắn tiến.)* |
| Thức | ありがとうございます。<ruby>下<rt>くだ</rt></ruby>を<ruby>向<rt>む</rt></ruby>かずに<ruby>進<rt>すす</rt></ruby>みます。<br>*(Cảm ơn anh. Em không cúi đầu, sẽ tiến tới ạ.)* |

---

## Tình huống 13 — Khu nghỉ · 12:10, Hùng và Thức gượng dậy cùng nhau

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>模試<rt>もし</rt></ruby>のあと、<ruby>正直<rt>しょうじき</rt></ruby><ruby>諦<rt>あきら</rt></ruby>めかけた。<br>*(Thức, sau đề mẫu, thật ra mình suýt bỏ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>もだ。でも<ruby>約束<rt>やくそく</rt></ruby>しただろう、やめないって。<br>*(Mình cũng vậy. Nhưng đã hứa rồi mà, không bỏ.)* |
| Hùng | …したな。お<ruby>前<rt>まえ</rt></ruby>が<ruby>言<rt>い</rt></ruby>うと<ruby>効<rt>き</rt></ruby>くよ。<br>*(…Hứa rồi. Cậu nói thì có hiệu lực.)* |
| Thức | <ruby>模試<rt>もし</rt></ruby>は<ruby>本番<rt>ほんばん</rt></ruby>じゃない。<ruby>弱点<rt>じゃくてん</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてくれた<ruby>味方<rt>みかた</rt></ruby>だ。<br>*(Đề mẫu không phải thi thật. Là đồng minh chỉ ra điểm yếu.)* |
| Hùng | そう<ruby>考<rt>かんが</rt></ruby>えると<ruby>少<rt>すこ</rt></ruby>し<ruby>楽<rt>らく</rt></ruby>になる。<br>*(Nghĩ vậy thì nhẹ ra một chút.)* |
| Thức | あと<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby><ruby>半<rt>はん</rt></ruby>。<ruby>型<rt>かた</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>こう。<br>*(Còn tháng rưỡi. Mài giũa cái khuôn.)* |

---

## Tình huống 14 — Phòng trọ · 20:00, luyện vấn đáp một mình ghi âm

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói, ghi âm) <ruby>設問<rt>せつもん</rt></ruby>、<ruby>工程<rt>こうてい</rt></ruby><ruby>遅延<rt>ちえん</rt></ruby><ruby>時<rt>じ</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>。<br>*(Câu hỏi, ứng phó khi tiến độ chậm.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>を<ruby>把握<rt>はあく</rt></ruby>し<ruby>監督<rt>かんとく</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>、<ruby>挽回<rt>ばんかい</rt></ruby><ruby>策<rt>さく</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Kết luận, nắm nguyên nhân báo cáo giám sát, đề xuất phương án gỡ.)* |
| Thức | (nghe lại) …<ruby>少<rt>すこ</rt></ruby>し<ruby>早口<rt>はやくち</rt></ruby>だな。もう<ruby>一回<rt>いっかい</rt></ruby>、ゆっくり。<br>*(…Hơi nói nhanh. Một lần nữa, chậm thôi.)* |
| Thức | (lại) <ruby>結論<rt>けつろん</rt></ruby>から、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて。…うん、<ruby>今<rt>いま</rt></ruby>のは<ruby>伝<rt>つた</rt></ruby>わる。<br>*(Từ kết luận, bình tĩnh. …Ừ, lần này truyền đạt được.)* |
| Thức | <ruby>録音<rt>ろくおん</rt></ruby>して<ruby>聞<rt>き</rt></ruby>くと<ruby>欠点<rt>けってん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かる。いい<ruby>方法<rt>ほうほう</rt></ruby>だ。<br>*(Ghi âm nghe lại thì thấy nhược điểm. Cách hay.)* |
| Thức | <ruby>毎晩<rt>まいばん</rt></ruby><ruby>三問<rt>さんもん</rt></ruby>ずつ。<ruby>地道<rt>じみち</rt></ruby>に<ruby>続<rt>つづ</rt></ruby>けよう。<br>*(Mỗi tối ba câu. Kiên trì từng chút.)* |

---

## Tình huống 15 — Công trường · 8:00, 朝礼 nói trình tự đã trôi hơn

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>います。<ruby>午前<rt>ごぜん</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby><ruby>搬出<rt>はんしゅつ</rt></ruby>です。<br>*(Chào buổi sáng. Sắp xếp hôm nay tôi nói từ kết luận. Sáng tháo dỡ, chiều vận chuyển ra.)* |
| 近藤先輩 | お、<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>がはっきりしてきたな。<br>*(Ồ, cách nói rõ ràng hẳn ra nhỉ.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと<ruby>伝<rt>つた</rt></ruby>わりやすいです。<ruby>理由<rt>りゆう</rt></ruby>は、<ruby>外装<rt>がいそう</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>の<ruby>都合<rt>つごう</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わせるためです。<br>*(Nói kết luận trước thì dễ truyền đạt. Lý do là để khớp với lịch thợ ốp ngoài.)* |
| Nam | とても<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Rất dễ hiểu ạ.)* |
| Thức | <ruby>練習<rt>れんしゅう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>かな。<ruby>仕事<rt>しごと</rt></ruby>にも<ruby>返<rt>かえ</rt></ruby>ってくる。<br>*(Chắc là thành quả luyện tập. Lại quay về có ích cho công việc.)* |
| 近藤先輩 | <ruby>勉強<rt>べんきょう</rt></ruby>と<ruby>仕事<rt>しごと</rt></ruby>がつながっとるな。ええこっちゃ。<br>*(Học với việc nối liền nhau đấy. Tốt thật.)* |

---

## Tình huống 16 — Văn phòng · 17:30, 親方 ghi nhận sự gượng dậy

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>顔<rt>かお</rt></ruby>が<ruby>戻<rt>もど</rt></ruby>ったな。<br>*(Thức, mặt mũi về lại rồi đấy.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>のおかげです。<ruby>模試<rt>もし</rt></ruby>を<ruby>収穫<rt>しゅうかく</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>えるようになりました。<br>*(Là nhờ sếp. Em đã coi đề mẫu là thu hoạch được rồi ạ.)* |
| 谷川親方 | それや。<ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>使<rt>つか</rt></ruby>えるやつが<ruby>伸<rt>の</rt></ruby>びる。<br>*(Chính nó. Đứa dùng được thất bại thì tiến.)* |
| Thức | <ruby>毎朝<rt>まいあさ</rt></ruby>の<ruby>朝礼<rt>ちょうれい</rt></ruby>と<ruby>夜<rt>よる</rt></ruby>の<ruby>録音<rt>ろくおん</rt></ruby>で<ruby>口<rt>くち</rt></ruby>が<ruby>慣<rt>な</rt></ruby>れてきました。<br>*(Họp sáng và ghi âm tối, miệng quen dần ạ.)* |
| 谷川親方 | <ruby>地道<rt>じみち</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>や。あと<ruby>少<rt>すこ</rt></ruby>し、<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>くなよ。<br>*(Kiên trì là nhất. Còn chút nữa, đừng lơ là.)* |
| Thức | はい、<ruby>最後<rt>さいご</rt></ruby>まで<ruby>走<rt>はし</rt></ruby>り<ruby>切<rt>き</rt></ruby>ります。<br>*(Vâng, em chạy tới đích ạ.)* |

---

## Tình huống 17 — Phòng trọ · 19:45, làm lại đề mẫu mini với Hùng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、ミニ<ruby>模試<rt>もし</rt></ruby>をやってみよう。<ruby>五問<rt>ごもん</rt></ruby>だけ<ruby>時間<rt>じかん</rt></ruby><ruby>計<rt>はか</rt></ruby>って。<br>*(Thức, làm thử đề mẫu mini. Năm câu thôi, bấm giờ.)* |
| Thức | いいね。<ruby>本番<rt>ほんばん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>緊張<rt>きんちょう</rt></ruby><ruby>感<rt>かん</rt></ruby>で。<br>*(Hay đấy. Với cảm giác hồi hộp như thi thật.)* |
| Hùng | (sau khi xong) <ruby>前<rt>まえ</rt></ruby>より<ruby>構成<rt>こうせい</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>してる。<ruby>結論<rt>けつろん</rt></ruby><ruby>先行<rt>せんこう</rt></ruby>が<ruby>身<rt>み</rt></ruby>についたな。<br>*(Cấu trúc ổn hơn trước. Kết luận trước thành thói quen rồi.)* |
| Thức | <ruby>型<rt>かた</rt></ruby>があると<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>にならない。<ruby>大<rt>おお</rt></ruby>きいよ。<br>*(Có khuôn thì đầu không trắng xóa. Lớn lắm.)* |
| Hùng | この<ruby>調子<rt>ちょうし</rt></ruby>なら<ruby>本番<rt>ほんばん</rt></ruby>も<ruby>戦<rt>たたか</rt></ruby>える。<br>*(Đà này thì thi thật cũng đấu được.)* |
| Thức | まだ<ruby>油断<rt>ゆだん</rt></ruby>はしない。でも<ruby>光<rt>ひかり</rt></ruby>は<ruby>見<rt>み</rt></ruby>えてきた。<br>*(Vẫn chưa chủ quan. Nhưng đã thấy ánh sáng.)* |

---

## Tình huống 18 — Công trường · 14:00, xử lý phát sinh, vừa làm vừa diễn đạt

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>連結<rt>れんけつ</rt></ruby>クランプが<ruby>一<rt>ひと</rt></ruby>つ<ruby>緩<rt>ゆる</rt></ruby>んでいます。<br>*(Anh Thức, có một khóa nối bị lỏng ạ.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、その<ruby>区画<rt>くかく</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>止<rt>と</rt></ruby>める。<ruby>理由<rt>りゆう</rt></ruby>は<ruby>落下<rt>らっか</rt></ruby><ruby>危険<rt>きけん</rt></ruby>だ。<br>*(Kết luận, dừng việc khu đó. Lý do là nguy cơ rơi.)* |
| Thức | <ruby>手順<rt>てじゅん</rt></ruby>、<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にして、<ruby>増<rt>ま</rt></ruby>し<ruby>締<rt>じ</rt></ruby>め<ruby>確認<rt>かくにん</rt></ruby>、<ruby>全数<rt>ぜんすう</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>後<ruby>再開<rt>さいかい</rt></ruby>だ。<br>*(Quy trình, cấm vào, siết lại kiểm tra, kiểm toàn bộ xong mới làm tiếp.)* |
| Nam | <ruby>説明<rt>せつめい</rt></ruby>がとても<ruby>明確<rt>めいかく</rt></ruby>です。すぐ<ruby>動<rt>うご</rt></ruby>けます。<br>*(Giải thích rất rõ. Em làm được ngay ạ.)* |
| Thức | <ruby>練習<rt>れんしゅう</rt></ruby>のおかげで<ruby>現場<rt>げんば</rt></ruby>でも<ruby>口<rt>くち</rt></ruby>が<ruby>動<rt>うご</rt></ruby>くようになった。<br>*(Nhờ luyện mà ở công trường miệng cũng nói trôi.)* |
| Nam | <ruby>勉強<rt>べんきょう</rt></ruby>と<ruby>仕事<rt>しごと</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>につながっていますね。<br>*(Học với việc nối liền thật ạ.)* |

---

## Tình huống 19 — Phòng trọ Thức · 21:00, gọi Linh kể đã gượng dậy (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, anh ổn lại rồi. 親方 nói tay làm được với miệng nói trôi là hai kỹ năng khác nhau. |
| Linh | Đúng quá. Vậy là anh không kém, chỉ chưa luyện cái kỹ năng nói thôi. |
| Thức | Ừ. Anh lập một cái khuôn: kết luận trước, rồi lý do, rồi quy trình. Tự nhiên nói trôi hẳn, cả ở công trường. |
| Linh | Tuyệt vời anh. Cú điểm thấp hóa ra lại giúp anh tìm đúng cách. |
| Thức | Đúng vậy. Giờ anh coi đề mẫu là đồng minh chứ không phải kẻ thù nữa. |
| Linh | Em thích cách anh nghĩ. Còn hơn tháng nữa, mình đi tiếp đều đặn anh nhé. |

---

## Tình huống 20 — Phòng trọ · 21:30, Thức tự nhìn lại trước khi ngủ

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) <ruby>模試<rt>もし</rt></ruby>で<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>んだのは<ruby>一日<rt>いちにち</rt></ruby>だけにしよう。<br>*(Buồn vì đề mẫu chỉ để một ngày thôi.)* |
| Thức | <ruby>弱点<rt>じゃくてん</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かったのは<ruby>本番<rt>ほんばん</rt></ruby><ruby>前<rt>まえ</rt></ruby>でよかった。<br>*(Biết điểm yếu trước thi thật là may.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>も<ruby>斉藤<rt>さいとう</rt></ruby>さんもフンも、みんな<ruby>支<rt>ささ</rt></ruby>えてくれた。<br>*(親方, anh Saito, Hùng, mọi người đều đỡ mình.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>じゃない。だから<ruby>続<rt>つづ</rt></ruby>けられる。<br>*(Không một mình. Nên duy trì được.)* |
| Thức | あと<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>。<ruby>型<rt>かた</rt></ruby>を<ruby>磨<rt>みが</rt></ruby>いて、<ruby>本番<rt>ほんばん</rt></ruby>に<ruby>臨<rt>のぞ</rt></ruby>む。<br>*(Còn một tháng. Mài khuôn, bước vào thi thật.)* |
| Thức | <ruby>下<rt>した</rt></ruby>を<ruby>向<rt>む</rt></ruby>くな。<ruby>前<rt>まえ</rt></ruby>だけ<ruby>見<rt>み</rt></ruby>よう。<br>*(Đừng cúi đầu. Chỉ nhìn về phía trước.)* |

---

## Đọng lại

Đề mẫu giáng cho Thức một cú đau giữa chặng: lý thuyết đạt nhưng phần vấn đáp mô phỏng vai 職長 lại be bét, dù đó là việc em làm mỗi ngày. Cú sốc kéo theo nghi ngờ bản thân — điều rất thật ở giai đoạn ôn thi. Nhưng câu nói cộc của 親方 đã xoay chuyển: tay làm được và miệng nói trôi là hai kỹ năng khác nhau, và đề mẫu không phải nỗi xấu hổ mà là thu hoạch. Thức dựng một khuôn diễn đạt — kết luận trước, lý do, rồi quy trình — biến mỗi buổi 朝礼 thành sân luyện và ghi âm tự sửa mỗi tối. Chỉ trong vài tuần, cách nói của em rõ ràng hẳn, có ích ngược lại cho cả công trường. Cú điểm thấp hóa ra là thứ chỉ đúng chỗ cần sửa trước khi thi thật. Quan trọng hơn cả: em không đơn độc — 親方, 斉藤, Hùng và Linh đều đỡ em đứng dậy.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 模試 | もし | đề thi mẫu, thi thử |
> | 設問 | せつもん | câu hỏi (trong đề) |
> | 基準点 | きじゅんてん | điểm chuẩn (để đạt) |
> | 結論先行 | けつろんせんこう | nói kết luận trước |
> | 異常時対応 | いじょうじたいおう | ứng phó khi có bất thường |
> | 二次災害 | にじさいがい | tai nạn thứ phát |
> | 是正 | ぜせい | sự khắc phục, sửa cho đúng |
> | 立入禁止 | たちいりきんし | cấm vào |
> | 増し締め | ましじめ | siết chặt lại thêm |
> | 全数点検 | ぜんすうてんけん | kiểm tra toàn bộ số lượng |
> | 工程遅延 | こうていちえん | chậm trễ tiến độ |
> | 録音 | ろくおん | ghi âm |
> | 構成 | こうせい | cấu trúc, bố cục (lời nói) |
> | 収穫 | しゅうかく | sự thu hoạch, cái được |
> | 立ち直る | たちなおる | gượng dậy, hồi phục |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000005, 800000038, NULL, 'markdown_book', 'T5. Trước thi, sự cố lớn công trường — 職長 Thức xử lý (大事故・職長)', '# Sách kỹ năng đặc định xây dựng · T5. Trước thi, sự cố lớn công trường — 職長 Thức xử lý (大事故・職長)

> **Mục tiêu nhân vật:** Ngay trước kỳ thi, công trường xảy ra sự cố lớn (giàn giáo nghiêng do gió lớn bất ngờ, một thợ suýt rơi) và 職長 Thức phải chỉ huy ứng phó khẩn cấp. Học mẫu câu nghiệp vụ chỉ huy khẩn cấp, dừng việc, sơ tán, báo cáo 監督, điều tra nguyên nhân, lập biện pháp tái phát phòng ngừa — cao trào nghề của series.

---

## Bối cảnh

Cuối tháng 7 năm 2031, còn hai tuần tới kỳ thi 特定技能2号評価試験. Trên công trường nhà ở tập thể, một cơn gió giật mạnh bất ngờ làm một khoảng giàn giáo nghiêng, một thợ trẻ trong tổ suýt rơi nhưng giữ được nhờ dây an toàn. 職長 Thức phải chỉ huy ứng phó khẩn cấp tại chỗ, rồi xử lý toàn bộ quy trình sau sự cố. Đây là cao trào nghề của cả series: tất cả những gì Thức học và ôn được thử thách trong tình huống thật. Chương này tập trung mẫu câu chỉ huy khẩn cấp, báo cáo 監督, điều tra nguyên nhân và lập biện pháp phòng ngừa tái phát. *(Quy trình ứng phó sự cố nêu trong sách mang tính minh họa giáo dục.)*

---

## Tình huống 1 — Công trường · 8:00, 朝礼, dự báo gió mạnh

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>午後<rt>ごご</rt></ruby>から<ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>まる<ruby>予報<rt>よほう</rt></ruby>です。<br>*(Chào buổi sáng. Hôm nay dự báo từ chiều gió mạnh lên.)* |
| 近藤先輩 | <ruby>風速<rt>ふうそく</rt></ruby>はどれくらいや。<br>*(Tốc độ gió khoảng bao nhiêu.)* |
| Thức | <ruby>瞬間<rt>しゅんかん</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>基準<rt>きじゅん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>える<ruby>可能性<rt>かのうせい</rt></ruby>があります。<ruby>高所<rt>こうしょ</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>は<ruby>午前<rt>ごぜん</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>に<ruby>組<rt>く</rt></ruby>みます。<br>*(Có khả năng giật vượt ngưỡng tức thời. Việc trên cao xếp tập trung buổi sáng.)* |
| Nam | <ruby>風<rt>かぜ</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>まったら、どうしますか。<br>*(Gió mạnh lên thì làm thế nào ạ?)* |
| Thức | <ruby>即座<rt>そくざ</rt></ruby>に<ruby>作業<rt>さぎょう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>、<ruby>地上<rt>ちじょう</rt></ruby>に<ruby>退避<rt>たいひ</rt></ruby>です。<ruby>合図<rt>あいず</rt></ruby>は<ruby>笛<rt>ふえ</rt></ruby><ruby>三回<rt>さんかい</rt></ruby>。<br>*(Dừng việc ngay, rút xuống mặt đất. Hiệu lệnh là ba tiếng còi.)* |
| 近藤先輩 | <ruby>明確<rt>めいかく</rt></ruby>でええ<ruby>指示<rt>しじ</rt></ruby>や。<ruby>全員<rt>ぜんいん</rt></ruby><ruby>頭<rt>あたま</rt></ruby>に<ruby>入<rt>い</rt></ruby>れとけよ。<br>*(Chỉ thị rõ ràng tốt. Cả tổ ghi vào đầu đấy.)* |

---

## Tình huống 2 — Công trường · 13:30, gió giật bất ngờ, phát hiện nguy hiểm

| Vai | Lời thoại |
|---|---|
| Nam | (hét) トゥックさん!<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby>が<ruby>揺<rt>ゆ</rt></ruby>れています!<br>*(Anh Thức! Giàn giáo mặt đông đang rung ạ!)* |
| Thức | (lập tức) <ruby>全員<rt>ぜんいん</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby><ruby>中止<rt>ちゅうし</rt></ruby>!<ruby>笛<rt>ふえ</rt></ruby><ruby>三回<rt>さんかい</rt></ruby>!<ruby>地上<rt>ちじょう</rt></ruby>へ<ruby>退避<rt>たいひ</rt></ruby>!<br>*(Toàn bộ dừng việc! Ba tiếng còi! Rút xuống mặt đất!)* |
| 近藤先輩 | <ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>の<ruby>建地<rt>たてじ</rt></ruby>が<ruby>傾<rt>かたむ</rt></ruby>いとる!<ruby>誰<rt>だれ</rt></ruby>か<ruby>上<rt>うえ</rt></ruby>におるか!<br>*(Cột mặt đông nghiêng rồi! Có ai ở trên không!)* |
| Thức | <ruby>三層目<rt>さんそうめ</rt></ruby>にミンがいます!ミン、<ruby>動<rt>うご</rt></ruby>くな!<ruby>安全帯<rt>あんぜんたい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>しろ!<br>*(Tầng ba có Minh! Minh, đừng cử động! Kiểm dây an toàn!)* |
| ミン | フックは<ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby>とも<ruby>掛<rt>か</rt></ruby>かっています!<br>*(Cả hai móc đều đang gài ạ!)* |
| Thức | よし、そのまま<ruby>姿勢<rt>しせい</rt></ruby>を<ruby>低<rt>ひく</rt></ruby>く!<ruby>救出<rt>きゅうしゅつ</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>る!<br>*(Tốt, cứ thế hạ thấp người! Vào quy trình cứu!)* |

---

## Tình huống 3 — Công trường · 13:33, chỉ huy cứu thợ trên giàn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>下<rt>した</rt></ruby>の<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>を<ruby>今<rt>いま</rt></ruby>すぐ。<ruby>半径<rt>はんけい</rt></ruby><ruby>十<rt>じゅう</rt></ruby>メートル<ruby>封鎖<rt>ふうさ</rt></ruby>!<br>*(Anh Kondo, cấm vào phía dưới ngay. Phong tỏa bán kính mười mét!)* |
| 近藤先輩 | <ruby>了解<rt>りょうかい</rt></ruby>!<ruby>誰<rt>だれ</rt></ruby>も<ruby>入<rt>い</rt></ruby>れるな!<br>*(Rõ! Không cho ai vào!)* |
| Thức | ミン、<ruby>傾<rt>かたむ</rt></ruby>いていない<ruby>西側<rt>にしがわ</rt></ruby>の<ruby>建地<rt>たてじ</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>って、ゆっくり<ruby>降<rt>お</rt></ruby>りろ。<br>*(Minh, bám theo cột phía tây không nghiêng, từ từ tụt xuống.)* |
| ミン | はい、フックを<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えながら<ruby>降<rt>お</rt></ruby>ります。<br>*(Vâng, em vừa đổi móc vừa tụt xuống ạ.)* |
| Thức | <ruby>一<rt>ひと</rt></ruby><ruby>段<rt>だん</rt></ruby>ずつでいい。<ruby>慌<rt>あわ</rt></ruby>てるな。<ruby>下<rt>した</rt></ruby>で<ruby>受<rt>う</rt></ruby>ける。<br>*(Từng tầng một thôi. Đừng cuống. Dưới này đón.)* |
| ミン | (xuống tới đất) …<ruby>降<rt>お</rt></ruby>りました。<br>*(…Em xuống rồi ạ.)* |

---

## Tình huống 4 — Công trường · 13:38, xác nhận an toàn toàn tổ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>全員<rt>ぜんいん</rt></ruby><ruby>点呼<rt>てんこ</rt></ruby>!<ruby>名前<rt>なまえ</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ。ナム!<br>*(Điểm danh toàn bộ! Tôi gọi tên. Nam!)* |
| Nam | はい、<ruby>無事<rt>ぶじ</rt></ruby>です!<br>*(Có, em an toàn ạ!)* |
| Thức | ミン!<br>*(Minh!)* |
| ミン | はい、<ruby>無事<rt>ぶじ</rt></ruby>です。<ruby>怪我<rt>けが</rt></ruby>はありません。<br>*(Có, an toàn. Em không bị thương ạ.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>負傷者<rt>ふしょうしゃ</rt></ruby>ゼロ、<ruby>全員<rt>ぜんいん</rt></ruby><ruby>地上<rt>ちじょう</rt></ruby><ruby>退避<rt>たいひ</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Anh Kondo, không người bị thương, xác nhận toàn bộ đã rút xuống đất.)* |
| 近藤先輩 | ようやった。まず<ruby>人<rt>ひと</rt></ruby>や。<ruby>次<rt>つぎ</rt></ruby>は<ruby>監督<rt>かんとく</rt></ruby>へ<ruby>報告<rt>ほうこく</rt></ruby>やな。<br>*(Làm tốt. Người trước. Tiếp là báo cáo giám sát nhỉ.)* |

---

## Tình huống 5 — Công trường · 13:42, báo cáo khẩn cho 監督 石川

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>緊急<rt>きんきゅう</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>結論<rt>けつろん</rt></ruby>、<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby><ruby>足場<rt>あしば</rt></ruby>が<ruby>強風<rt>きょうふう</rt></ruby>で<ruby>傾<rt>かたむ</rt></ruby>きました。<br>*(Anh Ishikawa, báo cáo khẩn. Kết luận, giàn giáo mặt đông nghiêng do gió mạnh.)* |
| 石川さん | <ruby>負傷者<rt>ふしょうしゃ</rt></ruby>は!<br>*(Có người bị thương không!)* |
| Thức | <ruby>負傷者<rt>ふしょうしゃ</rt></ruby>はゼロです。<ruby>全員<rt>ぜんいん</rt></ruby><ruby>地上<rt>ちじょう</rt></ruby>に<ruby>退避<rt>たいひ</rt></ruby><ruby>済<rt>ず</rt></ruby>み、<ruby>該当<rt>がいとう</rt></ruby><ruby>区画<rt>くかく</rt></ruby>は<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>にしました。<br>*(Không người bị thương. Toàn bộ đã rút xuống đất, khu liên quan đã cấm vào.)* |
| 石川さん | <ruby>対応<rt>たいおう</rt></ruby>が<ruby>速<rt>はや</rt></ruby>い。<ruby>傾<rt>かたむ</rt></ruby>いた<ruby>原因<rt>げんいん</rt></ruby>の<ruby>見当<rt>けんとう</rt></ruby>は。<br>*(Ứng phó nhanh. Phỏng đoán nguyên nhân nghiêng là gì.)* |
| Thức | <ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>一部<rt>いちぶ</rt></ruby>が<ruby>外<rt>はず</rt></ruby>れた<ruby>可能性<rt>かのうせい</rt></ruby>があります。これから<ruby>現場<rt>げんば</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Có khả năng một phần thanh giằng tường bị bung. Em sẽ kiểm tra hiện trường ngay.)* |
| 石川さん | <ruby>俺<rt>おれ</rt></ruby>もすぐ<ruby>行<rt>い</rt></ruby>く。<ruby>勝手<rt>かって</rt></ruby>に<ruby>復旧<rt>ふっきゅう</rt></ruby>するな。<br>*(Tôi cũng tới ngay. Đừng tự ý khắc phục.)* |

---

## Tình huống 6 — Công trường · 14:00, điều tra nguyên nhân cùng 監督

| Vai | Lời thoại |
|---|---|
| 石川さん | トゥックさん、<ruby>傾斜<rt>けいしゃ</rt></ruby>の<ruby>状況<rt>じょうきょう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してください。<br>*(Anh Thức, giải thích tình trạng nghiêng đi.)* |
| Thức | <ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby><ruby>三層<rt>さんそう</rt></ruby>から<ruby>上<rt>うえ</rt></ruby>が<ruby>外<rt>そと</rt></ruby>へ<ruby>傾<rt>かたむ</rt></ruby>いています。<ruby>壁<rt>かべ</rt></ruby>つなぎが<ruby>二<rt>に</rt></ruby><ruby>か所<rt>かしょ</rt></ruby><ruby>脱落<rt>だつらく</rt></ruby>しています。<br>*(Từ tầng ba mặt đông trở lên nghiêng ra ngoài. Hai chỗ thanh giằng tường rơi mất.)* |
| 石川さん | <ruby>原因<rt>げんいん</rt></ruby>は<ruby>風<rt>かぜ</rt></ruby>だけか。<br>*(Nguyên nhân chỉ do gió thôi à.)* |
| Thức | <ruby>強風<rt>きょうふう</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>金<rt>がね</rt></ruby>ですが、<ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>取付<rt>とりつけ</rt></ruby><ruby>間隔<rt>かんかく</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>かった<ruby>箇所<rt>かしょ</rt></ruby>でした。<ruby>複合<rt>ふくごう</rt></ruby><ruby>要因<rt>よういん</rt></ruby>です。<br>*(Gió mạnh là ngòi nổ, nhưng đó là chỗ khoảng cách lắp thanh giằng hơi rộng. Là nguyên nhân tổng hợp.)* |
| 石川さん | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うな。それでいい。<ruby>隠<rt>かく</rt></ruby>すのが<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<br>*(Nói thẳng đấy. Vậy là tốt. Giấu mới là nguy hiểm nhất.)* |
| Thức | <ruby>事実<rt>じじつ</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えるのが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>役目<rt>やくめ</rt></ruby>です。<br>*(Truyền đạt chính xác sự thật là phận sự của 職長 ạ.)* |

---

## Tình huống 7 — Công trường · 14:30, 親方 tới hiện trường

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>状況<rt>じょうきょう</rt></ruby>は。<br>*(Thức, tình hình thế nào.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>負傷者<rt>ふしょうしゃ</rt></ruby>ゼロ、<ruby>該当<rt>がいとう</rt></ruby><ruby>区画<rt>くかく</rt></ruby><ruby>封鎖<rt>ふうさ</rt></ruby><ruby>済<rt>ず</rt></ruby>み、<ruby>監督<rt>かんとく</rt></ruby>と<ruby>原因<rt>げんいん</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>です。<br>*(Sếp, không người bị thương, khu liên quan đã phong tỏa, đang điều tra nguyên nhân với giám sát.)* |
| 谷川親方 | <ruby>怪我<rt>けが</rt></ruby><ruby>人<rt>にん</rt></ruby>がおらんのが<ruby>何<rt>なに</rt></ruby>よりや。お<ruby>前<rt>まえ</rt></ruby>の<ruby>初動<rt>しょどう</rt></ruby>が<ruby>早<rt>はや</rt></ruby>かったんやな。<br>*(Không có ai bị thương là quý nhất. Phản ứng đầu của cậu nhanh nhỉ.)* |
| Thức | <ruby>朝礼<rt>ちょうれい</rt></ruby>で<ruby>退避<rt>たいひ</rt></ruby><ruby>合図<rt>あいず</rt></ruby>を<ruby>決<rt>き</rt></ruby>めていたので、<ruby>全員<rt>ぜんいん</rt></ruby>すぐ<ruby>動<rt>うご</rt></ruby>けました。<br>*(Em đã quyết hiệu lệnh rút lui ở buổi họp sáng nên cả tổ làm được ngay.)* |
| 谷川親方 | それや。<ruby>備<rt>そな</rt></ruby>えてたから<ruby>守<rt>まも</rt></ruby>れた。<ruby>偶然<rt>ぐうぜん</rt></ruby>やない。<br>*(Chính nó. Có chuẩn bị nên bảo vệ được. Không phải may.)* |
| Thức | <ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てて、ご<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Em sẽ lập kế hoạch khắc phục rồi báo cáo sếp ạ.)* |

---

## Tình huống 8 — Văn phòng công trường · 15:00, lập kế hoạch khắc phục

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>を<ruby>提案<rt>ていあん</rt></ruby>します。<br>*(Anh Ishikawa, em đề xuất quy trình khắc phục.)* |
| 石川さん | <ruby>聞<rt>き</rt></ruby>こう。<br>*(Nghe nào.)* |
| Thức | まず<ruby>傾<rt>かたむ</rt></ruby>いた<ruby>区画<rt>くかく</rt></ruby>を<ruby>無人<rt>むじん</rt></ruby>で<ruby>支保<rt>しほ</rt></ruby>し、<ruby>仮<rt>かり</rt></ruby><ruby>固定<rt>こてい</rt></ruby>します。<ruby>次<rt>つぎ</rt></ruby>に<ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に<ruby>解体<rt>かいたい</rt></ruby>し、<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>増<rt>ま</rt></ruby>して<ruby>再<rt>さい</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>です。<br>*(Trước hết chống đỡ khu nghiêng không người, cố định tạm. Tiếp tháo từ trên xuống, tăng thanh giằng rồi lắp lại.)* |
| 石川さん | <ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>間隔<rt>かんかく</rt></ruby>は。<br>*(Khoảng cách thanh giằng thì sao.)* |
| Thức | <ruby>基準<rt>きじゅん</rt></ruby>より<ruby>密<rt>みつ</rt></ruby>に、<ruby>水平<rt>すいへい</rt></ruby><ruby>垂直<rt>すいちょく</rt></ruby>とも<ruby>規定<rt>きてい</rt></ruby>の<ruby>最小<rt>さいしょう</rt></ruby><ruby>値<rt>ち</rt></ruby>で<ruby>設定<rt>せってい</rt></ruby>します。<br>*(Dày hơn tiêu chuẩn, cả ngang lẫn dọc đặt ở giá trị tối thiểu của quy định.)* |
| 石川さん | <ruby>妥当<rt>だとう</rt></ruby>だ。その<ruby>計画<rt>けいかく</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めてくれ。<br>*(Hợp lý. Cứ kế hoạch đó mà tiến.)* |

---

## Tình huống 9 — Công trường · 15:30, phổ biến lại an toàn cho tổ

| Vai | Lời thoại |
|---|---|
| Thức | みなさん、<ruby>集<rt>あつ</rt></ruby>まってください。<ruby>今日<rt>きょう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Mọi người tập trung lại. Tôi chia sẻ việc hôm nay.)* |
| Nam | はい。<br>*(Vâng ạ.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、<ruby>全員<rt>ぜんいん</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby>でした。<ruby>退避<rt>たいひ</rt></ruby><ruby>合図<rt>あいず</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ってくれたおかげです。<br>*(Kết luận, toàn bộ an toàn. Là nhờ mọi người tuân hiệu lệnh rút lui.)* |
| 近藤先輩 | <ruby>普段<rt>ふだん</rt></ruby>の<ruby>訓練<rt>くんれん</rt></ruby>が<ruby>生<rt>い</rt></ruby>きたな。<br>*(Huấn luyện thường ngày phát huy đấy.)* |
| Thức | これからは<ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>確認<rt>かくにん</rt></ruby>を<ruby>毎日<rt>まいにち</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>記録<rt>きろく</rt></ruby>します。<ruby>同<rt>おな</rt></ruby>じことを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>さないために。<br>*(Từ nay kiểm thanh giằng tường và ghi chép mỗi ngày. Để không lặp lại.)* |
| Nam | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<br>*(Em rõ ạ. Em sẽ siết tinh thần.)* |

---

## Tình huống 10 — Văn phòng · 17:00, viết báo cáo sự cố

| Vai | Lời thoại |
|---|---|
| 石川さん | トゥックさん、<ruby>事故<rt>じこ</rt></ruby><ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>書<rt>か</rt></ruby>けますか。<br>*(Anh Thức, viết được báo cáo sự cố không?)* |
| Thức | はい。<ruby>発生<rt>はっせい</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>、<ruby>状況<rt>じょうきょう</rt></ruby>、<ruby>初動<rt>しょどう</rt></ruby><ruby>対応<rt>たいおう</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>、<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby><ruby>策<rt>さく</rt></ruby>の<ruby>順<rt>じゅん</rt></ruby>でまとめます。<br>*(Vâng. Em tổng hợp theo thứ tự giờ xảy ra, tình huống, ứng phó ban đầu, nguyên nhân, biện pháp phòng tái phát.)* |
| 石川さん | <ruby>構成<rt>こうせい</rt></ruby>がしっかりしているな。<br>*(Bố cục chắc chắn đấy.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>から<ruby>書<rt>か</rt></ruby>くようにしています。<ruby>読<rt>よ</rt></ruby>む<ruby>人<rt>ひと</rt></ruby>が<ruby>分<rt>わ</rt></ruby>かりやすいので。<br>*(Em viết từ kết luận. Người đọc dễ hiểu hơn.)* |
| 石川さん | その<ruby>書<rt>か</rt></ruby>き<ruby>方<rt>かた</rt></ruby>はいい。<ruby>元請<rt>もとうけ</rt></ruby>にも<ruby>提出<rt>ていしゅつ</rt></ruby>する<ruby>書類<rt>しょるい</rt></ruby>だ、<ruby>正確<rt>せいかく</rt></ruby>に<ruby>頼<rt>たの</rt></ruby>む。<br>*(Cách viết đó tốt. Đây là giấy tờ nộp cả tổng thầu, viết chính xác giúp.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>事実<rt>じじつ</rt></ruby>のみ<ruby>記載<rt>きさい</rt></ruby>します。<br>*(Em rõ ạ. Em chỉ ghi sự thật.)* |

---

## Tình huống 11 — Công trường · 翌朝 8:00, 朝礼 sau sự cố

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>昨日<rt>きのう</rt></ruby>の<ruby>件<rt>けん</rt></ruby>を<ruby>踏<rt>ふ</rt></ruby>まえ、<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ります。<br>*(Chào buổi sáng. Trên cơ sở việc hôm qua, từ hôm nay vào công việc khắc phục.)* |
| Nam | <ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか。<br>*(Điểm chú ý là gì ạ?)* |
| Thức | <ruby>傾<rt>かたむ</rt></ruby>いた<ruby>区画<rt>くかく</rt></ruby>には<ruby>仮<rt>かり</rt></ruby><ruby>固定<rt>こてい</rt></ruby>が<ruby>済<rt>す</rt></ruby>むまで<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>立<rt>た</rt></ruby>ち<ruby>入<rt>い</rt></ruby>らないこと。<br>*(Khu nghiêng tuyệt đối không vào cho tới khi cố định tạm xong.)* |
| 近藤先輩 | <ruby>解体<rt>かいたい</rt></ruby>は<ruby>上<rt>うえ</rt></ruby>からやな。<br>*(Tháo từ trên xuống nhỉ.)* |
| Thức | はい、<ruby>上<rt>うえ</rt></ruby>から<ruby>一<rt>ひと</rt></ruby><ruby>段<rt>だん</rt></ruby>ずつ。<ruby>無理<rt>むり</rt></ruby>な<ruby>姿勢<rt>しせい</rt></ruby>を<ruby>取<rt>と</rt></ruby>らないでください。<br>*(Vâng, từ trên từng tầng một. Đừng lấy tư thế gắng sức.)* |
| 近藤先輩 | <ruby>指示<rt>しじ</rt></ruby>が<ruby>明確<rt>めいかく</rt></ruby>や。やりやすい。<br>*(Chỉ thị rõ ràng. Dễ làm.)* |

---

## Tình huống 12 — Công trường · 11:00, giám sát khắc phục thực tế

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>仮<rt>かり</rt></ruby><ruby>固定<rt>こてい</rt></ruby>の<ruby>支柱<rt>しちゅう</rt></ruby>を<ruby>立<rt>た</rt></ruby>てました。<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Thức, em dựng xong cột chống cố định tạm. Nhờ anh kiểm ạ.)* |
| Thức | <ruby>支柱<rt>しちゅう</rt></ruby>の<ruby>根元<rt>ねもと</rt></ruby>に<ruby>敷板<rt>しきいた</rt></ruby>はあるか。<ruby>沈下<rt>ちんか</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>が<ruby>要<rt>い</rt></ruby>る。<br>*(Chân cột chống có tấm lót chưa. Cần chống lún.)* |
| Nam | <ruby>二枚<rt>にまい</rt></ruby><ruby>重<rt>かさ</rt></ruby>ねで<ruby>入<rt>い</rt></ruby>れています。<br>*(Em lót chồng hai tấm ạ.)* |
| Thức | いいぞ。<ruby>傾斜<rt>けいしゃ</rt></ruby>は<ruby>止<rt>と</rt></ruby>まっているな。これで<ruby>解体<rt>かいたい</rt></ruby>に<ruby>入<rt>はい</rt></ruby>れる。<br>*(Tốt. Độ nghiêng đã dừng. Thế này vào tháo được.)* |
| Nam | <ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Em làm cẩn thận ạ.)* |
| Thức | あと<ruby>少<rt>すこ</rt></ruby>しだ。<ruby>焦<rt>あせ</rt></ruby>らず、<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Còn chút nữa. Đừng vội, chắc chắn.)* |

---

## Tình huống 13 — Khu nghỉ · 12:10, Minh cảm ơn Thức

| Vai | Lời thoại |
|---|---|
| ミン | トゥックさん、<ruby>昨日<rt>きのう</rt></ruby>はありがとうございました。<ruby>正直<rt>しょうじき</rt></ruby><ruby>怖<rt>こわ</rt></ruby>かったです。<br>*(Anh Thức, hôm qua cảm ơn anh. Thật ra em sợ lắm ạ.)* |
| Thức | <ruby>無事<rt>ぶじ</rt></ruby>でよかった。お<ruby>前<rt>まえ</rt></ruby>が<ruby>安全帯<rt>あんぜんたい</rt></ruby>を<ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby>とも<ruby>掛<rt>か</rt></ruby>けていたから<ruby>守<rt>まも</rt></ruby>れたんだ。<br>*(May mà an toàn. Vì cậu gài cả hai móc dây an toàn nên giữ được.)* |
| ミン | トゥックさんの<ruby>声<rt>こえ</rt></ruby>が<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いていて、<ruby>動<rt>うご</rt></ruby>けました。<br>*(Giọng anh Thức bình tĩnh nên em mới cử động được.)* |
| Thức | <ruby>慌<rt>あわ</rt></ruby>てると<ruby>余計<rt>よけい</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない。<ruby>基本<rt>きほん</rt></ruby>どおりやれば<ruby>守<rt>まも</rt></ruby>れる。<br>*(Cuống thì càng nguy hiểm. Làm đúng cơ bản thì giữ được.)* |
| ミン | <ruby>僕<rt>ぼく</rt></ruby>も<ruby>基本<rt>きほん</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Em cũng sẽ trọng cái cơ bản ạ.)* |
| Thức | それでいい。それが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Vậy là được. Đó là thứ giữ mạng.)* |

---

## Tình huống 14 — Văn phòng · 17:00, 親方 nói về vai 職長

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>今回<rt>こんかい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>、よう<ruby>仕切<rt>しき</rt></ruby>った。<br>*(Thức, vụ lần này, điều hành tốt.)* |
| Thức | <ruby>運<rt>うん</rt></ruby>もありました。でも<ruby>準備<rt>じゅんび</rt></ruby>していたことが<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちました。<br>*(Cũng có phần may. Nhưng những thứ chuẩn bị đã có ích ạ.)* |
| 谷川親方 | <ruby>運<rt>うん</rt></ruby>やない。<ruby>備<rt>そな</rt></ruby>えた<ruby>者<rt>もの</rt></ruby>だけが<ruby>守<rt>まも</rt></ruby>れる。それが<ruby>職長<rt>しょくちょう</rt></ruby>や。<br>*(Không phải may. Chỉ kẻ chuẩn bị mới bảo vệ được. Đó là 職長.)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るのが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>だと、<ruby>体<rt>からだ</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Bảo vệ con người là việc số một, em hiểu bằng cả người rồi ạ.)* |
| 谷川親方 | それが<ruby>分<rt>わ</rt></ruby>かったら、<ruby>試験<rt>しけん</rt></ruby>の<ruby>答<rt>こた</rt></ruby>えも<ruby>口<rt>くち</rt></ruby>から<ruby>出<rt>で</rt></ruby>るわ。<br>*(Hiểu được điều đó thì câu trả lời thi cũng tự ra miệng.)* |
| Thức | はい。この<ruby>経験<rt>けいけん</rt></ruby>を<ruby>言葉<rt>ことば</rt></ruby>にできるようにします。<br>*(Vâng. Em sẽ diễn được kinh nghiệm này thành lời ạ.)* |

---

## Tình huống 15 — Công trường · 14:00, hoàn tất khắc phục

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。ご<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Anh Ishikawa, công việc khắc phục hoàn tất. Nhờ anh kiểm ạ.)* |
| 石川さん | <ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>増設<rt>ぞうせつ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>を<ruby>見<rt>み</rt></ruby>せてください。<br>*(Cho tôi xem chỗ tăng thanh giằng.)* |
| Thức | <ruby>水平<rt>すいへい</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>、<ruby>垂直<rt>すいちょく</rt></ruby><ruby>方向<rt>ほうこう</rt></ruby>とも<ruby>基準<rt>きじゅん</rt></ruby>より<ruby>密<rt>みつ</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>しました。<ruby>点検<rt>てんけん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>も<ruby>添付<rt>てんぷ</rt></ruby>します。<br>*(Cả phương ngang và dọc đều tăng dày hơn tiêu chuẩn. Em đính kèm cả biên bản kiểm tra.)* |
| 石川さん | <ruby>完璧<rt>かんぺき</rt></ruby>だ。これなら<ruby>安心<rt>あんしん</rt></ruby>して<ruby>作業<rt>さぎょう</rt></ruby><ruby>再開<rt>さいかい</rt></ruby>できる。<br>*(Hoàn hảo. Thế này thì yên tâm làm lại được.)* |
| Thức | <ruby>同<rt>おな</rt></ruby>じ<ruby>事故<rt>じこ</rt></ruby>は<ruby>二度<rt>にど</rt></ruby>と<ruby>起<rt>お</rt></ruby>こさせません。<br>*(Sự cố như vậy em không để xảy ra lần thứ hai.)* |
| 石川さん | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>頼<rt>たの</rt></ruby>もしいよ。<br>*(Câu đó nghe đáng tin cậy đấy.)* |

---

## Tình huống 16 — Văn phòng · 17:30, 斉藤 đánh giá cách xử lý

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>報告書<rt>ほうこくしょ</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んだ。<ruby>初動<rt>しょどう</rt></ruby>から<ruby>再発<rt>さいはつ</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>まで<ruby>筋<rt>すじ</rt></ruby>が<ruby>通<rt>とお</rt></ruby>っている。<br>*(Thức, tôi đọc báo cáo rồi. Từ ứng phó ban đầu tới phòng tái phát đều mạch lạc.)* |
| Thức | ありがとうございます。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に<ruby>書<rt>か</rt></ruby>く<ruby>練習<rt>れんしゅう</rt></ruby>が<ruby>生<rt>い</rt></ruby>きました。<br>*(Cảm ơn anh. Luyện viết từ kết luận theo thứ tự phát huy ạ.)* |
| 斉藤職長 | <ruby>勉強<rt>べんきょう</rt></ruby>が<ruby>現場<rt>げんば</rt></ruby>を<ruby>救<rt>すく</rt></ruby>い、<ruby>現場<rt>げんば</rt></ruby>が<ruby>試験<rt>しけん</rt></ruby>を<ruby>強<rt>つよ</rt></ruby>くする。いい<ruby>循環<rt>じゅんかん</rt></ruby>だ。<br>*(Học cứu công trường, công trường làm thi mạnh lên. Vòng tuần hoàn tốt.)* |
| Thức | この<ruby>経験<rt>けいけん</rt></ruby>そのものが<ruby>試験<rt>しけん</rt></ruby>の<ruby>答<rt>こた</rt></ruby>えになりそうです。<br>*(Chính kinh nghiệm này có vẻ sẽ thành câu trả lời thi ạ.)* |
| 斉藤職長 | そのとおりだ。<ruby>体験<rt>たいけん</rt></ruby>を<ruby>語<rt>かた</rt></ruby>れる<ruby>者<rt>もの</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>い。<br>*(Đúng vậy. Người kể được trải nghiệm thì mạnh.)* |
| Thức | <ruby>本番<rt>ほんばん</rt></ruby>まで<ruby>残<rt>のこ</rt></ruby>り<ruby>二週間<rt>にしゅうかん</rt></ruby>。<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めます。<br>*(Còn hai tuần tới ngày thi. Em siết tinh thần ạ.)* |

---

## Tình huống 17 — Phòng trọ Thức · 21:00, kể Linh về sự cố (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, hôm qua công trường có sự cố. Gió giật làm giàn giáo nghiêng, một bạn suýt rơi. |
| Linh | Trời ơi... có ai sao không anh? Anh có sao không? |
| Thức | Tất cả an toàn, không ai bị thương. Bạn ấy gài đủ hai móc dây nên giữ được. Anh chỉ huy rút lui, phong tỏa, rồi điều tra. |
| Linh | Em nghe mà tim đập mạnh. Anh bình tĩnh được trong lúc đó, em phục anh thật. |
| Thức | Nhờ buổi họp sáng anh đã quyết sẵn hiệu lệnh rút lui. 親方 nói: chỉ người có chuẩn bị mới bảo vệ được người khác. |
| Linh | Câu đó hay quá. Anh không chỉ ôn để thi, anh đã sống đúng cái nghề rồi. Em tự hào về anh. |

---

## Tình huống 18 — Công trường · 8:00, 朝礼 củng cố bài học

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>今回<rt>こんかい</rt></ruby>の<ruby>件<rt>けん</rt></ruby>から<ruby>学<rt>まな</rt></ruby>んだことを<ruby>三<rt>みっ</rt></ruby>つ<ruby>共有<rt>きょうゆう</rt></ruby>します。<br>*(Chào buổi sáng. Tôi chia sẻ ba điều học được từ vụ lần này.)* |
| Thức | <ruby>一<rt>いち</rt></ruby>、<ruby>退避<rt>たいひ</rt></ruby><ruby>合図<rt>あいず</rt></ruby>を<ruby>事前<rt>じぜん</rt></ruby>に<ruby>決<rt>き</rt></ruby>める。<ruby>二<rt>に</rt></ruby>、<ruby>安全帯<rt>あんぜんたい</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby>。<ruby>三<rt>さん</rt></ruby>、<ruby>壁<rt>かべ</rt></ruby>つなぎは<ruby>毎日<rt>まいにち</rt></ruby><ruby>記録<rt>きろく</rt></ruby>。<br>*(Một, quyết trước hiệu lệnh rút lui. Hai, dây an toàn nhất định hai móc. Ba, thanh giằng tường ghi chép mỗi ngày.)* |
| Nam | <ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>覚<rt>おぼ</rt></ruby>えやすいです。<br>*(Cụ thể nên dễ nhớ ạ.)* |
| 近藤先輩 | <ruby>失敗<rt>しっぱい</rt></ruby>を<ruby>次<rt>つぎ</rt></ruby>に<ruby>生<rt>い</rt></ruby>かす、それが<ruby>大事<rt>だいじ</rt></ruby>や。<br>*(Biến thất bại thành bài học cho lần sau, đó mới quan trọng.)* |
| Thức | <ruby>事故<rt>じこ</rt></ruby>を<ruby>無駄<rt>むだ</rt></ruby>にしないことが、<ruby>亡<rt>な</rt></ruby>くさないための<ruby>道<rt>みち</rt></ruby>です。<br>*(Không lãng phí sự cố chính là con đường để không mất ai.)* |
| Nam | <ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Em khắc trong lòng ạ.)* |

---

## Tình huống 19 — Văn phòng · 17:00, 親方 gắn sự cố với kỳ thi

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>試験<rt>しけん</rt></ruby><ruby>前<rt>まえ</rt></ruby>にこんな<ruby>大<rt>おお</rt></ruby>きいことがあって、<ruby>大変<rt>たいへん</rt></ruby>やったな。<br>*(Thức, trước thi mà có việc lớn vậy, vất vả nhỉ.)* |
| Thức | <ruby>正直<rt>しょうじき</rt></ruby>きつかったです。でも、<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>なものが<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Thật ra mệt ạ. Nhưng em hiểu được điều quan trọng nhất.)* |
| 谷川親方 | <ruby>試験<rt>しけん</rt></ruby>は<ruby>知識<rt>ちしき</rt></ruby>を<ruby>問<rt>と</rt></ruby>うが、<ruby>本質<rt>ほんしつ</rt></ruby>は<ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>れるかや。お<ruby>前<rt>まえ</rt></ruby>はそれを<ruby>証明<rt>しょうめい</rt></ruby>した。<br>*(Thi hỏi kiến thức, nhưng bản chất là có bảo vệ được người không. Cậu đã chứng minh điều đó.)* |
| Thức | <ruby>本番<rt>ほんばん</rt></ruby>では、この<ruby>経験<rt>けいけん</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で<ruby>語<rt>かた</rt></ruby>ります。<br>*(Vào thi thật, em sẽ kể kinh nghiệm này bằng lời mình ạ.)* |
| 谷川親方 | それでええ。<ruby>借<rt>か</rt></ruby>り<ruby>物<rt>もの</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>より、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>体験<rt>たいけん</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>強<rt>つよ</rt></ruby>い。<br>*(Vậy được. Hơn lời vay mượn, trải nghiệm của mình là mạnh nhất.)* |
| Thức | はい。<ruby>胸<rt>むね</rt></ruby>を<ruby>張<rt>は</rt></ruby>って<ruby>臨<rt>のぞ</rt></ruby>みます。<br>*(Vâng. Em ưỡn ngực mà bước vào ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 21:30, Thức tự nhìn lại trước thi

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) <ruby>試験<rt>しけん</rt></ruby><ruby>前<rt>まえ</rt></ruby>にあの<ruby>事故<rt>じこ</rt></ruby>。<ruby>怖<rt>こわ</rt></ruby>かったが、<ruby>何<rt>なに</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>か<ruby>分<rt>わ</rt></ruby>かった。<br>*(Trước thi mà gặp sự cố ấy. Sợ thật, nhưng hiểu được cái gì quan trọng.)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ること。それが<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>核心<rt>かくしん</rt></ruby>だ。<br>*(Bảo vệ con người. Đó là cốt lõi của 職長.)* |
| Thức | <ruby>勉強<rt>べんきょう</rt></ruby>した<ruby>手順<rt>てじゅん</rt></ruby>が、そのまま<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>った。<br>*(Quy trình đã học, chính nó giữ được mạng người.)* |
| Thức | <ruby>本番<rt>ほんばん</rt></ruby>では<ruby>暗記<rt>あんき</rt></ruby>を<ruby>答<rt>こた</rt></ruby>えるんじゃない。<ruby>経験<rt>けいけん</rt></ruby>を<ruby>語<rt>かた</rt></ruby>るんだ。<br>*(Vào thi không phải trả bài học thuộc. Mà là kể trải nghiệm.)* |
| Thức | あと<ruby>二週間<rt>にしゅうかん</rt></ruby>。<ruby>地<rt>じ</rt></ruby>に<ruby>足<rt>あし</rt></ruby>をつけて<ruby>仕上<rt>しあ</rt></ruby>げよう。<br>*(Còn hai tuần. Đặt chân xuống đất mà hoàn thiện.)* |
| Thức | <ruby>怖<rt>こわ</rt></ruby>さも、<ruby>力<rt>ちから</rt></ruby>に<ruby>変<rt>か</rt></ruby>える。<br>*(Cả nỗi sợ cũng biến thành sức.)* |

---

## Đọng lại

Hai tuần trước kỳ thi, công trường giáng cho Thức thử thách lớn nhất series: gió giật bất ngờ làm giàn giáo nghiêng, một thợ trẻ treo trên tầng ba. Trong vài phút, tất cả những gì Thức tích lũy — hiệu lệnh rút lui quyết sẵn từ buổi họp sáng, kỷ luật hai móc dây an toàn, giọng chỉ huy bình tĩnh, quy trình dừng việc, phong tỏa, báo cáo 監督, điều tra nguyên nhân, lập biện pháp phòng tái phát — được thử trong tình huống thật. Kết quả: không một người bị thương. 親方 chốt một câu thấm thía: không phải may, chỉ kẻ có chuẩn bị mới bảo vệ được người khác — đó là 職長. Và bài học lớn hơn cả kỳ thi: bản chất công việc không phải kiến thức, mà là giữ được mạng người. Thức bước vào hai tuần cuối với nhận thức rằng đáp án của 2号評価試験 không nằm trong sách, mà nằm trong chính trải nghiệm em vừa sống qua.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 強風 | きょうふう | gió mạnh |
> | 退避 | たいひ | rút lui, sơ tán khỏi nơi nguy hiểm |
> | 壁つなぎ | かべつなぎ | thanh giằng nối giàn vào tường |
> | 脱落 | だつらく | rơi mất, bung ra |
> | 点呼 | てんこ | điểm danh |
> | 負傷者 | ふしょうしゃ | người bị thương |
> | 封鎖 | ふうさ | phong tỏa, chặn lối |
> | 初動 | しょどう | hành động ứng phó ban đầu |
> | 仮固定 | かりこてい | cố định tạm thời |
> | 支保 | しほ | chống đỡ tạm (kết cấu) |
> | 復旧 | ふっきゅう | khắc phục, phục hồi |
> | 再発防止策 | さいはつぼうしさく | biện pháp phòng tái phát |
> | 事故報告書 | じこほうこくしょ | báo cáo sự cố |
> | 元請 | もとうけ | nhà thầu chính, tổng thầu |
> | 傾斜 | けいしゃ | độ nghiêng, sự nghiêng |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000006, 800000038, NULL, 'markdown_book', 'T6. Thi 特定技能2号評価試験 (二号試験)', '# Sách kỹ năng đặc định xây dựng · T6. Thi 特定技能2号評価試験 (二号試験)

> **Mục tiêu nhân vật:** Thức dự kỳ thi 特定技能2号評価試験 ngành 建設 — phần lý thuyết, thực hành và vấn đáp vai 職長. Học mẫu câu nghiệp vụ thủ tục vào phòng thi, mẫu câu trả lời vấn đáp theo khuôn "kết luận trước", và mẫu câu giữ bình tĩnh khi đối mặt áp lực thi cử thật.

---

## Bối cảnh

Đầu tháng 8 năm 2031. Ngày thi 特定技能2号評価試験 ngành 建設. Thức và Hùng tới điểm thi do JAC tổ chức, làm thủ tục nhận diện, thi phần lý thuyết, phần thực hành đọc bản vẽ và phần vấn đáp mô phỏng vai 職長. Đây là đỉnh điểm của ba tháng ôn luyện và cả series. Chương này tập trung mẫu câu thủ tục phòng thi, mẫu câu trả lời vấn đáp theo khuôn "kết luận trước rồi lý do, quy trình", và mẫu câu tự trấn an. *(Nội dung, hình thức 特定技能2号評価試験 trong sách theo quy định tại thời điểm biên soạn 2026; chi tiết tổ chức thi có thể thay đổi theo đơn vị vận hành.)*

---

## Tình huống 1 — Trước điểm thi · 8:00, Thức và Hùng động viên nhau

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、ついに<ruby>本番<rt>ほんばん</rt></ruby>だ。<ruby>眠<rt>ねむ</rt></ruby>れたか。<br>*(Thức, cuối cùng cũng tới ngày thi. Ngủ được không.)* |
| Thức | <ruby>昨夜<rt>ゆうべ</rt></ruby>はちゃんと<ruby>寝<rt>ね</rt></ruby>た。<ruby>体調<rt>たいちょう</rt></ruby>は<ruby>万全<rt>ばんぜん</rt></ruby>だ。<br>*(Tối qua mình ngủ đàng hoàng. Thể trạng sung sức.)* |
| Hùng | <ruby>口頭<rt>こうとう</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>するな。<br>*(Vấn đáp, hồi hộp ghê.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>から、<ruby>理由<rt>りゆう</rt></ruby>、<ruby>手順<rt>てじゅん</rt></ruby>。<ruby>型<rt>かた</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>せば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Kết luận trước, lý do, quy trình. Nhớ cái khuôn thì ổn.)* |
| Hùng | お<ruby>前<rt>まえ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いた。<br>*(Nghe cậu nói mình bình tĩnh lại.)* |
| Thức | お<ruby>互<rt>たが</rt></ruby>い、いつもどおりやろう。<ruby>行<rt>い</rt></ruby>こう。<br>*(Cả hai, cứ như thường ngày. Đi nào.)* |

---

## Tình huống 2 — Quầy tiếp nhận · 8:30, làm thủ tục nhận diện

| Vai | Lời thoại |
|---|---|
| 受付係 | <ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードをお<ruby>見<rt>み</rt></ruby>せください。<br>*(Cho xem phiếu dự thi và thẻ lưu trú.)* |
| Thức | はい、こちらです。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đây ạ. Nhờ anh.)* |
| 受付係 | <ruby>本人<rt>ほんにん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>します。<ruby>氏名<rt>しめい</rt></ruby>と<ruby>生年月日<rt>せいねんがっぴ</rt></ruby>をおっしゃってください。<br>*(Xác nhận danh tính. Đọc họ tên và ngày sinh.)* |
| Thức | トゥックです。<ruby>生年月日<rt>せいねんがっぴ</rt></ruby>は<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>のとおりです。<br>*(Tôi là Thức. Ngày sinh đúng như phiếu dự thi.)* |
| 受付係 | <ruby>確認<rt>かくにん</rt></ruby>できました。<ruby>会場<rt>かいじょう</rt></ruby>は<ruby>二<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>教室<rt>きょうしつ</rt></ruby>、<ruby>座席<rt>ざせき</rt></ruby><ruby>番号<rt>ばんごう</rt></ruby>は<ruby>受験<rt>じゅけん</rt></ruby><ruby>票<rt>ひょう</rt></ruby>に<ruby>記載<rt>きさい</rt></ruby>です。<br>*(Đã xác nhận. Phòng số hai, số ghế ghi trên phiếu dự thi.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Tôi rõ ạ. Cảm ơn anh.)* |

---

## Tình huống 3 — Phòng thi · 8:50, nghe phổ biến quy chế

| Vai | Lời thoại |
|---|---|
| 試験官 | これから<ruby>注意<rt>ちゅうい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>ってください。<br>*(Sau đây phổ biến lưu ý. Điện thoại tắt nguồn.)* |
| Thức | (trong lòng) <ruby>電源<rt>でんげん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、よし。<br>*(Kiểm tắt nguồn, xong.)* |
| 試験官 | <ruby>解答<rt>かいとう</rt></ruby>は<ruby>鉛筆<rt>えんぴつ</rt></ruby>で。<ruby>途中<rt>とちゅう</rt></ruby><ruby>退室<rt>たいしつ</rt></ruby>は<ruby>原則<rt>げんそく</rt></ruby><ruby>認<rt>みと</rt></ruby>めません。<br>*(Làm bài bằng bút chì. Về nguyên tắc không cho ra giữa chừng.)* |
| Thức | (trong lòng) <ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>け。いつもの<ruby>練習<rt>れんしゅう</rt></ruby>どおりだ。<br>*(Bình tĩnh. Như buổi luyện mọi khi.)* |
| 試験官 | <ruby>学科<rt>がっか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>時間<rt>じかん</rt></ruby>は<ruby>九十分<rt>きゅうじゅっぷん</rt></ruby>です。それでは<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Phần lý thuyết chín mươi phút. Bắt đầu.)* |
| Thức | (trong lòng) <ruby>深呼吸<rt>しんこきゅう</rt></ruby>。<ruby>一問<rt>いちもん</rt></ruby>ずつ<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Hít sâu. Từng câu một cho chắc.)* |

---

## Tình huống 4 — Phòng thi · 9:00, làm phần lý thuyết

| Vai | Lời thoại |
|---|---|
| Thức | (đọc đề trong lòng) <ruby>足場<rt>あしば</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>を<ruby>行<rt>おこな</rt></ruby>う<ruby>時期<rt>じき</rt></ruby>として<ruby>正<rt>ただ</rt></ruby>しいものは…<br>*(Thời điểm kiểm tra giàn giáo đúng là…)* |
| Thức | (nghĩ) <ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>悪天候<rt>あくてんこう</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>組替<rt>くみか</rt></ruby><ruby>後<rt>ご</rt></ruby>。これは<ruby>毎日<rt>まいにち</rt></ruby>やっている。<br>*(Trước khi làm, sau thời tiết xấu, sau khi sửa giàn. Cái này ngày nào cũng làm.)* |
| Thức | (nghĩ) <ruby>次<rt>つぎ</rt></ruby>、<ruby>墜落<rt>ついらく</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>の<ruby>義務<rt>ぎむ</rt></ruby>が<ruby>生<rt>しょう</rt></ruby>じる<ruby>高<rt>たか</rt></ruby>さは…<ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>。<br>*(Tiếp, độ cao phát sinh nghĩa vụ chống rơi ngã là… từ hai mét trở lên.)* |
| Thức | (nghĩ) <ruby>現場<rt>げんば</rt></ruby>で<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えていることばかりだ。<ruby>焦<rt>あせ</rt></ruby>らず<ruby>進<rt>すす</rt></ruby>もう。<br>*(Toàn thứ cơ thể đã nhớ ở công trường. Đừng vội, cứ làm.)* |
| Thức | (nghĩ) <ruby>残<rt>のこ</rt></ruby>り<ruby>十問<rt>じゅうもん</rt></ruby>。<ruby>時間<rt>じかん</rt></ruby>は<ruby>十分<rt>じゅうぶん</rt></ruby>ある。<br>*(Còn mười câu. Thời gian còn dư.)* |
| Thức | (nghĩ) <ruby>見直<rt>みなお</rt></ruby>しもしよう。<ruby>慎重<rt>しんちょう</rt></ruby>に。<br>*(Soát lại nữa. Cẩn thận.)* |

---

## Tình huống 5 — Hành lang · 10:40, giải lao giữa các phần

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>学科<rt>がっか</rt></ruby>どうだった。<br>*(Thức, lý thuyết thế nào.)* |
| Thức | <ruby>手応<rt>てごた</rt></ruby>えはあった。<ruby>現場<rt>げんば</rt></ruby>でやってることばかりだったよ。<br>*(Có cảm giác chắc tay. Toàn thứ làm ở công trường.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>もだ。<ruby>勉強<rt>べんきょう</rt></ruby>と<ruby>実務<rt>じつむ</rt></ruby>が<ruby>結<rt>むす</rt></ruby>びついた<ruby>感<rt>かん</rt></ruby>じだ。<br>*(Mình cũng vậy. Cảm giác học với thực tế gắn vào nhau.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>は<ruby>実技<rt>じつぎ</rt></ruby>と<ruby>口頭<rt>こうとう</rt></ruby>だ。ここが<ruby>本番<rt>ほんばん</rt></ruby>だな。<br>*(Tiếp là thực hành và vấn đáp. Đây mới là chính.)* |
| Hùng | <ruby>型<rt>かた</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れずにいこう。<br>*(Đừng quên cái khuôn.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>から。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>話<rt>はな</rt></ruby>せば<ruby>必<rt>かなら</rt></ruby>ず<ruby>伝<rt>つた</rt></ruby>わる。<br>*(Từ kết luận. Bình tĩnh nói thì chắc chắn truyền đạt được.)* |

---

## Tình huống 6 — Phòng thực hành · 11:00, phần đọc bản vẽ giàn giáo

| Vai | Lời thoại |
|---|---|
| 試験官 | この<ruby>足場<rt>あしば</rt></ruby><ruby>図<rt>ず</rt></ruby>を<ruby>見<rt>み</rt></ruby>て、<ruby>不適切<rt>ふてきせつ</rt></ruby>な<ruby>箇所<rt>かしょ</rt></ruby>を<ruby>指摘<rt>してき</rt></ruby>してください。<br>*(Nhìn bản vẽ giàn giáo này, chỉ ra chỗ không phù hợp.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、<ruby>壁<rt>かべ</rt></ruby>つなぎの<ruby>間隔<rt>かんかく</rt></ruby>が<ruby>規定<rt>きてい</rt></ruby>より<ruby>広<rt>ひろ</rt></ruby>い<ruby>箇所<rt>かしょ</rt></ruby>があります。<br>*(Kết luận, có chỗ khoảng cách thanh giằng tường rộng hơn quy định.)* |
| 試験官 | <ruby>理由<rt>りゆう</rt></ruby>を<ruby>説明<rt>せつめい</rt></ruby>してください。<br>*(Giải thích lý do.)* |
| Thức | <ruby>間隔<rt>かんかく</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>いと<ruby>強風<rt>きょうふう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>足場<rt>あしば</rt></ruby>が<ruby>傾<rt>かたむ</rt></ruby>く<ruby>恐<rt>おそ</rt></ruby>れがあるためです。<br>*(Vì khoảng cách rộng thì khi gió mạnh giàn giáo có nguy cơ nghiêng.)* |
| 試験官 | <ruby>改善<rt>かいぜん</rt></ruby><ruby>策<rt>さく</rt></ruby>は。<br>*(Phương án cải thiện.)* |
| Thức | <ruby>水平<rt>すいへい</rt></ruby><ruby>垂直<rt>すいちょく</rt></ruby>とも<ruby>規定<rt>きてい</rt></ruby><ruby>内<rt>ない</rt></ruby>に<ruby>壁<rt>かべ</rt></ruby>つなぎを<ruby>増設<rt>ぞうせつ</rt></ruby>し、<ruby>点検<rt>てんけん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>を<ruby>残<rt>のこ</rt></ruby>します。<br>*(Tăng thanh giằng cả ngang lẫn dọc trong quy định, và lưu biên bản kiểm tra.)* |

---

## Tình huống 7 — Phòng vấn đáp · 11:30, câu hỏi an toàn

| Vai | Lời thoại |
|---|---|
| 試験官 | あなたは<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>です。<ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>何<rt>なに</rt></ruby>をしますか。<br>*(Anh là 職長 lắp giàn giáo. Trước khi bắt đầu làm, anh làm gì.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、<ruby>四<rt>よっ</rt></ruby>つを<ruby>順<rt>じゅん</rt></ruby>に<ruby>行<rt>おこな</rt></ruby>います。<br>*(Kết luận, tôi làm bốn việc theo thứ tự.)* |
| Thức | <ruby>一<rt>いち</rt></ruby>、<ruby>図面<rt>ずめん</rt></ruby>と<ruby>作業<rt>さぎょう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>。<ruby>二<rt>に</rt></ruby>、<ruby>地盤<rt>じばん</rt></ruby>と<ruby>資材<rt>しざい</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>。<br>*(Một, kiểm bản vẽ và quy trình. Hai, kiểm nền và vật tư.)* |
| Thức | <ruby>三<rt>さん</rt></ruby>、KY<ruby>活動<rt>かつどう</rt></ruby>で<ruby>危険<rt>きけん</rt></ruby>を<ruby>共有<rt>きょうゆう</rt></ruby>。<ruby>四<rt>よん</rt></ruby>、<ruby>安全帯<rt>あんぜんたい</rt></ruby>と<ruby>保護<rt>ほご</rt></ruby><ruby>具<rt>ぐ</rt></ruby>の<ruby>装着<rt>そうちゃく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>です。<br>*(Ba, hoạt động KY chia sẻ nguy hiểm. Bốn, kiểm việc đeo dây an toàn và bảo hộ.)* |
| 試験官 | <ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>経験<rt>けいけん</rt></ruby>はありますか。<br>*(Có kinh nghiệm cụ thể không.)* |
| Thức | はい。<ruby>強風<rt>きょうふう</rt></ruby>で<ruby>足場<rt>あしば</rt></ruby>が<ruby>傾<rt>かたむ</rt></ruby>いた<ruby>際<rt>さい</rt></ruby>、<ruby>事前<rt>じぜん</rt></ruby>の<ruby>退避<rt>たいひ</rt></ruby><ruby>合図<rt>あいず</rt></ruby>で<ruby>全員<rt>ぜんいん</rt></ruby><ruby>無事<rt>ぶじ</rt></ruby>でした。<br>*(Có. Khi gió mạnh giàn giáo nghiêng, nhờ hiệu lệnh rút lui quyết trước mà toàn bộ an toàn.)* |

---

## Tình huống 8 — Phòng vấn đáp · 11:35, câu hỏi ứng phó bất thường

| Vai | Lời thoại |
|---|---|
| 試験官 | <ruby>作業<rt>さぎょう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>足場<rt>あしば</rt></ruby>の<ruby>異常<rt>いじょう</rt></ruby>を<ruby>発見<rt>はっけん</rt></ruby>したら、どう<ruby>対応<rt>たいおう</rt></ruby>しますか。<br>*(Đang làm phát hiện bất thường giàn giáo, anh ứng phó thế nào.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、ただちに<ruby>該当<rt>がいとう</rt></ruby><ruby>区画<rt>くかく</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>中止<rt>ちゅうし</rt></ruby>します。<br>*(Kết luận, dừng ngay công việc khu liên quan.)* |
| Thức | <ruby>理由<rt>りゆう</rt></ruby>は<ruby>二次<rt>にじ</rt></ruby><ruby>災害<rt>さいがい</rt></ruby>の<ruby>防止<rt>ぼうし</rt></ruby>です。<br>*(Lý do là phòng tai nạn thứ phát.)* |
| Thức | <ruby>手順<rt>てじゅん</rt></ruby>は、<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby><ruby>設定<rt>せってい</rt></ruby>、<ruby>監督<rt>かんとく</rt></ruby>へ<ruby>報告<rt>ほうこく</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>、<ruby>是正<rt>ぜせい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>作業<rt>さぎょう</rt></ruby><ruby>再開<rt>さいかい</rt></ruby>です。<br>*(Quy trình là lập cấm vào, báo cáo giám sát, điều tra nguyên nhân, khắc phục xong mới làm lại.)* |
| 試験官 | <ruby>報告<rt>ほうこく</rt></ruby>で<ruby>大切<rt>たいせつ</rt></ruby>なことは。<br>*(Điều quan trọng khi báo cáo là gì.)* |
| Thức | <ruby>事実<rt>じじつ</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に、<ruby>隠<rt>かく</rt></ruby>さず<ruby>速<rt>すみ</rt></ruby>やかに<ruby>伝<rt>つた</rt></ruby>えることです。<br>*(Truyền đạt sự thật chính xác, không che giấu, nhanh chóng.)* |

---

## Tình huống 9 — Phòng vấn đáp · 11:40, câu hỏi quản lý người

| Vai | Lời thoại |
|---|---|
| 試験官 | <ruby>新人<rt>しんじん</rt></ruby>に<ruby>安全<rt>あんぜん</rt></ruby><ruby>教育<rt>きょういく</rt></ruby>をどう<ruby>行<rt>おこな</rt></ruby>いますか。<br>*(Anh tiến hành giáo dục an toàn cho người mới thế nào.)* |
| Thức | <ruby>結論<rt>けつろん</rt></ruby>、<ruby>説明<rt>せつめい</rt></ruby>・<ruby>実演<rt>じつえん</rt></ruby>・<ruby>実施<rt>じっし</rt></ruby>・<ruby>確認<rt>かくにん</rt></ruby>の<ruby>四<rt>よん</rt></ruby><ruby>段階<rt>だんかい</rt></ruby>で<ruby>行<rt>おこな</rt></ruby>います。<br>*(Kết luận, tiến hành theo bốn bước: giải thích, làm mẫu, để làm, kiểm tra.)* |
| Thức | <ruby>理由<rt>りゆう</rt></ruby>は、<ruby>見<rt>み</rt></ruby>るだけでは<ruby>身<rt>み</rt></ruby>につかないからです。<br>*(Lý do là chỉ nhìn thì không vào tay nghề.)* |
| 試験官 | <ruby>実際<rt>じっさい</rt></ruby>の<ruby>例<rt>れい</rt></ruby>を。<br>*(Ví dụ thực tế.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby><ruby>昇降<rt>しょうこう</rt></ruby>の<ruby>際<rt>さい</rt></ruby>、<ruby>三<rt>さん</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>を<ruby>私<rt>わたし</rt></ruby>が<ruby>実演<rt>じつえん</rt></ruby>し、<ruby>本人<rt>ほんにん</rt></ruby>にやらせて<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Khi lên xuống giàn giáo, tôi làm mẫu giữ ba điểm tựa, để người đó làm rồi kiểm.)* |
| 試験官 | はい、<ruby>具体<rt>ぐたい</rt></ruby><ruby>的<rt>てき</rt></ruby>で<ruby>分<rt>わ</rt></ruby>かりやすいです。<br>*(Vâng, cụ thể dễ hiểu.)* |

---

## Tình huống 10 — Hành lang · 12:00, ra khỏi phòng vấn đáp

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>口頭<rt>こうとう</rt></ruby>どうだった。<br>*(Thức, vấn đáp thế nào.)* |
| Thức | <ruby>型<rt>かた</rt></ruby>どおりに<ruby>言<rt>い</rt></ruby>えた。<ruby>模試<rt>もし</rt></ruby>のときとは<ruby>別人<rt>べつじん</rt></ruby>だった。<br>*(Nói được đúng khuôn. Khác hẳn lúc đề mẫu.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>も<ruby>結論<rt>けつろん</rt></ruby>から<ruby>話<rt>はな</rt></ruby>せた。<ruby>練習<rt>れんしゅう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>だな。<br>*(Mình cũng nói được từ kết luận. Thành quả luyện tập.)* |
| Thức | <ruby>事故<rt>じこ</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>話<rt>はな</rt></ruby>したら、<ruby>試験官<rt>しけんかん</rt></ruby>がうなずいてくれた。<br>*(Mình kể trải nghiệm sự cố, giám khảo gật đầu.)* |
| Hùng | <ruby>本物<rt>ほんもの</rt></ruby>の<ruby>体験<rt>たいけん</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>い。<br>*(Trải nghiệm thật thì mạnh.)* |
| Thức | やり<ruby>切<rt>き</rt></ruby>った。あとは<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>つだけだ。<br>*(Làm hết sức rồi. Còn lại chỉ đợi kết quả.)* |

---

## Tình huống 11 — Phòng thi · 13:00, phần lý thuyết bổ sung

| Vai | Lời thoại |
|---|---|
| 試験官 | <ruby>午後<rt>ごご</rt></ruby>は<ruby>応用<rt>おうよう</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>です。<ruby>時間<rt>じかん</rt></ruby>は<ruby>六十分<rt>ろくじゅっぷん</rt></ruby>。<br>*(Buổi chiều là câu vận dụng. Sáu mươi phút.)* |
| Thức | (trong lòng) <ruby>応用<rt>おうよう</rt></ruby>でも<ruby>基本<rt>きほん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだ。<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>こう。<br>*(Vận dụng thì cơ bản vẫn vậy. Bình tĩnh.)* |
| Thức | (đọc đề) <ruby>工程<rt>こうてい</rt></ruby><ruby>遅延<rt>ちえん</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby>が<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>取<rt>と</rt></ruby>るべき<ruby>行動<rt>こうどう</rt></ruby>は…<br>*(Khi chậm tiến độ, hành động đầu tiên của 職長 là…)* |
| Thức | (nghĩ) <ruby>原因<rt>げんいん</rt></ruby><ruby>把握<rt>はあく</rt></ruby>と<ruby>監督<rt>かんとく</rt></ruby>への<ruby>報告<rt>ほうこく</rt></ruby>。<ruby>現場<rt>げんば</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだ。<br>*(Nắm nguyên nhân và báo cáo giám sát. Như công trường.)* |
| Thức | (nghĩ) <ruby>実務<rt>じつむ</rt></ruby>を<ruby>思<rt>おも</rt></ruby>い<ruby>浮<rt>う</rt></ruby>かべれば<ruby>答<rt>こた</rt></ruby>えが<ruby>見<rt>み</rt></ruby>える。<br>*(Hình dung thực tế thì thấy đáp án.)* |
| Thức | (nghĩ) <ruby>残<rt>のこ</rt></ruby>り<ruby>時間<rt>じかん</rt></ruby>で<ruby>見直<rt>みなお</rt></ruby>す。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Thời gian còn lại soát lại. Cẩn thận tới cuối.)* |

---

## Tình huống 12 — Phòng thi · 14:00, hoàn thành toàn bộ phần thi

| Vai | Lời thoại |
|---|---|
| 試験官 | <ruby>時間<rt>じかん</rt></ruby>です。<ruby>筆記<rt>ひっき</rt></ruby><ruby>用具<rt>ようぐ</rt></ruby>を<ruby>置<rt>お</rt></ruby>いてください。これで<ruby>全<rt>すべ</rt></ruby>ての<ruby>試験<rt>しけん</rt></ruby>が<ruby>終了<rt>しゅうりょう</rt></ruby>です。<br>*(Hết giờ. Đặt bút xuống. Toàn bộ phần thi kết thúc.)* |
| Thức | (trong lòng) …<ruby>終<rt>お</rt></ruby>わった。<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>出<rt>だ</rt></ruby>し<ruby>切<rt>き</rt></ruby>った。<br>*(…Xong rồi. Đã dốc hết.)* |
| 試験官 | <ruby>結果<rt>けっか</rt></ruby>は<ruby>後日<rt>ごじつ</rt></ruby>、<ruby>登録<rt>とうろく</rt></ruby>の<ruby>方法<rt>ほうほう</rt></ruby>で<ruby>通知<rt>つうち</rt></ruby>されます。<br>*(Kết quả thông báo sau qua phương thức đã đăng ký.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございました。<br>*(Tôi rõ ạ. Cảm ơn ạ.)* |
| 試験官 | お<ruby>疲<rt>つか</rt></ruby>れさまでした。<ruby>気<rt>き</rt></ruby>をつけてお<ruby>帰<rt>かえ</rt></ruby>りください。<br>*(Vất vả rồi. Về cẩn thận nhé.)* |
| Thức | はい、<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Vâng, tôi xin phép.)* |

---

## Tình huống 13 — Trước điểm thi · 14:30, Thức và Hùng trút gánh nặng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>終<rt>お</rt></ruby>わったな。<br>*(Thức, xong rồi nhỉ.)* |
| Thức | ああ。<ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、<ruby>長<rt>なが</rt></ruby>かった。<br>*(Ừ. Ba tháng, dài thật.)* |
| Hùng | <ruby>模試<rt>もし</rt></ruby>でへこんで、<ruby>事故<rt>じこ</rt></ruby>もあって…よくここまで<ruby>来<rt>き</rt></ruby>たな。<br>*(Tụt mood ở đề mẫu, lại có sự cố nữa… đi tới đây cũng tài.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>だったら<ruby>無理<rt>むり</rt></ruby>だった。お<ruby>前<rt>まえ</rt></ruby>がいたからだ。<br>*(Một mình thì không nổi. Vì có cậu.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>もだよ。<ruby>結果<rt>けっか</rt></ruby>はどうあれ、やり<ruby>切<rt>き</rt></ruby>った。<br>*(Mình cũng vậy. Kết quả thế nào cũng đã làm hết sức.)* |
| Thức | <ruby>胸<rt>むね</rt></ruby>を<ruby>張<rt>は</rt></ruby>って<ruby>待<rt>ま</rt></ruby>とう。<br>*(Ưỡn ngực mà chờ thôi.)* |

---

## Tình huống 14 — Ga tàu · 15:00, gọi Linh báo thi xong (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, anh thi xong rồi. Vừa ra khỏi điểm thi. |
| Linh | Anh ơi, vất vả quá. Anh thấy thế nào? |
| Thức | Phần vấn đáp anh nói được đúng khuôn, còn kể được trải nghiệm sự cố hôm trước. Giám khảo gật đầu. Anh thấy mình đã dốc hết. |
| Linh | Em mừng cho anh quá. Dù kết quả ra sao, anh đã đi trọn con đường rồi. |
| Thức | Ừ. Giờ chỉ còn đợi kết quả thôi. Anh nhẹ cả người. |
| Linh | Anh nghỉ ngơi đi nhé, ba tháng nay anh căng lắm rồi. Em luôn ở đây mà. |

---

## Tình huống 15 — Công trường · sáng hôm sau 8:00, trở lại làm việc bình thản

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Chào buổi sáng. Xác nhận công việc hôm nay.)* |
| 近藤先輩 | おう、<ruby>試験<rt>しけん</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさん。どうやった。<br>*(Ờ, thi vất vả nhé. Thế nào.)* |
| Thức | やれることはやりました。あとは<ruby>待<rt>ま</rt></ruby>つだけです。<br>*(Em làm hết những gì làm được. Còn lại chỉ chờ ạ.)* |
| 近藤先輩 | ええ<ruby>顔<rt>かお</rt></ruby>しとるな。<ruby>悔<rt>く</rt></ruby>いはなさそうや。<br>*(Mặt mũi tốt đấy. Có vẻ không hối tiếc gì.)* |
| Thức | はい。<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>します。<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>つ<ruby>間<rt>あいだ</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>は<ruby>動<rt>うご</rt></ruby>きます。<br>*(Vâng. Em tập trung công việc. Lúc chờ kết quả công trường vẫn chạy ạ.)* |
| 近藤先輩 | その<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え、ええで。<br>*(Cái sự chuyển nhịp đó, tốt đấy.)* |

---

## Tình huống 16 — Văn phòng · 12:00, 親方 hỏi chuyện thi

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>試験<rt>しけん</rt></ruby>はやり<ruby>切<rt>き</rt></ruby>ったか。<br>*(Thức, thi đã dốc hết chưa.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>口頭<rt>こうとう</rt></ruby>で<ruby>事故<rt>じこ</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby>を<ruby>自分<rt>じぶん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>で<ruby>話<rt>はな</rt></ruby>せました。<br>*(Vâng, thưa sếp. Phần vấn đáp em kể được trải nghiệm sự cố bằng lời mình ạ.)* |
| 谷川親方 | それや。<ruby>借<rt>か</rt></ruby>り<ruby>物<rt>もの</rt></ruby>やない、お<ruby>前<rt>まえ</rt></ruby>が<ruby>生<rt>い</rt></ruby>きた<ruby>経験<rt>けいけん</rt></ruby>や。<br>*(Chính nó. Không phải vay mượn, là trải nghiệm cậu đã sống.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>の「<ruby>備<rt>そな</rt></ruby>えた<ruby>者<rt>もの</rt></ruby>だけが<ruby>守<rt>まも</rt></ruby>れる」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>話<rt>はな</rt></ruby>しました。<br>*(Em đã nói câu của sếp: chỉ kẻ chuẩn bị mới bảo vệ được.)* |
| 谷川親方 | はは、<ruby>俺<rt>おれ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>か。<ruby>使<rt>つか</rt></ruby>えるもんは<ruby>何<rt>なん</rt></ruby>でも<ruby>使<rt>つか</rt></ruby>えや。<br>*(Haha, câu của tôi à. Dùng được cái gì thì cứ dùng.)* |
| Thức | はい。<ruby>結果<rt>けっか</rt></ruby>がどうあれ、<ruby>悔<rt>く</rt></ruby>いはありません。<br>*(Vâng. Kết quả thế nào cũng không hối tiếc ạ.)* |

---

## Tình huống 17 — Công trường · 14:00, vẫn tập trung việc 職長

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>三層目<rt>さんそうめ</rt></ruby>の<ruby>布板<rt>ぬのいた</rt></ruby><ruby>固定<rt>こてい</rt></ruby>が<ruby>終<rt>お</rt></ruby>わりました。<br>*(Anh Thức, cố định ván sàn tầng ba xong ạ.)* |
| Thức | <ruby>固定<rt>こてい</rt></ruby>の<ruby>確認<rt>かくにん</rt></ruby>と<ruby>手<rt>て</rt></ruby>すりの<ruby>高<rt>たか</rt></ruby>さを<ruby>点検<rt>てんけん</rt></ruby>したか。<br>*(Đã kiểm cố định và chiều cao tay vịn chưa.)* |
| Nam | はい、<ruby>規定<rt>きてい</rt></ruby>どおりです。<ruby>記録<rt>きろく</rt></ruby>も<ruby>付<rt>つ</rt></ruby>けました。<br>*(Vâng, đúng quy định. Em ghi chép luôn rồi ạ.)* |
| Thức | よくできている。<ruby>記録<rt>きろく</rt></ruby>を<ruby>習慣<rt>しゅうかん</rt></ruby>にできたな。<ruby>成長<rt>せいちょう</rt></ruby>したぞ。<br>*(Làm tốt. Ghi chép thành thói quen rồi. Trưởng thành đấy.)* |
| Nam | トゥックさんに<ruby>教<rt>おそ</rt></ruby>わったからです。<br>*(Là vì được anh Thức dạy ạ.)* |
| Thức | これからも<ruby>基本<rt>きほん</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にな。それが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<br>*(Sau này cũng trọng cái cơ bản. Đó là thứ giữ mạng.)* |

---

## Tình huống 18 — Khu nghỉ · 12:10, Hùng nói chuyện chờ kết quả

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>まで<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>かないな。<br>*(Thức, tới lúc công bố kết quả cứ thấp thỏm nhỉ.)* |
| Thức | <ruby>考<rt>かんが</rt></ruby>えても<ruby>結果<rt>けっか</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらない。<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>しよう。<br>*(Nghĩ thì kết quả cũng không đổi. Tập trung công việc thôi.)* |
| Hùng | <ruby>強<rt>つよ</rt></ruby>いな、<ruby>相変<rt>あいか</rt></ruby>わらず。<br>*(Vẫn mạnh mẽ như mọi khi.)* |
| Thức | <ruby>強<rt>つよ</rt></ruby>くない。ただ、<ruby>待<rt>ま</rt></ruby>つ<ruby>間<rt>あいだ</rt></ruby>もやることはある。<br>*(Không mạnh đâu. Chỉ là lúc chờ vẫn có việc phải làm.)* |
| Hùng | <ruby>確<rt>たし</rt></ruby>かに。<ruby>現場<rt>げんば</rt></ruby>は<ruby>待<rt>ま</rt></ruby>ってくれないしな。<br>*(Đúng thật. Công trường có chờ đâu.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>たら、また<ruby>二人<rt>ふたり</rt></ruby>で<ruby>報告<rt>ほうこく</rt></ruby>し<ruby>合<rt>あ</rt></ruby>おう。<br>*(Có kết quả thì hai đứa lại báo cho nhau.)* |

---

## Tình huống 19 — Văn phòng · 17:30, 斉藤 nói về thái độ chờ kết quả

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>試験<rt>しけん</rt></ruby>のあとも<ruby>現場<rt>げんば</rt></ruby>が<ruby>安定<rt>あんてい</rt></ruby>しているな。<br>*(Thức, sau thi công trường vẫn ổn định nhỉ.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>では<ruby>変<rt>か</rt></ruby>えられません。<ruby>変<rt>か</rt></ruby>えられるのは<ruby>今<rt>いま</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Kết quả em không tự đổi được. Đổi được là công việc bây giờ.)* |
| 斉藤職長 | いい<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>だ。それが<ruby>本物<rt>ほんもの</rt></ruby>の<ruby>職長<rt>しょくちょう</rt></ruby>の<ruby>姿勢<rt>しせい</rt></ruby>だ。<br>*(Cách nghĩ tốt. Đó là tư thế của 職長 thực thụ.)* |
| Thức | <ruby>合否<rt>ごうひ</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby>なく、<ruby>現場<rt>げんば</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>責任<rt>せきにん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じです。<br>*(Đỗ hay trượt, trách nhiệm giữ công trường vẫn vậy ạ.)* |
| 斉藤職長 | その<ruby>言葉<rt>ことば</rt></ruby>が<ruby>聞<rt>き</rt></ruby>けて<ruby>安心<rt>あんしん</rt></ruby>した。<br>*(Nghe được câu đó tôi yên tâm.)* |
| Thức | ありがとうございます。<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちます。<br>*(Cảm ơn anh. Em chờ kết quả ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 21:00, Thức tự nhìn lại sau thi (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | (gọi Linh) Linh à, hôm nay anh đi làm lại bình thường. Lạ là anh thấy nhẹ chứ không bồn chồn. |
| Linh | Vì anh đã dốc hết rồi, không còn gì để tiếc nữa. |
| Thức | Ừ. Ba tháng qua anh học được nhiều hơn cả kiến thức thi. Anh hiểu nghề mình sâu hơn. |
| Linh | Đó mới là cái lớn nhất anh à. Đỗ hay chưa đỗ, anh đã trưởng thành thật rồi. |
| Thức | Cảm ơn em đã đi cùng anh suốt. Mỗi tuần em nghe anh kể, anh vững hơn nhiều. |
| Linh | Em thích nghe anh kể mà. Giờ mình cứ chờ kết quả, bình tĩnh anh nhé. |

---

## Đọng lại

Ngày thi 特定技能2号評価試験 tới như đỉnh của ba tháng và của cả series. Thức bước vào phòng thi với thể trạng sung sức, làm thủ tục nhận diện chuẩn mực, vượt phần lý thuyết bằng chính những thứ cơ thể đã nhớ ở công trường, đọc bản vẽ và quan trọng nhất — phần vấn đáp vai 職長. Lần này, khác hẳn cú be bét ở đề mẫu, em trả lời đúng khuôn "kết luận trước, lý do, quy trình", và khi được hỏi kinh nghiệm cụ thể, em kể chính sự cố giàn giáo nghiêng vừa xử lý cùng câu nói của 親方 — giám khảo gật đầu. Ra khỏi phòng thi, Thức nhẹ cả người: đã dốc hết, không còn gì để tiếc. Hôm sau em trở lại công trường với một tư thế chín chắn — kết quả không tự đổi được, nhưng công việc hôm nay thì có. Đó là tư thế của một 職長 thực thụ.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 受験票 | じゅけんひょう | phiếu dự thi |
> | 本人確認 | ほんにんかくにん | xác nhận danh tính |
> | 注意事項 | ちゅういじこう | các điều cần lưu ý |
> | 学科試験 | がっかしけん | phần thi lý thuyết |
> | 実技 | じつぎ | phần thi thực hành |
> | 口頭試問 | こうとうしもん | phần thi vấn đáp |
> | 不適切 | ふてきせつ | không phù hợp, không thỏa đáng |
> | 改善策 | かいぜんさく | phương án cải thiện |
> | 三点支持 | さんてんしじ | giữ ba điểm tựa (khi leo) |
> | 応用問題 | おうようもんだい | câu hỏi vận dụng |
> | 筆記用具 | ひっきようぐ | dụng cụ viết |
> | 合否 | ごうひ | đỗ hay trượt |
> | 通知 | つうち | sự thông báo |
> | 切り替え | きりかえ | sự chuyển nhịp, chuyển trạng thái |
> | 万全 | ばんぜん | hoàn hảo, chu toàn |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000007, 800000038, NULL, 'markdown_book', 'T7. Chờ kết quả — dẫn lớp 育成就労, khép vòng "đàn anh" (結果待ち)', '# Sách kỹ năng đặc định xây dựng · T7. Chờ kết quả — dẫn lớp 育成就労, khép vòng "đàn anh" (結果待ち)

> **Mục tiêu nhân vật:** Trong lúc chờ kết quả 2号評価試験, Thức tiếp tục dẫn dắt lớp đàn em 育成就労 (chế độ kế thừa 技能実習 tại thời điểm biên soạn), khép lại vòng "từng là TTS, nay là đàn anh". Học mẫu câu nghiệp vụ hướng dẫn người mới, truyền kinh nghiệm và mẫu câu giữ tâm thế lúc chờ đợi.

---

## Bối cảnh

Giữa tháng 8 năm 2031. Thức đã thi xong, đang chờ kết quả 特定技能2号評価試験. Tổ thợ とび của 谷川親方 nhận thêm hai đàn em diện 育成就労 — chế độ tiếp nhận lao động nước ngoài kế thừa 技能実習 (theo lộ trình cải cách công bố tại thời điểm biên soạn 2026, vận hành chi tiết có thể thay đổi). Thức từng là thực tập sinh bỡ ngỡ, nay chính thức là người kèm đàn em — vòng tròn khép lại. Chương này tập trung mẫu câu hướng dẫn người mới, truyền kinh nghiệm an toàn nghề とび, và mẫu câu giữ tâm thế bình thản lúc chờ kết quả. *(Chế độ 育成就労 nêu trong sách theo định hướng tại thời điểm biên soạn 2026.)*

---

## Tình huống 1 — Văn phòng · 8:00, 親方 giao việc kèm đàn em

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>今日<rt>きょう</rt></ruby>から<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>の<ruby>新人<rt>しんじん</rt></ruby>が<ruby>二人<rt>ふたり</rt></ruby><ruby>入<rt>はい</rt></ruby>る。お<ruby>前<rt>まえ</rt></ruby>が<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てくれ。<br>*(Thức, từ hôm nay có hai đàn em diện 育成就労 vào. Cậu trông coi giúp.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>指導<rt>しどう</rt></ruby>します。<br>*(Vâng, thưa sếp. Em sẽ hướng dẫn có trách nhiệm.)* |
| 谷川親方 | お<ruby>前<rt>まえ</rt></ruby>も<ruby>来日<rt>らいにち</rt></ruby>したときは<ruby>右<rt>みぎ</rt></ruby>も<ruby>左<rt>ひだり</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からんかったやろ。<br>*(Cậu hồi mới sang cũng có biết gì đâu nhỉ.)* |
| Thức | はい、<ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>に<ruby>一<rt>いち</rt></ruby>から<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Vâng, em được sếp Tanigawa dạy từ đầu ạ.)* |
| 谷川親方 | その<ruby>恩<rt>おん</rt></ruby>を<ruby>下<rt>した</rt></ruby>に<ruby>返<rt>かえ</rt></ruby>すんや。それが<ruby>職人<rt>しょくにん</rt></ruby>の<ruby>世界<rt>せかい</rt></ruby>や。<br>*(Trả cái ơn đó cho lớp sau. Đó là thế giới của thợ.)* |
| Thức | <ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<ruby>自分<rt>じぶん</rt></ruby>がしてもらったように<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Em khắc trong lòng. Em sẽ dạy như mình từng được dạy ạ.)* |

---

## Tình huống 2 — Sảnh công trường · 8:20, gặp hai đàn em mới

| Vai | Lời thoại |
|---|---|
| Thức | はじめまして。<ruby>職長<rt>しょくちょう</rt></ruby>のトゥックです。<ruby>同<rt>おな</rt></ruby>じベトナム<ruby>出身<rt>しゅっしん</rt></ruby>です。<br>*(Rất hân hạnh. Tôi là Thức, 職長. Cũng người Việt Nam.)* |
| ドゥック | はじめまして。グエン・ヴァン・ドゥックです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Rất hân hạnh. Em là Nguyễn Văn Đức. Mong được chỉ bảo ạ.)* |
| クアン | レ・クアンです。<ruby>建設<rt>けんせつ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。<br>*(Em là Lê Quân. Việc xây dựng em làm lần đầu ạ.)* |
| Thức | <ruby>緊張<rt>きんちょう</rt></ruby>しなくていい。<ruby>分<rt>わ</rt></ruby>からないことは<ruby>遠慮<rt>えんりょ</rt></ruby>なく<ruby>聞<rt>き</rt></ruby>いてください。<br>*(Không cần hồi hộp. Có gì không hiểu cứ hỏi đừng ngại.)* |
| ドゥック | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>のことから<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>ることが<ruby>一番<rt>いちばん</rt></ruby>です。<br>*(Đầu tiên học từ an toàn. Giữ mạng là số một.)* |

---

## Tình huống 3 — Khu an toàn · 8:40, dạy đeo trang bị bảo hộ

| Vai | Lời thoại |
|---|---|
| Thức | まず<ruby>保護<rt>ほご</rt></ruby><ruby>具<rt>ぐ</rt></ruby>です。ヘルメットのあごひもは<ruby>必<rt>かなら</rt></ruby>ず<ruby>締<rt>し</rt></ruby>めます。<br>*(Trước hết bảo hộ. Quai mũ bảo hiểm nhất định siết chặt.)* |
| クアン | あごひもを<ruby>締<rt>し</rt></ruby>めないと<ruby>危<rt>あぶ</rt></ruby>ないですか。<br>*(Không siết quai thì nguy hiểm ạ?)* |
| Thức | <ruby>転倒<rt>てんとう</rt></ruby><ruby>時<rt>じ</rt></ruby>にヘルメットが<ruby>外<rt>はず</rt></ruby>れると<ruby>頭<rt>あたま</rt></ruby>を<ruby>守<rt>まも</rt></ruby>れません。だから<ruby>必<rt>かなら</rt></ruby>ず<ruby>締<rt>し</rt></ruby>めます。<br>*(Khi ngã mà mũ tuột thì không bảo vệ được đầu. Nên nhất định siết.)* |
| ドゥック | <ruby>安全帯<rt>あんぜんたい</rt></ruby>はどう<ruby>使<rt>つか</rt></ruby>いますか。<br>*(Dây an toàn dùng thế nào ạ?)* |
| Thức | <ruby>高<rt>たか</rt></ruby>さ<ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>では<ruby>必<rt>かなら</rt></ruby>ずフックを<ruby>掛<rt>か</rt></ruby>けます。<ruby>移動<rt>いどう</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>も<ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby><ruby>掛<rt>か</rt></ruby>けが<ruby>原則<rt>げんそく</rt></ruby>です。<br>*(Từ hai mét trở lên nhất định gài móc. Cả lúc di chuyển nguyên tắc là gài hai móc.)* |
| クアン | <ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わることですね。<br>*(Em nhớ ạ. Là việc liên quan tới mạng nhỉ.)* |

---

## Tình huống 4 — Bãi vật tư · 9:30, dạy gọi tên vật tư giàn giáo

| Vai | Lời thoại |
|---|---|
| Thức | これが<ruby>建地<rt>たてじ</rt></ruby>、<ruby>縦<rt>たて</rt></ruby>の<ruby>柱<rt>はしら</rt></ruby>です。これが<ruby>布<rt>ぬの</rt></ruby>、<ruby>横<rt>よこ</rt></ruby>の<ruby>材<rt>ざい</rt></ruby>です。<br>*(Đây là cột đứng, trụ thẳng đứng. Đây là thanh ngang, cấu kiện nằm ngang.)* |
| ドゥック | <ruby>名前<rt>なまえ</rt></ruby>がたくさんありますね。<br>*(Nhiều tên thật ạ.)* |
| Thức | <ruby>最初<rt>さいしょ</rt></ruby>は<ruby>大変<rt>たいへん</rt></ruby>でも、<ruby>毎日<rt>まいにち</rt></ruby><ruby>触<rt>さわ</rt></ruby>れば<ruby>必<rt>かなら</rt></ruby>ず<ruby>覚<rt>おぼ</rt></ruby>えます。<ruby>俺<rt>おれ</rt></ruby>もそうでした。<br>*(Đầu vất vả nhưng ngày nào cũng đụng thì chắc chắn nhớ. Tôi cũng vậy.)* |
| クアン | トゥックさんも<ruby>最初<rt>さいしょ</rt></ruby>は<ruby>分<rt>わ</rt></ruby>からなかったんですか。<br>*(Anh Thức lúc đầu cũng không biết ạ?)* |
| Thức | もちろん。<ruby>五年<rt>ごねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>は<ruby>君<rt>きみ</rt></ruby>たちと<ruby>同<rt>おな</rt></ruby>じ<ruby>立場<rt>たちば</rt></ruby>だった。<ruby>焦<rt>あせ</rt></ruby>らなくていい。<br>*(Tất nhiên. Năm năm trước tôi cùng vị trí với các em. Không cần vội.)* |
| ドゥック | <ruby>安心<rt>あんしん</rt></ruby>しました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em yên tâm ạ. Em sẽ cố gắng.)* |

---

## Tình huống 5 — Khu nghỉ · 12:10, Hùng nói chuyện chờ kết quả

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>はまだだな。<ruby>気<rt>き</rt></ruby>になるか。<br>*(Thức, chưa công bố kết quả nhỉ. Có sốt ruột không.)* |
| Thức | <ruby>気<rt>き</rt></ruby>にはなる。でも<ruby>新人<rt>しんじん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てると<ruby>気<rt>き</rt></ruby>が<ruby>紛<rt>まぎ</rt></ruby>れる。<br>*(Có sốt ruột. Nhưng kèm đàn em thì khuây đi.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>はそわそわして<ruby>仕方<rt>しかた</rt></ruby>ない。<br>*(Mình thì cứ bồn chồn không yên.)* |
| Thức | <ruby>待<rt>ま</rt></ruby>つ<ruby>間<rt>あいだ</rt></ruby>こそ、<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>だ。<br>*(Chính lúc chờ mới tập trung vào việc trước mắt.)* |
| Hùng | お<ruby>前<rt>まえ</rt></ruby>の<ruby>言<rt>い</rt></ruby>うとおりだな。<ruby>俺<rt>おれ</rt></ruby>も<ruby>気<rt>き</rt></ruby>を<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>える。<br>*(Cậu nói đúng. Mình cũng chuyển nhịp.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>るまで、できることをやろう。<br>*(Tới khi có kết quả, mình làm điều làm được.)* |

---

## Tình huống 6 — Trên giàn giáo · 14:00, kèm Đức thao tác đầu tiên

| Vai | Lời thoại |
|---|---|
| Thức | ドゥック、まず<ruby>三<rt>さん</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>。<ruby>両手<rt>りょうて</rt></ruby>と<ruby>片足<rt>かたあし</rt></ruby>で<ruby>体<rt>からだ</rt></ruby>を<ruby>支<rt>ささ</rt></ruby>えてから<ruby>動<rt>うご</rt></ruby>く。<br>*(Đức, trước hết ba điểm tựa. Đỡ người bằng hai tay một chân rồi mới di chuyển.)* |
| ドゥック | こうですか。<ruby>怖<rt>こわ</rt></ruby>いです。<br>*(Thế này ạ? Em sợ.)* |
| Thức | <ruby>怖<rt>こわ</rt></ruby>いのは<ruby>正常<rt>せいじょう</rt></ruby>だ。その<ruby>怖<rt>こわ</rt></ruby>さが<ruby>慎重<rt>しんちょう</rt></ruby>さになる。<br>*(Sợ là bình thường. Cái sợ đó thành sự cẩn thận.)* |
| ドゥック | フックは<ruby>常<rt>つね</rt></ruby>に<ruby>掛<rt>か</rt></ruby>けたままですね。<br>*(Móc lúc nào cũng gài nhỉ.)* |
| Thức | そうだ。<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えるときは<ruby>必<rt>かなら</rt></ruby>ずもう<ruby>一方<rt>いっぽう</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>掛<rt>か</rt></ruby>ける。<ruby>無<rt>む</rt></ruby><ruby>掛<rt>か</rt></ruby>けの<ruby>瞬間<rt>しゅんかん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>らない。<br>*(Đúng. Khi đổi móc nhất định gài cái kia trước. Không tạo khoảnh khắc không móc nào.)* |
| ドゥック | <ruby>分<rt>わ</rt></ruby>かりました。ゆっくりやります。<br>*(Em hiểu rồi. Em làm từ từ ạ.)* |

---

## Tình huống 7 — Trên giàn giáo · 14:30, sửa thao tác sai của Quân

| Vai | Lời thoại |
|---|---|
| Thức | クアン、<ruby>待<rt>ま</rt></ruby>って。<ruby>今<rt>いま</rt></ruby>フックが<ruby>外<rt>はず</rt></ruby>れていた。<br>*(Quân, khoan. Vừa rồi móc tuột ra.)* |
| クアン | あ…<ruby>移動<rt>いどう</rt></ruby>のときに<ruby>外<rt>はず</rt></ruby>してしまいました。<br>*(À… lúc di chuyển em tháo mất ạ.)* |
| Thức | <ruby>叱<rt>しか</rt></ruby>っているんじゃない。<ruby>一番<rt>いちばん</rt></ruby><ruby>危<rt>あぶ</rt></ruby>ない<ruby>瞬間<rt>しゅんかん</rt></ruby>だから<ruby>言<rt>い</rt></ruby>う。<br>*(Không phải mắng. Vì đó là khoảnh khắc nguy hiểm nhất nên tôi nói.)* |
| クアン | すみません。<ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Em xin lỗi. Lần sau em chú ý ạ.)* |
| Thức | <ruby>失敗<rt>しっぱい</rt></ruby>はいい。<ruby>同<rt>おな</rt></ruby>じことを<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>さなければ<ruby>成長<rt>せいちょう</rt></ruby>だ。もう<ruby>一回<rt>いっかい</rt></ruby>やってみよう。<br>*(Sai không sao. Không lặp lại là trưởng thành. Làm lại một lần đi.)* |
| クアン | はい、<ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby><ruby>掛<rt>か</rt></ruby>けを<ruby>守<rt>まも</rt></ruby>ります。<br>*(Vâng, em giữ gài hai móc ạ.)* |

---

## Tình huống 8 — Văn phòng · 17:00, báo cáo tiến độ kèm đàn em cho 斉藤

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>新人<rt>しんじん</rt></ruby>の<ruby>様子<rt>ようす</rt></ruby>はどうだ。<br>*(Thức, đàn em mới thế nào.)* |
| Thức | ドゥックは<ruby>慎重<rt>しんちょう</rt></ruby>、クアンは<ruby>動<rt>うご</rt></ruby>きが<ruby>早<rt>はや</rt></ruby>いですが<ruby>注意<rt>ちゅうい</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>です。<br>*(Đức cẩn thận, Quân nhanh tay nhưng cần để ý ạ.)* |
| 斉藤職長 | <ruby>一人<rt>ひとり</rt></ruby>ひとり<ruby>違<rt>ちが</rt></ruby>う。よく<ruby>見<rt>み</rt></ruby>ているな。<br>*(Mỗi người mỗi khác. Em quan sát kỹ đấy.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>が<ruby>教<rt>おそ</rt></ruby>わったとき、<ruby>見<rt>み</rt></ruby>てもらえると<ruby>安心<rt>あんしん</rt></ruby>でした。それを<ruby>返<rt>かえ</rt></ruby>します。<br>*(Hồi em được dạy, được để mắt tới thì yên tâm. Em trả lại điều đó.)* |
| 斉藤職長 | それが<ruby>指導<rt>しどう</rt></ruby>の<ruby>本質<rt>ほんしつ</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>先輩<rt>せんぱい</rt></ruby>だ。<br>*(Đó là bản chất của dạy dỗ. Em đã là một đàn anh đàng hoàng.)* |
| Thức | ありがとうございます。<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かず<ruby>育<rt>そだ</rt></ruby>てます。<br>*(Cảm ơn anh. Em không lơ là, sẽ dạy chu đáo ạ.)* |

---

## Tình huống 9 — Phòng trọ Thức · 21:00, gọi Linh kể chuyện kèm đàn em (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, tổ anh nhận hai đàn em diện 育成就労 mới sang. 親方 giao anh kèm. |
| Linh | Vậy là anh thành thầy của lớp sau rồi. Cảm giác thế nào anh? |
| Thức | Lạ lắm. Năm năm trước anh đúng như tụi nó, bỡ ngỡ, sợ độ cao. Giờ anh dạy lại. |
| Linh | Vòng tròn khép lại đẹp quá anh. Anh trả cái ơn người ta dạy mình cho lớp sau. |
| Thức | 親方 nói y vậy: trả ơn xuống lớp dưới, đó là thế giới của thợ. Kèm tụi nó anh cũng đỡ sốt ruột chờ kết quả. |
| Linh | Em thấy anh hợp với việc dìu dắt người ta lắm. Cứ thế anh nhé, kết quả rồi sẽ tới. |

---

## Tình huống 10 — Công trường · 8:00, 朝礼 có đàn em mới

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby><ruby>二人<rt>ふたり</rt></ruby>も<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>加<rt>くわ</rt></ruby>わります。<br>*(Chào buổi sáng. Từ hôm nay hai đàn em mới cũng vào làm.)* |
| 近藤先輩 | おう、<ruby>若<rt>わか</rt></ruby>い<ruby>力<rt>ちから</rt></ruby>やな。<ruby>頼<rt>たの</rt></ruby>もしい。<br>*(Ờ, sức trẻ đấy. Đáng tin cậy.)* |
| Thức | <ruby>二人<rt>ふたり</rt></ruby>はまだ<ruby>慣<rt>な</rt></ruby>れていません。<ruby>周<rt>まわ</rt></ruby>りも<ruby>声<rt>こえ</rt></ruby>をかけてあげてください。<br>*(Hai em chưa quen. Mong mọi người cũng để ý gọi nhắc giúp.)* |
| 近藤先輩 | <ruby>任<rt>まか</rt></ruby>せとき。<ruby>俺<rt>おれ</rt></ruby>らも<ruby>見<rt>み</rt></ruby>とくわ。<br>*(Cứ để đó. Bọn tôi cũng để mắt.)* |
| Thức | ありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>危険<rt>きけん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>は<ruby>三層目<rt>さんそうめ</rt></ruby>の<ruby>組立<rt>くみたて</rt></ruby>です。<br>*(Cảm ơn mọi người. Chỗ nguy hiểm hôm nay là lắp tầng ba.)* |
| Nam | <ruby>新人<rt>しんじん</rt></ruby>は<ruby>下<rt>した</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めますか。<br>*(Đàn em mới bắt đầu từ chuẩn bị dưới đất ạ?)* |
| Thức | そうだ。<ruby>地上<rt>ちじょう</rt></ruby><ruby>作業<rt>さぎょう</rt></ruby>で<ruby>基本<rt>きほん</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めてから<ruby>上<rt>うえ</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げる。<br>*(Đúng. Cho làm dưới đất nắm cơ bản rồi mới cho lên cao.)* |

---

## Tình huống 11 — Bãi vật tư · 10:00, dạy cách bê và chuyền vật tư

| Vai | Lời thoại |
|---|---|
| Thức | クアン、<ruby>単管<rt>たんかん</rt></ruby>を<ruby>運<rt>はこ</rt></ruby>ぶときは<ruby>腰<rt>こし</rt></ruby>を<ruby>落<rt>お</rt></ruby>として<ruby>持<rt>も</rt></ruby>つ。<ruby>腰<rt>こし</rt></ruby>を<ruby>痛<rt>いた</rt></ruby>めないためだ。<br>*(Quân, khi mang ống đơn thì hạ thấp hông mà nâng. Để khỏi đau lưng.)* |
| クアン | こうですね。<ruby>重<rt>おも</rt></ruby>いです。<br>*(Thế này nhỉ. Nặng ạ.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>で<ruby>無理<rt>むり</rt></ruby>するな。<ruby>長<rt>なが</rt></ruby>いものは<ruby>二人<rt>ふたり</rt></ruby>で<ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>け<ruby>合<rt>あ</rt></ruby>って<ruby>運<rt>はこ</rt></ruby>ぶ。<br>*(Đừng gắng một mình. Cái dài thì hai người hô nhau cùng khiêng.)* |
| ドゥック | <ruby>声<rt>こえ</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けるのは、なぜですか。<br>*(Hô nhau để làm gì ạ?)* |
| Thức | タイミングを<ruby>合<rt>あ</rt></ruby>わせて<ruby>事故<rt>じこ</rt></ruby>を<ruby>防<rt>ふせ</rt></ruby>ぐためだ。「せーの」で<ruby>同時<rt>どうじ</rt></ruby>に<ruby>持<rt>も</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げる。<br>*(Để khớp nhịp, tránh tai nạn. Hô "một hai" rồi nâng cùng lúc.)* |
| クアン | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>します。<br>*(Em hiểu rồi. Em sẽ hô ạ.)* |

---

## Tình huống 12 — Khu nghỉ · 12:10, đàn em hỏi chuyện 特定技能

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさんは<ruby>特定技能<rt>とくていぎのう</rt></ruby>なんですよね。<ruby>僕<rt>ぼく</rt></ruby>たちもなれますか。<br>*(Anh Thức là 特定技能 phải không ạ. Bọn em cũng thành được không ạ?)* |
| Thức | なれる。<ruby>育成<rt>いくせい</rt></ruby><ruby>就労<rt>しゅうろう</rt></ruby>で<ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>んで、<ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>すれば<ruby>道<rt>みち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>ける。<br>*(Được. Tích kinh nghiệm bằng 育成就労, đỗ thi thì con đường mở ra.)* |
| クアン | <ruby>難<rt>むずか</rt></ruby>しそうですね。<br>*(Nghe khó ạ.)* |
| Thức | <ruby>難<rt>むずか</rt></ruby>しい。でも<ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ<ruby>積<rt>つ</rt></ruby>めば<ruby>必<rt>かなら</rt></ruby>ず<ruby>届<rt>とど</rt></ruby>く。<ruby>俺<rt>おれ</rt></ruby>がそうだった。<br>*(Khó. Nhưng tích từng bước thì chắc chắn tới. Tôi đã vậy.)* |
| ドゥック | トゥックさんを<ruby>目標<rt>もくひょう</rt></ruby>にします。<br>*(Em lấy anh Thức làm mục tiêu ạ.)* |
| Thức | <ruby>目標<rt>もくひょう</rt></ruby>は<ruby>自分<rt>じぶん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えていい。それが<ruby>俺<rt>おれ</rt></ruby>の<ruby>願<rt>ねが</rt></ruby>いだ。<br>*(Mục tiêu cứ vượt qua tôi cũng được. Đó là điều tôi mong.)* |

---

## Tình huống 13 — Công trường · 14:00, đàn em tiến bộ rõ

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、<ruby>三<rt>さん</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>支持<rt>しじ</rt></ruby>、できるようになりました。<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Thức, ba điểm tựa em làm được rồi ạ. Anh xem giúp.)* |
| Thức | (quan sát) いいぞ。<ruby>動<rt>うご</rt></ruby>く<ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>体<rt>からだ</rt></ruby>を<ruby>固定<rt>こてい</rt></ruby>している。<ruby>三日<rt>みっか</rt></ruby>で<ruby>身<rt>み</rt></ruby>についたな。<br>*(Quan sát. Tốt. Trước khi cử động luôn cố định người. Ba ngày đã vào tay rồi.)* |
| ドゥック | トゥックさんが<ruby>毎回<rt>まいかい</rt></ruby><ruby>声<rt>こえ</rt></ruby>をかけてくれるからです。<br>*(Là vì anh Thức lần nào cũng nhắc ạ.)* |
| Thức | <ruby>成長<rt>せいちょう</rt></ruby>は<ruby>君<rt>きみ</rt></ruby>の<ruby>努力<rt>どりょく</rt></ruby>だ。<ruby>自信<rt>じしん</rt></ruby>を<ruby>持<rt>も</rt></ruby>っていい。<br>*(Trưởng thành là nỗ lực của em. Cứ tự tin đi.)* |
| ドゥック | はい、ありがとうございます。<br>*(Vâng, cảm ơn anh ạ.)* |
| Thức | (trong lòng) <ruby>誰<rt>だれ</rt></ruby>かが<ruby>伸<rt>の</rt></ruby>びるのを<ruby>見<rt>み</rt></ruby>るのは、いいものだな。<br>*(Nhìn ai đó tiến bộ, đúng là điều dễ chịu.)* |

---

## Tình huống 14 — Văn phòng · 17:00, 親方 nói về việc nối tiếp thế hệ

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>新人<rt>しんじん</rt></ruby>が<ruby>伸<rt>の</rt></ruby>びとるな。お<ruby>前<rt>まえ</rt></ruby>の<ruby>教<rt>おし</rt></ruby>え<ruby>方<rt>かた</rt></ruby>がええんや。<br>*(Thức, đàn em tiến bộ nhỉ. Cách cậu dạy hay đấy.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>がしてくださったことを、そのままやっているだけです。<br>*(Em chỉ làm đúng những gì sếp đã làm cho em thôi ạ.)* |
| 谷川親方 | それでええ。<ruby>技<rt>わざ</rt></ruby>は<ruby>人<rt>ひと</rt></ruby>から<ruby>人<rt>ひと</rt></ruby>へや。お<ruby>前<rt>まえ</rt></ruby>が<ruby>橋<rt>はし</rt></ruby><ruby>渡<rt>わた</rt></ruby>しになっとる。<br>*(Vậy được. Tay nghề truyền từ người sang người. Cậu đang là cây cầu.)* |
| Thức | <ruby>橋<rt>はし</rt></ruby><ruby>渡<rt>わた</rt></ruby>し…そう<ruby>言<rt>い</rt></ruby>われると<ruby>誇<rt>ほこ</rt></ruby>らしいです。<br>*(Cây cầu… nghe vậy em thấy tự hào ạ.)* |
| 谷川親方 | <ruby>合否<rt>ごうひ</rt></ruby>がどうあれ、お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>立派<rt>りっぱ</rt></ruby>な<ruby>職人<rt>しょくにん</rt></ruby>や。<br>*(Đỗ hay trượt, cậu đã là một người thợ đàng hoàng.)* |
| Thức | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>一番<rt>いちばん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Câu đó, em vui nhất ạ.)* |

---

## Tình huống 15 — Công trường · 8:00, đàn em chủ động hơn

| Vai | Lời thoại |
|---|---|
| クアン | トゥックさん、おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りを<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Anh Thức, chào buổi sáng. Cho em biết sắp xếp hôm nay với ạ.)* |
| Thức | おはよう。<ruby>自分<rt>じぶん</rt></ruby>から<ruby>聞<rt>き</rt></ruby>きに<ruby>来<rt>く</rt></ruby>るのはいいことだ。<br>*(Chào buổi sáng. Tự đến hỏi là điều tốt.)* |
| クアン | <ruby>早<rt>はや</rt></ruby>く<ruby>役<rt>やく</rt></ruby>に<ruby>立<rt>た</rt></ruby>ちたいんです。<br>*(Em muốn sớm có ích ạ.)* |
| Thức | その<ruby>気持<rt>きも</rt></ruby>ちが<ruby>大事<rt>だいじ</rt></ruby>だ。でも<ruby>焦<rt>あせ</rt></ruby>ると<ruby>事故<rt>じこ</rt></ruby>になる。<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>一<rt>ひと</rt></ruby>つずつ。<br>*(Tinh thần đó quan trọng. Nhưng vội thì thành tai nạn. Chắc chắn từng cái một.)* |
| クアン | はい。<ruby>基本<rt>きほん</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Vâng. Em trọng cái cơ bản ạ.)* |
| Thức | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>近<rt>ちか</rt></ruby>い<ruby>道<rt>みち</rt></ruby>だ。<br>*(Đó là con đường gần nhất.)* |

---

## Tình huống 16 — Khu nghỉ · 12:10, Hùng và Thức đợi mail kết quả

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、そろそろ<ruby>結果<rt>けっか</rt></ruby>の<ruby>通知<rt>つうち</rt></ruby><ruby>時期<rt>じき</rt></ruby>だな。<br>*(Thức, sắp tới đợt thông báo kết quả rồi nhỉ.)* |
| Thức | ああ。でも<ruby>確<rt>たし</rt></ruby>かめる<ruby>術<rt>すべ</rt></ruby>はない。<ruby>来<rt>く</rt></ruby>るまで<ruby>待<rt>ま</rt></ruby>つだけだ。<br>*(Ừ. Nhưng không có cách xác nhận. Chỉ đợi tới khi nó tới.)* |
| Hùng | お<ruby>前<rt>まえ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>動<rt>どう</rt></ruby>じないな。<br>*(Cậu, thật sự không lay chuyển nhỉ.)* |
| Thức | <ruby>新人<rt>しんじん</rt></ruby>を<ruby>見<rt>み</rt></ruby>てると、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>合否<rt>ごうひ</rt></ruby>より<ruby>大事<rt>だいじ</rt></ruby>なことが<ruby>見<rt>み</rt></ruby>えてくる。<br>*(Nhìn đàn em, thấy được điều quan trọng hơn việc mình đỗ hay trượt.)* |
| Hùng | <ruby>大事<rt>だいじ</rt></ruby>なこと、か。<br>*(Điều quan trọng à.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>の<ruby>世代<rt>せだい</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>すこと。それは<ruby>合否<rt>ごうひ</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby>なく<ruby>続<rt>つづ</rt></ruby>く。<br>*(Trao lại cho thế hệ sau. Cái đó không liên quan đỗ trượt, vẫn tiếp tục.)* |

---

## Tình huống 17 — Công trường · 14:00, Đức cảm ơn Thức

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、<ruby>一<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>で<ruby>仕事<rt>しごと</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>分<rt>わ</rt></ruby>かってきました。<br>*(Anh Thức, một tuần em hiểu công việc dần ạ.)* |
| Thức | よく<ruby>頑張<rt>がんば</rt></ruby>った。<ruby>怖<rt>こわ</rt></ruby>がりながらも<ruby>逃<rt>に</rt></ruby>げなかったな。<br>*(Cố gắng tốt. Sợ nhưng không bỏ chạy đấy.)* |
| ドゥック | トゥックさんが「<ruby>怖<rt>こわ</rt></ruby>いのは<ruby>正常<rt>せいじょう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>ってくれたので<ruby>楽<rt>らく</rt></ruby>になりました。<br>*(Anh Thức nói "sợ là bình thường" nên em nhẹ ra ạ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>同<rt>おな</rt></ruby>じことを<ruby>言<rt>い</rt></ruby>われた。<ruby>言葉<rt>ことば</rt></ruby>がつながっていくんだ。<br>*(Tôi cũng được đàn anh nói câu y vậy. Lời nói cứ nối tiếp nhau.)* |
| ドゥック | <ruby>僕<rt>ぼく</rt></ruby>もいつか<ruby>後輩<rt>こうはい</rt></ruby>に<ruby>言<rt>い</rt></ruby>います。<br>*(Một ngày nào đó em cũng sẽ nói với đàn em ạ.)* |
| Thức | それでいい。それが<ruby>続<rt>つづ</rt></ruby>く<ruby>限<rt>かぎ</rt></ruby>り、<ruby>現場<rt>げんば</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby>だ。<br>*(Vậy là được. Còn nối tiếp thì công trường còn an toàn.)* |

---

## Tình huống 18 — Văn phòng · 17:30, 斉藤 ghi nhận vai đàn anh

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、お<ruby>前<rt>まえ</rt></ruby>が<ruby>来日<rt>らいにち</rt></ruby>した<ruby>頃<rt>ころ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えているか。<br>*(Thức, em còn nhớ hồi mới sang không.)* |
| Thức | はい。<ruby>言葉<rt>ことば</rt></ruby>も<ruby>仕事<rt>しごと</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からず、<ruby>毎日<rt>まいにち</rt></ruby><ruby>必死<rt>ひっし</rt></ruby>でした。<br>*(Vâng. Tiếng và việc đều không biết, ngày nào cũng vật lộn ạ.)* |
| 斉藤職長 | あの<ruby>頃<rt>ころ</rt></ruby>のお<ruby>前<rt>まえ</rt></ruby>が、<ruby>今<rt>いま</rt></ruby><ruby>新人<rt>しんじん</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てている。<ruby>時間<rt>じかん</rt></ruby>は<ruby>確<rt>たし</rt></ruby>かに<ruby>進<rt>すす</rt></ruby>んだな。<br>*(Em hồi đó nay đang dạy đàn em. Thời gian quả đã trôi thật.)* |
| Thức | <ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ると、ここまで<ruby>来<rt>こ</rt></ruby>られたのは<ruby>皆<rt>みな</rt></ruby>さんのおかげです。<br>*(Nhìn lại, đi tới đây là nhờ mọi người ạ.)* |
| 斉藤職長 | その<ruby>気持<rt>きも</rt></ruby>ちを<ruby>忘<rt>わす</rt></ruby>れなければ、お<ruby>前<rt>まえ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Không quên tấm lòng đó thì em ổn.)* |
| Thức | はい。<ruby>結果<rt>けっか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちながら、<ruby>今<rt>いま</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Vâng. Vừa chờ kết quả vừa trân trọng hiện tại ạ.)* |

---

## Tình huống 19 — Công trường · 16:00, thu dọn cuối ngày cùng đàn em

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>です。<ruby>工具<rt>こうぐ</rt></ruby>の<ruby>数<rt>かず</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>してください。<br>*(Kết thúc công việc hôm nay. Mọi người kiểm số dụng cụ.)* |
| クアン | クランプ、<ruby>数<rt>かず</rt></ruby><ruby>合<rt>あ</rt></ruby>っています。<br>*(Khóa kẹp, số lượng khớp ạ.)* |
| ドゥック | <ruby>通路<rt>つうろ</rt></ruby>の<ruby>資材<rt>しざい</rt></ruby>も<ruby>片付<rt>かたづ</rt></ruby>けました。<br>*(Vật tư trên lối đi em cũng dọn rồi ạ.)* |
| Thức | <ruby>片付<rt>かたづ</rt></ruby>けまで<ruby>仕事<rt>しごと</rt></ruby>だ。<ruby>明日<rt>あした</rt></ruby><ruby>安全<rt>あんぜん</rt></ruby>に<ruby>始<rt>はじ</rt></ruby>めるための<ruby>準備<rt>じゅんび</rt></ruby>でもある。<br>*(Dọn dẹp cũng là công việc. Cũng là chuẩn bị để mai bắt đầu an toàn.)* |
| ドゥック | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かないですね。<br>*(Tới cuối cũng không lơ là nhỉ.)* |
| Thức | そうだ。<ruby>始<rt>はじ</rt></ruby>めと<ruby>終<rt>お</rt></ruby>わりが<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。お<ruby>疲<rt>つか</rt></ruby>れさま。<br>*(Đúng. Lúc đầu và lúc cuối là quan trọng nhất. Vất vả rồi.)* |

---

## Tình huống 20 — Phòng trọ Thức · 21:00, Thức tự nhìn lại trong lúc chờ (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | (gọi Linh) Linh à, hôm nay anh nhìn hai đứa đàn em làm được ba điểm tựa, anh thấy vui lạ. |
| Linh | Vui hơn cả chờ kết quả của mình hả anh? |
| Thức | Ừ, lạ thật. Năm năm trước anh y như tụi nó. Giờ thấy tụi nó tiến, anh thấy việc mình làm có nghĩa. |
| Linh | Anh đã thành cây cầu nối thế hệ rồi đó, như 親方 nói. Đẹp lắm anh. |
| Thức | Dù kết quả ra sao, cái vòng này vẫn khép lại đẹp. Anh không tiếc gì nữa. |
| Linh | Em tự hào về anh. Kết quả rồi sẽ tới, mình cứ sống tốt từng ngày anh nhé. |

---

## Đọng lại

Trong lúc chờ kết quả 2号評価試験 — quãng dễ bồn chồn nhất — Thức được 親方 giao kèm hai đàn em diện 育成就労 vừa sang. Năm năm trước em chính là người bỡ ngỡ, sợ độ cao, không biết gọi tên vật tư; nay em dạy lại từng điều: siết quai mũ, gài hai móc dây an toàn, ba điểm tựa, hô nhịp khi khiêng chung, "sợ là bình thường". Vòng tròn khép lại — từng được dạy, nay đi dạy; lời của đàn anh truyền tới đàn em rồi sẽ truyền tiếp. 親方 gọi em là "cây cầu" nối thế hệ. Quan trọng hơn, việc kèm đàn em giúp Thức thấy điều lớn hơn cả chuyện đỗ hay trượt: nghề được trao tay là thứ tiếp tục bất kể kết quả thi. Em chờ kết quả với một tâm thế chín — trân trọng hiện tại, làm tốt từng ngày.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 育成就労 | いくせいしゅうろう | chế độ lao động bồi dưỡng (kế thừa 技能実習) |
> | 指導 | しどう | sự hướng dẫn, chỉ dạy |
> | 保護具 | ほごぐ | trang bị bảo hộ |
> | あごひも | あごひも | quai cằm (mũ bảo hiểm) |
> | 三点支持 | さんてんしじ | giữ ba điểm tựa khi leo |
> | 二丁掛け | にちょうがけ | gài hai móc dây an toàn |
> | 単管 | たんかん | ống thép đơn (giàn giáo) |
> | 橋渡し | はしわたし | sự bắc cầu, làm trung gian truyền lại |
> | 後輩 | こうはい | đàn em, người vào sau |
> | 先輩 | せんぱい | đàn anh, người vào trước |
> | 合否 | ごうひ | đỗ hay trượt |
> | 世代 | せだい | thế hệ |
> | 立場 | たちば | vị trí, hoàn cảnh đứng |
> | 振り返る | ふりかえる | nhìn lại, hồi tưởng |
> | 職人 | しょくにん | người thợ lành nghề |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000008, 800000038, NULL, 'markdown_book', 'T8. Đỗ 特定技能2号 — quyền cư trú không giới hạn (二号合格)', '# Sách kỹ năng đặc định xây dựng · T8. Đỗ 特定技能2号 — quyền cư trú không giới hạn (二号合格)

> **Mục tiêu nhân vật:** Thức nhận tin đỗ 特定技能2号評価試験. Học mẫu câu nghiệp vụ về ý nghĩa tư cách 特定技能2号 (gia hạn lưu trú không giới hạn số lần, được bảo lãnh người thân), thủ tục 在留資格変更, và mẫu câu chia sẻ niềm vui chừng mực, không "thành công thần kỳ".

---

## Bối cảnh

Cuối tháng 8 năm 2031. Kết quả 特定技能2号評価試験 ngành 建設 được thông báo. Thức đỗ. 特定技能2号 cho phép gia hạn lưu trú không giới hạn số lần (không phải vĩnh trú) và mở khả năng bảo lãnh vợ/con sang theo diện 家族滞在 — với Thức là tương lai, vì em chưa cưới Linh. Chương này tập trung mẫu câu nghiệp vụ giải thích ý nghĩa 2号, thủ tục chuyển 在留資格, và mẫu câu chia sẻ niềm vui điềm đạm, biết ơn. *(Chế độ 特定技能2号・在留資格変更・家族滞在 trong sách theo quy định tại thời điểm biên soạn 2026; chi tiết có thể thay đổi.)*

---

## Tình huống 1 — Phòng trọ Thức · 7:00, mở thông báo kết quả

| Vai | Lời thoại |
|---|---|
| Thức | (mở mail, đọc) ...「<ruby>合格<rt>ごうかく</rt></ruby>」。<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>だ。<br>*(...「Đỗ」. Đỗ thật rồi.)* |
| Thức | (gọi Hùng) フン、<ruby>結果<rt>けっか</rt></ruby>が<ruby>来<rt>き</rt></ruby>た。<ruby>俺<rt>おれ</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>してた。お<ruby>前<rt>まえ</rt></ruby>は。<br>*(Hùng, kết quả tới rồi. Mình đỗ. Cậu thì sao.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby>だ!トゥック、やったな!<br>*(Mình cũng đỗ! Thức, được rồi!)* |
| Thức | <ruby>二人<rt>ふたり</rt></ruby>とも<ruby>受<rt>う</rt></ruby>かったのか。…<ruby>信<rt>しん</rt></ruby>じられない。<br>*(Cả hai đứa đều đỗ à. …Không tin nổi.)* |
| Hùng | <ruby>三<rt>さん</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>、<ruby>無駄<rt>むだ</rt></ruby>じゃなかった。<br>*(Ba tháng, không phí.)* |
| Thức | ああ。でも<ruby>浮<rt>う</rt></ruby>かれすぎないようにしよう。<ruby>仕事<rt>しごと</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらない。<br>*(Ừ. Nhưng đừng vui quá đà. Công việc vẫn vậy.)* |

---

## Tình huống 2 — Công trường · 8:00, báo tin cho 親方

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、ご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Sếp, em báo cáo. Em đã đỗ 特定技能2号評価試験 ạ.)* |
| 谷川親方 | おお、やったか!よう<ruby>頑張<rt>がんば</rt></ruby>った。<ruby>誇<rt>ほこ</rt></ruby>らしいわ。<br>*(Ô, được rồi à! Cố gắng tốt lắm. Tự hào đấy.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>仕事<rt>しごと</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せていただいたからです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます。<br>*(Là nhờ sếp giao việc cho em. Em thật sự cảm ơn sếp ạ.)* |
| 谷川親方 | <ruby>礼<rt>れい</rt></ruby>はええ。お<ruby>前<rt>まえ</rt></ruby>が<ruby>現場<rt>げんば</rt></ruby>で<ruby>積<rt>つ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げたもんや。<br>*(Khỏi cảm ơn. Là thứ cậu tích lũy ở công trường.)* |
| Thức | フンも<ruby>合格<rt>ごうかく</rt></ruby>でした。<ruby>二人<rt>ふたり</rt></ruby>そろって<ruby>報告<rt>ほうこく</rt></ruby>できて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Hùng cũng đỗ. Hai đứa cùng báo được, em vui ạ.)* |
| 谷川親方 | ええ<ruby>仲間<rt>なかま</rt></ruby>や。<ruby>今夜<rt>こんや</rt></ruby>は<ruby>祝<rt>いわ</rt></ruby>いやな。だが<ruby>明日<rt>あした</rt></ruby>からは<ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めや。<br>*(Bạn tốt đấy. Tối nay ăn mừng nhỉ. Nhưng từ mai siết tinh thần lại.)* |

---

## Tình huống 3 — Văn phòng · 8:20, 斉藤 giải thích ý nghĩa 2号

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>二号<rt>にごう</rt></ruby>になると<ruby>何<rt>なに</rt></ruby>が<ruby>変<rt>か</rt></ruby>わりますか。<br>*(Anh Saito, em đỗ rồi. Lên 2号 thì thay đổi gì ạ?)* |
| 斉藤職長 | おめでとう。まず<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby><ruby>回数<rt>かいすう</rt></ruby>に<ruby>上限<rt>じょうげん</rt></ruby>がなくなる。<br>*(Chúc mừng. Trước hết số lần gia hạn thời gian lưu trú không còn giới hạn.)* |
| Thức | <ruby>一号<rt>いちごう</rt></ruby>のような<ruby>通算<rt>つうさん</rt></ruby><ruby>五年<rt>ごねん</rt></ruby>の<ruby>制限<rt>せいげん</rt></ruby>がなくなるということですね。<br>*(Tức là không còn giới hạn cộng dồn năm năm như 1号 ạ?)* |
| 斉藤職長 | そうだ。<ruby>更新<rt>こうしん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>ければ<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>ける。それと、<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たせば<ruby>家族<rt>かぞく</rt></ruby>の<ruby>帯同<rt>たいどう</rt></ruby>も<ruby>可能<rt>かのう</rt></ruby>になる。<br>*(Đúng. Cứ gia hạn thì làm được lâu dài. Và nếu đủ điều kiện thì người thân cũng đi theo được.)* |
| Thức | <ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>…<ruby>大<rt>おお</rt></ruby>きいですね。<br>*(Người thân đi theo… lớn thật ạ.)* |
| 斉藤職長 | ただし<ruby>永住<rt>えいじゅう</rt></ruby>とは<ruby>別<rt>べつ</rt></ruby>だ。<ruby>更新<rt>こうしん</rt></ruby>は<ruby>必要<rt>ひつよう</rt></ruby>だし、<ruby>条件<rt>じょうけん</rt></ruby>もある。そこは<ruby>誤解<rt>ごかい</rt></ruby>するな。<br>*(Nhưng khác với vĩnh trú. Vẫn phải gia hạn, vẫn có điều kiện. Đừng hiểu nhầm chỗ đó.)* |

---

## Tình huống 4 — Văn phòng · 8:40, hỏi rõ về thủ tục 在留資格変更

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby>になるには<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>の<ruby>変更<rt>へんこう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>が<ruby>要<rt>い</rt></ruby>るのですよね。<br>*(Anh Saito, để lên 2号 thì cần xin đổi tư cách lưu trú phải không ạ?)* |
| 斉藤職長 | そうだ。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>を<ruby>揃<rt>そろ</rt></ruby>えて<ruby>入管<rt>にゅうかん</rt></ruby>に<ruby>申請<rt>しんせい</rt></ruby>する。<br>*(Đúng. Gom giấy chứng nhận đỗ, hợp đồng lao động, giấy tờ công ty rồi nộp cục quản lý xuất nhập cảnh.)* |
| Thức | <ruby>申請<rt>しんせい</rt></ruby>から<ruby>許可<rt>きょか</rt></ruby>まで、どれくらいかかりますか。<br>*(Từ nộp tới khi được cấp mất bao lâu ạ?)* |
| 斉藤職長 | <ruby>審査<rt>しんさ</rt></ruby><ruby>状況<rt>じょうきょう</rt></ruby>によるが、<ruby>余裕<rt>よゆう</rt></ruby>をもって<ruby>早<rt>はや</rt></ruby>めに<ruby>動<rt>うご</rt></ruby>くのが<ruby>鉄則<rt>てっそく</rt></ruby>だ。<br>*(Tùy tình hình xét duyệt, nhưng nguyên tắc là làm sớm cho có dư thời gian.)* |
| Thức | <ruby>現在<rt>げんざい</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>期限<rt>きげん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>必<rt>かなら</rt></ruby>ず<ruby>済<rt>す</rt></ruby>ませます。<br>*(Em sẽ làm xong trước hạn lưu trú hiện tại ạ.)* |
| 斉藤職長 | それでいい。<ruby>会社<rt>かいしゃ</rt></ruby>も<ruby>協力<rt>きょうりょく</rt></ruby>する。<ruby>松本<rt>まつもと</rt></ruby>さんと<ruby>相談<rt>そうだん</rt></ruby>しろ。<br>*(Vậy được. Công ty cũng hỗ trợ. Bàn với bác Matsumoto.)* |

---

## Tình huống 5 — Phòng hành chính · 9:30, nhờ chuẩn bị hồ sơ chuyển tư cách

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しました。<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby>の<ruby>手続<rt>てつづ</rt></ruby>きをお<ruby>願<rt>ねが</rt></ruby>いしたいです。<br>*(Bác Matsumoto, em đỗ 2号 rồi. Em muốn nhờ làm thủ tục đổi tư cách lưu trú ạ.)* |
| 松本さん | おお、<ruby>合格<rt>ごうかく</rt></ruby>か。よかったな。<ruby>会社<rt>かいしゃ</rt></ruby><ruby>側<rt>がわ</rt></ruby>の<ruby>書類<rt>しょるい</rt></ruby>は<ruby>俺<rt>おれ</rt></ruby>が<ruby>用意<rt>ようい</rt></ruby>する。<br>*(Ô, đỗ à. Mừng nhé. Giấy tờ phía công ty tôi chuẩn bị.)* |
| Thức | <ruby>本人<rt>ほんにん</rt></ruby><ruby>側<rt>がわ</rt></ruby>で<ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なん</rt></ruby>でしょうか。<br>*(Phía cá nhân cần giấy tờ gì ạ?)* |
| 松本さん | <ruby>合格<rt>ごうかく</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>、<ruby>在留<rt>ざいりゅう</rt></ruby>カード、パスポート、<ruby>顔写真<rt>かおじゃしん</rt></ruby>だ。リストを<ruby>渡<rt>わた</rt></ruby>す。<br>*(Giấy chứng nhận đỗ, thẻ lưu trú, hộ chiếu, ảnh chân dung. Tôi đưa danh sách.)* |
| Thức | ありがとうございます。<ruby>期限<rt>きげん</rt></ruby>に<ruby>余裕<rt>よゆう</rt></ruby>をもって<ruby>進<rt>すす</rt></ruby>めたいです。<br>*(Cảm ơn bác. Em muốn làm sớm trước hạn ạ.)* |
| 松本さん | その<ruby>意識<rt>いしき</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>や。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>頭<rt>あたま</rt></ruby>には<ruby>揃<rt>そろ</rt></ruby>えよう。<br>*(Cái ý thức đó quan trọng. Đầu tuần sau gom đủ nhé.)* |

---

## Tình huống 6 — Khu nghỉ · 12:10, Hùng và Thức nói về tương lai

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>二号<rt>にごう</rt></ruby>になったら<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>長<rt>なが</rt></ruby>く<ruby>日本<rt>にほん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>けるんだな。<br>*(Thức, thành 2号 thì thật sự làm ở Nhật lâu dài được nhỉ.)* |
| Thức | <ruby>更新<rt>こうしん</rt></ruby><ruby>回数<rt>かいすう</rt></ruby>の<ruby>制限<rt>せいげん</rt></ruby>がなくなる。でも<ruby>更新<rt>こうしん</rt></ruby><ruby>自体<rt>じたい</rt></ruby>は<ruby>必要<rt>ひつよう</rt></ruby>だよ。<br>*(Không còn giới hạn số lần gia hạn. Nhưng vẫn phải gia hạn đấy.)* |
| Hùng | <ruby>永住<rt>えいじゅう</rt></ruby>とは<ruby>違<rt>ちが</rt></ruby>うんだよな。<br>*(Khác vĩnh trú nhỉ.)* |
| Thức | <ruby>違<rt>ちが</rt></ruby>う。<ruby>永住<rt>えいじゅう</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>で、<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>などの<ruby>条件<rt>じょうけん</rt></ruby>がある。<ruby>俺<rt>おれ</rt></ruby>はまだ<ruby>先<rt>さき</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>だ。<br>*(Khác. Vĩnh trú là đơn khác, có điều kiện như số năm lưu trú. Với mình còn xa.)* |
| Hùng | <ruby>焦<rt>あせ</rt></ruby>らず<ruby>一<rt>いち</rt></ruby><ruby>段<rt>だん</rt></ruby>ずつだな。<br>*(Không vội, từng bậc một nhỉ.)* |
| Thức | そうだ。<ruby>二号<rt>にごう</rt></ruby>は<ruby>大<rt>おお</rt></ruby>きな<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>。<ruby>次<rt>つぎ</rt></ruby>はその<ruby>先<rt>さき</rt></ruby>だ。<br>*(Đúng. 2号 là một bước lớn. Tiếp theo là chặng sau nữa.)* |

---

## Tình huống 7 — Công trường · 14:00, vẫn làm việc 職長 như thường

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>合格<rt>ごうかく</rt></ruby>おめでとうございます!すごいです。<br>*(Anh Thức, chúc mừng anh đỗ ạ! Ghê thật.)* |
| Thức | ありがとう。でも<ruby>現場<rt>げんば</rt></ruby>は<ruby>今<rt>いま</rt></ruby>までと<ruby>同<rt>おな</rt></ruby>じだ。<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かない。<br>*(Cảm ơn. Nhưng công trường vẫn như từ trước. Không lơ là.)* |
| Nam | <ruby>資格<rt>しかく</rt></ruby>が<ruby>変<rt>か</rt></ruby>わっても<ruby>変<rt>か</rt></ruby>わらないんですね。<br>*(Tư cách đổi mà vẫn không đổi nhỉ.)* |
| Thức | そうだ。<ruby>資格<rt>しかく</rt></ruby>は<ruby>紙<rt>かみ</rt></ruby>の<ruby>上<rt>うえ</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>。<ruby>現場<rt>げんば</rt></ruby>で<ruby>人<rt>ひと</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>責任<rt>せきにん</rt></ruby>は<ruby>一<rt>いっ</rt></ruby><ruby>切<rt>さい</rt></ruby><ruby>変<rt>か</rt></ruby>わらない。<br>*(Đúng. Tư cách là chuyện trên giấy. Trách nhiệm giữ người ở công trường không đổi chút nào.)* |
| Nam | その<ruby>姿勢<rt>しせい</rt></ruby>、<ruby>見習<rt>みなら</rt></ruby>います。<br>*(Tư thế đó em học theo ạ.)* |
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>、<ruby>続<rt>つづ</rt></ruby>けよう。<ruby>三層目<rt>さんそうめ</rt></ruby>の<ruby>点検<rt>てんけん</rt></ruby>だ。<br>*(Công việc hôm nay, làm tiếp nào. Kiểm tra tầng ba.)* |

---

## Tình huống 8 — Phòng trọ Thức · 20:00, gọi Linh báo tin đỗ (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, anh có tin. Anh đỗ 特定技能2号 rồi. |
| Linh | Thật hả anh?! Trời ơi, em mừng quá! Anh làm được rồi! |
| Thức | Ừ. Hùng cũng đỗ. Hai anh em cùng qua. |
| Linh | Vậy là từ giờ anh được ở Nhật lâu dài, gia hạn không giới hạn số lần phải không? |
| Thức | Đúng. Và sau này, nếu đủ điều kiện thì 2号 cho phép bảo lãnh người thân sang theo. Đó là chuyện tương lai, mình cứ từ từ. |
| Linh | Em hiểu mà. Nghe vậy là vui rồi. Anh cứ vững từng bước, em luôn ở đây. |

---

## Tình huống 9 — Văn phòng · 8:00, chuẩn bị hồ sơ với 松本

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カード、<ruby>顔写真<rt>かおじゃしん</rt></ruby>を<ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Bác Matsumoto, em chuẩn bị giấy chứng nhận đỗ, thẻ lưu trú và ảnh chân dung rồi ạ.)* |
| 松本さん | はや<ruby>仕事<rt>しごと</rt></ruby>やな。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>雇用<rt>こよう</rt></ruby><ruby>契約<rt>けいやく</rt></ruby><ruby>書<rt>しょ</rt></ruby>と<ruby>登記<rt>とうき</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>はこっちで<ruby>揃<rt>そろ</rt></ruby>えた。<br>*(Làm việc nhanh đấy. Hợp đồng lao động công ty và giấy tờ đăng ký bên này gom xong.)* |
| Thức | <ruby>申請<rt>しんせい</rt></ruby><ruby>書<rt>しょ</rt></ruby>の<ruby>記入<rt>きにゅう</rt></ruby>で、<ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>はありますか。<br>*(Khi điền đơn xin có điểm cần lưu ý không ạ?)* |
| 松本さん | <ruby>氏名<rt>しめい</rt></ruby>と<ruby>在留<rt>ざいりゅう</rt></ruby>カードの<ruby>表記<rt>ひょうき</rt></ruby>を<ruby>一<rt>いっ</rt></ruby><ruby>字<rt>じ</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>句<rt>く</rt></ruby><ruby>合<rt>あ</rt></ruby>わせること。ここがずれると<ruby>差<rt>さ</rt></ruby>し<ruby>戻<rt>もど</rt></ruby>される。<br>*(Họ tên khớp từng chữ với thẻ lưu trú. Lệch chỗ này là bị trả lại.)* |
| Thức | <ruby>慎重<rt>しんちょう</rt></ruby>に<ruby>確認<rt>かくにん</rt></ruby>します。ありがとうございます。<br>*(Em sẽ kiểm cẩn thận. Cảm ơn bác ạ.)* |
| 松本さん | <ruby>来週<rt>らいしゅう</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>入管<rt>にゅうかん</rt></ruby>へ<ruby>行<rt>い</rt></ruby>こう。<br>*(Tuần sau cùng đi cục xuất nhập cảnh.)* |

---

## Tình huống 10 — Cục xuất nhập cảnh · 10:00, nộp hồ sơ chuyển tư cách

| Vai | Lời thoại |
|---|---|
| 窓口係 | <ruby>在留<rt>ざいりゅう</rt></ruby><ruby>資格<rt>しかく</rt></ruby><ruby>変更<rt>へんこう</rt></ruby><ruby>許可<rt>きょか</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>ですね。<ruby>書類<rt>しょるい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Đơn xin đổi tư cách lưu trú nhỉ. Tôi kiểm giấy tờ.)* |
| Thức | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>合格<rt>ごうかく</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>と<ruby>会社<rt>かいしゃ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>を<ruby>添付<rt>てんぷ</rt></ruby>しています。<br>*(Vâng, nhờ anh. Em đính kèm giấy chứng nhận đỗ và giấy tờ công ty ạ.)* |
| 窓口係 | <ruby>記載<rt>きさい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>に<ruby>不備<rt>ふび</rt></ruby>はありません。<ruby>受理<rt>じゅり</rt></ruby>します。<br>*(Mục ghi không thiếu sót. Tôi tiếp nhận.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>は<ruby>郵送<rt>ゆうそう</rt></ruby>かハガキで<ruby>通知<rt>つうち</rt></ruby>されますか。<br>*(Kết quả thông báo qua bưu điện hay bưu thiếp ạ?)* |
| 窓口係 | <ruby>審査<rt>しんさ</rt></ruby><ruby>後<rt>ご</rt></ruby>、ハガキで<ruby>通知<rt>つうち</rt></ruby>します。<ruby>受取<rt>うけとり</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードを<ruby>交付<rt>こうふ</rt></ruby>します。<br>*(Sau xét duyệt, báo qua bưu thiếp. Lúc nhận cấp thẻ lưu trú mới.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。ありがとうございます。<br>*(Em rõ ạ. Cảm ơn anh.)* |

---

## Tình huống 11 — Văn phòng · 17:00, 親方 nói về ý nghĩa cột mốc

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>申請<rt>しんせい</rt></ruby>は<ruby>済<rt>す</rt></ruby>んだか。<br>*(Thức, nộp đơn xong chưa.)* |
| Thức | はい。<ruby>受理<rt>じゅり</rt></ruby>されました。あとは<ruby>許可<rt>きょか</rt></ruby>を<ruby>待<rt>ま</rt></ruby>つだけです。<br>*(Vâng. Đã được tiếp nhận. Còn lại chỉ đợi được cấp ạ.)* |
| 谷川親方 | <ruby>二号<rt>にごう</rt></ruby>は<ruby>大<rt>おお</rt></ruby>きいぞ。だが<ruby>勘違<rt>かんちが</rt></ruby>いするな。それは<ruby>終<rt>お</rt></ruby>わりやない。<br>*(2号 lớn đấy. Nhưng đừng hiểu lầm. Đó không phải đích cuối.)* |
| Thức | はい。<ruby>更新<rt>こうしん</rt></ruby>も<ruby>必要<rt>ひつよう</rt></ruby>ですし、<ruby>その先<rt>そのさき</rt></ruby>に<ruby>一級<rt>いっきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby>や<ruby>永住<rt>えいじゅう</rt></ruby>もあります。<br>*(Vâng. Vẫn phải gia hạn, và chặng sau còn 1級技能士 với vĩnh trú nữa ạ.)* |
| 谷川親方 | よう<ruby>分<rt>わ</rt></ruby>かっとる。<ruby>浮<rt>う</rt></ruby>かれんと<ruby>地<rt>じ</rt></ruby>に<ruby>足<rt>あし</rt></ruby>つけとけ。<br>*(Hiểu rõ đấy. Đừng lâng lâng, đặt chân xuống đất.)* |
| Thức | はい。これは<ruby>通過<rt>つうか</rt></ruby><ruby>点<rt>てん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Vâng. Em coi đây là một điểm đi qua thôi ạ.)* |

---

## Tình huống 12 — Khu nghỉ · 12:10, Nam hỏi về con đường 2号

| Vai | Lời thoại |
|---|---|
| Nam | トゥックさん、<ruby>僕<rt>ぼく</rt></ruby>も<ruby>二号<rt>にごう</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>せますか。<br>*(Anh Thức, em cũng nhắm 2号 được không ạ?)* |
| Thức | もちろんだ。<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>一号<rt>いちごう</rt></ruby>で<ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>んで、<ruby>職長<rt>しょくちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>を<ruby>重<rt>かさ</rt></ruby>ねればいい。<br>*(Tất nhiên. Tích kinh nghiệm bằng 特定技能1号, tích lũy kinh nghiệm 職長 là được.)* |
| Nam | <ruby>道<rt>みち</rt></ruby>のりは<ruby>長<rt>なが</rt></ruby>いですね。<br>*(Chặng đường dài thật ạ.)* |
| Thức | <ruby>長<rt>なが</rt></ruby>い。でも<ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつなら<ruby>必<rt>かなら</rt></ruby>ず<ruby>進<rt>すす</rt></ruby>む。<ruby>俺<rt>おれ</rt></ruby>がそうだった。<br>*(Dài. Nhưng từng bước thì chắc chắn tiến. Tôi đã vậy.)* |
| Nam | トゥックさんの<ruby>背中<rt>せなか</rt></ruby>を<ruby>追<rt>お</rt></ruby>います。<br>*(Em sẽ theo bước anh Thức.)* |
| Thức | <ruby>追<rt>お</rt></ruby>い<ruby>越<rt>こ</rt></ruby>してくれていい。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Vượt qua tôi cũng được. Đó là điều tôi vui nhất.)* |

---

## Tình huống 13 — Công trường · 14:00, vẫn chỉ huy bình thường

| Vai | Lời thoại |
|---|---|
| Thức | クアン、<ruby>布板<rt>ぬのいた</rt></ruby>の<ruby>固定<rt>こてい</rt></ruby>はフックを<ruby>掛<rt>か</rt></ruby>けてから<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Quân, cố định ván sàn thì gài móc rồi mới kiểm.)* |
| クアン | はい、<ruby>掛<rt>か</rt></ruby>けてから<ruby>作業<rt>さぎょう</rt></ruby>します。<br>*(Vâng, gài rồi mới làm ạ.)* |
| Thức | <ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>るのが<ruby>命<rt>いのち</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。<ruby>急<rt>いそ</rt></ruby>がない。<br>*(Giữ thứ tự là giữ mạng. Đừng vội.)* |
| ドゥック | トゥックさんは<ruby>合格<rt>ごうかく</rt></ruby>しても<ruby>言<rt>い</rt></ruby>うことが<ruby>変<rt>か</rt></ruby>わりませんね。<br>*(Anh Thức đỗ rồi mà lời nói vẫn không đổi nhỉ.)* |
| Thức | <ruby>変<rt>か</rt></ruby>える<ruby>必要<rt>ひつよう</rt></ruby>がない。<ruby>安全<rt>あんぜん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>は<ruby>資格<rt>しかく</rt></ruby>と<ruby>関係<rt>かんけい</rt></ruby>ない。<br>*(Không cần đổi. Cơ bản an toàn không liên quan tới tư cách.)* |
| ドゥック | <ruby>納得<rt>なっとく</rt></ruby>しました。<br>*(Em hiểu ra rồi ạ.)* |

---

## Tình huống 14 — Văn phòng · 17:30, 斉藤 chốt ý nghĩa 2号 đúng mực

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>二号<rt>にごう</rt></ruby>になっても<ruby>気<rt>き</rt></ruby>を<ruby>緩<rt>ゆる</rt></ruby>めていないな。<br>*(Thức, thành 2号 rồi vẫn không buông lỏng nhỉ.)* |
| Thức | <ruby>資格<rt>しかく</rt></ruby>は<ruby>権利<rt>けんり</rt></ruby>であって、<ruby>同時<rt>どうじ</rt></ruby>に<ruby>責任<rt>せきにん</rt></ruby>だと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em nghĩ tư cách là quyền, đồng thời cũng là trách nhiệm ạ.)* |
| 斉藤職長 | いい<ruby>捉<rt>とら</rt></ruby>え<ruby>方<rt>かた</rt></ruby>だ。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>けるということは、<ruby>長<rt>なが</rt></ruby>く<ruby>責任<rt>せきにん</rt></ruby>を<ruby>負<rt>お</rt></ruby>うということだ。<br>*(Cách hiểu tốt. Làm được lâu dài nghĩa là gánh trách nhiệm lâu dài.)* |
| Thức | <ruby>家族<rt>かぞく</rt></ruby><ruby>帯同<rt>たいどう</rt></ruby>の<ruby>道<rt>みち</rt></ruby>も<ruby>開<rt>ひら</rt></ruby>けますが、それも<ruby>条件<rt>じょうけん</rt></ruby><ruby>次第<rt>しだい</rt></ruby>です。<ruby>焦<rt>あせ</rt></ruby>りません。<br>*(Con đường người thân đi theo cũng mở, nhưng cũng tùy điều kiện. Em không vội ạ.)* |
| 斉藤職長 | その<ruby>冷静<rt>れいせい</rt></ruby>さがあれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>だ。<br>*(Có sự điềm tĩnh đó thì ổn.)* |
| Thức | ありがとうございます。<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ<ruby>進<rt>すす</rt></ruby>みます。<br>*(Cảm ơn anh. Em từng bước tiến tới ạ.)* |

---

## Tình huống 15 — Quán ăn · 19:00, ăn mừng nhẹ cùng Hùng và tổ

| Vai | Lời thoại |
|---|---|
| 近藤先輩 | トゥック、フン、<ruby>二号<rt>にごう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>おめでとう!<ruby>乾杯<rt>かんぱい</rt></ruby>や!<br>*(Thức, Hùng, chúc mừng đỗ 2号! Cạn ly nào!)* |
| Thức | ありがとうございます。<ruby>皆<rt>みな</rt></ruby>さんの<ruby>支<rt>ささ</rt></ruby>えがあってこそです。<br>*(Cảm ơn mọi người. Có sự đỡ đần của mọi người mới được ạ.)* |
| Hùng | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>諦<rt>あきら</rt></ruby>めかけました。トゥックがいたから<ruby>続<rt>つづ</rt></ruby>けられた。<br>*(Thật ra giữa chừng suýt bỏ. Có Thức nên mới duy trì được.)* |
| 近藤先輩 | ええ<ruby>仲間<rt>なかま</rt></ruby>やな。だが<ruby>飲<rt>の</rt></ruby>みすぎるなよ、<ruby>明日<rt>あした</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>や。<br>*(Bạn tốt đấy. Nhưng đừng uống quá, mai còn công trường.)* |
| Thức | はい。<ruby>今日<rt>きょう</rt></ruby>だけは<ruby>少<rt>すこ</rt></ruby>し<ruby>祝<rt>いわ</rt></ruby>って、<ruby>明日<rt>あした</rt></ruby>からまた<ruby>普通<rt>ふつう</rt></ruby>に。<br>*(Vâng. Chỉ hôm nay ăn mừng chút, mai lại bình thường.)* |
| 近藤先輩 | それでこそトゥックや。<br>*(Vậy mới đúng là Thức.)* |

---

## Tình huống 16 — Công trường · 8:00, ngày hôm sau như thường

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めます。<br>*(Chào buổi sáng. Hôm nay cũng tiến hành với an toàn là số một.)* |
| 近藤先輩 | <ruby>昨日<rt>きのう</rt></ruby><ruby>祝<rt>いわ</rt></ruby>ったのに、いつもどおりやな。<br>*(Hôm qua ăn mừng mà vẫn như thường ngày nhỉ.)* |
| Thức | <ruby>祝<rt>いわ</rt></ruby>いは<ruby>昨日<rt>きのう</rt></ruby>で<ruby>終<rt>お</rt></ruby>わりです。<ruby>今日<rt>きょう</rt></ruby>は<ruby>今日<rt>きょう</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>です。<br>*(Ăn mừng hết hôm qua rồi. Hôm nay là công trường của hôm nay.)* |
| 近藤先輩 | その<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え、<ruby>職人<rt>しょくにん</rt></ruby>やな。<br>*(Cái chuyển nhịp đó, đúng chất thợ.)* |
| Thức | <ruby>資格<rt>しかく</rt></ruby>は<ruby>変<rt>か</rt></ruby>わっても、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>勝負<rt>しょうぶ</rt></ruby>です。<br>*(Tư cách đổi, nhưng công việc mỗi ngày mới là cuộc đấu thật.)* |
| 近藤先輩 | ええこと<ruby>言<rt>い</rt></ruby>うやないか。さ、<ruby>始<rt>はじ</rt></ruby>めよか。<br>*(Nói hay đấy. Nào, bắt đầu thôi.)* |

---

## Tình huống 17 — Văn phòng · 16:00, nhận giấy tiếp nhận đơn

| Vai | Lời thoại |
|---|---|
| 松本さん | トゥック、<ruby>入管<rt>にゅうかん</rt></ruby>から<ruby>申請<rt>しんせい</rt></ruby><ruby>受理<rt>じゅり</rt></ruby>の<ruby>控<rt>ひか</rt></ruby>えが<ruby>届<rt>とど</rt></ruby>いたぞ。<br>*(Thức, giấy biên nhận đơn từ cục xuất nhập cảnh tới rồi đấy.)* |
| Thức | ありがとうございます。<ruby>無事<rt>ぶじ</rt></ruby><ruby>受理<rt>じゅり</rt></ruby>されて<ruby>安心<rt>あんしん</rt></ruby>しました。<br>*(Cảm ơn bác. Được tiếp nhận trót lọt em yên tâm ạ.)* |
| 松本さん | <ruby>許可<rt>きょか</rt></ruby>が<ruby>下<rt>お</rt></ruby>りたら<ruby>新<rt>あたら</rt></ruby>しい<ruby>在留<rt>ざいりゅう</rt></ruby>カードに<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>わる。それまでこの<ruby>控<rt>ひか</rt></ruby>えを<ruby>大事<rt>だいじ</rt></ruby>にな。<br>*(Được cấp thì đổi sang thẻ lưu trú mới. Tới lúc đó giữ kỹ giấy biên nhận này.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>保管<rt>ほかん</rt></ruby>します。<br>*(Em rõ ạ. Em sẽ giữ cẩn thận.)* |
| 松本さん | お<ruby>前<rt>まえ</rt></ruby>は<ruby>書類<rt>しょるい</rt></ruby>もきっちりしとる。<ruby>安心<rt>あんしん</rt></ruby>して<ruby>任<rt>まか</rt></ruby>せられるわ。<br>*(Cậu giấy tờ cũng đâu ra đấy. Giao yên tâm.)* |
| Thức | ありがとうございます。<ruby>最後<rt>さいご</rt></ruby>まで<ruby>丁寧<rt>ていねい</rt></ruby>にやります。<br>*(Cảm ơn bác. Em làm cẩn thận tới cuối ạ.)* |

---

## Tình huống 18 — Phòng trọ Thức · 21:00, gọi Linh nói về tương lai chừng mực (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, đơn chuyển tư cách đã được cục tiếp nhận. Chờ được cấp là anh chính thức thành 2号. |
| Linh | Mừng cho anh quá. Vậy là con đường ở Nhật của anh rộng hẳn ra. |
| Thức | Ừ. 2号 mở khả năng sau này bảo lãnh người thân sang, nếu đủ điều kiện. Nhưng đó là chuyện tương lai, mình chưa tính vội. |
| Linh | Em hiểu mà anh. Mình cứ từng bước. Anh đỗ được đã là điều lớn rồi, em không mong gì hơn lúc này. |
| Thức | Cảm ơn em đã đi cùng anh suốt ba tháng. Em là chỗ dựa lớn của anh. |
| Linh | Em thấy vui vì được theo anh. Mình giữ nhịp này, tương lai sẽ rõ dần thôi anh. |

---

## Tình huống 19 — Công trường · 14:00, truyền tinh thần cho đàn em

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、<ruby>二号<rt>にごう</rt></ruby>に<ruby>受<rt>う</rt></ruby>かって、<ruby>気持<rt>きも</rt></ruby>ちは<ruby>変<rt>か</rt></ruby>わりましたか。<br>*(Anh Thức, đỗ 2号 rồi, tâm trạng có đổi không ạ?)* |
| Thức | <ruby>安心<rt>あんしん</rt></ruby>はした。でも<ruby>気持<rt>きも</rt></ruby>ちは<ruby>同<rt>おな</rt></ruby>じだ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>現場<rt>げんば</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る、それだけだ。<br>*(Có yên tâm. Nhưng tâm trạng vẫn vậy. Mỗi ngày giữ công trường, chỉ thế thôi.)* |
| ドゥック | <ruby>大<rt>おお</rt></ruby>きな<ruby>資格<rt>しかく</rt></ruby>を<ruby>取<rt>と</rt></ruby>っても<ruby>地<rt>じ</rt></ruby>に<ruby>足<rt>あし</rt></ruby>がついてるんですね。<br>*(Lấy được tư cách lớn mà vẫn chân chạm đất nhỉ.)* |
| Thức | <ruby>資格<rt>しかく</rt></ruby>は<ruby>道<rt>みち</rt></ruby>を<ruby>広<rt>ひろ</rt></ruby>げるだけ。<ruby>歩<rt>ある</rt></ruby>くのは<ruby>自分<rt>じぶん</rt></ruby>の<ruby>足<rt>あし</rt></ruby>だ。<br>*(Tư cách chỉ mở rộng đường. Đi vẫn bằng chân mình.)* |
| ドゥック | いい<ruby>言葉<rt>ことば</rt></ruby>ですね。<ruby>覚<rt>おぼ</rt></ruby>えておきます。<br>*(Câu hay ạ. Em ghi nhớ.)* |
| Thức | <ruby>君<rt>きみ</rt></ruby>も<ruby>歩<rt>ある</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>ければ<ruby>必<rt>かなら</rt></ruby>ず<ruby>着<rt>つ</rt></ruby>く。<br>*(Em cứ đi tiếp thì chắc chắn tới.)* |

---

## Tình huống 20 — Phòng trọ Thức · 22:00, Thức tự nhìn lại cột mốc

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) <ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>二号<rt>にごう</rt></ruby>。<ruby>五年<rt>ごねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>の<ruby>自分<rt>じぶん</rt></ruby>には<ruby>想像<rt>そうぞう</rt></ruby>もできなかった。<br>*(特定技能2号. Mình của năm năm trước không tưởng tượng nổi.)* |
| Thức | でも、これは<ruby>終<rt>お</rt></ruby>わりじゃない。<ruby>通過<rt>つうか</rt></ruby><ruby>点<rt>てん</rt></ruby>だ。<br>*(Nhưng đây không phải đích cuối. Là điểm đi qua.)* |
| Thức | <ruby>更新<rt>こうしん</rt></ruby>も<ruby>続<rt>つづ</rt></ruby>く。<ruby>一級<rt>いっきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby>も、<ruby>永住<rt>えいじゅう</rt></ruby>も、まだ<ruby>先<rt>さき</rt></ruby>だ。<br>*(Gia hạn vẫn tiếp. 1級技能士, vĩnh trú, vẫn còn xa.)* |
| Thức | <ruby>焦<rt>あせ</rt></ruby>らない。<ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ<ruby>積<rt>つ</rt></ruby>んできた。これからもそうする。<br>*(Không vội. Tích từng bước. Sau này cũng vậy.)* |
| Thức | <ruby>支<rt>ささ</rt></ruby>えてくれた<ruby>人<rt>ひと</rt></ruby>たちに、いい<ruby>仕事<rt>しごと</rt></ruby>で<ruby>返<rt>かえ</rt></ruby>そう。<br>*(Đáp lại những người đã đỡ mình bằng công việc tốt.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>だ。いつもどおり、<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Mai cũng công trường. Như thường ngày, cẩn thận.)* |

---

## Đọng lại

Tin đỗ 特定技能2号評価試験 tới — và Hùng cũng đỗ. Sau ba tháng nhọc nhằn, cú be bét đề mẫu, sự cố giàn giáo, đây là phần thưởng. Nhưng Thức đón nó điềm đạm: 斉藤 giải thích đúng mực — 2号 cho gia hạn lưu trú không giới hạn số lần (không phải vĩnh trú, vẫn phải gia hạn) và mở khả năng bảo lãnh người thân nếu đủ điều kiện; với Thức, đó là tương lai vì em chưa cưới Linh. Em làm thủ tục 在留資格変更 chu đáo với 松本, ăn mừng nhẹ một tối rồi hôm sau trở lại công trường như thường — tư cách đổi nhưng trách nhiệm giữ người không đổi. 親方 chốt: 2号 không phải đích cuối, đừng lâng lâng, phía trước còn 1級技能士 và vĩnh trú xa. Thức coi đây là một điểm đi qua, không phải kết thúc — và đáp lại những người đã đỡ mình bằng công việc tốt mỗi ngày.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 合格 | ごうかく | đỗ, đạt (kỳ thi) |
> | 在留期間 | ざいりゅうきかん | thời hạn lưu trú |
> | 更新回数 | こうしんかいすう | số lần gia hạn |
> | 上限 | じょうげん | giới hạn trên, mức trần |
> | 通算 | つうさん | tính cộng dồn |
> | 家族帯同 | かぞくたいどう | đưa người thân đi theo |
> | 永住 | えいじゅう | vĩnh trú |
> | 在留資格変更 | ざいりゅうしかくへんこう | đổi tư cách lưu trú |
> | 入管 | にゅうかん | cục quản lý xuất nhập cảnh |
> | 受理 | じゅり | sự tiếp nhận (hồ sơ) |
> | 交付 | こうふ | sự cấp phát |
> | 雇用契約書 | こようけいやくしょ | hợp đồng lao động |
> | 通過点 | つうかてん | điểm đi qua, cột mốc trung gian |
> | 一級技能士 | いっきゅうぎのうし | thợ kỹ năng bậc 1 (chứng chỉ quốc gia) |
> | 切り替え | きりかえ | sự chuyển đổi, chuyển nhịp |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000009, 800000038, NULL, 'markdown_book', 'T9. Nhận thẻ CCUS bậc cao, 親方 công nhận (CCUS承認)', '# Sách kỹ năng đặc định xây dựng · T9. Nhận thẻ CCUS bậc cao, 親方 công nhận (CCUS承認)

> **Mục tiêu nhân vật:** Thức được xét nâng bậc CCUS lên thẻ bạc (登録基幹技能者 tương đương) và 親方 chính thức công nhận em là thợ chủ chốt của tổ. Học mẫu câu nghiệp vụ về CCUS レベル判定, đăng ký 登録基幹技能者, ý nghĩa của bậc cao trong điều hành công trường, và mẫu câu được công nhận một cách điềm đạm.

---

## Bối cảnh

Tháng 9 năm 2031. Sau khi đỗ 特定技能2号 và tích đủ kinh nghiệm 職長, Thức được xét nâng bậc trên CCUS — từ thẻ vàng (bậc 3) lên thẻ bạc (bậc 4, tương đương 登録基幹技能者). Đây là bậc năng lực cao trong hệ thống CCUS, gắn với vai trò cốt cán quản lý hiện trường. 親方 chính thức công nhận Thức là thợ chủ chốt của tổ. Chương này tập trung mẫu câu nghiệp vụ về レベル判定, thủ tục 登録基幹技能者, ý nghĩa bậc cao trong quản lý công trường và mẫu câu nhận công nhận điềm đạm. *(Chế độ CCUS・登録基幹技能者 trong sách theo quy định tại thời điểm biên soạn 2026; vận hành chi tiết có thể thay đổi.)*

---

## Tình huống 1 — Văn phòng · 8:00, 斉藤 báo tin xét nâng bậc CCUS

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、CCUSの<ruby>能力<rt>のうりょく</rt></ruby><ruby>評価<rt>ひょうか</rt></ruby>で、<ruby>上位<rt>じょうい</rt></ruby>レベルの<ruby>判定<rt>はんてい</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>ができる。<br>*(Thức, đánh giá năng lực CCUS, em xin xét bậc cao hơn được rồi.)* |
| Thức | <ruby>上位<rt>じょうい</rt></ruby>レベルというと、シルバーカードですか。<br>*(Bậc cao hơn tức là thẻ bạc ạ?)* |
| 斉藤職長 | そうだ。レベル<ruby>四<rt>よん</rt></ruby>、<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>の<ruby>判定<rt>はんてい</rt></ruby>だ。<br>*(Đúng. Bậc 4, xét tương đương kỹ năng viên cốt cán đăng ký.)* |
| Thức | <ruby>二号<rt>にごう</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>と<ruby>職長<rt>しょくちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>条件<rt>じょうけん</rt></ruby>に<ruby>効<rt>き</rt></ruby>くのですね。<br>*(Đỗ 2号 và kinh nghiệm 職長 có tác dụng vào điều kiện nhỉ.)* |
| 斉藤職長 | そのとおりだ。<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>と<ruby>保有<rt>ほゆう</rt></ruby><ruby>資格<rt>しかく</rt></ruby>が<ruby>蓄積<rt>ちくせき</rt></ruby>されて<ruby>判定<rt>はんてい</rt></ruby>に<ruby>反映<rt>はんえい</rt></ruby>される。<br>*(Đúng vậy. Lịch sử làm việc và chứng chỉ tích lũy được phản ánh vào việc xét bậc.)* |
| Thức | では<ruby>判定<rt>はんてい</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めたいです。<br>*(Vậy em muốn xúc tiến đơn xét bậc ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:20, kiểm tra điều kiện 登録基幹技能者

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>の<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>何<rt>なに</rt></ruby>ですか。<br>*(Anh Saito, điều kiện kỹ năng viên cốt cán đăng ký là gì ạ?)* |
| 斉藤職長 | <ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>、<ruby>職長<rt>しょくちょう</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>、それと<ruby>講習<rt>こうしゅう</rt></ruby>の<ruby>修了<rt>しゅうりょう</rt></ruby>が<ruby>柱<rt>はしら</rt></ruby>になる。<br>*(Số năm kinh nghiệm thực tế, kinh nghiệm 職長, và hoàn thành khóa tập huấn là các trụ chính.)* |
| Thức | <ruby>講習<rt>こうしゅう</rt></ruby>はこれから<ruby>受<rt>う</rt></ruby>けるのですね。<br>*(Khóa tập huấn là sắp tới mới học ạ?)* |
| 斉藤職長 | そうだ。<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>を<ruby>修了<rt>しゅうりょう</rt></ruby>すれば<ruby>登録<rt>とうろく</rt></ruby>できる。<br>*(Đúng. Hoàn thành khóa kỹ năng viên cốt cán đăng ký thì đăng ký được.)* |
| Thức | <ruby>足場<rt>あしば</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>の<ruby>講習<rt>こうしゅう</rt></ruby>があるのですか。<br>*(Có khóa tập huấn cho lĩnh vực giàn giáo ạ?)* |
| 斉藤職長 | ある。とび<ruby>工事<rt>こうじ</rt></ruby>の<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby><ruby>講習<rt>こうしゅう</rt></ruby>だ。<ruby>申込<rt>もうしこみ</rt></ruby>を<ruby>手配<rt>てはい</rt></ruby>しよう。<br>*(Có. Khóa kỹ năng viên cốt cán đăng ký công việc とび. Để thu xếp đăng ký.)* |

---

## Tình huống 3 — Văn phòng máy tính · 9:00, xem 就業履歴 trên CCUS

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | CCUSのマイページで<ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しよう。<br>*(Trên trang cá nhân CCUS kiểm lịch sử làm việc nào.)* |
| Thức | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>日数<rt>にっすう</rt></ruby>と<ruby>職長<rt>しょくちょう</rt></ruby><ruby>登録<rt>とうろく</rt></ruby><ruby>期間<rt>きかん</rt></ruby>が<ruby>記録<rt>きろく</rt></ruby>されています。<br>*(Số ngày làm việc và thời gian đăng ký 職長 được ghi lại ạ.)* |
| 斉藤職長 | <ruby>毎日<rt>まいにち</rt></ruby>カードをタッチしてきた<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねだ。これが<ruby>判定<rt>はんてい</rt></ruby>の<ruby>根拠<rt>こんきょ</rt></ruby>になる。<br>*(Là sự tích lũy chạm thẻ mỗi ngày. Đây là căn cứ xét bậc.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>のタッチが<ruby>後<rt>あと</rt></ruby>で<ruby>力<rt>ちから</rt></ruby>になるんですね。<br>*(Chạm thẻ mỗi ngày sau này thành sức nhỉ.)* |
| 斉藤職長 | そうだ。<ruby>地道<rt>じみち</rt></ruby>な<ruby>記録<rt>きろく</rt></ruby>が<ruby>客観<rt>きゃっかん</rt></ruby><ruby>的<rt>てき</rt></ruby>な<ruby>証明<rt>しょうめい</rt></ruby>になる。<br>*(Đúng. Ghi nhận bền bỉ thành chứng minh khách quan.)* |
| Thức | <ruby>記録<rt>きろく</rt></ruby>の<ruby>大切<rt>たいせつ</rt></ruby>さを<ruby>改<rt>あらた</rt></ruby>めて<ruby>感<rt>かん</rt></ruby>じます。<br>*(Em lại càng thấy tầm quan trọng của ghi nhận ạ.)* |

---

## Tình huống 4 — Trung tâm tập huấn · 9:30, dự khóa 登録基幹技能者講習

| Vai | Lời thoại |
|---|---|
| 講師 | 本日の<ruby>講習<rt>こうしゅう</rt></ruby>は、<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>の<ruby>役割<rt>やくわり</rt></ruby>についてです。<br>*(Khóa hôm nay về vai trò của kỹ năng viên cốt cán đăng ký.)* |
| Thức | <ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>は<ruby>職長<rt>しょくちょう</rt></ruby>とどう<ruby>違<rt>ちが</rt></ruby>うのでしょうか。<br>*(Kỹ năng viên cốt cán khác 職長 thế nào ạ?)* |
| 講師 | <ruby>職長<rt>しょくちょう</rt></ruby>は<ruby>班<rt>はん</rt></ruby>の<ruby>指揮<rt>しき</rt></ruby>、<ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>の<ruby>調整<rt>ちょうせい</rt></ruby>と<ruby>後進<rt>こうしん</rt></ruby><ruby>育成<rt>いくせい</rt></ruby>まで<ruby>担<rt>にな</rt></ruby>います。<br>*(職長 chỉ huy tổ, kỹ năng viên cốt cán gánh cả điều phối toàn công trường và đào tạo lớp sau.)* |
| Thức | <ruby>責任<rt>せきにん</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がるのですね。<br>*(Phạm vi trách nhiệm mở rộng ra nhỉ.)* |
| 講師 | そうです。<ruby>技能<rt>ぎのう</rt></ruby>だけでなく、<ruby>段取<rt>だんど</rt></ruby>りと<ruby>人<rt>ひと</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かす<ruby>力<rt>ちから</rt></ruby>が<ruby>問<rt>と</rt></ruby>われます。<br>*(Đúng. Không chỉ tay nghề mà cả sự sắp xếp và năng lực điều phối con người.)* |
| Thức | <ruby>日々<rt>ひび</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>でやってきたことと<ruby>重<rt>かさ</rt></ruby>なります。<br>*(Trùng với những gì em làm ở công trường hằng ngày ạ.)* |

---

## Tình huống 5 — Khu nghỉ · 12:10, Hùng nói chuyện cùng nâng bậc

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>俺<rt>おれ</rt></ruby>も<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>すよ。<br>*(Thức, mình cũng nhắm kỹ năng viên cốt cán đăng ký.)* |
| Thức | いいな。<ruby>講習<rt>こうしゅう</rt></ruby>は<ruby>現場<rt>げんば</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>ばかりで<ruby>分<rt>わ</rt></ruby>かりやすいぞ。<br>*(Tốt đấy. Khóa học toàn chuyện công trường nên dễ hiểu lắm.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>たち、<ruby>気<rt>き</rt></ruby>づいたら<ruby>遠<rt>とお</rt></ruby>くまで<ruby>来<rt>き</rt></ruby>たな。<br>*(Bọn mình, để ý mới thấy đi xa thật.)* |
| Thức | <ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつだったからな。<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ると<ruby>長<rt>なが</rt></ruby>い<ruby>道<rt>みち</rt></ruby>だった。<br>*(Vì từng bước một. Nhìn lại là chặng đường dài.)* |
| Hùng | これからも<ruby>同<rt>おな</rt></ruby>じペースでいこう。<br>*(Sau này cũng giữ nhịp đó.)* |
| Thức | ああ。<ruby>焦<rt>あせ</rt></ruby>らず、でも<ruby>止<rt>と</rt></ruby>まらず。<br>*(Ừ. Không vội, nhưng không dừng.)* |

---

## Tình huống 6 — Công trường · 14:00, áp dụng tư duy điều phối toàn công trường

| Vai | Lời thoại |
|---|---|
| 石川さん | トゥックさん、<ruby>外装<rt>がいそう</rt></ruby><ruby>業者<rt>ぎょうしゃ</rt></ruby>と<ruby>足場<rt>あしば</rt></ruby><ruby>側<rt>がわ</rt></ruby>で<ruby>作業<rt>さぎょう</rt></ruby>が<ruby>重<rt>かさ</rt></ruby>なりそうです。<br>*(Anh Thức, có vẻ việc thợ ốp ngoài và bên giàn giáo trùng nhau.)* |
| Thức | <ruby>石川<rt>いしかわ</rt></ruby>さん、<ruby>時間<rt>じかん</rt></ruby><ruby>帯<rt>たい</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けましょう。<ruby>午前<rt>ごぜん</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>調整<rt>ちょうせい</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby>は<ruby>外装<rt>がいそう</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>です。<br>*(Anh Ishikawa, ta chia khung giờ. Sáng điều chỉnh giàn giáo, chiều ưu tiên ốp ngoài.)* |
| 石川さん | それなら<ruby>干渉<rt>かんしょう</rt></ruby>しないな。<ruby>調整<rt>ちょうせい</rt></ruby>が<ruby>早<rt>はや</rt></ruby>い。<br>*(Vậy thì không chồng chéo. Điều phối nhanh đấy.)* |
| Thức | <ruby>班<rt>はん</rt></ruby>だけでなく<ruby>現場<rt>げんば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>るようにしています。<br>*(Em cố nhìn cả công trường chứ không chỉ tổ mình ạ.)* |
| 石川さん | その<ruby>視野<rt>しや</rt></ruby>が<ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>だ。<br>*(Tầm nhìn đó chính là kỹ năng viên cốt cán.)* |
| Thức | <ruby>講習<rt>こうしゅう</rt></ruby>で<ruby>学<rt>まな</rt></ruby>んだことを、すぐ<ruby>現場<rt>げんば</rt></ruby>で<ruby>試<rt>ため</rt></ruby>しています。<br>*(Điều học ở khóa tập huấn em thử ngay ở công trường ạ.)* |

---

## Tình huống 7 — Văn phòng · 17:00, nộp đơn 登録基幹技能者

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>講習<rt>こうしゅう</rt></ruby>を<ruby>修了<rt>しゅうりょう</rt></ruby>しました。<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby>の<ruby>登録<rt>とうろく</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めたいです。<br>*(Bác Matsumoto, em hoàn thành khóa rồi. Em muốn xúc tiến đăng ký kỹ năng viên cốt cán ạ.)* |
| 松本さん | <ruby>修了<rt>しゅうりょう</rt></ruby><ruby>証<rt>しょう</rt></ruby>はあるな。<ruby>申請<rt>しんせい</rt></ruby><ruby>書<rt>しょ</rt></ruby>に<ruby>経歴<rt>けいれき</rt></ruby>を<ruby>正確<rt>せいかく</rt></ruby>に<ruby>書<rt>か</rt></ruby>けよ。<br>*(Có giấy hoàn thành nhỉ. Đơn ghi quá trình chính xác đấy.)* |
| Thức | <ruby>就業<rt>しゅうぎょう</rt></ruby><ruby>履歴<rt>りれき</rt></ruby>はCCUSの<ruby>記録<rt>きろく</rt></ruby>と<ruby>合<rt>あ</rt></ruby>わせます。<br>*(Lịch sử làm việc em khớp với hồ sơ CCUS ạ.)* |
| 松本さん | それが<ruby>確実<rt>かくじつ</rt></ruby>や。<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>証明<rt>しょうめい</rt></ruby>はこっちで<ruby>付<rt>つ</rt></ruby>ける。<br>*(Vậy mới chắc. Chứng nhận công ty bên này gắn vào.)* |
| Thức | ありがとうございます。<ruby>不備<rt>ふび</rt></ruby>のないように<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Cảm ơn bác. Em kiểm để không thiếu sót ạ.)* |
| 松本さん | お<ruby>前<rt>まえ</rt></ruby>に<ruby>任<rt>まか</rt></ruby>せれば<ruby>安心<rt>あんしん</rt></ruby>や。<br>*(Giao cho cậu thì yên tâm.)* |

---

## Tình huống 8 — Văn phòng máy tính · 8:00, nhận kết quả レベル判定 thẻ bạc

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、レベル<ruby>判定<rt>はんてい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>た。<ruby>見<rt>み</rt></ruby>てみろ。<br>*(Thức, kết quả xét bậc ra rồi. Xem thử đi.)* |
| Thức | …シルバーカード、レベル<ruby>四<rt>よん</rt></ruby>になっています。<br>*(…Thẻ bạc, lên bậc 4 rồi ạ.)* |
| 斉藤職長 | <ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>だ。<ruby>現場<rt>げんば</rt></ruby>を<ruby>束<rt>たば</rt></ruby>ねる<ruby>立場<rt>たちば</rt></ruby>として<ruby>公<rt>おおやけ</rt></ruby>に<ruby>認<rt>みと</rt></ruby>められた。<br>*(Tương đương kỹ năng viên cốt cán đăng ký. Được công nhận chính thức là người gánh vác công trường.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>形<rt>かたち</rt></ruby>になりました。<br>*(Tích lũy mỗi ngày đã thành hình ạ.)* |
| 斉藤職長 | カードの<ruby>色<rt>いろ</rt></ruby>より、<ruby>中身<rt>なかみ</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>は<ruby>中身<rt>なかみ</rt></ruby>がある。<br>*(Hơn màu thẻ là nội dung bên trong. Em có nội dung.)* |
| Thức | ありがとうございます。<ruby>色<rt>いろ</rt></ruby>に<ruby>恥<rt>は</rt></ruby>じない<ruby>仕事<rt>しごと</rt></ruby>をします。<br>*(Cảm ơn anh. Em làm việc xứng với màu thẻ ạ.)* |

---

## Tình huống 9 — Công trường · 8:30, 親方 chính thức công nhận

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、シルバーになったそうやな。<br>*(Thức, nghe nói lên thẻ bạc rồi nhỉ.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>登録<rt>とうろく</rt></ruby><ruby>基幹<rt>きかん</rt></ruby><ruby>技能者<rt>ぎのうしゃ</rt></ruby><ruby>相当<rt>そうとう</rt></ruby>の<ruby>判定<rt>はんてい</rt></ruby>を<ruby>頂<rt>いただ</rt></ruby>きました。<br>*(Vâng, thưa sếp. Em được xét tương đương kỹ năng viên cốt cán đăng ký ạ.)* |
| 谷川親方 | お<ruby>前<rt>まえ</rt></ruby>は、もう<ruby>俺<rt>おれ</rt></ruby>の<ruby>右腕<rt>みぎうで</rt></ruby>や。<ruby>現場<rt>げんば</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せられる。<br>*(Cậu, đã là cánh tay phải của tôi. Giao công trường được rồi.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>にそう<ruby>言<rt>い</rt></ruby>っていただけて、<ruby>言葉<rt>ことば</rt></ruby>になりません。<br>*(Được sếp nói vậy, em không nói nên lời ạ.)* |
| 谷川親方 | <ruby>五年<rt>ごねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>も<ruby>左<rt>ひだり</rt></ruby>も<ruby>分<rt>わ</rt></ruby>からんかった<ruby>若造<rt>わかぞう</rt></ruby>がな。<ruby>大<rt>おお</rt></ruby>きゅうなった。<br>*(Năm năm trước thằng nhóc không biết gì đấy. Lớn rồi.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>ててくださったからです。これからも<ruby>精進<rt>しょうじん</rt></ruby>します。<br>*(Là vì sếp đã dạy dỗ em. Sau này em vẫn tu dưỡng ạ.)* |

---

## Tình huống 10 — Khu nghỉ · 12:10, đàn em nhìn Thức như mục tiêu

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、シルバーカードってすごいんですよね。<br>*(Anh Thức, thẻ bạc ghê lắm phải không ạ?)* |
| Thức | <ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けて、<ruby>役割<rt>やくわり</rt></ruby>を<ruby>果<rt>は</rt></ruby>たした<ruby>証<rt>あかし</rt></ruby>だ。でも<ruby>偉<rt>えら</rt></ruby>くなったわけじゃない。<br>*(Là minh chứng làm lâu và tròn vai. Nhưng không phải vì thế mà oai hơn.)* |
| クアン | <ruby>偉<rt>えら</rt></ruby>くなったわけじゃない、ですか。<br>*(Không phải oai hơn ạ?)* |
| Thức | <ruby>責任<rt>せきにん</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えただけだ。<ruby>守<rt>まも</rt></ruby>る<ruby>人<rt>ひと</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えた。<br>*(Chỉ là trách nhiệm nhiều hơn. Người phải bảo vệ nhiều hơn.)* |
| ドゥック | かっこいいです。<ruby>僕<rt>ぼく</rt></ruby>も<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Hay quá ạ. Em cũng nhắm tới.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>カードをタッチして、<ruby>基本<rt>きほん</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る。それが<ruby>出発<rt>しゅっぱつ</rt></ruby><ruby>点<rt>てん</rt></ruby>だ。<br>*(Mỗi ngày chạm thẻ, giữ cái cơ bản. Đó là điểm xuất phát.)* |

---

## Tình huống 11 — Công trường · 14:00, điều phối tổ với vai cao hơn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さん、<ruby>東<rt>ひがし</rt></ruby><ruby>面<rt>めん</rt></ruby>はベテランで、<ruby>西<rt>にし</rt></ruby><ruby>面<rt>めん</rt></ruby>は<ruby>新人<rt>しんじん</rt></ruby>と<ruby>組<rt>く</rt></ruby>む<ruby>配置<rt>はいち</rt></ruby>でどうですか。<br>*(Anh Kondo, mặt đông để thợ lành nghề, mặt tây ghép với đàn em, bố trí vậy thế nào.)* |
| 近藤先輩 | ええ<ruby>配置<rt>はいち</rt></ruby>や。<ruby>新人<rt>しんじん</rt></ruby>に<ruby>目<rt>め</rt></ruby>が<ruby>届<rt>とど</rt></ruby>くしな。<br>*(Bố trí tốt. Để mắt được tới đàn em.)* |
| Thức | <ruby>危険<rt>きけん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>には<ruby>必<rt>かなら</rt></ruby>ず<ruby>経験者<rt>けいけんしゃ</rt></ruby>を<ruby>付<rt>つ</rt></ruby>けます。<br>*(Chỗ nguy hiểm nhất định bố trí người có kinh nghiệm.)* |
| 近藤先輩 | <ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>人<rt>ひと</rt></ruby>を<ruby>動<rt>うご</rt></ruby>かす、<ruby>板<rt>いた</rt></ruby>についたな。<br>*(Nhìn toàn cục mà điều người, quen rồi đấy.)* |
| Thức | <ruby>一人<rt>ひとり</rt></ruby>ひとりの<ruby>力<rt>ちから</rt></ruby>を<ruby>活<rt>い</rt></ruby>かすのが<ruby>役目<rt>やくめ</rt></ruby>です。<br>*(Phát huy sức từng người là phận sự ạ.)* |
| 近藤先輩 | <ruby>頼<rt>たの</rt></ruby>もしいわ。<ruby>任<rt>まか</rt></ruby>せとくで。<br>*(Đáng tin cậy. Cứ để đó.)* |

---

## Tình huống 12 — Văn phòng · 17:00, 斉藤 nói về ý nghĩa được công nhận

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>親方<rt>おやかた</rt></ruby>が「<ruby>右腕<rt>みぎうで</rt></ruby>」と<ruby>言<rt>い</rt></ruby>ったらしいな。<br>*(Thức, nghe nói 親方 gọi em là "cánh tay phải".)* |
| Thức | はい。<ruby>正直<rt>しょうじき</rt></ruby>、<ruby>嬉<rt>うれ</rt></ruby>しさより<ruby>身<rt>み</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まりました。<br>*(Vâng. Thật ra, hơn cả vui là em thấy phải nghiêm túc hơn ạ.)* |
| 斉藤職長 | いい<ruby>反応<rt>はんのう</rt></ruby>だ。<ruby>認<rt>みと</rt></ruby>められるとは、<ruby>期待<rt>きたい</rt></ruby>を<ruby>背負<rt>せお</rt></ruby>うことだ。<br>*(Phản ứng tốt. Được công nhận tức là gánh kỳ vọng.)* |
| Thức | その<ruby>期待<rt>きたい</rt></ruby>に、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>で<ruby>応<rt>こた</rt></ruby>えます。<br>*(Em đáp lại kỳ vọng đó bằng công việc mỗi ngày ạ.)* |
| 斉藤職長 | それでこそだ。<ruby>肩書<rt>かたが</rt></ruby>きは<ruby>人<rt>ひと</rt></ruby>を<ruby>変<rt>か</rt></ruby>えない。<ruby>仕事<rt>しごと</rt></ruby>が<ruby>人<rt>ひと</rt></ruby>を<ruby>作<rt>つく</rt></ruby>る。<br>*(Vậy mới đúng. Chức danh không đổi con người. Công việc tạo nên con người.)* |
| Thức | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Câu đó, em khắc trong lòng ạ.)* |

---

## Tình huống 13 — Phòng trọ Thức · 21:00, gọi Linh kể chuyện được công nhận (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, hôm nay anh được nâng bậc CCUS lên thẻ bạc, tương đương thợ cốt cán. 親方 còn gọi anh là "cánh tay phải". |
| Linh | Anh ơi, mừng quá! Đó là cả một chặng đường năm năm của anh đó. |
| Thức | Ừ. Nhưng anh không thấy oai hơn, chỉ thấy trách nhiệm nặng hơn. Người mình phải lo nhiều hơn. |
| Linh | Anh nghĩ vậy là chín lắm. Người ta tin anh vì anh xứng đáng mà. |
| Thức | Cảm ơn em luôn nghe anh kể. Từng cột mốc anh đều muốn chia với em đầu tiên. |
| Linh | Em vui vì được nghe. Anh cứ vững vàng vậy, em tin con đường phía trước của anh sẽ tốt. |

---

## Tình huống 14 — Công trường · 8:00, 朝礼 với tư thế cốt cán

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>三<rt>みっ</rt></ruby>つの<ruby>班<rt>はん</rt></ruby>が<ruby>同時<rt>どうじ</rt></ruby>に<ruby>動<rt>うご</rt></ruby>きます。<ruby>連携<rt>れんけい</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Chào buổi sáng. Hôm nay ba tổ cùng chạy. Xác nhận phối hợp.)* |
| 近藤先輩 | <ruby>班<rt>はん</rt></ruby>をまたぐ<ruby>調整<rt>ちょうせい</rt></ruby>はトゥックがやるんやな。<br>*(Điều phối liên tổ Thức phụ trách nhỉ.)* |
| Thức | はい。<ruby>資材<rt>しざい</rt></ruby><ruby>搬入<rt>はんにゅう</rt></ruby>の<ruby>順番<rt>じゅんばん</rt></ruby>と<ruby>揚重<rt>ようじゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>を<ruby>一<rt>いっ</rt></ruby><ruby>本化<rt>ぽんか</rt></ruby>します。<br>*(Vâng. Em gộp thống nhất thứ tự vật tư vào và giờ cẩu.)* |
| Nam | <ruby>班<rt>はん</rt></ruby><ruby>同士<rt>どうし</rt></ruby>がぶつからないんですね。<br>*(Các tổ không va nhau nhỉ.)* |
| Thức | そうだ。<ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>整<rt>ととの</rt></ruby>えるのが<ruby>俺<rt>おれ</rt></ruby>の<ruby>役目<rt>やくめ</rt></ruby>だ。<br>*(Đúng. Nhìn toàn cục mà sắp xếp là phận sự của tôi.)* |
| 近藤先輩 | <ruby>現場<rt>げんば</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>っとる。ええ<ruby>仕切<rt>しき</rt></ruby>りや。<br>*(Công trường chạy trơn. Điều hành tốt đấy.)* |

---

## Tình huống 15 — Công trường · 14:00, hướng dẫn đàn em đặt mục tiêu dài

| Vai | Lời thoại |
|---|---|
| クアン | トゥックさん、シルバーまで<ruby>何年<rt>なんねん</rt></ruby>かかりましたか。<br>*(Anh Thức, tới thẻ bạc mất mấy năm ạ?)* |
| Thức | <ruby>来日<rt>らいにち</rt></ruby>から<ruby>数<rt>かぞ</rt></ruby>えると<ruby>五年<rt>ごねん</rt></ruby>だ。<ruby>短<rt>みじか</rt></ruby>くはない。<br>*(Tính từ lúc sang Nhật là năm năm. Không ngắn.)* |
| クアン | <ruby>長<rt>なが</rt></ruby>く<ruby>感<rt>かん</rt></ruby>じませんでしたか。<br>*(Anh có thấy dài không ạ?)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>は<ruby>必死<rt>ひっし</rt></ruby>で、<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>ると<ruby>一<rt>いっ</rt></ruby><ruby>瞬<rt>しゅん</rt></ruby>だった。<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>すればいい。<br>*(Mỗi ngày vật lộn, nhìn lại thì như một thoáng. Cứ tập trung việc trước mắt là được.)* |
| クアン | <ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>のことを、ですね。<br>*(Việc trước mắt nhỉ.)* |
| Thức | そうだ。<ruby>遠<rt>とお</rt></ruby>くばかり<ruby>見<rt>み</rt></ruby>ると<ruby>足元<rt>あしもと</rt></ruby>がおろそかになる。<br>*(Đúng. Cứ nhìn xa thì lơ là dưới chân.)* |

---

## Tình huống 16 — Văn phòng · 17:30, 親方 nói về kế thừa tổ thợ

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>俺<rt>おれ</rt></ruby>もええ<ruby>歳<rt>とし</rt></ruby>や。この<ruby>組<rt>くみ</rt></ruby>を<ruby>誰<rt>だれ</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>すか、よう<ruby>考<rt>かんが</rt></ruby>える。<br>*(Thức, tôi cũng có tuổi rồi. Hay nghĩ để lại tổ này cho ai.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>はまだまだ<ruby>現役<rt>げんえき</rt></ruby>です。<br>*(Sếp vẫn còn sung sức lắm ạ.)* |
| 谷川親方 | はは、そう<ruby>言<rt>い</rt></ruby>うてくれるか。だが<ruby>備<rt>そな</rt></ruby>えは<ruby>要<rt>い</rt></ruby>る。お<ruby>前<rt>まえ</rt></ruby>みたいなのが<ruby>育<rt>そだ</rt></ruby>つと<ruby>安心<rt>あんしん</rt></ruby>や。<br>*(Haha, nói vậy à. Nhưng cần chuẩn bị. Có người như cậu lớn lên thì yên tâm.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>の<ruby>仕方<rt>しかた</rt></ruby>を、<ruby>下<rt>した</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えていきます。<br>*(Cách làm việc của sếp, em sẽ truyền xuống lớp dưới ạ.)* |
| 谷川親方 | それでええ。<ruby>技<rt>わざ</rt></ruby>も<ruby>心<rt>こころ</rt></ruby>もな。<ruby>頼<rt>たの</rt></ruby>むで。<br>*(Vậy được. Cả tay nghề lẫn cái tâm. Nhờ cậu đấy.)* |
| Thức | はい。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>受<rt>う</rt></ruby>け<ruby>継<rt>つ</rt></ruby>ぎます。<br>*(Vâng. Em có trách nhiệm kế thừa ạ.)* |

---

## Tình huống 17 — Công trường · 16:00, đàn em báo cáo chủ động

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、<ruby>西<rt>にし</rt></ruby><ruby>面<rt>めん</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>です。<ruby>点検<rt>てんけん</rt></ruby><ruby>記録<rt>きろく</rt></ruby>も<ruby>付<rt>つ</rt></ruby>けました。<br>*(Anh Thức, mặt tây xong rồi ạ. Biên bản kiểm tra em ghi luôn rồi.)* |
| Thức | <ruby>報告<rt>ほうこく</rt></ruby>が<ruby>的確<rt>てきかく</rt></ruby>になったな。<ruby>結論<rt>けつろん</rt></ruby>から<ruby>言<rt>い</rt></ruby>えている。<br>*(Báo cáo chuẩn rồi đấy. Nói được từ kết luận.)* |
| ドゥック | トゥックさんの<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>しました。<br>*(Em bắt chước cách nói của anh Thức ạ.)* |
| Thức | いい<ruby>真似<rt>まね</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>も<ruby>先輩<rt>せんぱい</rt></ruby>を<ruby>真似<rt>まね</rt></ruby>して<ruby>覚<rt>おぼ</rt></ruby>えた。そうやって<ruby>続<rt>つづ</rt></ruby>いていく。<br>*(Bắt chước tốt. Tôi cũng học bằng cách bắt chước đàn anh. Cứ thế nó tiếp nối.)* |
| ドゥック | <ruby>僕<rt>ぼく</rt></ruby>もいつか<ruby>下<rt>した</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>えます。<br>*(Một ngày nào đó em cũng truyền xuống dưới ạ.)* |
| Thức | それでこそだ。<ruby>現場<rt>げんば</rt></ruby>は<ruby>人<rt>ひと</rt></ruby>でつながる。<br>*(Vậy mới đúng. Công trường nối nhau bằng con người.)* |

---

## Tình huống 18 — Văn phòng · 17:00, nhận thẻ CCUS mới

| Vai | Lời thoại |
|---|---|
| 松本さん | トゥック、<ruby>新<rt>あたら</rt></ruby>しいCCUSカードが<ruby>届<rt>とど</rt></ruby>いたぞ。シルバーや。<br>*(Thức, thẻ CCUS mới tới rồi. Thẻ bạc đấy.)* |
| Thức | ありがとうございます。…<ruby>色<rt>いろ</rt></ruby>が<ruby>変<rt>か</rt></ruby>わると、<ruby>少<rt>すこ</rt></ruby>し<ruby>実感<rt>じっかん</rt></ruby>がわきます。<br>*(Cảm ơn bác. …Màu đổi rồi thì cũng thấy thật hơn chút ạ.)* |
| 松本さん | <ruby>色<rt>いろ</rt></ruby>は<ruby>目印<rt>めじるし</rt></ruby>に<ruby>過<rt>す</rt></ruby>ぎん。<ruby>中身<rt>なかみ</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>の<ruby>五年<rt>ごねん</rt></ruby>や。<br>*(Màu chỉ là cái dấu. Nội dung là năm năm của cậu.)* |
| Thức | <ruby>毎日<rt>まいにち</rt></ruby>タッチした<ruby>記録<rt>きろく</rt></ruby>が、ここに<ruby>詰<rt>つ</rt></ruby>まっています。<br>*(Hồ sơ chạm thẻ mỗi ngày, dồn cả vào đây ạ.)* |
| 松本さん | ええ<ruby>顔<rt>かお</rt></ruby>しとる。<ruby>大事<rt>だいじ</rt></ruby>にせえよ。<br>*(Mặt mũi tốt đấy. Giữ kỹ nhé.)* |
| Thức | はい、<ruby>大切<rt>たいせつ</rt></ruby>にします。<br>*(Vâng, em giữ cẩn thận ạ.)* |

---

## Tình huống 19 — Công trường · 17:30, 斉藤 nhìn lại chặng đường Thức

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>来日<rt>らいにち</rt></ruby>した<ruby>頃<rt>ころ</rt></ruby>、お<ruby>前<rt>まえ</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby>に<ruby>上<rt>のぼ</rt></ruby>るのも<ruby>怖<rt>こわ</rt></ruby>がっていた。<br>*(Thức, hồi mới sang, em lên giàn giáo cũng sợ.)* |
| Thức | はい、<ruby>足<rt>あし</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました。<br>*(Vâng, chân em run lập cập ạ.)* |
| 斉藤職長 | その<ruby>男<rt>おとこ</rt></ruby>が<ruby>今<rt>いま</rt></ruby>、<ruby>現場<rt>げんば</rt></ruby><ruby>全体<rt>ぜんたい</rt></ruby>を<ruby>束<rt>たば</rt></ruby>ねている。<ruby>時間<rt>じかん</rt></ruby>と<ruby>努力<rt>どりょく</rt></ruby>はうそをつかないな。<br>*(Cái cậu đó giờ gánh cả công trường. Thời gian và nỗ lực không nói dối nhỉ.)* |
| Thức | <ruby>怖<rt>こわ</rt></ruby>かった<ruby>気持<rt>きも</rt></ruby>ちは<ruby>今<rt>いま</rt></ruby>も<ruby>覚<rt>おぼ</rt></ruby>えています。だから<ruby>新人<rt>しんじん</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かります。<br>*(Cảm giác sợ giờ em vẫn nhớ. Nên em hiểu tâm trạng đàn em ạ.)* |
| 斉藤職長 | それが<ruby>お前<rt>おまえ</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みだ。<ruby>忘<rt>わす</rt></ruby>れるな。<br>*(Đó là điểm mạnh của em. Đừng quên.)* |
| Thức | はい。<ruby>初心<rt>しょしん</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Vâng. Em không quên buổi đầu ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 22:00, Thức tự nhìn lại cột mốc nghề

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) シルバーカード。<ruby>来日<rt>らいにち</rt></ruby>の<ruby>頃<rt>ころ</rt></ruby>は<ruby>想像<rt>そうぞう</rt></ruby>もしなかった。<br>*(Thẻ bạc. Hồi mới sang không tưởng tượng nổi.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>が「<ruby>右腕<rt>みぎうで</rt></ruby>」と<ruby>言<rt>い</rt></ruby>ってくれた。<ruby>一番<rt>いちばん</rt></ruby>の<ruby>勲章<rt>くんしょう</rt></ruby>だ。<br>*(親方 gọi mình là "cánh tay phải". Là huân chương lớn nhất.)* |
| Thức | でも<ruby>偉<rt>えら</rt></ruby>くなったわけじゃない。<ruby>守<rt>まも</rt></ruby>る<ruby>人<rt>ひと</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えただけだ。<br>*(Nhưng không phải oai hơn. Chỉ là người phải bảo vệ nhiều hơn.)* |
| Thức | <ruby>足<rt>あし</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていた<ruby>あの日<rt>あのひ</rt></ruby>を<ruby>忘<rt>わす</rt></ruby>れない。それが<ruby>初心<rt>しょしん</rt></ruby>だ。<br>*(Không quên cái ngày chân run đó. Đó là buổi đầu.)* |
| Thức | <ruby>次<rt>つぎ</rt></ruby>は<ruby>下<rt>した</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>す<ruby>番<rt>ばん</rt></ruby>だ。もらった<ruby>分<rt>ぶん</rt></ruby>、<ruby>返<rt>かえ</rt></ruby>していく。<br>*(Tiếp theo là lượt trao xuống dưới. Nhận bao nhiêu, trả lại bấy nhiêu.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>だ。いつもどおり、<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Mai cũng công trường. Như thường ngày, cẩn thận.)* |

---

## Đọng lại

Sau khi đỗ 特定技能2号, Thức được xét nâng bậc CCUS từ thẻ vàng lên thẻ bạc — tương đương 登録基幹技能者, bậc cốt cán quản lý công trường. Không phải may: chính sự tích lũy bền bỉ — chạm thẻ mỗi ngày, ngày công 職長 ghi nhận, khóa tập huấn hoàn thành — kết thành chứng minh khách quan. 親方 chính thức gọi em là "cánh tay phải", giao điều phối liên tổ, và thổ lộ ý nghĩ về việc kế thừa tổ thợ. Nhưng Thức đón mọi công nhận điềm đạm: thẻ đổi màu chỉ là cái dấu, nội dung là năm năm; được công nhận nghĩa là gánh thêm trách nhiệm và kỳ vọng, không phải oai hơn. Em không quên cái ngày chân run trên giàn giáo — đó là buổi đầu, cũng là thứ giúp em hiểu đàn em. Tiếp theo là lượt em trao xuống lớp sau.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 能力評価 | のうりょくひょうか | đánh giá năng lực (CCUS) |
> | レベル判定 | レベルはんてい | xét bậc năng lực |
> | 登録基幹技能者 | とうろくきかんぎのうしゃ | kỹ năng viên cốt cán đăng ký |
> | 就業履歴 | しゅうぎょうりれき | lịch sử làm việc |
> | 修了証 | しゅうりょうしょう | giấy chứng nhận hoàn thành khóa |
> | 後進育成 | こうしんいくせい | đào tạo lớp sau |
> | 干渉 | かんしょう | sự chồng chéo, xung đột công việc |
> | 連携 | れんけい | sự phối hợp, liên kết |
> | 右腕 | みぎうで | cánh tay phải (người tin cẩn) |
> | 肩書き | かたがき | chức danh, danh nghĩa |
> | 現役 | げんえき | đang làm việc tích cực, chưa nghỉ |
> | 受け継ぐ | うけつぐ | kế thừa, tiếp nối |
> | 初心 | しょしん | tâm thế buổi đầu |
> | 積み重ね | つみかさね | sự tích lũy dần |
> | 勲章 | くんしょう | huân chương, niềm vinh dự |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000010, 800000038, NULL, 'markdown_book', 'T10. Bàn tương lai với Linh — mở khả năng, CHƯA cưới (リン将来・終)', '# Sách kỹ năng đặc định xây dựng · T10. Bàn tương lai với Linh — mở khả năng, CHƯA cưới (リン将来・終)

> **Mục tiêu nhân vật:** Thức bàn với Linh về khả năng tương lai đón cô sang Nhật theo diện 家族滞在 nhờ tư cách 特定技能2号 — nhưng CHƯA cưới, chỉ là dự định/động lực; nhắc 永住権 là mục tiêu xa chưa đủ điều kiện. Chương vẫn ≥17-18 tình huống tiếng Nhật nghiệp vụ về thủ tục lưu trú, điều kiện 家族滞在, lộ trình 永住.

---

## Bối cảnh

Tháng 10 năm 2031. Thức đã là 特定技能2号, thẻ CCUS bạc. Tư cách 2号 mở khả năng — nếu đủ điều kiện — bảo lãnh người thân (vợ/con) sang Nhật theo diện 家族滞在. Thức và Linh (bạn gái đồng hương, chưa cưới) bàn về tương lai: đây chỉ là dự định và động lực, KHÔNG có cầu hôn, KHÔNG cưới, KHÔNG về Việt Nam trong truyện. 永住権 được nhắc là mục tiêu xa — Thức sang Nhật 2026, chưa đủ số năm — nên chưa đạt. Phần lớn chương vẫn là hội thoại tiếng Nhật nghiệp vụ tìm hiểu thủ tục lưu trú, điều kiện 家族滞在 và lộ trình 永住 với 斉藤・松本・hành chính. *(Chế độ 特定技能2号・家族滞在・永住許可 theo quy định tại thời điểm biên soạn 2026; chi tiết có thể thay đổi.)*

---

## Tình huống 1 — Văn phòng · 8:00, hỏi 斉藤 về điều kiện 家族滞在

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby>になると<ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>べると<ruby>聞<rt>き</rt></ruby>きました。<ruby>条件<rt>じょうけん</rt></ruby>を<ruby>詳<rt>くわ</rt></ruby>しく<ruby>知<rt>し</rt></ruby>りたいです。<br>*(Anh Saito, nghe nói lên 2号 thì gọi được người thân. Em muốn biết kỹ điều kiện ạ.)* |
| 斉藤職長 | <ruby>二号<rt>にごう</rt></ruby>は<ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>の<ruby>道<rt>みち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>ける。ただし<ruby>呼<rt>よ</rt></ruby>べるのは<ruby>配偶者<rt>はいぐうしゃ</rt></ruby>と<ruby>子<rt>こ</rt></ruby>だ。<br>*(2号 mở đường 家族滞在. Nhưng người gọi được là vợ/chồng và con.)* |
| Thức | <ruby>配偶者<rt>はいぐうしゃ</rt></ruby>というと、<ruby>婚姻<rt>こんいん</rt></ruby><ruby>関係<rt>かんけい</rt></ruby>が<ruby>前提<rt>ぜんてい</rt></ruby>ですね。<br>*(Vợ/chồng tức là tiền đề phải có quan hệ hôn nhân nhỉ.)* |
| 斉藤職長 | そうだ。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>婚姻<rt>こんいん</rt></ruby>が<ruby>登録<rt>とうろく</rt></ruby>されていることが<ruby>必要<rt>ひつよう</rt></ruby>だ。<ruby>恋人<rt>こいびと</rt></ruby>では<ruby>対象<rt>たいしょう</rt></ruby>にならない。<br>*(Đúng. Cần hôn nhân chính thức đã đăng ký. Người yêu thì không thuộc đối tượng.)* |
| Thức | <ruby>分<rt>わ</rt></ruby>かりました。それなら<ruby>今<rt>いま</rt></ruby>すぐの<ruby>話<rt>はなし</rt></ruby>ではないですね。<br>*(Em hiểu rồi. Vậy thì không phải chuyện ngay bây giờ ạ.)* |
| 斉藤職長 | <ruby>制度<rt>せいど</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>知<rt>し</rt></ruby>った<ruby>上<rt>うえ</rt></ruby>で<ruby>将来<rt>しょうらい</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えればいい。<ruby>焦<rt>あせ</rt></ruby>る<ruby>必要<rt>ひつよう</rt></ruby>はない。<br>*(Hiểu đúng chế độ rồi tính tương lai là được. Không cần vội.)* |

---

## Tình huống 2 — Văn phòng · 8:20, hỏi rõ về 永住権 lộ trình

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>永住権<rt>えいじゅうけん</rt></ruby>はどうすれば<ruby>取<rt>と</rt></ruby>れるのですか。<br>*(Anh Saito, vĩnh trú thì làm thế nào lấy được ạ?)* |
| 斉藤職長 | <ruby>永住<rt>えいじゅう</rt></ruby><ruby>許可<rt>きょか</rt></ruby>は<ruby>別<rt>べつ</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>だ。<ruby>原則<rt>げんそく</rt></ruby>として<ruby>長期<rt>ちょうき</rt></ruby>の<ruby>在留<rt>ざいりゅう</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>が<ruby>要件<rt>ようけん</rt></ruby>になる。<br>*(Phép vĩnh trú là đơn khác. Về nguyên tắc, số năm lưu trú dài là điều kiện.)* |
| Thức | <ruby>具体的<rt>ぐたいてき</rt></ruby>には<ruby>何年<rt>なんねん</rt></ruby>くらい<ruby>必要<rt>ひつよう</rt></ruby>ですか。<br>*(Cụ thể cần khoảng mấy năm ạ?)* |
| 斉藤職長 | <ruby>制度<rt>せいど</rt></ruby>によるが、<ruby>長<rt>なが</rt></ruby>い<ruby>継続<rt>けいぞく</rt></ruby><ruby>在留<rt>ざいりゅう</rt></ruby>と<ruby>納税<rt>のうぜい</rt></ruby>、<ruby>素行<rt>そこう</rt></ruby>などが<ruby>総合<rt>そうごう</rt></ruby><ruby>的<rt>てき</rt></ruby>に<ruby>見<rt>み</rt></ruby>られる。<br>*(Tùy chế độ, nhưng lưu trú liên tục dài, nộp thuế, hạnh kiểm v.v. được xét tổng hợp.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>は<ruby>来日<rt>らいにち</rt></ruby>して<ruby>五年<rt>ごねん</rt></ruby>です。まだ<ruby>足<rt>た</rt></ruby>りないですね。<br>*(Em sang Nhật năm năm rồi. Vẫn chưa đủ nhỉ.)* |
| 斉藤職長 | そうだ。<ruby>永住<rt>えいじゅう</rt></ruby>は<ruby>遠<rt>とお</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>として<ruby>持<rt>も</rt></ruby>っておけばいい。<ruby>今<rt>いま</rt></ruby>は<ruby>二号<rt>にごう</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>を<ruby>着実<rt>ちゃくじつ</rt></ruby>にだ。<br>*(Đúng. Vĩnh trú cứ để làm mục tiêu xa. Giờ là gia hạn 2号 cho chắc.)* |

---

## Tình huống 3 — Phòng hành chính · 9:30, hỏi 松本 về thủ tục 家族滞在 tương lai

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>将来<rt>しょうらい</rt></ruby><ruby>家族<rt>かぞく</rt></ruby>を<ruby>呼<rt>よ</rt></ruby>ぶ<ruby>場合<rt>ばあい</rt></ruby>、<ruby>会社<rt>かいしゃ</rt></ruby>の<ruby>協力<rt>きょうりょく</rt></ruby>は<ruby>要<rt>い</rt></ruby>りますか。<br>*(Bác Matsumoto, nếu sau này gọi người thân, có cần công ty hỗ trợ không ạ?)* |
| 松本さん | <ruby>家族<rt>かぞく</rt></ruby><ruby>滞在<rt>たいざい</rt></ruby>は<ruby>本人<rt>ほんにん</rt></ruby>の<ruby>申請<rt>しんせい</rt></ruby>やが、<ruby>収入<rt>しゅうにゅう</rt></ruby><ruby>証明<rt>しょうめい</rt></ruby>などで<ruby>会社<rt>かいしゃ</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>が<ruby>要<rt>い</rt></ruby>る。<br>*(家族滞在 là đơn của cá nhân, nhưng cần giấy tờ công ty như chứng minh thu nhập.)* |
| Thức | <ruby>扶養<rt>ふよう</rt></ruby>できる<ruby>収入<rt>しゅうにゅう</rt></ruby>があるか<ruby>見<rt>み</rt></ruby>られるのですね。<br>*(Sẽ xét xem có thu nhập đủ nuôi không nhỉ.)* |
| 松本さん | そうや。<ruby>安定<rt>あんてい</rt></ruby>した<ruby>雇用<rt>こよう</rt></ruby>と<ruby>収入<rt>しゅうにゅう</rt></ruby>が<ruby>前提<rt>ぜんてい</rt></ruby>になる。<ruby>二号<rt>にごう</rt></ruby>のお<ruby>前<rt>まえ</rt></ruby>なら<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>整<rt>ととの</rt></ruby>えやすい。<br>*(Đúng. Việc làm và thu nhập ổn định là tiền đề. 2号 như cậu thì điều kiện dễ chuẩn bị.)* |
| Thức | まだ<ruby>先<rt>さき</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>ですが、<ruby>知<rt>し</rt></ruby>っておきたかったんです。<br>*(Còn là chuyện sau này, nhưng em muốn biết trước ạ.)* |
| 松本さん | <ruby>備<rt>そな</rt></ruby>えるのはええことや。<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>聞<rt>き</rt></ruby>き。<br>*(Chuẩn bị là việc tốt. Cần thì cứ hỏi lúc nào cũng được.)* |

---

## Tình huống 4 — Văn phòng · 10:00, hỏi rõ phân biệt 2号 và 永住

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby>のままずっと<ruby>日本<rt>にほん</rt></ruby>にいられるのですか。<br>*(Anh Saito, cứ là 2号 thì ở Nhật mãi được không ạ?)* |
| 斉藤職長 | <ruby>更新<rt>こうしん</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>ければ<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>ける。だが<ruby>更新<rt>こうしん</rt></ruby>は<ruby>必<rt>かなら</rt></ruby>ず<ruby>必要<rt>ひつよう</rt></ruby>だ。<ruby>永住<rt>えいじゅう</rt></ruby>とは<ruby>性質<rt>せいしつ</rt></ruby>が<ruby>違<rt>ちが</rt></ruby>う。<br>*(Cứ gia hạn thì làm lâu dài. Nhưng gia hạn là bắt buộc. Tính chất khác vĩnh trú.)* |
| Thức | <ruby>永住<rt>えいじゅう</rt></ruby>は<ruby>更新<rt>こうしん</rt></ruby>が<ruby>不要<rt>ふよう</rt></ruby>になる、ということですね。<br>*(Vĩnh trú thì không cần gia hạn nữa, đúng không ạ?)* |
| 斉藤職長 | おおむねそうだ。だから<ruby>多<rt>おお</rt></ruby>くの<ruby>人<rt>ひと</rt></ruby>が<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>にする。だが<ruby>条件<rt>じょうけん</rt></ruby>は<ruby>厳<rt>きび</rt></ruby>しい。<br>*(Đại thể vậy. Nên nhiều người lấy làm mục tiêu tương lai. Nhưng điều kiện khắt khe.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>はまず<ruby>二号<rt>にごう</rt></ruby>を<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けて、<ruby>実績<rt>じっせき</rt></ruby>を<ruby>積<rt>つ</rt></ruby>みます。<br>*(Em trước hết duy trì 2号 lâu dài, tích thành tích ạ.)* |
| 斉藤職長 | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>確実<rt>かくじつ</rt></ruby>な<ruby>道<rt>みち</rt></ruby>だ。<ruby>遠<rt>とお</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>遠<rt>とお</rt></ruby>いまま<ruby>大事<rt>だいじ</rt></ruby>に<ruby>持<rt>も</rt></ruby>てばいい。<br>*(Đó là con đường chắc chắn nhất. Mục tiêu xa cứ giữ ở chỗ xa mà trân trọng.)* |

---

## Tình huống 5 — Quán cơm · 19:00, bàn tương lai với Linh (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, anh tìm hiểu kỹ rồi. Tư cách 2号 mở khả năng sau này đón người thân sang theo diện 家族滞在. |
| Linh | Vậy là... một ngày nào đó em có thể sang Nhật với anh? |
| Thức | Có khả năng. Nhưng diện đó chỉ áp dụng cho vợ chồng đã đăng ký kết hôn, không phải bây giờ. Anh muốn nói thật với em để mình cùng hiểu rõ. |
| Linh | Em hiểu mà anh. Mình chưa tính chuyện đó vội. Chỉ cần biết con đường có mở ra là em đã yên tâm rồi. |
| Thức | Ừ. Anh coi đó là một hướng tương lai, một động lực. Còn giờ anh tập trung giữ vững công việc và tư cách đã. |
| Linh | Em thấy anh chững chạc lắm. Mình cứ đi từng bước, không cần gấp gáp. Em luôn ở đây với anh. |

---

## Tình huống 6 — Văn phòng · 8:00, hỏi 斉藤 về gia hạn 2号 định kỳ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>二号<rt>にごう</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>はどれくらいの<ruby>周期<rt>しゅうき</rt></ruby>ですか。<br>*(Anh Saito, gia hạn 2号 theo chu kỳ bao lâu ạ?)* |
| 斉藤職長 | <ruby>在留<rt>ざいりゅう</rt></ruby><ruby>期間<rt>きかん</rt></ruby>ごとに<ruby>更新<rt>こうしん</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>する。<ruby>期限<rt>きげん</rt></ruby><ruby>前<rt>まえ</rt></ruby>に<ruby>余裕<rt>よゆう</rt></ruby>をもって<ruby>動<rt>うご</rt></ruby>くことだ。<br>*(Theo mỗi kỳ hạn lưu trú thì xin gia hạn. Làm sớm trước hạn cho có dư thời gian.)* |
| Thức | <ruby>更新<rt>こうしん</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>なものは<ruby>毎回<rt>まいかい</rt></ruby><ruby>同<rt>おな</rt></ruby>じですか。<br>*(Đồ cần khi gia hạn mỗi lần có giống nhau không ạ?)* |
| 斉藤職長 | <ruby>基本<rt>きほん</rt></ruby>は<ruby>同<rt>おな</rt></ruby>じだ。<ruby>雇用<rt>こよう</rt></ruby><ruby>継続<rt>けいぞく</rt></ruby>、<ruby>納税<rt>のうぜい</rt></ruby>、<ruby>素行<rt>そこう</rt></ruby>が<ruby>問題<rt>もんだい</rt></ruby>ないことが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Cơ bản giống. Việc làm liên tục, nộp thuế, hạnh kiểm không vấn đề là quan trọng.)* |
| Thức | <ruby>日々<rt>ひび</rt></ruby>きちんと<ruby>働<rt>はたら</rt></ruby>くことが、<ruby>更新<rt>こうしん</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby>でもあるのですね。<br>*(Làm việc đàng hoàng mỗi ngày cũng chính là chuẩn bị cho gia hạn nhỉ.)* |
| 斉藤職長 | そのとおりだ。<ruby>特別<rt>とくべつ</rt></ruby>なことはいらない。<ruby>普通<rt>ふつう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けることだ。<br>*(Đúng vậy. Không cần gì đặc biệt. Duy trì cái bình thường.)* |

---

## Tình huống 7 — Khu nghỉ · 12:10, Hùng nói chuyện tương lai gia đình

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>二号<rt>にごう</rt></ruby>になったら<ruby>家族<rt>かぞく</rt></ruby>のこと、<ruby>考<rt>かんが</rt></ruby>えるよな。<br>*(Thức, thành 2号 rồi thì cũng nghĩ chuyện gia đình nhỉ.)* |
| Thức | <ruby>制度<rt>せいど</rt></ruby>としては<ruby>道<rt>みち</rt></ruby>が<ruby>開<rt>ひら</rt></ruby>けた。でも<ruby>俺<rt>おれ</rt></ruby>はまだ<ruby>急<rt>いそ</rt></ruby>がない。<br>*(Về chế độ thì đường mở rồi. Nhưng mình chưa vội.)* |
| Hùng | <ruby>焦<rt>あせ</rt></ruby>らないのか。<br>*(Không sốt ruột à.)* |
| Thức | <ruby>焦<rt>あせ</rt></ruby>って<ruby>決<rt>き</rt></ruby>めることじゃない。<ruby>仕事<rt>しごと</rt></ruby>も<ruby>暮<rt>く</rt></ruby>らしも<ruby>固<rt>かた</rt></ruby>めてからだ。<br>*(Không phải chuyện quyết vội. Phải vững việc và đời sống đã.)* |
| Hùng | <ruby>確<rt>たし</rt></ruby>かに。<ruby>土台<rt>どだい</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だな。<br>*(Đúng thật. Cái nền quan trọng nhỉ.)* |
| Thức | <ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつだ。それは<ruby>仕事<rt>しごと</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じだよ。<br>*(Từng bước một. Cái đó cũng như công việc thôi.)* |

---

## Tình huống 8 — Văn phòng · 14:00, hỏi 松本 về 永住 điều kiện chi tiết

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>松本<rt>まつもと</rt></ruby>さん、<ruby>永住<rt>えいじゅう</rt></ruby><ruby>申請<rt>しんせい</rt></ruby>の<ruby>素行<rt>そこう</rt></ruby><ruby>要件<rt>ようけん</rt></ruby>とは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なに</rt></ruby>ですか。<br>*(Bác Matsumoto, điều kiện hạnh kiểm khi xin vĩnh trú cụ thể là gì ạ?)* |
| 松本さん | <ruby>法律<rt>ほうりつ</rt></ruby>を<ruby>守<rt>まも</rt></ruby>り、<ruby>税<rt>ぜい</rt></ruby>や<ruby>年金<rt>ねんきん</rt></ruby>をきちんと<ruby>納<rt>おさ</rt></ruby>めとること。<ruby>普通<rt>ふつう</rt></ruby>に<ruby>真面目<rt>まじめ</rt></ruby>に<ruby>暮<rt>く</rt></ruby>らすことや。<br>*(Tuân pháp luật, đóng thuế và lương hưu đầy đủ. Sống đàng hoàng bình thường thôi.)* |
| Thức | <ruby>未納<rt>みのう</rt></ruby>や<ruby>滞納<rt>たいのう</rt></ruby>があると<ruby>不利<rt>ふり</rt></ruby>ですか。<br>*(Có nợ chưa nộp hay chậm nộp thì bất lợi ạ?)* |
| 松本さん | <ruby>不利<rt>ふり</rt></ruby>になる。だから<ruby>毎月<rt>まいつき</rt></ruby>きちんと<ruby>払<rt>はら</rt></ruby>うことが<ruby>将来<rt>しょうらい</rt></ruby>につながる。<br>*(Bất lợi. Nên đóng đầy đủ hằng tháng là nối tới tương lai.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねが<ruby>遠<rt>とお</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>の<ruby>土台<rt>どだい</rt></ruby>になるのですね。<br>*(Tích lũy bây giờ thành cái nền cho mục tiêu xa nhỉ.)* |
| 松本さん | そういうことや。<ruby>派手<rt>はで</rt></ruby>なことはいらん。<ruby>地道<rt>じみち</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Đúng vậy. Không cần gì hoành tráng. Bền bỉ là nhất.)* |

---

## Tình huống 9 — Công trường · 8:00, vẫn làm việc 職長 bình thường

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>です。<ruby>上<rt>うえ</rt></ruby>から<ruby>順<rt>じゅん</rt></ruby>に、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>で。<br>*(Chào buổi sáng. Hôm nay tháo giàn giáo. Từ trên xuống theo thứ tự, an toàn số một.)* |
| Nam | <ruby>解体<rt>かいたい</rt></ruby>の<ruby>注意<rt>ちゅうい</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>させてください。<br>*(Cho em xác nhận điểm chú ý khi tháo ạ.)* |
| Thức | <ruby>部材<rt>ぶざい</rt></ruby>を<ruby>落<rt>お</rt></ruby>とさない、<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>を<ruby>入<rt>い</rt></ruby>れない、<ruby>立入<rt>たちいり</rt></ruby><ruby>禁止<rt>きんし</rt></ruby>を<ruby>徹底<rt>てってい</rt></ruby>。<br>*(Không làm rơi cấu kiện, không cho người vào dưới, làm triệt để khu cấm vào.)* |
| Nam | <ruby>了解<rt>りょうかい</rt></ruby>しました。<br>*(Em rõ ạ.)* |
| Thức | <ruby>将来<rt>しょうらい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>も<ruby>大事<rt>だいじ</rt></ruby>だが、<ruby>今日<rt>きょう</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Chuyện tương lai cũng quan trọng nhưng công trường hôm nay là quan trọng nhất.)* |
| 近藤先輩 | ええ<ruby>姿勢<rt>しせい</rt></ruby>や。<ruby>足元<rt>あしもと</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めてこそや。<br>*(Tư thế tốt. Vững dưới chân mới được.)* |

---

## Tình huống 10 — Văn phòng · 17:00, 斉藤 nói về cân bằng mục tiêu

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>将来<rt>しょうらい</rt></ruby>のことをよく<ruby>調<rt>しら</rt></ruby>べているな。<br>*(Thức, em tìm hiểu kỹ chuyện tương lai nhỉ.)* |
| Thức | はい。<ruby>制度<rt>せいど</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>知<rt>し</rt></ruby>っておきたいんです。<ruby>誤解<rt>ごかい</rt></ruby>したまま<ruby>決<rt>き</rt></ruby>めたくない。<br>*(Vâng. Em muốn hiểu chế độ cho đúng. Không muốn quyết khi còn hiểu nhầm.)* |
| 斉藤職長 | いい<ruby>考<rt>かんが</rt></ruby>え<ruby>方<rt>かた</rt></ruby>だ。<ruby>遠<rt>とお</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>と<ruby>近<rt>ちか</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けて<ruby>考<rt>かんが</rt></ruby>えろ。<br>*(Cách nghĩ tốt. Tách mục tiêu xa và mục tiêu gần ra mà nghĩ.)* |
| Thức | <ruby>近<rt>ちか</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>二号<rt>にごう</rt></ruby>の<ruby>更新<rt>こうしん</rt></ruby>と<ruby>現場<rt>げんば</rt></ruby>の<ruby>仕事<rt>しごと</rt></ruby>です。<br>*(Mục tiêu gần là gia hạn 2号 và công việc công trường ạ.)* |
| 斉藤職長 | <ruby>遠<rt>とお</rt></ruby>い<ruby>方<rt>ほう</rt></ruby>は<ruby>永住<rt>えいじゅう</rt></ruby>や<ruby>家族<rt>かぞく</rt></ruby>のこと。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>着実<rt>ちゃくじつ</rt></ruby>に<ruby>近<rt>ちか</rt></ruby>づけばいい。<br>*(Cái xa là vĩnh trú và chuyện gia đình. Không vội, cứ tới gần chắc chắn là được.)* |
| Thức | はい。<ruby>足元<rt>あしもと</rt></ruby>から<ruby>固<rt>かた</rt></ruby>めます。<br>*(Vâng. Em vững từ dưới chân ạ.)* |

---

## Tình huống 11 — Phòng trọ Thức · 20:00, gọi Linh chia sẻ thêm (tiếng Việt — ngắn)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, anh hỏi kỹ thêm rồi. Vĩnh trú là mục tiêu xa, anh mới năm năm, chưa đủ điều kiện đâu. |
| Linh | Vậy mình cứ coi đó là đích để hướng tới thôi, không cần gấp anh nhỉ. |
| Thức | Đúng. Trước mắt anh giữ vững 2号 và công việc. Mỗi tháng đóng thuế, sống đàng hoàng — đó cũng là chuẩn bị cho sau này. |
| Linh | Em thích cách anh nghĩ. Chắc chắn, không viển vông. Em yên tâm khi nghe anh nói vậy. |

---

## Tình huống 12 — Công trường · 14:00, dạy đàn em nghĩ dài hạn

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、<ruby>将来<rt>しょうらい</rt></ruby>のこと、いつから<ruby>考<rt>かんが</rt></ruby>えればいいですか。<br>*(Anh Thức, chuyện tương lai nên nghĩ từ khi nào ạ?)* |
| Thức | <ruby>考<rt>かんが</rt></ruby>えるのは<ruby>早<rt>はや</rt></ruby>くていい。でも<ruby>決<rt>き</rt></ruby>めるのは<ruby>足元<rt>あしもと</rt></ruby>が<ruby>固<rt>かた</rt></ruby>まってからだ。<br>*(Nghĩ thì sớm cũng được. Nhưng quyết là khi đã vững dưới chân.)* |
| ドゥック | <ruby>足元<rt>あしもと</rt></ruby>というのは、<ruby>仕事<rt>しごと</rt></ruby>のことですか。<br>*(Dưới chân tức là công việc ạ?)* |
| Thức | <ruby>仕事<rt>しごと</rt></ruby>と<ruby>資格<rt>しかく</rt></ruby>、<ruby>暮<rt>く</rt></ruby>らしだ。それが<ruby>安定<rt>あんてい</rt></ruby>すれば<ruby>選択肢<rt>せんたくし</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>える。<br>*(Việc, tư cách, và đời sống. Ổn định thì lựa chọn nhiều lên.)* |
| ドゥック | <ruby>焦<rt>あせ</rt></ruby>らずに<ruby>積<rt>つ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げます。<br>*(Em không vội, sẽ tích lũy dần ạ.)* |
| Thức | それでいい。<ruby>俺<rt>おれ</rt></ruby>もそうしてきた。<br>*(Vậy là được. Tôi cũng đã làm vậy.)* |

---

## Tình huống 13 — Văn phòng · 17:00, 親方 nói về sống lâu dài ở Nhật

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>長<rt>なが</rt></ruby>く<ruby>日本<rt>にほん</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>く<ruby>気<rt>き</rt></ruby>か。<br>*(Thức, định làm lâu dài ở Nhật à.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。この<ruby>仕事<rt>しごと</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けたいです。<br>*(Vâng, thưa sếp. Em muốn tiếp tục công việc này ạ.)* |
| 谷川親方 | ええこっちゃ。<ruby>腰<rt>こし</rt></ruby>を<ruby>据<rt>す</rt></ruby>えてやるなら、<ruby>体<rt>からだ</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にせえよ。<br>*(Tốt đấy. Định trụ lại làm thì giữ gìn sức khỏe nhé.)* |
| Thức | はい。<ruby>長<rt>なが</rt></ruby>く<ruby>働<rt>はたら</rt></ruby>くには<ruby>無理<rt>むり</rt></ruby>をしないことだと、<ruby>親方<rt>おやかた</rt></ruby>から<ruby>学<rt>まな</rt></ruby>びました。<br>*(Vâng. Làm lâu dài thì đừng gắng quá, em học được từ sếp ạ.)* |
| 谷川親方 | よう<ruby>覚<rt>おぼ</rt></ruby>えとる。<ruby>将来<rt>しょうらい</rt></ruby>のことも、その<ruby>調子<rt>ちょうし</rt></ruby>でな。<br>*(Nhớ tốt đấy. Chuyện tương lai cũng cứ đà đó.)* |
| Thức | はい。<ruby>無理<rt>むり</rt></ruby>せず、<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng. Không gắng quá, em duy trì lâu dài ạ.)* |

---

## Tình huống 14 — Văn phòng · 8:20, hỏi 斉藤 về 1級技能士 hướng tới

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>次<rt>つぎ</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>に<ruby>一級<rt>いっきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えています。<br>*(Anh Saito, mục tiêu tiếp theo em đang nghĩ tới 1級技能士 ạ.)* |
| 斉藤職長 | いい<ruby>目標<rt>もくひょう</rt></ruby>だ。とび<ruby>技能士<rt>ぎのうし</rt></ruby>の<ruby>一級<rt>いっきゅう</rt></ruby>は<ruby>国家<rt>こっか</rt></ruby><ruby>資格<rt>しかく</rt></ruby>で、<ruby>評価<rt>ひょうか</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い。<br>*(Mục tiêu tốt. 1級 thợ kỹ năng とび là chứng chỉ quốc gia, được đánh giá cao.)* |
| Thức | <ruby>受験<rt>じゅけん</rt></ruby>には<ruby>実務<rt>じつむ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>が<ruby>要<rt>い</rt></ruby>るのですよね。<br>*(Dự thi cần kinh nghiệm thực tế nhỉ.)* |
| 斉藤職長 | <ruby>一定<rt>いってい</rt></ruby>の<ruby>経験<rt>けいけん</rt></ruby><ruby>年数<rt>ねんすう</rt></ruby>が<ruby>必要<rt>ひつよう</rt></ruby>だ。お<ruby>前<rt>まえ</rt></ruby>の<ruby>経歴<rt>けいれき</rt></ruby>なら<ruby>挑戦<rt>ちょうせん</rt></ruby>できる。<br>*(Cần số năm kinh nghiệm nhất định. Quá trình của em thì thử sức được.)* |
| Thức | <ruby>急<rt>いそ</rt></ruby>がず、<ruby>準備<rt>じゅんび</rt></ruby>が<ruby>整<rt>ととの</rt></ruby>ったら<ruby>挑<rt>いど</rt></ruby>みます。<br>*(Không vội, chuẩn bị xong thì em thử ạ.)* |
| 斉藤職長 | その<ruby>姿勢<rt>しせい</rt></ruby>でいけば、<ruby>道<rt>みち</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>いていく。<br>*(Cứ tư thế đó thì con đường còn nối tiếp.)* |

---

## Tình huống 15 — Công trường · 14:00, áp dụng tư duy dài hạn vào việc

| Vai | Lời thoại |
|---|---|
| 近藤先輩 | トゥック、<ruby>足場<rt>あしば</rt></ruby><ruby>解体<rt>かいたい</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>り、<ruby>余裕<rt>よゆう</rt></ruby><ruby>持<rt>も</rt></ruby>たせとるな。<br>*(Thức, sắp xếp tháo giàn giáo, để dư thời gian nhỉ.)* |
| Thức | はい。<ruby>急<rt>いそ</rt></ruby>ぐと<ruby>事故<rt>じこ</rt></ruby>になります。<ruby>長<rt>なが</rt></ruby>く<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>続<rt>つづ</rt></ruby>けることが<ruby>本当<rt>ほんとう</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>です。<br>*(Vâng. Vội thì thành tai nạn. Duy trì lâu không tai nạn mới là thành quả thật.)* |
| 近藤先輩 | <ruby>仕事<rt>しごと</rt></ruby>も<ruby>人生<rt>じんせい</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じやな。<br>*(Việc với đời cũng vậy nhỉ.)* |
| Thức | はい。<ruby>遠<rt>とお</rt></ruby>くを<ruby>見<rt>み</rt></ruby>るほど、<ruby>足元<rt>あしもと</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Vâng. Càng nhìn xa thì càng trọng dưới chân ạ.)* |
| 近藤先輩 | ええこと<ruby>言<rt>い</rt></ruby>うやないか。<br>*(Nói hay đấy.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>たちに<ruby>教<rt>おそ</rt></ruby>わったことです。<br>*(Là điều các sếp dạy em ạ.)* |

---

## Tình huống 16 — Văn phòng · 17:30, 斉藤 chốt cân bằng đời sống và nghề

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>仕事<rt>しごと</rt></ruby>も<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>計画<rt>けいかく</rt></ruby>も、よく<ruby>地<rt>じ</rt></ruby>に<ruby>足<rt>あし</rt></ruby>がついているな。<br>*(Thức, việc lẫn kế hoạch tương lai, chân chạm đất tốt đấy.)* |
| Thức | <ruby>夢<rt>ゆめ</rt></ruby>は<ruby>持<rt>も</rt></ruby>ちますが、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねでしか<ruby>近<rt>ちか</rt></ruby>づけないと<ruby>思<rt>おも</rt></ruby>っています。<br>*(Em có ước mơ, nhưng nghĩ chỉ tích lũy mỗi ngày mới tới gần được ạ.)* |
| 斉藤職長 | <ruby>正<rt>ただ</rt></ruby>しい。<ruby>大<rt>おお</rt></ruby>きな<ruby>夢<rt>ゆめ</rt></ruby>ほど、<ruby>小<rt>ちい</rt></ruby>さな<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねだ。<br>*(Đúng. Ước mơ càng lớn càng là sự tích lũy từng bước nhỏ.)* |
| Thức | <ruby>家族<rt>かぞく</rt></ruby>のことも<ruby>永住<rt>えいじゅう</rt></ruby>のことも、<ruby>焦<rt>あせ</rt></ruby>らず<ruby>進<rt>すす</rt></ruby>めます。<br>*(Chuyện gia đình lẫn vĩnh trú, em không vội mà tiến tới ạ.)* |
| 斉藤職長 | それでいい。お<ruby>前<rt>まえ</rt></ruby>なら<ruby>必<rt>かなら</rt></ruby>ず<ruby>形<rt>かたち</rt></ruby>になる。<br>*(Vậy được. Em thì chắc chắn sẽ thành hình.)* |
| Thức | ありがとうございます。<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつです。<br>*(Cảm ơn anh. Từng bước một ạ.)* |

---

## Tình huống 17 — Phòng trọ Thức · 20:30, gọi Linh — bàn nhịp tương lai (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, anh nghĩ kỹ rồi. Tương lai mình cứ để mở: anh giữ vững nghề, tư cách, đời sống đã. Khi nào nền vững thì các lựa chọn tự rõ ra. |
| Linh | Em đồng ý với anh. Mình không cần một lời hứa vội vàng nào lúc này. Quan trọng là anh đang đi đúng hướng. |
| Thức | Cảm ơn em đã hiểu. Anh không muốn nói những điều chưa chắc. Anh chỉ muốn em biết: con đường có mở, và anh đang cố mỗi ngày. |
| Linh | Vậy là đủ rồi anh. Mình cứ từng bước, không gấp. Em sẽ luôn ở đây dõi theo anh. |

---

## Tình huống 18 — Công trường · 8:00, 朝礼 thường nhật, khép chương

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>、<ruby>確実<rt>かくじつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めます。<br>*(Chào buổi sáng. Hôm nay cũng an toàn số một, tiến hành chắc chắn.)* |
| Nam | トゥックさんは<ruby>将来<rt>しょうらい</rt></ruby>の<ruby>目標<rt>もくひょう</rt></ruby>がはっきりしていて<ruby>羨<rt>うらや</rt></ruby>ましいです。<br>*(Anh Thức có mục tiêu tương lai rõ ràng, em ngưỡng mộ ạ.)* |
| Thức | <ruby>目標<rt>もくひょう</rt></ruby>は<ruby>遠<rt>とお</rt></ruby>くにある。でも<ruby>今日<rt>きょう</rt></ruby>の<ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にすることが、その<ruby>道<rt>みち</rt></ruby>だ。<br>*(Mục tiêu ở xa. Nhưng trân trọng ngày hôm nay chính là con đường tới đó.)* |
| 近藤先輩 | <ruby>今日<rt>きょう</rt></ruby>を<ruby>積<rt>つ</rt></ruby>めば<ruby>明日<rt>あした</rt></ruby>になる。<ruby>単純<rt>たんじゅん</rt></ruby>やけど<ruby>本当<rt>ほんとう</rt></ruby>や。<br>*(Tích hôm nay thì thành ngày mai. Đơn giản mà đúng.)* |
| Thức | はい。だから<ruby>今日<rt>きょう</rt></ruby>も<ruby>丁寧<rt>ていねい</rt></ruby>に。さあ、<ruby>始<rt>はじ</rt></ruby>めましょう。<br>*(Vâng. Nên hôm nay cũng cẩn thận. Nào, bắt đầu thôi.)* |
| Nam | はい、お<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Vâng, nhờ anh ạ!)* |

---

## Tình huống 19 — Văn phòng · 17:00, 親方 nói lời điềm tĩnh về đường dài

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、お<ruby>前<rt>まえ</rt></ruby>を<ruby>見<rt>み</rt></ruby>とると、<ruby>焦<rt>あせ</rt></ruby>らんやつが<ruby>一番<rt>いちばん</rt></ruby><ruby>遠<rt>とお</rt></ruby>くまで<ruby>行<rt>い</rt></ruby>くと<ruby>思<rt>おも</rt></ruby>うわ。<br>*(Thức, nhìn cậu, tôi nghĩ đứa không vội mới đi xa nhất.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>がいつも、<ruby>無理<rt>むり</rt></ruby>するなと<ruby>言<rt>い</rt></ruby>ってくださったからです。<br>*(Vì sếp luôn bảo em đừng gắng quá ạ.)* |
| 谷川親方 | <ruby>焦<rt>あせ</rt></ruby>って<ruby>倒<rt>たお</rt></ruby>れたら<ruby>意味<rt>いみ</rt></ruby>がない。<ruby>続<rt>つづ</rt></ruby>けるやつが<ruby>勝<rt>か</rt></ruby>つんや。<br>*(Vội mà gục thì vô nghĩa. Đứa duy trì được mới thắng.)* |
| Thức | <ruby>将来<rt>しょうらい</rt></ruby>も、<ruby>続<rt>つづ</rt></ruby>けることで<ruby>近<rt>ちか</rt></ruby>づけると<ruby>信<rt>しん</rt></ruby>じています。<br>*(Tương lai cũng vậy, em tin duy trì thì tới gần được ạ.)* |
| 谷川親方 | その<ruby>信念<rt>しんねん</rt></ruby>があれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>や。あとは<ruby>歩<rt>ある</rt></ruby>くだけや。<br>*(Có niềm tin đó thì ổn. Còn lại chỉ việc bước thôi.)* |
| Thức | はい。<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ、<ruby>歩<rt>ある</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng. Từng bước, em đi tiếp ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 22:00, Thức tự nhìn lại tương lai

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) <ruby>二号<rt>にごう</rt></ruby>で<ruby>道<rt>みち</rt></ruby>が<ruby>広<rt>ひろ</rt></ruby>がった。<ruby>家族<rt>かぞく</rt></ruby>のことも、いつかは。<br>*(2号 mở rộng đường. Chuyện gia đình, một ngày nào đó.)* |
| Thức | でも<ruby>今<rt>いま</rt></ruby>は<ruby>急<rt>いそ</rt></ruby>がない。<ruby>正式<rt>せいしき</rt></ruby>な<ruby>道<rt>みち</rt></ruby>を、<ruby>順<rt>じゅん</rt></ruby>を<ruby>追<rt>お</rt></ruby>って。<br>*(Nhưng giờ không vội. Con đường chính thức, theo từng bước.)* |
| Thức | <ruby>永住<rt>えいじゅう</rt></ruby>はまだ<ruby>遠<rt>とお</rt></ruby>い。<ruby>年数<rt>ねんすう</rt></ruby>も<ruby>足<rt>た</rt></ruby>りない。<ruby>遠<rt>とお</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>のままでいい。<br>*(Vĩnh trú còn xa. Số năm chưa đủ. Cứ là mục tiêu xa cũng được.)* |
| Thức | リンとの<ruby>将来<rt>しょうらい</rt></ruby>も、<ruby>焦<rt>あせ</rt></ruby>って<ruby>決<rt>き</rt></ruby>めることじゃない。<ruby>土台<rt>どだい</rt></ruby>を<ruby>固<rt>かた</rt></ruby>めてからだ。<br>*(Tương lai với Linh cũng không phải chuyện quyết vội. Khi nền đã vững.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>できるのは、<ruby>毎日<rt>まいにち</rt></ruby>を<ruby>丁寧<rt>ていねい</rt></ruby>に<ruby>積<rt>つ</rt></ruby>むこと。それだけだ。<br>*(Cái làm được bây giờ là tích từng ngày cẩn thận. Chỉ thế thôi.)* |
| Thức | <ruby>遠<rt>とお</rt></ruby>くを<ruby>見<rt>み</rt></ruby>て、<ruby>足元<rt>あしもと</rt></ruby>を<ruby>歩<rt>ある</rt></ruby>く。それが<ruby>俺<rt>おれ</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>だ。<br>*(Nhìn xa, bước dưới chân. Đó là cách của mình.)* |

---

## Đọng lại

Tư cách 特定技能2号 mở ra một khả năng lớn: nếu đủ điều kiện, sau này Thức có thể đón người thân sang Nhật theo diện 家族滞在. Em tìm hiểu kỹ chế độ với 斉藤 và 松本 — và hiểu rõ điều quan trọng: diện đó chỉ áp dụng cho vợ/chồng đã đăng ký kết hôn, không phải người yêu, không phải bây giờ. Với Linh, đây chỉ là một hướng tương lai, một động lực được nói thật và chừng mực — không cầu hôn, không hứa vội. 永住権 cũng được nhắc nhưng là mục tiêu xa: Thức mới năm năm ở Nhật, chưa đủ số năm, nên giữ nó như đích để hướng tới. Tinh thần xuyên suốt chương — của 親方, 斉藤 và chính Thức — là: nhìn xa nhưng vững dưới chân; ước mơ lớn chỉ tới gần bằng tích lũy từng ngày; không gắng quá, duy trì lâu dài mới thắng. Thức khép chương với một tâm thế chín, không viển vông.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 家族滞在 | かぞくたいざい | tư cách lưu trú theo người thân |
> | 配偶者 | はいぐうしゃ | vợ/chồng (về mặt pháp lý) |
> | 婚姻関係 | こんいんかんけい | quan hệ hôn nhân |
> | 永住権 | えいじゅうけん | quyền vĩnh trú |
> | 永住許可 | えいじゅうきょか | phép vĩnh trú |
> | 在留年数 | ざいりゅうねんすう | số năm lưu trú |
> | 素行 | そこう | hạnh kiểm, lối sống |
> | 納税 | のうぜい | việc nộp thuế |
> | 滞納 | たいのう | chậm nộp, nợ đọng |
> | 扶養 | ふよう | sự nuôi dưỡng, cấp dưỡng |
> | 要件 | ようけん | điều kiện cần (pháp lý) |
> | 継続在留 | けいぞくざいりゅう | lưu trú liên tục |
> | 着実 | ちゃくじつ | chắc chắn, vững từng bước |
> | 土台 | どだい | cái nền, nền tảng |
> | 一級技能士 | いっきゅうぎのうし | thợ kỹ năng bậc 1 (chứng chỉ quốc gia) |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000011, 800000038, NULL, 'markdown_book', 'T11. Dẫn đàn em 育成就労 đỗ kỳ thi của họ — truyền lửa (後輩合格)', '# Sách kỹ năng đặc định xây dựng · T11. Dẫn đàn em 育成就労 đỗ kỳ thi của họ — truyền lửa (後輩合格)

> **Mục tiêu nhân vật:** Thức kèm hai đàn em 育成就労 ôn và đỗ kỳ thi kỹ năng của họ, đóng vòng motif "từng được dìu, nay dìu lại". Học mẫu câu nghiệp vụ hướng dẫn ôn thi, kiểm tra kỹ năng thực hành, động viên người mới và mẫu câu truyền kinh nghiệm thế hệ.

---

## Bối cảnh

Tháng 1 năm 2032. Hai đàn em diện 育成就労 — Đức và Quân — chuẩn bị dự kỳ thi đánh giá kỹ năng cơ bản nghề とび để tiến lên bước tiếp theo trong lộ trình của họ (tương đương 技能検定 cơ bản / kỳ thi kỹ năng đặc định nhập môn theo chế độ tại thời điểm biên soạn). Thức — nay là 特定技能2号, thẻ CCUS bạc — kèm hai em ôn cả lý thuyết lẫn thực hành. Đây là vòng khép của motif xuyên series: Thức từng là TTS bỡ ngỡ được 親方・斉藤 dìu, nay em dìu lại lớp sau. Chương này tập trung mẫu câu nghiệp vụ hướng dẫn ôn, kiểm tra thực hành, động viên và truyền kinh nghiệm. *(Chế độ 育成就労・技能検定 nêu trong sách theo định hướng tại thời điểm biên soạn 2026.)*

---

## Tình huống 1 — Văn phòng · 8:00, 親方 giao Thức kèm đàn em thi

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、ドゥックとクアンの<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>が<ruby>来月<rt>らいげつ</rt></ruby>や。<ruby>面倒<rt>めんどう</rt></ruby>を<ruby>見<rt>み</rt></ruby>てやってくれ。<br>*(Thức, thi kỹ năng của Đức với Quân là tháng sau. Kèm hai đứa giúp.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>責任<rt>せきにん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>準備<rt>じゅんび</rt></ruby>させます。<br>*(Vâng, thưa sếp. Em có trách nhiệm cho hai em chuẩn bị ạ.)* |
| 谷川親方 | お<ruby>前<rt>まえ</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>を<ruby>通<rt>とお</rt></ruby>ってきた。<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かるやろ。<br>*(Cậu cũng đi qua con đường đó. Hiểu tâm trạng tụi nó nhỉ.)* |
| Thức | はい。<ruby>不安<rt>ふあん</rt></ruby>な<ruby>気持<rt>きも</rt></ruby>ちも、よく<ruby>覚<rt>おぼ</rt></ruby>えています。<br>*(Vâng. Cả cái tâm trạng lo lắng, em nhớ rõ ạ.)* |
| 谷川親方 | その<ruby>気持<rt>きも</rt></ruby>ちを<ruby>忘<rt>わす</rt></ruby>れんと<ruby>教<rt>おし</rt></ruby>えたれ。それが<ruby>一番<rt>いちばん</rt></ruby>や。<br>*(Đừng quên tâm trạng đó mà dạy tụi nó. Đó là nhất.)* |
| Thức | <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>自分<rt>じぶん</rt></ruby>が<ruby>受<rt>う</rt></ruby>けたときのように<ruby>支<rt>ささ</rt></ruby>えます。<br>*(Em rõ ạ. Em đỡ tụi nó như mình từng được đỡ.)* |

---

## Tình huống 2 — Văn phòng · 8:20, lập kế hoạch ôn cho đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ドゥック、クアン、<ruby>試験<rt>しけん</rt></ruby>まで<ruby>一<rt>いっ</rt></ruby>か<ruby>月<rt>げつ</rt></ruby>だ。<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てよう。<br>*(Đức, Quân, còn một tháng tới thi. Mình lập kế hoạch nào.)* |
| ドゥック | <ruby>何<rt>なに</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めればいいですか。<br>*(Bắt đầu từ đâu ạ?)* |
| Thức | <ruby>学科<rt>がっか</rt></ruby>は<ruby>安全<rt>あんぜん</rt></ruby><ruby>基礎<rt>きそ</rt></ruby>から、<ruby>実技<rt>じつぎ</rt></ruby>は<ruby>足場<rt>あしば</rt></ruby><ruby>組立<rt>くみたて</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby><ruby>動作<rt>どうさ</rt></ruby>からだ。<br>*(Lý thuyết từ cơ bản an toàn, thực hành từ thao tác cơ bản lắp giàn giáo.)* |
| クアン | <ruby>毎日<rt>まいにち</rt></ruby>やらないと<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>いませんか。<br>*(Không làm mỗi ngày thì không kịp ạ?)* |
| Thức | <ruby>短<rt>みじか</rt></ruby>くていい。<ruby>毎日<rt>まいにち</rt></ruby><ruby>少<rt>すこ</rt></ruby>しずつが<ruby>一番<rt>いちばん</rt></ruby><ruby>力<rt>ちから</rt></ruby>になる。<ruby>俺<rt>おれ</rt></ruby>がそうだった。<br>*(Ngắn cũng được. Mỗi ngày một ít là thành sức nhất. Tôi đã vậy.)* |
| ドゥック | トゥックさんと<ruby>同<rt>おな</rt></ruby>じやり<ruby>方<rt>かた</rt></ruby>でやってみます。<br>*(Em làm theo cách của anh Thức ạ.)* |

---

## Tình huống 3 — Trên giàn giáo · 9:00, kiểm tra thao tác thực hành Đức

| Vai | Lời thoại |
|---|---|
| Thức | ドゥック、<ruby>試験<rt>しけん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>手順<rt>てじゅん</rt></ruby>でやってみろ。<br>*(Đức, làm thử đúng quy trình như khi thi.)* |
| ドゥック | はい。まず<ruby>建地<rt>たてじ</rt></ruby>を<ruby>立<rt>た</rt></ruby>てて、<ruby>布<rt>ぬの</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けます。<br>*(Vâng. Trước hết dựng cột đứng, gắn thanh ngang ạ.)* |
| Thức | (quan sát) <ruby>順番<rt>じゅんばん</rt></ruby>はいい。だが<ruby>抜<rt>ぬ</rt></ruby>け<ruby>止<rt>ど</rt></ruby>めピンの<ruby>確認<rt>かくにん</rt></ruby>が<ruby>抜<rt>ぬ</rt></ruby>けた。<br>*(Quan sát. Thứ tự tốt. Nhưng thiếu kiểm chốt chống tuột.)* |
| ドゥック | あ…<ruby>試験<rt>しけん</rt></ruby>では<ruby>減点<rt>げんてん</rt></ruby>ですね。<br>*(À… trong thi thì bị trừ điểm nhỉ.)* |
| Thức | そうだ。でも<ruby>今<rt>いま</rt></ruby><ruby>気<rt>き</rt></ruby>づけてよかった。<ruby>本番<rt>ほんばん</rt></ruby>でやらかすより<ruby>百倍<rt>ひゃくばい</rt></ruby>いい。<br>*(Đúng. Nhưng giờ nhận ra là tốt. Hơn gấp trăm lần phạm ở thi thật.)* |
| ドゥック | もう<ruby>一回<rt>いっかい</rt></ruby>、ピン<ruby>確認<rt>かくにん</rt></ruby>を<ruby>入<rt>い</rt></ruby>れてやります。<br>*(Một lần nữa, em thêm bước kiểm chốt vào làm ạ.)* |

---

## Tình huống 4 — Trên giàn giáo · 9:30, sửa lỗi an toàn của Quân

| Vai | Lời thoại |
|---|---|
| Thức | クアン、<ruby>待<rt>ま</rt></ruby>って。<ruby>今<rt>いま</rt></ruby><ruby>安全帯<rt>あんぜんたい</rt></ruby>のフックが<ruby>一<rt>いち</rt></ruby><ruby>瞬<rt>しゅん</rt></ruby><ruby>外<rt>はず</rt></ruby>れた。<br>*(Quân, khoan. Vừa rồi móc dây an toàn tuột một thoáng.)* |
| クアン | <ruby>移動<rt>いどう</rt></ruby>のときに<ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えました。<br>*(Lúc di chuyển em đổi móc ạ.)* |
| Thức | <ruby>掛<rt>か</rt></ruby>け<ruby>替<rt>か</rt></ruby>えは、もう<ruby>一方<rt>いっぽう</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>掛<rt>か</rt></ruby>けてから<ruby>外<rt>はず</rt></ruby>す。<ruby>無<rt>む</rt></ruby><ruby>掛<rt>か</rt></ruby>けの<ruby>時間<rt>じかん</rt></ruby>を<ruby>作<rt>つく</rt></ruby>るな。<br>*(Đổi móc thì gài cái kia trước rồi mới tháo. Đừng tạo khoảng không móc nào.)* |
| クアン | <ruby>試験<rt>しけん</rt></ruby>では<ruby>一発<rt>いっぱつ</rt></ruby><ruby>失格<rt>しっかく</rt></ruby>ですか。<br>*(Trong thi thì trượt ngay phải không ạ?)* |
| Thức | <ruby>安全<rt>あんぜん</rt></ruby><ruby>違反<rt>いはん</rt></ruby>は<ruby>重<rt>おも</rt></ruby>い。だが<ruby>試験<rt>しけん</rt></ruby><ruby>以前<rt>いぜん</rt></ruby>に、<ruby>命<rt>いのち</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わる。だから<ruby>言<rt>い</rt></ruby>う。<br>*(Vi phạm an toàn nặng. Nhưng trước cả chuyện thi, là liên quan tới mạng. Nên tôi nói.)* |
| クアン | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>体<rt>からだ</rt></ruby>に<ruby>染<rt>し</rt></ruby>み<ruby>込<rt>こ</rt></ruby>むまで<ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>します。<br>*(Em hiểu rồi. Em lặp tới khi ngấm vào người ạ.)* |

---

## Tình huống 5 — Khu nghỉ · 12:10, Hùng nói chuyện kèm đàn em

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、お<ruby>前<rt>まえ</rt></ruby>も<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてるんだな。<br>*(Thức, cậu cũng đang dạy đàn em nhỉ.)* |
| Thức | ああ。<ruby>教<rt>おし</rt></ruby>えると、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>基本<rt>きほん</rt></ruby>も<ruby>見直<rt>みなお</rt></ruby>せる。<br>*(Ừ. Dạy thì cũng soi lại được cái cơ bản của mình.)* |
| Hùng | <ruby>俺<rt>おれ</rt></ruby>たちが<ruby>教<rt>おそ</rt></ruby>わったことを<ruby>渡<rt>わた</rt></ruby>す<ruby>番<rt>ばん</rt></ruby>か。<br>*(Tới lượt mình trao lại điều được dạy à.)* |
| Thức | そうだ。<ruby>谷川<rt>たにがわ</rt></ruby><ruby>親方<rt>おやかた</rt></ruby>や<ruby>斉藤<rt>さいとう</rt></ruby>さんがしてくれたことを、<ruby>下<rt>した</rt></ruby>に。<br>*(Đúng. Những gì sếp Tanigawa với anh Saito làm cho mình, trao xuống dưới.)* |
| Hùng | いい<ruby>流<rt>なが</rt></ruby>れだな。これが<ruby>続<rt>つづ</rt></ruby>けば<ruby>現場<rt>げんば</rt></ruby>は<ruby>強<rt>つよ</rt></ruby>くなる。<br>*(Dòng chảy tốt nhỉ. Cứ thế thì công trường mạnh lên.)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>が<ruby>人<rt>ひと</rt></ruby>を<ruby>育<rt>そだ</rt></ruby>てる。それだけは<ruby>変<rt>か</rt></ruby>わらない。<br>*(Người dạy người. Chỉ điều đó là không đổi.)* |

---

## Tình huống 6 — Văn phòng · 19:00, ôn lý thuyết với đàn em

| Vai | Lời thoại |
|---|---|
| Thức | ドゥック、<ruby>足場<rt>あしば</rt></ruby><ruby>点検<rt>てんけん</rt></ruby>はいつ<ruby>行<rt>おこな</rt></ruby>う。<br>*(Đức, kiểm tra giàn giáo tiến hành khi nào.)* |
| ドゥック | <ruby>作業<rt>さぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby><ruby>前<rt>まえ</rt></ruby>と、<ruby>悪天候<rt>あくてんこう</rt></ruby>の<ruby>後<rt>あと</rt></ruby>と、<ruby>組<rt>く</rt></ruby>み<ruby>替<rt>か</rt></ruby>えの<ruby>後<rt>あと</rt></ruby>です。<br>*(Trước khi bắt đầu làm, sau thời tiết xấu, và sau khi sửa giàn ạ.)* |
| Thức | <ruby>完璧<rt>かんぺき</rt></ruby>だ。クアン、<ruby>墜落<rt>ついらく</rt></ruby><ruby>防止<rt>ぼうし</rt></ruby>の<ruby>義務<rt>ぎむ</rt></ruby>が<ruby>生<rt>しょう</rt></ruby>じる<ruby>高<rt>たか</rt></ruby>さは。<br>*(Hoàn hảo. Quân, độ cao phát sinh nghĩa vụ chống rơi ngã.)* |
| クアン | <ruby>二<rt>に</rt></ruby>メートル<ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Từ hai mét trở lên ạ.)* |
| Thức | よし。<ruby>暗記<rt>あんき</rt></ruby>するより、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>と<ruby>結<rt>むす</rt></ruby>びつけろ。そうすれば<ruby>忘<rt>わす</rt></ruby>れない。<br>*(Tốt. Hơn học vẹt, gắn với việc mỗi ngày. Vậy thì không quên.)* |
| ドゥック | トゥックさんに<ruby>言<rt>い</rt></ruby>われたこと、<ruby>現場<rt>げんば</rt></ruby>で<ruby>毎日<rt>まいにち</rt></ruby><ruby>思<rt>おも</rt></ruby>い<ruby>出<rt>だ</rt></ruby>します。<br>*(Điều anh Thức nói, mỗi ngày ở công trường em nhớ ra ạ.)* |

---

## Tình huống 7 — Trên giàn giáo · 14:00, đàn em tiến bộ

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、ピン<ruby>確認<rt>かくにん</rt></ruby>を<ruby>毎回<rt>まいかい</rt></ruby><ruby>入<rt>い</rt></ruby>れています。<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Thức, lần nào em cũng thêm bước kiểm chốt. Anh xem giúp.)* |
| Thức | (quan sát) いいぞ。<ruby>手<rt>て</rt></ruby>が<ruby>自然<rt>しぜん</rt></ruby>に<ruby>動<rt>うご</rt></ruby>いている。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えたな。<br>*(Quan sát. Tốt. Tay tự động làm rồi. Cơ thể nhớ rồi đấy.)* |
| ドゥック | <ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>したら<ruby>怖<rt>こわ</rt></ruby>さも<ruby>減<rt>へ</rt></ruby>りました。<br>*(Lặp nhiều thì cái sợ cũng giảm ạ.)* |
| Thức | それでいい。<ruby>怖<rt>こわ</rt></ruby>さは<ruby>慎重<rt>しんちょう</rt></ruby>さに<ruby>変<rt>か</rt></ruby>わる。なくなりはしない。<br>*(Vậy là được. Sợ chuyển thành cẩn thận. Không mất hẳn đâu.)* |
| ドゥック | この<ruby>調子<rt>ちょうし</rt></ruby>で<ruby>本番<rt>ほんばん</rt></ruby>もできそうです。<br>*(Đà này thì thi thật chắc cũng làm được ạ.)* |
| Thức | <ruby>油断<rt>ゆだん</rt></ruby>はするな。でも<ruby>自信<rt>じしん</rt></ruby>は<ruby>持<rt>も</rt></ruby>っていい。<br>*(Đừng chủ quan. Nhưng cứ tự tin.)* |

---

## Tình huống 8 — Văn phòng · 17:00, báo cáo tiến độ kèm đàn em cho 斉藤

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>後輩<rt>こうはい</rt></ruby><ruby>二人<rt>ふたり</rt></ruby>の<ruby>仕上<rt>しあ</rt></ruby>がりはどうだ。<br>*(Thức, hai đàn em hoàn thiện thế nào.)* |
| Thức | ドゥックは<ruby>安定<rt>あんてい</rt></ruby>してきました。クアンは<ruby>動作<rt>どうさ</rt></ruby>が<ruby>速<rt>はや</rt></ruby>いので、<ruby>確実<rt>かくじつ</rt></ruby>さを<ruby>重点<rt>じゅうてん</rt></ruby>に<ruby>見<rt>み</rt></ruby>ています。<br>*(Đức ổn định dần. Quân thao tác nhanh nên em chú trọng vào sự chắc chắn ạ.)* |
| 斉藤職長 | <ruby>一人<rt>ひとり</rt></ruby>ひとり<ruby>課題<rt>かだい</rt></ruby>を<ruby>見<rt>み</rt></ruby><ruby>分<rt>わ</rt></ruby>けているな。<ruby>指導<rt>しどう</rt></ruby>が<ruby>的確<rt>てきかく</rt></ruby>だ。<br>*(Phân biệt được vấn đề từng người. Hướng dẫn chuẩn đấy.)* |
| Thức | <ruby>自分<rt>じぶん</rt></ruby>がつまずいた<ruby>所<rt>ところ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えているので、<ruby>先回<rt>さきまわ</rt></ruby>りできます。<br>*(Em nhớ chỗ mình từng vấp nên đón đầu được ạ.)* |
| 斉藤職長 | <ruby>経験者<rt>けいけんしゃ</rt></ruby>が<ruby>教<rt>おし</rt></ruby>える<ruby>強<rt>つよ</rt></ruby>みだ。お<ruby>前<rt>まえ</rt></ruby>にしか<ruby>教<rt>おし</rt></ruby>えられないことがある。<br>*(Điểm mạnh của người có kinh nghiệm dạy. Có thứ chỉ em mới dạy được.)* |
| Thức | その<ruby>役目<rt>やくめ</rt></ruby>を<ruby>果<rt>は</rt></ruby>たします。<br>*(Em sẽ làm tròn phận sự đó ạ.)* |

---

## Tình huống 9 — Văn phòng · 19:00, đàn em lo lắng, Thức trấn an

| Vai | Lời thoại |
|---|---|
| クアン | トゥックさん、<ruby>本番<rt>ほんばん</rt></ruby>で<ruby>緊張<rt>きんちょう</rt></ruby>して<ruby>頭<rt>あたま</rt></ruby>が<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になったらどうしよう。<br>*(Anh Thức, thi thật hồi hộp trắng đầu thì làm sao ạ.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>も<ruby>二号<rt>にごう</rt></ruby>の<ruby>模試<rt>もし</rt></ruby>で<ruby>真<rt>ま</rt></ruby>っ<ruby>白<rt>しろ</rt></ruby>になった。だから<ruby>型<rt>かた</rt></ruby>を<ruby>作<rt>つく</rt></ruby>った。<br>*(Tôi cũng trắng đầu ở đề mẫu 2号. Nên mới lập khuôn.)* |
| クアン | <ruby>型<rt>かた</rt></ruby>ですか。<br>*(Khuôn ạ?)* |
| Thức | <ruby>手順<rt>てじゅん</rt></ruby>を<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>順<rt>じゅん</rt></ruby>に<ruby>言<rt>い</rt></ruby>う。<ruby>体<rt>からだ</rt></ruby>が<ruby>覚<rt>おぼ</rt></ruby>えていれば、<ruby>緊張<rt>きんちょう</rt></ruby>しても<ruby>手<rt>て</rt></ruby>は<ruby>動<rt>うご</rt></ruby>く。<br>*(Nói quy trình thành tiếng theo thứ tự. Cơ thể nhớ thì hồi hộp tay vẫn làm được.)* |
| クアン | <ruby>毎日<rt>まいにち</rt></ruby><ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>練習<rt>れんしゅう</rt></ruby>します。<br>*(Em sẽ luyện nói thành tiếng mỗi ngày ạ.)* |
| Thức | それでいい。<ruby>不安<rt>ふあん</rt></ruby>は<ruby>準備<rt>じゅんび</rt></ruby>でしか<ruby>消<rt>け</rt></ruby>せない。<br>*(Vậy là được. Lo lắng chỉ chuẩn bị mới xóa được.)* |

---

## Tình huống 10 — Trên giàn giáo · 14:00, tổng duyệt thực hành

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本番<rt>ほんばん</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じ<ruby>時間<rt>じかん</rt></ruby>を<ruby>計<rt>はか</rt></ruby>る。<ruby>二人<rt>ふたり</rt></ruby>とも、<ruby>始<rt>はじ</rt></ruby>めてくれ。<br>*(Tôi bấm giờ như thi thật. Cả hai, bắt đầu.)* |
| ドゥック | (làm) <ruby>建地<rt>たてじ</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>、<ruby>布<rt>ぬの</rt></ruby><ruby>取付<rt>とりつけ</rt></ruby>、ピン<ruby>確認<rt>かくにん</rt></ruby>、<ruby>手<rt>て</rt></ruby>すり…<br>*(Làm. Kiểm cột đứng, gắn thanh ngang, kiểm chốt, tay vịn…)* |
| Thức | (quan sát) <ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>しながらやれている。いいぞ。<br>*(Quan sát. Vừa nói thành tiếng vừa làm được. Tốt.)* |
| クアン | (làm) …<ruby>安全帯<rt>あんぜんたい</rt></ruby><ruby>二<rt>に</rt></ruby><ruby>丁<rt>ちょう</rt></ruby><ruby>掛<rt>か</rt></ruby>け、<ruby>確認<rt>かくにん</rt></ruby>。<br>*(Làm. …Dây an toàn gài hai móc, kiểm.)* |
| Thức | <ruby>時間<rt>じかん</rt></ruby><ruby>内<rt>ない</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>完了<rt>かんりょう</rt></ruby>。<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>仕上<rt>しあ</rt></ruby>がってきた。<br>*(Trong giờ, không lỗi, hoàn thành. Cả hai hoàn thiện dần.)* |
| ドゥック | トゥックさんのおかげです。<br>*(Là nhờ anh Thức ạ.)* |

---

## Tình huống 11 — Văn phòng · 8:00, 親方 dặn đàn em trước thi

| Vai | Lời thoại |
|---|---|
| 谷川親方 | ドゥック、クアン、<ruby>明日<rt>あした</rt></ruby>が<ruby>本番<rt>ほんばん</rt></ruby>やな。<ruby>緊張<rt>きんちょう</rt></ruby>しとるか。<br>*(Đức, Quân, mai là thi thật nhỉ. Hồi hộp không.)* |
| ドゥック | はい、<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Vâng, em hơi hồi hộp ạ.)* |
| 谷川親方 | <ruby>緊張<rt>きんちょう</rt></ruby>はええことや。<ruby>真剣<rt>しんけん</rt></ruby>な<ruby>証拠<rt>しょうこ</rt></ruby>や。トゥックに<ruby>教<rt>おそ</rt></ruby>わったことを<ruby>出<rt>だ</rt></ruby>せばええ。<br>*(Hồi hộp là tốt. Bằng chứng nghiêm túc. Cứ phát huy điều Thức dạy là được.)* |
| クアン | はい、<ruby>練習<rt>れんしゅう</rt></ruby>どおりにやります。<br>*(Vâng, em làm đúng như luyện ạ.)* |
| 谷川親方 | トゥックも<ruby>同<rt>おな</rt></ruby>じ<ruby>道<rt>みち</rt></ruby>を<ruby>通<rt>とお</rt></ruby>ってきた。<ruby>心配<rt>しんぱい</rt></ruby>いらん。<br>*(Thức cũng đi qua con đường đó. Khỏi lo.)* |
| ドゥック | はい、<ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>いて<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em bình tĩnh cố gắng ạ.)* |

---

## Tình huống 12 — Trước điểm thi · 8:00, Thức tiễn đàn em đi thi

| Vai | Lời thoại |
|---|---|
| Thức | ドゥック、クアン、<ruby>準備<rt>じゅんび</rt></ruby>はやった。あとは<ruby>普段<rt>ふだん</rt></ruby>どおりでいい。<br>*(Đức, Quân, chuẩn bị đã làm. Còn lại cứ như thường ngày là được.)* |
| ドゥック | はい。<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>手順<rt>てじゅん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng. Em nói thành tiếng xác nhận quy trình ạ.)* |
| Thức | クアン、<ruby>速<rt>はや</rt></ruby>さより<ruby>確実<rt>かくじつ</rt></ruby>さだ。<ruby>安全<rt>あんぜん</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>を<ruby>飛<rt>と</rt></ruby>ばすな。<br>*(Quân, hơn nhanh là chắc chắn. Đừng bỏ qua xác nhận an toàn.)* |
| クアン | はい、<ruby>一<rt>ひと</rt></ruby>つずつ<ruby>確実<rt>かくじつ</rt></ruby>に。<br>*(Vâng, từng cái một cho chắc ạ.)* |
| Thức | <ruby>結果<rt>けっか</rt></ruby>は<ruby>後<rt>あと</rt></ruby>からついてくる。<ruby>今<rt>いま</rt></ruby>は<ruby>目<rt>め</rt></ruby>の<ruby>前<rt>まえ</rt></ruby>に<ruby>集中<rt>しゅうちゅう</rt></ruby>だ。<br>*(Kết quả theo sau. Giờ tập trung việc trước mắt.)* |
| ドゥック | <ruby>行<rt>い</rt></ruby>ってきます!<br>*(Bọn em đi ạ!)* |

---

## Tình huống 13 — Công trường · 14:00, Thức làm việc, chờ tin đàn em

| Vai | Lời thoại |
|---|---|
| 近藤先輩 | トゥック、<ruby>後輩<rt>こうはい</rt></ruby>のことが<ruby>気<rt>き</rt></ruby>になるやろ。<br>*(Thức, sốt ruột chuyện đàn em nhỉ.)* |
| Thức | はい、<ruby>正直<rt>しょうじき</rt></ruby><ruby>落<rt>お</rt></ruby>ち<ruby>着<rt>つ</rt></ruby>かないです。でも<ruby>現場<rt>げんば</rt></ruby>は<ruby>動<rt>うご</rt></ruby>かさないと。<br>*(Vâng, thật ra không yên. Nhưng công trường vẫn phải chạy.)* |
| 近藤先輩 | <ruby>自分<rt>じぶん</rt></ruby>のときより<ruby>緊張<rt>きんちょう</rt></ruby>しとるんやないか。<br>*(Hồi hộp hơn cả lúc của mình nhỉ.)* |
| Thức | そうかもしれません。<ruby>教<rt>おし</rt></ruby>えた<ruby>分<rt>ぶん</rt></ruby>、<ruby>祈<rt>いの</rt></ruby>る<ruby>気持<rt>きも</rt></ruby>ちです。<br>*(Có lẽ vậy. Dạy bao nhiêu thì lo cầu cho tụi nó bấy nhiêu ạ.)* |
| 近藤先輩 | それが<ruby>教<rt>おし</rt></ruby>える<ruby>側<rt>がわ</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちや。<ruby>親方<rt>おやかた</rt></ruby>も<ruby>昔<rt>むかし</rt></ruby>そうやったやろな。<br>*(Đó là tâm trạng của người dạy. 親方 ngày xưa cũng vậy nhỉ.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>になって<ruby>親方<rt>おやかた</rt></ruby>の<ruby>気持<rt>きも</rt></ruby>ちが<ruby>分<rt>わ</rt></ruby>かります。<br>*(Giờ em mới hiểu tâm trạng của sếp ạ.)* |

---

## Tình huống 14 — Phòng trọ Thức · 19:00, gọi Linh kể chuyện chờ tin đàn em (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, hôm nay hai đàn em anh kèm đi thi kỹ năng. Anh hồi hộp hơn cả lúc anh thi 2号. |
| Linh | Dễ thương ghê. Anh lo cho tụi nhỏ như người thầy thật rồi. |
| Thức | Ừ. Giờ anh mới hiểu hồi xưa 親方 với anh Saito lo cho anh thế nào. Cảm giác lạ lắm. |
| Linh | Đó là vì anh dạy bằng cái tâm. Tụi nó được anh dìu chắc sẽ làm tốt thôi. |
| Thức | Anh mong vậy. Dù kết quả thế nào, anh đã trao hết những gì anh có cho tụi nó. |
| Linh | Vòng tròn đẹp quá anh. Từ người được dìu thành người dìu lại. Em tự hào về anh. |

---

## Tình huống 15 — Văn phòng · 8:00, đàn em báo tin đỗ

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん!<ruby>合格<rt>ごうかく</rt></ruby>しました!<ruby>二人<rt>ふたり</rt></ruby>ともです!<br>*(Anh Thức! Bọn em đỗ rồi! Cả hai ạ!)* |
| Thức | …<ruby>本当<rt>ほんとう</rt></ruby>か。よかった。<ruby>本当<rt>ほんとう</rt></ruby>によく<ruby>頑張<rt>がんば</rt></ruby>った。<br>*(…Thật à. Mừng quá. Cố gắng tốt lắm.)* |
| クアン | <ruby>緊張<rt>きんちょう</rt></ruby>しましたが、<ruby>声<rt>こえ</rt></ruby>に<ruby>出<rt>だ</rt></ruby>して<ruby>手順<rt>てじゅん</rt></ruby>をやったら<ruby>体<rt>からだ</rt></ruby>が<ruby>動<rt>うご</rt></ruby>きました。<br>*(Hồi hộp nhưng nói thành tiếng làm quy trình thì cơ thể tự chạy ạ.)* |
| Thức | それだ。<ruby>型<rt>かた</rt></ruby>が<ruby>君<rt>きみ</rt></ruby>たちを<ruby>守<rt>まも</rt></ruby>った。<ruby>準備<rt>じゅんび</rt></ruby>は<ruby>裏切<rt>うらぎ</rt></ruby>らない。<br>*(Chính nó. Cái khuôn đã giữ các em. Chuẩn bị không phản bội.)* |
| ドゥック | トゥックさんに<ruby>教<rt>おそ</rt></ruby>わったから<ruby>受<rt>う</rt></ruby>かりました。<br>*(Nhờ được anh Thức dạy nên đỗ ạ.)* |
| Thức | <ruby>受<rt>う</rt></ruby>かったのは<ruby>君<rt>きみ</rt></ruby>たちの<ruby>努力<rt>どりょく</rt></ruby>だ。<ruby>胸<rt>むね</rt></ruby>を<ruby>張<rt>は</rt></ruby>っていい。<br>*(Đỗ là nỗ lực của các em. Cứ ưỡn ngực đi.)* |

---

## Tình huống 16 — Văn phòng · 8:20, báo 親方 chuyện đàn em đỗ

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>親方<rt>おやかた</rt></ruby>、ドゥックとクアン、<ruby>二人<rt>ふたり</rt></ruby>とも<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Sếp, Đức với Quân, cả hai đều đỗ ạ.)* |
| 谷川親方 | おお、やったか!お<ruby>前<rt>まえ</rt></ruby>が<ruby>育<rt>そだ</rt></ruby>てた<ruby>成果<rt>せいか</rt></ruby>や。<br>*(Ô, được rồi à! Là thành quả cậu dạy đấy.)* |
| Thức | <ruby>本人<rt>ほんにん</rt></ruby>たちが<ruby>頑張<rt>がんば</rt></ruby>りました。<ruby>俺<rt>おれ</rt></ruby>は<ruby>道<rt>みち</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>しただけです。<br>*(Là tụi nó cố gắng. Em chỉ chỉ đường thôi ạ.)* |
| 谷川親方 | その<ruby>謙虚<rt>けんきょ</rt></ruby>さがお<ruby>前<rt>まえ</rt></ruby>のええとこや。<ruby>俺<rt>おれ</rt></ruby>が<ruby>昔<rt>むかし</rt></ruby>お<ruby>前<rt>まえ</rt></ruby>に<ruby>感<rt>かん</rt></ruby>じたのと<ruby>同<rt>おな</rt></ruby>じや。<br>*(Cái khiêm tốn đó là điểm tốt của cậu. Giống cái tôi cảm nhận ở cậu ngày xưa.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>に<ruby>育<rt>そだ</rt></ruby>てられた<ruby>恩<rt>おん</rt></ruby>を、<ruby>下<rt>した</rt></ruby>に<ruby>返<rt>かえ</rt></ruby>せた<ruby>気<rt>き</rt></ruby>がします。<br>*(Em thấy như đã trả được cái ơn sếp dạy, xuống lớp dưới ạ.)* |
| 谷川親方 | それでこそ<ruby>職人<rt>しょくにん</rt></ruby>の<ruby>世界<rt>せかい</rt></ruby>や。ええ<ruby>仕事<rt>しごと</rt></ruby>したな。<br>*(Vậy mới là thế giới của thợ. Làm tốt đấy.)* |

---

## Tình huống 17 — Khu nghỉ · 12:10, đàn em hỏi bước tiếp theo

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさん、<ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>せばいいですか。<br>*(Anh Thức, tiếp theo nên nhắm gì ạ?)* |
| Thức | <ruby>経験<rt>けいけん</rt></ruby>を<ruby>積<rt>つ</rt></ruby>んで、<ruby>特定技能<rt>とくていぎのう</rt></ruby><ruby>一号<rt>いちごう</rt></ruby>、その<ruby>先<rt>さき</rt></ruby>に<ruby>二号<rt>にごう</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>が<ruby>通<rt>とお</rt></ruby>った<ruby>道<rt>みち</rt></ruby>だよ。<br>*(Tích kinh nghiệm, lên 特定技能1号, chặng sau là 2号. Con đường tôi đi đó.)* |
| クアン | トゥックさんみたいになれますか。<br>*(Bọn em thành được như anh Thức không ạ?)* |
| Thức | なれる。いや、<ruby>俺<rt>おれ</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えていけ。それが<ruby>一番<rt>いちばん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Được. Không, hãy vượt qua tôi. Đó là điều tôi vui nhất.)* |
| ドゥック | <ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ、<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Từng bước một, bọn em làm tiếp ạ.)* |
| Thức | それが<ruby>全<rt>すべ</rt></ruby>てだ。<ruby>続<rt>つづ</rt></ruby>けた<ruby>者<rt>もの</rt></ruby>だけが<ruby>遠<rt>とお</rt></ruby>くへ<ruby>行<rt>い</rt></ruby>く。<br>*(Đó là tất cả. Chỉ kẻ duy trì mới đi xa.)* |

---

## Tình huống 18 — Công trường · 8:00, 朝礼 với đàn em đã đỗ

| Vai | Lời thoại |
|---|---|
| Thức | おはようございます。<ruby>本日<rt>ほんじつ</rt></ruby>から、ドゥックとクアンも<ruby>一<rt>ひと</rt></ruby><ruby>段<rt>だん</rt></ruby><ruby>上<rt>うえ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>に<ruby>挑<rt>いど</rt></ruby>みます。<br>*(Chào buổi sáng. Từ hôm nay Đức với Quân cũng thử công việc bậc cao hơn một nấc.)* |
| 近藤先輩 | <ruby>合格<rt>ごうかく</rt></ruby>した<ruby>二人<rt>ふたり</rt></ruby>やな。<ruby>頼<rt>たの</rt></ruby>もしい。<br>*(Hai đứa đỗ rồi nhỉ. Đáng tin cậy.)* |
| Thức | まだ<ruby>新人<rt>しんじん</rt></ruby>です。<ruby>周<rt>まわ</rt></ruby>りも<ruby>引<rt>ひ</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>き<ruby>声<rt>こえ</rt></ruby>をかけてください。<br>*(Vẫn là đàn em. Mong mọi người tiếp tục để ý nhắc giúp.)* |
| ドゥック | <ruby>気<rt>き</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>めて<ruby>続<rt>つづ</rt></ruby>けます。<ruby>合格<rt>ごうかく</rt></ruby>は<ruby>通過<rt>つうか</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<br>*(Em siết tinh thần làm tiếp. Đỗ chỉ là điểm đi qua ạ.)* |
| Thức | いい<ruby>言葉<rt>ことば</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>が<ruby>言<rt>い</rt></ruby>ったことを<ruby>覚<rt>おぼ</rt></ruby>えていたな。<br>*(Câu hay đấy. Nhớ điều tôi nói nhỉ.)* |
| 近藤先輩 | <ruby>言葉<rt>ことば</rt></ruby>が<ruby>下<rt>した</rt></ruby>に<ruby>伝<rt>つた</rt></ruby>わっとる。ええ<ruby>現場<rt>げんば</rt></ruby>や。<br>*(Lời nói truyền xuống dưới rồi. Công trường tốt đấy.)* |

---

## Tình huống 19 — Văn phòng · 17:30, 斉藤 đóng vòng motif thế hệ

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>五年<rt>ごねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、お<ruby>前<rt>まえ</rt></ruby>が<ruby>初<rt>はじ</rt></ruby>めて<ruby>技能<rt>ぎのう</rt></ruby><ruby>試験<rt>しけん</rt></ruby>に<ruby>受<rt>う</rt></ruby>かった<ruby>日<rt>ひ</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えているか。<br>*(Thức, năm năm trước, em còn nhớ cái ngày lần đầu đỗ thi kỹ năng không.)* |
| Thức | はい。<ruby>嬉<rt>うれ</rt></ruby>しくて、<ruby>斉藤<rt>さいとう</rt></ruby>さんに<ruby>真<rt>ま</rt></ruby>っ<ruby>先<rt>さき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>しました。<br>*(Vâng. Mừng quá, em báo anh Saito đầu tiên ạ.)* |
| 斉藤職長 | <ruby>今度<rt>こんど</rt></ruby>はお<ruby>前<rt>まえ</rt></ruby>が、<ruby>後輩<rt>こうはい</rt></ruby>から<ruby>真<rt>ま</rt></ruby>っ<ruby>先<rt>さき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>を<ruby>受<rt>う</rt></ruby>けた。<ruby>立場<rt>たちば</rt></ruby>が<ruby>一<rt>いち</rt></ruby><ruby>周<rt>しゅう</rt></ruby>したな。<br>*(Lần này em được đàn em báo đầu tiên. Vị trí đã đi một vòng nhỉ.)* |
| Thức | <ruby>感慨深<rt>かんがいぶか</rt></ruby>いです。<ruby>受<rt>う</rt></ruby>けた<ruby>恩<rt>おん</rt></ruby>を、やっと<ruby>少<rt>すこ</rt></ruby>し<ruby>返<rt>かえ</rt></ruby>せました。<br>*(Em xúc động ạ. Cái ơn nhận được, cuối cùng đã trả lại được chút ít.)* |
| 斉藤職長 | <ruby>恩<rt>おん</rt></ruby>は<ruby>上<rt>うえ</rt></ruby>に<ruby>返<rt>かえ</rt></ruby>すんやない。<ruby>下<rt>した</rt></ruby>に<ruby>流<rt>なが</rt></ruby>すんだ。お<ruby>前<rt>まえ</rt></ruby>はそれをやっている。<br>*(Ơn không phải trả ngược lên. Mà chảy xuống dưới. Em đang làm điều đó.)* |
| Thức | これからも<ruby>流<rt>なが</rt></ruby>し<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Sau này em vẫn để nó chảy tiếp ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 22:00, Thức tự nhìn lại vòng tròn

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) ドゥックとクアンが<ruby>受<rt>う</rt></ruby>かった。<ruby>自分<rt>じぶん</rt></ruby>のとき<ruby>以上<rt>いじょう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Đức với Quân đỗ. Vui hơn cả lúc của chính mình.)* |
| Thức | <ruby>五年<rt>ごねん</rt></ruby><ruby>前<rt>まえ</rt></ruby>、<ruby>足<rt>あし</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていた<ruby>俺<rt>おれ</rt></ruby>を、<ruby>親方<rt>おやかた</rt></ruby>と<ruby>斉藤<rt>さいとう</rt></ruby>さんが<ruby>支<rt>ささ</rt></ruby>えてくれた。<br>*(Năm năm trước, mình chân run, được 親方 với anh Saito đỡ.)* |
| Thức | <ruby>今<rt>いま</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>同<rt>おな</rt></ruby>じことを<ruby>下<rt>した</rt></ruby>にしている。<ruby>輪<rt>わ</rt></ruby>がつながった。<br>*(Giờ, mình làm điều y vậy với lớp dưới. Vòng tròn nối lại.)* |
| Thức | <ruby>恩<rt>おん</rt></ruby>は<ruby>下<rt>した</rt></ruby>に<ruby>流<rt>なが</rt></ruby>す。<ruby>斉藤<rt>さいとう</rt></ruby>さんの<ruby>言葉<rt>ことば</rt></ruby>が<ruby>胸<rt>むね</rt></ruby>に<ruby>残<rt>のこ</rt></ruby>る。<br>*(Ơn chảy xuống dưới. Câu của anh Saito đọng trong lòng.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>もまだ<ruby>途中<rt>とちゅう</rt></ruby>だ。<ruby>下<rt>した</rt></ruby>に<ruby>渡<rt>わた</rt></ruby>しながら、<ruby>自分<rt>じぶん</rt></ruby>も<ruby>歩<rt>ある</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>ける。<br>*(Mình cũng còn dở đường. Vừa trao xuống, vừa tự bước tiếp.)* |
| Thức | <ruby>明日<rt>あした</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>だ。いつもどおり、<ruby>丁寧<rt>ていねい</rt></ruby>に。<br>*(Mai cũng công trường. Như thường ngày, cẩn thận.)* |

---

## Đọng lại

Hai đàn em diện 育成就労 — Đức và Quân — dự kỳ thi kỹ năng nghề とび, và Thức kèm họ như từng được kèm: dạy thao tác, soi lỗi chốt chống tuột, sửa thói quen móc dây an toàn, truyền cái "khuôn" nói thành tiếng để cơ thể tự chạy khi hồi hộp. Lúc chờ tin, Thức hồi hộp hơn cả lúc chính em thi 2号 — và hiểu ra tâm trạng 親方, 斉藤 ngày xưa lo cho mình. Cả hai đỗ. Vòng tròn xuyên suốt sáu cuốn khép lại trọn vẹn: người từng được dìu nay dìu lại, người từng báo tin đỗ cho 斉藤 đầu tiên nay được đàn em báo đầu tiên. 斉藤 chốt một câu cô đọng: ơn không trả ngược lên, mà chảy xuống dưới — và Thức đang làm đúng điều đó. Em coi mình vẫn còn dở đường: vừa trao xuống, vừa tự bước tiếp.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 技能検定 | ぎのうけんてい | kỳ kiểm định kỹ năng |
> | 学科 | がっか | phần lý thuyết |
> | 実技 | じつぎ | phần thực hành |
> | 抜け止めピン | ぬけどめピン | chốt chống tuột (giàn giáo) |
> | 減点 | げんてん | trừ điểm |
> | 安全違反 | あんぜんいはん | vi phạm an toàn |
> | 二丁掛け | にちょうがけ | gài hai móc dây an toàn |
> | 課題 | かだい | vấn đề cần khắc phục |
> | 先回り | さきまわり | đón đầu, lường trước |
> | 通過点 | つうかてん | điểm đi qua, cột mốc trung gian |
> | 謙虚 | けんきょ | sự khiêm tốn |
> | 感慨深い | かんがいぶかい | đầy cảm xúc, xúc động sâu |
> | 恩 | おん | ơn nghĩa |
> | 輪 | わ | vòng tròn, sự nối tiếp |
> | 育成就労 | いくせいしゅうろう | chế độ lao động bồi dưỡng |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (838000012, 800000038, NULL, 'markdown_book', 'T12. Bonenkai — khép series, kết mở lạc quan (シリーズ・終)', '# Sách kỹ năng đặc định xây dựng · T12. Bonenkai — khép series, kết mở lạc quan (シリーズ・終)

> **Mục tiêu nhân vật:** Tiệc tất niên 忘年会 khép lại sáu cuốn series. Thức 26 tuổi, 特定技能2号, 職長, thẻ CCUS bạc; hướng tới 1級技能士 và 永住権 như mục tiêu tương lai. Học mẫu câu nghiệp vụ tổng kết năm, phát biểu 忘年会, nhìn lại chặng đường nghề và mẫu câu khép lạc quan — KHÔNG "thành công thần kỳ".

---

## Bối cảnh

Tháng 12 năm 2031. Tiệc tất niên 忘年会 cuối năm của tổ thợ とび 谷川組, cũng là điểm khép của series sáu cuốn (33→38). Thức 26 tuổi: 特定技能1号→2号, 職長, thẻ CCUS bạc tương đương 登録基幹技能者. Phía trước em hướng tới 1級技能士 và 永住権 như mục tiêu tương lai xa — chưa đạt, chỉ là đích. Linh (bạn gái, chưa cưới) là động lực, tương lai để mở. Chương khép bằng tổng kết điềm đạm, biết ơn, lạc quan có chừng mực — không có "thành công thần kỳ", không cưới, không kết thúc cứng. Chương này tập trung mẫu câu tổng kết năm, phát biểu 忘年会, nhìn lại chặng đường. *(Chế độ・lộ trình nêu trong sách theo quy định tại thời điểm biên soạn 2026.)*

---

## Tình huống 1 — Văn phòng · 8:00, 親方 nhắc 忘年会 cuối năm

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、<ruby>今週<rt>こんしゅう</rt></ruby><ruby>末<rt>まつ</rt></ruby>は<ruby>忘年会<rt>ぼうねんかい</rt></ruby>や。<ruby>幹事<rt>かんじ</rt></ruby>を<ruby>任<rt>まか</rt></ruby>せたい。<br>*(Thức, cuối tuần này là tiệc tất niên. Tôi muốn giao em làm trưởng ban tổ chức.)* |
| Thức | はい、<ruby>親方<rt>おやかた</rt></ruby>。<ruby>喜<rt>よろこ</rt></ruby>んで<ruby>務<rt>つと</rt></ruby>めます。<br>*(Vâng, thưa sếp. Em vui lòng đảm nhận ạ.)* |
| 谷川親方 | <ruby>店<rt>みせ</rt></ruby>の<ruby>予約<rt>よやく</rt></ruby>と<ruby>人数<rt>にんずう</rt></ruby>の<ruby>取<rt>と</rt></ruby>りまとめ、<ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Đặt quán và chốt số người, nhờ cậu.)* |
| Thức | <ruby>新人<rt>しんじん</rt></ruby>から<ruby>親方<rt>おやかた</rt></ruby>まで<ruby>全員<rt>ぜんいん</rt></ruby><ruby>声<rt>こえ</rt></ruby>をかけます。<br>*(Từ đàn em tới sếp, em mời tất cả ạ.)* |
| 谷川親方 | <ruby>一年<rt>いちねん</rt></ruby>の<ruby>締<rt>し</rt></ruby>めくくりや。みんなで<ruby>労<rt>ねぎら</rt></ruby>おう。<br>*(Khép lại một năm. Cả nhà cùng động viên nhau.)* |
| Thức | <ruby>準備<rt>じゅんび</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めます。<ruby>挨拶<rt>あいさつ</rt></ruby>の<ruby>段取<rt>だんど</rt></ruby>りも<ruby>考<rt>かんが</rt></ruby>えます。<br>*(Em xúc tiến chuẩn bị. Cả trình tự phát biểu em cũng tính ạ.)* |

---

## Tình huống 2 — Văn phòng · 8:20, bàn với 斉藤 nội dung tổng kết năm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>忘年会<rt>ぼうねんかい</rt></ruby>で<ruby>一年<rt>いちねん</rt></ruby>の<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りも<ruby>入<rt>い</rt></ruby>れたいです。<br>*(Anh Saito, tiệc tất niên em muốn lồng cả nhìn lại một năm ạ.)* |
| 斉藤職長 | いいな。<ruby>今年<rt>ことし</rt></ruby>は<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>大<rt>おお</rt></ruby>きな<ruby>現場<rt>げんば</rt></ruby>を<ruby>納<rt>おさ</rt></ruby>めた。それは<ruby>誇<rt>ほこ</rt></ruby>っていい。<br>*(Tốt. Năm nay không tai nạn, hoàn thành các công trường lớn. Đáng tự hào.)* |
| Thức | <ruby>夏<rt>なつ</rt></ruby>の<ruby>足場<rt>あしば</rt></ruby><ruby>傾斜<rt>けいしゃ</rt></ruby>の<ruby>件<rt>けん</rt></ruby>も、<ruby>教訓<rt>きょうくん</rt></ruby>として<ruby>共有<rt>きょうゆう</rt></ruby>したいです。<br>*(Cả vụ giàn giáo nghiêng mùa hè, em muốn chia sẻ như bài học ạ.)* |
| 斉藤職長 | <ruby>大事<rt>だいじ</rt></ruby>なことだ。<ruby>成功<rt>せいこう</rt></ruby>だけでなく、<ruby>乗<rt>の</rt></ruby>り<ruby>越<rt>こ</rt></ruby>えた<ruby>失敗<rt>しっぱい</rt></ruby>も<ruby>財産<rt>ざいさん</rt></ruby>だ。<br>*(Điều quan trọng. Không chỉ thành công, cả thất bại vượt qua cũng là tài sản.)* |
| Thức | <ruby>来年<rt>らいねん</rt></ruby>に<ruby>生<rt>い</rt></ruby>かす<ruby>形<rt>かたち</rt></ruby>で<ruby>話<rt>はな</rt></ruby>します。<br>*(Em sẽ nói theo hướng phát huy cho năm sau ạ.)* |
| 斉藤職長 | お<ruby>前<rt>まえ</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>ならみんな<ruby>聞<rt>き</rt></ruby>く。<ruby>素直<rt>すなお</rt></ruby>に<ruby>話<rt>はな</rt></ruby>せ。<br>*(Lời của em thì mọi người sẽ nghe. Cứ nói thật lòng.)* |

---

## Tình huống 3 — Khu nghỉ · 12:10, Hùng nói chuyện tổng kết

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>今年<rt>ことし</rt></ruby>は<ruby>濃<rt>こ</rt></ruby>い<ruby>一年<rt>いちねん</rt></ruby>だったな。<br>*(Thức, năm nay đậm đặc thật nhỉ.)* |
| Thức | ああ。<ruby>二号<rt>にごう</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>、<ruby>事故<rt>じこ</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>、<ruby>後輩<rt>こうはい</rt></ruby>の<ruby>指導<rt>しどう</rt></ruby>…<ruby>全部<rt>ぜんぶ</rt></ruby>あった。<br>*(Ừ. Ôn 2号, sự cố, đỗ, kèm đàn em… đủ cả.)* |
| Hùng | <ruby>二人<rt>ふたり</rt></ruby>で<ruby>二号<rt>にごう</rt></ruby>に<ruby>受<rt>う</rt></ruby>かったのが<ruby>一番<rt>いちばん</rt></ruby><ruby>大<rt>おお</rt></ruby>きい。<br>*(Hai đứa cùng đỗ 2号 là lớn nhất.)* |
| Thức | <ruby>来日<rt>らいにち</rt></ruby>した<ruby>頃<rt>ころ</rt></ruby>は、ここまで<ruby>来<rt>く</rt></ruby>るとは<ruby>思<rt>おも</rt></ruby>わなかった。<br>*(Hồi mới sang, không nghĩ đi tới được đây.)* |
| Hùng | <ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつだったからな。<ruby>来年<rt>らいねん</rt></ruby>もこの<ruby>調子<rt>ちょうし</rt></ruby>で。<br>*(Vì từng bước một. Năm sau cũng đà này.)* |
| Thức | ああ。<ruby>派手<rt>はで</rt></ruby>じゃなくていい。<ruby>続<rt>つづ</rt></ruby>けることだ。<br>*(Ừ. Không cần hoành tráng. Quan trọng là duy trì.)* |

---

## Tình huống 4 — Công trường · 14:00, công trường cuối năm thu dọn

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>本日<rt>ほんじつ</rt></ruby>で<ruby>今年<rt>ことし</rt></ruby>の<ruby>現場<rt>げんば</rt></ruby>は<ruby>納<rt>おさ</rt></ruby>めです。<ruby>工具<rt>こうぐ</rt></ruby>と<ruby>資材<rt>しざい</rt></ruby>を<ruby>点検<rt>てんけん</rt></ruby>します。<br>*(Hôm nay khép công trường năm nay. Kiểm dụng cụ và vật tư.)* |
| ドゥック | <ruby>建地<rt>たてじ</rt></ruby>と<ruby>布<rt>ぬの</rt></ruby>の<ruby>本数<rt>ほんすう</rt></ruby>、<ruby>合<rt>あ</rt></ruby>っています。<br>*(Số lượng cột đứng và thanh ngang, khớp ạ.)* |
| クアン | クランプも<ruby>数<rt>かず</rt></ruby><ruby>確認<rt>かくにん</rt></ruby><ruby>済<rt>ず</rt></ruby>みです。<br>*(Khóa kẹp cũng kiểm số xong ạ.)* |
| Thức | <ruby>納<rt>おさ</rt></ruby>めまで<ruby>丁寧<rt>ていねい</rt></ruby>に、それが<ruby>一年<rt>いちねん</rt></ruby>の<ruby>締<rt>し</rt></ruby>めくくりだ。<br>*(Cẩn thận tới khâu khép, đó là chốt lại một năm.)* |
| 近藤先輩 | <ruby>最後<rt>さいご</rt></ruby>まで<ruby>気<rt>き</rt></ruby>を<ruby>抜<rt>ぬ</rt></ruby>かんな。<ruby>職長<rt>しょくちょう</rt></ruby>らしいわ。<br>*(Tới cuối không lơ là. Ra dáng 職長 đấy.)* |
| Thức | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>安全<rt>あんぜん</rt></ruby>に<ruby>始<rt>はじ</rt></ruby>めるための<ruby>準備<rt>じゅんび</rt></ruby>です。お<ruby>疲<rt>つか</rt></ruby>れさまでした。<br>*(Cũng là chuẩn bị để năm sau bắt đầu an toàn. Vất vả rồi ạ.)* |

---

## Tình huống 5 — Quán tiệc · 18:00, mở đầu 忘年会, Thức làm 幹事

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>皆<rt>みな</rt></ruby>さん、お<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます。<ruby>谷川組<rt>たにがわぐみ</rt></ruby><ruby>忘年会<rt>ぼうねんかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Mọi người, cảm ơn đã tới đông đủ. Xin bắt đầu tiệc tất niên 谷川組.)* |
| 近藤先輩 | おう、トゥック、<ruby>幹事<rt>かんじ</rt></ruby><ruby>慣<rt>な</rt></ruby>れとるな。<br>*(Ờ, Thức, làm trưởng ban quen tay rồi nhỉ.)* |
| Thức | <ruby>恐縮<rt>きょうしゅく</rt></ruby>です。まずは<ruby>親方<rt>おやかた</rt></ruby>から<ruby>一言<rt>ひとこと</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em quá khen. Trước hết mời sếp một lời ạ.)* |
| 谷川親方 | <ruby>今年<rt>ことし</rt></ruby>も<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>一年<rt>いちねん</rt></ruby>を<ruby>終<rt>お</rt></ruby>えた。みんなのおかげや。ありがとう。<br>*(Năm nay cũng khép lại không tai nạn. Nhờ mọi người. Cảm ơn.)* |
| Thức | では、<ruby>乾杯<rt>かんぱい</rt></ruby>の<ruby>音頭<rt>おんど</rt></ruby>を<ruby>斉藤<rt>さいとう</rt></ruby>さんにお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy, xin mời anh Saito hô cạn ly ạ.)* |
| 斉藤職長 | <ruby>一年<rt>いちねん</rt></ruby>の<ruby>労<rt>ろう</rt></ruby>をねぎらって…<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Động viên công sức một năm… cạn ly!)* |

---

## Tình huống 6 — Quán tiệc · 18:30, Thức phát biểu nhìn lại năm

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>少<rt>すこ</rt></ruby>し、<ruby>一年<rt>いちねん</rt></ruby>を<ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>らせてください。<br>*(Cho em nhìn lại một năm một chút ạ.)* |
| 近藤先輩 | おう、<ruby>聞<rt>き</rt></ruby>こうやないか。<br>*(Ờ, nghe nào.)* |
| Thức | <ruby>今年<rt>ことし</rt></ruby>は<ruby>二号<rt>にごう</rt></ruby>の<ruby>勉強<rt>べんきょう</rt></ruby>で<ruby>苦<rt>くる</rt></ruby>しみ、<ruby>夏<rt>なつ</rt></ruby>には<ruby>足場<rt>あしば</rt></ruby>の<ruby>事故<rt>じこ</rt></ruby>もありました。<br>*(Năm nay em vật lộn với ôn 2号, mùa hè còn có sự cố giàn giáo.)* |
| Thức | でも<ruby>誰<rt>だれ</rt></ruby>も<ruby>欠<rt>か</rt></ruby>けず、ここに<ruby>全員<rt>ぜんいん</rt></ruby>そろっています。それが<ruby>一番<rt>いちばん</rt></ruby>の<ruby>成果<rt>せいか</rt></ruby>です。<br>*(Nhưng không thiếu một ai, cả tổ đều ở đây. Đó là thành quả lớn nhất.)* |
| 谷川親方 | ええこと<ruby>言<rt>い</rt></ruby>うやないか。<br>*(Nói hay đấy.)* |
| Thức | <ruby>支<rt>ささ</rt></ruby>えてくださった<ruby>皆<rt>みな</rt></ruby>さんに、<ruby>心<rt>こころ</rt></ruby>から<ruby>感謝<rt>かんしゃ</rt></ruby>します。<br>*(Em chân thành cảm ơn mọi người đã đỡ đần ạ.)* |

---

## Tình huống 7 — Quán tiệc · 19:00, 親方 nói về chặng đường Thức

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、お<ruby>前<rt>まえ</rt></ruby>が<ruby>来<rt>き</rt></ruby>た<ruby>頃<rt>ころ</rt></ruby>、<ruby>足場<rt>あしば</rt></ruby>に<ruby>上<rt>のぼ</rt></ruby>るのも<ruby>怖<rt>こわ</rt></ruby>がっとった。<br>*(Thức, hồi cậu mới tới, lên giàn giáo cũng sợ.)* |
| Thức | はい、よく<ruby>覚<rt>おぼ</rt></ruby>えています。<ruby>足<rt>あし</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えていました。<br>*(Vâng, em nhớ rõ ạ. Chân em run lập cập.)* |
| 谷川親方 | それが<ruby>今<rt>いま</rt></ruby>、<ruby>二号<rt>にごう</rt></ruby>で<ruby>職長<rt>しょくちょう</rt></ruby>、シルバーカードや。<ruby>大<rt>おお</rt></ruby>きゅうなった。<br>*(Cái cậu đó giờ là 2号, 職長, thẻ bạc. Lớn rồi.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>たちが<ruby>根気<rt>こんき</rt></ruby><ruby>強<rt>づよ</rt></ruby>く<ruby>育<rt>そだ</rt></ruby>ててくださったからです。<br>*(Là vì các sếp đã kiên nhẫn dạy dỗ em ạ.)* |
| 谷川親方 | <ruby>育<rt>そだ</rt></ruby>つかどうかは<ruby>本人<rt>ほんにん</rt></ruby><ruby>次第<rt>しだい</rt></ruby>や。お<ruby>前<rt>まえ</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>けたんや。<br>*(Lớn được hay không là tùy bản thân. Là cậu duy trì được.)* |
| Thức | これからも、<ruby>続<rt>つづ</rt></ruby>けます。<ruby>道<rt>みち</rt></ruby>はまだ<ruby>先<rt>さき</rt></ruby>です。<br>*(Sau này em vẫn duy trì. Đường còn dài phía trước ạ.)* |

---

## Tình huống 8 — Quán tiệc · 19:20, đàn em phát biểu cảm ơn

| Vai | Lời thoại |
|---|---|
| ドゥック | トゥックさんのおかげで<ruby>試験<rt>しけん</rt></ruby>に<ruby>受<rt>う</rt></ruby>かりました。ありがとうございます。<br>*(Nhờ anh Thức bọn em đỗ thi. Cảm ơn anh ạ.)* |
| Thức | <ruby>受<rt>う</rt></ruby>かったのは<ruby>君<rt>きみ</rt></ruby>たちの<ruby>努力<rt>どりょく</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>は<ruby>少<rt>すこ</rt></ruby>し<ruby>手<rt>て</rt></ruby><ruby>伝<rt>つだ</rt></ruby>っただけだよ。<br>*(Đỗ là nỗ lực của các em. Tôi chỉ phụ một chút thôi.)* |
| クアン | <ruby>僕<rt>ぼく</rt></ruby>たちも、いつかトゥックさんみたいに<ruby>後輩<rt>こうはい</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えたいです。<br>*(Bọn em cũng muốn một ngày dạy đàn em như anh Thức ạ.)* |
| Thức | それが<ruby>一番<rt>いちばん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しい<ruby>言葉<rt>ことば</rt></ruby>だ。<ruby>恩<rt>おん</rt></ruby>は<ruby>下<rt>した</rt></ruby>に<ruby>流<rt>なが</rt></ruby>すんだ。<br>*(Đó là câu tôi vui nhất. Ơn thì chảy xuống dưới.)* |
| 近藤先輩 | ええ<ruby>流<rt>なが</rt></ruby>れや。<ruby>谷川組<rt>たにがわぐみ</rt></ruby>は<ruby>安泰<rt>あんたい</rt></ruby>やな。<br>*(Dòng chảy tốt. 谷川組 vững rồi nhỉ.)* |
| Thức | <ruby>人<rt>ひと</rt></ruby>が<ruby>続<rt>つづ</rt></ruby>く<ruby>限<rt>かぎ</rt></ruby>り、<ruby>現場<rt>げんば</rt></ruby>は<ruby>続<rt>つづ</rt></ruby>きます。<br>*(Còn người nối tiếp thì công trường còn tiếp.)* |

---

## Tình huống 9 — Quán tiệc · 19:40, 斉藤 hỏi mục tiêu tới của Thức

| Vai | Lời thoại |
|---|---|
| 斉藤職長 | トゥック、<ruby>二号<rt>にごう</rt></ruby>の<ruby>次<rt>つぎ</rt></ruby>は<ruby>何<rt>なに</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>す。<br>*(Thức, sau 2号 nhắm tới gì.)* |
| Thức | <ruby>一級<rt>いっきゅう</rt></ruby>とび<ruby>技能士<rt>ぎのうし</rt></ruby>を<ruby>考<rt>かんが</rt></ruby>えています。<ruby>国家<rt>こっか</rt></ruby><ruby>資格<rt>しかく</rt></ruby>に<ruby>挑<rt>いど</rt></ruby>みたいです。<br>*(Em đang nghĩ tới 1級 thợ kỹ năng とび. Em muốn thử chứng chỉ quốc gia ạ.)* |
| 斉藤職長 | いい<ruby>目標<rt>もくひょう</rt></ruby>だ。その<ruby>先<rt>さき</rt></ruby>は。<br>*(Mục tiêu tốt. Xa hơn nữa thì sao.)* |
| Thức | <ruby>遠<rt>とお</rt></ruby>い<ruby>話<rt>はなし</rt></ruby>ですが、<ruby>永住権<rt>えいじゅうけん</rt></ruby>も<ruby>視野<rt>しや</rt></ruby>に<ruby>入<rt>い</rt></ruby>れています。まだ<ruby>年数<rt>ねんすう</rt></ruby>が<ruby>足<rt>た</rt></ruby>りませんが。<br>*(Là chuyện xa, nhưng vĩnh trú em cũng để trong tầm. Số năm thì chưa đủ ạ.)* |
| 斉藤職長 | <ruby>急<rt>いそ</rt></ruby>ぐな。<ruby>遠<rt>とお</rt></ruby>い<ruby>目標<rt>もくひょう</rt></ruby>は<ruby>遠<rt>とお</rt></ruby>いまま、<ruby>毎日<rt>まいにち</rt></ruby>を<ruby>積<rt>つ</rt></ruby>めばいい。<br>*(Đừng vội. Mục tiêu xa cứ ở chỗ xa, tích từng ngày là được.)* |
| Thức | はい。<ruby>焦<rt>あせ</rt></ruby>らず、<ruby>一<rt>いち</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつです。<br>*(Vâng. Không vội, từng bước một ạ.)* |

---

## Tình huống 10 — Quán tiệc · 20:00, 親方 nói lời tổng kết cho cả tổ

| Vai | Lời thoại |
|---|---|
| 谷川親方 | みんな、<ruby>今年<rt>ことし</rt></ruby>もよう<ruby>働<rt>はたら</rt></ruby>いてくれた。<ruby>谷川組<rt>たにがわぐみ</rt></ruby>は<ruby>人<rt>ひと</rt></ruby>で<ruby>持<rt>も</rt></ruby>っとる。<br>*(Mọi người, năm nay làm việc tốt lắm. 谷川組 đứng vững nhờ con người.)* |
| 近藤先輩 | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>も<ruby>頼<rt>たの</rt></ruby>みますよ。<br>*(Sếp, năm sau cũng nhờ sếp.)* |
| 谷川親方 | <ruby>俺<rt>おれ</rt></ruby>はもう<ruby>歳<rt>とし</rt></ruby>や。だが、トゥックみたいなのが<ruby>育<rt>そだ</rt></ruby>っとる。<ruby>心配<rt>しんぱい</rt></ruby>ない。<br>*(Tôi có tuổi rồi. Nhưng có người như Thức lớn lên. Không lo.)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>の<ruby>背中<rt>せなか</rt></ruby>を<ruby>見<rt>み</rt></ruby>て<ruby>学<rt>まな</rt></ruby>びました。これからも<ruby>学<rt>まな</rt></ruby>びます。<br>*(Em học qua dáng lưng của sếp. Sau này em vẫn học ạ.)* |
| 谷川親方 | <ruby>学<rt>まな</rt></ruby>ぶ<ruby>気<rt>き</rt></ruby>がある<ruby>限<rt>かぎ</rt></ruby>り、<ruby>人<rt>ひと</rt></ruby>は<ruby>伸<rt>の</rt></ruby>びる。それを<ruby>忘<rt>わす</rt></ruby>れんな。<br>*(Còn lòng học hỏi thì người còn tiến. Đừng quên điều đó.)* |
| Thức | はい、<ruby>胸<rt>むね</rt></ruby>に<ruby>刻<rt>きざ</rt></ruby>みます。<br>*(Vâng, em khắc trong lòng ạ.)* |

---

## Tình huống 11 — Quán tiệc · 20:20, Hùng và Thức nói chuyện riêng

| Vai | Lời thoại |
|---|---|
| Hùng | トゥック、<ruby>六年<rt>ろくねん</rt></ruby><ruby>近<rt>ちか</rt></ruby>く<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>来<rt>き</rt></ruby>たな。<br>*(Thức, gần sáu năm cùng đi tới đây nhỉ.)* |
| Thức | ああ。<ruby>同<rt>おな</rt></ruby>じ<ruby>時期<rt>じき</rt></ruby>に<ruby>来<rt>き</rt></ruby>て、<ruby>同<rt>おな</rt></ruby>じ<ruby>二号<rt>にごう</rt></ruby>に<ruby>受<rt>う</rt></ruby>かった。<ruby>不思議<rt>ふしぎ</rt></ruby>な<ruby>縁<rt>えん</rt></ruby>だ。<br>*(Ừ. Cùng thời điểm sang, cùng đỗ 2号. Cái duyên lạ thật.)* |
| Hùng | お<ruby>前<rt>まえ</rt></ruby>がいなかったら、<ruby>途中<rt>とちゅう</rt></ruby>で<ruby>諦<rt>あきら</rt></ruby>めてたよ。<br>*(Không có cậu thì giữa chừng mình bỏ rồi.)* |
| Thức | <ruby>俺<rt>おれ</rt></ruby>もだ。お<ruby>互<rt>たが</rt></ruby>いがいたから<ruby>続<rt>つづ</rt></ruby>けられた。<br>*(Mình cũng vậy. Có nhau nên duy trì được.)* |
| Hùng | <ruby>次<rt>つぎ</rt></ruby>は<ruby>一級<rt>いっきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby>、また<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>挑<rt>いど</rt></ruby>もう。<br>*(Tiếp là 1級技能士, lại cùng thử nhé.)* |
| Thức | ああ。<ruby>焦<rt>あせ</rt></ruby>らず、<ruby>二人<rt>ふたり</rt></ruby>でな。<br>*(Ừ. Không vội, hai đứa cùng.)* |

---

## Tình huống 12 — Quán tiệc · 20:40, 近藤 nói lời đàn anh

| Vai | Lời thoại |
|---|---|
| 近藤先輩 | トゥック、<ruby>最初<rt>さいしょ</rt></ruby>に<ruby>会<rt>あ</rt></ruby>うた<ruby>頃<rt>ころ</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>もたどたどしかったな。<br>*(Thức, hồi gặp lần đầu, tiếng Nhật cũng còn lóng ngóng.)* |
| Thức | <ruby>近藤<rt>こんどう</rt></ruby>さんに<ruby>現場<rt>げんば</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>をたくさん<ruby>教<rt>おそ</rt></ruby>わりました。<br>*(Em được anh Kondo dạy nhiều từ ngữ công trường ạ.)* |
| 近藤先輩 | <ruby>今<rt>いま</rt></ruby>じゃ<ruby>俺<rt>おれ</rt></ruby>より<ruby>段取<rt>だんど</rt></ruby>りがうまい。<ruby>追<rt>お</rt></ruby>い<ruby>越<rt>こ</rt></ruby>されたわ。<br>*(Giờ sắp xếp giỏi hơn cả tôi. Bị vượt rồi.)* |
| Thức | そんなことありません。まだまだ<ruby>学<rt>まな</rt></ruby>ぶことばかりです。<br>*(Đâu có ạ. Em vẫn còn phải học nhiều lắm.)* |
| 近藤先輩 | その<ruby>謙虚<rt>けんきょ</rt></ruby>さや。だからみんなお<ruby>前<rt>まえ</rt></ruby>についていく。<br>*(Chính cái khiêm tốn đó. Nên mọi người mới theo cậu.)* |
| Thức | ありがとうございます。<ruby>励<rt>はげ</rt></ruby>みになります。<br>*(Cảm ơn anh. Em được tiếp sức ạ.)* |

---

## Tình huống 13 — Quán tiệc · 21:00, 親方 lời khép tiệc

| Vai | Lời thoại |
|---|---|
| Thức | そろそろお<ruby>開<rt>ひら</rt></ruby>きの<ruby>時間<rt>じかん</rt></ruby>です。<ruby>親方<rt>おやかた</rt></ruby>、<ruby>締<rt>し</rt></ruby>めの<ruby>一言<rt>ひとこと</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Sắp tới giờ tàn tiệc. Sếp, xin một lời chốt ạ.)* |
| 谷川親方 | <ruby>今年<rt>ことし</rt></ruby>も<ruby>無事<rt>ぶじ</rt></ruby>で<ruby>終<rt>お</rt></ruby>われた。<ruby>来年<rt>らいねん</rt></ruby>も<ruby>怪我<rt>けが</rt></ruby>なく、<ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>に。<br>*(Năm nay kết thúc bình an. Năm sau cũng không thương tật, trân trọng từng ngày.)* |
| 近藤先輩 | <ruby>親方<rt>おやかた</rt></ruby>、<ruby>毎年<rt>まいとし</rt></ruby><ruby>同<rt>おな</rt></ruby>じこと<ruby>言<rt>い</rt></ruby>うてますな。<br>*(Sếp, năm nào cũng nói câu y vậy nhỉ.)* |
| 谷川親方 | <ruby>同<rt>おな</rt></ruby>じことを<ruby>続<rt>つづ</rt></ruby>けられるのが、<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しいんや。<br>*(Duy trì được điều y vậy mới là khó nhất đấy.)* |
| Thức | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>も<ruby>胸<rt>むね</rt></ruby>に<ruby>置<rt>お</rt></ruby>きます。<br>*(Câu đó, năm sau em vẫn để trong lòng ạ.)* |
| 谷川親方 | では、<ruby>来年<rt>らいねん</rt></ruby>も<ruby>元気<rt>げんき</rt></ruby>で。<ruby>解散<rt>かいさん</rt></ruby>!<br>*(Vậy, năm sau cũng mạnh khỏe. Giải tán!)* |

---

## Tình huống 14 — Ngoài quán · 21:30, Thức tiễn từng người

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>斉藤<rt>さいとう</rt></ruby>さん、<ruby>今年<rt>ことし</rt></ruby>も<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<br>*(Anh Saito, năm nay em thật sự được anh giúp đỡ nhiều ạ.)* |
| 斉藤職長 | こちらこそだ。お<ruby>前<rt>まえ</rt></ruby>の<ruby>成長<rt>せいちょう</rt></ruby>を<ruby>見<rt>み</rt></ruby>られて<ruby>嬉<rt>うれ</rt></ruby>しい。<br>*(Tôi cũng vậy. Được nhìn em trưởng thành tôi vui.)* |
| Thức | <ruby>来年<rt>らいねん</rt></ruby>も、ご<ruby>指導<rt>しどう</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Năm sau cũng mong anh chỉ bảo ạ.)* |
| 斉藤職長 | <ruby>指導<rt>しどう</rt></ruby>はもういらんかもな。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>現場<rt>げんば</rt></ruby>を<ruby>守<rt>まも</rt></ruby>る<ruby>仲間<rt>なかま</rt></ruby>や。<br>*(Chỉ bảo có khi không cần nữa. Là đồng đội cùng giữ công trường.)* |
| Thức | その<ruby>言葉<rt>ことば</rt></ruby>、<ruby>一生<rt>いっしょう</rt></ruby><ruby>忘<rt>わす</rt></ruby>れません。<br>*(Câu đó, cả đời em không quên ạ.)* |
| 斉藤職長 | <ruby>気<rt>き</rt></ruby>をつけて<ruby>帰<rt>かえ</rt></ruby>れよ。また<ruby>来年<rt>らいねん</rt></ruby>。<br>*(Về cẩn thận nhé. Hẹn năm sau.)* |

---

## Tình huống 15 — Đường về · 22:00, gọi Linh kể chuyện 忘年会 (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | Linh à, tiệc tất niên xong rồi. Anh làm trưởng ban, phát biểu nhìn lại một năm. |
| Linh | Một năm của anh nhiều chuyện ghê. Anh kể em nghe cảm giác lúc này đi. |
| Thức | Lạ lắm. Sáu năm trước anh là thằng nhóc chân run trên giàn giáo. Giờ anh đứng nói lời tổng kết cho cả tổ. |
| Linh | Em nghe mà cũng xúc động. Anh đi xa thật đó, mà vẫn từ tốn như mọi khi. |
| Thức | Anh chưa tới đích đâu. Còn 1級技能士, còn nhiều thứ xa nữa. Nhưng anh không vội. Cứ từng ngày. |
| Linh | Em thích cách anh sống. Chắc chắn, không phô trương. Mình cứ thế đi tiếp nhé anh. |

---

## Tình huống 16 — Phòng trọ Thức · 22:30, Thức nhìn lại sáu năm (tiếng Việt — ngắn)

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) Sáu năm. Từ TTS bỡ ngỡ tới 特定技能2号, 職長, thẻ bạc. |
| Thức | Anh Long ngày trước khủng hoảng tiền bạc, giờ cũng đã ổn. Hùng cùng mình tới đây. Nam, Đức, Quân đang nối tiếp. |
| Thức | Mình không phải người tài giỏi gì. Chỉ là không bỏ cuộc, và có nhiều người tốt đỡ đần. |
| Thức | Phía trước còn 1級技能士, còn 永住権 xa, còn tương lai với Linh chưa rõ. Không sao. Cứ từng bước. |

---

## Tình huống 17 — Công trường · sáng đầu năm mới 8:00, 仕事始め

| Vai | Lời thoại |
|---|---|
| Thức | <ruby>明<rt>あ</rt></ruby>けましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby><ruby>最初<rt>さいしょ</rt></ruby>の<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めます。<br>*(Chúc mừng năm mới. Bắt đầu công việc đầu tiên của năm.)* |
| ドゥック | あけましておめでとうございます。<ruby>今年<rt>ことし</rt></ruby>もよろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chúc mừng năm mới. Năm nay cũng mong anh chỉ bảo ạ.)* |
| Thức | <ruby>年<rt>とし</rt></ruby>が<ruby>変<rt>か</rt></ruby>わっても、やることは<ruby>同<rt>おな</rt></ruby>じだ。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>、<ruby>基本<rt>きほん</rt></ruby><ruby>徹底<rt>てってい</rt></ruby>。<br>*(Năm đổi nhưng việc làm vẫn vậy. An toàn số một, triệt để cái cơ bản.)* |
| 近藤先輩 | <ruby>初日<rt>しょにち</rt></ruby>から<ruby>気<rt>き</rt></ruby>が<ruby>引<rt>ひ</rt></ruby>き<ruby>締<rt>し</rt></ruby>まるわ。<br>*(Ngày đầu đã thấy siết tinh thần.)* |
| Thức | <ruby>今年<rt>ことし</rt></ruby>も<ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>、<ruby>無事故<rt>むじこ</rt></ruby>で<ruby>積<rt>つ</rt></ruby>み<ruby>上<rt>あ</rt></ruby>げましょう。<br>*(Năm nay cũng từng ngày một, tích lũy không tai nạn.)* |
| ドゥック | はい、お<ruby>願<rt>ねが</rt></ruby>いします!<br>*(Vâng, nhờ anh ạ!)* |

---

## Tình huống 18 — Công trường · 14:00, Thức dạy đàn em câu của 親方

| Vai | Lời thoại |
|---|---|
| クアン | トゥックさん、<ruby>長<rt>なが</rt></ruby>く<ruby>続<rt>つづ</rt></ruby>ける<ruby>秘訣<rt>ひけつ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか。<br>*(Anh Thức, bí quyết duy trì lâu dài là gì ạ?)* |
| Thức | <ruby>親方<rt>おやかた</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>だ。「<ruby>同<rt>おな</rt></ruby>じことを<ruby>続<rt>つづ</rt></ruby>けられるのが<ruby>一番<rt>いちばん</rt></ruby><ruby>難<rt>むずか</rt></ruby>しい」。<br>*(Câu của 親方. "Duy trì được điều y vậy mới là khó nhất".)* |
| クアン | <ruby>派手<rt>はで</rt></ruby>なことより、<ruby>毎日<rt>まいにち</rt></ruby>の<ruby>積<rt>つ</rt></ruby>み<ruby>重<rt>かさ</rt></ruby>ねですね。<br>*(Hơn cái hoành tráng là tích lũy mỗi ngày nhỉ.)* |
| Thức | そうだ。<ruby>俺<rt>おれ</rt></ruby>もそれだけで<ruby>六年<rt>ろくねん</rt></ruby><ruby>来<rt>き</rt></ruby>た。<ruby>特別<rt>とくべつ</rt></ruby>なことは<ruby>何<rt>なに</rt></ruby>もしていない。<br>*(Đúng. Tôi cũng chỉ nhờ thế mà đi được sáu năm. Không làm gì đặc biệt.)* |
| クアン | <ruby>僕<rt>ぼく</rt></ruby>も<ruby>毎日<rt>まいにち</rt></ruby>を<ruby>大事<rt>だいじ</rt></ruby>にします。<br>*(Em cũng sẽ trân trọng mỗi ngày ạ.)* |
| Thức | それが<ruby>全<rt>すべ</rt></ruby>てだ。それを<ruby>続<rt>つづ</rt></ruby>けたやつが、<ruby>遠<rt>とお</rt></ruby>くまで<ruby>行<rt>い</rt></ruby>く。<br>*(Đó là tất cả. Đứa duy trì được điều đó thì đi xa.)* |

---

## Tình huống 19 — Văn phòng · 17:00, 親方 lời cuối chương — kết mở

| Vai | Lời thoại |
|---|---|
| 谷川親方 | トゥック、お<ruby>前<rt>まえ</rt></ruby>はもう<ruby>一<rt>いち</rt></ruby><ruby>人前<rt>にんまえ</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えた。これからどうする<ruby>気<rt>き</rt></ruby>や。<br>*(Thức, cậu đã vượt qua mức thợ thực thụ. Từ giờ định thế nào.)* |
| Thức | <ruby>一級<rt>いっきゅう</rt></ruby><ruby>技能士<rt>ぎのうし</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。その<ruby>先<rt>さき</rt></ruby>に<ruby>永住<rt>えいじゅう</rt></ruby>も。<ruby>急<rt>いそ</rt></ruby>がず、<ruby>長<rt>なが</rt></ruby>く。<br>*(Em nhắm 1級技能士. Xa hơn nữa cả vĩnh trú. Không vội, lâu dài ạ.)* |
| 谷川親方 | ええ<ruby>道<rt>みち</rt></ruby>や。<ruby>結末<rt>けつまつ</rt></ruby>を<ruby>急<rt>いそ</rt></ruby>ぐな。<ruby>道<rt>みち</rt></ruby>はまだまだ<ruby>続<rt>つづ</rt></ruby>く。<br>*(Con đường tốt. Đừng vội kết cục. Đường còn dài lắm.)* |
| Thức | はい。<ruby>結末<rt>けつまつ</rt></ruby>より、<ruby>歩<rt>ある</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けることが<ruby>大事<rt>だいじ</rt></ruby>だと<ruby>学<rt>まな</rt></ruby>びました。<br>*(Vâng. Em học được rằng hơn cái kết cục là việc bước tiếp ạ.)* |
| 谷川親方 | それが<ruby>分<rt>わ</rt></ruby>かれば<ruby>十分<rt>じゅうぶん</rt></ruby>や。あとは<ruby>歩<rt>ある</rt></ruby>くだけや。<br>*(Hiểu được thế là đủ. Còn lại chỉ việc bước thôi.)* |
| Thức | はい。<ruby>明日<rt>あした</rt></ruby>も<ruby>現場<rt>げんば</rt></ruby>です。<ruby>一<rt>いっ</rt></ruby><ruby>歩<rt>ぽ</rt></ruby>ずつ、<ruby>歩<rt>ある</rt></ruby>き<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Vâng. Mai cũng công trường. Từng bước, em đi tiếp ạ.)* |

---

## Tình huống 20 — Phòng trọ Thức · 22:00, Thức tự nhìn lại — khép series (tiếng Việt)

| Vai | Lời thoại |
|---|---|
| Thức | (tự nói) Sáu năm trước, mình bước xuống sân bay với một va li và rất nhiều sợ hãi. |
| Thức | Giờ mình là 特定技能2号, 職長, thẻ bạc. Không phải vì mình tài, mà vì mình không bỏ cuộc, và có 親方, anh Saito, anh Kondo, Hùng, và Linh. |
| Thức | Phía trước còn 1級技能士, còn 永住権 xa, còn một tương lai với Linh chưa định. Mình không gấp. Đường còn dài, mà mình đã quen đi từng bước rồi. |
| Thức | (nhìn ra cửa sổ) Mai lại lên giàn giáo. Như mọi ngày. Cẩn thận, đàng hoàng, và đi tiếp. Vậy là đủ. |

---

## Đọng lại

Tiệc tất niên 忘年会 của 谷川組 khép lại sáu cuốn series. Thức 26 tuổi đứng làm 幹事, phát biểu nhìn lại một năm có ôn 2号 vật lộn, sự cố giàn giáo, niềm vui đỗ và dẫn dắt đàn em — và điều em tự hào nhất không phải tấm thẻ bạc hay danh 職長, mà là cả tổ không thiếu một ai. 親方, 斉藤, 近藤, Hùng lần lượt nhìn lại chặng đường: từ thằng nhóc chân run trên giàn giáo tới người gánh vác công trường. Nhưng tất cả đều giữ một giọng điềm đạm — không tung hô, không "thành công thần kỳ". Thức không cưới Linh, không về Việt Nam, không có kết cục cứng: phía trước em hướng 1級技能士 và 永住権 như mục tiêu xa, tương lai với Linh để mở như một động lực. Lời chốt của 親方 cũng là tinh thần của cả series: đừng vội kết cục, đường còn dài, hơn cái kết là việc bước tiếp. Series khép bằng một sáng đầu năm bình thường — Thức lại lên giàn giáo, cẩn thận, đàng hoàng, và đi tiếp. Vậy là đủ.

> **Từ vựng**
> | Từ | Cách đọc | Nghĩa |
> |---|---|---|
> | 忘年会 | ぼうねんかい | tiệc tất niên cuối năm |
> | 幹事 | かんじ | trưởng ban tổ chức (tiệc) |
> | 乾杯の音頭 | かんぱいのおんど | người hô cạn ly mở tiệc |
> | 振り返り | ふりかえり | sự nhìn lại, hồi tưởng |
> | 締めくくり | しめくくり | sự khép lại, kết thúc |
> | 労をねぎらう | ろうをねぎらう | động viên công sức |
> | 安泰 | あんたい | yên ổn, vững vàng |
> | 一人前 | いちにんまえ | mức thợ thực thụ, độc lập |
> | 国家資格 | こっかしかく | chứng chỉ quốc gia |
> | 一級技能士 | いっきゅうぎのうし | thợ kỹ năng bậc 1 |
> | 永住権 | えいじゅうけん | quyền vĩnh trú |
> | 仕事始め | しごとはじめ | ngày làm việc đầu năm |
> | 秘訣 | ひけつ | bí quyết |
> | 結末 | けつまつ | kết cục, đoạn kết |
> | 積み重ね | つみかさね | sự tích lũy dần |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
