# Rule 33 — Final negotiation on terms / 契約条項の最終調整

> **Luận điểm.** Sau LOI, contract draft đi vào phase 条項調整. Top 3 mục căng nhất với khách Nhật: **(1) Indemnity (損害賠償上限)**, **(2) IP ownership** (đặc biệt là code & training data), **(3) SLA + penalty**. Mục tiêu: cap liability ở mức **annual contract value** (¥17M, KHÔNG unlimited), IP code thuộc client + reusable component thuộc Tiên Phát.
>
> 本契約交渉は条項詳細フェーズ。indemnity 上限・IP 帰属・SLA 罰則 が三大論点。Cap は年契約額相当が業界標準。
>
> **Liên quan:** rule 32 (LOI), rule 24 (譲歩交換), rule 43 (escalation).

---

## Bối cảnh / 場面

Contract draft v1 Tiên Phát gửi 大垣. Bên 白鷗 legal trả về v2 với (a) indemnity cap unlimited, (b) IP toàn bộ thuộc 白鷗 (kể cả reusable component). Hà CTO phản đối — Dũng cần đàm phán 3 vòng để đạt cap = ¥17M + điều khoản phân chia IP.

---

## ❌ Hội thoại XẤU — accept terms cứng để close nhanh

*legal redline 共有 · 早く close したい · 急に call*

| Vai | Câu |
|---------|-----|
| **大垣** | 「ズン様、弊社 legal からの修正版です。**indemnity は<ruby>無制限<rt>むせいげん</rt></ruby>**、IP は **当社<ruby>帰属<rt>きぞく</rt></ruby>** でお願いします。」 |
|  | *Anh Dũng, đây là bản sửa từ legal bên anh. Indemnity unlimited, IP thuộc bên tôi, anh giúp tôi.* |
| **ズン** | 「承知しました、それで進めます。」 |
|  | *Em rõ rồi ạ, em đi tiếp như vậy ạ.* |
| (1 ヶ月後 contract 締結、Tuấn 知る) **トゥアン** | 「ズン、これ **<ruby>無制限<rt>むせいげん</rt></ruby><ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby>** じゃないか…1 件 bug で会社潰れるぞ。」 |
|  | *Dũng, cái này indemnity unlimited mà… 1 cái bug là công ty mình phá sản đó.* |
| **ハー CTO** | 「これ legal レビュー通したのか？ **<ruby>撤回<rt>てっかい</rt></ruby><ruby>交渉<rt>こうしょう</rt></ruby>**を今すぐかけるしかない。」 |
|  | *Cái này có qua legal review không em? Bây giờ chỉ còn cách renegotiate rút lại thôi.* |

**Vì sao xấu:** Indemnity unlimited = 1 production incident có thể dẫn đến ¥100M+ claim — Tiên Phát phá sản. IP toàn bộ thuộc 白鷗 = reusable AI component không thể dùng cho khách khác → Phase 4 mất margin. Đây là 2 sai sót nghiêm trọng.

---

## ✅ Hội thoại TỐT — tinh chỉnh 3 điểm với dữ liệu + đẩy lên cấp trên

*沈黙 5秒 → メモ*

