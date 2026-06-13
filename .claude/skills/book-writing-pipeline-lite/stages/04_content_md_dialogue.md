# Stage 4 (LITE): Content Markdown — DIALOGUE FOCUS

> **Mục tiêu**: Expand draft thành full markdown file cho mỗi chương, **DIALOGUE-DRIVEN**. Đây là stage **dài và quan trọng nhất** của pipeline LITE (60-70% effort).

## Triết lý

Khác với pipeline gốc (textbook lý thuyết + tình huống mẫu nhỏ), pipeline LITE viết sách kiểu **truyện / nhật ký dialogue**. Người đọc:

- Theo dõi nhân vật chính qua các tình huống thực
- Học tiếng Nhật + văn hoá / kiến thức ngành **QUA dialogue + hành động**
- Không có bullet point liệt kê — phải SHOW, KHÔNG TELL

## ⚠️ TRỌNG TÂM CỐT LÕI (đọc trước khi viết — đây là chỗ HAY BỊ LẪN)

Đây là **sách dạy tiếng Nhật**, không phải tiểu thuyết. Mục đích #1: người học **học được mẫu câu tiếng Nhật thực tế họ sẽ DÙNG khi đi làm**.

| Quy tắc | Bắt buộc |
|---|---|
| **≥90% lượt thoại là HỘI THOẠI TIẾNG NHẬT NGHIỆP VỤ THỰC TẾ** | Nhân vật chính ↔ đồng nghiệp / cấp trên / khách / người liên quan ngành — bằng **tiếng Nhật** (có ruby + dịch Việt). Đây là phần người học học được. |
| **Tình huống tiếng Việt thuần (tâm sự đồng hương / gọi điện về nhà) ≤ 1 tình huống/chương** | Chỉ để giữ mạch truyện + tuyến cảm xúc. KHÔNG được chiếm phần lớn chương. Đánh dấu rõ `> Tình huống tiếng Việt`. |
| **Từ chuyên môn phải xuất hiện TRONG ngữ cảnh hội thoại** (có người hỏi — người giải thích) | KHÔNG liệt kê khô. VD: kohai hỏi "X nghĩa là gì?" → sempai giải thích bằng tiếng Nhật. |
| Người học đọc xong phải biết: gặp tình huống Y thì nói câu tiếng Nhật gì | Mỗi tình huống là 1 tình huống giao tiếp thực tế trong nghề (bàn giao ca, báo cáo cấp trên, nói với khách/người được phục vụ, hỏi khi chưa hiểu...) |

> ❌ LỖI ĐIỂN HÌNH (đã xảy ra, phải tránh): viết quá nhiều cảnh nhân vật tâm sự với bạn/người thân bằng tiếng Việt → người học KHÔNG học được tiếng Nhật gì. Cảnh đồng hương nói tiếng Việt là đương nhiên nhưng KHÔNG phải mục đích sách.

> ✅ Nếu là sách hội thoại nghề nghiệp (TTS/kỹ sư/điều dưỡng...): mỗi chương ~12 tình huống, ~11 tình huống là hội thoại nghiệp vụ tiếng Nhật + tối đa 1 tình huống tiếng Việt cuối chương.

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
| **Dialogue tiếng Nhật nghiệp vụ (bảng 2 cột)** | — | **≥ 90%** |
| Bối cảnh ngắn đầu tình huống (1-2 câu) | 10% | 5-10% |
| Box bí quyết / vocab cuối chương | 15% | 10-15% |
| Tình huống tiếng Việt thuần (đồng hương/gọi nhà) | **1 tình huống/chương** | 0-1 |
| Lý thuyết block (>200 từ liền) | **0%** (cấm) | 0% |

→ Stage direction NGẮN trong ngoặc đơn được phép & nên dùng có chừng mực để dẫn cảm xúc: `(mỉm cười)`, `(độc thoại nội tâm)`, `(cúi đầu)`, `(giọng nghiêm)`. KHÔNG lạm dụng, KHÔNG mô tả hành động dài dòng kiểu tiểu thuyết.
→ Nếu chương vi phạm density (quá nhiều tiếng Việt / lý thuyết) → phá mục đích học. Phải refactor: chuyển lý thuyết thành dialogue tiếng Nhật (sempai giải thích cho kohai), cắt bớt tình huống tiếng Việt.

#### C. Số tình huống + lượt nói

- **8-15 tình huống / chương** (tối đa, flex theo story)
- **5-15 lượt nói / tình huống** (mỗi turn 1-3 câu)
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

✅ VIẾT bảng dialogue PURE — chỉ Nhân vật + Lời thoại (JP trên, VN dịch dưới):

```markdown
| Nhân vật | Lời thoại |
|---|---|
| Suzuki | ホアさん、おはよう。<br>*(Hoa-san, chào buổi sáng.)* |
| Hoa | おはようございます、<ruby>鈴木<rt>すずき</rt></ruby>さん。<br>*(Chào buổi sáng anh Suzuki.)* |
| Andi | おはよ、Hoa!<br>*(Chào Hoa!)* |
| Hoa | おはよう、Andi。<br>*(Chào Andi.)* |
```

