# Rule 06 — Đề xuất 3 bậc: Good / Better / Best / 3段階提案

> **Luận điểm.** Đưa **1 giá duy nhất** = khách bị bắt có/không. Đưa **3 bậc (Cơ bản / Tiêu chuẩn / Cao cấp)** = khách so sánh nội bộ → kiến trúc lựa chọn nghiêng về bậc giữa (hiệu ứng mồi nhử). 95% khách Nhật sẽ chọn bậc giữa nếu cấu trúc đúng.
>
> 1価格提示は yes/no を迫る。3段階提案 (Good/Better/Best) は社内比較を促し、**中間案 (Better) が選ばれる確率を高める**。Phase 3 のような戦略案件は必ず 3 段階で出す。
>
> **Liên quan:** rule 05 (chiến lược giá), rule 19 (cách trình bày giá), rule 21 (cắt giảm phạm vi).

---

## Bối cảnh / 場面

Họp với Hà CTO + Hương + Tuấn xong, Dũng cần soạn bản đề xuất. Hương yêu cầu bắt buộc 3 bậc. Dũng làm phác thảo đầu, gửi xem lại.

---

## Hội thoại XẤU — 1 bậc duy nhất

| Vai | Câu |
|---------|-----|
| **ズン** | 「フオン<ruby>副部長<rt>ふくぶちょう</rt></ruby>、提案 deck draft、<ruby>価格<rt>かかく</rt></ruby> ¥18M で1 案にまとめました。」 <br/>*Chị Hương, bản phác thảo đề xuất em làm 1 phương án ¥18M ạ.* |
| **フオン** | 「1 案だけ？<ruby>大垣<rt>おおがき</rt></ruby>さんは<ruby>社内<rt>しゃない</rt></ruby>で<ruby>比較<rt>ひかく</rt></ruby>できないし、yes か no しかなくなる。**no が出たら戻れない**。3 <ruby>段階<rt>だんかい</rt></ruby>で作り直して。」 <br/>*Chỉ 1 phương án? Anh Ōgaki không có gì so nội bộ, chỉ còn có/không. Không là không quay lại được. Làm lại 3 bậc đi.* |
| **ズン** | 「3 段階だと安い方を選ばれませんか？」 <br/>*3 bậc thì khách chọn cái rẻ thì sao chị?* |
| **フオン** | 「**逆。<ruby>中間案<rt>ちゅうかんあん</rt></ruby>を一番<ruby>魅力的<rt>みりょくてき</rt></ruby>に設計**すれば、Better が選ばれる。Good は<ruby>機能削減<rt>きのうさくげん</rt></ruby>で『これじゃ意味ない』感、Best は scope <ruby>拡張<rt>かくちょう</rt></ruby>で『高すぎる』感を出す。これ choice architecture。」 <br/>*Ngược lại. Thiết kế bậc giữa hấp dẫn nhất là khách chọn bậc đó. Bậc cơ bản cắt tính năng kiểu 'cái này không đáng', bậc cao cấp mở rộng phạm vi kiểu 'đắt quá'. Đó là kiến trúc lựa chọn.* |

**Vì sao xấu:** 1 bậc = ép chọn có/không. Khách không có chỗ "thoả hiệp lịch sự" trong nội bộ ringi → xác suất bị từ chối tăng. Mất cơ hội định hình bậc giữa thành "phương án giá trị tốt nhất trong mắt khách".

---

## Hội thoại TỐT — bộ slide 3 bậc với Better làm trung tâm

