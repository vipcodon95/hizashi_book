-- Hizashi book SQL — Email Công Việc / メール業務
-- curriculum_id = 8001
-- node count = 71
-- generated từ release/books/01_email_vi/
-- KHÔNG sửa thủ công file này. Chạy lại scripts/build_sql_from_release.py.

BEGIN;

-- 1) Curricula
INSERT INTO curricula (id, level, type, category, title, introduction, introduction_jp, tenant_id, is_system, is_public, is_active, is_deleted, free_preview_count, status, created_at) VALUES (8001, NULL, 'markdown_book', 'BJT', 'Email Công Việc', 'Bộ sách Hizashi — Email Công Việc', 'Hizashi シリーズ — メール業務', 'system', TRUE, TRUE, TRUE, FALSE, 20, 'published', NOW()) ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, introduction = EXCLUDED.introduction, introduction_jp = EXCLUDED.introduction_jp, category = EXCLUDED.category, tenant_id = EXCLUDED.tenant_id, is_system = EXCLUDED.is_system, is_public = EXCLUDED.is_public, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, free_preview_count = EXCLUDED.free_preview_count, status = EXCLUDED.status, updated_at = NOW();

-- 2) Curriculum nodes
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001001, 8001, NULL, 'markdown_book', 'Rule 01 — Viết mail là xin hai phút chú ý của một người bận rộn', '# Rule 01 — Viết mail là xin hai phút chú ý của một người bận rộn
> **Luận điểm.** Hộp mail của chị Hương sáng thứ Hai có 80 mail chưa đọc. Mỗi mail bạn gửi đi là đang xin 2 phút chú ý của một người đã có 80 việc khác. Viết thế nào để 2 phút đó thật sự *đáng* là câu hỏi phải tự hỏi trước khi gõ phím đầu tiên.
>
> Từ khóa của rule này: **"hai phút chú ý"**.

## Bối cảnh
Em Dũng phát hiện 3 rủi ro ở Dự án Bình Minh và cần chị Hương — sếp trực tiếp — dành thời gian bàn hướng xử lý.

## Ví dụ XẤU
> **Tiêu đề:** Về việc dự án
>
> Chị Hương,
>
> Em muốn trao đổi với chị một vài điều. Dạo này em thấy tiến độ dự án có một số vấn đề cần chị xem xét. Em nghĩ là chúng ta cần họp để bàn thêm. Chị rảnh khi nào ạ?
>
> Em Dũng

**Vì sao chưa ổn.** Chị Hương đọc hết mail rồi vẫn phải gọi Dũng hỏi ngược: "vấn đề gì, cần họp bao lâu, khung giờ nào". Dũng đã tốn 2 phút của sếp mà không đưa được thông tin nào hành động được. Thực chất, Dũng đang đẩy việc của mình (nghĩ giúp) sang cho sếp.

## Ví dụ TỐT
> **Tiêu đề:** [Bình Minh] Xin 30 phút bàn 3 rủi ro tiến độ — tuần này
>
> Chị Hương,
>
> Em xin báo chị 3 rủi ro em phát hiện tuần qua ở Dự án Bình Minh:
>
> - Anh Khoa (FE) xin nghỉ từ 05/05, chưa có người thay.
> - API bên Hakuō trễ 1 tuần so với cam kết.
> - Scope bị mở rộng do feedback từ team CS của khách.
>
> Em đề xuất họp 30 phút với chị + anh Tuấn trong các khung sau:
>
> - Thứ Tư 14/05, 14:00–14:30
> - Thứ Năm 15/05, 09:00–09:30
>
> Chị chọn khung phù hợp giúp em ạ. Em sẽ gửi tài liệu tóm tắt trước cuộc họp 1 tiếng.
>
> Em cảm ơn chị.
> Dũng

## Biến thể — Khi mail chỉ để cập nhật
Nguyên tắc "hai phút đáng" vẫn đúng cả khi bạn không nhờ gì. Thay vì:

> "Gửi chị báo cáo tuần, chị xem khi nào rảnh."

Hãy viết:

> "Báo cáo tuần 19 — 3 điểm chị cần biết: (1) hạng mục A ổn, đúng tiến độ; (2) hạng mục B trễ 2 ngày, em đang xử lý, chi tiết ở mục 2; (3) hạng mục C cần chị duyệt trước 16/05, xem mục 3."

Chị chưa cần mở file đính kèm đã nắm được tình hình.

## Cụm từ mẫu
> **"Em viết mail này để chị/anh không mất thêm thời gian gọi hỏi ngược."**

*Dùng khi:* Đặt câu này (hoặc biến thể) ở dòng dẫn nhập, nó buộc bạn phải rà lại mail của mình xem có tự trả lời hết các câu hỏi khả dĩ chưa — *ai, việc gì, khi nào, làm sao, tại sao*.', 'system', 1, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001002, 8001, NULL, 'markdown_book', 'Rule 02 — Đổi trục câu từ "tôi muốn" sang "bạn cần biết"', '# Rule 02 — Đổi trục câu từ "tôi muốn" sang "bạn cần biết"
> **Luận điểm.** Hầu hết email kém hiệu quả có cùng một khuyết tật: chủ ngữ của mọi câu là "tôi/em". *"Em muốn gửi chị…"*, *"Em nghĩ là…"*, *"Em đề xuất…"*. Người đọc phải tự dịch ngược: "Vậy tôi phải làm gì". Mail tốt đảo trục — chủ ngữ là *chị / anh* + động từ cần hành động.
>
> Từ khóa của rule này: **"trục bạn cần biết"**.

## Bối cảnh
Dũng cần chị Hương duyệt 80 triệu phát sinh cho Dự án Bình Minh.

## Ví dụ XẤU (trục "em")
> Chị Hương,
>
> Em đang làm Bình Minh thì em thấy cần phát sinh thêm 80 triệu cho chi phí thuê ngoài. Em nghĩ là chị cần xem xét duyệt. Em đã làm bản dự toán đính kèm. Em mong chị phản hồi sớm.
>
> Em Dũng

**Vì sao chưa ổn.** Năm câu thì cả năm chủ ngữ "em". Chị Hương phải dịch ngược từng câu: "À, em này đang xin tôi duyệt… bao nhiêu… trước khi nào… dựa trên gì?". Trục "em" khiến người đọc làm việc thay cho người viết.

## Ví dụ TỐT (trục "chị")
> Chị Hương,
>
> Chị cần duyệt phát sinh 80 triệu cho Dự án Bình Minh, trước thứ Năm 15/05, để em kịp ký PO với nhà thầu phụ tuần sau.
>
> Lý do phát sinh và bản dự toán em đính kèm. Chị chỉ cần xem phần tô vàng (3 dòng, ~30 giây). Phần còn lại là chi tiết để chị tham khảo nếu cần.
>
> Em cảm ơn chị.
> Dũng

**So sánh 1-1.** Cùng một thông tin, nhưng ở bản TỐT chị Hương biết ngay sau câu đầu: *mình cần làm gì, bao nhiêu tiền, deadline nào, hậu quả nếu không duyệt kịp*.

## Biến thể — Khi "bạn cần" nghe hơi ép
Trục "bạn" không có nghĩa là ra lệnh. Khi cần mềm hơn, dùng "chị có thể" hoặc "nhờ chị":

> "Chị có thể duyệt giúp em phát sinh 80 triệu cho Bình Minh trước 15/05 không ạ?"

Vẫn là trục bạn, nhưng dưới dạng lời nhờ.

## Cụm từ mẫu
> **"Chị/anh cần [hành động cụ thể] trước [ngày] để em [kết quả cụ thể]."**

*Dùng khi:* mở đầu mọi mail xin phê duyệt, xin ý kiến, xin hành động. Ba chỗ trong ngoặc vuông là ba ô bắt buộc phải điền — nếu điền được cả ba, bạn đã chuyển thành công sang trục bạn cần biết.', 'system', 2, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001003, 8001, NULL, 'markdown_book', 'Rule 03 — Nguyên tắc 3 chạm: gửi — nhận — xác nhận là đủ đóng gói một trao đổi', '# Rule 03 — Nguyên tắc 3 chạm: gửi — nhận — xác nhận là đủ đóng gói một trao đổi
> **Luận điểm.** Một trao đổi email hiệu quả kết thúc trong **3 mail**: (1) bạn gửi yêu cầu kèm *đủ thông tin cần thiết*, (2) người kia trả lời / chọn, (3) bạn xác nhận ghi nhận. Hơn 3 mail là dấu hiệu bạn đã đóng gói thiếu ở mail đầu.
>
> Từ khóa của rule này: **"3 chạm"**.

## Bối cảnh
Dũng cần chốt lịch họp review với anh Matsumoto bên khách hàng Hakuō.

## Ví dụ XẤU — 5 chạm, mất 2,5 ngày
> **①Dũng:** "Anh Matsumoto, em muốn sắp xếp một buổi họp review với anh."
>
> **②Matsumoto:** "Ok em, khi nào thuận tiện?"
>
> **③Dũng:** "Thứ Tư 14/05 hoặc thứ Năm 15/05 anh rảnh không ạ?"
>
> **④Matsumoto:** "Thứ Tư em, mấy giờ?"
>
> **⑤Dũng:** "14:00 đến 15:00 tại văn phòng Hakuō được không ạ?"

**Vì sao chưa ổn.** Đã qua 5 mail chưa chốt xong. Mỗi lượt gửi–nhận mất nửa ngày vì anh Matsumoto bận. Tổng cộng mất 2,5 ngày chỉ để đặt 1 cuộc họp, trong khi thông tin cần cho cuộc họp đã có thể trao đổi xong trong khoảng đó.

## Ví dụ TỐT — 3 chạm, xong trong buổi sáng
> **①Dũng:** "Anh Matsumoto, em muốn sắp xếp buổi review 60 phút tại văn phòng Hakuō. Em đề xuất 3 khung:
> - Thứ Tư 14/05, 14:00–15:00
> - Thứ Năm 15/05, 09:30–10:30
> - Thứ Năm 15/05, 15:00–16:00
>
> Anh chọn khung phù hợp, hoặc gợi ý khung khác giúp em ạ."
>
> **②Matsumoto:** "Thứ Năm 15/05, 09:30 nhé em."
>
> **③Dũng:** "Em ghi nhận. Hẹn anh thứ Năm 15/05, 09:30 tại văn phòng Hakuō. Em sẽ gửi agenda trước 1 ngày."

**Điểm khác biệt.** Mail ①  ở bản TỐT đã đóng gói sẵn 3 quyết định mà bản XẤU phải chia làm 3 lượt: *thời lượng (60p)*, *địa điểm (Hakuō)*, *khung giờ (3 phương án)*. Anh Matsumoto chỉ cần 1 câu trả lời là chốt.

## Biến thể / Chiều ngược — Khi đối phương chủ động
Nguyên tắc 3 chạm vẫn giữ được khi người kia mở đầu:

> **①Minh:** "Dũng ơi, cho anh xin thời gian em rảnh tuần tới để review nhé."
>
> **②Dũng:** "Dạ, em rảnh các khung sau, anh chọn giúp em:
> - Thứ Tư 14/05, 14:00–16:00
> - Thứ Năm 15/05, 09:00–11:00
> - Thứ Sáu 16/05, 14:00–16:00
>
> Em có thể qua văn phòng Hakuō hoặc họp online, tùy anh thuận tiện."
>
> **③Minh:** "Thứ Năm 09:30 em nhé, anh qua văn phòng các em."

Chìa khóa vẫn là một bên (ở đây là Dũng) chủ động đóng gói sẵn các phương án ngay từ lần chạm thứ hai.

## Cụm từ mẫu
> **"Em đề xuất [N phương án cụ thể]. Anh/chị chọn khung phù hợp hoặc gợi ý khung khác giúp em nhé."**

*Dùng khi:* bất cứ khi nào cần đối phương ra lựa chọn — lịch hẹn, chọn phương án, chọn mức ngân sách, chọn hạng mục ưu tiên. Câu này gom sẵn mọi phương án để đối phương chỉ cần 1 lượt reply là xong.', 'system', 3, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001004, 8001, NULL, 'markdown_book', 'Rule 04 — Cửa sổ 24 giờ vàng', '# Rule 04 — Cửa sổ 24 giờ vàng
> **Luận điểm.** Tiêu chuẩn ngầm ở hầu hết môi trường công sở chuyên nghiệp là **24 giờ**: nhận mail hôm nay thì trả lời trước giờ đi làm ngày mai. Kể cả khi chưa có câu trả lời đầy đủ, bạn vẫn phải gửi một mail xác nhận "đã nhận, sẽ trả lời vào X". Im lặng quá 24 giờ là tín hiệu bất ổn — dù bạn có đang thật sự xử lý.
>
> Từ khóa của rule này: **"24 giờ vàng"**.

## Bối cảnh
Anh Matsumoto (Hakuō) gửi yêu cầu Dũng cung cấp báo cáo sự cố cho một sự cố xảy ra tuần trước. Việc tổng hợp cần 3 ngày.

## Ví dụ XẤU — im lặng 3 ngày
> - 09:00 thứ Hai: Anh Matsumoto gửi yêu cầu.
> - *(không hồi âm)*
> - *(không hồi âm)*
> - *(không hồi âm)*
> - 17:00 thứ Năm: Dũng gửi báo cáo hoàn chỉnh 15 trang.

**Vì sao chưa ổn.** Từ thứ Hai đến thứ Năm, anh Matsumoto không biết:

- Dũng có nhận được yêu cầu không.
- Dũng có đang làm không.
- Khi nào Dũng xong.

Báo cáo thứ Năm dù chất lượng đến đâu cũng đã đến tay một người mất niềm tin. Anh Matsumoto có thể đã gọi sếp của Dũng trong 3 ngày im lặng đó — và đó là một cuộc gọi không bao giờ tốt.

## Ví dụ TỐT — trả lời nhẹ trong cửa sổ 24h
> - **09:00 thứ Hai:** Anh Matsumoto gửi yêu cầu.
> - **14:00 thứ Hai (cùng ngày):** Dũng phản hồi ngắn:
>
> > "Anh Matsumoto, em đã nhận yêu cầu. Em đang tổng hợp dữ liệu từ 3 team và dự kiến gửi anh báo cáo hoàn chỉnh **trước 17:00 thứ Năm 15/05**. Nếu anh cần ưu tiên một phần nào đó sớm hơn, anh cho em biết để em sắp xếp."
>
> - **16:30 thứ Năm:** Dũng gửi báo cáo.

**Điểm khác biệt.** Cùng một lượng công việc, nhưng bản TỐT có **điểm chạm trong 24 giờ đầu** để xác nhận đã nhận và cam kết thời gian. Anh Matsumoto biết rõ phải đợi đến thứ Năm, và thấy Dũng chủ động mở cửa nếu có ưu tiên thay đổi.

## Biến thể — Khi bạn là người đang chờ
Nếu *bạn* đã gửi mail quan trọng và sau 24 giờ chưa có phản hồi, đừng suy diễn và đừng để quá 48h. Gửi một nhắc nhẹ:

> "Anh Matsumoto, em nhắc lại mail bên dưới — em không chắc mail có vào hộp spam không ạ. Em đang đợi phản hồi của anh để triển khai tiếp. Nếu anh bận, em có thể đợi đến mai, nhưng em cần biết dự kiến là khi nào."

**Nguyên tắc:** nhắc 1 lần bằng mail. Nếu vẫn không có phản hồi, chuyển kênh — gọi điện hoặc nhắn Zalo. Không nhắc mail lần 2.

## Cụm từ mẫu
> **"Em đã nhận mail của anh/chị. Em sẽ phản hồi đầy đủ trước [ngày và giờ cụ thể]."**

*Dùng khi:* bạn chưa thể trả lời đầy đủ trong ngày. Câu này giữ niềm tin trong thời gian bạn xử lý sâu, và đặt ra một cam kết bạn có thể quản lý được — quan trọng hơn nhiều một mail hoàn chỉnh đến muộn.', 'system', 4, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001005, 8001, NULL, 'markdown_book', 'Rule 05 — Tự hỏi "Tôi muốn người đọc làm gì sau khi đọc?"', '# Rule 05 — Tự hỏi "Tôi muốn người đọc làm gì sau khi đọc?"
> **Luận điểm.** Trước khi bấm Send, dừng 10 giây và tự trả lời một câu duy nhất: *"Sau khi đọc mail này, tôi muốn người đọc làm **chính xác** cái gì?"*. Nếu câu trả lời không phải một **động từ cụ thể** — *duyệt*, *chọn 1 trong 3*, *ký*, *gọi cho em Dũng trước 15h* — thì mail chưa sẵn sàng gửi.
>
> Từ khóa của rule này: **"CTA rõ"** (call-to-action rõ).

## Bối cảnh
Em Linh — thực tập sinh bên Marketing — viết mail đầu tiên gửi sếp chị Hương, đề xuất ý tưởng chiến dịch mạng xã hội cho Dự án Bình Minh.

## Ví dụ XẤU — mail không có CTA
> Chị Hương ạ,
>
> Em là Linh, thực tập sinh bên Marketing. Em có ý tưởng về chiến dịch mạng xã hội cho Dự án Bình Minh. Em nghĩ là có thể làm theo 3 hướng: hướng A tập trung Facebook, hướng B dùng TikTok, hướng C kết hợp cả hai. Em viết gửi chị tham khảo ạ.
>
> Em Linh

**Vì sao chưa ổn.** Chị Hương đọc xong không biết mình cần làm gì. *Đọc để biết? Chọn một hướng? Góp ý nội dung? Duyệt để Linh bắt tay làm?* Mail này gần như chắc chắn sẽ nằm trong hộp "đọc sau" vô thời hạn — không phải vì chị không quan tâm, mà vì chị không biết chị đang phải *hành động* gì.

## Ví dụ TỐT — CTA rõ, deadline rõ
> Chị Hương ạ,
>
> Em là Linh, thực tập sinh bên Marketing. Em đã phác 3 hướng chiến dịch mạng xã hội cho Dự án Bình Minh (tài liệu đính kèm, dài 2 trang).
>
> Em xin chị **chọn giúp em 1 trong 3 hướng (A / B / C) trước thứ Sáu 09/05** để em kịp lên kế hoạch chi tiết tuần tới.
>
> Nếu chị cần em thuyết minh thêm trước khi chọn, em có thể trình bày trực tiếp 15 phút vào bất cứ khung giờ nào chị thu xếp được.
>
> Em cảm ơn chị.
> Linh

**So sánh.** Cùng một ý tưởng, cùng một mức độ cầu thị — nhưng bản TỐT gọi đúng tên hành động chị Hương phải làm (*chọn 1 trong 3*), đưa deadline (*trước thứ Sáu 09/05*) và có **phương án dự phòng** nếu chị chưa đủ thông tin để chọn (thuyết minh 15 phút).

## Biến thể — Khi không cần người đọc làm gì
Nếu CTA của bạn thật sự là "đọc để biết, không cần phản hồi", **hãy nói thẳng điều đó**:

> "Mail này chỉ để chị nắm thông tin, em không cần chị phản hồi."

Một câu nhỏ này cứu chị Hương khỏi áp lực "có phải mình đang bị chờ hành động gì không". Đây là biểu hiện của sự tôn trọng, không phải lười biếng.

## Cụm từ mẫu
> **"Em xin chị/anh [động từ cụ thể] [cái gì cụ thể] trước [ngày cụ thể] để em [mục đích cụ thể]."**

*Dùng khi:* mọi mail có yêu cầu hành động. Bốn ô *cụ thể* là bốn kiểm tra bắt buộc — nếu điền được cả bốn, CTA của bạn đã rõ.', 'system', 5, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001006, 8001, NULL, 'markdown_book', 'Rule 06 — Bảy từ ở dòng tiêu đề quyết định mail được mở hay không', '# Rule 06 — Bảy từ ở dòng tiêu đề quyết định mail được mở hay không
> **Luận điểm.** Trên màn hình điện thoại — nơi chị Hương kiểm mail 70% thời gian — chỉ khoảng **45–55 ký tự đầu** của tiêu đề được hiển thị, tương đương **7–10 từ tiếng Việt có dấu**. Nếu 7 từ đó không trả lời được *"mail này về cái gì và tôi có cần mở ngay không"*, mail của bạn bị đẩy xuống cuối danh sách chờ — có khi vĩnh viễn.
>
> Từ khóa của rule này: **"7 từ quyết định"**.

## Bối cảnh
Dũng cần chị Hương duyệt 80 triệu phát sinh cho Dự án Bình Minh trước thứ Năm 15/05. Dưới đây là 4 cách đặt tiêu đề, sắp xếp từ kém đến tốt.

## Ví dụ XẤU — bốn kiểu lỗi thường gặp
> **❌ Tiêu đề 1 — Quá chung:**
> "Về việc dự án"
> *Dự án nào, em đang xin gì?*
>
> **❌ Tiêu đề 2 — Vô thông tin:**
> "Báo cáo gửi chị"
> *Báo cáo gì, có cần đọc ngay không?*
>
> **❌ Tiêu đề 3 — Quá dài, phần quan trọng bị cắt:**
> "Kính gửi chị Hương — về chuyện phát sinh ngân sách Dự án Bình Minh mà em đang xử lý…"
> *Mobile cắt ở "Kính gửi chị Hương — về chuyện phá…", phần thực sự quan trọng (80tr, deadline) không hiện.*
>
> **❌ Tiêu đề 4 — Cụt, thiếu hành động:**
> "Bình Minh ngân sách"
> *Biết về ngân sách, nhưng để làm gì? Duyệt? Báo cáo? Xin ý kiến?*

**Vì sao chưa ổn.** Bốn tiêu đề trên có cùng một đặc điểm: **buộc chị Hương phải mở mail mới biết mình cần làm gì**. Khi có 80 mail chờ, mail nào không trả lời được câu đó ở dòng tiêu đề đều bị hoãn.

## Ví dụ TỐT — công thức 4 thành phần
Bốn tiêu đề dưới đây đều dưới 55 ký tự, áp dụng cùng một công thức:

> **✅ Xin phê duyệt:**
> "[Bình Minh] Xin duyệt phát sinh 80tr — trước 15/05"
>
> **✅ Báo cáo định kỳ:**
> "[Bình Minh] Báo cáo tuần 20 — 3 điểm chị cần biết"
>
> **✅ Xin thời gian:**
> "[Bình Minh] Xin 30p họp rủi ro tiến độ — tuần này"
>
> **✅ Tình huống khẩn:**
> "[Bình Minh] Urgent: API Hakuō trễ, xin ý kiến"

**Công thức chung của cả bốn:**

1. **`[Tag dự án]`** — chị lọc nhanh theo project.
2. **`Động từ rõ`** — *Xin duyệt*, *Xin họp*, *Báo cáo*, *Xin ý kiến*. Người đọc biết mail yêu cầu hành động gì.
3. **`Đối tượng cụ thể`** — số tiền, số phút, tên hạng mục.
4. **`Deadline hoặc mức độ`** — *trước 15/05*, *tuần này*, *Urgent*.

## Biến thể — Khi mail chỉ để thông báo
Nếu mail không yêu cầu hành động, tiêu đề vẫn phải báo rõ điều đó để đối phương không phải bận tâm:

> "[Bình Minh] FYI — Hakuō đã ký phụ lục hợp đồng"

Chữ **FYI** (for your information) hoặc **[Thông tin]** là tín hiệu "không cần làm gì, chỉ để biết".

## Cụm từ mẫu
> **`[Tag dự án]` + `Động từ rõ` + `Đối tượng cụ thể` + `Deadline/Mức độ`**

*Dùng khi:* mọi tiêu đề mail công việc. Công thức 4 thành phần này áp dụng được cho ~90% mail. Nếu bạn không điền được 4 thành phần trong 55 ký tự, mail của bạn đang chứa nhiều chủ đề — xem Rule 07.', 'system', 6, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001007, 8001, NULL, 'markdown_book', 'Rule 07 — Một mail một chủ đề', '# Rule 07 — Một mail một chủ đề
> **Luận điểm.** Mỗi mail chỉ bàn **một việc**. Khi bạn nhét 2 việc khác nhau vào cùng 1 mail, xác suất lớn là phần được trả lời chỉ là phần đầu; phần thứ hai bị đọc lướt, rồi bị quên, rồi nằm im trong thread cho đến khi bạn phải gửi mail nhắc. Đây là cách tự tạo việc cho chính mình.
>
> Từ khóa của rule này: **"một mail một việc"**.

## Bối cảnh
Dũng có 2 việc cần chị Hương trong sáng thứ Hai:
- Duyệt ngân sách phát sinh 80 triệu cho Dự án Bình Minh.
- Chọn khung giờ tham dự buổi review tuần này.

Hai việc không liên quan logic với nhau, chỉ liên quan ở chỗ *cùng gửi cho chị Hương*.

## Ví dụ XẤU — gộp 2 việc
> **Tiêu đề:** [Bình Minh] Xin duyệt phát sinh + chốt giờ review
>
> Chị Hương,
>
> Em có 2 việc cần chị giúp:
>
> 1. Chị duyệt giúp em phát sinh 80 triệu cho Bình Minh (file đính kèm).
> 2. Chị chọn giúp em 1 trong 3 khung giờ review tuần này:
>    - Thứ Tư 14:00, Thứ Năm 09:30, Thứ Sáu 14:00.
>
> Em cảm ơn chị.
> Dũng

**Reply thực tế của chị Hương:**

> "Ok em duyệt."

**Vì sao chưa ổn.** Chị Hương trả lời *câu hỏi đầu tiên đập vào mắt* (duyệt budget). Câu hỏi thứ hai về khung giờ bị bỏ rơi. Dũng phải gửi mail thứ ba nhắc lại — và bây giờ thread mang tiêu đề "Xin duyệt phát sinh" nhưng nội dung lại đang bàn về lịch họp. Khi cần tra cứu sau này, không ai biết tìm lịch họp ở đâu.

## Ví dụ TỐT — tách 2 mail
> **Mail 1:**
> Tiêu đề: [Bình Minh] Xin duyệt phát sinh 80tr — trước 15/05
> (nội dung ngắn, chỉ xin duyệt)
>
> **Mail 2:**
> Tiêu đề: [Bình Minh] Chốt khung giờ review tuần này
> (nội dung ngắn, chỉ chọn giờ)

Chị Hương có 2 mail riêng. Chị trả lời mail 1, sau đó chị trả lời mail 2. Cả 2 đều không bị quên vì mỗi mail chỉ có 1 câu hỏi.

**Thêm lợi ích:** ba tháng sau khi Dũng cần tìm lại ngày chốt lịch review, Dũng chỉ cần search "Chốt khung giờ review" và tìm thấy ngay. Thread đúng chủ đề là một dạng *biên bản tự động*.

## Biến thể — Khi 2 việc thật sự gắn với nhau
Có những trường hợp 2 việc không thể tách vì chúng phụ thuộc lẫn nhau:

- Budget phát sinh *phụ thuộc vào* kết quả review: cần biết review có đồng ý mở scope không mới quyết được budget.

Khi đó **phải gộp**, nhưng phải áp dụng **Rule 08** (tiêu đề hai vế) để người nhận biết trước mail có 2 phần.

## Cụm từ mẫu
> **"Hai việc khác nhau = hai mail khác nhau = hai thread khác nhau."**

