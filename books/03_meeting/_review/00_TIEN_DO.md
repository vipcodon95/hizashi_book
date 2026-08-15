# Sách 03 Họp / 会議 — Bảng điều khiển rà soát

> **Nguồn sự thật** về tiến độ. Mọi agent cập nhật vào đây khi xong.
> Áp dụng `.claude/rules/book-review.md`. Ngày: 2026-08-15

## Quy mô (đã đếm `rule.md`, KHÔNG đếm thư mục — rule mục 1.2)
- **50 rule**: phần_I 8, phần_II 10, phần_III 14, phần_IV 10, phần_V 8
- ~3.970 dòng `rule.md` (~79 dòng/rule) + 50 `conversation.json`
- 4 phụ lục: A (script template), B (vocab), C (BJT practice), D (templates)
- **Không có thư mục rác** — khác sách 02 (10 cái `.placeholder`)
- Sách đã qua **3 review pass** → v1.1, apply 30 fix (13 JP keigo + 55 VN raw-kanji + 13 raw-kanji rule)

## ⚠️ PHẠM VI ĐỢT NÀY
**CHỈ SỬA `.md`. KHÔNG ĐỤNG `conversation.json`** (rule mục 0.3 — pipeline chỉ đọc `.md`).

## ✅ MAIN CLAUDE TỰ KIỂM CHỨNG TRƯỚC (thước đo đánh giá báo cáo agent)

### 1. Quét lỗi keigo điển hình (rule mục 4C) — 50 rule.md, đã strip ruby

| Pattern | Số ca | Kết luận |
|---|---|---|
| `二重敬語` ご〜になられる | 0 | sạch |
| `お伺いさせていただく` | 0 | sạch |
| `申させていただく` | 0 | sạch |
| `過剰敬語 ご請求書` | 0 | sạch |
| `さ入れ言葉` | 0 | sạch |
| `お声が遠い` (sai idiom) | 0 | sạch |
| `当社` | 0 | sạch |
| **`〜様` sau chức danh** | **4** | ⚠️ xem dưới |

### 2. ⚠️ 4 ca `部長様/リーダー様` ở rule_12 — **KHÔNG PHẢI LỖI**
Nằm trong khối **`## Hội thoại XẤU — gọi nội bộ bằng 様`** — sách **cố ý** dạy lỗi để học viên nhận diện. Ngay dưới có Matsumoto sửa lưng: 「自社の方を紹介する時は『様』も役職名も付けず、『弊社の〇〇』が正解ですよ」.
→ **Nếu agent nào báo đây là lỗi keigo thì báo cáo đó SAI.**

### 3. Cấu trúc 50 rule — ĐỒNG DẠNG TỐT
`## Bối cảnh / 場面`, `## Câu chốt`, `## Tránh`, `## Bảng từ vựng` đều **50/50**. Tốt hơn sách 08 (nhiều rule thiếu khối) và sách 02 (rule 01–04 khác hẳn 05–60).

### 4. Mục lục lệch — đã tách 2 loại
- **26/50 chỉ thiếu vế tiếng Nhật** sau dấu `/` (tên Việt khớp) → sửa máy móc
- **24/50 tên Việt KHÁC HẲN** — mục lục là bản **chưa Việt hoá**: `agenda`, `moderator / scribe`, `clarification`, `deadlock`, `Confirm timeline`, `data`
→ Cùng dạng sách 02 (lệch 60/60). Đồng bộ theo H1 của `rule.md`.

### 5. Tiếng Anh thừa trong `rule.md` — 17 chỗ (main Claude quét trước)
`confirm` 5 · `share` 4 · `deadline` 2 · `deadlock` 2 · `timeline` 1 · `update` 1 · `slide` 1 · `schedule` 1
→ Dùng làm đối chiếu: nếu agent báo số nhỏ hơn nhiều thì nó quét sót; báo lớn hơn nhiều thì có thể tính cả thuật ngữ IT hợp lệ.

## Phân công giai đoạn 1 (rà soát, CHỈ báo cáo)

