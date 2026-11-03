# Bài tập Lesson 08: ね・よ・な/なあ・ぞ/ぜ・わ・よね・かな・って

## fill_particle | 1
いい天気ですね。
Thời tiết đẹp nhỉ.
[Cả 2 cùng nhìn ra ngoài, muốn tìm sự đồng cảm] いい天気です（　）。
> ね | よ | な | ぞ
= ね
? Muốn người nghe ĐỒNG Ý → ね
! ね = tìm đồng cảm: "nhỉ, phải không" (cả 2 cùng thấy → xác nhận). Khác よ = thông báo tin mới
# ね đồng_cảm

## fill_particle | 1
もう遅いですよ。
Muộn rồi đấy!
[Đánh thức bạn đang ngủ, bạn chưa biết giờ] もう遅いです（　）。
> よ | ね | な | わ
= よ
? THÔNG BÁO thông tin người nghe chưa biết → よ
! よ = thông báo: người nói biết (muộn rồi) nhưng người nghe chưa biết → "đấy!" Khác ね = cả 2 đã biết
# よ thông_báo

## fill_particle | 2
きれいだなあ。
Đẹp quá.
[Một mình ngắm cảnh, tự thốt lên] きれいだ（　）。
> なあ | な | ね | よ
= なあ
? Tự cảm thán, không nói với ai → なあ
! なあ = cảm thán tự nói: "QUÁ!" (thốt lên 1 mình). Khác ね = nói với người khác
# なあ cảm_thán

## fill_particle | 2
触るな。
Đừng chạm!
[Ra lệnh cấm mạnh] 触る（　）。
> な | なあ | ね | よ
= な
? Lệnh CẤM (sau thể từ điển) → な
! な sau động từ thể từ điển = CẤM. 触る+な = "ĐỪNG chạm!" Hoàn toàn khác なあ (cảm thán)
# な cấm

## fill_particle | 1
行くぞ！
Đi thôi!
[Nam giới hô hào anh em cùng đi] 行く（　）！
> ぞ | ね | よ | わ
= ぞ
? Nhấn mạnh mạnh, quyết tâm, giọng nam → ぞ
! ぞ = nhấn mạnh mạnh, quyết tâm (nam, thân mật). Mạnh hơn よ, thô hơn ね
# ぞ nhấn_mạnh

## fill_particle | 1
そうですよね。
Đúng thế nhỉ.
[Cả 2 đều biết, vừa đồng ý vừa muốn xác nhận lại] そうです（　）。
> よね | ね | よ | な
= よね
? Vừa ĐỒNG Ý vừa muốn XÁC NHẬN → よね
! よね = よ (mình cũng nghĩ thế) + ね (đúng không?). Phổ biến hơn ね/よ riêng lẻ
# よね đồng_ý

## fill_particle | 2
明日は晴れるかな。
Không biết ngày mai có nắng không nhỉ.
[Một mình nhìn trời, tự hỏi] 明日は晴れる（　）。
> かな | かしら | って | ね
= かな
? TỰ HỎI bản thân (nam/chung) → かな
! かな = tự hỏi: suy nghĩ bên trong, không hỏi ai. Khác ね = hỏi người khác
# かな tự_hỏi

## fill_particle | 2
明日休みだって。
Nghe nói ngày mai nghỉ.
[Truyền đạt thông tin nghe từ người khác] 明日休みだ（　）。
> って | かな | ね | よ
= って
? NGHE NÓI / trích dẫn lời người khác → って
! って = nghe nói, truyền đạt lời người khác. Rút gọn từ と言っていた. Phổ biến trong manga
# って nghe_nói

## fill_particle | 2
間に合うかしら。
Không biết có kịp không nhỉ.
[Nữ giới tự hỏi bản thân] 間に合う（　）。
> かしら | かな | って | ね
= かしら
? Tự hỏi (nữ tính) → かしら
! かしら = tự hỏi (nữ tính). Giống かな nhưng dùng cho nữ
# かしら tự_hỏi

## fill_particle | 1
本当だぜ。
Thật đấy!
[Nam giới nói với bạn, giọng mạnh] 本当だ（　）。
> ぜ | ぞ | よ | ね
= ぜ
? Nhấn mạnh mạnh, giọng nam thân mật → ぜ
! ぜ = nhấn mạnh mạnh (nam, thân mật). Gần giống ぞ nhưng nhẹ hơn, mang sắc thái "cool"
# ぜ nhấn_mạnh

