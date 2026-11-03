# Bài tập Lesson 03: に・で・へ

## fill_particle | 1
部屋に猫がいます。
Trong phòng có con mèo.
部屋（　）猫がいます。
> に | で | へ | を
= に
? Vị trí tồn tại (TĨNH) → に
! に đánh dấu nơi tồn tại: phòng là nơi mèo TỒN TẠI (không hành động)
# に tồn_tại

## fill_particle | 1
7時に起きます。
7 giờ thức dậy.
7時（　）起きます。
> に | で | を | は
= に
? Thời điểm cụ thể → に
! に đánh dấu thời điểm cụ thể: 7時 là mốc thời gian xác định
# に thời_điểm

## fill_particle | 1
学校に行きます。
Đi đến trường.
学校（　）行きます。
> に | で | へ | を
= に
? Điểm đến (đích di chuyển) → に
! に đánh dấu đích đến: trường là nơi đi ĐẾN
# に điểm_đến

## fill_particle | 1
図書館で勉強します。
Học tại thư viện.
図書館（　）勉強します。
> で | に | へ | を
= で
? Địa điểm HÀNH ĐỘNG diễn ra → で
! で đánh dấu sân khấu hành động: thư viện là nơi hành động "học" diễn ra
# で địa_điểm

## fill_particle | 1
バスで行きます。
Đi bằng xe buýt.
バス（　）行きます。
> で | に | へ | を
= で
? Phương tiện / Công cụ → で
! で đánh dấu phương tiện: xe buýt là cách thức di chuyển
# で phương_tiện

## fill_particle | 2
友達にプレゼントをあげました。
Đã tặng quà cho bạn.
友達（　）プレゼントをあげました。
> に | で | へ | が
= に
? Người nhận → に
! に đánh dấu đối tượng gián tiếp: bạn là NGƯỜI NHẬN quà
# に người_nhận

## fill_particle | 2
公園に猫がいます。/ 公園で遊びます。
Ở công viên có mèo. / Chơi ở công viên.
公園（　）遊びます。
> で | に | へ | を
= で
? Có hành động "chơi" → địa điểm hành động → で
! に = nơi tồn tại (TĨNH). で = nơi hành động diễn ra (ĐỘNG). "Chơi" là hành động → で
# で に phân_biệt

## fill_particle | 2
日本語で話します。
Nói bằng tiếng Nhật.
日本語（　）話します。
> で | に | を | が
= で
? Ngôn ngữ dùng để nói → で
! で đánh dấu ngôn ngữ/chất liệu: tiếng Nhật là PHƯƠNG TIỆN để nói
# で ngôn_ngữ

## fill_particle | 2
日本へ行きます。
Đi về phía Nhật.
日本（　）行きます。
> へ | で | を | が
= へ
? Hướng di chuyển → へ
! へ nhấn mạnh HƯỚNG đi (về phía Nhật). に cũng được nhưng nhấn mạnh ĐÍCH đến
# へ hướng

## fill_particle | 2
買い物に行きます。
Đi mua sắm.
買い物（　）行きます。
> に | で | へ | を
= に
? Mục đích di chuyển (Vに行く) → に
! に đánh dấu mục đích: "mua sắm" là lý do ĐI → Vに行く
# に mục_đích

## prediction | 1
部屋に猫がいます。
Trong phòng có con mèo.
部屋に... → Gặp [Nơi]に, dự đoán?
> Sắp có います/あります (tồn tại) | Sắp có hành động tại đây | Sắp có phương tiện | Sắp có mô tả
= 0
! [Nơi]に → dự đoán: います/あります (tồn tại TĨNH tại đây)
# に tồn_tại dự_đoán

## prediction | 1
図書館で勉強します。
Học tại thư viện.
図書館で... → Gặp [Nơi]で, dự đoán?
> Sắp có HÀNH ĐỘNG diễn ra tại đây | Sắp có tồn tại | Sắp có điểm đến | Sắp có mô tả
= 0
! [Nơi]で → dự đoán: sắp có HÀNH ĐỘNG diễn ra tại thư viện (で = sân khấu)
# で địa_điểm dự_đoán

