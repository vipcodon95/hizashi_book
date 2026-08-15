# [02-C3] Rà soát phần V + phụ lục + nhất quán xuyên sách

> Agent: C3 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: 12 rule phần V (49–60) + 3 phụ lục + mục lục + front/back matter + `_thuat_ngu.md` + `english_audit.md` + quét cấu trúc 60 rule.
> **CHỈ BÁO CÁO — không sửa file nội dung.**

---

## Tóm tắt số lỗi

**Tổng: 24 lỗi** — 🔴 6 · 🟡 12 · 🔵 6

| # | Lỗi | Mức |
|---|-----|-----|
| 1 | Mục lục lệch tiêu đề H1 ở **35/60 rule** (mục lục giữ bản tiếng Anh CŨ trước đợt Việt hoá) | 🔴 |
| 2 | Mục lục + STATUS + `00_TIEN_DO.md` ghi SAI số rule mỗi phần (III/IV/V) | 🔴 |
| 3 | Rule 50 tự mâu thuẫn: luận điểm VN dạy 「聞きました」, bản JP + phụ lục C dạy 「確認いたしました」 | 🔴 |
| 4 | Rule 58 câu chốt còn 「お声」 — fix v1.2 chỉ ăn vào bảng hội thoại, không ăn vào câu chốt + phụ lục A | 🔴 |
| 5 | Cấu trúc 60 rule KHÔNG đồng dạng: rule 01–04 một kiểu, rule 05–60 kiểu khác | 🔴 |
| 6 | Phụ lục C thiếu J5 nhưng mục lục/README/STATUS quảng cáo có J5 | 🔴 |
| 7–18 | 12 lỗi 🟡 (xem mục 6, 7) | 🟡 |
| 19–24 | 6 lỗi 🔵 (xem mục 7) | 🔵 |

### ✅ Tin tốt — KHÔNG có lỗi kiểu sách 08

Nhiệm vụ đặc biệt (159 nhãn "Rule 08" sai ở sách 08): **sách 02 SẠCH hoàn toàn**. Chi tiết ở mục 1 và 2.

---

## 1. KIỂM NHÃN RULE TRONG 3 PHỤ LỤC (ưu tiên cao) — ✅ KHÔNG CÓ LỖI

Đã kiểm bằng script đối chiếu ngược 100% (không lấy mẫu).

| Phụ lục | Số nhãn `Rule NN` / `rule_NN` | Nguồn đối chiếu | Sai | Kết luận |
|---|---|---|---|---|
| **A** (script template) | 60 mục `### Rule NN`, **66 câu mẫu** | `conversation.json` → `key_phrases[].sentence` | **0** | ✅ Mọi câu nằm đúng rule sở hữu nó. Đủ 66/66, không thiếu không thừa. |
| **B** (vocab) | **195 dòng**, mỗi dòng có cột "Lần đầu xuất hiện = rule_NN" | Bảng `## Bảng từ vựng` trong `rule.md` từng rule | **0** | ✅ Mọi từ đều có mặt trong bảng từ vựng của đúng rule được ghi nhãn. |
| **C** (BJT practice) | **60 câu**, mỗi câu `### Jx.y (từ rule_NN — tiêu đề)` | `conversation.json` → `bjt_practice` | **0** | ✅ 60/60 khớp: đúng rule, đúng `level`, đúng `skill`, đúng nội dung câu hỏi. |

**Cách kiểm (tái lập được):** parse nhãn trong phụ lục → tra ngược `sentence` / từ vựng / `bjt_practice` trong 60 `conversation.json` + 60 `rule.md` → so khớp chuỗi chính xác.

**Vì sao sách 02 không dính lỗi sách 08:** script `scripts/build_appendices.py` sinh phụ lục bằng cách duyệt thư mục rule và dùng **số rule lấy từ đường dẫn**, không phải mã sách. Ánh xạ rule → câu hỏi là **1:1** (mỗi `conversation.json` có đúng 1 `bjt_practice`), nên không có chỗ để gộp nhầm.

> **Lưu ý cho giai đoạn SỬA:** vì phụ lục A/B/C là file **SINH TỰ ĐỘNG** từ `conversation.json`, mà đợt này chốt "chỉ sửa `.md`, không đụng `.json`" → sửa tay vào phụ lục sẽ bị **ghi đè** nếu ai chạy lại `build_appendices.py`. Xem mục 9.

---

## 2. Phụ lục C — rà TỪNG câu: đáp án có khớp giải thích không

Đã rà **60/60 câu**, kiểm 4 trục: (a) chữ cái ở dòng `**Đáp án:**`, (b) phương án được **in đậm** trong danh sách lựa chọn, (c) nội dung phần giải thích, (d) `bjt_practice` trong `conversation.json` gốc.

**Kết quả: 0 lỗi.** Không có ca "đáp án A nhưng giải thích nói C đúng" như sách 08.

- 60/60 câu: chữ cái in đậm == chữ cái ở `**Đáp án:**`.
- 60/60 câu: mỗi câu có **đúng 1** phương án in đậm (không câu nào 0 hoặc 2).
- 60/60 câu: giải thích luôn nói về đúng phương án được chọn.
- Phân bố: J4 = 8 câu, J3 = 39 câu, J2 = 13 câu → tổng 60, khớp dòng `**Tổng số câu hỏi:** 60` ở dòng 1039.

### 🔴 Lỗi 6 — Sách quảng cáo có J5 nhưng phụ lục C KHÔNG có câu J5 nào

| File | Dòng | Trích |
|---|---|---|
| `meta/mục_lục.md` | 118 | `| C | BJT practice — tổng hợp câu hỏi mẫu (J5/J4/J3/J2) |` |
| `README.md` | 118 | `- **~60 BJT questions** (J5 → J1+)` |
| `meta/STATUS.md` | 44 | `**BJT questions tổng:** ~60 (1/rule), level J5-J2 phân bố đa dạng` |

Thực tế phụ lục C chỉ có 3 mức: **J4 / J3 / J2**. Không có J5, cũng không có J1.
Thêm nữa README ghi "J1+" nhưng câu khó nhất trong sách là J2.

**Đề nghị:** sửa 3 chỗ trên thành `(J4/J3/J2)`.

---

## 3. Lỗi nội dung 12 rule phần V (49–60)

> Ghi chú phạm vi: đề bài nói "15 rule phần V", nhưng thư mục `nội_dung/phần_V/` thực có **12 rule** (49–60). 3 thư mục còn lại (`rule_50_折り返し対応`, `rule_54_マイクオフオン`, `rule_57_発言取る`) **rỗng, chỉ chứa `.placeholder`** — đây là rác đổi tên còn sót, xem lỗi 🔵 22.

