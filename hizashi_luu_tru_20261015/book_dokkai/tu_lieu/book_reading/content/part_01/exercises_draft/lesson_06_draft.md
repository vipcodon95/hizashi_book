# Bài tập Lesson 06: けど/が・ので・のに・し・なら

## fill_particle | 1
高いですがおいしいです。
Đắt nhưng ngon.
高いです（　）おいしいです。
> が | ので | のに | し
= が
? Tương phản → が
! が nối 2 mệnh đề tương phản: "đắt" NHƯNG "ngon"
# が tương_phản

## fill_particle | 1
日本語は難しいですけど面白いです。
Tiếng Nhật khó nhưng thú vị.
日本語は難しいです（　）面白いです。
> けど | ので | のに | し
= けど
? Tương phản (văn nói) → けど
! けど = nhưng (thân mật). が = nhưng (trang trọng). Cả hai đều tương phản
# けど tương_phản

## fill_particle | 1
病気なので休みます。
Vì bệnh nên nghỉ.
病気な（　）休みます。
> ので | から | のに | けど
= ので
? Nguyên nhân khách quan, lịch sự → ので
! ので = vì (khách quan, lịch sự). Bệnh → nghỉ là kết quả tất nhiên
# ので nguyên_nhân

## fill_particle | 2
勉強したのに落ちました。
Đã học vậy mà trượt.
勉強した（　）落ちました。
> のに | ので | けど | し
= のに
? Kết quả bất ngờ, thất vọng → のに
! のに = vậy mà, mặc dù. Cảm xúc thất vọng: đã học RỒI VẬY MÀ trượt
# のに thất_vọng

## fill_particle | 2
安いしおいしいしこの店が好きです。
Vừa rẻ, vừa ngon, thích tiệm này.
安い（　）おいしい（　）この店が好きです。
> し...し | けど...けど | ので...ので | のに...のに
= し...し
? Liệt kê nhiều lý do → し
! し liệt kê lý do: "vừa rẻ, vừa ngon" (và còn lý do khác) → kết luận: thích
# し liệt_kê

## fill_particle | 2
日本へ行くなら京都がいいですよ。
Nếu đi Nhật, Kyoto tốt đấy.
日本へ行く（　）京都がいいですよ。
> なら | と | ので | から
= なら
? Lời khuyên dựa trên ngữ cảnh → なら
! なら = nếu là...thì (đưa lời khuyên). Tiếp nhận "đi Nhật" → gợi ý Kyoto
# なら lời_khuyên

## fill_particle | 2
試験があるので勉強しています。
Vì có thi nên đang học.
試験がある（　）勉強しています。
> ので | から | のに | けど
= ので
? Nguyên nhân khách quan → ので
! ので khách quan: có thi → đang học (kết quả tự nhiên, ai cũng hiểu)
# ので nguyên_nhân

## fill_particle | 2
約束したのに来ませんでした。
Đã hẹn vậy mà không đến.
約束した（　）来ませんでした。
> のに | ので | けど | から
= のに
? Thất vọng, bất mãn → のに
! のに = thất vọng: đã hẹn (kỳ vọng đến) VẬY MÀ không đến (kết quả ngược)
# のに thất_vọng

## fill_particle | 2
すみませんが、ちょっといいですか。
Xin lỗi, cho tôi hỏi chút.
すみません（　）、ちょっといいですか。
> が | けど | ので | のに
= が
? が mào đầu (không mang nghĩa "nhưng") → が
! が ở đây không phải "nhưng", mà là mào đầu lịch sự: "xin lỗi, [cho tôi hỏi]..."
# が mào_đầu

## fill_particle | 2
日本語ならわかります。
Nếu là tiếng Nhật thì hiểu.
日本語（　）わかります。
> なら | が | ので | けど
= なら
? Giới hạn chủ đề: "nếu là cái này thì..." → なら
! なら giới hạn: "nếu là tiếng Nhật" thì hiểu (ẩn ý: ngôn ngữ khác thì không chắc)
# なら giới_hạn

## fill_particle | 2
忙しいしお金もないし行けません。
Vừa bận, vừa không có tiền, không đi được.
忙しい（　）お金もない（　）行けません。
> し...し | けど...けど | ので...ので | のに...のに
= し...し
? Liệt kê nhiều lý do dẫn đến kết luận → し
! し liệt kê: "bận" + "không tiền" (và có thể còn lý do khác) → kết luận: không đi được
# し liệt_kê

