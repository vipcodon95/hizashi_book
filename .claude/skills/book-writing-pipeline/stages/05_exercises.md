# Stage 5: Exercises (Bài tập JSON)

> **Mục tiêu**: Tạo file JSON câu hỏi cho mỗi module. Tuân theo schema chuẩn của skill `study-course-questions-builder`.

## Triển khai

**Main Claude trực tiếp** + **bắt buộc** dùng skill `study-course-questions-builder`.

## Quy trình

### 1. Đọc input

```python
draft = read("books/<book>/_pipeline/03_draft.md")
state = json.loads(read("books/<book>/_pipeline/state.json"))
modules = state["modules"]

# Đọc skill chính để verify schema
schema_skill = read(".claude/skills/study-course-questions-builder/SKILL.md")
example_baitap = read(".claude/skills/study-course-questions-builder/examples/example_baitap.json")
example_mogishiken = read(".claude/skills/study-course-questions-builder/examples/example_mogishiken.json")
```

### 2. Cho TỪNG module:

#### A. Tạo file BaiTap

Path: `books/<book>/<module.folder>/<topic_decimal>_<Name>_BaiTap.json`

Yêu cầu:
- 40 câu (10 × 4 levels)
- Schema: `chon_dap_an` (default), hoặc theo `module_type`:
  - `module_type=grammar` → mostly `chon_dap_an` + `khoang_trong`
  - `module_type=vocabulary` → mostly `kanji_yomi` + `kanji_kaki` + `iikae`
  - `module_type=reading` → có thể skip BaiTap, chỉ làm Mogishiken
  - `module_type=listening` → `kadai_rikai` + `point_rikai` + `sokuji_outou`
- Content phải bám sát draft của module đó (kiểm tra kiến thức đã dạy)

#### B. Tạo file Mogishiken (nếu module có dạng đọc hiểu)

Path: `books/<book>/<module.folder>/<topic_decimal>_<Name>_Mogishiken.json`

Yêu cầu:
- 5 sections × 4 câu/section = 20 câu
- Schema: `reading` với passage_ref
- Mỗi section 1 loại `document_type` khác nhau (theo plan trong outline)

#### C. Track progress

```python
state["stages"]["05_exercises"]["modules_done"].append(module.code)
save_state(state)
```

### 3. Validate ngay sau khi tạo

```bash
python3 .claude/skills/study-course-questions-builder/scripts/validate_json.py <file>
```

Nếu FAIL → sửa rồi save lại trước khi sang module tiếp.

### 4. Sau khi xong tất cả modules

```python
state["stages"]["05_exercises"] = {
  "status": "done",
  "output": "[<N> JSON files in books/<book>/*/]",
  "completed_at": "<now>",
  "modules_done": [...]
}
state["current_stage"] = 6
save_state(state)
```

### 5. Báo user

```
✓ Stage 5 (Bài tập JSON) hoàn tất.

Đã tạo <X> file BaiTap.json + <Y> file Mogishiken.json:
- Tổng <N> câu hỏi
- Validator: tất cả PASS

Chạy /book-next <book> để sang Stage 6 (Review tiếng Nhật/Việt).
```

## Quy tắc CRITICAL — chất lượng câu hỏi

### A. Distractors (đáp án sai)

KHÔNG được có distractor:
- ❌ Quá rõ ràng sai → user đoán được
- ❌ Sai ngữ pháp/chính tả Nhật từ đầu (làm distractor mất giá trị)
- ❌ Mơ hồ — có thể đúng tuỳ ngữ cảnh

PHẢI có distractor:
- ✅ Mỗi distractor minh hoạ 1 lỗi điển hình mà người học hay mắc
- ✅ Length tương đương đáp án đúng
- ✅ Cùng loại từ (động từ, danh từ, ...) — không trộn lẫn

### B. Explanation

- Giải thích **vì sao đáp án đúng đúng** (không chỉ nhắc lại đáp án)
- Đề cập **vì sao distractors sai** (giúp học)
- Length 50-200 chars (vừa đủ, không quá dài)

### C. Tip (optional)

- 1 câu ngắn dưới 50 chars
- Mẹo nhớ thực tế

### D. ID convention

- Symbolic: `q_<topic>_<kind>_<seq>` (vd `q_2.1.1_baitap_001`)
- Build script tự convert sang integer khi build SQL
- KHÔNG dùng integer trực tiếp ở stage này

### E. Module position

```python
# Set module_position cho mỗi question_set
# BaiTap: position 1-4 (level 1-4)
# Mogishiken: position 5 (sau 4 BaiTap level)
{"set_id": "set_2.1.1_baitap_level1", "module_position": 1, ...}
{"set_id": "set_2.1.1_baitap_level2", "module_position": 2, ...}
{"set_id": "set_2.1.1_baitap_level3", "module_position": 3, ...}
{"set_id": "set_2.1.1_baitap_level4", "module_position": 4, ...}
{"set_id": "set_2.1.0_mogishiken",    "module_position": 5, ...}
```

## Constraints

- **PHẢI dùng skill `study-course-questions-builder`** — đọc SKILL.md đó trước khi viết
- **PHẢI validate** mỗi JSON sau khi tạo
- **PHẢI bám draft** — không tạo câu hỏi về kiến thức chưa dạy
- **Resume-friendly** — save state sau mỗi module xong

## Failure handling

- Validator FAIL → fix lỗi (xem mục 6 Anti-patterns trong SKILL.md skill)
- Không nghĩ ra đủ 40 câu cho 1 module → flag warning, viết được nhiều câu nhất có thể (≥20 câu/module), ghi note vào file: `"_warning": "Chỉ tạo được X câu, cần bổ sung sau"`

## Tham khảo

- Schema chính: `.claude/skills/study-course-questions-builder/SKILL.md`
- Examples: `.claude/skills/study-course-questions-builder/examples/`
- Memory ID convention: `business_japanese_seed.md`