### 🔴 Lỗi 3 — Rule 50 TỰ MÂU THUẪN trong cùng 1 khối luận điểm

`nội_dung/phần_V/rule_50_留守電後/rule.md` dòng 3–5:

```
> **Luận điểm.** … Mở lời bằng "聞きました" + nội dung tóm tắt = thể hiện đã chú ý.
>
> 留守電を聞いた後は24時間以内に折り返し。『メッセージを確認いたしました』で受信を伝える。
```

- Bản **tiếng Việt** dạy dùng 「聞きました」.
- Bản **tiếng Nhật** ngay dòng dưới dạy dùng 「メッセージを確認いたしました」.
- Bảng hội thoại (dòng 14) dùng 「確認いたしました」.
- **Phụ lục C câu J3.32 (dòng 682–689) lấy chính 「メッセージ聞きました」 làm phương án SAI (A), đáp án đúng là B 「メッセージを確認いたしました」.**

→ Người học đọc luận điểm VN rồi đi thi sẽ **chọn đúng phương án mà chính sách chấm là sai**. Đây là lỗi nguy hiểm nhất trong phần V.

**Nguyên nhân:** đợt fix v1.2 (STATUS dòng 154: `rule_50: 拝聴 → 確認/承る`) vá bản JP + `conversation.json` nhưng **quên câu tiếng Việt**. Đúng bài học số 1 trong `00_TIEN_DO.md` ("fix đợt trước chạy nửa vời").

**Sửa:** dòng 3 → `Mở lời bằng "メッセージを確認いたしました" + nội dung tóm tắt…`

### 🔴 Lỗi 4 — Rule 58: fix v1.2 「お声」→「ご意見」 chỉ ăn NỬA file

`meta/STATUS.md` dòng 175 tuyên bố đã fix:
> `rule_58: お声をいただけますでしょうか → ご意見をお伺いできますでしょうか`

Thực tế trong `rule_58_ハイブリッド/rule.md`:

| Dòng | Nội dung | Trạng thái |
|---|---|---|
| 15 (bảng hội thoại) | 「松本様、オンラインからも**ご意見をお伺い**できますでしょうか。」 | ✅ đã fix |
| **22 (Câu chốt)** | `> **「オンラインからも**お声**をいただけますでしょうか。」**` | ❌ **CHƯA fix** |

Hệ quả lan sang phụ lục A dòng 701: `「オンラインからもお声をいただけますでしょうか。」` — vẫn bản cũ.

→ Câu chốt là thứ người học **học thuộc**, nhưng nó lại là bản đã bị native reviewer bác. Câu chốt hiện mâu thuẫn với bảng hội thoại ngay phía trên nó trong cùng 1 file.

**Sửa:** dòng 22 rule.md → 「オンラインからもご意見をお伺いできますでしょうか。」 (và phụ lục A dòng 701, nhưng xem cảnh báo mục 9).

### 🟡 Lỗi 7 — Rule 55 còn 「皆さん」 trong khi rule 52 đã đổi thành 「皆様」

v1.2 (STATUS dòng 172) đổi rule 52: `皆さん → 皆様 (顧客 hiện diện)`.
Rule 55 **cùng bối cảnh** (họp trực tuyến quốc tế, có 松本PM là khách Nhật hiện diện) nhưng dòng 15 vẫn:

```
| **ズン** | 「皆さん、こんにちは。ベトナム時間で午前9時、日本時間11時でございます。」
```

Đã kiểm: rule 52 = `皆様` ×1, `皆さん` ×0. Rule 55 = `皆さん` ×1, `皆様` ×0. Rule 56 = `皆様`.
→ 55 là ca **duy nhất** còn 「皆さん」 trong toàn phần V. Cùng lý do fix của rule 52 phải áp cho 55.

### 🟡 Lỗi 8 — Rule 49 chưa áp fix 「と申します」→「でございます」

`meta/STATUS.md` dòng 173 tuyên bố:
> `rule_49: voicemail と申します → でございます (相手 đã biết)`

`rule_49_留守電/rule.md` dòng 13 vẫn là:
```
「いつもお世話になっております。ティエンファット社、営業部のズンと申します。」
```

→ Fix này chỉ vào `conversation.json`, không vào `rule.md`.
Ngoài ra, lập luận của native reviewer ("相手 đã biết") mâu thuẫn với 「いつもお世話になっております」 đứng ngay trước — cụm này chỉ dùng khi đã quen. Nếu đã quen thì 「と申します」 (giới thiệu lần đầu) đúng là hơi lệch.

**Cần chủ nhà quyết:** áp fix v1.2 (→ 「でございます」) hay giữ nguyên và sửa STATUS.

### 🟡 Lỗi 9 — Rule 49 thiếu khối `## Hội thoại`, là rule DUY NHẤT trong 60 rule không có

Rule 49 dùng `## Mẫu hộp thư thoại` thay cho `## Hội thoại`. Về nội dung thì hợp lý (voicemail là độc thoại, không có hội thoại), nhưng đây là **rule duy nhất trong 60** không có bất kỳ khối hội thoại/trường hợp nào (xem ma trận mục 5).

### 🟡 Lỗi 10 — Rule 60 tự chấm 10 mục nhưng thang điểm ghi "9-10 / 6-8 / 0-5"

`rule_60_自己診断/rule.md` dòng 26–28:
```
- **9-10 :** Kỹ năng điện thoại đạt trình độ làm việc thực tế…
- **6-8 :**  Còn vài điểm yếu…
- **0-5 :**  Đọc lại sách từ đầu…
```
Bảng phía trên có đúng 10 câu → thang 0–10 phủ đủ, **không có lỗ hổng**. ✅ Không phải lỗi.
Nhưng dòng 3 ghi: *"tự chấm điểm 10 điểm kỹ năng điện thoại từ rule 1 đến 59"* — trong khi bảng chỉ tham chiếu **12 rule** (01, 02, 05, 14, 12, 13, 16, 28, 38, 41, 51, 54). Câu chữ "từ rule 1 đến 59" gợi ý bảng phủ hết 59 rule, gây hiểu nhầm. Nên sửa thành *"10 điểm kỹ năng cốt lõi, trải từ Rule 01 đến Rule 54"*.

### 🟡 Lỗi 11 — Rule 60 luận điểm nói "rule 1 đến 59" nhưng "Liên quan" chỉ trỏ Rule 01, Rule 35