| Agent | Phạm vi | File báo cáo | Trạng thái |
|---|---|---|---|
| D1 | `rule.md` phần I + II (18 rule) — chuẩn bị họp, mở họp | `_review/D1_rule_phan_I_II.md` | ✅ xong — 15 lỗi (🔴5/🟡7/🔵3) |
| D2 | `rule.md` phần III (14 rule) — thảo luận, phản biện, bế tắc | `_review/D2_rule_phan_III.md` | ✅ xong — 19 lỗi (🔴6/🟡9/🔵4) |
| D3 | `rule.md` phần IV + V (18 rule) + 4 phụ lục + mục lục + nhất quán | `_review/D3_phan_IV_V_va_nhat_quan.md` | ✅ xong — 21 lỗi (🔴6/🟡9/🔵6) |

## Nhật ký
- 2026-08-15: tạo `_review/`, tự kiểm chứng lập thước đo, tung 3 agent.

## 📋 MAIN CLAUDE ĐÁNH GIÁ BÁO CÁO

### D1 — ĐỘ TIN CẬY CAO ✅ (4/5 cáo buộc 🔴 đúng)
Điểm nổi bật: **D1 tự chặn phóng đại đúng như rule mục 3 dặn.** Con số thô raw-kanji là 469 ký tự / 84 dòng, nhưng D1 tự loại tên riêng (`松本`×21, `大垣`×26 — chủ ý để trần) và kanji đã ruby cùng dòng, chốt lại **41 dòng** phòng thủ được. Tương tự tiếng Anh thừa: loại `Zoom`, `Phase 2`, `Plan B` vì có trong bản Nhật → còn **5 chỗ**, khớp với thước đo của tôi (17 chỗ thô, trong đó nhiều cái hợp lệ).

| # | Cáo buộc | Kiểm chứng |
|---|---|---|
| 1 | rule_17 `お続けください` bị ghi là "khiêm nhường" | ✅ ĐÚNG — đây là `お+V+ください` = **tôn kính ngữ** |
| 2 | rule_14 chú thích biện hộ sai cho `ご確認` | ✅ ĐÚNG — `させていただく` cho thấy người nói CHÍNH LÀ người xác nhận → 過剰敬語 |
| 3 | rule_04 `ご確認しよう` + được khen trong chú thích | ✅ ĐÚNG |
| 4 | rule_06 Linh (nhân viên mới) đọc câu khai mạc | ✅ ĐÚNG — rule_09 có hẳn `司会を務めさせていただく` cho Dũng; rule_13/14 cũng vậy |
| 5 | rule_05 mâu thuẫn ngưỡng file 5MB vs 10MB | ❌ **SAI** — file chỉ có MỘT ngưỡng 10MB (d63), không hề có "< 5MB" ở d3 |

**D1 xác nhận lại giúp 2 thước đo của tôi:** 4 ca `様` rule_12 đúng là Hội thoại XẤU cố ý; và thứ tự 自社→他社 của rule_12 là ĐÚNG chuẩn Nhật (①自社⇒他社 ②目下⇒目上) — D1 chủ động đưa vào CẤM SỬA vì "agent quen lễ nghi Việt (khách trước) rất dễ báo nhầm là ngược". Đây là loại cảnh báo có giá trị thật.

## ✅ ĐÃ SỬA (main Claude, sau kiểm chứng)
| # | Rule | Việc | Chỗ |
|---|---|---|---|
| 1 | rule_17 | `お続けください` "cụm khiêm nhường" → **tôn kính ngữ (お+V+ください)** | 1 |
| 2 | rule_14 | Bỏ `ご` ở `ご確認させていただきます` (thoại + chú thích) + viết lại lời giải thích, nêu rõ vì sao `ご相談させて`/`ご共有させて` thì ĐÚNG | 3 |
| 3 | rule_04 | `ご確認しよう` → `確認を取ろう` (thoại + chú thích) | 2 |
| 4 | rule_04 | Xưng hô: Hải vừa gọi Dũng "em" vừa tự xưng "anh" trong 1 câu → `OK anh. Em gửi lại…` | 1 |
| 5 | rule_06 | Người khai mạc `リン` (nhân viên mới) → `ズン` (司会, khớp rule_09/13/14) | 2 |

**TỔNG: 9 chỗ**

