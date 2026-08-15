# [08-A1] Rà soát rule.md phần I + II (20 rule)
> Agent: A1 | Ngày: 2026-08-15 | Trạng thái: HOÀN THÀNH
> Phạm vi: nội_dung/phần_I/rule_01..08, nội_dung/phần_II/rule_09..20
> Tổng 3.907 dòng đã đọc hết. 12 truy vấn WebSearch kiểm chứng sự thật.

## Tóm tắt số lỗi

| Mức | Số lượng |
|---|---|
| 🔴 SAI (sự thật / tiếng Nhật / lời khuyên rủi ro) | 14 |
| 🟡 NHẤT QUÁN / TIẾNG VIỆT | 11 (trong đó 1 lỗi hệ thống phủ 43 dòng) |
| 🔵 CHẤT LƯỢNG SƯ PHẠM | 6 |

**Kết luận nhanh:** phần I (rule 01–08) gần như SẠCH về mặt sự thật — đây là phần lý thuyết, ít khẳng định kiểm chứng được. Phần II (rule 09–20) là nơi tập trung gần như toàn bộ lỗi sự thật vì nó nhồi rất nhiều tên riêng / số liệu / mốc thời gian. **Lỗi nghiêm trọng nhất của đợt này KHÔNG phải lỗi mới mà là lỗi CŨ chưa được vá: fix xưng hô v1.1 chỉ chạy trên `conversation.json`, KHÔNG chạm vào `rule.md` — 43 dòng trong 18/20 file vẫn còn khách Nhật tự xưng "anh".**

---

## Danh sách lỗi

### rule_01_タイミング — SẠCH về sự thật
Không phát hiện lỗi sự thật, lỗi tiếng Nhật, hay lời khuyên rủi ro. Cấu trúc chuẩn, 4 scenario đủ, khối vùng cấm (Scenario 4) dạy tốt.

- [🟡 XƯNG HÔ] `dòng 53` | `*Ờ, Hokkaido chậm hơn Tokyo một tháng. Sapporo phải Golden Week mới nở rộ. Em đã ngắm hoa anh đào bao giờ chưa?*` | Đây là **báo nhầm** — "hoa anh đào" là tên loài hoa, không phải đại từ. Ghi lại để giai đoạn SỬA không xử lý tự động bằng regex `\banh\b` mà xoá nhầm chỗ này. **KHÔNG SỬA.**

---

### rule_02_8_2のルール — SẠCH
Không lỗi sự thật. 真駒内 (Makomanai, 南区 Sapporo) đúng, có sân trượt tuyết gần (滝野・藻岩) — mô tả "スキー場が裏山" hợp lý cho dân địa phương.

- [🟡 XƯNG HÔ] `dòng 63` | `**中村** 「あ、お酒もう一杯どう?」` → `*À, anh thêm rượu nữa nhé?*` | Nakamura là khách Nhật, "anh" ở đây là **tự xưng** → sai. | **Sửa:** `*À, uống thêm ly nữa nhé?*` (bỏ hẳn đại từ, tự nhiên nhất) hoặc `*À, tôi rót thêm nhé?*`.

---

### rule_03_親密度レベル

- [🔴 TIẾNG NHẬT — LỖI KÝ TỰ] `dòng 104` | `「…ええ、まあ…(<ruby>內心<rt>ないしん</rt></ruby>: lần đầu hỏi vầy?)」` | Ký tự `內` là **chữ Hán phồn thể/Trung Quốc**, không phải kanji Nhật. Kanji Nhật đúng là `内`. Lỗi này sẽ hiển thị sai font trên app và sai khi TTS đọc. | **Sửa:** `內心` → `内心`. (Lỗi tương tự ở rule_06 dòng 105 — xem dưới.)

- [🟡 XƯNG HÔ] `dòng 59` | `*À, Fukagawa. Giờ bố anh vẫn ở đó...*` | Matsumoto tự xưng "anh". | **Sửa:** `*À, Fukagawa. Giờ bố tôi vẫn ở đó...*`

- [🔵 CHẤT LƯỢNG] `dòng 19-25` (bảng 5 cấp) | Bảng ghi `**L4** | Đã thân thật | + 家族・健康・将来 | 中村 sau 2 năm`, nhưng rule_13 (家族) lại định nghĩa ngưỡng mở 家族 là "đã thân ≥6 tháng + đã đi ăn ≥3 lần". **Hai rule cho hai ngưỡng khác nhau cho cùng một chủ đề.** | **Sửa:** thống nhất 1 ngưỡng. Đề xuất lấy mốc của rule_13 (≥6 tháng + ≥3 bữa ăn) làm chuẩn vì nó cụ thể hơn, rồi sửa rule_03 thành `中村 sau ~6 tháng + 3 bữa`.

---

### rule_04_開かれた質問 — SẠCH
Không lỗi sự thật. 若洲海浜公園 (Kōtō-ku, Tokyo) đúng là điểm câu seabass vịnh Tokyo. 藻岩山 (Sapporo, dạ cảnh) đúng. `つるとんたん` có chi nhánh 丸の内 — đúng.

- [🟡 XƯNG HÔ] `dòng 94` | `*Hà, chủ yếu ở nhà mẹ... À, anh leo núi Moiwa ngắm dạ cảnh.*` | Nakamura tự xưng. | **Sửa:** `...À, tôi leo núi Moiwa ngắm dạ cảnh.*`

---

### rule_05_聞き上手

- [🔴 SAI SỰ THẬT — VỀ VIỆT NAM] `dòng 115-116` | `「実は地元では『海の<ruby>桂林<rt>けいりん</rt></ruby>』とも呼ばれているんですよ。」` → `*Thật ra dân địa phương còn gọi là 'Quế Lâm trên biển' đấy ạ.*` | **Sai chiều gán.** Vịnh Hạ Long được gọi là "Quế Lâm trên biển" (海の桂林 / Hạ Long — 桂林 trên biển) là cách gọi **của người nước ngoài, đặc biệt du khách Trung Quốc/Nhật**, chứ **không phải cách "dân địa phương" (地元) người Việt gọi**. Người Việt không tự so quê mình với Quế Lâm. Câu này do một người Việt (Dũng) nói với khách Nhật → **sai đúng chỗ nguy hiểm nhất**: người Việt tự nhận cách gọi của người ngoài là của mình. | **Sửa:** đổi `地元では` → `よく` hoặc `海外では`: `実は『海の桂林』とも呼ばれているんですよ` (bỏ chủ thể) — an toàn và vẫn giữ được giá trị "thêm kiến thức sau khi khách kể xong". *(Chưa cần WebSearch — đây là lỗi logic gán chủ thể, không phải lỗi dữ kiện.)*

- [🔴 SAI SỰ THẬT — VỀ VIỆT NAM] `dòng 96` | `「ハロン湾ですか!世界遺産で、3000<ruby>以上<rt>いじょう</rt></ruby>の島があって…」` | Vịnh Hạ Long có **~1.969 hòn đảo** (con số chính thức UNESCO/Việt Nam). "3000以上" là **phóng đại gần gấp đôi**. Con số 3.000 thường bị nhầm với tổng của cả Hạ Long + Bái Tử Long hoặc với vịnh khác. Đây là đoạn Dũng "khoe kiến thức" — càng khoe sai càng phản tác dụng, và độc giả người Việt sẽ bắt được ngay. | **Sửa:** `1900以上の島` hoặc `2000近い島`.

- [🟡 XƯNG HÔ] `dòng 40, 55, 59, 80, 95, 110, 133` (7 dòng) | vd `dòng 133`: `*Anh suýt rớt nước mắt. Vợ anh cười 'anh khóc sớm quá'...*` — Nakamura tự xưng 3 lần trong 1 dòng. | **Sửa:** toàn bộ → "tôi". Ví dụ dòng 133: `*Tôi suýt rớt nước mắt. Vợ tôi cười 'anh khóc sớm quá'...*` — chú ý chữ "anh" thứ 3 (trong lời vợ nói với chồng) là ĐÚNG, phải giữ.

- [🔵 CHẤT LƯỢNG] `dòng 48, 76, 105` | Rule này là rule DUY NHẤT trong 20 rule dùng bảng phụ `| Vai | Câu (bản ĐÚNG) |` chèn giữa scenario thay vì tách hẳn thành scenario riêng. Đọc trên app dễ nhầm là hội thoại tiếp diễn. | **Sửa:** không bắt buộc, nhưng nếu thống nhất được thì dùng cùng format với rule_07/rule_08 (cũng có cặp NG/TỐT nhưng tách rõ hơn).

---

### rule_06_トピック転換

