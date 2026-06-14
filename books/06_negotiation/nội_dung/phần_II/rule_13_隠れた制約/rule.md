# Rule 13 — Listen for hidden constraints / 隠れた制約の傾聴

> **Luận điểm.** Khách Nhật rất hiếm khi trực tiếp nói "có vấn đề X", thay vào đó phát tín hiệu gián tiếp: cách buông lửng câu 言葉尻 ("ちょっと…"), nhắc thời gian 時間 ("少し時間かかる"), dùng thể bị động. Phải bắt được 3 loại ràng buộc ẩn: **(1) thời hạn 稟議 (thực sự bao lâu)**, **(2) giới hạn chu kỳ ngân sách**, **(3) chính trị nội bộ** (sếp khác phản đối).
>
> 日本の顧客は制約を直接言わない。「ちょっと」「少し時間がかかる」「内部で議論が」などの signal を listen して隠れた制約 (稟議期間・予算枠・社内反対) を読み解く。
>
> **Liên quan:** rule 03 (稟議), rule 12 (khai thác thông tin), rule 14 (phản chiếu).

---

## Bối cảnh / 場面

Discovery question xong (rule 12), 大垣 trả lời nhưng có vài "ちょっと…" và ngập ngừng dài. Dũng phải đào ràng buộc ẩn chứ không bỏ qua.

---

## Hội thoại XẤU — bỏ qua signal "ちょっと"

*信号読まず*

| Vai | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**<ruby>社内<rt>しゃない</rt></ruby>で<ruby>議論<rt>ぎろん</rt></ruby>があって…」 <br/>*Lý tưởng là launch cuối tháng 7, nhưng... hơi đang có thảo luận nội bộ...* |
| **ズン** | 「では 7 月末ローンチでスケジュール組みます。」 <br/>*Vậy em lên lịch launch cuối tháng 7 ạ.* |
| **大垣** | 「あ、はい…」 <br/>*À, vâng ạ...* |
| (3週間後 Slack) **大垣** | 「すみません、<ruby>稟議<rt>りんぎ</rt></ruby>が止まっており…」 <br/>*(3 tuần sau qua Slack) Xin lỗi, ringi đang dừng...* |

**Vì sao xấu:** "ちょっと" + ngập ngừng = tín hiệu có vấn đề, có thể là sếp khác phản đối hoặc ngân sách chưa chắc chắn. Dũng chốt lịch luôn → 3 tuần sau bị bất ngờ. Phải đào ngay tại chỗ.

---

## Hội thoại TỐT — đào "ちょっと" với câu hỏi mở

*tín hiệu bắt được · ngừng ngắn, sau đó*

