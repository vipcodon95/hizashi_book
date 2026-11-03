# Bài tập Lesson 02: が・を・の

## fill_particle | 1
猫がいます。
Có con mèo.
猫（　）います。
> が | は | を | に
= が
? Chủ ngữ tồn tại → が
! が đánh dấu chủ ngữ trong câu tồn tại (います/あります)
# が tồn_tại

## fill_particle | 1
本を読みます。
Đọc sách.
本（　）読みます。
> を | が | は | に
= を
? Đối tượng hành động → を
! を đánh dấu tân ngữ -- đối tượng bị tác động bởi hành động
# を tân_ngữ

## fill_particle | 2
音楽が好きです。
Thích âm nhạc.
音楽（　）好きです。
> が | を | は | に
= が
? Đối tượng cảm xúc (好き/嫌い) → が, không phải を
! Với 好き, 嫌い, わかる, できる → đối tượng dùng が chứ không phải を
# が cảm_xúc

## fill_particle | 1
私の本です。
Là sách của tôi.
私（　）本です。
> の | は | が | を
= の
? Sở hữu → の
! の nối 2 danh từ: sở hữu, liên kết, thu hẹp phạm vi
# の sở_hữu

## fill_particle | 2
雨が降っています。
Trời đang mưa.
雨（　）降っています。
> が | は | を | に
= が
? Hiện tượng tự nhiên → が
! Hiện tượng tự nhiên (mưa, gió, tuyết...) dùng が cho chủ ngữ
# が hiện_tượng

## fill_particle | 2
田中さんが来ました。
Tanaka đã đến. (nhấn mạnh: chính Tanaka)
田中さん（　）来ました。
> が | は | を | も
= が
? Thông tin mới / nhấn mạnh AI → が
! が nhấn mạnh chủ thể cụ thể: TANAKA (chứ không phải ai khác) đã đến
# が thông_tin_mới

## fill_particle | 2
公園を歩きます。
Đi bộ qua công viên.
公園（　）歩きます。
> を | で | に | が
= を
? Di chuyển QUA không gian → を
! を không chỉ là tân ngữ, còn đánh dấu không gian đi qua (歩く, 走る, 渡る)
# を di_chuyển

## fill_particle | 2
家を出ます。
Ra khỏi nhà.
家（　）出ます。
> を | に | で | から
= を
? Nơi rời khỏi → を
! を đánh dấu nơi rời khỏi: 家を出る (ra nhà), 電車を降りる (xuống tàu)
# を rời_khỏi

## fill_particle | 1
日本の料理を食べました。
Đã ăn món Nhật.
日本（　）料理を食べました。
> の | は | が | に
= の
? Liên kết/thuộc về → の
! の nối: 日本の料理 = món ăn (của/thuộc) Nhật
# の liên_kết

## fill_particle | 2
赤いのがほしい。
Muốn cái màu đỏ.
赤い（　）がほしい。
> の | は | を | が
= の
? の thay thế danh từ (tránh lặp) → の = cái/chiếc
! の thay thế danh từ đã biết: 赤いの = cái màu đỏ (の thay cho シャツ, かばん...)
# の thay_thế

## prediction | 1
机の上に本があります。
Trên bàn có sách.
机の上に / 本が... → Gặp が, dự đoán?
> Sắp có います/あります (tồn tại) | Sắp có hành động tác động | Sắp có điểm đến | Sắp có cảm xúc
= 0
! が + います/あります → tồn tại. Ở đây 本が → "sách tồn tại" → sắp có あります
# が tồn_tại dự_đoán

## prediction | 1
コーヒーを飲みます。
Uống cà phê.
コーヒーを... → Gặp を, dự đoán?
> Sắp có hành động tác động (uống? mua? pha?) | Sắp có tồn tại | Sắp có điểm đến | Sắp có mô tả
= 0
! を → chắc chắn sắp có động từ tác động lên "cà phê"
# を dự_đoán

## prediction | 2
日本語がわかります。
Hiểu tiếng Nhật.
日本語が... → Gặp が sau danh từ năng lực, dự đoán?
> Sắp có cảm xúc/năng lực (好き/わかる/できる) | Sắp có hành động thường | Sắp có tồn tại | Sắp có điểm đến
= 0
! が + 好き/わかる/できる → đối tượng cảm xúc/năng lực
# が cảm_xúc dự_đoán

