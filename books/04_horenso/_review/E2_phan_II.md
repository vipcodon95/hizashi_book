# [04-E2] Rà soát phần II — 連絡 (9 rule)
> Agent: E2 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: `nội_dung/phần_II/rule_13..21/rule.md` (895 dòng). Chỉ báo cáo, không sửa.

## Tóm tắt số lỗi

| Mức | Số lỗi | Ghi chú |
|---|---|---|
| 🔴 A — dạy làm sai việc thật | 4 | rule 21 (múi giờ), rule 16 (@here vs DnD), rule 15 (mail 5MB/critical), rule 17 (mốc 3 phút) |
| 🔴 B — tự mâu thuẫn | 5 | 3 vắt sang phần IV/V, 2 trong nội bộ phần II |
| 🔴 C — tiếng Nhật sai | 1 | rule 16 vocab 拝見 (fix nửa vời) |
| 🔴 D — sai sự thật | 2 | rule 21 múi giờ (2 khẳng định sai), lịch thứ/ngày lệch |
| 🟡 E — tiếng Việt | 3 | tiếng Anh thừa hai phía, 1 câu dịch lệch |
| 🟡 F — nhất quán | 5 | format bảng rule 21, văn dàn ý "L1", mục lục, vocab |
| **Tổng** | **20** | |

**Kết luận chung:** 5/9 rule (13, 14, 17, 19, 20) về mặt tiếng Nhật là **sạch** — keigo đúng, uchi/soto đúng, không 二重敬語. Lỗi nặng tập trung ở **rule 21** (sai sự thật múi giờ + vỡ format) và **rule 16** (fix nửa vời + một khẳng định kỹ thuật sai). Không có ca `ご相談させて` nào trong phần II — mục CẤM SỬA #2 của `00_TIEN_DO.md` không chạm phạm vi này.

---

## 1. Danh sách lỗi theo rule

### rule_13 即時性 — **SẠCH**
Tiếng Nhật đúng. `緊急共有` / `保留してください` / `〇〇までに共有します` đều là cách nói thật trong doanh nghiệp Nhật. Cấu trúc "chia sẻ + việc cần làm + hạn chi tiết" khớp thực tế. Vocab 8/8 khớp thoại.

Một điểm **cố ý, không phải lỗi** (ghi để khỏi bị sửa nhầm): dòng 3 nói "để 1 ngày = giá trị giảm 80%" — đây là con số tu từ minh hoạ, không phải thống kê. Nhưng vì sách đặt nó cạnh nhau trong cùng câu với "15 phút" như thể là quy luật đo được, nên **nếu giai đoạn sửa muốn chặt chẽ** thì nên đổi sang lối nói định tính ("giá trị rơi rất nhanh"), không nên gán số phần trăm giả. Mức 🔵.

---

### rule_14 全員連絡 — 2 lỗi 🟡

**[14-1] 🟡 E — thống kê bịa, trình bày như số liệu thật (dòng 3)**
```
VN: Thực tế: 30% chỉ lướt tiêu đề, 50% đọc 3 dòng đầu, 20% đọc kỹ.
```
Ba con số cộng đúng 100% và mở đầu bằng "**Thực tế:**" → người đọc hiểu là số liệu khảo sát. Không có nguồn. Cùng loại với ca "80%" ở rule 13 nhưng nặng hơn vì có chữ "Thực tế".
→ Đề xuất: bỏ "Thực tế:", đổi thành "Phần lớn chỉ lướt tiêu đề, một số đọc 3 dòng đầu, rất ít người đọc kỹ."

**[14-2] 🟡 F — câu chốt mất hẳn tiếng Nhật (dòng 80)**
```
> **「Tóm tắt ngắn → Chi tiết → Việc cần làm theo người phụ trách → Lần rà tiến độ tiếp theo」**
```
Đây là **ô "Câu chốt"** — thứ học viên học thuộc để nói ra miệng. 8/9 rule còn lại đều để câu chốt bằng tiếng Nhật (rule 13 `【緊急共有】〜`, rule 18 `お詫び → 理由 → 候補3つ…`, rule 19 `期間 / 復帰 / 代行 / 自動返信`). Riêng rule 14 dùng ngoặc kép Nhật 「」 bọc **toàn chữ Việt** → học viên không có gì để nói.
→ Đề xuất: `「概要 → 詳細 → 担当者別アクション → 次回進捗確認」`.

Cùng lỗi ở dòng 5 (khối tóm tắt tiếng Nhật): `全員向けの連絡は **概要 → Chi tiết → Việc cần làm theo người phụ trách** で構成` — chen tiếng Việt vào giữa câu tiếng Nhật.
→ Đề xuất: `概要 → 詳細 → 担当者別アクション で構成`.

---

### rule_15 チャネル選択 — 3 lỗi (1 🔴, 2 🟡)

**[15-1] 🔴 B — ma trận trong thoại MÂU THUẪN với ma trận trong bảng (dòng 35 vs 51-52)**

Thoại (dòng 35) dạy 5 ô:
```
JA: 緊急 × チーム → Slack @here または @channel
VN: Khẩn x team → Slack @here hoặc @channel
```
Bảng tổng hợp ngay bên dưới (dòng 51-52) lại tách đôi mức khẩn và gán **khác hẳn**:
- Nghiêm trọng (<1h) × Nhóm → "Điện thoại (người chủ chốt) → Slack @channel tiếp nối"
- Khẩn (1-4h) × Nhóm → "Slack @here"

