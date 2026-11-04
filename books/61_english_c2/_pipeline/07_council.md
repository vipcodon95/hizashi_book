# Stage 07 — Hội đồng thẩm định B1–C2 (sách 58, 59, 60, 61)

> Ngày 04/11/2026. Một agent Sonnet đóng 3 vai: ngôn ngữ học tiếng Anh, sư phạm, giáo viên luyện thi VSTEP/IELTS. Agent chấm mẫu 4 chương: B1 u2122, B2 u2526, C1 u0708, C2 u0506.
> Agent chỉ báo cáo. Main Claude sửa đúng các mục 🔴, một lượt. Báo cáo này dùng chung cho cả 4 cuốn.

## Kết luận chung

- Cả 4 chương không có lỗi ngữ pháp tiếng Anh, và mỗi câu hỏi đều chọn được một đáp án.
- Số liệu sự thật đều đúng: Open Science Collaboration 97%/36%, CASP 1994, Nobel 2024, Gatsby vào public domain năm 2021.
- Điểm mạnh:
  - Giải thích tiếng Việt dẫn đúng câu và trích nguyên văn.
  - Câu hỏi thái độ tác giả xuất hiện từ B1 và dày dần lên ở các cấp sau.
  - Phong tục được khoanh vùng theo từng gia đình.

## Đã sửa (🔴)

| # | Chương | Vấn đề | Sửa |
|---|---|---|---|
| 1 | C1 u0708 | Bản dịch dùng chung "vô tội" cho cả "not guilty" và "innocent", trong khi bài dạy đúng chỗ khác nhau giữa hai từ này | "not guilty" dịch thành "không có tội" ở câu 9, câu 13 và câu hỏi 8. "vô tội" chỉ để dịch "innocent" |
| 2 | C2 u0506 | Câu 7: đáp án D ("this year's change") dựa vào cốt truyện chương khác, bài đọc không có | Viết lại D theo đúng câu 12 của bài, và sửa giải thích để chỉ trích từ bài |

Cả hai chương đã chạy `verify_en_chapter.py` và đạt ✅.

## Ghi nhận cho đợt sau (không sửa)

- **Nghi vấn ở câu nối hai bài:** C2 câu 20, B2 câu 20 và B2 câu 16. Đáp án vẫn đúng nhất nhờ loại trừ, nhưng căn cứ ở một trong hai bài còn yếu. Tiêu chí đề xuất: "điểm chung" phải được cả hai bài nói trực tiếp.
- **B2 u2526:**
  - Câu "I minded my own body refusing…" dùng `mind` ở thể khẳng định, ít gặp.
  - Hai nghĩa của "miss" đặt cạnh nhau, dễ gây rối.
- **B1 u2122:**
  - "a parent" bị dịch thành "bố mẹ".
  - "tháng Giêng" và "tháng Một" chưa thống nhất.
  - Một số phương án nhiễu quá lộ (Maui, job fair).
  - Bài 2 có ba mệnh đề phân từ, hơi vượt B1. Đó là điểm ngữ pháp chủ đích của chương nên giữ.
- **C1:**
  - Nhiễu thường phi lý hoặc chứa từ tuyệt đối.
  - Câu 16 có đáp án là cụm danh từ, nên dễ đoán.
  - Nên tăng câu suy luận và câu đòi kết nối nhiều đoạn.
- **Danh sách "Từ ngoài bài học" ở C1/C2** còn dài và có từ dễ (cousin, oxygen…). `rereading` có trong danh sách nhưng không có trong bài.
- **Hướng đợt sau:**
  - Mỗi phương án sai phải sai ở đúng một chi tiết có thật trong bài.
  - Rà bản dịch với những cặp thuật ngữ đối lập mà bài cố ý phân biệt (not guilty/innocent, correlation/cause…).

## CẤM SỬA (đúng, dễ bị sửa nhầm)

- B1 câu 3 (`have been + V-ing + since`), câu 14 (`Built in the 1960s`).
- B2: số liệu lễ Tạ ơn (Plymouth 1621, "historians are not sure that turkey was served"); đáp án câu 4–5.
- C1: `Notwithstanding`, `albeit`, `Should you ever`, `insofar as`; số liệu AlphaFold.
- C2: `Only afterwards did it become`, `less X than Y`, `be bound to`; câu 13 "about a third" = 36%.
