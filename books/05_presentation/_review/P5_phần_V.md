# P5 — Báo cáo rà soát Phần V + Nhất quán toàn sách

**Sách:** Hizashi 05 — Thuyết trình / プレゼンテーション (v1.1)
**Phạm vi:** 7 rule phần V (rule_29 → rule_35) + `meta/mục_lục.md`, `nội_dung/_front_matter.md`, `nội_dung/_back_matter.md`
**Trục rà soát:** A→F theo `.claude/rules/book-review.md` mục 4
**Ngày:** 2026-08-15

---

## TÓM TẮT ĐIỀU HÀNH

| Mức | Số lượng | Ghi chú |
|---|---|---|
| 🔴 Nặng | 3 | 1 keigo sai (r33), 1 mâu thuẫn số liệu XUYÊN SÁCH (r19 vs 5 rule khác — **ngoài phạm vi tôi, chỉ báo cáo**), 1 phụ lục kế thừa khung sách 02 (**ngoài phạm vi, chỉ báo cáo**) |
| 🟡 Vừa | 4 | fix nửa vời r31 (vocab), vocab thừa r30, logic số r34, cross-ref mục lục lệch |
| 🔵 Nhẹ | 3 | thuật ngữ 2 cách gọi, mục lục chưa Việt hoá, front matter mô tả cast hơi quá |

**7 rule phần V nhìn chung CHẤT LƯỢNG TỐT.** Nội dung nghiệp vụ thuyết trình chính xác, không có lời khuyên gây hại (trục A), không tự mâu thuẫn nội bộ trong phần V (trục B). Lỗi thật tập trung ở **1 chỗ keigo** và **các vấn đề meta/nhất quán**.

**Không phát hiện:** lỗi trục A (dạy làm sai việc thật) · lỗi trục D (sai sự thật về Nhật/VN) · lỗi ký tự lạ (chữ Trung/Hangul) · lỗi bug ruby-loss (mục 1.3).

---

# PHẦN 1 — 7 RULE CỦA PHẦN V

## Rule 29 — Thuyết trình trực tuyến / オンラインプレゼン

**Trạng thái: ✅ SẠCH.** Không phát hiện lỗi nội dung.

Đã kiểm và xác nhận ĐÚNG:
- Nội dung 5 yếu tố (camera 目線 / lighting / 声 +20% / ピンマイク / 背景クリーン) khớp thực hành nghiệp vụ chuẩn của Nhật. Khuyến nghị ピンマイク cho người vừa nói vừa di chuyển là chuẩn ngành.
- Ghi chú 【3】 "Khách Nhật rất hiếm khi bật mic hỏi → chat là kênh chính" — đúng thực tế văn hoá họp trực tuyến Nhật.
- Keigo trong thoại: sạch. `お願いしました` / `させていただきます` dùng đúng ngữ cảnh.
- Vocab table 7/7 từ đều xuất hiện trong thân bài.

🔵 **NHẸ — L39 + L40: hai lối gọi khác nhau cho cùng khái niệm**

```
L39: 「①外付け webcam を本棚で目線に上げ」
     *① Camera rời kê lên kệ sách ngang mắt*
L40: 「目線が natural」
     *đường nhìn (eye line) tự nhiên*
```

**Vấn đề:** `目線` cùng một từ, VN dịch chỗ "ngang mắt" chỗ "đường nhìn (eye line)". Bảng từ vựng lại dịch `カメラ目線` = "Giao tiếp bằng mắt qua camera" (cách gọi thứ 3).
**Đề xuất:** thống nhất "hướng nhìn / tầm mắt". Không bắt buộc — cả 3 đều dễ hiểu, chỉ là mượt hơn nếu đồng bộ.

---

## Rule 30 — Thuyết trình kết hợp / ハイブリッドプレゼン

**Trạng thái: 🟡 1 lỗi VỪA (bảng từ vựng).**

🟡 **VỪA — L83: từ vựng `優先する` KHÔNG xuất hiện trong thân bài**

```
| 優先する | ゆうせんする | ƯU TIÊN | Ưu tiên |
```

**Vấn đề:** Tôi đếm số lần `優先` xuất hiện trong toàn bộ thân bài rule 30 (đã strip ruby) = **0**. Đây là từ vựng "mồ côi" — học viên tra bảng không tìm được ngữ cảnh.
**Nguồn gốc:** đây chính là hệ quả của fix v1.1 ghi trong `STATUS.md`: *"rule_30: vocab プライオリタイズ → 優先する (yuusen suru)"*. Fix đã **sửa đúng chỗ sai** (プライオリタイズ là katakana-eigo vụng), nhưng từ này vốn dĩ **chưa bao giờ có trong thoại** — nên sửa xong vẫn mồ côi.
**Đề xuất:** hoặc (a) bỏ dòng này khỏi bảng, hoặc (b) đưa `優先` vào thoại — ghi chú 【1】 nói "trực tuyến cảm thấy được ưu tiên" là chỗ tự nhiên để chèn `オンライン参加者を優先する`.

Đã kiểm và xác nhận ĐÚNG (không phải lỗi):
- 6 từ còn lại (ハイブリッド / 室内 / 復唱 / 切替 / 達成率 / クリア) đều có mặt trong thân bài.
- Quy tắc 50/50, chào trực tuyến trước, lặp lại câu hỏi từ phòng — đều là best practice hybrid chuẩn.
- `「大垣様より『Phase 2 KPI 達成率』のご質問でございます」` — keigo đúng: `より` chỉ nguồn, `ご質問` là việc của KHÁCH (đúng, không phải 過剰敬語).
- Bối cảnh (大垣+田中 offline / 松本+ハー online) **khớp hoàn toàn** với bối cảnh rule 31. Mạch truyện liền.

---

## Rule 31 — Xử lý sự cố kỹ thuật / 技術トラブル復旧

**Trạng thái: 🟡 1 lỗi VỪA (fix nửa vời theo mục 5).**

🟡 **VỪA — L80: FIX NỬA VỜI — vocab còn giữ chuỗi đã bị thay ở thoại**

`STATUS.md` dòng 40 khai fix v1.1:
> `rule_31: お騒がせしました → ご迷惑をおかけし、申し訳ございませんでした`

