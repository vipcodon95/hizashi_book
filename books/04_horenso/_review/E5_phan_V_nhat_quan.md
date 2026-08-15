# [04-E5] Rà soát phần V + nhất quán xuyên sách
> Agent: E5 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH

## Tóm tắt số lỗi

**Tổng: 21 lỗi** — 🔴 5 · 🟡 9 · 🔵 7

| Mục | 🔴 | 🟡 | 🔵 | Ghi chú |
|---|---|---|---|---|
| 1. Nội dung 4 rule phần V | 3 | 3 | 2 | rule_38 nặng nhất (2 lỗi 🔴) |
| 2. Mục lục vs H1 | — | 2 | — | **số của tôi KHÁC main Claude** — xem mục 2 |
| 3. Phụ lục (chỉ báo cáo) | 2 | 1 | 1 | dính đúng bug rule 1.4; phụ lục C SẠCH |
| 4. Front/back matter + thuật ngữ | — | 3 | 1 | tên sách lệch "Thảo luận"/"Tham vấn" |
| 5. Tiếng Anh thừa | — | — | 2 | audit cũ ĐÃ LỖI THỜI |
| 6. Cross-ref + cấu trúc | — | — | 1 | cross-ref 40/40 trỏ đúng — SẠCH |

**Kết luận nhanh:** 4 rule phần V có tiếng Nhật **rất sạch** về keigo (0 ca 二重敬語 / 過剰敬語 / さ入れ言葉 — xác nhận thước đo 1 của main Claude). Lỗi nặng nằm ở **tính nhất quán dữ kiện**: rule_38 gán nhầm việc của nhân vật khác cho Dũng, và bảng 15 mục trong luận điểm không khớp bảng 15 mục thật ở Phụ lục D.

---

## 1. Lỗi nội dung 4 rule phần V

### 🔴 1.1 — rule_38 dòng 39: gán NHẦM việc của Hải cho Dũng (2 trong 3 ca)

**File:** `nội_dung/phần_V/rule_38_自己診断/rule.md` dòng 39

Nguyên văn (Dũng tự chấm, tự nhận 3 lỗi C):
```
「C評価 3 件: ③ タイムリー報告 (Phase 2 障害で第一報1時間遅延)、⑦ 客先 tone
(大垣様クレーム時の defensive)、⑪ 複数案持参 (Redis 追加で1案提案で叱られた件)。」
*C 3 cái: [3] Báo cáo kịp thời (Phase 2 sự cố em chậm 1 giờ) / [7] Giọng với khách
(phòng thủ lúc anh Ōgaki phàn nàn) / [11] Mang nhiều phương án (vụ Redis em đề xuất
1 phương án bị anh Tuấn nhắc).*
```

**Đối chiếu nguồn:**

| Ca | Rule 38 gán cho | Nguồn thật | Kết luận |
|---|---|---|---|
| ③ Phase 2 chậm báo 1 giờ | Dũng | `rule_31` dòng 13, 21-26: **em Hải (DevOps)** phát hiện, tự điều tra 1 giờ; Tuấn mắng 「なんで1時間も黙ってた!?」 | ❌ **SAI — là Hải** |
| ⑦ Ōgaki 「そんなはずない」 | Dũng | `rule_32` dòng 24: **ズン (Dũng)** đúng là người nói câu này | ✅ đúng |
| ⑪ Redis đề xuất 1 phương án | Dũng | `rule_26` dòng 21-24: **ハイ (Hải)** hỏi 「Redis キャッシュ追加で解決したいんですが」, Tuấn bảo mang 3 án | ❌ **SAI — là Hải** |

Đồng thời bản Nhật dòng 39 chỉ viết 「叱られた件」 (bị mắng) không nêu tên ai, nhưng **bản Việt tự thêm "bị anh Tuấn nhắc"** — thêm chi tiết không có trong bản Nhật (lỗi dịch thêm nghĩa).

Lỗi này lặp lại ở **dòng 24** (lời chị Hương): 「今月 Phase 2 障害で第一報を1時間遅らせたよね」 — chị Hương cũng đang quy việc của Hải cho Dũng.

**Vì sao 🔴:** Đây là lỗi loại B (sách tự mâu thuẫn) ở dạng nặng nhất — rule_38 dạy "chấm dựa trên bằng chứng thực tế, đối chiếu lịch sử Slack", mà chính ví dụ minh hoạ lại chấm **sai người**. Học viên đọc kỹ sẽ mất lòng tin vào toàn bộ bài.

**Đề xuất sửa (2 hướng, chọn 1):**
- **(a) An toàn nhất** — đổi 2 ca sang tình huống Dũng có thật. Dũng có sẵn: vụ Ōgaki (⑦, giữ nguyên), và có thể dùng `rule_30` (持ち帰り) hoặc `rule_29` (客先相談) để thay ③/⑪.
- **(b)** giữ nguyên ca ⑦, đổi ③ và ⑪ thành 2 mục khác trong checklist mà Dũng thực sự hụt, ví dụ ⑭ DR化 hoặc ⑩ EOD log.
- Song song: bỏ "bị anh Tuấn nhắc" ở bản Việt để khớp bản Nhật 「叱られた」.

---

### 🔴 1.2 — rule_38 dòng 3: bảng 15 mục trong luận điểm KHÔNG khớp bảng 15 mục thật

**File:** `nội_dung/phần_V/rule_38_自己診断/rule.md` dòng 3
**Đối chiếu:** `nội_dung/phụ_lục/phụ_lục_D_templates.md` dòng 132-216 (bảng 15 mục THẬT)

Nguyên văn luận điểm:
```
**(3) 相談 5 mục** (準備, 仮説, 複数案, 客先 tone, DR化)
```

Bảng thật ở Phụ lục D:
```
■ 連絡 (Renraku) — 5項目
  ⑥ 即時性  ⑦ 客先 tone  ⑧ Channel 選択  ⑨ Audience 選択  ⑩ EOD ログ
■ 相談 (Sōdan) — 5項目
  ⑪ 複数案持参  ⑫ 仮説提示  ⑬ 判断材料を求める  ⑭ DR化  ⑮ 客先敬語
```

**3 điểm lệch:**
1. `客先 tone` bị luận điểm xếp vào nhóm **相談**, nhưng bảng thật đặt ở nhóm **連絡** (mục ⑦).
2. Luận điểm có `準備` — **không tồn tại** trong bảng 15 mục.
3. Luận điểm **thiếu** `判断材料` (⑬) và `客先敬語` (⑮).

**Bằng chứng luận điểm mới là bên sai:** chính hội thoại rule_38 dòng 24 và 39 gọi 「**⑦客先 tone**」 và 「**⑪複数案持参**」 — trùng khớp 100% với Phụ lục D. Nghĩa là hội thoại + phụ lục đúng, **chỉ luận điểm sai**.

**Đề xuất sửa** — thay dòng 3, nhóm (2) và (3):
```
**(2) 連絡 5 mục** (即時性, giọng với khách, chọn kênh, chọn đối tượng, nhật ký cuối ngày),
**(3) 相談 5 mục** (複数案, 仮説, hỏi dữ kiện, DR化, kính ngữ với khách)
```

⚠️ Lưu ý phạm vi: **chỉ sửa `rule.md` dòng 3**. Phụ lục D là file sinh tự động — không đụng.

---

### 🔴 1.3 — rule_37: sai sự thật về giới hạn lưu trữ Slack (2 chỗ, số còn mâu thuẫn nhau)

**File:** `nội_dung/phần_V/rule_37_ツール選択/rule.md`

