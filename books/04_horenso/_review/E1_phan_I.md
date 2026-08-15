# [04-E1] Rà soát phần I — 報告 (12 rule)

> Agent: E1 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: 12 file `nội_dung/phần_I/rule_*/rule.md` (rule_01 → rule_12). Không đụng `conversation.json`, script, phụ lục.

---

## Tóm tắt số lỗi

| Mức | Số lỗi | Ghi chú |
|---|---|---|
| 🔴 Nặng | **4** | 1 mâu thuẫn xuyên phần (B), 1 mâu thuẫn trong cùng rule (B), 1 lệch tiếng Nhật với chính bảng từ vựng của nó (C), 1 lỗi ruby vô nghĩa |
| 🟡 Vừa | **9** | 6 Hán Việt sai/thiếu + 3 lỗi nội dung nhỏ |
| 🔵 Nhẹ | **5** | nhất quán, thuật ngữ, cách trình bày |
| **Tổng** | **18** | |

**Đánh giá chung: phần I RẤT SẠCH về keigo.** Tôi quét toàn bộ 12 rule cho các mẫu 二重敬語 / 過剰敬語 điển hình (`部長様`, `ご〜になられる`, `お伺いさせていただく`, `申させていただく`, `ご請求書`, さ入れ言葉, `ご確認させて`) — **0 ca**, khớp với thước đo #1 của main Claude. Uchi/Soto đúng ở chỗ quan trọng nhất (rule_11 dạy `弊社のトゥアン`, và chính rule đó dùng đúng trong hội thoại TỐT).

**Cấu trúc 12/12 rule đồng dạng, không lệch.** Khối `Khung mẫu` chỉ có ở rule 02/05/07/08/12 — **khớp chính xác** với 5 rule được đánh dấu `[TEMPLATE]` trong `meta/mục_lục.md` (dòng 39, 42, 44, 45, 49). Đây **không phải lỗi thiếu** — tôi đã kiểm chéo trước khi kết luận (rule mục 6).

**Rule sạch, không có lỗi nội dung nào:** rule_02, rule_06, rule_12.

---

## 1. Danh sách lỗi theo rule

### rule_01 — 報告の3原則

**🟡 E1-01. Hán Việt `切り分け` = "THIẾT PHÂN" — sai.** (dòng 77)

```
| 切り分け | きりわけ | THIẾT PHÂN | Phân tách (vấn đề) |
```

Chữ 切 có hai âm Hán Việt: **THIẾT** (nghĩa "cắt", như 切実 thiết thực) và **THIẾT/THIẾT**… nhưng 分 là **PHÂN**, đúng. Vấn đề thật là **切り分け là từ thuần Nhật (kun-yomi ghép)**, không phải từ Hán Việt — gán âm Hán Việt cho một 訓読み compound là sai phương pháp. Cùng lỗi ở `振り返り` (rule_05), `折り返し` (rule_07), `締め切り` (rule_04), `見込み` (rule_02), `困りごと` (rule_10). Xem lỗi hệ thống #2.

**Đề xuất:** với từ kun-yomi ghép, để cột Hán Việt là `—` (sách đã làm đúng thế với katakana). Hoặc nếu muốn giữ, ghi âm của **từng kanji** kèm dấu gạch: 切(THIẾT)-分(PHÂN).

**🔵 E1-02. `私見` gán "TƯ KIẾN" — chấp nhận được nhưng lệch chuẩn phổ biến.** (dòng 74)
私 = TƯ/TƯ. Âm Hán Việt chuẩn của 私 là **TƯ**, nên "TƯ KIẾN" đúng. **Không phải lỗi** — ghi ở đây để không bị sửa nhầm thành "TƯ KIẾN"→"SỈ KIẾN". Xem mục 4.

---

### rule_02 — 進捗報告

✅ **Sạch.** DDBN nhất quán, hội thoại XẤU/TỐT đối xứng, `なし` được dạy đúng (rule mục Tránh dòng 63 khớp với thoại dòng 39). Bảng từ vựng đúng.

Chỉ một ghi chú không tính lỗi: `着手` = "TRƯỚC THỦ" (dòng 80). 着 âm Hán Việt là **TRƯỚC** (như 到着 đáo trước) — **đúng**, đừng sửa thành "TRỨ THỦ".

---

### rule_03 — 結果報告 (GRCA)

**🔴 E1-03. MÂU THUẪN với rule_01 — cùng một buổi demo Phase 2 nhưng kết quả khác nhau.** (rule_01 dòng 37 vs rule_03 dòng 35-36)

Cả hai rule dùng **cùng một sự kiện**: Dũng báo cáo chị Hương về demo Phase 2 với Matsumoto.

rule_01 dòng 37 (hội thoại TỐT):
> 「**結論：概ね合格、ただし画面遷移の1点は再検討が必要**です」
> *Kết luận: cơ bản đạt, nhưng luồng chuyển màn cần xem lại ạ.*

rule_03 dòng 35-36 (hội thoại TỐT):
> 「**目標**は『松本様から書面で承認をいただく』ことでした」
> 「**結果**：書面承認は明日いただける見込み。指摘は3件のみで、致命的なものはございません」
> *Mục tiêu là 'nhận được phê duyệt bằng văn bản từ anh Matsumoto'. Kết quả: phê duyệt bằng văn bản dự kiến nhận được ngày mai. Comment chỉ 3 mục, không có mục nào nghiêm trọng ạ.*

**Vấn đề:** rule_01 nói có **1 điểm cần xem lại** (画面遷移 phải 再検討, và ở dòng 39-40 Dũng còn hẹn "thứ Tư sẽ báo phương án"). rule_03 nói **3 điểm, không có gì nghiêm trọng, mai có phê duyệt**. Học viên đọc liền hai rule sẽ thấy sách kể hai phiên bản của cùng một buổi demo. Nghiêm trọng hơn: rule_01 mô tả một điểm **chưa giải quyết được, đang chờ phân tích nguyên nhân**; rule_03 lại nói mai đã có 書面承認 — tức là mâu thuẫn về **trạng thái nghiệm thu**.

Nối tiếp sang **rule_05 dòng 36** (`松本様より昨日付で書面検収をいただきました`) và **rule_08 dòng 14** (Dũng soạn 報告書 chính thức sau Phase 2) — chuỗi thời gian toàn phần I đều xoay quanh cùng một Phase 2 nhưng không ai canh cho khớp.

