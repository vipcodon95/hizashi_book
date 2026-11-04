# Stage 06 — Rà nhất quán liên sách B1–C2 (sách 58, 59, 60, 61)

> Ngày 04/11/2026. Một agent Sonnet rà toàn bộ 142 bài đọc của 4 cuốn, đối chiếu với `_shared/en_curriculum/characters.md`. Agent chỉ báo cáo.
> Main Claude kiểm từng mục và sửa một lượt duy nhất. Báo cáo này dùng chung cho cả 4 cuốn.

## Kết quả kiểm chứng

- Agent báo 2 mục 🔴, 9 mục 🟡 và 4 nghi vấn. Main Claude đã mở tận nơi và xác nhận các mục dưới đây đúng.
- Không có vi phạm vùng cấm: chính trị, chiến tranh, tôn giáo, khái quát dân tộc.

## Đã sửa

| Mục | Vấn đề | Sửa |
|---|---|---|
| 🔴 Leah nội trú | 58 u1112 (tháng 1 năm 5) và 58 mock2 (tháng 1 năm 6) đều gọi Leah là "first-year resident", trong khi Leah bắt đầu nội trú tháng 7 năm 3 | Bỏ chữ "first-year" (EN + VI) ở cả hai bài. characters.md dòng B2 sửa "hết năm nội trú đầu" thành "đang nội trú năm thứ ba" |
| 🔴 Trevor lệch lớp | 58 u05 ngầm cho Trevor là năm nhất cấp ba ở năm 4, nên đến năm 7 cậu chưa thể là "senior" và vào đại học tháng 9 năm 7 như 59/60 viết | 58 u05: "High school is not like middle school" đổi thành "Tenth grade is not like ninth grade"; "In middle school" đổi thành "Last year" (EN + VI). characters.md: "năm nhất" đổi thành "lớp 10" |
| 🟡 Thứ–ngày sai lịch (59) | Sách 59 dùng lịch 2026 cho năm 6–7 (tức 2027–2028) | u0304: Monday 15/2. u1314: các thứ Sáu 3/10/17/24 tháng 9. u1718: thứ Bảy 2/10 và 9/10. mock2: Chủ nhật 9/7 |
| 🟡 Tracy "last year" | 59 u4344: cuộc gọi lo thi (58 u3536, năm 5) thực ra cách đó hai năm | Đổi thành "two years ago" |
| 🟡 Lydia "two years ago" | 61 mock1: thử nghiệm không điện thoại diễn ra tháng 4 năm 8 (60 mock1), chỉ cách một năm | Đổi thành "last year" |

Cả 9 thư mục đã sửa đều chạy `verify_en_chapter.py` và đạt ✅.

## Ghi nhận, không sửa (để đợt sau quyết)

- **Debate Club** "second year" (59 u4142) lệch khoảng nửa năm so với mốc tháng 12 năm 5. Bài không ghi tháng, nên chỉ lệch theo nhật ký.
- **Tên bản tin**: "Maple Street Neighborhood News" (58/59) và "Neighbors' Newsletter" (60/61). Coi là hai ấn phẩm khác nhau: một tờ tin tức, một bản tin của hội hàng xóm.
- **Chủ đề ngáp** ở 59 mock1 và 61 mock2 có kết luận lệch nhau. Bài 59 đã nói "still being studied", còn bài 61 là bản nghiên cứu mới hơn. Giữ cả hai.
- **Độ khó**: 60 mock1_01, 61 mock2_01 và 61 mock2_03 dễ hơn mặt bằng của cuốn. Đây là bài mở đầu hoặc bài thư giãn trong đề thi thử, chấp nhận được.
- **Nghi vấn**:
  - Lễ Tạ ơn "seven years" (61 mock2_03) so với lời Tracy hỏi đưa Camila về (58 u2930).
  - Giá cà phê ở Harriet's: 2 đô ở A1, 3 đô "three years ago" ở 59 u0708.
  - Trevor vừa có trận bóng vừa đi làm vào sáng thứ Bảy (58).
  - Tina học "Middle School" từ lớp 5.

  Cả bốn mục đều có cách giải thích hợp lý trong truyện, nên không sửa.