| Dòng | Nguyên văn | Vấn đề |
|---|---|---|
| 3 | "Gửi sai kênh = thông tin bay mất (**chỉ Slack thì 1 tuần tìm không ra**)" | Sai sự thật + mâu thuẫn với dòng 57 |
| 57 | "Slack \| ... \| Thấp (**~30 ngày là tìm không ra**)" | Sai sự thật |
| 87 | "20MB PDF lên Slack → **1 tuần là tìm không ra**." | Sai sự thật |

**Kiểm chứng (WebSearch):** Slack gói **Free** giữ và cho tìm kiếm **90 ngày** lịch sử (không phải 7 hay 30 ngày); tin/file quá 1 năm mới bị xoá vĩnh viễn. Gói **trả phí (Pro / Business+ / Enterprise)** lưu trữ **không giới hạn**. Giới hạn upload là **1 GB/file trên MỌI gói** — không phải 5MB.

**Mâu thuẫn nội bộ:** dòng 3 nói "1 tuần", dòng 57 nói "~30 ngày" — cùng một sự việc, hai con số. Đây là lỗi loại B.

**Bối cảnh sách:** Thiên Phát là công ty offshore làm với khách Nhật (Hakuō) — gần như chắc chắn dùng Slack trả phí, tức **không có giới hạn lịch sử nào cả**. Lập luận "gửi Slack thì mất thông tin" do đó không đứng vững ở dạng hiện tại.

**Đề xuất sửa** — đổi trục lập luận từ "bị xoá" sang "khó truy xuất", vốn mới là lý do thật:
- dòng 3: "chỉ để trên Slack thì vài tuần sau **lẫn trong hàng nghìn tin, gần như không tra lại được**"
- dòng 57: đổi cột "Mức lưu trữ" thành **"Thấp (gói Free chỉ tra được 90 ngày; gói trả phí lưu vô hạn nhưng tin trôi, rất khó tra lại)"**
- dòng 87: "20MB PDF lên Slack → vài tuần sau **không ai tìm lại nổi**"

---

### 🟡 1.4 — rule_37 dòng 68: ngưỡng "File > 5MB → KHÔNG Slack" không có căn cứ, lại mâu thuẫn với chính hội thoại

**File:** `nội_dung/phần_V/rule_37_ツール選択/rule.md` dòng 68

```
□ File > 5MB        → KHÔNG Slack. Notion / Email + Drive link
```

Nhưng dòng 41, trong **Hội thoại TỐT** (tức là mẫu ĐÚNG để học theo), Dũng gửi:
```
「件名: 【ご提案】Phase 3 拡張開発のご提案書送付の件 ... [PDF添付6MB]」
```
**6MB > 5MB** — nhưng đây là mail chứ không phải Slack, nên **không vi phạm quy tắc**. Tuy vậy đặt "6MB" ngay cạnh ngưỡng "5MB" là gây rối cho học viên: dễ đọc nhầm thành "quy tắc bị chính ví dụ phá".

Vấn đề thật: **ngưỡng 5MB không có nguồn** (Slack cho 1GB/file). Con số này chỉ là quy ước nội bộ, nhưng sách trình bày như luật chung.

**Đề xuất:** hoặc ghi rõ "5MB — quy ước nội bộ Thiên Phát, không phải giới hạn kỹ thuật của Slack", hoặc nâng lên mốc có nghĩa hơn (vd 10MB — thường là trần đính kèm mail của nhiều hệ thống). Nếu giữ 5MB thì nên đổi PDF ở dòng 41 thành 4MB để tránh cạnh nhau gây nhiễu.

---

### 🟡 1.5 — rule_39: mật độ tiếng Anh trong Ô TIẾNG NHẬT cao bất thường (nặng nhất sách)

**File:** `nội_dung/phần_V/rule_39_チーム文化/rule.md`

Đây là điểm mà **audit cũ bỏ sót phía Nhật** (đúng cảnh báo rule mục 4E). Đếm từ Anh **bên trong 「…」 tiếng Nhật**:

| Dòng | Trích ô Nhật | Từ Anh trong ô Nhật |
|---|---|---|
| 21 | 「松本様から feedback : 『ティエンファット は人によって対応 quality が違う』」 | feedback, quality |
| 22 | 「team レベルの共通 playbook がない」 | team, playbook |
| 23 | 「Slack の標準 format も人によって違うし、escalation も case-by-case」 | format, escalation, case-by-case |
| 24 | 「私と フオン が culture sponsor、トゥアン が tech ritual owner。来週中に v1 ドラフト」 | culture sponsor, tech ritual owner |
| 37 | 「①Rituals … ②Dashboard: Notion『チーム Hou-Ren-Sou ダッシュボード』… response SLA、Sev1 件数、DR 数を可視化」 | Rituals, Dashboard, response, retro, all-hands |
| 38 | 「③OKR Q2-2026 … Sev1 escalation 漏れ 0件 / Decision Register カバレッジ 100%」 | OKR, escalation, coverage |
| 39 | 「④Escalation Matrix … ⑤Onboarding: 新人入社後30日で Playbook 全項目に exposure」 | Escalation Matrix, Onboarding, Playbook, exposure |
| 40 | 「culture sponsor として: … 『今月の Good ホウレンソウ』『今月の Lesson』を Slack 投票で選び、HR の評価にも反映させましょう」 | culture sponsor, Good, Lesson |
| 41 | 「Tech ritual owner として: 朝会と Sev1 escalation drill を四半期ごとに simulation」 | Tech ritual owner, escalation drill, simulation |
| 53 (Câu chốt) | 「**Hou-Ren-Sou is a team sport.** Playbook 5要素 (Rituals + Dashboard + OKR + Escalation + Onboarding) を持って初めて、quality が個人差に左右されない。**Leader が culture sponsor。**」 | cả một mệnh đề tiếng Anh nguyên vẹn |

**Vấn đề nghiêm trọng nhất là dòng 53 — Câu chốt.** Câu chốt là thứ học viên **học thuộc để nói ra miệng**. Câu này mở đầu bằng nguyên một câu tiếng Anh 「Hou-Ren-Sou is a team sport.」 và kết bằng 「Leader が culture sponsor。」 — nói ra trong cuộc họp với khách Nhật sẽ rất kỳ.

**Đề xuất sửa dòng 53:**
```
「ホウレンソウは<ruby>個人技<rt>こじんぎ</rt></ruby>ではなく<ruby>組織力<rt>そしきりょく</rt></ruby>。5<ruby>要素<rt>ようそ</rt></ruby>
(<ruby>定例<rt>ていれい</rt></ruby>・<ruby>可視化<rt>かしか</rt></ruby>・<ruby>目標<rt>もくひょう</rt></ruby>・
<ruby>報告経路<rt>ほうこくけいろ</rt></ruby>・<ruby>新人育成<rt>しんじんいくせい</rt></ruby>)
の<ruby>運用<rt>うんよう</rt></ruby><ruby>指針<rt>ししん</rt></ruby>を<ruby>持<rt>も</rt></ruby>って<ruby>初<rt>はじ</rt></ruby>めて、
<ruby>品質<rt>ひんしつ</rt></ruby>が<ruby>個人差<rt>こじんさ</rt></ruby>に<ruby>左右<rt>さゆう</rt></ruby>されない。」
```
Các dòng khác nên thay tối thiểu: `quality`→`品質`, `format`→`書式`, `feedback`→`ご指摘`, `team`→`チーム`, `exposure`→`ひと通り習得`.

⚠️ Lưu ý: `Slack` / `Notion` / `OKR` / `Sev1` / `SLA` / `DR` là **tên riêng và thuật ngữ ngành, giữ nguyên là đúng** — đừng dịch nhóm này.

---

### 🟡 1.6 — rule_39 dòng 70: cột "Hán Việt" của チーム文化 điền sai