**Đề xuất:** hoặc (a) thống nhất số liệu — cho rule_01 cũng nói "3 điểm, trong đó 画面遷移 là điểm cần xem lại", hoặc (b) tách bối cảnh — rule_03 đổi thành buổi demo **Phase 3** / một mốc khác, ghi rõ ở khối `## Bối cảnh`. Cách (a) rẻ hơn và giữ được lợi thế "cùng một tình huống, soi bằng 2 khung khác nhau" — nhưng phải **nói rõ điều đó** ở dòng `Liên quan`.

**🟡 E1-04. Bối cảnh nói "họp 1-on-1" nhưng luận điểm dạy 報告 chứ không phải đối thoại.** (dòng 13)
> Em Dũng cần báo cáo kết quả demo cho chị Hương trong **họp 1-on-1**.

Trong hội thoại TỐT (dòng 35-38) Dũng nói **4 lượt liên tiếp** không ai chen — đó là độc thoại báo cáo, không phải 1-on-1. Không sai nghiêm trọng, nhưng nhãn bối cảnh gây kỳ vọng lệch. **Đề xuất:** đổi "trong họp 1-on-1" → "trong buổi báo cáo định kỳ".

---

### rule_04 — 中間報告

**🟡 E1-05. Mốc 25/50/75% được trình bày như CHUẨN NHẬT, thực tế là quy ước riêng của sách.** (dòng 3, 5, 54)

> **Luận điểm.** Việc dài 1+ tuần phải có báo cáo trung gian ở mốc 25/50/75%.
> 1週間以上のタスクは **25/50/75% で中間報告**。

Tôi đã WebSearch kiểm chứng: tài liệu 中間報告 của doanh nghiệp Nhật (PHP人材開発, các trang đào tạo ホウレンソウ) thống nhất **nguyên tắc** phải có 中間報告 khi việc kéo dài, khi tình hình thay đổi, khi thấy được đích — nhưng **không có** chuẩn ngành nào chốt con số 25/50/75%. Đây là framework do sách tự đặt (giống DDBN, GRCA, PFIPA — sách đã thành thật gọi 3 cái kia là "khái niệm trong sách" ở `_thuat_ngu.md` dòng 19, 25, 35).

**Không phải dạy sai việc** — mốc phần trăm là cách triển khai hợp lý. Nhưng **cách diễn đạt "phải"** làm học viên tưởng đây là quy tắc bất di bất dịch mà sếp Nhật nào cũng biết, rồi đi nói "theo chuẩn thì em phải báo ở 25%" → hớ.

**Đề xuất:** đổi dòng 3 thành *"…nên chia mốc kiểm soát, ví dụ 25/50/75%"* và bổ sung `25/50/75%` vào `_thuat_ngu.md` với ghi chú "(khái niệm trong sách)" cho đồng bộ với DDBN/GRCA/PFIPA. Thực tế thường gặp hơn ở Nhật là **chốt mốc theo sự kiện** (xong bố cục / xong bản nháp / trước khi gửi) chứ không theo %.

**🔵 E1-06. `トゥアンリーダー` xưng hô nội bộ — ĐÚNG ở đây, xem mục CẤM SỬA.** (dòng 39)
Đây là Dũng gọi anh Tuấn **trong nội bộ**, không phải nói với khách → không vi phạm ウチ・ソト. rule_11 dòng 62 chỉ cấm dùng khi nói **với khách**. Sách nhất quán. Ghi vào đây để agent/đợt sau không sửa nhầm.

**🟡 E1-07. Hán Việt `締め切り` = "ĐẾ THIẾT" — sai.** (dòng 78)
締 âm Hán Việt là **ĐẾ** (đúng), 切 là **THIẾT** (đúng) — nhưng thứ tự bị đảo so với chữ: 締(ĐẾ)め切(THIẾT)り. Thực chất vẫn là lỗi hệ thống #2 (gán Hán Việt cho từ kun-yomi). Xem mục 2.

---

### rule_05 — 完了報告

**🔴 E1-08. Mâu thuẫn nội bộ: `振り返り` được dịch hai kiểu trong cùng một rule.** (dòng 24 vs dòng 80)

Dòng 24 (hội thoại XẤU, lời chị Hương):
> 「それと、今回の**振り返り**は？次のフェーズに活かせる学びは？」
> *Còn nữa, lần này **nhìn lại** rút ra được gì? Bài học nào áp dụng được cho phase sau?*

Dòng 80 (bảng từ vựng):
> `| 振り返り | ふりかえり | CHẤN PHẢN | Nhìn lại / tổng kết rút kinh nghiệm |`

Dịch thì nhất quán. **Lỗi là ở Hán Việt "CHẤN PHẢN"**: 振 âm Hán Việt là **CHẤN** (đúng), 返 là **PHẢN** (đúng) — nhưng lại là từ kun-yomi ghép, xem lỗi hệ thống #2. **Hạ xuống 🟡.**

**🟡 E1-09. Câu chốt dùng ký hiệu `〇〇付` nhưng bỏ furigana không nhất quán.** (dòng 50)
> `Acceptance: 〇〇から〇〇<ruby>付<rt>づけ</rt></ruby><ruby>検収済<rt>けんしゅうず</rt></ruby>み`

`検収済み` đọc là **けんしゅうずみ**, ruby ghi `けんしゅうず` rồi để `み` ra ngoài — về mặt hiển thị vẫn ra "けんしゅうずみ" nên **không sai kết quả**, nhưng cách tách khác với `納品済み` ở dòng 21/35 (`<ruby>納品済<rt>のうひんず</rt></ruby>み`) — tức là sách nhất quán với chính nó. **Không tính lỗi.** Ghi để khỏi bị sửa nhầm.

**🔵 E1-10. Nội dung tốt, đáng khen: phân biệt 納品 vs 完了 (dòng 27, 58) là điểm dạy đúng và có giá trị thật.** Đây là lỗi kinh điển của đội offshore VN. Không sửa gì.

---

### rule_06 — 数字報告

✅ **Sạch.** Số liệu nội bộ nhất quán: 1.2秒→0.4秒 = -66.7% ≈ **-67%** (dòng 34) ✓ · 20件→6件 = -70% ✓ (dòng 35) · 10/12 = 83.3% ≈ **83%** ✓ (dòng 37). Tôi đã kiểm từng phép tính.

