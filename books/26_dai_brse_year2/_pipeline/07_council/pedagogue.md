# Pedagogue Council Review — Sách 26 "Đại BrSE Year 2"

> Reviewer: council-pedagogue
> Date: 2026-04-29
> Verdict: **GOOD with CRITICAL gaps — fails primary mission "teachable for VN founders"**

## CRITICAL (3)

### C1. Series A pitch deck 12 slides framework underexplained
- t03 Scene 4 (lines 49-53) liệt kê 12 slides nhưng dạng bullet, KHÔNG có:
  - Lý do mỗi slide tồn tại (purpose)
  - Common mistakes founder mắc
  - Anri/JAFCO investor evaluation criteria mỗi slide
  - Sample wording
- Vi phạm Bloom Level 3 (Apply): reader chỉ Recall 12 slide names, KHÔNG Apply vào pitch
- target_audience "Founder VN startup Nhật năm 2, Series A pitch prep" — current content KHÔNG đáp ứng
- **Fix**: +800 từ t03 Scene 4 — mỗi slide thêm "Why / What investor looks for / Common mistake / Sample line"

### C2. Vocab table coverage Series A/cap table/DD KHÔNG bao gồm thuật ngữ critical
- t07 thiếu: pre-money, post-money, pro-rata rights, drag-along, tag-along, weighted average broad-based, RSU, vest, co-invest, lead investor
- t08 thiếu: IP assignment, OWASP Top 10, term sheet, subscription agreement, voting agreement, right of first refusal
- t11 thiếu: 履歴書, 写真, 賃貸契約書, 給与明細
- Hậu quả: vi phạm spaced-retrieval principle
- **Fix**: Expand vocab tables 12 modules + add example sentence column

### C3. Cap table math sai/inconsistent T7↔T9↔T12
- T7:63 post Series A founders 69.3% combined với "dilution 18% per founder"
- Pre-money ¥1.0B / ¥230M raise → dilution thực tế ≈ 18.7% chứ KHÔNG match individual
- Critical vì sách dạy founders về dilution: numbers phải đúng + reproducible

## MAJOR (6)

### M1. Learning objectives không measurable across 12 modules
- Frontmatter "Mục tiêu" plot description, không pedagogical outcome
- Chuẩn: "Sau chương này, người học có thể: (1) phân biệt 経営・管理 vs 高度専門職 visa requirements, (2) draft 1 email Series A outreach JP, (3) explain 4 phases DD..."

### M2. Difficulty progression jump t02→t03 và t06→t07 quá lớn
- t01-t02 Low-Med → t03 Multi-tenant + 12-slide deck + 3-track parallel = High jump
- t06 Med → t07 4 VC pitches + cap table + medical complication = Very High jump
- **Fix**: Add scaffolding bridges (t02.5 multi-tenant primer, t06.5 VC pitch psychology)

### M3. Code blocks quality KHÔNG có code blocks thật
- Sách BrSE/founder không có 1 snippet: SQL, FastAPI, Flutter, Terraform, k6 load test
- Vi phạm authenticity principle (Stein 1998)
- **Fix**: Min 3 snippets t03 (FastAPI multi-tenant route), t05 (deploy script), t08 (penetration test report excerpt)

### M4. Engagement relationship triangle Hizashi/baby/business overlap
- t07 huyết áp Mai 130/85 introduced rồi t08 jump straight tới resolved 128/82 — no scene Đại reduced-hour work, no struggle
- t09 birth scene quá rushed (4:30 vỡ ối → 7:30 sinh = 3 hours collapsed thành 2 scenes)
- t11 Mai postpartum quá technical (medical bullet) — thiếu emotional dialogue identity shift

### M5. Cultural learning 育休 modern father surface-level
- t06,t09,t10 — 3 scenes về 育休 trong 4 weeks
- KHÔNG có dialogue: day-by-day routine, 男性育休取得率 ~17% statistics, conflict moment, mother-in-law cross-cultural reaction
- **Fix**: Add 育休 deep dive t10 — daily routine 7 days condensed + cultural data + Tony reaction

### M6. 立ち会い分娩 culture context absent
- t08:69-70 chỉ 1 dòng. KHÔNG dạy: Japan rate ~50% urban 2024, pre-class requirements, husband role specifics

## MINOR (6)

- m1: t07 WiL pitch English/Japanese code-switch không đánh dấu rõ language switching strategy
- m2: t12:2 stats dump 30+ data points — break thành Q&A format
- m3: Recall sách 21-25 reference confused stand-alone reader. Inline glossary "(xem sách 22 ch.5)"
- m4: t10:3 5 hires intro paragraph too dense — table profile thay bullet inline
- m5: t11:1 visa eligibility list dạng dialog Suzuki khó scan — summary box "経営・管理 vs 高度専門職 comparison"
- m6: Vocab table không có example sentences — vi phạm dual-coding (Paivio 1971)

## Strengths Top 3

1. **Cohesive longitudinal narrative high engagement** — 12 chương = 12 tháng business+life arc, character continuity (Đại/Mai/Tuấn/Aiko/Tanaka/Sakura) emotional investment cao
2. **Realistic financial detail strong domain authenticity** — ¥230M raise, ¥1.5k/dev/m enterprise pricing, ¥600k/m office, runway 39m calculation, MRR/ARR/CAC/NPS metrics scattered correctly
3. **Multi-language code-switching dialogue (JP+VN+KR+EN)** authentic startup Japan reality — Park/Wang JP+native, WiL Mark Suzuki English, Tony Osaka-ben

## Top 5 improvements priority

1. CRITICAL Rewrite t03 Scene 4 Series A deck section (transform Bullet List → Apply level)
2. CRITICAL Expand vocab tables — include ALL Series A/DD/visa/B2B terms + example sentence column
3. MAJOR Add scaffolding bridges (t02.5 multi-tenant primer, t06.5 VC pitch psychology)
4. MAJOR Add 育休 deep dive t10 (daily routine 7 days + 男性育休取得率 data + Tony reaction)
5. MAJOR Add code blocks t03/t05/t08 (3 snippets minimum)

## Severity

| Severity | Count |
|----------|-------|
| Critical | 3 |
| Major | 6 |
| Minor | 6 |

**Verdict**: Sách narrative + cultural breadth strong, nhưng fails primary pedagogical mission. Reader enjoy story + retain emotional moments (bé Đông birth, visa approval), nhưng KHÔNG đủ skill actually pitch Series A hoặc draft DD documents. BEFORE finalize, prioritize C1+C2 (~2-3h additional content) — directly block stated target_audience value proposition.