**File:** `nội_dung/phần_V/rule_39_チーム文化/rule.md` dòng 70

```
| チーム文化 | チームぶんか | VĂN HÓA | Văn hóa team |
```

`チーム` là katakana ngoại lai, không có âm Hán Việt; chỉ `文化` mới có. Ghi "VĂN HÓA" cho cả cụm khiến học viên hiểu nhầm `チーム` = "văn". Các mục thuần katakana khác trong cùng bảng (プレイブック, ダッシュボード, エスカレーション…) đều để `—` — tức là **quy ước của sách đã đúng, riêng dòng này lệch**.

**Đề xuất:** đổi thành `| チーム文化 | チームぶんか | — VĂN HÓA | Văn hóa team |` hoặc đơn giản `—`.

Rà cả 4 bảng từ vựng phần V: các dòng còn lại đều đúng quy ước.

---

### 🔵 1.7 — rule_40 dòng 92: âm Hán Việt của 振り返り ghi "CHẤN" — dễ gây hiểu nhầm

**File:** `nội_dung/phần_V/rule_40_振り返り/rule.md` dòng 92

```
| 振り返り | ふりかえり | CHẤN | Reflection / retrospective |
```

`振` đúng là có âm Hán Việt "CHẤN"/"CHẤEN", nhưng `振り返り` là **động từ ghép thuần Nhật (和語)** — nghĩa "nhìn lại" đến từ 返る chứ không từ 振. Ghi mỗi "CHẤN" khiến học viên suy ra sai nghĩa. Cùng bảng, `1人立ち` (rule_39 dòng 78) và `見込み` đều để `—` cho đúng loại 和語.

**Đề xuất:** đổi thành `—`, thống nhất với cách xử lý 和語 ở chỗ khác trong sách.

Cùng dòng: cột "Nghĩa Việt" ghi `Reflection / retrospective` — **hai từ tiếng Anh, không có tiếng Việt nào**. Trong khi H1 của chính rule này đã dịch là "Hồi cố". Nên sửa thành `Hồi cố / nhìn lại`.

---

### 🔵 1.8 — rule_38: rule duy nhất trong phần V thiếu khối bảng/khung minh hoạ

Cấu trúc 4 rule phần V:

| Rule | Bối cảnh | XẤU | TỐT | Khối bảng/khung riêng | Câu chốt | Tránh | Từ vựng |
|---|---|---|---|---|---|---|---|
| 37 | ✅ | ✅ | ✅ | ✅ Bảng quyết định + Quy tắc nhanh | ✅ | ✅ | ✅ |
| 38 | ✅ | ✅ | ✅ | ❌ **không có** | ✅ | ✅ | ✅ |
| 39 | ✅ | ✅ | ✅ | ❌ không có | ✅ | ✅ | ✅ |
| 40 | ✅ | ✅ | ✅ | ✅ Mẫu KPT | ✅ | ✅ | ✅ |

**⚠️ ĐIỂM MÙ — đã kiểm theo rule mục 6:** rule_38 nói "danh sách kiểm tra 15 mục" nhưng trong `rule.md` **không có bảng nào**. Trước khi kết luận "thiếu", tôi đã tra chỗ khác: **bảng 15 mục CÓ ĐỦ ở `phụ_lục_D_templates.md` dòng 132-216**, song ngữ Nhật-Việt hoàn chỉnh. Tương tự rule_39 có "Cẩm nang 1 trang" ở Phụ lục D dòng 739.

→ **KHÔNG PHẢI LỖI THIẾU NỘI DUNG.** Chỉ là rule_38/39 không có dòng trỏ tới Phụ lục D, trong khi rule_40 lại in thẳng Mẫu KPT vào bài. Đây là **lệch quy ước trình bày**, mức 🔵.

**Đề xuất:** thêm 1 dòng cuối phần luận điểm rule_38 và rule_39: *"Bảng đầy đủ: xem Phụ lục D."* Không cần chép bảng vào rule.

---

## 2. Mục lục vs H1 (bảng 40 rule)

### ⚠️ Số của tôi KHÁC main Claude — cần main Claude phân xử

Thước đo 5 trong `00_TIEN_DO.md` ghi: *"19/40 chỉ thiếu vế tiếng Nhật · 21/40 tên Việt KHÁC HẲN"*.

**Đo lại của tôi:** `meta/mục_lục.md` **CÓ cột "Tên JP" riêng cho cả 40 rule** (cột 3 của bảng). Không rule nào thiếu vế tiếng Nhật. Con số thật:

| Loại | Số | Rule |
|---|---|---|
| **Khớp hoàn toàn** (VN + JP đều trùng H1) | **17** | 01, 06, 09, 11, 17, 18, 20, 22, 23, 24, 26, 28, 29, 30, 31, 33, 37 |
| **VN trùng, H1 có thêm đuôi ngoặc** | **4** | 03, 05, 07, 13 |
| **Tên Việt KHÁC HẲN** | **19** | 02, 04, 08, 10, 12, 14, 15, 16, 19, 21, 25, 27, 32, 34, 35, 36, 38, 39, 40 |

→ **19 ca tên khác hẳn, không phải 21.** Nghi main Claude đã so chuỗi ghép `"VN / JP"` với H1 nên 4 ca nhóm giữa (03/05/07/13) bị tính nhầm sang nhóm "khác hẳn" (19+4=23, hoặc một biến thể đếm khác). Đề nghị main Claude chạy lại phép đo tách cột trước khi sửa hàng loạt.

### 2.1 🟡 Loại A — VN trùng, H1 thêm đuôi trong ngoặc (4 ca, sửa máy móc)

| # | Mục lục | H1 rule.md | Chênh |
|---|---|---|---|
| 03 | Cấu trúc báo cáo kết quả / 結果報告の組み立て | …の組み立て **(Goal→Result→Cause→Action)** | H1 thừa đuôi |
| 05 | Báo cáo hoàn thành / 完了報告 | 完了報告 **(Output→Acceptance→Lessons)** | H1 thừa đuôi |
| 07 | Báo cáo tin xấu / 悪い知らせの報告 | 悪い知らせの報告 **(Predict→Fact→Impact→Plan→Ask)** | H1 thừa đuôi |
| 13 | Nguyên tắc liên lạc tức thì / 連絡の即時性 | 連絡の即時**性原則** | JP lệch 2 ký tự |

Ghi chú: 3 ca đầu **không thật sự là lỗi** — mục lục có sẵn cột "Brief" chứa đúng chuỗi đó (vd rule 03 Brief = "Goal → Result → Cause → Action"). Chỉ ca 13 là lệch chữ Nhật thật.

### 2.2 🟡 Loại B — Tên Việt KHÁC HẲN (19 ca) — mục lục là bản CHƯA VIỆT HOÁ

Xác nhận chẩn đoán của main Claude: mục lục còn ở phiên bản trước khi Việt hoá tiêu đề. **Nguồn đúng là H1 trong `rule.md`** (đã Việt hoá), mục lục phải sửa theo H1.

