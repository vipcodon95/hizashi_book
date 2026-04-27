# Rule 21 — Giảm scope thay vì giảm giá / 価格でなくスコープを削る

> **Luận điểm.** Giảm giá đơn ¥18M → ¥16M = -11% margin **không hồi phục được**. Giảm scope (cắt feature, lùi deliverable, giảm SLA) → giữ unit price, giảm tổng tiền — về tài chính tương đương khách, về margin của mình **giữ nguyên 26%**. Khách Nhật accept tốt khi đề xuất rõ.
>
> 「scope -10% で ¥17M」は「¥17M ベタ値引き」より粗利率を保つ。価格でなく scope を交渉軸にする習慣。
>
> **Liên quan:** rule 19 (価格提示), rule 09 (concession plan), rule 22 (bundling).

---

## Bối cảnh / 場面

CFO chọn option (A) ¥17.5M 2-year (rule 20). Nhưng 大垣 push thêm "¥16M trên 1 năm". Dũng phải counter bằng scope cut chứ không phải giảm giá thuần.

---

## ❌ Hội thoại XẤU — giảm giá thuần, mất margin

*計算なし*

| Speaker | Câu |
|---------|-----|
| **大垣** | 「中村 CFO は 2 年契約 OK、但し 1 年契約版だと ¥16M でいけませんか？」 |
| **ズン** | 「えーと、では ¥16M で。」 |
| (内部 Slack 翌日) **ハー CTO** | 「¥16M で同じ scope は粗利 14%、Phase 2 と同じスタッフ配置不可。なんで scope そのままで値引きした？」 |

**Vì sao xấu:** Giảm ¥1.5M nhưng scope vẫn nguyên → margin từ 26% xuống 14%. Internal financial pain. Đáng ra phải cắt scope tương đương để giữ margin.

---

## ✅ Hội thoại TỐT — counter bằng scope cut

| Speaker | Câu |
|---------|-----|
| **大垣** | 「中村 CFO は 2 年契約 OK、但し 1 年契約版だと ¥16M でいけませんか？」 |
| **ズン** | 「ご検討ありがとうございます。1 年契約 + ¥16M でしたら、**スコープ調整が必要**【1】になります。具体的には、AI dashboard カスタム部分 (-工数 ¥1M) + 専任 PM 半常駐化 (-工数 ¥0.5M) を Phase 4 に後出し【2】、これで ¥16M、SLA 99.5% (Better は 99.9%) も同時調整。」 |
| **大垣** | 「AI dashboard を Phase 4 に？導入後で困りますか？」 |
| **ズン** | 「AI レコメンドエンジン core は Phase 3 で稼働、dashboard は Phase 2 流用版で代替可能です。**unit price (機能あたり単価) は同等のまま、総額調整**【3】という形です。Phase 4 着手時に dashboard 追加で +¥1M、その時に再ご相談という形ではいかがでしょうか？」 |
| **大垣** | 「unit price 同等であれば社内説明しやすい。検討します。」 |

📝 **Ghi chú:**
- 【1】**「スコープ調整が必要」** — câu chuyển từ price negotiation sang scope negotiation. Giữ leverage.
- 【2】**Cắt feature có thể "後出し" Phase 4** — KHÔNG mất khách, chỉ delay revenue. Khách ringi dễ pass hơn.
- 【3】**"Unit price 同等"** = key sentence. CFO/部長 cần "internal explanation": "không bị giảm giá, chỉ giảm scope".

---

## 🎯 Câu chốt

> **「価格でなく scope を交渉軸にする。Unit price 維持で総額調整、粗利率を守る。」**
>
> *Đàm phán scope, KHÔNG đàm phán giá đơn vị. Giữ unit price, điều chỉnh tổng tiền, bảo vệ margin.*

---

## ⚠ Tránh

- Giảm giá phẳng "¥16M でいきます" → margin chết
- Cắt scope mơ hồ "ちょっと減らします" → khách không biết mất gì
- Cắt core feature (AI engine bản thể) → khách không đạt mục tiêu Phase 3 → fail
- Quên đề xuất "Phase 4 で復活" → khách feel lose forever, push back

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| スコープ | sukōpu | Scope |
| 調整 | ちょうせい | Điều chỉnh |
| 後出し | あとだし | Đẩy về sau / defer |
| カスタム部分 | kasutamuぶぶん | Phần custom |
| 半常駐 | はんじょうちゅう | Bán-túc trực |
| 単価 | たんか | Unit price |
| 同等 | どうとう | Tương đương |
| 復活 | ふっかつ | Khôi phục |