## prediction | 1
バスで行きます。
Đi bằng xe buýt.
バスで... → Gặp [Công cụ]で, dự đoán?
> Sắp có HÀNH ĐỘNG dùng phương tiện này | Sắp có tồn tại | Sắp có mô tả | Sắp có cảm xúc
= 0
! [Công cụ]で → dự đoán: sắp có hành động dùng xe buýt
# で phương_tiện dự_đoán

## prediction | 2
友達にプレゼントをあげました。
Đã tặng quà cho bạn.
友達に... → Gặp [Người]に, dự đoán?
> Sắp có trao đổi: cho/nhận/nói/dạy | Sắp có tồn tại | Sắp có hành động tại đây | Sắp có di chuyển
= 0
! [Người]に → dự đoán: sắp cho/nhận/nói/dạy gì với người này
# に người_nhận dự_đoán

## prediction | 2
日本へ向かいます。
Hướng về phía Nhật.
日本へ... → Gặp へ, dự đoán?
> Chắc chắn sắp có ĐỘNG TỪ DI CHUYỂN (行く/来る/帰る/向かう) | Sắp có tồn tại | Sắp có hành động tại đây | Sắp có mô tả
= 0
! へ → DỰ ĐOÁN CHẮC CHẮN: sắp có động từ di chuyển. へ chỉ dùng với hướng di chuyển
# へ dự_đoán

## prediction | 2
事故で電車が止まりました。
Vì tai nạn, tàu đã dừng.
事故で... → Gặp [Sự kiện]で, dự đoán?
> Sắp có kết quả/hậu quả của sự kiện | Sắp có hành động tại đây | Sắp có tồn tại | Sắp có mô tả
= 0
! [Sự kiện]で → nguyên nhân → dự đoán: sắp có kết quả/hậu quả do sự kiện này gây ra
# で nguyên_nhân dự_đoán

## chunking | 1
部屋に猫がいます
Trong phòng có con mèo.
> 部屋に | 猫が | います
# に が chunking

## chunking | 1
バスで行きます
Đi bằng xe buýt.
> バスで | 行きます
# で chunking

## chunking | 1
学校に行きます
Đi đến trường.
> 学校に | 行きます
# に chunking

## chunking | 2
友達にプレゼントをあげました
Đã tặng quà cho bạn.
> 友達に | プレゼントを | あげました
# に を chunking

## chunking | 2
3月に日本に行きます
Tháng 3 đi Nhật.
> 3月に | 日本に | 行きます
# に chunking thời_điểm điểm_đến

## chunking | 2
公園で子供が遊んでいます
Tại công viên, trẻ em đang chơi.
> 公園で | 子供が | 遊んでいます
# で が chunking

## pair_distinction | 2
学校にいます。/ 学校で勉強します。
Ở trường (tồn tại). / Học tại trường (hành động).
Câu nào dùng khi muốn nói "có hành động học diễn ra tại trường"?
> 学校にいます。(に = tồn tại TĨNH) | 学校で勉強します。(で = hành động ĐỘNG)
= 学校で勉強します。(で = hành động ĐỘNG)
! に = nơi TỒN TẠI (hỏi "ở đâu?"). で = nơi HÀNH ĐỘNG diễn ra (hỏi "làm gì ở đâu?")
# に で phân_biệt

## pair_distinction | 2
学校に行きます。/ 学校へ行きます。
Đi đến trường. / Đi về phía trường.
Câu nào nhấn mạnh ĐÍCH ĐẾN (điểm cuối)?
> 学校に行きます。(に = đích đến) | 学校へ行きます。(へ = hướng đi)
= 学校に行きます。(に = đích đến)
! に nhấn mạnh ĐÍCH ĐẾN (điểm cuối cùng). へ nhấn mạnh HƯỚNG đi. Hầu hết có thể thay thế nhau
# に へ phân_biệt

## pair_distinction | 2
椅子に座ります。/ 椅子で寝ます。
Ngồi lên ghế. / Ngủ trên ghế.
Câu nào dùng に? Tại sao?
> 椅子に座ります。(に = điểm đặt → ngồi lên) | 椅子で寝ます。(で = nơi hành động → ngủ trên)
= 椅子に座ります。(に = điểm đặt → ngồi lên)
! 座る (ngồi) = đặt thân vào ĐIỂM → に. 寝る (ngủ) = hành động diễn ra TẠI → で
# に で phân_biệt

