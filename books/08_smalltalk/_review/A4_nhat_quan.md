# [08-A4] Rà soát nhất quán xuyên sách

> Agent: A4 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: mục lục, front/back matter, thuật ngữ, schema, cấu trúc 51 rule (góc nhìn toàn sách), phụ lục, english_audit.
> KHÔNG sửa file nội dung. Chỉ báo cáo.

---

## Tóm tắt số lỗi

**Tổng: 24 lỗi** — 🔴 8 · 🟡 10 · 🔵 6

| # | Mức | Lỗi | Ảnh hưởng |
|---|-----|-----|-----------|
| L01 | 🔴 | 39/51 `conversation.json` có `rule_id` VI PHẠM schema (`08-01` thay vì `rule_01`) | Validator fail |
| L02 | 🔴 | 39/51 `related_rules` sai kiểu dữ liệu (object[] thay vì string[]) | Validator fail |
| L03 | 🔴 | Phụ lục C: 117/153 câu gắn nhãn sai `(Rule 08, ...)` — dùng mã SÁCH làm mã RULE | Tra ngược sai |
| L04 | 🔴 | Phụ lục C câu J3-04: đáp án A nhưng giải thích nói "C" | Sai đáp án |
| L05 | 🔴 | 28/51 tên rule trong mục lục KHÁC tiêu đề H1 thật | Mục lục lệch |
| L06 | 🔴 | Cross-ref off-by-one sót lại sau fix v1.1: rule 33→49, rule 41→44 | Dẫn sai rule |
| L07 | 🔴 | 6 rule còn lộ "văn dàn ý" trong mục Bối cảnh ("Tham khảo. 1 scenario...") | Lộ scaffold |
| L08 | 🔴 | Rule 51 nhúng `<ruby>` vào H1 — 50 rule kia dùng kanji trần | Vỡ mục lục/EPUB |
| L09 | 🟡 | Nhãn khối "Tâm lý JP" có 3 biến thể; "(3 dòng)/(4 dòng)" là chú thích biên tập | Không nhất quán |
| L10 | 🟡 | Nhãn khối Scenario có 8 biến thể | Không nhất quán |
| L11 | 🟡 | Nhãn khối NG có 5 biến thể; rule 48 KHÔNG có khối NG | Thiếu khối |
| L12 | 🟡 | Nhãn khối Vocab: 46 "Vocab" (tiếng Anh) vs 5 "Bảng từ vựng" | Không nhất quán |
| L13 | 🟡 | Phần III: 13 rule có "Bảng tra nhanh vùng miền" với 5 tên gọi khác nhau | Không nhất quán |
| L14 | 🟡 | Rule 21 khối Câu vàng dùng bold thay code fence (50/51 dùng fence) | Lệch format |
| L15 | 🟡 | Thứ tự khối đảo ở rule 47, 48, 49, 50, 51 | Lệch trình tự |
| L16 | 🟡 | Phụ lục C ghi "Tổng: 153 câu" nhưng mục lục hứa "50 câu" | Sai lời hứa |
| L17 | 🟡 | 9 viết tắt dùng nhiều (VN/JP/NG/HCM/HN/TQ/TV/OK/LINE) THIẾU trong `_thuat_ngu.md` | Bảng thiếu |
| L18 | 🟡 | 3 mục trong `_thuat_ngu.md` (NBA, OL, SW) gần như không dùng | Bảng thừa |
| L19 | 🔵 | Mốc thời gian truyện gãy: rule 33 = 3/2027 nhưng rule 42-46 = 5-6/2026 | Vỡ mạch truyện |
| L20 | 🔵 | Rule 33 và rule 50 trùng chủ đề "kho ghi nhớ" gần như hoàn toàn | Lặp nội dung |
| L21 | 🔵 | Phần V rule 47-51 ngắn bất thường (136-160 dòng vs mặt bằng ~200) | Hụt cuối sách |
| L22 | 🔵 | 0 cross-reference trong thân `rule.md` (chỉ có trong JSON, độc giả không thấy) | Rời rạc |
| L23 | 🔵 | `regional_focus` dùng ở 13 file JSON nhưng KHÔNG khai báo trong schema | Nợ schema |
| L24 | 🔵 | Back matter ghi phát hành 30/04/2026 nhưng nội dung truyện chạy tới 3/2027 | Nghịch lý ngày |

**Không có lỗi:** phân chia 5 phần, số rule, đánh số thư mục, dấu vết emoji bị strip (double-space) trong `rule.md`, format bảng Vocab, format bảng hội thoại, footer, khối BJT.

---

## 1. Mục lục vs thực tế (bảng đối chiếu 51 rule)

### 1.1 Số lượng và phân chia — ✅ ĐÚNG HOÀN TOÀN

| Phần | Mục lục hứa | Thư mục thật | Dải số mục lục | Khớp |
|------|------------|-------------|---------------|------|
| I | 8 | 8 | 01-08 | ✅ |
| II | 12 | 12 | 09-20 | ✅ |
| III | 13 | 13 | 21-33 | ✅ |
| IV | 8 | 8 | 34-41 | ✅ |
| V | 10 | 10 | 42-51 | ✅ |
| **Tổng** | **51** | **51** | 01-51 liên tục | ✅ |

**Fix numbering v1.1 ĐÃ ĂN.** `meta/STATUS.md:19` ghi đã sửa Phần IV (33-40 → 34-41) và Phần V (41-50 → 42-51). Kiểm chứng: mục lục hiện đúng 34-41 và 42-51, khớp 100% tên thư mục. Không còn lệch số hiệu.

Số hiệu trong mục lục khớp tên thư mục 51/51 — không có rule nào lệch.

### 1.2 🔴 L05 — Tên rule trong mục lục KHÁC tiêu đề H1 (28/51 lệch)

Đây là việc chính được giao. Đối chiếu từng rule: **23 khớp, 28 lệch.**

Fix v1.1 chỉ sửa SỐ HIỆU, không sửa TÊN. Nhiều rule đã được đổi tên (Việt hóa từ tiếng Anh khi chạy `english_audit`) nhưng mục lục vẫn giữ tên cũ.

