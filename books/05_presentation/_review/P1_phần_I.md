# P1 — Báo cáo rà soát Phần I (rule_01 → rule_07)

> Sách 05 — Thuyết trình / プレゼンテーション
> Phạm vi: 7 file `nội_dung/phần_I/rule_*/rule.md`. KHÔNG đụng phần_II..V, conversation.json, script, phụ lục.
> Áp dụng `.claude/rules/book-review.md` trục A→F. Mọi kết luận "không có" đã strip ruby bằng python trước khi chốt.

---

## Bảng tổng kết

| Rule | 🔴 nặng | 🟡 vừa | 🔵 nhẹ | Ghi chú nhanh |
|---|---|---|---|---|
| rule_01 準備7問 | 0 | 1 | 1 | Sạch về nội dung nghề. Lỗi: `let me see` chen trong lời keigo; vocab 決裁者 không xuất hiện trong bài |
| rule_02 1スライド1メッセージ | 1 | 0 | 1 | 🔴 Số liệu 5%→1% mâu thuẫn với rule_03 (Phase 2 đã về 1.8%) |
| rule_03 ストーリーアーク | 1 | 1 | 1 | 🔴 `弊社の強み` dùng SAI khi nói nội bộ; dạy học viên phản xạ sai |
| rule_04 視覚階層 | 1 | 1 | 0 | 🔴 Tự mâu thuẫn 3 tầng cỡ chữ trong CÙNG file (18-22 / 20-24 / min 20) + lệch với rule_06 |
| rule_05 色彩心理 | 0 | 1 | 1 | Nội dung màu sắc chuẩn. Lỗi: tiêu đề "trong Tiếng Nhật công việc" dịch lệch; cam #E67E22 tương phản 2.85:1 |
| rule_06 密度ルール | 2 | 1 | 1 | 🔴 `川崎流` sai tên Guy Kawasaki · 🔴 phép tính thời gian trong khối XẤU sai |
| rule_07 バックアップ計画 | 0 | 0 | 2 | **Rule sạch nhất phần I.** Chỉ 2 điểm rất nhẹ |
| **TỔNG** | **5** | **5** | **7** | |

**Không có lỗi loại C (二重敬語 / 過剰敬語 / さ入れ言葉 / uchi-soto keigo) trong phần I** — trừ 1 ca 弊社/自社 ở rule_03 (xếp loại A vì hậu quả là dạy sai phản xạ nghề, không phải lỗi chia động từ).

**Không có lỗi loại D (sai sự thật)** ngoài 1 ca `川崎流` ở rule_06. Đã WebSearch kiểm chứng: font Meiryo/游ゴシック vs MS明朝 (ĐÚNG), SCQA ← Barbara Minto (ĐÚNG), WCAG 4.5:1 (ĐÚNG), tỷ lệ mù màu (ĐÚNG, không nêu số nên không sai).

---

## 🔴 MỨC NẶNG

### 🔴 #1 — rule_06 dòng 3 + 5: `川崎流` gán sai tên Guy Kawasaki (loại D — sai sự thật)

**Nguyên văn VN (d3):**
> **Luận điểm.** Quy tắc **10-20-30** của Guy Kawasaki: tối đa **10 slide / 20 phút / cỡ chữ tối thiểu 30pt** (cho bài thuyết trình tới người tiêu dùng).

**Nguyên văn JA (d5):**
> 10-20-30ルール (**川崎流**)。10枚以内・20分以内・最小30pt。

**Vấn đề — 2 lỗi chồng nhau:**

1. **`川崎流` là SAI.** Guy Kawasaki là người Mỹ gốc Nhật, tên ông trong tiếng Nhật **luôn viết katakana**: 「ガイ・カワサキ」. Viết `川崎` (kanji) biến ông thành một người Nhật tên Kawasaki — và tệ hơn, `川崎` là tên **thành phố Kawasaki** (Kanagawa) lẫn **hãng Kawasaki Heavy Industries**. Người Nhật đọc `川崎流` sẽ hiểu là "phong cách kiểu Kawasaki (địa danh/hãng)", hoàn toàn mất tham chiếu tới tác giả. Đã WebSearch: mọi nguồn tiếng Nhật đều dùng 「ガイ・カワサキ」 (ferret-plus, lifehacker.jp, note.com).
2. **"cho bài thuyết trình tới người tiêu dùng" là SAI.** Kawasaki viết rule 10/20/30 cho **pitch gọi vốn trước nhà đầu tư mạo hiểm (VC)**, và ông nói rõ nó áp dụng cho "any presentation to reach agreement: raising capital, making a sale, forming a partnership". Đây là ngữ cảnh **B2B**, không phải B2C/người tiêu dùng. Ghi chú 【1】 d40 lặp lại lỗi này: "Bản gốc dùng cho người tiêu dùng."

Lỗi #2 đặc biệt tai hại vì nó là **cơ sở lập luận** của cả rule: sách nói "bản gốc cho người tiêu dùng, nên B2B Nhật phải nới ra 24pt". Nhưng bản gốc VỐN ĐÃ là B2B pitch — lập luận nới lỏng mất chỗ dựa.

**Đề xuất sửa:**
- d5 JA: `10-20-30ルール (川崎流)` → `10-20-30ルール (ガイ・カワサキ提唱)`
- d3 VN: `(cho bài thuyết trình tới người tiêu dùng)` → `(nguyên gốc dành cho pitch gọi vốn trước nhà đầu tư)`
- d40 ghi chú【1】: `Bản gốc dùng cho người tiêu dùng.` → `Bản gốc dành cho pitch gọi vốn (VC) — ngắn và gắt hơn nhịp B2B Nhật.`

---

