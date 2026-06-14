# Rule 43 — Các tình huống cần leo thang / エスカレーション

> **Luận điểm.** 4 điều kiện kích hoạt để leo thang lên Hà CTO / Hương: **(T1)** Khách push 価格 dưới điểm rút lui ¥15M, **(T2)** Yêu cầu điều khoản ngoài thẩm quyền (indemnity không giới hạn, IP toàn bộ), **(T3)** Tông đe dọa / tối hậu thư, **(T4)** Quyết định liên phòng ban (kỹ thuật + tài chính). Quy trình leo thang: **(a)** Slack cấp trên với bối cảnh 30 giây, **(b)** Cấp trên quyết step-in hay hướng dẫn qua Slack, **(c)** Khi step-in thì Dũng setup (KHÔNG rút đi). Leo thang = chuyển quyền sở hữu + giữ thể diện cả 2 phía.
>
> エスカレーション 4 trigger: 価格 walk-away 越え / 権限外条項 / threat tone / cross-functional 判断。flow は Slack 30 秒 context → senior 判断 → Dũng setup。逃げずに presence 保持。
>
> **Liên quan:** rule 26 (脅し対応), rule 33 (条項調整), sách 04 rule 17 (mô hình leo thang).

---

## Bối cảnh / 場面

Phase 4 round 3, 大垣 thay 中村 CFO + 大垣 + Tiên Phát luật sư on call. CFO push: "indemnity 無制限じゃないと弊社決裁 down ない。今ここで決めて". Đây là T2 (権限外) + T3 (ultimatum) cùng lúc → Hà CTO escalation.

---

## Hội thoại XẤU — Dũng tự xử ngoài thẩm quyền

*panic、 escalate なし · Hà CTO に · 青*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>じゃないと<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby> down ません。<ruby>今<rt>いま</rt></ruby>ここで<ruby>決<rt>き</rt></ruby>めてください。」 <br/>*Indemnity không unlimited thì bên tôi không duyệt được. Bây giờ anh quyết đi.* |
| **ズン** | 「えっと…<ruby>無制限<rt>むせいげん</rt></ruby>ですか…<ruby>承知<rt>しょうち</rt></ruby>いたしました、それで<ruby>進<rt>すす</rt></ruby>めます…」 <br/>*Ờ thì... unlimited ạ... em rõ rồi ạ, em đi tiếp như vậy ạ...* |
| (1 <ruby>時間後<rt>じかんご</rt></ruby> Slack <ruby>報告<rt>ほうこく</rt></ruby>) **ズン** | 「Hà CTO、Phase 4 indemnity <ruby>無制限<rt>むせいげん</rt></ruby>で<ruby>合意<rt>ごうい</rt></ruby>しました。」 <br/>*Anh Hà CTO, Phase 4 em đã thống nhất indemnity unlimited rồi ạ.* |
| **ハー CTO** | 「**<ruby>何故<rt>なぜ</rt></ruby> escalate しなかった？<ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby>を<ruby>超<rt>こ</rt></ruby>える。<ruby>今<rt>いま</rt></ruby>すぐ<ruby>撤回<rt>てっかい</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>**。<ruby>社長<rt>しゃちょう</rt></ruby> escalate も<ruby>必要<rt>ひつよう</rt></ruby>。」 <br/>*Sao em không escalate? Vượt quy định cap HĐQT. Bây giờ phải renegotiate rút lại ngay. Có khi phải escalate cả Tổng Giám đốc.* |

**Vì sao xấu:** (a) T2 (権限外) recognize されず Dũng が即決, (b) T3 (ultimatum tone) も recognize されず, (c) Hà CTO 取締役会規定知らず → Tiên Phát 法的に không có hiệu lực ràng buộc → đàm phán lại = sứt mẻ niềm tin. Bỏ qua việc đẩy lên cấp trên = sai lầm định mệnh cho sự nghiệp.

---

## Hội thoại TỐT — escalation flow + dignity 保持

*2 秒沈黙、 trigger T2 + T3 認識 · microexpression: 想定内 · 2 分後 · 中村に · 姿勢正す*