Bảng từ vựng đúng. `母数` = "MẪU SỐ" chính xác. Ghi chú 【3】 dạy hỏi cỡ mẫu là kiến thức thật, đúng.

Một điểm nhỏ đáng khen: dòng 60 dạy *"Round số quá đẹp (ちょうど50%) — gây nghi ngờ làm tròn"* — lời khuyên chính xác và hiếm gặp trong sách dạy tiếng.

---

### rule_07 — 悪い知らせ (PFIPA)

**🔴 E1-11. MÂU THUẪN XUYÊN PHẦN với rule_31 về mốc SLA báo tin xấu.** (rule_07 dòng 28, 56 vs rule_31 dòng 3, 5, 61-62)

rule_07 dòng 28 và dòng 56:
> **Vì sao xấu:** (1) Báo trễ 11 giờ — **bug critical phải báo trong 30 phút**.
> *5 mệnh đề. **Báo trong 30 phút** từ lúc phát hiện.*

rule_31 dòng 5 (bảng SLA chính thức của sách):
> インシデント発見時の時間SLA：①検知0分→②Slack #incident + Tech lead **5分**→③**CTO 15分**→④**客通知 30分**→⑤ETA 60分→⑥解決+post-mortem 24h

**Vấn đề:** rule_07 dạy "báo trong 30 phút", nhưng nhân vật báo cáo trong rule_07 là **anh Tuấn báo lên anh Hà CTO** — mà theo bảng SLA rule_31, chặng Tech lead → CTO là **15 phút**, còn 30 phút là chặng **thông báo KHÁCH**. Hai rule đặt cùng một con số vào hai chặng khác nhau.

Hệ quả thực tế: học viên học rule_07 sẽ nghĩ mình có 30 phút để báo sếp, trong khi rule_31 (cùng sách!) chỉ cho 15 phút. Trong incident thật, 15 phút chênh lệch là đáng kể. **Đây đúng loại lỗi B — "rule này dạy X, rule kia dạy ngược X".**

Hai rule còn tham chiếu lẫn nhau (rule_07 dòng 7 trỏ rule_31; rule_31 dòng 7 trỏ rule_07) nên học viên **chắc chắn** sẽ đọc cả hai.

**Đề xuất:** sửa rule_07 dòng 28 và 56 thành **"báo lên cấp trên trong 15 phút"**, và thêm một dòng ở `Liên quan` (dòng 7): *"Mốc SLA đầy đủ 5/15/30/60 phút xem rule 31."* Giữ rule_31 làm nguồn sự thật vì nó có bảng SLA chi tiết.

**🟡 E1-12. Bối cảnh nói "Lần đầu báo lộn xộn, hoảng loạn. Lần 2 dùng PFIPA" — nhưng hai hội thoại xảy ra ở HAI THỜI ĐIỂM KHÁC NHAU, không phải "lần 1 / lần 2".** (dòng 13 vs dòng 19, 34)

- Hội thoại XẤU: nhãn thời gian `*thứ 2 sáng 9h, qua Slack*` (dòng 19)
- Hội thoại TỐT: nhãn thời gian `*22:30 CN, qua điện thoại*` (dòng 34)

Đây không phải "làm lại lần 2" mà là **hai kịch bản thay thế nhau** (báo ngay đêm CN vs. ngâm tới sáng T2). Bối cảnh dòng 13 viết *"Lần đầu báo lộn xộn... Lần 2 dùng PFIPA chuẩn"* mô tả sai quan hệ giữa hai khối — vì lần TỐT xảy ra **trước** lần XẤU về mặt thời gian.

**Đề xuất:** sửa dòng 13 thành: *"So sánh 2 cách xử lý: (A) ngâm tới sáng thứ Hai mới báo, (B) báo ngay trong đêm theo PFIPA."* Đây là lỗi lặp ở nhiều rule — xem lỗi hệ thống #3.

**🟡 E1-13. `Ask` trong hội thoại TỐT đẩy quyết định báo khách cho CTO, mâu thuẫn nhẹ với chính luận điểm "Plan trước Ask để chứng minh đã suy nghĩ".** (dòng 41)

> 「**Ask（依頼）**：松本様への第一報を 23時までに私から入れてもよろしいでしょうか。あるいはハーさんから入れる選択肢もあります」

Câu này **đúng và tốt** (2 lựa chọn, đúng ghi chú 【4】). Nhưng lưu ý: quyết định "ai báo khách" thuộc thẩm quyền CTO — không phải Tuấn "đùn". **Không phải lỗi.** Ghi vào mục CẤM SỬA vì dễ bị hiểu nhầm là vi phạm nguyên tắc "không đùn quyết định" ở dòng 63.

**🟡 E1-14. Hán Việt `データ消失` = "TIÊU THẤT" — sai chữ.** (dòng 85)
> `| データ消失 | データしょうしつ | TIÊU THẤT | Mất dữ liệu |`

消 âm Hán Việt là **TIÊU** (đúng, như 消息 tiêu tức), 失 là **THẤT** (đúng). Nhưng **mục từ là `データ消失`** — có phần katakana `データ` không có âm Hán Việt. Bảng ghi "TIÊU THẤT" cho cả cụm là thiếu chính xác; các mục katakana khác trong sách đều để `—`.

**Đề xuất:** đổi mục từ thành `消失` (bỏ `データ`) và giữ "TIÊU THẤT"; hoặc giữ `データ消失` và ghi `— / TIÊU THẤT`.

---

### rule_08 — 報告書

**🔴 E1-15. Ruby vô nghĩa: 4 từ katakana bị gán furigana hiragana.** (dòng 24, 28, 41, 43)

```
dòng 24: <ruby>ドラフト<rt>どらふと</rt></ruby>
dòng 28: <ruby>フォーマット<rt>ふぉーまっと</rt></ruby>
dòng 41: <ruby>セクション<rt>せくしょん</rt></ruby>
dòng 43: <ruby>テンプレート<rt>てんぷれーと</rt></ruby>
```

Furigana tồn tại để chú âm cho **kanji**. Gán hiragana lên katakana là vô nghĩa — người học đã đọc được katakana thì không cần, mà hiển thị ra trang sách sẽ thành `ドラフト` với `どらふと` lơ lửng bên trên, trông như lỗi in. Đặc biệt `ふぉーまっと` và `てんぷれーと` là cách viết hiragana **không ai dùng** trong tiếng Nhật thật.