### 🔴 #2 — rule_06 dòng 23 + 26: phép tính thời gian trong khối XẤU sai, tự đá vào khối TỐT (loại B)

**Nguyên văn JA (d23) — Hà CTO:**
> 「**30分プレゼン＋15分Q&A**で14枚？1枚2分**超過**。**Q&A時間が消える**。」

**Nguyên văn VN (d23):**
> *30 phút thuyết trình + 15 phút Q&A mà 14 slide? Vượt 2 phút/slide. **Q&A sẽ biến mất**.*

**Nguyên văn VN (d26) — "Vì sao xấu":**
> 14 slide × 2 phút = 28 phút → **còn 2 phút cho Q&A**. Khách Nhật rất quý phần Q&A.

**Vấn đề — 3 lỗi số học chồng nhau:**

1. **`1枚2分超過` sai.** 30 phút ÷ 14 slide = **2,14 phút/slide**. Nhưng câu này nói nếu mỗi slide 2 phút thì đã vượt khung — mà đúng ra 14 slide × 2 phút = 28 phút, vẫn **nằm TRONG** 30 phút. Không hề vượt.
2. **`Q&A時間が消える` sai hoàn toàn.** Chính Hà CTO vừa nói khung là "30 phút thuyết trình **+ 15 phút Q&A**" — tức Q&A có **khung 15 phút RIÊNG**, không lấy từ 30 phút thuyết trình. Dù thuyết trình có tràn tới 30 phút thì Q&A vẫn còn nguyên 15 phút. Lời cảnh báo trở nên vô nghĩa.
3. **d26 "còn 2 phút cho Q&A"** lộ nguyên gốc lỗi: người viết tính 30 phút = TỔNG (thuyết trình + Q&A), quên mất chính mình đã ghi "30 phút + 15 phút Q&A" ngay dòng trên.

**Mâu thuẫn kéo sang khối TỐT.** Khối TỐT (d35 + công thức d55-66) tính theo khung **30 phút TỔNG** (20 phút chính + 3 phút mở + 7 phút Q&A = 30). Vậy hai khối trong **cùng một rule** dùng hai khung thời gian khác nhau (45 phút vs 30 phút) mà không hề nói là đã đổi.

**Thêm:** khung 30+15 ở khối XẤU **khớp với rule_01 d40** (`③時間=30分+15分Q&A`) — nên khối TỐT của rule_06 mới là chỗ lệch khỏi mạch truyện.

**Đề xuất sửa (chọn 1 trong 2 hướng, phải sửa đồng bộ JA+VN):**

- **Hướng A (khuyến nghị — giữ mạch rule_01):** thống nhất toàn rule_06 về khung **30 phút thuyết trình + 15 phút Q&A**.
  - d23 JA: `1枚2分超過。Q&A時間が消える。` → `本編14枚だと1枚2分で28分。質疑に入る前に息切れするし、appendix を出す余裕もない。`
  - d23 VN: `Vượt 2 phút/slide. Q&A sẽ biến mất.` → `14 slide × 2 phút = 28 phút, sát trần 30 phút. Không còn dư để xử lý sự cố hay mở phụ lục.`
  - d26: `14 slide × 2 phút = 28 phút → còn 2 phút cho Q&A.` → `14 slide × 2 phút = 28 phút — ăn trọn 30 phút, không còn biên an toàn. Chỉ cần khách chen 1 câu hỏi giữa chừng là tràn giờ.`
  - Công thức d56 `利用時間 = 30分` → `本編枠 = 30分 (別枠 Q&A 15分)`, và bỏ dòng `- Q&A: 7分 (確保)` khỏi phép trừ, hoặc:
- **Hướng B:** đổi khối XẤU về khung 30 phút TỔNG (`30分の枠で14枚？`) — nhưng khi đó phải sửa cả **rule_01 d40** để khớp, tức lan sang rule khác.

---

### 🔴 #3 — rule_04: tự mâu thuẫn cỡ chữ ngay TRONG CÙNG FILE, và đá với rule_06 (loại B)

Rule_04 nêu **ba bộ số khác nhau** cho cùng một thứ:

| Vị trí | Tiêu đề | Phần thân | Nhãn biểu đồ | Tối thiểu |
|---|---|---|---|---|
| d3 Luận điểm (VN+JA) | 32-40pt | **18-22pt** | — | — |
| d38 thoại (Dũng làm) | 36pt | **20pt** | — | — |
| d40 thoại (Dũng sửa nhãn) | — | — | **"20pt以上に上げます"** | — |
| d51 Câu chốt | 36-40pt | **20-24pt** | — | **min 20pt** |
| d62-65 Checklist | 32-40pt | **20-24pt** | **"18pt 以上"** | — |
| d90 Tránh | — | — | **"< 18pt"** | — |

**Nguyên văn d3 (JA):**
> 視覚階層は3段階。タイトル(32-40pt) > サブメッセージ(24-28pt) > **本文(18-22pt)**。

**Nguyên văn d51 (câu chốt):**
> 「タイトル36-40pt、**本文20-24pt、最小20pt**。」

