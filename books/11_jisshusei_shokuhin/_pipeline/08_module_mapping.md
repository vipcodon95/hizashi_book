# Module Mapping — Một Năm của Hoa

## File presence check

| Module | Folder | LyThuyet.md | BaiTap.json | Mogishiken.json | Status |
|---|---|---|---|---|---|
| T1 | t01_dat_chan_toi_nhat | ✅ | ✅ | ✅ | OK |
| T2 | t02_tuan_dau_nha_may | ✅ | ✅ | ✅ | OK |
| T3 | t03_eisei_kanri | ✅ | ✅ | ✅ | OK |
| T4 | t04_line_operation | ✅ | ✅ | ✅ | OK |
| T5 | t05_furyou_hin | ✅ | ✅ | ✅ | OK |
| T6 | t06_chukan_mensetsu | ✅ | ✅ | ✅ | OK |
| T7 | t07_matsuri_seikatsu | ✅ | ✅ | ✅ | OK |
| T8 | t08_iso_audit | ✅ | ✅ | ✅ | OK |
| T9 | t09_shihin_kaihatsu | ✅ | ✅ | ✅ | OK |
| T10 | t10_recall_kuringu | ✅ | ✅ | ✅ | OK |
| T11 | t11_shourai_keikaku | ✅ | ✅ | ✅ | OK |
| T12 | t12_bonenkai_furikaeri | ✅ | ✅ | ✅ | OK |

## Build script status

- ✅ `_shared/scripts/build_sql_jisshusei_shokuhin.py`: created
- ✅ Generator JSON: `_shared/scripts/generate_jisshusei_shokuhin_json.py`

## SQL build verification

| Item | Count | Expected |
|---|---|---|
| course | 1 | 1 ✅ |
| modules | 12 | 12 ✅ |
| reading_passages | 60 | 60 ✅ (12 × 5) |
| questions | 720 | 720 ✅ (480 BaiTap + 240 Mogishiken) |
| question_sets | 108 | 108 ✅ (12 × 4 BaiTap + 12 × 5 Mogishiken) |

Output: `release/jisshusei_shokuhin_sql/jisshusei_shokuhin.sql` (1.8MB)

## ID allocation verified — không collision

- LEGACY 8010 (business_japanese): 8010xxx, 8010101..8010705, 81xxxxxx
- NEW 8011 (jisshusei_shokuhin): 8011xxx, 80110xxx, 8011xxxxx
- ✅ Không trùng

## Issues
- None
