# Sách 21 · T11. 基本情報技術者試験 prep + Lin Wei mentor (FE試験準備)

> **Mục tiêu:** 2-3/2027. Đại + Lin Wei + Yamato chuẩn bị thi 基本情報技術者試験 (FE) — IPA quốc gia certificate. Đại thi 4/2027 (đầu năm 2). Lin Wei đã có FE từ TQ. Yamato sẽ thi cùng Đại. FE = 科目A 60問/90分 + 科目B 20問/100分. Pass = 60% mỗi 科目.

## Bối cảnh

- 基本情報技術者 (FE) = Fundamental Information Technology Engineer Examination, do IPA (Information-technology Promotion Agency) cấp
- Format từ 4/2023: CBT (Computer-Based Testing) cả 科目A + 科目B
- 受験料: ¥7,500
- Pass rate: ~25-30% (national)
- Đối tượng: SV CNTT năm 1-2

---

## Scene 1 — Lin Wei mentor session · 1/2/2027 thứ 7

| Speaker | Lời thoại |
|---|---|
| Lin Wei | (tiếng Anh, xen Nhật) Đại! Yamato! 俺、China<ruby>版<rt>はん</rt></ruby>のFEはもう<ruby>持<rt>も</rt></ruby>ってる — syllabus is 95% same as Japan. I'll mentor you both, OK?<br>*(Tớ có chứng chỉ FE bản Trung Quốc rồi — chương trình giống Nhật tới 95%. Để tớ kèm hai cậu nhé.)* |
| Đại | <ruby>助<rt>たす</rt></ruby>かる！<ruby>申込<rt>もうしこ</rt></ruby>み<ruby>済<rt>ず</rt></ruby>み：<ruby>4月<rt>しがつ</rt></ruby><ruby>15日<rt>じゅうごにち</rt></ruby>のCBTで<ruby>受<rt>う</rt></ruby>ける。<br>*(Cứu tinh! Tớ đã đăng ký xong: thi CBT ngày 15/4.)* |
| Yamato | <ruby>同<rt>おな</rt></ruby>じ<ruby>日<rt>ひ</rt></ruby>だ！<ruby>場所<rt>ばしょ</rt></ruby>はプロメトリック<ruby>梅田<rt>うめだ</rt></ruby>センター。<br>*(Cùng ngày luôn! Địa điểm là trung tâm Prometric Umeda.)* |
| Lin Wei | (tiếng Anh) FE syllabus has 8 fields, listen up:<br>*(Chương trình FE có 8 lĩnh vực, nghe đây:)* |
| Lin Wei | 1：<ruby>基礎理論<rt>きそりろん</rt></ruby>（math, logic, algorithm）<br>*(1: Lý thuyết cơ sở — toán, logic, thuật toán.)* |
| Lin Wei | 2：コンピュータシステム（CPU, memory, OS）<br>*(2: Hệ thống máy tính — CPU, bộ nhớ, hệ điều hành.)* |
| Lin Wei | 3：<ruby>技術要素<rt>ぎじゅつようそ</rt></ruby>（DB, network, security）<br>*(3: Yếu tố kỹ thuật — CSDL, mạng, bảo mật.)* |
| Lin Wei | 4：<ruby>開発技術<rt>かいはつぎじゅつ</rt></ruby>（SDLC, design, test）<br>*(4: Kỹ thuật phát triển — vòng đời phần mềm, thiết kế, kiểm thử.)* |
| Lin Wei | 5：プロジェクトマネジメント（PM）<br>*(5: Quản trị dự án.)* |
| Lin Wei | 6：サービスマネジメント（ITIL）<br>*(6: Quản trị dịch vụ.)* |
| Lin Wei | 7：<ruby>システム戦略<rt>システムせんりゃく</rt></ruby>（BPR, ERP）<br>*(7: Chiến lược hệ thống.)* |
| Lin Wei | 8：<ruby>経営戦略<rt>けいえいせんりゃく</rt></ruby>＋<ruby>企業<rt>きぎょう</rt></ruby><ruby>法務<rt>ほうむ</rt></ruby>（basic biz）<br>*(8: Chiến lược quản trị và pháp luật doanh nghiệp.)* |

---

## Scene 2 — 科目B (algorithm) deep dive · 8/2

