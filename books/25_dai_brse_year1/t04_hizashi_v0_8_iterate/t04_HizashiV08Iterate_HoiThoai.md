# Sách kỹ sư cầu nối & khởi nghiệp · T4. Sprint Hizashi v0.8 + chuẩn bị họp khách Tokyo solo

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
| 段取り | だんどり | ĐOẠN THỦ | sự sắp xếp |