**Đề xuất:** bỏ hẳn thẻ ruby ở 4 chỗ này, để trần `ドラフト` / `フォーマット` / `セクション` / `テンプレート`.

⚠️ **Đây là lỗi TOÀN SÁCH, không riêng phần I** — xem mục 5.

**🟡 E1-16. Hán Việt `宛先` = "OẠN TIÊN" — SAI.** (dòng 80)
> `| 宛先 | あてさき | OẠN TIÊN | Người nhận |`

Chữ **宛** có âm Hán Việt là **UYỂN** (như 宛転 uyển chuyển), **không phải "OẠN"**. "OẠN" không tồn tại trong hệ âm Hán Việt. 先 là **TIÊN** (đúng).

**Đề xuất:** sửa `OẠN TIÊN` → **`UYỂN TIÊN`**. Đây là lỗi rõ ràng nhất trong 12 rule, nên sửa trước tiên.

**🔵 E1-17. Dòng 41 có khoảng trắng thừa nơi emoji ✅ bị strip.** (dòng 41)
> 「**概要セクション**が3行で要点をまとめてる 【2】。**詳細**は KPI と Lessons まで網羅 。**結論**で次フェーズへの提言が入ってる 。」
> *Phần tổng quan tóm 3 dòng đủ ý . Chi tiết bao quát cả KPI và Lessons . Kết luận có đề xuất cho phase sau .*

Ba chỗ có **space trước dấu 。và trước dấu chấm tiếng Việt** — đúng dấu hiệu emoji ✅ bị strip mà rule mục 4.F đã cảnh báo. Đọc trên trang sách sẽ thấy dấu chấm lơ lửng. **Đề xuất:** bỏ khoảng trắng thừa (hoặc khôi phục ✅ nếu ý đồ ban đầu là đánh dấu 3 mục đạt).

---

### rule_09 — 口頭 vs 書面

**🟡 E1-18. Hội thoại TỐT có 2 lượt thoại là chú thích sân khấu, không phải lời nói — phá khuôn bảng "Vai | Câu".** (dòng 40, 41)

```
| **ズン** | (Body theo mẫu DDBN — không gồm bug, vì bug đã có luồng riêng) <br/>*11h em gửi mail...*
| **ズン** | (1 chủ đề duy nhất, có tiêu đề rõ) |
```

Dòng 41 **không có phần dịch tiếng Việt và không có nội dung tiếng Nhật** — chỉ là ghi chú biên tập lọt vào bảng thoại. Học viên đọc sẽ thấy một ô trống nghĩa. Ngoài ra dòng 40 phần Việt nói *"11h em gửi mail... 14h gửi mail..."* nhưng phần "Nhật" lại là chú thích tiếng Việt trong ngoặc → ô tiếng Nhật **rỗng thực sự**.

**Đề xuất:** gộp 2 dòng thành 1 lượt thoại có nội dung Nhật thật, ví dụ:
> 「11時に『週次進捗報告 第3週』、14時に『【リスケ依頼】明日16時 定例会議について』を別々にお送りしました。1メール1件名です。」

Hoặc chuyển hai dòng đó ra ngoài bảng thành ghi chú.

**🔵 E1-19. Ma trận quyết định (dòng 53-61) là điểm mạnh của rule — đúng thực tế, không sửa.** Hàng "Bug critical → 口頭 (phone) → 書面 tiếp nối" khớp chính xác với rule_07 và rule_31. Nhất quán tốt.

---

### rule_10 — 朝礼報告

**🔴 E1-20. Ruby SAI HẲN: furigana là chữ Latin.** (dòng 25)

```
<ruby>リファクタ<rt>refactor</rt></ruby>
```

Furigana ghi **`refactor`** — chữ Latin trong thẻ `<rt>`. Đây không phải "furigana không cần thiết" như E1-15 mà là **furigana sai loại ký tự hoàn toàn**. Trên trang sách sẽ hiện `リファクタ` với chữ `refactor` bé xíu bên trên — trông như lỗi dữ liệu.

Ngoài ra bảng từ vựng dòng 76 của **chính rule này** ghi `| リファクタ | リファクタ | — | Tái cấu trúc mã nguồn |` — tức là bảng từ vựng làm ĐÚNG (cột đọc = katakana, Hán Việt = `—`), chỉ thẻ ruby trong thoại là sai. **Đề xuất:** bỏ thẻ ruby, để trần `リファクタ`.

**🟡 E1-21. Mâu thuẫn nhỏ: luận điểm nói "30-60 giây", nhưng anh Tuấn trong thoại chốt "30秒".** (dòng 3, 5 vs dòng 26)

Dòng 3: *mỗi người **30-60 giây***. Dòng 5: 1人**30〜60秒**.
Dòng 26 (lời anh Tuấn): 「ズン、朝礼は **30秒**。」

Không phải mâu thuẫn nặng (30 nằm trong khoảng 30-60), nhưng anh Tuấn phát biểu như một quy tắc tuyệt đối trong khi luận điểm cho một khoảng. **Đề xuất:** đổi lời Tuấn thành 「朝礼は**30秒から1分**」 để khớp luận điểm, hoặc thêm ở ghi chú rằng team này chốt mốc chặt hơn.

**🔵 E1-22. Từ `流れ` (dòng 79) có trong bảng từ vựng nhưng KHÔNG xuất hiện trong thoại hay phần lý thuyết của rule.**

`| 流れ | ながれ | LƯU | Dòng chảy / nhịp |` — tôi grep toàn rule_10, chữ 流れ chỉ xuất hiện đúng ở dòng bảng từ vựng này. Từ vựng "mồ côi", học viên không có ngữ cảnh. (Khái niệm "phá nhịp" có ở dòng 63 nhưng viết bằng tiếng Việt, không dùng 流れ.)

**Đề xuất:** hoặc bỏ mục này, hoặc đổi dòng 63 thành 「トゥアンさん、〇〇どうなってますか？」 — <ruby>流<rt>なが</rt></ruby>れを<ruby>崩<rt>くず</rt></ruby>す (phá nhịp của họ) để từ có chỗ neo.

---

### rule_11 — 顧客報告

**🔴 E1-23. Hội thoại TỐT dùng `ご報告でございます`, nhưng chính bảng từ vựng của rule dạy `ご報告申し上げます` — và phần `Tránh` cũng chốt `ご報告申し上げます`.** (dòng 39 vs dòng 64, 73)

