# Rule 06 — 3-tier proposal: Good / Better / Best / 3段階提案

> **Luận điểm.** Đưa **1 giá duy nhất** = khách bị bắt yes/no. Đưa **3 tier (Good / Better / Best)** = khách so sánh nội bộ → kiến trúc lựa chọn (choice architecture) nghiêng về Better (hiệu ứng mồi / decoy effect). 95% khách Nhật sẽ chọn tier giữa nếu cấu trúc đúng.
>
> 1価格提示は yes/no を迫る。3段階提案 (Good/Better/Best) は社内比較を促し、**中間案 (Better) が選ばれる確率を高める**。Phase 3 のような戦略案件は必ず 3 段階で出す。
>
> **Liên quan:** rule 05 (価格戦略), rule 19 (価格提示フレーズ), rule 21 (scope削り).

---

## Bối cảnh / 場面

Họp với Hà CTO + Hương + Tuấn xong, Dũng cần soạn proposal deck. Hương yêu cầu bắt buộc 3-tier. Dũng làm draft đầu, gửi review.

---

## ❌ Hội thoại XẤU — 1 tier duy nhất

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、提案 deck draft、<ruby>価格<rt>かかく</rt></ruby> ¥18M で1 案にまとめました。」 |
|  | *Chị Hương, draft deck đề xuất em làm 1 phương án ¥18M ạ.* |
| **フオン** | 「1 案だけ？<ruby>大垣<rt>おおがき</rt></ruby>さんは<ruby>社内<rt>しゃない</rt></ruby>で<ruby>比較<rt>ひかく</rt></ruby>できないし、yes か no しかなくなる。**no が出たら戻れない**。3 <ruby>段階<rt>だんかい</rt></ruby>で作り直して。」 |
|  | *Chỉ 1 phương án? Anh Ōgaki không có gì so nội bộ, chỉ còn yes/no. No là không quay lại được. Làm lại 3-tier đi.* |
| **ズン** | 「3 段階だと安い方を選ばれませんか？」 |
|  | *3 tier thì khách chọn cái rẻ thì sao chị?* |
| **フオン** | 「**逆。<ruby>中間案<rt>ちゅうかんあん</rt></ruby>を一番<ruby>魅力的<rt>みりょくてき</rt></ruby>に設計**すれば、Better が選ばれる。Good は<ruby>機能削減<rt>きのうさくげん</rt></ruby>で『これじゃ意味ない』感、Best は scope <ruby>拡張<rt>かくちょう</rt></ruby>で『高すぎる』感を出す。これ choice architecture。」 |
|  | *Ngược lại. Thiết kế tier giữa hấp dẫn nhất là khách chọn Better. Good cắt feature kiểu 'cái này không đáng', Best mở rộng scope kiểu 'đắt quá'. Đó là choice architecture.* |

**Vì sao xấu:** 1 tier = ép chọn yes/no. Khách không có chỗ "thoả hiệp lịch sự" trong nội bộ ringi → xác suất bị từ chối tăng. Mất cơ hội định khung Better thành "phương án giá trị tốt nhất trong mắt khách".

---

## ✅ Hội thoại TỐT — 3-tier deck với Better làm trung tâm