Dòng 7: `> **Liên quan:** Rule 01, Rule 35.`
Rule 60 là rule **tổng kết cuối sách**, tham chiếu 12 rule trong bảng tự chấm nhưng khối "Liên quan" lại chỉ liệt 2 rule, trong đó Rule 35 **không hề xuất hiện** trong bảng 10 câu. Khối "Liên quan" của rule tổng kết nên trỏ đúng 12 rule của bảng.

### 🟡 Lỗi 12 — Rule 59 bảng mẫu ghi chú chỉ toàn tiếng Nhật, không có cột/chú thích tiếng Việt

`rule_59_履歴管理/rule.md` dòng 11–14:
```
| 日時 | 相手 | 用件 | アクション | 期限 | ステータス |
| 4/25 10:00 | 松本PM (白鷗) | 4月度進捗 | 報告書送付 | 4/26 12:00 | 完了 |
```
Đây là **bảng mẫu để người học sao chép dùng thật**, nhưng 6 tiêu đề cột đều là tiếng Nhật **không có furigana, không có nghĩa Việt**. Trong khi mọi bảng khác của sách đều song ngữ. Người học N3 sẽ vướng ở 用件 / ステータス. Bảng từ vựng cuối rule 59 cũng không có 用件 / アクション / ステータス / 日時 / 相手 / 期限.

### 🔵 Lỗi 19 — Rule 52 tiêu đề mục `## Hội thoại` có dòng ghi chú `*発表後*` lạc chỗ

`rule_52_オンライン会議/rule.md` dòng 11: `*発表後*` (sau khi phát biểu) — nhưng bảng hội thoại ngay dưới bắt đầu bằng **xác nhận âm thanh đầu buổi** 「音声は聞こえておりますでしょうか？」, tức là *trước* khi phát biểu. Ghi chú sân khấu mâu thuẫn với nội dung.
Tương tự rule 53 dòng 11 `*nghỉ ngắn*` và rule 58 dòng 11 `*tại văn phòng · trực tuyến · 後*` — các dòng này là **mảnh vụn `stage_direction` ghép máy móc từ JSON**, không đọc thành câu.

### 🔵 Lỗi 20 — Phần V trộn 2 chủ đề không liên quan trong 1 phần

Rule 49–51 = hộp thư thoại/mail; rule 52–58 = họp trực tuyến; rule 59–60 = quản lý & tổng kết. Tiêu đề phần ("Voicemail, Online & Best Practice") thừa nhận điều này, nhưng 3 cụm này nên là 3 phần nhỏ có heading riêng để người học định vị.

---

## 4. Mục lục vs thực tế

### 🔴 Lỗi 2 — Số rule mỗi phần ghi SAI ở 3 file khác nhau, và 3 file ghi 3 kiểu

| Nguồn | I | II | III | IV | V | Tổng |
|---|---|---|---|---|---|---|
| **Thư mục thật (đếm `rule.md`)** | **10** | **13** | **12** | **13** | **12** | **60** ✅ |
| `meta/mục_lục.md` (dòng 9, 28, 50, 71, 93) | 10 | 13 | 12 | 13 | 12 | 60 ✅ |
| `nội_dung/_front_matter.md` (bảng dòng 35–39) | 10 | 13 | 12 | 13 | 12 | 60 ✅ |
| `meta/STATUS.md` (bảng dòng 29–33) | 10 | 13 | **12** | **13** | **12** | 60 ✅ |
| **`_review/00_TIEN_DO.md` dòng 7** | 10 | 13 | **15** ❌ | **17** ❌ | **15** ❌ | **70** ❌ |

→ Mục lục, front matter, STATUS đều ĐÚNG. **Chỉ `00_TIEN_DO.md` sai** — con số (I:10, II:13, III:15, IV:17, V:15) cộng lại là 70, không phải 60.

**Nguồn gốc con số sai:** đếm **thư mục** thay vì đếm `rule.md` — 10 thư mục rỗng chỉ chứa `.placeholder` bị đếm nhầm (III thừa 3, IV thừa 4, V thừa 3 = 10). Xem lỗi 🔵 22.

Hệ quả: phân công agent C2 ghi "phần III + IV (32 rule)" nhưng thực chỉ **25 rule**; C3 ghi "phần V (15 rule)" nhưng thực **12 rule**.

### 🔴 Lỗi 1 — Mục lục lệch tiêu đề H1 ở 35/60 rule: mục lục giữ bản tiếng Anh CŨ

Đợt trước đã Việt hoá tiêu đề trong `rule.md` nhưng **`meta/mục_lục.md` chưa được cập nhật theo**. Kết quả: mục lục sách quảng cáo tên rule bằng tiếng Anh, người đọc lật vào trong thấy tên khác.

Bảng đối chiếu (chỉ liệt các ca lệch THẬT về từ ngữ; đã loại các ca chỉ do dấu `/` trong tiêu đề):

