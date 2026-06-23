-- Hizashi LITE book SQL — Đại Y2
-- curriculum_id = 800000020  (book_seq=20)
-- nguồn: books/20_dai_year2/ — KHÔNG sửa thủ công, chạy lại build_lite_books.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (800000020, 'N4', 'markdown_book', 'Du học', 'Đại Y2', 'Bộ sách Hizashi — Đại Y2', 'system', TRUE, TRUE, TRUE, FALSE, 12, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, level = EXCLUDED.level, introduction = EXCLUDED.introduction, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000001, 800000020, NULL, 'markdown_book', 'T1. Cuộc sống ký túc xá du học sinh (寮生活)', '# Sách du học sinh năm 2 · T1. Cuộc sống ký túc xá du học sinh (寮生活)

> **Mục tiêu nhân vật:** Đại (20 tuổi, 4-5/2025, năm 2 trường tiếng Kansai Gogo Gakuin Osaka, vừa chuyển vào ký túc xá du học sinh). Học các mẫu hội thoại tiếng Nhật thường ngày ở ký túc: chào hỏi bạn cùng tầng, hỏi luật phân loại rác, mời/được mời món ăn quê hương, rủ lập nhóm học, xin lỗi khi ồn, nhận quà sinh nhật và gọi điện về VN.

---

## Bối cảnh

Tháng 4-5 năm 2025. Đại đã đỗ N3 và bắt đầu năm 2 trường tiếng Kansai Gogo Gakuin. Anh vừa chuyển từ homestay nhà Tony-Yumi sang ký túc xá du học sinh ở Tennoji để gần trường hơn. Bạn cùng tầng gồm Bahra (Mongolia), Rim (sempai VN đang ôn N1), John (Mỹ), Aung (Myanmar). Chương này tập trung các mẫu câu **thường nhật trong ký túc** — chào hỏi, hỏi luật, mời ăn, rủ học chung và keigo nhẹ khi báo cáo việc với người lớn tuổi (gọi Yumi, sinh nhật Tony).

---

## Tình huống 1 — Bếp chung tầng 1 · 6:30, sáng đầu tiên ở ký túc, làm quen Bahra

*Đại đang nấu cơm sáng. Bahra (Mongolia, năm 3 ở Nhật) bước xuống bếp.*

| Vai | Lời thoại |
|---|---|
| Bahra | おはよう！はじめまして、バフラです。モンゴルから<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào buổi sáng! Lần đầu gặp, mình là Bahra. Đến từ Mongolia.)* |
| Đại | おはようございます！ダイです。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<ruby>昨日<rt>きのう</rt></ruby><ruby>引<rt>ひ</rt></ruby>っ<ruby>越<rt>こ</rt></ruby>してきたばかりです。<br>*(Chào! Mình là Đại. Đến từ VN. Hôm qua mình vừa chuyển đến.)* |
| Bahra | あ、<ruby>新人<rt>しんじん</rt></ruby>さんやね。<ruby>何<rt>なに</rt></ruby><ruby>作<rt>つく</rt></ruby>ってるん？<br>*(À, người mới hả. Đang nấu gì thế?)* |
| Đại | <ruby>味噌汁<rt>みそしる</rt></ruby>と<ruby>卵焼<rt>たまごや</rt></ruby>きです。ホストファミリーの<ruby>奥<rt>おく</rt></ruby>さんに<ruby>教<rt>おし</rt></ruby>えてもらいました。<br>*(Canh miso với trứng cuộn. Cô chủ nhà homestay dạy cho.)* |
| Bahra | すごい！<ruby>日本人<rt>にほんじん</rt></ruby>みたいやん。<ruby>味噌汁<rt>みそしる</rt></ruby><ruby>作<rt>つく</rt></ruby>れる<ruby>留学生<rt>りゅうがくせい</rt></ruby>、なかなかおらんで。<br>*(Giỏi thế! Như người Nhật ấy. Du học sinh biết nấu canh miso hiếm lắm đấy.)* |
| Đại | バフラさんは<ruby>料理<rt>りょうり</rt></ruby>しないんですか？<br>*(Bahra-san không nấu ạ?)* |
| Bahra | <ruby>俺<rt>おれ</rt></ruby>はカップ<ruby>麺<rt>めん</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>や。<ruby>今度<rt>こんど</rt></ruby>モンゴル<ruby>料理<rt>りょうり</rt></ruby><ruby>作<rt>つく</rt></ruby>るから<ruby>食<rt>た</rt></ruby>べてな。<br>*(Mình chuyên mì ly. Hôm nào mình nấu món Mông Cổ cho ăn nhé.)* |
| Đại | はい、ぜひ！<ruby>楽<rt>たの</rt></ruby>しみにしています。<br>*(Vâng, rất mong! Em mong chờ ạ.)* |

---

## Tình huống 2 — Hành lang tầng 1 · 7:30, hỏi Rim về luật phân loại rác Osaka

*Đại cầm túi rác ra điểm tập kết thì gặp Rim (sempai VN, năm 4, đang ôn N1).*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Anh Rim ơi, cho em hỏi tí. Rác phân loại ở Osaka mấy loại ạ? |
| Rim | (VN) Năm loại. Tao chỉ cho. <ruby>燃<rt>も</rt></ruby>えるゴミ thứ 2 và thứ 5 — đồ ăn thừa, giấy bẩn. |
| Đại | (VN) <ruby>燃<rt>も</rt></ruby>えないゴミ là gì ạ? |
| Rim | (VN) Kim loại, thuỷ tinh. Thứ 3 đổ. Còn <ruby>缶<rt>かん</rt></ruby>とペットボトル thứ 4 — lon nước với chai nhựa. |
| Đại | (VN) Còn giấy báo? |
| Rim | (VN) <ruby>古紙<rt>こし</rt></ruby> thứ 6. Phải buộc dây gọn, không là họ không lấy đâu. |
| Đại | (VN) Đồ cồng kềnh thì sao anh? |
| Rim | (VN) <ruby>粗大<rt>そだい</rt></ruby>ゴミ. Phải gọi <ruby>区役所<rt>くやくしょ</rt></ruby> đăng ký trước, mua tem dán vào rồi mới đổ. Tao bị phạt 1 lần rồi, mày cẩn thận. |
| Đại | (VN) Vâng em nhớ rồi. Cảm ơn anh! |
| Rim | (VN) Có gì khó cứ hỏi tao. Tao ở đây 3 năm rồi. |

---

## Tình huống 3 — Phòng họp sinh hoạt ký túc · 19:00, quản lý ký túc dặn nội quy

*Quản lý ký túc (cô Matsuda 寮母, 50 tuổi) tổ chức buổi nhập học cho 4 du học sinh mới.*

| Vai | Lời thoại |
|---|---|
| Matsuda | <ruby>皆<rt>みな</rt></ruby>さん、ようこそ。<ruby>寮母<rt>りょうぼ</rt></ruby>の<ruby>松田<rt>まつだ</rt></ruby>です。<ruby>寮<rt>りょう</rt></ruby>のルールを<ruby>説明<rt>せつめい</rt></ruby>しますね。<br>*(Mọi người, chào mừng. Cô là Matsuda, dì quản lý ký túc. Cô giải thích nội quy nhé.)* |
| Matsuda | <ruby>夜<rt>よる</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>静<rt>しず</rt></ruby>かにしてください。シャワーは<ruby>朝<rt>あさ</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>夜<rt>よる</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>までです。<br>*(Sau 11 giờ đêm xin giữ yên lặng. Phòng tắm dùng từ 5 giờ sáng đến 12 giờ đêm.)* |
| Đại | すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。シャワーは<ruby>何時<rt>なんじ</rt></ruby>までですか？<br>*(Xin lỗi, cô làm ơn nói lại. Phòng tắm dùng đến mấy giờ ạ?)* |
| Matsuda | <ruby>夜<rt>よる</rt></ruby><ruby>12<rt>じゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>までです。それから、<ruby>友達<rt>ともだち</rt></ruby>を<ruby>泊<rt>と</rt></ruby>めることはできません。<br>*(Đến 12 giờ đêm. Ngoài ra, không được cho bạn ngủ lại qua đêm.)* |
| John | (English+JP) <ruby>彼女<rt>かのじょ</rt></ruby> も？<br>*(Bạn gái cũng không à?)* |
| Matsuda | （<ruby>苦笑<rt>くしょう</rt></ruby>い）<ruby>彼女<rt>かのじょ</rt></ruby>もダメです。<ruby>夜<rt>よる</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>までに<ruby>帰<rt>かえ</rt></ruby>ってもらってください。<br>*(Cười khổ. Bạn gái cũng không. Bảo họ về trước 10 giờ tối.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>質問<rt>しつもん</rt></ruby>があります。<ruby>洗濯機<rt>せんたくき</rt></ruby>は<ruby>無料<rt>むりょう</rt></ruby>ですか？<br>*(Em hiểu rồi ạ. Em có câu hỏi. Máy giặt miễn phí không ạ?)* |
| Matsuda | <ruby>洗濯<rt>せんたく</rt></ruby>は<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>200<rt>にひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、<ruby>乾燥機<rt>かんそうき</rt></ruby>は<ruby>100<rt>ひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Giặt 200 yên/lần, sấy 100 yên/lần.)* |
| Đại | はい、ありがとうございました。<br>*(Vâng, em cảm ơn ạ.)* |

---

## Tình huống 4 — Lớp B trường Kansai Gogo Gakuin · 9:00, buổi đầu lớp ôn N2

*Cô Yamada vào lớp, có 5 học sinh: Đại, Yifan (TQ), Sumi (HQ), Aung (Myanmar) và 1 bạn nữa.*

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>本日<rt>ほんじつ</rt></ruby>からN2<ruby>対策<rt>たいさく</rt></ruby>を<ruby>本格的<rt>ほんかくてき</rt></ruby>に<ruby>始<rt>はじ</rt></ruby>めます。<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby>に<ruby>向<rt>む</rt></ruby>けて<ruby>頑張<rt>がんば</rt></ruby>りましょう。<br>*(Từ hôm nay chúng ta chính thức ôn N2. Cùng cố gắng cho kỳ thi tháng 7.)* |
| Yamada | まず、<ruby>自己紹介<rt>じこしょうかい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>名前<rt>なまえ</rt></ruby>と<ruby>志望校<rt>しぼうこう</rt></ruby>を<ruby>言<rt>い</rt></ruby>ってください。<br>*(Đầu tiên, mời tự giới thiệu. Hãy nói tên và trường nguyện vọng.)* |
| Đại | ダイです。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>経済学部<rt>けいざいがくぶ</rt></ruby>を<ruby>志望<rt>しぼう</rt></ruby>しています。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em là Đại. Em nguyện vọng khoa kinh tế ĐH Osaka. Mong cô chỉ bảo.)* |
| Yifan | イーファンです。N2を<ruby>取<rt>と</rt></ruby>って<ruby>中国<rt>ちゅうごく</rt></ruby>に<ruby>帰国<rt>きこく</rt></ruby>します。<ruby>国内<rt>こくない</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>る<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Em là Yifan. Lấy N2 xong em về TQ. Định quay về trường đại học trong nước.)* |
| Đại | え、<ruby>本当<rt>ほんとう</rt></ruby>ですか？<ruby>日本<rt>にほん</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>に<ruby>進<rt>すす</rt></ruby>まないんですか？<br>*(Ơ thật ạ? Không học tiếp đại học ở Nhật à?)* |
| Yifan | はい。<ruby>家族<rt>かぞく</rt></ruby>の<ruby>事情<rt>じじょう</rt></ruby>で<ruby>帰<rt>かえ</rt></ruby>ることになりました。<br>*(Vâng. Vì hoàn cảnh gia đình nên em phải về.)* |
| Sumi | スミです。EJUを<ruby>受<rt>う</rt></ruby>けながら<ruby>韓国<rt>かんこく</rt></ruby>の<ruby>大学<rt>だいがく</rt></ruby>にも<ruby>同時<rt>どうじ</rt></ruby>に<ruby>出願<rt>しゅつがん</rt></ruby>します。<br>*(Em là Sumi. Em vừa thi EJU vừa đồng thời nộp đơn ĐH Hàn Quốc.)* |
| Aung | アウンです。<ruby>立命館<rt>りつめいかん</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>の<ruby>国際関係学部<rt>こくさいかんけいがくぶ</rt></ruby>を<ruby>狙<rt>ねら</rt></ruby>っています。<br>*(Em là Aung. Em nhắm khoa quan hệ quốc tế ĐH Ritsumeikan.)* |
| Yamada | みなさん<ruby>目標<rt>もくひょう</rt></ruby>がはっきりしていますね。それぞれの<ruby>道<rt>みち</rt></ruby>を<ruby>応援<rt>おうえん</rt></ruby>します。<br>*(Mọi người đều có mục tiêu rõ ràng. Cô sẽ ủng hộ con đường của từng em.)* |

---

## Tình huống 5 — Lớp B · 9:30, cô Yamada dạy 5 mẫu ngữ pháp N2 đầu tiên

| Vai | Lời thoại |
|---|---|
| Yamada | では、N2の<ruby>新出<rt>しんしゅつ</rt></ruby><ruby>文法<rt>ぶんぽう</rt></ruby>を<ruby>5<rt>いつ</rt></ruby>つ<ruby>紹介<rt>しょうかい</rt></ruby>します。まず「〜わけではない」。<ruby>意味<rt>いみ</rt></ruby>は「<ruby>必<rt>かなら</rt></ruby>ずしも〜ではない」。<br>*(Cô giới thiệu 5 mẫu ngữ pháp N2 mới. Trước hết "〜わけではない", nghĩa là "không nhất thiết là...".)* |
| Yamada | <ruby>例文<rt>れいぶん</rt></ruby>:「<ruby>毎日<rt>まいにち</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>すれば<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>するわけではない。」<br>*(Ví dụ: Học mỗi ngày không nhất thiết sẽ đỗ.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、すみません。「<ruby>必<rt>かなら</rt></ruby>ずしも」というのは<ruby>意味<rt>いみ</rt></ruby>がよく<ruby>分<rt>わ</rt></ruby>かりません。<ruby>説明<rt>せつめい</rt></ruby>していただけますか？<br>*(Cô ơi, em xin lỗi. "Kanarazushimo" em không hiểu rõ nghĩa. Cô giải thích giúp em được không?)* |
| Yamada | 「<ruby>必<rt>かなら</rt></ruby>ずしも」は「<ruby>絶対<rt>ぜったい</rt></ruby>に〜とは<ruby>言<rt>い</rt></ruby>えない」という<ruby>意味<rt>いみ</rt></ruby>です。<ruby>英語<rt>えいご</rt></ruby>で「not necessarily」です。<br>*("Kanarazushimo" có nghĩa "không thể nói chắc chắn là...". Tiếng Anh là "not necessarily".)* |
| Đại | あ、なるほど！ありがとうございます。<br>*(À, ra vậy ạ! Em cảm ơn cô.)* |
| Yamada | <ruby>次<rt>つぎ</rt></ruby>は「〜に<ruby>違<rt>ちが</rt></ruby>いない」(<ruby>確<rt>たし</rt></ruby>か)、「〜ものの」(けれども)、「〜がたい」(<ruby>難<rt>むずか</rt></ruby>しい)、「〜どころか」(<ruby>逆<rt>ぎゃく</rt></ruby>に)。<br>*(Tiếp theo "〜に違いない" (chắc chắn), "〜ものの" (mặc dù), "〜がたい" (khó), "〜どころか" (ngược lại).)* |
| Đại | （メモを<ruby>取<rt>と</rt></ruby>る）<br>*(Ghi chép.)* |

---

## Tình huống 6 — Căn-tin trường · 12:30, hỏi Tuấn về kế hoạch N2

*Đại gặp Tuấn (đàn em, lớp B đang ôn N3) ở căn-tin.*

| Vai | Lời thoại |
|---|---|
| Tuấn | (VN) Anh Đại, lớp anh hôm nay học gì? |
| Đại | (VN) 5 mẫu N2 đầu tiên. ~わけではない, ~に違いない, ~ものの, ~がたい, ~どころか. |
| Tuấn | (VN) Anh đăng ký thi N2 tháng 7 chưa? |
| Đại | (VN) Đăng ký rồi. Hạn 31/3 đã đóng tiền 5500 yên. Em định thi N2 lúc nào? |
| Tuấn | (VN) Em định nhảy thẳng từ N3 lên N2 tháng 12 này. |
| Đại | (VN) Nhảy thẳng à? Khoảng cách N3-N2 to lắm đấy. Em ôn được không? |
| Tuấn | (VN) Em cố. Nếu N2 fail thì 7/2026 thi lại. |
| Đại | (VN) Ừ, cố lên. Anh đi trước em 5 tháng thôi. Có gì khó nhắn anh. |
| Tuấn | (VN) Vâng cảm ơn anh. |

---

## Tình huống 7 — Bếp ký túc · 18:00, Bahra mời ăn Boz món Mongol

*Bahra gọi Đại xuống bếp, đang hấp Boz (há cảo Mông Cổ).*

| Vai | Lời thoại |
|---|---|
| Bahra | ダイ、<ruby>来<rt>き</rt></ruby>てくれ！モンゴル<ruby>料理<rt>りょうり</rt></ruby>できたぞ。<br>*(Đại, xuống đây! Món Mongol xong rồi nè.)* |
| Đại | わあ、いい<ruby>匂<rt>にお</rt></ruby>い！<ruby>何<rt>なん</rt></ruby>という<ruby>料理<rt>りょうり</rt></ruby>ですか？<br>*(Wa, thơm quá! Món gì thế ạ?)* |
| Bahra | ボーズや。<ruby>蒸<rt>む</rt></ruby>し<ruby>餃子<rt>ぎょうざ</rt></ruby>みたいなもん。<ruby>羊肉<rt>ようにく</rt></ruby>が<ruby>入<rt>はい</rt></ruby>ってる。<br>*(Boz. Giống há cảo hấp. Nhân thịt cừu.)* |
| Đại | <ruby>羊肉<rt>ようにく</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めてです。いただきます！<br>*(Lần đầu em ăn thịt cừu đấy. Em xin phép ạ!)* |
| Bahra | どう？<br>*(Sao?)* |
| Đại | おいしい！ベトナムの<ruby>餃子<rt>ぎょうざ</rt></ruby>とちょっと<ruby>似<rt>に</rt></ruby>ていますね。でも<ruby>羊肉<rt>ようにく</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>が<ruby>濃<rt>こ</rt></ruby>い。<br>*(Ngon ạ! Hơi giống há cảo VN. Nhưng vị thịt cừu đậm hơn.)* |
| Bahra | やろ？<ruby>今度<rt>こんど</rt></ruby>ベトナム<ruby>料理<rt>りょうり</rt></ruby><ruby>作<rt>つく</rt></ruby>ってよ。<br>*(Phải không? Lần sau Đại nấu món VN nhé.)* |
| Đại | はい！フォーか<ruby>生<rt>なま</rt></ruby><ruby>春巻<rt>はるま</rt></ruby>き、どっちがいいですか？<br>*(Vâng! Phở hay gỏi cuốn, anh thích cái nào?)* |
| Bahra | <ruby>両方<rt>りょうほう</rt></ruby>！<br>*(Cả hai!)* |

---

## Tình huống 8 — Phòng Đại · 21:00, Bahra rủ lập study group N2

| Vai | Lời thoại |
|---|---|
| Bahra | ダイ、ちょっとええか？<ruby>提案<rt>ていあん</rt></ruby>があるんやけど。<br>*(Đại, hỏi tí được không? Có đề xuất nè.)* |
| Đại | はい、どうぞ。<br>*(Vâng, cứ nói ạ.)* |
| Bahra | N2の<ruby>勉強会<rt>べんきょうかい</rt></ruby>、<ruby>一緒<rt>いっしょ</rt></ruby>にやらへん？<ruby>週<rt>しゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>くらい。<br>*(Mở nhóm học N2 với mình không? Khoảng 3 buổi/tuần.)* |
| Đại | いいですね！どんなスケジュールがいいですか？<br>*(Hay đấy! Lịch thế nào ạ?)* |
| Bahra | <ruby>火曜日<rt>かようび</rt></ruby><ruby>文法<rt>ぶんぽう</rt></ruby>、<ruby>木曜日<rt>もくようび</rt></ruby><ruby>読解<rt>どっかい</rt></ruby>、<ruby>土曜日<rt>どようび</rt></ruby><ruby>聴解<rt>ちょうかい</rt></ruby>と<ruby>会話<rt>かいわ</rt></ruby>。どうや？<br>*(Thứ 3 ngữ pháp, thứ 5 đọc hiểu, thứ 7 nghe + nói. Sao?)* |
| Đại | <ruby>賛成<rt>さんせい</rt></ruby>です。<ruby>時間<rt>じかん</rt></ruby>は？<br>*(Đồng ý ạ. Giờ thì sao?)* |
| Bahra | <ruby>夜<rt>よる</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>まで。<ruby>2<rt>に</rt></ruby><ruby>時間<rt>じかん</rt></ruby>で<ruby>集中<rt>しゅうちゅう</rt></ruby>。<br>*(Từ 8 đến 10 tối. 2 tiếng tập trung.)* |
| Đại | はい、いいです。<ruby>場所<rt>ばしょ</rt></ruby>は<ruby>共有<rt>きょうゆう</rt></ruby>スペース？<br>*(Vâng, được. Địa điểm phòng chung à?)* |
| Bahra | そうや。<ruby>明日<rt>あした</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めへん？<br>*(Đúng rồi. Mai bắt đầu luôn nhé?)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします！<br>*(Vâng, mong anh chỉ giúp ạ!)* |

---

## Tình huống 9 — Phòng chung · 23:30, John làm ồn — Đại nhắc

*Đêm khuya. John đang nghe nhạc to qua loa. Đại sang gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Đại | （ノック）ジョンさん、すみません、<ruby>少<rt>すこ</rt></ruby>しよろしいですか？<br>*(Gõ cửa. John ơi, xin lỗi, làm phiền một chút được không?)* |
| John | (English+JP) Oh, ダイ、<ruby>何<rt>なん</rt></ruby>？<br>*(Ô, Đại, gì thế?)* |
| Đại | <ruby>音楽<rt>おんがく</rt></ruby>がちょっと<ruby>大<rt>おお</rt></ruby>きいです。もう<ruby>11<rt>じゅういち</rt></ruby><ruby>時半<rt>じはん</rt></ruby>ですから、<ruby>音<rt>おと</rt></ruby>を<ruby>小<rt>ちい</rt></ruby>さくしてもらえませんか？<br>*(Nhạc hơi to. 11 giờ rưỡi rồi, anh vặn nhỏ giúp em được không?)* |
| John | あ、ごめん！<ruby>気<rt>き</rt></ruby>づかんかった。<br>*(À, xin lỗi! Mình không để ý.)* |
| Đại | <ruby>寮<rt>りょう</rt></ruby>のルールで<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby>は<ruby>静<rt>しず</rt></ruby>かにすることになっています。<br>*(Theo nội quy ký túc, sau 11 giờ phải giữ yên lặng.)* |
| John | OK OK、イヤホン<ruby>使<rt>つか</rt></ruby>う。すまんかった。<br>*(OK OK, mình dùng tai nghe. Xin lỗi nhé.)* |
| Đại | いえいえ、ありがとうございます。おやすみなさい。<br>*(Không có gì, cảm ơn anh. Chúc ngủ ngon.)* |

---

## Tình huống 10 — LINE Yumi · 21:00, Yumi nhắn về sinh nhật Tony

| Vai | Lời thoại |
|---|---|
| Yumi | (LINE) ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>元気<rt>げんき</rt></ruby>？<ruby>寮生活<rt>りょうせいかつ</rt></ruby>はどう？<br>*(Đại em khoẻ không? Cuộc sống ký túc sao rồi?)* |
| Đại | はい、<ruby>元気<rt>げんき</rt></ruby>です！バフラさんと<ruby>勉強会<rt>べんきょうかい</rt></ruby>を<ruby>始<rt>はじ</rt></ruby>めました。<ruby>料理<rt>りょうり</rt></ruby>もちゃんと<ruby>作<rt>つく</rt></ruby>っています。<br>*(Vâng, em khoẻ ạ! Em đã bắt đầu nhóm học với Bahra. Em vẫn nấu ăn đầy đủ.)* |
| Yumi | よかった。<ruby>実<rt>じつ</rt></ruby>はね、<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜日<rt>きんようび</rt></ruby>がトニーの<ruby>誕生日<rt>たんじょうび</rt></ruby>なの。<br>*(Tốt quá. Thật ra, thứ 6 tuần sau là sinh nhật của Tony.)* |
| Đại | え！<ruby>知<rt>し</rt></ruby>りませんでした。お<ruby>祝<rt>いわ</rt></ruby>いに<ruby>行<rt>い</rt></ruby>ってもいいですか？<br>*(Ơ! Em không biết. Em đến chúc mừng được không ạ?)* |
| Yumi | もちろん！トニーも<ruby>喜<rt>よろこ</rt></ruby>ぶよ。<ruby>夜<rt>よる</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>家<rt>うち</rt></ruby>で<ruby>小<rt>ちい</rt></ruby>さいパーティーをします。<br>*(Đương nhiên! Tony cũng sẽ vui. 7 giờ tối ở nhà có tiệc nhỏ.)* |
| Đại | プレゼントは<ruby>何<rt>なに</rt></ruby>がいいですか？<br>*(Quà thì gì hợp ạ?)* |
| Yumi | <ruby>気持<rt>きも</rt></ruby>ちだけで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。でもトニーはワインが<ruby>好<rt>す</rt></ruby>きだから、<ruby>赤<rt>あか</rt></ruby>ワイン<ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby>あったら<ruby>嬉<rt>うれ</rt></ruby>しいかな。<br>*(Tấm lòng là đủ rồi. Nhưng Tony thích rượu vang, một chai vang đỏ thì sẽ vui đấy.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました！<ruby>金曜日<rt>きんようび</rt></ruby><ruby>必<rt>かなら</rt></ruby>ず<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Em hiểu rồi! Thứ 6 em nhất định sẽ đến ạ.)* |

---

## Tình huống 11 — Nhà Tony-Yumi · 19:00 thứ 6, tiệc sinh nhật Tony

*Đại cầm chai vang đỏ và bánh kem nhỏ tới nhà. Tony mở cửa, bất ngờ.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、お<ruby>誕生日<rt>たんじょうび</rt></ruby>おめでとうございます！<br>*(Anh Tony, chúc mừng sinh nhật ạ!)* |
| Tony | え！？ダイ<ruby>君<rt>くん</rt></ruby>！どうして<ruby>知<rt>し</rt></ruby>ってるの？<br>*(Ơ!? Đại! Sao em biết?)* |
| Đại | ユミさんに<ruby>教<rt>おし</rt></ruby>えてもらいました。これ、つまらないものですが。<br>*(Cô Yumi cho em biết ạ. Đây là chút quà mọn ạ.)* |
| Tony | （ワインと<ruby>箱<rt>はこ</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）<ruby>赤<rt>あか</rt></ruby>ワインとケーキ！ありがとう、<ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Nhận chai vang và hộp. Vang đỏ với bánh! Cảm ơn em, thật đấy.)* |
| Yumi | （<ruby>奥<rt>おく</rt></ruby>から）ダイ<ruby>君<rt>くん</rt></ruby>、いらっしゃい！<br>*(Từ trong. Đại em đến rồi!)* |
| Tony | （ちょっと<ruby>涙<rt>なみだ</rt></ruby><ruby>目<rt>め</rt></ruby>）<ruby>2<rt>に</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>の<ruby>誕生日<rt>たんじょうび</rt></ruby>は<ruby>一人<rt>ひとり</rt></ruby>で<ruby>過<rt>す</rt></ruby>ごした。<ruby>今年<rt>ことし</rt></ruby>はダイ<ruby>君<rt>くん</rt></ruby>もユミもいる。<br>*(Hơi rưng nước mắt. Sinh nhật 2 năm trước chú một mình. Năm nay có cả Đại và Yumi.)* |
| Đại | （<ruby>胸<rt>むね</rt></ruby>がいっぱいになる）トニーさん、これからも<ruby>毎年<rt>まいとし</rt></ruby><ruby>来<rt>き</rt></ruby>ます。<ruby>絶対<rt>ぜったい</rt></ruby>に<ruby>忘<rt>わす</rt></ruby>れません。<br>*(Lòng dạt dào. Anh Tony, từ giờ năm nào em cũng đến. Em tuyệt đối không quên đâu.)* |
| Tony | ありがとう、ダイ<ruby>君<rt>くん</rt></ruby>。さあ、<ruby>食<rt>た</rt></ruby>べよう！<br>*(Cảm ơn Đại. Nào, cùng ăn thôi!)* |

---

## Tình huống 12 — LINE với mẹ · 22:30, kế hoạch hè bố mẹ qua Nhật

*Cảnh đối thoại tiếng Việt — Đại gọi video về VN.*

| Vai | Lời thoại |
|---|---|
| Mẹ | (VN) Alô Đại. Bố mẹ tính rồi, tháng 8 bố mẹ sang Nhật được. |
| Đại | (VN) Thật ạ! Bố mẹ tính sang mấy ngày? |
| Mẹ | (VN) 10 ngày. Visa du lịch xin được rồi. |
| Đại | (VN) Vậy lịch thế này nhé: 3 ngày Osaka — Lâu đài Osaka, Dotonbori, USJ. 2 ngày Kyoto — Kinkakuji, Fushimi Inari. 2 ngày Nara — chùa Todaiji với hươu. Còn 3 ngày bố mẹ nghỉ ngơi ở nhà anh Tony-cô Yumi. |
| Mẹ | (VN) Nhà người ta cho mình ở à con? |
| Đại | (VN) Cô Yumi nói bố mẹ ở nhà cô được. Cô có phòng khách trống. Con đã hỏi rồi. |
| Mẹ | (VN) Vậy thì cảm ơn cô quá. Mẹ sẽ mang quà sang. |
| Đại | (VN) Bố mẹ mang ít hạt sen với chè Thái cho cô là cô thích lắm. |
| Mẹ | (VN) Ừ. Vé máy bay mẹ với bố đặt ngày mai. À, Tết 2026 con không về thật à? |
| Đại | (VN) Tháng 2/2026 con đang thi 入試 đại học mẹ ạ. 2/2027 đỗ rồi con về 1 tháng hè. |
| Mẹ | (VN) Ừ. Con thi đỗ nhé. Cố gắng lên. |
| Đại | (VN) Vâng mẹ. Con yêu bố mẹ. |

---

## Đọng lại chương 1

Tháng 4-5/2025, Đại chuyển vào ký túc xá du học sinh ở Tennoji và bắt đầu năm 2 trường tiếng Nhật. Anh học các mẫu giao tiếp cơ bản: **「はじめまして」自己紹介** với bạn cùng tầng, **「もう一度お願いします」** khi nghe không kịp quản lý ký túc, **「〜していただけますか」** khi nhắc John bớt ồn, **「気持ちだけで大丈夫」** trong tình huống hỏi quà sinh nhật. Trên lớp ôn N2, cô Yamada dạy 5 mẫu cốt lõi: **〜わけではない・〜に違いない・〜ものの・〜がたい・〜どころか**. Bahra mời ăn Boz Mongol và rủ Đại lập study group N2 tuần 3 buổi (火・木・土). Tối thứ 6, Đại đến nhà Tony-Yumi mừng sinh nhật, cảm động khi Tony nói "Sinh nhật 2 năm trước chú một mình". Cuối ngày gọi mẹ chốt kế hoạch bố mẹ sang Nhật tháng 8.

> Từ vựng & mẫu câu chương này: 寮生活・引っ越す・粗大ゴミ・区役所・洗濯機・乾燥機・志望校・経済学部・帰国・出願・〜わけではない・〜に違いない・〜ものの・〜がたい・〜どころか・必ずしも・勉強会・賛成・〜していただけますか・気持ちだけで大丈夫・つまらないものですが・お誕生日おめでとうございます・入試

## Bí quyết chương

- **「もう一度お願いします」** — câu cứu sinh khi nghe người Nhật nói nhanh, đừng ngại dùng.
- **「気持ちだけで大丈夫」** — câu Yumi nói nghĩa "tấm lòng là đủ rồi" — văn hoá Nhật trọng tâm ý.
- **「つまらないものですが」** — câu cố định khi tặng quà, hạ thấp món quà của mình.
- **Bahra study group T3-T5-T7** — phân bổ rõ ngữ pháp / đọc / nghe-nói tránh học lan man.
- **Sinh nhật người Nhật**: rượu vang + bánh kem là combo an toàn cho người trung niên.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 寮生活 | りょうせいかつ | LIÊU SINH HOẠT | Cuộc sống ký túc xá |
| 引っ越す | ひっこす | DẪN VIỆT | Chuyển nhà |
| 新人 | しんじん | TÂN NHÂN | Người mới |
| 味噌汁 | みそしる | VỊ TĂNG TRẤP | Canh miso |
| 卵焼き | たまごやき | NOÃN THIÊU | Trứng cuộn |
| 留学生 | りゅうがくせい | LƯU HỌC SINH | Du học sinh |
| 料理 | りょうり | LIỆU LÝ | Nấu ăn / món ăn |
| 燃えるゴミ | もえるゴミ | NHIÊN | Rác cháy được |
| 燃えないゴミ | もえないゴミ | NHIÊN | Rác không cháy được |
| 古紙 | こし | CỔ CHỈ | Giấy cũ |
| 粗大ゴミ | そだいゴミ | THÔ ĐẠI | Rác cồng kềnh |
| 区役所 | くやくしょ | KHU DỊCH SỞ | Văn phòng quận |
| 寮母 | りょうぼ | LIÊU MẪU | Dì quản lý ký túc (nữ) |
| 以降 | いこう | DĨ GIÁNG | Trở đi / sau |
| 洗濯機 | せんたくき | TẨY TRẠC CƠ | Máy giặt |
| 乾燥機 | かんそうき | CAN TÁO CƠ | Máy sấy |
| 無料 | むりょう | VÔ LIỆU | Miễn phí |
| 本格的 | ほんかくてき | BẢN CÁCH ĐÍCH | Chính thức / bài bản |
| 対策 | たいさく | ĐỐI SÁCH | Đối sách / ôn luyện |
| 自己紹介 | じこしょうかい | TỰ KỶ THIỆU GIỚI | Tự giới thiệu |
| 志望校 | しぼうこう | CHÍ VỌNG HIỆU | Trường nguyện vọng |
| 経済学部 | けいざいがくぶ | KINH TẾ HỌC BỘ | Khoa Kinh tế |
| 志望 | しぼう | CHÍ VỌNG | Nguyện vọng |
| 帰国 | きこく | QUY QUỐC | Về nước |
| 出願 | しゅつがん | XUẤT NGUYỆN | Nộp hồ sơ |
| 国際関係学部 | こくさいかんけいがくぶ | QUỐC TẾ QUAN HỆ HỌC BỘ | Khoa Quan hệ quốc tế |
| 文法 | ぶんぽう | VĂN PHÁP | Ngữ pháp |
| 例文 | れいぶん | LỆ VĂN | Câu ví dụ |
| 合格 | ごうかく | HỢP CÁCH | Đỗ / đậu |
| 説明 | せつめい | THUYẾT MINH | Giải thích |
| 試験 | しけん | THÍ NGHIỆM | Kỳ thi |
| 勉強会 | べんきょうかい | MIỄN CƯỜNG HỘI | Nhóm học |
| 読解 | どっかい | ĐỘC GIẢI | Đọc hiểu |
| 聴解 | ちょうかい | THÍNH GIẢI | Nghe hiểu |
| 賛成 | さんせい | TÁN THÀNH | Đồng ý |
| 集中 | しゅうちゅう | TẬP TRUNG | Tập trung |
| 共有スペース | きょうゆうスペース | CỘNG HỮU | Không gian chung |
| 提案 | ていあん | ĐỀ ÁN | Đề xuất |
| 入試 | にゅうし | NHẬP THÍ | Thi tuyển sinh đại học |', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000002, 800000020, NULL, 'markdown_book', 'T2. Đỗ N3, bắt đầu lộ trình N2 + EJU (N3合格・N2スタート)', '# Sách du học sinh năm 2 · T2. Đỗ N3, bắt đầu lộ trình N2 + EJU (N3合格・N2スタート)

> **Mục tiêu nhân vật:** Đại (20 tuổi, 5/2025). Học các mẫu hội thoại tiếng Nhật để: báo tin đỗ N3 cho thầy/bố mẹ với keigo phù hợp, hỏi cô giáo về cấu trúc kỳ thi EJU, xin lời khuyên mua sách tại hiệu sách lớn, phản hồi khi nhận điểm mock thấp, báo cáo lên sếp baito về việc thăng cấp, và đối thoại với đàn em VN về lộ trình thi.

---

## Bối cảnh

Tháng 5 năm 2025. Đại vừa nhận kết quả N3 — đỗ 132/180 (đậu vừa đủ). Cô Yamada chính thức triển khai chương trình N2 + EJU song song. Lộ trình: tháng 7/2025 thi N2 lần 1, tháng 11/2025 thi EJU, tháng 2/2026 thi 入試 ĐH Osaka. Chương này tập trung các mẫu câu **báo tin / hỏi thông tin chính thức / xin lời khuyên hiệu sách / phản hồi kết quả** — tức tiếng Nhật bán-trang trọng dùng với thầy cô và sếp baito.

---

## Tình huống 1 — Văn phòng cô Yamada · 9:00, báo tin đỗ N3

*Đại vào văn phòng giáo viên sau khi nhận giấy báo N3 online sáng nay.*

| Vai | Lời thoại |
|---|---|
| Đại | （ノック）<ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Gõ cửa. Em xin phép.)* |
| Yamada | あ、ダイ<ruby>君<rt>くん</rt></ruby>、どうぞ。<br>*(À, Đại em vào đi.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>報告<rt>ほうこく</rt></ruby>があります。<ruby>本日<rt>ほんじつ</rt></ruby>N3の<ruby>結果<rt>けっか</rt></ruby>が<ruby>発表<rt>はっぴょう</rt></ruby>されまして、<ruby>合格<rt>ごうかく</rt></ruby>しました！<br>*(Cô ơi, em xin báo cáo. Hôm nay kết quả N3 được công bố, em đã đỗ ạ!)* |
| Yamada | おお、おめでとう！<ruby>点数<rt>てんすう</rt></ruby>はどうだった？<br>*(Ồ, chúc mừng! Điểm thế nào?)* |
| Đại | <ruby>総合<rt>そうごう</rt></ruby><ruby>132<rt>ひゃくさんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby>ラインギリギリでした。<br>*(Tổng 132 điểm ạ. Sát mép đỗ thôi.)* |
| Yamada | ギリギリでも<ruby>合格<rt>ごうかく</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>。よく<ruby>頑張<rt>がんば</rt></ruby>ったね。<ruby>聴解<rt>ちょうかい</rt></ruby>は？<br>*(Sát mép vẫn là đỗ. Em cố gắng tốt rồi. Phần nghe sao?)* |
| Đại | <ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>40<rt>よんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<ruby>一番<rt>いちばん</rt></ruby><ruby>弱<rt>よわ</rt></ruby>かったです。<br>*(Phần nghe 40 điểm. Yếu nhất ạ.)* |
| Yamada | N2では<ruby>聴解<rt>ちょうかい</rt></ruby>がもっと<ruby>難<rt>むずか</rt></ruby>しくなるから、<ruby>今<rt>いま</rt></ruby>から<ruby>毎日<rt>まいにち</rt></ruby><ruby>聞<rt>き</rt></ruby>く<ruby>習慣<rt>しゅうかん</rt></ruby>をつけましょう。<br>*(Lên N2 nghe khó hơn nhiều, em tập thói quen nghe mỗi ngày đi.)* |
| Đại | はい、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng, em hiểu ạ.)* |

---

## Tình huống 2 — Lớp B · 13:30, cô Yamada giới thiệu cấu trúc EJU

*Cả lớp B đang nghe cô Yamada giới thiệu EJU lần đầu — Đại ghi chép.*

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>今日<rt>きょう</rt></ruby>はEJU(<ruby>日本留学試験<rt>にほんりゅうがくしけん</rt></ruby>)について<ruby>説明<rt>せつめい</rt></ruby>します。<ruby>3<rt>みっ</rt></ruby>つの<ruby>科目<rt>かもく</rt></ruby>があります。<br>*(Hôm nay cô giải thích về EJU - kỳ thi du học. Có 3 môn.)* |
| Yamada | <ruby>1<rt>いち</rt></ruby><ruby>科目<rt>めかもく</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>、<ruby>満点<rt>まんてん</rt></ruby><ruby>450<rt>よんひゃくごじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>記述<rt>きじゅつ</rt></ruby><ruby>50<rt>ごじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>＋<ruby>読解<rt>どっかい</rt></ruby><ruby>200<rt>にひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby>＋<ruby>聴<rt>ちょう</rt></ruby><ruby>解<rt>かい</rt></ruby>・<ruby>聴<rt>ちょう</rt></ruby><ruby>読解<rt>どっかい</rt></ruby><ruby>200<rt>にひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Môn 1 là tiếng Nhật, tối đa 450. Viết 50 + Đọc 200 + Nghe và nghe-đọc 200.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、「<ruby>聴読解<rt>ちょうどっかい</rt></ruby>」というのは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Cô ơi, "chodokkai" là gì ạ?)* |
| Yamada | いい<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>音声<rt>おんせい</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きながら、<ruby>図<rt>ず</rt></ruby>やグラフを<ruby>読<rt>よ</rt></ruby>む<ruby>形式<rt>けいしき</rt></ruby>です。N2にはありません。<br>*(Câu hỏi hay. Là dạng vừa nghe vừa đọc biểu đồ, đồ thị. N2 không có dạng này.)* |
| Đại | なるほど。<ruby>2<rt>に</rt></ruby><ruby>科目<rt>かもく</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Ra vậy. Môn thứ 2 là gì ạ?)* |
| Yamada | <ruby>総合科目<rt>そうごうかもく</rt></ruby>(<ruby>政治<rt>せいじ</rt></ruby>＋<ruby>経済<rt>けいざい</rt></ruby>＋<ruby>歴史<rt>れきし</rt></ruby>＋<ruby>地理<rt>ちり</rt></ruby>) <ruby>200<rt>にひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby>、<ruby>文系<rt>ぶんけい</rt></ruby><ruby>専用<rt>せんよう</rt></ruby>。<ruby>3<rt>さん</rt></ruby><ruby>科目<rt>かもく</rt></ruby><ruby>目<rt>め</rt></ruby>は<ruby>数学<rt>すうがく</rt></ruby> <ruby>200<rt>にひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Tổng hợp (chính trị + kinh tế + sử + địa) 200 điểm, dành cho khối văn. Môn 3 là Toán 200 điểm.)* |
| Đại | <ruby>経済学部<rt>けいざいがくぶ</rt></ruby>なら、どの<ruby>組<rt>く</rt></ruby>み<ruby>合<rt>あ</rt></ruby>わせですか？<br>*(Nếu vào khoa kinh tế thì tổ hợp nào ạ?)* |
| Yamada | <ruby>日本語<rt>にほんご</rt></ruby>＋<ruby>総合<rt>そうごう</rt></ruby>＋<ruby>数学<rt>すうがく</rt></ruby>コース<ruby>1<rt>いち</rt></ruby>(<ruby>文系<rt>ぶんけい</rt></ruby>)です。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>540<rt>ごひゃくよんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>くらいです。<br>*(Tiếng Nhật + Tổng hợp + Toán C1. Mức đỗ khoa kinh tế ĐH Osaka khoảng 540 điểm.)* |
| Đại | <ruby>540<rt>ごひゃくよんじゅう</rt></ruby>...（メモを<ruby>取<rt>と</rt></ruby>る）<ruby>厳<rt>きび</rt></ruby>しいですね。<br>*(540... Ghi chép. Cao đấy ạ.)* |

---

## Tình huống 3 — Hiệu sách Junkudo Namba · 18:00, hỏi nhân viên về sách EJU

*Đại tới hiệu sách lớn Junkudo Namba tìm sách ôn EJU. Tìm 10 phút không thấy, hỏi nhân viên.*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、ちょっとお<ruby>伺<rt>うかが</rt></ruby>いしてもいいですか？<br>*(Xin lỗi, tôi hỏi một chút được không ạ?)* |
| Staff | はい、どうぞ。<br>*(Vâng, cứ tự nhiên.)* |
| Đại | EJUの<ruby>総合科目<rt>そうごうかもく</rt></ruby>の<ruby>対策本<rt>たいさくほん</rt></ruby>を<ruby>探<rt>さが</rt></ruby>しているんですが。<br>*(Em đang tìm sách ôn môn tổng hợp EJU.)* |
| Staff | EJUコーナーは<ruby>2<rt>に</rt></ruby><ruby>階<rt>かい</rt></ruby>の<ruby>奥<rt>おく</rt></ruby>です。ご<ruby>案内<rt>あんない</rt></ruby>しましょうか？<br>*(Khu vực EJU ở tầng 2, phía trong. Tôi dẫn em đi nhé?)* |
| Đại | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Nhờ chị giúp ạ.)* |
| Staff | （<ruby>案内<rt>あんない</rt></ruby>しながら）どんなレベルのものをお<ruby>探<rt>さが</rt></ruby>しですか？<br>*(Vừa dẫn vừa hỏi. Em tìm trình độ nào?)* |
| Đại | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>です。ハイレベルがいいです。<br>*(Em nguyện vọng ĐH Osaka. Trình độ cao là tốt ạ.)* |
| Staff | では、こちらの<ruby>3<rt>さん</rt></ruby><ruby>冊<rt>さつ</rt></ruby>がおすすめです。「ハイレベル<ruby>総合科目<rt>そうごうかもく</rt></ruby>」「<ruby>過去問<rt>かこもん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>年分<rt>ねんぶん</rt></ruby>」「<ruby>現代<rt>げんだい</rt></ruby><ruby>政治経済用語集<rt>せいじけいざいようごしゅう</rt></ruby>」。<br>*(Vậy thì 3 cuốn này tôi khuyên. "Tổng hợp trình độ cao", "Đề 5 năm gần đây", "Từ vựng chính trị-kinh tế hiện đại".)* |
| Đại | <ruby>合計<rt>ごうけい</rt></ruby>でおいくらですか？<br>*(Tổng bao nhiêu ạ?)* |
| Staff | <ruby>3<rt>さん</rt></ruby><ruby>冊<rt>さつ</rt></ruby>で<ruby>税込<rt>ぜいこ</rt></ruby>み<ruby>9<rt>きゅう</rt></ruby><ruby>000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>くらいです。<br>*(3 cuốn đã gồm thuế khoảng 9000 yên.)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>冊<rt>さつ</rt></ruby>とも<ruby>下<rt>くだ</rt></ruby>さい。<br>*(Cho em lấy cả 3 cuốn ạ.)* |

---

## Tình huống 4 — Lớp B · 14:00 cuối tuần sau, nhận kết quả Mock EJU lần 1

*Cô Yamada phát kết quả Mock EJU lần 1. Đại nhận giấy, mặt tối.*

| Vai | Lời thoại |
|---|---|
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、Mock EJUの<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Đại, kết quả Mock EJU đây.)* |
| Đại | （<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る、<ruby>見<rt>み</rt></ruby>る）...<ruby>合計<rt>ごうけい</rt></ruby><ruby>480<rt>よんひゃくはちじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>ラインに<ruby>60<rt>ろくじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>足<rt>た</rt></ruby>りません。<br>*(Nhận và xem. ... Tổng 480 điểm. Thiếu 60 so với mức đỗ Osaka.)* |
| Yamada | <ruby>内訳<rt>うちわけ</rt></ruby>を<ruby>見<rt>み</rt></ruby>ましょう。<ruby>日本語<rt>にほんご</rt></ruby> <ruby>220<rt>にひゃくにじゅう</rt></ruby>/450、<ruby>総合<rt>そうごう</rt></ruby> <ruby>100<rt>ひゃく</rt></ruby>/200、<ruby>数学<rt>すうがく</rt></ruby> <ruby>160<rt>ひゃくろくじゅう</rt></ruby>/200。<br>*(Xem chi tiết nhé. Tiếng Nhật 220/450, Tổng hợp 100/200, Toán 160/200.)* |
| Đại | <ruby>総合<rt>そうごう</rt></ruby>が<ruby>半分<rt>はんぶん</rt></ruby>しか<ruby>取<rt>と</rt></ruby>れませんでした。<ruby>日本<rt>にほん</rt></ruby>の<ruby>政治<rt>せいじ</rt></ruby>が<ruby>全<rt>まった</rt></ruby>く<ruby>分<rt>わ</rt></ruby>かりません。<br>*(Tổng hợp em chỉ được nửa. Chính trị Nhật em không hiểu gì cả.)* |
| Yamada | <ruby>初<rt>はじ</rt></ruby>めての<ruby>受験<rt>じゅけん</rt></ruby>だから<ruby>普通<rt>ふつう</rt></ruby>です。<ruby>落<rt>お</rt></ruby>ち<ruby>込<rt>こ</rt></ruby>まないで。<br>*(Lần đầu thi thì bình thường. Đừng buồn.)* |
| Đại | はい...どうやって<ruby>勉強<rt>べんきょう</rt></ruby>すればいいですか？<br>*(Vâng... Học thế nào thì tốt ạ?)* |
| Yamada | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>集中的<rt>しゅうちゅうてき</rt></ruby>に<ruby>総合<rt>そうごう</rt></ruby>を<ruby>強化<rt>きょうか</rt></ruby>しましょう。<ruby>毎日<rt>まいにち</rt></ruby><ruby>新聞<rt>しんぶん</rt></ruby>の<ruby>政治面<rt>せいじめん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むのもいいですよ。<br>*(3 tháng tập trung tăng cường Tổng hợp. Em đọc trang chính trị báo mỗi ngày cũng tốt đấy.)* |
| Đại | はい、<ruby>毎朝<rt>まいあさ</rt></ruby>NHKニュースを<ruby>見<rt>み</rt></ruby>る<ruby>習慣<rt>しゅうかん</rt></ruby>をつけます。<br>*(Vâng, em sẽ tập thói quen xem tin NHK mỗi sáng.)* |
| Yamada | いいですね。<ruby>努力<rt>どりょく</rt></ruby>すれば<ruby>必<rt>かなら</rt></ruby>ず<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ます。<br>*(Tốt đấy. Em cố gắng thì chắc chắn sẽ có kết quả.)* |

---

## Tình huống 5 — Phòng chung ký túc · 20:00, study group với Bahra

| Vai | Lời thoại |
|---|---|
| Bahra | <ruby>今日<rt>きょう</rt></ruby>は<ruby>文法<rt>ぶんぽう</rt></ruby>の<ruby>日<rt>ひ</rt></ruby>や。「〜わけではない」で<ruby>例文<rt>れいぶん</rt></ruby><ruby>作<rt>つく</rt></ruby>って。<br>*(Hôm nay ngày ngữ pháp. Đặt ví dụ với "〜わけではない" đi.)* |
| Đại | <ruby>毎日<rt>まいにち</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>すれば<ruby>必<rt>かなら</rt></ruby>ず<ruby>大阪大<rt>おおさかだい</rt></ruby>に<ruby>受<rt>う</rt></ruby>かるわけではない。でも<ruby>確率<rt>かくりつ</rt></ruby>は<ruby>上<rt>あ</rt></ruby>がる。<br>*(Học mỗi ngày không nhất thiết đỗ Osaka. Nhưng xác suất sẽ tăng.)* |
| Bahra | ナイス！<ruby>俺<rt>おれ</rt></ruby>は「〜ものの」:「N2に<ruby>合格<rt>ごうかく</rt></ruby>したものの、N1はまだ<ruby>遠<rt>とお</rt></ruby>い。」<br>*(Hay! Mình đặt với "〜ものの": Tuy đỗ N2 nhưng N1 vẫn xa.)* |
| Đại | バフラさん、もうN2<ruby>持<rt>も</rt></ruby>ってるんですか？<br>*(Anh Bahra có N2 rồi à?)* |
| Bahra | <ruby>去年<rt>きょねん</rt></ruby><ruby>取<rt>と</rt></ruby>った。<ruby>今<rt>いま</rt></ruby>N1<ruby>狙<rt>ねら</rt></ruby>い。<br>*(Năm ngoái lấy rồi. Giờ đang nhắm N1.)* |
| Đại | え、<ruby>知<rt>し</rt></ruby>りませんでした！じゃあ<ruby>俺<rt>おれ</rt></ruby>が<ruby>教<rt>おそ</rt></ruby>わる<ruby>立場<rt>たちば</rt></ruby>ですね。<br>*(Ơ em không biết! Vậy em là bên được dạy à.)* |
| Bahra | お<ruby>互<rt>たが</rt></ruby>いに<ruby>教<rt>おし</rt></ruby>え<ruby>合<rt>あ</rt></ruby>うのがええんやで。<ruby>俺<rt>おれ</rt></ruby>は<ruby>会話<rt>かいわ</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>やから。<br>*(Dạy lẫn nhau là tốt nhất đó. Mình thì yếu giao tiếp.)* |
| Đại | <ruby>会話<rt>かいわ</rt></ruby>なら<ruby>俺<rt>おれ</rt></ruby><ruby>得意<rt>とくい</rt></ruby>です！Lawsonで<ruby>毎日<rt>まいにち</rt></ruby><ruby>使<rt>つか</rt></ruby>っていますから。<br>*(Giao tiếp em khá ạ! Vì ở Lawson dùng mỗi ngày.)* |

---

## Tình huống 6 — Lawson Tennoji · 18:00, sếp Suzuki báo thăng cấp

*Sếp Suzuki gọi Đại vào phòng nghỉ trước khi vào ca.*

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイ<ruby>君<rt>くん</rt></ruby>、ちょっと<ruby>話<rt>はな</rt></ruby>あるねん。<br>*(Đại em, có chuyện nói chút.)* |
| Đại | はい、<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Vâng, có chuyện gì ạ?)* |
| Suzuki | <ruby>君<rt>きみ</rt></ruby>、<ruby>10<rt>じゅっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>勤<rt>つと</rt></ruby>めてくれてるやろ。N3も<ruby>合格<rt>ごうかく</rt></ruby>したて<ruby>聞<rt>き</rt></ruby>いたで。<br>*(Em đã làm 10 tháng rồi mà. Nghe nói cũng đỗ N3 nữa.)* |
| Đại | はい、<ruby>先週<rt>せんしゅう</rt></ruby><ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<br>*(Vâng, tuần trước có kết quả ạ.)* |
| Suzuki | おめでとう！それでな、<ruby>本社<rt>ほんしゃ</rt></ruby>と<ruby>相談<rt>そうだん</rt></ruby>して、<ruby>君<rt>きみ</rt></ruby>をシニアスタッフに<ruby>昇格<rt>しょうかく</rt></ruby>させることになったわ。<br>*(Chúc mừng! Thế nên, tôi đã bàn với công ty mẹ, quyết định đề bạt em lên nhân viên senior.)* |
| Đại | え！<ruby>本当<rt>ほんとう</rt></ruby>ですか！？ありがとうございます！<br>*(Ơ! Thật ạ!? Em cảm ơn anh!)* |
| Suzuki | <ruby>時給<rt>じきゅう</rt></ruby>が<ruby>1100<rt>せんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>から<ruby>1200<rt>せんにひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>に<ruby>上<rt>あ</rt></ruby>がるで。<ruby>月<rt>つき</rt></ruby><ruby>4000<rt>よんせん</rt></ruby><ruby>円<rt>えん</rt></ruby>くらい<ruby>増<rt>ふ</rt></ruby>えるはずや。<br>*(Lương giờ tăng từ 1100 lên 1200 yên. Mỗi tháng sẽ tăng khoảng 4000 yên.)* |
| Đại | <ruby>大変<rt>たいへん</rt></ruby><ruby>嬉<rt>うれ</rt></ruby>しいです。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em mừng lắm ạ. Từ giờ em sẽ cố gắng hơn.)* |
| Suzuki | それからな、<ruby>来月<rt>らいげつ</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby><ruby>研修<rt>けんしゅう</rt></ruby>もお<ruby>願<rt>ねが</rt></ruby>いするわ。メンター<ruby>役<rt>やく</rt></ruby>や。<br>*(Còn nữa, từ tháng sau nhờ em đào tạo tân binh. Vai trò mentor đó.)* |
| Đại | はい、<ruby>精一杯<rt>せいいっぱい</rt></ruby><ruby>務<rt>つと</rt></ruby>めさせていただきます。<br>*(Vâng, em sẽ cố hết sức làm tốt ạ.)* |

---

## Tình huống 7 — Phòng Đại · 21:00, Linh đến chơi và hỏi về ký túc

*Linh (đàn em VN, đang ôn N4 lớp C) đến chơi phòng Đại lần đầu.*

| Vai | Lời thoại |
|---|---|
| Linh | (VN) Anh ơi em vào được không? |
| Đại | (VN) Vào đi! Em là khách đầu tiên của anh ở ký túc đấy. |
| Linh | (VN) Phòng đẹp ghê anh ạ. Bao nhiêu chiếu (jou)? |
| Đại | (VN) 8 chiếu. Có bàn học, giường, tủ áo, kệ sách. Tiền thuê 35000 yên/tháng kèm điện nước. |
| Linh | (VN) Rẻ hơn em tưởng. Em đang tính chuyển ký túc tháng 6 này. |
| Đại | (VN) Hay đấy. Em định ký túc nào? |
| Linh | (VN) Ký túc nữ riêng của trường em ở Namba. Cấm bạn trai vào, giờ về 22h. |
| Đại | (VN, cười) Vậy hôm nào anh muốn gặp em chỉ đến cổng được thôi à? |
| Linh | (VN, đỏ mặt) Em sẽ ra ngoài gặp anh. |
| Đại | (VN) OK. Tiền em xin gia đình hay tự lo? |
| Linh | (VN) Bố mẹ chuyển. Em chưa đi baito được. Tiếng còn yếu quá. |
| Đại | (VN) Đỗ N4 rồi đi Lawson xin. Sếp anh nhận du học sinh nhiều. Anh giới thiệu cho. |
| Linh | (VN) Vâng, cảm ơn anh nhiều. |

---

## Tình huống 8 — Sân ga Tennoji · 8:00, hỏi đường đến trung tâm thi EJU

*Đại đăng ký thi EJU lần 1 tháng 11. Hôm nay đi đến trung tâm đăng ký để xác nhận hồ sơ. Hỏi nhân viên nhà ga.*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、ちょっと<ruby>道<rt>みち</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか？<br>*(Xin lỗi, anh chỉ đường giúp em được không ạ?)* |
| Staff | はい、どちらまで？<br>*(Vâng, đi đâu?)* |
| Đại | <ruby>日本学生支援機構<rt>にほんがくせいしえんきこう</rt></ruby>(JASSO)の<ruby>大阪事務所<rt>おおさかじむしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>きたいんですが。<br>*(Em muốn đến văn phòng Osaka của JASSO - Tổ chức hỗ trợ sinh viên Nhật.)* |
| Staff | あ、JASSOね。<ruby>地下鉄<rt>ちかてつ</rt></ruby><ruby>御堂筋線<rt>みどうすじせん</rt></ruby>で<ruby>淀屋橋<rt>よどやばし</rt></ruby><ruby>駅<rt>えき</rt></ruby>まで。そこから<ruby>歩<rt>ある</rt></ruby>いて<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>です。<br>*(À JASSO. Đi tàu điện ngầm tuyến Midosuji đến ga Yodoyabashi. Từ đó đi bộ 5 phút.)* |
| Đại | <ruby>所要時間<rt>しょようじかん</rt></ruby>はどれくらいですか？<br>*(Mất khoảng bao lâu ạ?)* |
| Staff | <ruby>電車<rt>でんしゃ</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby>くらい。<ruby>料金<rt>りょうきん</rt></ruby>は<ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Tàu khoảng 15 phút. Giá 240 yên.)* |
| Đại | ありがとうございます。<ruby>地図<rt>ちず</rt></ruby>もいただけますか？<br>*(Cảm ơn anh. Em xin bản đồ được không ạ?)* |
| Staff | （<ruby>地図<rt>ちず</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）これどうぞ。<br>*(Đưa bản đồ. Đây.)* |
| Đại | <ruby>助<rt>たす</rt></ruby>かりました。ありがとうございました。<br>*(Đỡ quá. Em cảm ơn nhiều ạ.)* |

---

## Tình huống 9 — Phòng chung ký túc · 22:00, John khoe đỗ N4

| Vai | Lời thoại |
|---|---|
| John | Hey ダイ！<ruby>俺<rt>おれ</rt></ruby>もN4<ruby>受<rt>う</rt></ruby>かったぞ！<br>*(Hey Đại! Mình cũng đỗ N4!)* |
| Đại | おお、おめでとう、ジョン！<ruby>何点<rt>なんてん</rt></ruby>だった？<br>*(Ồ chúc mừng John! Mấy điểm?)* |
| John | <ruby>105<rt>ひゃくご</rt></ruby><ruby>点<rt>てん</rt></ruby>。ギリギリ。<br>*(105 điểm. Sát mép.)* |
| Đại | ギリギリでも<ruby>合格<rt>ごうかく</rt></ruby>は<ruby>合格<rt>ごうかく</rt></ruby>だ。<ruby>俺<rt>おれ</rt></ruby>もN3ギリギリだったよ。<br>*(Sát mép vẫn là đỗ. Mình N3 cũng sát mép thôi.)* |
| John | <ruby>次<rt>つぎ</rt></ruby>はN3<ruby>狙<rt>ねら</rt></ruby>う。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けるわ。<br>*(Tiếp theo nhắm N3. Tháng 12 thi.)* |
| Đại | (English+JP) <ruby>俺<rt>おれ</rt></ruby> can help you with grammar. Study group<ruby>入<rt>はい</rt></ruby>る？<br>*(Mình giúp ngữ pháp được. Vào study group không?)* |
| John | <ruby>俺<rt>おれ</rt></ruby>レベル<ruby>違<rt>ちが</rt></ruby>うやろ？<br>*(Mình khác trình mà?)* |
| Đại | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>土曜日<rt>どようび</rt></ruby>は<ruby>会話<rt>かいわ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>だから、N4でも<ruby>参加<rt>さんか</rt></ruby>できる。<br>*(Không sao. Thứ 7 là luyện hội thoại, N4 cũng tham gia được.)* |
| John | サンキュー！じゃあ<ruby>土曜<rt>どよう</rt></ruby><ruby>頼<rt>たの</rt></ruby>むわ。<br>*(Thank you! Vậy thứ 7 nhờ nhé.)* |

---

## Tình huống 10 — LINE bố mẹ · 22:30, báo tin đỗ N3 và thăng cấp baito

*Cảnh đối thoại tiếng Việt — Đại gọi video về VN.*

| Vai | Lời thoại |
|---|---|
| Đại | (VN) Alô bố! Có 2 tin vui báo bố mẹ. |
| Bố | (VN) Sao thế con? |
| Đại | (VN) Một, con đỗ N3 rồi. Hai, sếp baito cho con lên senior, lương tăng. |
| Bố | (VN) Ôi giỏi quá! Mẹ ơi, Đại đỗ N3 với lên senior rồi! |
| Mẹ | (VN, từ xa) Thật á? Mẹ mừng quá! Điểm N3 bao nhiêu con? |
| Đại | (VN) 132 mẹ ạ, đỗ vừa đủ. Nghe yếu. |
| Mẹ | (VN) Sát mép cũng đỗ. Con tự đi baito tự nuôi sống được, bố mẹ tự hào lắm. |
| Đại | (VN) Tháng 7 con thi N2, tháng 11 thi EJU lần đầu. Mock EJU lần 1 con được 480, thiếu 60 so với mức đỗ Osaka đại học. |
| Bố | (VN) Còn 6 tháng cố nhé. Con không cần lo tiền. Bố mẹ vẫn gửi đều. |
| Đại | (VN) Vâng. Mà tháng 8 bố mẹ sang con dẫn đi Osaka-Kyoto-Nara nhé. |
| Mẹ | (VN) Mẹ háo hức lắm. Mẹ chuẩn bị quà cho cô Yumi rồi. |
| Đại | (VN) Vâng. Con đi ngủ đây, mai 6h dậy ôn EJU. |
| Bố | (VN) Ừ, đi ngủ đi. Cố lên con. |

---

## Đọng lại chương 2

Tháng 5/2025, Đại nhận tin đỗ N3 sát mép (132/180) và chính thức bước vào lộ trình kép N2 + EJU. Anh học các mẫu báo cáo trang trọng với cô Yamada: **「報告があります」「合格しました」**, hỏi cấu trúc EJU với **「〜というのは何ですか」**, mua sách ở Junkudo dùng **「ちょっとお伺いしてもいいですか」**, phản hồi điểm Mock 480/800 (thiếu 60) bằng cách hỏi **「どうやって勉強すればいいですか」**. Sếp Suzuki ở Lawson đề bạt senior, tăng lương 1100→1200 yên/giờ, giao thêm vai trò mentor — Đại đáp **「精一杯務めさせていただきます」**. Cuối ngày gọi bố mẹ báo tin bằng tiếng Việt, ôn lại các con số và mốc thi trong năm.

> Từ vựng & mẫu câu chương này: 報告があります・合格・ギリギリ・聴解・EJU・日本留学試験・記述・読解・聴読解・総合科目・文系・理系・コース1・合格ライン・志望校・経済学部・大阪大学・〜というのは何ですか・ちょっとお伺いしてもいいですか・お願いします・税込み・落ち込まないで・努力すれば必ず結果が出る・シニアスタッフ・昇格・時給・新人研修・メンター・精一杯務めさせていただきます・地下鉄・所要時間・JASSO

## Bí quyết chương

- **「報告があります」** — câu mở đầu chuẩn khi vào báo tin với thầy cô hoặc sếp.
- **「〜というのは何ですか」** — khi gặp từ chuyên môn lạ trên lớp, đừng đoán, hỏi luôn.
- **「ちょっとお伺いしてもいいですか」** — keigo "tôi xin hỏi một chút được không" — dùng với người lạ ở quầy.
- **「精一杯務めさせていただきます」** — câu chuẩn khi nhận trách nhiệm mới, hạ mình + sử dụng させていただく.
- **Mock EJU 480 thiếu 60** — chỉ ra môn tổng hợp là điểm yếu, kế hoạch khắc phục cụ thể: đọc báo + xem NHK mỗi sáng.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 報告 | ほうこく | BÁO CÁO | Báo cáo |
| 結果 | けっか | KẾT QUẢ | Kết quả |
| 発表 | はっぴょう | PHÁT BIỂU | Công bố |
| 総合 | そうごう | TỔNG HỢP | Tổng / tổng hợp |
| 習慣 | しゅうかん | TẬP QUÁN | Thói quen |
| 日本留学試験 | にほんりゅうがくしけん | NHẬT BẢN LƯU HỌC THÍ NGHIỆM | Kỳ thi du học Nhật (EJU) |
| 科目 | かもく | KHOA MỤC | Môn học |
| 満点 | まんてん | MÃN ĐIỂM | Điểm tối đa |
| 記述 | きじゅつ | KÝ THUẬT | Phần viết luận |
| 聴読解 | ちょうどっかい | THÍNH ĐỘC GIẢI | Nghe-đọc hiểu |
| 音声 | おんせい | ÂM THANH | Âm thanh |
| 形式 | けいしき | HÌNH THỨC | Hình thức |
| 政治 | せいじ | CHÍNH TRỊ | Chính trị |
| 経済 | けいざい | KINH TẾ | Kinh tế |
| 歴史 | れきし | LỊCH SỬ | Lịch sử |
| 地理 | ちり | ĐỊA LÝ | Địa lý |
| 文系 | ぶんけい | VĂN HỆ | Khối Văn |
| 数学 | すうがく | SỐ HỌC | Toán học |
| 合格ライン | ごうかくライン | HỢP CÁCH | Mức điểm đỗ |
| 対策本 | たいさくほん | ĐỐI SÁCH BẢN | Sách ôn |
| 案内 | あんない | ÁN NỘI | Hướng dẫn |
| 過去問 | かこもん | QUÁ KHỨ VẤN | Đề thi cũ |
| 用語集 | ようごしゅう | DỤNG NGỮ TẬP | Từ điển thuật ngữ |
| 税込み | ぜいこみ | THUẾ | Đã gồm thuế |
| 内訳 | うちわけ | NỘI DỊCH | Chi tiết |
| 受験 | じゅけん | THỤ NGHIỆM | Dự thi |
| 集中的 | しゅうちゅうてき | TẬP TRUNG ĐÍCH | Tập trung |
| 強化 | きょうか | CƯỜNG HÓA | Tăng cường |
| 政治面 | せいじめん | CHÍNH TRỊ DIỆN | Trang chính trị |
| 努力 | どりょく | NỖ LỰC | Nỗ lực |
| 確率 | かくりつ | XÁC SUẤT | Xác suất |
| 立場 | たちば | LẬP TRƯỜNG | Vị trí / vai trò |
| 苦手 | にがて | KHỔ THỦ | Yếu / kém |
| 得意 | とくい | ĐẮC Ý | Giỏi / sở trường |
| 昇格 | しょうかく | THĂNG CÁCH | Thăng cấp |
| 本社 | ほんしゃ | BẢN XÃ | Công ty mẹ |
| シニアスタッフ | — | — | Nhân viên cấp cao |
| 時給 | じきゅう | THỜI CẤP | Lương giờ |
| 新人研修 | しんじんけんしゅう | TÂN NHÂN NGHIÊN TU | Đào tạo người mới |
| メンター | — | — | Mentor / người kèm |
| 精一杯 | せいいっぱい | TINH NHẤT BÔI | Hết sức |
| 地下鉄 | ちかてつ | ĐỊA HẠ THIẾT | Tàu điện ngầm |
| 御堂筋線 | みどうすじせん | NGỰ ĐƯỜNG CÂN TUYẾN | Tuyến Midosuji |
| 所要時間 | しょようじかん | SỞ YẾU THỜI GIAN | Thời gian cần |
| 料金 | りょうきん | LIỆU KIM | Phí |
| 事務所 | じむしょ | SỰ VỤ SỞ | Văn phòng |
| 支援機構 | しえんきこう | CHI VIỆN CƠ CẤU | Tổ chức hỗ trợ |', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000003, 800000020, NULL, 'markdown_book', 'T3. Baito Lawson thành thạo — Mentor cho đàn em (バイト上級)', '# Sách du học sinh năm 2 · T3. Baito Lawson thành thạo — Mentor cho đàn em (バイト上級)

> **Mục tiêu nhân vật:** Đại (20 tuổi, 6/2025), senior staff Lawson sau 10 tháng. Học các mẫu hội thoại tiếng Nhật của vai mentor: bàn giao 6 câu chào (6つの基本挨拶), giải thích quy trình POS bằng JP cho đàn em, xử lý khách mua thuốc lá hỏi tuổi (20歳以上確認), xử lý khách giận khi sản phẩm hết hàng, xin sếp cho đàn em ca dễ, và keigo khi giới thiệu Hùng với toàn ekip.

---

## Bối cảnh

Tháng 6 năm 2025. Đại đã thành senior staff Lawson Tennoji, lương 1200 yên/giờ. Hùng (em VN cùng trường Kansai Gogo Gakuin, vừa đỗ N4) được Đại giới thiệu vào Lawson. Đại được sếp Suzuki giao vai trò mentor — train Hùng từ đầu. Chương này tập trung các mẫu câu **tiếng Nhật trong cửa hàng tiện lợi**: chào khách, vận hành POS, kiểm tra tuổi, xử lý khiếu nại, đào tạo người mới.

---

## Tình huống 1 — Phòng nghỉ Lawson · 17:30, sếp Suzuki giao Đại làm mentor cho Hùng

*Hùng (19 tuổi, vào Nhật được 6 tháng) đến đăng ký ca. Sếp Suzuki gọi Đại vào.*

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイ<ruby>君<rt>くん</rt></ruby>、こちらフン<ruby>君<rt>くん</rt></ruby>。<ruby>今日<rt>きょう</rt></ruby>から<ruby>新人<rt>しんじん</rt></ruby>や。<br>*(Đại, đây là Hùng. Từ hôm nay là người mới.)* |
| Hùng | はじめまして、フンと<ruby>申<rt>もう</rt></ruby>します。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lần đầu gặp, em là Hùng. Mong anh chỉ bảo ạ.)* |
| Đại | フン<ruby>君<rt>くん</rt></ruby>、よろしく！<ruby>俺<rt>おれ</rt></ruby>はダイ。<ruby>同<rt>おな</rt></ruby>じ<ruby>関西<rt>かんさい</rt></ruby><ruby>語学<rt>ごがく</rt></ruby><ruby>学院<rt>がくいん</rt></ruby>やんな？<br>*(Hùng, chào em! Anh là Đại. Cùng trường Kansai Gogo Gakuin phải không?)* |
| Hùng | はい、<ruby>4<rt>よん</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>りました。<br>*(Vâng, em vào tháng 4.)* |
| Suzuki | <ruby>知<rt>し</rt></ruby>り<ruby>合<rt>あ</rt></ruby>いやったら<ruby>好都合<rt>こうつごう</rt></ruby>や。ダイ<ruby>君<rt>くん</rt></ruby>、メンター<ruby>役<rt>やく</rt></ruby><ruby>頼<rt>たの</rt></ruby>むで。<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>は<ruby>2<rt>ふた</rt></ruby><ruby>人<rt>り</rt></ruby><ruby>体制<rt>たいせい</rt></ruby>でな。<br>*(Quen nhau thì tiện quá. Đại, làm mentor giúp anh nhé. Tuần đầu 2 đứa cùng ca.)* |
| Đại | はい、<ruby>分<rt>わ</rt></ruby>かりました。フン<ruby>君<rt>くん</rt></ruby>、まず<ruby>制服<rt>せいふく</rt></ruby><ruby>着<rt>き</rt></ruby>替かえよう。<br>*(Vâng, em hiểu. Hùng, đầu tiên thay đồng phục đã.)* |
| Hùng | (VN, nhỏ) Anh ơi em hồi hộp quá. |
| Đại | (VN) Cứ làm theo anh. Một tuần là quen ngay. |

---

## Tình huống 2 — Khu kho phòng nghỉ · 17:45, Đại dạy Hùng 6 câu chào cơ bản

*Đại đứng cạnh Hùng, cầm tờ giấy in 6 câu chào.*

| Vai | Lời thoại |
|---|---|
| Đại | フン<ruby>君<rt>くん</rt></ruby>、コンビニの<ruby>基本<rt>きほん</rt></ruby><ruby>挨拶<rt>あいさつ</rt></ruby><ruby>6<rt>むっ</rt></ruby>つ、<ruby>覚<rt>おぼ</rt></ruby>えよう。<br>*(Hùng, học 6 câu chào cơ bản ở konbini đi.)* |
| Đại | <ruby>1<rt>いち</rt></ruby>:「いらっしゃいませ！」 <ruby>客<rt>きゃく</rt></ruby><ruby>入<rt>はい</rt></ruby>る<ruby>瞬間<rt>しゅんかん</rt></ruby>。<br>*(1: "Kính chào quý khách!" Khoảnh khắc khách bước vào.)* |
| Đại | <ruby>2<rt>に</rt></ruby>:「ありがとうございました！」 <ruby>客<rt>きゃく</rt></ruby><ruby>出<rt>で</rt></ruby>る<ruby>瞬間<rt>しゅんかん</rt></ruby>。<br>*(2: "Cảm ơn quý khách!" Khoảnh khắc khách rời.)* |
| Đại | <ruby>3<rt>さん</rt></ruby>:「<ruby>少々<rt>しょうしょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。」 <ruby>待<rt>ま</rt></ruby>ってもらうとき。<br>*(3: "Quý khách vui lòng chờ một chút.")* |
| Đại | <ruby>4<rt>よん</rt></ruby>:「<ruby>失礼<rt>しつれい</rt></ruby>いたします。」 <ruby>横<rt>よこ</rt></ruby>を<ruby>通<rt>とお</rt></ruby>るとき。<br>*(4: "Xin phép đi qua.")* |
| Đại | <ruby>5<rt>ご</rt></ruby>:「<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。」 <ruby>謝<rt>あやま</rt></ruby>るとき。<br>*(5: "Em thành thật xin lỗi.")* |
| Đại | <ruby>6<rt>ろく</rt></ruby>:「<ruby>確認<rt>かくにん</rt></ruby>いたします。」 <ruby>確<rt>たし</rt></ruby>かめるとき。<br>*(6: "Em xác nhận lại.")* |
| Đại | じゃ<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>して。<br>*(Giờ lặp lại 3 lần đi.)* |
| Hùng | （<ruby>復唱<rt>ふくしょう</rt></ruby>）いらっしゃいませ！ありがとうございました！...<br>*(Lặp lại.)* |
| Đại | <ruby>声<rt>こえ</rt></ruby>もうちょっと<ruby>大<rt>おお</rt></ruby>きく。お<ruby>腹<rt>なか</rt></ruby>から<ruby>出<rt>だ</rt></ruby>す<ruby>感<rt>かん</rt></ruby>じで。<br>*(To thêm chút. Phát ra từ bụng ấy.)* |
| Hùng | （<ruby>大<rt>おお</rt></ruby>きい<ruby>声<rt>こえ</rt></ruby>）いらっしゃいませ！<br>*(To hơn. Kính chào quý khách!)* |
| Đại | ええやん！<br>*(Tốt đấy!)* |

---

## Tình huống 3 — Quầy thu ngân · 18:15, Đại dạy POS 3 câu then chốt

| Vai | Lời thoại |
|---|---|
| Đại | (VN) POS là máy tính tiền. Quy trình: quét mã vạch → tổng tiền → hỏi cách trả → in hoá đơn. |
| Hùng | (VN) Em ghi nhé. |
| Đại | <ruby>日本語<rt>にほんご</rt></ruby>のキーフレーズは<ruby>3<rt>みっ</rt></ruby>つ:<br>*(Câu Nhật then chốt có 3 câu:)* |
| Đại | A:「<ruby>合計<rt>ごうけい</rt></ruby><ruby>X<rt>エックス</rt></ruby><ruby>円<rt>えん</rt></ruby>です。」 — <ruby>金額<rt>きんがく</rt></ruby><ruby>知<rt>し</rt></ruby>らせる。<br>*(A: "Tổng X yên." Thông báo tổng.)* |
| Đại | B:「お<ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>は？」 — <ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>。<br>*(B: "Quý khách thanh toán bằng gì?")* |
| Đại | C:「レシートをどうぞ。」 — <ruby>渡<rt>わた</rt></ruby>すとき。<br>*(C: "Hoá đơn của quý khách.")* |
| Đại | <ruby>支払<rt>しはら</rt></ruby>い<ruby>5<rt>ご</rt></ruby><ruby>種類<rt>しゅるい</rt></ruby>:<ruby>現金<rt>げんきん</rt></ruby>、PayPay、ICOCA、クレジットカード、d<ruby>払<rt>ばら</rt></ruby>い。<br>*(5 cách trả: tiền mặt, PayPay, ICOCA, thẻ tín dụng, d-Barai.)* |
| Hùng | <ruby>客<rt>きゃく</rt></ruby>が「PayPayで」って<ruby>言<rt>い</rt></ruby>ったら？<br>*(Khách nói "trả PayPay" thì sao?)* |
| Đại | 「<ruby>確認<rt>かくにん</rt></ruby>いたします。」って<ruby>言<rt>い</rt></ruby>って、QRコード<ruby>画面<rt>がめん</rt></ruby><ruby>出<rt>だ</rt></ruby>す。<ruby>客<rt>きゃく</rt></ruby>がスキャンしたら「<ruby>確認<rt>かくにん</rt></ruby>できました」と<ruby>言<rt>い</rt></ruby>う。<br>*(Nói "Em xác nhận", rồi hiện màn QR. Khách quét xong nói "Em xác nhận xong rồi".)* |
| Hùng | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Vâng em hiểu.)* |

---

## Tình huống 4 — Quầy thu ngân · 19:00, Hùng phục vụ khách đầu tiên — Đại đứng cạnh hỗ trợ

| Vai | Lời thoại |
|---|---|
| Customer 1 | （<ruby>入<rt>はい</rt></ruby>る、<ruby>商品<rt>しょうひん</rt></ruby><ruby>持<rt>も</rt></ruby>つ）<br>*(Vào, cầm hàng.)* |
| Hùng | （<ruby>緊張<rt>きんちょう</rt></ruby>、<ruby>声<rt>こえ</rt></ruby><ruby>小<rt>ちい</rt></ruby>さい）い、いらっしゃいませ。<br>*(Căng, tiếng nhỏ. K... kính chào.)* |
| Đại | （<ruby>横<rt>よこ</rt></ruby>から、<ruby>大<rt>おお</rt></ruby>きく）いらっしゃいませ！<br>*(Bên cạnh, to. Kính chào!)* |
| Hùng | （スキャン）<ruby>合計<rt>ごうけい</rt></ruby><ruby>520<rt>ごひゃくにじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。お<ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>は？<br>*(Quét. Tổng 520 yên. Quý khách thanh toán bằng gì?)* |
| Customer 1 | <ruby>現金<rt>げんきん</rt></ruby>で。<br>*(Tiền mặt.)* |
| Hùng | （<ruby>1000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>る）<ruby>1000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりします。<br>*(Nhận 1000 yên. Em nhận 1000 yên.)* |
| Hùng | （おつり<ruby>計算<rt>けいさん</rt></ruby>...<ruby>固<rt>かた</rt></ruby>まる）<br>*(Tính tiền thừa... đứng hình.)* |
| Đại | （<ruby>小声<rt>こごえ</rt></ruby>で）<ruby>480<rt>よんひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>のおつり。<br>*(Thì thầm. Trả lại 480 yên.)* |
| Hùng | おつり<ruby>480<rt>よんひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。レシートをどうぞ。<br>*(Tiền thừa 480 yên. Hoá đơn của quý khách.)* |
| Customer 1 | ありがとう。<br>*(Cảm ơn.)* |
| Hùng | ありがとうございました！<br>*(Em cảm ơn quý khách!)* |
| Customer 1 | （<ruby>出<rt>で</rt></ruby>る）<br>*(Ra.)* |
| Đại | （<ruby>小声<rt>こごえ</rt></ruby>）<ruby>最初<rt>さいしょ</rt></ruby>にしてはええよ！<br>*(Thì thầm. Lần đầu được đấy!)* |
| Hùng | （<ruby>手<rt>て</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えている）<br>*(Tay run.)* |

---

## Tình huống 5 — Quầy thu ngân · 20:00, khách mua thuốc lá — quy trình xác nhận tuổi

*Khách trung niên vào, chỉ vào quầy thuốc lá phía sau.*

| Vai | Lời thoại |
|---|---|
| Customer 2 | マルボロ<ruby>赤<rt>あか</rt></ruby><ruby>1<rt>ひと</rt></ruby>つ。<br>*(Marlboro đỏ 1 bao.)* |
| Hùng | （<ruby>戸惑<rt>とまど</rt></ruby>う）え、えっと...<br>*(Lúng túng. À, ờm...)* |
| Đại | （<ruby>小声<rt>こごえ</rt></ruby>）マルボロ<ruby>赤<rt>あか</rt></ruby>は<ruby>15<rt>じゅうご</rt></ruby><ruby>番<rt>ばん</rt></ruby>。<br>*(Thì thầm. Marlboro đỏ số 15.)* |
| Hùng | （<ruby>15<rt>じゅうご</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>取<rt>と</rt></ruby>る）<br>*(Lấy số 15.)* |
| Đại | （<ruby>小声<rt>こごえ</rt></ruby>）<ruby>年齢確認<rt>ねんれいかくにん</rt></ruby><ruby>忘<rt>わす</rt></ruby>れんで。<br>*(Thì thầm. Đừng quên xác nhận tuổi.)* |
| Hùng | お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>、<ruby>恐<rt>おそ</rt></ruby>れ<ruby>入<rt>い</rt></ruby>ります。<ruby>20<rt>はたち</rt></ruby><ruby>歳<rt>さい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>でしょうか？<br>*(Quý khách, em xin lỗi. Quý khách đã trên 20 tuổi chưa ạ?)* |
| Customer 2 | （<ruby>少<rt>すこ</rt></ruby>し<ruby>苦笑<rt>くしょう</rt></ruby>）<ruby>40<rt>よんじゅう</rt></ruby><ruby>歳<rt>さい</rt></ruby>やで。<br>*(Hơi cười khổ. 40 tuổi rồi.)* |
| Hùng | <ruby>失礼<rt>しつれい</rt></ruby>いたしました。タッチパネルの「<ruby>20<rt>はたち</rt></ruby><ruby>歳<rt>さい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>」を<ruby>押<rt>お</rt></ruby>していただけますか？<br>*(Em xin lỗi. Quý khách vui lòng nhấn nút "Trên 20 tuổi" trên màn hình giúp em ạ.)* |
| Customer 2 | （<ruby>押<rt>お</rt></ruby>す）<br>*(Nhấn.)* |
| Hùng | <ruby>合計<rt>ごうけい</rt></ruby><ruby>580<rt>ごひゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Tổng 580 yên.)* |

---

## Tình huống 6 — Quầy thu ngân · 20:30, khách giận vì sản phẩm hết hàng

*Khách lớn tuổi vào, đi thẳng đến tủ bento — phát hiện hết bento ưa thích, quay ra quầy nét mặt khó chịu.*

| Vai | Lời thoại |
|---|---|
| Customer 3 | （イライラ）<ruby>毎日<rt>まいにち</rt></ruby><ruby>来<rt>く</rt></ruby>るのに<ruby>幕<rt>まく</rt></ruby>の<ruby>内<rt>うち</rt></ruby><ruby>弁当<rt>べんとう</rt></ruby>ないやん！<br>*(Khó chịu. Ngày nào cũng đến mà cơm hộp makunouchi hết rồi à!)* |
| Hùng | （<ruby>固<rt>かた</rt></ruby>まる）<br>*(Đứng hình.)* |
| Đại | （<ruby>前<rt>まえ</rt></ruby>に<ruby>出<rt>で</rt></ruby>る）<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。<ruby>幕<rt>まく</rt></ruby>の<ruby>内<rt>うち</rt></ruby><ruby>弁当<rt>べんとう</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby><ruby>分<rt>ぶん</rt></ruby>が<ruby>完売<rt>かんばい</rt></ruby>しております。<br>*(Tiến lên. Em thành thật xin lỗi. Cơm hộp makunouchi hôm nay đã bán hết ạ.)* |
| Customer 3 | いつ<ruby>入<rt>はい</rt></ruby>る？<br>*(Khi nào có?)* |
| Đại | <ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>入荷<rt>にゅうか</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。お<ruby>取<rt>と</rt></ruby>り<ruby>置<rt>お</rt></ruby>きもできますが、いかがでしょうか？<br>*(Sáng mai 10 giờ sẽ về hàng ạ. Em có thể giữ trước, quý khách thấy sao ạ?)* |
| Customer 3 | じゃあ<ruby>明日<rt>あした</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>取<rt>と</rt></ruby>っといて。<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>来<rt>く</rt></ruby>る。<br>*(Vậy mai giữ 1 hộp. 11 giờ tới lấy.)* |
| Đại | かしこまりました。お<ruby>名前<rt>なまえ</rt></ruby>を<ruby>頂戴<rt>ちょうだい</rt></ruby>してもよろしいでしょうか？<br>*(Vâng ạ. Em xin phép hỏi tên quý khách được không ạ?)* |
| Customer 3 | <ruby>田村<rt>たむら</rt></ruby>。<br>*(Tamura.)* |
| Đại | <ruby>田村<rt>たむら</rt></ruby><ruby>様<rt>さま</rt></ruby>ですね。<ruby>明日<rt>あした</rt></ruby><ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>幕<rt>まく</rt></ruby>の<ruby>内<rt>うち</rt></ruby><ruby>弁当<rt>べんとう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>お<ruby>取<rt>と</rt></ruby>り<ruby>置<rt>お</rt></ruby>きいたします。<br>*(Quý khách Tamura ạ. Em sẽ giữ 1 hộp makunouchi cho quý khách vào 11 giờ mai.)* |
| Customer 3 | （<ruby>機嫌<rt>きげん</rt></ruby><ruby>戻<rt>もど</rt></ruby>る）よろしく。<br>*(Đỡ cáu. Nhờ nhé.)* |
| Đại | ありがとうございました！<br>*(Em cảm ơn quý khách!)* |
| Hùng | （<ruby>小声<rt>こごえ</rt></ruby>）すごい...<br>*(Thì thầm. Bá thật...)* |

---

## Tình huống 7 — Phòng nghỉ · 22:00, sếp Suzuki góp ý Hùng và Đại

| Vai | Lời thoại |
|---|---|
| Suzuki | フン<ruby>君<rt>くん</rt></ruby>、<ruby>初日<rt>しょにち</rt></ruby>お<ruby>疲<rt>つか</rt></ruby>れさん！<br>*(Hùng, ngày đầu vất vả!)* |
| Hùng | はい、ありがとうございます。<br>*(Vâng, em cảm ơn ạ.)* |
| Suzuki | <ruby>正直<rt>しょうじき</rt></ruby><ruby>言<rt>い</rt></ruby>うと、<ruby>声<rt>こえ</rt></ruby>がもうちょい<ruby>大<rt>おお</rt></ruby>きいええで。それと<ruby>笑顔<rt>えがお</rt></ruby>な。<ruby>客<rt>きゃく</rt></ruby>はその<ruby>2<rt>ふた</rt></ruby>つ<ruby>見<rt>み</rt></ruby>てるから。<br>*(Nói thẳng nhé, giọng to thêm chút. Với lại nụ cười. Khách họ nhìn 2 thứ đó.)* |
| Hùng | はい、<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em sẽ cố gắng ạ.)* |
| Suzuki | <ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>もしたら<ruby>慣<rt>な</rt></ruby>れるわ。<ruby>誰<rt>だれ</rt></ruby>でも<ruby>最初<rt>さいしょ</rt></ruby>はそうやで。<ruby>俺<rt>おれ</rt></ruby>も<ruby>20<rt>にじゅう</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>そうやった。<br>*(1 tuần là quen. Ai cũng vậy lúc đầu. Tôi 20 năm trước cũng thế.)* |
| Suzuki | （Đại に）ダイ<ruby>君<rt>くん</rt></ruby>、メンター<ruby>上手<rt>じょうず</rt></ruby>やったで。<ruby>幕<rt>まく</rt></ruby>の<ruby>内<rt>うち</rt></ruby><ruby>件<rt>けん</rt></ruby>の<ruby>対応<rt>たいおう</rt></ruby>も<ruby>完璧<rt>かんぺき</rt></ruby>。<br>*(Đại làm mentor giỏi đấy. Vụ xử lý makunouchi cũng hoàn hảo.)* |
| Đại | ありがとうございます。<ruby>1<rt>いち</rt></ruby><ruby>年前<rt>ねんまえ</rt></ruby>のパク<ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Em cảm ơn anh. Cũng nhờ anh Park sempai 1 năm trước.)* |
| Suzuki | パク<ruby>君<rt>くん</rt></ruby>な、<ruby>韓国<rt>かんこく</rt></ruby><ruby>戻<rt>もど</rt></ruby>って<ruby>就職<rt>しゅうしょく</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってるらしいで。<br>*(Park ấy à, nghe nói về HQ đang xin việc.)* |
| Đại | お<ruby>会<rt>あ</rt></ruby>いしたいですね。<br>*(Em muốn gặp lại ghê ạ.)* |

---

## Tình huống 8 — Trước cửa Lawson · 22:30, Đại + Hùng ăn bento sau ca

*2 anh em ngồi ăn bento ngay trước cửa Lawson, vẫn mặc đồng phục.*

| Vai | Lời thoại |
|---|---|
| Hùng | (VN) Anh ơi, mệt nhưng vui ghê. |
| Đại | (VN) Đúng cảm giác anh 1 năm trước. Hôm đầu tiên anh Park kèm anh, khách Mỹ vào hỏi gì anh đứng hình. |
| Hùng | (VN) Anh Park còn ở đây không? |
| Đại | (VN) Không, về Hàn 2 tháng trước. Tốt nghiệp đại học Kobe xong về luôn. |
| Hùng | (VN) Sang năm anh tốt nghiệp Kansai Gogo Gakuin rồi cũng vào đại học Nhật à? |
| Đại | (VN) Ừ, anh nhắm khoa kinh tế ĐH Osaka. Tháng 2/2026 thi 入試. |
| Hùng | (VN) Em mới ôn N4. Đại học còn xa lắm. |
| Đại | (VN) Em đi từng bước. N4 → N3 → N2 → EJU → 入試. Mỗi bước 6 tháng đến 1 năm. |
| Hùng | (VN) Em tính nhắm Doshisha bên Kyoto. |
| Đại | (VN) Khoa gì? |
| Hùng | (VN) Khoa văn hoá quốc tế. Em mê tiếng Anh với Nhật. |
| Đại | (VN) Hợp đấy. Doshisha tiếng Anh mạnh, lại có chương trình quốc tế. |

---

## Tình huống 9 — Bếp ký túc · 23:30, Rim hỏi về Hùng

| Vai | Lời thoại |
|---|---|
| Rim | (VN) Mới về à? Hôm nay sao? |
| Đại | (VN) Mệt nhưng ổn. Em Hùng cùng trường Kansai Gogo Gakuin, anh mới train ngày đầu. |
| Rim | (VN) Hùng VN à? Mày dạy 6 câu chào chưa? |
| Đại | (VN) Dạy rồi. Em ấy đứng hình lúc tính tiền thừa, may anh nhắc. |
| Rim | (VN) Bình thường mà. Tao hồi đầu còn quên trả tiền thừa luôn. |
| Đại | (VN) Anh Rim, anh ôn N1 sao rồi? |
| Rim | (VN) Tháng 7 thi N1. Mock được 90/180. Đang lo. |
| Đại | (VN) Còn 2 tháng. Tập trung 文法 + 読解 nhất. Nghe khó kéo nhanh được. |
| Rim | (VN) Ừ. Mày khôn ra rồi đấy. Hồi mới sang còn ngơ ngơ. |
| Đại | (VN, cười) 18 tháng ở Nhật đủ làm cho người ta ngấm. |

---

## Tình huống 10 — Lawson · 19:00 thứ 7 tuần sau, Hùng tiến bộ rõ rệt

*1 tuần sau. Đại đứng quan sát Hùng làm một mình. Khách Nhật trẻ vào.*

| Vai | Lời thoại |
|---|---|
| Customer 4 | （<ruby>入<rt>はい</rt></ruby>る）<br>*(Vào.)* |
| Hùng | （<ruby>大<rt>おお</rt></ruby>きく、<ruby>笑顔<rt>えがお</rt></ruby>で）いらっしゃいませ！<br>*(To, tươi cười. Kính chào quý khách!)* |
| Customer 4 | （おにぎり<ruby>2<rt>ふた</rt></ruby>つ＋お<ruby>茶<rt>ちゃ</rt></ruby>）<br>*(2 onigiri + nước trà.)* |
| Hùng | （スキャン）<ruby>合計<rt>ごうけい</rt></ruby><ruby>380<rt>さんびゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。お<ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>は？<br>*(Quét. Tổng 380 yên. Quý khách thanh toán bằng gì?)* |
| Customer 4 | PayPayで。<br>*(PayPay.)* |
| Hùng | はい、<ruby>確認<rt>かくにん</rt></ruby>いたします。（QR<ruby>表示<rt>ひょうじ</rt></ruby>）<br>*(Vâng, em xác nhận. Hiện QR.)* |
| Customer 4 | （スキャン）<br>*(Quét.)* |
| Hùng | <ruby>確認<rt>かくにん</rt></ruby>できました。レシートをどうぞ。<br>*(Em xác nhận xong. Hoá đơn của quý khách.)* |
| Customer 4 | どうも。<br>*(Cảm ơn.)* |
| Hùng | ありがとうございました！<br>*(Em cảm ơn quý khách!)* |
| Đại | （<ruby>遠<rt>とお</rt></ruby>くから<ruby>親指<rt>おやゆび</rt></ruby><ruby>立<rt>た</rt></ruby>てる）<br>*(Từ xa giơ ngón cái.)* |
| Hùng | （<ruby>少<rt>すこ</rt></ruby>し<ruby>照<rt>て</rt></ruby>れる）<br>*(Hơi ngại.)* |

---

## Tình huống 11 — Phòng Đại · 0:00, Đại nhắn Mai về việc làm mentor

*Cảnh đối thoại tiếng Việt — Đại nhắn LINE cho Mai (bạn gái ở VN, lâu năm).*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE, VN) Mai, ngủ chưa? |
| Mai | (LINE, VN) Chưa. Đang đọc sách. Anh sao thế? |
| Đại | (VN) Hôm nay xong tuần đầu train Hùng. Em ấy quen rồi. Khách Nhật khen tiếng Nhật em ấy thân thiện. |
| Mai | (VN) Anh giỏi. Có cảm giác làm sếp chưa? |
| Đại | (VN) Chưa dám gọi là sếp. Nhưng cảm giác có người dõi theo mình thì lạ. Lần đầu anh thấy mình lớn. |
| Mai | (VN) Em nhớ lần đầu anh kể bị anh Park cứu vụ tiếng Anh. Giờ anh đến lượt cứu Hùng. |
| Đại | (VN) Ừ. Anh Park cứu anh, anh cứu Hùng, sau này Hùng cứu người khác. Vòng tròn. |
| Mai | (VN) Tự hào anh quá. Em cũng ráng học IELTS để sang Nhật. |
| Đại | (VN) Bao giờ em định thi? |
| Mai | (VN) Tháng 9 này. Mục tiêu 6.5. |
| Đại | (VN) Cố lên. 2 năm nữa anh vào đại học là em sang du học cùng anh nhé. |
| Mai | (VN) Ừ, em cố. Anh ngủ đi, 12 giờ đêm rồi. Mai 6h dậy ôn EJU đúng không? |
| Đại | (VN) Vâng. Ngủ ngon Mai. |

---

## Đọng lại chương 3

Tháng 6/2025, Đại nhận vai mentor cho Hùng — đàn em VN vừa vào Lawson Tennoji. Anh bàn giao **6 câu chào cơ bản** (いらっしゃいませ・ありがとうございました・少々お待ちください・失礼いたします・申し訳ございません・確認いたします) và **3 câu POS then chốt** (合計X円です・お支払い方法は・レシートをどうぞ). Học mẫu **「20歳以上でしょうか」** khi bán thuốc lá, và mẫu xử lý khách giận đỉnh cao: **「申し訳ございません」→ giải pháp cụ thể → 「お取り置きいたします」→ お名前を頂戴してもよろしいでしょうか**. Sếp Suzuki khen mentor giỏi. Cuối tuần Hùng đã tự xử lý khách PayPay trơn tru. Đêm khuya nhắn Mai, Đại nhận ra mình đã thành cái mắt xích "Park → Đại → Hùng" — vòng tuần hoàn của người đi trước dìu người đi sau.

> Từ vựng & mẫu câu chương này: 新人・メンター・基本挨拶・いらっしゃいませ・少々お待ちください・失礼いたします・申し訳ございません・確認いたします・かしこまりました・合計・お支払い方法・レシート・現金・PayPay・ICOCA・クレジットカード・年齢確認・20歳以上・タッチパネル・完売・入荷・お取り置き・お名前を頂戴してもよろしいでしょうか・恐れ入ります・お預かりします・おつり・復唱・笑顔・好都合・2人体制・入試

## Bí quyết chương

- **6 câu chào cơ bản** — học thuộc lòng, đó là 80% tiếng Nhật khách hàng ở konbini cần.
- **「お取り置きいたします」+「お名前を頂戴してもよろしいでしょうか」** — cứu nguy khi sản phẩm hết hàng, giữ khách quay lại mai.
- **「20歳以上でしょうか」** — câu xác nhận tuổi bắt buộc cho thuốc lá, rượu — quên là bị phạt cửa hàng.
- **Vòng tuần hoàn mentor** (Park→Đại→Hùng) — văn hoá kèm cặp ở Nhật, sempai-kouhai là truyền thống đáng giữ.
- **Khen sau ca**, riêng tư trong phòng nghỉ — không khen trước mặt khách hay người mới (làm ngại).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 好都合 | こうつごう | HẢO ĐÔ HỢP | Thuận tiện |
| 体制 | たいせい | THỂ CHẾ | Cơ chế / sắp xếp |
| 制服 | せいふく | CHẾ PHỤC | Đồng phục |
| 基本挨拶 | きほんあいさつ | CƠ BẢN ÁP THỦ | Câu chào cơ bản |
| 瞬間 | しゅんかん | THUẤN GIAN | Khoảnh khắc |
| 少々 | しょうしょう | THIỂU THIỂU | Một chút |
| 失礼 | しつれい | THẤT LỄ | Xin phép |
| 申し訳 | もうしわけ | THÂN DỊCH | Lời xin lỗi |
| 確認 | かくにん | XÁC NHẬN | Xác nhận |
| 復唱 | ふくしょう | PHỤC XƯỚNG | Lặp lại |
| 合計 | ごうけい | HỢP KẾ | Tổng |
| 金額 | きんがく | KIM NGẠCH | Số tiền |
| 支払い方法 | しはらいほうほう | CHI BẤT PHƯƠNG PHÁP | Cách thanh toán |
| レシート | — | — | Hoá đơn |
| 現金 | げんきん | HIỆN KIM | Tiền mặt |
| クレジットカード | — | — | Thẻ tín dụng |
| 画面 | がめん | HỌA DIỆN | Màn hình |
| 緊張 | きんちょう | KHẨN TRƯƠNG | Hồi hộp |
| 預かる | あずかる | DỰ | Nhận giữ |
| 計算 | けいさん | KẾ TOÁN | Tính toán |
| おつり | — | — | Tiền thừa |
| 戸惑う | とまどう | HỘ HOẶC | Lúng túng |
| 年齢確認 | ねんれいかくにん | NIÊN LINH XÁC NHẬN | Xác nhận tuổi |
| 恐れ入ります | おそれいります | KHỦNG NHẬP | Em xin phép (lịch sự) |
| 以上 | いじょう | DĨ THƯỢNG | Trở lên |
| タッチパネル | — | — | Màn hình cảm ứng |
| 弁当 | べんとう | BIỆN ĐƯƠNG | Cơm hộp |
| 完売 | かんばい | HOÀN MẠI | Bán hết |
| 入荷 | にゅうか | NHẬP HÀ | Nhập hàng |
| 取り置き | とりおき | THỦ TRÍ | Giữ trước |
| かしこまりました | — | — | Vâng ạ (kính ngữ) |
| 頂戴 | ちょうだい | ĐỈNH ĐỚI | Xin nhận / xin |
| 機嫌 | きげん | CƠ HIỀM | Tâm trạng |
| 初日 | しょにち | SƠ NHẬT | Ngày đầu |
| 笑顔 | えがお | TIẾU NHAN | Nụ cười |
| 対応 | たいおう | ĐỐI ỨNG | Xử lý |
| 完璧 | かんぺき | HOÀN BÍCH | Hoàn hảo |
| 就職 | しゅうしょく | TỰU CHỨC | Xin việc |
| 表示 | ひょうじ | BIỂU THỊ | Hiển thị |', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000004, 800000020, NULL, 'markdown_book', 'T4. Hướng dẫn viên du lịch cuối tuần (観光バイト)', '# Sách du học sinh năm 2 · T4. Hướng dẫn viên du lịch cuối tuần (観光バイト)

> **Mục tiêu nhân vật:** Đại (20 tuổi, 6-7/2025). Đăng ký baito thứ 2 — hướng dẫn viên qua app "Tomodachi" lương 2500 yên/giờ. Học các mẫu hội thoại tiếng Nhật + tiếng Anh của hướng dẫn viên: phỏng vấn đăng ký app, đặt lịch với khách qua LINE, gọi món ở quầy ăn vặt Dotonbori, mua vé Lâu đài Osaka với tư cách hướng dẫn viên (giá riêng), giải thích văn hoá Nhật cho khách Mỹ, từ chối / nhận tip lịch sự.

---

## Bối cảnh

Tháng 6-7 năm 2025. Đại đã thành senior Lawson nhưng vẫn dư 12 giờ/tuần. Rim sempai giới thiệu app "Tomodachi" — nền tảng kết nối du học sinh thông tiếng Anh với khách du lịch quốc tế ở Osaka. Lương 2500 yên/giờ, cuối tuần dẫn 4 tiếng = 10000 yên. Yêu cầu: phỏng vấn đầu vào + buổi đào tạo 4 tiếng. Chương này tập trung **tiếng Nhật quầy hàng đường phố + giải thích văn hoá** xen kẽ tiếng Anh với khách.

---

## Tình huống 1 — Phòng Đại · 21:00, Rim giới thiệu app Tomodachi

| Vai | Lời thoại |
|---|---|
| Rim | (VN) Đại, muốn baito thứ 2 không? Cuối tuần thôi. |
| Đại | (VN) Lương sao anh? |
| Rim | (VN) 2500 yên/giờ. App tên Tomodachi. Hướng dẫn viên du lịch không chính thức — kiểu local guide. |
| Đại | (VN) 2500 cơ á? Gấp đôi Lawson. Yêu cầu thế nào ạ? |
| Rim | (VN) Phải có N3 trở lên + tiếng Anh giao tiếp. Phỏng vấn online 30 phút. Đào tạo 4 tiếng offline. |
| Đại | (VN) Tiếng Anh em ổn. Kansai Gogo Gakuin dạy tử tế. Mấy chỗ Osaka thường dẫn? |
| Rim | (VN) Dotonbori (ẩm thực), Lâu đài Osaka, đền Shitennoji, Sumiyoshi Taisha, vùng Kuromon ichiba. |
| Đại | (VN) Em đăng ký luôn được không? |
| Rim | (VN) Để tao gửi link giới thiệu. Tao được tiền giới thiệu 3000 yên đấy nhé. |
| Đại | (VN, cười) Được, win-win. |

---

## Tình huống 2 — Phòng Đại · 22:00, đăng ký app Tomodachi

| Vai | Lời thoại |
|---|---|
| App | <ruby>言語<rt>げんご</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでください。<br>*(Chọn ngôn ngữ.)* |
| Đại | <ruby>日本語<rt>にほんご</rt></ruby>・<ruby>英語<rt>えいご</rt></ruby>・ベトナム<ruby>語<rt>ご</rt></ruby> <ruby>3<rt>みっ</rt></ruby>つチェック。<br>*(Tick 3 ngôn ngữ.)* |
| App | <ruby>得意<rt>とくい</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>選<rt>えら</rt></ruby>んでください:<ruby>食事<rt>しょくじ</rt></ruby>、<ruby>歴史<rt>れきし</rt></ruby>、<ruby>買<rt>か</rt></ruby>い<ruby>物<rt>もの</rt></ruby>、<ruby>夜景<rt>やけい</rt></ruby>、アニメ。<br>*(Chọn sở trường: ẩm thực, lịch sử, mua sắm, ngắm đêm, anime.)* |
| Đại | <ruby>食事<rt>しょくじ</rt></ruby>＋<ruby>買<rt>か</rt></ruby>い<ruby>物<rt>もの</rt></ruby>。<br>*(Ẩm thực + mua sắm.)* |
| App | <ruby>自己<rt>じこ</rt></ruby>PRを<ruby>200<rt>にひゃく</rt></ruby><ruby>字<rt>じ</rt></ruby><ruby>以内<rt>いない</rt></ruby>で<ruby>記入<rt>きにゅう</rt></ruby>してください。<br>*(Viết PR bản thân trong 200 chữ.)* |
| Đại | (viết) <ruby>ベトナム<rt>ベトナム</rt></ruby><ruby>出身<rt>しゅっしん</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>年目<rt>ねんめ</rt></ruby>の<ruby>留学生<rt>りゅうがくせい</rt></ruby>です。<ruby>道頓堀<rt>どうとんぼり</rt></ruby>の<ruby>食<rt>た</rt></ruby>べ<ruby>歩<rt>ある</rt></ruby>きと<ruby>黒門市場<rt>くろもんいちば</rt></ruby>の<ruby>買<rt>か</rt></ruby>い<ruby>物<rt>もの</rt></ruby>が<ruby>得意<rt>とくい</rt></ruby>です。<ruby>英語<rt>えいご</rt></ruby>でも<ruby>日本語<rt>にほんご</rt></ruby>でもガイドできます。<br>*(Em là du học sinh năm 2 ở Osaka từ VN. Sở trường là ăn vặt Dotonbori và mua sắm chợ Kuromon. Có thể hướng dẫn cả tiếng Anh lẫn Nhật.)* |
| App | <ruby>面接<rt>めんせつ</rt></ruby>は<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>以内<rt>いない</rt></ruby>にメールでご<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Phỏng vấn sẽ liên hệ qua email trong 3 ngày.)* |

---

## Tình huống 3 — Phòng Đại · 14:00 thứ 7, phỏng vấn Zoom với nhân viên Tomodachi

| Vai | Lời thoại |
|---|---|
| Tanaka (HR) | はじめまして、<ruby>採用担当<rt>さいようたんとう</rt></ruby>の<ruby>田中<rt>たなか</rt></ruby>です。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lần đầu gặp, tôi là Tanaka, phụ trách tuyển dụng. Rất vui được làm việc.)* |
| Đại | はじめまして、ダイです。よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lần đầu gặp, em là Đại. Mong anh chỉ bảo ạ.)* |
| Tanaka | まず<ruby>志望動機<rt>しぼうどうき</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えてください。<br>*(Trước hết hãy cho biết lý do ứng tuyển.)* |
| Đại | <ruby>2<rt>に</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>大阪<rt>おおさか</rt></ruby>に<ruby>住<rt>す</rt></ruby>んでいて、この<ruby>町<rt>まち</rt></ruby>が<ruby>大好<rt>だいす</rt></ruby>きになりました。<ruby>海外<rt>かいがい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>に<ruby>大阪<rt>おおさか</rt></ruby>の<ruby>魅力<rt>みりょく</rt></ruby>を<ruby>伝<rt>つた</rt></ruby>えたいです。<br>*(Em sống Osaka 2 năm, em đã rất yêu thành phố này. Em muốn truyền tải sức hút Osaka đến khách nước ngoài.)* |
| Tanaka | <ruby>英語<rt>えいご</rt></ruby>のレベルはどうですか？<br>*(Trình độ tiếng Anh thế nào?)* |
| Đại | (English) I can hold a daily conversation. I''ve practiced English for 6 years in Vietnam and use it at my convenience store job sometimes. |
| Tanaka | （<ruby>頷<rt>うなず</rt></ruby>く）<ruby>十分<rt>じゅうぶん</rt></ruby>ですね。<ruby>最後<rt>さいご</rt></ruby>の<ruby>質問<rt>しつもん</rt></ruby>です。<ruby>客<rt>きゃく</rt></ruby>が<ruby>体調<rt>たいちょう</rt></ruby><ruby>不良<rt>ふりょう</rt></ruby>を<ruby>訴<rt>うった</rt></ruby>えたらどうしますか？<br>*(Gật. Đủ rồi. Câu hỏi cuối. Nếu khách kêu mệt thì em xử lý sao?)* |
| Đại | まずツアーを<ruby>中断<rt>ちゅうだん</rt></ruby>します。<ruby>近<rt>ちか</rt></ruby>くのカフェか<ruby>休憩所<rt>きゅうけいじょ</rt></ruby>に<ruby>移動<rt>いどう</rt></ruby>します。<ruby>症状<rt>しょうじょう</rt></ruby>が<ruby>重<rt>おも</rt></ruby>ければ<ruby>119<rt>いちいちきゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>と<ruby>運営<rt>うんえい</rt></ruby><ruby>事務局<rt>じむきょく</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Em tạm dừng tour trước. Di chuyển đến quán cà phê hoặc chỗ nghỉ gần nhất. Nếu triệu chứng nặng thì gọi 119 và văn phòng vận hành.)* |
| Tanaka | <ruby>素晴<rt>すば</rt></ruby>らしい<ruby>回答<rt>かいとう</rt></ruby>です。<ruby>合格<rt>ごうかく</rt></ruby>です。<ruby>来週<rt>らいしゅう</rt></ruby><ruby>土曜日<rt>どようび</rt></ruby>に<ruby>研修<rt>けんしゅう</rt></ruby>に<ruby>来<rt>き</rt></ruby>てください。<br>*(Câu trả lời tuyệt vời. Em đã đỗ. Thứ 7 tuần sau đến buổi đào tạo.)* |
| Đại | ありがとうございます！<br>*(Em cảm ơn ạ!)* |

---

## Tình huống 4 — Văn phòng Tomodachi Namba · 10:00 thứ 7, buổi đào tạo 3 nguyên tắc

*Đại ngồi trong phòng đào tạo với 8 hướng dẫn viên mới.*

| Vai | Lời thoại |
|---|---|
| Trainer | <ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>の<ruby>研修<rt>けんしゅう</rt></ruby>です。まずガイドの<ruby>3<rt>さん</rt></ruby><ruby>原則<rt>げんそく</rt></ruby>を<ruby>覚<rt>おぼ</rt></ruby>えてください。<br>*(Hôm nay đào tạo 4 tiếng. Trước hết nhớ 3 nguyên tắc của hướng dẫn viên.)* |
| Trainer | <ruby>1<rt>いち</rt></ruby>:お<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>の<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>。<ruby>2<rt>に</rt></ruby>:<ruby>時間<rt>じかん</rt></ruby><ruby>厳守<rt>げんしゅ</rt></ruby>。<ruby>3<rt>さん</rt></ruby>:<ruby>誠実<rt>せいじつ</rt></ruby>な<ruby>応対<rt>おうたい</rt></ruby>。<br>*(1: An toàn của khách là số 1. 2: Tuyệt đối đúng giờ. 3: Tiếp đãi chân thành.)* |
| Đại | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）<ruby>質問<rt>しつもん</rt></ruby>があります。<ruby>道<rt>みち</rt></ruby>で<ruby>迷子<rt>まいご</rt></ruby>になったらどう<ruby>連絡<rt>れんらく</rt></ruby>しますか？<br>*(Giơ tay. Em có câu hỏi. Bị lạc trên đường thì liên hệ thế nào ạ?)* |
| Trainer | アプリ<ruby>内<rt>ない</rt></ruby>にSOSボタンがあります。<ruby>押<rt>お</rt></ruby>すと<ruby>位置情報<rt>いちじょうほう</rt></ruby>とともに<ruby>事務局<rt>じむきょく</rt></ruby>に<ruby>連絡<rt>れんらく</rt></ruby>が<ruby>行<rt>い</rt></ruby>きます。<br>*(Trong app có nút SOS. Nhấn là vị trí được gửi đến văn phòng vận hành.)* |
| Trainer | <ruby>料金<rt>りょうきん</rt></ruby><ruby>体系<rt>たいけい</rt></ruby>:<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>(<ruby>客<rt>きゃく</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>)。<ruby>君<rt>きみ</rt></ruby>たちが<ruby>受<rt>う</rt></ruby>け<ruby>取<rt>と</rt></ruby>るのは<ruby>2500<rt>にせんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>×<ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>＝<ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。アプリ<ruby>手数料<rt>てすうりょう</rt></ruby>は<ruby>客<rt>きゃく</rt></ruby><ruby>側<rt>がわ</rt></ruby><ruby>負担<rt>ふたん</rt></ruby>。<br>*(Giá tiền: 4 tiếng 1 vạn yên (khách trả). Các em nhận 2500×4=10000 yên. Phí app do khách trả.)* |
| Đại | （メモを<ruby>取<rt>と</rt></ruby>る）<br>*(Ghi chép.)* |

---

## Tình huống 5 — LINE app · thứ 4, nhận đặt chỗ đầu tiên + chốt lịch với khách Mỹ

*1 tuần sau đào tạo. App thông báo có booking mới.*

| Vai | Lời thoại |
|---|---|
| App | <ruby>新<rt>しん</rt></ruby><ruby>予約<rt>よやく</rt></ruby>:アメリカからのお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby><ruby>夫婦<rt>ふうふ</rt></ruby>(<ruby>60<rt>ろくじゅう</rt></ruby><ruby>代<rt>だい</rt></ruby>)、<ruby>土曜日<rt>どようび</rt></ruby><ruby>10<rt>じゅう</rt></ruby>〜<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>道頓堀<rt>どうとんぼり</rt></ruby><ruby>食<rt>た</rt></ruby>べ<ruby>歩<rt>ある</rt></ruby>き＋<ruby>大阪城<rt>おおさかじょう</rt></ruby>。<br>*(Đặt mới: vợ chồng khách Mỹ 60 tuổi, T7 10-14h, ăn vặt Dotonbori + Lâu đài Osaka.)* |
| Đại | （<ruby>受<rt>う</rt></ruby>ける）<br>*(Nhận.)* |
| Đại | (LINE, EN) Hi! I''m Dai, your guide for Saturday. Looking forward to meeting you. Shall we meet at 10am at Dotonbori Glico sign? |
| Mark | (LINE, EN) Hi Dai! Perfect spot. We''re staying at Cross Hotel Namba, easy walk. |
| Đại | (LINE, EN) Great! One question — any food allergies or restrictions I should know? |
| Mark | (LINE, EN) Sarah is allergic to shrimp. Otherwise we eat everything! |
| Đại | (LINE, EN) Got it. I''ll avoid shrimp. Weather forecast says sunny, around 28 degrees. Bring water and a hat please. |
| Mark | (LINE, EN) Will do. See you Saturday! |
| Đại | (LINE, EN) Looking forward to it! |

---

## Tình huống 6 — Biển Glico Dotonbori · 10:00 thứ 7, gặp khách lần đầu

*Đại cầm bảng nhỏ "Mark & Sarah Welcome" đứng dưới biển Glico.*

| Vai | Lời thoại |
|---|---|
| Mark | (EN) You must be Dai! |
| Đại | (EN) Hi! Welcome to Osaka! Mark and Sarah, right? |
| Sarah | (EN) Yes! And you speak English so well! |
| Đại | (EN) Thank you. Born in Hanoi, been studying Japanese in Osaka for 2 years. |
| Mark | (EN) Vietnamese guide in Japan — coolest combination ever! |
| Đại | (EN) Today''s 4-hour plan: takoyaki, okonomiyaki (no shrimp for Sarah), kushikatsu, then Osaka Castle. End around 2pm. Sound good? |
| Sarah | (EN) Perfect! Lead the way! |
| Đại | (EN) One quick thing — please stay close to me in the crowd. Dotonbori gets busy. If we get separated, my LINE number is on this card. |
| Mark | (EN) Smart. Got it. |

---

## Tình huống 7 — Quầy takoyaki Dotonbori · 10:30, gọi món + giải thích văn hoá

*Đại dẫn 2 khách đến quầy takoyaki nổi tiếng "Kukuru".*

| Vai | Lời thoại |
|---|---|
| Đại | (EN) This is Kukuru, one of the top 3 takoyaki shops in Osaka. |
| Stall staff | いらっしゃい！<br>*(Kính chào!)* |
| Đại | すみません、たこ<ruby>焼<rt>や</rt></ruby>き<ruby>2<rt>に</rt></ruby><ruby>人前<rt>にんまえ</rt></ruby><ruby>下<rt>くだ</rt></ruby>さい。ソースは<ruby>普通<rt>ふつう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho 2 phần takoyaki ạ. Sốt thường giúp em ạ.)* |
| Stall | <ruby>1500<rt>せんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(1500 yên.)* |
| Đại | (EN, quay sang) About 10 dollars. Want to try paying with cash? |
| Mark | (EN, đưa 2000 yên) Here. |
| Đại | <ruby>2000<rt>にせん</rt></ruby><ruby>円<rt>えん</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりします。<br>*(Em đưa 2000 yên giúp ạ.)* |
| Stall | （<ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>返<rt>かえ</rt></ruby>す）<br>*(Trả 500 yên.)* |
| Đại | (EN, đưa lại Mark) Here''s your 500 yen change. |
| Đại | (EN) Takoyaki — octopus balls in batter, with bonito flakes that move from the heat. Watch! See how they "dance"? |
| Sarah | (EN) Oh my god, they''re moving! |
| Đại | (EN) Bonito flakes are super thin, they move from the steam. Careful — inside is very hot, lava temperature. Bite small. |
| Mark | (ăn, bỏng) Aah! Hot! |
| Đại | (EN, cười) I warned you! Let it cool 30 seconds first. |
| Sarah | (ăn) Mmm! So good! |

---

## Tình huống 8 — Quầy okonomiyaki Mizuno · 11:30, dặn không tôm

| Vai | Lời thoại |
|---|---|
| Đại | (EN) Next stop — Mizuno, the original okonomiyaki place from 1945. |
| Mizuno staff | いらっしゃいませ！<ruby>3<rt>さん</rt></ruby><ruby>名様<rt>めいさま</rt></ruby>ですか？<br>*(Kính chào! Bàn 3 khách phải không ạ?)* |
| Đại | はい。<ruby>豚<rt>ぶた</rt></ruby><ruby>玉<rt>たま</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>枚<rt>まい</rt></ruby>、それから<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>は<ruby>絶対<rt>ぜったい</rt></ruby><ruby>海老<rt>えび</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>きでお<ruby>願<rt>ねが</rt></ruby>いします。アレルギーです。<br>*(Vâng. Cho 2 cái butatama, một cái tuyệt đối không có tôm ạ. Dị ứng.)* |
| Mizuno staff | <ruby>確認<rt>かくにん</rt></ruby>いたします。<ruby>豚<rt>ぶた</rt></ruby><ruby>玉<rt>たま</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>は<ruby>海老<rt>えび</rt></ruby><ruby>抜<rt>ぬ</rt></ruby>き、もう<ruby>1<rt>いち</rt></ruby><ruby>枚<rt>まい</rt></ruby>は<ruby>通常<rt>つうじょう</rt></ruby>ですね。<br>*(Em xin xác nhận. 1 butatama không tôm, 1 cái bình thường ạ.)* |
| Đại | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>調理<rt>ちょうり</rt></ruby><ruby>器具<rt>きぐ</rt></ruby>も<ruby>別<rt>べつ</rt></ruby>にしていただけますか？<br>*(Vâng nhờ ạ. Dụng cụ chế biến cũng tách riêng giúp em được không ạ?)* |
| Mizuno staff | かしこまりました。<br>*(Vâng ạ.)* |
| Đại | (EN, quay sang) I asked them to use separate tools for your shrimp-free one. Sushi-grade safety. |
| Sarah | (EN) Wow, thank you! Most places don''t know to do that. |
| Đại | (EN) Cross-contamination is a real issue. I''ve worked at a konbini for a year — food safety is drilled into us. |

---

## Tình huống 9 — Quầy vé Lâu đài Osaka · 12:30, mua vé giá hướng dẫn viên

*Đại dẫn 2 khách đến quầy vé Tenshukaku (tháp chính Lâu đài Osaka).*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>大人<rt>おとな</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby>と、ガイド<ruby>1<rt>いち</rt></ruby><ruby>名<rt>めい</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。これがガイド<ruby>証<rt>しょう</rt></ruby>です。<br>*(2 vé người lớn và 1 vé hướng dẫn viên ạ. Đây là thẻ hướng dẫn viên ạ.)* |
| Counter | （<ruby>確認<rt>かくにん</rt></ruby>）<ruby>大人<rt>おとな</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>1200<rt>せんにひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>、ガイドは<ruby>無料<rt>むりょう</rt></ruby>です。<ruby>合計<rt>ごうけい</rt></ruby><ruby>1200<rt>せんにひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Kiểm tra. 2 vé người lớn 1200 yên, hướng dẫn viên miễn phí. Tổng 1200 yên.)* |
| Đại | (EN, quay sang) About 8 dollars total. Guide ticket is free for me. |
| Mark | (đưa thẻ tín dụng) Card OK? |
| Đại | クレジットカードで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか？<br>*(Thẻ tín dụng được không ạ?)* |
| Counter | はい、こちらにタッチしてください。<br>*(Được, mời quẹt vào đây.)* |
| Đại | (EN) Tap here please. |
| Mark | (quẹt thẻ) Done. |
| Đại | (EN, dẫn vào) The castle was built in 1583 by Toyotomi Hideyoshi, a famous warlord who unified Japan. It was destroyed and rebuilt 3 times. |
| Sarah | (EN) Three times! Wow. |
| Đại | (EN) Last rebuild 1931. Now it''s a museum inside. 8 floors, elevator available. |

---

## Tình huống 10 — Sân lâu đài · 13:30, kết thúc tour + khách đưa tip

*Đại đứng cạnh khu vực ngắm cảnh tầng thượng, cuối tour.*

| Vai | Lời thoại |
|---|---|
| Đại | (EN) That''s the end of our 4-hour tour. Hope you enjoyed Osaka! |
| Sarah | (EN) Best food tour ever! Dai, your English is amazing and your Japanese is so polite. |
| Mark | (EN) Honestly, this beats any tour we took in Tokyo last week. |
| Đại | (EN) That''s the highest compliment! Thank you. |
| Sarah | (lấy phong bì) Dai, a small tip for you. American custom — please accept. |
| Đại | (EN) Oh, thank you, but tips aren''t really expected in Japan. The fee already includes everything. |
| Mark | (EN) We insist. You went above and beyond — the shrimp allergy thing alone earned it. |
| Đại | (EN, cúi đầu) Then I accept with gratitude. Thank you very much. |
| Đại | (mở phong bì sau khi 2 người rời) (VN, tự nhủ) 5000 yên! Trời ơi! |
| Mark | (EN, vẫy tay đi) Bye Dai! We''ll leave you a 5-star review! |
| Đại | (EN+JP) ありがとうございました！Have a wonderful trip back to America! Safe travels! |

---

## Tình huống 11 — Văn phòng vận hành Tomodachi Namba · 14:30, báo cáo kết quả tour

*Theo quy trình, hướng dẫn viên phải báo cáo trực tiếp với điều phối sau mỗi tour.*

| Vai | Lời thoại |
|---|---|
| Đại | お<ruby>疲<rt>つか</rt></ruby>れさまです。ガイドのダイです。<ruby>本日<rt>ほんじつ</rt></ruby>のツアー、<ruby>無事<rt>ぶじ</rt></ruby><ruby>終了<rt>しゅうりょう</rt></ruby>しました。<br>*(Em chào anh chị. Em là hướng dẫn viên Đại. Tour hôm nay đã kết thúc an toàn ạ.)* |
| Coord | お<ruby>疲<rt>つか</rt></ruby>れさま！どうでしたか？<br>*(Vất vả! Sao rồi?)* |
| Đại | お<ruby>客様<rt>きゃくさま</rt></ruby><ruby>大変<rt>たいへん</rt></ruby><ruby>満足<rt>まんぞく</rt></ruby>されていました。<ruby>奥様<rt>おくさま</rt></ruby>が<ruby>海老<rt>えび</rt></ruby>アレルギーだったので、お<ruby>好<rt>この</rt></ruby>み<ruby>焼<rt>や</rt></ruby>き<ruby>店<rt>てん</rt></ruby>で<ruby>調理<rt>ちょうり</rt></ruby><ruby>器具<rt>きぐ</rt></ruby><ruby>分<rt>わ</rt></ruby>けの<ruby>対応<rt>たいおう</rt></ruby>を<ruby>頼<rt>たの</rt></ruby>みました。<br>*(Khách rất hài lòng ạ. Vợ bị dị ứng tôm nên em đã yêu cầu quán okonomiyaki tách dụng cụ riêng.)* |
| Coord | プロ<ruby>意識<rt>いしき</rt></ruby><ruby>高<rt>たか</rt></ruby>いね！<ruby>問題<rt>もんだい</rt></ruby>は？<br>*(Ý thức chuyên nghiệp cao đấy! Có vấn đề gì không?)* |
| Đại | <ruby>特<rt>とく</rt></ruby>にありません。<ruby>道頓堀<rt>どうとんぼり</rt></ruby>が<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>混<rt>こ</rt></ruby>んでいたので、<ruby>常<rt>つね</rt></ruby>にお<ruby>客様<rt>きゃくさま</rt></ruby>の<ruby>後<rt>うし</rt></ruby>ろを<ruby>確認<rt>かくにん</rt></ruby>しながら<ruby>歩<rt>ある</rt></ruby>きました。<br>*(Không có gì đặc biệt ạ. Dotonbori rất đông nên em vừa đi vừa luôn kiểm tra phía sau khách.)* |
| Coord | チップももらった？<br>*(Có nhận tip không?)* |
| Đại | はい、<ruby>5000<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>頂<rt>いただ</rt></ruby>きました。<ruby>規則<rt>きそく</rt></ruby><ruby>上<rt>じょう</rt></ruby><ruby>申告<rt>しんこく</rt></ruby><ruby>必要<rt>ひつよう</rt></ruby>でしょうか？<br>*(Vâng, em nhận được 5000 yên. Theo quy định em có cần khai báo không ạ?)* |
| Coord | <ruby>君<rt>きみ</rt></ruby>の<ruby>収入<rt>しゅうにゅう</rt></ruby>やで。<ruby>確定申告<rt>かくていしんこく</rt></ruby>のときに<ruby>計上<rt>けいじょう</rt></ruby>するだけ。アプリには<ruby>記録<rt>きろく</rt></ruby>しなくてええ。<br>*(Là thu nhập của em. Chỉ khai khi quyết toán thuế. Không cần ghi vào app.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございました。<br>*(Em hiểu rồi. Cảm ơn anh.)* |

---

## Tình huống 12 — LINE Rim · 18:00, báo cáo kết quả tour đầu

*Cảnh đối thoại tiếng Việt — Đại nhắn Rim sempai cảm ơn vì giới thiệu app.*

| Vai | Lời thoại |
|---|---|
| Đại | (LINE, VN) Anh Rim! Tour đầu xong. 10000 yên + tip 5000 yên = 15000 yên cho 4 tiếng! |
| Rim | (LINE, VN) Khách Mỹ tip hào phóng thật. May ghê. |
| Đại | (VN) Tính ra cuối tuần 1 tour = 60000 yên/tháng + Lawson 70000 = 130000/tháng. Đủ lo lệ phí thi 入試 + sách + bộ vest phỏng vấn. |
| Rim | (VN) Mày nhắm thi mấy trường? |
| Đại | (VN) Nguyện vọng 1 ĐH Osaka khoa kinh tế. NV2 ĐH Kobe. NV3 ĐH Kansai (tư thục) phòng hờ. |
| Rim | (VN) Lệ phí thi 1 trường khoảng 30000-35000 yên. 3 trường là 100000. |
| Đại | (VN) Đúng rồi. Thêm bộ vest 30000, đi lại thi 20000. Tổng 150000. Anh nhắm tích lũy đến tháng 1/2026. |
| Rim | (VN) Sát mép đấy. Mày cố. Mà tour app này mỗi cuối tuần được 1 thôi à? |
| Đại | (VN) Em đăng ký được 2 tour/cuối tuần. T7 sáng + CN sáng. Chiều ôn EJU. |
| Rim | (VN) Cân bằng được không đấy? N2 tháng 7 + EJU tháng 11 + 入試 tháng 2. |
| Đại | (VN) Anh ơi, em ngấm rồi. Năm 2 là năm cường độ cao nhất đời du học. Nếu em không vượt được năm này em không xứng vào Osaka. |
| Rim | (VN) Đỉnh. Mày làm anh phát thèm. |

---

## Đọng lại chương 4

Tháng 6-7/2025, Đại đăng ký baito thứ 2 qua app **Tomodachi** — hướng dẫn viên du lịch 2500 yên/giờ. Anh vượt phỏng vấn với câu trả lời an toàn cho tình huống khách bệnh: **「ツアーを中断 → 休憩所に移動 → 119番と事務局に連絡」**. Trên buổi đào tạo học **3 nguyên tắc**: 安全第一 / 時間厳守 / 誠実な応対. Tour đầu dẫn cặp vợ chồng Mỹ Mark-Sarah 4 tiếng food tour + Lâu đài Osaka — quan trọng nhất là pha xử lý dị ứng tôm: **「絶対海老抜きでお願いします。アレルギーです」** + **「調理器具も別にしていただけますか」**. Khi nhận tip 5000 yên: từ chối lễ phép trước, khách "insist" thì nhận với **「ありがとうございました」+ cúi đầu**. Báo cáo điều phối viên dùng keigo nhẹ. Cuối ngày nhắn Rim chốt lộ trình tài chính cho 入試 tháng 2/2026.

> Từ vựng & mẫu câu chương này: 観光バイト・Tomodachi・登録・得意分野・自己PR・面接・志望動機・体調不良・119番・事務局・SOS・3原則・安全第一・時間厳守・誠実な応対・予約・夫婦・絶対海老抜きでお願いします・アレルギー・調理器具を別にする・かしこまりました・大人2名・ガイド証・無料・タッチしてください・チップ・確定申告・計上・お疲れさまです・無事終了・プロ意識・道頓堀・大阪城・豊臣秀吉・天守閣・入試

## Bí quyết chương

- **「アレルギーです」** — câu sống còn với khách quốc tế. Thêm **「調理器具も別にしていただけますか」** để tránh nhiễm chéo — đó là điểm chuyên nghiệp.
- **3 nguyên tắc Tomodachi** (安全・時間・誠実) — copy thẳng từ ngành dịch vụ du lịch Nhật, áp được mọi nghề tiếp khách.
- **Từ chối tip 1 lần rồi nhận** — không nhận ngay (mất lịch sự), không từ chối quá 2 lần (làm khách Mỹ ngại). 1 lần "Oh thank you, not necessary" + 1 lần "Then I accept" là vừa đẹp.
- **Báo cáo sau ca** với điều phối là quy chuẩn ngành dịch vụ Nhật — luôn mở bằng **「お疲れさまです」** + tóm tắt 3 điểm: kết quả + sự cố + đặc biệt.
- **Quản lý tip vs thuế** — tip thuộc thu nhập cá nhân, không qua app, kê khai 確定申告 đầu năm sau.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 観光 | かんこう | QUAN QUANG | Du lịch |
| 言語 | げんご | NGÔN NGỮ | Ngôn ngữ |
| 得意分野 | とくいぶんや | ĐẮC Ý PHÂN DÃ | Lĩnh vực sở trường |
| 食事 | しょくじ | THỰC SỰ | Ăn uống |
| 買い物 | かいもの | MÃI VẬT | Mua sắm |
| 夜景 | やけい | DẠ CẢNH | Cảnh đêm |
| 出身 | しゅっしん | XUẤT THÂN | Quê quán |
| 食べ歩き | たべあるき | THỰC BỘ | Ăn vặt dạo |
| 市場 | いちば | THỊ TRƯỜNG | Chợ |
| 面接 | めんせつ | DIỆN TIẾP | Phỏng vấn |
| 連絡 | れんらく | LIÊN LẠC | Liên lạc |
| 採用担当 | さいようたんとう | THÁI DỤNG ĐẢM ĐƯƠNG | Phụ trách tuyển dụng |
| 志望動機 | しぼうどうき | CHÍ VỌNG ĐỘNG CƠ | Lý do ứng tuyển |
| 魅力 | みりょく | MỴ LỰC | Sức hút |
| 体調不良 | たいちょうふりょう | THỂ ĐIỀU BẤT LƯƠNG | Mệt / không khoẻ |
| 中断 | ちゅうだん | TRUNG ĐOẠN | Tạm dừng |
| 休憩所 | きゅうけいじょ | HƯU KHẾ SỞ | Chỗ nghỉ |
| 症状 | しょうじょう | CHỨNG TRẠNG | Triệu chứng |
| 事務局 | じむきょく | SỰ VỤ CỤC | Văn phòng |
| 研修 | けんしゅう | NGHIÊN TU | Đào tạo |
| 原則 | げんそく | NGUYÊN TẮC | Nguyên tắc |
| 安全 | あんぜん | AN TOÀN | An toàn |
| 厳守 | げんしゅ | NGHIÊM THỦ | Tuyệt đối tuân thủ |
| 誠実 | せいじつ | THÀNH THẬT | Chân thành |
| 応対 | おうたい | ỨNG ĐỐI | Tiếp đãi |
| 位置情報 | いちじょうほう | VỊ TRÍ TÌNH BÁO | Thông tin vị trí |
| 体系 | たいけい | THỂ HỆ | Hệ thống |
| 負担 | ふたん | PHỤ ĐẢM | Gánh / chi trả |
| 手数料 | てすうりょう | THỦ SỐ LIỆU | Phí dịch vụ |
| 予約 | よやく | DỰ ƯỚC | Đặt trước |
| 夫婦 | ふうふ | PHU PHỤ | Vợ chồng |
| アレルギー | — | — | Dị ứng |
| 海老 | えび | HẢI LÃO | Tôm |
| 抜き | ぬき | BẠT | Không có / bỏ |
| 調理器具 | ちょうりきぐ | ĐIỀU LÝ KHÍ CỤ | Dụng cụ chế biến |
| 通常 | つうじょう | THÔNG THƯỜNG | Bình thường |
| ガイド証 | ガイドしょう | CHỨNG | Thẻ hướng dẫn viên |
| チップ | — | — | Tiền tip |
| 確定申告 | かくていしんこく | XÁC ĐỊNH THÂN CÁO | Quyết toán thuế |
| 計上 | けいじょう | KẾ THƯỢNG | Hạch toán |
| 収入 | しゅうにゅう | THU NHẬP | Thu nhập |
| 無事 | ぶじ | VÔ SỰ | An toàn |
| 終了 | しゅうりょう | CHUNG LIỄU | Kết thúc |
| プロ意識 | プロいしき | Ý THỨC | Ý thức chuyên nghiệp |
| 道頓堀 | どうとんぼり | ĐẠO ĐỐN QUẬT | Dotonbori |
| 大阪城 | おおさかじょう | ĐẠI BẢN THÀNH | Lâu đài Osaka |
| 天守閣 | てんしゅかく | THIÊN THỦ CÁC | Tháp chính lâu đài |', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000005, 800000020, NULL, 'markdown_book', 'T5. Cuộc thi hùng biện 5 phút (スピーチ大会)', '# Sách du học sinh tiếng Nhật · T5. Cuộc thi hùng biện 5 phút (スピーチ大会)

> **Mục tiêu nhân vật:** Đại 21 tuổi, 7/2025, năm 2 trường tiếng Kansai Gogo Gakuin. Học các mẫu hội thoại tiếng Nhật của thí sinh hùng biện: (1) đăng ký nguyện vọng `〜に応募させていただきます`, (2) xin góp ý bản thảo `〜について添削をお願いできますか`, (3) hỏi sensei khi chưa hiểu `〜というのは…という意味ですか`, (4) mở/đóng bài phát biểu trang trọng `本日はお時間をいただき〜・ご清聴ありがとうございました`, (5) trả lời Q&A giám khảo `はい、〜について申し上げますと…`, (6) cảm ơn người giúp đỡ sau khi đoạt giải `おかげさまで〜`.

---

## Bối cảnh

Tháng 7/2025. Trường Kansai Gogo Gakuin tổ chức スピーチ大会 thường niên, đề chung "なぜ<ruby>私<rt>わたし</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>学<rt>まな</rt></ruby>ぶのか" — bài 5 phút thuộc lòng. Đại đăng ký, được Yamada-sensei kèm bản thảo, được Tony-Yumi nghe thử ở homestay, bạn cùng phòng Bahra (Mông Cổ) hỗ trợ luyện. Giám khảo: Hiệu trưởng + 2 giáo viên + đại diện Lãnh sự quán Việt Nam. Chương này tập trung các mẫu câu **xin góp ý keigo, mở-đóng speech trang trọng, trả lời Q&A và lời cảm ơn sau giải nhì**.

---

## Tình huống 1 — Lớp 2A · 13:30, Yamada-sensei thông báo cuộc thi

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>来月<rt>らいげつ</rt></ruby>のスピーチ<ruby>大会<rt>たいかい</rt></ruby>の<ruby>応募<rt>おうぼ</rt></ruby>を<ruby>受<rt>う</rt></ruby>け<ruby>付<rt>つ</rt></ruby>けます。テーマは「なぜ<ruby>私<rt>わたし</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>学<rt>まな</rt></ruby>ぶのか」、<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>の<ruby>暗記<rt>あんき</rt></ruby>スピーチです。<br>*(Mọi người, tháng sau có cuộc thi hùng biện. Đề "Tại sao tôi học tiếng Nhật" — bài thuộc lòng 5 phút.)* |
| Yifan | <ruby>賞金<rt>しょうきん</rt></ruby>はありますか?<br>*(Có tiền thưởng không ạ?)* |
| Yamada | はい。<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>位<rt>い</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です。<br>*(Có. Nhất 30 nghìn, nhì 20 nghìn, ba 10 nghìn yên.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>応募<rt>おうぼ</rt></ruby>するにはどうしたらいいですか?<br>*(Cô ơi, em muốn đăng ký thì làm thế nào ạ?)* |
| Yamada | <ruby>原稿<rt>げんこう</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>きを<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。それから<ruby>添削<rt>てんさく</rt></ruby>します。<br>*(Em nộp bản nháp trong tuần sau nhé. Cô sẽ chữa cho.)* |
| Đại | はい、<ruby>応募<rt>おうぼ</rt></ruby>させていただきます。<br>*(Vâng, em xin được đăng ký ạ.)* |
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>の<ruby>個人<rt>こじん</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>はきっと<ruby>強<rt>つよ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>いますよ。<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Trải nghiệm cá nhân của em chắc chắn rất mạnh đấy. Cố gắng nhé.)* |

---

## Tình huống 2 — Phòng ký túc · 22:00, Bahra giúp brainstorm

*Đại ngồi trước bàn, mở vở. Bahra ăn mì cup ngó qua vai.*

| Vai | Lời thoại |
|---|---|
| Bahra | テーマ、<ruby>決<rt>き</rt></ruby>まった?<br>*(Đề chọn xong chưa?)* |
| Đại | まだ。<ruby>理由<rt>りゆう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>すぎて、どれを<ruby>選<rt>えら</rt></ruby>べばいいかわからない。<br>*(Chưa. Lý do quá nhiều, không biết chọn cái nào.)* |
| Bahra | <ruby>一<rt>ひと</rt></ruby>つだけ<ruby>選<rt>えら</rt></ruby>んだら? <ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>って<ruby>意外<rt>いがい</rt></ruby>と<ruby>短<rt>みじか</rt></ruby>いよ。<br>*(Chọn một thôi đi? 5 phút ngắn bất ngờ đấy.)* |
| Đại | <ruby>10<rt>じゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、ドラえもんを<ruby>読<rt>よ</rt></ruby>んだのが<ruby>始<rt>はじ</rt></ruby>まりだったんだ。<br>*(10 tuổi đọc Doraemon là khởi đầu của tớ.)* |
| Bahra | それ、いいじゃん! <ruby>具体的<rt>ぐたいてき</rt></ruby>で<ruby>感情<rt>かんじょう</rt></ruby>がこもる。<br>*(Hay đấy! Cụ thể và có cảm xúc.)* |
| Đại | ドラえもん → ジブリ → <ruby>父<rt>ちち</rt></ruby>の<ruby>夢<rt>ゆめ</rt></ruby> → ドンズー<ruby>学校<rt>がっこう</rt></ruby> → <ruby>大阪大学<rt>おおさかだいがく</rt></ruby>。この<ruby>順番<rt>じゅんばん</rt></ruby>でどう?<br>*(Doraemon → Ghibli → ước mơ của bố → trường Đông Du → ĐH Osaka. Thứ tự này thế nào?)* |
| Bahra | <ruby>完璧<rt>かんぺき</rt></ruby>。<ruby>感情<rt>かんじょう</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めて<ruby>書<rt>か</rt></ruby>けば<ruby>絶対<rt>ぜったい</rt></ruby><ruby>入賞<rt>にゅうしょう</rt></ruby>できるよ。<br>*(Hoàn hảo. Viết với cảm xúc thì chắc chắn vào giải.)* |

---

## Tình huống 3 — Phòng giáo viên · 16:30, xin Yamada-sensei xem nháp

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>原稿<rt>げんこう</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>きを<ruby>持<rt>も</rt></ruby>ってまいりました。<ruby>添削<rt>てんさく</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いできますか?<br>*(Em xin phép. Cô Yamada, em mang bản nháp đến rồi ạ. Cô chữa giúp em được không ạ?)* |
| Yamada | はい、どうぞ。(đọc) ...うん、<ruby>個人<rt>こじん</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>がよく<ruby>出<rt>で</rt></ruby>ていますね。<ruby>3<rt>みっ</rt></ruby>つ<ruby>提案<rt>ていあん</rt></ruby>があります。<br>*(Ừ, đưa cô xem. ... Trải nghiệm cá nhân hiện ra rõ đấy. Cô có 3 góp ý.)* |
| Đại | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin cô.)* |
| Yamada | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>夢<rt>ゆめ</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>してください。テーマが<ruby>明確<rt>めいかく</rt></ruby>になります。<br>*(Một, em nhắc lại từ "ước mơ" ba lần. Chủ đề sẽ rõ hơn.)* |
| Đại | <ruby>繰<rt>く</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>す、ですか。<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Lặp lại ạ. Em hiểu rồi.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>各<rt>かく</rt></ruby><ruby>段落<rt>だんらく</rt></ruby>の<ruby>後<rt>あと</rt></ruby>に<ruby>2<rt>に</rt></ruby><ruby>秒<rt>びょう</rt></ruby>の<ruby>沈黙<rt>ちんもく</rt></ruby>を<ruby>入<rt>い</rt></ruby>れる。<br>*(Hai, đặt 2 giây im lặng sau mỗi đoạn.)* |
| Đại | <ruby>沈黙<rt>ちんもく</rt></ruby>というのは、<ruby>何<rt>なに</rt></ruby>も<ruby>言<rt>い</rt></ruby>わない<ruby>時間<rt>じかん</rt></ruby>のことですか?<br>*(Im lặng ý cô là khoảng thời gian không nói gì ạ?)* |
| Yamada | そう。<ruby>聴衆<rt>ちょうしゅう</rt></ruby>が<ruby>言葉<rt>ことば</rt></ruby>を<ruby>消化<rt>しょうか</rt></ruby>する<ruby>時間<rt>じかん</rt></ruby>です。<br>*(Đúng vậy. Khoảng để khán giả tiêu hóa lời nói.)* |
| Yamada | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>最後<rt>さいご</rt></ruby>に「ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました」と<ruby>言<rt>い</rt></ruby>って<ruby>礼<rt>れい</rt></ruby>をしてください。<br>*(Ba, cuối cùng nói "Cảm ơn quý vị đã lắng nghe" rồi cúi chào.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ずやります。ありがとうございました。<br>*(Vâng, em nhất định làm. Em cảm ơn cô ạ.)* |

---

## Tình huống 4 — Phòng giáo viên · 16:45, hỏi lại từ chưa rõ

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>伺<rt>うかが</rt></ruby>ってもいいですか?<br>*(Cô ơi, em hỏi thêm một câu được không ạ?)* |
| Yamada | どうぞ。<br>*(Em hỏi đi.)* |
| Đại | 「<ruby>聴衆<rt>ちょうしゅう</rt></ruby>」という<ruby>言葉<rt>ことば</rt></ruby>は<ruby>初<rt>はじ</rt></ruby>めて<ruby>聞<rt>き</rt></ruby>きました。お<ruby>客<rt>きゃく</rt></ruby>さんという<ruby>意味<rt>いみ</rt></ruby>ですか?<br>*(Từ "thính giả" em mới nghe lần đầu. Có nghĩa là khách không ạ?)* |
| Yamada | <ruby>近<rt>ちか</rt></ruby>いです。「<ruby>聴<rt>き</rt></ruby>く<ruby>人<rt>ひと</rt></ruby>たち」のことです。スピーチでは<ruby>会場<rt>かいじょう</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby>さん<ruby>全員<rt>ぜんいん</rt></ruby>を<ruby>指<rt>さ</rt></ruby>します。<br>*(Gần đúng. Là "những người nghe". Trong speech chỉ tất cả khán giả trong hội trường.)* |
| Đại | なるほど。「ご<ruby>清聴<rt>せいちょう</rt></ruby>」の「<ruby>聴<rt>ちょう</rt></ruby>」と<ruby>同<rt>おな</rt></ruby>じ<ruby>漢字<rt>かんじ</rt></ruby>ですね。<br>*(À ra vậy. Là cùng chữ "thính" trong "ご清聴" đúng không ạ.)* |
| Yamada | よく<ruby>気<rt>き</rt></ruby>づきましたね。<br>*(Em để ý kỹ đấy.)* |

---

## Tình huống 5 — Phòng khách nhà Tanaka · 19:30, đọc thử cho Tony+Yumi

*Đại đứng trước Tony và Yumi đang ngồi sofa. Đồng hồ trên bàn bấm giờ.*

| Vai | Lời thoại |
|---|---|
| Đại | では、<ruby>始<rt>はじ</rt></ruby>めます。... みなさま、こんにちは。<ruby>10<rt>じゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めてドラえもんを<ruby>読<rt>よ</rt></ruby>みました。<br>*(Vậy em bắt đầu. ... Kính thưa quý vị, xin chào. Năm 10 tuổi, lần đầu tôi đọc Doraemon.)* |
| Đại | (5 phút sau) ...ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。<br>*(... Cảm ơn quý vị đã lắng nghe.)* |
| Yumi | (lau mắt) ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>感動<rt>かんどう</rt></ruby>した! <ruby>本当<rt>ほんとう</rt></ruby>に。<br>*(Đại, cô cảm động lắm! Thật đấy.)* |
| Tony | <ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby>。<ruby>少<rt>すこ</rt></ruby>し<ruby>長<rt>なが</rt></ruby>いね。あと<ruby>10<rt>じゅう</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>削<rt>けず</rt></ruby>ろう。<br>*(5 phút 10 giây. Hơi dài. Cắt thêm 10 giây nữa nhé.)* |
| Đại | はい、どこを<ruby>削<rt>けず</rt></ruby>ったらいいでしょうか?<br>*(Vâng, cắt chỗ nào thì được ạ?)* |
| Tony | ドンズー<ruby>学校<rt>がっこう</rt></ruby>の<ruby>部分<rt>ぶぶん</rt></ruby>を<ruby>短<rt>みじか</rt></ruby>くしよう。「<ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>毎日<rt>まいにち</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時間<rt>じかん</rt></ruby>」だけで<ruby>十分<rt>じゅうぶん</rt></ruby>。<br>*(Phần trường Đông Du làm ngắn lại. Chỉ cần "1 năm, mỗi ngày 8 tiếng" là đủ.)* |
| Yumi | あと、「<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>」を<ruby>言<rt>い</rt></ruby>う<ruby>時<rt>とき</rt></ruby>はもっと<ruby>大<rt>おお</rt></ruby>きい<ruby>声<rt>こえ</rt></ruby>でね。<br>*(À, lúc nói "ĐH Osaka" thì to giọng lên nhé.)* |
| Đại | はい、ありがとうございます。もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby>やってみます。<br>*(Vâng, cháu cảm ơn. Cháu thử lại lần nữa.)* |

---

## Tình huống 6 — Phòng ký túc · 23:00, luyện lần thứ 8 với Bahra

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>8<rt>はち</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>目<rt>め</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lần thứ 8, nhờ cậu nghe nhé.)* |
| Bahra | OK、<ruby>時間<rt>じかん</rt></ruby><ruby>計<rt>はか</rt></ruby>るよ。スタート。<br>*(OK, tớ bấm giờ. Bắt đầu.)* |
| Đại | (đọc bài phát biểu)<br>*(đọc.)* |
| Bahra | (5 phút sau) <ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>02<rt>に</rt></ruby><ruby>秒<rt>びょう</rt></ruby>! ほぼ<ruby>完璧<rt>かんぺき</rt></ruby>。<br>*(5 phút 02 giây! Gần như hoàn hảo.)* |
| Đại | ありがとう。<ruby>暗記<rt>あんき</rt></ruby>で<ruby>飛<rt>と</rt></ruby>んだところはあった?<br>*(Cảm ơn. Có chỗ nào tớ quên không?)* |
| Bahra | <ruby>3<rt>さん</rt></ruby><ruby>段落<rt>だんらく</rt></ruby><ruby>目<rt>め</rt></ruby>で<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>止<rt>と</rt></ruby>まった。「<ruby>父<rt>ちち</rt></ruby>は」のところ。<br>*(Đoạn 3 dừng một lần. Chỗ "Cha tôi thì".)* |
| Đại | あ、そこか。もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>復習<rt>ふくしゅう</rt></ruby>する。<br>*(À, chỗ đó. Tớ ôn lại lần nữa.)* |
| Bahra | <ruby>明日<rt>あす</rt></ruby><ruby>本番<rt>ほんばん</rt></ruby>だね。<ruby>早<rt>はや</rt></ruby>く<ruby>寝<rt>ね</rt></ruby>ろよ。<br>*(Mai thi thật rồi. Đi ngủ sớm đi.)* |
| Đại | あと<ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>だけ。<br>*(Một lần nữa thôi.)* |

---

## Tình huống 7 — Phòng ký túc · 23:30, mẹ nhắn LINE đêm trước thi

*Đại nằm trên giường, đèn bàn còn sáng. Điện thoại reo.*

| Vai | Lời thoại |
|---|---|
| Mẹ | (LINE, tiếng Việt) Đại ơi! Mai con thi rồi. Mẹ với bố cầu chúc cho con. |
| Đại | (LINE, tiếng Việt) Vâng mẹ. Con tập 10 lần rồi, bài 5 phút 2 giây. |
| Mẹ | (LINE, tiếng Việt) Mẹ tự hào con dù thắng hay thua. Cứ nói từ trái tim ra là được. |
| Đại | (LINE, tiếng Việt) Dạ con biết rồi mẹ. Con đi ngủ đây. |
| Mẹ | (LINE, tiếng Việt) Ngủ ngon nhé con. Sáng mai uống nước ấm trước khi lên sân khấu, đỡ run. |
| Đại | (LINE, tiếng Việt) Dạ con nhớ rồi. Con yêu mẹ. |

---

## Tình huống 8 — Hành lang hội trường · 12:50, Tony gửi bùa

*Đại đứng ở góc hành lang, mặc áo sơ mi trắng + quần tây. Tay run nhẹ.*

| Vai | Lời thoại |
|---|---|
| Tony | (LINE, đính kèm ảnh bùa) ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>四天王寺<rt>してんのうじ</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>守<rt>まも</rt></ruby>りだよ。ポケットに<ruby>入<rt>い</rt></ruby>れて。<br>*(Đại, đây là bùa Shitennoji bác cầu cho. Bỏ vào túi nhé.)* |
| Đại | (LINE) <ruby>本当<rt>ほんとう</rt></ruby>にありがとうございます! <ruby>頑張<rt>がんば</rt></ruby>ってきます。<br>*(Cháu cảm ơn bác lắm! Cháu sẽ cố hết sức.)* |
| Yumi | (LINE) <ruby>緊張<rt>きんちょう</rt></ruby>したら、<ruby>会場<rt>かいじょう</rt></ruby>の<ruby>後<rt>うし</rt></ruby>ろの<ruby>壁<rt>かべ</rt></ruby>を<ruby>見<rt>み</rt></ruby>てね。<ruby>人<rt>ひと</rt></ruby>の<ruby>顔<rt>かお</rt></ruby>を<ruby>見<rt>み</rt></ruby>なくていい。<br>*(Hồi hộp thì nhìn bức tường cuối hội trường nhé. Không cần nhìn mặt người.)* |
| Đại | (LINE) はい、そうします。<br>*(Vâng, cháu sẽ làm vậy.)* |

---

## Tình huống 9 — Cánh gà · 13:25, Yamada-sensei dặn lần cuối

| Vai | Lời thoại |
|---|---|
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>3<rt>さん</rt></ruby><ruby>番目<rt>ばんめ</rt></ruby>です。<ruby>準備<rt>じゅんび</rt></ruby>はいいですか?<br>*(Đại, em là số 3 nhé. Sẵn sàng chưa?)* |
| Đại | (hơi run) はい...<ruby>少<rt>すこ</rt></ruby>し<ruby>緊張<rt>きんちょう</rt></ruby>しています。<br>*(Vâng... em hơi hồi hộp.)* |
| Yamada | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>深呼吸<rt>しんこきゅう</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby>して。それから<ruby>最初<rt>さいしょ</rt></ruby>の<ruby>一文<rt>いちぶん</rt></ruby>だけ<ruby>覚<rt>おぼ</rt></ruby>えていれば、<ruby>後<rt>あと</rt></ruby>は<ruby>口<rt>くち</rt></ruby>が<ruby>勝手<rt>かって</rt></ruby>に<ruby>動<rt>うご</rt></ruby>きますよ。<br>*(Không sao. Hít sâu 3 lần. Chỉ cần nhớ câu đầu, sau đó miệng tự chạy.)* |
| Đại | はい。<ruby>10<rt>じゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めてドラえもんを<ruby>読<rt>よ</rt></ruby>みました。<br>*(Vâng. "Năm 10 tuổi, lần đầu tôi đọc Doraemon".)* |
| Yamada | そう。それだけ。あとは<ruby>感情<rt>かんじょう</rt></ruby>を<ruby>込<rt>こ</rt></ruby>めるだけ。<br>*(Đúng vậy. Chỉ vậy thôi. Còn lại là đặt cảm xúc vào.)* |
| Đại | はい、<ruby>行<rt>い</rt></ruby>ってきます。<br>*(Vâng, em đi đây ạ.)* |

---

## Tình huống 10 — Sân khấu chính · 13:30, Đại đọc bài phát biểu

*Hội trường 150 người. Đại bước ra micro, cúi chào.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>、ベトナムのグエン・ヴァン・ダイさん、テーマ「なぜ<ruby>私<rt>わたし</rt></ruby>は<ruby>日本語<rt>にほんご</rt></ruby>を<ruby>学<rt>まな</rt></ruby>ぶのか」。<br>*(Số 3, anh Nguyễn Văn Đại từ Việt Nam, đề "Tại sao tôi học tiếng Nhật".)* |
| Đại | (cúi chào) <ruby>本日<rt>ほんじつ</rt></ruby>はお<ruby>時間<rt>じかん</rt></ruby>をいただき、ありがとうございます。<br>*(Hôm nay xin cảm ơn quý vị đã dành thời gian.)* |
| Đại | <ruby>10<rt>じゅっ</rt></ruby><ruby>歳<rt>さい</rt></ruby>の<ruby>時<rt>とき</rt></ruby>、<ruby>初<rt>はじ</rt></ruby>めてドラえもんを<ruby>読<rt>よ</rt></ruby>みました。それが<ruby>私<rt>わたし</rt></ruby>の<ruby>夢<rt>ゆめ</rt></ruby>の<ruby>始<rt>はじ</rt></ruby>まりでした。<br>*(Năm 10 tuổi, lần đầu tôi đọc Doraemon. Đó là khởi đầu của ước mơ tôi.)* |
| Đại | (giọng đều, có ngắt) ...<ruby>父<rt>ちち</rt></ruby>はベトナム・ハノイで<ruby>機械<rt>きかい</rt></ruby><ruby>技術者<rt>ぎじゅつしゃ</rt></ruby>でした。「<ruby>日本<rt>にほん</rt></ruby>の<ruby>技術<rt>ぎじゅつ</rt></ruby>を<ruby>学<rt>まな</rt></ruby>びなさい」、それが<ruby>父<rt>ちち</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>でした。<br>*(... Cha tôi là kỹ sư cơ khí ở Hà Nội. "Hãy học công nghệ Nhật" — đó là lời cha tôi nói.)* |
| Đại | (kết, giọng mạnh) <ruby>私<rt>わたし</rt></ruby>の<ruby>夢<rt>ゆめ</rt></ruby>は、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>し、<ruby>将来<rt>しょうらい</rt></ruby><ruby>日本<rt>にほん</rt></ruby>とベトナムの<ruby>橋渡<rt>はしわた</rt></ruby>し<ruby>役<rt>やく</rt></ruby>になることです。ご<ruby>清聴<rt>せいちょう</rt></ruby>ありがとうございました。<br>*(Ước mơ của tôi là đỗ khoa Kinh tế ĐH Osaka, mai sau làm cầu nối Nhật-Việt. Cảm ơn quý vị đã lắng nghe.)* |
| Đại | (cúi sâu)<br>*(cúi chào sâu)* |
| Khán giả | (vỗ tay rất to)<br>*(vỗ tay.)* |

---

## Tình huống 11 — Sân khấu · 13:36, Q&A với giám khảo

| Vai | Lời thoại |
|---|---|
| Hiệu trưởng | <ruby>素晴<rt>すば</rt></ruby>らしいスピーチでした。<ruby>夢<rt>ゆめ</rt></ruby>をもう<ruby>少<rt>すこ</rt></ruby>し<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただけますか?<br>*(Bài speech tuyệt vời. Em có thể nói cụ thể hơn về ước mơ được không?)* |
| Đại | はい。<ruby>大学卒業<rt>だいがくそつぎょう</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>商社<rt>しょうしゃ</rt></ruby>に<ruby>就職<rt>しゅうしょく</rt></ruby>し、<ruby>5<rt>ご</rt></ruby><ruby>年後<rt>ねんご</rt></ruby>にベトナム<ruby>支店<rt>してん</rt></ruby>を<ruby>立<rt>た</rt></ruby>ち<ruby>上<rt>あ</rt></ruby>げたいと<ruby>考<rt>かんが</rt></ruby>えております。<br>*(Vâng. Sau khi tốt nghiệp em định vào công ty thương mại, 5 năm sau sẽ lập chi nhánh tại Việt Nam.)* |
| Giáo viên 2 | スピーチで<ruby>一番<rt>いちばん</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>したところはどこですか?<br>*(Trong bài phát biểu, chỗ nào em luyện nhiều nhất?)* |
| Đại | <ruby>各<rt>かく</rt></ruby><ruby>段落<rt>だんらく</rt></ruby>の<ruby>後<rt>あと</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>秒<rt>びょう</rt></ruby>の<ruby>沈黙<rt>ちんもく</rt></ruby>です。<ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただきました。<br>*(Là 2 giây im lặng sau mỗi đoạn. Cô Yamada đã dạy em điều đó.)* |
| Lãnh sự VN | (tiếng Việt) Em ơi, anh là đại diện Lãnh sự quán Việt Nam. Em nói tiếng Nhật rất tự nhiên. Em đã ở Nhật bao lâu rồi? |
| Đại | (tiếng Việt) Dạ em cảm ơn anh ạ. Em sang được một năm rưỡi rồi, học ở trường Kansai Gogo Gakuin ạ. |
| Lãnh sự VN | (tiếng Việt) Tuyệt vời. Anh chờ tin em đỗ ĐH Osaka đấy. |
| Đại | (tiếng Việt) Dạ em sẽ cố gắng ạ. |

---

## Tình huống 12 — Hội trường · 16:00, công bố kết quả

| Vai | Lời thoại |
|---|---|
| Hiệu trưởng | <ruby>結果発表<rt>けっかはっぴょう</rt></ruby>です。<ruby>第<rt>だい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>位<rt>い</rt></ruby>、ミャンマーのアウンさん。<br>*(Công bố kết quả. Hạng 3: anh Aung từ Myanmar.)* |
| Khán giả | (vỗ tay)<br>*(vỗ tay.)* |
| Hiệu trưởng | <ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>、ベトナムのダイさん。<br>*(Hạng 2: anh Đại từ Việt Nam.)* |
| Đại | (bất ngờ, đứng dậy) はい!<br>*(Vâng ạ!)* |
| Hiệu trưởng | <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>、<ruby>中国<rt>ちゅうごく</rt></ruby>のイーファンさん。おめでとうございます。<br>*(Hạng 1: anh Yifan từ Trung Quốc. Xin chúc mừng.)* |
| Yifan | (sau khi nhận giải, quay sang Đại) ダイ<ruby>君<rt>くん</rt></ruby>、おめでとう。<ruby>君<rt>きみ</rt></ruby>のスピーチ、<ruby>感動<rt>かんどう</rt></ruby>した。<br>*(Đại, chúc mừng cậu. Bài của cậu cảm động lắm.)* |
| Đại | ありがとう。<ruby>君<rt>きみ</rt></ruby>も<ruby>本当<rt>ほんとう</rt></ruby>におめでとう! <ruby>1<rt>いっ</rt></ruby><ruby>位<rt>い</rt></ruby>すごいよ。<br>*(Cảm ơn cậu. Cậu cũng thật chúc mừng nhé! Hạng 1 đỉnh thật.)* |

---

## Tình huống 13 — Sau cuộc thi · 17:00, cảm ơn Yamada-sensei

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、おかげさまで<ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>を<ruby>取<rt>と</rt></ruby>ることができました。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Cô ơi, nhờ cô em mới được hạng 2 ạ. Em cảm ơn cô rất nhiều.)* |
| Yamada | <ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>は<ruby>立派<rt>りっぱ</rt></ruby>ですよ。<ruby>練習<rt>れんしゅう</rt></ruby>を<ruby>10<rt>じゅっ</rt></ruby><ruby>回<rt>かい</rt></ruby>もしましたね。<ruby>努力<rt>どりょく</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Hạng 2 là quá đáng nể đấy. Em đã tập 10 lần mà. Là kết quả của nỗ lực.)* |
| Đại | <ruby>賞金<rt>しょうきん</rt></ruby>の<ruby>2<rt>に</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>は、<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>のEJUの<ruby>受験料<rt>じゅけんりょう</rt></ruby>にします。<br>*(Em sẽ dùng 20 nghìn yên tiền thưởng làm lệ phí thi EJU tháng 11.)* |
| Yamada | いい<ruby>使<rt>つか</rt></ruby>い<ruby>方<rt>かた</rt></ruby>ですね。<br>*(Cách dùng tốt đấy.)* |
| Đại | <ruby>来年<rt>らいねん</rt></ruby>も<ruby>応募<rt>おうぼ</rt></ruby>したいです。<ruby>今度<rt>こんど</rt></ruby>は<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Năm sau em vẫn muốn đăng ký. Lần này em nhắm hạng 1 ạ.)* |
| Yamada | その<ruby>意気<rt>いき</rt></ruby>です。<br>*(Tinh thần đó đúng rồi.)* |

---

## Tình huống 14 — Phòng ký túc · 22:00, gọi điện về Mai

*Đại ngồi giường, mở video call. Mai ở Hà Nội đang vừa ăn tối vừa nghe.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi! Anh được hạng 2 rồi! Hai mươi nghìn yên! |
| Mai | (tiếng Việt) Trời ơi! Em chúc mừng anh! Nói rồi mà, anh nói tiếng Nhật giỏi lắm. |
| Đại | (tiếng Việt) Cô Yamada cho anh ba góp ý: nhấn từ "ước mơ" — 夢 — ba lần, đặt 2 giây im lặng sau mỗi đoạn, cuối nói "ご清聴ありがとうございました" rồi cúi chào. Y bài. |
| Mai | (tiếng Việt) Đoạn 2 giây im lặng nghe hay đấy. Để khán giả "tiêu hóa" lời nói đúng không? |
| Đại | (tiếng Việt) Đúng rồi, "聴衆が言葉を消化する時間" — đúng từ cô dùng. |
| Mai | (tiếng Việt) Hai mươi nghìn yên anh tính dùng làm gì? |
| Đại | (tiếng Việt) Để dành đóng lệ phí thi EJU đợt 2 tháng 11. Còn dư anh mua sách ôn 総合科目. |
| Mai | (tiếng Việt) Anh tiết kiệm thật đấy. Bao giờ về Tết được không anh? |
| Đại | (tiếng Việt) Kỳ thi tuyển sinh tháng 1-2/2026 căng lắm em ạ. Chắc tháng 3 thi xong anh mới về được. |
| Mai | (tiếng Việt) Em đợi. Anh ngủ ngon nhé. |
| Đại | (tiếng Việt) Yêu em. |

---

## Đọng lại chương 5

Đại trải qua hành trình một tháng từ lúc Yamada-sensei thông báo đến lúc nhận giải nhì cuộc thi hùng biện. Học mẫu **`〜に応募させていただきます`** để đăng ký lịch sự, **`〜の添削をお願いできますか`** để xin chữa bản thảo, **`〜というのは…という意味ですか`** để hỏi lại từ chưa rõ (聴衆). Trên sân khấu mở bài bằng **`本日はお時間をいただき、ありがとうございます`** và đóng bằng **`ご清聴ありがとうございました`**. Trong Q&A với giám khảo dùng **`〜と考えております`** (khiêm nhường về dự định) và đáp lễ sensei sau khi đoạt giải bằng **`おかげさまで〜することができました`**. Kỹ thuật: lặp từ khoá 3 lần, ngắt 2 giây sau mỗi đoạn, mở-đóng có cúi chào.

> Từ vựng & mẫu câu chương này: スピーチ大会・応募する・原稿・下書き・添削・聴衆・ご清聴・繰り返す・沈黙・深呼吸・橋渡し役・商社・支店・結果発表・第2位・賞金・受験料・〜させていただきます・〜をお願いできますか・〜というのは・〜と考えております・おかげさまで〜することができました

## Bí quyết chương

- **Keigo trong môi trường học thuật**: `〜させていただきます`, `〜をお願いできますか`, `〜と考えております` — phải nắm chắc trước khi vào đại học Nhật.
- **Hỏi lại khi chưa hiểu**: Đừng giả vờ hiểu. Mẫu `〜というのは…という意味ですか` là vũ khí sống còn cho du học sinh.
- **Mở-đóng bài phát biểu**: `本日はお時間をいただき〜` và `ご清聴ありがとうございました` là cặp mở-đóng chuẩn mọi thuyết trình tiếng Nhật.
- **Ngắt 2 giây sau mỗi đoạn**: Kỹ thuật public speaking quan trọng — cho khán giả tiêu hoá.
- **Lặp từ khoá 3 lần**: Đại lặp từ 夢 (ước mơ) — đề tài rõ ràng hơn cho người nghe.
- **Cảm ơn người giúp**: `おかげさまで〜することができました` thể hiện lễ tiết Nhật sau mọi thành công.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 大会 | たいかい | ĐẠI HỘI | Đại hội / cuộc thi |
| 応募 | おうぼ | ỨNG MỘ | Đăng ký |
| 暗記 | あんき | ÁM KÝ | Thuộc lòng |
| 賞金 | しょうきん | THƯỞNG KIM | Tiền thưởng |
| 原稿 | げんこう | NGUYÊN CẢO | Bản thảo |
| 下書き | したがき | HẠ THƯ | Bản nháp |
| 提出 | ていしゅつ | ĐỀ XUẤT | Nộp |
| 添削 | てんさく | THIÊM TƯỚC | Sửa bài |
| 個人体験 | こじんたいけん | CÁ NHÂN THỂ NGHIỆM | Trải nghiệm cá nhân |
| 感情 | かんじょう | CẢM TÌNH | Cảm xúc |
| 具体的 | ぐたいてき | CỤ THỂ ĐÍCH | Cụ thể |
| 入賞 | にゅうしょう | NHẬP THƯỞNG | Đoạt giải |
| 段落 | だんらく | ĐOẠN LẠC | Đoạn văn |
| 沈黙 | ちんもく | TRẦM MẶC | Im lặng |
| 聴衆 | ちょうしゅう | THÍNH CHÚNG | Thính giả |
| 消化 | しょうか | TIÊU HÓA | Tiêu hóa |
| ご清聴 | ごせいちょう | THANH THÍNH | Lắng nghe (kính ngữ) |
| 削る | けずる | TƯỚC | Cắt bớt |
| 部分 | ぶぶん | BỘ PHẬN | Phần |
| 復習 | ふくしゅう | PHỤC TẬP | Ôn lại |
| 本番 | ほんばん | BẢN PHIÊN | Kỳ thi thật |
| 守り | まもり | THỦ | Bùa hộ mệnh |
| 深呼吸 | しんこきゅう | THÂM HÔ HẤP | Hít sâu |
| 会場 | かいじょう | HỘI TRƯỜNG | Hội trường |
| 機械技術者 | きかいぎじゅつしゃ | CƠ GIỚI KỸ THUẬT GIẢ | Kỹ sư cơ khí |
| 橋渡し | はしわたし | KIỀU ĐỘ | Cầu nối |
| 大学卒業 | だいがくそつぎょう | ĐẠI HỌC TỐT NGHIỆP | Tốt nghiệp đại học |
| 商社 | しょうしゃ | THƯƠNG XÃ | Công ty thương mại |
| 支店 | してん | CHI ĐIẾM | Chi nhánh |
| 結果発表 | けっかはっぴょう | KẾT QUẢ PHÁT BIỂU | Công bố kết quả |
| 立派 | りっぱ | LẬP PHÁI | Đáng nể |
| 受験料 | じゅけんりょう | THỤ NGHIỆM LIỆU | Lệ phí thi |
| 目指す | めざす | MỤC CHỈ | Nhắm tới |
| 第2位 | だいにい | ĐỆ NHỊ VỊ | Hạng nhì |
| 校長 | こうちょう | HIỆU TRƯỞNG | Hiệu trưởng |
| 領事館 | りょうじかん | LÃNH SỰ QUÁN | Lãnh sự quán |
| 引き受ける | ひきうける | DẪN THỤ | Nhận / đảm nhận |', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000006, 800000020, NULL, 'markdown_book', 'T6. Lễ hội trường — gian hàng Việt Nam (学校祭)', '# Sách du học sinh tiếng Nhật · T6. Lễ hội trường — gian hàng Việt Nam (学校祭)

> **Mục tiêu nhân vật:** Đại 21 tuổi, 7/2025 cuối, năm 2 trường tiếng. Làm trưởng nhóm gian hàng Việt Nam tại lễ hội trường. Học các mẫu hội thoại tiếng Nhật của trưởng nhóm/người bán hàng: (1) đề nghị/phân công trong nhóm `〜を担当してもらえますか`, (2) thương lượng giá với người bán `もう少しお安くなりませんか・〜割引はできますか`, (3) chào mời khách lễ hội `いらっしゃいませ・〜はいかがですか`, (4) báo giá + nhận tiền `〜円になります・お会計〜円です`, (5) xử lý tình huống hết hàng `申し訳ありません、〜は売り切れました`, (6) phát biểu cảm ơn cuối ngày `本日はありがとうございました`.

---

## Bối cảnh

Cuối 7/2025. Lễ hội trường Kansai Gogo Gakuin tổ chức hằng năm, mỗi nhóm sinh viên theo quốc gia mở một gian (đồ ăn + sân khấu văn hoá). Đại được 9 bạn Việt đề cử làm trưởng nhóm. Thực đơn: phở, bánh mì, chè 3 màu, cà phê sữa đá, gỏi cuốn. Bahra (Mông Cổ) tình nguyện phụ giúp. Lợi nhuận làm quỹ chuyến đi Kyoto của lớp. Chương này tập trung các mẫu câu **phân công keigo trong nhóm, thương lượng mua nguyên liệu, chào mời và bán hàng tiếng Nhật, xử lý tình huống lễ hội**.

---

## Tình huống 1 — Lớp 2A · 13:30, Yamada-sensei thông báo lễ hội

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>来月<rt>らいげつ</rt></ruby>の<ruby>末<rt>すえ</rt></ruby>、<ruby>恒例<rt>こうれい</rt></ruby>の<ruby>学校祭<rt>がっこうさい</rt></ruby>があります。<br>*(Mọi người, cuối tháng sau có lễ hội trường thường niên.)* |
| Yamada | <ruby>各<rt>かく</rt></ruby><ruby>国<rt>くに</rt></ruby>のグループが<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>ブースを<ruby>出<rt>だ</rt></ruby>します。<ruby>収益<rt>しゅうえき</rt></ruby>はクラスの<ruby>旅行<rt>りょこう</rt></ruby><ruby>資金<rt>しきん</rt></ruby>になります。<br>*(Mỗi nhóm quốc gia mở một gian đồ ăn. Doanh thu làm quỹ đi chơi của lớp.)* |
| Linh | ベトナム<ruby>人<rt>じん</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>います。リーダーはダイ<ruby>先輩<rt>せんぱい</rt></ruby>がいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Người Việt có 10 người ạ. Em nghĩ trưởng nhóm nên là anh Đại.)* |
| Đại | え、<ruby>私<rt>わたし</rt></ruby>ですか?<br>*(Ơ, em ạ?)* |
| Tuấn | スピーチ<ruby>大会<rt>たいかい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>の<ruby>先輩<rt>せんぱい</rt></ruby>だから、ぴったりです。<br>*(Anh hạng 2 cuộc thi hùng biện rồi mà, hợp lắm ạ.)* |
| Đại | (cười) <ruby>分<rt>わ</rt></ruby>かりました、<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>けます。みんな<ruby>協力<rt>きょうりょく</rt></ruby>してくれますか?<br>*(Hiểu rồi, anh nhận. Mọi người cùng giúp anh nhé?)* |
| Cả nhóm Việt | はい!<br>*(Vâng!)* |
| Yamada | <ruby>予算<rt>よさん</rt></ruby><ruby>計画書<rt>けいかくしょ</rt></ruby>を<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>出<rt>だ</rt></ruby>してください。<br>*(Tuần sau nộp kế hoạch ngân sách nhé.)* |

---

## Tình huống 2 — Phòng học · 18:00, họp nhóm Việt lên thực đơn

*Đại đứng trước bảng, viết list. 9 bạn Việt ngồi quanh bàn.*

| Vai | Lời thoại |
|---|---|
| Đại | みんな、まずメニューを<ruby>決<rt>き</rt></ruby>めましょう。<ruby>提案<rt>ていあん</rt></ruby>がある<ruby>人<rt>ひと</rt></ruby>?<br>*(Mọi người, đầu tiên quyết menu nhé. Ai có đề xuất không?)* |
| Linh | フォーは<ruby>絶対<rt>ぜったい</rt></ruby>です。<ruby>看板<rt>かんばん</rt></ruby>メニュー。<br>*(Phở chắc chắn rồi. Món biển ạ.)* |
| Hùng | バインミーとベトナムコーヒー!<br>*(Bánh mì và cà phê Việt!)* |
| Tuấn | チェー<ruby>3<rt>さん</rt></ruby><ruby>色<rt>しょく</rt></ruby>とゴイクオン。<br>*(Chè 3 màu và gỏi cuốn ạ.)* |
| Đại | <ruby>5<rt>いつ</rt></ruby>つですね。それぞれ<ruby>担当<rt>たんとう</rt></ruby>を<ruby>決<rt>き</rt></ruby>めましょう。リンさん、バインミーを<ruby>担当<rt>たんとう</rt></ruby>してもらえますか?<br>*(5 món nhé. Phân công đi. Linh, em phụ trách bánh mì được không?)* |
| Linh | はい、<ruby>引<rt>ひ</rt></ruby>き<ruby>受<rt>う</rt></ruby>けます。<br>*(Vâng, em nhận.)* |
| Đại | フンくんはコーヒー、トゥアンくんはチェー、フォーは<ruby>私<rt>わたし</rt></ruby>がやります。<br>*(Hùng cà phê, Tuấn chè, phở anh làm.)* |
| Tuấn | ゴイクオンは?<br>*(Còn gỏi cuốn ạ?)* |
| Đại | みんなで<ruby>朝<rt>あさ</rt></ruby><ruby>巻<rt>ま</rt></ruby>きましょう。<ruby>50<rt>ごじゅう</rt></ruby><ruby>本<rt>ぽん</rt></ruby>でいいと<ruby>思<rt>おも</rt></ruby>います。<br>*(Sáng hôm đó cả nhóm cùng cuốn. 50 cuốn là đủ.)* |

---

## Tình huống 3 — Phòng học · 18:30, tính ngân sách

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>原価<rt>げんか</rt></ruby>と<ruby>売価<rt>ばいか</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>します。フォーは<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby><ruby>600<rt>ろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>で<ruby>100<rt>ひゃっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>、<ruby>6<rt>ろく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>の<ruby>売上<rt>うりあげ</rt></ruby>。<br>*(Tính giá vốn và giá bán. Phở 600 yên/bát × 100 bát = 60 nghìn yên doanh thu.)* |
| Linh | バインミー<ruby>400<rt>よんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>×<ruby>100<rt>ひゃく</rt></ruby><ruby>個<rt>こ</rt></ruby>=<ruby>4<rt>よん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。<br>*(Bánh mì 400 yên × 100 = 40 nghìn yên.)* |
| Hùng | コーヒー<ruby>300<rt>さんびゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>×<ruby>100<rt>ひゃく</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>=<ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。<br>*(Cà phê 300 yên × 100 = 30 nghìn yên.)* |
| Tuấn | チェー<ruby>350<rt>さんびゃくごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>×<ruby>100<rt>ひゃく</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>=<ruby>3<rt>さん</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5000<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>、ゴイクオン<ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>×<ruby>50<rt>ごじゅう</rt></ruby><ruby>個<rt>こ</rt></ruby>=<ruby>2<rt>に</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>5000<rt>ごせん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(Chè 350 × 100 = 35 nghìn, gỏi cuốn 500 × 50 = 25 nghìn yên.)* |
| Đại | <ruby>売上<rt>うりあげ</rt></ruby><ruby>合計<rt>ごうけい</rt></ruby><ruby>19<rt>じゅうきゅう</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。<ruby>原価<rt>げんか</rt></ruby>はだいたい<ruby>3<rt>さん</rt></ruby><ruby>割<rt>わり</rt></ruby>として<ruby>6<rt>ろく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>。<ruby>利益<rt>りえき</rt></ruby><ruby>13<rt>じゅうさん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>です。<br>*(Doanh thu tổng 190 nghìn yên. Giá vốn ước 30% là 60 nghìn. Lãi 130 nghìn.)* |
| Hùng | おお、<ruby>13<rt>じゅうさん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>!<br>*(Ô, 130 nghìn yên!)* |
| Đại | これでクラスのキョウト<ruby>旅行<rt>りょこう</rt></ruby>が<ruby>余裕<rt>よゆう</rt></ruby>で<ruby>払<rt>はら</rt></ruby>えます。<br>*(Vậy là quỹ đi Kyoto của lớp dư sức trả.)* |

---

## Tình huống 4 — Cửa hàng Bến Thành Namba · 14:00 thứ 7, thương lượng giá

*Đại bước vào cửa hàng nguyên liệu Việt ở Namba. Chú chủ quán đang xếp gói gạo.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Chú ơi, cháu mua xương bò, bánh phở, thịt và gia vị nấu phở cho 100 bát. |
| Chủ quán | (tiếng Việt) Cháu mua lẻ hay gói combo? Combo nguyên liệu 100 bát chú tính 30 nghìn yên. |
| Đại | (tiếng Việt) Đắt quá chú. Cháu là sinh viên, làm cho lễ hội trường. |
| Chủ quán | (tiếng Việt) Vậy mua riêng từng món xem, có khi rẻ hơn. |
| Đại | (tiếng Việt) Chú ơi, mua hết một lúc thì giảm cho cháu được không? Cháu mua 5 món luôn cho gian Việt Nam: phở, bánh mì, chè, cà phê, gỏi cuốn. |
| Chủ quán | (tiếng Việt) À, mua hết thì khác. Tổng cộng 60 nghìn yên. Chú giảm 20% — còn 48 nghìn yên thôi. |
| Đại | (tiếng Việt) Cháu cảm ơn chú nhiều! Có thêm bao gói cho ăn mang về không chú? |
| Chủ quán | (tiếng Việt) Có. Tặng cháu 200 cái hộp nhựa với 100 cái túi giấy luôn. |
| Đại | (tiếng Việt) Cháu cảm ơn chú ạ! Sáng mai cháu sẽ qua lấy hàng. |
| Chủ quán | (tiếng Việt) Ừ, 5 giờ sáng chú mở cửa cho. Lễ hội thành công nhé! |

---

## Tình huống 5 — Bếp ký túc · 22:00, đêm trước, Bahra ghé giúp

*Bếp ký túc bốc khói. Đại đứng bên nồi xương bò ninh. Linh, Tuấn, Hùng làm 3 bàn riêng.*

| Vai | Lời thoại |
|---|---|
| Bahra | (xuống bếp, ngạc nhiên) すごい<ruby>匂<rt>にお</rt></ruby>い! ベトナム<ruby>料理<rt>りょうり</rt></ruby>って<ruby>本格的<rt>ほんかくてき</rt></ruby>だね。<br>*(Mùi điên thật! Đồ Việt Nam đỉnh thế.)* |
| Đại | バーラ、ちょうどよかった。<ruby>手伝<rt>てつだ</rt></ruby>ってもらえる?<br>*(Bahra, đúng lúc. Cậu giúp được không?)* |
| Bahra | もちろん。<ruby>何<rt>なに</rt></ruby>すればいい?<br>*(Đương nhiên. Tớ làm gì?)* |
| Đại | <ruby>明日<rt>あした</rt></ruby>のレジを<ruby>担当<rt>たんとう</rt></ruby>してもらえる? <ruby>日本語<rt>にほんご</rt></ruby>でお<ruby>会計<rt>かいけい</rt></ruby>するのを<ruby>手伝<rt>てつだ</rt></ruby>ってほしい。<br>*(Mai cậu phụ trách quầy thu ngân được không? Tớ cần cậu phụ tính tiền tiếng Nhật.)* |
| Bahra | <ruby>賛成<rt>さんせい</rt></ruby>! <ruby>俺<rt>おれ</rt></ruby>の<ruby>日本語<rt>にほんご</rt></ruby>は<ruby>金額<rt>きんがく</rt></ruby>の<ruby>言<rt>い</rt></ruby>い<ruby>方<rt>かた</rt></ruby>には<ruby>自信<rt>じしん</rt></ruby>ある。<br>*(Đồng ý! Tớ tự tin chuyện đọc số tiền bằng tiếng Nhật.)* |
| Đại | <ruby>朝<rt>あさ</rt></ruby><ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>からブースの<ruby>設営<rt>せつえい</rt></ruby>、<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>開店<rt>かいてん</rt></ruby>。お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(8h sáng dựng quầy, 10h mở. Nhờ cậu nhé.)* |
| Bahra | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>朝<rt>あさ</rt></ruby><ruby>7<rt>しち</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>起<rt>お</rt></ruby>こすね。<br>*(Hiểu. 7h tớ gọi cậu dậy.)* |

---

## Tình huống 6 — Sân trường · 8:30 sáng, dựng quầy

| Vai | Lời thoại |
|---|---|
| Đại | みんな、テントを<ruby>立<rt>た</rt></ruby>てましょう。リンさん、<ruby>看板<rt>かんばん</rt></ruby>を<ruby>掛<rt>か</rt></ruby>けてください。<br>*(Mọi người, dựng lều nào. Linh, em treo biển nhé.)* |
| Linh | はい!「ベトナム<ruby>料理<rt>りょうり</rt></ruby> — <ruby>本場<rt>ほんば</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。<br>*(Vâng! Trên biển viết "Ẩm thực Việt Nam — vị chính gốc" ạ.)* |
| Đại | フンくん、コーヒーマシンの<ruby>準備<rt>じゅんび</rt></ruby>はOK?<br>*(Hùng, máy cà phê chuẩn bị xong chưa?)* |
| Hùng | はい、コンデンスミルクも<ruby>用意<rt>ようい</rt></ruby>しました。<br>*(Vâng, em đã chuẩn bị sữa đặc rồi.)* |
| Bahra | レジ、<ruby>準備<rt>じゅんび</rt></ruby><ruby>完了<rt>かんりょう</rt></ruby>。お<ruby>釣<rt>つ</rt></ruby>り<ruby>用<rt>よう</rt></ruby>の<ruby>小銭<rt>こぜに</rt></ruby>も<ruby>3000<rt>さんぜん</rt></ruby><ruby>円<rt>えん</rt></ruby>分<ruby>用意<rt>ようい</rt></ruby>した。<br>*(Quầy thu ngân xong. Tiền lẻ trả lại cũng đã sẵn 3000 yên.)* |
| Đại | <ruby>完璧<rt>かんぺき</rt></ruby>。あと<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>で<ruby>開店<rt>かいてん</rt></ruby>です。<br>*(Hoàn hảo. 10 phút nữa mở cửa.)* |

---

## Tình huống 7 — Quầy · 10:00, vị khách đầu tiên Yamada-sensei

| Vai | Lời thoại |
|---|---|
| Đại | (đứng quầy) いらっしゃいませ! ベトナム<ruby>料理<rt>りょうり</rt></ruby>のブースです!<br>*(Mời quý khách! Đây là gian ẩm thực Việt Nam!)* |
| Yamada | (cười, đến quầy) おめでとうございます、<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby>のお<ruby>客<rt>きゃく</rt></ruby><ruby>様<rt>さま</rt></ruby>です。フォーを<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Chúc mừng, cô là khách đầu tiên. Cho cô một bát phở.)* |
| Đại | はい、フォー<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby><ruby>600<rt>ろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。パクチーは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Vâng, một bát phở 600 yên. Cô ăn được rau mùi không ạ?)* |
| Yamada | はい、たっぷりお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Có, cho cô nhiều vào nhé.)* |
| Đại | (đưa bát) お<ruby>待<rt>ま</rt></ruby>たせしました。レモンとライムはそちらにあります。<br>*(Cô đợi rồi ạ. Chanh và chanh xanh ở đằng kia.)* |
| Yamada | (ăn một miếng) ...おいしい! <ruby>本物<rt>ほんもの</rt></ruby>の<ruby>味<rt>あじ</rt></ruby>です。<br>*(... Ngon thật! Vị thật đấy.)* |
| Bahra | お<ruby>会計<rt>かいけい</rt></ruby><ruby>600<rt>ろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Tổng 600 yên ạ.)* |
| Yamada | (đưa 1000) はい。<br>*(Đây ạ.)* |
| Bahra | <ruby>1000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>お<ruby>預<rt>あず</rt></ruby>かりします。<ruby>400<rt>よんひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>のお<ruby>返<rt>かえ</rt></ruby>しです。ありがとうございました!<br>*(Nhận 1000 yên. Trả lại cô 400 yên. Cảm ơn cô ạ!)* |

---

## Tình huống 8 — Quầy · 12:15, peak hour, gọi nhiều cùng lúc

*Hàng người xếp dài 15 mét. Đại múc phở, Linh phục vụ bánh mì, Hùng pha cà phê liên tục.*

| Vai | Lời thoại |
|---|---|
| Khách 1 (sinh viên Nhật) | フォー<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>とコーヒー<ruby>1<rt>いっ</rt></ruby><ruby>杯<rt>ぱい</rt></ruby>!<br>*(1 phở và 1 cà phê!)* |
| Bahra | フォーとベトナムコーヒーですね。<ruby>900<rt>きゅうひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<br>*(Phở và cà phê Việt nhé. Tổng 900 yên ạ.)* |
| Khách 2 | バインミー<ruby>2<rt>に</rt></ruby><ruby>個<rt>こ</rt></ruby>とチェー<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>!<br>*(2 bánh mì và 1 chè!)* |
| Linh | お<ruby>会計<rt>かいけい</rt></ruby><ruby>1150<rt>せんひゃくごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>です。少々お<ruby>待<rt>ま</rt></ruby>ちください。<br>*(Tổng 1150 yên ạ. Xin đợi một chút.)* |
| Đại | (gọi với) リンさん、バインミーあと<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>残<rt>のこ</rt></ruby>ってる?<br>*(Linh, còn mấy cái bánh mì?)* |
| Linh | <ruby>5<rt>ご</rt></ruby><ruby>個<rt>こ</rt></ruby>だけです!<br>*(Còn 5 cái thôi anh!)* |
| Đại | (tiếng Việt) Trời, hết nhanh quá. Linh ơi em chạy ra konbini mua thêm baguette giúp anh đi! |
| Linh | (tiếng Việt) Dạ em đi ngay! |

---

## Tình huống 9 — Quầy · 12:45, xử lý khách khi hết món

| Vai | Lời thoại |
|---|---|
| Khách | バインミーを<ruby>3<rt>さん</rt></ruby><ruby>個<rt>こ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho tôi 3 cái bánh mì.)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません、バインミーは<ruby>一時的<rt>いちじてき</rt></ruby>に<ruby>売<rt>う</rt></ruby>り<ruby>切<rt>き</rt></ruby>れてしまいました。<br>*(Xin lỗi quý khách, bánh mì tạm thời hết rồi ạ.)* |
| Khách | あ、<ruby>残念<rt>ざんねん</rt></ruby>。<br>*(Tiếc thế.)* |
| Đại | <ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>後<rt>ご</rt></ruby>に<ruby>追加<rt>ついか</rt></ruby>で<ruby>到着<rt>とうちゃく</rt></ruby>します。よろしければ、ゴイクオンはいかがですか? <ruby>本場<rt>ほんば</rt></ruby>のフレッシュな<ruby>味<rt>あじ</rt></ruby>です。<br>*(15 phút nữa có thêm ạ. Nếu được, quý khách dùng gỏi cuốn nhé? Vị tươi chính gốc ạ.)* |
| Khách | ゴイクオン...<ruby>食<rt>た</rt></ruby>べたことないな。じゃあそれ<ruby>2<rt>に</rt></ruby><ruby>本<rt>ほん</rt></ruby>ください。<br>*(Gỏi cuốn... chưa ăn bao giờ. Vậy cho tôi 2 cuốn.)* |
| Đại | ありがとうございます! ピーナッツソースとお<ruby>魚<rt>さかな</rt></ruby>のソース、どちらにしますか?<br>*(Cảm ơn quý khách! Nước chấm đậu phộng hay mắm cá, quý khách dùng loại nào ạ?)* |
| Khách | おすすめは?<br>*(Cô khuyên loại nào?)* |
| Đại | <ruby>初<rt>はじ</rt></ruby>めての<ruby>方<rt>かた</rt></ruby>にはピーナッツソースがおすすめです。<br>*(Người ăn lần đầu em khuyên nước chấm đậu phộng ạ.)* |
| Khách | じゃあそれで。<br>*(Vậy loại đó.)* |
| Đại | お<ruby>会計<rt>かいけい</rt></ruby><ruby>1000<rt>せん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Tổng 1000 yên ạ.)* |

---

## Tình huống 10 — Sân khấu chính · 14:30, MC giới thiệu múa áo dài

*5 bạn Việt mặc áo dài 5 màu, đứng sau cánh gà. Đại đứng giữa, hơi run.*

| Vai | Lời thoại |
|---|---|
| MC | <ruby>次<rt>つぎ</rt></ruby>はベトナムチームのアオザイダンス、「<ruby>稲<rt>いね</rt></ruby><ruby>刈<rt>か</rt></ruby>りの<ruby>歌<rt>うた</rt></ruby>」です!<br>*(Tiếp theo là múa áo dài của đoàn Việt Nam, "Bài ca gặt lúa"!)* |
| Linh | (sau cánh gà, hồi hộp) <ruby>先輩<rt>せんぱい</rt></ruby>、<ruby>緊張<rt>きんちょう</rt></ruby>します...<br>*(Anh ơi, em run quá...)* |
| Đại | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>練習<rt>れんしゅう</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>したじゃない。<br>*(Không sao. Mình tập 3 tuần rồi mà.)* |
| Tuấn | <ruby>俺<rt>おれ</rt></ruby>も<ruby>足<rt>あし</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えてる。<br>*(Em cũng run chân.)* |
| Đại | <ruby>笑顔<rt>えがお</rt></ruby>! それだけ<ruby>覚<rt>おぼ</rt></ruby>えていれば<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>行<rt>い</rt></ruby>こう!<br>*(Mỉm cười! Chỉ cần nhớ đó là ổn. Đi!)* |
| (Nhạc dân ca bắt đầu) | <br> |
| Khán giả | (vỗ tay rất to)<br>*(vỗ tay to.)* |
| MC | (sau khi múa xong) <ruby>素晴<rt>すば</rt></ruby>らしいパフォーマンスでした!<br>*(Tiết mục thật tuyệt vời!)* |

---

## Tình huống 11 — Sau quầy · 17:00, đếm tiền cuối ngày

| Vai | Lời thoại |
|---|---|
| Bahra | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>数<rt>かぞ</rt></ruby>えたよ。<ruby>合計<rt>ごうけい</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>!<br>*(Đếm hết rồi. Tổng 220 nghìn yên!)* |
| Đại | え!? <ruby>予想<rt>よそう</rt></ruby>より<ruby>3<rt>さん</rt></ruby><ruby>万円<rt>まんえん</rt></ruby><ruby>多<rt>おお</rt></ruby>い!<br>*(Hả? Hơn dự kiến 30 nghìn yên!)* |
| Linh | <ruby>原価<rt>げんか</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>を<ruby>引<rt>ひ</rt></ruby>くと、<ruby>利益<rt>りえき</rt></ruby><ruby>16<rt>じゅうろく</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>!<br>*(Trừ vốn 60 nghìn, lãi 160 nghìn yên!)* |
| Tuấn | <ruby>1<rt>ひと</rt></ruby><ruby>人<rt>り</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>6000<rt>ろくせん</rt></ruby><ruby>円<rt>えん</rt></ruby>ずつ<ruby>分<rt>わ</rt></ruby>けますか?<br>*(Chia mỗi người 16 nghìn yên ạ?)* |
| Đại | いや、それは<ruby>違<rt>ちが</rt></ruby>う。クラス<ruby>全員<rt>ぜんいん</rt></ruby>のキョウト<ruby>旅行<rt>りょこう</rt></ruby><ruby>資金<rt>しきん</rt></ruby>にしましょう。みんなで<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>行<rt>い</rt></ruby>けるように。<br>*(Không, không phải vậy. Để làm quỹ đi Kyoto cho cả lớp. Để ai cũng đi được.)* |
| Linh | <ruby>賛成<rt>さんせい</rt></ruby>! その<ruby>方<rt>ほう</rt></ruby>がいいです。<br>*(Đồng ý ạ! Như vậy hay hơn.)* |
| Yamada | (đến quầy) おお、ベトナムチーム! みなさん、おめでとうございます! ベトナムブースが<ruby>各国<rt>かっこく</rt></ruby>の<ruby>中<rt>なか</rt></ruby>で<ruby>売上<rt>うりあげ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>です! <ruby>特別<rt>とくべつ</rt></ruby><ruby>賞金<rt>しょうきん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>追加です!<br>*(Ô, đội Việt Nam! Mọi người, chúc mừng nhé! Gian Việt Nam hạng 1 về doanh thu! Thưởng đặc biệt thêm 50 nghìn yên!)* |
| Cả nhóm | やった!!<br>*(Yeah!!)* |

---

## Tình huống 12 — Trước cổng trường · 17:30, phát biểu cảm ơn nhóm

| Vai | Lời thoại |
|---|---|
| Đại | みんな、ちょっと<ruby>集<rt>あつ</rt></ruby>まって。<ruby>本日<rt>ほんじつ</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Mọi người tập trung một chút. Hôm nay xin cảm ơn cả nhóm rất nhiều.)* |
| Đại | <ruby>朝<rt>あさ</rt></ruby>から<ruby>夕方<rt>ゆうがた</rt></ruby>までみんなフル<ruby>稼働<rt>かどう</rt></ruby>で<ruby>頑張<rt>がんば</rt></ruby>ってくれました。<ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>はみんなのおかげです。<br>*(Từ sáng đến tối ai cũng làm hết công suất. Hạng 1 là nhờ tất cả mọi người.)* |
| Linh | <ruby>先輩<rt>せんぱい</rt></ruby>のリーダーシップも<ruby>大<rt>おお</rt></ruby>きいです!<br>*(Lãnh đạo của anh cũng lớn lắm ạ!)* |
| Bahra | <ruby>俺<rt>おれ</rt></ruby>もベトナム<ruby>料理<rt>りょうり</rt></ruby>のファンになった。<br>*(Tớ cũng thành fan đồ Việt Nam rồi.)* |
| Đại | <ruby>利益<rt>りえき</rt></ruby>と<ruby>賞金<rt>しょうきん</rt></ruby><ruby>合<rt>あ</rt></ruby>わせて<ruby>21<rt>にじゅういち</rt></ruby><ruby>万円<rt>まんえん</rt></ruby>、クラスのキョウト<ruby>旅行<rt>りょこう</rt></ruby>に<ruby>使<rt>つか</rt></ruby>います。<br>*(Lãi cộng tiền thưởng tổng 210 nghìn yên, để dùng cho chuyến đi Kyoto của lớp.)* |
| Tuấn | やった!<ruby>全員<rt>ぜんいん</rt></ruby><ruby>行<rt>い</rt></ruby>けますね!<br>*(Yeah! Cả lớp đi được rồi!)* |
| Đại | <ruby>来月<rt>らいげつ</rt></ruby>、<ruby>計画<rt>けいかく</rt></ruby>を<ruby>立<rt>た</rt></ruby>てましょう。<br>*(Tháng sau cùng lập kế hoạch nhé.)* |

---

## Tình huống 13 — Phòng ký túc · 22:00, gọi điện kể Mai

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi! Hôm nay gian Việt Nam của bọn anh được hạng 1 lễ hội trường! |
| Mai | (tiếng Việt) Trời ơi! Anh giỏi quá! Bán được nhiều không? |
| Đại | (tiếng Việt) Tổng 220 nghìn yên doanh thu, lãi 160 nghìn. Cô Yamada thưởng thêm 50 nghìn nữa, tổng 210 nghìn yên. |
| Mai | (tiếng Việt) Hai trăm mười nghìn yên là 35 triệu Việt Nam đấy anh! Anh được chia bao nhiêu? |
| Đại | (tiếng Việt) Không em ạ, anh quyết để hết làm quỹ đi Kyoto cho cả lớp 30 người. |
| Mai | (tiếng Việt) Anh tử tế thật. Cả nhóm Việt 10 đứa cũng đồng ý? |
| Đại | (tiếng Việt) Đồng ý hết. Linh, Tuấn, Hùng đều ủng hộ. Bahra cũng vui lắm — cậu ấy phụ trách quầy thu ngân cho bọn anh. |
| Mai | (tiếng Việt) Em mừng cho anh. Vậy là làm trưởng nhóm 10 người đầu tiên trong đời rồi nhỉ. |
| Đại | (tiếng Việt) Ừ. Cảm giác lạ lắm em. Có trách nhiệm, nhưng vui. |
| Mai | (tiếng Việt) Đại của em trưởng thành rồi. Mà từ chè 3 màu tiếng Nhật gọi là gì? |
| Đại | (tiếng Việt) "チェ3色" — "che-san-shoku". Khách Nhật thích lắm em, ai uống cũng khen. |
| Mai | (tiếng Việt) Hay quá. Anh ngủ ngon nhé. |
| Đại | (tiếng Việt) Yêu em. |

---

## Đọng lại chương 6

Đại lần đầu làm trưởng nhóm 10 bạn Việt tại lễ hội trường. Học mẫu **`〜を担当してもらえますか`** để phân công công việc khéo léo, **`もう少しお安くなりませんか`** + **`〜割引はできますか`** thương lượng với chú chủ quán Bến Thành (giảm 20%). Đứng quầy chào **`いらっしゃいませ`**, báo giá **`〜円になります`** + **`お会計〜円です`**, hỏi tuỳ chọn **`パクチーは大丈夫ですか`**. Khi hết bánh mì, dùng **`申し訳ありません、〜は売り切れました`** và đẩy món thay thế bằng **`〜はいかがですか`**. Cuối ngày phát biểu cảm ơn nhóm **`本日はありがとうございました`**. Doanh thu 220k, thưởng 50k, tổng 210k → quỹ Kyoto cho cả lớp.

> Từ vựng & mẫu câu chương này: 学校祭・ブース・収益・予算・原価・売価・売上・利益・担当・看板・設営・開店・売り切れ・お会計・お預かりします・お返し・割引・追加・特別賞金・1位・パクチー・ピーナッツソース・〜を担当してもらえますか・もう少しお安くなりませんか・いらっしゃいませ・〜円になります・〜はいかがですか・申し訳ありません〜は売り切れました・本日はありがとうございました

## Bí quyết chương

- **Phân công keigo `〜を担当してもらえますか`**: Trưởng nhóm Nhật dùng dạng này, lịch sự mà rõ ràng.
- **Thương lượng giá `〜割引はできますか`**: Áp dụng khi mua sỉ. Đại còn lồng "sinh viên + lễ hội" để xin giảm 20%.
- **Bộ chào - báo giá - nhận tiền**: `いらっしゃいませ → 〜円になります → 〜円お預かりします → お返しです → ありがとうございました`. Nhớ chuỗi này là đứng quầy được mọi nơi ở Nhật.
- **Hết hàng KHÔNG nói thẳng "ない"**: Phải `申し訳ありません、〜は売り切れました` + đề xuất món thay thế `〜はいかがですか`. Văn hoá dịch vụ Nhật.
- **Lãnh đạo khi peak hour**: Mất bình tĩnh là dây chuyền đổ. Đại giữ Linh chạy đi mua baguette ngay lúc hết hàng.
- **Trách nhiệm trưởng nhóm**: Đại không chia lãi cho 10 đứa Việt mà để quỹ cho cả lớp 30 người — quyết định kiểu "trưởng thành".

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 学校祭 | がっこうさい | HỌC HIỆU TẾ | Lễ hội trường |
| 恒例 | こうれい | HẰNG LỆ | Thường niên |
| ブース | — | — | Gian hàng |
| 収益 | しゅうえき | THU ÍCH | Doanh thu |
| 資金 | しきん | TƯ KIM | Quỹ |
| 旅行 | りょこう | LỮ HÀNH | Du lịch |
| 予算 | よさん | DỰ TOÁN | Ngân sách |
| 計画書 | けいかくしょ | KẾ HOẠCH THƯ | Bản kế hoạch |
| 担当 | たんとう | ĐẢM ĐƯƠNG | Phụ trách |
| 看板 | かんばん | KHÁN BẢN | Biển hiệu |
| 原価 | げんか | NGUYÊN GIÁ | Giá vốn |
| 売価 | ばいか | MẠI GIÁ | Giá bán |
| 売上 | うりあげ | MẠI THƯỢNG | Doanh thu |
| 利益 | りえき | LỢI ÍCH | Lãi |
| 余裕 | よゆう | DƯ DỤ | Dư dả |
| 割引 | わりびき | CÁT DẪN | Giảm giá |
| 設営 | せつえい | THIẾT DOANH | Dựng / setup |
| 開店 | かいてん | KHAI ĐIẾM | Mở cửa |
| 完了 | かんりょう | HOÀN LIỄU | Hoàn thành |
| 小銭 | こぜに | TIỂU TIỀN | Tiền lẻ |
| 用意 | ようい | DỤNG Ý | Chuẩn bị |
| 本場 | ほんば | BẢN TRƯỜNG | Chính gốc |
| お会計 | おかいけい | HỘI KẾ | Thanh toán |
| パクチー | — | — | Rau mùi |
| 売り切れ | うりきれ | MẠI THIẾT | Bán hết |
| 追加 | ついか | TRUY GIA | Bổ sung |
| 到着 | とうちゃく | ĐÁO TRƯỚC | Đến nơi |
| 残念 | ざんねん | TÀN NIỆM | Tiếc |
| ピーナッツソース | — | — | Nước chấm đậu phộng |
| パフォーマンス | — | — | Tiết mục |
| 稼働 | かどう | GIÁ ĐỘNG | Vận hành |
| リーダーシップ | — | — | Lãnh đạo |
| 特別賞金 | とくべつしょうきん | ĐẶC BIỆT THƯỞNG KIM | Thưởng đặc biệt |
| 設定 | せってい | THIẾT ĐỊNH | Thiết đặt |
| 朝巻く | あさまく | TRIÊU QUYỂN | Cuốn (gỏi) buổi sáng |
| 民謡 | みんよう | DÂN DAO | Dân ca |
| アオザイ | — | — | Áo dài |
| 稲刈り | いねかり | ĐẠO XẢ | Gặt lúa |
| 看板メニュー | かんばんメニュー | KHÁN BẢN | Món biển |
| 集まる | あつまる | TẬP | Tập trung |', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000007, 800000020, NULL, 'markdown_book', 'T7. Mùa hè + Obon + bố mẹ sang thăm 1 tuần (お盆・母父来日)', '# Sách du học sinh tiếng Nhật · T7. Mùa hè + Obon + bố mẹ sang thăm 1 tuần (お盆・母父来日)

> **Mục tiêu nhân vật:** Đại 21 tuổi, 8/2025. Bố mẹ từ Hà Nội sang Nhật 1 tuần (10/8 → 17/8) trùng dịp お盆. Đại dẫn Osaka + Kyoto + Nara, lưu nhà Tanaka 4 đêm. Học các mẫu hội thoại tiếng Nhật của hướng dẫn viên gia đình kiêm dịch hai chiều: (1) đón sân bay + tự giới thiệu lễ độ `〜さん、ようこそ・〜と申します`, (2) phiên dịch giữa Tony-Yumi và bố mẹ `〜とおっしゃっています・〜と言っています`, (3) đặt món + hỏi dị ứng ở nhà hàng `〜は大丈夫ですか・アレルギーはありますか`, (4) hỏi đường + mua vé `〜までの切符を〜枚お願いします`, (5) giải thích văn hoá Obon-dầu cho bố mẹ qua tiếng Việt, (6) cảm ơn host gia đình kiểu Nhật `お世話になりました・心から感謝しております`.

---

## Bối cảnh

8/2025. Obon 13-15/8 là dịp lễ truyền thống Nhật cúng tổ tiên. Bố mẹ Đại xin nghỉ phép, sang Centrair 10/8 chiều, về 17/8 sáng (visa ngắn hạn 90 ngày). Đại xin nghỉ Lawson + tour guide một tuần. Tony-Yumi mời bố mẹ ở nhà 4 đêm; 3 đêm khách sạn Kyoto + Nara. Lịch 7 ngày: đón sân bay → tối nhà Tanaka → Dotonbori → Lawson + trường → Kyoto → Nara → Obon → tiễn. Chương này tập trung các mẫu câu **dịch hai chiều Việt-Nhật, đón tiếp khách lễ độ, mua vé tàu, đặt món, lời cảm ơn host gia đình**.

---

## Tình huống 1 — Sảnh đến Centrair · 13:30, đón bố mẹ

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt, vẫy) Đại ơi! Đây này con! |
| Đại | (tiếng Việt, chạy đến ôm) Mẹ! Bố! Cuối cùng cũng đến! |
| Bố | (tiếng Việt) Một năm rưỡi rồi. Con cao lên hay sao ấy. |
| Mẹ | (tiếng Việt, vừa khóc vừa cười) Trông gầy đi đấy con. Ăn uống thế nào? |
| Đại | (tiếng Việt) Con khoẻ mà mẹ. Hôm nay con đặt vé Nankai Express về Namba luôn, mất 50 phút. |
| Bố | (tiếng Việt) Hành lý nặng đấy. Mẹ con mang theo nước mắm, ruốc, mì tôm Hảo Hảo, mấy gói thuốc bổ. |
| Đại | (tiếng Việt) Mẹ! Con đã bảo bên này có hết rồi mà. |
| Mẹ | (tiếng Việt) Mẹ biết nhưng vẫn mang. Mẹ pha nước mắm cho bác Tony với cô Yumi ăn thử. |
| Đại | (tiếng Việt) Vâng mẹ, chắc bác Tony thích lắm. Bố mẹ đi đường mệt không, mình ra ga tàu luôn nhé. |

---

## Tình huống 2 — Quầy vé Nankai Centrair · 14:00, Đại mua vé

| Vai | Lời thoại |
|---|---|
| Đại | すみません、なんば<ruby>行<rt>い</rt></ruby>きの<ruby>特急<rt>とっきゅう</rt></ruby>ラピートの<ruby>切符<rt>きっぷ</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Xin lỗi, cho tôi 3 vé tàu tốc hành Rapi:t đi Namba.)* |
| Nhân viên | <ruby>大人<rt>おとな</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>様ですね。<ruby>次<rt>つぎ</rt></ruby>の<ruby>14<rt>じゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ふん</rt></ruby><ruby>発<rt>はつ</rt></ruby>でよろしいですか?<br>*(Người lớn 3 vé nhé. Chuyến tiếp theo 14:15 được không?)* |
| Đại | はい、それでお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>料金<rt>りょうきん</rt></ruby>は?<br>*(Vâng, cho tôi chuyến đó. Bao nhiêu tiền ạ?)* |
| Nhân viên | <ruby>3<rt>さん</rt></ruby><ruby>名<rt>めい</rt></ruby>で<ruby>4380<rt>よんせんさんびゃくはちじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<br>*(3 vé tổng 4380 yên ạ.)* |
| Đại | (đưa thẻ) クレジットカードでお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho tôi quẹt thẻ nhé.)* |
| Mẹ | (tiếng Việt) Đại nói tiếng Nhật tự nhiên ghê! |
| Đại | (tiếng Việt) Hơn một năm rưỡi rồi mà mẹ. Mình ra sân ga số 2 nhé. |

---

## Tình huống 3 — Phòng khách nhà Tanaka · 17:30, lễ giới thiệu

*Tony và Yumi đứng trước cửa, mặc áo nhà gọn gàng. Tony khoanh tay cúi chào.*

| Vai | Lời thoại |
|---|---|
| Tony | <ruby>遠<rt>とお</rt></ruby>いところ、ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました。<ruby>田中<rt>たなか</rt></ruby>トニーと<ruby>申<rt>もう</rt></ruby>します。<br>*(Quý vị từ xa đến, chào mừng. Tôi là Tanaka Tony.)* |
| Yumi | <ruby>妻<rt>つま</rt></ruby>のユミです。お<ruby>会<rt>あ</rt></ruby>いできて<ruby>嬉<rt>うれ</rt></ruby>しいです。<br>*(Tôi là Yumi, vợ. Rất vui được gặp.)* |
| Đại | (dịch cho bố mẹ, tiếng Việt) Bác Tony và cô Yumi nói chào mừng bố mẹ từ xa đến, rất vui được gặp. |
| Bố | (tiếng Việt → quay sang Tony, cúi nhẹ) はじめまして。Đại bố. ありがとうございます。 |
| Đại | (dịch sang Nhật cho Tony) <ruby>父<rt>ちち</rt></ruby>は、<ruby>息子<rt>むすこ</rt></ruby>のダイを<ruby>1<rt>いち</rt></ruby><ruby>年半<rt>ねんはん</rt></ruby><ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になり、<ruby>心<rt>こころ</rt></ruby>から<ruby>感謝<rt>かんしゃ</rt></ruby>しております、と<ruby>言<rt>い</rt></ruby>っています。<br>*(Bố tôi nói anh chị đã chăm Đại cả năm rưỡi, từ trong tim cảm ơn anh chị.)* |
| Tony | (xúc động) ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>息子<rt>むすこ</rt></ruby><ruby>同様<rt>どうよう</rt></ruby>です。お<ruby>礼<rt>れい</rt></ruby>を<ruby>言<rt>い</rt></ruby>うのはこちらこそです、と<ruby>父<rt>ちち</rt></ruby>さまに<ruby>伝<rt>つた</rt></ruby>えてください。<br>*(Đại như con trai chúng tôi. Phải cảm ơn là chúng tôi cơ. Em truyền lời cho bố nhé.)* |
| Đại | (tiếng Việt) Bố ơi, bác Tony nói Đại như con trai, phải cảm ơn là bác cảm ơn lại bố mẹ. |
| Mẹ | (tiếng Việt, lau mắt) Trời ơi. |

---

## Tình huống 4 — Bàn ăn nhà Tanaka · 19:00, Yumi nấu phở Việt

*Bàn ăn 5 người. Yumi mang nồi phở ra. Mùi nước dùng bốc lên.*

| Vai | Lời thoại |
|---|---|
| Yumi | <ruby>初<rt>はじ</rt></ruby>めてフォーを<ruby>作<rt>つく</rt></ruby>りました。<ruby>味<rt>あじ</rt></ruby>はどうかわかりませんが、<ruby>召<rt>め</rt></ruby>し<ruby>上<rt>あ</rt></ruby>がってください。<br>*(Tôi lần đầu nấu phở. Không biết vị thế nào, mời quý vị dùng.)* |
| Đại | (dịch) Cô Yumi lần đầu nấu phở, mời mẹ với bố nếm. |
| Mẹ | (tiếng Việt, ăn) Trời ơi! Y nhà! Đậm vị mà thanh lắm! |
| Đại | (dịch sang Nhật) <ruby>母<rt>はは</rt></ruby>は、ベトナム<ruby>本場<rt>ほんば</rt></ruby>のフォーと<ruby>同<rt>おな</rt></ruby>じ<ruby>味<rt>あじ</rt></ruby>だと<ruby>言<rt>い</rt></ruby>っています。<br>*(Mẹ tôi nói y vị phở chính gốc Việt Nam.)* |
| Yumi | (xúc động) <ruby>本当<rt>ほんとう</rt></ruby>ですか! <ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しました。<br>*(Thật ạ! Tôi tập 3 lần rồi.)* |
| Tony | (rót vang) <ruby>乾杯<rt>かんぱい</rt></ruby>しましょう! ダイ<ruby>君<rt>くん</rt></ruby>のご<ruby>家族<rt>かぞく</rt></ruby>のご<ruby>来日<rt>らいにち</rt></ruby>と、お<ruby>盆<rt>ぼん</rt></ruby>の<ruby>時期<rt>じき</rt></ruby>に<ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cụng ly nào! Mừng gia đình Đại sang Nhật và dịp Obon!)* |
| Tất cả | <ruby>乾杯<rt>かんぱい</rt></ruby>!<br>*(Cạn!)* |
| Tony | <ruby>失礼<rt>しつれい</rt></ruby>ですが、<ruby>食<rt>た</rt></ruby>べ<ruby>物<rt>もの</rt></ruby>のアレルギーはありますか?<ruby>明日<rt>あした</rt></ruby>からの<ruby>食事<rt>しょくじ</rt></ruby>の<ruby>参考<rt>さんこう</rt></ruby>に。<br>*(Xin lỗi, quý vị có dị ứng đồ ăn không? Tôi hỏi để chuẩn bị bữa từ mai.)* |
| Đại | (dịch) Bác Tony hỏi bố mẹ có dị ứng món gì không, để mai chuẩn bị bữa. |
| Bố | (tiếng Việt) Bố không có. Mẹ thì sống ngao biển hơi ngứa. |
| Đại | <ruby>父<rt>ちち</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですが、<ruby>母<rt>はは</rt></ruby>は<ruby>生<rt>なま</rt></ruby>の<ruby>貝<rt>かい</rt></ruby>が<ruby>少<rt>すこ</rt></ruby>し<ruby>苦手<rt>にがて</rt></ruby>だそうです。<br>*(Bố cháu thì ổn, mẹ cháu hơi kiêng ngao sống ạ.)* |
| Yumi | <ruby>了解<rt>りょうかい</rt></ruby>です。<br>*(Hiểu rồi.)* |

---

## Tình huống 5 — Quán takoyaki Dotonbori · 11/8 11:30, gọi món

*Đại đứng quầy. Bố mẹ ngó hai bên đường đèn neon.*

| Vai | Lời thoại |
|---|---|
| Đại | (với quầy) すみません、たこ<ruby>焼<rt>や</rt></ruby>き<ruby>3<rt>さん</rt></ruby>パックお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>1<rt>いっ</rt></ruby>パック<ruby>何<rt>なん</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>入<rt>はい</rt></ruby>っていますか?<br>*(Xin lỗi, cho 3 phần takoyaki. Một phần mấy viên ạ?)* |
| Chủ quán | <ruby>1<rt>いっ</rt></ruby>パック<ruby>8<rt>はっ</rt></ruby><ruby>個<rt>こ</rt></ruby><ruby>500<rt>ごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。ソースとマヨネーズ、かつおぶしは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですか?<br>*(Một phần 8 viên 500 yên. Sốt, mayo và bào cá ngừ ok không ạ?)* |
| Đại | はい、<ruby>普通<rt>ふつう</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。あ、<ruby>1<rt>いっ</rt></ruby>パックは<ruby>辛<rt>から</rt></ruby>くないバージョンはありますか? <ruby>母<rt>はは</rt></ruby>が<ruby>辛<rt>から</rt></ruby>いものが<ruby>苦手<rt>にがて</rt></ruby>で。<br>*(Vâng, bình thường ạ. À, có loại không cay cho 1 phần không? Mẹ tôi không ăn cay được.)* |
| Chủ quán | はい、ソース<ruby>抜<rt>ぬ</rt></ruby>きにできますよ。<br>*(Có, có thể bỏ sốt cay.)* |
| Đại | じゃあそれで、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vậy cho tôi loại đó.)* |
| (3 phút sau, nhận hộp) | <br> |
| Đại | (đưa cho mẹ) Mẹ ơi, hộp này không sốt cay đâu. |
| Mẹ | (ăn) Trời, nóng! Nhưng ngon lắm. Khác Hà Nội hẳn. |
| Bố | (tiếng Việt, ăn) Có bạch tuộc thật bên trong à? |
| Đại | Vâng bố. Takoyaki có nghĩa là "viên bạch tuộc nướng". |

---

## Tình huống 6 — Lawson Namba · 12/8 10:00, Suzuki gặp mẹ Đại

| Vai | Lời thoại |
|---|---|
| Đại | (vào cửa hàng, dẫn bố mẹ) <ruby>鈴木<rt>すずき</rt></ruby><ruby>店長<rt>てんちょう</rt></ruby>、お<ruby>母<rt>かあ</rt></ruby>さんと<ruby>父<rt>とう</rt></ruby>さんをお<ruby>連<rt>つ</rt></ruby>れしました。<br>*(Anh Suzuki, em đưa mẹ và bố đến rồi ạ.)* |
| Suzuki | (cúi chào sâu) はじめまして! <ruby>鈴木<rt>すずき</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>当店<rt>とうてん</rt></ruby>で<ruby>1<rt>いち</rt></ruby><ruby>番<rt>ばん</rt></ruby><ruby>真面目<rt>まじめ</rt></ruby>な<ruby>従業員<rt>じゅうぎょういん</rt></ruby>です。<br>*(Lần đầu gặp! Tôi là Suzuki. Đại là nhân viên tận tâm nhất ở cửa hàng chúng tôi.)* |
| Đại | (dịch cho mẹ) Anh Suzuki nói Đại là nhân viên tận tâm nhất của Lawson. |
| Mẹ | (tiếng Việt, cảm động) Trời ơi. Cảm ơn anh ấy đã nhận cháu nhà tôi vào làm. |
| Đại | <ruby>母<rt>はは</rt></ruby>は、<ruby>息子<rt>むすこ</rt></ruby>を<ruby>採用<rt>さいよう</rt></ruby>していただき<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございますと<ruby>申<rt>もう</rt></ruby>しております。<br>*(Mẹ tôi nói cảm ơn anh rất nhiều vì đã tuyển con trai bà.)* |
| Suzuki | こちらこそ、お<ruby>礼<rt>れい</rt></ruby>を<ruby>申<rt>もう</rt></ruby>し<ruby>上<rt>あ</rt></ruby>げます。ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>大学<rt>だいがく</rt></ruby>に<ruby>入<rt>はい</rt></ruby>ってからもバイトを<ruby>続<rt>つづ</rt></ruby>けてほしいです。<br>*(Tôi mới phải cảm ơn. Đại vào đại học rồi tôi mong em vẫn làm tiếp.)* |
| Đại | (dịch + đáp) <ruby>3<rt>さん</rt></ruby><ruby>月<rt>がつ</rt></ruby>まで<ruby>必<rt>かなら</rt></ruby>ず<ruby>続<rt>つづ</rt></ruby>けます。<br>*(Em chắc chắn làm đến tháng 3 ạ.)* |
| Mẹ | (tiếng Việt) Đại à, kẹp con này 200 yên đưa anh Suzuki giúp mẹ — quà nhỏ từ Hà Nội, ô mai khô. |
| Đại | <ruby>母<rt>はは</rt></ruby>から、<ruby>手土産<rt>てみやげ</rt></ruby>です。ベトナムのお<ruby>菓子<rt>かし</rt></ruby>です。<br>*(Quà nhỏ từ mẹ tôi. Bánh kẹo Việt Nam ạ.)* |
| Suzuki | (nhận, cúi) お<ruby>気<rt>き</rt></ruby><ruby>遣<rt>づか</rt></ruby>いありがとうございます。<br>*(Cảm ơn quý vị đã chu đáo.)* |

---

## Tình huống 7 — Phòng hiệu trưởng trường tiếng · 12/8 11:30, Yamada báo thành tích

| Vai | Lời thoại |
|---|---|
| Yamada | (mở cửa, cúi chào) ようこそお<ruby>越<rt>こ</rt></ruby>しくださいました! <ruby>山田<rt>やまだ</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Mời quý vị! Tôi là Yamada.)* |
| Đại | (dịch giới thiệu) Cô Yamada là giáo viên chính chủ nhiệm con. |
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>は<ruby>本校<rt>ほんこう</rt></ruby>の<ruby>誇<rt>ほこ</rt></ruby>りです。<ruby>先月<rt>せんがつ</rt></ruby>のスピーチ<ruby>大会<rt>たいかい</rt></ruby>で<ruby>2<rt>に</rt></ruby><ruby>位<rt>い</rt></ruby>、<ruby>学校祭<rt>がっこうさい</rt></ruby>で<ruby>売上<rt>うりあげ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>位<rt>い</rt></ruby>を<ruby>取<rt>と</rt></ruby>りました。<br>*(Đại là niềm tự hào của trường. Tháng trước hạng 2 cuộc thi hùng biện, hạng 1 doanh thu lễ hội trường.)* |
| Đại | (dịch cho mẹ) Cô Yamada nói con đoạt hạng 2 cuộc thi hùng biện tháng trước và hạng 1 doanh thu lễ hội trường. |
| Mẹ | (tiếng Việt, khóc) Trời ơi! Con không kể cho mẹ chuyện hùng biện. |
| Đại | (tiếng Việt, ngại) Con định để bí mật. |
| Bố | (tiếng Việt, vỗ vai Đại) Con trai bố thật. |
| Yamada | <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>にEJUの<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>があります。<ruby>大阪大学<rt>おおさかだいがく</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby>ラインに<ruby>近<rt>ちか</rt></ruby>づいています。<br>*(Tháng 11 có EJU đợt 2. Em đang gần ngưỡng đỗ ĐH Osaka.)* |
| Đại | (dịch ngắn) Tháng 11 thi EJU đợt 2. Con sắp đạt mức đỗ ĐH Osaka. |
| Bố | (tiếng Việt) Cố con nhé. |

---

## Tình huống 8 — Sân chùa Kinkaku-ji · 13/8 10:30, Đại làm hướng dẫn

*Sân chùa đông khách. Tháp vàng phản chiếu mặt hồ. Đại chỉ tay sang.*

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt, ngỡ ngàng) Trời ơi, vàng thật à con? |
| Đại | (tiếng Việt) Lá vàng dát thật mẹ ạ. Tháp này xây 1397, bị cháy 1950, đến 1955 xây lại. |
| Bố | (tiếng Việt) Tên tiếng Nhật là gì? |
| Đại | (tiếng Việt) "Kinkaku-ji" — chữ Hán "Kim Các Tự", nghĩa là chùa Lầu Vàng. Còn cái xám ở Kyoto khác là Ginkaku-ji — Ngân Các Tự, Lầu Bạc. |
| Mẹ | (tiếng Việt) Vào trong chiêm bái được không? |
| Đại | (tiếng Việt) Không mẹ ạ, chỉ đứng nhìn bên ngoài thôi. Vé 500 yên một người. |
| (Đại ra quầy vé) | <br> |
| Đại | (quầy) <ruby>大人<rt>おとな</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>枚<rt>まい</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cho 3 vé người lớn ạ.)* |
| Nhân viên | <ruby>1500<rt>せんごひゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>になります。<ruby>御朱印<rt>ごしゅいん</rt></ruby>はいかがですか?<br>*(1500 yên. Quý khách có muốn lấy con dấu chùa không?)* |
| Đại | はい、<ruby>3<rt>みっ</rt></ruby>つお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, cho 3 dấu ạ.)* |
| Đại | (tiếng Việt) Con xin "goshuin" — dấu chùa, đem về làm kỷ niệm cho mẹ. |
| Mẹ | (tiếng Việt) Con tinh tế thế. |

---

## Tình huống 9 — Công viên Nara · 14/8 11:00, cho nai ăn

*Nai sika đi quanh. Một con chạm mũi vào tay mẹ.*

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt, giật mình) Ôi! Nó liếm tay tao! |
| Đại | (cười) Mẹ ơi không sao đâu, nai ở đây quen người lắm. Con mua bánh shika senbei cho mẹ cho ăn. |
| Đại | (với quầy) すみません、<ruby>鹿<rt>しか</rt></ruby>せんべい<ruby>3<rt>さん</rt></ruby><ruby>束<rt>たば</rt></ruby>ください。<br>*(Cho tôi 3 xấp bánh nai.)* |
| Bà bán | <ruby>600<rt>ろっぴゃく</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<ruby>渡<rt>わた</rt></ruby>す<ruby>時<rt>とき</rt></ruby>、<ruby>後<rt>うし</rt></ruby>ろに<ruby>隠<rt>かく</rt></ruby>すと<ruby>鹿<rt>しか</rt></ruby>が<ruby>追<rt>お</rt></ruby>いかけてきますからね。<br>*(600 yên. Đưa thì đừng giấu sau lưng, nai sẽ rượt đấy.)* |
| Đại | はい、<ruby>気<rt>き</rt></ruby>をつけます。<br>*(Vâng, tôi cẩn thận.)* |
| Mẹ | (cho nai ăn, nai cúi đầu) Trời ơi! Nó cúi đầu cảm ơn kìa con! |
| Đại | (tiếng Việt) Nai Nara nổi tiếng vì biết "ojigi" — cúi chào để xin bánh. Một số nhà nghiên cứu nói có thể là phản xạ học từ người. |
| Bố | (tiếng Việt, cười) Văn hoá Nhật ngấm cả vào nai luôn. |

---

## Tình huống 10 — Trước Tōdai-ji · 14/8 14:30, hỏi đường

| Vai | Lời thoại |
|---|---|
| Bố | (tiếng Việt) Còn xa không con? |
| Đại | (tiếng Việt) Để con hỏi. (quay sang một bác Nhật trung niên đang dẫn cháu đi) すみません、<ruby>東大寺<rt>とうだいじ</rt></ruby>の<ruby>大仏殿<rt>だいぶつでん</rt></ruby>はあちらでよろしいですか?<br>*(Xin lỗi, điện Đại Phật Todai-ji ở hướng kia phải không ạ?)* |
| Bác Nhật | はい、その<ruby>道<rt>みち</rt></ruby>をまっすぐ<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>です。<ruby>南大門<rt>なんだいもん</rt></ruby>を<ruby>通<rt>とお</rt></ruby>ったら<ruby>正面<rt>しょうめん</rt></ruby>に<ruby>見<rt>み</rt></ruby>えます。<br>*(Vâng, đi thẳng đường đó 5 phút. Qua cổng Nandaimon thì sẽ thấy ngay trước mặt.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn bác ạ.)* |
| Bác Nhật | ベトナムからですか? お<ruby>盆<rt>ぼん</rt></ruby><ruby>時期<rt>じき</rt></ruby>で<ruby>混<rt>こ</rt></ruby>んでいますが、<ruby>楽<rt>たの</rt></ruby>しんでください。<br>*(Quý vị từ Việt Nam ạ? Dịp Obon đông lắm nhưng chúc đi vui vẻ.)* |
| Đại | はい、ありがとうございます!<br>*(Vâng, cảm ơn bác!)* |
| Đại | (tiếng Việt) Bác bảo đi thẳng 5 phút, qua cổng Nam Đại Môn là thấy. |
| Mẹ | (tiếng Việt) Người Nhật lịch sự thật. |

---

## Tình huống 11 — Sân chùa Tennoji · 15/8 19:30, Bon-odori cùng Tony+Yumi

*Sân chùa thắp đèn lồng. Đoàn người mặc yukata múa vòng tròn quanh sân khấu giữa.*

| Vai | Lời thoại |
|---|---|
| Yumi | (mặc yukata, đưa yukata cho mẹ Đại) お<ruby>母<rt>かあ</rt></ruby>さま、こちらの<ruby>浴衣<rt>ゆかた</rt></ruby>を<ruby>着<rt>き</rt></ruby>てみてください。<br>*(Mẹ Đại, cô mặc thử yukata này nhé.)* |
| Đại | (dịch) Cô Yumi mời mẹ mặc thử yukata. |
| Mẹ | (tiếng Việt, ngại) Cô bảo có hợp không? |
| Yumi | (giúp mẹ mặc) よく<ruby>似合<rt>にあ</rt></ruby>っていらっしゃいます!<br>*(Cô mặc hợp lắm!)* |
| Tony | お<ruby>盆<rt>ぼん</rt></ruby>は、<ruby>亡<rt>な</rt></ruby>くなったご<ruby>先祖<rt>せんぞ</rt></ruby>が<ruby>家<rt>いえ</rt></ruby>に<ruby>戻<rt>もど</rt></ruby>ってくる<ruby>時期<rt>じき</rt></ruby>です。<ruby>盆踊<rt>ぼんおど</rt></ruby>りは、ご<ruby>先祖<rt>せんぞ</rt></ruby>を<ruby>迎<rt>むか</rt></ruby>えて<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>踊<rt>おど</rt></ruby>る<ruby>意味<rt>いみ</rt></ruby>があります。<br>*(Obon là dịp tổ tiên đã mất trở về nhà. Bon-odori là múa để đón và cùng vui với tổ tiên.)* |
| Đại | (dịch) Bác Tony nói Obon là khi tổ tiên đã mất trở về, mọi người múa bon-odori cùng tổ tiên. |
| Bố | (tiếng Việt) Giống cúng giỗ và rước vong bên mình. Văn hoá Đông Á có cái chung. |
| Đại | <ruby>父<rt>ちち</rt></ruby>は、ベトナムにも<ruby>似<rt>に</rt></ruby>た<ruby>習慣<rt>しゅうかん</rt></ruby>があると<ruby>言<rt>い</rt></ruby>っています。お<ruby>盆<rt>ぼん</rt></ruby>に<ruby>当<rt>あ</rt></ruby>たる「Vu Lan」という<ruby>仏教<rt>ぶっきょう</rt></ruby>の<ruby>行事<rt>ぎょうじ</rt></ruby>があります。<br>*(Bố tôi nói Việt Nam cũng có dịp tương tự, gọi là "Vu Lan" — lễ Phật giáo gần như Obon.)* |
| Yumi | あ、<ruby>同<rt>おな</rt></ruby>じですね! ぜひ<ruby>輪<rt>わ</rt></ruby>に<ruby>入<rt>はい</rt></ruby>って<ruby>踊<rt>おど</rt></ruby>りましょう。<br>*(Ô, giống nhau! Cả nhà cùng vào vòng múa đi.)* |
| Mẹ | (tiếng Việt, ngại) Mẹ chưa biết bước nào! |
| Đại | (tiếng Việt) Mẹ cứ làm theo. Một bước trái, một bước phải, vỗ tay hai cái. Cô Yumi đi trước, mẹ theo sau cô. |

---

## Tình huống 12 — Sảnh đi Centrair · 17/8 8:30, tiễn

*Bố mẹ đứng ở cửa boarding. Đại đeo balo, hai tay nắm tay mẹ.*

| Vai | Lời thoại |
|---|---|
| Mẹ | (tiếng Việt, mắt đỏ) Đại ơi. Một tuần qua nhanh quá. |
| Đại | (tiếng Việt) Vâng mẹ. Bố mẹ đi đường bay an toàn nhé. |
| Bố | (tiếng Việt) Tháng 11 con thi EJU đợt 2. Tháng 1-2 thi tuyển sinh ĐH Osaka. Bố mẹ tin con. |
| Đại | (tiếng Việt) Con sẽ cố hết sức. Tháng 3/2026 thi xong con về Hà Nội. |
| Mẹ | (tiếng Việt) Bác Tony với cô Yumi thật như họ hàng ruột. Sang năm Tết bố mẹ mời họ sang Hà Nội nhé? |
| Đại | (tiếng Việt) Dạ con sẽ mời. Bác Tony nói bác ấy muốn ăn bún chả Hà Nội. |
| Mẹ | (tiếng Việt, ôm Đại) Con gầy quá. Ăn nhiều vào nhé. |
| Đại | (tiếng Việt) Vâng mẹ. Con đi đây — Lawson tối nay 18-22h. |
| Bố | (tiếng Việt) Đi đi con. (vỗ vai) Cố nhé. |
| Đại | (tiếng Việt, vẫy tay đến khi bố mẹ qua cổng kiểm tra) |

---

## Tình huống 13 — Ký túc · 17/8 22:00, cảm ơn Tony+Yumi qua LINE

| Vai | Lời thoại |
|---|---|
| Đại | (LINE) <ruby>田中<rt>たなか</rt></ruby><ruby>夫妻<rt>ふさい</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>にお<ruby>世話<rt>せわ</rt></ruby>になりました。<ruby>母<rt>はは</rt></ruby>と<ruby>父<rt>ちち</rt></ruby>がとても<ruby>感激<rt>かんげき</rt></ruby>していました。<br>*(Anh chị Tanaka, cả tuần qua thật cảm ơn anh chị. Bố mẹ cháu cảm động lắm.)* |
| Yumi | (LINE) こちらこそ、お<ruby>母<rt>かあ</rt></ruby>さま、お<ruby>父<rt>とう</rt></ruby>さまにお<ruby>会<rt>あ</rt></ruby>いできて<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>嬉<rt>うれ</rt></ruby>しかったです。<ruby>家族<rt>かぞく</rt></ruby>が<ruby>増<rt>ふ</rt></ruby>えたみたい。<br>*(Cô mới phải cảm ơn được gặp bố mẹ cháu. Như thêm người nhà.)* |
| Tony | (LINE) ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>来年<rt>らいねん</rt></ruby>のテト、ベトナムに<ruby>遊<rt>あそ</rt></ruby>びに<ruby>行<rt>い</rt></ruby>かせていただきます。<br>*(Đại, Tết năm sau bác sẽ qua chơi Việt Nam đấy.)* |
| Đại | (LINE) はい、ぜひ! <ruby>父<rt>ちち</rt></ruby>と<ruby>母<rt>はは</rt></ruby>が<ruby>首<rt>くび</rt></ruby>を<ruby>長<rt>なが</rt></ruby>くして<ruby>待<rt>ま</rt></ruby>っています。ハノイのブンチャーをご<ruby>用意<rt>ようい</rt></ruby>いたします。<br>*(Vâng, mời bác qua! Bố mẹ cháu đang ngóng. Cháu sẽ chuẩn bị bún chả Hà Nội ạ.)* |
| Yumi | (LINE) <ruby>楽<rt>たの</rt></ruby>しみ! ダイ<ruby>君<rt>くん</rt></ruby>、EJUと<ruby>入試<rt>にゅうし</rt></ruby><ruby>頑張<rt>がんば</rt></ruby>ってね。<ruby>応援<rt>おうえん</rt></ruby>しています。<br>*(Mong quá! Đại, cố lên EJU với thi tuyển sinh nhé. Cô bác cổ vũ.)* |
| Đại | (LINE) ありがとうございます。<ruby>必<rt>かなら</rt></ruby>ず<ruby>大阪大<rt>おおさかだい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>します!<br>*(Cháu cảm ơn. Cháu chắc chắn đỗ ĐH Osaka!)* |

---

## Tình huống 14 — Phòng ký túc · 17/8 22:30, gọi điện Mai

*Đại nằm trên giường, phòng tối, đèn bàn vàng nhạt. Camera Mai sáng đêm Hà Nội.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai ơi. Bố mẹ về rồi. |
| Mai | (tiếng Việt) Một tuần thế nào hả anh? |
| Đại | (tiếng Việt) Quá đầy. Dotonbori, Kyoto vàng và Inari, Nara nai, Obon ở Tennoji. Hôm cuối mẹ múa bon-odori với cô Yumi. |
| Mai | (tiếng Việt) Mẹ múa á? |
| Đại | (tiếng Việt) Ừ, mẹ ban đầu ngại lắm, sau bước theo cô Yumi. Bố quay video. |
| Mai | (tiếng Việt) Gửi em xem. |
| Đại | (tiếng Việt) Đang gửi. Cô Yumi nấu phở cho mẹ — y vị Hà Nội. Mẹ khóc. Bác Tony hỏi dị ứng đồ ăn để chuẩn bị bữa từ mai. Người Nhật chu đáo thật. |
| Mai | (tiếng Việt) Mà bố mẹ nói gì về em không anh? |
| Đại | (tiếng Việt) Mẹ hỏi nhiều lắm. Mẹ bảo Tết 2027 anh tốt nghiệp đại học năm 1, đám cưới được rồi. |
| Mai | (tiếng Việt, im một lúc) Em đợi. |
| Đại | (tiếng Việt) Còn EJU đợt 2 tháng 11, thi tuyển sinh tháng 1-2, kết quả tháng 3. Tháng 3/2026 anh về. Anh đeo bùa chùa Shitennoji bác Tony tặng đi thi. |
| Mai | (tiếng Việt) Cố lên anh. Em ngủ đây — 1 giờ sáng Hà Nội rồi. |
| Đại | (tiếng Việt) Yêu em. |

---

## Đọng lại chương 7

Đại trải qua một tuần làm hướng dẫn viên kiêm phiên dịch hai chiều cho bố mẹ. Học mẫu **`〜と申します`** giới thiệu lễ độ, **`〜とおっしゃっています/言っています`** truyền lời, **`〜までの切符を〜枚お願いします`** mua vé tàu, **`アレルギーはありますか・〜は大丈夫ですか`** hỏi dị ứng/tuỳ chọn món, **`〜はあちらでよろしいですか`** hỏi đường, **`お世話になりました・心から感謝しております`** cảm ơn host gia đình. Học giải thích văn hoá hai chiều — Obon ↔ Vu Lan, Tony giải nghĩa "đón tổ tiên về và cùng múa", bố nhận ra điểm chung Đông Á. Yumi nấu phở 3 lần để đãi mẹ, Suzuki-tencho cảm ơn việc tuyển Đại, Yamada báo thành tích hùng biện hạng 2 + lễ hội hạng 1 — mẹ khóc.

> Từ vựng & mẫu câu chương này: お盆・盆踊り・浴衣・先祖・お世話になりました・心から感謝しております・〜と申します・〜とおっしゃっています・〜と言っています・〜までの切符を〜枚お願いします・アレルギーはありますか・〜は大丈夫ですか・〜はあちらでよろしいですか・お気遣いありがとうございます・手土産・乾杯・鹿せんべい・御朱印・大仏殿・南大門・Vu Lan・首を長くして待っています

## Bí quyết chương

- **Dịch hai chiều**: Du học sinh thường làm cầu nối khi gia đình sang. Mẫu `〜とおっしゃっています` (kính cấp trên) vs `〜と言っています` (trung tính) phải phân biệt rõ.
- **Giới thiệu khi gặp lần đầu**: `〜と申します` thay cho `〜です` khi gặp người lớn hoặc trang trọng. Đại dùng cho Tony chào bố mẹ.
- **Mua vé tàu**: `〜行きの〜を〜枚お願いします` là mẫu chuẩn. Thêm `次の〜時〜分発でよろしいですか` để chốt chuyến.
- **Hỏi dị ứng**: `アレルギーはありますか` cộng `〜は大丈夫ですか` (pakuchi, sốt cay). Văn hoá nhà hàng Nhật hỏi từng món.
- **Lời cảm ơn host kiểu Nhật**: `お世話になりました` là cốt lõi. Nâng cấp: `心から感謝しております`. Đại dùng khi dịch lời bố cho Tony.
- **Văn hoá Obon ↔ Vu Lan**: Cả Nhật và Việt cùng có dịp đón tổ tiên đã mất. Cầu nối văn hoá tự nhiên qua việc nhận ra điểm chung.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| お盆 | おぼん | BỒN | Lễ Obon |
| 来日 | らいにち | LAI NHẬT | Đến Nhật |
| 特急 | とっきゅう | ĐẶC CẤP | Tàu tốc hành |
| 切符 | きっぷ | THIẾT PHỦ | Vé |
| 発 | はつ | PHÁT | Khởi hành |
| 妻 | つま | THÊ | Vợ |
| 息子 | むすこ | TỨC TỬ | Con trai |
| 同様 | どうよう | ĐỒNG DẠNG | Tương tự / như |
| 感謝 | かんしゃ | CẢM TẠ | Cảm tạ |
| 召し上がる | めしあがる | TRIỆU THƯỢNG | Dùng (kính ngữ) |
| 乾杯 | かんぱい | CAN BÔI | Cụng ly |
| 時期 | じき | THỜI KỲ | Thời kỳ |
| 貝 | かい | BỐI | Ngao / sò |
| 普通 | ふつう | PHỔ THÔNG | Bình thường |
| 採用 | さいよう | THÁI DỤNG | Tuyển dụng |
| 従業員 | じゅうぎょういん | TÒNG NGHIỆP VIÊN | Nhân viên |
| 真面目 | まじめ | CHÂN DIỆN MỤC | Tận tâm |
| 手土産 | てみやげ | THỦ THỔ SẢN | Quà nhỏ |
| 気遣い | きづかい | KHÍ KHIỂN | Chu đáo |
| 誇り | ほこり | KHỎA | Tự hào |
| 当たる | あたる | ĐƯƠNG | Tương ứng |
| 仏教 | ぶっきょう | PHẬT GIÁO | Phật giáo |
| 行事 | ぎょうじ | HÀNH SỰ | Lễ / sự kiện |
| 御朱印 | ごしゅいん | NGỰ CHU ẤN | Dấu chùa |
| 大仏殿 | だいぶつでん | ĐẠI PHẬT ĐIỆN | Điện Đại Phật |
| 南大門 | なんだいもん | NAM ĐẠI MÔN | Cổng Nam Đại Môn |
| 鹿せんべい | しかせんべい | LỘC TIÊN BỐI | Bánh nai |
| 先祖 | せんぞ | TIÊN TỔ | Tổ tiên |
| 浴衣 | ゆかた | DỤC Y | Áo yukata |
| 盆踊り | ぼんおどり | BỒN DŨNG | Múa Obon |
| 輪 | わ | LUÂN | Vòng tròn |
| 似合う | にあう | TỰ HỢP | Hợp / vừa |
| 夫妻 | ふさい | PHU THÊ | Vợ chồng |
| 感激 | かんげき | CẢM KÍCH | Cảm động |
| 機械 | きかい | CƠ GIỚI | Máy móc |
| 技術者 | ぎじゅつしゃ | KỸ THUẬT GIẢ | Kỹ sư |
| 受験票 | じゅけんひょう | THỤ NGHIỆM PHIẾU | Phiếu thi |
| 寺 | てら | TỰ | Chùa |
| 公園 | こうえん | CÔNG VIÊN | Công viên |
| 鹿 | しか | LỘC | Nai |', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000008, 800000020, NULL, 'markdown_book', 'T8. Ôn thi N2 và EJU đợt 2 (N2・EJU対策)', '# Sách du học sinh tiếng Nhật · T8. Ôn thi N2 và EJU đợt 2 (N2・EJU対策)

> **Mục tiêu nhân vật:** Đại 21 tuổi, 7-12/2025, năm 2 trường tiếng. Thi N2 (7/2025), ôn cường độ cao 8-10/2025, thi EJU đợt 2 (11/2025), chờ kết quả tới 12/2025. Học các mẫu hội thoại tiếng Nhật của thí sinh: (1) đăng ký môn thi + hỏi quy chế `〜の出願はいつまでですか・必要書類は何ですか`, (2) hỏi sensei về kỹ thuật làm bài `〜のコツを教えていただけませんか`, (3) trao đổi với bạn cùng học khi kẹt `この<ruby>問題<rt>もんだい</rt></ruby>、どう<ruby>解<rt>と</rt></ruby>いた?`, (4) giao tiếp tại phòng thi `〜してもよろしいですか・お手洗いに行ってもいいですか`, (5) phản hồi sau mock + đặt mục tiêu `次回は〜点を目指します`, (6) báo tin kết quả với gia đình + sensei `おかげさまで〜に合格しました`.

---

## Bối cảnh

Tháng 7/2025 thi N2 (180 phút, đạt nếu tổng ≥ 90/180 và mỗi phần ≥ 19/60). EJU đợt 1 đã thi 6/2025 được 480/800 — thiếu 70 so với ngưỡng đỗ ĐH Osaka. Phải thi lại EJU đợt 2 (11/2025), mục tiêu ≥ 550. Mock cuối tháng 10 đạt 555. Đại học 4 tiếng/ngày: sáng 6-8h toán + tổng hợp xã hội (総合科目), đêm 22-24h tiếng Nhật. Linh học N4, Tuấn học N3 cùng. Chương này tập trung các mẫu câu **đăng ký thi-hỏi quy chế, xin sensei dạy mẹo làm bài, phòng thi giao tiếp lịch sự, báo kết quả với người ơn**.

---

## Tình huống 1 — Phòng giáo viên · 25/6/2025 16:00, hỏi quy chế N2

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します、<ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>。<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>のN2<ruby>受験<rt>じゅけん</rt></ruby>のことで<ruby>伺<rt>うかが</rt></ruby>いたいんですが。<br>*(Em xin phép cô Yamada. Em muốn hỏi về kỳ N2 tháng 7 ạ.)* |
| Yamada | はい、どうぞ。<br>*(Em hỏi đi.)* |
| Đại | <ruby>出願<rt>しゅつがん</rt></ruby>はいつまででしょうか。<ruby>必要<rt>ひつよう</rt></ruby><ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でしょうか。<br>*(Nộp hồ sơ đến hạn nào ạ? Giấy tờ cần là gì ạ?)* |
| Yamada | <ruby>出願<rt>しゅつがん</rt></ruby>は<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>5<rt>ご</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>まででした。もう<ruby>済<rt>す</rt></ruby>ませましたか?<br>*(Hạn từ 15/4 đến 15/5. Em xong chưa?)* |
| Đại | はい、<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>末<rt>まつ</rt></ruby>に<ruby>済<rt>す</rt></ruby>ませました。<ruby>受験票<rt>じゅけんひょう</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby><ruby>届<rt>とど</rt></ruby>く<ruby>予定<rt>よてい</rt></ruby>です。<br>*(Vâng, em nộp cuối tháng 4 rồi. Phiếu thi tuần sau sẽ đến ạ.)* |
| Yamada | <ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>しておいてください。<ruby>総合点<rt>そうごうてん</rt></ruby><ruby>90<rt>きゅうじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>、<ruby>各<rt>かく</rt></ruby><ruby>科目<rt>かもく</rt></ruby><ruby>19<rt>じゅうきゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>です。<br>*(Em nhớ kiểm tra tiêu chuẩn đỗ. Tổng ≥ 90 và mỗi phần ≥ 19 điểm.)* |
| Đại | はい。<ruby>言語知識<rt>げんごちしき</rt></ruby>・<ruby>読解<rt>どっかい</rt></ruby><ruby>105<rt>ひゃくご</rt></ruby><ruby>分<rt>ふん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby><ruby>50<rt>ごじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>ですね。<br>*(Vâng. Kiến thức ngôn ngữ + đọc hiểu 105 phút, nghe 50 phút phải không ạ.)* |
| Yamada | そうです。<ruby>合計<rt>ごうけい</rt></ruby><ruby>180<rt>ひゃくはちじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>満点<rt>まんてん</rt></ruby>です。<br>*(Đúng. Tổng 180 điểm tối đa.)* |

---

## Tình huống 2 — Phòng tự học · 30/6/2025 21:00, xin Yamada dạy mẹo đọc hiểu

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えていただけませんか?<ruby>長文<rt>ちょうぶん</rt></ruby>で<ruby>時間<rt>じかん</rt></ruby>が<ruby>足<rt>た</rt></ruby>りないんです。<br>*(Cô ơi, cô dạy em mẹo đọc hiểu được không ạ? Bài dài em không đủ thời gian.)* |
| Yamada | コツは<ruby>3<rt>みっ</rt></ruby>つあります。まず、<ruby>本文<rt>ほんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>む<ruby>前<rt>まえ</rt></ruby>に<ruby>設問<rt>せつもん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に<ruby>読<rt>よ</rt></ruby>む。<br>*(Có 3 mẹo. Đầu tiên: đọc câu hỏi trước khi đọc bài.)* |
| Đại | <ruby>設問<rt>せつもん</rt></ruby>を<ruby>先<rt>さき</rt></ruby>に、ですか。<br>*(Đọc câu hỏi trước ạ.)* |
| Yamada | はい。<ruby>何<rt>なに</rt></ruby>を<ruby>聞<rt>き</rt></ruby>かれるか<ruby>把握<rt>はあく</rt></ruby>してから<ruby>本文<rt>ほんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むと、<ruby>関連<rt>かんれん</rt></ruby>する<ruby>箇所<rt>かしょ</rt></ruby>がすぐ<ruby>見<rt>み</rt></ruby>つかります。<br>*(Đúng. Nắm trước người ta hỏi gì rồi đọc bài, chỗ liên quan sẽ thấy ngay.)* |
| Yamada | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、「<ruby>接続詞<rt>せつぞくし</rt></ruby>」に<ruby>印<rt>しるし</rt></ruby>をつける。「しかし」「だから」「つまり」など。<br>*(Hai: gạch dấu các từ nối — "しかし", "だから", "つまり"...)* |
| Đại | <ruby>接続詞<rt>せつぞくし</rt></ruby>は<ruby>論理<rt>ろんり</rt></ruby>の<ruby>方向<rt>ほうこう</rt></ruby>を<ruby>示<rt>しめ</rt></ruby>すからですね。<br>*(Vì từ nối chỉ ra hướng lập luận đúng không ạ.)* |
| Yamada | <ruby>正解<rt>せいかい</rt></ruby>。<ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>分<rt>わ</rt></ruby>からない<ruby>単語<rt>たんご</rt></ruby>でも<ruby>慌<rt>あわ</rt></ruby>てない。<ruby>前後<rt>ぜんご</rt></ruby>の<ruby>文<rt>ぶん</rt></ruby>で<ruby>意味<rt>いみ</rt></ruby>を<ruby>推測<rt>すいそく</rt></ruby>します。<br>*(Đúng rồi. Ba: gặp từ không biết cũng đừng hoảng. Đoán nghĩa từ câu trước-sau.)* |
| Đại | はい、<ruby>練習<rt>れんしゅう</rt></ruby>します。ありがとうございました!<br>*(Vâng, em luyện. Em cảm ơn cô ạ!)* |

---

## Tình huống 3 — Phòng thi N2 · 6/7/2025 9:25, giám thị phổ biến

*Phòng 80 thí sinh. Bàn xếp 4 dãy. Đại ngồi hàng 3, ghế số 17.*

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>受験票<rt>じゅけんひょう</rt></ruby>と<ruby>身分証明書<rt>みぶんしょうめいしょ</rt></ruby>を<ruby>机<rt>つくえ</rt></ruby>の<ruby>右上<rt>みぎうえ</rt></ruby>に<ruby>置<rt>お</rt></ruby>いてください。<br>*(Đặt phiếu thi và CMND ở góc trên bên phải bàn.)* |
| Đại | (chuẩn bị) (tiếng Việt, độc thoại có ý giao tiếp với bản thân) Bùa Shitennoji trong túi áo. Yên tâm. |
| Giám thị | <ruby>携帯<rt>けいたい</rt></ruby><ruby>電話<rt>でんわ</rt></ruby>は<ruby>電源<rt>でんげん</rt></ruby>を<ruby>切<rt>き</rt></ruby>って、カバンの<ruby>中<rt>なか</rt></ruby>に<ruby>入<rt>い</rt></ruby>れてください。<br>*(Tắt điện thoại, cho vào cặp.)* |
| Đại | (giơ tay) すみません、<ruby>試験<rt>しけん</rt></ruby><ruby>前<rt>まえ</rt></ruby>にお<ruby>手洗<rt>てあら</rt></ruby>いに<ruby>行<rt>い</rt></ruby>ってもよろしいですか?<br>*(Xin lỗi, trước khi thi em đi vệ sinh được không ạ?)* |
| Giám thị | はい、<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>40<rt>よんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>までに<ruby>戻<rt>もど</rt></ruby>ってください。<br>*(Được, quay lại trước 9:40 nhé.)* |
| Đại | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |

---

## Tình huống 4 — Hành lang ngoài phòng thi · 6/7/2025 12:35, nghỉ trưa với bạn cùng học

| Vai | Lời thoại |
|---|---|
| Đại | (gặp Yifan) おつかれ! <ruby>午前<rt>ごぜん</rt></ruby>どうだった?<br>*(Mệt rồi! Sáng thế nào?)* |
| Yifan | <ruby>読解<rt>どっかい</rt></ruby>がきつかった。<ruby>問題<rt>もんだい</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>長文<rt>ちょうぶん</rt></ruby>、どう<ruby>解<rt>と</rt></ruby>いた?<br>*(Đọc hiểu căng. Bài số 10 dài, cậu giải sao?)* |
| Đại | あの<ruby>環境<rt>かんきょう</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>の<ruby>文<rt>ぶん</rt></ruby>? <ruby>4<rt>よん</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>選択肢<rt>せんたくし</rt></ruby>にした。「しかし」の<ruby>後<rt>あと</rt></ruby>がキーだったよね。<br>*(Bài về vấn đề môi trường đúng không? Tớ chọn đáp án 4. Sau từ "しかし" mới là key đúng không?)* |
| Yifan | あ! それか! <ruby>俺<rt>おれ</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>にした...<br>*(À! Đúng rồi! Tớ chọn đáp án 2...)* |
| Đại | まだ<ruby>聴解<rt>ちょうかい</rt></ruby>があるから<ruby>気<rt>き</rt></ruby>にしないで。<ruby>聴解<rt>ちょうかい</rt></ruby>で<ruby>取<rt>と</rt></ruby>り<ruby>戻<rt>もど</rt></ruby>そう。<br>*(Còn phần nghe nữa mà đừng lo. Lấy lại điểm bằng nghe đi.)* |
| Yifan | そうだね。<ruby>聴解<rt>ちょうかい</rt></ruby>は<ruby>得意<rt>とくい</rt></ruby>。<br>*(Ừ. Nghe tớ giỏi.)* |
| Đại | お<ruby>弁当<rt>べんとう</rt></ruby><ruby>食<rt>た</rt></ruby>べてエネルギー<ruby>補給<rt>ほきゅう</rt></ruby>しよう。<br>*(Ăn cơm hộp nạp năng lượng đi.)* |

---

## Tình huống 5 — Phòng ký túc · 6/7/2025 19:00, gọi điện Mai sau khi thi xong

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mai! Thi xong rồi. |
| Mai | (tiếng Việt) Sao anh? Làm tốt không? |
| Đại | (tiếng Việt) Phần nghe ổn, đoán tầm 45-50/60. Đọc hiểu năm ăn năm thua. Từ vựng + ngữ pháp khoảng 40/60. Tính ra tầm 125-135. |
| Mai | (tiếng Việt) Mốc đỗ 90 đúng không? Vậy là chắc đỗ rồi anh. |
| Đại | (tiếng Việt) Chắc 95%. Nhưng phải có mỗi phần ≥ 19/60 nữa. Đọc hiểu anh hơi lo. |
| Mai | (tiếng Việt) Bao giờ có kết quả? |
| Đại | (tiếng Việt) Giữa tháng 8. Còn 5 tuần. Bây giờ anh chuyển sang ôn EJU đợt 2. |
| Mai | (tiếng Việt) Cố lên anh. Em đi ngủ đây. |
| Đại | (tiếng Việt) Yêu em. |

---

## Tình huống 6 — Phòng tự học · 5/8/2025 21:00, lập kế hoạch ôn EJU với Linh + Tuấn

*Bảng trắng có chia 3 môn. Đại đứng vẽ. Linh và Tuấn ngồi ghi chép.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>EJUは<ruby>480<rt>よんひゃくはちじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<ruby>大阪大<rt>おおさかだい</rt></ruby>のラインは<ruby>550<rt>ごひゃくごじゅう</rt></ruby>。<ruby>残<rt>のこ</rt></ruby>り<ruby>70<rt>ななじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(EJU đợt 1 em được 480. Ngưỡng ĐH Osaka là 550. Còn thiếu 70 điểm.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>で<ruby>70<rt>ななじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>上<rt>あ</rt></ruby>げるんですか?<br>*(3 tháng nâng 70 điểm ạ?)* |
| Đại | <ruby>科目<rt>かもく</rt></ruby><ruby>別<rt>べつ</rt></ruby>に<ruby>分解<rt>ぶんかい</rt></ruby>すると<ruby>現実的<rt>げんじつてき</rt></ruby>。<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby><ruby>110<rt>ひゃくじゅう</rt></ruby>→<ruby>150<rt>ひゃくごじゅう</rt></ruby>、+<ruby>40<rt>よんじゅう</rt></ruby>。<ruby>数学<rt>すうがく</rt></ruby><ruby>150<rt>ひゃくごじゅう</rt></ruby>→<ruby>180<rt>ひゃくはちじゅう</rt></ruby>、+<ruby>30<rt>さんじゅう</rt></ruby>。<ruby>日本語<rt>にほんご</rt></ruby>は<ruby>横<rt>よこ</rt></ruby>ばい<ruby>想定<rt>そうてい</rt></ruby>。<br>*(Phân theo môn thì khả thi. Tổng hợp 110 → 150 (+40), Toán 150 → 180 (+30), tiếng Nhật giữ nguyên.)* |
| Tuấn | <ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>何時間<rt>なんじかん</rt></ruby><ruby>勉強<rt>べんきょう</rt></ruby>しますか?<br>*(Anh học một ngày mấy tiếng?)* |
| Đại | <ruby>朝<rt>あさ</rt></ruby><ruby>6<rt>ろく</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>8<rt>はち</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>数学<rt>すうがく</rt></ruby>と<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby>。<ruby>夜<rt>よる</rt></ruby><ruby>22<rt>にじゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>24<rt>にじゅうよ</rt></ruby><ruby>時<rt>じ</rt></ruby>、<ruby>日本語<rt>にほんご</rt></ruby>と<ruby>記述<rt>きじゅつ</rt></ruby>。<ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>4<rt>よ</rt></ruby><ruby>時間<rt>じかん</rt></ruby>。<br>*(Sáng 6-8h toán + tổng hợp. Đêm 22-24h tiếng Nhật + viết. 4 tiếng/ngày.)* |
| Linh | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>続<rt>つづ</rt></ruby>けたら<ruby>360<rt>さんびゃくろくじゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby>ですね...<br>*(3 tháng liên tục là 360 tiếng cơ ạ.)* |
| Đại | できる。スピーチ<ruby>大会<rt>たいかい</rt></ruby>と<ruby>学校祭<rt>がっこうさい</rt></ruby>でできたから、これもできる。<br>*(Làm được. Đã vượt qua thi hùng biện với lễ hội rồi, cái này cũng làm được.)* |

---

## Tình huống 7 — Phòng giáo viên · 15/8 14:00, hỏi mẹo viết 記述

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、EJUの<ruby>記述<rt>きじゅつ</rt></ruby>のコツを<ruby>教<rt>おし</rt></ruby>えていただけませんか? <ruby>第<rt>だい</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>は<ruby>35<rt>さんじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>/<ruby>50<rt>ごじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<br>*(Cô Yamada, cô dạy em mẹo viết EJU không ạ? Đợt 1 em được 35/50.)* |
| Yamada | <ruby>記述<rt>きじゅつ</rt></ruby>は<ruby>構成<rt>こうせい</rt></ruby>が<ruby>命<rt>いのち</rt></ruby>です。<ruby>序論<rt>じょろん</rt></ruby>・<ruby>本論<rt>ほんろん</rt></ruby>・<ruby>結論<rt>けつろん</rt></ruby>の<ruby>三<rt>さん</rt></ruby><ruby>段構成<rt>だんこうせい</rt></ruby>を<ruby>必<rt>かなら</rt></ruby>ず<ruby>守<rt>まも</rt></ruby>ってください。<br>*(Viết EJU thì bố cục là mạng. Phải giữ 3 đoạn: mở-thân-kết.)* |
| Đại | <ruby>序論<rt>じょろん</rt></ruby>には<ruby>何<rt>なに</rt></ruby>を<ruby>書<rt>か</rt></ruby>けばいいですか?<br>*(Mở bài viết gì ạ?)* |
| Yamada | <ruby>賛成<rt>さんせい</rt></ruby>か<ruby>反対<rt>はんたい</rt></ruby>か、<ruby>自分<rt>じぶん</rt></ruby>の<ruby>立場<rt>たちば</rt></ruby>を<ruby>明確<rt>めいかく</rt></ruby>にする。<ruby>本論<rt>ほんろん</rt></ruby>では<ruby>理由<rt>りゆう</rt></ruby>を<ruby>2<rt>ふた</rt></ruby>つ。それぞれに<ruby>具体例<rt>ぐたいれい</rt></ruby>。<br>*(Khẳng định lập trường — đồng ý hay phản đối. Thân bài: 2 lý do, mỗi lý do một ví dụ cụ thể.)* |
| Đại | <ruby>具体例<rt>ぐたいれい</rt></ruby>は<ruby>個人<rt>こじん</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>でいいですか?<br>*(Ví dụ cụ thể có thể là trải nghiệm cá nhân không ạ?)* |
| Yamada | <ruby>良<rt>よ</rt></ruby>い。むしろ<ruby>説得力<rt>せっとくりょく</rt></ruby>が<ruby>増<rt>ま</rt></ruby>す。<ruby>結論<rt>けつろん</rt></ruby>では<ruby>立場<rt>たちば</rt></ruby>を<ruby>再<rt>さい</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>し、<ruby>少<rt>すこ</rt></ruby>し<ruby>将来<rt>しょうらい</rt></ruby>への<ruby>展望<rt>てんぼう</rt></ruby>を<ruby>加<rt>くわ</rt></ruby>えるとプラスです。<br>*(Tốt — còn tăng tính thuyết phục. Kết bài khẳng định lại lập trường, thêm chút triển vọng tương lai là cộng điểm.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>3<rt>さん</rt></ruby><ruby>段構成<rt>だんこうせい</rt></ruby>、<ruby>立場<rt>たちば</rt></ruby><ruby>明確<rt>めいかく</rt></ruby>、<ruby>具体例<rt>ぐたいれい</rt></ruby>、<ruby>展望<rt>てんぼう</rt></ruby>。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>書<rt>か</rt></ruby>いて<ruby>添削<rt>てんさく</rt></ruby>していただけますか?<br>*(Em hiểu. 3 đoạn, lập trường rõ, ví dụ cụ thể, triển vọng. Mỗi tuần em viết 1 bài, cô chữa giúp em được không?)* |
| Yamada | <ruby>受<rt>う</rt></ruby>けて<ruby>立<rt>た</rt></ruby>ちます。<br>*(Cô nhận.)* |

---

## Tình huống 8 — Quán cà phê · 22/8/2025 19:00, Đại trao đổi câu khó với Yifan

*Quán cà phê Komeda, 2 bàn ghép. Sách EJU mở.*

| Vai | Lời thoại |
|---|---|
| Đại | この<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby><ruby>32<rt>さんじゅうに</rt></ruby><ruby>番<rt>ばん</rt></ruby>、どう<ruby>解<rt>と</rt></ruby>いた? <ruby>1956<rt>せんきゅうひゃくごじゅうろく</rt></ruby><ruby>年<rt>ねん</rt></ruby>の<ruby>日<rt>にっ</rt></ruby>ソ<ruby>共同<rt>きょうどう</rt></ruby><ruby>宣言<rt>せんげん</rt></ruby>の<ruby>意義<rt>いぎ</rt></ruby>。<br>*(Câu 32 tổng hợp này cậu giải sao? Ý nghĩa Tuyên ngôn chung Nhật-Xô 1956.)* |
| Yifan | <ruby>俺<rt>おれ</rt></ruby>は<ruby>選択肢<rt>せんたくし</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>番<rt>ばん</rt></ruby>。<ruby>国交<rt>こっこう</rt></ruby><ruby>回復<rt>かいふく</rt></ruby>と<ruby>国連<rt>こくれん</rt></ruby><ruby>加盟<rt>かめい</rt></ruby>。<br>*(Tớ chọn đáp án 3 — phục hồi quan hệ ngoại giao và gia nhập LHQ.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby>もそれ! <ruby>問題<rt>もんだい</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby><ruby>番<rt>ばん</rt></ruby>の<ruby>需要<rt>じゅよう</rt></ruby><ruby>供給<rt>きょうきゅう</rt></ruby>のグラフ、<ruby>分<rt>わ</rt></ruby>かった?<br>*(Tớ cũng chọn cái đó! Câu 40 đồ thị cung cầu, hiểu chưa?)* |
| Yifan | グラフの<ruby>移動<rt>いどう</rt></ruby>が<ruby>逆<rt>ぎゃく</rt></ruby>で<ruby>混乱<rt>こんらん</rt></ruby>した。<ruby>需要<rt>じゅよう</rt></ruby><ruby>曲線<rt>きょくせん</rt></ruby>が<ruby>左<rt>ひだり</rt></ruby>に<ruby>動<rt>うご</rt></ruby>くと<ruby>価格<rt>かかく</rt></ruby><ruby>下<rt>さ</rt></ruby>がる、で<ruby>合<rt>あ</rt></ruby>ってる?<br>*(Đồ thị di chuyển ngược tớ rối. Đường cầu dịch trái thì giá giảm, đúng không?)* |
| Đại | <ruby>合<rt>あ</rt></ruby>ってる。<ruby>需要<rt>じゅよう</rt></ruby><ruby>減<rt>へ</rt></ruby>る → <ruby>価格<rt>かかく</rt></ruby><ruby>下<rt>さ</rt></ruby>がる、<ruby>量<rt>りょう</rt></ruby>も<ruby>減<rt>へ</rt></ruby>る。<ruby>選択肢<rt>せんたくし</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>番<rt>ばん</rt></ruby>だね。<br>*(Đúng. Cầu giảm → giá giảm, lượng cũng giảm. Đáp án 2 nhỉ.)* |
| Yifan | <ruby>俺<rt>おれ</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>番<rt>ばん</rt></ruby>にしてた...<ruby>復習<rt>ふくしゅう</rt></ruby>するわ。<br>*(Tớ chọn 4 rồi... Tớ ôn lại.)* |
| Đại | <ruby>経済<rt>けいざい</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>が<ruby>教<rt>おし</rt></ruby>えるよ。お<ruby>父<rt>とう</rt></ruby>さんが<ruby>機械<rt>きかい</rt></ruby><ruby>技術者<rt>ぎじゅつしゃ</rt></ruby>だから<ruby>家<rt>いえ</rt></ruby>でよく<ruby>経済<rt>けいざい</rt></ruby>の<ruby>話<rt>はなし</rt></ruby>を<ruby>聞<rt>き</rt></ruby>いていた。<br>*(Mảng kinh tế tớ chỉ cho. Bố tớ là kỹ sư cơ khí, ở nhà hay nói chuyện kinh tế.)* |
| Yifan | <ruby>助<rt>たす</rt></ruby>かる! <ruby>俺<rt>おれ</rt></ruby>は<ruby>歴史<rt>れきし</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>を<ruby>教<rt>おし</rt></ruby>える。<br>*(Cứu mạng! Tớ chỉ lại mảng lịch sử cho.)* |

---

## Tình huống 9 — Phòng giáo viên · 28/10/2025 15:00, kết quả mock + đặt mục tiêu

| Vai | Lời thoại |
|---|---|
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>模試<rt>もし</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>です。<br>*(Đại, kết quả thi thử.)* |
| Đại | (cầm tờ) ...<br>*(...)* |
| Yamada | <ruby>日本語<rt>にほんご</rt></ruby><ruby>245<rt>にひゃくよんじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>/<ruby>400<rt>よんひゃく</rt></ruby>、<ruby>記述<rt>きじゅつ</rt></ruby><ruby>40<rt>よんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby>/<ruby>50<rt>ごじゅう</rt></ruby>。<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby><ruby>135<rt>ひゃくさんじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>/<ruby>200<rt>にひゃく</rt></ruby>。<ruby>数学<rt>すうがく</rt></ruby>コース<ruby>1<rt>いち</rt></ruby><ruby>175<rt>ひゃくななじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>/<ruby>200<rt>にひゃく</rt></ruby>。<ruby>合計<rt>ごうけい</rt></ruby><ruby>555<rt>ごひゃくごじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>。<br>*(Nhật 245/400, viết 40/50. Tổng hợp 135/200. Toán Cours 1: 175/200. Tổng 555.)* |
| Đại | <ruby>555<rt>ごひゃくごじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>! <ruby>大阪大<rt>おおさかだい</rt></ruby>のラインを<ruby>超<rt>こ</rt></ruby>えました!<br>*(555 điểm! Vượt ngưỡng ĐH Osaka rồi ạ!)* |
| Yamada | はい。ただ、<ruby>本番<rt>ほんばん</rt></ruby>は<ruby>緊張<rt>きんちょう</rt></ruby>で<ruby>10<rt>じゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>から<ruby>20<rt>にじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>下<rt>さ</rt></ruby>がるのが<ruby>普通<rt>ふつう</rt></ruby>です。<ruby>安全圏<rt>あんぜんけん</rt></ruby>に<ruby>入<rt>はい</rt></ruby>るために、もう<ruby>20<rt>にじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>上<rt>あ</rt></ruby>げましょう。<br>*(Vâng. Nhưng thi thật do hồi hộp thường tụt 10-20 điểm. Để vào vùng an toàn, nâng thêm 20 điểm nữa.)* |
| Đại | <ruby>次回<rt>じかい</rt></ruby>は<ruby>575<rt>ごひゃくななじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>を<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Đợt sau em nhắm 575 điểm.)* |
| Yamada | <ruby>弱点<rt>じゃくてん</rt></ruby>は<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby>の<ruby>経済<rt>けいざい</rt></ruby><ruby>分野<rt>ぶんや</rt></ruby>と<ruby>地理<rt>ちり</rt></ruby>です。あと<ruby>2<rt>に</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>、そこを<ruby>集中<rt>しゅうちゅう</rt></ruby><ruby>的<rt>てき</rt></ruby>に。<br>*(Điểm yếu là mảng kinh tế và địa lý trong tổng hợp. 2 tuần nữa tập trung vào đó.)* |
| Đại | はい!<br>*(Vâng!)* |

---

## Tình huống 10 — Phòng thi EJU 2 · 9/11/2025 9:25, xin phép giám thị

*Hội trường Osaka Kokusai Koryu Center. 200 thí sinh.*

| Vai | Lời thoại |
|---|---|
| Giám thị | <ruby>日本語<rt>にほんご</rt></ruby><ruby>記述<rt>きじゅつ</rt></ruby>の<ruby>試験<rt>しけん</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>30<rt>さんじゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>です。<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Phần Viết tiếng Nhật 30 phút. Bắt đầu.)* |
| Đại | (tay sờ túi áo — bùa Shitennoji bác Tony tặng vẫn ở đó. Mở đề. Đề: 「日本に来てから印象に残ったこと」 — Điều ấn tượng nhất khi sang Nhật.) |
| Đại | (viết: 3 đoạn — mở: "Tôi xin viết về một năm homestay nhà Tanaka và cuộc thi hùng biện." Thân 1: nhà Tanaka như gia đình thứ hai. Thân 2: cuộc thi hùng biện hạng 2. Kết: triển vọng vào ĐH Osaka.)<br> |
| (28 phút sau, đặt bút) | <br> |
| Giám thị | <ruby>終了<rt>しゅうりょう</rt></ruby>です。<ruby>用紙<rt>ようし</rt></ruby>を<ruby>裏返<rt>うらがえ</rt></ruby>してください。<br>*(Kết thúc. Lật giấy xuống.)* |
| Đại | (giơ tay) すみません、<ruby>次<rt>つぎ</rt></ruby>の<ruby>科目<rt>かもく</rt></ruby><ruby>前<rt>まえ</rt></ruby>にお<ruby>手洗<rt>てあら</rt></ruby>いに<ruby>行<rt>い</rt></ruby>ってもよろしいでしょうか?<br>*(Xin lỗi, trước môn tiếp em đi vệ sinh được không ạ?)* |
| Giám thị | はい、<ruby>10<rt>じゅっ</rt></ruby><ruby>分<rt>ぷん</rt></ruby>以内に<ruby>戻<rt>もど</rt></ruby>ってください。<br>*(Được, quay lại trong 10 phút.)* |

---

## Tình huống 11 — Hành lang · 9/11/2025 12:35, nghỉ trưa với Linh + Tuấn (đến cổ vũ)

*Linh + Tuấn cầm 3 chai trà ấm. Đại bước ra từ hội trường, mặt đỏ vì căng.*

| Vai | Lời thoại |
|---|---|
| Linh | <ruby>先輩<rt>せんぱい</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れ<ruby>様<rt>さま</rt></ruby>! お<ruby>茶<rt>ちゃ</rt></ruby>とおにぎりです。<br>*(Anh ơi, anh mệt rồi! Trà với cơm nắm ạ.)* |
| Đại | (tiếng Việt) Trời, hai đứa em sang tận đây à? |
| Tuấn | (tiếng Việt) Tụi em cổ vũ. Anh thấy thế nào? |
| Đại | (tiếng Việt) Phần Viết ổn — viết về nhà Tanaka và hùng biện. Đọc hiểu hơi dài, làm vừa kịp. Còn tổng hợp + toán chiều nay. |
| Linh | (tiếng Việt) Mục tiêu 575 đúng không anh? Mock anh được 555 rồi. |
| Đại | (tiếng Việt) Ừ. Yamada-sensei dặn nâng thêm 20 điểm để vào vùng an toàn. |
| Tuấn | (tiếng Việt) Bùa Shitennoji vẫn còn không anh? |
| Đại | (tiếng Việt) Còn. (sờ túi) Bác Tony tặng đợt thi hùng biện. Đi thi nào cũng đeo. |
| Linh | (tiếng Việt) Chiều tổng hợp 80 phút, toán 80 phút. Anh ăn cơm nắm này lấy năng lượng đi. |
| Đại | (tiếng Việt) Cảm ơn hai đứa em. Đi vào nhé. |

---

## Tình huống 12 — Lawson · 30/11/2025 19:30, Suzuki hỏi thi xong

| Vai | Lời thoại |
|---|---|
| Suzuki | ダイ<ruby>君<rt>くん</rt></ruby>、EJUと N2、<ruby>結果<rt>けっか</rt></ruby>はどうだった?<br>*(Đại, EJU và N2 kết quả thế nào?)* |
| Đại | N2は<ruby>合格<rt>ごうかく</rt></ruby>しました! <ruby>142<rt>ひゃくよんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>でした。<br>*(N2 em đỗ rồi ạ! Được 142 điểm.)* |
| Suzuki | おお、おめでとう! <ruby>大学<rt>だいがく</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>ラインは<ruby>軽<rt>かる</rt></ruby>く<ruby>超<rt>こ</rt></ruby>えてるね。<br>*(Ô, chúc mừng! Vượt ngưỡng đại học dễ dàng rồi nhỉ.)* |
| Đại | おかげさまで。EJUは<ruby>来月<rt>らいげつ</rt></ruby><ruby>中旬<rt>ちゅうじゅん</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>です。<br>*(Nhờ mọi người ạ. EJU đến giữa tháng sau mới công bố.)* |
| Suzuki | <ruby>1<rt>いっ</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>大阪大<rt>おおさかだい</rt></ruby>の<ruby>出願<rt>しゅつがん</rt></ruby>?<br>*(Tháng 1 nộp ĐH Osaka à?)* |
| Đại | はい、<ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>5<rt>いつ</rt></ruby><ruby>日<rt>か</rt></ruby>まで。<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>下旬<rt>げじゅん</rt></ruby>に<ruby>面接<rt>めんせつ</rt></ruby>です。<br>*(Vâng, 15/1 đến 5/2. Cuối tháng 2 phỏng vấn ạ.)* |
| Suzuki | <ruby>面接<rt>めんせつ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>、<ruby>必要<rt>ひつよう</rt></ruby>なら<ruby>俺<rt>おれ</rt></ruby>が<ruby>面接官<rt>めんせつかん</rt></ruby><ruby>役<rt>やく</rt></ruby>やってあげるよ。<br>*(Cần luyện phỏng vấn thì anh đóng vai giám khảo cho.)* |
| Đại | <ruby>本当<rt>ほんとう</rt></ruby>ですか! ありがとうございます! <ruby>来月<rt>らいげつ</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Thật ạ! Em cảm ơn anh! Tháng sau em xin nhờ.)* |

---

## Tình huống 13 — Phòng giáo viên · 20/12/2025 11:00, báo kết quả EJU với Yamada

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>! EJU<ruby>第<rt>だい</rt></ruby><ruby>2<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>の<ruby>結果<rt>けっか</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました!<br>*(Cô Yamada! EJU đợt 2 ra kết quả rồi ạ!)* |
| Yamada | おお、どうでした?<br>*(Ô, thế nào?)* |
| Đại | <ruby>合計<rt>ごうけい</rt></ruby><ruby>568<rt>ごひゃくろくじゅうはち</rt></ruby><ruby>点<rt>てん</rt></ruby>!<br>*(Tổng 568 điểm!)* |
| Yamada | <ruby>素晴<rt>すば</rt></ruby>らしい! <ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>経済学部<rt>けいざいがくぶ</rt></ruby>のラインは<ruby>余裕<rt>よゆう</rt></ruby>で<ruby>超<rt>こ</rt></ruby>えています。<ruby>内訳<rt>うちわけ</rt></ruby>は?<br>*(Tuyệt vời! Ngưỡng kinh tế ĐH Osaka vượt dư rồi. Chi tiết thế nào?)* |
| Đại | <ruby>日本語<rt>にほんご</rt></ruby><ruby>252<rt>にひゃくごじゅうに</rt></ruby>、<ruby>記述<rt>きじゅつ</rt></ruby><ruby>42<rt>よんじゅうに</rt></ruby>、<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby><ruby>145<rt>ひゃくよんじゅうご</rt></ruby>、<ruby>数学<rt>すうがく</rt></ruby><ruby>171<rt>ひゃくななじゅういち</rt></ruby>。<br>*(Nhật 252, viết 42, tổng hợp 145, toán 171.)* |
| Yamada | <ruby>記述<rt>きじゅつ</rt></ruby><ruby>42<rt>よんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>は<ruby>立派<rt>りっぱ</rt></ruby>です。<ruby>三<rt>さん</rt></ruby><ruby>段構成<rt>だんこうせい</rt></ruby>が<ruby>身<rt>み</rt></ruby>についたんですね。<br>*(Viết 42 là rất đáng nể. Em đã nắm bố cục 3 đoạn rồi.)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>のおかげです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Nhờ cô đấy ạ. Em cảm ơn cô rất nhiều.)* |
| Yamada | <ruby>1<rt>いち</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>出願<rt>しゅつがん</rt></ruby>、<ruby>準備<rt>じゅんび</rt></ruby><ruby>万端<rt>ばんたん</rt></ruby>で。<ruby>志望理由書<rt>しぼうりゆうしょ</rt></ruby>は<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>金曜<rt>きんよう</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>してください。<ruby>添削<rt>てんさく</rt></ruby>します。<br>*(Tháng 1 nộp hồ sơ phải chuẩn bị kỹ. Bài chí nguyện em nộp trước thứ 6 tuần sau cho cô chữa nhé.)* |
| Đại | はい!<br>*(Vâng ạ!)* |

---

## Tình huống 14 — Phòng ký túc · 20/12/2025 22:00, gọi điện báo bố mẹ

*Đại ngồi giường, mở video call về Hà Nội. Mẹ đang dọn bàn ăn tối.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Mẹ ơi! Bố ơi! Con báo tin. |
| Mẹ | (tiếng Việt, gọi bố) Anh ơi xuống đây! Đại gọi! |
| Bố | (tiếng Việt) Sao con? Có kết quả EJU à? |
| Đại | (tiếng Việt) Vâng bố. Con được 568 điểm. Mục tiêu 575 không đạt nhưng vượt ngưỡng ĐH Osaka rất nhiều. |
| Mẹ | (tiếng Việt, khóc) Trời ơi! Con giỏi quá! |
| Bố | (tiếng Việt) N2 đỗ rồi đúng không con? |
| Đại | (tiếng Việt) Đỗ tháng 8 rồi bố. 142/180. Bây giờ tháng 1/2026 con nộp hồ sơ ĐH Osaka, tháng 2 phỏng vấn, tháng 3 có kết quả. |
| Mẹ | (tiếng Việt) Tháng 3 con về nhỉ? Mẹ đếm từng ngày. |
| Đại | (tiếng Việt) Vâng mẹ. Tháng 3 con về 2 tuần, ăn Tết muộn với gia đình rồi tháng 4 sang lại vào năm 1 đại học. |
| Bố | (tiếng Việt) Anh Suzuki bên Lawson đề nghị đóng vai phỏng vấn cho con tập đúng không? |
| Đại | (tiếng Việt) Vâng. Cô Yamada cũng dạy bài chí nguyện. Bác Tony bảo sang Tết qua Việt Nam thăm bố mẹ rồi đấy. |
| Mẹ | (tiếng Việt) Bố mẹ chuẩn bị mời bác Tony rồi. Bố nói cuối tháng 1 con thi xong thì mẹ thắp hương báo tổ tiên. |
| Đại | (tiếng Việt) Vâng mẹ. Con nhớ ngày bố từng nói "Hãy học công nghệ Nhật" — câu đó con vẫn dùng trong bài hùng biện. |
| Bố | (tiếng Việt, lặng một lúc) Tốt con. Bố tự hào về con. |
| Đại | (tiếng Việt) Vâng bố. Con yêu bố mẹ. |

---

## Đọng lại chương 8

Đại trải qua 5 tháng cao điểm thi cử: N2 tháng 7 (đỗ 132/180), ôn EJU 8-10/2025 cường độ 4 tiếng/ngày, mock 555 cuối tháng 10, thi EJU đợt 2 ngày 9/11, kết quả 568 ngày 20/12 — vượt ngưỡng ĐH Osaka. Học mẫu **`〜の出願はいつまでですか・必要書類は何ですか`** hỏi quy chế, **`〜のコツを教えていただけませんか`** xin sensei dạy mẹo làm bài (đọc hiểu 3 mẹo: đọc câu hỏi trước, gạch dấu từ nối, đoán nghĩa từ ngữ cảnh; viết 記述 — bố cục 3 đoạn, lập trường rõ, ví dụ cụ thể, triển vọng), **`〜してもよろしいですか`** xin phép giám thị đi vệ sinh, **`この問題、どう解いた?`** trao đổi đáp án với Yifan, **`次回は〜点を目指します`** đặt mục tiêu sau mock, **`おかげさまで〜に合格しました`** báo tin lễ độ với Suzuki và Yamada-sensei. Mai gặp Đại lần đầu năm 1 tháng 3/2026 sau khi đỗ ĐH Osaka.

> Từ vựng & mẫu câu chương này: 出願・必要書類・受験票・合格基準・言語知識・読解・聴解・総合点・各科目・記述・序論・本論・結論・三段構成・立場・具体例・展望・接続詞・推測・需要供給・国交回復・志望理由書・面接・安全圏・弱点・〜の出願はいつまでですか・必要書類は何ですか・〜のコツを教えていただけませんか・〜してもよろしいですか・どう解いた・次回は〜点を目指します・おかげさまで〜に合格しました

## Bí quyết chương

- **Hỏi quy chế trước khi nộp**: `〜の出願はいつまでですか・必要書類は何ですか` — đừng đoán, hỏi thẳng sensei.
- **Xin mẹo làm bài bằng keigo**: `〜のコツを教えていただけませんか` — du học sinh PHẢI hỏi sensei mẹo riêng cho từng phần. Đọc hiểu 3 mẹo, viết 記述 4 nguyên tắc.
- **Phòng thi giao tiếp lịch sự**: `〜してもよろしいですか・お手洗いに行ってもよろしいでしょうか` — phải dùng đúng dạng kính ngữ.
- **Học nhóm khi kẹt**: `この問題、どう解いた?` — bạn cùng phòng thi là tài nguyên quý. Yifan giỏi lịch sử, Đại giỏi kinh tế → đổi.
- **Sau mock đặt mục tiêu mới**: `次回は〜点を目指します` — Yamada dặn nâng 20 điểm để vào "vùng an toàn" 安全圏 vì hồi hộp thi thật mất 10-20 điểm.
- **Báo tin với người ơn**: `おかげさまで〜に合格しました` là mẫu vàng. Đại dùng với Suzuki + Yamada. Sau thành công lớn, người Nhật luôn quy công cho người giúp.
- **Bùa Shitennoji**: Yếu tố tâm lý. Đeo bùa Tony tặng đi thi hùng biện, EJU 1, N2, EJU 2 — biến đồ vật thành "anchor" giảm hồi hộp.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 必要書類 | ひつようしょるい | TẤT YẾU THƯ LOẠI | Giấy tờ cần |
| 合格基準 | ごうかくきじゅん | HỢP CÁCH CƠ CHUẨN | Tiêu chuẩn đỗ |
| 総合点 | そうごうてん | TỔNG HỢP ĐIỂM | Tổng điểm |
| 各科目 | かくかもく | CÁC KHOA MỤC | Mỗi môn |
| 言語知識 | げんごちしき | NGÔN NGỮ TRI THỨC | Kiến thức ngôn ngữ |
| コツ | — | — | Mẹo |
| 長文 | ちょうぶん | TRƯỜNG VĂN | Đoạn văn dài |
| 設問 | せつもん | THIẾT VẤN | Câu hỏi |
| 本文 | ほんぶん | BẢN VĂN | Bài đọc |
| 把握 | はあく | BẢ ÁC | Nắm |
| 接続詞 | せつぞくし | TIẾP TỤC TỪ | Từ nối |
| 論理 | ろんり | LUẬN LÝ | Lập luận |
| 推測 | すいそく | THÔI TRẮC | Đoán |
| 身分証明書 | みぶんしょうめいしょ | THÂN PHẬN CHỨNG MINH THƯ | CMND |
| 携帯電話 | けいたいでんわ | HUỀ ĐỚI ĐIỆN THOẠI | Điện thoại di động |
| 電源 | でんげん | ĐIỆN NGUYÊN | Nguồn điện |
| 手洗い | てあらい | THỦ TẨY | Vệ sinh |
| 環境 | かんきょう | HOÀN CẢNH | Môi trường |
| 選択肢 | せんたくし | TUYỂN TRẠCH CHI | Lựa chọn / đáp án |
| 補給 | ほきゅう | BỔ CẤP | Nạp |
| 分解 | ぶんかい | PHÂN GIẢI | Phân tích |
| 現実的 | げんじつてき | HIỆN THỰC ĐÍCH | Khả thi |
| 横ばい | よこばい | HOÀNH | Đi ngang / giữ nguyên |
| 想定 | そうてい | TƯỞNG ĐỊNH | Giả định |
| 序論 | じょろん | TỰ LUẬN | Mở bài |
| 本論 | ほんろん | BẢN LUẬN | Thân bài |
| 結論 | けつろん | KẾT LUẬN | Kết bài |
| 三段構成 | さんだんこうせい | TAM ĐOẠN CẤU THÀNH | Bố cục 3 đoạn |
| 具体例 | ぐたいれい | CỤ THỂ LỆ | Ví dụ cụ thể |
| 説得力 | せっとくりょく | THUYẾT ĐẮC LỰC | Sức thuyết phục |
| 展望 | てんぼう | TRIỂN VỌNG | Triển vọng |
| 需要供給 | じゅようきょうきゅう | NHU YẾU CUNG CẤP | Cung cầu |
| 曲線 | きょくせん | KHÚC TUYẾN | Đường cong |
| 価格 | かかく | GIÁ CÁCH | Giá |
| 国交回復 | こっこうかいふく | QUỐC GIAO HỒI PHỤC | Phục hồi ngoại giao |
| 国連加盟 | こくれんかめい | QUỐC LIÊN GIA MINH | Gia nhập LHQ |
| 模試 | もし | MÔ THÍ | Thi thử |
| 弱点 | じゃくてん | NHƯỢC ĐIỂM | Điểm yếu |
| 安全圏 | あんぜんけん | AN TOÀN QUYỂN | Vùng an toàn |
| 志望理由書 | しぼうりゆうしょ | CHÍ VỌNG LÝ DO THƯ | Đơn nguyện vọng |
| 中旬 | ちゅうじゅん | TRUNG TUẦN | Giữa tháng |
| 下旬 | げじゅん | HẠ TUẦN | Cuối tháng |
| 面接官 | めんせつかん | DIỆN TIẾP QUAN | Giám khảo phỏng vấn |', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000009, 800000020, NULL, 'markdown_book', 'T9. Tìm hiểu đại học (大学リサーチ)', '# Sách du học sinh tiếng Nhật · T9. Tìm hiểu đại học (大学リサーチ)

> **Mục tiêu nhân vật:** Đại (năm 2 trường tiếng, 9/2025, đang phân vân 経済学部 vs 情報科学科). Học các mẫu hội thoại tiếng Nhật khi tìm hiểu trường đại học: (1) đặt câu hỏi với cô giáo về lộ trình thi, (2) gọi điện hỏi văn phòng tuyển sinh, (3) hỏi sempai về ngành/giáo sư, (4) đối chiếu thông tin trên website, (5) đề xuất nguyện vọng với gia đình homestay, (6) trao đổi với bạn cùng phòng về so sánh trường.

---

## Bối cảnh

Tháng 9 năm 2025. Đại đã ở Nhật 17 tháng, vừa thi xong EJU đợt 1, đang học năm 2 trường tiếng Kansai Gogo Gakuin Osaka và sống ở ký túc xá du học sinh Tennoji. Sau một năm tiếp xúc với app tour guide và phát biểu contest về tech, Đại bắt đầu nghiêng từ 経済学部 sang 情報科学科. Trước khi đi Open Campus, Đại cần thu thập thông tin về các đại học vùng Kansai. Chương này tập trung các mẫu câu **「〜について教えていただけませんか」「〜はどちらがおすすめですか」「〜と〜の違いは何ですか」** dùng khi tìm hiểu trường.

---

## Tình huống 1 — Lớp tiếng Nhật · 9:30, hỏi cô Yamada bắt đầu từ đâu

*Sau giờ ngữ pháp, Đại ở lại lớp xin gặp cô Yamada — phụ trách hướng nghiệp.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>今<rt>いま</rt></ruby>ちょっとよろしいですか？<br>*(Cô Yamada, bây giờ cô có rảnh không ạ?)* |
| Yamada | はい、どうしましたか？<br>*(Được, có chuyện gì vậy?)* |
| Đại | <ruby>大学<rt>だいがく</rt></ruby><ruby>進学<rt>しんがく</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけませんか。<ruby>何<rt>なに</rt></ruby>から<ruby>始<rt>はじ</rt></ruby>めればいいか、まだよく<ruby>分<rt>わ</rt></ruby>からなくて。<br>*(Cô có thể giảng giúp em về việc lên đại học không ạ? Em vẫn chưa biết nên bắt đầu từ đâu.)* |
| Yamada | まず、<ruby>志望校<rt>しぼうこう</rt></ruby>を<ruby>3<rt>みっ</rt></ruby>つに<ruby>絞<rt>しぼ</rt></ruby>りましょう。<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>、<ruby>第<rt>だい</rt></ruby><ruby>二<rt>に</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>、<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めです。<br>*(Trước hết, hãy thu hẹp lại 3 trường nguyện vọng. NV1, NV2, và trường dự phòng.)* |
| Đại | <ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めとは？<br>*(Trường dự phòng nghĩa là gì ạ?)* |
| Yamada | <ruby>合格<rt>ごうかく</rt></ruby>する<ruby>可能性<rt>かのうせい</rt></ruby>が<ruby>高<rt>たか</rt></ruby>い<ruby>大学<rt>だいがく</rt></ruby>のことです。<ruby>万<rt>まん</rt></ruby>が<ruby>一<rt>いち</rt></ruby>に<ruby>備<rt>そな</rt></ruby>えて。<br>*(Là trường có khả năng đỗ cao. Để phòng trường hợp xấu.)* |
| Đại | なるほど。<br>*(Em hiểu rồi.)* |

---

## Tình huống 2 — Lớp tiếng Nhật · 9:45, Đại nói nguyện vọng đổi ngành

*Vẫn ở lại lớp với cô Yamada.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>実<rt>じつ</rt></ruby>は、<ruby>志望<rt>しぼう</rt></ruby><ruby>学部<rt>がくぶ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えようかと<ruby>思<rt>おも</rt></ruby>っているんです。<br>*(Thật ra em đang nghĩ đến chuyện đổi khoa nguyện vọng.)* |
| Yamada | え、<ruby>経済学部<rt>けいざいがくぶ</rt></ruby>から？<br>*(Ơ, từ khoa Kinh tế à?)* |
| Đại | はい、<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>に<ruby>変<rt>か</rt></ruby>えたいです。<ruby>去年<rt>きょねん</rt></ruby>から<ruby>少<rt>すこ</rt></ruby>しずつプログラミングを<ruby>勉強<rt>べんきょう</rt></ruby>していて、<ruby>面白<rt>おもしろ</rt></ruby>いと<ruby>思<rt>おも</rt></ruby>うようになりました。<br>*(Vâng, em muốn đổi sang khoa Khoa học máy tính. Từ năm ngoái em học lập trình từng chút, càng học càng thấy thú vị.)* |
| Yamada | それは<ruby>大<rt>おお</rt></ruby>きな<ruby>決断<rt>けつだん</rt></ruby>ですね。ご<ruby>家族<rt>かぞく</rt></ruby>には<ruby>相談<rt>そうだん</rt></ruby>しましたか？<br>*(Đó là quyết định lớn đấy. Em đã bàn với gia đình chưa?)* |
| Đại | まだです。<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>集<rt>あつ</rt></ruby>めてから<ruby>話<rt>はな</rt></ruby>すつもりです。<br>*(Chưa ạ. Em định thu thập đủ thông tin rồi mới nói.)* |
| Yamada | いい<ruby>判断<rt>はんだん</rt></ruby>です。じゃあ、<ruby>関西<rt>かんさい</rt></ruby><ruby>地域<rt>ちいき</rt></ruby>の<ruby>情報<rt>じょうほう</rt></ruby><ruby>系<rt>けい</rt></ruby><ruby>大学<rt>だいがく</rt></ruby>リストを<ruby>渡<rt>わた</rt></ruby>します。<br>*(Cách suy nghĩ tốt. Vậy cô sẽ đưa danh sách các đại học mảng CNTT vùng Kansai cho em.)* |

---

## Tình huống 3 — Phòng tự học · 13:00, đối chiếu website 3 trường

*Đại mở laptop ở phòng tự học, ngồi cạnh là Bahra cũng đang research.*

| Vai | Lời thoại |
|---|---|
| Đại | バーラさん、<ruby>大阪大<rt>おおさかだい</rt></ruby>と<ruby>神戸大<rt>こうべだい</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>ですか？<br>*(Bahra, sự khác nhau giữa ĐH Osaka và ĐH Kobe là gì vậy?)* |
| Bahra | <ruby>俺<rt>おれ</rt></ruby>も<ruby>調<rt>しら</rt></ruby>べてる。<ruby>大阪大<rt>おおさかだい</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>が<ruby>偏差値<rt>へんさち</rt></ruby><ruby>高<rt>たか</rt></ruby>い。<ruby>神戸大<rt>こうべだい</rt></ruby>はキャンパスがきれい。<br>*(Tôi cũng đang tra. ĐH Osaka có hensachi cao hơn. ĐH Kobe thì campus đẹp.)* |
| Đại | <ruby>偏差値<rt>へんさち</rt></ruby>って？<br>*(Hensachi là gì?)* |
| Bahra | <ruby>難易度<rt>なんいど</rt></ruby>の<ruby>指標<rt>しひょう</rt></ruby>。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby> 65、<ruby>神戸大<rt>こうべだい</rt></ruby><ruby>経営<rt>けいえい</rt></ruby> 62。<br>*(Chỉ số độ khó. ĐH Osaka khoa CNTT 65, ĐH Kobe khoa Quản trị 62.)* |
| Đại | EJU<ruby>合格<rt>ごうかく</rt></ruby>ラインは？<br>*(Mức điểm đỗ EJU thì sao?)* |
| Bahra | <ruby>大阪大<rt>おおさかだい</rt></ruby> 540<ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>、<ruby>神戸大<rt>こうべだい</rt></ruby> 510<ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<br>*(Osaka 540 trở lên, Kobe 510 trở lên.)* |
| Đại | <ruby>俺<rt>おれ</rt></ruby><ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>大阪大<rt>おおさかだい</rt></ruby>にしたいな。<br>*(Mình muốn NV1 là Osaka U.)* |
| Bahra | <ruby>難<rt>むずか</rt></ruby>しいけど、ダイならできるよ。<br>*(Khó đấy nhưng Đại làm được mà.)* |

---

## Tình huống 4 — Sảnh trường tiếng · 16:00, gặp sempai Rim hỏi kinh nghiệm

*Đại đứng đợi ở sảnh, gặp Rim (sempai VN năm 2, đang ôn N1 và chuẩn bị thi Kyoto U).*

| Vai | Lời thoại |
|---|---|
| Đại | リム<ruby>先輩<rt>せんぱい</rt></ruby>、すみません、<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いただけますか？<br>*(Chị Rim, xin lỗi, em xin một chút thời gian được không ạ?)* |
| Rim | うん、どうしたの？<br>*(Ừ, có chuyện gì?)* |
| Đại | <ruby>大学<rt>だいがく</rt></ruby><ruby>選<rt>えら</rt></ruby>びについて<ruby>聞<rt>き</rt></ruby>きたいんです。<ruby>先輩<rt>せんぱい</rt></ruby>はどうやって<ruby>京都大<rt>きょうとだい</rt></ruby>に<ruby>決<rt>き</rt></ruby>めましたか？<br>*(Em muốn hỏi về cách chọn trường. Chị đã quyết định chọn Kyoto U như thế nào ạ?)* |
| Rim | まず<ruby>研究室<rt>けんきゅうしつ</rt></ruby>のウェブサイトを<ruby>見<rt>み</rt></ruby>た。<ruby>興味<rt>きょうみ</rt></ruby>のある<ruby>教授<rt>きょうじゅ</rt></ruby>がいるかどうか<ruby>確<rt>たし</rt></ruby>かめて。<br>*(Trước tiên chị xem web các phòng nghiên cứu. Kiểm tra xem có giáo sư mà mình quan tâm không.)* |
| Đại | <ruby>教授<rt>きょうじゅ</rt></ruby>から<ruby>選<rt>えら</rt></ruby>ぶんですか？<br>*(Chọn từ giáo sư ạ?)* |
| Rim | そう。<ruby>大学<rt>だいがく</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>より、<ruby>誰<rt>だれ</rt></ruby>に<ruby>指導<rt>しどう</rt></ruby>してもらうかが<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Đúng. Quan trọng là ai hướng dẫn mình, chứ không phải tên trường.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em học được nhiều rồi ạ.)* |
| Rim | あと、オープンキャンパスは<ruby>絶対<rt>ぜったい</rt></ruby><ruby>行<rt>い</rt></ruby>って。<ruby>雰囲気<rt>ふんいき</rt></ruby><ruby>分<rt>わ</rt></ruby>かるから。<br>*(Và Open Campus nhất định phải đi. Để cảm nhận không khí.)* |

---

## Tình huống 5 — Lớp tự học · 19:00, hỏi lại sempai về 自然言語処理

*Đại quay lại tìm Rim ở phòng máy tính.*

| Vai | Lời thoại |
|---|---|
| Đại | リム<ruby>先輩<rt>せんぱい</rt></ruby>、もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby>いいですか？<br>*(Chị Rim, em hỏi thêm một câu được không?)* |
| Rim | どうぞ。<br>*(Ừ, hỏi đi.)* |
| Đại | <ruby>自然言語処理<rt>しぜんげんごしょり</rt></ruby>というのは、どういう<ruby>分野<rt>ぶんや</rt></ruby>ですか？<br>*(Xử lý ngôn ngữ tự nhiên là lĩnh vực gì vậy ạ?)* |
| Rim | NLP、Natural Language Processing。コンピューターに<ruby>人間<rt>にんげん</rt></ruby>の<ruby>言葉<rt>ことば</rt></ruby>を<ruby>理解<rt>りかい</rt></ruby>させる<ruby>研究<rt>けんきゅう</rt></ruby>。<br>*(NLP. Nghiên cứu để máy tính hiểu ngôn ngữ con người.)* |
| Đại | ChatGPTとか？<br>*(Như ChatGPT ấy ạ?)* |
| Rim | そう、ああいう<ruby>翻訳<rt>ほんやく</rt></ruby>や<ruby>対話<rt>たいわ</rt></ruby>システムの<ruby>基礎<rt>きそ</rt></ruby><ruby>技術<rt>ぎじゅつ</rt></ruby>。<br>*(Đúng, công nghệ nền cho dịch máy hay chatbot kiểu đó.)* |
| Đại | <ruby>大阪大<rt>おおさかだい</rt></ruby>にそれを<ruby>研究<rt>けんきゅう</rt></ruby>している<ruby>先生<rt>せんせい</rt></ruby>はいますか？<br>*(Ở Osaka U có thầy nào nghiên cứu cái đó không ạ?)* |
| Rim | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>が<ruby>有名<rt>ゆうめい</rt></ruby>。<ruby>論文<rt>ろんぶん</rt></ruby><ruby>調<rt>しら</rt></ruby>べてみて。<br>*(Thầy Inoue nổi tiếng. Em thử tra paper của thầy đi.)* |
| Đại | はい、<ruby>調<rt>しら</rt></ruby>べます！ありがとうございます。<br>*(Vâng, em sẽ tra. Cảm ơn chị!)* |

---

## Tình huống 6 — Phòng ký túc · 20:00, gọi điện văn phòng tuyển sinh Osaka U

*Đại ngồi bàn học trong phòng ký túc, bấm số điện thoại trên website Osaka U.*

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>電話<rt>でんわ</rt></ruby>をかける）<br>*(Bấm gọi.)* |
| Văn phòng | <ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>入試<rt>にゅうし</rt></ruby><ruby>事務局<rt>じむきょく</rt></ruby>でございます。<br>*(Văn phòng tuyển sinh Đại học Osaka xin nghe.)* |
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になっております。<ruby>留学生<rt>りゅうがくせい</rt></ruby>のグエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<ruby>少<rt>すこ</rt></ruby>しお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいでしょうか。<br>*(Xin chào. Em là du học sinh Nguyễn Văn Đại. Em xin hỏi một chút có được không ạ?)* |
| Văn phòng | はい、どうぞ。<br>*(Vâng, mời anh.)* |
| Đại | <ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>の<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>枠<rt>わく</rt></ruby>と<ruby>出願<rt>しゅつがん</rt></ruby><ruby>期間<rt>きかん</rt></ruby>について<ruby>教<rt>おし</rt></ruby>えていただけませんか。<br>*(Cho em hỏi về chỉ tiêu du học sinh khoa Khoa học máy tính và thời gian nộp hồ sơ ạ.)* |
| Văn phòng | <ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>枠<rt>わく</rt></ruby>は<ruby>10<rt>じゅう</rt></ruby><ruby>名<rt>めい</rt></ruby>です。<ruby>出願<rt>しゅつがん</rt></ruby>は<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>までです。<br>*(Chỉ tiêu du học sinh là 10 người. Nhận hồ sơ từ ngày 1 đến 15 tháng 12.)* |
| Đại | もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby>から<ruby>15<rt>じゅうご</rt></ruby><ruby>日<rt>にち</rt></ruby>までですね。<br>*(Em xin nhắc lại ạ. Từ 1 đến 15 tháng 12 phải không ạ?)* |
| Văn phòng | はい、そうです。<br>*(Vâng, đúng vậy.)* |
| Đại | <ruby>必要<rt>ひつよう</rt></ruby>な<ruby>書類<rt>しょるい</rt></ruby>は<ruby>何<rt>なに</rt></ruby>でしょうか。<br>*(Hồ sơ cần những giấy tờ gì ạ?)* |
| Văn phòng | <ruby>志望<rt>しぼう</rt></ruby><ruby>理由書<rt>りゆうしょ</rt></ruby>、EJU<ruby>結果<rt>けっか</rt></ruby>、JLPT<ruby>結果<rt>けっか</rt></ruby>、<ruby>高校<rt>こうこう</rt></ruby><ruby>卒業証書<rt>そつぎょうしょうしょ</rt></ruby>です。<br>*(Đơn nguyện vọng, kết quả EJU, kết quả JLPT, bằng tốt nghiệp cấp 3.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございました。<ruby>失礼<rt>しつれい</rt></ruby>いたします。<br>*(Em hiểu rồi ạ. Cảm ơn chị. Em xin phép.)* |

---

## Tình huống 7 — Bàn ăn nhà Tanaka · 19:30, xin lời khuyên homestay

*Bữa tối nhà Tony. Yumi múc canh miso, Đại đặt vấn đề.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、<ruby>相談<rt>そうだん</rt></ruby>したいことがあります。<br>*(Anh Tony, chị Yumi, em có chuyện muốn xin ý kiến.)* |
| Tony | おっ、<ruby>何<rt>なに</rt></ruby>？<ruby>真剣<rt>しんけん</rt></ruby>な<ruby>顔<rt>かお</rt></ruby>だね。<br>*(Ồ, chuyện gì? Mặt nghiêm túc thế.)* |
| Đại | <ruby>大学<rt>だいがく</rt></ruby>の<ruby>志望<rt>しぼう</rt></ruby><ruby>学部<rt>がくぶ</rt></ruby>を<ruby>変<rt>か</rt></ruby>えようと<ruby>思<rt>おも</rt></ruby>っています。<ruby>経済<rt>けいざい</rt></ruby>から<ruby>情報<rt>じょうほう</rt></ruby><ruby>科学<rt>かがく</rt></ruby>に。<br>*(Em định đổi khoa nguyện vọng. Từ Kinh tế sang Khoa học máy tính.)* |
| Yumi | <ruby>急<rt>きゅう</rt></ruby>にどうしたの？<br>*(Sao tự nhiên thế?)* |
| Đại | <ruby>去年<rt>きょねん</rt></ruby>からプログラミングを<ruby>勉強<rt>べんきょう</rt></ruby>していて、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>好<rt>す</rt></ruby>きになりました。<ruby>将来<rt>しょうらい</rt></ruby>もこの<ruby>分野<rt>ぶんや</rt></ruby>で<ruby>働<rt>はたら</rt></ruby>きたいです。<br>*(Em học lập trình từ năm ngoái, thật sự rất thích. Tương lai cũng muốn làm trong lĩnh vực này.)* |
| Tony | いいじゃない。<ruby>好<rt>す</rt></ruby>きなことをやるのが<ruby>一番<rt>いちばん</rt></ruby>。<br>*(Tốt mà. Làm việc mình thích là nhất.)* |
| Yumi | でも、ご<ruby>両親<rt>りょうしん</rt></ruby>はどう<ruby>思<rt>おも</rt></ruby>うかしら？<br>*(Nhưng bố mẹ em sẽ nghĩ thế nào nhỉ?)* |
| Đại | これから<ruby>話<rt>はな</rt></ruby>します。トニーさんはどちらがおすすめですか、<ruby>経済<rt>けいざい</rt></ruby>と<ruby>情報<rt>じょうほう</rt></ruby><ruby>科学<rt>かがく</rt></ruby>？<br>*(Em sắp nói. Anh Tony khuyên em chọn cái nào, Kinh tế hay Khoa học máy tính?)* |
| Tony | <ruby>正直<rt>しょうじき</rt></ruby>、IT<ruby>業界<rt>ぎょうかい</rt></ruby>はこれからもっと<ruby>伸<rt>の</rt></ruby>びる。<ruby>給料<rt>きゅうりょう</rt></ruby>もいいし、ベトナムと<ruby>日本<rt>にほん</rt></ruby>の<ruby>橋渡<rt>はしわた</rt></ruby>しもできるよ。<br>*(Thật lòng, ngành IT sẽ còn phát triển. Lương tốt, lại có thể làm cầu nối Việt-Nhật.)* |
| Đại | ありがとうございます。<ruby>勇気<rt>ゆうき</rt></ruby>が<ruby>出<rt>で</rt></ruby>ました。<br>*(Cảm ơn anh. Em có thêm dũng khí rồi.)* |

---

## Tình huống 8 — Phòng ký túc · 21:00, đọc paper Inoue-sensei

*Đại mở laptop, search Google Scholar tên Inoue + NLP. Nhắn LINE Rim.*

| Vai | Lời thoại |
|---|---|
| Đại | （LINE）<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>見<rt>み</rt></ruby>つけました！<br>*(Em tìm thấy paper của thầy Inoue rồi!)* |
| Rim | おっ、タイトルは？<br>*(Ồ, tên là gì?)* |
| Đại | 「<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムの<ruby>第二言語<rt>だいにげんご</rt></ruby><ruby>習得<rt>しゅうとく</rt></ruby>への<ruby>応用<rt>おうよう</rt></ruby>」2023<ruby>年<rt>ねん</rt></ruby>。<br>*(Ứng dụng hệ thống học thích nghi vào việc tiếp thu ngôn ngữ thứ hai, 2023.)* |
| Rim | ダイの<ruby>興味<rt>きょうみ</rt></ruby>とぴったりじゃん！<ruby>日本語<rt>にほんご</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>に<ruby>関係<rt>かんけい</rt></ruby>ある。<br>*(Trùng khớp với hứng thú của Đại quá! Có liên quan đến việc học tiếng Nhật.)* |
| Đại | はい、<ruby>志望<rt>しぼう</rt></ruby><ruby>理由書<rt>りゆうしょ</rt></ruby>に<ruby>引用<rt>いんよう</rt></ruby>します。<br>*(Vâng, em sẽ trích dẫn trong đơn nguyện vọng.)* |
| Rim | いいね！<ruby>教授<rt>きょうじゅ</rt></ruby>の<ruby>名前<rt>なまえ</rt></ruby>と<ruby>論文<rt>ろんぶん</rt></ruby><ruby>引用<rt>いんよう</rt></ruby>はポイント<ruby>高<rt>たか</rt></ruby>い。<br>*(Tốt đó! Trích tên giáo sư và paper là điểm cộng cao.)* |
| Đại | ありがとうございます！<br>*(Cảm ơn chị!)* |

---

## Tình huống 9 — Hành lang trường · 11:00, gặp Yifan so sánh trường tư

*Yifan (Trung Quốc, học cùng lớp B) bước cùng Đại sau giờ học.*

| Vai | Lời thoại |
|---|---|
| Yifan | ダイ、<ruby>私立<rt>しりつ</rt></ruby>と<ruby>国立<rt>こくりつ</rt></ruby>、どっちにする？<br>*(Đại, công lập hay tư thục, cậu chọn cái nào?)* |
| Đại | <ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>国立<rt>こくりつ</rt></ruby>の<ruby>大阪大<rt>おおさかだい</rt></ruby>。<ruby>授業料<rt>じゅぎょうりょう</rt></ruby><ruby>安<rt>やす</rt></ruby>いから。<br>*(NV1 mình là Osaka U công lập. Vì học phí rẻ.)* |
| Yifan | <ruby>1<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby>いくらぐらい？<br>*(Một năm khoảng bao nhiêu?)* |
| Đại | <ruby>国立<rt>こくりつ</rt></ruby>は<ruby>年<rt>ねん</rt></ruby>54<ruby>万<rt>まん</rt></ruby>。<ruby>私立<rt>しりつ</rt></ruby>は120<ruby>万<rt>まん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>。<br>*(Công lập 54 vạn/năm. Tư thục từ 120 vạn trở lên.)* |
| Yifan | <ruby>倍<rt>ばい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>か。すごい<ruby>差<rt>さ</rt></ruby>。<br>*(Hơn gấp đôi à. Chênh nhiều thật.)* |
| Đại | でも<ruby>国立<rt>こくりつ</rt></ruby>は<ruby>難<rt>むずか</rt></ruby>しい。<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めとして<ruby>私立<rt>しりつ</rt></ruby>の<ruby>関西大<rt>かんさいだい</rt></ruby>も<ruby>受<rt>う</rt></ruby>けるつもり。<br>*(Nhưng công lập khó. Mình tính lấy ĐH Kansai tư thục làm trường dự phòng.)* |
| Yifan | <ruby>奨学金<rt>しょうがくきん</rt></ruby>はもらえそう？<br>*(Có hy vọng được học bổng không?)* |
| Đại | EJU<ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>でJASSO<ruby>奨学金<rt>しょうがくきん</rt></ruby>がもらえるらしい。<br>*(Trên 240 EJU thì được học bổng JASSO.)* |

---

## Tình huống 10 — Phòng ký túc · 22:00, gọi điện về VN báo Mai

*Đại video call Mai (bạn gái ở Hà Nội, mới biết tiếng Nhật cơ bản).*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Alo anh! Sao hôm nay gọi muộn thế? |
| Đại | (tiếng Việt) Anh mới research mấy trường đại học xong. Hôm nay quyết định chính thức luôn rồi em ạ. |
| Mai | (tiếng Việt) Quyết định gì? |
| Đại | (tiếng Việt) Anh đổi nguyện vọng từ Kinh tế sang Information Science — Khoa học máy tính. Nguyện vọng 1 là Osaka U, NV2 Kobe U, dự phòng Kansai U. |
| Mai | (tiếng Việt) Trời, đổi ngành luôn á? Bố mẹ biết chưa? |
| Đại | (tiếng Việt) Chưa, cuối tuần anh gọi nói. Em nghĩ bố có ủng hộ không? |
| Mai | (tiếng Việt) Bố luôn nói "miễn con thích con học là được". Mà em thấy IT cũng hợp anh, hồi cấp 3 anh đã mê Pascal rồi. |
| Đại | (tiếng Việt) Ừ. À, hôm nay anh gọi điện văn phòng tuyển sinh Osaka U, người ta bảo nộp hồ sơ từ 1-15 tháng 12. Anh phải viết 志望理由書 — đơn nguyện vọng — 1500 chữ tiếng Nhật. |
| Mai | (tiếng Việt) Wow, 1500 chữ. Anh nhớ trích tên giáo sư vào nha, chị Rim dặn anh thế còn gì. |
| Đại | (tiếng Việt) Ừ, anh có tìm được paper của thầy Inoue về NLP rồi — "適応的学習システム". Sẽ trích vào. Cuối tháng 9 anh đi Open Campus Osaka U. |
| Mai | (tiếng Việt) Cố lên anh nhé. Em đi ngủ trước, mai 7h học. |
| Đại | (tiếng Việt) Ừ, ngủ ngon em. Anh cũng phải đọc paper tiếp. |

---

## Tình huống 11 — Lớp tiếng Nhật · 9:00 hôm sau, báo cô Yamada quyết định

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>山田<rt>やまだ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>、<ruby>決<rt>き</rt></ruby>めました。<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>基礎工学部<rt>きそこうがくぶ</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>です。<br>*(Cô Yamada, em quyết định rồi. NV1 là khoa Khoa học máy tính, Đại học Osaka.)* |
| Yamada | おお、<ruby>決断<rt>けつだん</rt></ruby><ruby>早<rt>はや</rt></ruby>かったですね。<ruby>理由<rt>りゆう</rt></ruby>は？<br>*(Ồ, quyết định nhanh nhỉ. Lý do?)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つあります。<ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のNLP<ruby>研究<rt>けんきゅう</rt></ruby>が<ruby>自分<rt>じぶん</rt></ruby>の<ruby>興味<rt>きょうみ</rt></ruby>とぴったり<ruby>合<rt>あ</rt></ruby>っています。<br>*(Có 3 lý do. Thứ nhất, nghiên cứu NLP của thầy Inoue rất khớp với hứng thú của em.)* |
| Đại | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>関西<rt>かんさい</rt></ruby>のIT<ruby>企業<rt>きぎょう</rt></ruby>が<ruby>多<rt>おお</rt></ruby>く、<ruby>就職<rt>しゅうしょく</rt></ruby>に<ruby>有利<rt>ゆうり</rt></ruby>です。<br>*(Thứ hai, vùng Kansai có nhiều công ty IT, thuận lợi xin việc.)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>大阪<rt>おおさか</rt></ruby>に<ruby>1<rt>いち</rt></ruby><ruby>年半<rt>ねんはん</rt></ruby><ruby>住<rt>す</rt></ruby>んでいるので<ruby>環境<rt>かんきょう</rt></ruby>に<ruby>慣<rt>な</rt></ruby>れています。<br>*(Thứ ba, em đã sống ở Osaka 1 năm rưỡi nên quen môi trường.)* |
| Yamada | <ruby>論理的<rt>ろんりてき</rt></ruby>でいいですね。<ruby>志望<rt>しぼう</rt></ruby><ruby>理由書<rt>りゆうしょ</rt></ruby>の<ruby>下書<rt>したが</rt></ruby>き<ruby>来週<rt>らいしゅう</rt></ruby>までに<ruby>書<rt>か</rt></ruby>けますか？<br>*(Lập luận tốt đấy. Bản nháp đơn nguyện vọng tuần sau viết xong được không?)* |
| Đại | はい、<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng, em sẽ cố gắng!)* |

---

## Tình huống 12 — Gọi điện về VN báo bố mẹ · cuối tuần · 21:00

*Đại bật video call gia đình, cả nhà ngồi quanh.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Bố mẹ ạ, con có chuyện quan trọng muốn báo. |
| Bố | (tiếng Việt) Ừ, chuyện gì? |
| Đại | (tiếng Việt) Con quyết định đổi nguyện vọng đại học, từ Kinh tế sang Khoa học máy tính. NV1 là Osaka U. |
| Mẹ | (tiếng Việt) Sao đột ngột thế con? |
| Đại | (tiếng Việt) Không đột ngột đâu mẹ. Từ năm ngoái con làm app hướng dẫn du lịch, học Python với chị Linh ở Nagoya, càng làm càng thấy thích. Hôm qua con đọc paper của một thầy bên Osaka U, đúng cái con muốn nghiên cứu. |
| Bố | (tiếng Việt) Tốt mà. Bố luôn nói con cứ học cái con thích. Khoa học máy tính giờ nhu cầu cao, lương cũng khá. |
| Mẹ | (tiếng Việt) Mức điểm có cao không con? |
| Đại | (tiếng Việt) EJU phải trên 540, JLPT phải N2. Tháng 12 năm nay con thi N2. Mức cạnh tranh 5:1, hơi căng. |
| Bố | (tiếng Việt) Con cứ cố hết sức. Đỗ thì tốt, không đỗ thì còn NV2 NV3. Bố mẹ ủng hộ. |
| Đại | (tiếng Việt) Con cảm ơn bố mẹ. Còn tuần sau con đi Open Campus Osaka U, sẽ chụp ảnh gửi về. |
| Mẹ | (tiếng Việt) Ừ con. Nhớ ăn uống đầy đủ vào nhé. |
| Đại | (tiếng Việt) Vâng. Con tạm biệt. |

---

## Đọng lại chương 9

Đại bắt đầu hành trình tìm hiểu đại học bằng cách hỏi cô Yamada **「〜について教えていただけませんか」** — xin chỉ giáo về lộ trình. Học được khái niệm **第一志望・第二志望・滑り止め**, **偏差値**, **EJU合格ライン**, sự khác biệt **国立 vs 私立** (54万 vs 120万/năm). Quan trọng nhất là lời khuyên của Rim: **「大学の名前より、誰に指導してもらうかが大事」** — chọn từ giáo sư chứ không phải chọn từ tên trường. Đại tìm được paper "適応的学習システム" của Inoue-sensei và lập tức biết sẽ trích trong **志望理由書**. Tự thực hành mẫu câu **「もう一度お願いします」** khi gọi điện văn phòng tuyển sinh xác nhận deadline 1-15/12. Cuối cùng báo gia đình homestay rồi gọi bố mẹ và Mai ở Việt Nam — bố ủng hộ "miễn con thích con học là được".

> Từ vựng & mẫu câu chương này: 大学リサーチ・第一志望・第二志望・滑り止め・偏差値・EJU合格ライン・国立大学・私立大学・授業料・奨学金・JASSO・出願期間・志望理由書・教授・自然言語処理 (NLP)・論文・引用・適応的学習システム・基礎工学部・情報科学科・〜について教えていただけませんか・〜と〜の違いは何ですか・もう一度お願いします・どちらがおすすめですか・〜と申します

## Bí quyết chương

- **Hỏi sempai trước khi hỏi thầy**: Rim đã trải nghiệm — lời khuyên thực tế hơn.
- **「教授から選ぶ」**: Văn hoá Nhật xem trọng người hướng dẫn — paper + tên thầy là điểm cộng.
- **Gọi điện hành chính phải có 「お世話になっております」+「〜と申します」**: Mẫu mở đầu chuẩn.
- **「もう一度お願いします」**: Khi nghe số/ngày tháng không rõ, lặp lại để xác nhận — an toàn hơn đoán.
- **Báo gia đình sau khi đã thu thập thông tin**: Có lý do cụ thể để thuyết phục, không phải "tự nhiên đổi ý".

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 大学 | だいがく | ĐẠI HỌC | Đại học |
| 進学 | しんがく | TIẾN HỌC | Học lên |
| 第一志望 | だいいちしぼう | ĐỆ NHẤT CHÍ VỌNG | Nguyện vọng 1 |
| 第二志望 | だいにしぼう | ĐỆ NHỊ CHÍ VỌNG | Nguyện vọng 2 |
| 滑り止め | すべりどめ | HOẠT CHỈ | Trường dự phòng |
| 可能性 | かのうせい | KHẢ NĂNG TÍNH | Khả năng |
| 学部 | がくぶ | HỌC BỘ | Khoa |
| 情報科学科 | じょうほうかがくか | TÌNH BÁO KHOA HỌC KHOA | Khoa Khoa học máy tính |
| 決断 | けつだん | QUYẾT ĐOÁN | Quyết định |
| 判断 | はんだん | PHÁN ĐOÁN | Phán đoán |
| 地域 | ちいき | ĐỊA VỰC | Vùng |
| 偏差値 | へんさち | THIÊN SAI TRỊ | Hensachi / độ khó |
| 難易度 | なんいど | NAN DỊ ĐỘ | Độ khó |
| 指標 | しひょう | CHỈ TIÊU | Chỉ số |
| 経営 | けいえい | KINH DOANH | Quản trị |
| 研究室 | けんきゅうしつ | NGHIÊN CỨU THẤT | Phòng nghiên cứu |
| 教授 | きょうじゅ | GIÁO THỤ | Giáo sư |
| 指導 | しどう | CHỈ ĐẠO | Hướng dẫn |
| 雰囲気 | ふんいき | PHÂN VI KHÍ | Bầu không khí |
| 自然言語処理 | しぜんげんごしょり | TỰ NHIÊN NGÔN NGỮ XỬ LÝ | Xử lý ngôn ngữ tự nhiên |
| 翻訳 | ほんやく | PHIÊN DỊCH | Dịch |
| 対話 | たいわ | ĐỐI THOẠI | Đối thoại |
| 基礎技術 | きそぎじゅつ | CƠ SỞ KỸ THUẬT | Công nghệ nền |
| 論文 | ろんぶん | LUẬN VĂN | Bài báo / paper |
| 入試事務局 | にゅうしじむきょく | NHẬP THÍ SỰ VỤ CỤC | Văn phòng tuyển sinh |
| 留学生枠 | りゅうがくせいわく | LƯU HỌC SINH KHUNG | Slot du học sinh |
| 出願期間 | しゅつがんきかん | XUẤT NGUYỆN KỲ GIAN | Thời gian nộp hồ sơ |
| 卒業証書 | そつぎょうしょうしょ | TỐT NGHIỆP CHỨNG THƯ | Bằng tốt nghiệp |
| 相談 | そうだん | TƯƠNG ĐÀM | Bàn bạc |
| 業界 | ぎょうかい | NGHIỆP GIỚI | Ngành |
| 給料 | きゅうりょう | CẤP LIỆU | Lương |
| 引用 | いんよう | DẪN DỤNG | Trích dẫn |
| 適応的 | てきおうてき | THÍCH ỨNG ĐÍCH | Thích nghi |
| 学習システム | がくしゅうシステム | HỌC TẬP | Hệ thống học |
| 第二言語 | だいにげんご | ĐỆ NHỊ NGÔN NGỮ | Ngôn ngữ thứ hai |
| 習得 | しゅうとく | TẬP ĐẮC | Tiếp thu |
| 応用 | おうよう | ỨNG DỤNG | Ứng dụng |
| 私立 | しりつ | TƯ LẬP | Tư thục |
| 国立 | こくりつ | QUỐC LẬP | Công lập |
| 授業料 | じゅぎょうりょう | THỤ NGHIỆP LIỆU | Học phí |
| 奨学金 | しょうがくきん | TƯỞNG HỌC KIM | Học bổng |
| 基礎工学部 | きそこうがくぶ | CƠ SỞ CÔNG HỌC BỘ | Khoa Kỹ thuật cơ sở |
| 論理的 | ろんりてき | LUẬN LÝ ĐÍCH | Logic |', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000010, 800000020, NULL, 'markdown_book', 'T10. Đỗ N2 (N2合格)', '# Sách du học sinh tiếng Nhật · T10. Đỗ N2 (N2合格)

> **Mục tiêu nhân vật:** Đại (du học sinh năm 2 ở Osaka, 12/2025). Học các mẫu câu khi báo tin vui và phản ứng tin vui: (1) báo tin đỗ với cô giáo/sempai bằng kính ngữ, (2) chia sẻ trên LINE với bạn bè cùng lớp, (3) cảm ơn người đã giúp đỡ (homestay, bác cửa hàng baito), (4) nhận lời mời ăn mừng, (5) khiêm tốn khi được khen, (6) động viên bạn chưa đỗ.

---

## Bối cảnh

Tháng 12 năm 2025. Đại đã ở Nhật 20 tháng. Tháng 8 thi N2, sáng nay 9h sáng có kết quả online. Cùng nhóm thi: Linh (cùng lớp Kansai Gogo Gakuin — thi N3), Bahra (Mông Cổ, đã có N2 từ năm ngoái, lần này thi N1). Chương này tập trung các mẫu câu **「おかげさまで〜」「〜合格できました」「お祝いさせてください」「お互い頑張りましょう」** dùng khi báo và chia sẻ tin đỗ.

---

## Tình huống 1 — Phòng ký túc · 9:00, xem kết quả online một mình

*Đại ngồi bàn học trong phòng ký túc, laptop mở trang JLPT. Tay run khi nhập số báo danh.*

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>受験番号<rt>じゅけんばんごう</rt></ruby><ruby>入力<rt>にゅうりょく</rt></ruby>...）<br>*(Nhập số báo danh...)* |
| Đại | （<ruby>画面<rt>がめん</rt></ruby><ruby>表示<rt>ひょうじ</rt></ruby>）...<ruby>合格<rt>ごうかく</rt></ruby>!<br>*(Màn hình hiện... ĐỖ!)* |
| Đại | <ruby>言語知識<rt>げんごちしき</rt></ruby> 50<ruby>点<rt>てん</rt></ruby>、<ruby>読解<rt>どっかい</rt></ruby> 47<ruby>点<rt>てん</rt></ruby>、<ruby>聴解<rt>ちょうかい</rt></ruby> 45<ruby>点<rt>てん</rt></ruby>、<ruby>合計<rt>ごうけい</rt></ruby> 142<ruby>点<rt>てん</rt></ruby>!<br>*(Ngôn ngữ 50 điểm, Đọc 47 điểm, Nghe 45 điểm, tổng 142!)* |
| Đại | (VN, tự nhủ) Mức đỗ 90, mình vượt 52 điểm!<br>*(Vượt 52 điểm!)* |

---

## Tình huống 2 — Phòng ký túc · 9:05, gọi LINE video báo Mai trước

*Đại bấm gọi Mai luôn — người đầu tiên muốn báo.*

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Alo anh! Đang giờ học mà anh gọi? |
| Đại | (tiếng Việt) Em! Anh đỗ N2 rồi! 142/180! |
| Mai | (tiếng Việt) Trời ơi anh! Mừng quá! Có cao không vậy? |
| Đại | (tiếng Việt) Mức đỗ là 90, anh được 142. Đọc 47, nghe 45, vocab 50 — kỹ năng nào cũng qua. |
| Mai | (tiếng Việt) Em tự hào về anh quá! Bố mẹ biết chưa? |
| Đại | (tiếng Việt) Em là người đầu tiên anh báo. Bố mẹ giờ đang đi làm chắc chưa cầm điện thoại. Lát anh gọi sau. |
| Mai | (tiếng Việt) Anh giỏi quá. Hồi qua Nhật mới N4 thôi mà. |
| Đại | (tiếng Việt) Nhờ em ở nhà cổ vũ. Tối anh gọi lại nhé, giờ anh phải báo cô Yamada. |
| Mai | (tiếng Việt) Ừ anh, đi đi. Yêu anh! |

---

## Tình huống 3 — Hành lang trường tiếng · 10:15, báo cô Yamada

*Đại chạy đến phòng giáo viên, gõ cửa.*

| Vai | Lời thoại |
|---|---|
| Đại | （<ruby>戸<rt>と</rt></ruby>を<ruby>叩<rt>たた</rt></ruby>く）<ruby>失礼<rt>しつれい</rt></ruby>します！<br>*(Gõ cửa. Em xin phép!)* |
| Yamada | はい、どうぞ。あ、ダイ<ruby>君<rt>くん</rt></ruby>！<ruby>結果<rt>けっか</rt></ruby><ruby>出<rt>で</rt></ruby>た？<br>*(Vâng, mời vào. À, Đại! Có kết quả chưa?)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、おかげさまで、N2に<ruby>合格<rt>ごうかく</rt></ruby>できました！<br>*(Thưa cô, nhờ ơn cô, em đã đỗ được N2!)* |
| Yamada | え、<ruby>本当<rt>ほんとう</rt></ruby>!?<ruby>何<rt>なん</rt></ruby><ruby>点<rt>てん</rt></ruby>だった？<br>*(Ơ, thật à?! Bao nhiêu điểm?)* |
| Đại | 142<ruby>点<rt>てん</rt></ruby>でした。<br>*(142 điểm ạ.)* |
| Yamada | 142!?<ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>合格<rt>ごうかく</rt></ruby>ラインを<ruby>大幅<rt>おおはば</rt></ruby>に<ruby>超<rt>こ</rt></ruby>えてる！<br>*(142 á? Tuyệt vời! Vượt mức đỗ rất xa!)* |
| Đại | <ruby>先生<rt>せんせい</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>と<ruby>添削<rt>てんさく</rt></ruby>のおかげです。<ruby>本当<rt>ほんとう</rt></ruby>にありがとうございました。<br>*(Nhờ giờ học và việc cô sửa bài. Em thật sự cảm ơn cô.)* |
| Yamada | いえいえ、ダイ<ruby>君<rt>くん</rt></ruby>が<ruby>努力<rt>どりょく</rt></ruby>したからですよ。<br>*(Không không, là do Đại đã nỗ lực mà.)* |
| Yamada | これで<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>出願<rt>しゅつがん</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>を<ruby>満<rt>み</rt></ruby>たしましたね。<br>*(Vậy là em đã đủ điều kiện nộp Osaka U rồi nhỉ.)* |
| Đại | はい！<ruby>来週<rt>らいしゅう</rt></ruby>に<ruby>出願<rt>しゅつがん</rt></ruby>します。<br>*(Vâng! Tuần sau em nộp hồ sơ.)* |

---

## Tình huống 4 — Phòng giáo viên · 10:20, hỏi lại cô về cách báo nhà trường

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先生<rt>せんせい</rt></ruby>、<ruby>一<rt>ひと</rt></ruby>つお<ruby>聞<rt>き</rt></ruby>きしたいんですが。<br>*(Thưa cô, em muốn hỏi một điều.)* |
| Yamada | はい？<br>*(Vâng?)* |
| Đại | <ruby>合格<rt>ごうかく</rt></ruby><ruby>証明書<rt>しょうめいしょ</rt></ruby>はいつ<ruby>届<rt>とど</rt></ruby>きますか？<ruby>出願<rt>しゅつがん</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>なので。<br>*(Bao giờ giấy chứng nhận đỗ sẽ đến ạ? Em cần để nộp hồ sơ.)* |
| Yamada | <ruby>普通<rt>ふつう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>上旬<rt>じょうじゅん</rt></ruby>です。でも、<ruby>結果<rt>けっか</rt></ruby><ruby>発表<rt>はっぴょう</rt></ruby>ページから「<ruby>合否<rt>ごうひ</rt></ruby><ruby>結果<rt>けっか</rt></ruby><ruby>通知書<rt>つうちしょ</rt></ruby>」をダウンロードできますよ。<br>*(Thường là đầu tháng 2. Nhưng có thể tải "Giấy thông báo kết quả" từ trang công bố.)* |
| Đại | え、ダウンロードできるんですか？<ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Ơ, tải được sao? Em không biết.)* |
| Yamada | はい、PDFで。<ruby>大学<rt>だいがく</rt></ruby><ruby>出願<rt>しゅつがん</rt></ruby>はそれで<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Vâng, dạng PDF. Nộp đại học dùng cái đó là được.)* |
| Đại | <ruby>助<rt>たす</rt></ruby>かりました。ありがとうございます！<br>*(Đỡ quá. Cảm ơn cô ạ!)* |

---

## Tình huống 5 — Sân trường tiếng · 12:30, gặp Bahra giờ nghỉ trưa

*Đại tìm Bahra ở băng ghế. Bahra mặt buồn — vừa biết kết quả N3.*

| Vai | Lời thoại |
|---|---|
| Đại | バーラさん、<ruby>結果<rt>けっか</rt></ruby><ruby>見<rt>み</rt></ruby>た？<br>*(Bahra, xem kết quả chưa?)* |
| Bahra | ...<ruby>落<rt>お</rt></ruby>ちた。N1、<ruby>95<rt>きゅうじゅうご</rt></ruby><ruby>点<rt>てん</rt></ruby>。あと<ruby>5<rt>ご</rt></ruby><ruby>点<rt>てん</rt></ruby>だった。<br>*(... Trượt N1. 95 điểm. Thiếu 5 điểm.)* |
| Đại | そっか...<ruby>残念<rt>ざんねん</rt></ruby>だね。<br>*(Vậy à... Tiếc quá.)* |
| Bahra | ダイは？<br>*(Đại thì sao?)* |
| Đại | （<ruby>言<rt>い</rt></ruby>いにくそう）...<ruby>合格<rt>ごうかく</rt></ruby>した。<br>*(Khó nói... Đỗ rồi.)* |
| Bahra | おお！おめでとう！<ruby>何<rt>なん</rt></ruby><ruby>点<rt>てん</rt></ruby>？<br>*(Ồ! Chúc mừng! Bao nhiêu điểm?)* |
| Đại | 142<ruby>点<rt>てん</rt></ruby>。<br>*(142 điểm.)* |
| Bahra | すごい！<ruby>俺<rt>おれ</rt></ruby>もダイみたいになりたい。<br>*(Giỏi quá! Tôi cũng muốn được như Đại.)* |
| Đại | バーラさんならN1<ruby>絶対<rt>ぜったい</rt></ruby><ruby>取<rt>と</rt></ruby>れる。<ruby>読解<rt>どっかい</rt></ruby>が<ruby>苦手<rt>にがて</rt></ruby>って<ruby>言<rt>い</rt></ruby>ってたよね？<ruby>俺<rt>おれ</rt></ruby>のN2のやり<ruby>方<rt>かた</rt></ruby>でよかったら<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Bahra chắc chắn lấy được N1. Cậu bảo yếu đọc hiểu đúng không? Mình chỉ cách của mình hồi ôn N2 cho.)* |
| Bahra | <ruby>本当<rt>ほんとう</rt></ruby>？ありがとう！<br>*(Thật à? Cảm ơn!)* |
| Đại | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>次<rt>つぎ</rt></ruby>は<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>もN1<ruby>挑戦<rt>ちょうせん</rt></ruby>するかも。<br>*(Cùng nhau cố lên. Đợt sau là tháng 7. Có khi mình cũng thử N1.)* |

---

## Tình huống 6 — Lớp B · 13:30, báo cả lớp giờ sinh hoạt

*Cô Yamada vào lớp, gõ bảng gọi cả lớp.*

| Vai | Lời thoại |
|---|---|
| Yamada | みなさん、<ruby>嬉<rt>うれ</rt></ruby>しいお<ruby>知<rt>し</rt></ruby>らせがあります。<br>*(Mọi người, cô có tin vui.)* |
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>がN2に<ruby>合格<rt>ごうかく</rt></ruby>しました！142<ruby>点<rt>てん</rt></ruby>です。<br>*(Bạn Đại đã đỗ N2! 142 điểm.)* |
| Cả lớp | おお〜！<br>*(Ồồ!)* |
| Rim | やった！<br>*(Yes!)* |
| Yifan | すごい！<br>*(Đỉnh!)* |
| Đại | （<ruby>立<rt>た</rt></ruby>つ）みなさん、ありがとうございます。<ruby>一<rt>いち</rt></ruby><ruby>年間<rt>ねんかん</rt></ruby><ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>勉強<rt>べんきょう</rt></ruby>してくれたおかげです。<br>*(Đứng dậy. Mọi người, cảm ơn. Là nhờ một năm cùng học với mọi người.)* |
| Yifan | ダイの<ruby>勉強法<rt>べんきょうほう</rt></ruby><ruby>教<rt>おし</rt></ruby>えて！<br>*(Chỉ cách học của Đại với!)* |
| Đại | あとで<ruby>聴解<rt>ちょうかい</rt></ruby>のアプリリスト<ruby>送<rt>おく</rt></ruby>るね。<br>*(Lát mình gửi danh sách app luyện nghe nhé.)* |
| Rim | (VN, nhỏ) Em mừng anh quá! |
| Đại | (VN, nhỏ) Cảm ơn em. |

---

## Tình huống 7 — Lawson · 17:00, báo Suzuki cửa hàng trưởng

*Đại đến ca làm baito, Suzuki đang kiểm hàng.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>店長<rt>てんちょう</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れさまです。<br>*(Anh trưởng cửa hàng, anh vất vả.)* |
| Suzuki | おう、ダイ<ruby>君<rt>くん</rt></ruby>、お<ruby>疲<rt>つか</rt></ruby>れ。<br>*(Ờ, Đại, vất vả.)* |
| Đại | あの、ご<ruby>報告<rt>ほうこく</rt></ruby>があります。<br>*(Em có chuyện muốn báo cáo.)* |
| Suzuki | <ruby>何<rt>なに</rt></ruby>？<br>*(Gì thế?)* |
| Đại | おかげさまで、JLPT N2に<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(Nhờ ơn anh, em đã đỗ JLPT N2.)* |
| Suzuki | おっ、<ruby>本当<rt>ほんとう</rt></ruby>か！すごいな！<br>*(Ồ, thật à! Giỏi đấy!)* |
| Đại | <ruby>店長<rt>てんちょう</rt></ruby>がいつも<ruby>敬語<rt>けいご</rt></ruby>を<ruby>直<rt>なお</rt></ruby>してくれたおかげです。<br>*(Nhờ anh trưởng cửa hàng luôn sửa kính ngữ cho em.)* |
| Suzuki | ハハ、<ruby>俺<rt>おれ</rt></ruby>のおかげかよ。<ruby>嬉<rt>うれ</rt></ruby>しいな。<br>*(Haha, do anh à. Vui quá.)* |
| Suzuki | <ruby>今度<rt>こんど</rt></ruby><ruby>俺<rt>おれ</rt></ruby>が<ruby>奢<rt>おご</rt></ruby>るよ。<ruby>金曜<rt>きんよう</rt></ruby><ruby>夜<rt>よる</rt></ruby>、<ruby>居酒屋<rt>いざかや</rt></ruby><ruby>行<rt>い</rt></ruby>こう。<br>*(Lần sau anh khao. Tối thứ 6 đi izakaya nhé.)* |
| Đại | え、いいんですか？<br>*(Ơ, được sao ạ?)* |
| Suzuki | <ruby>当然<rt>とうぜん</rt></ruby>だ。<ruby>従業員<rt>じゅうぎょういん</rt></ruby>の<ruby>合格<rt>ごうかく</rt></ruby><ruby>祝<rt>いわ</rt></ruby>いだ。<br>*(Đương nhiên. Mừng nhân viên đỗ.)* |
| Đại | ありがとうございます！<br>*(Cảm ơn anh ạ!)* |

---

## Tình huống 8 — Cửa hàng Lawson · 19:30, khách quen Tanigawa-san chúc mừng

*Bà Tanigawa (75 tuổi, khách quen mua bento) đến quầy tính tiền.*

| Vai | Lời thoại |
|---|---|
| Tanigawa | ダイちゃん、こんばんは。<br>*(Đại à, chào buổi tối.)* |
| Đại | <ruby>谷川<rt>たにがわ</rt></ruby>さん、こんばんは。いつものお<ruby>弁当<rt>べんとう</rt></ruby>ですね。<br>*(Bà Tanigawa, chào bà. Bento như mọi khi ạ.)* |
| Tanigawa | <ruby>店長<rt>てんちょう</rt></ruby>から<ruby>聞<rt>き</rt></ruby>いたよ。N2<ruby>合格<rt>ごうかく</rt></ruby>したんだって？<br>*(Tôi nghe anh trưởng cửa hàng nói. Đại đỗ N2 rồi à?)* |
| Đại | はい、おかげさまで。<br>*(Vâng, nhờ ơn mọi người ạ.)* |
| Tanigawa | <ruby>偉<rt>えら</rt></ruby>いね〜。<ruby>外国<rt>がいこく</rt></ruby>から<ruby>来<rt>き</rt></ruby>てこんなに<ruby>頑張<rt>がんば</rt></ruby>って。<br>*(Giỏi thật. Từ nước ngoài đến mà cố gắng đến vậy.)* |
| Đại | いえ、まだまだです。N1<ruby>目指<rt>めざ</rt></ruby>します。<br>*(Dạ không, em còn phải cố nhiều. Em đang nhắm N1.)* |
| Tanigawa | これ、ばあちゃんからのお<ruby>祝<rt>いわ</rt></ruby>い。（<ruby>飴<rt>あめ</rt></ruby>の<ruby>袋<rt>ふくろ</rt></ruby>を<ruby>渡<rt>わた</rt></ruby>す）<br>*(Này, quà mừng từ bà cụ. Đưa túi kẹo.)* |
| Đại | え、いいんですか？<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<br>*(Ơ, được ạ? Em không dám nhận.)* |
| Tanigawa | いいから、もらって。<br>*(Cứ nhận đi.)* |
| Đại | ありがとうございます。<ruby>大切<rt>たいせつ</rt></ruby>に<ruby>食<rt>た</rt></ruby>べます。<br>*(Cảm ơn bà ạ. Em sẽ ăn trân trọng ạ.)* |

---

## Tình huống 9 — Bàn ăn nhà Tanaka · 20:30, dinner mừng N2

*Yumi nấu sukiyaki — món Đại thích. Tony lấy bia.*

| Vai | Lời thoại |
|---|---|
| Yumi | はい、すき<ruby>焼<rt>や</rt></ruby>き<ruby>完成<rt>かんせい</rt></ruby>！ダイ<ruby>君<rt>くん</rt></ruby>、N2<ruby>合格<rt>ごうかく</rt></ruby>おめでとう！<br>*(Sukiyaki xong! Đại, chúc mừng đỗ N2!)* |
| Tony | <ruby>乾杯<rt>かんぱい</rt></ruby>！<br>*(Cạn ly!)* |
| Đại | <ruby>乾杯<rt>かんぱい</rt></ruby>！お<ruby>世話<rt>せわ</rt></ruby>になりました！<br>*(Cạn ly! Cảm ơn anh chị đã chăm em!)* |
| Yumi | <ruby>家<rt>うち</rt></ruby>に<ruby>来<rt>き</rt></ruby>て<ruby>20<rt>にじゅう</rt></ruby>カ<ruby>月<rt>げつ</rt></ruby>、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>成長<rt>せいちょう</rt></ruby>したね。<br>*(20 tháng từ khi đến nhà, em trưởng thành thật rồi.)* |
| Đại | お<ruby>二人<rt>ふたり</rt></ruby>のおかげです。<ruby>家<rt>いえ</rt></ruby>で<ruby>毎日<rt>まいにち</rt></ruby><ruby>日本語<rt>にほんご</rt></ruby>で<ruby>話<rt>はな</rt></ruby>せたから、<ruby>聴解<rt>ちょうかい</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>くなりました。<br>*(Nhờ anh chị. Nhờ ngày nào cũng nói tiếng Nhật ở nhà nên em nghe khá hơn.)* |
| Tony | お<ruby>前<rt>まえ</rt></ruby>の<ruby>発音<rt>はつおん</rt></ruby>、<ruby>来<rt>き</rt></ruby>た<ruby>頃<rt>ころ</rt></ruby>とは<ruby>全然<rt>ぜんぜん</rt></ruby><ruby>違<rt>ちが</rt></ruby>うぞ。<br>*(Phát âm của em khác hẳn lúc mới đến.)* |
| Đại | <ruby>恥<rt>は</rt></ruby>ずかしい...あの<ruby>頃<rt>ころ</rt></ruby>「いただきます」も<ruby>言<rt>い</rt></ruby>えなかった。<br>*(Xấu hổ ạ... Hồi đó em còn không nói được "itadakimasu".)* |
| Yumi | あはは、そうだったね。<br>*(Haha, đúng rồi nhỉ.)* |
| Tony | <ruby>次<rt>つぎ</rt></ruby>は<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>祝いだな。<br>*(Tiếp theo là mừng đỗ Osaka U.)* |
| Đại | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>合格<rt>ごうかく</rt></ruby>します！<br>*(Vâng, em nhất định sẽ đỗ!)* |

---

## Tình huống 10 — Sảnh ký túc Bahra · 21:30, dạy bí kíp nghe

*Đại ghé phòng Bahra với laptop.*

| Vai | Lời thoại |
|---|---|
| Đại | バーラさん、お<ruby>邪魔<rt>じゃま</rt></ruby>します。<br>*(Bahra, mình làm phiền nhé.)* |
| Bahra | <ruby>来<rt>き</rt></ruby>てくれてありがとう。<br>*(Cảm ơn cậu đến.)* |
| Đại | <ruby>聴解<rt>ちょうかい</rt></ruby>のコツ、<ruby>三<rt>みっ</rt></ruby>つあるよ。<br>*(Bí quyết nghe có 3 điều nhé.)* |
| Bahra | （メモする）どうぞ。<br>*(Ghi chú. Mời.)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>毎日<rt>まいにち</rt></ruby><ruby>15<rt>じゅうご</rt></ruby><ruby>分<rt>ぷん</rt></ruby>NHKニュースを<ruby>聞<rt>き</rt></ruby>く。シャドーイングする。<br>*(Một là mỗi ngày 15 phút nghe NHK news. Shadowing theo.)* |
| Bahra | シャドーイング？<br>*(Shadowing là gì?)* |
| Đại | <ruby>聞<rt>き</rt></ruby>こえた<ruby>音<rt>おと</rt></ruby>を<ruby>0.5<rt>れいてんご</rt></ruby><ruby>秒<rt>びょう</rt></ruby><ruby>遅<rt>おく</rt></ruby>れで<ruby>真似<rt>まね</rt></ruby>する<ruby>練習<rt>れんしゅう</rt></ruby>。<br>*(Bắt chước âm nghe được sau 0.5 giây.)* |
| Bahra | なるほど。<br>*(Hiểu rồi.)* |
| Đại | <ruby>二<rt>ふた</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>過去問<rt>かこもん</rt></ruby><ruby>聴解<rt>ちょうかい</rt></ruby>を<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>聴<rt>き</rt></ruby>く。<ruby>1<rt>いっ</rt></ruby><ruby>回目<rt>かいめ</rt></ruby><ruby>普通<rt>ふつう</rt></ruby>、<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>スクリプトを<ruby>見<rt>み</rt></ruby>ながら、<ruby>3<rt>さん</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>もう<ruby>一<rt>いち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>普通<rt>ふつう</rt></ruby>に。<br>*(Hai là nghe đề cũ 3 lần. Lần 1 nghe thường, lần 2 xem script, lần 3 nghe lại bình thường.)* |
| Bahra | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>は？<br>*(Còn cái thứ ba?)* |
| Đại | <ruby>三<rt>みっ</rt></ruby>つ<ruby>目<rt>め</rt></ruby>、<ruby>俺<rt>おれ</rt></ruby>と<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>会話<rt>かいわ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>しよう。お<ruby>金<rt>かね</rt></ruby>いらないから。<br>*(Ba là mỗi tuần luyện hội thoại với mình 1 lần. Không lấy tiền đâu.)* |
| Bahra | <ruby>本当<rt>ほんとう</rt></ruby>に？うれしい！<br>*(Thật à? Mừng quá!)* |
| Đại | お<ruby>互<rt>たが</rt></ruby>い<ruby>頑張<rt>がんば</rt></ruby>ろう。<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>、バーラさんも<ruby>絶対<rt>ぜったい</rt></ruby>N1<ruby>合格<rt>ごうかく</rt></ruby>する。<br>*(Cùng cố. Tháng 7 Bahra chắc chắn sẽ đỗ N1.)* |

---

## Tình huống 11 — Phòng ký túc · 22:30, xem LINE bạn bè chúc mừng

*Đại nằm trên giường, scroll LINE — 47 tin nhắn từ 5 nước.*

| Vai | Lời thoại |
|---|---|
| Linh | (VN) Anh!!! Em đỗ N3 105 điểm! Anh đỗ N2 chưa? |
| Đại | (VN) Mừng em! Anh đỗ rồi, 142. |
| Linh | (VN) Trời anh đỗ điểm khủng vậy. Sang năm em thi N2 luôn. |
| Yifan | (中, dịch) ダイ、すごい！我も来年N2受けるね！<br>*(Đại giỏi quá! Tao sang năm cũng thi N2!)* |
| Đại | おう、<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう！<br>*(Ờ, cùng cố nhé!)* |
| Tuấn | (VN) Anh ơi em vừa nghe Linh báo. Mừng anh quá. Em đang ở Hà Nội học N4. |
| Đại | (VN) Tuấn cố lên. Năm sau qua Nhật anh đón ở Kansai. |
| Rim | (VN) Đại ơi, chị đăng ký Kyoto U xong. Em đỗ N2 142 chắc Osaka U đỗ thôi! |
| Đại | (VN) Em cảm ơn chị Rim. Em apply tuần sau. |

---

## Tình huống 12 — Phòng ký túc · 23:00, gọi điện video bố mẹ

*Đại bật video, cả nhà ngồi ở bàn ăn — VN giờ 21:00.*

| Vai | Lời thoại |
|---|---|
| Đại | (tiếng Việt) Bố mẹ ơi, con có tin vui. |
| Mẹ | (tiếng Việt) Trời, mặt con rạng rỡ thế kia chắc là chuyện tốt. |
| Đại | (tiếng Việt) Con đỗ N2 rồi mẹ. 142 trên 180, vượt mức đỗ 52 điểm. |
| Mẹ | (tiếng Việt) Trời ơi! Bố ơi! Con đỗ N2! |
| Bố | (tiếng Việt) Giỏi! Bố tự hào về con. Hồi qua Nhật còn chưa biết "konnichiwa" cho đúng. |
| Đại | (tiếng Việt) Hôm nay con đã báo cô Yamada, bác Suzuki cửa hàng trưởng, cô chú Tanaka nhà homestay, các bạn cùng lớp. Ai cũng mừng cho con. |
| Mẹ | (tiếng Việt) Con báo Mai chưa? |
| Đại | (tiếng Việt) Báo đầu tiên rồi mẹ. Em nó còn hớn hở hơn cả con. |
| Bố | (tiếng Việt) Vậy là điều kiện nộp Osaka đủ rồi đúng không? |
| Đại | (tiếng Việt) Vâng, JLPT N2 + EJU 540 đều đủ. Tuần sau con nộp hồ sơ. Đầu tháng 2 thi vòng riêng. Đầu tháng 3 có kết quả. |
| Mẹ | (tiếng Việt) Cố lên con. Bố mẹ ở nhà cầu cho con. |
| Đại | (tiếng Việt) Vâng. Con yêu bố mẹ. Con tắt máy nha, mai 7h con phải đến trường. |
| Bố | (tiếng Việt) Ngủ ngon con. |

---

## Đọng lại chương 10

Ngày Đại đỗ N2 142/180 là ngày Đại học cách báo tin vui đúng kiểu Nhật. Với cô Yamada và bác Suzuki — dùng **「おかげさまで〜合格できました」** đặt công ơn người khác lên trước. Với bà Tanigawa khách quen — khiêm tốn **「まだまだです」** rồi nhận quà bằng **「恐縮です」**. Với Bahra — bạn cùng lớp vừa trượt N3 — không khoe điểm 142 mà chuyển sang chia sẻ bí quyết: **シャドーイング NHK 15 phút**, **過去問 nghe 3 lần**, **luyện hội thoại miễn phí mỗi tuần**. Câu chốt **「お互い頑張ろう」** — cùng nhau cố. Với gia đình Tanaka — **乾杯 sukiyaki** mừng 20 tháng sống chung, Đại nói **「お二人のおかげで聴解が強くなりました」**. Đêm muộn gọi Mai và bố mẹ ở Việt Nam — Mai là người được báo đầu tiên, bố nói **"Bố tự hào về con"**. Điều kiện N2+EJU 540 đủ, tuần sau nộp Osaka U.

> Từ vựng & mẫu câu chương này: N2合格・142点・受験番号・合格ライン・合否結果通知書・出願・おかげさまで・〜できました・お祝い・乾杯・お互い頑張ろう・恐縮です・まだまだです・シャドーイング・過去問・聴解・読解・言語知識・偏差値・大阪大学・志望理由書・〜のおかげで・ご報告があります・お世話になりました

## Bí quyết chương

- **Với cô/sempai dùng「おかげさまで」**: Đặt công người khác lên trước — văn hoá Nhật.
- **Với bạn vừa trượt — chuyển sang giúp đỡ**: Không khoe điểm cao, ngay lập tức chia sẻ bí quyết.
- **「まだまだです」khi được khen**: Khiêm tốn bắt buộc trong văn hoá Nhật.
- **Báo theo thứ tự ưu tiên**: Người yêu/người thân nhất → thầy cô → sempai → bạn → đồng hương.
- **「ご報告があります」**: Mẫu trang trọng mở đầu khi báo tin với cấp trên (店長, sensei).

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 受験番号 | じゅけんばんごう | THỤ NGHIỆM PHIÊN HIỆU | Số báo danh |
| 入力 | にゅうりょく | NHẬP LỰC | Nhập |
| 画面表示 | がめんひょうじ | HỌA DIỆN BIỂU THỊ | Hiển thị màn hình |
| 出願条件 | しゅつがんじょうけん | XUẤT NGUYỆN ĐIỀU KIỆN | Điều kiện nộp hồ sơ |
| 合格証明書 | ごうかくしょうめいしょ | HỢP CÁCH CHỨNG MINH THƯ | Giấy chứng nhận đỗ |
| 合否結果通知書 | ごうひけっかつうちしょ | HỢP PHỦ KẾT QUẢ THÔNG TRI THƯ | Giấy thông báo kết quả |
| ダウンロード | — | — | Tải xuống |
| お互い | おたがい | TƯƠNG | Lẫn nhau |
| 嬉しい | うれしい | HỈ | Vui |
| 知らせ | しらせ | TRI | Tin báo |
| 勉強法 | べんきょうほう | MIỄN CƯỜNG PHÁP | Cách học |
| 店長 | てんちょう | ĐIẾM TRƯỞNG | Quản lý cửa hàng |
| ご報告 | ごほうこく | BÁO CÁO | Báo cáo (kính ngữ) |
| 敬語 | けいご | KÍNH NGỮ | Kính ngữ |
| 奢る | おごる | XA | Đãi |
| 居酒屋 | いざかや | CƯ TỬU GIA | Quán izakaya |
| 当然 | とうぜん | ĐƯƠNG NHIÊN | Đương nhiên |
| お祝い | おいわい | CHÚC | Chúc mừng |
| 偉い | えらい | VĨ | Giỏi / đáng nể |
| 恐縮 | きょうしゅく | KHỦNG SÚC | Không dám / hổ thẹn |
| 大切 | たいせつ | ĐẠI THIẾT | Trân trọng |
| すき焼き | すきやき | THIÊU | Sukiyaki |
| 完成 | かんせい | HOÀN THÀNH | Hoàn thành |
| お世話になりました | おせわになりました | THẾ THOẠI | Đã được chăm sóc |
| 成長 | せいちょう | THÀNH TRƯỞNG | Trưởng thành |
| 発音 | はつおん | PHÁT ÂM | Phát âm |
| 邪魔 | じゃま | TÀ MA | Làm phiền |
| シャドーイング | — | — | Shadowing |
| スクリプト | — | — | Bản chữ / script |
| 会話練習 | かいわれんしゅう | HỘI THOẠI LUYỆN TẬP | Luyện hội thoại |', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000011, 800000020, NULL, 'markdown_book', 'T11. Open Campus — nắm bắt trường (OC把握)', '# Sách du học sinh tiếng Nhật · T11. Open Campus — nắm bắt trường (OC把握)

> **Mục tiêu nhân vật:** Đại (10/2025, sau khi đỗ N2 và quyết định nguyện vọng). Học các mẫu hội thoại tiếng Nhật khi đi Open Campus đại học: (1) check-in tại quầy lễ tân du học sinh, (2) đặt câu hỏi cho giáo sư trong info session, (3) tour phòng nghiên cứu với senpai, (4) thử ngồi giảng đường nghe model lecture, (5) phỏng vấn ngắn với staff tư vấn, (6) so sánh 3 trường sau khi đi xong.

---

## Bối cảnh

Cuối tháng 9 + đầu 10/2025. Sau khi đỗ N2 và quyết định NV1 Osaka U khoa 情報科学科, Đại đi 3 Open Campus: Osaka U (cơ sở Toyonaka), Kobe U (cơ sở Rokkō), Kansai U (Senriyama). Mỗi trường nửa ngày. Mục tiêu: cảm nhận không khí thực tế + gặp giáo sư + hỏi về 留学生枠 (slot du học sinh) + thu thập thông tin cho 志望理由書. Chương này tập trung các mẫu câu **「〜について伺ってもよろしいでしょうか」「〜の見学をお願いできますか」「〜について教えていただけますか」** dùng khi giao tiếp ở Open Campus.

---

## Tình huống 1 — Ga Toyonaka · 8:30, hỏi đường nhân viên ga

*Đại xuống tàu Hankyu Takarazuka line ở ga Ishibashi-Handai-mae. Lần đầu đến cơ sở Toyonaka.*

| Vai | Lời thoại |
|---|---|
| Đại | すみません、<ruby>大阪大学<rt>おおさかだいがく</rt></ruby><ruby>豊中<rt>とよなか</rt></ruby>キャンパスへの<ruby>行<rt>い</rt></ruby>き<ruby>方<rt>かた</rt></ruby>を<ruby>教<rt>おし</rt></ruby>えていただけませんか？<br>*(Xin lỗi, anh có thể chỉ giúp em đường đến cơ sở Toyonaka ĐH Osaka không ạ?)* |
| Nhân viên ga | はい、<ruby>東口<rt>ひがしぐち</rt></ruby>を<ruby>出<rt>で</rt></ruby>て、<ruby>正面<rt>しょうめん</rt></ruby>の<ruby>坂<rt>さか</rt></ruby>を<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ほど<ruby>上<rt>のぼ</rt></ruby>ってください。<br>*(Vâng, đi ra cửa Đông, lên con dốc phía trước khoảng 5 phút.)* |
| Đại | <ruby>東口<rt>ひがしぐち</rt></ruby>を<ruby>出<rt>で</rt></ruby>て、<ruby>坂<rt>さか</rt></ruby>を<ruby>5<rt>ご</rt></ruby><ruby>分<rt>ふん</rt></ruby>ですね。<br>*(Ra cửa Đông, đi dốc 5 phút phải không ạ?)* |
| Nhân viên ga | はい。<ruby>今日<rt>きょう</rt></ruby>はオープンキャンパスですか？<br>*(Vâng. Hôm nay là Open Campus à?)* |
| Đại | はい！<br>*(Vâng!)* |
| Nhân viên ga | <ruby>頑張<rt>がんば</rt></ruby>ってください。<br>*(Cố gắng nhé.)* |
| Đại | ありがとうございます！<br>*(Cảm ơn anh ạ!)* |

---

## Tình huống 2 — Quầy lễ tân Osaka U · 9:00, check-in du học sinh

*Đại đến quầy đăng ký. Có 2 quầy: du học sinh và sinh viên Nhật.*

| Vai | Lời thoại |
|---|---|
| Đại | おはようございます。<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>受付<rt>うけつけ</rt></ruby>はこちらですか？<br>*(Chào buổi sáng. Quầy du học sinh có phải ở đây không ạ?)* |
| Lễ tân | はい、こちらです。お<ruby>名前<rt>なまえ</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。<br>*(Vâng, đây ạ. Cho em xin tên ạ.)* |
| Đại | グエン・ヴァン・ダイです。<ruby>事前<rt>じぜん</rt></ruby><ruby>予約<rt>よやく</rt></ruby>しました。<br>*(Nguyễn Văn Đại. Em đã đăng ký trước.)* |
| Lễ tân | （リストを<ruby>確認<rt>かくにん</rt></ruby>）はい、グエン<ruby>様<rt>さま</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>できました。こちらが<ruby>名札<rt>なふだ</rt></ruby>と<ruby>本日<rt>ほんじつ</rt></ruby>のプログラムです。<br>*(Tra danh sách. Vâng, anh Nguyên đã xác nhận. Đây là thẻ tên và chương trình hôm nay.)* |
| Đại | ありがとうございます。<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>です。<br>*(Cảm ơn ạ. Em nguyện vọng khoa Khoa học máy tính.)* |
| Lễ tân | はい、<ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>説明会<rt>せつめいかい</rt></ruby>、<ruby>11<rt>じゅういち</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>から<ruby>研究室<rt>けんきゅうしつ</rt></ruby><ruby>見学<rt>けんがく</rt></ruby>、<ruby>13<rt>じゅうさん</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>模擬授業<rt>もぎじゅぎょう</rt></ruby>、<ruby>14<rt>じゅうし</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>半<rt>はん</rt></ruby>から<ruby>個別<rt>こべつ</rt></ruby><ruby>相談<rt>そうだん</rt></ruby>です。<br>*(Vâng, 10h thuyết minh, 11h30 tham quan phòng nghiên cứu, 13h giảng thử, 14h30 tư vấn riêng.)* |
| Đại | <ruby>盛<rt>も</rt></ruby>りだくさんですね。<br>*(Đầy đặn nhỉ.)* |
| Lễ tân | <ruby>会場<rt>かいじょう</rt></ruby>は<ruby>2<rt>に</rt></ruby><ruby>号館<rt>ごうかん</rt></ruby> 301<ruby>号室<rt>ごうしつ</rt></ruby>です。<br>*(Hội trường ở tòa số 2, phòng 301.)* |

---

## Tình huống 3 — Hội trường 301 · 10:00, info session — đặt câu hỏi cho giáo sư

*Sau 30 phút giáo sư trưởng khoa giới thiệu, đến phần Q&A. Đại giơ tay đầu tiên.*

| Vai | Lời thoại |
|---|---|
| MC | はい、<ruby>後方<rt>こうほう</rt></ruby>の<ruby>留学生<rt>りゅうがくせい</rt></ruby>の<ruby>方<rt>かた</rt></ruby>、どうぞ。<br>*(Vâng, mời bạn du học sinh ở phía sau.)* |
| Đại | （<ruby>立<rt>た</rt></ruby>つ）ベトナムから<ruby>来<rt>き</rt></ruby>ました、グエン・ヴァン・ダイと<ruby>申<rt>もう</rt></ruby>します。<br>*(Đứng dậy. Em từ Việt Nam, tên là Nguyễn Văn Đại ạ.)* |
| Đại | <ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>枠<rt>わく</rt></ruby>の<ruby>選考基準<rt>せんこうきじゅん</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか？<br>*(Em xin được hỏi về tiêu chí xét tuyển slot du học sinh ạ?)* |
| Giáo sư | はい、どうぞ。<br>*(Vâng, mời.)* |
| Đại | <ruby>具体的<rt>ぐたいてき</rt></ruby>に、EJU<ruby>日本語<rt>にほんご</rt></ruby>と<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby>のどちらが<ruby>重視<rt>じゅうし</rt></ruby>されますか？<br>*(Cụ thể là EJU tiếng Nhật và môn tổng hợp, môn nào được coi trọng hơn ạ?)* |
| Giáo sư | いい<ruby>質問<rt>しつもん</rt></ruby>ですね。<ruby>情報科学科<rt>じょうほうかがくか</rt></ruby>の<ruby>場合<rt>ばあい</rt></ruby>、<ruby>数学<rt>すうがく</rt></ruby>が<ruby>最<rt>もっと</rt></ruby>も<ruby>重視<rt>じゅうし</rt></ruby>されます。<br>*(Câu hỏi hay. Với khoa Khoa học máy tính, môn Toán được coi trọng nhất.)* |
| Giáo sư | <ruby>次<rt>つぎ</rt></ruby>に<ruby>日本語<rt>にほんご</rt></ruby>、その<ruby>次<rt>つぎ</rt></ruby>に<ruby>総合<rt>そうごう</rt></ruby><ruby>科目<rt>かもく</rt></ruby>です。<br>*(Tiếp đến là tiếng Nhật, rồi mới đến môn tổng hợp.)* |
| Đại | <ruby>数学<rt>すうがく</rt></ruby>が<ruby>一番<rt>いちばん</rt></ruby><ruby>重視<rt>じゅうし</rt></ruby>されるんですね。<ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Vậy Toán được coi trọng nhất. Em hiểu rồi. Cảm ơn thầy.)* |

---

## Tình huống 4 — Hành lang ngoài hội trường · 10:55, hỏi sempai du học sinh hiện tại

*Sau session, Đại thấy 1 bạn châu Á đeo thẻ "Tutor du học sinh" — Park Min-jun, năm 3 Hàn Quốc.*

| Vai | Lời thoại |
|---|---|
| Đại | あの、すみません。<ruby>留学生<rt>りゅうがくせい</rt></ruby>チューターの<ruby>方<rt>かた</rt></ruby>ですか？<br>*(Xin lỗi, anh là tutor du học sinh ạ?)* |
| Park | はい、パクと<ruby>申<rt>もう</rt></ruby>します。<ruby>韓国<rt>かんこく</rt></ruby>から<ruby>来<rt>き</rt></ruby>ています。<br>*(Vâng, tôi tên là Park. Đến từ Hàn Quốc.)* |
| Đại | グエンです。ベトナムからです。<ruby>少<rt>すこ</rt></ruby>しお<ruby>時間<rt>じかん</rt></ruby>いただけますか？<br>*(Em là Nguyên ạ. Từ Việt Nam. Anh cho em ít thời gian được không ạ?)* |
| Park | もちろん。<br>*(Đương nhiên.)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>な<ruby>感想<rt>かんそう</rt></ruby>を<ruby>聞<rt>き</rt></ruby>きたいです。<ruby>授業<rt>じゅぎょう</rt></ruby>は<ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>学生<rt>がくせい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じレベルですか？<br>*(Em muốn nghe cảm nhận thật. Giờ học cùng trình độ với sinh viên Nhật không ạ?)* |
| Park | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>1<rt>いち</rt></ruby><ruby>年<rt>ねん</rt></ruby><ruby>目<rt>め</rt></ruby>はきついです。<ruby>専門<rt>せんもん</rt></ruby><ruby>用語<rt>ようご</rt></ruby>が<ruby>多<rt>おお</rt></ruby>くて。<br>*(Nói thật, năm 1 hơi căng. Nhiều thuật ngữ chuyên ngành.)* |
| Đại | やっぱりそうですか。どう<ruby>対応<rt>たいおう</rt></ruby>しましたか？<br>*(Quả nhiên là vậy à. Anh đối phó thế nào?)* |
| Park | <ruby>日本人<rt>にほんじん</rt></ruby>の<ruby>友達<rt>ともだち</rt></ruby>を<ruby>作<rt>つく</rt></ruby>って、ノートを<ruby>見<rt>み</rt></ruby>せてもらいました。あと、<ruby>留学生<rt>りゅうがくせい</rt></ruby>サポートセンターで<ruby>無料<rt>むりょう</rt></ruby><ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>が<ruby>受<rt>う</rt></ruby>けられます。<br>*(Kết bạn người Nhật để mượn vở. Còn có trung tâm hỗ trợ du học sinh dạy kèm miễn phí.)* |
| Đại | <ruby>無料<rt>むりょう</rt></ruby><ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>があるんですか？<ruby>知<rt>し</rt></ruby>りませんでした。<br>*(Có dạy kèm miễn phí ạ? Em không biết.)* |
| Park | はい。あと、<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>専用<rt>せんよう</rt></ruby><ruby>寮<rt>りょう</rt></ruby>もあります。<ruby>家賃<rt>やちん</rt></ruby><ruby>月<rt>つき</rt></ruby> 35000<ruby>円<rt>えん</rt></ruby>です。<br>*(Vâng. Còn có ký túc riêng cho du học sinh. Thuê 35000 yên/tháng.)* |
| Đại | <ruby>安<rt>やす</rt></ruby>いですね！<ruby>大阪<rt>おおさか</rt></ruby><ruby>市内<rt>しない</rt></ruby>のアパートだと<ruby>6<rt>ろく</rt></ruby><ruby>万<rt>まん</rt></ruby><ruby>円<rt>えん</rt></ruby>するので。<br>*(Rẻ thật! Thuê chung cư trong thành phố Osaka phải 60k yên.)* |

---

## Tình huống 5 — Phòng lab Inoue · 11:30, tham quan phòng nghiên cứu NLP

*Đại được dẫn vào phòng lab Inoue-sensei. 6 senpai đang làm việc với màn hình lập trình.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |
| Inoue | おお、ようこそ。<ruby>井上<rt>いのうえ</rt></ruby>です。<br>*(Ồ, hoan nghênh. Tôi là Inoue.)* |
| Đại | グエン・ヴァン・ダイです！<ruby>先生<rt>せんせい</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>ませていただきました。<br>*(Em là Nguyễn Văn Đại! Em đã đọc paper của thầy.)* |
| Inoue | え、<ruby>本当<rt>ほんとう</rt></ruby>に？どの<ruby>論文<rt>ろんぶん</rt></ruby>？<br>*(Ơ, thật à? Paper nào?)* |
| Đại | 2023<ruby>年<rt>ねん</rt></ruby>の「<ruby>適応的<rt>てきおうてき</rt></ruby><ruby>学習<rt>がくしゅう</rt></ruby>システムの<ruby>第二言語<rt>だいにげんご</rt></ruby><ruby>習得<rt>しゅうとく</rt></ruby>への<ruby>応用<rt>おうよう</rt></ruby>」です。<br>*(Bài "Ứng dụng hệ thống học thích nghi vào tiếp thu ngôn ngữ thứ hai" năm 2023 ạ.)* |
| Inoue | （<ruby>驚<rt>おどろ</rt></ruby>く）よく<ruby>探<rt>さが</rt></ruby>しましたね！<ruby>感想<rt>かんそう</rt></ruby>は？<br>*(Ngạc nhiên. Em tìm tốt đấy! Cảm nghĩ thế nào?)* |
| Đại | <ruby>学習者<rt>がくしゅうしゃ</rt></ruby>の<ruby>誤<rt>あやま</rt></ruby>りパターンから<ruby>次<rt>つぎ</rt></ruby>の<ruby>問題<rt>もんだい</rt></ruby>を<ruby>生成<rt>せいせい</rt></ruby>するアイデアが<ruby>素晴<rt>すば</rt></ruby>らしいと<ruby>思<rt>おも</rt></ruby>いました。<ruby>自分<rt>じぶん</rt></ruby>もアプリで<ruby>同<rt>おな</rt></ruby>じことをしたいです。<br>*(Em thấy ý tưởng sinh câu hỏi tiếp theo từ pattern lỗi của người học rất tuyệt. Em cũng muốn làm điều tương tự trong app.)* |
| Inoue | （<ruby>感心<rt>かんしん</rt></ruby>）<ruby>論文<rt>ろんぶん</rt></ruby>の<ruby>核心<rt>かくしん</rt></ruby>を<ruby>掴<rt>つか</rt></ruby>んでますね。<ruby>合格<rt>ごうかく</rt></ruby>したら<ruby>是非<rt>ぜひ</rt></ruby>うちのラボへ。<br>*(Khâm phục. Em nắm cốt lõi paper đấy. Đỗ rồi nhất định vào lab của tôi nhé.)* |
| Đại | はい、<ruby>頑張<rt>がんば</rt></ruby>ります！<br>*(Vâng, em sẽ cố!)* |
| Senpai | （<ruby>横<rt>よこ</rt></ruby>から、<ruby>笑<rt>わら</rt></ruby>って）<ruby>先生<rt>せんせい</rt></ruby>が<ruby>褒<rt>ほ</rt></ruby>めるの<ruby>珍<rt>めずら</rt></ruby>しい！<br>*(Bên cạnh, cười. Hiếm khi thầy khen!)* |

---

## Tình huống 6 — Phòng lab · 11:45, hỏi senpai về sinh hoạt lab

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>先輩<rt>せんぱい</rt></ruby>、もう<ruby>一<rt>ひと</rt></ruby>つ<ruby>伺<rt>うかが</rt></ruby>ってもいいですか？<br>*(Anh sempai, em hỏi thêm một câu được không ạ?)* |
| Senpai | どうぞ。<br>*(Mời.)* |
| Đại | ラボの<ruby>1<rt>いち</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れはどんな<ruby>感<rt>かん</rt></ruby>じですか？<br>*(Lab một tuần có lịch như nào ạ?)* |
| Senpai | <ruby>月曜日<rt>げつようび</rt></ruby><ruby>朝<rt>あさ</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時<rt>じ</rt></ruby>に<ruby>進捗<rt>しんちょく</rt></ruby><ruby>報告<rt>ほうこく</rt></ruby><ruby>会<rt>かい</rt></ruby>があります。<ruby>木曜日<rt>もくようび</rt></ruby><ruby>14<rt>じゅうし</rt></ruby><ruby>時<rt>じ</rt></ruby>から<ruby>論文<rt>ろんぶん</rt></ruby><ruby>輪読会<rt>りんどくかい</rt></ruby>。<br>*(Sáng thứ 2 10h họp báo cáo tiến độ. Chiều thứ 5 14h đọc paper chung.)* |
| Đại | <ruby>論文<rt>ろんぶん</rt></ruby><ruby>輪読会<rt>りんどくかい</rt></ruby>って？<br>*(Đọc paper chung là gì ạ?)* |
| Senpai | <ruby>毎週<rt>まいしゅう</rt></ruby><ruby>一人<rt>ひとり</rt></ruby>が<ruby>最新<rt>さいしん</rt></ruby><ruby>論文<rt>ろんぶん</rt></ruby><ruby>一<rt>いっ</rt></ruby><ruby>本<rt>ぽん</rt></ruby><ruby>読<rt>よ</rt></ruby>んで<ruby>発表<rt>はっぴょう</rt></ruby>するの。みんなで<ruby>議論<rt>ぎろん</rt></ruby>する。<br>*(Mỗi tuần một người đọc 1 paper mới rồi thuyết trình. Cả nhóm bàn luận.)* |
| Đại | <ruby>留学生<rt>りゅうがくせい</rt></ruby>も<ruby>発表<rt>はっぴょう</rt></ruby>しますか？<br>*(Du học sinh cũng phải thuyết trình ạ?)* |
| Senpai | もちろん。<ruby>緊張<rt>きんちょう</rt></ruby>するけど、<ruby>力<rt>ちから</rt></ruby>つくよ。<br>*(Đương nhiên. Hồi hộp nhưng học được nhiều.)* |
| Đại | <ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Em học được nhiều rồi.)* |

---

## Tình huống 7 — Giảng đường · 13:00, model lecture「機械学習入門」

*Đại ngồi hàng 3, 60 sinh viên dự thử cả Nhật lẫn quốc tế. Giáo sư trẻ — Watanabe-sensei.*

| Vai | Lời thoại |
|---|---|
| Watanabe | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは「<ruby>機械学習入門<rt>きかいがくしゅうにゅうもん</rt></ruby>」です。<br>*(Chủ đề hôm nay là "Nhập môn Machine Learning".)* |
| Watanabe | スライド<ruby>1<rt>いち</rt></ruby><ruby>枚目<rt>まいめ</rt></ruby>:<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>とは、データから<ruby>規則性<rt>きそくせい</rt></ruby>を<ruby>自動的<rt>じどうてき</rt></ruby>に<ruby>発見<rt>はっけん</rt></ruby>する<ruby>技術<rt>ぎじゅつ</rt></ruby>です。<br>*(Slide 1: Machine learning là công nghệ tự động phát hiện quy luật từ dữ liệu.)* |
| Đại | (VN, tự nhủ) Theo kịp! Từ vựng N2 đủ. |
| Watanabe | <ruby>例<rt>たと</rt></ruby>えば、メールが<ruby>迷惑<rt>めいわく</rt></ruby>メールかどうかの<ruby>判別<rt>はんべつ</rt></ruby>。<br>*(Ví dụ, phân biệt email có phải spam hay không.)* |
| Watanabe | <ruby>質問<rt>しつもん</rt></ruby><ruby>等<rt>とう</rt></ruby>はありますか？<br>*(Có câu hỏi gì không?)* |
| Đại | （<ruby>手<rt>て</rt></ruby>を<ruby>挙<rt>あ</rt></ruby>げる）はい！<br>*(Giơ tay. Có ạ!)* |
| Watanabe | どうぞ。<br>*(Mời.)* |
| Đại | <ruby>機械学習<rt>きかいがくしゅう</rt></ruby>と<ruby>深層学習<rt>しんそうがくしゅう</rt></ruby>の<ruby>違<rt>ちが</rt></ruby>いは<ruby>何<rt>なん</rt></ruby>でしょうか？<br>*(Sự khác biệt giữa machine learning và deep learning là gì ạ?)* |
| Watanabe | いい<ruby>質問<rt>しつもん</rt></ruby>！<ruby>深層学習<rt>しんそうがくしゅう</rt></ruby>は<ruby>機械学習<rt>きかいがくしゅう</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つの<ruby>方法<rt>ほうほう</rt></ruby>で、ニューラルネットワークを<ruby>多層<rt>たそう</rt></ruby>に<ruby>重<rt>かさ</rt></ruby>ねたものです。<br>*(Câu hỏi hay! Deep learning là một phương pháp của machine learning, chồng nhiều lớp neural network lên nhau.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。ありがとうございます。<br>*(Em hiểu rồi. Cảm ơn thầy.)* |

---

## Tình huống 8 — Phòng tư vấn riêng · 14:30, individual session

*Đại được gọi vào phòng nhỏ, ngồi đối diện cán bộ tuyển sinh.*

| Vai | Lời thoại |
|---|---|
| Staff | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>掛<rt>か</rt></ruby>けください。<br>*(Anh Nguyên, mời ngồi.)* |
| Đại | <ruby>失礼<rt>しつれい</rt></ruby>します。<br>*(Em xin phép.)* |
| Staff | EJU と JLPT の<ruby>結果<rt>けっか</rt></ruby>は？<br>*(Kết quả EJU và JLPT thế nào?)* |
| Đại | EJU<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>回<rt>かい</rt></ruby> 480<ruby>点<rt>てん</rt></ruby>でした。<ruby>第<rt>だい</rt></ruby><ruby>二<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby> <ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby>に<ruby>受<rt>う</rt></ruby>けました。JLPTはN2を<ruby>142<rt>ひゃくよんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>で<ruby>合格<rt>ごうかく</rt></ruby>しました。<br>*(EJU đợt 1 được 480 ạ. Đợt 2 em thi tháng 11. JLPT N2 đỗ 142 điểm.)* |
| Staff | N2 142は<ruby>高得点<rt>こうとくてん</rt></ruby>ですね。EJU<ruby>第<rt>だい</rt></ruby><ruby>二<rt>に</rt></ruby><ruby>回<rt>かい</rt></ruby>で<ruby>540<rt>ごひゃくよんじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>取<rt>と</rt></ruby>れれば<ruby>出願<rt>しゅつがん</rt></ruby>できます。<br>*(N2 142 là điểm cao đấy. Đợt 2 EJU được 540 là nộp được.)* |
| Đại | <ruby>競争率<rt>きょうそうりつ</rt></ruby>はどのくらいですか？<br>*(Tỷ lệ cạnh tranh khoảng bao nhiêu ạ?)* |
| Staff | <ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>枠<rt>わく</rt></ruby>は<ruby>例年<rt>れいねん</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>倍<rt>ばい</rt></ruby>前後です。<br>*(Khoa Khoa học máy tính slot du học sinh hàng năm khoảng 5 chọi 1.)* |
| Đại | <ruby>志望<rt>しぼう</rt></ruby><ruby>理由書<rt>りゆうしょ</rt></ruby>で<ruby>気<rt>き</rt></ruby>をつけることは<ruby>何<rt>なに</rt></ruby>でしょうか？<br>*(Trong đơn nguyện vọng cần chú ý điều gì ạ?)* |
| Staff | <ruby>具体性<rt>ぐたいせい</rt></ruby>です。「<ruby>日本<rt>にほん</rt></ruby>が<ruby>好<rt>す</rt></ruby>き」「IT が<ruby>好<rt>す</rt></ruby>き」だけでは<ruby>弱<rt>よわ</rt></ruby>いです。<ruby>具体的<rt>ぐたいてき</rt></ruby>な<ruby>教授<rt>きょうじゅ</rt></ruby>、<ruby>論文<rt>ろんぶん</rt></ruby>、<ruby>研究<rt>けんきゅう</rt></ruby>テーマを<ruby>書<rt>か</rt></ruby>いてください。<br>*(Cụ thể hoá. Chỉ "thích Nhật" "thích IT" thì yếu. Phải ghi cụ thể tên giáo sư, paper, đề tài nghiên cứu.)* |
| Đại | <ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>引用<rt>いんよう</rt></ruby>するつもりです。<br>*(Em định trích dẫn paper của thầy Inoue.)* |
| Staff | （<ruby>頷<rt>うなず</rt></ruby>く）それは<ruby>強<rt>つよ</rt></ruby>いポイントになります。<br>*(Gật. Đó sẽ là điểm mạnh.)* |

---

## Tình huống 9 — Cantine Osaka U · 12:00 hôm sau Kobe U, hỏi staff về môi trường du học sinh

*Tuần sau, đi Kobe U. Cơ sở Rokkō trên núi. Đại ngồi ăn ramen ở căng-tin với staff support.*

| Vai | Lời thoại |
|---|---|
| Staff Kobe | グエンさん、<ruby>大阪大<rt>おおさかだい</rt></ruby>と<ruby>神戸大<rt>こうべだい</rt></ruby>、<ruby>迷<rt>まよ</rt></ruby>っていますか？<br>*(Anh Nguyên, đang phân vân giữa Osaka và Kobe à?)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>、<ruby>大阪大<rt>おおさかだい</rt></ruby>が<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>です。でも、こちらも<ruby>魅力的<rt>みりょくてき</rt></ruby>です。<br>*(Thật ra, Osaka là NV1. Nhưng trường ở đây cũng hấp dẫn ạ.)* |
| Staff | <ruby>神戸大<rt>こうべだい</rt></ruby>の<ruby>強<rt>つよ</rt></ruby>みは<ruby>国際<rt>こくさい</rt></ruby><ruby>交流<rt>こうりゅう</rt></ruby>です。<ruby>留学生<rt>りゅうがくせい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>く、<ruby>英語<rt>えいご</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>も<ruby>豊富<rt>ほうふ</rt></ruby>です。<br>*(Điểm mạnh của Kobe là giao lưu quốc tế. Nhiều du học sinh, giờ học tiếng Anh phong phú.)* |
| Đại | キャンパスからの<ruby>景色<rt>けしき</rt></ruby>が<ruby>本当<rt>ほんとう</rt></ruby>にきれいですね。<br>*(Cảnh từ campus đẹp thật ạ.)* |
| Staff | はい、<ruby>神戸<rt>こうべ</rt></ruby>の<ruby>夜景<rt>やけい</rt></ruby>が<ruby>見<rt>み</rt></ruby>えます。<ruby>世界<rt>せかい</rt></ruby><ruby>三大<rt>さんだい</rt></ruby><ruby>夜景<rt>やけい</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つ。<br>*(Vâng, nhìn được cảnh đêm Kobe. Một trong 3 cảnh đêm đẹp nhất thế giới.)* |
| Đại | <ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>寮<rt>りょう</rt></ruby>はありますか？<br>*(Có ký túc cho du học sinh không ạ?)* |
| Staff | あります。<ruby>月<rt>つき</rt></ruby> <ruby>32000<rt>さんまんにせん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<ruby>大阪大<rt>おおさかだい</rt></ruby>より<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>いです。<br>*(Có. 32000/tháng. Rẻ hơn Osaka U một chút.)* |
| Đại | <ruby>情報<rt>じょうほう</rt></ruby><ruby>系<rt>けい</rt></ruby>の<ruby>研究室<rt>けんきゅうしつ</rt></ruby>もあるんでしょうか？<br>*(Có phòng nghiên cứu mảng CNTT không ạ?)* |
| Staff | あります。<ruby>工学部<rt>こうがくぶ</rt></ruby><ruby>情報<rt>じょうほう</rt></ruby><ruby>知能<rt>ちのう</rt></ruby><ruby>工学科<rt>こうがっか</rt></ruby>です。<br>*(Có. Khoa Kỹ thuật Thông tin và Trí tuệ thuộc 工学部.)* |
| Đại | ご<ruby>説明<rt>せつめい</rt></ruby>ありがとうございました。<ruby>参考<rt>さんこう</rt></ruby>になりました。<br>*(Cảm ơn anh đã giải thích. Em sẽ tham khảo ạ.)* |

---

## Tình huống 10 — Sảnh Kansai U · 14:00, OC trường tư thục, hỏi học bổng

*Tuần thứ ba, Kansai U ở Senriyama. Quy mô lớn, đông sinh viên. Cán bộ tư vấn rất nhiệt tình.*

| Vai | Lời thoại |
|---|---|
| Staff | <ruby>関西大学<rt>かんさいだいがく</rt></ruby>へようこそ！<br>*(Chào mừng đến ĐH Kansai!)* |
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>滑<rt>すべ</rt></ruby>り<ruby>止<rt>ど</rt></ruby>めとして<ruby>検討<rt>けんとう</rt></ruby>しています。<br>*(Cảm ơn anh chăm em. Em đang xem làm trường dự phòng ạ.)* |
| Staff | <ruby>正直<rt>しょうじき</rt></ruby>でいいですね。<ruby>本学<rt>ほんがく</rt></ruby>は<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>奨学金<rt>しょうがくきん</rt></ruby><ruby>制度<rt>せいど</rt></ruby>が<ruby>充実<rt>じゅうじつ</rt></ruby>しています。<br>*(Em thẳng thắn tốt đấy. Trường có chế độ học bổng du học sinh đầy đủ.)* |
| Đại | <ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>教<rt>おし</rt></ruby>えていただけますか？<br>*(Anh có thể cho em biết cụ thể không ạ?)* |
| Staff | EJU<ruby>得点<rt>とくてん</rt></ruby> <ruby>500<rt>ごひゃく</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>で<ruby>授業料<rt>じゅぎょうりょう</rt></ruby> <ruby>30<rt>さんじゅう</rt></ruby>パーセント<ruby>免除<rt>めんじょ</rt></ruby>。<ruby>550<rt>ごひゃくごじゅう</rt></ruby><ruby>点<rt>てん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>で<ruby>50<rt>ごじゅう</rt></ruby>パーセント<ruby>免除<rt>めんじょ</rt></ruby>です。<br>*(EJU 500 trở lên giảm 30% học phí. 550 trở lên giảm 50%.)* |
| Đại | え、すごいですね！<br>*(Ơ, tuyệt vời ạ!)* |
| Staff | <ruby>大阪大<rt>おおさかだい</rt></ruby>や<ruby>神戸大<rt>こうべだい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>しても、<ruby>本学<rt>ほんがく</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぶ<ruby>学生<rt>がくせい</rt></ruby>もいます。<br>*(Có sinh viên đỗ Osaka, Kobe rồi vẫn chọn trường chúng tôi.)* |
| Đại | <ruby>就職<rt>しゅうしょく</rt></ruby><ruby>実績<rt>じっせき</rt></ruby>はどうですか？<br>*(Thành tích xin việc thế nào ạ?)* |
| Staff | <ruby>関西<rt>かんさい</rt></ruby><ruby>地域<rt>ちいき</rt></ruby>でのネームバリューは<ruby>高<rt>たか</rt></ruby>いです。<ruby>関関同立<rt>かんかんどうりつ</rt></ruby>の<ruby>一<rt>ひと</rt></ruby>つです。<br>*(Tên tuổi ở Kansai cao. Là một trong "Kankan-Doritsu".)* |
| Đại | <ruby>関関同立<rt>かんかんどうりつ</rt></ruby>って<ruby>聞<rt>き</rt></ruby>いたことがあります。<br>*(Em nghe nói về "Kankan-Doritsu" rồi ạ.)* |

---

## Tình huống 11 — Bàn ăn nhà Tanaka · 19:00, kể homestay kết quả 3 trường

*Cuối tuần thứ ba, Đại về kể với Tony và Yumi bữa tối.*

| Vai | Lời thoại |
|---|---|
| Tony | <ruby>3<rt>さん</rt></ruby><ruby>校<rt>こう</rt></ruby>のオープンキャンパス、どうだった？<br>*(3 trường Open Campus, thế nào?)* |
| Đại | <ruby>面白<rt>おもしろ</rt></ruby>かったです。<ruby>三<rt>さん</rt></ruby><ruby>校<rt>こう</rt></ruby><ruby>三<rt>さん</rt></ruby><ruby>様<rt>よう</rt></ruby>でした。<br>*(Thú vị ạ. Ba trường ba kiểu.)* |
| Yumi | <ruby>具体的<rt>ぐたいてき</rt></ruby>に？<br>*(Cụ thể?)* |
| Đại | <ruby>大阪大<rt>おおさかだい</rt></ruby>は<ruby>研究<rt>けんきゅう</rt></ruby>レベルが<ruby>高<rt>たか</rt></ruby>くて、<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>が「ラボへ<ruby>来<rt>き</rt></ruby>てね」と<ruby>言<rt>い</rt></ruby>ってくれました。<br>*(Osaka U trình độ nghiên cứu cao, thầy Inoue còn bảo "vào lab tôi nhé".)* |
| Yumi | え、すごい！<ruby>教授<rt>きょうじゅ</rt></ruby>から<ruby>直接<rt>ちょくせつ</rt></ruby>？<br>*(Ơ, đỉnh! Giáo sư trực tiếp nói à?)* |
| Đại | はい。<ruby>論文<rt>ろんぶん</rt></ruby>を<ruby>読<rt>よ</rt></ruby>んでいったので、<ruby>感想<rt>かんそう</rt></ruby>を<ruby>話<rt>はな</rt></ruby>したら<ruby>喜<rt>よろこ</rt></ruby>んでくれました。<br>*(Vâng. Em đọc paper trước rồi, kể cảm nhận thì thầy vui.)* |
| Tony | <ruby>準備<rt>じゅんび</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>だな。<br>*(Chuẩn bị quan trọng nhỉ.)* |
| Đại | <ruby>神戸大<rt>こうべだい</rt></ruby>は<ruby>景色<rt>けしき</rt></ruby>がきれいで、<ruby>国際<rt>こくさい</rt></ruby><ruby>交流<rt>こうりゅう</rt></ruby>が<ruby>強<rt>つよ</rt></ruby>いです。<ruby>関西大<rt>かんさいだい</rt></ruby>は<ruby>奨学金<rt>しょうがくきん</rt></ruby>が<ruby>充実<rt>じゅうじつ</rt></ruby>です。<br>*(Kobe cảnh đẹp, giao lưu quốc tế mạnh. Kansai học bổng đầy.)* |
| Yumi | じゃあ、<ruby>第<rt>だい</rt></ruby><ruby>一<rt>いち</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>は<ruby>変<rt>か</rt></ruby>わらない？<br>*(Vậy NV1 không đổi?)* |
| Đại | <ruby>大阪大<rt>おおさかだい</rt></ruby>です。<ruby>井上<rt>いのうえ</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>のラボに<ruby>絶対<rt>ぜったい</rt></ruby><ruby>入<rt>はい</rt></ruby>りたいです。<br>*(Osaka. Nhất định em muốn vào lab thầy Inoue.)* |
| Tony | 目<ruby>標<rt>ひょう</rt></ruby>がはっきりしてていいな。<br>*(Có mục tiêu rõ ràng tốt đấy.)* |

---

## Tình huống 12 — Phòng ký túc · 22:00, gọi điện Mai tổng kết

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Anh ơi, Open Campus xong hết rồi à? |
| Đại | (tiếng Việt) Xong em. 3 trường 3 cảm giác khác hẳn. |
| Mai | (tiếng Việt) Trường nào anh thích nhất? |
| Đại | (tiếng Việt) Osaka U nhất định. Cái hay nhất là anh được vào tận phòng lab của thầy Inoue — người anh trích paper. Thầy còn bảo "đỗ rồi vào lab tôi". |
| Mai | (tiếng Việt) Trời ơi, "教授スカウト" luôn rồi. Em mừng quá! |
| Đại | (tiếng Việt) Chưa chắc đâu em, vẫn phải đỗ vòng hồ sơ với thi riêng. Nhưng nói chuyện thầy trực tiếp giúp anh tự tin hơn nhiều. |
| Mai | (tiếng Việt) Kobe U với Kansai U thì sao? |
| Đại | (tiếng Việt) Kobe đẹp lắm — cảnh đêm trên núi. Quốc tế hoá mạnh. NV2 anh đặt Kobe. Kansai có học bổng 30-50% học phí — sẽ làm dự phòng. Trượt cả 2 trên thì anh vẫn có chỗ. |
| Mai | (tiếng Việt) Mà anh đã chọn được bài luận để viết chưa? |
| Đại | (tiếng Việt) Có rồi. Em nhớ paper "適応的学習システム" thầy Inoue chứ? Anh sẽ kể về app hướng dẫn du lịch anh làm với chị Linh — bản tự sinh câu hỏi dựa trên lỗi user — chính là ý tưởng thầy. Liên kết tự nhiên luôn. |
| Mai | (tiếng Việt) Chuẩn cmn rồi. Cố lên anh nhé. Hồ sơ deadline 15/12 đúng không? |
| Đại | (tiếng Việt) Ừ. Cuối tuần này anh hoàn thành nháp 志望理由書 đưa cô Yamada sửa. |
| Mai | (tiếng Việt) Em yêu anh! Đi ngủ ngon nha. |
| Đại | (tiếng Việt) Yêu em. Chào nha. |

---

## Đọng lại chương 11

3 chuyến Open Campus dạy Đại 6 kỹ năng giao tiếp quan trọng. **Quầy check-in**: dùng **「事前予約しました」+「〜と申します」**. **Q&A info session**: mở đầu **「〜について伺ってもよろしいでしょうか」** rồi đặt câu hỏi cụ thể (EJU vs JLPT cái nào trọng số cao). **Phòng lab Inoue**: đỉnh điểm lớn nhất — đọc paper trước rồi nói **「先生の論文を読ませていただきました」** dẫn đến lời mời **「合格したらうちのラボへ」** từ giáo sư. **Model lecture 機械学習入門**: giơ tay hỏi **「〜と〜の違いは何でしょうか」** — phân biệt machine learning vs deep learning. **Tư vấn riêng**: lấy thông tin về **競争率 5倍**, **具体性 trong 志望理由書**. **Kobe + Kansai**: học mẫu so sánh trường — **国際交流が強い**, **奨学金が充実**, **関関同立**. Đại tổng kết với Tony+Yumi rồi Mai: NV1 Osaka không đổi, NV2 Kobe, dự phòng Kansai.

> Từ vựng & mẫu câu chương này: オープンキャンパス・留学生受付・事前予約・名札・説明会・研究室見学・模擬授業・個別相談・選考基準・競争率・5倍・留学生枠・適応的学習システム・機械学習・深層学習・ニューラルネットワーク・進捗報告会・論文輪読会・チューター・留学生専用寮・国際交流・関関同立・奨学金免除・〜について伺ってもよろしいでしょうか・〜の見学をお願いできますか・読ませていただきました・参考になりました

## Bí quyết chương

- **Đọc paper giáo sư TRƯỚC khi đi OC**: Đỉnh điểm cực lớn — thầy nhớ mặt + lời mời vào lab.
- **Hỏi sempai đang học hiện tại**: Thông tin thật về độ khó năm 1, hỗ trợ free, ký túc rẻ — không có trong brochure.
- **3 trường = 3 trải nghiệm khác hẳn**: NV1 nghiên cứu, NV2 cảnh quan + quốc tế, dự phòng học bổng.
- **「正直、滑り止めとして検討しています」**: Thẳng thắn với staff trường tư — họ tôn trọng hơn nói dối.
- **「具体性」trong 志望理由書**: Tên giáo sư + paper + đề tài cụ thể — KHÔNG dùng "thích Nhật" "thích IT" chung chung.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| オープンキャンパス | — | — | Open Campus |
| 豊中キャンパス | とよなかキャンパス | PHONG TRUNG | Cơ sở Toyonaka |
| 留学生受付 | りゅうがくせいうけつけ | LƯU HỌC SINH THỤ PHÓ | Quầy lễ tân du học sinh |
| 事前予約 | じぜんよやく | SỰ TIỀN DỰ ƯỚC | Đăng ký trước |
| 名札 | なふだ | DANH TRÁP | Thẻ tên |
| 説明会 | せつめいかい | THUYẾT MINH HỘI | Buổi thuyết minh |
| 研究室見学 | けんきゅうしつけんがく | NGHIÊN CỨU THẤT KIẾN HỌC | Tham quan phòng nghiên cứu |
| 模擬授業 | もぎじゅぎょう | MÔ NGHĨ THỤ NGHIỆP | Giảng thử |
| 個別相談 | こべつそうだん | CÁ BIỆT TƯƠNG ĐÀM | Tư vấn riêng |
| 後方 | こうほう | HẬU PHƯƠNG | Phía sau |
| 選考基準 | せんこうきじゅん | TUYỂN KHẢO CƠ CHUẨN | Tiêu chí xét tuyển |
| 重視 | じゅうし | TRỌNG THỊ | Coi trọng |
| チューター | — | — | Tutor |
| 正直 | しょうじき | CHÍNH TRỰC | Thẳng thắn |
| 専門用語 | せんもんようご | CHUYÊN MÔN DỤNG NGỮ | Thuật ngữ chuyên ngành |
| 個別指導 | こべつしどう | CÁ BIỆT CHỈ ĐẠO | Dạy kèm riêng |
| 寮 | りょう | LIÊU | Ký túc xá |
| 家賃 | やちん | GIA NHẪM | Tiền thuê |
| 学習者 | がくしゅうしゃ | HỌC TẬP GIẢ | Người học |
| 誤り | あやまり | NGỘ | Lỗi |
| 生成 | せいせい | SINH THÀNH | Sinh ra |
| 核心 | かくしん | HẠCH TÂM | Cốt lõi |
| 掴む | つかむ | TRẢO | Nắm |
| 進捗 | しんちょく | TIẾN THÔI | Tiến độ |
| 報告会 | ほうこくかい | BÁO CÁO HỘI | Buổi báo cáo |
| 論文輪読会 | ろんぶんりんどくかい | LUẬN VĂN LUÂN ĐỘC HỘI | Buổi đọc paper |
| 議論 | ぎろん | NGHỊ LUẬN | Tranh luận |
| 機械学習 | きかいがくしゅう | CƠ GIỚI HỌC TẬP | Machine learning |
| 深層学習 | しんそうがくしゅう | THÂM TẦNG HỌC TẬP | Deep learning |
| 規則性 | きそくせい | QUY TẮC TÍNH | Quy luật |
| 判別 | はんべつ | PHÁN BIỆT | Phân biệt |
| 迷惑メール | めいわくメール | MÊ HOẶC | Email spam |
| ニューラルネットワーク | — | — | Neural network |
| 多層 | たそう | ĐA TẦNG | Nhiều lớp |
| 重ねる | かさねる | TRỌNG | Chồng |
| 競争率 | きょうそうりつ | CẠNH TRANH SUẤT | Tỷ lệ cạnh tranh |
| 高得点 | こうとくてん | CAO ĐẮC ĐIỂM | Điểm cao |
| 具体性 | ぐたいせい | CỤ THỂ TÍNH | Tính cụ thể |
| 国際交流 | こくさいこうりゅう | QUỐC TẾ GIAO LƯU | Giao lưu quốc tế |
| 工学部 | こうがくぶ | CÔNG HỌC BỘ | Khoa Kỹ thuật |
| 知能 | ちのう | TRI NĂNG | Trí tuệ |
| 検討 | けんとう | KIỂM THẢO | Cân nhắc |
| 奨学金免除 | しょうがくきんめんじょ | TƯỞNG HỌC KIM MIỄN TRỪ | Miễn giảm học phí |
| 関関同立 | かんかんどうりつ | QUAN QUAN ĐỒNG LẬP | Kankan-Doritsu |
| 実績 | じっせき | THỰC TÍCH | Thành tích |
| 参考 | さんこう | THAM KHẢO | Tham khảo |', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (802000012, 800000020, NULL, 'markdown_book', 'T12. Chọn yobikou luyện thi (予備校選択)', '# Sách du học sinh tiếng Nhật · T12. Chọn yobikou luyện thi (予備校選択)

> **Mục tiêu nhân vật:** Đại (11/2025, sau Open Campus, trước EJU đợt 2). Đại nhận ra muốn an toàn đỗ Osaka U thì phải vào 予備校 (yobikou — trường luyện thi chuyên du học sinh) để học 数学 + 志望理由書 + 面接 trình độ cao. Học các mẫu câu khi tham quan + so sánh 3 yobikou (Nagaitatsu, KCP, JASSO), thương lượng học phí, đăng ký lớp, và xin lời khuyên sempai từng học.

---

## Bối cảnh

11/2025. Đại đã đỗ N2, đi 3 Open Campus xong, đang viết bản nháp 志望理由書. Cô Yamada review xong nhận xét: **「文章はいいけど、独自試験の数学と面接は厳しい。予備校を検討して」**. Có 3 yobikou nổi tiếng dành cho du học sinh ở Osaka: **Nagaitatsu (栄光)**, **KCP International**, **JASSO Center**. Học phí 1 khoá 3 tháng dao động 80k-150k yên. Đại có 6 tuần trước EJU đợt 2, cần quyết định chọn lớp gì. Chương này tập trung các mẫu câu **「〜のコースについて詳しく教えていただけますか」「割引制度はありますか」「体験授業を受けることはできますか」** dùng khi nói chuyện với tư vấn yobikou.

---

## Tình huống 1 — Phòng giáo viên · 16:00, cô Yamada khuyên vào yobikou

*Sau khi xem bản nháp 志望理由書 của Đại, cô Yamada đặt bút xuống.*

| Vai | Lời thoại |
|---|---|
| Yamada | ダイ<ruby>君<rt>くん</rt></ruby>、<ruby>文章<rt>ぶんしょう</rt></ruby>はよく<ruby>書<rt>か</rt></ruby>けてます。<br>*(Đại, văn bản viết tốt đấy.)* |
| Đại | ありがとうございます！<br>*(Cảm ơn cô!)* |
| Yamada | でも、<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>独自<rt>どくじ</rt></ruby><ruby>試験<rt>しけん</rt></ruby>の<ruby>数学<rt>すうがく</rt></ruby>と<ruby>面接<rt>めんせつ</rt></ruby>は、<ruby>本校<rt>ほんこう</rt></ruby>だけでは<ruby>厳<rt>きび</rt></ruby>しいです。<br>*(Nhưng nói thật, môn Toán bài thi riêng và phỏng vấn chỉ dựa vào trường mình thì hơi khó.)* |
| Đại | ...そうですか。<br>*(... Vậy ạ.)* |
| Yamada | <ruby>予備校<rt>よびこう</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>してみてください。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>コースがある<ruby>予備校<rt>よびこう</rt></ruby>があります。<br>*(Em thử xem xét yobikou đi. Có yobikou mở khoá chuyên Osaka U đấy.)* |
| Đại | <ruby>予備校<rt>よびこう</rt></ruby>って、<ruby>具体的<rt>ぐたいてき</rt></ruby>にどんなところですか？<br>*(Yobikou cụ thể là chỗ thế nào ạ?)* |
| Yamada | <ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>の<ruby>受験<rt>じゅけん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby><ruby>学校<rt>がっこう</rt></ruby>。<ruby>大阪<rt>おおさか</rt></ruby>には<ruby>三<rt>みっ</rt></ruby>つ<ruby>有名<rt>ゆうめい</rt></ruby>です。<br>*(Trường luyện thi riêng cho du học sinh. Ở Osaka có 3 trường nổi.)* |
| Yamada | <ruby>栄光<rt>えいこう</rt></ruby>、KCP、JASSO センター。<ruby>各自<rt>かくじ</rt></ruby>パンフレットを<ruby>取<rt>と</rt></ruby>って、<ruby>体験<rt>たいけん</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けてみてください。<br>*(Eikō, KCP, trung tâm JASSO. Em lấy brochure từng nơi, dự giờ thử.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>今<rt>こん</rt></ruby><ruby>週末<rt>しゅうまつ</rt></ruby>から<ruby>回<rt>まわ</rt></ruby>ります。<br>*(Em hiểu rồi. Cuối tuần này em sẽ đi.)* |

---

## Tình huống 2 — Văn phòng Nagaitatsu (栄光) · 10:00 thứ 7, gặp tư vấn

*Đại đến văn phòng Nagaitatsu ở Umeda. Cán bộ tư vấn nam khoảng 40 tuổi mời ngồi.*

| Vai | Lời thoại |
|---|---|
| Tư vấn | グエン<ruby>様<rt>さま</rt></ruby>、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<ruby>佐藤<rt>さとう</rt></ruby>と<ruby>申<rt>もう</rt></ruby>します。<br>*(Anh Nguyên, cảm ơn anh đã đến. Tôi là Sato.)* |
| Đại | グエン・ヴァン・ダイです。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>で、<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>の<ruby>独自<rt>どくじ</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>を<ruby>探<rt>さが</rt></ruby>しています。<br>*(Em là Nguyễn Văn Đại. Nguyện vọng Osaka, đang tìm khoá ôn thi riêng tháng 2.)* |
| Sato | はい、<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>情報科学科<rt>じょうほうかがくか</rt></ruby><ruby>専門<rt>せんもん</rt></ruby>コースがございます。コースについて<ruby>詳<rt>くわ</rt></ruby>しくご<ruby>説明<rt>せつめい</rt></ruby>させていただきます。<br>*(Vâng, bên chúng tôi có khoá chuyên Khoa học máy tính ĐH Osaka. Cho phép tôi trình bày chi tiết.)* |
| Đại | お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin nghe.)* |
| Sato | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>集中<rt>しゅうちゅう</rt></ruby>コースです。<ruby>数学<rt>すうがく</rt></ruby>、<ruby>論文<rt>ろんぶん</rt></ruby><ruby>添削<rt>てんさく</rt></ruby>、<ruby>面接<rt>めんせつ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>の<ruby>三<rt>さん</rt></ruby><ruby>本柱<rt>ぼんばしら</rt></ruby>。<br>*(Khoá tập trung 3 tháng. 3 trụ: Toán, sửa luận, luyện phỏng vấn.)* |
| Đại | <ruby>授業料<rt>じゅぎょうりょう</rt></ruby>は？<br>*(Học phí thế nào ạ?)* |
| Sato | <ruby>150000<rt>じゅうごまん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(150000 yên.)* |
| Đại | （<ruby>少<rt>すこ</rt></ruby>し<ruby>驚<rt>おどろ</rt></ruby>く）...そうですか。<ruby>分割払<rt>ぶんかつばら</rt></ruby>いは<ruby>可能<rt>かのう</rt></ruby>ですか？<br>*(Hơi bất ngờ. ... Vậy ạ. Có trả góp được không ạ?)* |
| Sato | はい、<ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>分割<rt>ぶんかつ</rt></ruby>まで<ruby>無<rt>む</rt></ruby><ruby>金利<rt>きんり</rt></ruby>で<ruby>可能<rt>かのう</rt></ruby>です。<br>*(Vâng, có thể trả 3 đợt không lãi.)* |

---

## Tình huống 3 — Vẫn ở Nagaitatsu · 10:20, hỏi giảng viên + tỷ lệ đỗ

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>合格<rt>ごうかく</rt></ruby><ruby>実績<rt>じっせき</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>ってもよろしいでしょうか？<br>*(Em xin được hỏi về thành tích đỗ ạ?)* |
| Sato | <ruby>昨年度<rt>さくねんど</rt></ruby>、<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby><ruby>者<rt>しゃ</rt></ruby> <ruby>8<rt>はち</rt></ruby><ruby>名<rt>めい</rt></ruby>、<ruby>受講<rt>じゅこう</rt></ruby><ruby>者<rt>しゃ</rt></ruby> <ruby>15<rt>じゅうご</rt></ruby><ruby>名<rt>めい</rt></ruby>でした。<br>*(Năm ngoái 8 đỗ Osaka U, 15 học viên.)* |
| Đại | <ruby>合格率<rt>ごうかくりつ</rt></ruby> <ruby>53<rt>ごじゅうさん</rt></ruby>パーセントですね。<ruby>講師<rt>こうし</rt></ruby>はどのような<ruby>方<rt>かた</rt></ruby>ですか？<br>*(Tỷ lệ đỗ 53%. Giảng viên là người như nào ạ?)* |
| Sato | <ruby>数学<rt>すうがく</rt></ruby><ruby>講師<rt>こうし</rt></ruby>は<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>院卒<rt>いんそつ</rt></ruby>。<ruby>論文<rt>ろんぶん</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>は<ruby>元<rt>もと</rt></ruby><ruby>大学<rt>だいがく</rt></ruby><ruby>教授<rt>きょうじゅ</rt></ruby>。<ruby>面接<rt>めんせつ</rt></ruby><ruby>担当<rt>たんとう</rt></ruby>は<ruby>商社<rt>しょうしゃ</rt></ruby><ruby>人事<rt>じんじ</rt></ruby><ruby>経験<rt>けいけん</rt></ruby>者。<br>*(Giảng viên Toán: tốt nghiệp cao học Osaka U. Người sửa luận: cựu giáo sư ĐH. Người phụ trách phỏng vấn: cựu nhân sự công ty thương mại.)* |
| Đại | <ruby>本格的<rt>ほんかくてき</rt></ruby>ですね。<ruby>体験<rt>たいけん</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>を<ruby>受<rt>う</rt></ruby>けることはできますか？<br>*(Bài bản thật ạ. Em có thể dự giờ thử không ạ?)* |
| Sato | もちろんです。<ruby>来週<rt>らいしゅう</rt></ruby>の<ruby>火曜日<rt>かようび</rt></ruby> <ruby>19<rt>じゅうく</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>数学<rt>すうがく</rt></ruby><ruby>体験<rt>たいけん</rt></ruby>クラスがあります。<br>*(Đương nhiên. Thứ 3 tuần sau 19h có lớp thử Toán.)* |
| Đại | <ruby>予約<rt>よやく</rt></ruby>します。<br>*(Em đăng ký ạ.)* |

---

## Tình huống 4 — KCP International · 14:00, không khí khác hẳn

*Buổi chiều cùng ngày, Đại đến KCP — yobikou quy mô lớn, có cả lớp dự bị ĐH, sinh viên đông.*

| Vai | Lời thoại |
|---|---|
| Tư vấn KCP | KCP インターナショナルへようこそ。<br>*(Chào mừng đến KCP International.)* |
| Đại | お<ruby>世話<rt>せわ</rt></ruby>になります。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>対策<rt>たいさく</rt></ruby><ruby>講座<rt>こうざ</rt></ruby>はありますか？<br>*(Em chào ạ. Có khoá ôn Osaka U không ạ?)* |
| Tư vấn | はい、ございます。<ruby>当校<rt>とうこう</rt></ruby>の<ruby>特徴<rt>とくちょう</rt></ruby>は<ruby>少人数制<rt>しょうにんずうせい</rt></ruby>です。<ruby>1<rt>いち</rt></ruby>クラス <ruby>8<rt>はち</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>以内<rt>いない</rt></ruby>。<br>*(Vâng, có ạ. Đặc trưng trường là lớp nhỏ. Mỗi lớp dưới 8 người.)* |
| Đại | <ruby>少人数<rt>しょうにんずう</rt></ruby>はいいですね。<ruby>授業料<rt>じゅぎょうりょう</rt></ruby>は？<br>*(Lớp nhỏ tốt nhỉ. Học phí thế nào ạ?)* |
| Tư vấn | <ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby> <ruby>120000<rt>じゅうにまん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(3 tháng 120000 yên.)* |
| Đại | <ruby>栄光<rt>えいこう</rt></ruby>より<ruby>少<rt>すこ</rt></ruby>し<ruby>安<rt>やす</rt></ruby>いですね。<ruby>割引<rt>わりびき</rt></ruby><ruby>制度<rt>せいど</rt></ruby>はありますか？<br>*(Rẻ hơn Eikō một chút nhỉ. Có chế độ giảm giá không ạ?)* |
| Tư vấn | はい、N2<ruby>所持<rt>しょじ</rt></ruby><ruby>者<rt>しゃ</rt></ruby>は <ruby>10<rt>じゅう</rt></ruby>パーセント<ruby>割引<rt>わりびき</rt></ruby>。<ruby>友人<rt>ゆうじん</rt></ruby><ruby>紹介<rt>しょうかい</rt></ruby><ruby>制度<rt>せいど</rt></ruby>もあります。<br>*(Vâng, người có N2 giảm 10%. Còn chế độ giới thiệu bạn bè.)* |
| Đại | N2<ruby>合格<rt>ごうかく</rt></ruby>しています。 <ruby>10<rt>じゅう</rt></ruby>パーセントだと <ruby>108000<rt>じゅうまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>ですね。<br>*(Em đã đỗ N2. Giảm 10% là 108000 yên nhỉ.)* |
| Tư vấn | はい、その<ruby>通<rt>とお</rt></ruby>りです。<br>*(Vâng, đúng vậy.)* |
| Đại | <ruby>講師陣<rt>こうしじん</rt></ruby>は？<br>*(Đội ngũ giảng viên thế nào?)* |
| Tư vấn | <ruby>京大<rt>きょうだい</rt></ruby>・<ruby>阪大<rt>はんだい</rt></ruby><ruby>院卒<rt>いんそつ</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>。<ruby>面接<rt>めんせつ</rt></ruby>は<ruby>少人数<rt>しょうにんずう</rt></ruby>のため<ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>が<ruby>充実<rt>じゅうじつ</rt></ruby>。<br>*(Chủ yếu là cựu cao học Kyoto-Osaka. Phỏng vấn vì lớp nhỏ nên dạy riêng đầy đủ.)* |

---

## Tình huống 5 — JASSO Center · sáng chủ nhật, lựa chọn thứ 3

*Đại đến JASSO — trung tâm hỗ trợ chính phủ Nhật, giá rất rẻ.*

| Vai | Lời thoại |
|---|---|
| Staff JASSO | JASSO<ruby>留学生<rt>りゅうがくせい</rt></ruby><ruby>支援<rt>しえん</rt></ruby>センターへようこそ。<br>*(Chào mừng đến trung tâm hỗ trợ JASSO.)* |
| Đại | こんにちは。<ruby>受験対策<rt>じゅけんたいさく</rt></ruby><ruby>講座<rt>こうざ</rt></ruby>について<ruby>伺<rt>うかが</rt></ruby>いに<ruby>来<rt>き</rt></ruby>ました。<br>*(Chào ạ. Em đến hỏi về khoá ôn thi.)* |
| Staff | はい、<ruby>独立<rt>どくりつ</rt></ruby><ruby>行政<rt>ぎょうせい</rt></ruby><ruby>法人<rt>ほうじん</rt></ruby>のため、<ruby>授業料<rt>じゅぎょうりょう</rt></ruby>は<ruby>非常<rt>ひじょう</rt></ruby>に<ruby>安<rt>やす</rt></ruby>いです。<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby> <ruby>80000<rt>はちまん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(Vâng, vì là hành chính công nên học phí rất rẻ. 3 tháng 80000 yên.)* |
| Đại | え、すごく<ruby>安<rt>やす</rt></ruby>いですね！<ruby>授業<rt>じゅぎょう</rt></ruby>の<ruby>質<rt>しつ</rt></ruby>は<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>でしょうか？<br>*(Ơ, rẻ thật ạ! Chất lượng giảng dạy có đảm bảo không ạ?)* |
| Staff | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>講師<rt>こうし</rt></ruby>は<ruby>大学院生<rt>だいがくいんせい</rt></ruby>の<ruby>非常勤<rt>ひじょうきん</rt></ruby><ruby>中心<rt>ちゅうしん</rt></ruby>です。<br>*(Nói thật, giảng viên chủ yếu là học viên cao học làm thêm giờ.)* |
| Đại | クラスサイズは？<br>*(Cỡ lớp thế nào ạ?)* |
| Staff | <ruby>20<rt>にじゅう</rt></ruby><ruby>名<rt>めい</rt></ruby><ruby>程度<rt>ていど</rt></ruby>。<ruby>個別<rt>こべつ</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>は<ruby>月<rt>つき</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>回<rt>かい</rt></ruby>のみです。<br>*(Khoảng 20 người. Hướng dẫn phỏng vấn riêng chỉ 1 lần/tháng.)* |
| Đại | <ruby>合格<rt>ごうかく</rt></ruby><ruby>実績<rt>じっせき</rt></ruby>は？<br>*(Thành tích đỗ thế nào ạ?)* |
| Staff | データは<ruby>公表<rt>こうひょう</rt></ruby>していません。<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Chúng tôi không công bố số liệu. Xin lỗi.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>検討<rt>けんとう</rt></ruby>いたします。<br>*(Em hiểu rồi. Em sẽ cân nhắc.)* |

---

## Tình huống 6 — Sảnh trường tiếng · 17:00, hỏi sempai Rim — từng học KCP

| Vai | Lời thoại |
|---|---|
| Đại | リム<ruby>先輩<rt>せんぱい</rt></ruby>、KCPで<ruby>勉強<rt>べんきょう</rt></ruby>していましたよね？<br>*(Chị Rim, hồi đó chị học ở KCP đúng không?)* |
| Rim | うん、<ruby>3<rt>さん</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby><ruby>通<rt>かよ</rt></ruby>った。<br>*(Ừ, đi học 3 tháng.)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>な<ruby>感想<rt>かんそう</rt></ruby>は？<br>*(Cảm nhận thật của chị?)* |
| Rim | <ruby>個別<rt>こべつ</rt></ruby><ruby>指導<rt>しどう</rt></ruby>は<ruby>本当<rt>ほんとう</rt></ruby>によかった。<ruby>面接<rt>めんせつ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby>を <ruby>20<rt>にじゅう</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>やった。<br>*(Hướng dẫn riêng thật sự tốt. Luyện phỏng vấn hơn 20 lần.)* |
| Đại | <ruby>20<rt>にじゅう</rt></ruby><ruby>回<rt>かい</rt></ruby>!?<br>*(20 lần à?!)* |
| Rim | うん、<ruby>少人数<rt>しょうにんずう</rt></ruby>だから<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>順番<rt>じゅんばん</rt></ruby>が<ruby>回<rt>まわ</rt></ruby>ってくる。<ruby>京大<rt>きょうだい</rt></ruby>に<ruby>合格<rt>ごうかく</rt></ruby>できたのはそのおかげ。<br>*(Ừ, lớp nhỏ nên tuần nào cũng đến lượt. Đỗ Kyoto là nhờ cái đó.)* |
| Đại | <ruby>数学<rt>すうがく</rt></ruby>は？<br>*(Toán thì sao?)* |
| Rim | <ruby>講師<rt>こうし</rt></ruby><ruby>次第<rt>しだい</rt></ruby>。<ruby>当<rt>あ</rt></ruby>たり<ruby>外<rt>はず</rt></ruby>れがある。<ruby>体験<rt>たいけん</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby><ruby>絶対<rt>ぜったい</rt></ruby><ruby>受<rt>う</rt></ruby>けて<ruby>確<rt>たし</rt></ruby>かめて。<br>*(Tuỳ giảng viên. Có người hay người không. Nhất định em phải dự giờ thử để kiểm tra.)* |
| Đại | JASSOはどう<ruby>思<rt>おも</rt></ruby>いますか？<br>*(Chị nghĩ về JASSO thế nào?)* |
| Rim | <ruby>安<rt>やす</rt></ruby>いけど、<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>志望<rt>しぼう</rt></ruby>には<ruby>足<rt>た</rt></ruby>りないと<ruby>思<rt>おも</rt></ruby>う。<ruby>独自<rt>どくじ</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>は<ruby>専門校<rt>せんもんこう</rt></ruby>の<ruby>方<rt>ほう</rt></ruby>がいい。<br>*(Rẻ nhưng cho NV Osaka U thì thiếu. Ôn thi riêng nên chọn trường chuyên.)* |
| Đại | ありがとうございます。<br>*(Cảm ơn chị.)* |

---

## Tình huống 7 — Lớp dự thử Nagaitatsu · 19:00 thứ 3, math trial class

*Tối thứ 3, Đại đến Nagaitatsu dự giờ Toán. Giảng viên Yamashita-sensei viết câu hỏi đạo hàm lên bảng.*

| Vai | Lời thoại |
|---|---|
| Yamashita | <ruby>本日<rt>ほんじつ</rt></ruby>のテーマは<ruby>微分<rt>びぶん</rt></ruby>です。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>独自<rt>どくじ</rt></ruby><ruby>試験<rt>しけん</rt></ruby><ruby>頻出<rt>ひんしゅつ</rt></ruby>パターン。<br>*(Chủ đề hôm nay là đạo hàm. Pattern hay ra ở bài thi riêng Osaka U.)* |
| Đại | (VN, tự nhủ) Câu này gần giống đề EJU mock. |
| Yamashita | （<ruby>板書<rt>ばんしょ</rt></ruby>）f(x) = x³ + 2x² - 5x + 1。f''(2)を<ruby>求<rt>もと</rt></ruby>めよ。<br>*(Viết bảng. f(x)=x³+2x²-5x+1. Tìm f''(2).)* |
| Yamashita | グエンさん、<ruby>解<rt>と</rt></ruby>いてみてください。<br>*(Anh Nguyên, em thử giải đi.)* |
| Đại | はい。f''(x) = <ruby>3<rt>さん</rt></ruby>x² + <ruby>4<rt>よん</rt></ruby>x - <ruby>5<rt>ご</rt></ruby>。f''(2) = <ruby>12<rt>じゅうに</rt></ruby> + <ruby>8<rt>はち</rt></ruby> - <ruby>5<rt>ご</rt></ruby> = <ruby>15<rt>じゅうご</rt></ruby>です。<br>*(Vâng. f''(x)=3x²+4x-5. f''(2)=12+8-5=15.)* |
| Yamashita | <ruby>正解<rt>せいかい</rt></ruby>！<ruby>速<rt>はや</rt></ruby>いですね。ベトナムの<ruby>高校<rt>こうこう</rt></ruby>レベルは<ruby>高<rt>たか</rt></ruby>いと<ruby>聞<rt>き</rt></ruby>いてます。<br>*(Đúng! Nhanh đấy. Tôi nghe trình độ cấp 3 Việt Nam cao.)* |
| Đại | はい、<ruby>計算<rt>けいさん</rt></ruby>は<ruby>得意<rt>とくい</rt></ruby>です。でも<ruby>応用<rt>おうよう</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>はまだ<ruby>苦手<rt>にがて</rt></ruby>です。<br>*(Vâng, em giỏi tính toán. Nhưng bài ứng dụng em còn yếu.)* |
| Yamashita | このコースは<ruby>応用<rt>おうよう</rt></ruby>に<ruby>重点<rt>じゅうてん</rt></ruby>を<ruby>置<rt>お</rt></ruby>いています。<br>*(Khoá này tập trung vào ứng dụng.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。<br>*(Em hiểu rồi.)* |

---

## Tình huống 8 — Phòng tư vấn Nagaitatsu · 20:30 sau lớp thử, thương lượng giá

*Đại quay lại gặp Sato sau lớp thử.*

| Vai | Lời thoại |
|---|---|
| Sato | グエンさん、<ruby>体験<rt>たいけん</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>はいかがでしたか？<br>*(Anh Nguyên, lớp thử thế nào?)* |
| Đại | <ruby>山下<rt>やました</rt></ruby><ruby>先生<rt>せんせい</rt></ruby>の<ruby>授業<rt>じゅぎょう</rt></ruby>はとても<ruby>分<rt>わ</rt></ruby>かりやすかったです。<br>*(Lớp của thầy Yamashita rất dễ hiểu.)* |
| Sato | ありがとうございます。<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みされますか？<br>*(Cảm ơn. Anh có đăng ký không?)* |
| Đại | <ruby>一<rt>ひと</rt></ruby>つ<ruby>相談<rt>そうだん</rt></ruby>があります。<br>*(Em có một việc muốn bàn.)* |
| Sato | どうぞ。<br>*(Mời.)* |
| Đại | <ruby>正直<rt>しょうじき</rt></ruby>に<ruby>言<rt>い</rt></ruby>うと、<ruby>150000<rt>じゅうごまん</rt></ruby><ruby>円<rt>えん</rt></ruby>は<ruby>留学生<rt>りゅうがくせい</rt></ruby>には<ruby>厳<rt>きび</rt></ruby>しいです。KCPはN2<ruby>所持者<rt>しょじしゃ</rt></ruby><ruby>割引<rt>わりびき</rt></ruby>がありました。<br>*(Thật ra, 150000 yên với du học sinh hơi căng. KCP có giảm giá người có N2.)* |
| Sato | （<ruby>少<rt>すこ</rt></ruby>し<ruby>考<rt>かんが</rt></ruby>えて）...<ruby>店長<rt>てんちょう</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>してみます。<br>*(Suy nghĩ một chút. Tôi sẽ bàn với quản lý.)* |
| Sato | （5<ruby>分後<rt>ふんご</rt></ruby><ruby>戻<rt>もど</rt></ruby>る）N2<ruby>合格<rt>ごうかく</rt></ruby><ruby>者<rt>しゃ</rt></ruby>かつ<ruby>11<rt>じゅういち</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みされる<ruby>場合<rt>ばあい</rt></ruby>、<ruby>20000<rt>にまん</rt></ruby><ruby>円<rt>えん</rt></ruby><ruby>値引<rt>ねび</rt></ruby>き<ruby>可能<rt>かのう</rt></ruby>です。<br>*(5 phút sau quay lại. Người đỗ N2 đăng ký trong tháng 11 được giảm 20000 yên.)* |
| Đại | <ruby>130000<rt>じゅうさんまん</rt></ruby><ruby>円<rt>えん</rt></ruby>ですね。<ruby>検討<rt>けんとう</rt></ruby>させてください。<ruby>明日<rt>あした</rt></ruby>までにご<ruby>連絡<rt>れんらく</rt></ruby>します。<br>*(Vậy là 130000 yên. Cho em cân nhắc. Mai em sẽ liên hệ.)* |

---

## Tình huống 9 — Bàn ăn nhà Tanaka · 20:00, xin tư vấn homestay

*Đại đặt 3 brochure lên bàn ăn, xin Tony và Yumi ý kiến.*

| Vai | Lời thoại |
|---|---|
| Đại | トニーさん、ユミさん、<ruby>予備校<rt>よびこう</rt></ruby>を<ruby>選<rt>えら</rt></ruby>ぶのに<ruby>相談<rt>そうだん</rt></ruby>したいです。<br>*(Anh Tony, chị Yumi, em muốn xin ý kiến chọn yobikou.)* |
| Tony | （パンフレット<ruby>見<rt>み</rt></ruby>る）<ruby>三<rt>みっ</rt></ruby>つ<ruby>候補<rt>こうほ</rt></ruby>?<br>*(Xem brochure. Có 3 lựa chọn?)* |
| Đại | はい。<ruby>栄光<rt>えいこう</rt></ruby> <ruby>130000<rt>じゅうさんまん</rt></ruby><ruby>円<rt>えん</rt></ruby> (<ruby>値引<rt>ねび</rt></ruby>き<ruby>後<rt>ご</rt></ruby>)、KCP <ruby>108000<rt>じゅうまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>、JASSO <ruby>80000<rt>はちまん</rt></ruby><ruby>円<rt>えん</rt></ruby>。<br>*(Vâng. Eikō 130000 sau giảm, KCP 108000, JASSO 80000.)* |
| Yumi | <ruby>値段<rt>ねだん</rt></ruby>だけで<ruby>選<rt>えら</rt></ruby>ばないで。<ruby>内容<rt>ないよう</rt></ruby>が<ruby>大事<rt>だいじ</rt></ruby>。<br>*(Đừng chọn theo giá. Nội dung quan trọng.)* |
| Đại | はい。<ruby>栄光<rt>えいこう</rt></ruby>は<ruby>合格率<rt>ごうかくりつ</rt></ruby> <ruby>53<rt>ごじゅうさん</rt></ruby>パーセント。<ruby>体験<rt>たいけん</rt></ruby><ruby>授業<rt>じゅぎょう</rt></ruby>受けて<ruby>講師<rt>こうし</rt></ruby>のレベルも<ruby>確認<rt>かくにん</rt></ruby>しました。<br>*(Vâng. Eikō tỷ lệ đỗ 53%. Em dự giờ thử thấy trình độ giảng viên ổn.)* |
| Đại | KCPは<ruby>少人数制<rt>しょうにんずうせい</rt></ruby>。<ruby>面接<rt>めんせつ</rt></ruby><ruby>練習<rt>れんしゅう</rt></ruby> <ruby>20<rt>にじゅう</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>とリム<ruby>先輩<rt>せんぱい</rt></ruby>が<ruby>言<rt>い</rt></ruby>っていました。<br>*(KCP lớp nhỏ. Chị Rim bảo luyện phỏng vấn hơn 20 lần.)* |
| Tony | <ruby>面接<rt>めんせつ</rt></ruby><ruby>20<rt>にじゅう</rt></ruby><ruby>回<rt>かい</rt></ruby>はすごい。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>面接<rt>めんせつ</rt></ruby>は<ruby>面接<rt>めんせつ</rt></ruby><ruby>力<rt>りょく</rt></ruby>が<ruby>勝負<rt>しょうぶ</rt></ruby>だぞ。<br>*(20 lần phỏng vấn là khủng. Phỏng vấn Osaka U thắng thua ở kỹ năng phỏng vấn đấy.)* |
| Yumi | <ruby>私<rt>わたし</rt></ruby>はKCPに<ruby>一票<rt>いっぴょう</rt></ruby>。<ruby>少人数<rt>しょうにんずう</rt></ruby>+<ruby>面接<rt>めんせつ</rt></ruby><ruby>強化<rt>きょうか</rt></ruby>+ <ruby>108000<rt>じゅうまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>はコスパ<ruby>良<rt>よ</rt></ruby>し。<br>*(Em một phiếu cho KCP. Lớp nhỏ + phỏng vấn mạnh + 108000 = đáng tiền.)* |
| Tony | <ruby>俺<rt>おれ</rt></ruby>もKCP。<br>*(Anh cũng KCP.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。KCPに<ruby>決<rt>き</rt></ruby>めます。<ruby>差額<rt>さがく</rt></ruby> <ruby>22000<rt>にまんにせん</rt></ruby><ruby>円<rt>えん</rt></ruby>はバイトを<ruby>増<rt>ふ</rt></ruby>やしてカバーします。<br>*(Em hiểu rồi. Em chọn KCP. Chênh 22000 em làm baito thêm bù.)* |

---

## Tình huống 10 — KCP văn phòng · 14:00 hôm sau, đăng ký chính thức

*Đại quay lại KCP với giấy tờ.*

| Vai | Lời thoại |
|---|---|
| Tư vấn KCP | グエンさん、お<ruby>越<rt>こ</rt></ruby>しいただきありがとうございます。<br>*(Anh Nguyên, cảm ơn anh đã quay lại.)* |
| Đại | <ruby>申<rt>もう</rt></ruby>し<ruby>込<rt>こ</rt></ruby>みをお<ruby>願<rt>ねが</rt></ruby>いします。<ruby>大阪大<rt>おおさかだい</rt></ruby><ruby>対策<rt>たいさく</rt></ruby>コース、<ruby>少人数<rt>しょうにんずう</rt></ruby>クラスです。<br>*(Em xin đăng ký. Khoá ôn Osaka U, lớp nhỏ.)* |
| Tư vấn | はい、こちらが<ruby>申込書<rt>もうしこみしょ</rt></ruby>です。<ruby>記入<rt>きにゅう</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, đây là đơn đăng ký. Mời anh điền.)* |
| Đại | （<ruby>記入<rt>きにゅう</rt></ruby>）<br>*(Điền.)* |
| Đại | N2<ruby>合格<rt>ごうかく</rt></ruby><ruby>証書<rt>しょうしょ</rt></ruby>のコピーです。<br>*(Đây là bản sao bằng N2.)* |
| Tư vấn | <ruby>確認<rt>かくにん</rt></ruby>いたしました。<ruby>授業料<rt>じゅぎょうりょう</rt></ruby> <ruby>108000<rt>じゅうまんはっせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。お<ruby>支払<rt>しはら</rt></ruby>い<ruby>方法<rt>ほうほう</rt></ruby>は？<br>*(Đã xác nhận. Học phí 108000 yên. Cách thanh toán?)* |
| Đại | <ruby>3<rt>さん</rt></ruby><ruby>回<rt>かい</rt></ruby><ruby>分割<rt>ぶんかつ</rt></ruby>でお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Em xin trả 3 đợt.)* |
| Tư vấn | はい、<ruby>毎月<rt>まいつき</rt></ruby> <ruby>36000<rt>さんまんろくせん</rt></ruby><ruby>円<rt>えん</rt></ruby>ですね。<ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>授業<rt>じゅぎょう</rt></ruby><ruby>開始<rt>かいし</rt></ruby>です。<br>*(Vâng, mỗi tháng 36000. Bắt đầu học từ tháng 12.)* |
| Đại | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby><ruby>1<rt>いち</rt></ruby><ruby>日<rt>にち</rt></ruby><ruby>月曜日<rt>げつようび</rt></ruby>ですね。<ruby>初日<rt>しょにち</rt></ruby>に<ruby>必要<rt>ひつよう</rt></ruby>なものは？<br>*(Vậy là thứ 2 ngày 1 tháng 12. Ngày đầu cần gì ạ?)* |
| Tư vấn | <ruby>筆記用具<rt>ひっきようぐ</rt></ruby>と<ruby>初回<rt>しょかい</rt></ruby><ruby>分<rt>ぶん</rt></ruby><ruby>授業料<rt>じゅぎょうりょう</rt></ruby> <ruby>36000<rt>さんまんろくせん</rt></ruby><ruby>円<rt>えん</rt></ruby>です。<br>*(Bút và 36000 yên học phí đợt đầu.)* |
| Đại | <ruby>分<rt>わ</rt></ruby>かりました。よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<br>*(Em hiểu rồi. Em xin nhờ ạ.)* |

---

## Tình huống 11 — Lawson · 22:00, báo Suzuki xin tăng ca

*Đại đến ca làm, gặp Suzuki tính sổ.*

| Vai | Lời thoại |
|---|---|
| Đại | <ruby>店長<rt>てんちょう</rt></ruby>、お<ruby>願<rt>ねが</rt></ruby>いがあります。<br>*(Anh trưởng cửa hàng, em có việc xin ạ.)* |
| Suzuki | どうした？<br>*(Sao thế?)* |
| Đại | <ruby>12<rt>じゅうに</rt></ruby><ruby>月<rt>がつ</rt></ruby>から<ruby>2<rt>に</rt></ruby><ruby>月<rt>がつ</rt></ruby>まで、シフトを<ruby>週<rt>しゅう</rt></ruby><ruby>4<rt>よん</rt></ruby><ruby>回<rt>かい</rt></ruby>に<ruby>増<rt>ふ</rt></ruby>やしていただけませんか？<br>*(Từ tháng 12 đến tháng 2, anh tăng ca em lên 4 lần/tuần được không ạ?)* |
| Suzuki | <ruby>大学<rt>だいがく</rt></ruby>の<ruby>準備<rt>じゅんび</rt></ruby><ruby>大変<rt>たいへん</rt></ruby>じゃないか？<br>*(Chuẩn bị đại học không vất vả à?)* |
| Đại | <ruby>予備校<rt>よびこう</rt></ruby>に<ruby>通<rt>かよ</rt></ruby>うことになりました。<ruby>授業料<rt>じゅぎょうりょう</rt></ruby>のために<ruby>少<rt>すこ</rt></ruby>し<ruby>稼<rt>かせ</rt></ruby>ぎたいです。<br>*(Em sẽ đi yobikou. Em muốn kiếm thêm cho học phí.)* |
| Suzuki | <ruby>予備校<rt>よびこう</rt></ruby>か。<ruby>頑張<rt>がんば</rt></ruby>るな、お<ruby>前<rt>まえ</rt></ruby>。<br>*(Yobikou à. Em chăm thật.)* |
| Suzuki | いいよ、<ruby>週<rt>しゅう</rt></ruby><ruby>4<rt>よん</rt></ruby>でシフト<ruby>組<rt>く</rt></ruby>む。でも<ruby>勉強<rt>べんきょう</rt></ruby>を<ruby>優先<rt>ゆうせん</rt></ruby>しろよ。<ruby>大学<rt>だいがく</rt></ruby>に<ruby>落<rt>お</rt></ruby>ちたら<ruby>意味<rt>いみ</rt></ruby>ないからな。<br>*(Được, anh xếp ca 4 lần. Nhưng ưu tiên học. Trượt đại học là vô nghĩa.)* |
| Đại | はい！ありがとうございます。<br>*(Vâng! Cảm ơn anh ạ.)* |
| Suzuki | あと、<ruby>夜勤<rt>やきん</rt></ruby><ruby>手当<rt>てあて</rt></ruby><ruby>付<rt>つ</rt></ruby>けてやる。<ruby>22<rt>にじゅうに</rt></ruby><ruby>時<rt>じ</rt></ruby><ruby>以降<rt>いこう</rt></ruby><ruby>時給<rt>じきゅう</rt></ruby> <ruby>1250<rt>せんにひゃくごじゅう</rt></ruby><ruby>円<rt>えん</rt></ruby>に。<br>*(Còn anh thêm phụ cấp ca đêm. Sau 22h lương 1250 yên/giờ.)* |
| Đại | え！?<ruby>本当<rt>ほんとう</rt></ruby>ですか？ありがとうございます！<br>*(Ơ?! Thật ạ? Cảm ơn anh!)* |

---

## Tình huống 12 — Phòng ký túc · 23:30, gọi điện báo Mai quyết định

| Vai | Lời thoại |
|---|---|
| Mai | (tiếng Việt) Alo anh! Hôm nay sao? |
| Đại | (tiếng Việt) Anh chọn yobikou rồi em. KCP International, 108000 yên 3 tháng. |
| Mai | (tiếng Việt) Tiền đâu anh có vậy? |
| Đại | (tiếng Việt) Trả 3 đợt, mỗi đợt 36000 yên. Bác Suzuki cho anh tăng ca lên 4 lần/tuần, lại thêm phụ cấp ca đêm 1250 yên/giờ — gần đủ bù. |
| Mai | (tiếng Việt) Bác Suzuki tốt với anh quá. |
| Đại | (tiếng Việt) Ừ. Anh đã đi xem 3 chỗ: Eikō 130k giảm sau thương lượng, KCP 108k giảm 10% nhờ N2, JASSO 80k rẻ nhất nhưng lớp 20 người với giảng viên cao học part-time. Anh nghe chị Rim với cô Yumi tư vấn, chọn KCP — lớp nhỏ 8 người, mỗi tuần luyện phỏng vấn 1 lần, 3 tháng được khoảng 12-15 lần. |
| Mai | (tiếng Việt) Hợp lý đó anh. Mà sao đợt đầu anh hỏi giá Eikō là 150k mà sau thành 130k? |
| Đại | (tiếng Việt) Anh nói "với du học sinh hơi căng, KCP có giảm N2 holder" — họ giảm cho 20k. Học mẫu câu thương lượng giá kiểu Nhật rồi em. Không kèo gắt, chỉ "正直に言うと..." rồi để họ tự quyết định. |
| Mai | (tiếng Việt) Anh ngày càng giống người Nhật rồi đó. |
| Đại | (tiếng Việt) Còn lâu. Anh vẫn cần luyện phỏng vấn 20 lần. Bắt đầu 1/12 — đúng tuần thi EJU đợt 2. Lịch nặng nề lắm. |
| Mai | (tiếng Việt) Cố lên anh nha. Tết âm năm nay em sẽ qua thăm anh nhé. |
| Đại | (tiếng Việt) Ừ, anh đợi. Anh ngủ đây, mai 7h ca sáng Lawson. Yêu em. |
| Mai | (tiếng Việt) Yêu anh. Ngủ ngon. |

---

## Đọng lại chương 12

Chương này dạy Đại 6 kỹ năng giao tiếp khi chọn dịch vụ dài hạn ở Nhật. **Mẫu mở đầu với cố vấn**: **「お越しいただきありがとうございます」+「〜と申します」**. **Hỏi chi tiết khoá học**: **「コースについて詳しく教えていただけますか」** + dò 3 yếu tố (授業料, 合格実績, 講師陣). **Hỏi giảm giá tế nhị**: **「割引制度はありますか」** thay vì hỏi thẳng giá rẻ. **Dự giờ thử (体験授業)** trước khi quyết định — phát hiện thầy Yamashita giỏi ở Eikō nhưng đội ngũ ở KCP đồng đều. **Thương lượng giá kiểu Nhật**: **「正直に言うと、150000円は留学生には厳しいです」** — nói khó khăn của mình, không ép trực tiếp, để đối phương tự đề xuất giảm. **Xin tư vấn homestay**: đặt 3 brochure lên bàn, Tony và Yumi cùng vote KCP. **Xin sếp tăng ca**: **「お願いがあります」+「シフトを増やしていただけませんか」**. Suzuki còn cho phụ cấp ca đêm 1250 yên/giờ. Cuối cùng quyết định KCP — lớp nhỏ 8 người + 20 lần luyện phỏng vấn — đúng cái Tony nói "phỏng vấn Osaka U là 勝負".

> Từ vựng & mẫu câu chương này: 予備校・栄光・KCPインターナショナル・JASSO・大阪大学対策コース・少人数制・体験授業・授業料・分割払い・無金利・割引制度・N2所持者割引・友人紹介制度・合格実績・合格率・講師陣・元大学教授・元商社人事・微分・応用問題・板書・正直に言うと・コースについて詳しく教えていただけますか・割引制度はありますか・体験授業を受けることはできますか・お願いがあります・シフトを増やしていただけませんか・夜勤手当・時給1250円

## Bí quyết chương

- **Đi 3 chỗ trước khi quyết định**: Eikō (đắt + uy tín) / KCP (vừa + lớp nhỏ) / JASSO (rẻ + đông) — so sánh thật mới biết.
- **「体験授業」là bắt buộc**: Brochure nói được, thầy giỏi hay không phải đến tận lớp mới biết.
- **Thương lượng giá kiểu Nhật = nói "正直に言うと..."**: Không ép, không so sánh trực tiếp gắt — chỉ trình bày khó khăn rồi để đối phương đề xuất.
- **Hỏi sempai từng học**: Rim đã học KCP — thông tin "20 lần luyện phỏng vấn" + "giảng viên Toán có hên xui" — không brochure nào nói.
- **Báo sếp baito sớm**: Tăng ca cần 1-2 tuần xếp lịch, không phải hôm nay đăng ký mai cần tiền liền.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 予備校 | よびこう | DỰ BỊ HIỆU | Trường luyện thi |
| 独自試験 | どくじしけん | ĐỘC TỰ THÍ NGHIỆM | Bài thi riêng |
| 文章 | ぶんしょう | VĂN CHƯƠNG | Văn bản |
| 専門 | せんもん | CHUYÊN MÔN | Chuyên môn |
| 受験対策 | じゅけんたいさく | THỤ NGHIỆM ĐỐI SÁCH | Ôn thi |
| 体験授業 | たいけんじゅぎょう | THỂ NGHIỆM THỤ NGHIỆP | Dự giờ thử |
| パンフレット | — | — | Brochure |
| 論文添削 | ろんぶんてんさく | LUẬN VĂN THIÊM TƯỚC | Sửa luận |
| 三本柱 | さんぼんばしら | TAM BẢN TRỤ | 3 trụ cột |
| 分割払い | ぶんかつばらい | PHÂN CÁT BẤT | Trả góp |
| 無金利 | むきんり | VÔ KIM LỢI | Không lãi |
| 合格実績 | ごうかくじっせき | HỢP CÁCH THỰC TÍCH | Thành tích đỗ |
| 合格率 | ごうかくりつ | HỢP CÁCH SUẤT | Tỷ lệ đỗ |
| 受講者 | じゅこうしゃ | THỤ GIẢNG GIẢ | Học viên |
| 講師 | こうし | GIẢNG SƯ | Giảng viên |
| 院卒 | いんそつ | VIỆN TỐT | Tốt nghiệp cao học |
| 元教授 | もときょうじゅ | NGUYÊN GIÁO THỤ | Cựu giáo sư |
| 人事 | じんじ | NHÂN SỰ | Nhân sự |
| 少人数制 | しょうにんずうせい | THIỂU NHÂN SỐ CHẾ | Lớp nhỏ |
| 特徴 | とくちょう | ĐẶC TRƯNG | Đặc điểm |
| 割引制度 | わりびきせいど | CÁT DẪN CHẾ ĐỘ | Chế độ giảm giá |
| 所持者 | しょじしゃ | SỞ TRÌ GIẢ | Người có / sở hữu |
| 紹介制度 | しょうかいせいど | THIỆU GIỚI CHẾ ĐỘ | Chế độ giới thiệu |
| 講師陣 | こうしじん | GIẢNG SƯ TRẬN | Đội ngũ giảng viên |
| 充実 | じゅうじつ | SUNG THỰC | Đầy đủ |
| 独立行政法人 | どくりつぎょうせいほうじん | ĐỘC LẬP HÀNH CHÍNH PHÁP NHÂN | Pháp nhân hành chính độc lập |
| 質 | しつ | CHẤT | Chất lượng |
| 非常勤 | ひじょうきん | PHI THƯỜNG CẦN | Bán thời gian |
| 公表 | こうひょう | CÔNG BIỂU | Công bố |
| 微分 | びぶん | VI PHÂN | Đạo hàm |
| 頻出 | ひんしゅつ | TẦN XUẤT | Hay ra |
| 板書 | ばんしょ | BẢN THƯ | Viết bảng |
| 求める | もとめる | CẦU | Tìm |
| 応用問題 | おうようもんだい | ỨNG DỤNG VẤN ĐỀ | Bài ứng dụng |
| 重点 | じゅうてん | TRỌNG ĐIỂM | Trọng điểm |
| 値引き | ねびき | TRỊ DẪN | Giảm giá |
| 差額 | さがく | SAI NGẠCH | Khoản chênh |
| カバー | — | — | Bù đắp |
| 申込書 | もうしこみしょ | THÂN VÀO THƯ | Đơn đăng ký |
| 記入 | きにゅう | KÝ NHẬP | Điền |
| 合格証書 | ごうかくしょうしょ | HỢP CÁCH CHỨNG THƯ | Bằng chứng nhận đỗ |
| 筆記用具 | ひっきようぐ | BÚT KÝ DỤNG CỤ | Bút viết |
| シフト | — | — | Ca làm |
| 夜勤手当 | やきんてあて | DẠ CẦN THỦ ĐƯƠNG | Phụ cấp ca đêm |
| 候補 | こうほ | HẬU BỔ | Lựa chọn |
| 内容 | ないよう | NỘI DUNG | Nội dung |
| 勝負 | しょうぶ | THẮNG BẠI | Thắng thua |
| コスパ | — | — | Đáng tiền |
| 一票 | いっぴょう | NHẤT PHIẾU | Một phiếu |
| 優先 | ゆうせん | ƯU TIÊN | Ưu tiên |', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
