# Rule 05 — Báo cáo hoàn thành / 完了報告 (Output→Acceptance→Lessons)

> **Luận điểm.** Báo cáo hoàn thành chuẩn Nhật phải có 3 phần: **Output** (đầu ra cụ thể), **Acceptance** (xác nhận khách/sếp đồng ý nghiệm thu), **Lessons** (bài học, để áp dụng lần sau). Bỏ Acceptance = "tự nhận xong nhưng khách chưa duyệt". Bỏ Lessons = lặp lại sai lầm.
>
> 完了報告の3要素：**Output（成果物）→ Acceptance（受領確認）→ Lessons（学び）**。Acceptance なしは「自称完了」。Lessons なしは同じ失敗を繰り返す。
>
> **Liên quan:** rule 01 (3 nguyên tắc), rule 03 (kết quả GRCA), rule 08 (報告書 trang trọng).

---

## Bối cảnh / 場面

Phase 2 vừa kết thúc — em Dũng cần báo cáo hoàn thành cho chị Hương + cc anh Hà CTO. Lần đầu Dũng chỉ liệt kê "đã giao 5 sản phẩm đầu ra" → chị Hương phản ứng: "khách đã ký nghiệm thu chưa? Có rút được bài học gì không?".

---

## Hội thoại XẤU — chỉ có Output, thiếu Acceptance + Lessons

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 2 <ruby>完了<rt>かんりょう</rt></ruby>のご<ruby>報告<rt>ほうこく</rt></ruby>です。<ruby>納品物<rt>のうひんぶつ</rt></ruby>5点、すべて<ruby>納品済<rt>のうひんず</rt></ruby>みです。以上です。」 <br/>*Em báo cáo Phase 2 hoàn thành ạ. 5 deliverable đã giao hết. Em xin hết ạ.* |
| **フオン** | 「<ruby>松本<rt>まつもと</rt></ruby>様から **<ruby>検収<rt>けんしゅう</rt></ruby>（<ruby>受領確認<rt>じゅりょうかくにん</rt></ruby>）** はもらった？まだなら『完了』とは言わない。」 <br/>*Anh Matsumoto đã ký nghiệm thu chưa? Chưa thì không gọi là 'hoàn thành'.* |
| **ズン** | 「あ、まだメールで送ったところで…」 <br/>*À em vừa gửi mail đó thôi ạ...* |
| **フオン** | 「それは『納品』であって『完了』ではない。それと、今回の<ruby>振<rt>ふ</rt></ruby>り返りは？次のフェーズに<ruby>活<rt>い</rt></ruby>かせる<ruby>学<rt>まな</rt></ruby>びは？」 <br/>*Cái đó gọi là 'giao hàng' chứ không phải 'hoàn thành'. Còn nữa, lần này nhìn lại rút ra được gì? Bài học nào áp dụng được cho phase sau?* |
| **ズン** | 「振り返りはまだ…」 <br/>*Phần nhìn lại em chưa làm ạ...* |

**Vì sao xấu:** L1 chỉ liệt kê sản phẩm đã giao. Tiếng Nhật công việc: 納品 (giao hàng) ≠ 完了 (hoàn thành). 完了 là phải có 検収 (nghiệm thu). L4 chỉ ra cả 2 thiếu sót: Acceptance + Lessons.

---

## Hội thoại TỐT — Output + Acceptance + Lessons

