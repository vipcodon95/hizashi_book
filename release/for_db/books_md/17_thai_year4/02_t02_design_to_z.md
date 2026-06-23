# Sách kỹ sư khuôn đúc · T2. Thiết kế A→Z trong 3 tháng (設計A→Z)

> **Mục tiêu nhân vật:** Thái (26 tuổi, Hà Nội) lead thiết kế khuôn console hộp lần đầu tại みなみ精密金型 (Anjo). Học các mẫu hội thoại tiếng Nhật chuyên ngành khuôn đúc cao cấp: báo cáo kết quả mô phỏng Moldex3D (反り・水路), điều phối CAM với 先輩 (お願いする・分担), hỏi lại khi nghe thuật ngữ lạ (〜というのは?), báo lỗi sau trial (ウェルドライン・ゲート位置), trao đổi phương án sửa với 設計課長, nhận feedback chăm sóc sức khoẻ từ cấp trên (休もう・無理しないで), và báo cáo kết quả 承認試作 với 品質保証 (PPAP・Cpk).

---

## Bối cảnh

Tháng 6–9 năm 2025. Thái đã làm tại **株式会社みなみ精密金型** (Anjo, Aichi) được 3 năm, lần đầu lead thiết kế khuôn console hộp cho khách Toyota 車体. Trình độ tiếng Nhật N2 (đỗ tháng 7/2025). Ba tháng cao điểm: tháng 6 chốt mô phỏng, tháng 7 phối hợp CAM với 桜井先輩, tháng 8 gia công liên tục, tháng 9 bắn thử lần đầu — lộ lỗi ウェルドライン — sửa ゲート rồi đạt 承認試作. Chương này tập trung mẫu câu báo cáo kết quả kỹ thuật, hỏi/xin hỗ trợ đàn anh, hội ý sửa lỗi với 設計課長, và đối thoại trang trọng với 品質保証.

---

## Tình huống 1 — Phòng thiết kế · 6/2025 giữa tháng 10:30, báo cáo kết quả mô phỏng Moldex3D

| Vai | Lời thoại |
|---|---|
| Thái | （Moldex3Dの<ruby>結果<rt>けっか</rt></ruby><ruby>画面<rt>がめん</rt></ruby>を<ruby>開<rt>ひら</rt></ruby>く）<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>解析<rt>かいせき</rt></ruby><ruby>結果<rt>けっか</rt></ruby>を<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Mở màn hình kết quả Moldex3D. Trưởng phòng Kawakami, em xin báo cáo kết quả phân tích.)* |
| Kawakami | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời cậu.)* |
| Thái | コンソールボックスの<ruby>反<rt>そ</rt></ruby>りは0.18<ruby>ミリ<rt>みり</rt></ruby>でした。<ruby>許容<rt>きょよう</rt></ruby><ruby>値<rt>ち</rt></ruby>の0.2<ruby>ミリ<rt>みり</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>収<rt>おさ</rt></ruby>まっています。<br>*(Warpage của console box là 0.18mm. Nằm trong giá trị cho phép 0.2mm.)* |
| Kawakami | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>確認<rt>かくにん</rt></ruby>する）よし、OKだ。<ruby>水路<rt>すいろ</rt></ruby>の<ruby>設計<rt>せっけい</rt></ruby>はどうなっている？<br>*(Kiểm tra màn hình. Tốt, OK. Còn thiết kế đường nước thì sao?)* |
| Thái | <ruby>水路<rt>すいろ</rt></ruby>は<ruby>5<rt>ご</rt></ruby><ruby>本<rt>ほん</rt></ruby><ruby>配置<rt>はいち</rt></ruby>しました。<ruby>左右<rt>さゆう</rt></ruby><ruby>対称<rt>たいしょう</rt></ruby>で、<ruby>冷却<rt>れいきゃく</rt></ruby><ruby>時間<rt>じかん</rt></ruby>は<ruby>22<rt>にじゅうに</rt></ruby><ruby>秒<rt>びょう</rt></ruby>です。<br>*(Em bố trí 5 đường nước. Đối xứng trái phải, thời gian làm nguội 22 giây.)* |
| Kawakami | <ruby>冷却<rt>れいきゃく</rt></ruby>バランスは<ruby>大丈夫<rt>だいじょうぶ</rt></ruby>か？<br>*(Cân bằng làm nguội ổn chứ?)* |
| Thái | はい、<ruby>温度<rt>おんど</rt></ruby><ruby>差<rt>さ</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>度<rt>ど</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<ruby>解析<rt>かいせき</rt></ruby><ruby>レポート<rt>れぽーと</rt></ruby>を<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Vâng, chênh nhiệt trong vòng 3 độ. Em xin nộp báo cáo phân tích.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>来週<rt>らいしゅう</rt></ruby>からCAM<ruby>工程<rt>こうてい</rt></ruby>に<ruby>進<rt>すす</rt></ruby>もう。<br>*(Hiểu rồi. Tuần sau bắt đầu sang công đoạn CAM.)* |
| Thái | はい、<ruby>承知<rt>しょうち</rt></ruby>しました。<br>*(Vâng, em rõ ạ.)* |

