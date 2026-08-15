# Stage 5 — JP/VN Review Report (Sách 50)

> Reviewer: japanese-vietnamese-reviewer subagent
> Date: 2026-06-28
> Files: 13 (T01-T13)
> Fixes applied: ~80

## Tổng quan

Sách 50 chất lượng nền CAO — dialog Nhật tự nhiên, voice 3 nhân vật tách rõ, callback chain mượt. Lỗi chủ yếu:
- Tiếng Anh dư trong dịch Việt (~50 chỗ)
- 2 lỗi nghiêm trọng gán nhân vật (T07 + T10)
- 1 lỗi ngữ pháp nhẹ T03

Tất cả đã fix trực tiếp.

## Fix critical đã apply

### T07 line 78-80 — MISLABEL gán nhân vật
- Trước: Cường hỏi `クオンの方は、家、にぎやか？` (hỏi chính mình) → Aya trả lời về 妹 (Aya con một)
- Sau: **Aya** hỏi `クオンさんの方は、家、にぎやか？` → **Cường** trả lời về妹+両親
- Tác động: phá identity Aya = con một (T04 line 117 setup)

### T10 line 74 — Tên Aya trong tin LINE
- Trước: `「桜井さん、麻衣さん」` (lặp Mai 2 lần)
- Sau: `「彩さん」` (tin gửi cho Aya thì gọi tên Aya)

### T03 line 28 grammar
- `編集者のしんどさそうですね` → `編集者のしんどさにありそうですね`

## Fix tiếng Anh dư (50+ chỗ)

- `data` → `dữ liệu`
- `terminal` → `nhà ga`
- `carousel` → `băng chuyền`
- `Immigration` → `Xuất nhập cảnh`
- `Studio` → `studio (xưởng quay)`
- `cargo` → `hàng hoá (cargo)`
- `delay` → `trễ chuyến (delay)`
- `turbulence` → `nhiễu động`
- `seat belt` → `dây an toàn`
- `engineer` → `kỹ sư`
- `Shooting` → `quay chụp`
- `Cty` → `Công ty`
- `voice nhỏ` → `nói nhỏ` (toàn bộ stage direction)
- `neckpillow` → `gối cổ`
- `vending machine` → `máy bán nước tự động`

## Vi phạm rule

| Rule | Status |
|---|---|
| Không nội tâm VN | ✅ (T12 mẹ-Cường 2 dòng VN intentional) |
| Không furigana | ✅ |
| Cột `Vai` | ✅ (1085 occurrences) |
| Cường = クオン | ✅ (sạch クアン/チュオン/Quân/Trường) |
| Stage direction ≤ 5 từ | ⚠️ vài câu hơi dài (chấp nhận do context vật lý máy bay) |

## Chất lượng

| Tiêu chí | Đánh giá |
|---|---|
| Tự nhiên JP | A |
| Voice consistency | A |
| Dịch VN | A− (sau fix Anh dư) |
| Format bảng | A |
| Tên クオン nhất quán | A |

## Issues còn lại (cần Stage 8 user duyệt)

1. T05 line 173 metacomment `recycle từ sách 49` — flag cho Stage 8 fix
2. T05 line 88 metacomment `như đã sửa ở sách 49`
3. T13 line 322 cheatsheet `(đây sách 50, không lặp sách 49)`
4. T13 line 64-65 glossary `業務外/業務以外` không xuất hiện trong T01-T12
5. Commentary "Vì sao thắng" còn dùng tiếng Anh (wingwoman/hook/callback/foreshadowing) — kế thừa từ sách 49, có thể giữ
