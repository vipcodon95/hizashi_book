# Sách 25 · T4. 6/2030 — Hizashi v0.8 → v0.9 iterate + 200 user paid (反復開発)

> **Mục tiêu:** 6/2030. Hizashi iterate v0.7 → v0.8 → v0.9 trong 1 tháng. User feedback driven. Chuyển BGE-M3 embedding (T3 decision). Thêm dark mode + offline mode + spaced repetition tuning. Paid user 30 → 200 (¥980/tháng × 200 = MRR ¥196k). Đại BrSE Thanh Hà song song — leader Thanh giao project mới Tokyo client (chuẩn bị T5).

## Bối cảnh

- WeWork Umeda 23F, tuần thứ 8 sau khi Hizashi setup
- Tuấn full-time đẩy backend; Aiko part-time UI
- Đại weekday tối + cuối tuần dồn vào Hizashi
- Hana 22 tháng đi 保育園 ổn định, Mai làm tour guide 3 buổi/tuần (¥120k/tháng)

---

## Scene 1 — Sáng thứ Bảy 9:00 WeWork

| Speaker | Lời thoại |
|---|---|
| Đại | (VN) Anh chị, hôm nay mình họp sprint planning v0.8 nhé. Mục tiêu: 5 tính năng chính.<br>*(Sprint.)* |
| Tuấn | (VN) OK em. Anh đề xuất:<br>1. Chuyển embedding sang BGE-M3<br>2. Dark mode<br>3. Chế độ offline (tải bài học về máy)<br>4. Tinh chỉnh SRS (kiểu Anki 4 mốc thời gian)<br>5. Push notification nhắc học hằng ngày<br>*(5 features.)* |
| Aiko | (JP+VN) Em sẽ thiết kế design tokens dark mode, luồng UI chế độ offline và icon push notification.<br>*(Design.)* |
| Đại | (VN) OK. Em sẽ làm migration BGE-M3 và tinh chỉnh SRS. Tuấn full-time backend và push notif.<br>*(Split.)* |
| Tuấn | (VN) Hạn ra mắt v0.8: 20/6/2030. 14 ngày. Sprint tuần đầu, polish và QA tuần thứ 2.<br>*(14 days.)* |

---

## Scene 2 — Đại migrate BGE-M3 · 11:00

| Speaker | Lời thoại |
|---|---|
| Đại | (code FastAPI)<br>```python<br>from FlagEmbedding import BGEM3FlagModel<br><br>model = BGEM3FlagModel('BAAI/bge-m3', use_fp16=True)<br><br>async def embed_text(text: str) -> list[float]:<br>    output = model.encode([text], batch_size=12,<br>                          max_length=8192,<br>                          return_dense=True)<br>    return output['dense_vecs'][0].tolist()<br>```<br> |
| Đại | (VN, internal) BGE-M3 chiều = 1024 — khớp với schema pgvector cũ. Không cần tạo lại bảng.<br>*(1024.)* |
| Tuấn | (Slack) Em test latency truy vấn chưa? E5 hiện 80ms.<br>*(Latency.)* |
| Đại | (Slack, sau test) BGE-M3 = 95ms. Chậm hơn 15ms nhưng retrieval +6.5% trên tập test 200 truy vấn.<br>*(95ms.)* |
| Tuấn | OK chấp nhận đánh đổi. Đẩy lên staging đi.<br>*(Push.)* |

---

## Scene 3 — User feedback session · 14:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN) Anh chị! Em đã phỏng vấn 5 user trả phí tuần này. Tổng kết:<br>1. Muốn dark mode (4/5)<br>2. Chế độ offline trên tàu (5/5)<br>3. Push notification nhắc 18:00 hằng ngày (3/5)<br>4. Tương thích iPad mini cho Hana (1/5 — Mai)<br>5. Mở rộng cho người học tiếng Hàn (1/5 — user Hàn Quốc)<br>*(Feedback.)* |
| Aiko | (JP) Mai-san feedback iPad mini! Tốt. Em sẽ test trên iPad mini 8.3 inch.<br>*(iPad.)* |
| Tuấn | (VN) Mở rộng cho người học Hàn để qua năm 2. Tập trung VN-JP cho v1.0.<br>*(Defer.)* |
| Đại | (VN) Đồng ý. v1.0 = hoàn thiện VN-JP, năm 2 mới mở rộng đa ngôn ngữ.<br>*(Roadmap.)* |

---

## Scene 4 — Aiko present dark mode design · 16:00

| Speaker | Lời thoại |
|---|---|
| Aiko | (Figma share) Dark mode tokens:<br>- Background: #0a0a0f (deep navy)<br>- Surface: #16161e<br>- Primary text: #f0f0f5<br>- Accent (Hizashi orange): #ff7b1c<br>- Furigana subtle: #999<br>*(Tokens.)* |
| Đại | (VN) Đẹp! Nền không phải đen tuyền mà xanh navy đậm → không gây mỏi mắt.<br>*(Đẹp.)* |
| Tuấn | (VN) Màu accent orange Hizashi vẫn giữ nhưng đậm hơn ở dark mode. Tương phản tốt.<br>*(Contrast.)* |
| Aiko | (JP) <ruby>明日<rt>あした</rt></ruby>からFlutterで<ruby>実装<rt>じっそう</rt></ruby><ruby>始<rt>はじ</rt></ruby>めます。<ruby>3日<rt>みっか</rt></ruby><ruby>以内<rt>いない</rt></ruby>に<ruby>完成<rt>かんせい</rt></ruby><ruby>予定<rt>よてい</rt></ruby>です。<br>*(Mai bắt đầu implement bằng Flutter. Dự kiến trong vòng 3 ngày sẽ xong.)* |

