# [04-E4] Rà soát phần IV — tình huống khó (6 rule)
> Agent: E4 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH

Phạm vi: `nội_dung/phần_IV/rule_31..36/rule.md` (587 dòng). Chỉ file `.md`, không đụng `conversation.json` / script / phụ lục.

---

## Tóm tắt số lỗi

| Mức | Số | Nội dung |
|---|---|---|
| 🔴 A (dạy sai việc thật) | **0** | — xem mục 1, sách KHÔNG dính lỗi "nhận trách nhiệm quá sớm" |
| 🔴 B (tự mâu thuẫn) | **3** | rule_33 (70 ngày vs 3 tháng), rule_32 (24h vs 25h/48h), rule_31 (nhãn SLA lệch mốc thoại) |
| 🔴 C (tiếng Nhật sai) | **2** | rule_32 `ご認識合っておりますでしょうか`, rule_32 `お約束済` |
| 🔴 D (sai sự thật) | **1** | rule_33 「出産・育休 60 ngày (luật)」 — luật Nhật là 1 tháng |
| 🟡 E (tiếng Việt) | **4** | 1 ca dịch lệch thành ngữ + 3 nhóm tiếng Anh thừa |
| 🟡 F (nhất quán) | **2** | rule_35 mất toàn bộ cột icon + dấu ✅/❌; rule_32 thuật ngữ `仮謝罪` phi chuẩn |
| **Tổng** | **12** | (🔴 6 / 🟡 6) |

**Đánh giá chung: phần IV là phần chắc tay nhất về nghiệp vụ.** Trục A (nguy hiểm nhất) sạch tuyệt đối. Lỗi tập trung ở số liệu và trình bày.

---

## 1. KIỂM RIÊNG: mẫu câu nhận trách nhiệm có nêu điều kiện không

Đây là nhiệm vụ đặc biệt được giao (lỗi đã gặp ở sách 02 rule_45). **Kết quả: sách 04 phần IV KHÔNG dính lỗi này. Ngược lại, đây là chỗ sách làm ĐÚNG NHẤT.**

Quét toàn phần IV (đã strip ruby): `全責任` = **0 ca**, `責任は弊社` = **0 ca**, `弊社の責任` = **0 ca**.

| Rule | Câu xin lỗi | Đã xác minh chưa? | Loại | Có nêu điều kiện? | Phán định |
|---|---|---|---|---|---|
| rule_31 L41 | `誠に申し訳ございません` | CHƯA (đang 調査中) | 部分謝罪 | ✅ có — câu trước là `現在ティエンファット技術チームで調査中`, không nêu nguyên nhân | ✅ ĐÚNG |
| rule_32 L42 | `ご不便をおかけし誠に申し訳ございません` | CHƯA | 部分謝罪 | ✅ có — ghi chú 【2】 nói rõ *"không nhận lỗi cụ thể khi chưa xác minh, nhưng xin lỗi cho ご不便"* | ✅ ĐÚNG |
| rule_32 L46 | `ご不便をおかけし誠に申し訳ございません。重ねてお詫び申し上げます` | ĐÃ (`判明いたしました`) | 全面謝罪 hợp lệ | ✅ có — trước đó đã nêu `¥70,000 の超過記載が判明` + nguyên nhân `重複計上` | ✅ ĐÚNG |
| rule_32 L61 (công thức) | `② 仮謝罪 「ご不便をおかけし申し訳ございません」 (lỗi chưa cụ thể)` | — | 部分謝罪 | ✅ có — chú thích trong ngoặc nêu rõ điều kiện | ✅ ĐÚNG |
| rule_33/34/35/36 | không có mẫu nhận trách nhiệm với khách | — | — | — | không áp dụng |

**Kết luận:** rule_32 dạy đúng chuẩn ngành — 部分謝罪 (xin lỗi về *sự bất tiện*, không về *lỗi*) → xác minh → mới khẳng định lỗi. WebSearch xác nhận đây chính là mô hình 「限定付き謝罪／部分謝罪」→「全面謝罪」 mà tài liệu クレーム対応 Nhật khuyến nghị. **Không có câu chốt học thuộc nào nhận lỗi vô điều kiện.** Rule mục 4A ở phần này an toàn.

⚠️ Duy nhất một ghi chú: thuật ngữ sách dùng là **`仮謝罪`** — xem lỗi #F2 bên dưới (vấn đề thuật ngữ, không phải vấn đề nghiệp vụ).

---

## 2. Danh sách lỗi theo rule

### rule_31 — バグ発見 (97 dòng)

**#31.1 🔴 B — nhãn SLA trong ghi chú không khớp mốc thời gian của thoại**

Dòng 34 (dấu thời gian hội thoại TỐT):
```
*14:30, Slack #incident · 14:35 · 14:45 · 15:00, ... · 15:05 · 15:25, ... · 15:30, メール*
```
Ghi chú dòng 47-49:
- 【1】 gán lượt **14:30** (T+0) là "**SLA 5 phút**"
- 【2】 gán lượt **14:35** (T+5) là "**SLA 15 phút**"
- 【3】 gán lượt **14:45** (T+15) là "**SLA 30 phút**"

Lệch **một bậc** so với bảng SLA dòng 59-65 (`T+5 Slack #incident`, `T+15 Tech lead→CTO`, `T+30 CTO+BD draft`).

