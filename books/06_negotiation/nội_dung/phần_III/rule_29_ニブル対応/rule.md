# Rule 29 — Nibble & late demand handling / ニブル・後出し対応

> **Luận điểm.** **Nibble** = sau khi gần đóng deal, khách thêm yêu cầu nhỏ ("ついでに training 1 日無料で…"). 1 nibble = ¥0.5M, nhiều nibble = ¥3-5M leak. Pattern: **(1) Acknowledge**, **(2) Trade ngược** (KHÔNG cho miễn phí), **(3) Reset clock** (yêu cầu mới = revisit toàn bộ agreement).
>
> 商談ほぼ closed の時点で「ついでに〜」と追加要求 (nibble) が出ることがある。ただで応じない。「条件追加なら全体合意も再 review」と reset clock。
>
> **Liên quan:** rule 24 (譲歩交換), rule 09 (concession plan), sách 06 phần IV rule 33.

---

## Bối cảnh / 場面

Sau Phase 3 chốt ¥17M + 2 năm + dashboard kèm trade (rule 24), 田中 PMO Slack Dũng "ついでに training を 1 日無料で含めていただけますか？社内導入のため" — classic nibble.

---

## ❌ Hội thoại XẤU — accept nibble miễn phí

| | Vai | Câu (Slack) |
|--|---------|-----|
| **L1** | **田中PMO** | 「ズン<ruby>様<rt>さま</rt></ruby>、お<ruby>世話<rt>せわ</rt></ruby>になっております。Phase 3 contract draft <ruby>確認<rt>かくにん</rt></ruby>しましたが、ついでに social engineer <ruby>部署<rt>ぶしょ</rt></ruby><ruby>向<rt>む</rt></ruby>け training 1 <ruby>日<rt>にち</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか？」 |
|  | *Anh Dũng ơi, tôi đã xem draft hợp đồng Phase 3 rồi, tiện thể bên tôi thêm training 1 ngày miễn phí cho phòng social engineer được không ạ?* |
| **L2** | **ズン** | 「分かりました、サービスで<ruby>含<rt>ふく</rt></ruby>めます。」 |
|  | *Em rõ ạ, em cho thêm vào miễn phí ạ.* |
| **L3** | (1 週間後) **田中PMO** | 「ありがとうございます！ついでに 2 <ruby>日目<rt>にちめ</rt></ruby>も<ruby>追加<rt>ついか</rt></ruby>で…」 |
|  | *(1 tuần sau) Cảm ơn. Tiện thể tôi muốn thêm ngày 2…* |
| **L4** | **ズン** | 「えっ、また…？」 |
|  | *Ơ, lại nữa ạ…?* |

**Vì sao xấu:** Accept lần 1 → khách push lần 2, 3. Mỗi lần ¥0.3-0.5M leak. Đã sang phase contract mà vẫn trôi chi phí.

---

## ✅ Hội thoại TỐT — trade reset + protect agreement

