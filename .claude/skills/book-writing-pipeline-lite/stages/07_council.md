# Stage 9: Hội đồng thẩm định (3 reviewers song song)

> **Mục tiêu**: 3 expert review từ 3 góc nhìn khác nhau:
> - **Linguist** — chuyên ngôn ngữ học, ngữ pháp, ngữ nghĩa, sociolinguistics
> - **Pedagogue** — chuyên giáo dục học, thiết kế khoá học, learning curve
> - **Domain expert** — chuyên gia lĩnh vực sách (BJT/business/IT/medical/...)

## Triển khai

**3 Subagents song song**:
- `council-linguist`
- `council-pedagogue`
- `council-domain-expert`

**Tools**: Read, Grep, Glob, WebSearch (chỉ domain-expert)

## Quy trình

### 1. Main Claude prepare

Đọc state để lấy `domain_expert_role` (vd "BJT Expert", "Software Engineer Nhật"):

```python
state = json.loads(read("books/<book>/_pipeline/state.json"))
domain_role = state["domain_expert_role"]
```

Tạo folder output:
```bash
mkdir -p books/<book>/_pipeline/09_council/
```

### 2. Spawn 3 agents trong CÙNG 1 message (parallel)

#### Agent 1: council-linguist

```
Bạn là một nhà ngôn ngữ học (linguist) chuyên tiếng Nhật và song ngữ Nhật-Việt.
Review sách "<book_title_vn>" từ góc nhìn ngôn ngữ học.

Files: <list md_files + json_files>

Đánh giá 5 nhóm:

1. **Tính chính xác ngôn ngữ học**:
   - Phân loại từ loại có đúng?
   - Giải thích sociolinguistic (vd Uchi/Soto, hierarchy) có chính xác?
   - Nếu trích dẫn nguồn ngôn ngữ học, có đúng không?

2. **Tính tự nhiên của tiếng Nhật**:
   - Câu mẫu có giống native không, hay quá bookish?
   - Distribution các kiểu câu (formal/informal) có balance?
   - Có catch được nuance trong các câu mẫu?

3. **Tính chính xác của bản dịch tiếng Việt**:
   - Dịch sát nghĩa hay quá thoát ý?
   - Thuật ngữ ngôn ngữ học (動詞、形容詞...) dịch đúng?
   - Có "false friend" giữa Nhật-Việt nào không?

4. **So sánh với chuẩn academic**:
   - Cách tiếp cận có khoa học không?
   - Có đủ rigor (vs chỉ "kinh nghiệm")?

5. **Recommendations**:
   - 5 điểm cần improve
   - 3 điểm sách làm tốt

Ghi báo cáo vào `books/<book>/_pipeline/09_council/linguist.md`. Dưới 1500 từ.
```

#### Agent 2: council-pedagogue

```
Bạn là chuyên gia giáo dục học, thiết kế khoá học ngoại ngữ.
Review sách "<book_title_vn>" từ góc nhìn pedagogy.

Files: <list>

Đánh giá 5 nhóm:

1. **Learning objectives**:
   - Mục tiêu mỗi chương có rõ ràng, đo được không?
   - Outcomes match với target audience (<target>)?

2. **Difficulty progression**:
   - Cong learning curve có hợp lý? (zone of proximal development)
   - Có jump quá lớn giữa chương N → N+1?
   - Module basic có thực sự basic? Advanced có advanced thật?

3. **Engagement**:
   - Có ví dụ thực tế đủ không?
   - Có connect được với life experience của target audience?
   - Có "boring section" cần restructure?

4. **Assessment quality**:
   - Bài tập có thực sự test kiến thức đã dạy?
   - Distractors có chất lượng (không quá dễ đoán)?
   - Có balance giữa recall (memorize) và application (apply)?
   - Có Bloom's Taxonomy progression?

5. **Recommendations**:
   - 5 điểm cần improve về pedagogy
   - 3 điểm sách làm tốt

Ghi vào `books/<book>/_pipeline/09_council/pedagogue.md`. Dưới 1500 từ.
```

