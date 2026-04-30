# Consistency Report — Sách 26 "Đại BrSE Year 2"

> Reviewer: consistency-reviewer agent
> Date: 2026-04-29
> Verdict: **NOT READY for council — 5 critical issues block**

## Severity Summary

| Severity | Count |
|----------|-------|
| CRITICAL | 5 |
| MAJOR | 7 |
| MINOR | 6 |

## CRITICAL findings

### C1. Pregnancy timeline mâu thuẫn nội bộ ~5 tuần
- t01:3,62 "Mai 7 tuần thai trên 1/4/2031, dự sinh 25/12/2031"
- Math: 1/4 + 33 weeks = ~19/11, không phải 25/12
- Đông sinh 18/12 thực tế là ~4 tuần MUỘN, không phải "1 tuần sớm"
- T2 "8/5 = 12w" ✓ T1↔T2 consistent
- T7 "30w on 6/10" SAI, phải 33w
- **Fix**: shift "7w" → "11-12w" trên 1/4 (giữ due 25/12, Christmas baby narrative + bố mẹ HN visit timing 20/12). Cascade T2 16w, T6 32-36w, T7 36w, T8 39-41w

### C2. T11 title lộ artifact draft chưa edit
- t11:1 "Đại convert visa 経営・管理 (Business Manager). **Mai 5 tháng thai khoẻ — wait, Mai postpartum 2 tháng**"
- Có "wait," = editor self-correction lọt published title
- **Fix**: bỏ "Mai 5 tháng thai khoẻ — wait,"; title = "Đại convert visa 経営・管理. Mai postpartum 2 tháng"

### C3. Tanaka collision — 5 nhân vật cùng tên trong cùng 1 sách
1. Tanaka PM Thanh Hà cũ (t02)
2. Bác sĩ Tanaka nữ 50t Senri-chuo (t01,t02,t06,t07,t08,t09,t11)
3. Tanaka Hiroshi 32t Senior Backend new hire (t04-t12)
4. CodeClimate auditor Tanaka 38t (t08)
5. Kế toán Tanaka (t09 Zoom)
- **t08 Scene 2** Tanaka audit code + Tanaka Hiroshi backend cùng scene → CRITICAL confusion
- **t09** 3 Tanaka khác nhau xuất hiện cùng chương
- **Fix systematic rename**:
  - Tanaka Hiroshi backend → **Hayashi Hiroshi** (resolves M5/C5 simultaneously since T11 đã có "Hayashi Senior Backend")
  - WiL partner Hayashi → **Kobayashi-san**
  - CodeClimate auditor → **Ito-san**
  - Kế toán Tanaka → **Nakamura-san**
  - Bác sĩ Tanaka → KEEP (cross-series continuity sách 23)
  - Tanaka PM Thanh Hà → KEEP (1 scene only)

### C4. Sato collision (3 Sato)
- Sato-san Anri partner 42t (t06,t07,t08,t09,t12)
- Sato-Linh husband Nagoya (sách 23-25, không xuất hiện sách 26)
- Sato Yui Marketing Manager hire (t10:48)
- WiL Hayashi partner vs Senior Backend Hayashi → **Hayashi 2 nhân vật collision**
- **Fix**: WiL → "Kobayashi-san"

### C5. Hire inconsistency: Year 2 close có "Hayashi Senior Backend" nhưng T4 hire là "Tanaka Hiroshi"
- T4:13-35 First Senior Backend = Tanaka Hiroshi (32t Mercari)
- T11:45 "Hayashi (Senior Backend)" report v2.1.5
- **Fix**: Solve via C3 rename — Tanaka Hiroshi → Hayashi Hiroshi → continuity từ T4

## MAJOR findings

### M1. MRR growth Sept-Dec flat ¥5M → ¥6M (only +20% trong 4 tháng)
- T5 (8/2031): ¥5M; T10 (1/2032): ¥6M
- Mâu thuẫn với Series A close + 5 hires + TOPIK partnership "CAC -50%, KR sign-up +47%"
- **Fix**: T6 ¥5.5M, T7 ¥6M, T8 ¥6.2M, T9 ¥6.5M (steady growth)

### M2. Series A target ¥200M vs ¥230M
- State.json title "¥200M post ¥1.2B"; Body T7 "Total ¥230M oversubscribed"
- ✓ Body explains: target ¥200M → oversubscribed ¥230M. Update state.json title.

### M3. Series A timeline "8 weeks" inaccurate
- Sato meeting 10/9 → close 30/11 = ~12 tuần, không phải 8
- **Fix**: "12 weeks total" hoặc "4w pitch + 4w DD = 8w intensive phase"

### M4. T12 dialogue table broken markdown
- t12:15 `| Speaker | Lời thoại }` — closing curly brace `}` thay vì `|`
- **Fix**: `}` → `|`

### M5. State.json T12 desc vs actual mismatch
- state.json `:31` "Hizashi 12k user, MRR ¥12M, team 8" vs T12 actual "75,000 user, MRR ¥7M, team 10"
- **Fix**: Update state.json (T12 file canonical)

### M6. Bố Mai tuổi không reference (acceptable)

### M7. Hana monthly age progression nhỏ inconsistency
- T6:9 "Hana 36 tháng" vs T6:19 "3 tuổi 1 tháng" (phải 37 tháng)
- T7:10 "36-37 tháng (3 tuổi 1-2 tháng)" trong 9-10/2031 phải 37-38 tháng
- **Fix**: T6:9 → 37, T7:10 → 37-38

## MINOR findings

- m1: T5:82 KR+ZH+VN+JP = 101% — round 50/32/14/4
- m2: T2 ARR ¥486k vs ¥540k inconsistency (planning vs actual contract)
- m3: T7:63 cap table dilution wording
- m4: T11 visa age math OK
- m5: T7:107 Tony+Yumi "sang Nhật" — Anjo Aichi không cần. Should "đến Osaka"
- m6: T12:7 "anniversary 1 năm" → "2 năm"

## Cross-references PASS

- Bác sĩ Tanaka đỡ Hana sách 23 + Đông sách 26 ✓ excellent callback (T1:56, T8:70)
- Cofounder Tuấn 28t cousin ex-Mercari ✓
- Pre-seed Anri ¥30M sách 24 ✓
- Inoue-sensei LINE ✓ (t9:63)
- Mai sinh 2/2005 cùng tuổi Đại ✓ (t1:3)
- Aiko Watanabe HCI Lab cohort ✓

## Verdict

NOT READY for council. After fix C1-C5: READY. Book well-structured, dialogue ≥80% density, cross-series continuity strong, business narrative realistic. Tanaka collision dominant risk. Estimated fix effort 2-3h critical, 1h major, 30min minor.
