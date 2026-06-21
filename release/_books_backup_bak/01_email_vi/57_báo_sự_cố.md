---
id: 8001057
curriculum_id: 8001
order_index: 57
node_type: rule
title: "Rule 56 — Báo sự cố: Tình huống → Tác động → Đang làm → Cần hỗ trợ"
rule_no_original: "56"
slug: "báo_sự_cố"
part_original: "phần_IV"
language: vi
---
# Rule 56 — Báo sự cố: Tình huống → Tác động → Đang làm → Cần hỗ trợ
> **Luận điểm.** Khi có sự cố đang xảy ra (production down, khách đang giận, team mất người), mail báo phải cho sếp biết 4 điều trong 30 giây đọc: *chuyện gì, ảnh hưởng ra sao, bạn đang làm gì, cần sếp giúp gì*. Bỏ 1 trong 4, sếp phải gọi lại hỏi.
>
> Từ khóa: **"4 khối báo sự cố"**.
>
> **Liên quan:** Rule 53 (Mail xin lỗi 4 bước) — sau khi sự cố ổn, gửi mail xin lỗi chính thức. Rule 19 (3 dấu hiệu gọi điện) — thường nên gọi trước, mail báo sau.

## Cấu trúc 4 khối — "SITUATION → IMPACT → ACTION → SUPPORT"
### Tình huống
Sự cố gì, khi nào bắt đầu, phạm vi.

### Tác động
Ảnh hưởng đến ai, mức độ nghiêm trọng.

### Đang làm
Team đang xử lý gì ngay lúc này.

### Cần hỗ trợ
Bạn cần sếp / người khác giúp gì cụ thể.

## Ví dụ
> "Chị Hương, báo sự cố Bình Minh:
>
> **[Tình huống]** Từ 22:30 tối qua, API Bình Minh down. Database connection pool exhausted.
>
> **[Tác động]** Khách Hakuō không truy cập được hệ thống. Đã có 1h15p downtime. Khách đã 3 lần gọi hotline hỏi.
>
> **[Đang làm]** Em và anh Tuấn đã vào hệ thống từ 23:00. Đã rollback query gây lỗi. Hệ thống đang được restart, dự kiến hoạt động trong 10 phút tới.
>
> **[Cần chị hỗ trợ]**
> - Chị có thể gọi anh Matsumoto (Hakuō) xin lỗi trực tiếp giúp em không — anh ảnh đang rất căng.
> - Sau 12:00 hôm nay, em sẽ gửi chị bản xin lỗi chính thức để chị duyệt.
>
> Em sẽ cập nhật chị thêm sau mỗi 30 phút đến khi hệ thống ổn hoàn toàn.
> Dũng"

Chị Hương trong 1 phút đọc xong biết đủ để quyết định hành động. Không cần gọi lại hỏi.

## Nguyên tắc cập nhật
- **Cập nhật ít nhất mỗi 30p** trong lúc sự cố đang diễn ra.
- **Cập nhật ngay** khi có thay đổi quan trọng (tình hình xấu đi / tốt lên).
- **Cập nhật cuối cùng** khi đã hoàn toàn ổn: post-mortem ngắn.

## Cụm từ mẫu
> **"Tình huống → Tác động → Đang làm → Cần hỗ trợ. 4 khối. Không thiếu. Cập nhật 30p/lần."**