**Vấn đề:**
1. **Phần thân: 18-22pt (d3) vs 20-24pt (d51, d65).** Luận điểm — thứ học viên đọc đầu tiên — cho phép 18pt, nhưng câu chốt (thứ học viên học thuộc) cấm dưới 20pt. Học viên làm slide 18pt theo luận điểm sẽ vi phạm chính câu chốt của rule.
2. **Nhãn biểu đồ: thoại d40 nói "20pt以上", checklist d65 nói "18pt 以上", mục Tránh d90 nói "< 18pt".** Ba con số cho một hạng mục, trong cùng một file. Dũng hứa nâng lên 20pt nhưng checklist chỉ đòi 18pt — học viên theo checklist sẽ không đạt điều Dũng vừa cam kết.
3. **Đá sang rule_06.** rule_06 d41 ghi chú【2】khẳng định thẳng: **`「最小24pt」— Rule 04 と整合`** ("khớp với rule 04"). Nhưng rule_04 không chỗ nào nói 24pt là tối thiểu — nó nói min 20pt (d51), thậm chí cho phép 18pt (d3). **Câu "Rule 04 と整合" là một khẳng định SAI về chính cuốn sách này.** Còn rule_02 d61 lại viết `< 24pt … vi phạm rule 06` — dùng ngưỡng của rule_06, không phải rule_04.

Đây đúng dạng lỗi B "sách tự mâu thuẫn" mà rule mục 4B liệt kê, và ở mức nghiêm trọng hơn ví dụ sách 08 (20 vs 25 cửa hàng) vì đây là **con số hướng dẫn thực hành** — học viên sẽ áp thẳng vào slide thật.

**Đề xuất sửa — chốt một bộ số duy nhất cho toàn sách:**

Đề xuất bộ: **Tiêu đề 32-40pt · Sub 24-28pt · Phần thân 24pt trở lên · Nhãn biểu đồ 18pt trở lên**
(lấy 24pt vì rule_06 đã chốt 24pt ở 3 chỗ — câu chốt d47, thoại d36, luận điểm d3 — nên rule_06 là bên nhất quán hơn, rule_04 nên chỉnh theo)

- rule_04 d3 JA: `本文(18-22pt)` → `本文(24pt以上)`; VN: `(3) Phần thân 18-22pt` → `(3) Phần thân từ 24pt`
- rule_04 d38: `本文20pt` → `本文24pt`; VN `phần thân 20pt` → `phần thân 24pt`
- rule_04 d39 JA `本文はギリギリ` → giữ được nếu phần thân là 24pt (24pt vẫn là mức sát trần) — hoặc đổi thành `本文もOK`
- rule_04 d51 câu chốt: `本文20-24pt、最小20pt` → `本文24pt以上、図表ラベルも18pt以上`; VN sửa đồng bộ
- rule_04 d64 checklist: `本文 (Bullet/根拠) 20-24pt` → `本文 (Bullet/根拠) 24pt 以上`
- rule_04 d40 thoại: `20pt以上に上げます` → `18pt以上に上げます` (khớp checklist d65 + mục Tránh d90); VN `chỉnh lên 20pt+` → `chỉnh lên 18pt+`. **Hoặc** ngược lại: nâng checklist d65 + d90 lên 20pt. Miễn là 3 chỗ về cùng 1 số.
- rule_06 d41 ghi chú【2】: giữ nguyên `Rule 04 と整合` — sau khi sửa rule_04 thì câu này mới thành ĐÚNG.

---

### 🔴 #4 — rule_03 d13, d23, d57: `弊社の強み` dùng SAI ngữ cảnh — dạy học viên phản xạ sai (loại A + C)

**Nguyên văn d23 (JA) — Dũng diễn thử NỘI BỘ trước chị Hương:**
> 「最初に**弊社の強み**3点をご紹介します。次にPhase 3 提案、最後に価格…」

**Nguyên văn d23 (VN):**
> *Đầu tiên em xin giới thiệu 3 điểm mạnh **bên Thiên Phát**. Tiếp đến là đề xuất Phase 3, cuối cùng là giá...*

**Nguyên văn d24 (JA) — Hương đáp lại:**
> 「ストップ。**自社の強みから**入る？それ vendor-first 順。」

**Vấn đề:**

Bối cảnh d19 ghi rõ `*リハーサル*` — **buổi diễn thử nội bộ**, Dũng nói với chị Hương, người **cùng công ty**. Trong tình huống này:
- `弊社` là **khiêm nhường ngữ, dùng khi nói với NGƯỜI NGOÀI công ty**. Nói `弊社` với đồng nghiệp cùng công ty là **thừa và không tự nhiên** — không cần hạ thấp công ty mình trước chính người nhà. Đã WebSearch xác nhận: 「社内で自分の会社を『弊社』とへりくだっていう必要はありません」.
- Chính Hương ở dòng ngay sau (d24) dùng **`自社`** — đúng chuẩn cho ngữ cảnh nội bộ / văn viết khách quan.

Tức **hai dòng liền nhau dùng hai từ khác nhau cho cùng một khái niệm, trong cùng một ngữ cảnh** — và từ SAI lại nằm ở dòng của nhân vật học viên đang bắt chước.

**Vì sao xếp mức NẶNG (loại A, không chỉ C):** rule mục 4C liệt kê `弊社 khiêm nhường / 当社 TRUNG TÍNH` là lỗi đã gặp ở sách khác. Ở đây hậu quả nặng hơn lỗi từ vựng đơn thuần: học viên đọc rule_03 sẽ ghi nhớ "khi nói về công ty mình thì dùng 弊社" và mang phản xạ đó vào họp nội bộ — chính là kiểu dùng mà người Nhật thấy gượng. Mục "Tránh" d57 lại lặp lại `弊社の強み` lần nữa, cố định hoá cách dùng sai.

**Điểm cộng cần giữ:** bản thân **nội dung dạy** của rule_03 (đừng mở đầu bằng điểm mạnh của mình, hãy đi SCQA) là ĐÚNG và có giá trị. Chỉ sai chỗ chọn từ.

