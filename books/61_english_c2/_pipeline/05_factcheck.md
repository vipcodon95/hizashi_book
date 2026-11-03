# Stage 5 — Fact-check & rà soát: sách 61 English C2

Ngày rà: 03/11/2026. Chỉ báo cáo, không sửa file nội dung. Phạm vi: 6 file JSON nguồn (4 chương `u*_BaiTap.json` × 20 câu, 2 đề `mock*_Mogishiken.json` × 40 câu = 160 câu). Không đụng file `_DocHieu.md` (sinh tự động).

Phương pháp: đọc toàn bộ segment EN/VI và câu hỏi bằng python; chạy script kiểm cơ học (mỗi câu đúng 1 `is_correct`; `evidence_segments` nằm trong bài; trích dẫn trong `explanation_i18n` có trong bài); WebSearch/WebFetch cho các khẳng định ngoài đời; đối chiếu `_shared/en_curriculum/characters.md` (bảng nhân vật + Nhật ký sự kiện, nhất là các dòng B2, C1 nguồn "60 ·" và C2 nguồn "61 ·").

Quy ước mức: **[CAO]** nên sửa trước khi seed · **[TB]** nên sửa · **[THẤP]** tuỳ chọn · **[NGHI VẤN]** chưa đủ chắc, cần người quyết.

---

## 0. Tóm tắt (đọc phần này trước)

Không có lỗi sự thật nghiêm trọng kiểu sai ngày/số liệu, vùng cấm sạch, cốt truyện khớp Nhật ký sự kiện ở hầu hết chỗ. Các vấn đề chắc chắn:

