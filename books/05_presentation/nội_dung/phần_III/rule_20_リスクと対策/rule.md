# Rule 20 — Risk & mitigation / リスクと対策

> **Luận điểm.** Show **3-5 risk** với **対策 cụ thể**. Vendor che giấu rủi ro = JP business cảnh báo lớn nhất. Cấu trúc table: **リスク** | **発生確率 (高/中/低)** | **影響度** | **対策**. Tránh "リスクはございません" — đó là lie + amateur signal. "リスク0" = "vendor未経験".
>
> 3-5 リスクを発生確率＋影響度＋対策付きで開示。『リスクなし』はlieであり信頼の決定的損失。「気づいてない vendor」と判断される。
>
> **Liên quan:** rule 17 (比較マトリクス), rule 19 (価格), rule 23 (難しい質問).

---

## Bối cảnh / 場面

Slide 9 = risk slide. Linh draft → ghi "リスクは特にございません" theo bản năng "đừng làm khách lo". Dũng correct ngay.

---

## ❌ Hội thoại XẤU — "リスクなし"

*slide draft*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**リスク特になし**、安心してご利用いただけます！と書きました。」 |
| **ズン** | 「ストップ。それ**信頼の自殺行為**。**プロジェクトに『リスクなし』はあり得ない**。書いた瞬間、客は『この vendor 経験ない or 嘘ついてる』のどちらかと判断する。」 |
| **リン** | 「えっ、客が嫌がると思って…」 |
| **ズン** | 「**逆**。リスクを**正直に出す + 対策セット**で出す方が信頼される。**3-5個 + 各対策**が標準。」 |

**Vì sao xấu:** "リスクなし" = signal "未経験 / 嘘". Khách Nhật seasoned biết プロジェクトに必ずリスクある — vendor che giấu = "thiếu honesty / capability". Trust dropped immediate.

---

## ✅ Hội thoại TỐT — 4 risks + concrete mitigation

*revised*

| Speaker | Câu |
|---------|-----|
| **リン** | 「**4リスク**を出しました【1】。①インフラ移行 (確率中・影響大) → 対策: 旧環境 parallel 3ヶ月。②データ移行欠損 (中・大) → リコンサイル日次監査。③KPI未達 (低・中) → 月次見直し再計画権利。④保守要員依存 (低・中) → 2名以上の training。」 |
| **ズン** | 「Perfect。**確率と影響を別評価**してるのが良い【2】。確率低 + 影響大は別 column で highlight。」 |
| **リン** | 「**赤色マーク**は『確率高×影響大』のセル？」 |
| **ズン** | 「うん、**赤は『要警戒』マーク専用**【3】(rule 05 cross-ref)。ここなら赤の使い方として適切。」 |

📝 **Ghi chú:**
- 【1】**4-5 リスク** — 3個少ない、6個以上希薄化. 4-5個が sweet spot.
- 【2】**確率 × 影響** — 2軸 evaluation. 「確率低 + 影響大」 が一番見落とされがちで重要.
- 【3】**「赤は要警戒専用」** — Rule 05 (色彩) との整合. 装飾の赤は禁止だが warning の赤は OK.

---

## 🎯 Câu chốt

> **「3-5リスク × 確率 × 影響 × 対策。『リスクなし』は信頼の自殺。」**
>
> *3-5 rủi ro × xác suất × tác động × đối sách. "Không rủi ro" = tự sát trust.*

---

## 📐 Risk Matrix Template

| # | リスク | 発生確率 | 影響度 | 対策 |
|---|-------|---------|-------|------|
| 1 | インフラ移行失敗 | 中 | 大 | 旧環境 parallel 3ヶ月 |
| 2 | データ移行欠損 | 中 | 大 | 日次リコンサイル監査 |
| 3 | KPI未達 | 低 | 中 | 月次見直し + 再計画権利 |
| 4 | 保守要員依存 | 低 | 中 | 2名以上の cross-training |
| 5 | 季節商品再発 | 中 | 中 | ML model 月次再学習 |

---

## ⚠ Tránh

- "リスクなし" / "ご安心ください" → trust suicide
- Risk vague ("色々あります") → useless
- 対策 chỉ có 1 risk → looks selective
- 対策 vague ("適切に対応") → no commitment
- 6+ risks → audience overload
- Risk gồm "ベンダー側のリスク" only → cần balance + bao gồm "クライアント側" (e.g. data quality, decision延期)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 発生確率 | はっせいかくりつ | Xác suất xảy ra |
| 影響度 | えいきょうど | Mức độ ảnh hưởng |
| 対策 | たいさく | Đối sách |
| 監査 | かんさ | Kiểm toán / audit |
| 並行 (parallel) | へいこう | Song song |
| 移行 | いこう | Di chuyển / migrate |
| 欠損 | けっそん | Thiếu / mất mát |
| 要警戒 | ようけいかい | Cần cảnh giác |
