# Rule 17 — Liên lạc khẩn cấp + thứ tự ưu tiên / 緊急連絡の優先順位

> **Luận điểm.** Khi sự cố khẩn cấp, **thứ tự gọi** quan trọng không kém nội dung. Sai thứ tự = sếp/khách bực + thông tin chạy vòng. Quy tắc: **(1) báo người liên quan trực tiếp thuộc cấp trên ngay**, **(2) báo cáo leo cấp theo tuyến phân cấp**, **(3) khách hàng được thông báo SAU khi đã có Plan**.
>
> 緊急連絡の3原則：①直属上司をまず、②chain of command で escalate、③顧客への通知は **対応案を持った後**。順序を間違えると顧客が先に騒ぎ収拾不能になる。
>
> **Liên quan:** rule 07 (悪い知らせ PFIPA), rule 09 (口頭/書面), rule 31 (nhịp xử lý bug).

---

## Bối cảnh / 場面

22:30 CN — bug nghiêm trọng trên production (giống rule 07). Anh Tuấn phát hiện. Câu hỏi: ai gọi trước, ai sau? Lần đầu Dũng (BD) định gọi anh Matsumoto (khách) ngay → anh Tuấn ngăn lại.

---

## ❌ Hội thoại XẤU — đảo thứ tự, gọi khách trước

*22:35 CN*

| Vai | Câu |
|---------|-----|
| **ズン** | 「トゥアンさん、私すぐ<ruby>松本<rt>まつもと</rt></ruby>様に<ruby>電話<rt>でんわ</rt></ruby>します。データ<ruby>消失<rt>しょうしつ</rt></ruby>なので…」 |
|  | *Anh Tuấn, em gọi anh Matsumoto luôn nhé. Data bị mất nên...* |
| **トゥアン** | 「**待って**！<ruby>松本<rt>まつもと</rt></ruby>様に<ruby>電話<rt>でんわ</rt></ruby>する<ruby>前<rt>まえ</rt></ruby>に、(1) ハー CTO に<ruby>第一報<rt>だいいっぽう</rt></ruby>、(2) <ruby>対応案<rt>たいおうあん</rt></ruby>を3<ruby>分<rt>ぷん</rt></ruby>で<ruby>固<rt>かた</rt></ruby>める、(3) **その後** <ruby>松本<rt>まつもと</rt></ruby>様に<ruby>電話<rt>でんわ</rt></ruby>。<ruby>順序<rt>じゅんじょ</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えると<ruby>松本<rt>まつもと</rt></ruby>様が<ruby>先<rt>さき</rt></ruby>に<ruby>騒<rt>さわ</rt></ruby>ぐ【1】。」 |
|  | *Khoan! Trước khi gọi anh Matsumoto: (1) báo đầu cho anh Hà CTO, (2) chốt phương án trong 3 phút, (3) rồi mới gọi anh Matsumoto. Sai thứ tự là khách làm ầm trước.* |
| **ズン** | 「あ、でも<ruby>顧客<rt>こきゃく</rt></ruby><ruby>優先<rt>ゆうせん</rt></ruby>かと…」 |
|  | *Ơ nhưng em nghĩ ưu tiên khách...* |
| **トゥアン** | 「**Plan を<ruby>持<rt>も</rt></ruby>たずに<ruby>顧客<rt>こきゃく</rt></ruby>に<ruby>告<rt>つ</rt></ruby>げると 'どうするんですか'と<ruby>詰<rt>つ</rt></ruby>められて、そこで<ruby>初<rt>はじ</rt></ruby>めて<ruby>社内<rt>しゃない</rt></ruby>で<ruby>議論<rt>ぎろん</rt></ruby>することになる**。<ruby>最悪<rt>さいあく</rt></ruby>。<ruby>社内<rt>しゃない</rt></ruby>で<ruby>固<rt>かた</rt></ruby>めてから<ruby>顧客<rt>こきゃく</rt></ruby>へ。」 |
|  | *Báo khách mà chưa có Plan thì sẽ bị truy 'sao bây giờ?', lúc đó mới bàn nội bộ. Tệ nhất. Chốt nội bộ rồi mới ra khách.* |

**Vì sao xấu:** Người Việt thường nghĩ "khách trước". Phong cách Nhật: theo tuyến phân cấp trước, có Plan trước, rồi mới báo khách. Báo khách trước khi có Plan = khách hỏi "phương án?" → mất mặt.

---

## ✅ Hội thoại TỐT — chain of command đúng