Về nghiệp vụ thoại vẫn đúng (làm sớm hơn hạn = tốt), nhưng nhãn dán vào sai mốc khiến người học đọc bảng SLA rồi đọc ghi chú sẽ hiểu ngược. Riêng T+30 (`15:00` gửi khách) và T+60 (`15:30` ETA) thì khớp chuẩn.

*Đề xuất:* đổi cách diễn đạt ghi chú từ "SLA N phút: …" thành "**Trong hạn SLA N phút** — thực tế làm lúc HH:MM (T+M)", hoặc bỏ số phút khỏi 【1】【2】【3】 và chỉ giữ ở bảng SLA.

**#31.2 🟡 E — tiếng Anh thừa trong bản dịch Việt**

Dòng 25 (Hội thoại XẤU):
- JA: `@トゥアン、production API がエラー多いんですけど…`
- VN: *@anh Tuấn, production API đang nhiều error ạ...*

`error` không có trong bản Nhật (JA dùng `エラー` — katakana, chấp nhận được ở JA nhưng bản Việt nên là "lỗi"). Cùng dạng: dòng 3 luận điểm dùng "production down / data corruption / security" trong câu tiếng Việt.

*Đề xuất:* `error` → "lỗi". (Các từ còn lại như `production API`, `Sev1`, `ETA`, `rollback` là thuật ngữ IT có trong `_thuat_ngu.md` hoặc trong bản Nhật → **giữ nguyên**.)

**Ngoài ra rule_31 SẠCH:** keigo đúng, `第一報` không nêu nguyên nhân chưa xác minh (【4】【5】 dạy đúng), thứ tự leo thang đúng, mốc 5/15/30/60 phút hợp thực tế ngành (SLA incident phổ biến). Bảng từ vựng khớp thoại.

---

### rule_32 — クレーム (95 dòng)

**#32.1 🔴 C — `ご認識合っておりますでしょうか` sai hướng kính ngữ**

Dòng 40:
- JA: `①4月の請求書の金額に誤りがあり、御社のお客様から2回お問い合わせいただいているとのこと、**ご認識合っておりますでしょうか**`
- VN: *[1] Invoice tháng 4 có sai số tiền, khách bên anh đã hỏi 2 lần — em hiểu đúng vậy ạ?*

Bản dịch Việt cho thấy chủ ngữ là **nhận thức CỦA DŨNG** ("em hiểu đúng vậy ạ?"). Nhưng `ご認識` là 尊敬語 gắn cho nhận thức **của đối phương**. Dùng `ご` cho hiểu biết của chính mình = 過剰敬語 (cùng loại lỗi với `ご請求書` trong rule mục 4C). Thêm nữa `認識が合う` + `ご` ghép vụng, người Nhật ít dùng.

Đáng chú ý: **chính file này đã có bản đúng** — dòng 60 trong khối "Công thức 4 bước" viết `「〇〇とのご認識でお間違いないでしょうか」`, dạng này hợp lệ (ご認識 = nhận thức của đối phương, hỏi có sai không). → **mâu thuẫn nội bộ giữa dòng 40 và dòng 60**.

*Đề xuất:* thống nhất dòng 40 + ghi chú 【1】 (dòng 49) theo dạng dòng 60: `…とのこと、私の認識に相違ございませんでしょうか` hoặc `…とのご認識でお間違いないでしょうか`.

**#32.2 🔴 C — `お約束済` không phải tiếng Nhật chuẩn**

Dòng 44:
- JA: `本日18時まで第一報、明日12時まで正式回答**お約束済**【3】。`
- VN: *Em đã hứa: báo cáo đầu trước 18h hôm nay, reply chính thức trước 12h ngày mai ạ.*

Hai vấn đề: (a) `お約束` là 美化語/謙譲語 gắn cho **lời hứa của mình với khách**, nhưng đây là tin nhắn Slack **nội bộ** báo lên Hương + Loan → dùng `お` cho hành vi của chính mình trong ngữ cảnh nội bộ là thừa; (b) `お+名詞+済` không phải cấu trúc chuẩn (chuẩn là `お約束済み` với み, hoặc gọn hơn `約束済み`).

*Đề xuất:* `約束済み` (bỏ `お`, thêm `み`) — hợp văn phong Slack nội bộ gọn. Bản Việt đã đúng, không cần sửa.

**#32.3 🔴 B — mốc "24h" trong luận điểm không khớp thoại**

Dòng 5 (tóm tắt JA): `④**24h以内**の正式回答`
Dòng 3 (luận điểm VN): `**(4) Trả lời chính thức trong 24h với phương án**`

Nhưng thoại: cuộc gọi **thứ Tư 11:00** (dòng 13), Dũng hứa 正式回答 `明日12時まで` (dòng 42, 44) = **thứ Năm 12:00 = 25 giờ sau** → vượt mốc 24h mà sách vừa nêu.

Thêm: dòng 46 hứa Post-mortem `48時間以内`, còn ghi chú 【5】 (dòng 53) nói *"cũng giống sự cố"* — nhưng rule_31 dùng **24h** cho Post-mortem (dòng 3, 52, 65). Hai rule liền nhau đặt hai mốc khác nhau cho cùng một loại tài liệu mà không giải thích vì sao.