| Vai | Câu |
|---------|-----|
| **中村CFO** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>じゃないと<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>決裁<rt>けっさい</rt></ruby> down ません。<ruby>今<rt>いま</rt></ruby>ここで<ruby>決<rt>き</rt></ruby>めてください。」 <br/>*Indemnity không unlimited thì bên tôi không duyệt được. Bây giờ anh quyết đi.* |
| **ズン** | 「ご<ruby>要望<rt>ようぼう</rt></ruby><ruby>承知<rt>しょうち</rt></ruby>しました。」 <br/>*Em ghi nhận yêu cầu của anh ạ.* |
| **ズン** | 「**indemnity <ruby>無制限<rt>むせいげん</rt></ruby>の<ruby>判断<rt>はんだん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby>に<ruby>関<rt>かか</rt></ruby>わるため、<ruby>私<rt>わたし</rt></ruby>の<ruby>権限<rt>けんげん</rt></ruby>を<ruby>超<rt>こ</rt></ruby>えます**【1】。**5 <ruby>分<rt>ふん</rt></ruby>ほどお<ruby>時間<rt>じかん</rt></ruby><ruby>頂戴<rt>ちょうだい</rt></ruby>し、Hà CTO に<ruby>連絡<rt>れんらく</rt></ruby>を<ruby>取<rt>と</rt></ruby>らせてください**【2】。」 <br/>*Quyết định về indemnity unlimited liên quan đến quy định cap HĐQT bên em, vượt thẩm quyền của em ạ. Phiền anh cho em 5 phút để liên lạc anh Hà CTO ạ.* |
| **中村CFO** | 「<ruby>分<rt>わ</rt></ruby>かりました。5 <ruby>分<rt>ふん</rt></ruby><ruby>待<rt>ま</rt></ruby>ちます。」 <br/>*Hiểu rồi. Anh đợi 5 phút.* |
| (Slack Hà CTO、 30 <ruby>秒<rt>びょう</rt></ruby> context: trigger / <ruby>数値<rt>すうち</rt></ruby> / urgency) **ズン** | 「ハー CTO、Phase 4 中村 CFO escalation。<ruby>要点<rt>ようてん</rt></ruby>: indemnity <ruby>無制限<rt>むせいげん</rt></ruby> + ultimatum + <ruby>即決<rt>そっけつ</rt></ruby><ruby>要請<rt>ようせい</rt></ruby>。**T2 + T3 trigger**。step-in <ruby>可否<rt>かひ</rt></ruby> ご<ruby>判断<rt>はんだん</rt></ruby>ください。」 <br/>*(Slack) Anh Hà CTO, escalate Phase 4 anh Nakamura CFO. Tóm tắt: indemnity unlimited + ultimatum + ép quyết ngay. Trigger T2 + T3. Anh quyết step-in được không ạ.* |
| **ハー CTO** | 「<ruby>私<rt>わたし</rt></ruby>が join。3 <ruby>分後<rt>ふんご</rt></ruby> Zoom link <ruby>送<rt>おく</rt></ruby>る。Dũng は **メンバー<ruby>紹介後<rt>しょうかいご</rt></ruby>そのまま session にいて**、<ruby>撤退<rt>てったい</rt></ruby>ではない【3】。」 <br/>*Anh sẽ join. 3 phút nữa anh gửi Zoom link. Dũng giới thiệu xong cứ ở lại session, KHÔNG rút.* |
| (Zoom <ruby>再開<rt>さいかい</rt></ruby>) **ズン** | 「お<ruby>待<rt>ま</rt></ruby>たせいたしました。<ruby>弊社<rt>へいしゃ</rt></ruby> CTO ハー が join いたします。」 <br/>*Em xin lỗi đã để anh đợi. CTO Hà bên em sẽ join ạ.* |
| **ハー CTO** | 「<ruby>中村様<rt>なかむらさま</rt></ruby>、ハーでございます。indemnity <ruby>上限<rt>じょうげん</rt></ruby> ¥20M (<ruby>年契約額<rt>ねんけいやくがく</rt></ruby>) は<ruby>弊社<rt>へいしゃ</rt></ruby><ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>規定<rt>きてい</rt></ruby><ruby>上<rt>じょう</rt></ruby>の<ruby>上限<rt>じょうげん</rt></ruby>。これを<ruby>超<rt>こ</rt></ruby>えるご<ruby>提案<rt>ていあん</rt></ruby>は<ruby>弊社<rt>へいしゃ</rt></ruby>で commit <ruby>不可<rt>ふか</rt></ruby>です。<ruby>代替<rt>だいたい</rt></ruby>として **<ruby>段階的<rt>だんかいてき</rt></ruby> cap** (1 <ruby>年目<rt>ねんめ</rt></ruby> ¥20M、2 <ruby>年目<rt>ねんめ</rt></ruby> ¥30M) のご<ruby>相談<rt>そうだん</rt></ruby>は<ruby>可能<rt>かのう</rt></ruby>です。」 <br/>*Anh Nakamura, tôi là Hà. Cap indemnity ¥20M (annual) là cap quy định HĐQT bên tôi. Vượt mức này thì bên tôi không commit được. Phương án thay thế: cap theo bậc (năm 1 ¥20M, năm 2 ¥30M) có thể trao đổi.* |
| **中村CFO** | 「CTO <ruby>直接<rt>ちょくせつ</rt></ruby>ご<ruby>回答<rt>かいとう</rt></ruby> <ruby>助<rt>たす</rt></ruby>かります。<ruby>段階的<rt>だんかいてき</rt></ruby> cap、 <ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り<ruby>検討<rt>けんとう</rt></ruby>します。」 <br/>*CTO trả lời trực tiếp giúp anh nhiều. Cap theo bậc, anh mang về xem.* |
| (<ruby>商談後<rt>しょうだんご</rt></ruby> Slack) **ハー CTO → Dũng** | 「Good job escalate。T2/T3 <ruby>認識<rt>にんしき</rt></ruby> + 30 <ruby>秒<rt>びょう</rt></ruby> context + setup <ruby>完璧<rt>かんぺき</rt></ruby>【4】。<ruby>学<rt>まな</rt></ruby>べた。」 <br/>*Em escalate tốt. Nhận T2/T3 + 30s context + setup hoàn hảo. Anh cũng học được.* |

 **Ghi chú:**
