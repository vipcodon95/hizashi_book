# Hizashi — Điện thoại Công Việc / 電話応対

## Sách song ngữ Việt-Nhật cho người Việt làm với khách hàng Nhật

*Hizashi Teams. 2026. Phiên bản 1.1 (sau review chuyên gia JP/VN/terminology).*

---

## 🎯 Đối tượng / 対象読者

**Tiếng Việt:**

Sách này dành cho người Việt đang làm công việc cần tiếp xúc bằng điện thoại (受電 và 発信) với khách hàng, đối tác hoặc đồng nghiệp Nhật. Đặc biệt phù hợp với:

- Nhân viên onsite hoặc offshore làm IT, BD, kế toán cho công ty Nhật.
- Người chuẩn bị thi **BJT (Business Japanese Test)** ở các level J3 → J2 → J1.
- Người đã học tiếng Nhật cơ bản (N3 trở lên) muốn nâng kỹ năng giao tiếp business.

**日本語:**

本書は、日本人顧客・取引先・同僚と電話でやり取りする必要があるベトナム人ビジネスパーソン向けです。特に：

- 日系IT企業のオンサイト／オフショア社員、BD、経理担当
- **BJT (ビジネス日本語能力テスト)** J3 → J2 → J1 受験準備中の方
- 日本語基礎 (N3 以上) を持ち、ビジネス会話力を伸ばしたい方

---

## 📚 Cấu trúc / 構成

Sách gồm **60 rules**, chia thành **5 phần**:

| Phần | Tên | 内容 | Số rule |
|------|-----|------|---------|
| **I** | Nền tảng trước nhấc máy | 受電前の基本姿勢 | 10 |
| **II** | Nhận điện thoại | 受電の流れ | 13 |
| **III** | Gọi điện thoại đi | 発信の流れ | 12 |
| **IV** | Tình huống khó | 困難な場面 | 13 |
| **V** | Voicemail, Online & Best Practice | 留守電・オンライン・ベストプラクティス | 12 |

**Mỗi rule có:**

- 📄 `rule.md` — bài học song ngữ với hội thoại minh họa, câu chốt, vocab.
- 🎙️ `conversation.json` — data hội thoại đầy đủ (line_id, speaker, gender, tone) cho **TTS audio pipeline**.
- 🧪 BJT practice — câu hỏi trắc nghiệm theo skill (語彙, 表現読解, 場面把握, 聴解, 応答).

**Phụ lục:**

- **Phụ lục A** — Script template tổng hợp (key_phrases tất cả 60 rules).
- **Phụ lục B** — Từ vựng tổng hợp (~197 từ unique).
- **Phụ lục C** — BJT practice tổng hợp (60 câu, group theo level).

---

## 🎬 Cast / 登場人物

Sách 02 dùng cùng cast với sách 01 (Email), bổ sung thêm 3 vai cho điện thoại:

### Công ty Thiên Phát / ティエンファット社 (HCMC, IT outsourcing)

| Tên VN | 名前 (JP) | Vai | Tính cách |
|--------|----------|-----|-----------|
| **em Dũng** | **ズン** | BD担当 | Trẻ, chu đáo, đang luyện BJT — nhân vật chính |
| **chị Hương** | **フオン副部長** | 副部長 | Cứng rắn, mentor cho Dũng |
| **anh Tuấn** | **トゥアンリーダー** | チームリーダー | Vui tính, hay giải thích văn hóa Nhật |
| **chị Loan** | **ロアン経理部長** | 経理部長 | Chính xác, kỹ tính |
| **em Linh** | **リン** | アシスタント | Mới vào, hay hỏi |
| **em Hải** | **ハイ** | FE/DevOps | Bốc máy → chuyển máy nhiều |
| **anh Hà** | **ハー** | CTO | Quản lý, hay vắng |

### Khách hàng Nhật / 日本側

| Tên | 名前 | Vai |
|-----|-----|-----|
| **anh Matsumoto** | **松本PM** | PM bên 白鷗株式会社 (đối tác chính) |
| **lễ tân Hakuō** | **白鷗 受付** | Lễ tân khi gọi đi |
| **CFO Nakamura** | **中村CFO** | Cấp cao 白鷗 |
| **người gọi không rõ** | **不明発信者** | Trong các tình huống cần xác minh |

---

## 🔉 Audio TTS / 音声生成

Mỗi rule có data đầy đủ trong `conversation.json` để gen audio:

- `line_id` — ID duy nhất cho từng câu (vd: `rule_15_good_03`).
- `speaker` + `gender` + `tone` — đủ để gọi TTS engine với voice riêng.
- `speed_multiplier`, `pause_after_ms` — điều chỉnh tốc độ + ngắt nghỉ tự nhiên.
- `pronunciation_hint` — hint cho từ kanji khó.

**Voice profiles** trong `voice_profiles.json` map mỗi `speaker` sang voice TTS cụ thể (cast Hizashi đã ổn định qua sách 01).

---

## 📖 Cách dùng / 使い方

**Người mới:**

1. Đọc lần lượt từ Phần I → V theo thứ tự.
2. Mỗi rule, đọc `rule.md` trước → nghe audio (nếu có) → làm BJT practice.
3. Phụ lục B (vocab) là từ điển tra cứu nhanh.

**Luyện thi BJT:**

1. Làm Phụ lục C theo level (J3 → J2 → J1).
2. Sai chỗ nào, quay lại rule gốc đọc kỹ.
3. Phụ lục A là script template để học thuộc cụm câu.

**Người dạy:**

- Mỗi rule = 1 buổi học 30-45 phút.
- 60 rules = 1 khóa 3-4 tháng (2 buổi/tuần).

---

## ⚖️ Bản quyền / 著作権

© 2026 Hizashi Teams.

Toàn bộ nội dung sách (text, hội thoại, BJT questions) là **sáng tác gốc** của Hizashi Teams. Tham khảo từ tài liệu BJT công khai và kinh nghiệm thực tế làm việc với khách Nhật.

Cho phép sử dụng cho mục đích **học tập cá nhân** và **giảng dạy phi lợi nhuận** với điều kiện ghi rõ nguồn. Không cho phép tái bản thương mại nếu chưa có sự cho phép bằng văn bản.

---

## 🔗 Liên hệ / 問い合わせ

Hizashi Teams — Hizashi Project. Phản hồi và đóng góp gửi qua repo dự án `Hizashi_book`.

---

*Bản 1.1 — 2026. 60 rules + 3 phụ lục, schema v2 sẵn sàng cho audio + app, đã pass 3 expert reviews.*
