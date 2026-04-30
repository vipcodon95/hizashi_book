# Revision Log — Sách 12 "Hoa Năm 2"

## Pipeline summary
- Pipeline type: **LITE** (8 stages, dialogue-only, no exercises/SQL)
- Started: 2026-04-27T05:00:00+07:00
- Finalized: 2026-04-28T04:00:00+07:00
- Total stages: 8/8 ✓

## Fixes applied (Stage 8)

### Critical (2) ✓ ALL FIXED
1. **T11 — Lộ trình 永住権 sai** (Domain): 2039 → **2044** (TTS+SSW1 không tính vào 10 năm 就労資格). Fixed Scene 6, 11 với câu giải thích đầy đủ "TTS と SSW1 は就労資格に含まれない" + recompute timeline.
2. **T11 — "TTS → SSW1 cần N3" sai** (Domain): Đổi thành "TTS 2号 良好修了 + 関連職種 = miễn cả 2 test". N3 không bắt buộc nhưng có lợi cho SSW2 + 転職. Fixed Scene 4 + 5.

### Bonus fix (Major)
- **T11 Scene 7 "Mai Ikusei → 自動 SSW1" sai** (Domain): Đổi thành "không tự động — cần 技能検定3級 + JFT-Basic/N4". Fixed.

### Stage 5 đã apply (~80+ fixes) bởi subagent JP/VN
- ~10 JP grammar/furigana fixes
- ~5 VN spelling/style
- ~50 English removal
- ~15 vocab table romaji

## Files generated

| Type | Count | Path |
|---|---|---|
| Markdown HoiThoai | 12 | `books/12_hoa_year2/t01-t12/*_HoiThoai.md` |
| Pipeline reports | 8 | `books/12_hoa_year2/_pipeline/*.md` + 4 council |

Tổng độ dài: ~50,000+ từ markdown, ~170 dialogue scenes.

## Outstanding (deferred v1.1)

### Major chưa fix (deferred)
1. T8 Mai "デビュー" dẫn audit — Domain: Aeon-level không cho Ikusei <6 tháng dẫn. Cần reframe "Mai shadow Hoa".
2. Missing 在留資格更新 mini-scene T2/T6 (Domain)
3. T8 「下さい」「致します」kanji → hiragana (Linguist)
4. T1 Scene 4 fillers cho Suzuki monologue (Linguist)
5. Mục tiêu measurable per-chương (Pedagogue)
6. T1 vocab box 3 thuật ngữ Ikusei (Pedagogue)

### Minor chưa fix
- 9 Linguist minor + 6 Pedagogue minor + 4 Domain minor = 19 total

## Sách đã sẵn sàng (LITE)

✅ Sách 12 "Hoa Năm 2 — Trở Thành Sempai" hoàn thành toàn bộ pipeline LITE 8 stages.
- 12 chương dialogue
- ~170 dialogue scenes total (gấp đôi sách 11 năm 1)
- ~50,000 từ markdown
- Cast: 11 nhân vật (8 cast cũ + Mai/Putri/Kondo mới)
- Format: bảng 2 cột Speaker / Lời thoại, JP + VN italic, ruby furigana
- Multi-cultural: VN + Indo + Nhật cùng ký túc

## Next steps cho user

1. Đọc / proofread spot-check 1-2 chương
2. Xuất bản: pandoc → ePub/PDF/web
3. KHÔNG seed DB — sách lite chỉ là content reading
4. Update memory `book_12_hoa_year2.md` đánh dấu hoàn thành
5. v1.1 backlog: 6 major + 19 minor từ council