- 【1】**「権限を超えます」 framing** = personal weakness ではなく organizational rule. 顧客は accept しやすい.
- 【2】**5 分 buffer 要請** = JP は escalation を invitate する pattern を理解。"急に持ち帰り" よりは reasonable.
- 【3】**Dũng が session に残る** = ownership 保持. 完全 disappear すると「Dũng 役立たず」 perception.
- 【4】**Senior feedback で learning** = next time T2/T3 trigger 速くなる. Escalation = career skill.

---

## Câu chốt

> **「4 trigger (T1 価格 / T2 権限外 / T3 threat / T4 cross-fn) → 30 秒 Slack → senior 判断 → Dũng setup + presence 保持。」**
>
> *4 trigger → Slack 30 giây → senior quyết → Dũng setup + ở lại session.*

---

## Tránh

- 権限外 (T2) を即決 → 取締役会で法的に không có hiệu lực ràng buộc、 撤回 → sứt mẻ niềm tin
- "今ここで決めてください" pressure に屈する → 5 分 buffer 必ず request
- Escalate するが session 退出 → mất quyền sở hữu (ownership)
- Slack で senior に "どうしましょう?" 漠然と → 30 秒で trigger / 数値 / urgency まとめる
- Senior step-in 後も Dũng が話を奪う → làm loãng quyền uy của senior

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| エスカレーション | エスカレーション | — | Escalation |
| 権限を超えます | けんげんをこえます | QUYỀN HẠN SIÊU | Vượt thẩm quyền |
| 取締役会規定 | とりしまりやくかいきてい | THỦ ĐẾ DỊCH HỘI QUY ĐỊNH | Quy định HĐQT |
| 段階的 cap | だんかいてき cap | ĐOẠN GIAI ĐÍCH | Cap theo bậc |
| Trigger | トリガー | — | Trigger |
| Microexpression | マイクロエクスプレッション | — | Biểu cảm vi mô |
| Step-in | ステップイン | — | Bước vào (senior intervene) |
