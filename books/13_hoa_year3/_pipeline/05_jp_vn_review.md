# JP/VN Review Report — Sách 13 "Hoa Năm 3"

> Reviewer: japanese-vietnamese-reviewer
> Date: 2026-04-28
> Status: 12/12 file edit trực tiếp
> Tổng fix apply: ~80 (P0+P1+P2)

## Phân loại fix

### JP fix (~10)
- Sửa empty ruby tags `<rt></rt>`
- Sửa typo `<ruby>4<rt>がつ<rt></rt></ruby>` → `<ruby>4月<rt>しがつ</rt></ruby>` (T8)
- Sửa furigana sai `2<ruby>年前<rt>まえ</rt></ruby>` → `<ruby>年前<rt>ねんまえ</rt></ruby>` (T12)
- Fix kana `年<ruby></ruby>` mất tag mở T12 scene 2
- Fix particle `関<ruby>かん</rt></ruby>` thiếu `に` (T11)
- Xoá ký tự Hán `啊` trong VN sentence (T5)

### English thừa loại bỏ (~50 fix)
- "leader" → "trưởng nhóm" (~15 lần xuyên T4/T8/T10/T11/T12)
- "audit/auditor" → "kiểm tra/người kiểm tra"
- "label" → "nhãn"; "recall" → "thu hồi"; "process" → "quy trình"
- "checklist" → "danh mục kiểm tra"; "calibration" → "hiệu chuẩn"
- "set zero" → "cân về 0"; "topping" → "món ăn kèm"
- "stay/go" → "ở lại/đi"; "Stay" → "Ở lại"
- "case" → "trường hợp"; "pressure" → "áp lực"; "career" → "sự nghiệp"
- "Plan" → "Kế hoạch"; "OK" → "ổn"/"được" (giữ casual)
- "cast" → "mọi người" (T10/T11)
- "30,000 yên" → "30.000 yên" (chuẩn VN)
- "offer" → "lời mời"; "recruiter" → "người tuyển dụng"
- "surprise" → "bất ngờ"; "daily" → "hàng ngày"
- "Edo period" → "thời Edo"; "Imo bánh" → "bánh khoai"
- "fighting" → "cố lên ạ"; "internal" → "nội tâm"

### VN văn phong (~20 fix)
- Thêm "ạ" cho kohai-sang-sempai
- Thêm "anh/chị" trước tên
- "1 mình" → "một mình"
- Dịch sát hơn cho dialogue tự nhiên

## File-by-file
| File | Fix count | Priority chính |
|------|-----------|----------------|
| t01 | 4 | P1 (English in plan list) |
| t02 | 7 | P1+P2 |
| t03 | 8 | P0 (empty ruby) |
| t04 | 12 | P1 (label, leader xuyên scene) |
| t05 | 8 | P0 (`啊` lạc, calibration) |
| t06 | 6 | P0 (speaker label) |
| t07 | 11 | P1 (recruiter, hall, booth) |
| t08 | 16 | P0 (4がつ), P1 (audit/leader) |
| t09 | 5 | P1 (daily, recruiter) |
| t10 | 12 | P1 (cast, ổng→anh ấy) |
| t11 | 14 | P0 (closing tag), P1 (cast/leader) |
| t12 | 10 | P0 (年前 kana), P1 (surprise, internal) |

## Issues chưa fix (giữ choice tác giả)
1. T12 scene 16-18 — Mai vẫn gọi "sempai" (cố ý — thân quen)
2. T07 scene 13-14 — Hoa cúi đầu cụt sau Kondo (cần verify với native)
3. T08 scene 4 — Sasaki "怪訝そうな表情" + "失礼" natural OK
4. T10 scene 14 — Câu mẹ ngắn cố ý style cô đọng
5. Pattern `(VN)` prefix code-switching — consistent xuyên sách
6. Ruby furigana từ ngoại nhập (OEM, SSW1) — chỉ 1-2 lần đầu file

## Status
Tất cả 12 file đã edit. Không còn lỗi structural nghiêm trọng cần rewrite.
