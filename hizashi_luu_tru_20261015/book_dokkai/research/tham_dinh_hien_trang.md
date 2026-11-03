# THẨM ĐỊNH HIỆN TRẠNG: 39 bài cũ và Phần 0 cũ

Giai đoạn 1, 15/10/2026. Đầu ra theo `KHUNG_SACH.md` mục 5.

**Phạm vi.** 40 file trong `tu_lieu/book_reading/content/`: `part_00_method.md` và `part_01…part_05/lesson_01…39.md`. Không thẩm định bài tập JSON (sách không động đến bài tập), `draft/`, `exercises_draft/`, `practice/`.

**Cách làm.** Mỗi file một lượt Sonnet 5.5 đóng vai hội đồng (giáo viên tiếng Nhật bản ngữ + biên tập viên tiếng Việt), đối chiếu với khung mới và `nen_tang_doc_hieu.md`. Bản chi tiết từng bài: `tham_dinh/<bài>.md` (bảng phát hiện có trích nguyên văn, vị trí, cách sửa; danh sách ví dụ nên giữ; ghi chú cho người viết lại). Script: `tools/run_audit.py`. Toàn bộ 28 lỗi tiếng Nhật mức "nặng" đã được soát tay lại; không thấy phát hiện sai. Lỗi mức "vừa", "nhẹ", "nghi ngờ" chưa soát tay — người viết lại tự phán khi dùng.

**Báo cáo thẩm định cũ** (`tu_lieu/book_reading/review/methodology_audit_final.md`, 13/04/2026) chỉ kiểm hình thức (có chia khối, có bảng, có 🔒, sót tiếng Anh) và chấm "đạt chuẩn" gần hết. Nó không kiểm đúng sai tiếng Nhật, chất lượng dịch, hay việc gán vai trò sớm. Kết quả dưới đây không mâu thuẫn mà bổ sung phần đó.

---

## 1. Kết luận chung

- **Ví dụ tiếng Nhật: phần lớn dùng lại được.** Hầu hết câu ví dụ đúng và tự nhiên; mỗi bản chi tiết có mục "Ví dụ tiếng Nhật nên giữ" (tối đa 8 câu/bài).
- **Khung trình bày dùng lại được:** chia khối bằng `/`, bảng "Bước | Đọc | Xử lý", bảng dự đoán tổng hợp cuối bài.
- **Phải làm lại có hệ thống:** bản dịch, cách ghi bước 🔒, mọi câu quy tắc có chữ "luôn / chắc chắn / bắt buộc", và văn phong.
- **Mức tái dùng:** 7 bài CAO (13, 18, 19, 27, 35, 38, 39), 32 file VỪA, 0 THẤP. Không bài nào dùng nguyên được; không bài nào phải bỏ hẳn.
- **Lỗi đếm được:** 88 lỗi nặng, khoảng 280 lỗi vừa, khoảng 330 lỗi nhẹ, trên 40 file (đếm theo dòng bảng phát hiện; một dòng có thể gộp nhiều chỗ cùng kiểu).

## 2. Năm lỗi hệ thống (gặp ở hầu hết bài)