---

## Scene 5 — Mid-week BrSE update · Thứ Tư 18:30

| Speaker | Lời thoại |
|---|---|
| Đại | (Slack #hizashi standup) Em hôm nay BrSE: anh Thanh giao dự án mới — khách hàng Tokyo công ty con NTT, em chuẩn bị tuần sau bay Tokyo họp khách solo.<br>*(Tokyo.)* |
| Tuấn | (Slack) Khoan. Em — họp khách solo ở Tokyo? Lần đầu! Em chuẩn bị kính ngữ và thuật ngữ kỹ thuật chưa?<br>*(Prep.)* |
| Đại | (Slack) Đang chuẩn bị. Sếp Tanaka cho em mẫu agenda họp và script tiếng Nhật. Em luyện 3 ngày.<br>*(Rehearsal.)* |
| Aiko | (Slack JP) <ruby>頑張<rt>がんば</rt></ruby>って！<ruby>初<rt>はじ</rt></ruby>めてのクライアントミーティングって<ruby>緊張<rt>きんちょう</rt></ruby>するよね。<br>*(Cố lên! Họp khách hàng lần đầu căng thẳng nhỉ.)* |
| Đại | (Slack) Cảm ơn anh chị! Em sẽ ổn.<br>*(OK.)* |

---

## Scene 6 — Cuối tuần v0.8 release · Thứ Bảy 21:00

| Speaker | Lời thoại |
|---|---|
| Tuấn | (VN, terminal) Đang đẩy v0.8 lên TestFlight và Play Store internal.<br>*(Push.)* |
| Đại | (VN) Tình trạng?<br>*(Status?)* |
| Tuấn | iOS TestFlight: APPROVED. Android: đang chờ review.<br>*(Status.)* |
| Aiko | (JP) ベータユーザー<ruby>150名<rt>ひゃくごじゅうめい</rt></ruby>に<ruby>通知<rt>つうち</rt></ruby><ruby>送<rt>おく</rt></ruby>る？<br>*(Gửi thông báo cho 150 beta user nhé?)* |
| Đại | (VN) Vâng. Tiêu đề: "Hizashi v0.8 — Dark mode + Offline + SRS tuning". Em viết song ngữ Nhật-Việt.<br>*(Bilingual.)* |
| Tuấn | (push notification sent) 150 user đã nhận. Trong 1h: 87 user mở app.<br>*(58% open.)* |
| Đại | (VN) Tỷ lệ engagement 58% — tốt!<br>*(58%.)* |

---

## Scene 7 — User feedback flow in · Sunday 11:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, đọc Notion feedback log) 24h sau khi ra mắt v0.8:<br>- 92% user dùng dark mode<br>- 76% tải bài học offline (trung bình 4.2 bài/user)<br>- 45% bật push notification<br>- 3 bug được báo (1 critical: bug reset SRS trên iOS — Tuấn sửa trong 4h)<br>*(Stats.)* |
| Đại | (VN) User trả phí tăng từ 30 → 78 trong 1 tuần. Dark mode là killer feature!<br>*(78.)* |
| Tuấn | (VN) MRR: 78 × ¥980 = ¥76.440. Còn xa mục tiêu ¥1.5M nhưng tăng trưởng 160% so với tuần trước!<br>*(Growth.)* |
| Aiko | (JP) <ruby>順調<rt>じゅんちょう</rt></ruby>だね。v0.9とv1.0で<ruby>更<rt>さら</rt></ruby>に<ruby>伸<rt>の</rt></ruby>ばそう！<br>*(Suôn sẻ nhỉ. v0.9 và v1.0 sẽ tăng trưởng tiếp!)* |

---

## Scene 8 — Đại reflect tối Chủ nhật · 22:00

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, nhật ký) **Sprint v0.8 thành công**:<br>- 5 tính năng ship đúng hạn (BGE-M3, dark mode, offline, SRS, push notif)<br>- User trả phí 30→78 (160% so với tuần trước)<br>- 3 bug (1 critical sửa trong 4h)<br>- Tích hợp feedback iPad mini từ Mai<br>- Nhịp làm việc 3 founder tốt<br>*(Sprint.)* |
| Đại | (VN) Tuần tới: ngày đầu họp khách solo ở Tokyo. Kỹ năng BrSE mới — vùng stretch cá nhân.<br>*(Stretch.)* |
| Đại | (VN) Sprint Hizashi v0.9 kế tiếp: thanh toán in-app qua Stripe, dashboard analytics cho founder, redesign landing page.<br>*(v0.9.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| イテレーション | イテレーション | Iteration |
| スプリント | スプリント | Sprint |
| ダークモード | ダークモード | Dark mode |
| オフライン | オフライン | Offline |
| プッシュ通知 | プッシュつうち | Push notification |
| ステージング | ステージング | Staging environment |
| TestFlight | テストフライト | iOS beta distribution |
| エンゲージメント | エンゲージメント | Engagement rate |
| 有料ユーザー | ゆうりょうユーザー | Paid user |
| 月次収益 | げつじしゅうえき | MRR |

## Bí quyết chương

- **Sprint 14 ngày**: 7 day dev + 7 day polish/QA pattern indie
- **BGE-M3 vs E5**: +6.5% retrieval cho 15ms latency trade-off
- **Dark mode = killer feature** (92% adoption sau release)
- **User feedback driven**: 5 user interview/week → roadmap input
- **MRR growth 160% WoW** (30→78) v0.7→v0.8

> *"Sprint v0.8 ship 5 features. Paid 30→78, MRR ¥76k. Aiko dark mode tokens đẹp. Cohort founder rhythm tốt. Tuần tới Tokyo client meeting solo — stretch zone."*
