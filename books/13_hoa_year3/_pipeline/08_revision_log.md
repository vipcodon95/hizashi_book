# Stage 8 Revision Log — Sách 13 "Hoa Năm 3"

> Date: 2026-04-28
> Pipeline: LITE 8/8 stages COMPLETE
> Pipeline_type: lite (KHÔNG seed DB, KHÔNG SQL)

## CRITICAL fixes applied

### Domain Expert (food factory + immigration law)

**T8 — Lawson audit chương** (3 critical fixes):
1. **出荷先 Seven-Eleven competitor conflict**: Đổi `セブンイレブン店舗120店` → `埼玉県内生協チェーン120店舗` (Scene 8). Lý do: Lawson audit OEM mà output cùng line xuất 7-Eleven = competitive IP risk + exclusivity violation.
2. **Traceability benchmark outdated**: `業界標準15分` → `業界平均30分。3分はトップ層` (Scene 8). Lý do: ISO 22005 hiện tại 2-hour rule, 15 phút outdated từ ~2010.
3. **Single-day approval unrealistic**: Sasaki nói `本日合格` → `本日の現場監査は合格。来週ラボ結果出てから正式OEM承認` (Scene 14). Lý do: Lawson audit là 3-tier (initial → on-site → final), cần lab sampling 7-10 ngày.

**T8 — Hoa-Sasaki Uchi/Soto fix** (Linguist CRITICAL):
- Hoa nói với external auditor về sếp cùng công ty: `タナカ工場長は事務所に` → `タナカは事務所におります。コンドウ主任もバックアップで待機中` (Scene 4). Đồng thời thêm Kondo backup → realistic governance (domain expert critical).

**T8 — Tanaka 俺→私 workplace** (Linguist CRITICAL):
- Scene 1: `俺は事務所から見てる` → `私は事務所から見ています` (formal context).
- Scene 16 cuối: `俺のオファーは` → `私のオファーは`.

**T4 — Recall terminology** (Domain expert):
- T4 outline + bối cảnh + T4 dialogue: nói "1000+ peanut + cashew, recall" — sai. Reality: chỉ cashew, 1200 hộp, chưa xuất kho → social-internal disposal.
- T8 Scene 7 callback: `1200個 自主回収+是正措置実施` → `1200個。出荷前に発見、社内不適合品処分+是正措置実施`. Khớp T4.
- T4 line 3 (Mục tiêu): "1000+ sản phẩm" → "1200 hộp"
- T4 line 9 (Bối cảnh): "cashew + peanut. 1000+ hộp" → "cashew (sót nhãn, 1200 hộp đã chạy qua line trước khi phát hiện — chưa xuất kho)"

### Consistency

**MAJOR-1 Tanaka 部長 → 工場長**:
- T2 line 164: `田中部長` → `田中工場長`
- T4 line 35: `田中部長` → `田中工場長`
- T4 line 206: `田中部長` → `田中工場長`

**MAJOR-2 Tuổi Hoa 23 → 24**:
- T5 line 237: "23 tuổi" → "24 tuổi"
- T8 line 310: "23 tuổi" → "24 tuổi"

**MAJOR-4 Mai hometown — Cần Thơ → Bắc bộ**:
- T3 line 142: `カントー` → `北部` (Mì Quảng đặc sản miền Trung, "Bắc bộ không có" logic hơn).

### Linguist (ruby reading errors)

- T1 line 116: `<ruby>4<rt>し</rt></ruby>つ` → `<ruby>4<rt>よっ</rt></ruby>つ` (4つ=よっつ chuẩn).
- T2 line 93: `<ruby>3<rt>さん</rt></ruby><ruby>人<rt>り</rt></ruby>` → `<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>` (3人=さんにん, chỉ 2人=ふたり).
- T3 line 125: `<ruby>3<rt>さん</rt></ruby><ruby>人<rt>り</rt></ruby>` → `<ruby>3<rt>さん</rt></ruby><ruby>人<rt>にん</rt></ruby>`.
- T11 line 15: `<ruby>20<rt>はつか</rt></ruby><ruby>日<rt>か</rt></ruby>` → `<ruby>20日<rt>はつか</rt></ruby>` (20日=はつか cả compound).

## Issues NOT applied (decision rationale)

