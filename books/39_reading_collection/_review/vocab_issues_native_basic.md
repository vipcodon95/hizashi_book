# Vocab Issues — native_basic_drafts (555 vocab, 30 readings)

Files: batch_0641_0650.json, batch_0651_0660.json, batch_0661_0670.json

## A. LỖI READING / SCHEMA

Em đã scan toàn bộ — **không phát hiện lỗi reading rõ rệt nào**. Các từ đều có reading khớp word, schema đúng (word/reading/meaning/han_viet).

Note: `公正な移行 → こうせいないこう` (こうせい-な-いこう viết liền) — đếm mora đúng 8, không lỗi.

## B. TỪ CỔ NGỮ / KHÔNG CHUẨN

native_basic chứa **rất ít cổ ngữ** so với native_advanced. Chỉ vài từ cần lưu ý:

| reading_id | word | Ghi chú |
|---|---|---|
| R_0651 | 物の哀れ | mono no aware — khái niệm thẩm mỹ cổ điển nhưng vẫn được dùng và dạy phổ biến → giữ |
| R_0653 | 予期せぬ | "ngoài dự kiến" (cổ điển của 予期しない) — vẫn phổ biến trong văn báo chí/văn học hiện đại → giữ |
| R_0653 | 確固たる | たる là 文語 nhưng dùng phổ biến trong văn viết → giữ |
| R_0670 | もののあわれ | giống R_0651 |
| R_0670 | 間 (ま) | "khoảng lặng" trong mỹ học Nhật — khái niệm còn dùng → giữ |

→ Toàn bộ acceptable, không cần xóa.

## C. LỖI HÁN VIỆT (đã fix)

Sau khi rebuild script với separator `,`:
- `芥川賞`: "Khối, khải Xuyên Thưởng" → **"Khối Xuyên Thưởng"** ✓
- `筋萎縮性側索硬化症`: "Cân Nuy, li Súc..." → **"Cân Nuy Súc..."** ✓ (10 entries tổng cộng)

## TÓM TẮT native_basic

- **Lỗi reading**: 0
- **Từ cổ ngữ cần xóa**: 0 (toàn bộ vẫn dùng trong văn hiện đại)
- **Lỗi schema**: 0
- **Lỗi Hán Việt**: 10 (đã auto-fix qua script update separator)

→ **Batch sạch sẽ**, không có vấn đề nghiêm trọng.
