# Rule 16 — Demo flow / デモの流れ

> **Luận điểm.** Demo trong pitch ≠ tour liệt kê tính năng. Cấu trúc 4 bước: **Setup — thiết lập cảnh (誰が何をしようとしている、30s) → User journey — hành trình người dùng (主操作、2分) → Key moment — khoảnh khắc mấu chốt (決め手、30s) → Recap — tóm lược (何が起きたか、30s)**. Tổng 3-4 phút. Tránh "全機能ツアー" — chỉ trình diễn mạch thao tác giải nỗi đau.
>
> デモ4ステップ: Setup→User journey→Key moment→Recap。3-4分以内。全機能ツアーは禁止、痛み解消の1フローだけ。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 07 (Plan B), rule 31 (技術トラブル).

---

## Bối cảnh / 場面

Tuấn (tech lead) sẽ chạy demo. Bản năng của Tuấn là trình diễn toàn bộ menu tính năng (tư duy engineer). Dũng kèm cặp trước buổi rehearsal cuối.

---

## ❌ Hội thoại XẤU — feature tour

*rehearsal*

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「では<ruby>画面<rt>がめん</rt></ruby>紹介します。これがダッシュボード、上に<ruby>検索<rt>けんさく</rt></ruby>、左にメニュー、右にカード<ruby>一覧<rt>いちらん</rt></ruby>、下にフッター…」 |
|  | *Em xin giới thiệu màn hình ạ. Đây là dashboard, trên là search, trái là menu, phải là list card, dưới là footer...* |
| **ズン** | 「兄さん、それ**ツアーガイド**になってる。客は**<ruby>機能名<rt>きのうめい</rt></ruby>を聞きに来てない**。<ruby>在庫差異<rt>ざいこさい</rt></ruby>が<ruby>解消<rt>かいしょう</rt></ruby>する flow を見せたい。」 |
|  | *Anh, kiểu này là tour guide rồi. Khách không đến để nghe tên feature đâu. Mình muốn show flow sai lệch tồn kho được giải.* |
| **トゥアン** | 「えっと…じゃあどう？」 |
|  | *Ờ... vậy phải sao?* |
| **ズン** | 「**4ステップ**でやろう。Setup→User journey→Key moment→Recap。3分で。」 |
|  | *Đi 4 bước nhé. Setup → User journey → Key moment → Recap. Trong 3 phút.* |

**Vì sao xấu:** Tour liệt kê tính năng = tư duy engineer, KHÔNG phải tư duy người mua. Người mua hỏi "có giải bài toán của em không?" chứ không phải "menu chỗ nào?". Khách Nhật phật ý vì cảm thấy "demo không tôn trọng nỗi đau của mình".

---

## ✅ Hội thoại TỐT — 4-step storyline

