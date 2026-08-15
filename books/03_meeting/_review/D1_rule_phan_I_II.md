# [03-D1] Rà soát rule.md phần I + II (18 rule)
> Agent: D1 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: `nội_dung/phần_I/rule_01..08/rule.md` + `nội_dung/phần_II/rule_09..18/rule.md` (1.551 dòng).
> Đã đọc `.claude/rules/book-review.md`, `_review/00_TIEN_DO.md`, `_thuat_ngu.md`, `meta/mục_lục.md`, `meta/STATUS.md`.

## Tóm tắt số lỗi

| Mức | Số | Nội dung |
|---|---|---|
| 🔴 | **5** | 2 lỗi keigo/giải thích SAI trong ô Ghi chú (dạy sai), 1 mâu thuẫn vai trò giữa rule_06 ↔ rule_14, 1 xưng hô tự mâu thuẫn trong 1 lượt thoại, 1 luận điểm rule_05 lệch phần Tránh |
| 🟡 | **7** | 3 Hán Việt sai, 1 lệch Hán Việt liên rule, 1 tiếng Anh thừa trong văn Việt (nhiều chỗ), 1 dịch lệch, 1 thuật ngữ ngoài `_thuat_ngu.md` |
| 🔵 | **3** | ruby không có quy ước (hệ thống), 1 lỗi đánh máy nhỏ, 1 gợi ý nhất quán |

**Tổng: 15 mục.**

### ⚠️ Điều chỉnh kỳ vọng — chống phóng đại (rule mục 3)
Bản thân tôi đã suýt báo **469 ký tự kanji thiếu ruby** rồi **84 dòng**. Cả hai con số đều SAI vì:
- Tính cả tên riêng (`松本` ×21, `大垣` ×26) mà sách chủ ý để trần;
- Tính cả kanji đã có ruby **ngay trên cùng dòng đó** (`会議` ruby ở đầu dòng, để trần ở cuối dòng).

Con số phòng thủ được sau khi lọc là **41 dòng** (mục 1). Và ngay cả 41 dòng này **không phải "fix v1.1 chạy nửa vời"** mà là **sách chưa từng có quy ước ruby** — xem kết luận mục 1.

---

## 1. KIỂM raw-kanji / ruby (bảng riêng)

### 1.1 Kết luận quan trọng nhất: **KHÔNG CÓ quy ước ruby nào cả**

`STATUS.md` khai "13 raw-kanji rule" đã fix. Tôi kiểm bằng script strip ruby (rule mục 1.1) trên 18 rule. Kết quả:

| Nhóm kanji | Số ký tự riêng biệt | Ghi chú |
|---|---|---|
| **Luôn có ruby** trong hội thoại | 0 | không ký tự nào ruby 100% |
| **Luôn trần** (không ruby lần nào) | 19 | `茶 火 説 上 世 丈 屋 参 夫 金 示 末 二 表 取 水 高 階 流` |
| **VỪA ruby VỪA trần** | **117** | ⚠️ đây là vấn đề |

Ví dụ mức độ tuỳ tiện — đếm trên 18 rule:

| Kanji | Số lần CÓ ruby | Số lần TRẦN |
|---|---|---|
| 本 | 17 | 39 |
| 日 | 13 | 32 |
| 議 | 24 | 19 |
| 会 | 15 | 13 |
| 分 | 12 | 12 |
| 確 | 17 | 4 |
| 定 | 16 | 3 |
| 進 | 14 | 2 |
| 捗 | 11 | 2 |
| 社 | 14 | 1 |

→ Không phải quy tắc "ruby lần đầu mỗi file" (tôi đã kiểm giả thuyết này: vẫn còn 64 dòng phá luật), cũng không phải "chỉ ruby kanji khó" (`捗` — kanji khó nhất sách — vẫn trần 2 lần).

**→ Đề xuất cho giai đoạn SỬA: đây là quyết định BIÊN TẬP, không phải lỗi lẻ.** Phải chốt 1 trong 2 hướng rồi chạy script đồng loạt cho CẢ 50 rule (không chỉ 18 rule của tôi), nếu không sẽ lại "fix nửa vời":
- **Hướng A** (đề xuất): ruby **mọi kanji** trong ô tiếng Nhật của bảng hội thoại + Câu chốt. Sách dạy J3–J2 nhưng người học Việt Nam đọc `捗`/`裁`/`裁量` vẫn vấp.
- **Hướng B**: ruby kanji ≥ N3, thống nhất danh sách trắng cho N5/N4 (`日 月 本 時 分 人 会 前 中 大 小 上 下 出 入 見 話 行 来 今 何 先 分`), tên riêng luôn ruby lần đầu mỗi rule.

### 1.2 Danh sách 41 dòng nặng nhất — kanji "nội dung" bị trần dù chính nó được ruby ở chỗ khác

Đây là tập con phòng thủ được nhất: kanji có **≥5 lần ruby** và **số lần ruby > 2× số lần trần** (tức sách rõ ràng COI nó là kanji cần ruby), nhưng vẫn xuất hiện trần.

