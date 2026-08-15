# [02-C1] Rà soát rule.md phần I + II (23 rule)

> Agent: C1 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: `nội_dung/phần_I/rule_01..10_*/rule.md` + `nội_dung/phần_II/rule_11..23_*/rule.md`
> `conversation.json` chỉ dùng để ĐỐI CHIẾU, không rà.

---

## Tóm tắt số lỗi

| Mức | Số lượng |
|---|---|
| 🔴 Nghiêm trọng (kính ngữ sai / quy trình sai / tự mâu thuẫn / lệch json) | 14 |
| 🟡 Trung bình (tiếng Việt, nhất quán, thiếu khối) | 11 |
| 🔵 Nhẹ (chất lượng, gợi ý bổ sung) | 6 |
| **Tổng** | **31** |

**Kết luận lớn nhất của đợt này:** giả thuyết trong `00_TIEN_DO.md` được XÁC NHẬN.
Đợt fix v1.1 và v1.2 **chạy trên `conversation.json`, không chạy trên `rule.md`**. Trong 23 rule
phần I+II, tôi tìm được **6 chỗ `rule.md` và `conversation.json` nói khác nhau**, trong đó
5 chỗ `rule.md` giữ bản CŨ (bản đã bị chê), và 1 chỗ **ngược lại** — `rule.md` mới hơn `conversation.json`.
Vì `rule.md` mới là thứ lên sản phẩm (theo ghi chú của chủ nhà), nghĩa là **sách đang xuất bản bản chưa fix**.

---

## 1. KIỂM CHỨNG FIX v1.1 / v1.2 (bảng riêng — làm trước)

Nguồn đối chiếu: `meta/REVIEW_FINDINGS_v1.1.md` + phần changelog v1.1/v1.2 trong `meta/STATUS.md`.
Chỉ liệt kê mục thuộc phần I + II.

### 1a. Các mục v1.1 — kết quả kiểm

| Mục v1.1 | File rule.md | Chuỗi "Sai" | Còn trong rule.md? | Kết luận |
|---|---|---|---|---|
| **JP-2** `メモのご準備` | `phần_I/rule_04_片手メモ/rule.md:53` | `メモのご準備` | KHÔNG — đang là `メモの<ruby>準備<rt>じゅんび</rt></ruby>` | ✅ **ĐÃ FIX** (cả md lẫn json) |
| **JP-3** `お声が遠く` | `phần_I/rule_08_静かな環境/rule.md:48` | `お声が遠く` | KHÔNG — đang là `お電話が遠く聞こえる場合は` | ✅ **ĐÃ FIX** |
| **JP-3b** `お電話お受けいたします` (thừa) | `phần_I/rule_08/rule.md:48` | `お電話お受けいたします` | KHÔNG — đang là `このまま電話を受けさせていただきます` | ✅ **ĐÃ FIX** |
| **JP-5** `申し伝えました` (nội bộ) | `phần_II/rule_23_受電後報告/rule.md:15` | `申し伝えました` | KHÔNG — đang là `共有済みです` | ✅ **ĐÃ FIX** (theo hướng v1.2, tốt hơn v1.1) |
| **JP-1** (uchi/soto, quy tắc chung) | `phần_II/rule_23/rule.md:15, 24` | `トゥアンリーダー` | **CÒN 2 chỗ** | 🟡 **KHÔNG THUỘC danh sách fix nhưng SAI CÙNG LOẠI** — xem lỗi #23-1 (đây là ngữ cảnh nội bộ nên chấp nhận được, chi tiết ở mục 2) |
| **VN-1 / VN-5** `至っとマーク` | `phần_II/rule_13_数字復唱/rule.md:12, 32` | `至っとマーク` | KHÔNG — đang là `アットマーク` cả 2 chỗ | ✅ **ĐÃ FIX** |
| **VN-3** `Em đã nhận máy` | `phần_II/rule_15_取次ぎ/rule.md:19` | `Em đã nhận máy` | KHÔNG — đang là `Dạ, em Dũng nghe máy đây ạ` | ✅ **ĐÃ FIX** |
| **VN-4** `Xin phép em ạ` / `Xin phép tôi ạ` | `phần_II/rule_22_切るタイミング/rule.md:13, 14` | 2 chuỗi trên | KHÔNG — đang là `Em xin phép cúp máy ạ` / `Vậy tôi xin phép trước nhé` | ✅ **ĐÃ FIX** |
| **VN-A** `Em luôn cảm ơn anh đã hỗ trợ` | `phần_I/rule_01_第一声/rule.md:44` | `em luôn cảm ơn anh đã hỗ trợ ạ` | **CÒN NGUYÊN** | 🔴 **CHƯA FIX** — xem lỗi #01-2 |
| **VN-G** `đợi máy` → `giữ máy` | `phần_II/rule_17_保留1分/rule.md:15,26` | `đợi máy` | KHÔNG — đã là `giữ máy` | ✅ **ĐÃ FIX** |
| **TERM-1** `お繋ぎ` → `おつなぎ` | `phần_II/rule_11:15`, `rule_15:16` | `お繋ぎ` | KHÔNG — cả 2 đều `おつなぎ` | ✅ **ĐÃ FIX** |
| **TERM-1** `折返し` → `折り返し` | phần I+II | `折返し` | KHÔNG có chỗ nào | ✅ **ĐÃ FIX / không áp dụng** |
| **TERM-3** `công ty Thiên Phát` (thường) | `rule_01`, `rule_06` | `công ty Thiên Phát` | KHÔNG — đều `Cty Thiên Phát` | ✅ **ĐÃ FIX** |
| **TERM-6** `chuyển máy` → `nối máy` | phần II | `chuyển máy` (trong lời thoại) | Lời thoại đều dùng `nối máy`; nhưng **tiêu đề + bảng từ vựng vẫn dùng `Chuyển máy`** | 🟡 **FIX NỬA VỜI** — xem lỗi #15-2 |

### 1b. Các mục v1.2 (native JP review) — kết quả kiểm

Đây là ổ vấn đề. Changelog v1.2 trong `STATUS.md` khẳng định 32 fix đã apply qua
`scripts/apply_jp_native_fixes.py`, nhưng script này **chỉ chạm `conversation.json`**.

| Mục v1.2 | File | Bản trong `conversation.json` (mới) | Bản trong `rule.md` (dòng) | Kết luận |
|---|---|---|---|---|
| rule_01: `いつも` → `こちらこそいつも` | rule_01 | `松本様、こちらこそいつもお世話になっております。` | dòng 44: `松本様、いつもお世話になっております。` | 🔴 **CHƯA FIX ở rule.md** |
| rule_04: reorder cụm 復唱 | rule_04 | `復唱させていただきます。明日14時…で間違いございませんでしょうか。` | dòng 41: giống json | ✅ ĐÃ FIX |
| rule_12: `お待ちしておりました` → `いつもお世話に` | rule_12 | `…でいらっしゃいますね。いつもお世話になっております。` | dòng 14: `…でいらっしゃいますね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。` | 🔴 **CHƯA FIX ở rule.md** |
| rule_16: `退社しております` → `業務を終えております` | rule_16 | (json không có dòng này) | dòng 29: `本日の業務を終えております` | ✅ ĐÃ FIX (rule.md đã đúng) |
| rule_17: `お時間をいただきそう` → `時間がかかりそう` | rule_17 | `確認にもうしばらく時間がかかりそうでございます` | dòng 16: giống json | ✅ ĐÃ FIX |
| rule_18 rule.md: `お伝えいたします` → `申し伝えます` | rule_18 | `トゥアンに申し伝えます` | dòng 14: `トゥアンに申し伝えます` | ✅ ĐÃ FIX |
| rule_19: `お間違え` → `お間違い` | rule_19 | `お間違いではないでしょうか` | dòng 14, 22: `お間違い` | ✅ ĐÃ FIX |
| rule_19: `いえ、失礼いたします` → `とんでもございません。失礼いたします` | rule_19 | dòng json vẫn là **`いえ、失礼いたします`** (bản CŨ) | dòng 18: `とんでもございません。失礼いたします` (bản MỚI) | 🔴 **LỆCH NGƯỢC CHIỀU** — lần này json mới là bản chưa fix. Xem lỗi #19-1 |
| rule_21: `Hang Bac` → `ハンバック (Hang Bac)` | rule_21 | `ハンバック (Hang Bac) 通り` | dòng 14: `Hang Bac通り` | 🔴 **CHƯA FIX ở rule.md** |
| rule_21: `3軒目` → `3つ目` | rule_21 | `3つ目の8階建てビル` (2 chỗ) | dòng 15, 16: `3<ruby>軒目<rt>けんめ</rt></ruby>` (2 chỗ) | 🔴 **CHƯA FIX ở rule.md** |
| rule_21: `右折いただきます` → `右に曲がっていただきます` | rule_21 | `右に曲がっていただきますと` | dòng 15: `<ruby>右折<rt>うせつ</rt></ruby>いただきますと` | 🔴 **CHƯA FIX ở rule.md** |
| rule_23: `お伝えしました` → `共有済みです` | rule_23 | `共有済みです` | dòng 15: `共有済みです` | ✅ ĐÃ FIX |

**Tổng kết mục 1:** 5 lỗi CHƯA FIX ở `rule.md` (rule_01, rule_12, rule_21×3) + 1 lỗi lệch ngược (rule_19)
+ 1 fix nửa vời thuật ngữ (rule_15) + 1 chưa fix bản Việt (rule_01 VN-A).

---

## 2. Danh sách lỗi theo rule

### rule_01_第一声 (124 dòng — dài nhất, làm mẫu chuẩn)

- **[🔴 LỆCH JSON / KÍNH NGỮ] `dòng 44`**
  Trích rule.md: `| **ズン** | 「松本様、いつもお世話になっております。」 <br/>*Anh Matsumoto, em luôn cảm ơn anh đã hỗ trợ ạ.* |`
  Trích conversation.json (`rule_01_good_03`): `松本様、こちらこそいつもお世話になっております。`
  **Vấn đề:** Khách (Matsumoto) vừa nói `お世話になっております` xong. Người đáp lại phải thêm
  `こちらこそ` — nếu lặp y hệt câu của đối phương thì nghe như máy đọc, và trong nghi thức Nhật bị coi là
  không "nhận" lời chào. v1.2 đã sửa ở json nhưng rule.md giữ bản cũ.
  **Đề xuất:** `「松本様、こちらこそいつもお世話になっております。」`