#### Agent 3: council-domain-expert

```
Bạn là <domain_expert_role>. Review sách "<book_title_vn>" từ góc nhìn chuyên gia ngành.

Files: <list>

Đánh giá 5 nhóm:

1. **Tính chính xác chuyên ngành**:
   - Nội dung có đúng với thực tế ngành?
   - Có lỗi factual nào không?
   - Tình huống mẫu có realistic?

2. **Cập nhật**:
   - Nội dung có outdated (vd dùng practice cũ không còn phù hợp)?
   - Có miss trends/techniques mới quan trọng?
   - Dùng WebSearch nếu cần verify thông tin mới nhất.

3. **Practical applicability**:
   - Người học áp dụng được không?
   - Câu hỏi có gần với tình huống thực tế?
   - Có gap giữa lý thuyết và practice?

4. **Industry standards**:
   - Có align với best practices của ngành?
   - Thuật ngữ chuyên ngành có chính xác?

5. **Recommendations**:
   - 5 điểm cần improve về domain accuracy
   - 3 điểm sách làm tốt
   - Suggest 3 topic cần thêm/bỏ nếu có

Ghi vào `books/<book>/_pipeline/09_council/domain_expert.md`. Dưới 1500 từ.
```

### 3. Sau khi tất cả 3 agents xong

Main Claude:
1. Verify 3 file output đã được tạo
2. **Tổng hợp** thành báo cáo cuối ở `_pipeline/09_council/_summary.md`:

```markdown
# Council Review Summary — <book_title_vn>

## Aggregated severity

| Issue | Linguist | Pedagogue | Domain | Severity |
|-------|----------|-----------|--------|----------|
| <issue 1> | flagged | flagged | - | Critical (2/3) |
| <issue 2> | - | flagged | flagged | Major (2/3) |
| <issue 3> | flagged | - | - | Minor (1/3) |

## Critical (>= 2/3 reviewers flagged)
- ...
- ...

## Major (1/3 reviewer flagged - cần consider)
- ...

## Strengths (mọi reviewer đồng ý sách làm tốt)
- ...

## Action items for stage 10
- [ ] Fix critical issues
- [ ] Consider major issues
- [ ] Document strengths trong README sách
```

3. Update state:
```python
state["stages"]["09_council"] = {
  "status": "done",
  "outputs": [
    "_pipeline/09_council/linguist.md",
    "_pipeline/09_council/pedagogue.md",
    "_pipeline/09_council/domain_expert.md",
    "_pipeline/09_council/_summary.md"
  ],
  "completed_at": "<now>"
}
state["current_stage"] = 10
save_state(state)
```

4. Báo user:
```
✓ Stage 9 (Hội đồng thẩm định) hoàn tất.

3 reviewers đã review:
- Linguist: <X> issues flagged
- Pedagogue: <Y> issues flagged
- <Domain expert role>: <Z> issues flagged

Critical issues (>= 2/3 đồng ý): <N>
Major issues: <M>
Strengths: <P>

Output:
- _pipeline/09_council/linguist.md
- _pipeline/09_council/pedagogue.md
- _pipeline/09_council/domain_expert.md
- _pipeline/09_council/_summary.md

Chạy /book-next <book> để sang Stage 10 (Hiệu đính + tạo SQL seed).
```

## Constraints

- 3 agents PHẢI chạy SONG SONG (1 message với 3 Agent tool calls) để tiết kiệm thời gian
- Mỗi agent CHỈ ghi vào file của mình, KHÔNG sửa files khác
- KHÔNG có agent fix code/content — chỉ review
- Domain agent có quyền WebSearch (verify thông tin update)

## Failure handling

- 1 agent fail → continue với 2 agents còn lại, ghi note trong summary
- Output 1 agent quá ngắn (<300 từ) → flag low-quality, optional re-run
