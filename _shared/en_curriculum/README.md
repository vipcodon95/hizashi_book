# Khoá tiếng Anh Hizashi A1–C1: danh sách phiếu (nguyên liệu)

Đây là danh sách phiếu học của khoá tiếng Anh trên app Hizashi, dùng làm nguyên liệu để viết **sách bài tập đọc nâng cao**. Cách viết, cấu trúc sách và dạng bài do bên viết tự quyết.

Dữ liệu được xuất từ `HZLanguageResource/en/curriculum/` bằng script `export_book_source.py` (03/11/2026). Đừng sửa tay các file ở đây: muốn cập nhật thì chạy lại script.

## Các file

### `a1.json` … `c1.json`

Mỗi file là một cấp độ: `units[]`, mỗi unit có `title` (en/vi) và `sheets[]`.

Số phiếu theo cấp:

| Cấp | Số phiếu |
|---|---|
| A1 | 64 |
| A2 | 80 |
| B1 | 161 |
| B2 | 181 |
| C1 | 49 |

Mỗi phiếu có các trường:

| Trường | Nghĩa |
|---|---|
| `id` | mã phiếu, ví dụ `b1.37` |
| `theme` | chủ đề của phiếu |
| `words` | 15 từ mới của phiếu, kèm nghĩa tiếng Việt và từ loại |
| `phrasal` | cụm động từ (từ B1 trở lên) |
| `collocations` | cụm từ hay đi kèm |
| `grammar` | mã các điểm ngữ pháp học ở phiếu này; tra trong `grammar.json` |
| `grammar_words` | từ chức năng mà phiếu dùng tới (I, the, in…) |
| `has_reading` / `reading_title` | phiếu cuối mỗi unit đã có sẵn một bài đọc ngắn trong app; đây là tên bài đó. Tránh viết trùng nội dung. |

### `grammar.json`

Liệt kê từng điểm ngữ pháp với: `id`, tên tiếng Anh và tiếng Việt, nghĩa tiếng Anh và tiếng Việt, và `first_level` (cấp lần đầu xuất hiện).

## Nguyên tắc vốn từ

Học viên làm tới phiếu X thì đã biết:
- **từ và ngữ pháp:** mọi từ và điểm ngữ pháp của các phiếu từ đầu A1 tới X (cộng dồn qua các cấp);
- **từ thông dụng:** các từ thông dụng hơn ở cấp dưới.

Bài đọc gắn với phiếu X nên:
- **dùng:** chủ yếu từ trong phạm vi trên, và chủ động dùng lại các từ và ngữ pháp của chính phiếu X;
- **từ ngoài phạm vi:** ít, và có chú nghĩa tiếng Việt.

## Để nhập ngược vào app

Mỗi bài đọc phải ghi **mã phiếu** (hoặc mã unit) mà nó luyện, để sau này nhập được vào khoá học.

## Tên nhân vật và địa danh

Giáo trình app đã đổi hết tên Việt sang tên Mỹ (02/11/2026): giọng đọc tiếng Anh đọc sai tên Việt, kiểu `Lan` thành *Lamb*. Sách dùng **đúng bộ tên này** để khớp với app. Cần thêm nhân vật thì chọn tên Mỹ phổ biến, dễ đọc. Không dùng tên Việt.

| Nhân vật (tên cũ) | Số lần dùng |
|---|---|
| **Megan** (Mai) | 391 |
| **Leah** (Linh) | 383 |
| **Nathan** (Nam) | 306 |
| **Mitchell** (Minh) | 195 |
| **Lydia** (Lan) | 133 |
| **Helena** (Hoa) | 115 |
| **Tina** (Thảo) | 54 |
| **Tracy** (Trang) | 50 |
| **Harriet** (Hương) | 37 |
| **Trevor** (Tuấn) | 13 |
| **Amy** (Anh) | 2 |

| Địa danh cũ | Địa danh mới |
|---|---|
| Hà Nội | Washington |
| Sài Gòn | New York |
| Huế | Philadelphia |
| Đà Nẵng | San Diego |
| Nha Trang | Miami |
| Hội An | Savannah |
| Đà Lạt | Asheville |
| Sa Pa | Aspen |
| Phú Quốc | Maui |
| Hạ Long | Monterey |
| Mê Kông | Mississippi |
| Hải Phòng | Baltimore |
| Cần Thơ | New Orleans |
| Phong Nha | Mammoth Cave |
| Phố cổ | Georgetown |

Tên phố ví dụ: dùng tên phố Mỹ thông thường, đừng dùng tên phố Việt.