*Đề xuất:* (a) đổi thoại thành `明日11時まで` để nằm trong 24h, hoặc nới luận điểm thành "trong vòng 1 ngày làm việc"; (b) thêm 1 câu ở 【5】 giải thích vì sao khiếu nại hoá đơn được 48h còn sự cố production là 24h (mức khẩn khác nhau) — hoặc thống nhất về 24h.

**#32.4 🟡 E — dịch lệch thành ngữ `先ほどはお電話にて失礼いたしました`**

Dòng 46:
- JA: `先ほどはお電話にて失礼いたしました。`
- VN: *Vừa rồi em đã thất lễ qua điện thoại.*

Đây là **câu chào xã giao cố định** mở đầu mail sau cuộc gọi, nghĩa gần "Cảm ơn anh đã dành thời gian nói chuyện qua điện thoại vừa rồi ạ" — **không** phải thừa nhận mình đã thất lễ. Dịch từng chữ khiến người học tưởng Dũng đang nhận thêm một lỗi nữa (nguy hiểm hơn bình thường vì đây là ngữ cảnh khiếu nại). Đúng dạng lỗi rule mục 4E (`お世話になっております` → "cảm ơn anh đã hỗ trợ").

*Đề xuất VN:* "Cảm ơn anh đã dành thời gian trao đổi qua điện thoại vừa rồi ạ."

**#32.5 🟡 F — vị trí câu `先ほどはお電話にて…` đặt sai chỗ**

Vẫn dòng 46: câu này nằm **gần cuối** mail, sau cả phần báo nguyên nhân và Post-mortem. Quy ước Nhật đặt nó ở **đầu** mail (câu chào mở). Đặt ở cuối làm mail đọc rời rạc.

*Đề xuất:* chuyển lên đầu, ngay trước `第一報のご報告です`.

**#32.6 🟡 F — thuật ngữ `仮謝罪` không phải từ chuẩn của ngành**

Dòng 27, 61, 70, 90 (bảng từ vựng) dùng `仮謝罪 / かりしゃざい / GIẢ TẠ TỘI / Xin lỗi tạm`.

WebSearch tài liệu クレーム対応 Nhật: thuật ngữ chuẩn là **`部分謝罪`** hoặc **`限定謝罪` / `限定付き謝罪`**. `仮謝罪` không xuất hiện trong tài liệu ngành — đây là từ tự chế. Người học đem `仮謝罪` vào công ty Nhật sẽ không ai hiểu, và tra từ điển cũng không ra.

*Lưu ý phạm vi:* từ này **đã lan sang phụ lục B (dòng 261) và phụ lục A (dòng 537)** — file sinh tự động, chỉ báo cáo.

*Đề xuất:* đổi thành `部分謝罪 (ぶぶんしゃざい)` — nghĩa Việt giữ nguyên "Xin lỗi một phần / xin lỗi chưa nhận lỗi cụ thể". Nếu muốn giữ khái niệm "tạm" thì ghi `部分謝罪（一次謝罪）`.

**#32.7 🟡 E — `invoice` / `reply` thừa trong bản Việt**

7 chỗ (dòng 13, 23, 39, 40, 42, 43, 44) dùng "invoice" trong khi bản Nhật là **`請求書`** (Hán tự thuần Nhật, không phải katakana). Tương tự "reply chính thức" (dòng 27, 42, 44) trong khi JA là `正式回答`.

*Đề xuất:* `invoice` → "hoá đơn"; `reply chính thức` → "trả lời chính thức". (Đối chiếu: dòng 46 bản Việt **đã dùng** "hóa đơn đính chính" — nên nội bộ file cũng đang không nhất quán.)

**Điểm rule_32 làm ĐÚNG — xem mục 5 (CẤM SỬA).**

---

### rule_33 — 退職休暇 (103 dòng)

**#33.1 🔴 D — 「出産・育休 | 60 ngày (luật)」 sai luật Nhật**

Dòng 58 (bảng Notice Timing Standard):
```
| 出産・育休 | 60 ngày (luật) | sớm hơn | Sếp + HR |
```

WebSearch 厚生労働省 / 育児・介護休業法: 育児休業 phải nộp đơn **muộn nhất 1 tháng trước** ngày bắt đầu nghỉ (育休 sau 1 tuổi: 2 tuần trước; 産後パパ育休: 2 tuần trước, có thể thoả ước lao động nâng lên 1 tháng). 産前休業 là **6 tuần trước ngày dự sinh** — nhưng đó là *độ dài kỳ nghỉ*, không phải *thời hạn báo trước*.

Không có mốc "60 ngày" nào trong luật. Ghi "(luật)" là khẳng định sai sự thật pháp lý — mức nguy hiểm cao vì người học có thể dựa vào để tính lịch báo với HR.

*Đề xuất:* sửa thành `1 tháng (luật: 育児・介護休業法)` ở cột "Tối thiểu", cột "Lý tưởng" ghi `60 ngày +`. Nếu muốn giữ 60 ngày thì phải bỏ chữ "(luật)" và ghi rõ đó là **thông lệ công ty**, không phải quy định pháp luật.

**#33.2 🔴 B — "70 ngày" mâu thuẫn "3 tháng" trong cùng 1 rule**