---

## Tình huống 2 — Bàn 桜井先輩 · 7/2025 đầu tháng 13:00, xin hỗ trợ CAM 50 chi tiết

| Vai | Lời thoại |
|---|---|
| Sakurai | タイ<ruby>君<rt>くん</rt></ruby>、<ruby>君<rt>きみ</rt></ruby>のCAMを<ruby>俺<rt>おれ</rt></ruby>が<ruby>手伝<rt>てつだ</rt></ruby>うんだろう？<ruby>聞<rt>き</rt></ruby>いたよ。<br>*(Tai-kun, tớ hỗ trợ CAM cho cậu phải không? Tớ nghe rồi.)* |
| Thái | はい、<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>、よろしくお<ruby>願<rt>ねが</rt></ruby>いいたします。<ruby>今回<rt>こんかい</rt></ruby>のコンソールは<ruby>部品<rt>ぶひん</rt></ruby>が<ruby>50<rt>ごじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>あります。<br>*(Vâng, đàn anh Sakurai, em mong anh giúp đỡ. Console lần này có 50 chi tiết.)* |
| Sakurai | <ruby>50<rt>ごじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>か。Mastercamで<ruby>切<rt>き</rt></ruby>るんだな？<br>*(50 chi tiết à. Cắt bằng Mastercam nhỉ?)* |
| Thái | はい、Mastercamです。<ruby>納期<rt>のうき</rt></ruby>までに<ruby>4<rt>よん</rt></ruby><ruby>週間<rt>しゅうかん</rt></ruby>しかありません。<br>*(Vâng, Mastercam ạ. Đến deadline chỉ còn 4 tuần.)* |
| Sakurai | <ruby>分担<rt>ぶんたん</rt></ruby>を<ruby>決<rt>き</rt></ruby>めよう。<ruby>俺<rt>おれ</rt></ruby>が<ruby>形状<rt>けいじょう</rt></ruby>の<ruby>複雑<rt>ふくざつ</rt></ruby>な<ruby>20<rt>にじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>、タイ<ruby>君<rt>くん</rt></ruby>が<ruby>残<rt>のこ</rt></ruby>りの<ruby>30<rt>さんじゅっ</rt></ruby><ruby>点<rt>てん</rt></ruby>。どう？<br>*(Phân công đi. Tớ làm 20 chi tiết hình dạng phức tạp, Tai-kun làm 30 chi tiết còn lại. Sao?)* |
| Thái | はい、<ruby>助<rt>たす</rt></ruby>かります。すみません、「<ruby>分担<rt>ぶんたん</rt></ruby>」というのは、<ruby>仕事<rt>しごと</rt></ruby>を<ruby>分<rt>わ</rt></ruby>けて<ruby>担当<rt>たんとう</rt></ruby>するということですね？<br>*(Vâng, anh giúp em quá. Xin lỗi, "buntan" tức là chia việc ra phụ trách phải không ạ?)* |
| Sakurai | そうそう。<ruby>分<rt>わ</rt></ruby>けて<ruby>担当<rt>たんとう</rt></ruby>する、つまり<ruby>分担<rt>ぶんたん</rt></ruby>だ。<br>*(Đúng đúng. Chia ra phụ trách, tức là buntan.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>毎週<rt>まいしゅう</rt></ruby><ruby>金曜日<rt>きんようび</rt></ruby>に<ruby>進捗<rt>しんちょく</rt></ruby><ruby>確認<rt>かくにん</rt></ruby>をしてもよろしいですか？<br>*(Em hiểu rồi. Mỗi thứ Sáu kiểm tra tiến độ với anh được không ạ?)* |
| Sakurai | いいよ。<ruby>困<rt>こま</rt></ruby>ったらいつでも<ruby>聞<rt>き</rt></ruby>いてね。<ruby>一緒<rt>いっしょ</rt></ruby>に<ruby>頑張<rt>がんば</rt></ruby>ろう。<br>*(Được. Có khó khăn gì lúc nào cũng hỏi tớ nhé. Cùng cố lên.)* |
| Thái | はい、よろしくお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mong anh giúp đỡ.)* |

---