- [🔴 TIẾNG NHẬT — LỖI KÝ TỰ] `dòng 105` | `「…え、ああ…(內心: cắt giữa câu chuyện?)」` | Lại là chữ `內` Trung Quốc. Ngoài ra dòng này **thiếu ruby** (rule_03 dòng 104 có `<ruby>內心<rt>ないしん</rt></ruby>`, dòng này thì không) → không nhất quán. | **Sửa:** `內心` → `<ruby>内心<rt>ないしん</rt></ruby>`.

- [🔴 TIẾNG NHẬT — MỤC TỪ SAI] `dòng 24` (bảng) và `dòng 146` (câu vàng) | Bảng ghi `**(そう)言えば** | Thân mật hơn そういえば | L3-L4`; câu vàng ghi `「(言)えば、〜って」`. | **Cả hai đều là tiếng Nhật không tồn tại.** Không có dạng rút gọn `言えば` mang nghĩa "nhân tiện". Dạng thân mật thật của そういえば là `そういや` / `そーいや` / `てか` (rất suồng). Riêng `「(言)えば、〜って」` ở dòng 146 là câu **vô nghĩa** — người học copy-paste sẽ nói sai. | **Sửa:** đổi mục bảng thành `**そういや** | Thân mật hơn そういえば | L4-L5`; đổi câu vàng thành `「そういや、〜って」`.

- [🔵 CHẤT LƯỢNG] `dòng 120` | `「そろそろお時間も気になってきましたので、話は変わりますが、来週の納期の件…」` | Ghép `そろそろお時間も気になってきましたので` + `話は変わりますが` trong CÙNG một câu là **thừa** — bản thân câu "sắp hết giờ" đã là từ chuyển rồi. Người Nhật sẽ nói một trong hai, không nói cả hai. | **Sửa:** bỏ `話は変わりますが`: `「そろそろお時間も気になってきましたので、来週の納期の件、少し相談させていただけますか?」`

---

### rule_07_沈黙 — SẠCH về sự thật
Nội dung 間/茶道/落ち着きがない chính xác. Scenario 4 (khách kể chuyện cha mất) là một trong những đoạn dạy tốt nhất của cả phần I.

- [🟡 XƯNG HÔ] `dòng 72, 120, 127` | vd `dòng 120`: `*...Bố anh năm ngoái mất, giờ về nhà vẫn thấy như ông đang ngồi đó...*` | Nakamura tự xưng. **Dòng này đặc biệt cần sửa** — đây là khoảnh khắc cảm xúc nhất của rule, dùng sai đại từ làm hỏng hoàn toàn sắc thái. | **Sửa:** `*...Bố tôi năm ngoái mất, giờ về nhà vẫn thấy như ông đang ngồi đó...*`

---

### rule_08_NG話題

- [🔴 LỜI KHUYÊN RỦI RO] `dòng 144` (khối câu vàng) | `「もう30近いですよ(笑)。ところで…」(nói áng chừng + chuyển chủ đề)` | Đây nằm dưới mục **"KHÉO NÉ khi khách hỏi lương / tuổi mình"**. Nhưng chính rule này (`dòng 22`, `dòng 167`) dạy rằng nói/xác nhận tuổi là vùng cấm. Đưa mẫu câu tự khai tuổi vào phần "né" là **tự mâu thuẫn** và dạy sai kỹ năng: né tuổi thì đừng đưa con số nào cả. | **Sửa:** `「まだまだ若手ですよ(笑)。ところで…」` — né hoàn toàn, không con số.

- [🔴 LỜI KHUYÊN RỦI RO] `dòng 143` | `「いやあ、ベトナムの平均くらいですよ(笑)」(nói chung chung)` dưới mục né câu hỏi lương | Câu này **vẫn tiết lộ thông tin lương** (định vị mình ở mức trung bình VN) và mở đường cho khách hỏi tiếp "平均っていくら?". Không phải "né", là "trả lời mềm". | **Sửa:** `「いやあ、生活できるくらいですよ(笑)。ところで…」` — né + chuyển đề ngay, đúng công thức mà chính rule này dạy ở dòng 149.

- [🔴 MÂU THUẪN NỘI BỘ / TIẾNG NHẬT] `dòng 22` vs `dòng 59-73` | Bảng 8 vùng cấm ghi mục #4 là `**女性の年齢** (tuổi cụ thể của nữ)`, nhưng Scenario 2 lại là ví dụ Yamamoto **tự khai** tuổi và bài học là "không xác nhận con số". Còn `dòng 145` của rule_03 và `dòng 164` rule_17 lại nói cấm hỏi tuổi **mọi giới**. → Ba rule cho ba phạm vi khác nhau (chỉ nữ / mọi giới / nữ). | **Sửa:** thống nhất. Thực tế Nhật: hỏi tuổi cụ thể là bất lịch sự với **cả hai giới** trong quan hệ business mới, chỉ là với nữ thì nặng hơn hẳn. Đề xuất sửa bảng rule_08 thành `**年齢** (tuổi cụ thể — đặc biệt nghiêm với nữ)`.

- [🔵 CHẤT LƯỢNG] `dòng 23` | Mục #5 `**占い・血液型決めつけ**` được xếp mức "Cẩn trọng" trong khi 7 mục còn lại đều "Tuyệt đối" — nhưng khối "NG tuyệt đối tránh" (`dòng 170`) lại liệt nó vào danh sách tránh không phân biệt mức. Bảng có 2 mức nhưng phần NG chỉ có 1 mức → mức "Cẩn trọng" mất tác dụng. | **Sửa:** ghi rõ ở khối NG: "占い/血液型 — không MỞ, nhưng nếu khách mở thì đáp qua loa được".

---

### rule_09_天気

- [🔴 TIẾNG NHẬT — FURIGANA SAI] `dòng 30` | `**<ruby>花冷<rt>はなび</rt></ruby>え**` | Furigana **cắt sai**. `花冷え` đọc là **はなびえ**; phần kanji `花冷` phải mang furigana `はなび**え**`… không, chính xác hơn: `冷` ở đây đọc là `び`+`え` không tách được như vậy. Cách viết đúng theo convention của chính sách này (xem `真冬日` dòng 101 hoặc `梅雨入り` dòng 76 → `<ruby>梅雨入<rt>つゆい</rt></ruby>り`) là tách kanji-okurigana. Nhưng `花冷<rt>はなび</rt>え` cho ra chuỗi đọc "はなび" + "え" = **はなびえ** — thực ra ĐÚNG về chuỗi ghép. **Vấn đề thật:** nếu TTS đọc riêng ruby `はなび` sẽ ra "hanabi" = **pháo hoa** (花火), hoàn toàn khác nghĩa. Rủi ro thật với audio. | **Sửa an toàn:** `<ruby>花冷<rt>はなびえ</rt></ruby>え` không được (thừa え). Dùng `**花冷え**(はなびえ)` như cách rule_09 dòng 114 đã làm với 真冬日, hoặc `<ruby>花<rt>はな</rt></ruby><ruby>冷<rt>び</rt></ruby>え`. **Cần chủ nhà chốt convention** (xem mục Ghi chú cuối).

- [🔴 TRÙNG SỐ CHÚ THÍCH] `dòng 30 + 41` và `dòng 103 + 114` | **Cả hai scenario đều dùng số chú thích 【1】** trong cùng một file. Scenario 1 【1】= 花冷え, Scenario 4 【1】= 真冬日. Các rule khác đánh số **liên tục xuyên file** (vd rule_11: 【1】【2】【3】 ở Sc.1, tiếp 【1】【2】 ở Sc.2 — cũng reset; nhưng rule_12/14/15/16 thì đánh số reset theo scenario nhất quán). Riêng rule_09 chỉ có 2 chú thích và cả hai đều là 【1】 → đọc dễ tưởng cùng một chú thích. | **Sửa:** đổi chú thích Scenario 4 thành 【2】.

- [🟡 XƯNG HÔ] `dòng 87` | `*Ừ, mang ô đến nhé. Anh dẫn đi cho.*` (Sato) | **Sửa:** `*...Tôi dẫn đi cho.*`

- [🔵 CHẤT LƯỢNG] `dòng 18` (Bối cảnh) | `Tokyo đào nở rộ, Hokkaido vẫn -2°C, Kyushu đã 22°C và sắp 梅雨` — đầu tháng 4 mà nói Kyushu "sắp 梅雨" là **kéo dài quá xa**: 梅雨入り Kyushu bình quân là **cuối tháng 5 – đầu tháng 6**, cách gần 2 tháng. Chính Scenario 3 của rule này (`dòng 72`) đặt bối cảnh đúng là 5/25. | **Sửa:** bỏ vế "và sắp 梅雨" trong Bối cảnh, hoặc đổi thành "và Kyushu sẽ vào 梅雨 sớm hơn Tokyo cả tuần".