| Vai | Câu |
|---------|-----|
| **ズン** | 「Phase 2 **完了報告**です。**Output**：納品物5点（<ruby>要件定義書<rt>ようけんていぎしょ</rt></ruby>、<ruby>設計書<rt>せっけいしょ</rt></ruby>、ソースコード、テスト報告書、<ruby>運用手順書<rt>うんようてじゅんしょ</rt></ruby>）、すべて納品済み【1】。」 <br/>*Em báo cáo hoàn thành Phase 2 ạ. Output: 5 deliverable (Tài liệu yêu cầu, thiết kế, source code, test report, hướng dẫn vận hành), đã giao hết ạ.* |
| **ズン** | 「**Acceptance**：松本様より<ruby>昨日付<rt>きのうづけ</rt></ruby>で<ruby>書面検収<rt>しょめんけんしゅう</rt></ruby>をいただきました。検収書のコピーを<ruby>別途<rt>べっと</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby>いたします【2】。」 <br/>*Acceptance: anh Matsumoto đã ký nghiệm thu bằng văn bản đề ngày hôm qua. Em sẽ chia sẻ bản copy nghiệm thu riêng ạ.* |
| **ズン** | 「**Lessons**：(1) <ruby>中間報告<rt>ちゅうかんほうこく</rt></ruby>を 25/50/75% で行ったことで<ruby>手戻<rt>てもど</rt></ruby>りゼロ、(2) <ruby>反省点<rt>はんせいてん</rt></ruby>として、<ruby>画面遷移仕様<rt>がめんせんいしよう</rt></ruby>の確認が遅れ、テスト<ruby>工数<rt>こうすう</rt></ruby>が<ruby>当初比<rt>とうしょひ</rt></ruby> +20% になりました【3】。Phase 3 では<ruby>仕様確認<rt>しようかくにん</rt></ruby>を<ruby>着手前<rt>ちゃくしゅまえ</rt></ruby>に必ず行います。」 <br/>*Lessons: (1) Báo cáo trung gian 25/50/75% giúp không phải làm lại lần nào, (2) Điểm rút kinh nghiệm: xác nhận spec luồng chuyển màn bị chậm, làm effort test tăng +20% so với dự kiến. Phase 3 em sẽ luôn xác nhận spec trước khi bắt tay làm ạ.* |
| **フオン** | 「Acceptance まで取れて初めて完了。Lessons も<ruby>具体的<rt>ぐたいてき</rt></ruby>で良いね。Phase 3 の仕様確認手順は手順書に落として共有して。」 <br/>*Có Acceptance mới gọi là hoàn thành. Lessons cũng cụ thể, tốt. Quy trình xác nhận spec Phase 3 em đưa vào tài liệu hướng dẫn rồi share nhé.* |
| **ズン** | 「<ruby>承知<rt>しょうち</rt></ruby>しました。<ruby>今週中<rt>こんしゅうちゅう</rt></ruby>に手順書を<ruby>作成<rt>さくせい</rt></ruby>し共有いたします。」 <br/>*Em hiểu ạ. Em sẽ làm tài liệu trong tuần này và chia sẻ ạ.* |

 **Ghi chú:**
- 【1】**「Output：〇〇」** — liệt kê deliverable cụ thể, đếm được. Không "色々作りました".
- 【2】**「書面検収」「検収書のコピー」** — 検収 = nghiệm thu bằng văn bản. Phải có bằng chứng, không "口頭で OK もらった".
- 【3】**「反省点として、〇〇」「Phase 3 では〇〇します」** — Lessons phải gồm bài học **+** hành động áp dụng lần sau. Chỉ liệt kê điểm nhìn lại mà không có hành động = báo cáo "rỗng".

---

## Câu chốt

> **「Output: 〇〇 / Acceptance: 〇〇から〇〇<ruby>付<rt>づけ</rt></ruby><ruby>検収済<rt>けんしゅうず</rt></ruby>み / Lessons: 〇〇、Phase 〇〇 で〇〇いたします。」**
>
> *3 phần. Phần 2 là điểm Việt thường thiếu nhất.*

---

## Tránh

- 「納品しました = 完了です」 — không. 検収 mới là 完了.
- "口頭で OK もらいました" — không có bằng chứng = không có nghiệm thu.
- Lessons toàn 「気をつけます」「今後注意します」 — không cụ thể, không có hành động.
- Bỏ Lessons khi "không có gì đặc biệt" — luôn có ít nhất 1 thứ rút ra (kể cả khi suôn sẻ).

---

## Khung mẫu

Xem phần Mẫu câu: **完了報告書** với các mục Output / Acceptance / Lessons.

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|-------|-------|
| 完了報告 | かんりょうほうこく | HOÀN LIỄU BÁO CÁO | Báo cáo hoàn thành |
| 検収 | けんしゅう | KIỂM THU | Nghiệm thu |
| 検収書 | けんしゅうしょ | KIỂM THU THƯ | Văn bản nghiệm thu |
| 納品 | のうひん | NẠP PHẨM | Giao hàng (sản phẩm bàn giao) |
| 反省点 | はんせいてん | PHẢN TỈNH ĐIỂM | Điểm rút kinh nghiệm |
| 振り返り | ふりかえり | CHẤN PHẢN | Nhìn lại / tổng kết rút kinh nghiệm |
| 工数 | こうすう | CÔNG SỐ | Khối lượng công (man-day) |
| 手順書 | てじゅんしょ | THỦ THUẬN THƯ | Tài liệu hướng dẫn |
| 着手前 | ちゃくしゅまえ | TRƯỚC THỦ TIỀN | Trước khi bắt đầu |