| Speaker | Lời thoại |
|---|---|
| Lin Wei | (tiếng Anh xen Nhật) 科目Bはalgorithm＋pseudocode、20 questions in 100 minutes.<br>*(Môn B là thuật toán và mã giả, 20 câu trong 100 phút.)* |
| Lin Wei | (câu mẫu) "<ruby>配列<rt>はいれつ</rt></ruby>A[1..n]の<ruby>合計<rt>ごうけい</rt></ruby>を<ruby>計算<rt>けいさん</rt></ruby>するアルゴリズムの<ruby>計算量<rt>けいさんりょう</rt></ruby>は？"<br>*(Độ phức tạp của thuật toán tính tổng mảng A[1..n] là bao nhiêu?)* |
| Lin Wei | A. O(1)　B. O(log n)　C. O(n)　D. O(n²)<br> |
| Đại | Đáp án C. O(n).<br> |
| Lin Wei | <ruby>正解<rt>せいかい</rt></ruby>！<ruby>典型<rt>てんけい</rt></ruby><ruby>問題<rt>もんだい</rt></ruby>だ。<br>*(Đúng rồi! Đây là câu kinh điển.)* |
| Yamato | (câu mẫu thứ 2) Mã giả:<br>```<br>function fib(n):<br>    if n <= 1: return n<br>    return fib(n-1) + fib(n-2)<br>```<br>Độ phức tạp?<br> |
| Đại | O(2ⁿ) — đệ quy không có memoization.<br> |
| Lin Wei | <ruby>正解<rt>せいかい</rt></ruby>！Memoizationを<ruby>使<rt>つか</rt></ruby>えばO(n)になる。<br>*(Đúng! Dùng memoization sẽ về O(n).)* |

---

## Scene 3 — 科目A 暗記 (memorization) · 15/2

