# Sách 60 (Đọc hiểu tiếng Anh C1) — Báo cáo soát sự thật, câu hỏi, cốt truyện, bản dịch

Ngày soát: 03/11/2026. Phạm vi: 8 file JSON nguồn (6 chương `u*_BaiTap.json`, 2 đề `mock*_Mogishiken.json`). CHỈ BÁO CÁO, không sửa file nội dung.

Cách làm: dump toàn bộ `segments[].i18n.en/vi` và `questions[]`, đọc hết 8 file. Đối chiếu nhân vật với `_shared/en_curriculum/characters.md` (bảng nhân vật + Nhật ký sự kiện). Kiểm sự thật bằng WebSearch. Kiểm máy: mỗi câu có đúng 1 `is_correct`, mọi `evidence_segments` tồn tại, mọi chuỗi trích trong dấu ngoặc kép của `explanation_i18n.vi` đều có thật trong bài (kết quả: 160/160 câu sạch, 0 lỗi máy móc).

Quy ước mức: **CHẮC** = tôi đã tự kiểm và chắc. **NGHI VẤN** = chưa đủ chắc, chủ nhà quyết.

---

## 0. Tóm tắt

| Mức | Việc | Vị trí |
|---|---|---|
| CHẮC (cốt truyện) | Helena "twenty years designing bridges" khi 39 tuổi | u0910 passage_01 seg 3 |
| CHẮC (cốt truyện) | "The Neighbors' Table last autumn" trong khi Table chạy mùa thu năm 6, memo viết 26/8 năm 8 | u0910 passage_02 seg 9 |
| CHẮC (dịch/nhất quán) | "Dì Megan" trong khi cả dự án dùng "thím Megan" (Leah gọi Mitchell là chú) | u1112 passage_02 seg 10 (vi) |
| CẦN RÀO ĐÓN (sự thật) | Stanford 2025: số 13% là của bản tháng 8/2025; bản sửa tháng 11/2025 đổi thành 16% | mock2 passage_04 seg 6, q_mock2_034 |
| NGHI VẤN | Tracy "last nine years" mâu thuẫn "seven years" của Leah | mock2 passage_01 seg 3, q_mock2_001 |
| NGHI VẤN | "youngest cousin ... So, Amy, ring the bell" làm Amy thành em họ Ethan | mock2 passage_01 seg 10, q_mock2_008 |
| Thiết kế câu hỏi | q_mock2_039 buộc người học biết chuyện ở đề khác, bài không nói | mock2 |

Vùng cấm (chính trị, chiến tranh, tôn giáo, khái quát hoá dân tộc): **sạch** cả 8 file. Đáp án sai hoặc 2 đáp án đúng: **không phát hiện**.

---

## 1. Sự thật ngoài đời