## fill_particle | 2
田中さん、来ないって。
Tanaka bảo không đến.
[Truyền lời Tanaka cho người khác] 田中さん、来ない（　）。
> って | かな | ね | よ
= って
? Truyền đạt lời người khác → って
! って = trích dẫn văn nói: "Tanaka BẢO LÀ không đến" (nghe từ Tanaka rồi kể lại)
# って trích_dẫn

## prediction | 1
いい天気ですね。
Thời tiết đẹp nhỉ.
いい天気ですね → Gặp ね cuối câu, nhận diện?
> Người viết muốn ĐỒNG CẢM / xác nhận | Người viết đang thông báo | Người viết đang cấm | Người viết đang tự hỏi
= 0
! ね → tìm đồng cảm: "nhỉ, phải không". Nghĩa chính không đổi, chỉ thêm giọng điệu
# ね dự_đoán

## prediction | 1
もう遅いですよ。
Muộn rồi đấy!
もう遅いですよ → Gặp よ cuối câu, nhận diện?
> Người viết đang THÔNG BÁO / nhấn mạnh | Người viết đang tìm đồng cảm | Người viết đang cấm | Người viết đang tự hỏi
= 0
! よ → thông báo: "đấy, nhé". Người nói cho người nghe biết thông tin mới
# よ dự_đoán

## prediction | 2
触るな。
Đừng chạm!
触るな → Gặp な sau thể từ điển, nhận diện?
> Đây là lệnh CẤM (đừng làm!) | Đây là cảm thán (quá!) | Đây là đồng cảm | Đây là thông báo
= 0
! な sau thể từ điển = CẤM. Hoàn toàn khác なあ (cảm thán). Thay đổi NGHĨA câu!
# な cấm dự_đoán

## prediction | 2
明日休みだって。
Nghe nói ngày mai nghỉ.
明日休みだって → Gặp って cuối câu, nhận diện?
> Nghe nói / trích dẫn lời người khác | Tự hỏi bản thân | Tìm đồng cảm | Nhấn mạnh mạnh
= 0
! って → nghe nói: truyền đạt thông tin từ người khác. Rất phổ biến trong manga/hội thoại
# って dự_đoán

## prediction | 2
明日は晴れるかな。
Không biết ngày mai có nắng không nhỉ.
明日は晴れるかな → Gặp かな cuối câu, nhận diện?
> Người viết đang TỰ HỎI bản thân | Người viết đang thông báo | Người viết đang cấm | Người viết đang tìm đồng cảm
= 0
! かな → tự hỏi: "không biết...không nhỉ". Suy nghĩ bên trong, không hỏi ai cụ thể
# かな dự_đoán

## chunking | 1
いい天気ですね
Thời tiết đẹp nhỉ.
> いい天気です | ね
! Nội dung chính: "thời tiết đẹp" | ね = trợ từ cuối câu (giọng điệu). Tách riêng để nhận ra đâu là nội dung, đâu là sắc thái
# ね chunking

## chunking | 1
もう遅いですよ
Muộn rồi đấy!
> もう遅いです | よ
! Nội dung chính: "đã muộn rồi" | よ = trợ từ cuối câu (giọng điệu). Tách riêng để nhận ra đâu là nội dung, đâu là sắc thái
# よ chunking

## chunking | 2
先生は「静かに」と言いましたよ
Thầy đã nói "im lặng" đấy.
> 先生は | 「静かに」と | 言いましたよ
! 先生は = chủ đề | 「静かに」と = nội dung trích dẫn | 言いましたよ = hành động + giọng điệu
# と よ chunking

## chunking | 2
明日は休みですよね
Ngày mai nghỉ nhỉ?
> 明日は | 休みです | よね
! 明日は = chủ đề thời gian | 休みです = nội dung chính | よね = giọng điệu (vừa đồng ý vừa xác nhận)
# よね chunking

## chunking | 2
田中さん来ないって
Tanaka bảo không đến.
> 田中さん | 来ない | って
! 田中さん = người được nhắc đến | 来ない = nội dung (không đến) | って = nguồn thông tin (nghe nói)
# って chunking

