# 📋 BÁO CÁO TỔNG: Audit từ tiếng Anh không tự nhiên — toàn bộ books/

> **Phương pháp**: Subagent Sonnet 4.6 ĐỌC & PHÂN TÍCH NGỮ CẢNH nội dung thật từng file (không dùng tool đếm từ máy móc).
> **Phạm vi**: 26 sách (trừ `reading_collection` đã làm). Đã loại: `output/`, `_pipeline/`, `source/`, `scripts/`, `_schema/`.
> **Tiêu chí**: chỉ flag từ Anh KHÔNG tự nhiên/gượng ép. GIỮ: email/deadline/OK/meeting... (chuẩn công sở VN-Nhật), tên riêng, Romaji Nhật, brand/app, viết tắt kỹ thuật, JSON key/schema.
> **Trạng thái**: CHỈ BÁO CÁO — chưa sửa file nào. Chi tiết từng sách ở `<sách>/_pipeline/english_audit.md`.

## ✅ Xác nhận quan trọng (anh lưu ý JSON)
**KHÔNG sách nào flag nhầm JSON key/schema.** Subagent các sách có JSON (01-11) đều xác nhận: 100% flag là VALUE nội dung tiếng Việt, không đụng key như `question_jp`, `speaker`, `gender`, `choices`, `text_translation`, value enum `male/female/formal/casual`...

## 📊 Tổng hợp theo sách

| Sách | Flag thực sự | Mức độ | Điểm chính |
|------|-------------:|--------|------------|
| 01_email | ~14 | Thấp | CTA, follow up, scope; email mẫu phụ_lục_A có deliver/update/Report |
| 02_phone | ~20 | Thấp | follow-up, self-diagnostic, tiêu đề rule pha Anh |
| 03_meeting | ~62 | **Cao** | junior/senior (20+), align (8), summary sai từ loại |
| 04_horenso | ~24 | TB | critical, Best Practice, flow/trigger; rule.md khá sạch |
| 05_presentation | ~17 | Thấp | handout, rubric (cần thêm chú VN lần đầu); typo "sammary" |
| 06_negotiation | ~52 | **Cao** | tone, leverage, bridge, reframe, acknowledge (systemic) |
| 07_visit_card | ~28 | TB | signal (8+), double-check, Self-improve, survival kit |
| 08_smalltalk | ~88 | **Rất cao** | bridge(20), pattern(18), fact(14), flow(12) — lớp giải thích sư phạm |
| 09_real_dialogues | ~29 | TB | Bí quyết/Recap xen nhiều từ Anh (overdo, debrief, pivot...) |
| 10_business_japanese | ~27 | TB | subject/object (11), stem, passive — thuật ngữ ngữ pháp |
| 11_jisshusei_shokuhin | ~21 | TB | "Polite" nhãn bảng keigo (8), checklist |
| 12_hoa_year2 | ~9 | Thấp | Apply, Submit, Pass, Networking, Case study |
| 13_hoa_year3 | ~14 | TB | **1 P0** (t06 factor/stay/go); double track, Deadline, Audit |
| 14_thai_year1 | ~2 | Sạch | chỉ Tier-2/mirror finish (P2) |
| 15_thai_year2 | ~5 | Sạch | chủ yếu Scene/Vocab systemic |
| 16_thai_year3 | ~2 | Sạch | Build lại, N2 prep |
| 17_thai_year4 | ~2 | Sạch | designer, Vocab |
| 18_thai_year5 | ~18 | TB | Defect, emergency huddle, day 1..7, closure, cohort |
| 19_dai_year1 | ~20 | TB | Apply/Tour/Unpack ký túc, Brainstorm, research, Achievements |
| 20_dai_year2 | ~17 | TB | cohort (lặp), Train, prep, trade-off, Brainstorm |
| 21_dai_daigaku_year1 | ~290* | systemic | Scene(~290)+Vocab(36); lỗi riêng ít (Reflection, ROI) |
| 22_dai_daigaku_year2 | systemic | systemic | Scene+Vocab; closure |
| 23_dai_daigaku_year3 | systemic | systemic | Scene+Vocab; kickoff, EUREKA, Cost projection |
| 24_dai_daigaku_year4 | ~98* | systemic | Scene+Vocab + Bí quyết/Quote toàn tiếng Anh |
| 25_dai_brse_year1 | ~96* | systemic | Scene+Vocab + Bí quyết/Quote tiếng Anh (IT giữ thuật ngữ) |
| 26_dai_brse_year2 | ~98* | systemic | + Vocab nghĩa: trimester/postpartum → tam cá nguyệt/hậu sản |

\* = chủ yếu là pattern systemic lặp (Scene/Vocab), không phải lỗi riêng lẻ.

## 🔑 4 QUYẾT ĐỊNH LỚN CẦN ANH DUYỆT (ảnh hưởng hàng trăm chỗ)

### Q1. `## Scene X` → `## Cảnh X`?
Pattern toàn series sách 12-26 (~hàng trăm heading). Subagent khuyến nghị: có thể đổi đồng loạt cho thuần Việt, NHƯNG mất tính nhận diện format. **Anh quyết: đổi hết / giữ hết.**

### Q2. `## Vocab` / `## Vocab tóm tắt` → `## Từ vựng`?
Tiêu đề section tiếng Việt nhưng dùng "Vocab". Xuất hiện ~tất cả sách dialogue. Đổi đồng loạt dễ (script). **Khuyến nghị: ĐỔI** (heading sách giáo trình VN không nên tiếng Anh).

### Q3. `Cast` (speaker label) → `Mọi người`/`Cả nhóm`?
Khi nhiều nhân vật cùng phản ứng. Sách 12, 18, 24-26. **Khuyến nghị: ĐỔI.**

### Q4. Sách 24-26: Bullet `## Bí quyết chương` + Quote cuối chương viết TOÀN tiếng Anh
~36 file. Có thể là meta-note cố ý. **Anh quyết: dịch sang Việt / giữ như ghi chú / cho phép mix.**

## 🎯 Đề xuất thứ tự xử lý (sau khi anh duyệt)
1. **Quyết 4 câu Q1-Q4** trước (ảnh hưởng lớn nhất)
2. Sửa **P0** (sách 13/t06 factor/stay/go — sai nghĩa) ngay
3. Nhóm **systemic dễ** (Vocab→Từ vựng, Cast→Mọi người) bằng script có kiểm soát
4. Nhóm **sách cao** (03, 06, 08) — cần subagent sửa từng file theo ngữ cảnh, em review diff
5. Nhóm còn lại theo độ ưu tiên

## ⚠️ Lưu ý
- 2 subagent Batch 1 (sách 12-14, 24-26) ban đầu thiếu Write tool → em đã ghi lại thủ công từ kết quả phân tích của họ. Nội dung phân tích đầy đủ, nhưng dòng/câu cụ thể ở các sách này kém chi tiết hơn nhóm 21-23 (subagent ghi trực tiếp). Nếu anh muốn, em chạy lại 12-14, 24-26 với subagent có Write để báo cáo chi tiết hơn.
- Sách 03, 06, 08 nhiều flag — phần lớn ở lớp giải thích sư phạm tiếng Việt (không phải hội thoại tiếng Nhật).
