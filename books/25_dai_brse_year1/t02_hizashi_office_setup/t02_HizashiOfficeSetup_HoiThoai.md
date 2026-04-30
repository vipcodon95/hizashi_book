# Sách 25 · T2. 4/2030 — Hizashi WeWork Umeda + standup pattern + Hana 保育園 (Hizashi始動)

> **Mục tiêu:** 4-5/2030. Hizashi Inc setup office WeWork Umeda Tower 23F (¥150k/tháng × 3 desks). Pattern dual-track formed: Đại 9-18 BrSE Thanh Hà → 19-22 Hizashi standup + dev. Tuấn (CTO 28t ex-Mercari) full-time Hizashi. Aiko (Head of Design 23t) M1 Watanabe HCI Lab + Hizashi part-time. Hana 20-21 tháng đi 保育園 Senri-chuo từ 1/4. Burn rate ¥1.5M/tháng (Đại+Tuấn salary + WeWork + AWS + Claude API + misc).

## Bối cảnh

- WeWork Umeda Tower 23F — community Office cho startup
- 3 desks reserved: Đại CEO + Tuấn CTO + Aiko Head of Design
- Đại lương Hizashi ¥150k/tháng (vì còn lương BrSE Thanh Hà ¥280k → tổng ¥430k cá nhân)
- Tuấn lương Hizashi ¥600k/tháng (full-time, vợ Yuna đang chuẩn bị sang Nhật)
- Aiko lương Hizashi ¥150k/tháng part-time (vẫn nhận stipend M1 lab ¥80k)

---

## Scene 1 — WeWork Umeda 23F first day · 4/4/2030 thứ Sáu 19:00

| Speaker | Lời thoại |
|---|---|
| Đại | (vừa từ Thanh Hà sang, vest + cặp) Anh chị! Em đến rồi.<br>*(Đến.)* |
| Tuấn (28t, T-shirt + jeans) | (VN) Em đói chưa? Anh đặt pizza Domino's rồi. 20 phút nữa giao đến.<br>*(Pizza.)* |
| Aiko (23t, hoodie) | (JP+VN mix) Đại-kun ơi! Em vừa cài wifi và màn hình xong. WeWork tốt ghê — máy in, phòng họp đặt qua app luôn.<br>*(WeWork tốt.)* |
| Đại | (VN) Đẹp quá! Nhìn ra Umeda từ tầng 23 luôn. Tuấn ơi, anh đang làm gì rồi?<br>*(View.)* |
| Tuấn | (VN, mở laptop) Anh đang refactor backend FastAPI. Sửa cái lỗi v0.7 user phản ánh TTS lag 2 giây.<br>*(TTS lag.)* |
| Aiko | (JP) UI<ruby>更新中<rt>こうしんちゅう</rt></ruby>。ホーム<ruby>画面<rt>がめん</rt></ruby>のアイコンが<ruby>大<rt>おお</rt></ruby>きすぎたから<ruby>小<rt>ちい</rt></ruby>さくしてる。<br>*(Đang cập nhật giao diện. Icon màn hình chính to quá nên đang làm nhỏ lại.)* |
| Đại | (VN) OK! Em mở laptop ngay.<br>*(Laptop.)* |

---

## Scene 2 — Standup pattern thiết lập · 21:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN) Anh chị ơi, mình lập kiểu standup thế nào? Em ban ngày làm BrSE 9-18, không thể standup buổi sáng được.<br>*(Pattern.)* |
| Tuấn | Đề xuất: standup hằng ngày 21:00-21:15. 3 câu hỏi: 1. Hôm nay làm gì? 2. Mai làm gì? 3. Có vướng gì không?<br>*(3 câu.)* |
| Aiko | (VN broken + JP) Em OK 21:00. Em thường code và design tới 23:00 rồi mới đi ngủ.<br>*(OK.)* |
| Đại | (VN) Em cũng OK. Mai cho Hana ngủ lúc 20:30, em rảnh từ 20:45. Bắt đầu hôm nay luôn nhé.<br>*(Bắt đầu.)* |
| Đại | OK, standup số 1. Em hôm nay: ngày đầu BrSE Thanh Hà — quan sát anh Thanh, đọc tài liệu spec 25 trang tiếng Nhật. Mai: tiếp tục quan sát và bắt đầu dịch spec 5 trang. Vướng mắc: không.<br>*(Standup.)* |
| Tuấn | (VN) Anh hôm nay: refactor backend, sửa TTS lag. Mai: hoàn thiện migration pgvector 1024 chiều. Vướng mắc: cần Đại review quyết định kiến trúc, chọn Voyage AI hay multilingual-e5.<br>*(Voyage.)* |
| Đại | (VN) Cuối tuần em sẽ review. Để vào thread Slack #arch-decisions nhé.<br>*(Slack.)* |
| Aiko | (JP+VN) Em hôm nay: refactor icon UI, thiết kế lại luồng onboarding 3 màn hình. Mai: bắt đầu thiết kế design tokens cho dark mode. Vướng mắc: không.<br>*(Dark mode.)* |
| Đại | (VN) OK! Standup hết 12 phút. Tốt.<br>*(Tốt.)* |

