# Stage 4 (LITE): Content Markdown — DIALOGUE FOCUS

> **Mục tiêu**: Expand draft thành full markdown file cho mỗi chương, **DIALOGUE-DRIVEN**. Đây là stage **dài và quan trọng nhất** của pipeline LITE (60-70% effort).

## Triết lý

Khác với pipeline gốc (textbook lý thuyết + tình huống mẫu nhỏ), pipeline LITE viết sách kiểu **truyện / nhật ký dialogue**. Người đọc:

- Theo dõi nhân vật chính qua các tình huống thực
- Học tiếng Nhật + văn hoá / kiến thức ngành **QUA dialogue + hành động**
- Không có bullet point liệt kê — phải SHOW, KHÔNG TELL

## Triển khai

**Main Claude trực tiếp**.

## Quy trình

### 1. Đọc input

```python
draft = read("books/<book>/_pipeline/03_draft.md")
state = json.loads(read("books/<book>/_pipeline/state.json"))
modules = state["modules"]
template = read(".claude/skills/book-writing-pipeline-lite/templates/chapter_template_dialogue.md")
```

### 2. Cho TỪNG module, viết full markdown DIALOGUE-DRIVEN

Output path: `books/<book>/<module.folder>/<module.code>_<Name>_HoiThoai.md`

(Lưu ý: file suffix là `_HoiThoai.md` — KHÔNG phải `_LyThuyet.md`)

#### A. Tuân theo `templates/chapter_template_dialogue.md`

#### B. Density rules — CRITICAL

| Element | Tỉ lệ tối đa | Tỉ lệ mục tiêu |
|---|---|---|
| **Dialogue (bảng 2 cột Speaker / Lời thoại)** | — | **≥ 80%** |
| Bối cảnh ngắn đầu scene (1-2 câu) | 10% | 5-10% |
| Box bí quyết / vocab cuối chương | 15% | 10-15% |
| Lý thuyết block (>200 từ liền) | **0%** (cấm) | 0% |
| Mô tả hành động / italic stage direction | **0%** (cấm) | 0% |

→ KHÔNG dùng `*(cúi đầu)*`, `*(thì thầm)*`, `*nhìn ra cửa*`, etc. Dialogue PURE — chỉ Speaker + Lời thoại.
→ Nếu chương vi phạm density → phá nhịp đọc. Phải refactor: chuyển lý thuyết thành dialogue (sempai giải thích cho kohai).

#### C. Số scene + lượt nói

- **8-15 scene / chương** (tối đa, flex theo story)
- **5-15 lượt nói / scene** (mỗi turn 1-3 câu)
- **Tổng độ dài / chương**: 3000-6000 từ

#### D. Cast continuity rules

- Nhân vật chính phải có **voice + quirk + arc rõ**
- Mỗi supporting nhân vật xuất hiện ≥ 2 chương để build relationship
- Nếu introduce nhân vật mới → setup ở chương trước → payoff ở chương sau
- Tone của mỗi nhân vật phải **NHẤT QUÁN** xuyên suốt (vd sempai khắt khe luôn dùng cụm ngắn + câu mệnh lệnh, sếp Nhật dùng plain form xuống dưới + keigo lên trên)

#### E. Show, don't tell — VĂN HOÁ + KIẾN THỨC NGÀNH

❌ KHÔNG viết bullet:
```
- Văn hoá Nhật: chào hỏi 3 cấp độ (formal/sempai/bạn)
- Trong nhà máy: phải đeo khẩu trang
```

❌ KHÔNG dùng action italic / stage direction:
```
| Hoa | *(cúi đầu)* おはようございます。<br>*(Chào buổi sáng.)* |
```

✅ VIẾT bảng dialogue PURE — chỉ Speaker + Lời thoại (JP trên, VN dịch dưới):

```markdown
| Speaker | Lời thoại |
|---|---|
| Suzuki | ホアさん、おはよう。<br>*(Hoa-san, chào buổi sáng.)* |
| Hoa | おはようございます、<ruby>鈴木<rt>すずき</rt></ruby>さん。<br>*(Chào buổi sáng anh Suzuki.)* |
| Andi | おはよ、Hoa!<br>*(Chào Hoa!)* |
| Hoa | おはよう、Andi。<br>*(Chào Andi.)* |
```

→ Người đọc CẢM NHẬN văn hoá qua **chính lời nhân vật** (Hoa formal với sếp, casual với bạn) — không cần mô tả thêm.

#### F. Quy tắc nội dung