| Vai | Câu |
|---------|-----|
| **ズン** | 「3 <ruby>段階提案<rt>だんかいていあん</rt></ruby>を作成しました。Good ¥14M / Better ¥18M / Best ¥24M。**Better を recommended 表示**【1】、Good は AI engine なし basic 版、Best は<ruby>専任<rt>せんにん</rt></ruby> SRE 含む full 版です。」 <br/>*Em đã tạo đề xuất 3 bậc ạ. Cơ bản ¥14M / Tiêu chuẩn ¥18M / Cao cấp ¥24M. Tiêu chuẩn đánh dấu 'Khuyến nghị', Cơ bản là bản không AI engine, Cao cấp là bản đầy đủ kèm SRE chuyên trách ạ.* |
| **フオン** | 「Good の<ruby>機能削減<rt>きのうさくげん</rt></ruby>は？」 <br/>*Phần cắt chức năng của Good là gì?* |
| **ズン** | 「Good は AI レコメンドなし、SLA 99.5% (Better は 99.9%)、サポート<ruby>営業時間<rt>えいぎょうじかん</rt></ruby>のみ【2】。<ruby>白鷗<rt>はくおう</rt></ruby>の Phase 3 目的『<ruby>売上<rt>うりあげ</rt></ruby> +¥80M』には<ruby>実質<rt>じっしつ</rt></ruby>届かない設計。」 <br/>*Bậc cơ bản không có AI recommend, SLA 99.5% (Tiêu chuẩn 99.9%), hỗ trợ chỉ trong giờ hành chính. Thiết kế thực chất không đạt mục tiêu Phase 3 'doanh thu +¥80M' của Hakuō ạ.* |
| **フオン** | 「Best は？」 <br/>*Còn Best?* |
| **ズン** | 「Best は<ruby>専任<rt>せんにん</rt></ruby> SRE 1 名<ruby>常駐<rt>じょうちゅう</rt></ruby>、SLA 99.99%、24/7 サポート、<ruby>優先機能開発<rt>ゆうせんきのうかいはつ</rt></ruby>【3】。CFO <ruby>中村<rt>なかむら</rt></ruby>さんの『コスト<ruby>圧縮<rt>あっしゅく</rt></ruby>』トーンに照らすと『出しすぎ』感を出す設計です。」 <br/>*Bậc cao cấp có 1 SRE chuyên trách túc trực, SLA 99.99%, hỗ trợ 24/7, ưu tiên phát triển tính năng. Đối chiếu xu hướng 'nén chi phí' của CFO Nakamura, thiết kế để tạo cảm giác 'chi quá tay' ạ.* |
| **フオン** | 「<ruby>完璧<rt>かんぺき</rt></ruby>。**Better が『<ruby>現実解<rt>げんじつかい</rt></ruby>』に見える<ruby>構造<rt>こうぞう</rt></ruby>**。明日のキックオフで使おう。」 <br/>*Hoàn hảo. Cấu trúc khiến bậc tiêu chuẩn hiện ra như 'phương án thực tế'. Mai mở đàm phán dùng cái này.* |

📝 **Ghi chú:**
- 【1】**Nhãn "Khuyến nghị"** — chữ "おすすめ"/"推奨" trên ô bậc tiêu chuẩn, nghiên cứu trải nghiệm người dùng cho thấy tỷ lệ chốt tăng +35%.
- 【2】**Bậc cơ bản cố ý làm yếu** — KHÔNG phải "rẻ và ổn", phải là "rẻ nhưng thiếu cái khách cần" → khách tự loại.
- 【3】**Bậc cao cấp cố ý làm dư** — vượt mức cần thiết để bậc tiêu chuẩn thành "vừa phải". Bậc cao cấp vẫn phải là thương vụ thật nếu khách chọn (không phải lựa chọn giả / phương án bẫy).

---

## Câu chốt

> **「Good/Better/Best の3<ruby>段階<rt>だんかい</rt></ruby>で、<ruby>中間案<rt>ちゅうかんあん</rt></ruby>を最も<ruby>魅力的<rt>みりょくてき</rt></ruby>に<ruby>設計<rt>せっけい</rt></ruby>する。」**
>
> *3 bậc Cơ bản/Tiêu chuẩn/Cao cấp, thiết kế bậc giữa hấp dẫn nhất.*

---

## Tránh

- 3 bậc mà bậc giữa không hấp dẫn → khách chọn Cơ bản (giá thấp, lỗ vốn)
- Bậc Cao cấp phi thực tế đến mức khách cười → mất uy tín
- Quên đánh dấu "Khuyến nghị" / "おすすめ" trên bậc giữa → mất hơn 30% hiệu quả
- Đặt khoảng cách giá đều (vd: ¥14M / ¥18M / ¥22M cách đều ¥4M) → không tận dụng được hiệu ứng mồi. Khoảng cách không đều giúp bậc tiêu chuẩn nổi bật hơn.

---

## Khung mẫu — Phiếu đề xuất 3 bậc

(Xem mẫu file riêng kèm theo)

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 3段階提案 | さんだんかいていあん | ĐOẠN GIAI ĐỀ ÁN | Đề xuất 3 bậc |
| 推奨 / おすすめ | すいしょう | SUY TƯỞNG | Khuyến nghị |
| 中間案 | ちゅうかんあん | TRUNG GIAN ÁN | Phương án giữa |
| 専任 | せんにん | CHUYÊN NHẬM | Chuyên trách |
| 常駐 | じょうちゅう | THƯỜNG TRÚ | Túc trực |
| 機能削減 | きのうさくげん | CƠ NĂNG TƯỚC GIẢM | Cắt giảm chức năng |
| 比較表 | ひかくひょう | TỈ GIẢO BIỂU | Bảng so sánh |
