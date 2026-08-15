# Rule 31 — Xử lý sự cố kỹ thuật / 技術トラブル復旧

> **Luận điểm.** Khi máy chiếu chết / mạng down / Zoom freeze giữa bài thuyết trình — **3 bước gỡ tình huống**: ① **Thừa nhận bình tĩnh** (5 giây): "申し訳ございません、技術トラブルが発生しております" ② **Chuyển nhanh sang Plan B** (Plan B đã chuẩn bị ở rule 07: PDF dự phòng, phát mạng di động, tài liệu phát tay) ③ **Tiếp tục bằng lời** (nói tiếp ngay phần slide kế) trong khi đang khôi phục. Tuyệt đối **không hoảng loạn** trên mặt — khán giả Nhật xem hoảng loạn = "cty không đáng tin trong khủng hoảng vận hành thật".
>
> 技術トラブルは acknowledge (5秒で) → switch Plan B → entertain (verbal で次 slide 内容を語る) の3ステップ。Panic 表情は『本番障害も同じ』と暗示。
>
> **Liên quan:** rule 07 (Phương án B), rule 29 (trực tuyến), rule 30 (lai/kết hợp).

---

## Bối cảnh / 場面

Thuyết trình Phase 3 phút 12. Đang chia sẻ slide 8 (bảng giá) — đột nhiên cty 白鷗 cúp mạng toàn tòa nhà. Zoom freeze, máy chiếu hiện "no signal". 大垣 + 田中 trong phòng nhìn Dũng. 松本 trực tuyến → màn hình Dũng cứng đơ.

---

## Trường hợp xấu — hoảng loạn + im lặng kéo dài

*thấy máy chiếu mất, mặt hoảng · loay hoay 30 giây, gọi bộ phận hỗ trợ · 60s sau · im lặng 2 phút trong khi Dũng tìm tệp*

| Vai | Câu |
|---------|-----|
| **ズン** | 「あ、あ、<ruby>画面<rt>がめん</rt></ruby>が…えっ、ネット…えっ…」 <br/>*À, à, màn hình... ơ, mạng... ơ...* |
| **ズン** | 「すみません、ちょっと…IT <ruby>確認<rt>かくにん</rt></ruby>してます…」 <br/>*Xin lỗi, một chút... em đang check IT...* |
| **大垣** | 「PDFは<ruby>無<rt>な</rt></ruby>いんですか？」 <br/>*Không có PDF à?* |
| **ズン** | 「あ、PDF…あります、メール<ruby>送<rt>おく</rt></ruby>りますね…」 <br/>*À, PDF... có ạ, em gửi mail nhé...* |

**Vì sao xấu:** Mặt hoảng loạn → khán giả thấy "người thuyết trình không vững tâm trước áp lực". 60 giây im lặng → chắc chắn quá giờ. Không có Plan B sẵn → 大垣 phải nhắc PDF dự phòng → ấn tượng "cty không có phương án dự phòng".

---

## Trường hợp tốt — xử lý sự cố 3 bước

*máy chiếu mất, hít sâu 3 giây, giọng vững · rút USB, cắm đầu chuyển USB-C HDMI, kết nối local — đã chuẩn bị sẵn · người đồng trình bày, bật phát mạng di động · không có slide hiện, vẫn tiếp tục bằng lời · 45 giây sau*

