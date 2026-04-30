# Pedagogue Council Review — Sách 23 "Đại ĐH Năm 3"

> Reviewer: council-pedagogue
> Date: 2026-04-29
> Verdict: **PEDAGOGY GRADE C+ (60-65/100)** — APPROVE WITH CAVEATS

## CRITICAL (3)

### C1. Cognitive overload chap t04, t06, t10
- **t04** nhồi 5 ML concepts trong 1 chap: self-attention math + multi-head + positional encoding + BERT MLM/NSP + GPT autoregressive + fine-tuning HuggingFace. Sinh viên cần ~3 tuần consolidate, ở đây nén 1 chap. **Không có scaffolding** giữa "tensor cơ bản t02" → "attention mechanism t04". Thiếu intermediate (RNN/LSTM hoặc word2vec) bridge
- **t06** dump full RAG pipeline 30+ dòng code ngay sau Claude API basics
- **t10 Scene 2 line 20** dùng box-drawing chars `┌─┐│└─┘` — **VI PHẠM CLAUDE.md** (Flutter render crash)

### C2. Learning objectives không measurable
12/12 chap có Mục tiêu là **plot summary, không phải learning outcome**. Hệ quả: học viên không biết cần học gì.

### C3. T05 Scene 5 code dump không verify được
Query test "リモートワーク 申請 方法" → top 5 docs in 80ms — không có reproduce path, không thấy output structure.

## MAJOR (6)

### M1. Vocab table không cover NLP terms thoả đáng
T04 thiếu kana 自己注意機構 (じこちゅういきこう), 事前学習, 微調整. T08 thiếu 仮説, 先行研究, 評価指標.

### M2. Cultural learning về sinh con VẮNG MẶT (CRITICAL gap)
T03 (Hana sinh) thiếu hoàn toàn:
- 出産育児一時金 ¥500k
- 母子手帳
- 妊婦健診
- 出生届 (14 ngày)
- 育児休業 / 育休手当金 (paternity leave 67%)
- 里帰り出産

→ Major miss cho sách "đại du học sinh có vợ".

### M3. Recall sách 21-22 không explicit
- Sách 21 Python skill không gọi lại trong NLP chap
- Sách 22 FastAPI/PostgreSQL không reference
→ Vi phạm spaced retrieval principle

### M4. Bloom's chỉ Level 1-2
Recall + Understand có nhiều. Apply (code blocks Đại viết) student passive đọc. Analyze chỉ duy nhất T06 vanilla SDK > LangChain debate. Evaluate/Create vắng.

### M5. ZPD jump T03 → T04 quá lớn
T03 medical JP family register → T04 attention math formula = +200% jump (ZPD nên +15%/step).

### M6. Engagement — Hana baby thiếu integrate vào tech narrative
Hana chỉ status update, không có moment Hana ảnh hưởng technical decision. T05:60-64 hint nhẹ "夜泣きが多くて" underdeveloped.

## MINOR (5)

- m1: Code blocks dùng `<br>` lồng table cell — render risk
- m2: Furigana bugs (T01:40 ruby cho hiragana với rt = chính nó)
- m3: T07 missing 内定式/内定者懇親会/内定承諾書 vocab
- m4: T11 feedback log chỉ số, không ví dụ cụ thể
- m5: T12 stats list không comparison cohort

## Difficulty progression chart

| Chap | Cognitive load | Status |
|---|---|---|
| t01 | Light JP keigo | OK |
| t02 | Medium ML basic | OK |
| t03 | Medical JP vocab | OK |
| t04 | **Very heavy** 5 concept | **CRITICAL jump** |
| t05 | Heavy infra+embeddings | Major |
| t06 | Heavy code+prompt eng | Major |
| t07 | Light career JP | OK relief |
| t08 | Light decision | OK |
| t09 | Medium narrative | OK |
| t10 | Heavy system design | Major (box-draw bug) |
| t11 | Heavy full-stack | Major |
| t12 | Medium career+algo | OK |

6/12 chap heavy/critical load. Spaced relief insufficient.

## Strengths (Top 3)

1. **Vision arc cohesive** — Hizashi seed → EUREKA → MVP traceable
2. **Realistic numbers** (¥6.7M offer, $0.02/query, 50k docs) domain credibility
3. **Yamada-senpai mentor relationship** ZPD via expert pairing pedagogically sound

## Top 3 must-fix

1. C1+M5: Insert chap intermediate giữa t02-t04 (RNN/word2vec) hoặc split t04
2. M2: Rewrite t03 với 5 cultural items (出産育児一時金, 母子手帳, 妊婦健診, 出生届, 育休)
3. C1 t10 box-drawing chars → markdown chuẩn

## Severity summary

| Severity | Count |
|----------|-------|
| Critical | 3 |
| Major | 6 |
| Minor | 5 |
