---
id: 8001021
curriculum_id: 8001
order_index: 21
node_type: rule
title: "Rule 21 — BCC bắt buộc khi gửi hàng loạt tới nhóm không liên quan nhau"
rule_no_original: "21"
slug: "bcc_bắt_buộc"
part_original: "phần_I"
language: vi
---
# Rule 21 — BCC bắt buộc khi gửi hàng loạt tới nhóm không liên quan nhau
> **Luận điểm.** Khi bạn gửi **một mail cho nhiều người không quen biết nhau** — danh sách khách hàng, danh sách nhà cung cấp, thông báo chung tới nhiều phòng ban — **phải dùng BCC**. Để các địa chỉ email trong dòng `To:` hoặc `Cc:` là đang **làm lộ email của từng người cho tất cả những người còn lại**. Đây là vi phạm quyền riêng tư, có khi là vi phạm luật bảo vệ dữ liệu cá nhân (Nghị định 13/2023/NĐ-CP tại Việt Nam).
>
> Từ khóa của rule này: **"gửi hàng loạt = BCC"**.

## Bối cảnh
Cuối năm, Dũng cần gửi thư chúc Tết đến 50 khách hàng của Cty Thiên Phát. Các khách hàng này là đối thủ hoặc đối tác của nhau — họ *không nên biết* ai cũng là khách của Thiên Phát.

## Ví dụ XẤU — để tất cả vào `To:`
> **To:** minh.nguyen@hakuo.co.jp, hoa.tran@vpconsult.vn, nam.le@phuongnam-co.vn, ... (47 email nữa)
>
> Kính gửi Quý khách hàng,
>
> Nhân dịp Tết Nguyên đán, Cty Thiên Phát xin gửi lời chúc...

**Hậu quả.**
- Anh Matsumoto bên Hakuō vừa mở mail, thấy 49 email khác → biết ngay toàn bộ danh sách khách hàng của Thiên Phát.
- Một trong 50 khách bấm **"Reply All"** (có thể không cố ý) → 49 người còn lại bị spam.
- Một đối thủ của Hakuō nằm trong danh sách → giờ họ biết Hakuō dùng dịch vụ Thiên Phát.
- Nếu một trong số đó bị hack mail, spam sẽ có danh sách 50 địa chỉ để tiếp tục gửi.

**Về pháp lý.** Theo Nghị định 13/2023/NĐ-CP về Bảo vệ dữ liệu cá nhân có hiệu lực từ 01/07/2023, email là dữ liệu cá nhân. Lộ địa chỉ email của khách hàng mà không có cơ sở hợp pháp có thể bị xử phạt.

## Ví dụ TỐT — để trong `Bcc:`
> **To:** info@tienphat.com.vn *(chính mail công ty mình)*
> **Bcc:** minh.nguyen@hakuo.co.jp, hoa.tran@vpconsult.vn, nam.le@phuongnam-co.vn, ... (47 email nữa)
>
> Kính gửi Quý khách hàng,
>
> Nhân dịp Tết Nguyên đán, Cty Thiên Phát xin gửi lời chúc...

**Điều xảy ra:**
- Mỗi khách hàng nhận được mail riêng, chỉ thấy mình trong `To:` (hoặc thấy `info@tienphat.com.vn`).
- Không khách hàng nào biết mail được gửi cho ai khác.
- Nếu ai bấm "Reply All", chỉ Cty Thiên Phát nhận được — không ảnh hưởng đến 49 người còn lại.

## Quy tắc chọn To / Cc / Bcc
| Loại mail | Dùng gì |
|-----------|--------|
| Gửi trực tiếp 1 người | `To:` người đó |
| Gửi 1 người, 1-3 người liên quan cần biết | `To:` người chính, `Cc:` người liên quan (kèm giới thiệu — Rule 20) |
| Gửi 1 nhóm nhỏ (3-7 người) làm việc cùng nhau | `To:` tất cả — họ đã biết nhau |
| Gửi >10 người **biết nhau** (ví dụ cả phòng) | `To:` tất cả hoặc alias nhóm (`phongkd@tienphat.com.vn`) |
| Gửi >10 người **không biết nhau** | **`Bcc:` bắt buộc** |
| Gửi thông báo hàng loạt khách hàng | **`Bcc:` bắt buộc** |

## Khi BCC không hợp — các trường hợp cần chú ý
### Trường hợp 1 — BCC sếp để "gài"
Bạn gửi mail cho một đối tác, BCC sếp của bạn để sếp theo dõi, *mà không nói với đối tác*. Nếu sếp vô tình "Reply All" → đối tác biết → mất niềm tin. Cũng thể hiện văn hoá làm việc thiếu minh bạch.

**Cách đúng:**
- Forward mail cho sếp sau khi gửi.
- Hoặc CC sếp và giới thiệu ("CC chị Hương để chị nắm thông tin") — tức là mở công khai.

### Trường hợp 2 — BCC người nhận chính tiếp theo
Khi thread chuyển chủ đề và cần đưa một người mới vào, không dùng BCC để "đưa lén". Nói thẳng trong body mới: "Em thêm anh Tuấn vào thread từ đây để ảnh tiếp tục theo dõi."

### Trường hợp 3 — BCC thay vì Cc vì lười giải thích
Nếu bạn đang BCC vì *không muốn giải thích tại sao người đó ở đây* — hãy tự hỏi lại: nếu phải giải thích thì có gì sai? Nếu có, đừng CC cũng đừng BCC. Nếu không có, hãy CC và giải thích.

## Cách thiết lập BCC an toàn khi gửi hàng loạt
1. **Viết mail xong, chưa điền người nhận.**
2. Tự gửi cho mình trong `To:` hoặc dùng địa chỉ chung công ty (`info@tienphat.com.vn`).
3. Copy danh sách email khách hàng, paste vào `Bcc:` — kiểm tra 2 lần không có địa chỉ nào rơi vào `To:` hoặc `Cc:`.
4. **Kiểm tra lại lần nữa.** Một lần gửi nhầm là không rút lại được.
5. Nếu danh sách >100 người: nên dùng công cụ email marketing chuyên dụng (Mailchimp, GetResponse, SendinBlue) thay vì BCC, vì BCC dễ bị filter spam khi danh sách quá lớn.

## Cụm từ mẫu
> **"Nhiều người không biết nhau = BCC, không phải Cc. Kiểm tra hai lần trước khi gửi."**

*Dùng khi:* mỗi mail có từ 5 địa chỉ trở lên và bạn không chắc họ có biết nhau không. Khi phân vân, mặc định là BCC.