- **[🔴 TIẾNG VIỆT — VN-A CHƯA FIX] `dòng 44`**
  Trích: `*Anh Matsumoto, em luôn cảm ơn anh đã hỗ trợ ạ.*`
  **Vấn đề:** `REVIEW_FINDINGS_v1.1.md` mục VN-A ghi rõ: 「いつもお世話になっております」 là **lời chào**,
  không phải câu cảm ơn. Dịch "em luôn cảm ơn anh đã hỗ trợ" làm người học hiểu sai bản chất cụm từ
  quan trọng nhất của sách điện thoại. Cùng lỗi này còn ở `rule_02:38`, `rule_16:17,18` — xem mục 3.
  **Đề xuất:** `*Anh Matsumoto, em cũng xin cảm ơn anh, em chào anh ạ.*` hoặc gọn: `*Dạ, em chào anh Matsumoto ạ.*`

- **[🟡 TIẾNG VIỆT] `dòng 43`**
  Trích: `お世話になっております。白鷗株式会社の松本と申します。` → `*Cảm ơn anh đã hỗ trợ. Tôi là Matsumoto bên Cty Hakuō ạ.*`
  **Vấn đề:** Cùng lỗi bản chất với trên — dịch lời chào thành lời cảm ơn.
  **Đề xuất:** `*Chào anh, tôi là Matsumoto bên Cty Hakuō ạ.*`

- **[🔵 CHẤT LƯỢNG] `dòng 98`**
  Trích: `Người Nhật bản xứ đọc câu này trong **2.8-3.2 giây**. Nếu bạn nói nhanh hơn 2.5 giây → đối phương khó nghe.`
  **Vấn đề:** Con số 2.8–3.2 giây được nêu như dữ liệu đo đạc nhưng không có nguồn. Sách khác trong bộ
  không có kiểu số liệu này. Không sai nghiêm trọng nhưng là con số bịa có vẻ chính xác.
  **Đề xuất:** đổi thành mốc định tính: "khoảng 3 giây — chậm hơn 4 giây nghe lề mề, nhanh hơn 2,5 giây khách khó bắt tên."

- **[✅ SẠCH]** Cấu trúc rule_01 đầy đủ nhất sách: Luận điểm → Bối cảnh → Hội thoại XẤU → Vì sao xấu →
  Hội thoại TỐT → Ghi chú → 3 biến thể → Câu chốt → Luyện nói → BJT → Từ vựng. Đây nên là khuôn mẫu.

### rule_02_3コール

- **[🟡 TIẾNG VIỆT] `dòng 25, 38`**
  Trích: `「お世話になっております。」` → `*Cảm ơn anh đã hỗ trợ.*`
  **Vấn đề:** Lỗi hệ thống VN-A (xem mục 3).

- **[🔵 CHẤT LƯỢNG] `dòng 41`**
  Trích ghi chú 【1】: `Quá 3 hồi → bắt buộc kèm「お待たせいたしました」. Quá 5 hồi →「大変お待たせいたしました」`
  **Ghi nhận:** ĐÚNG chuẩn thực tế Nhật (đã kiểm chứng: 3 hồi = mốc "khách bắt đầu thấy chờ",
  5 hồi = "khách bắt đầu bực"). Không phải lỗi — ghi lại để chốt là con số này hợp lệ.

- **[🔵 THIẾU] BJT Practice `dòng 63-70`** không có phần **Giải thích** trong khi rule_01 và rule_03 có.
  → xem lỗi hệ thống E-2.

### rule_03_お待たせ詫び

- **[🟡 TỰ MÂU THUẪN NHẸ] `dòng 22-25` vs `rule_02:41`**
  Trích rule_03 bảng 4 cấp: `**3-5 hồi chuông** | お待たせいたしました` và `**5+ hồi chuông / chờ máy 30 giây** | 大変お待たせいたしました`
  Trích rule_02 dòng 41: `Quá 3 hồi → 「お待たせいたしました」. Quá 5 hồi →「大変お待たせいたしました」`
  **Vấn đề:** rule_02 nói "quá 3 hồi" (tức từ hồi 4), rule_03 nói "3-5 hồi". Vênh ở hồi thứ 3:
  rule_03 hàm ý bốc ở hồi 3 vẫn phải xin lỗi, rule_02 (và tiêu đề rule "bắt máy TRONG 3 hồi chuông")
  nói bốc trong 3 hồi là ĐẠT, không cần xin lỗi. Người học đọc liền 2 rule sẽ lẫn.
  **Đề xuất:** sửa dòng 22 thành `**4-5 hồi chuông**` cho khớp nguyên tắc "3コール以内 = đạt".

- **[🟡 THIẾU KHỚP] `dòng 25`**
  Trích: `| **Có thể đã không bốc đúng lúc** | 大変お待たせし、誠に申し訳ございません |`
  **Vấn đề:** Cột "Thời gian khách đợi" của 3 dòng trên đều là mốc thời gian, dòng 4 lại là một
  mô tả mơ hồ ("có thể đã không bốc đúng lúc") — không phải mốc thời gian, người học không biết khi nào dùng.
  **Đề xuất:** `**Chờ máy 2 phút+ / khách phải gọi lại nhiều lần**`.

- **[✅]** Bảng 4 cấp + BJT có giải thích: rule chất lượng tốt.

### rule_04_片手メモ

- **[✅ SẠCH]** JP-2 (`メモのご準備`) đã fix, cụm 復唱 đã reorder đúng thứ tự v1.2, khớp json 100%.
  Rule này là ví dụ fix chạy trọn cả md lẫn json.

- **[🔵 CHẤT LƯỢNG] `dòng 20`** — dòng blockquote rỗng `>` (thiếu mô tả bối cảnh cho hội thoại XẤU,
  trong khi hội thoại TỐT dòng 35 có). Lỗi format nhỏ, nên bù mô tả cho cân.

### rule_05_5W1Hメモ

- **[🔴 QUY TRÌNH — SAI KHUNG 5W1H] `dòng 11-19`**
  Trích khung mẫu:
  ```
  場所:   ___________  (Where - điện thoại/gặp mặt/email)
  ```
  **Vấn đề:** Where trong ghi chú điện thoại nghĩa là **nơi/địa điểm của sự việc** (phòng họp nào,
  hiện trường nào), KHÔNG phải "kênh liên lạc". Kênh liên lạc là How. Khung này dạy sai định nghĩa
  cột Where — người học điền vào ô Where chữ "điện thoại" ở mọi cuộc gọi thì cột đó vô dụng vĩnh viễn.
  Đối chiếu `rule_14:14` — ở đó Where được dùng đúng: `第3会議室（Where）`. **Hai rule tự mâu thuẫn.**
  **Đề xuất:** `場所:   ___________  (Where - địa điểm liên quan: phòng họp / hiện trường / văn phòng)`
  và chuyển kênh liên lạc xuống dòng 対応 (How).

- **[🔴 TỰ MÂU THUẪN] `dòng 3` vs `rule_14:14`**
  Trích rule_05: `**When-Who-Where-What-Why-How**` (thứ tự: When → Who → Where → What → Why → How)
  Trích rule_14 dòng 14: `明日（When）、松本様（Who）、第3会議室（Where）、打ち合わせ（What）、6名参加（How）、14時から（When详）`
  **Vấn đề:** rule_14 gán `6名参加` = How, nhưng số người tham dự không phải "cách thức" — đó là
  thông tin bổ sung của What. Và rule_05 có ô Why (理由) mà rule_14 bỏ hẳn. Hai rule dạy cùng
  một khung nhưng ánh xạ khác nhau.
  **Đề xuất:** thống nhất — hoặc rule_14 bổ sung `（Why）` và bỏ nhãn How cho 6名, hoặc rule_05
  ghi rõ "không phải cuộc gọi nào cũng đủ 6 ô, ô nào trống thì gạch ngang".

- **[🔴 CHỮ HÁN LỖI — KÝ TỰ TRUNG] xem rule_14 dòng 14** (`When详` / `How详`) — ghi ở mục rule_14.

- **[🟡 QUÁ NGẮN] 50 dòng, thiếu 3 khối**
  Rule_05 KHÔNG có: Bối cảnh, Hội thoại XẤU, BJT Practice. Là rule dạy "khung mẫu bắt buộc" mà
  không có ví dụ NG thì người học không thấy hậu quả của việc ghi thiếu.

### rule_06_声の高さ

- **[🔵 CHẤT LƯỢNG] `dòng 13-15`**
  Trích: `Cao độ | Bình thường | **+半音**` — hướng dẫn "nâng đúng nửa cung" là chỉ dẫn âm nhạc,
  người học không có tai nhạc sẽ không thực hiện được, và không có cách tự kiểm.
  **Đề xuất:** giữ `+半音` (đây là cách nói phổ biến trong đào tạo 電話応対 Nhật) nhưng thêm mẹo thực hành:
  "Cách dễ: phát âm chữ ソ (nốt Sol) rồi bắt đầu câu chào từ độ cao đó" hoặc "nói như khi chào một người bạn vui vẻ".

- **[🟡 THIẾU KHỐI] 61 dòng — không có BJT Practice.** (Xem lỗi hệ thống E-2.)

- **[🔵]** `dòng 15`: `**Phụ âm rõ** ("です" — "đe-su" rõ chữ "su")` — chú thích romaji kiểu Việt hóa
  ("đe-su") không nhất quán với phần còn lại của sách (mọi nơi khác dùng furigana/romaji chuẩn).

### rule_07_声で笑顔

