# Linguist Council Review — Sách 13 "Hoa Năm 3"

> Reviewer: council-linguist
> Date: 2026-04-28
> Verdict: **CONDITIONAL PASS**
> Severity: 3 Critical, 11 Major, 4 Minor

## TOP 3 CRITICAL (BẮT BUỘC fix Stage 8)

### CRITICAL-1: Tanaka register inconsistency cross-files
- T1 scene 4: Tanaka dùng `です・ます` chuẩn ✓
- T4 scene 12, T8 scene 1, T12 scene 15: Tanaka dùng **`俺`** với subordinate Hoa workplace
- **Problem**: 工場長 50s formal dùng `俺` với TTS subordinate workplace là rất bất thường. Real Japanese dùng `私` ngay cả với subordinate.
- **Fix**: Standardize Tanaka = `私` workplace context (T4 scene 12, T8 scene 1). `俺` chỉ trong T12 scene 15 izakaya OK.

### CRITICAL-2: T8 scene 4 Hoa-Sasaki Uchi/Soto rule violation
- Hoa nói với external auditor Sasaki: `タナカ工場長は事務所に。本日の監査対応は私が全てさせていただきます。`
- **Problem**: Khi nói về Tanaka với người ngoài công ty, phải kenjougo cho in-group: `タナカは事務所におります` (KHÔNG có "工場長", KHÔNG có "san", verb humble).
- **Fix**: Sửa T8 scene 4.

### CRITICAL-3: Ruby reading errors

| File | Vấn đề | Fix |
|------|--------|-----|
| T1 scene 7 | `<ruby>4<rt>し</rt></ruby>つ` (sai: 4つ=よっつ) | `<ruby>4<rt>よっ</rt></ruby>つ` |
| T2 scene 5 | `<ruby>3<rt>さん</rt></ruby><ruby>人<rt>り</rt></ruby>` (sai: 3人=さんにん, chỉ 2人=ふたり) | `<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>` |
| T3 scene 10/14 | `<ruby>か<rt></rt></ruby>` empty rt — broken ruby | Bỏ ruby empty hoặc gộp |
| T8 scene 1 | `<ruby>4<rt>がつ<rt></rt></ruby>` broken nested + sai (4月=しがつ) | `<ruby>4<rt>し</rt></ruby><ruby>月<rt>がつ</rt></ruby>` |
| T11 scene 1 | `<ruby>20<rt>はつか</rt></ruby><ruby>日<rt>か</rt></ruby>` (CRITICAL: 20日=はつか cả compound) | `<ruby>20日<rt>はつか</rt></ruby>` |
| T11 scene 1 | `<ruby>つかない</rt>` malformed (closing rt không opening) | Bỏ broken tag |

## Top 5 MAJOR (nên fix)

1. **MAJOR — Tanaka casual particle**: T1 scene 4 `あと、5月に...` → `また、5月に...` (formal briefing).
2. **MAJOR — 受入機関 vs 監督団体 conflation**: Suzuki làm cả 2 vai trò không clarify. Cần note rõ Suzuki = OTIT supervising body cho TTS, sang SSW1 thì 受入機関 là Saitama Foods.
3. **MAJOR — Mai address-form jumps**: T1 `ホア姉さん` → T5 `先輩` không bridge. Add metalinguistic note "formal/work = 先輩, ký túc casual = 姉さん".
4. **MAJOR — T7 Hoa gọi sempai bằng `-kun`**: `Yang君`, `リ君` dù Lee là sempai SSW1. Phải `リさん` hoặc `リ先輩`.
5. **MAJOR — T12 scene 15 Tanaka `俺たち`**: Formal speech context phải `私たち` hoặc `当社`.

## Major khác (acceptable nếu không fix)
- 技能検定 vs 技能試験 distinction không explain (T1, T3)
- 主任 vs 工場長 vs リーダー hierarchy ambiguous (T8)
- T8 scene 8 Lawson audit nhưng 出荷先 = 7-Eleven (typo)
- Code-switching VN-JP rules unclear (T2, T4)
- Mẹ-Tanaka translation moment skipped (T10)
- 30分/40分 reading consistency

## Top 3 Strengths

1. **永住権 timeline accuracy (T6 scene 8)** — explanation `就労資格` không bao gồm TTS+SSW1 là technical detail rất ít sách dạy đúng.
2. **Sempai-of-sempai sociolinguistic structure (T2)** — capture intergenerational pedagogical transmission Japanese workplace.
3. **Hoa speech (T12 scene 8)** — exemplar speech genre cho 挨拶スピーチ.

## Verdict
CONDITIONAL PASS — fix 3 CRITICAL + 5 MAJOR đầu trước finalize. Sau fix sách có potential cao trở thành reference book cho VN TTS→SSW1 transition.
