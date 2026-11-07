# Review bài mở rộng _03…_06 — sách 60 C1, chương u0910 + u1112

Phạm vi: `passage_<code>_03…06`, câu `q_<code>_021…060` trong
`u09_10_arts_finance/u0910_ArtsFinance_BaiTap.json` và
`u11_12_intercultural_ethics/u1112_InterculturalEthics_BaiTap.json` (segments, questions, choices,
explanation_i18n, lesson.*). Không đọc file md. Không sửa file nào.

Số đo nền (script tạm, đếm câu theo dấu `. ! ?`, chỉ segment `kind=sentence`):

| Bài | Từ | TB từ/câu |
|---|---:|---:|
| u0910 _01 / _02 (đã duyệt) | 458 / 468 | 15,3 / 14,6 |
| u0910 _03 / _04 / _05 / _06 | 501 / 514 / 459 / 493 | 20,0 / 23,4 / 22,9 / 22,4 |
| u1112 _01 / _02 (đã duyệt) | 495 / 459 | 17,7 / 15,3 |
| u1112 _03 / _04 / _05 / _06 | 463 / 435 / 470 / 444 | 22,0 / 21,8 / 23,5 / 21,1 |

⟹ Bài mới không dễ hơn _01/_02 (câu dài hơn, mật độ ý cao hơn). Đáp án rải A–D đều. Tỉ lệ câu suy
luận ~45–55% mỗi bài. Số liệu thật đã đối chiếu: Sabine 1895 / Symphony Hall 1900 / người giới thiệu là
hiệu trưởng Harvard → nhà sáng lập dàn nhạc Boston; Thaler (Nobel, mental accounting thập niên 1980);
Giles thập niên 1970; Mauss *The Gift* (~1925); thí nghiệm thiệp Giáng sinh thập niên 1970; nghiên cứu kẹo
bạc hà và tiền boa; vụ hệ thống tuyển dụng bị bỏ năm 2018 (10 năm hồ sơ, chữ "women's"). Tất cả khớp.
Vùng cấm: KHÔNG có vi phạm ở cả hai chương.

---

## Tổng hợp

| Chương | NẶNG | VỪA | NHẸ |
|---|---:|---:|---:|
| u0910 (Arts & Finance) | 1 | 6 | 6 |
| u1112 (Intercultural & Ethics) | 1 | 3 | 7 |

Hai lỗi NẶNG cùng một loại, và là lỗi HỆ THỐNG: **đáp án đúng gần như luôn là phương án dài nhất.**

---

## 🔴 NẶNG (hệ thống, cả hai chương): đáp án đúng lộ vì dài nhất

Đo bằng độ dài chuỗi `choices[].i18n.en`. Đếm số câu mà đáp án đúng **dài nhất, không ai bằng**:

| | _01–_02 (đã duyệt) | _03–_06 (mới) | Tỉ lệ dài đáp án / TB 3 nhiễu |
|---|---:|---:|---:|
| u0910 | 6/20 | **33/40** | 1,04 → **1,37** |
| u1112 | 7/20 | **37/40** | 1,10 → **1,40** |

Theo bài: u1112 _03 9/10, _05 9/10, _06 9/10, _04 7/10; u0910 _04 8/10, _05 7/10. Một thí sinh chỉ cần
"chọn câu dài nhất" là đạt ~83% (u0910) và ~93% (u1112) mà không đọc bài. Đó là hỏng giá trị đo của
bộ câu hỏi, nên xếp NẶNG dù từng câu riêng lẻ không sai.

Nguyên nhân: đáp án đúng được viết đầy đủ, có rào đón ("…, which constant watching would harm"), còn
nhiễu viết cụt ("They are cheaper to build than other shapes.").

**Đề xuất chung:** đưa về mức của _01/_02 — mỗi bài tối đa ~3/10 câu đáp án đúng dài nhất. Cách làm: rút
gọn đáp án đúng về một mệnh đề, và kéo dài nhiễu bằng chi tiết lấy từ bài (để nhiễu vừa dài vừa có vẻ có
căn cứ). Sửa đáp án đúng phải giữ nguyên nghĩa; giải mù đã khớp 400/400, không đổi vị trí đáp án.

Câu nặng nhất (tỉ lệ ≥1,5) kèm bản thay cụ thể:

### u0910