Kiểm chứng (đã strip ruby):
- Thân bài: `お騒がせ` = **0 lần** · `ご迷惑をおかけし` = **1 lần** (L43) → ✅ **JA ĐÃ FIX**
- Bảng từ vựng L80: **vẫn còn**

```
| お騒がせ | おさわがせ | — | Phiền hà / xáo trộn |
```

**Kết luận: FIX NỬA VỜI** — đúng kiểu hụt số 3 ở mục 5 của rule ("vá thoại, quên bảng từ vựng"). Từ `お騒がせ` giờ là từ mồ côi, và tệ hơn: sách vừa **dạy tránh** cách nói đó ở thoại lại vừa **liệt kê nó** trong bảng học từ.
**Đề xuất:** thay dòng vocab thành `ご迷惑をおかけする | ごめいわくをおかけする | MÊ HOẶC | Làm phiền / gây bất tiện`.

Đã kiểm và xác nhận ĐÚNG (không phải lỗi):
- **Số học giá khớp:** 720 + 280 + 200 = **1200万円** ✅ đúng khớp tổng nêu trong cùng câu.
- Chuỗi 3 bước acknowledge → switch → entertain là quy trình xử lý sự cố chuẩn, không có lời khuyên rủi ro.
- Mục "Tránh" có dòng *"Đổ lỗi hạ tầng (白鷗のネットが…) → đổ lỗi khách = làm khách mất mặt"* — **rất tinh tế và đúng**, đây là điểm mạnh của rule.
- Cụm `申し訳ございません、ネットワークトラブルが発生しております` — keigo đúng, `発生しております` là 丁寧語 của 発生している, không phải 二重敬語.
- 6 từ vocab còn lại đều có trong thân bài.

---

## Rule 32 — Bàn giao giữa người đồng trình bày / 共同プレゼンの引き継ぎ

**Trạng thái: ✅ SẠCH.** Không phát hiện lỗi nội dung.

Đã kiểm và xác nhận ĐÚNG:
- **Uchi/soto xử lý CHUẨN.** Hội thoại XẤU L24 để Hà tự xưng `ティエンファット社 CTO のハーと申します`; hội thoại TỐT L37 Dũng giới thiệu Hà bằng `弊社 CTO ハー より` — bỏ `さん`, dùng `弊社`. Đây đúng chính xác luật uchi/soto (mục 4C của rule). Khớp với fix v1.1 ghi trong STATUS (`rule_28: ティエンファット社 → 弊社`), cho thấy fix đã áp dụng nhất quán.
- L40: Hà nói `次のロードマップは再度 ズンより ご説明いたします。ズンさん、お願いします` — dùng `ズン` không `さん` khi nói VỚI KHÁCH, rồi `ズンさん` khi quay sang gọi trực tiếp đồng nghiệp. **Đây là cách dùng ĐÚNG và tinh tế**, xin đừng "sửa cho nhất quán".
- `改めまして、ハーでございます` — khớp fix v1.1 STATUS dòng 42. ✅ ĐÃ FIX, không nửa vời.
- Vocab 7/7 hợp lệ. `バトンタッチ` tuy không có trong thoại rule này nhưng CÓ trong mục lục brief rule 32 (`Verbal handoff "それでは、ハーCTOにバトンタッチ"`) → chấp nhận được, không tính lỗi.

---

## Rule 33 — Quay video + chia sẻ / 録画と共有

**Trạng thái: 🔴 1 lỗi NẶNG (keigo).**

🔴 **NẶNG — L44: `山田部長様` = 二重敬語 (trục C)**

```
| **ズン** | 「録画 raw 1時間20分 → …いたしました【3】。Drive 閲覧専用リンクで
  田中様 + 山田部長様 の Email 限定 access、30日後 自動 expire です。」
```
> *…Link Drive chỉ-xem, giới hạn email anh Tanaka + sếp Yamada, tự động hết hạn sau 30 ngày ạ.*

**Vấn đề:** `部長` bản thân đã là **敬称** (kính xưng). Ghép thêm `様` thành `部長様` là **二重敬語** — đúng mẫu lỗi đã liệt kê ở mục 4C của rule (`部長様`, `社長様`).

Đã WebSearch kiểm chứng: nguồn tiếng Nhật thống nhất `〜部長様` / `〜課長様` là sai; dạng đúng là `山田部長` (họ + chức danh) **hoặc** `山田様` (họ + 様), **không ghép cả hai**.

**Bằng chứng nội bộ củng cố:** chính rule 33 dùng đúng `山田部長` (không `様`) ở **4 chỗ khác** — L13 (bối cảnh), L23, L38, L41. Chỉ **duy nhất L44 sai** → đây là lỗi sót cục bộ, không phải quy ước của sách.

**Đề xuất sửa:** `山田部長様` → `山田部長` (thống nhất với 4 chỗ còn lại trong cùng rule).

Đã kiểm và xác nhận ĐÚNG (không phải lỗi):
- **Nội dung nghiệp vụ về quyền riêng tư/bảo mật rất tốt.** Quy trình xin phép trước → xin đồng ý toàn phòng → cắt phần bảo mật → Drive giới hạn + hết hạn là chuẩn compliance. Không có lời khuyên rủi ro.
- Điểm mạnh đặc biệt: hội thoại XẤU cho 大垣 lỡ miệng `実はもう1社見積もり依頼してて…` khi không biết đang REC → minh hoạ RẤT sắc bén hậu quả của việc quay lén.
- `生 MP4 メールはセキュリティ上不可ですが、ご理解いただけますでしょうか` — cách từ chối khách bằng lý do bảo mật + xin thông cảm là mẫu chuẩn, không hề bất lịch sự.
- `承知いたしました` (L39) khớp fix v1.1 STATUS dòng 41. ✅ ĐÃ FIX.
- Vocab 8/8: `配布` / `機密` / `同意` / `失効` không xuất hiện nguyên dạng trong thoại nhưng đều là từ **đồng nghĩa/liên quan trực tiếp** với nội dung (`配布` ↔ 共有, `機密` ↔ confidential, `失効` ↔ expire). Chấp nhận được — bảng từ vựng chủ đề, không phải bảng trích thoại. **Không tính lỗi.**