| Vai | Câu |
|---------|-----|
| **トゥアン** | 「**Setup**: <ruby>倉庫担当<rt>そうこたんとう</rt></ruby>の<ruby>田村<rt>たむら</rt></ruby>さんが、<ruby>季節商品<rt>きせつしょうひん</rt></ruby>の<ruby>在庫差異<rt>ざいこさい</rt></ruby>に気づきました【1】。**User journey**: ダッシュボードでアラートを<ruby>確認<rt>かくにん</rt></ruby>、<ruby>原因<rt>げんいん</rt></ruby>SKUを drill-down、<ruby>修正案<rt>しゅうせいあん</rt></ruby>を<ruby>承認<rt>しょうにん</rt></ruby>。**Key moment**【2】: <ruby>通常<rt>つうじょう</rt></ruby>2時間の<ruby>作業<rt>さぎょう</rt></ruby>が**3分で<ruby>完了<rt>かんりょう</rt></ruby>**。**Recap**: 季節商品でも差異が month-end前 に<ruby>検出<rt>けんしゅつ</rt></ruby>・修正される。」 |
|  | *Setup: Tamura-san phụ trách kho phát hiện sai lệch hàng theo mùa. User journey: kiểm tra alert trên dashboard, drill-down SKU nguyên nhân, phê duyệt phương án sửa. Key moment: việc thường mất 2 tiếng nay xong trong 3 phút. Recap: hàng theo mùa cũng được phát hiện + sửa trước month-end.* |
| **ズン** | 「Perfect。**ナレーションは私**【3】、<ruby>操作<rt>そうさ</rt></ruby>はトゥアンが、で行きましょう。」 |
|  | *Perfect. Narration em làm, thao tác anh Tuấn nhé.* |
| **トゥアン** | 「了解。Key moment で2秒 pause 入れる？<ruby>聴衆<rt>ちょうしゅう</rt></ruby>に<ruby>効果実感<rt>こうかじっかん</rt></ruby>させる用に。」 |
|  | *OK. Tại key moment thêm 2 giây pause được không? Để cho khán giả cảm hiệu quả.* |
| **ズン** | 「いいアイデア。『**ここがポイントです**』って<ruby>一言<rt>ひとこと</rt></ruby>入れて、2秒間。」 |
|  | *Ý hay. Em sẽ nói câu 「Đây là điểm mấu chốt」 rồi pause 2 giây.* |

📝 **Ghi chú:**
- 【1】**Setup =「人物 + 状況 + 目的」** — Có tên persona (田村さん) thì độ nhập tâm cao. Demo không tên nhân vật thì yếu.
- 【2】**Key moment =「pain解消の瞬間」** — đối chiếu số "通常X → 今Y". 1 demo chỉ 1 khoảnh khắc mấu chốt.
- 【3】**「ナレーションは私」** — phân vai co-presenter. Tách người thao tác với người dẫn (narration) thì mạch demo mượt. Tham chiếu chéo sách 03 rule 32.

---

## 🎯 Câu chốt

> **「Setup → User journey → Key moment → Recap。3-4分。Persona 名前あり、Key moment は数字対比、ナレ＋操作は分担。」**
>
> *4 bước, 3-4 phút. Persona có tên, key moment có số đối chiếu, narrator + thao tác chia hai người.*

---

## 📐 Demo Script Template (per scenario)

```
【Setup】(30秒)
- 主人公: 〇〇さん (役職・部門)
- 状況: 〇〇という業務課題に直面
- 目的: 〇〇を達成したい

【User Journey】(2分)
- ステップ1: 画面〇〇でログイン → 〇〇を確認
- ステップ2: 〇〇を選択 → 〇〇を実行
- ステップ3: 結果が画面に反映 → 承認

【Key Moment】(30秒)
- 通常〇〇分かかる作業が、〇〇分で完了
- (2秒 pause + 「ここがポイントです」)

【Recap】(30秒)
- 「結果として、〇〇という効果が得られます」
- 元の課題への対応を再確認
- 次スライドへ繋ぐ: 「では、料金とスケジュールに移ります」
```

---

## ⚠ Tránh

- Tour liệt kê tính năng ("メニューがここに、ボタンがここに")
- Persona không tên / không bối cảnh — mạch demo tan loãng
- Demo > 5 phút — đối tượng nghe mất tập trung
- Gọi API trực tiếp mà không có bản dự phòng offline (xem rule 07)
- Thiếu Recap → người nghe không nắm "đã được gì"
- Co-presenter ứng biến tùy hứng → thuật ngữ kỹ thuật ngược / thiếu ăn khớp

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| ナレーション | nareeshon | Narration / lồng tiếng |
| 操作 | そうさ | Thao tác |
| 承認 | しょうにん | Phê duyệt |
| 検出 | けんしゅつ | Phát hiện |
| 倉庫担当 | そうこたんとう | Phụ trách kho |
| 効果実感 | こうかじっかん | Cảm nhận hiệu quả |
| 対比 | たいひ | Đối chiếu |