*Dùng khi:* đứng trước nút Send và thấy mail của mình có từ "và" nối 2 yêu cầu lớn. Đó là tín hiệu phải tách thành 2 mail.', 'system', 7, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001008, 8001, NULL, 'markdown_book', 'Rule 08 — Tiêu đề hai vế, ngăn bằng dấu "|"', '# Rule 08 — Tiêu đề hai vế, ngăn bằng dấu "|"
> **Luận điểm.** Khi hai việc thật sự gắn với nhau và bắt buộc phải đi chung một mail (xem Rule 07 để chắc chắn bạn đã tách được), tiêu đề phải **báo trước** cho người đọc rằng mail có hai vế. Quy ước đơn giản và dễ đọc: dùng dấu **`|`** (sổ đứng) làm phân cách giữa hai vế.
>
> Từ khóa của rule này: **"tiêu đề hai vế"**.

## Bối cảnh
Chị Hương sắp đi công tác 3 ngày và chỉ còn 10 phút trước khi ra sân bay. Dũng có 2 việc phụ thuộc nhau *phải* gửi ngay: (1) xin duyệt ngân sách phát sinh, (2) xin chị chọn khung họp review để chốt scope — vì *scope review quyết định budget*.

## Ví dụ XẤU — tiêu đề chỉ nói 1 vế
> **Tiêu đề:** [Bình Minh] Xin duyệt phát sinh 80tr
>
> *(nhưng trong body có thêm cả phần chọn giờ review)*

**Vì sao chưa ổn.** Chị Hương đọc tiêu đề, nghĩ "mail xin duyệt", lướt nhanh phần đầu, reply "Ok duyệt", đóng máy ra sân bay. Phần chọn khung giờ review bị bỏ qua vì không được tiêu đề báo trước. Ba ngày sau chị Hương về, lịch review đã trôi.

## Ví dụ TỐT — tiêu đề báo hai vế
> **Tiêu đề:** [Bình Minh] Duyệt budget 80tr | Chốt khung review — trước chị đi công tác

**Tác dụng của dấu `|`:**
- Mắt chị Hương lướt tiêu đề thấy ngay mail có **hai phần**.
- Dấu `|` hiển thị đẹp trên cả desktop và mobile, không bị nhầm với dấu câu khác.
- Khi cần tìm lại, cả hai từ khóa "duyệt budget" và "chốt khung review" đều lọt vào kết quả search.

## Body tương ứng
> Chị Hương,
>
> Vì hai việc này phụ thuộc nhau (scope review sẽ chốt budget), em gộp trong một mail, chia làm 2 phần:
>
> **Phần 1 — Budget 80 triệu phát sinh**
> (3 dòng tóm tắt + file đính kèm)
>
> **Phần 2 — Chọn khung giờ review tuần này**
> - Thứ Tư 14:00 / Thứ Năm 09:30 / Thứ Sáu 14:00
>
> Em cảm ơn chị và chúc chị đi công tác thuận lợi.
> Dũng

Phần 1 và Phần 2 rõ ràng trong body, khớp đúng thứ tự với hai vế trong tiêu đề.

## Biến thể — Khi hai vế cùng mức ưu tiên
Nếu hai vế cùng mức quan trọng, để theo thứ tự nào cũng được nhưng **thứ tự ở tiêu đề phải khớp thứ tự ở body** — mắt người đọc đã được neo theo trật tự tiêu đề.

## Giới hạn — không có "ba vế"
Nếu tiêu đề cần 3 vế trở lên, đó là dấu hiệu mail của bạn đang là **một cuộc họp** — hãy chuyển thành cuộc họp thật, hoặc tách thành 2-3 mail riêng.

## Cụm từ mẫu
> **`[Tag dự án] Việc 1 | Việc 2 — bối cảnh/deadline`**

*Dùng khi:* bắt buộc gộp 2 việc trong một mail. Dấu `|` là "dấu hiệu hai vế" bạn và đội của bạn có thể quy ước dùng chung — sau một thời gian, chỉ cần nhìn dấu đó ở tiêu đề là biết mail cần đọc kỹ cả hai phần.', 'system', 8, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001009, 8001, NULL, 'markdown_book', 'Rule 09 — "Re:" và khi nào nên đặt tiêu đề mới', '# Rule 09 — "Re:" và khi nào nên đặt tiêu đề mới
> **Luận điểm.** Giữ **"Re:"** khi reply trong cùng một chủ đề — email client sẽ gom lại thành *thread* (chuỗi hội thoại) gọn gàng, tra cứu được. Nhưng khi chủ đề đổi, dù vẫn cùng người nhận, **phải bắt đầu một mail mới với tiêu đề mới**. Reply trong thread cũ rồi nói việc khác là cách nhanh nhất để biến hộp mail thành mớ lộn xộn.
>
> Từ khóa của rule này: **"giữ thread, đổi chủ đề"**.

## Bối cảnh
Dũng đang có thread đang chạy với chị Hương về ngân sách Bình Minh (tiêu đề gốc: `[Bình Minh] Xin duyệt phát sinh 80tr — trước 15/05`). Sau khi chị Hương duyệt, Dũng lại muốn hỏi về lịch họp review — một chủ đề mới.

## Ví dụ XẤU — reply trong thread cũ cho việc mới
> **Thread "Xin duyệt phát sinh 80tr":**
>
> **①Dũng:** "Chị duyệt giúp em…"
> **②Chị Hương:** "Ok em duyệt, triển khai đi."
> **③Dũng:** "Em cảm ơn chị. *Tiện đây* chị ơi, tuần sau em muốn chốt khung họp review, chị chọn giúp em 1 trong 3 khung..."

**Vì sao chưa ổn.**
- Ba tháng sau Dũng cần tra lại lịch review → search "khung họp review" không ra, vì tiêu đề thread là "Xin duyệt phát sinh 80tr".
- Nếu chị Hương chỉ đọc tiêu đề lúc lướt hộp mail sẽ nghĩ thread đã xong ở lượt ② và không mở lượt ③.
- Nếu sau này chị Hương forward thread này cho chị Loan (kế toán), chị Loan phải đọc cả phần không liên quan là lịch review.

## Ví dụ TỐT — tách mail mới
Thread cũ đóng lại ở lượt ② (chị Hương đã duyệt).

Dũng mở mail mới, **không reply**:

> **Tiêu đề mới:** [Bình Minh] Chốt khung giờ review tuần này
>
> Chị Hương,
>
> Em xin chị chọn giúp em 1 trong 3 khung cho buổi review tuần này:
> - Thứ Tư 14:00
> - Thứ Năm 09:30
> - Thứ Sáu 14:00
>
> Em cảm ơn chị.
> Dũng

Khi cần tra, chỉ cần search "chốt khung giờ review" là ra đúng thread. Khi cần forward, không kéo theo phần không liên quan.

## Biến thể — Khi chủ đề chỉ lệch nhẹ
Không phải mỗi thay đổi nhỏ đều cần tiêu đề mới. Nếu bạn đang bàn chi tiết của phát sinh 80tr và muốn hỏi thêm về một dòng trong bảng dự toán, đó vẫn là cùng một chủ đề — tiếp tục trong thread cũ.

**Dấu hiệu cần mở mail mới:**
- Search mail 3 tháng nữa, từ khóa bạn sẽ search có nằm trong tiêu đề cũ không? Nếu không → tiêu đề mới.
- Người thứ ba được CC có cần đọc toàn bộ thread cũ không? Nếu không → tiêu đề mới.

## Cách mở mail mới nhanh
- **Gmail:** trong cửa sổ compose có nút "New message" (phím `c` khi ở inbox).
- **Outlook:** `Ctrl+N` (Win) / `Cmd+N` (Mac).
- **Đừng bấm Reply rồi xóa "Re:" rồi đổi tiêu đề** — một số email client vẫn giữ ID thread cũ trong metadata; nhìn tiêu đề mới nhưng vẫn thuộc thread cũ.

## Cụm từ mẫu
> **"Giữ Re: khi cùng chủ đề. Đổi chủ đề thì mở mail mới."**

*Dùng khi:* sau mỗi mail bạn định bấm Reply, tự hỏi: *"Nội dung tôi sắp viết có cùng chủ đề với tiêu đề thread hiện tại không?"*. Nếu không, bấm New Message.', 'system', 9, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001010, 8001, NULL, 'markdown_book', 'Rule 10 — Tên hiển thị đúng chuẩn: họ tên thật + công ty', '# Rule 10 — Tên hiển thị đúng chuẩn: họ tên thật + công ty
> **Luận điểm.** Tên hiển thị (*sender name*) là thứ người nhận thấy **trước cả tiêu đề**. Nó trả lời câu hỏi đầu tiên trong đầu họ: *"Ai đang nhắn tôi?"*. Nếu tên hiển thị là "Dũng", "D.", hay "dungdev", người nhận phải mở mail mới biết đây có phải là bạn — đặc biệt khi họ biết 3 người tên Dũng. Đây là thứ bạn chỉ cần chỉnh đúng 1 lần, nhưng ảnh hưởng mọi mail bạn gửi trong 5 năm tới.
>
> Từ khóa của rule này: **"họ tên + công ty"**.

## Bối cảnh
Chị Hương nhận mail từ một người tên Dũng. Chị biết 4 người tên Dũng: Dũng BD của Thiên Phát (của mình), Dũng kế toán bên Hakuō, Dũng freelance thiết kế, Dũng bạn đại học.

## Ví dụ XẤU — bốn kiểu tên hiển thị thường gặp
> **❌ "Dũng"**
> Chị Hương mở hộp mail, thấy 4 mail từ 4 người tên Dũng. Chị phải mở từng cái để biết ai là ai.
>
> **❌ "D."**
> Còn tệ hơn — không có tên đầy đủ, không có ngữ cảnh.
>
> **❌ "dungdev"**
> Là tên username Dũng đặt năm đại học, không phù hợp trong môi trường chuyên nghiệp.
>
> **❌ "Nguyễn Văn Dũng <dung123@gmail.com>"**
> Dùng gmail cá nhân cho việc công ty → ngay khi chị Hương thấy đuôi `@gmail.com` đã mất điểm tin cậy, nhất là khi bạn đang làm việc với khách hàng lớn.

**Vì sao chưa ổn.** Chị Hương mỗi sáng phải "đoán" xem mail nào là của ai trong số những Dũng khác nhau. Nếu mail của bạn đến trong cửa sổ bận rộn, chị có thể trì hoãn mở vì không chắc mail nào là quan trọng — *kể cả khi mail bạn quan trọng*.

## Ví dụ TỐT — format chuẩn
> **✅ "Trần Văn Dũng — Cty Thiên Phát"**
>
> Chị Hương thấy ngay đây là Dũng BD của mình. Không cần mở mail cũng phân biệt được với 3 Dũng khác.

**Quy tắc format:**

- **Họ tên đầy đủ** — không viết tắt, không chỉ tên gọi.
- **Dấu phân cách** là dấu gạch nối `—` (em dash) hoặc dấu gạch ngang `-`, không dùng dấu phẩy vì dấu phẩy dễ bị đọc hiểu là tên đệm.
- **Công ty** — viết dạng rút gọn đủ nhận ra (thường bỏ "Công ty TNHH" hoặc "Công ty CP" để tiết kiệm ký tự: "Cty Thiên Phát").

**Biến thể theo ngữ cảnh:**

| Ngữ cảnh | Format gợi ý |
|---------|--------------|
| Nhân viên → khách hàng | `Trần Văn Dũng — BD, Cty Thiên Phát` |
| Trong nội bộ | `Trần Văn Dũng (Dũng BD)` hoặc chỉ `Trần Văn Dũng` |
| Cấp cao, nhiều vai trò | `Nguyễn Thị Hương — Phó phòng KD, Thiên Phát` |
| Người làm tự do | `Trần Văn Dũng — Thiết kế UI/UX` |

## Không dùng cho việc công ty
- Email cá nhân đuôi `@gmail.com`, `@yahoo.com`.
- Nickname (`dungdev`, `dung.coder`, `bo_95`).
- Emoji hoặc ký tự đặc biệt (`✦ Dũng ✦`).

## Cách chỉnh ở các client phổ biến
- **Gmail:** Settings → Accounts → Send mail as → edit info → đổi `Name`.
- **Outlook:** File → Account Settings → chọn account → Change → đổi `Your Name`.
- **Email doanh nghiệp qua Google Workspace:** admin có thể khóa quyền — liên hệ IT.

## Cụm từ mẫu
> **"Tên hiển thị = Họ tên đầy đủ + dấu gạch + Công ty viết gọn."**

*Dùng khi:* sáng thứ Hai tuần này. Mở email client, chỉnh đúng 1 lần, có hiệu lực cho mọi mail bạn gửi trong 5 năm tới. Đây là đầu tư 2 phút sinh lợi cao nhất trong cuốn sách này.', 'system', 10, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001011, 8001, NULL, 'markdown_book', 'Rule 11 — Khung 5 khối của một email hoàn chỉnh', '# Rule 11 — Khung 5 khối của một email hoàn chỉnh
> **Luận điểm.** Một email chuyên nghiệp luôn có **5 khối** theo trình tự cố định: **Kính gửi → Mở đầu → Thân mail → Kết → Chữ ký**. Bỏ hoặc đảo khối là chuyện của chat (Zalo, Slack) — ở email, khung 5 khối là mặc định. Người đọc lướt mắt từ trên xuống theo thói quen; phá khung nghĩa là buộc họ tìm thông tin ở chỗ bất ngờ.
>
> Từ khóa của rule này: **"5 khối"**.

## Bối cảnh
Dũng viết mail xin chị Hương duyệt ngân sách phát sinh.

## Ví dụ XẤU — mail phá khung
> **Tiêu đề:** Budget Bình Minh
>
> ---
>
> Duyệt giúp em 80tr phát sinh Bình Minh nhé chị. File đính kèm.

**Vấn đề:**
- Không có **Kính gửi** — người nhận không chắc mail gửi đích danh cho mình (với mail CC cho 5 người, ai phải xử lý?).
- Không có **mở đầu** — vào thẳng việc, cảm giác ra lệnh.
- Không có **kết** — dừng giữa chừng, bất lịch sự.
- Không có **chữ ký** — người nhận có thể không biết cách liên hệ ngoài email (số điện thoại, Zalo).

Mail này có thể dùng được trong Zalo nội bộ giữa hai người thân. Trong email, nhất là gửi sếp, nó là tín hiệu cẩu thả.

## Ví dụ TỐT — đủ 5 khối
> **Tiêu đề:** [Bình Minh] Xin duyệt phát sinh 80tr — trước 15/05
>
> ---
>
> **① Kính gửi**
> Kính gửi chị Nguyễn Thị Hương — Phó phòng Kinh doanh, Cty TNHH Thiên Phát,
>
> **② Mở đầu**
> Chúc chị một tuần làm việc hiệu quả. Em viết mail này để xin chị duyệt phát sinh ngân sách cho Dự án Bình Minh.
>
> **③ Thân mail**
> Em xin báo chị các thông tin chính:
>
> - Mức phát sinh: 80 triệu.
> - Hạng mục: thuê ngoài dịch vụ kiểm thử bảo mật.
> - Lý do: yêu cầu mới từ team bảo mật của Hakuō (chi tiết file đính kèm, trang 2).
>
> Em cần chị duyệt trước thứ Năm 15/05 để kịp ký PO với nhà thầu phụ vào tuần sau.
>
> **④ Kết**
> Nếu chị cần em bổ sung thông tin hoặc giải trình thêm, em sẵn sàng. Em cảm ơn chị và đợi phản hồi của chị.
>
> **⑤ Chữ ký**
> Trân trọng,
> Trần Văn Dũng
> Chuyên viên BD — Cty TNHH Thiên Phát
> SĐT: 0909 xxx xxx
> Email: dung.tran@tienphat.com.vn

## Vai trò của từng khối
| Khối | Vai trò | Độ dài điển hình |
|------|---------|------------------|
| Kính gửi | Xác định đích danh người nhận chính | 1 dòng |
| Mở đầu | Lời chào + câu dẫn nhập (rule 13, 14) | 1–2 câu |
| Thân mail | Nội dung chính — đi theo Kết luận → Lý do → Chi tiết (rule 15) | 3–10 dòng |
| Kết | "Đóng cửa" — lời nhắn cuối, cảm ơn, mong phản hồi | 1–2 câu |
| Chữ ký | Thông tin liên hệ | 3–5 dòng |

## Biến thể — Mail nội bộ thân mật
Trong mail giữa hai đồng nghiệp thân, khung 5 khối có thể **rút gọn**, nhưng không *bỏ hẳn*:

> Chị Hương,
>
> Em duyệt giúp em 80tr phát sinh Bình Minh với, file đính kèm, cần trước 15/05 chị nhé.
>
> Em cảm ơn.
> Dũng

Vẫn có *Kính gửi* rút gọn ("Chị Hương,"), vẫn có *Thân mail*, vẫn có *Kết* ("Em cảm ơn"), vẫn có *Chữ ký* ("Dũng"). Chỉ lược phần mở đầu. Khung vẫn còn.

## Cụm từ mẫu
> **"Kính gửi → Mở đầu → Thân → Kết → Chữ ký. Thiếu khối nào, biết lý do vì sao thiếu."**

*Dùng khi:* trước khi bấm Send, lướt mắt từ trên xuống kiểm 5 khối. Một phút này phòng được cảm giác "mail sao mà cộc lốc".', 'system', 11, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001012, 8001, NULL, 'markdown_book', 'Rule 12 — Dòng "Kính gửi" đầy đủ', '# Rule 12 — Dòng "Kính gửi" đầy đủ
> **Luận điểm.** Dòng mở đầu đầy đủ có **5 thành phần** theo thứ tự: *Kính gửi* + *chức vụ* + *họ tên* + *phòng ban* + *công ty*. Ở các tình huống ít trang trọng hơn, bạn có thể lược bớt thành phần, nhưng phải **lược từ đầu ra sau theo một nguyên tắc nhất quán**, không phải bỏ tuỳ ý.
>
> Từ khóa của rule này: **"5 thành phần, lược có nguyên tắc"**.

## Bối cảnh
Dũng viết mail cho nhiều đối tượng khác nhau, mỗi đối tượng cần mức trang trọng khác nhau.

## Bốn mức trang trọng với cùng một người
Cùng là chị Nguyễn Thị Hương — Phó phòng Kinh doanh, Cty TNHH Thiên Phát.

### Mức 1 — Trang trọng nhất (mail đầu tiên, hoặc mail chính thức gửi lên trên)
> Kính gửi **chị Phó phòng Nguyễn Thị Hương** — Phòng Kinh doanh, Công ty TNHH Thiên Phát,

Dùng khi: mail gửi lần đầu lên cấp rất cao, hoặc công văn chính thức có thể được in ra lưu hồ sơ.

### Mức 2 — Trang trọng chuẩn (mail công việc thường ngày với sếp)
> Kính gửi **chị Nguyễn Thị Hương** — Phó phòng Kinh doanh, Cty Thiên Phát,

Lược "chức vụ đứng trước tên" và rút gọn "Công ty TNHH". Đây là mức dùng phổ biến nhất — trang trọng đủ nhưng không cứng.

### Mức 3 — Nội bộ quen thuộc
> Chị Hương,

Mức này dùng khi hai người đã có quan hệ công việc lâu, gửi mail trong cùng công ty, không có người thứ ba được CC.

### Mức 4 — Cực kỳ thân, giữa hai đồng nghiệp ngang hàng
> Hương ơi,

Chỉ dùng khi ngang vai, đã rất thân. **Không dùng với sếp**, kể cả sếp thân.

## Ví dụ XẤU — lược sai nguyên tắc
> **❌ "Kính gửi chị Hương — Cty Thiên Phát,"**
> Có công ty nhưng không có họ và không có phòng ban. Lược không nhất quán.
>
> **❌ "Gửi Nguyễn Thị Hương,"**
> Có họ tên đầy đủ nhưng bỏ chữ "chị" — thành lời văn công văn cứng ngắc, dùng cho gọi tên đương sự trong biên bản, không hợp mail.
>
> **❌ "Chị Hương Phó phòng Kinh doanh,"**
> Có chức vụ nhưng không xưng hô "chị" đúng vị trí — nghe lủng củng.

**Vì sao chưa ổn.** Khi lược thành phần, phải theo thứ tự: lược từ **ngoài vào trong**, nghĩa là bỏ dần *công ty → phòng ban → họ → chức vụ*, giữ lại cuối cùng là *xưng hô + tên*. Ngược lại thì mất tự nhiên.

## Ví dụ TỐT — lược nhất quán
Nếu bạn muốn ngắn, lược theo thứ tự từ ngoài vào:

| Mức | Dòng "Kính gửi" |
|-----|-----------------|
| Đầy đủ | Kính gửi chị Nguyễn Thị Hương — Phó phòng Kinh doanh, Cty Thiên Phát, |
| Lược công ty | Kính gửi chị Nguyễn Thị Hương — Phó phòng Kinh doanh, |
| Lược tiếp phòng ban | Kính gửi chị Nguyễn Thị Hương, |
| Lược tiếp họ | Chị Hương, |

Mỗi mức đều cân đối — không có thành phần "mồ côi" (chức vụ không có tên, công ty không có phòng ban).

## Biến thể — Gửi nhiều người
Khi mail gửi nhiều người ở cùng cấp:

> Kính gửi anh Tuấn, chị Loan, anh Phong,

Gửi một nhóm chung chung:

> Kính gửi các anh/chị Phòng Kinh doanh,

Gửi hai cấp khác nhau trong cùng mail (người nhận chính là sếp, CC là đồng nghiệp):

> Kính gửi chị Hương,
> CC: anh Tuấn, chị Loan,

## Cụm từ mẫu
> **"Kính gửi + chức vụ + họ tên + phòng ban + công ty. Lược từ ngoài vào, không lược tùy ý."**

*Dùng khi:* trước khi gõ phần còn lại của mail. Dòng này là thứ người đọc thấy đầu tiên khi mở thư — nó định hình cảm giác về toàn bộ phần còn lại.', 'system', 12, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001013, 8001, NULL, 'markdown_book', 'Rule 13 — Câu chào mở đầu không bỏ qua, ngay cả với người đã quen', '# Rule 13 — Câu chào mở đầu không bỏ qua, ngay cả với người đã quen
> **Luận điểm.** Sau dòng "Kính gửi" là một **câu chào**. Nhiệm vụ của nó không phải truyền đạt thông tin — mà là *bật công tắc mềm* cho người đọc: chuyển từ trạng thái lướt hộp mail sang trạng thái đọc kỹ. Một câu. Không cần hơn. Nhưng cũng không được bỏ.
>
> Từ khóa của rule này: **"công tắc mềm"**.

## Bối cảnh
Dũng gửi mail thứ Hai đầu tuần cho chị Hương để báo cáo tuần.

## Ví dụ XẤU — vào thẳng
> Kính gửi chị Hương,
>
> Em gửi chị báo cáo tuần 19, file đính kèm. 3 điểm cần chị biết: hạng mục A ổn, B trễ 2 ngày, C cần duyệt trước 16/05.

**Vì sao chưa ổn.** Mail "nói cho xong việc". Chị Hương đọc xong có cảm giác bị *giao việc* chứ không phải đang trao đổi với một đồng nghiệp. Cảm giác này tích luỹ theo thời gian sẽ làm mòn quan hệ làm việc, dù từng mail đơn lẻ không rõ sai ở đâu.

## Ví dụ TỐT — có câu chào
> Kính gửi chị Hương,
>
> Chúc chị một tuần làm việc hiệu quả.
>
> Em gửi chị báo cáo tuần 19, file đính kèm. 3 điểm cần chị biết: hạng mục A ổn, B trễ 2 ngày, C cần duyệt trước 16/05.

Chỉ thêm **một dòng**. Không làm mail dài hơn đáng kể. Nhưng cảm giác đọc khác hẳn — có nhịp, có người ở đầu kia.

## Kho câu chào theo ngữ cảnh
### Ngữ cảnh chung
- "Chúc chị một tuần làm việc hiệu quả."
- "Chúc anh một ngày tốt lành."
- "Mong anh/chị vẫn khoẻ."
- "Mong anh/chị một sáng làm việc thuận lợi."

### Đầu tuần
- "Chúc chị một tuần làm việc hiệu quả."
- "Chúc chị một tuần mới nhiều năng lượng."

### Cuối tuần / cuối tháng
- "Chúc chị một cuối tuần thư giãn."
- "Chúc chị đóng tháng thuận lợi."

### Mail lần đầu (hai người chưa quen)
- "Hy vọng mail này đến anh/chị vào một lúc thuận tiện."
- "Em là [tên], bên [công ty] — rất mong có dịp làm việc với anh/chị."

### Sau kỳ nghỉ, lễ Tết
- "Chúc chị khởi đầu năm mới thuận lợi."
- "Chúc chị một kỳ nghỉ lễ an lành (viết trước kỳ nghỉ) / một tuần trở lại nhẹ nhàng (viết sau kỳ nghỉ)."

### Mùa đặc biệt — mưa bão, nắng nóng, mùa dịch
- "Sài Gòn hôm nay mưa lớn — hy vọng chị không gặp trở ngại trên đường."
- "Hà Nội nắng nóng, mong chị giữ sức khoẻ."

Một chút *quan sát đời thường* ở câu chào biến mail thành cuộc đối thoại, chứ không còn là giấy tờ.

## Khi nào có thể (hiếm hoi) bỏ qua
Chỉ bỏ khi **cả ba điều kiện** dưới đúng:
- Mail trong thread đang chạy (đã có chào ở mail đầu).
- Hai người đã trao đổi trong cùng ngày.
- Mail ngắn (≤3 dòng) trả lời một câu hỏi cụ thể.

Ví dụ:

> Chị Hương,
>
> Dạ file anh Tuấn đã chuyển cho em, em đã nhận. Em sẽ update chị lại trong ngày.
>
> Em Dũng

Không có câu chào riêng, nhưng vì đang trong thread trao đổi liên tục nên vẫn ổn.

## Cụm từ mẫu
> **"Một dòng chào. Không hơn. Nhưng không được thiếu."**

*Dùng khi:* mọi mail mở mới (không phải reply trong ngày). Sau khi có chất liệu câu chào rồi, bạn có thể chuẩn bị sẵn 3–5 câu theo ngữ cảnh dùng luân phiên, để không lặp một câu "Chúc chị một tuần làm việc hiệu quả" suốt năm.', 'system', 13, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001014, 8001, NULL, 'markdown_book', 'Rule 14 — Dòng dẫn nhập: nêu mục đích mail trong 1–2 câu', '# Rule 14 — Dòng dẫn nhập: nêu mục đích mail trong 1–2 câu
> **Luận điểm.** Sau câu chào là một **dòng dẫn nhập** (1–2 câu) nói rõ *vì sao bạn đang viết mail này*. Không kể bối cảnh một đoạn dài rồi mới đến mục đích — người đọc đã mở mail, họ không cần được dẫn tay qua 5 đoạn ngoại đề; họ cần biết ngay mail này là về cái gì và mình phải làm gì.
>
> Từ khóa của rule này: **"dẫn nhập 1–2 câu"**.

## Bối cảnh
Dũng viết mail xin chị Hương duyệt phát sinh.