---

## Rule 34 — Bảng tiêu chí tự đánh giá / 自己評価

**Trạng thái: 🟡 1 lỗi VỪA (logic số trong lời thoại).**

🟡 **VỪA — L26: "Pitch 60分の半分" mâu thuẫn với ngân sách 30 phút được nói TRƯỚC đó**

```
L24 | **フオン** | 「…30分でいい、12項目 rubric で chấm。」
      *…30 phút thôi, chấm theo bảng tiêu chí 12 mục.*
L25 | **ズン**   | 「30分も…」  *30 phút lận ạ...*
L26 | **フオン** | 「Pitch 60分の 半分 を review に投資して初めて成長する。今やる。」
      *Bài thuyết trình 60 phút thì đầu tư nửa ngần đó vào tự đánh giá mới thực sự lớn được.*
```

**Vấn đề — hai tầng:**

1. **Bản Nhật `60分の半分` = 30 phút.** Về số thì khớp L24. Nhưng lập luận thuyết phục lại **yếu ngược**: Hương đang cố thuyết phục Dũng rằng 30 phút là ĐÁNG, mà cách diễn đạt "một nửa của 60 phút" chỉ **lặp lại con số Dũng vừa kêu ca**, không thêm sức nặng nào. Câu chốt lẽ ra phải nêu **lợi ích** (mỗi pitch là 1 điểm dữ liệu, không ghi lại là bỏ phí — đúng như dòng "Vì sao xấu" L28 đã viết).

2. **Bản Việt DỊCH LỆCH:** *"đầu tư nửa ngần đó"* — "ngần đó" trỏ về đâu không rõ. Người đọc VN vừa đọc "30 phút" ở dòng trên sẽ hiểu nhầm thành **15 phút** (nửa của 30), tức **mâu thuẫn trực tiếp** với chỉ thị 30 phút vừa đưa ra 2 dòng trước.

**Đề xuất:** dịch rõ mốc — *"Bài thuyết trình 60 phút thì bỏ ra 30 phút nhìn lại mới thật sự tiến bộ. Làm ngay đi."* (giữ nguyên bản Nhật, chỉ sửa bản Việt). Nếu muốn mạnh hơn thì đổi luôn cả JA sang lập luận lợi ích.

Đã kiểm và xác nhận ĐÚNG (không phải lỗi):
- **Bảng rubric số học KHỚP:** 12 mục × 5 điểm = **60** ✅ đúng với `合計: __/60`.
- **12 cross-ref trong rubric (L66-L83) TOÀN BỘ ĐÚNG.** Tôi đã đối chiếu từng dòng với H1 thật của rule đích:

| Dòng rubric | Trỏ | H1 rule đích | Khớp |
|---|---|---|---|
| `7問チェックリスト` | rule 01 | Danh sách 7 câu hỏi trước khi soạn | ✅ |
| `1-slide-1-message` | rule 02 | Quy tắc mỗi slide một thông điệp | ✅ |
| `Plan B 用意` | rule 07 | Phương án dự phòng (Plan B) | ✅ |
| `Hook 30秒` | rule 08 | 30 giây mở đầu thu hút | ✅ |
| `時間管理約束` | rule 13 | Cam kết giữ đúng giờ | ✅ |
| `論理マーカー` | rule 14 | Dấu hiệu luồng logic | ✅ |
| `アイコンタクト均等 (50/50)` | rule 30 | Thuyết trình kết hợp (quy tắc 50/50) | ✅ |
| `LASR 適用` | rule 23 | Trả lời câu hỏi khó (LASR) | ✅ |
| `持ち帰り適切` | rule 24 | Mang về xem xét cho câu chưa biết | ✅ |
| `敵対的質問 bridge` | rule 25 | Đối phó câu hỏi gay gắt | ✅ |
| `Recap 3 + CTA 3` | rule 26 | Phần kết với CTA | ✅ |
| `24h 内 acknowledgment` | rule 28 | Email phản hồi sau buổi thuyết trình | ✅ |

  → **Đây là điểm rất mạnh của rule 34**: rubric hoạt động như bản đồ tra cứu toàn sách, và nó chính xác 12/12.
- L40 cross-ref `rule 11` (hook) + `rule 25` (bridge phrase) — cả hai đều **mô tả đúng** nội dung rule đích.
- Trung bình 3.8/5 × 12 ≈ 45.6/60 — thoại chỉ nói trung bình, không nói tổng, nên **không mâu thuẫn**. Không tính lỗi.

---

## Rule 35 — Chu kỳ cải thiện / 改善サイクル

**Trạng thái: ✅ SẠCH.** Không phát hiện lỗi nội dung.

Đã kiểm và xác nhận ĐÚNG:
- **Số học khớp:** Linh 42/60 = 3.5/5. Mục tiêu Hương đặt `平均 4.0/5` (L43) là bước tiến hợp lý từ 3.5 → không phi thực tế. ✅
- **Lịch trình L42 nhất quán:** 6/8 rehearse → 6/12 peer pilot → 6/14 senior pilot → 6/15 live → 6/16 retro. Đúng thứ tự, đúng chu kỳ 4 bước, live 6/15 khớp với `次 pitch (6/15)` nêu đầu câu. ✅
- Cross-ref `Sách 04 rule 35 (chu kỳ cải thiện)` — **LIÊN SÁCH**, không phải rule cùng sách. Đã kiểm đúng theo mục 1.6 (giữ đủ tiền tố `Sách 04`). Không báo động sai.
- Nội dung giáo dục học tốt: peer pilot trước senior pilot (giảm áp lực cho người mới), retro nhóm có mentor + peer + lead.
- Mục "Tránh" dòng *"Senior 忙しい → người ta thực ra luôn dành thời gian cho thực tập sinh → cứ hỏi"* — lời khuyên tốt, khuyến khích người mới chủ động.
- Vocab 8/8 hợp lệ.

---

# PHẦN 2 — NHẤT QUÁN TOÀN SÁCH

## 2.1 🟡 Mục lục vs H1 — ĐO ĐỘC LẬP: **33/35 lệch, KHÔNG PHẢI 25**