## pair_distinction | 2
きれいだなあ。/ 触るな。
Đẹp quá. / Đừng chạm!
Câu nào là lệnh CẤM?
> きれいだなあ。(なあ sau tính từ = cảm thán) | 触るな。(な sau thể từ điển = cấm)
= 触るな。(な sau thể từ điển = cấm)
! なあ sau tính từ/danh từ = cảm thán "quá". な sau động từ thể từ điển = CẤM "đừng". Hoàn toàn khác!
# な なあ phân_biệt cấm

## pair_distinction | 2
いいなあ。/ 行くな。
Tốt quá. / Đừng đi!
Câu nào mang nghĩa CẢM THÁN?
> いいなあ。(なあ = cảm thán, tự nói) | 行くな。(な = cấm, mệnh lệnh)
= いいなあ。(なあ = cảm thán, tự nói)
! Nhìn từ đứng trước: tính từ + なあ = cảm thán. Động từ thể từ điển + な = cấm
# なあ な phân_biệt

## pair_distinction | 2
いい天気ですね。/ これはおいしいですよ。
Thời tiết đẹp nhỉ. / Cái này ngon đấy!
Câu nào người nói THÔNG BÁO thông tin mới?
> いい天気ですね。(ね = tìm đồng cảm, cả 2 đã biết) | これはおいしいですよ。(よ = thông báo, người nghe chưa biết)
= これはおいしいですよ。(よ = thông báo, người nghe chưa biết)
! ね = cả 2 đã biết, tìm đồng cảm. よ = người nói biết, người nghe chưa biết → thông báo
# ね よ phân_biệt

## pair_distinction | 2
明日は晴れるかな。/ 明日は休みだって。
Không biết ngày mai có nắng không nhỉ. / Nghe nói ngày mai nghỉ.
Câu nào là TỰ HỎI bản thân?
> 明日は晴れるかな。(かな = tự hỏi) | 明日は休みだって。(って = nghe nói từ người khác)
= 明日は晴れるかな。(かな = tự hỏi)
! かな = tự hỏi (suy nghĩ bên trong). って = nghe nói (thông tin từ bên ngoài)
# かな って phân_biệt

## packaging | 2
触るな。
Đừng chạm!
🔒 触るな → nhận diện giọng điệu?
> 🔒 "chạm" + な sau thể từ điển → lệnh CẤM → "ĐỪNG chạm!" | 🔒 "chạm" + な = cảm thán → "chạm quá!" | 🔒 "chạm" → ね = đồng cảm | 🔒 "chạm" → よ = thông báo
= 🔒 "chạm" + な sau thể từ điển → lệnh CẤM → "ĐỪNG chạm!"
! な sau thể từ điển = CẤM. Đây là trường hợp duy nhất trợ từ cuối THAY ĐỔI nghĩa câu hoàn toàn
# な cấm đóng_gói

## packaging | 2
田中さん、来ないって。
Tanaka bảo không đến.
🔒 来ないって → nhận diện giọng điệu?
> 🔒 "không đến" + って = nghe nói → "NGHE NÓI không đến" (nguồn: người khác) | 🔒 "không đến" + ね = đồng cảm → "không đến nhỉ" | 🔒 "không đến" + よ = thông báo → "không đến đấy" | 🔒 "không đến" + かな = tự hỏi → "không đến sao nhỉ"
= 🔒 "không đến" + って = nghe nói → "NGHE NÓI không đến" (nguồn: người khác)
! って = nghe nói / trích dẫn. Thêm thông tin về NGUỒN: đây là lời người khác, không phải mình nói
# って đóng_gói

## packaging | 2
明日は休みですよね。
Ngày mai nghỉ nhỉ?
🔒 休みですよね → nhận diện giọng điệu?
> 🔒 "nghỉ" + よね = vừa thông báo vừa tìm đồng ý → "nghỉ nhỉ?" | 🔒 "nghỉ" + ね = đồng cảm → "nghỉ nhỉ" (chắc chắn hơn) | 🔒 "nghỉ" + よ = thông báo → "nghỉ đấy!" | 🔒 "nghỉ" + って = nghe nói → "nghe nói nghỉ"
= 🔒 "nghỉ" + よね = vừa thông báo vừa tìm đồng ý → "nghỉ nhỉ?"
! よね = よ + ね: "mình biết/nghĩ là nghỉ" (よ) + "đúng không?" (ね). Phổ biến hơn cả ね/よ riêng lẻ
# よね đóng_gói