---

## Scene 3 — Hana đi nhà trẻ Senri-chuo Day 1 update · LINE Mai 21:30

| Speaker | Lời thoại |
|---|---|
| Mai | (LINE + ảnh Hana ở 保育園) Anh ơi! Hôm nay Hana ngày đầu đi nhà trẻ. Cô bảo Hana khóc 30 phút sáng nhưng chiều chơi vui với 5 bé khác.<br>*(Day 1 nhà trẻ.)* |
| Đại | (LINE) Trời ơi! Tự hào quá. Ảnh Hana cười kìa! Tay đang cầm đồ chơi gì đó.<br>*(Cười.)* |
| Mai | (LINE) Đó là xe đẩy cho bé tập đi đấy anh. Cô bảo Hana đi liền 5 bước hôm nay.<br>*(5 bước.)* |
| Đại | (LINE) Em nói với cô là sáng mai mình sẽ đến sớm 8:30. Anh muốn gặp cô để cảm ơn.<br>*(Cảm ơn cô.)* |
| Mai | (LINE) Vâng anh.<br>*(Vâng.)* |

---

## Scene 4 — Cost projection brainstorm · 22:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, mở Notion budget) Anh chị, mình rà lại chi phí cuối tháng 4 nhé.<br>*(Cost.)* |
| Đại | Burn rate hiện tại:<br>- Đại salary: ¥150k<br>- Tuấn salary: ¥600k<br>- Aiko salary: ¥150k<br>- WeWork 3 desks: ¥150k<br>- AWS: ¥80k<br>- Claude API: ¥100k<br>- pgvector hosted Supabase: ¥30k<br>- Cloudflare R2: ¥20k<br>- Misc (domain/Notion/Slack/Figma): ¥40k<br><br>**Tổng: ¥1,320,000/tháng**<br> |
| Tuấn | (VN) Pre-seed Anri ¥30M / ¥1.32M = **22.7 tháng runway**. OK!<br>*(22.7m.)* |
| Aiko | (VN broken) Còn doanh thu thì sao anh?<br>*(Revenue.)* |
| Đại | (VN) Hizashi v0.7 hiện 200 user free và 30 user trả phí (giá ¥980/tháng). MRR = ¥29.400. Còn rất nhỏ.<br>*(MRR.)* |
| Đại | Kế hoạch: v1.0 ra mắt tháng 11/2030 → 500 user trong 24h → 1500 user cuối năm 2030 → MRR mục tiêu ¥1.5M.<br>*(Target.)* |
| Tuấn | (VN) MRR ¥1.5M/tháng × 12 = ¥18M/năm. Bù được 60% burn. Sau Series A là ổn.<br>*(60%.)* |

---

## Scene 5 — Pizza arrival + casual chat · 22:30

| Speaker | Lời thoại |
|---|---|
| Tuấn | (VN, mở pizza) Pizza tới rồi! Hawaiian + Quattro Formaggi + cánh gà.<br>*(Pizza.)* |
| Đại | (VN, ăn) Ngon quá! Em đói thật rồi.<br>*(Ngon.)* |
| Aiko | (JP) <ruby>幸<rt>しあわ</rt></ruby>せ！スタートアップらしい<ruby>夜<rt>よる</rt></ruby>だね。<br>*(Hạnh phúc! Đêm đậm chất startup nhỉ.)* |
| Tuấn | (VN, hỏi Đại) Em thế nào? Mệt không? Sáng làm BrSE tối làm Hizashi mệt lắm đấy.<br>*(Mệt.)* |
| Đại | (VN) Em chưa mệt. Hôm nay là ngày đầu, adrenaline cao. Sang tuần 2-3 mới biết được.<br>*(Adrenaline.)* |
| Tuấn | OK. Anh sẽ để mắt giúp em. Nếu thấy em quá tải thì anh đề xuất giảm giờ làm.<br>*(Watch out.)* |
| Đại | (VN) Cảm ơn anh.<br>*(Cảm ơn.)* |
| Aiko | (JP) <ruby>明日<rt>あした</rt></ruby>は<ruby>土曜<rt>どよう</rt></ruby>。ハッカソン<ruby>的<rt>てき</rt></ruby>に<ruby>朝<rt>あさ</rt></ruby>から<ruby>夜<rt>よる</rt></ruby>まで<ruby>集中<rt>しゅうちゅう</rt></ruby>しよう！<br>*(Mai thứ Bảy. Như hackathon từ sáng đến tối tập trung nào!)* |
| Đại | (VN) Em có thể cuối tuần. Mai chăm Hana sáng được — em đến WeWork 9:00.<br>*(9:00.)* |