Dòng 13 (Bối cảnh): *"bắt đầu từ 1/7. Tuần này 22/4. **Còn 70 ngày** — lý tưởng."*
Dòng 39 (thoại): `**3ヶ月前の本日4/22にご報告**いたします` — VN: *"hôm nay 22/4 em báo **trước 3 tháng** ạ"*
Dòng 38 (thoại): `今後**3ヶ月**の準備期間がございます` — VN: *"em còn **3 tháng** chuẩn bị ạ"*
Dòng 46 (ghi chú 【2】): *"**3ヶ月前報告**"*

Tính thực: 22/4 → 1/7 = **70 ngày ≈ 2,3 tháng**. Sách vừa tự khai 70 ngày ở dòng 13 rồi gọi là "3 tháng" ở 3 chỗ liền sau. Người học học thuộc câu mẫu `3ヶ月前の本日4/22にご報告いたします` sẽ nói một câu **tự mâu thuẫn ngay trong câu** trước mặt sếp Nhật.

*Đề xuất:* đổi 3 chỗ `3ヶ月` → `2ヶ月以上` (JA) / "hơn 2 tháng" (VN); hoặc đơn giản nhất là đổi ngày bối cảnh từ 22/4 thành **1/4** để đúng 3 tháng — nhưng cách này đụng mốc "22/4" dùng chung với rule_31 và rule_35 (cả ba rule đều lấy bối cảnh 22/4), nên **cách an toàn là sửa "3 tháng" → "hơn 2 tháng"**.

**#33.3 🟡 F — 「Hai 個人 broadcast」 dùng tên Latin giữa câu Nhật**

Dòng 41: `Slack 全社通知は **客向け案内の翌日**。**Hai** 個人 broadcast は最後で OK。`

Toàn bộ phần IV gọi nhân vật này là **`ハイ`** (katakana) — riêng chỗ này dùng `Hai`. Cùng dòng lại có `Hà CTO` (Latin, nhất quán với các rule khác). Không sai nghĩa nhưng lệch quy ước trong **cùng một câu thoại**.

*Đề xuất:* `Hai` → `ハイ`.

**#33.4 🟡 F — bảng "Notice Timing Standard" còn tiêu đề tiếng Anh**

Dòng 52: `## Notice Timing Standard` — trong khi các khối khác của cùng rule đã Việt hoá (`## Cấu trúc kế hoạch bàn giao (5 phần)`, `## Câu chốt`, `## Tránh`). Vi phạm quy ước "label UI tiếng Việt".

*Đề xuất:* `## Chuẩn thời hạn báo trước`.

