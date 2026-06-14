# Rule 04 — Visual hierarchy & font / 視覚階層・フォント

> **Luận điểm.** Slide tốt phải có **3 cấp thị giác**: (1) Title 32-40pt, (2) Sub-message 24-28pt, (3) Body 18-22pt. Font Nhật mặc định: **Meiryo / 游ゴシック** (sans). Tránh MS明朝 (mảnh, khó đọc projector). Căn lề phải **trục trái**, không căn giữa bừa.
>
> 視覚階層は3段階。タイトル(32-40pt) > サブメッセージ(24-28pt) > 本文(18-22pt)。日本語フォントはMeiryo/游ゴシック推奨、明朝は projector で潰れる。
>
> **Liên quan:** rule 02 (1-slide-1-message), rule 05 (色彩心理), rule 06 (10-20-30).

---

## Bối cảnh / 場面

Dũng làm slide với mọi text 18pt + căn giữa + font MS Mincho mặc định. Hương xem rehearsal trên projector, nhìn từ hàng cuối thấy mờ + lộn xộn.

---

## ❌ Hội thoại XẤU — flat hierarchy

*後列から*

| Vai | Câu |
|---------|-----|
| **フオン** | 「ズン、<ruby>後<rt>うし</rt></ruby>ろからタイトル<ruby>読<rt>よ</rt></ruby>めない。<ruby>何<rt>なん</rt></ruby>ポイント？」 |
|  | *Dũng, ngồi sau chị không đọc được title. Mấy point thế?* |
| **ズン** | 「<ruby>全部<rt>ぜんぶ</rt></ruby>18ポイントです。<ruby>情報<rt>じょうほう</rt></ruby>を<ruby>入<rt>い</rt></ruby>れたかったので…」 |
|  | *Em để hết 18 point ạ. Vì muốn nhồi thông tin vào...* |
| **フオン** | 「<ruby>全部<rt>ぜんぶ</rt></ruby><ruby>同<rt>おな</rt></ruby>じサイズ＝**<ruby>階層<rt>かいそう</rt></ruby>がない**。<ruby>聴衆<rt>ちょうしゅう</rt></ruby>はどこを<ruby>見<rt>み</rt></ruby>ればいいか<ruby>分<rt>わ</rt></ruby>からない。それと**<ruby>MS明朝<rt>エムエスみんちょう</rt></ruby>**？プロジェクターで<ruby>潰<rt>つぶ</rt></ruby>れる。」 |
|  | *Cùng size hết = không có cấp bậc. Khán giả không biết nhìn vào đâu. Với cả MS Mincho à? Lên projector là mờ đấy.* |
| **ズン** | 「あ…デフォルトのまま<ruby>使<rt>つか</rt></ruby>っていました…」 |
|  | *À... em để default luôn ạ...* |

**Vì sao xấu:** Phân cấp phẳng = không có dẫn hướng thị giác. 18pt cho title quá nhỏ trên projector từ hàng cuối. MS明朝 (serif) bị mảnh, projector không đủ độ tương phản.

---

## ✅ Hội thoại TỐT — 3-level hierarchy

*後列で確認*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**チェックリスト**で<ruby>全<rt>ぜん</rt></ruby>スライド<ruby>見直<rt>みなお</rt></ruby>しました【1】。タイトル36pt、サブ24pt、<ruby>本文<rt>ほんぶん</rt></ruby>20pt、フォントは**Meiryo**<ruby>統一<rt>とういつ</rt></ruby>です。」 |
|  | *Em đã review toàn slide theo checklist ạ. Title 36pt, sub 24pt, body 20pt, font thống nhất Meiryo ạ.* |
| **フオン** | 「うん、<ruby>後<rt>うし</rt></ruby>ろからタイトル<ruby>読<rt>よ</rt></ruby>める。<ruby>本文<rt>ほんぶん</rt></ruby>はギリギリ。<ruby>図表<rt>ずひょう</rt></ruby>のラベルは<ruby>何<rt>なん</rt></ruby>pt？」 |
|  | *Ờ, từ sau đọc được title rồi. Body thì sát giới hạn. Label biểu đồ mấy point?* |
| **ズン** | 「ラベル14pt でした…20pt<ruby>以上<rt>いじょう</rt></ruby>に<ruby>上<rt>あ</rt></ruby>げます【2】。」 |
|  | *Label đang 14pt ạ... em sẽ chỉnh lên 20pt+ ạ.* |
| **フオン** | 「お<ruby>願<rt>ねが</rt></ruby>い。それと**alignment は<ruby>左揃<rt>ひだりぞろ</rt></ruby>え**。<ruby>中央揃<rt>ちゅうおうぞろ</rt></ruby>えは<ruby>見出<rt>みだ</rt></ruby>しだけ、<ruby>本文<rt>ほんぶん</rt></ruby>はNG。」 |
|  | *Em làm giúp chị. Với cả alignment để trái. Center chỉ dùng cho heading, body NG.* |

📝 **Ghi chú:**
- 【1】**チェックリスト** — Checklist phân cấp thị giác (xem template). Áp dụng trên TOÀN bộ deck trước khi rehearsal.
- 【2】**「ラベル14pt」** — Lỗi phổ biến: label biểu đồ nhỏ vì để mặc định tự động. Phải cưỡng chế chỉnh lên 20pt+.

---

## 🎯 Câu chốt

> **「タイトル36-40pt、<ruby>本文<rt>ほんぶん</rt></ruby>20-24pt、<ruby>最小<rt>さいしょう</rt></ruby>20pt。Meiryo / <ruby>游<rt>ゆう</rt></ruby>ゴシックで<ruby>左揃<rt>ひだりぞろ</rt></ruby>え。」**
>
> *Title 36-40pt, body 20-24pt, không nhỏ hơn 20pt. Sans-serif Nhật, left-align.*

---

## 📐 Template Checklist 視覚階層 (đính kèm — `conversation.json:templates[0]`)

```
【視覚階層チェックリスト】

□ タイトル 32-40pt (Bold)
□ サブメッセージ 24-28pt
□ 本文 (Bullet/根拠) 20-24pt
□ 図表ラベル 18pt 以上 (NG: 14pt以下)
□ フッター/ページ番号 12-14pt

□ フォント統一: Meiryo / 游ゴシック / Noto Sans JP
□ MS明朝・MSゴシック使用禁止 (古い・潰れる)
□ 英数字フォント: Arial / Helvetica / Segoe UI

□ Alignment 左揃え (見出しのみ中央可)
□ 行間 1.3-1.5
□ 余白 上下左右 5%以上

□ コントラスト比: 文字vs背景 4.5:1 以上
□ 背景: 白 or 薄グレー (#F5F5F5)
□ 太字使用は1スライド3箇所以内

□ プロジェクター確認: 後列から読めるか実機テスト
```

---

## ⚠ Tránh

- Toàn bộ text cùng size → không có phân cấp
- Căn giữa body text → mắt dò lộn xộn
- MS明朝 / Times New Roman trên projector → mảnh + mờ
- Label biểu đồ < 18pt → khán giả không đọc nổi
- Bold quá nhiều → hết tác dụng nhấn mạnh

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 視覚階層 | しかくかいそう | Visual hierarchy |
| フォント | fonto | Font |
| 揃え | そろえ | Alignment |
| 余白 | よはく | Margin / white space |
| 行間 | ぎょうかん | Line spacing |
| 潰れる | つぶれる | Bị bể / mờ (chữ) |
| プロジェクター | purojekutaa | Máy chiếu |
