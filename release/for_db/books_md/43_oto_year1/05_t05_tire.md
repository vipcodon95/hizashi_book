# Sách thực tập sinh ô tô · T5. Thay lốp & cân chỉnh — Học loadtest (タイヤ交換)

> **Mục tiêu nhân vật:** Phong (21 tuổi, Hải Phòng) làm thực tập sinh ngành sửa chữa ô tô (自動車整備) tại garage Toyota ở Anjo, Aichi. Học các mẫu hội thoại tiếng Nhật cần thiết khi thao tác lốp: gọi tên dụng cụ, hỏi thứ tự công đoạn, báo cáo lực siết bu-lông (トルク), hỏi khi thấy lốp bất thường, đọc số liệu loadtest, xác nhận lại với sempai.

---

## Bối cảnh

Tháng 10 năm 2025. Phong đã vào garage Anjo được hơn 2 tháng, vừa quen với việc thay dầu (T4). Vào mùa đổi lốp đông (スタッドレス), garage bận tăng ca. Trình độ tiếng Nhật của Phong cuối N5, đang tự học lên N4. Chương này tập trung các mẫu câu khi thao tác tháo-lắp lốp: gọi tên cờ-lê, xin phép dùng máy nâng, báo trị số トルク, hỏi lại khi không nghe rõ, và lần đầu được sempai Carlos hướng dẫn đo loadtest.

---

## Tình huống 1 — Sảnh ピット · 8:10, chào sáng & nhận lịch thay lốp

| Vai | Lời thoại |
|---|---|
| Sato | フォンくん、おはよう。<ruby>今日<rt>きょう</rt></ruby>はタイヤ<ruby>交換<rt>こうかん</rt></ruby>がたくさん<ruby>入<rt>はい</rt></ruby>っているよ。<br>*(Phong, chào buổi sáng. Hôm nay có nhiều lịch thay lốp lắm.)* |
| Phong | おはようございます<ruby>工場長<rt>こうじょうちょう</rt></ruby>。<ruby>何台<rt>なんだい</rt></ruby>ですか?<br>*(Chào buổi sáng quản đốc. Bao nhiêu xe ạ?)* |
| Sato | <ruby>午前<rt>ごぜん</rt></ruby><ruby>中<rt>ちゅう</rt></ruby>に<ruby>6<rt>ろく</rt></ruby><ruby>台<rt>だい</rt></ruby>、<ruby>午後<rt>ごご</rt></ruby><ruby>5<rt>ご</rt></ruby><ruby>台<rt>だい</rt></ruby>。カルロスさんと<ruby>一緒<rt>いっしょ</rt></ruby>にやってね。<br>*(Sáng 6 xe, chiều 5 xe. Cứ làm cùng Carlos nhé.)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かりました。<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Vâng, em rõ ạ. Em sẽ cố gắng.)* |
| Carlos | フォン、おはよう!<ruby>準備<rt>じゅんび</rt></ruby>できた?<br>*(Phong, chào! Chuẩn bị xong chưa?)* |
| Phong | カルロスさん、おはようございます。はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Anh Carlos, chào buổi sáng. Vâng, ổn rồi ạ.)* |

---

## Tình huống 2 — Pit 2 · 8:25, gọi tên dụng cụ trước khi tháo lốp

*Carlos chỉ vào bàn dụng cụ, kiểm tra trình độ Phong.*

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、これは<ruby>何<rt>なん</rt></ruby>?<br>*(Phong, cái này là gì?)* |
| Phong | インパクトレンチです。ボルトを<ruby>外<rt>はず</rt></ruby>すときに<ruby>使<rt>つか</rt></ruby>います。<br>*(Là cờ-lê hơi ạ. Dùng khi tháo bu-lông.)* |
| Carlos | OK!じゃあ、これは?<br>*(OK! Thế còn cái này?)* |
| Phong | えーと…トルクレンチですか?<br>*(À… cờ-lê lực ạ?)* |
| Carlos | <ruby>正解<rt>せいかい</rt></ruby>!<ruby>締<rt>し</rt></ruby>めるときに、<ruby>必<rt>かなら</rt></ruby>ずトルクレンチを<ruby>使<rt>つか</rt></ruby>ってね。<br>*(Đúng rồi! Khi siết phải dùng cờ-lê lực nhé.)* |
| Phong | はい。<ruby>軽自動車<rt>けいじどうしゃ</rt></ruby>のトルクは<ruby>何<rt>なん</rt></ruby>ニュートンですか?<br>*(Vâng. Xe kei thì trị số trục bao nhiêu Newton ạ?)* |
| Carlos | <ruby>普通<rt>ふつう</rt></ruby>は<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンメートル。<ruby>車<rt>くるま</rt></ruby>によって<ruby>違<rt>ちが</rt></ruby>うから、<ruby>必<rt>かなら</rt></ruby>ずマニュアルで<ruby>確認<rt>かくにん</rt></ruby>して。<br>*(Bình thường 103 Nm. Mỗi xe khác nhau, phải tra sổ tay trước.)* |
| Phong | はい、<ruby>必<rt>かなら</rt></ruby>ず<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(Vâng, em sẽ luôn tra ạ.)* |