| Rule | Dòng | Kanji trần | Trích (đã strip ruby) |
|---|---|---|---|
| rule_01 | 26 | 進捗 | 「はい、**進捗**報告と次のタスクを話そうかと…」 |
| rule_01 | 39 | 例 部長 | 「フオン**副部長**、4月度月**例**会議のアジェンダ案でございます」 |
| rule_01 | 40 | 出席 的 | 「目**的**が明確で**出席**者と時間配分もある。」 |
| rule_01 | 41 | 進捗 決 | 「Phase 2 の**進捗**共有と来月の計画を1時間で**決**めたい旨を…」 |
| rule_01 | 42 | 確認 | 「あとは大垣営業部長の出席可否を**確認**してから…」 |
| rule_02 | 24 | 時 | 「松本様、来週月曜15**時**から会議します。」 |
| rule_02 | 26 | 資料 | 「…**資料**は今作っております。」 |
| rule_02 | 27 | 見 | 「アジェンダと目的を**見**て調整したかったので…」 |
| rule_02 | 39 | 例 | 「下記のとおり4月度月**例**会議を開催いたしたく…」 |
| rule_02 | 40 | 的 | 「目**的**はPhase 2 進捗共有と5月スコープ合意の2点でございます。」 |
| rule_02 | 41 | 時 | 「4月25日（金）17**時**まで にご返信いただけますと…」 |
| rule_02 | 42 | 出席 共有 | 「**出席**いたします。大垣にも**共有**しておきます。」 |
| rule_03 | 24 | 確認 | 「OK、設備は**確認**した？」 |
| rule_03 | 25 | 部 | 「あっ、**部**屋を予約しただけで…」 |
| rule_03 | 36 | 備 | 「…設**備**チェックリストも完了しました」 |
| rule_03 | 39 | 前 | 「当日は10分**前**に最終チェックしよう。」 |
| rule_05 | 24 | 時間 | 「これから読むのは**時間**が足りないので…」 |
| rule_05 | 26 | 終了 資料 | 「ほぼ**資料**説明だったね。」／nhãn vai「ハー (CTO、**終了**後)」 |
| rule_06 | 24 | 時 | 「15**時**ちょうどなので会議室向かいます！」 |
| rule_06 | 25 | 前 | 「もう松本様は5分**前**から待っているよ。」 |
| rule_07 | 25 | 間 | 「テストフェーズで2週**間**必要で…」 |
| rule_07 | 26 | 合 | 「社内で先に話し**合**っていただいたほうが…」 |
| rule_07 | 38 | 出 | 「納期前倒しの話が**出**る可能性が高い。」 |
| rule_07 | 39 | 前 | 「それより**前**は品質リスクあります。」 |
| rule_08 | 24 | 想定問答 | 「**想定問答**集はまだ…」 |
| rule_08 | 36 | 想定問答 | 「ズン、本日の**想定問答**集はある？」 |
| rule_08 | 37 | 定 | 「想**定**質問5件と回答案…」 |
| rule_12 | 26 | 時 社 | 「自**社**の方を紹介する**時**は…」 |
| rule_15 | 24 | 決 | 「明確に**決**めたい点は？」 |
| rule_15 | 37 | 確 | 「明**確**で良いですね。」 |
| rule_16 | 24 | 終了 | 「『15:00 開始、16:00 **終了**』と言ってもらえれば…」 |
| rule_16 | 35 | 確認 議題 | 「**議題**2… **議題**3… **議題**4: 次回**確認** 15:50〜16:00」 |
| rule_16 | 36 | 議題 | 「**議題**3の途中で一度止めて…」 |
| rule_17 | 23 | 前 | 「**前**の会議が長引いて…」 |
| rule_17 | 24 | 議題 | 「**議題**1の進捗報告の最後で…」 |
| rule_17 | 25 | 報告 | 「さっき自分が**報告**する話、もう終わってます？」 |
| rule_17 | 40 | 議題 | 「トゥアンさん、**議題**1の最終確認中です。」 |
| rule_18 | 26 | 部長 | 「フオン**副部長**の権限と聞いているのですが…」 |
| rule_18 | 38 | 部長 | 「本日 弊社 **副部長**のフオンは体調不良のため欠席…」 |
| rule_18 | 39 | 中 | 「議事録は終了後本日**中**にフオンへ共有いたします」 |
| rule_18 | 40 | 中 最 終 決 | 「5月スコープの**最終決**裁は…本日**中**…明日**中**に…」 |

### 1.3 Có ruby nào SAI cách đọc không?

**KHÔNG.** Tôi đã rà toàn bộ `<ruby>…<rt>…</rt></ruby>` trong 18 rule. Tất cả cách đọc đều đúng, kể cả các chỗ dễ sai:

| Chỗ dễ sai | Ruby trong sách | Phán định |
|---|---|---|
| rule_01 L46 `旨` | `むね` | ✅ đúng (không phải `し`) |
| rule_01 L39 `月度` | `がつど` | ✅ đúng |
| rule_11 L39 `頂戴` | `ちょうだい` | ✅ đúng |
| rule_06 L42 `皆様お揃い` | `みなさま` / `おそろ` | ✅ đúng |
| rule_03 L23 `押さえる` | `お` | ✅ đúng (nghĩa "giữ chỗ") |
| rule_16 L36 `時間が押した` | `お` | ✅ đúng |
| rule_04 L38 `新リンク` | `しん` | ✅ đúng (音読み vì đứng trước ngoại lai ngữ) |
| rule_13 L37 `スコープ協議` | `スコープきょうぎ` | ✅ đúng (ruby bọc cả katakana là hơi thừa nhưng không sai đọc) |

**→ Kết luận nhiệm vụ đặc biệt: fix v1.1 KHÔNG sai, chỉ là KHÔNG ĐỦ — vì chưa bao giờ có quy ước để "đủ".**

---

## 2. Danh sách lỗi theo rule

### 🔴 #1 — rule_17 dòng 46: dạy SAI loại kính ngữ (`お続けください` là 尊敬語, không phải 謙譲語)

**Trích nguyên văn (rule.md L46):**
> - 【3】**「お続けください」** — cụm **khiêm nhường** để司会 tiếp tục. Tránh 「続けてください」 (mệnh lệnh).

**JA liên quan (L41):** トゥアン「ありがとうございます。**お続けください**。」

**Vấn đề:** `お+動詞連用形+ください` là công thức **尊敬語** (tôn kính ngữ — nâng người nghe lên). Nó KHÔNG phải 謙譲語 (khiêm nhường ngữ — hạ mình xuống). Đây đúng loại lỗi rule mục 4C liệt kê ("`おります` là khiêm nhường ngữ của いる, không phải tôn kính quá mức" — cùng bản chất, nhầm loại kính ngữ).

