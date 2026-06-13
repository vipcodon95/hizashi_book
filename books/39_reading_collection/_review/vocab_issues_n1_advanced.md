# Vocab Issues — n1_advanced_drafts (994 vocab, 60 readings)

Files: batch_0581_0590 → batch_0631_0640 (6 files)

## A. LỖI READING (đã fix)

| reading_id | word | reading sai | đã sửa |
|---|---|---|---|
| R_0610 | 六義 | `rikki / りくぎ` | `りくぎ` ✓ |
| R_0610 | ますらをぶり | `masuraoburi` | `ますらをぶり` ✓ |
| R_0610 | たをやめぶり | `taoyameburi` | `たをやめぶり` ✓ |

## B. TỪ CỔ NGỮ / 旧仮名

| reading_id | word | Ghi chú |
|---|---|---|
| R_0587 | うたかた | "bọt nước" — ngôn từ cổ Hojoki, vẫn dùng trong thơ ca hiện đại → giữ |
| R_0595 | もののあわれ | mono no aware — khái niệm thẩm mỹ phổ biến → giữ |
| R_0601 | をかし | cổ ngữ Heian → giữ vì context Makura no Soshi |
| R_0601 | もののあわれ | giữ |
| R_0604 | まれびと | thuật ngữ thần thoại học của Origuchi Shinobu → giữ |
| R_0610 | ますらをぶり / たをやめぶり | thuật ngữ phê bình thi ca cổ điển → giữ |
| R_0614 | もののあはれ | 旧仮名 → giữ |
| R_0616 | あはれ | 旧仮名 cổ ngữ → giữ |
| R_0619 | やまとごころ | thuật ngữ Norinaga → giữ |
| R_0628 | あわい | 文語 "khoảng giữa" → giữ |
| R_0629 | あはれ / をかし | 旧仮名 → giữ |

→ Toàn bộ là thuật ngữ học thuật/thi ca cổ điển có giá trị, **không cần xóa**.

## C. LỖI HÁN VIỆT (không sửa được tự động — do DB nguồn)

| reading_id | word | han_viet hiện tại | Ghi chú |
|---|---|---|---|
| R_0582 | 踏み躙る | "Đạp Rin" | DB ghi `躙ŁRin` — phiên âm sai trong dict_character. Không sửa được nếu không update DB |

→ Không sửa, vì không phải lỗi pipeline mà lỗi DB nguồn.

## D. SCHEMA / CHẤT LƯỢNG

- Schema OK toàn bộ
- Meaning detail tốt — nhiều cross-reference đến tác giả, năm sinh, khái niệm triết học
- Han Việt sau rebuild chuẩn: Hư Vô / Vô Thường / Chư Hành Vô Thường / Tượng Trưng đều đúng

## TÓM TẮT n1_advanced

- **Lỗi reading**: 3 (đã fix)
- **Từ cổ ngữ cần xóa**: 0
- **Lỗi DB nguồn**: 1 (踏み躙る → Đạp Rin)
- **Schema**: OK

→ Batch khá sạch, chất lượng cao về meaning và context.