---

## Tình huống 3 — Pit 2 · 8:40, xin phép vận hành máy nâng (リフト)

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、リフトを<ruby>上<rt>あ</rt></ruby>げてもいいですか?<br>*(Anh Carlos, em nâng cầu được không ạ?)* |
| Carlos | ちょっと<ruby>待<rt>ま</rt></ruby>って。<ruby>下<rt>した</rt></ruby>に<ruby>人<rt>ひと</rt></ruby>がいないか<ruby>確認<rt>かくにん</rt></ruby>した?<br>*(Khoan đã. Đã kiểm tra dưới gầm có người không?)* |
| Phong | あっ、すみません、<ruby>確認<rt>かくにん</rt></ruby>します。<br>*(À, xin lỗi, để em kiểm tra ạ.)* |
| Phong | <ruby>下<rt>した</rt></ruby>、<ruby>誰<rt>だれ</rt></ruby>もいません。<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<br>*(Dưới không có ai. Ổn rồi ạ.)* |
| Carlos | OK、<ruby>声<rt>こえ</rt></ruby>を<ruby>出<rt>だ</rt></ruby>して。<br>*(OK, hô lên đi.)* |
| Phong | リフト<ruby>上<rt>あ</rt></ruby>げます!<br>*(Nâng cầu!)* |
| Carlos | はい、ゆっくりね。<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>。<br>*(OK, từ từ nhé. An toàn là trên hết.)* |
| Phong | はい、<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>。<br>*(Vâng, an toàn là trên hết.)* |

---

## Tình huống 4 — Dưới gầm xe · 9:00, hỏi thứ tự tháo bu-lông

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、ボルトはどの<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>外<rt>はず</rt></ruby>しますか?<br>*(Anh Carlos, tháo bu-lông theo thứ tự nào ạ?)* |
| Carlos | <ruby>対角線<rt>たいかくせん</rt></ruby>に<ruby>外<rt>はず</rt></ruby>すんだ。<ruby>星<rt>ほし</rt></ruby>の<ruby>形<rt>かたち</rt></ruby>、<ruby>分<rt>わ</rt></ruby>かる?<br>*(Tháo theo đường chéo. Hình ngôi sao, hiểu không?)* |
| Phong | はい、<ruby>分<rt>わ</rt></ruby>かります。<ruby>上<rt>うえ</rt></ruby>、<ruby>下<rt>した</rt></ruby>、<ruby>右<rt>みぎ</rt></ruby>、<ruby>左<rt>ひだり</rt></ruby>…ですか?<br>*(Vâng, em hiểu. Trên, dưới, phải, trái… đúng không ạ?)* |
| Carlos | そう!<ruby>真<rt>ま</rt></ruby>っすぐの<ruby>順番<rt>じゅんばん</rt></ruby>で<ruby>外<rt>はず</rt></ruby>すと、ハブが<ruby>歪<rt>ゆが</rt></ruby>むよ。<br>*(Đúng! Tháo theo thứ tự thẳng thì sẽ làm cong ổ trục đấy.)* |
| Phong | <ruby>歪<rt>ゆが</rt></ruby>む…すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Cong... Xin lỗi, anh nói lại giúp em ạ.)* |
| Carlos | <ruby>歪<rt>ゆが</rt></ruby>む、ね。「<ruby>曲<rt>ま</rt></ruby>がる」とほぼ<ruby>同<rt>おな</rt></ruby>じ。ベトナム<ruby>語<rt>ご</rt></ruby>で「cong」かな?<br>*(Cong nhé. Gần như "magaru". Tiếng Việt là "cong" hả?)* |
| Phong | あ、はい、「cong」です!<br>*(À vâng, "cong" ạ!)* |
| Carlos | <ruby>覚<rt>おぼ</rt></ruby>えて。<ruby>歪<rt>ゆが</rt></ruby>むとブレーキがガタガタするんだ。<br>*(Nhớ nhé. Cong thì phanh sẽ rung lắc đấy.)* |

---

## Tình huống 5 — Pit 2 · 9:20, báo cáo phát hiện lốp mòn lệch