## prediction | 1
高いですがおいしいです。
Đắt nhưng ngon.
高いですが... → Gặp が, dự đoán?
> Vế sau sẽ TƯƠNG PHẢN | Sắp có kết quả tất yếu | Sắp có thất vọng | Sắp có liệt kê lý do
= 0
! が → tương phản → dự đoán: vế sau ngược lại với "đắt" → chờ điều tốt
# が tương_phản dự_đoán

## prediction | 1
病気なので休みます。
Vì bệnh nên nghỉ.
病気なので... → Gặp ので, dự đoán?
> Sắp có kết quả TẤT NHIÊN (khách quan) | Sắp có kết quả bất ngờ | Sắp có tương phản | Sắp có liệt kê
= 0
! ので → nguyên nhân khách quan → dự đoán: kết quả tất nhiên (bệnh → nghỉ)
# ので dự_đoán

## prediction | 2
勉強したのに落ちました。
Đã học vậy mà trượt.
勉強したのに... → Gặp のに, dự đoán?
> Sắp có kết quả BẤT NGỜ / THẤT VỌNG | Sắp có kết quả tốt | Sắp có kết quả tất yếu | Sắp có liệt kê
= 0
! のに → thất vọng → dự đoán: kết quả NGƯỢC với kỳ vọng (đã học → lẽ ra đỗ → nhưng...)
# のに dự_đoán

## prediction | 2
安いしおいしいし...
Vừa rẻ, vừa ngon...
安いしおいしいし... → Gặp し lặp lại, dự đoán?
> Sắp có KẾT LUẬN dựa trên các lý do | Sắp có tương phản | Sắp có thất vọng | Sắp có thêm câu hỏi
= 0
! し...し → liệt kê lý do → dự đoán: sắp có kết luận tổng hợp
# し dự_đoán

## prediction | 2
日本へ行くなら...
Nếu đi Nhật...
日本へ行くなら... → Gặp なら, dự đoán?
> Sắp có LỜI KHUYÊN / gợi ý | Sắp có lý do | Sắp có thất vọng | Sắp có liệt kê
= 0
! なら → dựa trên ngữ cảnh → dự đoán: sắp có lời khuyên, gợi ý, phản hồi
# なら dự_đoán

## prediction | 2
すみませんが...
Xin lỗi...
すみませんが... → Gặp が mào đầu, dự đoán?
> Sắp có YÊU CẦU / CÂU HỎI | Sắp có tương phản | Sắp có kết quả | Sắp có liệt kê
= 0
! が mào đầu → không phải "nhưng" → dự đoán: sắp có yêu cầu, nhờ vả lịch sự
# が mào_đầu dự_đoán

## chunking | 1
高いですがおいしいです
Đắt nhưng ngon.
> 高いですが | おいしいです
# が chunking

## chunking | 1
病気なので休みます
Vì bệnh nên nghỉ.
> 病気なので | 休みます
# ので chunking

## chunking | 2
勉強したのに落ちました
Đã học vậy mà trượt.
> 勉強したのに | 落ちました
# のに chunking

## chunking | 2
安いしおいしいしこの店が好きです
Vừa rẻ, vừa ngon, thích tiệm này.
> 安いし | おいしいし | この店が | 好きです
# し chunking

## chunking | 2
日本へ行くなら京都がいいですよ
Nếu đi Nhật, Kyoto tốt đấy.
> 日本へ行くなら | 京都が | いいですよ
# なら chunking

## chunking | 2
約束したのに来ませんでした
Đã hẹn vậy mà không đến.
> 約束したのに | 来ませんでした
# のに chunking

## pair_distinction | 2
病気なので休みます。/ 薬を飲んだのに治らない。
Vì bệnh nên nghỉ. / Uống thuốc rồi vậy mà không khỏi.
Câu nào mang cảm xúc THẤT VỌNG?
> 病気なので休みます。(ので = vì → kết quả tự nhiên) | 薬を飲んだのに治らない。(のに = vậy mà → thất vọng)
= 薬を飲んだのに治らない。(のに = vậy mà → thất vọng)
! ので = nguyên nhân khách quan (trung tính). のに = mặc dù (thất vọng, bất mãn)
# ので のに phân_biệt

