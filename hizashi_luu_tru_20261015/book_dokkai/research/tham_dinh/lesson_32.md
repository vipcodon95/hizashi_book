# part_04/lesson_32.md — Mệnh đề thời gian & Trình tự hành động

## Đánh giá chung
- **Mức tái dùng: VỪA.** Bộ khung (nhóm tín hiệu, câu ví dụ, bảng đọc theo dòng có 🔒) dùng lại được gần nguyên. Nhưng có vài giải thích ngữ pháp bị tuyệt đối hóa hoặc sai, bản dịch chỉ có một loại, và bước "đóng gói" đang gán vai trò trợ từ quá sớm.
- **Điểm mạnh dùng lại được:**
  - Câu ví dụ hầu hết đúng và tự nhiên, độ khó đều. Ví dụ: mục 2 (寝る前に…, 来る前に…), mục 3 (終わった後に…), mục 5 (来るまで…), mục 10 ví dụ 4 (ところに).
  - Phần mở đầu so sánh vị trí tín hiệu Việt/Nhật (khối code "Tiếng Việt: [Khi]… / Tiếng Nhật: 日本に行く[とき]") rõ và có thể giữ.
  - Cách chia khối bằng dấu `/` trong khung code khớp với kỹ thuật chia khối của sách mới.
  - Mục 11 dùng liên từ đầu câu (まず, 次に, それから, 最後に) làm tín hiệu đầu, đúng khung ba tín hiệu.
  - Bảng "Dự đoán tổng hợp" cuối bài là khung tốt, cần sửa vài dòng.
  - Ba cặp so sánh (てから/た後で, 間に/ながら, とき/ところ) chọn đúng cặp dễ lẫn.
- **Vấn đề lớn nhất:**
  - Mọi ví dụ chỉ có một dòng "Dịch". Không có nhãn "dịch theo khối" / "dịch tự nhiên", và một số bản dịch gượng.
  - Bước 🔒 gán vai trò ngay tại trợ từ ("に cho biết điểm đến", "が cho biết chủ ngữ"). Điều này trái nguyên tắc "để ngỏ vai trò cho đến đuôi câu", và chính bài cũng có câu に mang vai trò khác.
  - Một số khẳng định ngữ pháp quá mạnh hoặc sai: てから "nối tiếp ngay", 間に "hai chủ ngữ khác nhau", Vる = "sắp", mệnh đề thời gian "luôn" đứng trước.