Tức bảng nói @channel **chỉ** cho mức nghiêm trọng, còn thoại nói @here/@channel **thay thế được cho nhau** ở cùng một mức "khẩn". Học viên đọc thoại sẽ dùng @channel cho việc 1-4h — đúng thứ mà **rule 16 dòng 24 phạt** (`@channel は本番障害など緊急時のみ`).
→ Đề xuất: sửa thoại dòng 35 thành `緊急 × チーム → Slack @here（本番障害級のみ @channel）`, để thoại khớp bảng và khớp rule 16.

**[15-2] 🔴 A — "Mail cho urgent < 1h — sếp lướt mail mỗi 2-3h" (dòng 68)**
Lý do đưa ra sai bản chất: vấn đề của mail không phải "sếp lướt mỗi 2-3h" (khẳng định về tần suất không kiểm chứng được, và nhiều sếp Nhật để thông báo mail bật liên tục), mà là **mail không có cơ chế báo động, không xác nhận đã đọc**. Nêu lý do sai làm học viên suy ra sai sang tình huống khác (vd: "sếp này check mail liên tục thì mail urgent OK") — trong khi kết luận đúng phải là *urgent luôn cần kênh có phản hồi tức thời*.
→ Đề xuất: "Mail cho việc urgent < 1h — mail không có cơ chế báo động, không biết đối phương đã đọc chưa. Việc gấp phải dùng kênh xác nhận được ngay (điện thoại/Slack)."

**[15-3] 🟡 F — hàng "Thông thường" xuất hiện 2 lần trong cùng bảng (dòng 53 và 55)**
```
| **Thông thường (1-2 ngày)** | Slack DM hoặc Mail | Slack #kênh | Mail |
...
| **Thông thường / xã giao** | Slack DM | Slack #random | (không) |
```
Cột trái là "Mức khẩn" — hai hàng cùng nhãn "Thông thường" với chỉ dẫn khác nhau cho cùng một ô (1 người → "Slack DM hoặc Mail" vs "Slack DM"). Người tra bảng không biết theo hàng nào.
→ Đề xuất: đổi hàng cuối thành **「雑談・社交」/ "Xã giao"** cho khỏi trùng nhãn.

**Ghi chú CẤM SỬA cho rule 15:** dòng 21 (`リン` chọn sai cả 4 kênh) nằm trong khối `## Hội thoại XẤU` → **lỗi cố ý**, đừng sửa. Ruby `マトリクス<rt>matorikusu</rt>` ở dòng 34 dùng romaji trong `<rt>` (khác thông lệ dùng kana) — xem mục 6.

---

### rule_16 Slackマナー — 4 lỗi (1 🔴 A, 1 🔴 C, 2 🟡)

**[16-1] 🔴 C — fix v1.1 chạy NỬA VỜI: thoại đã đổi nhưng vocab còn nguyên (dòng 39 vs 90)**

`meta/STATUS.md` dòng 49 khai: *"rule_16 田中PMO: 拝見します → 確認いたします"*. Thoại **đã** đổi thật:
```
dòng 39 JA: 「確認いたします。」  VN: Tôi xem nhé.
```
Nhưng bảng từ vựng cuối rule **vẫn giữ từ đã bị gỡ**:
```
dòng 90: | 拝見 | はいけん | BÁI KIẾN | Xem (khiêm) |
```
`拝見` giờ **không còn xuất hiện ở bất kỳ đâu trong thoại** (đã grep toàn bộ `phần_*/`: chỉ còn đúng 1 hit là chính dòng vocab này). Đây đúng kiểu hụt #3 của rule mục 5 — "vá thoại, quên bảng từ vựng".
→ Đề xuất: thay dòng vocab thành `| 確認 | かくにん | XÁC NHẬN | Xác nhận, kiểm tra |`.

**[16-2] 🔴 A — khẳng định sai về cơ chế Slack, dẫn tới lời khuyên sai (dòng 28 và 45)**
```
dòng 28 VN: @channel lúc 23:30 → gọi cả 30 người (dù đang chế độ không làm phiền)
dòng 45 VN: 【1】「@here」 — chỉ gọi người đang trực tuyến. Không phá DnD/giờ riêng.
```
Đã kiểm chứng (Slack Help): **Do Not Disturb chặn mọi loại thông báo, kể cả @channel và @here.** DnD chỉ bị vượt khi *người gửi* chủ động bấm "notify anyway". Vậy:
- "@channel gọi cả 30 người **dù đang DnD**" — **sai**. DnD vẫn chặn.
- Hàm ý ở dòng 45 rằng @here an toàn hơn *vì không phá DnD* — **sai về lý do**: @channel cũng không phá DnD.

Khác biệt thật giữa hai thẻ là **phạm vi người nhận**: @channel gọi *toàn bộ* thành viên kể cả người đang offline (họ thấy badge/thông báo khi mở lại), @here chỉ gọi người đang active. Sách nêu đúng điều này ở bảng dòng 55-56, nhưng lời giải thích ở dòng 28/45 lại đổi sang trục "DnD" sai.
→ Đề xuất dòng 28: "@channel lúc 23:30 → chạm tới toàn bộ 30 thành viên kể cả người đã nghỉ; sáng hôm sau ai cũng mở máy thấy một thông báo lẽ ra không cần."
→ Đề xuất dòng 45: "【1】「@here」— chỉ gọi người đang trực tuyến, không đụng tới người đã hết giờ làm."

**[16-3] 🟡 F — văn dàn ý "L1" lọt vào bản đọc (dòng 28)**
```
**Vì sao xấu:** L1 (1) @channel lúc 23:30 → ...
```
"L1" = nhãn dòng thoại thời soạn thảo, không có nghĩa với học viên (bảng thoại rule 16 không đánh số dòng). Cùng bệnh ở rule 21 dòng 28 ("L1 / L3 / L4").
→ Đề xuất: bỏ "L1", viết thẳng "(1) @channel lúc 23:30 → …".

