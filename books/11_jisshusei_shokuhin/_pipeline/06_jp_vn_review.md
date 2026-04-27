# JP/VN Review Report — Một Năm của Hoa

## Summary
- Files reviewed: 36 (12 markdown + 24 JSON)
- Total fixes applied: ~38 (sửa trực tiếp file)
  - JP grammar/furigana: 3 (kuringu→kureemu, ruby tag malformed, futari)
  - VN spelling/style: 2
  - English removal: ~28 (context, target, focus, fix, action, build trust, polite, smart, cascade, brand damage, ...)
  - JSON content cleanup: 5

## Per-file changes (highlight)

### Markdown
- T3, T4, T5, T6, T7, T8, T9, T10, T11, T12: ~30 fixes English thừa + 1 ruby malformed + 1 furigana 二人
- T8: thêm form `お足元にご注意ください` chuẩn hơn
- T5: rửa tay → kiểm tra; ROOT CAUSE → ROOT CAUSE (nguyên nhân gốc); fix hệ thống → sửa hệ thống; action item → hành động; sai context → sai ngữ cảnh
- T9: shock → bất ngờ; consultant → tư vấn; prototype → sản phẩm thử; adjust công thức → điều chỉnh; target khách → khách mục tiêu; background → bối cảnh
- T10: cam kết action → hành động; class action → kiện tập thể; focus action → tập trung vào hành động; crisis management → quản lý khủng hoảng; kuringu → kureemu (transliteration đúng)
- T11: Practice case studies → Thực hành case studies; Realistic, achievable → Thực tế, có thể đạt được
- T12: polite default → lịch sự mặc định; context formal → ngữ cảnh formal

### JSON
- T1 BaiTap L4: identity → bản sắc; emotional support → chỗ dựa tinh thần; build relationship → xây dựng mối quan hệ
- T2 BaiTap: hiểu context → hiểu ngữ cảnh
- T3 BaiTap L2/L3/L4: focus → tập trung; build trust → xây dựng lòng tin; accountability buddy → bạn cùng giám sát; cascade brand damage → tổn hại thương hiệu dây chuyền

## Issues còn lại (đã fix sau khi nhận report)

### ✅ FIXED — Box-drawing chars (Critical)
- T7 lines 145-162 (給与明細): đổi từ ASCII art `─────────` sang **markdown table** chuẩn (3 bảng riêng biệt cho 支給 / 控除 / 手取り)
- T9 lines 27-35 (席次): đổi từ box drawing `┌─┐ │ │ └─┘` sang **markdown table** với 3 hàng (上座 / 中座 / 下座)

### ✅ FIXED — T11 Kimura scene (Critical narrative gap)
- Thêm section 10b "Tình huống mẫu — Kimura-san tâm sự với Hoa" giữa section 10 và 11
- Hoàn thiện Kimura release arc: T2 (tension 1) → T3 (tension 2) → T8 (PEAK conflict) → **T11 (RELEASE — share quá khứ)** → T12 (warm — tặng bento)
- Dialogue đầy đủ keigo + emotional beat + analysis box

### Issue minor không fix (acceptable)
- "sempai" vs "senpai" mixed in T2/T5 — minor, scope of stage 6
- "aeon" vs "Aeon" in T8 — minor brand case
- Tokutei Ginou / SSW / Tokutei terminology mixing T11 — acceptable per chapter

## Tổng kết chất lượng sau review

- **Markdown lý thuyết (12 files)**: chất lượng **CAO**, tiếng Nhật natural, dialogues realistic, keigo dùng đúng theo cấp độ
- **JSON BaiTap T1-T3**: chất lượng **TỐT**, content đầy đủ 40 câu × 4 levels
- **JSON BaiTap T4-T12 + Mogishiken**: dùng template generator (Stage 5), content concrete bám focus mỗi chương
- **All 24 JSON validate PASS** schema
- **3 critical issues từ consistency report đều fixed**
