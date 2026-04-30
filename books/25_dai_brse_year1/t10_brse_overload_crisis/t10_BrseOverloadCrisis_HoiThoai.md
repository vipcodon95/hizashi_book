# Sách 25 · T10. 12/2030 — Crisis: Thanh Hà urgent + Hizashi 1500 user → burnout warning (過労危機)

> **Mục tiêu:** 12/2030. Sau v1.0 launch tháng 11, user growth 187→500→1500 trong 6 tuần. MRR ¥548k → ¥1.5M (target năm đạt sớm 1 tháng). Cùng lúc Thanh Hà NTT Smart Solutions Tokyo crisis: dev VN team 1 thành viên ốm 2 tuần, deadline 31/12 risk. Đại bị overload 80h/tuần. Mai+Tuấn+Aiko force boundaries. Đại học burnout management.

## Bối cảnh

- 5/12/2030 thứ Năm
- Hizashi MRR ¥1.5M (1500 paid user × ¥980), runway tăng từ 18m → 24m (positive cash flow tháng đầu!)
- NTT Smart Solutions project status: 70% xong, deadline 31/12 (mid-review)
- Dev VN team Cần (28t) ốm cúm 2 tuần — 1/4 backend dev gone
- Đại weekday 9-18 BD BrSE + tối Hizashi + cuối tuần Hizashi → 80h/tuần

---

## Scene 1 — Thứ Hai sáng standup Thanh Hà · 9:00

| Speaker | Lời thoại |
|---|---|
| Tanaka (PM) | (mặt căng thẳng) グエンさん、NTT Smart Solutions<ruby>案件<rt>あんけん</rt></ruby>で<ruby>緊急事態<rt>きんきゅうじたい</rt></ruby>が<ruby>発生<rt>はっせい</rt></ruby>しました。<br>*(Đại, dự án NTT Smart Solutions vừa phát sinh tình huống khẩn cấp.)* |
| Đại | (lo) どうされましたか?<br>*(Có chuyện gì vậy ạ?)* |
| Tanaka | <ruby>開発<rt>かいはつ</rt></ruby>チームのカンさんがインフルエンザで2<ruby>週間<rt>しゅうかん</rt></ruby><ruby>休<rt>やす</rt></ruby>むことになりまして、12/31の<ruby>中間<rt>ちゅうかん</rt></ruby>レビュー<ruby>遅延<rt>ちえん</rt></ruby>リスクが<ruby>高<rt>たか</rt></ruby>いです。<br>*(Anh Cần bên đội dev nhiễm cúm phải nghỉ 2 tuần, kỳ đánh giá giữa kỳ 31/12 đang có nguy cơ trễ cao.)* |
| Đại | (internal VN) Crisis. Cần là người write Knowledge Base RAG core. Replace không dễ.<br>*(Crisis.)* |
| Tanaka | <ruby>当社<rt>とうしゃ</rt></ruby>からの<ruby>追加<rt>ついか</rt></ruby><ruby>支援案<rt>しえんあん</rt></ruby>は2つあります。<br>1. <ruby>他<rt>た</rt></ruby>プロジェクトからシニアバックエンドを1<ruby>名<rt>めい</rt></ruby><ruby>移籍<rt>いせき</rt></ruby>させる<br>2. グエンさんに<ruby>技術<rt>ぎじゅつ</rt></ruby>サポートとして<ruby>現場<rt>げんば</rt></ruby>に<ruby>入<rt>はい</rt></ruby>っていただく<br>*(2 phương án.)* |
| Đại | (nghĩ thầm VN) Phương án 2 nghĩa là mình phải code Python/RAG hỗ trợ. Mình làm được nhưng tốn thêm 2-3 ngày/tuần. Hizashi sẽ bị ảnh hưởng.<br>*(Đánh đổi.)* |
| Đại | (JP) <ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>両方<rt>りょうほう</rt></ruby>の<ruby>案<rt>あん</rt></ruby>で<ruby>進<rt>すす</rt></ruby>めましょう。<ruby>来週<rt>らいしゅう</rt></ruby>から<ruby>木曜<rt>もくよう</rt></ruby>と<ruby>金曜<rt>きんよう</rt></ruby>も<ruby>追加<rt>ついか</rt></ruby>で<ruby>勤務<rt>きんむ</rt></ruby>いたします。<br>*(Em hiểu rồi ạ. Mình triển khai cả 2 phương án luôn. Từ tuần sau em sẽ làm thêm cả Thứ Năm và Thứ Sáu.)* |

---