| Vai | Câu |
|---------|-----|
| **大垣** | 「indemnity <ruby>無制限<rt>むせいげん</rt></ruby>、IP 当社<ruby>帰属<rt>きぞく</rt></ruby>でお願いします。」 |
|  | *Indemnity unlimited, IP thuộc bên tôi, anh giúp tôi.* |
| **ズン** | 「ご<ruby>要望<rt>ようぼう</rt></ruby>承知しました。**ただし**【1】**、indemnity 無制限は弊社 legal および<ruby>取締役会<rt>とりしまりやくかい</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby><ruby>規定<rt>きてい</rt></ruby> (年契約額) を超えるため、本日中に<ruby>持<rt>も</rt></ruby>ち<ruby>帰<rt>かえ</rt></ruby>り検討させてください**。」 |
|  | *Em ghi nhận yêu cầu của anh. Tuy nhiên, indemnity unlimited vượt quá quy định cap của legal và HĐQT bên em (annual contract value), em xin phép mang về xem trong ngày hôm nay ạ.* |
| (社内 緊急召集) **ハー CTO** | 「3 つ譲れない: ①<ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby> = 年契約額 ¥17M、②IP <ruby>分割<rt>ぶんかつ</rt></ruby> (clientA <ruby>固有<rt>こゆう</rt></ruby>コードは<ruby>貴社<rt>きしゃ</rt></ruby>、reusable AI component は弊社)、③SLA 99.9% は<ruby>維持<rt>いじ</rt></ruby>。これ以下なら<ruby>撤退<rt>てったい</rt></ruby>【2】。」 |
|  | *3 điểm không nhân nhượng: ①Cap indemnity = annual ¥17M, ②IP chia 2 lớp (code riêng của khách thuộc khách, reusable AI component thuộc mình), ③SLA 99.9% giữ. Dưới mức này thì rút.* |
| (翌日 大垣との call) **ズン** | 「お時間いただきありがとうございます。**3 点ご相談**: (i) <ruby>損害<rt>そんがい</rt></ruby><ruby>賠償<rt>ばいしょう</rt></ruby><ruby>上限<rt>じょうげん</rt></ruby>を **年契約額 ¥17M に設定**、<ruby>業界<rt>ぎょうかい</rt></ruby><ruby>標準<rt>ひょうじゅん</rt></ruby>でございます【3】。(ii) IP は **2 層構造**、御社<ruby>固有<rt>こゆう</rt></ruby> customization は御社、<ruby>汎用<rt>はんよう</rt></ruby> AI component は弊社、<ruby>供与<rt>きょうよ</rt></ruby>いたします。(iii) SLA 99.9% 維持、<ruby>罰則<rt>ばっそく</rt></ruby>は **月額 5% upper cap**。」 |
|  | *Em cảm ơn anh đã dành thời gian. Em xin trao đổi 3 điểm: (i) Cap indemnity đặt ở annual ¥17M, đây là industry standard. (ii) IP cấu trúc 2 lớp, customization riêng của bên anh thuộc bên anh, AI component generic thuộc bên em và bên em license cho bên anh. (iii) SLA giữ 99.9%, penalty cap 5% giá trị tháng.* |
| **大垣** | 「…IP 2 層構造は理解できます。indemnity 上限も legal <ruby>慣行<rt>かんこう</rt></ruby>ですね。社内検討の上、**3 <ruby>営業日<rt>えいぎょうび</rt></ruby>以内にお返事**いたします。」 |
|  | *…IP 2 layers tôi hiểu được. Cap indemnity cũng là practice của legal. Bên anh nội bộ thảo luận, trong 3 ngày làm việc sẽ phản hồi.* |
| (3日後) **大垣** | 「3 点とも<ruby>承諾<rt>しょうだく</rt></ruby>いたします。final draft に<ruby>反映<rt>はんえい</rt></ruby>お願いします。」 |
|  | *Cả 3 điểm bên tôi đồng thuận. Phiền anh update vào final draft.* |

📝 **Ghi chú:**
- 【1】**「ただし」 + 「持ち帰り検討」** — 即決 NO ではなく escalation バッファ。日本流 disagree 礼儀.
- 【2】**Hà CTO walk-away line 明確** = 3 点。これ未満なら本当に撤退。曖昧なら negotiation で flip される.
- 【3】**「業界標準」 framing** = 個人主張ではなく市場 norm. Độ tin cậy cao hơn khi dùng "chuẩn ngành".

---

## 🎯 Câu chốt

> **「Indemnity 上限 = 年契約額、IP 2 層構造、SLA 99.9% + 罰則 cap。3 点死守。」**
>
> *Indemnity cap = annual contract value. IP split 2 layers. SLA + penalty cap. Tử thủ 3 điểm.*

---

## ⚠ Tránh

- Indemnity 無制限 → 1 件で会社潰れる. ALL legal は disagree
- IP 全帰属 → reusable component が再利用不可、利益 -30% 累積
- SLA 罰則 cap なし → downtime 1 日で月額の数倍払う羽目に
- 即決 OK → senior レビューなしで signed = 取消困難
- 撤回交渉 = relationship dent。最初に walk-away line を明確にし、絶対に accept しない

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 損害賠償 | そんがいばいしょう | Bồi thường thiệt hại / indemnity |
| 上限 | じょうげん | Cap / mức trần |
| 帰属 | きぞく | Thuộc về |
| 知的財産 | ちてきざいさん | IP (sở hữu trí tuệ) |
| 罰則 | ばっそく | Penalty |
| 業界標準 | ぎょうかいひょうじゅん | Industry standard |
| 取締役会 | とりしまりやくかい | HĐQT |
| ライセンス供与 | ライセンスきょうよ | Cấp license |
| 営業日 | えいぎょうび | Ngày làm việc |
