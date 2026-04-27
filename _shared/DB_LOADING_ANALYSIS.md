# Phân tích đưa data sách 02 vào PostgreSQL (v2 — sau khi xem full schema)

*Đã review 175 tables trong `_shared/db.sql`. Schema đầy đủ, không cần thêm table mới.*

**Constraint user:** `curriculum_node` flat — `parent_id` luôn NULL, node trực tiếp dưới `curricula`.

---

## ✅ Mapping CLEAN — không cần thay đổi schema

### Hierarchy chính

```
curricula (1 row: "Hizashi Sách 02 — Điện thoại")
  ↓ (curriculum_id FK)
curriculum_node (60 rows, parent_id=NULL, order_index 1..60)
  ↓ (curriculum_node_id FK)
curriculum_node_content (junction, n rows)
  ↓ content_type / content_id polymorphic
  ├── "conversation" → conversations (good/bad/variant + key_phrases)
  │                      ↓
  │                    conversation_lines (242 + 66)
  ├── "vocabulary"   → vocabulary (195 từ unique) → senses (chi tiết)
  └── "question"     → questions (60 BJT) → questions_answers (240 options)
```

Cộng thêm:
```
questions (60 BJT)
  ↓
question_set_questions (60 rows)
  ↑
question_sets (1 row: "BJT Practice — Sách 02 Phone", set_type="bjt")
```

---

### 📋 Mapping bảng-từng-bảng

#### 1. `curricula` — 1 row

| Column | Value |
|--------|-------|
| level | "BJT-J3" |
| type | "phone" hoặc "scenario" |
| title | "Điện thoại Công Việc" |
| introduction | (nội dung VN của `_front_matter.md`) |
| introduction_jp | (nội dung JP) |
| total_items | "60" |
| category | "phone_scenarios" |
| is_system | true |
| is_public | true |
| status | "published" |
| free_preview_count | 3 (tương ứng rule_01-03 free) |
| created_by | "system" hoặc user_id của bạn |

#### 2. `curriculum_node` — 60 rows

| Column | Source |
|--------|--------|
| curriculum_id | (sách 02 id) |
| parent_id | NULL ← user constraint |
| node_type | "rule" |
| node_title | `title.vi` |
| note_title_jp | `title.ja` (lưu ý: schema có typo `note_` thay vì `node_`) |
| node_definition | `rule_context.vi` (luận điểm) |
| node_definition_jp | `rule_context.ja` |
| node_content | (parse từ rule.md — phần thân Bad/Good example dạng plain text VN) |
| node_content_jp | (phần thân JP) |
| node_extra | (vocab list dạng text VN, hoặc JSON: cross-references `related_rules`) |
| node_extra_jp | (vocab list JP) |
| node_conclusion | (câu chốt VN từ `## 🎯 Câu chốt`) |
| node_conclusion_jp | (câu chốt JP) |
| order_index | 1..60 (extract từ rule_id) |
| access_level | "free" cho rule_01..rule_03; "paid" cho rest |

#### 3. `conversations` — ~240 rows (3-4 sections × 60 rules) + 66 cho key_phrases

| Column | Source (section) | Source (key_phrase) |
|--------|------------------|---------------------|
| user_id | NULL | NULL |
| is_single_line | false | **true** |
| content_type | "curriculum_node" | "curriculum_node" |
| content_id | (rule node id) | (rule node id) |
| level | NULL hoặc "BJT-J3" | NULL |
| title | `label_vi` ("TỐT") | `purpose` (vd "電話終了の標準") |
| title_jp | `label_ja` ("良い例") | (purpose JP nếu có) |
| situation | `analysis.vi` | NULL |
| situation_jp | `analysis.ja` | NULL |
| sentence | NULL | `key_phrases[].sentence` (JP) |
| translation | NULL | `key_phrases[].sentence_translation` (VN) |
| furigana | NULL | (parse từ JP nếu cần) |
| order_index | `display_order` | (sequential) |
| is_system | true | true |

#### 4. `conversation_lines` — 242 + 66 = 308 rows

