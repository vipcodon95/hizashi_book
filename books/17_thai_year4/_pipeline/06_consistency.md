# Consistency Report — Sách 17 "Thái Năm 4"

> Reviewer: consistency-reviewer
> Date: 2026-04-28
> Verdict: **FAIL** — phải fix CRITICAL trước Stage 8
> Severity: 5 CRITICAL, 7 MAJOR, 6 MINOR

## Top 5 CRITICAL (BẮT BUỘC fix Stage 8)

### CRIT-1: N2 thi 7/2025 missing entirely (hand-off từ sách 16 lost)
- Sách 16 revision log: "N2 đẩy sang sách 17 (kế hoạch thi 7/2025)"
- Sách 17: N2 chỉ nhắc 1 lần ở t06:41 như fait accompli ("今27歳、金型2級＋N2＋first lead"). KHÔNG có scene thi, kết quả, ngày 7/2025.
**Fix**: Insert N2 thi vào T2 hoặc T3 (timing 7/2025 fit T2 "6-7/2025"). Kết quả N2 ~9/2025.

### CRIT-2: Timeline collapse — chương xếp sai tháng
- T1=5/2025, T2=6-9/2025, T3=10-11/2025, T4=12/2025-1/2026
- T5=2/2026 (Putra về 28/2/2026) — bỏ trống 10/2025-1/2026
- T6=3/2026, T7-T11 nén 4-8/2026, T12 quay về 4/2026 = **OUT OF ORDER**
- T12 = 30/4/2026 nhưng Tanaka announce retire mới 3/2026, chính thức 9/2026 → 4/2026 chưa thể là 嘱託
**Fix**: Re-anchor T5-T8 dates hoặc revise T12 thành 9/2026.

### CRIT-3: Tanaka/Kawakami role transition INTERNALLY CONTRADICTED
- T1:19: `カワカミ工場長` — Kawakami **đã là 工場長** từ T1 (5/2025)
- T6 (3/2026): Tanaka announce kế nhiệm sẽ là Kawakami
- T7 (4/2026): "本日からカワカミ工場長代理"
- T7:13: "9月正式就任"
**Fix**: Trong T1-T5, Kawakami phải là `設計課長` (pre-T6). Chỉ từ T7 mới là 工場長代理 → T8+ là 工場長.

### CRIT-4: T11 Tanaka labeled "嘱託" trong 8/2026 — sai timeline
- T6 announce: Tanaka retire chính thức 9/2026 + sau đó thành 嘱託 週2日
- T11 (8/2026): "Scene 1 — Tanaka (嘱託) announce" — 8/2026 < 9/2026, chưa thể 嘱託
- T10:54 (7/2026): "嘱託から祝い" — same issue
- T12 (4/2026): "嘱託として同席" — sai
**Fix**: Move T11/T12 ≥ 10/2026 hoặc rename Tanaka role thành "工場長" trong T10-T12.

### CRIT-5: T12 line 13 broken ruby `<ruby>achievements<rt></rt></ruby>` (regression sách 15+16)
- Sách 15 + 16 đã fix cùng pattern này
- Linguist principle: Tanaka 50+ Nhật không nói English mid-sentence
**Fix**: `今年度の成果：` hoặc `4年間の実績：`

## Top 7 MAJOR

### MAJ-1: Em gái Linh-Anh thi N2 — arc bị skip
T9 line 16, 60, 66 — Linh-Anh chỉ xuất hiện như nhân vật phụ. Không có scene thi N2, kết quả.

### MAJ-2: Sakurai status sách 16 — 1級 không update
T4:43 "俺機械加工1級1回fail". Sách 14/15/16 không xác nhận rõ Sakurai đã pass 1級 hay chưa.

### MAJ-3: T1 Scene 4 line 58 broken HTML
`水路<ruby>設計<rt>せっけい</rt></ruby>始<rt>はじ</rt></ruby>めて` — thiếu opening `<ruby>` cho 始

### MAJ-4: T11 Scene 3 line 41-43 broken HTML
- Line 41: thiếu opening `<ruby>` cho 同
- Line 43: thiếu opening cho 磨

### MAJ-5: T12 Scene 1 line 18 broken HTML
`- 3 kohai<ruby>指導<rt>しどう</rt></ruby>開始<rt>かいし</rt></ruby>` — thiếu opening cho 開始

### MAJ-6: ## Bối cảnh missing T2-T12
Chỉ T1 có. Sách 16 đã defer cùng issue. Sách 17 lặp lại.

### MAJ-7: Vocab table style inconsistent
T11:91 `| ベトナム TTS | ベトナム TTS | TTS Việt |` — kana column = romaji.

## 6 MINOR

1. T6:87 typo `定年退職 | ていねいたいしょく` → `ていねんたいしょく`
2. T6:91 `週2日 | しゅうふつか` → `しゅうににち`
3. T9 Linh / Linh-chị inconsistent
4. T8:23 "1時間半" Anjo→Toyota City quá xa — nên "1時間" hoặc "40分"
5. Empty `<rt></rt>` trên katakana/English (13 occurrences)
6. T1 vocab Moldex3D kana column trống

## Verdict

**FAIL** — book 17 cannot proceed to Stage 8 without fixing CRIT-1 through CRIT-5.

After CRIT fixes applied, expect verdict to upgrade to **PASS WITH CAVEATS**.
