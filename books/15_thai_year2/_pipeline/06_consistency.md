# Consistency Report — Sách 15 "Thái Năm 2: MC Operator + N3 đỗ"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **PASS WITH CAVEATS**
> Severity: 2 CRITICAL, 6 MAJOR, 6 MINOR, 3 INFO

## Top 2 CRITICAL (MUST FIX trước Stage 8)

### CRIT-1: Tanaka 工場長 dropped toàn sách 15 (regression từ book 14 stage 8 fix)
Sách 14 đã standardize "Tanaka = 工場長 (こうじょうちょう)". Sách 15 hoàn toàn không dùng `工場長` (zero matches) — chỉ gọi "Tanaka", "タナカさん".
**Fix**: Re-apply 工場長 toàn bộ 12 chương sách 15. Khi Putra/Sakurai gọi → "タナカ工場長" thay "タナカさん".

### CRIT-2: T12 ruby tag broken
`<ruby>achievements<rt></rt></ruby>:` line 13 — dùng ruby tag cho từ tiếng Anh với rt rỗng → render lỗi.
**Fix**: Bỏ ruby tag, viết `**Achievements**:` markdown — hoặc better: thay English bằng `成果` hoặc `実績` (theo linguist CRIT-2).

## Top 6 MAJOR (SHOULD FIX)

### MAJ-1: VN translation style split
T1 polished (full-sentence VN translations). T2-T12 ultra-terse 1-word glosses ("Cường độ.", "Sửa.", "Phần."). Inconsistent reading experience.
**Fix**: Polish T2-T12 hoặc unpolish T1 — recommend keep T1 polished + polish T2-T12.

### MAJ-2: Visa 技人国 thread không hồi đáp
Sách 14 setup 6〜9ヶ月 research period kết thúc ~ 11/2022. Sách 15 không có chỉ dẫn về visa status / 在留 update / promotion từ 補助 lên formal 設計. T12 promotion lên "アシスタント設計" 5/2024 — fit visa designation nhưng không có scene về visa renewal.
**Fix**: Thêm 1 line ở T12 như "Tanaka: 在留3年延長申請も同時に".

### MAJ-3: Vocab heading inconsistent
"## Vocab" vs "## Vocab tóm tắt" — T1/T2/T3 dùng "## Vocab tóm tắt", T5-T12 dùng "## Vocab".
**Fix**: Chuẩn hoá "## Vocab tóm tắt" toàn sách.

### MAJ-4: "## Bối cảnh" missing T2/T4/T5/T6/T7/T8/T10/T11/T12
Book 14 standard có. Add 2-3 dòng setup mỗi chương.

### MAJ-5: T8 header tháng "1/2024" misleading
Nội dung kéo từ 1/2024 → 3/2024 (Suzuki announce → farewell party).
**Fix**: "1-3/2024".

### MAJ-6: 磨耗品 → 摩耗品 typo
T10 line 27, line 105. 摩 (cọ xát) chuẩn, 磨 (đánh bóng) sai.

## 6 MINOR

1. T6 tên "Spring kentei prep / 春の検定準備" sai mùa (content 10/2023 = 秋). Suggest rename "T6. Sakurai 1級 fail + N3 prep start"
2. N3 result timing 1/2024 hơi sớm — realistic là cuối 1/2024 hoặc 2/2024
3. T9 chronology callback note nên integrated vào opening prose
4. Sakurai 1級 受験資格 explain (1 dòng justify) cho non-domain reader
5. Suzuki "5年後会おう" nên mơ hồ hơn ("また会おう") để không obligate revisit sách 17-18
6. Glossary magaki: variants "đánh bóng" vs "magaki" vs "phòng magaki" — thống nhất "magaki (đánh bóng)" lần đầu mỗi chương

## INFO

- Difficulty progression T1→T12 gradient hợp lý
- Vocab density tăng dần phù hợp
- Plot beats (Suzuki rời + Mitsutoyo torch + promotion) tạo arc cảm xúc tốt

## Files chính cần touch (Stage 8)

12 chương t01-t12 + state.json (T6 name update nếu rename).
