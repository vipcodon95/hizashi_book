# Rule 37 — Crisis meeting họp gấp / 緊急会議の運営

> **Luận điểm.** Họp gấp (sự cố, lỗi nghiêm trọng) cần cấu trúc 4 chữ ngắn gọn: **Fact → Impact → Action → Owner**. Tối đa 30 phút. Không có chương trình nghị sự dài, không tán gẫu. Câu chuẩn mở đầu: 「**緊急会議のため、簡潔に進めさせていただきます**」.
>
> 緊急会議は30分以内、Fact→Impact→Action→Owner の順で進める。雑談・前置きなし。
>
> **Liên quan:** Rule 09 (mở đầu), Rule 31 (quyết định), Rule 44 (action items).

---

## Bối cảnh / 場面

Server production crash 7h sáng. Em Dũng triệu tập họp khẩn 7h30 với Tuấn (tech lead), Hải (devops), và anh Matsumoto (báo cáo).

---

## ❌ Hội thoại XẤU — họp khẩn nhưng lan man

*căng*

| Vai | Câu |
|---------|-----|
| **ズン** | 「お<ruby>忙<rt>いそが</rt></ruby>しい<ruby>中<rt>なか</rt></ruby>、お<ruby>集<rt>あつ</rt></ruby>まりいただきありがとうございます。<ruby>本日<rt>ほんじつ</rt></ruby>の<ruby>天気<rt>てんき</rt></ruby>は…えっと、<ruby>本題<rt>ほんだい</rt></ruby>ですが、サーバーの<ruby>件<rt>けん</rt></ruby>で…」 |
|  | *Cảm ơn các anh đã sắp xếp dự ạ. Hôm nay thời tiết... à mà vào việc, vụ server...* |
| **トゥアン** | 「あ、それね、<ruby>昨日<rt>きのう</rt></ruby>のデプロイで…<ruby>多分<rt>たぶん</rt></ruby>…」 |
|  | *À cái đó ấy, có thể do deploy hôm qua... chắc...* |
| **ハイ** | 「いや、デプロイじゃないと<ruby>思<rt>おも</rt></ruby>いますよ。たぶんネットワーク…」 |
|  | *Không, em nghĩ không phải deploy đâu. Có lẽ network...* |
| **松本** | 「<ruby>現在<rt>げんざい</rt></ruby>の<ruby>影響範囲<rt>えいきょうはんい</rt></ruby>だけ<ruby>教<rt>おし</rt></ruby>えてもらえますか。」 |
|  | *Cho tôi biết phạm vi ảnh hưởng hiện tại thôi được không.* |

**Vì sao xấu:** Mở đầu lan man (時候挨拶 chào hỏi thời tiết không cần thiết), tech bàn nguyên nhân chưa rõ, không có cấu trúc → khách Nhật mất kiên nhẫn vì đang lo.

---

## ✅ Hội thoại TỐT — Fact / Impact / Action / Owner