## Tình huống 3 — Xưởng gia công · 7/2025 giữa tháng 15:00, quan sát đàn anh chạy Mastercam

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>画面<rt>がめん</rt></ruby>を<ruby>指<rt>さ</rt></ruby>す）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>見<rt>み</rt></ruby>てて。この<ruby>形状<rt>けいじょう</rt></ruby>は<ruby>3<rt>さん</rt></ruby><ruby>軸<rt>じく</rt></ruby>じゃ<ruby>無理<rt>むり</rt></ruby>だから<ruby>5<rt>ご</rt></ruby><ruby>軸<rt>じく</rt></ruby><ruby>加工<rt>かこう</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>える。<br>*(Chỉ vào màn hình. Tai-kun, xem này. Hình dạng này 3 trục không được, phải chuyển sang gia công 5 trục.)* |
| Thái | <ruby>5<rt>ご</rt></ruby><ruby>軸<rt>じく</rt></ruby><ruby>加工<rt>かこう</rt></ruby>...というのは？<br>*(Gia công 5 trục... nghĩa là gì ạ?)* |
| Sakurai | <ruby>普通<rt>ふつう</rt></ruby>のフライスはXYZの<ruby>3<rt>さん</rt></ruby><ruby>軸<rt>じく</rt></ruby>だけ<ruby>動<rt>うご</rt></ruby>くだろう？<ruby>5<rt>ご</rt></ruby><ruby>軸<rt>じく</rt></ruby>は<ruby>傾<rt>かたむ</rt></ruby>きと<ruby>回転<rt>かいてん</rt></ruby>が<ruby>加<rt>くわ</rt></ruby>わるんだ。<ruby>深<rt>ふか</rt></ruby>い<ruby>溝<rt>みぞ</rt></ruby>とアンダーカットが<ruby>一度<rt>いちど</rt></ruby>で<ruby>切<rt>き</rt></ruby>れる。<br>*(Phay thường chỉ chạy 3 trục XYZ phải không? 5 trục thêm góc nghiêng và xoay. Rãnh sâu và undercut cắt được trong một lần.)* |
| Thái | なるほど、<ruby>傾<rt>かたむ</rt></ruby>きと<ruby>回転<rt>かいてん</rt></ruby>が<ruby>加<rt>くわ</rt></ruby>わるということですね。<br>*(Em hiểu, tức là cộng thêm nghiêng và xoay ạ.)* |
| Sakurai | そうそう。<ruby>工具<rt>こうぐ</rt></ruby><ruby>軌道<rt>きどう</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>するのが<ruby>難<rt>むずか</rt></ruby>しいから、まずは<ruby>俺<rt>おれ</rt></ruby>のやり<ruby>方<rt>かた</rt></ruby>をよく<ruby>見<rt>み</rt></ruby>てね。<br>*(Đúng. Tính quỹ đạo dao khó nên cứ quan sát kỹ cách của tớ trước.)* |
| Thái | はい、メモ<ruby>取<rt>と</rt></ruby>らせていただきます。<br>*(Vâng, em xin phép ghi chú lại.)* |
| Sakurai | （ツールパスを<ruby>作<rt>つく</rt></ruby>る）まず<ruby>荒削<rt>あらけず</rt></ruby>り、<ruby>次<rt>つぎ</rt></ruby>に<ruby>中仕上<rt>ちゅうしあ</rt></ruby>げ、<ruby>最後<rt>さいご</rt></ruby>に<ruby>仕上<rt>しあ</rt></ruby>げ。<ruby>順番<rt>じゅんばん</rt></ruby>を<ruby>間違<rt>まちが</rt></ruby>えるとビビリが<ruby>出<rt>で</rt></ruby>るぞ。<br>*(Tạo toolpath. Đầu tiên thô, sau đó bán tinh, cuối cùng tinh. Sai thứ tự là rung ngay.)* |
| Thái | <ruby>荒削<rt>あらけず</rt></ruby>り→<ruby>中仕上<rt>ちゅうしあ</rt></ruby>げ→<ruby>仕上<rt>しあ</rt></ruby>げ、ですね。「ビビリ」というのは<ruby>振動<rt>しんどう</rt></ruby>のことですか？<br>*(Thô → bán tinh → tinh ạ. "Bibiri" tức là rung phải không ạ?)* |
| Sakurai | そう、<ruby>工具<rt>こうぐ</rt></ruby>が<ruby>震<rt>ふる</rt></ruby>えて<ruby>面<rt>めん</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>くなる<ruby>現象<rt>げんしょう</rt></ruby>。<ruby>切削<rt>せっさく</rt></ruby><ruby>条件<rt>じょうけん</rt></ruby>が<ruby>合<rt>あ</rt></ruby>わないと<ruby>起<rt>お</rt></ruby>こる。<br>*(Đúng, hiện tượng dao rung làm bề mặt xấu. Xảy ra khi điều kiện cắt không hợp.)* |
| Thái | ありがとうございます。<ruby>勉強<rt>べんきょう</rt></ruby>になります。<br>*(Cảm ơn anh. Em học được nhiều.)* |

---

## Tình huống 4 — Phòng thiết kế · 8/2025 giữa tháng 21:00, cấp trên dặn nghỉ ngơi