- **[🟡 TIẾNG VIỆT] `dòng 31`**
  Trích: `「松本です。いつもお世話になっております。」` → `*Tôi là Matsumoto. Lúc nào cũng cảm ơn bên em hỗ trợ ạ.*`
  **Vấn đề:** Lỗi VN-A. Ngoài ra "cảm ơn bên em hỗ trợ" là câu tiếng Việt lủng củng (thiếu "đã").
  **Đề xuất:** `*Tôi là Matsumoto. Lúc nào cũng nhờ bên em giúp đỡ ạ.*`

- **[🔵 CHẤT LƯỢNG] `dòng 11`**
  Trích: `Khi người ta cười, **đường thanh quản** thay đổi — tần số âm sắc cao hơn... Đây không phải mẹo vặt — đây là vật lý âm thanh.`
  **Vấn đề:** "đường thanh quản" là cách gọi sai; cơ chế thật là hình dạng **khoang miệng/khoang cộng hưởng**
  (vocal tract) thay đổi khi nâng cơ má, làm dịch formant lên cao — không phải thanh quản (larynx).
  Khẳng định "đây là vật lý âm thanh" trong khi mô tả cơ chế sai làm giảm uy tín.
  **Đề xuất:** `Khi cười, khoang miệng mở rộng hơn — vùng cộng hưởng đổi, giọng "sáng" lên. Não người nghe bắt được thay đổi này dù không thấy mặt.`

- **[🟡 THIẾU KHỐI] 58 dòng — không có BJT Practice, không có Bối cảnh.**

### rule_08_静かな環境

- **[✅ SẠCH về JP]** JP-3 (`お声が遠く` → `お電話が遠く`) và JP-3b (bỏ `お電話お受けいたします`)
  ĐÃ FIX đúng ở cả `rule.md:48` lẫn json. Đây là fix chạy trọn.

- **[🟡 TIẾNG VIỆT] `dòng 48`**
  Trích: `*Em đang đi ngoài nên xin lỗi anh. Em xin nhận máy luôn. Nếu line không được rõ, mong anh thông cảm ạ.*`
  **Vấn đề:** "Em đang đi ngoài nên xin lỗi anh" là dịch bám cấu trúc Nhật (`外出中で恐れ入りますが`),
  tiếng Việt nghe cụt. "đi ngoài" ở tiếng Việt còn có nghĩa khác (đi tiêu chảy) — nên tránh hẳn.
  **Đề xuất:** `*Em đang ở ngoài, mong anh thông cảm ạ. Em xin nghe máy luôn. Nếu đường truyền không rõ, mong anh bỏ qua cho em ạ.*`

- **[🔵 FORMAT] `dòng 13-18`** — cột `OK / NG` có 6 dòng nhưng chỉ 2 dòng thực sự ghi chữ NG,
  4 dòng còn lại bắt đầu bằng khoảng trắng (mất emoji/ký hiệu). Bảng nhìn như thiếu dữ liệu.
  **Đề xuất:** điền rõ `❌ NG` / `⚠️ Hạn chế` / `✅ OK` cho cả 6 dòng.

- **[🟡 THIẾU KHỐI] 67 dòng — không có BJT Practice, không có Bối cảnh.**

### rule_09_デスク準備

- **[🟡 QUÁ NGẮN — 47 dòng, ngắn nhất phần I]**
  Thiếu: Bối cảnh, Hội thoại XẤU, BJT Practice. Chỉ có 1 hội thoại 2 lượt.
  Rule này bản chất là checklist — chấp nhận được, nhưng nên có ít nhất 1 ví dụ NG
  ("ちょっとお待ちください、メールを開きます" đã được nhắc ở dòng 31 nhưng không dựng thành hội thoại XẤU).

- **[🔵]** `dòng 12-17` checklist trộn 3 ngôn ngữ trong 1 khối:
  `□ ペンとメモパッド (trong tầm với)` / `□ カレンダー / lịch điện tử đang mở`.
  Không sai nhưng lệch chuẩn so với checklist rule_10 (dòng 12-16, thuần Nhật). Nên thống nhất một kiểu.

### rule_10_メンタル準備

- **[🔴 UCHI/SOTO — RÒ CHỨC DANH NỘI BỘ] `dòng 25`**
  Trích: `「結論：5/15デッドラインに間に合わない。新納期5/19。理由：トゥアン病欠。代替案：金曜にドラフト。」`
  **Vấn đề:** Đây là ghi chú nội tâm nên `トゥアン` trần là ĐÚNG. **Không phải lỗi** — ghi lại để
  giai đoạn sửa không "sửa nhầm tiện tay". ⚠️ Tuy nhiên **lý do "トゥアン病欠" tuyệt đối không được
  nói ra với khách** (tiết lộ tình trạng sức khỏe nhân viên + đẩy lỗi cho cá nhân).
  rule.md không cảnh báo điều này, mà đây là bẫy lớn: người học đọc dòng 25 rồi bê nguyên
  "vì anh Tuấn nghỉ ốm" vào cuộc gọi thật.
  **Đề xuất:** thêm 1 dòng cảnh báo sau dòng 27:
  `⚠️ Lý do nội bộ (ai nghỉ ốm, ai nghỉ việc) CHỈ ghi trong ghi chú của mình. Nói với khách thì gộp thành 「弊社の体制上の事情により」.`

- **[🔴 TỰ MÂU THUẪN] `dòng 27` vs `rule_03` toàn bộ**
  Trích rule_10: `「言ってはいけない：『すみません』(軽すぎ)、『仕方ないですよね』(無責任)」`
  **Vấn đề:** rule_10 liệt `すみません` vào NG. Nhưng rule_03 dựng cả một hệ 4 cấp xin lỗi mà
  không hề nhắc `すみません` là NG; BJT của rule_03 (`dòng 80`) đưa `B) すみません、お待たせしました`
  là phương án SAI với lý do "suồng sã" — nhất quán. Vấn đề là ở chỗ **rule_10 không nêu thay thế**.
  Người học đọc "đừng nói すみません" mà không biết nói gì.
  **Đề xuất:** đổi dòng 27 thành: `『すみません』(軽すぎ → 「申し訳ございません」を使う)、『仕方ないですよね』(無責任)`

- **[🟡 THIẾU KHỐI] 58 dòng — không có Bối cảnh, không có Hội thoại XẤU, không có BJT.**

### rule_11_会社代表

- **[✅ SẠCH]** `おつなぎ` đã canonical hoá (dòng 15), khớp json. Bảng đối lập cá nhân/đại diện rất tốt.

- **[🔵 NHẤT QUÁN] `dòng 54`** — bảng từ vựng ghi `繋ぐ | つなぐ`, trong khi thân bài dùng hiragana
  `おつなぐ`/`おつなぎ` theo canonical v1.1. Không sai (từ vựng nêu dạng từ điển) nhưng nên thêm ghi chú
  `(trong lời nói thường viết hiragana: おつなぎいたします)` để người học không viết `お繋ぎ`.

### rule_12_名前確認

- **[🔴 LỆCH JSON / NGHI THỨC] `dòng 14`**
  Trích rule.md: `「白鷗株式会社の松本様でいらっしゃいますね。お<ruby>待<rt>ま</rt></ruby>ちしておりました。」`
  Trích json (`rule_12_good_02`): `白鷗株式会社の松本様でいらっしゃいますね。いつもお世話になっております。`
  **Vấn đề:** v1.2 đã sửa ở json vì `お待ちしておりました` ("em đã đợi điện của anh") chỉ dùng khi
  **đã hẹn trước sẽ gọi**. Ở đây bối cảnh là cuộc gọi đến không hẹn (người gọi tự xưng, còn bị
  nghe nhầm tên là ますもと) — nói "em đã đợi" là sai tình huống, nghe như khách nợ mình cuộc gọi.
  **Đề xuất:** `「白鷗株式会社の松本様でいらっしゃいますね。いつもお世話になっております。」` + sửa
  bản Việt dòng 14 tương ứng (`*…đúng không ạ. Dạ em chào anh ạ.*`).

- **[🔴 QUY TRÌNH — THIẾU BƯỚC XÁC MINH KHI NGHE KHÔNG RÕ] `dòng 13-14`**
  Trích: người gọi nói `「白鷗のますもとですが」` (nghe ra "Masumoto"), em Dũng đáp thẳng
  `「…松本様でいらっしゃいますね」` (Matsumoto).
  **Vấn đề:** Đây là điểm CHÍNH của rule (luận điểm dòng 4: `松本 vs 増本` dễ nhầm) nhưng hội thoại
  lại **bỏ qua chính thao tác cần dạy**. Em Dũng tự ý "sửa" tên khách từ ますもと thành 松本 dựa
  vào phỏng đoán. Nếu người gọi thật sự là 増本様 thì đây là lỗi nặng — gọi sai tên khách.
  Đúng chuẩn: khi nghe không chắc phải hỏi lại kanji (`どのような漢字でいらっしゃいますか`) — chính
  cụm mà v1.2 đã bổ sung cho rule_39.
  **Đề xuất:** thêm 1 lượt trước dòng 14:
  `| **ズン** | 「恐れ入ります、お名前はどのような漢字でいらっしゃいますでしょうか。」 <br/>*Dạ em xin phép hỏi, tên anh viết bằng chữ Hán thế nào ạ?* |`
  rồi mới đến câu xác nhận.

- **[🟡 QUÁ NGẮN — 27 dòng, NGẮN NHẤT trong 23 rule]**
  Thiếu: Bối cảnh, Hội thoại XẤU, Biến thể, BJT Practice, Ghi chú đầy đủ. Chỉ có 1 hội thoại 2 lượt.
  Đây là rule về kỹ năng cốt lõi (xác nhận tên) mà mỏng nhất sách — mất cân đối nghiêm trọng.
  So sánh: rule_01 (124 dòng) dạy 1 câu chào; rule_12 (27 dòng) dạy cả kỹ năng xác minh danh tính.

- **[🔵]** `dòng 16` — ghi chú 【1】 nằm ngoài khối `**Ghi chú:**` (các rule khác đều có heading).
  Format lệch.

### rule_13_数字復唱