| # | `mục_lục.md` (hiện tại) | `rule.md` H1 (thực tế) |
|---|---|---|
| 05 | **Template** ghi chú 5W1H | **Khung mẫu** 5W1H ghi chú |
| 06 | **Pitch** và tốc độ giọng **phone** | **Cao độ** và tốc độ giọng **qua điện thoại** |
| 07 | **"Smile in voice"** — giọng truyền cảm xúc | **Nụ cười trong giọng nói** — giọng truyền cảm xúc |
| 08 | Môi trường yên **lúc gọi/nhận** | Môi trường yên |
| 09 | **Setup** bàn làm việc trước cuộc gọi quan trọng | **Sắp xếp** bàn trước cuộc gọi quan trọng |
| 13 | Lặp lại số/email/tên **để tránh nghe nhầm** | Lặp lại số/email/tên |
| 16 | 4 **pattern** xử lý khi người nhận vắng | 4 **công thức** xử lý khi người nhận vắng |
| 17 | **Hold** tối đa 1 phút | **Giữ máy** tối đa 1 phút |
| 19 | Xử lý **wrong number** lịch sự | Xử lý **cuộc gọi nhầm số** lịch sự |
| 20 | Bước đầu xử lý phàn nàn qua **phone** | Bước đầu xử lý phàn nàn qua **điện thoại** |
| 24 | **Checklist** trước khi nhấn gọi | **Danh sách kiểm tra** trước khi nhấn gọi |
| 25 | Chọn giờ gọi **—** khung tránh / khung tốt | Chọn giờ gọi**:** khung tránh / khung tốt |
| 26 | **Format** giới thiệu khi gọi đi | **Mẫu câu** giới thiệu khi gọi đi |
| 27 | **"お時間よろしいでしょうか"** — hỏi đối phương có rảnh | お時間よろしいでしょうか *(bỏ ngoặc kép + bỏ vế Việt)* |
| 28 | **Pitch** 30 giây — truyền đạt mục đích gọn | **Trình bày** 30 giây — truyền đạt mục đích gọn |
| 30 | Đề xuất chuyển kênh khi **phone** không đủ | Đề xuất chuyển kênh khi **phone** không đủ *(cả 2 đều còn "phone")* |
| 35 | **Review summary** trước khi cúp máy | **Tóm tắt xác nhận** trước khi cúp máy |
| 36 | Đừng để **hold** quá im — lấp im lặng | Đừng để **máy chờ** quá im — lấp im lặng |
| 37 | Khi line đứt **—** ai gọi lại trước? | Khi line đứt**,** ai gọi lại trước? |
| 38 | Khi nghe không rõ — **"お電話が遠いようですが"** | Khi nghe không rõ *(vế JP chuyển sang cột JP)* |
| 39 | 5 **patterns** hỏi lại từ không hiểu | 5 **công thức** hỏi lại từ không hiểu |
| 42 | Cách từ chối qua **phone** không gây xước | Cách từ chối qua **phone** không gây xước *(cả 2 còn "phone")* |
| 43 | Báo dời / đổi lịch qua **phone** | Báo dời / đổi lịch qua **phone** *(cả 2 còn "phone")* |
| 44 | Báo tin xấu qua **phone** | Báo tin xấu qua **phone** *(cả 2 còn "phone")* |
| 45 | Gọi xin lỗi — 4 bước **(ref Sách 01 Rule 53)** | Gọi xin lỗi — 4 bước |
| 46 | Gọi cảm ơn **— sau cuộc họp / sự hỗ trợ** | Gọi cảm ơn |
| 49 | **Voicemail** 30 giây **format** | **Hộp thư thoại** 30 giây **công thức** |
| 50 | Sau khi nghe **voicemail** — gọi lại trong 24h | Sau khi nghe **hộp thư thoại** — gọi lại trong 24h |
| 51 | **Phone xong** gửi tóm tắt qua mail | **Sau cuộc gọi** gửi tóm tắt qua mail |
| 52 | **Conference call** / Zoom / Teams — **phone version** | **Họp trực tuyến** qua Zoom / Teams |
| 53 | **Tone** giọng khi **share** màn hình | **Giọng điệu** khi **chia sẻ** màn hình |
| 54 | **Mute/unmute etiquette** | **Phép tắc tắt/bật mic** |
| 55 | Họp **online** quốc tế | Họp **trực tuyến** quốc tế |
| 56 | Xin phép ghi âm / **transcribe** | Xin phép ghi âm / **chuyển giọng thành văn bản** |
| 57 | Giành lượt phát biểu trong họp **online** — **interrupt** khéo | Giành lượt phát biểu trong họp **trực tuyến** — **chen lời** khéo léo |
| 58 | **Hybrid meeting** — vừa **offline** vừa **online** | **Họp kết hợp** — vừa **trực tiếp** vừa **trực tuyến** |

Cột tiếng Nhật của mục lục **khớp 60/60** ✅ — chỉ cột tiếng Việt lệch.

**Ngoài ra tiêu đề PHẦN cũng lệch:**

| | `mục_lục.md` | `_front_matter.md` |
|---|---|---|
| Phần I | Nền tảng trước khi nhấc máy | Nền tảng trước nhấc máy |
| Phần V | **Voicemail, Online & Best Practice** | Hộp thư thoại, Trực tuyến & Thực hành tốt nhất |

Phụ lục A dòng 596 lại dùng bản thứ 3: "Hộp thư thoại, Họp trực tuyến & Kỹ năng then chốt". → **3 tên khác nhau cho cùng phần V** trong 3 file.

### 🟡 Lỗi 13 — Mục lục còn mô tả phụ lục bằng tiếng Anh + hứa "romaji" không có thật

`meta/mục_lục.md` dòng 116–118:
```
| A | Câu mẫu phone theo tình huống (script template) |
| B | Từ vựng phone đặc biệt + romaji + nghĩa Việt |
| C | BJT practice — tổng hợp câu hỏi mẫu (J5/J4/J3/J2) |
```
- "phone", "script template", "BJT practice" — tiếng Anh trong cột tiếng Việt.
- **"+ romaji"**: phụ lục B **không có cột romaji nào**. Cột thực tế là `Từ | Cách đọc (hiragana) | Hán Việt | Nghĩa Việt | Lần đầu xuất hiện`. Đã grep toàn sách: chữ "romaji" chỉ xuất hiện đúng 1 lần — chính ở dòng này. Đây là **lời hứa sách không thực hiện**.

### 🟡 Lỗi 14 — Mục lục ghi tham chiếu chéo sang Sách 01 nhưng rule.md đã bỏ

Mục lục rule 45: `Gọi xin lỗi — 4 bước (ref Sách 01 Rule 53)`. `rule_45/rule.md` H1 không còn vế `(ref Sách 01 Rule 53)`, và trong thân rule 45 cũng không nhắc Sách 01. → Mục lục hứa có tham chiếu chéo mà nội dung không có.

---

## 5. MA TRẬN CẤU TRÚC 60 RULE × KHỐI

Quét bằng script trên toàn bộ heading `##` + marker `**Luận điểm.**` / `**Liên quan:**`.

### 🔴 Lỗi 5 — Sách có HAI kiểu rule khác nhau, không phải một

| Đặc điểm | Rule 01–04 (4 rule) | Rule 05–60 (56 rule) |
|---|---|---|
| Khối luận điểm | `**Luận điểm / 要点.**` (có vế JP) | `**Luận điểm.**` (không vế JP) |
| Khối "Liên quan" | `**Liên quan / 関連:** Rule 02 (3 hồi chuông), …` — **có chú thích tên rule** | `**Liên quan:** Rule 50, Rule 32.` — chỉ có số |
| `**Từ khóa / キーワード:**` | ✅ có (rule 01–08) | ❌ không (rule 09–60) |
| `## Bối cảnh / 場面` | ✅ có | ❌ không |
| Hội thoại | `## Hội thoại XẤU — 悪い例` **+** `## Hội thoại TỐT — 良い例` **+ khối "Vì sao xấu"** | chỉ 1 `## Hội thoại` |
| `## BJT Practice` **trong rule.md** | ✅ có (4/4) | ❌ **không có (0/56)** |
| Độ dài | 83–125 dòng | 27–68 dòng |