| # | Khẳng định trong sách | Kết luận | Ghi chú và nguồn |
|---|---|---|---|
| 1 | IEA "Energy and AI" 2025: data center dùng ~415 TWh năm 2024, ~1,5% điện toàn cầu | ĐÚNG | https://www.iea.org/reports/energy-and-ai/executive-summary (ấn phẩm IEA 2026 ghi 416 TWh, chênh làm tròn, không cần sửa) |
| 2 | Dự báo ~945 TWh năm 2030, "more than double" | ĐÚNG | cùng nguồn; https://www.spglobal.com/commodity-insights/en/news-research/latest-news/electric-power/041025-global-data-center-power-demand-to-double-by-2030-on-ai-surge-iea |
| 3 | "slightly more than the whole of Japan uses today" | ĐÚNG | IEA dùng đúng cách nói này (cho mốc 2030). Câu hỏi q_u0506_003 đã tách đúng: mốc 2024 không phải "more than Japan" |
| 4 | "AI as the main reason for the growth" | ĐÚNG, rào đón nhẹ | IEA gọi AI là động lực quan trọng nhất cùng nhu cầu dịch vụ số khác. Có thể giữ nguyên |
| 5 | Một câu hỏi chatbot tốn ít điện hơn đun nước pha một cốc trà | Không kiểm riêng | Hợp lý về bậc độ lớn (câu hỏi chatbot cỡ dưới 1 Wh, đun một cốc nước cỡ hàng chục Wh). Chưa tra nguồn |
| 6 | Philpot 2020: 219 vụ, Anh/Hà Lan/Nam Phi, ~9/10 có người can thiệp, "usually several", càng đông càng dễ có người giúp | ĐÚNG | American Psychologist 2020, "Would I be helped?". https://ore.exeter.ac.uk/repository/handle/10871/123865 . Ghi chú: dữ liệu lấy ở khu trung tâm Lancaster, Amsterdam, Cape Town. Bài chỉ nói "three countries", không sai |
| 7 | Thí nghiệm phòng lab cuối thập niên 1960: người tin mình là nhân chứng duy nhất hành động nhiều hơn | ĐÚNG | Darley và Latané 1968, J. Personality and Social Psychology 4:377–383 (tỉ lệ báo giúp giảm theo số "nhân chứng"). https://opentextbc.ca/researchmethods/part/experimental-research/ |
| 8 | Stanford 2017: nhà sử học, sinh viên, người kiểm chứng tin; kiểm chứng tin rời trang và mở tab mới; chính xác hơn, nhanh hơn | ĐÚNG | Wineburg và McGrew, SSRN 10/2017 (bản rút gọn Teachers College Record 2019). Mẫu 10 nhà sử học, 10 fact-checker, 25 sinh viên Stanford. Nhà sử học và sinh viên dễ bị logo/trích dẫn học thuật đánh lừa. https://news.stanford.edu/?p=17219 và https://stanforddaily.com/2017/10/26/fact-checkers-more-likely-than-peer-expert-groups-to-identify-credible-information-determine-gse-researchers/ . Bài viết "a well-known 2017 study" đúng |
| 9 | Anfinsen, Nobel 1972, chuỗi chứa đủ thông tin để tìm hình dạng | ĐÚNG | Chia với Moore và Stein, công trình ribonuclease. Bài viết "partly" là chuẩn xác. https://www.nobelprize.org/prizes/chemistry/1972/Anfinsen/facts/ |
| 10 | Cuộc thi dự đoán protein từ 1994, hai năm một lần, dùng cấu trúc đã đo nhưng chưa công bố | ĐÚNG | CASP. https://en.wikipedia.org/wiki/CASP |
| 11 | AlphaFold 2020, "for many proteins about as accurate as lab measurements" | ĐÚNG, rào đón nhẹ | CASP14: sai số trung vị 0,96 Å, GDT_TS > 90 cho nhiều domain; "gần ngang", chưa phải "bằng". Bài đã dùng "about as accurate" và "for many proteins", ổn. https://pmc.ncbi.nlm.nih.gov/articles/PMC8371605/ |
| 12 | CSDL ra mắt 2021 với "just over 360.000" dự đoán, sau lên ~200 triệu | ĐÚNG | Báo chí ghi ">350.000"; bản báo khoa học ghi 365.198 (đúng "just over 360.000"). Tháng 7/2022 EMBL-EBI công bố 214.684.311. https://ebi-biows.gitdocs.ebi.ac.uk/blog/2022-07-28-new-afdb-release |
| 13 | "covering almost every protein known to science" | ĐÚNG | Ủy ban Nobel viết "virtually all the 200 million proteins researchers have identified". https://www.lindau-nobel.org/news-nobel-prize-chemistry-2024/ |
| 14 | Nobel Hoá 2024: Hassabis, Jumper và Baker (thiết kế protein mới) | ĐÚNG | Baker một nửa, Hassabis và Jumper một nửa. Cùng nguồn #13 |
| 15 | Enzyme phân huỷ nhựa dùng dự đoán của AlphaFold | ĐÚNG, rào đón nhẹ | DeepMind hợp tác Centre for Enzyme Innovation (ĐH Portsmouth). Bài chỉ nói "projects ranging from ... to enzymes that can break down plastic waste", tức dự án, không khẳng định đã thành công. Giữ nguyên. https://www.phillytrib.com/nyt/artificial-intelligence-predicts-shapes-of-future-molecules/article_0278e985-8d0d-5e14-8f84-1b71bf758284.html |
| 16 | Quạ ĐH Washington 2006: bảy con, mặt nạ, đội mũ/đeo ngược vẫn mắng, con chưa bị bắt cũng mắng, số quạ mắng tăng | ĐÚNG | Marzluff, Animal Behaviour 79(3):699–707 (2010). Mặt nạ "dangerous" là caveman, mặt nạ đối chứng "neutral" (bài viết "an ordinary face"). Tỉ lệ quạ mắng tăng từ ~20% lên ~60% sau 5 năm. https://www.nbcnews.com/id/43570666/ns/technology_and_science-science/t/hitchcockian-crows-gossip-about-mean-humans/ , https://audubon.org/news/bird-banders-beware |
| 17 | "The study has changed how many scientists think about animal intelligence" | CẦN RÀO ĐÓN | Nghiên cứu đóng góp vào xu hướng này nhưng "changed how many scientists think" là lời nói rộng, không có nguồn đo được. Nghi vấn nhẹ (mock1 passage_02 seg 10), có thể đổi "has contributed to a shift in how scientists think" |
| 18 | Lally 2010: UCL, 96 người, 12 tuần, 66 ngày, 18 đến hơn 250 ngày, bỏ 1 ngày không sao, ví dụ nước/gập bụng | ĐÚNG, cần rào đón | 96 người; 66 là **trung vị**, tính trên 39 người có mô hình khớp (không phải trung bình của cả 96); "254 ngày" là ngoại suy vì nghiên cứu chỉ 84 ngày. Bài viết "On average, it took 66 days" (mock2 seg 5) và q_mock2_016 "average of 66 days": đổi thành "typically/median" thì đúng hơn. Mức: nhẹ. https://www.surrey.ac.uk/news/does-it-really-take-66-days-form-habit-we-asked-expert-dr-pippa-lally , https://bps.org.uk/research-digest/how-form-habit |
| 19 | Huyền thoại 21 ngày từ sách 1960 của bác sĩ phẫu thuật thẩm mỹ, là "minimum" | ĐÚNG nhưng nguồn thứ cấp | Nguồn gốc thường được truy về Maxwell Maltz, "Psycho-Cybernetics" (1960): bệnh nhân cần tối thiểu ~21 ngày làm quen khuôn mặt/chi mới. Tôi không mở được văn bản gốc, chỉ có nguồn thứ cấp. Bài không nêu tên sách là đúng chừng mực, giữ nguyên |
| 20 | Stanford 2025: 22–25 tuổi, **−13% tương đối**, dữ liệu bảng lương, người lớn tuổi cùng nghề ổn | CẦN RÀO ĐÓN | Bài: Brynjolfsson, Chandar, Chen, "Canaries in the Coal Mine?" (Stanford Digital Economy Lab, dữ liệu ADP). Bản 26/8/2025 ghi **13%** (trang tác giả: https://www.benton.org/author/bharat-chandar). Bản sửa 13/11/2025 ghi **16%** (https://digitaleconomy.stanford.edu/app/uploads/2025/11/CanariesintheCoalMine_Nov25.pdf , https://africa.time.com/?p=18230). Bản cập nhật sau đó có tin ghi 19%. Bài vẫn đúng với bản tháng 8, nhưng nên đổi "around 13 percent" thành "between roughly 13 and 16 percent" hoặc ghi rõ "an early-version estimate", và sửa q_mock2_034 tương ứng. Phần "payroll records", "older workers doing fine", "other factors may have played a part" là đúng |
| 21 | Tăng huyết áp thường không triệu chứng; mạn tính | ĐÚNG | CDC gọi "silent killer". https://archive.cdc.gov/www_cdc_gov/grand-rounds/pp/2013/20130521-hypertension-control.html |
| 22 | Bồi thẩm hình sự Mỹ: beyond a reasonable doubt, nhất trí 12 người, cấm tự tra cứu | ĐÚNG | Tiêu chuẩn "beyond a reasonable doubt" và lệnh cấm tra cứu trực tuyến là hướng dẫn chuẩn (CALCRIM 101/CACI 100, 116: https://www.justia.com/trials-litigation/docs/caci/100/116/). Nhất trí: Ramos v. Louisiana (2020) buộc nhất trí ở mọi toà tiểu bang: https://en.wikipedia.org/wiki/Ramos_v._Louisiana . Riêng "12 người" ở California tôi dùng kiến thức nền, không tìm được nguồn trực tiếp; chấp nhận được vì vụ án trộm cắp cỡ vài nghìn đô là tội nặng |
| 23 | Edward Hopper, "empty streets" | ĐÚNG | Early Sunday Morning (1930) là tranh phố vắng điển hình; cách so sánh "warmer and less lonely" là ý kiến của nhà phê bình trong truyện. https://www.dailyartmagazine.com/edward-hopper-in-10-paintings/ |
| 24 | Thí nghiệm người ngoài cuộc, "late 1960s" | Xem #7 | |

Kết luận trục 1: không có sự thật sai hoàn toàn. Một mục cần rào đón có số (#20), hai mục rào đón nhẹ (#17, #18).

---

## 2. Câu hỏi (đáp án, giải thích, hỏi điều bài không nói)

Đã đọc hết 160 câu. Mọi đáp án đúng đều có căn cứ trong bài, không có distractor nào cũng đúng. Giải thích khớp đáp án; chuỗi trích khớp bài. Chỉ có các điểm nhỏ sau:

1. **q_mock2_039** ("Who is probably the 'young engineer I know'?" → Tracy). Bài mock2 passage_04 seg 11 chỉ nói "A young engineer I know ... she". Muốn chọn Tracy phải nhớ chuyện ở đề mock1 (chương khác). Trong một đề thi thử VSTEP, câu này hỏi điều **bài không nói**. Đáp án vẫn duy nhất (Leah là bác sĩ, Chloe là nhà thiết kế, Greg là nam), nhưng đề nghị: hoặc đổi thành câu suy luận từ nội dung bài, hoặc ghi rõ trong đề là "dựa cả vào đề thi giữa sách". Mức: thiết kế, không phải sai đáp án.
2. **q_u0506_010** (đoạn đèn thư viện): đáp án "does not really save energy" hơi mạnh hơn bài (bài chỉ mỉa nhẹ về mâu thuẫn). Distractor còn lại đều sai rõ nên không hỏng đáp án. NGHI VẤN nhẹ, có thể đổi sang "suggests that his friend's protest is not very consistent".
3. **q_u0304_012** ("Why do Leah and Ethan need to decide soon?" → "the wedding is in about eight months"): ba distractor vô lý nên đáp án duy nhất, nhưng "soon" với 8 tháng là yếu. Chỉ nên đổi "soon" thành "now" nếu muốn chặt. Nhẹ.
4. **q_u1112_005**: đáp án dựa trên hàm ý "stereotype" (Mỹ thẳng, Bồ ngại) mà bài **không nêu**; bài chỉ nói "Whatever the articles say about this country or that one". Đáp án vẫn duy nhất và không gán dân tộc (chính Nathan bác bỏ). Giữ được.
5. **q_u0910_005/009/010**: câu hỏi dùng "he/his" cho nhà phê bình Jordan Wells; bài không xác định giới tính (chỉ có "I"). Nhẹ, đổi "the critic" / "their".

Các chỗ tôi đã kiểm và thấy ĐÚNG, dễ bị nghi nhầm: xem mục CẤM SỬA.

---

## 3. Vùng cấm

Quét toàn bộ EN và VI (từ khoá chính trị, bầu cử, đảng, chính sách, chiến tranh, tôn giáo, quốc tịch, "people in ...").

- Không có chính trị, ý thức hệ, bầu cử, chiến tranh, tôn giáo. Chủ đề luật (u0708) chỉ nói quy trình bồi thẩm, không bàn chính sách nhà nước.
- Không có khái quát hoá dân tộc trong văn người viết. Hai chỗ nhắc quốc tịch đều ổn: (a) u1112 passage_01 seg 10–11, Nathan chủ động bác thói gán nhãn quốc tịch, và dùng "the Portuguese one"/"the American one" chỉ để chỉ chính việc gán nhãn là vô ích; (b) q_mock2_008, phương án sai "It is common in every American family" là distractor, đáp án đúng và explanation ("theo từng gia đình") nói đúng tinh thần quy tắc.
- mock1 passage_02 (quạ): thí nghiệm gốc dùng mặt nạ đối chứng là mặt nạ **Dick Cheney** (chính trị gia). Bài viết "an ordinary face" là cách nói đúng và an toàn. **Đừng** "sửa cho chính xác" bằng cách thêm tên này.

---

## 4. Nhất quán cốt truyện (so với `characters.md`)

### 4.1 Lỗi chắc

**(a) u0910 passage_u0910_01 seg 3 — tuổi nghề của Helena.**
Nguyên văn EN: "She is a civil engineer who has spent twenty years designing bridges and painting on weekends, and this exhibition of twenty-four works is her first." VI (seg 3): "đã dành hai mươi năm thiết kế cầu và vẽ tranh vào cuối tuần".
Vấn đề: Helena 33 tuổi ở A1 → 39 ở C1. "Hai mươi năm" nghĩa là bắt đầu thiết kế cầu năm 19 tuổi, trước cả khi ra trường. Đề xuất: "more than fifteen years" (hoặc "nearly two decades" nếu muốn số tròn, nhưng 17 năm mới khớp) và sửa VI "hơn mười lăm năm". Chỗ khác của bài không dùng con số này.

**(b) u0910 passage_u0910_02 seg 9 — "last autumn".**
Nguyên văn EN: "such as the families who cooked for The Neighbors' Table last autumn". VI: "mùa thu năm ngoái".
Vấn đề: Nhật ký B2 ghi The Neighbors' Table chạy **tháng 9–11 năm 6**. Memo ghi ngày 26/8, đã sang **năm 8**. "Last autumn" là mùa thu năm 7, mà nhật ký không có Table năm 7. Đề xuất: "two autumns ago" / "mùa thu cách đây hai năm" (hoặc "the autumn before last"). Nếu chủ nhà muốn Table lặp lại năm 7 thì phải ghi thêm vào Nhật ký sự kiện.

**(c) u1112 passage_u1112_02 seg 10 (VI) — "Dì Megan".**
EN: "My aunt Megan, a nurse in our department". VI: "Dì Megan của tôi".
Vấn đề: sách 57 u08 dịch "Aunt Megan" thành "**thím Megan**" nhiều lần (ví dụ `books/57_english_a2/u08_experiences/u08_Experiences_BaiTap.json` dòng 233, 683) và gọi Mitchell là "chú" (u13 dòng 265); `characters.md` ghi Leah là cháu của Mitchell và gọi Mitchell là chú. "Dì" là chị/em của mẹ, sai họ. Đề xuất: "thím Megan". Kiểm thêm các chỗ khác trong sách 60 không còn "dì Megan" (tôi chỉ thấy một chỗ này).

### 4.2 Nghi vấn

**(d) mock2 passage_mock2_01 seg 3 — "for the last nine years".**
EN: "...that is what I have done about everything for the last nine years." q_mock2_001 explanation cũng trích "nine years".
Vấn đề: u0304 seg 13 Leah viết "I have lived downstairs from your family for seven years", Nhật ký C1 cũng ghi 7 năm. Tracy 22 tuổi, 9 năm trước là 13 tuổi, trước khi Leah dọn xuống tầng dưới (A1, Tracy 16). Có thể giải thích là họ hàng hỏi han trước đó, nhưng người đọc dễ thấy mâu thuẫn. Đề xuất: "seven years" (và sửa explanation, VI "bảy năm qua") hoặc "since I was sixteen".

**(e) mock2 passage_mock2_01 seg 10 — Amy và "youngest cousin".**
EN: "In Ethan's family, I have learned, the youngest cousin rings a small bell ... So, Amy, ring the bell." Nhật ký C1 ghi "em họ nhỏ nhất rung chuông (Amy rung)".
Vấn đề: Amy Brooks (10 tuổi) là con của Nathan và Helena, không họ hàng với Ethan Hayes. Câu như viết thì Amy đọc ra là em họ Ethan. q_mock2_008 đáp án "tradition in Ethan's family" không bị ảnh hưởng. Đề xuất: "the youngest guest rings..." hoặc "So, Amy, as our youngest guest, ring the bell."

### 4.3 Đã đối chiếu và KHỚP (không sửa)

- u0102: Megan điều dưỡng trưởng ca, >20 năm ở khoa, suýt nghỉ mùa đông năm 6–7, giao ca cạnh giường 12 tuần từ tháng 9, lỗi bỏ sót 14 → 5, 9 → 13 phút, ca đêm không ổn, giám đốc quyết tháng 1; Leah viết bản tin; Ethan dạy sơ cứu, quy tắc chỉ đích danh người gọi 911.
- u0304: ảnh AI thư viện Pine Street bị ngập tháng 1, Nathan "Tech Corner", bà Harriet chia sẻ; Ethan cầu hôn sáng Giáng sinh làm rơi nhẫn, mất 10 phút tìm; cưới 13/10; ba phương án nhà, chốt thuê căn hộ 2 phòng 1 năm; tab "Houses (one day)"; Leah ở tầng dưới 7 năm; chuyện Mitchell tự sửa ống nước (B1). Chủ nhật 18/2 và thứ Bảy 13/10 cùng khớp một năm lịch.
- u0506: Trevor năm nhất kỹ thuật môi trường, Green Lines, bạn cùng ký túc xá; Mitchell 50 tuổi, khám 4/3, bác sĩ Ramos, thuốc + đi bộ 30 phút + bớt muối, nhóm đi bộ trưa với 2 giáo viên, không màn hình sau 9 giờ; 15/4 là đúng 6 tuần sau 4/3.
- u0708: Mitchell dạy 20 năm, vụ trộm dụng cụ, hoodie xám, xe tải trắng, 4 ngày xử, 9–3, bà Ellison y tá về hưu, 2 ngày thảo luận.
- u0910: triển lãm "Bridges and Small Things", 24 tác phẩm, đến 30/9, thơ cạnh mỗi tranh, Jordan Wells; memo 26/8, Harriet 74 tuổi, A/B/C, chọn B thử 2 năm, "The Neighbors' Kitchen", vẫn tự nướng scone; tiệm bánh trống hơn 1 năm (đóng 7/năm 7) và tiệm sách góc phố.
- u1112: Nathan trưởng nhóm 1 năm, San Diego/Chicago/Lisbon, Greg và Tomás; Leah thử AI 3 tháng, 1 trong 20 bác sĩ, 2 lần "phủ nhận đau ngực", 4 quy tắc.
- mock1: Bennett Studio 210 đại lộ Ocean, 619-555-0131, Ruby và Sam, tuần khai trương 19–25/5; Tracy tìm lỗi lan can, Dana Okafor, "Check the railings."; Lydia và tuần không điện thoại tháng 4. "Ba năm rưỡi" khớp (Chloe tự làm từ ~tháng 11 năm 4, 16 tháng vào ~tháng 3 năm 6).
- mock2: cưới thứ Bảy 13/10 vườn thư viện Pine Street, Tracy phù dâu chính, "emergency contact" (B1), Ethan nhận khoá huấn luyện trước khi hỏi Leah + Chloe giúp (B2), nhẫn rơi xuống cát, câu "Yes. Obviously yes. Now please stand up."; Kitchen mở 15/10, $25/giờ, 3,5 giờ/ngày cần 4, 14 người nấu, doanh thu trưa tăng ~1/10, Harriet vẫn tự nướng scone; Tracy ở Brandt & Lowe.
- Mâu thuẫn giữa các chương C1 với nhau: ngoài (b), (d) ở trên, không thấy mâu thuẫn nào khác. Đặc biệt Option B của memo u0910 ("18 tháng nếu thuê 4 giờ/ngày") khớp với "4 giờ/ngày để hoà vốn" ở mock2.
- Ghi chú ngoài phạm vi (không sửa): bảng nhân vật trong `characters.md` ghi Trevor "11 → 17" và "học sinh" ở C1, trong khi nhật ký B2/C1 và sách 60 đều cho cậu đã vào đại học (năm nhất). Đây là lệch giữa bảng và nhật ký, không phải lỗi sách 60.

---

## 5. Bản dịch tiếng Việt

Đọc hết VI của mọi segment (8 file) và duyệt VI của câu hỏi cùng đáp án đúng. Xưng hô: Leah (chị) ↔ Tracy (em) nhất quán; vợ chồng Mitchell/Megan "anh/em" đúng; Nathan gọi Harriet "mẹ ơi/con"; Tracy gọi Dana "chị Dana ... em" đúng. **Không có chỗ nào dịch sai nghĩa**, ngoài:

1. **u1112 seg 10, "Dì Megan"**: xem 4.1(c). Chắc.
2. Nhẹ, không bắt buộc: u1112 passage_02 seg 5 VI "vào một đêm đông bệnh nhân" (EN "on a busy night") dễ đọc nhầm là "đêm mùa đông". Có thể đổi "vào một đêm bệnh nhân đông".
3. Nhẹ, không bắt buộc: u0102 passage_02 seg 12 VI "Anh áo khoác đỏ kia" cho "You, in the red jacket" (EN trung tính giới). Có thể đổi "Bạn áo khoác đỏ kia".

---

## 6. CẤM SỬA (đúng, dễ bị sửa nhầm)

- Các số **IEA** (415 TWh, 1,5%, 945 TWh, "slightly more than Japan"): đúng. Đừng đổi sang 416 TWh của ấn phẩm 2026.
- **u0304 q_u0304_007** có phương án sai "Harriet added crying faces": cố ý, vì mẹ của Nathan chính là Harriet (bài chỉ nói "my own mother"). Đừng sửa.
- **Mrs. Ellison** là y tá về hưu và thấy người đầu tiên đặt câu hỏi: khớp nhật ký.
- **"Six weeks later"** (4/3 → 15/4): đúng đúng 6 tuần. **"About eight months"** (18/2 → 13/10): đúng.
- Ngày thứ trong tuần (thứ Bảy 13/10, thứ Bảy 19/5, Chủ nhật 18/2, Chủ nhật 20/5, thứ Tư 23/5, thứ Sáu 25/5) cùng khớp một năm lịch. Đừng đổi.
- **"Dr. Leah Carter"** chưa đổi họ vì đám cưới ở mock2 mới diễn ra. Đúng.
- **"my aunt Megan"** trong EN (u1112): đúng, chỉ sửa bản VI.
- **Chloe "three and a half years"** (mock1): khớp nhật ký.
- **Mock1 "an ordinary face"**: đừng thay bằng tên chính trị gia (xem mục 3).
- **Philpot "three countries"**: đúng; thêm tên thành phố không cần.
- **"96 volunteers"**, **"12 weeks"**, **"more than 250"** (Lally): giữ nguyên; chỉ cân nhắc "average" → "typical" (mục 1 #18).
- **Câu "Treating Tomás as 'the Portuguese one' and Greg as 'the American one'..."**: là chính Nathan bác bỏ cách gán nhãn; đây là văn người viết đang phản đối khái quát hoá, không phải gán dân tộc. Đừng xoá.
- **q_mock2_008** phương án "every American family": là distractor sai có chủ đích. Đừng viết lại thành đáp án.
- Mọi quan hệ giữa các văn bản trong câu "Use both texts" đều có đáp án duy nhất; không cần sửa.

---

## Kiểm chứng của main Claude (03/11/2026)

Agent không phóng đại: 4 lỗi chắc đều đúng khi mở tận nơi. Đã sửa (EN + VI + giải thích + câu hỏi liên quan), build lại, verify cả 8 phần ĐẠT.

| # | Mục | Kết luận | Đã sửa |
|---|---|---|---|
| 1 | u0910 Helena "twenty years designing bridges" (39 tuổi) | ĐÚNG lỗi | → "more than fifteen years" / "hơn mười lăm năm" |
| 2 | u0910 "The Neighbors' Table last autumn" (Table chạy thu năm 6, memo tháng 8 năm 8) | ĐÚNG lỗi | → "two autumns ago" / "mùa thu hai năm trước" |
| 3 | u1112 VI "Dì Megan" | ĐÚNG lỗi — các sách trước dùng "thím Megan" 18 lần | → "Thím Megan" |
| 4 | mock2 Stanford 2025 "around 13 percent" (bản sửa 11/2025 ghi 16%) | ĐÚNG, cần rào | → "more than a tenth" ở bài, phương án, giải thích; 2 phương án nhiễu đổi theo |
| 5 | mock2 Tracy "last nine years" vs Leah ở tầng dưới 7 năm | không mâu thuẫn hẳn (họ là chị em họ) nhưng dễ gây thắc mắc | → "for as long as I can remember" |
| 6 | mock2 "the youngest cousin rings a bell… Amy" (Amy không phải em họ Ethan) | ĐÚNG | → "a child rings a small bell" |
| 7 | q_mock2_039 cần nhớ đề mock1 | **GIỮ** — chỉ dựa bài vẫn loại được 3 phương án (Leah bác sĩ, Chloe thiết kế, Greg là nam; bài nói "she", "engineer") | — |
| 8 | Lally 66 ngày là trung vị, không phải "average" | ĐÚNG | → "For the typical volunteer, it took about 66 days" / "that typical figure"; câu hỏi đổi "the figure of 66 days" |
| 9 | mock1 "has changed how many scientists think" hơi quá | hợp lý | → "has influenced" (bài + câu hỏi) |
| 10 | VI "đêm đông bệnh nhân" (dễ hiểu là đêm mùa đông), "Anh áo khoác đỏ" | hợp lý | → "đêm nhiều bệnh nhân", "Anh mặc áo khoác đỏ" |

Đồng bộ: `characters.md` (dòng mock2), `difficulty.md`, `01_research.md`.
