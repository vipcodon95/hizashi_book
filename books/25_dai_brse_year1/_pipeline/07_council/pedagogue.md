# Pedagogue Council Review — Sách 25 "Đại BrSE Year 1"

> Reviewer: council-pedagogue
> Date: 2026-04-29
> Verdict: **Medium-High pedagogical quality, conditional approval**

## CRITICAL (4)

### C1. Mục tiêu chương quá nặng plot, thiếu measurable language objectives
- 12/12 chương mở `> Mục tiêu` là **plot summary, không phải learning objective**
- VD T1: "Hôm nay Day 1 BrSE intern Thanh Hà..." (plot) thay vì "Học viên có thể: (1) Mở meeting JP business, (2) Trình bày tech stack, (3) Điều phối schedule keigo"
- **Fix**: Rewrite mục tiêu theo Bloom template "Sau chương N, học viên có thể: [Recall/Apply/Analyze verb]..."

### C2. Vocab table chỉ Recall level (Bloom 1) — thiếu Apply/Analyze
- 12/12 chương có Vocab + Bí quyết nhưng KHÔNG có exercise/self-check
- Pipeline LITE skip JSON exercise OK, NHƯNG cần inline self-check prompts
- **Fix**: Add 3-5 prompts/chương "Dịch sang JP keigo", "Apply pattern vào tình huống X"

### C3. Code blocks không có pedagogical scaffolding cho non-tech reader
- T3 (DB schema), T4 (BGE-M3), T9 (server metrics) code dài nhưng không comment line-by-line
- Reader BrSE/founder background non-tech sẽ skip block → mất 10% nội dung
- **Fix**: Add comment block VN giải nghĩa + "vì sao chọn pgvector vs Pinecone" sidebar

### C4. Burnout crisis T10 dạy lesson nhưng thiếu actionable framework
- T10 line 83 "4 promises" là personal contract, không phải transferable framework
- Thiếu warning signs checklist + "circuit breaker" definition formal (Karasek/Maslach concept)
- **Fix**: Add framework formalization + 5 dấu hiệu sớm burnout founder checklist

## MAJOR (5)

### M1. Difficulty progression jump T4→T5 + T7→T8 quá lớn
- T3 (5 trang spec) → T4 (BGE-M3 paper + Stripe + SRS) ZPD violated
- Cần scaffolding chương trung gian hoặc inline glossary

### M2. Engagement: dual-track ổn nhưng family scenes quá ngắn
- T9 (10 business + 1 family); T10 (7 business + 2 family); T1 (4+4 balanced)
- Mai+Hana phần lớn LINE message ngắn. Hana toddler dialogue chỉ 1-2 câu/scene
- **Fix**: T11 sinh nhật Hana 60 lines preview, pacing nhanh — expand

### M3. Recall sách 21-24 không scaffolded cho stand-alone reader
- T1:3 giả định reader biết Tuấn ex-Mercari + Aiko HCI lab
- T9:82-84 Yamada/Inoue/Inomata 3 nhân vật từ sách 22-23 không recap
- **Fix**: Mỗi chương 2-3 dòng "Trước đó:" ngắn gọn

### M4. Cultural learning concepts dạy implicit
- 送別会, 正社員 vs intern, 育休, BrSE bridge role appear narrative nhưng không có culture box explicit
- T7 `辞退させていただきたく存じます` 3-layer humility keigo nhưng "Bí quyết" chỉ ghi general — miss teach grammar pattern
- **Fix**: Add Cultural Box mỗi chương — 12 boxes total

### M5. Hana toddler bilingual development chưa exploit pedagogy
- KHÔNG dạy reader concept simultaneous bilingual acquisition (OPOL strategy)
- Gold opportunity cho audience "founder VN startup Nhật có con"

## MINOR (3)

- m1: "Vocab tóm tắt" + "Bí quyết" 12 chương identical structure → monotone
- m2: T9:122 dump 9 metrics — cần infographic-style chart
- m3: Internal monologue VN quá nhiều → giảm exposure JP. T5 ratio JP:VN ~50:50, nên push 65:35

## Strengths Top 3

1. **Realistic, contemporary scenarios** — BrSE intern ¥280k, BD ¥350k, MRR realistic indie SaaS Japan. Reader VN founder năm 1 sẽ map 1:1
2. **Burnout teachable moment T10 well-structured** — Tuấn flag → Mai flag → forced rest → recovery → 4 promises → MRR threshold quit. Multi-stakeholder circuit breaker pattern
3. **Business JP keigo ladder progression** — T1 basic → T5 mid → T7 advanced → T12 farewell. CEFR B2→C1 business path natural

## Top 5 improvements priority

1. CRITICAL Rewrite mục tiêu chương theo Bloom (12 × 3 objectives = 36 measurable items)
2. CRITICAL Add self-check prompts mỗi chương 3-5 câu
3. CRITICAL Add code commentary cho non-tech reader (4 chương tech-heavy: T3, T4, T9, T10)
4. MAJOR Add T4.5 scaffolding hoặc Tech glossary chương
5. MAJOR Add Cultural Box explicit mỗi chương (送別会, 正社員 vs インターン, decline keigo, OPOL bilingual)

## Severity

| Severity | Count |
|----------|-------|
| Critical | 4 |
| Major | 5 |
| Minor | 3 |

## Verdict

Medium-High pedagogical quality. Sách mạnh về realism + multi-stakeholder narrative + cultural authenticity. Tuy nhiên structurally giống novel hơn textbook: thiếu measurable objectives, thiếu self-check, thiếu explicit framework. Effort estimate finalize +30% content nhưng learning ROI 2-3x.