→ Người đọc CẢM NHẬN văn hoá qua **chính lời nhân vật** (Hoa formal với sếp, casual với bạn) — không cần mô tả thêm.

#### F. Quy tắc RUBY FURIGANA — LỖI NẶNG & HAY GẶP NHẤT

Mỗi kanji: `<ruby>漢字<rt>かな</rt></ruby>` — PHẢI đủ 4 thành phần `<ruby>` + `<rt>` + `</rt>` + `</ruby>`.

| ❌ LỖI thường gặp (PHẢI tránh) | ✅ ĐÚNG |
|---|---|
| `<ruby>言<rt>い</rt></っ` (thiếu `</ruby>`, dính chữ kế) | `<ruby>言<rt>い</rt></ruby>った` |
| `<ruby>報告<rt>ほうこく</rt></ruby>済<rt>ず</rt></ruby>` (chữ 済 thiếu `<ruby>` mở) | `<ruby>報告<rt>ほうこく</rt></ruby><ruby>済<rt>ず</rt></ruby>` |
| `<ruby>環境<rt>...</rt></ruby>要因<rt>...</rt></ruby>` (要因 thiếu `<ruby>`) | tách: `<ruby>環境<rt>...</rt></ruby><ruby>要因<rt>...</rt></ruby>` |
| `<ruby>作<rt>つく</rt></ruby)り` (`</ruby>` nhầm thành `</ruby)`) | `<ruby>作<rt>つく</rt></ruby>り` |
| `<ruby>言<rt>い</rt></ruby った` (`</ruby>` thừa space) | `<ruby>言<rt>い</rt></ruby>った` |
| `<ruby>すこ<rt>すこ</rt></ruby>` (bọc ruby lên KANA thuần) | `すこ` (chỉ bọc KANJI, không bọc hiragana/katakana) |
| `<ruby>10年<rt>...</rt></ruby>` rồi sửa số mà quên kana | sửa số phải sửa kana khớp: `7年` → `<ruby>7年<rt>ななねん</rt></ruby>` |

**BẮT BUỘC verify sau mỗi file**: số `<ruby>` == số `</ruby>` (đếm). Số `年月日時` bọc ruby, KHÔNG bọc chữ số. Main Claude tự gõ ruby rất dễ sai → ưu tiên giao subagent viết + TỰ ĐẾM lại độc lập (xem mục Constraints).

#### F2. Quy tắc nội dung

| ✅ DO | ❌ DON'T |
|-------|---------|
| Dùng furigana với `<ruby>漢字<rt>かんじ</rt></ruby>` | Box-drawing chars `━`, `─`, `═`, `├──`, `└──`, `│` |
| Bảng dialogue 2 cột: `\| Nhân vật \| JP<br>*(VN)* \|` | Blockquote dialogue format `> **Nhân vật**: ...` |
| Stage direction NGẮN trong `()` có chừng mực | Mô tả hành động dài dòng kiểu tiểu thuyết |
| Ví dụ thực tế (đời sống, công việc) | Bullet point liệt kê văn hoá / Lý thuyết block >200 từ |
| Ký tự lẫn: chỉ tiếng Nhật/Việt/Anh | Lẫn ký tự Hàn 한글 (vd 주임/チュニム thay vì 主任) — LỖI đã xảy ra |

#### G. Cấu trúc tiêu chuẩn

```markdown
# T<NN> <Tên chương> (<Tên Nhật>)

> **Mục tiêu nhân vật**: <1-2 câu — Hoa muốn đạt gì trong chương này>

---

## Bối cảnh

<2-3 đoạn ngắn — chỉ context cần thiết, không spoiler>

---

## Tình huống 1 — <Tên tình huống + thời gian>

<1-2 câu plain text setup tình huống — vd "Sáng thứ 2 tại văn phòng Suzuki.">

| Nhân vật | Lời thoại |
|---|---|
| Suzuki | <ruby>日本語<rt>にほんご</rt></ruby>のセリフ。<br>*(Tiếng Việt dịch.)* |
| Hoa | <ruby>返事<rt>へんじ</rt></ruby>。<br>*(Câu trả lời.)* |
| ... | ... |

(8-15 lượt nói trong bảng)

### 💡 Note nhỏ (optional)

<1-2 câu giải thích nuance — KHÔNG dài hơn>

---

## Tình huống 2 — ...

(repeat 8-15 tình huống)

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
1. books/<book>/<folder>/<...>_HoiThoai.md (<X> từ, <Y> tình huống)
2. ...

Tổng <Z> từ, ~<W> dialogue turns.
Density check: ≥90% hội thoại tiếng Nhật nghiệp vụ, ≤1 tình huống tiếng Việt ✓
Ruby check: <ruby> == </ruby>, không box-drawing ✓

Chạy /book-next-lite <book> để sang Stage 5 (Review JP/VN).
```

## Spawn subagent an toàn (khi viết nhiều chương song song)

