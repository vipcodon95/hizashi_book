# [02-C2] Rà soát rule.md phần III + IV (25 rule)

> Agent: C2 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH

## ⚠️ Đính chính phạm vi trước khi đọc

Đề bài ghi "32 rule" (III: rule_24..38 = 15, IV: rule_39..55 = 17). **Thực tế trên đĩa không phải vậy.**

- Phần III có **12 rule.md** thật (rule_24 → rule_35).
- Phần IV có **13 rule.md** thật (rule_36 → rule_48).
- **Tổng thực tế: 25 file `rule.md`** — đúng bằng con số mục lục (`meta/mục_lục.md` ghi III = 12 rule 24-35, IV = 13 rule 36-48).

Con số 15/17 trong đề bài đến từ việc **đếm thư mục**, mà thư mục có 7 folder rỗng chỉ chứa `.placeholder` (tàn dư đổi tên slug):

| Folder rỗng (chỉ có `.placeholder`) | Folder thật đang dùng |
|---|---|
| `phần_III/rule_25_時間帯選択/` | `rule_25_時間帯/` |
| `phần_III/rule_30_チャネル変更/` | `rule_30_チャネル提案/` |
| `phần_III/rule_32_折り返し/` | `rule_32_折り返し依頼/` |
| `phần_IV/rule_38_聞き取れない/` | `rule_38_電話が遠い/` |
| `phần_IV/rule_39_聞き返し5/` | `rule_39_聞き返し5パターン/` |
| `phần_IV/rule_40_怒った客/` | `rule_40_怒り客対応/` |
| `phần_IV/rule_41_クレームフル/` | `rule_41_クレーム5ステップ/` |

→ **Đề xuất giai đoạn SỬA:** xoá 7 folder rỗng này (an toàn — không file nào trỏ tới). Cũng cần lưu ý mục lục dòng 77 ghi tiêu đề JP rule_38 là `聞き取れない時の言い方`, nhưng file thật tên `お電話が遠いようですが` → lệch nhẹ, xem lỗi #E-2.

Không có rule nào ở dải 49-55 thuộc phần IV — đó là phần V (agent C3).

---

## Tóm tắt số lỗi

**Tổng: 21 lỗi** — 🔴 8 · 🟡 9 · 🔵 4

| Trục | Số lỗi | Ghi chú |
|---|---|---|
| A. Tiếng Nhật sai | 🔴 1 · 🟡 2 | Ít hơn dự đoán — 5 đợt review trước đã dọn khá sạch phần JA |
| B. Quy trình nghiệp vụ sai | 🔴 2 | Đều ở cụm khiếu nại/xin lỗi (rule_41, rule_45) |
| C. Sách tự mâu thuẫn | 🔴 4 | **Nặng nhất** — 2 mâu thuẫn quy trình + 1 mâu thuẫn dữ kiện + 1 lý thuyết vs mẫu câu |
| D. Tiếng Việt | 🔴 1 · 🟡 4 | Trong đó 1 lỗi là **fix v1.1 làm nửa vời** (dịch VN chưa theo JA) |
| E. Nhất quán | 🟡 3 | |
| F. Chất lượng | 🔵 4 | |

**Kết luận quan trọng nhất:** phần JA của rule.md đã khá sạch (JP-1/JP-2/JP-4 đều ĐÃ ăn). Nhưng có **1 ca fix nửa vời kinh điển đúng như cảnh báo từ sách 08/09**: rule_34 sửa bản Nhật mà **quên bản Việt**, khiến JA và VN giờ nói hai chuyện khác nhau ngay trên cùng một dòng. Và ổ lỗi thật của đợt này **không phải keigo mà là mâu thuẫn quy trình** giữa rule_40 / rule_41 / rule_45.

---

## 1. KIỂM CHỨNG FIX v1.1 (bảng riêng — làm trước)

Rà từng mục trong `meta/REVIEW_FINDINGS_v1.1.md` + changelog v1.2 trong `meta/STATUS.md`, lọc mục thuộc phần III/IV, kiểm xem đã ăn vào `rule.md` chưa.

| Mục v1.1/v1.2 | File | Chuỗi "Sai" | Còn trong rule.md? | Kết luận |
|---|---|---|---|---|
| **JP-1a** | `rule_34_緊急電話/rule.md:15` | `トゥアンリーダー` | ❌ Không còn (đã là `現場のトゥアン`) | ✅ **ĐÃ FIX** (JA) |
| **JP-1b** | `rule_43_延期変更/rule.md:14` | `トゥアンリーダー` | ❌ Không còn (đã là `急遽弊社のトゥアンの出張`) | ✅ **ĐÃ FIX** — đúng y hệt bản "Đúng" v1.1 ghi |
| **JP-2** | `rule_42_電話で断る/rule.md:14` | `ご参加が難しい` | ❌ Không còn (đã là `参加が難しい状況でございます`) | ✅ **ĐÃ FIX** |
| **JP-4** | `rule_47_督促電話/rule.md:14` | `ご請求書` | ❌ Không còn (đã là `3月分の請求書INV-2026-0315`) | ✅ **ĐÃ FIX** |
| **JP-C** | `rule_31_伝言依頼/rule.md:16` | `構いません` | ❌ Không còn (đã là `明日朝でも問題ございません`) | ✅ **ĐÃ FIX** — cả bảng từ vựng dòng 29 cũng đã đổi theo |
| **v1.2 P1** | `rule_34_緊急電話/rule.md:15` | `即時共有が必要かと存じますが` → `至急共有いたします` | ❌ JA đã đổi, ✅ **VN vẫn nguyên bản cũ** | 🔴 **FIX NỬA VỜI** — xem lỗi **#C-1**, nặng nhất báo cáo này |
| **v1.2 P2** | `rule_41_クレーム5ステップ/rule.md:23` | `当社にて` → `弊社にて`, `回収手配` → `回収の手配` | ❌ Không còn (đã là `弊社にて回収の手配をいたします`) | ✅ **ĐÃ FIX** |
| **v1.2 P2** | `rule_45_謝罪電話/rule.md:14` | `すべて当社の責任` → `全責任は弊社にございます` | ❌ Không còn (đã đúng dạng mới) | ✅ **ĐÃ FIX** |
| **v1.2 P2** | `rule_47_督促電話/rule.md:17` | closing `お手数をおかけし申し訳ございません` (弱腰) | ❌ Không còn (đã là `引き続きどうぞよろしくお願いいたします`) | ✅ **ĐÃ FIX** |
| **v1.2 P2** | `rule_38_電話が遠い/rule.md:21,27` | `お電話が**少し**遠い` → bỏ 少し | ❌ Không còn `少し` | ✅ **ĐÃ FIX** |
| **v1.2 P0** | `rule_39_聞き返し5パターン/rule.md:17,24,30` | `お書きする` → `どのような漢字でいらっしゃいますか` | ❌ Không còn; cả 3 chỗ (bảng, hội thoại, câu chốt) đều dùng dạng 尊敬 đúng | ✅ **ĐÃ FIX ĐỒNG BỘ** |
| **v1.2 P2** | `rule_44_悪い知らせ/rule.md:13,21` | `あまり良くないご報告` → `残念なお知らせ` | ❌ Không còn | ✅ **ĐÃ FIX** (cả hội thoại lẫn câu chốt) |
| **v1.2 P2** | `rule_32_折り返し依頼/rule.md:14` | mail spelled-out | ✅ Đã có `zun (z-u-n) アットマーク thienphat ドット vn` | ✅ **ĐÃ FIX** |
| **v1.2 P2** | `rule_36_保留中対応` vocab | bỏ `生存確認` (internal slang) | ⚠️ Bảng vocab **đã bỏ**, nhưng **dòng 5 (tóm tắt JP) VẪN CÒN** `生存確認` | 🟡 **FIX NỬA VỜI** — xem lỗi **#A-3** |
| **VN-A** | `rule_47_督促電話/rule.md:13` | `Lúc nào cũng cảm ơn anh hỗ trợ` (dịch 「お世話になっております」 thành lời cảm ơn) | ✅ **VẪN CÒN NGUYÊN** | 🔴 **CHƯA FIX** — xem lỗi **#D-2** |
| **VN-B** | `rule_24_発信チェック/rule.md:30` | `có ở bàn không ạ` → `có ở văn phòng không ạ` | ❌ Không còn (đã là `có ở văn phòng không ạ`) | ✅ **ĐÃ FIX** |
| **VN-K** | `rule_43_延期変更/rule.md:14` | `đột xuất có công tác` → `đột xuất phải đi công tác` | ❌ Không còn (đã đúng dạng mới) | ✅ **ĐÃ FIX** |
| **VN-J** | `rule_44_悪い知らせ/rule.md:15` | `case bị ảnh hưởng` → `giao dịch bị ảnh hưởng` | ❌ Không còn (đã là `500 giao dịch bị ảnh hưởng`) | ✅ **ĐÃ FIX** |
| **VN-C** | `rule_46_お礼電話/rule.md:13` | `giữa lúc bận` → `anh bận thế mà` | ✅ **VẪN CÒN** `Hôm qua giữa lúc bận rộn anh đã dành...` | 🟡 **CHƯA FIX trong rule.md** — xem #D-3 |
| **Round2** | `rule_36`, `rule_32` … | `"Tôi rõ rồi"` → `"Tôi hiểu rồi"` (7 file, có rule_34, rule_42) | rule_34:16 và rule_42:16 đã là `Tôi hiểu rồi` ✅ | ✅ **ĐÃ FIX** (chỗ 「分かりました」/「承知しました」 của người Nhật) |
| **Round2** | `rule_36_保留中対応` | `"đợi máy"` → `"giữ máy"` | ❌ Không còn `đợi máy` ở III/IV | ✅ **ĐÃ FIX** |
| **Round2** | `rule_40_怒り客対応/rule.md:16,26` | `お返事` → `ご返信` | ✅ Đã là `ご返信が遅くなり` | ✅ **ĐÃ FIX** |

