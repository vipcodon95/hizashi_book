# BỐI CẢNH DỰ ÁN: đọc file này trước tiên

File này gom lại những gì đã biết và đã quyết định, để người hoặc agent tiếp nhận không phải tìm hiểu lại từ đầu. Cập nhật ngày 15/10/2026.

## 1. Dự án là gì

- Viết lại **sách ngữ pháp và đọc hiểu tiếng Nhật cho người Việt** của Hizashi.
- Khung CHÍNH là `book_reading` (bản cũ, viết tháng 4/2026). Cốt lõi của bản này là mô phỏng cách người bản ngữ xử lý câu theo dòng, dựa trên `tu_lieu/book_reading/research/research.md`.
- `hizashi_dich_cau/resource` (01–02/2026) là bản làm trước: khóa N5 theo 25 bài Minna, viết cho ứng dụng. **Chỉ dùng làm tư liệu.**
- Thư mục `lam_lai_grammar` (không đóng gói) là giáo trình ngữ pháp theo Minna, không liên quan đến dự án này.
- Quy trình mẫu là sách phát âm `book_hatsuon`, đã hoàn thành Bản Học sinh. Mẫu văn phong của sách đó nằm ở `tu_lieu/mau_sach_phat_am/`.

## 2. Đã quyết định

1. Giữ **39 bài**, đánh số như bản cũ, để khớp với bài tập JSON. **Không động đến bài tập**: sách chỉ đưa phương pháp luyện, không viết bài tập.
2. Viết **Bản Học sinh trước**. Việc có làm Bản Giáo viên hay không còn để mở.
3. Cốt lõi là **thứ tự hiểu theo mẫu ngữ pháp** (chủ biên nhấn mạnh). Mô hình 3 tín hiệu và nguyên tắc "Đóng gói nội dung ngay. Để ngỏ vai trò cho đến đuôi câu" được trình bày trong `KHUNG_SACH.md`.
4. Giai đoạn 0, kiểm chứng nền lý thuyết, sẽ do chủ biên làm ở nơi khác. Chỉ dẫn nằm trong `HUONG_NGHIEN_CUU.md`.

## 3. Quy tắc văn phong (bắt buộc, rút từ sách phát âm)

- **Tiếng Việt PHẢI có dấu đầy đủ.** Subagent hay viết thiếu dấu, nên phải kiểm tra lại.
- **Giọng sách tham khảo khách quan.** Không xưng "bạn", "mình", "chúng ta". Dùng "người Việt", "người học". Không viết câu cảm thán kiểu quảng cáo như "Chúc mừng!" hay "Tin tốt:".
- Có lý thuyết thật, khiến người đọc thấy "à, hóa ra là thế": đặt vấn đề hoặc nghịch lý, rồi giải thích cơ chế. Nhưng **không dùng ô chen ngang** kiểu "> **Hóa ra:**".
- Dẫn dắt kiểu báo cáo nhưng bớt hàn lâm: Vấn đề → Cơ sở → Phân tích "Tiếng Nhật: / Tiếng Việt: / Cơ chế lỗi:" → Kết luận và hàm ý.
- **Quá trình tự động của não** viết ở thể bị động hoặc vô thức: "bị xếp vào…", "được hiểu thành…". **Hành động có ý thức của người học** viết chủ động: "chia khối", "đánh dấu", "đối chiếu".
- Tiền đề chung: khó khăn không phải do luyện ít, mà do **luyện tập chưa có chủ đích**.
- Tác giả người Việt ghi **đủ họ tên có dấu**, ví dụ Lê Thị Huyền Trang. Không viết tắt.
- Dùng **TTT** cho 普通形, không dùng "plain form".
- Phải giữ ba kỹ thuật **chia khối, dự đoán, đóng gói 🔒** trong mọi bài. Bảng phân tích phải có bước đóng gói khi gặp danh từ + trợ từ.

## 4. Quy tắc chính xác

- Các file nguồn phần lớn do AI tổng hợp và **có lỗi**. Chỉ dùng làm tư liệu.
- **Không đưa con số không có nguồn.** Mọi câu kiểu "nghiên cứu cho thấy…" phải kiểm chứng bằng bài gốc hoặc bản tóm tắt. Không kiểm chứng được thì bỏ.
- Ví dụ tiếng Nhật phải đúng ngữ pháp và nghĩa. Bản dịch tách thành **dịch theo khối** (có gắn nhãn) và **dịch tự nhiên**.
- Chỗ còn nghi ngờ đánh dấu `<!-- CẦN KIỂM CHỨNG: ... -->`.

