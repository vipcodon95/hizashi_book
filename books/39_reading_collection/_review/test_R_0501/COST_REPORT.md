# POC Cost Report — Council Review for R_0501

## Setup
- **Test bài**: R_0501 (cấp 8, N2_advanced — 50KB JSON)
- **3 council parallel** (linguist + pedagogue + domain_expert)
- **Spawned**: 18:27:11
- **All completed**: 18:29:28
- **Total wall-clock**: ~2 min 17 sec

## Per-agent metrics

| Agent | Duration | Tokens | Notes |
|-------|----------|--------|-------|
| Linguist | 1m 46s | 37,284 | Phát hiện 5 P1/P2 lỗi grammar/dịch |
| Pedagogue | 1m 22s | 28,263 | Phát hiện difficulty mismatch (lệch lên N1) |
| Domain Expert | 1m 32s | 31,679 | Phát hiện missing citations + outdated framework |
| **Tổng** | **~1m 46s wall** | **97,226** | (parallel) |

## Score consensus

| Reviewer | Score |
|----------|-------|
| Linguist | 7/10 |
| Pedagogue | 6.5/10 |
| Domain Expert | 7/10 |
| **Average** | **6.83/10** |

## Critical issues (3-way consensus)

### Lỗi grammar/dùng sai (Linguist P1)
1. `つつ` sai subject (2 lần — câu 2, câu 13). Phải đổi thành `〜中で`.
2. `驚愕のいたり` collocation forced — `〜のいたり` chỉ dùng cho cảm xúc cá nhân, không cho fact khách quan.
3. `思索の極み` không idiomatic. Phải đổi sang `〜難題` hoặc `困難の極み`.
4. Vocabulary `社縁` dịch sai — "duyên nghề nghiệp" thay vì "xã hội".
5. `総務省` dịch sai — "Bộ Tổng vụ" thay vì "Bộ Nội vụ".

### Lỗi pedagogy (Pedagogue P1)
6. Difficulty lệch lên N1 (vocab + grammar + discourse complexity). **Đề xuất**: relabel sang cấp 9 N1 hoặc viết lại register thấp hơn.
7. Topic quá hàn lâm cho người Việt N2 (TTS/SSW/du học/kỹ sư).

### Lỗi nội dung chuyên ngành (Domain Expert P1)
8. Không cite tác giả cốt lõi: 山田昌弘, 落合恵美子, 上野千鶴子.
9. Framework `家族解体` outdated — học giới đương đại dùng `家族の個人化`.
10. Bỏ sót 2020s issues: 8050問題, おひとりさま, ヤングケアラー, LGBTQ+, 無縁社会.

## Cost extrapolation cho 700 bài

### Naive (1 file/lần spawn × 3 council)
- Tokens/file: ~97k
- Tokens/700 bài: 67,958,000 (~68M tokens)
- Wall-clock: nếu 10 file batch parallel = 700/10 = 70 batches × 2 min = **~2.3 hours**

### Sample-based (5 bài/cấp × 10 cấp = 50 bài)
- Tokens: 50 × 97k = 4.85M
- Wall-clock: 50/10 = 5 batches × 2 min = **~10 min**

### Khuyến nghị
- POC chứng minh agent council chạy tốt — chất lượng review CAO (phát hiện lỗi grammar và bias mà mắt thường khó thấy).
- 68M tokens cho full 700 quá expensive.
- **Đề xuất sample 50 bài** (5/cấp) → đại diện đủ mà cost chấp nhận được.
- Sau review, các vấn đề common (vd `つつ` sai subject) → grep tìm trong tất cả 700 bài để fix mass.

## Vấn đề nội bộ phát hiện
- Cả 3 agent đều **không ghi file md** dù prompt yêu cầu — lý do: system reminder của agent override ("do not write report files"). Cần override lại trong prompt sau, hoặc em capture text rồi tự ghi.