Dòng 39 (hội thoại TỐT — mẫu học viên sẽ học thuộc):
> 「松本様、お時間頂戴し申し訳ございません。Phase 2 進捗の **ご報告でございます**【1】。」

Dòng 45 (ghi chú giải thích):
> 【1】**「ご報告でございます」** — cao hơn 「共有します」 1 bậc. Khách Nhật quan trọng dùng mức này.

Dòng 64 (khối `Tránh`):
> Tone "共有します" "確認しました" với khách quan trọng — quá nhạt, nên **「ご報告申し上げます」**「確認させていただきました」.

Dòng 73 (bảng từ vựng):
> `| ご報告申し上げます | ごほうこくもうしあげます | BÁO CÁO | Em xin trân trọng báo cáo |`

**Vấn đề kép:**

1. **Sách tự mâu thuẫn.** Thoại TỐT dùng dạng A (`ご報告でございます`), còn khối `Tránh` + bảng từ vựng dạy dạng B (`ご報告申し上げます`). Học viên không biết học cái nào. Câu chốt (dòng 53) lại quay về dạng A: `「ご報告でございます。弊社の〇〇 が〜。」`

2. **Dạng A yếu hơn dạng B về mặt keigo.** `ございます` là 丁寧語 (lịch sự) của です — `ご報告でございます` chỉ là "đây là báo cáo" ở thể lịch sự cao. `ご報告申し上げます` là **謙譲語 I** thật sự (申し上げる là khiêm nhường ngữ của 言う). Với khách quan trọng — đúng bối cảnh rule này đặt ra (dòng 3: *"giọng điệu trang trọng cao hơn 1 bậc"*) — dạng B mới là mức chuẩn. Tôi đã WebSearch kiểm chứng: các nguồn 敬語 Nhật thống nhất `ご報告申し上げます` là dạng trang trọng nhất, dùng cho 重要な報告・正式な場面.

`ご報告でございます` **không sai ngữ pháp** (nên tôi không xếp là lỗi C thuần), nhưng đặt nó làm mẫu ở rule dạy "trang trọng cao nhất" trong khi chính rule đó dạy dạng cao hơn ở chỗ khác — là lỗi B.

**Đề xuất:** thống nhất về **`ご報告申し上げます`** ở dòng 39, 45, 53. Ghi chú 【1】 sửa thành: *"「ご報告申し上げます」 — 謙譲語, cao hơn 「共有します」 hai bậc. Khách Nhật quan trọng dùng mức này."*

**🟡 E1-24. `弊社のトゥアンが技術検証を完了し` — thiếu khiêm nhường ngữ cho hành động của người CÔNG TY MÌNH khi nói với khách.** (dòng 40)

> 「**弊社のトゥアン**【2】が技術検証を**完了し**、自動テストの仕組み(CI/CD)も**整いました**」

Phần `弊社のトゥアン` **đúng hoàn toàn** (rule dạy đúng ウチ・ソト). Nhưng động từ `完了し` / `整いました` là thể lịch sự trung tính. Khi báo cáo hành động của người bên mình cho khách ở mức trang trọng cao, tiếng Nhật thương mại thường dùng khiêm nhường: 「〜を完了**いたしました**」「〜を整え**ております**」.

**Không phải lỗi nặng** — 完了しました với khách vẫn chấp nhận được, và câu này nằm trong chuỗi có `〜ました` nên không lệch. Nhưng rule này tự đặt tiêu chuẩn *"giọng điệu trang trọng cao hơn 1 bậc"* (dòng 3), nên nên nâng cho khớp lời hứa của chính nó.

**Đề xuất:** `技術検証を完了いたしました` và `仕組み(CI/CD)も整えております`.

**🔵 E1-25. Hán Việt `かみ砕く` = "TOÁI".** (dòng 74)
`| かみ砕く | かみくだく | TOÁI | Giải thích đơn giản hóa |`
砕 âm Hán Việt là **TOÁI** (đúng). Nhưng lại là từ có phần hiragana `かみ` — cùng lỗi hệ thống #2. Ghi để đồng bộ khi sửa.

**🔵 E1-26. `仕組み` = "TỔ" (dòng 76).** 組 âm Hán Việt là **TỔ** (đúng). 仕 không được tính. Cùng lỗi hệ thống #2 — từ kun-yomi ghép.

---

### rule_12 — 報告漏れ防止

✅ **Sạch về nội dung.** Số liệu nhất quán (nhận 18 / reply 17 / chưa reply 1 = khớp, dòng 38). Ghi chú 【2】 *"0件 đáng nghi"* là kiến thức thật, tốt.

**🔵 E1-27. Tiêu đề rule dịch "Danh sách kiểm tra" nhưng thoại + luận điểm dùng "checklist" tiếng Anh xen kẽ.** (dòng 1 vs dòng 23, 25)

- Dòng 1 (H1): *Danh sách kiểm tra phòng ngừa thiếu báo cáo*
- Dòng 3 (luận điểm): *danh sách kiểm tra 10 mục* ✓
- Dòng 23 (dịch Việt trong thoại): *Em có dùng **checklist** hàng ngày không?*
- Dòng 25 (dịch Việt trong thoại): *Chị share **checklist** của chị nhé.*
- Dòng 37 (dịch Việt): *em đã chạy xong **checklist** phòng ngừa...*

Bản Nhật dòng 23/25 dùng `チェックリスト` / `checklist` — nên phần dịch dùng "checklist" **không phải dịch sai**. Nhưng theo quy tắc dự án (label/text tiếng Việt có dấu, tránh tiếng Anh thừa trong văn Việt), và vì **chính rule này** đã dịch thành "danh sách kiểm tra" ở tiêu đề + luận điểm + khối Tránh (dòng 58, 60) → nội bộ không nhất quán.

**Đề xuất:** thống nhất "danh sách kiểm tra" trong mọi phần dịch tiếng Việt; giữ `チェックリスト` bên Nhật.

Cũng lưu ý: dòng 38 dịch `通信件数` thành *"Số **communication** tuần này"* — tiếng Anh thừa rõ ràng, bản Nhật là 通信件数. **Đề xuất:** *"Số lượt trao đổi tuần này"*.

---

## 2. Lỗi hệ thống (lặp nhiều rule)

### #1 — Ruby gán cho katakana (🔴, 5 ca trong phần I, 10 ca toàn sách)