## Ví dụ XẤU — lòng vòng, đến đoạn 3 mới vào việc
> Kính gửi chị Hương,
>
> Chúc chị một tuần làm việc hiệu quả.
>
> Như chị biết, từ tháng trước em đang triển khai Dự án Bình Minh cho bên Hakuō. Tuần trước em có họp với team bảo mật của họ, và họ đưa ra một số yêu cầu mới về kiểm thử. Em đã trao đổi với anh Tuấn bên mình và cũng đã tham khảo giá từ 3 nhà thầu phụ. Sau khi so sánh, em chọn được một nhà thầu phù hợp.
>
> Nên em viết mail này để xin chị duyệt phát sinh ngân sách 80 triệu cho hạng mục này, trước thứ Năm 15/05, để em kịp ký PO.

**Vì sao chưa ổn.** Chị Hương đọc đến dòng thứ 4 mới biết em đang xin gì. Ba đoạn đầu là bối cảnh — thông tin *có liên quan* nhưng không phải thông tin *phải có trước*. Chị có thể đã dừng đọc ở đoạn 2 vì không rõ mail này hỏi gì. Người bận rộn không có kiên nhẫn cho mở đầu kể chuyện.

## Ví dụ TỐT — dẫn nhập thẳng vào mục đích
> Kính gửi chị Hương,
>
> Chúc chị một tuần làm việc hiệu quả.
>
> Em viết mail này để **xin chị duyệt phát sinh 80 triệu cho Dự án Bình Minh, trước thứ Năm 15/05**. Phần bên dưới là lý do và chi tiết để chị tham khảo.
>
> **Lý do phát sinh**
> Tuần trước team bảo mật của Hakuō đưa ra yêu cầu kiểm thử mới, không nằm trong scope ban đầu. Em đã so sánh giá từ 3 nhà thầu phụ, kèm so sánh đính kèm.
>
> **Chi tiết**
> - Hạng mục: thuê ngoài kiểm thử bảo mật.
> - Mức phát sinh: 80 triệu (chi tiết file đính kèm, trang 2).
> - Nhà thầu phụ: Cty An Khang (hồ sơ năng lực đính kèm).
>
> Em cần chị duyệt trước 15/05 để kịp ký PO tuần sau.
>
> Em cảm ơn chị.
> Dũng

**So sánh.** Cùng thông tin, nhưng bản TỐT để chị Hương:
- Biết **ngay ở câu thứ hai** mail đang xin gì.
- Có thể *dừng ở đó* nếu đủ tin tưởng — duyệt luôn, không cần đọc phần dưới.
- Muốn đọc kỹ thì có cấu trúc rõ, không bị kể lể.

## Công thức dòng dẫn nhập
> "Em viết mail này để **[động từ] [đối tượng cụ thể]**, trước **[deadline]**."

Biến thể:

- **Xin:** "Em viết mail này để xin chị duyệt / xin chị ý kiến về / xin chị chọn giúp em…"
- **Báo cáo:** "Em viết mail này để báo cáo chị kết quả [X] trong tuần 19."
- **Thông báo:** "Em viết mail này để thông báo chị về việc [X]."
- **Trả lời:** "Em viết mail này để trả lời câu hỏi của chị ở mail trước về [X]."
- **Nhờ:** "Em viết mail này để nhờ chị hỗ trợ em [X] trước [ngày]."

## Biến thể — Khi dẫn nhập có thể rút xuống 1 câu
Nếu mail rất ngắn (≤5 dòng) và CTA đã nằm ngay trong dòng dẫn nhập, không cần 2 câu:

> "Em xin chị duyệt giúp em phát sinh 80 triệu Bình Minh (file đính kèm), trước 15/05."

Cả mail có thể chỉ là câu này + câu cảm ơn + chữ ký.

## Cụm từ mẫu
> **"Em viết mail này để [động từ cụ thể] [đối tượng cụ thể] trước [deadline]."**

*Dùng khi:* sau câu chào. Đây là câu thứ ba (tính cả "Kính gửi") của mail — nơi người đọc quyết định có tiếp tục đọc kỹ hay không.', 'system', 14, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001015, 8001, NULL, 'markdown_book', 'Rule 15 — Thân mail đi theo trục Kết luận → Lý do → Chi tiết, không ngược lại', '# Rule 15 — Thân mail đi theo trục Kết luận → Lý do → Chi tiết, không ngược lại
> **Luận điểm.** Khi viết báo chí có khái niệm **"kim tự tháp ngược"** (*inverted pyramid*): đưa thông tin quan trọng nhất lên đầu, thông tin bổ sung xuống đuôi. Email chuyên nghiệp đi theo đúng logic đó — **Kết luận trước, Lý do giữa, Chi tiết cuối**. Người bận đọc đến đâu cũng đủ hiểu để hành động.
>
> Từ khóa của rule này: **"kim tự tháp ngược"**.

## Bối cảnh
Chị Hương phải xử lý 80 mail trong buổi sáng. Chị mở mail của Dũng về sự cố kỹ thuật ở Dự án Bình Minh.

## Ví dụ XẤU — kể chuyện theo trình tự thời gian
> Kính gửi chị Hương,
>
> Chúc chị một ngày tốt lành.
>
> Tối qua, lúc 22:30, bạn Khánh bên DevOps nhận được cảnh báo từ hệ thống monitoring rằng API của Bình Minh có độ trễ cao bất thường. Bạn Khánh nhắn Zalo cho anh Tuấn và em. Anh Tuấn và em cùng lên kiểm tra trong khoảng 30 phút. Chúng em phát hiện database connection pool đã full. Chúng em khởi động lại service và hệ thống trở lại bình thường lúc 23:45.
>
> Sáng nay chúng em họp lại với nhau lúc 08:00 để review sự cố. Chúng em xác định nguyên nhân là do một query tốn nhiều tài nguyên đã được deploy tuần trước nhưng chưa được benchmark kỹ. Chúng em đã rollback query đó.
>
> Kết quả: hệ thống hiện đã ổn định. Nhưng chúng em cần chị biết rằng khách hàng Hakuō đã có 1 giờ 15 phút downtime và chúng em có khả năng phải gửi thư xin lỗi chính thức. Em xin chị duyệt mẫu thư xin lỗi em soạn đính kèm, trước 12:00 hôm nay.
>
> Em Dũng

**Vì sao chưa ổn.** Chị Hương đọc đến đoạn thứ 4, dòng gần cuối, mới biết mail này là đang *xin duyệt thư xin lỗi khách hàng trước 12:00*. Nếu chị có 30 giây để lướt mail, chị không nắm được yêu cầu. Đây là kiểu viết "kể chuyện" — đúng trình tự thời gian, nhưng đặt nhầm chỗ trên email.

## Ví dụ TỐT — kết luận lên trước
> Kính gửi chị Hương,
>
> Chúc chị một ngày tốt lành.
>
> **Kết luận — việc cần chị làm:**
> Em xin chị **duyệt mẫu thư xin lỗi gửi Hakuō trước 12:00 hôm nay** (mẫu đính kèm). Hakuō đã có 1 giờ 15 phút downtime tối qua do sự cố kỹ thuật bên em.
>
> **Lý do — tóm tắt sự cố:**
> - Từ 22:30 đến 23:45 tối 13/05, API Bình Minh chậm bất thường do database connection pool full.
> - Nguyên nhân gốc: một query deploy tuần trước chưa được benchmark kỹ. Đã rollback sáng nay.
> - Hệ thống hiện ổn định.
>
> **Chi tiết — tường thuật sự cố và hướng dẫn khắc phục dài hạn:**
> (Phần chi tiết sự cố, người xử lý, timeline, post-mortem — em đính kèm file PDF 3 trang. Chị có thể đọc nếu cần nắm sâu.)
>
> Em cảm ơn chị.
> Dũng

**So sánh.** Cùng một mail, cùng một lượng thông tin — nhưng:
- Chị Hương trong 30 giây đầu đã biết mình cần duyệt thư xin lỗi trước 12h.
- Nếu chị cần thêm context, chị đọc phần "Lý do" (3 dòng).
- Nếu chị muốn nắm sâu, chị mở file đính kèm.

Đây là *nhiều tầng đọc* — chị chọn tầng đọc phù hợp với thời gian mình có.

## Khi nào **không** dùng kim tự tháp ngược
- **Mail cảm ơn thuần** — không có kết luận/yêu cầu; cảm xúc có thể kể theo trình tự.
- **Mail xin lỗi nặng** — nếu chốt "em xin lỗi chị" ở câu đầu mà chưa kể hoàn cảnh có thể nghe như *xin lỗi cho xong* (xem Rule 53 ở Phần IV).
- **Mail kể trải nghiệm/chia sẻ** — không phải mail công việc điển hình.

## Cụm từ mẫu
> **"Kết luận trước — Lý do giữa — Chi tiết cuối. Ai đọc đến đâu cũng hành động được đến đó."**

*Dùng khi:* mọi mail báo cáo, xin duyệt, xin ý kiến, thông báo. Trước khi gửi, thử *xoá 50% từ cuối mail* — nếu người đọc vẫn biết phải làm gì thì cấu trúc của bạn đúng kim tự tháp ngược.', 'system', 15, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001016, 8001, NULL, 'markdown_book', 'Rule 16 — Câu kết: "đóng cửa" gọn gàng, không bỏ lửng', '# Rule 16 — Câu kết: "đóng cửa" gọn gàng, không bỏ lửng
> **Luận điểm.** Mail không có câu kết cho cảm giác **nói nửa chừng rồi bỏ đi**. Nó không lớn, chỉ 1–2 câu, nhưng là dấu *đóng cửa* cho cả thư. Câu kết tốt làm ba việc cùng lúc: (1) *tóm lại hành động chờ ở đối phương*, (2) *cảm ơn*, (3) *mở đường nếu cần trao đổi thêm*.
>
> Từ khóa của rule này: **"đóng cửa mail"**.

## Bối cảnh
Dũng vừa trình bày xong phần thân mail xin duyệt phát sinh. Giờ đến câu kết.

## Ví dụ XẤU — bốn kiểu bỏ lửng
> **❌ Bỏ cuối:** mail dừng ngay sau dòng cuối của phần nội dung, không câu nào khép lại.
>
> **❌ Chỉ "Thanks":** "Thanks" — cụt, tiếng Anh lạc lõng trong mail tiếng Việt trang trọng.
>
> **❌ Dấu ba chấm:** "Chị xem giúp em nhé…"
> Ba chấm treo, gợi cảm giác người viết không chắc mình muốn gì.
>
> **❌ Xin lỗi thừa:** "Em xin lỗi vì đã làm phiền chị."
> Nếu mail của bạn đáng gửi, *không cần xin lỗi*. Xin lỗi thừa làm giảm trọng lượng lời xin lỗi khi bạn thật sự cần dùng (Rule 53).

**Vì sao chưa ổn.** Câu kết đặt sai giống như kết thúc một cuộc họp mà không ai nói "được rồi, mình dừng ở đây". Mọi người đứng dậy lưng chừng, không rõ đã thống nhất gì.

## Ví dụ TỐT — ba mẫu câu kết theo mức độ
### Mẫu 1 — Tiêu chuẩn (dùng cho 80% mail công việc)
> Em cảm ơn chị và mong chị phản hồi trước thứ Năm 15/05.

Làm đủ ba việc: tóm CTA (phản hồi), deadline (15/05), cảm ơn.

### Mẫu 2 — Trang trọng hơn (mail gửi lên cao, khách hàng quan trọng)
> Em chân thành cảm ơn chị đã dành thời gian. Nếu chị cần em bổ sung thông tin hoặc giải trình thêm, em sẵn sàng phản hồi. Em đợi phản hồi của chị trước thứ Năm 15/05.

Thêm: mở đường giải trình, nhấn mạnh sẵn sàng hỗ trợ.

### Mẫu 3 — Rút gọn (nội bộ, giữa hai người thân)
> Em cảm ơn chị. Chị xem giúp em trước 15/05 nhé.

Vẫn có đủ CTA + deadline + cảm ơn, chỉ cô đọng hơn.

## Bộ công cụ câu kết theo tình huống
| Tình huống | Câu kết gợi ý |
|------------|---------------|
| Xin duyệt / xin ý kiến | "Em cảm ơn chị và mong chị phản hồi trước [deadline]." |
| Chỉ cập nhật, không cần hành động | "Em chỉ gửi chị để nắm thông tin, em không cần chị phản hồi." |
| Đã thực hiện xong, chỉ báo kết quả | "Em cảm ơn chị đã hỗ trợ. Nếu có thay đổi em sẽ cập nhật thêm." |
| Trả lời câu hỏi | "Nếu chị cần em làm rõ thêm điểm nào, chị cho em biết." |
| Mail xin lỗi | (dùng mẫu Phần IV, không dùng câu kết thông thường) |
| Mail đầu tiên với người lạ | "Em rất mong có dịp được trao đổi thêm với anh/chị." |

## Biến thể — Khi mail chỉ 1 dòng
Nếu mail siêu ngắn (Rule 30 — mail 1 dòng), câu kết có thể *gộp* với câu nội dung:

> "Em đã nhận file, cảm ơn chị."

Cả "nội dung" và "cảm ơn" nằm trong 1 câu. Mail *đóng cửa* vẫn gọn.

## Cụm từ mẫu
> **"Câu kết tóm CTA, cảm ơn, mở đường. Một đến hai câu. Không dấu ba chấm, không ''Thanks'' cụt."**

*Dùng khi:* trước chữ ký. Đây là câu cuối cùng người đọc thấy — nó quyết định dư vị còn đọng lại sau khi đóng mail.', 'system', 16, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001017, 8001, NULL, 'markdown_book', 'Rule 17 — Chữ ký hai kiểu: bản chuẩn cho khách hàng, bản ngắn cho nội bộ', '# Rule 17 — Chữ ký hai kiểu: bản chuẩn cho khách hàng, bản ngắn cho nội bộ
> **Luận điểm.** Email client hiện đại (Gmail, Outlook) cho phép lưu **nhiều chữ ký** và chọn lúc soạn. Bạn cần ít nhất **hai bản**: (A) *bản chuẩn* đầy đủ thông tin liên hệ, dùng khi gửi cho khách hàng hoặc đối tác; (B) *bản ngắn* chỉ có tên + phòng ban, dùng trong nội bộ. Dùng bản A cho bạn thân cùng công ty là phô trương; dùng bản B cho khách hàng là thiếu chuyên nghiệp.
>
> Từ khóa của rule này: **"hai chữ ký"**.

## Bản A — Chữ ký chuẩn (gửi khách hàng, đối tác, mail lần đầu)
```
Trân trọng,

Trần Văn Dũng
Chuyên viên Business Development
Công ty TNHH Thiên Phát
─────────────────────
📱 0909 xxx xxx
📧 dung.tran@tienphat.com.vn
🌐 www.thienphat.vn
📍 Tầng 5, Toà nhà ABC, 123 Lê Lợi, Q.1, TP.HCM
```

**Khi nào dùng:**
- Mail gửi khách hàng (anh Matsumoto bên Hakuō).
- Mail gửi đối tác, nhà cung cấp lần đầu.
- Mail chào hàng, gửi báo giá, gửi hợp đồng.
- Mail đại diện công ty gửi ra ngoài.

**Các thành phần không nên bỏ:**
- Họ tên đầy đủ.
- Chức vụ — để đối phương biết nên trao đổi ở mức nào.
- Công ty — bản pháp nhân chính xác.
- Điện thoại — kênh liên hệ backup khi cần gấp.
- Email — dù đã có trong `from`, vẫn nên lặp lại để copy nhanh.

**Các thành phần có thể cân nhắc:**
- Địa chỉ văn phòng — thêm khi công ty có nhiều cơ sở và bạn muốn nói rõ mình ở cơ sở nào.
- Logo công ty — chỉ thêm khi bộ phận marketing đã cung cấp file chuẩn (màu, kích thước). Logo tự cắt từ Google sẽ vỡ hình trên mobile.
- Slogan, câu tagline — tuỳ văn hoá công ty. Thêm khi đó là chuẩn công ty; đừng tự thêm nếu đồng nghiệp khác không thêm.

## Bản B — Chữ ký ngắn (nội bộ, đồng nghiệp đã quen)
```
Em cảm ơn,
Dũng (BD)
```

Hoặc gọn hơn:

```
Dũng
```

**Khi nào dùng:**
- Mail nội bộ trong Cty Thiên Phát.
- Thread đang chạy với đồng nghiệp trong ngày.
- Mail trả lời ngắn, nhắn qua lại liên tục.

**Vì sao cần bản B:**
- Gửi chị Hương 40 mail mỗi tuần với chữ ký đầy đủ kèm logo, địa chỉ, slogan — cảm giác *phô*, mỗi mail thành một tấm danh thiếp.
- Một số công ty có hộp inbox nội bộ giới hạn dung lượng. Chữ ký dài (có logo) làm đầy hộp mail nhanh.
- Bản ngắn nhẹ mắt hơn khi thread đã 20+ lượt.

## Ví dụ XẤU — dùng nhầm bản
### Trường hợp 1: Dùng bản A với đồng nghiệp thân
Dũng reply chị Hương một dòng "Dạ em đã nhận, em sẽ làm trong ngày." rồi kéo theo 8 dòng chữ ký đầy đủ với logo, địa chỉ, slogan.

→ Chị Hương thấy như đang nhận mail *marketing*, không phải reply đồng nghiệp.

### Trường hợp 2: Dùng bản B với khách hàng
Dũng gửi anh Matsumoto (Hakuō) một mail báo giá quan trọng, ký tên "Dũng".

→ Anh Matsumoto không có số điện thoại của Dũng, không biết Dũng thuộc công ty nào, chức vụ gì. Nếu cần gọi gấp, anh phải lục lại mail cũ để tìm thông tin. Cảm giác "người này không chuyên nghiệp" đã có.

## Cách thiết lập
### Gmail
Settings → See all settings → General → Signature → Create new → đặt tên "Chuẩn" và "Ngắn" → chọn default cho new mail và reply khác nhau nếu cần.

### Outlook (desktop)
File → Options → Mail → Signatures → New → tạo 2 bản → assign theo account.

### Outlook (Mac)
Outlook → Preferences → Signatures → thêm mới.

Khi soạn mail, ở thanh Compose có dropdown **chọn chữ ký** — mất 1 giây để đổi giữa Chuẩn và Ngắn.

## Bản C — tuỳ chọn (chữ ký tiếng Anh cho giao dịch nước ngoài)
Nếu bạn làm việc với đối tác nước ngoài, có thể thêm bản C tiếng Anh:

```
Best regards,

Dung Tran Van
Business Development Executive
Thien Phat Co., Ltd.
```

Đơn giản hơn bản A một chút, theo phong cách tiếng Anh ngắn gọn.

## Cụm từ mẫu
> **"Hai bản chữ ký. Đổi bản trước khi Send. Một giây."**

*Dùng khi:* Thiết lập 2 bản vào thứ Hai tuần này. Từ đó, mỗi mail bạn gửi đều phản ánh đúng ngữ cảnh — chuyên nghiệp với khách, nhẹ nhàng với đồng nghiệp.', 'system', 17, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001018, 8001, NULL, 'markdown_book', 'Rule 18 — Mail lặp lại → tạo kho template cá nhân trong Drafts', '# Rule 18 — Mail lặp lại → tạo kho template cá nhân trong Drafts
> **Luận điểm.** Nếu bạn viết một loại mail **từ ba lần trở lên** — báo cáo tuần, xin dời lịch, nhắc hoá đơn, chào hàng, từ chối… — thì bạn đang lãng phí mỗi lần viết lại từ đầu. Tạo **template cá nhân** lưu trong Drafts hoặc trong tính năng Templates. Mỗi mail mới chỉ cần copy, điền 3 chỗ, gửi.
>
> Từ khóa của rule này: **"mail >3 lần = template"**.

## Bối cảnh
Dũng gửi báo cáo tuần cho chị Hương mỗi thứ Hai. Mỗi lần Dũng ngồi viết lại từ đầu, mất 20–30 phút.

## Chi phí thật khi không có template
Giả sử một tuần bạn viết:
- 1 báo cáo tuần (20 phút)
- 2 mail xin dời lịch (5 phút × 2)
- 3 mail nhắc hoá đơn (5 phút × 3)
- 2 mail chào hàng (15 phút × 2)

Tổng: ~1 giờ 15 phút/tuần chỉ cho việc *viết lại cấu trúc*. Một năm: ~65 giờ. Tám ngày công đổ vào thứ đáng ra chỉ cần viết 1 lần.

## Template báo cáo tuần — ví dụ mẫu
Lưu trong Drafts với tên `[TEMPLATE] Báo cáo tuần`:

```
Tiêu đề: [Bình Minh] Báo cáo tuần __ — __ điểm chị cần biết

Kính gửi chị Hương,

Chúc chị một tuần làm việc hiệu quả.

Em gửi chị báo cáo tuần __ của Dự án Bình Minh, dưới đây là __ điểm chị cần biết:

1. [Hạng mục 1] — [trạng thái: ổn / trễ / cần chú ý]
   Chi tiết: ...

2. [Hạng mục 2] — [trạng thái]
   Chi tiết: ...

3. [Hạng mục 3] — [trạng thái]
   Chi tiết: ...

Việc chị cần quyết tuần này:
- [Quyết định 1 — deadline]
- [Quyết định 2 — deadline]

Em cảm ơn chị.
Dũng
```

Mỗi thứ Hai, Dũng chỉ cần:
1. Duplicate draft này.
2. Điền số tuần.
3. Điền 3 hạng mục + trạng thái.
4. Điền quyết định cần chị duyệt.
5. Send.

Thời gian: 5–7 phút thay vì 20–30.

## Các mail thường nên có template
| Template | Dùng khi |
|----------|----------|
| Báo cáo tuần | Hàng tuần |
| Báo cáo tháng | Hàng tháng |
| Xin dời lịch họp | Khi có việc đột xuất |
| Nhắc hoá đơn quá hạn | Kế toán, gửi khách hàng |
| Chào hàng / giới thiệu dịch vụ | BD, khi có lead mới |
| Từ chối lời mời (giữ quan hệ) | Khi không tham gia được |
| Cảm ơn sau cuộc họp | Sau mỗi cuộc họp quan trọng |
| Giới thiệu nhân sự mới | Khi có intern / nhân viên mới |
| Bàn giao công việc | Khi nghỉ dài ngày hoặc chuyển phòng |

## Cách tổ chức kho template
### Cách 1 — Drafts có prefix
Lưu tất cả trong Drafts, đặt tên bắt đầu bằng `[TEMPLATE]`:
- `[TEMPLATE] Báo cáo tuần`
- `[TEMPLATE] Xin dời lịch`
- `[TEMPLATE] Nhắc hoá đơn`

Ưu điểm: đơn giản, không cần công cụ thêm.
Nhược điểm: Drafts sẽ có cả template và draft thật sự, dễ lẫn.

### Cách 2 — Dùng tính năng Templates
- **Gmail:** bật *Templates* trong Settings → Advanced → Templates → Enable. Khi soạn mail, Menu (3 chấm) → Templates → Save draft as template.
- **Outlook (desktop):** Save As → chọn định dạng *Outlook Template (.oft)*.
- **Outlook (web) / Microsoft 365:** dùng *My Templates* add-in.

Ưu điểm: template tách riêng, có thể chèn vào mail bất cứ lúc nào.
Nhược điểm: mất 2 phút thiết lập ban đầu.

### Cách 3 — File text trên máy
Tạo file `templates_mail.md` ở desktop, chứa tất cả template. Khi cần, mở file, copy, paste vào mail.

Ưu điểm: không phụ thuộc email client (hữu ích khi dùng nhiều hộp mail).
Nhược điểm: thêm 1 cửa sổ phải quản lý.

## Dấu hiệu một template cần cập nhật
- Bạn thấy mình *luôn* sửa cùng một phần sau khi paste template → đưa phần đó thành placeholder `[...]` hoặc đưa vào template luôn.
- Bạn thấy mình *không bao giờ* dùng một phần → xoá phần đó.
- Đã 3 tháng không ai reply khác nhau cho cùng một template → template đang nhàm, cần đổi giọng.

## Cụm từ mẫu
> **"Viết >3 lần = tạo template. 5 phút thiết lập, tiết kiệm 8 ngày công mỗi năm."**

*Dùng khi:* lần tới bạn ngồi xuống viết một mail, hãy tự hỏi "mình có viết loại mail này 3 lần rồi chưa?". Nếu có — lần này viết xong, lưu làm template. Lần sau chỉ còn việc điền.', 'system', 18, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001019, 8001, NULL, 'markdown_book', 'Rule 19 — Ba dấu hiệu nên gọi điện hoặc họp thay vì mail', '# Rule 19 — Ba dấu hiệu nên gọi điện hoặc họp thay vì mail
> **Luận điểm.** Không phải việc gì cũng hợp với email. Có **ba dấu hiệu** rõ ràng báo cho bạn biết *"dừng gõ mail, nhấc máy lên"*. Biết nhận ra ba dấu hiệu này giúp bạn không biến một vấn đề giải quyết được trong 5 phút điện thoại thành một chuỗi mail qua lại 3 ngày.
>
> Từ khóa của rule này: **"3 dấu hiệu phải gọi"**.
>
> **Liên quan:** Rule 70 (Chat/Teams vs Email — chọn kênh đúng).

## Ba dấu hiệu
### Dấu hiệu 1 — Vấn đề có cảm xúc
Email không truyền được giọng nói. Một câu trung tính khi nói ra có thể nghe lạnh khi đọc, và một câu mềm khi đọc có thể bị hiểu thành khô khi đối phương đang căng thẳng.

**Các tình huống thuộc loại này:**
- Báo tin xấu (trễ deadline, sự cố lớn, chia tay đối tác).
- Góp ý về cách làm việc của người khác (đặc biệt cấp dưới hoặc đồng nghiệp ngang).
- Xử lý hiểu lầm — khi bạn cảm nhận đối phương đang giận hoặc đã hiểu sai ý bạn.
- Đàm phán thương lượng khó.

**Ví dụ:** Dự án Bình Minh có sự cố lớn, Hakuō downtime 1 giờ. Dũng *không* nên gõ 3 đoạn giải thích cho anh Matsumoto qua mail. Dũng nên **gọi anh Matsumoto ngay**, xin lỗi bằng giọng, rồi mới gửi mail tóm tắt lại sau đó.

### Dấu hiệu 2 — Cần quyết ngay trong phút tới
Email có độ trễ. Mail gửi đi có thể được đọc sau 1 giờ, 1 ngày, thậm chí 3 ngày. Nếu vấn đề cần quyết trong 15 phút tới để không ảnh hưởng việc khác, đừng dùng mail.

**Dấu hiệu nhận biết:**
- "Nếu không chốt trong __ giờ tới thì __."
- Vấn đề đang block bạn *ngay lúc này*.
- Khách hàng đang đợi ở đầu dây bên kia.

**Ví dụ:** Khách hàng đang bay vào TP.HCM tối nay, Dũng cần biết có đón sân bay không. Đây là câu hỏi cần câu trả lời trong 5 phút, không phải 5 giờ. → Gọi anh Tuấn ngay.

### Dấu hiệu 3 — Đã reply qua lại từ ba lần mà chưa kết
Khi thread đã ở lượt reply thứ 3 mà bạn và đối phương vẫn đang "chưa hiểu nhau" về cùng một việc, đó là lúc mail đã *trở thành vấn đề*, không còn là *công cụ giải quyết vấn đề*.

Ba lần qua lại = mỗi bên đã có 2 cơ hội để giải thích rõ. Nếu vẫn chưa thông, thêm lượt thứ 4 cũng vô ích — có khi làm tình hình rối hơn.