**Ngoài ra rule_33 SẠCH về nghiệp vụ:** thứ tự báo (1-on-1 sếp → CTO → khách (sếp ký) → toàn công ty → team) đúng chuẩn Nhật; 5 phần handover plan đầy đủ; điểm dạy "không broadcast trước khi sếp biết" chuẩn xác. Mốc `退職 30 ngày` là thông lệ hợp lý (luật dân sự Nhật điều 627 chỉ yêu cầu 2 tuần, nhưng nội quy công ty thường ghi 1 tháng — sách ghi 30 ngày ở cột "Tối thiểu" **không kèm chữ "(luật)"** nên **không sai**, khác hẳn ca #33.1).

---

### rule_34 — 新人指導 (99 dòng)

**#34.1 🟡 F — "tối đa 5 câu/giờ mở cửa" xuất hiện đúng 1 lần, mâu thuẫn tinh thần "hỏi nhiều OK"**

Dòng 64 (khối [B]): `- 開放時間中に最大 5 件まで回答`
Nhưng dòng 42 (thoại) Dũng nói: `ⓐ 質問はたくさんしてOK、僕の機嫌は気にしないで` — *"Em hỏi nhiều OK, đừng lo tâm trạng anh"*.

Trần cứng 5 câu không được nói ra trong thoại, không có trong ghi chú, cũng không có trong câu chốt — nhưng lại nằm trong khối tóm tắt cấu trúc mà người học sẽ chép về áp dụng. Người mới đọc "hỏi nhiều OK" rồi thấy "tối đa 5 câu" sẽ không biết theo cái nào.

*Đề xuất:* bỏ dòng 64, hoặc đổi thành `開放時間中に優先度順で回答（残りは翌日枠へ）` — giữ ý "có giới hạn thực tế" mà không mâu thuẫn với thông điệp khuyến khích hỏi.

**#34.2 🟡 E — `mentor` / `ad-hoc` trong ô tiếng Nhật**

Dòng 27: `それ **mentor 構造を作っていない** 問題。` (lời chị Hương, nói với nhân viên Việt — nhưng đây là ô JA)
Dòng 75 (Câu chốt JA): `ad-hoc DM は mentor も新人も疲弊する。`

Câu chốt là câu **học thuộc** — trộn 2 từ tiếng Anh không có dạng katakana trong đó khiến câu khó đọc và không dùng lại được trong môi trường thật. Tiếng Nhật có sẵn: `メンター` / `指導体制`, `場当たり的な`.

*Đề xuất:* dòng 75 → `場当たり的な DM は指導者も新人も疲弊する。`; dòng 27 → `メンター体制を作っていない問題`.

**Ngoài ra rule_34 SẠCH:** bộ 3 (Weekly 1-on-1 + Office Hour + kỳ vọng minh văn) là mô hình mentoring hợp lý; định nghĩa "khẩn cấp" 3 tiêu chí cụ thể (đang ứng phó khách / ảnh hưởng production / cần quyết trong 3 giờ) — đúng tinh thần rule mục 4A (không để người mới tự đoán). Xưng hô "anh/em" đúng vai.

---

### rule_35 — リモート (101 dòng)

**#35.1 🟡 F — MẤT TOÀN BỘ CỘT ICON + dấu ✅/❌ (ca nặng nhất phần IV)**

Bảng dòng 55-62 có cột đầu tên **"Icon"** nhưng **6/6 hàng đều rỗng**:
```
| Icon | Trạng thái | Khi nào |
|------|-------------|---------|
|  working | Đang trực tuyến + sẵn sàng phản hồi | Giờ làm việc mặc định |
|  away | Tạm rời máy | Ăn trưa / nghỉ giải lao (kèm thời gian) |
...
|  WFH | Làm việc tại nhà | Cả ngày (kết hợp với ) |
```
Cột "Icon" giờ trống trơn — **cả bảng mất lý do tồn tại**, vì nội dung nó dạy chính là "dùng emoji nào cho trạng thái nào". Dòng 62 còn để lại `(kết hợp với )` — câu cụt.

Khối "Quy ước bật/tắt camera" dòng 68-70 mất dấu ✅/❌ **ở cả 3 dòng**, nên không còn phân biệt được dòng nào là NÊN dòng nào là KHÔNG NÊN:
```
 **Mặc định BẬT** (…)
 **「今日はちょっと…」** — không chấp nhận lý do, …
 **Tắt khi có lý do** — báo trước …
```
Đây đúng dạng lỗi rule mục 4F ("Emoji ✅/❌ bị strip để lại double-space → bảng SAI/ĐÚNG mất cột phán định").

Lan cả vào thoại: dòng 39 `【Daily 4/22 WFH 】` (thiếu icon sau WFH) và `**ステータス:  working until 18:00 ICT**`; dòng 40 `「 lunch 11:30-12:30」`; dòng 43 `**ステータス更新:  →  EOD**` (mũi tên nối hai icon rỗng); ghi chú dòng 47 `朝会 9:30 WFH icon **` — chữ "icon" đứng trơ không có icon.

*Đề xuất:* khôi phục emoji. Gợi ý bộ chuẩn Slack: 🟢 working / 🍽 away / 🎧 focus / 📅 meeting / 🌙 EOD / 🏠 WFH; camera: ✅ / ❌ / ⚠️.

**#35.2 🟡 F — tiêu đề khối và nhãn còn tiếng Anh giữa văn Việt**

Dòng 61 `|  EOD | Hết giờ | Sau khi đăng EOD log |` — "EOD log" trong khi cùng file đã Việt hoá thành "nhật ký cuối ngày" (dòng 3, 26, 43, 85). Dòng 44: `visibility 完璧` trong ô JA (có `可視化` sẵn trong bảng từ vựng dòng 100). Dòng 76 (Câu chốt): `リモート = invisible になる前に visible にする` — câu học thuộc trộn 2 từ tiếng Anh không katakana.

*Đề xuất:* dòng 76 → `リモートは「見えなくなる前に見える化する」`; dòng 44 → `可視化、完璧です`; dòng 61 → "nhật ký cuối ngày".

**Ngoài ra rule_35 SẠCH:** nội dung nghiệp vụ hợp lý (3 thói quen hiện diện + SLA phản hồi 1 giờ là mức thực tế); mốc thời gian thoại nhất quán (9:30 → 11:30 → 14:00 → 14:15 → 18:00); `お世話になっております` dùng đúng chỗ (dòng 42, với khách ngoài); ghi rõ múi giờ ICT — đúng bài học rule 21.

---

### rule_36 — VN_JPギャップ (92 dòng)

**#36.1 🟡 E — `proposal` / `update status` / `team` thừa trong bản Việt**

Dòng 23: JA `提案書` → VN *"em sẽ chuẩn bị **proposal** trong thứ Năm ạ"* (bản Nhật dùng Hán tự, không phải katakana).
Dòng 27: JA `status 連絡` → VN *"3 ngày 1 lần phiền em **update status**"* — ở đây JA **có** chữ `status` nên VN giữ được, nhưng "update" là do dịch giả thêm vào.
Dòng 44: JA `ベトナムチーム` → VN *"**team** Việt Nam"* — chấp nhận được (JA có `チーム`), nhưng dòng 3 luận điểm cũng dùng "team VN" trong văn tiếng Việt thuần.

*Đề xuất:* `proposal` → "bản đề xuất" (chính dòng 39 và 43 của file đã dùng "đề xuất"/"bản đề xuất" — nội bộ không nhất quán); "update status" → "cập nhật tình hình".

**#36.2 🟡 F — "51 giờ" so với dấu thời gian không khớp hẳn**

Dòng 19 (dấu thời gian): `thứ Hai 18:00 - thứ Tư 12:00 — silence`
Dòng 24: `(im lặng **51 giờ**)`
Dòng 29 (Vì sao xấu): *"L2 im lặng **51 giờ** với khách Nhật"*

Thứ Hai 18:00 → thứ Tư 12:00 = **42 giờ**, không phải 51. Nếu tính từ thứ Hai 9:00 (lúc nhận việc, dòng 19) → thứ Tư 12:00 = **51 giờ** — tức con số 51 đúng theo mốc *nhận việc*, còn dấu thời gian lại ghi mốc *bắt đầu im lặng* là 18:00. Hai mốc lệch nhau trong cùng một khối.

Mức nhẹ (🔵) nhưng dễ bị người đọc kỹ bắt lỗi.

*Đề xuất:* sửa dòng 19 thành `thứ Hai 9:00 - thứ Tư 12:00 — silence` (giữ 51 giờ), hoặc đổi 51 → 42 ở dòng 24 + 29.

**Ngoài ra rule_36 SẠCH và là rule hay nhất phần IV:** luận điểm VN "im lặng = ổn" vs JP "im lặng = có vấn đề" chính xác và đúng trọng tâm; bảng so sánh tần suất (dòng 55-61) thực dụng; mẫu `ブロッカーなし、予定通り進行中` là câu chốt tốt; keigo của Dũng với Matsumoto đúng cấp (`ご準備いたします`, `お送りいたします`, `ご確認のほどよろしくお願い申し上げます`). Không có ca 過剰敬語 nào.

---

## 3. Lỗi hệ thống

**H1 — Tiếng Anh thay cho từ đã có bản Nhật Hán tự (4 rule)**
Khi bản Nhật dùng **Hán tự** (`請求書`, `提案書`, `正式回答`) mà bản Việt lại dùng tiếng Anh (`invoice`, `proposal`, `reply`), người học không học được từ nào cả. Khác hẳn trường hợp bản Nhật dùng **katakana** (`ブロシュア`, `サバティカル`, `ドラフト`, `チーム`) — lúc đó tiếng Anh trong bản Việt là hợp lý và **KHÔNG nên sửa** (xem mục 5).
Đã kiểm bằng script đối chiếu JA↔VN từng dòng: chỉ **3 nhóm từ** (`invoice` 7 ca, `proposal` 1 ca, `reply` 3 ca) là lỗi thật; 18 ca còn lại là **báo nhầm nếu sửa** (đã tự loại theo rule mục 3).

**H2 — Tiếng Anh trong CÂU CHỐT tiếng Nhật (rule_34, rule_35)**
`ad-hoc DM は mentor も新人も疲弊する` và `invisible になる前に visible にする`. Câu chốt là thứ người học chép ra dùng thật — trộn tiếng Anh không katakana làm câu không dùng lại được. Rule_31/32/33/36 không dính (câu chốt của chúng chỉ chứa thuật ngữ đã có trong `_thuat_ngu.md` như `Sev1`, `SLA`, `ETA`, `Post-mortem`, `Handover Plan`).

**H3 — Mốc thời gian nêu trong luận điểm không được thoại tuân thủ (rule_31, rule_32, rule_33, rule_36)**
Bốn kiểu khác nhau nhưng cùng gốc: **luận điểm/bảng viết một đằng, thoại diễn một nẻo**. Đây là dạng lỗi khó thấy nhất vì mỗi chỗ đọc riêng đều hợp lý. Đề nghị giai đoạn SỬA lập một bảng đối chiếu "mốc nêu trong luận điểm ↔ mốc thực trong thoại" cho **cả 40 rule**, không riêng phần IV.

**H4 — Emoji bị strip (TOÀN SÁCH, không riêng phần IV)**
Quét cả 40 rule: **40/40 rule** có dòng ` **Ghi chú:**` mở đầu bằng khoảng trắng thừa — emoji đã mất. Ngoài ra: rule_21 (dòng 61, 66) mất dấu ở ` **Đúng:**` / ` **Sai:**`; rule_22 (dòng 56) mất icon trong bảng ma trận; rule_29 (dòng 37) mất icon trước 件名; rule_35 nặng nhất (mất cả cột phán định — xem #35.1).
→ **Vắt qua phạm vi mọi agent.** Xem mục 6.

---

## 4. Lỗi cần sửa gấp nhất

Xếp theo mức thiệt hại nếu để nguyên:

| # | Lỗi | Rule | Dòng | Vì sao gấp |
|---|---|---|---|---|
| 1 | `出産・育休 60 ngày (luật)` | 33 | 58 | **Sai sự thật pháp lý.** Người học dùng để tính lịch báo HR → báo trễ hoặc hiểu sai quyền lợi. Luật Nhật là 1 tháng. |
| 2 | "70 ngày" vs "3 tháng" | 33 | 13 vs 38/39/46 | Câu mẫu học thuộc `3ヶ月前の本日4/22` **tự mâu thuẫn ngay trong câu**. Nói ra trước sếp Nhật là lộ ngay. |
| 3 | Mất cột Icon + ✅/❌ | 35 | 55-62, 68-70 | Bảng mất hoàn toàn nội dung nó định dạy. Khối camera không phân biệt được nên/không nên. |
| 4 | `ご認識合っておりますでしょうか` | 32 | 40, 49 | 過剰敬語 trong **câu mở đầu xử lý khiếu nại** — chỗ áp lực cao nhất, sai keigo dễ làm khách khó chịu thêm. Lại mâu thuẫn với chính dòng 60. |
| 5 | `仮謝罪` phi chuẩn | 32 | 27, 61, 70, 90 (+ phụ lục) | Từ tự chế, tra không ra, đồng nghiệp Nhật không hiểu. Đã lan sang phụ lục A + B. |
| 6 | 24h vs 25h/48h | 32 | 5, 42, 44, 46, 53 | Sách vừa nêu chuẩn xong đã tự phá ngay trong thoại. |

**Ba lỗi 1-2-3 nên làm trước** vì máy móc, rủi ro thấp, sửa dứt điểm được (theo rule mục 8 vòng 1-2).

---

## 5. CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Rule/dòng | Vì sao ĐÚNG |
|---|---|---|---|
| 1 | **`当社` 2 ca** | rule_32 dòng 23, 39 | Người nói là **khách Ōgaki tự xưng công ty mình** (`当社の客が…`). 当社 trung tính, hợp lệ. Chỉ sai nếu phía Thiên Phát dùng khi nói với khách. Đã được main Claude chốt trước. |
| 2 | **Toàn bộ khối `## Hội thoại XẤU`** | cả 6 rule | Chứa lỗi **CỐ Ý** để dạy: `そんなはずない`/`たぶん`/`今日中に直します` (rule_32 L24), broadcast trước khi báo sếp (rule_33 L23), im lặng 1 tiếng (rule_31 L23-25), DM tùy hứng (rule_34 L23-25), im lặng cả ngày (rule_35 L24), im lặng 51 giờ (rule_36 L24). **Đừng "sửa cho đúng"** — sửa là hỏng bài dạy. |
| 3 | **`ご不便をおかけし誠に申し訳ございません`** | rule_32 L42, 46, 61 | **部分謝罪 đúng chuẩn ngành.** Đây không phải "nhận trách nhiệm quá sớm" — ngược lại, chính là cách tránh nó. Xem mục 1. |
| 4 | **`誠に申し訳ございません` khi chưa rõ nguyên nhân** | rule_31 L41 | Cùng lý do #3 — câu đứng sau `現在…調査中`, không nhận lỗi cụ thể. Hợp lệ. |
| 5 | **`brochure` / `sabbatical` / `draft` / `team` trong bản Việt** | rule_34 L23; rule_35 L23,39,41,43; rule_33 L39; rule_32 L45; rule_31 L41, rule_36 L27,44 | Bản Nhật **dùng katakana** tương ứng (`ブロシュア`, `サバティカル`, `ドラフト`, `チーム`). Dịch giữ tiếng Anh là **hợp lệ**. Chỉ sửa 3 nhóm ở H1 (`invoice`/`proposal`/`reply` — nơi JA dùng Hán tự). Nếu quét máy móc "tiếng Anh trong bản Việt" sẽ ra ~21 ca, thực chỉ **11** ca là lỗi. |
| 6 | **Xưng hô "anh"/"chị" là ngôi 1** | rule_33 L24,41; rule_34 L26,41,42; rule_32 L45 | JA có `私`/`僕` → Tuấn/Dũng/Hương **tự xưng** "anh"/"chị" với cấp dưới. Tiếng Việt đúng. Quét pattern xưng hô sẽ báo nhầm 6 ca này (đã dính ở sách 08: 43 báo → 7 thật). |
| 7 | **`退職 30 ngày` ở cột "Tối thiểu"** | rule_33 L56 | **Không** ghi "(luật)" nên không sai. Luật dân sự Nhật điều 627 chỉ đòi 2 tuần, nhưng 30 ngày là thông lệ nội quy công ty phổ biến. Khác hẳn ca #33.1 (`育休 60 ngày (luật)` — chỗ đó ghi "(luật)" nên mới sai). |
| 8 | **`第一報` không nêu nguyên nhân** | rule_31 L41, ghi chú 【4】【5】 | Dạy đúng: báo cáo đầu chỉ có `発生事実 + 影響範囲 + 調査中`, ETA báo riêng. Đây là chuẩn incident response. |
| 9 | **Mốc SLA 5/15/30/60 phút** | rule_31 L3, L59-65 | Hợp thực tế ngành (incident Sev1). Lỗi #31.1 chỉ là **nhãn gán sai lượt thoại**, bản thân các mốc KHÔNG sai — đừng đi sửa con số. |
| 10 | **`お世話になっております`** | rule_35 L42 | Dùng đúng chỗ (Linh chào khách ngoài). Bản Việt dịch "em xin chào" — chấp nhận được cho câu chào xã giao. |

---

## 6. Việc vắt qua phạm vi agent khác

**V1 — Emoji bị strip là lỗi TOÀN SÁCH, không phải lỗi phần IV**
Tôi quét cả 40 rule (ngoài phạm vi, chỉ để đo quy mô): **40/40 rule** mất emoji ở ` **Ghi chú:**`. Thêm rule_21 (L61, 66), rule_22 (L56), rule_29 (L37), rule_23 (L53-63), rule_30 (L59-65).
→ Nếu mỗi agent chỉ báo phần mình, main Claude sẽ thấy "mỗi phần vài ca" và xử lý lẻ tẻ. Thực tế đây là **một lần strip duy nhất quét cả sách** → nên sửa bằng một script khôi phục chạy toàn bộ, không sửa tay từng rule. **rule_35 phải sửa tay riêng** vì mất cả cột phán định (không suy ra được emoji gốc từ ngữ cảnh như trường hợp `Ghi chú:`).

**V2 — `仮謝罪` đã lan sang phụ lục (ngoài phạm vi sửa)**
`nội_dung/phụ_lục/phụ_lục_B_vocab.md` dòng 261 và `phụ_lục_A_script_template.md` dòng 537 đều chép `仮謝罪`. Phụ lục là **file sinh tự động** → nếu sửa rule_32 mà không chạy lại build thì phụ lục vẫn giữ từ cũ. **Chỉ báo cáo, không sửa** (rule mục đầu).

**V3 — `ご認識合っておりますでしょうか` cũng có trong phụ lục C (bài luyện BJT)**
`phụ_lục_C_bjt_practice.md` dòng 466 để câu này làm **phương án D**. Nếu sửa keigo ở rule_32 mà quên phụ lục C thì bài luyện sẽ chấm theo bản cũ → đúng dạng "fix nửa vời" rule mục 5. Chỉ báo cáo.

**V4 — Post-mortem 24h (rule_31) vs 48h (rule_32)**
Hai rule nằm **trong cùng phạm vi tôi**, nên tôi đã bắt được (#32.3). Nhưng cần kiểm xem rule 07 (悪い知らせ, phần I — phạm vi E1) và rule 39 (チーム文化, phần V — phạm vi E5) có nêu mốc Post-mortem nào khác không. **Cả 4 rule đều tham chiếu chéo lẫn nhau** (rule_31 → rule 07/13/17; rule_32 → rule 07/31; rule_34 → rule 28/39/40; rule_35, rule_36 → rule 02/13/21/39). Đề nghị main Claude nối kết quả E1/E5 với báo cáo này trước khi chốt mốc.

**V5 — Mục lục phần IV**
Đối chiếu `meta/mục_lục.md` dòng 89-94 với H1 thực tế: **4/6 rule lệch**, đều là dạng "mục lục chưa Việt hoá" mà main Claude đã ghi ở thước đo #5:
| Rule | Mục lục | H1 thực tế |
|---|---|---|
| 32 | "Khi khách phàn nàn — **escalation**" | "…— **leo thang**" |
| 34 | "**Mentoring** Hou-Ren-Sou cho **junior** mới" | "**Kèm cặp** Hou-Ren-Sou cho **nhân sự** mới" |
| 35 | "Hou-Ren-Sou khi **work-from-home**" | "…khi **làm từ xa**" |
| 36 | "**Bridging gap** VN-JP HouRenSou" | "**Thu hẹp khoảng cách** VN-JP về HouRenSou" |
rule_31 và rule_33 khớp. → Thuộc phạm vi **E5** (mục lục + nhất quán xuyên sách), tôi chỉ ghi nhận.

---

## 7. Ghi chú cho giai đoạn SỬA

1. **Sửa đồng bộ JA + VN + bảng từ vựng + câu chốt.** Bài học rule mục 5: sách 02 rule_34 sửa JA quên VN; sách 08 rule_36 sửa thoại quên vocab. Cụ thể ở đây:
   - `仮謝罪` nằm ở **4 chỗ trong rule_32** (L27 thoại, L61 công thức, L70 câu chốt, L90 bảng từ vựng) + 2 chỗ phụ lục. Sửa thiếu 1 chỗ là mâu thuẫn mới.
   - "3 tháng" ở rule_33 nằm **3 chỗ** (L38 thoại, L39 thoại, L46 ghi chú) + bối cảnh L13 giữ "70 ngày".
   - `ご認識合っておりますでしょうか` ở **2 chỗ rule_32** (L40 thoại, L49 ghi chú) + phụ lục C.

2. **Strip ruby trước khi grep.** Toàn bộ 6 rule dùng ruby dày đặc. `grep "ご認識合っておりますでしょうか"` trả 0 vì thực tế trong file là `ご<ruby>認識<rt>にんしき</rt></ruby>合っておりますでしょうか`. Tôi đã dùng hàm strip theo rule mục 1.1 cho mọi kết luận.

3. **Đừng sửa mốc SLA của rule_31.** Lỗi #31.1 là **nhãn**, không phải **số**. Sửa số sẽ phá mốc 14:30→15:00→15:30 vốn đang khớp T+30/T+60.

4. **Sửa emoji: đừng sửa tay 40 chỗ `Ghi chú:`.** Dùng script khôi phục 1 lần cho toàn sách (V1). Chỉ rule_35 cần đặt tay vì phải chọn lại emoji theo nghĩa từng hàng.

5. **Nếu chọn sửa `invoice` → "hoá đơn"**: nhớ rằng dòng 46 rule_32 **đã dùng** "hóa đơn đính chính" — sửa xong thì cả file mới nhất quán. Kiểm luôn chính tả "hoá"/"hóa" cho thống nhất với phần còn lại của sách.

6. **Không đụng khối `## Hội thoại XẤU`.** Nếu script sửa keigo chạy mù qua cả file, nó sẽ "chữa" các lỗi cố ý ở rule_32 L24, rule_33 L23, rule_36 L26 và phá bài dạy. Chạy script **theo khối**, chặn từ dòng `## Hội thoại XẤU` đến `---` kế tiếp.

7. **Sau khi sửa: build lại rồi grep kiểm trong `release/` (nhớ strip ruby)**, đặc biệt kiểm `仮謝罪` = 0 và `60 ngày (luật)` = 0.

---

*Kết: phần IV là phần **chắc tay nhất về nghiệp vụ** trong những gì tôi đọc — trục A (dạy sai việc thật, nguy hiểm nhất) sạch tuyệt đối, và rule_32 xử lý 部分謝罪 đúng hơn cả sách 02. Lỗi còn lại đều thuộc loại số liệu và trình bày, sửa được dứt điểm mà không cần viết lại nội dung.*