Dự án lớn (vd series nhiều sách) → spawn nhiều subagent. Bài học bắt buộc:

1. **Chốt tuyến phụ với user TRƯỚC khi viết.** Tuyến nhân vật phụ (gia đình/hôn nhân/con cái/mặt tối...) PHẢI hỏi user chốt trước. Sai ngầm định (vd tự cho nhân vật lấy chồng) → viết lại cả loạt chương. Khớp tuổi nhân vật theo timeline (TTS sang ~20-24t, +N năm → tuổi tương ứng).
2. **Viết LẠI chương = phải XÓA file cũ.** Subagent viết file mới KHÔNG tự xóa file cũ → 2 file song song cùng folder, tuyến sai vẫn tồn tại. Sau khi subagent xong: verify mỗi folder chỉ 1 file `.md`, xóa file cũ thủ công.
3. **KHÔNG tin subagent tự báo "OK".** Subagent hay báo "ruby cân bằng / đã sửa hết" nhưng thực tế còn lỗi. Main Claude PHẢI verify ĐỘC LẬP bằng Bash sau mỗi batch: đếm `<ruby>`==`</ruby>`, grep `</ruby [^>]`, grep box-drawing, grep tuyến sai, grep mốc năm/tuổi mâu thuẫn.
4. **Cung cấp 1 chương mẫu SẠCH** (đã review) cho subagent đọc làm chuẩn — KHÔNG để subagent tự suy format.
5. Chương nặng cảm xúc (看取り/tử vong/chia ly) → ghi rõ "viết TIẾT CHẾ, không bi lụy, không miêu tả trực diện".

## Constraints

- **Resume-friendly**: Save state sau mỗi module
- **Density**: ≥ 90% dialogue tiếng Nhật nghiệp vụ, ≤1 tình huống tiếng Việt/chương — hard rule
- **Không quá ngắn**: <2500 từ/chương = thiếu story
- **Không quá dài**: >7000 từ/chương = chia thành 2 phần
- **Furigana** bắt buộc cho Kanji với target audience N4-N3; ruby ĐÚNG cú pháp (mục F)
- **KHÔNG box-drawing chars**, **KHÔNG lẫn ký tự Hàn**
- **Verify độc lập sau mỗi batch subagent** (ruby balance / tuyến phụ / timeline / box-drawing)

## Quality checklist (tự check sau khi viết mỗi file)

- [ ] Có heading H1 với title chương
- [ ] Có "Mục tiêu nhân vật" trong blockquote ở đầu (focus narrative, không phải learning objective)
- [ ] Có ít nhất 8 tình huống (sách nghề nghiệp: ~12 tình huống)
- [ ] Mỗi tình huống có ≥ 5 lượt dialogue **trong bảng 2 cột**
- [ ] **≥90% lượt thoại là hội thoại tiếng Nhật nghiệp vụ; ≤1 tình huống tiếng Việt thuần**
- [ ] Từ chuyên môn xuất hiện trong ngữ cảnh hội thoại (hỏi-đáp), không liệt kê khô
- [ ] Có Vocab + Bí quyết + Câu chốt cuối chương
- [ ] Cast nhất quán (cross-check chương trước); tuổi nhân vật khớp timeline; tuyến phụ đã chốt với user
- [ ] Không có box-drawing chars; không lẫn ký tự Hàn
- [ ] **RUBY: đếm `<ruby>` == `</ruby>`; không `</ruby ` thừa space; không bọc ruby lên kana thuần** (mục F)
- [ ] Furigana đúng cách đọc cho kanji khó
- [ ] Mỗi folder chỉ 1 file `.md` (nếu viết lại — đã xóa file cũ)
- [ ] Không có "TODO" / placeholder

## Failure handling

- Module thiếu material → spawn lại `book-researcher` scope hẹp, update draft, viết lại
- Hết context (file quá dài) → chia chương thành 2 phần (`<...>_HoiThoai_1.md` + `<...>_HoiThoai_2.md`)
- Density < 80% → refactor: chuyển lý thuyết thành dialogue sempai-kohai

## Tham khảo

- **Sách mẫu CHUẨN cho sách nghề nghiệp** (đã review 3 bước, ruby sạch, ≥90% hội thoại nghiệp vụ tiếng Nhật, ≤1 tình huống tiếng Việt/chương, có stage direction ngắn hợp lý): `books/27_kaigo/t01_rainichi_shock/t01_RainichiShock_HoiThoai.md` — dùng làm chương mẫu đưa cho subagent.
- Series Kaigo `books/27_kaigo`..`books/32_kaigo_senior3` — tham chiếu story arc nghề nghiệp dài (6 sách / 1 nhân vật / nhiều năm, độc thân tập trung nghề).
- `books/09_real_dialogues/` — dialogue-driven format tham khảo thêm.
- Sách 11 (`*_LyThuyet.md`) — KHÔNG dùng (format full pipeline lý thuyết, không phải dialogue-pure).
- Template: `templates/chapter_template_dialogue.md`