**Con số main Claude đưa (25/35) là THẤP HƠN thực tế.** Tôi đo lại bằng script (parse cột "Tên VN" + "Tên JP" của mục lục, so với H1 `# Rule NN — <VN> / <JP>` của từng `rule.md`, đã strip ruby):

- **N mục lục:** 35 · **N rule.md:** 35 (đếm bằng `find … -name 'rule.md' | wc -l`, đúng theo mục 1.2 — không có thư mục rác)
- **Lệch:** **33/35**
- **Khớp hoàn toàn:** chỉ **2 rule** — rule 03 và rule 23

### Phân loại 33 ca lệch

**KẾT LUẬN QUAN TRỌNG: đây KHÔNG phải 33 lỗi riêng lẻ. Đó là MỘT lỗi hệ thống lặp 31 lần + 2 ca khác loại.**

Đúng mẫu đã ghi ở mục 4F của rule (*"sách 08 lệch 51/51, sách 02 lệch 60/60 — thường do mục lục là bản chưa Việt hoá"*). Sách 05 dính **đúng bug đó**: `rule.md` đã qua đợt Việt hoá, `mục_lục.md` thì chưa.

#### Nhóm 1 — 🟡 LỖI THẬT: mục lục chưa Việt hoá (31 ca)

Toàn bộ đều là: **cột JP KHỚP**, chỉ **cột VN lệch**, và bản VN trong mục lục là **tiếng Anh / trộn Anh-Việt** còn H1 là **tiếng Việt thuần**.

| # | Mục lục (VN) — chưa Việt hoá | H1 rule.md — đã Việt hoá |
|---|---|---|
| 01 | Checklist 7 câu hỏi trước khi soạn | Danh sách 7 câu hỏi trước khi soạn |
| 02 | Quy tắc 1-slide-1-message | Quy tắc mỗi slide một thông điệp |
| 04 | Visual hierarchy & font | Phân cấp thị giác & phông chữ |
| 05 | Color psychology JP business | Tâm lý màu sắc trong Tiếng Nhật công việc |
| 06 | Density rule (10-20-30) | Quy tắc mật độ (10-20-30) |
| 07 | Backup plan (Plan B) | Phương án dự phòng (Plan B) |
| 08 | Hook 30 giây mở | 30 giây mở đầu thu hút |
| 09 | Tự giới thiệu khi pitch | Tự giới thiệu khi thuyết trình |
| 10 | Bối cảnh + agenda speech | Bối cảnh + trình bày chương trình |
| 12 | Mood setting cho khách Nhật conservative | Tạo bầu không khí cho khách Nhật điềm đạm |
| 13 | Time-keeping promise | Cam kết giữ đúng giờ |
| 15 | Data presentation | Trình bày dữ liệu |
| 16 | Demo flow trong pitch | Luồng demo |
| 17 | So sánh phương án (matrix) | So sánh phương án (bảng so sánh) |
| 18 | Customer voice / case study | Lời chứng thực của khách |
| 19 | Pricing slide tactful | Slide giá cả khéo léo |
| 20 | Risk & mitigation | Rủi ro và biện pháp đối phó |
| 21 | Roadmap visualization | Trực quan hóa lộ trình |
| 22 | Mời Q&A formal | Mời Q&A trang trọng |
| 24 | 持ち帰り cho câu chưa biết | Mang về xem xét cho câu chưa biết |
| 25 | Đối phó câu hostile | Đối phó câu hỏi gay gắt |
| 26 | Closing với CTA | Phần kết với CTA |
| 27 | Thank-you slide | Slide cảm ơn |
| 28 | Post-pitch follow-up email | Email phản hồi sau buổi thuyết trình |
| 29 | Online presentation | Thuyết trình trực tuyến |
| 30 | Hybrid presentation | Thuyết trình kết hợp |
| 31 | Tech failure recovery | Xử lý sự cố kỹ thuật |
| 32 | Co-presenter handoff | Bàn giao giữa người đồng trình bày |
| 33 | Recording + share | Quay video + chia sẻ |
| 34 | Self-review checklist | Bảng tiêu chí tự đánh giá |
| 35 | Iteration cycle | Chu kỳ cải thiện |

**Đây là LỖI THẬT, không phải rút gọn có chủ ý.** Bằng chứng: các cặp không hề ngắn hơn — `Online presentation` (20 ký tự) vs `Thuyết trình trực tuyến` (23 ký tự); `Recording + share` vs `Quay video + chia sẻ`. Chúng **cùng độ dài, khác NGÔN NGỮ**. Rút gọn thì phải ngắn đi; đây là **chưa dịch**.

Hệ quả cho học viên: mục lục là trang đầu tiên người đọc chạm vào, mà nó viết `Mood setting cho khách Nhật conservative` trong khi cả cuốn sách đã Việt hoá triệt để — phá vỡ ấn tượng đồng nhất ngay từ trang 1.

**Đề xuất sửa:** đồng bộ cột "Tên VN" của mục lục theo đúng H1 của từng `rule.md`. Nguồn sự thật = `rule.md` (đã qua review Việt hoá), không phải mục lục.

#### Nhóm 2 — 🔵 RÚT GỌN CÓ CHỦ Ý (2 ca — KHÔNG PHẢI LỖI)

| # | Mục lục | H1 rule.md | Phán định |
|---|---|---|---|
| 11 | VN: `Hook story / data / question`<br/>JP: `フックの3パターン` | VN: `3 kiểu mở đầu thu hút`<br/>JP: `フックの3パターン (câu chuyện / số liệu / câu hỏi)` | **JP = rút gọn chủ ý** ✅ (mục lục bỏ phần ngoặc liệt kê — hợp lý cho bảng). Nhưng **VN vẫn là lỗi chưa Việt hoá** → ca này thuộc CẢ HAI nhóm |
| 14 | VN: `Logical flow markers`<br/>JP: `論理マーカー` | VN: `Dấu hiệu luồng logic`<br/>JP: `論理マーカー (まず／次に／最後に)` | Y hệt ca 11: **JP rút gọn OK**, **VN chưa Việt hoá** |

→ Riêng phần JP: **2/2 ca lệch đều là rút gọn hợp lý, KHÔNG SỬA.**

#### Nhóm 3 — ✅ KHỚP HOÀN TOÀN (2 ca)