## packaging | 1
図書館で勉強します。
Học tại thư viện.
🔒 図書館で → đóng gói thành?
> 🔒 "thư viện" → で = sân khấu → sắp có hành động tại đây | 🔒 "thư viện" → sắp có tồn tại | 🔒 "thư viện" → sắp có di chuyển đến | 🔒 "thư viện" → sắp có mô tả
= 🔒 "thư viện" → で = sân khấu → sắp có hành động tại đây
! Đóng gói: "thư viện" → で cho biết đây là SÂN KHẤU → sắp có hành động diễn ra tại đây
# で đóng_gói

## packaging | 2
3月に日本に行きます。
Tháng 3 đi Nhật.
🔒 3月に → đóng gói thành?
> 🔒 "tháng 3" → に = thời điểm → sắp có hành động vào lúc này | 🔒 "tháng 3" → に = tồn tại → sắp có います | 🔒 "tháng 3" → に = đích đến → sắp đi | 🔒 "tháng 3" → sắp kết câu
= 🔒 "tháng 3" → に = thời điểm → sắp có hành động vào lúc này
! Đóng gói: "tháng 3" → に = thời điểm cụ thể → giải phóng bộ nhớ, chỉ giữ lại "khi nào: tháng 3" → đọc tiếp
# に thời_điểm đóng_gói

## packaging | 2
友達にプレゼントをあげました。
Đã tặng quà cho bạn.
🔒 友達に / プレゼントを → đóng gói thành?
> 🔒 "bạn" → に = người nhận + "quà" → を = tân ngữ → sắp có hành động trao cho bạn | 🔒 "bạn" → に = tồn tại → sắp có います | 🔒 "quà" → を = sắp kết câu | 🔒 "bạn" → に = địa điểm hành động
= 🔒 "bạn" → に = người nhận + "quà" → を = tân ngữ → sắp có hành động trao cho bạn
! Đóng gói: "bạn" (người nhận) + "quà" (tân ngữ) → dự đoán: sắp có động từ trao đổi (tặng? cho? gửi?)
# に を đóng_gói

## packaging | 2
事故で電車が止まりました。
Vì tai nạn, tàu đã dừng.
🔒 事故で → đóng gói thành?
> 🔒 "tai nạn" → で = nguyên nhân → sắp có kết quả/hậu quả | 🔒 "tai nạn" → で = địa điểm → sắp có hành động tại đây | 🔒 "tai nạn" → sắp có tồn tại | 🔒 "tai nạn" → sắp kết câu
= 🔒 "tai nạn" → で = nguyên nhân → sắp có kết quả/hậu quả
! Đóng gói: "tai nạn" → で = nguyên nhân → giải phóng bộ nhớ, giữ "vì tai nạn" → dự đoán hậu quả
# で nguyên_nhân đóng_gói

## reorder | 1
7時に起きます。
7 giờ thức dậy.
> 起きます | 7時に
= 7時に | 起きます
# に reorder

## reorder | 1
図書館で勉強します。
Học tại thư viện.
> 勉強します | 図書館で
= 図書館で | 勉強します
# で reorder

## reorder | 2
友達にプレゼントをあげました。
Đã tặng quà cho bạn.
> あげました | プレゼントを | 友達に
= 友達に | プレゼントを | あげました
# に を reorder

## reorder | 2
3月に日本に行きます。
Tháng 3 đi Nhật.
> 行きます | 日本に | 3月に
= 3月に | 日本に | 行きます
# に reorder thời_điểm điểm_đến

## quick_translate | 1
部屋に猫がいます。
Trong phòng có con mèo.
部屋に / 猫が / います。 → Chọn bản dịch đúng:
> Trong phòng có con mèo. | Con mèo đi vào phòng. | Con mèo chơi trong phòng. | Phòng của con mèo.
= Trong phòng có con mèo.
! に + います = tồn tại (sinh vật). 部屋に = nơi tồn tại, 猫が = chủ ngữ tồn tại
# に tồn_tại dịch