| Vai | Câu |
|---------|-----|
| **ズン** | 「**申し訳ございません、ネットワークトラブルが<ruby>発生<rt>はっせい</rt></ruby>しております**【1】。**5<ruby>秒<rt>びょう</rt></ruby>で<ruby>復旧<rt>ふっきゅう</rt></ruby><ruby>手順<rt>てじゅん</rt></ruby>に<ruby>切<rt>き</rt></ruby>り<ruby>替<rt>か</rt></ruby>え** させていただきます。」 — Acknowledge <br/>*Xin lỗi quý vị, vừa phát sinh sự cố mạng ạ. Em xin phép chuyển sang quy trình khôi phục trong 5 giây ạ.* |
| **ズン** | 「**ローカル PDF に<ruby>切替中<rt>きりかえちゅう</rt></ruby>** です。<ruby>同時<rt>どうじ</rt></ruby>にお<ruby>手元<rt>てもと</rt></ruby>の **<ruby>印刷<rt>いんさつ</rt></ruby>ハンドアウト** もご<ruby>確認<rt>かくにん</rt></ruby>いただけますでしょうか【2】。」 — Switch Plan B <br/>*Em đang chuyển sang PDF local ạ. Đồng thời mong quý vị xem giúp em tài liệu in trên tay ạ.* |
| **トゥアン** | 「<ruby>松本<rt>まつもと</rt></ruby><ruby>様<rt>さま</rt></ruby>、ハー CTO、**モバイルテザリング** で Zoom <ruby>再接続<rt>さいせつぞく</rt></ruby>いたします。30<ruby>秒<rt>びょう</rt></ruby>お<ruby>待<rt>ま</rt></ruby>ちください。」 <br/>*Anh Matsumoto, anh Hà CTO, em sẽ kết nối Zoom lại bằng tethering mobile ạ. Phiền chờ 30 giây ạ.* |
| **ズン** | 「**<ruby>復旧中<rt>ふっきゅうちゅう</rt></ruby>ですが、<ruby>内容<rt>ないよう</rt></ruby>を<ruby>進<rt>すす</rt></ruby>めさせていただきます**【3】。スライド8 の<ruby>価格<rt>かかく</rt></ruby><ruby>内訳<rt>うちわけ</rt></ruby>ですが、Phase 3 1200<ruby>万円<rt>まんえん</rt></ruby>の<ruby>内訳<rt>うちわけ</rt></ruby>は ①<ruby>開発<rt>かいはつ</rt></ruby><ruby>工数<rt>こうすう</rt></ruby> 720<ruby>万<rt>まん</rt></ruby>、②ライセンス 280<ruby>万<rt>まん</rt></ruby>、③<ruby>運用<rt>うんよう</rt></ruby><ruby>初年度<rt>しょねんど</rt></ruby> 200<ruby>万<rt>まん</rt></ruby>。ハンドアウト 5ページ<ruby>目<rt>め</rt></ruby>に<ruby>表<rt>ひょう</rt></ruby>がございます。」 — Entertain verbal <br/>*Đang khôi phục nhưng em xin phép tiếp tục nội dung ạ. Slide 8 phần phân tích giá ạ — Phase 3 12 triệu yên: ① effort dev 7,2 triệu, ② license 2,8 triệu, ③ vận hành năm đầu 2 triệu. Bảng ở trang 5 tài liệu phát tay ạ.* |
| **トゥアン** | 「Zoom <ruby>復活<rt>ふっかつ</rt></ruby>、<ruby>画面<rt>がめん</rt></ruby><ruby>共有<rt>きょうゆう</rt></ruby> OK です。」 <br/>*Zoom sống lại rồi, chia sẻ màn hình OK ạ.* |
| **ズン** | 「ありがとうございます。**ご<ruby>迷惑<rt>めいわく</rt></ruby>をおかけし、<ruby>申<rt>もう</rt></ruby>し<ruby>訳<rt>わけ</rt></ruby>ございませんでした**。<ruby>続<rt>つづ</rt></ruby>きスライド9 から<ruby>進<rt>すす</rt></ruby>めさせていただきます。」 <br/>*Em cảm ơn anh. Em xin lỗi đã làm phiền ạ. Em xin phép tiếp tục từ slide 9 ạ.* |

📝 **Ghi chú:**
- 【1】**「申し訳ございません、〜トラブルが発生しております」** — câu acknowledge trang trọng. NHẤN hít sâu 5 giây trước → giọng vững. Không "あ、あ、えっ…".
- 【2】**Plan B đã chuẩn bị**: ① PDF USB ② tài liệu phát tay in sẵn ③ chia sẻ mạng di động. Rule 07 quy định, rule 31 thực thi.
- 【3】**「復旧中ですが、内容を進めさせていただきます」** — KHÔNG dừng thuyết trình. Nói tiếp nội dung trong khi người đồng trình bày khôi phục. Khán giả thấy người thuyết trình "sẵn sàng cho tình huống thật".

---

## Câu chốt

> **Thừa nhận 5s ("申し訳ございません、〜トラブル") → Chuyển Plan B (PDF / tài liệu phát tay / chia sẻ mạng di động) → Nói tiếp nội dung trong khi khôi phục.**
>
> *Mặt hoảng loạn = "không đáng tin khi sự cố thật". 3 bước có sẵn câu chữ = vững tâm trước áp lực.*

---

## Tránh

- "あ、あ、えっ…" lắp bắp hoảng → khán giả đọc được sự bối rối trên mặt
- Loay hoay > 30s im lặng → quá giờ + ấn tượng "không có phương án"
- "誰か助けて〜" gọi bộ phận hỗ trợ lớn tiếng → thiếu chuyên nghiệp
- Không có Plan B → người thuyết trình tự biết mình không có dự phòng
- Đổ lỗi hạ tầng ("白鷗のネットが…") → đổ lỗi khách = làm khách mất mặt
- Bỏ qua các slide còn lại vì hoảng → bài thuyết trình lỡ phần kết quả

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 復旧 | ふっきゅう | PHỤC CỰU | Khôi phục / phục hồi |
| トラブル | トラブル | — | Sự cố |
| 切替 | きりかえ | THIẾT CẢI | Chuyển / đổi |
| ハンドアウト | ハンドアウト | — | Tài liệu phát |
| テザリング | テザリング | — | Chia sẻ mạng di động |
| お騒がせ | おさわがせ | — | Phiền hà / xáo trộn |
| 内訳 | うちわけ | NỘI DỊCH | Phân tích chi tiết |
