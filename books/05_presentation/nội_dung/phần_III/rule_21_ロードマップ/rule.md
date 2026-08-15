# Rule 21 — Trực quan hóa lộ trình / ロードマップ可視化

> **Luận điểm.** Lộ trình = tiến độ ngang với **3-4 phase × mốc × người phụ trách**. Mỗi mốc phải có ① **日付** (年月), ② **アウトプット** (成果物), ③ **責任者** (tên cty + tên người). Tránh "TBD" — đưa ước lượng dứt khoát, tự tin. **マイルストーン記号** (◆ 重要 / ● 通常 / ○ 任意) để thể hiện phân cấp.
>
> ロードマップは horizontal タイムライン×3-4フェーズ×マイルストーン×責任者。各マイルストーンに 日付＋成果物＋責任者の3点必須。「TBD」 は信頼を下げる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 17 (比較マトリクス), rule 26 (kết thúc).

---

## Bối cảnh / 場面

Slide 10 = lộ trình. Dũng thảo nháp đầu tiên — chỉ có văn bản "Phase 3 は2026年5月から12月まで実施" → phẳng lì, không có trực quan hóa mốc. Tuấn yêu cầu trực quan hoá.

---

## Hội thoại XẤU — tiến độ chỉ có văn bản

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「ズン、roadmap がただのテキスト？『5月<ruby>開始<rt>かいし</rt></ruby>、12月<ruby>完了<rt>かんりょう</rt></ruby>』だけ？」 <br/>*Dũng, lộ trình chỉ là văn bản à? Chỉ có 「bắt đầu tháng 5, xong tháng 12」?* |
| **ズン** | 「<ruby>文章<rt>ぶんしょう</rt></ruby>の方が<ruby>説明<rt>せつめい</rt></ruby>しやすいかと…」 <br/>*Em nghĩ văn xuôi dễ giải thích hơn ạ...* |
| **トゥアン** | 「Roadmap は **visual で見せるもの**。Phase / milestone / owner / 日付 全部入る gantt-style。テキストだと客は **計画があるか<ruby>半信半疑<rt>はんしんはんぎ</rt></ruby>**。」 <br/>*Lộ trình là phải trực quan hóa. Phase / mốc / người phụ trách / ngày — tất cả vào dạng Gantt. Văn bản thì khách bán tín bán nghi 「có kế hoạch không vậy」.* |
| **ズン** | 「あ…テンプレート使いますか？」 <br/>*À... em dùng mẫu có sẵn ạ?* |

**Vì sao xấu:** Lộ trình chỉ có văn bản = "bên cung cấp chưa thực sự lập kế hoạch". Khách Nhật soi tiến độ cực kỳ nghiêm. Visual Gantt + dấu mốc = "đã thực sự nghĩ tới chi tiết".

---

## Hội thoại TỐT — Gantt + mốc + người phụ trách