---

### rule_10_出身地

- [🔴 SAI SỰ THẬT / TÀN DƯ FIX v1.1] `dòng 58` | `**<ruby>黒田博樹<rt>くろだひろき</rt></ruby>** giải nghệ 2016.` | Đợt v1.1 đã gỡ 黒田博樹 khỏi rule_30 (Fukuoka) vì gán sai tỉnh — nhưng **ở đây thì hoàn toàn hợp lệ**: Kuroda thực sự là huyền thoại 広島カープ, giải nghệ cuối mùa 2016. Không phải lỗi. **Ghi lại để agent giai đoạn SỬA không xoá nhầm khi grep "黒田博樹".** **KHÔNG SỬA.**

- [🔴 SAI SỰ THẬT — THÔNG TIN LỖI THỜI] `dòng 58` | `<ruby>優勝<rt>ゆうしょう</rt></ruby> gần nhất = 2018.` | **Đã tra WebSearch:** Carp vô địch Central League 2016–2017–2018 (3 liên tiếp), và **tính đến 2026 vẫn chưa vô địch lại** → "gần nhất 2018" hiện vẫn đúng. **NHƯNG** đây là con số sẽ hết hạn bất cứ mùa nào, và nó nằm trong ghi chú CRM của Dũng — tức là thứ độc giả sẽ chép nguyên. | **Sửa (đề phòng):** đổi thành `優勝: 2016-2018 3連覇` — dữ kiện này vĩnh viễn đúng, không hết hạn. *(Nguồn: Wikipedia 2018年の広島東洋カープ; carp.co.jp/history)*

- [🔴 SAI SỰ THẬT — THÔNG TIN CÓ THỂ ĐÃ LỖI THỜI] `dòng 76-78` | `**<ruby>新井監督<rt>あらいかんとく</rt></ruby>**のチーム、若い選手が育ってきてる印象です。` | 新井貴浩 nhậm chức HLV Carp từ mùa 2023. Sách xuất bản 2026 → cần xác nhận ông còn tại nhiệm ở thời điểm sách đến tay người đọc. Đây là **kiểu dữ kiện dễ hỏng nhất** trong sách (tên HLV đương nhiệm). Rủi ro thực tế: người học học thuộc câu này rồi nói với khách Hiroshima sau khi HLV đã đổi → phản tác dụng ngược hoàn toàn với mục đích của rule. | **Sửa:** thêm cảnh báo ngay dưới scenario: "⚠️ Tên HLV/cầu thủ thay đổi theo mùa — **luôn kiểm tra lại trước buổi gặp**, đừng học thuộc". Đây là bài học sư phạm quan trọng hơn cả bản thân dữ kiện.

- [🟡 XƯNG HÔ] `dòng 83, 108` | vd `dòng 83`: `*...nhớ báo anh. Quán okonomiyaki Mitchan Sōhonten anh dẫn đi.*` | Chữ "anh" thứ nhất (`nhớ báo anh`) ĐÚNG (Hiroshi tự gọi mình trong lời nói với Dũng ở ngôi 2 — nhưng thực chất vẫn là self-ref, vẫn sai). Chữ thứ hai chắc chắn sai. | **Sửa:** `*...nhớ báo tôi. Quán okonomiyaki Mitchan Sōhonten tôi dẫn đi.*`

- [🟡 NHẤT QUÁN NHÃN NHÂN VẬT] toàn file | Nhân vật Hiroshi được gọi bằng **3 nhãn khác nhau xuyên phần II**: `**広島部長**` (rule_10, 6 lần), `**広島**` (rule_11/13/14/18/20, 17 lần), và trong front_matter là "anh Hiroshi". Trong khi các khách khác chỉ dùng 1 nhãn (`中村`, `松本`, `大垣`...). Riêng `**広島**` trần trụi rất dễ đọc nhầm thành tên **tỉnh** chứ không phải người — nhất là trong rule_11 nơi đang bàn về お好み焼 Hiroshima vs Osaka. | **Sửa:** thống nhất 1 nhãn cho cả 20 rule. Đề xuất `**広島部長**` (rõ là người, khớp mục_lục). Ảnh hưởng 23 dòng.

- [🟡 NHẤT QUÁN NHÃN NHÂN VẬT] `rule_08 dòng 59` | `**山本(Osaka)**` — duy nhất 1 chỗ trong 20 rule gắn hậu tố vùng vào nhãn; 23 chỗ còn lại là `**山本**`. | **Sửa:** `**山本**`.

---

### rule_11_食

- [🔴 SAI SỰ THẬT] `dòng 92` | `蓬莱軒の<ruby>本店<rt>ほんてん</rt></ruby>、<ruby>神宮<rt>じんぐう</rt></ruby>の<ruby>近<rt>ちか</rt></ruby>く` → VN dịch `*Hōraiken bản tiệm gần đền Atsuta.*` | **Đã tra WebSearch:** あつた蓬莱軒 có **本店** (熱田区神戸町503) và **神宮店** (ngay cạnh 熱田神宮南門). Bản dịch VN nói "bản tiệm gần đền Atsuta" — **本店 KHÔNG phải là chi nhánh cạnh đền**; chi nhánh cạnh đền tên là **神宮店**. Nói với khách Nagoya rằng 本店 ở cạnh 神宮 sẽ bị bắt lỗi ngay. | **Sửa:** `蓬莱軒は本店と神宮店があって、神宮店は熱田神宮のすぐ隣ですよね` — vừa đúng vừa "sành" hơn. *(Nguồn: houraiken.com; nagoya-info.jp)*

- [🔴 TIẾNG NHẬT — RUBY SAI] `dòng 121` | `**すみれ**、<ruby>純連<rt>すみれ</rt></ruby>、けやき…どれも美味しい` | **Đã tra WebSearch:** đây là lỗi kiến thức thật, không phải lỗi gõ. `純連` **có hai cách đọc lịch sử**: quán gốc (1964) đọc すみれ, nhưng **từ 1983 tiệm Sapporo đã đổi cách đọc chính thức thành じゅんれん**; con trai thứ ba sau đó mở quán riêng lấy tên hiragana **すみれ**. → Ngày nay `純連` = **じゅんれん**, `すみれ` = quán khác. Ruby `<rt>すみれ</rt>` là **sai với hiện tại**, và câu văn thành ra "すみれ、すみれ、けやき" (lặp cùng tên) = vô nghĩa. | **Sửa:** `<ruby>純連<rt>じゅんれん</rt></ruby>`. Có thể thêm chú thích: hai quán cùng gốc, tách ra (chi tiết này rất "ghi điểm" với khách Hokkaido). *(Nguồn: junren.co.jp/ayumi; takumen.com/magazines/junsumi-history)*

- [🔴 SAI SỰ THẬT — TÊN CHUỖI QUÁN] `dòng 129` | `**ジンギスカンのキング**ってチェーン、東京にもあるから今度行ってみて。` | Không tồn tại chuỗi tên "ジンギスカンのキング". Chuỗi jingisukan có mặt ở Tokyo phổ biến là **「羊SUNRISE」**、**「ジンギスカン だるま」**(Sapporo, có chi nhánh ngoài) hoặc **「北海道 ジンギスカン ゆきだるま」**. Tên trong sách nhiều khả năng là **bịa/nhớ nhầm**. Đây là câu khách Nhật (Nakamura, người Hokkaido) nói — người Hokkaido bịa tên quán jingisukan là điều không thể xảy ra. | **Sửa:** thay bằng quán có thật, đề xuất `**「だるま」**` (Sapporo, biểu tượng jingisukan, người Hokkaido nào cũng biết) và bỏ vế "東京にもある" nếu không xác minh được, hoặc đổi thành `東京にも北海道系のジンギスカン屋、増えてるから`.

- [🟡 XƯNG HÔ] `dòng 97` | `*Haha, cái này cũng thành chiến tranh (cười). Anh phe Furaibō...*` (Ito) | **Sửa:** `*...Tôi phe Furaibō...*`

- [🔵 CHẤT LƯỢNG] `dòng 26, 53, 82, 111` (dòng chỉ dẫn sân khấu) | vd `*izakaya Osaka, đã uống 2 ly · cười · thận trọng + ngoại giao · rạng rỡ · không chịu*` | Chuỗi chỉ dẫn nối bằng `·` **không gắn với ai** — đọc không biết "rạng rỡ" là Yamamoto hay Hiroshi. Format này dùng ở **cả 20 rule** nên là vấn đề hệ thống (xem mục Lỗi hệ thống).

---

### rule_12_酒

