# Rule 31 — Phát hiện bug — quy trình Hou-Ren-Sou / バグ発見時

> **Luận điểm.** Bug nghiêm trọng (production down / data corruption / security) là tình huống áp lực đỉnh. Phải có **quy trình leo thang xử lý định trước**: **(1) Phát hiện → ngay** **(2) Slack #incident channel + tag Tuấn (Tech lead)** trong **5 phút**, **(3) Tuấn xác nhận mức độ nghiêm trọng → báo lên Hà CTO** trong **15 phút**, **(4) Hà CTO + Dũng cùng soạn thông báo + báo lên Matsumoto** trong **30 phút**, **(5) Điều tra + ETA** trong **60 phút**, **(6) Khắc phục + phân tích sau sự cố** trong **24h**. Mốc thời gian mỗi bước = SLA của team. Bỏ qua bước = "đi tắt" → bê trễ chuỗi.
>
> インシデント発見時の時間SLA：①検知0分→②Slack #incident + Tech lead 5分→③CTO 15分→④客通知 30分→⑤ETA 60分→⑥解決+post-mortem 24h。各ステップを飛ばすと連鎖遅延。
>
> **Liên quan:** rule 07 (悪い知らせ報告), rule 13 (即時連絡), rule 17 (緊急連絡優先順位).

---

## Bối cảnh / 場面

Thứ Ba 22/4 14:30. Em Hải (DevOps) phát hiện API môi trường thật trả lỗi 500 với tỷ lệ ~30% (khoảng 200 người dùng bị ảnh hưởng). Sự cố nghiêm trọng. So sánh 2 quy trình.

---

## Hội thoại XẤU — bypass + 1 mình điều tra

*14:30 · 14:50, 20分後 · 15:30, 1時間後、Slack*

| Vai | Câu |
|---------|-----|
| **ハイ** | (1人で) 「あれ、エラー多いな…とりあえずログ見てみよう…」 <br/>*(một mình) Ơ, error nhiều thật... để mình xem log đã...* |
|  | 「うーん、<ruby>原因<rt>げんいん</rt></ruby>分からない…とりあえずもう少し<ruby>調<rt>しら</rt></ruby>べよう…」 <br/>*Ờm, chưa tìm ra nguyên nhân... để xem thêm chút...* |
|  | 「@トゥアン、production API がエラー多いんですけど…」 <br/>*@anh Tuấn, production API đang nhiều error ạ...* |
| **トゥアン** | 「**なんで1時間も<ruby>黙<rt>だま</rt></ruby>ってた!?** <ruby>客<rt>きゃく</rt></ruby>に<ruby>既<rt>すで</rt></ruby>に Twitter で<ruby>晒<rt>さら</rt></ruby>されてるよ。フローを<ruby>守<rt>まも</rt></ruby>って: <ruby>検知<rt>けんち</rt></ruby>5分<ruby>以内<rt>いない</rt></ruby>に #incident チャネル<ruby>投稿<rt>とうこう</rt></ruby>。1人で<ruby>抱<rt>かか</rt></ruby>え込むな。」 <br/>*Sao em im 1 tiếng vậy!? Khách đã đăng trên Twitter rồi. Tuân quy trình đi: phát hiện trong 5 phút phải post #incident channel. Đừng tự ôm.* |

**Vì sao xấu:** L1 1 mình điều tra 1 giờ — sự cố nghiêm trọng trên production không phải để 1 người tự thử. L3 sau 1 tiếng = đã có khách phàn nàn trên mạng xã hội. L4 chỉ ra: tốc độ quan trọng hơn sự tự tin kiểu "cứ tự xử".

---

## Hội thoại TỐT — chuỗi leo thang theo SLA

*14:30, Slack #incident · 14:35 · 14:45 · 15:00, Slack 客先 + Email · 15:05 · 15:25, Slack #incident · 15:30, メール*