Nguy hiểm ở chỗ: học viên học sai **phân loại** sẽ áp dụng `お〜ください` cho **hành động của chính mình** ở chỗ khác → lỗi 尊敬語 tự dùng cho mình, nặng hơn nhiều.

**Đề xuất sửa (chỉ sửa phần giải thích, GIỮ nguyên câu 「お続けください」 vì câu đó ĐÚNG):**
> - 【3】**「お続けください」** — dạng **tôn kính ngữ** (尊敬語) 「お＋動詞＋ください」, nâng người nghe lên. Lịch sự hơn hẳn 「続けてください」 (chỉ là 丁寧語, nghe như ra lệnh).

Đồng thời sửa bảng từ vựng L91 — hiện ghi Hán Việt `—` và nghĩa "Mời anh/chị tiếp tục" là ĐÚNG, không cần đụng.

---

### 🔴 #2 — rule_14 dòng 42: giải thích 「ご確認させていただきます」 KHÔNG chính xác

**Trích nguyên văn (rule.md L36 + L42):**
> **ズン**「議題に入る前に、本日の役割を**ご確認させていただきます**【1】。」
> *Trước khi vào mục, em xin phép xác nhận vai trò hôm nay ạ.*
>
> - 【1】**「役割をご確認させていただきます」** — câu chuyển ý lịch sự. **「ご確認」 dùng được vì 確認 là về thông tin chung, không phải hành động của riêng mình.**

**Vấn đề:** Lời giải thích SAI logic. Trong câu này 確認 **chính là hành động của người nói** (Dũng xác nhận, rồi thông báo cho cả phòng) — đúng cái mà lời giải thích phủ nhận. Chuẩn business Nhật: khi chủ ngữ là mình thì **bỏ `ご`**, dùng 「確認させていただきます」 hoặc 「確認いたします」. Gắn `ご` vào việc của mình chính là **過剰敬語** — đúng mục rule 4C liệt kê (`ご請求書` cho hoá đơn mình phát).

Đây là lỗi **B (tự mâu thuẫn)** chồng lên **C (tiếng Nhật)**: rule_04 L45 ghi chú 【2】 lại khen 「録画は冒頭でご確認しよう」 — cũng gắn `ご` vào việc của mình mà không hề cảnh báo.

**Đề xuất sửa** (2 chỗ, sửa cả JA lẫn phần giải thích — tránh "vá JA quên VN" ở rule mục 5):
1. rule_14 L36 JA: 「ご確認させていただきます」 → 「**確認**させていただきます」 (VN giữ nguyên, đã đúng).
2. rule_14 L42 ghi chú: viết lại thành —
   > 【1】**「役割を確認させていただきます」** — 確認 là hành động của **chính người nói**, nên **không gắn `ご`**. 「ご確認」 chỉ dùng khi đề nghị **đối phương** xác nhận (「ご確認ください」/「ご確認いただけますか」). Gắn `ご` vào việc của mình = 過剰敬語.
3. rule_04 L39 JA: 「松本様にご確認しよう」 → 「松本様に**確認を取ろう**」 hoặc 「松本様に**お伺いしよう**」; L45 ghi chú sửa theo.

> ⚠️ Lưu ý cho main Claude: rule_16 L36 「延長可否を**ご相談**させていただきます」 và rule_15 L34 「ゴールを2点**ご共有**させていただきます」 KHÔNG cùng loại — 相談 và 共有 là hành động **hướng tới đối phương / có đối phương tham gia**, nên `ご` ở đây là 謙譲語 hợp lệ (như 「ご連絡いたします」「ご報告いたします」). **ĐỪNG sửa 2 chỗ đó** — xem mục 5.

---

### 🔴 #3 — rule_06 ↔ rule_14: MÂU THUẪN về ai tuyên bố khai mạc họp

**rule_06 L42** (Hội thoại TỐT — tức sách đang dạy làm theo):
> **リン**「皆様お揃いでいらっしゃいますので、これより4月度月例会議を**開始いたします**【2】。」
> *Mọi người đã đông đủ rồi, em xin phép bắt đầu buổi họp định kỳ tháng 4 ạ.*

**rule_09 L13 (Bối cảnh):** 「em Dũng được giao 司会 (chủ trì)」
**rule_09 L39** (Hội thoại TỐT): **ズン**「本日の司会を務めさせていただきます、ティエンファットのズンでございます」
**rule_14 L37** (Hội thoại TỐT): **ズン**「司会は私ズンが務めます。書記はリンが担当し…」
**rule_10 L13 (Bối cảnh):** 「Buổi họp **đầu tiên** của em Linh (vừa tham gia dự án)」

**Vấn đề:** Cùng một buổi họp (4月度月例会議, cùng dàn nhân vật), rule_06 để **Linh — nhân viên mới, chưa từng dự họp với khách, vai 書記** — đọc câu khai mạc. Nhưng rule_09/13/14/15/16 đều xác lập **Dũng là 司会** và chính Dũng đọc câu mở. Câu 「これより〜会議を開始いたします」 là **đặc quyền của 司会**.

Đây là lỗi trục **A + B**: học viên bắt chước rule_06 sẽ để nhân viên trẻ nhất tuyên bố khai mạc trước mặt 営業部長 — trong họp Nhật là lỗi vai vế thật.

**Đề xuất sửa:** đổi vai dòng 42 của rule_06 từ **リン** sang **ズン**. Nội dung câu JA + VN giữ nguyên (câu đó chuẩn), chỉ đổi nhãn vai. Ghi chú 【2】 (L46) không cần đụng.