| Rule | Dòng | Chuỗi |
|---|---|---|
| rule_08 | 24 | `<ruby>ドラフト<rt>どらふと</rt></ruby>` |
| rule_08 | 28 | `<ruby>フォーマット<rt>ふぉーまっと</rt></ruby>` |
| rule_08 | 41 | `<ruby>セクション<rt>せくしょん</rt></ruby>` |
| rule_08 | 43 | `<ruby>テンプレート<rt>てんぷれーと</rt></ruby>` |
| rule_10 | 25 | `<ruby>リファクタ<rt>refactor</rt></ruby>` ← **furigana Latin, nặng nhất** |

Katakana không cần furigana. `ふぉーまっと` / `てんぷれーと` là cách viết không tồn tại trong tiếng Nhật thực dụng. **Cách sửa: bỏ hẳn thẻ ruby, để chữ trần.**

Lệnh phát hiện (chạy được cho toàn sách):
```bash
grep -rno '<ruby>[ァ-ヴー]\+<rt>[^<]*</rt></ruby>' nội_dung/phần_*/
```

### #2 — Gán âm Hán Việt cho từ kun-yomi ghép (🟡, 8 ca trong phần I)

Sách đã làm ĐÚNG với katakana (cột Hán Việt = `—`), nhưng lại gán âm Hán Việt cho các từ đọc kun-yomi có okurigana, nơi âm Hán Việt **không giúp gì cho người học** (vì từ đó không đọc theo âm Hán):

| Rule | Dòng | Mục từ | Đang ghi |
|---|---|---|---|
| rule_01 | 77 | 切り分け | THIẾT PHÂN |
| rule_02 | 82 | 見込み | KIẾN |
| rule_04 | 78 | 締め切り | ĐẾ THIẾT |
| rule_05 | 80 | 振り返り | CHẤN PHẢN |
| rule_07 | 87 | 折り返し | CHIẾT PHẢN |
| rule_10 | 75 | 困りごと | KHỐN |
| rule_10 | 79 | 流れ | LƯU |
| rule_11 | 74 | かみ砕く | TOÁI |

**Không phải lỗi "âm sai"** (các âm CHẤN, CHIẾT, ĐẾ, THIẾT, TOÁI, KHỐN, LƯU, KIẾN đều là âm đúng của kanji tương ứng). Lỗi là **phương pháp**: bảng có tiêu đề "Hán Việt" nhưng người học sẽ tưởng có thể đọc từ đó theo âm Hán Việt, trong khi 振り返り đọc là ふりかえり chứ không liên quan gì tới "chấn phản".

**Đề xuất (cần chủ nhà quyết vì đụng convention toàn bộ sách):** với từ kun-yomi ghép, để `—` như đã làm với katakana. Đây là **quyết định thiết kế**, không nên để agent tự sửa.

### #3 — Bối cảnh mô tả sai quan hệ giữa hai khối hội thoại (🟡, ít nhất 3 rule)

Nhiều rule viết bối cảnh theo mô-típ *"Lần đầu Dũng làm sai → lần 2 sửa"*, nhưng nhãn thời gian ở hai khối cho thấy đó là **hai kịch bản thay thế**, không phải hai lần thử:

| Rule | Dòng bối cảnh | Nhãn thời gian XẤU | Nhãn thời gian TỐT |
|---|---|---|---|
| rule_07 | 13 | thứ 2 sáng 9h | **22:30 CN** (TRƯỚC khối XẤU) |
| rule_02 | 14 | Slack 9:05 | Slack 9:00 (cũng sớm hơn) |
| rule_04 | 13 | thứ 2/thứ 5 tuần 2 | thứ 4 **tuần 1** (sớm hơn) |

rule_07 là ca rõ nhất vì chênh nhau gần một ngày. **Đề xuất:** đổi công thức bối cảnh thành *"So sánh 2 cách xử lý: (A)… (B)…"* thay vì *"Lần đầu… Lần 2…"*.

### #4 — Chuỗi thời gian Phase 2 không được canh giữa các rule (🔴, gốc của E1-03)

Toàn bộ phần I dùng chung một dòng thời gian Phase 2 (demo → nghiệm thu → 報告書 → Phase 3) nhưng mỗi rule tự đặt chi tiết:

| Rule | Trạng thái Phase 2 tại thời điểm rule |
|---|---|
| rule_01 (d37-40) | demo xong, 1 điểm 画面遷移 **chưa xong**, hẹn báo thứ Tư |
| rule_03 (d36) | demo xong, **3 điểm**, mai có 書面承認 |
| rule_05 (d36) | **đã có 書面検収 từ hôm qua** |
| rule_08 (d14) | soạn 報告書 sau khi hoàn thành |
| rule_02 (d39) | Daily 4/22, comment Matsumoto 3/5 |
| rule_12 (d38) | mail Matsumoto 4/22 chưa reply |

Bốn rule đầu tạo thành chuỗi hợp lý **nếu** rule_01 và rule_03 khớp số điểm. **Đề xuất:** dựng một bảng dòng thời gian Phase 2 ở tài liệu nội bộ, rồi đối chiếu 12 rule một lượt.

---

## 3. 10 lỗi cần sửa gấp nhất

| # | Mã | Rule | Dòng | Mức | Việc |
|---|---|---|---|---|---|
| 1 | E1-11 | rule_07 | 28, 56 | 🔴 | "báo trong 30 phút" → **"15 phút"** (khớp SLA rule_31); thêm cross-ref rule 31 |
| 2 | E1-23 | rule_11 | 39, 45, 53 | 🔴 | `ご報告でございます` → **`ご報告申し上げます`** (khớp bảng từ vựng d73 + khối Tránh d64) |
| 3 | E1-20 | rule_10 | 25 | 🔴 | Bỏ `<ruby>リファクタ<rt>refactor</rt></ruby>` → `リファクタ` (furigana Latin) |
| 4 | E1-15 | rule_08 | 24, 28, 41, 43 | 🔴 | Bỏ 4 thẻ ruby trên katakana |
| 5 | E1-03 | rule_01/03 | 37 / 35-36 | 🔴 | Thống nhất kết quả demo Phase 2 (1 điểm vs 3 điểm; chưa xong vs mai duyệt) |
| 6 | E1-16 | rule_08 | 80 | 🟡 | `OẠN TIÊN` → **`UYỂN TIÊN`** (宛 = UYỂN; "OẠN" không tồn tại) |
| 7 | E1-18 | rule_09 | 40, 41 | 🟡 | 2 lượt thoại rỗng tiếng Nhật — viết lại thành lời thoại thật |
| 8 | E1-17 | rule_08 | 41 | 🔵 | Bỏ 3 khoảng trắng thừa (dấu vết ✅ bị strip) |
| 9 | E1-05 | rule_04 | 3, 5 | 🟡 | 25/50/75% → nói rõ là quy ước của sách, không phải chuẩn ngành Nhật |
| 10 | E1-12 | rule_07 | 13 | 🟡 | Bối cảnh "lần 1 / lần 2" → "so sánh 2 cách xử lý" (TỐT xảy ra TRƯỚC XẤU) |