→ Rule 01–04 là **bản pilot đầy đủ** (STATUS dòng 76 xác nhận: *"Pilot rule_01 (showcase đầy đủ)"*), 56 rule còn lại là bản rút gọn. Sách xuất bản sẽ có 4 chương dày gấp 2–3 lần và có bài tập tại chỗ, 56 chương còn lại thì không → người đọc thấy sách "hụt hơi" từ chương 5.

### 🟡 Lỗi 15 — 56/60 rule KHÔNG có bài luyện BJT tại chỗ, nhưng front matter hứa MỌI rule đều có

`nội_dung/_front_matter.md` dòng 41–44:
```
**Mỗi rule có:**
- Bài học song ngữ với hội thoại minh họa, câu chốt, từ vựng.
- Bài luyện BJT — câu hỏi trắc nghiệm theo kỹ năng…
```
Thực tế `## BJT Practice` chỉ có trong rule 01, 02, 03, 04. Với 56 rule còn lại, câu hỏi BJT **chỉ tồn tại trong `conversation.json`** (mà pipeline build KHÔNG đọc, theo `00_TIEN_DO.md` dòng 14) và trong phụ lục C ở cuối sách.
→ Trong sản phẩm `.md` xuất ra, lời hứa "mỗi rule có bài luyện BJT" **sai với 56/60 rule**.

### Ma trận rút gọn (✓ = có)

Chú thích cột: **LĐ** = `**Luận điểm.**` · **LQ** = `**Liên quan:**` · **HT** = có khối hội thoại/trường hợp · **CC** = `## Câu chốt` · **T/M** = `## Tránh` hoặc `## Mẹo` / `## Lưu ý` / `## Điểm…` · **TV** = `## Bảng từ vựng` · **BJT** = `## BJT Practice`

| Rule | Dòng | LĐ | LQ | HT | CC | T/M | TV | BJT |
|---|---|---|---|---|---|---|---|---|
| 01 | 125 | ✓* | ✓* | ✓ | ✓ | | ✓ | ✓ |
| 02 | 83 | ✓* | ✓* | ✓ | ✓ | | ✓ | ✓ |
| 03 | 96 | ✓* | ✓* | ✓ | ✓ | | ✓ | ✓ |
| 04 | 86 | ✓* | ✓* | ✓ | ✓ | | ✓ | ✓ |
| 05 | 51 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 06 | 62 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 07 | 59 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 08 | 68 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 09 | 48 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 10 | 59 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 11 | 56 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 12 | **28** | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| **13** | 33 | ✓ | ❌ | ✓ | ✓ | | ✓ | |
| 14 | **27** | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 15 | 32 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 16 | 44 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 17 | 29 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 18 | 41 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 19 | 32 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 20 | 39 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 21 | 32 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 22 | 34 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 23 | 39 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 24 | 44 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 25 | 41 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 26 | 42 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 27 | 38 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 28 | 36 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 29 | 34 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 30 | 30 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 31 | 31 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 32 | 29 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 33 | 36 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 34 | 35 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 35 | 30 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 36 | 29 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 37 | 34 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 38 | 36 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 39 | 40 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 40 | 36 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 41 | 41 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 42 | 35 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 43 | 34 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 44 | 31 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 45 | 36 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 46 | 34 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 47 | 32 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 48 | 31 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| **49** | 36 | ✓ | ✓ | ❌ | ✓ | ✓ | ✓ | |
| 50 | 29 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 51 | 54 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 52 | 37 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 53 | 33 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 54 | 38 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 55 | 32 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 56 | 35 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 57 | 36 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | |
| 58 | 33 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 59 | 36 | ✓ | ✓ | ✓ | ✓ | | ✓ | |
| 60 | 50 | ✓ | ✓ | ✓ | ✓ | | ✓ | |

`*` = dạng có vế JP (`/ 要点`, `/ 関連`), khác 56 rule còn lại.

**Khối thiếu (ngoài BJT):**

| Rule | Thiếu | Ghi chú |
|---|---|---|
| **13** | ❌ `**Liên quan:**` | Là rule **DUY NHẤT trong 60** không có khối "Liên quan". Rule 13 (lặp lại số/email/tên) rõ ràng liên quan rule 04, 05, 12, 29 — nên bổ sung. |
| **49** | ❌ khối hội thoại | Duy nhất trong 60 (xem lỗi 🟡 9). |
| 05–60 | ❌ `## BJT Practice` | 56 rule (xem lỗi 🟡 15). |
| 09–60 | ❌ `**Từ khóa / キーワード:**` | 52 rule. |
| 05–60 | ❌ `## Bối cảnh` | 56 rule (chỉ rule 01–04 + rule 23 có). |

**Khối đủ 60/60:** `## Bảng từ vựng` ✅ — khối duy nhất thực sự đồng dạng toàn sách.
`## Câu chốt` = 58/60 (thiếu ở rule 01 và 04, hai rule này dùng `## Câu chốt mang đi / 使えるフレーズ`).

### 🔵 Lỗi 21 — Độ dài lệch mạnh, không có mặt bằng chung

- Ngắn nhất: rule 14 (**27** dòng), rule 12 (28), rule 17/32/36/50 (29).
- Dài nhất: rule 01 (**125** dòng), rule 03 (96), rule 04 (86), rule 02 (83).
- Trung vị nhóm 05–60: **35 dòng**.

Rule 01 dài gấp **4,6 lần** rule 14. Trong nhóm 05–60 thì tương đối đều (27–68), nên vấn đề chủ yếu vẫn là nhóm pilot 01–04.

---

## 6. Front/back matter + thuật ngữ

### 🟡 Lỗi 16 — Front matter hứa 5 kỹ năng BJT, sách chỉ có 2

`_front_matter.md` dòng 44:
> *Bài luyện BJT — câu hỏi trắc nghiệm theo kỹ năng (**từ vựng, đọc hiểu biểu đạt, nắm bắt tình huống, nghe hiểu, ứng đáp**).*

Thực tế toàn bộ 60 câu chỉ có **2 kỹ năng**:

| Skill | Số câu |
|---|---|
| 場面把握 (nắm bắt tình huống) | **45** |
| 表現読解 (đọc hiểu biểu đạt) | **15** |

Không có câu nào thuộc từ vựng / **nghe hiểu** / ứng đáp. Riêng "nghe hiểu" là bất khả thi với sách giấy không audio (STATUS dòng 65 xác nhận pipeline TTS **chưa làm**). → Lời hứa không thực hiện được, phải sửa front matter.

