# Pedagogue Council Review — Sách 21 "Đại ĐH Năm 1"

> Reviewer: council-pedagogue
> Date: 2026-04-28
> Verdict: **APPROVE WITH CAVEATS**
> Severity: 2 CRITICAL, 9 MAJOR, 8 MINOR

## Top 2 CRITICAL

### CRIT-1: T7 async syntax bug
T7 scene 5 FastAPI code:
```python
@app.post("/books")
def create_book(book: BookCreate, db: Session = Depends(get_db)):
    suggested = await suggest_price(book.isbn, book.condition)  # ← await trong def sync!
```
Phải là `async def create_book(...)`. Reader copy → SyntaxError.
**Fix**: Đổi `def` → `async def`.

### CRIT-2: T6 → T7 jump không scaffold
Reader chưa được dạy SQL, REST API, HTTP, deployment, OAuth — nhưng T7 hackathon scene 4-5 dump full FastAPI app + Heroku deploy + GitHub OAuth. ZPD violated rộng.
**Fix**: Insert T6.5 mini-chapter "Web basics: REST + SQL + HTTP primer" hoặc rewrite T7 scene 4-5 với inline explainers Yamato/Lin Wei dạy lúc đó.

## Top 9 MAJOR

### MAJ-1: Mục tiêu IT vs JP language gap
Sách title "Hizashi" (học JP) nhưng mục tiêu chương 90% là CS knowledge.
**Fix**: Tuyên bố rõ "CS qua hội thoại Nhật" + add JP grammar focus mỗi chương.

### MAJ-2: T4 Math eigenvalue jump scene 1 không scaffold
Nên matrix → addition → multiplication → determinant → eigenvalue (4 progressive scene).

### MAJ-3: T5 Big O 7 levels dump scene 1
Nên 3 ban đầu (O(1), O(n), O(n²)) rồi mở rộng.

### MAJ-4: T8 cognitive overload — 8 data structures × 1 lecture mỗi
Bloom chỉ Level 2. Chia 2 chương hoặc reduce density.

### MAJ-5: Vocab callback box từ sách 19-20 missing
Reader N3→N2 cần spaced repetition.
**Fix**: "Callback box" mỗi chương recall 5 từ kanji từ sách 19-20.

### MAJ-6: サークル (university club) missing
95% SV năm 1 ĐH Osaka vào サークル. Lost cultural learning.
**Fix**: Insert サークル scene T2 hoặc T3 — Đại join プロコン サークル.

### MAJ-7: PreSchool app verify
T6 mention "PreSchool VN-Japan" — reader VN không biết apply. Verify thật hoặc clarify.

### MAJ-8: T4 mục tiêu mơ hồ exit criterion
"Toán Việt > toán Nhật" — reader làm được gì sau chương?

### MAJ-9: N3→N2 progression unclear
Reader có lên level Nhật không? Exit criterion JLPT level cuối T12 missing.

## 8 MINOR

1. T3 list comprehension Yamato show off scene 6 không scaffold
2. T11 syllabus dialogue khô — restructure thành conversation
3. T6 income breakdown scene 6 đọc như spreadsheet
4. Yamada-sensei trường tiếng cameo missed
5. T10 IT label (narrative-only) chưa rõ
6. T11 cert benefit (giảm thuế Toyota) expand
7. 大学祭 (lễ hội ĐH) missing T12
8. T7 hackathon procedure mờ (team setup + idea pipeline)

## Bloom Taxonomy coverage

| Level | Coverage |
|-------|----------|
| 1 Recall | 90% (vocab tables) |
| 2 Understand | 70% (code có comment, math có analogy) |
| 3 Apply | 30% (LITE no exercise) |
| 4 Analyze | 10% (chỉ T7 DB index bug) |

**Recommendations**:
- Self-check 3-5 questions cuối mỗi chương IT (T3, T4, T5, T7, T8, T9, T11) → chạm Apply.
- T11 mini-mock 5 câu FE 科目A/B style.

## Strengths

1. **Cohort 4-quốc-tịch** + AtCoder gamification = engagement masterclass
2. **AtCoder rating gamification** — reader self-benchmark
3. **Procedure replicability T9 (firstcontributions OSS PR) + T11 (Anki + 過去問道場 với URL)** = practical outstanding
4. **Pedagogy meta-moment T4 scene 3** (Đại tutor Aiko qua Figma analogy) = teaches reader how to teach
5. **Tony+Yumi recurring** từ sách 19-20 — continuity
6. **Lễ ăn hỏi VN T10** chi tiết cultural authentic
7. **Tutor Linh-Anh pandas** real-life apply ROI 10x
8. **EJU Prometric Umeda mirror T11** — pedagogically sweet

## Verdict

**APPROVE WITH CAVEATS**

Pipeline tiếp Stage 8 finalize **CHỈ SAU KHI**:
1. Fix T7 async syntax bug (1 line)
2. Insert hoặc inline-scaffold T6→T7 transition
3. Add 3-5 self-check Q cuối mỗi chương IT (defer optional)

MAJOR khác có thể address cycle revision riêng hoặc accept LITE pipeline trade-off.
