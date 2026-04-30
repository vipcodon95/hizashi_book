# Linguist Council Review — Sách 16 "Thái Năm 3"

> Reviewer: council-linguist
> Date: 2026-04-28
> Verdict: **CONDITIONAL PASS**
> Severity: 5 CRITICAL, 11 MAJOR, 8 MINOR

## Top 5 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: Furigana counter split sai t11:45 `<ruby>2<rt>ふた</rt></ruby>つ`
**Fix**: `<ruby>2つ<rt>ふたつ</rt></ruby>` (bao cả block)

### CRIT-2: Furigana split sai t07:53 `<ruby>3<rt>みっ</rt></ruby>つ`
**Fix**: `<ruby>3つ<rt>みっつ</rt></ruby>`

### CRIT-3: Furigana SAI ĐỌC t07:52 `<ruby>2<rt>に</rt></ruby>つ` 
Đọc "ni-tsu" hoàn toàn sai counter. Phải `<ruby>2つ<rt>ふたつ</rt></ruby>`.

### CRIT-4: Furigana 1人 sai t09:68 `<ruby>1<rt>いち</rt></ruby><ruby>人<rt>り</rt></ruby>で`
"ichi-ri" sai. 一人 = ひとり irregular. Phải `<ruby>1人<rt>ひとり</rt></ruby>で`.

### CRIT-5: Nanzan vs Nagoya University contradiction T5
- Line 3 + vocab 91 = 南山大学 (Nanzan, ĐH tư Catholic)
- Tanaka line 67 nói `名古屋大学` (Nagoya University, ĐH quốc lập top 7)
- Trường khác hoàn toàn — factual contradiction trong cùng file
**Fix**: Chọn 1 (recommend Nanzan vì hợp profile sinh viên IT du học hơn). Update Tanaka line 67.

## Top 11 MAJOR (SHOULD FIX)

### MAJ-1: Hamada (khách Toyota) `厳しい` plain với supplier
T8:53. Khách formal phải `厳しいスケジュールですね`.

### MAJ-2: Hamada t8:55 `大丈夫？` quá casual với người lần đầu gặp
**Fix**: `大丈夫ですか？`

### MAJ-3: Hamada t8:42 `あ、外国人設計者？` — atypical Toyota khách
Khách Nhật tránh chủ đề quốc tịch lúc đầu — soften hoặc remove.

### MAJ-4: t9:40 `お聞かせください` directive với khách
Native phone register: `お伺いしてもよろしいでしょうか`.

### MAJ-5: ZERO Aichi-ben markers cho Sakurai (33 occurrences)
Recurring từ sách 15. Tối thiểu 1 lần/chương dùng `〜だがや`, `〜だら` cho casual scenes.

### MAJ-6: N2 grammar declarative-only
T10:62 list ~わけではない/~に違いない/~ものの — never xuất hiện trong dialogue thực tế. Thái thi N2 7/2025 nhưng speech ở grammar level N4-N3.
**Fix**: T11/T12 nên có Thái dùng 2-3 lần organic.

### MAJ-7: Kawakami telegraphic style quá mức
`俺主に応対。君も挨拶` (T8:15), `君のデスク。PC。2モニター` (T1:13). Sound như broken JP, không "casual-shortened".
**Fix**: Add particles cơ bản — `俺が主に応対するから、君も挨拶してね`.

### MAJ-8: T8:67 `よく考えられている` evaluative report tone
Native khen: `よく考えてるね` (active+ne).

### MAJ-9: t08:54 `承知いたしました` dịch `Đã hiểu` flat
**Fix**: "Em đã rõ ạ" / "Vâng, em đã tiếp thu".

### MAJ-10: t09:54 `大変失礼いたしました` dịch `Em xin lỗi` under-translation
**Fix**: "Em vô cùng xin lỗi vì sự thất lễ này".

### MAJ-11: t09:38 `お世話になっております` dịch `Cảm ơn anh` false friend
**Fix**: "Em chào anh ạ (cảm ơn anh đã quan tâm)".

## 8 MINOR

1. T8:91 vocab "トヨタ車体" dịch "Toyota Shatai (Tier-1)" — Toyota Auto Body là Group company (subsidiary 100%), không Tier-1
2. T1:38 `見つけた` thiếu particle ね/よ
3. T3:37 `え、すごい！` với cấp trên Kawakami → `すごいですね！`
4. T9:42 `明日反映します` collocation hơi thiên về system/UI → `明日対応いたします`
5. T6:36 `40/50正解感覚` không collocation chuẩn → `40問くらいできた感じ`
6. t08:55 Hamada `大丈夫？` dịch `OK?` Anglicism
7. t11:48 `やった！` dịch `Yes!` Anglicism → "A!" / "Tuyệt!"
8. t12:54 `カワカミ課長のおかげ` dịch `Nhờ Kawakami` drop title → "Nhờ anh Kawakami chủ nhiệm"

## Verdict

**CONDITIONAL PASS**

Strengths: Sonkeigo/kenjougo theoretical framing T9 clean + Technical code-switching JP-EN-katakana natural + VN dialect Bắc Bộ markers consistent.

5 CRITICAL phải fix trước finalize:
- 4 furigana counter bugs (recurring từ sách 15 — học viên sẽ học sai cách đọc 2つ/3つ/1人)
- 1 factual contradiction Nanzan vs Nagoya University

MAJOR sociolinguistic gaps (Aichi-ben missing, Hamada register lệch, N2 grammar declarative-only) là MAJOR nhưng không blocking.