## Scene 2 — Tối Hizashi standup · Thứ Hai 21:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, mệt) Anh chị! Em báo tin xấu đây. Thanh Hà bên NTT đang khủng hoảng. Tuần tới em phải làm 5 ngày/tuần ở Thanh Hà. Hizashi em giảm còn 2 ngày + buổi tối.<br>*(Giảm.)* |
| Tuấn | (VN, lo) Em sao thế? Mặt em mệt rũ rồi.<br>*(Mặt mệt.)* |
| Đại | (VN) Em ổn anh ơi! Đang adrenaline. 2 tuần thôi.<br>*(2 tuần.)* |
| Aiko | (JP+VN) Đại-kun ơi, em ngủ mấy giờ?<br>*(Mấy giờ?)* |
| Đại | (VN, thật thà) 1-2 giờ sáng. Dậy 6h.<br>*(4-5h.)* |
| Tuấn | (VN, gay gắt) Không được. Ngủ 4-5h × 2 tuần = 過労 100%. Anh không cho phép đâu.<br>*(Không.)* |
| Đại | (VN) Anh ơi, Hizashi đang tăng trưởng tốt. Em không thể giảm được.<br>*(Không thể.)* |
| Tuấn | Em phải giảm. Anh và Aiko sẽ gánh thêm phần Hizashi. Em chỉ làm Thanh Hà 5 ngày + Hizashi cuối tuần thôi. Tối em phải ngủ đủ 7 tiếng.<br>*(Ngủ 7h.)* |

---

## Scene 3 — Mai phát hiện Đại mệt · Thứ Tư 23:30

| Speaker | Lời thoại |
|---|---|
| Mai | (VN, đợi Đại về 23:30) Anh ơi! Mặt anh xanh rồi này.<br>*(Xanh.)* |
| Đại | (VN, ngồi sofa) Mệt quá em ơi. NTT khủng hoảng + Hizashi tăng trưởng + BrSE BD pipeline. Ba ngọn lửa cùng lúc.<br>*(Ba lửa.)* |
| Mai | (VN, sờ trán) Sốt nhẹ rồi! 37.8°C. Mai anh phải nghỉ.<br>*(Sốt.)* |
| Đại | (VN) Không được em ơi! Mai có cuộc họp khách hàng ở Tokyo.<br>*(Không.)* |
| Mai | (VN, kiên quyết) Anh nghe em này. Anh ốm, có làm gì cũng không nên hồn. Nghỉ một ngày bây giờ là cứu cả tháng tới đấy. Em email cho anh Tanaka xin dời lịch.<br>*(Em email.)* |
| Đại | (VN, gật yếu) Ừ em. Em nói đúng.<br>*(Đúng.)* |
| Mai | (VN) Anh đi tắm rồi đi ngủ đi. Sáng mai dậy là em báo anh Tanaka xong rồi.<br>*(Báo.)* |

---

## Scene 4 — Thứ Năm sáng forced rest · 9:00

| Speaker | Lời thoại |
|---|---|
| Đại | (dậy 9:00, sốt 37.5) Em ơi! Mấy giờ rồi?<br>*(Mấy giờ?)* |
| Mai | (VN) 9 giờ rồi. Sáng em email cho anh Tanaka rồi. Anh ấy trả lời hiểu, dời cuộc họp Tokyo sang Thứ Hai. Anh nghỉ hôm nay với Thứ Sáu nhé.<br>*(Nghỉ 2 ngày.)* |
| Đại | (LINE Tuấn) Anh ơi! Em sốt 37.5. Mai bắt em nghỉ 2 ngày.<br>*(2 ngày.)* |
| Tuấn | (LINE) Tốt. Cuối cùng cũng chịu nghỉ. Anh và Aiko gánh phần Hizashi. Em ngủ + đọc sách + xem phim với Hana đi.<br>*(Gánh.)* |
| Aiko | (LINE JP) お<ruby>大事<rt>だいじ</rt></ruby>にしてね!ゆっくり<ruby>休<rt>やす</rt></ruby>んでください。<br>*(Giữ sức nhé! Em nghỉ ngơi cho khoẻ vào.)* |
| Mai | (VN) Em nấu cháo gà với pha nước cam rồi. Anh ăn xong rồi nằm sofa với Hana.<br>*(Cháo.)* |
| Hana | (24 tháng, đến cạnh) Bố ốm hả? Hana xoa lưng cho bố nhé?<br>*(Xoa.)* |
| Đại | (cười yếu) Trời ơi con! Cảm ơn con gái bố.<br>*(Cảm ơn.)* |

---

## Scene 5 — Mai weekend recovery + reflection · Thứ Bảy 14/12

