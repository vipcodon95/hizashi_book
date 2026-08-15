# [03-D3] Rà soát phần IV + V + phụ lục + nhất quán

> Agent: D3 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: 18 rule (33–50) + 4 phụ lục + `meta/mục_lục.md` + `_thuat_ngu.md` + `README.md` + `_pipeline/english_audit.md` + `nội_dung/_front_matter.md`

## Tóm tắt số lỗi

**Tổng: 21 lỗi** — 🔴 6 · 🟡 9 · 🔵 6

| # | Lỗi | Mức | Vị trí |
|---|---|---|---|
| 1 | Phụ lục C **J2.6** — giải thích đảo hoàn toàn chữ cái, chấm ngược đáp án | 🔴 | `phụ_lục_C` L678-679 |
| 2 | Phụ lục C **J3.22** — đáp án D nhưng giải thích nói "選択肢はC" | 🔴 | `phụ_lục_C` L403-404 |
| 3 | rule_48 dùng **「お出まし」** — kính ngữ dành cho hoàng gia, 過剰敬語 | 🔴 | `rule_48` L37, 44 |
| 4 | rule_39 「**5月末**リリース」 mâu thuẫn rule_22/42 + phụ lục D (**7月末**) | 🔴 | `rule_39` L41 |
| 5 | Phụ lục A + B — **10/10 tiêu đề Phần là của SÁCH 02 (điện thoại)** | 🔴 | `phụ_lục_A` L8,163,356,625,810 · `phụ_lục_B` L10,76,149,236,291 |
| 6 | rule_37 câu chốt bịa mnemonic "**4F**" cho F-I-A-O | 🔴 | `rule_37` L56 |
| 7 | Mục lục vs H1 — **24/50 tên Việt khác hẳn** (bản chưa Việt hoá) | 🟡 | `meta/mục_lục.md` |
| 8 | Phụ lục A — **25/50 nhãn tên rule lỗi thời** so với H1 | 🟡 | `phụ_lục_A` |
| 9 | Phụ lục C — **19/50 nhãn tên rule lỗi thời** so với H1 | 🟡 | `phụ_lục_C` |
| 10 | Phụ lục B + C — header khai "**60 rules**" (sách chỉ có 50) | 🟡 | `phụ_lục_B` L3 · `phụ_lục_C` L3 |
| 11 | rule_48 lệch rule.md ↔ phụ lục A (「お出まし」 vs 「ご出席」) — fix nửa vời | 🟡 | `rule_48` / `phụ_lục_A` |
| 12 | rule_50 — bảng markdown vỡ cột (3 cột header, dòng 2 cột) | 🟡 | `rule_50` L23 |
| 13 | rule_39 — luận điểm hứa "4 điểm báo cáo" nhưng thoại chỉ có 3 | 🟡 | `rule_39` L3 vs L40 |
| 14 | rule_37 — 目処 dịch "Mục đích" (sai, phải là "mốc dự kiến") | 🟡 | `rule_37` L77 |
| 15 | rule_40 — bản Việt mất sắc thái phỏng đoán 「かも」 | 🟡 | `rule_40` L43 |
| 16 | **raw-kanji là vấn đề TOÀN SÁCH** (~1095 kanji trần chỉ riêng khối TỐT), không phải 13 chỗ | 🔵 | 50/50 rule |
| 17 | `_pipeline/english_audit.md` **ĐÃ LỖI THỜI** — 6/6 mục kiểm đã được sửa | 🔵 | `_pipeline/english_audit.md` |
| 18 | Tiếng Anh còn trong văn Việt phần IV/V + phụ lục (~20 chỗ) | 🔵 | xem mục 7 |
| 19 | Phụ lục B khai 288 từ, đếm thực 287 | 🔵 | `phụ_lục_B` L328 |
| 20 | rule_33 dùng 「御座います」 dạng kanji (bất thường trong thoại) | 🔵 | `rule_33` L43 |
| 21 | `meta/STATUS.md` lỗi thời (khai "v0.1 pilot", "🔜 v0.5 viết 49 rule") | 🔵 | `meta/STATUS.md` L78, 98-101 |

---

## 1. KIỂM NHÃN RULE TRONG 4 PHỤ LỤC

### ✅ KẾT LUẬN CHÍNH: **KHÔNG có lỗi kiểu sách 08.**

Sách 08 có 159 nhãn `Rule 08` sai vì script điền **mã SÁCH** vào chỗ **mã RULE** → hỏng chức năng tra ngược. **Sách 03 KHÔNG bị lỗi này.**

Tôi map ngược bằng script: lấy từng câu hỏi trong phụ lục C, tìm chuỗi 25 ký tự đầu của `**Q:**` trong `conversation.json` của đúng rule mà nhãn khai.

| Phép kiểm | Kết quả |
|---|---|
| Câu hỏi phụ lục C truy ngược đúng `rule_NN/conversation.json` | **50/50 ✅** |
| Số rule trong nhãn phụ lục A (`### Rule NN`) | **50/50 đúng ✅** |
| Số rule trong nhãn phụ lục D | **8/8 đúng ✅** |
| Số rule trong nhãn phụ lục C (`từ rule_NN`) | **50/50 đúng ✅** |

→ **Chức năng tra ngược của sách 03 LÀNH LẶN.** Không cần bảng sửa mã rule.

### ⚠️ Nhưng: TÊN rule trong nhãn thì LỖI THỜI

Nhãn có dạng `Rule NN — <tên VN> / <tên JP>`. **Số NN đúng**, nhưng `<tên>` là bản cũ chưa Việt hoá, không khớp H1 hiện tại của `rule.md`.

**Phụ lục A — lệch 25/50** (trích các ca phần IV+V thuộc phạm vi tôi):

| Rule | Phụ lục A ghi | H1 `rule.md` hiện tại |
|---|---|---|
| 33 | Quy tắc tắt/bật mic trong họp trực tuyến / オンライン会議のマナー（mute/unmute） | Họp trực tuyến — nghi thức tắt/bật mic / オンライン会議のマナー |
| 34 | Họp kết hợp cân bằng trực tuyến/trực tiếp | Hybrid meeting cân bằng |
| 37 | Họp khẩn / 緊急会議の運営（Fact-Impact-Action-Owner） | Crisis meeting họp gấp / 緊急会議の運営 |
| 38 | 直前のリスケジュール | 直前のリスケ |
| 39 | 1on1ミーティング（進捗・課題・相談・次のステップ） | 1on1ミーティング |
| 40 | Brainstorming / Workshop / ブレスト・ワークショップの進行 | Động não / Hội thảo / ブレストの進行 |
| 41 | フィードバック面談（GROW モデル） | フィードバック面談 |
| 44 | Confirm việc cần làm + người phụ trách | Xác nhận việc cần làm + người phụ trách |
| 45 | 議事録の作成と配布（24時間以内） | 議事録の作成と配布 |
| 46 | Định dạng biên bản chuẩn (mở rộng) / 議事録の標準フォーマット（extended版） | Format biên bản chuẩn / 議事録のフォーマット |
| 47 | 会議後のお礼メール | お礼メール |
| 49 | 決定事項の社内管理（CRM/Notion） | 決定事項の社内管理 |
| 50 | 振り返りと改善（10項目チェックリスト） | 振り返りと改善 |

(Phần I–III lệch thêm 12 ca: rule 04, 05, 08, 13, 14, 16, 21, 25, 28, 29, 30, 32 — thuộc phạm vi D1/D2, chỉ liệt kê để main Claude sửa 1 lượt.)