### Linguist
- **T7 -kun cho sempai (Lee, Yang)**: Acceptable trong context casual networking 同期 ngang hàng (Yang là 同期 HACCP khoá; Lee là sempai SSW1 nhưng tự xưng "俺"). Giữ.
- **Mai address-form `ホア姉さん` → `先輩` jumps**: Tác giả cố ý cho register shift theo context (intimate ký túc vs formal work). Giữ.
- **Other minor ruby readings** (40分=よんじゅっぷん etc.): Acceptable — đọc chính theo phương ngữ Tokyo, JP/VN reviewer đã xử lý ~10 ruby fixes ở Stage 5.

### Pedagogue (vocab pre-load, CEFR tags, etc.)
- **MAJOR fixes pedagogue (vocab pre-load box, scaffolding T3→T4, reflection prompts)**: Đây là enhancement cấp design, KHÔNG fix ở Stage 8 vì sẽ đòi rewrite chương. Acceptable cho phiên bản v1. Cân nhắc cho v2.
- **Scaffolding T3→T4 (rehearsal scene)**: Same — design improvement.
- **Bí quyết → reflection questions**: Same — design improvement.

### Consistency
- **Putri vắng bóng T3-T12**: Acceptable — Putri xuất hiện ở T1 + T2 cast. Có thể add vào T12 cast list nhưng giữ scope sách.
- **Suzuki "鈴木さん" T1 vs "スズキ主任" T6+**: Acceptable — register shift khi Hoa vào năm cuối.
- **永住権 timeline T6 lines 137-138 confusing**: Acceptable — text giải thích rõ "đủ 2039 nhưng audit khắt khe → 2044 thực tế".

### Domain Expert
- **JITCO examiner role T5**: Acceptable cho fictional setting — `ジツコの森田` vẫn nhận diện được JITCO; technical accuracy của 7原則 + procedure đúng.
- **Examiner direct disclosure T5**: Acceptable trong setting fictional dramatic.

## JP/VN Review (Stage 5) summary

JP/VN reviewer applied ~80 fixes trực tiếp:
- ~10 JP fix (empty ruby, typo, particle)
- ~50 English thừa loại bỏ ("leader" → "trưởng nhóm", "audit" → "kiểm tra", "label" → "nhãn", v.v.)
- ~20 VN văn phong (thêm "ạ", "anh/chị", chuẩn dấu phân cách "30.000 yên")

## Final Pipeline Status

| Stage | Status | Output |
|-------|--------|--------|
| 1. Research | ✅ | _pipeline/01_research.md |
| 2. Outline | ✅ | _pipeline/02_outline.md |
| 3. Draft | ✅ | _pipeline/03_draft.md |
| 4. Content md (12 chương) | ✅ | books/13_hoa_year3/t01-t12 |
| 5. JP/VN review | ✅ | _pipeline/05_jp_vn_review.md |
| 6. Consistency | ✅ | _pipeline/06_consistency.md |
| 7. Council (3 reviewers) | ✅ | _pipeline/07_council/{linguist,pedagogue,domain_expert}.md |
| 8. Finalize | ✅ | _pipeline/08_revision_log.md |

## Tổng số fix Stage 8: 17 fixes
- Domain expert critical: 4 (T8 audit single-day, Seven-Eleven, traceability, Uchi/Soto)
- Linguist critical: 3 (T8 Tanaka 俺→私 ×2, ruby `20日`)
- Linguist ruby: 3 (T1 `4つ`, T2 `3人`, T3 `3人`)
- Consistency: 7 (T2/T4 部長→工場長 ×3, T5/T8 tuổi 23→24 ×2, T3 hometown, T4 outline+bối cảnh)
- Domain recall fix: 1 (T8 Scene 7 自主回収 → 社内不適合品処分)

## Sách 13 Final Stats
- 12 chương = 12 tháng (4/2028 → 3/2029)
- ~178 scenes total
- Format: bảng dialogue 2 cột, JP `<ruby>` + VN italic
- Cast: 11 (9 cũ + Trang + Mẹ Hoa)
- CLIMAX: T10 (mẹ qua thăm Nhật)
- TURNING POINT: T11 (quyết định stay Saitama)
- CLOSURE: T12 (bonenkai farewell TTS + bắt đầu SSW1)

## Verdict overall

Sách 13 PASS cả 3 council với conditions đã fix. Quality cao nhất series Hoa (sau 11+12). Tránh được 3 lỗi major sách 12 + thêm domain accuracy cao cho Lawson audit + immigration law.

Ready cho publish.