| Column | Source |
|--------|--------|
| conversation_id | (parent conv row id) |
| speaker | `speaker` (vd "zun") |
| speaker_gender | `gender` ("male"/"female") |
| speaker_role | `speaker_role` (vd "BD担当") |
| sentence | `sentence` (JP) |
| furigana | `sentence_furigana` |
| translation | `sentence_translation` |
| audio_jp | NULL ban đầu (populate sau khi gen TTS) |
| audio_vi | NULL ban đầu |
| politeness | `tone` (formal/casual/warm/...) |
| order_index | (auto theo array index) |
| notes | (concat `annotations[].vi` cho line này — JOIN nếu nhiều annotations) |
| notes_jp | (concat `annotations[].ja`) |
| grammar_analysis | NULL (có thể chứa pronunciation_hint JSON nếu cần) |

#### 5. `questions` + `questions_answers` — 60 BJT + 240 options

**`questions` (60 rows):**

| Column | Source |
|--------|--------|
| user_id | NULL |
| is_system | true |
| question_type | "multiple_choice" |
| content_type | "curriculum_node" |
| level | `bjt_practice[].level` ("J3"/"J4"/"J2") |
| question | `question_ja` |
| sentence | (rỗng hoặc question_ja lặp lại) |
| sentence_translation | (VN gloss của câu hỏi nếu có) |
| general_explanation | `explanation.vi` + "\n---\n" + `explanation.ja` (concat 2 lang) |
| base_difficulty | (J5=1, J4=2, J3=3, J2=4, J1=5, J1+=6) |
| selection_type | "single" |
| skill_category | `skill` ("場面把握"/"表現読解") |

**`questions_answers` (4 rows × 60 = 240 rows):**

| Column | Source |
|--------|--------|
| question_id | (parent question id) |
| sentence | `options[i]` (option text JP) |
| is_correct | (i == ord(correct) - ord('A')) |
| "order" | i (0/1/2/3) |
| explanation | NULL hoặc giải thích riêng từng option (không có trong data) |

**`question_sets` (1 row):**

| Column | Value |
|--------|-------|
| name | "BJT Practice — Sách 02 Phone" |
| set_type | "bjt_practice" |
| level | "BJT-J3-J2" |
| question_type | "multiple_choice" |
| category | "phone_scenarios" |
| is_system | true |
| is_public | true |
| card_count | 60 |
| description | "60 câu hỏi BJT từ Sách Điện thoại Công Việc" |

**`question_set_questions` (60 rows):** map question_set_id ↔ question_id, order_index = (rule_NN — 01).

**`content_questions` (60 rows):** link rule → question.

| Column | Value |
|--------|-------|
| content_type | "curriculum_node" |
| content_id | (rule node id) |
| question_id | (parent question id) |
| order_index | 0 |

#### 6. `vocabulary` + `senses` — 195 từ unique

**`vocabulary` (195 rows):**

| Column | Source |
|--------|--------|
| level | "BJT-business" |
| lemma | `kanji` (col 1 từ rule.md vocab table) |
| kana | `yomi` (col 2) |
| meaning | (Vietnamese từ col 3) |
| meaning_ja | NULL (không có trong data) |
| pos | NULL |
| type | "phone_business" |
| is_system | true |

**`senses` (optional, 195 rows):** chi tiết hơn nếu có giải thích lan rộng. Có thể bỏ qua giai đoạn đầu.

**Link rule → vocabulary** qua `curriculum_node_content`:

| Column | Value |
|--------|-------|
| curriculum_node_id | (rule node id) |
| content_type | "vocabulary" |
| content_id | (vocabulary row id, stringified) |

---

## ⚠️ Minor gap — vẫn xử lý được không cần migration

### Gap A. `annotations` (highlight + giải thích trong rule)

JSON có:
```json
"annotations": [{ "id": "1", "applies_to_line": "rule_04_good_03",
  "highlight_text": "復唱させていただきます", "ja": "...", "vi": "..." }]
```