| Câu | Hiện tại (đáp án) | Đề xuất |
|---|---|---|
| q_u0910_037 | A "Sound reflected from the side walls makes music feel richer and more involving." (79 ký tự, nhiễu 36–47) | A → "Reflections from the side walls make the music feel richer." · B → "Their seats rise in steps all around the stage, closer to the musicians." · C → "They have very little reverberation, so every note sounds clear." · D → "They are cheaper to build than halls with more adventurous shapes." |
| q_u0910_057 | C "to cover costs during the quiet months when there is little work" | C → "to cover costs in the slack season" · A → "to save up for a second large printer once business improves" · B → "to pay for the team's Friday lunches without touching other money" · D → "to pay Leah back for the evening she spent on the spreadsheets" |
| q_u0910_035 | D "something that cannot be heard clearly because the sounds run together" | D → "sounds that run together and lose their clarity" · A → "something so quiet that listeners at the back cannot hear it" · C → "something moving too fast for the eye to follow" |
| q_u0910_027 | D "to show how much feeling the actress can express with almost no words" | D → "to show how much she conveys without words" · A → "to explain why the film runs longer than the first one" · C → "to complain that her best scene has too little dialogue" |
| q_u0910_048 | D "to show that keeping money separate can have good reasons that are not financial" | D → "to show that keeping money apart can have non-financial reasons" · B → "to explain how an inheritance can be invested wisely over many years" |
| q_u0910_054 | A "Chloe was so embarrassed that she hid the problem even from a close colleague." | A → "Chloe hid the problem even from her closest colleague." · B → "Ruby had caused the overdraft by sending the June invoices late." · C → "Ruby had warned Chloe about slow-paying clients back in June." · D → "Ruby was having similar money problems with the same bank." |
| q_u0910_024 | C "because the flashbacks keep adding new information and build tension instead of slowing the film" (96 ký tự) | C → "because each flashback reveals something new and raises the tension" |
| q_u0910_039, _050, _034, _046, _053 | đáp án dài hơn nhiễu 50–70% | cùng cách: rút đáp án, thêm chi tiết bài vào nhiễu |

### u1112

| Câu | Hiện tại (đáp án) | Đề xuất |
|---|---|---|
| q_u1112_042 | C "The engineers could not be certain the system would stop favoring men in other ways." (84, nhiễu 36–57) | C → "No one could be sure it would stop favoring men." · A → "A news report forced the company to shut it down overnight." · B → "It cost far more to run than the company had expected." · D → "The company had stopped hiring engineers for several years." |
| q_u1112_056 | D "to show that real learning needs the freedom to take risks, which constant watching would harm" (94) | D → "to show that learning needs a freedom that monitoring would discourage" · A → "to prove that history is harder to learn than most other school subjects" · C → "to suggest that history lessons can easily be taught without laptops" |
| q_u1112_031 | C "to introduce a familiar feeling of obligation that the article will explain" | C → "to introduce a familiar sense of obligation" · A → "to share a neighbor's recipe for homemade jam with readers" |
| q_u1112_025 | B "when it is based on an assumption about a group rather than on the real person" | B → "when it responds to a group, not the real person" · A → "when the speaker changes their accent too slowly for anyone to notice" · C → "when both people grew up in the same town and share a dialect" |
| q_u1112_040 | C "Accept the gift happily and return the kindness naturally when the time is right." | C → "Accept it gladly and return the kindness later." · A → "Pay the neighbor back for the jam as soon as you possibly can." |
| q_u1112_058 | B "The software would collect personal and sensitive information unrelated to schoolwork." | B → "It would collect sensitive information unrelated to school." · A → "The company might sell the students' laptops to another school district." · D → "Teachers' own screens would also be recorded during every lesson." |
| q_u1112_036 | C "to suggest that a gift which seems personal creates a stronger sense of obligation" | C → "to suggest that a gift that feels personal creates more obligation" · A → "to show that customers clearly prefer receiving two mints rather than one" |
| q_u1112_027, _047, _045, _050, _049 | đáp án dài hơn nhiễu 50–60% | cùng cách |

---

## Chương u0910 — Arts & Finance

### VỪA

1. **passage_u0910_06 · seg 12** — "That is the difference between profit and cash flow, and nobody at art
   school ever explained it to me."
   Lệch nhân vật: theo `characters.md` (B1, năm 4) Chloe chỉ học **lớp buổi tối** về thiết kế rồi làm tự do;
   trước đó phục vụ ở Harriet's. Không có "art school".
   Đề xuất: "…and nobody in any of my design classes ever explained it to me." · VI: "…và chưa ai trong mấy
   lớp thiết kế tôi từng học giải thích cho tôi điều đó."