*(Cách sửa thay thế nếu muốn giữ Linh: đổi câu thành 「ズン先輩、皆様お揃いです」 — Linh báo cáo, Dũng khai mạc. Nhưng đổi nhãn vai gọn hơn.)*

---

### 🔴 #4 — rule_04 dòng 40: xưng hô tự mâu thuẫn TRONG CÙNG MỘT LƯỢT THOẠI

**Trích nguyên văn:**
> | **ハイ** | 「了解。リンクを松本様に再送し、Wi-Fi 不安定時の電話番号も併記しました。」 <br/>***OK em. Anh gửi lại link cho Matsumoto rồi, có ghi kèm số điện thoại phòng khi Wi-Fi yếu nữa.*** |

**Vấn đề:** Trong **một câu**, Hải vừa gọi Dũng là **"em"** ("OK em") vừa tự xưng **"Anh"** ("Anh gửi lại link") — nghĩa là Hải trên vai Dũng. Nhưng 2 dòng trên (L39), Dũng gọi Hải là **"anh"** ("Cảm ơn **anh**. Nền hình đặt làm mờ… nhé") và **ra chỉ thị** cho Hải. Hai người không thể đồng thời là "anh" của nhau.

Đối chiếu bản Nhật: Hải nói 「ズン」 (gọi trống tên, thân mật ngang hàng), Dũng nói 「サンキュ」+ thể mệnh lệnh nhẹ 「〜にして」 — quan hệ **ngang hàng/Dũng chủ trì**, không có ai là bề trên. Bối cảnh L13 cũng ghi 「Em Hải (phụ trách hệ thống) **phụ Dũng** thiết lập」 → Hải hỗ trợ Dũng.

**Đề xuất sửa** — thống nhất Hải và Dũng ngang hàng, gọi nhau bằng tên:
- L38 VN: giữ "Dũng, …" nhưng đổi *"anh phát link Zoom mới rồi"* → *"mình phát link Zoom mới rồi"*.
- L39 VN: *"Cảm ơn anh."* → *"Cảm ơn Hải."*
- L40 VN: *"OK em. Anh gửi lại link cho Matsumoto rồi"* → *"OK. Mình gửi lại link cho anh Matsumoto rồi"*.
- L40 VN còn **bỏ mất 様**: JA 「松本**様**に再送し」 nhưng VN chỉ "cho Matsumoto". So với các rule khác luôn dịch là "anh Matsumoto" → thêm "anh".

---

### 🔴 #5 — rule_05: luận điểm nói "< 5MB" nhưng phần Tránh nói "> 10MB"

**Trích nguyên văn:**
> **L3 (Luận điểm):** …định dạng **PDF (file size < 5MB)**…
> **L63 (Tránh):** File **> 10MB** → máy chủ mail của khách trả về lỗi. Dùng link Drive nếu file nặng.

**Vấn đề:** Hai ngưỡng khác nhau trong cùng 1 rule (lỗi trục B — dạng "trong cùng 1 rule", giống ca sách 08 rule_28 「約20店舗」 vs 「25店舗」). Học viên không biết theo cái nào: file 7MB là đạt hay không đạt?

Về sự thật: giới hạn đính kèm phổ biến của doanh nghiệp Nhật thường là **2MB–10MB** (nhiều công ty lớn chặn ở 5MB hoặc 10MB, kèm hệ thống 添付ファイル自動暗号化/PPAP). Cả 2 con số đều không sai về thực tế — vấn đề thuần là **tự mâu thuẫn**.

**Đề xuất sửa:** thống nhất về **5MB** (số ở Luận điểm, là số học viên nhớ), sửa L63:
> - File **> 5MB** → nhiều máy chủ mail doanh nghiệp Nhật chặn hoặc trả lỗi. Dùng link Drive/SharePoint nếu file nặng hơn.

Đồng thời kiểm chéo: `phần_III..V` + Phụ lục D có lặp lại ngưỡng nào không (ngoài phạm vi tôi — nhờ D2/D3, xem mục 6).

---

### 🟡 #6 — Hán Việt: 1 lỗi thật + 2 lệch liên rule

Tôi đã rà toàn bộ cột "Hán Việt" của 18 bảng từ vựng. **Phần lớn ĐÚNG** — kể cả những chỗ trông lạ mắt nhưng thực ra chuẩn, xin ghi rõ để khỏi bị sửa nhầm:

| Rule | Từ | Sách ghi | Phán định |
|---|---|---|---|
| rule_17 L89 | 着席 | TRƯỚC TỊCH | ✅ ĐÚNG — 着 = TRƯỚC (như "trước tác"), 席 = TỊCH |
| rule_02 L109 | 開催 | KHAI THÔI | ✅ ĐÚNG — 催 = THÔI |
| rule_02 L104 | 招待メール | CHIÊU ĐÃI | ✅ ĐÚNG |
| rule_09 L72 · rule_14 L79 | 司会 | TƯ HỘI | ✅ ĐÚNG — 司 = TƯ/TY, ở đây TƯ hợp lệ; nhất quán 2 rule |
| rule_07 L71 · rule_10 L86 · rule_14 L81 | 役割(分担) | DỊCH CÁT (PHÂN ĐẢM) | ✅ ĐÚNG — 役 = DỊCH, 割 = CÁT; nhất quán 3 rule |
| rule_10 L85 | 不慣れ | BẤT QUÁN | ✅ ĐÚNG — 慣 = QUÁN |
| rule_16 L73 | 〜途中 | ĐỒ TRUNG | ✅ ĐÚNG — 途 = ĐỒ |

**Lỗi thật:**