- [🔴 SAI SỰ THẬT] `dòng 63-64` | `福岡は麦が強くてね、**いいちこ**【3】**<ruby>二階堂<rt>にかいどう</rt></ruby>**有名やろ?` + chú thích `【3】 **いいちこ** = nhãn 麦焼酎 vùng 大分.` | **Đây chính là lỗi mà v1.1 đã fix ở rule_30 nhưng BỎ SÓT ở rule_12.** Câu thoại nói "Fukuoka mạnh về mugi" rồi dẫn chứng bằng いいちこ và 二階堂 — **cả hai đều là hãng 大分 (Ōita)**, không phải Fukuoka. Chính chú thích 【3】 ngay bên dưới lại tự thừa nhận いいちこ là "vùng 大分" → **văn bản tự mâu thuẫn trong cùng một trang**. Người Kyushu sẽ bắt lỗi ngay lập tức. Đây là **lỗi nặng nhất về sự thật trong phạm vi của tôi**, và nó lặp lại đúng lỗi P0 mà v1.1 tưởng đã dọn xong. | **Sửa:** `九州は麦焼酎の文化やけん、**いいちこ**も**二階堂**も大分やけど、福岡の屋台でもよう飲むばい` — chuyển từ "Fukuoka sản xuất" sang "Fukuoka tiêu thụ", đúng thực tế và giữ nguyên mạch hội thoại. Sửa luôn chú thích 【3】 để không mâu thuẫn.

- [🔴 SAI SỰ THẬT] `dòng 67-68` | `今日は<ruby>俺<rt>おれ</rt></ruby>の<ruby>地元<rt>じもと</rt></ruby>のおすすめ、**<ruby>百年<rt>ひゃくねん</rt></ruby>の<ruby>孤独<rt>こどく</rt></ruby>**` | Sato là người **Fukuoka**. `百年の孤独` là sản phẩm của **黒木本店 — 宮崎県** (chính chú thích 【5】 dòng 76 cũng ghi "麦焼酎 Miyazaki"). Gọi rượu Miyazaki là "地元 của tôi" khi mình là dân Fukuoka = **sai**, và lại là lỗi cùng kiểu với lỗi trên. | **Sửa:** bỏ `俺の地元の` → `今日は俺のイチオシ、**百年の孤独**` hoặc `九州の名酒`.

- [🟡 XƯNG HÔ] `dòng 68, 130` | `*Hôm nay anh chọn của vùng anh...*`; `*...Còn Hae cũng được yêu ở quê anh.*` | **Sửa:** "tôi" / "quê tôi".

- [🔵 CHẤT LƯỢNG] `dòng 166` (khối NG) | `"私はお酒飲めない" mà không thử nỗ lực 1 ly → mất cơ hội gắn kết. Nếu không uống được, nói "弱いので少しだけ" + uống 1 ngụm.` | **Lời khuyên có rủi ro.** Ép người không uống được phải "uống 1 ngụm" là lời khuyên nguy hiểm với người **dị ứng cồn** (ALDH2-deficient — tỉ lệ rất cao ở Đông Á, ~40% người Nhật) và trái với xu hướng **アルハラ (alcohol harassment)** mà chính doanh nghiệp Nhật đang siết. Rule_46 (ngoài phạm vi tôi) dạy cách từ chối lịch sự — nhưng rule_12 lại dạy ngược. | **Sửa:** `Nếu không uống được → nói rõ ngay từ đầu 「体質でお酒が飲めないんです」 + gọi ノンアル (bia không cồn / ウーロン茶) và **vẫn nâng ly 乾杯**. Việc nâng ly mới là nghi thức, không phải việc uống.` — vừa an toàn vừa đúng Nhật hiện đại.

---

### rule_13_家族

- [🟡 XƯNG HÔ] `dòng 31, 35, 91, 114` | vd `dòng 31`: `*Dũng, xem này. Thật ra con gái anh năm nay đậu Waseda.*` | **Sửa:** `*...con gái tôi năm nay đậu Waseda.*`

- [🔵 CHẤT LƯỢNG] `dòng 3` (Luận điểm) vs `rule_03 dòng 24` | Xem lỗi mâu thuẫn ngưỡng L4 đã ghi ở rule_03.

- [🔵 CHẤT LƯỢNG] `dòng 120` | `③ Hỏi kế hoạch sinh con = đặc biệt nhạy cảm với cặp vợ chồng khó có con (tỉ lệ ở Nhật cao).` | Vế "(tỉ lệ ở Nhật cao)" là **khái quát hóa không có căn cứ được nêu**, và nó làm yếu lý lẽ. Lý do đủ mạnh mà không cần số liệu: đây là chuyện riêng tư tuyệt đối, bất kể tỉ lệ. | **Sửa:** bỏ ngoặc đơn, hoặc đổi thành "— và bạn không bao giờ biết hoàn cảnh của họ".

---

### rule_14_趣味

- [🔴 SAI SỰ THẬT — DỮ KIỆN HẾT HẠN NHANH] `dòng 99-105` | `**大の里**、**<ruby>新横綱<rt>しんよこづな</rt></ruby>**になりましたよね?` / `全勝はまだ1回だけよ。でも**横綱昇進**したばかりで` | **Đã tra WebSearch:** 大の里 lên 横綱 từ **場所 tháng 7/2025**; tính đến 7/2026 đã có **5 lần 幕内優勝**, trong đó lần thứ 5 (9/2025) là lần đầu với tư cách yokozuna. → Ở thời điểm sách phát hành (2026), gọi ông là **"新横綱"** và "vừa mới thăng hạng" là **lỗi thời hơn 1 năm**. Câu thoại của Sato (`先場所、先々場所と連続優勝で…3場所連続だと全勝優勝も?`) cũng không khớp với thành tích thực tế. | **Sửa:** bỏ chữ 新: `**大の里**、横綱として安定してきましたよね` và đổi đoạn đối đáp về số lần 優勝 sang dạng không chốt số: `優勝も重ねてますよね` — bền theo thời gian. *(Nguồn: ja.wikipedia.org/大の里泰輝; sumo.sports.smt.docomo.ne.jp)*

- [🔴 SAI SỰ THẬT — BỎ SÓT DỮ KIỆN ĐẮT GIÁ] `dòng 97-116` | Cả scenario sumo với 佐藤 (Fukuoka) không hề nhắc 大の里 quê **石川県津幡町** (đã tra WebSearch xác nhận). Đây không phải lỗi sai, nhưng là **cơ hội bị bỏ lỡ** đúng vào rule dạy "ghép thú chơi với quê khách". | **Sửa (tùy chọn):** thêm 1 lượt của Dũng: `大の里、石川のご出身でしたよね` — thể hiện đúng kỹ năng mà cả sách đang dạy.

- [🔴 SAI SỰ THẬT] `dòng 42` | `**初心者にしてはいい数字**` cho `220ヤード` driver | 220 yard driver **không phải là số của người mới chơi 1 năm** — đó là mức trung bình của **golfer nghiệp dư nam có kinh nghiệm**. Người chơi 1 năm với score 110 (đã nêu ở dòng 32) thường bay **170–200 yard**. Cặp số "score 110 + driver 220 yard" **không khớp nhau**. Khách Nhật chơi golf lâu năm sẽ thấy ngay là bịa. | **Sửa:** đổi `220ヤード` → `**200ヤード**くらい`, hoặc giữ 220 và đổi score xuống `**100**くらい`.

- [🟡 XƯNG HÔ] `dòng 31, 72, 127` | `dòng 72` đặc biệt: `*...Lần sau em công tác, chị giữ vé cho...*` — Yamamoto (khách Nhật nữ) tự xưng **"chị"**. Đây là biến thể của lỗi hệ thống mà script v1.1 (chỉ dò "anh"/"em") **không bắt được**. | **Sửa:** `*...Lần sau em công tác, tôi giữ vé cho...*`

- [🔵 CHẤT LƯỢNG] `dòng 181` (khối NG) | `Từ chối lời mời golf vì "kém" → người Nhật coi đây là từ chối quan hệ. Hãy nhận + thật thà về trình độ.` | Nêu quá tuyệt đối. Có nhiều lý do chính đáng để từ chối (không biết chơi hoàn toàn, vấn đề sức khỏe, chi phí — 1 buổi golf Nhật 15.000–30.000 yên tự trả). Dạy "luôn phải nhận" đặt người học vào thế khó thật sự về tài chính. | **Sửa:** thêm lối thoát: `Nếu thật sự không thể → từ chối lần này NHƯNG mở cửa lần sau: 「今回は都合がつかず…次回はぜひ練習してから参加させてください」`.

---

### rule_15_旅行温泉