| Speaker | Lời thoại |
|---|---|
| Đại | (đã khoẻ, sốt giảm) Em ơi! Anh khoẻ lại rồi. Cuối tuần này anh không động vào laptop.<br>*(Không laptop.)* |
| Mai | (VN, đi công viên với Đại+Hana) Anh ơi! Em muốn nói chuyện một chút.<br>*(Nói chuyện.)* |
| Đại | (VN) Ừ em nói đi.<br>*(Vâng.)* |
| Mai | (VN) Em quan sát anh 6 tuần qua. Sau khi v1.0 launch xong, anh tăng tốc chứ không giảm. 80h/tuần × 4 tuần = dấu hiệu 過労 rõ rồi.<br>*(Dấu hiệu.)* |
| Đại | (VN, lắng nghe) Ừ em. Em nói đúng.<br>*(Đúng.)* |
| Mai | (VN) Hizashi là giấc mơ. Nhưng giấc mơ chẳng có nghĩa lý gì nếu anh gục. Em với Hana cần anh khoẻ và ở bên cạnh, chứ không phải anh giàu mà vắng nhà.<br>*(Ở bên.)* |
| Đại | (VN, cảm động) Em ơi. Cảm ơn em. Anh hứa với em:<br>1. Tối thiểu 7 tiếng ngủ mỗi đêm<br>2. Chủ Nhật không động vào laptop<br>3. Sáng Thứ Ba và Thứ Năm ở nhà với Hana<br>4. Nghỉ Thanh Hà sau khi xong NTT 31/12 nếu Hizashi MRR ≥ ¥1.5M<br>*(Hứa.)* |
| Mai | (VN) Em đồng ý. Nghỉ Thanh Hà là đúng đắn vì giờ Hizashi đã đủ lo cho gia đình.<br>*(Nghỉ.)* |

---

## Scene 6 — Tuần sau Đại trở lại · Thứ Hai 16/12 9:00

| Speaker | Lời thoại |
|---|---|
| Tanaka | (Slack) グエンさん、お<ruby>体<rt>からだ</rt></ruby>の<ruby>調子<rt>ちょうし</rt></ruby>はいかがですか?ゆっくり<ruby>休<rt>やす</rt></ruby>めましたか?<br>*(Đại, sức khoẻ thế nào rồi? Em nghỉ ngơi tử tế chưa?)* |
| Đại | (Slack) はい、おかげさまで<ruby>回復<rt>かいふく</rt></ruby>しました。<ruby>妻<rt>つま</rt></ruby>に<ruby>強制<rt>きょうせい</rt></ruby><ruby>休暇<rt>きゅうか</rt></ruby>を<ruby>取<rt>と</rt></ruby>らされまして(笑)、ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけしました。<br>*(Vâng, em hồi phục rồi ạ. Vợ ép em nghỉ luôn (cười). Để anh phải bận tâm thật xin lỗi.)* |
| Tanaka | (JP) いえいえ、それは<ruby>良<rt>よ</rt></ruby>いことです。NTTプロジェクトの<ruby>件<rt>けん</rt></ruby>ですが、シニアバックエンドの<ruby>佐藤<rt>さとう</rt></ruby>さんが<ruby>合流<rt>ごうりゅう</rt></ruby>してくれました。グエンさんは<ruby>木曜<rt>もくよう</rt></ruby>と<ruby>金曜<rt>きんよう</rt></ruby>の<ruby>追加<rt>ついか</rt></ruby><ruby>勤務<rt>きんむ</rt></ruby>は<ruby>不要<rt>ふよう</rt></ruby>になりました。<br>*(Không sao, vợ ép nghỉ là tốt mà. Về chuyện dự án NTT, anh Sato senior backend đã sang hỗ trợ rồi. Đại không cần làm thêm Thứ Năm Thứ Sáu nữa.)* |
| Đại | (nghĩ thầm VN) Tuyệt vời! Quay lại 3 ngày/tuần BD, Hizashi quay lại 4 ngày/tuần.<br>*(Tuyệt.)* |

---

## Scene 7 — Hizashi MRR check · Cuối tháng 12 31/12

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, dashboard) Cuối năm 2030 stats:<br>- Total user: 8,200<br>- Paid user: 1,547<br>- MRR: ¥1,516,060 (~¥1.5M ✓ TARGET ACHIEVED)<br>- Churn: 4.2%/month<br>- LTV: ¥23,600<br>- CAC: ¥850<br>- LTV/CAC: 27.7x (excellent)<br>*(Stats.)* |
| Tuấn | (VN) MRR ¥1.5M × 12 = ARR ¥18M. Cover 100% burn rate.<br>*(100%.)* |
| Aiko | (JP) <ruby>素晴<rt>すば</rt></ruby>らしい!ついに<ruby>黒字<rt>くろじ</rt></ruby>!<br>*(Tuyệt vời! Cuối cùng cũng có lãi!)* |
| Đại | (VN) Em đã hứa với Mai rồi: nếu cuối năm MRR ≥ ¥1.5M, em sẽ nghỉ Thanh Hà để chuyển sang Hizashi full-time.<br>*(Nghỉ.)* |
| Tuấn | (VN) Em nghỉ khi nào?<br>*(Khi nào?)* |
| Đại | (VN) Sau Tết Tây 2031. Tháng 1 em báo anh Tanaka. Tháng 2-3 bàn giao. Tháng 4 nghỉ chính thức rồi Hizashi full-time.<br>*(Kế hoạch.)* |