| # | Lỗi | Phạm vi | Xử lý ở bản mới |
|---|---|---|---|
| H1 | **Không tách hai loại bản dịch.** Bài 1–8 chỉ có dịch bám thứ tự Nhật, không nhãn, rất gượng ("Con mèo, có.", "Anh ấy đi rằng, nghĩ", "Gì cũng, ăn."). Bài 9–39 chỉ có một dòng "Dịch" (thường là dịch tự nhiên), không có dịch theo khối | 40/40 file | Mọi ví dụ có hai dòng có nhãn: **dịch theo khối** / **dịch tự nhiên**. Viết lại toàn bộ phần dịch, không sửa từng câu |
| H2 | **Gán vai trò ngay tại trợ từ.** Bước 🔒 ghi "が cho biết chủ ngữ", "に cho biết điểm đến", "で = địa điểm hành động" trước khi thấy đuôi câu; vài bài còn chốt nghĩa câu từ trợ từ ("[người]に → sắp có bị động") | ~35 file | 🔒 chỉ đóng gói **nội dung** (cái gì, ở đâu, với ai). Vai trò ghi dạng "các khả năng còn mở", chốt ở bước đuôi câu. Đây là thay đổi phương pháp lớn nhất so với bản cũ |
| H3 | **Tuyệt đối hóa quy tắc.** "LUÔN", "chắc chắn", "bắt buộc", "TẤT YẾU", "chỉ cần nhớ quy tắc này" cho những mẫu có ngoại lệ thật. Là nguồn chính của lỗi nặng (mục 4) | ~38 file | Viết "thường", "xu hướng"; mỗi quy tắc kèm ít nhất một phản ví dụ. Câu tuyệt đối chỉ dùng khi đúng tuyệt đối |
| H4 | **Bước 🔒 không đều.** Bài 5–9 không có; bài 10–15 chỉ ở câu 4+ khối (theo checklist cũ); bài khác có nhưng bỏ sót danh từ + の, danh từ + は. Bài 17 lại khóa cả vị ngữ cuối câu | ~25 file | Theo khung mới: **mọi** danh từ + trợ từ có 🔒, kể cả câu 2 khối và bài Phần 1 |
| H5 | **Văn phong.** Xưng "bạn"/"mình", ô ">" chen ngang ("> **Mẹo đọc:**", ~17 ô ở Bài 17), cảm thán, viết hoa nhấn mạnh, tiếng Anh ở tiêu đề (te-form, nai-form, dictionary form, ta-form, potential form, Passive form), "V た" thay cho TTT | 22 file có xưng "bạn"; tiêu đề tiếng Anh ở 6 bài (16, 17, 18, 19, 21, 24) | Viết lại theo quy tắc văn phong `BOI_CANH.md` mục 3 |

Ngoài ra rải rác: các ẩn dụ nhận thức không nguồn ("não bị treo", "giải phóng bộ nhớ" lặp 6 lần ở Bài 17, "khối hình ảnh", "Semantic Encoding") và con số phần trăm không nguồn (Bài 20, Bài 36: "~90%", "~60–70%"). Bỏ hết theo `nen_tang_doc_hieu.md`.

## 3. Bảng từng bài

Cột "Nặng / Vừa / Nhẹ" là số dòng phát hiện theo mức.