| Vai | Câu |
|---------|-----|
| **大垣** | 「7 月末ローンチが理想ですが…**ちょっと**社内で議論があって…」 <br/>*Lý tưởng là launch cuối tháng 7, nhưng... hơi đang có thảo luận nội bộ...* |
| **ズン** | 「『社内で議論』とのこと、**もう少し詳しくお聞かせいただけますでしょうか**【1】？タイミングや<ruby>調整<rt>ちょうせい</rt></ruby><ruby>事項<rt>じこう</rt></ruby>に<ruby>影響<rt>えいきょう</rt></ruby>しそうでしたら、こちらでも<ruby>対応<rt>たいおう</rt></ruby>を<ruby>検討<rt>けんとう</rt></ruby>したいので。」 <br/>*Anh có nhắc 'thảo luận nội bộ', em xin phép được nghe kỹ hơn ạ. Nếu có ảnh hưởng tới timing / việc điều chỉnh thì bên em cũng muốn tìm hướng xử lý ạ.* |
| **大垣** | 「実は IT 部門長が AI レコメンドの<ruby>導入<rt>どうにゅう</rt></ruby>リスクを<ruby>慎重<rt>しんちょう</rt></ruby>に見ていまして…7 月末は<ruby>厳<rt>きび</rt></ruby>しいかもしれません。」 <br/>*Thật ra trưởng phòng IT đang xem rất thận trọng rủi ro khi triển khai AI recommend... cuối tháng 7 có thể khó.* |
| **ズン** | 「**<ruby>承知<rt>しょうち</rt></ruby>しました。IT 部門長様のご<ruby>懸念点<rt>けねんてん</rt></ruby>、具体的にどのあたりでしょうか**【2】？こちらで white paper や PoC データをご<ruby>用意<rt>ようい</rt></ruby>できれば<ruby>稟議<rt>りんぎ</rt></ruby>の<ruby>助<rt>たす</rt></ruby>けになるかと思います。」 <br/>*Em rõ ạ. Cụ thể trưởng phòng IT lo điểm nào ạ? Bên em có thể chuẩn bị white paper hoặc PoC data, có thể hỗ trợ cho ringi ạ.* |
| **大垣** | 「データ<ruby>漏洩<rt>ろうえい</rt></ruby>リスクとモデル<ruby>説明可能性<rt>せつめいかのうせい</rt></ruby>。御社で説明できる資料があれば助かります。」 <br/>*Rủi ro rò rỉ data và khả năng giải thích model. Nếu bên em có tài liệu giải thích được thì rất giúp.* |
| **ズン** | 「**白鷗様 IT 部門長様向けに security PoC + AI explainability の brief を 1 週間以内に**【3】。それに合わせて Timeline は 7 月末→ 8 月中旬に<ruby>余裕<rt>よゆう</rt></ruby>を持たせる<ruby>案<rt>あん</rt></ruby>も<ruby>併<rt>あわ</rt></ruby>せてご<ruby>提案<rt>ていあん</rt></ruby>します。」 <br/>*Em sẽ chuẩn bị tài liệu minh chứng bảo mật + tóm tắt khả năng giải thích AI cho trưởng phòng IT bên Hakuō trong 1 tuần. Đồng thời em đề xuất nới thời hạn cuối tháng 7 → giữa tháng 8 cho có dư địa ạ.* |

 **Ghi chú:**
- 【1】**「もう少し詳しく…」** = câu hỏi mở để khách nói rõ thêm. Tránh câu hỏi đóng (có/không).
- 【2】**「具体的にどのあたり」** — đào vấn đề xuống mức vận hành cụ thể. Khách Nhật thường chia sẻ khi đã tạo được niềm tin.
- 【3】**Biến ràng buộc thành giải pháp** — biết trưởng phòng IT lo, đề xuất tài liệu minh chứng bảo mật + dời thời hạn → tăng cơ hội ringi được duyệt.

---

## Câu chốt

> **「『ちょっと』『少し』『議論があって』はredflag。即押さない、もう少し詳しくお聞かせください。」**
>
> *"ちょっと" / "少し" / "議論があって" = cờ đỏ cảnh báo. KHÔNG bỏ qua, hỏi thêm.*

---

## Tránh

- "ちょっと" 聞き流す → 3 週後 bị bất ngờ
- Giọng tra hỏi "なんでですか？" → khách đóng cửa. Dùng "もう少し詳しく…"
- Ràng buộc lộ ra rồi mà vẫn ép lịch cứng → giọng của bạn thành "không chịu nghe"
- Quên đề xuất giải pháp sau khi đào → khai thác thông tin chỉ còn thuần thu thập, không tạo thêm giá trị

---

## Bảng từ vựng

| Từ | Cách đọc | Hán Việt | Nghĩa Việt |
|------|------|------|-------|
| 隠れた制約 | かくれたせいやく | ẨN CHẾ ƯỚC | Ràng buộc ẩn |
| 議論 | ぎろん | NGHỊ LUẬN | Bàn luận / bất đồng quan điểm |
| 慎重 | しんちょう | THẬN TRỌNG | Thận trọng |
| 漏洩リスク | ろうえいリスク | LẬU TIẾT — | Rủi ro rò rỉ |
| 説明可能性 | せつめいかのうせい | THUYẾT MINH KHẢ NĂNG TÍNH | Khả năng giải thích (của model) |
| 余裕を持たせる | よゆうをもたせる | DƯ DỤNG — | Để dư địa |
| 稟議の助け | りんぎのたすけ | BẨM NGHỊ — TRỢ | Hỗ trợ ringi |