| | Vai | Câu (Slack) |
|--|---------|-----|
| **L1** | **田中PMO** | 「ズン<ruby>様<rt>さま</rt></ruby>、Phase 3 contract draft <ruby>確認<rt>かくにん</rt></ruby>しました。ついでに social engineer <ruby>部署<rt>ぶしょ</rt></ruby><ruby>向<rt>む</rt></ruby>け training 1 <ruby>日<rt>にち</rt></ruby><ruby>無料<rt>むりょう</rt></ruby>で<ruby>追加<rt>ついか</rt></ruby><ruby>可能<rt>かのう</rt></ruby>でしょうか？」 |
|  | *Anh Dũng, tôi đã xem draft hợp đồng Phase 3 rồi. Tiện thể thêm training 1 ngày miễn phí cho phòng social engineer được không ạ?* |
| **L2** | **ズン** | 「**お<ruby>声<rt>こえ</rt></ruby>がけありがとうございます**【1】。training 1 <ruby>日<rt>にち</rt></ruby> (¥0.4M <ruby>相当<rt>そうとう</rt></ruby>) は<ruby>当初<rt>とうしょ</rt></ruby>の<ruby>契約<rt>けいやく</rt></ruby> scope <ruby>外<rt>がい</rt></ruby>となります。**<ruby>社内<rt>しゃない</rt></ruby> training をご<ruby>希望<rt>きぼう</rt></ruby>でしたら、<ruby>以下<rt>いか</rt></ruby> 2 <ruby>案<rt>あん</rt></ruby>**【2】**: (A) <ruby>有償<rt>ゆうしょう</rt></ruby>で ¥0.4M <ruby>追加<rt>ついか</rt></ruby>、(B) <ruby>既存<rt>きそん</rt></ruby> scope <ruby>内<rt>ない</rt></ruby>で AI dashboard カスタムを 1 <ruby>機能<rt>きのう</rt></ruby> trade、トータル<ruby>金額<rt>きんがく</rt></ruby><ruby>不変<rt>ふへん</rt></ruby>。」 |
|  | *Cảm ơn em đã liên hệ. Training 1 ngày (tương đương ¥0.4M) nằm ngoài scope hợp đồng ban đầu. Nếu phía em muốn training nội bộ, có 2 phương án: (A) Có phí, thêm ¥0.4M, (B) Trade 1 chức năng AI dashboard custom trong scope hiện tại, tổng tiền không đổi ạ.* |
| **L3** | **ズン** | 「**なお、<ruby>追加<rt>ついか</rt></ruby><ruby>要素<rt>ようそ</rt></ruby>のご<ruby>検討<rt>けんとう</rt></ruby>に<ruby>際<rt>さい</rt></ruByの</ruby>しては<ruby>全体<rt>ぜんたい</rt></ruby><ruby>合意<rt>ごうい</rt></ruby>の<ruby>再<rt>さい</rt></ruby> review が<ruby>必要<rt>ひつよう</rt></ruby>となるため、<ruby>契約<rt>けいやく</rt></ruby><ruby>締結<rt>ていけつ</rt></ruby>スケジュールが 1 <ruby>週間<rt>しゅうかん</rt></ruby><ruby>後<rt>うし</rt></ruby>ろ<ruby>倒<rt>だお</rt></ruby>しとなる<ruby>可能性<rt>かのうせい</rt></ruby>があります**【3】。ご<ruby>都合<rt>つごう</rt></ruby>をお<ruby>聞<rt>き</rt></ruby>かせください。」 |
|  | *Thêm nữa, để xem xét yếu tố bổ sung này thì cần review lại toàn bộ thỏa thuận, có thể lịch ký hợp đồng sẽ lùi 1 tuần. Em xin nghe ý anh ạ.* |
| **L4** | **田中PMO** | 「ご<ruby>丁寧<rt>ていねい</rt></ruby>に。<ruby>社内<rt>しゃない</rt></ruby>で<ruby>再協議<rt>さいきょうぎ</rt></ruby>し、<ruby>後<rt>のち</rt></ruby>ほど<ruby>正式<rt>せいしき</rt></ruby>に。スケジュール<ruby>優先<rt>ゆうせん</rt></ruby>で training は<ruby>当初<rt>とうしょ</rt></ruby><ruby>通<rt>どお</rt></ruById</ruby>り<ruby>無<rt>な</rt></ruby>しで<ruby>進<rt>すす</rt></ruby>めます。」 |
|  | *Cảm ơn anh chu đáo. Tôi thảo luận lại nội bộ rồi báo chính thức sau. Ưu tiên lịch, training thì giữ nguyên không thêm, mình tiếp tục như ban đầu ạ.* |

📝 **Ghi chú:**
- 【1】**Acknowledge nhẹ** "お声がけありがとうございます" — không cứng "no" ngay.
- 【2】**Trade option (A) 有償 / (B) đổi scope** — không cho miễn phí, nhưng vẫn mở đường. Khách tự quyết.
- 【3】**Reset clock** = mấu chốt. Yêu cầu mới = review lại toàn bộ thỏa thuận = lùi lịch → khách thường tự rút nibble vì sợ trễ tiến độ.

---

## 🎯 Câu chốt

> **「Nibble 無償受けはNG。trade で対応 + 全体 re-review で reset clock。schedule slip が抑止力。」**
>
> *KHÔNG nhận nibble miễn phí. Trade rồi reset clock — schedule slip làm khách tự rút.*

---

## ⚠ Tránh

- "サービスで" → mỗi lần leak ¥0.3-0.5M, nhân với nhiều lần
- Accept verbally rồi quên charge → contract dispute
- Reject cứng "無理です" → khách relationship đau
- Quên reset clock language → khách push tiếp vì biết "tăng 1 thứ free"

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ニブル | niburu | Nibble (gặm thêm) |
| 後出し | あとだし | Đưa thêm sau |
| ついでに | ついでに | Tiện thể |
| サービスで | サービスで | Khuyến mãi miễn phí |
| 全体合意 | ぜんたいごうい | Đồng thuận tổng thể |
| 後ろ倒し | うしろだおし | Đẩy lùi (deadline) |
| 抑止力 | よくしりょく | Sức răn đe |
| 再 review | さいレビュー | Review lại |
