# Rule 11 — Báo cáo cho khách hàng quan trọng / 重要顧客への報告

> **Luận điểm.** Báo cáo cho khách Nhật quan trọng (PM, Giám đốc) phải có **3 lớp khác báo cáo nội bộ**: (1) tone trang trọng cao hơn 1 bậc, (2) **không dùng thuật ngữ kỹ thuật chưa giải thích**, (3) **bỏ chức danh đồng nghiệp Việt** (ウチ・ソト) — gọi "弊社のトゥアン" chứ không "トゥアンリーダー".
>
> 重要顧客報告の3層差：①敬語ワンランク上、②未説明のジャーゴン禁止、③ウチ・ソト原則で社内同僚の役職敬称を外す（「弊社のトゥアン」）。
>
> **Liên quan:** rule 03 (GRCA), rule 06 (số liệu), rule 08 (報告書).
> Sách 02 (Phone) Rule 27 — ウチ・ソト lần đầu giới thiệu.

---

## Bối cảnh / 場面

Em Dũng báo cáo Phase 2 status cho anh Matsumoto qua phone (định kỳ 2 tuần/lần). Lần đầu Dũng dùng tone giống báo nội bộ + nhiều jargon → anh Matsumoto khó chịu. Lần 2 sửa.

---

## ❌ Hội thoại XẤU — tone nội bộ + jargon + sai ウチ・ソト

*phone, formal level thường*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本さん、Phase 2 のステータスを<ruby>共有<rt>きょうゆう</rt></ruby>します。**トゥアンリーダー**が言うには、リファクタは<ruby>順調<rt>じゅんちょう</rt></ruby>で、CI/CD パイプラインも回ってます【1】。レイテンシも下がりました。」 |
|  | *Anh Matsumoto, em chia sẻ status Phase 2. Anh Tuấn-leader bảo refactor ổn, pipeline CI/CD cũng chạy. Latency cũng giảm.* |
| **松本PM** | 「すみません、『**トゥアンリーダー**』とは？それと『CI/CDパイプライン』『レイテンシ』って…<ruby>技術用語<rt>ぎじゅつようご</rt></ruby>は分かるよう<ruby>説明<rt>せつめい</rt></ruby>していただけますか？」 |
|  | *Xin lỗi, 'anh Tuấn-leader' là gì? Còn 'pipeline CI/CD', 'latency'... thuật ngữ kỹ thuật giải thích để tôi hiểu được không?* |
| **ズン** | 「あ、トゥアンは<ruby>弊社<rt>へいしゃ</rt></ruby>のリーダーで、CI/CD は…」 |
|  | *À, Tuấn là leader bên em, CI/CD là...* |
| **松本PM** | 「ズンさん、お<ruby>客様<rt>きゃくさま</rt></ruby>向けの<ruby>報告<rt>ほうこく</rt></ruby>は、<ruby>用語<rt>ようご</rt></ruby>をかみ<ruby>砕<rt>くだ</rt></ruby>いて、<ruby>社内<rt>しゃない</rt></ruby>の<ruby>役職呼<rt>やくしょくよ</rt></ruby>びは<ruby>外<rt>はず</rt></ruby>すのが<ruby>基本<rt>きほん</rt></ruby>ですよ。」 |
|  | *Dũng, báo cáo với khách hàng thì phải giải thích thuật ngữ đơn giản, bỏ title đồng nghiệp nội bộ — đó là nguyên tắc cơ bản đó.* |

**Vì sao xấu:** L1 「トゥアンリーダー」 = giới thiệu đồng nghiệp với khách bằng chức danh nội bộ → vi phạm ウチ・ソト. Phải là 「弊社のトゥアン」. Thuật ngữ kỹ thuật chưa giải thích. Tone "共有します" hơi nhạt — khách quan trọng cần "ご報告申し上げます".

---

## ✅ Hội thoại TỐT — formal + dễ hiểu + ウチ・ソト đúng

*phone, formal cao*