| File | Bài | Tái dùng | Nặng | Vừa | Nhẹ | Lỗi nội dung đáng chú ý nhất |
|---|---|---|---:|---:|---:|---|
| part_00 | Phần 0: Phương pháp | VỪA | 7 | 11 | 8 | Nền khoa học sai (Miller 5–9, "tràn", bunsetsu "tự nhiên", Hale/Levy "giúp ghi nhớ"); 4 kỹ thuật (có "Hình ảnh hóa"); bảng mẫu: おいしいです → "chủ ngữ ẩn: tôi" |
| lesson_01 | は・も | VỪA | 3 | 3 | 8 | "も + phủ định = không ai/không gì" chỉ đúng với từ để hỏi + も |
| lesson_02 | が・を・の | VỪA | 2 | 5 | 8 | "chủ ngữ mệnh đề phụ LUÔN が" (bỏ が⇄の); "mọi câu phức đều có mệnh đề phụ dùng が" |
| lesson_03 | に・で・へ | VỪA | 1 | 8 | 9 | へ "chắc chắn" đi với động từ di chuyển; đối lập TĨNH/ĐỘNG tuyệt đối |
| lesson_04 | と・から・まで・より | VỪA | 1 | 7 | 3 | Mục と trùng (Cách dùng 4 và 6); [V]と "TẤT YẾU" |
| lesson_05 | だけ・しか・ばかり… | VỪA | 1 | 4 | 9 | くらい, など, や, とか không có bảng dự đoán; ばかり = "phàn nàn" tuyệt đối |
| lesson_06 | けど・ので・のに・し・なら | VỪA | 3 | 9 | 5 | Không chia khối, không 🔒; "vế sau sẽ TƯƠNG PHẢN" |
| lesson_07 | こそ・さえ・でも | VỪA | 3 | 4 | 8 | さえ → "chờ phủ định" (mâu thuẫn với ví dụ khẳng định trong chính bài); thiếu でも "ngay cả" |
| lesson_08 | ね・よ・な・ぞ・わ | VỪA | 2 | 6 | 9 | "không thay đổi nghĩa" mâu thuẫn với な cấm; って "= と言っていた" |
| lesson_09 | Câu đơn 2–3 khối | VỪA | 2 | 4 | 7 | Gán vai が (cảm xúc/năng lực) trước đuôi câu |
| lesson_10 | Câu hành động 3–4 khối | VỪA | 2 | 6 | 4 | に/へ = "di chuyển", で = "hành động tại đây" tuyệt đối; "não người Việt bị treo" |
| lesson_11 | Tính từ い/な | VỪA | 4 | 4 | 7 | Bảng phân biệt い/な sai (きれいです, 先生です); chia khối mâu thuẫn với lời giải thích |
| lesson_12 | Câu phủ định | VỪA | 2 | 6 | 2 | Chỉ dạy dạng lịch sự; thiếu ない TTT và bẫy ませんか (mời) |
| lesson_13 | Thì | CAO | 3 | 5 | 11 | Bản dịch làm mất thì quá khứ (Ví dụ 6, 11); quy tắc từ chỉ thời gian tuyệt đối |
| lesson_14 | Câu 4–5 khối | VỪA | 1 | 9 | 9 | "V LUÔN ở cuối câu"; に chỉ là "điểm đến" |
| lesson_15 | Câu hỏi | VỪA | 5 | 6 | 4 | Quy tắc なん/なに tự mâu thuẫn, xếp 何も/何か vào なん; 食べましょうか dịch sai |
| lesson_16 | Thể て | VỪA | 2 | 6 | 10 | "を + ている = đang làm, が + ている = trạng thái" (sai: 服を着ています); くれる = "tự nguyện, không nhờ" |
| lesson_17 | Thể ない | VỪA | 3 | 7 | 10 | 🔒 khóa cả vị ngữ cuối; "chủ ngữ ẩn: 私" gán sẵn; ~17 ô chen ngang |
| lesson_18 | Thể từ điển | CAO | 2 | 5 | 7 | Thiếu Vる + danh từ, Vる + ので/から/と/なら |
| lesson_19 | Thể た | CAO | 1 | 5 | 7 | "luôn dự đoán" cho ほうが, たり, たら…た; 家に + いる gán sai |
| lesson_20 | TTT tổng hợp | VỪA | 0 | 13 | 11 | Thiếu ngoại lệ N/Aな cho はず, よう, かどうか; % không nguồn; と思います xếp "chắc chắn" |
| lesson_21 | Thể khả năng | VỪA | 2 | 6 | 7 | "が + -える/-られる = khả năng" (sai với 教える, 覚える; られる bị động/kính ngữ) |
| lesson_22 | Ý chí, mệnh lệnh, cấm | VỪA | 1 | 6 | 11 | ろう/よう = ý chí tuyệt đối; khẳng định sai về biển báo |
| lesson_23 | Điều kiện ば | VỪA | 2 | 7 | 9 | Bảng so sánh 4 điều kiện: と "không dùng cho quá khứ" (sai: ドアを開けると猫がいた) |
| lesson_24 | Bị động | VỪA | 3 | 9 | 8 | "[người]に → sắp có bị động"; quy tắc "không có に → kính ngữ" bị chính ví dụ bác |
| lesson_25 | Sai khiến, sai khiến bị động | VỪA | 3 | 4 | 13 | "-された = sai khiến bị động" (sai với 話された, 注意された) |
| lesson_26 | Mệnh đề bổ nghĩa danh từ | VỪA | 3 | 14 | 13 | "luôn が" (bỏ の); "đếm が = đếm lớp"; "2 lần N + trợ từ = 2 lớp" |
| lesson_27 | Danh từ hóa こと・の・もの | CAO | 1 | 8 | 7 | の "bắt buộc"/"chỉ dùng の"; ものだ trộn vào danh từ hóa |
| lesson_28 | Trích dẫn と | VỪA | 1 | 11 | 8 | "có 思う/言う/聞く → trích dẫn"; "と là dấu ngoặc kép" |
| lesson_29 | Tương phản, nhượng bộ | VỪA | 2 | 6 | 9 | "tín hiệu tương phản → phần sau ngược lại" mâu thuẫn mục 3, 5, 9 |
| lesson_30 | Nguyên nhân | VỪA | 4 | 8 | 8 | Nのために bỏ nghĩa "vì lợi ích"; Vて = "sắp có kết quả" |
| lesson_31 | Mục đích | VỪA | 1 | 7 | 7 | Vる/Vた là ranh giới duy nhất; ために nguyên nhân "luôn tiêu cực" |
| lesson_32 | Thời gian, trình tự | VỪA | 2 | 8 | 12 | てから "nối tiếp ngay"; 間に "hai chủ ngữ khác nhau"; thiếu số bài trong tiêu đề |
| lesson_33 | Câu phức tổng hợp | VỪA | 2 | 10 | 12 | "Mệnh đề phụ LUÔN TTT, không bao giờ ます" (sai với から/ので/が); nhầm chủ ngữ ở Vてもらう |
| lesson_34 | Trợ từ phức hợp | VỪA | 2 | 5 | 7 | によって: nhãn "phương thức" cho ví dụ tác nhân bị động; bỏ nghĩa phương tiện chủ động |
| lesson_35 | Trợ từ mở rộng | CAO | 0 | 10 | 12 | Nhiều "Mẹo đọc" tuyệt đối hóa; 🔒 không đều |
| lesson_36 | Phó từ tín hiệu | VỪA | 1 | 8 | 11 | あまり/ぜんぜん "BẮT BUỘC"; % không nguồn; もっと = "ý chí" |
| lesson_37 | Kính ngữ | VỪA | 3 | 6 | 4 | "謙譲語 = tôi, chỉ cần nhớ" (sai với ていただく); れる/られる chỉ nêu 2/4 nghĩa |
| lesson_38 | Văn phong, rút gọn | CAO | 4 | 5 | 5 | "ます → る" (sai với nhóm I); "Vる → văn viết trang trọng"; 行く "lược を" |
| lesson_39 | Liên từ, đoạn văn | CAO | 1 | 6 | 6 | "そ luôn trỏ ngược"; ví dụ 少子高齢化 sai nội dung; まず mâu thuẫn mục 7–8 |