| Vai | Câu |
|---------|-----|
| **ハイ** | 「 **【Incident #INC-2026-0422-01】** <ruby>検知<rt>けんち</rt></ruby><ruby>時刻<rt>じこく</rt></ruby>: 14:30 / <ruby>影響<rt>えいきょう</rt></ruby>: production API、500 error率約30% / <ruby>推定<rt>すいてい</rt></ruby>影響ユーザー: 200名 / 検知<ruby>者<rt>しゃ</rt></ruby>: ハイ / <ruby>現在<rt>げんざい</rt></ruby>: ログ<ruby>確認<rt>かくにん</rt></ruby>中。**@tuan_leader 確認お<ruby>願<rt>ねが</rt></ruby>いします**【1】。」 <br/>*[Sự cố #INC-2026-0422-01] Phát hiện: 14:30 / Ảnh hưởng: production API, tỉ lệ lỗi ~30% / Ước tính người dùng bị: 200 / Người phát hiện: Hải / Hiện tại: đang kiểm tra log. @anh Tuấn xác nhận giúp em ạ.* |
| **トゥアン** | 「確認、severity Sev1 (critical)。**@ha_cto エスカレーション**します。ハイは<ruby>継続<rt>けいぞく</rt></ruby><ruby>調査<rt>ちょうさ</rt></ruby>、ズン<ruby>待機<rt>たいき</rt></ruby>して<ruby>顧客<rt>こきゃく</rt></ruby><ruby>通知<rt>つうち</rt></ruby><ruby>準備<rt>じゅんび</rt></ruby>【2】。」 <br/>*Xác nhận, mức Sev1 (nghiêm trọng). @anh Hà CTO em leo thang lên. Hải tiếp tục điều tra, Dũng chờ chuẩn bị thông báo khách.* |
| **ハーCTO** | 「Sev1 確認。**ズン、<ruby>松本<rt>まつもと</rt></ruby>様への<ruby>第一報<rt>だいいっぽう</rt></ruby>を 15:00 までに**。<ruby>内容<rt>ないよう</rt></ruby>:<ruby>発生<rt>はっせい</rt></ruby><ruby>事実<rt>じじつ</rt></ruby> + <ruby>影響<rt>えいきょう</rt></ruby><ruby>範囲<rt>はんい</rt></ruby> + 調査中のステータス + ETA は 15:30 までに<ruby>別途<rt>べっと</rt></ruby>【3】。」 <br/>*Xác nhận Sev1. Dũng, gửi báo cáo đầu cho anh Matsumoto trước 15:00. Nội dung: sự thật xảy ra + phạm vi ảnh hưởng + đang điều tra + ETA báo riêng trước 15:30.* |
| **ズン** | 「松本様、<ruby>緊急<rt>きんきゅう</rt></ruby>ご連絡となり<ruby>恐縮<rt>きょうしゅく</rt></ruby>です。**14:30 頃から production API で<ruby>一部<rt>いちぶ</rt></ruby><ruby>障害<rt>しょうがい</rt></ruby>が発生**しております。影響:ログイン後の<ruby>検索<rt>けんさく</rt></ruby><ruby>画面<rt>がめん</rt></ruby>の一部<ruby>機能<rt>きのう</rt></ruby>、推定 200 名【4】。**現在ティエンファット<ruby>技術<rt>ぎじゅつ</rt></ruby>チームで調査中**、ETA は 15:30 までに別途ご報告いたします。<ruby>誠<rt>まこと</rt></ruby>に申し<ruby>訳<rt>わけ</rt></ruby>ございません【5】。」 <br/>*Anh Matsumoto, em xin lỗi liên lạc gấp. Từ 14:30 production API có sự cố một phần. Ảnh hưởng: 1 phần chức năng màn hình search sau khi login, ước tính 200 người. Hiện team kỹ thuật Thiên Phát đang điều tra, ETA em sẽ báo riêng trước 15:30. Em thực sự xin lỗi anh ạ.* |
| **松本PM** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。ETA をお待ちします。<ruby>当方<rt>とうほう</rt></ruby>からも<ruby>社内<rt>しゃない</rt></ruby>に<ruby>共有<rt>きょうゆう</rt></ruby>します。」 <br/>*Tôi hiểu rồi. Tôi đợi ETA. Bên tôi cũng share nội bộ.* |
| **ハイ** | 「原因: 14:00 デプロイの DB index に conflict。rollback <ruby>手順<rt>てじゅん</rt></ruby>準備<ruby>完了<rt>かんりょう</rt></ruby>、15:30 <ruby>実施<rt>じっし</rt></ruby>で<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>見込<rt>みこ</rt></ruby>み。」 <br/>*Nguyên nhân: index DB của đợt triển khai 14:00 có xung đột. Đã chuẩn bị xong quy trình khôi phục, thực thi 15:30 dự kiến phục hồi.* |
| **ズン** | 「松本様、**ETA ご報告**: 15:30〜15:45 で rollback 実施、15:45 復旧見込み。原因:本日デプロイの index <ruby>変更<rt>へんこう</rt></ruby>が<ruby>想定外<rt>そうていがい</rt></ruby>の lock を発生。<ruby>詳細<rt>しょうさい</rt></ruby>は復旧後 24時間<ruby>以内<rt>いない</rt></ruby>に Post-mortem レポートをお<ruby>送<rt>おく</rt></ruby>りいたします【6】。」 <br/>*Anh Matsumoto, [Báo thời gian dự kiến] 15:30-15:45 thực thi khôi phục, 15:45 dự kiến ổn định. Nguyên nhân: thay đổi index của đợt triển khai hôm nay gây lock ngoài dự tính. Chi tiết em sẽ gửi báo cáo phân tích sau sự cố trong vòng 24h sau khi khôi phục ạ.* |