- **rule 03**: `Đường mạch câu chuyện (SCQA) / ストーリーアーク` — khớp 100% cả VN lẫn JP.
- **rule 23**: `Trả lời câu hỏi khó / 難しい質問への対応` — khớp 100%.

### Bảng tổng kết phân loại

| Loại | Số ca | Sửa? |
|---|---|---|
| 🟡 LỖI THẬT — mục lục cột VN chưa Việt hoá | **33** (gồm cả VN của r11, r14) | **CÓ** — đồng bộ theo H1 |
| 🔵 Rút gọn có chủ ý — cột JP r11, r14 | 2 | **KHÔNG** |
| ✅ Khớp hoàn toàn | 2 (r03, r23) | — |

**Vì sao con số của tôi (33) khác main Claude (25):** nhiều khả năng phép đo trước chỉ so **một phần chuỗi** hoặc bỏ qua các ca lệch nhẹ (r06 `Density rule (10-20-30)` vs `Quy tắc mật độ (10-20-30)` — chỉ khác 2 chữ đầu, dễ bị coi là khớp). Tôi so **chuỗi đầy đủ, tách VN/JP riêng, đã strip ruby**. Script đo có thể tái lập.

---

## 2.2 ✅ Tên sách — NHẤT QUÁN 100%

| Nơi | Tên |
|---|---|
| `nội_dung/_front_matter.md` L1 | `Hizashi — Thuyết trình / プレゼンテーション` |
| `nội_dung/_back_matter.md` L16 | `Hizashi — Thuyết trình / プレゼンテーション` |
| `meta/mục_lục.md` L1 | `Hizashi Sách 05 — Thuyết trình / プレゼンテーション — Mục lục 35 rules` |
| `meta/STATUS.md` L1 | `Hizashi Sách 05 — Thuyết trình / プレゼンテーション — Tiến độ` |
| `README.md` (root) L19 | `Thuyết trình / プレゼンテーション` — v1.1 ✅ Phát hành |

Khác biệt duy nhất là phần hậu tố mô tả (`— Mục lục 35 rules` / `— Tiến độ`), là chuyện bình thường cho file meta. **Phiên bản cũng khớp: 1.1 ở cả back matter, STATUS và README.** Không có gì cần sửa.

---

## 2.3 ✅ Front matter — KHÔNG hứa thứ sách không có

Đã kiểm từng lời hứa:

| Lời hứa ở front matter | Kiểm chứng | Kết quả |
|---|---|---|
| "35 quy tắc" | `find nội_dung -name 'rule.md' \| wc -l` = **35** | ✅ |
| Bảng cấu trúc 7/6/8/7/7 | Đếm thực tế phần I..V = 7/6/8/7/7 | ✅ |
| "Phụ lục: A, B, C, D" | 4 file phụ lục tồn tại đủ | ✅ (nội dung phụ lục có lỗi riêng — xem 2.6) |
| "Em Linh — lần đầu tự thuyết trình, được Dũng dìu dắt" | リン xuất hiện trong rule 11, 12, 18, 20, **35** — 4 lượt thoại mỗi rule. Rule 35 chính là bài pitch đầu của Linh, Dũng làm mentor | ✅ |
| "大垣 — người đặt câu hỏi hóc búa về giá" | 大垣 = 23 lượt thoại; rule 25 là màn chất vấn giá gay gắt (`Phase 3 で1200万？…東京開発の値段ですか？`) | ✅ |
| "田中 PMO — yêu cầu ghi hình để chia sẻ nội bộ" | rule 33 chính xác là tình huống này | ✅ |
| "Ôn thi BJT J3-J2" | Phụ lục C có bộ luyện BJT | ✅ |

🔵 **NHẸ — mô tả cast hơi quá:** *"Em Linh — lần đầu tự thuyết trình, được Dũng dìu dắt **trọn vẹn**"*. Linh chỉ xuất hiện ở **5/35 rule** (11, 12, 18, 20, 35) và Dũng làm mentor rõ ràng ở **rule 35**. Chữ "trọn vẹn" gợi ý một mạch truyện xuyên suốt mà sách không có. Không phải lỗi nghiêm trọng — chỉ nên đổi thành "được Dũng dìu dắt" là đủ.

**KHÔNG có lời hứa nào bị bỏ rơi.** Sách 05 sạch ở khoản này (khác sách 02 từng bị nghi "thiếu bài luyện BJT" — mục 6 của rule).

---

## 2.4 🔵 Thuật ngữ dùng 2 cách gọi

Tôi quét toàn sách (strip ruby) các cặp thuật ngữ có nguy cơ. Kết quả — **phần lớn NHẤT QUÁN**, chỉ 3 cặp đáng lưu ý:

| Khái niệm | Cách gọi A | Cách gọi B | Phán định |
|---|---|---|---|
| ハンドアウト | "tài liệu phát tay" (r07, r31) | "handout" (r34 rubric, dạng `handout`) | 🔵 **NHẸ.** r34 nằm trong khối rubric tiếng Nhật `Plan B 用意 (PDF/handout/hotspot)` — là **cheat sheet dạng ghi chú ngắn**, dùng từ ngắn hợp lý. Chấp nhận được. |
| テザリング | "chia sẻ mạng di động" (r31) / "phát mạng di động" (r07, r31) | "hotspot" (r34 rubric) · "tethering mobile" (r31 L40) | 🔵 **NHẸ.** Cùng lý do trên với r34. Riêng r31 L40 bản VN dùng `tethering mobile` trong khi vocab table cùng rule dịch `テザリング` = "Chia sẻ mạng di động" → **hơi lệch trong CÙNG một rule**. Nên đổi L40 thành "chia sẻ mạng từ điện thoại". |
| リハーサル / retro | "tập dượt" · "nhìn lại" (r35 bản VN, nhất quán 14 lượt) | `rehearse` / `retro` xen kẽ trong bản JA | ✅ **KHÔNG phải lỗi.** Bản JA dùng katakana-eigo là văn phong tự nhiên của dân IT/business Nhật (đúng cảnh báo trong đề bài). Bản VN nhất quán "tập dượt / nhìn lại". |

