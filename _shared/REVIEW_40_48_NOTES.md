# Review notes — sách 40-48 (3 ngành mới: Nông/Ô tô/Khách sạn)

> Ngày review: 2026-05-24

## Tổng kết

- **9 sách / 108 chương** đã review bởi 9 subagent + main agent auto-fix
- **~1,200 lỗi fix in-place** (4 tiêu chí: ngữ pháp JP, ruby furigana, dịch VN, consistency)
- Quality cuối: PASS với các fixes — sẵn sàng dùng

## Critical issue CẦN ANH QUYẾT ĐỊNH

### Sách 47 (Khách sạn Y2) — T9-T12 ruby thiếu `<rt>` hoàn toàn

**Vấn đề:**
- 4 file (t09, t10, t11, t12) có ~287 ruby tag dạng `<ruby>kanji</ruby>` KHÔNG có `<rt>kana</rt>` bên trong
- Reader không hiển thị được furigana → mất giá trị học âm

**File ảnh hưởng:**
- `47_hotel_year2/t09_inbound_eng/t09_InboundEng_HoiThoai.md` (53 ruby)
- `47_hotel_year2/t10_okami_succession/t10_OkamiSuccession_HoiThoai.md` (71 ruby)
- `47_hotel_year2/t11_winter_white/t11_WinterWhite_HoiThoai.md` (83 ruby)
- `47_hotel_year2/t12_y2_close/t12_Y2Close_HoiThoai.md` (80 ruby)

**Phương án:**
1. **Auto-generate furigana** bằng `_shared/scripts/build_furigana.py` (fugashi+UniDic) — nhanh, ~5 phút
2. **Viết lại 4 chương** từ đầu theo pattern chuẩn — chất lượng cao hơn, ~30 phút × 4 subagent

## Issue cấp tác giả (đã note, không tự fix)

### Sách 40 — Timeline gap t09-t12 (đã fix nội bộ)

### Sách 41 — Hương + Saori biến mất từ t05+
- Sách t01-t04 có Hương (kohai), Saori (sempai). Từ t05 hai nhân vật biến mất hoàn toàn.
- Khuyến nghị: thêm 1-2 tình huống có Hương/Saori vào t06/t08/t11/t12

### Sách 42 — Timeline conflict T5 vs T11
- T5 (9/2027): Linh đã chính thức "お受けさせていただきたい" SSW1
- T11 (2/2028): Linh "chính thức trả lời" SSW1 lần nữa
- Khuyến nghị: T5 đổi thành "xin 1 tháng suy nghĩ" hoặc T11 đổi thành "ký hợp đồng chính thức"

### Sách 46 — Timeline T9 Obon (8/2025) đứng SAU T5-T8 (9-12/2025)
- Khuyến nghị: reshuffle thứ tự chương hoặc đổi mốc tháng T9 sang Obon năm 2

### Sách 47 — Cross-book inconsistency với sách 46
- 46: ryokan tên gì → 47 t01-t04 dùng Ouhuusou → 47 t05-t08 đã fix → 48 dùng Tsukiyomi-an
- Khuyến nghị thống nhất 1 tên xuyên 46-47-48

## Files đã fix in-place

Toàn bộ 108 file `*_HoiThoai.md` đã được agent + main auto-fix touch. Có thể commit luôn.
