# Consistency Report — Sách 13 "Hoa Năm 3"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **PASS WITH FIXES**
> Severity: 3 CRITICAL, 4 MAJOR, 5 MINOR

## CRITICAL (MUST FIX trước Stage 8)

### CRITICAL-1: T8 Output destination contradiction
**File**: t08_AuditLawson_HoiThoai.md Scene 8 line 142
**Vấn đề**: Audit là **Lawson** nhưng demo traceability output: "出荷先：関東地域のセブンイレブン店舗 120店" (7-Eleven). Không thể: Lawson audit OEM thì output phải Lawson stores, không 7-Eleven (đối thủ).
**Fix**: Đổi `セブンイレブン` → `ローソン` ở line 142.

### CRITICAL-2: Mâu thuẫn recall T4 vs T8
- T4 Scene 4 line 65-66: "回収不要。ラベル修正すれば出荷OK" (KHÔNG cần recall)
- T8 Scene 7 line 121: "1200個 自主回収+是正措置実施" (đã tự thu hồi)
**Fix**: Đổi T8 line 121 từ "自主回収" → "**社内是正対応**" hoặc "**社内ロット廃棄**".

### CRITICAL-3: T4 outline mention "peanut" nhưng content chỉ cashew
**File**: t04_LineCrisis_HoiThoai.md line 3, 9 (Mục tiêu + Bối cảnh)
**Fix**: Xoá "+ peanut" trong line 3+9. Update outline `_pipeline/02_outline.md` line 34.

## MAJOR (SHOULD FIX)

### MAJOR-1: Tanaka title 部長 vs 工場長 không nhất quán
- T2 line 164: "田中部長"
- T4 line 35, 206: "田中部長"
- T5/T6/T7/T8/T11/T12: "タナカ工場長"
**Fix**: Standardize "工場長". Sửa T2 line 164, T4 line 35+206.

### MAJOR-2: Tuổi Hoa không nhất quán
- T1 line 9: "Hoa = 24 tuổi" (4/2028)
- T5 line 237: "23 tuổi" (8/2028)
- T8 line 310: "23 tuổi" (11/2028)
- T9 line 205: "24 tuổi" (1/2029)
- T12 line 146: "24歳" (3/2029)
**Fix**: Theo T1+T9+T12 = 24 tuổi suốt sách 13. Sửa T5 line 237 + T8 line 310 từ 23 → 24.

### MAJOR-3: Putri vắng bóng T3-T12 không lý giải
**Fix**: Add Putri vào T12 cast list (Scene 6) hoặc thêm 1 câu T3/T6 explain.

### MAJOR-4: Mai hometown T3 vs T10
- T3 line 142: "カントーには無い" (implies Cần Thơ)
- T10 line 84: "Em là Mai từ Hà Nam" (canonical từ user)
**Fix**: T3 line 142 đổi `カントー` → `北部` (Bắc bộ — Mì Quảng đặc sản miền Trung, logic hơn).

## MINOR

- **MINOR-1**: Suzuki "鈴木さん" T1 vs "スズキ主任" T6+ — acceptable nếu intentional formality shift
- **MINOR-2**: T9 "奥さん" vs T10-T12 "家内" — sửa T9 line 154 từ 奥さん → 家内
- **MINOR-3**: T6 line 137-138 永住権 timeline confusing (2039 vs 2044) — re-phrase clearer
- **MINOR-4**: Vocab table heading T1-T4 dùng "Romaji", T5-T12 dùng "Kana" — standardize "Kana"
- **MINOR-5**: T4 outline "1000+" hộp vs content "1200" — update outline

## INFO (Sách làm tốt)

- Timeline 4/2028→3/2029 chính xác xuyên 12 chương
- 永住権 2044 nhất quán T6+T11 (post-fix sách 12)
- Glossary core terms (技能検定, 良好修了, 受入機関, JFT-Basic, HACCP) consistent
- Trang Đà Nẵng 22 tuổi nhất quán T1+T2+T10
- Tanaka như "bố thứ 2" callback T10→T11→T12
- Mẹ qua thăm T10 → vợ Tanaka học phở T11 → bố mẹ video T12: chuỗi callback đẹp
- Cuốn sổ 指導員 thứ 3 T12 callback cuốn 1+2
- Hộp danh thiếp T12 callback T7
- Format Scene table 2 cột 100% nhất quán

## Overall
Continuity rất cao. Timeline + emotional arc + callback structure mạnh. 3 CRITICAL fix nhanh (<30 phút). Sau fix READY.