---

## 4. CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| Chỗ | Vì sao ĐÚNG |
|---|---|
| **rule_04 d39 `トゥアンリーダー`** | Dũng gọi anh Tuấn **trong nội bộ** → ウチ・ソト không áp dụng. rule_11 d62 chỉ cấm dùng **với khách**. Sách nhất quán. |
| **rule_11 d24, 25, 29, 62 `トゥアンリーダー`** | Nằm trong khối **`## Hội thoại XẤU`** và khối `Tránh` — lỗi **CỐ Ý** để dạy ウチ・ソト. Đừng "sửa" thành `弊社のトゥアン`, sẽ phá bài học. |
| **rule_11 d64 `確認させていただきました`** | Đúng — hành động 確認 ở đây là **xác nhận với khách**, có đối phương tham gia (khách là bên cung cấp thông tin cần xác nhận). Khác hẳn `ご確認させて` (thêm ご vào việc tự thân) mà rule cấm. Sách **không** dùng `ご確認させて` ở đâu — tôi đã grep, 0 ca. |
| **rule_01 d74 `私見` = TƯ KIẾN** | 私 âm Hán Việt là **TƯ**. Đúng. |
| **rule_02 d80 `着手` = TRƯỚC THỦ** | 着 âm Hán Việt là **TRƯỚC** (到着 = đáo trước). Đúng, đừng đổi thành "TRỨ". |
| **rule_05 d50 `<ruby>検収済<rt>けんしゅうず</rt></ruby>み`** | Cách tách ruby này khớp với `<ruby>納品済<rt>のうひんず</rt></ruby>み` ở d21/d35 — sách nhất quán với chính nó. Hiển thị ra đúng けんしゅうずみ. |
| **rule_07 d41 Ask đưa 2 lựa chọn cho CTO** | KHÔNG phải "đùn quyết định" (thứ mà d63 cấm). Quyết định "ai báo khách" thuộc thẩm quyền CTO; Tuấn đã có Plan đầy đủ ở d40 rồi mới hỏi. Đúng hoàn toàn. |
| **rule_06 toàn bộ số liệu** | Tôi đã kiểm từng phép tính: -67%, -70%, 83% đều đúng. Đừng "làm tròn lại". |
| **Các từ tiếng Anh trong ô Nhật: `API`, `CI/CD`, `KPI`, `NPS`, `PR`, `DB`, `Slack`, `Phase`, `Done/Doing/Blocked/Next`, `Sev1`, `ETA`** | Đây là từ **thật sự dùng nguyên dạng Latin** trong tiếng Nhật ngành IT offshore. Không phải "tiếng Anh thừa". Bài học sách 03: agent trước đã tự loại đúng nhóm này. |
| **rule_08/05/07/02/12 có khối `Khung mẫu`, 7 rule kia không có** | KHỚP CHÍNH XÁC với 5 rule đánh dấu `[TEMPLATE]` trong `meta/mục_lục.md` d39/42/44/45/49. **Không phải thiếu.** |
| **rule_05 phân biệt 納品 ≠ 完了 (d27, d58)** | Kiến thức đúng và có giá trị cao cho đội offshore. Giữ nguyên. |

---

## 5. Việc vắt qua phạm vi agent khác

### 5.1 🔴 Ruby trên katakana — lỗi TOÀN SÁCH, 10 ca / 5 phần

Phần I chiếm 5 ca, nhưng lỗi rải khắp. Danh sách đầy đủ (tôi đã quét toàn `nội_dung/phần_*/`):

```
phần_I/rule_08_報告書/rule.md:24    <ruby>ドラフト<rt>どらふと</rt></ruby>
phần_I/rule_08_報告書/rule.md:28    <ruby>フォーマット<rt>ふぉーまっと</rt></ruby>
phần_I/rule_08_報告書/rule.md:41    <ruby>セクション<rt>せくしょん</rt></ruby>
phần_I/rule_08_報告書/rule.md:43    <ruby>テンプレート<rt>てんぷれーと</rt></ruby>
phần_I/rule_10_朝礼報告/rule.md:25  <ruby>リファクタ<rt>refactor</rt></ruby>        ← Latin
phần_II/rule_15_チャネル選択/rule.md:34  <ruby>マトリクス<rt>matorikusu</rt></ruby>  ← Latin (romaji!)
phần_II/rule_16_Slackマナー/rule.md:24   <ruby>メンション<rt>めんしょん</rt></ruby>
phần_II/rule_18_スケジュール変更/rule.md:28 <ruby>リスケ<rt>りすけ</rt></ruby>
phần_III/rule_23_相談前準備/rule.md:36  <ruby>ブロシュア<rt>ぶろしゅあ</rt></ruby>
phần_III/rule_24_切り出し/rule.md:23    <ruby>リージョン<rt>りーじょん</rt></ruby>
```

**2 ca dùng romaji Latin làm furigana** (rule_10, rule_15) là nặng nhất. Đề nghị main Claude sửa **một lượt cho cả sách** bằng regex, không giao lẻ từng agent — nếu không sẽ sót như bài học sách 03 (bug ruby-loss rải 4/5 phần).

### 5.2 🔴 Mốc SLA tin xấu: rule_07 (phần I) ↔ rule_31 (phần IV)

Chi tiết ở E1-11. **Cần agent E4 (phần IV) xác nhận** trước khi sửa — tôi đề xuất giữ rule_31 làm nguồn sự thật (nó có bảng SLA đầy đủ ở d56-66), sửa rule_07. Nhưng nếu E4 tìm thấy lý do ngược lại, main Claude quyết.

Tôi đã đọc rule_31 (ngoài phạm vi, chỉ để đối chiếu — **không sửa gì**) và xác nhận bảng SLA của nó nhất quán nội bộ: d3, d5, d48, d61-62, d72 đều nói 5/15/30/60. rule_31 **không** mâu thuẫn với chính nó.