**[16-4] 🟡 F — bảng "4 trụ cột" thực ra có 5 hàng (dòng 51-59)**
Tiêu đề `## 4 trụ cột phép tắc trên Slack` và dòng 5 (`Slack 4 trụ cột phép tắc：①…②…③…④…`) đều nói **4**, nhưng bảng liệt kê **5** mục: @channel, @here, @username, Luồng, DM. Câu chốt dòng 67 lại quay về 4 (`@channel / @here / luồng / DM` — bỏ @username).
→ Đề xuất: hoặc đổi tiêu đề thành "5 công cụ", hoặc gộp @username vào hàng DM. Nên đổi tiêu đề — @username và DM là hai thứ khác nhau thật.

---

### rule_17 緊急連絡 — 2 lỗi (1 🔴 B, 1 🟡)

**[17-1] 🔴 B — mốc thời gian báo khách MÂU THUẪN với rule 31 (phần IV)**

rule 17 dòng 24 (lời anh Tuấn, khối **TỐT** — tức sách đang dạy làm theo):
```
JA: (1) ハー CTO に第一報、(2) 対応案を3分で固める、(3) その後 松本様に電話
VN: (1) báo đầu cho anh Hà CTO, (2) chốt phương án trong 3 phút, (3) rồi mới gọi anh Matsumoto
```
Ma trận leo cấp dòng 54 cũng chốt: Bước 1 (3 phút) → Bước 2 (10 phút) → Bước 3 (30 phút) mới tới khách.

rule 31 dòng 3 + dòng 61-63 dạy SLA khác hẳn cho **cùng loại sự cố**:
```
②Slack #incident + Tech lead 5分 → ③CTO 15分 → ④客通知 30分 → ⑤ETA 60分
```
So sánh: rule 17 nói **chốt phương án trong 3 phút**; rule 31 nói tới phút 15 CTO mới nhận tin, phút 30 mới báo khách và **第一報 cố ý KHÔNG chứa phương án** (rule 31 ghi chú 【4】: *"không nói nguyên nhân (chưa biết). Chỉ 発生事実 + 影響範囲"*, 【5】: *"ETA は別途"*).

→ Đây là mâu thuẫn **về nguyên tắc**, không chỉ về con số: rule 17 dạy *"tuyệt đối không báo khách khi chưa có phương án"*, rule 31 dạy *"báo khách trong 30 phút với chỉ sự thật + ảnh hưởng, phương án gửi sau"*. Học viên gặp Sev1 sẽ không biết theo cái nào — và theo rule 17 thì sẽ **trễ SLA báo khách** để chờ chốt phương án.

→ Đề xuất: giữ rule 31 làm chuẩn (nó chi tiết và đúng thực tế incident hơn), sửa rule 17 thành *"báo khách sau khi đã nắm được **phạm vi ảnh hưởng** và đã có **người chịu trách nhiệm điều tra** — không cần chờ có phương án hoàn chỉnh; phương án/ETA gửi ở lần liên lạc thứ hai"*. Riêng "3 phút để chốt phương án" nên bỏ hẳn: không có sự cố Sev1 nào chốt được phương án trong 3 phút, và đặt mốc đó vào sách khiến học viên hoặc phóng đại sự tự tin, hoặc trễ báo khách.

**[17-2] 🟡 F — bảng ma trận leo cấp thủng ô (dòng 57)**
```
| **Vấn đề nhân sự nội bộ** | HR → CEO | (không báo lên khách) | |
```
Ô "Bước 3" bỏ trống hoàn toàn, trong khi ô "Bước 2" lại chứa ghi chú "(không báo lên khách)" vốn là nội dung thuộc bước 3. Hàng dưới (Pháp lý) đặt "(cẩn trọng)" đúng ở cột 3.
→ Đề xuất: `| **Vấn đề nhân sự nội bộ** | HR → CEO | Ban giám đốc | (không báo khách) |`.

**CẤM SỬA rule 17:** dòng 23 và 25 (Dũng đòi gọi khách trước) nằm trong khối XẤU — lỗi cố ý. Dòng 71 "Bỏ qua cấp trung gian, gọi thẳng C-level" là lời khuyên **đúng** với văn hoá Nhật, đừng đổi.

---

### rule_18 スケジュール変更 — 1 lỗi 🟡 + 1 vắt phạm vi

**[18-1] 🟡 F — vocab `お手数` không còn trong thoại (dòng 114)**
`meta/STATUS.md` dòng 50 khai: *"rule_18 Matsumoto: お手数おかけします → 承知しました。新しい招待をお待ちしております"*. Thoại đã đổi đúng (dòng 43). Nhưng vocab dòng 114 vẫn giữ `| お手数 | おてすう | THỦ SỐ | Làm phiền |` — từ này giờ **không xuất hiện ở đâu trong rule 18**. Cùng bệnh với [16-1].
→ Đề xuất: thay bằng từ có thật trong thoại, vd `| 承知 | しょうち | THỪA TRI | Đã hiểu / đã rõ (khiêm) |` hoặc `| 定例会議 | ていれいかいぎ | ĐỊNH LỆ HỘI NGHỊ | Họp định kỳ |`.

**[18-2] 🔵 — "24h trước + 3 phương án" là quy tắc của sách, không phải chuẩn phổ quát**
Dòng 28 để anh Matsumoto (khách Nhật) nói `リスケ連絡は 24時間以上前 + 候補3つ が原則ですよ` — trình bày như một **nguyên tắc chung của giới doanh nghiệp Nhật**. Thực tế đây là good practice hợp lý nhưng không phải quy chuẩn có nguồn; con số "3 phương án" đặc biệt là quy ước riêng. Không sai đến mức gây hại (làm theo thì tốt), nên xếp 🔵 — chỉ đề nghị hạ giọng: `〜が基本かと思います` thay vì `が原則ですよ`, để khỏi dạy học viên áp đặt con số này lên khách khác.