**Đã kiểm và XÁC NHẬN NHẤT QUÁN (không cần sửa):**
- `người đồng trình bày` — dùng thống nhất ở r07, r16, r27, r29, r31, r32. Không có ca nào gọi "co-presenter" trong văn Việt (chỉ r07 có 1 lần trong ngữ cảnh JA).
- `bài thuyết trình` / `buổi thuyết trình` — phân biệt đúng: "bài" = nội dung, "buổi" = sự kiện. Không phải 2 cách gọi cùng một thứ.
- `trực tiếp` (đối lập `trực tuyến`) — dùng thống nhất, không lẫn với "offline".
- `bảng tiêu chí` cho `ルーブリック/rubric` — nhất quán r34, r35.
- `mở đầu thu hút` cho `hook` — nhất quán trong văn Việt r01, r03, r08, r09, r11.

---

## 2.5 ✅ Cross-reference — 100% TRỎ ĐÚNG

Tôi trích **toàn bộ** cross-ref của cả 35 rule (dòng `Liên quan:` + trong ghi chú 【】 + trong rubric r34), rồi đối chiếu mã rule với H1 thật của rule đích.

**Kết quả: 0 cross-ref trỏ sai, 0 cross-ref trỏ rule không tồn tại.**

### Phân biệt cùng sách vs LIÊN SÁCH (theo mục 1.6)

Tôi giữ đủ tiền tố `Sách NN` khi quét để **không báo động sai** (bẫy đã dính ở sách 03). Danh sách cross-ref LIÊN SÁCH — tất cả đều được đánh dấu rõ ràng trong văn bản:

| Rule nguồn | Trỏ tới | Mô tả trong sách 05 |
|---|---|---|
| r01 | Sách 04 Rule 01 | 報告の3原則 (kết luận trước) |
| r02 | Sách 04 Rule 01 | 結論先出し (kết luận trước) |
| r09 | Sách 03 rule 10, rule 11 | 自己紹介 / 名刺交換 |
| r12 | Sách 02 rule 06 | 声の高さ |
| r16 | Sách 03 rule 32 | (phân vai đồng trình bày) |
| r19 | Sách 03 rule 27 | 根拠反論 (2 lượt) |
| r24 | Sách 03 rule 35, Sách 04 rule 30 | 議事録 / 持ち帰り |
| r29 | Sách 03 rule 03 | thiết lập video |
| r33 | Sách 02 rule 56 | 録音許可 |
| r35 | Sách 04 rule 35 | chu kỳ cải thiện |

→ **Không xác minh được nội dung sách khác** (ngoài phạm vi). Nhưng khối `## 🔗 Cross-reference` của `meta/mục_lục.md` (L123-125) khai **3 cặp liên sách** và cả 3 đều **khớp đúng** với những gì `rule.md` thực sự viết:

| Mục lục khai | rule.md thực tế | Khớp |
|---|---|---|
| `Sách 02 Phone: rule_56 録音許可 ↔ rule_33 sách 05` | r33 L7: `Sách 02 rule 56 (録音許可)` | ✅ |
| `Sách 03 Họp: rule_03 setup video ↔ rule_29 sách 05` | r29 L7: `Sách 03 rule 03 (thiết lập video)` | ✅ |
| `Sách 04 HouRenSou: rule_30 持ち帰り ↔ rule_24 sách 05` | r24 L7: `Sách 04 rule 30` | ✅ |

### Cross-ref trong phần V của tôi — mô tả có đúng nội dung rule đích không?

| Nguồn | Trỏ | Mô tả trong nguồn | H1 rule đích | Đúng? |
|---|---|---|---|---|
| r29 | rule 30 | "lai/kết hợp" | Thuyết trình kết hợp | ✅ |
| r29 | rule 31 | "sự cố kỹ thuật" | Xử lý sự cố kỹ thuật | ✅ |
| r30 | rule 29 | "trực tuyến" | Thuyết trình trực tuyến | ✅ |
| r30 | rule 31 | "sự cố kỹ thuật" | Xử lý sự cố kỹ thuật | ✅ |
| r31 | rule 07 | "Phương án B" | Phương án dự phòng (Plan B) | ✅ |
| r31 L47 | rule 07 / rule 31 | "Rule 07 quy định, rule 31 thực thi" | khớp phân vai thật | ✅ **rất chính xác** |
| r32 | rule 09 | "自己紹介" | Tự giới thiệu khi thuyết trình | ✅ |
| r32 | rule 14 | "logical markers" | Dấu hiệu luồng logic (論理マーカー) | ✅ |
| r33 | rule 28 | "followup" | Email phản hồi sau buổi thuyết trình | ✅ |
| r33 | rule 27 | "slide PDF" | Slide cảm ơn (謝辞スライド) | 🔵 **hơi lệch** — r27 là slide cảm ơn + contact info, không phải "slide PDF". Nhẹ, ngữ cảnh vẫn hiểu được (r27 có bàn về gửi slide dạng PDF). |
| r34 | rule 35 | "改善サイクル" | Chu kỳ cải thiện | ✅ |
| r34 | rule 28 | "followup" | Email phản hồi sau buổi thuyết trình | ✅ |
| r35 | rule 34 | "tự đánh giá" | Bảng tiêu chí tự đánh giá | ✅ |

→ **12/13 chính xác tuyệt đối, 1 ca hơi lệch nhãn (r33→r27), 0 ca sai thật.**

---

## 2.6 🔴 NGOÀI PHẠM VI — chỉ BÁO CÁO, KHÔNG SỬA

### (a) 🔴 NẶNG — Phụ lục kế thừa khung SÁCH 02 (điện thoại)

**Đây chính xác là bug mục 1.4 của rule, đã gặp ở sách 03 — nay tái phát ở sách 05.**