*Phong tháo xong, lăn lốp ra ngoài, soi đèn.*

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、ちょっと<ruby>見<rt>み</rt></ruby>てください。<br>*(Anh Carlos, anh xem giúp em một chút.)* |
| Carlos | どうした?<br>*(Sao thế?)* |
| Phong | このタイヤ、<ruby>内側<rt>うちがわ</rt></ruby>だけ<ruby>減<rt>へ</rt></ruby>っています。<br>*(Lốp này chỉ mòn ở mặt trong.)* |
| Carlos | お、よく<ruby>気<rt>き</rt></ruby>がついたね!これは「<ruby>偏摩耗<rt>へんまもう</rt></ruby>」と<ruby>言<rt>い</rt></ruby>う。<br>*(Ồ, mắt tinh đấy! Cái này gọi là "mòn lệch".)* |
| Phong | へんまもう…<ruby>原因<rt>げんいん</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Henmamou… nguyên nhân là gì ạ?)* |
| Carlos | アライメントがずれているかも。<ruby>後<rt>あと</rt></ruby>でヤマダさんに<ruby>相談<rt>そうだん</rt></ruby>しよう。<br>*(Có thể độ chụm bị lệch. Lát nữa hỏi anh Yamada nhé.)* |
| Phong | はい、お<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>説明<rt>せつめい</rt></ruby>しなくてもいいですか?<br>*(Vâng. Có cần giải thích cho khách không ạ?)* |
| Carlos | カルロスから<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>言<rt>い</rt></ruby>うよ。フォンは<ruby>作業<rt>さぎょう</rt></ruby>を<ruby>続<rt>つづ</rt></ruby>けて。<br>*(Anh sẽ báo trưởng kỹ thuật. Phong cứ tiếp tục.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, nhờ anh ạ.)* |

---

## Tình huống 6 — Bàn 整備士長 · 9:35, Yamada chỉ điểm về cân chỉnh

| Vai | Lời thoại |
|---|---|
| Yamada | フォンくん、<ruby>偏摩耗<rt>へんまもう</rt></ruby>のタイヤ、<ruby>見<rt>み</rt></ruby>たんだって?<br>*(Phong, em đã xem lốp mòn lệch à?)* |
| Phong | はい、<ruby>整備士長<rt>せいびしちょう</rt></ruby>。<ruby>内側<rt>うちがわ</rt></ruby>だけ<ruby>溝<rt>みぞ</rt></ruby>が<ruby>浅<rt>あさ</rt></ruby>かったです。<br>*(Vâng anh. Chỉ rãnh phía trong là nông ạ.)* |
| Yamada | じゃあ、<ruby>後<rt>あと</rt></ruby>でアライメントテスターで<ruby>測<rt>はか</rt></ruby>るから、<ruby>見<rt>み</rt></ruby>に<ruby>来<rt>き</rt></ruby>てね。<br>*(Vậy lát anh đo bằng máy cân chỉnh, em sang xem nhé.)* |
| Phong | はい、<ruby>勉強<rt>べんきょう</rt></ruby>させてください。<ruby>何時<rt>なんじ</rt></ruby>ごろですか?<br>*(Vâng, cho em học với ạ. Khoảng mấy giờ ạ?)* |
| Yamada | <ruby>10時半<rt>じゅうじはん</rt></ruby>ぐらいかな。<br>*(Tầm 10 giờ rưỡi.)* |
| Phong | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>10時半<rt>じゅうじはん</rt></ruby>に<ruby>伺<rt>うかが</rt></ruby>います。<br>*(Em rõ ạ. 10 giờ rưỡi em sang.)* |

---

## Tình huống 7 — Pit 1 · 10:30, lần đầu xem loadtest / cân chỉnh

*Phong đứng cạnh máy アライメントテスター, Yamada thao tác.*

