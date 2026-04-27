# Rule 26 — Mang sẵn nhiều phương án / 複数案を持参

> **Luận điểm.** Tham vấn 1 option = "duyệt giùm em" (đẩy quyết định). Tham vấn 2-3 options + pros/cons = "em đã suy nghĩ, sếp giúp chọn axis quan trọng nhất". Quy tắc: **tối thiểu 2, lý tưởng 3 options. Mỗi option có ① cost ② time ③ risk được lượng hóa**. Trong 3 options nên có 1 "**recommend案**" — option Dũng đề xuất + lý do.
>
> 相談には2〜3案を持参。各案にコスト・時間・リスクを定量化。1案だけは『判子押して』のサインで真の相談ではない。
>
> **Liên quan:** rule 23 (準備), rule 25 (判断材料), rule 30 (持ち帰り).

---

## Bối cảnh / 場面

Em Hải tham vấn anh Tuấn về việc khắc phục bug performance API. Lần đầu Hải mang 1 phương án đến. Lần 2 chuẩn bị 3 options với pros/cons + recommend.

---

## ❌ Hội thoại XẤU — 1 phương án

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、API 遅延の件、Redis キャッシュ追加で解決したいんですが、いいですか?」 |
| **トゥアン** | 「それしか考えてないの?他の選択肢は?」 |
| **ハイ** | 「えっと、これが一番速いかと…」 |
| **トゥアン** | 「Redis 追加はインフラコスト+運用コストが乗る。クエリ最適化やインデックス追加で済む可能性もある。**最低3案** 持ってきて、コスト・時間・リスクを並べて比較。」 |

**Vì sao xấu:** L1 chỉ 1 option = không phải tham vấn mà là xin duyệt. L2 anh Tuấn hỏi axis đáng lẽ Hải tự nghĩ. L4 chỉ ra: cần 3 options + 3 trục so sánh.

---

## ✅ Hội thoại TỐT — 3 options + matrix

| Speaker | Câu |
|---------|-----|
| **ハイ** | 「トゥアンさん、API 遅延の対応案を3つ準備しました。コスト・時間・リスクで比較しております【1】。」 |
| **トゥアン** | 「いいね、見ます。」 |
| **ハイ** | (画面共有) 「**案A: クエリ最適化** — コスト¥0、期間2日、リスク低 (既存ロジックに影響少)。**案B: インデックス追加** — コスト¥0、期間半日、リスク中 (本番デプロイ時の lock 時間)。**案C: Redis キャッシュ** — コスト+¥3万/月、期間5日、リスク高 (運用工数増 + キャッシュ不整合)【2】。」 |
| **ハイ** | 「**推奨は案B (インデックス追加)** です。理由は半日で実装可能 + 既に index 候補が `EXPLAIN` で特定済み + コスト増なしのためです。リスク中はメンテナンスウィンドウで吸収可能と考えております【3】。」 |
| **トゥアン** | 「分析正しい。Bで進めて。ただ、メンテナンスウィンドウは松本様の許可が要るから、ズンに依頼してね。」 |

📝 **Ghi chú:**
- 【1】**「3つ準備、コスト・時間・リスクで比較」** — câu mở show ngay format. Anh Tuấn biết chuẩn bị nghiêm túc.
- 【2】**Matrix 3×3** — 3 options × 3 trục (cost / time / risk). Định lượng: ¥0, 2 ngày, low. Không 「ほぼ」「だいたい」.
- 【3】**「推奨は案B」 + lý do** — Dũng/Hải đã có ý kiến. Sếp confirm hoặc thách thức, không phải nghĩ thay.

---

## 🎯 Matrix template

```
                  | Cost      | Time   | Risk          | Notes
─────────────────┼───────────┼────────┼───────────────┼─────────────────
案A: 〇〇          | ¥〇      | 〇日   | 低/中/高     | 〇〇
案B: 〇〇 ⭐推奨  | ¥〇      | 〇日   | 低/中/高     | 〇〇
案C: 〇〇          | ¥〇      | 〇日   | 低/中/高     | 〇〇
```

---

## 🎯 Câu chốt

> **「最低2案、理想は3案。各案にコスト・時間・リスクを定量化。1案は『推奨』マーク + 理由 1〜2行。」**

---

## ⚠ Tránh

- 1 option duy nhất → không phải tham vấn, là xin duyệt.
- 3 options nhưng 2 cái dummy (rõ ràng tệ) — sếp nhận ra ngay là gian lận.
- 「リスク低」「コスト安い」 mơ hồ — phải số ¥, ngày, %.
- Recommend yếu kiểu 「どれでもいいです」 — không có ý kiến = không suy nghĩ.

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 複数案 | ふくすうあん | Nhiều phương án |
| 持参 | じさん | Mang theo |
| 推奨 | すいしょう | Đề xuất / khuyên dùng |
| 比較 | ひかく | So sánh |
| 定量化 | ていりょうか | Định lượng |
| 運用工数 | うんようこうすう | Chi phí vận hành (giờ) |
| メンテナンスウィンドウ | maintenance window | Cửa sổ bảo trì |
| 不整合 | ふせいごう | Không nhất quán |