## prediction | 1
東京の駅の近くの...
Gần ga Tokyo...
東京の / 駅の / 近くの... → Gặp chuỗi の, dự đoán?
> Sắp có danh từ (phạm vi thu hẹp dần) | Sắp có động từ | Sắp có trợ từ khác | Không dự đoán được
= 0
! Chuỗi の thu hẹp phạm vi: Tokyo → ga → gần → sắp có danh từ cuối cùng
# の chuỗi dự_đoán

## prediction | 2
母が作った...
Mẹ đã nấu...
母が / 作った... → が trong mệnh đề chưa kết câu, dự đoán?
> Đây là chủ ngữ mệnh đề phụ, sắp có danh từ được bổ nghĩa | Đây là chủ ngữ chính | Sắp có tồn tại | Sắp kết câu
= 0
! が + TTT (chưa kết câu) → chủ ngữ mệnh đề phụ. Sắp có danh từ: "cái mà mẹ nấu" = ?
# が mệnh_đề_phụ dự_đoán

## chunking | 1
本を読みます
Đọc sách.
> 本を | 読みます
# を chunking

## chunking | 1
猫がいます
Có con mèo.
> 猫が | います
# が chunking

## chunking | 1
私の本です
Sách của tôi.
> 私の | 本です
# の chunking

## chunking | 2
日本の料理を食べました
Đã ăn món Nhật.
> 日本の料理を | 食べました
# の を chunking

## chunking | 2
東京の駅の近くのレストラン
Nhà hàng gần ga Tokyo.
> 東京の | 駅の | 近くの | レストラン
# の chuỗi chunking

## chunking | 2
母が作ったお弁当
Cơm hộp mà mẹ làm.
> 母が | 作った | お弁当
# が mệnh_đề_phụ chunking

## pair_distinction | 2
田中さんは来ました。/ 田中さんが来ました。
Tanaka đã đến. / Tanaka (chính anh ấy) đã đến.
Câu nào nhấn mạnh 'chính TANAKA đã đến, không phải ai khác'?
> 田中さんは来ました。 | 田中さんが来ました。
= 田中さんが来ました。
! は = chủ đề (nói về Tanaka). が = nhấn mạnh thông tin mới (chính Tanaka, không phải ai khác!)
# は が phân_biệt

## pair_distinction | 2
音楽を聞きます。/ 音楽が好きです。
Nghe nhạc. / Thích nhạc.
Câu nào dùng が thay vì を? Tại sao?
> 音楽を聞きます。(を vì 聞く là hành động) | 音楽が好きです。(が vì 好き là cảm xúc)
= 音楽が好きです。(が vì 好き là cảm xúc)
! Hành động (聞く, 読む, 食べる) → を. Cảm xúc/năng lực (好き, わかる, できる) → が
# を が phân_biệt

## pair_distinction | 2
日本の料理 / 日本は料理
"Món ăn Nhật" hay "Nhật thì, món ăn"?
Cách nào tự nhiên để nói "món ăn Nhật"?
> 日本の料理 (の liên kết → "món ăn Nhật") | 日本は料理 (は chủ đề → "Nhật thì, món ăn" -- không tự nhiên)
= 日本の料理 (の liên kết → "món ăn Nhật")
! の nối 2 danh từ thành 1 cụm. は đặt chủ đề cho CÂU, không nối danh từ.
# の は phân_biệt

## packaging | 2
母が作った料理はおいしいです。
Món ăn mẹ nấu rất ngon.
🔒 母が作った料理は → đóng gói thành?
> 🔒 "món ăn MẸ nấu" → は = chủ đề → sắp có nhận xét | 🔒 "mẹ nấu ăn" → sắp kết câu | 🔒 "món ăn" → sắp di chuyển | 🔒 "mẹ" → sắp có hành động mới
= 🔒 "món ăn MẸ nấu" → は = chủ đề → sắp có nhận xét
! Đóng gói: gom "母が作った料理" thành 1 hình ảnh "món ăn mẹ nấu" → は cho biết sắp có nhận xét. Chủ ngữ "nấu" = mẹ (が), chủ ngữ "nhận xét" = tôi (ẩn).
# が は đóng_gói chủ_ngữ

## packaging | 2
先生が書いた本を読みました。
Tôi đã đọc sách thầy viết.
🔒 先生が書いた本を → đóng gói thành?
> 🔒 "sách THẦY viết" → を = tân ngữ → sắp có hành động | 🔒 "thầy viết" → sắp kết câu | 🔒 "sách" → sắp có mô tả | 🔒 "thầy" → sắp có tồn tại
= 🔒 "sách THẦY viết" → を = tân ngữ → sắp có hành động
! Đóng gói: gom "先生が書いた本" thành "sách thầy viết" → を cho biết sắp có hành động (đọc? mua?). Chủ ngữ "viết" = thầy (が), chủ ngữ "đọc" = tôi (ẩn).
# が を đóng_gói chủ_ngữ