- [🔴 SAI SỰ THẬT] `dòng 92` | `**1300円**で<ruby>3軒<rt>さんげん</rt></ruby>、6か月有効。` | **Đã tra WebSearch:** giá 1.300 yên và hạn 6 tháng đúng ở thời điểm hiện tại, **NHƯNG** hệ thống 入湯手形 đã được **cải tổ (37 năm lần đầu)** và trang chủ Kurokawa có thông báo **"入湯手形 価格改定のお知らせ (10/1 より適用)"** → giá sắp/đã đổi. Ngoài ra mô tả trong sách thiếu điểm mới quan trọng: nay 1 trong 3 lượt **có thể đổi sang ăn uống/mua quà**, và tổng số ryokan tham gia là **~25**, không phải 3. | **Sửa:** bỏ con số cứng: `入湯手形1枚で好きな3か所の露天風呂を巡れる、有効期限は半年` + thêm điểm "1 trong 3 dùng cho đồ ăn/quà được". Con số tiền nên bỏ hẳn — kiểu dữ kiện chắc chắn hết hạn. *(Nguồn: kurokawaonsen.or.jp/tegata; prtimes.jp 黒川温泉観光旅館協同組合)*

- [🔴 LỜI KHUYÊN SAI — CÓ THỂ GÂY HẠI] `dòng 71` | `肩から上は冷たいけど、湯の中は42度。<ruby>毛細血管<rt>もうさいけっかん</rt></ruby>が広がって、めちゃくちゃ温まる。` | Kết hợp với `dòng 131` (`飲酒後すぐ温泉は気をつけて、血圧上がるから`) thì **cơ chế sinh lý bị nói ngược**. Nguy hiểm thật của onsen là **ヒートショック** — chênh lệch nhiệt đột ngột gây **dao động huyết áp** (co mạch khi lạnh → giãn mạch khi vào nước nóng → tụt huyết áp), và rượu **hạ** huyết áp cộng hưởng gây ngất/đuối nước, chứ không phải "tăng huyết áp". Sách đang dạy sai cơ chế cho một rủi ro chết người có thật (mỗi năm Nhật có hàng nghìn ca tử vong khi tắm). | **Sửa:** `飲酒後の入浴は血圧が急に下がって倒れる危険があるから絶対にダメ。あと脱衣所と湯の温度差(ヒートショック)にも気をつけて` — đúng cơ chế, và đây là kiến thức khách Nhật lớn tuổi rất trân trọng.

- [🔴 TIẾNG NHẬT] `dòng 36-37` | Dũng hỏi `<ruby>会席<rt>かいせき</rt></ruby>と<ruby>懐石<rt>かいせき</rt></ruby>の違いって何ですか?` → VN dịch `*Kaiseki và kaiseki (chữ khác) khác nhau thế nào ạ?*` | Bản Nhật **nghe không tự nhiên trong hội thoại nói**: hai từ đồng âm hoàn toàn (かいせき), người Nhật không thể phân biệt qua giọng nói → câu hỏi này chỉ có nghĩa khi nhìn chữ viết. Người Nhật thật sẽ hỏi `会席料理と茶懐石って、どう違うんですか?` (thêm chữ để phân biệt bằng âm). | **Sửa:** `「**会席料理**と**茶懐石**って、どう違うんですか?」` — vừa tự nhiên vừa dạy đúng cách phân biệt trong khẩu ngữ.

- [🟡 XƯNG HÔ] `dòng 60` | `*Cuối tuần trước anh đi Noboribetsu...*` (Nakamura) | **Sửa:** "tôi".

- [🔵 CHẤT LƯỢNG] `dòng 12` (Tâm lý JP) | `**xăm bị cấm 1 số nơi** → bạn **không** có xăm thì OK.` | Câu này **giả định về cơ thể người đọc** — không phù hợp trong sách dạy nghề, và mâu thuẫn với Scenario 4 (`dòng 125`) nơi chính Dũng nêu vấn đề bạn có xăm. | **Sửa:** `xăm bị cấm ở nhiều ryokan truyền thống → nếu bạn hoặc đồng nghiệp có xăm, PHẢI kiểm tra trước khi đặt phòng`.

---

### rule_16_季節行事

- [🔴 SAI SỰ THẬT] `dòng 76` (chú thích 【1】) | `**隅田川花火大会** = 7月 cuối tuần thứ 4-5, lễ hội **240 năm**.` | **Đã tra WebSearch:** gốc của lễ hội là **享保18年 (1733)** — năm 2026 là khoảng **293 năm**, không phải 240. (Con số 240 có thể đến từ nhầm lẫn nào đó nhưng không khớp mốc nào.) | **Sửa:** `lễ hội có gốc từ 1733 (thời Edo), gần 300 năm lịch sử` — hoặc an toàn hơn: bỏ số, ghi `江戸時代から続く`. *(Nguồn: e-asakusa.jp; culture.city.taito.lg.jp; ja.wikipedia.org/隅田川花火大会)*

- [🔴 SAI SỰ THẬT] `dòng 96-97` | `岐阜なら**新穂高ロープウェイ**【6】、**3000メートル**【7】から**紅葉の絨毯**を見下ろせる。` + chú thích `【7】 = độ cao 3000m.` | **Đã tra WebSearch:** ga đỉnh 西穂高口 ở **2.156 m**. Con số 3.000 m **sai gần 900 m** — và nó nằm trong lời của **anh Kato, người Gifu bản địa**. Người Gifu nói sai độ cao cáp treo quê mình là điều không thể. | **Sửa:** `**2156メートル**の西穂高口から紅葉の絨毯を見下ろせる` — con số chính xác lại còn "sành" hơn. *(Nguồn: kankou-gifu.jp/spot/detail_1212; hidasanmyaku-gifu.jp)*

- [🔴 SAI SỰ THẬT] `dòng 127-128` | `**一の重 = 祝い肴**(黒豆・数の子・田作り)、**二の重 = 焼き物**、**三の重 = 煮物**、**与の重 = 酢の物**。` | **Đã tra WebSearch:** thứ tự này **sai ở hai tầng cuối**. Quy tắc chuẩn (四段重): 一の重 = 祝い肴・口取り / 二の重 = **焼き物** / 三の重 = **酢の物** / 与の重 = **煮物**. Sách đảo 三 và 与. (Với 五段重: 一=祝い肴, 二=口取り・酢の物, 三=焼き物, 与=煮物, 五=để trống.) Đây là đoạn Ōgaki nói và Dũng được khen "完璧!" — nghĩa là sách **đang dạy sai rồi tự khen là hoàn hảo**, mức nguy hiểm cao nhất. | **Sửa:** `一の重 = 祝い肴・口取り、二の重 = 焼き物、三の重 = 酢の物、与の重 = 煮物`. *(Nguồn: dinos.co.jp/osechi_s/moritsuke; oisix.com; sozairyoku.jp)*

- [🔴 SAI SỰ THẬT — CHỦ ĐỘ CHẮC CHẮN] `dòng 36-37` | `**ピンク・白・緑**、それぞれ意味あるんだよ。**ピンク=春**、**白=冬**、**緑=夏**…って桜の周りの季節を表す。` | **Đã tra WebSearch:** thuyết "hồng=xuân / trắng=đông / xanh=hè (thiếu 秋 → 飽きない・商い)" **có tồn tại**, nhưng nó là **một trong nhiều thuyết**, và thuyết phổ biến hơn là hồng=hoa đào, trắng=tuyết/残雪, xanh=cỏ non/新緑 (đều thuộc mùa xuân). Sách trình bày như **sự thật duy nhất và chắc chắn** (`それぞれ意味あるんだよ`) rồi để Dũng đúc kết "文化的に深いんですね". | **Sửa:** hạ mức chắc chắn: `一説には、ピンク=春、白=冬、緑=夏で、秋がないのは「飽きない」にかけてる、って言われてるね` — thêm `一説には`/`って言われてる` là đủ, đồng thời **thêm được cái twist 「秋ない=飽きない」** vốn là phần thú vị nhất mà sách đang thiếu. *(Nguồn: delishkitchen.tv/articles/2959; jocr.jp/raditopi; nihon-kashi.ac.jp)*

- [🔴 SAI SỰ THẬT] `dòng 71` | `2004年の<ruby>中越地震<rt>ちゅうえつじしん</rt></ruby>の<ruby>追悼<rt>ついとう</rt></ruby>として始まった。` | **Đã tra WebSearch:** フェニックス bắt đầu năm **2005**, một năm SAU động đất 2004. Câu nói "bắt đầu (vào) 2004" của Nakamura không chính xác. Ngoài ra sắc thái đúng là **復興祈願** (cầu tái thiết) chứ không thuần **追悼** (tưởng niệm) — 追悼 là ý nghĩa của toàn bộ 長岡花火 (gốc từ không kích 1945), còn Phoenix riêng là 復興祈願. | **Sửa:** `2004年の中越地震のあと、2005年から復興祈願として始まった` — vừa đúng năm vừa đúng sắc thái. *(Nguồn: niigata-nippo.co.jp; nagaokahanabi.com/phoenix-hanabi)*