---

## Scene 8 — Tối 31/12 NYE family · 22:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, ăn cơm gia đình + Tony+Yumi sang chơi) Cả nhà ơi! 2030 là một năm đẹp.<br>*(Đẹp.)* |
| Tony | (VN lơ lớ) Đại ơi! Hizashi v1.0 ra mắt + MRR ¥1.5M! Tony với Yumi tự hào lắm!<br>*(Tự hào.)* |
| Mai | (VN, ôm Hana) Hana ơi! Năm sau con có em chưa nhỉ?<br>*(Em chưa?)* |
| Hana | (cười) Em! Hana có em!<br>*(Em.)* |
| Đại | (VN, ôm Mai) Em ơi! Kế hoạch 2031:<br>- Nghỉ Thanh Hà 4/2031<br>- Hizashi full-time<br>- Mai có thai bé 2 đầu 2031<br>- Hizashi v2.0 + Series A<br>*(Kế hoạch 2031.)* |
| Mai | (VN, hôn) Anh ơi. Cuộc đời mình thật tươi đẹp. Cảm ơn anh đã lắng nghe em và lo cho gia đình.<br>*(Lắng nghe.)* |
| Yumi | (JP) ハッピーニューイヤー!みんなで<ruby>良<rt>よ</rt></ruby>い<ruby>年<rt>とし</rt></ruby>にしようね!<br>*(Chúc mừng năm mới! Cả nhà cùng nhau làm nên một năm thật đẹp nhé!)* |

---

## Scene 9 — Reflect cá nhân · 23:30

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) **Tóm tắt cuối năm 2030**:<br>- BrSE intern → BD BrSE 3 ngày/tuần<br>- Hizashi v0.7 → v1.0 launch (PH #1, TechCrunch JP)<br>- 1547 paid user, MRR ¥1.5M (đạt mục tiêu!)<br>- 過労 crisis 12/2030 → bị ép nghỉ 2 ngày → hồi phục + đặt 境界線<br>- Mai bắt reset = cứu tinh<br>- 4 lời hứa với Mai: ngủ 7h / Chủ Nhật không laptop / sáng Thứ Ba+Năm ở nhà / nghỉ Thanh Hà nếu MRR ≥ ¥1.5M ✓<br>- Kế hoạch 2031: Nghỉ Thanh Hà + Hizashi full-time + Series A + bé 2<br>*(Khép năm.)* |
| Đại | (VN) Bài học rút ra:<br>1. Tăng trưởng không phải zero-sum với sức khoẻ. Khoẻ thì tăng trưởng mới bền vững<br>2. Co-founder + bạn đời = phanh khẩn cấp khi mình mù quáng<br>3. Lời hứa + cam kết không có nghĩa là cứng nhắc. Phải linh hoạt theo thực tế<br>4. Nghỉ Thanh Hà là chương tiếp theo, không phải thất bại. Ngược lại — Thanh Hà là một ngôi trường tuyệt vời suốt 12 tháng<br>*(Bài học.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 過労 | かろう | Overwork |
| バーンアウト | バーンアウト | Burnout |
| 強制休暇 | きょうせいきゅうか | Forced rest |
| インフルエンザ | インフルエンザ | Influenza |
| 緊急事態 | きんきゅうじたい | Emergency |
| 移籍 | いせき | Transfer (staff) |
| 中間レビュー | ちゅうかんレビュー | Mid review |
| 黒字 | くろじ | Profitable (positive cash flow) |
| LTV | エルティーブイ | Lifetime Value |
| CAC | キャック | Customer Acquisition Cost |
| Churn | チャーン | Churn rate |

## Bí quyết chương

- **Crisis trifecta**: Thanh Hà urgent + Hizashi growth + BD pipeline → 80h/tuần 過労 (burnout)
- **Mai = phanh khẩn cấp**: Vợ phát hiện sớm hơn co-founder + ép nghỉ
- **4 lời hứa 境界線 (boundary)**: ngủ 7h / Chủ Nhật không laptop / sáng Thứ Ba+Năm ở nhà / nghỉ Thanh Hà nếu MRR ≥ target
- **MRR ¥1.5M = profitable threshold**: Cover 100% burn → quit day job sustainable
- **LTV/CAC 27.7x**: Excellent SaaS unit economics threshold (>3x = healthy, >10x = exceptional)

> *"Crisis 12/2030. Burnout signal. Mai forced rest 2 ngày → recovery. 4 boundary promises. MRR ¥1.5M target achieved cuối năm. Quit Thanh Hà 4/2031 plan. 2031 = full-time Hizashi + bé 2 + Series A."*
