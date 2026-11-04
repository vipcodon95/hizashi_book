# Stage 05–08 (gộp) — Rà soát và hoàn thiện A1–A2 (sách 56, 57)

> Ngày 04/11/2026. Bài đọc A1–A2 ngắn nên gộp stage 05 (soát sự thật), 06 (nhất quán) và 07 (hội đồng) vào một agent Sonnet rà cả hai cuốn. Agent chỉ báo cáo.
> Main Claude kiểm từng mục, sửa một lượt rồi chốt stage 08. Báo cáo này dùng chung cho cả hai cuốn.

## Kết quả

- **Không có lỗi 🔴.** Agent đã kiểm và thấy đúng:
  - mọi câu có đúng một đáp án và có căn cứ trong bài;
  - các phép tính giá và giờ đều khớp;
  - thứ–ngày khớp lịch năm 2023–2024;
  - tuổi và lịch của nhân vật khớp `characters.md`;
  - số liệu thật (Jane Goodall, Giant Dipper, cá voi xám, luật mũ bảo hiểm…) đúng;
  - không vi phạm vùng cấm.

## Đã sửa (🟡 có căn cứ rõ)

| Chỗ | Sửa |
|---|---|
| A2 u04 | "a nice house costs as much as a small room here" nói quá. Đổi thành "a nice house there costs about as much as a small apartment here", vẫn giữ cấu trúc `as much as` |
| A2 u07 q9 | Bỏ ý "Trevor mười hai tuổi" (tuổi chưa chốt). Câu hỏi đổi thành "children from six to twelve" |
| A1 u16 | San Diego → Monterey thực tế mất hơn 7 tiếng. Đổi "almost seven hours" thành "more than seven hours" ở bài, phương án và `characters.md` |
| A1 u01 q5 | Phương án nhiễu "bye" có thể bị cho là đúng, vì Harriet nói "See you later". Đổi thành "good night" |
| A1 u06 | Bài viết "under the kitchen table" cho khớp với đáp án q4 |
| A1 mock1 q4 | Đáp án cũ "the number 7 bus stops in front of the bank" không có căn cứ. Đổi thành "You must walk to another bus stop this week" và sửa giải thích |

Các thư mục đã sửa đều qua `verify_en_chapter.py` ✅.

## Ghi nhận, không sửa

- **A2 u01:** câu "In 2025, Jane Goodall died" đúng sự thật. Bài đọc đứng độc lập nên không cần khớp với mốc năm của truyện.
- **A1 mock1 q20:** suy từ "summer" ra "August" hơi dễ. Đáp án vẫn đúng.
- **A1 mock1:** "cafe" chưa thống nhất với "café".
- **A2 u16:** câu "crowded with teenagers" là lời nhân vật nói về một chuyến xe cụ thể, giữ nguyên.
- **Độ dài đáp án:** đáp án đúng là phương án dài nhất ở 61% số câu A2 và 46% số câu A1, nên người học dễ đoán mò. Chưa cân lại, để đợt sau.