## packaging | 1
東京の駅の近くのレストランで食べました。
Đã ăn ở nhà hàng gần ga Tokyo.
🔒 東京の駅の近くのレストランで → đóng gói?
> 🔒 "nhà hàng gần ga Tokyo" → で = địa điểm → sắp có hành động | 🔒 "ga Tokyo" → sắp có tồn tại | 🔒 "gần" → sắp có mô tả | 🔒 "Tokyo" → sắp di chuyển
= 🔒 "nhà hàng gần ga Tokyo" → で = địa điểm → sắp có hành động
! Chuỗi の thu hẹp dần: Tokyo → ga → gần → nhà hàng. Đóng gói toàn bộ thành "nhà hàng gần ga Tokyo" → で cho biết sắp có hành động tại đây.
# の chuỗi đóng_gói

## reorder | 1
本を読みます。
Đọc sách.
> 読みます | 本を
= 本を | 読みます
# を reorder

## reorder | 1
猫がいます。
Có con mèo.
> います | 猫が
= 猫が | います
# が reorder

## reorder | 2
日本の料理を食べました。
Đã ăn món Nhật.
> 食べました | 日本の料理を
= 日本の料理を | 食べました
# の を reorder

## reorder | 2
東京の駅の近くのレストラン
Nhà hàng gần ga Tokyo.
> 近くの | 東京の | レストラン | 駅の
= 東京の | 駅の | 近くの | レストラン
# の chuỗi reorder

## quick_translate | 1
本を読みます。
Đọc sách.
本を / 読みます。 → Chọn bản dịch đúng:
> Đọc sách. | Sách đọc. | Viết sách. | Mua sách.
= Đọc sách.
! を = đối tượng hành động → 本 (sách) bị tác động bởi 読む (đọc)
# を dịch

## quick_translate | 1
猫がいます。
Có con mèo.
猫が / います。 → Chọn bản dịch đúng:
> Có con mèo. | Con mèo ăn. | Con mèo đi. | Thích con mèo.
= Có con mèo.
! が + います = tồn tại (sinh vật)
# が dịch

## quick_translate | 2
音楽が好きです。
Thích âm nhạc.
音楽が / 好きです。 → Chọn bản dịch đúng:
> Thích âm nhạc. | Nghe nhạc. | Nhạc hay. | Chơi nhạc.
= Thích âm nhạc.
! が + 好き = đối tượng cảm xúc. Không dùng を với 好き
# が cảm_xúc dịch

## quick_translate | 2
公園を歩きます。
Đi bộ qua công viên.
公園を / 歩きます。 → Chọn bản dịch đúng:
> Đi bộ qua công viên. | Đi đến công viên. | Ở công viên. | Thích công viên.
= Đi bộ qua công viên.
! を + 歩く = đi bộ QUA không gian (không phải đi ĐẾN)
# を di_chuyển dịch

## quick_translate | 2
母が作った料理はおいしいです。
Món ăn mẹ nấu rất ngon.
母が / 作った / 料理は / おいしいです。 → Chọn bản dịch đúng:
> Món ăn mẹ nấu rất ngon. | Mẹ nấu ăn ngon. | Tôi nấu cho mẹ ăn ngon. | Món ăn ngon cho mẹ.
= Món ăn mẹ nấu rất ngon.
! 母が = mẹ (chủ ngữ mệnh đề phụ: mẹ nấu). 料理は = món ăn (chủ đề chính). おいしい = ngon (tôi đánh giá -- chủ ngữ ẩn)
# が は mệnh_đề_phụ dịch

## quick_translate | 1
東京の駅の近くのレストランで食べました。
Đã ăn ở nhà hàng gần ga Tokyo.
東京の / 駅の / 近くの / レストランで / 食べました。 → Chọn bản dịch đúng:
> Đã ăn ở nhà hàng gần ga Tokyo. | Đi ga Tokyo gần nhà hàng. | Nhà hàng Tokyo ở gần ga. | Ga Tokyo có nhà hàng.
= Đã ăn ở nhà hàng gần ga Tokyo.
! Chuỗi の thu hẹp: Tokyo → ga → gần → nhà hàng. で = địa điểm hành động. 食べました = đã ăn.
# の chuỗi dịch