| Vai | Câu |
|---------|-----|
| **ズン** | 「松本様、お<ruby>時間頂戴<rt>じかんちょうだい</rt></ruby>し<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございません。Phase 2 <ruby>進捗<rt>しんちょく</rt></ruby>の **ご<ruby>報告<rt>ほうこく</rt></ruby>**でございます【1】。」 |
|  | *Anh Matsumoto, em xin lỗi anh dành thời gian. Em xin báo cáo tiến độ Phase 2 ạ.* |
| **ズン** | 「**<ruby>結論<rt>けつろん</rt></ruby>**：<ruby>予定通<rt>よていどお</rt></ruby>り進捗、<ruby>画面<rt>がめん</rt></ruby>ロードは1.2秒から0.4秒まで<ruby>改善<rt>かいぜん</rt></ruby>。**<ruby>弊社<rt>へいしゃ</rt></ruby>のトゥアン**【2】が<ruby>技術検証<rt>ぎじゅつけんしょう</rt></ruby>を<ruby>完了<rt>かんりょう</rt></ruby>し、<ruby>自動<rt>じどう</rt></ruby>テストの<ruby>仕組<rt>しく</rt></ruby>み(CI/CD)も<ruby>整<rt>ととの</rt></ruby>いました【3】。」 |
|  | *Kết luận: tiến độ đúng kế hoạch, load màn hình cải thiện từ 1.2s xuống 0.4s. Anh Tuấn bên em đã hoàn thành kiểm chứng kỹ thuật, cơ chế tự động test (CI/CD) cũng đã sẵn sàng ạ.* |
| **ズン** | 「**ご<ruby>相談<rt>そうだん</rt></ruby>**：Phase 3 のキックオフを5月7日に<ruby>予定<rt>よてい</rt></ruby>しております。アジェンダ<ruby>案<rt>あん</rt></ruby>を<ruby>本日中<rt>ほんじつちゅう</rt></ruby>にメールでお<ruby>送<rt>おく</rt></ruby>りしてよろしいでしょうか。」 |
|  | *Em xin tham vấn: kick-off Phase 3 dự kiến ngày 7/5 ạ. Em gửi anh draft agenda qua mail trong hôm nay được không ạ?* |
| **松本PM** | 「分かりやすい報告ありがとうございます。アジェンダ、お<ruby>待<rt>ま</rt></ruby>ちしております。」 |
|  | *Cảm ơn báo cáo dễ hiểu nhé. Tôi sẽ đợi agenda.* |

📝 **Ghi chú:**
- 【1】**「ご報告でございます」** — cao hơn 「共有します」 1 bậc. Khách Nhật quan trọng dùng mức này.
- 【2】**「弊社のトゥアン」** — bỏ chức danh nội bộ (リーダー). Đồng nghiệp Việt khi nói với khách = ウチ → không kèm chức danh.
- 【3】**「自動テストの仕組み(CI/CD)」** — giải thích tiếng Nhật trước, thuật ngữ kỹ thuật để trong ngoặc. Khách bận, không phải dân kỹ thuật.

---

## 🎯 Câu chốt

> **「ご報告でございます。弊社の〇〇 が〜。〇〇の仕組み(thuật ngữ)を導入。」**
>
> *Mức trang trọng + ウチ・ソト + thuật ngữ kỹ thuật có giải thích = chuẩn báo khách.*

---

## ⚠ Tránh

- 「〜さんが言ってました」 → khách thấy hời hợt. Phải 「弊社の〇〇 が確認しております」.
- Chức danh nội bộ với khách: 「トゥアンリーダー」「ハーCTO」 → thành 「弊社のトゥアン」「弊社のハー」.
- Thuật ngữ kỹ thuật không giải thích: API, CI/CD, レイテンシ → giải thích tiếng Nhật trước.
- Tone "共有します" "確認しました" với khách quan trọng — quá nhạt, nên 「ご報告申し上げます」「確認させていただきました」.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 弊社 | へいしゃ | Cty chúng tôi (khiêm nhường) |
| ご報告申し上げます | ごほうこくもうしあげます | Em xin trân trọng báo cáo |
| かみ砕く | かみくだく | Giải thích đơn giản |
| 役職敬称 | やくしょくけいしょう | Title chức vụ |
| 仕組み | しくみ | Cơ chế / hệ thống |
| 技術検証 | ぎじゅつけんしょう | Kiểm chứng kỹ thuật |
| ジャーゴン | jāgon | Jargon / thuật ngữ |
| 進捗 | しんちょく | Tiến độ |