**(a) 🔴→🟡 rule_11 L72–73 — `名刺` / `名刺交換` ghi "DANH THIẾP"**
- 名 = DANH, 刺 = **THÍCH** (không phải "THIẾP"). Chữ 帖/貼 mới là THIẾP.
- Sách đã tự mâu thuẫn ngay dòng trên: L72 `名刺` ghi **"DANH THIẾP"** — cùng lỗi.
- **Đề xuất:** `名刺` → **DANH THÍCH**; `名刺交換` → **DANH THÍCH GIAO HOÁN**. (Nghĩa Việt "Danh thiếp" giữ nguyên — đó là từ Việt đã Việt hoá, đúng.)

**(b) 🟡 Lệch Hán Việt giữa các rule (kiểm toàn sách, rule mục 4F)**

| Từ | Rule trong phạm vi D1 | Rule ngoài phạm vi | Lệch |
|---|---|---|---|
| 画面共有 | rule_04 L91: **HỌA** DIỆN CỘNG HỮU | rule_36: **HOẠ** DIỆN CỘNG HỮU | dấu hỏi/ngã đặt khác vị trí — chuẩn chính tả hiện hành là **HOẠ** |
| 頂戴 | rule_11 L74: **ĐỈNH** ĐÁI | rule_26, rule_35: **ĐÍNH** ĐÁI · rule_47: **ĐỈNH** ĐÁI | 頂 = **ĐỈNH**; "ĐÍNH" ở rule_26/35 SAI |