→ **Nén vào `conversation_lines.notes_jp` + `notes`**: format `[highlight_text] note_ja` rồi concat nếu nhiều annotations cho cùng 1 line.

Mất khả năng render highlight inline trong UI, nhưng giữ được nội dung.

### Gap B. TTS metadata (`speed_multiplier`, `pause_after_ms`, `pronunciation_hint`, `sfx_intro`)

Schema không có column. **Lựa chọn:**

(a) **Stuff vào `conversation_lines.grammar_analysis`** dưới dạng JSON string:
```json
{"speed":0.95,"pause":800,"pron":{"白鷗":"はくおう"}}
```

(b) **Bỏ trong DB** — giữ JSON file gốc làm source cho audio gen pipeline. Chỉ populate `audio_jp`/`audio_vi` (URL) sau khi gen xong.

→ **Khuyến nghị (b):** đơn giản, chuẩn separation of concern. JSON file là source for TTS pipeline; DB lưu URL output.

### Gap C. `related_rules` cross-reference

JSON có `["rule_12", "rule_16"]`.

→ **Đẩy vào `curriculum_node.node_extra`** dạng JSON ngắn:
```json
{"related": ["rule_12", "rule_16"]}
```

App parse khi cần render "Liên quan".

---

## ❓ Cần user xác nhận trước khi load

1. **Tenant ID:** schema có `tenant_id text` ở khắp nơi. Bạn dùng tenant gì cho data Hizashi (vd "hizashi" hoặc NULL)?

2. **created_by:** ID user/system tạo (bạn cho user_id cụ thể, hay "system")?

3. **Free preview policy:** rule_01..03 = `access_level="free"`, rule_04..60 = `"paid"`? Hoặc khác?

4. **Vocab dedup:** Phụ lục B đã ra 195 từ unique (đã dedup theo kanji). Mỗi rule có thể chứa 3-5 từ → trùng lặp giữa rules. Khi load:
   - **(a)** Tạo 1 row vocabulary cho mỗi từ unique, link nhiều `curriculum_node_content` (vocab xuất hiện ở nhiều rule)
   - **(b)** Tạo row riêng cho mỗi (rule, từ) — duplicate trong `vocabulary`
   → **Khuyến nghị (a)**.

5. **content_questions vs question_set_questions:**
   - `content_questions` link 1 question → 1 rule (cho học theo rule)
   - `question_set_questions` link 60 questions vào 1 set (cho luyện tập tổng)
   → Nên insert cả 2 (1 rule có 1 BJT question + tất cả 60 nằm trong 1 set "BJT Sách 02").

6. **Topics tag:** có muốn tag rule theo phần (受電/発信/困難 etc.) không? Schema có `topics` + `content_topics`. Optional.

---

## 🚀 Action plan

Sau khi user xác nhận 6 câu hỏi trên, tôi viết `scripts/load_to_postgres.py`:

1. Đọc 60 conversation.json + parse rule.md
2. Insert curricula → curriculum_node → conversations → conversation_lines
3. Insert vocabulary (dedup) → curriculum_node_content
4. Insert questions → questions_answers → content_questions
5. Insert question_sets + question_set_questions
6. Output thống kê (số row mỗi table)

Script sẽ idempotent (re-run được, dùng `ON CONFLICT` hoặc check exists trước).

**Sandbox không kết nối được DB của bạn (network isolated)**, nên bạn cần chạy script trên máy mình. Tôi viết Python script + bạn `python3 scripts/load_to_postgres.py` là xong.

---

## TL;DR

**Không cần thêm table mới.** Schema 175 bảng đã có đủ chỗ chứa toàn bộ data sách 02:

- 1 `curricula` + 60 `curriculum_node` (flat) + 240 `curriculum_node_content`
- 240 `conversations` (sections) + 66 `conversations` (key_phrases) + 308 `conversation_lines`
- 60 `questions` + 240 `questions_answers` + 1 `question_sets` + 60 `question_set_questions` + 60 `content_questions`
- 195 `vocabulary` (unique, dedup)
- TTS metadata + annotations giữ trong JSON gốc (audio gen pipeline đọc từ file)