2. **passage_u0910_05 · seg 17** — "…they build a buffer against sudden changes that willpower alone might
   never have produced."
   Mệnh đề quan hệ bám vào danh từ gần nhất ("sudden changes"), nên câu đọc thành *ý chí tạo ra những thay đổi
   đột ngột*. Bản VI dịch đúng theo cách hiểu sai đó: "những thay đổi đột ngột mà chỉ riêng ý chí có lẽ không
   bao giờ làm được". Ý đúng: *tấm đệm* mà ý chí một mình không tạo được.
   Đề xuất EN: "…they build a buffer against unexpected expenses, one that willpower alone might never have
   produced." · VI: "…họ tạo được một tấm đệm trước những khoản chi bất ngờ, điều mà chỉ riêng ý chí có lẽ
   không bao giờ làm được."

3. **passage_u0910_04 · seg 14** — "Sabine's work so impressed the head of his university, who recommended
   him to the founder of the city's orchestra, that he was invited to help design Boston's Symphony Hall…"
   `so … that` bị một mệnh đề quan hệ dài chen giữa, và "him"/"he" có hai người đứng trước để bám (hiệu
   trưởng, nhà sáng lập). Người học C1 dễ lạc; câu q_u0910_036 dựa vào câu này.
   Đề xuất: "So impressed was the head of his university that he recommended Sabine to the founder of the
   city's orchestra, and the young physicist was invited to help design Boston's Symphony Hall, which opened
   in 1900 and is still praised as one of the best in the world." (vẫn giữ cấu trúc đảo ngữ So + adj của bài.)

4. **passage_u0910_04 · seg 17 (VI)** + **q_u0910_037 lựa chọn A (VI)** — "make the music feel richer" →
   "khiến âm nhạc **rộng** hơn". "Richer" là *đầy đặn / giàu âm sắc*, không phải "rộng".
   Đề xuất: "khiến âm nhạc đầy đặn hơn và cuốn người nghe hơn" (sửa ở cả segment lẫn lựa chọn A).

5. **passage_u0910_06 · seg 17 (VI)** — "in a separate account that nobody is allowed to touch" → "mà **tôi
   coi là** không được đụng tới". Thêm ý chủ quan không có trong câu gốc; câu gốc là một luật chung của studio.
   Đề xuất: "vào một tài khoản riêng mà không ai được phép đụng tới."

6. **lesson.objective_i18n** — chỉ mô tả bài 1–2 ("đọc một bài phê bình … và một bản ghi nhớ…"). Bốn bài mới
   (phê bình phim, bài khoa học âm học, tóm tắt nghiên cứu, blog dòng tiền) và kỹ năng của chúng không có mặt.
   `tips` thì đã có cho bài 3–6.
   Đề xuất thêm vào cuối: "…; đọc thêm một bài phê bình phim, một bài khoa học phổ thông, một bản tóm tắt
   nghiên cứu và một bài blog trải nghiệm: nhận ra mục đích của tình huống mở đầu, câu hỏi tu từ tự trả lời,
   lập luận cân lại (however, similarly, in other words) và cặp on paper / in practice."

### NHẸ

1. **passage_u0910_03 · seg 20** — "A second story about an insurance investigator is also never finished…"
   Ngay sau "a second storm" (seg 18), "a second story" dễ đọc thành phim thứ hai. Đề xuất: "A subplot about an
   insurance investigator is also never resolved, …" (bản VI đã dịch đúng là "mạch truyện phụ").
2. **passage_u0910_06 · seg 21** — "But since we made these changes, our income has been only marginally
   higher, and yet I sleep far better…" — hai từ nối đối lập (But … and yet) trong một câu. Đề xuất: "Since we
   made these changes, our income has risen only marginally, and yet I sleep far better…"
3. **q_u0910_033 lựa chọn D** — "Outside noise would not affect his measurements…" — bài nói "when the
   building was quiet", tức tiếng ồn TRONG toà nhà. Đề xuất: "Noise in the building would not interfere with his
   measurements of how sounds faded."