→ Chốt: `頂戴` = **ĐỈNH ĐÁI** (rule_11 của tôi ĐÚNG, phải sửa rule_26/35 — báo cho D2/D3). `画面共有` = **HOẠ DIỆN CỘNG HỮU` (rule_04 của tôi phải sửa theo rule_36).

---

### 🟡 #7 — Tiếng Anh thừa trong bản dịch tiếng Việt (rule mục 4E)

Sách có `_thuat_ngu.md` liệt kê 27 viết tắt được phép. Các từ dưới đây **không nằm trong bảng đó** mà vẫn lọt vào **văn tiếng Việt**, trong khi bản Nhật dùng từ Nhật thuần:

| Rule | Dòng | JA | VN hiện tại | Vấn đề | Đề xuất |
|---|---|---|---|---|---|
| rule_16 | 34 | 「本日の時間配分をご確認ください」 | "Xin các anh **confirm timeline** hôm nay" | 2 từ Anh liền, JA không có | "Xin các anh **xác nhận lịch giờ** hôm nay" |
| rule_13 | 37 | 「4点目、次回日程・TODO 確認」 | "Mục 4: **Confirm** ngày họp tới + TODO" | JA dùng 確認 | "Mục 4: **Xác nhận** ngày họp tới + TODO" (TODO giữ được — có trong JA) |
| rule_16 | 35 | 「議題4: 次回確認 15:50〜16:00」 | "Mục 4: **confirm tiếp** 15:50-16:00" | — | "Mục 4: xác nhận buổi tới 15:50-16:00" |
| rule_07 | 41 | 「Plan B として」 | "**Phương án dự phòng**…" ✅ | đã dịch đúng | — |
| rule_08 | 37 | 「Plan B として」 | "**phương án dự phòng**" ✅ | đã dịch đúng | — |
| rule_04 | 41 | 「15分前に再ログインして」 | "15 phút trước họp mình **re-login**" | JA là 再ログイン (katakana), nhưng VN nên Việt hoá | "…mình **đăng nhập lại**" |
| rule_05 | 41 | 「差分明確で助かります」 | "Em ghi **diff** rõ thế này tiện lắm" | JA là 差分; bảng từ vựng L76 đã dịch 差分 = "Phần thay đổi" | "Em ghi **phần thay đổi** rõ thế này tiện lắm" |
| rule_03 | 26 | 「総務に借りに行って」 | "chạy xuống **văn phòng tổng vụ** mượn" ✅ | đúng | — |

**Ghi chú tự kiểm (chống phóng đại):** Tôi đã KHÔNG tính các từ sau vì chúng **có mặt trong bản Nhật** nên bản Việt giữ là hợp lý: `Zoom`, `Phase 2`, `Plan B`, `Slack`, `HDMI`, `USB-C`, `Wi-Fi`, `PDF`, `v1.0/v1.1`, `TODO`, `sprint/スプリント`, `scope/スコープ`, `commit/コミット`, `risk register`, `OK`. Cũng KHÔNG tính `CTO`, `PM`, `BD`, `QA` — có trong `_thuat_ngu.md`.

→ **Số thật: 5 chỗ**, không phải "tiếng Anh tràn lan".

---

### 🟡 #8 — rule_02 L39: dịch 「お世話になっております」 theo kiểu chữ-đối-chữ

**Trích:**
> JA: 「松本様、**お世話になっております**。ティエンファットのズンでございます。」
> VN: *"Anh Matsumoto, **lúc nào cũng cảm ơn anh giúp đỡ** ạ. Em Dũng bên Thiên Phát đây ạ."*

**Vấn đề:** Đây đúng ca rule mục 4E nêu tên: 「お世話になっております」 là **câu chào xã giao cố định** mở đầu mọi mail/điện thoại business Nhật, KHÔNG mang nội dung "cảm ơn vì đã giúp đỡ". Dịch thành "lúc nào cũng cảm ơn anh giúp đỡ" làm học viên tưởng phải có việc được giúp thật mới dùng được — sai cách dùng.

Tham chiếu: sách 02 (Điện thoại) đã bị bắt đúng lỗi này.

**Đề xuất sửa:**
> *"Anh Matsumoto, **em xin phép làm phiền anh ạ**. Em Dũng bên Thiên Phát đây ạ."*
> …hoặc giữ nguyên âm + chú thích: *"Anh Matsumoto, em chào anh ạ (お世話になっております — câu chào cố định mở đầu mail business)."*

Đề nghị **thêm ghi chú 【】** cho cụm này ở rule_02 vì đây là câu học viên gặp nhiều nhất, và rule_02 chính là rule dạy viết mail mời.

---

### 🟡 #9 — rule_02 L24: bản dịch bỏ mất sắc thái cộc lốc của Hội thoại XẤU

**Trích:**
> JA (XẤU): 「松本様、来週月曜15時から会議します。Zoomリンク添付。よろしくお願いします。」
> VN: *"Anh Matsumoto, thứ hai tuần sau 15h họp ạ. Link Zoom đính kèm. **Phiền anh nhé.**"*

**Vấn đề:** Bản Nhật 「よろしくお願いします」 (không phải 〜いたします / 申し上げます) là mức lịch sự **thấp** so với khách — đó chính là điểm sách muốn dạy là XẤU. Bản Việt dịch "Phiền anh nhé" thì "nhé" đã tải được sắc thái suồng sã, nhưng ở Hội thoại TỐT (L39) 「お願い申し上げます」 lại dịch là *"phiền anh xem giúp em ạ"* — người học so 2 bản Việt sẽ **không thấy khác biệt mức kính ngữ** mà sách đang dạy.

**Đề xuất:** thêm 1 dòng vào **Vì sao xấu** (L29) nêu rõ: *"Ngoài ra 「よろしくお願いします」 là mức lịch sự dùng cho đồng nghiệp; với khách phải là 「よろしくお願いいたします」 hoặc 「何卒よろしくお願い申し上げます」 như bản TỐT."* (Không cần đụng bản dịch.)

---

### 🟡 #10 — rule_03: thuật ngữ `SSID` dùng trong JA nhưng chỉ có ở checklist, không có ở hội thoại — không phải lỗi; nhưng `_thuat_ngu.md` thiếu 3 mục

`_thuat_ngu.md` khai đủ 27 viết tắt, nhưng các mục sau xuất hiện trong phạm vi D1 mà **không có trong bảng**:

| Viết tắt | Xuất hiện | Đề xuất bổ sung |
|---|---|---|
| `Zoom` | rule_02 L24/73, rule_04 khắp | Không cần (tên riêng sản phẩm) |
| `Teams` | rule_04 tiêu đề H1 | Không cần (tên riêng) |
| `TODO` | rule_01 L82, rule_13 L37, rule_16 | **Nên thêm**: TODO = việc cần làm sau họp |
| `Drive` | rule_04 L70, rule_05 L63 | Không cần |
| `Notion` | rule_04 L70 | Không cần |
| `RSVP` | có trong `_thuat_ngu.md` L29 ✅ nhưng **không xuất hiện ở rule_02** | Bảng khai "rule 02" — kiểm lại: rule_02 dùng 「返信期限」, không dùng chữ RSVP. Nhãn tham chiếu trong `_thuat_ngu.md` **sai** |

**Đề xuất:** (1) thêm `TODO` vào `_thuat_ngu.md`; (2) sửa dòng RSVP trong `_thuat_ngu.md` — bỏ "(rule 02)" hoặc thêm chữ RSVP vào rule_02.

---

### 🔵 #11 — rule_13 L37: ruby bọc cả katakana

**Trích:** `5月<ruby>スコープ協議<rt>スコープきょうぎ</rt></ruby>`

Ruby đúng cách đọc nhưng bọc luôn `スコープ` (katakana không cần furigana) → khi render sẽ hiện `スコープきょうぎ` lơ lửng trên `スコープ協議`, trông rối.

**Đề xuất:** `5月スコープ<ruby>協議<rt>きょうぎ</rt></ruby>`

Đã kiểm cả 18 rule — **chỉ 1 chỗ này**, không phải lỗi hệ thống.

---

### 🔵 #12 — rule_05 L26: nhãn vai chứa ruby, phá cấu trúc cột

**Trích:** `| **ハー (CTO、<ruby>終了<rt>しゅうりょう</rt></ruby>後)** |`

Nhãn vai của các rule khác đều là tên thuần (`**ズン**`, `**松本**`). Riêng đây nhét cả bối cảnh 「終了後」 + ruby vào cột Vai. Thông tin "sau khi họp xong" nên nằm ở dòng chỉ dẫn sân khấu (dòng `*…*` trên bảng, L19) như các rule khác làm.

**Đề xuất:** đổi nhãn thành `**ハー (CTO)**`, và bổ sung `終了後` vào dòng chỉ dẫn L19: `*火曜 14:30、会議30分前 · reply 5分後 · 15:00 開始 · 終了後*`.

---

### 🔵 #13 — rule_01: khung mẫu chứa `トゥアンリーダー`, mâu thuẫn nhẹ với rule_12

**rule_01 L76 (Khung mẫu Chương trình Họp):**
```
ティエンファット社：フオン副部長、ズン（司会）、トゥアンリーダー
```
**rule_12 L42 (Ghi chú 【1】):** 「KHÔNG nói 「フオン副部長」 trước khách」 — công thức đúng là 「弊社 [役職] の [氏名]」.

**Phán định:** ⚠️ **KHÔNG phải lỗi keigo** — đây là **văn bản agenda nội bộ**, không phải lời **nói** trước khách, và rule_12 chỉ cấm khi **giới thiệu miệng**. Trong agenda, ghi 「フオン副部長」 là bình thường.

**Nhưng** vẫn có rủi ro sư phạm: học viên đọc rule_01 trước rule_12, thấy 「トゥアンリーダー」 rồi rule_12 lại bảo 「トゥアンリーダー様」 sai → dễ suy diễn nhầm cả cụm 「トゥアンリーダー」 là sai.

**Đề xuất (tuỳ chọn, rủi ro thấp):** thêm 1 dòng vào ghi chú rule_12 【1】: *"Lưu ý: trong **văn bản** agenda/biên bản nội bộ vẫn ghi 「フオン副部長」 bình thường — quy tắc bỏ chức danh chỉ áp dụng khi **nói miệng** giới thiệu trước khách."*

---

## 3. Lỗi hệ thống (lặp nhiều rule)

| # | Lỗi | Số rule dính | Mức |
|---|---|---|---|
| S1 | **Không có quy ước ruby** — 117 kanji vừa ruby vừa trần | 15/18 rule (41 dòng "nặng") | 🔵 nhưng khối lượng lớn |
| S2 | **`ご` gắn vào hành động của chính mình** | rule_04 (L39,L45), rule_14 (L36,L42) — **2 rule** | 🔴 |
| S3 | **Tiếng Anh thay từ Việt trong bản dịch dù JA dùng từ Nhật** | rule_04, rule_05, rule_13, rule_16 — **4 chỗ + 1** | 🟡 |
| S4 | **Hán Việt lệch giữa các rule** | 画面共有, 頂戴 (vắt sang phần III/IV/V) | 🟡 |

**S1 lưu ý cho main Claude:** đừng để agent nào (kể cả tôi) đẩy S1 lên 🔴. Người học vẫn đọc được sách — đây là vấn đề **chất lượng đều tay**, không phải dạy sai.

---

## 4. 10 lỗi cần sửa gấp nhất

| Hạng | Rule | Dòng | Việc | Mức |
|---|---|---|---|---|
| 1 | rule_17 | 46 | `お続けください` là **尊敬語**, không phải "khiêm nhường" — sửa lời giải thích | 🔴 |
| 2 | rule_14 | 36, 42 | Bỏ `ご` trong 「ご確認させていただきます」 + viết lại ghi chú 【1】 (đang giải thích SAI) | 🔴 |
| 3 | rule_04 | 39, 45 | 「松本様にご確認しよう」 → bỏ `ご`; sửa ghi chú 【2】 | 🔴 |
| 4 | rule_06 | 42 | Đổi nhãn vai **リン** → **ズン** (chỉ 司会 mới tuyên bố khai mạc) | 🔴 |
| 5 | rule_04 | 38–40 | Sửa xưng hô Hải↔Dũng (đang "OK em" + "Anh gửi" trong 1 câu) + thêm "anh" trước Matsumoto | 🔴 |
| 6 | rule_05 | 3 ↔ 63 | Thống nhất ngưỡng file: 5MB (bỏ "10MB" ở phần Tránh) | 🔴 |
| 7 | rule_11 | 72, 73 | Hán Việt 名刺 = **DANH THÍCH** (không phải "DANH THIẾP") | 🟡 |
| 8 | rule_02 | 39 | Dịch lại 「お世話になっております」 + thêm ghi chú | 🟡 |
| 9 | rule_16, 13 | 34, 35, 37 | Bỏ "confirm"/"timeline" trong văn Việt | 🟡 |
| 10 | rule_04 | 91 | `画面共有` → **HOẠ** DIỆN CỘNG HỮU (khớp rule_36) | 🟡 |

---

## 5. CẤM SỬA — chỗ ĐÚNG dễ bị sửa nhầm

| # | Chỗ | Vì sao dễ bị sửa nhầm | Vì sao ĐÚNG |
|---|---|---|---|
| 1 | **rule_12 L23–26** — 4 ca `フオン副部長様` / `トゥアンリーダー様` | Trông y hệt lỗi 二重敬語 điển hình | Nằm trong khối `## Hội thoại XẤU — gọi nội bộ bằng 様`, có 松本 sửa lưng ngay L26. **Đã ghi ở `00_TIEN_DO.md` mục 2** — tôi xác nhận lại: đúng, đừng đụng. |
| 2 | **rule_12 — thứ tự 自社 → 他社** (L3, L6, L36–37, L50, L60) | Agent quen "khách trước, mình sau" theo lễ nghi Việt dễ báo là ngược | ✅ **Đã WebSearch kiểm chứng**: chuẩn Nhật là ①自社⇒他社 ②目下⇒目上. Sách ĐÚNG hoàn toàn. |
| 3 | **rule_12 L37** — 「大垣 営業部長様」 (chức danh + 様 cho khách) | Trông giống 二重敬語 「部長様」 | Khác hẳn: 「部長様」 dính liền mới sai. Ở đây chức danh đặt **sau tên, cách nhau bằng dấu cách** → hợp lệ. Ghi chú 【2】 L43 giải thích đúng. |
| 4 | **rule_16 L36** 「延長可否を**ご相談**させていただきます」 | Sau khi sửa lỗi #2 (bỏ `ご` ở rule_14), rất dễ "sửa cho đều" luôn chỗ này | 相談 là hành động **có đối phương tham gia** → `ご` là 謙譲語 hợp lệ, cùng loại 「ご連絡いたします」. ĐÚNG. |
| 5 | **rule_15 L34** 「ゴールを2点**ご共有**させていただきます」 | như trên | 共有 hướng tới đối phương → `ご` hợp lệ. ĐÚNG. |
| 6 | **rule_14 L42** cụm 「ご確認」 trong 「ご確認ください」 (nếu sửa thành dạng này) | — | Khi đề nghị **đối phương** xác nhận thì `ご確認` BẮT BUỘC có. Chỉ bỏ `ご` khi chủ ngữ là mình. |
| 7 | **rule_01 L76** 「トゥアンリーダー」 trong khung mẫu agenda | Sau khi đọc rule_12 dễ tưởng sai | Đây là **văn bản nội bộ**, không phải lời nói trước khách → hợp lệ. Xem #13. |
| 8 | **rule_11 L39** 「頂戴いたします」 | Có người cho là 二重敬語 (頂戴 + いたす) | Không phải — 頂戴 ở đây là danh từ サ変, 「頂戴いたします」 là cách nói chuẩn mực khi nhận danh thiếp. ĐÚNG. |
| 9 | **rule_09 L39** 「司会を務めさせていただきます」 | `させていただく` hay bị soi là lạm dụng | Đây là ca dùng ĐÚNG kinh điển: có yếu tố "được cho phép" (được giao vai 司会) + có lợi cho mình. ĐÚNG. |
| 10 | **rule_18 L38** 「弊社 副部長のフオン」 (không có 様) | Trông như quên kính ngữ | Đúng uchi/soto — nói về người công ty mình trước khách thì bỏ 様. Khớp rule_12. ĐÚNG. |
| 11 | **rule_06 L27** 「(内心：定刻 = ベトナム流かな)」 | Có thể bị coi là quy chụp nhóm người (rule feedback "KHÔNG nói người Việt") | Đây là **độc thoại nội tâm nhân vật Nhật**, đúng chức năng kịch — thể hiện hậu quả. Bản Việt cũng để trong ngoặc "(Trong bụng: …)". Giữ. *(Nếu chủ nhà vẫn muốn mềm đi thì đổi thành 「定刻ちょうど…かな」 — nhưng KHÔNG bắt buộc.)* |
| 12 | **19 kanji luôn để trần** (`茶 火 水 上 二 高 階`…) | Nếu chọn Hướng A ở mục 1.1 thì phải ruby cả nhóm này | Nếu chọn **Hướng B**, nhóm này để trần là ĐÚNG (N5). Đừng sửa trước khi chốt hướng. |

