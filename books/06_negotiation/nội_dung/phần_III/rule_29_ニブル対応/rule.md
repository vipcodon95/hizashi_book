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

| | Speaker | Câu (Slack) |
|--|---------|-----|
| **L1** | **田中PMO** | 「ズン様、お世話になっております。Phase 3 contract draft 確認しましたが、ついでに social engineer 部署向け training 1 日無料で追加可能でしょうか？」 |
| **L2** | **ズン** | 「分かりました、サービスで含めます。」 |
| **L3** | (1 週間後) **田中PMO** | 「ありがとうございます！ついでに 2 日目も追加で…」 |
| **L4** | **ズン** | 「えっ、また…？」 |

**Vì sao xấu:** Accept lần 1 → khách push lần 2, 3. Mỗi lần ¥0.3-0.5M leak. Đã sang phase contract mà vẫn drift cost.

---

## ✅ Hội thoại TỐT — trade reset + protect agreement

| | Speaker | Câu (Slack) |
|--|---------|-----|
| **L1** | **田中PMO** | 「ズン様、Phase 3 contract draft 確認しました。ついでに social engineer 部署向け training 1 日無料で追加可能でしょうか？」 |
| **L2** | **ズン** | 「**お声がけありがとうございます**【1】。training 1 日 (¥0.4M 相当) は当初の契約 scope 外となります。**社内 training をご希望でしたら、以下 2 案**【2】**: (A) 有償で ¥0.4M 追加、(B) 既存 scope 内で AI dashboard カスタムを 1 機能 trade、トータル金額不変。」 |
| **L3** | **ズン** | 「**なお、追加要素のご検討に際しては全体合意の再 review が必要となるため、契約締結スケジュールが 1 週間後ろ倒しとなる可能性があります**【3】。ご都合をお聞かせください。」 |
| **L4** | **田中PMO** | 「ご丁寧に。社内で再協議し、後ほど正式に。スケジュール優先で training は当初通り無しで進めます。」 |

📝 **Ghi chú:**
- 【1】**Acknowledge nhẹ** "お声がけありがとうございます" — không cứng "no" ngay.
- 【2】**Trade option (A) 有償 / (B) scope swap** — không cho free, nhưng cho path. Khách tự decide.
- 【3】**Reset clock** = key. Yêu cầu mới = whole agreement re-review = schedule slip → khách thường self-rescind nibble vì timing.

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