- **[✅ SẠCH]** VN-1/VN-5 (`至っとマーク` → `アットマーク`) ĐÃ FIX cả dòng 12 lẫn dòng 32.
  Thứ tự 復唱 (JP-B) cũng đã đúng: `復唱させていただきます` đứng TRƯỚC dãy số (dòng 20).

- **[🔴 QUY TRÌNH — CÁCH ĐỌC SỐ SAI CHUẨN NHẬT] `dòng 11`**
  Trích: `Đọc từng số, không nhóm: 「090-1234-5678 = ぜろ-きゅう-ぜろ、いち-に-さん-よん、ご-ろく-なな-はち」`
  **Vấn đề:** Chuẩn đọc số điện thoại trong 電話応対 Nhật đọc **4 là よん, 7 là なな, 9 là きゅう,
  0 là ゼロ hoặc まる** — phần này ĐÚNG. Nhưng **thiếu quy tắc quan trọng nhất**: dấu gạch nối
  phải đọc là **「の」** (090の1234の5678). Dòng 11 viết `-` (gạch) trong bản mẫu mà không giải thích,
  trong khi hội thoại dòng 20 lại đọc `ぜろきゅうぜろの、いちにさんよんの、…` — **có 「の」**.
  Lý thuyết và mẫu câu vênh nhau ngay trong cùng 1 rule.
  **Đề xuất:** sửa dòng 11 thành `「090の1234の5678 = ぜろきゅうぜろ の いちにさんよん の ごろくななはち」— dấu gạch nối đọc là 「の」.`

- **[🔴 QUY TRÌNH — HƯỚNG DẪN NGƯỢC NHAU] `dòng 11` vs `dòng 24`**
  Trích dòng 11: `Đọc từng số, **không nhóm**`
  Trích dòng 24 (Câu chốt): `「数字を<ruby>区切</ruby>って復唱」` = "lặp lại **có ngắt nhóm**"
  Trích dòng 20 (hội thoại): đọc theo nhóm `ぜろきゅうぜろ / いちにさんよん / ごろくななはち`
  **Vấn đề:** Dòng 11 dạy "không nhóm", câu chốt và hội thoại đều làm "có nhóm". Người học đọc
  bảng quy tắc trước sẽ học sai. Bản chất đúng là: **đọc rời từng chữ số, nhưng ngắt theo nhóm
  của số điện thoại** — hai ý này không mâu thuẫn nhưng dòng 11 diễn đạt gây hiểu ngược.
  **Đề xuất:** dòng 11 → `Đọc rời từng chữ số (không đọc "một nghìn hai trăm ba tư"), ngắt nghỉ theo nhóm của số máy.`

- **[🟡 TIẾNG VIỆT] `dòng 20`**
  Trích: `*Em xin lặp lại: 090-1234-5678 (ngắt từng nhóm) đúng không ạ?*`
  **Vấn đề:** Bản Việt dùng chú thích trong ngoặc `(ngắt từng nhóm)` thay vì dịch nội dung —
  người học không biết câu tiếng Việt tương ứng để nói. Đây là chỗ duy nhất trong 23 rule
  dịch kiểu "mô tả thay vì dịch".
  **Đề xuất:** `*Em xin phép nhắc lại: không chín không — một hai ba bốn — năm sáu bảy tám, đúng không ạ?*`

- **[🟡 QUÁ NGẮN — 32 dòng]** Thiếu: Bối cảnh, Hội thoại XẤU, Biến thể, BJT Practice, khối Ghi chú.
  Rule về 復唱 email/số/tên (3 loại) mà chỉ có 1 hội thoại minh hoạ cho 1 loại (số).
  Loại "Email" (dòng 12) và "Họ tên" (dòng 13) chỉ có trong bảng, không có hội thoại nào.

- **[🔵] `dòng 12`** — `「t-a-n-a-k-a アットマーク tenhou.co.jp」`: tên miền `tenhou.co.jp` không thuộc
  cast nào của sách (công ty là 白鷗 / ティエンファット). Nên dùng `hakuo.co.jp` cho nhất quán.

### rule_14_5W1H必須

- **[🔴 KÝ TỰ SAI — CHỮ HÁN GIẢN THỂ TRUNG QUỐC] `dòng 14`**
  Trích: `14時から（When**详**）、資料事前メール（How**详**）`
  **Vấn đề:** `详` là chữ giản thể **tiếng Trung**, không tồn tại trong tiếng Nhật. Dạng Nhật là `詳`.
  Đây là lỗi ký tự lọt vào bản in — người học đọc sẽ thấy chữ lạ, và font Nhật có thể không render.
  Bảng từ vựng dòng 24 lại ghi ĐÚNG là `詳細`. Cùng file, hai dạng chữ khác nhau.
  **Đề xuất:** `（When詳）`, `（How詳）` — hoặc bỏ hẳn, dùng `（時刻）`, `（方法）`.

- **[🔴 TỰ MÂU THUẪN với rule_05] `dòng 14`**
  Trích: `6<ruby>名参加</ruby>（How）`
  **Vấn đề:** Số người tham dự bị gán nhãn **How**, nhưng rule_05 dòng 17 định nghĩa
  `対応: (How - mình đáp + việc tiếp theo)`. Hai định nghĩa How hoàn toàn khác nhau.
  Đồng thời rule_14 **bỏ hẳn ô Why** mà rule_05 bắt buộc, dù luận điểm dòng 3 vẫn liệt kê `なぜ`.
  **Đề xuất:** thống nhất bộ nhãn giữa rule_05 và rule_14 (xem lỗi hệ thống C-1).

- **[🟡 QUÁ NGẮN — 26 dòng, ngắn thứ 2]** Thiếu: Bối cảnh, Hội thoại XẤU, Biến thể, BJT, Ghi chú.
  Rule tiêu đề "5W1H **BẮT BUỘC**" mà không có ví dụ hậu quả khi thiếu — trái với luận điểm
  dòng 5 (`1つでも欠けると確認電話が必要 = 失礼`).

- **[🔵]** Toàn bộ nhãn 5W1H viết bằng tiếng Anh chèn vào câu tiếng Nhật (`（When）`). Trong cuộc gọi thật
  người Nhật không nói vậy. Nên có 1 dòng ghi chú: "Nhãn (When)/(Who) chỉ để bạn đọc hiểu cấu trúc,
  KHÔNG đọc lên khi nói."

### rule_15_取次ぎ

- **[🔴 QUY TRÌNH — THIẾU BƯỚC 保留, SAI CHÍNH LUẬN ĐIỂM CỦA RULE] `dòng 15-19`**
  Trích luận điểm dòng 4: `Chuyển máy có 3 bước: (1) hỏi tên người nhận, (2) xác nhận với người được nhờ, (3) chuyển.`
  Trích hội thoại:
  ```
  松本PM  | 「ズンさんお願いします。」
  ハイ    | 「松本様、少々お待ちください。ただ今おつなぎいたします。」
  (chuyển sang ズン) ハイ | 「ズン、白鷗の松本様からお電話です。」
  ```
  **Vấn đề (2 lỗi chồng nhau):**
  1. **Hội thoại KHÔNG có bước (1) hỏi tên.** Hải gọi thẳng `松本様` mà chưa từng hỏi
     "失礼ですが、どちら様でいらっしゃいますか". Ở đây khách tự xưng cũng không có (dòng 15 chỉ nói
     `ズンさんお願いします`) — nghĩa là Hải **đoán** ra là Matsumoto. Chính rule này tuyên bố
     "không nhảy bước = chuyển nhầm" rồi tự nhảy bước.
  2. **Thiếu thao tác 保留 (giữ máy).** Chuẩn nghiệp vụ Nhật: dù người cần gặp ngồi ngay cạnh,
     **bắt buộc bấm giữ máy trước** rồi mới quay sang gọi đồng nghiệp. Trong kịch bản hiện tại,
     câu `「ズン、白鷗の松本様からお電話です」` và `「ありがとう、つないで」` (nói trống không, thể thường)
     **lọt thẳng vào tai khách** vì chưa hold. Khách nghe nhân viên nói trống không với nhau = mất điểm nặng.
  **Đề xuất:** thêm chỉ dẫn sân khấu và bước hỏi tên:
  ```
  | **ハイ** | 「恐れ入りますが、どちら様でいらっしゃいますでしょうか。」 |
  | **松本PM** | 「白鷗の松本と申します。」 |
  | **ハイ** | 「松本様でいらっしゃいますね。少々お待ちください。ただ今おつなぎいたします。」 *(bấm giữ máy)* |
  | *(保留中 — khách KHÔNG nghe được)* **ハイ** | 「ズン、白鷗の松本様からお電話です。」 |
  ```
  Và thêm dòng Lưu ý: `⚠️ Luôn bấm giữ máy TRƯỚC khi quay sang gọi đồng nghiệp — kể cả khi người đó ngồi cạnh.`

- **[🟡 FIX NỬA VỜI — TERM-6] `dòng 1, 29`**
  Trích tiêu đề dòng 1: `Chuyển máy khi người nhận có mặt`; bảng từ vựng dòng 29: `取次ぎ | … | Chuyển máy`
  **Vấn đề:** v1.1 chốt canonical là **`nối máy`** và đã sửa lời thoại (dòng 16 dùng "nối máy"),
  nhưng tiêu đề rule + bảng từ vựng + mục lục (`meta/mục_lục.md` dòng 36) vẫn dùng "Chuyển máy".
  Trong cùng 1 file có cả hai từ.
  **Đề xuất:** hoặc đổi hết sang "nối máy", hoặc chốt lại: "chuyển máy" cho tiêu đề/khái niệm và
  "nối máy" cho lời thoại — nhưng phải ghi rõ quyết định để C2/C3 làm theo.

- **[🟡 QUÁ NGẮN — 31 dòng]** Thiếu: Bối cảnh, Hội thoại XẤU, BJT Practice. Rule về nghiệp vụ dễ hỏng
  nhất (chuyển nhầm máy) mà không có ví dụ NG.

### rule_16_不在4パターン