## 5. Những điều đã phát hiện về tư liệu

- `book_reading/content/index.md` **chỉ liệt kê đến Bài 33** và ghi sai thứ tự Bài 27–32. Thực tế có 39 bài; tiêu đề đúng nằm trong từng file `lesson_XX.md`, và đã được ghi lại trong `KHUNG_SACH.md` mục 4.
- Phần 0 cũ (`part_00_method.md`) ghi "4 kỹ thuật", còn CLAUDE.md ghi 3 kỹ thuật. Phần 0 cũ còn xưng "bạn" và dẫn Miller (1956) "5–9 đơn vị", con số này cần sửa theo Cowan (2001).
- Bản cũ có những câu dịch gượng: "Về phần tôi thì, là sinh viên", "Tôi trà CŨNG uống".
- Bốn file `research/lesson_00_*.md` giống hệt bản trong `hizashi_dich_cau` (đã so mã băm), nên chỉ đóng gói một bản.
- Nội dung về thứ tự hiểu đã có, nhưng nằm rải rác ở các bài:
  - phó từ báo đuôi câu (もし…たら, ぜんぜん…ない): Bài 36, 23;
  - đuôi câu đổi cách hiểu: Bài 20 (10 kiểu đuôi TTT), 28 (trích dẫn);
  - đuôi câu đổi vai "ai làm gì": Bài 24, 25, 37, 33;
  - nối câu: Bài 6, 29–32, 39;
  - diễn giải: Bài 20 (んです), 35, 27.
- `mau_sach_phat_am/su_khac_biet_am_thanh.md` là **mẫu về lối viết**, nhưng mục 4.2 của nó **sai về nguồn**. Không lấy nội dung trong đó.

## 6. Cấu trúc gói này

```
book_dokkai/
├── BOI_CANH.md            ← file này
├── README.md
├── KHUNG_SACH.md          ← khung sách, mô hình 3 tín hiệu, mục lục 39 bài, lộ trình
├── HUONG_NGHIEN_CUU.md    ← Giai đoạn 0: luận điểm, nguồn ứng viên, rà research.md
├── research/              ← (trống) nơi đặt kết quả kiểm chứng, nen_tang_doc_hieu.md
├── student/               ← (trống) nơi đặt Bản Học sinh
└── tu_lieu/
    ├── CLAUDE_hizashi_book.md     ← quy tắc dự án gốc
    ├── book_reading/              ← BẢN SAO ĐẦY ĐỦ của hizashi_book/book_reading
    │   ├── research/              ← research.md, setsuzoku.md, lesson_00_* (có 2 bản thẩm định chuyên gia)
    │   ├── review/                ← các báo cáo thẩm định cũ
    │   ├── content/
    │   │   ├── index.md, part_00_method.md, METHODOLOGY_AND_SYSTEM.md, part_02_sentence_structures.md
    │   │   ├── exercises_common/  ← spec bài tập, spec luyện dịch, script convert và validate
    │   │   └── part_01 … part_05/ ← lesson_XX.md, draft/, exercises/ (JSON trắc nghiệm),
    │   │                            exercises_draft/ (md nháp), practice/ (JSON luyện dịch)
    │   ├── reading_collection/    ← bộ bài đọc: READING_SPEC.md, readings.db, readings_*.json, bản nháp N3
    │   ├── grammar_202604280043.json
    │   └── viewer.py
    ├── hizashi_dich_cau/          ← khung N5, đối chiếu Minna, grammar_all_lessons.md
    ├── ban_tai_cau_truc_nhan_thuc/ ← bản sách "Tái Cấu Trúc Nhận Thức" 12/2025 (PDF, docx, JSON cấu trúc; tai_cau_truc.json có Lời tựa viết lại)
    ├── nghien_cuu_khac/           ← các báo cáo nghiên cứu khác của hizashi_book: Hán-Việt → On'yomi,
    │                                chuyển âm, phát âm Tokyo, biến âm, sokuon, shadowing, kanji; kèm bản tóm tắt
    └── mau_sach_phat_am/          ← HOI_DONG_SACH, BANG_THUAT_NGU, Chương 0, Chương 1, su_khac_biet_am_thanh
```

`hizashi_dich_cau/research.md` giống hệt `book_reading/research/research.md` (đã so mã băm), nên chỉ giữ một bản.

Không đóng gói: `__pycache__`, `lam_lai_grammar` (giáo trình theo Minna, không liên quan), file `.env`.