**Đề xuất sửa:**
- d13 (Bối cảnh): `bắt đầu bằng "弊社の強み"` → `bắt đầu bằng "自社の強み"`
- d23 JA: `最初に弊社の強み3点を` → `最初に自社の強み3点を`
- d57 (Tránh): `Mở đầu bằng "弊社の強み"` → `Mở đầu bằng "自社の強み"`
- **Giữ nguyên d24** (`自社の強みから`) — đây là chỗ ĐÚNG.
- VN d23 `3 điểm mạnh bên Thiên Phát` → có thể giữ (tên công ty trong lời dịch là tự nhiên), hoặc đổi `3 điểm mạnh bên mình` cho khớp `自社`.

---

### 🔴 #5 — rule_02 d38 vs rule_03 d36: số liệu tồn kho mâu thuẫn giữa 2 rule (loại B)

**Nguyên văn rule_02 d38 (JA) — Hương khen tiêu đề slide của Dũng:**
> 「『Phase 3 で在庫差異を**月平均5%→1%**に削減』… うん、これなら**タイトルだけ読めば結論が分かる**。」

**Nguyên văn rule_02 d38 (VN):**
> *「Phase 3 giảm sai lệch tồn kho **từ 5%/tháng xuống 1%**」... ờ, thế này chỉ cần đọc tiêu đề là hiểu kết luận.*

**Nguyên văn rule_03 d36 (JA) — cùng bộ slide, cùng dự án, chỉ 1 rule sau:**
> 「Slide1: 白鷗様の在庫差異**5%**という現状(S)。Slide2: **Phase 2 で1.8%まで改善したが**、季節商品で再発(C)。」

**Nguyên văn rule_03 d36 (VN):**
> *Slide1: hiện trạng sai lệch tồn kho 5% bên Hakuō (S). Slide2: **Phase 2 cải về 1.8%** nhưng tái phát ở hàng theo mùa (C).*

**Vấn đề:**

Hai rule mô tả **cùng một bộ slide Phase 3**, nhưng:
- rule_02: Phase 3 sẽ giảm **5% → 1%**
- rule_03: Phase 2 **đã** giảm về **1.8%** rồi

Nếu Phase 2 đã đưa về 1.8% thì tiêu đề slide "5%→1%" của rule_02 là **cướp công của Phase 2** — Phase 3 thực chất chỉ cải từ 1.8% xuống 1%. Trước khách Hakuō (người biết rõ số của chính họ), một tiêu đề như vậy sẽ bị bắt lỗi ngay tại phòng họp, và đó đúng là kiểu "thổi phồng kết quả" mà rule_01 【2】 vừa dạy là **kỵ** (`Văn hóa công việc Nhật kỵ kiểu "hứa quá lời"`).

**Nghiêm trọng gấp đôi vì rule_02 dùng chính con số này làm MẪU CHUẨN** — nó là ví dụ duy nhất minh hoạ "tiêu đề dạng kết luận", được Hương khen là "chỉ đọc tiêu đề là hiểu". Học viên sẽ chép đúng khuôn này.

**Đề xuất sửa (sửa rule_02, vì rule_03 mới là bản có mạch SCQA đầy đủ và hợp lý hơn):**
- rule_02 d38 JA: `『Phase 3 で在庫差異を月平均5%→1%に削減』` → `『Phase 3 で季節商品の在庫差異を1.8%→1%に削減』`
- rule_02 d38 VN: `「Phase 3 giảm sai lệch tồn kho từ 5%/tháng xuống 1%」` → `「Phase 3 giảm sai lệch tồn kho hàng theo mùa từ 1.8% xuống 1%」`

*Lưu ý cho main Claude:* con số 5% / 1.8% có thể còn xuất hiện ở phần_II..V (ngoài phạm vi tôi). **Nên quét toàn sách trước khi sửa** — đây đúng kiểu "điểm mù vắt qua hai phạm vi" ở rule mục 6.

---

## 🟡 MỨC VỪA

### 🟡 #6 — rule_01 d40: `let me see` chen giữa câu keigo của cấp trên (loại E)

**Nguyên văn JA:**
> 「いいね、**let me see**... ①対象=大垣・松本、②決めたい=Phase 3 スコープ合意…」

**Nguyên văn VN:**
> *Tốt, **để chị xem**... ① đối tượng = Ōgaki + Matsumoto…*

**Vấn đề:** Đây là khối **Trường hợp TỐT** — mẫu để học viên bắt chước. `let me see` là tiếng Anh nguyên khối chen vào câu tiếng Nhật của **Phó phòng nói với cấp dưới trong công ty Việt**. Khác hẳn các từ Anh khác trong sách (`appendix`, `deck`, `single point of failure`, `alignment`) — những từ đó là **thuật ngữ nghề** đã nhập vào tiếng Nhật IT/business, còn `let me see` là **cụm hội thoại thường ngày**, tiếng Nhật có sẵn cách nói tự nhiên hơn.