**Ví dụ:** Dũng đã mail 3 lần giải thích cho chị Loan (kế toán) về cách tách khoản phát sinh. Chị Loan mail 3 lần hỏi lại, mỗi lần hỏi một góc khác nhau. → Đi qua phòng chị Loan 10 phút, vừa mở màn hình cùng xem, vừa giải thích — hoặc gọi video nếu khác văn phòng.

## Ví dụ XẤU — nhất quyết dùng mail
Ngày 1:
> Dũng → Loan: "Chị ơi, cho em hỏi cách tách 80tr phát sinh vào mã dự án hay mã chi phí hoạt động?"

Ngày 1:
> Loan → Dũng: "Tuỳ em. Em theo quy trình nào?"

Ngày 2:
> Dũng → Loan: "Em chưa rõ quy trình này, có tài liệu không chị?"

Ngày 2:
> Loan → Dũng: "Có, anh Phong nắm. Hay em hỏi ảnh."

Ngày 3:
> Dũng → Phong (CC Loan): "Anh Phong, chị Loan có giới thiệu em về việc..."

**Vấn đề.** Ba ngày, năm mail, chưa chạm được đến câu trả lời thật sự. Một cuộc gọi 10 phút giữa Dũng và Loan là xong.

## Ví dụ TỐT — đổi kênh đúng lúc
Ngày 1:
> Dũng → Loan: "Chị ơi, cho em hỏi cách tách 80tr phát sinh vào mã dự án hay mã chi phí hoạt động?"

Ngày 1:
> Loan → Dũng: "Tuỳ em. Em theo quy trình nào?"

Ngày 1, 10 phút sau:
> **Dũng gọi chị Loan:** giải thích trong 5 phút, chị Loan hiểu, chốt cách hạch toán.

Ngày 1, 15 phút sau:
> Dũng → Loan (mail ghi nhận): "Em xác nhận lại theo trao đổi qua điện thoại: tách vào mã dự án 2025-BM, dòng 4.2.3. Em sẽ làm theo hướng này. Cảm ơn chị."

**Mail chỉ còn vai trò lưu chứng** — không còn là nơi giải thích qua lại.

## Khi gọi xong, vẫn nên gửi mail ghi nhận
Sau khi gọi, **gửi mail tóm tắt 3–5 dòng** ghi lại thống nhất:
- Đã trao đổi qua điện thoại vào lúc __.
- Thống nhất: [điều gì].
- Bước tiếp theo: [ai làm gì].

Mail này vừa là *biên bản* cho cả hai bên, vừa là cách để nếu đối phương hiểu nhầm trong cuộc gọi, họ có cơ hội sửa lại kịp thời.

## Cụm từ mẫu
> **"Cảm xúc, khẩn, hoặc đã qua lại 3 lần — nhấc máy."**

*Dùng khi:* trong lúc soạn mail mà thấy mình *đang cố kìm cảm xúc*, *đang lo đối phương đọc sai ý*, hoặc *đây là mail thứ tư về cùng một chuyện*. Đó là lúc dừng gõ, gọi điện.', 'system', 19, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001020, 8001, NULL, 'markdown_book', 'Rule 20 — CC có tâm: giới thiệu người thứ ba trong body mail', '# Rule 20 — CC có tâm: giới thiệu người thứ ba trong body mail
> **Luận điểm.** Khi bạn CC một người vào mail, đối với người nhận chính, người CC là một **dấu chấm hỏi** ở dòng `Cc:` — *"tại sao người này ở đây?"*. Nếu bạn không trả lời câu hỏi đó trong body, bạn đang để người nhận chính tự đoán, và để người CC bị đưa vào cuộc một cách ngượng nghịu. Quy ước đơn giản: **gọi tên người CC trong body, kèm lý do CC**.
>
> Từ khóa của rule này: **"CC có tâm"**.

## Bối cảnh
Dũng gửi mail cho anh Matsumoto (Hakuō) để báo giá dịch vụ. Anh Tuấn (team lead kỹ thuật) và chị Loan (kế toán) được CC vì:
- Anh Tuấn sẽ trả lời câu hỏi kỹ thuật nếu có.
- Chị Loan sẽ xử lý phần hợp đồng khi khách chấp nhận.

## Ví dụ XẤU — CC không giải thích
> **To:** minh.nguyen@hakuo.co.jp
> **Cc:** tuan.le@tienphat.com.vn, loan.nguyen@tienphat.com.vn
>
> Kính gửi anh Matsumoto,
>
> Em xin gửi anh báo giá cho dịch vụ triển khai Bình Minh v2 (file đính kèm).
>
> Em cảm ơn anh.
> Dũng

**Vì sao chưa ổn.**
- Anh Matsumoto thấy 2 người lạ ở dòng CC, không biết họ là ai, có phải trả lời họ không, có phải gửi hợp đồng cho họ luôn không.
- Anh Tuấn và chị Loan thấy mình bị CC mà không biết mình ở đây để làm gì — có phải tham gia reply không, hay chỉ cần biết?

Kết quả: anh Matsumoto có thể forward cả mail sang phòng pháp lý bên Hakuō và vô tình để anh Tuấn nhận mail pháp lý không liên quan, tạo ra một thread lùng bùng.

## Ví dụ TỐT — giới thiệu CC trong body
> **To:** minh.nguyen@hakuo.co.jp
> **Cc:** tuan.le@tienphat.com.vn, loan.nguyen@tienphat.com.vn
>
> Kính gửi anh Matsumoto,
>
> Em xin gửi anh báo giá cho dịch vụ triển khai Bình Minh v2 (file đính kèm).
>
> **Em CC anh Tuấn — team lead kỹ thuật bên em — nếu anh có câu hỏi kỹ thuật, anh có thể reply trực tiếp cho anh Tuấn, ảnh sẽ nắm và xử lý.**
>
> **Em CC chị Loan — kế toán trưởng bên em — khi anh đồng ý báo giá, chị Loan sẽ làm phần hợp đồng với team pháp lý của anh.**
>
> Em cảm ơn anh.
> Dũng

Ba lợi ích:
- **Anh Matsumoto biết** phải trao đổi với ai về việc gì.
- **Anh Tuấn biết** mình ở đây để trả lời câu hỏi kỹ thuật.
- **Chị Loan biết** mình ở đây để chờ lúc khách chấp nhận thì vào cuộc — không phải reply ngay.

## Quy tắc đặt câu giới thiệu CC
Công thức tối thiểu:

> "Em CC [tên] — [vai trò] — [lý do có mặt]."

Biến thể ngắn hơn (khi người nhận chính đã biết người CC):

> "CC anh Tuấn để ảnh theo dõi."

Hoặc khi CC chỉ để lưu chứng, không cần ai phản hồi:

> "CC chị Hương để chị nắm thông tin."

## Bảng phân loại "loại CC" và cách giới thiệu
| Loại CC | Vai trò | Cách giới thiệu |
|---------|---------|-----------------|
| Người có thể phản hồi thay | Khi bạn vắng mặt | "CC anh Tuấn, ảnh có thể phản hồi anh nếu em bận." |
| Người cần biết kết quả | Sếp trực tiếp, theo dõi | "CC chị Hương để chị nắm thông tin." |
| Người cần vào cuộc ở bước sau | Kế toán khi chốt | "CC chị Loan để lúc chốt ký hợp đồng sẽ làm việc với chị." |
| Người có chuyên môn liên quan | Chuyên gia phụ trợ | "CC bạn An (pháp lý) nếu anh cần trao đổi thêm về điều khoản." |
| Lưu chứng / audit | Compliance | "CC chị Phương để lưu hồ sơ theo quy định nội bộ." |

## Dấu hiệu CC sai
- **CC hơn 5 người** ở một mail thường — có khả năng bạn đang *CC để che lưng*. Mỗi người thấy "có 4 người khác" sẽ nghĩ "ai đó sẽ xử lý" và không ai thật sự xử lý.
- **CC cấp trên của đối phương mà họ không biết** — đây là *chơi bẩn*, dùng sếp để ép việc. Mất niềm tin ngay lập tức.
- **CC người không liên quan** — thời gian của họ không phải miễn phí.

Nếu bạn băn khoăn "có nên CC người này không", câu trả lời mặc định là **không**. Bạn có thể forward riêng cho họ sau.

## BCC — khác hẳn với CC
BCC (Rule 21) không hiển thị cho các người nhận khác. Không dùng BCC để *gài* cấp trên vào mà người nhận chính không biết — cấp trên có thể vô tình "Reply All", lộ ra, và bạn mất uy tín.

## Cụm từ mẫu
> **"CC ai, giới thiệu họ ngay trong body. Người nhận chính không phải đoán."**

*Dùng khi:* bất cứ mail nào có dòng CC. Một câu giới thiệu 10 từ tiết kiệm được một chuỗi hiểu nhầm có thể kéo dài nhiều ngày.', 'system', 20, 'free', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001021, 8001, NULL, 'markdown_book', 'Rule 21 — BCC bắt buộc khi gửi hàng loạt tới nhóm không liên quan nhau', '# Rule 21 — BCC bắt buộc khi gửi hàng loạt tới nhóm không liên quan nhau
> **Luận điểm.** Khi bạn gửi **một mail cho nhiều người không quen biết nhau** — danh sách khách hàng, danh sách nhà cung cấp, thông báo chung tới nhiều phòng ban — **phải dùng BCC**. Để các địa chỉ email trong dòng `To:` hoặc `Cc:` là đang **làm lộ email của từng người cho tất cả những người còn lại**. Đây là vi phạm quyền riêng tư, có khi là vi phạm luật bảo vệ dữ liệu cá nhân (Nghị định 13/2023/NĐ-CP tại Việt Nam).
>
> Từ khóa của rule này: **"gửi hàng loạt = BCC"**.

## Bối cảnh
Cuối năm, Dũng cần gửi thư chúc Tết đến 50 khách hàng của Cty Thiên Phát. Các khách hàng này là đối thủ hoặc đối tác của nhau — họ *không nên biết* ai cũng là khách của Thiên Phát.

## Ví dụ XẤU — để tất cả vào `To:`
> **To:** minh.nguyen@hakuo.co.jp, hoa.tran@vpconsult.vn, nam.le@phuongnam-co.vn, ... (47 email nữa)
>
> Kính gửi Quý khách hàng,
>
> Nhân dịp Tết Nguyên đán, Cty Thiên Phát xin gửi lời chúc...

**Hậu quả.**
- Anh Matsumoto bên Hakuō vừa mở mail, thấy 49 email khác → biết ngay toàn bộ danh sách khách hàng của Thiên Phát.
- Một trong 50 khách bấm **"Reply All"** (có thể không cố ý) → 49 người còn lại bị spam.
- Một đối thủ của Hakuō nằm trong danh sách → giờ họ biết Hakuō dùng dịch vụ Thiên Phát.
- Nếu một trong số đó bị hack mail, spam sẽ có danh sách 50 địa chỉ để tiếp tục gửi.

**Về pháp lý.** Theo Nghị định 13/2023/NĐ-CP về Bảo vệ dữ liệu cá nhân có hiệu lực từ 01/07/2023, email là dữ liệu cá nhân. Lộ địa chỉ email của khách hàng mà không có cơ sở hợp pháp có thể bị xử phạt.

## Ví dụ TỐT — để trong `Bcc:`
> **To:** info@tienphat.com.vn *(chính mail công ty mình)*
> **Bcc:** minh.nguyen@hakuo.co.jp, hoa.tran@vpconsult.vn, nam.le@phuongnam-co.vn, ... (47 email nữa)
>
> Kính gửi Quý khách hàng,
>
> Nhân dịp Tết Nguyên đán, Cty Thiên Phát xin gửi lời chúc...

**Điều xảy ra:**
- Mỗi khách hàng nhận được mail riêng, chỉ thấy mình trong `To:` (hoặc thấy `info@tienphat.com.vn`).
- Không khách hàng nào biết mail được gửi cho ai khác.
- Nếu ai bấm "Reply All", chỉ Cty Thiên Phát nhận được — không ảnh hưởng đến 49 người còn lại.

## Quy tắc chọn To / Cc / Bcc
| Loại mail | Dùng gì |
|-----------|--------|
| Gửi trực tiếp 1 người | `To:` người đó |
| Gửi 1 người, 1-3 người liên quan cần biết | `To:` người chính, `Cc:` người liên quan (kèm giới thiệu — Rule 20) |
| Gửi 1 nhóm nhỏ (3-7 người) làm việc cùng nhau | `To:` tất cả — họ đã biết nhau |
| Gửi >10 người **biết nhau** (ví dụ cả phòng) | `To:` tất cả hoặc alias nhóm (`phongkd@tienphat.com.vn`) |
| Gửi >10 người **không biết nhau** | **`Bcc:` bắt buộc** |
| Gửi thông báo hàng loạt khách hàng | **`Bcc:` bắt buộc** |

## Khi BCC không hợp — các trường hợp cần chú ý
### Trường hợp 1 — BCC sếp để "gài"
Bạn gửi mail cho một đối tác, BCC sếp của bạn để sếp theo dõi, *mà không nói với đối tác*. Nếu sếp vô tình "Reply All" → đối tác biết → mất niềm tin. Cũng thể hiện văn hoá làm việc thiếu minh bạch.

**Cách đúng:**
- Forward mail cho sếp sau khi gửi.
- Hoặc CC sếp và giới thiệu ("CC chị Hương để chị nắm thông tin") — tức là mở công khai.

### Trường hợp 2 — BCC người nhận chính tiếp theo
Khi thread chuyển chủ đề và cần đưa một người mới vào, không dùng BCC để "đưa lén". Nói thẳng trong body mới: "Em thêm anh Tuấn vào thread từ đây để ảnh tiếp tục theo dõi."

### Trường hợp 3 — BCC thay vì Cc vì lười giải thích
Nếu bạn đang BCC vì *không muốn giải thích tại sao người đó ở đây* — hãy tự hỏi lại: nếu phải giải thích thì có gì sai? Nếu có, đừng CC cũng đừng BCC. Nếu không có, hãy CC và giải thích.

## Cách thiết lập BCC an toàn khi gửi hàng loạt
1. **Viết mail xong, chưa điền người nhận.**
2. Tự gửi cho mình trong `To:` hoặc dùng địa chỉ chung công ty (`info@tienphat.com.vn`).
3. Copy danh sách email khách hàng, paste vào `Bcc:` — kiểm tra 2 lần không có địa chỉ nào rơi vào `To:` hoặc `Cc:`.
4. **Kiểm tra lại lần nữa.** Một lần gửi nhầm là không rút lại được.
5. Nếu danh sách >100 người: nên dùng công cụ email marketing chuyên dụng (Mailchimp, GetResponse, SendinBlue) thay vì BCC, vì BCC dễ bị filter spam khi danh sách quá lớn.

## Cụm từ mẫu
> **"Nhiều người không biết nhau = BCC, không phải Cc. Kiểm tra hai lần trước khi gửi."**

*Dùng khi:* mỗi mail có từ 5 địa chỉ trở lên và bạn không chắc họ có biết nhau không. Khi phân vân, mặc định là BCC.', 'system', 21, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001022, 8001, NULL, 'markdown_book', 'Rule 22 — Viết trong body hay đính kèm: 3 tiêu chí', '# Rule 22 — Viết trong body hay đính kèm: 3 tiêu chí
> **Luận điểm.** Câu hỏi đứng giữa body và attachment hiện ra mỗi lần bạn soạn mail có nội dung hơi dài. Không có quy tắc tuyệt đối, nhưng có **3 tiêu chí** giúp quyết định nhanh: (1) **độ dài**, (2) **cách đọc** (scan hay đọc kỹ), (3) **khả năng lưu trữ/tra cứu**. Xác định sai thường dẫn đến tình trạng "đã gửi file nhưng không ai mở", hoặc "body dài quá không ai đọc hết".
>
> Từ khóa của rule này: **"3 tiêu chí body–file"**.
>
> **Liên quan:** Rule 65 (ghi rõ tên file trong body), Rule 66 (tóm tắt 1 dòng/file), Rule 67 (giới hạn 10MB).

## Ba tiêu chí
### Tiêu chí 1 — Độ dài
| Độ dài nội dung | Nên để ở đâu |
|-----------------|--------------|
| ≤ 5 dòng | Body |
| 5–15 dòng có cấu trúc rõ | Body (với bullet, heading phụ) |
| 15–30 dòng | Body nếu người đọc cần quyết nhanh; file nếu là tài liệu tham khảo |
| > 30 dòng | File đính kèm, body chỉ tóm tắt |

**Lý do:** Trên mobile, body dài hơn 30 dòng người đọc phải cuộn nhiều lần — cảm giác bội thực. Nhưng file đính kèm bản chất là "thêm một bước" (phải tải về, phải mở), nên nếu nội dung ngắn mà bắt người ta mở file là phiền.

### Tiêu chí 2 — Cách đọc
Câu hỏi cốt lõi: *người đọc sẽ đọc lướt một lần duy nhất, hay sẽ tra cứu lại nhiều lần?*

| Cách đọc | Nên để ở đâu |
|---------|--------------|
| Đọc lướt 1 lần để biết, không quay lại | Body |
| Cần quay lại tra cứu nhiều lần sau này | File (để dễ lưu) |
| Có bảng biểu, cần copy số ra dùng | File Excel |
| Hình ảnh, diagram, sơ đồ | File (ảnh hoặc PDF) |
| Chỉ có chữ, không có format phức tạp | Body |

### Tiêu chí 3 — Khả năng lưu trữ / tra cứu
Nếu nội dung cần **lưu lại thành hồ sơ** (hợp đồng, biên bản, báo cáo chính thức), phải là file. Body mail khó lưu trữ có hệ thống — bạn không thể đưa "nội dung mail" vào folder Google Drive để ai cần vào xem được.

| Loại nội dung | Nên để ở đâu |
|---------------|--------------|
| Hợp đồng, phụ lục hợp đồng | File PDF (đã ký số càng tốt) |
| Báo giá chính thức | File PDF |
| Biên bản họp, nghị quyết | File Word/PDF |
| Dữ liệu, số liệu | File Excel |
| Dự thảo đang thảo luận | Body (để dễ comment inline) |
| Cập nhật trạng thái công việc | Body |
| Tài liệu thiết kế, specification | File (PDF/Word), body tóm tắt |

## Ví dụ — cùng một nội dung, hai cách tổ chức
### Tình huống
Dũng gửi chị Hương báo cáo tuần. Báo cáo có 15 dòng text + 1 bảng số liệu 10 cột × 8 dòng + 2 biểu đồ.

### Ví dụ XẤU 1 — nhét tất cả vào body
Dũng paste bảng 10 cột vào body → trên mobile bảng vỡ, đọc không được. Biểu đồ không chèn được vào body thuần text → Dũng viết mô tả bằng chữ → mất thông tin hình ảnh.

Kết quả: chị Hương không đọc được báo cáo trên điện thoại, phải chờ về máy tính mới mở mail. Mất cửa sổ 24h vàng (Rule 04).

### Ví dụ XẤU 2 — tất cả vào file, body 1 dòng
> Chị Hương,
>
> Em gửi chị báo cáo tuần 19, file đính kèm.
>
> Dũng

Chị Hương thấy mail 1 dòng + file. Chị đang bận, không có thời gian tải file. Chị bỏ qua, "đọc sau". "Sau" không đến.

### Ví dụ TỐT — body tóm tắt, file chi tiết
> Chị Hương,
>
> Chúc chị một tuần làm việc hiệu quả. Em gửi chị báo cáo tuần 19 — 3 điểm chị cần biết:
>
> - **Hạng mục A** (Frontend): đúng tiến độ, demo vào thứ Sáu.
> - **Hạng mục B** (API Hakuō): trễ 2 ngày do chờ xác nhận yêu cầu; em đang xử lý.
> - **Hạng mục C** (Budget): cần chị duyệt phát sinh 80tr trước 15/05.
>
> Số liệu chi tiết và biểu đồ tiến độ em để trong file đính kèm (`bao-cao-tuan-19.xlsx`, 2 sheet).
>
> Em cảm ơn chị.
> Dũng

- Chị Hương đọc 30 giây trên điện thoại là nắm được bức tranh.
- Nếu chị cần số liệu cụ thể, chị mở file ở máy tính sau.
- Không có thông tin nào bị *chôn* trong file mà chị không biết để đi tìm.

## Nguyên tắc vàng — "file luôn có tóm tắt body"
**Không bao giờ gửi file đính kèm mà không có ít nhất một đoạn tóm tắt trong body.** Ba câu là tối thiểu:

> "Em gửi chị [tên file]. [Mô tả 1 câu về nội dung file]. [Lý do quan trọng / điều chị cần chú ý nhất]."

Nếu bạn chỉ gửi file mà không tóm tắt, bạn đang bắt người đọc *chẩn đoán nội dung file bằng tên file* — rất tệ cho trải nghiệm.

## Cụm từ mẫu
> **"Ngắn → body. Dài, cần lưu, có bảng biểu → file. File luôn kèm tóm tắt 3 câu trong body."**

*Dùng khi:* trước khi bấm Send và mail có file đính kèm. Đảm bảo body có đủ thông tin để người đọc hành động *mà không cần mở file*, còn file là nơi cung cấp chiều sâu cho ai cần.', 'system', 22, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001023, 8001, NULL, 'markdown_book', 'Rule 23 — Bỏ đoạn văn dài, ưu tiên danh sách có gạch đầu dòng', '# Rule 23 — Bỏ đoạn văn dài, ưu tiên danh sách có gạch đầu dòng
> **Luận điểm.** Đoạn văn dài bắt người đọc *tự tìm* các ý chính trong rừng chữ. Danh sách gạch đầu dòng làm cấu trúc *hiện ra*. Trong email công việc, 9 trên 10 lần, gạch đầu dòng đọc nhanh hơn, hiểu đúng hơn, và ghi nhớ lâu hơn.
>
> Từ khóa: **"gạch đầu dòng trước"**.

## Ví dụ XẤU — 1 đoạn dài
> Em đã trao đổi với Hakuō về yêu cầu bảo mật mới. Họ yêu cầu 3 hạng mục kiểm thử: kiểm thử xâm nhập mạng, kiểm thử ứng dụng web, và kiểm thử API. Về timeline, họ muốn xong trước 30/05, nhưng em nghĩ cần tới 15/06. Về ngân sách, họ chấp nhận mức 80 triệu, nhưng nếu cần có thể đẩy lên 100 triệu. Về nhà thầu, họ đề xuất Cty An Khang hoặc Cty Bảo Toàn.

## Ví dụ TỐT — tách thành 4 nhóm
> Em tổng hợp trao đổi với Hakuō về yêu cầu bảo mật mới:
>
> **Hạng mục kiểm thử:**
> - Xâm nhập mạng
> - Ứng dụng web
> - API
>
> **Timeline:** Họ muốn trước 30/05, em đề xuất 15/06.
>
> **Ngân sách:** Chấp nhận 80tr, tối đa 100tr.
>
> **Nhà thầu đề xuất:** Cty An Khang hoặc Cty Bảo Toàn.

**Vì sao hơn:** Chị Hương có thể *nhảy thẳng* đến phần cần duyệt (ngân sách) hoặc phần cần quyết (nhà thầu) mà không đọc lại mọi câu.

## Khi nào nên dùng đoạn văn
- Kể một câu chuyện ngắn (ví dụ: diễn biến sự cố theo trình tự thời gian).
- Lý giải cảm xúc / tình huống tế nhị (mail xin lỗi).
- Mở bài, dẫn nhập — 1-2 câu đủ.

## Cụm từ mẫu
> **"Thấy ''và'', ''cùng với'', ''ngoài ra'' nối >3 ý — tín hiệu chuyển sang gạch đầu dòng."**', 'system', 23, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001024, 8001, NULL, 'markdown_book', 'Rule 24 — Phương pháp ngược: phác gạch đầu dòng trước, nối thành câu sau', '# Rule 24 — Phương pháp ngược: phác gạch đầu dòng trước, nối thành câu sau
> **Luận điểm.** Thói quen xấu: viết thẳng thành đoạn văn, rồi khi đọc lại cắt thành gạch đầu dòng. Cách tốt: **viết gạch đầu dòng trước như phác họa**, rồi mới quyết định phần nào giữ dạng list, phần nào nối thành câu. Cấu trúc rõ từ đầu, đỡ sửa lại.
>
> Từ khóa: **"phác list trước"**.

## Quy trình 3 bước
**Bước 1 — Phác:** Liệt kê các ý cần truyền đạt dưới dạng gạch đầu dòng ngắn.

**Bước 2 — Nhóm:** Gộp ý liên quan, sắp xếp theo Kết luận → Lý do → Chi tiết.

**Bước 3 — Quyết định:** Phần nào giữ list, phần nào nối đoạn (nếu 1-2 ý đủ ngắn).

## Ví dụ
**Phác:**
- A đúng tiến độ
- B trễ 2 ngày, em đang xử lý
- C cần duyệt 80tr trước 15/05
- Anh Tuấn họp với khách thứ Tư

**Sau khi nhóm + quyết định:**

> Báo cáo tuần 19 — 3 điểm chị cần biết:
> - Hạng mục A: đúng tiến độ.
> - Hạng mục B: trễ 2 ngày, em đang xử lý.
> - Hạng mục C: cần chị duyệt 80tr trước 15/05.
>
> Ghi chú: Anh Tuấn có họp với Hakuō thứ Tư 14/05.

## Vì sao
- Viết đoạn văn từ đầu → dễ dính cấu trúc sai, cắt ra thấy thừa.
- Phác list → mắt nhìn được *toàn bộ bức tranh* trước khi quyết hình thức.

## Cụm từ mẫu
> **"Phác list trước khi câu."**', 'system', 24, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001025, 8001, NULL, 'markdown_book', 'Rule 25 — Câu hỏi viết dạng danh sách đánh số để đối phương trả lời từng ý', '# Rule 25 — Câu hỏi viết dạng danh sách đánh số để đối phương trả lời từng ý
> **Luận điểm.** Khi cần đối phương trả lời nhiều câu hỏi, **đánh số** từng câu. Việc này cho phép họ reply inline — quote câu hỏi của bạn và trả lời ngay dưới — mà không bị sót câu nào. Câu hỏi trộn trong đoạn văn thường bị trả lời một nửa.
>
> Từ khóa: **"câu hỏi = đánh số"**.

## Ví dụ XẤU
> Chị cho em hỏi về ngân sách Bình Minh: chị đã duyệt 80 triệu chưa, nếu rồi thì khi nào em có thể ký PO với An Khang, và liệu em có cần làm thêm báo cáo gì không ạ?

Chị Hương reply: *"Đã duyệt. Tuần tới ký."* → câu hỏi thứ 3 (báo cáo) bị bỏ.

## Ví dụ TỐT
> Em xin chị cho em hỏi 3 điểm về ngân sách Bình Minh:
>
> 1. Chị đã duyệt 80tr chưa ạ?
> 2. Nếu rồi, em có thể ký PO với An Khang từ ngày nào?
> 3. Em có cần làm thêm báo cáo gì liên quan không?

Chị Hương reply inline:
> 1. Đã duyệt.
> 2. Từ thứ Tư 14/05.
> 3. Không cần thêm, nhưng copy PO gửi chị Loan nhé.

Cả 3 câu được trả lời đầy đủ.