## 4. Lỗi tiếng Nhật nặng: danh sách "không được lặp lại"

Rút từ 28 lỗi nặng loại 1 (đã soát tay). Người viết lại và người thẩm định bản mới đối chiếu danh sách này.

| Chủ đề | Bản cũ viết | Đúng ra |
|---|---|---|
| も + phủ định | = "không ai / không gì" | Chỉ với từ để hỏi + も (誰も, 何も) hoặc 一人も; N + も + phủ định = "cũng không" |
| Chủ ngữ mệnh đề bổ nghĩa | "LUÔN が" | Thường が, đổi được が⇄の (母の作った料理); は khi đối chiếu |
| さえ | "chờ phủ định" | Báo mức cực đoan; vị ngữ khẳng định hay phủ định đều được (お金さえあれば) |
| ね・よ | "không thay đổi nghĩa" | Có thể đổi chức năng phát ngôn (いいですね / いいですよ) |
| い/な | "…いです = tính từ い" | きれいです là な; 先生です là danh từ. Dấu hiệu chắc là dạng bổ nghĩa |
| なん/なに | Theo âm đầu; 何も, 何か đọc なん | 何も = なにも, 何か = なにか; なん trước です/の/số đếm |
| 食べましょうか | "Tôi lấy đồ ăn nhé?" | "Mình ăn nhé?" |
| ている | を → đang làm, が → trạng thái | Do loại động từ và ngữ cảnh (服を着ています = trạng thái) |
| くれる | "tự nguyện, không nhờ" | Khác もらう ở điểm nhìn và chủ ngữ, không ở ý chí |
| Thể khả năng | "が + -える/-られる = khả năng" | 教える, 覚える không phải khả năng; られる còn bị động, kính ngữ, tự phát |
| と điều kiện | "không dùng cho quá khứ" | Dùng được cho phát hiện: ドアを開けると猫がいた |
| Bị động | "[người]に → sắp có bị động" | に còn là đích, sai khiến, thời gian; đuôi れる/られる mới chốt |
| Bị động / kính ngữ | "không có に → kính ngữ" | 社長は何時に来られますか có に vẫn là kính ngữ |
| Sai khiến bị động | "-された = sai khiến bị động" | 話された, 注意された là bị động thường |
| Mệnh đề lồng | "đếm が = đếm lớp" | Tín hiệu lớp là TTT + danh từ |
| Nのために | = nguyên nhân | Thường là "vì lợi ích của N" (家族のために) |
| Vて | "sắp có kết quả" | Dạng nối, chưa rõ vai; đuôi câu quyết định nguyên nhân hay trình tự |
| Mệnh đề phụ | "LUÔN TTT, không bao giờ ます" | Chỉ đúng với mệnh đề bổ nghĩa danh từ; から/ので/が dùng ます được |
| によって | "phương thức" (ví dụ là tác nhân bị động) | Ba dùng: tác nhân bị động, phương tiện/nguyên nhân, "tùy theo" |
| 謙譲語 | "= tôi, chỉ cần nhớ" | ていただく: người làm là người trên |
| れる/られる | 2 nghĩa | 4 nghĩa: 受身, 可能, 自発, 尊敬 |
| ます → TTT | "ます → る" | Chỉ nhóm II; 行きます → 行く |
| Vる | "→ văn viết trang trọng" | TTT; chỉ である là dấu hiệu chắc của である体 |
| パーティー、行く？ | "lược を" | Lược に (hoặc は) |
| おいしいです (Phần 0) | "chủ ngữ ẩn: tôi" | Nói về 料理 (chủ đề) |
| が (Phần 0) | "→ chủ ngữ mệnh đề phụ" | Chưa biết khi mới gặp が; để ngỏ |