**Phần còn lại của rule 18 sạch.** Mẫu email (dòng 55-76) đúng chuẩn: 【お詫び】【理由】【代替候補】【次のアクション】, đóng bằng `何卒よろしくお願い申し上げます` — chuẩn. `当方にてカレンダー更新` đúng khiêm nhường ngữ.

---

### rule_19 不在連絡 — 1 lỗi 🟡 (+ lịch, xem mục 2)

**[19-1] 🟡 F — mốc thời gian trong tiêu đề khối lệch với nội dung (dòng 32 vs 34)**
```
dòng 32: ## Hội thoại TỐT — đầy đủ 4 yếu tố, 1 tuần trước
dòng 34: *thứ 6 tuần trước, mail chị Hương + cc team · 4/25 thứ 5 17h, Slack #phase2*
```
Nghỉ ngày 4/26 (thứ Sáu theo sách). "Thứ 6 tuần trước" → cách đúng **7 ngày**, khớp "1 tuần trước" ✔. Nhưng luận điểm dòng 3 và câu chốt dòng 76 lại đặt chuẩn là **24 giờ** (`24時間前以上に`), còn tiêu đề khối khoe "1 tuần trước". Hai chuẩn cùng tồn tại mà không nói rõ cái nào là yêu cầu tối thiểu, cái nào là làm tốt hơn mức tối thiểu.
→ Đề xuất: đổi tiêu đề khối thành "— đầy đủ 4 yếu tố, báo sớm 1 tuần (tối thiểu 24h)" cho khỏi đọc thành hai chuẩn chọi nhau.

**Tiếng Nhật rule 19 sạch.** `代行者指定` / `復帰日` / `自動返信` / `終日不在` đều là từ dùng thật. Mẫu tự động trả lời `〇月〇日まで休暇のため不在です。緊急の場合は〇〇まで` — chuẩn. Dòng 83 ("Đưa 代行者 mà chưa hỏi đối tượng") là lời khuyên **rất đúng**, giữ nguyên.

---

### rule_20 出張連絡 — **SẠCH về nội dung**, 1 lỗi 🟡 F

**[20-1] 🟡 F — trộn tiếng Việt vào giữa câu tiếng Nhật, 5 chỗ (dòng 5, 58, 66, 70, 72)**
```
dòng 5:  出張連絡4要素：①日程 + nội dung theo ngày、②期待する sản phẩm đầu ra、③khung giờ liên lạc được、④代行者（通常業務）
dòng 58: 【目的・kế hoạch theo ngày】
dòng 66: 【Sản phẩm đầu ra mong đợi】
dòng 70: 【Khung giờ liên lạc được】
dòng 72: - Slack：21時 (JST) に hằng ngày 進捗報告
```
Dòng 5 là **khối tóm tắt tiếng Nhật** — vốn để học viên đọc như một câu Nhật hoàn chỉnh; chen tiếng Việt làm hỏng chức năng đó. Nặng hơn: dòng 58-72 nằm trong **khung mẫu email** mà học viên sẽ copy để gửi cho khách Nhật — gửi nguyên si thì trong mail có 【Sản phẩm đầu ra mong đợi】 tiếng Việt.

Đối chiếu: rule 18 và 19 có khung mẫu **thuần Nhật** (`【お詫び】【理由】【代替候補】` / `【期間】【復帰】【代行者・引き継ぎ】`). Riêng rule 20 lai.
→ Đề xuất: `①日程・日別スケジュール、②期待成果物、③連絡可能時間帯、④代行者（通常業務）`; khung mẫu đổi thành 【目的・日別スケジュール】【期待成果物】【連絡可能時間帯】; dòng 72 → `Slack：毎日21時 (JST) に進捗報告`.

Cùng bệnh nhẹ hơn ở câu chốt dòng 84 (`「期間 / Kế hoạch theo ngày / Sản phẩm đầu ra / Khung giờ liên lạc / 代行 — mail 1 tuần trước…」`) — ngoặc 「」 bọc chữ Việt, giống [14-2].

**Nội dung nghiệp vụ rule 20 tốt:** phân biệt 出張 ≠ 休暇 (đi công tác vẫn báo cáo hằng ngày) là điểm dạy đúng và có giá trị thật.

---

### rule_21 時差連絡 — **RULE NẶNG NHẤT PHẦN II**: 6 lỗi (2 🔴 D, 1 🔴 B, 3 🟡)

**[21-1] 🔴 D — SAI SỰ THẬT về múi giờ, ngay dòng 3 (luận điểm)**
```
VN: VN-JP cách 2 giờ (mùa hè), 4 giờ (Hokkaido).
```
Đã WebSearch kiểm chứng, **cả hai vế đều sai**:
1. **"(mùa hè)"** — hàm ý mùa đông lệch khác. Nhật **không áp dụng giờ mùa hè** (bỏ từ 1952, xác nhận cho cả 2026); Việt Nam cũng không. Chênh lệch VN-JP là **2 giờ quanh năm**, không đổi theo mùa.
2. **"4 giờ (Hokkaido)"** — **sai nghiêm trọng**. Nhật Bản dùng **một múi giờ duy nhất** (JST, UTC+9) cho toàn quốc, Hokkaido đến Okinawa như nhau. Không tồn tại "giờ Hokkaido". Chênh VN-Hokkaido cũng là 2 giờ.

