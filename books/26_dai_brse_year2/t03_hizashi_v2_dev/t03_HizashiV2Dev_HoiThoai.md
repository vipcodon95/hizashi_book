# Sách kỹ sư cầu nối & khởi nghiệp · T3. Sprint 6 tuần v2.0 multi-language

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
| 反応 | はんのう | PHẢN ỨNG | phản ứng |