## pair_distinction | 2
雨だから行きません。/ 雨なので行きません。
Vì mưa nên không đi. / Vì mưa nên không đi.
Câu nào khách quan, lịch sự hơn?
> 雨だから行きません。(から = chủ quan) | 雨なので行きません。(ので = khách quan, lịch sự)
= 雨なので行きません。(ので = khách quan, lịch sự)
! から chủ quan: nhấn phán đoán cá nhân. ので khách quan: lịch sự, thường dùng trong công việc
# から ので phân_biệt

## pair_distinction | 2
日本語は難しいですが、面白いです。/ 日本語は難しいのに、面白くない。
Tiếng Nhật khó nhưng thú vị. / Tiếng Nhật khó vậy mà không thú vị.
Câu nào kết quả TÍCH CỰC?
> 日本語は難しいですが、面白いです。(が = nhưng → tích cực) | 日本語は難しいのに、面白くない。(のに = vậy mà → thất vọng)
= 日本語は難しいですが、面白いです。(が = nhưng → tích cực)
! が = tương phản trung tính (có thể tốt/xấu). のに = bất ngờ tiêu cực (thất vọng)
# が のに phân_biệt

## packaging | 2
高いですがおいしいです。
Đắt nhưng ngon.
🔒 高いですが → đóng gói thành?
> 🔒 "đắt" → が = tương phản → sắp có điều NGƯỢC LẠI | 🔒 "đắt" → ので = vì → sắp có kết quả | 🔒 "đắt" → sắp kết câu | 🔒 "đắt" → sắp có liệt kê
= 🔒 "đắt" → が = tương phản → sắp có điều NGƯỢC LẠI
! Đóng gói: "đắt" → が báo hiệu tương phản → giải phóng bộ nhớ → chờ điều ngược lại
# が đóng_gói

## packaging | 2
勉強したのに落ちました。
Đã học vậy mà trượt.
🔒 勉強したのに → đóng gói thành?
> 🔒 "đã học rồi" → のに = vậy mà → sắp có kết quả BẤT NGỜ/THẤT VỌNG | 🔒 "đã học" → ので = vì → sắp có kết quả tốt | 🔒 "học" → sắp kết câu | 🔒 "học" → sắp có liệt kê
= 🔒 "đã học rồi" → のに = vậy mà → sắp có kết quả BẤT NGỜ/THẤT VỌNG
! Đóng gói: "đã học rồi" → のに báo hiệu thất vọng → giải phóng bộ nhớ → chờ kết quả xấu
# のに đóng_gói

## packaging | 2
安いしおいしいしこの店が好きです。
Vừa rẻ, vừa ngon, thích tiệm này.
🔒 安いし / おいしいし → đóng gói thành?
> 🔒 "rẻ" + "ngon" → し = lý do → sắp có KẾT LUẬN | 🔒 "rẻ" → sắp có tương phản | 🔒 "ngon" → sắp kết câu | 🔒 "rẻ" + "ngon" → sắp có thất vọng
= 🔒 "rẻ" + "ngon" → し = lý do → sắp có KẾT LUẬN
! Đóng gói: "rẻ" + "ngon" → し liệt kê lý do → giải phóng bộ nhớ → chờ kết luận tổng hợp
# し đóng_gói

## packaging | 2
日本へ行くなら京都がいいですよ。
Nếu đi Nhật, Kyoto tốt đấy.
🔒 日本へ行くなら → đóng gói thành?
> 🔒 "nếu đi Nhật" → なら = điều kiện → sắp có LỜI KHUYÊN | 🔒 "đi Nhật" → sắp có lý do | 🔒 "đi Nhật" → sắp có thất vọng | 🔒 "đi Nhật" → sắp kết câu
= 🔒 "nếu đi Nhật" → なら = điều kiện → sắp có LỜI KHUYÊN
! Đóng gói: "nếu đi Nhật" → なら = tiếp nhận ngữ cảnh → dự đoán: sắp có gợi ý/khuyên
# なら đóng_gói

## reorder | 1
病気なので休みます。
Vì bệnh nên nghỉ.
> 休みます | 病気なので
= 病気なので | 休みます
# ので reorder

## reorder | 2
安いしおいしいしこの店が好きです。
Vừa rẻ, vừa ngon, thích tiệm này.
> この店が好きです | おいしいし | 安いし
= 安いし | おいしいし | この店が好きです
# し reorder