- [🟡 SAI SỰ THẬT NHẸ] `dòng 92` | `**白川郷ライトアップ**は1月の<ruby>雪景色<rt>ゆきげしき</rt></ruby>だけど` | **Đã tra WebSearch:** năm 2026 các ngày thắp đèn là **12/1, 18/1, 25/1 và 1/2** → có cả tháng 2. Nói "là tháng 1" không sai hẳn nhưng thiếu. Quan trọng hơn: sự kiện nay **hoàn toàn phải đặt trước (完全事前予約制)** — đây mới là thông tin thực dụng mà một người dẫn khách cần biết, và sách đang thiếu. | **Sửa:** `白川郷ライトアップは1〜2月の数日だけ、しかも完全予約制やで` — Kato nói câu này thì vừa đúng vừa cực kỳ "đẳng cấp dân bản địa". *(Nguồn: kankou-gifu.jp/event/detail_1287)*

- [🟡 XƯNG HÔ] `dòng 45, 60, 64, 132` | 4 dòng. | **Sửa:** → "tôi".

---

### rule_17_健康 — SẠCH về sự thật
`メタボ 腹囲 男性85cm` **đã tra WebSearch — chính xác** (chuẩn 特定健診 Nhật: nam ≥85cm, nữ ≥90cm). 人間ドック, ご自愛ください / お大事に phân biệt đúng.

- [🟡 XƯNG HÔ] `dòng 33, 41, 58, 66` | 4 dòng, `dòng 41` có 3 lần "anh" tự xưng trong 1 dòng. | **Sửa:** → "tôi" / "vợ tôi".

- [🔵 CHẤT LƯỢNG] `dòng 128` | `③ Khen "肌綺麗" hàm ý "trẻ" = ý không tốt với khách nữ lớn tuổi.` | Lập luận này **hơi khiên cưỡng** và không khớp với chính rule_08 (`dòng 70-75`) nơi khen "エネルギッシュ" được coi là công thức vàng. Khen da đẹp không tự động hàm ý tuổi; vấn đề thật ở Scenario 4 là Linh **hỏi tuổi trước** rồi mới khen — chuỗi đó mới hỏng. | **Sửa:** đổi lý do ③ thành: "khen ngoại hình với khách nữ **mới gặp lần đầu** = vượt ranh giới công việc; khen năng lực thì luôn an toàn".

---

### rule_18_世代

- [🔴 SAI SỰ THẬT] `dòng 63` | `**山手線一周分の土地でアメリカ全土が買える**って言われた(笑)` | Câu ví von thời bong bóng có thật, nhưng phiên bản lưu truyền là **「皇居の土地でカリフォルニア州が買える」** hoặc **「東京23区の地価でアメリカ全土が買える」**. Bản trong sách trộn hai vế thành "đất một vòng Yamanote mua được cả Mỹ" — **quy mô sai hẳn một bậc** (vành đai Yamanote ≪ 23 quận). Với khách Nhật 50t sống qua thời đó, đây là câu nói họ thuộc lòng → nói sai phiên bản là mất điểm ngay. | **Sửa:** `**皇居の土地でカリフォルニア州が買える**って言われた` (bản phổ biến nhất, dễ nhớ nhất).

- [🔴 TIẾNG NHẬT — LỖI LOGIC HỘI THOẠI] `dòng 32-35` | Dũng nói `最近、**山口百恵**を聞いて感動しました` → Sato đáp `百恵ちゃん!?ズンさん、**何歳**?(笑)` | Chính sách này (rule_08 dòng 22, rule_17 dòng 164) dạy **hỏi tuổi là vùng cấm**. Ở đây khách Nhật hỏi thẳng tuổi Dũng và sách không hề gắn nhãn NG hay bình luận. Người học sẽ suy ra "hóa ra hỏi tuổi cũng được". | **Sửa:** đổi phản ứng của Sato thành `百恵ちゃん!?ズンさん、**世代が違うやろ**(笑)` — giữ nguyên hiệu ứng hài mà không phá luật của chính sách. *(Nếu chủ nhà muốn giữ, phải thêm chú thích: "khách Nhật lớn tuổi đùa hỏi tuổi người trẻ hơn thì được — chiều ngược lại thì KHÔNG".)*

- [🔴 SAI SỰ THẬT] `dòng 36-38` | Dũng: `**カラオケ**で**Linda**よく歌います` → Sato: `Linda!?Linda Lindaやろ?**ザ・ブルーハーツ**、これも**昭和末期**のヒット。` | 『リンダリンダ』phát hành **tháng 5/1987** — đúng là 昭和 (Showa kết thúc 1/1989), nên "昭和末期" ĐÚNG. **Không phải lỗi.** Ghi lại để khỏi sửa nhầm. **KHÔNG SỬA.**

- [🟡 XƯNG HÔ] `dòng 35, 43, 64, 93, 132` | 5 dòng. | **Sửa:** → "tôi".

- [🔵 CHẤT LƯỢNG] `dòng 204` (BJT) | `**J1 — 発言聴解:** Quy đổi 元号 → dương lịch. 平成3年 = 1991. 令和8年 = 2026.` | **Cả hai phép tính đều đúng** (Heisei 3 = 1991; Reiwa 8 = 2026). Nhưng rule không dạy **công thức** để tự quy đổi (昭和 + 25 = năm dương; 平成 + 88; 令和 + 18) — mà đó mới là kỹ năng dùng được. | **Sửa:** thêm 1 dòng công thức vào khối Vocab hoặc BJT.

---

### rule_19_アニメ

- [🔴 SAI SỰ THẬT] `dòng 67` | `**スピリットアウェイ**ってタイトルでオスカー獲って` | Tên tiếng Anh của 千と千尋の神隠し là **"Spirited Away"**, không phải "Spirit Away". Katakana đúng là **スピリテッド・アウェイ**. Câu này do Dũng nói với khách Nhật, sai tên phim đoạt Oscar = mất điểm. | **Sửa:** `**「スピリテッド・アウェイ」**ってタイトルでアカデミー賞獲って`. (Ghi chú: người Nhật thường dùng `アカデミー賞` hơn `オスカー` — đổi luôn thì tự nhiên hơn.)

- [🟡 SAI SỰ THẬT NHẸ] `dòng 76` (chú thích 【4】) | `**千と千尋の神隠し** = Spirited Away (**Oscar 2003**)` | Phim đoạt Oscar Hoạt hình xuất sắc tại lễ trao giải lần 75, **tổ chức tháng 3/2003** nhưng là **giải cho năm 2002**. Cách ghi phổ biến ở Nhật là 「2003年アカデミー賞受賞」 → **không sai**, chỉ dễ gây nhầm. Cùng file `dòng 76` ghi 君たちはどう生きるか `(2023, Oscar 2024)` — nhất quán. **KHÔNG BẮT BUỘC SỬA.**

- [🟡 XƯNG HÔ] `dòng 35, 62, 70, 74, 124, 128` | 6 dòng — nhiều nhất trong 20 rule. | **Sửa:** → "tôi".

- [🔵 CHẤT LƯỢNG] `dòng 3, 10, 130` | Luận điểm nói senior 50-60t "có thể KHÔNG xem hoặc coi là 子供のもの", nhưng Scenario 2 lại cho Sato (60t) **xem và khóc** vì 君たちはどう生きるか và biết cả chuyện Miyazaki nghỉ hưu nhiều lần — tức là một người **rành Ghibli**. Hai hình ảnh về cùng nhân vật hơi lệch nhau. Không sai (Ghibli đúng là vùng an toàn cross-generation), nhưng nên chỉnh luận điểm cho khớp: vấn đề không phải senior "không xem anime" mà là **anime NÀO**. | **Sửa:** đổi luận điểm thành: "Senior 50-60t **có xem** — nhưng là ジブリ/コナン/サザエさん, KHÔNG phải 鬼滅/呪術. Sai ở chỗ chọn tác phẩm, không phải chọn chủ đề."

---

### rule_20_ニュース