⚠️ **Lại dính bẫy ruby (rule mục 1.1) lần thứ 4:** `grep "開始いたします"` và `grep "月例会議"` đều trả rỗng dù chuỗi có thật — kanji bị `<ruby>` chen giữa. Suýt tưởng file hỏng. Luôn strip ruby trước khi kết luận.

### D2 — ĐỘ TIN CẬY CAO ✅ (3/3 cáo buộc kiểm chứng đều đúng)
Tự chặn phóng đại: script thô trả ~140 ca raw-kanji cho phần III, D2 tự loại tên nhân vật + khối theo quy ước → chốt **6**. Cùng cách làm của D1.
| Cáo buộc | Kiểm chứng |
|---|---|
| rule_20 `どなた様になりますでしょうか` trong khối **TỐT** | ✅ ĐÚNG — xác minh nằm ở dòng 31–45 = khối TỐT. 二重敬語 (どなた đã tôn kính) + バイト敬語 (〜になります) |
| rule_23 `ご検討させていただけません` 過剰敬語, cũng trong khối TỐT | ✅ ĐÚNG — **bằng chứng đối chứng mạnh**: rule_25 dùng `検討させていただけません` (không ご) ở 2 chỗ → rule_23 là lỗi sót |
| rule_25 luận điểm `即決を求められない` vs Ōgaki đòi ký hôm nay | ✅ ĐÚNG — d23 Ōgaki nói `本日中に契約を進めたい` |

**Phát hiện riêng của D2 — bug hệ thống rule chưa có:** khối `Hội thoại TỐT` lặp lời mở của khối `XẤU`, khi lặp thì **mất 100% ruby** (6 câu ở rule 21/22/24/25/29×2). D2 cảnh báo bug này nhiều khả năng có ở cả 4 phần còn lại.

### D3 — ĐỘ TIN CẬY CAO ✅ (3/4 đúng)
| Cáo buộc | Kiểm chứng |
|---|---|
| Phụ lục A+B mang tiêu đề **SÁCH 02** | ✅ ĐÚNG — "Nền tảng trước nhấc máy", "Nhận điện thoại", "Gọi điện thoại đi" trong sách HỌP |
| Phụ lục C J2.6 + J3.22 đáp án ↔ giải thích ngược | ✅ ĐÚNG cả hai — J2.6 chấm A nhưng giải thích nói `Bが正確に表す`; J3.22 chấm D nhưng giải thích nói `選択肢はC` |
| rule_48 `お出まし` là kính ngữ hoàng gia | ✅ ĐÚNG — WebSearch 宮内庁 xác nhận; bản đúng `ご出席` đã có sẵn ở phụ lục A → fix nửa vời |
| rule_39 `5月末` mâu thuẫn `7月末` | ❌ **SAI** — `5月末` ở rule_07/08 là **納期 Phase 2** (deadline giao hàng), `7月末` là **リリース** (ngày phát hành). Hai mốc KHÁC NHAU, không mâu thuẫn |

**D3 xác nhận sách 03 KHÔNG dính bug nhãn rule kiểu sách 08** — map ngược 50/50 câu phụ lục C đều đúng. Và front matter **sạch tuyệt đối** (97 mẫu câu / 50 câu BJT / 50 rule đều khớp) — khác sách 02 hứa suông.

## ✅ ĐÃ SỬA (main Claude, sau kiểm chứng) — TỔNG 18 chỗ

**Từ D1 (9 chỗ):** rule_17 phân loại keigo · rule_14 bỏ `ご` + viết lại giải thích · rule_04 `ご確認しよう`→`確認を取ろう` + xưng hô Hải · rule_06 đổi vai người khai mạc リン→ズン

**Từ D2 (3 chỗ):** rule_20 `どなた様になりますでしょうか`→`どちらの方でいらっしゃいますか` · rule_23 bỏ `ご` ở `ご検討させて` (thoại + chú thích)

**Từ D3 (6 chỗ):** phụ lục C J2.6 giải thích JA+VN · J3.22 giải thích JA+VN · rule_48 `お出まし`→`ご出席` (3 chỗ: thoại + chú thích + bảng từ vựng) · rule_37 bỏ mnemonic "4F" bịa

## Lỗi đã xác nhận

