# TÓM TẮT: Cơ chế Chuyển đổi Ngữ âm Hán-Việt → Sino-Japanese (Onyomi)

## Nguồn: chuyen_am.docx

---

## 1. KHÁI NIỆM CỐT LÕI

### Bản chất Sino-Xenic
- Hán-Việt và Onyomi đều là "hóa thạch" của tiếng Hán Trung Cổ
- **Tiếng Việt:** Bảo tồn tốt âm cuối và thanh điệu
- **Tiếng Nhật:** "Nén dữ liệu" mạnh do cấu trúc âm tiết mở (CV)
- Chuyển đổi V→J: Độ chính xác cao (~85%)
- Chuyển đổi J→V: Gần như bất khả thi (homophone collision)

### Phân tầng lịch sử Âm Hán-Nhật
| Lớp | Thời kỳ | Đặc điểm |
|-----|---------|----------|
| **Go-on** | TK 5-6 | Từ Giang Nam, dùng trong Phật giáo |
| **Kan-on** | TK 7-9 | Từ Trường An, chuẩn chính thống |
| **Tō-on** | TK 10-13 | Qua thương mại và Thiền tông |

**Hán-Việt tương thích nhất với Kan-on**

---

## 2. QUY TẮC CHUYỂN THANH MẪU (Phụ âm đầu)

### Nhóm Môi (B, Ph, M, V)
| Hán-Việt | → Onyomi | Cơ chế | Ví dụ |
|----------|----------|--------|-------|
| B | H | Lenition: b/p→f→h | Bạch→Haku, Bình→Hei |
| Ph | H (Fu) | p→f→h | Pháp→Hō, Phong→Fū |
| M | M | Ổn định | Mộc→Moku |
| V | B/M | v/w cổ | Vô→Mu, Vạn→Ban |

### Nhóm Đầu Lưỡi (T, Th, Đ, N) - Quy tắc T-S Shift
| Hán-Việt | → Onyomi | Ví dụ |
|----------|----------|-------|
| T (gốc ts) | S/Sh | Tâm→Shin, Tinh→Sei |
| Đ | T/D | Đại→Dai, Đa→Ta |
| Th | S/T/Sh | Thiên→Ten, Thất→Shichi |

### Nhóm Cuống Họng (C, K, G, H) - Quy tắc Vàng
| Hán-Việt | → Onyomi | Ví dụ |
|----------|----------|-------|
| **H** | **K/G** | Hải→Kai, Học→Gaku |
| Ng | G | Ngũ→Go, Ngôn→Gen |
| C/K/Q | K | Quốc→Koku |

### Nhóm Khác
| Hán-Việt | → Onyomi | Ví dụ |
|----------|----------|-------|
| L | R | Lực→Ryoku, Lễ→Rei |
| Nh | J/N | Nhân→Jin/Nin |

---

## 3. QUY TẮC CHUYỂN VẬN MẪU (Phần vần)

### Nhóm Vần Mũi (-m, -n, -ng)
| Hán-Việt | → Onyomi | Ví dụ |
|----------|----------|-------|
| -n, -m | -n (ん) | Văn→Bun, Tâm→Shin |
| -ng/-nh | Trường âm | Công→Kō, Tinh→Sei |
| -ang/-ương | -ō | Giang→Kyō, Trường→Chō |
| -inh/-anh | -ei | Thanh→Sei, Minh→Mei |
| -ông/-ung | -ō/-ū | Công→Kō, Trung→Chū |

### Nhóm Nhập Thanh (-p, -t, -c)
| Hán-Việt | → Onyomi | Ví dụ |
|----------|----------|-------|
| -c/-ch | -ku/-ki | Quốc→Koku, Học→Gaku |
| -t | -tsu/-chi | Phát→Hatsu, Nhất→Ichi |
| -p | -ō/-ū | Pháp→Hō, Thập→Jū |

---

## 4. CẤU TRÚC JSON CHO THUẬT TOÁN

```json
{
  "initials": {
    "b": {"primary": "h", "secondary": "b"},
    "h": {"primary": "k", "secondary": "g"},
    "l": {"primary": "r"},
    "ng": {"primary": "g"},
    "t": {"primary": "s", "secondary": "sh"}
  },
  "finals": {
    "-ng": "trường âm (-ō/-ū)",
    "-nh/-inh": "-ei",
    "-t": "-tsu/-chi",
    "-c": "-ku/-ki"
  }
}
```

---

## 5. ĐIỂM THEN CHỐT CHO PHÁT TRIỂN

1. **Độ chính xác cao** cho chiều V→J (~85% Kan-on)
2. **Điểm mù "H→K"**: Lỗi phổ biến nhất cần xử lý
3. **Homophone**: Cần trả về mảng candidates, không phải 1 kết quả
4. **Ưu tiên**: Kan-on > Go-on trong thuật toán

---

## TỪ KHÓA
`Thanh mẫu` `Vận mẫu` `Lenition` `T-S Shift` `H→K Rule` `Nhập thanh` `Kan-on` `Go-on`
