# [08-A3] Rà soát 51 conversation.json
> Agent: A3 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: 51 file `nội_dung/phần_I..V/rule_*/conversation.json` — đọc HẾT, 1.322 lượt thoại, 153 khối hội thoại.

---

## Tóm tắt số lỗi

| Mức | Số lượng |
|---|---|
| 🔴 Nghiêm trọng (xưng hô sót / nhân vật sai / sự thật sai / tiếng Nhật sai) | 52 |
| 🟡 Trung bình (schema lệch, nhất quán kỹ thuật, dịch lệch nhẹ) | 21 |
| 🔵 Nhẹ (chất lượng hội thoại, nhịp điệu, polish) | 12 |
| **TỔNG** | **85** |

Phân bố 🔴 theo nhóm:
- A. Xưng hô tiếng Việt còn sót: **36 dòng** (23 trong phần II)
- B. Tiếng Nhật trong hội thoại: **5**
- C. Dịch Việt lệch nghĩa: **4**
- D. Sai sự thật trong lời thoại: **7**

---

## Kiểm chứng fix v1.1 về xưng hô

**Kết luận: fix v1.1 CHỈ ĂN MỘT NỬA SÁCH. Nguyên nhân là lỗi kỹ thuật của script, không phải lỗi heuristic.**

### Bằng chứng
`scripts/apply_review_fixes.py` duyệt dữ liệu bằng:
```python
for conv in data.get("conversations", []):
    for line in conv.get("lines", []):     # ← chỉ đọc key "lines"
        vi = line.get("vi", "")            # ← chỉ đọc key "vi"
```
Nhưng sách có **HAI schema song song**:

| Nhóm | Số file | Key mảng lượt thoại | Key bản dịch | Script v1.1 có chạm? |
|---|---|---|---|---|
| Phần I, III, IV, V | 38 file (rule 01–08, 21–50) | `lines` | `vi` | ✅ CÓ |
| **Phần II (rule 09–20)** | **12 file** | **`conversation_lines`** | **`sentence_translation`** | ❌ **KHÔNG** |
| rule_51 | 1 file | không có lượt thoại nào | — | — |

→ 12 file phần II **chưa từng được script chạm tới**. Đây là lý do 23/36 lỗi xưng hô còn sót nằm gọn trong phần II.

### Đếm lỗi còn sót theo phần (khách Nhật tự xưng "anh"/"chị")

| Phần | Schema | Số dòng còn sai |
|---|---|---|
| phần_I | `lines` | 2 |
| **phần_II** | **`conversation_lines`** | **23** |
| phần_III | `lines` | 3 |
| phần_IV | `lines` | 2 |
| phần_V | `lines` | 6 |
| **TỔNG** | | **36** |

### Có bị sửa quá tay không?
**Không.** Tôi rà 110 vị trí ứng viên "anh/em/chị" trong lời khách Nhật; các chỗ đã bị script đổi thành "tôi" đều đúng ngữ cảnh tự xưng (rule_01 L02/L04, rule_05 L01, rule_34 L07...). Không phát hiện ca nào "đáng là ngôi 2 mà bị ép thành tôi". Heuristic `ADDRESS_DUNG_JP_MARKERS` hoạt động chính xác trên phạm vi nó chạm được.