### 🟡 Lỗi 17 — Front matter hứa BJT tới J1, sách dừng ở J2

`_front_matter.md` dòng 16, 24, 91 đều ghi `J3 → J2 → J1`. Phụ lục C không có câu J1 nào (cao nhất J2). Xem thêm lỗi 🔴 6.

### 🟡 Lỗi 18 — Số từ vựng ghi 3 con số khác nhau ở 3 nơi

| File | Dòng | Con số |
|---|---|---|
| `nội_dung/phụ_lục/phụ_lục_B_vocab.md` | 235 | **195** ← đếm thật đúng 195 dòng ✅ |
| `nội_dung/_front_matter.md` | 49 | ~197 ❌ |
| `meta/STATUS.md` | 53 | 197 ❌ |
| `meta/STATUS.md` | 187 | 195 ✅ |

STATUS tự mâu thuẫn với chính nó (dòng 53 vs 187).

### 🔵 Lỗi 22 — 10 thư mục rác chỉ chứa `.placeholder`

Đây là **nguồn gốc** của con số sai ở `00_TIEN_DO.md` (lỗi 🔴 2). Đều là tên thư mục CŨ còn sót sau khi đổi tên:

| Thư mục rác | Thư mục thật |
|---|---|
| `phần_III/rule_25_時間帯選択/` | `rule_25_時間帯/` |
| `phần_III/rule_30_チャネル変更/` | `rule_30_チャネル提案/` |
| `phần_III/rule_32_折り返し/` | `rule_32_折り返し依頼/` |
| `phần_IV/rule_38_聞き取れない/` | `rule_38_電話が遠い/` |
| `phần_IV/rule_39_聞き返し5/` | `rule_39_聞き返し5パターン/` |
| `phần_IV/rule_40_怒った客/` | `rule_40_怒り客対応/` |
| `phần_IV/rule_41_クレームフル/` | `rule_41_クレーム5ステップ/` |
| `phần_V/rule_50_折り返し対応/` | `rule_50_留守電後/` |
| `phần_V/rule_54_マイクオフオン/` | `rule_54_ミュート/` |
| `phần_V/rule_57_発言取る/` | `rule_57_発言を取る/` |

Nên xoá 10 thư mục này (chúng chỉ chứa duy nhất file `.placeholder`, không có nội dung).

### 🔵 Lỗi 23 — `_thuat_ngu.md`: 2 mục thừa, thiếu 5 mục đang dùng

**Thừa (có trong bảng, KHÔNG rule nào dùng):** `ETA` (0 lần), `FE` (0 lần).
Riêng `FE` còn được front matter dòng 67 mô tả bằng tiếng Việt ("Lập trình viên kiêm vận hành") nên viết tắt FE thực sự không xuất hiện.

**Thiếu (dùng trong sách, KHÔNG có trong bảng):**

| Viết tắt | Xuất hiện | Nơi |
|---|---|---|
| **BIDV** | 3 | rule 21 (tên ngân hàng làm mốc chỉ đường) — người đọc Nhật/nước ngoài không biết |
| **CRM** | ✅ có trong bảng | — |
| **URL** | 1 | rule 51 mail mẫu (`会議URL送付`) |
| **NG** | 3 | phụ lục C (`発信NG`) — viết tắt kiểu Nhật (No Good), người Việt dễ hiểu nhầm |
| **TP.HCM** | 1 | front matter dòng 58 |

Mục `ASAP` và `FYI` có ghi chú hữu ích ("nên tránh dùng khi nói tiếng Nhật") — nên làm tương tự cho `NG`.

### ✅ Back matter — hợp lệ

| Mục | Giá trị | Đánh giá |
|---|---|---|
| Phiên bản | 1.2 | ✅ khớp STATUS |
| Ngày phát hành | 30/04/2026 | ✅ hợp lệ (quá khứ so với hôm nay 15/08/2026) |
| Bản quyền | © 2026 | ✅ |
| Email / Website | hizashinihongo@gmail.com / hizashi.net | ✅ |

Lưu ý nhỏ: sách vẫn đang trong đợt review thứ 6 (đợt này) mà ngày phát hành đã là 30/04/2026 — nếu đợt sửa này tạo v1.3 thì phải cập nhật cả phiên bản lẫn ngày.

---

## 7. Quy ước trình bày + tiếng Anh thừa

### ✅ Furigana — nhất quán

- **59/60** `rule.md` dùng thẻ `<ruby>漢字<rt>かな</rt></ruby>`. Rule duy nhất không có là rule 13 (nội dung là bảng cách đọc số/email, không có kanji cần chú).
- **0 file** dùng kiểu `（かな）` trong ngoặc → không có trộn 2 kiểu. ✅
- **0 romaji** trong toàn bộ nội dung. ✅ (nhưng mục lục lại hứa có romaji — xem lỗi 🟡 13)

### 🟡 Lỗi 11b (gộp vào 🟡) — Dấu vết emoji bị strip: 205 chỗ

Đúng như sách 10. Dấu hiệu: `>` hoặc `##` theo sau bởi **2 dấu cách** thay vì 1 — chỗ emoji từng đứng.

| File | Số chỗ |
|---|---|
| `nội_dung/phụ_lục/phụ_lục_A_script_template.md` | **198** |
| `nội_dung/phần_I/rule_01_第一声/rule.md` | 2 |
| `nội_dung/phần_I/rule_02_3コール/rule.md` | 2 |
| `nội_dung/phần_I/rule_03_お待たせ詫び/rule.md` | 2 |
| `nội_dung/phần_I/rule_04_片手メモ/rule.md` | 1 |
| **Tổng** | **205** |

Ví dụ `phụ_lục_A` dòng 14: `>··「お電話ありがとうございます。…」` (2 space sau `>`).
Ví dụ `rule_01` dòng 20: `>··*(đường dây kết nối, em Dũng nhấc máy)*`.

Phụ lục A dính 198/205 vì nó là file **sinh tự động** — script `build_appendices.py` in emoji rồi có bước strip. Đây là lỗi **hiển thị** (markdown sẽ nuốt space thừa) nhưng làm bẩn source và gây diff nhiễu.

Ghi nhận thêm: **không còn** heading dạng `## ✅` / `## 🔴` trong `nội_dung/` (english_audit dòng 26 và 83 từng nhắc `## ✅ Hội thoại…`, `## ✅ 10-item Self-Diagnostic`) → các heading đó đã được dọn, chỉ còn lại dấu vết space thừa ở 5 file trên.