1. **[CAO] Lệch độ dài đáp án trên toàn sách:** 156/160 câu có đáp án đúng là phương án DÀI NHẤT; 141/160 câu dài ≥ 1,5 lần phương án dài thứ nhì. Học viên đoán đúng bằng cách chọn câu dài nhất, đề C2 mất giá trị đo. (Mục 2.1.)
2. **[CAO] Sự thật bị khẳng định quá tay:** `mock2` segment 7 + `q_mock2_014` nói các lần lặp lại thí nghiệm chó ngáp "found much weaker effects or none at all" / "largely failed". Thực tế kết quả lẫn lộn (Harr 2009 và O'Hara & Reeve 2010 yếu/không; Silva 2012, Madsen & Persson 2013, Romero 2013 lại ủng hộ). Cần rào đón. (Mục 1, dòng 11.)
3. **[TB] Xưng hô tiếng Việt sai rõ:** `mock2` segment 8 và đề bài `q_mock2_025`: Megan (thím của Leah) nói "Mẹ biết từ lúc con xin nước lọc rồi. Mẹ là y tá mà". Megan không phải mẹ Leah. (Mục 5.)
4. **[TB] Mâu thuẫn cốt truyện chắc chắn:** `mock1` segment 10 Lydia: thử nghiệm không điện thoại "two years ago", trong khi Nhật ký (C1 mock1, nguồn 60) ghi tháng 4 năm 8, tức khoảng 13 tháng trước thời điểm mock1 (tháng 5 năm 9). Và `mock1` segment 3: "Over the past year, volunteers have recorded more than 120" trong khi dự án mở tháng 2–4 năm 9. (Mục 4.)
5. **[TB] Câu hỏi có phương án đúng chứa ý bài không nói / dựa vào sách trước:** `q_u0506_002`, `q_u0506_010`, `q_mock2_034` (xem Mục 2.2). `q_mock2_034` không trả lời được nếu chỉ đọc đề.
6. **[THẤP/NGHI VẤN]** Harriet "thirty years" (mock2 seg 5) không khớp tuổi quán (~16 năm); `q_u0304_019` phương án D hơi quá; vài chỗ khác ở Mục 4.

Chương sạch: **u0102** (không lỗi sự thật/cốt truyện/dịch; chỉ dính lỗi độ dài đáp án chung), **u0708** (sạch, chỉ nghi vấn nhỏ về một câu "last saw as a child").

---

## 1. Sự thật ngoài đời

| # | Khẳng định | Vị trí | Kết luận | Ghi chú + nguồn |
|---|---|---|---|---|
| 1 | "embarazada" (Tây Ban Nha) = có thai, không phải "ngượng" | u0102 passage_01 seg 3–4; q_u0102_001 | **ĐÚNG** | Ví dụ "bạn giả" kinh điển; "ngượng" là avergonzado/a. https://progress.lawlessspanish.com/revision/glossary/transference-problems/falsos-amigos · https://www.inklingo.app/blog/What-are-Spanish--false-friends--I-should-know---e.g.--embarazada-  |
| 2 | "a poor historian" = bệnh nhân kể bệnh sử không rõ | u0102 seg 10; q_u0102_005 | **ĐÚNG** | Là nhãn lâm sàng thật. Lưu ý: giới y khoa đang tranh luận bỏ thuật ngữ này (STAT 2023) nên cảnh "con trai tổn thương" là hợp lý, không phải lỗi. https://www.statnews.com/2023/01/24/its-time-to-retire-poor-historian-from-clinicians-vocabularies/ |
| 3 | Con tàu Theseus theo Plutarch; Hobbes thêm câu hỏi con tàu thứ hai đóng từ ván cũ | u0102 passage_02 seg 6–7; q_u0102_014 | **ĐÚNG** | Plutarch (Life of Theseus): người Athens giữ tàu qua thời Demetrius xứ Phalerum, thay dần ván mục; Hobbes (De Corpore) thêm con tàu thứ hai. https://www.britannica.com/print/article/2195856 · https://bigthink.com/culture-religion/this-ancient-thought-exercise-will-have-you-questioning-your-identity/ |
| 4 | Neisser & Harsch, Challenger (28/1/1986): hỏi sáng hôm sau, hỏi lại hơn hai năm sau, tự tin không liên quan độ chính xác; có người tin ký ức sau hơn bản viết tay | u0304 passage_01 seg 8–10; q_u0304_004–006 | **ĐÚNG phần chính; CHƯA TỰ XÁC MINH được chi tiết cuối** | Xác nhận: bảng hỏi trong vòng 24 giờ, hỏi lại ~2,5 năm sau, độ tự tin trung bình ~4,17/5 nhưng độ chính xác thấp (~2,95/7). Chi tiết "some preferred the later memory when shown their handwriting" tôi không tìm được trong nguồn mở nào (các nguồn chỉ nói có cho xem bản gốc và đa số không nhớ lại được); theo hiểu biết của tôi chi tiết này có trong chương gốc Neisser & Harsch 1992. Bài chỉ viết "Some", an toàn, nhưng `q_u0304_005` hỏi thẳng vào chi tiết này, nên đối chiếu bản gốc trước khi seed. https://thereader.mitpress.mit.edu/what-are-flashbulb-memories/ · https://theconversation.com/flashbulb-memories-of-dramatic-events-arent-as-accurate-as-believed-64838 · https://appsychology.com/ib_psych/ibcontent/studies/neisser-and-harsch/ |
| 5 | Blakemore/UCL: không tự cù được, tiểu não dự đoán, robot làm trễ → nhột hơn; liên hệ người nghe ảo giác (có rào đón) | mock1 passage_02 seg 3–10; q_mock1_011–020 | **ĐÚNG** | Thí nghiệm robot (tay cầm điều khiển robot vuốt lòng bàn tay, thêm trễ/đổi hướng thì thấy nhột hơn) là Blakemore, Frith & Wolpert 1999; bài báo 1998 (Nature Neuroscience) nêu vai trò tiểu não. Liên hệ ảo giác: Blakemore và cs 2000, Psychological Medicine; bài viết đã rào "seem… in certain studies… far from proven", đủ. https://www.scientificamerican.com/article/why-cant-a-person-tickle/ · https://Gwern.net/doc/psychology/neuroscience/1999-blakemore.pdf · https://www.cambridge.org/core/journals/psychological-medicine/article/perception-of-selfproduced-sensory-stimuli-in-patients-with-auditory-hallucinations-and-passivity-experiences-evidence-for-a-breakdown-in-selfmonitoring/8EB94550E108943088B294EAA4891F74 |
| 6 | Wilson 2014: 6–15 phút, 2/3 nam, 1/4 nữ tự sốc, trước đó nói sẵn sàng trả tiền để tránh | mock1 passage_04 seg 3–5; q_mock1_031–033 | **ĐÚNG** | 12/18 nam, 6/24 nữ (nhóm nhỏ). Phần "critics" cũng có thật: bình luận trên Frontiers nêu 14/18 người tự sốc nói vì tò mò, cú sốc chỉ "hơi khó chịu" và ngắn, 57% không bao giờ tự sốc. Bài viết còn viết nhẹ tay ("most had earlier said"); nguồn nói cả 42 người đều đã nói vậy, không sai. https://www.simplypsychology.org/news/just-think-the-challenges-of-the-disengaged-mind · https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4260464/ |
| 7 | The Great Gatsby 1925; phạm vi công cộng ở Mỹ từ 2021 | u0506 passage_01 seg 2–3; q_u0506_001 | **ĐÚNG** | NPR: hết hạn bản quyền 1/1/2021. https://www.npr.org/2021/01/02/952737126/opinion-the-great-gatsby-enters-public-domain-but-it-already-entered-our-hearts |
| 8 | Các câu trích Gatsby: "inclined to reserve all judgments"; Nick là "one of the few honest people"; "So we beat on, boats against the current, borne back ceaselessly into the past."; "Why of course you can!" | seg 8, 11, 14 | **ĐÚNG** (câu mở tôi xác nhận qua văn bản; ba câu còn lại khớp bản gốc theo hiểu biết: ch.3, ch.9, ch.6, công cụ không trả văn bản) | https://gutenberg.org/cache/epub/64317/pg64317-images.html |
| 9 | Gatsby: sách bán kém lúc đầu; Fitzgerald mất 1940 tưởng sách thất bại | seg 15; q_u0506_009 | **CẦN RÀO ĐÓN (nhẹ)** | Bán kém: đúng (NPR: dưới 25.000 bản trước khi ông mất). "Died believing that it had failed": tôi KHÔNG tìm được nguồn trực tiếp về niềm tin của ông riêng về cuốn này; phổ biến hơn là ông chết trong cảm giác mình bị lãng quên. Gợi ý: "died in 1940, convinced he had been forgotten" hoặc thêm "as the story goes". Vì là lời của câu lạc bộ sách (giọng kể chuyện vui) nên không nghiêm trọng. https://www.npr.org/2021/01/02/952737126/opinion-the-great-gatsby-enters-public-domain-but-it-already-entered-our-hearts · https://veritasjournal.org/2021/01/01/happy-public-domain-day-2021/ |
| 10 | Open Science Collaboration 2015: ~270 người, 100 nghiên cứu, 3 tạp chí, 97% → 36%, hiệu ứng ~1/2 | u0506 passage_02 seg 4–5; q_u0506_012–013 | **ĐÚNG** | Đúng từng số. Cách diễn giải ("failed replication does not prove…") đã được bài rào đón tốt; lưu ý ngoài lề: diễn giải 36% từng bị bình luận lại (Gilbert, King, Pettigrew, Wilson 2016), bài không cần thêm. https://acawiki.org/Estimating_the_reproducibility_of_psychological_science · https://osf.io/ezcuj/wiki |
| 11 | Power posing: nghiên cứu 2010; năm 2016 một tác giả công khai không còn tin | seg 8–9; q_u0506_014–015 | **ĐÚNG** | Carney, Cuddy & Yap 2010 (42 người, hai tư thế, tổng ~2 phút); Ranehill 2015 (200 người) không tìm thấy tác động hoóc-môn/hành vi; Carney công bố 2016 không còn tin hiệu ứng. Bài chỉ nói "hormonal effect" nên đúng (hiệu ứng cảm giác quyền lực thì có tìm thấy, bài không nói sai). https://en.wikipedia.org/wiki/Power_posing · https://www.zne.uzh.ch/dam/jcr:e5fc4c3c-d50e-4aa9-96ab-4389e426d20d/Psychological%20Science-2015-Ranehill-0956797614553946.pdf |
| 12 | Thử nghiệm tuần 4 ngày ở Anh 2022: 61 công ty, ~2.900 người, 6 tháng, giữ lương, 56 tiếp tục, 18 vĩnh viễn, số liệu tự báo cáo | u0708 passage_01 seg 3–4; q_u0708_001–002 | **ĐÚNG** | Tháng 6–12/2022; báo cáo tháng 2/2023. Phần "most of the figures were reported by the companies themselves" cũng đúng. https://www.npr.org/2023/02/21/1158507132/uk-study-companies-four-day-workweek · https://www.4dayweek.com/uk-full-report-2023 |
| 13 | Chó ngáp theo người 2008, London, 21/29 | mock2 passage_02 seg 6; q_mock2_014 | **ĐÚNG** (phần 2008) | Joly-Mascheroni và cs, Biology Letters 2008, 21/29 chó; tác giả có đo nhịp tim để xét khả năng chó căng thẳng, nên câu "researchers themselves had noted… mildly stressed" chấp nhận được. https://baillement.com/replication/senju_dogs.html |
| 14 | "Later attempts to repeat the experiment found much weaker effects or none at all" | mock2 passage_02 seg 7; q_mock2_014 đáp án B + explanation | **CẦN RÀO ĐÓN — [CAO]** | Kết quả các lần lặp lại LẪN LỘN. Yếu/không: Harr và cs 2009 (15 chó, kết quả thấp hơn nhiều); O'Hara & Reeve 2010 (bằng chứng yếu). Nhưng ủng hộ: Silva 2012; Madsen & Persson 2013 (chó trên 7 tháng ngáp lây, không thấy ưu thế người quen); Romero, Konno & Hasegawa 2013 (13/25 chó ngáp, nhiều hơn khi nhìn chủ), các tác giả nói "corroborate". Viết "largely failed" là phóng đại. Đề xuất: "Later attempts to repeat the experiment gave mixed results: some found weaker effects or none at all, while others found that dogs yawned more at familiar people." và sửa `q_mock2_014` B thành "…but later attempts to repeat it gave mixed results". Ý lập luận của bài (bức tranh phức tạp hơn, không phải bằng chứng chắc chắn về đồng cảm) vẫn đứng được. https://baillement.com/replication/harr_dogs.html · https://baillement.com/replication/ohara_dogs.html · https://baillement.com/replication/silva_dogs · https://pmc.ncbi.nlm.nih.gov/articles/PMC3737103 |
| 15 | Duke 2014: 328 người, video 3 phút, ~2/3 ngáp ≥1 lần, ổn định, đồng cảm không liên quan đáng kể, tuổi duy nhất ~8% | mock2 passage_02 seg 8–9; q_mock2_016–018 | **ĐÚNG** | Bartholomew & Cirulli 2014, PLoS ONE. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3954725/ |

Ghi chú nhỏ [THẤP] về "bystander effect… a newer study had complicated it" (u0506 passage_02 seg 3): không có số liệu cụ thể để kiểm, đúng tinh thần (Philpot và cs 2020), không cần sửa.

---

## 2. Câu hỏi

Kiểm máy: 160/160 câu có đúng 1 `is_correct`; phân bố vị trí đáp án đều (mỗi chữ cái 10/40 hoặc 5/20); đáp án và explanation khớp nhau ở mọi câu tôi đọc; các trích dẫn tiếng Anh trong explanation đều có trong bài (hai ngoại lệ chỉ là metadata, xem 2.3). Không tìm thấy câu nào có hai đáp án đúng ngang nhau.

### 2.1 [CAO] Đáp án đúng gần như luôn là phương án dài nhất

| File | Số câu | Đáp án đúng là phương án dài nhất | Dài ≥ 1,5× phương án dài thứ nhì |
|---|---|---|---|
| u0102 | 20 | 19 | 16 |
| u0304 | 20 | 19 | 19 |
| u0506 | 20 | 20 | 19 |
| u0708 | 20 | 20 | 19 |
| mock1 | 40 | 39 | 33 |
| mock2 | 40 | 39 | 35 |
| **Tổng** | **160** | **156** | **141** |

Ví dụ cực đoan (độ dài ký tự các phương án A–D, đáp án đúng gạch dưới): `q_mock1_020` (5 / 23 / 15 / **81**), `q_mock2_010` (6 / 7 / **37** / 3), `q_u0708_016` (14 / **46** / 17 / 25), `q_mock1_028` (12 / 21 / 21 / **83**), `q_u0506_006` (**71** / 24 / 11 / 15). Đây không phải lỗi sự thật mà là lỗi thiết kế đề: người học chọn câu dài nhất sẽ đúng ~97%. Với đề thi thử C2 thì làm mất tác dụng. Đề xuất: viết lại phương án sai cho dài tương đương (thêm vế nghe hợp lý nhưng sai), hoặc rút gọn đáp án đúng.

### 2.2 Câu hỏi có vấn đề riêng

| Câu | Vấn đề | Mức | Đề xuất |
|---|---|---|---|
| `q_u0506_002` | Đáp án D: "The book's vivid surface is more memorable than its deeper story, **which is why rereading was useful**". Bài chỉ nói "Few of us had read it since high school… remembered the parties far better than the plot". Việc đọc lại có ích KHÔNG được bài nói. Explanation cũng kết luận "giải thích vì sao cả nhóm cần đọc lại" — suy diễn ngoài bài. | TB | Bỏ vế "which is why rereading was useful" (D còn: "The book's vivid surface is more memorable than its deeper story"); sửa explanation. |
| `q_u0506_010` | Đáp án D: "Some members found the novel **heavy**…". Bài nói cuốn sách NGẮN (seg 3); dòng cuối chỉ có "Next month: something lighter, as several members requested in writing". Không có chỗ nào nói cuốn Gatsby "nặng". | TB | Sửa D thành "Some members asked, half seriously, for a lighter book next time." |
| `q_u0506_020` | Câu nối hai bài. Đáp án C: "warn readers to be most careful when a source tells them **what they want to believe**". Khớp Leah (seg 15: "exactly what I hoped to hear") nhưng KHÔNG khớp phần Nick: vấn đề của Nick là tự nhận trung thực, và câu cuối đẹp khiến người ta thôi hỏi (Nathan), không phải "nói điều người đọc muốn tin". Các phương án khác sai rõ nên vẫn xác định được đáp án. | THẤP | Sửa C thành "…to be most careful when a source sounds convincing or reassuring, and to keep asking questions" và sửa explanation tương ứng. |
| `q_mock2_014` | Đáp án B "later attempts to repeat it largely failed" dựa vào khẳng định đã bị phóng đại (Mục 1, dòng 14). | CAO (kéo theo) | Sửa cùng seg 7. |
| `q_mock2_034` | "Who is 'a teenager who is now an engineer'?" đáp án D Tracy. Trong cả đề mock2 KHÔNG có chỗ nào nói Tracy là kỹ sư hay từng đổi bài học với "you". Explanation dẫn "Ở A2…" tức kiến thức của sách trước. Người chỉ đọc đề không loại được Tina/Amy/Helena trừ khi biết tuổi và nghề của họ. | TB | Thêm manh mối vào seg 4 của thư (vd "…a teenager who now builds bridges"), hoặc thay câu bằng câu hỏi trả lời được từ bài. |
| `q_mock2_027` | Đáp án B và explanation dựa vào "Leah là chị họ của Tina", điều không có trong mock2. Loại trừ vẫn ra B (A, C, D vô lý) nên chấp nhận được. | THẤP | Có thể thêm "her cousin Leah" vào seg 10. |
| `q_mock2_023` | Đáp án B "He is nervous about expressing his feelings, **as usual**": "as usual" dựa vào các chương trước (explanation nhắc "hỏi nhầm người liên lạc khẩn cấp, nhẫn rơi xuống cát"). Bài tự nó đủ để chọn B ("well", "um", "I've practiced this"). | THẤP | Bỏ "as usual". |
| `q_mock1_008` | "Which phrase repeats an idea from the oral-history interviews?" nói tới Mitchell/Harriet ở u0304. Chỉ B ("both have something to teach us") là một ý, các phương án kia là cụm vật lý, nên loại trừ được. | THẤP | Chấp nhận được; nếu muốn chặt hơn, đổi stem thành "Which phrase states the notice's attitude to memories and documents?" |
| `q_u0304_019` | Đáp án D: "…and its opening hours reject Mr. Pell's condition". "Open until dark" không hẳn mở lâu hơn 6 giờ chiều (mùa đông ở San Diego trời tối trước 6 giờ). Explanation nói "không đóng lúc sáu giờ như ông Pell muốn". Phần "Built by the neighbors" mới là ý chắc chắn. | NGHI VẤN | Sửa D thành "…and the community, not Mr. Pell, decides when it is open". |
| `q_u0102_013` | "Who is 'only one'… still there?" đáp án D "Harriet herself". Bài do chính bà Harriet viết ngôi thứ nhất, rồi seg 5 chuyển sang "she now needs a stool" (ngôi thứ ba tự giễu). Hơi lắt léo, người học dễ nghĩ là người khác; đáp án vẫn đúng và duy nhất. | THẤP | Có thể đổi seg 5 thành "…and she is writing this sentence from a stool behind the counter" hoặc giữ nguyên. |

### 2.3 Metadata nhỏ (không ảnh hưởng đáp án)
- `q_u0506_014`: explanation trích "failed to find the hormonal effect" (seg 9) nhưng `evidence_segments` chỉ có `[8]`; nên là `[8, 9]`.
- `q_mock2_010`: explanation trích "to our great pride" (seg 4) nhưng `evidence_segments` là `[3, 11]`; nên thêm 4.

### 2.4 Chỗ ĐÚNG, dễ bị nghi nhầm
- `q_mock2_004` (hai em 8 và 10 tuổi, có hộp riêng → mỗi em 3 phiếu): đúng (2 phiếu cho trẻ dưới 12 + 1 phiếu cho người mang hộp).
- `q_mock1_002` (giờ đông: 30 phút) và `q_mock1_004` (15 tuổi cần cha mẹ/người giám hộ): đúng.
- `q_u0304_012` (câu NOT: "removing the committee"): đúng, duy nhất.
- `q_u0506_005` ("According to Nathan… favors Gatsby"): đúng.

---

## 3. Vùng cấm

**SẠCH.** Đã quét EN và VI toàn bộ 6 file theo từ khoá (government, politic*, election, vote, president, party, democra*, communis*, fascis*, capitalis*, socialis*, war, soldier, army, military, battle, religio*, church, God, pray, Bible, empire, colonial, dictator, ideolog*, nation*, countr*, Americans, Vietnam*, Japan*, Chinese…) và đọc lại các chỗ có khả năng:
- Không có chính trị, đảng phái, bầu cử, chính trị gia, chính phủ, chiến tranh, tranh luận tôn giáo. "Party" chỉ là bữa tiệc (Gatsby; Ethan "leaving the party"). Gatsby chỉ bàn tính người kể chuyện, giàu nghèo, quá khứ; không ý thức hệ.
- Khái quát hoá dân tộc/quốc gia trong văn người viết: **không có**. Các lần nhắc quốc tịch đều là cá nhân hoặc nguồn nghiên cứu: "A man from Guatemala" (u0102 seg 11), "Spanish, Vietnamese or Tagalog" (ngôn ngữ cần phiên dịch), "the United Kingdom in 2022" (nguồn nghiên cứu), "the English philosopher Thomas Hobbes". Đáng khen: `mock2` seg 6 chủ động bác khái quát "learning a language means learning to think like the people who speak it… Nobody on this street thinks alike".
- Chỗ chỉ để ý (không phải lỗi): Wilson 2014 nêu tỉ lệ theo giới ("two-thirds of the men and a quarter of the women"). Là kết quả nghiên cứu với nhóm nhỏ (18 nam, 24 nữ), bài không khái quát hoá về "đàn ông/phụ nữ" nên giữ nguyên.

---

## 4. Nhất quán cốt truyện

Đã đối chiếu từng chương với Nhật ký sự kiện (dòng C2 nguồn "61 ·" và các dòng B2/C1): số liệu, tên, ngày, quan hệ nhìn chung KHỚP (214 người khảo sát, 250.000 đô, Pell Park/ván trượt/6 giờ, 600 người góp, biển "Built by the neighbors. Open until dark.", 1978 vs 1980, ba buổi chiều phỏng vấn; tuần 4 ngày tháng 3–8, trễ 2 hạn chót, ±3%, nghỉ ốm 11 → 4, Sam, chiều thứ Năm; Hale, 11 khách sạn, Portland, vầng trăng xanh; Kitchen 31 người nấu, 3 cơ sở riêng, phiếu 2 đô, hộp riêng; Thanksgiving, nước lọc, "7 năm"; thư gửi "you" 8 năm). Tuổi và quan hệ khớp: Leah là cháu Mitchell, chị họ Tracy/Trevor/Tina (u0708 "My cousin Leah"; mock2 Tina "something more complicated"); Megan là điều dưỡng cấp cứu làm ca đêm cạnh Leah; Tracy đi 6 năm (4 + 2), phòng cũ thành phòng khách, Tina cao hơn Tracy; Harriet tới 1978 làm giáo viên trẻ; "you" tới cuối tháng 8 năm 1 → "eight years ago" đúng; Tracy là "teenager" 16 tuổi lúc đó.

Các mâu thuẫn/nghi vấn:

| # | Vị trí | Trích nguyên văn | Vấn đề | Mức | Đề xuất |
|---|---|---|---|---|---|
| C1 | mock1 passage_04 seg 10 (Lydia) | "I noticed this during my school's phone-free experiment **two years ago**." | Nhật ký (C1, tháng 5 năm 8, nguồn 60 · mock1): Westview High thử một tuần không điện thoại **tháng 4 năm 8**. Bài mock1 viết tháng 5 năm 9, tức cách ~13 tháng. | TB | "last spring" / "a year ago". |
| C2 | mock1 passage_01 seg 3 (thông báo) | "**Over the past year**, volunteers have recorded more than 120 conversations" | Nhật ký (C2 tháng 2–4 năm 9) và u0304: dự án "Voices of Maple Street" mới mở tháng 2, Mitchell phỏng vấn bà Harriet tháng 2–4 năm 9; tới 18/5 chỉ khoảng 3 tháng. | TB | "Since February" hoặc "In recent months". (Nếu giữ "past year" thì sửa Nhật ký/u0304 cho dự án bắt đầu sớm hơn.) |
| C3 | mock2 passage_04 seg 5 (thư Harriet) | "my soup needed more salt, which nobody on this street had dared to say **in thirty years**" | Quán Harriet's ~16 năm; Harriet ở phố từ 1978 (~47 năm). Con số 30 không khớp mốc nào. | NGHI VẤN | "in sixteen years" nếu nói về quán, hoặc "in all my years on this street". |
| C4 | u0708 passage_02 seg 11 vs u0304 seg 4 và mock1 seg 9 | "becoming a neighbor not on the day she arrived but in the week, **two years later**, when everyone carried sandbags together" | Bản ghi âm Mitchell làm với bà Harriet mùa xuân (tức bản bà kể khi trận lụt "cùng tuần bà tới"). Thư viện cam kết "left the recording as it is" cho ký ức lệch tài liệu. Việc Tracy nghe bà kể đúng mốc "hai năm sau" mâu thuẫn nếu bản ghi giữ nguyên ký ức gốc; chỉ khớp nếu bà kể lại sau khi xem ảnh (buổi chiều thứ ba). | NGHI VẤN | Làm rõ ("in the last of the three afternoons, after seeing the photograph") hoặc để Tracy nghe bản gốc "in the week she arrived" kèm ghi chú thư viện; sửa `q_u0708_017` + explanation tương ứng. |
| C5 | u0708 passage_02 seg 5 (Tracy) | "My little sister, **whom I last saw as a child** who asked 'Why?' about everything" | Tracy là phù dâu chính trong đám cưới Leah ngày 13/10 năm 8 (C1 mock2), khi Tina ~13–14 tuổi; Tracy cũng về dịp nghỉ đông (A2). "Last saw as a child" là cường điệu. | THẤP | "whom I remember as a child who asked…". |
| C6 | u0506 passage_02 seg 3 (Leah) | "**A few years ago**, I wrote in this newsletter about… the bystander effect" | Nhật ký: Leah viết bài này cuối năm 7 (C1 u0102), bài hiện tại tháng 7–8 năm 9, khoảng 1,7 năm. | THẤP | "Two years ago" hoặc "Not long ago". |
| C7 | u0304 passage_02 seg 18 | "Eleven months later, the playground opened." | Pell nhắn tháng 2–4 năm 9 → sân chơi khai trương khoảng tháng 1–3 năm 10, sau thời điểm mock2 (tháng 11 năm 9) và sau u0708 (tháng 9 năm 9) mà u0708 không nhắc. Không phải lỗi (nhật ký cũng ghi "11 tháng sau"), chỉ là chương kể từ tương lai so với các chương sau. | GHI CHÚ | Giữ; chỉ cần biết khi viết sách kế. |

Mâu thuẫn giữa các chương C2: ngoài C1–C4 ở trên, không thấy. Đã kiểm: Harriet 1978 (u0304) ↔ "two suitcases" (u0708) ↔ lụt 1980 (mock1) ↔ "wrong year for a flood" (mock2) nhất quán; Kitchen mở "a year ago" ↔ "kitchen full of cooks I had never met a year ago" (u0102, tháng 12–1 năm 8–9) hợp logic (người nấu mới đến từ tháng 10 năm 8, một năm trước bà chưa quen ai).

---

## 5. Bản dịch tiếng Việt

Đã đọc song song EN/VI toàn bộ segment, đề và đáp án. Chỉ báo chỗ sai nghĩa hoặc sai xưng hô rõ ràng:

| # | Vị trí | EN | VI hiện tại | Vấn đề | Mức | Đề xuất |
|---|---|---|---|---|---|---|
| T1 | mock2 passage_03 seg 8 (Megan nói) và `q_mock2_025` (stem tiếng Việt trích lại) | "I knew it at the water. I'm a nurse." | "Mẹ biết từ lúc con xin nước lọc rồi. Mẹ là y tá mà" | Megan không phải mẹ của Leah mà là vợ của Mitchell, tức thím/mợ (tuỳ bên) của Leah. Tự xưng "mẹ", gọi Leah là "con" sai quan hệ rõ ràng. (Các lời thoại khác của chương này dùng đúng: Tracy–Leah "chị/em", Trevor–Ethan "anh".) | TB | "Thím biết từ lúc cháu xin nước lọc rồi. Thím là y tá mà." Sửa cả seg 8 lẫn stem `q_mock2_025`. |
| T2 | u0304 passage_02 seg 15–16 | "parochial" | "cục bộ" | Nghĩa sát hơn là "hẹp hòi, thiển cận, thiếu tầm nhìn bên ngoài" (khớp seg 16: "insular" = "khép kín"). "Cục bộ" nghe như "chỉ vì lợi ích địa phương", lệch sắc thái xúc phạm mà ông Pell muốn. Không sai hẳn. | THẤP | "hẹp hòi" hoặc "tầm nhìn hẹp". |

Các chỗ dịch tốt, đừng sửa: "Be that as it may" → "Dù vậy"; "chalk the mistake up to the passing of time" → "đổ lỗi cho thời gian"; "bạn giả" cho false friends; "Some things are still my business" → "chuyện làm ăn của tôi" (giữ chơi chữ trong explanation).

---

## CẤM SỬA (chỗ đúng, dễ bị sửa nhầm)

- **Số liệu khoa học đã khớp nguồn:** OSC 2015 (~270 người, 100 nghiên cứu, 3 tạp chí, 97% → 36%, hiệu ứng ~1/2); Wilson 2014 (6–15 phút, 2/3 nam, 1/4 nữ, "would pay to avoid"); Duke 2014 (328, 3 phút, ~2/3, tuổi ~8%); UK 4 ngày (61, ~2.900, 56, 18, "reported by the companies themselves"); power posing 2010 và 2016 chỉ ở "hormonal effect" (cố ý, vì hiệu ứng cảm giác quyền lực có tìm thấy); Challenger tháng 1/1986, "hơn hai năm sau"; chó 2008 21/29.
- **Lỗi cố ý của Megan:** "very pregnant" thay "embarrassed" là đúng bản chất bạn giả "embarazada".
- **1978 vs 1980:** lụt thật năm 1980, bà Harriet tới 1978; mock1 seg 3 "great flood of 1980" là đúng, đừng "sửa" thành 1978.
- **Tên/chức danh theo nhật ký:** Mr. Hale (11 khách sạn), Portland, vầng trăng xanh; Walt, Priya (thủ quỹ), 214 người khảo sát, 250.000 đô; Sam, Ruby; Grayson Pell.
- **Ngày giờ/đáp số:** "thứ Bảy 19 tháng Mười", "thứ Bảy 18 tháng Năm", 619-555-0176 (mock1); phiếu 2 đô, trẻ dưới 12 hai phiếu, mang hộp +1; 11 túi đĩa giấy → dưới 3 túi.
- **Đáp án đúng, đừng đổi:** `q_mock2_004` (C = ba phiếu), `q_mock1_002` (C = 30 phút), `q_mock1_004` (D), `q_u0304_012` (D), `q_u0506_005` (B), `q_mock2_017` (B = tuổi chỉ giải thích ~8%).
- **Chi tiết cảm xúc/hài hợp tính cách:** Mitchell "tìm máy ảnh hoá ra là điện thoại"; Ethan tập lại bài phát biểu; Biscuit già; "Aunt Tina"; Harriet "Some things are still my business".
- **Cách nói rào đón đúng chuẩn khoa học (giữ nguyên):** "A failed replication does not prove that the original finding was false" (u0506 seg 6); "although it is far from proven" (mock1 seg 10); "This does not prove that empathy plays no role" (mock2 seg 10); Chloe: "I do not believe that a four-day week is the answer for every business".
- **Nhận định đời sống tự giới hạn, không khái quát dân tộc:** mock2 seg 6 ("Nobody on this street thinks alike").
- **Phần "dogs might simply have been mildly stressed"** (mock2 seg 7 nửa sau): có cơ sở trong nghiên cứu gốc; chỉ sửa vế "later attempts… none at all".