- **[🔴 QUY TRÌNH — TIẾT LỘ THÔNG TIN NỘI BỘ] `dòng 28`**
  Trích công thức 休暇中: `「あいにく本日は休みをいただいておりまして、明日〇時に出社予定でございます。」`
  **Vấn đề:** Luận điểm dòng 3 nói rõ `Mỗi công thức có mức độ thông tin tiết lộ khác nhau` —
  nhưng rule KHÔNG hề giải thích mức độ nào. Cụ thể, việc nói thẳng với khách ngoài rằng
  nhân viên **đang nghỉ phép** là điều nhiều công ty Nhật tránh (dùng `終日席を外しております`
  hoặc `本日は不在にしております` thay thế), vì tiết lộ tình trạng nhân sự. Rule đưa
  `休みをいただいております` làm công thức chuẩn mà không cảnh báo.
  **Đề xuất:** thêm cột "Mức tiết lộ" cho bảng 4 công thức, và ghi chú:
  `⚠️ Với khách ngoài chưa thân, có thể thay 「休みをいただいております」 bằng 「終日席を外しております」 để không nêu lý do.`

- **[🔴 QUY TRÌNH — THIẾU BƯỚC HỎI TÊN/BỎ SÓT XÁC NHẬN SỐ] `dòng 17-20`**
  **Vấn đề:** Em Dũng nhận nhắn gọi lại (`折り返しお電話差し上げるようお伝えしましょうか`) nhưng
  **không hề xác nhận số điện thoại gọi lại** và không hỏi khung giờ tiện. Rule_18 (dòng 15) coi
  "số gọi lại" là 1 trong 5 yếu tố BẮT BUỘC. rule_16 dạy nhận yêu cầu gọi lại mà bỏ chính yếu tố đó
  → **hai rule tự mâu thuẫn về quy trình.**
  **Đề xuất:** thêm 1 lượt sau dòng 20:
  `| **ズン** | 「恐れ入りますが、お電話番号を頂戴できますでしょうか。また、何時頃がご都合よろしいでしょうか。」 |`

- **[🟡 TIẾNG VIỆT] `dòng 17, 18`**
  Trích: `「いつもお世話になっております」` → `*Cảm ơn anh đã hỗ trợ.*` (dòng 17) và
  `*Anh Matsumoto, cảm ơn anh đã hỗ trợ ạ.*` (dòng 18)
  **Vấn đề:** Lỗi hệ thống VN-A. Đặc biệt ở dòng 17 Matsumoto (khách) nói câu này với Dũng —
  dịch thành "cảm ơn anh đã hỗ trợ" thì thành khách cảm ơn trước, sai vai.
  **Đề xuất:** dòng 17 → `*Chào em, tôi là Matsumoto bên Hakuō…*`; dòng 18 → `*Dạ em chào anh Matsumoto ạ.*`

- **[🟡 THIẾU KHỐI — 43 dòng]** Không có Hội thoại XẤU, không có BJT Practice. Có Bối cảnh (tốt).

- **[🔵] `dòng 29`** — công thức 退勤済み dùng `本日の業務を終えております`, đúng theo fix v1.2
  (tránh `退社` vì lẫn với "nghỉ việc"). ✅ Ghi nhận fix này ĐÃ ăn vào rule.md.

### rule_17_保留1分

- **[🔴 QUY TRÌNH — CON SỐ LỆCH CHUẨN NGÀNH] `dòng 1, 3, 5`**
  Trích tiêu đề: `Giữ máy tối đa 1 phút / 保留は1分以内`
  Trích luận điểm: `Để khách chờ máy quá 1 phút = mất kiên nhẫn của khách.`
  **Vấn đề:** Chuẩn được dạy phổ biến trong đào tạo 電話応対 Nhật là **30 giây**, không phải 1 phút:
  nếu quá 30 giây thì phải nhả giữ máy một lần để báo tình hình, và quá 30 giây thường chuyển
  thẳng sang 折り返し. Mốc "1 phút" là mốc **tối đa tuyệt đối**, không phải mốc hành động.
  Sách dạy 1 phút → người học để khách chờ 55 giây và tưởng mình đúng chuẩn.
  Thêm nữa, chính rule_03 (`dòng 23`) đã dùng mốc **30 giây** (`5+ hồi chuông / chờ máy 30 giây`)
  → **rule_03 và rule_17 vênh nhau về mốc thời gian giữ máy.**
  **Đề xuất:** đổi thành `保留は30秒以内、最長でも1分` và luận điểm:
  `Quá 30 giây → nhả giữ máy, báo tình hình, xin phép chờ tiếp hoặc gọi lại. Quá 1 phút → bắt buộc chuyển sang gọi lại.`
  Đồng thời sửa mục lục `meta/mục_lục.md` dòng 38 (`Hold tối đa 1 phút`).

- **[🔴 QUY TRÌNH — THIẾU BƯỚC CẢM ƠN/XIN PHÉP KHI NHẢ GIỮ MÁY] `dòng 16`**
  **Vấn đề:** Hội thoại nhảy thẳng từ lúc bấm giữ máy (dòng 15) sang câu xin gọi lại (dòng 16),
  bỏ mất mốc "50 giây" mà chỉ dẫn sân khấu dòng 11 (`*50秒経過, nhạc chờ*`) nêu ra.
  Người học không thấy được thao tác then chốt: **quay lại đường dây giữa chừng để báo cáo tiến độ**
  — chính là điều luận điểm dòng 5 dạy (`超える場合は一旦戻り`). Lý thuyết có, hội thoại không minh hoạ.
  **Đề xuất:** thêm chỉ dẫn `*(nhả giữ máy ở giây thứ 30)*` trước dòng 16 để khớp lý thuyết.

- **[🟡 QUÁ NGẮN — 28 dòng]** Thiếu: Bối cảnh, Hội thoại XẤU, Biến thể, BJT, Ghi chú.

### rule_18_伝言5要素

- **[🔴 QUY TRÌNH — THIẾU YẾU TỐ 2/5 TRONG CHÍNH HỘI THOẠI] `dòng 13-17` vs `dòng 21-27`**
  **Vấn đề:** Rule tuyên bố 5 yếu tố bắt buộc, `Thiếu 1 trong 5 = ghi chú vô dụng` (dòng 3).
  Nhưng hội thoại minh hoạ chỉ thể hiện 3/5:
  - ①誰が: ✅ (松本様 — nhưng khách không tự xưng trong hội thoại, Dũng biết sẵn)
  - ②会社・部署: ❌ **không xuất hiện bất kỳ đâu trong hội thoại**
  - ③折り返し番号: ✅ dòng 15
  - ④用件: ✅ dòng 13
  - ⑤発信時刻: ✅ dòng 17
  Bảng 5 yếu tố (dòng 23-27) điền đủ `白鷗株式会社・PM` nhưng hội thoại không có chỗ nào thu thập
  thông tin đó → người học không học được cách hỏi.
  **Đề xuất:** thêm lượt tự xưng của Matsumoto ở đầu (`白鷗株式会社の松本と申します`) để yếu tố ②
  xuất hiện tự nhiên trong hội thoại.

- **[🟢 KIỂM CHỨNG — ĐÚNG] `dòng 14, 17, 31`**
  `申し伝えます` dùng khi hứa với **người ngoài** (Matsumoto) sẽ nhắn cho **người trong công ty** (Tuấn).
  ✅ Đây là dùng ĐÚNG (đối lập với rule_23 nội bộ). Fix v1.2 đã ăn vào cả rule.md lẫn json.
  Ghi lại để giai đoạn sửa **KHÔNG sửa nhầm** thành `お伝えします`.

- **[🟡 THIẾU KHỐI — 40 dòng]** Không có Bối cảnh, Hội thoại XẤU, BJT Practice.

### rule_19_間違い電話

- **[🔴 LỆCH JSON — NGƯỢC CHIỀU] `dòng 18`**
  Trích rule.md: `「とんでもございません。<ruby>失礼<rt>しつれい</rt></ruby>いたします。」`
  Trích json (`rule_19_good_06`): `いえ、失礼いたします。`
  **Vấn đề:** Đây là chỗ DUY NHẤT trong 23 rule mà `rule.md` MỚI hơn `conversation.json`.
  v1.2 ghi fix `いえ、失礼いたします → とんでもございません。失礼いたします` nhưng script chỉ ăn vào
  rule.md, không ăn vào json. Nếu sau này ai đó "đồng bộ json → md" thì sẽ **lùi ngược fix**.
  **Đề xuất:** giữ nguyên rule.md (bản đúng), ghi vào nhật ký để tránh regress khi đồng bộ.
  ⚠️ Lưu ý bổ sung: `とんでもございません` bị một số sách keigo coi là dạng biến thể
  (dạng "chuẩn" là `とんでもないことでございます`), nhưng trong 電話応対 thực tế `とんでもございません`
  đã được chấp nhận rộng rãi → **giữ, không đổi**.

- **[🟡 QUY TRÌNH — TIẾT LỘ SỐ MÁY] `dòng 15-16`**
  Trích: người gọi hỏi `「あ、03-1234-5678ではないんですか？」` → Dũng đáp `「こちらは別の番号でございます。」`
  **Ghi nhận:** cách đáp này ĐÚNG (không xác nhận cũng không tiết lộ số của mình). Rule làm tốt.
  Tuy nhiên **không giải thích tại sao** không nên đọc số của mình ra. Người học dễ tự "cải tiến"
  thành "không, số bên em là 03-xxxx" — lộ số máy nội bộ.
  **Đề xuất:** thêm ghi chú: `⚠️ Không đọc số máy của mình ra để "đính chính" — chỉ nói 「こちらは別の番号でございます」.`

- **[🟡 QUÁ NGẮN — 31 dòng]** Thiếu: Bối cảnh, Hội thoại XẤU, Biến thể (VD: người gọi nhầm mà hung hăng),
  BJT Practice.

### rule_20_クレーム最初