| Vai | Câu |
|---------|-----|
| **ズン** | 「3 <ruby>段階提案<rt>だんかいていあん</rt></ruby>を作成しました。Good ¥14M / Better ¥18M / Best ¥24M。**Better を recommended 表示**【1】、Good は AI engine なし basic 版、Best は<ruby>専任<rt>せんにん</rt></ruby> SRE 含む full 版です。」 |
|  | *Em đã tạo 3-tier ạ. Good ¥14M / Better ¥18M / Best ¥24M. Better đánh dấu 'recommended', Good là bản basic không AI engine, Best là full kèm SRE chuyên trách ạ.* |
| **フオン** | 「Good の<ruby>機能削減<rt>きのうさくげん</rt></ruby>は？」 |
|  | *Phần cắt chức năng của Good là gì?* |
| **ズン** | 「Good は AI レコメンドなし、SLA 99.5% (Better は 99.9%)、サポート<ruby>営業時間<rt>えいぎょうじかん</rt></ruby>のみ【2】。<ruby>白鷗<rt>はくおう</rt></ruby>の Phase 3 目的『<ruby>売上<rt>うりあげ</rt></ruby> +¥80M』には<ruby>実質<rt>じっしつ</rt></ruby>届かない設計。」 |
|  | *Good không có AI recommend, SLA 99.5% (Better 99.9%), support chỉ trong giờ hành chính. Thiết kế thực chất không đạt mục tiêu Phase 3 'doanh thu +¥80M' của Hakuō ạ.* |
| **フオン** | 「Best は？」 |
|  | *Còn Best?* |
| **ズン** | 「Best は<ruby>専任<rt>せんにん</rt></ruby> SRE 1 名<ruby>常駐<rt>じょうちゅう</rt></ruby>、SLA 99.99%、24/7 サポート、<ruby>優先機能開発<rt>ゆうせんきのうかいはつ</rt></ruby>【3】。CFO <ruby>中村<rt>なかむら</rt></ruby>さんの『コスト<ruby>圧縮<rt>あっしゅく</rt></ruby>』トーンに照らすと『出しすぎ』感を出す設計です。」 |
|  | *Best có 1 SRE chuyên trách túc trực, SLA 99.99%, support 24/7, ưu tiên dev feature. Đối chiếu tone 'nén chi phí' của CFO Nakamura, thiết kế để cảm 'chi quá tay' ạ.* |
| **フオン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。**Better が『<ruby>現実解<rt>げんじつかい</rt></ruby>』に見える<ruby>構造<rt>こうぞう</rt></ruby>**。明日のキックオフで使おう。」 |
|  | *Hoàn hảo. Cấu trúc khiến Better hiện ra như 'phương án thực tế'. Mai kickoff dùng cái này.* |

📝 **Ghi chú:**
- 【1】**Dấu "Recommended"** — chữ "おすすめ"/"推奨" trên ô Better, nghiên cứu trải nghiệm người dùng cho thấy tỷ lệ chốt tăng +35%.
- 【2】**Good cố ý làm yếu** — KHÔNG phải Good là "rẻ và ổn", phải là "rẻ nhưng thiếu cái khách cần" → khách tự loại.
- 【3】**Best cố ý làm dư** — vượt mức cần thiết để Better thành "vừa phải". Best vẫn phải là thương vụ thật nếu khách chọn (không phải lựa chọn giả / phương án bẫy).

---

## 🎯 Câu chốt

> **「Good/Better/Best の3<ruby>段階<rt>だんかい</rt></ruby>で、<ruby>中間案<rt>ちゅうかんあん</rt></ruby>を最も<ruby>魅力的<rt>みりょくてき</rt></ruby>に<ruby>設計<rt>せっけい</rt></ruby>する。」**
>
> *3 tier Good/Better/Best, design Better đẹp nhất.*

---

## ⚠ Tránh

- 3 tier mà tier giữa không hấp dẫn → khách chọn Good (giá thấp, lỗ vốn)
- Best phi thực tế đến mức khách cười → mất uy tín
- Quên đánh dấu "Recommended" / "おすすめ" trên Better → mất hơn 30% hiệu quả
- Đặt khoảng cách giá đều (vd: ¥14M / ¥18M / ¥22M cách đều ¥4M) → không tận dụng được hiệu ứng mồi. Khoảng cách không đều giúp Better nổi bật hơn.

---

## 📐 Template — 3-tier Proposal Sheet

(xem conversation.json field `templates` → `rule_06_tpl_01` cho full format)

---

## 📚 Vocab

| 漢字 / Tiếng Nhật | よみ | Nghĩa |
|------|------|-------|
| 3段階提案 | さんだんかいていあん | 3-tier proposal |
| 推奨 / おすすめ | すいしょう | Recommended |
| 中間案 | ちゅうかんあん | Phương án giữa |
| 専任 | せんにん | Chuyên trách / dedicated |
| 常駐 | じょうちゅう | Túc trực / on-site |
| 機能削減 | きのうさくげん | Cắt giảm chức năng |
| 比較表 | ひかくひょう | Bảng so sánh |