| # | Mục lục (CŨ, còn tiếng Anh) | H1 rule.md (ĐÚNG) | Từ Anh còn sót |
|---|---|---|---|
| 02 | Format báo cáo tiến độ daily/weekly | Khuôn báo cáo tiến độ hằng ngày/hằng tuần | **Format, daily/weekly** |
| 04 | Báo cáo trung gian **(interim)** | Báo cáo trung gian *(H1 thêm "mốc 25/50/75%")* | **interim** |
| 08 | Cách viết 報告書 **(formal document)** | Cách viết 報告書 *(H1: "văn bản báo cáo công việc trang trọng")* | **formal document** |
| 10 | Báo cáo trong 朝礼 **(morning standup)** | Báo cáo trong 朝礼 | **morning standup** |
| 12 | **Checklist** phòng ngừa thiếu báo cáo | **Danh sách kiểm tra** phòng ngừa thiếu báo cáo | **Checklist** |
| 14 | Cấu trúc liên lạc **broadcast** (cho cả team) | Cấu trúc liên lạc **toàn nhóm** | **broadcast, team** |
| 15 | Chọn **channel**: chat / mail / phone | Chọn **kênh**: chat / mail / phone | **channel** |
| 16 | Slack **channel etiquette** | **Phép lịch sự trên** Slack | **channel etiquette** |
| 19 | Báo vắng (休暇 / 病欠) | Báo vắng *(H1 đưa 休暇/病欠 sang sau vế JP)* | — (chỉ khác vị trí) |
| 21 | Liên lạc **cross-timezone** (VN-JP) | Liên lạc **lệch múi giờ** (VN-JP) | **cross-timezone** |
| 25 | Hỏi **judgment material** thay vì hỏi đáp án | Hỏi **dữ kiện ra quyết định** thay vì hỏi đáp án | **judgment material** |
| 27 | Lưu **log** tham vấn | Lưu **nhật ký** tham vấn | **log** |
| 32 | Khi khách phàn nàn — **escalation** | Khi khách phàn nàn — **leo thang** | **escalation** |
| 34 | **Mentoring** Hou-Ren-Sou cho **junior** mới | **Kèm cặp** Hou-Ren-Sou cho **nhân sự** mới | **Mentoring, junior** |
| 35 | Hou-Ren-Sou khi **work-from-home** | Hou-Ren-Sou khi **làm từ xa** | **work-from-home** |
| 36 | **Bridging gap** VN-JP HouRenSou | **Thu hẹp khoảng cách** VN-JP về HouRenSou | **Bridging gap** |
| 38 | **Self-diagnostic** Hou-Ren-Sou | **Tự chẩn đoán** Hou-Ren-Sou | **Self-diagnostic** |
| 39 | Xây dựng **team culture** Hou-Ren-Sou | Xây dựng **văn hóa** Hou-Ren-Sou **cấp team** | **team culture** |
| 40 | **Reflection** + cải tiến | **Hồi cố** + cải tiến | **Reflection** |

**Đề xuất:** thay toàn bộ cột "Tên VN" của mục lục bằng vế Việt trong H1 tương ứng. Việc này đồng thời **xoá sạch ~20 từ tiếng Anh** khỏi mục lục — giải quyết luôn phần lớn mục 5 bên dưới.

### 2.3 Cột JP của mục lục — 39/40 KHỚP

Chỉ rule 13 lệch (`連絡の即時性` vs `連絡の即時性原則`). Cột JP nhìn chung **sạch**.

---

## 3. Phụ lục — CHỈ BÁO CÁO, KHÔNG SỬA

> ⛔ Toàn bộ mục 3 là **file sinh tự động**. Tôi KHÔNG sửa. Ghi lại để chủ nhà quyết ở đợt việc khác.

### 🔴 3.1 — DÍNH ĐÚNG BUG rule mục 1.4: phụ lục A và B mang tiêu đề Phần của SÁCH 02 (Điện thoại)

**File:** `nội_dung/phụ_lục/phụ_lục_A_script_template.md`, `phụ_lục_B_vocab.md`

| Tiêu đề trong phụ lục A/B | Đúng ra phải là (sách 04) | Thuộc sách nào? |
|---|---|---|
| `## Phần I — Nền tảng trước nhấc máy` | Phần I — 報告 (Hōkoku — Báo cáo) | **Sách 02 Điện thoại** |
| `## Phần II — Nhận điện thoại` | Phần II — 連絡 (Renraku — Liên lạc) | **Sách 02** |
| `## Phần III — Gọi điện thoại đi` | Phần III — 相談 (Sōdan — Tham vấn) | **Sách 02** |
| `## Phần IV — Tình huống khó` | Phần IV — Hou-Ren-Sou trong tình huống đặc biệt | trùng hợp gần đúng |
| `## Phần V — Hộp thư thoại, Trực tuyến & Thực hành tốt nhất` (A)<br>`## Phần V — Voicemail, Online & Best Practice` (B) | Phần V — Công cụ + Thực hành tốt nhất | **Sách 02** |

Sách 04 **không có nội dung nào về nhấc máy / nhận gọi / hộp thư thoại**. Học viên mở phụ lục A sẽ thấy mẫu câu 報告 nằm dưới tiêu đề "Nền tảng trước nhấc máy".

Ghi chú thêm: phụ lục B dòng 298 còn **chưa Việt hoá** (`Voicemail, Online & Best Practice`) trong khi phụ lục A dòng 609 đã Việt hoá cùng tiêu đề đó — hai file lệch nhau.

### 🔴 3.2 — Phụ lục A/B/C đều khai "60 rule", sách 04 chỉ có 40

| File | Dòng | Nguyên văn |
|---|---|---|
| `phụ_lục_A_script_template.md` | 3 | "Tổng hợp cụm từ chốt từ tất cả **60 rule**." |
| `phụ_lục_B_vocab.md` | 3 | "Tổng hợp tất cả từ vựng từ **60 rule**." |
| `phụ_lục_C_bjt_practice.md` | 3 | "Tổng hợp tất cả câu luyện thi BJT từ **60 rule**…" |

**60 là số rule của sách 02.** Sách 04 có 40 (đã đếm bằng `find … -name rule.md`, khớp `00_TIEN_DO.md`). Giống hệt ca sách 03 mô tả trong rule mục 1.4.

→ **Cả 3.1 và 3.2 đều là bug của `scripts/build_appendices.py` — hardcode khung sách 02.** Không sửa tay được (ghi đè lần build sau). Đây là **đợt việc riêng**, chờ chủ nhà quyết.

### ✅ 3.3 — Phụ lục C: đáp án ↔ giải thích **SẠCH 40/40**

Đã rà **từng câu** trong 40 câu (không lấy mẫu):

| Phép kiểm | Kết quả |
|---|---|
| Số câu | 40 |
| Mỗi câu có đúng 1 phương án in đậm | ✅ 40/40 |
| Phương án in đậm == dòng `**Đáp án:**` | ✅ 40/40, **0 ca lệch** |
| Đủ 4 phương án A/B/C/D | ✅ 40/40 |
| Giải thích nhắc chữ cái khác đáp án (bug sách 08) | ✅ **0 ca** |
| Phủ rule | ✅ **40/40 rule, mỗi rule đúng 1 câu, không trùng không thiếu** |
| Nội dung giải thích khớp phương án đúng (đọc tay 6 câu mẫu: J4.1, J3.5, J3.12, J3.20, J3.30, J2.5) | ✅ khớp |

→ **Không tái diễn bug sách 08.** Đồng thời xác nhận theo rule mục 6: phụ lục C **có đủ 40 câu cho 40 rule**, nên nếu agent nào báo "rule X thiếu bài luyện BJT" thì đó là báo nhầm.

### 🟡 3.4 — Phụ lục C câu J2.5: giải thích dùng SAI thuật ngữ 二重敬語

**File:** `phụ_lục_C_bjt_practice.md` — câu J2.5 (từ rule_29)

```
**Giải thích / 解説:**
- 客先相談は謙譲語『させていただく』+ 丁寧語『でしょうか』の二重敬語が標準。
- Tham vấn với khách phải khiêm nhường 「させていただく」 + lịch sự 「でしょうか」 ghép đôi.
```

**二重敬語 là thuật ngữ chỉ LỖI** — chồng hai lớp kính ngữ cùng loại lên **cùng một động từ** (vd `お伺いさせていただく`, `部長様`). Ghép 謙譲語 + 丁寧語 trên hai thành phần khác nhau là **敬語の連結**, hoàn toàn hợp lệ và **không phải** 二重敬語.

