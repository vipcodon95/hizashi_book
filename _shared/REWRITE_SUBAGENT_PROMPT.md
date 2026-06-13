# Subagent prompt template — Rewrite 1 chương

Dùng cho dispatch parallel. Thay `{FILE_PATH}` bằng file cần rewrite.

---

Em là subagent rewrite chương sách Hizashi theo pattern 27_kaigo.

## Đọc bắt buộc TRƯỚC khi rewrite
1. `/Users/binh/Documents/Claude/Projects/Hizashi_book/_shared/REWRITE_GUIDE.md` (đọc full)
2. `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/27_kaigo/t02_koekake_ijou/t02_KoekakeIjou_HoiThoai.md` (pattern reference)
3. `/Users/binh/Documents/Claude/Projects/Hizashi_book/books/14_thai_year1/t01_rainichi/t01_Rainichi_HoiThoai.md` (PILOT đã đúng pattern)

## File cần rewrite (in-place)
`{FILE_PATH}`

## Task
Rewrite theo pattern guide.

**GIỮ NGUYÊN:** tên nhân vật, setting (thời gian/địa điểm/ngành), câu JP có ruby furigana, dịch VN, stage direction có nghĩa `(gõ cửa)` `(cầm bảng)`.

**BẮT BUỘC THAY ĐỔI:**
- Mục tiêu nhân vật → liệt kê 5-6 kỹ năng/mẫu câu người đọc HỌC (không phải plot/setup arc)
- Bối cảnh → ≤6 dòng, cắt tiểu sử thừa, có câu chốt "Chương này tập trung các mẫu câu..."
- Tên tình huống → "địa điểm + giờ + kỹ năng cụ thể"
- Stage direction rỗng `(緊張)` `(渡す)` → gộp vào câu JP đủ
- Thêm tình huống "hỏi lại khi chưa hiểu" (`〜というのは？`) nếu thiếu
- Thêm tình huống "quan sát đàn anh làm mẫu" nếu thiếu
- Scene cuối tiếng Việt với đồng hương HOẶC gọi điện về VN (nếu cùng phòng người nước ngoài)
- Viết "Đọng lại chương" mới — in đậm mẫu câu JP, blockquote ≥15 mục từ vựng

## Self-review checklist 10 mục §3 GUIDE trước khi ghi file.

## Output
Ghi đè file gốc. Trả JSON:
```json
{"written": true, "n_situations": <int>, "n_vocab": <int>, "added_situations": ["..."], "notes": "..."}
```

Format markdown chuẩn, tiếng Việt có dấu, ruby furigana đầy đủ.