| Vai | Lời thoại |
|---|---|
| Yamada | これがアライメントテスター。<ruby>4輪<rt>よんりん</rt></ruby>の<ruby>角度<rt>かくど</rt></ruby>を<ruby>測<rt>はか</rt></ruby>るんだ。<br>*(Đây là máy đo cân chỉnh. Đo góc của cả 4 bánh.)* |
| Phong | <ruby>4輪<rt>よんりん</rt></ruby><ruby>全部<rt>ぜんぶ</rt></ruby>ですか?<br>*(Cả 4 bánh ạ?)* |
| Yamada | そう。トー、キャンバー、キャスター、この<ruby>3<rt>みっ</rt></ruby>つの<ruby>角度<rt>かくど</rt></ruby>を<ruby>見<rt>み</rt></ruby>る。<br>*(Đúng. Toe, camber, caster — xem 3 góc này.)* |
| Phong | トー、キャンバー、キャスター…メモします。<br>*(Toe, camber, caster… em ghi lại ạ.)* |
| Yamada | <ruby>数値<rt>すうち</rt></ruby>を<ruby>読<rt>よ</rt></ruby>むよ。<ruby>右前<rt>みぎまえ</rt></ruby>のトーが<ruby>0.3<rt>れいてんさん</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>外向<rt>そとむ</rt></ruby>き。これは<ruby>異常<rt>いじょう</rt></ruby>。<br>*(Đọc số nhé. Toe bánh trước phải 0.3 độ, hướng ngoài. Cái này bất thường.)* |
| Phong | <ruby>正常<rt>せいじょう</rt></ruby>の<ruby>範囲<rt>はんい</rt></ruby>は<ruby>何<rt>なん</rt></ruby><ruby>度<rt>ど</rt></ruby>ですか?<br>*(Mức bình thường là bao nhiêu độ ạ?)* |
| Yamada | プラスマイナス<ruby>0.1<rt>れいてんいち</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>だね。<br>*(Trong khoảng cộng trừ 0.1 độ.)* |
| Phong | だから<ruby>偏摩耗<rt>へんまもう</rt></ruby>になったんですね。<ruby>勉強<rt>べんきょう</rt></ruby>になりました。<br>*(Vậy nên mới mòn lệch nhỉ. Em học được nhiều ạ.)* |

---

## Tình huống 8 — Pit 1 · 10:50, học loadtest cho lốp đông

| Vai | Lời thoại |
|---|---|
| Yamada | <ruby>次<rt>つぎ</rt></ruby>はロードテスト。スタッドレスタイヤの<ruby>耐荷重<rt>たいかじゅう</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する。<br>*(Tiếp theo là loadtest. Kiểm tra tải trọng của lốp đông.)* |
| Phong | ロードテスト、はじめて<ruby>聞<rt>き</rt></ruby>きました。<br>*(Loadtest em mới nghe lần đầu.)* |
| Yamada | タイヤの<ruby>側面<rt>そくめん</rt></ruby>に「<ruby>91<rt>きゅうじゅういち</rt></ruby>Q」とか<ruby>書<rt>か</rt></ruby>いてあるでしょう?<br>*(Bên hông lốp có ghi "91Q" gì đấy đúng không?)* |
| Phong | はい、<ruby>見<rt>み</rt></ruby>たことがあります。<ruby>意味<rt>いみ</rt></ruby>は<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Vâng, em có thấy. Nghĩa là gì ạ?)* |
| Yamada | <ruby>91<rt>きゅうじゅういち</rt></ruby>はロードインデックス、<ruby>1本<rt>いっぽん</rt></ruby>あたり<ruby>615<rt>ろっぴゃくじゅうご</rt></ruby>キロまで<ruby>支<rt>ささ</rt></ruby>えられるという<ruby>意味<rt>いみ</rt></ruby>。<br>*(91 là chỉ số tải, một lốp chịu được tới 615 kg.)* |
| Phong | <ruby>4本<rt>よんほん</rt></ruby>で<ruby>2460<rt>にせんよんひゃくろくじゅう</rt></ruby>キロですね。<br>*(Bốn lốp là 2460 kg nhỉ.)* |
| Yamada | <ruby>計算<rt>けいさん</rt></ruby><ruby>早<rt>はや</rt></ruby>いね。Qは<ruby>速度<rt>そくど</rt></ruby><ruby>記号<rt>きごう</rt></ruby>、<ruby>時速<rt>じそく</rt></ruby><ruby>160<rt>ひゃくろくじゅう</rt></ruby>キロまでOKという<ruby>意味<rt>いみ</rt></ruby>だよ。<br>*(Tính nhanh ghê. Q là ký hiệu tốc độ, OK đến 160 km/h.)* |
| Phong | スタッドレスだから<ruby>速度<rt>そくど</rt></ruby>は<ruby>低<rt>ひく</rt></ruby>めなんですね。<br>*(Vì là lốp đông nên tốc độ thấp hơn ạ.)* |

---

## Tình huống 9 — Pit 2 · 11:30, siết bu-lông & xác nhận トルク với sempai

*Phong đã lắp xong lốp mới, đang dùng cờ-lê lực.*