## Mẹo tăng tỷ lệ reply
- **Giới hạn 5 câu/lần.** >5 câu → đối phương đuối, reply nửa chừng.
- **Sắp xếp theo độ khó: dễ → khó.** Đối phương trả lời được câu 1, 2 sẽ có đà trả lời câu 3, 4.
- **Câu nào cần hành động lâu → nói rõ.** Ví dụ "(câu 3 cần 10 phút tra cứu, chị có thể trả lời riêng sau)".

## Cụm từ mẫu
> **"Nhiều hơn 1 câu hỏi → đánh số. Đánh số giúp reply inline."**', 'system', 25, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001026, 8001, NULL, 'markdown_book', 'Rule 26 — "Ngày mai", "tuần tới" là bẫy — ghi ngày cụ thể', '# Rule 26 — "Ngày mai", "tuần tới" là bẫy — ghi ngày cụ thể
> **Luận điểm.** Viết "ngày mai, thứ Năm 15/05, 10:00 sáng". *Không* viết "ngày mai". Mail gửi lúc 23:00 thứ Tư → "ngày mai" là gì? Thứ Năm? Hay thứ Sáu (vì sang ngày mới)? Gửi quốc tế → múi giờ nào? Ghi rõ mọi chi tiết: thứ + ngày + giờ + (múi giờ nếu cần).
>
> Từ khóa: **"ngày tuyệt đối"**.

## Ví dụ XẤU
> "Em nộp báo cáo ngày mai được không chị?"
> "Chúng ta họp chiều thứ Sáu tuần sau."

**Vấn đề:**
- "Ngày mai" tính từ lúc viết hay lúc đọc? Nếu viết lúc 23:50 → rất khác.
- "Thứ Sáu tuần sau" — tuần sau này hay tuần sau nữa? Người Việt dùng không thống nhất.
- "Chiều" — 13:00 hay 17:00?

## Ví dụ TỐT
> "Em nộp báo cáo **thứ Năm 15/05 trước 17:00** được không chị?"
> "Chúng ta họp **thứ Sáu 23/05, 14:00 (GMT+7)**."

## Format khuyến nghị
| Loại | Format |
|------|--------|
| Ngày có thứ | thứ Ba 20/05 |
| Có giờ | thứ Ba 20/05, 14:00 |
| Có múi giờ (gửi quốc tế) | thứ Ba 20/05, 14:00 (GMT+7) |
| Deadline cuối ngày | trước 23:59 thứ Ba 20/05 |
| Deadline đầu ngày | trước 09:00 thứ Tư 21/05 |
| Khoảng thời gian | 14:00–15:30 thứ Ba 20/05 |

## Bẫy thường gặp
- **"Đầu tuần"** — là thứ Hai, thứ Ba, hay thứ Tư?
- **"Cuối tháng"** — ngày 28? Ngày 31? Ngày cuối đi làm?
- **"Sớm nhất có thể"** — trong 1 giờ? 1 ngày? 1 tuần?

Nếu không ghi số cụ thể, 10 người đọc sẽ hiểu 10 cách khác nhau.

## Cụm từ mẫu
> **"Thứ + Ngày + Giờ + (Múi giờ nếu cần). 4 ô, điền hết."**', 'system', 26, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001027, 8001, NULL, 'markdown_book', 'Rule 27 — Một câu một ý', '# Rule 27 — Một câu một ý
> **Luận điểm.** Câu dài 3 dòng với 2-3 mệnh đề phụ buộc người đọc phải *giải mã* cấu trúc ngữ pháp trước khi hiểu ý. Nguyên tắc đơn giản và khó cãi: **một câu chở một ý**. Ý lớn → cắt thành nhiều câu. Câu dài hơn 2 dòng → cần cắt.
>
> Từ khóa: **"một câu một ý"**.

## Ví dụ XẤU
> "Em đã trao đổi với anh Tuấn về việc ngân sách phát sinh 80 triệu cho Bình Minh, và anh ấy đồng ý với mức này vì đã tham khảo giá từ 3 nhà thầu, tuy nhiên anh Tuấn cũng nhắc rằng nếu chị thấy cần điều chỉnh thì em có thể đàm phán lại, nhưng em nghĩ mức này là hợp lý rồi chị ạ."

1 câu = 65 từ = 4 ý.

## Ví dụ TỐT
> "Em đã trao đổi với anh Tuấn về ngân sách phát sinh 80 triệu cho Bình Minh. Anh ấy đồng ý vì đã tham khảo 3 nhà thầu. Anh Tuấn có lưu ý: nếu chị muốn điều chỉnh, em có thể đàm phán lại. Em nghĩ mức này hợp lý."

4 câu, mỗi câu 1 ý. Đọc nhanh hơn nhiều.

## Dấu hiệu câu cần cắt
- Có "và… tuy nhiên… nhưng…" nối >2 mệnh đề.
- Có từ "mà" đứng giữa, chia câu thành 2 phần gần như độc lập.
- Đọc to lên phải lấy hơi giữa chừng.

## Ngoại lệ hợp lý
- Liệt kê ngắn: "Hạng mục A, B và C đều đúng tiến độ."
- Câu mang nhịp cảm xúc trong mail cảm ơn.

## Cụm từ mẫu
> **"Một câu một ý. Câu dài hơn 2 dòng là câu cần cắt."**', 'system', 27, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001028, 8001, NULL, 'markdown_book', 'Rule 28 — Ý quan trọng nhất gói vào 1 câu đơn, đặt đầu đoạn', '# Rule 28 — Ý quan trọng nhất gói vào 1 câu đơn, đặt đầu đoạn
> **Luận điểm.** Mỗi đoạn văn có *một* ý chính. Ý đó nên được viết thành **1 câu đơn** — chủ ngữ + động từ + bổ ngữ, không mệnh đề phụ — và đặt **ngay câu đầu đoạn**. Người đọc đọc 1 câu biết toàn bộ đoạn nói gì.
>
> Từ khóa: **"ý chính câu đầu"**.

## Ví dụ XẤU
> "Em đã tham khảo giá từ 3 nhà thầu bao gồm An Khang, Bảo Toàn, và Tín Việt. An Khang báo giá 78tr, Bảo Toàn 82tr, Tín Việt 85tr. So sánh năng lực và giá, em đề xuất chọn An Khang."

Đọc đến câu cuối mới biết kết luận.

## Ví dụ TỐT
> "**Em đề xuất chọn An Khang.** Em đã so sánh 3 nhà thầu: An Khang 78tr, Bảo Toàn 82tr, Tín Việt 85tr. An Khang có giá thấp nhất và năng lực tương đương."

Câu đầu = kết luận. 30 giây đọc biết nên chọn ai.

## Cách viết câu chính
- **Chủ ngữ rõ**: "Em đề xuất…", "Hạng mục A đang trễ…", "Chị cần duyệt…"
- **Động từ hành động**: đề xuất, đề nghị, cần, báo cáo, thông báo.
- **Bổ ngữ cụ thể**: không dùng từ mơ hồ như "một vài", "khoảng", "có thể".

## Cụm từ mẫu
> **"1 đoạn = 1 ý chính = 1 câu đơn ở đầu đoạn."**', 'system', 28, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001029, 8001, NULL, 'markdown_book', 'Rule 29 — Thuyết phục chỉ cần 1 câu lý do, không cần 3 đoạn', '# Rule 29 — Thuyết phục chỉ cần 1 câu lý do, không cần 3 đoạn
> **Luận điểm.** Khi cần thuyết phục (xin duyệt, xin đổi lịch, bảo vệ quyết định), **một câu lý do súc tích** thường mạnh hơn 3 đoạn giải trình. Đoạn giải trình dài cho cảm giác *đang cố gắng thuyết phục* — đôi khi ngược lại, gây nghi ngờ.
>
> Từ khóa: **"lý do gói một câu"**.

## Ví dụ XẤU
> "Chị ơi, em xin dời deadline nộp báo cáo từ 15/05 sang 17/05. Là vì em đang rất bận với Bình Minh, tuần này có 2 cuộc họp với Hakuō, anh Tuấn lại nghỉ ốm nên em phải gánh thêm việc của ảnh, hơn nữa em còn phải tham gia onboarding cho Linh. Thật sự là em cố gắng hết mức nhưng không kịp được chị ạ, em mong chị thông cảm."

## Ví dụ TỐT
> "Chị ơi, em xin dời deadline báo cáo từ 15/05 sang 17/05 — vì anh Tuấn nghỉ ốm đột xuất và em phải gánh thêm phần việc của anh ấy tuần này. Em cảm ơn chị."

**1 câu lý do** = một sự kiện cụ thể (anh Tuấn nghỉ ốm) + một hệ quả rõ (em gánh thêm việc). Không thừa, không giải trình.

## Tại sao 1 câu hơn 3 đoạn
- **Sự tin cậy**: ít lý do hơn = ít dấu hiệu "đang bịa thêm".
- **Dễ đồng ý**: đối phương không phải xử lý 5 lý do xem cái nào có lý.
- **Tôn trọng thời gian**: không bắt đối phương đọc đoạn dài.

## Cụm từ mẫu
> **"1 lý do cụ thể + 1 hệ quả rõ. Đủ."**', 'system', 29, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001030, 8001, NULL, 'markdown_book', 'Rule 30 — Việc nhỏ — mail 1 dòng không có gì đáng ngại', '# Rule 30 — Việc nhỏ — mail 1 dòng không có gì đáng ngại
> **Luận điểm.** Văn hoá email trang trọng khiến nhiều người *không dám* gửi mail ngắn 1 dòng, sợ "cộc lốc". Nhưng 1 dòng đủ thông tin tốt hơn 10 dòng lãng phí. Nhiều loại mail **chỉ cần 1 dòng**: xác nhận đã nhận, cảm ơn, thông tin nhanh.
>
> Từ khóa: **"1 dòng không có lỗi"**.

## Các loại mail 1 dòng hợp lệ
### Xác nhận đã nhận
> "Chị Hương, em đã nhận file, cảm ơn chị."

### Thông tin nhanh
> "Chị Hương, anh Matsumoto (Hakuō) vừa xác nhận buổi họp thứ Năm 09:30 như trao đổi."

### Đồng ý / không đồng ý ngắn
> "Chị Hương, em đồng ý với phương án 2."

### Hẹn giờ phản hồi
> "Chị Hương, em đang xử lý, sẽ gửi chị bản cập nhật trước 15:00 hôm nay."

## Quan trọng — vẫn giữ khung tối giản
Mail 1 dòng **vẫn có 5 khối** Rule 11, chỉ rút gọn:

- Kính gửi: "Chị Hương," (1 dòng)
- Mở đầu + thân + kết: **gộp thành 1 câu** duy nhất
- Chữ ký: "Dũng" (1 dòng)

→ Tổng: 3 dòng trên màn hình, nhưng vẫn là "email lịch sự".

## Khi không nên 1 dòng
- Mail gửi khách hàng lần đầu.
- Mail xin lỗi (cần đủ 4 bước — Rule 53).
- Mail chứa yêu cầu hành động quan trọng.

## Cụm từ mẫu
> **"Việc 1 dòng giải quyết xong — đừng viết 1 đoạn."**', 'system', 30, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001031, 8001, NULL, 'markdown_book', 'Rule 31 — Chủ ngữ rõ ràng: "ai làm", "khi nào làm"', '# Rule 31 — Chủ ngữ rõ ràng: "ai làm", "khi nào làm"
> **Luận điểm.** Tiếng Việt cho phép *lược chủ ngữ* rất linh hoạt — thuận tiện trong văn nói nhưng là bẫy trong email công việc. Câu không có chủ ngữ rõ → người đọc tự đoán ai làm → đoán sai → việc lạc tay. **Trong email, luôn nêu rõ chủ thể hành động.**
>
> Từ khóa: **"chủ ngữ lộ"**.

## Ví dụ XẤU
> "Sẽ hoàn thiện báo cáo trong tuần này. Cần duyệt trước khi gửi khách."

*Ai* hoàn thiện? *Ai* duyệt? Chị Hương có thể hiểu: "em Dũng hoàn thiện, tôi duyệt". Nhưng cũng có thể hiểu ngược: "tôi hoàn thiện, anh Tuấn duyệt". → Rủi ro.

## Ví dụ TỐT
> "**Em Dũng** sẽ hoàn thiện báo cáo trong tuần này. **Chị Hương** cần duyệt trước khi gửi khách."

Rõ ai làm gì.

## Dấu hiệu câu thiếu chủ ngữ
- Bắt đầu bằng động từ ("Sẽ gửi…", "Đã làm…", "Cần duyệt…").
- Dùng chủ ngữ mặc nhiên ("được gửi", "được duyệt").
- Trong danh sách tác vụ, không có tên người đi kèm.

## Format khuyến nghị cho danh sách tác vụ
> **Phân công tuần 19:**
> - [Dũng] Hoàn thiện báo cáo — trước thứ Năm 15/05.
> - [Chị Hương] Duyệt báo cáo — trước thứ Sáu 16/05.
> - [Dũng] Gửi Hakuō — thứ Hai 19/05.

Tên trong ngoặc vuông = chủ ngữ hành động. Không có ngoại lệ.

## Cụm từ mẫu
> **"Mỗi hành động, có tên người. Không ''sẽ làm'' mờ mịt."**', 'system', 31, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001032, 8001, NULL, 'markdown_book', 'Rule 32 — Tách sự thật khỏi nhận định, không trộn', '# Rule 32 — Tách sự thật khỏi nhận định, không trộn
> **Luận điểm.** **Sự thật** là thứ có thể xác minh (số liệu, ngày tháng, báo cáo có chứng cứ). **Nhận định** là đánh giá chủ quan của bạn. Hai thứ này **không được trộn trong cùng một câu**. Người đọc phải phân biệt được "đâu là dữ liệu để tin, đâu là ý kiến để cân nhắc".
>
> Từ khóa: **"tách sự thật / nhận định"**.

## Ví dụ XẤU — trộn
> "Hakuō đang rất khó tính về vấn đề bảo mật — họ yêu cầu 3 hạng mục kiểm thử mới và có thể sẽ yêu cầu thêm."

*"Rất khó tính"* là nhận định. *"Yêu cầu 3 hạng mục"* là sự thật. *"Có thể sẽ yêu cầu thêm"* là dự đoán. Trộn làm người đọc khó tin được phần nào.

## Ví dụ TỐT — tách rõ
> **Sự thật:** Hakuō đã yêu cầu 3 hạng mục kiểm thử bảo mật mới (ngày 10/05).
>
> **Nhận định của em:** Hakuō đang quan tâm đặc biệt tới bảo mật — em nghĩ sẽ có thêm yêu cầu trong 2 tuần tới.
>
> **Dựa trên:** Trong 3 mail gần nhất, họ nhắc đến từ "security" 8 lần (tăng so với 2 lần trong tháng trước).

Chị Hương biết rõ: sự thật 100%, nhận định có cơ sở, dự đoán có dữ liệu chống lưng.

## Từ ngữ giúp tách
### Sự thật
- "Đã xảy ra"
- "Theo số liệu"
- "Kết quả đo / kết quả test"
- "Họ đã nói / viết"

### Nhận định
- "Em nghĩ / em cho rằng"
- "Đánh giá của em"
- "Theo em"
- "Khả năng cao / có thể"

## Cụm từ mẫu
> **"Sự thật là X. Em nghĩ Y. Không trộn hai vế trong một câu."**', 'system', 32, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001033, 8001, NULL, 'markdown_book', 'Rule 33 — Đưa nhận định phải kèm căn cứ: con số, ví dụ, trích dẫn', '# Rule 33 — Đưa nhận định phải kèm căn cứ: con số, ví dụ, trích dẫn
> **Luận điểm.** Nhận định không có căn cứ = **cảm tính**. Nhận định có căn cứ = **phân tích**. Ở email công việc, cảm tính không có giá trị quyết định. Mỗi nhận định đưa ra phải kèm **ít nhất 1 trong 3 loại căn cứ**: con số, ví dụ cụ thể, hoặc trích dẫn nguồn.
>
> Từ khóa: **"nhận định + 1 căn cứ"**.

## Ví dụ XẤU
> "Em nghĩ nhà thầu An Khang tốt hơn Bảo Toàn."

→ Chị Hương không biết dựa trên cái gì. Có thể là cảm tính.

## Ví dụ TỐT
> "Em đề xuất An Khang hơn Bảo Toàn, dựa trên 3 điểm:
> - **Con số:** An Khang 78tr, Bảo Toàn 82tr (chênh 5%).
> - **Ví dụ:** An Khang đã làm cho Cty Tân Phú (dự án tương tự), chứng thư đính kèm.
> - **Trích dẫn:** Anh Tuấn (tech lead bên em) đã review hồ sơ năng lực của cả 2, nghiêng về An Khang vì team có 2 CISSP."

→ Chị Hương có *dữ liệu* để quyết định.

## 3 loại căn cứ
### Con số (số liệu định lượng)
- Giá, chi phí, doanh thu
- Phần trăm, tỷ lệ, biến động
- Thời gian, số lần, tần suất

### Ví dụ cụ thể
- Case study
- Sự kiện đã xảy ra
- Hình ảnh, biểu đồ

### Trích dẫn nguồn
- Ý kiến chuyên gia (có tên)
- Tài liệu chính thức (link)
- Báo cáo có tác giả

## Khi nhận định không cần căn cứ
- Sở thích cá nhân mà không ai quyết dựa vào đó.
- "Em cảm thấy vui vì…" — cảm xúc, không phải phân tích.

## Cụm từ mẫu
> **"Nhận định + ít nhất 1 trong 3 căn cứ: số, ví dụ, nguồn."**', 'system', 33, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001034, 8001, NULL, 'markdown_book', 'Rule 34 — Nhiều phương án → trình bày song song, đồng dạng', '# Rule 34 — Nhiều phương án → trình bày song song, đồng dạng
> **Luận điểm.** Khi đưa ra nhiều phương án (A / B / C) cho đối phương chọn, **mỗi phương án phải có cùng cấu trúc** — cùng số trường thông tin, cùng thứ tự, cùng cách diễn đạt. Trình bày lộn xộn khiến đối phương phải *so sánh bằng mắt* khó khăn.
>
> Từ khóa: **"cùng khung, so sánh dễ"**.

## Ví dụ XẤU — phương án trình bày khác nhau
> "Nhà thầu em tham khảo:
> - An Khang: 78tr, giao 15/06. Họ có team 5 người.
> - Bảo Toàn: báo giá 82tr. Đây là nhà thầu lâu năm của Hakuō.
> - Tín Việt: 85tr. Timeline 30/06. Có chứng chỉ ISO."

Mỗi phương án có thông tin khác nhau. Chị Hương không so sánh được.

## Ví dụ TỐT — cùng khung
> "So sánh 3 nhà thầu:
>
> | | An Khang | Bảo Toàn | Tín Việt |
> |--|----------|----------|----------|
> | **Giá** | 78tr | 82tr | 85tr |
> | **Timeline** | 15/06 | 20/06 | 30/06 |
> | **Nhân sự** | 5 người | 7 người | 4 người |
> | **Điểm cộng** | Đã làm dự án tương tự | Lâu năm với Hakuō | Có ISO 27001 |
> | **Điểm trừ** | Team mới | Giá cao hơn | Timeline xa |
>
> Em đề xuất An Khang."

Bảng so sánh cho phép chị Hương so *từng chiều* một cách nhanh chóng.

## Khung so sánh chuẩn
Cho mỗi phương án, liệt kê các trường sau theo đúng thứ tự:

1. Tên / định danh
2. Chỉ số định lượng chính (giá, thời gian, số lượng…)
3. Ưu điểm
4. Nhược điểm / rủi ro

Nếu dùng bảng: mỗi cột = 1 phương án, mỗi hàng = 1 thuộc tính.

## Cụm từ mẫu
> **"Cùng khung mới so sánh được. Bảng > danh sách khi có nhiều trường thông tin."**', 'system', 34, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001035, 8001, NULL, 'markdown_book', 'Rule 35 — Cắt những câu lịch sự rỗng không mang thông tin', '# Rule 35 — Cắt những câu lịch sự rỗng không mang thông tin
> **Luận điểm.** Nhiều câu "lịch sự mặc định" trong email thực tế **không mang thông tin** và chỉ làm dài mail. *"Em mong chị xem xét và cho em ý kiến khi rảnh."*, *"Em rất mong được nhận phản hồi từ chị."*, *"Em xin cảm ơn chị đã đọc mail này."* — cả 3 câu có thể thay bằng 1 câu rõ ràng.
>
> Từ khóa: **"cắt câu rỗng"**.

## Ví dụ XẤU — có nhiều câu rỗng
> "Chị Hương thân mến,
>
> Em hy vọng chị đang có một ngày tốt đẹp. Em viết mail này để xin phép chị cho em hỏi một câu, nếu chị không ngại ạ. Em rất mong được nhận phản hồi sớm từ chị, khi nào chị có thời gian rảnh rỗi.
>
> Em muốn hỏi chị là ngân sách 80tr cho Bình Minh đã duyệt chưa ạ?
>
> Em xin cảm ơn chị rất nhiều đã bỏ thời gian đọc mail của em và mong chị có thể phản hồi cho em. Em chân thành cảm ơn chị.
>
> Em Dũng"

## Ví dụ TỐT — đã cắt các câu rỗng
> "Chị Hương,
>
> Chúc chị một ngày tốt lành. Em xin hỏi: ngân sách 80tr cho Bình Minh đã duyệt chưa ạ?
>
> Em cảm ơn chị.
> Dũng"

Cùng thông tin, ngắn hơn 70%.

## Các cụm từ rỗng thường gặp
| Câu rỗng | Thay bằng |
|---------|-----------|
| "Em xin phép chị cho em hỏi một câu" | "Em xin hỏi:" |
| "Em rất mong được nhận phản hồi sớm" | "Em mong phản hồi trước [ngày]" |
| "Em xin cảm ơn chị rất nhiều đã bỏ thời gian" | "Em cảm ơn chị." |
| "Nếu chị không ngại / nếu có thể" | (bỏ) |
| "Khi chị có thời gian rảnh rỗi" | (bỏ, thay bằng deadline cụ thể) |
| "Em hy vọng mail này đến chị bình an" | (bỏ, thay bằng câu chào ngắn) |

## Lịch sự *thực* khác lịch sự *hình thức*
- Lịch sự **thực**: tôn trọng thời gian đối phương → viết gọn, rõ, có deadline cụ thể.
- Lịch sự **hình thức**: dùng nhiều cụm từ "lịch sự" → thực ra làm tốn thời gian đối phương.

## Cụm từ mẫu
> **"Câu nào đọc xong không thêm thông tin mới — cắt."**', 'system', 35, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001036, 8001, NULL, 'markdown_book', 'Rule 36 — Hệ xưng hô Việt: chọn đúng anh/chị/em/cô/chú/thầy ngay câu đầu', '# Rule 36 — Hệ xưng hô Việt: chọn đúng anh/chị/em/cô/chú/thầy ngay câu đầu
> **Luận điểm.** Tiếng Việt có hệ xưng hô theo tuổi và quan hệ: *anh, chị, em, cô, chú, bác, ông, bà, thầy, cô* (giáo viên)… Chọn sai ngay câu đầu tiên làm hỏng cả mail — cho thấy bạn không đầu tư thời gian tìm hiểu đối phương. Quy tắc: *khi không chắc, chọn cao hơn tuổi thật*.
>
> Từ khóa: **"xưng hô đúng ngay câu đầu"**.

## Bảng xưng hô cơ bản
| Đối phương | Xưng hô (người gửi là bạn) | Xưng (bạn xưng mình) |
|-----------|---------------------------|-----------------------|
| Lớn hơn bạn 10+ tuổi, nam | Anh / Bác (>20 tuổi hơn) / Chú | Em / Cháu |
| Lớn hơn bạn 10+ tuổi, nữ | Chị / Bác / Cô | Em / Cháu |
| Cùng tuổi hoặc gần tuổi, nam | Anh (lịch sự), Bạn | Em / Mình |
| Cùng tuổi hoặc gần tuổi, nữ | Chị / Em / Bạn | Em / Mình |
| Nhỏ hơn bạn | Em | Anh / Chị |
| Sếp, bất kể tuổi | Anh / Chị / Sếp | Em |
| Giáo viên | Thầy / Cô | Em |

## Nguyên tắc chọn khi không chắc
- **Xưng "em" và gọi đối phương "anh/chị"** là lựa chọn an toàn nhất trong email công việc, trừ khi bạn chắc chắn lớn tuổi hơn rõ rệt.
- **Gửi email lần đầu**: nếu không biết tuổi, dùng "anh/chị" và "em".
- **Hỏi trước khi quyết**: "Em xin phép gọi chị là chị nhé ạ?" — tế nhị, được tôn trọng.

## Sai lầm thường gặp
- Gọi "bạn" với người lớn tuổi hơn rõ rệt → quá bình dân.
- Gọi "em" với người lớn tuổi nhưng cấp dưới → gây khó xử.
- Đổi xưng hô giữa mail (câu đầu "anh", câu sau "bạn") → thiếu nhất quán.

## Cụm từ mẫu
> **"Không chắc? Dùng ''anh/chị'' + ''em''. An toàn trong 95% trường hợp."**', 'system', 36, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001037, 8001, NULL, 'markdown_book', 'Rule 37 — Trợ từ "ạ" — khi nào thêm, khi nào bỏ để không quá nặng', '# Rule 37 — Trợ từ "ạ" — khi nào thêm, khi nào bỏ để không quá nặng
> **Luận điểm.** Trợ từ "ạ" ở cuối câu là dấu hiệu kính trọng ở tiếng Việt. Dùng đúng → mail lịch sự, ấm. Dùng **quá nhiều** ("ạ" cuối mỗi câu) → mail nặng nề, lạc lõng. **Quy tắc đơn giản:** chỉ dùng "ạ" ở câu đầu và câu cuối mail; các câu giữa không cần.
>
> Từ khóa: **"ạ — mở và kết thôi"**.

## Ví dụ XẤU — "ạ" ở mọi câu
> "Chị Hương ạ,
>
> Em xin gửi chị báo cáo tuần ạ. Hạng mục A đang ổn ạ. Hạng mục B trễ 2 ngày ạ, em đang xử lý ạ. Hạng mục C cần chị duyệt ạ, trước 15/05 ạ.
>
> Em cảm ơn chị ạ.
> Em Dũng ạ."

→ 7 chữ "ạ" trong 1 mail. Nghe nặng nề, như đang "vâng vâng dạ dạ" quá mức.

## Ví dụ TỐT — "ạ" chừng mực
> "Chị Hương ạ,
>
> Em xin gửi chị báo cáo tuần 19. 3 điểm chị cần biết:
> - Hạng mục A: đang ổn
> - Hạng mục B: trễ 2 ngày, em đang xử lý
> - Hạng mục C: cần chị duyệt trước 15/05
>
> Em cảm ơn chị ạ.
> Dũng"

→ 2 chữ "ạ" — câu chào và câu cảm ơn cuối. Đủ kính trọng, không nặng.

## Khi nào bắt buộc dùng "ạ"
- Đối phương lớn hơn tuổi hoặc cấp trên, lần đầu liên hệ.
- Mail xin lỗi.
- Mail yêu cầu đặc biệt cần sự giúp đỡ.

## Khi nào có thể bỏ hết "ạ"
- Đồng nghiệp cùng tuổi, cùng cấp, đã quen lâu.
- Reply nhanh trong thread đang chạy.
- Mail nội bộ 1 dòng.