---

## Scene 6 — Đại về nhà 23:00

| Speaker | Lời thoại |
|---|---|
| Đại | (về apt Senri-chuo, vào nhà) Em ơi! Anh về.<br>*(Về.)* |
| Mai | (VN, đang dỗ Hana ngủ) Sshh anh ơi! Hana mới ngủ.<br>*(Ngủ.)* |
| Đại | (VN, whisper) Xin lỗi em. Hana có ngoan không?<br>*(Ngoan.)* |
| Mai | (VN, whisper) Ngoan lắm. Hana đòi gọi điện cho bố lúc 19:00 nhưng em bảo bố làm việc.<br>*(Đòi gọi.)* |
| Đại | (whisper) Trời ơi. Mai mình sẽ về sớm hơn 1 ngày trong tuần để chơi với con.<br>*(Sớm.)* |
| Mai | (whisper) Vâng anh. Đừng quá sức nhé.<br>*(Đừng quá sức.)* |
| Đại | (whisper, hôn trán Mai + Hana) Cảm ơn em. Anh đi tắm rồi ngủ.<br>*(Cảm ơn.)* |

---

## Scene 7 — Reflect cuối ngày · 23:30

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký Notion) **Ngày 1 dual-track BrSE+Hizashi**:<br>- Sáng-chiều: BrSE Thanh Hà ổn. Sếp Tanaka tử tế. Nhóm 8 BrSE thân thiện.<br>- Tối: Thiết lập kiểu standup Hizashi. Burn rate ¥1.32M/tháng. Runway 22.7 tháng.<br>- Hana ngày đầu nhà trẻ Senri-chuo ổn. Đi được 5 bước.<br>- Mai hỗ trợ 100%.<br>*(Day 1.)* |
| Đại | (VN) Pattern: Sáng 6:30 dậy → 8:00 đi tàu → 9-18 BrSE → 19-23 Hizashi WeWork → về nhà 23:00 → ngủ.<br>*(Pattern.)* |
| Đại | (VN) Mai cuối tuần Hizashi 9-18 toàn thời gian. Chủ Nhật chơi với gia đình.<br>*(Cuối tuần.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 保育園 | ほいくえん | Nhà trẻ (0-5 tuổi) |
| WeWork | ウィーワーク | Coworking space brand |
| スタンドアップ | スタンドアップ | Daily standup meeting |
| ブロッカー | ブロッカー | Blocker (issue cản trở) |
| バーンレート | バーンレート | Burn rate (cost/tháng) |
| ランウェイ | ランウェイ | Runway (số tháng còn lại) |
| MRR | エムアールアール | Monthly Recurring Revenue |
| デイリースタンドアップ | デイリースタンドアップ | Daily standup |
| アーキテクチャ | アーキテクチャ | Architecture decision |

## Bí quyết chương

- **WeWork Umeda 23F**: Office startup standard Osaka — community + flex desks + meeting rooms
- **Standup pattern 21:00**: Daily 15 min, 3 câu hỏi (làm gì hôm nay/mai/blocker)
- **Burn rate ¥1.32M + Runway 22.7m**: Math chuẩn pre-seed startup
- **Pricing ¥980/tháng**: SaaS standard JP cho language learning app
- **Đại lương kép**: ¥280k BrSE + ¥150k Hizashi = ¥430k cá nhân (cover apt + Hana + tiết kiệm)

> *"WeWork Umeda 23F. Standup 21:00 thiết lập. Burn ¥1.32M, runway 22.7 tháng. Hana Day 1 nhà trẻ ngoan. Mai cho con ngủ. Tuấn+Aiko cofounder hết mình. Pattern dual-track formed."*