| File | Dòng | Nội dung sai |
|---|---|---|
| `phụ_lục_A_script_template.md` | L3 | `*Tổng hợp cụm câu chốt từ tất cả **60 rules**...*` — sách 05 có **35** rule, 60 là số của **sách 02** |
| `phụ_lục_A` | L8 | `## Phần I — **Nền tảng trước nhấc máy**` — tiêu đề sách 02 |
| `phụ_lục_A` | L120 | `## Phần II — **Nhận điện thoại**` |
| `phụ_lục_A` | L197 | `## Phần III — **Gọi điện thoại đi**` |
| `phụ_lục_A` | L312 | `## Phần IV — Tình huống khó` |
| `phụ_lục_A` | L440 | `## Phần V — **Hộp thư thoại**, Trực tuyến & Thực hành tốt nhất` |
| `phụ_lục_B_vocab.md` | L3 | `*Tổng hợp tất cả từ vựng **phone-related** từ **60 rules**...*` |
| `phụ_lục_B` | L10, 63, 107, 171, 225 | 5 tiêu đề Phần y hệt sách 02 |
| `phụ_lục_C_bjt_practice.md` | L3 | `*Tổng hợp tất cả câu luyện thi BJT từ **60 rules**...*` |

**Đối chiếu với `meta/mục_lục.md` của CHÍNH sách 05** — tiêu đề đúng phải là:
I `Chuẩn bị / 準備` · II `Mở đầu / オープニング` · III `Body / 本論` · IV `Q&A + Closing` · V `Tình huống đặc biệt + Self-improve`.

**Mức nghiêm trọng: NẶNG.** Học viên mua sách thuyết trình mở phụ lục ra thấy "Nền tảng trước nhấc máy" và "từ vựng phone-related" → mất lòng tin ngay lập tức. Đây là 3/4 phụ lục bị ảnh hưởng.

⚠️ **Phụ lục là file SINH TỰ ĐỘNG** (mục 1.4 + bảng phạm vi). **KHÔNG sửa tay** — sửa tay sẽ bị ghi đè ở lần build sau. Phải sửa ở script build (`build_appendices.py` hoặc tương đương), và **đó là đợt việc khác cần chủ nhà quyết**. Tôi **KHÔNG đụng vào**, chỉ ghi lại đây.

Ghi chú: nội dung BÊN TRONG phụ lục (mẫu câu, vocab, câu BJT) thì **đúng của sách 05** — tôi kiểm mẫu thấy rule_01 trong phụ lục A là `プレゼン準備の7つの問い`, vocab rule_01 là `聴衆/決裁者/アウトプット`. Chỉ có **KHUNG tiêu đề + header đếm số** là kế thừa nhầm.

### (b) 🔴 NẶNG — Mâu thuẫn số liệu giá Phase 3 XUYÊN SÁCH (rule 19 vs 5 rule khác)

Phát hiện khi đối chiếu số liệu rule 31 (phần V của tôi) với phần còn lại của sách.

**rule_19 (phần III — ngoài phạm vi tôi):**
```
L23 | **ズン** | 「Phase 3 のお見積りは **3,200万円**でございます。」
L23 | **ハーCTO** | 「高いね。**Phase 2 は1,800万**だったよね？」
L38 | (2) Tier: A案2,400万 / B案**3,200万**(推奨) / C案4,800万
L46 | 【2】"1.2億÷**3,200万** ≈ 8ヶ月"
```

**5 rule khác — thống nhất một con số hoàn toàn khác:**
```
r25 L23 | **大垣** | 「Phase 3 で**1200万**？**Phase 2 が800万**だったのに 50%増？」
r26 L40 | ②価格は **1200万円**(Phase 2 比単価 -8%)
r27 L65 | ② 価格: **1,200万円** (単価 -8%)
r28 L74 | ② 価格: **1,200万円** (Phase 2 比単価 -8%)
r31 L41 | Phase 3 **1200万円**の内訳は ①開発工数720万、②ライセンス280万、③運用初年度200万
```

**Vấn đề:** Cùng một dự án Phase 3 trong cùng một mạch truyện, sách đưa **hai bộ số hoàn toàn khác nhau**:

| | rule 19 | rule 25/26/27/28/31 |
|---|---|---|
| Phase 3 | 3,200万円 | 1,200万円 |
| Phase 2 | 1,800万円 | 800万円 |
| So Phase 2 | "gần gấp đôi" (`約2倍`) | "+50%" (r25) / "đơn giá -8%" (r26/27/28) |

Đây là **trục B — sách tự mâu thuẫn**, dạng "giữa hai rule" (mục 4B). Và nó không phải hai mốc khác nhau như ca `5月末 vs 7月末` ở sách 03 — cả hai đều là **giá báo cho Phase 3 của cùng khách 白鷗**.

Đáng chú ý: **5 rule kia nhất quán tuyệt đối** với nhau (kể cả phép tính 720+280+200=1200 ở r31 khớp chính xác). → **rule_19 là chỗ lệch đơn độc**, nhiều khả năng là bản nháp cũ chưa cập nhật khi số liệu toàn sách được chốt lại thành 1200万.

⚠️ **rule_19 thuộc phần III — phạm vi agent khác.** Theo nguyên tắc 0, tôi **CHỈ BÁO CÁO, KHÔNG SỬA**. Nhưng đây là lỗi vắt qua hai phạm vi (đúng điểm mù mô tả ở mục 6 của rule) nên agent phần III **có thể không thấy quy mô thật** — họ chỉ thấy rule 19 tự nhất quán bên trong nó. Đề nghị main Claude nối hai mảnh dữ kiện này lại.

**Đề xuất (để main Claude quyết):** sửa rule_19 theo bộ số 1200万/800万 (vì 5 rule ủng hộ), đồng bộ luôn cả tier + phép tính ROI. Nhưng cần chủ nhà xác nhận con số nào là "đúng" trước — không replace mù.

---

# 📌 DANH SÁCH CẤM SỬA

Những chỗ **ĐÚNG nhưng dễ bị sửa nhầm** trong đợt sau:

## Trong phần V

1. **rule_32 L37 / L40 — `弊社 CTO ハー より` và `ズンより` (KHÔNG có `さん`).**
   Đây là **uchi/soto ĐÚNG**: nói với khách thì bỏ kính ngữ cho người công ty mình. Đừng "sửa cho lịch sự" thành `ハーさん` / `ズンさん`.
   Ngược lại, **`ズンさん、お願いします`** ở cuối L40 (Hà gọi trực tiếp Dũng) thì **CÓ `さん` là đúng** — vì đó là lời gọi đồng nghiệp, không phải giới thiệu với khách. **Hai cách dùng khác nhau trong CÙNG một dòng, cả hai đều đúng.**