## 5. Nhất quán toàn sách

- **Đánh số:** tiêu đề trong file khớp mục lục `KHUNG_SACH.md` (Bài 27 = danh từ hóa, Bài 28 = trích dẫn). Báo cáo thẩm định cũ ghi đảo hai bài này, cùng lỗi với `content/index.md`. Bài 25 và Bài 32 thiếu chữ "Bài N" trong tiêu đề.
- **Số kỹ thuật:** Phần 0 cũ có 4 kỹ thuật (kể cả "Hình ảnh hóa"); khung mới chốt 3 kỹ thuật bắt buộc + "xác định chủ ngữ" ở Phần 5. Bỏ "Hình ảnh hóa".
- **Thuật ngữ:** "plain form", "V た", "informal", "case" lẫn với TTT; tiêu đề tiếng Anh ở 6 bài. Thống nhất trong `BANG_THUAT_NGU.md` (Giai đoạn 2).
- **Phiên âm:** を ghi "wo" (Bài 2) → ghi "o".
- **File thừa:** `content/part_00_method copy.md` là bản sao, không thẩm định.

## 6. Hàm ý cho Giai đoạn 2 (bộ quy chuẩn)

`HOI_DONG_SACH.md` và `BANG_THUAT_NGU.md` cần chốt trước khi viết bài:

1. Mẫu trình bày một ví dụ: câu chia khối bunsetsu → bảng "Bước | Đọc | Xử lý" → dịch theo khối (có nhãn) → dịch tự nhiên (có nhãn).
2. Cách ghi bước 🔒: chỉ ghi nội dung; vai trò ghi "còn mở: A / B"; bước đuôi câu ghi "chốt: …". Có mẫu cho cả câu 2 khối.
3. Luật viết quy tắc: không dùng "luôn / chắc chắn / bắt buộc" trừ khi đúng tuyệt đối; mỗi quy tắc một phản ví dụ.
4. Bảng thuật ngữ: TTT, khối bunsetsu, 文節, 連文節, tín hiệu đầu/giữa/cuối, đóng gói, để ngỏ, dịch theo khối, dịch tự nhiên, phi quá khứ; tên tiếng Việt cho các thể động từ (không tiếng Anh).
5. Danh sách mục 4 làm phụ lục kiểm tra cho người thẩm định bản mới.