## Phát hiện
| # | Loại | Mức | Vị trí | Trích nguyên văn | Vấn đề | Sửa thế nào |
|---|------|-----|--------|------------------|--------|-------------|
| 1 | 2 | nặng | Toàn bài (~25 ví dụ) | `**Dịch** \| \| **Khi đi Nhật, xin đừng quên hộ chiếu.**` | Mỗi ví dụ chỉ có một bản dịch, không nhãn. Không có "dịch theo khối" (bám thứ tự Nhật) tách khỏi "dịch tự nhiên". | Mỗi ví dụ thêm hai dòng có nhãn. Ví dụ: "Dịch theo khối: Nhật-đến / khi-đi / hộ chiếu / đừng quên" và "Dịch tự nhiên: …". |
| 2 | 3 | nặng | Các bảng "Đọc theo dòng" (~20 lần) | `日本に \| 🔒 **đóng gói:** "Nhật" → に cho biết điểm đến → dự đoán: sắp có hành động di chuyển`; `仕事が \| … が cho biết chủ ngữ (mệnh đề phụ)` | Gán vai trò ngay tại trợ từ. Ngay trong bài, に ở 日本に**いる**間に là "nơi ở", ở 友達**に**電話 là "đối tượng", ở 電車**に**乗る là "vật được lên". が cũng có thể là đối tượng với 分かる/できる. Trái nguyên tắc "để ngỏ vai trò cho đến đuôi câu". | Bước 🔒 chỉ gói danh từ + trợ từ ("Nhật + に"). Ghi vai trò là "chờ động từ quyết định", rồi xác nhận ở đuôi câu. |
| 3 | 1 | vừa | Mục 1, bảng Vるとき vs Vたとき | `V**る**とき \| Khi **sắp** làm ~`; `行く**とき** = khi **sắp** đi → hành động chính xảy ra **trước khi** đến Nhật` | Tuyệt đối hóa. Vるとき không luôn là "sắp". Với động từ trạng thái, thói quen hoặc đồng thời thì không phải (日本にいるとき, 本を読むとき、眼鏡をかけます). Cặp 行く/行った chỉ đúng với động từ chuyển động. | Nói rõ đây là quan hệ thời gian tương đối giữa hai mệnh đề, chủ yếu với động từ chuyển động/kết thúc. Thêm một ví dụ đồng thời hoặc trạng thái để đánh dấu ngoại lệ. |
| 4 | 1 | vừa | Mục 1, bảng đầu | `A**な**なとki` (nguyên văn: `A**な**なとき`) | Lỗi gõ: thừa な, phải là Aなとき. | Sửa thành "Aなとき". |
| 5 | 1 | vừa | Mục 8, đoạn Sắc thái và bảng So sánh てから vs た後で (lặp ở bảng cuối) | `hai hành động nối tiếp nhau ngay`; `Hai hành động gần nhau` | Sai. てから không hàm ý "ngay": 日本に来てから三年になります, nhưng 三年 sau đó không "gần nhau". Ngược lại 後で không hàm ý có khoảng cách. Khác biệt thật là てから nhấn thứ tự bắt buộc/điểm mốc. | Bỏ tiêu chí "Khoảng cách". Giữ ý "nhấn thứ tự/điểm mốc" và thêm ví dụ てから chỉ mốc thời gian dài. |
| 6 | 2 | nghi ngờ | Mục "So sánh 1" | `手を / 洗ってから / 食べてください。 → rửa tay xong MỚI được ăn` | 食べてください chỉ là "hãy ăn". "Mới được ăn" là nghĩa thêm vào (cấm trước khi rửa). | Dịch tự nhiên: "Hãy rửa tay rồi ăn." |
| 7 | 1 | vừa | Mục 4, ví dụ 1 và ví dụ 2 | `Hai chủ ngữ khác nhau -- đây là đặc điểm quan trọng của 間に.` | Tuyệt đối hóa. Ví dụ 2 (日本にいる間に…登りたいです) cùng chủ ngữ "tôi". Bảng so sánh phía dưới chỉ nói "có thể khác", nên bài tự mâu thuẫn. | Sửa thành "chủ ngữ có thể khác (khác với ながら, vốn bắt buộc cùng chủ ngữ)". |
| 8 | 1 | nhẹ | Mục 4, ví dụ 2 và bảng Dự đoán | `いる間に \| Vている + **間に**`; `Vている + **間に**` | いる là động từ nguyên dạng (TTT), không phải Vている. Bảng chỉ nêu Vている và bỏ cả Vる, Aい, N の. | Ghi "TTT + 間に" hoặc tách: Vている/Vる/Aい/Nの. |
| 9 | 3 | nhẹ | Mục 4, bảng 間 vs 間に | `**間** (không có に) \| Suốt khoảng thời gian đó` | Dòng 間 (không に) được định nghĩa và có trong bảng dự đoán nhưng không có ví dụ nào. | Thêm một câu ví dụ 間 (kiểu 子どもが寝ている間、ずっと本を読んでいた). |
| 10 | 1 | vừa | Mục 6, bảng dạng trước うちに | `Vているうちに \| 明るいうちに = trong khi trời còn sáng` | Ví dụ không khớp cột: 明るい là Aい, không phải Vている. うちに với Vている còn có nghĩa khác ("làm mãi thì…": 話しているうちに). | Đổi hàng thành "Aい: 明るいうちに". Nếu giữ Vているうちに, dùng ví dụ đúng loại và nêu nghĩa riêng. |
| 11 | 1 | nhẹ | Mục 6, ví dụ 2 | `忘れないうちに / メモを / しておきます。` | Chấp nhận được nhưng hơi lạ. Tự nhiên hơn là メモしておきます hoặc メモを取っておきます. | Nghi ngờ: nên thay bằng メモを取っておきます. |
| 12 | 2 | vừa | Mục 6 ví dụ 2; Mục 7 ví dụ 2; Mục 10 ví dụ 1, 3 | `Trong khi chưa quên, tôi ghi chú lại sẵn.`; `Bộ phim này, mỗi khi xem đều xúc động.`; `Tôi đang sắp ra ngoài (đúng lúc này).`; `Tôi vừa mới về đến (đúng lúc này).` | Dịch gượng, lẫn dịch theo khối với tự nhiên. "Đang sắp" không tự nhiên. Ngoặc "(đúng lúc này)" là chú giải chen vào bản dịch. | Dịch tự nhiên: "Tranh thủ lúc chưa quên, tôi ghi lại."; "Phim này lần nào xem cũng xúc động."; "Tôi sắp ra ngoài đây."; "Tôi vừa về đến nơi." Phần "đúng lúc này" chuyển sang ghi chú. |
| 13 | 1 | nhẹ | Mục 9, ví dụ 2, bước 5 | `電車に \| … に cho biết điểm đến/phương tiện` | に ở 電車に乗る không phải "phương tiện" (phương tiện là で). Tên vai trò sai. | Ghi "に: vật được lên (đích của hành động 乗る)" và để ngỏ cho đến 乗りました. |
| 14 | 1 | nhẹ | Mục 10 (ví dụ 4) và bảng Dự đoán | `**ところ** + に → … ところに cho biết: sự kiện bất ngờ ở phía sau` | Ví dụ ところに có trong bài nhưng không có trong bảng ba dạng và không có hàng trong bảng dự đoán. Người học không biết ところに/ところへ/ところを là mẫu riêng. | Thêm một đoạn ngắn về ところに vào mục 10 và một hàng vào bảng dự đoán. |
| 15 | 1 | nghi ngờ | Mục 3, ghi chú | `後 (không có で/に) thường dùng trong văn viết.`; `後で và 後に gần như giống nhau.` | "Thường dùng trong văn viết" khó đứng vững: 食べた後、… rất phổ biến cả trong nói. 後で và 後に cũng có khác biệt (後で có thể đứng riêng với nghĩa "lát nữa"). | Nên kiểm với từ điển ngữ pháp, rồi nêu chính xác hoặc bỏ. |
| 16 | 1 | nghi ngờ | Mục 11, bảng liên từ | `最初に \| Đầu tiên \| Bước đầu tiên (trang trọng hơn まず)` | Khẳng định "trang trọng hơn" không chắc. 最初に và まず khác nhau chủ yếu ở cách dùng, không rõ là khác độ trang trọng. | Bỏ "trang trọng hơn", hoặc kiểm lại. |
| 17 | 5 | nhẹ | Phần mở đầu và "Nguyên tắc vàng" | `Tiếng Nhật đặt mệnh đề thời gian **TRƯỚC** mệnh đề chính -- giống tiếng Việt ở điểm này`; `Mệnh đề thời gian luôn đi TRƯỚC hành động chính.` | Tuyệt đối hóa. Tiếng Việt cũng đặt sau ("Tôi mua quà khi đi Nhật"). Tiếng Nhật cũng có đảo vị trí trong văn nói. Ngoài ra "Nguyên tắc vàng" là cách gọi quảng cáo. | Dùng "thường đặt trước" và bỏ nhãn "vàng". |
| 18 | 5 | nghi ngờ | Toàn bài (~20 lần, hầu hết bước 2) | `giải phóng bộ nhớ` | Cụm này ngầm giả định mô hình bộ nhớ làm việc bị "đầy". Gần với diễn giải "tràn/sụp" đã bị bác, dù không có con số. Câu cũng viết như hành động mà não tự làm. | Thay bằng cách nói trung tính: "khối đã đóng gói, chuyển sang khối kế". |
| 19 | 3 | vừa | Toàn bài | (không có) | Không nêu mệnh đề trước とき/うちに/間/たびに/前に phải dùng TTT. Đây là tín hiệu giữa quan trọng nhất của nhóm mẫu này. | Thêm một dòng ở đầu bài và vào bảng dự đoán. |
| 20 | 3 | nhẹ | Mục 1, 2, 3, 7 | `Vる + 前に`; `V**た** + 後で/後に/後`; `Vる + たびに` | Chỉ nêu cấu trúc với V. Thiếu N + の前に/後で, Nのたびに, Aなうちに. | Thêm một dòng "N + の + 前に/後で" vào bảng cấu trúc. |
| 21 | 6 | vừa | Mục 8 và mục 4 so với phần "BẢNG SO SÁNH QUAN TRỌNG" | `### So sánh てから vs た後で` (có hai lần) và `### So sánh 間に vs ながら` (có hai lần) | Hai bảng so sánh lặp gần nguyên với cùng ví dụ. Dư, dễ lệch số liệu sau này (như lỗi #5). | Giữ một nơi (ưu tiên phần cuối), mục lẻ chỉ tham chiếu. |
| 22 | 6 | nghi ngờ | Mục 9 | `**Nhắc lại từ bài 16:** Thể て nối các hành động theo trình tự thời gian.` | Tham chiếu chéo bài 16. Không kiểm được trong bài này, cần xác nhận đúng số bài khi đánh số lại. | Kiểm lại số bài. |
| 23 | 6 | nhẹ | Mục 10 so với mục 1 | `今 / レポートを / 書いている / ところです。` so với `行くとき` | Chia khối không nhất quán. Với とき/前に thì động từ + tín hiệu dính một khối (行くとき), với ところ thì tách (書いている / ところです). | Chọn một quy ước, nêu rõ lý do (ところ ở cuối câu là tín hiệu cuối). |
| 24 | 6 | nhẹ | Tiêu đề "NHÓM B" | `# NHÓM B: Trình tự hành động` (chứa mục 10 ところ) | ところ không phải trình tự hành động nên đặt nhóm lệch. | Chuyển ところ sang nhóm A hoặc đổi tên nhóm. |
| 25 | 4 | nhẹ | Ví dụ có câu yêu cầu/đề nghị | `chủ ngữ ẩn: **bạn** (câu yêu cầu)` (~3 lần), `chủ ngữ ẩn: **chúng ta**` (mục 5) | Dù đây là gán vai, vẫn dùng đại từ bị cấm. | Dùng "người nghe" hoặc "người nói + người nghe". |
| 26 | 4 | nhẹ | Toàn bài | `> **So sánh quan trọng:**`; `> **Quy tắc bắt buộc:**`; `⚠️ **Lỗi thường gặp:**`; `**Mẹo nhớ**` | Ô blockquote chen ngang kiểu "> Hóa ra:" bị cấm. Nhãn "quan trọng", "bắt buộc" nặng giọng quảng cáo. | Chuyển thành đoạn văn thường hoặc bảng. Dùng giọng trung tính. |
| 27 | 6 | nhẹ | Toàn bài | `trạng từ → "thường"` | Sách dùng "phó từ" theo khung tín hiệu đầu. Ở đây dùng "trạng từ". | Thống nhất thuật ngữ "phó từ". |
| 28 | 1 | nghi ngờ | Toàn bài | (không có furigana) | Kanji khó như 暇, 寂しい, 発見, 経験, 鍋, 塩, 切符, お土産 không có cách đọc. Nếu sách thiết kế có furigana ở nơi khác thì bài này cần đồng bộ. | Kiểm lại quy ước furigana của sách mới. |

## Ví dụ tiếng Nhật nên giữ
- 寝る前に歯を磨きます。
- 日本に来る前に、少し日本語を勉強しました。
- 仕事が終わった後に友達と飲みに行きました。
- 子どもが寝ている間に掃除をしました。
- バスが来るまでここで待ちましょう。
- 若いうちにいろいろな経験をしたほうがいいです。
- 友達に電話しようとしたところに友達から電話が来ました。
- 日本に行くたびに新しい発見があります。

## Ghi chú cho người viết lại
- **Tín hiệu trọng tâm:** tín hiệu giữa là TTT + tín hiệu thời gian (とき, 前に, 後で, 間に, うちに, たびに). Tín hiệu đầu là まず, 次に, それから, 最後に. Tín hiệu cuối là ところだ ba dạng. Nên nêu rõ "TTT trước tín hiệu" làm quy tắc nhận diện chính (#19).
- **Thêm:** hai loại bản dịch có nhãn (#1); một ví dụ đối chứng cho Vるとき (đồng thời/trạng thái, #3); ví dụ 間 không に (#9); đoạn ngắn về ところに (#14); dòng N + の cho 前に/後で/たびに (#20).
- **Sửa phương pháp:** ở bảng đọc theo dòng, bỏ "に cho biết điểm đến…" và giữ "Nhật + に, chờ động từ". Ghi vai trò ở bước đuôi câu (#2).
- **Bỏ hoặc gộp:** các bảng so sánh lặp (#21), cụm "giải phóng bộ nhớ" (#18), các ô blockquote chen ngang (#26). Sửa các khẳng định tuyệt đối về てから "ngay", 間に "khác chủ ngữ", mệnh đề thời gian "luôn" đứng trước (#5, #7, #17).