---

## 6. Ghi chú cho giai đoạn SỬA

### 6.1 Thứ tự sửa đề xuất (theo rule mục 8)
1. **Vòng 1 — máy móc:** #7 (Hán Việt 名刺), #10 (画面共有), #9 (bỏ tiếng Anh), #11 (ruby katakana), #12 (nhãn vai rule_05).
2. **Vòng 2 — tự mâu thuẫn:** #6 (5MB/10MB), #4 (vai khai mạc rule_06), #5 (xưng hô rule_04).
3. **Vòng 3 — keigo (cần đọc ngữ cảnh, KHÔNG replace mù):** #1, #2, #3. ⚠️ Nhớ danh sách CẤM SỬA mục 5 (#4, #5, #6) trước khi chạy bất kỳ sed nào trên chuỗi `ご〜させていただきます`.
4. **Vòng 4 — biên tập lớn:** S1 (quy ước ruby) — cần chủ nhà chốt Hướng A hay B, rồi chạy script cho **cả 50 rule**.

### 6.2 Việc vắt qua phạm vi agent khác (rule mục 6 — điểm mù)
Main Claude cần nối các mảnh sau:

| Việc | D1 (tôi) có gì | Cần D2/D3 kiểm gì |
|---|---|---|
| Hán Việt `頂戴` | rule_11 ghi **ĐỈNH ĐÁI** (đúng) | rule_26, rule_35 ghi **ĐÍNH ĐÁI** (sai) → sửa 2 chỗ đó, KHÔNG sửa rule_11/47 |
| Hán Việt `画面共有` | rule_04 ghi **HỌA** | rule_36 ghi **HOẠ** → chốt HOẠ, sửa rule_04 |
| Ngưỡng dung lượng file | rule_05 lệch 5MB/10MB nội bộ | phần III/IV/V + Phụ lục D có nhắc ngưỡng nào nữa không? |
| Quy ước ruby | 41 dòng "nặng" trong 18 rule | D2/D3 đếm tương tự cho 32 rule còn lại + 4 phụ lục → mới ra tổng để quyết Hướng A/B |
| `ご` + việc của mình | 2 ca ở rule_04, rule_14 | quét `ご確認し` / `ご確認させて` / `ご報告させて` ở phần III–V (nhớ strip ruby trước!) |
| `TODO` chưa có trong `_thuat_ngu.md` | rule_01/13/16 dùng | D3 (phụ trách nhất quán) bổ sung |
| Nhãn `RSVP (rule 02)` trong `_thuat_ngu.md` sai | rule_02 không dùng chữ RSVP | D3 sửa nhãn |

