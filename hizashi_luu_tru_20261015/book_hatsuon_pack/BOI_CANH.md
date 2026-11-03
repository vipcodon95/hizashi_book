# BỐI CẢNH: HIZASHI 発音 (Ánh sáng từ giai điệu)

Đọc file này trước tiên. Cập nhật ngày 15/10/2026.

> ## ★ PHẦN CHÍNH: `00_BAN_CHOT_HOC_SINH/`
> **Bản chốt Bản Học sinh** gồm 12 chương, kèm `SACH_HOC_SINH_BAN_CHOT.md` là toàn bộ sách gộp thành một file. Chủ biên đánh giá bản này đã ổn. Mọi thư mục còn lại trong gói chỉ là nguồn và tư liệu.

## 1. Tình trạng

- **Bản Học sinh: đã xong.** Gồm 12 chương (Chương 0–11). Đã qua thẩm định nội dung, thống nhất thuật ngữ và biên tập câu chữ. Cấu trúc phương pháp đã được sửa theo nguyên tắc "nghe trước, nói sau". Cách diễn đạt đã được rà để quá trình tự động của não viết bị động, hành động của người học viết chủ động.
- Bản Học sinh đã được đưa lên **Claude Docs** để chủ biên đọc và góp ý: https://claude.ai/artifact/MM1Dr342TzeUFA8VzRPWox. Các file md trong `book_hatsuon/student/` là bản gốc của tài liệu đó.
- **Bản Giáo viên: chưa viết.** Dự kiến giữ cùng 12 chương, viết hàn lâm hơn, thêm lỗi điển hình và gợi ý tổ chức lớp, và không có bài tập.

## 2. Hai nơi đặt sách phát âm (đều có trong gói)

| Thư mục trong gói | Lấy từ | Nội dung |
|---|---|---|
| `nguon_goc_hizashi_with_baby/alphabet/` | `hizashi_with_baby/alphabet/` | **Nguồn gốc của file PDF cũ** "HIZASHI 発音 - Ánh sáng từ giai điệu.pdf": `data_source/books/book.html` đọc `complete_book.json` |
| `book_hatsuon/` | `hizashi_book/book_hatsuon/` | Toàn bộ khung `alphabet` đã được chép sang đây, cộng với **bản viết lại** ở `student/` |
| `book_phat_am/` | `hizashi_book/book_phat_am/` | Một bản khác: `SACH_PHAT_AM_TOAN_TAP.md`, `index.html`, `knowledge_book.json` |

Thư mục `alphabet copy` trong `hizashi_with_baby` là bản cũ hơn và ít file hơn. Gói chỉ lấy file riêng của nó: `japanese_alphabet_tu_alphabet_copy.md`.

## 3. Các file chính trong `book_hatsuon/student/`

| File | Vai trò |
|---|---|
| `HOI_DONG_SACH.md` | Quy chuẩn hội đồng: văn phong, khuôn chương, quy tắc chính xác, mục lục và phân công |
| `BANG_THUAT_NGU.md` | Bảng thuật ngữ thống nhất |
| `chuong_00_mo_dau.md` … `chuong_11_lo_trinh.md` | 12 chương bản cuối. Chương 1 là `chuong_01_truong_am_v2.md` |
| `chuong_01_truong_am.md`, `SACH_HOC_SINH.md` | **Bản nháp cũ**, đã được thay thế, giữ lại để tham khảo |

## 4. Lưu ý về nguồn

- `book_hatsuon/data_source/research/su_khac_biet_am_thanh.md` là văn mẫu về lối viết. Tuy vậy, mục 4.2 của file **sai so với bài gốc** của Le, Kondo & Tsukada (2025). Kết luận đúng của bài gốc đã được ghi trong `HOI_DONG_SACH.md` mục 4.
- Các file JSON và research trong `data_source/` phần lớn do AI tổng hợp. Chúng có lỗi về trọng âm, cặp tối thiểu giả và con số không có nguồn. Bản Học sinh đã loại bỏ hoặc sửa những lỗi này.

## 5. Tài liệu gốc khác (`tai_lieu_goc/`)

- File PDF cũ của sách, `hizashi_shadowing.pdf`, `nhanxet.pdf`.
- Các file docx nghiên cứu: phát âm Tokyo, sokuon, shadowing, biến âm.
- `nghien_cuu_md/`: bản md của bốn chủ đề nghiên cứu trên.

Không đóng gói: `__pycache__`, file `.env`.