**Phụ lục C — lệch 19/50** (phần IV+V):

| Câu | Rule | Phụ lục C ghi | H1 hiện tại |
|---|---|---|---|
| J3.22 | 33 | Quy tắc tắt/bật mic trong họp trực tuyến | Họp trực tuyến — nghi thức tắt/bật mic |
| J2.12 | 34 | Họp kết hợp cân bằng trực tuyến/trực tiếp | Hybrid meeting cân bằng |
| J2.13 | 37 | Họp khẩn | Crisis meeting họp gấp |
| J2.15 | 40 | Brainstorming / Workshop | Động não |
| J2.16 | 41 | Đánh giá hiệu suất và phản hồi kết quả | Đánh giá hiệu suất |
| J3.27 | 44 | Confirm việc cần làm + người phụ trách | Xác nhận việc cần làm + người phụ trách |
| J2.17 | 46 | Định dạng biên bản chuẩn (mở rộng | Format biên bản chuẩn |

⚠️ **Lỗi phụ: mất dấu `)` đóng ngoặc.** Nhãn phụ lục C cắt chuỗi ở ký tự `)` đầu tiên nên tên chứa ngoặc bị cụt:
- `J3.4` → `Cài đặt video call (Zoom/Teams` (thiếu `)`)
- `J3.6` → `Tới sớm 5 phút (オン・タイム文化` (thiếu `)`)
- `J2.8` → `Xin thêm thời gian suy nghĩ (持ち帰り` (thiếu `)`)
- `J3.21` → `Hoãn quyết định (mang về trả lời` (thiếu `)`)
- `J2.17` → `Định dạng biên bản chuẩn (mở rộng` (thiếu `)`)

→ Đây là **bug của script sinh phụ lục** (regex dừng ở `)`). Sửa script trước khi sinh lại, nếu không sẽ tái phát.

### 🔴 Lỗi NẶNG NHẤT ở nhãn: 10 tiêu đề Phần trong phụ lục A + B là của SÁCH 02

`phụ_lục_A` L8, 163, 356, 625, 810 và `phụ_lục_B` L10, 76, 149, 236, 291:

| Có trong sách 03 | Phải là (theo `meta/mục_lục.md`) |
|---|---|
| `## Phần I — Nền tảng trước nhấc máy` | `## Phần I — Chuẩn bị trước họp / 会議前` |
| `## Phần II — Nhận điện thoại` | `## Phần II — Mở đầu cuộc họp / 会議の開始` |
| `## Phần III — Gọi điện thoại đi` | `## Phần III — Tham gia trong họp / 会議中` |
| `## Phần IV — Tình huống khó` | `## Phần IV — Tình huống đặc biệt / 特別な場面` |
| `## Phần V — Kết họp, Trực tuyến & Thực hành tốt` | `## Phần V — Sau cuộc họp + Biên bản / 会議後・議事録` |

**"Nhấc máy" / "Nhận điện thoại" / "Gọi điện thoại đi" là sách 02 (Điện thoại), không liên quan gì tới sách Họp.** Học viên mở phụ lục A của sách Họp sẽ thấy mục "Nền tảng trước nhấc máy" — sai hoàn toàn. Đây là lỗi phụ lục nghiêm trọng nhất của sách này.

Kèm theo: `phụ_lục_B` L3 và `phụ_lục_C` L3 đều khai **"từ 60 rules"** — sách 03 chỉ có **50 rule** (đây cũng là số của sách 02).

---

## 2. Phụ lục C — rà từng câu: đáp án ↔ giải thích

Rà **50/50 câu**. Phép kiểm: (a) số phương án in đậm phải = 1, (b) phương án in đậm phải trùng `**Đáp án:**`, (c) chữ cái mà giải thích nhắc tới phải bao gồm đáp án, (d) đủ 4 phương án A-D.

| Phép kiểm | Kết quả |
|---|---|
| Đúng 4 phương án A–D | 50/50 ✅ |
| Đúng 1 phương án in đậm | 50/50 ✅ |
| Phương án in đậm trùng `**Đáp án:**` | 50/50 ✅ |
| **Giải thích khớp đáp án** | **48/50** ❌ 2 ca |

### 🔴 Ca 1 — J2.6 (từ rule_22), `phụ_lục_C` L664-679 — NẶNG NHẤT

```
- **A) 方向性につきましては概ね同意でございます。詳細は別途確認させてください**
- B) ちょっと無理かもしれません
- C) 全くおっしゃるとおりです
- D) はい、大丈夫です

**Đáp án:** A

**Giải thích / 解説:**
- Aは完全同意で後でリスク。Cは弱い拒否で議論を止める。Dは完全同意で詳細確認の余地なし。Bが「概ね同意」を正確に表す。
- A = full commit có rủi ro. C mơ hồ phủ định. D = full commit không kiểm tra được. B đúng level 'đồng ý đại thể'.
```

**Vấn đề:** Giải thích **chấm A là SAI** ("Aは完全同意で後でリスク") và **chấm B là ĐÚNG** ("Bが「概ね同意」を正確に表す") — trong khi đáp án chính thức là **A**. Chữ cái trong giải thích bị lệch một vòng: nội dung mô tả cho B thực ra là của A, mô tả cho C thực ra là của B...

Đối chiếu nội dung thì **đáp án A là ĐÚNG** (「概ね同意でございます。詳細は別途確認させてください」 chính là level 2 概ね同意 mà rule_22 dạy). Vậy **giải thích sai, không phải đáp án sai**.

**Đề xuất sửa** (chỉ sửa khối giải thích, giữ nguyên đáp án A):
```
- Aが「概ね同意」を正確に表す。Bは弱い拒否で議論を止める。Cは完全同意で後でリスク。Dは完全同意で詳細確認の余地なし。
- A đúng level 'đồng ý đại thể'. B mơ hồ phủ định. C = cam kết hoàn toàn, có rủi ro. D = cam kết hoàn toàn, không còn chỗ kiểm tra chi tiết.
```

### 🔴 Ca 2 — J3.22 (từ rule_33), `phụ_lục_C` L389-404

```
- **D) 挙手機能で発言を求め、許可後にカメラオン+ミュート解除+名乗りで発言開始**

**Đáp án:** D

**Giải thích / 解説:**
- オンライン会議の4原則（既定ミュート・発言時カメラオン・挙手機能・名乗り）を全て守る選択肢はC。
- C tuân thủ cả 4 quy tắc: mute mặc định, camera on khi nói, dùng raise-hand, tự xưng tên.
```

**Vấn đề:** Đáp án là **D**, nhưng giải thích nói **"選択肢はC"** / **"C tuân thủ cả 4 quy tắc"**. Trong đề, C là 「ミュートのまま割り込んで話す」 (nói chen khi vẫn tắt mic) — phương án XẤU nhất. Học viên đọc giải thích sẽ học ngược.

Đối chiếu `rule_33` L3 (4 nguyên tắc) thì **đáp án D là ĐÚNG**. Vậy **giải thích sai chữ cái**.

**Đề xuất sửa** (đổi `C` → `D` ở cả 2 dòng):
```
- オンライン会議の4原則（既定ミュート・発言時カメラオン・挙手機能・名乗り）を全て守る選択肢はD。
- D tuân thủ cả 4 quy tắc: mute mặc định, camera on khi nói, dùng raise-hand, tự xưng tên.
```

### ✅ 48 câu còn lại: SẠCH
Đáp án khớp giải thích, khớp nội dung rule nguồn. Riêng J3.30, J3.31, J2.1, J2.11, J2.16, J3.23 đặt đáp án ở vị trí **A** (không phải luôn ở C/D) — **đây là thiết kế tốt**, không phải lỗi.

---

## 3. KIỂM raw-kanji / ruby

### ⚠️ CẢNH BÁO CHO MAIN CLAUDE: `STATUS.md` khai SAI quy mô

`meta/STATUS.md` L11 khai đã fix *"55 VN raw-kanji conversation + 13 raw-kanji rule.md"*. Con số **13** khiến người đọc tưởng cả sách chỉ còn vài chỗ. **Thực tế raw-kanji là vấn đề toàn sách.**

Tôi quét toàn bộ 50 `rule.md`, chỉ tính kanji nằm trong ô thoại tiếng Nhật (`「...」`), đã strip ruby (rule mục 1.1):

| Khối | Tổng thẻ `<ruby>` | Tổng kanji TRẦN (không ruby) |
|---|---|---|
| `## Hội thoại XẤU` | 365 | 251 |
| `## Hội thoại TỐT` | 892 | **1.095** |
| Khối khác (câu chốt, luận điểm...) | 75 | 645 |

**Cả 50/50 rule đều có kanji trần trong khối TỐT** — từ 1 chỗ (rule_28, rule_49) tới 61 chỗ (rule_18). Nhiều nhất: rule_18 (61), rule_02 (59), **rule_45 (55)**, **rule_42 (46)**, rule_12 (40).

### Phạm vi của tôi (phần IV + V): **51 lượt** thoại có kanji trần

Nặng nhất:

| File | Dòng | Kanji thiếu ruby | Trích |
|---|---|---|---|
| `rule_42` | 37 | 月末 · 本日決定 · 決定済 | 「**【決定済み】本日決定**したのは、Phase 2スコープA案、リリース7**月末**…」 |
| `rule_42` | 38 | 時間 · 来週水曜午後 · 残 · 相談 · 積 | 「**【積み残し】残**るスケジュール詳細と…**来週水曜午後**で30分のお**時間**…」 |
| `rule_45` | 39 | 上 · 世話 · 大垣様 · 月例会議 · 松本様 · 議事録 · 送 | 「**松本様、大垣様** / お**世話**になっております。本日4月28日に開催いたしました**月例会議**の**議事録**をお**送**り申し**上**げます」 |
| `rule_45` | 40 | 上 · 水 · 確認 · 質問 | 「ご**確認**の**上**、ご**質問**・修正点ございましたら、5月1日（**水**）17時までに…」 |
| `rule_41` | 37 | 今後 · 合 · 思 · 見積 | 「【Options】**今後**の**見積**もりに…どちらがズンに**合**うと**思**いますか？」 |
| `rule_35` | 40 | 不安定 · 接続 · 申 · 訳 | 「**申**し**訳**ございません、**接続**が**不安定**でございまして…」 ← **chính là CÂU CHỐT của rule** |
| `rule_34` | 39 | 松本様 · 大垣様 | 「…まずオンラインでご参加の**松本様、大垣様**、ご意見を…」 |
| `rule_48` | 38 | 意見 · 特 · 番 | 「議事録を添付いたします。**特**に 6**番**（QA増員）…経理視点でのご**意見**を…」 |

Danh sách đầy đủ 51 lượt: rule_33 (2), rule_34 (6), rule_35 (5), rule_36 (1), rule_38 (4), rule_39 (2), rule_41 (6), rule_42 (6), rule_43 (2), rule_44 (4), rule_45 (5), rule_48 (4), rule_50 (1). rule_37, rule_40, rule_46, rule_47, rule_49 sạch hoặc chỉ 1 chỗ.

### 🔵 Nhận định (KHÔNG khuyến nghị fix hàng loạt ngay)

Đây **có thể là chủ ý thiết kế**: khối XẤU ruby dày (365 ruby / 251 trần) để người mới đọc được, khối TỐT ruby thưa hơn ở phần lặp lại. Nhưng dữ liệu cho thấy **khối TỐT lại có ruby NHIỀU HƠN (892)** đồng thời **kanji trần cũng nhiều hơn (1.095)** → tức là **ruby được rải không theo quy tắc nào**, cùng một từ chỗ có chỗ không.

Ví dụ rõ nhất trong phạm vi tôi — `rule_35`, cùng một cụm 「接続が不安定」:
- L38 (thoại): `<ruby>接続<rt>せつぞく</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>` ← CÓ ruby
- L40 (thoại): `接続が不安定` ← KHÔNG ruby
- L54 (câu chốt): `<ruby>接続<rt>せつぞく</rt></ruby>が<ruby>不安定<rt>ふあんてい</rt></ruby>` ← CÓ ruby

→ **Đề xuất:** đây là việc cần **chủ nhà chốt quy ước trước** (ruby toàn bộ? ruby lần đầu mỗi rule? ruby chỉ khối TỐT?), rồi mới chạy script 1 lượt cho cả 50 rule. **Đừng vá lẻ 51 chỗ của phần IV+V** — sẽ tạo ra sách nửa có nửa không, tệ hơn hiện tại.

---

## 4. Lỗi nội dung 18 rule phần IV + V

### 🔴 4.1 — rule_48 L37: 「お出まし」 là kính ngữ HOÀNG GIA (trục C, 過剰敬語)

```
| **ズン** | 「本日の Phase 2 交渉会議、ご都合つかず お出まし いただけなかったこと、改めて承知しております【2】。」
   *Họp đàm phán phase 2 hôm nay chị không tiện dự được, em vẫn nhớ ạ.*
```
Và L44 dạy lại: `【2】**「ご都合つかずお出ましいただけなかった」** — ghi nhận việc vắng mặt một cách trang trọng, không trách.`

**Vấn đề:** Kiểm chứng qua Cung Nội Sảnh (宮内庁) — 「お出まし」 là thuật ngữ chính thức chỉ việc **Thiên hoàng / Hoàng thất xuất hiện trước công chúng** (trang 行幸啓など（国内のお出まし）). Từ điển Weblio cũng định nghĩa là kính ngữ chỉ việc ra ngoài của **người có địa vị cao quý**.

Dùng cho **chị Loan — trưởng phòng kế toán CÙNG CÔNG TY**, trong một email nội bộ thường ngày, là **過剰敬語 nặng**. Chưa kể đây là người **nội bộ (uchi)** — càng không được nâng kính ngữ lên mức đó. Học viên học thuộc câu này rồi gửi cho sếp thật sẽ gây phản cảm/buồn cười.

**Bằng chứng phụ:** chính `phụ_lục_A` (Rule 48) lại ghi bản ĐÚNG:
```
>  「ご都合がつかずご出席いただけなかったこと、承知しております。」
```
→ Đây là **fix nửa vời kiểu rule mục 5.2**: ai đó đã sửa 「お出まし」→「ご出席」 trong phụ lục A nhưng **quên `rule.md`** — mà `rule.md` mới là thứ vào sản phẩm (rule mục 0.3).

**Đề xuất sửa** `rule_48` L37 + L44 + bảng từ vựng L70 + `phụ_lục_B` L316-vùng:
- L37: 「本日の Phase 2 交渉会議、ご都合つかず**ご出席**いただけなかったこと、改めて承知しております」
- L44: `【2】**「ご都合つかずご出席いただけなかった」**` …
- Bảng từ vựng L70: xoá dòng `| お出まし | おでまし | — | Tham dự (formal) |`, thay bằng `| ご出席 | ごしゅっせき | XUẤT TỊCH | Tham dự (kính ngữ) |`
- `phụ_lục_B` cũng có dòng `| お出まし | おでまし | — | Tham dự (formal) | rule_48 |` → sửa đồng bộ (rule mục 5.3: đừng quên bảng từ vựng).

### 🔴 4.2 — rule_39 L41: mâu thuẫn mốc release với chính sách này (trục B)

```
rule_39 L41: 「【課題】QAリソースが現在2名のみで、5月末リリースまで足りない見込みでございます。」
             *[Vấn đề] Hiện chỉ có 2 QA, dự kiến không đủ cho đến release cuối tháng 5 ạ.*
```

Đối chiếu toàn sách, mốc release Phase 2 ở mọi chỗ khác đều là **cuối tháng 7**:

| Vị trí | Ghi |
|---|---|
| `rule_22` L23, L35 | 「**7月末**リリース**で進めたいと考えております**」 |
| `rule_42` L37 | 「本日決定したのは、Phase 2スコープA案、リリース**7月末**…」 |
| `phụ_lục_D` L201 | 「② リリース日：**2026年7月31日**で確定」 |
| `phụ_lục_D` L268 | 「(2) Ngày phát hành chốt: **31/7/2026**」 |

rule_39 là **buổi 1on1 SAU khi Dũng chủ trì họp đàm phán phase 2** (L13: *"buổi đầu sau khi Dũng được giao chủ trì họp đàm phán phase 2"*) — tức là sau khi đã chốt 7月末. Nói 5月末 là mâu thuẫn dòng thời gian.

**Đề xuất sửa:** `rule_39` L41 → 「…**7月末**リリースまで足りない見込みでございます。」 + bản Việt "…đến release cuối tháng 7 ạ."
*(Lưu ý: L42 「もう1名、**6月まで**QAをアサイン」 — nếu release là 7月末 thì xin QA tới 6月 là hụt. Nên sửa thành 「**7月まで**」 cho khớp. Cần chủ nhà xác nhận vì đụng logic nghiệp vụ.)*

### 🔴 4.3 — rule_37 L56: bịa mnemonic "4F" (trục A — dạy sai khung làm việc thật)

```
> *4F: Fact (sự thật), Felt impact (ảnh hưởng), plan of Action (kế hoạch xử lý), single Owner (một người chịu trách nhiệm). 30 phút.*
```

**Vấn đề:** Khung này ở mọi chỗ khác trong sách đều gọi là **Fact → Impact → Action → Owner (F-I-A-O)**:
- `rule_37` L3 (luận điểm): *"cấu trúc 4 bước ngắn gọn: **Fact → Impact → Action → Owner**"*
- `rule_37` L5 (JP): 「Fact→Impact→Action→Owner の順で進める」
- `rule_37` L32 (tiêu đề khối): `## Hội thoại TỐT — Fact / Impact / Action / Owner`
- `rule_37` L54 (câu chốt JP): 「Fact→Impact→Action→Owner の順でご報告いたします」
- `phụ_lục_A` Rule 37: 「Fact → Impact → Action → Owner の順でご報告いたします。」
- `phụ_lục_C` J2.13: 「Fact（事実）→Impact（影響）→Action（対応）→Owner（責任者）の順で30分以内」

Chỉ riêng L56 gọi là **"4F"** rồi phải bẻ cong các chữ cái cho vừa: `Impact` → "**F**elt impact", `Action` → "plan of **A**ction", `Owner` → "single **O**wner". Bốn chữ cái đầu là F-F-A-O, **không phải 4F**. Đây là mnemonic bịa, tự mâu thuẫn ngay trong cùng một rule (trục B), và làm học viên nhớ sai tên khung khi dùng thật.

**Đề xuất sửa** L56:
```
> *F-I-A-O: Fact (sự thật) → Impact (ảnh hưởng) → Action (kế hoạch xử lý) → Owner (một người chịu trách nhiệm). Tối đa 30 phút.*
```

### 🟡 4.4 — rule_39 L3: luận điểm hứa 4 điểm, thoại chỉ có 3

Luận điểm L3 nêu câu chuẩn: 「**本日の1on1、4点ご報告と1点ご相談がございます**」. Thoại L39 cũng nói 「4点ご報告と1点ご相談がございます」. **Nhưng khối 【進捗】 L40 chỉ liệt kê 3 mục** (①スコープ協議完了 ②議事録送付予定 ③追加要件3件受領).

Nếu tính cả 【課題】 L41 là mục thứ 4 thì mâu thuẫn với chính nhãn 「ご報告」 (課題 đứng riêng). Học viên bắt chước sẽ báo sai số → mất uy tín vì "nói 4 mà chỉ có 3" — đúng thứ mà rule_44 dạy phải tránh.

**Đề xuất:** hoặc sửa thành 「**3点**ご報告と1点ご相談」, hoặc bổ sung mục ④ vào 【進捗】. Nghiêng về phương án 1 (sửa số) vì ít đụng nội dung hơn. Nhớ sửa **cả L3, L39, và `phụ_lục_A` Rule 39** (`「本日の1on1、〇点ご報告と〇点ご相談がございます。」` — chỗ này dùng 〇 nên không sao).

### 🟡 4.5 — rule_37 L77: dịch sai 目処

```
| 目処 | めど | — | Mục đích / mốc dự kiến |
```
**目処 (めど)** nghĩa là **triển vọng / mốc dự kiến / ước chừng khi nào xong** — hoàn toàn **không có** nghĩa "mục đích" (mục đích là 目的 mokuteki). Trong chính thoại L42 dùng đúng nghĩa: 「復旧**目処**は8時30分」 = "mốc dự kiến khôi phục là 8h30".

Ghép "Mục đích / mốc dự kiến" làm học viên tưởng 目処 = 目的, dễ viết 「会議の目処」 (sai) thay vì 「会議の目的」.

**Đề xuất sửa:** `| 目処 | めど | — | Mốc dự kiến / triển vọng (khi nào xong) |`

### 🟡 4.6 — rule_40 L43: bản Việt mất sắc thái phỏng đoán

```
| **ハイ** | 「便乗で、退会理由を選択式にすると回答率上がる かも 。」
   *Xây dựng tiếp, để lý do hủy dạng lựa chọn thì tỷ lệ trả lời sẽ tăng đấy.*
```
JA có 「**かも**」 = "có lẽ / biết đâu" — giọng phỏng đoán, đúng tinh thần động não (chưa khẳng định). Bản Việt "**sẽ tăng đấy**" là khẳng định chắc chắn. Mất đúng cái sắc thái mà rule đang dạy (nêu ý chưa chín, không phán xét).

**Đề xuất sửa:** *"…thì tỷ lệ trả lời **có khi** tăng đấy."* hoặc *"…**biết đâu** tỷ lệ trả lời tăng."*

### 🟡 4.7 — rule_50 L23: bảng markdown vỡ cột

```
| Tuần | Câu của em Dũng | Hệ quả |          ← header 3 cột
|---|---|---|
| Tuần 1 | 「終わった、よかった」 | Không học gì mới |     ← 3 cột OK
| Tuần 4 | Cùng lỗi cũ lặp lại — chương trình họp gửi 2h trước | Khách lại phàn nàn |  ← 3 cột OK
| Tuần 12 | Kỹ năng giậm chân, đánh giá hiệu suất không cải thiện |   ← CHỈ 2 CỘT ❌
```
Dòng "Tuần 12" thiếu 1 ô → khi render, "Kỹ năng giậm chân..." rơi vào cột **"Câu của em Dũng"** (chỗ đáng lẽ là lời thoại), cột "Hệ quả" trống. Đây đúng dạng lỗi rule mục 4F (bảng mất cột phán định).

**Đề xuất sửa:** `| Tuần 12 | (không có gì để nói) | Kỹ năng giậm chân, đánh giá hiệu suất không cải thiện |`

### 🔵 4.8 — rule_33 L43: 「御座います」 viết dạng kanji

```
| **リン** 【1】 | 「失礼します。リンで<ruby>御座<rt>ござ</rt></ruby>います【2】。…」
```
Trong tiếng Nhật thương mại hiện đại, 「ございます」 hầu như luôn viết **hiragana**; dạng kanji 「御座います」 mang màu cổ văn/trang trí. Toàn bộ 49 rule còn lại đều dùng 「ございます」 hiragana. Đây là chỗ **duy nhất** trong sách dùng kanji — không nhất quán.

**Đề xuất sửa:** `「失礼します。リンでございます【2】。…」` (bỏ ruby luôn vì không còn kanji).

### ✅ Các rule SẠCH trong phạm vi tôi

Kiểm keigo theo rule mục 4C (二重敬語, 過剰敬語 お/ご vào việc mình, uchi/soto, 弊社/当社, さ入れ言葉, 申し伝える) trên 18 rule:

| Phép kiểm | Kết quả |
|---|---|
| `ご〜になられる` / `お〜させていただく` (二重敬語) | 0 ca ✅ |
| `〜様` sau chức danh (ngoài khối XẤU) | 0 ca trong phần IV+V ✅ |
| `当社` (phải là 弊社) | 0 ca ✅ |
| さ入れ言葉 (`〜さ せていただく` sai) | 0 ca ✅ |
| Uchi/soto — gọi người công ty mình có 様 trước khách | 0 ca ✅ |
| `弊社CTO` (rule_38 L37) — đúng khiêm nhường ngữ | ✅ ĐÚNG, đừng sửa |

**Nội dung nghiệp vụ (trục A) — phần IV + V đạt chuẩn thật:**
- rule_44 (誰が・いつまでに): dạy Who/What/When + **bắt người phụ trách xác nhận bằng lời** — đây là chuẩn thật, tốt.
- rule_46 (議事録): 8 thành phần + tách 決定事項 ≠ TODO + 未決事項 — đúng thực tiễn doanh nghiệp Nhật.
- rule_45: 24h + hạn chót duyệt ("không phản hồi = coi như duyệt") — đúng.
- rule_31/42: chốt kết luận có mời phản đối trước khi 確定 — đúng văn hoá 根回し.
- rule_37: F-I-A-O, không bàn nguyên nhân trong họp khẩn — đúng thực hành incident response.
- rule_41: GROW, tránh 「君は〜すぎる」 — đúng, và đúng cả về mặt tâm lý phản hồi.

---

## 5. Mục lục vs H1 (bảng 50 rule)

**Xác nhận lại đo của main Claude: ĐÚNG.** Tôi chạy độc lập (strip ruby trước khi so — rule mục 1.1), kết quả trùng khít: **24/50 tên Việt khác hẳn**, phần còn lại chỉ thiếu vế tiếng Nhật sau dấu `/`.

Nguyên nhân đúng như main Claude chẩn đoán: **mục lục là bản chưa Việt hoá** (`agenda`, `moderator / scribe`, `clarification`, `deadlock`, `Confirm timeline`, `data`, `Brainstorming`, `Self-reflection`, `Tracking`, `Postpone / cancel`, `Crisis meeting`, `Performance review`, `mute/unmute etiquette`, `line drops`, `Follow-up`, `action items`).

### Bảng đủ 24 ca

| # | Mục lục (`meta/mục_lục.md`) | H1 `rule.md` |
|---|---|---|
| 01 | Lập **agenda** chuẩn 5W1H | Lập **chương trình họp** chuẩn 5W1H |
| 07 | **Kiểm tra** nội bộ trước họp | **Thống nhất** nội bộ trước họp |
| 11 | Trao danh thiếp đúng cách **(link sách 07)** | Trao danh thiếp đúng cách |
| 13 | Giới thiệu **agenda** + thời lượng | Giới thiệu **chương trình họp** + thời lượng |
| 14 | Phân vai **moderator / scribe** | Phân vai **chủ trì / người ghi biên bản** |
| 16 | **Confirm timeline** mỗi mục | **Xác nhận phân bổ thời gian** mỗi mục |
| 21 | Xin **clarification** khi không hiểu | Xin **làm rõ** khi không hiểu |
| 22 | Đồng ý lịch sự | Đồng ý lịch sự **— 5 levels** |
| 28 | Xin thêm thông tin **/ data** | Xin thêm thông tin **/ dữ liệu** |
| 29 | Khi gặp **deadlock** | Khi gặp **bế tắc** |
| 31 | **Bỏ phiếu / Đi đến quyết định** | **Bỏ phiếu / Đi đến quyết định** *(H1 tách bằng `/`, khớp nội dung — lệch do format)* |
| 32 | Hoãn quyết định **("mang về")** | Hoãn quyết định **(mang về trả lời)** |
| 33 | **Online meeting — mute/unmute etiquette** | **Họp trực tuyến — nghi thức tắt/bật mic** |
| 34 | **Hybrid meeting — cân bằng online/offline** | **Hybrid meeting cân bằng** |
| 35 | Khi mất kết nối **/ line drops** | Khi mất kết nối |
| 37 | **Crisis meeting — họp gấp** | **Crisis meeting họp gấp** |
| 38 | **Postpone / cancel meeting last-minute** | **Dời/hủy họp sát giờ** |
| 39 | 1-on-1 **trao đổi định kỳ** với cấp trên Nhật | 1-on-1 với cấp trên Nhật |
| 40 | **Brainstorming / Workshop format** | **Động não / Hội thảo** |
| 41 | **Performance review (gentle feedback)** | **Đánh giá hiệu suất** |
| 44 | **Confirm action items + owner** | **Xác nhận việc cần làm + người phụ trách** |
| 47 | **Follow-up email** cảm ơn | **Email cảm ơn sau họp** |
| 49 | **Tracking decisions trong CRM** | **Lưu quyết định vào hệ thống nội bộ** |
| 50 | **Self-reflection** + cải tiến | **Tự nhìn lại** và cải tiến |

**Đề xuất:** đồng bộ **theo H1 của `rule.md`** (H1 là bản đã Việt hoá, đã qua review). Sửa `meta/mục_lục.md`, **không** sửa ngược `rule.md`.

⚠️ **Cùng lúc phải sửa `phụ_lục_A` (25 ca) và `phụ_lục_C` (19 ca)** — chúng dùng cùng bộ tên cũ. Nếu chỉ sửa mục lục mà quên phụ lục thì sách vẫn có 3 tên khác nhau cho cùng 1 rule.

⚠️ **26 ca còn lại chỉ thiếu vế tiếng Nhật** sau dấu `/` — mục lục có cột `Tên JP` riêng nên thực chất **không thiếu**, chỉ là format bảng khác H1. Đây là **điểm mù kiểu rule mục 6**: đừng vội kết luận "mục lục thiếu tên JP", nó nằm ở cột bên cạnh.

---

## 6. Cấu trúc + front matter + thuật ngữ

### 6.1 Cấu trúc 50 rule — ✅ XÁC NHẬN LẠI ĐO CỦA MAIN CLAUDE: ĐÚNG

| Khối | Số rule có |
|---|---|
| `## Bối cảnh / 場面` | **50/50** ✅ |
| `## Câu chốt` | **50/50** ✅ |
| `## Tránh` | **50/50** ✅ |
| `## Bảng từ vựng` | **50/50** ✅ |
| Có khối XẤU (mọi biến thể) | **50/50** ✅ |
| Có khối TỐT (mọi biến thể) | **50/50** ✅ |

Lưu ý cho main Claude: nếu grep chuỗi cứng `## Hội thoại XẤU` sẽ ra **48/50**, `## Hội thoại TỐT` ra **45/50** — **KHÔNG PHẢI THIẾU KHỐI**. 5 rule dùng tiêu đề biến thể hợp lý theo nội dung:
- `rule_45`: `## Quy trình TỐT — gửi 24h, định dạng 6 mục`
- `rule_46`: `## Format XẤU` / `## Format TỐT` (rule về định dạng, không phải hội thoại)
- `rule_48`: `## Cách TỐT — ghi nhận + đề xuất trao đổi bù`
- `rule_49`: `## Quy trình TỐT — Ghi chép trên Notion`
- `rule_50`: `## Pattern XẤU` / `## Pattern TỐT` (rule về thói quen)

→ **CẤM SỬA** thành `## Hội thoại XẤU/TỐT` — các rule này không có hội thoại theo nghĩa đen.

### 6.2 Front matter — ✅ SẠCH, không hứa thứ sách không có

Kiểm từng con số trong `nội_dung/_front_matter.md`:

| Front matter hứa | Thực tế đếm được | Kết luận |
|---|---|---|
| 50 rules, 5 phần 8/10/14/10/8 | 50 `rule.md`, đúng phân bổ | ✅ |
| Phụ lục A — 97 cụm câu chuẩn | đếm `>  「` = **97** | ✅ khớp chính xác |
| Phụ lục B — ~288 từ | đếm 287 dòng từ (khai 288) | 🔵 lệch 1, có chữ "~" nên chấp nhận được |
| Phụ lục C — 50 câu, J4/J3/J2 | 50 câu (J4:1, J3:32, J2:17) | ✅ |
| Phụ lục D — chương trình họp, biên bản, email, danh sách kiểm tra | 8 mẫu đủ 5 loại | ✅ |
| Bảng 9 nhân vật | khớp `voice_profiles.json` | ✅ |

### 6.3 Cross-reference — ✅ SẠCH

Quét toàn bộ dòng `**Liên quan:**` trong 50 rule: **0 ca trỏ tới rule không tồn tại** (mọi số đều nằm trong 1–50). Các tham chiếu chéo sách (`Sách 01 Rule 25-32` ở rule_47, `link sách 07` ở rule_11) là chủ ý thiết kế.

### 6.4 `_thuat_ngu.md` — ✅ SẠCH, chất lượng tốt

26 mục viết tắt, sắp xếp đúng bảng chữ cái, mỗi mục có dạng đầy đủ + nghĩa Việt + **chỉ rõ rule dùng nó**. Đối chiếu: AWS/DAU/MAU (rule 28) ✅, ETA (rule 37) ✅, GROW (ghi rule 41) ✅, CRM (rule 49) ✅, RBAC (rule 21) ✅, JST ✅.

🔵 Một điểm nhỏ: mục **GROW** ghi *"(rule 41)"* — đúng. Nhưng mục **Q1** cũng ghi *"(rule 41)"* trong khi rule_41 L13 dùng "Cuối Q1" ✅ — cũng đúng. Không có lỗi.

🔵 **Thiếu:** `_thuat_ngu.md` không có mục cho các từ viết tắt xuất hiện trong phần IV+V: **QA** (có, ✅), **CTO/CFO** (có ✅), nhưng **1on1** (rule 39, dùng dày đặc) và **F-I-A-O** (rule 37) chưa có mục. Không nghiêm trọng vì cả hai đều được giải thích tại chỗ.

### 6.5 🔵 `meta/STATUS.md` LỖI THỜI (đừng tin — rule mục 5)

- L78: *"Sách 03 v0.1 — Pilot ready, sẵn sàng batch viết 49 rules còn lại"* — trong khi L38 cùng file khai **50/50 rules (100%)**. Tự mâu thuẫn trong 1 file.
- `README.md` L98-101 Roadmap: *"✅ v0.1 — Pilot rule_01. 🔜 v0.5 — Viết content 49 rules còn lại. 🔜 v1.0 — 5 review pass"* — nhưng STATUS L11 khai đã là **v1.1 final sau 3 review pass**.
- STATUS L56: *"Auto-review: 0 issues"* — báo cáo này tìm ra 21 lỗi. Script auto-review không bắt được lớp lỗi ngữ nghĩa.

→ **Đề xuất:** cập nhật STATUS + README roadmap sau đợt sửa này. **Không dùng "Auto-review: 0 issues" làm căn cứ đánh giá chất lượng.**

### 6.6 🔵 `_pipeline/english_audit.md` ĐÃ LỖI THỜI — CẢNH BÁO CHỐNG SỬA LẠI

File này liệt kê 62 điểm tiếng Anh cần sửa. Tôi kiểm ngẫu nhiên 6 mục:

| Mục audit khai còn lỗi | Thực tế trong file hiện tại |
|---|---|
| `rule_03` L1 "**Setup** hậu cần" | **ĐÃ SỬA** (nay: "Đặt phòng + Chuẩn bị hậu cần") |
| `rule_05` L1 "**Distribute** tài liệu trước 24h" | **ĐÃ SỬA** (nay: "Gửi tài liệu trước 24h") |
| `rule_01` L3 "**overrun**" | **ĐÃ SỬA** |
| `rule_01` L29 "**prepare**" | **ĐÃ SỬA** |
| `rule_03` L13 "**onboard**" | **ĐÃ SỬA** |
| `mục_lục` L46 "**counter-arguments**" | **ĐÃ SỬA** |

→ **6/6 mục kiểm đều đã được sửa rồi.** File audit phản ánh trạng thái sách **trước** một đợt fix nào đó và chưa được cập nhật. **Main Claude ĐỪNG dùng file này làm danh sách việc** — sẽ đi sửa những chỗ đã sạch, hoặc tệ hơn là "sửa lại" thành bản cũ. Danh sách tiếng Anh còn thật nằm ở mục 7 dưới đây (tôi quét trực tiếp trên file hiện tại).

---

## 7. Tiếng Anh thừa (cả 2 phía)

Quét **cả văn tiếng Việt lẫn ô tiếng Nhật** (rule mục 4E cảnh báo audit cũ hay bỏ sót phía Nhật).

### 7.1 Phía tiếng Nhật (ô `「...」`) — ✅ SẠCH VỀ MẶT THIẾT KẾ

Các từ Latin trong ô JA đều là **thuật ngữ nghiệp vụ mà người Nhật thật sự dùng trong họp IT**, không phải tiếng Anh thừa:
- `Phase 2`, `KPI`, `QA`, `DB`, `CTO`, `CFO`, `Zoom`, `A案` — chuẩn công sở Nhật.
- `Fact / Impact / Action / Owner` (rule_37) — chủ ý dạy khung tiếng Anh.
- `Goal / Reality / Options / Will` (rule_41) — tên mô hình GROW, giữ nguyên là đúng.
- `catch-up` (rule_48 L39): 「15分ほどお時間頂戴し、**catch-up** させていただけませんでしょうか」 — 🔵 chỗ này **hơi gượng**; tiếng Nhật thường nói 「**キャッチアップ**」 (katakana) hoặc 「補足のご説明」. Đề xuất: 「キャッチアップ」.
- `priority 投票` (rule_40 L44), `senior レビュー` (rule_41 L37), `deadline の見積もり` (rule_41 L36) — 🔵 trộn Latin giữa câu Nhật; người Nhật viết 「**プライオリティ**投票」/「**シニア**レビュー」/「**デッドライン**の見積もり」 (katakana). Không sai nghĩa nhưng lệch quy ước chính tả.

### 7.2 Phía tiếng Việt — 🔵 còn ~20 chỗ trong phạm vi tôi

| File | Dòng | Từ Anh | Trích | Đề xuất |
|---|---|---|---|---|
| `rule_36` | 13 | slide | "cần chia sẻ **slide** báo cáo" | trang trình chiếu |
| `rule_36` | 19 | share, loading slow | "**share** luôn · thực ra đang **loading slow**" | chia sẻ luôn · đang tải chậm |
| `rule_36` | 38, 43 | share | "Em xin được **share** màn hình" | chia sẻ |
| `rule_44` | 13 | scope | "đã quyết xong phạm vi (**scope**)" | bỏ ngoặc, đã có "phạm vi" |
| `rule_44` | 17 | confirm | "## Hội thoại XẤU — bỏ qua **confirm**" | bỏ qua xác nhận |
| `rule_45` | 19 | chat | "3 ngày sau · **chat** Dũng" | nhắn Dũng |
| `rule_49` | 51, 53 | link | "1 **link** Notion", "**link** các quyết định" | đường dẫn / nối |
| `rule_41` | 42 | launch | "(Phase 1 **launch**)" | ra mắt |
| `rule_39` | 44 | re-estimate man-hour | "làm **re-estimate man-hour** với QA leader" | ước lượng lại số công |
| `rule_43` | 35 | scope, dev | "chốt **scope** phase 2… kế hoạch **dev** tháng 5" | phạm vi… phát triển |
| `rule_33` | 3, 29, 35, 47, 55, 62 | camera | "bật **camera** khi phát biểu" | 🔵 giữ được — "camera" đã là từ mượn phổ thông |
| `phụ_lục_C` | 268 | share, topic | "Truyền giấy = không **share**. Hỏi sau họp = lỡ **topic**" | chia sẻ / lỡ chủ đề |
| `phụ_lục_C` | 404 | mute, camera on, raise-hand | (nằm trong ca lỗi J3.22) | sửa cùng lúc |
| `phụ_lục_C` | 679 | full commit, level | (nằm trong ca lỗi J2.6) | sửa cùng lúc |
| `phụ_lục_C` | 517, 531, 539 | formal record, ack, catch-up, time-boxed | "議事録（**formal record**）", "**ack** +…" | bản ghi chính thức / ghi nhận |
| `phụ_lục_D` | 236 | scope | "[Biên bản] Họp đàm phán **scope** Phase 2" | phạm vi |
| `phụ_lục_D` | 477, 488 | Confirm, Check | "1. **Confirm** đặt phòng", "[**Check** lại 10 phút trước]" | Xác nhận / Kiểm tra |
| `phụ_lục_D` | 533 | chat ID | "số đt / **chat ID**" | ID trò chuyện |

🔵 **Đánh giá mức độ:** không phải lỗi nặng. Sách hướng tới BD/PM/Dev — nhóm này dùng `scope`/`slide`/`link` hàng ngày. **Đề xuất: chốt một quy ước rồi làm nhất quán**, thay vì sửa sạch. Hiện đang lẫn lộn (chỗ "chia sẻ màn hình" chỗ "share màn hình" trong cùng rule_36).

---

## 8. Lỗi cần sửa gấp nhất

Xếp theo mức thiệt hại nếu để nguyên khi phát hành:

| Hạng | Lỗi | Vì sao gấp |
|---|---|---|
| **1** | **Phụ lục C J2.6 + J3.22 — giải thích chấm ngược đáp án** | Học viên ôn BJT đọc giải thích rồi **học ngược**: J3.22 dạy "C (nói chen khi tắt mic) tuân thủ 4 quy tắc". Phá đúng chức năng cốt lõi của phụ lục luyện thi. Sửa nhanh (2 khối text), rủi ro ~0. |
| **2** | **10 tiêu đề Phần trong phụ lục A + B là của sách 02** | Mở phụ lục sách Họp thấy "Nền tảng trước nhấc máy". Lộ ngay là sách sao chép, mất lòng tin tức thì. Sửa máy móc, rủi ro 0. |
| **3** | **rule_48 「お出まし」** | Trục A — học viên gửi email thật cho sếp bằng kính ngữ hoàng gia. Bản đúng đã có sẵn trong phụ lục A, chỉ cần đồng bộ ngược. |
| **4** | **rule_39 「5月末」 vs 7月末** | Trục B — sách tự mâu thuẫn về mốc dự án xuyên suốt. Người đọc kỹ sẽ bắt được. |
| **5** | **rule_37 "4F"** | Trục A+B — dạy sai tên khung, tự mâu thuẫn với 6 chỗ khác trong cùng sách. |
| **6** | **Mục lục 24 ca + phụ lục A 25 ca + phụ lục C 19 ca lệch tên** | Phải sửa **cùng một lượt** cho 3 file, nếu không sách có 3 tên cho 1 rule. Cần sửa **bug script cắt ở `)`** trước khi sinh lại phụ lục. |
| **7** | rule_50 bảng vỡ cột · rule_37 目処 · rule_39 số mục · rule_40 「かも」 · rule_33 御座います | Lỗi lẻ, rủi ro thấp, gộp vào vòng 1 (máy móc). |
| **8** | raw-kanji toàn sách | **KHÔNG gấp, nhưng cần CHỦ NHÀ CHỐT QUY ƯỚC trước.** Đừng vá lẻ. |

---

## 9. CẤM SỬA

Những chỗ **ĐÚNG** nhưng rất dễ bị sửa nhầm trong đợt sau:

| # | Chỗ | Vì sao ĐỪNG đụng |
|---|---|---|
| 1 | **Số rule trong nhãn 4 phụ lục** (`### Rule 33`, `(từ rule_45 —`) | Đã kiểm map ngược **50/50 đúng**. Sách 03 **KHÔNG** có bug 159 nhãn kiểu sách 08. Chỉ sửa phần TÊN sau dấu `—`, **giữ nguyên con số**. |
| 2 | **`rule_46` khối `## Format XẤU` / `## Format TỐT`** | Rule dạy định dạng biên bản, không có hội thoại. Đừng đổi thành `## Hội thoại XẤU/TỐT`. Tương tự `rule_50` (`Pattern XẤU/TỐT`), `rule_45`/`rule_49` (`Quy trình TỐT`), `rule_48` (`Cách TỐT`). Grep chuỗi cứng sẽ báo "thiếu khối" — **báo nhầm**. |
| 3 | **`rule_38` L37 「弊社CTO」** | 弊社 là khiêm nhường ngữ đúng khi nói với khách. **Không** đổi thành 当社 (trung tính) hay 我が社. |
| 4 | **`rule_41` các nhãn 【Goal】【Reality】【Options】【Will】** | Tên mô hình GROW, giữ tiếng Anh là ĐÚNG. Đừng Việt hoá thành 【Mục tiêu】【Thực tế】... sẽ mất liên kết với `_thuat_ngu.md` mục GROW. |
| 5 | **`rule_37` chuỗi `Fact → Impact → Action → Owner`** ở L3, L5, L32, L54 | 4 chỗ này ĐÚNG. Chỉ L56 ("4F") sai. Đừng sửa ngược 4 chỗ đúng cho khớp chỗ sai. |
| 6 | **`rule_33` L41, L44 · `rule_36` L39 · `rule_45` L37 · `rule_48` L23 — ô thoại RỖNG** | Đây là **chủ ý**: biểu diễn hành động không lời (Linh giơ tay im lặng, chờ 2-3 giây, Dũng ngồi viết mail). Có nhãn 【2】【3】 trỏ tới ghi chú giải thích. Đừng "điền cho đủ" hay xoá dòng. |
| 7 | **Mọi khối `## Hội thoại XẤU` phần IV+V** | Chứa lỗi CỐ Ý để dạy: `rule_41` L23 「君は時々楽観的すぎる」 (phê bình cá nhân), `rule_38` L23 「急用があって」 (lý do mơ hồ), `rule_42` L23 「もう少し続けましょうか？」, `rule_44` L23 「皆さんよろしく」, `rule_37` L23 (mở đầu lan man). **Tất cả đều SAI CÓ CHỦ ĐÍCH.** |
| 8 | **`phụ_lục_C` các câu đặt đáp án ở vị trí A** (J3.30, J3.31, J2.1, J2.5, J2.6, J2.11, J2.16, J3.23, J3.32...) | Rải đáp án đều các vị trí là thiết kế đề thi TỐT. Đừng "chuẩn hoá" về C/D. |
| 9 | **`nội_dung/_front_matter.md`** | Kiểm từng con số: 97 mẫu câu ✅, 50 câu BJT ✅, 50 rule ✅, 9 nhân vật ✅. **Sạch, không hứa quá.** Đừng sửa. |
| 10 | **26 ca mục lục "chỉ thiếu vế JA"** | Mục lục có **cột `Tên JP` riêng** — vế Nhật không thiếu, nằm ở cột bên cạnh. Điểm mù rule mục 6. Chỉ cần sửa **24 ca tên Việt**. |
| 11 | **`rule_12` 4 ca `様` sau chức danh** (main Claude đã chốt) | Nằm trong Hội thoại XẤU cố ý, có Matsumoto sửa lưng ngay dưới. |
| 12 | **`_pipeline/english_audit.md`** | ĐÃ LỖI THỜI (6/6 mục kiểm đã sửa). Đừng dùng làm danh sách việc, đừng "khôi phục" các từ mà nó liệt kê. |

---

## 10. Ghi chú cho giai đoạn SỬA

### 10.1 Thứ tự đề xuất (theo rule mục 8)

**Vòng 1 — máy móc, rủi ro ~0** (làm được ngay, không cần đọc ngữ cảnh)
1. `phụ_lục_C` L403-404 → đổi `C` thành `D` (2 dòng).
2. `phụ_lục_C` L678-679 → viết lại khối giải thích J2.6 (đã soạn sẵn ở mục 2).
3. `phụ_lục_A` L8/163/356/625/810 + `phụ_lục_B` L10/76/149/236/291 → thay 10 tiêu đề Phần.
4. `phụ_lục_B` L3 + `phụ_lục_C` L3 → "60 rules" → "50 rule".
5. `rule_50` L23 → thêm ô còn thiếu.
6. `rule_37` L77 → 目処 = "Mốc dự kiến / triển vọng".
7. `rule_33` L43 → 「御座います」 → 「ございます」.

**Vòng 2 — sự thật + tự mâu thuẫn** (cần đọc ngữ cảnh)
8. `rule_48` L37 + L44 + bảng từ vựng L70 + `phụ_lục_B` → 「お出まし」 → 「ご出席」. **Sửa ĐỒNG BỘ 4 chỗ** (rule mục 5.3).
9. `rule_39` L41 → 5月末 → 7月末 (+ cân nhắc L42 6月→7月, hỏi chủ nhà).
10. `rule_37` L56 → bỏ "4F", dùng "F-I-A-O".
11. `rule_39` L3 + L39 → 4点 → 3点 (hoặc thêm mục ④).
12. `rule_40` L43 → bản Việt thêm "có khi / biết đâu".

**Vòng 3 — meta, phải làm 1 lượt cho 3 file**
13. **Sửa script sinh phụ lục TRƯỚC** (regex cắt tên ở ký tự `)` → mất ngoặc đóng ở 5 nhãn phụ lục C).
14. Đồng bộ tên rule: `meta/mục_lục.md` (24) + `phụ_lục_A` (25) + `phụ_lục_C` (19) — **lấy H1 `rule.md` làm nguồn sự thật**.
15. Cập nhật `meta/STATUS.md` + `README.md` roadmap.

**Vòng 4 — cần chủ nhà duyệt hướng**
16. **raw-kanji**: chốt quy ước ruby cho cả sách, rồi chạy script 1 lượt cho 50 rule. **Đừng vá 51 chỗ lẻ của phần IV+V.**
17. **Tiếng Anh trong văn Việt**: chốt danh sách từ được giữ (`scope`, `slide`, `link`, `camera`...) rồi làm nhất quán.

### 10.2 Ba cái bẫy cụ thể của sách này

**Bẫy 1 — Đừng đi tìm bug nhãn kiểu sách 08.** Tôi đã map ngược 50/50 câu phụ lục C về `conversation.json` và 108 nhãn rule ở 4 phụ lục: **số rule đúng hết**. Chỉ có TÊN lỗi thời. Nếu agent/đợt sau báo "sách 03 có N nhãn rule sai" thì cần kiểm chứng lại — nhiều khả năng họ đang đếm lệch TÊN chứ không phải lệch SỐ.

**Bẫy 2 — `## Hội thoại XẤU` grep ra 48/50, `## Hội thoại TỐT` ra 45/50.** Không phải thiếu khối. 5 rule dùng tiêu đề biến thể hợp lý (xem mục 6.1 và CẤM SỬA #2). Đây đúng dạng bẫy rule mục 3 (agent phóng đại phạm vi).

**Bẫy 3 — `english_audit.md` và `STATUS.md` đều LỖI THỜI.** STATUS khai "Auto-review: 0 issues" và "v1.1 final" trong khi cùng file lại ghi "v0.1 Pilot ready". english_audit liệt kê 62 lỗi mà 6/6 mục tôi kiểm đã sửa xong. **Đúng như rule mục 5: đừng tin STATUS.md.**

### 10.3 Sau khi sửa

Theo rule mục 8: build lại → grep nội dung mới trong `release/` (**nhớ strip ruby** — rule mục 1.1) → xác nhận:
- `release/` **không còn** chuỗi `Nền tảng trước nhấc máy`, `Nhận điện thoại`, `Gọi điện thoại đi`
- `release/` **không còn** `お出まし`, `4F:`, `選択肢はC`, `Bが「概ね同意」`
- `release/` **không còn** `5月末リリース`
- `release/` **không còn** `60 rules` trong phụ lục B/C

---

*Báo cáo D3 — 2026-08-15. Đã đọc `.claude/rules/book-review.md` (toàn bộ) và `_review/00_TIEN_DO.md` trước khi rà. Chỉ báo cáo, không sửa file nội dung.*
