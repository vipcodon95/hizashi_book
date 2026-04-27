# Rule 15 — Thân mail đi theo trục Kết luận → Lý do → Chi tiết, không ngược lại

> **Luận điểm.** Khi viết báo chí có khái niệm **"kim tự tháp ngược"** (*inverted pyramid*): đưa thông tin quan trọng nhất lên đầu, thông tin bổ sung xuống đuôi. Email chuyên nghiệp đi theo đúng logic đó — **Kết luận trước, Lý do giữa, Chi tiết cuối**. Người bận đọc đến đâu cũng đủ hiểu để hành động.
>
> Từ khóa của rule này: **"kim tự tháp ngược"**.

## Bối cảnh

Chị Hương phải xử lý 80 mail trong buổi sáng. Chị mở mail của Dũng về sự cố kỹ thuật ở Dự án Bình Minh.

## Ví dụ XẤU — kể chuyện theo trình tự thời gian

> Kính gửi chị Hương,
>
> Chúc chị một ngày tốt lành.
>
> Tối qua, lúc 22:30, bạn Khánh bên DevOps nhận được cảnh báo từ hệ thống monitoring rằng API của Bình Minh có độ trễ cao bất thường. Bạn Khánh nhắn Zalo cho anh Tuấn và em. Anh Tuấn và em cùng lên kiểm tra trong khoảng 30 phút. Chúng em phát hiện database connection pool đã full. Chúng em khởi động lại service và hệ thống trở lại bình thường lúc 23:45.
>
> Sáng nay chúng em họp lại với nhau lúc 08:00 để review sự cố. Chúng em xác định nguyên nhân là do một query tốn nhiều tài nguyên đã được deploy tuần trước nhưng chưa được benchmark kỹ. Chúng em đã rollback query đó.
>
> Kết quả: hệ thống hiện đã ổn định. Nhưng chúng em cần chị biết rằng khách hàng Hakuō đã có 1 giờ 15 phút downtime và chúng em có khả năng phải gửi thư xin lỗi chính thức. Em xin chị duyệt mẫu thư xin lỗi em soạn đính kèm, trước 12:00 hôm nay.
>
> Em Dũng

**Vì sao chưa ổn.** Chị Hương đọc đến đoạn thứ 4, dòng gần cuối, mới biết mail này là đang *xin duyệt thư xin lỗi khách hàng trước 12:00*. Nếu chị có 30 giây để lướt mail, chị không nắm được yêu cầu. Đây là kiểu viết "kể chuyện" — đúng trình tự thời gian, nhưng đặt nhầm chỗ trên email.

## Ví dụ TỐT — kết luận lên trước

> Kính gửi chị Hương,
>
> Chúc chị một ngày tốt lành.
>
> **Kết luận — việc cần chị làm:**
> Em xin chị **duyệt mẫu thư xin lỗi gửi Hakuō trước 12:00 hôm nay** (mẫu đính kèm). Hakuō đã có 1 giờ 15 phút downtime tối qua do sự cố kỹ thuật bên em.
>
> **Lý do — tóm tắt sự cố:**
> - Từ 22:30 đến 23:45 tối 13/05, API Bình Minh chậm bất thường do database connection pool full.
> - Nguyên nhân gốc: một query deploy tuần trước chưa được benchmark kỹ. Đã rollback sáng nay.
> - Hệ thống hiện ổn định.
>
> **Chi tiết — tường thuật sự cố và hướng dẫn khắc phục dài hạn:**
> (Phần chi tiết sự cố, người xử lý, timeline, post-mortem — em đính kèm file PDF 3 trang. Chị có thể đọc nếu cần nắm sâu.)
>
> Em cảm ơn chị.
> Dũng

**So sánh.** Cùng một mail, cùng một lượng thông tin — nhưng:
- Chị Hương trong 30 giây đầu đã biết mình cần duyệt thư xin lỗi trước 12h.
- Nếu chị cần thêm context, chị đọc phần "Lý do" (3 dòng).
- Nếu chị muốn nắm sâu, chị mở file đính kèm.

Đây là *nhiều tầng đọc* — chị chọn tầng đọc phù hợp với thời gian mình có.

## Khi nào **không** dùng kim tự tháp ngược

- **Mail cảm ơn thuần** — không có kết luận/yêu cầu; cảm xúc có thể kể theo trình tự.
- **Mail xin lỗi nặng** — nếu chốt "em xin lỗi chị" ở câu đầu mà chưa kể hoàn cảnh có thể nghe như *xin lỗi cho xong* (xem Rule 53 ở Phần IV).
- **Mail kể trải nghiệm/chia sẻ** — không phải mail công việc điển hình.

## Câu chốt mang đi

> **"Kết luận trước — Lý do giữa — Chi tiết cuối. Ai đọc đến đâu cũng hành động được đến đó."**

*Dùng khi:* mọi mail báo cáo, xin duyệt, xin ý kiến, thông báo. Trước khi gửi, thử *xoá 50% từ cuối mail* — nếu người đọc vẫn biết phải làm gì thì cấu trúc của bạn đúng kim tự tháp ngược.