4. **Đa dạng dạng câu (bài 3–6)** — 40 câu không có câu NOT/EXCEPT và không có câu tham chiếu ("What does
   'it' refer to"). u1112 có một câu NOT (q_u1112_053). Đề xuất: đổi q_u0910_044 thành dạng NOT, ví dụ
   "Which of the following is NOT given as a way mental accounting can help people?" (đáp án: "paying off
   debt faster"; nhiễu: emergency fund / self-control / sentimental value).
5. **lesson.extra_words** — "simpler", "pencil", "oven", "handwriting" quá dễ với C1 để chú nghĩa. Nếu script CEFR
   bắt buộc đưa vào thì giữ (xem CẤM SỬA); nếu không thì bỏ.
6. **q_u0910_021 lựa chọn A** — "very little, because most sequels to big hits disappoint" — lặp nguyên "very
   little" của bài, và là phương án duy nhất có vế lý do. Đề xuất: "not much, since sequels made for money tend
   to be empty".

---

## Chương u1112 — Intercultural & Ethics

### VỪA

1. **q_u1112_045** — "What problem does the writer describe in the paragraph that begins 'Who, then, is
   responsible'?" Nhiễu A "Applicants usually complain too late to change anything." gần như diễn lại seg 12
   ("by the time she thinks to ask, the decision has long been made") ⟹ bảo vệ được như "một vấn đề được mô tả
   trong đoạn". Hai phương án bảo vệ được.
   Đề xuất: đổi đề thành "What is the **main** problem the writer describes…" VÀ đổi A thành "Applicants are
   usually told exactly why a machine rejected them." (trái với bài, không còn bảo vệ được).

2. **lesson.objective_i18n** — cũng chỉ mô tả bài 1–2 ("một bài blog tự sự … và một bài quan điểm cân nhắc
   lợi hại của AI"). Bài 3–6 (ngôn ngữ học xã hội, nhân học quà tặng, thuật toán thiên lệch, thư góp ý) không có.
   Đề xuất thêm: "…; đọc thêm một bài kiến thức ngôn ngữ học, một bài nhân học phổ thông, một bài phân tích
   trách nhiệm của thuật toán và một lá thư góp ý chính thức: nhận ra chức năng ví dụ, câu mệnh lệnh + and làm
   điều kiện ngầm, đảo ngữ So + adj, loại suy, và việc trả lời trước phản bác."

3. **passage_u1112_06 · seg 19** — "During our phone-free week last April, several colleagues and I found that
   clear expectations and well-planned lessons did more for attention than any rule could compel."
   (a) "compel" thiếu tân ngữ, "did more … than any rule could compel" không đứng vững về ngữ pháp;
   (b) chính "tuần không điện thoại" là một quy định, nên câu tự mâu thuẫn — và q_u1112_059 dựa vào câu này.
   Đề xuất: "During our phone-free week last April, several colleagues and I noticed that the ban itself mattered
   less than clear expectations and well-planned lessons, which did more for attention than any rule could." ·
   VI: "…vài đồng nghiệp và tôi nhận thấy bản thân lệnh cấm ít quan trọng hơn những yêu cầu rõ ràng và bài giảng
   được chuẩn bị kỹ — chính chúng giúp học sinh tập trung hơn bất cứ quy định nào."
   (q_u1112_059 đáp án C vẫn đúng sau khi sửa.)

### NHẸ

1. **passage_u1112_06 · seg 2** — "About: the plan to install FocusTrack…" — thư/memo Mỹ dùng "Re:" hoặc
   "Subject:". Đề xuất: "Re: the plan to install FocusTrack on student laptops".
2. **passage_u1112_03 · seg 14** — "it may sound less like friendship than an insult" — thiếu song song. Đề
   xuất: "…it may sound less like friendship than like an insult." (q_u1112_026 trích cụm này — sửa cả đề.)
3. **passage_u1112_03 · seg 21** — "Linguistic skill at this level…" — "this level" không có tiền ngữ rõ (đoạn
   trước nói về cuộc sống đa xuất thân, không nói về cấp độ). Đề xuất: "Linguistic skill of this kind is not so
   much about grammar as about tact…" (sửa kèm đề q_u1112_029 "at this level" → "of this kind"; VI "ở mức này" →
   "kiểu này").
4. **passage_u1112_03 · seg 22 (VI)** — "try not to worry" → "đừng lo lắng" (mất sắc thái "cố"). Đề xuất: "cố
   đừng lo lắng quá."
5. **q_u1112_026 lựa chọn A (VI)** — "Có thể trông như bạn đang giễu cợt, **làm tổn thương** người kia" — thêm ý
   không có ở bản EN. Đề xuất: "Có thể trông như bạn đang giễu cợt người kia."
6. **q_u1112_028 lựa chọn C** — "full of respect" hơi quá so với bài ("by no means being rude; she is telling you
   something about who she is"). Đề xuất: "respectful: she sees it as an expression of identity".
7. **lesson.phrases "in effect" = "trên thực tế"** — sát hơn là "về thực chất" (cũng sửa VI seg 4 bài _05 nếu
   muốn thống nhất). Nhân vật: tuần không điện thoại "last April" của Mitchell chưa có trong nhật ký sự kiện
   `characters.md` (dòng 178) — nên ghi thêm để chương sau không mâu thuẫn.

---

## Đã kiểm, KHÔNG có lỗi

- Nhân vật u1112: Lydia Park (tổ tiếng Anh Westview High), Mitchell Carter (tổ Lịch sử, "nhiều năm") khớp
  `characters.md`; thời điểm thư (Ban quyết tháng 11) khớp nhật ký.
- Nhân vật u0910_06: Bennett Studio mở tháng 5, Ruby + Sam, hoá đơn tháng 6 hơn 11.000 đô, 4 quy tắc, Leah
  giúp — khớp nhật ký dòng 178 (trừ chi tiết "art school" ở trên).
- Vùng cấm: bài thuật toán thiên lệch giới tính viết ở góc công nghệ / trách nhiệm tổ chức, không chạm chính
  sách nhà nước; bài quà tặng nhắc "altruism" ở góc tâm lý / nhân học, không tôn giáo. Bài _03 u1112 không khái
  quát hoá dân tộc (nói phương ngữ vùng, "nhóm" chung).
- Giải thích (explanation_i18n) đều trích đúng nguyên văn và khớp đáp án ở cả 80 câu.

---

## CẤM SỬA (dễ bị sửa nhầm, thật ra đúng)

1. **passage_u0910_06 · seg 8** "four **increasingly polite** emails" — mỉa có chủ ý (lịch sự đến mức gắt), giọng
   Chloe. Đừng đổi thành "increasingly firm".
2. **passage_u0910_03 · seg 4 VI "nữ thuyền trưởng"** cho "a ferry captain" — đúng (Hazel là nữ), giúp người đọc
   VI theo dõi đại từ "cô" phía sau.
3. **q_u0910_029** — đáp án A ("feels as though parts are missing"), KHÔNG phải B ("actually removed"): "as if +
   quá khứ hoàn thành" chỉ là cảm giác. Đúng, đừng đảo.
4. **q_u0910_060** đáp án A "matters **as much as** doing good work" — khớp "by all means work on your portfolio …
   but learn to love the boring spreadsheet **as well**". Đừng đổi thành "more than".
5. **passage_u0910_04 · seg 9** "carried hundreds of seat cushions in and out … at night" — chi tiết lịch sử thật
   của Sabine, không phải bịa.
6. **passage_u1112_04 · seg 15** (một viên kẹo → boa nhỉnh; quay lại đưa viên thứ hai → boa rõ hơn) — đúng kết quả
   nghiên cứu gốc.
7. **passage_u1112_05 · seg 3–6** — không nêu tên công ty ("one of the world's biggest online retailers") là cố ý
   (nhân vật / công ty trong bài là hư cấu hoặc ẩn danh); đừng thêm tên.
8. **passage_u1112_05 · seg 15** "One is being open" — có thể cố ý tránh "transparency" (ngoài phạm vi từ); nếu đổi
   phải chạy lại `check_cefr_level.py`.
9. **Câu mệnh lệnh + and** (u1112_03 seg 13–14 "Speak too slowly…, and…", "Imitate…, and…") — điều kiện ngầm cố ý,
   có tip riêng. Đừng viết lại thành "If…".
10. **extra_words dễ** (simpler, pencil, oven…) — nếu do `check_cefr_level.py` đòi (từ ngoài phạm vi phải = 0) thì
    phải giữ; chỉ bỏ sau khi chạy lại script thấy sạch.
11. **Vị trí đáp án** — khi sửa lỗi "đáp án dài nhất", chỉ đổi CHỮ, không đổi `is_correct` / thứ tự (giải mù đã
    khớp 400/400, phân bố A–D đang đều).
