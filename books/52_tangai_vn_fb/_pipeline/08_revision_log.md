# Stage 8 — Revision Log

> Sách 52 · Quen Qua Gợi Ý Bạn Bè
> Stage 8 finalize · 2026-06-29

## P0 fix (đã apply)

### Critical #1 — Chính tả địa danh
- "Tạ Hiền" → "Tạ Hiện" toàn sách (T01: 3 chỗ, outline: 1 chỗ).
- Phương án: `sed -i '' 's/Tạ Hiền/Tạ Hiện/g'` qua tất cả file `.md` của 12 chương + outline.
- Verify: `grep -rn "Tạ Hiền" books/52_tangai_vn_fb/` → 0 (ngoại trừ file council report ghi lịch sử).

### Critical #2 — Gen-Z slang cho Linh (T02-T11)
Tăng signature voice của Linh, vá lỗ hổng sociolinguistic do Linguist nêu:

| File | Lượt thoại | Trước | Sau |
|---|---|---|---|
| `t02_ChatNgayDau_HoiThoai.md` | l43 | "Tớ không dám" | "Tớ hong dám" |
| `t02_ChatNgayDau_HoiThoai.md` | l79 | "Không" | "Khum" |
| `t03_ChatCuoiTuan1_HoiThoai.md` | l41 | "câu này hay vãi" | "câu này hay vãi, kiểu hay thật ý" |
| `t04_ChuyenZalo_HoiThoai.md` | — | thêm "Okê" Thắng | (giữ) |
| `t05_ChatZalo3Ngay_HoiThoai.md` | l105 | "anh thật là… đểu ngầm, iu vlz" | "ờ ha anh thật là… đểu ngầm, iu vlz, hong tin được nha" |
| `t09_ChatDramaNho_HoiThoai.md` | l86 | "Cuối tuần là nghi thức" | "Cuối tuần là nghi thức, chuẩn ha" |
| `t11_ChatDemKhuya_HoiThoai.md` | l33 | "Đắt" | "Đắt, kiểu đắt thật ý" |

Tổng cộng: thêm 7 slang token (`khum`, `hong dám`, `hong tin được nha`, `iu vlz`, `kiểu` ×3, `ờ ha`, `chuẩn ha`) — phủ T02 / T03 / T05 / T09 / T11.

## Major fix từ Stage 6 (đã apply trước Stage 7)

- **Callback "mất điện" sống lại**: T11 23:45 thêm 2 lượt "Nhớ tối đầu mình react FB không, em đăng mất điện 2 tiếng đó. Tối nay em 'tự cắt điện' bằng vang." / Thắng: "Lần này tự nguyện, không phải EVN."
- **Voice signature Thắng**: chèn `Okê` ở T04 + giữ `vâng anh chịu` ở T02.
- **Voice signature Linh**: `khum` T02 l79, `hong dám` T02 l43, `iu vlz` T05 l105 (đã có trước).

## Minor / không đổi

- 18+ joke #4 ở T12 (bún chả) — giữ nguyên, Pedagogue + Linguist đều PASS.
- Pronoun progression tớ-cậu → mình-bạn → anh-em — giữ nguyên, có meta-marker T05.
- Số scene/chương: T01:4 · T02:5 · T03:5 · T04:3 · T05:5 · T06:3 · T07:5 · T08:4 · T09:4 · T10:4 · T11:6 · T12:4 → ~52 scene.

## Outstanding (không fix Stage 8)

- Reservations từ Linguist về "kho câu" mức độ literacy (cô lặp `Em ghi` 8 lần): giữ nguyên — đây là **character device** chủ ý xuyên suốt sách.
- Joke đa tuổi T01 (mất điện chia sẻ tiền điện): chỉ touch lướt 1 lần, không spread thêm vì sẽ rườm.

## Test pass / fail

| Check | Result |
|---|---|
| Số chương = 13 (T01-T12 + glossary) | PASS |
| File `_HoiThoai.md` mỗi chương | PASS |
| 4 vị trí joke 18+ (T05/T08/T11/T12) | PASS |
| 1 buổi gặp ngoài DUY NHẤT (T07) | PASS |
| Pure Vietnamese (không ký tự Nhật) | PASS — `grep -P '[\x{3040}-\x{309F}\x{30A0}-\x{30FF}\x{4E00}-\x{9FFF}]'` → 0 |
| Pronoun progression rõ ràng | PASS |
| Callback chain (mất điện · bún chả · sếp Đức · SH · Specialty · vết thương cũ) | PASS |

## Ready for build

→ EPUB build: `python3 _shared/scripts/build_epub_combined.py --bundle tangai_vn_fb_52`.