## Cụm từ mẫu
> **"1 mail = tối đa 2 chữ ''ạ'' (câu đầu, câu cuối). Không rải khắp."**', 'system', 37, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001038, 8001, NULL, 'markdown_book', 'Rule 38 — Mail lần đầu liên hệ: giới thiệu 3 điểm "ai — từ đâu — sao có email này"', '# Rule 38 — Mail lần đầu liên hệ: giới thiệu 3 điểm "ai — từ đâu — sao có email này"
> **Luận điểm.** Khi gửi mail cho người lần đầu, họ đọc sẽ có 3 câu hỏi trong đầu: *(1) Ai vậy? (2) Từ đâu? (3) Sao lại có email của tôi?*. **Đoạn đầu mail phải trả lời cả 3** — trước khi vào nội dung chính. Không trả lời = mail có khả năng bị bỏ qua hoặc đánh dấu spam.
>
> Từ khóa: **"3 điểm giới thiệu"**.

## Ví dụ XẤU — vào thẳng
> "Kính gửi anh Matsumoto,
>
> Em muốn trao đổi với anh về khả năng hợp tác giữa hai bên. Em có phương án A, phương án B, và phương án C..."

→ Anh Matsumoto không biết em là ai, từ công ty nào, tại sao có email mình. Nhiều khả năng xoá hoặc đánh spam.

## Ví dụ TỐT — 3 điểm rõ
> "Kính gửi anh Matsumoto,
>
> Em là Trần Văn Dũng, **chuyên viên BD tại Cty TNHH Thiên Phát (1)**. **Anh Nakamura — CFO bên Hakuō đã giới thiệu em với anh (2)** về nhu cầu dịch vụ của Hakuō. Anh Nakamura có gửi cho em email của anh **sau buổi họp tại văn phòng Hakuō tuần trước (3)**.
>
> Em viết mail này để..."

→ Anh Matsumoto trong 5 giây biết: ai, từ đâu, sao liên hệ.

## 3 điểm tiêu chuẩn
### Điểm 1 — Bạn là ai
- Họ tên đầy đủ
- Chức vụ
- Công ty

### Điểm 2 — Từ đâu
- Nguồn của sự kết nối (thường là người thứ ba giới thiệu, hoặc sự kiện gặp nhau)

### Điểm 3 — Sao có email
- Cách bạn biết email của họ (*quan trọng nhất để tránh cảm giác spam*)

## Cụm từ mẫu
> **"Mail đầu = (ai + từ đâu + sao có email) + nội dung. Không tránh được, không giấu được."**', 'system', 38, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001039, 8001, NULL, 'markdown_book', 'Rule 39 — Năm cách "xin phép" phổ biến trong tiếng Việt và khi nào dùng cách nào', '# Rule 39 — Năm cách "xin phép" phổ biến trong tiếng Việt và khi nào dùng cách nào
> **Luận điểm.** Tiếng Việt có nhiều cách "xin phép" khác nhau, mỗi cách mang mức trang trọng riêng. Dùng sai cách = gây khó chịu hoặc quá cứng. Năm cách phổ biến:
>
> Từ khóa: **"5 cách xin phép"**.

## 5 cấp độ, từ nhẹ đến trang trọng
### 1. "Chị cho em…"
**Mức nhẹ, gần gũi.** Dùng với sếp đã quen, đồng nghiệp thân.
> "Chị cho em gửi báo cáo tuần sau thứ Hai nhé."

### 2. "Em xin phép…"
**Trung tính, phổ biến nhất.** An toàn trong mọi ngữ cảnh công sở.
> "Em xin phép gửi báo cáo vào thứ Hai tuần sau."

### 3. "Nhờ chị…"
**Có chút mức nhờ vả.** Dùng khi cần đối phương làm gì đó giúp mình.
> "Nhờ chị duyệt giúp em bản cập nhật trước thứ Năm."

### 4. "Em kính nhờ chị…"
**Trang trọng, chính thức.** Dùng với cấp trên cao, khách hàng quan trọng.
> "Em kính nhờ anh Matsumoto xem xét bản đề xuất và cho ý kiến."

### 5. "Em rất mong được…"
**Tôn kính tối đa.** Dùng trong mail quan trọng, đối tác cao cấp, lần đầu liên hệ.
> "Em rất mong được anh Matsumoto dành chút thời gian tham khảo đề xuất."

## Dùng sai — các lỗi thường gặp
- "Tôi xin phép" → "Tôi" quá xa cách trong hầu hết mail công sở. Dùng "Em".
- "Nhờ chị" với khách hàng lần đầu → quá thân. Dùng "Em kính nhờ".
- "Em rất mong được" với đồng nghiệp thân hàng ngày → quá trang trọng, phô.

## Cụm từ mẫu
> **"Khoảng cách càng xa → cách xin phép càng trang trọng. Chọn đúng cấp độ như chọn quần áo đi làm."**', 'system', 39, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001040, 8001, NULL, 'markdown_book', 'Rule 40 — Lời cảm ơn có cấp độ — tránh "cảm ơn anh" trôi nổi mọi mail', '# Rule 40 — Lời cảm ơn có cấp độ — tránh "cảm ơn anh" trôi nổi mọi mail
> **Luận điểm.** "Cảm ơn" nếu dùng cho mọi mail, mọi tình huống, sẽ **mất trọng lượng**. Khi bạn thật sự cần biết ơn một ai đó (họ giúp việc lớn), câu "cảm ơn" của bạn không còn tác dụng. **4 cấp độ cảm ơn** giúp điều chỉnh theo mức độ việc người ta đã làm cho bạn.
>
> Từ khóa: **"4 cấp độ cảm ơn"**.

## 4 cấp độ
### Cấp 1 — Lịch sự mặc định (việc nhỏ, đương nhiên)
> "Em cảm ơn chị."

Dùng khi: đối phương làm việc thường ngày (reply mail, duyệt việc thường xuyên).

### Cấp 2 — Cảm ơn có ghi nhận (việc cần chút nỗ lực)
> "Em cảm ơn chị đã dành thời gian."
> "Em cảm ơn chị đã duyệt nhanh cho em."

Dùng khi: đối phương bỏ công nhỉnh hơn mức tối thiểu.

### Cấp 3 — Cảm ơn sâu sắc (việc giúp cụ thể)
> "Em rất cảm ơn chị đã hỗ trợ em đàm phán với nhà thầu sáng nay."
> "Em cảm ơn anh đã bay vào TP.HCM để họp trực tiếp — em biết anh rất bận."

Dùng khi: đối phương thực sự giúp việc đáng kể cho bạn.

### Cấp 4 — Cảm ơn trang trọng (việc đặc biệt, ảnh hưởng lớn)
> "Em chân thành cảm ơn chị Hương — sự hỗ trợ của chị trong tuần qua đã giúp đội em vượt qua khủng hoảng Bình Minh an toàn."
> "Anh Matsumoto, em không thể diễn tả hết sự biết ơn — nhờ anh mà khách hàng đã chấp nhận điều khoản mới."

Dùng khi: sự giúp đỡ có tác động lớn đến bạn / team / dự án.

## Lỗi thường gặp
- **Cấp 4 cho việc nhỏ** → sáo rỗng, mất uy tín.
- **Cấp 1 cho việc lớn** → vô cảm, người kia không cảm thấy được trân trọng.

## Cụm từ mẫu
> **"Mức độ giúp = mức độ cảm ơn. 4 cấp, chọn đúng."**', 'system', 40, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001041, 8001, NULL, 'markdown_book', 'Rule 41 — Email ngoài giờ hành chính: dặn trước + không yêu cầu hồi đáp gấp', '# Rule 41 — Email ngoài giờ hành chính: dặn trước + không yêu cầu hồi đáp gấp
> **Luận điểm.** Gửi email ngoài giờ (sau 18:00, trước 08:00) không sai — nhưng phải kèm **dòng dặn trước** rằng không cần hồi đáp ngay. Không làm vậy = tạo áp lực cho đối phương. Đặc biệt tránh yêu cầu hành động khẩn với đặt giờ trước 09:00 sáng hôm sau.
>
> Từ khóa: **"dặn trước khi gửi ngoài giờ"**.

## Ví dụ XẤU — gửi 22:00 yêu cầu gấp
> "Chị Hương, em vừa phát hiện lỗi ở Bình Minh. Chị duyệt phương án khắc phục cho em trong sáng mai trước 9:00 nhé."

→ Chị Hương đọc lúc 22:00 → lo lắng, mất ngủ, cảm thấy bị ép.

## Ví dụ TỐT — dặn trước
> "Chị Hương, em viết mail lúc 22:00 vì em vừa ghi chú xong để khỏi quên. **Không cần chị phản hồi tối nay hoặc sớm mai** — việc không khẩn, em sẽ có nhiều thời gian xử lý trong tuần.
>
> Em phát hiện lỗi ở Bình Minh, chi tiết đính kèm. Chị chỉ cần xem khi rảnh trong tuần, lý tưởng là trước thứ Năm."

→ Chị Hương đọc sáng mai, không cảm thấy bị ép.

## Các cụm "dặn trước" mẫu
- "Không cần chị phản hồi tối nay — em sẽ đợi giờ làm việc."
- "Em viết sớm để khỏi quên, chị cứ xem giờ làm việc chính thức."
- "Mail này không gấp, chị có thể đọc tuần này khi tiện."

## Khi nào việc thật sự khẩn ngoài giờ
Nếu thật sự khẩn (sự cố đang xảy ra, khách hàng đang chờ), mail có thể không đủ — **gọi điện** hoặc nhắn Zalo/Teams là đúng kênh. Mail ngoài giờ cho việc khẩn thường là cách sai.

## Cụm từ mẫu
> **"Gửi sau 18:00 / trước 08:00 → luôn kèm ''không cần hồi đáp ngay''."**', 'system', 41, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001042, 8001, NULL, 'markdown_book', 'Rule 42 — Email cuối tuần, ngày lễ: tránh gửi trừ khi thật sự khẩn', '# Rule 42 — Email cuối tuần, ngày lễ: tránh gửi trừ khi thật sự khẩn
> **Luận điểm.** Cuối tuần và ngày lễ là thời gian nghỉ. Gửi mail công việc vào các ngày này = vi phạm ngầm ranh giới thời gian cá nhân của đối phương, ngay cả khi bạn "không yêu cầu phản hồi". Chỉ nên gửi trong 2 trường hợp: (1) khẩn cấp thật sự, (2) schedule-send để email vào hộp thư vào sáng thứ Hai.
>
> Từ khóa: **"cuối tuần — hoãn"**.

## Schedule Send — công cụ nên dùng
Mọi email client hiện đại có **Schedule Send**:

- **Gmail:** Nút bên cạnh Send → "Schedule send" → chọn thời điểm.
- **Outlook:** Options → Delay Delivery → nhập thời gian.

Bạn viết mail thứ Bảy 14:00, schedule cho thứ Hai 08:00. Email vào hộp thư đối phương sáng thứ Hai — không ảnh hưởng cuối tuần của họ.

## Khi nào có thể gửi cuối tuần
1. **Sự cố đang xảy ra** (production down, khách hàng gọi urgent).
2. **Đã thỏa thuận trước** với đối phương rằng mail cuối tuần là OK.
3. **Giữa hai đồng nghiệp thân cùng làm việc cuối tuần** — theo thỏa thuận.

## Ngày lễ
Tương tự, nhưng nghiêm khắc hơn. Tết Nguyên đán, Quốc khánh 2/9, lễ 30/4 — **không gửi mail công việc** trừ khi cực khẩn. Schedule sang ngày làm việc đầu tiên sau lễ.

## Cụm từ mẫu
> **"Cuối tuần và ngày lễ → Schedule Send sang sáng thứ Hai. Khẩn thì gọi, không mail."**', 'system', 42, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001043, 8001, NULL, 'markdown_book', 'Rule 43 — Chuyển tiếp mail: luôn kèm 2 dòng giải thích bối cảnh và yêu cầu', '# Rule 43 — Chuyển tiếp mail: luôn kèm 2 dòng giải thích bối cảnh và yêu cầu
> **Luận điểm.** Forward một thread dài mà không giải thích = buộc người nhận đọc hết thread để hiểu họ nhận cái gì và phải làm gì. **Luôn kèm 2 dòng ở đầu**: (1) bối cảnh tóm tắt, (2) việc cụ thể bạn muốn họ làm.
>
> Từ khóa: **"forward + 2 dòng"**.

## Ví dụ XẤU — forward trần
> **FW: [Bình Minh] Xin duyệt phát sinh 80tr — trước 15/05**
>
> (15 mail qua lại bên dưới, không giải thích gì)

Chị Loan (kế toán) nhận được, phải đọc 15 mail mới hiểu bối cảnh.

## Ví dụ TỐT — có 2 dòng tóm tắt
> **FW: [Bình Minh] Xin duyệt phát sinh 80tr — trước 15/05**
>
> **Chị Loan,**
>
> **Bối cảnh:** Em đã trao đổi với chị Hương về phát sinh 80tr ở Bình Minh, chị Hương đã duyệt (cuối thread). **Em nhờ chị:** tạo PO với nhà thầu An Khang theo các điều khoản ở mail ngày 10/05 (mail thứ 8 trong thread). Cần trước thứ Hai 19/05 để em triển khai.
>
> Em cảm ơn chị.
> Dũng
>
> ---
> (thread cũ bên dưới)

Chị Loan đọc 3 câu biết ngay: bối cảnh gì, mình cần làm gì, deadline.

## Format chuẩn
```
[Người nhận],

Bối cảnh: [1 câu tóm tắt thread]
Em nhờ chị/anh: [hành động cụ thể + deadline]

Em cảm ơn.
[Tên]

---
(thread cũ bên dưới)
```

## Cụm từ mẫu
> **"Forward = 2 dòng tóm (bối cảnh + yêu cầu) + thread gốc. Đừng bắt người đọc đọc 15 mail."**', 'system', 43, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001044, 8001, NULL, 'markdown_book', 'Rule 44 — "Vui lòng" dùng nhiều thành rỗng — khi nào dùng cho đúng chất', '# Rule 44 — "Vui lòng" dùng nhiều thành rỗng — khi nào dùng cho đúng chất
> **Luận điểm.** "Vui lòng" là cụm từ lịch sự phổ biến, nhưng bị lạm dụng. Khi đặt "vui lòng" trước mọi câu yêu cầu, từ đó mất trọng lượng. **Quy tắc:** dùng "vui lòng" chỉ khi yêu cầu *có chút phiền đối phương*, không dùng cho việc đương nhiên đối phương sẽ làm.
>
> Từ khóa: **"vui lòng đúng chất"**.

## Ví dụ XẤU — dùng mọi nơi
> "Anh Matsumoto, vui lòng xem mail dưới đây. Vui lòng click vào link. Vui lòng điền form. Vui lòng gửi lại cho em trước thứ Sáu. Vui lòng cho biết nếu có câu hỏi."

→ 5 lần "vui lòng" trong 5 câu. Mất tác dụng, nghe máy móc.

## Ví dụ TỐT — dùng chừng mực
> "Anh Matsumoto,
>
> Em đã gửi link form đăng ký tham dự hội thảo dưới đây. Anh điền giúp em trước thứ Sáu 16/05 nhé.
>
> **Vui lòng** cho em biết nếu anh cần em hỗ trợ điền giúp, vì form có phần kỹ thuật hơi phức tạp.
>
> Em cảm ơn anh."

→ "Vui lòng" chỉ dùng 1 lần, ở chỗ thật sự cần lịch sự (nhờ anh báo khi cần hỗ trợ).

## Quy tắc dùng
### DÙNG "vui lòng" khi:
- Yêu cầu gây phiền (phải di chuyển, phải đợi).
- Yêu cầu nhạy cảm (sửa lỗi người khác).
- Yêu cầu ngoài nhiệm vụ thông thường.

### KHÔNG dùng "vui lòng" khi:
- Việc đương nhiên (click link, điền form đơn giản).
- Mail thứ 5 trong thread — không cần lặp lại lịch sự.
- Nhờ đồng nghiệp thân việc nhỏ.

## Thay thế "vui lòng"
- "Nhờ anh/chị…"
- "Chị giúp em…"
- "Em xin phép nhờ chị…"
- (hoặc không cần gì cả — câu yêu cầu rõ là đủ)

## Cụm từ mẫu
> **"Vui lòng — dùng ít, dùng đúng. Quá nhiều = rỗng."**', 'system', 44, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001045, 8001, NULL, 'markdown_book', 'Rule 45 — Viết cho cấp trên: tránh cụm mang hàm ý ra lệnh, dùng đề nghị', '# Rule 45 — Viết cho cấp trên: tránh cụm mang hàm ý ra lệnh, dùng đề nghị
> **Luận điểm.** Một số cụm từ trong tiếng Việt mang hàm ý *ra lệnh* hoặc *áp đặt*. Khi viết cho cấp trên, phải **đổi sang dạng đề nghị/khẩn cầu**. Một từ khác biệt (ví dụ "phải" → "nên" → "xin chị") tạo khoảng cách rất lớn trong sự tôn trọng.
>
> Từ khóa: **"đề nghị, không ra lệnh"**.

## Bảng đối chiếu
| Ra lệnh (KHÔNG dùng với sếp) | Đề nghị (ĐÚNG với sếp) |
|------------------------------|------------------------|
| "Chị phải duyệt trước thứ Năm" | "Em xin chị duyệt giúp em trước thứ Năm" |
| "Chị cần làm rõ điểm này" | "Chị có thể làm rõ giúp em điểm này không ạ?" |
| "Hãy xem file đính kèm" | "Chị tham khảo file đính kèm giúp em" |
| "Chị phải biết rằng…" | "Em xin báo chị rằng…" |
| "Chị phải hiểu rằng…" | "Em mong chị có thể thông cảm rằng…" |
| "Chị làm ngay nhé" | "Chị làm giúp em khi có thời gian, em ưu tiên trước thứ Sáu" |

## Ví dụ XẤU
> "Chị Hương, chị phải duyệt phát sinh 80tr trước thứ Năm. Chị cần gửi lại cho em bản duyệt để em làm tiếp."

→ Giọng văn chỉ huy — phù hợp cấp dưới, không phù hợp với sếp.

## Ví dụ TỐT
> "Chị Hương, em xin chị duyệt phát sinh 80tr trước thứ Năm 15/05. Khi có kết quả, chị gửi lại cho em để em triển khai bước tiếp theo nhé.
>
> Em cảm ơn chị."

Cùng yêu cầu, giọng đúng.

## Vẫn giữ rõ ràng, không nhũn
Đề nghị ≠ nhũn nhặn. Vẫn phải:
- Rõ deadline.
- Rõ việc cần làm.
- Rõ hệ quả nếu chậm (nếu có).

## Cụm từ mẫu
> **"Với sếp: ''em xin'', ''em nhờ'', ''chị có thể''. Không ''phải'', không ''cần'', không ''hãy''."**', 'system', 45, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001046, 8001, NULL, 'markdown_book', 'Rule 45B — Xưng hô khi gửi mail cho nhóm hỗn hợp tuổi/cấp', '# Rule 45B — Xưng hô khi gửi mail cho nhóm hỗn hợp tuổi/cấp
> **Luận điểm.** Khi gửi mail cho **nhóm trộn nhiều cấp** — sếp + đồng nghiệp ngang + cấp dưới + khách hàng — không thể dùng "Chị Hương ơi" vì có khách, cũng không thể "Kính gửi Quý anh chị" vì quá xa cách với người trong cùng team. Quy tắc: **xưng hô theo người cấp cao nhất**, sau đó liệt kê thứ tự rõ ràng để mỗi người đọc biết mình ở đâu.
>
> **Liên quan:** Rule 12 (Kính gửi đầy đủ), Rule 36 (Hệ xưng hô Việt), Rule 20 (CC có tâm).
>
> Từ khóa: **"xưng hô theo trần cao nhất"**.

## Bối cảnh
Dũng cần gửi mail báo cáo tình hình Bình Minh tới: chị Hương (sếp), anh Tuấn (đồng nghiệp ngang/team lead), em Linh (cấp dưới), và CC anh Matsumoto (khách hàng Nhật). 4 người, 3 cấp khác nhau, 2 quốc tịch.

## Ví dụ XẤU — chỉ nhắm 1 người
> "Chị Hương,
>
> Em báo cáo tình hình tuần…"

→ Anh Tuấn, em Linh, anh Matsumoto thấy mình bị "rớt" — chỉ là người thừa trong CC. Mất engagement.

## Ví dụ TỐT — xưng hô đa tầng
### Cách 1: Liệt kê theo cấp
> "Kính gửi chị Hương,
> CC: anh Matsumoto (Hakuō), anh Tuấn, em Linh,
>
> Em báo cáo tình hình tuần Bình Minh…"

- Người chính là chị Hương (cấp cao nhất, người ra quyết định).
- CC có thứ tự rõ: khách trước (trang trọng), nội bộ sau theo cấp.

### Cách 2: Gom theo nhóm
> "Kính gửi chị Hương và anh Matsumoto,
> CC: team Bình Minh,
>
> Em xin báo cáo tình hình tuần…"

Khi 2 người cùng "cấp ra quyết định" (sếp + khách), gộp ở To. Phần còn lại gọi chung "team".

### Cách 3: Khi cả nhóm thân (nội bộ thuần)
Nếu mail chỉ trong nội bộ cùng team, không có khách:

> "Anh chị,
>
> Em báo cáo tình hình tuần Bình Minh…"

"Anh chị" là cách gọi chung cho người trong team mà không phân cấp rõ. Dùng được khi đã thân.

## Quy tắc 3 bước chọn xưng hô
1. **Xác định người cấp cao nhất** trong danh sách nhận → đặt ở To.
2. **Đặt khách hàng trước nội bộ** trong CC nếu cùng cấp.
3. **Mở mail bằng người ở To** (không cần liệt kê hết tất cả người CC trong câu mở).

## Sai lầm thường gặp
- **"Anh Hương" hoặc "Bác Hương"** → sai cấp xưng vì có khách/người mới đọc.
- **"Kính gửi anh chị em"** → quá rộng, làm mất sự đích danh.
- **Không có "Kính gửi" mà vào thẳng "Em báo cáo…"** → cộc lốc với nhóm có khách.
- **Cảm ơn 1 lần ở cuối nhưng tên "Chị Hương" trong mail** → không nhất quán, người khác cảm thấy bị bỏ sót.

## Đặc thù khi có khách Nhật
- Trong tiếng Việt, gọi "anh Matsumoto" được. Đừng dùng "ông Matsumoto" trừ khi rất trang trọng (làm khoảng cách).
- Trong dấu CC, nếu đối tác Nhật là người ra quyết định cao nhất, *đưa lên To* thay vì CC — tôn trọng vị thế.
- Có thể thêm cột tiếng Nhật trong mail song ngữ nếu cần (xem Rule 70).

## Cụm từ mẫu
> **"Người cấp cao nhất ở To. Khách trước nội bộ. Mở thư bằng người To. CC theo thứ tự từ cao xuống thấp."**', 'system', 46, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001047, 8001, NULL, 'markdown_book', 'Rule 46 — Điều khó nói — nói càng sớm càng nhẹ, im lặng chỉ làm nặng thêm', '# Rule 46 — Điều khó nói — nói càng sớm càng nhẹ, im lặng chỉ làm nặng thêm
> **Luận điểm.** Tin xấu không tự biến mất. Im lặng càng lâu = người nghe càng bị bất ngờ khi biết → tổn hại niềm tin càng lớn. Nguyên tắc: **đủ dữ liệu để nói là nói**, không đợi "đủ hoàn hảo".
>
> Từ khóa: **"nói sớm, nhẹ hơn"**.

## Ví dụ XẤU — trì hoãn
Thứ Hai: Dũng phát hiện Bình Minh có thể trễ deadline 1 tuần.
Thứ Ba, Tư, Năm: Dũng im lặng, hy vọng tìm cách giải quyết.
Thứ Sáu: Không có giải pháp, Dũng báo chị Hương.

→ Chị Hương bị sốc: đã mất 5 ngày không biết. Phản ứng: mất niềm tin, khó lên phương án dự phòng.

## Ví dụ TỐT — báo ngay
Thứ Hai 09:30: Dũng phát hiện.
Thứ Hai 10:00: Dũng gửi mail:

> "Chị Hương, em vừa phát hiện rủi ro Bình Minh có thể trễ 1 tuần. Em đang đánh giá 3 phương án khắc phục và sẽ cập nhật chị trước thứ Tư. Em muốn chị biết ngay để chị có thời gian chuẩn bị nếu cần thông báo bên khách."

→ Chị Hương có 4 ngày để phản ứng. Dù xấu, vẫn có thời gian.

## Công thức "báo sớm" tối thiểu
1 câu bối cảnh + 1 câu tác động + 1 câu kế hoạch:

> "Em phát hiện [vấn đề]. Tác động: [ngắn gọn]. Em đang [hành động], sẽ cập nhật chị trước [ngày]."

## Khi nào thật sự cần đợi
- Dữ liệu chưa đủ để xác nhận (đừng báo rumor).
- Mới phát hiện 5 phút trước — đợi 30 phút kiểm tra lại trước khi báo.

Quá 24 giờ trì hoãn = không còn "kiểm tra" mà là "lẩn tránh".

## Cụm từ mẫu
> **"Nói trong 24 giờ. Im lặng thêm ngày nào, mất niềm tin thêm ngày đó."**', 'system', 47, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001048, 8001, NULL, 'markdown_book', 'Rule 47 — Mail quan trọng: nhờ xác nhận đã nhận rõ ràng, không phải "đã đọc"', '# Rule 47 — Mail quan trọng: nhờ xác nhận đã nhận rõ ràng, không phải "đã đọc"
> **Luận điểm.** Với mail có thông tin quan trọng (hợp đồng, thông báo thay đổi, quyết định), bạn cần biết **đối phương đã nhận**. Không phải "đã thấy trong inbox" mà "đã đọc và hiểu". Cách nhanh nhất: **yêu cầu xác nhận ngay trong mail**.
>
> Từ khóa: **"xác nhận đã nhận"**.
>
> **Liên quan:** Rule 04 (Cửa sổ 24 giờ vàng), Rule 19 (3 dấu hiệu phải gọi).

## Ví dụ XẤU — không yêu cầu xác nhận
> "Chị Hương, em gửi chị phụ lục hợp đồng sửa đổi (đính kèm). Chị ký và gửi lại em nhé."

Sau 3 ngày: Chị Hương chưa reply. Dũng không biết: chị chưa thấy? Thấy nhưng quên? Đang xử lý? Không đồng ý?

## Ví dụ TỐT — yêu cầu xác nhận rõ
> "Chị Hương, em gửi chị phụ lục hợp đồng sửa đổi (đính kèm).
>
> **Em cần chị xác nhận đã nhận (reply 1 dòng cũng được) trong 24 giờ.** Sau đó em cần chị ký và gửi lại trong 3 ngày làm việc.
>
> Nếu em không nhận được xác nhận trong 24h, em sẽ gọi điện hỏi — em muốn đảm bảo không có thông tin quan trọng rơi mất."

Chị Hương biết rõ:
- Cần xác nhận trong 24h (dễ — reply 1 dòng).
- Cần ký trong 3 ngày.
- Nếu không reply → sẽ có điện thoại.