### 6.3 Cảnh báo khi build
Sửa xong phải build lại rồi grep kiểm trong `release/` — và **nhớ strip ruby trước khi grep** (rule mục 1.1). Cụ thể chuỗi 「確認させていただきます」 sau khi sửa sẽ bị ruby chen giữa nếu vòng 4 (quy ước ruby) chạy sau → grep thô sẽ trả 0 và tưởng chưa fix.

### 6.4 Những gì tôi ĐÃ KIỂM và thấy SẠCH (không cần đụng)
- **Cấu trúc khối:** 18/18 rule đủ `Luận điểm` + `Bối cảnh / 場面` + `Hội thoại XẤU` + `Hội thoại TỐT` + `Ghi chú【】` + `Câu chốt` + `Tránh` + `Bảng từ vựng`. Đồng dạng tốt.
- **Ruby sai cách đọc:** 0 ca (đã rà toàn bộ, xem mục 1.3).
- **二重敬語 thật:** 0 ca (4 ca `様` ở rule_12 là cố ý — đã xác nhận).
- **`当社` dùng nhầm chỗ `弊社`:** 0 ca — 18 rule chỉ dùng `弊社`, đúng.
- **さ入れ言葉 / お伺いさせていただく / 申させていただく:** 0 ca.
- **Số liệu / mốc thời gian:** ngày giờ trong 18 rule nhất quán tuyệt đối (4/28 15:00–16:00, agenda 10+15+25+10=60 phút khớp; rule_16 chia 15:00-15:10 / 15:10-15:25 / 15:25-15:50 / 15:50-16:00 cộng đúng 60 phút). Không có lỗi số học.
- **Ký tự lạ (giản thể / Hangul):** 0 ca.
- **Rule SẠCH hoàn toàn (không có phát hiện nào ngoài vấn đề ruby hệ thống):** **rule_07, rule_08, rule_09, rule_10, rule_15, rule_18** — 6/18 rule.
