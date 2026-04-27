# Hizashi Sách 02 — Điện thoại Công Việc / 電話応対

*Sách song ngữ Việt-Nhật cho người Việt làm với khách hàng Nhật, phục vụ luyện BJT.*

---

## Cấu trúc thư mục

```
books/02_phone/
├── README.md                    ← file này
├── meta/
│   ├── STATUS.md               ← tiến độ + thống kê
│   └── mục_lục.md              ← outline 60 rules
├── nội_dung/
│   ├── _front_matter.md        ← lời nói đầu + cast + cách dùng
│   ├── _schema/
│   │   └── rule_conversation.schema.json   ← JSON schema v2
│   ├── voice_profiles.json     ← 11 nhân vật + voice hint
│   ├── phần_I/                 ← 10 rules (rule_01 → rule_10)
│   │   └── rule_NN_<slug>/
│   │       ├── rule.md         ← bài học song ngữ
│   │       └── conversation.json ← data hội thoại + BJT
│   ├── phần_II/                ← 13 rules
│   ├── phần_III/               ← 12 rules
│   ├── phần_IV/                ← 13 rules
│   ├── phần_V/                 ← 12 rules
│   └── phụ_lục/
│       ├── phụ_lục_A_script_template.md  ← gen từ key_phrases
│       ├── phụ_lục_B_vocab.md           ← gen từ vocab tables
│       └── phụ_lục_C_bjt_practice.md    ← gen từ bjt_practice
├── scripts/
│   ├── build_appendices.py     ← gen 3 phụ lục từ JSON
│   └── build_book.sh           ← concat → docx/html/epub
└── output/                     ← kết quả pandoc (sau khi chạy build)
    ├── Hizashi_phone_v1.2.docx
    ├── Hizashi_phone_v1.2.html
    └── Hizashi_phone_v1.2.epub
```

---

## Quy ước

### Mỗi rule = 1 thư mục con

`rule_NN_<slug_japanese>/` chứa **đúng 2 file**:

1. `rule.md` — bài học song ngữ Việt-Nhật trong 1 file.
2. `conversation.json` — data đầy đủ (line_id, speaker, gender, tone, BJT) cho TTS pipeline.

Cả hai phải có cùng `rule_id` (vd `rule_15`) để map nhau.

### Rule ID

Format: `rule_NN` (NN từ `01` → `60`).

### Speaker keys

Map cố định trong `voice_profiles.json`:

```
zun, fuon, tuan_leader, loan_keiri, linh, hai, ha_cto,
matsumoto, reception_hakuo, nakamura_cfo, unknown_caller
```

---

## Build appendices

```bash
cd books/02_phone
python3 scripts/build_appendices.py
```

Script đọc 60 conversation.json + rule.md → ghi 3 phụ lục vào `nội_dung/phụ_lục/`.

## Build book (docx/html/epub)

```bash
cd books/02_phone
bash scripts/build_book.sh
```

Yêu cầu: `pandoc` được cài. Output ra `output/Hizashi_phone_v1.2.{docx,html,epub}`.

---

## Schema validation

Tất cả 60 file `conversation.json` phải pass schema:

```bash
cd books/02_phone
python3 -c "
import json
from jsonschema import validate
schema = json.load(open('nội_dung/_schema/rule_conversation.schema.json'))
import glob
for f in sorted(glob.glob('nội_dung/phần_*/rule_*/conversation.json')):
    data = json.load(open(f))
    try:
        validate(data, schema)
        print(f'OK  {f}')
    except Exception as e:
        print(f'ERR {f}: {e.message}')
"
```

---

## Stats

- **60 rules** × 2 file = **120 file** content
- **2,443 dòng** rule.md tổng
- **3,405 dòng** conversation.json tổng
- **~197 từ vựng** unique
- **~60 BJT questions** (J5 → J1+)
- **11 speakers** với voice profile riêng

---

## Roadmap

- ✅ v1.0 — 60 rules + 3 phụ lục + front matter (hoàn thành).
- ✅ v1.1 — Sau review chuyên gia (JP keigo + VN naturalness + terminology). Xem `meta/REVIEW_FINDINGS_v1.1.md`.
- ✅ v1.2 — Sau native JP review (敬語 P0/P1 fix). Sửa Rule 39, 18, 19, 23, 50 BJT keigo lỗi + 21 P1/P2 polish.
- 🔜 v1.1 — Native review JP cho keigo.
- 🔜 v1.2 — TTS audio cho toàn bộ 60 rules (gọi API + ghép theo `pause_after_ms`).
- 🔜 v2.0 — Web app interactive: xem rule + nghe audio + làm BJT inline.

---

*Hizashi Teams. 2026. Bản 1.1.*