### Lỗi phái sinh của fix v1.1 (🟡)
Việc chỉ đổi "anh → tôi" mà không đổi cách gọi Dũng tạo ra **hội thoại lệch cặp xưng hô**: khách Nhật tự xưng "tôi" nhưng vẫn gọi Dũng là "em" (quan hệ trên–dưới), trong khi Dũng gọi họ là "anh". Cặp "tôi ↔ em" ở đây chấp nhận được (kiểu người trên nói với người dưới nhưng giữ khoảng cách lịch sự), nhưng phải thống nhất TOÀN SÁCH — hiện chỗ dùng "tôi ↔ em", chỗ dùng "anh ↔ em" trong cùng một nhân vật (xem mục Lỗi hệ thống #1).

---

## Danh sách lỗi theo file

### phần_I/rule_03_親密度レベル/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 02` (matsumoto)
  - JA: `ああ、深川ね。今でも親父が住んでてさ、深川めしって知ってる?あさりとご飯の。`
  - VN: "À, Fukagawa. Giờ **bố anh** vẫn ở đó. Em biết món Fukagawa-meshi chưa?"
  - Vấn đề: `親父` là bố CỦA NGƯỜI NÓI (Matsumoto). "bố anh" trong tiếng Việt = bố của người nghe (Dũng) → đảo ngược hoàn toàn nghĩa.
  - Đề xuất: "Giờ **bố tôi** vẫn ở đó."

### phần_I/rule_05_聞き上手/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 05` (nakamura_cfo)
  - JA: `もちろん、5種類飲み比べてね…` / VN: "Tất nhiên, **anh thử** 5 loại so sánh..."
  - Vấn đề: khách Nhật tự xưng "anh". Đề xuất: "**tôi thử** 5 loại so sánh".
  - Ghi chú: chính file này CONV#3 lượt 05 đã sửa đúng ("**tôi** đau lòng vì đã ép team") → không nhất quán nội bộ 1 file.

### phần_II/rule_09_天気/conversation.json
- [🔴 XƯNG HÔ] `CONV#3 lượt 06` (sato_kyushu)
  - JA: `うん、傘持って来んしゃい。案内するけん。` / VN: "Ừ, mang ô đến nhé. **Anh dẫn** đi cho."
  - Đề xuất: "**Tôi dẫn** em đi cho."

### phần_II/rule_10_出身地/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 06` (hiroshi_chugoku) — JA `…案内するよ。` → VN "Quán okonomiyaki Mitchan Sōhonten **anh dẫn** đi." → "**tôi dẫn** em đi".
- [🔴 XƯNG HÔ] `CONV#3 lượt 06` (kobayashi_okinawa) — JA `…国際通りと首里城、案内するよ。` → VN "đường Kokusai với đền Shuri **anh dẫn** đi." → "**tôi dẫn** em đi".
  - Ghi chú: cùng nhân vật Kobayashi ở rule_32 CONV#4 lượt 09 đã dịch đúng là "**tôi** muốn em xem" → mâu thuẫn nội bộ.

### phần_II/rule_12_酒/conversation.json
- [🔴 XƯNG HÔ] `CONV#4 lượt 07` (kobayashi_okinawa)
  - JA: `南風って銘柄もうち地元で愛されてる。` / VN: "Còn Hae cũng được yêu ở **quê anh**."
  - Vấn đề: `うち地元` = quê CỦA NGƯỜI NÓI. "quê anh" = quê Dũng → sai. Đề xuất: "ở **quê tôi**".

### phần_II/rule_13_家族/conversation.json
- [🔴 XƯNG HÔ] `CONV#4 lượt 02` (tanaka_pmo)
  - JA: `あ、まあ…年下なんで…` / VN: "À, à... **vợ anh** trẻ hơn..."
  - Đề xuất: "À, à... **vợ tôi** trẻ hơn..."
- [🟡 DỊCH] `CONV#4 lượt 04` (tanaka_pmo) — JA `あ、ちょっと電話、すみません。` → VN "À, **em xin lỗi**, có điện thoại." Tanaka là khách Nhật cấp PMO, không thể tự xưng "em" với Dũng. Đề xuất: "À, **xin lỗi**, tôi có điện thoại."

### phần_II/rule_14_趣味/conversation.json
- [🔴 XƯNG HÔ] `CONV#1 lượt 01` (hiroshi_chugoku)
  - JA: `今度の土曜、コンペに出るんだけど一緒にどう?` / VN: "Thứ 7 này **anh có** giải, đi cùng không?"
  - Đề xuất: "Thứ 7 này **tôi có** giải".
- [🔵 CHẤT LƯỢNG] `CONV#1 lượt 07` (hiroshi_chugoku) — JA `十分だよ!ベトナム人で220飛べば。` → VN "Đủ rồi! **Người Việt mà 220 yard.**" Câu JA hàm ý "người Việt mà đánh được 220 là giỏi" — dịch trần trụi sang tiếng Việt nghe như quy chụp sắc tộc. Trái với luật dự án "KHÔNG nói 'người Việt' kiểu quy chụp trong UI/nội dung". Đề xuất bỏ hẳn vế đó: "Đủ rồi! Mới chơi 1 năm mà 220 yard là số đẹp."

### phần_II/rule_15_旅行温泉/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 01` (nakamura_cfo)
  - JA: `先週末、登別行ってきたよ。` / VN: "Cuối tuần trước **anh đi** Noboribetsu."
  - Đề xuất: "Cuối tuần trước **tôi đi** Noboribetsu."

### phần_II/rule_16_季節行事/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 01` (nakamura_cfo)
  - JA: `今年は隅田川花火大会に家族で行く予定。` / VN: "Năm nay **nhà anh** đi pháo hoa Sumida."
  - Đề xuất: "Năm nay **nhà tôi** đi pháo hoa Sumida."
- [🔴 XƯNG HÔ] `CONV#2 lượt 03` (nakamura_cfo) — JA `今年は浴衣着て両国橋で観る予定。` → VN "Năm nay **anh mặc** yukata xem từ cầu Ryōgoku." → "**tôi mặc** yukata".

### phần_II/rule_17_健康/conversation.json — ổ lỗi đậm nhất
- [🔴 XƯNG HÔ] `CONV#1 lượt 02` (sato_kyushu) — JA `実は先週から喉の調子が悪くて` → VN "tuần trước **cổ họng anh** không ổn" → "**cổ họng tôi** không ổn".
- [🔴 XƯNG HÔ] `CONV#1 lượt 06` (sato_kyushu) — JA `うちのかみさんもよく作ってくれる。蜂蜜大根は知らんかった、調べてみる。` → VN "**Vợ anh** cũng hay nấu. Củ cải mật ong **anh chưa** biết, để **anh tìm** hiểu." → 3 lỗi trong 1 dòng: "**vợ tôi**... **tôi chưa** biết, để **tôi tìm** hiểu".
- [🔴 XƯNG HÔ] `CONV#2 lượt 01` (nakamura_cfo) — JA `実は先週人間ドック受けてきてね。` → VN "tuần trước **anh đi** khám sức khỏe full" → "**tôi đi** khám".
- [🔴 XƯNG HÔ] `CONV#2 lượt 05` (nakamura_cfo) — JA `1万歩目標でApple Watch買ったよ。` → VN "**Anh mua** Apple Watch" → "**Tôi mua** Apple Watch".
- [🔴 XƯNG HÔ] `CONV#3 lượt 01` (yamamoto_kansai) — JA `最近パーソナルトレーニング始めてん。` → VN "Dạo này **em** bắt đầu PT." Yamamoto là **quản lý BD Osaka của khách hàng**, 38-40t, cấp trên Dũng — tự xưng "em" là sai nặng nhất trong sách. Đề xuất: "Dạo này **tôi** bắt đầu PT."
  - Cùng lỗi này còn ở rule_13 CONV#2 lượt 01 ("con mèo nhà **em**") và lượt 05 ("**em** nhận từ đó") — xem mục Lỗi hệ thống #2.

### phần_II/rule_18_世代/conversation.json
- [🔴 XƯNG HÔ] `CONV#1 lượt 03` (sato_kyushu) — JA `俺らの世代の女神よ。夜のヒットスタジオ、毎週見てたわ。` → VN "nữ thần **thế hệ anh**. 'Yoru no Hit Studio' **anh xem** mỗi tuần." → "**thế hệ tôi**... **tôi xem** mỗi tuần".
- [🔴 XƯNG HÔ] `CONV#1 lượt 07` (sato_kyushu) — JA `次回、昭和歌謡カラオケ店、博多で行こう。` → VN "Lần sau **anh dẫn** đi quán karaoke" → "**tôi dẫn** em đi".
- [🔴 XƯNG HÔ] `CONV#2 lượt 03` (hiroshi_chugoku) — JA `当時俺、新入社員で` → VN "Hồi đó **anh mới** vào công ty" → "**tôi mới** vào công ty".
- [🔴 XƯNG HÔ] `CONV#3 lượt 03` (tanaka_pmo) — JA `俺、初代から(笑)。` → VN "**Anh từ** thế hệ đầu" → "**Tôi từ** thế hệ đầu".

### phần_II/rule_19_アニメ/conversation.json
- [🔴 XƯNG HÔ] `CONV#1 lượt 03` (tanaka_pmo) — JA `俺は冨岡義勇がクール過ぎて好き。` → VN "**Anh thích** Tomioka Giyū" → "**Tôi thích**".
- [🔴 XƯNG HÔ] `CONV#2 lượt 02` (sato_kyushu) — JA `孫がとなりのトトロ大好きで、何回も見せられた(笑)。` → VN "**anh phải** xem đi xem lại" → "**tôi phải** xem đi xem lại".
- [🔴 XƯNG HÔ] `CONV#2 lượt 06` (sato_kyushu) — JA `君たちはどう生きるか、最近見て泣いた。` → VN "**anh xem** gần đây khóc" → "**tôi xem** gần đây khóc".
- [🔴 XƯNG HÔ] `CONV#2 lượt 08` (sato_kyushu) — JA `俺ら世代の人生振り返るような…ジブリ美術館の話もしたいね。` → VN "**thế hệ anh**... **anh cũng** muốn nói chuyện" → "**thế hệ tôi**... **tôi cũng** muốn".
- [🔴 XƯNG HÔ] `CONV#4 lượt 04` (sato_kyushu) — JA `リンさん、最近のアニメ、私あんまり詳しくなくてね…` → VN "Linh à, **anh không** rành anime". JA có `私` rõ ràng → "**tôi không** rành".
- [🔴 XƯNG HÔ] `CONV#4 lượt 06` (sato_kyushu) — JA `もののけ姫は俺も好きだよ。` → VN "Mononoke **anh cũng** thích" → "**tôi cũng** thích".

### phần_II/rule_20_ニュース/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 06` (sato_kyushu) — JA `プロジェクト納期は影響しないように頑張る。` → VN "**Anh sẽ** cố không ảnh hưởng deadline" → "**Tôi sẽ** cố".
- [🔴 XƯNG HÔ] `CONV#3 lượt 07` (tanaka_pmo) — JA `家でオリンピック観戦パーティーしようよ。` → VN "mở tiệc xem Olympics **nhà anh**" → "**nhà tôi**".
- [🔴 SỰ THẬT] `CONV#3 lượt 05` (tanaka_pmo)
  - JA: `スノーボードハーフパイプの平野歩夢、3連覇狙いだよね。`
  - Vấn đề: Hirano Ayumu mới vô địch Olympic **1 lần** (Bắc Kinh 2022; Sochi 2014 và Pyeongchang 2018 đều là HCB). Milano-Cortina 2026 là cơ hội "2 liên tiếp" (連覇), không phải "3連覇". Chính lượt 06 ngay sau đó Dũng chỉ nhắc "vàng Bắc Kinh" → mâu thuẫn nội bộ.
  - Đề xuất JA: `平野歩夢、連覇狙いだよね` / VN: "săn cú đúp liên tiếp".

### phần_III/rule_22_東北/conversation.json — 🔴 SAI NHÂN VẬT (nặng)
- [🔴 NHÂN VẬT] Toàn bộ file.
  - `rule_context.boi_canh_vi` ghi: *"Anh **Yoshida** (Sendai) + anh **Endō** (Yamagata) sang giao lưu"*, và lượt thoại mở đầu Dũng gọi: `吉田さん、ご出身は仙台でしたよね。` / `遠藤さんは山形のご出身ですよね。`
  - Nhưng **speaker key thực tế lại là `matsumoto` và `tanaka_pmo`** — hai nhân vật đã được định danh chắc ở nơi khác là dân **Asakusa Tokyo** (rule_03, rule_23) và **PMO Yokohama** (rule_23).
  - Hệ quả: Matsumoto (dân Asakusa) trả lời `私は喜助。` (tôi phe Kisuke — tự nhận là dân Sendai); Tanaka (Yokohama) nói `山形は東北一の酒どころですよ` với giọng người Yamagata.
  - Đề xuất: hoặc thêm speaker key `yoshida_sendai` / `endo_yamagata` vào cast, hoặc đổi lời thoại/bối cảnh cho khớp Matsumoto–Tanaka (bỏ giọng "người bản địa").
- [🔴 SỰ THẬT] `CONV#4 lượt 06` (matsumoto)
  - JA: `福島の桃は天下一品。あかつき、ゆうぞらが品種。`
  - Vấn đề: Yamanashi mới là số 1 sản lượng đào Nhật; Fukushima số 2. Đây là **P1 của REVIEW_FINDINGS_JP đã được ghi vào STATUS.md v1.1 là "đã fix"** — nhưng chỉ fix trong `rule.md`, **conversation.json vẫn nguyên câu sai**.
  - Đề xuất: `福島の桃は全国2位の生産量で、あかつき・ゆうぞら・川中島白桃が品種。`
- [🟡 SỰ THẬT] `CONV#2 lượt 02` (tanaka_pmo) — `山形は東北一の酒どころですよ` — cùng tình trạng: STATUS.md ghi đã đổi thành `東北屈指`, nhưng đó là bản `rule.md`; conversation.json vẫn "東北一".

### phần_III/rule_25_岐阜/conversation.json
- [🔴 SỰ THẬT] `CONV#2 lượt 05` (kato_gifu)
  - JA: `飛騨高山には7つの蔵元があるんですよ。老田酒造『鬼ころし』、舩坂酒造、川尻酒造…`
  - Vấn đề: nhà nấu rượu đang hoạt động ở Hida-Takayama là **6** (平瀬・二木・平田・原田・舩坂・老田). "川尻酒造" là ở **飛騨古川**, không thuộc Takayama. JP review đã cảnh báo (P1), STATUS.md không liệt kê là đã fix — và quả thật chưa fix.
  - Đề xuất: `飛騨高山には6つの蔵元` + thay 川尻 bằng 平瀬酒造 hoặc 二木酒造.
- [🟡 DỊCH THIẾU] cùng lượt 05: VN dịch "Đỏ=tránh tai, hồng=tình yêu, xanh=học, **vàng=tiền**" nhưng JA gốc `赤=厄除け、ピンク=恋愛、青=学業…` KHÔNG có vế vàng (vế vàng nằm ở lượt 05 sau). Bản VN thêm nội dung không có trong JA → lượt 04–05 sau đó bị lặp ý "vàng là tiền".

### phần_III/rule_29_四国/conversation.json — 🔴 SAI NHÂN VẬT
- [🔴 NHÂN VẬT] Toàn bộ file. `rule_context` ghi khách là **"Kondo (từng làm ở Kōchi + Matsuyama)"**, nhưng speaker thực tế là `matsumoto` (PM, dân Asakusa Tokyo), và lời thoại dùng **giọng Shikoku/Chūgoku**: `こんぴら参り、知っとる!`, `必見じゃ`, `運行しとる`. Matsumoto ở các rule khác nói giọng Tokyo chuẩn (`〜だよ`, `〜でね`) → nhân vật vỡ vụn.
  - Đề xuất: thêm speaker `kondo_shikoku` hoặc đổi toàn bộ về giọng Tokyo + bỏ vai "người bản địa".

### phần_III/rule_31_熊本鹿児島/conversation.json — 🔴 SAI NHÂN VẬT (nặng nhất)
- [🔴 NHÂN VẬT] Toàn bộ file. `matsumoto` nói `『清正公』まで…**熊本県民として嬉しい!**` (tôi là dân tỉnh Kumamoto nên vui) và `鹿児島県人の魂たい` với giọng Kyushu (`〜たい`, `〜ばい`, `〜じゃった`). Matsumoto là **PM người Asakusa Tokyo** (đã định danh ở rule_03, rule_23, rule_33). Một nhân vật không thể vừa là "dân Asakusa 3 đời" vừa là "dân tỉnh Kumamoto".
  - Đề xuất: tạo speaker mới (vd `kuma_kagoshima`) hoặc đổi thành nhân vật đã có gốc Kyushu (`sato_kyushu`) — nhưng lưu ý Sato là dân **Fukuoka/Hakata**, không phải Kumamoto, nên vẫn cần một khách mới.

### phần_III/rule_28_広島/conversation.json
- [🔴 DỊCH LỆCH] `CONV#1 lượt 02` (zun)
  - JA: `『じゃけぇ』、広島弁ですね。**25店舗**もあるんですか…`
  - VN: "'Jakē', Hiroshima-ben nhỉ. **25 quán** cơ."
  - Vấn đề: lượt 01 ngay trước đó (đã fix v1.1) nói `3階建て約20店舗` (khoảng 20 quán), nhưng lượt 02 Dũng nhắc lại "25 quán" — **con số cũ chưa fix** → hội thoại tự mâu thuẫn ngay 2 dòng liền nhau. Đây là hệ quả fix nửa vời của v1.1.
  - Đề xuất: `20店舗もあるんですか` / "20 quán cơ".
- [🟡 DỊCH] `CONV#2 lượt 07` (hiroshi_chugoku) — JA `あれは黒田さんの最後のシーズンじゃった。` → VN "là mùa cuối **của anh Kuroda**". "anh" ở đây là ngôi 3 chỉ Kuroda nên không sai ngữ pháp, nhưng trong sách khách Nhật đang bị chuẩn hoá "tôi", để "anh Kuroda" dễ gây rối. Đề xuất: "là mùa cuối **của ông Kuroda**".
- [🔵 NHỊP ĐIỆU] File 36 lượt — dài nhất sách, và cả 4 kịch bản đều theo đúng một khuôn: Dũng đọc thuộc dữ kiện → Hiroshi kinh ngạc (`知っとるかい`, `ガイドブック1冊全部覚えたんか`, `うわ、…名店まで`). Đúng cảnh báo P2 của JP review (chưa fix). Đề xuất: cho Hiroshi **đính chính nhẹ** Dũng ít nhất 1 lần (`惜しい、正確には〜`) để thành trao đổi thay vì màn khoe trí nhớ.

### phần_III/rule_30_福岡/conversation.json
- [🔴 SỰ THẬT] `CONV#2 lượt 09` (sato_kyushu)
  - JA: `麦焼酎ね!**福岡は麦焼酎の生産量日本一。**いいちこ(大分だけど近い), 二階堂, 中々…`
  - Vấn đề: Ōita mới là số 1 mugi-shōchū (Iichiko, Nikaidō đều Ōita); chính câu này tự mâu thuẫn khi ghi chú "(Ōita nhưng gần)". Đây là **P0-2 trong REVIEW_FINDINGS_JP, STATUS.md v1.1 khai là đã fix "ở L9 dialogue"** — nhưng L9 đó là của `rule.md`; **conversation.json chưa fix**.
  - Đề xuất: `九州は麦焼酎文化、特に大分が生産量日本一。福岡でも屋台で麦焼酎をよく頼むばい。`
- [🔴 SỰ THẬT] `CONV#3 lượt 03` (sato_kyushu)
  - JA: `王さん!1995年からダイエー時代に監督就任、**3度の日本一(99,03,11)**達成。今は会長。`
  - Vấn đề: Ō Sadaharu nhậm chức HLV từ **1995** (công bố 10/1994) — đúng; nhưng ông **từ chức HLV cuối mùa 2008**, nên chức vô địch **2011 KHÔNG phải của ông** (HLV khi đó là Akiyama Kōji). Ō vô địch Nhật 2 lần với Hawks: 1999 và 2003.
  - Đề xuất: `2度の日本一(99、03)を達成。2008年に監督退任、今は会長。`
- [🟡 SỰ THẬT] `CONV#4 lượt 01` — `全国12,000の天満宮の総本宮` — Kitano Tenmangū (Kyoto) cũng tự nhận 総本宮; JP review P1 đề nghị làm mềm, chưa fix trong file này. Đề xuất: `全国天満宮の総本宮の一つ`.
- [🔴 XƯNG HÔ] `CONV#3 lượt 09` (sato_kyushu) — JA `4:59に櫛田神社で待っとる(笑)` → VN "4:59 **anh chờ** ở Kushida Jinja" → "**tôi chờ** em ở Kushida Jinja".

### phần_III/rule_26_大阪/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 02` (yamamoto_kansai)
  - JA: `例えば、私が『今日めっちゃ美人やん私!』って言うやろ?`
  - VN: "Ví dụ **chị nói** 'Hôm nay tớ siêu đẹp luôn!'"
  - Vấn đề: JA có `私` rõ ràng nhưng VN dùng "chị" (Yamamoto tự xưng "chị" với Dũng). Script v1.1 chỉ xử lý "anh/em", **bỏ sót hoàn toàn pattern "chị"** của nhân vật nữ duy nhất.
  - Đề xuất: "Ví dụ **tôi nói** 'Hôm nay tớ siêu đẹp luôn!'"

### phần_III/rule_32_沖縄/conversation.json
- [🔴 SỰ THẬT] `CONV#4 lượt 05` (kobayashi_okinawa)
  - JA: `ジンベエザメ8.7m、**世界最大級の水槽(高さ8.2m×幅22.5m×厚み60cm)**、マンタもいる。`
  - Vấn đề: 8.2m × 22.5m × dày 60cm là kích thước **tấm kính acrylic**, không phải bể. Bể 黒潮の海 thực tế là rộng 35m × sâu 27m × cao 10m, 7.500 m³. "厚み60cm" (dày 60cm) áp cho một cái bể là vô nghĩa vật lý → người Nhật đọc sẽ thấy sai ngay.
  - Đề xuất: `世界最大級の水槽(幅35m×奥行27m×高さ10m)、アクリルパネルだけで厚さ60cm。`
- [🟡 SỰ THẬT] `CONV#4 lượt 01` — `2026年復元完成目指して復興中` — sách xuất bản 2026, mốc này sẽ lỗi thời ngay. Đề xuất: `2026年秋の正殿復元完成を目指して`.

### phần_III/rule_21_北海道/conversation.json
- [🟡 SỰ THẬT] `CONV#1 lượt 06` (nakamura_cfo) — `創業60年の名店だよ` (nói về ジンギスカンだるま, sáng lập 1954 → ~72 năm tính đến 2026). Cùng loại lỗi "con số sẽ già đi" mà v1.1 đã sửa cho 麗ちゃん (rule_28) nhưng bỏ sót chỗ này. Đề xuất: `創業70年近い名店` hoặc `老舗中の老舗`.

### phần_III/rule_27_京都/conversation.json
- [🟡 TIẾNG NHẬT] `CONV#3 lượt 07` (matsumoto) — `夢京都さんがおすすめ**どす**。`
  - Vấn đề: `どす` là 京言葉 gắn với 花街/舞妓, hầu như không còn dùng trong lời nói thường của nam doanh nhân Kyoto hiện đại. Đặt vào miệng chủ tịch xưởng dệt nam nghe như diễn kịch. Phần còn lại của file dùng `〜ございます` rất chuẩn.
  - Đề xuất: `夢京都さんがおすすめです。`
- [🟡 TIẾNG NHẬT] `CONV#2 lượt 04` (matsumoto) — `ベトナムの方からそこまで詳しくお話を伺うとは…` Câu hơi lộ ý "không ngờ người Việt lại biết" — trong sách chống định kiến thì nên trung tính hơn: `そこまで詳しくご存じとは…`
- [🟡 NHÂN VẬT] Cả file dùng speaker `matsumoto` để đóng vai **黒田社長 — chủ tịch xưởng dệt Nishijin 200 năm** (theo `rule_context`). Lại một ca trộn vai như rule_22/29/31, tuy nhẹ hơn vì lời thoại không tự xưng quê.

### phần_IV/rule_35_テト/conversation.json
- [🔴 SỰ THẬT] `CONV#2 lượt 02` (zun)
  - JA: `ほぼ日本と同じ12支ですが、**2つだけ違います**。牛の代わりに水牛、兎の代わりに猫です。`
  - Vấn đề: VN–JP khác **4 con**: Sửu (trâu vs bò), Mão (mèo vs thỏ), Mùi (dê vs cừu), Hợi (lợn nhà vs lợn rừng). STATUS.md v1.1 khai đã sửa thành "4つ違いがあります…" — nhưng **conversation.json vẫn nguyên "2つだけ"**. Tệ hơn: ngay CONV#2 lượt 06–07 của chính file này lại nói thêm về khác biệt Hợi (lợn nhà/lợn rừng) → tự bác bỏ con số "2" trong cùng một khối hội thoại.
  - Đề xuất: `4つ違いがあります。特に大きいのは2つで、牛の代わりに水牛、兎の代わりに猫。あと羊が山羊、猪が豚です。`
- [🟡 SỰ THẬT] `CONV#3 lượt 06` (zun) — `バンザン花卉村の桃の市場` (làng hoa Vạn Giã). Làng đào Tết nổi tiếng Hà Nội là **Nhật Tân / Quảng Bá / Phú Thượng**; "Vạn Giã" là địa danh Khánh Hòa. VN review P1-11 đã nêu, chưa fix. Đề xuất: `ニャッタン(Nhật Tân)花卉村`.
- [🟡 SỰ THẬT] `CONV#3 lượt 08` (zun) — mapping mâm ngũ quả trong **JA** vẫn sai: `マンゴー(Cầu)…グァバ(Sung)…ジャックフルーツ(Xoài)`. Bản VN cùng dòng thì đúng ("mãng cầu, sung, đu đủ, dừa, xoài"). STATUS.md khai đã fix mapping này — fix nằm ở `rule.md`, conversation.json chưa. Đề xuất JA: `カスタードアップル(Cầu)・イチジク(Sung)・パパイヤ(Đủ)・ココナッツ(Dừa)・マンゴー(Xoài)`.
- [🔵 CHẤT LƯỢNG] Kịch bản CONV#3 nói năm 2026 là "năm Ngọ" và Tết 17/2 — đúng; nhưng CONV#2 lượt 06 để Dũng khai sinh 1995 (năm Hợi) rồi giải thích lợn nhà/lợn rừng, làm loãng trọng tâm "2 vs 4 con giáp".

### phần_IV/rule_36_コーヒー/conversation.json
- [🟡 SỰ THẬT] `CONV#1 lượt 04` (zun) — `標高1000m以上の中部高原(**ダラット周辺**)で育てたロブスタ`. Vùng robusta lớn nhất VN là **Buôn Ma Thuột / Đắk Lắk**; Đà Lạt (Lâm Đồng) nổi arabica hơn. VN review P0-4, STATUS.md khai đã fix — lại chỉ fix `rule.md`. Đề xuất: `(ブオンマトート・ダクラク省周辺)`.
- [🟡 SỰ THẬT] `CONV#4 lượt 04` (zun) — `1940年代、**戦後**ハノイで牛乳が手に入らなくて`. Cà phê trứng do Nguyễn Văn Giảng tạo ~1946, thời điểm đó là **cuối thời Pháp thuộc / đầu kháng chiến**, gọi "hậu chiến" dễ hiểu nhầm sang sau 1975. Đề xuất: `1940年代後半のハノイで`.

### phần_IV/rule_37_気候/conversation.json
- [🔴 SỰ THẬT] `CONV#1 lượt 02` + `lượt 08` (zun)
  - lượt 02: `ハノイは1月だと**10度切ること多い**です。` — Hà Nội tháng 1 trung bình 16–18°C; dưới 10°C là đợt rét đậm, không phải "thường".
  - lượt 08: `**6-8月は40度近く**。` — Hà Nội mùa hè thường 35–38°C; chạm 40°C là cực hiếm.
  - Cả hai là VN review P0-5, STATUS.md khai đã "soften" — lại chỉ ở `rule.md`; conversation.json còn nguyên.
  - Đề xuất: `1月の寒波で10度を切ることもあります` / `夏は35度を超える日が多く、稀に40度近くまで上がります`.
- [🟡 SỰ THẬT] `CONV#4 lượt 02` (zun) — `桃の花の春、ロータスの夏、菊の秋、**菊酒の冬**`. "Rượu cúc mùa đông" không phải quý ngữ Bắc Bộ (菊酒 là tập tục 重陽 của Nhật/Trung). Mùa đông Bắc Bộ gắn hoa thủy tiên / cúc họa mi. Đề xuất: `水仙の冬`.
- [🔴 XƯNG HÔ] `CONV#2 lượt 01` (kobayashi_okinawa) — JA `ダナンの出張、来週にしようか今週にしようか迷ってて。` → VN "**Anh phân vân** công tác Đà Nẵng..." → "**Tôi phân vân**".

### phần_IV/rule_38_都市/conversation.json
- [🔴 XƯNG HÔ] `CONV#3 lượt 01` (matsumoto) — JA `ハノイの後、ダナンに2泊、ホイアン1泊って予定。` → VN "Sau HN, **anh định** ĐN 2 đêm" → "**tôi định**".
- [🔴 XƯNG HÔ] `CONV#4 lượt 07` (sato_kyushu) — JA `任せた、行ってみる。` → VN "**Anh tin** em, sẽ đi." → "**Tôi tin** em, sẽ đi."
- [🟡 DỊCH] `CONV#4 lượt 02` (zun) — `朝統一会堂(旧大統領官邸、歴史)`. `旧大統領官邸` rút gọn quá, dễ hiểu nhầm là dinh tổng thống Việt Nam thống nhất. Đề xuất: `旧南ベトナム大統領官邸(独立宮殿)`.
- [🟡 SỰ THẬT] `CONV#2 lượt 06` (zun) — `1区のフォークインギン` (Phở Quỳnh Q1) được xếp cùng danh sách "vào sao Michelin". Michelin Guide VN 2023 xếp Phở Lệ và một số quán vào **Bib Gourmand**, không phải "sao". Đề xuất: đổi `ミシュラン入り` → `ミシュランのビブグルマン掲載`.

### phần_IV/rule_39_祭り/conversation.json
- [🔴 SỰ THẬT] `CONV#1 lượt 08` (zun) + `lượt 09` (matsumoto)
  - JA lượt 08: `**バインチュンチュー**(Bánh Trung Thu)…中身は蓮の実、**カラスミ卵黄**、緑豆あん、カスタード等。`
  - 2 lỗi trong 1 dòng: (a) `カラスミ` = **karasumi/bottarga — trứng cá đối muối khô**, hoàn toàn khác **trứng muối lòng đỏ** (塩漬け卵黄) dùng trong bánh trung thu; (b) phiên âm katakana `バインチュンチュー` sai âm ("Thu" ≠ チュー).
  - Lỗi lan sang lượt 09: Matsumoto reo `カラスミ?それは食べてみたい!` — nếu sửa nhân thì phải sửa cả câu đáp.
  - Đề xuất: `バインチュントゥー(Bánh Trung Thu)` + `塩漬け卵黄` + lượt 09 `塩漬け卵黄?それは食べてみたい!`
- [🔵 CHẤT LƯỢNG] `CONV#1 lượt 06` (zun) — `獅子舞・龍舞(Múa Lân)` gộp 2 điệu vào 1 tên Việt. Đề xuất tách: `獅子舞(Múa Lân)・龍舞(Múa Rồng)`.

### phần_IV/rule_40_和食/conversation.json
- [🟡 SỰ THẬT] `CONV#2 lượt 04` (zun) — `東京の3分の1くらい` (yakitori 150 yên/que, bia 250 yên so Tokyo). Tokyo yakitori ~200–300 yên/que, bia ~500–700 → tỷ lệ thực gần **1/2**, không phải 1/3. Xuất hiện 2 lần (lượt 04 + phản hồi lượt 05 của Tanaka) nên sửa phải sửa cặp.
- [🔵 CHẤT LƯỢNG] `CONV#1 lượt 06` — `おまかせ4500万ドン(約23,000円)`. 45 triệu VND ≈ **265.000 yên** theo tỷ giá 2026, không phải 23.000 yên. Con số đúng phải là **450万ドン** (4,5 triệu VND ≈ 25.000 yên). Lỗi thừa một chữ số → 🔴 nếu tính là sai sự thật; xếp ở đây vì là lỗi số học đơn thuần, sửa 1 ký tự.
  - **Nâng lên 🔴** — xem mục "10 lỗi cần sửa gấp".

### phần_V/rule_42_居酒屋オーダー/conversation.json
- [🟡 TIẾNG NHẬT] `CONV#1 lượt 07` (zun) — `**お通しに加えて**、枝豆と冷奴をすぐにお願いできますか?`
  - Vấn đề: お通し là món tự động dọn ra, không "gọi thêm vào" được. Cách nói tự nhiên: `お通しは出ると思いますが、すぐつまめるものとして枝豆と冷奴を先にお願いできますか?`. JP review P2 đã nêu, chưa fix.
- [🔵 CHẤT LƯỢNG] File 38 lượt — dài nhất sách; CONV#1 có 6 lượt liền chỉ để 4 người lần lượt nói "bia". Có thể gộp còn 2–3 lượt mà không mất giá trị dạy.

### phần_V/rule_43_乾杯お酌/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 04` (oogaki_sales) — JA `ズンも一杯。` → VN "**Em uống** một ly đi." Ōgaki đang mời Dũng nên "em" là ngôi 2 → **đúng**, không phải lỗi. *(ghi lại để đội sửa không nhầm)*
- [🟡 DỊCH] `CONV#4 lượt 05` (matsumoto) — JA `100%って表現、覚えましたよ(笑)` → VN "**Em nhớ** cụm '100%' rồi". Matsumoto tự xưng "em" với Dũng → sai. Đề xuất: "**Tôi nhớ** cụm '100%' rồi."
- [🔵 CHẤT LƯỢNG] CONV#1 dùng 4 lượt liền chỉ để nói `乾杯!` — có thể gộp.

### phần_V/rule_44_二次会/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 05` (oogaki_sales) — JA `3週間後に正式提案するけど` → VN "3 tuần nữa **anh đề** xuất chính thức" → "**tôi đề** xuất". *(Lưu ý lượt 03 cùng khối đã sửa đúng: "trong lòng **tôi** đã thấy" → không nhất quán trong 1 khối.)*

### phần_V/rule_45_カラオケ/conversation.json
- [🔴 XƯNG HÔ] `CONV#1 lượt 04` (oogaki_sales) — JA `ベトナム語で歌うと思ってたわ(笑)` → VN "**Anh tưởng** em hát tiếng Việt" → "**Tôi tưởng** em hát tiếng Việt".
- [🔵 CHẤT LƯỢNG] `CONV#2 lượt 02–04` — Dũng đề nghị Ōgaki (nam, 55t) song ca 『青い珊瑚礁』 (bài tình idol 1980) với Yamamoto (nữ, 38t, cấp dưới trong quan hệ khách). JP review P2 đã cảnh báo rủi ro cảm nhận; chưa fix. Đề xuất: chuyển thành cả bàn hát chung, hoặc để Ōgaki hát solo và mọi người vỗ tay.

### phần_V/rule_46_飲み過ぎ防止/conversation.json
- [🔴 XƯNG HÔ] `CONV#4 lượt 03` (oogaki_sales) — JA `いやいや、こちらこそ。田中の件、すまんかった。` → VN "Không, **anh phải** cảm ơn em chứ." → "Không, **tôi mới** phải cảm ơn em chứ."
- [🔵 CHẤT LƯỢNG] `CONV#3 lượt 01` (tanaka_pmo) — `ズン!ベトナムの女の子はみんな…` (câu bị bỏ lửng khi say). Đây là ví dụ hay về "khách say lỡ lời", nhưng file **không có `analysis`/`why_bad`** giải thích tại sao câu đó nguy hiểm — người học có thể không nhận ra đây là điểm cần chặn. Đề xuất: thêm `analysis` ngắn.

### phần_V/rule_48_地雷話題/conversation.json
- [🔴 XƯNG HÔ] `CONV#1 lượt 01` (oogaki_sales) — JA `最近ニュース見てると…` → VN "**Anh xem** tin tức gần đây..." → "**Tôi xem** tin tức gần đây...".
- [🔴 XƯNG HÔ] `CONV#1 lượt 03` (oogaki_sales) — JA `あ、悪い悪い、聞き方悪かった。` → VN "À, **anh xin lỗi**, hỏi không khéo." → "À, **xin lỗi**, tôi hỏi không khéo."
- [🟡 DỊCH] `CONV#2 lượt 07` (yamamoto_kansai) — JA `それは知らなかった。` → VN "**Em không** biết đó." → "**Tôi không** biết đó."

### phần_V/rule_49_雑談ネタ収集/conversation.json
- [🔴 XƯNG HÔ] `CONV#2 lượt 02` (hiroshi_chugoku) — JA `来年が楽しみや。` → VN "Năm sau **anh chờ** đợi." → "Năm sau **tôi** mong lắm."
  - *(Lưu ý lượt 04 cùng khối đã sửa đúng: "Lần sau **tôi** dẫn em đến Mazda Stadium" → không nhất quán trong 1 khối.)*

### phần_V/rule_51_自己振り返り/conversation.json
- [🟡 SCHEMA] File **không có một lượt thoại nào**. `conversations[0]` chứa `self_review_example` (object), `conversations[1]` chứa `routine` (array) — không có `lines` lẫn `conversation_lines`. Schema bắt buộc `conversation_lines` với `minItems: 1`.
  - Hệ quả: mọi pipeline TTS/render duyệt hội thoại sẽ nhận mảng rỗng hoặc lỗi key.
  - Đề xuất: hoặc tách 2 khối này ra `templates`, hoặc thêm ít nhất 1 hội thoại minh hoạ self-review (Dũng nói với Tuấn trong taxi chẳng hạn).

---

## Lỗi hệ thống (lặp nhiều file)

### #1 🔴 Fix v1.1 chỉ chạy trên 38/51 file — 12 file phần II chưa từng được chạm
Đã trình bày ở mục kiểm chứng. **Đây là lỗi gốc rễ của 23/36 dòng xưng hô còn sai.** Trước khi sửa tay từng dòng, phải sửa script để nó duyệt cả hai schema:
```python
lines = conv.get("lines", []) + conv.get("conversation_lines", [])
vi_key = "vi" if "vi" in line else "sentence_translation"
```

### #2 🔴 Script v1.1 không có pattern cho nhân vật NỮ ("chị")
`PATTERNS` trong script chỉ liệt kê "anh/Anh" và một ít "Em". Yamamoto Kansai — khách nữ duy nhất — tự xưng "chị"/"em" ở ít nhất 4 chỗ (rule_13 ×2, rule_17 ×1, rule_26 ×1) và không dòng nào được chạm. Khi sửa phải bổ sung pattern `chị + động từ` và `em + động từ` cho `yamamoto_kansai`.

### #3 🔴 Ba file trộn nhân vật: khách vùng miền được gán nhầm speaker key
rule_22 (Yoshida/Endō → matsumoto/tanaka_pmo), rule_29 (Kondo → matsumoto), rule_31 (khách Kumamoto/Kagoshima → matsumoto). Hệ quả nghiêm trọng nhất: **Matsumoto — PM dân Asakusa Tokyo 3 đời — lần lượt tự nhận là dân Sendai, dân Kagawa/Kōchi, và "dân tỉnh Kumamoto", nói cả giọng Kyushu `〜たい/〜ばい`.** Người học đọc liên tục 51 rule sẽ thấy nhân vật vỡ. rule_27 cũng mượn matsumoto để đóng chủ tịch Kuroda (nhẹ hơn vì không tự xưng quê).

### #4 🔴 Các fix "P0" ghi trong STATUS.md v1.1 chỉ được áp vào `rule.md`, KHÔNG áp vào `conversation.json`
Kiểm chứng từng mục và thấy còn nguyên trong JSON:

| Mục STATUS.md v1.1 khai đã fix | File JSON | Trạng thái thực |
|---|---|---|
| 福岡 麦焼酎 日本一 (P0) | rule_30 CONV#2 L09 | ❌ còn nguyên |
| 12 con giáp "2つだけ違います" (P0-6) | rule_35 CONV#2 L02 | ❌ còn nguyên |
| Cà phê ダラット周辺 (P0-4) | rule_36 CONV#1 L04 | ❌ còn nguyên |
| Hà Nội "10度切ること多い" + "40度近く" (P0-5) | rule_37 CONV#1 L02/L08 | ❌ còn nguyên |
| Mâm ngũ quả mapping JA (P0-2) | rule_35 CONV#3 L08 | ❌ còn nguyên (JA sai, VN đúng) |
| 福島の桃 天下一品 (P1) | rule_22 CONV#4 L06 | ❌ còn nguyên |
| 山形 東北一の酒どころ (P1) | rule_22 CONV#2 L02 | ❌ còn nguyên |
| お好み村 25店舗 → 約20 (P1) | rule_28 CONV#1 **L01 đã fix, L02 chưa** | ⚠️ fix nửa vời → **hội thoại tự mâu thuẫn** |

→ Kết luận: **v1.1 về cơ bản là bản vá `rule.md`.** Cần một vòng áp lại toàn bộ P0/P1 lên `conversation.json`.

### #5 🟡 Hai schema song song trên cùng một sách
Ngoài `lines` vs `conversation_lines`, còn phân kỳ ở mọi cấp:

| Trường | Nhóm 38 file (I/III/IV/V) | Nhóm 12 file (II) | Schema chuẩn v3 |
|---|---|---|---|
| `rule_id` | `"08-01"` | `"rule_09"` | `^rule_[0-9]{2}$` → **38 file sai** |
| Lượt thoại | `lines` | `conversation_lines` | `conversation_lines` |
| Bản Nhật / Việt | `ja` / `vi` | `sentence` / `sentence_translation` | `sentence` / … |
| Nhãn khối | `scenario` + `type` | `section` + `label_ja/vi` + `display_order` | `section` (enum) |
| Giải thích | `why_bad` (chuỗi) | `analysis` (object ja/vi) | `analysis` |
| Không có | `gender`, `tone`, `line_id` | có đủ | **bắt buộc** |
| `key_phrases` | `category/ja/vi/use` | `phrase_id/speaker/sentence/…` | dạng phần II |
| `bjt_practice` | `answer` + `explain_vi` | `question_id/correct/explanation` | dạng phần II |
| `related_rules` | `[{book,rule,topic}]` (dict) | `["rule_09"]` (string) | mảng string |

Hệ quả: **38/51 file thiếu `line_id`, `gender`, `tone`** — TTS pipeline không chọn được giọng nam/nữ và không gắn được annotation. Đây là lý do `annotations` chỉ tồn tại ở 4 khối (đều thuộc phần II).

### #6 🟡 Chỉ 12/51 file có `analysis`, `gender`, `tone`; 38 file kia có `why_bad` nhưng thiếu bản JA
`why_bad` là chuỗi tiếng Việt thuần, không có bản Nhật. Nếu app render song ngữ như phần II thì 38 file sẽ trống nửa màn hình.

### #7 🔵 Khuôn hội thoại lặp: "Dũng đọc thuộc dữ kiện → khách kinh ngạc"
Đếm được **31 lượt** khách thốt lên `よく知ってる/知っとるか/検定1級/…まで!` trong 13 rule vùng miền. Từ rule_25 trở đi, mỗi rule dùng công thức này 3–4 lần. Ít nhất 4 rule kết bằng đúng một câu đùa "em sang chi nhánh X làm đi" (rule_26 Osaka, rule_30 Fukuoka, rule_31 Kagoshima). Đề xuất: mỗi rule giữ tối đa 2 nhịp "kinh ngạc", thay 1 nhịp bằng khách **đính chính** hoặc **bổ sung điều Dũng chưa biết**.

---

## Bảng schema: file nào lệch chuẩn

| Nhóm | File | rule_id đúng? | lượt thoại | gender/tone/line_id | analysis song ngữ | Mức |
|---|---|---|---|---|---|---|
| A (38 file) | rule_01–08, 21–50 | ❌ `08-NN` | `lines` ❌ | ❌ thiếu cả 3 | ❌ chỉ VN | 🟡 |
| B (12 file) | rule_09–20 | ✅ `rule_NN` | `conversation_lines` ✅ | ✅ đủ | ✅ | ✅ chuẩn |
| C (1 file) | rule_51 | ❌ `08-51` | **không có** ❌ | — | — | 🟡 |

Trường phụ chỉ xuất hiện ở một nhóm nhỏ (không có trong schema v3, cần bổ sung schema hoặc gỡ):
`regional_focus` (13), `ng_list` (13), `vocab` (13), `regional_cheatsheet` (12), `topic_gold_list` (1), `topic_landmine_list` (1), `sources` (1), `weekly_routine` (1), `weekly_template_md` (1), `self_review_example` (1), `routine` (1), `context_vi` (13), `why_bad` (14).

**Độ dài hội thoại:** trung bình 26 lượt/file. Bất thường: rule_51 = **0**, rule_49/50 = 9, rule_47/48 = 13, rule_03 = 14; đầu kia rule_42 = 38, rule_28 = 36. Rule 47–51 chỉ có 2 khối (được `rule_context` ghi rõ "Tham khảo") nên chấp nhận được — trừ rule_51 rỗng hoàn toàn.

---

## 10 lỗi cần sửa gấp nhất

1. **🔴 Sửa `apply_review_fixes.py` để duyệt cả 2 schema + thêm pattern "chị"** — nếu không, 23 lỗi phần II sẽ tiếp tục sót ở mọi vòng fix sau. *(Lỗi hệ thống #1, #2)*
2. **🔴 rule_30 CONV#2 L09 — 福岡は麦焼酎の生産量日本一** → sai sự thật, người Kyushu phát hiện ngay, và chính câu tự mâu thuẫn "(Ōita nhưng gần)".
3. **🔴 rule_30 CONV#3 L03 — 王貞治 3度の日本一(99,03,11)** → Ō nghỉ HLV 2008, chức 2011 không phải của ông. Sửa thành `2度(99、03)`.
4. **🔴 rule_31 + rule_29 + rule_22 — matsumoto đóng vai dân Kumamoto/Kagoshima/Shikoku/Sendai** → phá vỡ cast xuyên sách; phải tách speaker mới.
5. **🔴 rule_40 CONV#1 L06 — `おまかせ4500万ドン(約23,000円)`** → thừa một chữ số: 45 triệu VND ≈ 265.000 yên. Đúng phải là `450万ドン(約25,000円)`. Con số này người Nhật đọc sẽ tưởng nhà hàng lừa đảo.
6. **🔴 rule_28 CONV#1 L02 — "25 quán"** ngay sau lượt 01 đã sửa thành "khoảng 20 quán" → hội thoại tự mâu thuẫn 2 dòng liền.
7. **🔴 rule_35 CONV#2 L02 — "2つだけ違います"** → đúng là 4 con, và chính file tự bác bỏ ở lượt 06–07.
8. **🔴 rule_32 CONV#4 L05 — bể Churaumi "cao 8.2 × rộng 22.5 × dày 60cm"** → đó là kích thước tấm kính; "bể dày 60cm" vô nghĩa.
9. **🔴 rule_39 CONV#1 L08–09 — `カラスミ卵黄`** → karasumi (trứng cá đối) ≠ trứng muối; phải sửa cả câu đáp của Matsumoto. Kèm katakana `バインチュンチュー` → `バインチュントゥー`.
10. **🔴 rule_17 CONV#3 L01 + rule_26 CONV#2 L02 — Yamamoto (khách nữ) tự xưng "em"/"chị"** → đúng loại lỗi mà cả v1.1 đặt ra để diệt, nhưng nhân vật nữ bị bỏ sót hoàn toàn.

---

## Ghi chú cho giai đoạn SỬA

**Thứ tự đề nghị**

1. **Sửa công cụ trước, đừng sửa tay.** Vá `scripts/apply_review_fixes.py` theo Lỗi hệ thống #1 + #2, chạy `--dry-run --verbose`, đối chiếu 36 dòng liệt kê trong báo cáo này, rồi mới apply. Sửa tay 36 dòng sẽ khiến vòng sau lặp lại y hệt.
2. **Áp lại toàn bộ P0/P1 của v1.1 lên `conversation.json`** (bảng ở Lỗi hệ thống #4). Đây là 8 mục, đều đã có câu sửa sẵn trong `REVIEW_FINDINGS_JP/VN.md` — chỉ cần copy sang JSON.
3. **Quyết định về schema trước khi sửa nội dung.** Nếu định hợp nhất 38 file về schema v3 (`conversation_lines` + `sentence`/`sentence_translation` + `gender`/`tone`/`line_id`), nên làm **trước** bước sửa nội dung, vì migration sẽ ghi đè. Nếu quyết định giữ 2 schema, phải cập nhật `_schema/rule_conversation.schema.json` để hợp thức hoá nhánh `lines`, nếu không mọi validator đều báo 38 file sai.
4. **Ba file trộn nhân vật (22/29/31) cần quyết định thiết kế**, không phải sửa chữ: thêm cast mới vào `_front_matter.md` + `voice_profiles.json`, hay viết lại lời thoại bỏ giọng bản địa. Nên hỏi chủ sách trước.

**Bẫy cần tránh khi sửa**

- **Đừng đổi hết "anh" thành "tôi" trong lời khách Nhật.** Rất nhiều "anh"/"em" là **ngôi 2 gọi Dũng** và hoàn toàn đúng (vd rule_43 `ズンも一杯。` → "Em uống một ly đi" là chuẩn). Chỉ đổi khi JA cho thấy chủ ngữ là chính người nói. Danh sách 36 dòng trong báo cáo này đã lọc sẵn.
- **Sửa số thì phải sửa cả câu đáp.** rule_28 (20 vs 25 quán), rule_39 (karasumi → trứng muối, Matsumoto reo lại đúng từ đó), rule_40 (Tanaka nhại lại "1/3 Tokyo") — mỗi chỗ là một **cặp** lượt thoại.
- **rule_35 mâm ngũ quả: chỉ sai bản JA, bản VN đã đúng.** Đừng "sửa" bản VN theo bản JA sai.
- **Không đụng `rule.md`** — đó là phạm vi của A1/A2. Nhưng khi sửa số liệu trong JSON phải đối chiếu `rule.md` tương ứng để hai bên khớp nhau (hiện đang lệch ở đúng 8 chỗ nêu trên).
- Các lỗi ở rule_09–20 nằm trong file dùng key `sentence_translation`, không phải `vi` — dễ sửa nhầm file nếu grep theo `"vi":`.