📝 **Ghi chú:**
- 【1】**SLA 5 phút: Slack #incident + tag Tech lead** — không làm 1 mình. Có dấu thời gian + ước tính mức độ nghiêm trọng ban đầu.
- 【2】**SLA 15 phút: Tech lead → CTO** — anh Tuấn không chần chừ, báo lên CTO ngay.
- 【3】**SLA 30 phút: CTO phân vai liên lạc với khách** — Hà CTO không tự đi báo khách, để Dũng (chủ trì BD) xử lý theo định hướng.
- 【4】**Báo cáo đầu = thông tin ngắn + mức ảnh hưởng** — không nói nguyên nhân (chưa biết). Chỉ "発生事実 + 影響範囲".
- 【5】**「現在調査中、ETA は別途」** — không hứa thời gian khi chưa biết. Tránh hứa kép sai lần hai.
- 【6】**Phân tích sau sự cố 24h** — quy tắc cuối: viết bản phân tích sau sự cố (5 Whys, hạng mục hành động) trong 24 giờ. Khách Nhật rất coi trọng.

---

## ⏱ Bảng SLA theo thời gian

```
T+0 phút    Detect
T+5 phút    Slack #incident + tag Tech lead       (Hải)
T+15 phút   Tech lead → báo lên CTO               (Tuấn)
T+30 phút   CTO + BD draft 客先 第一報           (Hà + Dũng)
T+60 phút   ETA + nguyên nhân ban đầu gửi khách    (Dũng)
T+resolved  復旧通知                              (Dũng)
T+24h       Post-mortem report                    (Tuấn + Hà CTO)
```

---

## Câu chốt

> **「Sev1 incident は1人で<ruby>抱<rt>かか</rt></ruby>え込まない。5分→15分→30分→60分の SLA を<ruby>守<rt>まも</rt></ruby>り、<ruby>各<rt>かく</rt></ruby>ステップを<ruby>飛<rt>と</rt></ruby>ばさない。<ruby>客<rt>きゃく</rt></ruby>への<ruby>第一報<rt>だいいっぽう</rt></ruby>は『<ruby>事実<rt>じじつ</rt></ruby> + <ruby>影響<rt>えいきょう</rt></ruby> + <ruby>調査中<rt>ちょうさちゅう</rt></ruby>』のみ、ETA は<ruby>別途<rt>べっと</rt></ruby>。」**

---

## Tránh

- 1 người im lặng "tự xử" 30 phút trở lên — đã quá SLA bậc 1.
- 第一報 chứa nguyên nhân chưa xác định → hứa kép sai.
- ETA 「すぐ」「もうすぐ」 mơ hồ — phải số phút cụ thể.
- Bỏ phân tích sau sự cố → khách Nhật mặc định team chưa rút kinh nghiệm từ sự cố.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 検知 | けんち | KIỂM TRI | Phát hiện |
| 障害 | しょうがい | CHƯỚNG HẠI | Sự cố |
| 影響範囲 | えいきょうはんい | ẢNH HƯỞNG PHẠM VI | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục |
| エスカレーション | えすかれーしょん | — | Leo thang / báo cấp trên |
| 第一報 | だいいっぽう | ĐỆ NHẤT BÁO | Báo cáo đầu tiên |
| ETA | ETA | — | Estimated time of arrival |
| ポストモーテム | ぽすともーてむ | — | Post-mortem |
| Sev1 | Sev1 | — | Mức sự cố nghiêm trọng nhất (dịch vụ ngừng / hỏng dữ liệu / lộ bảo mật) |
