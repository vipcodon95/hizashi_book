# Hizashi Sách 08 — Status / Changelog

## v1.1 — 2026-04-26 (review fixes pass)

Áp dụng các fix P0 + P1 từ `REVIEW_FINDINGS_JP.md` và `REVIEW_FINDINGS_VN.md`.

### P0 — JP factual + keigo (5 fixes)

1. **rule_28 広島 弥山 霊火** — sửa "東京タワーの聖火" (sai) → "広島平和記念公園の『平和の灯』" (đúng). Sửa ở cả `rule.md` (3 chỗ) + `conversation.json` (JA + VN).
2. **rule_30 福岡 麦焼酎 #1** — sửa "福岡は麦焼酎の生産量日本一" (sai) → "九州は麦焼酎文化、特に大分が生産量日本一" (đúng). Sửa ở L9 dialogue + VN summary + cheat sheet.
3. **rule_30 福岡 Famous figures** — bỏ 黒田博樹 (Osaka/Hiroshima, không phải Fukuoka), thêm 武田鉄矢.
4. **rule_26 大阪 Famous** — bỏ 安倍晋三 (Tokyo/Yamaguchi, không phải Osaka), thay bằng 桂文枝, 上沼恵美子, 松本人志, 浜田雅功.
5. **phụ_lục_D template** — sửa signature "ティエンファット社" → "ティエンファット" (own-company không thêm 社).

### P0 — VN translation + factual (6 fixes)

1. **SYSTEMIC xưng hô bug** — chạy `scripts/apply_review_fixes.py` (mới), sửa **49 dòng** trong **25 conversation.json** files: JP customers (Matsumoto, Nakamura, Ōgaki, Tanaka, Hiroshi, Yamamoto, Sato, Kobayashi, Ito, Kato) tự xưng "anh"/"em" → "tôi". Script dùng JA context (dò ズンさん/奥様/お子さん) để phân biệt self-ref vs 2nd-person.
2. **rule_35 mâm ngũ quả** — sửa mapping JP-VN sai: マンゴー(Cầu) → カスタードアップル/釈迦頭(Cầu), グァバ(Sung) → イチジク(Sung), ジャックフルーツ(Xoài) → マンゴー(Xoài).
3. **mục_lục.md numbering** — sửa Phần IV (33-40 → 34-41) và Phần V (41-50 → 42-51).
4. **rule_36 cà phê** — sửa "ダラット周辺" → "ブオンマトート・ダクラク省周辺" (Buôn Ma Thuột là vùng robusta lớn nhất, không phải Đà Lạt).
5. **rule_37 climate** — soften "ハノイは1月だと10度切ること多い" → "1月の寒波で10度切ることもあります"; "6-8月は40度近く" → "夏は35度を超える日が多く、稀に40度近くまで上がります".
6. **rule_35 zodiac** — sửa "2つだけ違います" → "4つ違いがあります、特に大きく違うのは2つで" (4 con khác giữa VN-JP, không phải 2).

### P1 — Polish (10 fixes)

- rule_28 お好み村 "4階建て25店舗" → "3階建て約20店舗" (rule.md + conversation.json).
- rule_28 麗ちゃん "創業60年" → "創業半世紀以上" (evergreen).
- rule_03 加藤様 → 加藤さん (verbal address với さん, không 様).
- rule_22 山形 "東北一の酒どころ" → "東北屈指の酒どころ".
- rule_22 福島桃 "天下一品" → "全国2位の生産量で、あかつき・ゆうぞら・川中島白桃が品種".
- rule_43 乾杯 vs お酌 conflation — rewrite note để tách 2 etiquette: お酌 = 両手 tokkuri rót; 乾杯 = junior giữ ly thấp hơn.
- Phụ lục E festival cells — fill empty: 茨城=水戸の梅まつり, 千葉=佐原の大祭, 福井=三国祭, 山梨=信玄公祭り, 岡山=西大寺会陽, 宮崎=高千穂夜神楽. Updated cả `build_appendices.py` source và `phụ_lục_E_47_prefectures.md`.

### Build

- VERSION 1.0 → 1.1 trong `scripts/build_book.sh`.
- Re-ran `scripts/build_appendices.py` rồi `scripts/build_book.sh`.

### Skipped / deferred

- P2 polish items (~20 trong VN review) deferred sang future v1.2 — không blocker cho release.
- Bug minor như "東京の3分の1" (Phụ P1-5), "Phở Pasteur" → "Phở Hòa Pasteur" (P2-18) chưa apply do là stylistic chứ không phải lỗi sự thật critical.

## v1.0 — 2026-04-25 (initial release)

51 rules + 5 phụ lục. Cast 19 speakers, 47 prefectures cheat sheet, regional deep dive.