| Vai | Câu |
|---------|-----|
| **ズン** | 「Roadmap report テンプレで作りました【1】。**4 phase**: ①<ruby>要件定義<rt>ようけんていぎ</rt></ruby>(5/15-6/30) ②<ruby>設計<rt>せっけい</rt></ruby>開発(7/1-9/30) ③テスト(10/1-11/15) ④リリース<ruby>移行<rt>いこう</rt></ruby>(11/16-12/15)。**マイルストーン**: ◆要件 sign-off (6/30 / <ruby>弊社<rt>へいしゃ</rt></ruby>ズン＋<ruby>御社<rt>おんしゃ</rt></ruby><ruby>松本<rt>まつもと</rt></ruby>)、◆UAT 完了 (11/15 / 弊社トゥアン＋御社<ruby>田中<rt>たなか</rt></ruby>) など5点【2】。」 <br/>*Em làm theo mẫu báo cáo lộ trình ạ. 4 phase: ① định nghĩa yêu cầu (15/5-30/6) ② thiết kế + phát triển (1/7-30/9) ③ kiểm thử (1/10-15/11) ④ phát hành chuyển đổi (16/11-15/12). Mốc: ◆ phê duyệt yêu cầu (30/6 / Dũng bên em + Matsumoto bên quý vị), ◆ UAT xong (15/11 / Tuấn bên em + Tanaka bên quý vị) — tổng 5 cái.* |
| **トゥアン** | 「いいね、各 milestone に **owner ペア**書いてるのが良い【3】。Bottle neck どこ？」 <br/>*Tốt, viết cặp người phụ trách cho mỗi mốc là điểm hay. Điểm tắc nghẽn ở đâu?* |
| **ズン** | 「**8月の<ruby>設計<rt>せっけい</rt></ruby>レビュー**(設計開発 phase 中盤)。ここで<ruby>承認<rt>しょうにん</rt></ruby><ruby>遅延<rt>ちえん</rt></ruby>すると<ruby>全体<rt>ぜんたい</rt></ruby><ruby>遅<rt>おく</rt></ruby>れる。**buffer 1週間**を gantt に入れています。」 <br/>*Duyệt thiết kế tháng 8 (giữa phase thiết kế + phát triển) ạ. Nếu phê duyệt trễ ở đây thì cả tổng thể trễ. Em đã cho dự phòng 1 tuần vào Gantt rồi ạ.* |
| **トゥアン** | 「Buffer 明示も重要。客は『ありえない』完璧 schedule を信じない。」 <br/>*Thể hiện dự phòng cũng quan trọng. Khách không tin lịch 「hoàn hảo không tưởng」 đâu.* |

📝 **Ghi chú:**
- 【1】**Roadmap report テンプレ** — Gantt + bảng mốc + ghi chú dự phòng.
- 【2】**マイルストーン記号** — ◆ 重要 (sign-off, release) / ● 通常 (review, demo) / ○ 任意 (option).
- 【3】**「Cặp người phụ trách」** — Bên cung cấp + bên khách mỗi bên 1 người. Chỉ 1 người phụ trách thì không phân tán được trách nhiệm, dễ tắc.

---

## Câu chốt

> **「Gantt 4 phase + 5 milestones × (日付 + 成果物 + owner pair) + buffer。TBD は信頼を下げる。」**
>
> *Gantt 4 phase + 5 mốc × (ngày + đầu ra + cặp người phụ trách) + dự phòng. Để TBD là mất lòng tin.*

---

## Mẫu Báo cáo Lộ trình

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

## Tránh

- "TBD" / "後日連絡" trên mốc → khách cảm nhận "chưa chuẩn bị"
- Chỉ 1 người phụ trách trên mốc → nguy cơ tắc nghẽn
- Dự phòng 0 → đối tượng nghe không tin lịch sát thực tế
- Tất cả mốc đều ◆ → phân cấp tan loãng
- Lộ trình > 1 năm trên 1 slide → quá rộng, chia 2 slide
- 前提条件 (điều kiện tiên quyết) bỏ qua → khách sau này tranh cãi "hứa rồi"

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| ロードマップ | ロードマップ | — | Lộ trình |
| マイルストーン | マイルストーン | — | Mốc tiến độ |
| 成果物 | せいかぶつ | THÀNH QUẢ VẬT | Đầu ra / sản phẩm |
| 要件定義 | ようけんていぎ | YẾU KIỆN ĐỊNH NGHĨA | Định nghĩa yêu cầu |
| sign-off | sign-off | — | Phê duyệt cuối |
| 前提条件 | ぜんていじょうけん | TIỀN ĐỀ ĐIỀU KIỆN | Điều kiện tiên quyết |
| 移行 | いこう | DI HÀNH | Chuyển đổi / di chuyển |
| 半信半疑 | はんしんはんぎ | BÁN TÍN BÁN NGHI | Bán tín bán nghi |
