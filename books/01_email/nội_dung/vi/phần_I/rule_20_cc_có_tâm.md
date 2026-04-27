# Rule 20 — CC có tâm: giới thiệu người thứ ba trong body mail

> **Luận điểm.** Khi bạn CC một người vào mail, đối với người nhận chính, người CC là một **dấu chấm hỏi** ở dòng `Cc:` — *"tại sao người này ở đây?"*. Nếu bạn không trả lời câu hỏi đó trong body, bạn đang để người nhận chính tự đoán, và để người CC bị đưa vào cuộc một cách ngượng nghịu. Quy ước đơn giản: **gọi tên người CC trong body, kèm lý do CC**.
>
> Từ khóa của rule này: **"CC có tâm"**.

## Bối cảnh

Dũng gửi mail cho anh Matsumoto (Hakuō) để báo giá dịch vụ. Anh Tuấn (team lead kỹ thuật) và chị Loan (kế toán) được CC vì:
- Anh Tuấn sẽ trả lời câu hỏi kỹ thuật nếu có.
- Chị Loan sẽ xử lý phần hợp đồng khi khách chấp nhận.

## Ví dụ XẤU — CC không giải thích

> **To:** minh.nguyen@hakuo.co.jp
> **Cc:** tuan.le@tienphat.com.vn, loan.nguyen@tienphat.com.vn
>
> Kính gửi anh Matsumoto,
>
> Em xin gửi anh báo giá cho dịch vụ triển khai Bình Minh v2 (file đính kèm).
>
> Em cảm ơn anh.
> Dũng

**Vì sao chưa ổn.**
- Anh Matsumoto thấy 2 người lạ ở dòng CC, không biết họ là ai, có phải trả lời họ không, có phải gửi hợp đồng cho họ luôn không.
- Anh Tuấn và chị Loan thấy mình bị CC mà không biết mình ở đây để làm gì — có phải tham gia reply không, hay chỉ cần biết?

Kết quả: anh Matsumoto có thể forward cả mail sang phòng pháp lý bên Hakuō và vô tình để anh Tuấn nhận mail pháp lý không liên quan, tạo ra một thread lùng bùng.

## Ví dụ TỐT — giới thiệu CC trong body

> **To:** minh.nguyen@hakuo.co.jp
> **Cc:** tuan.le@tienphat.com.vn, loan.nguyen@tienphat.com.vn
>
> Kính gửi anh Matsumoto,
>
> Em xin gửi anh báo giá cho dịch vụ triển khai Bình Minh v2 (file đính kèm).
>
> **Em CC anh Tuấn — team lead kỹ thuật bên em — nếu anh có câu hỏi kỹ thuật, anh có thể reply trực tiếp cho anh Tuấn, ảnh sẽ nắm và xử lý.**
>
> **Em CC chị Loan — kế toán trưởng bên em — khi anh đồng ý báo giá, chị Loan sẽ làm phần hợp đồng với team pháp lý của anh.**
>
> Em cảm ơn anh.
> Dũng

Ba lợi ích:
- **Anh Matsumoto biết** phải trao đổi với ai về việc gì.
- **Anh Tuấn biết** mình ở đây để trả lời câu hỏi kỹ thuật.
- **Chị Loan biết** mình ở đây để chờ lúc khách chấp nhận thì vào cuộc — không phải reply ngay.

## Quy tắc đặt câu giới thiệu CC

Công thức tối thiểu:

> "Em CC [tên] — [vai trò] — [lý do có mặt]."

Biến thể ngắn hơn (khi người nhận chính đã biết người CC):

> "CC anh Tuấn để ảnh theo dõi."

Hoặc khi CC chỉ để lưu chứng, không cần ai phản hồi:

> "CC chị Hương để chị nắm thông tin."

## Bảng phân loại "loại CC" và cách giới thiệu

| Loại CC | Vai trò | Cách giới thiệu |
|---------|---------|-----------------|
| Người có thể phản hồi thay | Khi bạn vắng mặt | "CC anh Tuấn, ảnh có thể phản hồi anh nếu em bận." |
| Người cần biết kết quả | Sếp trực tiếp, theo dõi | "CC chị Hương để chị nắm thông tin." |
| Người cần vào cuộc ở bước sau | Kế toán khi chốt | "CC chị Loan để lúc chốt ký hợp đồng sẽ làm việc với chị." |
| Người có chuyên môn liên quan | Chuyên gia phụ trợ | "CC bạn An (pháp lý) nếu anh cần trao đổi thêm về điều khoản." |
| Lưu chứng / audit | Compliance | "CC chị Phương để lưu hồ sơ theo quy định nội bộ." |

## Dấu hiệu CC sai

- **CC hơn 5 người** ở một mail thường — có khả năng bạn đang *CC để che lưng*. Mỗi người thấy "có 4 người khác" sẽ nghĩ "ai đó sẽ xử lý" và không ai thật sự xử lý.
- **CC cấp trên của đối phương mà họ không biết** — đây là *chơi bẩn*, dùng sếp để ép việc. Mất niềm tin ngay lập tức.
- **CC người không liên quan** — thời gian của họ không phải miễn phí.

Nếu bạn băn khoăn "có nên CC người này không", câu trả lời mặc định là **không**. Bạn có thể forward riêng cho họ sau.

## BCC — khác hẳn với CC

BCC (Rule 21) không hiển thị cho các người nhận khác. Không dùng BCC để *gài* cấp trên vào mà người nhận chính không biết — cấp trên có thể vô tình "Reply All", lộ ra, và bạn mất uy tín.

## Câu chốt mang đi

> **"CC ai, giới thiệu họ ngay trong body. Người nhận chính không phải đoán."**

*Dùng khi:* bất cứ mail nào có dòng CC. Một câu giới thiệu 10 từ tiết kiệm được một chuỗi hiểu nhầm có thể kéo dài nhiều ngày.
