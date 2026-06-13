# Reading Collection Vocab Review — Final Report

**Date**: 2026-05-10
**Scope**: 70 batch JSON files trong `books/reading_collection/*_drafts/`, 8339 vocab entries

## Tổng kết changes

### 1. Lỗi reading đã fix (28 cases)

| Folder | Lỗi | Số lượng |
|---|---|---|
| native_advanced | Reading sai (なおざりし→とうかんし, モンスーン→もんすーん, データ駆動型→でーた) | 3 |
| n1_advanced | Reading romaji (rikki, masuraoburi, taoyameburi) | 3 |
| Mixed katakana words | reading rỗng → copy từ word (vd ジョギング, シャワー, ストレス, パクチー...) | 19 |
| n3_basic, n5_basic | Mixed kanji+katakana (防災グッズ, ベトナム人, サッカー部) | 3 |

### 2. Lỗi Hán Việt đã fix toàn bộ (~3838 entries / 70 files)

**Root cause**: Script [_scripts/add_han_viet.py](_scripts/add_han_viet.py) ưu tiên sai field — lấy `han_viet` (chứa nhiều reading + reading sai dialect) thay vì `old_han_viet` (chỉ chứa Hán Việt chuẩn UPPERCASE).

**Fix**:
1. Đảo thứ tự fallback: `old_han_viet` ưu tiên, `han_viet` fallback
2. Split cả `;` và `,` (11 entries trong DB dùng comma separator)

**Examples fix**:
- `虚無`: "Hơ Mô" → **"Hư Vô"**
- `諸行無常`: "Chư Hàng Mô Thường" → **"Chư Hành Vô Thường"**
- `執着`: "Chấp Khán" → **"Chấp Trứ"**
- `尊敬語`: "Tôn Kính Ngứ" → **"Tôn Kính Ngữ"** (~10 lần)
- `会`: "Cối" → **"Hội"** (~5 lần mỗi batch)
- `子`: "Tý" → **"Tử"**
- `芥川賞`: "Khối, khải Xuyên Thưởng" → **"Khối Xuyên Thưởng"**

### 3. Từ cổ ngữ — quyết định GIỮ LẠI

User flag ban đầu `をかし` (Heian 古語) "không có trong từ điển hiện đại". Sau khi review toàn bộ corpus:

- ~30 từ cổ ngữ ở `native_advanced` (Genji, Makura no Sōshi, Heike, Man'yōshū, Kokoro Meiji)
- ~10 từ ở `n1_advanced`, `native_basic` (もののあわれ, あはれ, やまとごころ...)
- Đa số là **thuật ngữ học thuật/thi ca cổ điển có giá trị giáo dục**, nằm trong context bài đọc nguồn (đoạn trích Genji, Heike, ...)

→ **KHÔNG xóa** — chỉ giữ trong context bài đọc văn học cổ điển.

## Files report chi tiết

- [vocab_issues_native_advanced.md](vocab_issues_native_advanced.md) — 553 vocab, 3 lỗi reading + 100+ lỗi HV (đã rebuild)
- [vocab_issues_native_basic.md](vocab_issues_native_basic.md) — 555 vocab, 0 lỗi reading + 10 lỗi HV (đã rebuild)
- [vocab_issues_n1_advanced.md](vocab_issues_n1_advanced.md) — 994 vocab, 3 lỗi reading romaji (đã fix)

## Lỗi DB nguồn (out of scope)

- `踏み躙る → "Đạp Rin"` — DB ghi `躙: Rin` (sai phiên âm trong dict_character). Không fix qua script — cần update DB nguồn.
- `禊 → "Hễ"` — DB ghi sai (chuẩn là `Hệ`/`Hề`)

## Schema toàn bộ

✓ All 8339 vocab entries có đủ 4 fields: `word`, `reading`, `meaning`, `han_viet`
✓ No empty `reading` cho word có Nhật (sau khi fix)
✓ No empty `meaning`
✓ No reading dạng romaji (sau khi fix)

## Script changes

[_scripts/add_han_viet.py](_scripts/add_han_viet.py) — 2 lần update:
1. Đảo thứ tự fallback `old_han_viet` ↔ `han_viet`
2. Split cả `;` và `,`

Có thể chạy lại bất kỳ lúc nào: `python3 _scripts/add_han_viet.py --all`
