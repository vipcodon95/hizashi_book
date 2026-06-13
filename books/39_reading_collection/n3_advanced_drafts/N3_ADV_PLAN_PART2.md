# N3_ADVANCED_PLAN_PART2 — 22 bài cuối (R_0319→R_0340)

> Tiếp nối 78 bài đã có (R_0174→R_0251). ID R_0319→R_0340 là tạm.

## Spec cấp 6 (N3_advanced)
- level=6, level_label="N3_advanced", jlpt="N3"
- sentence_count: **14-18** = len(process)
- comprehension: **4 câu** (1 sự thật + 1 nguyên nhân + 1 phân tích + 1 ý chính/suy luận sâu)
- vocabulary: 8-12 từ
- 4 đáp án/câu, 1 is_correct
- text viết LIỀN
- Guide cấp 6: → + 🔒 đóng gói + ⚠️ bẫy + 💡 insight (CHO PHÉP, KHÁC cấp 5). KHÔNG dùng 🎯.

## Topic blacklist
Đã dùng 111 chủ đề ở phase trước. Mọi chủ đề mới phải khác 111 cũ + 67 N3_basic mới.

## 8 BATCH × 3 bài (BATCH cuối 1 bài) — 22 bài

### BATCH 1 — R_0319-0321
- **R_0319** government / "chính sách an sinh xã hội" — 一方だ, に違いない, からには
- **R_0320** business / "đạo đức doanh nghiệp" — に反して, 反面, ないわけにはいかない
- **R_0321** technology / "blockchain và tiền điện tử" — ものか, てからでないと, わけがない

### BATCH 2 — R_0322-0324
- **R_0322** philosophy / "ý nghĩa cuộc sống" — のではないだろうか, ばかりでなく, ないことはない
- **R_0323** social / "tình trạng cô lập (hikikomori)" — ところだった, てたまらない, てならない
- **R_0324** education / "phân biệt giàu nghèo trong giáo dục" — に反して, くせに, からといって

### BATCH 3 — R_0325-0327
- **R_0325** environment / "ô nhiễm vi nhựa biển" — おそれがある, ないわけにはいかない, きる
- **R_0326** workplace / "harassment công sở" — もの／もん, ないことはない, わけがない
- **R_0327** psychology / "FOMO và mạng xã hội" — てたまらない, ものだから, さえ

### BATCH 4 — R_0328-0330
- **R_0328** legal / "luật bảo vệ dữ liệu cá nhân" — に反して, にもとづいて, からには
- **R_0329** culture / "văn hóa từ chối tế nhị" — というのは, とは, ないわけにはいかない
- **R_0330** science / "biến đổi khí hậu cực đoan" — 一方だ, おそれがある, つつある (cho phép tự bổ sung tự nhiên)

### BATCH 5 — R_0331-0333
- **R_0331** technology / "deep fake và sự thật" — のではないだろうか, わけがない, からといって
- **R_0332** business / "khởi nghiệp xã hội" — からには, ばかりでなく, にもとづいて
- **R_0333** art / "thư pháp và tâm hồn" — をこめて, に対し, とともに

### BATCH 6 — R_0334-0336
- **R_0334** society / "đa văn hóa nơi làm việc" — に対し, 反面, わけにはいかない
- **R_0335** education / "giáo dục STEM" — を通じて, にともなって, からこそ (cho phép)
- **R_0336** health / "sức khỏe răng miệng người già" — おそれがある, がち, わけだ

### BATCH 7 — R_0337-0339
- **R_0337** economy / "lạm phát và đời sống" — 一方だ, にともなって, ものだから
- **R_0338** psychology / "tâm lý học hành vi" — に違いない, わけがない, からこそ
- **R_0339** social / "động vật hoang dã đô thị" — つつある, おそれがある, ものか

### BATCH 8 — R_0340 (1 bài cuối)
- **R_0340** future / "trí tuệ nhân tạo và công việc" — 一方だ, にともなって, わけにはいかない

---

## Hướng dẫn agent
Mỗi agent xử lý 1 BATCH (3 bài). Đọc:
1. `../READING_SPEC.md`
2. Mẫu cấp 6: `../n3_advanced_drafts/batch_0249_0251.json` (R_0251 格差社会の課題)

Output: `n3_advanced_drafts/batch_NNNN_NNNN.json`

Self-check:
- sentence_count==len(process) ∈ [14,18]
- comprehension==4 (4 đáp án/câu, 1 is_correct)
- vocab ∈ [8,12]
- grammar trọng tâm xuất hiện literal trong text
- Cấp 6 ĐƯỢC dùng → 🔒 ⚠️ 💡, **KHÔNG dùng 🎯** (cho cấp 9-10)
- Tiếng Việt CÓ DẤU