## reorder | 1
いい天気ですね。
Thời tiết đẹp nhỉ.
> ね | いい天気です
= いい天気です | ね
# ね reorder

## reorder | 1
もう遅いですよ。
Muộn rồi đấy!
> よ | もう遅いです
= もう遅いです | よ
# よ reorder

## reorder | 2
明日は休みですよね。
Ngày mai nghỉ nhỉ?
> よね | 休みです | 明日は
= 明日は | 休みです | よね
# よね reorder

## reorder | 2
田中さん来ないって。
Tanaka bảo không đến.
> って | 来ない | 田中さん
= 田中さん | 来ない | って
# って reorder

## quick_translate | 1
いい天気ですね。
Thời tiết đẹp nhỉ.
いい天気です / ね。 → Chọn bản dịch đúng:
> Thời tiết đẹp nhỉ. | Thời tiết đẹp đấy! | Thời tiết đẹp quá! | Nghe nói thời tiết đẹp.
= Thời tiết đẹp nhỉ.
! ね = "nhỉ" → tìm đồng cảm. Không phải thông báo (よ→đấy) hay cảm thán (なあ→quá)
# ね dịch

## quick_translate | 1
もう遅いですよ。
Muộn rồi đấy!
もう遅いです / よ。 → Chọn bản dịch đúng:
> Muộn rồi đấy! | Muộn rồi nhỉ. | Muộn rồi quá. | Nghe nói muộn rồi.
= Muộn rồi đấy!
! よ = "đấy" → thông báo. Người nói cảnh báo người nghe (người nghe chưa biết)
# よ dịch

## quick_translate | 2
触るな。
Đừng chạm!
触る / な。 → Chọn bản dịch đúng:
> Đừng chạm! | Chạm quá! | Chạm nhỉ. | Chạm đấy.
= Đừng chạm!
! な sau thể từ điển = CẤM. 触る + な = "ĐỪNG chạm!" (không phải cảm thán!)
# な cấm dịch

## quick_translate | 2
きれいだなあ。
Đẹp quá.
きれいだ / なあ。 → Chọn bản dịch đúng:
> Đẹp quá. | Đừng đẹp. | Đẹp nhỉ. | Nghe nói đẹp.
= Đẹp quá.
! なあ = cảm thán: "QUÁ!" Tự mình thốt lên (khác ね = hỏi người khác)
# なあ cảm_thán dịch

## quick_translate | 2
明日休みだって。
Nghe nói ngày mai nghỉ.
明日休みだ / って。 → Chọn bản dịch đúng:
> Nghe nói ngày mai nghỉ. | Ngày mai nghỉ nhỉ. | Ngày mai nghỉ đấy! | Không biết ngày mai có nghỉ không.
= Nghe nói ngày mai nghỉ.
! って = nghe nói / trích dẫn. Thông tin từ NGUỒN KHÁC, không phải mình biết trực tiếp
# って dịch

## quick_translate | 1
行くぞ！
Đi thôi!
行く / ぞ！ → Chọn bản dịch đúng:
> Đi thôi! (quyết tâm) | Đi nhỉ. | Đi đấy. | Đừng đi.
= Đi thôi! (quyết tâm)
! ぞ = nhấn mạnh mạnh, quyết tâm (nam, thân mật): "ĐI THÔI!"
# ぞ dịch

## quick_translate | 2
そうですよね。
Đúng thế nhỉ.
そうです / よね。 → Chọn bản dịch đúng:
> Đúng thế nhỉ. | Đúng thế đấy! | Đúng thế quá. | Nghe nói đúng thế.
= Đúng thế nhỉ.
! よね = よ + ね: vừa đồng ý (よ) vừa tìm xác nhận (ね). Rất phổ biến trong hội thoại
# よね dịch

## quick_translate | 2
明日は晴れるかな。
Không biết ngày mai có nắng không nhỉ.
明日は晴れる / かな。 → Chọn bản dịch đúng:
> Không biết ngày mai có nắng không nhỉ. | Ngày mai nắng đấy. | Ngày mai nắng nhỉ. | Nghe nói ngày mai nắng.
= Không biết ngày mai có nắng không nhỉ.
! かな = tự hỏi: "không biết...không nhỉ". Suy nghĩ bên trong, không chắc chắn
# かな dịch