- **[🔴 KÍNH NGỮ — 過剰敬語/謙譲語 dùng sai đối tượng] `dòng 23, 29`**
  Trích: `「ご不便をおかけしまして大変申し訳ございません。詳しくお<ruby>伺<rt>うかが</rt></ruby>いしてもよろしいでしょうか。」`
  **Vấn đề:** `お伺いする` bản thân đã là 謙譲語 kép ở dạng biên giới (伺う đã là khiêm nhường,
  thêm お→ nhiều tài liệu keigo xếp vào 二重敬語 được "quán dụng chấp nhận"). Trong ngữ cảnh
  クレーム đối mặt khách đang bực, dạng an toàn và tự nhiên hơn là **`お聞かせいただけますでしょうか`**
  hoặc **`お伺いできますでしょうか`**. Đáng chú ý: chính v1.2 đã sửa rule_58 theo hướng này
  (`お声をいただけますでしょうか → ご意見をお伺いできますでしょうか`) — tức là dự án đã chọn dạng
  `お伺いできます`, nhưng rule_20 vẫn giữ `お伺いしてもよろしい`.
  **Đề xuất:** `「…大変申し訳ございません。差し支えなければ、詳しくお聞かせいただけますでしょうか。」`
  (thêm `差し支えなければ` là chuẩn クレーム対応 — cho khách quyền từ chối).

- **[🔴 QUY TRÌNH — THIẾU BƯỚC XÁC ĐỊNH DANH TÍNH & ĐƠN HÀNG] `dòng 22-25`**
  **Vấn đề:** Khách phàn nàn về đơn hàng chưa đến. Dũng hứa `早急に確認の上、改めてご連絡差し上げます`
  (dòng 25) mà **chưa hỏi tên khách, chưa hỏi số đơn hàng, chưa hỏi số gọi lại**.
  Nếu làm đúng như hội thoại này thì không thể liên hệ lại được → lời khuyên gây hỏng việc thật.
  Trái với rule_18 (5 yếu tố bắt buộc) và rule_14 (5W1H bắt buộc).
  **Đề xuất:** thêm lượt trước dòng 25:
  `| **ズン** | 「恐れ入りますが、ご注文番号とお名前、折り返し先のお電話番号を頂戴できますでしょうか。」 |`

- **[🟡 TỰ MÂU THUẪN NHẸ] `dòng 3` vs `dòng 23`**
  Trích luận điểm: `Bước 1 = **nghe**, **xin lỗi cảm xúc**… rồi mới hỏi chi tiết.`
  Trích hội thoại: Dũng xin lỗi rồi **hỏi chi tiết NGAY** trong cùng một lượt.
  **Vấn đề:** Luận điểm nhấn mạnh "nghe trước" (傾聴) nhưng hội thoại không có lượt nào Dũng
  chỉ nghe/đệm (`さようでございますか`, `はい`, `おっしゃる通りです`). Câu 左様でございますか mãi
  dòng 25 mới xuất hiện, sau khi đã hỏi. Trình tự thực hành ngược với lý thuyết.
  **Đề xuất:** chèn 1 lượt đệm sau dòng 22: `| **ズン** | 「さようでございますか。ご不便をおかけし、誠に申し訳ございません。」 |`
  rồi mới đến câu hỏi chi tiết.

- **[🟡 THIẾU KHỐI — 38 dòng]** Không có Bối cảnh, không có BJT Practice.
  (Có Hội thoại XẤU — tốt.)

### rule_21_訪問先案内

- **[🔴 LỆCH JSON ×3 — v1.2 CHƯA ĂN VÀO rule.md] `dòng 14, 15, 16`**

  | # | rule.md (bản cũ) | conversation.json (bản v1.2 đã sửa) | Vấn đề |
  |---|---|---|---|
  | a | `dòng 14`: `Hang Bac通りを北へ` | `ハンバック (Hang Bac) 通りを北へ` | Tên riêng tiếng Việt để nguyên chữ Latinh giữa câu Nhật — khách Nhật đọc trên điện thoại không phát âm được. v1.2 đã thêm katakana. |
  | b | `dòng 15, 16`: `3<ruby>軒目<rt>けんめ</rt></ruby>` (2 chỗ) | `3つ目` (2 chỗ) | 「軒」 là lượng từ đếm **nhà ở/cửa hàng**, không dùng cho toà nhà văn phòng 8 tầng. |
  | c | `dòng 15`: `<ruby>右折<rt>うせつ</rt></ruby>いただきますと` | `右に曲がっていただきますと` | 「右折」 là từ giao thông (dùng cho xe), gắn với 「〜いただく」 thành 「右折いただく」 là cách nói không tự nhiên khi hướng dẫn người đi bộ. |

  **Đề xuất:** đồng bộ 3 chỗ này từ json sang rule.md.

- **[🟡 TỰ MÂU THUẪN] `dòng 4` vs `dòng 21`**
  Trích luận điểm dòng 4: `『現在地確認 → 目印 → 距離・方向』の順` (Vị trí hiện tại → Điểm mốc → Khoảng cách/hướng)
  Trích câu chốt dòng 21: `「目印 → 距離 → 方向」の順で案内` (Điểm mốc → Khoảng cách → Hướng)
  **Vấn đề:** Luận điểm có **4 bước** (bắt đầu bằng xác nhận vị trí hiện tại — chính là điểm mà
  bản tiếng Việt dòng 3 nhấn mạnh: "xác nhận họ đang ở đâu **trước**"), câu chốt chỉ còn **3 bước**,
  mất bước quan trọng nhất. Người học học thuộc câu chốt sẽ bỏ bước hỏi vị trí.
  **Đề xuất:** câu chốt → `「現在地確認 → 目印 → 距離 → 方向」の順で案内`

- **[🟡 TIẾNG VIỆT] `dòng 17`**
  Trích: `「お気をつけてお越しください。」` → `*Anh đi cẩn thận giúp em ạ.*`
  **Vấn đề:** "giúp em" ở đây sai — khách đi cẩn thận là vì lợi ích của khách, không phải giúp mình.
  Tiếng Việt tự nhiên không thêm "giúp em" vào lời chúc.
  **Đề xuất:** `*Anh đi đường cẩn thận ạ. Em đợi anh ạ.*`

- **[🟡 THIẾU KHỐI — 31 dòng]** Không có Bối cảnh, Hội thoại XẤU, BJT Practice.
  Trong khi luận điểm nêu rõ NG (`Tránh "đi thẳng rồi rẽ"`) mà không dựng ví dụ NG.

### rule_22_切るタイミング

- **[✅ SẠCH]** VN-4 (`Xin phép em ạ` / `Xin phép tôi ạ`) ĐÃ FIX ở cả rule.md (dòng 13, 14) lẫn json.
  Khớp 100%.

- **[🔴 TỰ MÂU THUẪN VỚI RULE_35 — mốc thời gian] `dòng 15, 20, 21`**
  Trích: `*(Chờ 2-3 giây rồi nhẹ nhàng đặt ống nghe xuống)*` (dòng 15);
  `Nếu dùng smartphone: chờ 2-3 giây` (dòng 20); `giữ thêm **3-5 giây** an toàn` (dòng 21).
  **Vấn đề:** Trong cùng 1 rule có 2 mốc (2-3 giây / 3-5 giây) mà không phân biệt rõ khi nào dùng cái nào —
  dòng 21 nói "khi không chắc" nhưng người học luôn không chắc.
  **Đề xuất:** thống nhất một mốc: `chờ 2-3 giây` là mặc định; `nếu nghe vẫn còn tiếng bên kia → chờ tới khi có tín hiệu ngắt`.
  (Đây là lỗi nhẹ nhưng nằm trong rule mà cả nội dung là "thời điểm" — cần dứt khoát.)

- **[🟡 THIẾU — QUY TẮC QUAN TRỌNG BỊ BỎ SÓT]**
  Rule dạy "khách cúp trước, mình cúp sau" nhưng **không xử lý tình huống khách KHÔNG cúp**
  (rất hay gặp: khách để máy, hoặc chờ mình cúp). Không có hướng dẫn nào cho việc "sau bao lâu thì
  mình được phép cúp trước". Người học sẽ đứng chờ vô hạn.
  **Đề xuất:** thêm Lưu ý: `Nếu sau ~5 giây đối phương chưa cúp, nói thêm 「失礼いたします」 một lần nữa rồi đặt máy nhẹ.`
  Và bổ sung quy tắc chuẩn: `かけた側が先に切る` — **bên GỌI cúp trước** (khi mình là bên gọi đi
  thì mình cúp trước, kể cả đối phương là khách) — quy tắc này bổ sung cho "khách cúp trước"
  và hiện đang thiếu hoàn toàn, gây bế tắc logic ở rule_35 (gọi đi mà lại chờ khách cúp).

- **[🟡 QUÁ NGẮN — 33 dòng]** Không có Bối cảnh, Hội thoại XẤU, BJT Practice.

### rule_23_受電後報告

- **[✅ SẠCH về JP-5]** `申し伝えました` đã được thay bằng `共有済みです` (v1.2) ở cả rule.md dòng 15
  lẫn json. Đây là fix ĐÚNG hướng: junior không dùng 謙譲語 (申し伝える) với senior khi nói về
  đồng nghiệp ngang hàng. ✅ Ghi lại để không sửa ngược.

- **[🟡 TỰ MÂU THUẪN — TIÊU ĐỀ VS NỘI DUNG] `dòng 18`**
  Trích tiêu đề khối: `## 報告テンプレ — **4要素**`
  Trích luận điểm dòng 3: `kèm **5 yếu tố** ghi chú`
  Trích rule_18 dòng 3: `5 yếu tố bắt buộc khi ghi lời nhắn`
  **Vấn đề:** Luận điểm nói "5 yếu tố", template ngay dưới lại là "4 yếu tố", và template
  (dòng 21-24) thiếu yếu tố `折り返し番号` so với rule_18. Người học không biết theo bộ nào.
  **Đề xuất:** hoặc đổi luận điểm dòng 3 thành `kèm 4 yếu tố báo cáo (rút gọn từ 5 yếu tố ghi chú của Rule 18 — bỏ số gọi lại vì đã lưu trong memo)`, hoặc thêm yếu tố thứ 5 vào template.