Sách vừa dạy "đây là chuẩn, hãy dùng" vừa gọi nó bằng cái tên của lỗi → học viên sẽ hiểu ngược, và có thể trả lời sai câu BJT hỏi về 二重敬語.

Bản Việt đã dịch khéo là "ghép đôi" (tránh được lỗi), nên **chỉ bản Nhật sai**.

**Đề xuất:** đổi `二重敬語` → `敬語の組み合わせ` hoặc `丁重な依頼表現`.
⚠️ Sửa ở nguồn sinh (`conversation.json` / script), không sửa tay vào phụ lục.

### 🔵 3.5 — Phụ lục D: 11 mẫu, khớp khai báo

`meta/mục_lục.md` dòng 114 hứa "~10 template", README hứa "~11 templates", `STATUS.md` ghi "Templates: 11". Đếm thực tế: **11 mẫu**. ✅ Khớp. Trong đó có đủ mẫu cho rule 38 (checklist 15 mục) và rule 39 (playbook 1 trang) như mục lục hứa.

Phụ lục D **không dính bug tiêu đề sách 02** — nó nhóm theo loại mẫu (Email mời họp / Danh sách kiểm tra / Báo cáo), không theo Phần.

---

## 4. Front/back matter + thuật ngữ

### 🟡 4.1 — TÊN SÁCH lệch nhau: "Thảo luận" vs "Tham vấn" (相談)

| File | Dòng | Dịch 相談 |
|---|---|---|
| `nội_dung/_front_matter.md` | 1 | Hizashi — Báo·Liên·**Thảo luận** / 報・連・相 |
| `nội_dung/_front_matter.md` | 7 | 相談 (**thảo luận**) |
| `nội_dung/_front_matter.md` | 17 | III \| 相談 (Sōdan — **Thảo luận**) \| 9 |
| `nội_dung/_back_matter.md` | 16 | Tên sách \| Hizashi — Báo·Liên·**Thảo luận** / 報・連・相 |
| `meta/mục_lục.md` | 1 | Hizashi Sách 04 — Báo·Liên·**Tham vấn** |
| `README.md` | 1, 3 | Báo·Liên·**Tham vấn** · 相談 (**tham vấn**) |
| `meta/STATUS.md` | 1, 4 | Báo·Liên·**Tham vấn** |
| **9 rule phần III** (H1) | — | đều dùng **"tham vấn"** (rule 22-30) |

→ **Front matter và back matter là 2 file DUY NHẤT dùng "Thảo luận"**; toàn bộ phần còn lại của sách dùng "Tham vấn". Nghiêm trọng ở chỗ đây là **tên sách in trên trang bìa và trang thông tin** — hai trang học viên nhìn đầu tiên và cuối cùng.

"Tham vấn" cũng là bản dịch đúng hơn: 相談 là hỏi ý kiến người có thẩm quyền hơn, còn "thảo luận" hàm ý ngang hàng (gần 議論/話し合い hơn).

**Đề xuất:** thống nhất **"Tham vấn"** ở cả 4 chỗ trong `_front_matter.md` (dòng 1, 7, 17) và `_back_matter.md` (dòng 16).

### 🟡 4.2 — Front matter đánh rơi chữ "Nhật" khi mô tả đối tượng

**File:** `nội_dung/_front_matter.md` dòng 5, 7

```
dòng 5: ## Sách song ngữ Việt-Nhật cho người Việt làm với khách hàng
dòng 7: … Đặc biệt thiết yếu cho nhân viên người Việt làm việc với khách hàng.
```

Đối chiếu `meta/mục_lục.md` dòng 5: *"Đặc biệt thiết yếu cho offshore IT teams VN làm việc với **khách Nhật**"*; `README.md` dòng 5: *"Dev/PM/BD VN làm offshore với **khách Nhật**"*.

Front matter viết trống là "khách hàng" — mất mất trọng tâm của cả cuốn sách (làm với **khách Nhật**). Đọc dòng 5 sẽ tưởng sách dạy chăm sóc khách hàng chung chung.

**Đề xuất:** dòng 5 → *"Sách song ngữ Việt-Nhật cho người Việt làm việc với khách Nhật"*; dòng 7 → *"…cho nhân viên người Việt làm việc với khách Nhật."*

### 🟡 4.3 — `_thuat_ngu.md`: thiếu Sev1 (dùng 19 lần) và 5 thuật ngữ vận hành khác

**File:** `_thuat_ngu.md` — 42 mục.

**Dùng trong rule mà THIẾU trong bảng:**

| Thuật ngữ | Số lần dùng | Rule xuất hiện | Vì sao cần |
|---|---|---|---|
| **Sev1** | **19** | 31, 37, 39, và cả Câu chốt rule_31 | Nặng nhất. Là khái niệm **trung tâm** của rule_31 (toàn bộ bảng SLA xoay quanh Sev1) và là 1 trong 4 OKR của rule_39. Người học không làm IT vận hành sẽ không đoán được "Severity 1 = sự cố mức nghiêm trọng nhất" |
| **post-mortem / Post-mortem** | 10 | 31, 32, 40 | Là đầu ra bắt buộc bước ⑥ của SLA rule_31, và là Action item số 1 của rule_40 |
| **Runbook** | 5 | 33, 37 | Nằm trong bảng quyết định rule_37 (cột "Đúng cho" của Notion) |
| **Handover** | 6 | 33 | Khái niệm trục của rule_33 |
| **retrospective** | 4 | 39, 40 | Tên gọi khác của 振り返り, dùng xen kẽ trong rule_40 |
| **all-hands** | 3 | 39 | 1 trong 3 Rituals của rule_39 |

**Có trong bảng mà KHÔNG rule nào dùng (7 mục thừa):** `SMART`, `SOD`, `TL;DR`, `RCA`, `PIC`, `IT`, `BJT`.
*(Ghi chú: `BJT` xuất hiện ở mục lục/README/phụ lục C nên nên giữ. `IT` cũng xuất hiện ở mục lục. 5 mục còn lại — SMART, SOD, TL;DR, RCA, PIC — thực sự không rule nào dùng.)*

**Đề xuất:** thêm 6 mục ở cột trái (ưu tiên tuyệt đối **Sev1**); cân nhắc giữ 5 mục thừa vì bảng thuật ngữ dư vài dòng không hại, nhưng nếu muốn gọn thì bỏ SMART/SOD/TL;DR/RCA/PIC.

### 🔵 4.4 — Front matter / back matter / README: số rule và số phần ĐỀU KHỚP

| Khai báo | Nơi khai | Thực tế | Kết quả |
|---|---|---|---|
| 40 rule | front matter d7, mục lục d1/d22, README, STATUS | `find … -name rule.md` = **40** | ✅ |
| 5 phần | front matter d13-19, mục lục d24-30 | 5 thư mục phần_I…V | ✅ |
| I:12 II:9 III:9 IV:6 V:4 | front matter, mục lục, README, STATUS | 12/9/9/6/4 | ✅ **khớp cả 4 nơi** |
| Phụ lục A/B/C/D | front matter d21, mục lục d111-114 | 4 file | ✅ |
| Phụ lục C "40 câu" | mục lục d113 | 40 câu | ✅ |
| ~11 template | README / STATUS | 11 | ✅ |

→ **Front/back matter KHÔNG hứa thứ sách không có.** Sạch ở trục này.

Ngoại lệ nhỏ: mục lục dòng 112 hứa phụ lục B "~150-180 từ unique", nhưng STATUS.md ghi "Vocab unique: 294 từ". Chênh gần gấp đôi — mục lục là bản dự kiến (`Mục lục v1 — 2026-04-25`) chưa cập nhật. Mức 🔵, sửa cùng lúc với mục 2.2.

