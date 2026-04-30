# Linguist Council Review — Sách 15: Thái Năm 2 (MC Operator + N3 đỗ)

> Reviewer: council-linguist
> Date: 2026-04-28
> Verdict: **CONDITIONAL PASS**
> Severity: 4 CRITICAL, 11 MAJOR, 9 MINOR

## Top 4 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: Furigana 1人/2人/2つ tách sai
- **Files**: t01 Scene 6 `<ruby>1<rt>いち</rt></ruby><ruby>人<rt>り</rt></ruby>` (sai = いちり), t05 Scene 5 `<ruby>2<rt>ふた</rt></ruby>つ` (sai), t11 Scene 5 `<ruby>2<rt>ふた</rt></ruby>りで`
- **Fix**: Bao cả block `<ruby>1人<rt>ひとり</rt></ruby>`, `<ruby>2つ<rt>ふたつ</rt></ruby>`, `<ruby>2人<rt>ふたり</rt></ruby>`
- **Reason**: Tách số + counter là pedagogical error — N3 reader sẽ học sai. Quét regex toàn 12 file.

### CRIT-2: Tanaka nói English `achievements:` (t12 Scene 1)
- **Fix**: Thay bằng `これまでの成果` hoặc `タイ君の2年間の実績`
- **Reason**: Tanaka 50+ Nhật founder không nói English. Break character voice.

### CRIT-3: Câu tiếng Việt nhật ký không hiểu nghĩa (t01 Scene 7)
- **Before**: `Mai 5 năm. Đợt 5 tới của tuần.`
- **Fix**: `Đợi 5 năm. Tuần tới gọi đợt mới.` hoặc tương đương
- **Reason**: Grammatically incoherent VN — critical với reader.

### CRIT-4: Kanji typo `磨耗品` → `摩耗品` (t10 Scene 2)
- **Reason**: 摩 (cọ xát) chuẩn, không phải 磨 (đánh bóng).

## Top 11 MAJOR (SHOULD FIX)

### MAJ-1: Aichi-ben gần như absent
Sách set ở Anjo Aichi nhưng 100% Tokyo standard. Recommendation: Sakurai casual scene thêm 1-2 markers (`〜だがや`, `〜まい`, `じゃん`) — không over-do.

### MAJ-2: Putra register inconsistent
- t06 dùng cleft sentence advanced (`大事なのは続けること`)
- t08 dùng broken (`当社家族的`)
- **Fix**: Thống nhất broken N4 SSW1 toàn sách.

### MAJ-3: Suzuki broken grammar t08 Scene 4
- **Before**: `スズキさん後はカワカミがメンター`
- **Fix**: `スズキさんの後はカワカミがメンターになる`

### MAJ-4: VN nhật ký quá nhiều English
t01/t05/t10 Scene 7: cohort change, payoff, bonus track, applicable, safe margin → Việt hóa 50%.

### MAJ-5: Telegraphic style ép quá
`当社小さい` (t08) → `当社は小さいから` / `うち小さいし`. Pidgin-like, không spoken concise.

### MAJ-6: Izakaya cao trào mất particles
t12 Scene 4 `10年後3人とも大きい会社創る！` → `10年後、3人で大きい会社作ろうな！` (volitional + な).

### MAJ-7: Suzuki `俺、転職することにした`
Pattern `~ことにした` thường dùng với gia đình. Với kohai → `転職することになった`.

### MAJ-8: Sakurai t02 Scene 6 `2年後追い抜かれる`
Văn vẻ với spoken sempai. Native: `2年後には抜かれちゃうな`.

### MAJ-9: t04 Scene 5 `謝るな`
Mệnh lệnh phủ định mạnh quá với kohai. Native: `謝らなくていい`.

### MAJ-10: Câu VN `support` không Việt hóa (t02 Scene 7)
`Putra+Sakurai support` → `Putra với Sakurai trợ lực` / `…hỗ trợ`.

### MAJ-11: Examiner JLPT script quá cụt (t09 Scene 2)
`言語知識30分始` → `言語知識・読解の試験を始めます。試験時間は30分です` hoặc ít nhất `…30分、始めます`.

## 9 MINOR

1. Tanaka `君` flat 24 tháng — t12 promotion nên switch `タイさん` 1-2 chỗ
2. Suzuki `初日でこの結果、素晴らしい` thiếu な/ね
3. `失敗` cho thi → `落ちる` chuẩn hơn (t06 Scene 2)
4. Mai-Thái VN `Em yêu anh. Đợi 5 năm.` → thêm gender particles `nhé/cơ mà`
5. `margin nhỏ` (t07 Linh-chị tutor) → `Đỗ sát nút` natural
6. Ruby drop nên giảm 30-40% chương 9-12 (đã introduce 30+ lần)
7. `光線式安全装置` (t11 Scene 2) thiếu ruby `光線式`
8. `(VN, internal)` vs `(VN, nhật ký)` vs `(VN)` — harmonize convention
9. `ヒケがある` (t04 Scene 4) → `ヒケが出てる` more native

## Verdict

**CONDITIONAL PASS** — Ship sau khi fix 4 CRITICAL + 5-6 MAJOR. Strengths: Technical Japanese chuẩn shop-floor, kohai response register placed correctly, code-switching natural cho engineer trẻ.