| Vai | Lời thoại |
|---|---|
| Phong | カルロスさん、<ruby>確認<rt>かくにん</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします。トルクは<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンで<ruby>合<rt>あ</rt></ruby>っていますか?<br>*(Anh Carlos, kiểm tra giúp em. Lực 103 Nm đúng không ạ?)* |
| Carlos | この<ruby>車<rt>くるま</rt></ruby>は…ちょっと<ruby>待<rt>ま</rt></ruby>って、<ruby>確認<rt>かくにん</rt></ruby>するね。<br>*(Xe này thì… chờ chút, để anh tra.)* |
| Carlos | はい、プリウスは<ruby>103<rt>ひゃくさん</rt></ruby>でOK。<ruby>対角線<rt>たいかくせん</rt></ruby>に<ruby>2回<rt>にかい</rt></ruby><ruby>締<rt>し</rt></ruby>めて。<br>*(OK, Prius là 103 được. Siết đường chéo 2 lượt nhé.)* |
| Phong | はい、<ruby>1回目<rt>いっかいめ</rt></ruby><ruby>仮<rt>かり</rt></ruby><ruby>締<rt>じ</rt></ruby>め、<ruby>2回目<rt>にかいめ</rt></ruby><ruby>本締<rt>ほんじ</rt></ruby>めですね。<br>*(Vâng, lượt 1 siết tạm, lượt 2 siết chính nhỉ.)* |
| Carlos | そう。「カチッ」と<ruby>音<rt>おと</rt></ruby>がしたら<ruby>止<rt>と</rt></ruby>めて。<ruby>過剰<rt>かじょう</rt></ruby>に<ruby>締<rt>し</rt></ruby>めるとボルトが<ruby>折<rt>お</rt></ruby>れるよ。<br>*(Đúng. Nghe "tách" thì dừng. Siết quá thì gãy bu-lông đấy.)* |
| Phong | カチッ…はい、<ruby>音<rt>おと</rt></ruby>がしました!<br>*(Tách… vâng, có tiếng rồi!)* |
| Carlos | OK!<ruby>残<rt>のこ</rt></ruby>り<ruby>3本<rt>さんぼん</rt></ruby>も<ruby>同<rt>おな</rt></ruby>じように。<br>*(OK! Ba con còn lại làm tương tự.)* |
| Phong | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng ạ.)* |

---

## Tình huống 10 — Sảnh đón khách · 12:50, nghe nhầm "ホイール" và "リール"

*Khách hàng tên Tanaka đến lấy xe. Hiroshi tiếp khách, Phong đứng cạnh học.*

| Vai | Lời thoại |
|---|---|
| Khách | すみません、<ruby>夏<rt>なつ</rt></ruby>タイヤのホイールも<ruby>預<rt>あず</rt></ruby>かってもらえますか?<br>*(Xin lỗi, gửi luôn mâm của lốp hè được không?)* |
| Hiroshi | はい、<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>ですよ。フォンくん、ホイール<ruby>預<rt>あず</rt></ruby>かりの<ruby>伝票<rt>でんぴょう</rt></ruby>を。<br>*(Vâng, được ạ. Phong, lấy phiếu gửi mâm nhé.)* |
| Phong | リール…ですか?<br>*(Cuộn quay… ạ?)* |
| Hiroshi | (cười) リールじゃなくて、ホイール。<ruby>車<rt>くるま</rt></ruby>のタイヤの<ruby>中<rt>なか</rt></ruby>の<ruby>金属<rt>きんぞく</rt></ruby>のやつ。<br>*(Không phải "rīru", là "hoīru" — mâm kim loại bên trong lốp.)* |
| Phong | あ、すみません!ホイール、<ruby>分<rt>わ</rt></ruby>かりました。<br>*(Ồ xin lỗi! Mâm, em rõ rồi.)* |
| Khách | (cười) <ruby>頑張<rt>がんば</rt></ruby>ってね、<ruby>留学生<rt>りゅうがくせい</rt></ruby>さん。<br>*(Cố lên nhé, em du học sinh.)* |
| Phong | <ruby>実習生<rt>じっしゅうせい</rt></ruby>です。ベトナムから<ruby>来<rt>き</rt></ruby>ました。<br>*(Em là thực tập sinh ạ. Em đến từ Việt Nam.)* |
| Khách | あ、ベトナム!フォーが<ruby>大好<rt>だいす</rt></ruby>き。<br>*(Ồ, Việt Nam! Tôi mê phở lắm.)* |

---

## Tình huống 11 — Bàn nghỉ · 12:30, nhờ Hiroshi dạy thêm về số lốp

