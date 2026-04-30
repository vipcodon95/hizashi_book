# N2_BASIC PILOT — 10 bài thử (R_0341→R_0350)

> Pilot test 10 bài cấp 7 trước khi viết full 120 bài. Mục đích: đánh giá chất lượng draft + style guide cấp 7.

## Spec cấp 7 (KHÁC cấp 6 N3_advanced)

| Field | Cấp 7 (N2_basic) |
|-------|------------------|
| level | 7 |
| level_label | "N2_basic" |
| jlpt | "N2" |
| sentence_count | **15-20** = len(process) |
| comprehension | **4 câu** (1 sự thật + 1 nguyên nhân + 1 phân tích + 1 ý chính) |
| vocabulary | **10-15** từ |
| Nội dung | Luận văn, phân tích xã hội, văn phong formal |
| guide style | → + 🔒 + ⚠️ + 💡 + phân tích văn học. **KHÔNG dùng 🎯** (cấp 9-10) |

**File output**: `n2_basic_drafts/batch_NNNN_NNNN.json` (3-4 bài/file)

## Bám sát grammar master DB

110 grammar N2 trong `n2_grammar_master.json`. Pilot 10 bài chọn 30 grammar đầu (mỗi bài 3 grammar trọng tâm).

## 10 bài pilot — chia 4 BATCH

### BATCH 1 — R_0341, R_0342, R_0343
- **R_0341** society / "tỷ lệ sinh giảm" — title: 少子化問題の現状
  - grammar: ～ことだ, ～ことだから, ～ばかりか
- **R_0342** philosophy / "ý nghĩa lao động" — title: 労働の意義を考える
  - grammar: ～ものの, ～ことなく, ～以上は
- **R_0343** technology / "ChatGPT và sáng tạo" — title: 生成AIと創造性
  - grammar: ～ばかりでなく, ～上に, ～ものだ

### BATCH 2 — R_0344, R_0345, R_0346
- **R_0344** education / "giáo dục bắt buộc và bất bình đẳng" — title: 義務教育の格差
  - grammar: ～ばかりだ, ～でも, ～ながらも
- **R_0345** economy / "kinh tế tuần hoàn" — title: 循環型経済の必要性
  - grammar: ～に応じて, ～にそって, ～をめぐって
- **R_0346** health / "tâm thần học hiện đại" — title: 現代精神医学の課題
  - grammar: ～てしょうがない, ～に相違ない, ～得る

### BATCH 3 — R_0347, R_0348, R_0349
- **R_0347** culture / "wabi-sabi trong nghệ thuật" — title: 侘び寂びの美学
  - grammar: ～がたい, ～一方で, ～といった
- **R_0348** environment / "đa dạng sinh học" — title: 生物多様性の保全
  - grammar: ～ぬきで, ～につき, ～やら～やら
- **R_0349** sociology / "thế hệ Z và giá trị mới" — title: Z世代の価値観
  - grammar: ～ことに, ～ないものか, ～さえ...ば

### BATCH 4 — R_0350 (1 bài cuối pilot)
- **R_0350** politics / "vai trò truyền thông trong dân chủ" — title: 民主主義におけるメディアの役割
  - grammar: ～を...として, ～までもない (đặt sau lookup), ～上で

---

## Hướng dẫn agent

Mỗi agent xử lý 1 BATCH (3-4 bài). Đọc:
1. `../READING_SPEC.md`
2. Mẫu cấp 6 (gần nhất với cấp 7): `../n3_advanced_drafts/batch_0249_0251.json` — học style guide có 🔒 ⚠️ 💡
3. Plan này (chỉ block của BATCH mình)

Output: `n2_basic_drafts/batch_NNNN_NNNN.json`

### Self-check
- sentence_count==len(process) ∈ [15,20]
- comprehension==4 (4 đáp án/câu, 1 is_correct)
- vocab ∈ [10,15]
- 3 grammar trọng tâm xuất hiện literal trong text
- Cấp 7 ĐƯỢC dùng → 🔒 ⚠️ 💡 + phân tích văn học (sâu hơn cấp 6). **KHÔNG dùng 🎯**.
- Tiếng Việt CÓ DẤU
- Mỗi process[i].sentence là copy literal từ text