*tiếp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「<ruby>皆様<rt>みなさま</rt></ruby>、<ruby>緊急会議<rt>きんきゅうかいぎ</rt></ruby>のため<ruby>簡潔<rt>かんけつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます【1】。」 |
|  | *Mọi người, vì là họp khẩn nên em xin phép tiến hành ngắn gọn ạ.* |
| **ズン** | 「**【Fact】**<ruby>本日<rt>ほんじつ</rt></ruby>7<ruby>時<rt>じ</rt></ruby>05<ruby>分<rt>ふん</rt></ruby>、<ruby>本番<rt>ほんばん</rt></ruby>サーバーがダウンいたしました。<ruby>現在<rt>げんざい</rt></ruby>も<ruby>復旧中<rt>ふっきゅうちゅう</rt></ruby>でございます。」 |
|  | *[Fact] 7h05 hôm nay, server prod đã down. Hiện đang khôi phục ạ.* |
| **ズン** | 「**【Impact】**<ruby>全<rt>ぜん</rt></ruby>ユーザーログイン<ruby>不可<rt>ふか</rt></ruby>、<ruby>推定影響<rt>すいていえいきょう</rt></ruby>ユーザー<ruby>数<rt>すう</rt></ruby>は1,200<ruby>名<rt>めい</rt></ruby>でございます【2】。」 |
|  | *[Impact] Toàn bộ user không login được, ước tính 1,200 người bị ảnh hưởng ạ.* |
| **ズン** | 「**【Action】**①ハイがDBロールバック<ruby>実施中<rt>じっしちゅう</rt></ruby>、②トゥアンが<ruby>原因調査<rt>げんいんちょうさ</rt></ruby>、③<ruby>私<rt>わたし</rt></ruby>が<ruby>顧客向<rt>こきゃくむ</rt></ruby>け<ruby>一報<rt>いっぽう</rt></ruby>を<ruby>起草中<rt>きそうちゅう</rt></ruby>、でございます。」 |
|  | *[Action] (1) Hải đang rollback DB, (2) Tuấn điều tra nguyên nhân, (3) em đang draft thông báo gửi user ạ.* |
| **ズン** | 「**【Owner & ETA】**<ruby>復旧目処<rt>ふっきゅうめど</rt></ruby>は8<ruby>時<rt>じ</rt></ruby>30<ruby>分<rt>ぷん</rt></ruby>、<ruby>最終報告<rt>さいしゅうほうこく</rt></ruby>は<ruby>本日<rt>ほんじつ</rt></ruby>10<ruby>時<rt>じ</rt></ruby>、<ruby>私<rt>わたし</rt></ruby>が<ruby>責任者<rt>せきにんしゃ</rt></ruby>でございます【3】。」 |
|  | *[Owner & ETA] Mục tiêu khôi phục 8h30, báo cáo cuối hôm nay 10h, em là người chịu trách nhiệm ạ.* |
| **松本** | 「<ruby>明確<rt>めいかく</rt></ruby>で<ruby>助<rt>たす</rt></ruby>かります。10<ruby>時<rt>じ</rt></ruby>の<ruby>報告<rt>ほうこく</rt></ruby>を<ruby>待<rt>ま</rt></ruby>ちます。」 |
|  | *Rõ ràng, đỡ quá. Tôi chờ báo cáo 10h.* |

📝 **Ghi chú:**
- 【1】**「緊急会議のため、簡潔に進めさせていただきます」** — báo trước "không nghi thức rườm rà" → cho phép cắt ngắn phần chào hỏi.
- 【2】**Số cụ thể** (7時05分, 1,200名) — dựa trên sự thật, không nói 「たぶん」 (chắc là).
- 【3】**「責任者」 rõ ràng** — văn hóa doanh nghiệp Nhật rất quý việc có 1 người chịu trách nhiệm duy nhất.

---

## 🎯 Câu chốt

> **「<ruby>緊急会議<rt>きんきゅうかいぎ</rt></ruby>のため、<ruby>簡潔<rt>かんけつ</rt></ruby>に<ruby>進<rt>すす</rt></ruby>めさせていただきます。Fact→Impact→Action→Owner の<ruby>順<rt>じゅん</rt></ruby>でご<ruby>報告<rt>ほうこく</rt></ruby>いたします。」**
>
> *4F: Fact (sự thật), Felt impact (ảnh hưởng), plan of Action (kế hoạch xử lý), single Owner (một người chịu trách nhiệm). 30 phút.*

---

## ⚠ Tránh

- Mở đầu 挨拶 (chào hỏi) dài → khách đang lo lại bị lãng phí thời gian.
- Tech bàn nguyên nhân chưa rõ trong họp khẩn (để xử lý sau).
- Không có 1 người chịu trách nhiệm duy nhất → trách nhiệm bị chia → không ai làm.
- Quá 30 phút → mệt + chất lượng quyết định giảm.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 緊急会議 | きんきゅうかいぎ | Họp khẩn |
| 簡潔 | かんけつ | Ngắn gọn / súc tích |
| 影響範囲 | えいきょうはんい | Phạm vi ảnh hưởng |
| 復旧 | ふっきゅう | Khôi phục |
| 目処 | めど | Mục đích / mốc dự kiến |
| 責任者 | せきにんしゃ | Người phụ trách |
| ロールバック | rōrubakku | Rollback |