## Công thức
3 bước trong mail:
1. **Nội dung chính** (hợp đồng/quyết định/thông tin quan trọng).
2. **Yêu cầu xác nhận đã nhận** — thời gian cụ thể, hình thức đơn giản.
3. **Hành động backup** nếu không có xác nhận.

## Khi nào không cần xác nhận
- Mail FYI thông thường.
- Mail đã trao đổi qua điện thoại trước đó.
- Mail trong thread đang chạy với reply thường xuyên.

## Cụm từ mẫu
> **"Mail quan trọng = yêu cầu xác nhận + có backup plan nếu không có."**', 'system', 48, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001049, 8001, NULL, 'markdown_book', 'Rule 48 — Thúc hồi đáp: chừa đường lui, đưa deadline mới, không trách móc', '# Rule 48 — Thúc hồi đáp: chừa đường lui, đưa deadline mới, không trách móc
> **Luận điểm.** Khi đối phương chậm reply, phản ứng tự nhiên là "nhắc cho gay gắt". Đó là sai. Người ta chậm vì bận, vì quên, vì lạc mail — **hiếm khi cố tình**. Mail thúc phải **chừa đường lui** cho họ: đề xuất lý do hợp lý (spam/bận), đưa deadline mới, không than phiền.
>
> Từ khóa: **"thúc có đường lui"**.

## Ví dụ XẤU — thúc cay
> "Anh Matsumoto, đã 3 ngày mà em chưa nhận phản hồi của anh về phụ lục hợp đồng. Anh cho em biết có phải em làm gì khiến anh không muốn reply không?"

→ Giả định tiêu cực. Anh Matsumoto có thể đã quên, và giờ cảm thấy bị ép lỗi.

## Ví dụ TỐT — thúc có đường lui
> "Anh Matsumoto,
>
> Em viết để follow up về phụ lục hợp đồng em gửi anh thứ Ba 13/05. **Em không chắc mail có vào spam của anh không, hoặc có thể anh đang bận với đợt đóng quý**.
>
> Em vẫn đang giữ bản nháp sẵn sàng cho anh. Anh có thể cho em biết:
> - Nếu anh cần thêm thời gian → em có thể đợi đến **thứ Sáu 17/05**.
> - Nếu có gì anh muốn điều chỉnh → em sẵn sàng họp 15 phút.
>
> Em cảm ơn anh."

Anh Matsumoto có **đường lui có thể giữ được thể diện** ("spam / bận đóng quý") và có hành động cụ thể để thoát tình huống.

## Mẫu "đường lui" thường gặp
- "Có thể mail vào spam."
- "Có thể anh đang bận việc A / đóng quý / công tác."
- "Hoặc em đã gửi vào hộp email cũ của anh."

## Khi nào chuyển kênh
Nếu thúc email 1 lần vẫn không có reply, chuyển sang:
- Zalo/Teams
- Điện thoại
- Gặp trực tiếp (nếu khẩn)

**Không thúc email lần 2**.

## Cụm từ mẫu
> **"Thúc không trách móc. Chừa đường lui + deadline mới + 1 lần."**', 'system', 49, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001050, 8001, NULL, 'markdown_book', 'Rule 49 — Nhờ vì việc của mình: khiêm tốn, rõ hạn, nêu lợi ích đôi bên', '# Rule 49 — Nhờ vì việc của mình: khiêm tốn, rõ hạn, nêu lợi ích đôi bên
> **Luận điểm.** Khi nhờ đối phương *vì việc của mình* (không phải việc chung), bạn đang **lấy thời gian của họ**. Phải nhận diện rõ điều đó trong mail — khiêm tốn, rõ ràng về hạn, và nếu có thể, nêu lợi ích cho đối phương (có thể chỉ là "em sẽ nhớ ơn").
>
> Từ khóa: **"nhờ riêng, khiêm tốn"**.

## Cấu trúc nhờ việc riêng
1. **Thừa nhận đây là nhờ riêng** — không chung việc.
2. **Việc cụ thể** + hạn.
3. **Lý do tại sao bạn cần** (không bắt buộc nhưng nên).
4. **Lợi ích/đáp lại cho đối phương** (nếu có).
5. **Đường lui rõ nếu họ không thể** (quan trọng).

## Ví dụ TỐT
> "Anh Tuấn, em có một việc riêng muốn nhờ anh — không liên quan Bình Minh.
>
> Em đang viết bài phát biểu cho hội thảo IT tuần sau và cần một chuyên gia tech review giúp em 10 phút. **Anh có thể xem slide của em và cho ý kiến về 1 phần kỹ thuật trong sáng thứ Năm 15/05 không ạ?**
>
> Em viết bài ngoài giờ làm việc, không ảnh hưởng công việc của anh. Đây là việc em tự nguyện, nên hoàn toàn hiểu nếu anh quá bận. Em sẽ ghi ơn anh và sẵn sàng giúp lại anh khi nào anh cần.
>
> Nếu anh không tiện, em hoàn toàn có thể tìm người khác — em chỉ muốn hỏi anh trước vì anh là người em tin tưởng nhất về mảng này.
>
> Em cảm ơn anh."

Anh Tuấn có:
- Hiểu đây là nhờ riêng.
- Biết đúng việc và thời gian.
- Có đường từ chối lịch sự.
- Biết Dũng trân trọng.

## Cụm từ mẫu
> **"Nhờ riêng = thừa nhận + cụ thể + lợi ích + đường lui. Không ép."**', 'system', 50, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001051, 8001, NULL, 'markdown_book', 'Rule 50 — Từ chối yêu cầu vô lý: đứng ở góc người nhờ, giải thích hệ quả', '# Rule 50 — Từ chối yêu cầu vô lý: đứng ở góc người nhờ, giải thích hệ quả
> **Luận điểm.** Từ chối thẳng khiến đối phương cảm thấy bị bác. Từ chối tốt phải **đứng từ góc của họ** — thể hiện bạn hiểu tại sao họ cần, sau đó giải thích *hệ quả* nếu bạn đồng ý. Đối phương thường tự rút yêu cầu khi thấy hệ quả.
>
> Từ khóa: **"từ chối bằng hệ quả"**.

## Ví dụ XẤU — từ chối thẳng
> "Anh Matsumoto, em không thể giao Bình Minh trước 25/05 như anh đề xuất được."

→ Anh Matsumoto cảm thấy bị từ chối lạnh. Không có giải thích, không có phương án.

## Ví dụ TỐT — đứng từ góc đối phương
> "Anh Matsumoto, em hiểu anh muốn ra mắt Bình Minh trước 25/05 để kịp mùa cao điểm của Hakuō — đây là nhu cầu hoàn toàn hợp lý.
>
> **Tuy nhiên, nếu em ép giao trước 25/05, sẽ có 3 hệ quả:**
> 1. Không đủ thời gian test bảo mật → rủi ro lộ dữ liệu trong tháng đầu sử dụng.
> 2. Team phải làm overtime 2 tuần → chất lượng code giảm.
> 3. Không kịp onboarding team vận hành của anh → họ phải tự xoay sở khi có sự cố.
>
> **Em đề xuất 2 phương án thay thế:**
> - **Phương án A:** Giao đủ 30/05, đảm bảo chất lượng.
> - **Phương án B:** Giao MVP trước 25/05 (không có tính năng X, Y) + bản đầy đủ 05/06.
>
> Anh cho em biết phương án nào phù hợp hơn với kế hoạch của anh."

Anh Matsumoto nhận được:
- Thấu hiểu từ Dũng.
- Hệ quả cụ thể (không phải lý do mơ hồ).
- Lựa chọn rõ ràng.

## Công thức
1. **Thể hiện hiểu** nhu cầu đối phương.
2. **Nếu tôi đồng ý, sẽ xảy ra:** (3 hệ quả cụ thể).
3. **Em đề xuất phương án thay thế:** (2 lựa chọn).

## Cụm từ mẫu
> **"Đứng từ góc đối phương + hệ quả cụ thể + phương án thay thế = từ chối khéo."**', 'system', 51, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001052, 8001, NULL, 'markdown_book', 'Rule 51 — Từ chối lời mời: "rất tiếc…" + đề xuất thay thế cụ thể', '# Rule 51 — Từ chối lời mời: "rất tiếc…" + đề xuất thay thế cụ thể
> **Luận điểm.** Từ chối lời mời (tiệc, sự kiện, networking) khác từ chối yêu cầu công việc — ở đây không có "hệ quả" để viện. Công thức khác: **thể hiện cảm kích + rất tiếc + lý do ngắn + đề xuất thay thế để giữ quan hệ**.
>
> Từ khóa: **"rất tiếc + thay thế"**.

## Công thức 4 bước
1. **Cảm kích lời mời.**
2. **"Rất tiếc…"** + lý do ngắn.
3. **Không giải thích dài** — 1 câu đủ.
4. **Đề xuất thay thế** — buổi khác, hình thức khác, lời hứa gặp sau.

## Ví dụ XẤU — từ chối lạnh
> "Anh Matsumoto, em không thể tham dự tiệc sinh nhật công ty anh tối thứ Sáu."

→ Trống rỗng, có thể gây hiểu nhầm là không muốn.

## Ví dụ TỐT
> "Anh Matsumoto,
>
> Em cảm ơn anh rất nhiều đã mời em tham dự tiệc sinh nhật 5 năm thành lập Hakuō tối thứ Sáu 16/05. Đây là cột mốc ý nghĩa, em rất mong được chia vui với anh và cả team.
>
> **Rất tiếc tối thứ Sáu em có đám cưới gia đình phải về quê**. Em không thể hiện diện nhưng xin gửi lời chúc mừng chân thành đến anh và Hakuō.
>
> Em đề xuất: **đầu tuần sau em mời anh cà phê trưa** để em được chúc anh trực tiếp. Thứ Ba 20/05 hoặc thứ Tư 21/05, anh chọn giúp em.
>
> Em cảm ơn anh và chúc buổi tiệc thành công rực rỡ."

Anh Matsumoto hiểu:
- Dũng trân trọng lời mời.
- Lý do hợp lý, không bịa.
- Có hành động cụ thể để giữ quan hệ.

## Lý do nên dùng
- **Lịch trùng** (không cần chi tiết).
- **Gia đình** (ai cũng hiểu).
- **Đi công tác** (chi tiết chung chung).

**Không cần bịa** — "rất tiếc" đã đủ, người ta không đòi lý do.

## Cụm từ mẫu
> **"Cảm kích + rất tiếc + lý do ngắn + thay thế. Giữ quan hệ bằng hành động, không chỉ lời."**', 'system', 52, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001053, 8001, NULL, 'markdown_book', 'Rule 52 — Chỉ ra lỗi người khác: gói trong câu hỏi, tránh khẳng định trực diện', '# Rule 52 — Chỉ ra lỗi người khác: gói trong câu hỏi, tránh khẳng định trực diện
> **Luận điểm.** Chỉ lỗi dạng khẳng định ("Anh ghi sai số") làm đối phương *phòng thủ*. Gói trong câu hỏi ("Không biết số này là 80tr hay 800tr anh nhỉ?") mở cánh cửa cho họ tự sửa mà không mất thể diện.
>
> Từ khóa: **"lỗi gói trong câu hỏi"**.

## Ví dụ XẤU
> "Anh Matsumoto, anh ghi sai rồi — số này là 80 triệu chứ không phải 800 triệu."

→ Anh Matsumoto cảm thấy bị vạch lỗi. Có thể chối hoặc trở nên phòng thủ.

## Ví dụ TỐT
> "Anh Matsumoto, em không chắc em hiểu đúng — **số này là 80 triệu hay 800 triệu anh nhỉ?** Em muốn xác nhận trước khi đưa vào hợp đồng."

Anh Matsumoto tự sửa mà không mất thể diện. Nếu đúng là 800tr thì anh xác nhận, nếu 80tr thì anh cảm ơn đã catch.

## Các mẫu câu
| Tình huống | Câu hỏi khéo |
|-----------|--------------|
| Sai số | "Số này là X hay Y?" |
| Sai ngày | "Ngày này thứ Năm hay thứ Sáu ạ?" |
| Sai tên | "Em nghe tên anh/chị là X — đúng không ạ?" |
| Sai logic | "Em đang hiểu là A → B. Có gì em hiểu chưa đúng không anh?" |
| Sai thông tin lớn | "Em đọc lại và thấy có vài chỗ em chưa rõ — anh xem giúp em nhé?" |

## Khi nào nói thẳng
Chỉ khi **an toàn quan trọng hơn thể diện**:
- Lỗi bảo mật.
- Lỗi tài chính có thể ảnh hưởng lớn.
- Sai pháp lý.

Khi đó: thẳng thắn + đề xuất cách sửa + không đổ lỗi.

## Cụm từ mẫu
> **"Sai nhỏ → câu hỏi. Sai lớn có hệ quả → thẳng nhưng kèm giải pháp."**', 'system', 53, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001054, 8001, NULL, 'markdown_book', 'Rule 53 — Mail xin lỗi 4 bước: Sự thật → Nguyên nhân → Biện pháp → Cam kết', '# Rule 53 — Mail xin lỗi 4 bước: Sự thật → Nguyên nhân → Biện pháp → Cam kết
> **Luận điểm.** Xin lỗi không phải chỉ nói "xin lỗi". Một mail xin lỗi tốt cho đối phương thấy bạn *hiểu chuyện gì đã xảy ra* và *đang làm gì*. 4 bước bắt buộc: **Sự thật → Nguyên nhân → Biện pháp → Cam kết**.
>
> **Liên quan:** Rule 53 dùng khi *bạn chủ động xin lỗi* (đối phương chưa kịp phàn nàn). Khi *trả lời mail phàn nàn của đối phương*, dùng Rule 55 (5 bước, có thêm "xác nhận cảm xúc" ở đầu).
>
> Từ khóa: **"xin lỗi 4 bước"**.

## Cấu trúc 4 bước
### Bước 1 — Sự thật
Nêu rõ sự việc đã xảy ra, không né tránh, không giảm nhẹ.

### Bước 2 — Nguyên nhân
Tại sao lại xảy ra. Không đổ lỗi cho người khác/hoàn cảnh.

### Bước 3 — Biện pháp
Đã làm / đang làm gì để khắc phục ngay.

### Bước 4 — Cam kết
Làm gì để không lặp lại.

## Ví dụ
> "Anh Matsumoto,
>
> Em viết mail này để chân thành xin lỗi anh về sự cố hôm qua.
>
> **[Sự thật]**
> Hôm qua 14/05 từ 22:30 đến 23:45, API của Hakuō gặp downtime 1 giờ 15 phút do lỗi từ bên em.
>
> **[Nguyên nhân]**
> Em đã deploy một query tuần trước chưa được benchmark đầy đủ. Query này tiêu tốn tài nguyên vượt dự kiến khi gặp dữ liệu thực tế, dẫn đến database connection pool cạn kiệt.
>
> **[Biện pháp]**
> - Đã rollback query ngay sáng nay.
> - Hệ thống hiện ổn định.
> - Em đã gửi report chi tiết cho team kỹ thuật của anh (đính kèm).
>
> **[Cam kết]**
> Từ tuần tới, em sẽ:
> 1. Bắt buộc benchmark mọi query trên môi trường staging trước khi deploy.
> 2. Thiết lập cảnh báo connection pool ở ngưỡng 70% để phát hiện sớm.
> 3. Gửi anh báo cáo bảo mật/hiệu năng hàng tháng.
>
> Em chịu hoàn toàn trách nhiệm về sự cố này. Nếu anh cần em giải trình trực tiếp, em sẵn sàng bay sang Tokyo họp với team anh.
>
> Em chân thành xin lỗi anh một lần nữa.
> Dũng"

## Điều cần tránh
- **Đổ lỗi**: "Vì team kia…" → không.
- **Xin lỗi rồi giải thích bào chữa**: "Xin lỗi anh, nhưng mà…" → không.
- **Hứa suông** không có bước cụ thể.
- **Dài quá**: cam kết nên 2-3 việc rõ, không 10 việc mơ hồ.

## Cụm từ mẫu
> **"Sự thật → Nguyên nhân → Biện pháp → Cam kết. Thiếu bước nào, xin lỗi không đủ."**', 'system', 54, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001055, 8001, NULL, 'markdown_book', 'Rule 54 — Mail phàn nàn: khách quan, không cảm xúc, có bằng chứng đính kèm', '# Rule 54 — Mail phàn nàn: khách quan, không cảm xúc, có bằng chứng đính kèm
> **Luận điểm.** Khi bạn là người phàn nàn, cảm xúc nặng làm *mất uy tín* của chính phàn nàn. Dù có lý chính đáng, mail cảm xúc bị đọc như "khách khó tính". Quy tắc: **càng giận, càng viết khách quan**. Dẫn chứng cụ thể, số liệu, không từ miệt thị.
>
> Từ khóa: **"phàn nàn khách quan"**.

## Ví dụ XẤU — cảm xúc
> "Nhà thầu An Khang quá tệ! 3 lần giao hàng trễ, lần nào cũng tìm cớ. Chúng tôi không thể chấp nhận kiểu làm ăn thiếu trách nhiệm này. Yêu cầu đền bù ngay!"

→ Đọc xong, đối phương cảm thấy bị chửi, phòng thủ, khó hợp tác giải quyết.

## Ví dụ TỐT — khách quan
> "Kính gửi Cty An Khang,
>
> Thiên Phát gửi mail này để phản ánh tình hình giao hàng không đúng hẹn của 3 đơn gần đây:
>
> | Mã PO | Ngày hẹn | Ngày thực giao | Độ trễ |
> |-------|---------|----------------|--------|
> | PO-2026-001 | 10/03 | 15/03 | 5 ngày |
> | PO-2026-005 | 25/04 | 02/05 | 7 ngày |
> | PO-2026-008 | 09/05 | 14/05 | 5 ngày |
>
> Tổng cộng 17 ngày trễ trong 3 đơn liên tiếp. Theo hợp đồng (Điều 4.3), chúng tôi có quyền yêu cầu:
> - Bồi thường 0.5%/ngày trên giá trị PO = 8.5% tổng giá trị = 42.5 triệu.
> - Review lại cam kết timeline cho các PO sắp tới.
>
> Đề nghị An Khang:
> 1. Xác nhận đã nhận mail này trong 48h.
> 2. Gửi phương án bồi thường và cam kết cải thiện trong 7 ngày làm việc.
>
> Hợp đồng gốc em đính kèm để tiện tham khảo.
>
> Em cảm ơn.
> Dũng"

Khách quan, có bằng chứng, có dẫn chiếu hợp đồng, có yêu cầu cụ thể.

## Công thức
1. **Sự thật cụ thể** — ngày, số PO, con số.
2. **Bằng chứng kèm theo** — hợp đồng, chứng từ, ảnh.
3. **Dẫn chiếu điều khoản** (nếu có).
4. **Yêu cầu cụ thể** — không chung chung "bồi thường đi".
5. **Deadline** cho phản hồi.

## Cụm từ mẫu
> **"Càng giận, càng khách quan. Bằng chứng nói thay cảm xúc."**', 'system', 55, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001056, 8001, NULL, 'markdown_book', 'Rule 55 — Trả lời phàn nàn: xác nhận cảm xúc trước, giải pháp sau', '# Rule 55 — Trả lời phàn nàn: xác nhận cảm xúc trước, giải pháp sau
> **Luận điểm.** Khi nhận mail phàn nàn, **phản xạ sai**: vào thẳng giải pháp, lờ đi cảm xúc. Người phàn nàn cần cảm thấy **được lắng nghe** trước, rồi mới sẵn lòng nghe giải pháp. Công thức: **xác nhận cảm xúc → xin lỗi → nguyên nhân → giải pháp → ngăn tái phát**.
>
> **Liên quan:** Rule 53 (4 bước xin lỗi) cho mail mà *bạn chủ động xin lỗi*. Rule 55 này dùng khi *trả lời phàn nàn của người khác* — bước "xác nhận cảm xúc" thêm ở đầu là khác biệt cốt lõi.
>
> Từ khóa: **"cảm xúc trước, giải pháp sau"**.

## Bối cảnh
Anh Matsumoto bên Hakuō (khách hàng Nhật) gửi mail phàn nàn về Dự án Bình Minh: 3 lần Thiên Phát giao deliverable trễ liên tiếp trong tháng vừa qua, ảnh hưởng đến kế hoạch ra mắt sản phẩm của Hakuō. Dũng — đại diện Thiên Phát — phải trả lời.

## Ví dụ XẤU — giải pháp thẳng
> "Anh Matsumoto, em xin lỗi vì đã trễ deadline. Bên em sẽ chuyển sang quy trình mới và buffer 2 ngày cho mỗi deliverable. Bồi thường 5% phí dịch vụ tháng 5 sẽ chuyển trong tuần."

→ Anh Matsumoto cảm thấy bị xua bằng giải pháp, không được công nhận đã chịu thiệt hại. Có thể sẽ giận hơn vì cảm giác bên Thiên Phát không hiểu mức độ nghiêm trọng.

## Ví dụ TỐT — 5 bước
> "Kính gửi anh Matsumoto,
>
> Em đã đọc kỹ mail anh và hoàn toàn hiểu vấn đề.
>
> **[Xác nhận cảm xúc]**
> Em hiểu sự thất vọng của anh sau 3 lần Thiên Phát giao trễ liên tiếp. Đây là vấn đề nghiêm trọng — bên em đã làm ảnh hưởng đến kế hoạch ra mắt sản phẩm của Hakuō, một mốc thời gian anh không thể tự ý dời. Em không xem nhẹ điều này.
>
> **[Xin lỗi]**
> Thay mặt team Thiên Phát, em chân thành xin lỗi anh và toàn team Hakuō.
>
> **[Nguyên nhân]**
> Sau khi điều tra nội bộ, em xác nhận 3 nguyên nhân:
> - Deliverable 1 (29/04): chậm 3 ngày do lỗi xếp tài nguyên — phía Thiên Phát hoàn toàn chịu trách nhiệm.
> - Deliverable 2 (07/05): chậm 5 ngày, trong đó 2 ngày do anh Tuấn nghỉ ốm, 3 ngày do team thiếu kế hoạch dự phòng.
> - Deliverable 3 (14/05): chậm 4 ngày do quy trình QA mới kéo dài hơn dự kiến.
>
> **[Giải pháp]**
> - Bồi thường theo hợp đồng: 10% phí dịch vụ tháng 5 (¥800,000), chuyển trước 20/05 qua chị Loan bên em.
> - Ưu đãi: gói tháng 6 giảm 5% như cử chỉ thiện chí.
> - Đẩy phase 2 sớm 1 tuần để bù lại lịch ra mắt của Hakuō.
>
> **[Ngăn tái phát]**
> - Đã chỉ định chị Hương (Phó phòng KD) là dedicated account manager cho Hakuō.
> - Buffer 2 ngày trong mọi cam kết deliverable từ tháng 6.
> - Báo cáo tiến độ hàng tuần — sáng thứ Hai 09:00, không bỏ tuần nào.
>
> Em xin có buổi gặp trực tiếp tại văn phòng Hakuō tuần sau (anh chọn ngày trong khung 19/05–22/05) để trình bày kế hoạch chi tiết và lắng nghe thêm yêu cầu của anh.
>
> Em chân thành xin lỗi anh một lần nữa.
>
> Trần Văn Dũng
> Cty TNHH Thiên Phát"

→ Anh Matsumoto: trước khi đọc giải pháp đã cảm nhận Thiên Phát hiểu vấn đề ở mức nghiêm trọng → mở lòng tiếp nhận giải pháp.

## So sánh Rule 53 và Rule 55
| | Rule 53 — Bạn xin lỗi | Rule 55 — Trả lời phàn nàn |
|--|---------------------|---------------------------|
| Tình huống | Bạn chủ động báo lỗi của mình | Đối phương đã viết phàn nàn |
| Số bước | 4 (Sự thật → Nguyên nhân → Biện pháp → Cam kết) | 5 (Xác nhận cảm xúc → Xin lỗi → Nguyên nhân → Giải pháp → Ngăn tái phát) |
| Bước thêm | — | "Xác nhận cảm xúc" ở đầu — đối phương đã giận, cần xoa dịu trước |
| Giọng | Thừa nhận + đảm bảo | Lắng nghe + đảm bảo |

## Cụm từ mẫu
> **"Xác nhận cảm xúc → Xin lỗi → Nguyên nhân → Giải pháp → Ngăn tái phát. 5 bước, đặc biệt bước 1 không được bỏ."**', 'system', 56, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001057, 8001, NULL, 'markdown_book', 'Rule 56 — Báo sự cố: Tình huống → Tác động → Đang làm → Cần hỗ trợ', '# Rule 56 — Báo sự cố: Tình huống → Tác động → Đang làm → Cần hỗ trợ
> **Luận điểm.** Khi có sự cố đang xảy ra (production down, khách đang giận, team mất người), mail báo phải cho sếp biết 4 điều trong 30 giây đọc: *chuyện gì, ảnh hưởng ra sao, bạn đang làm gì, cần sếp giúp gì*. Bỏ 1 trong 4, sếp phải gọi lại hỏi.
>
> Từ khóa: **"4 khối báo sự cố"**.
>
> **Liên quan:** Rule 53 (Mail xin lỗi 4 bước) — sau khi sự cố ổn, gửi mail xin lỗi chính thức. Rule 19 (3 dấu hiệu gọi điện) — thường nên gọi trước, mail báo sau.

## Cấu trúc 4 khối — "SITUATION → IMPACT → ACTION → SUPPORT"
### Tình huống
Sự cố gì, khi nào bắt đầu, phạm vi.

### Tác động
Ảnh hưởng đến ai, mức độ nghiêm trọng.

### Đang làm
Team đang xử lý gì ngay lúc này.

### Cần hỗ trợ
Bạn cần sếp / người khác giúp gì cụ thể.

## Ví dụ
> "Chị Hương, báo sự cố Bình Minh:
>
> **[Tình huống]** Từ 22:30 tối qua, API Bình Minh down. Database connection pool exhausted.
>
> **[Tác động]** Khách Hakuō không truy cập được hệ thống. Đã có 1h15p downtime. Khách đã 3 lần gọi hotline hỏi.
>
> **[Đang làm]** Em và anh Tuấn đã vào hệ thống từ 23:00. Đã rollback query gây lỗi. Hệ thống đang được restart, dự kiến hoạt động trong 10 phút tới.
>
> **[Cần chị hỗ trợ]**
> - Chị có thể gọi anh Matsumoto (Hakuō) xin lỗi trực tiếp giúp em không — anh ảnh đang rất căng.
> - Sau 12:00 hôm nay, em sẽ gửi chị bản xin lỗi chính thức để chị duyệt.
>
> Em sẽ cập nhật chị thêm sau mỗi 30 phút đến khi hệ thống ổn hoàn toàn.
> Dũng"

Chị Hương trong 1 phút đọc xong biết đủ để quyết định hành động. Không cần gọi lại hỏi.

## Nguyên tắc cập nhật
- **Cập nhật ít nhất mỗi 30p** trong lúc sự cố đang diễn ra.
- **Cập nhật ngay** khi có thay đổi quan trọng (tình hình xấu đi / tốt lên).
- **Cập nhật cuối cùng** khi đã hoàn toàn ổn: post-mortem ngắn.