---

## 5. Tiếng Anh thừa (cả 2 phía)

### 🔵 5.1 — `_pipeline/english_audit.md` ĐÃ LỖI THỜI, đừng dùng làm việc

**File:** `_pipeline/english_audit.md` (audit ngày 2026-05-16, khai 24 flag)

Tôi kiểm lại **từng flag** trong audit đó với nội dung `.md` hiện tại:

| Flag cũ | File | Trạng thái hôm nay |
|---|---|---|
| "critical" | `_front_matter.md` d7 | ✅ **ĐÃ SỬA** → "thiết yếu" |
| "Best Practice" | `_front_matter.md` d19 | ✅ **ĐÃ SỬA** → "Công cụ + Thực hành tốt nhất" |
| "Critical" | `README.md` d5 | ✅ **ĐÃ SỬA** → "Thiết yếu" |
| "review pass" | `README.md` d41 | ✅ **ĐÃ SỬA** → "3 vòng đánh giá" |
| "Bug critical" | `mục_lục.md` d41 | ✅ **ĐÃ SỬA** → "Lỗi nghiêm trọng Phase 2" |
| "interim" | `rule_04` d1 | ✅ **ĐÃ SỬA** → "(mốc 25/50/75%)" |
| "executive summary" | `rule_08` d48 | ✅ **ĐÃ SỬA** (không còn) |
| "embarass" | `rule_17` d73 | ✅ **ĐÃ SỬA** (không còn) |
| "work travel" | `rule_20` d90 | ✅ **ĐÃ SỬA** (không còn) |
| "Always UTC anchor + async-first…" | `rule_21` d3 | ✅ **ĐÃ SỬA** → "Luôn ghi giờ UTC/JST kèm, ưu tiên nhắn không đồng thời, bàn giao cuối ngày" |
| "layer" | `rule_29` d3 | ✅ **ĐÃ SỬA** (không còn) |
| "Defensive" | `rule_32` d3 | ✅ **ĐÃ SỬA** (không còn) |
| "visibility ritual" | `rule_35` d3 | ✅ **ĐÃ SỬA** → "3 thói quen tạo hiện diện" |
| "overshoot / freq" | `rule_36` d3 | ✅ **ĐÃ SỬA** (không còn) |
| "trigger" | `rule_38` d3 | ✅ **ĐÃ SỬA** → "kích hoạt" |
| "culture sponsor" | `rule_39` d3 | ⚠️ **NỬA VỜI** — văn Việt đã sửa thành "người bảo trợ văn hóa", nhưng **ô tiếng Nhật d24/d40/d53 vẫn nguyên `culture sponsor`** |
| "Best Practice" | `mục_lục.md` d29 | ⚠️ **NỬA VỜI** — d30 đã sửa, nhưng d98 vẫn `## Phần V — Tools + Thực hành tốt nhất` (còn "Tools") |
| "Adapt" | `mục_lục.md` d94 | ❌ **CHƯA SỬA** — vẫn còn |
| "Information delayed = information wrong" | `mục_lục.md` d57 | ❌ **CHƯA SỬA** (rule_13 d3 đã sửa) |
| "flow" | `rule_31` d3 | ⚠️ **NỬA VỜI** — d3 đã sửa thành "quy trình leo thang", nhưng **H1 d1 vẫn "Hou-Ren-Sou flow"** và d13 vẫn "So sánh 2 flow" |

→ **Đúng cảnh báo rule mục 5: fix đợt trước chạy nửa vời.** 15/20 đã xong, **5 ca còn sót — và cả 5 đều sót ở đúng kiểu "vá bản Việt quên bản Nhật / quên tiêu đề"**.

**Đề xuất:** đánh dấu `_pipeline/english_audit.md` là **ĐÃ LỖI THỜI** ở đầu file (hoặc để main Claude quyết), và chỉ xử 5 ca còn sót ở trên. Đừng chạy lại toàn bộ 24 flag — 15 trong đó đã xong rồi, chạy lại sẽ tạo báo cáo giả.

### 🔵 5.2 — Tiếng Anh trong Ô TIẾNG NHẬT: tập trung ở rule_39 (xem mục 1.5)

Tôi đã quét **toàn bộ 40 rule**, trích riêng phần trong 「…」 (ô tiếng Nhật) rồi đếm từ Latin, loại tên riêng/thuật ngữ ngành (Slack, Notion, OKR, SLA, DR, Sev1, API, JST…).

**Phân bố ca nặng (từ Anh phổ thông lẽ ra phải là tiếng Nhật):**

| Rule | Từ Anh trong ô Nhật | Mức |
|---|---|---|
| **39** | quality, format, feedback, team, playbook, exposure, escalation, all-hands, Rituals, Dashboard, response, culture sponsor, tech ritual owner, Good, Lesson, "is a team sport" | 🔴 **nặng nhất sách** |
| 40 | retro, review, routine, check, item, post-mortem, matrix | 🟡 vừa |
| 38 | tone, self-bias, recalibration, plan, matrix, Action | 🟡 vừa |
| 35 | working, until, invisible, visible, lunch, marketing, announcement, draft | 🟡 vừa |
| 33 | handover, broadcast, Password, Runbook, Overlap, post | 🟡 vừa |
| 34 | Office Hour, mentor, ad-hoc, Weekly, Top | 🟡 vừa |
| 37 | (chỉ Slack/Notion/Outlook/PDF/MB/Invite/rollback) | ✅ **sạch** |
| 01-32 (trừ trên) | chủ yếu tên riêng + thuật ngữ ngành | ✅ chấp nhận được |

**Nhận xét:** rule_37 — rule "nói về công cụ" — lại **sạch nhất phần V**, chứng tỏ tác giả kiểm soát được. rule_39 lệch hẳn khỏi mặt bằng, nên ưu tiên xử một mình rule_39 trước.

⚠️ **CHỐNG PHÓNG ĐẠI (rule mục 3):** tôi **KHÔNG** báo `Slack`, `Notion`, `Outlook`, `OKR`, `KPT`, `Sev1`, `SLA`, `DR`, `EOD`, `JST`, `ICT`, `PDF`, `API`, `Redis`, `MySQL` là lỗi — đây là **tên riêng và thuật ngữ ngành**, người Nhật cũng viết y hệt trong văn bản công việc thật. Nếu agent nào đếm gộp cả nhóm này sẽ ra con số hàng trăm — con số đó SAI.

---

## 6. Cross-reference + cấu trúc

### ✅ 6.1 — Cross-reference nội bộ: 40/40 TRỎ ĐÚNG, không có rule ma

Quét toàn bộ `rule NN` / `rule_NN` trong 40 file: **0 tham chiếu ra ngoài dải 1-40**, 0 tham chiếu tới rule không tồn tại.

Kiểm sâu 3 tham chiếu quan trọng nhất của phần V:

| Trỏ từ | Trỏ tới | Nội dung được viện dẫn | Có thật? |
|---|---|---|---|
| rule_38 d41 | rule 31 | "ghim SLA rule 31" | ✅ rule_31 d3, d56 có bảng SLA 5/15/30/60 phút |
| rule_38 d41 | rule 32 | "thuộc 4 bước rule 32" | ✅ rule_32 d5, d57 có "Công thức 4 bước" |
| rule_39 d7 | rule 27, 34, 38, 40 | DR / 新人指導 / 自己診断 / 振り返り | ✅ cả 4 đúng chủ đề |

Cross-ref sang sách khác (`Sách 01/02/03 Rule NN`) có 11 ca — nằm ngoài phạm vi kiểm của tôi (không có file sách 01-03 trong thư mục này), **không báo lỗi**.