### Nhận định về chất lượng đợt fix trước

Khác với sách 08/09 (script chỉ vá JSON, bỏ qua `rule.md`), ở sách 02 phần III/IV **script fix ĐÃ ăn vào `rule.md`** — 18/22 mục kiểm tra đều pass, gồm cả các mục v1.1 nêu đích danh (JP-1, JP-2, JP-4). Đây là tin tốt.

Nhưng còn **4 ca sót**, và ca nặng nhất đúng theo mẫu đã cảnh báo: **vá bản Nhật mà quên bản Việt** (rule_34). Ba ca còn lại là VN-A, VN-C (chỉ vá JSON/nơi khác, quên rule.md) và `生存確認` (vá bảng vocab, quên dòng tóm tắt).

---

## 2. Danh sách lỗi theo rule

### 🔴 #C-1 — rule_34 `緊発電話`: bản Nhật và bản Việt nói HAI CHUYỆN KHÁC NHAU (fix nửa vời)

**File:** `nội_dung/phần_III/rule_34_緊急電話/rule.md` **dòng 15**

**Nguyên văn:**
```
| **ズン** | 「現場のトゥアンにも至急共有いたします。松本様からも何かご対応が必要でしたら、ご指示ください。」
<br/>*Em nghĩ cần báo gấp cho anh Tuấn ở hiện trường, anh thấy thế nào ạ?* |
```

**Vấn đề.** Đây là hệ quả trực tiếp của fix v1.2 P1: `即時共有が必要かと存じますが、いかがでしょうか？` (hỏi ý → do dự) đã được đổi thành `至急共有いたします` (tuyên bố dứt khoát → đúng tinh thần 緊急). **Nhưng câu dịch tiếng Việt không được đổi theo.** Kết quả:

- Bản Nhật: "Em **sẽ** chia sẻ gấp cho anh Tuấn. Nếu anh Matsumoto cần em xử lý gì thêm, xin anh chỉ thị."
- Bản Việt: "Em **nghĩ cần** báo gấp cho anh Tuấn, **anh thấy thế nào ạ?**"

Bản Việt vẫn là dạng hỏi-ý-kiến — chính cái mà v1.2 đã kết luận là SAI cho tình huống khẩn cấp. Người học đọc song ngữ sẽ học đúng câu Nhật nhưng hiểu sai sắc thái, và học viên yếu tiếng Nhật (đối tượng N3) sẽ bám vào bản Việt → học lại đúng lỗi đã sửa. Vế thứ hai của câu Nhật (`ご指示ください`) còn **bị mất hoàn toàn** khỏi bản dịch.

⚠️ Lỗi này **có mặt ở CẢ `rule.md` VÀ `conversation.json`** (`rule_34_good_03`) — cùng một câu dịch cũ. Tức script v1.2 sửa JA ở cả hai file nhưng không đụng field `sentence_translation` ở đâu cả.

**Đề xuất sửa** (`rule.md` dòng 15, phần sau `<br/>`):
> *Em sẽ chia sẻ gấp cho anh Tuấn ở hiện trường ạ. Nếu anh Matsumoto cần em xử lý thêm gì, xin anh cho em biết ạ.*

---

### 🔴 #C-2 — rule_40 vs rule_41: hai quy trình xử lý khiếu nại MÂU THUẪN nhau

**File 1:** `phần_IV/rule_40_怒り客対応/rule.md` **dòng 5**
```
> 怒っている顧客には『傾聴 → 共感 → 確認 → 解決』の順。途中で遮らない。
```

**File 2:** `phần_IV/rule_41_クレーム5ステップ/rule.md` **dòng 3 + 5**
```
> **Luận điểm.** 5 bước chuẩn: **(1) 傾聴 nghe**, **(2) 謝罪 xin lỗi cảm xúc**,
> **(3) 事実確認 xác minh**, **(4) 解決提示 giải pháp**, **(5) 再発防止 cam kết**.
> クレーム対応の5ステップ：傾聴→謝罪→事実確認→解決→再発防止。
```

**Vấn đề.** Hai rule liền kề, cùng chủ đề khách phàn nàn, cùng được khai báo `Liên quan` lẫn nhau, nhưng **bước 2 khác hẳn**: rule_40 nói bước 2 là **共感** (đồng cảm), rule_41 nói bước 2 là **謝罪** (xin lỗi). Rule_40 cũng thiếu hẳn bước **再発防止** mà rule_41 coi là bắt buộc.