Đây là lỗi loại D nguy hiểm: học viên là dev/PM offshore làm việc thật với khách Nhật, có thể có khách ở Sapporo. Tin sách rồi tính lệch 4 giờ → **đặt nhầm lịch họp với khách**, đúng thứ mà chính rule này dạy phải tránh.
→ Đề xuất dòng 3: "VN-JP cách **2 giờ, cố định quanh năm** (Nhật không có giờ mùa hè; toàn Nhật kể cả Hokkaido dùng chung JST). Khi chia sẻ thông tin với nhóm Nhật, không nói 「明日10時」 mà nói 「10:00 JST (08:00 ICT)」."

⚠️ Lưu ý cho giai đoạn sửa: mọi phép quy đổi khác trong rule 21 **đã tính đúng 2 giờ** (dòng 37-38: 10:00 JST = 08:00 ICT ✔; dòng 76-82: VN 18:00 = JP 20:00 ✔). Chỉ dòng 3 sai. Sửa dòng 3 là đủ, **đừng đụng các phép quy đổi khác**.

**[21-2] 🔴 D — giải thích "明日" mơ hồ dựa trên tiền đề sai (dòng 26, 28)**
```
dòng 26 JA: 『明日10時』が JP の明日 (火 10時 JST) なのか、VN の明日 (月翌日 10時 ICT = 火 12時 JST) なのか分からないです
dòng 28 VN: L1 「明日」 mơ hồ vì 2 nước cùng một đêm nhưng ngày khác
```
Lý do sách đưa ra — *"2 nước cùng một đêm nhưng ngày khác"* — **không đúng với cặp VN-JP**. Lệch 2 giờ nghĩa là VN và JP **chung một ngày lịch** trong gần như toàn bộ giờ làm việc (VN 22:00 = JP 24:00; chỉ 2 tiếng cuối đêm VN mới sang ngày mới ở JP). Lúc Dũng nhắn (VN 16h, JP 18h) thì hai bên **cùng thứ Hai**, và "明日" của cả hai **cùng là thứ Ba**. Bản thân dòng 26 tự chứng minh điều đó: nó viết `VN の明日 (月翌日 10時 ICT = 火 12時 JST)` — tức vẫn ra thứ Ba.

Vậy sự mơ hồ thật **không nằm ở "明日"** (ngày trùng nhau), mà **chỉ nằm ở "10時"**: 10h JST hay 10h ICT — lệch nhau 2 tiếng. Sách chẩn đoán sai nguồn gốc vấn đề.
→ Đề xuất dòng 26: `『明日10時』の「10時」は JST でしょうか、それとも ICT でしょうか。2時間ずれますので、確認させてください。`
→ Đề xuất dòng 28: `「10時」 mơ hồ — 10h JST hay 10h ICT lệch nhau 2 tiếng. Sai kỳ vọng phản hồi — anh Tanaka đã hết giờ làm.`
→ Kéo theo: dòng 67 (`「明日10時」 (明日 của ai? 10 giờ của ai?)`) nên bỏ vế "明日 của ai?", giữ "10 giờ của ai?".

**[21-3] 🔴 B — bảng thoại đổi format, lệch khỏi 39 rule còn lại (dòng 34-50)**
Khối `## Hội thoại TỐT` của rule 21 dùng bảng **3 cột** (`| **L1** | **ズン** *(…)* | 「…」 |`) và tách bản dịch Việt xuống một hàng riêng có 2 ô trống dẫn đầu. Toàn bộ 39 rule còn lại (kể cả khối XẤU của **chính rule 21**, dòng 20-26) dùng bảng **2 cột** `| Vai | Câu |` với JA và VN trong cùng một ô, ngăn bằng `<br/>*…*`.

Hệ quả: (a) rule 21 mất header `| Vai | Câu |`; (b) cột "L1/L2/L3/L4" là nhãn dàn ý lộ ra cho học viên; (c) nội dung trong ô có xuống dòng thật (dòng 37-39, 44-47) — trong Markdown, xuống dòng giữa ô bảng **phá vỡ bảng khi render**, các dòng `- **2026/4/22 (火)…` sẽ rơi ra ngoài bảng.
→ Đề xuất: dựng lại khối TỐT theo đúng 2 cột như 39 rule kia, bỏ cột L, thay xuống dòng thật bằng `<br/>`.

**[21-4] 🟡 F — "L1 / L3 / L4" trong dòng giải thích (dòng 28)** — cùng bệnh [16-3]. Ở rule 21 còn khó hiểu hơn vì bảng XẤU không có nhãn L nào cả.

**[21-5] 🟡 E — tiếng Anh thừa trong ô tiếng Nhật (dòng 46, 49)**
```
dòng 46: - JP team が朝確認: ① 〇〇 ② 〇〇
dòng 49: 「Tin bàn giao 受領。① と ② を朝のうちに review します。」
```
`JP team` và `review` nằm trong lời thoại của **anh Tanaka PMO — người Nhật, phía khách**. `review します` thì còn nghe được trong IT Nhật, nhưng đặt trong một tin bàn giao trang trọng thì `確認します` tự nhiên hơn. Nặng hơn là dòng 46: `JP team` → `日本チーム`. Ngoài ra chính dòng 43 và 49 dùng **"Tin bàn giao" tiếng Việt nằm trong ô tiếng Nhật** — `【Bàn giao cuối ngày VN→JP】` và `「Tin bàn giao 受領。」` — học viên copy nguyên si gửi cho khách Nhật thì khách không đọc được.
→ Đề xuất: `【日次引き継ぎ VN→JP】`, `「引き継ぎ受領しました。①と②を午前中に確認します。」`, `日本チームが朝確認`.

