# Pedagogue Council Review — Sách 24 "Đại ĐH Năm 4"

> Reviewer: council-pedagogue
> Date: 2026-04-29
> Verdict: **PEDAGOGY MEDIUM** — Capstone book PHẢI demo code

## CRITICAL (2)

### C1. Code blocks promised — KHÔNG TỒN TẠI (0/12 chương)
- Grep `\`\`\`` toàn folder = **0 matches**
- T1 "Hizashi v0.5 dev intensive" + T4 "Hizashi v0.7 + 50 users" + T10 "production stack ready" + T11 "Adaptive prompt engineering" — KHÔNG có 1 dòng code Python/Dart/SQL/YAML
- Reader CNTT đã được scaffolding code-ready ở sách 21-23 → sách 24 **rút thang xuống** thành business narrative thuần
- **Severity Critical**: phá vỡ continuity 4 sách đại học. Capstone book PHẢI demo code

### C2. Vocab table thiếu keyword Critical 就活
- **ES (エントリーシート)**: KHÔNG xuất hiện T2 — chỉ "live coding" + "system design"
- **SPI**: 0 lần — đây là test bắt buộc 99% 大手 Nhật
- **卒業式**: T12 vocab thiếu 卒業式/学位記/袴/振袖
- **タームシート**, **エクイティ**, **共同創業者**, **論文**, **学会**: có
- 3/9 keyword Critical thiếu. T2 skip 就活 funnel: ES → SPI → GD → 1次/2次/最終

## MAJOR (5)

### M1. Difficulty progression jump T9→T10→T11 quá lớn
- T9 (12/2029): cofounder recruit + cap table 60/25/15
- T10 (1/2030): term sheet + KK incorporation + 司法書士 + 法務局 + payroll + Mizuho banking + WeWork — **6 quy trình hành chính trong 1 chương**
- T11 (2/2030): defense + S grade + power analysis + GDPR/APPI
- ZPD violation: zone too far
- **Recommend**: tách T10 thành "term sheet" + "incorporation" hoặc thêm appendix flowchart 法人設立 6 bước

### M2. Mai response unrealistic
- T2:74, T8:30 Mai consistently "Em hỗ trợ. Anh là người em chọn"
- Real spousal financial discussion startup risk có ít nhất 2-3 vòng push-back
- Reader VN sẽ học idealized version
- **Fix**: 1 scene Mai bày tỏ lo lắng cụ thể (apt rent, Hana daycare, savings rate) trước accept

### M3. Recall sách 21-23 paper-thin
- T1:43, T4:25, T7:67, T9:11 có inline reference khô khan
- 0 callback technical đến AtCoder skill (S21), DB schema (S22), RAG architecture (S23)
- Reader theo trọn series sẽ thấy Hizashi tech "appear out of thin air"
- **Recommend**: T6 卒論 chapter 4 architecture explicitly cite "DB schema từ S22, RAG pipeline từ S23, async pattern từ S21"

### M4. T8 Decision scene — judgement framework dạy thiếu structure
- Pros/cons sheet (basic) + Mai vote + Tony+Yumi vote + Inoue advice + Final 23:00 alone
- Thiếu decision framework chuẩn (Eisenhower, Bain "career vs equity expected value", regret minimization Bezos)
- Target SV năm 4 sắp đối mặt 就活 → **teachable moment bị missed**
- **Recommend**: Add decision matrix với weight + EV calculation (Mercari 5-yr expected wealth $300k vs Hizashi p(10%)*$5M = $500k)

### M5. Engagement — Hana arc same template lặp 12 tháng
- Pattern: (milestone) + (Mai video LINE) + (Đại VN reaction) + (1-line emotional)
- Disengagement risk sau chương 4-5
- **Recommend**: T6 Hana scene Tony chăm 1 đêm Đại viết 卒論; T8 Hana ốm khiến decision pressure tăng

## MINOR (5)

- m1: Learning objectives measurable nhưng không Bloom-format
- m2: 公聴会 culture missing T11 (open vs closed defense, dressing code, seal 印鑑)
- m3: T12 graduation speech VN-JP code-switch overdose
- m4: Vocab tables thiếu cột JLPT level
- m5: T5 Q&A trả lời quá perfect (0 fumble)

## Strengths (Top 3)

1. **Difficulty arc macro hợp lý**: 内定 → paper → defense → VC → incorporate flow đúng chronological + climax T8 (decision) + T12 (closure)
2. **Family thread integrated**: Hana milestones + Mai support woven naturally
3. **Authentic Japan business mechanics T10**: 株式会社 + 法人税 + 司法書士 + 法務局 + Mizuho + WeWork all factually correct

## Top 5 improvements priority

1. **C1 Critical**: Inject fenced code blocks T1 (v0.5 architecture), T4 (analytics SQL), T5 (paper algorithm pseudocode), T6 (chapter 4 system diagram), T11 (LLaMA backup config). Min 1 code block / chương technical
2. **C2 Critical**: T2 expand 就活 funnel — add pre-onsite scenes ES writing + SPI prep + GD round. Add vocab エントリーシート/SPI/玉手箱/最終面接
3. **M1 Major**: Tách T10 thành 2 sub-arcs hoặc add flowchart 法人設立 6 bước
4. **M3 Major**: T6 卒論 chapter 4 explicitly cite tech inheritance từ S21-22-23
5. **M4 Major**: T8 thêm decision framework — convert biggest emotional moment thành biggest teachable moment

## Severity

| Severity | Count |
|----------|-------|
| Critical | 2 |
| Major | 5 |
| Minor | 5 |

**Cross-series ZPD verdict**: Sách 24 sit ở zone comfortable cho reader đã hoàn thành S19-23, nhưng technical regression so với S21-23 là red flag. Without C1 fix, sách 24 risk feeling như "founder memoir" thay vì "capstone learning book".