| Speaker | Lời thoại |
|---|---|
| Lin Wei | (tiếng Anh xen Nhật) 科目A is wide breadth, less depth. 60 questions in 90 minutes — about 1.5 phút mỗi câu.<br>*(Môn A rộng nhưng không sâu. 60 câu trong 90 phút, tức khoảng 1,5 phút mỗi câu.)* |
| Lin Wei | <ruby>暗記<rt>あんき</rt></ruby><ruby>必須<rt>ひっす</rt></ruby>のリスト：<br>*(Danh sách bắt buộc phải học thuộc:)* |
| Lin Wei | - Bảy tầng mô hình OSI (physical, data, network, transport, session, presentation, application)<br> |
| Lin Wei | - Khác biệt TCP với UDP<br> |
| Lin Wei | - Cú pháp SQL (SELECT, JOIN, GROUP BY, HAVING)<br> |
| Lin Wei | - Chuẩn hoá CSDL: 1NF / 2NF / 3NF / BCNF<br> |
| Lin Wei | - Mã hoá: đối xứng (AES) so với bất đối xứng (RSA)<br> |
| Lin Wei | - SDLC: waterfall, agile, spiral, V-model<br> |
| Lin Wei | - Quản trị dự án: WBS, Gantt, critical path, PERT<br> |
| Đại | (thẻ Anki) <ruby>俺<rt>おれ</rt></ruby>はもう500<ruby>枚<rt>まい</rt></ruby><ruby>作<rt>つく</rt></ruby>った。<ruby>毎日<rt>まいにち</rt></ruby>50<ruby>枚<rt>まい</rt></ruby>ずつレビューしてる。<br>*(Tớ đã tạo 500 thẻ rồi. Mỗi ngày ôn lại 50 thẻ.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>は<ruby>過去問<rt>かこもん</rt></ruby>を5<ruby>年分<rt>ねんぶん</rt></ruby><ruby>解<rt>と</rt></ruby>いてる。<ruby>過去問<rt>かこもん</rt></ruby>道場（kakomon-doujou.com）が<ruby>無料<rt>むりょう</rt></ruby>でいいよ。<br>*(Tớ thì cày đề 5 năm gần nhất. Trang Kakomon-doujou miễn phí, dùng tốt lắm.)* |

---

## Scene 4 — Mock test 1 · 1/3

| Speaker | Lời thoại |
|---|---|
| Đại | (kakomon-doujou) Đề thử 1: 科目A 42/60 (70%) ✓. 科目B 13/20 (65%) ✓.<br>*(Đề thử 1.)* |
| Yamato | <ruby>俺<rt>おれ</rt></ruby>は科目A 48（80％）、科目B 16（80％）。けっこう<ruby>強<rt>つよ</rt></ruby>いな。<br>*(Tớ được A 80% và B 80%. Cũng khá đấy chứ.)* |
| Lin Wei | (tiếng Anh) Both pass! But keep it up — actual exam is harder than mocks, OK?<br>*(Cả hai đều đỗ! Nhưng phải duy trì — thi thật khó hơn đề thử nhiều đấy.)* |
| Đại | (VN, độc thoại) 70% và 65% sát ngưỡng đỗ 60%. Cần phải cải thiện.<br>*(Sát ngưỡng đỗ.)* |
| Đại | (VN) Tập trung vào điểm yếu: môn B (mã giả thuật toán bằng tiếng Nhật).<br>*(Tập trung môn B.)* |

---

## Scene 5 — Linh-Anh em gái LINE · 5/3

| Speaker | Lời thoại |
|---|---|
| Linh-Anh | (LINE VN) Anh Đại ơi! Em vừa được Toyota Boshoku khen vì dùng pandas tự động hoá báo cáo tháng. Cảm ơn anh đã kèm em từ 8 tháng trước!<br>*(Sếp khen.)* |
| Đại | (VN) Hay quá em! Em áp dụng được vào công việc thực tế rồi đấy. Còn hơn anh ở Osaka chỉ tham gia hackathon.<br>*(Áp dụng thực tế.)* |
| Linh-Anh | (VN) Anh đang ôn thi gì thế?<br>*(Ôn gì?)* |
| Đại | (VN) FE — 基本情報技術者試験. Anh thi 15/4.<br>*(FE.)* |
| Linh-Anh | (VN) Chứng chỉ CNTT quốc gia Nhật à? Nộp lên Toyota có chứng chỉ này còn được giảm thuế.<br>*(Lợi ích chứng chỉ.)* |
| Đại | (VN) Đúng rồi. Em đăng ký thi FE qua IPA nhé, anh sẽ kèm em.<br>*(Kèm em.)* |
| Linh-Anh | (VN) Vâng anh! Em dự định thi vào tháng 9/2027.<br>*(9/2027.)* |

---

## Scene 6 — Final week prep · 8-14/4

| Speaker | Lời thoại |
|---|---|
| Đại | (Đề thử cuối số 5) 科目A 53/60 (88%), 科目B 17/20 (85%).<br>*(Đề thử số 5.)* |
| Yamato | (đề thử cuối) 科目A 55/60 (92%), 科目B 18/20 (90%).<br>*(Yamato.)* |
| Lin Wei | (tiếng Anh) Both ready! Sleep well on the 14th, OK?<br>*(Cả hai sẵn sàng rồi! Tối 14/4 ngủ cho ngon nhé.)* |
| Đại | (LINE Mai) Em ơi! Mai 15/4 anh thi FE rồi nè.<br>*(Mai thi.)* |
| Mai | (VN) Em chúc anh thi đỗ! Một tháng nữa em sang Osaka với anh.<br>*(Một tháng.)* |

---

## Scene 7 — 15/4 thi FE · 9:30 Prometric Umeda

| Speaker | Lời thoại |
|---|---|
| Đại | (VN, độc thoại) Prometric Umeda — đúng nơi mình thi EJU một năm trước, hồi sách 20. Như đối chiếu lại quá khứ.<br>*(Đúng nơi cũ.)* |
| Giám thị | <ruby>科目<rt>かもく</rt></ruby>A、60<ruby>問<rt>もん</rt></ruby>90<ruby>分<rt>ふん</rt></ruby>、それでは<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Môn A, 60 câu trong 90 phút, mời các thí sinh bắt đầu.)* |
| Đại | (CBT) Q1: hệ <ruby>2進数<rt>にしんすう</rt></ruby> 1010 = ? → 10. ✓<br> |
| Đại | (Q15) Tầng 4 mô hình OSI là gì? → Transport. ✓<br> |
| Đại | (Q35) Số ổ đĩa tối thiểu cho RAID 5? → 3. ✓<br> |
| Đại | (Q55) Critical Path trong PM là gì? → Đường có tổng thời lượng dài nhất. ✓<br> |
| Đại | (90 phút sau) <ruby>提出<rt>ていしゅつ</rt></ruby>！<br>*(Nộp bài!)* |
| Giám thị | <ruby>科目<rt>かもく</rt></ruby>B、20<ruby>問<rt>もん</rt></ruby>100<ruby>分<rt>ふん</rt></ruby>、それでは<ruby>始<rt>はじ</rt></ruby>めてください。<br>*(Môn B, 20 câu trong 100 phút, mời các thí sinh bắt đầu.)* |
| Đại | (Q5) Truy vết mã giả phân hoạch của Quicksort → có đáp án ✓<br> |
| Đại | (Q15) Mã giả chèn vào cây tìm kiếm nhị phân → ✓<br> |
| Đại | (Q20 — câu cuối) Quy hoạch động bài toán cái túi (knapsack) → hơi khó nhưng làm được<br> |
| Đại | (100 phút sau) <ruby>終<rt>お</rt></ruby>わった！<br>*(Xong rồi!)* |