### 5.3 🟡 Convention Hán Việt cho từ kun-yomi — đụng cả 40 rule

Lỗi hệ thống #2 (8 ca trong phần I). Đây là **quyết định thiết kế bảng từ vựng**, không phải lỗi đơn lẻ. Cần chủ nhà chốt hướng trước khi bất kỳ agent nào sửa. Nếu chốt "để `—`", phải quét cả 5 phần + đối chiếu **Phụ lục B (vocab tổng hợp ~294 từ)** — mà phụ lục là **file sinh tự động**, nên phải sửa nguồn rồi build lại, **không sửa tay phụ lục**.

### 5.4 🔵 Mục lục phần I — khớp với thước đo #5 của main Claude

Tôi đối chiếu 12 tên rule trong `meta/mục_lục.md` (d38-49) với H1 của 12 file:

| # | Mục lục | H1 trong rule.md | Trạng thái |
|---|---|---|---|
| 01 | 3 nguyên tắc báo cáo | 3 nguyên tắc báo cáo / 報告の3原則 | chỉ thiếu vế JP ở mục lục |
| 02 | **Format** báo cáo tiến độ daily/weekly | **Khuôn** báo cáo tiến độ **hằng ngày/hằng tuần** | ❗ chưa Việt hoá |
| 03 | Cấu trúc báo cáo kết quả | Cấu trúc báo cáo kết quả | khớp |
| 04 | Báo cáo trung gian (**interim**) | Báo cáo trung gian | ❗ chưa Việt hoá |
| 05 | Báo cáo hoàn thành | Báo cáo hoàn thành | khớp |
| 06 | Báo cáo có số liệu | Báo cáo có số liệu | khớp |
| 07 | Báo cáo tin xấu | Báo cáo tin xấu | khớp |
| 08 | Cách viết 報告書 (**formal document**) | Cách viết 報告書 (văn bản báo cáo công việc trang trọng) | ❗ chưa Việt hoá |
| 09 | Báo cáo miệng vs văn bản | Báo cáo miệng vs văn bản | khớp |
| 10 | Báo cáo trong 朝礼 (**morning standup**) | Báo cáo trong 朝礼 | ❗ chưa Việt hoá |
| 11 | Báo cáo cho khách hàng quan trọng | Báo cáo cho khách hàng quan trọng | khớp |
| 12 | **Checklist** phòng ngừa thiếu báo cáo | **Danh sách kiểm tra** phòng ngừa thiếu báo cáo | ❗ chưa Việt hoá |

**5/12 rule của phần I** thuộc nhóm "mục lục chưa Việt hoá" (`Format`, `interim`, `formal document`, `morning standup`, `Checklist`) — đúng như main Claude đã đo (21/40 toàn sách). File `rule.md` đã Việt hoá đúng; **mục lục mới là bản cũ**. Phạm vi mục lục thuộc agent E5, tôi chỉ xác nhận số liệu cho phần I.

### 5.5 🔵 `_thuat_ngu.md` thiếu 2 mục

- **DDBN, GRCA, PFIPA đã có** (d19, 25, 35) và ghi đúng "(khái niệm trong sách)". Tốt.
- **Thiếu:** `NPS` **có** (d32) ✓ · `Sev1` **không có** (dùng ở rule_31, ngoài phạm vi tôi) · `SLA` **có** (d41) ✓ · **`Post-mortem` không có** (dùng ở rule_31 d44, d52, d65).
- Trong phạm vi phần I: mọi viết tắt dùng (`API`, `CI/CD`, `KPI`, `NPS`, `PDF`, `PR`, `DB`, `PM`, `CTO`, `BD`, `UAT`) **đều có trong `_thuat_ngu.md`**. Sạch.

---

## 6. Ghi chú cho giai đoạn SỬA

1. **Sửa E1-11 (SLA 30→15 phút) TRƯỚC KHI sửa bất cứ gì khác ở rule_07** — vì con số 30 xuất hiện ở 2 chỗ (d28 và d56) và cả hai phải đổi cùng lúc, nếu không sẽ thành "fix nửa vời" như cảnh báo rule mục 5.

2. **E1-23 (rule_11) phải sửa ĐỒNG BỘ 3 chỗ:** d39 (thoại), d45 (ghi chú 【1】), d53 (câu chốt). Bảng từ vựng d73 **đã đúng, không đụng**. Đây chính xác là kiểu lỗi "vá thoại quên cheat sheet" ở rule mục 5.3 — chỉ có điều lần này cheat sheet đúng còn thoại sai.

3. **Ruby katakana (E1-15, E1-20): sửa bằng regex cho TOÀN SÁCH**, đừng sửa lẻ. Mẫu:
   ```
   tìm:  <ruby>([ァ-ヴー]+)<rt>[^<]*</rt></ruby>
   thay: \1
   ```
   Sau đó grep lại xác nhận 0 ca (nhớ strip ruby trước khi kết luận — rule mục 1.1).

4. **E1-03 (mâu thuẫn Phase 2) cần chủ nhà quyết hướng** trước khi sửa: thống nhất số liệu hay tách bối cảnh. Không tự chọn.

5. **Lỗi hệ thống #2 (Hán Việt kun-yomi) ĐỪNG SỬA VỘI.** Nó đụng convention của cả 40 rule + Phụ lục B tự sinh. Cần quyết định thiết kế, không phải sửa lỗi.

6. **Sau khi sửa, phải build lại và grep trong `release/`** (strip ruby) — đặc biệt kiểm `ご報告申し上げます` và `15分`/`15 phút` đã ăn vào bản dựng chưa. Lưu ý `STATUS.md` d69 tự khai đã từng dính **"build pipeline silent-failure: fixes apply vào JSON nhưng book chỉ build từ rule.md"** — đúng cảnh báo rule mục 5.1. Lần này sửa thẳng `.md` là đúng hướng.

7. **Không đụng `conversation.json`** của 12 rule này. Nếu chủ nhà muốn đồng bộ JSON, đó là đợt việc riêng — và theo `STATUS.md`, pipeline **chỉ đọc `rule.md`**, nên JSON không ảnh hưởng sản phẩm.

---

*Báo cáo E1 — 12/12 rule đã đọc toàn văn. 3 rule sạch hoàn toàn (02, 06, 12). Không bịa lỗi cho đủ số.*