| Vai | Lời thoại |
|---|---|
| Sakurai | （<ruby>覗<rt>のぞ</rt></ruby>き<ruby>込<rt>こ</rt></ruby>む）タイ<ruby>君<rt>くん</rt></ruby>、<ruby>顔色<rt>かおいろ</rt></ruby>が<ruby>悪<rt>わる</rt></ruby>いよ。<ruby>毎日<rt>まいにち</rt></ruby><ruby>10<rt>じゅう</rt></ruby><ruby>時間<rt>じかん</rt></ruby><ruby>残業<rt>ざんぎょう</rt></ruby>してるだろ？<br>*(Liếc nhìn. Tai-kun, sắc mặt kém đấy. Tăng ca 10 tiếng mỗi ngày phải không?)* |
| Thái | <ruby>大丈夫<rt>だいじょうぶ</rt></ruby>です。<ruby>納期<rt>のうき</rt></ruby>が<ruby>迫<rt>せま</rt></ruby>っていますので、もう<ruby>少<rt>すこ</rt></ruby>し<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Em không sao. Sắp đến deadline nên em cố thêm chút nữa.)* |
| Sakurai | <ruby>無理<rt>むり</rt></ruby>しないで。<ruby>休<rt>やす</rt></ruby>もう。コンソールボックス<ruby>1<rt>いっ</rt></ruby><ruby>個<rt>こ</rt></ruby>が<ruby>世界<rt>せかい</rt></ruby>のすべてじゃないんだから。<br>*(Đừng cố quá. Nghỉ đi. Một cái console không phải là cả thế giới.)* |
| Thái | （<ruby>頷<rt>うなず</rt></ruby>く）はい...すみません。<br>*(Gật đầu. Vâng... em xin lỗi.)* |
| Sakurai | <ruby>謝<rt>あやま</rt></ruby>らなくていい。<ruby>体<rt>からだ</rt></ruby>を<ruby>壊<rt>こわ</rt></ruby>したら<ruby>納期<rt>のうき</rt></ruby>に<ruby>間<rt>ま</rt></ruby>に<ruby>合<rt>あ</rt></ruby>わなくなる。<ruby>今日<rt>きょう</rt></ruby>は<ruby>早<rt>はや</rt></ruby>く<ruby>帰<rt>かえ</rt></ruby>って<ruby>寝<rt>ね</rt></ruby>よう。<br>*(Không cần xin lỗi. Hỏng người thì không kịp deadline đâu. Hôm nay về sớm ngủ đi.)* |
| Thái | はい、ありがとうございます。<ruby>明日<rt>あした</rt></ruby>からは<ruby>9<rt>く</rt></ruby><ruby>時<rt>じ</rt></ruby>には<ruby>帰<rt>かえ</rt></ruby>るようにします。<br>*(Vâng, cảm ơn anh. Từ mai em sẽ về trước 9 giờ.)* |
| Sakurai | それでいい。<ruby>困<rt>こま</rt></ruby>ったら<ruby>俺<rt>おれ</rt></ruby>に<ruby>相談<rt>そうだん</rt></ruby>して。<ruby>一人<rt>ひとり</rt></ruby>で<ruby>抱<rt>かか</rt></ruby>え<ruby>込<rt>こ</rt></ruby>むな。<br>*(Vậy được. Có gì khó cứ bàn với tớ. Đừng ôm một mình.)* |
| Thái | はい、お<ruby>言葉<rt>ことば</rt></ruby>に<ruby>甘<rt>あま</rt></ruby>えさせていただきます。<br>*(Vâng, em xin nhận lời ạ.)* |

---

## Tình huống 5 — Xưởng射出 · 9/2025 đầu tháng 10:00, bắn thử lần đầu phát hiện ウェルドライン

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>金型<rt>かながた</rt></ruby>を<ruby>機械<rt>きかい</rt></ruby>にマウントする）<ruby>金型<rt>かながた</rt></ruby>のセット、<ruby>完了<rt>かんりょう</rt></ruby>しました。<br>*(Lắp khuôn lên máy. Em đã lắp xong khuôn.)* |
| Operator | <ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby><ruby>240<rt>にひゃくよんじゅう</rt></ruby><ruby>度<rt>ど</rt></ruby>、<ruby>射出<rt>しゃしゅつ</rt></ruby><ruby>圧力<rt>あつりょく</rt></ruby><ruby>80<rt>はちじゅう</rt></ruby>MPa<ruby>設定<rt>せってい</rt></ruby>OKです。<ruby>射出<rt>しゃしゅつ</rt></ruby>します。<br>*(Nhiệt độ nhựa 240 độ, áp suất bắn 80MPa setting OK. Bắn nhé.)* |
| Thái | はい、お<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Vâng, mời anh.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>する）...あ、<ruby>左下<rt>ひだりした</rt></ruby>の<ruby>角<rt>かど</rt></ruby>にウェルドラインが<ruby>出<rt>で</rt></ruby>ています！<br>*(Lấy sản phẩm ra kiểm tra. Á, góc dưới bên trái có weldline!)* |
| Kawakami | （<ruby>来<rt>く</rt></ruby>る）どうした？ウェルドラインか？<br>*(Đi tới. Sao thế? Weldline à?)* |
| Thái | はい、<ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>確認<rt>かくにん</rt></ruby>してください。ゲート<ruby>位置<rt>いち</rt></ruby>に<ruby>問題<rt>もんだい</rt></ruby>がありそうです。<br>*(Vâng, trưởng phòng Kawakami, anh kiểm tra giúp em. Có vẻ vấn đề ở vị trí gate ạ.)* |
| Kawakami | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>手<rt>て</rt></ruby>に<ruby>取<rt>と</rt></ruby>る）<ruby>確<rt>たし</rt></ruby>かに<ruby>溶融<rt>ようゆう</rt></ruby><ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>合流点<rt>ごうりゅうてん</rt></ruby>がここに<ruby>来<rt>き</rt></ruby>てるな。<br>*(Cầm sản phẩm. Đúng là điểm hợp dòng nhựa lỏng đến đây.)* |
| Thái | すみません、<ruby>原因<rt>げんいん</rt></ruby>の<ruby>分析<rt>ぶんせき</rt></ruby>と<ruby>対策<rt>たいさく</rt></ruby><ruby>案<rt>あん</rt></ruby>を<ruby>明日<rt>あした</rt></ruby>の<ruby>朝<rt>あさ</rt></ruby>までに<ruby>提出<rt>ていしゅつ</rt></ruby>します。<br>*(Em xin lỗi, em sẽ nộp phân tích nguyên nhân và phương án đối sách trước sáng mai.)* |
| Kawakami | うん。<ruby>慌<rt>あわ</rt></ruby>てなくていい。<ruby>原因<rt>げんいん</rt></ruby>を<ruby>正<rt>ただ</rt></ruby>しく<ruby>掴<rt>つか</rt></ruby>むことが<ruby>大事<rt>だいじ</rt></ruby>だ。<br>*(Ừ. Không cần vội. Bắt đúng nguyên nhân mới quan trọng.)* |