Đây không phải khác biệt vô hại về độ sâu. 共感 và 謝罪 là **hai hành vi có hệ quả pháp lý/thương mại khác nhau**: 共感 (「ご不便だったのですね」) không thừa nhận gì; 謝罪 (「申し訳ございません」) là thừa nhận lỗi. Sách dạy hai thứ như thể chúng thay thế được nhau.

Trớ trêu, **bảng từ vựng rule_40 (dòng 33-34) có cả 傾聴 và 共感**, nhưng **hội thoại rule_40 lại KHÔNG hề có câu 共感 nào** — Dũng nhảy thẳng từ 「はい...左様でございましたか」 sang xin lỗi 「ご返信が遅くなり、申し訳ございません」. Tức ngay trong rule_40, **lý thuyết (dòng 5) nói 共感 mà mẫu câu (dòng 16) lại làm 謝罪** — trùng khớp với rule_41. Vậy chỗ sai gần như chắc chắn là **dòng 5 của rule_40**.

**Đề xuất sửa.** Thống nhất theo rule_41 (đúng chuẩn ngành, xem #B-1). Sửa `rule_40` dòng 5:
> `怒っている顧客には『傾聴 → 部分謝罪 → 事実確認 → 解決』の順。途中で遮らない。`

và dòng 3 tiếng Việt thêm cụm tương ứng. Nếu muốn giữ 共感, phải **thêm một câu 共感 thật vào hội thoại** và ghi rõ 共感 đứng TRƯỚC 謝罪 chứ không thay thế.

---

### 🔴 #C-3 — rule_41 vs rule_45: một bên xác minh trước rồi mới nhận lỗi, một bên nhận lỗi ngay

**File 1:** `phần_IV/rule_41_クレーム5ステップ/rule.md` dòng 3 — bước **(3) 事実確認 xác minh** đứng TRƯỚC **(4) 解決提示**.

**File 2:** `phần_IV/rule_45_謝罪電話/rule.md` **dòng 3 + 5**
```
> **Luận điểm.** Gọi xin lỗi 4 bước: **(1) thừa nhận sự việc**, **(2) xin lỗi rõ ràng**,
> **(3) giải pháp khôi phục**, **(4) cam kết tránh tái diễn**.
> 謝罪電話の4ステップ：①事実認める ②明確な謝罪 ③復旧策 ④再発防止。
```

**Vấn đề.** rule_45 **không có bước xác minh nào cả** — bước 1 là 事実認める (thừa nhận sự việc) luôn. Cộng với mẫu câu dòng 14 `全責任は弊社にございます` ("toàn bộ trách nhiệm thuộc về bên em"), rule_45 dạy học viên **nhận toàn bộ trách nhiệm ngay trong cuộc gọi**.

Về mặt biên tập, có thể lập luận rule_45 dành cho tình huống lỗi ĐÃ được xác minh xong. **Nhưng sách không nói câu đó ở bất cứ đâu.** Học viên đọc rule_45 độc lập (đúng cách sách khuyến khích ở front matter — "mỗi rule = 1 buổi học") sẽ không biết là phải xác minh trước. Xem tiếp #B-2 về mức độ rủi ro.

**Đề xuất sửa.** Thêm một dòng điều kiện tiên quyết vào phần Luận điểm rule_45, ví dụ:
> **Điều kiện dùng rule này:** chỉ gọi xin lỗi kiểu này **sau khi đã xác minh xong sự thật và xác định lỗi thuộc về bên mình** (bước 3 của Rule 41). Khi chưa rõ nguyên nhân, dùng Rule 41 — xin lỗi phần (部分謝罪) chứ không nhận toàn bộ trách nhiệm.

---

### 🔴 #C-4 — rule_48: công ty Thiên Phát đột nhiên chuyển về Hà Nội, trái với cast của sách

**File:** `phần_IV/rule_48_通知電話/rule.md` **dòng 15**

**Nguyên văn:**
```
「住所はハノイ市バーディン区フンチエン通り123番、電話番号は変更ございません。」
<br/>*Địa chỉ là số 123 phố Hùng Chiến, quận Ba Đình, Hà Nội ạ. Số điện thoại không đổi ạ.*
```

**Vấn đề.** `nội_dung/_front_matter.md` dòng 58 khai báo rõ: **"Công ty Thiên Phát / ティエンファット社 (TP.HCM, gia công phần mềm)"**. Rule_48 cho Dũng thông báo công ty **chuyển sang văn phòng mới ở Hà Nội** — cách TP.HCM 1.700km — trong khi vẫn nói `電話番号は変更ございません` (số điện thoại không đổi). Chuyển từ TP.HCM ra Hà Nội mà giữ nguyên số điện thoại bàn là bất khả thi, và mâu thuẫn thẳng với hồ sơ nhân vật xuyên suốt cả 2 quyển sách (01 Email + 02 Phone dùng chung cast).

Ngoài ra "phố Hùng Chiến" (`フンチエン通り`) không phải tên phố có thật ở quận Ba Đình — nhưng đây là địa chỉ hư cấu nên không tính là lỗi riêng.

**Đề xuất sửa.** Đổi địa chỉ về TP.HCM cho khớp cast, ví dụ:
> 「住所はホーチミン市1区グエンフエ通り123番、電話番号は変更ございません。」
> *Địa chỉ là số 123 đường Nguyễn Huệ, Quận 1, TP.HCM ạ. Số điện thoại không đổi ạ.*

---

### 🔴 #B-1 — rule_41: dạy 謝罪 (xin lỗi toàn phần) trước khi 事実確認, ngược chuẩn ngành

**File:** `phần_IV/rule_41_クレーム5ステップ/rule.md` **dòng 3, 5, 17**

**Nguyên văn (dòng 17, bước 2 謝罪):**
```
| **3** | **ズン** | 「ご不便をおかけしまして大変申し訳ございません。」 | 2.謝罪 |
```

**Vấn đề.** Thứ tự 傾聴→謝罪→事実確認 tự nó đúng chuẩn ngành Nhật — nhưng **chỉ khi bước 2 được nêu rõ là 部分謝罪 (xin lỗi phần)**, không phải 謝罪 chung chung. Chuẩn xử lý khiếu nại Nhật phân biệt rất rõ:

- **部分謝罪** — xin lỗi vì *cảm xúc/bất tiện gây ra cho khách* (「ご不便をおかけし申し訳ございません」), dùng được NGAY khi chưa biết nguyên nhân.
- **全面謝罪** — thừa nhận lỗi thuộc về mình, **chỉ dùng SAU khi 事実確認 xong**.

Tin tốt: **mẫu câu ở dòng 17 đang đúng** — `ご不便をおかけしまして` chính là 部分謝罪 chuẩn. Tin xấu: **nhãn dạy học lại ghi trống là "2.謝罪"** và bản Việt dòng 3 ghi **"(2) 謝罪 xin lỗi cảm xúc"** — cụm "xin lỗi cảm xúc" mơ hồ, không truyền đạt được ranh giới sống-còn giữa hai loại xin lỗi. Học viên rất dễ suy ra "bước 2 là xin lỗi" rồi thay bằng 「弊社のミスで申し訳ございません」 khi chưa biết lỗi tại ai.

Đây là rủi ro thật: nhận lỗi qua điện thoại trước khi xác minh có thể bị dùng làm căn cứ đàm phán bồi thường.

**Đề xuất sửa.**
1. Dòng 3: `**(2) 部分謝罪 — xin lỗi vì đã gây bất tiện (CHƯA nhận lỗi thuộc về ai)**`
2. Dòng 5: `クレーム対応の5ステップ：傾聴→部分謝罪→事実確認→解決→再発防止。`
3. Dòng 17 nhãn: `2.部分謝罪`
4. Thêm mục cảnh báo cuối rule:
   > **⚠️ Ranh giới quan trọng.** Bước 2 chỉ xin lỗi vì *sự bất tiện khách phải chịu*. Tuyệt đối **không nói 「弊社のミスです」/「全責任は弊社に…」 ở bước này** — câu đó chỉ dùng sau khi bước 3 xác minh xong lỗi đúng là của mình (xem Rule 45).

---

### 🔴 #B-2 — rule_45: `全責任は弊社にございます` không kèm bất kỳ cảnh báo điều kiện nào

**File:** `phần_IV/rule_45_謝罪電話/rule.md` **dòng 14 + 21 (câu chốt)**

**Nguyên văn:**
```
dòng 14: 「弊社の確認漏れにより、納期を1日遅らせる結果となりました。全責任は弊社にございます。」
dòng 21: > **「全責任は弊社にございます。」**   ← câu chốt của cả rule
```

**Vấn đề.** `全責任は弊社にございます` ("toàn bộ trách nhiệm thuộc về công ty chúng tôi") là **câu nặng nhất trong toàn bộ 25 rule tôi rà** — nó là 全面謝罪 tuyệt đối, không chừa đường lùi. Sách chọn nó làm **câu chốt** — tức là câu học viên được yêu cầu học thuộc và dùng lại.

Trong ngữ cảnh hội thoại rule_45 thì dùng đúng: nguyên nhân đã rõ (`弊社の確認漏れにより` — do bên mình sót kiểm tra), thiệt hại nhỏ và đã lượng hoá (chậm 1 ngày). **Nhưng câu chốt bị tách khỏi ngữ cảnh đó** và đưa vào Phụ lục A (script template — theo front matter dòng 48 là để "học thuộc cụm câu"). Học viên sẽ mang câu này ra dùng trong sự cố chưa rõ nguyên nhân, hoặc sự cố có phần lỗi từ phía khách/bên thứ ba (như chính rule_34: lỗi của **配送業者** — bên vận chuyển, không phải Thiên Phát).

Mục "Tránh" của rule_45 (dòng 25-26) chỉ cảnh báo chiều ngược lại (đừng lưỡng lự, đừng đổ lỗi hoàn cảnh) — **không có một chữ nào cảnh báo chiều nhận lỗi quá tay.** Một rule dạy nhận trách nhiệm mà chỉ có phanh một chiều.

**Đề xuất sửa.** Thêm vào mục "Tránh" của rule_45:
> - 「全責任は弊社にございます」 **khi chưa xác minh xong nguyên nhân** → nhận lỗi thay cho cả bên thứ ba (vận chuyển, hạ tầng, phía khách). Chưa rõ nguyên nhân thì dùng 「ご迷惑をおかけし申し訳ございません。原因を確認の上、改めてご報告いたします」.

Và ghi chú điều kiện ngay dưới câu chốt dòng 21: *(chỉ dùng khi lỗi đã được xác minh chắc chắn thuộc về bên mình)*.

---

### 🔴 #D-1 — rule_29: câu 「間違いございません」 dịch sai vai, thành ra Dũng tự khẳng định thay khách

**File:** `phần_III/rule_29_復唱依頼/rule.md` **dòng 15**

**Nguyên văn:**
```
| **ズン** | 「ありがとうございます。間違いございません。」 <br/>*Cảm ơn anh ạ. Đúng vậy ạ.* |
```

**Vấn đề.** Bản dịch "Đúng vậy ạ" là dịch đúng nghĩa đen, nhưng **giấu mất chức năng của câu** trong quy trình 復唱. Toàn bộ rule_29 dạy: mình đọc số → **nhờ đối phương lặp lại** → **mình xác nhận bản lặp lại đó có khớp không**. Câu 「間違いございません」 ở đây chính là **bước xác nhận cuối** — Dũng đang nói "anh lặp lại không sai chỗ nào ạ".

"Đúng vậy ạ" trong tiếng Việt đọc như một câu đế phụ hoạ (kiểu "vâng đúng thế"), không mang nghĩa "tôi đã đối chiếu và xác nhận khớp". Học viên mất luôn mắt xích cuối của quy trình mà rule này tồn tại để dạy — trong khi đây là rule về **số tiền 1.200.000 yên và hạn giao hàng**, đúng chỗ sai một chữ là mất tiền.

**Đề xuất sửa** dòng 15:
> *Cảm ơn anh ạ. Anh lặp lại chính xác ạ, không có gì sai lệch ạ.*

---

### 🟡 #A-1 — rule_24: 「お席はございますでしょうか」 hỏi bàn thay vì hỏi người

**File:** `phần_III/rule_24_発信チェック/rule.md` **dòng 30**

**Nguyên văn:**
```
「お世話になっております。ティエンファット社、営業部のズンでございます。松本様のお席はございますでしょうか？」
<br/>*Cảm ơn anh đã hỗ trợ ạ. Em là Dũng, phòng kinh doanh, Cty Thiên Phát ạ. Anh Matsumoto có ở văn phòng không ạ?*
```

**Hai vấn đề trong một câu:**

1. **`お席はございますでしょうか`** — 「ございます」 là dạng khiêm/lịch sự của 「ある」 dùng cho **vật**, ở đây chủ ngữ là 「お席」 (chỗ ngồi) nên ngữ pháp không sai tuyệt đối, nhưng cụm này nghe như đang hỏi *"có còn chỗ ngồi trống không"* (kiểu đặt bàn nhà hàng). Cách hỏi chuẩn khi gọi tìm người là hỏi thẳng **người**: 「松本様はいらっしゃいますでしょうか」 — và đây **chính là câu rule_26 dùng** (dòng 14 và câu chốt dòng 32). Rule_24 và rule_26 dạy hai cách hỏi khác nhau cho cùng một hành động, trong khi rule_24 khai báo `Liên quan: Rule 26`.

2. **`ズンでございます` khi gọi đi** — rule_26 dòng 27 dạy dứt khoát: *"Khi nhận máy = 「でございます」, khi gọi đi = 「と申します」 (khiêm nhường)"*. Rule_24 là tình huống **gọi đi** (cả rule tên là 発信前のチェックリスト) nhưng lại dùng 「でございます」 — **vi phạm chính quy tắc rule_26 đặt ra**. Đây là mâu thuẫn nội bộ trục C ở mức nhẹ.

**Đề xuất sửa** dòng 30 (đồng bộ với rule_26):
> 「お世話になっております。ティエンファット社、営業部のズン**と申します**。**松本様はいらっしゃいますでしょうか？**」

---

### 🟡 #A-2 — rule_30: `ご説明させていただく` — 過剰敬語 với hành động của chính mình

**File:** `phần_III/rule_30_チャネル提案/rule.md` **dòng 14 và dòng 20 (câu chốt)**

**Nguyên văn:**
```
dòng 14: 「…明日30分ほどオンライン会議でご説明させていただくのはいかがでしょうか？」
dòng 20: > 「お電話ですとかえって分かりにくいかと存じます。〇〇でご説明させていただいてもよろしいでしょうか？」
```

**Vấn đề.** `ご説明させていただく` chồng ba lớp khiêm nhường lên **hành động của chính người nói**: tiền tố `ご` + `させていただく` (xin phép được làm) + `いたす` ngầm. Đây đúng dạng 過剰敬語 mà v1.1 đã bắt ở JP-2 (`ご参加` → `参加`) và JP-4 (`ご請求書` → `請求書`) — chỉ khác là lần này script fix không quét tới.

Cần nói rõ: `ご説明させていただく` **rất phổ biến trong thực tế doanh nghiệp Nhật** và không ai coi là lỗi nặng — nhiều tài liệu keigo xếp nó vào nhóm "được chấp nhận rộng rãi dù về lý thuyết là thừa". Nên tôi xếp 🟡 chứ không 🔴. Nhưng sách này **đang dạy BJT**, và đã tự đặt ra chuẩn "bỏ ご/お khỏi hành động của mình" ở rule_42/rule_47 — thì để nguyên ở đây là **thiếu nhất quán với chính chuẩn của mình**.

**Đề xuất sửa** (giữ `させていただく`, chỉ bỏ `ご`):
> 「…明日30分ほどオンライン会議で**説明させていただく**のはいかがでしょうか？」

Nếu muốn dạng sạch nhất: `ご説明いたします` (khiêm nhường một lớp, đúng chuẩn).

---

### 🟡 #A-3 — rule_36: `生存確認` (tiếng lóng nội bộ) còn sót ở dòng tóm tắt

**File:** `phần_IV/rule_36_保留中対応/rule.md` **dòng 5**

**Nguyên văn:**
```
> 保留が30秒超えるごとに『お待たせしております』で生存確認。沈黙は不安を呼ぶ。
```

**Vấn đề.** Changelog v1.2 ghi rõ: *"rule_36 vocab: bỏ 「生存確認」 (internal slang)"*. Bảng từ vựng (dòng 25-28) **đã bỏ thật**, nhưng **dòng tóm tắt tiếng Nhật vẫn còn**. `生存確認` nghĩa đen là "xác nhận còn sống" — tiếng lóng dân IT/nội bộ, không phải thuật ngữ 電話応対, tuyệt đối không dùng trong văn bản dạy BJT. (Nó cũng còn trong `conversation.json` dòng 26 và 39, nhưng JSON ngoài phạm vi đợt này.)

**Đề xuất sửa** dòng 5:
> `保留が30秒を超えるごとに『お待たせしております』と声をかける。沈黙は不安を呼ぶ。`

---

### 🟡 #D-2 — rule_47: 「お世話になっております」 dịch thành lời cảm ơn (VN-A chưa fix)

**File:** `phần_IV/rule_47_督促電話/rule.md` **dòng 13**

**Nguyên văn:**
```
「お世話になっております。ティエンファット社の経理部、ロアンと申します。」
<br/>*Lúc nào cũng cảm ơn anh hỗ trợ ạ. Tôi là Loan, phòng kế toán Cty Thiên Phát ạ.*
```

**Vấn đề.** `REVIEW_FINDINGS_v1.1.md` mục **VN-A** (dòng 111-118) chốt quy ước: *"「いつもお世話になっております」 = **lời chào**, không phải cảm ơn"*, và ghi "Áp dụng khoảng 5-7 chỗ". Chỗ này **chưa được áp dụng** — vẫn dịch thành lời cảm ơn.

Riêng ở rule_47 nó còn lệch tông tình huống: đây là **cuộc gọi đòi nợ**. Mở đầu bằng "Lúc nào cũng cảm ơn anh hỗ trợ ạ" rồi ngay câu sau đòi tiền quá hạn nghe rất trái khoáy trong tiếng Việt — trong khi bản Nhật 「お世話になっております」 là công thức chào trung tính, hoàn toàn tự nhiên ở mọi cuộc gọi.

Lưu ý: rule_24 dòng 30 và rule_48 dòng 13 cũng dịch 「お世話になっております」 thành *"Cảm ơn anh đã hỗ trợ ạ"* — cùng vấn đề, xem #E-1.

**Đề xuất sửa** dòng 13:
> *Chào anh ạ. Tôi là Loan, phòng kế toán Cty Thiên Phát ạ.*

---

### 🟡 #D-3 — rule_46: "giữa lúc bận rộn" (VN-C chưa fix trong rule.md)

**File:** `phần_IV/rule_46_お礼電話/rule.md` **dòng 13**

**Nguyên văn:**
```
「昨日はお忙しい中、貴重なお時間をいただきありがとうございました。」
<br/>*Hôm qua giữa lúc bận rộn anh đã dành thời gian quý báu cho em, em xin cảm ơn anh ạ.*
```

**Vấn đề.** Mục **VN-C** của v1.1 (dòng 125-128) yêu cầu: `Hôm qua giữa lúc bận anh đã dành thời gian` → `Hôm qua anh bận thế mà vẫn dành thời gian`. Changelog Round 2 ghi *"rule_46: 'giữa lúc bận' → 'anh bận thế mà' (VN-C)"* — nhưng **rule.md vẫn giữ nguyên** ("giữa lúc bận rộn"). Fix chỉ ăn vào chỗ khác (phụ lục A), không đụng rule.md.

"Giữa lúc bận rộn" là cấu trúc dịch máy móc từ 「お忙しい中」, tiếng Việt không nói vậy.

**Đề xuất sửa** dòng 13 (và câu chốt dòng 20 nếu có bản dịch):
> *Hôm qua anh bận thế mà vẫn dành thời gian quý báu cho em, em xin cảm ơn anh ạ.*

---

### 🟡 #D-4 — rule_40: `左様でございましたか` dịch thành "em hiểu rồi" — mất sắc thái đồng cảm

**File:** `phần_IV/rule_40_怒り客対応/rule.md` **dòng 14, 21, 26**

**Nguyên văn:**
```
dòng 14: 「はい...左様でございましたか。」 <br/>*Vâng... em hiểu rồi ạ.*
dòng 21: - **「はい...」「左様でございますか」** = câu chêm xác nhận đang lắng nghe, tiếng Việt như "Vâng... em hiểu".
```

**Vấn đề.** Trong tình huống khách **đang giận**, 「左様でございましたか」 là 相槌 mang sắc thái *"ra là đã xảy ra chuyện như vậy ạ"* — công nhận trải nghiệm của khách, mời họ nói tiếp. Dịch thành **"em hiểu rồi"** trong tiếng Việt lại có nguy cơ đọc như **"thôi tôi nắm rồi, đủ rồi"** — hàm ý cắt lời, đúng cái mà rule_40 dòng 3 cấm ("đừng cắt ngang", "để họ nói hết").

Bản dịch đang phản tác dụng với chính bài học. Đây cũng là mắt xích 共感 mà #C-2 chỉ ra là đang thiếu.

**Đề xuất sửa** dòng 14:
> *Vâng... ra là đã xảy ra chuyện như vậy ạ.*

và sửa dòng 21 giải thích cho khớp.

---

### 🟡 #E-1 — 「お世話になっております」 dịch 3 kiểu khác nhau trong cùng 2 phần

**Các file:**

| File | Dòng | Bản dịch hiện tại |
|---|---|---|
| `rule_24_発信チェック/rule.md` | 30 | *Cảm ơn anh đã hỗ trợ ạ.* |
| `rule_26_発信名乗り/rule.md` | 14 | *Em chào chị ạ.* ✅ |
| `rule_47_督促電話/rule.md` | 13 | *Lúc nào cũng cảm ơn anh hỗ trợ ạ.* |
| `rule_48_通知電話/rule.md` | 13 | *Cảm ơn anh đã hỗ trợ ạ.* |

**Vấn đề.** Cùng một công thức chào Nhật, bốn chỗ dịch ba kiểu. Chỉ rule_26 làm đúng quy ước VN-A. Học viên đọc tuần tự III → IV sẽ không biết câu này rốt cuộc nghĩa là chào hay cảm ơn.

**Đề xuất sửa.** Chuẩn hoá toàn bộ về **"Em chào anh/chị ạ."** (hoặc "Tôi chào anh ạ" với Loan — xem #E-3), theo đúng quy ước v1.1 mục VN-A đã chốt.

---

### 🟡 #E-2 — mục lục ghi tiêu đề JP rule_38 khác với file thật

**File:** `meta/mục_lục.md` **dòng 77** vs `phần_IV/rule_38_電話が遠い/rule.md` **dòng 1**

```
mục lục:  | 38 | Khi nghe không rõ — "お電話が遠いようですが" | 聞き取れない時の言い方 |
file:     # Rule 38 — Khi nghe không rõ / お電話が遠いようですが
```

**Vấn đề.** Tiêu đề JP trong mục lục (`聞き取れない時の言い方`) không khớp tiêu đề JP trong file (`お電話が遠いようですが`). Đây là tàn dư của lần đổi slug (folder cũ `rule_38_聞き取れない/` giờ rỗng). Khi build sách, mục lục và đầu chương sẽ hiện hai tên khác nhau.

Kiểm chéo 24 rule còn lại: tất cả đều khớp. Chỉ mình rule_38 lệch.

**Đề xuất sửa.** Sửa mục lục dòng 77 cột JP thành `お電話が遠いようですが` (hoặc ngược lại — miễn thống nhất; tôi nghiêng về lấy theo file vì slug folder cũng đã đổi theo hướng đó).

---

### 🟡 #E-3 — rule_47: Loan xưng "tôi" nhưng vẫn đóng câu bằng "ạ" kiểu dưới-trên

**File:** `phần_IV/rule_47_督促電話/rule.md` **dòng 13, 14, 15, 17**

**Vấn đề.** VN-2 của v1.1 đã sửa Loan (経理部長, nữ, cấp cao) từ "em" → **"tôi"** — và fix này **đã ăn đúng** vào rule.md (dòng 14: *"Tôi xin gọi xác nhận…"*, dòng 15: *"bên tôi chưa thấy tiền vào"*). ✅

Nhưng vẫn còn lệch nhẹ: dòng 17 *"Cảm ơn anh đã xử lý ạ. Mong anh tiếp tục hỗ trợ."* — nửa đầu có "ạ", nửa sau không. Và dòng 13 vẫn xưng "Tôi" nhưng đóng "ạ" (*"…Cty Thiên Phát ạ"*). Một 経理部長 gọi đòi nợ **đối tác ngang hàng** thì tông chuẩn là lịch sự-ngang vai, không cần "ạ" dày.

Đây là lỗi tông giọng nhẹ, không phải sai chức vụ. Ghi nhận để đợt sửa cân nhắc, **không bắt buộc đổi**.

**Đề xuất (tuỳ chọn).** Dòng 17: *"Cảm ơn anh đã hỗ trợ xử lý. Mong anh tiếp tục giúp đỡ ạ."* — thống nhất mức "ạ" trong cùng một lượt lời.

---

### 🔵 #F-1 — rule_25: bảng đánh giá khung giờ bị MẤT toàn bộ icon, còn trơ khoảng trắng

**File:** `phần_III/rule_25_時間帯/rule.md` **dòng 13-18**

**Nguyên văn (repr thật, chú ý hai dấu cách):**
```
| 9:00-9:30 |  Tránh | Bắt đầu giờ, kiểm mail, họp đầu ngày |
| 10:00-11:30 |  Tốt | Đối phương đã vào guồng công việc |
| 12:00-13:00 |  Cấm | Giờ nghỉ trưa |
| 14:00-16:30 |  Tốt | Buổi chiều ổn định |
| 17:00-17:30 | △ Hạn chế | Sắp hết giờ |     ← △ còn sống
| 17:30+ |  Tránh | Đã hoặc đang về |
```

**Vấn đề.** Cột "Đánh giá" thiết kế để có icon (❌/⭕/△…). Ký tự `△` ở dòng 17 **còn nguyên**, nhưng 5 dòng còn lại icon **đã bị xoá mất**, để lại khoảng trắng thừa. Đây là dấu vết một lần xử lý emoji/encoding hỏng — chỉ ăn vào emoji, không ăn vào ký hiệu hình học `△`.

Hệ quả hiển thị: bảng mất hoàn toàn tín hiệu thị giác phân biệt khung Tốt / Tránh / Cấm — chính là giá trị cốt lõi của rule_25.

**Đề xuất sửa.** Phục hồi ký hiệu **dạng text thuần** (tránh tái diễn lỗi encoding), ví dụ `◎ Tốt` / `△ Hạn chế` / `✕ Tránh` / `✕✕ Cấm`, hoặc đơn giản bỏ hẳn cột icon và để chữ.

---

### 🔵 #F-2 — rule_33: mẹo "gửi mail trong 1h" trỏ Rule 51 nhưng bản thân rule không kiểm chứng được

**File:** `phần_III/rule_33_国際電話/rule.md` **dòng 22**

**Nguyên văn:** `- Sau cuộc gọi → gửi mail tóm tắt trong 1h (Rule 51).`

**Vấn đề.** Mốc "1 tiếng" chỉ xuất hiện ở đây; rule_51 nằm ở phần V (ngoài phạm vi tôi). Mục lục dòng 99 ghi rule_51 là "Phone xong gửi tóm tắt qua mail" — không nêu mốc thời gian. **Cần agent C3 đối chiếu** xem rule_51 có ghi mốc khác (24h chẳng hạn) không. Nếu lệch thì thành mâu thuẫn xuyên phần.

Bản thân mốc 1h cho cuộc gọi quốc tế là hợp lý thực tế (chênh múi giờ, cần chốt sớm) — không phải lỗi nội dung.

**Đề xuất.** Chuyển mục này cho C3 kiểm chéo với rule_51.

---

### 🔵 #F-3 — rule_36: quy tắc 30 giây vs rule_17 "hold tối đa 1 phút" — cần kiểm chéo

**File:** `phần_IV/rule_36_保留中対応/rule.md` **dòng 3, 5** (khai báo `Liên quan: Rule 17`)

**Vấn đề.** rule_36 dạy: cứ **30 giây** quay lại nói 「お待たせしております」. Mục lục dòng 38 ghi rule_17 là **"Hold tối đa 1 phút"**. Hai con số này *có thể* nhất quán (30s = nhịp trấn an, 60s = trần tuyệt đối) và cách hiểu đó hợp lý về nghiệp vụ.

Nhưng **rule_36 không hề nói mối quan hệ đó**, chỉ khai báo `Liên quan: Rule 17` trống trơn. Học viên gặp hai con số 30s/60s ở hai rule sẽ không biết cái nào là trần.

**Đề xuất.** Thêm một câu vào rule_36 làm rõ tầng bậc, ví dụ: *"30 giây = nhịp trấn an; 1 phút (Rule 17) = trần tuyệt đối — quá 1 phút phải xin gọi lại thay vì giữ máy tiếp."* Cần C3/C1 xác nhận nội dung rule_17 trước khi chốt chữ.

---

### 🔵 #F-4 — rule_39: bảng 5 công thức nhưng hội thoại chỉ minh hoạ 2

**File:** `phần_IV/rule_39_聞き返し5パターン/rule.md` **dòng 11-17 vs 19-26**

**Vấn đề.** Rule tên là "5 công thức", bảng liệt kê đủ 5 (dòng 13-17), nhưng phần hội thoại (dòng 19) ghi rõ *"công thức 4 + 5"* — chỉ minh hoạ 2/5. Ba công thức đầu (hỏi lại toàn bộ / phần cụ thể / nghĩa từ) không có ví dụ ngữ cảnh nào.

Không sai, nhưng độ sâu lệch so với các rule cùng phần (rule_41 minh hoạ đủ 5/5 bước, rule_45 đủ 4/4 bước). Với rule được đặt tên bằng con số "5", việc chỉ diễn 2 làm giảm giá trị sử dụng.

**Đề xuất (nếu có ngân sách nội dung).** Thêm 1 lượt hội thoại ngắn minh hoạ công thức 3 (`〇〇とはどのような意味でしょうか？`) — công thức hữu dụng nhất với người học N3 mà lại đang bị bỏ trống.

---

## 3. Lỗi hệ thống (lặp nhiều rule)

### HT-1 🔴 Cụm rule khiếu nại/xin lỗi (40 → 41 → 45) không có trục quy trình thống nhất

Đây là **vấn đề nghiêm trọng nhất của phần IV**, gộp từ #C-2, #C-3, #B-1, #B-2.

Ba rule liền mạch về cùng một chuỗi nghiệp vụ, khai báo `Liên quan` chéo lẫn nhau, nhưng mỗi rule tự định nghĩa một quy trình riêng:

| Rule | Quy trình dạy | Có bước 事実確認? | Có 再発防止? | Loại xin lỗi |
|---|---|---|---|---|
| 40 | 傾聴 → **共感** → 確認 → 解決 | ✅ | ❌ | không nêu |
| 41 | 傾聴 → **謝罪** → 事実確認 → 解決 → 再発防止 | ✅ | ✅ | ghi trống "謝罪" |
| 45 | **事実認める** → 謝罪 → 復旧策 → 再発防止 | ❌ **không có** | ✅ | 全面謝罪 (全責任は弊社に) |

Ba cột "bước 2" ra ba đáp án khác nhau. Rule_45 mất hẳn bước xác minh và lại là rule dạy câu nhận trách nhiệm nặng nhất.

**Đề xuất xử lý gộp (nên làm 1 lần, không vá lẻ):**
1. Chọn **rule_41 làm quy trình xương sống**, sửa nhãn bước 2 thành **部分謝罪** (#B-1).
2. Sửa rule_40 dòng 5 cho khớp, hoặc bổ sung câu 共感 thật vào hội thoại (#C-2).
3. Thêm điều kiện tiên quyết vào rule_45: chỉ dùng **sau khi** đã qua bước 3 của rule_41 (#C-3), kèm cảnh báo cho câu 全責任 (#B-2).
4. Thêm một sơ đồ nhỏ ở đầu rule_41 chỉ rõ vị trí ba rule trên cùng một trục thời gian: rule_40 (phút đầu, khách đang giận) → rule_41 (toàn bộ quy trình) → rule_45 (cuộc gọi xin lỗi sau khi đã xác minh xong).

### HT-2 🟡 Fix v1.1/v1.2 sửa bản Nhật, bỏ quên bản Việt

Xuất hiện ở **#C-1 (rule_34 — nặng)**, và ở dạng nhẹ hơn tại #D-2 (VN-A), #D-3 (VN-C). Mẫu chung: script quét theo chuỗi tiếng Nhật hoặc chỉ chạy trên `conversation.json`/phụ lục, không quét `sentence_translation` và không quét `rule.md`.

**Đề xuất cho đợt sửa.** Sau mỗi lần đổi câu Nhật, **bắt buộc đọc lại câu Việt cùng dòng**. Riêng rule_34 phải sửa VN ở **cả `rule.md` lẫn `conversation.json`** (dù JSON ngoài phạm vi đợt này — cần ghi vào backlog).

### HT-3 🟡 Dịch các công thức chào/xác nhận theo nghĩa đen, mất chức năng giao tiếp

Gộp #D-1 (`間違いございません` → "Đúng vậy ạ"), #D-4 (`左様でございましたか` → "em hiểu rồi"), #E-1 (`お世話になっております` → "cảm ơn").

Cả ba đều là **công thức xã giao Nhật** mà bản dịch xử lý như câu có nghĩa đen. Với #D-4 bản dịch còn phản lại chính bài học. Nên rà cụm này như một nhóm, không sửa lẻ.

### HT-4 🔵 Tàn dư đổi slug chưa dọn

7 folder rỗng chỉ chứa `.placeholder` (bảng ở đầu báo cáo) + mục lục rule_38 lệch tên (#E-2). Rủi ro thấp nhưng dễ gây nhầm khi agent sau đếm phạm vi — **chính đề bài đợt này đã bị nhầm 32 vs 25 vì lý do đó.**

---

## 4. 10 lỗi cần sửa gấp nhất

| # | Mã | Rule / dòng | Vấn đề | Mức |
|---|---|---|---|---|
| 1 | #C-1 | rule_34 dòng 15 | JA nói "sẽ chia sẻ gấp", VN nói "anh thấy thế nào ạ?" — fix v1.2 quên bản Việt; sai cả ở `conversation.json` | 🔴 |
| 2 | #B-2 | rule_45 dòng 14, 21 | `全責任は弊社にございます` làm câu chốt, không một dòng cảnh báo điều kiện — rủi ro nhận lỗi thay bên thứ ba | 🔴 |
| 3 | #B-1 | rule_41 dòng 3, 5, 17 | Nhãn bước 2 ghi trống "謝罪", không phân biệt 部分謝罪 / 全面謝罪 | 🔴 |
| 4 | #C-2 | rule_40 dòng 5 vs rule_41 dòng 5 | Hai quy trình khiếu nại mâu thuẫn (共感 vs 謝罪); rule_40 lý thuyết còn trái mẫu câu của chính nó | 🔴 |
| 5 | #C-3 | rule_45 dòng 3, 5 | Quy trình xin lỗi thiếu hẳn bước 事実確認 mà rule_41 coi là bắt buộc | 🔴 |
| 6 | #C-4 | rule_48 dòng 15 | Thiên Phát chuyển về Hà Nội, trái front matter ("TP.HCM"), lại giữ nguyên số điện thoại | 🔴 |
| 7 | #D-1 | rule_29 dòng 15 | `間違いございません` dịch "Đúng vậy ạ" — mất mắt xích cuối của quy trình 復唱 tiền/hạn giao | 🔴 |
| 8 | #A-1 | rule_24 dòng 30 | `お席はございますでしょうか` + `でございます` khi gọi đi — trái chính quy tắc rule_26 đặt ra | 🟡 |
| 9 | #F-1 | rule_25 dòng 13-18 | Bảng khung giờ mất sạch icon, còn trơ khoảng trắng (`△` sót lại) — hỏng giá trị cốt lõi của rule | 🔵 |
| 10 | #E-1 | rule_24/26/47/48 | 「お世話になっております」 dịch 3 kiểu khác nhau, chỉ rule_26 đúng quy ước VN-A | 🟡 |

---

## 5. Ghi chú cho giai đoạn SỬA

### Thứ tự nên làm

1. **Làm HT-1 (cụm 40/41/45) trước tiên, làm một lượt.** Đây là 4/8 lỗi 🔴 và là loại "sách tự mâu thuẫn" + "lời khuyên sai gây hậu quả thật" — hai loại chủ nhà xếp nguy hiểm nhất. Vá lẻ từng rule sẽ tạo mâu thuẫn mới.
2. **#C-1 (rule_34)** — sửa nhanh, một dòng, nhưng nhớ **sửa cả `conversation.json`** (ghi vào backlog vì JSON ngoài phạm vi đợt này).
3. Nhóm HT-3 (dịch công thức xã giao) — sửa theo cụm, dùng quy ước VN-A của v1.1 làm chuẩn.
4. Các lỗi lẻ còn lại.

### Cảnh báo cho người sửa

- ⚠️ **Đừng "sửa tiện tay" `申し伝えます` ở rule_31 dòng 17 và rule_32 dòng 15.** Nhìn qua rất giống lỗi JP-5 (v1.1 từng sửa `申し伝える` → `お伝えする` ở rule_23), nhưng **ở đây hoàn toàn ĐÚNG**: người nói là **受付 của Hakuō** đang hứa với **Dũng — người ngoài công ty**. Đúng chuẩn: với người ngoài, dùng 「申し伝えます」 bất kể người trong công ty là cấp trên hay cấp dưới; dùng 「お伝えいたします」 mới là sai vì nó nâng người trong công ty mình. Rule_23 khác vì đó là ngữ cảnh **nội bộ**. Đã kiểm chứng bằng tài liệu keigo (nguồn cuối báo cáo).
- ⚠️ **`ご説明させていただく` (#A-2) là lỗi mức tranh luận được**, rất phổ biến ngoài đời thật. Nếu chủ nhà muốn giữ vì tính tự nhiên, hoàn toàn chấp nhận được — chỉ cần chọn một lập trường và áp dụng đều toàn sách. Đừng sửa rule_30 rồi để nguyên chỗ khác.
- ⚠️ **#E-3 (tông "ạ" của Loan) là lỗi thẩm mỹ, KHÔNG bắt buộc sửa.** Phần cốt lõi (xưng "tôi" thay "em") đã fix đúng rồi. Nêu ra để khỏi bị agent sau báo trùng thành lỗi mới.
- ⚠️ **#F-2, #F-3 cần C3/C1 xác nhận** trước khi sửa — chúng phụ thuộc nội dung rule_17 và rule_51 nằm ngoài phạm vi của tôi. Đừng chốt chữ khi chưa đọc hai rule đó.

### Về xưng hô "em" (theo cảnh báo trong đề bài)

Tôi đã kiểm riêng trục này và **KHÔNG báo lỗi xưng hô nào ngoài #E-3 (mức tuỳ chọn)**. Cụ thể: Dũng (BD担当, trẻ, nhân vật chính) xưng "em" với Matsumoto (PM, 45-50 tuổi, khách hàng) là **hoàn toàn đúng** — bản Nhật xác nhận bằng `〜と申します`, `〜いたします`, `お送りいたします`. Các chỗ Matsumoto gọi Dũng là "em" là **ngôi 2**, cũng đúng. Loan (経理部長) đã được fix sang "tôi" ở đợt v1.1 và fix đó **đã ăn vào rule.md**.

→ Đúng như cảnh báo từ sách 08: phần lớn "em" ở đây là hợp lệ. **Không có 43 dòng, cũng không có 7 dòng — chỉ có 1 ghi chú tông giọng mức tuỳ chọn.**

### Rule sạch (không phát hiện lỗi)

Các rule sau tôi rà không thấy lỗi đáng báo: **rule_26, rule_27, rule_28, rule_31, rule_32, rule_35, rule_37, rule_38, rule_42, rule_43, rule_44, rule_46**.

Trong đó **rule_43** và **rule_42** đáng ghi nhận: là hai mục v1.1 nêu đích danh (JP-1b, JP-2, VN-K) và **cả ba fix đều đã ăn đúng, đầy đủ cả JA lẫn VN**. **rule_39** cũng sạch về nội dung (fix P0 keigo đã đồng bộ 3 chỗ), chỉ có ghi chú độ sâu #F-4 mức 🔵.

---

## Nguồn tham khảo (kiểm chứng nghi thức doanh nghiệp Nhật)

- [電話でのその対応に自信あり？社内外での「申し伝える」の正しい使い方 — Precious.jp](https://precious.jp/articles/-/33530) — xác nhận 受付 dùng 「申し伝えます」 với người ngoài là đúng (ghi chú cảnh báo mục 5)
- [クレーム電話対応は「お詫び」がカギ！基本の手順と例文 — NECネッツエスアイ](https://symphonict.nesic.co.jp/workingstyle/canario/response/apology/) — thứ tự 傾聴→お詫び→事実確認
- [そのクレーム対応、間違っていませんか？ — リスキル](https://www.recurrent.jp/articles/complaint-calls) — phân biệt **部分謝罪 vs 全面謝罪**, căn cứ chính cho #B-1 và #B-2
- [電話でのクレーム対応！正しい方法や注意点 — かなめ介護研究会](https://kaname-law.com/care-media/complaint/phone-handling-complaints/) — rủi ro nhận lỗi trước khi xác minh