- [🔴 SAI SỰ THẬT] `dòng 45` | Dũng: `**カープ**が**広島**でやるみたいに、**ハノイ・タイガース**とか(笑)` | Đây là câu đùa của Dũng, nhưng đặt trong rule vừa dạy quy tắc "ghép đội theo quê" (rule_14 dòng 78-87), việc lấy tên **タイガース** — đội của **Osaka/Hanshin** — gán cho Hà Nội trong lúc đang nói chuyện với **anh Hiroshi, fan Carp cuồng**, là **lệch đúng điều sách vừa dạy**. Với fan Carp, đùa bằng tên Tigers (kình địch) không vui. | **Sửa:** đổi thành tên trung tính: `**ハノイ・ドラゴンズ**とか(笑)` (rồng = biểu tượng Thăng Long, vừa hợp văn hóa Việt vừa không đụng đội nào).

- [🔴 SAI SỰ THẬT — DỮ KIỆN CÓ RỦI RO] `dòng 96` | `**スノーボード**ハーフパイプの**平野歩夢**、**3連覇**狙いだよね。` | Hirano Ayumu đoạt **vàng Beijing 2022** (và bạc 2014, 2018). "3連覇" nghĩa là **vô địch 3 kỳ liên tiếp** — nhưng ông mới chỉ vô địch **1 kỳ** (2022). Đúng phải là **2連覇** (bảo vệ ngôi vô địch, tức vàng lần 2). Chính dòng 98 ngay bên dưới xác nhận `北京で金取った時` = mới 1 vàng. **Văn bản tự mâu thuẫn.** | **Sửa:** `**2連覇**狙いだよね`.

- [🔴 SAI SỰ THẬT] `dòng 32-33` | Dũng: `**佐々木朗希**の100マイル超え**球速**` → Hiroshi đáp `**サイド**だね(笑)` | `サイド` (サイドスロー = ném ngang) **không phải phản ứng có nghĩa** ở đây — Sasaki là **オーバースロー** (ném trên vai), và câu Dũng nói là về **tốc độ bóng**, không liên quan kiểu ném. Nhiều khả năng đây là lỗi còn sót từ bản nháp; ý định có thể là `**さすが**だね` hoặc `**マニアック**だね`. Bản dịch VN (`*Em pro luôn (cười)*`) khớp với `マニアックだね` chứ không khớp `サイドだね` → **bản Nhật và bản Việt lệch nhau**. | **Sửa:** `**詳しいね**(笑)` hoặc `**マニアックだね**(笑)` — khớp lại với bản dịch VN đã có.

- [🟡 XƯNG HÔ] `dòng 62, 70, 101, 120` | 4 dòng. | **Sửa:** → "tôi".

- [🔵 CHẤT LƯỢNG] `dòng 130` | Danh sách NG liệt `④ 安倍 / 岸田 / 石破 cá nhân 政治家` — **nêu tên đích danh 3 chính trị gia trong sách giáo trình** là điều chính rule này đang dạy phải tránh, và danh sách này sẽ lỗi thời rất nhanh (đây đã là 3 thủ tướng khác nhau). | **Sửa:** `④ tên riêng của bất kỳ chính trị gia đương nhiệm hay đã nghỉ nào` — bền vững và tự nhất quán.

---

## Lỗi hệ thống (lặp ở nhiều rule)

### HT-1 🔴 **FIX XƯNG HÔ v1.1 CHƯA ĂN VÀO `rule.md` — 43 dòng, 18/20 file**
Đây là phát hiện quan trọng nhất của đợt rà soát này.

`meta/STATUS.md` v1.1 ghi: *"chạy `scripts/apply_review_fixes.py`, sửa **49 dòng** trong **25 conversation.json**"*. Script chỉ quét `conversation.json`. **Toàn bộ `rule.md` không được đụng tới** — mà chính `rule.md` mới là phần người học đọc trước.

Thống kê tôi đo được (đã lọc bỏ báo nhầm như "hoa anh đào", "anh Matsumoto" ở lời Dũng):

| File | Số dòng lỗi |
|---|---|
| rule_05_聞き上手 | 7 |
| rule_19_アニメ | 6 |
| rule_18_世代 | 5 |
| rule_13, rule_16, rule_17, rule_20 | 4 mỗi file |
| rule_07, rule_14 | 3 mỗi file |
| rule_10, rule_12 | 2 mỗi file |
| rule_02, rule_03, rule_04, rule_09, rule_11, rule_15 | 1 mỗi file |
| rule_01, rule_06, rule_08 | 0 |
| **Tổng** | **43** |

**Bẫy khi sửa (rất quan trọng):**
1. **Không dùng regex `\banh\b` → `tôi`.** Có ít nhất 3 loại "anh" HỢP LỆ trong cùng dòng: (a) "hoa anh đào" (rule_01 L53); (b) khách Nhật gọi Dũng — nhưng Dũng là junior nên khách gọi "em", chỉ có Dũng gọi khách là "anh"; (c) **lời trích dẫn lồng** — rule_05 L133 `*Vợ anh cười 'anh khóc sớm quá'*`: chữ "anh" thứ nhất SAI (self-ref), chữ thứ hai ĐÚNG (vợ gọi chồng).
2. **Script cũ không bắt "chị".** rule_14 L72 là Yamamoto tự xưng **"chị"** — cùng lỗi nhưng khác từ. Phải quét cả `chị`.
3. Cách an toàn: sửa thủ công theo đúng 43 dòng đã liệt ở từng rule bên trên.

### HT-2 🟡 **Dòng chỉ dẫn sân khấu nối bằng `·` không gán được cho ai — cả 20 rule**
Mọi scenario mở bằng một dòng in nghiêng kiểu:
`*izakaya Osaka, đã uống 2 ly · cười · thận trọng + ngoại giao · rạng rỡ · không chịu*` (rule_11 L26)

Các mảnh sau dấu `·` là **chỉ dẫn diễn xuất cho từng lượt thoại** nhưng bị gom hết lên đầu, mất liên kết với người nói. Người đọc không thể biết "rạng rỡ" là ai. Vài chỗ mảnh chỉ dẫn còn nhiều hơn số lượt thoại. Đây gần như chắc chắn là **tàn dư của quá trình sinh nội dung** (chỉ dẫn vốn nằm cạnh từng dòng, bị flatten khi build).

**Đề xuất:** hoặc (a) trả chỉ dẫn về đúng dòng thoại: `| **山本** *(rạng rỡ)* | 「…」`; hoặc (b) rút gọn dòng đầu chỉ còn bối cảnh: `*izakaya Osaka, đã uống 2 ly*`. Cách (b) rẻ hơn nhiều và không mất mát gì đáng kể. **Cần chủ nhà chốt** — ảnh hưởng ~80 dòng trong phạm vi tôi, và chắc chắn cả phần III/IV/V.

### HT-3 🟡 **Nhãn heading không đồng nhất giữa 20 rule**
Cùng một khối nhưng mang 6 biến thể tên khác nhau:

| Khối | Các biến thể tìm thấy |
|---|---|
| Scenario | `## 4 Scenario — hội thoại thực chiến` (9 file) · `## 4 Scenarios — hội thoại thực chiến` (4) · `## 4 Scenarios — dialogue thực chiến` (4) · `## 4 Scenario — hội thoại thực chiến` · `## 4 Tình huống — hội thoại thực chiến` (rule_05) |
| Câu vàng | `## Câu vàng copy-paste` (17) · `## Câu vàng dùng ngay` (rule_05, rule_10) |
| NG | `## NG — tuyệt đối tránh` (19) · `## Điều tuyệt đối tránh` (rule_05) |
| Từ vựng | `## Vocab` (17) · `## Bảng từ vựng` (rule_12, rule_15, rule_16) |
| Tâm lý | `## Tâm lý JP (3 dòng)` (phần I, 8 file) · `## Tâm lý JP (4 dòng)` (phần II, 12 file) |

Riêng cặp `(3 dòng)` / `(4 dòng)` là **cố ý theo phần** — không phải lỗi. Còn lại nên thống nhất. **rule_05 lệch nhiều nhất (3/5 heading khác chuẩn)** — nhiều khả năng file này viết ở đợt khác.

**Đề xuất chuẩn:** `## 4 Scenario — hội thoại thực chiến` / `## Câu vàng copy-paste` / `## NG — tuyệt đối tránh` / `## Vocab`.

### HT-4 🟡 **Nhãn nhân vật không thống nhất**
- Hiroshi: `**広島部長**` (rule_10) vs `**広島**` (rule_11/13/14/18/20). Nhãn `**広島**` dễ đọc thành tên tỉnh.
- Yamamoto: `**山本(Osaka)**` (rule_08 L59) vs `**山本**` (23 chỗ).
- Ngoài ra `rule_09` gọi Sato là `**佐藤**` nhưng lời thoại Dũng gọi `佐藤先生` — trong khi các khách khác đều `〜さん`. Cách gọi `先生` cho một 支店長 (không phải bác sĩ/giáo viên/luật sư/nghị sĩ) là **không chuẩn** trong business Nhật. Xuất hiện ở rule_09, 14, 17, 18, 19, 20. **Cần chủ nhà quyết** — nếu Sato là cố vấn kỳ cựu thì 先生 chấp nhận được, còn nếu chỉ là 支店長 lead thì phải đổi hết thành `佐藤さん`.