| Vai | Lời thoại |
|---|---|
| Phong | ヒロシさん、ちょっと<ruby>聞<rt>き</rt></ruby>いてもいいですか?<br>*(Anh Hiroshi, em hỏi chút được không?)* |
| Hiroshi | どうぞ、<ruby>何<rt>なん</rt></ruby>でも。<br>*(Cứ hỏi đi, gì cũng được.)* |
| Phong | タイヤの<ruby>側面<rt>そくめん</rt></ruby>に「<ruby>195<rt>ひゃくきゅうじゅうご</rt></ruby>/<ruby>65<rt>ろくじゅうご</rt></ruby>R<ruby>15<rt>じゅうご</rt></ruby>」と<ruby>書<rt>か</rt></ruby>いてあります。これは<ruby>何<rt>なん</rt></ruby>ですか?<br>*(Bên hông lốp ghi "195/65R15". Cái này là gì ạ?)* |
| Hiroshi | <ruby>195<rt>ひゃくきゅうじゅうご</rt></ruby>は<ruby>幅<rt>はば</rt></ruby>、ミリだよ。<br>*(195 là bề rộng, đơn vị mm.)* |
| Phong | <ruby>幅<rt>はば</rt></ruby><ruby>195<rt>ひゃくきゅうじゅうご</rt></ruby>ミリ。<br>*(Bề rộng 195 mm.)* |
| Hiroshi | <ruby>65<rt>ろくじゅうご</rt></ruby>は<ruby>扁平率<rt>へんぺいりつ</rt></ruby>、パーセント。Rはラジアル<ruby>構造<rt>こうぞう</rt></ruby>。<ruby>15<rt>じゅうご</rt></ruby>はホイールの<ruby>大<rt>おお</rt></ruby>きさ、インチ。<br>*(65 là tỷ lệ bề dày, %. R là cấu trúc radial. 15 là size mâm, inch.)* |
| Phong | <ruby>全部<rt>ぜんぶ</rt></ruby><ruby>意味<rt>いみ</rt></ruby>があるんですね!<br>*(Tất cả đều có ý nghĩa nhỉ!)* |
| Hiroshi | そうそう。<ruby>覚<rt>おぼ</rt></ruby>えるとお<ruby>客<rt>きゃく</rt></ruby>さんに<ruby>説明<rt>せつめい</rt></ruby>できるよ。<br>*(Đúng vậy. Nhớ thì có thể giải thích cho khách đấy.)* |

---

## Tình huống 12 — Pit 2 · 15:40, làm rớt bu-lông, xin lỗi & báo cáo

*Phong vô ý làm rớt bu-lông xuống rãnh thoát dầu.*