## Cụm từ mẫu
> **"Tình huống → Tác động → Đang làm → Cần hỗ trợ. 4 khối. Không thiếu. Cập nhật 30p/lần."**', 'system', 57, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001058, 8001, NULL, 'markdown_book', 'Rule 57 — Báo trễ deadline: lý do cụ thể + hạn mới + biện pháp bù', '# Rule 57 — Báo trễ deadline: lý do cụ thể + hạn mới + biện pháp bù
> **Luận điểm.** Trễ deadline không phải thảm họa — **im lặng trước khi trễ** mới là thảm họa. Mail báo trễ phải có 3 thành phần: *lý do cụ thể (không bịa, không viện lý do chung)*, *hạn mới thực tế (đã tính kỹ)*, *biện pháp bù (nếu có)*.
>
> Từ khóa: **"báo trễ 3 thành phần"**.

## Khi nào báo trễ
**Báo ngay khi bạn biết chắc sẽ trễ**, không đợi đến deadline mới báo. Lý tưởng: báo trước deadline ít nhất 48h.

## Ví dụ TỐT
> "Chị Hương,
>
> Em viết mail này để báo chị: em **sẽ không kịp nộp báo cáo Bình Minh vào thứ Năm 15/05** như đã hẹn.
>
> **Lý do cụ thể:**
> Anh Tuấn nghỉ ốm đột xuất từ thứ Hai 12/05, em phải gánh thêm phần phân tích kỹ thuật của anh ấy (chiếm 40% báo cáo). Em đã cố gắng nhưng phần này cần kiến thức chuyên sâu về infrastructure.
>
> **Hạn mới:**
> Em đề xuất deadline mới là **thứ Hai 19/05 trước 17:00** (4 ngày làm việc sau). Em đã tính: 2 ngày cuối tuần em xử lý phần của anh Tuấn, thứ Hai em review và hoàn thiện.
>
> **Biện pháp bù:**
> - Em sẽ gửi chị bản draft sớm thứ Sáu 16/05 để chị có thể review trước, không bị dồn vào thứ Hai.
> - Em xin schedule 15 phút họp với chị sáng thứ Ba 20/05 để walk through những điểm quan trọng.
>
> Nếu chị cần em hoàn thành đúng 15/05 bằng cách khác (giảm scope, xin hỗ trợ), chị cho em biết — em sẵn sàng điều chỉnh.
>
> Em xin lỗi chị vì sự thay đổi này và cảm ơn chị thông cảm.
> Dũng"

## Những điều cần tránh
- **Báo sát deadline** (sáng 15/05 báo sẽ trễ) → chị Hương không còn thời gian phản ứng.
- **Lý do mơ hồ**: "Em bận quá", "Có việc đột xuất".
- **Hạn mới vu vơ**: "Vài ngày nữa em nộp".
- **Không có biện pháp bù** → cảm giác "bỏ cuộc".

## Cụm từ mẫu
> **"Báo trễ 48h trước deadline. Lý do cụ thể + hạn mới tính kỹ + biện pháp bù."**', 'system', 58, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001059, 8001, NULL, 'markdown_book', 'Rule 58 — Độ dài dòng lý tưởng cho mail tiếng Việt có dấu: 40-50 ký tự', '# Rule 58 — Độ dài dòng lý tưởng cho mail tiếng Việt có dấu: 40-50 ký tự
> **Luận điểm.** Trên mobile, dòng dài hơn 50 ký tự bị xuống dòng tự động (wrap) ngẫu nhiên — mắt người đọc phải nhảy zig zag. Xuống dòng *chủ động* ở 40-50 ký tự giúp mail đọc được đẹp trên cả mobile và desktop.
>
> Từ khóa: **"40-50 ký tự/dòng"**.

## Ví dụ
❌ **Dòng quá dài** (78 ký tự):
> "Em xin gửi chị báo cáo tuần 19 của Dự án Bình Minh để chị tiện xem xét"

✅ **Xuống dòng chủ động** (40-50 ký tự):
> "Em xin gửi chị báo cáo tuần 19 của Dự án
> Bình Minh để chị tiện xem xét."

## Khi nào xuống dòng thủ công
- Email plain text → **xuống dòng thủ công** cần thiết.
- Email HTML / Gmail → **wrap tự động** nhưng vẫn nên xuống dòng ở câu dài >50 ký tự để đẹp mắt trên mobile.

## Lỗi thường gặp
- Copy từ Word → dán vào mail → dòng rất dài, không xuống.
- Viết liền một đoạn 5-6 câu không ngắt dòng.

## Cụm từ mẫu
> **"Xuống dòng ở 40-50 ký tự. Mobile đọc được. Desktop cũng đẹp."**', 'system', 59, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001060, 8001, NULL, 'markdown_book', 'Rule 59 — Block 2-5 dòng, cách nhau bằng 1 dòng trống', '# Rule 59 — Block 2-5 dòng, cách nhau bằng 1 dòng trống
> **Luận điểm.** Một "block" văn bản trên email nên **2-5 dòng**, kèm **1 dòng trống ngăn** với block kế tiếp. Block 1 dòng → cảm giác gãy nhịp. Block >5 dòng → bức tường chữ khó đọc. Dòng trống giúp mắt *nghỉ* giữa các ý.
>
> Từ khóa: **"block 2-5 dòng"**.

## Ví dụ XẤU — không có dòng trống
> "Chị Hương,
> Chúc chị một tuần làm việc hiệu quả. Em gửi chị báo cáo tuần 19 Bình Minh. Hạng mục A đúng tiến độ. Hạng mục B trễ 2 ngày, em đang xử lý. Hạng mục C cần chị duyệt 80tr trước 15/05. Em cảm ơn chị.
> Dũng"

→ Bức tường chữ, mắt mỏi.

## Ví dụ TỐT — có block với dòng trống
> "Chị Hương,
>
> Chúc chị một tuần làm việc hiệu quả.
>
> Em gửi chị báo cáo tuần 19 Bình Minh, 3 điểm chị cần biết:
> - Hạng mục A: đúng tiến độ
> - Hạng mục B: trễ 2 ngày, em đang xử lý
> - Hạng mục C: cần chị duyệt 80tr trước 15/05
>
> Em cảm ơn chị.
> Dũng"

Mắt có chỗ nghỉ sau mỗi block.

## Cấu trúc block điển hình
1. Chào (1-2 dòng)
2. [Dòng trống]
3. Dẫn nhập (1-2 dòng)
4. [Dòng trống]
5. Thân mail, có thể chia nhiều block (2-5 dòng mỗi block)
6. [Dòng trống giữa các block]
7. Kết (1-2 dòng)
8. [Dòng trống]
9. Chữ ký

## Cụm từ mẫu
> **"2-5 dòng/block. 1 dòng trống ngăn. Mắt có chỗ nghỉ."**', 'system', 60, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001061, 8001, NULL, 'markdown_book', 'Rule 60 — Nhiều ý chính → tiêu đề phụ đánh số, như heading H3', '# Rule 60 — Nhiều ý chính → tiêu đề phụ đánh số, như heading H3
> **Luận điểm.** Email có 3+ ý chính (mỗi ý >3 dòng) cần **tiêu đề phụ** để người đọc *scan* thấy cấu trúc. Không dùng tiêu đề → người đọc phải tự nhận diện nhóm ý → mất thời gian.
>
> Từ khóa: **"heading phụ khi nhiều ý"**.

## Ví dụ XẤU — không có tiêu đề phụ
> "Em báo cáo chị 3 vấn đề. Thứ nhất là về ngân sách, em thấy cần tăng 50tr vì... Thứ hai là về nhân sự, anh Tuấn nghỉ ốm nên... Thứ ba là về khách hàng, anh Matsumoto muốn dời lịch..."

## Ví dụ TỐT — có tiêu đề phụ
> Em báo cáo chị 3 vấn đề tuần này:
>
> **1. Ngân sách — cần tăng 50 triệu**
> Lý do: … (3 dòng chi tiết)
>
> **2. Nhân sự — anh Tuấn nghỉ ốm**
> Ảnh hưởng: … (3 dòng chi tiết)
>
> **3. Khách hàng — dời lịch review**
> Yêu cầu: … (3 dòng chi tiết)

Chị Hương scan là thấy ngay 3 chủ đề, chọn đọc kỹ chủ đề nào tuỳ ưu tiên.

## Format tiêu đề phụ
- **Bold** (không dùng heading markdown ## nếu mail plain text).
- Đánh số (1, 2, 3) — dễ tham chiếu.
- Tóm tắt 1 dòng — cho biết mục đó về gì.

## Cụm từ mẫu
> **"3 ý chính trở lên → tiêu đề phụ đánh số."**', 'system', 61, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001062, 8001, NULL, 'markdown_book', 'Rule 61 — Gạch đầu dòng + thụt lề làm cấu trúc lộ ra bằng mắt', '# Rule 61 — Gạch đầu dòng + thụt lề làm cấu trúc lộ ra bằng mắt
> **Luận điểm.** Mắt người đọc nhận diện cấu trúc qua **thụt lề** (indent) trước khi đọc nội dung. Gạch đầu dòng cấp 1 và cấp 2 có thụt lề khác nhau → người đọc thấy ngay đâu là ý chính, đâu là ý con.
>
> Từ khóa: **"thụt lề = cấu trúc"**.

## Ví dụ
> **Kết quả tuần:**
> - Hạng mục A — hoàn thành
>   - Test xong, đã deploy production
>   - Hakuō đã nghiệm thu
> - Hạng mục B — đang chạy
>   - 80% tiến độ
>   - Dự kiến xong 20/05
> - Hạng mục C — chờ input
>   - Chờ chị Hương duyệt budget

2 cấp thụt lề — mắt phân biệt được ý chính vs. ý con.

## Lưu ý cho plain text
- Dùng ký tự `-` cho cấp 1.
- Dùng `  -` (2 space + `-`) cho cấp 2.
- Không dùng tab — một số email client hiển thị không nhất quán.

## Không lồng quá 3 cấp
Sau cấp 3, thụt lề làm bức tranh rối — chuyển sang heading phụ mới.

## Cụm từ mẫu
> **"Cấp 1: `- `. Cấp 2: `  - `. Không quá 3 cấp."**', 'system', 62, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001063, 8001, NULL, 'markdown_book', 'Rule 62 — Hạn chế Hán Việt nặng, thay bằng từ thuần Việt khi có thể', '# Rule 62 — Hạn chế Hán Việt nặng, thay bằng từ thuần Việt khi có thể
> **Luận điểm.** Từ Hán Việt nặng (khả năng, tình huống, vấn đề, trạng thái, điều kiện) thay cho từ thuần Việt tương đương làm mail **cứng**, *già*, và xa cách người đọc trẻ. Không có nghĩa bỏ hết — chỉ khi có từ thuần Việt tự nhiên hơn.
>
> Từ khóa: **"chọn từ thuần Việt khi có thể"**.

## Bảng đối chiếu
| Hán Việt nặng | Thuần Việt gần gũi hơn |
|---------------|------------------------|
| Khả năng xảy ra | Có thể xảy ra |
| Trong tình huống này | Lúc này |
| Có vấn đề | Có lỗi / gặp khó |
| Trạng thái hiện tại | Hiện tại / bây giờ |
| Điều kiện | Yêu cầu / nếu |
| Tiến hành | Làm / thực hiện |
| Thực hiện | Làm |
| Quyết định | Quyết |
| Nhận định | Thấy / đánh giá |
| Bảo đảm | Chắc chắn |
| Đề cập | Nói đến |

## Ví dụ XẤU (Hán Việt quá nhiều)
> "Trong tình huống hiện tại, em nhận định rằng khả năng dự án tiến hành đúng tiến độ là bảo đảm, với điều kiện chúng ta thực hiện các biện pháp cần thiết."

## Ví dụ TỐT (pha trộn)
> "Hiện tại em thấy dự án có thể chạy đúng tiến độ, nếu chúng ta làm đủ các bước cần."

Cùng thông tin, dễ đọc hơn hẳn.

## Ngoại lệ — khi nên dùng Hán Việt
- Thuật ngữ chuyên môn (pháp lý, tài chính).
- Mail chính thức gửi cấp cao.
- Khi từ thuần Việt nghe quá thô.

## Cụm từ mẫu
> **"Có thuần Việt tương đương → dùng thuần Việt. Mail nhẹ hơn, gần gũi hơn."**', 'system', 63, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001064, 8001, NULL, 'markdown_book', 'Rule 63 — Dùng ký hiệu, đường kẻ chia khối — nhưng đừng biến mail thành poster', '# Rule 63 — Dùng ký hiệu, đường kẻ chia khối — nhưng đừng biến mail thành poster
> **Luận điểm.** Ký hiệu (■, ▪, ○, ◇) và đường kẻ (━━━, ───, ═══) giúp chia block trong mail plain text. Dùng chừng mực → cấu trúc rõ. Dùng quá → mail thành poster marketing, trông thiếu chuyên nghiệp.
>
> Từ khóa: **"ký hiệu chừng mực"**.

## Ví dụ đẹp — dùng chừng mực
> "Chị Hương,
>
> Báo cáo tuần 19:
>
> ──────────────────
> **■ Hạng mục A**
> Đúng tiến độ, demo thứ Sáu.
>
> **■ Hạng mục B**
> Trễ 2 ngày, em đang xử lý.
>
> **■ Hạng mục C**
> Cần chị duyệt 80tr trước 15/05.
> ──────────────────
>
> Em cảm ơn chị.
> Dũng"

## Ví dụ TỆ — quá nhiều
> "━━━━━✦━━━━━
> 🔹 **BÁO CÁO TUẦN 19** 🔹
> ━━━━━✦━━━━━
>
> ◆◇◆ Hạng mục A ◆◇◆
> ═══════════════"

→ Trông như flyer quảng cáo.

## Nguyên tắc
- Đường kẻ: tối đa **2 đường** trong 1 mail.
- Ký hiệu trước tiêu đề phụ: tối đa **1 kiểu** nhất quán.
- Không emoji ở email công việc chính thức (trừ email rất nội bộ, team trẻ).

## Cụm từ mẫu
> **"Ký hiệu: chừng mực. Email không phải poster."**', 'system', 64, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001065, 8001, NULL, 'markdown_book', 'Rule 64 — Người đọc trên điện thoại: ưu tiên xuống dòng, tránh câu trôi dài', '# Rule 64 — Người đọc trên điện thoại: ưu tiên xuống dòng, tránh câu trôi dài
> **Luận điểm.** 70% email doanh nghiệp được đọc lần đầu trên điện thoại. Màn hình mobile hẹp → câu dài → mắt phải scroll ngang hoặc wrap loạn. **Viết mail là viết cho mobile trước**.
>
> Từ khóa: **"mobile first"**.

## Checklist mobile-friendly
1. **Dòng ≤50 ký tự** (Rule 58).
2. **Block 2-5 dòng** (Rule 59).
3. **Tiêu đề ≤7 từ** (Rule 06).
4. **Ý chính ở câu đầu** — mobile có thể cắt preview.
5. **Không bảng phức tạp** — bảng >4 cột vỡ trên mobile.
6. **Hình ảnh trong body <600px rộng** — không thì bị cắt.
7. **Link rõ ràng** — không nhét link vào câu dài, đặt link trên dòng riêng.

## Test nhanh
Trước khi gửi mail quan trọng: **gửi nháp cho chính mình, mở trên điện thoại**, đọc thử. Thấy phải zoom, cuộn ngang, hoặc không hiểu câu đầu → viết lại.

## Cụm từ mẫu
> **"70% người đọc trên mobile. Viết cho màn hình nhỏ trước."**', 'system', 65, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001066, 8001, NULL, 'markdown_book', 'Rule 65 — File đính kèm: ghi rõ tên file + định dạng + dung lượng trong body', '# Rule 65 — File đính kèm: ghi rõ tên file + định dạng + dung lượng trong body
> **Luận điểm.** Mail có file nhưng body không đề cập → người đọc có thể bỏ qua file. Luôn ghi rõ trong body: **tên file (đúng tên), định dạng, và tóm tắt 1 dòng**.
>
> Từ khóa: **"đề tên file trong body"**.

## Ví dụ XẤU
> "Chị Hương, em gửi chị các tài liệu đính kèm."

→ Đính kèm có 3 file, chị Hương không biết file nào quan trọng.

## Ví dụ TỐT
> "Chị Hương, em đính kèm 3 file:
>
> 1. **`bao-cao-tuan-19.xlsx`** (1.2 MB) — Báo cáo chính, chị mở trước.
> 2. **`bieu-do-tien-do.pdf`** (450 KB) — Biểu đồ, tham khảo.
> 3. **`hop-dong-an-khang-v3.docx`** (320 KB) — Để chị nắm sơ, không cần đọc kỹ."

Chị Hương:
- Biết có bao nhiêu file.
- Biết nên mở file nào trước.
- Ước tính thời gian xử lý.

## Tên file nên theo format
- Không dấu tiếng Việt (tên file có dấu dễ lỗi trên một số hệ thống).
- Theo format: `[chủ đề]-[phiên bản]-[ngày].ext`. Ví dụ: `bao-cao-tuan-19-2026-05-12.xlsx`.
- Không có ký tự đặc biệt ngoài `-` và `_`.

## Cụm từ mẫu
> **"Tên file + định dạng + dung lượng + ghi chú 1 câu cho mỗi file."**', 'system', 66, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001067, 8001, NULL, 'markdown_book', 'Rule 66 — Tóm tắt 1 dòng cho mỗi file đính kèm để người đọc khỏi mở mù', '# Rule 66 — Tóm tắt 1 dòng cho mỗi file đính kèm để người đọc khỏi mở mù
> **Luận điểm.** Khi có nhiều file, **mỗi file phải có 1 dòng mô tả nội dung**. Người đọc biết nên mở file nào trước, file nào skip được. Không có mô tả = họ phải mở từng file để biết — lãng phí thời gian.
>
> Từ khóa: **"1 dòng / file"**.

## Ví dụ TỐT
> "Em gửi chị 5 file liên quan Bình Minh:
>
> 1. `bao-cao-tong.pdf` — Báo cáo tổng kết dự án (20 trang). Chị đọc phần "Tóm tắt điều hành" trang 2.
> 2. `tai-chinh-chi-tiet.xlsx` — Bảng chi tiêu chi tiết. Không cần nếu chị chỉ muốn nắm tổng.
> 3. `lich-trinh-ky.pdf` — Lịch trình ký kết các giai đoạn tiếp. Chị cần duyệt.
> 4. `hop-dong-goc.pdf` — Hợp đồng gốc (tham khảo).
> 5. `danh-sach-nhan-su.xlsx` — Nhân sự cần thiết cho phase 2."

Chị Hương:
- Biết 5 file có vai trò gì.
- Biết đọc `1` và `3` là đủ — `2`, `4`, `5` có thể skip.

## Format mô tả
- 1 dòng — không dài hơn.
- Bắt đầu bằng nội dung file.
- Kèm gợi ý đọc ưu tiên nếu có (ví dụ "trang 2", "chỉ cần xem phần X").

## Cụm từ mẫu
> **"Mỗi file = 1 dòng mô tả + gợi ý đọc ưu tiên."**', 'system', 67, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001068, 8001, NULL, 'markdown_book', 'Rule 67 — Giới hạn dung lượng mail doanh nghiệp 10MB — nén hoặc dùng link', '# Rule 67 — Giới hạn dung lượng mail doanh nghiệp 10MB — nén hoặc dùng link
> **Luận điểm.** Hầu hết mail doanh nghiệp có giới hạn dung lượng **10MB hoặc 25MB**. Vượt giới hạn → mail bị block, nhưng **bạn không nhận được thông báo lỗi ngay**. 2-3 ngày sau bạn phát hiện không gửi được → trễ việc.
>
> Từ khóa: **"10MB hoặc dùng link"**.

## 2 cách xử lý file lớn
### Cách 1 — Nén file
- File Word/Excel → Save as zip.
- Ảnh: resize xuống 1200px rộng, giảm 70% dung lượng.
- PDF: dùng "Reduce file size" trong Preview/Adobe.

### Cách 2 — Dùng link chia sẻ
File >10MB → upload lên:
- **Google Drive / OneDrive / Dropbox** (nội bộ).
- **WeTransfer / SendGB** (link hết hạn — an toàn hơn cho file nhạy cảm).

Trong mail:

> "File quá lớn để đính kèm. Em gửi chị link Google Drive: [link]. Link này có hạn đến 30/05."

## Bảng giới hạn các hệ thống
| Hệ thống | Giới hạn |
|----------|----------|
| Gmail | 25 MB |
| Outlook 365 | 25 MB (có thể cao hơn tùy cấu hình) |
| Mail doanh nghiệp onpremise | Thường 10 MB |
| Mail domain tự host | Tùy admin cấu hình |

## Cẩn thận khi gửi file nhạy cảm
File chứa PII, hợp đồng ký, số liệu tài chính → dùng **cloud storage nội bộ** + **link có quyền chỉ định người xem**, không dùng link public.

## Cụm từ mẫu
> **"File >10MB → nén hoặc link. Không đính kèm và hy vọng nó gửi được."**', 'system', 68, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001069, 8001, NULL, 'markdown_book', 'Rule 68 — Plain text an toàn hơn HTML — email công việc nên chọn plain', '# Rule 68 — Plain text an toàn hơn HTML — email công việc nên chọn plain
> **Luận điểm.** HTML email có format đẹp hơn (bold, color, bảng) nhưng nhiều rủi ro: (1) hiển thị khác nhau trên các email client, (2) dễ rơi vào spam folder, (3) khó copy-paste trích dẫn. **Plain text** là "mặc định an toàn" cho mail công việc thông thường.
>
> Từ khóa: **"plain text mặc định"**.

## Khi nào dùng plain text
- Mail công việc nội bộ.
- Mail gửi khách hàng 1-1.
- Mail hợp đồng, báo giá (text có thể copy làm chứng lại).
- Mail quan trọng cần lưu trữ và index (HTML khó search).

## Khi nào có thể dùng HTML
- Newsletter cho danh sách lớn (có template chuẩn).
- Mail chào mừng có branding công ty.
- Mail marketing (có consent từ người nhận).

## Cách bật plain text
### Gmail
Click nút **⋯** (more options) trong cửa sổ soạn mail → **Plain text mode**.

### Outlook
Message tab → Format Text → Plain Text.

## Rủi ro HTML thường gặp
- **Signature có logo** hiển thị lỗi trên một số client → mất chuyên nghiệp.
- **Bảng HTML** hiển thị OK trên Outlook nhưng vỡ trên Gmail app mobile.
- **Mail HTML có link** dễ bị filter spam đặc biệt ở một số công ty ngân hàng/chính phủ.

## Cụm từ mẫu
> **"Mail công việc: plain text mặc định. HTML chỉ khi thật sự cần và có kiểm tra."**', 'system', 69, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001070, 8001, NULL, 'markdown_book', 'Rule 69 — UTF-8 và kiểm tra dấu tiếng Việt khi gửi ra nước ngoài', '# Rule 69 — UTF-8 và kiểm tra dấu tiếng Việt khi gửi ra nước ngoài
> **Luận điểm.** Gửi email quốc tế có thể gặp **lỗi encoding** — dấu tiếng Việt hiển thị thành `?`, `□`, hoặc ký tự lạ. Lỗi này do email client sử dụng encoding khác UTF-8. Phòng tránh: (1) đặt encoding UTF-8 rõ, (2) test trước bằng cách gửi nháp cho chính mình, (3) có bản tiếng Anh backup.
>
> Từ khóa: **"UTF-8 + test trước"**.

## Cách kiểm UTF-8 đã bật
### Gmail
Mặc định UTF-8 — thường không cần lo.

### Outlook
File → Options → Advanced → Send messages → **Use UTF-8** cho outgoing messages.

### Domain tự host
Hỏi IT: header "Content-Type: text/plain; charset=UTF-8" có được set?

## Test trước
Trước khi gửi mail quốc tế quan trọng:
1. Gửi nháp cho chính mình.
2. Mở trên **máy khác / email client khác** (lý tưởng: máy không cài Vietnamese).
3. Kiểm xem dấu có đúng không.

## Khi phải lo
- Gửi cho đối tác nước ngoài dùng mail client cổ.
- Gửi qua hệ thống trung gian (ticketing system, CRM).
- Tên file đính kèm có dấu.

## Workaround — bản tiếng Anh backup
Mail quan trọng gửi quốc tế, cân nhắc gửi **bản song ngữ**:

> "Dear Mr. Smith,
>
> Please find below the Vietnamese version. An English summary follows.
>
> [Vietnamese version with full diacritics]
>
> --- English summary ---
> [Key points in English]"

## Cụm từ mẫu
> **"Quốc tế → UTF-8 + test trước + bản tiếng Anh backup nếu quan trọng."**', 'system', 70, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();
INSERT INTO curriculum_node (id, curriculum_id, parent_id, node_type, node_title, node_content, tenant_id, order_index, access_level, is_active, is_deleted, created_at) VALUES (8001071, 8001, NULL, 'markdown_book', 'Rule 70 — Zalo / Teams đã thay email cho việc nào? Khi nào email vẫn không thể thiếu?', '# Rule 70 — Zalo / Teams đã thay email cho việc nào? Khi nào email vẫn không thể thiếu?
> **Luận điểm.** Chat tool (Zalo, Teams, Slack) nhanh hơn email cho đa số việc hàng ngày, nhưng **không thay được email** trong các tình huống cần *bằng chứng*, *lưu trữ có hệ thống*, hoặc *trang trọng*. Biết chọn đúng kênh tiết kiệm nhiều thời gian.
>
> Từ khóa: **"chat vs email"**.

## Bảng so sánh
| Tình huống | Dùng gì |
|-----------|---------|
| Hỏi nhanh đồng nghiệp trong ngày | **Chat** |
| Họp online lịch dưới 1 giờ | **Chat** (video call) |
| Brainstorm | **Chat** |
| Gửi file nhẹ cho nội bộ | **Chat** |
| **Hợp đồng, báo giá chính thức** | **Email** |
| **Mail xin lỗi khách hàng** | **Email** (tôn trọng) |
| **Thông báo thay đổi chính sách** | **Email** (cần lưu) |
| **Mail lần đầu liên hệ khách hàng** | **Email** |
| **Báo cáo tuần/tháng** | **Email** |
| **Giao việc chính thức cho nhân viên** | **Email** (có trách nhiệm) |
| **Thông tin cần search sau này** | **Email** (dễ search hơn chat) |

## Dấu hiệu cần chuyển kênh
### Chat → Email
- Việc đã quan trọng hơn bạn nghĩ.
- Cần có người CC để theo dõi.
- Cần có hồ sơ chính thức sau này.
- Có file lớn, kèm nhiều ghi chú.

### Email → Chat
- Đã qua lại 3 lần mail vẫn chưa hiểu nhau (Rule 19).
- Việc đột ngột trở nên khẩn.
- Chỉ cần 1 câu trả lời ngắn.

## Cụm từ mẫu
> **"Chat cho nhanh, Email cho lưu. Biết chọn đúng → tiết kiệm 2 giờ/tuần."**', 'system', 71, 'premium', TRUE, FALSE, NOW()) ON CONFLICT (id) DO UPDATE SET curriculum_id = EXCLUDED.curriculum_id, node_type = EXCLUDED.node_type, node_title = EXCLUDED.node_title, node_content = EXCLUDED.node_content, tenant_id = EXCLUDED.tenant_id, order_index = EXCLUDED.order_index, access_level = EXCLUDED.access_level, is_active = EXCLUDED.is_active, is_deleted = EXCLUDED.is_deleted, updated_at = NOW();

COMMIT;