### HT-5 🔵 **Dữ kiện "hết hạn" rải khắp phần II — không có cơ chế bảo vệ**
Đếm được ít nhất 9 dữ kiện sẽ sai trong 1-3 năm: tên HLV Carp (r10), 優勝 gần nhất (r10), 新横綱 大の里 + số lần 優勝 (r14), giá 入湯手形 (r15), phim Conan "năm nay" (r19), 3連覇 Hirano (r20), Olympic "đang diễn ra" (r20), WBC 2026 (r20), Vtuber/K-pop đang hot (r18).

Sách đang dạy đúng phương pháp (tìm hiểu trước buổi gặp) nhưng lại **tự mâu thuẫn** bằng cách đưa dữ kiện cứng để người học chép thuộc. **Đề xuất:** thêm một khung cảnh báo dùng chung ở đầu phần II — *"Các con số/tên riêng trong sách là ví dụ minh họa cho PHƯƠNG PHÁP. Trước mỗi buổi gặp, dành 10 phút cập nhật lại — bản thân việc cập nhật mới là kỹ năng."* Việc này biến điểm yếu thành bài học.

---

## 10 lỗi cần sửa gấp nhất

1. 🔴 **rule_12 L63-64 — 麦焼酎 gán sai tỉnh (LẶP LẠI lỗi P0 của v1.1).** いいちこ/二階堂 là 大分 nhưng câu thoại nói Fukuoka mạnh về mugi; chú thích ngay dưới tự mâu thuẫn. Người Kyushu bắt lỗi ngay.
2. 🔴 **rule_16 L127-128 — thứ tự 重 trong おせち sai (đảo 三/与).** Nguy hiểm nhất vì sách dạy sai rồi cho nhân vật khen "完璧!".
3. 🔴 **HT-1 — 43 dòng khách Nhật tự xưng "anh"/"chị" trong `rule.md`.** Fix v1.1 chưa ăn. Đây là lỗi mà chủ nhà đã yêu cầu phòng tránh từ sách 06.
4. 🔴 **rule_16 L96 — 新穂高ロープウェイ ghi 3000m, thực tế 2.156m.** Sai gần 900m, lại đặt vào miệng người Gifu bản địa.
5. 🔴 **rule_15 L71+131 — cơ chế huyết áp khi tắm onsen sau rượu nói NGƯỢC.** Rủi ro an toàn thật (ヒートショック), không chỉ là lỗi chữ nghĩa.
6. 🔴 **rule_11 L129 — chuỗi quán "ジンギスカンのキング" không tồn tại.** Do người Hokkaido nói → càng lộ.
7. 🔴 **rule_14 L99-105 — 大の里 vẫn được gọi "新横綱".** Lỗi thời hơn 1 năm tại thời điểm phát hành.
8. 🔴 **rule_05 L96 + L115 — hai lỗi về VIỆT NAM trong cùng scenario:** Hạ Long "3000 đảo" (thực ~1.969) và gán "海の桂林" cho "dân địa phương". Sai về VN trong sách cho người Việt = mất uy tín nặng nhất.
9. 🔴 **rule_16 L76 — 隅田川花火 "240 năm", thực tế gốc 1733 (~293 năm).**
10. 🔴 **rule_20 L96 — Hirano Ayumu "3連覇", thực tế mới 1 vàng → phải là 2連覇.** Văn bản tự mâu thuẫn với dòng ngay dưới.

*(Sát nút top 10: rule_11 L121 ruby 純連=すみれ sai; rule_16 L36 thuyết 3 màu dango trình bày như sự thật duy nhất; rule_06 L24+146 「(言)えば」 là tiếng Nhật không tồn tại; rule_08 L143-144 mẫu câu "né" lại tiết lộ thông tin.)*

---

## Ghi chú cho giai đoạn SỬA

### Cần chủ nhà quyết định
1. **Convention furigana cho từ có okurigana giữa (rule_09 `花冷え`).** Hiện có 3 kiểu dùng lẫn trong sách: `<ruby>花冷<rt>はなび</rt></ruby>え` / `**真冬日**(まふゆび)` ở chú thích / `<ruby>梅雨入<rt>つゆい</rt></ruby>り`. Riêng `花冷` nguy hiểm vì ruby `はなび` đọc rời ra thành "hanabi = pháo hoa". **Nếu sách có TTS thì đây là lỗi phải sửa; nếu chỉ đọc bằng mắt thì mức thấp hơn.** Cần biết pipeline audio có đọc `<rt>` rời không.
2. **Cách gọi 佐藤先生 (HT-4).** Giữ `先生` (nếu Sato được định vị là cố vấn kỳ cựu) hay đổi hết thành `佐藤さん` (chuẩn business)? Ảnh hưởng 6 rule trong phạm vi tôi + phần III/V.
3. **Dòng chỉ dẫn sân khấu `·` (HT-2).** Sửa triệt để (trả về từng dòng) hay rút gọn (chỉ giữ bối cảnh)? Ảnh hưởng toàn sách 51 rule, không riêng phạm vi tôi.
4. **Ngưỡng mở chủ đề gia đình.** rule_03 nói "L4 = sau 2 năm", rule_13 nói "≥6 tháng + ≥3 bữa ăn". Chốt 1 con số rồi sửa cả hai chỗ.

### Sửa sẽ kéo theo file khác
- **rule_11 L121 `純連`** — nếu sửa ruby thành じゅんれん, phải kiểm `phụ_lục_B_vocab.md` xem có entry `純連` không, và `conversation.json` của rule_11 (agent A3).
- **rule_12 麦焼酎** — sửa ở đây phải đối chiếu với rule_30 (phần III, agent A2) đã sửa ở v1.1, để **hai chỗ nói cùng một điều**. Hiện tại rule_30 đã đúng còn rule_12 sai → dễ tạo mâu thuẫn xuyên sách nếu chỉ sửa một nơi.
- **rule_16 おせち 重 順番** — kiểm `phụ_lục_D_templates.md` và `phụ_lục_B_vocab.md` có nhắc lại thứ tự này không.
- **Nhãn `**広島**` → `**広島部長**`** — đổi thì phải rà cả `conversation.json` (speaker key `hiroshi_chugoku`) và `voice_profiles.json` để không lệch TTS.
- **rule_14 `220ヤード` → `200ヤード`** — kiểm `conversation.json` rule_14 có lặp con số không.
- **43 dòng xưng hô** — nên viết lại `scripts/apply_review_fixes.py` để quét **cả `rule.md`** và **cả từ "chị"**, nhưng chạy ở chế độ liệt kê để người duyệt xác nhận từng dòng (vì có 3 loại báo nhầm đã nêu ở HT-1).

### Điểm mạnh nên giữ nguyên (đừng "sửa" nhầm)
- **rule_07 (沈黙)** — Scenario 4 (khách kể chuyện cha mất, im lặng tôn trọng 5 giây) là đoạn dạy tốt nhất phần I. Đúng văn hóa, đúng cảm xúc, dạy được thứ không sách nào dạy.
- **rule_08 (NG話題)** — mô hình "đồng nghiệp Việt lỡ miệng → Dũng gỡ" là cấu trúc sư phạm mạnh hơn hẳn việc liệt kê quy tắc trừu tượng. Scenario 4 (khách hé lộ bê bối, Dũng KHÔNG đào) dạy đúng bài học "kín = đáng tin".
- **rule_02 công thức オウム返し + đá ngược** — cụ thể, dùng được ngay, đúng trọng tâm.
- **rule_10 mô hình 3 bước (hỏi → ghi CRM + tìm hiểu 30 phút → quay lại bằng chi tiết cụ thể)** — đây là xương sống giá trị của cả cuốn sách. Scenario 2 (Dũng ngồi ghi Notion trong khách sạn) là scenario hiếm hoi dạy **quy trình** chứ không dạy mẫu câu.
- **rule_19 chiến lược "ジブリ làm cầu nối cross-generation"** — chính xác và thực dụng.
- **rule_20 phân định an toàn (thể thao/thiên tai) vs cấm (chính trị)** + mẫu câu đóng chủ đề chính trị — đúng và cần thiết.

---

*Báo cáo A1 — Hizashi Sách 08 — 2026-08-15.*