| # | Tên trong `mục_lục.md` | Tiêu đề H1 thật trong `rule.md` | Loại lệch |
|---|---|---|---|
| 01 | Khi nào "tán" được? | Khi nào "tán" được? | ✅ |
| 02 | Quy tắc 80/20 (khách nói 80%) | Quy tắc 80/20 (khách nói 80%) | ✅ |
| 03 | 5 mức độ thân mật + **topic** phù hợp | 5 mức độ thân mật + **chủ đề** phù hợp | VN — đã Việt hóa |
| 04 | Câu hỏi mở vs đóng | Câu hỏi mở vs đóng | ✅ |
| 05 | **聞き上手 — listening + relay** | **Người giỏi lắng nghe** | VN — đổi hẳn tên |
| 06 | Chuyển **topic** mượt | Chuyển **chủ đề** mượt | VN — đã Việt hóa |
| 07 | Khi im lặng — **không panic** | Khi im lặng — **đừng hoảng** | VN — đã Việt hóa |
| 08 | 8 chủ đề cấm tuyệt đối | 8 chủ đề cấm tuyệt đối | ✅ |
| 09-13 | — | — | ✅ (5 rule khớp) |
| 14 | JP: 趣味 — **ゴルフ・野球・相撲** | JP: **趣味** | JP — H1 rút gọn |
| 15 | Du lịch + onsen | Du lịch + onsen | ✅ |
| 16 | **Festivals** theo mùa | **Lễ hội** theo mùa | VN — đã Việt hóa |
| 17 | JP: 健康・年齢**の話題** | JP: **健康・年齢** | JP — H1 rút gọn |
| 18-20 | — | — | ✅ (3 rule khớp) |
| 21 | Hokkaido — biển + sữa | Hokkaido — biển + sữa **+ tuyết** | VN — H1 dài hơn |
| 22 | Tohoku — tuyết + sake | Tohoku — tuyết, sake, **lễ hội mùa hè** | VN — H1 dài hơn |
| 23 | **Kanto/Tokyo — Shitamachi** / JP 関東・**下町** | Kanto/Tokyo — Shitamachi **vs Yamanote** / JP 関東・**東京** | VN+JP |
| 24 | **Chubu/Nagoya (Aichi)** — miso / JP **中部・**愛知 | **Aichi/Nagoya** — miso **+ tư duy Toyota** / JP 愛知**・名古屋** | VN+JP |
| 25 | **Chubu/Gifu — núi + craft** *(MỚI)* / JP **中部・**岐阜 | Gifu — núi, craft, **đặc sản hiếm khách Việt biết** / JP 岐阜 | VN+JP |
| 26 | **Kansai-**Osaka — okonomiyaki / JP **関西**大阪 | Osaka — **お好み焼, 阪神, 笑い文化** / JP **大阪** | VN+JP |
| 27 | **Kansai-Kyoto** — tinh tế | Kyoto — tinh tế, **おもてなし, niềm tự hào kín đáo** | VN |
| 28 | **Chugoku/Hiroshima** / JP **中国・**広島 | Hiroshima — **Carp + 重ね焼き + 牡蠣 + 宮島** / JP 広島 | VN+JP |
| 29 | Shikoku — udon + citrus | Shikoku — udon, citrus, **お遍路** | VN |
| 30 | **Kyushu-**Fukuoka / JP **九州・**福岡 | Fukuoka — **博多豚骨, もつ鍋, 屋台, ホークス** / JP 福岡 | VN+JP |
| 31 | **Kyushu-**Kumamoto/Kagoshima / JP **九州・**熊本鹿児島 | Kumamoto **+** Kagoshima — **馬刺し, くまモン, 黒豚, 西郷さん, 桜島** / JP 熊本**・**鹿児島 | VN+JP |
| 32 | Okinawa — văn hóa khác | Okinawa — văn hóa khác, **沖縄時間, ハイサイ** | VN |
| 33 | **Memory bank — ghi nhớ specifics** | **Kho ghi nhớ — ghi nhớ chi tiết cụ thể về khách JP** | VN — đã Việt hóa |
| 34 | Phở — câu chuyện văn hóa | Phở — câu chuyện văn hóa | ✅ |
| 35 | Tết — **solar vs lunar** | Tết — **âm lịch vs dương lịch** | VN — đã Việt hóa |
| 36 | Cà phê Việt | Cà phê Việt | ✅ |
| 37 | Khí hậu 3 miền | Khí hậu 3 miền **VN** | VN |
| 38-40 | — | — | ✅ (3 rule khớp) |
| 41 | Cảnh đẹp + **nightlife** | Cảnh đẹp + **cuộc vui đêm** | VN — đã Việt hóa |
| 42 | **Izakaya order flow** | **Trình tự gọi món tại izakaya** | VN — đã Việt hóa |
| 43-46 | — | — | ✅ (4 rule khớp) |
| 47 | **Topic GOLD** (an toàn 100%) | **Chủ đề VÀNG** (an toàn 100%) | VN — đã Việt hóa |
| 48 | **Topic LANDMINE (cẩn trọng)** | **Chủ đề MÌN** | VN — đã Việt hóa |
| 49 | Sách/báo/TV để có vốn nói | Sách/báo/TV để có vốn nói | ✅ |
| 50 | **Memory bank** — duy trì lâu dài | **Kho ghi nhớ** — duy trì **quan hệ** lâu dài | VN — đã Việt hóa |
| 51 | **Self-review + practice** / JP 振り返りと練習 | **Tự đánh giá + luyện tập** / JP `<ruby>`… | VN + JP (xem L08) |

**Kết luận:** Mục lục là bản CHƯA Việt hóa — nó vẫn còn `topic`, `Festivals`, `Memory bank`, `nightlife`, `order flow`, `Topic GOLD/LANDMINE`, `Self-review`, `panic`, `solar vs lunar`. Các `rule.md` đã được `english_audit` Việt hóa nhưng **mục lục bị bỏ sót**. Đây là lỗi hệ thống một chiều, dễ sửa hàng loạt.

**Đề xuất giai đoạn SỬA:** Sinh lại `meta/mục_lục.md` phần bảng rule bằng script đọc trực tiếp H1 của 51 `rule.md` → khớp 100% và không tái phát.

---

## 2. Front/back matter

### 2.1 Front matter (`nội_dung/_front_matter.md`) — phần lớn ĐÚNG

| Lời hứa | Dòng | Thực tế | Kết luận |
|---|---|---|---|
| "51 quy tắc" | 7 | 51 thư mục rule | ✅ |
| "theo đặc trưng 47 tỉnh thành" | 7 | Phụ lục E có bảng 47 tỉnh | ✅ |
| Bảng 5 phần I-V | 43-49 | Khớp cấu trúc thư mục | ✅ |
| "Phụ lục: A, B, C, D, E" | 51 | Đủ 5 file trong `phụ_lục/` | ✅ |
| Nhân vật: 7 Thiên Phát + 4 Hakuō + 6 vùng = 17 | 55-57 | `voice_profiles.json` có **19** speakers; mục lục nói "13 → 19" | ⚠️ lệch đếm nhẹ, không nghiêm trọng |
| "Mỗi quy tắc **ngắn** ở lý thuyết, **dài** ở hội thoại" | 23 | ✅ Đúng — mọi rule đều là Luận điểm ngắn + 2-6 scenario dài | ✅ |
| はじめに: "51のルール" | 37 | ✅ | ✅ |

**Không có lời hứa nào bị bỏ rơi ở mức nghiêm trọng trong front matter.** Điểm tốt: front matter đã Việt hóa sạch (không còn "Cast", "mindset", "copy-paste" như `english_audit.md:40-42` từng flag) — chứng tỏ audit đã được áp dụng cho file này.

### 2.2 🔵 L24 — Back matter: nghịch lý ngày phát hành

`nội_dung/_back_matter.md:18-19`:
```
| Phiên bản | 1.1 |
| Ngày phát hành | 30/04/2026 |
```

- Phiên bản 1.1 khớp `meta/STATUS.md:3` (v1.1 — 2026-04-26) ✅
- Bản quyền © 2026 hợp lệ ✅
- **Nhưng:** ngày phát hành 30/04/2026 trong khi mốc truyện chạy tới **tháng 3/2027** (rule 33). Sách "phát hành" trước thời điểm câu chuyện xảy ra gần 1 năm. Đây là hệ quả của L19.
- Ngoài ra hôm nay là 15/08/2026, sách đang ở đợt rà soát thứ 2 → nếu ra bản v1.2 cần cập nhật lại ngày.

Email `hizashinihongo@gmail.com` + website `hizashi.net` — hợp lệ, đồng nhất với các sách khác.

---

## 3. MA TRẬN CẤU TRÚC 51 RULE × KHỐI

### 3.1 Bộ khối chuẩn

Bộ khối "xương sống" của sách 08 là **7 khối**, theo thứ tự:

```
H1 tiêu đề → Luận điểm (blockquote) → Tâm lý JP → Bối cảnh →
N Scenario → Câu vàng → NG → Vocab → BJT → footer
```

### 3.2 Ma trận đầy đủ