### ✅ 6.2 — Cấu trúc 4 rule phần V: đồng dạng, khớp thước đo 4 của main Claude

`## Bối cảnh / 場面` · `## Hội thoại XẤU` · `## Hội thoại TỐT` · `## Câu chốt` · `## Tránh` · `## Bảng từ vựng` — **4/4 rule có đủ**. Chỉ khác ở khối bảng tuỳ chọn (xem 1.8).

Mỗi rule đều có: luận điểm Việt (d3) + tóm tắt Nhật (d5) + dòng "Liên quan" (d7). Đồng dạng tốt.

### 🔵 6.3 — Độ khó 5 phần: tăng dần HỢP LÝ, nhưng phần V hụt về lượng

| Phần | Rule | Trục | Chủ thể hành động |
|---|---|---|---|
| I 報告 | 12 | Kỹ năng cá nhân, 1 chiều (mình → sếp) | Dũng, Linh |
| II 連絡 | 9 | Cá nhân → nhiều người, chọn kênh | Dũng, Linh, Hải |
| III 相談 | 9 | Hai chiều, có đàm phán; rule_28 lật vai (mình là người ĐƯỢC hỏi) | Dũng ↔ Tuấn/Hương/khách |
| IV Tình huống khó | 6 | Áp lực cao, nhiều bên, có leo thang | Cả team + CTO + khách |
| V Công cụ + best practice | 4 | **Cấp hệ thống** — thiết kế quy trình cho người khác dùng | Hà CTO, Hương (lãnh đạo) |

→ Bậc thang **rõ ràng và đúng sư phạm**: cá nhân → nhóm → tổ chức. Phần V nhảy lên tầng lãnh đạo (rule_39 toàn bộ là họp leadership) là kết đúng.

**Điểm hụt:** phần V chỉ 4 rule cho 3 chủ đề rất rộng (công cụ / tự đánh giá / văn hoá team / hồi cố). rule_37 phải gánh cả 5 công cụ trong 1 bài. Đây là **quan sát**, không phải lỗi — chỉ ghi để chủ nhà cân nhắc nếu có v2.

### ✅ 6.4 — Nội dung lặp giữa các rule: KHÔNG có lặp thừa

Ba cặp dễ nghi ngờ, kiểm rồi thì đều là **phân vai đúng**, không lặp:

| Cặp | Nghi lặp? | Thực tế |
|---|---|---|
| rule_15 (チャネル選択) ↔ rule_37 (ツール選択) | Có vẻ trùng | ❌ Không lặp. rule_15 chọn **chat/mail/phone** (loại phương tiện); rule_37 chọn **Slack/Notion/Email/Outlook** (sản phẩm cụ thể) theo trục khẩn×người nhận×lưu trữ. rule_37 d7 có trỏ ngược về rule_15 |
| rule_38 (自己診断 cá nhân) ↔ rule_40 (振り返り team) | Có vẻ trùng | ❌ Không lặp. rule_40 d3 **nói thẳng ranh giới**: *"Rule 38 là tự chẩn đoán cá nhân, rule 40 là họp hồi cố cấp team"* — tác giả đã chủ động phân định |
| rule_39 (playbook có Rituals gồm retro) ↔ rule_40 (retro) | Có vẻ trùng | ❌ Không lặp. rule_39 **khai báo** retro là 1 nghi thức trong 5 thành phần; rule_40 **dạy cách chạy** retro. Quan hệ bao-hàm, đúng thiết kế |

### ✅ 6.5 — Bug ruby-loss (rule mục 1.3): 0 ca ở phần V — xác nhận thước đo 6

Kiểm 4 rule phần V: khối `## Hội thoại TỐT` của rule_37 lặp lại đúng lời mở của khối XẤU (dòng 23 ↔ dòng 37, câu 田中PMO 4 việc). Đã strip ruby so sánh: **cả hai bản đều GIỮ ĐỦ ruby**, độ dài bằng nhau. Không dính bug sách 03.

rule_38/39/40 không có câu lặp giữa hai khối.

---

## 7. Lỗi cần sửa gấp nhất

Xếp theo mức hại cho học viên:

| Hạng | Lỗi | File / dòng | Vì sao gấp |
|---|---|---|---|
| **1** | rule_38 gán việc của **Hải** cho **Dũng** (2/3 ca) | `rule_38` d24, d39 | Bài dạy "chấm theo bằng chứng" mà chính nó chấm sai người — phá hỏng thông điệp cốt lõi của bài |
| **2** | rule_38 luận điểm liệt kê 15 mục **sai nhóm**, lệch bảng thật ở Phụ lục D | `rule_38` d3 | Học viên đối chiếu với Phụ lục D sẽ thấy vênh ngay; sửa 1 dòng là xong |
| **3** | rule_37 sai sự thật Slack + **tự mâu thuẫn 1 tuần vs 30 ngày** | `rule_37` d3, d57, d87 | Sai sự thật kiểm chứng được, lại mâu thuẫn nội bộ trong cùng 1 bài |
| **4** | **Tên sách** trang bìa/trang cuối ghi "Thảo luận", cả sách còn lại ghi "Tham vấn" | `_front_matter.md` d1/d7/d17, `_back_matter.md` d16 | Là **trang đầu và trang cuối** học viên đọc; 4 chỗ, sửa rất nhanh |
| **5** | Mục lục còn **19 tên rule chưa Việt hoá** | `meta/mục_lục.md` | Mục lục là thứ đọc trước tiên; sửa xong dọn luôn ~20 từ Anh |
| **6** | Câu chốt rule_39 mở đầu bằng **nguyên câu tiếng Anh** | `rule_39` d53 | Câu chốt là thứ học viên học thuộc để nói ra miệng |
| **7** | `Sev1` dùng **19 lần** mà thiếu bảng thuật ngữ | `_thuat_ngu.md` | Khái niệm trục của rule_31 + OKR rule_39; thêm 1 dòng là xong |
| **8** | Front matter mất chữ "**Nhật**" khi tả đối tượng | `_front_matter.md` d5, d7 | Làm mờ trọng tâm cả cuốn sách |
| **9** | *(ngoài phạm vi)* Phụ lục A/B mang tiêu đề **sách 02** + khai "**60 rule**" | `scripts/build_appendices.py` | Rõ ràng và khó chịu, nhưng **phải sửa ở script** — đợt việc riêng |

---

## 8. CẤM SỬA

Danh sách chỗ **ĐÚNG** mà rất dễ bị sửa nhầm ở giai đoạn sau:

### 8.1 Kế thừa từ `00_TIEN_DO.md` — vẫn giữ nguyên hiệu lực
- ✅ **11 ca `ご相談させていただく`** (rule_24, rule_29) — **ĐÚNG**. 相談 có đối phương cùng tham gia → `ご` là 謙譲語 hợp lệ. Tôi đã kiểm lại cả câu J2.5 phụ lục C dạy chính mẫu này: **mẫu câu đúng, chỉ nhãn 二重敬語 trong giải thích sai** (mục 3.4) — sửa nhãn, **KHÔNG sửa mẫu câu**.
- ✅ **2 ca `当社`** (rule_32) — **ĐÚNG**. Khách Ōgaki tự xưng công ty mình.
- ✅ **Mọi khối `## Hội thoại XẤU`** — chứa lỗi **CỐ Ý** để dạy.

### 8.2 Bổ sung riêng cho phần V — bắt buộc đọc trước khi sửa