## CẤM SỬA (chỗ ĐÚNG dễ bị sửa nhầm)
- **rule_12 — 4 ca `様` sau chức danh**: nằm trong Hội thoại XẤU cố ý, có nhân vật sửa lưng ngay dưới.
- Mọi khối `## Hội thoại XẤU` trong toàn sách: chứa lỗi CỐ Ý để dạy. Đọc kỹ tiêu đề khối trước khi báo lỗi.

---

## Đợt bổ sung — xử 2 việc 🟡 còn treo (+ 1 lỗi hệ thống phát hiện thêm)

| # | File | Sửa |
|---|---|---|
| 1 | `rule_22_同意表現` d1 (H1) | `Đồng ý lịch sự — 5 levels` → `Bày tỏ mức độ tán thành — 5 mức` |
| 2 | `rule_22` d3 (luận điểm) | Khai "5 mức **đồng ý**" nhưng mức 4 是 中立, mức 5 是 異論あり → viết lại thành "5 mức **tán thành**", nói rõ 3 mức đầu là đồng ý, mức 4 hoãn phán đoán, mức 5 không đồng ý nhưng nói mềm |
| 3 | `rule_22` d5 (JA) | `同意は「はい」だけではない` → `「はい」か「いいえ」だけではない` |
| 4 | `rule_22` d31, 40-45, 64 | `Level 1..5` / `level đồng ý` → `Mức 1..5` + thêm chú giải Việt mỗi mức |
| 5 | `meta/mục_lục.md` d74 | Đồng bộ tên + `5 levels` → `5 mức` |
| 6 | `rule_25_持ち帰り検討` d3 | **稟議 bị định nghĩa nhầm thành nghĩa của 根回し** — "ra quyết định cần sự đồng thuận nội bộ (稟議)" → sửa thành tờ trình 稟議書 đi vòng xin đóng dấu qua từng cấp; thêm lý do vì sao người dự họp không chốt tại chỗ |
| 7 | `rule_25` d73 (bảng từ vựng) | `Quy trình duyệt nội bộ JP` (mơ hồ) → `Tờ trình đi vòng xin đóng dấu phê duyệt qua từng cấp` |
| 8 | **47/50 rule.md** | Emoji `📝` bị strip ở dòng ` **Ghi chú:**` — **cùng lỗi hệ thống với sách 04** (sách 04 là 40/40) |

### Phân biệt 稟議 vs 根回し (căn cứ sửa #6)

| | Bản chất | Hình thức |
|---|---|---|
| **稟議** ringi | Thủ tục **chính thức** | Soạn 稟議書 → chuyển vòng qua các cấp → mỗi cấp đóng dấu |
| **根回し** nemawashi | Vận động **không chính thức**, TRƯỚC khi họp | Gặp riêng từng người, thăm dò, tạo đồng thuận ngầm |

Bản cũ lấy nghĩa của 根回し gán cho 稟議 → học viên hiểu sai cả hai khái niệm.

### Báo động sai tôi tự tạo rồi tự bác

Quét cross-ref thấy `rule_17 d7: Rule 25 (gọi báo trễ)` — tưởng sai vì rule 25 là 持ち帰り検討.
Đọc cả dòng thì là **「Sách 02 Rule 25」** — rule sách khác. Regex của tôi cắt mất chữ "Sách 02".
Tương tự `rule_47 d8` là "Sách 01 Rule 25-32". **Không có lỗi.**

→ Bài học: cross-ref trong bộ sách này có 2 dạng — trong sách và **liên sách**.
Quét phải giữ đủ tiền tố `Sách NN` mới kết luận được.

### ⚠️ Tồn đọng NGOÀI phạm vi — chờ chủ nhà quyết

`git status` cho thấy 2 file còn sửa dở **từ phiên trước** (không phải đợt này):
- `nội_dung/phụ_lục/phụ_lục_C_bjt_practice.md` — 4 chỗ: đáp án ghi D nhưng giải thích viết C (lỗi thật)
- `scripts/build_appendices.py` — 9 chỗ tương ứng

Đây chính là lần bị nhắc *"tại sao lại đi check cái đó, chúng ta đang check nội dung cơ mà?"*.
Nội dung sửa đúng, nhưng phụ lục là file **sinh tự động** → ngoài phạm vi. **Chưa commit, chưa hoàn nguyên.**