## 7. Tiến độ

- **15/10/2026: Giai đoạn 0 xong.** Kết quả ở `research/nen_tang_doc_hieu.md` (bảy nền độc lập, không dựng luận điểm xuyên suốt). Bảng duyệt và các quyết định của chủ biên ở `research/BANG_KIEM_CHUNG.md`. Bản dò nguồn của từng luận điểm ở `research/kiem_chung/` (L1–L8, R1–R3, S1–S3, G1–G4). Script dò ở `research/tools/run_verify.py` (Sonnet 5.5 + web search; key đọc từ file, không ghi vào script).
- Quy ước mới: khi viết sách, đơn vị luyện đọc gọi là **khối bunsetsu** (được gộp 連文節); khi trình bày lý thuyết, 文節 dùng đúng định nghĩa chuẩn.
- **15/10/2026: Giai đoạn 1 xong.** Kết quả ở `research/tham_dinh_hien_trang.md` (5 lỗi hệ thống, bảng 40 file, danh sách lỗi tiếng Nhật không được lặp lại). Bản chi tiết từng bài ở `research/tham_dinh/`. Script: `research/tools/run_audit.py`.
- **15/10/2026: Giai đoạn 2 xong (chờ chủ biên duyệt).** `student/HOI_DONG_SACH.md` (văn phong, cách ghi 🔒 / còn mở / dự đoán / chốt, mẫu một ví dụ có hai bản dịch, luật viết quy tắc, khuôn bài, mục lục kèm tư liệu, quy trình hội đồng) và `student/BANG_THUAT_NGU.md` (thuật ngữ chuẩn + quy ước trình bày + biến thể bản cũ cần thay). ている gọi là "thể tiếp diễn" (chủ biên chốt).
- **15/10/2026: Giai đoạn 3, bản nháp văn mẫu xong, CHỜ CHỦ BIÊN DUYỆT.** `student/phan_00_phuong_phap.md` và `student/bai_01.md` (Opus 5.5 effort medium viết qua `research/tools/run_write.py`; Sonnet 5.5 thẩm định độc lập ở `research/tham_dinh_moi/`, đã sửa theo các điểm hợp lý). Duyệt xong mới sang Giai đoạn 4 (viết theo từng Phần).

## 8. Tạm dừng 17/10/2026: văn mẫu bị chủ biên bác

Chủ biên đọc `student/phan_00_phuong_phap.md` và `student/bai_01.md` và bác: "liệt kê không ra liệt kê, sách không ra sách, không có mở dẫn, đọc nửa Phần 0 vẫn không biết chủ đề, mục đích, đối tượng". Dự án sách tạm dừng. Hai file nháp giữ lại làm bằng chứng, KHÔNG dùng làm văn mẫu.

Những gì vẫn dùng được: `research/nen_tang_doc_hieu.md`, `research/kiem_chung/`, `research/tham_dinh_hien_trang.md`, `research/tham_dinh/`.

Lỗi gốc (nằm ở bộ quy chuẩn `student/HOI_DONG_SACH.md` + `BANG_THUAT_NGU.md`, phải sửa TRƯỚC khi viết lại):
1. Không có Lời nói đầu; chưa chốt người đọc (trình độ, tự học hay có lớp). Hai câu hỏi này còn chờ chủ biên.
2. Chép khuôn báo cáo của sách phát âm (Tóm tắt → Vấn đề → Cơ sở…) ⟹ nghiên cứu và lời rào "chưa kiểm chứng" đổ ra đầu chương, lặp nhiều lần; lộ cả đường dẫn file nội bộ trong sách.
3. Thuật ngữ và ký hiệu dồn dập trước khi giải thích (tín hiệu đầu/giữa/cuối, 🔒, còn mở, dự đoán, chốt, [ ]).
4. Bắt buộc hai bản dịch cho MỌI câu ⟹ "dịch theo khối" ra câu vô nghĩa; cấm điền chủ ngữ ⟹ "dịch tự nhiên" cụt, không tự nhiên.
5. Bảng nhồi câu Nhật + hai bản dịch vào một ô; mỗi ô "Xử lý" là cả đoạn văn.
6. Lặp ý (một câu ví dụ giải thích 3–4 lần), độ khó ví dụ lẫn lộn N5 với N2, không có đoạn văn đọc hiểu thật.
7. Duyệt chỉ kiểm đúng sai (ngữ pháp, nguồn, nhãn), không đọc như người học ⟹ báo "đạt" sai. Lần sau phải có bước đọc thử như người học.