## quick_translate | 1
バスで行きます。
Đi bằng xe buýt.
バスで / 行きます。 → Chọn bản dịch đúng:
> Đi bằng xe buýt. | Đi đến xe buýt. | Xe buýt ở đây. | Thích xe buýt.
= Đi bằng xe buýt.
! で = phương tiện. バスで = bằng xe buýt → hành động "đi"
# で phương_tiện dịch

## quick_translate | 2
友達にプレゼントをあげました。
Đã tặng quà cho bạn.
友達に / プレゼントを / あげました。 → Chọn bản dịch đúng:
> Đã tặng quà cho bạn. | Bạn đã tặng quà. | Đã mua quà ở chỗ bạn. | Đã đi đến bạn có quà.
= Đã tặng quà cho bạn.
! 友達に = cho bạn (người nhận). プレゼントを = quà (tân ngữ). あげました = đã tặng
# に を dịch

## quick_translate | 2
事故で電車が止まりました。
Vì tai nạn, tàu đã dừng.
事故で / 電車が / 止まりました。 → Chọn bản dịch đúng:
> Vì tai nạn, tàu đã dừng. | Tàu dừng tại tai nạn. | Tai nạn trên tàu. | Tàu gây tai nạn.
= Vì tai nạn, tàu đã dừng.
! 事故で = vì tai nạn (で = nguyên nhân). 電車が = tàu (chủ ngữ). 止まりました = đã dừng
# で nguyên_nhân dịch

## quick_translate | 2
買い物に行きます。
Đi mua sắm.
買い物に / 行きます。 → Chọn bản dịch đúng:
> Đi mua sắm. | Mua sắm tại đây. | Đi đến cửa hàng. | Mua sắm xong rồi.
= Đi mua sắm.
! 買い物に = để mua sắm (に = mục đích). Vに行く = đi để làm V
# に mục_đích dịch

## fill_particle | 2
医者になりました。
Đã trở thành bác sĩ.
医者（　）なりました。
> に | で | へ | が
= に
? Kết quả biến đổi (になる) → に
! に đánh dấu kết quả biến đổi: bác sĩ là thứ ĐÃ TRỞ THÀNH → になる
# に biến_đổi

## fill_particle | 2
先生に叱られました。
Bị thầy mắng.
先生（　）叱られました。
> に | で | を | が
= に
? Người thực hiện trong câu bị động → に
! に đánh dấu người thực hiện hành động trong câu bị động: thầy là người MẮNG → に + られる
# に bị_động

## fill_particle | 1
週に3回泳ぎます。
Bơi 3 lần mỗi tuần.
週（　）3回泳ぎます。
> に | で | を | は
= に
? Tần suất (mỗi tuần) → に
! に đánh dấu tần suất: 週に3回 = 3 lần MỖI tuần
# に tần_suất

## fill_particle | 2
クラスで一番です。
Nhất lớp.
クラス（　）一番です。
> で | に | が | は
= で
? Phạm vi / Giới hạn → で
! で đánh dấu phạm vi: クラスで = TRONG LỚP (giới hạn phạm vi so sánh)
# で phạm_vi

## prediction | 2
医者になりました。
Đã trở thành bác sĩ.
医者に... → Gặp [Danh từ]に + なる, dự đoán?
> Sắp có biến đổi/trở thành | Sắp có tồn tại | Sắp có hành động tại đây | Sắp có di chuyển
= 0
! [N]に + なる → biến đổi: sắp trở thành cái gì đó
# に biến_đổi dự_đoán

## quick_translate | 2
医者になりました。
Đã trở thành bác sĩ.
医者に / なりました。 → Chọn bản dịch đúng:
> Đã trở thành bác sĩ. | Đã đi đến bác sĩ. | Bác sĩ ở đây. | Đã gặp bác sĩ.
= Đã trở thành bác sĩ.
! に + なる = trở thành. 医者に = thành bác sĩ (kết quả biến đổi)
# に biến_đổi dịch

## quick_translate | 1
クラスで一番です。
Nhất lớp.
クラスで / 一番です。 → Chọn bản dịch đúng:
> Nhất lớp. | Lớp số một. | Đi đến lớp. | Ở trong lớp.
= Nhất lớp.
! で = phạm vi giới hạn. クラスで一番 = nhất TRONG PHẠM VI lớp
# で phạm_vi dịch