## reorder | 2
日本へ行くなら京都がいいですよ。
Nếu đi Nhật, Kyoto tốt đấy.
> 京都がいいですよ | 日本へ行くなら
= 日本へ行くなら | 京都がいいですよ
# なら reorder

## reorder | 2
約束したのに来ませんでした。
Đã hẹn vậy mà không đến.
> 来ませんでした | 約束したのに
= 約束したのに | 来ませんでした
# のに reorder

## quick_translate | 1
高いですがおいしいです。
Đắt nhưng ngon.
高いですが / おいしいです。 → Chọn bản dịch đúng:
> Đắt nhưng ngon. | Đắt nên ngon. | Đắt vậy mà ngon. | Đắt và ngon.
= Đắt nhưng ngon.
! が = nhưng (tương phản trung tính). "Đắt" và "ngon" là 2 vế đối lập
# が dịch

## quick_translate | 1
病気なので休みます。
Vì bệnh nên nghỉ.
病気なので / 休みます。 → Chọn bản dịch đúng:
> Vì bệnh nên nghỉ. | Bệnh nhưng vẫn đi. | Bệnh vậy mà không nghỉ. | Bệnh rồi mới nghỉ.
= Vì bệnh nên nghỉ.
! ので = vì (khách quan). Bệnh → nghỉ: kết quả tất nhiên
# ので dịch

## quick_translate | 2
勉強したのに落ちました。
Đã học vậy mà trượt.
勉強したのに / 落ちました。 → Chọn bản dịch đúng:
> Đã học vậy mà trượt. | Vì đã học nên trượt. | Đã học nên đỗ. | Học rồi mới trượt.
= Đã học vậy mà trượt.
! のに = vậy mà (thất vọng). Kỳ vọng: học → đỗ. Thực tế: trượt → thất vọng!
# のに dịch

## quick_translate | 2
安いしおいしいしこの店が好きです。
Vừa rẻ, vừa ngon, thích tiệm này.
安いし / おいしいし / この店が好きです。 → Chọn bản dịch đúng:
> Vừa rẻ, vừa ngon, thích tiệm này. | Rẻ nhưng ngon, thích tiệm này. | Rẻ nên ngon, thích tiệm này. | Rẻ vậy mà ngon, thích tiệm này.
= Vừa rẻ, vừa ngon, thích tiệm này.
! し = liệt kê lý do: "vừa...vừa..." (rẻ + ngon = lý do thích)
# し dịch

## quick_translate | 2
日本へ行くなら京都がいいですよ。
Nếu đi Nhật, Kyoto tốt đấy.
日本へ行くなら / 京都がいいですよ。 → Chọn bản dịch đúng:
> Nếu đi Nhật, Kyoto tốt đấy. | Vì đi Nhật nên đến Kyoto. | Đi Nhật nhưng không đến Kyoto. | Đi Nhật rồi đến Kyoto.
= Nếu đi Nhật, Kyoto tốt đấy.
! なら = nếu (lời khuyên). Tiếp nhận "đi Nhật" → gợi ý "Kyoto tốt đấy"
# なら dịch

## quick_translate | 2
すみませんが、ちょっといいですか。
Xin lỗi, cho tôi hỏi chút.
すみませんが / ちょっといいですか。 → Chọn bản dịch đúng:
> Xin lỗi, cho tôi hỏi chút. | Xin lỗi nhưng không được. | Xin lỗi vì không tốt. | Xin lỗi vậy mà hỏi.
= Xin lỗi, cho tôi hỏi chút.
! が mào đầu: không phải "nhưng", mà là mở đầu lịch sự trước yêu cầu
# が mào_đầu dịch

## quick_translate | 2
日本語ならわかります。
Nếu là tiếng Nhật thì hiểu.
日本語なら / わかります。 → Chọn bản dịch đúng:
> Nếu là tiếng Nhật thì hiểu. | Vì tiếng Nhật nên hiểu. | Tiếng Nhật nhưng hiểu. | Tiếng Nhật vậy mà hiểu.
= Nếu là tiếng Nhật thì hiểu.
! なら giới hạn chủ đề: "nếu là tiếng Nhật" thì OK (ngôn ngữ khác thì không chắc)
# なら giới_hạn dịch
