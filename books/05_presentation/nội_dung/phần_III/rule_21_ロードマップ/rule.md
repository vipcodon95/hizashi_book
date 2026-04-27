# Rule 21 — Roadmap visualization / ロードマップ可視化

> **Luận điểm.** Roadmap = horizontal timeline với **3-4 phase × milestones × owner**. Mỗi milestone phải có ① **日付** (年月), ② **アウトプット** (成果物), ③ **責任者** (cty名 + 名前). Tránh "TBD" — show estimate confident. **マイルストーン記号** (◆ 重要 / ● 通常 / ○ 任意) cho hierarchy.
>
> ロードマップは horizontal タイムライン×3-4フェーズ×マイルストーン×責任者。各マイルストーンに 日付＋成果物＋責任者の3点必須。「TBD」 は信頼を下げる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 17 (比較マトリクス), rule 26 (closing).

---

## Bối cảnh / 場面

Slide 10 = roadmap. Dũng draft đầu — mạch text "Phase 3 は2026年5月から12月まで実施" → flat, không có milestone visual. Tuấn yêu cầu visualize.

---

## ❌ Hội thoại XẤU — text-only timeline

| Speaker | Câu |
|---------|-----|
| **トゥアン** | 「ズン、roadmap がただのテキスト？『5月開始、12月完了』だけ？」 |
| **ズン** | 「文章の方が説明しやすいかと…」 |
| **トゥアン** | 「Roadmap は **visual で見せるもの**。Phase / milestone / owner / 日付 全部入る gantt-style。テキストだと客は **計画があるか半信半疑**。」 |
| **ズン** | 「あ…テンプレート使いますか？」 |

**Vì sao xấu:** Text-only roadmap = "vendor chưa thực sự plan". Khách Nhật scrutinize timeline cực kỳ nghiêm. Visual gantt + milestone marks = "đã thực sự nghĩ tới chi tiết".

---

## ✅ Hội thoại TỐT — gantt + milestones + owner

| Speaker | Câu |
|---------|-----|
| **ズン** | 「Roadmap report テンプレで作りました【1】。**4 phase**: ①要件定義(5/15-6/30) ②設計開発(7/1-9/30) ③テスト(10/1-11/15) ④リリース移行(11/16-12/15)。**マイルストーン**: ◆要件 sign-off (6/30 / 弊社ズン＋御社松本)、◆UAT 完了 (11/15 / 弊社トゥアン＋御社田中) など5点【2】。」 |
| **トゥアン** | 「いいね、各 milestone に **owner ペア**書いてるのが良い【3】。Bottle neck どこ？」 |
| **ズン** | 「**8月の設計レビュー**(設計開発 phase 中盤)。ここで承認遅延すると全体遅れる。**buffer 1週間**を gantt に入れています。」 |
| **トゥアン** | 「Buffer 明示も重要。客は『ありえない』完璧 schedule を信じない。」 |

📝 **Ghi chú:**
- 【1】**Roadmap report テンプレ** — Gantt + milestone table + buffer note.
- 【2】**マイルストーン記号** — ◆ 重要 (sign-off, release) / ● 通常 (review, demo) / ○ 任意 (option).
- 【3】**「owner ペア」** — Vendor + client それぞれ 1名. シングル owner は責任分散できず詰まる.

---

## 🎯 Câu chốt

> **「Gantt 4 phase + 5 milestones × (日付 + 成果物 + owner pair) + buffer。TBD は信頼を下げる。」**
>
> *Gantt 4 phase + 5 milestone × (ngày + output + cặp owner) + buffer. Để TBD là mất trust.*

---

## 📐 Template Roadmap Report (đính kèm — `conversation.json:templates[0]`)

```
【プロジェクト ロードマップ】 (Phase X)

■ Gantt サマリ
                    5月  6月  7月  8月  9月  10月 11月 12月
①要件定義 (15日)    ███
②設計開発 (90日)         ████████████
③テスト (45日)                          ██████
④リリース移行(30日)                              ████

■ マイルストーン (◆重要 / ●通常 / ○任意)
| # | 記号 | 日付 | マイルストーン | 成果物 | 責任者 (vendor/client) |
|---|-----|------|--------------|--------|----------------------|
| 1 | ◆ | 6/30 | 要件定義 sign-off | 要件定義書 v1.0 | ズン / 松本 |
| 2 | ● | 8/15 | 設計レビュー | 設計書 v1.0 | トゥアン / 田中 |
| 3 | ● | 9/30 | コード完了 (feature freeze) | β版ビルド | トゥアン / 田中 |
| 4 | ◆ | 11/15 | UAT 完了 | UATレポート | トゥアン / 田中 |
| 5 | ◆ | 12/15 | 本番リリース | リリースノート | ズン / 松本 |

■ Buffer
- 設計レビュー後 1週間 (8/16-8/22) - スケジュール遅延吸収
- UAT 期間に 1週間予備 (11/8-11/15)

■ 前提条件 (Critical assumption)
- 御社のテストデータ提供は 9/15 までに
- セキュリティ監査は弊社主導で 10/1-10/15 実施
- 本番環境アクセス権限は 11/16 までに付与

■ Risk → 対策
- 要件変更時: change control プロセス (rule 20参照)
- 移行失敗時: 旧環境 parallel 3ヶ月
```

---

## ⚠ Tránh

- "TBD" / "後日連絡" trên milestone → "未準備" perception
- Single owner trên milestone → bottleneck risk
- Buffer 0 → audience không tin schedule realistic
- Milestone tất cả ◆ → hierarchy tan loãng
- Roadmap > 1 năm trên 1 slide → quá rộng, chia 2 slide
- 前提条件 (assumptions) bỏ qua → khách sau này dispute "hứa rồi"

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ロードマップ | roodomappu | Roadmap |
| マイルストーン | mairusutoon | Milestone |
| 成果物 | せいかぶつ | Output / sản phẩm |
| 要件定義 | ようけんていぎ | Định nghĩa yêu cầu |
| sign-off | sain offu | Phê duyệt cuối |
| 前提条件 | ぜんていじょうけん | Điều kiện tiên quyết |
| 移行 | いこう | Migrate |
| 半信半疑 | はんしんはんぎ | Bán tín bán nghi |