**[21-6] 🟡 F — vocab lệch thoại (dòng 110-111)**
`終業時` và `始業時` có trong bảng từ vựng nhưng **không xuất hiện trong thoại hay khung mẫu** của rule 21 (thoại dùng 「日次引き継ぎ」/「朝」). Ngược lại `受領` (dòng 49) và `併記` (dòng 5) thì `併記` có trong vocab ✔ còn `受領` không có.
→ Đề xuất: thay 1 trong 2 dòng `終業時/始業時` bằng `| 受領 | じゅりょう | THỤ LÃNH | Đã nhận (khiêm) |`.

---

## 2. Lỗi hệ thống

### [HT-1] 🔴 D — Ngày và thứ trong sách KHÔNG khớp lịch 2026 (lỗi TOÀN SÁCH)

Sách đặt bối cảnh năm 2026 (rule 21 dòng 37 ghi rõ `2026/4/22`; rule 31 dùng mã `INC-2026-0422`; rule 30 dùng `TICKET-MOCH-2026-0421`). Nhưng **mọi cặp ngày-thứ đều sai** so với lịch tháng 4/2026 thật:

| File | Dòng | Sách ghi | Thứ thật 2026 |
|---|---|---|---|
| **phần_II** rule_18 | 40 | 4/23 (火) | 木 — thứ Năm |
| **phần_II** rule_19 | 38, 40 | 4/26 (金) | **日 — Chủ nhật** |
| **phần_II** rule_19 | 40 | 4/29 (月) | 水 — thứ Tư |
| **phần_II** rule_21 | 37, 38, 62 | 4/22 (火) | 水 — thứ Tư |
| phần_III rule_29 | 42 | 4/24 (木) | 金 |
| phần_III rule_30 | 37 | 4/24 (水) | 金 |
| phần_III rule_30 | 37 | 4/23 (火) | 木 |

Hai hệ quả riêng đáng chú ý:
- **rule_19 nặng nhất**: cả rule dạy xin nghỉ phép ngày **4/26 gọi là 金 (thứ Sáu)**, nhưng 26/4/2026 là **Chủ nhật**. Xin nghỉ phép vào Chủ nhật là vô nghĩa; và "復帰：4/29(月)" thì 29/4 là thứ Tư. Toàn bộ mạch thời gian của rule sụp.
- **rule_30 tự mâu thuẫn với rule_18**: rule_30 gán 4/24 = 水, rule_18 gán 4/24 = 木. Hai rule trong cùng một sách gọi cùng một ngày bằng hai thứ khác nhau → dạng lỗi B (tự mâu thuẫn) nhìn thấy được ngay cả khi không tra lịch.

Nhận định: nhiều khả năng bối cảnh gốc soạn theo lịch **2025** (22/4/2025 đúng là thứ Ba, 24/4/2025 là thứ Năm, 23/4/2025 là thứ Tư — khớp phần lớn nhãn trong sách), rồi năm bị đổi sang 2026 ở vài chỗ mà không rà lại thứ.

→ **Đây là việc vắt qua cả 3 phần (II, III, IV/V), phải sửa đồng loạt một lượt, không nên để từng agent tự sửa phần mình** — sửa lẻ sẽ khiến các rule lệch nhau thêm. Hai hướng: (a) giữ ngày, sửa nhãn thứ theo lịch 2026; (b) giữ nhãn thứ, dịch ngày sang tuần khớp (vd 4/22 火 → 4/21 火 theo lịch 2026). Hướng (b) an toàn hơn vì các rule tham chiếu chéo nhau bằng **thứ** ("thứ Hai 19h", "thứ 6 tuần trước") nhiều hơn bằng ngày.

### [HT-2] 🟡 F — "fix nửa vời" v1.1: sửa thoại, bỏ quên bảng từ vựng
Hai ca trong phạm vi E2, cùng một cơ chế, cùng khai trong `STATUS.md` là đã fix:

| Rule | STATUS.md khai | Thoại | Vocab |
|---|---|---|---|
| 16 | 拝見します → 確認いたします | ✅ đã đổi (dòng 39) | ❌ còn `拝見` (dòng 90) |
| 18 | お手数おかけします → 承知しました… | ✅ đã đổi (dòng 43) | ❌ còn `お手数` (dòng 114) |

→ Khớp đúng cảnh báo rule mục 5 hụt #3. **Đề nghị main Claude quét cả 40 rule**: với mỗi từ trong bảng vocab, kiểm nó có thật sự xuất hiện trong thoại/khung mẫu của chính rule đó không (nhớ strip ruby). E2 mới quét được phần II.

### [HT-3] 🟡 F — Mục lục lệch tên với H1 (9/9 rule phần II)
Khớp thước đo #5 của `00_TIEN_DO.md`. Chi tiết phần II:

| # | `meta/mục_lục.md` | H1 trong `rule.md` | Loại |
|---|---|---|---|
| 13 | Nguyên tắc liên lạc tức thì / 連絡の即時性 | …/ 連絡の即時**性原則** | lệch nhẹ JP |
| 14 | Cấu trúc liên lạc broadcast (cho cả team) | Cấu trúc liên lạc **toàn nhóm** | **chưa Việt hoá** ("broadcast") |
| 15 | Chọn channel: chat / mail / phone | Chọn **kênh**: chat / mail / phone | **chưa Việt hoá** ("channel") |
| 16 | Slack channel etiquette / Slack マナー | **Phép lịch sự trên Slack** / Slack マナー | **chưa Việt hoá** |
| 17 | Liên lạc khẩn cấp + thứ tự ưu tiên | (khớp) | ✔ |
| 18 | Báo dời lịch | (khớp) | ✔ |
| 19 | Báo vắng (休暇 / 病欠) | Báo vắng / 不在連絡 (休暇 / 病欠) | lệch thứ tự |
| 20 | Báo công tác | (khớp) | ✔ |
| 21 | Liên lạc cross-timezone (VN-JP) | Liên lạc **lệch múi giờ** (VN-JP) | **chưa Việt hoá** ("cross-timezone") |