| ✅ DO | ❌ DON'T |
|-------|---------|
| Dùng furigana với `<ruby>漢字<rt>かんじ</rt></ruby>` | Box-drawing chars `━`, `─`, `═`, `├──`, `└──`, `│` |
| Bảng dialogue 2 cột: `\| Speaker \| JP<br>*(VN)* \|` | Blockquote dialogue format `> **Speaker**: ...` |
| Bối cảnh đầu scene 1-2 câu plain text | Italic mô tả hành động `*(cúi đầu)*`, `*nhìn ra cửa*` |
| Ví dụ thực tế (đời sống, công việc) | Bullet point liệt kê văn hoá / Lý thuyết block >200 từ |

#### G. Cấu trúc tiêu chuẩn

```markdown
# T<NN> <Tên chương> (<Tên Nhật>)

> **Mục tiêu nhân vật**: <1-2 câu — Hoa muốn đạt gì trong chương này>

---

## Bối cảnh

<2-3 đoạn ngắn — chỉ context cần thiết, không spoiler>

---

## Scene 1 — <Tên scene + thời gian>

<1-2 câu plain text setup tình huống — vd "Sáng thứ 2 tại văn phòng Suzuki.">

| Speaker | Lời thoại |
|---|---|
| Suzuki | <ruby>日本語<rt>にほんご</rt></ruby>のセリフ。<br>*(Tiếng Việt dịch.)* |
| Hoa | <ruby>返事<rt>へんじ</rt></ruby>。<br>*(Câu trả lời.)* |
| ... | ... |

(8-15 lượt nói trong bảng)

### 💡 Note nhỏ (optional)

<1-2 câu giải thích nuance — KHÔNG dài hơn>

---

## Scene 2 — ...

(repeat 8-15 scene)

---

## 📖 Vocab cuối chương (5-10 từ)

| Tiếng Nhật | Romaji | Nghĩa |
|---|---|---|
| ... | ... | ... |

## 💡 Bí quyết end-chapter (3-5 bullet, mỗi bullet ≤ 1 câu)

- ...
- ...

## ✨ Câu chốt

> *<1 câu hay từ chương này, đáng nhớ>*
```

### 3. Track progress

```python
state["stages"]["04_content_md"]["modules_done"].append(module.code)
save_state(state)  # save mỗi lần xong 1 module
```

→ Resume-friendly: đứt session vẫn restart được.

### 4. Sau khi xong tất cả modules

```python
state["stages"]["04_content_md"] = {
  "status": "done",
  "output": "[<N> files in books/<book>/*/]",
  "completed_at": "<now>",
  "modules_done": [...]
}
state["current_stage"] = 5
save_state(state)
```

### 5. Báo user

```
✓ Stage 4 (Content markdown DIALOGUE) hoàn tất.

Đã viết <N> files:
1. books/<book>/<folder>/<...>_HoiThoai.md (<X> từ, <Y> scene)
2. ...

Tổng <Z> từ, ~<W> dialogue turns.
Density check: ≥70% dialogue ✓

Chạy /book-next-lite <book> để sang Stage 5 (Review JP/VN).
```

## Constraints

- **Resume-friendly**: Save state sau mỗi module
- **Density**: ≥ 70% dialogue, hard rule
- **Không quá ngắn**: <2500 từ/chương = thiếu story
- **Không quá dài**: >7000 từ/chương = chia thành 2 phần
- **Furigana** bắt buộc cho Kanji với target audience N4-N3
- **KHÔNG box-drawing chars**

## Quality checklist (tự check sau khi viết mỗi file)

- [ ] Có heading H1 với title chương
- [ ] Có "Mục tiêu nhân vật" trong blockquote ở đầu (focus narrative, không phải learning objective)
- [ ] Có ít nhất 8 scene
- [ ] Mỗi scene có ≥ 5 lượt dialogue **trong bảng 2 cột**
- [ ] Density ≥ 80% dialogue (estimate eyeballed)
- [ ] Có Vocab + Bí quyết + Câu chốt cuối chương
- [ ] Cast nhất quán (cross-check với chương trước)
- [ ] Không có box-drawing chars
- [ ] **Không có action italic / stage direction** (`*(cúi đầu)*`, `*nhìn ra cửa*`)
- [ ] Furigana đúng cho kanji khó
- [ ] Không có "TODO" / placeholder

## Failure handling

- Module thiếu material → spawn lại `book-researcher` scope hẹp, update draft, viết lại
- Hết context (file quá dài) → chia chương thành 2 phần (`<...>_HoiThoai_1.md` + `<...>_HoiThoai_2.md`)
- Density < 80% → refactor: chuyển lý thuyết thành dialogue sempai-kohai

## Tham khảo

- Sách mẫu hoàn chỉnh: `books/09_real_dialogues/` (đã production, dialogue-driven format chuẩn)
- Sách 11 (`books/11_jisshusei_shokuhin/t01_*/...t12_*/*_LyThuyet.md`) — **KHÔNG dùng làm tham chiếu** vì là format full pipeline (lý thuyết + tình huống mẫu), không phải dialogue-pure
- Template: `templates/chapter_template_dialogue.md`
