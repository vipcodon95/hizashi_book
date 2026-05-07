# NATIVE PLAN — 30 basic + 30 advanced (R_0641→R_0700)

## Spec cấp 10 (Native)

| Field | Cấp 10 |
|-------|---------|
| level | 10 |
| level_label | "native" |
| jlpt | "Native" |
| sentence_count | **20-30** = len(process) |
| comprehension | **5 câu** (sự thật + suy luận + phân tích + ẩn ý + ý tác giả) |
| vocabulary | **15-25** từ |
| Văn phong basic | Tiểu thuyết, báo chí thật, 口語/文語 mix |
| Văn phong advanced | Cao cấp hơn — 古文 mixed, văn nghiên cứu, 評論 báo chí |
| guide style | → + 🔒 + ⚠️ + 💡 + 🎯 + phân tích văn học cao nhất |

## Phân bổ 30 BASIC (R_0641-R_0670)
1. R_0641 literature - tiểu thuyết Murakami trích đoạn
2. R_0642 newspaper - bài 朝日新聞 chính trị
3. R_0643 essay - エッセイ Tanikawa Shuntaro
4. R_0644 social - báo cáo NHK xã hội
5. R_0645 culture - tạp chí 文藝春秋 văn hoá
6. R_0646 literature - Yoshimoto Banana trích
7. R_0647 history - Bài học lịch sử mở rộng
8. R_0648 art - phê bình mỹ thuật
9. R_0649 economy - phân tích Nikkei
10. R_0650 science - bài khoa học phổ thông

(11-30: tiếp tục literature / journalism / essay / criticism)

## Phân bổ 30 ADVANCED (R_0671-R_0700)
1. R_0671 classical - Genji Monogatari trích cổ văn
2. R_0672 philosophy - Nishida nguyên bản
3. R_0673 literature - Soseki nguyên tác
4. R_0674 newspaper - 社説 Asahi xã luận
5. R_0675 academic - 論文 nhân văn

(6-30: tiếp tục classical/academic/criticism cao cấp)

## Workflow
- 4 agent/đợt × 1 bài/agent
- Auto-fix sau mỗi đợt
- 30 basic = 8 đợt, 30 advanced = 8 đợt
- File output: `native_basic_drafts/batch_NNNN_NNNN.json` hoặc `native_advanced_drafts/...`