---

## Tình huống 6 — Phòng thiết kế · 9/2025 ngày hôm sau 9:00, hội ý phương án sửa ゲート

| Vai | Lời thoại |
|---|---|
| Thái | <ruby>川上<rt>かわかみ</rt></ruby><ruby>課長<rt>かちょう</rt></ruby>、<ruby>昨日<rt>きのう</rt></ruby>のウェルドラインの<ruby>件<rt>けん</rt></ruby>、<ruby>再<rt>さい</rt></ruby><ruby>解析<rt>かいせき</rt></ruby>しました。<ruby>報告<rt>ほうこく</rt></ruby>させていただきます。<br>*(Trưởng phòng Kawakami, vụ weldline hôm qua em đã phân tích lại. Em xin báo cáo.)* |
| Kawakami | はい、どうぞ。<br>*(Vâng, mời cậu.)* |
| Thái | <ruby>現状<rt>げんじょう</rt></ruby>のゲートは<ruby>中央<rt>ちゅうおう</rt></ruby><ruby>1<rt>いっ</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>です。<ruby>樹脂<rt>じゅし</rt></ruby>が<ruby>左右<rt>さゆう</rt></ruby>に<ruby>流<rt>なが</rt></ruby>れて<ruby>底<rt>そこ</rt></ruby>で<ruby>合流<rt>ごうりゅう</rt></ruby>するため、ウェルドラインが<ruby>発生<rt>はっせい</rt></ruby>しています。<br>*(Gate hiện tại 1 vị trí ở giữa. Nhựa chảy sang trái phải gặp nhau dưới đáy nên phát sinh weldline.)* |
| Kawakami | なるほど。<ruby>対策<rt>たいさく</rt></ruby><ruby>案<rt>あん</rt></ruby>は？<br>*(Hiểu rồi. Phương án đối sách?)* |
| Thái | ゲートを<ruby>2<rt>に</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby><ruby>追加<rt>ついか</rt></ruby>して<ruby>合計<rt>ごうけい</rt></ruby><ruby>3<rt>さん</rt></ruby><ruby>箇所<rt>かしょ</rt></ruby>にし、<ruby>樹脂<rt>じゅし</rt></ruby>の<ruby>流<rt>なが</rt></ruby>れを<ruby>分散<rt>ぶんさん</rt></ruby>させます。<ruby>解析<rt>かいせき</rt></ruby>では<ruby>合流点<rt>ごうりゅうてん</rt></ruby>が<ruby>目立<rt>めだ</rt></ruby>たない<ruby>位置<rt>いち</rt></ruby>に<ruby>移<rt>うつ</rt></ruby>りました。<br>*(Bổ sung 2 gate, tổng cộng 3 vị trí, phân tán dòng nhựa. Trong mô phỏng, điểm hợp dòng đã dịch sang vị trí khuất.)* |
| Kawakami | いいね。<ruby>金型<rt>かながた</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>は<ruby>何日<rt>なんにち</rt></ruby>かかる？<br>*(Tốt đấy. Sửa khuôn mất mấy ngày?)* |
| Thái | <ruby>追加<rt>ついか</rt></ruby><ruby>加工<rt>かこう</rt></ruby>と<ruby>仕上<rt>しあ</rt></ruby>げで<ruby>3<rt>みっ</rt></ruby><ruby>日<rt>か</rt></ruby><ruby>見込<rt>みこ</rt></ruby>んでいます。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>に<ruby>応援<rt>おうえん</rt></ruby>をお<ruby>願<rt>ねが</rt></ruby>いしたいです。<br>*(Gia công bổ sung và hoàn thiện dự kiến 3 ngày. Em muốn nhờ đàn anh Sakurai hỗ trợ.)* |
| Kawakami | <ruby>了解<rt>りょうかい</rt></ruby>、<ruby>桜井<rt>さくらい</rt></ruby><ruby>君<rt>くん</rt></ruby>には<ruby>俺<rt>おれ</rt></ruby>から<ruby>話<rt>はな</rt></ruby>す。<ruby>進<rt>すす</rt></ruby>めてくれ。<br>*(Hiểu rồi, Sakurai-kun để tớ nói. Cứ tiến hành đi.)* |
| Thái | はい、ありがとうございます。<br>*(Vâng, em cảm ơn.)* |