| Chỗ | Vì sao ĐÚNG, cấm sửa |
|---|---|
| `rule_38` d23-26 (Dũng khai A 12, B 3, C-D 0) | Đây là **hội thoại XẤU** — self-bias là lỗi CỐ Ý để chị Hương bắt bẻ. Đừng "sửa cho đúng" thành C-D 3. |
| `rule_38` d24 「そんなはずない」 | Là **trích dẫn lại** lỗi cố ý của rule_32. Đúng chủ ý. |
| `rule_40` d21-25 (cả team phàn nàn, Hương nói 「来週も頑張ろう」) | **Hội thoại XẤU** — retro thất bại là lỗi CỐ Ý. |
| `rule_39` d21-24 (Matsumoto chê chất lượng không đều) | **Hội thoại XẤU**. |
| `rule_37` d23-25 (Dũng nhồi 4 việc + PDF 20MB vào Slack) | **Hội thoại XẤU** — 20MB là con số cố ý phóng đại để minh hoạ. |
| `rule_37` d41 「PDF添付6MB」 | Ở **hội thoại TỐT** nhưng gửi qua **MAIL**, không phải Slack → **không vi phạm** quy tắc d68. Đừng đổi thành <5MB vì tưởng mâu thuẫn. Chỉ cân nhắc đổi để tránh gây nhiễu thị giác (mục 1.4). |
| `Slack` / `Notion` / `Outlook` / `OKR` / `KPT` / `Sev1` / `SLA` / `DR` / `EOD` / `JST` / `ICT` / `Redis` / `MySQL` trong ô tiếng Nhật | **Tên riêng + thuật ngữ ngành** — người Nhật viết y hệt. **KHÔNG phải "tiếng Anh thừa".** Dịch sang tiếng Nhật là làm sách SAI đi. |
| `rule_10` 朝礼 lúc **8:55** vs `rule_35`/`rule_39` 朝会 Slack lúc **9:30** | **KHÔNG mâu thuẫn** — hai nghi thức khác nhau: 朝礼 là họp mặt đầu giờ tại văn phòng, 朝会 Slack là standup không đồng bộ cho ngày làm từ xa. |
| `rule_39` d38 OKR (d) `C-D ≤ 1` vs `rule_38` d3 ngưỡng `C-D < 3` | **KHÔNG mâu thuẫn** — rule_38 là **ngưỡng báo động** (≥3 thì phải gặp mentor), rule_39 là **mục tiêu phấn đấu** của team (≤1). Mục tiêu chặt hơn ngưỡng báo động là hợp lý. Đừng "thống nhất" hai số này. |
| Phụ lục C — toàn bộ 40 câu | Đã rà từng câu: **đáp án khớp in đậm 40/40, khớp giải thích 40/40**. Chỉ có 1 lỗi thuật ngữ ở J2.5 (mục 3.4). Đừng đại tu. |
| Toàn bộ 4 file phụ lục | **File sinh tự động.** Sửa tay = mất trắng lần build sau. |

---

## 9. Ghi chú cho giai đoạn SỬA

### 9.1 Thứ tự đề nghị (theo rule mục 8)

| Vòng | Việc | File | Rủi ro |
|---|---|---|---|
| 1 | Thống nhất "Tham vấn" (4 chỗ) · thêm `Sev1` + 5 thuật ngữ · sửa cột Hán Việt rule_39 d70 / rule_40 d92 · thêm chữ "Nhật" front matter | `_front_matter.md`, `_back_matter.md`, `_thuat_ngu.md`, `rule_39`, `rule_40` | Rất thấp |
| 2 | Việt hoá 19 tên rule trong mục lục theo H1 · sửa `Adapt`, `Information delayed`, `Tools` còn sót | `meta/mục_lục.md` | Thấp — **chép nguyên vế Việt từ H1**, đừng sáng tác tên mới |
| 3 | Sửa sai sự thật Slack rule_37 (3 chỗ, sửa **đồng bộ** cả d3 + d57 + d87) | `rule_37` | Trung bình |
| 4 | Sửa rule_38 d3 (liệt kê 15 mục) — **chép từ Phụ lục D**, đừng tự nghĩ | `rule_38` | Trung bình |
| 5 | Sửa rule_38 d24 + d39 (gán nhầm nhân vật) — **cần chủ nhà duyệt hướng** | `rule_38` | Cao — đổi tình tiết truyện |
| 6 | Việt/Nhật hoá rule_39 (ô tiếng Nhật + Câu chốt d53) | `rule_39` | Cao — viết lại tiếng Nhật, cần người rành keigo |
| — | *(riêng)* Sửa `build_appendices.py`: tiêu đề Phần sách 02 + "60 rule" + nhãn 二重敬語 J2.5 | `scripts/` | **NGOÀI PHẠM VI đợt này** |

### 9.2 Bẫy phải tránh khi sửa

1. **Đừng sửa mù bằng replace.** `culture sponsor` xuất hiện ở rule_39 **cả trong ô Nhật (d24, d40, d53) lẫn văn Việt (đã dịch rồi)**. Replace toàn cục sẽ dịch nhầm phần Việt đã đúng.
2. **Sửa rule_38 phải sửa CẢ d24 lẫn d39.** Cả hai dòng đều gán việc của Hải cho Dũng. Sửa mỗi d39 = fix nửa vời (đúng kiểu rule mục 5 cảnh báo).
3. **Sửa rule_37 phải sửa CẢ 3 dòng** (d3 "1 tuần", d57 "~30 ngày", d87 "1 tuần"). Sửa 1-2 chỗ sẽ **để lại mâu thuẫn mới**.
4. **rule_38 d3 phải chép từ Phụ lục D**, không tự nghĩ lại 15 mục. Phụ lục D là bản đúng (được chính hội thoại d24/d39 xác nhận).
5. **Sau khi sửa, build lại và grep kiểm trong `release/`, nhớ strip ruby** (rule mục 1.1) — nếu không sẽ tưởng chưa fix.

### 9.3 Việc cần chủ nhà quyết trước khi làm

- **rule_38 gán nhầm nhân vật (mục 1.1):** sửa theo hướng (a) đổi tình tiết cho khớp nguồn, hay (b) đổi sang 2 mục checklist khác? Cả hai đều đụng nội dung truyện.
- **Phụ lục A/B mang khung sách 02 + "60 rule" (mục 3.1, 3.2):** phải sửa `scripts/build_appendices.py` — có mở đợt việc script riêng không?
- **Nhãn `二重敬語` sai ở phụ lục C J2.5 (mục 3.4):** nằm ở nguồn sinh, cùng đợt với gạch đầu dòng trên.
- **`_pipeline/english_audit.md` đã lỗi thời (mục 5.1):** đánh dấu lỗi thời, hay chạy audit mới thay thế?

### 9.4 Cần chuyển cho agent/đợt khác

- **E1** (phần I): rule_31 H1 còn "Hou-Ren-Sou **flow**" và d13 "So sánh 2 **flow**" — audit cũ báo đã sửa d3 nhưng bỏ sót 2 chỗ này. *(rule_31 thuộc phần IV → thực ra là **E4**.)*
- **E4** (phần IV): rule_26 (phần III) và rule_31/32 là nguồn của 3 ca trong rule_38 — nếu E3/E4 đề xuất đổi tình tiết ở đó thì **phải báo lại để đồng bộ rule_38**.
- **Main Claude:** phân xử lại con số mục lục (tôi đo **17 khớp / 4 khác đuôi / 19 khác hẳn**, thước đo 5 ghi "19 thiếu JA / 21 khác hẳn"). Mục lục **có đủ cột JP cho cả 40 rule**, nên nhóm "thiếu vế tiếng Nhật" theo tôi là **không tồn tại**.

---

*Báo cáo E5 — rà 4 rule phần V (37-40) + nhất quán xuyên sách (mục lục, front/back matter, thuật ngữ, README, english_audit, 4 phụ lục, cross-ref 40 rule). Không sửa file nội dung nào.*