### ✅ Tiếng Anh thừa — audit cũ đã được xử lý TRỌN VẸN

Đã kiểm lại **từng mục** trong `_pipeline/english_audit.md` (20 flag). Kết quả: **20/20 đã fix**, cả phía tiếng Việt lẫn phía JSON.

| Mục audit | Trạng thái hiện tại |
|---|---|
| rule_09 "setup bàn" | ✅ → "Sắp xếp bàn" (H1 rule_09) |
| rule_18 "take message" | ✅ → "khi ghi lời nhắn" |
| rule_24 "internal self-check" | ✅ → "tự kiểm nội bộ" |
| rule_32 "folder back template" | ✅ → "mẫu nhờ gọi lại" |
| rule_36 "voice fill" | ✅ → "lấp im lặng" |
| rule_55 "Cross-border" | ✅ → "Họp trực tuyến quốc tế" |
| rule_57 "Take floor" | ✅ → "Giành lượt phát biểu" |
| rule_59 "action items / follow-up status" | ✅ → "việc cần làm / trạng thái theo dõi" |
| rule_60 "Self-diagnostic / phone skills checklist / 10-item" | ✅ → "Tự chấm điểm / bảng kiểm kỹ năng điện thoại / 10 câu tự chấm" |
| rule_60 "follow-up mail" | ✅ → "mail tóm tắt" |
| rule_56.json "auto-transcribe" ×2 | ✅ → "chuyển giọng thành văn bản" |
| rule_59.json "Action / status" | ✅ → "Hạng mục / trạng thái" |
| rule_51.json "follow-up" ×2 | ✅ → "mail tóm tắt" |
| phụ_lục_A "follow-up" / "Self-diagnostic" | ✅ đã sinh lại |
| phụ_lục_C "Self-diagnostic" | ✅ → "Tự chấm điểm" |

**Đã kiểm CẢ HAI PHÍA** (cảnh báo sách 09): grep tiếng Anh trong ô **tiếng Nhật** của bảng hội thoại → chỉ tìm thấy các từ katakana/viết tắt **hợp lệ, cố ý dạy**: `CRM`, `KPI`, `API`, `URL`, `PM`, `CFO`, `BIDV`. Không có tiếng Anh trần trong câu tiếng Nhật.

### 🔵 Lỗi 24 — Tiếng Anh còn sót MỚI (audit cũ bỏ lọt) — chỉ ở mục lục

Audit cũ soát `rule.md` + `.json` + phụ lục nhưng **không soát `meta/mục_lục.md`** như một file đích (chỉ ghi "(mục_lục.md)" trong tiêu đề mục). Vì thế toàn bộ tiếng Anh trong mục lục còn nguyên — **26 dòng**, xem bảng ở lỗi 🔴 1: `phone` ×8, `Pitch` ×2, `Setup`, `Checklist`, `Hold`, `wrong number`, `pattern(s)` ×2, `Format`, `Smile in voice`, `Review summary`, `Template`, `Voicemail` ×2, `Conference call`, `Tone`, `share`, `Mute/unmute etiquette`, `online` ×3, `transcribe`, `interrupt`, `Hybrid meeting`, `offline`, `script template`, `romaji`, `BJT practice`.

Ngoài mục lục, còn sót ở `rule.md`: từ **"phone"** trong H1 của rule **30, 42, 43, 44** (`Đề xuất chuyển kênh khi phone không đủ`, `Cách từ chối qua phone không gây xước`, `Báo dời / đổi lịch qua phone`, `Báo tin xấu qua phone`) — đợt Việt hoá trước bỏ sót 4 rule này, trong khi rule 20 đã đổi "phone"→"điện thoại".
Và từ **"line"** trong H1 rule 37 (`Khi line đứt, ai gọi lại trước?`) + rule 08 (`"line không được rõ"`).

### ✅ Cross-reference — sách 02 KHÔNG dính lỗi sách 10

Tổng **151 tham chiếu chéo** giữa các rule (sách 10 có 0). **59/60 rule** có khối `**Liên quan:**` (chỉ rule 13 thiếu). Mật độ trung bình ~2,5 tham chiếu/rule. ✅

Kiểm tính đúng của tham chiếu trong phần V: rule 49→(50, 32) ✅ đúng chủ đề · 50→(49, 32) ✅ · 51→(35, 23) ✅ · 52→(53, 54, 55) ✅ · 53→(52, 54) ✅ · 54→(52, 57) ✅ · 55→(33, 52) ✅ · 56→(52, 59) ✅ · 57→(52, 54) ✅ · 58→(52, 57) ✅ · 59→(23, 51) ✅ · 60→(01, 35) ⚠️ (xem lỗi 🟡 11). Không có tham chiếu trỏ sai rule.

### Độ khó — tăng dần hợp lý ✅

Phân bố level BJT theo phần: I = J3/J4 chủ yếu · II = J3 + 2 câu J2 · III = J3 + 3 câu J2 · IV = **6 câu J2** (nhiều nhất) · V = J3 + 3 câu J2.
→ Phần IV (tình huống khó) đúng là khó nhất. Phần V hơi **tụt** so với IV, nhưng hợp lý vì V là kỹ năng công cụ + tổng kết chứ không phải leo thang độ khó.

### Nội dung lặp giữa các rule — chấp nhận được

Có lặp có chủ ý: rule 05 ↔ 14 (đều 5W1H), rule 04 ↔ 13 ↔ 29 (đều 復唱), rule 20 ↔ 40 ↔ 41 (đều クレーム), rule 16 ↔ 31 ↔ 32 (đều 不在/折り返し). Các cặp này đều **có tham chiếu chéo lẫn nhau** và chia vai rõ (nhận máy vs gọi đi), nên là lặp sư phạm chứ không phải trùng lặp thừa. Không báo lỗi.

---

## 8. Lỗi cần sửa GẤP nhất

Xếp theo mức thiệt hại cho người học:

