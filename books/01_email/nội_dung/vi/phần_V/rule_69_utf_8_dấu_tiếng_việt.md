# Rule 69 — UTF-8 và kiểm tra dấu tiếng Việt khi gửi ra nước ngoài

> **Luận điểm.** Gửi email quốc tế có thể gặp **lỗi encoding** — dấu tiếng Việt hiển thị thành `?`, `□`, hoặc ký tự lạ. Lỗi này do email client sử dụng encoding khác UTF-8. Phòng tránh: (1) đặt encoding UTF-8 rõ, (2) test trước bằng cách gửi nháp cho chính mình, (3) có bản tiếng Anh backup.
>
> Từ khóa: **"UTF-8 + test trước"**.

## Cách kiểm UTF-8 đã bật

### Gmail
Mặc định UTF-8 — thường không cần lo.

### Outlook
File → Options → Advanced → Send messages → **Use UTF-8** cho outgoing messages.

### Domain tự host
Hỏi IT: header "Content-Type: text/plain; charset=UTF-8" có được set?

## Test trước

Trước khi gửi mail quốc tế quan trọng:
1. Gửi nháp cho chính mình.
2. Mở trên **máy khác / email client khác** (lý tưởng: máy không cài Vietnamese).
3. Kiểm xem dấu có đúng không.

## Khi phải lo

- Gửi cho đối tác nước ngoài dùng mail client cổ.
- Gửi qua hệ thống trung gian (ticketing system, CRM).
- Tên file đính kèm có dấu.

## Workaround — bản tiếng Anh backup

Mail quan trọng gửi quốc tế, cân nhắc gửi **bản song ngữ**:

> "Dear Mr. Smith,
>
> Please find below the Vietnamese version. An English summary follows.
>
> [Vietnamese version with full diacritics]
>
> --- English summary ---
> [Key points in English]"

## Câu chốt

> **"Quốc tế → UTF-8 + test trước + bản tiếng Anh backup nếu quan trọng."**