---

## Tình huống 7 — Xưởng射出 · 9/2025 giữa tháng 14:00, bắn thử lần 2 thành công

| Vai | Lời thoại |
|---|---|
| Thái | （<ruby>修正<rt>しゅうせい</rt></ruby><ruby>後<rt>ご</rt></ruby>の<ruby>金型<rt>かながた</rt></ruby>をセット）ゲート<ruby>追加<rt>ついか</rt></ruby><ruby>修正<rt>しゅうせい</rt></ruby>が<ruby>完了<rt>かんりょう</rt></ruby>しました。<ruby>2<rt>に</rt></ruby><ruby>回目<rt>かいめ</rt></ruby>のトライアルをお<ruby>願<rt>ねが</rt></ruby>いします。<br>*(Lắp khuôn đã sửa. Bổ sung gate đã xong. Mong anh cho bắn thử lần 2.)* |
| Operator | <ruby>条件<rt>じょうけん</rt></ruby>は<ruby>前回<rt>ぜんかい</rt></ruby>と<ruby>同<rt>おな</rt></ruby>じですか？<br>*(Điều kiện giống lần trước chứ?)* |
| Thái | はい、<ruby>樹脂<rt>じゅし</rt></ruby><ruby>温度<rt>おんど</rt></ruby>と<ruby>圧力<rt>あつりょく</rt></ruby>は<ruby>変<rt>か</rt></ruby>えません。ゲートの<ruby>変更<rt>へんこう</rt></ruby>だけです。<br>*(Vâng, không đổi nhiệt độ nhựa và áp suất. Chỉ thay đổi gate.)* |
| Operator | <ruby>了解<rt>りょうかい</rt></ruby>。<ruby>射出<rt>しゃしゅつ</rt></ruby>します。<br>*(Hiểu rồi. Bắn nhé.)* |
| Thái | （<ruby>製品<rt>せいひん</rt></ruby>を<ruby>取<rt>と</rt></ruby>り<ruby>出<rt>だ</rt></ruby>して<ruby>確認<rt>かくにん</rt></ruby>）…ウェルドラインが<ruby>消<rt>き</rt></ruby>えました！<br>*(Lấy sản phẩm kiểm tra. ... Weldline biến mất rồi!)* |
| Kawakami | （<ruby>覗<rt>のぞ</rt></ruby>き<ruby>込<rt>こ</rt></ruby>む）<ruby>表面<rt>ひょうめん</rt></ruby>もきれいだな。<ruby>反<rt>そ</rt></ruby>りは？<br>*(Liếc xem. Bề mặt cũng đẹp đấy. Còn warpage?)* |
| Thái | <ruby>測定<rt>そくてい</rt></ruby>します。（<ruby>三<rt>さん</rt></ruby><ruby>次元<rt>じげん</rt></ruby><ruby>測定<rt>そくてい</rt></ruby><ruby>機<rt>き</rt></ruby>で<ruby>確認<rt>かくにん</rt></ruby>）…<ruby>反<rt>そ</rt></ruby>りは0.18<ruby>ミリ<rt>みり</rt></ruby>です！<ruby>許容<rt>きょよう</rt></ruby><ruby>値<rt>ち</rt></ruby><ruby>以内<rt>いない</rt></ruby>です。<br>*(Em đo nhé. Đo bằng máy 3D. ... Warpage 0.18mm! Trong giá trị cho phép.)* |
| Kawakami | <ruby>合格<rt>ごうかく</rt></ruby>だ！よくやった。<br>*(Đạt rồi! Cậu làm tốt lắm.)* |
| Thái | （<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。<ruby>桜井<rt>さくらい</rt></ruby><ruby>先輩<rt>せんぱい</rt></ruby>のおかげです。<br>*(Cúi đầu. Cảm ơn anh. Nhờ đàn anh Sakurai cả.)* |

---

## Tình huống 8 — Phòng họp 品質保証 · 9/2025 cuối tháng 11:00, báo cáo承認試作 với Hamada