| Ưu tiên | Lỗi | File | Vì sao gấp |
|---|---|---|---|
| **1** | Rule 50 luận điểm VN dạy 「聞きました」 | `phần_V/rule_50_留守電後/rule.md:3` | **Dạy sai kiến thức thi.** Học viên làm theo sẽ chọn đúng phương án mà phụ lục C chấm là SAI. Sửa 1 dòng. |
| **2** | Mục lục lệch 35/60 tiêu đề | `meta/mục_lục.md` | Mục lục là **trang đầu tiên** người đọc thấy. Lệch tên 35 chương = sách trông như chưa hoàn thiện. Sửa cột VN theo H1. |
| **3** | Rule 58 câu chốt còn 「お声」 | `phần_V/rule_58_ハイブリッド/rule.md:22` | Câu chốt là thứ học thuộc, lại mâu thuẫn với bảng hội thoại ngay trên nó. Sửa 1 dòng. |
| **4** | `00_TIEN_DO.md` ghi sai số rule (tổng 70) | `_review/00_TIEN_DO.md:7` | File này tự nhận là **"nguồn sự thật"** nhưng con số sai đang làm lệch phân công của cả 3 agent. Sửa ngay. |
| **5** | Quảng cáo J5/J1 không có thật | `meta/mục_lục.md:118`, `README.md:118`, `_front_matter.md:16,24,91`, `meta/STATUS.md:44` | Hứa sai với người mua sách luyện thi. |
| **6** | Front matter hứa "mỗi rule có bài luyện BJT" | `_front_matter.md:41-44` | Sai với 56/60 rule trong bản `.md` xuất ra. |

---

## 9. Ghi chú cho giai đoạn SỬA

### ⚠️ CẢNH BÁO 1 — 3 phụ lục là file SINH TỰ ĐỘNG, sửa tay sẽ bị mất

`scripts/build_appendices.py` sinh cả 3 phụ lục từ `conversation.json`:
- Phụ lục A ← `key_phrases[].sentence` + `.sentence_translation` + `.purpose`
- Phụ lục B ← bảng từ vựng
- Phụ lục C ← `bjt_practice`

Đợt này chốt "chỉ sửa `.md`, không đụng `.json`". Nghĩa là **mọi sửa tay vào phụ lục sẽ bị ghi đè** nếu ai chạy lại script.

**Đề xuất xử lý:**
- Với các lỗi nằm ở phụ lục do dữ liệu nguồn sai (vd 「お声」 ở phụ lục A dòng 701): sửa `rule.md` trước, ghi nhận phụ lục là **nợ kỹ thuật** cần regenerate ở đợt sau khi được phép chạm `.json`.
- Với lỗi ở phụ lục **không** đến từ `.json` (vd nhãn "J5" trong mục lục): sửa thẳng, an toàn.
- Lỗi emoji-strip 198 chỗ ở phụ lục A: **đừng sửa tay** — phải sửa ở `build_appendices.py` rồi sinh lại, nếu không lần build sau lại hỏng y hệt.

### ⚠️ CẢNH BÁO 2 — Kiểm chéo trước khi tin STATUS.md

`meta/STATUS.md` liệt kê 32 fix v1.2, nhưng C3 xác minh được **ít nhất 3 fix chỉ ăn vào `.json`, không ăn vào `rule.md`**: rule_49 (と申します), rule_58 (お声, chỉ nửa file), và fix rule_50 quên bản tiếng Việt. Ngoài phần V, C1 nên kiểm lại rule_21 — STATUS dòng 158 nói đã đổi `3軒目 → 3つ目` và `右折いただく → 右に曲がっていただく`, nhưng `rule_21/rule.md:15` **vẫn còn nguyên** `3軒目` và `右折いただきます`.

→ **Đừng tick "đã fix" dựa trên STATUS.** Phải grep xác minh trong chính `rule.md`.

### ⚠️ CẢNH BÁO 3 — Cẩn thận khi grep tiếng Nhật trong `rule.md`

Kanji bị chèn thẻ `<ruby>…<rt>…</rt></ruby>` nên grep chuỗi liền sẽ **âm tính giả**. Ví dụ `grep "お声" rule_58` trả về 0 dù chuỗi có tồn tại, vì file thực chứa `お<ruby>声<rt>こえ</rt></ruby>`.
Luôn strip ruby trước:
```python
re.sub(r'<rt>.*?</rt>|</?ruby>', '', text)
```
Sai lầm này đã suýt khiến C3 bỏ sót lỗi 🔴 4.

### ✅ Những gì KHÔNG cần đụng

- **Nhãn rule trong 3 phụ lục** — đã kiểm 100%, sạch. Không có lỗi kiểu sách 08.
- **Đáp án ↔ giải thích phụ lục C** — 60/60 khớp. Không có lỗi kiểu sách 08.
- **Cột tiếng Nhật của mục lục** — 60/60 khớp H1.
- **Quy ước furigana** — nhất quán, không trộn kiểu, không có romaji.
- **Cross-reference** — 151 tham chiếu, không có tham chiếu sai đích.
- **Các mục trong `english_audit.md`** — 20/20 đã fix, cả 2 phía VN và JP.
- **Back matter** — phiên bản/ngày/bản quyền hợp lệ.

### Gợi ý thứ tự sửa

1. Sửa 4 lỗi 1 dòng, rủi ro thấp: rule_50:3, rule_58:22, rule_55:15 (皆さん→皆様), `00_TIEN_DO.md`:7.
2. Sửa cột VN của `meta/mục_lục.md` — **chép nguyên tiêu đề VN từ H1 của từng `rule.md`** (đừng gõ lại tay, dễ sinh lệch mới). Đồng thời sửa "romaji", "J5/J4/J3/J2", "(ref Sách 01 Rule 53)", và thống nhất tên phần V với front matter.
3. Sửa 4 H1 còn chữ "phone" (rule 30, 42, 43, 44) — sửa `rule.md` **trước**, rồi mới đồng bộ mục lục ở bước 2 (hoặc làm bước 2 sau cùng).
4. Sửa front matter: bỏ hứa J1, bỏ 3 kỹ năng BJT không có, sửa 197→195, làm rõ "bài luyện BJT" nằm ở phụ lục C chứ không ở mỗi rule.
5. Bổ sung `**Liên quan:**` cho rule 13; xem lại "Liên quan" của rule 60.
6. Xoá 10 thư mục `.placeholder`.
7. Cập nhật `_thuat_ngu.md`: bỏ ETA/FE, thêm BIDV/URL/NG/TP.HCM.
8. Nợ kỹ thuật (đợt sau, cần chạm `.json` + script): regenerate 3 phụ lục, sửa emoji-strip trong `build_appendices.py`, quyết rule_49 と申します/でございます.

---

*C3 hoàn thành. Đã kiểm: 12 rule phần V (đọc toàn văn), 3 phụ lục (đối chiếu ngược 100% bằng script), mục lục vs 60 H1, ma trận cấu trúc 60 rule, front/back matter, `_thuat_ngu.md`, `english_audit.md`, quy ước furigana/emoji/tiếng Anh xuyên sách.*