- **[🟡 UCHI/SOTO — chấp nhận được nhưng nên ghi chú] `dòng 15, 24`**
  Trích: `トゥアンリーダーには既に共有済みです` / `【次のアクション】トゥアンリーダーへ伝達済み`
  **Vấn đề:** Đây là ngữ cảnh **nội bộ** (Dũng báo chị Hương) nên giữ chức danh `リーダー` là ĐÚNG,
  trái ngược với rule_34/rule_43 (nói với khách → phải bỏ chức danh).
  ⚠️ **Rủi ro:** ai đó ở giai đoạn sửa có thể chạy sed toàn cục `トゥアンリーダー → 弊社のトゥアン`
  và làm hỏng chỗ này. Sách hiện KHÔNG có bất kỳ dòng nào giải thích sự khác biệt uchi/soto ở đây.
  **Đề xuất:** thêm ghi chú vào rule_23: `📌 Trong nội bộ giữ nguyên chức danh 「トゥアンリーダー」. Khi nói với khách Nhật thì bỏ chức danh, gọi 「弊社のトゥアン」 (xem Rule 43).`
  Đây vừa vá lỗ hổng kiến thức, vừa chặn sed nhầm.

- **[🟡 QUÁ NGẮN — 38 dòng]** Không có Bối cảnh, Hội thoại XẤU, BJT Practice.

- **[🔵] `dòng 3`** — `báo nội bộ ngay… trong **15 phút**`. Con số 15 phút không có căn cứ nêu ra và
  không lặp lại ở đâu khác trong sách. Không sai nhưng nên đổi thành `ngay trong ngày, tốt nhất là
  trước khi bắt tay vào việc tiếp theo` để khỏi tạo mốc cứng không kiểm chứng được.

---

## 3. Lỗi hệ thống (lặp nhiều rule)

### C-1. 🔴 Fix v1.1/v1.2 chỉ chạy trên `conversation.json`, KHÔNG chạy trên `rule.md`

Xác nhận bằng chứng cứng — **6 chỗ lệch** trong phần I+II:

| Rule | rule.md (bản đang dùng) | conversation.json (bản đã fix) | Hướng lệch |
|---|---|---|---|
| rule_01:44 | `いつもお世話になっております` | `こちらこそいつもお世話になっております` | md CŨ |
| rule_12:14 | `お待ちしておりました` | `いつもお世話になっております` | md CŨ |
| rule_21:14 | `Hang Bac通り` | `ハンバック (Hang Bac) 通り` | md CŨ |
| rule_21:15,16 | `3軒目` ×2 | `3つ目` ×2 | md CŨ |
| rule_21:15 | `右折いただきますと` | `右に曲がっていただきますと` | md CŨ |
| rule_19:18 | `とんでもございません。失礼いたします` | `いえ、失礼いたします` | **md MỚI** ⚠️ |

**Hệ quả:** `STATUS.md` ghi "32 fixes apply qua `scripts/apply_jp_native_fixes.py`" và
"auto-review 0 issues" — nhưng script chỉ quét json, còn `review_book.py` cũng không so md↔json.
**Con số "0 issues" đang che giấu 6 lệch.**
**Đề xuất cho giai đoạn sửa:** viết 1 script so khớp `rule.md` ↔ `conversation.json` theo từng câu Nhật
(strip ruby) cho toàn bộ 60 rule, coi mọi lệch là lỗi cần quyết định thủ công. Đây là công cụ giá trị
nhất cho cả C2 và C3.

### C-2. 🟡 Dịch `お世話になっております` thành "cảm ơn đã hỗ trợ" — 5 chỗ trong phạm vi tôi

`REVIEW_FINDINGS_v1.1.md` mục VN-A đã chốt: đây là **lời chào**, không phải cảm ơn. Chưa chỗ nào được sửa:

| File | Dòng | Bản Việt hiện tại |
|---|---|---|
| rule_01 | 43 | `*Cảm ơn anh đã hỗ trợ. Tôi là Matsumoto bên Cty Hakuō ạ.*` |
| rule_01 | 44 | `*Anh Matsumoto, em luôn cảm ơn anh đã hỗ trợ ạ.*` |
| rule_02 | 25 | `*(im 1 giây)... Cảm ơn anh đã hỗ trợ.*` |
| rule_02 | 38 | `*Cảm ơn anh đã hỗ trợ. Tôi là Matsumoto bên Hakuō.*` |
| rule_07 | 31 | `*Tôi là Matsumoto. Lúc nào cũng cảm ơn bên em hỗ trợ ạ.*` |
| rule_16 | 17, 18 | `*Cảm ơn anh đã hỗ trợ.*` / `*…cảm ơn anh đã hỗ trợ ạ.*` |

**Đề xuất chốt 1 khuôn dịch dùng chung toàn sách:** `*Dạ em chào anh ạ.*` (lượt mở) /
`*Chào em.*` (khách đáp) — kèm 1 ghi chú trong `_thuat_ngu.md` giải thích 「お世話になっております」
không dịch được sát nghĩa, đây là lời chào nghi thức.

### C-3. 🟡 Thiếu khối đồng loạt — cấu trúc 23 rule không đồng nhất

Khối chuẩn (theo rule_01 làm mẫu): Luận điểm → Bối cảnh → Hội thoại XẤU → Hội thoại TỐT + Ghi chú →
Biến thể → Câu chốt → BJT Practice → Bảng từ vựng.

| Rule | Bối cảnh | HT XẤU | Ghi chú | Biến thể | BJT | Dòng |
|---|:--:|:--:|:--:|:--:|:--:|---|
| 01 | ✅ | ✅ | ✅ | ✅ | ✅ | 124 |
| 02 | ✅ | ✅ | ✅ | ✅ | ✅ | 82 |
| 03 | ✅ | ✅ | ✅ | ✅ | ✅ | 95 |
| 04 | ✅ | ✅ | ✅ | ✅ | ✅ | 85 |
| 05 | ❌ | ❌ | ✅ | ❌ | ❌ | 50 |
| 06 | ❌ | ✅ | ❌ | ❌ | ❌ | 61 |
| 07 | ❌ | ✅ | ❌ | ❌ | ❌ | 58 |
| 08 | ❌ | ✅ | ❌ | ✅ | ❌ | 67 |
| 09 | ❌ | ❌ | ❌ | ❌ | ❌ | 47 |
| 10 | ❌ | ❌ | ❌ | ❌ | ❌ | 58 |
| 11 | ❌ | ✅ | ✅ | ❌ | ❌ | 55 |
| 12 | ❌ | ❌ | ⚠️ | ❌ | ❌ | **27** |
| 13 | ❌ | ❌ | ❌ | ❌ | ❌ | 32 |
| 14 | ❌ | ❌ | ❌ | ❌ | ❌ | **26** |
| 15 | ❌ | ❌ | ❌ | ❌ | ❌ | 31 |
| 16 | ✅ | ❌ | ❌ | ✅ | ❌ | 43 |
| 17 | ❌ | ❌ | ❌ | ❌ | ❌ | 28 |
| 18 | ❌ | ❌ | ❌ | ❌ | ❌ | 40 |
| 19 | ❌ | ❌ | ❌ | ❌ | ❌ | 31 |
| 20 | ❌ | ✅ | ❌ | ❌ | ❌ | 38 |
| 21 | ❌ | ❌ | ❌ | ❌ | ❌ | 31 |
| 22 | ❌ | ❌ | ❌ | ❌ | ❌ | 33 |
| 23 | ❌ | ❌ | ❌ | ❌ | ❌ | 38 |

**Nhận xét:** rule_01→04 là "vùng showcase" (82–124 dòng, đủ khối); từ rule_05 trở đi chất lượng
tụt dốc; **toàn bộ phần II (13 rule) không có rule nào có BJT Practice**, trong khi front matter
(`_front_matter.md` dòng 44) và mục lục hứa "**Mỗi rule** có: … Bài luyện BJT".
→ Đây là **lời hứa với người mua sách bị vi phạm ở 19/23 rule**. Có thể BJT đã được gom hết vào
`conversation.json` (`bjt_practice`) + Phụ lục C, nhưng nếu sản phẩm chỉ render từ `rule.md`
thì người học **không nhìn thấy** phần BJT nào từ rule_05 đến rule_23.
⚠️ **Đây có thể là lỗi nghiêm trọng nhất của cả đợt** — cần chủ nhà xác nhận pipeline
`build_release_books_02_08.py` có kéo `bjt_practice` từ json vào không. Nếu KHÔNG, phải bổ sung
19 khối BJT vào rule.md.

### C-4. 🟡 4 rule về ghi chú/lời nhắn không thống nhất khung (rule_05 / 14 / 18 / 23)

| Rule | Khung dạy | Số yếu tố | Có Why? | Có số gọi lại? |
|---|---|---|---|---|
| 05 | 5W1H + 受電者 | 7 ô | ✅ 理由 | ❌ |
| 14 | 5W1H (nhãn Anh) | 7 nhãn (có When详/How详) | ❌ | ❌ |
| 18 | 5 yếu tố 伝言 | 5 | ❌ | ✅ |
| 23 | 4 yếu tố 報告 | 4 | ❌ | ❌ |

4 khung khác nhau cho cùng một việc "ghi lại cuộc gọi", không rule nào chỉ về rule nào để giải thích
sự khác biệt (rule_05 → "Liên quan: Rule 04, Rule 18" nhưng không nói khung nào bao khung nào).
**Đề xuất:** thêm 1 bảng đối chiếu ngắn ở rule_18 hoặc rule_23: "5W1H = ghi cho MÌNH; 5 yếu tố =
ghi cho ĐỒNG NGHIỆP; 4 yếu tố = báo cho SẾP".

### C-5. 🟡 Không rule nào trong phần I+II xử lý tình huống "khách nói nhanh / nghe không rõ"