| Vai | Lời thoại |
|---|---|
| Hamada | （サンプルを<ruby>確認<rt>かくにん</rt></ruby>する）<ruby>表面<rt>ひょうめん</rt></ruby>はきれいですね。<ruby>寸法<rt>すんぽう</rt></ruby><ruby>検査<rt>けんさ</rt></ruby><ruby>結果<rt>けっか</rt></ruby>はどうですか？<br>*(Kiểm tra mẫu. Bề mặt đẹp đấy. Kết quả đo kích thước thế nào?)* |
| Thái | <ruby>全<rt>ぜん</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>中<rt>ちゅう</rt></ruby><ruby>30<rt>さんじゅう</rt></ruby><ruby>項目<rt>こうもく</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>です。<ruby>反<rt>そ</rt></ruby>り0.18<ruby>ミリ<rt>みり</rt></ruby>、ウェルドライン<ruby>無<rt>な</rt></ruby>し、<ruby>外観<rt>がいかん</rt></ruby>キズ<ruby>無<rt>な</rt></ruby>しです。<br>*(Toàn bộ 30/30 hạng mục đạt. Warpage 0.18mm, không có weldline, không xước bề mặt.)* |
| Hamada | <ruby>素晴<rt>すば</rt></ruby>らしい。<ruby>承認試作<rt>しょうにんしさく</rt></ruby>はOKとします。<br>*(Tuyệt vời. Tớ duyệt trial chấp thuận.)* |
| Thái | ありがとうございます！<br>*(Em cảm ơn ạ!)* |
| Hamada | グエンさん、よくやりましたね。ただし<ruby>正式<rt>せいしき</rt></ruby><ruby>量産<rt>りょうさん</rt></ruby><ruby>承認<rt>しょうにん</rt></ruby>はPPAPと<ruby>工程<rt>こうてい</rt></ruby><ruby>能力<rt>のうりょく</rt></ruby><ruby>指数<rt>しすう</rt></ruby>Cpkの<ruby>評価<rt>ひょうか</rt></ruby><ruby>後<rt>ご</rt></ruby>、<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月後<rt>かげつご</rt></ruby>になります。<br>*(Anh Nguyễn làm tốt. Tuy nhiên duyệt sản xuất chính thức phải sau khi đánh giá PPAP và chỉ số năng lực công đoạn Cpk, 1 tháng nữa.)* |
| Thái | すみません、Cpkというのは<ruby>具体的<rt>ぐたいてき</rt></ruby>に<ruby>何<rt>なん</rt></ruby>を<ruby>見<rt>み</rt></ruby>る<ruby>指標<rt>しひょう</rt></ruby>ですか？<br>*(Xin lỗi, Cpk cụ thể là chỉ số đánh giá điều gì ạ?)* |
| Hamada | <ruby>量産<rt>りょうさん</rt></ruby>でばらつきがどのくらい<ruby>安定<rt>あんてい</rt></ruby>しているかを<ruby>数値化<rt>すうちか</rt></ruby>したものです。<ruby>1.33<rt>いってんさんさん</rt></ruby><ruby>以上<rt>いじょう</rt></ruby>が<ruby>合格<rt>ごうかく</rt></ruby><ruby>基準<rt>きじゅん</rt></ruby>です。<br>*(Là số hoá độ ổn định của sai lệch khi sản xuất hàng loạt. Trên 1.33 là tiêu chuẩn đạt.)* |
| Thái | <ruby>分<rt>わ</rt></ruby>かりました。<ruby>1<rt>いっ</rt></ruby><ruby>ヶ月<rt>かげつ</rt></ruby>のデータを<ruby>取<rt>と</rt></ruby>って<ruby>提出<rt>ていしゅつ</rt></ruby>します。それから、<ruby>7<rt>しち</rt></ruby><ruby>月<rt>がつ</rt></ruby>のJLPT N2は<ruby>合格<rt>ごうかく</rt></ruby>しました（<ruby>132<rt>ひゃくさんじゅうに</rt></ruby><ruby>点<rt>てん</rt></ruby>）。<br>*(Em rõ. Em sẽ lấy data 1 tháng nộp. Còn nữa, JLPT N2 em thi tháng 7 đã đỗ (132 điểm).)* |
| Hamada | おお、<ruby>素晴<rt>すば</rt></ruby>らしい！<ruby>技術<rt>ぎじゅつ</rt></ruby>も<ruby>日本語<rt>にほんご</rt></ruby>も<ruby>順調<rt>じゅんちょう</rt></ruby>ですね。<br>*(Ồ, tuyệt vời! Cả kỹ thuật và tiếng Nhật đều thuận lợi nhỉ.)* |
| Thái | （<ruby>感激<rt>かんげき</rt></ruby>して<ruby>頭<rt>あたま</rt></ruby>を<ruby>下<rt>さ</rt></ruby>げる）ありがとうございます。これからも<ruby>頑張<rt>がんば</rt></ruby>ります。<br>*(Cảm động cúi đầu. Em cảm ơn ạ. Em sẽ tiếp tục cố gắng.)* |

---

## Tình huống 9 — Phòng 201 ký túc · 9/2025 cuối tháng 22:00, gọi điện báo tin về Việt Nam

> Scene tiếng Việt — giữ mạch nhân vật & gia đình ở quê.