Ký hiệu: ✅ có · ➕ có thêm khối riêng · ⚠️ nhãn lệch · ❌ thiếu

| Rule | Tâm lý | Bối cảnh | Scen | Câu vàng | Bảng vùng | NG | Vocab | BJT | Số dòng | Ghi chú |
|------|--------|----------|------|----------|-----------|----|----|-----|---------|---------|
| 01 | ✅(3d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 159 | chuẩn |
| 02 | ✅(3d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 174 | chuẩn |
| 03 | ✅(3d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 176 | chuẩn |
| 04 | ✅(3d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 182 | chuẩn |
| 05 | ✅(3d) | ✅ | 4 | ⚠️"dùng ngay" | — | ⚠️"Điều tuyệt đối tránh" | ✅ | ✅ | 206 | 2 nhãn lệch |
| 06 | ✅(3d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 191 | chuẩn |
| 07 | ✅(3d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 194 | chuẩn |
| 08 | ✅(3d) | ⚠️"— 8 vùng cấm" | 4 | ✅ | — | ✅ | ✅ | ✅ | 202 | |
| 09 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 186 | |
| 10 | ✅(4d) | ✅ | 4 | ⚠️"dùng ngay" | — | ✅ | ✅ | ✅ | 177 | |
| 11 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 203 | |
| 12 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ⚠️"Bảng từ vựng" | ✅ | 209 | |
| 13 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 190 | |
| 14 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 224 | |
| 15 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ⚠️"Bảng từ vựng" | ✅ | 211 | |
| 16 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ⚠️"Bảng từ vựng" | ✅ | 213 | |
| 17 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 207 | |
| 18 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 209 | |
| 19 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 202 | |
| 20 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 212 | |
| 21 | ⚠️trần | ✅ | 4 | ⚠️**bold** | ➕北海道 | ⚠️"NG" | ✅ | ✅ | 188 | L14 |
| 22 | ⚠️trần | ✅ | 4 | ✅ | ➕東北(6県) | ⚠️"NG" | ✅ | ✅ | 192 | |
| 23 | ⚠️trần | ✅ | 4 | ✅ | ➕"tra **cứu** nhanh" | ⚠️"NG" | ✅ | ✅ | 198 | |
| 24 | ⚠️trần | ✅ | 4 | ✅ | ➕愛知・名古屋 | ⚠️"NG" | ✅ | ✅ | 207 | |
| 25 | ⚠️trần | ✅ | 4 | ✅ | ➕岐阜 **(Toàn diện)** | ⚠️"NG" | ✅ | ✅ | 227 | |
| 26 | ⚠️trần | ✅ | 4 | ✅ | ➕大阪 | ⚠️"NG" | ✅ | ✅ | 230 | |
| 27 | ⚠️trần | ✅ | 4 | ✅ | ➕京都 | ⚠️"NG" | ✅ | ✅ | 224 | |
| 28 | ⚠️trần | ✅ | 4 | ✅ | ➕"tra **cứu**"+**(Tổng hợp)** | ⚠️"NG" | ⚠️"Bảng từ vựng" | ✅ | 250 | dài nhất |
| 29 | ⚠️trần | ✅ | 4 | ✅ | ➕四国(4県) | ⚠️"NG" | ✅ | ✅ | 220 | |
| 30 | ⚠️trần | ✅ | 4 | ✅ | ➕福岡 | ⚠️"NG" | ✅ | ✅ | 229 | |
| 31 | ⚠️trần | ✅ | **6** | ✅ | ➕熊本+鹿児島 | ⚠️"NG" | ✅ | ✅ | 235 | 6 scen (2 tỉnh) |
| 32 | ⚠️trần | ✅ | 4 | ✅ | ➕**"Sổ tay"**沖縄 | ⚠️"NG" | ✅ | ✅ | 247 | tên khối khác hẳn |
| 33 | ⚠️trần | ✅ | 4 | ✅ | ➕**"Kho ghi nhớ — 5 yếu tố"** | ⚠️"NG" | ✅ | ✅ | 192 | |
| 34 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 172 | |
| 35 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 195 | |
| 36 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 187 | |
| 37 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 190 | |
| 38 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 185 | |
| 39 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 192 | |
| 40 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 192 | |
| 41 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ⚠️"Bảng từ vựng" | ✅ | 192 | |
| 42 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 210 | |
| 43 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 185 | |
| 44 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 191 | |
| 45 | ✅(4d) | ✅ | 4 | ✅ | ➕**"Bảng cheat"** karaoke | ✅ | ✅ | ✅ | 196 | tên Anh-Việt lai |
| 46 | ✅(4d) | ✅ | 4 | ✅ | — | ✅ | ✅ | ✅ | 189 | |
| 47 | ✅(3d) | ⚠️scaffold | **2** | ⚠️"(10 câu mở)" | ➕BẢNG VÀNG *(trước Scen)* | ⚠️"NG khi dùng…" | ✅ | ✅ | **136** | ngắn nhất |
| 48 | ✅(3d) | ⚠️scaffold | **2** | ⚠️"— Câu NÉ KHÉO" | ➕BẢNG ĐỎ *(trước Scen)* | **❌ THIẾU** | ✅ | ✅ | **160** | thay bằng "KHI ĐÃ LỠ CHẠM MÌN" |
| 49 | ✅(3d) | ⚠️scaffold | **2** | ✅ | ➕5 NGUỒN + BONUS *(trước Scen)* | ⚠️"NG khi dùng…" | ✅ | ✅ | **160** | |
| 50 | ✅(4d) | ⚠️scaffold | **3** | ⚠️"(vận dụng…)" | — | ✅ | ✅ | ✅ | **139** | MẪU nằm SAU BJT |
| 51 | ✅(3d) | ⚠️scaffold | **2** | ⚠️"(tự nhủ…)" | — | ⚠️"NG khi tự đánh giá" | ✅ | ✅ | **140** | MẪU nằm SAU BJT |

### 3.3 Các khối HOÀN TOÀN nhất quán — ✅ điểm mạnh của sách

- **BJT: 51/51** rule đều có, đều đúng **3 dòng J3/J2/J1** — không sai một cái nào.
- **Bảng Vocab: 51/51** dùng đúng cùng một header `| Từ | Cách đọc | Hán Việt | Nghĩa Việt |`.
- **Bảng hội thoại: 50/51** dùng `| Vai | Câu |` (rule 51 dùng bảng thời gian biểu — hợp lý vì là rule tự đánh giá).
- **Footer: 51/51** đúng mẫu `> **Hizashi Sách 08 — Rule NN — <tên JP>**`.
- **Khối Bối cảnh: 50/51** (chỉ rule 47-51 có nội dung scaffold, xem L07).

### 3.4 🟡 L09-L12 — Nhãn khối không nhất quán

| Khối | Số biến thể | Chi tiết (số rule dùng) |
|------|------------|------------------------|
| Tâm lý JP | **3** | `Tâm lý JP (4 dòng)` ×26 · `Tâm lý JP` ×13 (toàn phần III) · `Tâm lý JP (3 dòng)` ×12 |
| Scenario | **8** | `4 Scenario — hội thoại thực chiến` ×14 · `4 Scenarios` ×13 (phần III) · `4 Scenarios — hội thoại thực chiến` ×10 · `4 Scenarios — dialogue thực chiến` ×8 · `4 Tình huống — hội thoại thực chiến` ×1 · `2 Scenarios — dialogue thực chiến` ×1 · `2 Tình huống` ×1 · `3 Scenarios` ×1 · `2 Scenario — tình huống thực chiến` ×1 |
| Câu vàng | **6** | `Câu vàng copy-paste` ×45 · `Câu vàng dùng ngay` ×2 · +4 biến thể có đuôi mô tả |
| NG | **5** | `NG — tuyệt đối tránh` ×33 · `NG` ×13 (phần III) · `Điều tuyệt đối tránh` ×1 · `NG khi…` ×3 · **thiếu ×1** |
| Vocab | **2** | `Vocab` ×46 · `Bảng từ vựng` ×5 (rule 12, 15, 16, 28, 41) |

**Điểm nghiêm trọng của L09:** nhãn `(3 dòng)` / `(4 dòng)` là **chú thích cho người viết**, không phải tiêu đề cho người đọc. 38/51 rule để lộ chú thích này ra sản phẩm cuối. Phần III (13 rule) đã bỏ chú thích — đúng hơn.

**L12** vi phạm luật `feedback_vietnamese_labels` (mọi label UI/tiêu đề phải tiếng Việt có dấu): `Vocab` là tiếng Anh, dùng ở 46/51 rule; `Bảng từ vựng` mới là dạng đúng nhưng chỉ 5 rule dùng. Tương tự `Scenario`/`Scenarios`/`dialogue` vs `Tình huống`/`hội thoại`, và `copy-paste` trong `Câu vàng copy-paste`.

### 3.5 🟡 L13 — Phần III: 5 cách gọi cùng một khối

13 rule vùng miền đều có khối bảng tra cứu nhưng gọi 5 kiểu:
- `Bảng tra nhanh vùng miền — X` (rule 21, 22, 24, 25, 26, 27, 29, 30, 31) — chuẩn, 9 rule
- `Bảng tra **cứu** nhanh vùng miền — 関東・東京` (rule 23) — thừa chữ "cứu"
- `Bảng tra **cứu** vùng miền — 広島 **(Tổng hợp)**` (rule 28) — thiếu "nhanh", thừa hậu tố
- `**Sổ tay** vùng miền — 沖縄` (rule 32) — đổi hẳn danh từ
- `**Kho ghi nhớ — 5 yếu tố**` (rule 33) — đúng vì rule 33 không phải rule vùng miền
- Thêm hậu tố tùy tiện: `(6県)`, `(4県)`, `(Toàn diện)`, `(Tổng hợp)`

Rule 45 (phần V) dùng `Bảng cheat — Bài karaoke theo thế hệ JP` — lai Anh-Việt ("cheat"), lệch cả hai hệ.

### 3.6 🟡 L14 — Rule 21 lệch format khối Câu vàng

50/51 rule mở khối "Câu vàng" bằng code fence ```` ``` ````. Riêng `phần_III/rule_21_北海道/rule.md:109` mở bằng bold:

```
**■ MỞ CHỦ ĐỀ HOKKAIDO:**
```

Hệ quả: khi render EPUB/web, câu vàng của rule 21 không nằm trong khung copy-paste như 50 rule kia.

### 3.7 🟡 L15 — Thứ tự khối đảo ở 5 rule cuối

Thứ tự chuẩn: `… → Bối cảnh → Scenario → Câu vàng → NG → Vocab → BJT`.

| Rule | Thứ tự thực tế | Bất thường |
|---|---|---|
| 47 | Bối cảnh → **BẢNG VÀNG** → Scenario → … | bảng chèn TRƯỚC scenario |
| 48 | Bối cảnh → **BẢNG ĐỎ** → Scenario → Câu vàng → **KHI ĐÃ LỠ CHẠM MÌN** → Vocab | không có khối NG; bảng trước scenario |
| 49 | Bối cảnh → **5 NGUỒN** → **BONUS NGUỒN** → Scenario → … | 2 bảng trước scenario |
| 50 | … → Vocab → **BJT** → **MẪU GHI CHÉP** | MẪU nằm SAU BJT, sau cả footer-zone |
| 51 | … → Vocab → **BJT** → **MẪU đầy đủ** | MẪU nằm SAU BJT |

Rule 50 và 51 đặt khối MẪU sau BJT — phá vỡ quy ước "BJT luôn là khối cuối trước footer" mà 49 rule kia tuân thủ.

### 3.8 🔵 L21 — Độ dài: phần V hụt hơi ở 5 rule cuối

- Mặt bằng chung: **196 dòng** (median 195)
- Dài nhất: rule 28 (250), rule 32 (247), rule 31 (235), rule 26 (230)
- **Ngắn nhất: rule 47 (136), rule 50 (139), rule 51 (140), rule 48 (160), rule 49 (160)**

5 rule ngắn nhất sách chính là 5 rule CUỐI (47-51). Chúng cũng là 5 rule duy nhất có **2-3 scenario** thay vì 4, và là 5 rule duy nhất còn văn scaffold (L07). Đây là dấu hiệu rõ sách bị viết hụt hơi ở đoạn kết — người đọc đi hết 46 rule đầy đặn rồi gặp 5 rule mỏng.

Rule 47 chỉ 136 dòng với 2 scenario, trong khi nó là rule "10 chủ đề VÀNG" — đáng lẽ phải là một trong những rule dày nhất sách.

### 3.9 🔴 L07 — Văn dàn ý lọt vào sản phẩm cuối

6 rule để lộ ghi chú biên tập trong mục Bối cảnh (đáng lẽ phải là đoạn văn kể bối cảnh như 45 rule kia):

| File | Dòng | Nguyên văn |
|---|---|---|
| `phần_V/rule_47_GOLD話題/rule.md` | 17 | `Tham khảo. 1 scenario chính + 1 scenario "khi không biết nói gì" để gỡ tình huống.` |
| `phần_V/rule_48_地雷話題/rule.md` | 17 | `Tham khảo. 2 tình huống — 1 ví dụ né khéo khi khách thử dò, 1 ví dụ gỡ tình huống khi đồng nghiệp VN suýt nổ.` |
| `phần_V/rule_49_雑談ネタ収集/rule.md` | 17 | `Tham khảo. 1 tình huống "áp dụng nguồn thu nạp vào bữa tối" + phân tích 5 nguồn.` |
| `phần_V/rule_50_関係維持/rule.md` | 18 | `Tham khảo. 1 scenario "vận dụng kho ghi nhớ" + 1 scenario "ghi kho ghi nhớ ngay sau bữa tối" + **MẪU GHI CHÉP** đầy đủ.` |
| `phần_V/rule_51_自己振り返り/rule.md` | 17 | `Tham khảo. 1 ví dụ bản tự đánh giá sau buổi tiệc Phase 4 + **MẪU đầy đủ**.` |
| `phần_I/rule_04_開かれた質問/rule.md` | 17 | Bối cảnh là **bảng 3 cấp câu hỏi**, không phải văn bối cảnh — lệch thể loại (nhẹ hơn 5 cái trên) |

Đây là loại lỗi độc giả nhìn thấy ngay và đánh giá là sách chưa hoàn thiện. **Ưu tiên sửa cao nhất cùng L03/L04.**

### 3.10 🔴 L08 — Rule 51 nhúng ruby vào H1

`phần_V/rule_51_自己振り返り/rule.md:1`:
```
# Rule 51 — Tự đánh giá + luyện tập / <ruby>振<rt>ふ</rt></ruby>り<ruby>返<rt>かえ</rt></ruby>りと<ruby>練習<rt>れんしゅう</rt></ruby>
```

50/51 rule dùng kanji trần trong H1 (`/ 雑談のタイミング`, `/ 大阪`…). Chỉ rule 51 nhúng thẻ `<ruby>`. Lỗi tương tự lặp lại ở footer rule 51 (dòng 139).

Hệ quả thực tế: khi build EPUB/mục lục tự động, tiêu đề rule 51 sẽ hiện thẻ HTML thô hoặc vỡ TOC, vì trình sinh mục lục thường strip tag không đồng nhất. Rule 51 cũng là rule có **ít ruby nhất trong thân bài (5 lần)** — nên việc nhúng ruby đúng vào H1 lại càng bất thường.

---

## 4. Thuật ngữ

`_thuat_ngu.md` có **36 mục**, sắp đúng thứ tự bảng chữ cái, format bảng 3 cột nhất quán ✅.

### 4.1 🟡 L17 — Viết tắt dùng nhiều nhưng THIẾU trong bảng

Quét toàn bộ `nội_dung/**/*.md`:

| Viết tắt | Số lần dùng | Ghi chú |
|---|---|---|
| `NG` | **503** | Từ khóa trung tâm của sách (tên khối, tên rule 08/48). Người mới đọc không biết NG = No Good |
| `VN` | **301** | |
| `JP` | **190** | |
| `HCM` | 61 | |
| `OK` | 50 | |
| `HN` | 37 | |
| `TV` | 19 | Tivi |
| `TQ` | 13 | Trung Quốc |
| `LINE` | 7 | Ứng dụng nhắn tin JP — người Việt dễ nhầm với "dòng" |

`NG` đặc biệt nghiêm trọng: nó xuất hiện trong tiêu đề rule (`Rule 08 — … / NG話題8選`), trong tên khối của 46 rule, và là khái niệm cốt lõi — nhưng không hề được giải nghĩa ở đâu.

### 4.2 🟡 L18 — Mục trong bảng gần như không dùng

| Mục | Số lần xuất hiện trong toàn bộ nội dung |
|---|---|
| `NBA` | 1 |
| `OL` | 1 |
| `SW` | 1 |

Không sai, nhưng bảng thuật ngữ nên phản ánh những gì thực sự cần tra. 3 mục này có thể giữ (chi phí thấp) — ưu tiên thấp hơn nhiều so với L17.

### 4.3 Cùng khái niệm gọi nhiều tên

| Khái niệm | Các tên đang dùng | Vị trí |
|---|---|---|
| Kho ghi nhớ | `Kho ghi nhớ` (chuẩn, sau Việt hóa) · `Memory bank` (còn 6 chỗ) · `memory bank` (2 chỗ) · `Bảng kho ghi nhớ tổng hợp` | rule 33, 50, phụ lục |
| Bảng tra vùng miền | `Bảng tra nhanh` · `Bảng tra cứu nhanh` · `Bảng tra cứu` · `Sổ tay` · `Bảng cheat` | 13 rule phần III + rule 45 |
| Khối từ vựng | `Vocab` · `Bảng từ vựng` | 46 vs 5 |
| Khối tình huống | `Scenario` · `Scenarios` · `Tình huống` · `dialogue` · `hội thoại` | 51 rule |

---

## 5. Quy ước trình bày

### 5.1 Furigana — ✅ NHẤT QUÁN TUYỆT ĐỐI

- **51/51** file dùng thẻ `<ruby>漢<rt>かん</rt></ruby>`.
- **0** trường hợp dùng kiểu `（かな）` trong ngoặc.
- Tổng **3.691** lần dùng ruby.
- Không có file nào trộn hai kiểu.

Phân bố hợp lý: rule phần III (vùng miền, nhiều kanji địa danh) có 21-34 ruby/rule; rule phần V cuối (47-51) chỉ 3-11 ruby/rule — nhất quán với việc 5 rule này ngắn hơn (L21).

### 5.2 Romaji — nhất quán ở mức "dùng rất tiết chế"

Sách gần như không dùng romaji cho tiếng Nhật (đúng chuẩn Hizashi). Ngoại lệ có chủ đích và giải thích ngay: `雑談 (zatsudan)` ở front matter dòng 17, `沈黙 (chinmoku)`. Tên riêng dùng chữ Latin (Matsumoto, Ōgaki, Hiroshi) — nhất quán toàn sách, có dấu macron `Ō` đúng.

### 5.3 🟡 Dấu vết emoji bị strip — SẠCH trong rule.md, CÓ trong phụ lục

**`rule.md`: 0 lỗi.** Quét `^#{1,4}  ` (double-space sau dấu #) trên toàn bộ 51 file → **0 kết quả**. Sách 08 KHÔNG dính lỗi mà sách 10 mắc phải. ✅

**Phụ lục: 1 chỗ dính.** `phụ_lục/phụ_lục_D_templates.md:134`:
```
## ‍‍‍ Family
```
Đây là tàn dư emoji gia đình (👨‍👩‍👧 dùng ZWJ) bị strip, chỉ còn lại các ký tự Zero-Width-Joiner vô hình. Heading hiển thị như bị thụt lề vô cớ. Cũng lưu ý heading này dùng chữ tiếng Anh `Family` — vi phạm luật nhãn tiếng Việt.

Các heading `## ⏱ 0:00-1:00 …` (dòng 167, 172, 178, 249) vẫn còn emoji nguyên vẹn — không phải lỗi.

### 5.4 Emoji/icon — có hệ thống

- Trong `rule.md`: gần như không dùng emoji trong heading (chỉ 3 trường hợp là ký tự kanji `鹿`/`熊` mở đầu H3 của rule 31, và 1 chữ `Đ`) → sạch.
- Trong `mục_lục.md` và phụ lục: dùng emoji cho heading cấp cao (🎬 📋 📚 🎯 🔗 📐 📅 🗾 ⏱) — nhất quán trong phạm vi file meta.

### 5.5 Format bảng — ✅ rất tốt

| Loại bảng | Số rule | Header | Nhất quán |
|---|---|---|---|
| Vocab | 51/51 | `\| Từ \| Cách đọc \| Hán Việt \| Nghĩa Việt \|` | ✅ 100% |
| Hội thoại | 50/51 | `\| Vai \| Câu \|` | ✅ |
| Thời gian biểu (rule 51) | 1 | `\| Giờ \| Hành động \| Chi tiết \|` | hợp lý |

Chỉ có 9 dòng có double-space trong ô bảng trên toàn bộ nội dung — không đáng kể.

Ngoại lệ đáng lưu ý: `english_audit.md:168, 177, 185, 194` từng flag cột `Mindset` trong bảng cheat sheet phần III. Hiện còn **5 chỗ** dùng `Mindset` làm tên cột — chưa Việt hóa (xem mục 6).

---

## 6. Tiếng Anh thừa

`_pipeline/english_audit.md` (2026-05-16) flag **88 mục**. Kiểm tra lại tình trạng hiện tại:

### 6.1 ✅ ĐÃ XỬ LÝ TỐT — phần lớn audit đã áp dụng

Quét lại các mục audit đã nêu, kết quả **0 lần xuất hiện**:

`nhảy mode sai` · `5 phút buffer` · `conference room` · `flow chết` · `Edge case` · `anti-pattern` · `DAMAGE CONTROL` · `bonding` (0/6 — sạch hoàn toàn) · `arrogance` · `moat` · `rabbit hole` · `read the room` · `meme-able` · `dry-run` · `insider` · `pivot` · `bridge`(dạng động từ Anh) · `awkward` · `audience`

Đặc biệt: `bonding` từng bị flag 6 lần (rule 14, 19, 44) → nay **0**. `nightlife` từng bị flag ~7 lần → nay **1**. `insider` từng bị flag 4 lần → nay **0**. Front matter đã Việt hóa sạch cả 3 mục bị flag.

Đây là đợt sửa chất lượng cao — **không cần làm lại từ đầu**.

### 6.2 🟡 CÒN SÓT — 17 chỗ (đã có trong audit nhưng chưa sửa)

| Từ | Còn lại | Ghi chú |
|---|---|---|
| `Mindset` (tên cột bảng) | **5** | audit flag ở rule 24, 26, 27, 32 — chưa sửa cột bảng |
| `Memory bank` / `memory bank` | **8** | audit flag ~8 lần; thân rule đã Việt hóa thành "Kho ghi nhớ" nhưng còn sót ở phụ lục + vài chỗ |
| `Pattern vàng` | 1 | |
| `Damage control` | 1 | |
| `nightlife` | 1 | |
| `warmup` | 1 | |
| `actionable` | 1 | |
| `chốt deal` | 1 | |

### 6.3 🔴 MỚI PHÁT HIỆN — tiếng Anh trong NHÃN KHỐI (audit chưa soi tới)

`english_audit.md` chỉ soi văn giải thích, **không soi tên khối/heading**. Đây là lỗ hổng lớn hơn cả 88 mục đã flag, vì heading hiển thị đậm và lặp lại ở mọi rule:

| Nhãn | Số rule dùng | Dạng tiếng Việt |
|---|---|---|
| `Vocab` | **46** | Bảng từ vựng |
| `Scenario` / `Scenarios` | **47** | Tình huống |
| `dialogue` (trong `— dialogue thực chiến`) | **8** | hội thoại |
| `copy-paste` (trong `Câu vàng copy-paste`) | **45** | dùng ngay / sao chép |
| `NG` | **46** | (cần định nghĩa, xem L17) |
| `Bảng cheat` (rule 45) | 1 | Bảng tra nhanh |
| `Family` (phụ lục D:134) | 1 | Gia đình |
| `Tags`, `Conversation Log`, `FOLLOW-UP TASK` (phụ lục D) | 3 | |

Trùng khớp với việc `_thuat_ngu.md` không có mục nào giải nghĩa `NG` — độc giả gặp chữ NG 503 lần mà không được giải thích lần nào.

**Đề xuất:** đợt SỬA nên chạy 1 lượt Việt hóa NHÃN KHỐI (đồng thời giải quyết L09-L13, vì cả hai đều là bài toán "chuẩn hóa heading").

---

## 7. Độ khó & tiến trình

### 7.1 Tiến trình 5 phần — ✅ hợp lý, có tăng dần

| Phần | Nội dung | Độ khó | Nhận xét |
|---|---|---|---|
| I (01-08) | Khung tư duy: timing, 80/20, cấp thân mật, câu hỏi mở, lắng nghe, chuyển đề, im lặng, cấm kỵ | Nền tảng | Thứ tự tốt: timing → tỷ lệ nói → cấp độ → kỹ thuật → cấm kỵ |
| II (09-20) | Chủ đề cốt lõi: thời tiết → quê → ăn → uống → gia đình → sở thích → du lịch → lễ hội → sức khỏe → thế hệ → anime → tin tức | Áp dụng | Đúng thứ tự "an toàn → thân dần": thời tiết (L1) trước, gia đình (L4) sau ✅ |
| III (21-33) | 47 tỉnh: Hokkaido → Tohoku → Kanto → Chubu → Kansai → Chugoku → Shikoku → Kyushu → Okinawa → memo | Chuyên sâu | Thứ tự địa lý Bắc→Nam chuẩn ✅ |
| IV (34-41) | Chủ đề VN: phở → Tết → cà phê → khí hậu → thành phố → lễ hội → nhà hàng → du lịch | Đảo vai | Chuyển từ "nghe" sang "kể" — bước nhảy vai trò hợp lý |
| V (42-51) | Nhậu + nâng cao + tự rèn | Tổng hợp | Kết bằng self-review ✅ |

Rule 03 (5 cấp thân mật) đặt sớm ở phần I và được phần II dùng lại làm khung ("L1 thời tiết → L4 gia đình") — đây là thiết kế sư phạm tốt.

### 7.2 🔵 L22 — Cross-reference: có trong DỮ LIỆU, không có trong SÁCH

Đây là điểm khác biệt so với sách 10 (0 tham chiếu hoàn toàn).

- **`conversation.json`: 51/51 file đều có `related_rules`** — mạng tham chiếu đầy đủ, không có liên kết một chiều (kiểm tra: 0 trường hợp thiếu back-ref trong phạm vi từng định dạng).
- **`rule.md`: gần như 0 tham chiếu.** Quét toàn bộ 51 file chỉ tìm được 3 chỗ tham chiếu thật:
  - `rule_51:28` — `(rule 50 — thông tin về Ōgaki/Matsumoto/Tanaka)`
  - `rule_51:41-43` — `(Áp dụng Rule 43 OK.)`, `(Rule 50 hiệu quả.)`, `(Rule 46 có thành quả.)`
  - `rule_43:18` — `Cùng dàn nhân vật với rule 42`

Nghĩa là **độc giả đọc sách giấy/EPUB gần như không thấy liên kết nào**, dù dữ liệu liên kết đã tồn tại sẵn trong JSON. Mục lục (`mục_lục.md:156-161`) còn hứa hẳn mục "🔗 Cross-reference" với sách 03/06/07 — nhưng trong 51 `rule.md` không có chỗ nào nhắc tới sách 03, 06, 07.

Rule 51 là hình mẫu tốt nên nhân rộng: nó nhắc lại rule 43, 46, 50 một cách tự nhiên trong phần tự đánh giá.

### 7.3 🔵 L20 — Rule 33 và rule 50 trùng chủ đề

| | Rule 33 (phần III) | Rule 50 (phần V) |
|---|---|---|
| Tiêu đề | Kho ghi nhớ — ghi nhớ chi tiết cụ thể về khách JP | Kho ghi nhớ — duy trì quan hệ lâu dài |
| JP | 雑談メモバンク | 関係維持の記憶バンク |
| Luận điểm | ghi CRM trong 24h: quê + món + đội + gia đình; trước gặp xem lại **3 phút**; "lợi thế không ai bắt chước được" | ghi 30 phút sau gặp; trước gặp ôn lại **3 phút**; "lợi thế không ai bắt chước được" |
| Nội dung | 5 yếu tố + mẫu ghi chép | mẫu ghi chép + 3 phút trước họp |

Hai rule dùng **cùng một câu chốt** ("lợi thế không ai bắt chước được"), **cùng công thức 3 phút trước cuộc gặp**, cùng mẫu ghi chép. Mục lục cũng gọi cả hai là "Memory bank" (`mục_lục.md:98` và `:131`). Phụ lục D thậm chí đặt cả hai template cạnh nhau (dòng 7 và 109).

Đây là chỗ lặp rõ nhất sách. Ngoài ra:
- Rule 08 (8 chủ đề cấm) ↔ rule 48 (chủ đề MÌN) — trùng một phần, nhưng rule 48 có thêm "cách gỡ khi đã lỡ" nên còn phân biệt được.
- Rule 47 (chủ đề VÀNG) tổng hợp lại phần II — đây là tổng kết có chủ đích, chấp nhận được.

### 7.4 🔵 L19 — Mốc thời gian truyện gãy

Rút mốc thời gian từ mục Bối cảnh của 51 rule:

| Nhóm | Mốc |
|---|---|
| Phần I (01, 02), phần II (09) | 4-5/2026 |
| Phần III (21→33) | **5/2026 → 6, 7, 8, 9, 10, 11, 12/2026 → 1, 2, 3/2027** (tăng đều, thiết kế tốt ✅) |
| Phần IV (34→41) | 5/2026, 1/2026, 5/2026, 10/2026, 6/2026, 9/2026, 11/2026, 12/2026 (nhảy loạn) |
| Phần V (42-46) | **5-6/2026** |
| Phần V (47-51) | không có mốc |

**Vấn đề:** phần III kết thúc ở **tháng 3/2027** (rule 33 — "Dũng tổng kết 1 năm zatsudan với 19 khách"), nhưng phần IV và V lại quay ngược về **5-6/2026**. Rule 51 (rule cuối sách) nói về "buổi tiệc Phase 4" trong khi rule 43 (`:18`) đặt "tiệc liên hoan Phase 4 closing" ở **tháng 5/2026** — tức rule cuối sách xảy ra TRƯỚC rule 33 gần 1 năm.

Rule 35 lệch mạnh nhất: mốc **1/2026**, sớm hơn cả rule 01 (5/2026) — tức là trước khi sách bắt đầu.

Phần III làm rất tốt (12 mốc tăng đều theo tháng, khớp với việc mỗi vùng miền gặp vào mùa lễ hội tương ứng). Chỉ cần chỉnh phần IV/V cho khớp trục.

### 7.5 Giả định kiến thức rule trước — hợp lý

Không phát hiện rule nào dùng khái niệm chưa được giới thiệu. Các khái niệm nền (5 cấp thân mật, 8:2, NG) đều được định nghĩa ở phần I trước khi phần II-V dùng lại. Rule 28 (Hiroshima) so sánh okonomiyaki với rule 26 (Osaka) — đúng thứ tự (26 trước 28) ✅.

---

## 8. Schema và dữ liệu JSON (phát sinh trong lúc rà cấu trúc)

### 8.1 🔴 L01 — `rule_id` vi phạm schema ở 39/51 file

`_schema/rule_conversation.schema.json:9-12` quy định:
```json
"rule_id": { "type": "string", "pattern": "^rule_[0-9]{2}$" }
```

Thực tế:

| Định dạng | Số file | Rule | Hợp lệ |
|---|---|---|---|
| `rule_09` … `rule_20` | **12** | phần II | ✅ |
| `08-01` … `08-51` | **39** | phần I, III, IV, V | ❌ VI PHẠM |

Nghĩa là **chỉ 12 file phần II hợp lệ**; 39 file còn lại sẽ fail validator. Ranh giới rất sạch — trùng đúng phần II, cho thấy phần II được sinh bởi một script khác với 4 phần kia.

### 8.2 🔴 L02 — `related_rules` sai kiểu ở 39/51 file

`_schema/…:31-35` quy định mảng **chuỗi**:
```json
"related_rules": { "type": "array", "items": { "type": "string", "pattern": "^rule_[0-9]{2}$" } }
```

Thực tế 2 định dạng cùng tồn tại:

**Hợp lệ (12 file, phần II):**
```json
"related_rules": ["rule_10", "rule_15", "rule_16"]
```

**Vi phạm (39 file):**
```json
"related_rules": [{"book": "08", "rule": "02", "topic": "Quy tắc 80/20"}]
```

Dạng object phong phú hơn (có `book` để trỏ sang sách khác — thực tế có dùng: trỏ sách 03, 06, 07). Nhưng schema chưa cho phép. **Cần chốt: hoặc nâng schema lên đỡ cả 2 dạng, hoặc chuẩn hóa dữ liệu về 1 dạng.** Khuyến nghị nâng schema theo dạng object vì nó biểu đạt được cross-book — thứ mà mục lục đã hứa.

### 8.3 🔵 L23 — `regional_focus` dùng nhưng chưa khai báo

`mục_lục.md:167` hứa: *"Schema v3 — thêm field gợi ý: `regional_focus` (string, optional) cho Phần III"*.

- **13 file JSON** đang dùng `regional_focus` (đúng bằng số rule phần III ✅ — dữ liệu làm đúng)
- **Schema KHÔNG khai báo field này** (grep `regional_focus` trong schema → 0 kết quả)

Schema không đặt `additionalProperties: false` nên hiện chưa fail, nhưng đây là nợ kỹ thuật: lời hứa "schema v3 có regional_focus" chưa được thực hiện ở phía schema.

### 8.4 🔴 L06 — 2 cross-reference off-by-one sót lại sau fix v1.1

Fix v1.1 sửa numbering trong `mục_lục.md` (STATUS.md:19) nhưng **không lan sang JSON**. Đối chiếu nhãn `topic` với tiêu đề thật của rule đích, phát hiện 2 chỗ sai thật (các chỗ khác chỉ là cách gọi tắt, chấp nhận được):

| File | Trỏ tới | Nhãn ghi | Tiêu đề THẬT của rule đích | Đúng phải là |
|---|---|---|---|---|
| `phần_III/rule_33_メモバンク/conversation.json` | rule **49** | "Memory bank duy trì lâu dài" | *Sách/báo/TV để có vốn nói / 雑談ネタ収集* | rule **50** |
| `phần_IV/rule_41_観光/conversation.json` | rule **44** | "Karaoke" | *一次会・二次会・締め* | rule **45** |

Cả hai đều lệch **đúng 1 đơn vị** — dấu vết của việc đánh số cũ (phần V từng là 41-50, nay là 42-51). Cùng loại lỗi mà v1.1 đã sửa cho mục lục nhưng bỏ sót trong JSON.

---

## 9. Phụ lục (đối chiếu lời hứa)

| Phụ lục | Mục lục hứa | Thực tế | Kết luận |
|---|---|---|---|
| A — Script template | key_phrases tổng hợp | có, ~600 dòng | ✅ |
| B — Vocab | "~250+ từ" | **559 dòng bảng** | ✅ vượt hứa |
| C — BJT practice | **"50 câu, J2-J1"** | **153 câu**, có cả J3 | 🟡 L16 — sai lời hứa 2 mặt (số lượng + cấp độ) |
| D — Templates | "~5 templates" | ~5 khối template lớn | ✅ |
| E — 47 prefectures | bảng 47 tỉnh | 68 dòng bảng | ✅ |

### 9.1 🔴 L03 — Phụ lục C: 117/153 câu gắn nhãn rule SAI

`phụ_lục_C_bjt_practice.md` gắn nhãn nguồn cho mỗi câu dạng `*(Rule NN, kỹ năng)*`. Thống kê:

| Nhãn | Số câu |
|---|---|
| `(Rule 08, …)` | **117** |
| `(Rule 12-20, …)` | 3 câu mỗi rule (đúng) |

**117 câu bị gán vào "Rule 08"** — nhưng nội dung của chúng trải khắp sách. Ví dụ:
- `:11` J3-01 về *timing bắt đầu 雑談* → thuộc **rule 01**, gắn `(Rule 08)`
- `:21` J3-02 về *8:2のルール* → thuộc **rule 02**, gắn `(Rule 08)`
- `:31` J3-03 về *chủ đề với khách lần đầu* → thuộc **rule 03**, gắn `(Rule 08)`
- `:41` J3-04 về *câu hỏi mở* → thuộc **rule 04**, gắn `(Rule 08)`
- `:51` J3-05 về *聞き上手 3 kỹ thuật* → thuộc **rule 05**, gắn `(Rule 08)`
- `:1399` J1-37, `:1409` J1-38, `:1419` J1-39 (cuối sách) → vẫn gắn `(Rule 08)`

**Nguyên nhân rõ ràng:** script sinh phụ lục đã điền **mã SÁCH (08)** vào chỗ đáng lẽ là **mã RULE**. Hệ quả: độc giả làm sai câu, muốn tra về rule gốc để ôn thì bị dẫn nhầm về rule 08 (8 chủ đề cấm) trong 117/153 trường hợp.

Cùng lỗi này xuất hiện ở:
- `phụ_lục_A_script_template.md`: **39** lần `Rule 08`
- `phụ_lục_D_templates.md`: **3** lần, gồm 2 heading sai rõ rệt:
  - `:7` `## Rule 08 — Memory bank — ghi nhớ chi tiết cụ thể với khách JP` → thực chất là **rule 33**
  - `:109` `## Rule 08 — Memory bank — duy trì lâu dài / 関係維持の記憶バンク` → thực chất là **rule 50**

Tổng cộng **159 nhãn sai** trên 3 phụ lục. Đây là lỗi lan rộng nhất trong sách và cần sửa bằng script (map lại từ nội dung câu hỏi về rule đúng), không sửa tay.

### 9.2 🔴 L04 — Phụ lục C: câu J3-04 mâu thuẫn đáp án

`phụ_lục_C_bjt_practice.md:41-49`:
```
**J3-04** *(Rule 08, 場面把握)*: 次のうち、開かれた質問はどれですか?
- A. 週末はいかがでしたか?
- B. 週末良かった?
- C. ゴルフ行きました?
- D. お元気ですか?

**Đáp án:** A
**Giải thích:** C dùng いかがでしたか = mở. A/B/D đều là Yes/No câu hỏi đóng.
```

**Đáp án ghi A, nhưng giải thích nói "C là câu mở, A/B/D là câu đóng" — tự mâu thuẫn.**

Đáp án **A đúng** (`週末はいかがでしたか` là câu hỏi mở). Phần giải thích bị sai: nó mô tả như thể phương án mở nằm ở C. Có vẻ thứ tự phương án đã bị xáo trộn sau khi viết giải thích, mà giải thích không được cập nhật theo.

Vì đây là lỗi lộ ra khi rà nhất quán phụ lục, tôi báo cáo ở đây; A1/A2/A3 không phụ trách phụ lục nên rất dễ lọt. **Cần rà lại toàn bộ 153 câu xem còn bao nhiêu câu cùng kiểu lỗi "xáo phương án nhưng quên sửa giải thích".**

---

## Lỗi cần sửa gấp nhất

Xếp theo (mức độ độc giả nhìn thấy) × (chi phí sửa):

1. **L03 — 159 nhãn `Rule 08` sai trong 3 phụ lục.** Lan rộng nhất, phá hoàn toàn chức năng tra ngược của phụ lục C. Sửa bằng script map nội dung→rule.
2. **L04 — J3-04 sai giải thích.** Sai kiến thức trực tiếp. **Kèm theo: phải rà cả 153 câu** tìm lỗi cùng loại.
3. **L07 — 6 rule lộ văn dàn ý ("Tham khảo. 1 scenario…").** Độc giả thấy ngay sách chưa hoàn thiện. Cần VIẾT nội dung thật, không phải sửa chữ.
4. **L05 — 28/51 tên rule trong mục lục lệch H1.** Sửa rẻ (sinh lại mục lục bằng script), lợi ích cao.
5. **L01 + L02 — 39/51 JSON vi phạm schema.** Chặn mọi bước validate/seed về sau. Cần chốt hướng trước (nâng schema vs chuẩn hóa dữ liệu).
6. **L08 — ruby trong H1 rule 51.** Sửa 2 dòng, tránh vỡ TOC khi build EPUB.
7. **L06 — 2 cross-ref off-by-one.** Sửa 2 dòng JSON.

---

## Ghi chú cho giai đoạn SỬA

**Nguyên tắc chung:** sách 08 có nền rất tốt — BJT 51/51, bảng Vocab 51/51, furigana 51/51, footer 51/51, đánh số 51/51 đều hoàn hảo. Lỗi tập trung ở **lớp meta** (mục lục, phụ lục, schema, nhãn khối), không ở nội dung hội thoại. Đừng đụng vào phần đang tốt.

1. **Sửa bằng script, không sửa tay** với: L03 (159 nhãn), L05 (28 tên mục lục), L09-L13 (chuẩn hóa nhãn khối). Cả 4 nhóm đều là biến đổi cơ học, sửa tay sẽ sót.

2. **Sinh lại `meta/mục_lục.md` từ nguồn sự thật.** Nguồn sự thật của tên rule là H1 trong `rule.md`. Mọi lần đổi tên rule về sau phải sinh lại mục lục — nếu không L05 sẽ tái phát (nó chính là hệ quả của việc `english_audit` sửa rule.md mà quên mục lục).

3. **Chốt hướng schema TRƯỚC khi sửa L01/L02.** Hai lựa chọn:
   - (a) Nâng schema v3 → v4: `rule_id` nhận cả `^rule_\d{2}$` và `^08-\d{2}$`; `related_rules` nhận object có `book`/`rule`/`topic`; khai báo `regional_focus`. **Khuyến nghị dạng này** vì nó giữ được cross-book reference mà `mục_lục.md:156-161` đã hứa.
   - (b) Ép 39 file về dạng string[] → **sẽ MẤT thông tin `book`** (các liên kết sang sách 03/06/07 biến mất). Không nên.

4. **L07 là việc VIẾT, không phải việc SỬA.** 5 rule 47-51 cần bối cảnh thật + nâng từ 2 lên 4 scenario để bằng mặt bằng. Đây là hạng mục tốn công nhất và nên giao cho agent viết nội dung, không phải agent sửa lỗi. Nó cũng đồng thời giải quyết L21.

5. **L20 (rule 33 ↔ 50 trùng) cần QUYẾT ĐỊNH BIÊN TẬP, không sửa máy móc.** Hai hướng: gộp làm một và lấp chỗ trống bằng rule mới, hoặc phân vai rõ (33 = *cách ghi*, 50 = *cách dùng lại sau nhiều tháng*) rồi viết lại luận điểm cho hết trùng câu chốt. Cần hỏi ý người phụ trách sách.

6. **L19 (mốc thời gian) — chỉ chỉnh phần IV và V.** Phần III (21→33) làm rất chuẩn, giữ nguyên. Cần chốt trục thời gian tổng: nếu rule 33 ở 3/2027 là điểm cuối thì phần IV/V phải nằm giữa 5/2026 và 3/2027, và rule 51 (rule cuối) phải là mốc muộn nhất. Riêng rule 35 (1/2026) sớm hơn cả rule 01 — sai rõ.

7. **Khi Việt hóa nhãn khối (L12/mục 6.3), làm 1 lượt duy nhất cho cả 51 rule** để không tạo thêm biến thể mới. Bộ nhãn đề xuất: `Tâm lý người Nhật` · `Bối cảnh` · `N tình huống thực chiến` · `Câu vàng dùng ngay` · `Tuyệt đối tránh` · `Bảng từ vựng` · `Luyện BJT`. Bỏ hẳn chú thích `(3 dòng)`/`(4 dòng)`.

8. **Thêm `NG` vào `_thuat_ngu.md` là việc gấp nhất trong nhóm thuật ngữ** — 503 lần dùng, 0 lần giải nghĩa, lại nằm ngay trong tiêu đề rule 08.

9. **Không cần chạy lại `english_audit` từ đầu.** Đợt trước làm tốt (sạch ~85%). Chỉ cần: (a) dọn 17 chỗ sót ở mục 6.2, (b) mở rộng phạm vi audit sang **nhãn khối/heading** — vùng mà audit cũ chưa soi.

10. **Sau khi sửa, phải build lại `output/`.** File `output/_combined.md` và `Hizashi_smalltalk_v1.1.epub` hiện là bản 15/06/2026, sẽ lỗi thời ngay khi sửa. Đồng thời cập nhật `_back_matter.md` (phiên bản + ngày, xem L24) và `meta/STATUS.md`.

---

*Báo cáo A4 — hoàn thành 2026-08-15.*