Tôi **không** báo các từ `appendix / deck / Plan B / co-presenter / single point of failure / alignment / vendor-first` — theo cảnh báo trong prompt, đây là văn phong tự nhiên của dân IT/business Nhật. Chỉ `let me see` và `再audit` (xem #10) là bất thường.

**Đề xuất sửa:** `いいね、let me see...` → `いいね、どれどれ...` hoặc `いいね、拝見します...`. VN giữ nguyên "để chị xem".

---

### 🟡 #7 — rule_03 d3: dịch `情緒煽り` thành "kịch tính cao trào kiểu Mỹ" — quy chụp (loại E)

**Nguyên văn VN d3:**
> Khách Nhật bảo thủ thích nhịp này vì nó **không đẩy kịch tính cao trào như kiểu Mỹ**, chỉ dẫn dắt logic từ "đã biết" sang "cần quyết".

**Nguyên văn JA d3:**
> 日本顧客向けには**情緒煽りより論理誘導**が刺さる。

**Vấn đề:** Bản JA nói `情緒煽り` (khơi gợi cảm xúc) vs `論理誘導` (dẫn dắt logic) — một đối lập **về kỹ thuật trình bày**, trung tính. Bản VN thêm vào **"như kiểu Mỹ"** — không có trong bản Nhật, và là một quy chụp về quốc gia. Cùng dạng với ghi chú `feedback_khong_noi_nguoi_viet` trong nguyên tắc dự án: tránh quy chụp nhóm người.

Ngoài ra rule_12 (mục lục: "avoid US-style hype") cũng đi hướng này — nếu sửa thì nên xem cả rule_12, nhưng đó là phạm vi P2.

**Đề xuất sửa:** `không đẩy kịch tính cao trào như kiểu Mỹ` → `không khơi gợi cảm xúc dồn dập mà dẫn dắt bằng logic`.

---

### 🟡 #8 — rule_04 d3 + d5: khẳng định `明朝は projector で潰れる` đúng nhưng thiếu điều kiện (loại D — biên)

**Nguyên văn JA d5:**
> 日本語フォントはMeiryo/游ゴシック推奨、**明朝は projector で潰れる**。

**Kiểm chứng WebSearch:** Khẳng định **ĐÚNG về bản chất** — MS明朝 có nét ngang cực mảnh, khi chiếu bị "光飛び" làm mất nét ngang. Nguồn tiếng Nhật (科研費.com, ppt.design4u.jp) nói y hệt.

**Điểm cần lưu ý (không phải lỗi, nhưng nên biết):** cùng nguồn cũng cảnh báo **游ゴシック Regular hơi mảnh**, có thể mờ khi chiếu — sách khuyến nghị 游ゴシック mà không nói phải dùng **Bold/Medium**. Đây là thiếu sót nhỏ về độ chính xác thực hành, không phải sai sự thật.

**Đề xuất (tuỳ chọn):** checklist d68 `□ フォント統一: Meiryo / 游ゴシック / Noto Sans JP` → `□ フォント統一: Meiryo / 游ゴシック**Bold** / Noto Sans JP` — hoặc thêm 1 gạch đầu dòng vào mục Tránh: `游ゴシック Regular trên máy chiếu → hơi mảnh, dùng Bold/Medium`.

---

### 🟡 #9 — rule_05: tiêu đề H1 dịch lệch — "trong Tiếng Nhật công việc" (loại E)

**Nguyên văn d1:**
> `# Rule 05 — Tâm lý màu sắc trong Tiếng Nhật công việc / 色彩心理`

**Vấn đề:** Rule này nói về **màu sắc trong slide kinh doanh Nhật** — không liên quan gì tới "tiếng Nhật". Mục lục ghi brief là `Color psychology JP business` → `JP business` = "kinh doanh Nhật", bị dịch nhầm thành "Tiếng Nhật công việc". Ngoài ra `Tiếng Nhật` viết hoa chữ T giữa câu là sai chính tả tiếng Việt.

Đây là **H1 — dòng đầu tiên học viên nhìn thấy**, nên xếp mức vừa chứ không nhẹ.

**Đề xuất sửa:** `Tâm lý màu sắc trong Tiếng Nhật công việc` → `Tâm lý màu sắc trong kinh doanh Nhật` (hoặc `... trong slide kinh doanh Nhật`).

---

### 🟡 #10 — rule_06 d34: `再audit` — chen tiếng Anh trong khi vocab dạy 監査 (loại E + F)

**Nguyên văn JA d34:**
> 「10-20-30ルールで**再audit**しました【1】。本編10枚、appendix 5枚は質問対応用…」

**Nguyên văn VN d34:**
> *Em đã **rà soát lại** theo quy tắc 10-20-30 ạ.*

**Vấn đề — 2 lớp:**
1. **`再audit` là cách viết lai bất thường.** Ghép tiền tố kanji `再` + từ tiếng Anh viết chữ Latin không phải cách viết chuẩn trong văn business Nhật. Nếu muốn dùng từ ngoại lai thì viết katakana (`再オーディット`), nhưng tự nhiên hơn cả là dùng thẳng `見直しました` (đúng nghĩa "rà soát lại" của bản VN).
2. **Bảng từ vựng d87 dạy `監査 | かんさ | GIÁM TRA | Kiểm tra / soát xét`** — nhưng chữ `監査` **không xuất hiện ở bất kỳ đâu trong thân bài** (đã strip ruby kiểm tra). Học viên tra bảng từ vựng để hiểu thoại sẽ không tìm thấy điểm neo. Đúng dạng lỗi mục 5.3 của rule ("vá thoại, quên bảng từ vựng").

Thêm nữa: `監査` nghĩa là **kiểm toán / thanh tra chính thức** (kế toán, ISO), **không phải** "tự rà lại bộ slide của mình". Dùng `監査` ở đây sẽ nặng nề sai ngữ cảnh — nên **không nên** sửa thoại thành `監査`.

**Đề xuất sửa:**
- d34 JA: `10-20-30ルールで再audit しました` → `10-20-30ルールで見直しました`
- Bảng từ vựng d87: bỏ dòng `監査`, thay bằng `見直す | みなおす | KIẾN TRỰC | Rà soát lại / xem lại` — vừa khớp thoại vừa đúng ngữ cảnh.

---

## 🔵 MỨC NHẸ

### 🔵 #11 — rule_01 d116: vocab `決裁者` không xuất hiện trong bài (loại F)

Bảng từ vựng dạy `決裁者 | けっさいしゃ | QUYẾT TÀI GIẢ | Người ra quyết định`, nhưng thân bài không có chữ này. Chỗ tương ứng trong checklist d65 dùng **`不在の意思決定者`** (`意思決定者`, không phải `決裁者`).

Hai từ **không đồng nghĩa hoàn toàn**: `決裁者` = người có **quyền phê duyệt chính thức** (ký duyệt); `意思決定者` = người **ra quyết định** (rộng hơn). Trong ngữ cảnh 稟議 của công ty Nhật, phân biệt này có ý nghĩa thật.

**Đề xuất:** đổi vocab thành `意思決定者 | いしけっていしゃ | Ý TƯ QUYẾT ĐỊNH GIẢ | Người ra quyết định` để khớp checklist; **hoặc** giữ `決裁者` và bổ sung nó vào checklist d65 (`- 決裁者(承認権限者): ____`) — cách này còn dạy thêm được sự khác biệt.

### 🔵 #12 — rule_03 d72: vocab `隠す` không xuất hiện trong bài (loại F)

Bảng từ vựng dạy `隠す | かくす`, nhưng thân bài dùng dạng **`隠さない`** (d37: `隠さない方が信頼される`) và ghi chú d43 dùng bản dịch VN "Che giấu". Không sai — chỉ là dạng từ điển vs dạng phủ định trong bài. Mức rất nhẹ, có thể bỏ qua.

**Đề xuất (tuỳ chọn):** giữ nguyên, hoặc ghi `隠す (隠さない)` cho học viên dễ nối.

### 🔵 #13 — rule_02 d59: "não chỉ giữ được 3 ± 1" — con số không có nguồn (loại D — biên)

**Nguyên văn:**
> 1 slide chứa 5-7 gạch đầu dòng — não chỉ giữ được **3 ± 1**

**Vấn đề:** Con số kinh điển trong tâm lý học nhận thức là **7 ± 2** (Miller 1956), sau này Cowan (2001) hiệu chỉnh xuống **4 ± 1**. `3 ± 1` không khớp với công trình nào phổ biến. Ghi chú【2】d44 cũng nói `3点ルールは認知負荷の上限` mà không dẫn nguồn.

**Không xếp mức nặng vì:** "quy tắc 3 điểm" là **quy ước thực hành** trong nghề thuyết trình, được dùng rộng rãi và hợp lý. Vấn đề chỉ là **gán cho nó một con số nghe như khoa học** (`3 ± 1`) trong khi không có nguồn.

**Đề xuất:** `não chỉ giữ được 3 ± 1` → `người nghe chỉ giữ được khoảng 3 ý khi vừa nghe vừa nhìn slide` (bỏ dạng ± cho khỏi giống trích dẫn khoa học). Hoặc nếu muốn giữ con số học thuật thì dùng `4 ± 1` và ghi rõ nguồn Cowan.

### 🔵 #14 — rule_05 d38: cam `#E67E22` tương phản chỉ 2.85:1, đá với checklist rule_04 (loại B nhẹ)

**Nguyên văn rule_05 d38:**
> 「**CTAだけオレンジ**(#E67E22)で目立たせます。」

**Đối chiếu rule_04 d76 checklist:**
> `□ コントラスト比: 文字vs背景 4.5:1 以上`

**Đo thực tế (tôi tính bằng công thức WCAG relative luminance):**

| Màu | vs nền trắng | vs nền #F5F5F5 |
|---|---|---|
| Navy `#1E3A5F` | 11.50:1 ✅ | 10.55:1 ✅ |
| Charcoal `#3A3A3A` | 11.37:1 ✅ | 10.43:1 ✅ |
| Xanh Hakuō `#4A90C2` | 3.47:1 ⚠️ | 3.18:1 ⚠️ |
| Cam CTA `#E67E22` | **2.85:1** ❌ | **2.61:1** ❌ |

**Vấn đề:** Nếu dùng `#E67E22` làm **chữ** trên nền trắng/xám nhạt thì trượt chuẩn 4.5:1 mà chính rule_04 đặt ra. Tương tự `#4A90C2`.

**Nhưng — quan trọng:** thoại nói rõ `CTA**ボタン**` (nút CTA), tức cam dùng làm **màu nền của nút**, chữ trên nút thường là **trắng**. Trắng trên `#E67E22` = 2.85:1, vẫn dưới 4.5:1 nhưng nút CTA là **thành phần đồ hoạ**, WCAG chỉ đòi **3:1** cho non-text UI component — sát ngưỡng, không phải vi phạm rõ ràng.

**Nên xếp mức NHẸ** vì đây là màu sắc cho slide thuyết trình (không phải web app phải đạt chuẩn), và cách dùng (màu nền nút) khác cách tính (màu chữ).

**Đề xuất (tuỳ chọn, không bắt buộc):** thêm 1 dòng vào mục Tránh rule_05: `- Dùng màu nhấn làm màu CHỮ trên nền sáng → cam/xanh nhạt tương phản thấp, chỉ nên làm màu NỀN của nút hoặc khối nhấn`. Việc này còn nối đẹp với dòng d61 hiện có về mù màu.

### 🔵 #15 — rule_07 d43: lẫn tiếng Nhật vào ghi chú tiếng Việt + double space (loại F)

**Nguyên văn d43:**
> 【1】**「Plan B チェックリスト」** — 24h trước buổi trình bày kiểm tra 1 lượt, sáng ngày trình bày kiểm tra lần cuối. **5項目全部  で安心**.

**Vấn đề:** Cả ghi chú viết tiếng Việt, riêng vế cuối `5項目全部  で安心` là tiếng Nhật chưa dịch — và có **2 dấu cách liên tiếp** giữa `全部` và `で` (đúng dấu vết emoji bị strip, rule mục 4F). Câu `5項目全部で安心` cũng hơi lủng củng ngay cả trong tiếng Nhật.

**Đề xuất sửa:** `5項目全部  で安心.` → `Đủ cả 5 mục thì mới yên tâm.`

### 🔵 #16 — rule_07 d80: `Lightning → HDMI (iPad backup用)` — iPad đời mới đã bỏ Lightning (loại D nhẹ)

**Nguyên văn checklist d80:**
> `□ Lightning → HDMI (iPad backup用)`

**Vấn đề:** Từ 2018 iPad Pro, và từ 2022 toàn bộ dòng iPad (kể cả iPad thường gen 10) đã chuyển sang **USB-C**. Bối cảnh sách là **tháng 5/2026** (rule_01 d14) — một chiếc iPad còn cổng Lightning ở thời điểm đó là máy đã 4+ năm tuổi. Checklist vẫn đúng cho máy cũ, chỉ là không còn là trường hợp mặc định.

**Đề xuất sửa:** `□ Lightning → HDMI (iPad backup用)` → `□ USB-C → HDMI (iPad/タブレット backup用 ※旧機種は Lightning)`.

### 🔵 #17 — rule_02 d61: cross-ref ngưỡng font trỏ sang rule_06 thay vì rule_04 (loại F)

**Nguyên văn:**
> - Phần thân có chữ nhỏ **< 24pt** để nhồi nội dung — **vi phạm rule 06**

**Vấn đề:** Ngưỡng cỡ chữ là chủ đề của **rule_04 (視覚階層・フォント)**; rule_06 là về **mật độ (số slide / thời gian)** và chỉ nhắc 24pt như một hệ quả. Trỏ sang rule_06 không sai hẳn (rule_06 có nói 24pt), nhưng trỏ rule_04 chính xác hơn.

Vấn đề này **sẽ tự hết** nếu sửa #3 (thống nhất rule_04 về 24pt). Khi đó nên đổi thành `vi phạm rule 04`.

**Đề xuất:** sau khi xử lý #3 → `vi phạm rule 04` (hoặc `rule 04 + 06`).

---

## Ngoài phạm vi — GHI NHẬN, KHÔNG SỬA

### Mục lục vs H1 — lệch 6/7 ở cột VN, khớp 7/7 ở cột JP

Đúng như main Claude đã đo và chẩn đoán trong `00_TIEN_DO.md` (mục lục là bản **chưa Việt hoá**). Chi tiết riêng phần I:

| # | `meta/mục_lục.md` (cột Tên VN) | H1 trong rule.md | |
|---|---|---|---|
| 01 | Checklist 7 câu hỏi trước khi soạn | Danh sách 7 câu hỏi trước khi soạn | lệch |
| 02 | Quy tắc 1-slide-1-message | Quy tắc mỗi slide một thông điệp | lệch |
| 03 | Đường mạch câu chuyện (SCQA) | Đường mạch câu chuyện (SCQA) | **khớp** |
| 04 | Visual hierarchy & font | Phân cấp thị giác & phông chữ | lệch |
| 05 | Color psychology JP business | Tâm lý màu sắc trong Tiếng Nhật công việc | lệch (xem #9) |
| 06 | Density rule (10-20-30) | Quy tắc mật độ (10-20-30) | lệch |
| 07 | Backup plan (Plan B) | Phương án dự phòng (Plan B) | lệch |

**Cột Tên JP: khớp 7/7** — xác nhận đây là một lỗi hệ thống duy nhất (mục lục chưa Việt hoá), **không phải 6 lỗi riêng lẻ**. Hướng sửa của main Claude (đồng bộ mục lục theo H1) là đúng — **nhưng lưu ý rule 05**: nếu chép H1 hiện tại vào mục lục thì sẽ chép luôn bản dịch sai. **Phải sửa #9 TRƯỚC, rồi mới đồng bộ mục lục.**

### `_front_matter.md` d21 — hứa 4 phụ lục

> **Phụ lục:** A (tổng hợp mẫu câu), B (từ vựng), C (luyện BJT 35 câu), D (tổng hợp mẫu).

A và D mô tả gần trùng nhau ("tổng hợp mẫu câu" vs "tổng hợp mẫu"), trong khi `meta/mục_lục.md` d106-109 ghi rõ hơn: A = Script template, D = Templates tổng hợp. Không kiểm được phụ lục thật (ngoài phạm vi). **Ghi nhận để main Claude đối chiếu.**

### `meta/STATUS.md` d48 khai đã fix `100%发生` ở rule_06

> `rule_06: 100%发生 (Chinese) → 100% sẽ xảy ra`

**Đã kiểm chứng: FIX RỒI, ĐÚNG.** rule_06 d72 hiện là `→ phình số slide, **100% sẽ xảy ra** nếu không siết chặt` — không còn ký tự giản thể. Đã quét cả 7 file, **0 ký tự Trung giản thể / Hangul**.

Tuy nhiên STATUS.md khai `Auto-review: 0 issues` và `Sẵn sàng ship` — trong khi phần I có **5 lỗi mức nặng**. Đúng cảnh báo rule mục 5: **đừng tin STATUS.md**.

---

## ⛔ DANH SÁCH CẤM SỬA — chỗ ĐÚNG nhưng dễ bị sửa nhầm

| # | Vị trí | Trông có vẻ sai | Thực tế ĐÚNG — đừng đụng |
|---|---|---|---|
| 1 | rule_03 d24 `自社の強みから入る？` | Chỗ khác dùng `弊社`, tưởng phải đồng bộ hết thành `弊社` | **`自社` mới ĐÚNG** cho ngữ cảnh nội bộ / khách quan. Phải sửa `弊社` ở d13/d23/d57 **theo** d24, không phải ngược lại (xem #4) |
| 2 | rule_01 d39 `レビューいただけますでしょうか` | Trông như 二重敬語 (`いただけます` + `でしょうか`) | **ĐÚNG.** Đã WebSearch: `いただけますでしょうか` là kết hợp khiêm nhường + đoán định, không phải 二重敬語. Nguồn: eigobu.jp, dime.jp |
| 3 | rule_06 d41 `Rule 04 と整合` | Sau khi đọc #3 sẽ thấy câu này SAI | **Đừng xoá câu này.** Nó sẽ thành ĐÚNG sau khi sửa rule_04 về 24pt. Xoá là mất luôn cross-ref hữu ích |
| 4 | rule_04 d3-d5 khuyến nghị Meiryo/游ゴシック, cấm MS明朝 | Nghe như định kiến chủ quan | **ĐÚNG, đã WebSearch xác nhận.** MS明朝 nét ngang mảnh bị 光飛び khi chiếu. Nguồn: 科研費.com, ppt.design4u.jp |
| 5 | rule_03 d3 gán SCQA cho Minto Pyramid | Nghe như gán bừa tác giả | **ĐÚNG.** SCQA do Barbara Minto (McKinsey) đưa ra trong *The Pyramid Principle*, dùng cho phần dẫn nhập. Nguồn: barbaraminto.com, modelthinkers.com |
| 6 | rule_05 d61 nhắc người mù màu | Trông như chi tiết thừa, dễ bị cắt cho gọn | **GIỮ.** ~5% nam giới Nhật (1/20) có color vision deficiency — lời khuyên "đừng mã hoá chỉ bằng màu" là chính xác và có giá trị thực hành cao |
| 7 | rule_04 d76 `コントラスト比 4.5:1 以上` | Trông như con số bịa | **ĐÚNG** — chuẩn WCAG 2 AA cho chữ thường. (Chữ lớn ≥18pt chỉ cần 3:1, nhưng đặt 4.5:1 cho toàn bộ là an toàn) |
| 8 | rule_05 d36 hex `#1E3A5F` / `#3A3A3A` | Dễ bị "làm đẹp" thành màu khác | **Cả hai đạt >10:1** trên nền trắng lẫn #F5F5F5. Là lựa chọn tốt, đừng đổi |
| 9 | Các từ Anh: `appendix`, `deck`, `Plan B`, `co-presenter`, `single point of failure`, `alignment`, `vendor-first`, `slide`, `demo` | Trông như tiếng Anh thừa cần Việt hoá / Nhật hoá | **GIỮ NGUYÊN.** Đều là thuật ngữ nghề đã chuẩn trong môi trường IT/business (cả Nhật lẫn Việt). Chỉ `let me see` (#6) và `再audit` (#10) là bất thường |
| 10 | rule_06 d76 `24pt cho phần thân trên máy chiếu vẫn hơi nhỏ → kiểm tra thực tế` | Trông như mâu thuẫn với chính câu chốt 24pt của rule_06 | **KHÔNG mâu thuẫn** — đây là lời nhắc "24pt là sàn, không phải mức thoải mái". Là lời khuyên tốt, giữ |
| 11 | rule_01 【2】 `Văn hóa công việc Nhật kỵ kiểu "hứa quá lời"` | — | **ĐÚNG và quan trọng.** Chính nguyên tắc này là căn cứ để bắt lỗi #5 (số 5%→1%) |
| 12 | rule_07 toàn bộ | — | **Rule sạch nhất phần I.** Nội dung nghề chuẩn, tiếng Nhật ổn, checklist thực dụng. Chỉ 2 điểm rất nhẹ (#15, #16). Đừng "sửa cho có" |

---

## Kết luận

**Phần I không có lỗi loại A kinh điển** (không dạy làm việc gây hại, không nhận trách nhiệm sớm, không lời khuyên rủi ro sức khoẻ). Nội dung nghề về thuyết trình **về cơ bản là đúng và có giá trị** — SCQA, 1-slide-1-message, bảng màu bảo thủ, Plan B 5 lớp đều là lời khuyên chuẩn.

**Trục lỗi chính là B (tự mâu thuẫn) — 3/5 lỗi nặng:**
- #3 cỡ chữ (rule_04 mâu thuẫn với chính nó ở 3 chỗ + với rule_06)
- #2 phép tính thời gian (rule_06 khối XẤU vs khối TỐT vs rule_01)
- #5 số liệu tồn kho (rule_02 vs rule_03)

Cả ba đều là **con số hướng dẫn thực hành** — học viên áp thẳng vào slide thật, nên hậu quả lớn hơn lỗi chữ nghĩa.

**Thứ tự sửa đề xuất** (theo rule mục 8):
1. **Vòng 1 (máy móc):** #1 `川崎流`→`ガイ・カワサキ`, #9 tiêu đề rule_05, #10 `再audit`, #6 `let me see`, #15 double-space, #16 Lightning
2. **Vòng 2 (mâu thuẫn số):** #3 chốt bộ cỡ chữ toàn sách → #2 chốt khung thời gian → #5 chốt số tồn kho (**quét toàn sách trước**, không chỉ phần I)
3. **Vòng 3 (từ ngữ nghề):** #4 `弊社`→`自社`
4. **Vòng 4 (meta):** đồng bộ mục lục — **sau khi** đã sửa #9

**Cảnh báo cho main Claude:** lỗi #5 (số 5% / 1.8%) và #3 (cỡ chữ 24pt) **gần như chắc chắn vắt sang phần_II..V**. Trước khi sửa phải quét toàn sách (strip ruby), nếu không sẽ thành "fix nửa vời" đúng như rule mục 5.

---

*P1 — rà soát phần_I (7/7 rule). Ghi ngày 2026-08-15.*
