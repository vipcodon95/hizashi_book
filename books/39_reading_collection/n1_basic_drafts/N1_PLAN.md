# N1 PLAN — 60 basic + 60 advanced (R_0521→R_0640)

## Spec cấp 9 (N1)

| Field | Cấp 9 (cả basic & advanced) |
|-------|---------|
| level | 9 |
| level_label | "N1" |
| jlpt | "N1" |
| sentence_count | **20-25** = len(process) |
| comprehension | **5 câu** (1 sự thật + 1 suy luận + 1 phân tích + 1 ẩn ý + 1 ý tác giả) |
| vocabulary | **12-20** từ |
| Văn phong basic | Văn học, nghiên cứu, triết lý — sâu nhưng còn cấu trúc rõ |
| Văn phong advanced | Văn học cổ điển, triết học hậu hiện đại, văn nghị luận formal — phức tạp hơn, nhiều câu phức |
| guide style | → + 🔒 + ⚠️ + 💡 + 🎯 (CHO PHÉP từ cấp 9) — phân tích ý tác giả, kỹ thuật văn học sâu (擬人法/比喩/暗喩/暗示) |

**File output**: `n1_basic_drafts/batch_NNNN_NNNN.json` (R_0521-0580) hoặc `n1_advanced_drafts/...` (R_0581-0640)

## Phân bổ topic

### N1_BASIC R_0521-R_0580 (60 bài) — văn học/triết học/khoa học hiện đại
1. R_0521 literature - Tanizaki và 痴人の愛
2. R_0522 philosophy - Karatani Kojin và logic
3. R_0523 economy - Piketty trong bối cảnh Nhật
4. R_0524 art - Nara Yoshitomo và tranh trẻ em
5. R_0525 society - lao động foreign worker
6. R_0526 culture - shamisen và kế thừa
7. R_0527 history - Meiji Restoration di sản
8. R_0528 psychology - Freud trong bối cảnh Nhật
9. R_0529 environment - Fukushima sau 311
10. R_0530 technology - quantum computing
11-60: tiếp tục các topic khác (xem phần spawn)

### N1_ADVANCED R_0581-R_0640 (60 bài) — cao cấp hơn
1. R_0581 literature - Soseki こころ
2. R_0582 literature - Akutagawa 地獄変
3. R_0583 philosophy - Nishida 善の研究
4. R_0584 art - kabuki tâm linh
5. R_0585 culture - Wabi/sabi/yugen tổng quát
6. R_0586-0640: classical literature, philosophy advanced, etc.

## Workflow
- Spawn 4 agent/đợt × 1 bài/agent
- Auto-fix sau mỗi đợt
- Mỗi prompt phải nhấn: **sc 20-25 BẮT BUỘC**, vocab 12-20, comp=5, guide CHO PHÉP 🎯 (cấp 9)
