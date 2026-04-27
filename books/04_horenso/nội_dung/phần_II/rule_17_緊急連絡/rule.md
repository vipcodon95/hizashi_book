# Rule 17 — Liên lạc khẩn cấp + thứ tự ưu tiên / 緊急連絡の優先順位

> **Luận điểm.** Khi sự cố khẩn cấp, **thứ tự gọi** quan trọng không kém nội dung. Sai thứ tự = sếp/khách bực + thông tin loop. Quy tắc: **(1) immediate stakeholder thuộc cấp trên trực tiếp**, **(2) escalate theo chain of command**, **(3) khách hàng được thông báo SAU khi đã có Plan**.
>
> 緊急連絡の3原則：①直属上司をまず、②chain of command で escalate、③顧客への通知は **対応案を持った後**。順序を間違えると顧客が先に騒ぎ収拾不能になる。
>
> **Liên quan:** rule 07 (悪い知らせ PFIPA), rule 09 (口頭/書面), rule 31 (bug flow).

---

## Bối cảnh / 場面

22:30 CN — bug critical production (giống rule 07). Anh Tuấn phát hiện. Câu hỏi: ai gọi trước, ai sau? Lần đầu Dũng (BD) định gọi anh Matsumoto (khách) ngay → anh Tuấn ngăn lại.

---

## ❌ Hội thoại XẤU — đảo thứ tự, gọi khách trước

*22:35 CN*

| Speaker | Câu |
|---------|-----|
| **ズン** | 「トゥアンさん、私すぐ松本様に電話します。データ消失なので…」 |
| **トゥアン** | 「**待って**！松本様に電話する前に、(1) ハー CTO に第一報、(2) 対応案を3分で固める、(3) **その後** 松本様に電話。順序間違えると松本様が先に騒ぐ【1】。」 |
| **ズン** | 「あ、でも顧客優先かと…」 |
| **トゥアン** | 「**Plan を持たずに顧客に告げると 'どうするんですか'と詰められて、そこで初めて社内で議論することになる**。最悪。社内で固めてから顧客へ。」 |

**Vì sao xấu:** Việt thường nghĩ "khách trước". Nhật business: chain of command trước, Plan trước, rồi báo khách. Báo khách trước Plan = khách hỏi "phương án?" → embarass.

---

## ✅ Hội thoại TỐT — chain of command đúng

*22:32, gọi anh Hà CTO · 22:35 · 22:55, gọi anh Matsumoto · 23:30, Slack #phase2*

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ハーさん、緊急のご報告です…」 (PFIPA — xem rule 07) |
| **ハーCTO** | 「了解。Plan OK。**第一報をあなた (トゥアン) から松本様に23時までに**入れて。」 |
| **トゥアン** | 「松本様、夜分恐縮です。緊急のご報告です。**現時点で対応中の事象とPlanを併せてお伝えします**【2】…」 |
| **松本PM** | 「Plan まで持って報告してくれて助かります。社内で共有します。」 |
| **トゥアン** | 「@here 第一報共有 (Slack thread にて状況更新中)。」 |

📝 **Ghi chú:**
- 【1】**Order: 直属 → 上司 → 顧客** — đảo order = chaos.
- 【2】**「対応中の事象と Plan を併せて」** — báo khách = báo Fact + Impact + Plan + ETA. Không "問題が発生しました、どうしましょう".

---

## Escalation matrix

| Loại sự cố | Bước 1 (3 phút) | Bước 2 (10 phút) | Bước 3 (30 phút) |
|---|---|---|---|
| **Critical bug production** | Tech lead → CTO | Plan, Slack #incident | Khách (PM) |
| **Khách phàn nàn major** | Tech lead | BD lead → CTO | Khách (formal email reply) |
| **Sales bị reject** | Sales lead | BD director | (không) |
| **Internal HR issue** | HR → CEO | (không escalate khách) | |
| **Legal / compliance** | Compliance officer → CEO | Legal counsel | (cẩn trọng) |

---

## 🎯 Câu chốt

> **「直属 → CTO/上司 → Plan 確定 → 顧客」 — 順序間違えると現場が二倍混乱。**

---

## ⚠ Tránh

- Báo khách Nhật trước khi có Plan — họ hỏi "Plan は?" → bạn tê liệt.
- Skip cấp trung gian, gọi thẳng C-level đầu tiên — direct boss bị bypassed = mất thiện cảm.
- Không có timeline (dài nhất bao lâu nữa giải quyết) — khách không biết kỳ vọng.
- Slack #public trước khi đã thông báo người key — họ đọc Slack mới biết = embarass.

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