| Vai | Lời thoại |
|---|---|
| Phong | あっ!<br>*(Ấy!)* |
| Carlos | どうした?<br>*(Sao thế?)* |
| Phong | すみません、ボルトを<ruby>1本<rt>いっぽん</rt></ruby><ruby>落<rt>お</rt></ruby>としてしまいました。<br>*(Xin lỗi, em lỡ làm rớt một bu-lông.)* |
| Carlos | どこに?<br>*(Rớt đâu?)* |
| Phong | <ruby>排水溝<rt>はいすいこう</rt></ruby>の<ruby>中<rt>なか</rt></ruby>に…<ruby>取<rt>と</rt></ruby>れません。<br>*(Vào rãnh thoát nước… không lấy ra được.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>、<ruby>慌<rt>あわ</rt></ruby>てないで。<ruby>新<rt>あたら</rt></ruby>しいボルトを<ruby>使<rt>つか</rt></ruby>おう。<ruby>整備士長<rt>せいびしちょう</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してね。<br>*(Không sao, đừng cuống. Dùng bu-lông mới. Báo cáo trưởng kỹ thuật nhé.)* |
| Phong | はい、すぐ<ruby>報告<rt>ほうこく</rt></ruby>します。<br>*(Vâng, em báo ngay ạ.)* |
| Phong (với Yamada) | <ruby>整備士長<rt>せいびしちょう</rt></ruby>、すみません、ボルトを<ruby>1本<rt>いっぽん</rt></ruby><ruby>排水溝<rt>はいすいこう</rt></ruby>に<ruby>落<rt>お</rt></ruby>としました。<ruby>新<rt>あたら</rt></ruby>しいのを<ruby>使<rt>つか</rt></ruby>ってもいいですか?<br>*(Trưởng kỹ thuật, em xin lỗi, em làm rớt một bu-lông vào rãnh. Em dùng bu-lông mới được không ạ?)* |
| Yamada | いいよ。<ruby>正直<rt>しょうじき</rt></ruby>に<ruby>報告<rt>ほうこく</rt></ruby>してくれてありがとう。<ruby>次<rt>つぎ</rt></ruby>から<ruby>気<rt>き</rt></ruby>をつけてね。<br>*(Được. Cảm ơn em báo cáo trung thực. Lần sau cẩn thận nhé.)* |
| Phong | はい、<ruby>本当<rt>ほんとう</rt></ruby>に<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ありません。<br>*(Vâng, em thực sự xin lỗi.)* |

---

## Tình huống 13 — Phòng nghỉ · 17:50, kết thúc ca, Carlos rủ học thêm

| Vai | Lời thoại |
|---|---|
| Carlos | フォン、<ruby>今日<rt>きょう</rt></ruby>はよく<ruby>頑張<rt>がんば</rt></ruby>ったね。<br>*(Phong, hôm nay làm tốt lắm.)* |
| Phong | ありがとうございます。でも、まだ<ruby>失敗<rt>しっぱい</rt></ruby>が<ruby>多<rt>おお</rt></ruby>いです。<br>*(Em cảm ơn ạ. Nhưng em vẫn còn nhiều lỗi.)* |
| Carlos | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>。<ruby>俺<rt>おれ</rt></ruby>も<ruby>最初<rt>さいしょ</rt></ruby>はそうだった。<ruby>来週<rt>らいしゅう</rt></ruby>、ロードテストの<ruby>続<rt>つづ</rt></ruby>きを<ruby>教<rt>おし</rt></ruby>えるよ。<br>*(Không sao. Anh hồi đầu cũng vậy. Tuần sau anh dạy tiếp loadtest.)* |
| Phong | ぜひお<ruby>願<rt>ねが</rt></ruby>いします。ノートに<ruby>書<rt>か</rt></ruby>いておきます。<br>*(Em xin nhờ anh ạ. Em sẽ ghi vào sổ.)* |
| Carlos | フォンはノートをよく<ruby>書<rt>か</rt></ruby>くね。<ruby>真面目<rt>まじめ</rt></ruby>。<br>*(Phong viết sổ chăm thật. Nghiêm túc.)* |
| Phong | ベトナムの<ruby>父<rt>ちち</rt></ruby>に「<ruby>書<rt>か</rt></ruby>けば<ruby>忘<rt>わす</rt></ruby>れない」と<ruby>言<rt>い</rt></ruby>われました。<br>*(Bố em ở Việt Nam dặn "viết ra thì không quên".)* |
| Carlos | いいお<ruby>父<rt>とう</rt></ruby>さんだね。<br>*(Bố em hay đấy.)* |

---

## Tình huống 14 — Phòng trọ · 21:30, gọi video về Hải Phòng

> Cảnh tiếng Việt — Phong gọi về cho bố ở Hải Phòng (bố làm cơ khí xưởng nhỏ).

| Vai | Lời thoại |
|---|---|
| Phong | Bố ơi, hôm nay con thay lốp đến mười một xe. |
| Bố | Mười một xe? Mệt không con? |
| Phong | Cũng mệt, nhưng vui. Hôm nay con học được "torque renchi" — cờ-lê lực ấy bố. Bên xưởng mình mình toàn siết tay thôi nhỉ. |
| Bố | Ừ, bên mình bố cũng chỉ siết tay với cây cờ-lê dài. Bên Nhật chuẩn hơn nhỉ. |
| Phong | Vâng. Con học cả cách đọc số lốp: 195/65R15. 195 là bề rộng mm, 65 là tỷ lệ bề dày, R là radial, 15 là inch mâm. |
| Bố | Giỏi lắm. Mà có gì khó thì cứ hỏi sempai, đừng giấu. |
| Phong | Vâng, hôm nay con làm rớt một bu-lông xuống rãnh, con báo cáo ngay với "seibishichou" — trưởng kỹ thuật ấy. Anh ấy không mắng, còn khen con thật thà. |
| Bố | Tốt. Người Nhật quý trung thực. Cố lên con. |
| Phong | Vâng. Tháng sau con sẽ học về phanh, sempai Carlos hứa dạy con. Con chào bố, ngủ ngon ạ. |

---

## Đọng lại chương

Chương này em đã học các mẫu câu cốt lõi của ngày thay lốp:

- **「リフトを<ruby>上<rt>あ</rt></ruby>げてもいいですか?」** — Em nâng cầu được không ạ? (xin phép thao tác)
- **「トルクは<ruby>103<rt>ひゃくさん</rt></ruby>ニュートンで<ruby>合<rt>あ</rt></ruby>っていますか?」** — Lực 103 Nm đúng không ạ? (xác nhận trị số)
- **「すみません、もう<ruby>一度<rt>いちど</rt></ruby>お<ruby>願<rt>ねが</rt></ruby>いします」** — Xin lỗi, anh nói lại giúp em (hỏi lại khi chưa nghe rõ)
- **「ボルトを<ruby>1本<rt>いっぽん</rt></ruby><ruby>落<rt>お</rt></ruby>としてしまいました」** — Em lỡ làm rớt một bu-lông (báo lỗi)
- **「<ruby>勉強<rt>べんきょう</rt></ruby>させてください」** — Cho em học với ạ (xin phép quan sát học hỏi)
- **「<ruby>安全<rt>あんぜん</rt></ruby><ruby>第一<rt>だいいち</rt></ruby>」** — An toàn là trên hết (khẩu hiệu xưởng)

> Từ vựng & mẫu câu chương này: タイヤ・ホイール・ボルト・トルクレンチ・インパクトレンチ・リフト・<ruby>対角線<rt>たいかくせん</rt></ruby>・<ruby>偏摩耗<rt>へんまもう</rt></ruby>・アライメント・ロードテスト・<ruby>耐荷重<rt>たいかじゅう</rt></ruby>・<ruby>溝<rt>みぞ</rt></ruby>・<ruby>仮締<rt>かりじ</rt></ruby>め・<ruby>本締<rt>ほんじ</rt></ruby>め・<ruby>報告<rt>ほうこく</rt></ruby>...

---

## Bí quyết chương

- Tháo bu-lông luôn theo **đường chéo (対角線)**, siết cũng vậy — siết thẳng làm cong ổ trục.
- Trước khi nâng cầu: **luôn nhìn dưới gầm, hô to** — văn hoá 指差呼称 (chỉ tay & hô).
- Cờ-lê lực kêu "**カチッ**" là dừng — siết quá làm gãy bu-lông, đền tiền to.
- Báo lỗi **càng sớm càng tốt** — sempai quý trung thực hơn việc che giấu.
- Số bên hông lốp (195/65R15, 91Q) là **thẻ căn cước của lốp** — học thuộc để giải thích cho khách.
- Mùa thu Aichi (10/11) là **đỉnh điểm đổi lốp đông** — cả garage tăng ca, không được làm ẩu vì vội.

---

## Bảng từ vựng chương

| Từ | Cách đọc | Hán Việt | Nghĩa tiếng Việt |
|---|---|---|---|
| 交換 | こうかん | GIAO HOÁN | thay, đổi |
| 工場長 | こうじょうちょう | CÔNG XƯỞNG TRƯỞNG | quản đốc xưởng |
| 整備士長 | せいびしちょう | CHỈNH BỊ SĨ TRƯỞNG | trưởng kỹ thuật |
| 準備 | じゅんび | CHUẨN BỊ | chuẩn bị |
| インパクトレンチ | — | — | cờ-lê hơi |
| トルクレンチ | — | — | cờ-lê lực |
| ボルト | — | — | bu-lông |
| 締める | しめる | THỂ | siết |
| 外す | はずす | NGOẠI | tháo |
| マニュアル | — | — | sổ tay hướng dẫn |
| 確認 | かくにん | XÁC NHẬN | kiểm tra, xác nhận |
| リフト | — | — | cầu nâng |
| 安全第一 | あんぜんだいいち | AN TOÀN ĐỆ NHẤT | an toàn là trên hết |
| 順番 | じゅんばん | THUẬN PHIÊN | thứ tự |
| 対角線 | たいかくせん | ĐỐI GIÁC TUYẾN | đường chéo |
| 歪む | ゆがむ | OAI | cong, vênh |
| 内側 | うちがわ | NỘI TRẮC | mặt trong |
| 減る | へる | GIẢM | mòn, giảm |
| 偏摩耗 | へんまもう | THIÊN MA HAO | mòn lệch |
| 原因 | げんいん | NGUYÊN NHÂN | nguyên nhân |
| アライメント | — | — | độ chụm (cân chỉnh) |
| 角度 | かくど | GIÁC ĐỘ | góc độ |
| 数値 | すうち | SỐ TRỊ | trị số |
| 異常 | いじょう | DỊ THƯỜNG | bất thường |
| 範囲 | はんい | PHẠM VI | khoảng, phạm vi |
| ロードテスト | — | — | loadtest, kiểm tra tải |
| 耐荷重 | たいかじゅう | NẠI HÀ TRỌNG | tải trọng chịu được |
| 速度 | そくど | TỐC ĐỘ | tốc độ |
| 仮締め | かりじめ | GIẢ | siết tạm |
| 本締め | ほんじめ | BỔN | siết chính |
| 排水溝 | はいすいこう | BÀI THUỶ CÂU | rãnh thoát nước |
| 落とす | おとす | LẠC | làm rớt |
| 報告 | ほうこく | BÁO CÁO | báo cáo |
| 正直 | しょうじき | CHÍNH TRỰC | trung thực |
| 真面目 | まじめ | CHÂN DIỆN MỤC | nghiêm túc, chăm chỉ |
| ホイール | — | — | mâm bánh xe |
| 扁平率 | へんぺいりつ | BIỂN BÌNH SUẤT | tỷ lệ bề dày |
