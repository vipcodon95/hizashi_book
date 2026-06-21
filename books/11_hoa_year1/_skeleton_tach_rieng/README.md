# BaiTap t04–t12 — tách riêng (skeleton template, CHƯA có nội dung thật)

9 file JSON trong thư mục này là phần **bài tập (BaiTap) của chương 4 đến 12** đã được
**tách ra khỏi sách bài tập** vì nội dung là **template skeleton chưa được điền**, không phải
câu hỏi thật. Tách ngày 2026-06-15 (giữ nguyên trong repo, KHÔNG xoá, để xử lý sau).

## Dấu hiệu skeleton (đã verify trực tiếp từ JSON)

Mỗi file 40 câu, chia 4 level — cả 4 level đều là placeholder:

- **Level 1 (từ vựng):** distractor = `"Khái niệm không liên quan A/B/C"` (chưa thay nội dung thật);
  text đáp án đúng bị cắt cụt, ví dụ `"Casual JP + Saitama dialect + "`.
- **Level 2 (mẫu câu):** chỉ 3–4 mẫu câu lặp xoay vòng 10 câu (có cặp trùng 100%);
  distractor = `"Khi ăn" / "Khi ngủ" / "Không dùng"` — vô nghĩa, không kiểm tra được gì.
- **Level 3 (tình huống):** câu hỏi = `"Tình huống N trong chương X: phản ứng đúng là?"` —
  KHÔNG có nội dung tình huống; đáp án đúng luôn là `"Theo nguyên tắc đã học trong chương"`.
- **Level 4 (văn hoá):** câu hỏi = `"Văn hoá Nhật chương X, sắc thái #N"` — KHÔNG có nội dung;
  giải thích = `"Chi tiết xem trong LyThuyet chương X"`.

Đếm dấu hiệu (mỗi chương): 60 × "Khái niệm không liên quan", 10 × "Tình huống N",
10 × "sắc thái #N", 40 × "Khi ăn/ngủ".

## Phần KHÔNG bị ảnh hưởng (vẫn nằm trong sách)

- **BaiTap t01–t03** (120 câu): câu hỏi thật, 0 placeholder. Còn ở thư mục chương.
- **Mogishiken t01–t12** (240 câu + 60 passage đọc hiểu): toàn bộ sạch, 0 placeholder.

## Việc còn lại (chưa làm)

Viết lại nội dung thật cho 360 câu này dựa trên LyThuyet từng chương (distractor thật, 10 mẫu
câu L2 khác nhau, tình huống L3 cụ thể, nuance L4 cụ thể + giải thích inline). Sau khi viết
xong mới đưa trở lại sách bài tập và đồng bộ DB (course_id 8011).
