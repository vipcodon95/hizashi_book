# Linguist Council Review — Sách 25 "Đại BrSE Year 1"

> Reviewer: council-linguist
> Date: 2026-04-29
> Verdict: **CONDITIONAL PASS — needs targeted fix-pass**

## CRITICAL (5)

### C1. Furigana sai trên tên công ty riêng
- **Files**: t01:58, t05:37,63, t12:65
- `<ruby>清華<rt>タンハー</rt></ruby>` — gán katakana làm rt cho kanji = **ateji ngược chiều** không hợp lệ
- **Fix**: Đổi thành `タンハー・ソリューションズ` hoặc `Thanh Hà Solutions` toàn bộ. Không dùng 清華 + rt katakana

### C2. Compound noun bị split sai trong furigana
- **Files**: t01:58 `<ruby>系企業<rt>けいきぎょう</rt></ruby>` → cần split `<ruby>系<rt>けい</rt></ruby><ruby>企業<rt>きぎょう</rt></ruby>`
- t01:59 `<ruby>大手<rt>おおて</rt></ruby>メーカー<ruby>系<rt>けい</rt></ruby>` thiếu xử lý 系 hậu tố nhất quán

### C3. Honorific math sai — Đại reply Yamamoto-PM 45t
- **t05:85** `取り組ませていただきます` causative-humble dùng khi xin phép — không hợp commit công việc
- **Fix**: `全力で取り組んでまいります` hoặc `精一杯対応させていただきます`

### C4. `恐縮でございます` lặp 2 lần liên tiếp với CEO Takahashi
- **t07:85** lặp 2 lần — bookish
- **Fix**: Lần 2 đổi `ありがとうございます` hoặc `身に余るお言葉です`

### C5. Tony bilingual register inconsistent
- Tony 65t Nhật-Mỹ Osaka-ben tốt, nhưng VN lơ lớ produce câu flowery formal "Hana là cháu chung của 2 nhà" (t01:38) không thể từ L2 broken speaker
- **Fix**: Tony VN simpler: "Hana là cháu duy nhất. Đại là con. Hana là cháu của Tony Yumi"

## MAJOR (6)

### M1. Hana toddler 20-32 tháng — output VN vượt phát triển ngôn ngữ
- 20m "Bố đi! Con đi cô nhé!" — 5-từ + hậu tố "nhé" (toddler 20m hiếm produce). L1 bilingual delayed 2-4 tháng
- 24m "Bố ốm? Hana xoa lưng?" — 2-clause + tự xưng tên: phù hợp 28-32m
- **Fix**: 20m holophrase + 2-từ; 24m 2-3 từ; 28m+ simple SV

### M2. Aiko "JP+VN broken" — code-switching không realistic
- Aiko VN gần native ("Còn revenue thì sao anh?") không phải broken
- **Fix**: Giảm fluency, thêm JP fallback ("revenue は どう?"), hoặc đổi nhãn từ "broken" → "intermediate"

### M3. Sếp Tanaka Slack `(笑)` quá casual với PM
- t10:93 Đại reply Slack dùng `(笑)` — native employee dùng `(汗)` hoặc `…笑` lowercase

### M4. Email keigo Đại gửi Takahashi-shachou thiếu signature
- t07:94 sign-off `グエン・ダイ` — thiếu `敬具` + signature block (役職 + 会社)
- **Fix**: Add `敬具 / グエン・ダイ / 清華ソリューションズ / BrSE インターン`

### M5. Mai Bắc Bộ accuracy
- t02:51 "tabuto cho bé tập đi" — `tabuto` không phải VN cũng không phải JP chuẩn. Thực: "xe tập đi" hoặc 歩行器

### M6. Bố Mai 58t HN "Cụ Hana 22 tháng"
- t06:24 "cụ" gọi cháu nhỏ là dialect Nghệ-Tĩnh hơn Bắc Bộ. Bắc thường: "cún", "cu cậu", "cô bé"

## MINOR (8)

- m1: 清華 ruby fix vocab table
- m2: t05:37 Đại lặp full name 3 lần — bookish
- m3: t11:50 Yumi Osaka-ben `あんた` ✓ tốt
- m4: t06 vocab `4人の祖父母` — không dùng độc lập JP
- m5: `承知いたしました` lặp 6+ lần — vary với `かしこまりました` / `了解いたしました`
- m6: Tuấn JP business sample missing
- m7: `バーンアウト` vocab thêm `燃え尽き症候群` alternative
- m8: Office code-switching JP-VN-EN thiếu discourse markers

## Strengths Top 3

1. **Sociolinguistic awareness honorific dual-system**: Đại CEO Takahashi formal vs cohort VN suồng sã = distinction tốt cho học viên model
2. **Tanaka register decline natural**: Day 1 formal → urgent crisis casual → care register caring. Bắt được register-shift theo emotional context
3. **Bilingual code-mix Aiko↔Tuấn↔Đại standup**: Pattern parsing `(JP+VN broken)` markers giúp learner tracking ngôn ngữ. Furigana coverage 3,000+ kanji consistent

## Severity Summary

| Severity | Count |
|----------|-------|
| Critical | 5 |
| Major | 6 |
| Minor | 8 |

## Verdict

CONDITIONAL PASS. Sách có sociolinguistic depth tốt và register variation realistic 90% interactions. Fix C1+C3 (keigo over-engineering) trước finalize. M1+M2 (Hana toddler + Aiko fluency) pedagogy concern. Sau fix Critical+M1-M2, sách đạt **academic-ready B+**.