---

## Scene 8 — Đêm + KQ · 23:00

| Speaker | Lời thoại |
|---|---|
| Đại | (Kết quả CBT hiện ngay) <br>科目A: 51/60 (85%) ✓<br>科目B: 16/20 (80%) ✓<br><br>**合格!**<br>*(ĐỖ!)* |
| Đại | (LINE Yamato) <ruby>俺<rt>おれ</rt></ruby>、<ruby>合格<rt>ごうかく</rt></ruby>した！A51、B16。<br>*(Tớ đỗ rồi! A 51, B 16.)* |
| Yamato | (LINE) <ruby>俺<rt>おれ</rt></ruby>も<ruby>合格<rt>ごうかく</rt></ruby>！A56、B18。<ruby>二人<rt>ふたり</rt></ruby><ruby>共<rt>とも</rt></ruby><ruby>合格<rt>ごうかく</rt></ruby>だな！<br>*(Tớ cũng đỗ! A 56, B 18. Hai đứa cùng đỗ!)* |
| Lin Wei | (LINE) Congrats both! Now let's prep AP 応用情報 cho năm sau nhé.<br>*(Chúc mừng cả hai! Sang năm cùng ôn AP 応用情報 luôn nhé.)* |
| Đại | (LINE Mai) Em ơi! Anh đỗ FE rồi!<br>*(Đỗ FE!)* |
| Mai | (VN) Wow! Em tự hào quá! Hai tuần nữa em sang với anh nha!<br>*(Hai tuần!)* |
| Đại | (VN, nhật ký) 15/4/2027. ĐỖ FE. 科目A 51/60 (85%), 科目B 16/20 (80%).<br>*(ĐỖ FE.)* |
| Đại | (VN) Lin Wei kèm cặp suốt ba tháng — quý giá vô cùng. Yamato cũng đỗ. Cả nhóm cùng thắng.<br>*(Cả nhóm.)* |
| Đại | (VN) Chứng chỉ quốc gia đầu tiên! Sẽ gắn huy hiệu lên trang GitHub. CV thêm phần đẹp mắt.<br>*(Chứng chỉ.)* |
| Đại | (VN) Hai tuần nữa Mai sang. Căn hộ 2DK ở Senri-chuo. Cuộc sống mới.<br>*(Mai sang.)* |

---

## Vocab tóm tắt

| Từ | Kana | Nghĩa |
|---|---|---|
| 基本情報技術者試験 | きほんじょうほうぎじゅつしゃしけん | FE — Fundamental IT Engineer Exam |
| FE | エフイー | Tên ngắn |
| IPA | アイピーエー | Information-technology Promotion Agency |
| CBT | シービーティー | Computer-Based Testing |
| 科目A | かもくエー | Subject A — wide breadth (60Q/90min) |
| 科目B | かもくビー | Subject B — algorithm (20Q/100min) |
| 過去問 | かこもん | Đề năm cũ |
| 過去問道場 | かこもんどうじょう | Site free luyện đề FE |
| Anki | アンキ | Flashcard SRS app |
| OSI 7 layers | オーエスアイ | OSI model |
| TCP/UDP | ティーシーピー/ユーディーピー | Transport protocols |
| Normalization | ノーマライゼーション | DB normalization |
| 1NF/2NF/3NF/BCNF | エヌエフ | Normal forms |
| WBS | ダブリュビーエス | Work Breakdown Structure |
| Critical Path | クリティカルパス | PM critical path |

## Bí quyết chương

- **Lin Wei mentor**: TQ FE share 95% syllabus với JP — realistic shortcut cho cohort.
- **Anki 500 cards + 過去問 5 năm**: Real prep strategy cho FE.
- **Mirror Prometric Umeda**: Same venue EJU sách 20 — narrative continuity.
- **Linh-Anh callback**: Pandas Toyota Boshoku đã tăng lương — Đại tutor có ROI.
- **CBT immediate result**: Format mới từ 2023 — biết KQ ngay.
- **Closure year 1**: FE PASS = symbolic milestone trước Mai sang.

> *"FE PASS! 科目A 85%, 科目B 80%. Cohort win với Yamato. Lin Wei mentor invaluable. 2 tuần nữa Mai sang."*