2. **rule_33 L13, L23, L38, L41 — `山田部長` (KHÔNG có `様`).**
   Bốn chỗ này **ĐÚNG**. Chỉ **L44 (`山田部長様`) mới sai**. Đừng thấy L44 sai rồi "đồng bộ" ngược lại bằng cách thêm `様` vào cả 4 chỗ kia.

3. **rule_31 L41 — bộ số `720万 + 280万 + 200万 = 1200万円`.**
   Cộng khớp chính xác. Đừng đụng khi sửa mâu thuẫn giá rule_19 — **rule_31 là bên ĐÚNG**, rule_19 mới là bên lệch.

4. **rule_35 L42 — chuỗi ngày `6/8 → 6/12 → 6/14 → 6/15 → 6/16`.**
   Đúng thứ tự chu kỳ 4 bước và khớp `次 pitch (6/15)`. Đừng "sửa" tưởng là lỗi định dạng ngày.

5. **rule_35 L43 — `平均 4.0/5`** so với Linh hiện tại `42/60 = 3.5/5`. Số học khớp, mục tiêu hợp lý. Không phải lỗi.

6. **rule_34 bảng rubric L66-L83 — 12 cross-ref rule.**
   **12/12 đều ĐÚNG.** Đặc biệt `□ 7. アイコンタクト均等 (rule 30 - 50/50)` — rule 30 THẬT SỰ là rule quy định 50/50. Đừng đổi.

7. **rule_34 L38 — `12項目平均 3.8/5`** (không nêu tổng). 3.8×12=45.6 không phải số nguyên, nhưng thoại **không hề nói tổng** nên **không mâu thuẫn**. Đừng "sửa cho tròn".

8. **rule_33 vocab `配布 / 機密 / 同意 / 失効`** — không xuất hiện nguyên dạng trong thoại nhưng là từ vựng CHỦ ĐỀ liên quan trực tiếp. Bảng từ vựng không phải bảng trích thoại. Đừng xoá.

9. **Từ tiếng Anh trong vế TIẾNG NHẬT của phần V** — `webcam`, `virtual`, `chat moderator`, `edit out`, `expire`, `access`, `raw`, `rehearse`, `pilot`, `retro`, `peer`, `senior`, `drill`, `commit`. Đây là **văn phong tự nhiên của dân IT/business Nhật**, không phải lỗi. Đừng Việt/Nhật hoá.

10. **Thuật ngữ nghề trong vế tiếng Việt**: `slide`, `demo`, `Zoom`, `Slack`, `Drive`, `PDF`, `REC`, `KPI`, `CTA`, `LASR`, `Plan B`, `CTO`. Đã chuẩn trong môi trường IT Việt. Đừng Việt hoá.

## Toàn sách

11. **Cột JP của mục lục rule 11 và rule 14** (`フックの3パターン` / `論理マーカー` — không có phần ngoặc).
    Đây là **rút gọn CÓ CHỦ Ý** cho bảng mục lục, không phải lỗi. Chỉ sửa **cột VN** của hai dòng này.

12. **Mục lục rule 03 và rule 23** — đã khớp 100% với H1. Đừng đụng.

13. **Khối `## 🔗 Cross-reference` của mục lục (L123-125)** — cả 3 cặp liên sách đều khớp đúng với `rule.md`. Đừng đụng.

14. **Tên sách + phiên bản ở front/back matter, mục lục, STATUS, README** — nhất quán 100%, đều là `Hizashi — Thuyết trình / プレゼンテーション` v1.1. Đừng "chuẩn hoá" thêm.

15. **Mọi cross-ref có tiền tố `Sách NN`** (r01→Sách 04, r09→Sách 03, r12→Sách 02, r19→Sách 03, r24→Sách 03+04, r29→Sách 03, r33→Sách 02, r35→Sách 04). Đây là **LIÊN SÁCH**, không phải rule cùng sách 05. Đừng quét regex `rule (\d+)` rồi tưởng trỏ sai — bẫy đã dính ở sách 03 (mục 1.6).

16. **`nội_dung/phụ_lục/*.md`** — **TUYỆT ĐỐI KHÔNG SỬA TAY.** File sinh tự động. Lỗi thật (mục 2.6a) phải sửa ở script build, là đợt việc khác.

---

## 📋 BẢNG HÀNH ĐỘNG ĐỀ XUẤT (để main Claude quyết)

| # | Mức | File | Việc | Trong phạm vi P5? |
|---|---|---|---|---|
| 1 | 🔴 | `rule_33/rule.md` L44 | `山田部長様` → `山田部長` | ✅ |
| 2 | 🟡 | `rule_31/rule.md` L80 | vocab `お騒がせ` → `ご迷惑をおかけする` | ✅ |
| 3 | 🟡 | `rule_30/rule.md` L83 | vocab `優先する` mồ côi — bỏ hoặc đưa vào thoại | ✅ |
| 4 | 🟡 | `rule_34/rule.md` L26 | dịch VN "nửa ngần đó" → "30 phút" cho rõ | ✅ |
| 5 | 🟡 | `meta/mục_lục.md` | đồng bộ 33 dòng cột "Tên VN" theo H1 | ✅ |
| 6 | 🔵 | `_front_matter.md` L25 | bỏ chữ "trọn vẹn" ở mô tả Linh | ✅ |
| 7 | 🔵 | `rule_31/rule.md` L40 | VN `tethering mobile` → "chia sẻ mạng từ điện thoại" | ✅ |
| 8 | 🔵 | `rule_33/rule.md` L7 | cross-ref `rule 27 (slide PDF)` → `rule 27 (slide cảm ơn)` | ✅ |
| 9 | 🔴 | `phụ_lục_A/B/C` | khung tiêu đề + "60 rules" của sách 02 → **sửa ở SCRIPT** | ❌ ngoài phạm vi |
| 10 | 🔴 | `rule_19/rule.md` (phần III) | giá 3,200万 vs 1,200万 toàn sách | ❌ phạm vi agent khác |

---

*Báo cáo P5 — agent phần V + nhất quán toàn sách. 2026-08-15.*
*Đã tuân thủ: CHỈ BÁO CÁO, không sửa file nội dung. Không đụng conversation.json, script build, phụ lục.*