→ 4/9 là bản chưa Việt hoá (`broadcast`, `channel`, `etiquette`, `cross-timezone`) — H1 trong rule.md **đã** Việt hoá đúng, mục lục là bản cũ. Sửa mục lục theo H1, không ngược lại. Mục lục thuộc phạm vi E5.

### [HT-4] 🔵 — Ruby dùng romaji thay kana (rule 15 dòng 34)
```
<ruby>マトリクス<rt>matorikusu</rt></ruby>
```
39 rule còn lại đặt kana trong `<rt>`. Ở đây từ gốc **đã là katakana** nên ruby vô nghĩa — học viên đọc được sẵn. Cùng kiểu ở bảng vocab: `| マトリクス | マトリクス | — |` (cột "Cách đọc" lặp lại chính từ đó), tương tự `チャネル`, `メンション`, `スレッド`, `デモ`, `リスケ`.
→ Đề xuất: bỏ hẳn thẻ ruby cho từ katakana. Cột "Cách đọc" của từ katakana để `—` như cột Hán Việt. Việc này nên làm đồng loạt toàn sách.

---

## 3. 10 lỗi cần sửa gấp nhất

| # | Mã | Rule | Dòng | Vấn đề | Mức |
|---|---|---|---|---|---|
| 1 | 21-1 | 21 | 3 | **"4 giờ (Hokkaido)" — Nhật chỉ có MỘT múi giờ; "mùa hè" — Nhật không có DST.** Sai sự thật gây tính nhầm lịch họp thật | 🔴 D |
| 2 | HT-1 | 19 | 38, 40 | **4/26 gọi là 金 nhưng 2026 là Chủ nhật** — cả rule dạy xin nghỉ vào ngày không tồn tại trong tuần làm việc | 🔴 D |
| 3 | 17-1 | 17 ↔ 31 | 24, 54 | **Mâu thuẫn nguyên tắc báo khách khi Sev1**: rule 17 "chờ có phương án", rule 31 "báo trong 30 phút, phương án gửi sau" | 🔴 B |
| 4 | 16-2 | 16 | 28, 45 | **@channel/@here vs DnD — sai cơ chế Slack**; DnD chặn cả hai. Lý do phân biệt hai thẻ bị nêu sai | 🔴 A |
| 5 | 15-1 | 15 ↔ 16 | 35 | Thoại cho phép @channel ở mức "khẩn 1-4h", trái bảng của chính rule 15 và trái rule 16 | 🔴 B |
| 6 | 16-1 | 16 | 90 | Vocab còn `拝見` sau khi thoại đã gỡ (fix nửa vời v1.1) | 🔴 C |
| 7 | 21-3 | 21 | 34-50 | Bảng thoại 3 cột + xuống dòng thật → **vỡ bảng khi render**, lộ nhãn "L1/L2/L3/L4" | 🔴 B |
| 8 | 21-2 | 21 | 26, 28, 67 | Chẩn đoán sai nguồn mơ hồ: đổ cho "明日" (thực ra hai nước cùng ngày), đúng ra là "10時" | 🔴 D |
| 9 | HT-1 | 18, 21, 30 | — | Ngày ↔ thứ lệch lịch 2026 ở 7 chỗ; rule_18 và rule_30 gọi 4/24 bằng hai thứ khác nhau | 🔴 B |
| 10 | 20-1 | 20 | 5, 58-72 | Khung mẫu email trộn tiếng Việt (`【Sản phẩm đầu ra mong đợi】`) — học viên copy gửi khách Nhật | 🟡 E |

---

## 4. CẤM SỬA (chỗ ĐÚNG dễ bị sửa nhầm)

1. **Toàn bộ khối `## Hội thoại XẤU` trong 9 rule** — lỗi **cố ý** để dạy. Cụ thể dễ bị sửa nhầm nhất:
   - rule 15 dòng 21: Linh chọn sai cả 4 kênh — **đúng ý đồ**.
   - rule 16 dòng 23: `@channel リンク確認お願いします` lúc 23:30 — **đúng ý đồ**.
   - rule 17 dòng 23, 25: Dũng đòi gọi khách trước — **đúng ý đồ**.
   - rule 21 dòng 23, 25: `明日10時` mơ hồ + giục phản hồi — **đúng ý đồ**.
2. **rule 21 các phép quy đổi giờ đã ĐÚNG**: dòng 37-38 (`10:00-11:00 JST = 08:00-09:00 ICT`), dòng 62, dòng 76-82 (VN 18:00 = JP 20:00; JP 09:00 = VN 07:00). Chỉ **dòng 3** sai. Sửa dòng 3 rồi **dừng** — đừng "sửa cho đồng bộ" các phép tính này.
3. **rule 17 dòng 71** — "Bỏ qua cấp trung gian, gọi thẳng C-level đầu tiên = mất thiện cảm": **đúng** với văn hoá Nhật, không phải lỗi.
4. **rule 19 dòng 83** — "Đưa 代行者 mà chưa hỏi đối tượng": lời khuyên **đúng và quan trọng**, giữ nguyên.
5. **rule 18 mẫu email dòng 55-76** — thuần Nhật, đúng chuẩn thương mại (`何卒よろしくお願い申し上げます`, `当方にて`). Đây là **hình mẫu** để sửa rule 20 theo, không phải thứ cần sửa.
6. **`ご確認をお願いいたします` (rule 16 dòng 38)** — `ご` gắn vào việc **của đối phương** (họ xác nhận) → tôn kính ngữ **hợp lệ**. Đừng nhầm với ca `ご請求書` (việc của mình).
7. **`お待ちしております` (rule 16 dòng 41, rule 18 dòng 43)** — khiêm nhường ngữ đúng, đã kiểm chứng. Không phải 二重敬語.
8. **rule 21 `非同期` / "nhắn không đồng thời"** — thuật ngữ đúng, cố ý Việt hoá. Đừng đổi ngược về "async".

