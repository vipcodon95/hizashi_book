# `_shared/` — Tài sản dùng chung cho mọi sách Hizashi

*Folder này chứa các tài liệu / template tái dùng được giữa các sách trong bộ Hizashi.*

---

## File hiện có

### `quy_tắc_chuẩn_hoá_md.md`

Quy tắc chuẩn hoá file Markdown (heading không icon, đặt tên VI thống nhất,
không reference file ngoài...). Đây là **standard bắt buộc** cho mọi rule.md
trong `books/`. Đã được tự động hoá qua `scripts/normalize_release.py`, nhưng
viết đúng từ đầu giúp diff release sạch hơn.

### `công_thức_rule.md`

Khung 8 khối chuẩn cho mỗi "rule" trong sách Hizashi:

1. **Header rule** — số rule + tiêu đề câu khẳng định
2. **Khối luận điểm** — nguyên tắc cốt lõi 2-3 câu, kèm brand keyword
3. **Bối cảnh** — 1 câu đặt tình huống
4. **Ví dụ XẤU** — bordered box với hội thoại đánh số lượt
5. **Câu phân tích bắc cầu** — chẩn đoán "vì sao xấu"
6. **Ví dụ TỐT** — cùng pattern label với ví dụ XẤU
7. **Biến thể / chiều ngược** — optional
8. **Câu chốt mang đi** — câu mẫu copy-paste được

Mọi sách Hizashi viết theo dạng "how-to với rule" đều nên tuân khung này.

---

## Quy tắc thêm tài sản chung

- Tài sản chỉ vào `_shared/` khi *được dùng ở **>1 sách***.
- Tài sản đặc thù 1 sách → để trong `books/<book_id>/` của sách đó.
- Khi update tài sản chung, kiểm tra ảnh hưởng đến tất cả sách đang dùng.

---

## Tài sản tương lai (placeholder)

- `cast_chung.md` — dàn nhân vật mặc định. Hiện sách 01 và sách 02 đều dùng chung cast Hizashi (Dũng/ズン, Hương/フオン副部長, Tuấn/トゥアンリーダー, Loan/ロアン経理部長, Linh/リン, Hải/ハイ, Hà/ハー + Matsumoto/松本PM bên 白鷗株式会社). Nguồn cast mở rộng cho sách 02: `books/02_phone/nội_dung/voice_profiles.json` (11 speakers + TTS voice hint). Khi viết sách 03 trở đi, gộp về `_shared/cast_chung.md`.
- `branding/` — logo, màu, font, template docx của Hizashi Teams.
- `legal/` — copyright notice mẫu, license terms.

---

## Sách hiện đang dùng tài sản chung

| Sách | Dùng `công_thức_rule.md` | Dùng cast chung |
|------|--------------------------|-----------------|
| 01 Email | ✅ (theo khung 8 khối truyền thống) | ✅ |
| 02 Phone | ✅ (mở rộng: thêm `conversation.json` cho TTS) | ✅ + 4 vai bổ sung (受付, 中村CFO, 不明発信者) |
