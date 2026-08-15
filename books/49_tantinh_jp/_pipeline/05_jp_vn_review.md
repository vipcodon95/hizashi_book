# Stage 5 — JP/VN Review Report (Sách 49)

> Reviewer: japanese-vietnamese-reviewer subagent
> Date: 2026-06-27
> Files reviewed: 17

## Tổng quan

Chất lượng sách 49 ở mức RẤT CAO trước review — gần như hoàn thiện. Cường (クオン) nhất quán xuyên 17 files, không còn dấu vết クアン / チュオン / Quân / Trường. Không vi phạm rule (`(VN, ...)`, ruby `<ruby><rt>`, cột "Speaker"/"Nhân vật", nhân vật Hiếu). Cột `Vai` đúng chuẩn 100%.

Văn phong: ngôi "anh/em" nhất quán; voice 5 cô (Yui pure / Mika gal-lite / Saki cty / Rina business sake / Aoi văn chương) match cast type rõ ràng; keigo / タメ口 level khớp ngữ cảnh từng scene. Slang Gen Z 2025-2026 (ガチで, ずるい, 勝ち確, ベタ, バレた) dùng đúng tone.

Vấn đề tìm thấy: 4 nhóm nhỏ — (1) phiên âm sake `写楽` sai (Shazaku → **Sharaku**), (2) 1 vai bị nhầm logic ở T5, (3) 1 mẫu câu JP grammar lỗi nhẹ (なぜ + のは + 何 thừa), (4) vài câu dịch VN chưa khớp (`お待たせしました`, ngày tháng JP-VN format). Tất cả đã fix trực tiếp.

Ước lượng: ~98% dialog OK từ đầu. Fix áp dụng: 9 chỗ tổng cộng qua 7 file.

## Fix đã apply (theo file)

### t02_irl_makequen
- L58 [JP→VN]: "Shazaku Junmai Ginjo" → "Sharaku Junmai Ginjo" (写楽 đọc しゃらく = Sharaku)
- L59 [VN]: "Shazaku chắc không trượt" → "Sharaku chắc không trượt"
- L60 [VN]: "Shazaku, ngon vậy luôn à" → "Sharaku, ngon vậy luôn à"
- L106 [VN]: "Để anh đợi xin lỗi" → "Xin lỗi đã để anh đợi" (dịch đúng nghĩa `お待たせしました`)

### t04_smalltalk_hobby
- L167 [JP grammar]: Mẫu câu `なぜ〇〇を選んだのは何かありますか？` → `〇〇を選んだのは何かありますか？` (`なぜ + のは + 何` thừa cấu trúc; câu trong scene line 82 đã đúng grammar)
- L167 [VN]: "Sao em chọn 〇〇?" → "Em chọn 〇〇 có lý do gì không?"

### t05_smalltalk_work
- L34 [logic vai]: Vai `Saki | 沙希さん的・今週の名言です` → Cường nói (Saki không tự xưng "沙希さん的"; người đặt tên cho câu nói là Cường). VN: "phiên bản em" → "phiên bản Saki-san".

### t08_invite_date1
- L56 [VN format ngày]: "Đến 6/8" → "Đến ngày 8/6" (6月8日 = 8/6 theo VN; đồng nhất với L105/117 đã DD/MM "23/11" và L131 "13/7")

### t09_date_cafe
- L75 [VN từ vựng]: "2 tiếng, đúng cọng" → "2 tiếng, đúng phóc" (`ぴったり` = đúng phóc)

### t12_handle_kidoku
- L35 [VN]: "Shazaku và Denshu" → "Sharaku và Denshu"
- L59 [VN]: "cho anh mời Shazaku" → "cho anh mời Sharaku"

### t17_glossary
- L139 (câu 34) [JP grammar]: đồng nhất fix T4

## Vấn đề CẦN USER DUYỆT

KHÔNG có.

## Vi phạm rule còn lại

KHÔNG có. Audit cho thấy 0 nội tâm VN, 0 ruby, 0 cột sai, 0 Hiếu, 0 クアン/チュオン.

## Chất lượng theo tiêu chí

| Tiêu chí | Đánh giá | Ghi chú |
|---|---|---|
| Tự nhiên (JP native feel) | A | Slang Gen Z, keigo, タメ口 đúng tone từng cô |
| Voice consistency theo cast | A | 5 cô + 2 cameo không drift |
| Dịch VN tự nhiên | A− | Pha JP-VN (立ち飲み, 銀杏, パン) đúng cách |
| Format bảng `Vai` | A | 100% files dùng `Vai` |
| Nhân danh クオン nhất quán | A | ~150+ lần, không lệch |

## Đề xuất cho Stage 6+

1. Cross-check inside joke chain xuyên chương — hiện consistency tốt.
2. Phiên âm Hepburn cho sake/người Nhật đã ổn sau fix.
3. T10 Scene 3 `沙希さん守る方が業務より大事です` — power dynamic (Cường = leader Frontend, Saki = Design cùng team) → OK nhưng council có thể duyệt lại văn hoá choice.