| Vai | Lời thoại |
|---|---|
| Thái | (tiếng Việt) Mai ơi, anh xong rồi. Console box đầu tay đã được Hamada duyệt 承認試作. |
| Mai | (tiếng Việt) Trời ơi, mừng quá anh! Em biết mà, ba tháng anh tăng ca như điên. |
| Thái | (tiếng Việt) Suýt thì hỏng. Lần bắn đầu xuất hiện ウェルドライン — đường hàn nhựa ở góc dưới. Anh sợ tái mặt. |
| Mai | (tiếng Việt) Rồi sửa thế nào? |
| Thái | (tiếng Việt) Anh thêm 2 cái ゲート (cổng phun) thành 3 cái, phân tán dòng nhựa. Bắn lại lần 2 là sạch. Warpage 0.18mm trong khoảng cho phép. |
| Mai | (tiếng Việt) Anh giỏi quá. Mẹ đâu rồi, mẹ ơi! |
| Mẹ Thái | (tiếng Việt, ghé vào) Thái! Mẹ đây. Có chuyện gì đấy con? |
| Thái | (tiếng Việt) Mẹ, con đã làm xong cái khuôn console đầu tiên do con lead. Hôm nay sếp duyệt rồi. Một tháng nữa làm xong PPAP với Cpk là duyệt sản xuất hàng loạt chính thức. |
| Mẹ Thái | (tiếng Việt) Mẹ mừng quá. Sức khoẻ con thế nào? Cái anh đàn anh người Nhật vẫn tốt với con chứ? |
| Thái | (tiếng Việt) Anh Sakurai tốt lắm mẹ. Tháng 8 con tăng ca dữ quá, ảnh bảo "Một cái console không phải cả thế giới đâu, về nghỉ đi". Con cảm động muốn khóc. |
| Mai | (tiếng Việt) Bên này em với mẹ cũng vừa đi đám cưới bạn em. Em cũng đang đợi anh. Visa còn 1 năm là về phải không? |
| Thái | (tiếng Việt) Ừ. Mà N2 anh cũng đỗ rồi, 132 điểm. Hôm nay nói với Hamada-san, ổng vui lắm. |
| Mẹ Thái | (tiếng Việt) Giỏi! Mẹ với Mai đi ngủ. Con cũng ngủ sớm đi nhé. |
| Thái | (tiếng Việt) Vâng mẹ. Con yêu mẹ với em. |

---

## Đọng lại chương 2

Ba tháng cao điểm của lần đầu lead, Thái học được trọn bộ mẫu câu giao tiếp kỹ sư khuôn đúc trung cấp: **báo cáo kết quả mô phỏng** (反りは0.18ミリで許容値以内に収まっています), **xin hỗ trợ đàn anh và thoả thuận 分担** (〜をお願いします・分担を決めよう), **hỏi lại lễ phép khi gặp thuật ngữ mới** (〜というのは?・具体的に何を見る指標ですか?), **báo lỗi sau trial bằng hành động cụ thể** (ウェルドラインが出ています・原因はゲート位置です), **trình bày phương án sửa với cấp trên** (ゲートを2箇所追加して合流点を移します), **nhận lời khuyên chăm sóc sức khoẻ** (無理しないで・休もう・お言葉に甘えさせていただきます), và **đối thoại trang trọng với 品質保証** (承認試作OK・PPAP・Cpk1.33以上が合格基準). Thái thấm bài học: nghề khuôn đúc không phải một mình mà sống — phải biết hỏi, biết nhờ, biết nghỉ. Và ngôn ngữ chuyên ngành chỉ là vỏ; bên trong là văn hoá **報連相** và sự tin cậy giữa đồng nghiệp.

> Từ vựng & mẫu câu chương này: 解析・反り・許容値・水路・冷却・対称・分担・進捗・5軸加工・荒削り・中仕上げ・仕上げ・ビビリ・切削条件・残業・顔色・無理しないで・休もう・射出・樹脂温度・射出圧力・ウェルドライン・ゲート位置・合流点・対策案・修正・承認試作・PPAP・Cpk・量産承認・〜させていただきます・〜というのは・お言葉に甘えさせていただきます・お疲れさまでした

## Bí quyết chương

- **Lead đầu tay**: Console box do Thái lead toàn bộ A→Z — payoff arc kỹ sư của sách 17.
- **Đàn anh chăm sóc**: Sakurai (Nhật, 先輩 CAM) dạy 5軸加工・分担・休もう — pattern "quan sát đàn anh + đàn anh che chở".
- **Lỗi → sửa → đạt**: Pattern điển hình "trial 1 lộ lỗi → phân tích → trial 2 đạt" — dạy cách báo lỗi và đề xuất đối sách bằng tiếng Nhật trang trọng.
- **N2 + lead song hành**: Mốc trưởng thành — payoff cho arc học tiếng từ N4 (sách 14) → N2 (sách 17).

> *"6→9/2025. Ba tháng. Lead đầu tay. Hamada duyệt 承認試作."*