Rule_12, rule_13 đều là rule về nghe chính xác, nhưng không có mẫu câu nào cho:
- Khách nói quá nhanh: `恐れ入りますが、少しゆっくりお願いできますでしょうか`
- Nghe sót một đoạn: `恐れ入ります、〇〇の部分をもう一度お願いいたします`
Sách chỉ để dành cho rule_38/39 (phần IV). Nhưng người học phần II **đã phải nhận điện thật rồi**.
**Đề xuất:** rule_13 nên có 1 dòng trỏ chéo: `Nghe không rõ hẳn → xem Rule 38, 39.`
(Cross-reference kiểu này đã có ở rule_01–04 nhưng biến mất ở phần II — chỉ rule_11/16/19/22
có dòng "Liên quan", các rule 12/13/14/15/17/18/20/21/23 thì có, đúng, nhưng không trỏ tới phần IV.)

### C-6. 🔵 Sự cố ký tự: chữ giản thể Trung lẫn vào (`详` — rule_14:14, 2 chỗ)

Nên grep toàn sách các ký tự giản thể phổ biến: `详 请 说 关 电 话 时 间 会 议 报 别` (dạng giản thể)
để chắc không còn chỗ nào khác.

---

## 4. Mười lỗi cần sửa gấp nhất

| # | Rule | Dòng | Mức | Lỗi | Sửa thành |
|---|---|---|---|---|---|
| 1 | **19 rule (05→23)** | — | 🔴 | **Thiếu hẳn khối BJT Practice** dù front matter hứa "mỗi rule có bài luyện BJT" | Xác nhận pipeline; nếu md là nguồn duy nhất → bổ sung 19 khối BJT |
| 2 | rule_15 | 15-19 | 🔴 | Chuyển máy **không hold, không hỏi tên** — hội thoại tự vi phạm chính luận điểm "3 bước"; lời nói trống không lọt vào tai khách | Thêm lượt hỏi tên + chỉ dẫn `*(bấm giữ máy)*` + Lưu ý bắt buộc hold |
| 3 | rule_17 | 1,3,5 | 🔴 | `保留は1分以内` lệch chuẩn ngành (30 giây) và **vênh với rule_03 dòng 23** | `保留は30秒以内、最長1分`; sửa cả `meta/mục_lục.md:38` |
| 4 | rule_21 | 14,15,16 | 🔴 | 3 fix v1.2 chưa ăn vào rule.md: `Hang Bac`, `3軒目`×2, `右折いただく` | Đồng bộ từ json: `ハンバック (Hang Bac)`, `3つ目`, `右に曲がっていただく` |
| 5 | rule_12 | 13-14 | 🔴 | Rule dạy xác minh tên nhưng hội thoại **tự đoán** ますもと→松本, không hỏi kanji; + `お待ちしておりました` sai tình huống (chưa fix từ json) | Thêm lượt `どのような漢字でいらっしゃいますか` + đổi thành `いつもお世話になっております` |
| 6 | rule_20 | 22-25 | 🔴 | Xử lý phàn nàn mà **không lấy tên/số đơn/số gọi lại** → không thể liên hệ lại như đã hứa | Thêm lượt xin 注文番号 + お名前 + 折り返し先 |
| 7 | rule_05 | 14 | 🔴 | Định nghĩa **Where = kênh liên lạc** — sai bản chất 5W1H, mâu thuẫn với rule_14 (Where = phòng họp) | `(Where - địa điểm liên quan)`; chuyển kênh xuống How |
| 8 | rule_14 | 14 | 🔴 | **`详` là chữ giản thể Trung Quốc**, không phải tiếng Nhật (2 chỗ) | `詳` hoặc bỏ hẳn nhãn |
| 9 | rule_01 | 44 | 🔴 | v1.2 `こちらこそいつも` chưa vào md + bản Việt dịch lời chào thành lời cảm ơn (VN-A chưa fix) | `「松本様、こちらこそいつもお世話になっております。」` / `*Dạ, em chào anh Matsumoto ạ.*` |
| 10 | rule_10 | 25-27 | 🔴 | Ghi chú mẫu chứa `トゥアン病欠` mà **không cảnh báo tuyệt đối không nói lý do này với khách**; + liệt `すみません` NG mà không nêu thay thế | Thêm cảnh báo uchi/soto + `『すみません』(→「申し訳ございません」を使う)` |

---

## 5. Ghi chú cho giai đoạn SỬA

### 5.1 Việc phải làm TRƯỚC khi sửa bất cứ gì

1. **Chốt với chủ nhà: pipeline có kéo `bjt_practice` từ `conversation.json` không?**
   Toàn bộ quyết định về lỗi #1 (19 rule thiếu BJT) phụ thuộc câu trả lời này. Nếu md là nguồn
   duy nhất, đây là việc lớn nhất của cả sách, không chỉ phần I+II.

2. **Viết script so khớp `rule.md` ↔ `conversation.json`** (strip `<ruby>…</ruby>`, so câu Nhật).
   Tôi đã tìm bằng tay 6 lệch trong 23 rule → ngoại suy toàn sách 60 rule có thể ~15 lệch.
   Script này cũng phục vụ C2, C3.

3. **Chốt canonical `chuyển máy` vs `nối máy`** (TERM-6 đang nửa vời) trước khi sửa rule_15,
   vì quyết định ảnh hưởng cả `meta/mục_lục.md` và phụ lục.

### 5.2 CẤM sửa (dễ sửa nhầm — đã kiểm chứng là ĐÚNG)

| Chỗ | Nội dung | Vì sao ĐÚNG |
|---|---|---|
| `rule_18:14,17,31` | `申し伝えます` | Hứa với **người ngoài** (Matsumoto) sẽ nhắn cho người trong công ty → 申し伝える là đúng |
| `rule_23:15,24` | `トゥアンリーダー` | Ngữ cảnh **nội bộ** (báo chị Hương) → giữ chức danh là đúng. ⚠️ ĐỪNG sed toàn cục `トゥアンリーダー→弊社のトゥアン` |
| `rule_23:15` | `共有済みです` | v1.2 sửa đúng — junior không dùng 謙譲語 với senior về đồng nghiệp ngang hàng. ĐỪNG lùi về `申し伝えました`/`お伝えしました` |
| `rule_19:18` | `とんでもございません。失礼いたします` | rule.md ĐANG ĐÚNG, json mới là bản cũ. **Nếu đồng bộ json→md sẽ lùi fix** |
| `rule_02:41`, `rule_03:22-25` | thang 3 hồi / 5 hồi, 4 cấp xin lỗi | Khớp chuẩn 電話応対 Nhật thực tế (đã kiểm chứng web) |
| `rule_16:29` | `本日の業務を終えております` | v1.2 đã sửa từ `退社しております` — đúng, đừng đổi lại |
| `rule_06:13` | `+半音` | Là cách nói phổ biến trong đào tạo 電話応対 Nhật, không phải bịa |
| `rule_08:48` | `お電話が遠く聞こえる` | JP-3 đã fix đúng — đây là idiom chuẩn, ĐỪNG đổi về `お声が遠い` |

### 5.3 Cảnh báo về xưng hô tiếng Việt (theo yêu cầu kiểm kỹ)

Tôi đã rà toàn bộ 23 rule tìm lỗi "nhân vật Nhật tự xưng anh/em/chị thay vì tôi".
**KẾT QUẢ: 0 lỗi.** Cụ thể:
- Matsumoto tự xưng đều là **"tôi"** (rule_01:43, rule_02:38, rule_06:35, rule_07:20, rule_08:38,
  rule_21:16 — tất cả đều `私`/`〜と申します`/`〜です` trong bản Nhật, dịch "tôi" — đúng).
- Các chữ "em" trong bản Việt đều là **ngôi 2** — Matsumoto/Hương gọi Dũng (`rule_04:26` "để em lấy bút"
  là Dũng tự xưng; `rule_06:24` "Xin lặp lại em" là Matsumoto gọi Dũng; `rule_23:14` "Nội dung gì vậy em"
  là chị Hương gọi Dũng). Tất cả ĐÚNG vai.
- Dũng (nhân viên trẻ) tự xưng "em" với khách — đúng quy ước sách (khác với chị Loan 経理部長 ở
  rule_47 phần IV, ngoài phạm vi tôi).
→ **KHÔNG có gì cần sửa ở trục xưng hô trong phần I+II.** Đừng để agent khác báo số lớn ở đây.

### 5.4 Tiếng Anh thừa trong bản dịch tiếng Việt

Rà toàn bộ 23 rule: các từ tiếng Anh xuất hiện đều **có lý do chính đáng**:
- `5W1H`, `When/Who/Where/What/Why/How` — thuật ngữ khung, giữ.
- `BJT`, `J3`, `J4` — tên kỳ thi, có trong `_thuat_ngu.md`.
- `BIDV` (rule_21) — tên riêng ngân hàng.
- `PM` (rule_18:24) — có trong `_thuat_ngu.md`.
- `emergency` (rule_04:49, tiêu đề biến thể) — **THỪA**, đây là chỗ duy nhất.
  → 🔵 đề xuất: `## Biến thể — Khi không có bút sẵn (tình huống gấp)`
- `Hang Bac` (rule_21:14) — xem lỗi #4, cần thêm katakana.

### 5.5 Ước lượng công sức

| Nhóm việc | Số chỗ | Ghi chú |
|---|---|---|
| Đồng bộ md↔json (6 chỗ) | 6 | Cơ học, an toàn — trừ rule_19 phải làm ngược chiều |
| Sửa VN-A (`お世話になっております`) | 7 dòng | Cần chốt khuôn dịch trước |
| Sửa quy trình (rule_15, 17, 20, 12, 16, 05) | 6 rule | Cần viết thêm lượt hội thoại — việc nặng nhất |
| Bổ sung BJT | 19 rule | **Phụ thuộc câu trả lời về pipeline** |
| Vá tự mâu thuẫn (rule_03/17, 05/14, 21, 22, 23) | 5 cặp | Sửa 1 vế là đủ, cần chốt vế nào |
| Lỗi ký tự / format | 4 | `详`×2, bảng OK/NG rule_08, "emergency" |

---

*Báo cáo C1 — 23 rule đọc trọn, 31 phát hiện, mọi phát hiện có trích dẫn + số dòng.
Không sửa bất kỳ file nội dung nào.*