---

## 5. Việc vắt qua phạm vi agent khác

| Việc | Chạm ai | Ghi chú |
|---|---|---|
| **[HT-1] Ngày ↔ thứ lệch lịch 2026** | E2 (18,19,21) + E3 (29,30) + main | Phải sửa **một lượt cho cả sách**, không sửa lẻ theo phần. Cần chủ nhà chốt hướng (a) sửa nhãn thứ hay (b) dịch ngày |
| **[17-1] Mâu thuẫn SLA báo khách** | E2 (rule 17) ↔ E4 (rule 31) | E4 đang rà rule 31. Cần đối chiếu hai báo cáo rồi chốt **một** chuẩn. E2 đề xuất giữ rule 31 |
| **[15-1] @channel dùng ở mức khẩn nào** | E2 (15, 16) ↔ E5 (rule 37) | rule 37 dòng 72 ghi `緊急 / Sev1 → Slack #incident + tag` — hợp rule 16, chọi thoại rule 15. Chốt chung 3 rule |
| **[HT-2] Vocab lệch thoại sau fix v1.1** | tất cả | E2 tìm 2 ca trong phần II. Cần quét toàn sách 40 rule |
| **[HT-3] Mục lục chưa Việt hoá** | E5 | 4/9 rule phần II lệch. Sửa **mục lục theo H1** |
| **[HT-4] Ruby/vocab cho từ katakana** | tất cả | Việc máy móc, nên gom một lượt cuối |
| Phụ lục A/B/C/D | — | E2 **không mở** (ngoài phạm vi). Lưu ý: nếu phụ lục B gom vocab thì `拝見`/`お手数` sẽ theo vào — kiểm sau khi sửa [16-1], [18-1] |

---

## 6. Ghi chú cho giai đoạn SỬA

**Thứ tự đề nghị** (theo rule mục 8):

- **Vòng 1 — máy móc, rủi ro thấp:** [16-1] vocab 拝見 · [18-1] vocab お手数 · [21-6] vocab 受領 · [16-3][21-4] bỏ nhãn "L1" · [15-3] nhãn hàng trùng · [16-4] "4 trụ cột"→5 · [17-2] ô bảng thủng.
- **Vòng 2 — sai sự thật:** [21-1] múi giờ (**sửa dòng 3, KHÔNG đụng phép quy đổi**) · [21-2] chẩn đoán "明日" · [HT-1] lịch — **chờ chủ nhà chốt hướng trước**.
- **Vòng 3 — mâu thuẫn + lời khuyên rủi ro:** [17-1] SLA báo khách (**cần E4 xác nhận**) · [15-1] @channel · [16-2] DnD · [15-2] lý do mail.
- **Vòng 4 — format:** [21-3] dựng lại bảng rule 21 (**việc nặng nhất, làm cuối, dễ vỡ ruby**) · [20-1] Việt hoá khung mẫu · [14-2] câu chốt Nhật.

**Cạm bẫy khi sửa:**
1. **rule 21 dòng 36-50 có ruby nằm trong ô bảng nhiều dòng.** Khi dựng lại thành 2 cột phải strip-và-đắp ruby cẩn thận (rule mục 1.1). Nên viết lại tay từng dòng, đừng regex.
2. **Đừng "sửa cho đồng bộ" con số 15 phút của rule 13.** Nó là quy tắc chia sẻ thông tin thường; SLA 5/15/30/60 của rule 31 là quy trình sự cố. Hai thứ **khác nhau**, không mâu thuẫn — đây đúng kiểu ca `5月末 納期 vs 7月末 リリース` đã báo nhầm ở sách 03.
3. **Sửa [16-1] phải sửa cả hướng ngược**: nếu giai đoạn sau lại quyết định trả `拝見します` về thoại (nó **không sai** — `拝見` là khiêm nhường ngữ đúng khi xem tài liệu của đối phương) thì giữ vocab. Hiện trạng chỉ sai ở chỗ **thoại và vocab không khớp nhau**, không phải ở chỗ từ nào sai.
4. **[HT-1] đừng sửa ngày lẻ tẻ.** rule_19 tham chiếu chéo rule_14 (4/26 hạn của Hải) và rule_18 (4/23, 4/24). Đổi một chỗ mà quên chỗ kia sẽ tạo mâu thuẫn mới.
5. Sau khi sửa: build lại → grep trong `release/` (**strip ruby**) để xác nhận `拝見`, `お手数`, `4 giờ (Hokkaido)`, `L1 ` đã biến mất.

**Về chất lượng chung phần II:** nghiệp vụ 連絡 được dạy khá chắc — phân biệt kênh theo khẩn × số người nhận, thứ tự leo cấp nội bộ trước khách, phân biệt 出張 ≠ 休暇, tin bàn giao cuối ngày VN→JP đều là nội dung thật và dùng được. Không phát hiện lỗi uchi/soto, không có 二重敬語, không có 弊社/当社 dùng sai trong 9 rule. Điểm yếu nằm ở **khâu rà cuối**: sai sự thật ở rule 21 và lệch lịch là thứ lẽ ra một lượt kiểm dữ kiện bắt được, còn vocab lệch thoại là dư chấn của đợt fix v1.1 chạy nửa vời.
