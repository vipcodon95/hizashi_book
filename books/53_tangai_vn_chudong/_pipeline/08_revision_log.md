# Stage 8 — Revision Log

> Sách 53 · Comment Dạo Story — Gen Z Chủ Động
> Stage 8 finalize · 2026-07-01

## Bối cảnh

Sách 53 là bản viết lại LẦN 3 sau khi:
1. Sách 52 (Thắng-Linh, 28-27t công sở) bị chê "quá già, thiếu chủ động, thiếu đẩy-kéo, thiếu trêu đùa người lớn"
2. Bản nháp Khoa-Mai (32-29t founder/BD) bị chê tiếp "vẫn già — văn phong business jargon"
3. Sách 53 (Nam 24t content agency / Chi 22t sinh viên năm cuối TMU) — cast đúng tầm 20-25, quen qua comment troll Threads, văn phong Gen Z. T01 có lỗi ngôi xưng ban đầu (Chi bị viết ngược "chị"/Nam "cháu") — đã fix trước khi chạy full pipeline.

## Stage 6+7 review — 3 subagent song song

- Consistency-reviewer: **FAIL có điều kiện** — 2 Major (callback "đừng tưởng bở" thiếu ở T07; jargon business tái phát T03-T04)
- Council-linguist: **PASS-with-reservations** — 5 Major (tập trung ở T04 "phân tầng quan hệ", T12 "công thức content"), ngôi xưng verify sạch 100%
- Council-pedagogue: **PASS-with-reservations** — 0 Major, 2 Minor (câu "không chịu trách nhiệm" T12, tagline "khó rời" T13), khen T09 (xử lý ghen tuông) là chương mẫu mực nhất

## Fix đã áp dụng

### Major #1 — Callback "đừng tưởng bở" thiếu ở T07 (Consistency)
Thêm 4 lượt thoại cuối T07 (`t07_buoi_gap_dau/t07_BuoiGapDau_HoiThoai.md`), Nam nhắc lại nguyên văn "tưởng bở" từ T01, đảo ngược ý nghĩa (từ "đừng tưởng bở" T01 → "tưởng bở lúc này thì được" T07) đúng tinh thần callback tiến triển quan hệ.

### Major #2 — Ẩn dụ "phân tầng quan hệ" T04 (Consistency + Linguist đồng thuận)
`t04_chuyen_zalo/t04_ChuyenZalo_HoiThoai.md`:
- Bỏ "tầng công khai/tầng riêng tư/phân tầng" → thay "quen sơ sơ/thân" (ngôn ngữ tự nhiên hơn)
- Bỏ "authentic/kịch bản" kéo dài → thay "thật/giả trân"
- Bỏ "lên tầng ngôn ngữ riêng" → thay "có ngôn ngữ riêng" (bỏ khung tầng bậc)

### Major #3 — Câu tổng kết "công thức/quy trình content" T12 (Linguist — trọng số cao vì đứng ngay trước callback tỏ tình)
`t12_chinh_thuc/t12_ChinhThuc_HoiThoai.md` dòng 61: bỏ hẳn khung "công thức: A→B→C→D→E, đúng quy trình content chuẩn" → thay bằng câu cảm thán tự nhiên "ai nghĩ được, cãi 1 câu dưới comment mà giờ thành vầy" + "may là e không block anh hôm đó".

### Minor #1 — Câu "không chịu trách nhiệm" T12 (Pedagogue — tránh sắc thái né trách nhiệm kiểu PUA)
`t12_chinh_thuc/t12_ChinhThuc_HoiThoai.md` dòng 40: "anh không chịu trách nhiệm phần đó" → "để em tự quyết đoạn sau thôi" (giữ tinh thần để đối phương chủ động, bỏ khung "chối trách nhiệm").

### Minor #2 — Tagline "kho càng đầy, người càng khó rời" T13 (Pedagogue — framing 1 chiều/dependency)
`t13_glossary/t13_CauChiaKhoa.md` dòng 154: sửa thành "2 cái kho cùng đầy lên mỗi ngày, thì tự nhiên muốn ở gần nhau hơn" — đối xứng 2 chiều, khớp với narrative thực tế (cả Nam và Chi đều có "kho" riêng).

## Reservation không sửa (chấp nhận được)

- T05 joke 18+ #1 "rút" hơi chậm (Pedagogue reservation) — giữ nguyên vì Chi vẫn chủ động đẩy lại, không phải nạn nhân bị động; đây là 1 trong 4 joke, mức độ lệch nhỏ không đủ nghiêm trọng để sửa.
- T11 joke 18+ #3 chạm mức trên cùng của "ngầm" (Linguist reservation) — giữ nguyên vì đây đúng ý đồ outline "đỉnh nhất arc", không mô tả cụ thể, Chi là người chủ động mở joke trước.
- Motif "em vừa tự confirm" lặp cấu trúc ~8-10 lần (Linguist minor) — chấp nhận là voice signature có chủ đích của Nam, không sửa vì sửa hết sẽ mất tính nhất quán nhân vật.
- Tần suất "%" (50-50, 70/30...) dùng dày ở nhiều chương (Linguist minor) — giữ nguyên, đây là tic ngôn ngữ troll đặc trưng của Nam, sửa sẽ làm mất voice.
- Đức (đồng nghiệp Nam) vắng mặt hoàn toàn dù outline liệt kê cameo (Consistency minor) — không sửa, không gây mâu thuẫn nội dung, chỉ là 1 nhánh cameo chưa dùng tới.
- Chi hiếm khi dùng viết tắt k/vs/ko như T13 cheatsheet mô tả (Linguist minor) — không sửa hàng loạt vì rủi ro phá vỡ tông đã ổn định; ghi nhận cho lần viết sau.

## Test pass / fail sau fix

| Check | Result |
|---|---|
| Số chương = 13 (T01-T12 + glossary) | PASS |
| Ngôi xưng Nam=anh / Chi=em xuyên suốt, không đảo ngược | PASS (verify lại sau fix) |
| Pure Vietnamese (không ký tự Nhật) | PASS |
| Không còn jargon business (tầng/signal/authentic/KPI/công thức/quy trình) | PASS (grep sạch) |
| 4 vị trí joke 18+ ngầm (T05/T08/T11/T12) | PASS |
| Chỉ 1 buổi gặp ngoài (T07) | PASS |
| Callback chain đầy đủ (seen-nhạt, kho câu hay, story mất ngủ, đừng tưởng bở) | PASS (đã bổ sung T07) |
| Nam chủ động, đẩy-kéo dày, Chi chủ động bình đẳng | PASS (Pedagogue xác nhận T09 mẫu mực) |

## Ready for build

→ EPUB build: `python3 _shared/scripts/build_epub_combined.py --bundle tangai_vn_chudong_53`.
