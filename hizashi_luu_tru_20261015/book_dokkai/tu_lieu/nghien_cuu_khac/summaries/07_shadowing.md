# TÓM TẮT: Kỹ thuật Shadowing và Thiết kế Ứng dụng Học Tiếng Nhật

## Nguồn: shadowing.docx

---

## 1. CƠ SỞ KHOA HỌC SHADOWING

### Định nghĩa
- Lặp lại lời nói gần như **đồng thời** với âm thanh đầu vào
- Độ trễ (lag time): Chỉ vài mili giây
- **Khác với Mimicking:** Nghe → Tạm dừng → Lặp lại

### Cơ chế Thần kinh
1. **Vòng lặp Ngữ âm-Âm vị (Phonological Loop)**
   - Hoạt động ở công suất tối đa
   - Mở rộng dung lượng qua thực hành

2. **Tính dẻo Thần kinh**
   - Sau rèn luyện: Giảm hoạt động não bộ
   - = Hiệu quả thần kinh (neural efficiency) tăng
   - Não xử lý cùng nhiệm vụ với ít tài nguyên hơn

3. **Lý thuyết Vận động (Motor Theory)**
   - Hệ thống vận động tham gia vào nhận thức lời nói
   - Làm (nói) → Củng cố khả năng Hiểu (nghe)

---

## 2. BỐN LỢI ÍCH SƯ PHẠM

| Lợi ích | Mô tả |
|---------|-------|
| **Ngữ điệu** | Nắm bắt toàn bộ "âm nhạc" của ngôn ngữ |
| **Trí nhớ cơ bắp** | Tự động hóa bộ máy phát âm |
| **Thụ đắc ngầm** | Học implicit, "chunking" cấu trúc |
| **Tải nhận thức** | Tăng khả năng chịu tải cho hội thoại thực |

---

## 3. TRANH LUẬN: BLIND VS INFORMED SHADOWING

### Shadowing Mù (Blind)
- Nhại lại không cần hiểu nghĩa
- **Rủi ro:**
  - Hóa thạch lỗi (Fossilising Errors)
  - "Vẹt hóa vô nghĩa" (Mindless Parroting)

### Shadowing Có hiểu biết (Informed) ✅
- Hiểu 100% nội dung TRƯỚC KHI nói
- Được "dàn giáo cẩn thận" (scaffolded)
- **Bắt buộc cho ứng dụng EdTech**

> **Kết luận:** Người học NÊN hiểu nghĩa trước khi nói

---

## 4. QUY TRÌNH 5 BƯỚC TỐI ƯU

### Bước 1: Giải mã Toàn diện
- Đọc transcript, tra cứu từ vựng/ngữ pháp
- Mục tiêu: **100% hiểu biết**

### Bước 2: Nghe Chủ động
- Nghe 1-3 lần trong khi nhìn transcript
- Chú ý ngữ điệu, nối âm, nuốt âm

### Bước 3: Shadowing có Hỗ trợ
- Nói nhại trong khi **nhìn transcript**
- Có thể giảm tốc độ 0.75x

### Bước 4: Shadowing Thuần túy
- Bỏ transcript, chỉ nghe và nhại
- Tốc độ gốc 1x

### Bước 5: Phân tích và Tinh chỉnh
- Ghi âm và so sánh với bản gốc
- Xác định điểm yếu cụ thể

---

## 5. THIẾT KẾ ỨNG DỤNG

### Triết lý
- **Pedagogy-First:** Mọi tính năng phục vụ quy trình 5 bước
- **Tối giản:** Giao diện "sạch", không phân tán

### User Flow
1. **Màn hình Hiểu** → Bước 1
2. **Chế độ Nghe** → Bước 2
3. **Chế độ Luyện tập** → Bước 3
4. **Chế độ Thử thách** → Bước 4
5. **Màn hình Phản hồi** → Bước 5

### Tính năng Trình phát Bắt buộc
- Điều chỉnh tốc độ (0.75x, 1x, 1.25x)
- Lặp lại đoạn (A-B Repeat)
- Transcript tương tác (đồng bộ, highlight)

---

## 6. VÒNG LẶP PHẢN HỒI (Feedback Loop)

### Giải quyết "Nỗi đau" Bước 1
- **Vấn đề:** Ma sát trong quy trình (nhiều app rời rạc)
- **Giải pháp:**
  - Từ điển "Một chạm" (One-Tap Dictionary)
  - SRS tích hợp sẵn (không cần Anki)

### Giải quyết "Nỗi đau" Bước 5
- **Vấn đề:** Không biết sai ở đâu
- **Giải pháp:**
  - Phản hồi AI (chấm điểm phát âm, prosody, fluency)
  - So sánh Sóng âm (Waveform)
  - **So sánh Đường cong Cao độ (Pitch Accent)** ← Tính năng sát thủ cho tiếng Nhật

---

## 7. KHOẢNG TRỐNG THỊ TRƯỜNG

### Không có app nào kết hợp:
1. Hệ sinh thái "Hiểu" liền mạch (Satori/Manabi Reader)
2. Nhập liệu BYOC linh hoạt (Speak Pro)
3. Vòng lặp phản hồi Sóng âm + Pitch Curve (Ganbatte Shadowing)

### MVP Cần có:
- **Vòng lặp Hiểu:** Transcript + Từ điển + Flashcard SRS
- **Vòng lặp Phản hồi:** Ghi âm + Sóng âm + Pitch Curve

---

## 8. GAMIFICATION CÓ MỤC ĐÍCH

### Nên có:
- Thanh tiến trình (Progress Bars)
- Chuỗi ngày học (Streaks)
- XP/Tiền ảo (mở khóa nội dung)

### Nên tránh:
- Bảng xếp hạng (Leaderboards) - gây áp lực ngược

---

## TỪ KHÓA
`Shadowing` `Informed Shadowing` `Phonological Loop` `Motor Theory` `Pitch Accent Curve` `Waveform` `SRS` `Scaffolding`
