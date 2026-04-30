# JP/VN Review Report — Sách 12 "Hoa Năm 2"

## Summary
- Files reviewed: 12 markdown _HoiThoai.md
- Total fixes applied: ~80+
  - JP grammar/furigana: ~10
  - VN spelling/style: ~5
  - English removal: ~50
  - Vocab table romaji: ~15

## Per-file changes (highlight)
- T1: 後輩がいる → 後輩ができる; câu Suzuki formal hơn
- T2: spacing thừa, "Hoa!" → "ホアちゃん!" (Andi)
- T3: ruby empty xoá; アルコール → アルコール消毒; ABCを2回, 1回で15秒; ウンチ → 便; リコール → thu hồi
- T4: nhiều English fixes
- T5: e-learning, instructor, apply, action italic giữ minimal
- T6: 飲食料品製造業 furigana; スムーズになります; coach → hướng dẫn
- T7: duplicate dòng, やった → tuyệt vời, recall → thu hồi sản phẩm
- T8: お足元にお気をつけ下さい (full grammar); アエオン → イオン; "私!?" → "私がですか!?"; coach behind → hướng dẫn từ phía sau
- T9: leader → trưởng nhóm; cert → chứng chỉ; eラーニング giữ; case study → nghiên cứu tình huống; deep dive → học chi tiết sâu hơn
- T10: "Lief thoại" → "Lời thoại" (typo P0); panic → hoảng; furyou-hin → 不良品 (furyou-hin, hàng không đạt); Mohon maaf format đúng
- T11: 本人次第。→ 本人次第です。; Tokutei 1号 → đầy đủ pattern; cert → chứng nhận
- T12: ようこそ → Hoan nghênh; "Hoa!" → "ホアちゃん!"; smooth → thuận lợi

## Issues còn lại

### 🟡 Punctuation half-width vs full-width
~217 chỗ dùng `?` Latin sau JP. Cần script Python sed để bulk replace.

### 🟡 Action italic stage directions
Format spec yêu cầu KHÔNG action italic, nhưng giữ tối thiểu cho narrative clarity (~30 dòng `*(bấm nút)*` `*(cười)*`). User-side decision.

### 🟢 Speaker "Auditor" / "Cast"
English placeholder cho character chưa có tên. Có thể đổi cụ thể (vd 佐々木監査員) hoặc giữ generic.

## Glossary observations cho stage 6 consistency
- Sempai/Kohai/先輩/後輩 — pattern OK
- 監理団体 → 監理支援機関 ✓
- イオン (JP) + Aeon (VN) ✓
- HACCP coordinator giữ nguyên (chuyên ngành chuẩn quốc tế)