*22:32, gọi anh Hà CTO · 22:35 · 22:55, gọi anh Matsumoto · 23:30, Slack #phase2*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ハーさん、<ruby>緊急<rt>きんきゅう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です…」 (PFIPA — xem rule 07) |
|  | *Anh Hà, em báo cáo khẩn ạ. (PFIPA — xem rule 07)* |
| **ハーCTO** | 「<ruby>了解<rt>りょうかい</rt></ruby>。Plan OK。**<ruby>第一報<rt>だいいっぽう</rt></ruby>をあなた (トゥアン) から<ruby>松本<rt>まつもと</rt></ruby>様に23<ruby>時<rt>じ</rt></ruby>までに**<ruby>入<rt>い</rt></ruby>れて。」 |
|  | *OK. Plan duyệt. Báo đầu em (Tuấn) gọi anh Matsumoto trước 23h.* |
| **トゥアン** | 「<ruby>松本<rt>まつもと</rt></ruby>様、<ruby>夜分<rt>やぶん</rt></ruby><ruby>恐縮<rt>きょうしゅく</rt></ruby>です。<ruby>緊急<rt>きんきゅう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。**<ruby>現時点<rt>げんじてん</rt></ruby>で<ruby>対応中<rt>たいおうちゅう</rt></ruby>の<ruby>事象<rt>じしょう</rt></ruby>とPlanを<ruby>併<rt>あわ</rt></ruby>せてお<ruby>伝<rt>つた</rt></ruby>えします**【2】…」 |
|  | *Anh Matsumoto, em xin lỗi đêm khuya. Em báo cáo khẩn cấp. Em trình bày cả sự cố đang xử lý lẫn phương án ạ.* |
| **松本PM** | 「Plan まで<ruby>持<rt>も</rt></ruby>って<ruby>報告<rt>ほうこく</rt></ruby>してくれて<ruby>助<rt>たす</rt></ruby>かります。<ruby>社内<rt>しゃない</rt></ruby>で<ruby>共有<rt>きょうゆう</rt></ruby>します。」 |
|  | *Cảm ơn anh báo cáo có cả Plan luôn. Tôi chia sẻ nội bộ bên này.* |
| **トゥアン** | 「@here <ruby>第一報<rt>だいいっぽう</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby> (Slack thread にて<ruby>状況<rt>じょうきょう</rt></ruby><ruby>更新中<rt>こうしんちゅう</rt></ruby>)。」 |
|  | *@here em chia sẻ báo đầu (đang cập nhật tình trạng trong thread Slack).* |

📝 **Ghi chú:**
- 【1】**Thứ tự: 直属 → 上司 → 顧客** — đảo thứ tự = hỗn loạn.
- 【2】**「対応中の事象と Plan を併せて」** — báo khách = báo Fact + Impact + Plan + ETA. Không phải "問題が発生しました、どうしましょう".

---

## Escalation matrix

| Loại sự cố | Bước 1 (3 phút) | Bước 2 (10 phút) | Bước 3 (30 phút) |
|---|---|---|---|
| **Bug nghiêm trọng trên production** | Tech lead → CTO | Plan, Slack #incident | Khách (PM) |
| **Khách phàn nàn lớn** | Tech lead | BD lead → CTO | Khách (email trả lời trang trọng) |
| **Sales bị từ chối** | Sales lead | BD director | (không) |
| **Vấn đề nhân sự nội bộ** | HR → CEO | (không báo lên khách) | |
| **Pháp lý / tuân thủ** | Cán bộ tuân thủ → CEO | Cố vấn pháp lý | (cẩn trọng) |

---

## 🎯 Câu chốt

> **「<ruby>直属<rt>ちょくぞく</rt></ruby> → CTO/<ruby>上司<rt>じょうし</rt></ruby> → Plan <ruby>確定<rt>かくてい</rt></ruby> → <ruby>顧客<rt>こきゃく</rt></ruby>」 — <ruby>順序<rt>じゅんじょ</rt></ruby><ruby>間違<rt>まちが</rt></ruby>えると<ruby>現場<rt>げんば</rt></ruby>が<ruby>二倍<rt>にばい</rt></ruby><ruby>混乱<rt>こんらん</rt></ruby>。**

---

## ⚠ Tránh

- Báo khách Nhật trước khi có Plan — họ hỏi "Plan は?" → bạn tê liệt.
- Bỏ qua cấp trung gian, gọi thẳng cấp C-level đầu tiên — cấp trên trực tiếp bị vượt mặt = mất thiện cảm.
- Không có mốc thời gian (lâu nhất bao lâu nữa giải quyết xong) — khách không biết kỳ vọng.
- Đăng Slack #public trước khi đã thông báo người chủ chốt — họ đọc Slack mới biết = mất mặt.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 緊急連絡 | きんきゅうれんらく | Liên lạc khẩn |
| 優先順位 | ゆうせんじゅんい | Thứ tự ưu tiên |
| 直属上司 | ちょくぞくじょうし | Cấp trên trực tiếp |
| 第一報 | だいいっぽう | Báo cáo đầu |
| 対応案 | たいおうあん | Phương án xử lý |
| 騒ぐ | さわぐ | Làm ầm |
| 詰める | つめる | Truy hỏi |
| 収拾不能 | しゅうしゅうふのう | Không kiểm soát được |
